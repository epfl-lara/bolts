; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97692 () Bool)

(assert start!97692)

(declare-fun mapNonEmpty!43648 () Bool)

(declare-fun mapRes!43648 () Bool)

(declare-fun tp!82893 () Bool)

(declare-fun e!635932 () Bool)

(assert (=> mapNonEmpty!43648 (= mapRes!43648 (and tp!82893 e!635932))))

(declare-datatypes ((V!42309 0))(
  ( (V!42310 (val!14000 Int)) )
))
(declare-datatypes ((ValueCell!13234 0))(
  ( (ValueCellFull!13234 (v!16634 V!42309)) (EmptyCell!13234) )
))
(declare-fun mapValue!43648 () ValueCell!13234)

(declare-fun mapRest!43648 () (Array (_ BitVec 32) ValueCell!13234))

(declare-datatypes ((array!72614 0))(
  ( (array!72615 (arr!34956 (Array (_ BitVec 32) ValueCell!13234)) (size!35493 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72614)

(declare-fun mapKey!43648 () (_ BitVec 32))

(assert (=> mapNonEmpty!43648 (= (arr!34956 _values!996) (store mapRest!43648 mapKey!43648 mapValue!43648))))

(declare-fun b!1116004 () Bool)

(declare-fun res!745190 () Bool)

(declare-fun e!635933 () Bool)

(assert (=> b!1116004 (=> (not res!745190) (not e!635933))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116004 (= res!745190 (validKeyInArray!0 k!934))))

(declare-fun b!1116005 () Bool)

(declare-fun e!635930 () Bool)

(assert (=> b!1116005 (= e!635930 (not true))))

(declare-datatypes ((array!72616 0))(
  ( (array!72617 (arr!34957 (Array (_ BitVec 32) (_ BitVec 64))) (size!35494 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72616)

(declare-fun arrayContainsKey!0 (array!72616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116005 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36527 0))(
  ( (Unit!36528) )
))
(declare-fun lt!497049 () Unit!36527)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72616 (_ BitVec 64) (_ BitVec 32)) Unit!36527)

(assert (=> b!1116005 (= lt!497049 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116006 () Bool)

(declare-fun tp_is_empty!27887 () Bool)

(assert (=> b!1116006 (= e!635932 tp_is_empty!27887)))

(declare-fun b!1116007 () Bool)

(declare-fun res!745184 () Bool)

(assert (=> b!1116007 (=> (not res!745184) (not e!635933))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72616 (_ BitVec 32)) Bool)

(assert (=> b!1116007 (= res!745184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116008 () Bool)

(declare-fun res!745183 () Bool)

(assert (=> b!1116008 (=> (not res!745183) (not e!635933))))

(assert (=> b!1116008 (= res!745183 (= (select (arr!34957 _keys!1208) i!673) k!934))))

(declare-fun b!1116009 () Bool)

(declare-fun res!745185 () Bool)

(assert (=> b!1116009 (=> (not res!745185) (not e!635933))))

(declare-datatypes ((List!24466 0))(
  ( (Nil!24463) (Cons!24462 (h!25671 (_ BitVec 64)) (t!34954 List!24466)) )
))
(declare-fun arrayNoDuplicates!0 (array!72616 (_ BitVec 32) List!24466) Bool)

(assert (=> b!1116009 (= res!745185 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24463))))

(declare-fun b!1116010 () Bool)

(declare-fun res!745187 () Bool)

(assert (=> b!1116010 (=> (not res!745187) (not e!635933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116010 (= res!745187 (validMask!0 mask!1564))))

(declare-fun b!1116011 () Bool)

(declare-fun res!745182 () Bool)

(assert (=> b!1116011 (=> (not res!745182) (not e!635930))))

(declare-fun lt!497048 () array!72616)

(assert (=> b!1116011 (= res!745182 (arrayNoDuplicates!0 lt!497048 #b00000000000000000000000000000000 Nil!24463))))

(declare-fun b!1116012 () Bool)

(declare-fun e!635928 () Bool)

(assert (=> b!1116012 (= e!635928 tp_is_empty!27887)))

(declare-fun res!745189 () Bool)

(assert (=> start!97692 (=> (not res!745189) (not e!635933))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97692 (= res!745189 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35494 _keys!1208))))))

(assert (=> start!97692 e!635933))

(declare-fun array_inv!26728 (array!72616) Bool)

(assert (=> start!97692 (array_inv!26728 _keys!1208)))

(assert (=> start!97692 true))

(declare-fun e!635931 () Bool)

(declare-fun array_inv!26729 (array!72614) Bool)

(assert (=> start!97692 (and (array_inv!26729 _values!996) e!635931)))

(declare-fun b!1116013 () Bool)

(assert (=> b!1116013 (= e!635931 (and e!635928 mapRes!43648))))

(declare-fun condMapEmpty!43648 () Bool)

(declare-fun mapDefault!43648 () ValueCell!13234)

