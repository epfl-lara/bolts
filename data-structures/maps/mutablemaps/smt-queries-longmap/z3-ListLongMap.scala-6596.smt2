; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83490 () Bool)

(assert start!83490)

(declare-fun b_free!19449 () Bool)

(declare-fun b_next!19449 () Bool)

(assert (=> start!83490 (= b_free!19449 (not b_next!19449))))

(declare-fun tp!67635 () Bool)

(declare-fun b_and!31069 () Bool)

(assert (=> start!83490 (= tp!67635 b_and!31069)))

(declare-fun b!974737 () Bool)

(declare-fun e!549423 () Bool)

(declare-fun tp_is_empty!22353 () Bool)

(assert (=> b!974737 (= e!549423 tp_is_empty!22353)))

(declare-fun b!974738 () Bool)

(declare-fun res!652610 () Bool)

(declare-fun e!549419 () Bool)

(assert (=> b!974738 (=> (not res!652610) (not e!549419))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34787 0))(
  ( (V!34788 (val!11227 Int)) )
))
(declare-datatypes ((ValueCell!10695 0))(
  ( (ValueCellFull!10695 (v!13786 V!34787)) (EmptyCell!10695) )
))
(declare-datatypes ((array!60723 0))(
  ( (array!60724 (arr!29221 (Array (_ BitVec 32) ValueCell!10695)) (size!29701 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60723)

(declare-fun zeroValue!1367 () V!34787)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34787)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60725 0))(
  ( (array!60726 (arr!29222 (Array (_ BitVec 32) (_ BitVec 64))) (size!29702 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60725)

(declare-datatypes ((tuple2!14526 0))(
  ( (tuple2!14527 (_1!7273 (_ BitVec 64)) (_2!7273 V!34787)) )
))
(declare-datatypes ((List!20402 0))(
  ( (Nil!20399) (Cons!20398 (h!21560 tuple2!14526) (t!28887 List!20402)) )
))
(declare-datatypes ((ListLongMap!13237 0))(
  ( (ListLongMap!13238 (toList!6634 List!20402)) )
))
(declare-fun contains!5669 (ListLongMap!13237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3819 (array!60725 array!60723 (_ BitVec 32) (_ BitVec 32) V!34787 V!34787 (_ BitVec 32) Int) ListLongMap!13237)

(assert (=> b!974738 (= res!652610 (contains!5669 (getCurrentListMap!3819 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29222 _keys!1717) i!822)))))

(declare-fun b!974739 () Bool)

(assert (=> b!974739 (= e!549419 false)))

(declare-fun lt!432754 () ListLongMap!13237)

(assert (=> b!974739 (= lt!432754 (getCurrentListMap!3819 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974740 () Bool)

(declare-fun res!652611 () Bool)

(assert (=> b!974740 (=> (not res!652611) (not e!549419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974740 (= res!652611 (validKeyInArray!0 (select (arr!29222 _keys!1717) i!822)))))

(declare-fun b!974741 () Bool)

(declare-fun res!652609 () Bool)

(assert (=> b!974741 (=> (not res!652609) (not e!549419))))

(assert (=> b!974741 (= res!652609 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29702 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29702 _keys!1717))))))

(declare-fun mapNonEmpty!35539 () Bool)

(declare-fun mapRes!35539 () Bool)

(declare-fun tp!67636 () Bool)

(assert (=> mapNonEmpty!35539 (= mapRes!35539 (and tp!67636 e!549423))))

(declare-fun mapValue!35539 () ValueCell!10695)

(declare-fun mapKey!35539 () (_ BitVec 32))

(declare-fun mapRest!35539 () (Array (_ BitVec 32) ValueCell!10695))

(assert (=> mapNonEmpty!35539 (= (arr!29221 _values!1425) (store mapRest!35539 mapKey!35539 mapValue!35539))))

(declare-fun mapIsEmpty!35539 () Bool)

(assert (=> mapIsEmpty!35539 mapRes!35539))

(declare-fun b!974742 () Bool)

(declare-fun e!549421 () Bool)

(assert (=> b!974742 (= e!549421 tp_is_empty!22353)))

(declare-fun b!974743 () Bool)

(declare-fun res!652607 () Bool)

(assert (=> b!974743 (=> (not res!652607) (not e!549419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60725 (_ BitVec 32)) Bool)

(assert (=> b!974743 (= res!652607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974744 () Bool)

(declare-fun res!652608 () Bool)

(assert (=> b!974744 (=> (not res!652608) (not e!549419))))

(assert (=> b!974744 (= res!652608 (and (= (size!29701 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29702 _keys!1717) (size!29701 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974745 () Bool)

(declare-fun res!652606 () Bool)

(assert (=> b!974745 (=> (not res!652606) (not e!549419))))

(declare-datatypes ((List!20403 0))(
  ( (Nil!20400) (Cons!20399 (h!21561 (_ BitVec 64)) (t!28888 List!20403)) )
))
(declare-fun arrayNoDuplicates!0 (array!60725 (_ BitVec 32) List!20403) Bool)

(assert (=> b!974745 (= res!652606 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20400))))

(declare-fun b!974746 () Bool)

(declare-fun e!549422 () Bool)

(assert (=> b!974746 (= e!549422 (and e!549421 mapRes!35539))))

(declare-fun condMapEmpty!35539 () Bool)

(declare-fun mapDefault!35539 () ValueCell!10695)

(assert (=> b!974746 (= condMapEmpty!35539 (= (arr!29221 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10695)) mapDefault!35539)))))

(declare-fun res!652612 () Bool)

(assert (=> start!83490 (=> (not res!652612) (not e!549419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83490 (= res!652612 (validMask!0 mask!2147))))

(assert (=> start!83490 e!549419))

(assert (=> start!83490 true))

(declare-fun array_inv!22495 (array!60723) Bool)

(assert (=> start!83490 (and (array_inv!22495 _values!1425) e!549422)))

(assert (=> start!83490 tp_is_empty!22353))

(assert (=> start!83490 tp!67635))

(declare-fun array_inv!22496 (array!60725) Bool)

(assert (=> start!83490 (array_inv!22496 _keys!1717)))

(assert (= (and start!83490 res!652612) b!974744))

(assert (= (and b!974744 res!652608) b!974743))

(assert (= (and b!974743 res!652607) b!974745))

(assert (= (and b!974745 res!652606) b!974741))

(assert (= (and b!974741 res!652609) b!974740))

(assert (= (and b!974740 res!652611) b!974738))

(assert (= (and b!974738 res!652610) b!974739))

(assert (= (and b!974746 condMapEmpty!35539) mapIsEmpty!35539))

(assert (= (and b!974746 (not condMapEmpty!35539)) mapNonEmpty!35539))

(get-info :version)

(assert (= (and mapNonEmpty!35539 ((_ is ValueCellFull!10695) mapValue!35539)) b!974737))

(assert (= (and b!974746 ((_ is ValueCellFull!10695) mapDefault!35539)) b!974742))

(assert (= start!83490 b!974746))

(declare-fun m!902235 () Bool)

(assert (=> b!974739 m!902235))

(declare-fun m!902237 () Bool)

(assert (=> b!974740 m!902237))

(assert (=> b!974740 m!902237))

(declare-fun m!902239 () Bool)

(assert (=> b!974740 m!902239))

(declare-fun m!902241 () Bool)

(assert (=> b!974738 m!902241))

(assert (=> b!974738 m!902237))

(assert (=> b!974738 m!902241))

(assert (=> b!974738 m!902237))

(declare-fun m!902243 () Bool)

(assert (=> b!974738 m!902243))

(declare-fun m!902245 () Bool)

(assert (=> start!83490 m!902245))

(declare-fun m!902247 () Bool)

(assert (=> start!83490 m!902247))

(declare-fun m!902249 () Bool)

(assert (=> start!83490 m!902249))

(declare-fun m!902251 () Bool)

(assert (=> b!974743 m!902251))

(declare-fun m!902253 () Bool)

(assert (=> mapNonEmpty!35539 m!902253))

(declare-fun m!902255 () Bool)

(assert (=> b!974745 m!902255))

(check-sat (not b_next!19449) (not b!974739) b_and!31069 (not b!974745) (not b!974738) tp_is_empty!22353 (not mapNonEmpty!35539) (not b!974743) (not start!83490) (not b!974740))
(check-sat b_and!31069 (not b_next!19449))
