; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97332 () Bool)

(assert start!97332)

(declare-fun b_free!23267 () Bool)

(declare-fun b_next!23267 () Bool)

(assert (=> start!97332 (= b_free!23267 (not b_next!23267))))

(declare-fun tp!82101 () Bool)

(declare-fun b_and!37383 () Bool)

(assert (=> start!97332 (= tp!82101 b_and!37383)))

(declare-fun res!739537 () Bool)

(declare-fun e!632153 () Bool)

(assert (=> start!97332 (=> (not res!739537) (not e!632153))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71922 0))(
  ( (array!71923 (arr!34610 (Array (_ BitVec 32) (_ BitVec 64))) (size!35147 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71922)

(assert (=> start!97332 (= res!739537 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35147 _keys!1208))))))

(assert (=> start!97332 e!632153))

(declare-fun tp_is_empty!27527 () Bool)

(assert (=> start!97332 tp_is_empty!27527))

(declare-fun array_inv!26502 (array!71922) Bool)

(assert (=> start!97332 (array_inv!26502 _keys!1208)))

(assert (=> start!97332 true))

(assert (=> start!97332 tp!82101))

(declare-datatypes ((V!41829 0))(
  ( (V!41830 (val!13820 Int)) )
))
(declare-datatypes ((ValueCell!13054 0))(
  ( (ValueCellFull!13054 (v!16454 V!41829)) (EmptyCell!13054) )
))
(declare-datatypes ((array!71924 0))(
  ( (array!71925 (arr!34611 (Array (_ BitVec 32) ValueCell!13054)) (size!35148 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71924)

(declare-fun e!632157 () Bool)

(declare-fun array_inv!26503 (array!71924) Bool)

(assert (=> start!97332 (and (array_inv!26503 _values!996) e!632157)))

(declare-fun mapIsEmpty!43108 () Bool)

(declare-fun mapRes!43108 () Bool)

(assert (=> mapIsEmpty!43108 mapRes!43108))

(declare-fun b!1107995 () Bool)

(declare-fun res!739530 () Bool)

(assert (=> b!1107995 (=> (not res!739530) (not e!632153))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107995 (= res!739530 (validKeyInArray!0 k!934))))

(declare-fun b!1107996 () Bool)

(declare-fun res!739531 () Bool)

(declare-fun e!632156 () Bool)

(assert (=> b!1107996 (=> (not res!739531) (not e!632156))))

(declare-fun lt!495715 () array!71922)

(declare-datatypes ((List!24265 0))(
  ( (Nil!24262) (Cons!24261 (h!25470 (_ BitVec 64)) (t!34585 List!24265)) )
))
(declare-fun arrayNoDuplicates!0 (array!71922 (_ BitVec 32) List!24265) Bool)

(assert (=> b!1107996 (= res!739531 (arrayNoDuplicates!0 lt!495715 #b00000000000000000000000000000000 Nil!24262))))

(declare-fun b!1107997 () Bool)

(declare-fun res!739538 () Bool)

(assert (=> b!1107997 (=> (not res!739538) (not e!632153))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107997 (= res!739538 (validMask!0 mask!1564))))

(declare-fun b!1107998 () Bool)

(declare-fun e!632159 () Bool)

(assert (=> b!1107998 (= e!632159 tp_is_empty!27527)))

(declare-fun b!1107999 () Bool)

(declare-fun res!739534 () Bool)

(assert (=> b!1107999 (=> (not res!739534) (not e!632153))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1107999 (= res!739534 (and (= (size!35148 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35147 _keys!1208) (size!35148 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!632152 () Bool)

(declare-datatypes ((tuple2!17528 0))(
  ( (tuple2!17529 (_1!8774 (_ BitVec 64)) (_2!8774 V!41829)) )
))
(declare-datatypes ((List!24266 0))(
  ( (Nil!24263) (Cons!24262 (h!25471 tuple2!17528) (t!34586 List!24266)) )
))
(declare-datatypes ((ListLongMap!15509 0))(
  ( (ListLongMap!15510 (toList!7770 List!24266)) )
))
(declare-fun call!46498 () ListLongMap!15509)

(declare-fun call!46499 () ListLongMap!15509)

(declare-fun b!1108000 () Bool)

(declare-fun -!1002 (ListLongMap!15509 (_ BitVec 64)) ListLongMap!15509)

(assert (=> b!1108000 (= e!632152 (= call!46498 (-!1002 call!46499 k!934)))))

(declare-fun b!1108001 () Bool)

(assert (=> b!1108001 (= e!632153 e!632156)))

(declare-fun res!739529 () Bool)

(assert (=> b!1108001 (=> (not res!739529) (not e!632156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71922 (_ BitVec 32)) Bool)

(assert (=> b!1108001 (= res!739529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495715 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108001 (= lt!495715 (array!71923 (store (arr!34610 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35147 _keys!1208)))))

(declare-fun b!1108002 () Bool)

(declare-fun res!739536 () Bool)

(assert (=> b!1108002 (=> (not res!739536) (not e!632153))))

(assert (=> b!1108002 (= res!739536 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35147 _keys!1208))))))

(declare-fun b!1108003 () Bool)

(declare-fun e!632155 () Bool)

(assert (=> b!1108003 (= e!632156 (not e!632155))))

(declare-fun res!739533 () Bool)

(assert (=> b!1108003 (=> res!739533 e!632155)))

(assert (=> b!1108003 (= res!739533 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35147 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108003 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36297 0))(
  ( (Unit!36298) )
))
(declare-fun lt!495716 () Unit!36297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71922 (_ BitVec 64) (_ BitVec 32)) Unit!36297)

(assert (=> b!1108003 (= lt!495716 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108004 () Bool)

(declare-fun res!739535 () Bool)

(assert (=> b!1108004 (=> (not res!739535) (not e!632153))))

(assert (=> b!1108004 (= res!739535 (= (select (arr!34610 _keys!1208) i!673) k!934))))

(declare-fun b!1108005 () Bool)

(declare-fun res!739532 () Bool)

(assert (=> b!1108005 (=> (not res!739532) (not e!632153))))

(assert (=> b!1108005 (= res!739532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!41829)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46495 () Bool)

(declare-fun minValue!944 () V!41829)

(declare-fun getCurrentListMapNoExtraKeys!4238 (array!71922 array!71924 (_ BitVec 32) (_ BitVec 32) V!41829 V!41829 (_ BitVec 32) Int) ListLongMap!15509)

(assert (=> bm!46495 (= call!46499 (getCurrentListMapNoExtraKeys!4238 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108006 () Bool)

(declare-fun res!739539 () Bool)

(assert (=> b!1108006 (=> (not res!739539) (not e!632153))))

(assert (=> b!1108006 (= res!739539 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24262))))

(declare-fun b!1108007 () Bool)

(assert (=> b!1108007 (= e!632157 (and e!632159 mapRes!43108))))

(declare-fun condMapEmpty!43108 () Bool)

(declare-fun mapDefault!43108 () ValueCell!13054)

