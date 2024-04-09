; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35640 () Bool)

(assert start!35640)

(declare-fun b_free!7887 () Bool)

(declare-fun b_next!7887 () Bool)

(assert (=> start!35640 (= b_free!7887 (not b_next!7887))))

(declare-fun tp!27645 () Bool)

(declare-fun b_and!15147 () Bool)

(assert (=> start!35640 (= tp!27645 b_and!15147)))

(declare-fun b!357444 () Bool)

(declare-fun e!218858 () Bool)

(assert (=> b!357444 (= e!218858 true)))

(declare-datatypes ((V!11757 0))(
  ( (V!11758 (val!4087 Int)) )
))
(declare-fun minValue!1150 () V!11757)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((array!19703 0))(
  ( (array!19704 (arr!9342 (Array (_ BitVec 32) (_ BitVec 64))) (size!9694 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19703)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3699 0))(
  ( (ValueCellFull!3699 (v!6277 V!11757)) (EmptyCell!3699) )
))
(declare-datatypes ((array!19705 0))(
  ( (array!19706 (arr!9343 (Array (_ BitVec 32) ValueCell!3699)) (size!9695 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19705)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11757)

(declare-datatypes ((tuple2!5704 0))(
  ( (tuple2!5705 (_1!2862 (_ BitVec 64)) (_2!2862 V!11757)) )
))
(declare-datatypes ((List!5420 0))(
  ( (Nil!5417) (Cons!5416 (h!6272 tuple2!5704) (t!10578 List!5420)) )
))
(declare-datatypes ((ListLongMap!4631 0))(
  ( (ListLongMap!4632 (toList!2331 List!5420)) )
))
(declare-fun contains!2407 (ListLongMap!4631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1848 (array!19703 array!19705 (_ BitVec 32) (_ BitVec 32) V!11757 V!11757 (_ BitVec 32) Int) ListLongMap!4631)

(assert (=> b!357444 (contains!2407 (getCurrentListMap!1848 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11019 0))(
  ( (Unit!11020) )
))
(declare-fun lt!166035 () Unit!11019)

(declare-fun lemmaArrayContainsKeyThenInListMap!341 (array!19703 array!19705 (_ BitVec 32) (_ BitVec 32) V!11757 V!11757 (_ BitVec 64) (_ BitVec 32) Int) Unit!11019)

(assert (=> b!357444 (= lt!166035 (lemmaArrayContainsKeyThenInListMap!341 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357445 () Bool)

(declare-fun e!218854 () Bool)

(declare-fun tp_is_empty!8085 () Bool)

(assert (=> b!357445 (= e!218854 tp_is_empty!8085)))

(declare-fun b!357446 () Bool)

(declare-fun res!198631 () Bool)

(declare-fun e!218853 () Bool)

(assert (=> b!357446 (=> (not res!198631) (not e!218853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19703 (_ BitVec 32)) Bool)

(assert (=> b!357446 (= res!198631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13635 () Bool)

(declare-fun mapRes!13635 () Bool)

(declare-fun tp!27644 () Bool)

(declare-fun e!218856 () Bool)

(assert (=> mapNonEmpty!13635 (= mapRes!13635 (and tp!27644 e!218856))))

(declare-fun mapKey!13635 () (_ BitVec 32))

(declare-fun mapRest!13635 () (Array (_ BitVec 32) ValueCell!3699))

(declare-fun mapValue!13635 () ValueCell!3699)

(assert (=> mapNonEmpty!13635 (= (arr!9343 _values!1208) (store mapRest!13635 mapKey!13635 mapValue!13635))))

(declare-fun mapIsEmpty!13635 () Bool)

(assert (=> mapIsEmpty!13635 mapRes!13635))

(declare-fun res!198628 () Bool)

(assert (=> start!35640 (=> (not res!198628) (not e!218853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35640 (= res!198628 (validMask!0 mask!1842))))

(assert (=> start!35640 e!218853))

(assert (=> start!35640 tp_is_empty!8085))

(assert (=> start!35640 true))

(assert (=> start!35640 tp!27645))

(declare-fun array_inv!6870 (array!19703) Bool)

(assert (=> start!35640 (array_inv!6870 _keys!1456)))

(declare-fun e!218855 () Bool)

(declare-fun array_inv!6871 (array!19705) Bool)

(assert (=> start!35640 (and (array_inv!6871 _values!1208) e!218855)))

(declare-fun b!357447 () Bool)

(declare-fun res!198623 () Bool)

(assert (=> b!357447 (=> (not res!198623) (not e!218853))))

(assert (=> b!357447 (= res!198623 (not (= (select (arr!9342 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357448 () Bool)

(declare-fun res!198626 () Bool)

(assert (=> b!357448 (=> (not res!198626) (not e!218853))))

(declare-datatypes ((List!5421 0))(
  ( (Nil!5418) (Cons!5417 (h!6273 (_ BitVec 64)) (t!10579 List!5421)) )
))
(declare-fun arrayNoDuplicates!0 (array!19703 (_ BitVec 32) List!5421) Bool)

(assert (=> b!357448 (= res!198626 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5418))))

(declare-fun b!357449 () Bool)

(declare-fun res!198630 () Bool)

(assert (=> b!357449 (=> (not res!198630) (not e!218853))))

(declare-fun arrayContainsKey!0 (array!19703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357449 (= res!198630 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357450 () Bool)

(assert (=> b!357450 (= e!218853 (not e!218858))))

(declare-fun res!198629 () Bool)

(assert (=> b!357450 (=> res!198629 e!218858)))

(assert (=> b!357450 (= res!198629 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9694 _keys!1456))))))

(assert (=> b!357450 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166036 () Unit!11019)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!29 (array!19703 array!19705 (_ BitVec 32) (_ BitVec 32) V!11757 V!11757 (_ BitVec 64) (_ BitVec 32)) Unit!11019)

(assert (=> b!357450 (= lt!166036 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!29 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357451 () Bool)

(declare-fun res!198624 () Bool)

(assert (=> b!357451 (=> (not res!198624) (not e!218853))))

(assert (=> b!357451 (= res!198624 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9694 _keys!1456))))))

(declare-fun b!357452 () Bool)

(declare-fun res!198627 () Bool)

(assert (=> b!357452 (=> (not res!198627) (not e!218853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357452 (= res!198627 (validKeyInArray!0 k0!1077))))

(declare-fun b!357453 () Bool)

(assert (=> b!357453 (= e!218855 (and e!218854 mapRes!13635))))

(declare-fun condMapEmpty!13635 () Bool)

(declare-fun mapDefault!13635 () ValueCell!3699)

(assert (=> b!357453 (= condMapEmpty!13635 (= (arr!9343 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3699)) mapDefault!13635)))))

(declare-fun b!357454 () Bool)

(assert (=> b!357454 (= e!218856 tp_is_empty!8085)))

(declare-fun b!357455 () Bool)

(declare-fun res!198625 () Bool)

(assert (=> b!357455 (=> (not res!198625) (not e!218853))))

(assert (=> b!357455 (= res!198625 (and (= (size!9695 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9694 _keys!1456) (size!9695 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35640 res!198628) b!357455))

(assert (= (and b!357455 res!198625) b!357446))

(assert (= (and b!357446 res!198631) b!357448))

(assert (= (and b!357448 res!198626) b!357452))

(assert (= (and b!357452 res!198627) b!357451))

(assert (= (and b!357451 res!198624) b!357449))

(assert (= (and b!357449 res!198630) b!357447))

(assert (= (and b!357447 res!198623) b!357450))

(assert (= (and b!357450 (not res!198629)) b!357444))

(assert (= (and b!357453 condMapEmpty!13635) mapIsEmpty!13635))

(assert (= (and b!357453 (not condMapEmpty!13635)) mapNonEmpty!13635))

(get-info :version)

(assert (= (and mapNonEmpty!13635 ((_ is ValueCellFull!3699) mapValue!13635)) b!357454))

(assert (= (and b!357453 ((_ is ValueCellFull!3699) mapDefault!13635)) b!357445))

(assert (= start!35640 b!357453))

(declare-fun m!355519 () Bool)

(assert (=> start!35640 m!355519))

(declare-fun m!355521 () Bool)

(assert (=> start!35640 m!355521))

(declare-fun m!355523 () Bool)

(assert (=> start!35640 m!355523))

(declare-fun m!355525 () Bool)

(assert (=> b!357444 m!355525))

(assert (=> b!357444 m!355525))

(declare-fun m!355527 () Bool)

(assert (=> b!357444 m!355527))

(declare-fun m!355529 () Bool)

(assert (=> b!357444 m!355529))

(declare-fun m!355531 () Bool)

(assert (=> b!357447 m!355531))

(declare-fun m!355533 () Bool)

(assert (=> b!357446 m!355533))

(declare-fun m!355535 () Bool)

(assert (=> b!357448 m!355535))

(declare-fun m!355537 () Bool)

(assert (=> b!357449 m!355537))

(declare-fun m!355539 () Bool)

(assert (=> b!357452 m!355539))

(declare-fun m!355541 () Bool)

(assert (=> b!357450 m!355541))

(declare-fun m!355543 () Bool)

(assert (=> b!357450 m!355543))

(declare-fun m!355545 () Bool)

(assert (=> mapNonEmpty!13635 m!355545))

(check-sat (not b!357452) (not start!35640) (not b_next!7887) (not b!357448) (not b!357450) (not b!357446) (not mapNonEmpty!13635) b_and!15147 (not b!357449) (not b!357444) tp_is_empty!8085)
(check-sat b_and!15147 (not b_next!7887))
