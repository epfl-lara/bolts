; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73782 () Bool)

(assert start!73782)

(declare-fun b_free!14669 () Bool)

(declare-fun b_next!14669 () Bool)

(assert (=> start!73782 (= b_free!14669 (not b_next!14669))))

(declare-fun tp!51511 () Bool)

(declare-fun b_and!24335 () Bool)

(assert (=> start!73782 (= tp!51511 b_and!24335)))

(declare-fun b!864825 () Bool)

(declare-fun res!587759 () Bool)

(declare-fun e!481810 () Bool)

(assert (=> b!864825 (=> (not res!587759) (not e!481810))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49754 0))(
  ( (array!49755 (arr!23904 (Array (_ BitVec 32) (_ BitVec 64))) (size!24345 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49754)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864825 (= res!587759 (and (= (select (arr!23904 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26807 () Bool)

(declare-fun mapRes!26807 () Bool)

(assert (=> mapIsEmpty!26807 mapRes!26807))

(declare-fun b!864826 () Bool)

(declare-fun e!481812 () Bool)

(assert (=> b!864826 (= e!481810 e!481812)))

(declare-fun res!587753 () Bool)

(assert (=> b!864826 (=> (not res!587753) (not e!481812))))

(assert (=> b!864826 (= res!587753 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27453 0))(
  ( (V!27454 (val!8450 Int)) )
))
(declare-datatypes ((tuple2!11196 0))(
  ( (tuple2!11197 (_1!5608 (_ BitVec 64)) (_2!5608 V!27453)) )
))
(declare-datatypes ((List!17061 0))(
  ( (Nil!17058) (Cons!17057 (h!18188 tuple2!11196) (t!24004 List!17061)) )
))
(declare-datatypes ((ListLongMap!9979 0))(
  ( (ListLongMap!9980 (toList!5005 List!17061)) )
))
(declare-fun lt!391665 () ListLongMap!9979)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7963 0))(
  ( (ValueCellFull!7963 (v!10871 V!27453)) (EmptyCell!7963) )
))
(declare-datatypes ((array!49756 0))(
  ( (array!49757 (arr!23905 (Array (_ BitVec 32) ValueCell!7963)) (size!24346 (_ BitVec 32))) )
))
(declare-fun lt!391650 () array!49756)

(declare-fun minValue!654 () V!27453)

(declare-fun zeroValue!654 () V!27453)

(declare-fun getCurrentListMapNoExtraKeys!2976 (array!49754 array!49756 (_ BitVec 32) (_ BitVec 32) V!27453 V!27453 (_ BitVec 32) Int) ListLongMap!9979)

(assert (=> b!864826 (= lt!391665 (getCurrentListMapNoExtraKeys!2976 _keys!868 lt!391650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27453)

(declare-fun _values!688 () array!49756)

(assert (=> b!864826 (= lt!391650 (array!49757 (store (arr!23905 _values!688) i!612 (ValueCellFull!7963 v!557)) (size!24346 _values!688)))))

(declare-fun lt!391661 () ListLongMap!9979)

(assert (=> b!864826 (= lt!391661 (getCurrentListMapNoExtraKeys!2976 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864827 () Bool)

(declare-datatypes ((Unit!29575 0))(
  ( (Unit!29576) )
))
(declare-fun e!481808 () Unit!29575)

(declare-fun Unit!29577 () Unit!29575)

(assert (=> b!864827 (= e!481808 Unit!29577)))

(declare-fun lt!391652 () Unit!29575)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49754 (_ BitVec 32) (_ BitVec 32)) Unit!29575)

(assert (=> b!864827 (= lt!391652 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17062 0))(
  ( (Nil!17059) (Cons!17058 (h!18189 (_ BitVec 64)) (t!24005 List!17062)) )
))
(declare-fun arrayNoDuplicates!0 (array!49754 (_ BitVec 32) List!17062) Bool)

(assert (=> b!864827 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17059)))

(declare-fun lt!391662 () Unit!29575)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49754 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29575)

(assert (=> b!864827 (= lt!391662 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864827 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391664 () Unit!29575)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49754 (_ BitVec 64) (_ BitVec 32) List!17062) Unit!29575)

(assert (=> b!864827 (= lt!391664 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17059))))

(assert (=> b!864827 false))

(declare-fun b!864828 () Bool)

(declare-fun e!481805 () Bool)

(declare-fun tp_is_empty!16805 () Bool)

(assert (=> b!864828 (= e!481805 tp_is_empty!16805)))

(declare-fun b!864829 () Bool)

(declare-fun e!481809 () Bool)

(assert (=> b!864829 (= e!481809 true)))

(declare-fun lt!391658 () ListLongMap!9979)

(declare-fun lt!391653 () tuple2!11196)

(declare-fun lt!391657 () tuple2!11196)

(declare-fun lt!391654 () ListLongMap!9979)

(declare-fun +!2301 (ListLongMap!9979 tuple2!11196) ListLongMap!9979)

(assert (=> b!864829 (= lt!391654 (+!2301 (+!2301 lt!391658 lt!391657) lt!391653))))

(declare-fun lt!391660 () Unit!29575)

(declare-fun lt!391663 () V!27453)

(declare-fun addCommutativeForDiffKeys!509 (ListLongMap!9979 (_ BitVec 64) V!27453 (_ BitVec 64) V!27453) Unit!29575)

(assert (=> b!864829 (= lt!391660 (addCommutativeForDiffKeys!509 lt!391658 k!854 v!557 (select (arr!23904 _keys!868) from!1053) lt!391663))))

(declare-fun res!587757 () Bool)

(assert (=> start!73782 (=> (not res!587757) (not e!481810))))

(assert (=> start!73782 (= res!587757 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24345 _keys!868))))))

(assert (=> start!73782 e!481810))

(assert (=> start!73782 tp_is_empty!16805))

(assert (=> start!73782 true))

(assert (=> start!73782 tp!51511))

(declare-fun array_inv!18882 (array!49754) Bool)

(assert (=> start!73782 (array_inv!18882 _keys!868)))

(declare-fun e!481804 () Bool)

(declare-fun array_inv!18883 (array!49756) Bool)

(assert (=> start!73782 (and (array_inv!18883 _values!688) e!481804)))

(declare-fun b!864830 () Bool)

(declare-fun e!481807 () Bool)

(assert (=> b!864830 (= e!481807 tp_is_empty!16805)))

(declare-fun b!864831 () Bool)

(declare-fun e!481806 () Bool)

(assert (=> b!864831 (= e!481812 (not e!481806))))

(declare-fun res!587750 () Bool)

(assert (=> b!864831 (=> res!587750 e!481806)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864831 (= res!587750 (not (validKeyInArray!0 (select (arr!23904 _keys!868) from!1053))))))

(declare-fun lt!391655 () ListLongMap!9979)

(declare-fun lt!391651 () ListLongMap!9979)

(assert (=> b!864831 (= lt!391655 lt!391651)))

(assert (=> b!864831 (= lt!391651 (+!2301 lt!391658 lt!391653))))

(assert (=> b!864831 (= lt!391655 (getCurrentListMapNoExtraKeys!2976 _keys!868 lt!391650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864831 (= lt!391653 (tuple2!11197 k!854 v!557))))

(assert (=> b!864831 (= lt!391658 (getCurrentListMapNoExtraKeys!2976 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391656 () Unit!29575)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!542 (array!49754 array!49756 (_ BitVec 32) (_ BitVec 32) V!27453 V!27453 (_ BitVec 32) (_ BitVec 64) V!27453 (_ BitVec 32) Int) Unit!29575)

(assert (=> b!864831 (= lt!391656 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!542 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864832 () Bool)

(declare-fun res!587758 () Bool)

(assert (=> b!864832 (=> (not res!587758) (not e!481810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864832 (= res!587758 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26807 () Bool)

(declare-fun tp!51512 () Bool)

(assert (=> mapNonEmpty!26807 (= mapRes!26807 (and tp!51512 e!481805))))

(declare-fun mapRest!26807 () (Array (_ BitVec 32) ValueCell!7963))

(declare-fun mapKey!26807 () (_ BitVec 32))

(declare-fun mapValue!26807 () ValueCell!7963)

(assert (=> mapNonEmpty!26807 (= (arr!23905 _values!688) (store mapRest!26807 mapKey!26807 mapValue!26807))))

(declare-fun b!864833 () Bool)

(assert (=> b!864833 (= e!481806 e!481809)))

(declare-fun res!587755 () Bool)

(assert (=> b!864833 (=> res!587755 e!481809)))

(assert (=> b!864833 (= res!587755 (= k!854 (select (arr!23904 _keys!868) from!1053)))))

(assert (=> b!864833 (not (= (select (arr!23904 _keys!868) from!1053) k!854))))

(declare-fun lt!391659 () Unit!29575)

(assert (=> b!864833 (= lt!391659 e!481808)))

(declare-fun c!92142 () Bool)

(assert (=> b!864833 (= c!92142 (= (select (arr!23904 _keys!868) from!1053) k!854))))

(assert (=> b!864833 (= lt!391665 lt!391654)))

(assert (=> b!864833 (= lt!391654 (+!2301 lt!391651 lt!391657))))

(assert (=> b!864833 (= lt!391657 (tuple2!11197 (select (arr!23904 _keys!868) from!1053) lt!391663))))

(declare-fun get!12642 (ValueCell!7963 V!27453) V!27453)

(declare-fun dynLambda!1170 (Int (_ BitVec 64)) V!27453)

(assert (=> b!864833 (= lt!391663 (get!12642 (select (arr!23905 _values!688) from!1053) (dynLambda!1170 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864834 () Bool)

(declare-fun res!587752 () Bool)

(assert (=> b!864834 (=> (not res!587752) (not e!481810))))

(assert (=> b!864834 (= res!587752 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24345 _keys!868))))))

(declare-fun b!864835 () Bool)

(declare-fun res!587756 () Bool)

(assert (=> b!864835 (=> (not res!587756) (not e!481810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49754 (_ BitVec 32)) Bool)

(assert (=> b!864835 (= res!587756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864836 () Bool)

(declare-fun Unit!29578 () Unit!29575)

(assert (=> b!864836 (= e!481808 Unit!29578)))

(declare-fun b!864837 () Bool)

(declare-fun res!587751 () Bool)

(assert (=> b!864837 (=> (not res!587751) (not e!481810))))

(assert (=> b!864837 (= res!587751 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17059))))

(declare-fun b!864838 () Bool)

(assert (=> b!864838 (= e!481804 (and e!481807 mapRes!26807))))

(declare-fun condMapEmpty!26807 () Bool)

(declare-fun mapDefault!26807 () ValueCell!7963)

