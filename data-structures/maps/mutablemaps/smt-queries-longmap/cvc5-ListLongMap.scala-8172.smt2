; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99934 () Bool)

(assert start!99934)

(declare-fun b_free!25477 () Bool)

(declare-fun b_next!25477 () Bool)

(assert (=> start!99934 (= b_free!25477 (not b_next!25477))))

(declare-fun tp!89146 () Bool)

(declare-fun b_and!41835 () Bool)

(assert (=> start!99934 (= tp!89146 b_and!41835)))

(declare-fun b!1188819 () Bool)

(declare-fun e!675968 () Bool)

(declare-fun tp_is_empty!30007 () Bool)

(assert (=> b!1188819 (= e!675968 tp_is_empty!30007)))

(declare-fun b!1188820 () Bool)

(declare-fun res!790570 () Bool)

(declare-fun e!675969 () Bool)

(assert (=> b!1188820 (=> (not res!790570) (not e!675969))))

(declare-datatypes ((array!76782 0))(
  ( (array!76783 (arr!37037 (Array (_ BitVec 32) (_ BitVec 64))) (size!37574 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76782)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1188820 (= res!790570 (= (select (arr!37037 _keys!1208) i!673) k!934))))

(declare-fun b!1188821 () Bool)

(declare-fun res!790568 () Bool)

(assert (=> b!1188821 (=> (not res!790568) (not e!675969))))

(assert (=> b!1188821 (= res!790568 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37574 _keys!1208))))))

(declare-fun b!1188822 () Bool)

(declare-fun res!790569 () Bool)

(assert (=> b!1188822 (=> (not res!790569) (not e!675969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188822 (= res!790569 (validKeyInArray!0 k!934))))

(declare-fun b!1188823 () Bool)

(declare-fun res!790576 () Bool)

(assert (=> b!1188823 (=> (not res!790576) (not e!675969))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45137 0))(
  ( (V!45138 (val!15060 Int)) )
))
(declare-datatypes ((ValueCell!14294 0))(
  ( (ValueCellFull!14294 (v!17699 V!45137)) (EmptyCell!14294) )
))
(declare-datatypes ((array!76784 0))(
  ( (array!76785 (arr!37038 (Array (_ BitVec 32) ValueCell!14294)) (size!37575 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76784)

(assert (=> b!1188823 (= res!790576 (and (= (size!37575 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37574 _keys!1208) (size!37575 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188824 () Bool)

(declare-fun e!675972 () Bool)

(assert (=> b!1188824 (= e!675969 e!675972)))

(declare-fun res!790566 () Bool)

(assert (=> b!1188824 (=> (not res!790566) (not e!675972))))

(declare-fun lt!540802 () array!76782)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76782 (_ BitVec 32)) Bool)

(assert (=> b!1188824 (= res!790566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540802 mask!1564))))

(assert (=> b!1188824 (= lt!540802 (array!76783 (store (arr!37037 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37574 _keys!1208)))))

(declare-fun b!1188825 () Bool)

(declare-fun res!790567 () Bool)

(assert (=> b!1188825 (=> (not res!790567) (not e!675969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188825 (= res!790567 (validMask!0 mask!1564))))

(declare-fun b!1188826 () Bool)

(declare-fun res!790575 () Bool)

(assert (=> b!1188826 (=> (not res!790575) (not e!675969))))

(assert (=> b!1188826 (= res!790575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188827 () Bool)

(declare-fun e!675973 () Bool)

(declare-fun e!675971 () Bool)

(declare-fun mapRes!46838 () Bool)

(assert (=> b!1188827 (= e!675973 (and e!675971 mapRes!46838))))

(declare-fun condMapEmpty!46838 () Bool)

(declare-fun mapDefault!46838 () ValueCell!14294)

