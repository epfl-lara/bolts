; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77958 () Bool)

(assert start!77958)

(declare-fun b_free!16473 () Bool)

(declare-fun b_next!16473 () Bool)

(assert (=> start!77958 (= b_free!16473 (not b_next!16473))))

(declare-fun tp!57687 () Bool)

(declare-fun b_and!27061 () Bool)

(assert (=> start!77958 (= tp!57687 b_and!27061)))

(declare-fun res!614051 () Bool)

(declare-fun e!510009 () Bool)

(assert (=> start!77958 (=> (not res!614051) (not e!510009))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77958 (= res!614051 (validMask!0 mask!1756))))

(assert (=> start!77958 e!510009))

(declare-datatypes ((V!30153 0))(
  ( (V!30154 (val!9496 Int)) )
))
(declare-datatypes ((ValueCell!8964 0))(
  ( (ValueCellFull!8964 (v!12004 V!30153)) (EmptyCell!8964) )
))
(declare-datatypes ((array!53800 0))(
  ( (array!53801 (arr!25853 (Array (_ BitVec 32) ValueCell!8964)) (size!26313 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53800)

(declare-fun e!510011 () Bool)

(declare-fun array_inv!20198 (array!53800) Bool)

(assert (=> start!77958 (and (array_inv!20198 _values!1152) e!510011)))

(assert (=> start!77958 tp!57687))

(assert (=> start!77958 true))

(declare-fun tp_is_empty!18891 () Bool)

(assert (=> start!77958 tp_is_empty!18891))

(declare-datatypes ((array!53802 0))(
  ( (array!53803 (arr!25854 (Array (_ BitVec 32) (_ BitVec 64))) (size!26314 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53802)

(declare-fun array_inv!20199 (array!53802) Bool)

(assert (=> start!77958 (array_inv!20199 _keys!1386)))

(declare-fun b!909704 () Bool)

(declare-fun res!614050 () Bool)

(assert (=> b!909704 (=> (not res!614050) (not e!510009))))

(declare-datatypes ((List!18261 0))(
  ( (Nil!18258) (Cons!18257 (h!19403 (_ BitVec 64)) (t!25852 List!18261)) )
))
(declare-fun arrayNoDuplicates!0 (array!53802 (_ BitVec 32) List!18261) Bool)

(assert (=> b!909704 (= res!614050 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18258))))

(declare-fun b!909705 () Bool)

(declare-fun e!510010 () Bool)

(assert (=> b!909705 (= e!510010 tp_is_empty!18891)))

(declare-fun b!909706 () Bool)

(assert (=> b!909706 (= e!510009 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30153)

(declare-fun lt!410059 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30153)

(declare-datatypes ((tuple2!12406 0))(
  ( (tuple2!12407 (_1!6213 (_ BitVec 64)) (_2!6213 V!30153)) )
))
(declare-datatypes ((List!18262 0))(
  ( (Nil!18259) (Cons!18258 (h!19404 tuple2!12406) (t!25853 List!18262)) )
))
(declare-datatypes ((ListLongMap!11117 0))(
  ( (ListLongMap!11118 (toList!5574 List!18262)) )
))
(declare-fun contains!4582 (ListLongMap!11117 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2804 (array!53802 array!53800 (_ BitVec 32) (_ BitVec 32) V!30153 V!30153 (_ BitVec 32) Int) ListLongMap!11117)

(assert (=> b!909706 (= lt!410059 (contains!4582 (getCurrentListMap!2804 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapIsEmpty!30055 () Bool)

(declare-fun mapRes!30055 () Bool)

(assert (=> mapIsEmpty!30055 mapRes!30055))

(declare-fun b!909707 () Bool)

(declare-fun res!614052 () Bool)

(assert (=> b!909707 (=> (not res!614052) (not e!510009))))

(assert (=> b!909707 (= res!614052 (and (= (size!26313 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26314 _keys!1386) (size!26313 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30055 () Bool)

(declare-fun tp!57688 () Bool)

(declare-fun e!510008 () Bool)

(assert (=> mapNonEmpty!30055 (= mapRes!30055 (and tp!57688 e!510008))))

(declare-fun mapKey!30055 () (_ BitVec 32))

(declare-fun mapValue!30055 () ValueCell!8964)

(declare-fun mapRest!30055 () (Array (_ BitVec 32) ValueCell!8964))

(assert (=> mapNonEmpty!30055 (= (arr!25853 _values!1152) (store mapRest!30055 mapKey!30055 mapValue!30055))))

(declare-fun b!909708 () Bool)

(assert (=> b!909708 (= e!510008 tp_is_empty!18891)))

(declare-fun b!909709 () Bool)

(assert (=> b!909709 (= e!510011 (and e!510010 mapRes!30055))))

(declare-fun condMapEmpty!30055 () Bool)

(declare-fun mapDefault!30055 () ValueCell!8964)

(assert (=> b!909709 (= condMapEmpty!30055 (= (arr!25853 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8964)) mapDefault!30055)))))

(declare-fun b!909710 () Bool)

(declare-fun res!614053 () Bool)

(assert (=> b!909710 (=> (not res!614053) (not e!510009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53802 (_ BitVec 32)) Bool)

(assert (=> b!909710 (= res!614053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77958 res!614051) b!909707))

(assert (= (and b!909707 res!614052) b!909710))

(assert (= (and b!909710 res!614053) b!909704))

(assert (= (and b!909704 res!614050) b!909706))

(assert (= (and b!909709 condMapEmpty!30055) mapIsEmpty!30055))

(assert (= (and b!909709 (not condMapEmpty!30055)) mapNonEmpty!30055))

(get-info :version)

(assert (= (and mapNonEmpty!30055 ((_ is ValueCellFull!8964) mapValue!30055)) b!909708))

(assert (= (and b!909709 ((_ is ValueCellFull!8964) mapDefault!30055)) b!909705))

(assert (= start!77958 b!909709))

(declare-fun m!844953 () Bool)

(assert (=> start!77958 m!844953))

(declare-fun m!844955 () Bool)

(assert (=> start!77958 m!844955))

(declare-fun m!844957 () Bool)

(assert (=> start!77958 m!844957))

(declare-fun m!844959 () Bool)

(assert (=> b!909706 m!844959))

(assert (=> b!909706 m!844959))

(declare-fun m!844961 () Bool)

(assert (=> b!909706 m!844961))

(declare-fun m!844963 () Bool)

(assert (=> mapNonEmpty!30055 m!844963))

(declare-fun m!844965 () Bool)

(assert (=> b!909704 m!844965))

(declare-fun m!844967 () Bool)

(assert (=> b!909710 m!844967))

(check-sat tp_is_empty!18891 (not b!909710) (not b!909704) b_and!27061 (not b!909706) (not mapNonEmpty!30055) (not b_next!16473) (not start!77958))
(check-sat b_and!27061 (not b_next!16473))
