; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82256 () Bool)

(assert start!82256)

(declare-fun b_free!18501 () Bool)

(declare-fun b_next!18501 () Bool)

(assert (=> start!82256 (= b_free!18501 (not b_next!18501))))

(declare-fun tp!64464 () Bool)

(declare-fun b_and!30007 () Bool)

(assert (=> start!82256 (= tp!64464 b_and!30007)))

(declare-fun mapNonEmpty!33790 () Bool)

(declare-fun mapRes!33790 () Bool)

(declare-fun tp!64465 () Bool)

(declare-fun e!540277 () Bool)

(assert (=> mapNonEmpty!33790 (= mapRes!33790 (and tp!64465 e!540277))))

(declare-datatypes ((V!33259 0))(
  ( (V!33260 (val!10654 Int)) )
))
(declare-datatypes ((ValueCell!10122 0))(
  ( (ValueCellFull!10122 (v!13211 V!33259)) (EmptyCell!10122) )
))
(declare-fun mapRest!33790 () (Array (_ BitVec 32) ValueCell!10122))

(declare-fun mapKey!33790 () (_ BitVec 32))

(declare-datatypes ((array!58531 0))(
  ( (array!58532 (arr!28135 (Array (_ BitVec 32) ValueCell!10122)) (size!28615 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58531)

(declare-fun mapValue!33790 () ValueCell!10122)

(assert (=> mapNonEmpty!33790 (= (arr!28135 _values!1386) (store mapRest!33790 mapKey!33790 mapValue!33790))))

(declare-fun b!958292 () Bool)

(declare-fun e!540275 () Bool)

(declare-fun tp_is_empty!21207 () Bool)

(assert (=> b!958292 (= e!540275 tp_is_empty!21207)))

(declare-fun b!958293 () Bool)

(declare-fun res!641562 () Bool)

(declare-fun e!540274 () Bool)

(assert (=> b!958293 (=> (not res!641562) (not e!540274))))

(declare-datatypes ((array!58533 0))(
  ( (array!58534 (arr!28136 (Array (_ BitVec 32) (_ BitVec 64))) (size!28616 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58533)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958293 (= res!641562 (validKeyInArray!0 (select (arr!28136 _keys!1668) i!793)))))

(declare-fun b!958295 () Bool)

(declare-fun res!641563 () Bool)

(assert (=> b!958295 (=> (not res!641563) (not e!540274))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958295 (= res!641563 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28616 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28616 _keys!1668))))))

(declare-fun b!958296 () Bool)

(declare-fun e!540276 () Bool)

(assert (=> b!958296 (= e!540276 (and e!540275 mapRes!33790))))

(declare-fun condMapEmpty!33790 () Bool)

(declare-fun mapDefault!33790 () ValueCell!10122)

(assert (=> b!958296 (= condMapEmpty!33790 (= (arr!28135 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10122)) mapDefault!33790)))))

(declare-fun b!958297 () Bool)

(declare-fun res!641561 () Bool)

(assert (=> b!958297 (=> (not res!641561) (not e!540274))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!958297 (= res!641561 (and (= (size!28615 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28616 _keys!1668) (size!28615 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!641560 () Bool)

(assert (=> start!82256 (=> (not res!641560) (not e!540274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82256 (= res!641560 (validMask!0 mask!2088))))

(assert (=> start!82256 e!540274))

(assert (=> start!82256 true))

(assert (=> start!82256 tp_is_empty!21207))

(declare-fun array_inv!21763 (array!58533) Bool)

(assert (=> start!82256 (array_inv!21763 _keys!1668)))

(declare-fun array_inv!21764 (array!58531) Bool)

(assert (=> start!82256 (and (array_inv!21764 _values!1386) e!540276)))

(assert (=> start!82256 tp!64464))

(declare-fun b!958294 () Bool)

(declare-fun res!641564 () Bool)

(assert (=> b!958294 (=> (not res!641564) (not e!540274))))

(declare-datatypes ((List!19691 0))(
  ( (Nil!19688) (Cons!19687 (h!20849 (_ BitVec 64)) (t!28062 List!19691)) )
))
(declare-fun arrayNoDuplicates!0 (array!58533 (_ BitVec 32) List!19691) Bool)

(assert (=> b!958294 (= res!641564 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19688))))

(declare-fun b!958298 () Bool)

(assert (=> b!958298 (= e!540274 false)))

(declare-fun lt!430388 () Bool)

(declare-fun minValue!1328 () V!33259)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33259)

(declare-datatypes ((tuple2!13826 0))(
  ( (tuple2!13827 (_1!6923 (_ BitVec 64)) (_2!6923 V!33259)) )
))
(declare-datatypes ((List!19692 0))(
  ( (Nil!19689) (Cons!19688 (h!20850 tuple2!13826) (t!28063 List!19692)) )
))
(declare-datatypes ((ListLongMap!12537 0))(
  ( (ListLongMap!12538 (toList!6284 List!19692)) )
))
(declare-fun contains!5337 (ListLongMap!12537 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3469 (array!58533 array!58531 (_ BitVec 32) (_ BitVec 32) V!33259 V!33259 (_ BitVec 32) Int) ListLongMap!12537)

(assert (=> b!958298 (= lt!430388 (contains!5337 (getCurrentListMap!3469 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28136 _keys!1668) i!793)))))

(declare-fun b!958299 () Bool)

(assert (=> b!958299 (= e!540277 tp_is_empty!21207)))

(declare-fun mapIsEmpty!33790 () Bool)

(assert (=> mapIsEmpty!33790 mapRes!33790))

(declare-fun b!958300 () Bool)

(declare-fun res!641565 () Bool)

(assert (=> b!958300 (=> (not res!641565) (not e!540274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58533 (_ BitVec 32)) Bool)

(assert (=> b!958300 (= res!641565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82256 res!641560) b!958297))

(assert (= (and b!958297 res!641561) b!958300))

(assert (= (and b!958300 res!641565) b!958294))

(assert (= (and b!958294 res!641564) b!958295))

(assert (= (and b!958295 res!641563) b!958293))

(assert (= (and b!958293 res!641562) b!958298))

(assert (= (and b!958296 condMapEmpty!33790) mapIsEmpty!33790))

(assert (= (and b!958296 (not condMapEmpty!33790)) mapNonEmpty!33790))

(get-info :version)

(assert (= (and mapNonEmpty!33790 ((_ is ValueCellFull!10122) mapValue!33790)) b!958299))

(assert (= (and b!958296 ((_ is ValueCellFull!10122) mapDefault!33790)) b!958292))

(assert (= start!82256 b!958296))

(declare-fun m!889073 () Bool)

(assert (=> b!958294 m!889073))

(declare-fun m!889075 () Bool)

(assert (=> b!958293 m!889075))

(assert (=> b!958293 m!889075))

(declare-fun m!889077 () Bool)

(assert (=> b!958293 m!889077))

(declare-fun m!889079 () Bool)

(assert (=> b!958298 m!889079))

(assert (=> b!958298 m!889075))

(assert (=> b!958298 m!889079))

(assert (=> b!958298 m!889075))

(declare-fun m!889081 () Bool)

(assert (=> b!958298 m!889081))

(declare-fun m!889083 () Bool)

(assert (=> b!958300 m!889083))

(declare-fun m!889085 () Bool)

(assert (=> start!82256 m!889085))

(declare-fun m!889087 () Bool)

(assert (=> start!82256 m!889087))

(declare-fun m!889089 () Bool)

(assert (=> start!82256 m!889089))

(declare-fun m!889091 () Bool)

(assert (=> mapNonEmpty!33790 m!889091))

(check-sat (not b_next!18501) b_and!30007 (not b!958298) (not mapNonEmpty!33790) tp_is_empty!21207 (not start!82256) (not b!958293) (not b!958300) (not b!958294))
(check-sat b_and!30007 (not b_next!18501))
