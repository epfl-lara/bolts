; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35466 () Bool)

(assert start!35466)

(declare-fun b_free!7845 () Bool)

(declare-fun b_next!7845 () Bool)

(assert (=> start!35466 (= b_free!7845 (not b_next!7845))))

(declare-fun tp!27321 () Bool)

(declare-fun b_and!15105 () Bool)

(assert (=> start!35466 (= tp!27321 b_and!15105)))

(declare-fun b!355005 () Bool)

(declare-fun res!196975 () Bool)

(declare-fun e!217517 () Bool)

(assert (=> b!355005 (=> (not res!196975) (not e!217517))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19369 0))(
  ( (array!19370 (arr!9175 (Array (_ BitVec 32) (_ BitVec 64))) (size!9527 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19369)

(assert (=> b!355005 (= res!196975 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9527 _keys!1456))))))

(declare-fun b!355006 () Bool)

(declare-fun res!196973 () Bool)

(assert (=> b!355006 (=> (not res!196973) (not e!217517))))

(declare-datatypes ((List!5344 0))(
  ( (Nil!5341) (Cons!5340 (h!6196 (_ BitVec 64)) (t!10502 List!5344)) )
))
(declare-fun arrayNoDuplicates!0 (array!19369 (_ BitVec 32) List!5344) Bool)

(assert (=> b!355006 (= res!196973 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5341))))

(declare-fun b!355007 () Bool)

(declare-fun e!217518 () Bool)

(declare-fun e!217516 () Bool)

(declare-fun mapRes!13374 () Bool)

(assert (=> b!355007 (= e!217518 (and e!217516 mapRes!13374))))

(declare-fun condMapEmpty!13374 () Bool)

