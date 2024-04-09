; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73972 () Bool)

(assert start!73972)

(declare-fun b_free!14859 () Bool)

(declare-fun b_next!14859 () Bool)

(assert (=> start!73972 (= b_free!14859 (not b_next!14859))))

(declare-fun tp!52081 () Bool)

(declare-fun b_and!24629 () Bool)

(assert (=> start!73972 (= tp!52081 b_and!24629)))

(declare-fun b!868965 () Bool)

(declare-fun res!590624 () Bool)

(declare-fun e!483980 () Bool)

(assert (=> b!868965 (=> (not res!590624) (not e!483980))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50122 0))(
  ( (array!50123 (arr!24088 (Array (_ BitVec 32) (_ BitVec 64))) (size!24529 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50122)

(assert (=> b!868965 (= res!590624 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24529 _keys!868))))))

(declare-fun b!868966 () Bool)

(declare-fun e!483976 () Bool)

(assert (=> b!868966 (= e!483980 e!483976)))

(declare-fun res!590626 () Bool)

(assert (=> b!868966 (=> (not res!590626) (not e!483976))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868966 (= res!590626 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27707 0))(
  ( (V!27708 (val!8545 Int)) )
))
(declare-datatypes ((ValueCell!8058 0))(
  ( (ValueCellFull!8058 (v!10966 V!27707)) (EmptyCell!8058) )
))
(declare-datatypes ((array!50124 0))(
  ( (array!50125 (arr!24089 (Array (_ BitVec 32) ValueCell!8058)) (size!24530 (_ BitVec 32))) )
))
(declare-fun lt!394640 () array!50124)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11348 0))(
  ( (tuple2!11349 (_1!5684 (_ BitVec 64)) (_2!5684 V!27707)) )
))
(declare-datatypes ((List!17205 0))(
  ( (Nil!17202) (Cons!17201 (h!18332 tuple2!11348) (t!24250 List!17205)) )
))
(declare-datatypes ((ListLongMap!10131 0))(
  ( (ListLongMap!10132 (toList!5081 List!17205)) )
))
(declare-fun lt!394638 () ListLongMap!10131)

(declare-fun minValue!654 () V!27707)

(declare-fun zeroValue!654 () V!27707)

(declare-fun getCurrentListMapNoExtraKeys!3045 (array!50122 array!50124 (_ BitVec 32) (_ BitVec 32) V!27707 V!27707 (_ BitVec 32) Int) ListLongMap!10131)

