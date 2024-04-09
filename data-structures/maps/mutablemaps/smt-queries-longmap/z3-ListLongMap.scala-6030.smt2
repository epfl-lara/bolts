; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78094 () Bool)

(assert start!78094)

(declare-fun b_free!16593 () Bool)

(declare-fun b_next!16593 () Bool)

(assert (=> start!78094 (= b_free!16593 (not b_next!16593))))

(declare-fun tp!58051 () Bool)

(declare-fun b_and!27183 () Bool)

(assert (=> start!78094 (= tp!58051 b_and!27183)))

(declare-fun b!911091 () Bool)

(declare-fun e!510980 () Bool)

(assert (=> b!911091 (= e!510980 false)))

(declare-datatypes ((V!30313 0))(
  ( (V!30314 (val!9556 Int)) )
))
(declare-datatypes ((ValueCell!9024 0))(
  ( (ValueCellFull!9024 (v!12065 V!30313)) (EmptyCell!9024) )
))
(declare-datatypes ((array!54030 0))(
  ( (array!54031 (arr!25967 (Array (_ BitVec 32) ValueCell!9024)) (size!26427 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54030)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410317 () Bool)

(declare-fun zeroValue!1094 () V!30313)

(declare-datatypes ((array!54032 0))(
  ( (array!54033 (arr!25968 (Array (_ BitVec 32) (_ BitVec 64))) (size!26428 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54032)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30313)

(declare-datatypes ((tuple2!12498 0))(
  ( (tuple2!12499 (_1!6259 (_ BitVec 64)) (_2!6259 V!30313)) )
))
(declare-datatypes ((List!18346 0))(
  ( (Nil!18343) (Cons!18342 (h!19488 tuple2!12498) (t!25939 List!18346)) )
))
(declare-datatypes ((ListLongMap!11209 0))(
  ( (ListLongMap!11210 (toList!5620 List!18346)) )
))
(declare-fun contains!4629 (ListLongMap!11209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2850 (array!54032 array!54030 (_ BitVec 32) (_ BitVec 32) V!30313 V!30313 (_ BitVec 32) Int) ListLongMap!11209)

(assert (=> b!911091 (= lt!410317 (contains!4629 (getCurrentListMap!2850 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911092 () Bool)

(declare-fun e!510983 () Bool)

(declare-fun e!510982 () Bool)

(declare-fun mapRes!30238 () Bool)

(assert (=> b!911092 (= e!510983 (and e!510982 mapRes!30238))))

(declare-fun condMapEmpty!30238 () Bool)

(declare-fun mapDefault!30238 () ValueCell!9024)

(assert (=> b!911092 (= condMapEmpty!30238 (= (arr!25967 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9024)) mapDefault!30238)))))

(declare-fun b!911093 () Bool)

(declare-fun e!510979 () Bool)

(declare-fun tp_is_empty!19011 () Bool)

(assert (=> b!911093 (= e!510979 tp_is_empty!19011)))

(declare-fun b!911094 () Bool)

(declare-fun res!614835 () Bool)

(assert (=> b!911094 (=> (not res!614835) (not e!510980))))

(declare-datatypes ((List!18347 0))(
  ( (Nil!18344) (Cons!18343 (h!19489 (_ BitVec 64)) (t!25940 List!18347)) )
))
(declare-fun arrayNoDuplicates!0 (array!54032 (_ BitVec 32) List!18347) Bool)

(assert (=> b!911094 (= res!614835 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18344))))

(declare-fun res!614834 () Bool)

(assert (=> start!78094 (=> (not res!614834) (not e!510980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78094 (= res!614834 (validMask!0 mask!1756))))

(assert (=> start!78094 e!510980))

(declare-fun array_inv!20284 (array!54030) Bool)

(assert (=> start!78094 (and (array_inv!20284 _values!1152) e!510983)))

(assert (=> start!78094 tp!58051))

(assert (=> start!78094 true))

(assert (=> start!78094 tp_is_empty!19011))

(declare-fun array_inv!20285 (array!54032) Bool)

(assert (=> start!78094 (array_inv!20285 _keys!1386)))

(declare-fun b!911095 () Bool)

(assert (=> b!911095 (= e!510982 tp_is_empty!19011)))

(declare-fun mapIsEmpty!30238 () Bool)

(assert (=> mapIsEmpty!30238 mapRes!30238))

(declare-fun mapNonEmpty!30238 () Bool)

(declare-fun tp!58050 () Bool)

(assert (=> mapNonEmpty!30238 (= mapRes!30238 (and tp!58050 e!510979))))

(declare-fun mapRest!30238 () (Array (_ BitVec 32) ValueCell!9024))

(declare-fun mapKey!30238 () (_ BitVec 32))

(declare-fun mapValue!30238 () ValueCell!9024)

(assert (=> mapNonEmpty!30238 (= (arr!25967 _values!1152) (store mapRest!30238 mapKey!30238 mapValue!30238))))

(declare-fun b!911096 () Bool)

(declare-fun res!614833 () Bool)

(assert (=> b!911096 (=> (not res!614833) (not e!510980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54032 (_ BitVec 32)) Bool)

(assert (=> b!911096 (= res!614833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911097 () Bool)

(declare-fun res!614836 () Bool)

(assert (=> b!911097 (=> (not res!614836) (not e!510980))))

(assert (=> b!911097 (= res!614836 (and (= (size!26427 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26428 _keys!1386) (size!26427 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!78094 res!614834) b!911097))

(assert (= (and b!911097 res!614836) b!911096))

(assert (= (and b!911096 res!614833) b!911094))

(assert (= (and b!911094 res!614835) b!911091))

(assert (= (and b!911092 condMapEmpty!30238) mapIsEmpty!30238))

(assert (= (and b!911092 (not condMapEmpty!30238)) mapNonEmpty!30238))

(get-info :version)

(assert (= (and mapNonEmpty!30238 ((_ is ValueCellFull!9024) mapValue!30238)) b!911093))

(assert (= (and b!911092 ((_ is ValueCellFull!9024) mapDefault!30238)) b!911095))

(assert (= start!78094 b!911092))

(declare-fun m!846005 () Bool)

(assert (=> b!911094 m!846005))

(declare-fun m!846007 () Bool)

(assert (=> mapNonEmpty!30238 m!846007))

(declare-fun m!846009 () Bool)

(assert (=> b!911096 m!846009))

(declare-fun m!846011 () Bool)

(assert (=> b!911091 m!846011))

(assert (=> b!911091 m!846011))

(declare-fun m!846013 () Bool)

(assert (=> b!911091 m!846013))

(declare-fun m!846015 () Bool)

(assert (=> start!78094 m!846015))

(declare-fun m!846017 () Bool)

(assert (=> start!78094 m!846017))

(declare-fun m!846019 () Bool)

(assert (=> start!78094 m!846019))

(check-sat (not start!78094) (not mapNonEmpty!30238) (not b_next!16593) (not b!911091) tp_is_empty!19011 (not b!911096) (not b!911094) b_and!27183)
(check-sat b_and!27183 (not b_next!16593))
