; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82274 () Bool)

(assert start!82274)

(declare-fun b_free!18519 () Bool)

(declare-fun b_next!18519 () Bool)

(assert (=> start!82274 (= b_free!18519 (not b_next!18519))))

(declare-fun tp!64518 () Bool)

(declare-fun b_and!30025 () Bool)

(assert (=> start!82274 (= tp!64518 b_and!30025)))

(declare-fun b!958535 () Bool)

(declare-fun e!540410 () Bool)

(declare-fun tp_is_empty!21225 () Bool)

(assert (=> b!958535 (= e!540410 tp_is_empty!21225)))

(declare-fun b!958536 () Bool)

(declare-fun e!540413 () Bool)

(assert (=> b!958536 (= e!540413 false)))

(declare-fun lt!430415 () Bool)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33283 0))(
  ( (V!33284 (val!10663 Int)) )
))
(declare-fun minValue!1328 () V!33283)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58565 0))(
  ( (array!58566 (arr!28152 (Array (_ BitVec 32) (_ BitVec 64))) (size!28632 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58565)

(declare-datatypes ((ValueCell!10131 0))(
  ( (ValueCellFull!10131 (v!13220 V!33283)) (EmptyCell!10131) )
))
(declare-datatypes ((array!58567 0))(
  ( (array!58568 (arr!28153 (Array (_ BitVec 32) ValueCell!10131)) (size!28633 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58567)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33283)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13840 0))(
  ( (tuple2!13841 (_1!6930 (_ BitVec 64)) (_2!6930 V!33283)) )
))
(declare-datatypes ((List!19705 0))(
  ( (Nil!19702) (Cons!19701 (h!20863 tuple2!13840) (t!28076 List!19705)) )
))
(declare-datatypes ((ListLongMap!12551 0))(
  ( (ListLongMap!12552 (toList!6291 List!19705)) )
))
(declare-fun contains!5344 (ListLongMap!12551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3476 (array!58565 array!58567 (_ BitVec 32) (_ BitVec 32) V!33283 V!33283 (_ BitVec 32) Int) ListLongMap!12551)

(assert (=> b!958536 (= lt!430415 (contains!5344 (getCurrentListMap!3476 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28152 _keys!1668) i!793)))))

(declare-fun b!958537 () Bool)

(declare-fun res!641725 () Bool)

(assert (=> b!958537 (=> (not res!641725) (not e!540413))))

(declare-datatypes ((List!19706 0))(
  ( (Nil!19703) (Cons!19702 (h!20864 (_ BitVec 64)) (t!28077 List!19706)) )
))
(declare-fun arrayNoDuplicates!0 (array!58565 (_ BitVec 32) List!19706) Bool)

(assert (=> b!958537 (= res!641725 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19703))))

(declare-fun b!958538 () Bool)

(declare-fun res!641727 () Bool)

(assert (=> b!958538 (=> (not res!641727) (not e!540413))))

(assert (=> b!958538 (= res!641727 (and (= (size!28633 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28632 _keys!1668) (size!28633 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33817 () Bool)

(declare-fun mapRes!33817 () Bool)

(assert (=> mapIsEmpty!33817 mapRes!33817))

(declare-fun b!958540 () Bool)

(declare-fun e!540409 () Bool)

(assert (=> b!958540 (= e!540409 tp_is_empty!21225)))

(declare-fun b!958541 () Bool)

(declare-fun res!641723 () Bool)

(assert (=> b!958541 (=> (not res!641723) (not e!540413))))

(assert (=> b!958541 (= res!641723 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28632 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28632 _keys!1668))))))

(declare-fun b!958542 () Bool)

(declare-fun e!540412 () Bool)

(assert (=> b!958542 (= e!540412 (and e!540410 mapRes!33817))))

(declare-fun condMapEmpty!33817 () Bool)

(declare-fun mapDefault!33817 () ValueCell!10131)

(assert (=> b!958542 (= condMapEmpty!33817 (= (arr!28153 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10131)) mapDefault!33817)))))

(declare-fun mapNonEmpty!33817 () Bool)

(declare-fun tp!64519 () Bool)

(assert (=> mapNonEmpty!33817 (= mapRes!33817 (and tp!64519 e!540409))))

(declare-fun mapRest!33817 () (Array (_ BitVec 32) ValueCell!10131))

(declare-fun mapValue!33817 () ValueCell!10131)

(declare-fun mapKey!33817 () (_ BitVec 32))

(assert (=> mapNonEmpty!33817 (= (arr!28153 _values!1386) (store mapRest!33817 mapKey!33817 mapValue!33817))))

(declare-fun b!958543 () Bool)

(declare-fun res!641722 () Bool)

(assert (=> b!958543 (=> (not res!641722) (not e!540413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958543 (= res!641722 (validKeyInArray!0 (select (arr!28152 _keys!1668) i!793)))))

(declare-fun res!641724 () Bool)

(assert (=> start!82274 (=> (not res!641724) (not e!540413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82274 (= res!641724 (validMask!0 mask!2088))))

(assert (=> start!82274 e!540413))

(assert (=> start!82274 true))

(assert (=> start!82274 tp_is_empty!21225))

(declare-fun array_inv!21775 (array!58565) Bool)

(assert (=> start!82274 (array_inv!21775 _keys!1668)))

(declare-fun array_inv!21776 (array!58567) Bool)

(assert (=> start!82274 (and (array_inv!21776 _values!1386) e!540412)))

(assert (=> start!82274 tp!64518))

(declare-fun b!958539 () Bool)

(declare-fun res!641726 () Bool)

(assert (=> b!958539 (=> (not res!641726) (not e!540413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58565 (_ BitVec 32)) Bool)

(assert (=> b!958539 (= res!641726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82274 res!641724) b!958538))

(assert (= (and b!958538 res!641727) b!958539))

(assert (= (and b!958539 res!641726) b!958537))

(assert (= (and b!958537 res!641725) b!958541))

(assert (= (and b!958541 res!641723) b!958543))

(assert (= (and b!958543 res!641722) b!958536))

(assert (= (and b!958542 condMapEmpty!33817) mapIsEmpty!33817))

(assert (= (and b!958542 (not condMapEmpty!33817)) mapNonEmpty!33817))

(get-info :version)

(assert (= (and mapNonEmpty!33817 ((_ is ValueCellFull!10131) mapValue!33817)) b!958540))

(assert (= (and b!958542 ((_ is ValueCellFull!10131) mapDefault!33817)) b!958535))

(assert (= start!82274 b!958542))

(declare-fun m!889253 () Bool)

(assert (=> mapNonEmpty!33817 m!889253))

(declare-fun m!889255 () Bool)

(assert (=> start!82274 m!889255))

(declare-fun m!889257 () Bool)

(assert (=> start!82274 m!889257))

(declare-fun m!889259 () Bool)

(assert (=> start!82274 m!889259))

(declare-fun m!889261 () Bool)

(assert (=> b!958537 m!889261))

(declare-fun m!889263 () Bool)

(assert (=> b!958539 m!889263))

(declare-fun m!889265 () Bool)

(assert (=> b!958543 m!889265))

(assert (=> b!958543 m!889265))

(declare-fun m!889267 () Bool)

(assert (=> b!958543 m!889267))

(declare-fun m!889269 () Bool)

(assert (=> b!958536 m!889269))

(assert (=> b!958536 m!889265))

(assert (=> b!958536 m!889269))

(assert (=> b!958536 m!889265))

(declare-fun m!889271 () Bool)

(assert (=> b!958536 m!889271))

(check-sat (not b!958543) (not b_next!18519) (not mapNonEmpty!33817) (not start!82274) (not b!958539) tp_is_empty!21225 b_and!30025 (not b!958536) (not b!958537))
(check-sat b_and!30025 (not b_next!18519))
