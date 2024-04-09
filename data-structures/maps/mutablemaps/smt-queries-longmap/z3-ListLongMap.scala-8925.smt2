; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108270 () Bool)

(assert start!108270)

(declare-fun b_free!27915 () Bool)

(declare-fun b_next!27915 () Bool)

(assert (=> start!108270 (= b_free!27915 (not b_next!27915))))

(declare-fun tp!98705 () Bool)

(declare-fun b_and!45985 () Bool)

(assert (=> start!108270 (= tp!98705 b_and!45985)))

(declare-fun b!1277947 () Bool)

(declare-fun res!849182 () Bool)

(declare-fun e!729931 () Bool)

(assert (=> b!1277947 (=> (not res!849182) (not e!729931))))

(declare-datatypes ((array!83967 0))(
  ( (array!83968 (arr!40488 (Array (_ BitVec 32) (_ BitVec 64))) (size!41039 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83967)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83967 (_ BitVec 32)) Bool)

(assert (=> b!1277947 (= res!849182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277948 () Bool)

(declare-fun e!729927 () Bool)

(declare-fun tp_is_empty!33465 () Bool)

(assert (=> b!1277948 (= e!729927 tp_is_empty!33465)))

(declare-fun b!1277949 () Bool)

(declare-fun e!729929 () Bool)

(declare-fun mapRes!51734 () Bool)

(assert (=> b!1277949 (= e!729929 (and e!729927 mapRes!51734))))

(declare-fun condMapEmpty!51734 () Bool)

(declare-datatypes ((V!49723 0))(
  ( (V!49724 (val!16807 Int)) )
))
(declare-datatypes ((ValueCell!15834 0))(
  ( (ValueCellFull!15834 (v!19404 V!49723)) (EmptyCell!15834) )
))
(declare-datatypes ((array!83969 0))(
  ( (array!83970 (arr!40489 (Array (_ BitVec 32) ValueCell!15834)) (size!41040 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83969)

(declare-fun mapDefault!51734 () ValueCell!15834)

(assert (=> b!1277949 (= condMapEmpty!51734 (= (arr!40489 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15834)) mapDefault!51734)))))

(declare-fun res!849186 () Bool)

(assert (=> start!108270 (=> (not res!849186) (not e!729931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108270 (= res!849186 (validMask!0 mask!1805))))

(assert (=> start!108270 e!729931))

(assert (=> start!108270 true))

(assert (=> start!108270 tp!98705))

(assert (=> start!108270 tp_is_empty!33465))

(declare-fun array_inv!30731 (array!83969) Bool)

(assert (=> start!108270 (and (array_inv!30731 _values!1187) e!729929)))

(declare-fun array_inv!30732 (array!83967) Bool)

(assert (=> start!108270 (array_inv!30732 _keys!1427)))

(declare-fun mapNonEmpty!51734 () Bool)

(declare-fun tp!98706 () Bool)

(declare-fun e!729932 () Bool)

(assert (=> mapNonEmpty!51734 (= mapRes!51734 (and tp!98706 e!729932))))

(declare-fun mapValue!51734 () ValueCell!15834)

(declare-fun mapKey!51734 () (_ BitVec 32))

(declare-fun mapRest!51734 () (Array (_ BitVec 32) ValueCell!15834))

(assert (=> mapNonEmpty!51734 (= (arr!40489 _values!1187) (store mapRest!51734 mapKey!51734 mapValue!51734))))

(declare-fun b!1277950 () Bool)

(declare-fun res!849183 () Bool)

(assert (=> b!1277950 (=> (not res!849183) (not e!729931))))

(assert (=> b!1277950 (= res!849183 (bvslt #b00000000000000000000000000000000 (size!41039 _keys!1427)))))

(declare-fun b!1277951 () Bool)

(declare-fun res!849181 () Bool)

(assert (=> b!1277951 (=> (not res!849181) (not e!729931))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49723)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49723)

(declare-datatypes ((tuple2!21708 0))(
  ( (tuple2!21709 (_1!10864 (_ BitVec 64)) (_2!10864 V!49723)) )
))
(declare-datatypes ((List!28897 0))(
  ( (Nil!28894) (Cons!28893 (h!30102 tuple2!21708) (t!42444 List!28897)) )
))
(declare-datatypes ((ListLongMap!19377 0))(
  ( (ListLongMap!19378 (toList!9704 List!28897)) )
))
(declare-fun contains!7753 (ListLongMap!19377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4724 (array!83967 array!83969 (_ BitVec 32) (_ BitVec 32) V!49723 V!49723 (_ BitVec 32) Int) ListLongMap!19377)

(assert (=> b!1277951 (= res!849181 (contains!7753 (getCurrentListMap!4724 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277952 () Bool)

(declare-fun e!729928 () Bool)

(assert (=> b!1277952 (= e!729928 (ite (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1277953 () Bool)

(declare-fun arrayContainsKey!0 (array!83967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1277953 (= e!729928 (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000))))

(declare-fun b!1277954 () Bool)

(assert (=> b!1277954 (= e!729931 (not true))))

(assert (=> b!1277954 e!729928))

(declare-fun c!123966 () Bool)

(assert (=> b!1277954 (= c!123966 (and (not (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42327 0))(
  ( (Unit!42328) )
))
(declare-fun lt!575778 () Unit!42327)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!633 (array!83967 array!83969 (_ BitVec 32) (_ BitVec 32) V!49723 V!49723 (_ BitVec 64) (_ BitVec 32) Int) Unit!42327)

(assert (=> b!1277954 (= lt!575778 (lemmaListMapContainsThenArrayContainsFrom!633 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1277955 () Bool)

(assert (=> b!1277955 (= e!729932 tp_is_empty!33465)))

(declare-fun b!1277956 () Bool)

(declare-fun res!849184 () Bool)

(assert (=> b!1277956 (=> (not res!849184) (not e!729931))))

(assert (=> b!1277956 (= res!849184 (and (= (size!41040 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41039 _keys!1427) (size!41040 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277957 () Bool)

(declare-fun res!849185 () Bool)

(assert (=> b!1277957 (=> (not res!849185) (not e!729931))))

(declare-datatypes ((List!28898 0))(
  ( (Nil!28895) (Cons!28894 (h!30103 (_ BitVec 64)) (t!42445 List!28898)) )
))
(declare-fun arrayNoDuplicates!0 (array!83967 (_ BitVec 32) List!28898) Bool)

(assert (=> b!1277957 (= res!849185 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28895))))

(declare-fun mapIsEmpty!51734 () Bool)

(assert (=> mapIsEmpty!51734 mapRes!51734))

(assert (= (and start!108270 res!849186) b!1277956))

(assert (= (and b!1277956 res!849184) b!1277947))

(assert (= (and b!1277947 res!849182) b!1277957))

(assert (= (and b!1277957 res!849185) b!1277951))

(assert (= (and b!1277951 res!849181) b!1277950))

(assert (= (and b!1277950 res!849183) b!1277954))

(assert (= (and b!1277954 c!123966) b!1277953))

(assert (= (and b!1277954 (not c!123966)) b!1277952))

(assert (= (and b!1277949 condMapEmpty!51734) mapIsEmpty!51734))

(assert (= (and b!1277949 (not condMapEmpty!51734)) mapNonEmpty!51734))

(get-info :version)

(assert (= (and mapNonEmpty!51734 ((_ is ValueCellFull!15834) mapValue!51734)) b!1277955))

(assert (= (and b!1277949 ((_ is ValueCellFull!15834) mapDefault!51734)) b!1277948))

(assert (= start!108270 b!1277949))

(declare-fun m!1173447 () Bool)

(assert (=> b!1277953 m!1173447))

(declare-fun m!1173449 () Bool)

(assert (=> mapNonEmpty!51734 m!1173449))

(declare-fun m!1173451 () Bool)

(assert (=> start!108270 m!1173451))

(declare-fun m!1173453 () Bool)

(assert (=> start!108270 m!1173453))

(declare-fun m!1173455 () Bool)

(assert (=> start!108270 m!1173455))

(declare-fun m!1173457 () Bool)

(assert (=> b!1277954 m!1173457))

(declare-fun m!1173459 () Bool)

(assert (=> b!1277957 m!1173459))

(declare-fun m!1173461 () Bool)

(assert (=> b!1277951 m!1173461))

(assert (=> b!1277951 m!1173461))

(declare-fun m!1173463 () Bool)

(assert (=> b!1277951 m!1173463))

(declare-fun m!1173465 () Bool)

(assert (=> b!1277947 m!1173465))

(check-sat (not b!1277953) (not b_next!27915) (not start!108270) (not b!1277954) b_and!45985 (not b!1277947) (not b!1277951) tp_is_empty!33465 (not mapNonEmpty!51734) (not b!1277957))
(check-sat b_and!45985 (not b_next!27915))