(assert (=> b!868966 (= lt!394638 (getCurrentListMapNoExtraKeys!3045 _keys!868 lt!394640 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27707)

(declare-fun _values!688 () array!50124)

(assert (=> b!868966 (= lt!394640 (array!50125 (store (arr!24089 _values!688) i!612 (ValueCellFull!8058 v!557)) (size!24530 _values!688)))))

(declare-fun lt!394641 () ListLongMap!10131)

(assert (=> b!868966 (= lt!394641 (getCurrentListMapNoExtraKeys!3045 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868967 () Bool)

(declare-fun res!590628 () Bool)

(assert (=> b!868967 (=> (not res!590628) (not e!483980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868967 (= res!590628 (validMask!0 mask!1196))))

(declare-fun b!868968 () Bool)

(declare-fun res!590631 () Bool)

(assert (=> b!868968 (=> (not res!590631) (not e!483980))))

(assert (=> b!868968 (= res!590631 (and (= (size!24530 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24529 _keys!868) (size!24530 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868969 () Bool)

(declare-fun res!590627 () Bool)

(assert (=> b!868969 (=> (not res!590627) (not e!483980))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868969 (= res!590627 (validKeyInArray!0 k0!854))))

(declare-fun b!868970 () Bool)

(declare-fun res!590625 () Bool)

(assert (=> b!868970 (=> (not res!590625) (not e!483980))))

(assert (=> b!868970 (= res!590625 (and (= (select (arr!24088 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868971 () Bool)

(declare-fun e!483977 () Bool)

(declare-fun e!483978 () Bool)

(declare-fun mapRes!27092 () Bool)

(assert (=> b!868971 (= e!483977 (and e!483978 mapRes!27092))))

(declare-fun condMapEmpty!27092 () Bool)

(declare-fun mapDefault!27092 () ValueCell!8058)

(assert (=> b!868971 (= condMapEmpty!27092 (= (arr!24089 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8058)) mapDefault!27092)))))

(declare-fun b!868972 () Bool)

(declare-fun res!590623 () Bool)

(assert (=> b!868972 (=> (not res!590623) (not e!483980))))

(declare-datatypes ((List!17206 0))(
  ( (Nil!17203) (Cons!17202 (h!18333 (_ BitVec 64)) (t!24251 List!17206)) )
))
(declare-fun arrayNoDuplicates!0 (array!50122 (_ BitVec 32) List!17206) Bool)

(assert (=> b!868972 (= res!590623 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17203))))

(declare-fun b!868973 () Bool)

(declare-fun res!590629 () Bool)

(assert (=> b!868973 (=> (not res!590629) (not e!483980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50122 (_ BitVec 32)) Bool)

(assert (=> b!868973 (= res!590629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27092 () Bool)

(declare-fun tp!52082 () Bool)

(declare-fun e!483981 () Bool)

(assert (=> mapNonEmpty!27092 (= mapRes!27092 (and tp!52082 e!483981))))

(declare-fun mapKey!27092 () (_ BitVec 32))

(declare-fun mapRest!27092 () (Array (_ BitVec 32) ValueCell!8058))

(declare-fun mapValue!27092 () ValueCell!8058)

(assert (=> mapNonEmpty!27092 (= (arr!24089 _values!688) (store mapRest!27092 mapKey!27092 mapValue!27092))))

(declare-fun b!868974 () Bool)

(assert (=> b!868974 (= e!483976 (not true))))

(declare-fun +!2367 (ListLongMap!10131 tuple2!11348) ListLongMap!10131)

(assert (=> b!868974 (= (getCurrentListMapNoExtraKeys!3045 _keys!868 lt!394640 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2367 (getCurrentListMapNoExtraKeys!3045 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11349 k0!854 v!557)))))

(declare-datatypes ((Unit!29784 0))(
  ( (Unit!29785) )
))
(declare-fun lt!394639 () Unit!29784)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!598 (array!50122 array!50124 (_ BitVec 32) (_ BitVec 32) V!27707 V!27707 (_ BitVec 32) (_ BitVec 64) V!27707 (_ BitVec 32) Int) Unit!29784)

(assert (=> b!868974 (= lt!394639 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!598 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27092 () Bool)

(assert (=> mapIsEmpty!27092 mapRes!27092))

(declare-fun res!590630 () Bool)

(assert (=> start!73972 (=> (not res!590630) (not e!483980))))

(assert (=> start!73972 (= res!590630 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24529 _keys!868))))))

(assert (=> start!73972 e!483980))

(declare-fun tp_is_empty!16995 () Bool)

(assert (=> start!73972 tp_is_empty!16995))

(assert (=> start!73972 true))

(assert (=> start!73972 tp!52081))

(declare-fun array_inv!19002 (array!50122) Bool)

(assert (=> start!73972 (array_inv!19002 _keys!868)))

(declare-fun array_inv!19003 (array!50124) Bool)

(assert (=> start!73972 (and (array_inv!19003 _values!688) e!483977)))

(declare-fun b!868975 () Bool)

(assert (=> b!868975 (= e!483978 tp_is_empty!16995)))

(declare-fun b!868976 () Bool)

(assert (=> b!868976 (= e!483981 tp_is_empty!16995)))

(assert (= (and start!73972 res!590630) b!868967))

(assert (= (and b!868967 res!590628) b!868968))

(assert (= (and b!868968 res!590631) b!868973))

(assert (= (and b!868973 res!590629) b!868972))

(assert (= (and b!868972 res!590623) b!868965))

(assert (= (and b!868965 res!590624) b!868969))

(assert (= (and b!868969 res!590627) b!868970))

(assert (= (and b!868970 res!590625) b!868966))

(assert (= (and b!868966 res!590626) b!868974))

(assert (= (and b!868971 condMapEmpty!27092) mapIsEmpty!27092))

(assert (= (and b!868971 (not condMapEmpty!27092)) mapNonEmpty!27092))

(get-info :version)

(assert (= (and mapNonEmpty!27092 ((_ is ValueCellFull!8058) mapValue!27092)) b!868976))

(assert (= (and b!868971 ((_ is ValueCellFull!8058) mapDefault!27092)) b!868975))

(assert (= start!73972 b!868971))

(declare-fun m!810661 () Bool)

(assert (=> b!868970 m!810661))

(declare-fun m!810663 () Bool)

(assert (=> b!868972 m!810663))

(declare-fun m!810665 () Bool)

(assert (=> b!868974 m!810665))

(declare-fun m!810667 () Bool)

(assert (=> b!868974 m!810667))

(assert (=> b!868974 m!810667))

(declare-fun m!810669 () Bool)

(assert (=> b!868974 m!810669))

(declare-fun m!810671 () Bool)

(assert (=> b!868974 m!810671))

(declare-fun m!810673 () Bool)

(assert (=> start!73972 m!810673))

(declare-fun m!810675 () Bool)

(assert (=> start!73972 m!810675))

(declare-fun m!810677 () Bool)

(assert (=> mapNonEmpty!27092 m!810677))

(declare-fun m!810679 () Bool)

(assert (=> b!868969 m!810679))

(declare-fun m!810681 () Bool)

(assert (=> b!868973 m!810681))

(declare-fun m!810683 () Bool)

(assert (=> b!868966 m!810683))

(declare-fun m!810685 () Bool)

(assert (=> b!868966 m!810685))

(declare-fun m!810687 () Bool)

(assert (=> b!868966 m!810687))

(declare-fun m!810689 () Bool)

(assert (=> b!868967 m!810689))

(check-sat (not b!868972) (not b!868969) (not b!868974) (not b_next!14859) (not b!868967) (not b!868966) b_and!24629 (not b!868973) tp_is_empty!16995 (not start!73972) (not mapNonEmpty!27092))
(check-sat b_and!24629 (not b_next!14859))
