; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82226 () Bool)

(assert start!82226)

(declare-fun b_free!18471 () Bool)

(declare-fun b_next!18471 () Bool)

(assert (=> start!82226 (= b_free!18471 (not b_next!18471))))

(declare-fun tp!64374 () Bool)

(declare-fun b_and!29977 () Bool)

(assert (=> start!82226 (= tp!64374 b_and!29977)))

(declare-fun b!957887 () Bool)

(declare-fun res!641293 () Bool)

(declare-fun e!540049 () Bool)

(assert (=> b!957887 (=> (not res!641293) (not e!540049))))

(declare-datatypes ((array!58471 0))(
  ( (array!58472 (arr!28105 (Array (_ BitVec 32) (_ BitVec 64))) (size!28585 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58471)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!957887 (= res!641293 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28585 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28585 _keys!1668))))))

(declare-fun b!957888 () Bool)

(declare-fun e!540052 () Bool)

(declare-fun e!540051 () Bool)

(declare-fun mapRes!33745 () Bool)

(assert (=> b!957888 (= e!540052 (and e!540051 mapRes!33745))))

(declare-fun condMapEmpty!33745 () Bool)

(declare-datatypes ((V!33219 0))(
  ( (V!33220 (val!10639 Int)) )
))
(declare-datatypes ((ValueCell!10107 0))(
  ( (ValueCellFull!10107 (v!13196 V!33219)) (EmptyCell!10107) )
))
(declare-datatypes ((array!58473 0))(
  ( (array!58474 (arr!28106 (Array (_ BitVec 32) ValueCell!10107)) (size!28586 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58473)

(declare-fun mapDefault!33745 () ValueCell!10107)

(assert (=> b!957888 (= condMapEmpty!33745 (= (arr!28106 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10107)) mapDefault!33745)))))

(declare-fun b!957889 () Bool)

(declare-fun res!641292 () Bool)

(assert (=> b!957889 (=> (not res!641292) (not e!540049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957889 (= res!641292 (validKeyInArray!0 (select (arr!28105 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33745 () Bool)

(assert (=> mapIsEmpty!33745 mapRes!33745))

(declare-fun b!957891 () Bool)

(declare-fun tp_is_empty!21177 () Bool)

(assert (=> b!957891 (= e!540051 tp_is_empty!21177)))

(declare-fun b!957892 () Bool)

(assert (=> b!957892 (= e!540049 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33219)

(declare-fun lt!430343 () Bool)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33219)

(declare-datatypes ((tuple2!13800 0))(
  ( (tuple2!13801 (_1!6910 (_ BitVec 64)) (_2!6910 V!33219)) )
))
(declare-datatypes ((List!19668 0))(
  ( (Nil!19665) (Cons!19664 (h!20826 tuple2!13800) (t!28039 List!19668)) )
))
(declare-datatypes ((ListLongMap!12511 0))(
  ( (ListLongMap!12512 (toList!6271 List!19668)) )
))
(declare-fun contains!5324 (ListLongMap!12511 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3456 (array!58471 array!58473 (_ BitVec 32) (_ BitVec 32) V!33219 V!33219 (_ BitVec 32) Int) ListLongMap!12511)

(assert (=> b!957892 (= lt!430343 (contains!5324 (getCurrentListMap!3456 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28105 _keys!1668) i!793)))))

(declare-fun b!957893 () Bool)

(declare-fun res!641294 () Bool)

(assert (=> b!957893 (=> (not res!641294) (not e!540049))))

(declare-datatypes ((List!19669 0))(
  ( (Nil!19666) (Cons!19665 (h!20827 (_ BitVec 64)) (t!28040 List!19669)) )
))
(declare-fun arrayNoDuplicates!0 (array!58471 (_ BitVec 32) List!19669) Bool)

(assert (=> b!957893 (= res!641294 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19666))))

(declare-fun b!957894 () Bool)

(declare-fun e!540053 () Bool)

(assert (=> b!957894 (= e!540053 tp_is_empty!21177)))

(declare-fun res!641291 () Bool)

(assert (=> start!82226 (=> (not res!641291) (not e!540049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82226 (= res!641291 (validMask!0 mask!2088))))

(assert (=> start!82226 e!540049))

(assert (=> start!82226 true))

(assert (=> start!82226 tp_is_empty!21177))

(declare-fun array_inv!21743 (array!58471) Bool)

(assert (=> start!82226 (array_inv!21743 _keys!1668)))

(declare-fun array_inv!21744 (array!58473) Bool)

(assert (=> start!82226 (and (array_inv!21744 _values!1386) e!540052)))

(assert (=> start!82226 tp!64374))

(declare-fun b!957890 () Bool)

(declare-fun res!641295 () Bool)

(assert (=> b!957890 (=> (not res!641295) (not e!540049))))

(assert (=> b!957890 (= res!641295 (and (= (size!28586 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28585 _keys!1668) (size!28586 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33745 () Bool)

(declare-fun tp!64375 () Bool)

(assert (=> mapNonEmpty!33745 (= mapRes!33745 (and tp!64375 e!540053))))

(declare-fun mapRest!33745 () (Array (_ BitVec 32) ValueCell!10107))

(declare-fun mapValue!33745 () ValueCell!10107)

(declare-fun mapKey!33745 () (_ BitVec 32))

(assert (=> mapNonEmpty!33745 (= (arr!28106 _values!1386) (store mapRest!33745 mapKey!33745 mapValue!33745))))

(declare-fun b!957895 () Bool)

(declare-fun res!641290 () Bool)

(assert (=> b!957895 (=> (not res!641290) (not e!540049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58471 (_ BitVec 32)) Bool)

(assert (=> b!957895 (= res!641290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82226 res!641291) b!957890))

(assert (= (and b!957890 res!641295) b!957895))

(assert (= (and b!957895 res!641290) b!957893))

(assert (= (and b!957893 res!641294) b!957887))

(assert (= (and b!957887 res!641293) b!957889))

(assert (= (and b!957889 res!641292) b!957892))

(assert (= (and b!957888 condMapEmpty!33745) mapIsEmpty!33745))

(assert (= (and b!957888 (not condMapEmpty!33745)) mapNonEmpty!33745))

(get-info :version)

(assert (= (and mapNonEmpty!33745 ((_ is ValueCellFull!10107) mapValue!33745)) b!957894))

(assert (= (and b!957888 ((_ is ValueCellFull!10107) mapDefault!33745)) b!957891))

(assert (= start!82226 b!957888))

(declare-fun m!888773 () Bool)

(assert (=> b!957892 m!888773))

(declare-fun m!888775 () Bool)

(assert (=> b!957892 m!888775))

(assert (=> b!957892 m!888773))

(assert (=> b!957892 m!888775))

(declare-fun m!888777 () Bool)

(assert (=> b!957892 m!888777))

(assert (=> b!957889 m!888775))

(assert (=> b!957889 m!888775))

(declare-fun m!888779 () Bool)

(assert (=> b!957889 m!888779))

(declare-fun m!888781 () Bool)

(assert (=> mapNonEmpty!33745 m!888781))

(declare-fun m!888783 () Bool)

(assert (=> start!82226 m!888783))

(declare-fun m!888785 () Bool)

(assert (=> start!82226 m!888785))

(declare-fun m!888787 () Bool)

(assert (=> start!82226 m!888787))

(declare-fun m!888789 () Bool)

(assert (=> b!957893 m!888789))

(declare-fun m!888791 () Bool)

(assert (=> b!957895 m!888791))

(check-sat (not b!957889) b_and!29977 (not start!82226) tp_is_empty!21177 (not b!957892) (not b!957895) (not b!957893) (not mapNonEmpty!33745) (not b_next!18471))
(check-sat b_and!29977 (not b_next!18471))
