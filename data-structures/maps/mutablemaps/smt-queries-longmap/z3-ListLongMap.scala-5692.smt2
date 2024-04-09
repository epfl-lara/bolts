; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73966 () Bool)

(assert start!73966)

(declare-fun b_free!14853 () Bool)

(declare-fun b_next!14853 () Bool)

(assert (=> start!73966 (= b_free!14853 (not b_next!14853))))

(declare-fun tp!52063 () Bool)

(declare-fun b_and!24623 () Bool)

(assert (=> start!73966 (= tp!52063 b_and!24623)))

(declare-fun b!868857 () Bool)

(declare-fun e!483922 () Bool)

(declare-fun e!483926 () Bool)

(assert (=> b!868857 (= e!483922 e!483926)))

(declare-fun res!590545 () Bool)

(assert (=> b!868857 (=> (not res!590545) (not e!483926))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868857 (= res!590545 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27699 0))(
  ( (V!27700 (val!8542 Int)) )
))
(declare-datatypes ((ValueCell!8055 0))(
  ( (ValueCellFull!8055 (v!10963 V!27699)) (EmptyCell!8055) )
))
(declare-datatypes ((array!50112 0))(
  ( (array!50113 (arr!24083 (Array (_ BitVec 32) ValueCell!8055)) (size!24524 (_ BitVec 32))) )
))
(declare-fun lt!394603 () array!50112)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11344 0))(
  ( (tuple2!11345 (_1!5682 (_ BitVec 64)) (_2!5682 V!27699)) )
))
(declare-datatypes ((List!17201 0))(
  ( (Nil!17198) (Cons!17197 (h!18328 tuple2!11344) (t!24246 List!17201)) )
))
(declare-datatypes ((ListLongMap!10127 0))(
  ( (ListLongMap!10128 (toList!5079 List!17201)) )
))
(declare-fun lt!394604 () ListLongMap!10127)

