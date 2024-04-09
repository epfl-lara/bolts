; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108244 () Bool)

(assert start!108244)

(declare-fun b_free!27903 () Bool)

(declare-fun b_next!27903 () Bool)

(assert (=> start!108244 (= b_free!27903 (not b_next!27903))))

(declare-fun tp!98667 () Bool)

(declare-fun b_and!45971 () Bool)

(assert (=> start!108244 (= tp!98667 b_and!45971)))

(declare-fun b!1277688 () Bool)

(declare-fun res!849054 () Bool)

(declare-fun e!729763 () Bool)

(assert (=> b!1277688 (=> (not res!849054) (not e!729763))))

(declare-datatypes ((array!83941 0))(
  ( (array!83942 (arr!40476 (Array (_ BitVec 32) (_ BitVec 64))) (size!41027 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83941)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83941 (_ BitVec 32)) Bool)

(assert (=> b!1277688 (= res!849054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapNonEmpty!51713 () Bool)

(declare-fun mapRes!51713 () Bool)

(declare-fun tp!98666 () Bool)

(declare-fun e!729764 () Bool)

(assert (=> mapNonEmpty!51713 (= mapRes!51713 (and tp!98666 e!729764))))

(declare-datatypes ((V!49707 0))(
  ( (V!49708 (val!16801 Int)) )
))
(declare-datatypes ((ValueCell!15828 0))(
  ( (ValueCellFull!15828 (v!19397 V!49707)) (EmptyCell!15828) )
))
(declare-fun mapRest!51713 () (Array (_ BitVec 32) ValueCell!15828))

(declare-fun mapKey!51713 () (_ BitVec 32))

(declare-datatypes ((array!83943 0))(
  ( (array!83944 (arr!40477 (Array (_ BitVec 32) ValueCell!15828)) (size!41028 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83943)

(declare-fun mapValue!51713 () ValueCell!15828)

(assert (=> mapNonEmpty!51713 (= (arr!40477 _values!1187) (store mapRest!51713 mapKey!51713 mapValue!51713))))

(declare-fun b!1277689 () Bool)

(declare-fun res!849051 () Bool)

(assert (=> b!1277689 (=> (not res!849051) (not e!729763))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49707)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49707)

(declare-datatypes ((tuple2!21700 0))(
  ( (tuple2!21701 (_1!10860 (_ BitVec 64)) (_2!10860 V!49707)) )
))
(declare-datatypes ((List!28887 0))(
  ( (Nil!28884) (Cons!28883 (h!30092 tuple2!21700) (t!42432 List!28887)) )
))
(declare-datatypes ((ListLongMap!19369 0))(
  ( (ListLongMap!19370 (toList!9700 List!28887)) )
))
(declare-fun contains!7748 (ListLongMap!19369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4720 (array!83941 array!83943 (_ BitVec 32) (_ BitVec 32) V!49707 V!49707 (_ BitVec 32) Int) ListLongMap!19369)

(assert (=> b!1277689 (= res!849051 (contains!7748 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun res!849052 () Bool)

(assert (=> start!108244 (=> (not res!849052) (not e!729763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108244 (= res!849052 (validMask!0 mask!1805))))

(assert (=> start!108244 e!729763))

(assert (=> start!108244 true))

(assert (=> start!108244 tp!98667))

(declare-fun tp_is_empty!33453 () Bool)

(assert (=> start!108244 tp_is_empty!33453))

(declare-fun e!729760 () Bool)

(declare-fun array_inv!30719 (array!83943) Bool)

(assert (=> start!108244 (and (array_inv!30719 _values!1187) e!729760)))

(declare-fun array_inv!30720 (array!83941) Bool)

(assert (=> start!108244 (array_inv!30720 _keys!1427)))

(declare-fun mapIsEmpty!51713 () Bool)

(assert (=> mapIsEmpty!51713 mapRes!51713))

(declare-fun b!1277690 () Bool)

(assert (=> b!1277690 (= e!729763 (bvsge #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(declare-fun b!1277691 () Bool)

(declare-fun e!729761 () Bool)

(assert (=> b!1277691 (= e!729761 tp_is_empty!33453)))

(declare-fun b!1277692 () Bool)

(assert (=> b!1277692 (= e!729764 tp_is_empty!33453)))

(declare-fun b!1277693 () Bool)

(assert (=> b!1277693 (= e!729760 (and e!729761 mapRes!51713))))

(declare-fun condMapEmpty!51713 () Bool)

(declare-fun mapDefault!51713 () ValueCell!15828)

(assert (=> b!1277693 (= condMapEmpty!51713 (= (arr!40477 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15828)) mapDefault!51713)))))

(declare-fun b!1277694 () Bool)

(declare-fun res!849053 () Bool)

(assert (=> b!1277694 (=> (not res!849053) (not e!729763))))

(assert (=> b!1277694 (= res!849053 (and (= (size!41028 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41027 _keys!1427) (size!41028 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277695 () Bool)

(declare-fun res!849050 () Bool)

(assert (=> b!1277695 (=> (not res!849050) (not e!729763))))

(declare-datatypes ((List!28888 0))(
  ( (Nil!28885) (Cons!28884 (h!30093 (_ BitVec 64)) (t!42433 List!28888)) )
))
(declare-fun arrayNoDuplicates!0 (array!83941 (_ BitVec 32) List!28888) Bool)

(assert (=> b!1277695 (= res!849050 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28885))))

(assert (= (and start!108244 res!849052) b!1277694))

(assert (= (and b!1277694 res!849053) b!1277688))

(assert (= (and b!1277688 res!849054) b!1277695))

(assert (= (and b!1277695 res!849050) b!1277689))

(assert (= (and b!1277689 res!849051) b!1277690))

(assert (= (and b!1277693 condMapEmpty!51713) mapIsEmpty!51713))

(assert (= (and b!1277693 (not condMapEmpty!51713)) mapNonEmpty!51713))

(get-info :version)

(assert (= (and mapNonEmpty!51713 ((_ is ValueCellFull!15828) mapValue!51713)) b!1277692))

(assert (= (and b!1277693 ((_ is ValueCellFull!15828) mapDefault!51713)) b!1277691))

(assert (= start!108244 b!1277693))

(declare-fun m!1173267 () Bool)

(assert (=> mapNonEmpty!51713 m!1173267))

(declare-fun m!1173269 () Bool)

(assert (=> b!1277689 m!1173269))

(assert (=> b!1277689 m!1173269))

(declare-fun m!1173271 () Bool)

(assert (=> b!1277689 m!1173271))

(declare-fun m!1173273 () Bool)

(assert (=> start!108244 m!1173273))

(declare-fun m!1173275 () Bool)

(assert (=> start!108244 m!1173275))

(declare-fun m!1173277 () Bool)

(assert (=> start!108244 m!1173277))

(declare-fun m!1173279 () Bool)

(assert (=> b!1277688 m!1173279))

(declare-fun m!1173281 () Bool)

(assert (=> b!1277695 m!1173281))

(check-sat (not b_next!27903) (not b!1277695) (not b!1277688) b_and!45971 (not b!1277689) tp_is_empty!33453 (not start!108244) (not mapNonEmpty!51713))
(check-sat b_and!45971 (not b_next!27903))
(get-model)

(declare-fun d!140401 () Bool)

(declare-fun e!729785 () Bool)

(assert (=> d!140401 e!729785))

(declare-fun res!849072 () Bool)

(assert (=> d!140401 (=> res!849072 e!729785)))

(declare-fun lt!575687 () Bool)

(assert (=> d!140401 (= res!849072 (not lt!575687))))

(declare-fun lt!575686 () Bool)

(assert (=> d!140401 (= lt!575687 lt!575686)))

(declare-datatypes ((Unit!42321 0))(
  ( (Unit!42322) )
))
(declare-fun lt!575685 () Unit!42321)

(declare-fun e!729784 () Unit!42321)

(assert (=> d!140401 (= lt!575685 e!729784)))

(declare-fun c!123936 () Bool)

(assert (=> d!140401 (= c!123936 lt!575686)))

(declare-fun containsKey!711 (List!28887 (_ BitVec 64)) Bool)

(assert (=> d!140401 (= lt!575686 (containsKey!711 (toList!9700 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(assert (=> d!140401 (= (contains!7748 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053) lt!575687)))

(declare-fun b!1277726 () Bool)

(declare-fun lt!575688 () Unit!42321)

(assert (=> b!1277726 (= e!729784 lt!575688)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!456 (List!28887 (_ BitVec 64)) Unit!42321)

(assert (=> b!1277726 (= lt!575688 (lemmaContainsKeyImpliesGetValueByKeyDefined!456 (toList!9700 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(declare-datatypes ((Option!744 0))(
  ( (Some!743 (v!19399 V!49707)) (None!742) )
))
(declare-fun isDefined!496 (Option!744) Bool)

(declare-fun getValueByKey!693 (List!28887 (_ BitVec 64)) Option!744)

(assert (=> b!1277726 (isDefined!496 (getValueByKey!693 (toList!9700 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(declare-fun b!1277727 () Bool)

(declare-fun Unit!42323 () Unit!42321)

(assert (=> b!1277727 (= e!729784 Unit!42323)))

(declare-fun b!1277728 () Bool)

(assert (=> b!1277728 (= e!729785 (isDefined!496 (getValueByKey!693 (toList!9700 (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053)))))

(assert (= (and d!140401 c!123936) b!1277726))

(assert (= (and d!140401 (not c!123936)) b!1277727))

(assert (= (and d!140401 (not res!849072)) b!1277728))

(declare-fun m!1173299 () Bool)

(assert (=> d!140401 m!1173299))

(declare-fun m!1173301 () Bool)

(assert (=> b!1277726 m!1173301))

(declare-fun m!1173303 () Bool)

(assert (=> b!1277726 m!1173303))

(assert (=> b!1277726 m!1173303))

(declare-fun m!1173305 () Bool)

(assert (=> b!1277726 m!1173305))

(assert (=> b!1277728 m!1173303))

(assert (=> b!1277728 m!1173303))

(assert (=> b!1277728 m!1173305))

(assert (=> b!1277689 d!140401))

(declare-fun b!1277771 () Bool)

(declare-fun res!849095 () Bool)

(declare-fun e!729821 () Bool)

(assert (=> b!1277771 (=> (not res!849095) (not e!729821))))

(declare-fun e!729824 () Bool)

(assert (=> b!1277771 (= res!849095 e!729824)))

(declare-fun c!123953 () Bool)

(assert (=> b!1277771 (= c!123953 (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1277772 () Bool)

(declare-fun e!729812 () Bool)

(declare-fun e!729815 () Bool)

(assert (=> b!1277772 (= e!729812 e!729815)))

(declare-fun res!849097 () Bool)

(declare-fun call!62692 () Bool)

(assert (=> b!1277772 (= res!849097 call!62692)))

(assert (=> b!1277772 (=> (not res!849097) (not e!729815))))

(declare-fun b!1277773 () Bool)

(declare-fun e!729818 () Unit!42321)

(declare-fun lt!575736 () Unit!42321)

(assert (=> b!1277773 (= e!729818 lt!575736)))

(declare-fun lt!575751 () ListLongMap!19369)

(declare-fun getCurrentListMapNoExtraKeys!5956 (array!83941 array!83943 (_ BitVec 32) (_ BitVec 32) V!49707 V!49707 (_ BitVec 32) Int) ListLongMap!19369)

(assert (=> b!1277773 (= lt!575751 (getCurrentListMapNoExtraKeys!5956 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575746 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575749 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575749 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575744 () Unit!42321)

(declare-fun addStillContains!1112 (ListLongMap!19369 (_ BitVec 64) V!49707 (_ BitVec 64)) Unit!42321)

(assert (=> b!1277773 (= lt!575744 (addStillContains!1112 lt!575751 lt!575746 zeroValue!1129 lt!575749))))

(declare-fun +!4245 (ListLongMap!19369 tuple2!21700) ListLongMap!19369)

(assert (=> b!1277773 (contains!7748 (+!4245 lt!575751 (tuple2!21701 lt!575746 zeroValue!1129)) lt!575749)))

(declare-fun lt!575752 () Unit!42321)

(assert (=> b!1277773 (= lt!575752 lt!575744)))

(declare-fun lt!575741 () ListLongMap!19369)

(assert (=> b!1277773 (= lt!575741 (getCurrentListMapNoExtraKeys!5956 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575742 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575742 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575747 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575747 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575748 () Unit!42321)

(declare-fun addApplyDifferent!546 (ListLongMap!19369 (_ BitVec 64) V!49707 (_ BitVec 64)) Unit!42321)

(assert (=> b!1277773 (= lt!575748 (addApplyDifferent!546 lt!575741 lt!575742 minValue!1129 lt!575747))))

(declare-fun apply!1043 (ListLongMap!19369 (_ BitVec 64)) V!49707)

(assert (=> b!1277773 (= (apply!1043 (+!4245 lt!575741 (tuple2!21701 lt!575742 minValue!1129)) lt!575747) (apply!1043 lt!575741 lt!575747))))

(declare-fun lt!575737 () Unit!42321)

(assert (=> b!1277773 (= lt!575737 lt!575748)))

(declare-fun lt!575733 () ListLongMap!19369)

(assert (=> b!1277773 (= lt!575733 (getCurrentListMapNoExtraKeys!5956 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575750 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575750 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575743 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575743 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575745 () Unit!42321)

(assert (=> b!1277773 (= lt!575745 (addApplyDifferent!546 lt!575733 lt!575750 zeroValue!1129 lt!575743))))

(assert (=> b!1277773 (= (apply!1043 (+!4245 lt!575733 (tuple2!21701 lt!575750 zeroValue!1129)) lt!575743) (apply!1043 lt!575733 lt!575743))))

(declare-fun lt!575738 () Unit!42321)

(assert (=> b!1277773 (= lt!575738 lt!575745)))

(declare-fun lt!575753 () ListLongMap!19369)

(assert (=> b!1277773 (= lt!575753 (getCurrentListMapNoExtraKeys!5956 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575754 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575754 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575740 () (_ BitVec 64))

(assert (=> b!1277773 (= lt!575740 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> b!1277773 (= lt!575736 (addApplyDifferent!546 lt!575753 lt!575754 minValue!1129 lt!575740))))

(assert (=> b!1277773 (= (apply!1043 (+!4245 lt!575753 (tuple2!21701 lt!575754 minValue!1129)) lt!575740) (apply!1043 lt!575753 lt!575740))))

(declare-fun bm!62685 () Bool)

(declare-fun lt!575734 () ListLongMap!19369)

(assert (=> bm!62685 (= call!62692 (contains!7748 lt!575734 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1277774 () Bool)

(declare-fun e!729823 () Bool)

(assert (=> b!1277774 (= e!729823 (= (apply!1043 lt!575734 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1129))))

(declare-fun bm!62686 () Bool)

(declare-fun call!62691 () ListLongMap!19369)

(assert (=> bm!62686 (= call!62691 (getCurrentListMapNoExtraKeys!5956 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun bm!62687 () Bool)

(declare-fun call!62694 () ListLongMap!19369)

(assert (=> bm!62687 (= call!62694 call!62691)))

(declare-fun b!1277775 () Bool)

(declare-fun Unit!42324 () Unit!42321)

(assert (=> b!1277775 (= e!729818 Unit!42324)))

(declare-fun bm!62688 () Bool)

(declare-fun call!62690 () ListLongMap!19369)

(declare-fun call!62688 () ListLongMap!19369)

(assert (=> bm!62688 (= call!62690 call!62688)))

(declare-fun b!1277776 () Bool)

(assert (=> b!1277776 (= e!729812 (not call!62692))))

(declare-fun b!1277777 () Bool)

(declare-fun c!123952 () Bool)

(assert (=> b!1277777 (= c!123952 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!729817 () ListLongMap!19369)

(declare-fun e!729822 () ListLongMap!19369)

(assert (=> b!1277777 (= e!729817 e!729822)))

(declare-fun bm!62689 () Bool)

(declare-fun call!62693 () ListLongMap!19369)

(assert (=> bm!62689 (= call!62693 call!62694)))

(declare-fun b!1277778 () Bool)

(assert (=> b!1277778 (= e!729824 e!729823)))

(declare-fun res!849093 () Bool)

(declare-fun call!62689 () Bool)

(assert (=> b!1277778 (= res!849093 call!62689)))

(assert (=> b!1277778 (=> (not res!849093) (not e!729823))))

(declare-fun b!1277779 () Bool)

(assert (=> b!1277779 (= e!729824 (not call!62689))))

(declare-fun b!1277780 () Bool)

(declare-fun e!729819 () Bool)

(declare-fun get!20691 (ValueCell!15828 V!49707) V!49707)

(declare-fun dynLambda!3488 (Int (_ BitVec 64)) V!49707)

(assert (=> b!1277780 (= e!729819 (= (apply!1043 lt!575734 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)) (get!20691 (select (arr!40477 _values!1187) #b00000000000000000000000000000000) (dynLambda!3488 defaultEntry!1195 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1277780 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!41028 _values!1187)))))

(assert (=> b!1277780 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(declare-fun b!1277781 () Bool)

(assert (=> b!1277781 (= e!729821 e!729812)))

(declare-fun c!123951 () Bool)

(assert (=> b!1277781 (= c!123951 (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1277782 () Bool)

(assert (=> b!1277782 (= e!729817 call!62690)))

(declare-fun b!1277783 () Bool)

(declare-fun e!729820 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1277783 (= e!729820 (validKeyInArray!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277784 () Bool)

(declare-fun e!729813 () Bool)

(assert (=> b!1277784 (= e!729813 e!729819)))

(declare-fun res!849092 () Bool)

(assert (=> b!1277784 (=> (not res!849092) (not e!729819))))

(assert (=> b!1277784 (= res!849092 (contains!7748 lt!575734 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(assert (=> b!1277784 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(declare-fun d!140403 () Bool)

(assert (=> d!140403 e!729821))

(declare-fun res!849091 () Bool)

(assert (=> d!140403 (=> (not res!849091) (not e!729821))))

(assert (=> d!140403 (= res!849091 (or (bvsge #b00000000000000000000000000000000 (size!41027 _keys!1427)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!41027 _keys!1427)))))))

(declare-fun lt!575739 () ListLongMap!19369)

(assert (=> d!140403 (= lt!575734 lt!575739)))

(declare-fun lt!575735 () Unit!42321)

(assert (=> d!140403 (= lt!575735 e!729818)))

(declare-fun c!123950 () Bool)

(declare-fun e!729814 () Bool)

(assert (=> d!140403 (= c!123950 e!729814)))

(declare-fun res!849094 () Bool)

(assert (=> d!140403 (=> (not res!849094) (not e!729814))))

(assert (=> d!140403 (= res!849094 (bvslt #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(declare-fun e!729816 () ListLongMap!19369)

(assert (=> d!140403 (= lt!575739 e!729816)))

(declare-fun c!123954 () Bool)

(assert (=> d!140403 (= c!123954 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140403 (validMask!0 mask!1805)))

(assert (=> d!140403 (= (getCurrentListMap!4720 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) lt!575734)))

(declare-fun c!123949 () Bool)

(declare-fun bm!62690 () Bool)

(assert (=> bm!62690 (= call!62688 (+!4245 (ite c!123954 call!62691 (ite c!123949 call!62694 call!62693)) (ite (or c!123954 c!123949) (tuple2!21701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1129) (tuple2!21701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1129))))))

(declare-fun bm!62691 () Bool)

(assert (=> bm!62691 (= call!62689 (contains!7748 lt!575734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1277785 () Bool)

(assert (=> b!1277785 (= e!729816 (+!4245 call!62688 (tuple2!21701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1129)))))

(declare-fun b!1277786 () Bool)

(declare-fun res!849099 () Bool)

(assert (=> b!1277786 (=> (not res!849099) (not e!729821))))

(assert (=> b!1277786 (= res!849099 e!729813)))

(declare-fun res!849096 () Bool)

(assert (=> b!1277786 (=> res!849096 e!729813)))

(assert (=> b!1277786 (= res!849096 (not e!729820))))

(declare-fun res!849098 () Bool)

(assert (=> b!1277786 (=> (not res!849098) (not e!729820))))

(assert (=> b!1277786 (= res!849098 (bvslt #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(declare-fun b!1277787 () Bool)

(assert (=> b!1277787 (= e!729816 e!729817)))

(assert (=> b!1277787 (= c!123949 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1277788 () Bool)

(assert (=> b!1277788 (= e!729814 (validKeyInArray!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277789 () Bool)

(assert (=> b!1277789 (= e!729822 call!62693)))

(declare-fun b!1277790 () Bool)

(assert (=> b!1277790 (= e!729822 call!62690)))

(declare-fun b!1277791 () Bool)

(assert (=> b!1277791 (= e!729815 (= (apply!1043 lt!575734 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1129))))

(assert (= (and d!140403 c!123954) b!1277785))

(assert (= (and d!140403 (not c!123954)) b!1277787))

(assert (= (and b!1277787 c!123949) b!1277782))

(assert (= (and b!1277787 (not c!123949)) b!1277777))

(assert (= (and b!1277777 c!123952) b!1277790))

(assert (= (and b!1277777 (not c!123952)) b!1277789))

(assert (= (or b!1277790 b!1277789) bm!62689))

(assert (= (or b!1277782 bm!62689) bm!62687))

(assert (= (or b!1277782 b!1277790) bm!62688))

(assert (= (or b!1277785 bm!62687) bm!62686))

(assert (= (or b!1277785 bm!62688) bm!62690))

(assert (= (and d!140403 res!849094) b!1277788))

(assert (= (and d!140403 c!123950) b!1277773))

(assert (= (and d!140403 (not c!123950)) b!1277775))

(assert (= (and d!140403 res!849091) b!1277786))

(assert (= (and b!1277786 res!849098) b!1277783))

(assert (= (and b!1277786 (not res!849096)) b!1277784))

(assert (= (and b!1277784 res!849092) b!1277780))

(assert (= (and b!1277786 res!849099) b!1277771))

(assert (= (and b!1277771 c!123953) b!1277778))

(assert (= (and b!1277771 (not c!123953)) b!1277779))

(assert (= (and b!1277778 res!849093) b!1277774))

(assert (= (or b!1277778 b!1277779) bm!62691))

(assert (= (and b!1277771 res!849095) b!1277781))

(assert (= (and b!1277781 c!123951) b!1277772))

(assert (= (and b!1277781 (not c!123951)) b!1277776))

(assert (= (and b!1277772 res!849097) b!1277791))

(assert (= (or b!1277772 b!1277776) bm!62685))

(declare-fun b_lambda!23101 () Bool)

(assert (=> (not b_lambda!23101) (not b!1277780)))

(declare-fun t!42436 () Bool)

(declare-fun tb!11351 () Bool)

(assert (=> (and start!108244 (= defaultEntry!1195 defaultEntry!1195) t!42436) tb!11351))

(declare-fun result!23677 () Bool)

(assert (=> tb!11351 (= result!23677 tp_is_empty!33453)))

(assert (=> b!1277780 t!42436))

(declare-fun b_and!45975 () Bool)

(assert (= b_and!45971 (and (=> t!42436 result!23677) b_and!45975)))

(declare-fun m!1173307 () Bool)

(assert (=> b!1277783 m!1173307))

(assert (=> b!1277783 m!1173307))

(declare-fun m!1173309 () Bool)

(assert (=> b!1277783 m!1173309))

(declare-fun m!1173311 () Bool)

(assert (=> bm!62686 m!1173311))

(declare-fun m!1173313 () Bool)

(assert (=> b!1277773 m!1173313))

(declare-fun m!1173315 () Bool)

(assert (=> b!1277773 m!1173315))

(declare-fun m!1173317 () Bool)

(assert (=> b!1277773 m!1173317))

(declare-fun m!1173319 () Bool)

(assert (=> b!1277773 m!1173319))

(assert (=> b!1277773 m!1173317))

(declare-fun m!1173321 () Bool)

(assert (=> b!1277773 m!1173321))

(declare-fun m!1173323 () Bool)

(assert (=> b!1277773 m!1173323))

(declare-fun m!1173325 () Bool)

(assert (=> b!1277773 m!1173325))

(declare-fun m!1173327 () Bool)

(assert (=> b!1277773 m!1173327))

(declare-fun m!1173329 () Bool)

(assert (=> b!1277773 m!1173329))

(assert (=> b!1277773 m!1173307))

(assert (=> b!1277773 m!1173311))

(assert (=> b!1277773 m!1173313))

(declare-fun m!1173331 () Bool)

(assert (=> b!1277773 m!1173331))

(assert (=> b!1277773 m!1173323))

(declare-fun m!1173333 () Bool)

(assert (=> b!1277773 m!1173333))

(assert (=> b!1277773 m!1173327))

(declare-fun m!1173335 () Bool)

(assert (=> b!1277773 m!1173335))

(declare-fun m!1173337 () Bool)

(assert (=> b!1277773 m!1173337))

(declare-fun m!1173339 () Bool)

(assert (=> b!1277773 m!1173339))

(declare-fun m!1173341 () Bool)

(assert (=> b!1277773 m!1173341))

(assert (=> b!1277788 m!1173307))

(assert (=> b!1277788 m!1173307))

(assert (=> b!1277788 m!1173309))

(assert (=> b!1277784 m!1173307))

(assert (=> b!1277784 m!1173307))

(declare-fun m!1173343 () Bool)

(assert (=> b!1277784 m!1173343))

(declare-fun m!1173345 () Bool)

(assert (=> bm!62685 m!1173345))

(declare-fun m!1173347 () Bool)

(assert (=> b!1277780 m!1173347))

(declare-fun m!1173349 () Bool)

(assert (=> b!1277780 m!1173349))

(assert (=> b!1277780 m!1173349))

(assert (=> b!1277780 m!1173347))

(declare-fun m!1173351 () Bool)

(assert (=> b!1277780 m!1173351))

(assert (=> b!1277780 m!1173307))

(assert (=> b!1277780 m!1173307))

(declare-fun m!1173353 () Bool)

(assert (=> b!1277780 m!1173353))

(declare-fun m!1173355 () Bool)

(assert (=> b!1277774 m!1173355))

(declare-fun m!1173357 () Bool)

(assert (=> b!1277791 m!1173357))

(declare-fun m!1173359 () Bool)

(assert (=> bm!62690 m!1173359))

(assert (=> d!140403 m!1173273))

(declare-fun m!1173361 () Bool)

(assert (=> bm!62691 m!1173361))

(declare-fun m!1173363 () Bool)

(assert (=> b!1277785 m!1173363))

(assert (=> b!1277689 d!140403))

(declare-fun b!1277802 () Bool)

(declare-fun e!729831 () Bool)

(declare-fun e!729832 () Bool)

(assert (=> b!1277802 (= e!729831 e!729832)))

(declare-fun lt!575762 () (_ BitVec 64))

(assert (=> b!1277802 (= lt!575762 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575763 () Unit!42321)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83941 (_ BitVec 64) (_ BitVec 32)) Unit!42321)

(assert (=> b!1277802 (= lt!575763 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575762 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1277802 (arrayContainsKey!0 _keys!1427 lt!575762 #b00000000000000000000000000000000)))

(declare-fun lt!575761 () Unit!42321)

(assert (=> b!1277802 (= lt!575761 lt!575763)))

(declare-fun res!849105 () Bool)

(declare-datatypes ((SeekEntryResult!10004 0))(
  ( (MissingZero!10004 (index!42386 (_ BitVec 32))) (Found!10004 (index!42387 (_ BitVec 32))) (Intermediate!10004 (undefined!10816 Bool) (index!42388 (_ BitVec 32)) (x!113244 (_ BitVec 32))) (Undefined!10004) (MissingVacant!10004 (index!42389 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83941 (_ BitVec 32)) SeekEntryResult!10004)

(assert (=> b!1277802 (= res!849105 (= (seekEntryOrOpen!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!10004 #b00000000000000000000000000000000)))))

(assert (=> b!1277802 (=> (not res!849105) (not e!729832))))

(declare-fun d!140405 () Bool)

(declare-fun res!849104 () Bool)

(declare-fun e!729833 () Bool)

(assert (=> d!140405 (=> res!849104 e!729833)))

(assert (=> d!140405 (= res!849104 (bvsge #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(assert (=> d!140405 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!729833)))

(declare-fun b!1277803 () Bool)

(declare-fun call!62697 () Bool)

(assert (=> b!1277803 (= e!729831 call!62697)))

(declare-fun b!1277804 () Bool)

(assert (=> b!1277804 (= e!729833 e!729831)))

(declare-fun c!123957 () Bool)

(assert (=> b!1277804 (= c!123957 (validKeyInArray!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun bm!62694 () Bool)

(assert (=> bm!62694 (= call!62697 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun b!1277805 () Bool)

(assert (=> b!1277805 (= e!729832 call!62697)))

(assert (= (and d!140405 (not res!849104)) b!1277804))

(assert (= (and b!1277804 c!123957) b!1277802))

(assert (= (and b!1277804 (not c!123957)) b!1277803))

(assert (= (and b!1277802 res!849105) b!1277805))

(assert (= (or b!1277805 b!1277803) bm!62694))

(assert (=> b!1277802 m!1173307))

(declare-fun m!1173365 () Bool)

(assert (=> b!1277802 m!1173365))

(declare-fun m!1173367 () Bool)

(assert (=> b!1277802 m!1173367))

(assert (=> b!1277802 m!1173307))

(declare-fun m!1173369 () Bool)

(assert (=> b!1277802 m!1173369))

(assert (=> b!1277804 m!1173307))

(assert (=> b!1277804 m!1173307))

(assert (=> b!1277804 m!1173309))

(declare-fun m!1173371 () Bool)

(assert (=> bm!62694 m!1173371))

(assert (=> b!1277688 d!140405))

(declare-fun d!140407 () Bool)

(assert (=> d!140407 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!108244 d!140407))

(declare-fun d!140409 () Bool)

(assert (=> d!140409 (= (array_inv!30719 _values!1187) (bvsge (size!41028 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!108244 d!140409))

(declare-fun d!140411 () Bool)

(assert (=> d!140411 (= (array_inv!30720 _keys!1427) (bvsge (size!41027 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!108244 d!140411))

(declare-fun b!1277816 () Bool)

(declare-fun e!729845 () Bool)

(declare-fun contains!7749 (List!28888 (_ BitVec 64)) Bool)

(assert (=> b!1277816 (= e!729845 (contains!7749 Nil!28885 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun d!140413 () Bool)

(declare-fun res!849113 () Bool)

(declare-fun e!729842 () Bool)

(assert (=> d!140413 (=> res!849113 e!729842)))

(assert (=> d!140413 (= res!849113 (bvsge #b00000000000000000000000000000000 (size!41027 _keys!1427)))))

(assert (=> d!140413 (= (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28885) e!729842)))

(declare-fun b!1277817 () Bool)

(declare-fun e!729843 () Bool)

(declare-fun call!62700 () Bool)

(assert (=> b!1277817 (= e!729843 call!62700)))

(declare-fun bm!62697 () Bool)

(declare-fun c!123960 () Bool)

(assert (=> bm!62697 (= call!62700 (arrayNoDuplicates!0 _keys!1427 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123960 (Cons!28884 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000) Nil!28885) Nil!28885)))))

(declare-fun b!1277818 () Bool)

(declare-fun e!729844 () Bool)

(assert (=> b!1277818 (= e!729842 e!729844)))

(declare-fun res!849114 () Bool)

(assert (=> b!1277818 (=> (not res!849114) (not e!729844))))

(assert (=> b!1277818 (= res!849114 (not e!729845))))

(declare-fun res!849112 () Bool)

(assert (=> b!1277818 (=> (not res!849112) (not e!729845))))

(assert (=> b!1277818 (= res!849112 (validKeyInArray!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277819 () Bool)

(assert (=> b!1277819 (= e!729844 e!729843)))

(assert (=> b!1277819 (= c!123960 (validKeyInArray!0 (select (arr!40476 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277820 () Bool)

(assert (=> b!1277820 (= e!729843 call!62700)))

(assert (= (and d!140413 (not res!849113)) b!1277818))

(assert (= (and b!1277818 res!849112) b!1277816))

(assert (= (and b!1277818 res!849114) b!1277819))

(assert (= (and b!1277819 c!123960) b!1277820))

(assert (= (and b!1277819 (not c!123960)) b!1277817))

(assert (= (or b!1277820 b!1277817) bm!62697))

(assert (=> b!1277816 m!1173307))

(assert (=> b!1277816 m!1173307))

(declare-fun m!1173373 () Bool)

(assert (=> b!1277816 m!1173373))

(assert (=> bm!62697 m!1173307))

(declare-fun m!1173375 () Bool)

(assert (=> bm!62697 m!1173375))

(assert (=> b!1277818 m!1173307))

(assert (=> b!1277818 m!1173307))

(assert (=> b!1277818 m!1173309))

(assert (=> b!1277819 m!1173307))

(assert (=> b!1277819 m!1173307))

(assert (=> b!1277819 m!1173309))

(assert (=> b!1277695 d!140413))

(declare-fun mapNonEmpty!51719 () Bool)

(declare-fun mapRes!51719 () Bool)

(declare-fun tp!98676 () Bool)

(declare-fun e!729850 () Bool)

(assert (=> mapNonEmpty!51719 (= mapRes!51719 (and tp!98676 e!729850))))

(declare-fun mapValue!51719 () ValueCell!15828)

(declare-fun mapKey!51719 () (_ BitVec 32))

(declare-fun mapRest!51719 () (Array (_ BitVec 32) ValueCell!15828))

(assert (=> mapNonEmpty!51719 (= mapRest!51713 (store mapRest!51719 mapKey!51719 mapValue!51719))))

(declare-fun b!1277827 () Bool)

(assert (=> b!1277827 (= e!729850 tp_is_empty!33453)))

(declare-fun b!1277828 () Bool)

(declare-fun e!729851 () Bool)

(assert (=> b!1277828 (= e!729851 tp_is_empty!33453)))

(declare-fun condMapEmpty!51719 () Bool)

(declare-fun mapDefault!51719 () ValueCell!15828)

(assert (=> mapNonEmpty!51713 (= condMapEmpty!51719 (= mapRest!51713 ((as const (Array (_ BitVec 32) ValueCell!15828)) mapDefault!51719)))))

(assert (=> mapNonEmpty!51713 (= tp!98666 (and e!729851 mapRes!51719))))

(declare-fun mapIsEmpty!51719 () Bool)

(assert (=> mapIsEmpty!51719 mapRes!51719))

(assert (= (and mapNonEmpty!51713 condMapEmpty!51719) mapIsEmpty!51719))

(assert (= (and mapNonEmpty!51713 (not condMapEmpty!51719)) mapNonEmpty!51719))

(assert (= (and mapNonEmpty!51719 ((_ is ValueCellFull!15828) mapValue!51719)) b!1277827))

(assert (= (and mapNonEmpty!51713 ((_ is ValueCellFull!15828) mapDefault!51719)) b!1277828))

(declare-fun m!1173377 () Bool)

(assert (=> mapNonEmpty!51719 m!1173377))

(declare-fun b_lambda!23103 () Bool)

(assert (= b_lambda!23101 (or (and start!108244 b_free!27903) b_lambda!23103)))

(check-sat (not b!1277773) (not b!1277791) (not bm!62686) (not b!1277784) (not b!1277819) (not b!1277726) (not b!1277774) (not b!1277818) (not b_lambda!23103) (not bm!62697) (not d!140403) (not mapNonEmpty!51719) (not b!1277785) (not b!1277816) (not bm!62690) (not bm!62694) (not b_next!27903) tp_is_empty!33453 (not bm!62691) (not b!1277728) (not bm!62685) (not b!1277804) (not b!1277802) (not b!1277783) (not b!1277788) b_and!45975 (not b!1277780) (not d!140401))
(check-sat b_and!45975 (not b_next!27903))
