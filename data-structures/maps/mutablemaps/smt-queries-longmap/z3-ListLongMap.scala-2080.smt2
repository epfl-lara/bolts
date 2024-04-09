; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35658 () Bool)

(assert start!35658)

(declare-fun b_free!7905 () Bool)

(declare-fun b_next!7905 () Bool)

(assert (=> start!35658 (= b_free!7905 (not b_next!7905))))

(declare-fun tp!27698 () Bool)

(declare-fun b_and!15165 () Bool)

(assert (=> start!35658 (= tp!27698 b_and!15165)))

(declare-fun mapIsEmpty!13662 () Bool)

(declare-fun mapRes!13662 () Bool)

(assert (=> mapIsEmpty!13662 mapRes!13662))

(declare-fun b!357768 () Bool)

(declare-fun e!219018 () Bool)

(declare-fun tp_is_empty!8103 () Bool)

(assert (=> b!357768 (= e!219018 tp_is_empty!8103)))

(declare-fun b!357769 () Bool)

(declare-fun e!219020 () Bool)

(assert (=> b!357769 (= e!219020 tp_is_empty!8103)))

(declare-fun b!357770 () Bool)

(declare-fun e!219017 () Bool)

(assert (=> b!357770 (= e!219017 true)))

(declare-datatypes ((V!11781 0))(
  ( (V!11782 (val!4096 Int)) )
))
(declare-fun minValue!1150 () V!11781)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19739 0))(
  ( (array!19740 (arr!9360 (Array (_ BitVec 32) (_ BitVec 64))) (size!9712 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19739)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3708 0))(
  ( (ValueCellFull!3708 (v!6286 V!11781)) (EmptyCell!3708) )
))
(declare-datatypes ((array!19741 0))(
  ( (array!19742 (arr!9361 (Array (_ BitVec 32) ValueCell!3708)) (size!9713 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19741)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11781)

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5718 0))(
  ( (tuple2!5719 (_1!2869 (_ BitVec 64)) (_2!2869 V!11781)) )
))
(declare-datatypes ((List!5432 0))(
  ( (Nil!5429) (Cons!5428 (h!6284 tuple2!5718) (t!10590 List!5432)) )
))
(declare-datatypes ((ListLongMap!4645 0))(
  ( (ListLongMap!4646 (toList!2338 List!5432)) )
))
(declare-fun contains!2414 (ListLongMap!4645 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1855 (array!19739 array!19741 (_ BitVec 32) (_ BitVec 32) V!11781 V!11781 (_ BitVec 32) Int) ListLongMap!4645)

(assert (=> b!357770 (contains!2414 (getCurrentListMap!1855 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11035 0))(
  ( (Unit!11036) )
))
(declare-fun lt!166090 () Unit!11035)

(declare-fun lemmaArrayContainsKeyThenInListMap!348 (array!19739 array!19741 (_ BitVec 32) (_ BitVec 32) V!11781 V!11781 (_ BitVec 64) (_ BitVec 32) Int) Unit!11035)

(assert (=> b!357770 (= lt!166090 (lemmaArrayContainsKeyThenInListMap!348 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357772 () Bool)

(declare-fun e!219015 () Bool)

(assert (=> b!357772 (= e!219015 (and e!219018 mapRes!13662))))

(declare-fun condMapEmpty!13662 () Bool)

(declare-fun mapDefault!13662 () ValueCell!3708)

(assert (=> b!357772 (= condMapEmpty!13662 (= (arr!9361 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3708)) mapDefault!13662)))))

(declare-fun b!357773 () Bool)

(declare-fun res!198870 () Bool)

(declare-fun e!219016 () Bool)

(assert (=> b!357773 (=> (not res!198870) (not e!219016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357773 (= res!198870 (validKeyInArray!0 k0!1077))))

(declare-fun b!357774 () Bool)

(declare-fun res!198873 () Bool)

(assert (=> b!357774 (=> (not res!198873) (not e!219016))))

(declare-fun arrayContainsKey!0 (array!19739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357774 (= res!198873 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357775 () Bool)

(declare-fun res!198874 () Bool)

(assert (=> b!357775 (=> (not res!198874) (not e!219016))))

(declare-datatypes ((List!5433 0))(
  ( (Nil!5430) (Cons!5429 (h!6285 (_ BitVec 64)) (t!10591 List!5433)) )
))
(declare-fun arrayNoDuplicates!0 (array!19739 (_ BitVec 32) List!5433) Bool)

(assert (=> b!357775 (= res!198874 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5430))))

(declare-fun b!357776 () Bool)

(declare-fun res!198872 () Bool)

(assert (=> b!357776 (=> (not res!198872) (not e!219016))))

(assert (=> b!357776 (= res!198872 (not (= (select (arr!9360 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357777 () Bool)

(declare-fun res!198867 () Bool)

(assert (=> b!357777 (=> (not res!198867) (not e!219016))))

(assert (=> b!357777 (= res!198867 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9712 _keys!1456))))))

(declare-fun b!357778 () Bool)

(declare-fun res!198866 () Bool)

(assert (=> b!357778 (=> (not res!198866) (not e!219016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19739 (_ BitVec 32)) Bool)

(assert (=> b!357778 (= res!198866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357779 () Bool)

(assert (=> b!357779 (= e!219016 (not e!219017))))

(declare-fun res!198868 () Bool)

(assert (=> b!357779 (=> res!198868 e!219017)))

(assert (=> b!357779 (= res!198868 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9712 _keys!1456))))))

(assert (=> b!357779 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166089 () Unit!11035)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!36 (array!19739 array!19741 (_ BitVec 32) (_ BitVec 32) V!11781 V!11781 (_ BitVec 64) (_ BitVec 32)) Unit!11035)

(assert (=> b!357779 (= lt!166089 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!36 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun mapNonEmpty!13662 () Bool)

(declare-fun tp!27699 () Bool)

(assert (=> mapNonEmpty!13662 (= mapRes!13662 (and tp!27699 e!219020))))

(declare-fun mapKey!13662 () (_ BitVec 32))

(declare-fun mapRest!13662 () (Array (_ BitVec 32) ValueCell!3708))

(declare-fun mapValue!13662 () ValueCell!3708)

(assert (=> mapNonEmpty!13662 (= (arr!9361 _values!1208) (store mapRest!13662 mapKey!13662 mapValue!13662))))

(declare-fun b!357771 () Bool)

(declare-fun res!198869 () Bool)

(assert (=> b!357771 (=> (not res!198869) (not e!219016))))

(assert (=> b!357771 (= res!198869 (and (= (size!9713 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9712 _keys!1456) (size!9713 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!198871 () Bool)

(assert (=> start!35658 (=> (not res!198871) (not e!219016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35658 (= res!198871 (validMask!0 mask!1842))))

(assert (=> start!35658 e!219016))

(assert (=> start!35658 tp_is_empty!8103))

(assert (=> start!35658 true))

(assert (=> start!35658 tp!27698))

(declare-fun array_inv!6880 (array!19739) Bool)

(assert (=> start!35658 (array_inv!6880 _keys!1456)))

(declare-fun array_inv!6881 (array!19741) Bool)

(assert (=> start!35658 (and (array_inv!6881 _values!1208) e!219015)))

(assert (= (and start!35658 res!198871) b!357771))

(assert (= (and b!357771 res!198869) b!357778))

(assert (= (and b!357778 res!198866) b!357775))

(assert (= (and b!357775 res!198874) b!357773))

(assert (= (and b!357773 res!198870) b!357777))

(assert (= (and b!357777 res!198867) b!357774))

(assert (= (and b!357774 res!198873) b!357776))

(assert (= (and b!357776 res!198872) b!357779))

(assert (= (and b!357779 (not res!198868)) b!357770))

(assert (= (and b!357772 condMapEmpty!13662) mapIsEmpty!13662))

(assert (= (and b!357772 (not condMapEmpty!13662)) mapNonEmpty!13662))

(get-info :version)

(assert (= (and mapNonEmpty!13662 ((_ is ValueCellFull!3708) mapValue!13662)) b!357769))

(assert (= (and b!357772 ((_ is ValueCellFull!3708) mapDefault!13662)) b!357768))

(assert (= start!35658 b!357772))

(declare-fun m!355771 () Bool)

(assert (=> b!357779 m!355771))

(declare-fun m!355773 () Bool)

(assert (=> b!357779 m!355773))

(declare-fun m!355775 () Bool)

(assert (=> b!357774 m!355775))

(declare-fun m!355777 () Bool)

(assert (=> b!357778 m!355777))

(declare-fun m!355779 () Bool)

(assert (=> b!357776 m!355779))

(declare-fun m!355781 () Bool)

(assert (=> b!357770 m!355781))

(assert (=> b!357770 m!355781))

(declare-fun m!355783 () Bool)

(assert (=> b!357770 m!355783))

(declare-fun m!355785 () Bool)

(assert (=> b!357770 m!355785))

(declare-fun m!355787 () Bool)

(assert (=> mapNonEmpty!13662 m!355787))

(declare-fun m!355789 () Bool)

(assert (=> b!357775 m!355789))

(declare-fun m!355791 () Bool)

(assert (=> start!35658 m!355791))

(declare-fun m!355793 () Bool)

(assert (=> start!35658 m!355793))

(declare-fun m!355795 () Bool)

(assert (=> start!35658 m!355795))

(declare-fun m!355797 () Bool)

(assert (=> b!357773 m!355797))

(check-sat b_and!15165 (not mapNonEmpty!13662) (not b!357778) tp_is_empty!8103 (not start!35658) (not b!357773) (not b!357775) (not b!357770) (not b!357779) (not b_next!7905) (not b!357774))
(check-sat b_and!15165 (not b_next!7905))