(declare-datatypes ((V!11525 0))(
  ( (V!11526 (val!4000 Int)) )
))
(declare-datatypes ((ValueCell!3612 0))(
  ( (ValueCellFull!3612 (v!6190 V!11525)) (EmptyCell!3612) )
))
(declare-datatypes ((array!19371 0))(
  ( (array!19372 (arr!9176 (Array (_ BitVec 32) ValueCell!3612)) (size!9528 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19371)

(declare-fun mapDefault!13374 () ValueCell!3612)

(assert (=> b!355007 (= condMapEmpty!13374 (= (arr!9176 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3612)) mapDefault!13374)))))

(declare-fun mapIsEmpty!13374 () Bool)

(assert (=> mapIsEmpty!13374 mapRes!13374))

(declare-fun b!355008 () Bool)

(declare-fun res!196971 () Bool)

(assert (=> b!355008 (=> (not res!196971) (not e!217517))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!355008 (= res!196971 (and (= (size!9528 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9527 _keys!1456) (size!9528 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!196968 () Bool)

(assert (=> start!35466 (=> (not res!196968) (not e!217517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35466 (= res!196968 (validMask!0 mask!1842))))

(assert (=> start!35466 e!217517))

(declare-fun tp_is_empty!7911 () Bool)

(assert (=> start!35466 tp_is_empty!7911))

(assert (=> start!35466 true))

(assert (=> start!35466 tp!27321))

(declare-fun array_inv!6754 (array!19369) Bool)

(assert (=> start!35466 (array_inv!6754 _keys!1456)))

(declare-fun array_inv!6755 (array!19371) Bool)

(assert (=> start!35466 (and (array_inv!6755 _values!1208) e!217518)))

(declare-fun b!355009 () Bool)

(declare-fun res!196969 () Bool)

(assert (=> b!355009 (=> (not res!196969) (not e!217517))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355009 (= res!196969 (validKeyInArray!0 k0!1077))))

(declare-fun b!355010 () Bool)

(declare-fun e!217519 () Bool)

(assert (=> b!355010 (= e!217519 tp_is_empty!7911)))

(declare-fun b!355011 () Bool)

(assert (=> b!355011 (= e!217517 (not true))))

(declare-fun minValue!1150 () V!11525)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11525)

(declare-datatypes ((tuple2!5680 0))(
  ( (tuple2!5681 (_1!2850 (_ BitVec 64)) (_2!2850 V!11525)) )
))
(declare-datatypes ((List!5345 0))(
  ( (Nil!5342) (Cons!5341 (h!6197 tuple2!5680) (t!10503 List!5345)) )
))
(declare-datatypes ((ListLongMap!4607 0))(
  ( (ListLongMap!4608 (toList!2319 List!5345)) )
))
(declare-fun contains!2395 (ListLongMap!4607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1836 (array!19369 array!19371 (_ BitVec 32) (_ BitVec 32) V!11525 V!11525 (_ BitVec 32) Int) ListLongMap!4607)

(assert (=> b!355011 (contains!2395 (getCurrentListMap!1836 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9175 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10947 0))(
  ( (Unit!10948) )
))
(declare-fun lt!165742 () Unit!10947)

(declare-fun lemmaValidKeyInArrayIsInListMap!186 (array!19369 array!19371 (_ BitVec 32) (_ BitVec 32) V!11525 V!11525 (_ BitVec 32) Int) Unit!10947)

(assert (=> b!355011 (= lt!165742 (lemmaValidKeyInArrayIsInListMap!186 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355012 () Bool)

(declare-fun res!196972 () Bool)

(assert (=> b!355012 (=> (not res!196972) (not e!217517))))

(declare-fun arrayContainsKey!0 (array!19369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355012 (= res!196972 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!355013 () Bool)

(declare-fun res!196967 () Bool)

(assert (=> b!355013 (=> (not res!196967) (not e!217517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19369 (_ BitVec 32)) Bool)

(assert (=> b!355013 (= res!196967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355014 () Bool)

(declare-fun res!196970 () Bool)

(assert (=> b!355014 (=> (not res!196970) (not e!217517))))

(assert (=> b!355014 (= res!196970 (validKeyInArray!0 (select (arr!9175 _keys!1456) from!1805)))))

(declare-fun mapNonEmpty!13374 () Bool)

(declare-fun tp!27320 () Bool)

(assert (=> mapNonEmpty!13374 (= mapRes!13374 (and tp!27320 e!217519))))

(declare-fun mapValue!13374 () ValueCell!3612)

(declare-fun mapRest!13374 () (Array (_ BitVec 32) ValueCell!3612))

(declare-fun mapKey!13374 () (_ BitVec 32))

(assert (=> mapNonEmpty!13374 (= (arr!9176 _values!1208) (store mapRest!13374 mapKey!13374 mapValue!13374))))

(declare-fun b!355015 () Bool)

(assert (=> b!355015 (= e!217516 tp_is_empty!7911)))

(declare-fun b!355016 () Bool)

(declare-fun res!196974 () Bool)

(assert (=> b!355016 (=> (not res!196974) (not e!217517))))

(assert (=> b!355016 (= res!196974 (= (select (arr!9175 _keys!1456) from!1805) k0!1077))))

(assert (= (and start!35466 res!196968) b!355008))

(assert (= (and b!355008 res!196971) b!355013))

(assert (= (and b!355013 res!196967) b!355006))

(assert (= (and b!355006 res!196973) b!355009))

(assert (= (and b!355009 res!196969) b!355005))

(assert (= (and b!355005 res!196975) b!355012))

(assert (= (and b!355012 res!196972) b!355016))

(assert (= (and b!355016 res!196974) b!355014))

(assert (= (and b!355014 res!196970) b!355011))

(assert (= (and b!355007 condMapEmpty!13374) mapIsEmpty!13374))

(assert (= (and b!355007 (not condMapEmpty!13374)) mapNonEmpty!13374))

(get-info :version)

(assert (= (and mapNonEmpty!13374 ((_ is ValueCellFull!3612) mapValue!13374)) b!355010))

(assert (= (and b!355007 ((_ is ValueCellFull!3612) mapDefault!13374)) b!355015))

(assert (= start!35466 b!355007))

(declare-fun m!353831 () Bool)

(assert (=> b!355006 m!353831))

(declare-fun m!353833 () Bool)

(assert (=> b!355011 m!353833))

(declare-fun m!353835 () Bool)

(assert (=> b!355011 m!353835))

(assert (=> b!355011 m!353833))

(assert (=> b!355011 m!353835))

(declare-fun m!353837 () Bool)

(assert (=> b!355011 m!353837))

(declare-fun m!353839 () Bool)

(assert (=> b!355011 m!353839))

(declare-fun m!353841 () Bool)

(assert (=> mapNonEmpty!13374 m!353841))

(assert (=> b!355016 m!353835))

(declare-fun m!353843 () Bool)

(assert (=> b!355013 m!353843))

(declare-fun m!353845 () Bool)

(assert (=> start!35466 m!353845))

(declare-fun m!353847 () Bool)

(assert (=> start!35466 m!353847))

(declare-fun m!353849 () Bool)

(assert (=> start!35466 m!353849))

(assert (=> b!355014 m!353835))

(assert (=> b!355014 m!353835))

(declare-fun m!353851 () Bool)

(assert (=> b!355014 m!353851))

(declare-fun m!353853 () Bool)

(assert (=> b!355012 m!353853))

(declare-fun m!353855 () Bool)

(assert (=> b!355009 m!353855))

(check-sat (not b!355006) b_and!15105 (not start!35466) (not mapNonEmpty!13374) tp_is_empty!7911 (not b!355012) (not b!355013) (not b_next!7845) (not b!355009) (not b!355011) (not b!355014))
(check-sat b_and!15105 (not b_next!7845))
