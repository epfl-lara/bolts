; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35670 () Bool)

(assert start!35670)

(declare-fun b_free!7917 () Bool)

(declare-fun b_next!7917 () Bool)

(assert (=> start!35670 (= b_free!7917 (not b_next!7917))))

(declare-fun tp!27734 () Bool)

(declare-fun b_and!15177 () Bool)

(assert (=> start!35670 (= tp!27734 b_and!15177)))

(declare-fun b!357984 () Bool)

(declare-fun e!219126 () Bool)

(declare-fun e!219125 () Bool)

(declare-fun mapRes!13680 () Bool)

(assert (=> b!357984 (= e!219126 (and e!219125 mapRes!13680))))

(declare-fun condMapEmpty!13680 () Bool)

(declare-datatypes ((V!11797 0))(
  ( (V!11798 (val!4102 Int)) )
))
(declare-datatypes ((ValueCell!3714 0))(
  ( (ValueCellFull!3714 (v!6292 V!11797)) (EmptyCell!3714) )
))
(declare-datatypes ((array!19761 0))(
  ( (array!19762 (arr!9371 (Array (_ BitVec 32) ValueCell!3714)) (size!9723 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19761)

(declare-fun mapDefault!13680 () ValueCell!3714)

(assert (=> b!357984 (= condMapEmpty!13680 (= (arr!9371 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3714)) mapDefault!13680)))))

(declare-fun mapNonEmpty!13680 () Bool)

(declare-fun tp!27735 () Bool)

(declare-fun e!219127 () Bool)

(assert (=> mapNonEmpty!13680 (= mapRes!13680 (and tp!27735 e!219127))))

(declare-fun mapValue!13680 () ValueCell!3714)

(declare-fun mapRest!13680 () (Array (_ BitVec 32) ValueCell!3714))

(declare-fun mapKey!13680 () (_ BitVec 32))

(assert (=> mapNonEmpty!13680 (= (arr!9371 _values!1208) (store mapRest!13680 mapKey!13680 mapValue!13680))))

(declare-fun b!357985 () Bool)

(declare-fun res!199028 () Bool)

(declare-fun e!219124 () Bool)

(assert (=> b!357985 (=> (not res!199028) (not e!219124))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19763 0))(
  ( (array!19764 (arr!9372 (Array (_ BitVec 32) (_ BitVec 64))) (size!9724 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19763)

(assert (=> b!357985 (= res!199028 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9724 _keys!1456))))))

(declare-fun b!357987 () Bool)

(declare-fun res!199032 () Bool)

(assert (=> b!357987 (=> (not res!199032) (not e!219124))))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!357987 (= res!199032 (not (= (select (arr!9372 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357988 () Bool)

(declare-fun tp_is_empty!8115 () Bool)

(assert (=> b!357988 (= e!219127 tp_is_empty!8115)))

(declare-fun mapIsEmpty!13680 () Bool)

(assert (=> mapIsEmpty!13680 mapRes!13680))

(declare-fun b!357989 () Bool)

(declare-fun e!219128 () Bool)

(assert (=> b!357989 (= e!219128 (bvsle #b00000000000000000000000000000000 (size!9724 _keys!1456)))))

(declare-fun minValue!1150 () V!11797)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11797)

(declare-datatypes ((tuple2!5728 0))(
  ( (tuple2!5729 (_1!2874 (_ BitVec 64)) (_2!2874 V!11797)) )
))
(declare-datatypes ((List!5441 0))(
  ( (Nil!5438) (Cons!5437 (h!6293 tuple2!5728) (t!10599 List!5441)) )
))
(declare-datatypes ((ListLongMap!4655 0))(
  ( (ListLongMap!4656 (toList!2343 List!5441)) )
))
(declare-fun contains!2419 (ListLongMap!4655 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1860 (array!19763 array!19761 (_ BitVec 32) (_ BitVec 32) V!11797 V!11797 (_ BitVec 32) Int) ListLongMap!4655)

(assert (=> b!357989 (contains!2419 (getCurrentListMap!1860 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-datatypes ((Unit!11045 0))(
  ( (Unit!11046) )
))
(declare-fun lt!166125 () Unit!11045)

(declare-fun lemmaArrayContainsKeyThenInListMap!353 (array!19763 array!19761 (_ BitVec 32) (_ BitVec 32) V!11797 V!11797 (_ BitVec 64) (_ BitVec 32) Int) Unit!11045)

(assert (=> b!357989 (= lt!166125 (lemmaArrayContainsKeyThenInListMap!353 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357990 () Bool)

(assert (=> b!357990 (= e!219125 tp_is_empty!8115)))

(declare-fun b!357991 () Bool)

(assert (=> b!357991 (= e!219124 (not e!219128))))

(declare-fun res!199034 () Bool)

(assert (=> b!357991 (=> res!199034 e!219128)))

(assert (=> b!357991 (= res!199034 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9724 _keys!1456))))))

(declare-fun arrayContainsKey!0 (array!19763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357991 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166126 () Unit!11045)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!40 (array!19763 array!19761 (_ BitVec 32) (_ BitVec 32) V!11797 V!11797 (_ BitVec 64) (_ BitVec 32)) Unit!11045)

(assert (=> b!357991 (= lt!166126 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!40 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357992 () Bool)

(declare-fun res!199035 () Bool)

(assert (=> b!357992 (=> (not res!199035) (not e!219124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19763 (_ BitVec 32)) Bool)

(assert (=> b!357992 (= res!199035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357993 () Bool)

(declare-fun res!199030 () Bool)

(assert (=> b!357993 (=> (not res!199030) (not e!219124))))

(assert (=> b!357993 (= res!199030 (and (= (size!9723 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9724 _keys!1456) (size!9723 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357994 () Bool)

(declare-fun res!199036 () Bool)

(assert (=> b!357994 (=> (not res!199036) (not e!219124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357994 (= res!199036 (validKeyInArray!0 k0!1077))))

(declare-fun b!357995 () Bool)

(declare-fun res!199031 () Bool)

(assert (=> b!357995 (=> (not res!199031) (not e!219124))))

(assert (=> b!357995 (= res!199031 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!199033 () Bool)

(assert (=> start!35670 (=> (not res!199033) (not e!219124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35670 (= res!199033 (validMask!0 mask!1842))))

(assert (=> start!35670 e!219124))

(assert (=> start!35670 tp_is_empty!8115))

(assert (=> start!35670 true))

(assert (=> start!35670 tp!27734))

(declare-fun array_inv!6888 (array!19763) Bool)

(assert (=> start!35670 (array_inv!6888 _keys!1456)))

(declare-fun array_inv!6889 (array!19761) Bool)

(assert (=> start!35670 (and (array_inv!6889 _values!1208) e!219126)))

(declare-fun b!357986 () Bool)

(declare-fun res!199029 () Bool)

(assert (=> b!357986 (=> (not res!199029) (not e!219124))))

(declare-datatypes ((List!5442 0))(
  ( (Nil!5439) (Cons!5438 (h!6294 (_ BitVec 64)) (t!10600 List!5442)) )
))
(declare-fun arrayNoDuplicates!0 (array!19763 (_ BitVec 32) List!5442) Bool)

(assert (=> b!357986 (= res!199029 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5439))))

(assert (= (and start!35670 res!199033) b!357993))

(assert (= (and b!357993 res!199030) b!357992))

(assert (= (and b!357992 res!199035) b!357986))

(assert (= (and b!357986 res!199029) b!357994))

(assert (= (and b!357994 res!199036) b!357985))

(assert (= (and b!357985 res!199028) b!357995))

(assert (= (and b!357995 res!199031) b!357987))

(assert (= (and b!357987 res!199032) b!357991))

(assert (= (and b!357991 (not res!199034)) b!357989))

(assert (= (and b!357984 condMapEmpty!13680) mapIsEmpty!13680))

(assert (= (and b!357984 (not condMapEmpty!13680)) mapNonEmpty!13680))

(get-info :version)

(assert (= (and mapNonEmpty!13680 ((_ is ValueCellFull!3714) mapValue!13680)) b!357988))

(assert (= (and b!357984 ((_ is ValueCellFull!3714) mapDefault!13680)) b!357990))

(assert (= start!35670 b!357984))

(declare-fun m!355939 () Bool)

(assert (=> b!357989 m!355939))

(assert (=> b!357989 m!355939))

(declare-fun m!355941 () Bool)

(assert (=> b!357989 m!355941))

(declare-fun m!355943 () Bool)

(assert (=> b!357989 m!355943))

(declare-fun m!355945 () Bool)

(assert (=> mapNonEmpty!13680 m!355945))

(declare-fun m!355947 () Bool)

(assert (=> b!357986 m!355947))

(declare-fun m!355949 () Bool)

(assert (=> b!357987 m!355949))

(declare-fun m!355951 () Bool)

(assert (=> b!357995 m!355951))

(declare-fun m!355953 () Bool)

(assert (=> b!357992 m!355953))

(declare-fun m!355955 () Bool)

(assert (=> b!357991 m!355955))

(declare-fun m!355957 () Bool)

(assert (=> b!357991 m!355957))

(declare-fun m!355959 () Bool)

(assert (=> b!357994 m!355959))

(declare-fun m!355961 () Bool)

(assert (=> start!35670 m!355961))

(declare-fun m!355963 () Bool)

(assert (=> start!35670 m!355963))

(declare-fun m!355965 () Bool)

(assert (=> start!35670 m!355965))

(check-sat b_and!15177 (not b!357989) (not b!357991) (not b_next!7917) (not b!357994) (not mapNonEmpty!13680) (not b!357995) tp_is_empty!8115 (not b!357986) (not start!35670) (not b!357992))
(check-sat b_and!15177 (not b_next!7917))
