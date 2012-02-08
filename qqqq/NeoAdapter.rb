# class to connect with Neography


module NeoAdapter

WHATNOT = Neography::Rest.new({:protocol => 'http://', :server => 's2.myty.tv', :port => 7474,
                           :directory => '',  # use '/<my directory>' or leave out for default
                             :authentication => 'basic', # 'basic', 'digest' or leave out for default
                             :log_file => 'neography.log',
                             :log_enabled => false,
                             :max_threads => 20})

 def searchUserNode(k,v)
  v2 = v

    if (v.class == String)
      v2 = "\"" << v << "\""
    end

    r =  NeoAdapter::WHATNOT.execute_script("g.V.filter{it." << k << " == " << v2 << "}")
    puts r.class
    return r
end


  def getUserNode(node)
    index=0
    NeoAdapter::WHATNOT.get_node(node)
  end

  def getUserNodeByIndex(index)
    NeoAdapter::WHATNOT.get_nodes([index])
  end


  def createUserNode(username)
    node = NeoAdapter::WHATNOT.create_node("username",username)
    NeoAdapter::WHATNOT.add_node_to_index("usernames", "username", username, node)
    puts "createUserNode nodeObj:" + node.class.to_s
    puts "createUserNode nodeObjNIL:" + node.nil?
    return node
  end


end



