; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97814 () Bool)

(assert start!97814)

(declare-fun b_free!23479 () Bool)

(declare-fun b_next!23479 () Bool)

(assert (=> start!97814 (= b_free!23479 (not b_next!23479))))

(declare-fun tp!83142 () Bool)

(declare-fun b_and!37775 () Bool)

(assert (=> start!97814 (= tp!83142 b_and!37775)))

(declare-fun b!1118448 () Bool)

(declare-fun res!747082 () Bool)

(declare-fun e!637096 () Bool)

(assert (=> b!1118448 (=> (not res!747082) (not e!637096))))

(declare-datatypes ((array!72848 0))(
  ( (array!72849 (arr!35073 (Array (_ BitVec 32) (_ BitVec 64))) (size!35610 (_ BitVec 32))) )
))
(declare-fun lt!497480 () array!72848)

(declare-datatypes ((List!24527 0))(
  ( (Nil!24524) (Cons!24523 (h!25732 (_ BitVec 64)) (t!35015 List!24527)) )
))
(declare-fun arrayNoDuplicates!0 (array!72848 (_ BitVec 32) List!24527) Bool)

(assert (=> b!1118448 (= res!747082 (arrayNoDuplicates!0 lt!497480 #b00000000000000000000000000000000 Nil!24524))))

(declare-fun b!1118449 () Bool)

(declare-fun res!747084 () Bool)

(declare-fun e!637094 () Bool)

(assert (=> b!1118449 (=> (not res!747084) (not e!637094))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118449 (= res!747084 (validMask!0 mask!1564))))

(declare-fun b!1118450 () Bool)

(declare-fun e!637095 () Bool)

(assert (=> b!1118450 (= e!637095 true)))

(declare-datatypes ((V!42473 0))(
  ( (V!42474 (val!14061 Int)) )
))
(declare-fun zeroValue!944 () V!42473)

(declare-fun _keys!1208 () array!72848)

(declare-datatypes ((tuple2!17690 0))(
  ( (tuple2!17691 (_1!8855 (_ BitVec 64)) (_2!8855 V!42473)) )
))
(declare-datatypes ((List!24528 0))(
  ( (Nil!24525) (Cons!24524 (h!25733 tuple2!17690) (t!35016 List!24528)) )
))
(declare-datatypes ((ListLongMap!15671 0))(
  ( (ListLongMap!15672 (toList!7851 List!24528)) )
))
(declare-fun lt!497479 () ListLongMap!15671)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13295 0))(
  ( (ValueCellFull!13295 (v!16695 V!42473)) (EmptyCell!13295) )
))
(declare-datatypes ((array!72850 0))(
  ( (array!72851 (arr!35074 (Array (_ BitVec 32) ValueCell!13295)) (size!35611 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72850)

(declare-fun minValue!944 () V!42473)

(declare-fun getCurrentListMapNoExtraKeys!4312 (array!72848 array!72850 (_ BitVec 32) (_ BitVec 32) V!42473 V!42473 (_ BitVec 32) Int) ListLongMap!15671)

(assert (=> b!1118450 (= lt!497479 (getCurrentListMapNoExtraKeys!4312 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!747080 () Bool)

(assert (=> start!97814 (=> (not res!747080) (not e!637094))))

(assert (=> start!97814 (= res!747080 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35610 _keys!1208))))))

(assert (=> start!97814 e!637094))

(declare-fun tp_is_empty!28009 () Bool)

(assert (=> start!97814 tp_is_empty!28009))

(declare-fun array_inv!26812 (array!72848) Bool)

(assert (=> start!97814 (array_inv!26812 _keys!1208)))

(assert (=> start!97814 true))

(assert (=> start!97814 tp!83142))

(declare-fun e!637092 () Bool)

(declare-fun array_inv!26813 (array!72850) Bool)

(assert (=> start!97814 (and (array_inv!26813 _values!996) e!637092)))

(declare-fun b!1118451 () Bool)

(declare-fun res!747078 () Bool)

(assert (=> b!1118451 (=> (not res!747078) (not e!637094))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118451 (= res!747078 (validKeyInArray!0 k!934))))

(declare-fun b!1118452 () Bool)

(declare-fun res!747085 () Bool)

(assert (=> b!1118452 (=> (not res!747085) (not e!637094))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118452 (= res!747085 (= (select (arr!35073 _keys!1208) i!673) k!934))))

(declare-fun b!1118453 () Bool)

(declare-fun res!747077 () Bool)

(assert (=> b!1118453 (=> (not res!747077) (not e!637094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72848 (_ BitVec 32)) Bool)

(assert (=> b!1118453 (= res!747077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118454 () Bool)

(declare-fun res!747087 () Bool)

(assert (=> b!1118454 (=> (not res!747087) (not e!637094))))

(assert (=> b!1118454 (= res!747087 (and (= (size!35611 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35610 _keys!1208) (size!35611 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118455 () Bool)

(assert (=> b!1118455 (= e!637094 e!637096)))

(declare-fun res!747083 () Bool)

(assert (=> b!1118455 (=> (not res!747083) (not e!637096))))

(assert (=> b!1118455 (= res!747083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497480 mask!1564))))

(assert (=> b!1118455 (= lt!497480 (array!72849 (store (arr!35073 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35610 _keys!1208)))))

(declare-fun b!1118456 () Bool)

(declare-fun res!747086 () Bool)

(assert (=> b!1118456 (=> (not res!747086) (not e!637094))))

(assert (=> b!1118456 (= res!747086 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35610 _keys!1208))))))

(declare-fun mapIsEmpty!43831 () Bool)

(declare-fun mapRes!43831 () Bool)

(assert (=> mapIsEmpty!43831 mapRes!43831))

(declare-fun b!1118457 () Bool)

(declare-fun e!637091 () Bool)

(assert (=> b!1118457 (= e!637091 tp_is_empty!28009)))

(declare-fun b!1118458 () Bool)

(assert (=> b!1118458 (= e!637092 (and e!637091 mapRes!43831))))

(declare-fun condMapEmpty!43831 () Bool)

(declare-fun mapDefault!43831 () ValueCell!13295)

