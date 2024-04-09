; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112430 () Bool)

(assert start!112430)

(declare-fun b_free!30789 () Bool)

(declare-fun b_next!30789 () Bool)

(assert (=> start!112430 (= b_free!30789 (not b_next!30789))))

(declare-fun tp!108004 () Bool)

(declare-fun b_and!49641 () Bool)

(assert (=> start!112430 (= tp!108004 b_and!49641)))

(declare-fun b!1332430 () Bool)

(declare-fun res!884308 () Bool)

(declare-fun e!759090 () Bool)

(assert (=> b!1332430 (=> (not res!884308) (not e!759090))))

(declare-datatypes ((V!54035 0))(
  ( (V!54036 (val!18424 Int)) )
))
(declare-datatypes ((ValueCell!17451 0))(
  ( (ValueCellFull!17451 (v!21059 V!54035)) (EmptyCell!17451) )
))
(declare-datatypes ((array!90247 0))(
  ( (array!90248 (arr!43585 (Array (_ BitVec 32) ValueCell!17451)) (size!44136 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90247)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90249 0))(
  ( (array!90250 (arr!43586 (Array (_ BitVec 32) (_ BitVec 64))) (size!44137 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90249)

(assert (=> b!1332430 (= res!884308 (and (= (size!44136 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44137 _keys!1590) (size!44136 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884312 () Bool)

(assert (=> start!112430 (=> (not res!884312) (not e!759090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112430 (= res!884312 (validMask!0 mask!1998))))

(assert (=> start!112430 e!759090))

(declare-fun e!759093 () Bool)

(declare-fun array_inv!32823 (array!90247) Bool)

(assert (=> start!112430 (and (array_inv!32823 _values!1320) e!759093)))

(assert (=> start!112430 true))

(declare-fun array_inv!32824 (array!90249) Bool)

(assert (=> start!112430 (array_inv!32824 _keys!1590)))

(assert (=> start!112430 tp!108004))

(declare-fun tp_is_empty!36699 () Bool)

(assert (=> start!112430 tp_is_empty!36699))

(declare-fun b!1332431 () Bool)

(declare-fun res!884311 () Bool)

(assert (=> b!1332431 (=> (not res!884311) (not e!759090))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332431 (= res!884311 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44137 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332432 () Bool)

(declare-fun e!759092 () Bool)

(declare-fun mapRes!56722 () Bool)

(assert (=> b!1332432 (= e!759093 (and e!759092 mapRes!56722))))

(declare-fun condMapEmpty!56722 () Bool)

(declare-fun mapDefault!56722 () ValueCell!17451)

(assert (=> b!1332432 (= condMapEmpty!56722 (= (arr!43585 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17451)) mapDefault!56722)))))

(declare-fun mapIsEmpty!56722 () Bool)

(assert (=> mapIsEmpty!56722 mapRes!56722))

(declare-fun b!1332433 () Bool)

(assert (=> b!1332433 (= e!759092 tp_is_empty!36699)))

(declare-fun mapNonEmpty!56722 () Bool)

(declare-fun tp!108005 () Bool)

(declare-fun e!759094 () Bool)

(assert (=> mapNonEmpty!56722 (= mapRes!56722 (and tp!108005 e!759094))))

(declare-fun mapValue!56722 () ValueCell!17451)

(declare-fun mapKey!56722 () (_ BitVec 32))

(declare-fun mapRest!56722 () (Array (_ BitVec 32) ValueCell!17451))

(assert (=> mapNonEmpty!56722 (= (arr!43585 _values!1320) (store mapRest!56722 mapKey!56722 mapValue!56722))))

(declare-fun b!1332434 () Bool)

(declare-fun res!884310 () Bool)

(assert (=> b!1332434 (=> (not res!884310) (not e!759090))))

(declare-datatypes ((List!31073 0))(
  ( (Nil!31070) (Cons!31069 (h!32278 (_ BitVec 64)) (t!45278 List!31073)) )
))
(declare-fun arrayNoDuplicates!0 (array!90249 (_ BitVec 32) List!31073) Bool)

(assert (=> b!1332434 (= res!884310 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31070))))

(declare-fun b!1332435 () Bool)

(assert (=> b!1332435 (= e!759090 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!591968 () Bool)

(declare-fun minValue!1262 () V!54035)

(declare-fun zeroValue!1262 () V!54035)

(declare-datatypes ((tuple2!23894 0))(
  ( (tuple2!23895 (_1!11957 (_ BitVec 64)) (_2!11957 V!54035)) )
))
(declare-datatypes ((List!31074 0))(
  ( (Nil!31071) (Cons!31070 (h!32279 tuple2!23894) (t!45279 List!31074)) )
))
(declare-datatypes ((ListLongMap!21563 0))(
  ( (ListLongMap!21564 (toList!10797 List!31074)) )
))
(declare-fun contains!8897 (ListLongMap!21563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5718 (array!90249 array!90247 (_ BitVec 32) (_ BitVec 32) V!54035 V!54035 (_ BitVec 32) Int) ListLongMap!21563)

(assert (=> b!1332435 (= lt!591968 (contains!8897 (getCurrentListMap!5718 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332436 () Bool)

(declare-fun res!884309 () Bool)

(assert (=> b!1332436 (=> (not res!884309) (not e!759090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90249 (_ BitVec 32)) Bool)

(assert (=> b!1332436 (= res!884309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332437 () Bool)

(assert (=> b!1332437 (= e!759094 tp_is_empty!36699)))

(assert (= (and start!112430 res!884312) b!1332430))

(assert (= (and b!1332430 res!884308) b!1332436))

(assert (= (and b!1332436 res!884309) b!1332434))

(assert (= (and b!1332434 res!884310) b!1332431))

(assert (= (and b!1332431 res!884311) b!1332435))

(assert (= (and b!1332432 condMapEmpty!56722) mapIsEmpty!56722))

(assert (= (and b!1332432 (not condMapEmpty!56722)) mapNonEmpty!56722))

(get-info :version)

(assert (= (and mapNonEmpty!56722 ((_ is ValueCellFull!17451) mapValue!56722)) b!1332437))

(assert (= (and b!1332432 ((_ is ValueCellFull!17451) mapDefault!56722)) b!1332433))

(assert (= start!112430 b!1332432))

(declare-fun m!1221295 () Bool)

(assert (=> b!1332436 m!1221295))

(declare-fun m!1221297 () Bool)

(assert (=> start!112430 m!1221297))

(declare-fun m!1221299 () Bool)

(assert (=> start!112430 m!1221299))

(declare-fun m!1221301 () Bool)

(assert (=> start!112430 m!1221301))

(declare-fun m!1221303 () Bool)

(assert (=> b!1332435 m!1221303))

(assert (=> b!1332435 m!1221303))

(declare-fun m!1221305 () Bool)

(assert (=> b!1332435 m!1221305))

(declare-fun m!1221307 () Bool)

(assert (=> mapNonEmpty!56722 m!1221307))

(declare-fun m!1221309 () Bool)

(assert (=> b!1332434 m!1221309))

(check-sat (not b_next!30789) (not b!1332434) (not mapNonEmpty!56722) (not b!1332436) (not b!1332435) (not start!112430) b_and!49641 tp_is_empty!36699)
(check-sat b_and!49641 (not b_next!30789))
