; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82400 () Bool)

(assert start!82400)

(declare-fun b_free!18639 () Bool)

(declare-fun b_next!18639 () Bool)

(assert (=> start!82400 (= b_free!18639 (not b_next!18639))))

(declare-fun tp!64888 () Bool)

(declare-fun b_and!30145 () Bool)

(assert (=> start!82400 (= tp!64888 b_and!30145)))

(declare-fun b!960299 () Bool)

(declare-fun e!541358 () Bool)

(declare-fun e!541357 () Bool)

(declare-fun mapRes!34006 () Bool)

(assert (=> b!960299 (= e!541358 (and e!541357 mapRes!34006))))

(declare-fun condMapEmpty!34006 () Bool)

(declare-datatypes ((V!33451 0))(
  ( (V!33452 (val!10726 Int)) )
))
(declare-datatypes ((ValueCell!10194 0))(
  ( (ValueCellFull!10194 (v!13283 V!33451)) (EmptyCell!10194) )
))
(declare-datatypes ((array!58803 0))(
  ( (array!58804 (arr!28271 (Array (_ BitVec 32) ValueCell!10194)) (size!28751 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58803)

(declare-fun mapDefault!34006 () ValueCell!10194)

(assert (=> b!960299 (= condMapEmpty!34006 (= (arr!28271 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10194)) mapDefault!34006)))))

(declare-fun b!960300 () Bool)

(declare-fun res!642919 () Bool)

(declare-fun e!541354 () Bool)

(assert (=> b!960300 (=> (not res!642919) (not e!541354))))

(declare-datatypes ((array!58805 0))(
  ( (array!58806 (arr!28272 (Array (_ BitVec 32) (_ BitVec 64))) (size!28752 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58805)

(declare-datatypes ((List!19779 0))(
  ( (Nil!19776) (Cons!19775 (h!20937 (_ BitVec 64)) (t!28150 List!19779)) )
))
(declare-fun arrayNoDuplicates!0 (array!58805 (_ BitVec 32) List!19779) Bool)

(assert (=> b!960300 (= res!642919 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19776))))

(declare-fun b!960302 () Bool)

(declare-fun e!541355 () Bool)

(declare-fun tp_is_empty!21351 () Bool)

(assert (=> b!960302 (= e!541355 tp_is_empty!21351)))

(declare-fun b!960303 () Bool)

(declare-fun res!642923 () Bool)

(assert (=> b!960303 (=> (not res!642923) (not e!541354))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960303 (= res!642923 (validKeyInArray!0 (select (arr!28272 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!34006 () Bool)

(assert (=> mapIsEmpty!34006 mapRes!34006))

(declare-fun b!960304 () Bool)

(assert (=> b!960304 (= e!541357 tp_is_empty!21351)))

(declare-fun b!960305 () Bool)

(declare-fun res!642924 () Bool)

(assert (=> b!960305 (=> (not res!642924) (not e!541354))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960305 (= res!642924 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28752 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28752 _keys!1668))))))

(declare-fun b!960306 () Bool)

(declare-fun res!642920 () Bool)

(assert (=> b!960306 (=> (not res!642920) (not e!541354))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960306 (= res!642920 (and (= (size!28751 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28752 _keys!1668) (size!28751 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34006 () Bool)

(declare-fun tp!64887 () Bool)

(assert (=> mapNonEmpty!34006 (= mapRes!34006 (and tp!64887 e!541355))))

(declare-fun mapValue!34006 () ValueCell!10194)

(declare-fun mapKey!34006 () (_ BitVec 32))

(declare-fun mapRest!34006 () (Array (_ BitVec 32) ValueCell!10194))

(assert (=> mapNonEmpty!34006 (= (arr!28271 _values!1386) (store mapRest!34006 mapKey!34006 mapValue!34006))))

(declare-fun b!960307 () Bool)

(assert (=> b!960307 (= e!541354 false)))

(declare-fun minValue!1328 () V!33451)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33451)

(declare-fun lt!430595 () Bool)

(declare-datatypes ((tuple2!13916 0))(
  ( (tuple2!13917 (_1!6968 (_ BitVec 64)) (_2!6968 V!33451)) )
))
(declare-datatypes ((List!19780 0))(
  ( (Nil!19777) (Cons!19776 (h!20938 tuple2!13916) (t!28151 List!19780)) )
))
(declare-datatypes ((ListLongMap!12627 0))(
  ( (ListLongMap!12628 (toList!6329 List!19780)) )
))
(declare-fun contains!5379 (ListLongMap!12627 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3514 (array!58805 array!58803 (_ BitVec 32) (_ BitVec 32) V!33451 V!33451 (_ BitVec 32) Int) ListLongMap!12627)

(assert (=> b!960307 (= lt!430595 (contains!5379 (getCurrentListMap!3514 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28272 _keys!1668) i!793)))))

(declare-fun res!642922 () Bool)

(assert (=> start!82400 (=> (not res!642922) (not e!541354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82400 (= res!642922 (validMask!0 mask!2088))))

(assert (=> start!82400 e!541354))

(assert (=> start!82400 true))

(assert (=> start!82400 tp_is_empty!21351))

(declare-fun array_inv!21847 (array!58805) Bool)

(assert (=> start!82400 (array_inv!21847 _keys!1668)))

(declare-fun array_inv!21848 (array!58803) Bool)

(assert (=> start!82400 (and (array_inv!21848 _values!1386) e!541358)))

(assert (=> start!82400 tp!64888))

(declare-fun b!960301 () Bool)

(declare-fun res!642921 () Bool)

(assert (=> b!960301 (=> (not res!642921) (not e!541354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58805 (_ BitVec 32)) Bool)

(assert (=> b!960301 (= res!642921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82400 res!642922) b!960306))

(assert (= (and b!960306 res!642920) b!960301))

(assert (= (and b!960301 res!642921) b!960300))

(assert (= (and b!960300 res!642919) b!960305))

(assert (= (and b!960305 res!642924) b!960303))

(assert (= (and b!960303 res!642923) b!960307))

(assert (= (and b!960299 condMapEmpty!34006) mapIsEmpty!34006))

(assert (= (and b!960299 (not condMapEmpty!34006)) mapNonEmpty!34006))

(get-info :version)

(assert (= (and mapNonEmpty!34006 ((_ is ValueCellFull!10194) mapValue!34006)) b!960302))

(assert (= (and b!960299 ((_ is ValueCellFull!10194) mapDefault!34006)) b!960304))

(assert (= start!82400 b!960299))

(declare-fun m!890645 () Bool)

(assert (=> b!960301 m!890645))

(declare-fun m!890647 () Bool)

(assert (=> b!960300 m!890647))

(declare-fun m!890649 () Bool)

(assert (=> start!82400 m!890649))

(declare-fun m!890651 () Bool)

(assert (=> start!82400 m!890651))

(declare-fun m!890653 () Bool)

(assert (=> start!82400 m!890653))

(declare-fun m!890655 () Bool)

(assert (=> b!960303 m!890655))

(assert (=> b!960303 m!890655))

(declare-fun m!890657 () Bool)

(assert (=> b!960303 m!890657))

(declare-fun m!890659 () Bool)

(assert (=> mapNonEmpty!34006 m!890659))

(declare-fun m!890661 () Bool)

(assert (=> b!960307 m!890661))

(assert (=> b!960307 m!890655))

(assert (=> b!960307 m!890661))

(assert (=> b!960307 m!890655))

(declare-fun m!890663 () Bool)

(assert (=> b!960307 m!890663))

(check-sat (not b!960307) (not b!960301) (not start!82400) (not b_next!18639) (not b!960303) (not b!960300) b_and!30145 tp_is_empty!21351 (not mapNonEmpty!34006))
(check-sat b_and!30145 (not b_next!18639))
