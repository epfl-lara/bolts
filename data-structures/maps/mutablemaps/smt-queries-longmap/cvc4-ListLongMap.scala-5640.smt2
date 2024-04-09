; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73656 () Bool)

(assert start!73656)

(declare-fun b_free!14543 () Bool)

(declare-fun b_next!14543 () Bool)

(assert (=> start!73656 (= b_free!14543 (not b_next!14543))))

(declare-fun tp!51134 () Bool)

(declare-fun b_and!24083 () Bool)

(assert (=> start!73656 (= tp!51134 b_and!24083)))

(declare-fun res!585692 () Bool)

(declare-fun e!480127 () Bool)

(assert (=> start!73656 (=> (not res!585692) (not e!480127))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49504 0))(
  ( (array!49505 (arr!23779 (Array (_ BitVec 32) (_ BitVec 64))) (size!24220 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49504)

(assert (=> start!73656 (= res!585692 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24220 _keys!868))))))

(assert (=> start!73656 e!480127))

(declare-fun tp_is_empty!16679 () Bool)

(assert (=> start!73656 tp_is_empty!16679))

(assert (=> start!73656 true))

(assert (=> start!73656 tp!51134))

(declare-fun array_inv!18792 (array!49504) Bool)

(assert (=> start!73656 (array_inv!18792 _keys!868)))

(declare-datatypes ((V!27285 0))(
  ( (V!27286 (val!8387 Int)) )
))
(declare-datatypes ((ValueCell!7900 0))(
  ( (ValueCellFull!7900 (v!10808 V!27285)) (EmptyCell!7900) )
))
(declare-datatypes ((array!49506 0))(
  ( (array!49507 (arr!23780 (Array (_ BitVec 32) ValueCell!7900)) (size!24221 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49506)

(declare-fun e!480123 () Bool)

(declare-fun array_inv!18793 (array!49506) Bool)

(assert (=> start!73656 (and (array_inv!18793 _values!688) e!480123)))

(declare-fun b!861694 () Bool)

(declare-fun res!585696 () Bool)

(assert (=> b!861694 (=> (not res!585696) (not e!480127))))

(declare-datatypes ((List!16952 0))(
  ( (Nil!16949) (Cons!16948 (h!18079 (_ BitVec 64)) (t!23769 List!16952)) )
))
(declare-fun arrayNoDuplicates!0 (array!49504 (_ BitVec 32) List!16952) Bool)

(assert (=> b!861694 (= res!585696 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16949))))

(declare-fun b!861695 () Bool)

(declare-datatypes ((Unit!29371 0))(
  ( (Unit!29372) )
))
(declare-fun e!480125 () Unit!29371)

(declare-fun Unit!29373 () Unit!29371)

(assert (=> b!861695 (= e!480125 Unit!29373)))

(declare-fun b!861696 () Bool)

(declare-fun e!480122 () Bool)

(assert (=> b!861696 (= e!480122 tp_is_empty!16679)))

(declare-fun mapNonEmpty!26618 () Bool)

(declare-fun mapRes!26618 () Bool)

(declare-fun tp!51133 () Bool)

(declare-fun e!480126 () Bool)

(assert (=> mapNonEmpty!26618 (= mapRes!26618 (and tp!51133 e!480126))))

(declare-fun mapKey!26618 () (_ BitVec 32))

(declare-fun mapValue!26618 () ValueCell!7900)

(declare-fun mapRest!26618 () (Array (_ BitVec 32) ValueCell!7900))

(assert (=> mapNonEmpty!26618 (= (arr!23780 _values!688) (store mapRest!26618 mapKey!26618 mapValue!26618))))

(declare-fun b!861697 () Bool)

(declare-fun res!585698 () Bool)

(assert (=> b!861697 (=> (not res!585698) (not e!480127))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49504 (_ BitVec 32)) Bool)

(assert (=> b!861697 (= res!585698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861698 () Bool)

(declare-fun res!585694 () Bool)

(assert (=> b!861698 (=> (not res!585694) (not e!480127))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861698 (= res!585694 (validKeyInArray!0 k!854))))

(declare-fun b!861699 () Bool)

(assert (=> b!861699 (= e!480126 tp_is_empty!16679)))

(declare-fun b!861700 () Bool)

(declare-fun res!585699 () Bool)

(assert (=> b!861700 (=> (not res!585699) (not e!480127))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861700 (= res!585699 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24220 _keys!868))))))

(declare-fun b!861701 () Bool)

(declare-fun Unit!29374 () Unit!29371)

(assert (=> b!861701 (= e!480125 Unit!29374)))

(declare-fun lt!388722 () Unit!29371)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49504 (_ BitVec 32) (_ BitVec 32)) Unit!29371)

(assert (=> b!861701 (= lt!388722 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861701 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16949)))

(declare-fun lt!388730 () Unit!29371)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49504 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29371)

(assert (=> b!861701 (= lt!388730 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861701 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388726 () Unit!29371)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49504 (_ BitVec 64) (_ BitVec 32) List!16952) Unit!29371)

(assert (=> b!861701 (= lt!388726 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16949))))

(assert (=> b!861701 false))

(declare-fun b!861702 () Bool)

(declare-fun e!480128 () Bool)

(assert (=> b!861702 (= e!480127 e!480128)))

(declare-fun res!585690 () Bool)

(assert (=> b!861702 (=> (not res!585690) (not e!480128))))

(assert (=> b!861702 (= res!585690 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11082 0))(
  ( (tuple2!11083 (_1!5551 (_ BitVec 64)) (_2!5551 V!27285)) )
))
(declare-datatypes ((List!16953 0))(
  ( (Nil!16950) (Cons!16949 (h!18080 tuple2!11082) (t!23770 List!16953)) )
))
(declare-datatypes ((ListLongMap!9865 0))(
  ( (ListLongMap!9866 (toList!4948 List!16953)) )
))
(declare-fun lt!388727 () ListLongMap!9865)

(declare-fun lt!388721 () array!49506)

(declare-fun minValue!654 () V!27285)

(declare-fun zeroValue!654 () V!27285)

(declare-fun getCurrentListMapNoExtraKeys!2926 (array!49504 array!49506 (_ BitVec 32) (_ BitVec 32) V!27285 V!27285 (_ BitVec 32) Int) ListLongMap!9865)

(assert (=> b!861702 (= lt!388727 (getCurrentListMapNoExtraKeys!2926 _keys!868 lt!388721 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27285)

(assert (=> b!861702 (= lt!388721 (array!49507 (store (arr!23780 _values!688) i!612 (ValueCellFull!7900 v!557)) (size!24221 _values!688)))))

(declare-fun lt!388728 () ListLongMap!9865)

(assert (=> b!861702 (= lt!388728 (getCurrentListMapNoExtraKeys!2926 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861703 () Bool)

(assert (=> b!861703 (= e!480123 (and e!480122 mapRes!26618))))

(declare-fun condMapEmpty!26618 () Bool)

(declare-fun mapDefault!26618 () ValueCell!7900)

