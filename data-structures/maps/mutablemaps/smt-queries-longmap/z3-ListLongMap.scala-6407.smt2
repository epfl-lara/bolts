; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82268 () Bool)

(assert start!82268)

(declare-fun b_free!18513 () Bool)

(declare-fun b_next!18513 () Bool)

(assert (=> start!82268 (= b_free!18513 (not b_next!18513))))

(declare-fun tp!64501 () Bool)

(declare-fun b_and!30019 () Bool)

(assert (=> start!82268 (= tp!64501 b_and!30019)))

(declare-fun mapIsEmpty!33808 () Bool)

(declare-fun mapRes!33808 () Bool)

(assert (=> mapIsEmpty!33808 mapRes!33808))

(declare-fun mapNonEmpty!33808 () Bool)

(declare-fun tp!64500 () Bool)

(declare-fun e!540366 () Bool)

(assert (=> mapNonEmpty!33808 (= mapRes!33808 (and tp!64500 e!540366))))

(declare-datatypes ((V!33275 0))(
  ( (V!33276 (val!10660 Int)) )
))
(declare-datatypes ((ValueCell!10128 0))(
  ( (ValueCellFull!10128 (v!13217 V!33275)) (EmptyCell!10128) )
))
(declare-fun mapRest!33808 () (Array (_ BitVec 32) ValueCell!10128))

(declare-fun mapKey!33808 () (_ BitVec 32))

(declare-fun mapValue!33808 () ValueCell!10128)

