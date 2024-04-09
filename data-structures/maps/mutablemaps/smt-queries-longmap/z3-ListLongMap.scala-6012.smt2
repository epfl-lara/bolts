; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77970 () Bool)

(assert start!77970)

(declare-fun b_free!16485 () Bool)

(declare-fun b_next!16485 () Bool)

(assert (=> start!77970 (= b_free!16485 (not b_next!16485))))

(declare-fun tp!57724 () Bool)

(declare-fun b_and!27073 () Bool)

(assert (=> start!77970 (= tp!57724 b_and!27073)))

(declare-fun b!909830 () Bool)

(declare-fun e!510098 () Bool)

(assert (=> b!909830 (= e!510098 false)))

(declare-datatypes ((V!30169 0))(
  ( (V!30170 (val!9502 Int)) )
))
(declare-datatypes ((ValueCell!8970 0))(
  ( (ValueCellFull!8970 (v!12010 V!30169)) (EmptyCell!8970) )
))
(declare-datatypes ((array!53824 0))(
  ( (array!53825 (arr!25865 (Array (_ BitVec 32) ValueCell!8970)) (size!26325 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53824)

(declare-fun lt!410077 () Bool)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30169)

(declare-datatypes ((array!53826 0))(
  ( (array!53827 (arr!25866 (Array (_ BitVec 32) (_ BitVec 64))) (size!26326 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53826)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30169)

(declare-datatypes ((tuple2!12418 0))(
  ( (tuple2!12419 (_1!6219 (_ BitVec 64)) (_2!6219 V!30169)) )
))
(declare-datatypes ((List!18270 0))(
  ( (Nil!18267) (Cons!18266 (h!19412 tuple2!12418) (t!25861 List!18270)) )
))
(declare-datatypes ((ListLongMap!11129 0))(
  ( (ListLongMap!11130 (toList!5580 List!18270)) )
))
(declare-fun contains!4588 (ListLongMap!11129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2810 (array!53826 array!53824 (_ BitVec 32) (_ BitVec 32) V!30169 V!30169 (_ BitVec 32) Int) ListLongMap!11129)

(assert (=> b!909830 (= lt!410077 (contains!4588 (getCurrentListMap!2810 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909831 () Bool)

(declare-fun res!614124 () Bool)

(assert (=> b!909831 (=> (not res!614124) (not e!510098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53826 (_ BitVec 32)) Bool)

(assert (=> b!909831 (= res!614124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909832 () Bool)

(declare-fun e!510101 () Bool)

(declare-fun e!510099 () Bool)

(declare-fun mapRes!30073 () Bool)

(assert (=> b!909832 (= e!510101 (and e!510099 mapRes!30073))))

(declare-fun condMapEmpty!30073 () Bool)

(declare-fun mapDefault!30073 () ValueCell!8970)

(assert (=> b!909832 (= condMapEmpty!30073 (= (arr!25865 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8970)) mapDefault!30073)))))

(declare-fun res!614122 () Bool)

(assert (=> start!77970 (=> (not res!614122) (not e!510098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77970 (= res!614122 (validMask!0 mask!1756))))

(assert (=> start!77970 e!510098))

(declare-fun array_inv!20208 (array!53824) Bool)

(assert (=> start!77970 (and (array_inv!20208 _values!1152) e!510101)))

(assert (=> start!77970 tp!57724))

(assert (=> start!77970 true))

(declare-fun tp_is_empty!18903 () Bool)

(assert (=> start!77970 tp_is_empty!18903))

(declare-fun array_inv!20209 (array!53826) Bool)

(assert (=> start!77970 (array_inv!20209 _keys!1386)))

(declare-fun b!909833 () Bool)

(assert (=> b!909833 (= e!510099 tp_is_empty!18903)))

(declare-fun b!909834 () Bool)

(declare-fun res!614123 () Bool)

(assert (=> b!909834 (=> (not res!614123) (not e!510098))))

(declare-datatypes ((List!18271 0))(
  ( (Nil!18268) (Cons!18267 (h!19413 (_ BitVec 64)) (t!25862 List!18271)) )
))
(declare-fun arrayNoDuplicates!0 (array!53826 (_ BitVec 32) List!18271) Bool)

(assert (=> b!909834 (= res!614123 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18268))))

(declare-fun mapNonEmpty!30073 () Bool)

(declare-fun tp!57723 () Bool)

(declare-fun e!510100 () Bool)

(assert (=> mapNonEmpty!30073 (= mapRes!30073 (and tp!57723 e!510100))))

(declare-fun mapKey!30073 () (_ BitVec 32))

(declare-fun mapRest!30073 () (Array (_ BitVec 32) ValueCell!8970))

(declare-fun mapValue!30073 () ValueCell!8970)

(assert (=> mapNonEmpty!30073 (= (arr!25865 _values!1152) (store mapRest!30073 mapKey!30073 mapValue!30073))))

(declare-fun b!909835 () Bool)

(assert (=> b!909835 (= e!510100 tp_is_empty!18903)))

(declare-fun b!909836 () Bool)

(declare-fun res!614125 () Bool)

(assert (=> b!909836 (=> (not res!614125) (not e!510098))))

(assert (=> b!909836 (= res!614125 (and (= (size!26325 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26326 _keys!1386) (size!26325 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30073 () Bool)

(assert (=> mapIsEmpty!30073 mapRes!30073))

(assert (= (and start!77970 res!614122) b!909836))

(assert (= (and b!909836 res!614125) b!909831))

(assert (= (and b!909831 res!614124) b!909834))

(assert (= (and b!909834 res!614123) b!909830))

(assert (= (and b!909832 condMapEmpty!30073) mapIsEmpty!30073))

(assert (= (and b!909832 (not condMapEmpty!30073)) mapNonEmpty!30073))

(get-info :version)

(assert (= (and mapNonEmpty!30073 ((_ is ValueCellFull!8970) mapValue!30073)) b!909835))

(assert (= (and b!909832 ((_ is ValueCellFull!8970) mapDefault!30073)) b!909833))

(assert (= start!77970 b!909832))

(declare-fun m!845049 () Bool)

(assert (=> b!909834 m!845049))

(declare-fun m!845051 () Bool)

(assert (=> b!909831 m!845051))

(declare-fun m!845053 () Bool)

(assert (=> mapNonEmpty!30073 m!845053))

(declare-fun m!845055 () Bool)

(assert (=> b!909830 m!845055))

(assert (=> b!909830 m!845055))

(declare-fun m!845057 () Bool)

(assert (=> b!909830 m!845057))

(declare-fun m!845059 () Bool)

(assert (=> start!77970 m!845059))

(declare-fun m!845061 () Bool)

(assert (=> start!77970 m!845061))

(declare-fun m!845063 () Bool)

(assert (=> start!77970 m!845063))

(check-sat b_and!27073 (not b_next!16485) tp_is_empty!18903 (not b!909831) (not mapNonEmpty!30073) (not start!77970) (not b!909834) (not b!909830))
(check-sat b_and!27073 (not b_next!16485))
