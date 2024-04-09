; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100518 () Bool)

(assert start!100518)

(declare-fun b_free!25805 () Bool)

(declare-fun b_next!25805 () Bool)

(assert (=> start!100518 (= b_free!25805 (not b_next!25805))))

(declare-fun tp!90405 () Bool)

(declare-fun b_and!42511 () Bool)

(assert (=> start!100518 (= tp!90405 b_and!42511)))

(declare-fun b!1200048 () Bool)

(declare-fun res!798907 () Bool)

(declare-fun e!681569 () Bool)

(assert (=> b!1200048 (=> (not res!798907) (not e!681569))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77772 0))(
  ( (array!77773 (arr!37527 (Array (_ BitVec 32) (_ BitVec 64))) (size!38064 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77772)

(assert (=> b!1200048 (= res!798907 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38064 _keys!1208))))))

(declare-fun b!1200049 () Bool)

(declare-fun res!798915 () Bool)

(assert (=> b!1200049 (=> (not res!798915) (not e!681569))))

(declare-datatypes ((List!26571 0))(
  ( (Nil!26568) (Cons!26567 (h!27776 (_ BitVec 64)) (t!39363 List!26571)) )
))
(declare-fun arrayNoDuplicates!0 (array!77772 (_ BitVec 32) List!26571) Bool)

(assert (=> b!1200049 (= res!798915 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26568))))

(declare-fun b!1200050 () Bool)

(declare-fun e!681568 () Bool)

(declare-fun tp_is_empty!30509 () Bool)

(assert (=> b!1200050 (= e!681568 tp_is_empty!30509)))

(declare-fun b!1200051 () Bool)

(declare-fun res!798909 () Bool)

(assert (=> b!1200051 (=> (not res!798909) (not e!681569))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1200051 (= res!798909 (= (select (arr!37527 _keys!1208) i!673) k!934))))

(declare-fun b!1200052 () Bool)

(declare-fun res!798913 () Bool)

(assert (=> b!1200052 (=> (not res!798913) (not e!681569))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45805 0))(
  ( (V!45806 (val!15311 Int)) )
))
(declare-datatypes ((ValueCell!14545 0))(
  ( (ValueCellFull!14545 (v!17950 V!45805)) (EmptyCell!14545) )
))
(declare-datatypes ((array!77774 0))(
  ( (array!77775 (arr!37528 (Array (_ BitVec 32) ValueCell!14545)) (size!38065 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77774)

(assert (=> b!1200052 (= res!798913 (and (= (size!38065 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38064 _keys!1208) (size!38065 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200053 () Bool)

(declare-fun e!681572 () Bool)

(assert (=> b!1200053 (= e!681569 e!681572)))

(declare-fun res!798912 () Bool)

(assert (=> b!1200053 (=> (not res!798912) (not e!681572))))

(declare-fun lt!543898 () array!77772)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77772 (_ BitVec 32)) Bool)

(assert (=> b!1200053 (= res!798912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543898 mask!1564))))

(assert (=> b!1200053 (= lt!543898 (array!77773 (store (arr!37527 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38064 _keys!1208)))))

(declare-fun mapNonEmpty!47606 () Bool)

(declare-fun mapRes!47606 () Bool)

(declare-fun tp!90406 () Bool)

(assert (=> mapNonEmpty!47606 (= mapRes!47606 (and tp!90406 e!681568))))

(declare-fun mapRest!47606 () (Array (_ BitVec 32) ValueCell!14545))

(declare-fun mapValue!47606 () ValueCell!14545)

(declare-fun mapKey!47606 () (_ BitVec 32))

(assert (=> mapNonEmpty!47606 (= (arr!37528 _values!996) (store mapRest!47606 mapKey!47606 mapValue!47606))))

(declare-fun b!1200054 () Bool)

(declare-fun e!681574 () Bool)

(assert (=> b!1200054 (= e!681572 (not e!681574))))

(declare-fun res!798914 () Bool)

(assert (=> b!1200054 (=> res!798914 e!681574)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200054 (= res!798914 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200054 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39718 0))(
  ( (Unit!39719) )
))
(declare-fun lt!543899 () Unit!39718)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77772 (_ BitVec 64) (_ BitVec 32)) Unit!39718)

(assert (=> b!1200054 (= lt!543899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1200055 () Bool)

(declare-fun res!798906 () Bool)

(assert (=> b!1200055 (=> (not res!798906) (not e!681569))))

(assert (=> b!1200055 (= res!798906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!798911 () Bool)

(assert (=> start!100518 (=> (not res!798911) (not e!681569))))

(assert (=> start!100518 (= res!798911 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38064 _keys!1208))))))

(assert (=> start!100518 e!681569))

(assert (=> start!100518 tp_is_empty!30509))

(declare-fun array_inv!28500 (array!77772) Bool)

(assert (=> start!100518 (array_inv!28500 _keys!1208)))

(assert (=> start!100518 true))

(assert (=> start!100518 tp!90405))

(declare-fun e!681573 () Bool)

(declare-fun array_inv!28501 (array!77774) Bool)

(assert (=> start!100518 (and (array_inv!28501 _values!996) e!681573)))

(declare-fun b!1200056 () Bool)

(declare-fun res!798908 () Bool)

(assert (=> b!1200056 (=> (not res!798908) (not e!681572))))

(assert (=> b!1200056 (= res!798908 (arrayNoDuplicates!0 lt!543898 #b00000000000000000000000000000000 Nil!26568))))

(declare-fun b!1200057 () Bool)

(declare-fun res!798905 () Bool)

(assert (=> b!1200057 (=> (not res!798905) (not e!681569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200057 (= res!798905 (validKeyInArray!0 k!934))))

(declare-fun b!1200058 () Bool)

(declare-fun e!681571 () Bool)

(assert (=> b!1200058 (= e!681571 tp_is_empty!30509)))

(declare-fun mapIsEmpty!47606 () Bool)

(assert (=> mapIsEmpty!47606 mapRes!47606))

(declare-fun b!1200059 () Bool)

(assert (=> b!1200059 (= e!681574 true)))

(declare-fun zeroValue!944 () V!45805)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19738 0))(
  ( (tuple2!19739 (_1!9879 (_ BitVec 64)) (_2!9879 V!45805)) )
))
(declare-datatypes ((List!26572 0))(
  ( (Nil!26569) (Cons!26568 (h!27777 tuple2!19738) (t!39364 List!26572)) )
))
(declare-datatypes ((ListLongMap!17719 0))(
  ( (ListLongMap!17720 (toList!8875 List!26572)) )
))
(declare-fun lt!543900 () ListLongMap!17719)

(declare-fun minValue!944 () V!45805)

(declare-fun getCurrentListMapNoExtraKeys!5288 (array!77772 array!77774 (_ BitVec 32) (_ BitVec 32) V!45805 V!45805 (_ BitVec 32) Int) ListLongMap!17719)

(declare-fun dynLambda!3219 (Int (_ BitVec 64)) V!45805)

(assert (=> b!1200059 (= lt!543900 (getCurrentListMapNoExtraKeys!5288 lt!543898 (array!77775 (store (arr!37528 _values!996) i!673 (ValueCellFull!14545 (dynLambda!3219 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38065 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543901 () ListLongMap!17719)

(assert (=> b!1200059 (= lt!543901 (getCurrentListMapNoExtraKeys!5288 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200060 () Bool)

(assert (=> b!1200060 (= e!681573 (and e!681571 mapRes!47606))))

(declare-fun condMapEmpty!47606 () Bool)

(declare-fun mapDefault!47606 () ValueCell!14545)