(declare-datatypes ((array!58553 0))(
  ( (array!58554 (arr!28146 (Array (_ BitVec 32) ValueCell!10128)) (size!28626 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58553)

(assert (=> mapNonEmpty!33808 (= (arr!28146 _values!1386) (store mapRest!33808 mapKey!33808 mapValue!33808))))

(declare-fun res!641670 () Bool)

(declare-fun e!540368 () Bool)

(assert (=> start!82268 (=> (not res!641670) (not e!540368))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82268 (= res!641670 (validMask!0 mask!2088))))

(assert (=> start!82268 e!540368))

(assert (=> start!82268 true))

(declare-fun tp_is_empty!21219 () Bool)

(assert (=> start!82268 tp_is_empty!21219))

(declare-datatypes ((array!58555 0))(
  ( (array!58556 (arr!28147 (Array (_ BitVec 32) (_ BitVec 64))) (size!28627 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58555)

(declare-fun array_inv!21771 (array!58555) Bool)

(assert (=> start!82268 (array_inv!21771 _keys!1668)))

(declare-fun e!540365 () Bool)

(declare-fun array_inv!21772 (array!58553) Bool)

(assert (=> start!82268 (and (array_inv!21772 _values!1386) e!540365)))

(assert (=> start!82268 tp!64501))

(declare-fun b!958454 () Bool)

(assert (=> b!958454 (= e!540366 tp_is_empty!21219)))

(declare-fun b!958455 () Bool)

(declare-fun e!540364 () Bool)

(assert (=> b!958455 (= e!540365 (and e!540364 mapRes!33808))))

(declare-fun condMapEmpty!33808 () Bool)

(declare-fun mapDefault!33808 () ValueCell!10128)

(assert (=> b!958455 (= condMapEmpty!33808 (= (arr!28146 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10128)) mapDefault!33808)))))

(declare-fun b!958456 () Bool)

(declare-fun res!641671 () Bool)

(assert (=> b!958456 (=> (not res!641671) (not e!540368))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958456 (= res!641671 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28627 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28627 _keys!1668))))))

(declare-fun b!958457 () Bool)

(declare-fun res!641669 () Bool)

(assert (=> b!958457 (=> (not res!641669) (not e!540368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958457 (= res!641669 (validKeyInArray!0 (select (arr!28147 _keys!1668) i!793)))))

(declare-fun b!958458 () Bool)

(assert (=> b!958458 (= e!540368 false)))

(declare-fun lt!430406 () Bool)

(declare-fun minValue!1328 () V!33275)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33275)

(declare-datatypes ((tuple2!13834 0))(
  ( (tuple2!13835 (_1!6927 (_ BitVec 64)) (_2!6927 V!33275)) )
))
(declare-datatypes ((List!19699 0))(
  ( (Nil!19696) (Cons!19695 (h!20857 tuple2!13834) (t!28070 List!19699)) )
))
(declare-datatypes ((ListLongMap!12545 0))(
  ( (ListLongMap!12546 (toList!6288 List!19699)) )
))
(declare-fun contains!5341 (ListLongMap!12545 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3473 (array!58555 array!58553 (_ BitVec 32) (_ BitVec 32) V!33275 V!33275 (_ BitVec 32) Int) ListLongMap!12545)

(assert (=> b!958458 (= lt!430406 (contains!5341 (getCurrentListMap!3473 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28147 _keys!1668) i!793)))))

(declare-fun b!958459 () Bool)

(declare-fun res!641672 () Bool)

(assert (=> b!958459 (=> (not res!641672) (not e!540368))))

(assert (=> b!958459 (= res!641672 (and (= (size!28626 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28627 _keys!1668) (size!28626 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958460 () Bool)

(declare-fun res!641673 () Bool)

(assert (=> b!958460 (=> (not res!641673) (not e!540368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58555 (_ BitVec 32)) Bool)

(assert (=> b!958460 (= res!641673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958461 () Bool)

(assert (=> b!958461 (= e!540364 tp_is_empty!21219)))

(declare-fun b!958462 () Bool)

(declare-fun res!641668 () Bool)

(assert (=> b!958462 (=> (not res!641668) (not e!540368))))

(declare-datatypes ((List!19700 0))(
  ( (Nil!19697) (Cons!19696 (h!20858 (_ BitVec 64)) (t!28071 List!19700)) )
))
(declare-fun arrayNoDuplicates!0 (array!58555 (_ BitVec 32) List!19700) Bool)

(assert (=> b!958462 (= res!641668 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19697))))

(assert (= (and start!82268 res!641670) b!958459))

(assert (= (and b!958459 res!641672) b!958460))

(assert (= (and b!958460 res!641673) b!958462))

(assert (= (and b!958462 res!641668) b!958456))

(assert (= (and b!958456 res!641671) b!958457))

(assert (= (and b!958457 res!641669) b!958458))

(assert (= (and b!958455 condMapEmpty!33808) mapIsEmpty!33808))

(assert (= (and b!958455 (not condMapEmpty!33808)) mapNonEmpty!33808))

(get-info :version)

(assert (= (and mapNonEmpty!33808 ((_ is ValueCellFull!10128) mapValue!33808)) b!958454))

(assert (= (and b!958455 ((_ is ValueCellFull!10128) mapDefault!33808)) b!958461))

(assert (= start!82268 b!958455))

(declare-fun m!889193 () Bool)

(assert (=> mapNonEmpty!33808 m!889193))

(declare-fun m!889195 () Bool)

(assert (=> b!958462 m!889195))

(declare-fun m!889197 () Bool)

(assert (=> start!82268 m!889197))

(declare-fun m!889199 () Bool)

(assert (=> start!82268 m!889199))

(declare-fun m!889201 () Bool)

(assert (=> start!82268 m!889201))

(declare-fun m!889203 () Bool)

(assert (=> b!958458 m!889203))

(declare-fun m!889205 () Bool)

(assert (=> b!958458 m!889205))

(assert (=> b!958458 m!889203))

(assert (=> b!958458 m!889205))

(declare-fun m!889207 () Bool)

(assert (=> b!958458 m!889207))

(assert (=> b!958457 m!889205))

(assert (=> b!958457 m!889205))

(declare-fun m!889209 () Bool)

(assert (=> b!958457 m!889209))

(declare-fun m!889211 () Bool)

(assert (=> b!958460 m!889211))

(check-sat (not start!82268) (not b!958462) (not b!958460) b_and!30019 tp_is_empty!21219 (not b!958458) (not b!958457) (not mapNonEmpty!33808) (not b_next!18513))
(check-sat b_and!30019 (not b_next!18513))