(declare-datatypes ((array!50114 0))(
  ( (array!50115 (arr!24084 (Array (_ BitVec 32) (_ BitVec 64))) (size!24525 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50114)

(declare-fun minValue!654 () V!27699)

(declare-fun zeroValue!654 () V!27699)

(declare-fun getCurrentListMapNoExtraKeys!3043 (array!50114 array!50112 (_ BitVec 32) (_ BitVec 32) V!27699 V!27699 (_ BitVec 32) Int) ListLongMap!10127)

(assert (=> b!868857 (= lt!394604 (getCurrentListMapNoExtraKeys!3043 _keys!868 lt!394603 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27699)

(declare-fun _values!688 () array!50112)

(assert (=> b!868857 (= lt!394603 (array!50113 (store (arr!24083 _values!688) i!612 (ValueCellFull!8055 v!557)) (size!24524 _values!688)))))

(declare-fun lt!394605 () ListLongMap!10127)

(assert (=> b!868857 (= lt!394605 (getCurrentListMapNoExtraKeys!3043 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868858 () Bool)

(declare-fun res!590548 () Bool)

(assert (=> b!868858 (=> (not res!590548) (not e!483922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50114 (_ BitVec 32)) Bool)

(assert (=> b!868858 (= res!590548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868859 () Bool)

(declare-fun res!590550 () Bool)

(assert (=> b!868859 (=> (not res!590550) (not e!483922))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868859 (= res!590550 (validKeyInArray!0 k0!854))))

(declare-fun b!868860 () Bool)

(declare-fun e!483925 () Bool)

(declare-fun tp_is_empty!16989 () Bool)

(assert (=> b!868860 (= e!483925 tp_is_empty!16989)))

(declare-fun b!868861 () Bool)

(declare-fun res!590546 () Bool)

(assert (=> b!868861 (=> (not res!590546) (not e!483922))))

(assert (=> b!868861 (= res!590546 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24525 _keys!868))))))

(declare-fun res!590547 () Bool)

(assert (=> start!73966 (=> (not res!590547) (not e!483922))))

(assert (=> start!73966 (= res!590547 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24525 _keys!868))))))

(assert (=> start!73966 e!483922))

(assert (=> start!73966 tp_is_empty!16989))

(assert (=> start!73966 true))

(assert (=> start!73966 tp!52063))

(declare-fun array_inv!19000 (array!50114) Bool)

(assert (=> start!73966 (array_inv!19000 _keys!868)))

(declare-fun e!483927 () Bool)

(declare-fun array_inv!19001 (array!50112) Bool)

(assert (=> start!73966 (and (array_inv!19001 _values!688) e!483927)))

(declare-fun b!868862 () Bool)

(declare-fun res!590543 () Bool)

(assert (=> b!868862 (=> (not res!590543) (not e!483922))))

(assert (=> b!868862 (= res!590543 (and (= (select (arr!24084 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27083 () Bool)

(declare-fun mapRes!27083 () Bool)

(declare-fun tp!52064 () Bool)

(declare-fun e!483924 () Bool)

(assert (=> mapNonEmpty!27083 (= mapRes!27083 (and tp!52064 e!483924))))

(declare-fun mapKey!27083 () (_ BitVec 32))

(declare-fun mapRest!27083 () (Array (_ BitVec 32) ValueCell!8055))

(declare-fun mapValue!27083 () ValueCell!8055)

(assert (=> mapNonEmpty!27083 (= (arr!24083 _values!688) (store mapRest!27083 mapKey!27083 mapValue!27083))))

(declare-fun b!868863 () Bool)

(declare-fun res!590549 () Bool)

(assert (=> b!868863 (=> (not res!590549) (not e!483922))))

(assert (=> b!868863 (= res!590549 (and (= (size!24524 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24525 _keys!868) (size!24524 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868864 () Bool)

(assert (=> b!868864 (= e!483927 (and e!483925 mapRes!27083))))

(declare-fun condMapEmpty!27083 () Bool)

(declare-fun mapDefault!27083 () ValueCell!8055)

(assert (=> b!868864 (= condMapEmpty!27083 (= (arr!24083 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8055)) mapDefault!27083)))))

(declare-fun b!868865 () Bool)

(declare-fun res!590542 () Bool)

(assert (=> b!868865 (=> (not res!590542) (not e!483922))))

(declare-datatypes ((List!17202 0))(
  ( (Nil!17199) (Cons!17198 (h!18329 (_ BitVec 64)) (t!24247 List!17202)) )
))
(declare-fun arrayNoDuplicates!0 (array!50114 (_ BitVec 32) List!17202) Bool)

(assert (=> b!868865 (= res!590542 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17199))))

(declare-fun b!868866 () Bool)

(assert (=> b!868866 (= e!483924 tp_is_empty!16989)))

(declare-fun b!868867 () Bool)

(assert (=> b!868867 (= e!483926 (not true))))

(declare-fun +!2366 (ListLongMap!10127 tuple2!11344) ListLongMap!10127)

(assert (=> b!868867 (= (getCurrentListMapNoExtraKeys!3043 _keys!868 lt!394603 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2366 (getCurrentListMapNoExtraKeys!3043 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11345 k0!854 v!557)))))

(declare-datatypes ((Unit!29782 0))(
  ( (Unit!29783) )
))
(declare-fun lt!394602 () Unit!29782)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!597 (array!50114 array!50112 (_ BitVec 32) (_ BitVec 32) V!27699 V!27699 (_ BitVec 32) (_ BitVec 64) V!27699 (_ BitVec 32) Int) Unit!29782)

(assert (=> b!868867 (= lt!394602 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!597 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868868 () Bool)

(declare-fun res!590544 () Bool)

(assert (=> b!868868 (=> (not res!590544) (not e!483922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868868 (= res!590544 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27083 () Bool)

(assert (=> mapIsEmpty!27083 mapRes!27083))

(assert (= (and start!73966 res!590547) b!868868))

(assert (= (and b!868868 res!590544) b!868863))

(assert (= (and b!868863 res!590549) b!868858))

(assert (= (and b!868858 res!590548) b!868865))

(assert (= (and b!868865 res!590542) b!868861))

(assert (= (and b!868861 res!590546) b!868859))

(assert (= (and b!868859 res!590550) b!868862))

(assert (= (and b!868862 res!590543) b!868857))

(assert (= (and b!868857 res!590545) b!868867))

(assert (= (and b!868864 condMapEmpty!27083) mapIsEmpty!27083))

(assert (= (and b!868864 (not condMapEmpty!27083)) mapNonEmpty!27083))

(get-info :version)

(assert (= (and mapNonEmpty!27083 ((_ is ValueCellFull!8055) mapValue!27083)) b!868866))

(assert (= (and b!868864 ((_ is ValueCellFull!8055) mapDefault!27083)) b!868860))

(assert (= start!73966 b!868864))

(declare-fun m!810571 () Bool)

(assert (=> b!868867 m!810571))

(declare-fun m!810573 () Bool)

(assert (=> b!868867 m!810573))

(assert (=> b!868867 m!810573))

(declare-fun m!810575 () Bool)

(assert (=> b!868867 m!810575))

(declare-fun m!810577 () Bool)

(assert (=> b!868867 m!810577))

(declare-fun m!810579 () Bool)

(assert (=> b!868865 m!810579))

(declare-fun m!810581 () Bool)

(assert (=> b!868862 m!810581))

(declare-fun m!810583 () Bool)

(assert (=> start!73966 m!810583))

(declare-fun m!810585 () Bool)

(assert (=> start!73966 m!810585))

(declare-fun m!810587 () Bool)

(assert (=> b!868857 m!810587))

(declare-fun m!810589 () Bool)

(assert (=> b!868857 m!810589))

(declare-fun m!810591 () Bool)

(assert (=> b!868857 m!810591))

(declare-fun m!810593 () Bool)

(assert (=> b!868858 m!810593))

(declare-fun m!810595 () Bool)

(assert (=> b!868868 m!810595))

(declare-fun m!810597 () Bool)

(assert (=> mapNonEmpty!27083 m!810597))

(declare-fun m!810599 () Bool)

(assert (=> b!868859 m!810599))

(check-sat (not b!868858) (not b!868865) b_and!24623 (not b!868867) (not b!868868) (not b_next!14853) (not b!868859) (not start!73966) tp_is_empty!16989 (not mapNonEmpty!27083) (not b!868857))
(check-sat b_and!24623 (not b_next!14853))
