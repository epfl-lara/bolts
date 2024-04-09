; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35460 () Bool)

(assert start!35460)

(declare-fun b_free!7839 () Bool)

(declare-fun b_next!7839 () Bool)

(assert (=> start!35460 (= b_free!7839 (not b_next!7839))))

(declare-fun tp!27303 () Bool)

(declare-fun b_and!15099 () Bool)

(assert (=> start!35460 (= tp!27303 b_and!15099)))

(declare-fun mapIsEmpty!13365 () Bool)

(declare-fun mapRes!13365 () Bool)

(assert (=> mapIsEmpty!13365 mapRes!13365))

(declare-fun res!196894 () Bool)

(declare-fun e!217474 () Bool)

(assert (=> start!35460 (=> (not res!196894) (not e!217474))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35460 (= res!196894 (validMask!0 mask!1842))))

(assert (=> start!35460 e!217474))

(declare-fun tp_is_empty!7905 () Bool)

(assert (=> start!35460 tp_is_empty!7905))

(assert (=> start!35460 true))

(assert (=> start!35460 tp!27303))

(declare-datatypes ((array!19357 0))(
  ( (array!19358 (arr!9169 (Array (_ BitVec 32) (_ BitVec 64))) (size!9521 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19357)

(declare-fun array_inv!6750 (array!19357) Bool)

(assert (=> start!35460 (array_inv!6750 _keys!1456)))

(declare-datatypes ((V!11517 0))(
  ( (V!11518 (val!3997 Int)) )
))
(declare-datatypes ((ValueCell!3609 0))(
  ( (ValueCellFull!3609 (v!6187 V!11517)) (EmptyCell!3609) )
))
(declare-datatypes ((array!19359 0))(
  ( (array!19360 (arr!9170 (Array (_ BitVec 32) ValueCell!3609)) (size!9522 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19359)

(declare-fun e!217473 () Bool)

(declare-fun array_inv!6751 (array!19359) Bool)

(assert (=> start!35460 (and (array_inv!6751 _values!1208) e!217473)))

(declare-fun b!354897 () Bool)

(declare-fun res!196886 () Bool)

(assert (=> b!354897 (=> (not res!196886) (not e!217474))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!354897 (= res!196886 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9521 _keys!1456))))))

(declare-fun b!354898 () Bool)

(declare-fun res!196891 () Bool)

(assert (=> b!354898 (=> (not res!196891) (not e!217474))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354898 (= res!196891 (and (= (size!9522 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9521 _keys!1456) (size!9522 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354899 () Bool)

(declare-fun e!217472 () Bool)

(assert (=> b!354899 (= e!217472 tp_is_empty!7905)))

(declare-fun b!354900 () Bool)

(declare-fun res!196893 () Bool)

(assert (=> b!354900 (=> (not res!196893) (not e!217474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354900 (= res!196893 (validKeyInArray!0 (select (arr!9169 _keys!1456) from!1805)))))

(declare-fun b!354901 () Bool)

(declare-fun e!217471 () Bool)

(assert (=> b!354901 (= e!217473 (and e!217471 mapRes!13365))))

(declare-fun condMapEmpty!13365 () Bool)

(declare-fun mapDefault!13365 () ValueCell!3609)

(assert (=> b!354901 (= condMapEmpty!13365 (= (arr!9170 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3609)) mapDefault!13365)))))

(declare-fun b!354902 () Bool)

(declare-fun res!196892 () Bool)

(assert (=> b!354902 (=> (not res!196892) (not e!217474))))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!354902 (= res!196892 (validKeyInArray!0 k0!1077))))

(declare-fun b!354903 () Bool)

(declare-fun res!196890 () Bool)

(assert (=> b!354903 (=> (not res!196890) (not e!217474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19357 (_ BitVec 32)) Bool)

(assert (=> b!354903 (= res!196890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354904 () Bool)

(declare-fun res!196887 () Bool)

(assert (=> b!354904 (=> (not res!196887) (not e!217474))))

(assert (=> b!354904 (= res!196887 (= (select (arr!9169 _keys!1456) from!1805) k0!1077))))

(declare-fun mapNonEmpty!13365 () Bool)

(declare-fun tp!27302 () Bool)

(assert (=> mapNonEmpty!13365 (= mapRes!13365 (and tp!27302 e!217472))))

(declare-fun mapKey!13365 () (_ BitVec 32))

(declare-fun mapRest!13365 () (Array (_ BitVec 32) ValueCell!3609))

(declare-fun mapValue!13365 () ValueCell!3609)

(assert (=> mapNonEmpty!13365 (= (arr!9170 _values!1208) (store mapRest!13365 mapKey!13365 mapValue!13365))))

(declare-fun b!354905 () Bool)

(assert (=> b!354905 (= e!217474 (not true))))

(declare-fun minValue!1150 () V!11517)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11517)

(declare-datatypes ((tuple2!5676 0))(
  ( (tuple2!5677 (_1!2848 (_ BitVec 64)) (_2!2848 V!11517)) )
))
(declare-datatypes ((List!5341 0))(
  ( (Nil!5338) (Cons!5337 (h!6193 tuple2!5676) (t!10499 List!5341)) )
))
(declare-datatypes ((ListLongMap!4603 0))(
  ( (ListLongMap!4604 (toList!2317 List!5341)) )
))
(declare-fun contains!2393 (ListLongMap!4603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1834 (array!19357 array!19359 (_ BitVec 32) (_ BitVec 32) V!11517 V!11517 (_ BitVec 32) Int) ListLongMap!4603)

(assert (=> b!354905 (contains!2393 (getCurrentListMap!1834 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9169 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10943 0))(
  ( (Unit!10944) )
))
(declare-fun lt!165733 () Unit!10943)

(declare-fun lemmaValidKeyInArrayIsInListMap!184 (array!19357 array!19359 (_ BitVec 32) (_ BitVec 32) V!11517 V!11517 (_ BitVec 32) Int) Unit!10943)

(assert (=> b!354905 (= lt!165733 (lemmaValidKeyInArrayIsInListMap!184 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354906 () Bool)

(assert (=> b!354906 (= e!217471 tp_is_empty!7905)))

(declare-fun b!354907 () Bool)

(declare-fun res!196889 () Bool)

(assert (=> b!354907 (=> (not res!196889) (not e!217474))))

(declare-datatypes ((List!5342 0))(
  ( (Nil!5339) (Cons!5338 (h!6194 (_ BitVec 64)) (t!10500 List!5342)) )
))
(declare-fun arrayNoDuplicates!0 (array!19357 (_ BitVec 32) List!5342) Bool)

(assert (=> b!354907 (= res!196889 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5339))))

(declare-fun b!354908 () Bool)

(declare-fun res!196888 () Bool)

(assert (=> b!354908 (=> (not res!196888) (not e!217474))))

(declare-fun arrayContainsKey!0 (array!19357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354908 (= res!196888 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(assert (= (and start!35460 res!196894) b!354898))

(assert (= (and b!354898 res!196891) b!354903))

(assert (= (and b!354903 res!196890) b!354907))

(assert (= (and b!354907 res!196889) b!354902))

(assert (= (and b!354902 res!196892) b!354897))

(assert (= (and b!354897 res!196886) b!354908))

(assert (= (and b!354908 res!196888) b!354904))

(assert (= (and b!354904 res!196887) b!354900))

(assert (= (and b!354900 res!196893) b!354905))

(assert (= (and b!354901 condMapEmpty!13365) mapIsEmpty!13365))

(assert (= (and b!354901 (not condMapEmpty!13365)) mapNonEmpty!13365))

(get-info :version)

(assert (= (and mapNonEmpty!13365 ((_ is ValueCellFull!3609) mapValue!13365)) b!354899))

(assert (= (and b!354901 ((_ is ValueCellFull!3609) mapDefault!13365)) b!354906))

(assert (= start!35460 b!354901))

(declare-fun m!353753 () Bool)

(assert (=> start!35460 m!353753))

(declare-fun m!353755 () Bool)

(assert (=> start!35460 m!353755))

(declare-fun m!353757 () Bool)

(assert (=> start!35460 m!353757))

(declare-fun m!353759 () Bool)

(assert (=> b!354904 m!353759))

(declare-fun m!353761 () Bool)

(assert (=> b!354905 m!353761))

(assert (=> b!354905 m!353759))

(assert (=> b!354905 m!353761))

(assert (=> b!354905 m!353759))

(declare-fun m!353763 () Bool)

(assert (=> b!354905 m!353763))

(declare-fun m!353765 () Bool)

(assert (=> b!354905 m!353765))

(declare-fun m!353767 () Bool)

(assert (=> b!354907 m!353767))

(declare-fun m!353769 () Bool)

(assert (=> b!354902 m!353769))

(declare-fun m!353771 () Bool)

(assert (=> b!354908 m!353771))

(declare-fun m!353773 () Bool)

(assert (=> mapNonEmpty!13365 m!353773))

(assert (=> b!354900 m!353759))

(assert (=> b!354900 m!353759))

(declare-fun m!353775 () Bool)

(assert (=> b!354900 m!353775))

(declare-fun m!353777 () Bool)

(assert (=> b!354903 m!353777))

(check-sat (not b!354907) b_and!15099 (not b!354908) (not b!354905) tp_is_empty!7905 (not b!354903) (not mapNonEmpty!13365) (not start!35460) (not b_next!7839) (not b!354902) (not b!354900))
(check-sat b_and!15099 (not b_next!7839))
