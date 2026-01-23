; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3282 () Bool)

(assert start!3282)

(declare-fun b!47744 () Bool)

(declare-fun b_free!1309 () Bool)

(declare-fun b_next!1309 () Bool)

(assert (=> b!47744 (= b_free!1309 (not b_next!1309))))

(declare-fun tp!32253 () Bool)

(declare-fun b_and!1345 () Bool)

(assert (=> b!47744 (= tp!32253 b_and!1345)))

(declare-fun b!47740 () Bool)

(declare-fun b_free!1311 () Bool)

(declare-fun b_next!1311 () Bool)

(assert (=> b!47740 (= b_free!1311 (not b_next!1311))))

(declare-fun tp!32257 () Bool)

(declare-fun b_and!1347 () Bool)

(assert (=> b!47740 (= tp!32257 b_and!1347)))

(declare-fun b!47738 () Bool)

(declare-fun e!27611 () Bool)

(declare-fun e!27610 () Bool)

(declare-datatypes ((K!563 0))(
  ( (K!564 (val!248 Int)) )
))
(declare-datatypes ((V!617 0))(
  ( (V!618 (val!249 Int)) )
))
(declare-datatypes ((tuple2!1012 0))(
  ( (tuple2!1013 (_1!711 K!563) (_2!711 V!617)) )
))
(declare-datatypes ((List!811 0))(
  ( (Nil!809) (Cons!809 (h!6205 tuple2!1012) (t!17012 List!811)) )
))
(declare-datatypes ((array!960 0))(
  ( (array!961 (arr!452 (Array (_ BitVec 32) List!811)) (size!793 (_ BitVec 32))) )
))
(declare-datatypes ((array!962 0))(
  ( (array!963 (arr!453 (Array (_ BitVec 32) (_ BitVec 64))) (size!794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!566 0))(
  ( (LongMapFixedSize!567 (defaultEntry!622 Int) (mask!1014 (_ BitVec 32)) (extraKeys!529 (_ BitVec 32)) (zeroValue!539 List!811) (minValue!539 List!811) (_size!699 (_ BitVec 32)) (_keys!574 array!962) (_values!561 array!960) (_vacant!344 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1121 0))(
  ( (Cell!1122 (v!12569 LongMapFixedSize!566)) )
))
(declare-datatypes ((MutLongMap!283 0))(
  ( (LongMap!283 (underlying!761 Cell!1121)) (MutLongMapExt!282 (__x!1362 Int)) )
))
(declare-fun lt!6742 () MutLongMap!283)

(get-info :version)

(assert (=> b!47738 (= e!27611 (and e!27610 ((_ is LongMap!283) lt!6742)))))

(declare-datatypes ((Cell!1123 0))(
  ( (Cell!1124 (v!12570 MutLongMap!283)) )
))
(declare-datatypes ((Hashable!279 0))(
  ( (HashableExt!278 (__x!1363 Int)) )
))
(declare-datatypes ((MutableMap!279 0))(
  ( (MutableMapExt!278 (__x!1364 Int)) (HashMap!279 (underlying!762 Cell!1123) (hashF!2148 Hashable!279) (_size!700 (_ BitVec 32)) (defaultValue!428 Int)) )
))
(declare-fun thiss!42687 () MutableMap!279)

(assert (=> b!47738 (= lt!6742 (v!12570 (underlying!762 thiss!42687)))))

(declare-fun b!47739 () Bool)

(declare-fun e!27607 () Bool)

(declare-fun tp!32254 () Bool)

(declare-fun mapRes!1117 () Bool)

(assert (=> b!47739 (= e!27607 (and tp!32254 mapRes!1117))))

(declare-fun condMapEmpty!1117 () Bool)

(declare-fun mapDefault!1117 () List!811)

(assert (=> b!47739 (= condMapEmpty!1117 (= (arr!452 (_values!561 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!811)) mapDefault!1117)))))

(declare-fun e!27605 () Bool)

(assert (=> b!47740 (= e!27605 (and e!27611 tp!32257))))

(declare-fun b!47741 () Bool)

(declare-fun e!27608 () Bool)

(declare-datatypes ((tuple2!1014 0))(
  ( (tuple2!1015 (_1!712 Bool) (_2!712 MutLongMap!283)) )
))
(declare-fun repack!5 (MutLongMap!283) tuple2!1014)

(assert (=> b!47741 (= e!27608 (not ((_ is LongMap!283) (_2!712 (repack!5 (v!12570 (underlying!762 thiss!42687)))))))))

(declare-fun res!31926 () Bool)

(assert (=> start!3282 (=> (not res!31926) (not e!27608))))

(assert (=> start!3282 (= res!31926 ((_ is HashMap!279) thiss!42687))))

(assert (=> start!3282 e!27608))

(assert (=> start!3282 e!27605))

(declare-fun b!47742 () Bool)

(declare-fun e!27609 () Bool)

(declare-fun e!27612 () Bool)

(assert (=> b!47742 (= e!27609 e!27612)))

(declare-fun b!47743 () Bool)

(assert (=> b!47743 (= e!27610 e!27609)))

(declare-fun mapIsEmpty!1117 () Bool)

(assert (=> mapIsEmpty!1117 mapRes!1117))

(declare-fun mapNonEmpty!1117 () Bool)

(declare-fun tp!32259 () Bool)

(declare-fun tp!32258 () Bool)

(assert (=> mapNonEmpty!1117 (= mapRes!1117 (and tp!32259 tp!32258))))

(declare-fun mapKey!1117 () (_ BitVec 32))

(declare-fun mapRest!1117 () (Array (_ BitVec 32) List!811))

(declare-fun mapValue!1117 () List!811)

(assert (=> mapNonEmpty!1117 (= (arr!452 (_values!561 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) (store mapRest!1117 mapKey!1117 mapValue!1117))))

(declare-fun tp!32255 () Bool)

(declare-fun tp!32256 () Bool)

(declare-fun array_inv!307 (array!962) Bool)

(declare-fun array_inv!308 (array!960) Bool)

(assert (=> b!47744 (= e!27612 (and tp!32253 tp!32255 tp!32256 (array_inv!307 (_keys!574 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) (array_inv!308 (_values!561 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) e!27607))))

(declare-fun b!47745 () Bool)

(declare-fun res!31927 () Bool)

(assert (=> b!47745 (=> (not res!31927) (not e!27608))))

(declare-fun valid!257 (MutableMap!279) Bool)

(assert (=> b!47745 (= res!31927 (valid!257 thiss!42687))))

(assert (= (and start!3282 res!31926) b!47745))

(assert (= (and b!47745 res!31927) b!47741))

(assert (= (and b!47739 condMapEmpty!1117) mapIsEmpty!1117))

(assert (= (and b!47739 (not condMapEmpty!1117)) mapNonEmpty!1117))

(assert (= b!47744 b!47739))

(assert (= b!47742 b!47744))

(assert (= b!47743 b!47742))

(assert (= (and b!47738 ((_ is LongMap!283) (v!12570 (underlying!762 thiss!42687)))) b!47743))

(assert (= b!47740 b!47738))

(assert (= (and start!3282 ((_ is HashMap!279) thiss!42687)) b!47740))

(declare-fun m!21778 () Bool)

(assert (=> b!47741 m!21778))

(declare-fun m!21780 () Bool)

(assert (=> mapNonEmpty!1117 m!21780))

(declare-fun m!21782 () Bool)

(assert (=> b!47744 m!21782))

(declare-fun m!21784 () Bool)

(assert (=> b!47744 m!21784))

(declare-fun m!21786 () Bool)

(assert (=> b!47745 m!21786))

(check-sat b_and!1345 (not b!47741) (not b_next!1311) (not b!47745) b_and!1347 (not b!47744) (not b!47739) (not mapNonEmpty!1117) (not b_next!1309))
(check-sat b_and!1347 b_and!1345 (not b_next!1309) (not b_next!1311))
(get-model)

(declare-fun d!5715 () Bool)

(declare-fun res!31932 () Bool)

(declare-fun e!27615 () Bool)

(assert (=> d!5715 (=> (not res!31932) (not e!27615))))

(declare-fun valid!258 (MutLongMap!283) Bool)

(assert (=> d!5715 (= res!31932 (valid!258 (v!12570 (underlying!762 thiss!42687))))))

(assert (=> d!5715 (= (valid!257 thiss!42687) e!27615)))

(declare-fun b!47750 () Bool)

(declare-fun res!31933 () Bool)

(assert (=> b!47750 (=> (not res!31933) (not e!27615))))

(declare-fun lambda!900 () Int)

(declare-datatypes ((tuple2!1016 0))(
  ( (tuple2!1017 (_1!713 (_ BitVec 64)) (_2!713 List!811)) )
))
(declare-datatypes ((List!812 0))(
  ( (Nil!810) (Cons!810 (h!6206 tuple2!1016) (t!17013 List!812)) )
))
(declare-fun forall!103 (List!812 Int) Bool)

(declare-datatypes ((ListLongMap!21 0))(
  ( (ListLongMap!22 (toList!180 List!812)) )
))
(declare-fun map!267 (MutLongMap!283) ListLongMap!21)

(assert (=> b!47750 (= res!31933 (forall!103 (toList!180 (map!267 (v!12570 (underlying!762 thiss!42687)))) lambda!900))))

(declare-fun b!47751 () Bool)

(declare-fun allKeysSameHashInMap!9 (ListLongMap!21 Hashable!279) Bool)

(assert (=> b!47751 (= e!27615 (allKeysSameHashInMap!9 (map!267 (v!12570 (underlying!762 thiss!42687))) (hashF!2148 thiss!42687)))))

(assert (= (and d!5715 res!31932) b!47750))

(assert (= (and b!47750 res!31933) b!47751))

(declare-fun m!21788 () Bool)

(assert (=> d!5715 m!21788))

(declare-fun m!21790 () Bool)

(assert (=> b!47750 m!21790))

(declare-fun m!21792 () Bool)

(assert (=> b!47750 m!21792))

(assert (=> b!47751 m!21790))

(assert (=> b!47751 m!21790))

(declare-fun m!21794 () Bool)

(assert (=> b!47751 m!21794))

(assert (=> b!47745 d!5715))

(declare-fun d!5717 () Bool)

(assert (=> d!5717 (= (array_inv!307 (_keys!574 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) (bvsge (size!794 (_keys!574 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47744 d!5717))

(declare-fun d!5719 () Bool)

(assert (=> d!5719 (= (array_inv!308 (_values!561 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) (bvsge (size!793 (_values!561 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47744 d!5719))

(declare-fun b!47772 () Bool)

(declare-fun c!16280 () Bool)

(assert (=> b!47772 (= c!16280 (and (not (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!1018 0))(
  ( (tuple2!1019 (_1!714 Bool) (_2!714 Cell!1121)) )
))
(declare-fun e!27630 () tuple2!1018)

(declare-fun e!27628 () tuple2!1018)

(assert (=> b!47772 (= e!27630 e!27628)))

(declare-fun bm!3028 () Bool)

(declare-fun call!3036 () LongMapFixedSize!566)

(declare-fun lt!6771 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!4 ((_ BitVec 32) Int) LongMapFixedSize!566)

(assert (=> bm!3028 (= call!3036 (getNewLongMapFixedSize!4 lt!6771 (defaultEntry!622 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))))))

(declare-fun b!47773 () Bool)

(declare-datatypes ((tuple3!320 0))(
  ( (tuple3!321 (_1!715 Bool) (_2!715 Cell!1121) (_3!205 MutLongMap!283)) )
))
(declare-fun e!27633 () tuple3!320)

(declare-fun lt!6768 () tuple2!1018)

(assert (=> b!47773 (= e!27633 (tuple3!321 false (_2!714 lt!6768) (v!12570 (underlying!762 thiss!42687))))))

(declare-fun c!16277 () Bool)

(declare-fun bm!3029 () Bool)

(declare-fun call!3034 () LongMapFixedSize!566)

(declare-datatypes ((tuple2!1020 0))(
  ( (tuple2!1021 (_1!716 Bool) (_2!716 LongMapFixedSize!566)) )
))
(declare-fun lt!6766 () tuple2!1020)

(declare-fun call!3033 () tuple2!1020)

(declare-fun c!16279 () Bool)

(declare-fun update!20 (LongMapFixedSize!566 (_ BitVec 64) List!811) tuple2!1020)

(assert (=> bm!3029 (= call!3033 (update!20 (ite c!16277 (_2!716 lt!6766) call!3034) (ite c!16277 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16279 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16277 (minValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) (ite c!16279 (zeroValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) (minValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))))))))

(declare-fun b!47774 () Bool)

(declare-fun e!27632 () tuple2!1018)

(declare-fun lt!6767 () tuple2!1020)

(assert (=> b!47774 (= e!27632 (tuple2!1019 (and (_1!716 lt!6766) (_1!716 lt!6767)) (Cell!1122 (_2!716 lt!6767))))))

(assert (=> b!47774 (= lt!6766 (update!20 call!3036 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))))))

(assert (=> b!47774 (= lt!6767 call!3033)))

(declare-fun b!47775 () Bool)

(assert (=> b!47775 (= e!27632 e!27630)))

(assert (=> b!47775 (= c!16279 (and (not (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!47776 () Bool)

(declare-fun lt!6770 () tuple2!1020)

(assert (=> b!47776 (= e!27628 (tuple2!1019 (_1!716 lt!6770) (Cell!1122 (_2!716 lt!6770))))))

(declare-fun call!3035 () tuple2!1020)

(assert (=> b!47776 (= lt!6770 call!3035)))

(declare-fun b!47777 () Bool)

(declare-fun lt!6763 () tuple2!1020)

(assert (=> b!47777 (= lt!6763 call!3035)))

(assert (=> b!47777 (= e!27630 (tuple2!1019 (_1!716 lt!6763) (Cell!1122 (_2!716 lt!6763))))))

(declare-fun d!5721 () Bool)

(declare-fun e!27631 () Bool)

(assert (=> d!5721 e!27631))

(declare-fun res!31938 () Bool)

(assert (=> d!5721 (=> (not res!31938) (not e!27631))))

(declare-fun lt!6765 () tuple2!1014)

(assert (=> d!5721 (= res!31938 ((_ is LongMap!283) (_2!712 lt!6765)))))

(declare-fun lt!6772 () tuple3!320)

(assert (=> d!5721 (= lt!6765 (tuple2!1015 (_1!715 lt!6772) (_3!205 lt!6772)))))

(assert (=> d!5721 (= lt!6772 e!27633)))

(declare-fun c!16278 () Bool)

(assert (=> d!5721 (= c!16278 (not (_1!714 lt!6768)))))

(assert (=> d!5721 (= lt!6768 e!27632)))

(assert (=> d!5721 (= c!16277 (and (not (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!529 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!6769 () Cell!1121)

(assert (=> d!5721 (= lt!6769 (Cell!1122 (getNewLongMapFixedSize!4 lt!6771 (defaultEntry!622 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))))))))

(declare-fun computeNewMask!2 (MutLongMap!283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5721 (= lt!6771 (computeNewMask!2 (v!12570 (underlying!762 thiss!42687)) (mask!1014 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) (_vacant!344 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))) (_size!699 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))))))

(assert (=> d!5721 (valid!258 (v!12570 (underlying!762 thiss!42687)))))

(assert (=> d!5721 (= (repack!5 (v!12570 (underlying!762 thiss!42687))) lt!6765)))

(declare-fun bm!3030 () Bool)

(assert (=> bm!3030 (= call!3035 call!3033)))

(declare-fun b!47778 () Bool)

(declare-fun lt!6764 () tuple2!1020)

(assert (=> b!47778 (= e!27633 (ite (_1!716 lt!6764) (tuple3!321 true (underlying!761 (v!12570 (underlying!762 thiss!42687))) (LongMap!283 (Cell!1122 (_2!716 lt!6764)))) (tuple3!321 false (Cell!1122 (_2!716 lt!6764)) (v!12570 (underlying!762 thiss!42687)))))))

(declare-fun repackFrom!2 (MutLongMap!283 LongMapFixedSize!566 (_ BitVec 32)) tuple2!1020)

(assert (=> b!47778 (= lt!6764 (repackFrom!2 (v!12570 (underlying!762 thiss!42687)) (v!12569 (_2!714 lt!6768)) (bvsub (size!794 (_keys!574 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687)))))) #b00000000000000000000000000000001)))))

(declare-fun b!47779 () Bool)

(declare-fun e!27629 () Bool)

(assert (=> b!47779 (= e!27631 e!27629)))

(declare-fun res!31939 () Bool)

(assert (=> b!47779 (=> res!31939 e!27629)))

(assert (=> b!47779 (= res!31939 (= (_1!712 lt!6765) false))))

(declare-fun bm!3031 () Bool)

(assert (=> bm!3031 (= call!3034 call!3036)))

(declare-fun b!47780 () Bool)

(assert (=> b!47780 (= e!27629 (= (map!267 (_2!712 lt!6765)) (map!267 (v!12570 (underlying!762 thiss!42687)))))))

(declare-fun b!47781 () Bool)

(assert (=> b!47781 (= e!27628 (tuple2!1019 true lt!6769))))

(assert (= (and d!5721 c!16277) b!47774))

(assert (= (and d!5721 (not c!16277)) b!47775))

(assert (= (and b!47775 c!16279) b!47777))

(assert (= (and b!47775 (not c!16279)) b!47772))

(assert (= (and b!47772 c!16280) b!47776))

(assert (= (and b!47772 (not c!16280)) b!47781))

(assert (= (or b!47777 b!47776) bm!3031))

(assert (= (or b!47777 b!47776) bm!3030))

(assert (= (or b!47774 bm!3031) bm!3028))

(assert (= (or b!47774 bm!3030) bm!3029))

(assert (= (and d!5721 c!16278) b!47773))

(assert (= (and d!5721 (not c!16278)) b!47778))

(assert (= (and d!5721 res!31938) b!47779))

(assert (= (and b!47779 (not res!31939)) b!47780))

(declare-fun m!21796 () Bool)

(assert (=> b!47780 m!21796))

(assert (=> b!47780 m!21790))

(declare-fun m!21798 () Bool)

(assert (=> bm!3028 m!21798))

(declare-fun m!21800 () Bool)

(assert (=> b!47774 m!21800))

(declare-fun m!21802 () Bool)

(assert (=> bm!3029 m!21802))

(assert (=> d!5721 m!21798))

(declare-fun m!21804 () Bool)

(assert (=> d!5721 m!21804))

(assert (=> d!5721 m!21788))

(declare-fun m!21806 () Bool)

(assert (=> b!47778 m!21806))

(assert (=> b!47741 d!5721))

(declare-fun b!47786 () Bool)

(declare-fun e!27636 () Bool)

(declare-fun tp_is_empty!411 () Bool)

(declare-fun tp_is_empty!413 () Bool)

(declare-fun tp!32262 () Bool)

(assert (=> b!47786 (= e!27636 (and tp_is_empty!411 tp_is_empty!413 tp!32262))))

(assert (=> b!47744 (= tp!32255 e!27636)))

(assert (= (and b!47744 ((_ is Cons!809) (zeroValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))))) b!47786))

(declare-fun e!27637 () Bool)

(declare-fun tp!32263 () Bool)

(declare-fun b!47787 () Bool)

(assert (=> b!47787 (= e!27637 (and tp_is_empty!411 tp_is_empty!413 tp!32263))))

(assert (=> b!47744 (= tp!32256 e!27637)))

(assert (= (and b!47744 ((_ is Cons!809) (minValue!539 (v!12569 (underlying!761 (v!12570 (underlying!762 thiss!42687))))))) b!47787))

(declare-fun e!27638 () Bool)

(declare-fun tp!32264 () Bool)

(declare-fun b!47788 () Bool)

(assert (=> b!47788 (= e!27638 (and tp_is_empty!411 tp_is_empty!413 tp!32264))))

(assert (=> b!47739 (= tp!32254 e!27638)))

(assert (= (and b!47739 ((_ is Cons!809) mapDefault!1117)) b!47788))

(declare-fun b!47795 () Bool)

(declare-fun tp!32273 () Bool)

(declare-fun e!27644 () Bool)

(assert (=> b!47795 (= e!27644 (and tp_is_empty!411 tp_is_empty!413 tp!32273))))

(declare-fun mapNonEmpty!1120 () Bool)

(declare-fun mapRes!1120 () Bool)

(declare-fun tp!32272 () Bool)

(assert (=> mapNonEmpty!1120 (= mapRes!1120 (and tp!32272 e!27644))))

(declare-fun mapRest!1120 () (Array (_ BitVec 32) List!811))

(declare-fun mapValue!1120 () List!811)

(declare-fun mapKey!1120 () (_ BitVec 32))

(assert (=> mapNonEmpty!1120 (= mapRest!1117 (store mapRest!1120 mapKey!1120 mapValue!1120))))

(declare-fun condMapEmpty!1120 () Bool)

(declare-fun mapDefault!1120 () List!811)

(assert (=> mapNonEmpty!1117 (= condMapEmpty!1120 (= mapRest!1117 ((as const (Array (_ BitVec 32) List!811)) mapDefault!1120)))))

(declare-fun e!27643 () Bool)

(assert (=> mapNonEmpty!1117 (= tp!32259 (and e!27643 mapRes!1120))))

(declare-fun b!47796 () Bool)

(declare-fun tp!32271 () Bool)

(assert (=> b!47796 (= e!27643 (and tp_is_empty!411 tp_is_empty!413 tp!32271))))

(declare-fun mapIsEmpty!1120 () Bool)

(assert (=> mapIsEmpty!1120 mapRes!1120))

(assert (= (and mapNonEmpty!1117 condMapEmpty!1120) mapIsEmpty!1120))

(assert (= (and mapNonEmpty!1117 (not condMapEmpty!1120)) mapNonEmpty!1120))

(assert (= (and mapNonEmpty!1120 ((_ is Cons!809) mapValue!1120)) b!47795))

(assert (= (and mapNonEmpty!1117 ((_ is Cons!809) mapDefault!1120)) b!47796))

(declare-fun m!21808 () Bool)

(assert (=> mapNonEmpty!1120 m!21808))

(declare-fun tp!32274 () Bool)

(declare-fun e!27645 () Bool)

(declare-fun b!47797 () Bool)

(assert (=> b!47797 (= e!27645 (and tp_is_empty!411 tp_is_empty!413 tp!32274))))

(assert (=> mapNonEmpty!1117 (= tp!32258 e!27645)))

(assert (= (and mapNonEmpty!1117 ((_ is Cons!809) mapValue!1117)) b!47797))

(check-sat (not bm!3028) b_and!1345 (not b!47795) tp_is_empty!411 (not b_next!1311) (not b!47786) (not b!47780) (not b!47796) (not b!47797) (not b!47788) (not b!47787) (not d!5715) (not b!47778) (not bm!3029) (not b!47751) (not b_next!1309) tp_is_empty!413 (not b!47750) b_and!1347 (not b!47774) (not d!5721) (not mapNonEmpty!1120))
(check-sat b_and!1347 b_and!1345 (not b_next!1309) (not b_next!1311))
