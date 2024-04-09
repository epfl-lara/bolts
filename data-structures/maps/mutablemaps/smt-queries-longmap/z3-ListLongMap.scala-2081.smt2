; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35664 () Bool)

(assert start!35664)

(declare-fun b_free!7911 () Bool)

(declare-fun b_next!7911 () Bool)

(assert (=> start!35664 (= b_free!7911 (not b_next!7911))))

(declare-fun tp!27717 () Bool)

(declare-fun b_and!15171 () Bool)

(assert (=> start!35664 (= tp!27717 b_and!15171)))

(declare-fun b!357876 () Bool)

(declare-fun e!219069 () Bool)

(declare-fun e!219071 () Bool)

(assert (=> b!357876 (= e!219069 (not e!219071))))

(declare-fun res!198952 () Bool)

(assert (=> b!357876 (=> res!198952 e!219071)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19751 0))(
  ( (array!19752 (arr!9366 (Array (_ BitVec 32) (_ BitVec 64))) (size!9718 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19751)

(assert (=> b!357876 (= res!198952 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9718 _keys!1456))))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357876 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11041 0))(
  ( (Unit!11042) )
))
(declare-fun lt!166107 () Unit!11041)

(declare-datatypes ((V!11789 0))(
  ( (V!11790 (val!4099 Int)) )
))
(declare-fun minValue!1150 () V!11789)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3711 0))(
  ( (ValueCellFull!3711 (v!6289 V!11789)) (EmptyCell!3711) )
))
(declare-datatypes ((array!19753 0))(
  ( (array!19754 (arr!9367 (Array (_ BitVec 32) ValueCell!3711)) (size!9719 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19753)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11789)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!38 (array!19751 array!19753 (_ BitVec 32) (_ BitVec 32) V!11789 V!11789 (_ BitVec 64) (_ BitVec 32)) Unit!11041)

(assert (=> b!357876 (= lt!166107 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!38 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357877 () Bool)

(declare-fun res!198947 () Bool)

(assert (=> b!357877 (=> (not res!198947) (not e!219069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357877 (= res!198947 (validKeyInArray!0 k0!1077))))

(declare-fun b!357878 () Bool)

(declare-fun res!198954 () Bool)

(assert (=> b!357878 (=> (not res!198954) (not e!219069))))

(assert (=> b!357878 (= res!198954 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357879 () Bool)

(declare-fun res!198948 () Bool)

(assert (=> b!357879 (=> (not res!198948) (not e!219069))))

(assert (=> b!357879 (= res!198948 (not (= (select (arr!9366 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357880 () Bool)

(declare-fun res!198949 () Bool)

(assert (=> b!357880 (=> (not res!198949) (not e!219069))))

(assert (=> b!357880 (= res!198949 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9718 _keys!1456))))))

(declare-fun b!357881 () Bool)

(assert (=> b!357881 (= e!219071 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5724 0))(
  ( (tuple2!5725 (_1!2872 (_ BitVec 64)) (_2!2872 V!11789)) )
))
(declare-datatypes ((List!5437 0))(
  ( (Nil!5434) (Cons!5433 (h!6289 tuple2!5724) (t!10595 List!5437)) )
))
(declare-datatypes ((ListLongMap!4651 0))(
  ( (ListLongMap!4652 (toList!2341 List!5437)) )
))
(declare-fun contains!2417 (ListLongMap!4651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1858 (array!19751 array!19753 (_ BitVec 32) (_ BitVec 32) V!11789 V!11789 (_ BitVec 32) Int) ListLongMap!4651)

(assert (=> b!357881 (contains!2417 (getCurrentListMap!1858 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun lt!166108 () Unit!11041)

(declare-fun lemmaArrayContainsKeyThenInListMap!351 (array!19751 array!19753 (_ BitVec 32) (_ BitVec 32) V!11789 V!11789 (_ BitVec 64) (_ BitVec 32) Int) Unit!11041)

(assert (=> b!357881 (= lt!166108 (lemmaArrayContainsKeyThenInListMap!351 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun res!198950 () Bool)

(assert (=> start!35664 (=> (not res!198950) (not e!219069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35664 (= res!198950 (validMask!0 mask!1842))))

(assert (=> start!35664 e!219069))

(declare-fun tp_is_empty!8109 () Bool)

(assert (=> start!35664 tp_is_empty!8109))

(assert (=> start!35664 true))

(assert (=> start!35664 tp!27717))

(declare-fun array_inv!6884 (array!19751) Bool)

(assert (=> start!35664 (array_inv!6884 _keys!1456)))

(declare-fun e!219074 () Bool)

(declare-fun array_inv!6885 (array!19753) Bool)

(assert (=> start!35664 (and (array_inv!6885 _values!1208) e!219074)))

(declare-fun b!357882 () Bool)

(declare-fun e!219073 () Bool)

(assert (=> b!357882 (= e!219073 tp_is_empty!8109)))

(declare-fun b!357883 () Bool)

(declare-fun res!198951 () Bool)

(assert (=> b!357883 (=> (not res!198951) (not e!219069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19751 (_ BitVec 32)) Bool)

(assert (=> b!357883 (= res!198951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357884 () Bool)

(declare-fun e!219070 () Bool)

(declare-fun mapRes!13671 () Bool)

(assert (=> b!357884 (= e!219074 (and e!219070 mapRes!13671))))

(declare-fun condMapEmpty!13671 () Bool)

(declare-fun mapDefault!13671 () ValueCell!3711)

(assert (=> b!357884 (= condMapEmpty!13671 (= (arr!9367 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3711)) mapDefault!13671)))))

(declare-fun b!357885 () Bool)

(assert (=> b!357885 (= e!219070 tp_is_empty!8109)))

(declare-fun b!357886 () Bool)

(declare-fun res!198953 () Bool)

(assert (=> b!357886 (=> (not res!198953) (not e!219069))))

(assert (=> b!357886 (= res!198953 (and (= (size!9719 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9718 _keys!1456) (size!9719 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13671 () Bool)

(declare-fun tp!27716 () Bool)

(assert (=> mapNonEmpty!13671 (= mapRes!13671 (and tp!27716 e!219073))))

(declare-fun mapRest!13671 () (Array (_ BitVec 32) ValueCell!3711))

(declare-fun mapValue!13671 () ValueCell!3711)

(declare-fun mapKey!13671 () (_ BitVec 32))

(assert (=> mapNonEmpty!13671 (= (arr!9367 _values!1208) (store mapRest!13671 mapKey!13671 mapValue!13671))))

(declare-fun b!357887 () Bool)

(declare-fun res!198955 () Bool)

(assert (=> b!357887 (=> (not res!198955) (not e!219069))))

(declare-datatypes ((List!5438 0))(
  ( (Nil!5435) (Cons!5434 (h!6290 (_ BitVec 64)) (t!10596 List!5438)) )
))
(declare-fun arrayNoDuplicates!0 (array!19751 (_ BitVec 32) List!5438) Bool)

(assert (=> b!357887 (= res!198955 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5435))))

(declare-fun mapIsEmpty!13671 () Bool)

(assert (=> mapIsEmpty!13671 mapRes!13671))

(assert (= (and start!35664 res!198950) b!357886))

(assert (= (and b!357886 res!198953) b!357883))

(assert (= (and b!357883 res!198951) b!357887))

(assert (= (and b!357887 res!198955) b!357877))

(assert (= (and b!357877 res!198947) b!357880))

(assert (= (and b!357880 res!198949) b!357878))

(assert (= (and b!357878 res!198954) b!357879))

(assert (= (and b!357879 res!198948) b!357876))

(assert (= (and b!357876 (not res!198952)) b!357881))

(assert (= (and b!357884 condMapEmpty!13671) mapIsEmpty!13671))

(assert (= (and b!357884 (not condMapEmpty!13671)) mapNonEmpty!13671))

(get-info :version)

(assert (= (and mapNonEmpty!13671 ((_ is ValueCellFull!3711) mapValue!13671)) b!357882))

(assert (= (and b!357884 ((_ is ValueCellFull!3711) mapDefault!13671)) b!357885))

(assert (= start!35664 b!357884))

(declare-fun m!355855 () Bool)

(assert (=> b!357879 m!355855))

(declare-fun m!355857 () Bool)

(assert (=> start!35664 m!355857))

(declare-fun m!355859 () Bool)

(assert (=> start!35664 m!355859))

(declare-fun m!355861 () Bool)

(assert (=> start!35664 m!355861))

(declare-fun m!355863 () Bool)

(assert (=> b!357876 m!355863))

(declare-fun m!355865 () Bool)

(assert (=> b!357876 m!355865))

(declare-fun m!355867 () Bool)

(assert (=> b!357878 m!355867))

(declare-fun m!355869 () Bool)

(assert (=> b!357881 m!355869))

(assert (=> b!357881 m!355869))

(declare-fun m!355871 () Bool)

(assert (=> b!357881 m!355871))

(declare-fun m!355873 () Bool)

(assert (=> b!357881 m!355873))

(declare-fun m!355875 () Bool)

(assert (=> mapNonEmpty!13671 m!355875))

(declare-fun m!355877 () Bool)

(assert (=> b!357877 m!355877))

(declare-fun m!355879 () Bool)

(assert (=> b!357883 m!355879))

(declare-fun m!355881 () Bool)

(assert (=> b!357887 m!355881))

(check-sat (not b!357878) (not start!35664) (not b!357877) b_and!15171 (not b!357883) (not b_next!7911) tp_is_empty!8109 (not b!357876) (not b!357881) (not mapNonEmpty!13671) (not b!357887))
(check-sat b_and!15171 (not b_next!7911))
