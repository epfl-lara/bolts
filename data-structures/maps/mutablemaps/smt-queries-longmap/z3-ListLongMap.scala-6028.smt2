; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78082 () Bool)

(assert start!78082)

(declare-fun b_free!16581 () Bool)

(declare-fun b_next!16581 () Bool)

(assert (=> start!78082 (= b_free!16581 (not b_next!16581))))

(declare-fun tp!58015 () Bool)

(declare-fun b_and!27171 () Bool)

(assert (=> start!78082 (= tp!58015 b_and!27171)))

(declare-fun b!910965 () Bool)

(declare-fun e!510890 () Bool)

(declare-fun tp_is_empty!18999 () Bool)

(assert (=> b!910965 (= e!510890 tp_is_empty!18999)))

(declare-fun b!910966 () Bool)

(declare-fun e!510891 () Bool)

(declare-fun mapRes!30220 () Bool)

(assert (=> b!910966 (= e!510891 (and e!510890 mapRes!30220))))

(declare-fun condMapEmpty!30220 () Bool)

(declare-datatypes ((V!30297 0))(
  ( (V!30298 (val!9550 Int)) )
))
(declare-datatypes ((ValueCell!9018 0))(
  ( (ValueCellFull!9018 (v!12059 V!30297)) (EmptyCell!9018) )
))
(declare-datatypes ((array!54008 0))(
  ( (array!54009 (arr!25956 (Array (_ BitVec 32) ValueCell!9018)) (size!26416 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54008)

(declare-fun mapDefault!30220 () ValueCell!9018)

(assert (=> b!910966 (= condMapEmpty!30220 (= (arr!25956 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9018)) mapDefault!30220)))))

(declare-fun b!910967 () Bool)

(declare-fun e!510889 () Bool)

(assert (=> b!910967 (= e!510889 tp_is_empty!18999)))

(declare-fun mapNonEmpty!30220 () Bool)

(declare-fun tp!58014 () Bool)

(assert (=> mapNonEmpty!30220 (= mapRes!30220 (and tp!58014 e!510889))))

(declare-fun mapValue!30220 () ValueCell!9018)

(declare-fun mapKey!30220 () (_ BitVec 32))

(declare-fun mapRest!30220 () (Array (_ BitVec 32) ValueCell!9018))

(assert (=> mapNonEmpty!30220 (= (arr!25956 _values!1152) (store mapRest!30220 mapKey!30220 mapValue!30220))))

(declare-fun b!910968 () Bool)

(declare-fun res!614762 () Bool)

(declare-fun e!510892 () Bool)

(assert (=> b!910968 (=> (not res!614762) (not e!510892))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54010 0))(
  ( (array!54011 (arr!25957 (Array (_ BitVec 32) (_ BitVec 64))) (size!26417 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54010)

(assert (=> b!910968 (= res!614762 (and (= (size!26416 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26417 _keys!1386) (size!26416 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30220 () Bool)

(assert (=> mapIsEmpty!30220 mapRes!30220))

(declare-fun b!910970 () Bool)

(assert (=> b!910970 (= e!510892 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30297)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!410299 () Bool)

(declare-fun minValue!1094 () V!30297)

(declare-datatypes ((tuple2!12488 0))(
  ( (tuple2!12489 (_1!6254 (_ BitVec 64)) (_2!6254 V!30297)) )
))
(declare-datatypes ((List!18336 0))(
  ( (Nil!18333) (Cons!18332 (h!19478 tuple2!12488) (t!25929 List!18336)) )
))
(declare-datatypes ((ListLongMap!11199 0))(
  ( (ListLongMap!11200 (toList!5615 List!18336)) )
))
(declare-fun contains!4624 (ListLongMap!11199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2845 (array!54010 array!54008 (_ BitVec 32) (_ BitVec 32) V!30297 V!30297 (_ BitVec 32) Int) ListLongMap!11199)

(assert (=> b!910970 (= lt!410299 (contains!4624 (getCurrentListMap!2845 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910971 () Bool)

(declare-fun res!614764 () Bool)

(assert (=> b!910971 (=> (not res!614764) (not e!510892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54010 (_ BitVec 32)) Bool)

(assert (=> b!910971 (= res!614764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910969 () Bool)

(declare-fun res!614761 () Bool)

(assert (=> b!910969 (=> (not res!614761) (not e!510892))))

(declare-datatypes ((List!18337 0))(
  ( (Nil!18334) (Cons!18333 (h!19479 (_ BitVec 64)) (t!25930 List!18337)) )
))
(declare-fun arrayNoDuplicates!0 (array!54010 (_ BitVec 32) List!18337) Bool)

(assert (=> b!910969 (= res!614761 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18334))))

(declare-fun res!614763 () Bool)

(assert (=> start!78082 (=> (not res!614763) (not e!510892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78082 (= res!614763 (validMask!0 mask!1756))))

(assert (=> start!78082 e!510892))

(declare-fun array_inv!20276 (array!54008) Bool)

(assert (=> start!78082 (and (array_inv!20276 _values!1152) e!510891)))

(assert (=> start!78082 tp!58015))

(assert (=> start!78082 true))

(assert (=> start!78082 tp_is_empty!18999))

(declare-fun array_inv!20277 (array!54010) Bool)

(assert (=> start!78082 (array_inv!20277 _keys!1386)))

(assert (= (and start!78082 res!614763) b!910968))

(assert (= (and b!910968 res!614762) b!910971))

(assert (= (and b!910971 res!614764) b!910969))

(assert (= (and b!910969 res!614761) b!910970))

(assert (= (and b!910966 condMapEmpty!30220) mapIsEmpty!30220))

(assert (= (and b!910966 (not condMapEmpty!30220)) mapNonEmpty!30220))

(get-info :version)

(assert (= (and mapNonEmpty!30220 ((_ is ValueCellFull!9018) mapValue!30220)) b!910967))

(assert (= (and b!910966 ((_ is ValueCellFull!9018) mapDefault!30220)) b!910965))

(assert (= start!78082 b!910966))

(declare-fun m!845909 () Bool)

(assert (=> start!78082 m!845909))

(declare-fun m!845911 () Bool)

(assert (=> start!78082 m!845911))

(declare-fun m!845913 () Bool)

(assert (=> start!78082 m!845913))

(declare-fun m!845915 () Bool)

(assert (=> b!910969 m!845915))

(declare-fun m!845917 () Bool)

(assert (=> b!910970 m!845917))

(assert (=> b!910970 m!845917))

(declare-fun m!845919 () Bool)

(assert (=> b!910970 m!845919))

(declare-fun m!845921 () Bool)

(assert (=> b!910971 m!845921))

(declare-fun m!845923 () Bool)

(assert (=> mapNonEmpty!30220 m!845923))

(check-sat (not mapNonEmpty!30220) (not b!910970) b_and!27171 (not b!910971) (not b!910969) (not b_next!16581) tp_is_empty!18999 (not start!78082))
(check-sat b_and!27171 (not b_next!16581))
