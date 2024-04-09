; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97400 () Bool)

(assert start!97400)

(declare-fun b_free!23335 () Bool)

(declare-fun b_next!23335 () Bool)

(assert (=> start!97400 (= b_free!23335 (not b_next!23335))))

(declare-fun tp!82304 () Bool)

(declare-fun b_and!37527 () Bool)

(assert (=> start!97400 (= tp!82304 b_and!37527)))

(declare-fun b!1109743 () Bool)

(declare-fun e!632997 () Bool)

(declare-fun e!632996 () Bool)

(assert (=> b!1109743 (= e!632997 e!632996)))

(declare-fun res!740652 () Bool)

(assert (=> b!1109743 (=> (not res!740652) (not e!632996))))

(declare-datatypes ((array!72058 0))(
  ( (array!72059 (arr!34678 (Array (_ BitVec 32) (_ BitVec 64))) (size!35215 (_ BitVec 32))) )
))
(declare-fun lt!496022 () array!72058)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72058 (_ BitVec 32)) Bool)

(assert (=> b!1109743 (= res!740652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496022 mask!1564))))

(declare-fun _keys!1208 () array!72058)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109743 (= lt!496022 (array!72059 (store (arr!34678 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35215 _keys!1208)))))

(declare-fun b!1109744 () Bool)

(declare-fun res!740653 () Bool)

(assert (=> b!1109744 (=> (not res!740653) (not e!632997))))

(assert (=> b!1109744 (= res!740653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109745 () Bool)

(declare-datatypes ((V!41921 0))(
  ( (V!41922 (val!13854 Int)) )
))
(declare-datatypes ((tuple2!17584 0))(
  ( (tuple2!17585 (_1!8802 (_ BitVec 64)) (_2!8802 V!41921)) )
))
(declare-datatypes ((List!24320 0))(
  ( (Nil!24317) (Cons!24316 (h!25525 tuple2!17584) (t!34708 List!24320)) )
))
(declare-datatypes ((ListLongMap!15565 0))(
  ( (ListLongMap!15566 (toList!7798 List!24320)) )
))
(declare-fun call!46703 () ListLongMap!15565)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!632993 () Bool)

(declare-fun call!46702 () ListLongMap!15565)

(declare-fun -!1026 (ListLongMap!15565 (_ BitVec 64)) ListLongMap!15565)

(assert (=> b!1109745 (= e!632993 (= call!46703 (-!1026 call!46702 k!934)))))

(declare-fun b!1109746 () Bool)

(declare-fun e!632992 () Bool)

(assert (=> b!1109746 (= e!632996 (not e!632992))))

(declare-fun res!740661 () Bool)

(assert (=> b!1109746 (=> res!740661 e!632992)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1109746 (= res!740661 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35215 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109746 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36339 0))(
  ( (Unit!36340) )
))
(declare-fun lt!496023 () Unit!36339)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72058 (_ BitVec 64) (_ BitVec 32)) Unit!36339)

(assert (=> b!1109746 (= lt!496023 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43210 () Bool)

(declare-fun mapRes!43210 () Bool)

(declare-fun tp!82305 () Bool)

(declare-fun e!632998 () Bool)

(assert (=> mapNonEmpty!43210 (= mapRes!43210 (and tp!82305 e!632998))))

(declare-datatypes ((ValueCell!13088 0))(
  ( (ValueCellFull!13088 (v!16488 V!41921)) (EmptyCell!13088) )
))
(declare-fun mapValue!43210 () ValueCell!13088)

(declare-fun mapKey!43210 () (_ BitVec 32))

(declare-fun mapRest!43210 () (Array (_ BitVec 32) ValueCell!13088))

(declare-datatypes ((array!72060 0))(
  ( (array!72061 (arr!34679 (Array (_ BitVec 32) ValueCell!13088)) (size!35216 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72060)

(assert (=> mapNonEmpty!43210 (= (arr!34679 _values!996) (store mapRest!43210 mapKey!43210 mapValue!43210))))

(declare-fun b!1109747 () Bool)

(declare-fun res!740659 () Bool)

(assert (=> b!1109747 (=> (not res!740659) (not e!632997))))

(declare-datatypes ((List!24321 0))(
  ( (Nil!24318) (Cons!24317 (h!25526 (_ BitVec 64)) (t!34709 List!24321)) )
))
(declare-fun arrayNoDuplicates!0 (array!72058 (_ BitVec 32) List!24321) Bool)

(assert (=> b!1109747 (= res!740659 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24318))))

(declare-fun b!1109748 () Bool)

(declare-fun e!632999 () Bool)

(declare-fun tp_is_empty!27595 () Bool)

(assert (=> b!1109748 (= e!632999 tp_is_empty!27595)))

(declare-fun zeroValue!944 () V!41921)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46699 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41921)

(declare-fun getCurrentListMapNoExtraKeys!4261 (array!72058 array!72060 (_ BitVec 32) (_ BitVec 32) V!41921 V!41921 (_ BitVec 32) Int) ListLongMap!15565)

(assert (=> bm!46699 (= call!46702 (getCurrentListMapNoExtraKeys!4261 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46700 () Bool)

(declare-fun dynLambda!2384 (Int (_ BitVec 64)) V!41921)

(assert (=> bm!46700 (= call!46703 (getCurrentListMapNoExtraKeys!4261 lt!496022 (array!72061 (store (arr!34679 _values!996) i!673 (ValueCellFull!13088 (dynLambda!2384 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35216 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!740658 () Bool)

(assert (=> start!97400 (=> (not res!740658) (not e!632997))))

(assert (=> start!97400 (= res!740658 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35215 _keys!1208))))))

(assert (=> start!97400 e!632997))

(assert (=> start!97400 tp_is_empty!27595))

(declare-fun array_inv!26552 (array!72058) Bool)

(assert (=> start!97400 (array_inv!26552 _keys!1208)))

(assert (=> start!97400 true))

(assert (=> start!97400 tp!82304))

(declare-fun e!632995 () Bool)

(declare-fun array_inv!26553 (array!72060) Bool)

(assert (=> start!97400 (and (array_inv!26553 _values!996) e!632995)))

(declare-fun b!1109749 () Bool)

(declare-fun res!740656 () Bool)

(assert (=> b!1109749 (=> (not res!740656) (not e!632997))))

(assert (=> b!1109749 (= res!740656 (= (select (arr!34678 _keys!1208) i!673) k!934))))

(declare-fun b!1109750 () Bool)

(assert (=> b!1109750 (= e!632995 (and e!632999 mapRes!43210))))

(declare-fun condMapEmpty!43210 () Bool)

(declare-fun mapDefault!43210 () ValueCell!13088)

