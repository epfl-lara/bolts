; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82430 () Bool)

(assert start!82430)

(declare-fun b_free!18669 () Bool)

(declare-fun b_next!18669 () Bool)

(assert (=> start!82430 (= b_free!18669 (not b_next!18669))))

(declare-fun tp!64978 () Bool)

(declare-fun b_and!30175 () Bool)

(assert (=> start!82430 (= tp!64978 b_and!30175)))

(declare-fun b!960718 () Bool)

(declare-fun res!643203 () Bool)

(declare-fun e!541583 () Bool)

(assert (=> b!960718 (=> (not res!643203) (not e!541583))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33491 0))(
  ( (V!33492 (val!10741 Int)) )
))
(declare-fun minValue!1328 () V!33491)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58859 0))(
  ( (array!58860 (arr!28299 (Array (_ BitVec 32) (_ BitVec 64))) (size!28779 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58859)

(declare-datatypes ((ValueCell!10209 0))(
  ( (ValueCellFull!10209 (v!13298 V!33491)) (EmptyCell!10209) )
))
(declare-datatypes ((array!58861 0))(
  ( (array!58862 (arr!28300 (Array (_ BitVec 32) ValueCell!10209)) (size!28780 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58861)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33491)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13940 0))(
  ( (tuple2!13941 (_1!6980 (_ BitVec 64)) (_2!6980 V!33491)) )
))
(declare-datatypes ((List!19797 0))(
  ( (Nil!19794) (Cons!19793 (h!20955 tuple2!13940) (t!28168 List!19797)) )
))
(declare-datatypes ((ListLongMap!12651 0))(
  ( (ListLongMap!12652 (toList!6341 List!19797)) )
))
(declare-fun contains!5391 (ListLongMap!12651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3526 (array!58859 array!58861 (_ BitVec 32) (_ BitVec 32) V!33491 V!33491 (_ BitVec 32) Int) ListLongMap!12651)

(assert (=> b!960718 (= res!643203 (contains!5391 (getCurrentListMap!3526 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28299 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!34051 () Bool)

(declare-fun mapRes!34051 () Bool)

(assert (=> mapIsEmpty!34051 mapRes!34051))

(declare-fun b!960719 () Bool)

(declare-fun res!643204 () Bool)

(assert (=> b!960719 (=> (not res!643204) (not e!541583))))

(assert (=> b!960719 (= res!643204 (and (= (size!28780 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28779 _keys!1668) (size!28780 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960720 () Bool)

(declare-fun e!541582 () Bool)

(declare-fun tp_is_empty!21381 () Bool)

(assert (=> b!960720 (= e!541582 tp_is_empty!21381)))

(declare-fun b!960721 () Bool)

(declare-fun res!643206 () Bool)

(assert (=> b!960721 (=> (not res!643206) (not e!541583))))

(assert (=> b!960721 (= res!643206 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28779 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28779 _keys!1668))))))

(declare-fun b!960722 () Bool)

(declare-fun e!541579 () Bool)

(assert (=> b!960722 (= e!541579 tp_is_empty!21381)))

(declare-fun b!960723 () Bool)

(declare-fun res!643207 () Bool)

(assert (=> b!960723 (=> (not res!643207) (not e!541583))))

(declare-datatypes ((List!19798 0))(
  ( (Nil!19795) (Cons!19794 (h!20956 (_ BitVec 64)) (t!28169 List!19798)) )
))
(declare-fun arrayNoDuplicates!0 (array!58859 (_ BitVec 32) List!19798) Bool)

(assert (=> b!960723 (= res!643207 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19795))))

(declare-fun b!960724 () Bool)

(declare-fun e!541580 () Bool)

(assert (=> b!960724 (= e!541580 (and e!541582 mapRes!34051))))

(declare-fun condMapEmpty!34051 () Bool)

(declare-fun mapDefault!34051 () ValueCell!10209)

(assert (=> b!960724 (= condMapEmpty!34051 (= (arr!28300 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10209)) mapDefault!34051)))))

(declare-fun res!643205 () Bool)

(assert (=> start!82430 (=> (not res!643205) (not e!541583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82430 (= res!643205 (validMask!0 mask!2088))))

(assert (=> start!82430 e!541583))

(assert (=> start!82430 true))

(assert (=> start!82430 tp_is_empty!21381))

(declare-fun array_inv!21863 (array!58859) Bool)

(assert (=> start!82430 (array_inv!21863 _keys!1668)))

(declare-fun array_inv!21864 (array!58861) Bool)

(assert (=> start!82430 (and (array_inv!21864 _values!1386) e!541580)))

(assert (=> start!82430 tp!64978))

(declare-fun b!960725 () Bool)

(declare-fun res!643209 () Bool)

(assert (=> b!960725 (=> (not res!643209) (not e!541583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58859 (_ BitVec 32)) Bool)

(assert (=> b!960725 (= res!643209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!34051 () Bool)

(declare-fun tp!64977 () Bool)

(assert (=> mapNonEmpty!34051 (= mapRes!34051 (and tp!64977 e!541579))))

(declare-fun mapValue!34051 () ValueCell!10209)

(declare-fun mapKey!34051 () (_ BitVec 32))

(declare-fun mapRest!34051 () (Array (_ BitVec 32) ValueCell!10209))

(assert (=> mapNonEmpty!34051 (= (arr!28300 _values!1386) (store mapRest!34051 mapKey!34051 mapValue!34051))))

(declare-fun b!960726 () Bool)

(declare-fun res!643208 () Bool)

(assert (=> b!960726 (=> (not res!643208) (not e!541583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960726 (= res!643208 (validKeyInArray!0 (select (arr!28299 _keys!1668) i!793)))))

(declare-fun b!960727 () Bool)

(assert (=> b!960727 (= e!541583 (not true))))

(assert (=> b!960727 (contains!5391 (getCurrentListMap!3526 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28299 _keys!1668) i!793))))

(declare-datatypes ((Unit!32175 0))(
  ( (Unit!32176) )
))
(declare-fun lt!430640 () Unit!32175)

(declare-fun lemmaInListMapFromThenInFromSmaller!17 (array!58859 array!58861 (_ BitVec 32) (_ BitVec 32) V!33491 V!33491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32175)

(assert (=> b!960727 (= lt!430640 (lemmaInListMapFromThenInFromSmaller!17 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(assert (= (and start!82430 res!643205) b!960719))

(assert (= (and b!960719 res!643204) b!960725))

(assert (= (and b!960725 res!643209) b!960723))

(assert (= (and b!960723 res!643207) b!960721))

(assert (= (and b!960721 res!643206) b!960726))

(assert (= (and b!960726 res!643208) b!960718))

(assert (= (and b!960718 res!643203) b!960727))

(assert (= (and b!960724 condMapEmpty!34051) mapIsEmpty!34051))

(assert (= (and b!960724 (not condMapEmpty!34051)) mapNonEmpty!34051))

(get-info :version)

(assert (= (and mapNonEmpty!34051 ((_ is ValueCellFull!10209) mapValue!34051)) b!960722))

(assert (= (and b!960724 ((_ is ValueCellFull!10209) mapDefault!34051)) b!960720))

(assert (= start!82430 b!960724))

(declare-fun m!890969 () Bool)

(assert (=> b!960725 m!890969))

(declare-fun m!890971 () Bool)

(assert (=> mapNonEmpty!34051 m!890971))

(declare-fun m!890973 () Bool)

(assert (=> b!960727 m!890973))

(declare-fun m!890975 () Bool)

(assert (=> b!960727 m!890975))

(assert (=> b!960727 m!890973))

(assert (=> b!960727 m!890975))

(declare-fun m!890977 () Bool)

(assert (=> b!960727 m!890977))

(declare-fun m!890979 () Bool)

(assert (=> b!960727 m!890979))

(declare-fun m!890981 () Bool)

(assert (=> b!960718 m!890981))

(assert (=> b!960718 m!890975))

(assert (=> b!960718 m!890981))

(assert (=> b!960718 m!890975))

(declare-fun m!890983 () Bool)

(assert (=> b!960718 m!890983))

(assert (=> b!960726 m!890975))

(assert (=> b!960726 m!890975))

(declare-fun m!890985 () Bool)

(assert (=> b!960726 m!890985))

(declare-fun m!890987 () Bool)

(assert (=> start!82430 m!890987))

(declare-fun m!890989 () Bool)

(assert (=> start!82430 m!890989))

(declare-fun m!890991 () Bool)

(assert (=> start!82430 m!890991))

(declare-fun m!890993 () Bool)

(assert (=> b!960723 m!890993))

(check-sat (not b!960723) (not b!960726) (not start!82430) (not b!960718) (not b!960727) (not b!960725) (not mapNonEmpty!34051) b_and!30175 tp_is_empty!21381 (not b_next!18669))
(check-sat b_and!30175 (not b_next!18669))
