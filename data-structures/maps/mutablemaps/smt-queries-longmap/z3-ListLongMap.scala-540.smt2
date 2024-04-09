; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13838 () Bool)

(assert start!13838)

(declare-fun b!127831 () Bool)

(declare-fun b_free!2873 () Bool)

(declare-fun b_next!2873 () Bool)

(assert (=> b!127831 (= b_free!2873 (not b_next!2873))))

(declare-fun tp!11036 () Bool)

(declare-fun b_and!7913 () Bool)

(assert (=> b!127831 (= tp!11036 b_and!7913)))

(declare-fun b!127844 () Bool)

(declare-fun b_free!2875 () Bool)

(declare-fun b_next!2875 () Bool)

(assert (=> b!127844 (= b_free!2875 (not b_next!2875))))

(declare-fun tp!11034 () Bool)

(declare-fun b_and!7915 () Bool)

(assert (=> b!127844 (= tp!11034 b_and!7915)))

(declare-fun b!127828 () Bool)

(declare-fun e!83502 () Bool)

(declare-fun e!83501 () Bool)

(assert (=> b!127828 (= e!83502 e!83501)))

(declare-fun mapNonEmpty!4543 () Bool)

(declare-fun mapRes!4543 () Bool)

(declare-fun tp!11033 () Bool)

(declare-fun e!83496 () Bool)

(assert (=> mapNonEmpty!4543 (= mapRes!4543 (and tp!11033 e!83496))))

(declare-datatypes ((V!3451 0))(
  ( (V!3452 (val!1471 Int)) )
))
(declare-datatypes ((array!4724 0))(
  ( (array!4725 (arr!2236 (Array (_ BitVec 32) (_ BitVec 64))) (size!2501 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1083 0))(
  ( (ValueCellFull!1083 (v!3142 V!3451)) (EmptyCell!1083) )
))
(declare-datatypes ((array!4726 0))(
  ( (array!4727 (arr!2237 (Array (_ BitVec 32) ValueCell!1083)) (size!2502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1074 0))(
  ( (LongMapFixedSize!1075 (defaultEntry!2805 Int) (mask!7073 (_ BitVec 32)) (extraKeys!2582 (_ BitVec 32)) (zeroValue!2666 V!3451) (minValue!2666 V!3451) (_size!586 (_ BitVec 32)) (_keys!4542 array!4724) (_values!2788 array!4726) (_vacant!586 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!864 0))(
  ( (Cell!865 (v!3143 LongMapFixedSize!1074)) )
))
(declare-datatypes ((LongMap!864 0))(
  ( (LongMap!865 (underlying!443 Cell!864)) )
))
(declare-fun thiss!992 () LongMap!864)

(declare-fun mapValue!4544 () ValueCell!1083)

(declare-fun mapKey!4544 () (_ BitVec 32))

(declare-fun mapRest!4544 () (Array (_ BitVec 32) ValueCell!1083))

(assert (=> mapNonEmpty!4543 (= (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (store mapRest!4544 mapKey!4544 mapValue!4544))))

(declare-fun b!127829 () Bool)

(declare-fun res!61774 () Bool)

(declare-fun e!83503 () Bool)

(assert (=> b!127829 (=> (not res!61774) (not e!83503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!127829 (= res!61774 (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!127830 () Bool)

(declare-fun res!61773 () Bool)

(declare-fun e!83506 () Bool)

(assert (=> b!127830 (=> (not res!61773) (not e!83506))))

(declare-fun newMap!16 () LongMapFixedSize!1074)

(declare-fun valid!510 (LongMapFixedSize!1074) Bool)

(assert (=> b!127830 (= res!61773 (valid!510 newMap!16))))

(declare-fun e!83499 () Bool)

(declare-fun tp_is_empty!2853 () Bool)

(declare-fun array_inv!1375 (array!4724) Bool)

(declare-fun array_inv!1376 (array!4726) Bool)

(assert (=> b!127831 (= e!83501 (and tp!11036 tp_is_empty!2853 (array_inv!1375 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (array_inv!1376 (_values!2788 (v!3143 (underlying!443 thiss!992)))) e!83499))))

(declare-fun b!127832 () Bool)

(declare-fun res!61775 () Bool)

(assert (=> b!127832 (=> (not res!61775) (not e!83506))))

(assert (=> b!127832 (= res!61775 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7073 newMap!16)) (_size!586 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!127833 () Bool)

(declare-fun e!83493 () Bool)

(assert (=> b!127833 (= e!83506 e!83493)))

(declare-fun res!61771 () Bool)

(assert (=> b!127833 (=> (not res!61771) (not e!83493))))

(declare-datatypes ((tuple2!2582 0))(
  ( (tuple2!2583 (_1!1301 (_ BitVec 64)) (_2!1301 V!3451)) )
))
(declare-datatypes ((List!1724 0))(
  ( (Nil!1721) (Cons!1720 (h!2323 tuple2!2582) (t!6115 List!1724)) )
))
(declare-datatypes ((ListLongMap!1693 0))(
  ( (ListLongMap!1694 (toList!862 List!1724)) )
))
(declare-fun lt!66136 () ListLongMap!1693)

(declare-fun lt!66137 () ListLongMap!1693)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!127833 (= res!61771 (and (= lt!66137 lt!66136) (not (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1391 (LongMapFixedSize!1074) ListLongMap!1693)

(assert (=> b!127833 (= lt!66136 (map!1391 newMap!16))))

(declare-fun getCurrentListMap!534 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) Int) ListLongMap!1693)

(assert (=> b!127833 (= lt!66137 (getCurrentListMap!534 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!127834 () Bool)

(assert (=> b!127834 (= e!83503 (and (= (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7073 (v!3143 (underlying!443 thiss!992))))) (= (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992))))) (bvsge (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!127836 () Bool)

(declare-fun e!83507 () Bool)

(assert (=> b!127836 (= e!83507 tp_is_empty!2853)))

(declare-fun b!127837 () Bool)

(declare-fun e!83500 () Bool)

(assert (=> b!127837 (= e!83500 tp_is_empty!2853)))

(declare-fun b!127838 () Bool)

(declare-fun e!83504 () Bool)

(assert (=> b!127838 (= e!83504 tp_is_empty!2853)))

(declare-fun b!127839 () Bool)

(declare-fun res!61772 () Bool)

(assert (=> b!127839 (=> (not res!61772) (not e!83506))))

(assert (=> b!127839 (= res!61772 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!127840 () Bool)

(declare-fun e!83497 () Bool)

(declare-fun mapRes!4544 () Bool)

(assert (=> b!127840 (= e!83497 (and e!83504 mapRes!4544))))

(declare-fun condMapEmpty!4544 () Bool)

(declare-fun mapDefault!4544 () ValueCell!1083)

(assert (=> b!127840 (= condMapEmpty!4544 (= (arr!2237 (_values!2788 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4544)))))

(declare-fun b!127841 () Bool)

(declare-fun e!83505 () Bool)

(assert (=> b!127841 (= e!83505 e!83502)))

(declare-fun mapNonEmpty!4544 () Bool)

(declare-fun tp!11035 () Bool)

(assert (=> mapNonEmpty!4544 (= mapRes!4544 (and tp!11035 e!83507))))

(declare-fun mapValue!4543 () ValueCell!1083)

(declare-fun mapKey!4543 () (_ BitVec 32))

(declare-fun mapRest!4543 () (Array (_ BitVec 32) ValueCell!1083))

(assert (=> mapNonEmpty!4544 (= (arr!2237 (_values!2788 newMap!16)) (store mapRest!4543 mapKey!4543 mapValue!4543))))

(declare-fun b!127842 () Bool)

(assert (=> b!127842 (= e!83496 tp_is_empty!2853)))

(declare-fun mapIsEmpty!4543 () Bool)

(assert (=> mapIsEmpty!4543 mapRes!4543))

(declare-fun b!127843 () Bool)

(assert (=> b!127843 (= e!83499 (and e!83500 mapRes!4543))))

(declare-fun condMapEmpty!4543 () Bool)

(declare-fun mapDefault!4543 () ValueCell!1083)

(assert (=> b!127843 (= condMapEmpty!4543 (= (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4543)))))

(declare-fun mapIsEmpty!4544 () Bool)

(assert (=> mapIsEmpty!4544 mapRes!4544))

(declare-fun e!83494 () Bool)

(assert (=> b!127844 (= e!83494 (and tp!11034 tp_is_empty!2853 (array_inv!1375 (_keys!4542 newMap!16)) (array_inv!1376 (_values!2788 newMap!16)) e!83497))))

(declare-fun res!61770 () Bool)

(assert (=> start!13838 (=> (not res!61770) (not e!83506))))

(declare-fun valid!511 (LongMap!864) Bool)

(assert (=> start!13838 (= res!61770 (valid!511 thiss!992))))

(assert (=> start!13838 e!83506))

(assert (=> start!13838 e!83505))

(assert (=> start!13838 true))

(assert (=> start!13838 e!83494))

(declare-fun b!127835 () Bool)

(assert (=> b!127835 (= e!83493 e!83503)))

(declare-fun res!61776 () Bool)

(assert (=> b!127835 (=> (not res!61776) (not e!83503))))

(declare-fun contains!882 (ListLongMap!1693 (_ BitVec 64)) Bool)

(assert (=> b!127835 (= res!61776 (contains!882 lt!66136 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2584 0))(
  ( (tuple2!2585 (_1!1302 Bool) (_2!1302 LongMapFixedSize!1074)) )
))
(declare-fun lt!66138 () tuple2!2584)

(declare-fun update!186 (LongMapFixedSize!1074 (_ BitVec 64) V!3451) tuple2!2584)

(declare-fun get!1462 (ValueCell!1083 V!3451) V!3451)

(declare-fun dynLambda!419 (Int (_ BitVec 64)) V!3451)

(assert (=> b!127835 (= lt!66138 (update!186 newMap!16 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!13838 res!61770) b!127839))

(assert (= (and b!127839 res!61772) b!127830))

(assert (= (and b!127830 res!61773) b!127832))

(assert (= (and b!127832 res!61775) b!127833))

(assert (= (and b!127833 res!61771) b!127835))

(assert (= (and b!127835 res!61776) b!127829))

(assert (= (and b!127829 res!61774) b!127834))

(assert (= (and b!127843 condMapEmpty!4543) mapIsEmpty!4543))

(assert (= (and b!127843 (not condMapEmpty!4543)) mapNonEmpty!4543))

(get-info :version)

(assert (= (and mapNonEmpty!4543 ((_ is ValueCellFull!1083) mapValue!4544)) b!127842))

(assert (= (and b!127843 ((_ is ValueCellFull!1083) mapDefault!4543)) b!127837))

(assert (= b!127831 b!127843))

(assert (= b!127828 b!127831))

(assert (= b!127841 b!127828))

(assert (= start!13838 b!127841))

(assert (= (and b!127840 condMapEmpty!4544) mapIsEmpty!4544))

(assert (= (and b!127840 (not condMapEmpty!4544)) mapNonEmpty!4544))

(assert (= (and mapNonEmpty!4544 ((_ is ValueCellFull!1083) mapValue!4543)) b!127836))

(assert (= (and b!127840 ((_ is ValueCellFull!1083) mapDefault!4544)) b!127838))

(assert (= b!127844 b!127840))

(assert (= start!13838 b!127844))

(declare-fun b_lambda!5683 () Bool)

(assert (=> (not b_lambda!5683) (not b!127835)))

(declare-fun t!6112 () Bool)

(declare-fun tb!2353 () Bool)

(assert (=> (and b!127831 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))) t!6112) tb!2353))

(declare-fun result!3891 () Bool)

(assert (=> tb!2353 (= result!3891 tp_is_empty!2853)))

(assert (=> b!127835 t!6112))

(declare-fun b_and!7917 () Bool)

(assert (= b_and!7913 (and (=> t!6112 result!3891) b_and!7917)))

(declare-fun t!6114 () Bool)

(declare-fun tb!2355 () Bool)

(assert (=> (and b!127844 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))) t!6114) tb!2355))

(declare-fun result!3895 () Bool)

(assert (= result!3895 result!3891))

(assert (=> b!127835 t!6114))

(declare-fun b_and!7919 () Bool)

(assert (= b_and!7915 (and (=> t!6114 result!3895) b_and!7919)))

(declare-fun m!149773 () Bool)

(assert (=> b!127831 m!149773))

(declare-fun m!149775 () Bool)

(assert (=> b!127831 m!149775))

(declare-fun m!149777 () Bool)

(assert (=> mapNonEmpty!4543 m!149777))

(declare-fun m!149779 () Bool)

(assert (=> b!127835 m!149779))

(declare-fun m!149781 () Bool)

(assert (=> b!127835 m!149781))

(declare-fun m!149783 () Bool)

(assert (=> b!127835 m!149783))

(declare-fun m!149785 () Bool)

(assert (=> b!127835 m!149785))

(assert (=> b!127835 m!149781))

(assert (=> b!127835 m!149785))

(declare-fun m!149787 () Bool)

(assert (=> b!127835 m!149787))

(assert (=> b!127835 m!149785))

(assert (=> b!127835 m!149783))

(declare-fun m!149789 () Bool)

(assert (=> b!127835 m!149789))

(assert (=> b!127835 m!149779))

(declare-fun m!149791 () Bool)

(assert (=> start!13838 m!149791))

(declare-fun m!149793 () Bool)

(assert (=> b!127829 m!149793))

(assert (=> b!127833 m!149785))

(declare-fun m!149795 () Bool)

(assert (=> b!127833 m!149795))

(declare-fun m!149797 () Bool)

(assert (=> b!127833 m!149797))

(declare-fun m!149799 () Bool)

(assert (=> b!127830 m!149799))

(declare-fun m!149801 () Bool)

(assert (=> b!127844 m!149801))

(declare-fun m!149803 () Bool)

(assert (=> b!127844 m!149803))

(declare-fun m!149805 () Bool)

(assert (=> mapNonEmpty!4544 m!149805))

(check-sat (not b!127844) b_and!7919 (not b!127833) (not b_lambda!5683) (not b!127829) (not b_next!2875) (not mapNonEmpty!4543) (not b!127830) (not mapNonEmpty!4544) b_and!7917 (not b_next!2873) tp_is_empty!2853 (not b!127835) (not start!13838) (not b!127831))
(check-sat b_and!7917 b_and!7919 (not b_next!2873) (not b_next!2875))
(get-model)

(declare-fun b_lambda!5687 () Bool)

(assert (= b_lambda!5683 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5687)))

(check-sat b_and!7919 (not b!127833) (not b!127829) (not b_next!2875) (not mapNonEmpty!4543) (not b!127830) (not mapNonEmpty!4544) b_and!7917 (not b_next!2873) tp_is_empty!2853 (not b!127835) (not b_lambda!5687) (not b!127844) (not start!13838) (not b!127831))
(check-sat b_and!7917 b_and!7919 (not b_next!2873) (not b_next!2875))
(get-model)

(declare-fun d!38673 () Bool)

(assert (=> d!38673 (= (array_inv!1375 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvsge (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!127831 d!38673))

(declare-fun d!38675 () Bool)

(assert (=> d!38675 (= (array_inv!1376 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvsge (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!127831 d!38675))

(declare-fun d!38677 () Bool)

(assert (=> d!38677 (= (array_inv!1375 (_keys!4542 newMap!16)) (bvsge (size!2501 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!127844 d!38677))

(declare-fun d!38679 () Bool)

(assert (=> d!38679 (= (array_inv!1376 (_values!2788 newMap!16)) (bvsge (size!2502 (_values!2788 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!127844 d!38679))

(declare-fun d!38681 () Bool)

(assert (=> d!38681 (= (map!1391 newMap!16) (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun bs!5304 () Bool)

(assert (= bs!5304 d!38681))

(declare-fun m!149841 () Bool)

(assert (=> bs!5304 m!149841))

(assert (=> b!127833 d!38681))

(declare-fun call!13782 () ListLongMap!1693)

(declare-fun call!13778 () ListLongMap!1693)

(declare-fun bm!13775 () Bool)

(declare-fun c!23424 () Bool)

(declare-fun call!13780 () ListLongMap!1693)

(declare-fun c!23428 () Bool)

(declare-fun call!13779 () ListLongMap!1693)

(declare-fun +!166 (ListLongMap!1693 tuple2!2582) ListLongMap!1693)

(assert (=> bm!13775 (= call!13778 (+!166 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!127942 () Bool)

(declare-fun e!83589 () ListLongMap!1693)

(declare-fun call!13781 () ListLongMap!1693)

(assert (=> b!127942 (= e!83589 call!13781)))

(declare-fun b!127943 () Bool)

(declare-fun e!83586 () Bool)

(declare-fun call!13783 () Bool)

(assert (=> b!127943 (= e!83586 (not call!13783))))

(declare-fun bm!13776 () Bool)

(declare-fun call!13784 () Bool)

(declare-fun lt!66213 () ListLongMap!1693)

(assert (=> bm!13776 (= call!13784 (contains!882 lt!66213 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!127944 () Bool)

(declare-fun c!23423 () Bool)

(assert (=> b!127944 (= c!23423 (and (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!83588 () ListLongMap!1693)

(assert (=> b!127944 (= e!83589 e!83588)))

(declare-fun b!127945 () Bool)

(declare-fun e!83585 () Bool)

(assert (=> b!127945 (= e!83586 e!83585)))

(declare-fun res!61817 () Bool)

(assert (=> b!127945 (= res!61817 call!13783)))

(assert (=> b!127945 (=> (not res!61817) (not e!83585))))

(declare-fun b!127946 () Bool)

(declare-datatypes ((Unit!3998 0))(
  ( (Unit!3999) )
))
(declare-fun e!83587 () Unit!3998)

(declare-fun lt!66202 () Unit!3998)

(assert (=> b!127946 (= e!83587 lt!66202)))

(declare-fun lt!66207 () ListLongMap!1693)

(declare-fun getCurrentListMapNoExtraKeys!133 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) Int) ListLongMap!1693)

(assert (=> b!127946 (= lt!66207 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun lt!66208 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66208 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66206 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66206 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!66195 () Unit!3998)

(declare-fun addStillContains!88 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> b!127946 (= lt!66195 (addStillContains!88 lt!66207 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66206))))

(assert (=> b!127946 (contains!882 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66206)))

(declare-fun lt!66194 () Unit!3998)

(assert (=> b!127946 (= lt!66194 lt!66195)))

(declare-fun lt!66203 () ListLongMap!1693)

(assert (=> b!127946 (= lt!66203 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun lt!66199 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66199 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66212 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66212 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!66205 () Unit!3998)

(declare-fun addApplyDifferent!88 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> b!127946 (= lt!66205 (addApplyDifferent!88 lt!66203 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66212))))

(declare-fun apply!112 (ListLongMap!1693 (_ BitVec 64)) V!3451)

(assert (=> b!127946 (= (apply!112 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66212) (apply!112 lt!66203 lt!66212))))

(declare-fun lt!66197 () Unit!3998)

(assert (=> b!127946 (= lt!66197 lt!66205)))

(declare-fun lt!66204 () ListLongMap!1693)

(assert (=> b!127946 (= lt!66204 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun lt!66193 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66193 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66210 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66210 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!66198 () Unit!3998)

(assert (=> b!127946 (= lt!66198 (addApplyDifferent!88 lt!66204 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66210))))

(assert (=> b!127946 (= (apply!112 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66210) (apply!112 lt!66204 lt!66210))))

(declare-fun lt!66192 () Unit!3998)

(assert (=> b!127946 (= lt!66192 lt!66198)))

(declare-fun lt!66200 () ListLongMap!1693)

(assert (=> b!127946 (= lt!66200 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun lt!66201 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66201 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66211 () (_ BitVec 64))

(assert (=> b!127946 (= lt!66211 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!127946 (= lt!66202 (addApplyDifferent!88 lt!66200 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66211))))

(assert (=> b!127946 (= (apply!112 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66211) (apply!112 lt!66200 lt!66211))))

(declare-fun b!127947 () Bool)

(assert (=> b!127947 (= e!83588 call!13781)))

(declare-fun b!127948 () Bool)

(declare-fun e!83582 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!127948 (= e!83582 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!127949 () Bool)

(assert (=> b!127949 (= e!83585 (= (apply!112 lt!66213 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!127950 () Bool)

(declare-fun e!83581 () Bool)

(assert (=> b!127950 (= e!83581 e!83586)))

(declare-fun c!23426 () Bool)

(assert (=> b!127950 (= c!23426 (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!127951 () Bool)

(declare-fun e!83590 () Bool)

(declare-fun e!83584 () Bool)

(assert (=> b!127951 (= e!83590 e!83584)))

(declare-fun res!61823 () Bool)

(assert (=> b!127951 (=> (not res!61823) (not e!83584))))

(assert (=> b!127951 (= res!61823 (contains!882 lt!66213 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!127951 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!127952 () Bool)

(declare-fun res!61821 () Bool)

(assert (=> b!127952 (=> (not res!61821) (not e!83581))))

(assert (=> b!127952 (= res!61821 e!83590)))

(declare-fun res!61819 () Bool)

(assert (=> b!127952 (=> res!61819 e!83590)))

(assert (=> b!127952 (= res!61819 (not e!83582))))

(declare-fun res!61816 () Bool)

(assert (=> b!127952 (=> (not res!61816) (not e!83582))))

(assert (=> b!127952 (= res!61816 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!127953 () Bool)

(assert (=> b!127953 (= e!83588 call!13779)))

(declare-fun b!127954 () Bool)

(declare-fun e!83583 () Bool)

(declare-fun e!83591 () Bool)

(assert (=> b!127954 (= e!83583 e!83591)))

(declare-fun res!61824 () Bool)

(assert (=> b!127954 (= res!61824 call!13784)))

(assert (=> b!127954 (=> (not res!61824) (not e!83591))))

(declare-fun b!127955 () Bool)

(declare-fun e!83579 () ListLongMap!1693)

(assert (=> b!127955 (= e!83579 (+!166 call!13778 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun bm!13777 () Bool)

(assert (=> bm!13777 (= call!13783 (contains!882 lt!66213 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13778 () Bool)

(assert (=> bm!13778 (= call!13781 call!13778)))

(declare-fun b!127956 () Bool)

(declare-fun res!61818 () Bool)

(assert (=> b!127956 (=> (not res!61818) (not e!83581))))

(assert (=> b!127956 (= res!61818 e!83583)))

(declare-fun c!23425 () Bool)

(assert (=> b!127956 (= c!23425 (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13779 () Bool)

(assert (=> bm!13779 (= call!13780 call!13782)))

(declare-fun b!127957 () Bool)

(assert (=> b!127957 (= e!83579 e!83589)))

(assert (=> b!127957 (= c!23424 (and (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!127958 () Bool)

(declare-fun e!83580 () Bool)

(assert (=> b!127958 (= e!83580 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!13780 () Bool)

(assert (=> bm!13780 (= call!13779 call!13780)))

(declare-fun b!127959 () Bool)

(assert (=> b!127959 (= e!83591 (= (apply!112 lt!66213 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun d!38683 () Bool)

(assert (=> d!38683 e!83581))

(declare-fun res!61820 () Bool)

(assert (=> d!38683 (=> (not res!61820) (not e!83581))))

(assert (=> d!38683 (= res!61820 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun lt!66196 () ListLongMap!1693)

(assert (=> d!38683 (= lt!66213 lt!66196)))

(declare-fun lt!66209 () Unit!3998)

(assert (=> d!38683 (= lt!66209 e!83587)))

(declare-fun c!23427 () Bool)

(assert (=> d!38683 (= c!23427 e!83580)))

(declare-fun res!61822 () Bool)

(assert (=> d!38683 (=> (not res!61822) (not e!83580))))

(assert (=> d!38683 (= res!61822 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!38683 (= lt!66196 e!83579)))

(assert (=> d!38683 (= c!23428 (and (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38683 (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992))))))

(assert (=> d!38683 (= (getCurrentListMap!534 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))) lt!66213)))

(declare-fun b!127960 () Bool)

(declare-fun Unit!4000 () Unit!3998)

(assert (=> b!127960 (= e!83587 Unit!4000)))

(declare-fun b!127961 () Bool)

(assert (=> b!127961 (= e!83584 (= (apply!112 lt!66213 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!127961 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> b!127961 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun bm!13781 () Bool)

(assert (=> bm!13781 (= call!13782 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!127962 () Bool)

(assert (=> b!127962 (= e!83583 (not call!13784))))

(assert (= (and d!38683 c!23428) b!127955))

(assert (= (and d!38683 (not c!23428)) b!127957))

(assert (= (and b!127957 c!23424) b!127942))

(assert (= (and b!127957 (not c!23424)) b!127944))

(assert (= (and b!127944 c!23423) b!127947))

(assert (= (and b!127944 (not c!23423)) b!127953))

(assert (= (or b!127947 b!127953) bm!13780))

(assert (= (or b!127942 bm!13780) bm!13779))

(assert (= (or b!127942 b!127947) bm!13778))

(assert (= (or b!127955 bm!13779) bm!13781))

(assert (= (or b!127955 bm!13778) bm!13775))

(assert (= (and d!38683 res!61822) b!127958))

(assert (= (and d!38683 c!23427) b!127946))

(assert (= (and d!38683 (not c!23427)) b!127960))

(assert (= (and d!38683 res!61820) b!127952))

(assert (= (and b!127952 res!61816) b!127948))

(assert (= (and b!127952 (not res!61819)) b!127951))

(assert (= (and b!127951 res!61823) b!127961))

(assert (= (and b!127952 res!61821) b!127956))

(assert (= (and b!127956 c!23425) b!127954))

(assert (= (and b!127956 (not c!23425)) b!127962))

(assert (= (and b!127954 res!61824) b!127959))

(assert (= (or b!127954 b!127962) bm!13776))

(assert (= (and b!127956 res!61818) b!127950))

(assert (= (and b!127950 c!23426) b!127945))

(assert (= (and b!127950 (not c!23426)) b!127943))

(assert (= (and b!127945 res!61817) b!127949))

(assert (= (or b!127945 b!127943) bm!13777))

(declare-fun b_lambda!5689 () Bool)

(assert (=> (not b_lambda!5689) (not b!127961)))

(assert (=> b!127961 t!6112))

(declare-fun b_and!7929 () Bool)

(assert (= b_and!7917 (and (=> t!6112 result!3891) b_and!7929)))

(assert (=> b!127961 t!6114))

(declare-fun b_and!7931 () Bool)

(assert (= b_and!7919 (and (=> t!6114 result!3895) b_and!7931)))

(declare-fun m!149843 () Bool)

(assert (=> bm!13777 m!149843))

(declare-fun m!149845 () Bool)

(assert (=> b!127959 m!149845))

(declare-fun m!149847 () Bool)

(assert (=> bm!13781 m!149847))

(declare-fun m!149849 () Bool)

(assert (=> b!127946 m!149849))

(declare-fun m!149851 () Bool)

(assert (=> b!127946 m!149851))

(declare-fun m!149853 () Bool)

(assert (=> b!127946 m!149853))

(declare-fun m!149855 () Bool)

(assert (=> b!127946 m!149855))

(declare-fun m!149857 () Bool)

(assert (=> b!127946 m!149857))

(declare-fun m!149859 () Bool)

(assert (=> b!127946 m!149859))

(declare-fun m!149861 () Bool)

(assert (=> b!127946 m!149861))

(declare-fun m!149863 () Bool)

(assert (=> b!127946 m!149863))

(declare-fun m!149865 () Bool)

(assert (=> b!127946 m!149865))

(declare-fun m!149867 () Bool)

(assert (=> b!127946 m!149867))

(declare-fun m!149869 () Bool)

(assert (=> b!127946 m!149869))

(assert (=> b!127946 m!149855))

(declare-fun m!149871 () Bool)

(assert (=> b!127946 m!149871))

(declare-fun m!149873 () Bool)

(assert (=> b!127946 m!149873))

(assert (=> b!127946 m!149853))

(declare-fun m!149875 () Bool)

(assert (=> b!127946 m!149875))

(assert (=> b!127946 m!149847))

(assert (=> b!127946 m!149867))

(declare-fun m!149877 () Bool)

(assert (=> b!127946 m!149877))

(assert (=> b!127946 m!149851))

(declare-fun m!149879 () Bool)

(assert (=> b!127946 m!149879))

(assert (=> d!38683 m!149793))

(assert (=> b!127958 m!149865))

(assert (=> b!127958 m!149865))

(declare-fun m!149881 () Bool)

(assert (=> b!127958 m!149881))

(declare-fun m!149883 () Bool)

(assert (=> bm!13776 m!149883))

(declare-fun m!149885 () Bool)

(assert (=> b!127955 m!149885))

(declare-fun m!149887 () Bool)

(assert (=> b!127949 m!149887))

(assert (=> b!127961 m!149865))

(declare-fun m!149889 () Bool)

(assert (=> b!127961 m!149889))

(declare-fun m!149891 () Bool)

(assert (=> b!127961 m!149891))

(assert (=> b!127961 m!149781))

(assert (=> b!127961 m!149865))

(assert (=> b!127961 m!149891))

(assert (=> b!127961 m!149781))

(declare-fun m!149893 () Bool)

(assert (=> b!127961 m!149893))

(assert (=> b!127948 m!149865))

(assert (=> b!127948 m!149865))

(assert (=> b!127948 m!149881))

(declare-fun m!149895 () Bool)

(assert (=> bm!13775 m!149895))

(assert (=> b!127951 m!149865))

(assert (=> b!127951 m!149865))

(declare-fun m!149897 () Bool)

(assert (=> b!127951 m!149897))

(assert (=> b!127833 d!38683))

(declare-fun d!38685 () Bool)

(assert (=> d!38685 (= (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992)))) (and (or (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000001111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000011111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000001111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000011111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000001111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000011111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000001111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000011111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000001111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000011111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000001111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000011111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000001111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000011111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000001111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000011111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000111111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00001111111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00011111111111111111111111111111) (= (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!127829 d!38685))

(declare-fun d!38687 () Bool)

(declare-fun e!83597 () Bool)

(assert (=> d!38687 e!83597))

(declare-fun res!61827 () Bool)

(assert (=> d!38687 (=> res!61827 e!83597)))

(declare-fun lt!66224 () Bool)

(assert (=> d!38687 (= res!61827 (not lt!66224))))

(declare-fun lt!66223 () Bool)

(assert (=> d!38687 (= lt!66224 lt!66223)))

(declare-fun lt!66225 () Unit!3998)

(declare-fun e!83596 () Unit!3998)

(assert (=> d!38687 (= lt!66225 e!83596)))

(declare-fun c!23431 () Bool)

(assert (=> d!38687 (= c!23431 lt!66223)))

(declare-fun containsKey!171 (List!1724 (_ BitVec 64)) Bool)

(assert (=> d!38687 (= lt!66223 (containsKey!171 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38687 (= (contains!882 lt!66136 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66224)))

(declare-fun b!127969 () Bool)

(declare-fun lt!66222 () Unit!3998)

(assert (=> b!127969 (= e!83596 lt!66222)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!120 (List!1724 (_ BitVec 64)) Unit!3998)

(assert (=> b!127969 (= lt!66222 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-datatypes ((Option!173 0))(
  ( (Some!172 (v!3147 V!3451)) (None!171) )
))
(declare-fun isDefined!121 (Option!173) Bool)

(declare-fun getValueByKey!167 (List!1724 (_ BitVec 64)) Option!173)

(assert (=> b!127969 (isDefined!121 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!127970 () Bool)

(declare-fun Unit!4001 () Unit!3998)

(assert (=> b!127970 (= e!83596 Unit!4001)))

(declare-fun b!127971 () Bool)

(assert (=> b!127971 (= e!83597 (isDefined!121 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (= (and d!38687 c!23431) b!127969))

(assert (= (and d!38687 (not c!23431)) b!127970))

(assert (= (and d!38687 (not res!61827)) b!127971))

(assert (=> d!38687 m!149785))

(declare-fun m!149899 () Bool)

(assert (=> d!38687 m!149899))

(assert (=> b!127969 m!149785))

(declare-fun m!149901 () Bool)

(assert (=> b!127969 m!149901))

(assert (=> b!127969 m!149785))

(declare-fun m!149903 () Bool)

(assert (=> b!127969 m!149903))

(assert (=> b!127969 m!149903))

(declare-fun m!149905 () Bool)

(assert (=> b!127969 m!149905))

(assert (=> b!127971 m!149785))

(assert (=> b!127971 m!149903))

(assert (=> b!127971 m!149903))

(assert (=> b!127971 m!149905))

(assert (=> b!127835 d!38687))

(declare-fun b!128052 () Bool)

(declare-fun e!83654 () Bool)

(declare-fun call!13849 () Bool)

(assert (=> b!128052 (= e!83654 (not call!13849))))

(declare-fun b!128053 () Bool)

(declare-fun e!83659 () tuple2!2584)

(declare-fun e!83646 () tuple2!2584)

(assert (=> b!128053 (= e!83659 e!83646)))

(declare-fun c!23469 () Bool)

(assert (=> b!128053 (= c!23469 (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13830 () Bool)

(declare-fun call!13840 () ListLongMap!1693)

(assert (=> bm!13830 (= call!13840 (map!1391 newMap!16))))

(declare-fun b!128054 () Bool)

(declare-fun e!83657 () Bool)

(declare-datatypes ((SeekEntryResult!281 0))(
  ( (MissingZero!281 (index!3280 (_ BitVec 32))) (Found!281 (index!3281 (_ BitVec 32))) (Intermediate!281 (undefined!1093 Bool) (index!3282 (_ BitVec 32)) (x!15132 (_ BitVec 32))) (Undefined!281) (MissingVacant!281 (index!3283 (_ BitVec 32))) )
))
(declare-fun lt!66283 () SeekEntryResult!281)

(assert (=> b!128054 (= e!83657 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66283)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128055 () Bool)

(declare-fun e!83642 () Bool)

(assert (=> b!128055 (= e!83642 (not call!13849))))

(declare-fun b!128056 () Bool)

(declare-fun res!61861 () Bool)

(assert (=> b!128056 (=> (not res!61861) (not e!83642))))

(declare-fun call!13834 () Bool)

(assert (=> b!128056 (= res!61861 call!13834)))

(declare-fun e!83655 () Bool)

(assert (=> b!128056 (= e!83655 e!83642)))

(declare-fun b!128057 () Bool)

(declare-fun lt!66297 () Unit!3998)

(declare-fun lt!66294 () Unit!3998)

(assert (=> b!128057 (= lt!66297 lt!66294)))

(declare-fun call!13852 () ListLongMap!1693)

(declare-fun call!13855 () ListLongMap!1693)

(assert (=> b!128057 (= call!13852 call!13855)))

(declare-fun lt!66299 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!57 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 V!3451 Int) Unit!3998)

(assert (=> b!128057 (= lt!66294 (lemmaChangeZeroKeyThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66299 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) (defaultEntry!2805 newMap!16)))))

(assert (=> b!128057 (= lt!66299 (bvor (extraKeys!2582 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!128057 (= e!83646 (tuple2!2585 true (LongMapFixedSize!1075 (defaultEntry!2805 newMap!16) (mask!7073 newMap!16) (bvor (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) (_size!586 newMap!16) (_keys!4542 newMap!16) (_values!2788 newMap!16) (_vacant!586 newMap!16))))))

(declare-fun b!128058 () Bool)

(declare-fun e!83647 () Bool)

(declare-fun e!83645 () Bool)

(assert (=> b!128058 (= e!83647 e!83645)))

(declare-fun c!23466 () Bool)

(declare-fun lt!66286 () tuple2!2584)

(assert (=> b!128058 (= c!23466 (_1!1302 lt!66286))))

(declare-fun b!128059 () Bool)

(declare-fun lt!66281 () Unit!3998)

(declare-fun e!83640 () Unit!3998)

(assert (=> b!128059 (= lt!66281 e!83640)))

(declare-fun c!23468 () Bool)

(declare-fun call!13846 () Bool)

(assert (=> b!128059 (= c!23468 call!13846)))

(declare-fun e!83641 () tuple2!2584)

(assert (=> b!128059 (= e!83641 (tuple2!2585 false newMap!16))))

(declare-fun c!23470 () Bool)

(declare-fun bm!13832 () Bool)

(declare-fun lt!66287 () SeekEntryResult!281)

(declare-fun call!13848 () ListLongMap!1693)

(assert (=> bm!13832 (= call!13848 (getCurrentListMap!534 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128060 () Bool)

(declare-fun e!83653 () Bool)

(declare-fun lt!66304 () SeekEntryResult!281)

(assert (=> b!128060 (= e!83653 ((_ is Undefined!281) lt!66304))))

(declare-fun b!128061 () Bool)

(declare-fun res!61859 () Bool)

(declare-fun e!83658 () Bool)

(assert (=> b!128061 (=> (not res!61859) (not e!83658))))

(declare-fun call!13837 () Bool)

(assert (=> b!128061 (= res!61859 call!13837)))

(declare-fun e!83660 () Bool)

(assert (=> b!128061 (= e!83660 e!83658)))

(declare-fun b!128062 () Bool)

(declare-fun lt!66303 () Unit!3998)

(declare-fun lt!66282 () Unit!3998)

(assert (=> b!128062 (= lt!66303 lt!66282)))

(assert (=> b!128062 (= call!13852 call!13855)))

(declare-fun lt!66298 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!57 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 V!3451 Int) Unit!3998)

(assert (=> b!128062 (= lt!66282 (lemmaChangeLongMinValueKeyThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(assert (=> b!128062 (= lt!66298 (bvor (extraKeys!2582 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!128062 (= e!83646 (tuple2!2585 true (LongMapFixedSize!1075 (defaultEntry!2805 newMap!16) (mask!7073 newMap!16) (bvor (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!586 newMap!16) (_keys!4542 newMap!16) (_values!2788 newMap!16) (_vacant!586 newMap!16))))))

(declare-fun bm!13833 () Bool)

(declare-fun call!13842 () ListLongMap!1693)

(assert (=> bm!13833 (= call!13842 (map!1391 (_2!1302 lt!66286)))))

(declare-fun call!13838 () Unit!3998)

(declare-fun bm!13834 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!57 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) Int) Unit!3998)

(assert (=> bm!13834 (= call!13838 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(declare-fun b!128063 () Bool)

(declare-fun lt!66296 () Unit!3998)

(assert (=> b!128063 (= e!83640 lt!66296)))

(assert (=> b!128063 (= lt!66296 call!13838)))

(declare-fun lt!66284 () SeekEntryResult!281)

(declare-fun call!13845 () SeekEntryResult!281)

(assert (=> b!128063 (= lt!66284 call!13845)))

(declare-fun c!23459 () Bool)

(assert (=> b!128063 (= c!23459 ((_ is MissingZero!281) lt!66284))))

(assert (=> b!128063 e!83655))

(declare-fun b!128064 () Bool)

(declare-fun res!61866 () Bool)

(declare-fun call!13854 () Bool)

(assert (=> b!128064 (= res!61866 call!13854)))

(assert (=> b!128064 (=> (not res!61866) (not e!83657))))

(declare-fun bm!13835 () Bool)

(declare-fun call!13850 () Bool)

(declare-fun call!13856 () Bool)

(assert (=> bm!13835 (= call!13850 call!13856)))

(declare-fun bm!13836 () Bool)

(declare-fun call!13851 () ListLongMap!1693)

(assert (=> bm!13836 (= call!13855 call!13851)))

(declare-fun bm!13837 () Bool)

(assert (=> bm!13837 (= call!13849 call!13856)))

(declare-fun b!128065 () Bool)

(declare-fun c!23464 () Bool)

(assert (=> b!128065 (= c!23464 ((_ is MissingVacant!281) lt!66287))))

(declare-fun e!83656 () tuple2!2584)

(assert (=> b!128065 (= e!83641 e!83656)))

(declare-fun bm!13838 () Bool)

(declare-fun call!13847 () ListLongMap!1693)

(assert (=> bm!13838 (= call!13847 call!13848)))

(declare-fun b!128066 () Bool)

(declare-fun e!83649 () Bool)

(assert (=> b!128066 (= e!83645 e!83649)))

(declare-fun res!61860 () Bool)

(assert (=> b!128066 (= res!61860 (contains!882 call!13842 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128066 (=> (not res!61860) (not e!83649))))

(declare-fun e!83643 () Bool)

(declare-fun b!128067 () Bool)

(declare-fun lt!66295 () SeekEntryResult!281)

(assert (=> b!128067 (= e!83643 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66295)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun bm!13839 () Bool)

(declare-fun call!13835 () tuple2!2584)

(declare-fun updateHelperNewKey!57 (LongMapFixedSize!1074 (_ BitVec 64) V!3451 (_ BitVec 32)) tuple2!2584)

(assert (=> bm!13839 (= call!13835 (updateHelperNewKey!57 newMap!16 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(declare-fun e!83650 () ListLongMap!1693)

(declare-fun bm!13840 () Bool)

(declare-fun call!13843 () ListLongMap!1693)

(assert (=> bm!13840 (= call!13843 (+!166 e!83650 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!23462 () Bool)

(assert (=> bm!13840 (= c!23462 c!23470)))

(declare-fun b!128068 () Bool)

(declare-fun e!83651 () Unit!3998)

(declare-fun Unit!4002 () Unit!3998)

(assert (=> b!128068 (= e!83651 Unit!4002)))

(declare-fun lt!66291 () Unit!3998)

(assert (=> b!128068 (= lt!66291 call!13838)))

(declare-fun call!13853 () SeekEntryResult!281)

(assert (=> b!128068 (= lt!66304 call!13853)))

(declare-fun c!23460 () Bool)

(assert (=> b!128068 (= c!23460 ((_ is MissingZero!281) lt!66304))))

(assert (=> b!128068 e!83660))

(declare-fun lt!66301 () Unit!3998)

(assert (=> b!128068 (= lt!66301 lt!66291)))

(assert (=> b!128068 false))

(declare-fun bm!13841 () Bool)

(declare-fun call!13844 () SeekEntryResult!281)

(assert (=> bm!13841 (= call!13853 call!13844)))

(declare-fun b!128069 () Bool)

(declare-fun lt!66306 () tuple2!2584)

(assert (=> b!128069 (= e!83656 (tuple2!2585 (_1!1302 lt!66306) (_2!1302 lt!66306)))))

(assert (=> b!128069 (= lt!66306 call!13835)))

(declare-fun b!128070 () Bool)

(declare-fun c!23465 () Bool)

(assert (=> b!128070 (= c!23465 ((_ is MissingVacant!281) lt!66284))))

(declare-fun e!83652 () Bool)

(assert (=> b!128070 (= e!83655 e!83652)))

(declare-fun b!128071 () Bool)

(declare-fun Unit!4003 () Unit!3998)

(assert (=> b!128071 (= e!83640 Unit!4003)))

(declare-fun lt!66288 () Unit!3998)

(declare-fun call!13839 () Unit!3998)

(assert (=> b!128071 (= lt!66288 call!13839)))

(assert (=> b!128071 (= lt!66295 call!13845)))

(declare-fun res!61863 () Bool)

(assert (=> b!128071 (= res!61863 ((_ is Found!281) lt!66295))))

(assert (=> b!128071 (=> (not res!61863) (not e!83643))))

(assert (=> b!128071 e!83643))

(declare-fun lt!66289 () Unit!3998)

(assert (=> b!128071 (= lt!66289 lt!66288)))

(assert (=> b!128071 false))

(declare-fun b!128072 () Bool)

(assert (=> b!128072 (= e!83652 ((_ is Undefined!281) lt!66284))))

(declare-fun b!128073 () Bool)

(declare-fun lt!66300 () Unit!3998)

(assert (=> b!128073 (= e!83651 lt!66300)))

(assert (=> b!128073 (= lt!66300 call!13839)))

(assert (=> b!128073 (= lt!66283 call!13853)))

(declare-fun res!61862 () Bool)

(assert (=> b!128073 (= res!61862 ((_ is Found!281) lt!66283))))

(assert (=> b!128073 (=> (not res!61862) (not e!83657))))

(assert (=> b!128073 e!83657))

(declare-fun bm!13842 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!57 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) Int) Unit!3998)

(assert (=> bm!13842 (= call!13839 (lemmaInListMapThenSeekEntryOrOpenFindsIt!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(declare-fun b!128074 () Bool)

(declare-fun c!23458 () Bool)

(assert (=> b!128074 (= c!23458 ((_ is MissingVacant!281) lt!66304))))

(assert (=> b!128074 (= e!83660 e!83653)))

(declare-fun bm!13843 () Bool)

(declare-fun arrayContainsKey!0 (array!4724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!13843 (= call!13856 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!128075 () Bool)

(assert (=> b!128075 (= e!83659 e!83641)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4724 (_ BitVec 32)) SeekEntryResult!281)

(assert (=> b!128075 (= lt!66287 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun c!23463 () Bool)

(assert (=> b!128075 (= c!23463 ((_ is Undefined!281) lt!66287))))

(declare-fun bm!13844 () Bool)

(assert (=> bm!13844 (= call!13837 call!13854)))

(declare-fun b!128076 () Bool)

(declare-fun e!83648 () Bool)

(assert (=> b!128076 (= e!83648 (not call!13850))))

(declare-fun bm!13845 () Bool)

(declare-fun call!13836 () Bool)

(declare-fun call!13841 () Bool)

(assert (=> bm!13845 (= call!13836 call!13841)))

(declare-fun bm!13846 () Bool)

(assert (=> bm!13846 (= call!13845 call!13844)))

(declare-fun b!128077 () Bool)

(assert (=> b!128077 (= e!83653 e!83648)))

(declare-fun res!61856 () Bool)

(assert (=> b!128077 (= res!61856 call!13837)))

(assert (=> b!128077 (=> (not res!61856) (not e!83648))))

(declare-fun b!128078 () Bool)

(assert (=> b!128078 (= e!83650 call!13847)))

(declare-fun b!128079 () Bool)

(declare-fun lt!66285 () tuple2!2584)

(assert (=> b!128079 (= lt!66285 call!13835)))

(declare-fun e!83644 () tuple2!2584)

(assert (=> b!128079 (= e!83644 (tuple2!2585 (_1!1302 lt!66285) (_2!1302 lt!66285)))))

(declare-fun b!128080 () Bool)

(declare-fun res!61868 () Bool)

(assert (=> b!128080 (= res!61868 call!13836)))

(assert (=> b!128080 (=> (not res!61868) (not e!83643))))

(declare-fun bm!13847 () Bool)

(assert (=> bm!13847 (= call!13844 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun call!13833 () ListLongMap!1693)

(declare-fun bm!13848 () Bool)

(assert (=> bm!13848 (= call!13846 (contains!882 call!13833 (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(declare-fun b!128081 () Bool)

(assert (=> b!128081 (= e!83652 e!83654)))

(declare-fun res!61865 () Bool)

(assert (=> b!128081 (= res!61865 call!13834)))

(assert (=> b!128081 (=> (not res!61865) (not e!83654))))

(declare-fun b!128082 () Bool)

(assert (=> b!128082 (= e!83650 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66302 () array!4726)

(declare-fun bm!13849 () Bool)

(assert (=> bm!13849 (= call!13851 (getCurrentListMap!534 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128083 () Bool)

(declare-fun res!61864 () Bool)

(assert (=> b!128083 (=> (not res!61864) (not e!83642))))

(assert (=> b!128083 (= res!61864 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66284)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128084 () Bool)

(assert (=> b!128084 (= e!83658 (not call!13850))))

(declare-fun bm!13850 () Bool)

(assert (=> bm!13850 (= call!13833 call!13851)))

(declare-fun b!128085 () Bool)

(assert (=> b!128085 (= e!83656 e!83644)))

(declare-fun c!23461 () Bool)

(assert (=> b!128085 (= c!23461 ((_ is MissingZero!281) lt!66287))))

(declare-fun b!128086 () Bool)

(declare-fun lt!66280 () Unit!3998)

(declare-fun lt!66292 () Unit!3998)

(assert (=> b!128086 (= lt!66280 lt!66292)))

(assert (=> b!128086 call!13846))

(declare-fun lemmaValidKeyInArrayIsInListMap!115 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) Int) Unit!3998)

(assert (=> b!128086 (= lt!66292 (lemmaValidKeyInArrayIsInListMap!115 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (defaultEntry!2805 newMap!16)))))

(assert (=> b!128086 (= lt!66302 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))))

(declare-fun lt!66290 () Unit!3998)

(declare-fun lt!66305 () Unit!3998)

(assert (=> b!128086 (= lt!66290 lt!66305)))

(assert (=> b!128086 (= call!13843 call!13848)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!57 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) (_ BitVec 64) V!3451 Int) Unit!3998)

(assert (=> b!128086 (= lt!66305 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66293 () Unit!3998)

(assert (=> b!128086 (= lt!66293 e!83651)))

(declare-fun c!23467 () Bool)

(assert (=> b!128086 (= c!23467 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128086 (= e!83644 (tuple2!2585 true (LongMapFixedSize!1075 (defaultEntry!2805 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (_size!586 newMap!16) (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (_vacant!586 newMap!16))))))

(declare-fun bm!13851 () Bool)

(assert (=> bm!13851 (= call!13854 call!13841)))

(declare-fun bm!13831 () Bool)

(assert (=> bm!13831 (= call!13852 call!13843)))

(declare-fun d!38689 () Bool)

(assert (=> d!38689 e!83647))

(declare-fun res!61867 () Bool)

(assert (=> d!38689 (=> (not res!61867) (not e!83647))))

(assert (=> d!38689 (= res!61867 (valid!510 (_2!1302 lt!66286)))))

(assert (=> d!38689 (= lt!66286 e!83659)))

(assert (=> d!38689 (= c!23470 (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvneg (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!38689 (valid!510 newMap!16)))

(assert (=> d!38689 (= (update!186 newMap!16 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!66286)))

(declare-fun bm!13852 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!13852 (= call!13841 (inRange!0 (ite c!23463 (ite c!23468 (index!3281 lt!66295) (ite c!23459 (index!3280 lt!66284) (index!3283 lt!66284))) (ite c!23467 (index!3281 lt!66283) (ite c!23460 (index!3280 lt!66304) (index!3283 lt!66304)))) (mask!7073 newMap!16)))))

(declare-fun b!128087 () Bool)

(declare-fun res!61869 () Bool)

(assert (=> b!128087 (= res!61869 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66304)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128087 (=> (not res!61869) (not e!83648))))

(declare-fun b!128088 () Bool)

(declare-fun res!61857 () Bool)

(assert (=> b!128088 (=> (not res!61857) (not e!83658))))

(assert (=> b!128088 (= res!61857 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66304)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13853 () Bool)

(assert (=> bm!13853 (= call!13834 call!13836)))

(declare-fun b!128089 () Bool)

(assert (=> b!128089 (= e!83645 (= call!13842 call!13840))))

(declare-fun b!128090 () Bool)

(assert (=> b!128090 (= e!83649 (= call!13842 (+!166 call!13840 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128091 () Bool)

(declare-fun res!61858 () Bool)

(assert (=> b!128091 (= res!61858 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66284)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128091 (=> (not res!61858) (not e!83654))))

(assert (= (and d!38689 c!23470) b!128053))

(assert (= (and d!38689 (not c!23470)) b!128075))

(assert (= (and b!128053 c!23469) b!128057))

(assert (= (and b!128053 (not c!23469)) b!128062))

(assert (= (or b!128057 b!128062) bm!13838))

(assert (= (or b!128057 b!128062) bm!13836))

(assert (= (or b!128057 b!128062) bm!13831))

(assert (= (and b!128075 c!23463) b!128059))

(assert (= (and b!128075 (not c!23463)) b!128065))

(assert (= (and b!128059 c!23468) b!128071))

(assert (= (and b!128059 (not c!23468)) b!128063))

(assert (= (and b!128071 res!61863) b!128080))

(assert (= (and b!128080 res!61868) b!128067))

(assert (= (and b!128063 c!23459) b!128056))

(assert (= (and b!128063 (not c!23459)) b!128070))

(assert (= (and b!128056 res!61861) b!128083))

(assert (= (and b!128083 res!61864) b!128055))

(assert (= (and b!128070 c!23465) b!128081))

(assert (= (and b!128070 (not c!23465)) b!128072))

(assert (= (and b!128081 res!61865) b!128091))

(assert (= (and b!128091 res!61858) b!128052))

(assert (= (or b!128056 b!128081) bm!13853))

(assert (= (or b!128055 b!128052) bm!13837))

(assert (= (or b!128080 bm!13853) bm!13845))

(assert (= (or b!128071 b!128063) bm!13846))

(assert (= (and b!128065 c!23464) b!128069))

(assert (= (and b!128065 (not c!23464)) b!128085))

(assert (= (and b!128085 c!23461) b!128079))

(assert (= (and b!128085 (not c!23461)) b!128086))

(assert (= (and b!128086 c!23467) b!128073))

(assert (= (and b!128086 (not c!23467)) b!128068))

(assert (= (and b!128073 res!61862) b!128064))

(assert (= (and b!128064 res!61866) b!128054))

(assert (= (and b!128068 c!23460) b!128061))

(assert (= (and b!128068 (not c!23460)) b!128074))

(assert (= (and b!128061 res!61859) b!128088))

(assert (= (and b!128088 res!61857) b!128084))

(assert (= (and b!128074 c!23458) b!128077))

(assert (= (and b!128074 (not c!23458)) b!128060))

(assert (= (and b!128077 res!61856) b!128087))

(assert (= (and b!128087 res!61869) b!128076))

(assert (= (or b!128061 b!128077) bm!13844))

(assert (= (or b!128084 b!128076) bm!13835))

(assert (= (or b!128064 bm!13844) bm!13851))

(assert (= (or b!128073 b!128068) bm!13841))

(assert (= (or b!128069 b!128079) bm!13839))

(assert (= (or b!128071 b!128073) bm!13842))

(assert (= (or b!128063 b!128068) bm!13834))

(assert (= (or bm!13837 bm!13835) bm!13843))

(assert (= (or bm!13845 bm!13851) bm!13852))

(assert (= (or b!128059 b!128086) bm!13850))

(assert (= (or bm!13846 bm!13841) bm!13847))

(assert (= (or b!128059 b!128086) bm!13848))

(assert (= (or bm!13836 bm!13850) bm!13849))

(assert (= (or bm!13838 b!128086) bm!13832))

(assert (= (or bm!13831 b!128086) bm!13840))

(assert (= (and bm!13840 c!23462) b!128078))

(assert (= (and bm!13840 (not c!23462)) b!128082))

(assert (= (and d!38689 res!61867) b!128058))

(assert (= (and b!128058 c!23466) b!128066))

(assert (= (and b!128058 (not c!23466)) b!128089))

(assert (= (and b!128066 res!61860) b!128090))

(assert (= (or b!128090 b!128089) bm!13830))

(assert (= (or b!128066 b!128090 b!128089) bm!13833))

(declare-fun m!149907 () Bool)

(assert (=> b!128090 m!149907))

(declare-fun m!149909 () Bool)

(assert (=> b!128083 m!149909))

(assert (=> b!128086 m!149785))

(assert (=> b!128086 m!149783))

(declare-fun m!149911 () Bool)

(assert (=> b!128086 m!149911))

(declare-fun m!149913 () Bool)

(assert (=> b!128086 m!149913))

(declare-fun m!149915 () Bool)

(assert (=> b!128086 m!149915))

(assert (=> b!128086 m!149841))

(assert (=> b!128086 m!149785))

(declare-fun m!149917 () Bool)

(assert (=> b!128086 m!149917))

(assert (=> b!128086 m!149841))

(assert (=> b!128066 m!149785))

(declare-fun m!149919 () Bool)

(assert (=> b!128066 m!149919))

(assert (=> bm!13830 m!149795))

(assert (=> bm!13842 m!149785))

(declare-fun m!149921 () Bool)

(assert (=> bm!13842 m!149921))

(declare-fun m!149923 () Bool)

(assert (=> b!128067 m!149923))

(declare-fun m!149925 () Bool)

(assert (=> b!128054 m!149925))

(assert (=> b!128082 m!149841))

(declare-fun m!149927 () Bool)

(assert (=> bm!13849 m!149927))

(assert (=> b!128075 m!149785))

(declare-fun m!149929 () Bool)

(assert (=> b!128075 m!149929))

(assert (=> bm!13843 m!149785))

(declare-fun m!149931 () Bool)

(assert (=> bm!13843 m!149931))

(assert (=> b!128057 m!149783))

(declare-fun m!149933 () Bool)

(assert (=> b!128057 m!149933))

(declare-fun m!149935 () Bool)

(assert (=> bm!13840 m!149935))

(declare-fun m!149937 () Bool)

(assert (=> d!38689 m!149937))

(assert (=> d!38689 m!149799))

(declare-fun m!149939 () Bool)

(assert (=> bm!13833 m!149939))

(declare-fun m!149941 () Bool)

(assert (=> b!128087 m!149941))

(declare-fun m!149943 () Bool)

(assert (=> b!128088 m!149943))

(assert (=> bm!13832 m!149915))

(declare-fun m!149945 () Bool)

(assert (=> bm!13832 m!149945))

(assert (=> bm!13847 m!149785))

(assert (=> bm!13847 m!149929))

(declare-fun m!149947 () Bool)

(assert (=> bm!13848 m!149947))

(declare-fun m!149949 () Bool)

(assert (=> bm!13848 m!149949))

(assert (=> bm!13839 m!149785))

(assert (=> bm!13839 m!149783))

(declare-fun m!149951 () Bool)

(assert (=> bm!13839 m!149951))

(declare-fun m!149953 () Bool)

(assert (=> bm!13852 m!149953))

(declare-fun m!149955 () Bool)

(assert (=> b!128091 m!149955))

(assert (=> b!128062 m!149783))

(declare-fun m!149957 () Bool)

(assert (=> b!128062 m!149957))

(assert (=> bm!13834 m!149785))

(declare-fun m!149959 () Bool)

(assert (=> bm!13834 m!149959))

(assert (=> b!127835 d!38689))

(declare-fun d!38691 () Bool)

(declare-fun c!23473 () Bool)

(assert (=> d!38691 (= c!23473 ((_ is ValueCellFull!1083) (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun e!83663 () V!3451)

(assert (=> d!38691 (= (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!83663)))

(declare-fun b!128096 () Bool)

(declare-fun get!1464 (ValueCell!1083 V!3451) V!3451)

(assert (=> b!128096 (= e!83663 (get!1464 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128097 () Bool)

(declare-fun get!1465 (ValueCell!1083 V!3451) V!3451)

(assert (=> b!128097 (= e!83663 (get!1465 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38691 c!23473) b!128096))

(assert (= (and d!38691 (not c!23473)) b!128097))

(assert (=> b!128096 m!149779))

(assert (=> b!128096 m!149781))

(declare-fun m!149961 () Bool)

(assert (=> b!128096 m!149961))

(assert (=> b!128097 m!149779))

(assert (=> b!128097 m!149781))

(declare-fun m!149963 () Bool)

(assert (=> b!128097 m!149963))

(assert (=> b!127835 d!38691))

(declare-fun d!38693 () Bool)

(assert (=> d!38693 (= (valid!511 thiss!992) (valid!510 (v!3143 (underlying!443 thiss!992))))))

(declare-fun bs!5305 () Bool)

(assert (= bs!5305 d!38693))

(declare-fun m!149965 () Bool)

(assert (=> bs!5305 m!149965))

(assert (=> start!13838 d!38693))

(declare-fun d!38695 () Bool)

(declare-fun res!61876 () Bool)

(declare-fun e!83666 () Bool)

(assert (=> d!38695 (=> (not res!61876) (not e!83666))))

(declare-fun simpleValid!87 (LongMapFixedSize!1074) Bool)

(assert (=> d!38695 (= res!61876 (simpleValid!87 newMap!16))))

(assert (=> d!38695 (= (valid!510 newMap!16) e!83666)))

(declare-fun b!128104 () Bool)

(declare-fun res!61877 () Bool)

(assert (=> b!128104 (=> (not res!61877) (not e!83666))))

(declare-fun arrayCountValidKeys!0 (array!4724 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!128104 (= res!61877 (= (arrayCountValidKeys!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (_size!586 newMap!16)))))

(declare-fun b!128105 () Bool)

(declare-fun res!61878 () Bool)

(assert (=> b!128105 (=> (not res!61878) (not e!83666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4724 (_ BitVec 32)) Bool)

(assert (=> b!128105 (= res!61878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun b!128106 () Bool)

(declare-datatypes ((List!1726 0))(
  ( (Nil!1723) (Cons!1722 (h!2325 (_ BitVec 64)) (t!6121 List!1726)) )
))
(declare-fun arrayNoDuplicates!0 (array!4724 (_ BitVec 32) List!1726) Bool)

(assert (=> b!128106 (= e!83666 (arrayNoDuplicates!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 Nil!1723))))

(assert (= (and d!38695 res!61876) b!128104))

(assert (= (and b!128104 res!61877) b!128105))

(assert (= (and b!128105 res!61878) b!128106))

(declare-fun m!149967 () Bool)

(assert (=> d!38695 m!149967))

(declare-fun m!149969 () Bool)

(assert (=> b!128104 m!149969))

(declare-fun m!149971 () Bool)

(assert (=> b!128105 m!149971))

(declare-fun m!149973 () Bool)

(assert (=> b!128106 m!149973))

(assert (=> b!127830 d!38695))

(declare-fun condMapEmpty!4553 () Bool)

(declare-fun mapDefault!4553 () ValueCell!1083)

(assert (=> mapNonEmpty!4544 (= condMapEmpty!4553 (= mapRest!4543 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4553)))))

(declare-fun e!83671 () Bool)

(declare-fun mapRes!4553 () Bool)

(assert (=> mapNonEmpty!4544 (= tp!11035 (and e!83671 mapRes!4553))))

(declare-fun b!128113 () Bool)

(declare-fun e!83672 () Bool)

(assert (=> b!128113 (= e!83672 tp_is_empty!2853)))

(declare-fun b!128114 () Bool)

(assert (=> b!128114 (= e!83671 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4553 () Bool)

(declare-fun tp!11051 () Bool)

(assert (=> mapNonEmpty!4553 (= mapRes!4553 (and tp!11051 e!83672))))

(declare-fun mapRest!4553 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapKey!4553 () (_ BitVec 32))

(declare-fun mapValue!4553 () ValueCell!1083)

(assert (=> mapNonEmpty!4553 (= mapRest!4543 (store mapRest!4553 mapKey!4553 mapValue!4553))))

(declare-fun mapIsEmpty!4553 () Bool)

(assert (=> mapIsEmpty!4553 mapRes!4553))

(assert (= (and mapNonEmpty!4544 condMapEmpty!4553) mapIsEmpty!4553))

(assert (= (and mapNonEmpty!4544 (not condMapEmpty!4553)) mapNonEmpty!4553))

(assert (= (and mapNonEmpty!4553 ((_ is ValueCellFull!1083) mapValue!4553)) b!128113))

(assert (= (and mapNonEmpty!4544 ((_ is ValueCellFull!1083) mapDefault!4553)) b!128114))

(declare-fun m!149975 () Bool)

(assert (=> mapNonEmpty!4553 m!149975))

(declare-fun condMapEmpty!4554 () Bool)

(declare-fun mapDefault!4554 () ValueCell!1083)

(assert (=> mapNonEmpty!4543 (= condMapEmpty!4554 (= mapRest!4544 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4554)))))

(declare-fun e!83673 () Bool)

(declare-fun mapRes!4554 () Bool)

(assert (=> mapNonEmpty!4543 (= tp!11033 (and e!83673 mapRes!4554))))

(declare-fun b!128115 () Bool)

(declare-fun e!83674 () Bool)

(assert (=> b!128115 (= e!83674 tp_is_empty!2853)))

(declare-fun b!128116 () Bool)

(assert (=> b!128116 (= e!83673 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4554 () Bool)

(declare-fun tp!11052 () Bool)

(assert (=> mapNonEmpty!4554 (= mapRes!4554 (and tp!11052 e!83674))))

(declare-fun mapRest!4554 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapKey!4554 () (_ BitVec 32))

(declare-fun mapValue!4554 () ValueCell!1083)

(assert (=> mapNonEmpty!4554 (= mapRest!4544 (store mapRest!4554 mapKey!4554 mapValue!4554))))

(declare-fun mapIsEmpty!4554 () Bool)

(assert (=> mapIsEmpty!4554 mapRes!4554))

(assert (= (and mapNonEmpty!4543 condMapEmpty!4554) mapIsEmpty!4554))

(assert (= (and mapNonEmpty!4543 (not condMapEmpty!4554)) mapNonEmpty!4554))

(assert (= (and mapNonEmpty!4554 ((_ is ValueCellFull!1083) mapValue!4554)) b!128115))

(assert (= (and mapNonEmpty!4543 ((_ is ValueCellFull!1083) mapDefault!4554)) b!128116))

(declare-fun m!149977 () Bool)

(assert (=> mapNonEmpty!4554 m!149977))

(declare-fun b_lambda!5691 () Bool)

(assert (= b_lambda!5689 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5691)))

(check-sat (not b!127961) (not bm!13840) (not d!38681) (not b!127951) (not bm!13781) (not mapNonEmpty!4553) (not b!127958) (not b_lambda!5687) (not bm!13777) (not bm!13834) (not bm!13776) (not bm!13830) (not b!128057) (not b!128104) (not d!38693) b_and!7931 (not bm!13847) (not b!127969) (not d!38687) (not bm!13848) (not b!127959) (not b!128096) (not b!127949) (not bm!13852) (not b_next!2875) (not d!38683) (not b!128105) (not b!128106) (not bm!13833) (not bm!13842) (not d!38695) (not b_lambda!5691) (not bm!13849) (not b!127955) (not mapNonEmpty!4554) (not b!128075) (not bm!13832) (not bm!13839) (not b!128086) (not b!127946) (not bm!13775) (not b!128082) (not b_next!2873) (not b!128090) (not b!128097) (not b!127948) (not b!127971) (not b!128066) (not bm!13843) (not d!38689) tp_is_empty!2853 (not b!128062) b_and!7929)
(check-sat b_and!7929 b_and!7931 (not b_next!2873) (not b_next!2875))
(get-model)

(declare-fun d!38697 () Bool)

(declare-fun res!61879 () Bool)

(declare-fun e!83675 () Bool)

(assert (=> d!38697 (=> (not res!61879) (not e!83675))))

(assert (=> d!38697 (= res!61879 (simpleValid!87 (_2!1302 lt!66286)))))

(assert (=> d!38697 (= (valid!510 (_2!1302 lt!66286)) e!83675)))

(declare-fun b!128117 () Bool)

(declare-fun res!61880 () Bool)

(assert (=> b!128117 (=> (not res!61880) (not e!83675))))

(assert (=> b!128117 (= res!61880 (= (arrayCountValidKeys!0 (_keys!4542 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))) (_size!586 (_2!1302 lt!66286))))))

(declare-fun b!128118 () Bool)

(declare-fun res!61881 () Bool)

(assert (=> b!128118 (=> (not res!61881) (not e!83675))))

(assert (=> b!128118 (= res!61881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286))))))

(declare-fun b!128119 () Bool)

(assert (=> b!128119 (= e!83675 (arrayNoDuplicates!0 (_keys!4542 (_2!1302 lt!66286)) #b00000000000000000000000000000000 Nil!1723))))

(assert (= (and d!38697 res!61879) b!128117))

(assert (= (and b!128117 res!61880) b!128118))

(assert (= (and b!128118 res!61881) b!128119))

(declare-fun m!149979 () Bool)

(assert (=> d!38697 m!149979))

(declare-fun m!149981 () Bool)

(assert (=> b!128117 m!149981))

(declare-fun m!149983 () Bool)

(assert (=> b!128118 m!149983))

(declare-fun m!149985 () Bool)

(assert (=> b!128119 m!149985))

(assert (=> d!38689 d!38697))

(assert (=> d!38689 d!38695))

(declare-fun d!38699 () Bool)

(declare-fun e!83678 () Bool)

(assert (=> d!38699 e!83678))

(declare-fun res!61886 () Bool)

(assert (=> d!38699 (=> (not res!61886) (not e!83678))))

(declare-fun lt!66315 () ListLongMap!1693)

(assert (=> d!38699 (= res!61886 (contains!882 lt!66315 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66316 () List!1724)

(assert (=> d!38699 (= lt!66315 (ListLongMap!1694 lt!66316))))

(declare-fun lt!66317 () Unit!3998)

(declare-fun lt!66318 () Unit!3998)

(assert (=> d!38699 (= lt!66317 lt!66318)))

(assert (=> d!38699 (= (getValueByKey!167 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!84 (List!1724 (_ BitVec 64) V!3451) Unit!3998)

(assert (=> d!38699 (= lt!66318 (lemmaContainsTupThenGetReturnValue!84 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun insertStrictlySorted!86 (List!1724 (_ BitVec 64) V!3451) List!1724)

(assert (=> d!38699 (= lt!66316 (insertStrictlySorted!86 (toList!862 call!13778) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38699 (= (+!166 call!13778 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66315)))

(declare-fun b!128124 () Bool)

(declare-fun res!61887 () Bool)

(assert (=> b!128124 (=> (not res!61887) (not e!83678))))

(assert (=> b!128124 (= res!61887 (= (getValueByKey!167 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128125 () Bool)

(declare-fun contains!884 (List!1724 tuple2!2582) Bool)

(assert (=> b!128125 (= e!83678 (contains!884 (toList!862 lt!66315) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38699 res!61886) b!128124))

(assert (= (and b!128124 res!61887) b!128125))

(declare-fun m!149987 () Bool)

(assert (=> d!38699 m!149987))

(declare-fun m!149989 () Bool)

(assert (=> d!38699 m!149989))

(declare-fun m!149991 () Bool)

(assert (=> d!38699 m!149991))

(declare-fun m!149993 () Bool)

(assert (=> d!38699 m!149993))

(declare-fun m!149995 () Bool)

(assert (=> b!128124 m!149995))

(declare-fun m!149997 () Bool)

(assert (=> b!128125 m!149997))

(assert (=> b!127955 d!38699))

(declare-fun b!128138 () Bool)

(declare-fun e!83686 () SeekEntryResult!281)

(declare-fun lt!66325 () SeekEntryResult!281)

(assert (=> b!128138 (= e!83686 (Found!281 (index!3282 lt!66325)))))

(declare-fun b!128139 () Bool)

(declare-fun c!23481 () Bool)

(declare-fun lt!66327 () (_ BitVec 64))

(assert (=> b!128139 (= c!23481 (= lt!66327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!83685 () SeekEntryResult!281)

(assert (=> b!128139 (= e!83686 e!83685)))

(declare-fun b!128140 () Bool)

(declare-fun e!83687 () SeekEntryResult!281)

(assert (=> b!128140 (= e!83687 Undefined!281)))

(declare-fun b!128141 () Bool)

(assert (=> b!128141 (= e!83687 e!83686)))

(assert (=> b!128141 (= lt!66327 (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66325)))))

(declare-fun c!23480 () Bool)

(assert (=> b!128141 (= c!23480 (= lt!66327 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun d!38701 () Bool)

(declare-fun lt!66326 () SeekEntryResult!281)

(assert (=> d!38701 (and (or ((_ is Undefined!281) lt!66326) (not ((_ is Found!281) lt!66326)) (and (bvsge (index!3281 lt!66326) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66326) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66326) ((_ is Found!281) lt!66326) (not ((_ is MissingZero!281) lt!66326)) (and (bvsge (index!3280 lt!66326) #b00000000000000000000000000000000) (bvslt (index!3280 lt!66326) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66326) ((_ is Found!281) lt!66326) ((_ is MissingZero!281) lt!66326) (not ((_ is MissingVacant!281) lt!66326)) (and (bvsge (index!3283 lt!66326) #b00000000000000000000000000000000) (bvslt (index!3283 lt!66326) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66326) (ite ((_ is Found!281) lt!66326) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66326)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite ((_ is MissingZero!281) lt!66326) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66326)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!281) lt!66326) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66326)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38701 (= lt!66326 e!83687)))

(declare-fun c!23482 () Bool)

(assert (=> d!38701 (= c!23482 (and ((_ is Intermediate!281) lt!66325) (undefined!1093 lt!66325)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4724 (_ BitVec 32)) SeekEntryResult!281)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!38701 (= lt!66325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (=> d!38701 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38701 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)) lt!66326)))

(declare-fun b!128142 () Bool)

(assert (=> b!128142 (= e!83685 (MissingZero!281 (index!3282 lt!66325)))))

(declare-fun b!128143 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4724 (_ BitVec 32)) SeekEntryResult!281)

(assert (=> b!128143 (= e!83685 (seekKeyOrZeroReturnVacant!0 (x!15132 lt!66325) (index!3282 lt!66325) (index!3282 lt!66325) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (= (and d!38701 c!23482) b!128140))

(assert (= (and d!38701 (not c!23482)) b!128141))

(assert (= (and b!128141 c!23480) b!128138))

(assert (= (and b!128141 (not c!23480)) b!128139))

(assert (= (and b!128139 c!23481) b!128142))

(assert (= (and b!128139 (not c!23481)) b!128143))

(declare-fun m!149999 () Bool)

(assert (=> b!128141 m!149999))

(declare-fun m!150001 () Bool)

(assert (=> d!38701 m!150001))

(declare-fun m!150003 () Bool)

(assert (=> d!38701 m!150003))

(declare-fun m!150005 () Bool)

(assert (=> d!38701 m!150005))

(declare-fun m!150007 () Bool)

(assert (=> d!38701 m!150007))

(declare-fun m!150009 () Bool)

(assert (=> d!38701 m!150009))

(assert (=> d!38701 m!149785))

(declare-fun m!150011 () Bool)

(assert (=> d!38701 m!150011))

(assert (=> d!38701 m!149785))

(assert (=> d!38701 m!150009))

(assert (=> b!128143 m!149785))

(declare-fun m!150013 () Bool)

(assert (=> b!128143 m!150013))

(assert (=> b!128075 d!38701))

(declare-fun b!128160 () Bool)

(declare-fun e!83698 () Bool)

(declare-fun call!13862 () Bool)

(assert (=> b!128160 (= e!83698 (not call!13862))))

(declare-fun call!13861 () Bool)

(declare-fun bm!13858 () Bool)

(declare-fun lt!66332 () SeekEntryResult!281)

(declare-fun c!23488 () Bool)

(assert (=> bm!13858 (= call!13861 (inRange!0 (ite c!23488 (index!3280 lt!66332) (index!3283 lt!66332)) (mask!7073 newMap!16)))))

(declare-fun b!128161 () Bool)

(declare-fun e!83697 () Bool)

(declare-fun e!83696 () Bool)

(assert (=> b!128161 (= e!83697 e!83696)))

(declare-fun res!61898 () Bool)

(assert (=> b!128161 (= res!61898 call!13861)))

(assert (=> b!128161 (=> (not res!61898) (not e!83696))))

(declare-fun b!128162 () Bool)

(declare-fun e!83699 () Bool)

(assert (=> b!128162 (= e!83699 ((_ is Undefined!281) lt!66332))))

(declare-fun b!128163 () Bool)

(assert (=> b!128163 (and (bvsge (index!3280 lt!66332) #b00000000000000000000000000000000) (bvslt (index!3280 lt!66332) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!61899 () Bool)

(assert (=> b!128163 (= res!61899 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66332)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128163 (=> (not res!61899) (not e!83696))))

(declare-fun bm!13859 () Bool)

(assert (=> bm!13859 (= call!13862 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!128164 () Bool)

(assert (=> b!128164 (= e!83697 e!83699)))

(declare-fun c!23487 () Bool)

(assert (=> b!128164 (= c!23487 ((_ is MissingVacant!281) lt!66332))))

(declare-fun b!128165 () Bool)

(assert (=> b!128165 (= e!83696 (not call!13862))))

(declare-fun b!128166 () Bool)

(declare-fun res!61896 () Bool)

(assert (=> b!128166 (=> (not res!61896) (not e!83698))))

(assert (=> b!128166 (= res!61896 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66332)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128166 (and (bvsge (index!3283 lt!66332) #b00000000000000000000000000000000) (bvslt (index!3283 lt!66332) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128167 () Bool)

(declare-fun res!61897 () Bool)

(assert (=> b!128167 (=> (not res!61897) (not e!83698))))

(assert (=> b!128167 (= res!61897 call!13861)))

(assert (=> b!128167 (= e!83699 e!83698)))

(declare-fun d!38703 () Bool)

(assert (=> d!38703 e!83697))

(assert (=> d!38703 (= c!23488 ((_ is MissingZero!281) lt!66332))))

(assert (=> d!38703 (= lt!66332 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun lt!66333 () Unit!3998)

(declare-fun choose!781 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) Int) Unit!3998)

(assert (=> d!38703 (= lt!66333 (choose!781 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38703 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38703 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)) lt!66333)))

(assert (= (and d!38703 c!23488) b!128161))

(assert (= (and d!38703 (not c!23488)) b!128164))

(assert (= (and b!128161 res!61898) b!128163))

(assert (= (and b!128163 res!61899) b!128165))

(assert (= (and b!128164 c!23487) b!128167))

(assert (= (and b!128164 (not c!23487)) b!128162))

(assert (= (and b!128167 res!61897) b!128166))

(assert (= (and b!128166 res!61896) b!128160))

(assert (= (or b!128161 b!128167) bm!13858))

(assert (= (or b!128165 b!128160) bm!13859))

(declare-fun m!150015 () Bool)

(assert (=> b!128166 m!150015))

(declare-fun m!150017 () Bool)

(assert (=> b!128163 m!150017))

(declare-fun m!150019 () Bool)

(assert (=> bm!13858 m!150019))

(assert (=> bm!13859 m!149785))

(assert (=> bm!13859 m!149931))

(assert (=> d!38703 m!149785))

(assert (=> d!38703 m!149929))

(assert (=> d!38703 m!149785))

(declare-fun m!150021 () Bool)

(assert (=> d!38703 m!150021))

(assert (=> d!38703 m!150007))

(assert (=> bm!13834 d!38703))

(declare-fun d!38705 () Bool)

(declare-fun res!61904 () Bool)

(declare-fun e!83704 () Bool)

(assert (=> d!38705 (=> res!61904 e!83704)))

(assert (=> d!38705 (= res!61904 (= (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38705 (= (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000) e!83704)))

(declare-fun b!128172 () Bool)

(declare-fun e!83705 () Bool)

(assert (=> b!128172 (= e!83704 e!83705)))

(declare-fun res!61905 () Bool)

(assert (=> b!128172 (=> (not res!61905) (not e!83705))))

(assert (=> b!128172 (= res!61905 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128173 () Bool)

(assert (=> b!128173 (= e!83705 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!38705 (not res!61904)) b!128172))

(assert (= (and b!128172 res!61905) b!128173))

(declare-fun m!150023 () Bool)

(assert (=> d!38705 m!150023))

(assert (=> b!128173 m!149785))

(declare-fun m!150025 () Bool)

(assert (=> b!128173 m!150025))

(assert (=> bm!13843 d!38705))

(assert (=> d!38683 d!38685))

(declare-fun d!38707 () Bool)

(assert (=> d!38707 (= (inRange!0 (ite c!23463 (ite c!23468 (index!3281 lt!66295) (ite c!23459 (index!3280 lt!66284) (index!3283 lt!66284))) (ite c!23467 (index!3281 lt!66283) (ite c!23460 (index!3280 lt!66304) (index!3283 lt!66304)))) (mask!7073 newMap!16)) (and (bvsge (ite c!23463 (ite c!23468 (index!3281 lt!66295) (ite c!23459 (index!3280 lt!66284) (index!3283 lt!66284))) (ite c!23467 (index!3281 lt!66283) (ite c!23460 (index!3280 lt!66304) (index!3283 lt!66304)))) #b00000000000000000000000000000000) (bvslt (ite c!23463 (ite c!23468 (index!3281 lt!66295) (ite c!23459 (index!3280 lt!66284) (index!3283 lt!66284))) (ite c!23467 (index!3281 lt!66283) (ite c!23460 (index!3280 lt!66304) (index!3283 lt!66304)))) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13852 d!38707))

(declare-fun d!38709 () Bool)

(assert (=> d!38709 (= (map!1391 (_2!1302 lt!66286)) (getCurrentListMap!534 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun bs!5306 () Bool)

(assert (= bs!5306 d!38709))

(declare-fun m!150027 () Bool)

(assert (=> bs!5306 m!150027))

(assert (=> bm!13833 d!38709))

(declare-fun d!38711 () Bool)

(declare-fun res!61906 () Bool)

(declare-fun e!83706 () Bool)

(assert (=> d!38711 (=> (not res!61906) (not e!83706))))

(assert (=> d!38711 (= res!61906 (simpleValid!87 (v!3143 (underlying!443 thiss!992))))))

(assert (=> d!38711 (= (valid!510 (v!3143 (underlying!443 thiss!992))) e!83706)))

(declare-fun b!128174 () Bool)

(declare-fun res!61907 () Bool)

(assert (=> b!128174 (=> (not res!61907) (not e!83706))))

(assert (=> b!128174 (= res!61907 (= (arrayCountValidKeys!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))) (_size!586 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!128175 () Bool)

(declare-fun res!61908 () Bool)

(assert (=> b!128175 (=> (not res!61908) (not e!83706))))

(assert (=> b!128175 (= res!61908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!128176 () Bool)

(assert (=> b!128176 (= e!83706 (arrayNoDuplicates!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000 Nil!1723))))

(assert (= (and d!38711 res!61906) b!128174))

(assert (= (and b!128174 res!61907) b!128175))

(assert (= (and b!128175 res!61908) b!128176))

(declare-fun m!150029 () Bool)

(assert (=> d!38711 m!150029))

(declare-fun m!150031 () Bool)

(assert (=> b!128174 m!150031))

(declare-fun m!150033 () Bool)

(assert (=> b!128175 m!150033))

(declare-fun m!150035 () Bool)

(assert (=> b!128176 m!150035))

(assert (=> d!38693 d!38711))

(declare-fun d!38713 () Bool)

(assert (=> d!38713 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66336 () Unit!3998)

(declare-fun choose!782 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 V!3451 Int) Unit!3998)

(assert (=> d!38713 (= lt!66336 (choose!782 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38713 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38713 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)) lt!66336)))

(declare-fun bs!5307 () Bool)

(assert (= bs!5307 d!38713))

(assert (=> bs!5307 m!150007))

(assert (=> bs!5307 m!149783))

(declare-fun m!150037 () Bool)

(assert (=> bs!5307 m!150037))

(assert (=> bs!5307 m!149783))

(declare-fun m!150039 () Bool)

(assert (=> bs!5307 m!150039))

(assert (=> bs!5307 m!149841))

(declare-fun m!150041 () Bool)

(assert (=> bs!5307 m!150041))

(assert (=> bs!5307 m!149841))

(assert (=> b!128062 d!38713))

(declare-fun d!38715 () Bool)

(declare-fun e!83708 () Bool)

(assert (=> d!38715 e!83708))

(declare-fun res!61909 () Bool)

(assert (=> d!38715 (=> res!61909 e!83708)))

(declare-fun lt!66339 () Bool)

(assert (=> d!38715 (= res!61909 (not lt!66339))))

(declare-fun lt!66338 () Bool)

(assert (=> d!38715 (= lt!66339 lt!66338)))

(declare-fun lt!66340 () Unit!3998)

(declare-fun e!83707 () Unit!3998)

(assert (=> d!38715 (= lt!66340 e!83707)))

(declare-fun c!23489 () Bool)

(assert (=> d!38715 (= c!23489 lt!66338)))

(assert (=> d!38715 (= lt!66338 (containsKey!171 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!38715 (= (contains!882 lt!66213 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!66339)))

(declare-fun b!128177 () Bool)

(declare-fun lt!66337 () Unit!3998)

(assert (=> b!128177 (= e!83707 lt!66337)))

(assert (=> b!128177 (= lt!66337 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!128177 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!128178 () Bool)

(declare-fun Unit!4004 () Unit!3998)

(assert (=> b!128178 (= e!83707 Unit!4004)))

(declare-fun b!128179 () Bool)

(assert (=> b!128179 (= e!83708 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!38715 c!23489) b!128177))

(assert (= (and d!38715 (not c!23489)) b!128178))

(assert (= (and d!38715 (not res!61909)) b!128179))

(assert (=> d!38715 m!149865))

(declare-fun m!150043 () Bool)

(assert (=> d!38715 m!150043))

(assert (=> b!128177 m!149865))

(declare-fun m!150045 () Bool)

(assert (=> b!128177 m!150045))

(assert (=> b!128177 m!149865))

(declare-fun m!150047 () Bool)

(assert (=> b!128177 m!150047))

(assert (=> b!128177 m!150047))

(declare-fun m!150049 () Bool)

(assert (=> b!128177 m!150049))

(assert (=> b!128179 m!149865))

(assert (=> b!128179 m!150047))

(assert (=> b!128179 m!150047))

(assert (=> b!128179 m!150049))

(assert (=> b!127951 d!38715))

(declare-fun d!38717 () Bool)

(declare-fun e!83711 () Bool)

(assert (=> d!38717 e!83711))

(declare-fun res!61914 () Bool)

(assert (=> d!38717 (=> (not res!61914) (not e!83711))))

(declare-fun lt!66346 () SeekEntryResult!281)

(assert (=> d!38717 (= res!61914 ((_ is Found!281) lt!66346))))

(assert (=> d!38717 (= lt!66346 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun lt!66345 () Unit!3998)

(declare-fun choose!783 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) Int) Unit!3998)

(assert (=> d!38717 (= lt!66345 (choose!783 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38717 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38717 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)) lt!66345)))

(declare-fun b!128184 () Bool)

(declare-fun res!61915 () Bool)

(assert (=> b!128184 (=> (not res!61915) (not e!83711))))

(assert (=> b!128184 (= res!61915 (inRange!0 (index!3281 lt!66346) (mask!7073 newMap!16)))))

(declare-fun b!128185 () Bool)

(assert (=> b!128185 (= e!83711 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66346)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128185 (and (bvsge (index!3281 lt!66346) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66346) (size!2501 (_keys!4542 newMap!16))))))

(assert (= (and d!38717 res!61914) b!128184))

(assert (= (and b!128184 res!61915) b!128185))

(assert (=> d!38717 m!149785))

(assert (=> d!38717 m!149929))

(assert (=> d!38717 m!149785))

(declare-fun m!150051 () Bool)

(assert (=> d!38717 m!150051))

(assert (=> d!38717 m!150007))

(declare-fun m!150053 () Bool)

(assert (=> b!128184 m!150053))

(declare-fun m!150055 () Bool)

(assert (=> b!128185 m!150055))

(assert (=> bm!13842 d!38717))

(declare-fun d!38719 () Bool)

(declare-fun res!61920 () Bool)

(declare-fun e!83716 () Bool)

(assert (=> d!38719 (=> res!61920 e!83716)))

(assert (=> d!38719 (= res!61920 (and ((_ is Cons!1720) (toList!862 lt!66136)) (= (_1!1301 (h!2323 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!38719 (= (containsKey!171 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!83716)))

(declare-fun b!128190 () Bool)

(declare-fun e!83717 () Bool)

(assert (=> b!128190 (= e!83716 e!83717)))

(declare-fun res!61921 () Bool)

(assert (=> b!128190 (=> (not res!61921) (not e!83717))))

(assert (=> b!128190 (= res!61921 (and (or (not ((_ is Cons!1720) (toList!862 lt!66136))) (bvsle (_1!1301 (h!2323 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) ((_ is Cons!1720) (toList!862 lt!66136)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(declare-fun b!128191 () Bool)

(assert (=> b!128191 (= e!83717 (containsKey!171 (t!6115 (toList!862 lt!66136)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!38719 (not res!61920)) b!128190))

(assert (= (and b!128190 res!61921) b!128191))

(assert (=> b!128191 m!149785))

(declare-fun m!150057 () Bool)

(assert (=> b!128191 m!150057))

(assert (=> d!38687 d!38719))

(declare-fun d!38721 () Bool)

(declare-fun e!83720 () Bool)

(assert (=> d!38721 e!83720))

(declare-fun res!61924 () Bool)

(assert (=> d!38721 (=> (not res!61924) (not e!83720))))

(assert (=> d!38721 (= res!61924 (and (bvsge (index!3281 lt!66287) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66287) (size!2501 (_keys!4542 newMap!16)))))))

(declare-fun lt!66349 () Unit!3998)

(declare-fun choose!784 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) Int) Unit!3998)

(assert (=> d!38721 (= lt!66349 (choose!784 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38721 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38721 (= (lemmaValidKeyInArrayIsInListMap!115 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (defaultEntry!2805 newMap!16)) lt!66349)))

(declare-fun b!128194 () Bool)

(assert (=> b!128194 (= e!83720 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))

(assert (= (and d!38721 res!61924) b!128194))

(declare-fun m!150059 () Bool)

(assert (=> d!38721 m!150059))

(assert (=> d!38721 m!150007))

(declare-fun m!150061 () Bool)

(assert (=> b!128194 m!150061))

(assert (=> b!128194 m!149947))

(assert (=> b!128194 m!150061))

(assert (=> b!128194 m!149947))

(declare-fun m!150063 () Bool)

(assert (=> b!128194 m!150063))

(assert (=> b!128086 d!38721))

(declare-fun d!38723 () Bool)

(declare-fun e!83723 () Bool)

(assert (=> d!38723 e!83723))

(declare-fun res!61927 () Bool)

(assert (=> d!38723 (=> (not res!61927) (not e!83723))))

(assert (=> d!38723 (= res!61927 (and (bvsge (index!3281 lt!66287) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66287) (size!2502 (_values!2788 newMap!16)))))))

(declare-fun lt!66352 () Unit!3998)

(declare-fun choose!785 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) (_ BitVec 64) V!3451 Int) Unit!3998)

(assert (=> d!38723 (= lt!66352 (choose!785 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38723 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38723 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)) lt!66352)))

(declare-fun b!128197 () Bool)

(assert (=> b!128197 (= e!83723 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))))

(assert (= (and d!38723 res!61927) b!128197))

(assert (=> d!38723 m!149785))

(assert (=> d!38723 m!149783))

(declare-fun m!150065 () Bool)

(assert (=> d!38723 m!150065))

(assert (=> d!38723 m!150007))

(assert (=> b!128197 m!149841))

(assert (=> b!128197 m!149841))

(declare-fun m!150067 () Bool)

(assert (=> b!128197 m!150067))

(assert (=> b!128197 m!149915))

(declare-fun m!150069 () Bool)

(assert (=> b!128197 m!150069))

(assert (=> b!128086 d!38723))

(declare-fun d!38725 () Bool)

(declare-fun e!83725 () Bool)

(assert (=> d!38725 e!83725))

(declare-fun res!61928 () Bool)

(assert (=> d!38725 (=> res!61928 e!83725)))

(declare-fun lt!66355 () Bool)

(assert (=> d!38725 (= res!61928 (not lt!66355))))

(declare-fun lt!66354 () Bool)

(assert (=> d!38725 (= lt!66355 lt!66354)))

(declare-fun lt!66356 () Unit!3998)

(declare-fun e!83724 () Unit!3998)

(assert (=> d!38725 (= lt!66356 e!83724)))

(declare-fun c!23490 () Bool)

(assert (=> d!38725 (= c!23490 lt!66354)))

(assert (=> d!38725 (= lt!66354 (containsKey!171 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38725 (= (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66355)))

(declare-fun b!128198 () Bool)

(declare-fun lt!66353 () Unit!3998)

(assert (=> b!128198 (= e!83724 lt!66353)))

(assert (=> b!128198 (= lt!66353 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128198 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128199 () Bool)

(declare-fun Unit!4005 () Unit!3998)

(assert (=> b!128199 (= e!83724 Unit!4005)))

(declare-fun b!128200 () Bool)

(assert (=> b!128200 (= e!83725 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (= (and d!38725 c!23490) b!128198))

(assert (= (and d!38725 (not c!23490)) b!128199))

(assert (= (and d!38725 (not res!61928)) b!128200))

(assert (=> d!38725 m!149785))

(declare-fun m!150071 () Bool)

(assert (=> d!38725 m!150071))

(assert (=> b!128198 m!149785))

(declare-fun m!150073 () Bool)

(assert (=> b!128198 m!150073))

(assert (=> b!128198 m!149785))

(declare-fun m!150075 () Bool)

(assert (=> b!128198 m!150075))

(assert (=> b!128198 m!150075))

(declare-fun m!150077 () Bool)

(assert (=> b!128198 m!150077))

(assert (=> b!128200 m!149785))

(assert (=> b!128200 m!150075))

(assert (=> b!128200 m!150075))

(assert (=> b!128200 m!150077))

(assert (=> b!128086 d!38725))

(declare-fun call!13865 () ListLongMap!1693)

(declare-fun c!23496 () Bool)

(declare-fun c!23492 () Bool)

(declare-fun bm!13860 () Bool)

(declare-fun call!13867 () ListLongMap!1693)

(declare-fun call!13863 () ListLongMap!1693)

(declare-fun call!13864 () ListLongMap!1693)

(assert (=> bm!13860 (= call!13863 (+!166 (ite c!23496 call!13867 (ite c!23492 call!13865 call!13864)) (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128201 () Bool)

(declare-fun e!83736 () ListLongMap!1693)

(declare-fun call!13866 () ListLongMap!1693)

(assert (=> b!128201 (= e!83736 call!13866)))

(declare-fun b!128202 () Bool)

(declare-fun e!83733 () Bool)

(declare-fun call!13868 () Bool)

(assert (=> b!128202 (= e!83733 (not call!13868))))

(declare-fun bm!13861 () Bool)

(declare-fun call!13869 () Bool)

(declare-fun lt!66378 () ListLongMap!1693)

(assert (=> bm!13861 (= call!13869 (contains!882 lt!66378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128203 () Bool)

(declare-fun c!23491 () Bool)

(assert (=> b!128203 (= c!23491 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!83735 () ListLongMap!1693)

(assert (=> b!128203 (= e!83736 e!83735)))

(declare-fun b!128204 () Bool)

(declare-fun e!83732 () Bool)

(assert (=> b!128204 (= e!83733 e!83732)))

(declare-fun res!61930 () Bool)

(assert (=> b!128204 (= res!61930 call!13868)))

(assert (=> b!128204 (=> (not res!61930) (not e!83732))))

(declare-fun b!128205 () Bool)

(declare-fun e!83734 () Unit!3998)

(declare-fun lt!66367 () Unit!3998)

(assert (=> b!128205 (= e!83734 lt!66367)))

(declare-fun lt!66372 () ListLongMap!1693)

(assert (=> b!128205 (= lt!66372 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66373 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66371 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66371 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66360 () Unit!3998)

(assert (=> b!128205 (= lt!66360 (addStillContains!88 lt!66372 lt!66373 (zeroValue!2666 newMap!16) lt!66371))))

(assert (=> b!128205 (contains!882 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) lt!66371)))

(declare-fun lt!66359 () Unit!3998)

(assert (=> b!128205 (= lt!66359 lt!66360)))

(declare-fun lt!66368 () ListLongMap!1693)

(assert (=> b!128205 (= lt!66368 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66364 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66364 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66377 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66377 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66370 () Unit!3998)

(assert (=> b!128205 (= lt!66370 (addApplyDifferent!88 lt!66368 lt!66364 (minValue!2666 newMap!16) lt!66377))))

(assert (=> b!128205 (= (apply!112 (+!166 lt!66368 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) lt!66377) (apply!112 lt!66368 lt!66377))))

(declare-fun lt!66362 () Unit!3998)

(assert (=> b!128205 (= lt!66362 lt!66370)))

(declare-fun lt!66369 () ListLongMap!1693)

(assert (=> b!128205 (= lt!66369 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66358 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66358 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66375 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66375 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66363 () Unit!3998)

(assert (=> b!128205 (= lt!66363 (addApplyDifferent!88 lt!66369 lt!66358 (zeroValue!2666 newMap!16) lt!66375))))

(assert (=> b!128205 (= (apply!112 (+!166 lt!66369 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) lt!66375) (apply!112 lt!66369 lt!66375))))

(declare-fun lt!66357 () Unit!3998)

(assert (=> b!128205 (= lt!66357 lt!66363)))

(declare-fun lt!66365 () ListLongMap!1693)

(assert (=> b!128205 (= lt!66365 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66366 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66366 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66376 () (_ BitVec 64))

(assert (=> b!128205 (= lt!66376 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!128205 (= lt!66367 (addApplyDifferent!88 lt!66365 lt!66366 (minValue!2666 newMap!16) lt!66376))))

(assert (=> b!128205 (= (apply!112 (+!166 lt!66365 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) lt!66376) (apply!112 lt!66365 lt!66376))))

(declare-fun b!128206 () Bool)

(assert (=> b!128206 (= e!83735 call!13866)))

(declare-fun b!128207 () Bool)

(declare-fun e!83729 () Bool)

(assert (=> b!128207 (= e!83729 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128208 () Bool)

(assert (=> b!128208 (= e!83732 (= (apply!112 lt!66378 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128209 () Bool)

(declare-fun e!83728 () Bool)

(assert (=> b!128209 (= e!83728 e!83733)))

(declare-fun c!23494 () Bool)

(assert (=> b!128209 (= c!23494 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128210 () Bool)

(declare-fun e!83737 () Bool)

(declare-fun e!83731 () Bool)

(assert (=> b!128210 (= e!83737 e!83731)))

(declare-fun res!61936 () Bool)

(assert (=> b!128210 (=> (not res!61936) (not e!83731))))

(assert (=> b!128210 (= res!61936 (contains!882 lt!66378 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128210 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128211 () Bool)

(declare-fun res!61934 () Bool)

(assert (=> b!128211 (=> (not res!61934) (not e!83728))))

(assert (=> b!128211 (= res!61934 e!83737)))

(declare-fun res!61932 () Bool)

(assert (=> b!128211 (=> res!61932 e!83737)))

(assert (=> b!128211 (= res!61932 (not e!83729))))

(declare-fun res!61929 () Bool)

(assert (=> b!128211 (=> (not res!61929) (not e!83729))))

(assert (=> b!128211 (= res!61929 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128212 () Bool)

(assert (=> b!128212 (= e!83735 call!13864)))

(declare-fun b!128213 () Bool)

(declare-fun e!83730 () Bool)

(declare-fun e!83738 () Bool)

(assert (=> b!128213 (= e!83730 e!83738)))

(declare-fun res!61937 () Bool)

(assert (=> b!128213 (= res!61937 call!13869)))

(assert (=> b!128213 (=> (not res!61937) (not e!83738))))

(declare-fun b!128214 () Bool)

(declare-fun e!83726 () ListLongMap!1693)

(assert (=> b!128214 (= e!83726 (+!166 call!13863 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13862 () Bool)

(assert (=> bm!13862 (= call!13868 (contains!882 lt!66378 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13863 () Bool)

(assert (=> bm!13863 (= call!13866 call!13863)))

(declare-fun b!128215 () Bool)

(declare-fun res!61931 () Bool)

(assert (=> b!128215 (=> (not res!61931) (not e!83728))))

(assert (=> b!128215 (= res!61931 e!83730)))

(declare-fun c!23493 () Bool)

(assert (=> b!128215 (= c!23493 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13864 () Bool)

(assert (=> bm!13864 (= call!13865 call!13867)))

(declare-fun b!128216 () Bool)

(assert (=> b!128216 (= e!83726 e!83736)))

(assert (=> b!128216 (= c!23492 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128217 () Bool)

(declare-fun e!83727 () Bool)

(assert (=> b!128217 (= e!83727 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13865 () Bool)

(assert (=> bm!13865 (= call!13864 call!13865)))

(declare-fun b!128218 () Bool)

(assert (=> b!128218 (= e!83738 (= (apply!112 lt!66378 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!38727 () Bool)

(assert (=> d!38727 e!83728))

(declare-fun res!61933 () Bool)

(assert (=> d!38727 (=> (not res!61933) (not e!83728))))

(assert (=> d!38727 (= res!61933 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66361 () ListLongMap!1693)

(assert (=> d!38727 (= lt!66378 lt!66361)))

(declare-fun lt!66374 () Unit!3998)

(assert (=> d!38727 (= lt!66374 e!83734)))

(declare-fun c!23495 () Bool)

(assert (=> d!38727 (= c!23495 e!83727)))

(declare-fun res!61935 () Bool)

(assert (=> d!38727 (=> (not res!61935) (not e!83727))))

(assert (=> d!38727 (= res!61935 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38727 (= lt!66361 e!83726)))

(assert (=> d!38727 (= c!23496 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38727 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38727 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66378)))

(declare-fun b!128219 () Bool)

(declare-fun Unit!4006 () Unit!3998)

(assert (=> b!128219 (= e!83734 Unit!4006)))

(declare-fun b!128220 () Bool)

(assert (=> b!128220 (= e!83731 (= (apply!112 lt!66378 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128220 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (_values!2788 newMap!16))))))

(assert (=> b!128220 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13866 () Bool)

(assert (=> bm!13866 (= call!13867 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128221 () Bool)

(assert (=> b!128221 (= e!83730 (not call!13869))))

(assert (= (and d!38727 c!23496) b!128214))

(assert (= (and d!38727 (not c!23496)) b!128216))

(assert (= (and b!128216 c!23492) b!128201))

(assert (= (and b!128216 (not c!23492)) b!128203))

(assert (= (and b!128203 c!23491) b!128206))

(assert (= (and b!128203 (not c!23491)) b!128212))

(assert (= (or b!128206 b!128212) bm!13865))

(assert (= (or b!128201 bm!13865) bm!13864))

(assert (= (or b!128201 b!128206) bm!13863))

(assert (= (or b!128214 bm!13864) bm!13866))

(assert (= (or b!128214 bm!13863) bm!13860))

(assert (= (and d!38727 res!61935) b!128217))

(assert (= (and d!38727 c!23495) b!128205))

(assert (= (and d!38727 (not c!23495)) b!128219))

(assert (= (and d!38727 res!61933) b!128211))

(assert (= (and b!128211 res!61929) b!128207))

(assert (= (and b!128211 (not res!61932)) b!128210))

(assert (= (and b!128210 res!61936) b!128220))

(assert (= (and b!128211 res!61934) b!128215))

(assert (= (and b!128215 c!23493) b!128213))

(assert (= (and b!128215 (not c!23493)) b!128221))

(assert (= (and b!128213 res!61937) b!128218))

(assert (= (or b!128213 b!128221) bm!13861))

(assert (= (and b!128215 res!61931) b!128209))

(assert (= (and b!128209 c!23494) b!128204))

(assert (= (and b!128209 (not c!23494)) b!128202))

(assert (= (and b!128204 res!61930) b!128208))

(assert (= (or b!128204 b!128202) bm!13862))

(declare-fun b_lambda!5693 () Bool)

(assert (=> (not b_lambda!5693) (not b!128220)))

(declare-fun tb!2361 () Bool)

(declare-fun t!6123 () Bool)

(assert (=> (and b!127831 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16)) t!6123) tb!2361))

(declare-fun result!3905 () Bool)

(assert (=> tb!2361 (= result!3905 tp_is_empty!2853)))

(assert (=> b!128220 t!6123))

(declare-fun b_and!7933 () Bool)

(assert (= b_and!7929 (and (=> t!6123 result!3905) b_and!7933)))

(declare-fun t!6125 () Bool)

(declare-fun tb!2363 () Bool)

(assert (=> (and b!127844 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 newMap!16)) t!6125) tb!2363))

(declare-fun result!3907 () Bool)

(assert (= result!3907 result!3905))

(assert (=> b!128220 t!6125))

(declare-fun b_and!7935 () Bool)

(assert (= b_and!7931 (and (=> t!6125 result!3907) b_and!7935)))

(declare-fun m!150079 () Bool)

(assert (=> bm!13862 m!150079))

(declare-fun m!150081 () Bool)

(assert (=> b!128218 m!150081))

(declare-fun m!150083 () Bool)

(assert (=> bm!13866 m!150083))

(declare-fun m!150085 () Bool)

(assert (=> b!128205 m!150085))

(declare-fun m!150087 () Bool)

(assert (=> b!128205 m!150087))

(declare-fun m!150089 () Bool)

(assert (=> b!128205 m!150089))

(declare-fun m!150091 () Bool)

(assert (=> b!128205 m!150091))

(declare-fun m!150093 () Bool)

(assert (=> b!128205 m!150093))

(declare-fun m!150095 () Bool)

(assert (=> b!128205 m!150095))

(declare-fun m!150097 () Bool)

(assert (=> b!128205 m!150097))

(declare-fun m!150099 () Bool)

(assert (=> b!128205 m!150099))

(assert (=> b!128205 m!150023))

(declare-fun m!150101 () Bool)

(assert (=> b!128205 m!150101))

(declare-fun m!150103 () Bool)

(assert (=> b!128205 m!150103))

(assert (=> b!128205 m!150091))

(declare-fun m!150105 () Bool)

(assert (=> b!128205 m!150105))

(declare-fun m!150107 () Bool)

(assert (=> b!128205 m!150107))

(assert (=> b!128205 m!150089))

(declare-fun m!150109 () Bool)

(assert (=> b!128205 m!150109))

(assert (=> b!128205 m!150083))

(assert (=> b!128205 m!150101))

(declare-fun m!150111 () Bool)

(assert (=> b!128205 m!150111))

(assert (=> b!128205 m!150087))

(declare-fun m!150113 () Bool)

(assert (=> b!128205 m!150113))

(assert (=> d!38727 m!150007))

(assert (=> b!128217 m!150023))

(assert (=> b!128217 m!150023))

(declare-fun m!150115 () Bool)

(assert (=> b!128217 m!150115))

(declare-fun m!150117 () Bool)

(assert (=> bm!13861 m!150117))

(declare-fun m!150119 () Bool)

(assert (=> b!128214 m!150119))

(declare-fun m!150121 () Bool)

(assert (=> b!128208 m!150121))

(assert (=> b!128220 m!150023))

(declare-fun m!150123 () Bool)

(assert (=> b!128220 m!150123))

(declare-fun m!150125 () Bool)

(assert (=> b!128220 m!150125))

(declare-fun m!150127 () Bool)

(assert (=> b!128220 m!150127))

(assert (=> b!128220 m!150023))

(assert (=> b!128220 m!150125))

(assert (=> b!128220 m!150127))

(declare-fun m!150129 () Bool)

(assert (=> b!128220 m!150129))

(assert (=> b!128207 m!150023))

(assert (=> b!128207 m!150023))

(assert (=> b!128207 m!150115))

(declare-fun m!150131 () Bool)

(assert (=> bm!13860 m!150131))

(assert (=> b!128210 m!150023))

(assert (=> b!128210 m!150023))

(declare-fun m!150133 () Bool)

(assert (=> b!128210 m!150133))

(assert (=> b!128086 d!38727))

(assert (=> d!38681 d!38727))

(declare-fun b!128230 () Bool)

(declare-fun e!83744 () (_ BitVec 32))

(assert (=> b!128230 (= e!83744 #b00000000000000000000000000000000)))

(declare-fun bm!13869 () Bool)

(declare-fun call!13872 () (_ BitVec 32))

(assert (=> bm!13869 (= call!13872 (arrayCountValidKeys!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128231 () Bool)

(declare-fun e!83743 () (_ BitVec 32))

(assert (=> b!128231 (= e!83744 e!83743)))

(declare-fun c!23502 () Bool)

(assert (=> b!128231 (= c!23502 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!38729 () Bool)

(declare-fun lt!66381 () (_ BitVec 32))

(assert (=> d!38729 (and (bvsge lt!66381 #b00000000000000000000000000000000) (bvsle lt!66381 (bvsub (size!2501 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!38729 (= lt!66381 e!83744)))

(declare-fun c!23501 () Bool)

(assert (=> d!38729 (= c!23501 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38729 (and (bvsle #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2501 (_keys!4542 newMap!16)) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38729 (= (arrayCountValidKeys!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) lt!66381)))

(declare-fun b!128232 () Bool)

(assert (=> b!128232 (= e!83743 call!13872)))

(declare-fun b!128233 () Bool)

(assert (=> b!128233 (= e!83743 (bvadd #b00000000000000000000000000000001 call!13872))))

(assert (= (and d!38729 c!23501) b!128230))

(assert (= (and d!38729 (not c!23501)) b!128231))

(assert (= (and b!128231 c!23502) b!128233))

(assert (= (and b!128231 (not c!23502)) b!128232))

(assert (= (or b!128233 b!128232) bm!13869))

(declare-fun m!150135 () Bool)

(assert (=> bm!13869 m!150135))

(assert (=> b!128231 m!150023))

(assert (=> b!128231 m!150023))

(assert (=> b!128231 m!150115))

(assert (=> b!128104 d!38729))

(declare-fun d!38731 () Bool)

(declare-fun res!61949 () Bool)

(declare-fun e!83747 () Bool)

(assert (=> d!38731 (=> (not res!61949) (not e!83747))))

(assert (=> d!38731 (= res!61949 (validMask!0 (mask!7073 newMap!16)))))

(assert (=> d!38731 (= (simpleValid!87 newMap!16) e!83747)))

(declare-fun b!128242 () Bool)

(declare-fun res!61947 () Bool)

(assert (=> b!128242 (=> (not res!61947) (not e!83747))))

(assert (=> b!128242 (= res!61947 (and (= (size!2502 (_values!2788 newMap!16)) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001)) (= (size!2501 (_keys!4542 newMap!16)) (size!2502 (_values!2788 newMap!16))) (bvsge (_size!586 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!586 newMap!16) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!128243 () Bool)

(declare-fun res!61948 () Bool)

(assert (=> b!128243 (=> (not res!61948) (not e!83747))))

(declare-fun size!2505 (LongMapFixedSize!1074) (_ BitVec 32))

(assert (=> b!128243 (= res!61948 (bvsge (size!2505 newMap!16) (_size!586 newMap!16)))))

(declare-fun b!128244 () Bool)

(declare-fun res!61946 () Bool)

(assert (=> b!128244 (=> (not res!61946) (not e!83747))))

(assert (=> b!128244 (= res!61946 (= (size!2505 newMap!16) (bvadd (_size!586 newMap!16) (bvsdiv (bvadd (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!128245 () Bool)

(assert (=> b!128245 (= e!83747 (and (bvsge (extraKeys!2582 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2582 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!586 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!38731 res!61949) b!128242))

(assert (= (and b!128242 res!61947) b!128243))

(assert (= (and b!128243 res!61948) b!128244))

(assert (= (and b!128244 res!61946) b!128245))

(assert (=> d!38731 m!150007))

(declare-fun m!150137 () Bool)

(assert (=> b!128243 m!150137))

(assert (=> b!128244 m!150137))

(assert (=> d!38695 d!38731))

(declare-fun d!38733 () Bool)

(declare-fun e!83748 () Bool)

(assert (=> d!38733 e!83748))

(declare-fun res!61950 () Bool)

(assert (=> d!38733 (=> (not res!61950) (not e!83748))))

(declare-fun lt!66382 () ListLongMap!1693)

(assert (=> d!38733 (= res!61950 (contains!882 lt!66382 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66383 () List!1724)

(assert (=> d!38733 (= lt!66382 (ListLongMap!1694 lt!66383))))

(declare-fun lt!66384 () Unit!3998)

(declare-fun lt!66385 () Unit!3998)

(assert (=> d!38733 (= lt!66384 lt!66385)))

(assert (=> d!38733 (= (getValueByKey!167 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38733 (= lt!66385 (lemmaContainsTupThenGetReturnValue!84 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38733 (= lt!66383 (insertStrictlySorted!86 (toList!862 call!13840) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38733 (= (+!166 call!13840 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66382)))

(declare-fun b!128246 () Bool)

(declare-fun res!61951 () Bool)

(assert (=> b!128246 (=> (not res!61951) (not e!83748))))

(assert (=> b!128246 (= res!61951 (= (getValueByKey!167 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128247 () Bool)

(assert (=> b!128247 (= e!83748 (contains!884 (toList!862 lt!66382) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!38733 res!61950) b!128246))

(assert (= (and b!128246 res!61951) b!128247))

(declare-fun m!150139 () Bool)

(assert (=> d!38733 m!150139))

(declare-fun m!150141 () Bool)

(assert (=> d!38733 m!150141))

(declare-fun m!150143 () Bool)

(assert (=> d!38733 m!150143))

(declare-fun m!150145 () Bool)

(assert (=> d!38733 m!150145))

(declare-fun m!150147 () Bool)

(assert (=> b!128246 m!150147))

(declare-fun m!150149 () Bool)

(assert (=> b!128247 m!150149))

(assert (=> b!128090 d!38733))

(declare-fun d!38735 () Bool)

(declare-fun e!83750 () Bool)

(assert (=> d!38735 e!83750))

(declare-fun res!61952 () Bool)

(assert (=> d!38735 (=> res!61952 e!83750)))

(declare-fun lt!66388 () Bool)

(assert (=> d!38735 (= res!61952 (not lt!66388))))

(declare-fun lt!66387 () Bool)

(assert (=> d!38735 (= lt!66388 lt!66387)))

(declare-fun lt!66389 () Unit!3998)

(declare-fun e!83749 () Unit!3998)

(assert (=> d!38735 (= lt!66389 e!83749)))

(declare-fun c!23503 () Bool)

(assert (=> d!38735 (= c!23503 lt!66387)))

(assert (=> d!38735 (= lt!66387 (containsKey!171 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!38735 (= (contains!882 lt!66213 #b1000000000000000000000000000000000000000000000000000000000000000) lt!66388)))

(declare-fun b!128248 () Bool)

(declare-fun lt!66386 () Unit!3998)

(assert (=> b!128248 (= e!83749 lt!66386)))

(assert (=> b!128248 (= lt!66386 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128248 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128249 () Bool)

(declare-fun Unit!4007 () Unit!3998)

(assert (=> b!128249 (= e!83749 Unit!4007)))

(declare-fun b!128250 () Bool)

(assert (=> b!128250 (= e!83750 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38735 c!23503) b!128248))

(assert (= (and d!38735 (not c!23503)) b!128249))

(assert (= (and d!38735 (not res!61952)) b!128250))

(declare-fun m!150151 () Bool)

(assert (=> d!38735 m!150151))

(declare-fun m!150153 () Bool)

(assert (=> b!128248 m!150153))

(declare-fun m!150155 () Bool)

(assert (=> b!128248 m!150155))

(assert (=> b!128248 m!150155))

(declare-fun m!150157 () Bool)

(assert (=> b!128248 m!150157))

(assert (=> b!128250 m!150155))

(assert (=> b!128250 m!150155))

(assert (=> b!128250 m!150157))

(assert (=> bm!13777 d!38735))

(assert (=> b!128082 d!38727))

(declare-fun d!38737 () Bool)

(assert (=> d!38737 (= (get!1464 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3142 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128096 d!38737))

(declare-fun d!38739 () Bool)

(declare-fun get!1466 (Option!173) V!3451)

(assert (=> d!38739 (= (apply!112 lt!66213 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1466 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5308 () Bool)

(assert (= bs!5308 d!38739))

(assert (=> bs!5308 m!149865))

(assert (=> bs!5308 m!150047))

(assert (=> bs!5308 m!150047))

(declare-fun m!150159 () Bool)

(assert (=> bs!5308 m!150159))

(assert (=> b!127961 d!38739))

(declare-fun d!38741 () Bool)

(declare-fun c!23504 () Bool)

(assert (=> d!38741 (= c!23504 ((_ is ValueCellFull!1083) (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!83751 () V!3451)

(assert (=> d!38741 (= (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!83751)))

(declare-fun b!128251 () Bool)

(assert (=> b!128251 (= e!83751 (get!1464 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128252 () Bool)

(assert (=> b!128252 (= e!83751 (get!1465 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38741 c!23504) b!128251))

(assert (= (and d!38741 (not c!23504)) b!128252))

(assert (=> b!128251 m!149891))

(assert (=> b!128251 m!149781))

(declare-fun m!150161 () Bool)

(assert (=> b!128251 m!150161))

(assert (=> b!128252 m!149891))

(assert (=> b!128252 m!149781))

(declare-fun m!150163 () Bool)

(assert (=> b!128252 m!150163))

(assert (=> b!127961 d!38741))

(declare-fun d!38743 () Bool)

(assert (=> d!38743 (isDefined!121 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun lt!66392 () Unit!3998)

(declare-fun choose!786 (List!1724 (_ BitVec 64)) Unit!3998)

(assert (=> d!38743 (= lt!66392 (choose!786 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun e!83754 () Bool)

(assert (=> d!38743 e!83754))

(declare-fun res!61955 () Bool)

(assert (=> d!38743 (=> (not res!61955) (not e!83754))))

(declare-fun isStrictlySorted!313 (List!1724) Bool)

(assert (=> d!38743 (= res!61955 (isStrictlySorted!313 (toList!862 lt!66136)))))

(assert (=> d!38743 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66392)))

(declare-fun b!128255 () Bool)

(assert (=> b!128255 (= e!83754 (containsKey!171 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!38743 res!61955) b!128255))

(assert (=> d!38743 m!149785))

(assert (=> d!38743 m!149903))

(assert (=> d!38743 m!149903))

(assert (=> d!38743 m!149905))

(assert (=> d!38743 m!149785))

(declare-fun m!150165 () Bool)

(assert (=> d!38743 m!150165))

(declare-fun m!150167 () Bool)

(assert (=> d!38743 m!150167))

(assert (=> b!128255 m!149785))

(assert (=> b!128255 m!149899))

(assert (=> b!127969 d!38743))

(declare-fun d!38745 () Bool)

(declare-fun isEmpty!404 (Option!173) Bool)

(assert (=> d!38745 (= (isDefined!121 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) (not (isEmpty!404 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(declare-fun bs!5309 () Bool)

(assert (= bs!5309 d!38745))

(assert (=> bs!5309 m!149903))

(declare-fun m!150169 () Bool)

(assert (=> bs!5309 m!150169))

(assert (=> b!127969 d!38745))

(declare-fun b!128267 () Bool)

(declare-fun e!83760 () Option!173)

(assert (=> b!128267 (= e!83760 None!171)))

(declare-fun b!128266 () Bool)

(assert (=> b!128266 (= e!83760 (getValueByKey!167 (t!6115 (toList!862 lt!66136)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128264 () Bool)

(declare-fun e!83759 () Option!173)

(assert (=> b!128264 (= e!83759 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66136)))))))

(declare-fun d!38747 () Bool)

(declare-fun c!23509 () Bool)

(assert (=> d!38747 (= c!23509 (and ((_ is Cons!1720) (toList!862 lt!66136)) (= (_1!1301 (h!2323 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!38747 (= (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!83759)))

(declare-fun b!128265 () Bool)

(assert (=> b!128265 (= e!83759 e!83760)))

(declare-fun c!23510 () Bool)

(assert (=> b!128265 (= c!23510 (and ((_ is Cons!1720) (toList!862 lt!66136)) (not (= (_1!1301 (h!2323 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(assert (= (and d!38747 c!23509) b!128264))

(assert (= (and d!38747 (not c!23509)) b!128265))

(assert (= (and b!128265 c!23510) b!128266))

(assert (= (and b!128265 (not c!23510)) b!128267))

(assert (=> b!128266 m!149785))

(declare-fun m!150171 () Bool)

(assert (=> b!128266 m!150171))

(assert (=> b!127969 d!38747))

(declare-fun d!38749 () Bool)

(declare-fun e!83762 () Bool)

(assert (=> d!38749 e!83762))

(declare-fun res!61956 () Bool)

(assert (=> d!38749 (=> res!61956 e!83762)))

(declare-fun lt!66395 () Bool)

(assert (=> d!38749 (= res!61956 (not lt!66395))))

(declare-fun lt!66394 () Bool)

(assert (=> d!38749 (= lt!66395 lt!66394)))

(declare-fun lt!66396 () Unit!3998)

(declare-fun e!83761 () Unit!3998)

(assert (=> d!38749 (= lt!66396 e!83761)))

(declare-fun c!23511 () Bool)

(assert (=> d!38749 (= c!23511 lt!66394)))

(assert (=> d!38749 (= lt!66394 (containsKey!171 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!38749 (= (contains!882 lt!66213 #b0000000000000000000000000000000000000000000000000000000000000000) lt!66395)))

(declare-fun b!128268 () Bool)

(declare-fun lt!66393 () Unit!3998)

(assert (=> b!128268 (= e!83761 lt!66393)))

(assert (=> b!128268 (= lt!66393 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128268 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128269 () Bool)

(declare-fun Unit!4008 () Unit!3998)

(assert (=> b!128269 (= e!83761 Unit!4008)))

(declare-fun b!128270 () Bool)

(assert (=> b!128270 (= e!83762 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38749 c!23511) b!128268))

(assert (= (and d!38749 (not c!23511)) b!128269))

(assert (= (and d!38749 (not res!61956)) b!128270))

(declare-fun m!150173 () Bool)

(assert (=> d!38749 m!150173))

(declare-fun m!150175 () Bool)

(assert (=> b!128268 m!150175))

(declare-fun m!150177 () Bool)

(assert (=> b!128268 m!150177))

(assert (=> b!128268 m!150177))

(declare-fun m!150179 () Bool)

(assert (=> b!128268 m!150179))

(assert (=> b!128270 m!150177))

(assert (=> b!128270 m!150177))

(assert (=> b!128270 m!150179))

(assert (=> bm!13776 d!38749))

(declare-fun d!38751 () Bool)

(declare-fun e!83763 () Bool)

(assert (=> d!38751 e!83763))

(declare-fun res!61957 () Bool)

(assert (=> d!38751 (=> (not res!61957) (not e!83763))))

(declare-fun lt!66397 () ListLongMap!1693)

(assert (=> d!38751 (= res!61957 (contains!882 lt!66397 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!66398 () List!1724)

(assert (=> d!38751 (= lt!66397 (ListLongMap!1694 lt!66398))))

(declare-fun lt!66399 () Unit!3998)

(declare-fun lt!66400 () Unit!3998)

(assert (=> d!38751 (= lt!66399 lt!66400)))

(assert (=> d!38751 (= (getValueByKey!167 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!172 (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38751 (= lt!66400 (lemmaContainsTupThenGetReturnValue!84 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38751 (= lt!66398 (insertStrictlySorted!86 (toList!862 e!83650) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38751 (= (+!166 e!83650 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!66397)))

(declare-fun b!128271 () Bool)

(declare-fun res!61958 () Bool)

(assert (=> b!128271 (=> (not res!61958) (not e!83763))))

(assert (=> b!128271 (= res!61958 (= (getValueByKey!167 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!172 (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!128272 () Bool)

(assert (=> b!128272 (= e!83763 (contains!884 (toList!862 lt!66397) (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!38751 res!61957) b!128271))

(assert (= (and b!128271 res!61958) b!128272))

(declare-fun m!150181 () Bool)

(assert (=> d!38751 m!150181))

(declare-fun m!150183 () Bool)

(assert (=> d!38751 m!150183))

(declare-fun m!150185 () Bool)

(assert (=> d!38751 m!150185))

(declare-fun m!150187 () Bool)

(assert (=> d!38751 m!150187))

(declare-fun m!150189 () Bool)

(assert (=> b!128271 m!150189))

(declare-fun m!150191 () Bool)

(assert (=> b!128272 m!150191))

(assert (=> bm!13840 d!38751))

(declare-fun d!38753 () Bool)

(declare-fun e!83765 () Bool)

(assert (=> d!38753 e!83765))

(declare-fun res!61959 () Bool)

(assert (=> d!38753 (=> res!61959 e!83765)))

(declare-fun lt!66403 () Bool)

(assert (=> d!38753 (= res!61959 (not lt!66403))))

(declare-fun lt!66402 () Bool)

(assert (=> d!38753 (= lt!66403 lt!66402)))

(declare-fun lt!66404 () Unit!3998)

(declare-fun e!83764 () Unit!3998)

(assert (=> d!38753 (= lt!66404 e!83764)))

(declare-fun c!23512 () Bool)

(assert (=> d!38753 (= c!23512 lt!66402)))

(assert (=> d!38753 (= lt!66402 (containsKey!171 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(assert (=> d!38753 (= (contains!882 call!13833 (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))) lt!66403)))

(declare-fun b!128273 () Bool)

(declare-fun lt!66401 () Unit!3998)

(assert (=> b!128273 (= e!83764 lt!66401)))

(assert (=> b!128273 (= lt!66401 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(assert (=> b!128273 (isDefined!121 (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(declare-fun b!128274 () Bool)

(declare-fun Unit!4009 () Unit!3998)

(assert (=> b!128274 (= e!83764 Unit!4009)))

(declare-fun b!128275 () Bool)

(assert (=> b!128275 (= e!83765 (isDefined!121 (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))))

(assert (= (and d!38753 c!23512) b!128273))

(assert (= (and d!38753 (not c!23512)) b!128274))

(assert (= (and d!38753 (not res!61959)) b!128275))

(declare-fun m!150193 () Bool)

(assert (=> d!38753 m!150193))

(declare-fun m!150195 () Bool)

(assert (=> b!128273 m!150195))

(declare-fun m!150197 () Bool)

(assert (=> b!128273 m!150197))

(assert (=> b!128273 m!150197))

(declare-fun m!150199 () Bool)

(assert (=> b!128273 m!150199))

(assert (=> b!128275 m!150197))

(assert (=> b!128275 m!150197))

(assert (=> b!128275 m!150199))

(assert (=> bm!13848 d!38753))

(declare-fun b!128310 () Bool)

(declare-fun res!61982 () Bool)

(declare-fun lt!66476 () SeekEntryResult!281)

(assert (=> b!128310 (= res!61982 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66476)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!83782 () Bool)

(assert (=> b!128310 (=> (not res!61982) (not e!83782))))

(declare-fun b!128311 () Bool)

(declare-fun e!83786 () Unit!3998)

(declare-fun Unit!4010 () Unit!3998)

(assert (=> b!128311 (= e!83786 Unit!4010)))

(declare-fun lt!66478 () Unit!3998)

(declare-fun lemmaArrayContainsKeyThenInListMap!38 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) (_ BitVec 32) Int) Unit!3998)

(assert (=> b!128311 (= lt!66478 (lemmaArrayContainsKeyThenInListMap!38 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(assert (=> b!128311 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))

(declare-fun lt!66491 () Unit!3998)

(assert (=> b!128311 (= lt!66491 lt!66478)))

(assert (=> b!128311 false))

(declare-fun b!128312 () Bool)

(declare-fun e!83789 () Bool)

(declare-fun call!13883 () Bool)

(assert (=> b!128312 (= e!83789 (not call!13883))))

(declare-fun b!128313 () Bool)

(declare-fun e!83787 () Unit!3998)

(declare-fun lt!66481 () Unit!3998)

(assert (=> b!128313 (= e!83787 lt!66481)))

(assert (=> b!128313 (= lt!66481 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(declare-fun call!13881 () SeekEntryResult!281)

(assert (=> b!128313 (= lt!66476 call!13881)))

(declare-fun c!23522 () Bool)

(assert (=> b!128313 (= c!23522 ((_ is MissingZero!281) lt!66476))))

(declare-fun e!83783 () Bool)

(assert (=> b!128313 e!83783))

(declare-fun b!128314 () Bool)

(declare-fun e!83784 () Bool)

(declare-fun lt!66486 () SeekEntryResult!281)

(assert (=> b!128314 (= e!83784 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66486)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128315 () Bool)

(declare-fun Unit!4011 () Unit!3998)

(assert (=> b!128315 (= e!83787 Unit!4011)))

(declare-fun lt!66494 () Unit!3998)

(assert (=> b!128315 (= lt!66494 (lemmaInListMapThenSeekEntryOrOpenFindsIt!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)))))

(assert (=> b!128315 (= lt!66486 call!13881)))

(declare-fun res!61984 () Bool)

(assert (=> b!128315 (= res!61984 ((_ is Found!281) lt!66486))))

(assert (=> b!128315 (=> (not res!61984) (not e!83784))))

(assert (=> b!128315 e!83784))

(declare-fun lt!66479 () Unit!3998)

(assert (=> b!128315 (= lt!66479 lt!66494)))

(assert (=> b!128315 false))

(declare-fun d!38755 () Bool)

(declare-fun e!83788 () Bool)

(assert (=> d!38755 e!83788))

(declare-fun res!61981 () Bool)

(assert (=> d!38755 (=> (not res!61981) (not e!83788))))

(declare-fun lt!66468 () tuple2!2584)

(assert (=> d!38755 (= res!61981 (_1!1302 lt!66468))))

(assert (=> d!38755 (= lt!66468 (tuple2!2585 true (LongMapFixedSize!1075 (defaultEntry!2805 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (bvadd (_size!586 newMap!16) #b00000000000000000000000000000001) (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (_vacant!586 newMap!16))))))

(declare-fun lt!66467 () Unit!3998)

(declare-fun lt!66493 () Unit!3998)

(assert (=> d!38755 (= lt!66467 lt!66493)))

(declare-fun lt!66492 () array!4726)

(declare-fun lt!66473 () array!4724)

(assert (=> d!38755 (contains!882 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(assert (=> d!38755 (= lt!66493 (lemmaValidKeyInArrayIsInListMap!115 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38755 (= lt!66492 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))))

(assert (=> d!38755 (= lt!66473 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun lt!66474 () Unit!3998)

(declare-fun lt!66484 () Unit!3998)

(assert (=> d!38755 (= lt!66474 lt!66484)))

(declare-fun lt!66488 () array!4724)

(assert (=> d!38755 (= (arrayCountValidKeys!0 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4724 (_ BitVec 32)) Unit!3998)

(assert (=> d!38755 (= lt!66484 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(assert (=> d!38755 (= lt!66488 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun lt!66472 () Unit!3998)

(declare-fun lt!66487 () Unit!3998)

(assert (=> d!38755 (= lt!66472 lt!66487)))

(declare-fun lt!66471 () array!4724)

(assert (=> d!38755 (arrayContainsKey!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4724 (_ BitVec 64) (_ BitVec 32)) Unit!3998)

(assert (=> d!38755 (= lt!66487 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(assert (=> d!38755 (= lt!66471 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun lt!66465 () Unit!3998)

(declare-fun lt!66477 () Unit!3998)

(assert (=> d!38755 (= lt!66465 lt!66477)))

(assert (=> d!38755 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!38 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) (_ BitVec 64) V!3451 Int) Unit!3998)

(assert (=> d!38755 (= lt!66477 (lemmaAddValidKeyToArrayThenAddPairToListMap!38 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66485 () Unit!3998)

(declare-fun lt!66466 () Unit!3998)

(assert (=> d!38755 (= lt!66485 lt!66466)))

(assert (=> d!38755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (mask!7073 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4724 (_ BitVec 32) (_ BitVec 32)) Unit!3998)

(assert (=> d!38755 (= lt!66466 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (mask!7073 newMap!16)))))

(declare-fun lt!66480 () Unit!3998)

(declare-fun lt!66469 () Unit!3998)

(assert (=> d!38755 (= lt!66480 lt!66469)))

(assert (=> d!38755 (= (arrayCountValidKeys!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4724 (_ BitVec 32) (_ BitVec 64)) Unit!3998)

(assert (=> d!38755 (= lt!66469 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun lt!66475 () Unit!3998)

(declare-fun lt!66470 () Unit!3998)

(assert (=> d!38755 (= lt!66475 lt!66470)))

(declare-fun lt!66482 () (_ BitVec 32))

(declare-fun lt!66489 () List!1726)

(assert (=> d!38755 (arrayNoDuplicates!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) lt!66482 lt!66489)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1726) Unit!3998)

(assert (=> d!38755 (= lt!66470 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) lt!66482 lt!66489))))

(assert (=> d!38755 (= lt!66489 Nil!1723)))

(assert (=> d!38755 (= lt!66482 #b00000000000000000000000000000000)))

(declare-fun lt!66483 () Unit!3998)

(assert (=> d!38755 (= lt!66483 e!83786)))

(declare-fun c!23521 () Bool)

(assert (=> d!38755 (= c!23521 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!66490 () Unit!3998)

(assert (=> d!38755 (= lt!66490 e!83787)))

(declare-fun c!23524 () Bool)

(assert (=> d!38755 (= c!23524 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38755 (valid!510 newMap!16)))

(assert (=> d!38755 (= (updateHelperNewKey!57 newMap!16 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))) lt!66468)))

(declare-fun bm!13878 () Bool)

(declare-fun call!13884 () Bool)

(assert (=> bm!13878 (= call!13884 (inRange!0 (ite c!23524 (index!3281 lt!66486) (ite c!23522 (index!3280 lt!66476) (index!3283 lt!66476))) (mask!7073 newMap!16)))))

(declare-fun b!128316 () Bool)

(declare-fun res!61983 () Bool)

(assert (=> b!128316 (=> (not res!61983) (not e!83789))))

(assert (=> b!128316 (= res!61983 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66476)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128317 () Bool)

(declare-fun res!61986 () Bool)

(assert (=> b!128317 (= res!61986 call!13884)))

(assert (=> b!128317 (=> (not res!61986) (not e!83784))))

(declare-fun b!128318 () Bool)

(assert (=> b!128318 (= e!83788 (= (map!1391 (_2!1302 lt!66468)) (+!166 (map!1391 newMap!16) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128319 () Bool)

(assert (=> b!128319 (= e!83782 (not call!13883))))

(declare-fun bm!13879 () Bool)

(assert (=> bm!13879 (= call!13881 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun b!128320 () Bool)

(declare-fun e!83785 () Bool)

(assert (=> b!128320 (= e!83785 ((_ is Undefined!281) lt!66476))))

(declare-fun b!128321 () Bool)

(assert (=> b!128321 (= e!83785 e!83782)))

(declare-fun res!61979 () Bool)

(declare-fun call!13882 () Bool)

(assert (=> b!128321 (= res!61979 call!13882)))

(assert (=> b!128321 (=> (not res!61979) (not e!83782))))

(declare-fun bm!13880 () Bool)

(assert (=> bm!13880 (= call!13883 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!128322 () Bool)

(declare-fun res!61978 () Bool)

(assert (=> b!128322 (=> (not res!61978) (not e!83788))))

(assert (=> b!128322 (= res!61978 (valid!510 (_2!1302 lt!66468)))))

(declare-fun b!128323 () Bool)

(declare-fun c!23523 () Bool)

(assert (=> b!128323 (= c!23523 ((_ is MissingVacant!281) lt!66476))))

(assert (=> b!128323 (= e!83783 e!83785)))

(declare-fun b!128324 () Bool)

(declare-fun Unit!4012 () Unit!3998)

(assert (=> b!128324 (= e!83786 Unit!4012)))

(declare-fun bm!13881 () Bool)

(assert (=> bm!13881 (= call!13882 call!13884)))

(declare-fun b!128325 () Bool)

(declare-fun res!61980 () Bool)

(assert (=> b!128325 (=> (not res!61980) (not e!83789))))

(assert (=> b!128325 (= res!61980 call!13882)))

(assert (=> b!128325 (= e!83783 e!83789)))

(declare-fun b!128326 () Bool)

(declare-fun res!61985 () Bool)

(assert (=> b!128326 (=> (not res!61985) (not e!83788))))

(assert (=> b!128326 (= res!61985 (contains!882 (map!1391 (_2!1302 lt!66468)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!38755 c!23524) b!128315))

(assert (= (and d!38755 (not c!23524)) b!128313))

(assert (= (and b!128315 res!61984) b!128317))

(assert (= (and b!128317 res!61986) b!128314))

(assert (= (and b!128313 c!23522) b!128325))

(assert (= (and b!128313 (not c!23522)) b!128323))

(assert (= (and b!128325 res!61980) b!128316))

(assert (= (and b!128316 res!61983) b!128312))

(assert (= (and b!128323 c!23523) b!128321))

(assert (= (and b!128323 (not c!23523)) b!128320))

(assert (= (and b!128321 res!61979) b!128310))

(assert (= (and b!128310 res!61982) b!128319))

(assert (= (or b!128325 b!128321) bm!13881))

(assert (= (or b!128312 b!128319) bm!13880))

(assert (= (or b!128317 bm!13881) bm!13878))

(assert (= (or b!128315 b!128313) bm!13879))

(assert (= (and d!38755 c!23521) b!128311))

(assert (= (and d!38755 (not c!23521)) b!128324))

(assert (= (and d!38755 res!61981) b!128322))

(assert (= (and b!128322 res!61978) b!128326))

(assert (= (and b!128326 res!61985) b!128318))

(declare-fun m!150201 () Bool)

(assert (=> b!128318 m!150201))

(assert (=> b!128318 m!149795))

(assert (=> b!128318 m!149795))

(declare-fun m!150203 () Bool)

(assert (=> b!128318 m!150203))

(declare-fun m!150205 () Bool)

(assert (=> b!128316 m!150205))

(declare-fun m!150207 () Bool)

(assert (=> bm!13878 m!150207))

(assert (=> b!128313 m!149785))

(assert (=> b!128313 m!149959))

(assert (=> b!128315 m!149785))

(assert (=> b!128315 m!149921))

(assert (=> b!128326 m!150201))

(assert (=> b!128326 m!150201))

(assert (=> b!128326 m!149785))

(declare-fun m!150209 () Bool)

(assert (=> b!128326 m!150209))

(assert (=> bm!13879 m!149785))

(assert (=> bm!13879 m!149929))

(declare-fun m!150211 () Bool)

(assert (=> b!128322 m!150211))

(assert (=> b!128311 m!149785))

(declare-fun m!150213 () Bool)

(assert (=> b!128311 m!150213))

(assert (=> b!128311 m!149841))

(assert (=> b!128311 m!149841))

(assert (=> b!128311 m!149785))

(assert (=> b!128311 m!149917))

(declare-fun m!150215 () Bool)

(assert (=> b!128314 m!150215))

(declare-fun m!150217 () Bool)

(assert (=> b!128310 m!150217))

(assert (=> d!38755 m!149785))

(declare-fun m!150219 () Bool)

(assert (=> d!38755 m!150219))

(assert (=> d!38755 m!149841))

(assert (=> d!38755 m!150067))

(assert (=> d!38755 m!149969))

(declare-fun m!150221 () Bool)

(assert (=> d!38755 m!150221))

(declare-fun m!150223 () Bool)

(assert (=> d!38755 m!150223))

(assert (=> d!38755 m!149841))

(assert (=> d!38755 m!149785))

(declare-fun m!150225 () Bool)

(assert (=> d!38755 m!150225))

(declare-fun m!150227 () Bool)

(assert (=> d!38755 m!150227))

(declare-fun m!150229 () Bool)

(assert (=> d!38755 m!150229))

(declare-fun m!150231 () Bool)

(assert (=> d!38755 m!150231))

(declare-fun m!150233 () Bool)

(assert (=> d!38755 m!150233))

(declare-fun m!150235 () Bool)

(assert (=> d!38755 m!150235))

(assert (=> d!38755 m!149785))

(assert (=> d!38755 m!149783))

(declare-fun m!150237 () Bool)

(assert (=> d!38755 m!150237))

(declare-fun m!150239 () Bool)

(assert (=> d!38755 m!150239))

(assert (=> d!38755 m!149785))

(declare-fun m!150241 () Bool)

(assert (=> d!38755 m!150241))

(assert (=> d!38755 m!149841))

(assert (=> d!38755 m!149785))

(assert (=> d!38755 m!149917))

(assert (=> d!38755 m!149785))

(assert (=> d!38755 m!149931))

(declare-fun m!150243 () Bool)

(assert (=> d!38755 m!150243))

(declare-fun m!150245 () Bool)

(assert (=> d!38755 m!150245))

(assert (=> d!38755 m!149799))

(declare-fun m!150247 () Bool)

(assert (=> d!38755 m!150247))

(assert (=> d!38755 m!150229))

(declare-fun m!150249 () Bool)

(assert (=> d!38755 m!150249))

(assert (=> d!38755 m!149785))

(declare-fun m!150251 () Bool)

(assert (=> d!38755 m!150251))

(assert (=> d!38755 m!150231))

(assert (=> d!38755 m!149785))

(declare-fun m!150253 () Bool)

(assert (=> d!38755 m!150253))

(assert (=> bm!13880 m!149785))

(assert (=> bm!13880 m!149931))

(assert (=> bm!13839 d!38755))

(declare-fun d!38757 () Bool)

(assert (=> d!38757 (= (apply!112 lt!66213 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5310 () Bool)

(assert (= bs!5310 d!38757))

(assert (=> bs!5310 m!150177))

(assert (=> bs!5310 m!150177))

(declare-fun m!150255 () Bool)

(assert (=> bs!5310 m!150255))

(assert (=> b!127959 d!38757))

(assert (=> bm!13847 d!38701))

(declare-fun b!128337 () Bool)

(declare-fun e!83801 () Bool)

(declare-fun contains!885 (List!1726 (_ BitVec 64)) Bool)

(assert (=> b!128337 (= e!83801 (contains!885 Nil!1723 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128339 () Bool)

(declare-fun e!83798 () Bool)

(declare-fun call!13887 () Bool)

(assert (=> b!128339 (= e!83798 call!13887)))

(declare-fun b!128340 () Bool)

(assert (=> b!128340 (= e!83798 call!13887)))

(declare-fun b!128338 () Bool)

(declare-fun e!83799 () Bool)

(declare-fun e!83800 () Bool)

(assert (=> b!128338 (= e!83799 e!83800)))

(declare-fun res!61994 () Bool)

(assert (=> b!128338 (=> (not res!61994) (not e!83800))))

(assert (=> b!128338 (= res!61994 (not e!83801))))

(declare-fun res!61993 () Bool)

(assert (=> b!128338 (=> (not res!61993) (not e!83801))))

(assert (=> b!128338 (= res!61993 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!38759 () Bool)

(declare-fun res!61995 () Bool)

(assert (=> d!38759 (=> res!61995 e!83799)))

(assert (=> d!38759 (= res!61995 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38759 (= (arrayNoDuplicates!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 Nil!1723) e!83799)))

(declare-fun bm!13884 () Bool)

(declare-fun c!23527 () Bool)

(assert (=> bm!13884 (= call!13887 (arrayNoDuplicates!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23527 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) Nil!1723) Nil!1723)))))

(declare-fun b!128341 () Bool)

(assert (=> b!128341 (= e!83800 e!83798)))

(assert (=> b!128341 (= c!23527 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!38759 (not res!61995)) b!128338))

(assert (= (and b!128338 res!61993) b!128337))

(assert (= (and b!128338 res!61994) b!128341))

(assert (= (and b!128341 c!23527) b!128340))

(assert (= (and b!128341 (not c!23527)) b!128339))

(assert (= (or b!128340 b!128339) bm!13884))

(assert (=> b!128337 m!150023))

(assert (=> b!128337 m!150023))

(declare-fun m!150257 () Bool)

(assert (=> b!128337 m!150257))

(assert (=> b!128338 m!150023))

(assert (=> b!128338 m!150023))

(assert (=> b!128338 m!150115))

(assert (=> bm!13884 m!150023))

(declare-fun m!150259 () Bool)

(assert (=> bm!13884 m!150259))

(assert (=> b!128341 m!150023))

(assert (=> b!128341 m!150023))

(assert (=> b!128341 m!150115))

(assert (=> b!128106 d!38759))

(assert (=> bm!13830 d!38681))

(declare-fun d!38761 () Bool)

(declare-fun e!83802 () Bool)

(assert (=> d!38761 e!83802))

(declare-fun res!61996 () Bool)

(assert (=> d!38761 (=> (not res!61996) (not e!83802))))

(declare-fun lt!66495 () ListLongMap!1693)

(assert (=> d!38761 (= res!61996 (contains!882 lt!66495 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun lt!66496 () List!1724)

(assert (=> d!38761 (= lt!66495 (ListLongMap!1694 lt!66496))))

(declare-fun lt!66497 () Unit!3998)

(declare-fun lt!66498 () Unit!3998)

(assert (=> d!38761 (= lt!66497 lt!66498)))

(assert (=> d!38761 (= (getValueByKey!167 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (Some!172 (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38761 (= lt!66498 (lemmaContainsTupThenGetReturnValue!84 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38761 (= lt!66496 (insertStrictlySorted!86 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38761 (= (+!166 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66495)))

(declare-fun b!128342 () Bool)

(declare-fun res!61997 () Bool)

(assert (=> b!128342 (=> (not res!61997) (not e!83802))))

(assert (=> b!128342 (= res!61997 (= (getValueByKey!167 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (Some!172 (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun b!128343 () Bool)

(assert (=> b!128343 (= e!83802 (contains!884 (toList!862 lt!66495) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (= (and d!38761 res!61996) b!128342))

(assert (= (and b!128342 res!61997) b!128343))

(declare-fun m!150261 () Bool)

(assert (=> d!38761 m!150261))

(declare-fun m!150263 () Bool)

(assert (=> d!38761 m!150263))

(declare-fun m!150265 () Bool)

(assert (=> d!38761 m!150265))

(declare-fun m!150267 () Bool)

(assert (=> d!38761 m!150267))

(declare-fun m!150269 () Bool)

(assert (=> b!128342 m!150269))

(declare-fun m!150271 () Bool)

(assert (=> b!128343 m!150271))

(assert (=> bm!13775 d!38761))

(declare-fun d!38763 () Bool)

(declare-fun e!83804 () Bool)

(assert (=> d!38763 e!83804))

(declare-fun res!61998 () Bool)

(assert (=> d!38763 (=> res!61998 e!83804)))

(declare-fun lt!66501 () Bool)

(assert (=> d!38763 (= res!61998 (not lt!66501))))

(declare-fun lt!66500 () Bool)

(assert (=> d!38763 (= lt!66501 lt!66500)))

(declare-fun lt!66502 () Unit!3998)

(declare-fun e!83803 () Unit!3998)

(assert (=> d!38763 (= lt!66502 e!83803)))

(declare-fun c!23528 () Bool)

(assert (=> d!38763 (= c!23528 lt!66500)))

(assert (=> d!38763 (= lt!66500 (containsKey!171 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38763 (= (contains!882 call!13842 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66501)))

(declare-fun b!128344 () Bool)

(declare-fun lt!66499 () Unit!3998)

(assert (=> b!128344 (= e!83803 lt!66499)))

(assert (=> b!128344 (= lt!66499 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!128344 (isDefined!121 (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128345 () Bool)

(declare-fun Unit!4013 () Unit!3998)

(assert (=> b!128345 (= e!83803 Unit!4013)))

(declare-fun b!128346 () Bool)

(assert (=> b!128346 (= e!83804 (isDefined!121 (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (= (and d!38763 c!23528) b!128344))

(assert (= (and d!38763 (not c!23528)) b!128345))

(assert (= (and d!38763 (not res!61998)) b!128346))

(assert (=> d!38763 m!149785))

(declare-fun m!150273 () Bool)

(assert (=> d!38763 m!150273))

(assert (=> b!128344 m!149785))

(declare-fun m!150275 () Bool)

(assert (=> b!128344 m!150275))

(assert (=> b!128344 m!149785))

(declare-fun m!150277 () Bool)

(assert (=> b!128344 m!150277))

(assert (=> b!128344 m!150277))

(declare-fun m!150279 () Bool)

(assert (=> b!128344 m!150279))

(assert (=> b!128346 m!149785))

(assert (=> b!128346 m!150277))

(assert (=> b!128346 m!150277))

(assert (=> b!128346 m!150279))

(assert (=> b!128066 d!38763))

(declare-fun d!38765 () Bool)

(assert (=> d!38765 (= (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!127958 d!38765))

(declare-fun b!128355 () Bool)

(declare-fun e!83812 () Bool)

(declare-fun e!83813 () Bool)

(assert (=> b!128355 (= e!83812 e!83813)))

(declare-fun c!23531 () Bool)

(assert (=> b!128355 (= c!23531 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128356 () Bool)

(declare-fun e!83811 () Bool)

(assert (=> b!128356 (= e!83813 e!83811)))

(declare-fun lt!66510 () (_ BitVec 64))

(assert (=> b!128356 (= lt!66510 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66509 () Unit!3998)

(assert (=> b!128356 (= lt!66509 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000))))

(assert (=> b!128356 (arrayContainsKey!0 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000)))

(declare-fun lt!66511 () Unit!3998)

(assert (=> b!128356 (= lt!66511 lt!66509)))

(declare-fun res!62003 () Bool)

(assert (=> b!128356 (= res!62003 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (_keys!4542 newMap!16) (mask!7073 newMap!16)) (Found!281 #b00000000000000000000000000000000)))))

(assert (=> b!128356 (=> (not res!62003) (not e!83811))))

(declare-fun b!128357 () Bool)

(declare-fun call!13890 () Bool)

(assert (=> b!128357 (= e!83811 call!13890)))

(declare-fun b!128358 () Bool)

(assert (=> b!128358 (= e!83813 call!13890)))

(declare-fun bm!13887 () Bool)

(assert (=> bm!13887 (= call!13890 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun d!38767 () Bool)

(declare-fun res!62004 () Bool)

(assert (=> d!38767 (=> res!62004 e!83812)))

(assert (=> d!38767 (= res!62004 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38767 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 newMap!16) (mask!7073 newMap!16)) e!83812)))

(assert (= (and d!38767 (not res!62004)) b!128355))

(assert (= (and b!128355 c!23531) b!128356))

(assert (= (and b!128355 (not c!23531)) b!128358))

(assert (= (and b!128356 res!62003) b!128357))

(assert (= (or b!128357 b!128358) bm!13887))

(assert (=> b!128355 m!150023))

(assert (=> b!128355 m!150023))

(assert (=> b!128355 m!150115))

(assert (=> b!128356 m!150023))

(declare-fun m!150281 () Bool)

(assert (=> b!128356 m!150281))

(declare-fun m!150283 () Bool)

(assert (=> b!128356 m!150283))

(assert (=> b!128356 m!150023))

(declare-fun m!150285 () Bool)

(assert (=> b!128356 m!150285))

(declare-fun m!150287 () Bool)

(assert (=> bm!13887 m!150287))

(assert (=> b!128105 d!38767))

(declare-fun d!38769 () Bool)

(assert (=> d!38769 (= (apply!112 lt!66213 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5311 () Bool)

(assert (= bs!5311 d!38769))

(assert (=> bs!5311 m!150155))

(assert (=> bs!5311 m!150155))

(declare-fun m!150289 () Bool)

(assert (=> bs!5311 m!150289))

(assert (=> b!127949 d!38769))

(declare-fun call!13895 () ListLongMap!1693)

(declare-fun c!23533 () Bool)

(declare-fun call!13891 () ListLongMap!1693)

(declare-fun call!13893 () ListLongMap!1693)

(declare-fun call!13892 () ListLongMap!1693)

(declare-fun c!23537 () Bool)

(declare-fun bm!13888 () Bool)

(assert (=> bm!13888 (= call!13891 (+!166 (ite c!23537 call!13895 (ite c!23533 call!13893 call!13892)) (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128359 () Bool)

(declare-fun e!83824 () ListLongMap!1693)

(declare-fun call!13894 () ListLongMap!1693)

(assert (=> b!128359 (= e!83824 call!13894)))

(declare-fun b!128360 () Bool)

(declare-fun e!83821 () Bool)

(declare-fun call!13896 () Bool)

(assert (=> b!128360 (= e!83821 (not call!13896))))

(declare-fun bm!13889 () Bool)

(declare-fun call!13897 () Bool)

(declare-fun lt!66533 () ListLongMap!1693)

(assert (=> bm!13889 (= call!13897 (contains!882 lt!66533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128361 () Bool)

(declare-fun c!23532 () Bool)

(assert (=> b!128361 (= c!23532 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!83823 () ListLongMap!1693)

(assert (=> b!128361 (= e!83824 e!83823)))

(declare-fun b!128362 () Bool)

(declare-fun e!83820 () Bool)

(assert (=> b!128362 (= e!83821 e!83820)))

(declare-fun res!62006 () Bool)

(assert (=> b!128362 (= res!62006 call!13896)))

(assert (=> b!128362 (=> (not res!62006) (not e!83820))))

(declare-fun b!128363 () Bool)

(declare-fun e!83822 () Unit!3998)

(declare-fun lt!66522 () Unit!3998)

(assert (=> b!128363 (= e!83822 lt!66522)))

(declare-fun lt!66527 () ListLongMap!1693)

(assert (=> b!128363 (= lt!66527 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66528 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66528 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66526 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66526 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66515 () Unit!3998)

(assert (=> b!128363 (= lt!66515 (addStillContains!88 lt!66527 lt!66528 (zeroValue!2666 newMap!16) lt!66526))))

(assert (=> b!128363 (contains!882 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) lt!66526)))

(declare-fun lt!66514 () Unit!3998)

(assert (=> b!128363 (= lt!66514 lt!66515)))

(declare-fun lt!66523 () ListLongMap!1693)

(assert (=> b!128363 (= lt!66523 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66519 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66519 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66532 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66532 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66525 () Unit!3998)

(assert (=> b!128363 (= lt!66525 (addApplyDifferent!88 lt!66523 lt!66519 (minValue!2666 newMap!16) lt!66532))))

(assert (=> b!128363 (= (apply!112 (+!166 lt!66523 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) lt!66532) (apply!112 lt!66523 lt!66532))))

(declare-fun lt!66517 () Unit!3998)

(assert (=> b!128363 (= lt!66517 lt!66525)))

(declare-fun lt!66524 () ListLongMap!1693)

(assert (=> b!128363 (= lt!66524 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66513 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66513 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66530 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66530 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66518 () Unit!3998)

(assert (=> b!128363 (= lt!66518 (addApplyDifferent!88 lt!66524 lt!66513 (zeroValue!2666 newMap!16) lt!66530))))

(assert (=> b!128363 (= (apply!112 (+!166 lt!66524 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) lt!66530) (apply!112 lt!66524 lt!66530))))

(declare-fun lt!66512 () Unit!3998)

(assert (=> b!128363 (= lt!66512 lt!66518)))

(declare-fun lt!66520 () ListLongMap!1693)

(assert (=> b!128363 (= lt!66520 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66521 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66521 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66531 () (_ BitVec 64))

(assert (=> b!128363 (= lt!66531 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!128363 (= lt!66522 (addApplyDifferent!88 lt!66520 lt!66521 (minValue!2666 newMap!16) lt!66531))))

(assert (=> b!128363 (= (apply!112 (+!166 lt!66520 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) lt!66531) (apply!112 lt!66520 lt!66531))))

(declare-fun b!128364 () Bool)

(assert (=> b!128364 (= e!83823 call!13894)))

(declare-fun b!128365 () Bool)

(declare-fun e!83817 () Bool)

(assert (=> b!128365 (= e!83817 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128366 () Bool)

(assert (=> b!128366 (= e!83820 (= (apply!112 lt!66533 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128367 () Bool)

(declare-fun e!83816 () Bool)

(assert (=> b!128367 (= e!83816 e!83821)))

(declare-fun c!23535 () Bool)

(assert (=> b!128367 (= c!23535 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128368 () Bool)

(declare-fun e!83825 () Bool)

(declare-fun e!83819 () Bool)

(assert (=> b!128368 (= e!83825 e!83819)))

(declare-fun res!62012 () Bool)

(assert (=> b!128368 (=> (not res!62012) (not e!83819))))

(assert (=> b!128368 (= res!62012 (contains!882 lt!66533 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128368 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128369 () Bool)

(declare-fun res!62010 () Bool)

(assert (=> b!128369 (=> (not res!62010) (not e!83816))))

(assert (=> b!128369 (= res!62010 e!83825)))

(declare-fun res!62008 () Bool)

(assert (=> b!128369 (=> res!62008 e!83825)))

(assert (=> b!128369 (= res!62008 (not e!83817))))

(declare-fun res!62005 () Bool)

(assert (=> b!128369 (=> (not res!62005) (not e!83817))))

(assert (=> b!128369 (= res!62005 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128370 () Bool)

(assert (=> b!128370 (= e!83823 call!13892)))

(declare-fun b!128371 () Bool)

(declare-fun e!83818 () Bool)

(declare-fun e!83826 () Bool)

(assert (=> b!128371 (= e!83818 e!83826)))

(declare-fun res!62013 () Bool)

(assert (=> b!128371 (= res!62013 call!13897)))

(assert (=> b!128371 (=> (not res!62013) (not e!83826))))

(declare-fun b!128372 () Bool)

(declare-fun e!83814 () ListLongMap!1693)

(assert (=> b!128372 (= e!83814 (+!166 call!13891 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13890 () Bool)

(assert (=> bm!13890 (= call!13896 (contains!882 lt!66533 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13891 () Bool)

(assert (=> bm!13891 (= call!13894 call!13891)))

(declare-fun b!128373 () Bool)

(declare-fun res!62007 () Bool)

(assert (=> b!128373 (=> (not res!62007) (not e!83816))))

(assert (=> b!128373 (= res!62007 e!83818)))

(declare-fun c!23534 () Bool)

(assert (=> b!128373 (= c!23534 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13892 () Bool)

(assert (=> bm!13892 (= call!13893 call!13895)))

(declare-fun b!128374 () Bool)

(assert (=> b!128374 (= e!83814 e!83824)))

(assert (=> b!128374 (= c!23533 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128375 () Bool)

(declare-fun e!83815 () Bool)

(assert (=> b!128375 (= e!83815 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13893 () Bool)

(assert (=> bm!13893 (= call!13892 call!13893)))

(declare-fun b!128376 () Bool)

(assert (=> b!128376 (= e!83826 (= (apply!112 lt!66533 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!38771 () Bool)

(assert (=> d!38771 e!83816))

(declare-fun res!62009 () Bool)

(assert (=> d!38771 (=> (not res!62009) (not e!83816))))

(assert (=> d!38771 (= res!62009 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66516 () ListLongMap!1693)

(assert (=> d!38771 (= lt!66533 lt!66516)))

(declare-fun lt!66529 () Unit!3998)

(assert (=> d!38771 (= lt!66529 e!83822)))

(declare-fun c!23536 () Bool)

(assert (=> d!38771 (= c!23536 e!83815)))

(declare-fun res!62011 () Bool)

(assert (=> d!38771 (=> (not res!62011) (not e!83815))))

(assert (=> d!38771 (= res!62011 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38771 (= lt!66516 e!83814)))

(assert (=> d!38771 (= c!23537 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38771 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38771 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66533)))

(declare-fun b!128377 () Bool)

(declare-fun Unit!4014 () Unit!3998)

(assert (=> b!128377 (= e!83822 Unit!4014)))

(declare-fun b!128378 () Bool)

(assert (=> b!128378 (= e!83819 (= (apply!112 lt!66533 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128378 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))))))))

(assert (=> b!128378 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13894 () Bool)

(assert (=> bm!13894 (= call!13895 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128379 () Bool)

(assert (=> b!128379 (= e!83818 (not call!13897))))

(assert (= (and d!38771 c!23537) b!128372))

(assert (= (and d!38771 (not c!23537)) b!128374))

(assert (= (and b!128374 c!23533) b!128359))

(assert (= (and b!128374 (not c!23533)) b!128361))

(assert (= (and b!128361 c!23532) b!128364))

(assert (= (and b!128361 (not c!23532)) b!128370))

(assert (= (or b!128364 b!128370) bm!13893))

(assert (= (or b!128359 bm!13893) bm!13892))

(assert (= (or b!128359 b!128364) bm!13891))

(assert (= (or b!128372 bm!13892) bm!13894))

(assert (= (or b!128372 bm!13891) bm!13888))

(assert (= (and d!38771 res!62011) b!128375))

(assert (= (and d!38771 c!23536) b!128363))

(assert (= (and d!38771 (not c!23536)) b!128377))

(assert (= (and d!38771 res!62009) b!128369))

(assert (= (and b!128369 res!62005) b!128365))

(assert (= (and b!128369 (not res!62008)) b!128368))

(assert (= (and b!128368 res!62012) b!128378))

(assert (= (and b!128369 res!62010) b!128373))

(assert (= (and b!128373 c!23534) b!128371))

(assert (= (and b!128373 (not c!23534)) b!128379))

(assert (= (and b!128371 res!62013) b!128376))

(assert (= (or b!128371 b!128379) bm!13889))

(assert (= (and b!128373 res!62007) b!128367))

(assert (= (and b!128367 c!23535) b!128362))

(assert (= (and b!128367 (not c!23535)) b!128360))

(assert (= (and b!128362 res!62006) b!128366))

(assert (= (or b!128362 b!128360) bm!13890))

(declare-fun b_lambda!5695 () Bool)

(assert (=> (not b_lambda!5695) (not b!128378)))

(assert (=> b!128378 t!6123))

(declare-fun b_and!7937 () Bool)

(assert (= b_and!7933 (and (=> t!6123 result!3905) b_and!7937)))

(assert (=> b!128378 t!6125))

(declare-fun b_and!7939 () Bool)

(assert (= b_and!7935 (and (=> t!6125 result!3907) b_and!7939)))

(declare-fun m!150291 () Bool)

(assert (=> bm!13890 m!150291))

(declare-fun m!150293 () Bool)

(assert (=> b!128376 m!150293))

(declare-fun m!150295 () Bool)

(assert (=> bm!13894 m!150295))

(declare-fun m!150297 () Bool)

(assert (=> b!128363 m!150297))

(declare-fun m!150299 () Bool)

(assert (=> b!128363 m!150299))

(declare-fun m!150301 () Bool)

(assert (=> b!128363 m!150301))

(declare-fun m!150303 () Bool)

(assert (=> b!128363 m!150303))

(declare-fun m!150305 () Bool)

(assert (=> b!128363 m!150305))

(declare-fun m!150307 () Bool)

(assert (=> b!128363 m!150307))

(declare-fun m!150309 () Bool)

(assert (=> b!128363 m!150309))

(declare-fun m!150311 () Bool)

(assert (=> b!128363 m!150311))

(assert (=> b!128363 m!150023))

(declare-fun m!150313 () Bool)

(assert (=> b!128363 m!150313))

(declare-fun m!150315 () Bool)

(assert (=> b!128363 m!150315))

(assert (=> b!128363 m!150303))

(declare-fun m!150317 () Bool)

(assert (=> b!128363 m!150317))

(declare-fun m!150319 () Bool)

(assert (=> b!128363 m!150319))

(assert (=> b!128363 m!150301))

(declare-fun m!150321 () Bool)

(assert (=> b!128363 m!150321))

(assert (=> b!128363 m!150295))

(assert (=> b!128363 m!150313))

(declare-fun m!150323 () Bool)

(assert (=> b!128363 m!150323))

(assert (=> b!128363 m!150299))

(declare-fun m!150325 () Bool)

(assert (=> b!128363 m!150325))

(assert (=> d!38771 m!150007))

(assert (=> b!128375 m!150023))

(assert (=> b!128375 m!150023))

(assert (=> b!128375 m!150115))

(declare-fun m!150327 () Bool)

(assert (=> bm!13889 m!150327))

(declare-fun m!150329 () Bool)

(assert (=> b!128372 m!150329))

(declare-fun m!150331 () Bool)

(assert (=> b!128366 m!150331))

(assert (=> b!128378 m!150023))

(declare-fun m!150333 () Bool)

(assert (=> b!128378 m!150333))

(declare-fun m!150335 () Bool)

(assert (=> b!128378 m!150335))

(assert (=> b!128378 m!150127))

(assert (=> b!128378 m!150023))

(assert (=> b!128378 m!150335))

(assert (=> b!128378 m!150127))

(declare-fun m!150337 () Bool)

(assert (=> b!128378 m!150337))

(assert (=> b!128365 m!150023))

(assert (=> b!128365 m!150023))

(assert (=> b!128365 m!150115))

(declare-fun m!150339 () Bool)

(assert (=> bm!13888 m!150339))

(assert (=> b!128368 m!150023))

(assert (=> b!128368 m!150023))

(declare-fun m!150341 () Bool)

(assert (=> b!128368 m!150341))

(assert (=> bm!13832 d!38771))

(assert (=> b!127948 d!38765))

(declare-fun d!38773 () Bool)

(assert (=> d!38773 (= (apply!112 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66212) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66212)))))

(declare-fun bs!5312 () Bool)

(assert (= bs!5312 d!38773))

(declare-fun m!150343 () Bool)

(assert (=> bs!5312 m!150343))

(assert (=> bs!5312 m!150343))

(declare-fun m!150345 () Bool)

(assert (=> bs!5312 m!150345))

(assert (=> b!127946 d!38773))

(declare-fun b!128404 () Bool)

(declare-fun e!83846 () Bool)

(declare-fun e!83845 () Bool)

(assert (=> b!128404 (= e!83846 e!83845)))

(declare-fun c!23548 () Bool)

(declare-fun e!83847 () Bool)

(assert (=> b!128404 (= c!23548 e!83847)))

(declare-fun res!62023 () Bool)

(assert (=> b!128404 (=> (not res!62023) (not e!83847))))

(assert (=> b!128404 (= res!62023 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128405 () Bool)

(declare-fun e!83844 () Bool)

(declare-fun lt!66554 () ListLongMap!1693)

(declare-fun isEmpty!405 (ListLongMap!1693) Bool)

(assert (=> b!128405 (= e!83844 (isEmpty!405 lt!66554))))

(declare-fun b!128406 () Bool)

(assert (=> b!128406 (= e!83847 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!128406 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!128407 () Bool)

(declare-fun lt!66548 () Unit!3998)

(declare-fun lt!66550 () Unit!3998)

(assert (=> b!128407 (= lt!66548 lt!66550)))

(declare-fun lt!66549 () ListLongMap!1693)

(declare-fun lt!66553 () (_ BitVec 64))

(declare-fun lt!66551 () (_ BitVec 64))

(declare-fun lt!66552 () V!3451)

(assert (=> b!128407 (not (contains!882 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552)) lt!66553))))

(declare-fun addStillNotContains!59 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> b!128407 (= lt!66550 (addStillNotContains!59 lt!66549 lt!66551 lt!66552 lt!66553))))

(assert (=> b!128407 (= lt!66553 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!128407 (= lt!66552 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!128407 (= lt!66551 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!13900 () ListLongMap!1693)

(assert (=> b!128407 (= lt!66549 call!13900)))

(declare-fun e!83841 () ListLongMap!1693)

(assert (=> b!128407 (= e!83841 (+!166 call!13900 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!128408 () Bool)

(declare-fun res!62024 () Bool)

(assert (=> b!128408 (=> (not res!62024) (not e!83846))))

(assert (=> b!128408 (= res!62024 (not (contains!882 lt!66554 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128409 () Bool)

(assert (=> b!128409 (= e!83844 (= lt!66554 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128410 () Bool)

(assert (=> b!128410 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> b!128410 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!83843 () Bool)

(assert (=> b!128410 (= e!83843 (= (apply!112 lt!66554 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!128411 () Bool)

(declare-fun e!83842 () ListLongMap!1693)

(assert (=> b!128411 (= e!83842 (ListLongMap!1694 Nil!1721))))

(declare-fun b!128412 () Bool)

(assert (=> b!128412 (= e!83845 e!83843)))

(assert (=> b!128412 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun res!62022 () Bool)

(assert (=> b!128412 (= res!62022 (contains!882 lt!66554 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!128412 (=> (not res!62022) (not e!83843))))

(declare-fun d!38775 () Bool)

(assert (=> d!38775 e!83846))

(declare-fun res!62025 () Bool)

(assert (=> d!38775 (=> (not res!62025) (not e!83846))))

(assert (=> d!38775 (= res!62025 (not (contains!882 lt!66554 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!38775 (= lt!66554 e!83842)))

(declare-fun c!23547 () Bool)

(assert (=> d!38775 (= c!23547 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!38775 (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992))))))

(assert (=> d!38775 (= (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))) lt!66554)))

(declare-fun b!128413 () Bool)

(assert (=> b!128413 (= e!83842 e!83841)))

(declare-fun c!23549 () Bool)

(assert (=> b!128413 (= c!23549 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!128414 () Bool)

(assert (=> b!128414 (= e!83841 call!13900)))

(declare-fun bm!13897 () Bool)

(assert (=> bm!13897 (= call!13900 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!128415 () Bool)

(assert (=> b!128415 (= e!83845 e!83844)))

(declare-fun c!23546 () Bool)

(assert (=> b!128415 (= c!23546 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38775 c!23547) b!128411))

(assert (= (and d!38775 (not c!23547)) b!128413))

(assert (= (and b!128413 c!23549) b!128407))

(assert (= (and b!128413 (not c!23549)) b!128414))

(assert (= (or b!128407 b!128414) bm!13897))

(assert (= (and d!38775 res!62025) b!128408))

(assert (= (and b!128408 res!62024) b!128404))

(assert (= (and b!128404 res!62023) b!128406))

(assert (= (and b!128404 c!23548) b!128412))

(assert (= (and b!128404 (not c!23548)) b!128415))

(assert (= (and b!128412 res!62022) b!128410))

(assert (= (and b!128415 c!23546) b!128409))

(assert (= (and b!128415 (not c!23546)) b!128405))

(declare-fun b_lambda!5697 () Bool)

(assert (=> (not b_lambda!5697) (not b!128407)))

(assert (=> b!128407 t!6112))

(declare-fun b_and!7941 () Bool)

(assert (= b_and!7937 (and (=> t!6112 result!3891) b_and!7941)))

(assert (=> b!128407 t!6114))

(declare-fun b_and!7943 () Bool)

(assert (= b_and!7939 (and (=> t!6114 result!3895) b_and!7943)))

(declare-fun b_lambda!5699 () Bool)

(assert (=> (not b_lambda!5699) (not b!128410)))

(assert (=> b!128410 t!6112))

(declare-fun b_and!7945 () Bool)

(assert (= b_and!7941 (and (=> t!6112 result!3891) b_and!7945)))

(assert (=> b!128410 t!6114))

(declare-fun b_and!7947 () Bool)

(assert (= b_and!7943 (and (=> t!6114 result!3895) b_and!7947)))

(assert (=> b!128412 m!149865))

(assert (=> b!128412 m!149865))

(declare-fun m!150347 () Bool)

(assert (=> b!128412 m!150347))

(declare-fun m!150349 () Bool)

(assert (=> d!38775 m!150349))

(assert (=> d!38775 m!149793))

(assert (=> b!128406 m!149865))

(assert (=> b!128406 m!149865))

(assert (=> b!128406 m!149881))

(assert (=> b!128410 m!149781))

(assert (=> b!128410 m!149891))

(assert (=> b!128410 m!149781))

(assert (=> b!128410 m!149893))

(assert (=> b!128410 m!149891))

(assert (=> b!128410 m!149865))

(declare-fun m!150351 () Bool)

(assert (=> b!128410 m!150351))

(assert (=> b!128410 m!149865))

(declare-fun m!150353 () Bool)

(assert (=> b!128405 m!150353))

(declare-fun m!150355 () Bool)

(assert (=> bm!13897 m!150355))

(assert (=> b!128413 m!149865))

(assert (=> b!128413 m!149865))

(assert (=> b!128413 m!149881))

(assert (=> b!128409 m!150355))

(declare-fun m!150357 () Bool)

(assert (=> b!128408 m!150357))

(declare-fun m!150359 () Bool)

(assert (=> b!128407 m!150359))

(assert (=> b!128407 m!149891))

(assert (=> b!128407 m!149781))

(assert (=> b!128407 m!149893))

(declare-fun m!150361 () Bool)

(assert (=> b!128407 m!150361))

(assert (=> b!128407 m!149865))

(assert (=> b!128407 m!149781))

(declare-fun m!150363 () Bool)

(assert (=> b!128407 m!150363))

(assert (=> b!128407 m!150363))

(declare-fun m!150365 () Bool)

(assert (=> b!128407 m!150365))

(assert (=> b!128407 m!149891))

(assert (=> b!127946 d!38775))

(declare-fun d!38777 () Bool)

(assert (=> d!38777 (= (apply!112 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66211) (apply!112 lt!66200 lt!66211))))

(declare-fun lt!66557 () Unit!3998)

(declare-fun choose!787 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> d!38777 (= lt!66557 (choose!787 lt!66200 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66211))))

(declare-fun e!83850 () Bool)

(assert (=> d!38777 e!83850))

(declare-fun res!62028 () Bool)

(assert (=> d!38777 (=> (not res!62028) (not e!83850))))

(assert (=> d!38777 (= res!62028 (contains!882 lt!66200 lt!66211))))

(assert (=> d!38777 (= (addApplyDifferent!88 lt!66200 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66211) lt!66557)))

(declare-fun b!128419 () Bool)

(assert (=> b!128419 (= e!83850 (not (= lt!66211 lt!66201)))))

(assert (= (and d!38777 res!62028) b!128419))

(assert (=> d!38777 m!149873))

(assert (=> d!38777 m!149853))

(assert (=> d!38777 m!149853))

(assert (=> d!38777 m!149875))

(declare-fun m!150367 () Bool)

(assert (=> d!38777 m!150367))

(declare-fun m!150369 () Bool)

(assert (=> d!38777 m!150369))

(assert (=> b!127946 d!38777))

(declare-fun d!38779 () Bool)

(assert (=> d!38779 (= (apply!112 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66210) (apply!112 lt!66204 lt!66210))))

(declare-fun lt!66558 () Unit!3998)

(assert (=> d!38779 (= lt!66558 (choose!787 lt!66204 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66210))))

(declare-fun e!83851 () Bool)

(assert (=> d!38779 e!83851))

(declare-fun res!62029 () Bool)

(assert (=> d!38779 (=> (not res!62029) (not e!83851))))

(assert (=> d!38779 (= res!62029 (contains!882 lt!66204 lt!66210))))

(assert (=> d!38779 (= (addApplyDifferent!88 lt!66204 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66210) lt!66558)))

(declare-fun b!128420 () Bool)

(assert (=> b!128420 (= e!83851 (not (= lt!66210 lt!66193)))))

(assert (= (and d!38779 res!62029) b!128420))

(assert (=> d!38779 m!149863))

(assert (=> d!38779 m!149851))

(assert (=> d!38779 m!149851))

(assert (=> d!38779 m!149879))

(declare-fun m!150371 () Bool)

(assert (=> d!38779 m!150371))

(declare-fun m!150373 () Bool)

(assert (=> d!38779 m!150373))

(assert (=> b!127946 d!38779))

(declare-fun d!38781 () Bool)

(declare-fun e!83852 () Bool)

(assert (=> d!38781 e!83852))

(declare-fun res!62030 () Bool)

(assert (=> d!38781 (=> (not res!62030) (not e!83852))))

(declare-fun lt!66559 () ListLongMap!1693)

(assert (=> d!38781 (= res!62030 (contains!882 lt!66559 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66560 () List!1724)

(assert (=> d!38781 (= lt!66559 (ListLongMap!1694 lt!66560))))

(declare-fun lt!66561 () Unit!3998)

(declare-fun lt!66562 () Unit!3998)

(assert (=> d!38781 (= lt!66561 lt!66562)))

(assert (=> d!38781 (= (getValueByKey!167 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38781 (= lt!66562 (lemmaContainsTupThenGetReturnValue!84 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38781 (= lt!66560 (insertStrictlySorted!86 (toList!862 lt!66200) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38781 (= (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66559)))

(declare-fun b!128421 () Bool)

(declare-fun res!62031 () Bool)

(assert (=> b!128421 (=> (not res!62031) (not e!83852))))

(assert (=> b!128421 (= res!62031 (= (getValueByKey!167 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128422 () Bool)

(assert (=> b!128422 (= e!83852 (contains!884 (toList!862 lt!66559) (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38781 res!62030) b!128421))

(assert (= (and b!128421 res!62031) b!128422))

(declare-fun m!150375 () Bool)

(assert (=> d!38781 m!150375))

(declare-fun m!150377 () Bool)

(assert (=> d!38781 m!150377))

(declare-fun m!150379 () Bool)

(assert (=> d!38781 m!150379))

(declare-fun m!150381 () Bool)

(assert (=> d!38781 m!150381))

(declare-fun m!150383 () Bool)

(assert (=> b!128421 m!150383))

(declare-fun m!150385 () Bool)

(assert (=> b!128422 m!150385))

(assert (=> b!127946 d!38781))

(declare-fun d!38783 () Bool)

(assert (=> d!38783 (= (apply!112 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66210) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66210)))))

(declare-fun bs!5313 () Bool)

(assert (= bs!5313 d!38783))

(declare-fun m!150387 () Bool)

(assert (=> bs!5313 m!150387))

(assert (=> bs!5313 m!150387))

(declare-fun m!150389 () Bool)

(assert (=> bs!5313 m!150389))

(assert (=> b!127946 d!38783))

(declare-fun d!38785 () Bool)

(declare-fun e!83854 () Bool)

(assert (=> d!38785 e!83854))

(declare-fun res!62032 () Bool)

(assert (=> d!38785 (=> res!62032 e!83854)))

(declare-fun lt!66565 () Bool)

(assert (=> d!38785 (= res!62032 (not lt!66565))))

(declare-fun lt!66564 () Bool)

(assert (=> d!38785 (= lt!66565 lt!66564)))

(declare-fun lt!66566 () Unit!3998)

(declare-fun e!83853 () Unit!3998)

(assert (=> d!38785 (= lt!66566 e!83853)))

(declare-fun c!23550 () Bool)

(assert (=> d!38785 (= c!23550 lt!66564)))

(assert (=> d!38785 (= lt!66564 (containsKey!171 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(assert (=> d!38785 (= (contains!882 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66206) lt!66565)))

(declare-fun b!128423 () Bool)

(declare-fun lt!66563 () Unit!3998)

(assert (=> b!128423 (= e!83853 lt!66563)))

(assert (=> b!128423 (= lt!66563 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(assert (=> b!128423 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(declare-fun b!128424 () Bool)

(declare-fun Unit!4015 () Unit!3998)

(assert (=> b!128424 (= e!83853 Unit!4015)))

(declare-fun b!128425 () Bool)

(assert (=> b!128425 (= e!83854 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206)))))

(assert (= (and d!38785 c!23550) b!128423))

(assert (= (and d!38785 (not c!23550)) b!128424))

(assert (= (and d!38785 (not res!62032)) b!128425))

(declare-fun m!150391 () Bool)

(assert (=> d!38785 m!150391))

(declare-fun m!150393 () Bool)

(assert (=> b!128423 m!150393))

(declare-fun m!150395 () Bool)

(assert (=> b!128423 m!150395))

(assert (=> b!128423 m!150395))

(declare-fun m!150397 () Bool)

(assert (=> b!128423 m!150397))

(assert (=> b!128425 m!150395))

(assert (=> b!128425 m!150395))

(assert (=> b!128425 m!150397))

(assert (=> b!127946 d!38785))

(declare-fun d!38787 () Bool)

(declare-fun e!83855 () Bool)

(assert (=> d!38787 e!83855))

(declare-fun res!62033 () Bool)

(assert (=> d!38787 (=> (not res!62033) (not e!83855))))

(declare-fun lt!66567 () ListLongMap!1693)

(assert (=> d!38787 (= res!62033 (contains!882 lt!66567 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66568 () List!1724)

(assert (=> d!38787 (= lt!66567 (ListLongMap!1694 lt!66568))))

(declare-fun lt!66569 () Unit!3998)

(declare-fun lt!66570 () Unit!3998)

(assert (=> d!38787 (= lt!66569 lt!66570)))

(assert (=> d!38787 (= (getValueByKey!167 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38787 (= lt!66570 (lemmaContainsTupThenGetReturnValue!84 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38787 (= lt!66568 (insertStrictlySorted!86 (toList!862 lt!66207) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38787 (= (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66567)))

(declare-fun b!128426 () Bool)

(declare-fun res!62034 () Bool)

(assert (=> b!128426 (=> (not res!62034) (not e!83855))))

(assert (=> b!128426 (= res!62034 (= (getValueByKey!167 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128427 () Bool)

(assert (=> b!128427 (= e!83855 (contains!884 (toList!862 lt!66567) (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38787 res!62033) b!128426))

(assert (= (and b!128426 res!62034) b!128427))

(declare-fun m!150399 () Bool)

(assert (=> d!38787 m!150399))

(declare-fun m!150401 () Bool)

(assert (=> d!38787 m!150401))

(declare-fun m!150403 () Bool)

(assert (=> d!38787 m!150403))

(declare-fun m!150405 () Bool)

(assert (=> d!38787 m!150405))

(declare-fun m!150407 () Bool)

(assert (=> b!128426 m!150407))

(declare-fun m!150409 () Bool)

(assert (=> b!128427 m!150409))

(assert (=> b!127946 d!38787))

(declare-fun d!38789 () Bool)

(assert (=> d!38789 (= (apply!112 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66212) (apply!112 lt!66203 lt!66212))))

(declare-fun lt!66571 () Unit!3998)

(assert (=> d!38789 (= lt!66571 (choose!787 lt!66203 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66212))))

(declare-fun e!83856 () Bool)

(assert (=> d!38789 e!83856))

(declare-fun res!62035 () Bool)

(assert (=> d!38789 (=> (not res!62035) (not e!83856))))

(assert (=> d!38789 (= res!62035 (contains!882 lt!66203 lt!66212))))

(assert (=> d!38789 (= (addApplyDifferent!88 lt!66203 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66212) lt!66571)))

(declare-fun b!128428 () Bool)

(assert (=> b!128428 (= e!83856 (not (= lt!66212 lt!66199)))))

(assert (= (and d!38789 res!62035) b!128428))

(assert (=> d!38789 m!149871))

(assert (=> d!38789 m!149855))

(assert (=> d!38789 m!149855))

(assert (=> d!38789 m!149857))

(declare-fun m!150411 () Bool)

(assert (=> d!38789 m!150411))

(declare-fun m!150413 () Bool)

(assert (=> d!38789 m!150413))

(assert (=> b!127946 d!38789))

(declare-fun d!38791 () Bool)

(assert (=> d!38791 (= (apply!112 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66211) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66211)))))

(declare-fun bs!5314 () Bool)

(assert (= bs!5314 d!38791))

(declare-fun m!150415 () Bool)

(assert (=> bs!5314 m!150415))

(assert (=> bs!5314 m!150415))

(declare-fun m!150417 () Bool)

(assert (=> bs!5314 m!150417))

(assert (=> b!127946 d!38791))

(declare-fun d!38793 () Bool)

(declare-fun e!83857 () Bool)

(assert (=> d!38793 e!83857))

(declare-fun res!62036 () Bool)

(assert (=> d!38793 (=> (not res!62036) (not e!83857))))

(declare-fun lt!66572 () ListLongMap!1693)

(assert (=> d!38793 (= res!62036 (contains!882 lt!66572 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66573 () List!1724)

(assert (=> d!38793 (= lt!66572 (ListLongMap!1694 lt!66573))))

(declare-fun lt!66574 () Unit!3998)

(declare-fun lt!66575 () Unit!3998)

(assert (=> d!38793 (= lt!66574 lt!66575)))

(assert (=> d!38793 (= (getValueByKey!167 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38793 (= lt!66575 (lemmaContainsTupThenGetReturnValue!84 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38793 (= lt!66573 (insertStrictlySorted!86 (toList!862 lt!66204) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38793 (= (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66572)))

(declare-fun b!128429 () Bool)

(declare-fun res!62037 () Bool)

(assert (=> b!128429 (=> (not res!62037) (not e!83857))))

(assert (=> b!128429 (= res!62037 (= (getValueByKey!167 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128430 () Bool)

(assert (=> b!128430 (= e!83857 (contains!884 (toList!862 lt!66572) (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38793 res!62036) b!128429))

(assert (= (and b!128429 res!62037) b!128430))

(declare-fun m!150419 () Bool)

(assert (=> d!38793 m!150419))

(declare-fun m!150421 () Bool)

(assert (=> d!38793 m!150421))

(declare-fun m!150423 () Bool)

(assert (=> d!38793 m!150423))

(declare-fun m!150425 () Bool)

(assert (=> d!38793 m!150425))

(declare-fun m!150427 () Bool)

(assert (=> b!128429 m!150427))

(declare-fun m!150429 () Bool)

(assert (=> b!128430 m!150429))

(assert (=> b!127946 d!38793))

(declare-fun d!38795 () Bool)

(assert (=> d!38795 (= (apply!112 lt!66203 lt!66212) (get!1466 (getValueByKey!167 (toList!862 lt!66203) lt!66212)))))

(declare-fun bs!5315 () Bool)

(assert (= bs!5315 d!38795))

(declare-fun m!150431 () Bool)

(assert (=> bs!5315 m!150431))

(assert (=> bs!5315 m!150431))

(declare-fun m!150433 () Bool)

(assert (=> bs!5315 m!150433))

(assert (=> b!127946 d!38795))

(declare-fun d!38797 () Bool)

(declare-fun e!83858 () Bool)

(assert (=> d!38797 e!83858))

(declare-fun res!62038 () Bool)

(assert (=> d!38797 (=> (not res!62038) (not e!83858))))

(declare-fun lt!66576 () ListLongMap!1693)

(assert (=> d!38797 (= res!62038 (contains!882 lt!66576 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66577 () List!1724)

(assert (=> d!38797 (= lt!66576 (ListLongMap!1694 lt!66577))))

(declare-fun lt!66578 () Unit!3998)

(declare-fun lt!66579 () Unit!3998)

(assert (=> d!38797 (= lt!66578 lt!66579)))

(assert (=> d!38797 (= (getValueByKey!167 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38797 (= lt!66579 (lemmaContainsTupThenGetReturnValue!84 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38797 (= lt!66577 (insertStrictlySorted!86 (toList!862 lt!66203) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38797 (= (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66576)))

(declare-fun b!128431 () Bool)

(declare-fun res!62039 () Bool)

(assert (=> b!128431 (=> (not res!62039) (not e!83858))))

(assert (=> b!128431 (= res!62039 (= (getValueByKey!167 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128432 () Bool)

(assert (=> b!128432 (= e!83858 (contains!884 (toList!862 lt!66576) (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38797 res!62038) b!128431))

(assert (= (and b!128431 res!62039) b!128432))

(declare-fun m!150435 () Bool)

(assert (=> d!38797 m!150435))

(declare-fun m!150437 () Bool)

(assert (=> d!38797 m!150437))

(declare-fun m!150439 () Bool)

(assert (=> d!38797 m!150439))

(declare-fun m!150441 () Bool)

(assert (=> d!38797 m!150441))

(declare-fun m!150443 () Bool)

(assert (=> b!128431 m!150443))

(declare-fun m!150445 () Bool)

(assert (=> b!128432 m!150445))

(assert (=> b!127946 d!38797))

(declare-fun d!38799 () Bool)

(assert (=> d!38799 (= (apply!112 lt!66200 lt!66211) (get!1466 (getValueByKey!167 (toList!862 lt!66200) lt!66211)))))

(declare-fun bs!5316 () Bool)

(assert (= bs!5316 d!38799))

(declare-fun m!150447 () Bool)

(assert (=> bs!5316 m!150447))

(assert (=> bs!5316 m!150447))

(declare-fun m!150449 () Bool)

(assert (=> bs!5316 m!150449))

(assert (=> b!127946 d!38799))

(declare-fun d!38801 () Bool)

(assert (=> d!38801 (= (apply!112 lt!66204 lt!66210) (get!1466 (getValueByKey!167 (toList!862 lt!66204) lt!66210)))))

(declare-fun bs!5317 () Bool)

(assert (= bs!5317 d!38801))

(declare-fun m!150451 () Bool)

(assert (=> bs!5317 m!150451))

(assert (=> bs!5317 m!150451))

(declare-fun m!150453 () Bool)

(assert (=> bs!5317 m!150453))

(assert (=> b!127946 d!38801))

(declare-fun d!38803 () Bool)

(assert (=> d!38803 (contains!882 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66206)))

(declare-fun lt!66582 () Unit!3998)

(declare-fun choose!788 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> d!38803 (= lt!66582 (choose!788 lt!66207 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66206))))

(assert (=> d!38803 (contains!882 lt!66207 lt!66206)))

(assert (=> d!38803 (= (addStillContains!88 lt!66207 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66206) lt!66582)))

(declare-fun bs!5318 () Bool)

(assert (= bs!5318 d!38803))

(assert (=> bs!5318 m!149867))

(assert (=> bs!5318 m!149867))

(assert (=> bs!5318 m!149869))

(declare-fun m!150455 () Bool)

(assert (=> bs!5318 m!150455))

(declare-fun m!150457 () Bool)

(assert (=> bs!5318 m!150457))

(assert (=> b!127946 d!38803))

(declare-fun c!23552 () Bool)

(declare-fun call!13903 () ListLongMap!1693)

(declare-fun c!23556 () Bool)

(declare-fun call!13901 () ListLongMap!1693)

(declare-fun call!13902 () ListLongMap!1693)

(declare-fun call!13905 () ListLongMap!1693)

(declare-fun bm!13898 () Bool)

(assert (=> bm!13898 (= call!13901 (+!166 (ite c!23556 call!13905 (ite c!23552 call!13903 call!13902)) (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(declare-fun b!128434 () Bool)

(declare-fun e!83869 () ListLongMap!1693)

(declare-fun call!13904 () ListLongMap!1693)

(assert (=> b!128434 (= e!83869 call!13904)))

(declare-fun b!128435 () Bool)

(declare-fun e!83866 () Bool)

(declare-fun call!13906 () Bool)

(assert (=> b!128435 (= e!83866 (not call!13906))))

(declare-fun bm!13899 () Bool)

(declare-fun call!13907 () Bool)

(declare-fun lt!66604 () ListLongMap!1693)

(assert (=> bm!13899 (= call!13907 (contains!882 lt!66604 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128436 () Bool)

(declare-fun c!23551 () Bool)

(assert (=> b!128436 (= c!23551 (and (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!83868 () ListLongMap!1693)

(assert (=> b!128436 (= e!83869 e!83868)))

(declare-fun b!128437 () Bool)

(declare-fun e!83865 () Bool)

(assert (=> b!128437 (= e!83866 e!83865)))

(declare-fun res!62041 () Bool)

(assert (=> b!128437 (= res!62041 call!13906)))

(assert (=> b!128437 (=> (not res!62041) (not e!83865))))

(declare-fun b!128438 () Bool)

(declare-fun e!83867 () Unit!3998)

(declare-fun lt!66593 () Unit!3998)

(assert (=> b!128438 (= e!83867 lt!66593)))

(declare-fun lt!66598 () ListLongMap!1693)

(assert (=> b!128438 (= lt!66598 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66599 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66599 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66597 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66597 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66586 () Unit!3998)

(assert (=> b!128438 (= lt!66586 (addStillContains!88 lt!66598 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66597))))

(assert (=> b!128438 (contains!882 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66597)))

(declare-fun lt!66585 () Unit!3998)

(assert (=> b!128438 (= lt!66585 lt!66586)))

(declare-fun lt!66594 () ListLongMap!1693)

(assert (=> b!128438 (= lt!66594 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66590 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66590 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66603 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66603 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66596 () Unit!3998)

(assert (=> b!128438 (= lt!66596 (addApplyDifferent!88 lt!66594 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66603))))

(assert (=> b!128438 (= (apply!112 (+!166 lt!66594 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66603) (apply!112 lt!66594 lt!66603))))

(declare-fun lt!66588 () Unit!3998)

(assert (=> b!128438 (= lt!66588 lt!66596)))

(declare-fun lt!66595 () ListLongMap!1693)

(assert (=> b!128438 (= lt!66595 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66584 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66601 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66601 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66589 () Unit!3998)

(assert (=> b!128438 (= lt!66589 (addApplyDifferent!88 lt!66595 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66601))))

(assert (=> b!128438 (= (apply!112 (+!166 lt!66595 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66601) (apply!112 lt!66595 lt!66601))))

(declare-fun lt!66583 () Unit!3998)

(assert (=> b!128438 (= lt!66583 lt!66589)))

(declare-fun lt!66591 () ListLongMap!1693)

(assert (=> b!128438 (= lt!66591 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66592 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66602 () (_ BitVec 64))

(assert (=> b!128438 (= lt!66602 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!128438 (= lt!66593 (addApplyDifferent!88 lt!66591 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66602))))

(assert (=> b!128438 (= (apply!112 (+!166 lt!66591 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66602) (apply!112 lt!66591 lt!66602))))

(declare-fun b!128439 () Bool)

(assert (=> b!128439 (= e!83868 call!13904)))

(declare-fun b!128440 () Bool)

(declare-fun e!83862 () Bool)

(assert (=> b!128440 (= e!83862 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128441 () Bool)

(assert (=> b!128441 (= e!83865 (= (apply!112 lt!66604 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))

(declare-fun b!128442 () Bool)

(declare-fun e!83861 () Bool)

(assert (=> b!128442 (= e!83861 e!83866)))

(declare-fun c!23554 () Bool)

(assert (=> b!128442 (= c!23554 (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128443 () Bool)

(declare-fun e!83870 () Bool)

(declare-fun e!83864 () Bool)

(assert (=> b!128443 (= e!83870 e!83864)))

(declare-fun res!62047 () Bool)

(assert (=> b!128443 (=> (not res!62047) (not e!83864))))

(assert (=> b!128443 (= res!62047 (contains!882 lt!66604 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128443 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128444 () Bool)

(declare-fun res!62045 () Bool)

(assert (=> b!128444 (=> (not res!62045) (not e!83861))))

(assert (=> b!128444 (= res!62045 e!83870)))

(declare-fun res!62043 () Bool)

(assert (=> b!128444 (=> res!62043 e!83870)))

(assert (=> b!128444 (= res!62043 (not e!83862))))

(declare-fun res!62040 () Bool)

(assert (=> b!128444 (=> (not res!62040) (not e!83862))))

(assert (=> b!128444 (= res!62040 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128445 () Bool)

(assert (=> b!128445 (= e!83868 call!13902)))

(declare-fun b!128446 () Bool)

(declare-fun e!83863 () Bool)

(declare-fun e!83871 () Bool)

(assert (=> b!128446 (= e!83863 e!83871)))

(declare-fun res!62048 () Bool)

(assert (=> b!128446 (= res!62048 call!13907)))

(assert (=> b!128446 (=> (not res!62048) (not e!83871))))

(declare-fun e!83859 () ListLongMap!1693)

(declare-fun b!128447 () Bool)

(assert (=> b!128447 (= e!83859 (+!166 call!13901 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))

(declare-fun bm!13900 () Bool)

(assert (=> bm!13900 (= call!13906 (contains!882 lt!66604 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13901 () Bool)

(assert (=> bm!13901 (= call!13904 call!13901)))

(declare-fun b!128448 () Bool)

(declare-fun res!62042 () Bool)

(assert (=> b!128448 (=> (not res!62042) (not e!83861))))

(assert (=> b!128448 (= res!62042 e!83863)))

(declare-fun c!23553 () Bool)

(assert (=> b!128448 (= c!23553 (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13902 () Bool)

(assert (=> bm!13902 (= call!13903 call!13905)))

(declare-fun b!128449 () Bool)

(assert (=> b!128449 (= e!83859 e!83869)))

(assert (=> b!128449 (= c!23552 (and (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128450 () Bool)

(declare-fun e!83860 () Bool)

(assert (=> b!128450 (= e!83860 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13903 () Bool)

(assert (=> bm!13903 (= call!13902 call!13903)))

(declare-fun b!128451 () Bool)

(assert (=> b!128451 (= e!83871 (= (apply!112 lt!66604 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))

(declare-fun d!38805 () Bool)

(assert (=> d!38805 e!83861))

(declare-fun res!62044 () Bool)

(assert (=> d!38805 (=> (not res!62044) (not e!83861))))

(assert (=> d!38805 (= res!62044 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66587 () ListLongMap!1693)

(assert (=> d!38805 (= lt!66604 lt!66587)))

(declare-fun lt!66600 () Unit!3998)

(assert (=> d!38805 (= lt!66600 e!83867)))

(declare-fun c!23555 () Bool)

(assert (=> d!38805 (= c!23555 e!83860)))

(declare-fun res!62046 () Bool)

(assert (=> d!38805 (=> (not res!62046) (not e!83860))))

(assert (=> d!38805 (= res!62046 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38805 (= lt!66587 e!83859)))

(assert (=> d!38805 (= c!23556 (and (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38805 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38805 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66604)))

(declare-fun b!128452 () Bool)

(declare-fun Unit!4016 () Unit!3998)

(assert (=> b!128452 (= e!83867 Unit!4016)))

(declare-fun b!128453 () Bool)

(assert (=> b!128453 (= e!83864 (= (apply!112 lt!66604 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302))))))

(assert (=> b!128453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13904 () Bool)

(assert (=> bm!13904 (= call!13905 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128454 () Bool)

(assert (=> b!128454 (= e!83863 (not call!13907))))

(assert (= (and d!38805 c!23556) b!128447))

(assert (= (and d!38805 (not c!23556)) b!128449))

(assert (= (and b!128449 c!23552) b!128434))

(assert (= (and b!128449 (not c!23552)) b!128436))

(assert (= (and b!128436 c!23551) b!128439))

(assert (= (and b!128436 (not c!23551)) b!128445))

(assert (= (or b!128439 b!128445) bm!13903))

(assert (= (or b!128434 bm!13903) bm!13902))

(assert (= (or b!128434 b!128439) bm!13901))

(assert (= (or b!128447 bm!13902) bm!13904))

(assert (= (or b!128447 bm!13901) bm!13898))

(assert (= (and d!38805 res!62046) b!128450))

(assert (= (and d!38805 c!23555) b!128438))

(assert (= (and d!38805 (not c!23555)) b!128452))

(assert (= (and d!38805 res!62044) b!128444))

(assert (= (and b!128444 res!62040) b!128440))

(assert (= (and b!128444 (not res!62043)) b!128443))

(assert (= (and b!128443 res!62047) b!128453))

(assert (= (and b!128444 res!62045) b!128448))

(assert (= (and b!128448 c!23553) b!128446))

(assert (= (and b!128448 (not c!23553)) b!128454))

(assert (= (and b!128446 res!62048) b!128451))

(assert (= (or b!128446 b!128454) bm!13899))

(assert (= (and b!128448 res!62042) b!128442))

(assert (= (and b!128442 c!23554) b!128437))

(assert (= (and b!128442 (not c!23554)) b!128435))

(assert (= (and b!128437 res!62041) b!128441))

(assert (= (or b!128437 b!128435) bm!13900))

(declare-fun b_lambda!5701 () Bool)

(assert (=> (not b_lambda!5701) (not b!128453)))

(assert (=> b!128453 t!6123))

(declare-fun b_and!7949 () Bool)

(assert (= b_and!7945 (and (=> t!6123 result!3905) b_and!7949)))

(assert (=> b!128453 t!6125))

(declare-fun b_and!7951 () Bool)

(assert (= b_and!7947 (and (=> t!6125 result!3907) b_and!7951)))

(declare-fun m!150459 () Bool)

(assert (=> bm!13900 m!150459))

(declare-fun m!150461 () Bool)

(assert (=> b!128451 m!150461))

(declare-fun m!150463 () Bool)

(assert (=> bm!13904 m!150463))

(declare-fun m!150465 () Bool)

(assert (=> b!128438 m!150465))

(declare-fun m!150467 () Bool)

(assert (=> b!128438 m!150467))

(declare-fun m!150469 () Bool)

(assert (=> b!128438 m!150469))

(declare-fun m!150471 () Bool)

(assert (=> b!128438 m!150471))

(declare-fun m!150473 () Bool)

(assert (=> b!128438 m!150473))

(declare-fun m!150475 () Bool)

(assert (=> b!128438 m!150475))

(declare-fun m!150477 () Bool)

(assert (=> b!128438 m!150477))

(declare-fun m!150479 () Bool)

(assert (=> b!128438 m!150479))

(assert (=> b!128438 m!150023))

(declare-fun m!150481 () Bool)

(assert (=> b!128438 m!150481))

(declare-fun m!150483 () Bool)

(assert (=> b!128438 m!150483))

(assert (=> b!128438 m!150471))

(declare-fun m!150485 () Bool)

(assert (=> b!128438 m!150485))

(declare-fun m!150487 () Bool)

(assert (=> b!128438 m!150487))

(assert (=> b!128438 m!150469))

(declare-fun m!150489 () Bool)

(assert (=> b!128438 m!150489))

(assert (=> b!128438 m!150463))

(assert (=> b!128438 m!150481))

(declare-fun m!150491 () Bool)

(assert (=> b!128438 m!150491))

(assert (=> b!128438 m!150467))

(declare-fun m!150493 () Bool)

(assert (=> b!128438 m!150493))

(assert (=> d!38805 m!150007))

(assert (=> b!128450 m!150023))

(assert (=> b!128450 m!150023))

(assert (=> b!128450 m!150115))

(declare-fun m!150495 () Bool)

(assert (=> bm!13899 m!150495))

(declare-fun m!150497 () Bool)

(assert (=> b!128447 m!150497))

(declare-fun m!150499 () Bool)

(assert (=> b!128441 m!150499))

(assert (=> b!128453 m!150023))

(declare-fun m!150501 () Bool)

(assert (=> b!128453 m!150501))

(declare-fun m!150503 () Bool)

(assert (=> b!128453 m!150503))

(assert (=> b!128453 m!150127))

(assert (=> b!128453 m!150023))

(assert (=> b!128453 m!150503))

(assert (=> b!128453 m!150127))

(declare-fun m!150505 () Bool)

(assert (=> b!128453 m!150505))

(assert (=> b!128440 m!150023))

(assert (=> b!128440 m!150023))

(assert (=> b!128440 m!150115))

(declare-fun m!150507 () Bool)

(assert (=> bm!13898 m!150507))

(assert (=> b!128443 m!150023))

(assert (=> b!128443 m!150023))

(declare-fun m!150509 () Bool)

(assert (=> b!128443 m!150509))

(assert (=> bm!13849 d!38805))

(declare-fun d!38807 () Bool)

(assert (=> d!38807 (= (get!1465 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128097 d!38807))

(declare-fun d!38809 () Bool)

(assert (=> d!38809 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66607 () Unit!3998)

(declare-fun choose!789 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 V!3451 Int) Unit!3998)

(assert (=> d!38809 (= lt!66607 (choose!789 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66299 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38809 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38809 (= (lemmaChangeZeroKeyThenAddPairToListMap!57 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66299 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) (defaultEntry!2805 newMap!16)) lt!66607)))

(declare-fun bs!5319 () Bool)

(assert (= bs!5319 d!38809))

(assert (=> bs!5319 m!149783))

(declare-fun m!150511 () Bool)

(assert (=> bs!5319 m!150511))

(assert (=> bs!5319 m!150007))

(assert (=> bs!5319 m!149783))

(declare-fun m!150513 () Bool)

(assert (=> bs!5319 m!150513))

(assert (=> bs!5319 m!149841))

(assert (=> bs!5319 m!149841))

(declare-fun m!150515 () Bool)

(assert (=> bs!5319 m!150515))

(assert (=> b!128057 d!38809))

(assert (=> b!127971 d!38745))

(assert (=> b!127971 d!38747))

(assert (=> bm!13781 d!38775))

(declare-fun condMapEmpty!4555 () Bool)

(declare-fun mapDefault!4555 () ValueCell!1083)

(assert (=> mapNonEmpty!4553 (= condMapEmpty!4555 (= mapRest!4553 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4555)))))

(declare-fun e!83872 () Bool)

(declare-fun mapRes!4555 () Bool)

(assert (=> mapNonEmpty!4553 (= tp!11051 (and e!83872 mapRes!4555))))

(declare-fun b!128455 () Bool)

(declare-fun e!83873 () Bool)

(assert (=> b!128455 (= e!83873 tp_is_empty!2853)))

(declare-fun b!128456 () Bool)

(assert (=> b!128456 (= e!83872 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4555 () Bool)

(declare-fun tp!11053 () Bool)

(assert (=> mapNonEmpty!4555 (= mapRes!4555 (and tp!11053 e!83873))))

(declare-fun mapRest!4555 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapKey!4555 () (_ BitVec 32))

(declare-fun mapValue!4555 () ValueCell!1083)

(assert (=> mapNonEmpty!4555 (= mapRest!4553 (store mapRest!4555 mapKey!4555 mapValue!4555))))

(declare-fun mapIsEmpty!4555 () Bool)

(assert (=> mapIsEmpty!4555 mapRes!4555))

(assert (= (and mapNonEmpty!4553 condMapEmpty!4555) mapIsEmpty!4555))

(assert (= (and mapNonEmpty!4553 (not condMapEmpty!4555)) mapNonEmpty!4555))

(assert (= (and mapNonEmpty!4555 ((_ is ValueCellFull!1083) mapValue!4555)) b!128455))

(assert (= (and mapNonEmpty!4553 ((_ is ValueCellFull!1083) mapDefault!4555)) b!128456))

(declare-fun m!150517 () Bool)

(assert (=> mapNonEmpty!4555 m!150517))

(declare-fun condMapEmpty!4556 () Bool)

(declare-fun mapDefault!4556 () ValueCell!1083)

(assert (=> mapNonEmpty!4554 (= condMapEmpty!4556 (= mapRest!4554 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4556)))))

(declare-fun e!83874 () Bool)

(declare-fun mapRes!4556 () Bool)

(assert (=> mapNonEmpty!4554 (= tp!11052 (and e!83874 mapRes!4556))))

(declare-fun b!128457 () Bool)

(declare-fun e!83875 () Bool)

(assert (=> b!128457 (= e!83875 tp_is_empty!2853)))

(declare-fun b!128458 () Bool)

(assert (=> b!128458 (= e!83874 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4556 () Bool)

(declare-fun tp!11054 () Bool)

(assert (=> mapNonEmpty!4556 (= mapRes!4556 (and tp!11054 e!83875))))

(declare-fun mapRest!4556 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapValue!4556 () ValueCell!1083)

(declare-fun mapKey!4556 () (_ BitVec 32))

(assert (=> mapNonEmpty!4556 (= mapRest!4554 (store mapRest!4556 mapKey!4556 mapValue!4556))))

(declare-fun mapIsEmpty!4556 () Bool)

(assert (=> mapIsEmpty!4556 mapRes!4556))

(assert (= (and mapNonEmpty!4554 condMapEmpty!4556) mapIsEmpty!4556))

(assert (= (and mapNonEmpty!4554 (not condMapEmpty!4556)) mapNonEmpty!4556))

(assert (= (and mapNonEmpty!4556 ((_ is ValueCellFull!1083) mapValue!4556)) b!128457))

(assert (= (and mapNonEmpty!4554 ((_ is ValueCellFull!1083) mapDefault!4556)) b!128458))

(declare-fun m!150519 () Bool)

(assert (=> mapNonEmpty!4556 m!150519))

(declare-fun b_lambda!5703 () Bool)

(assert (= b_lambda!5693 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5703)))

(declare-fun b_lambda!5705 () Bool)

(assert (= b_lambda!5699 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5705)))

(declare-fun b_lambda!5707 () Bool)

(assert (= b_lambda!5697 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5707)))

(declare-fun b_lambda!5709 () Bool)

(assert (= b_lambda!5695 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5709)))

(declare-fun b_lambda!5711 () Bool)

(assert (= b_lambda!5701 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5711)))

(check-sat (not d!38721) (not b!128268) (not b!128248) (not d!38803) (not b!128125) (not b_lambda!5711) (not b!128441) (not b!128318) (not d!38777) (not b!128252) (not d!38749) (not b_lambda!5687) (not b!128408) (not b!128450) (not bm!13889) (not b!128355) (not d!38773) (not d!38801) (not bm!13862) (not bm!13899) b_and!7951 (not d!38745) (not b!128405) (not bm!13858) (not d!38779) (not b!128363) (not b!128179) (not b!128270) (not b!128191) (not b!128217) (not b!128412) (not b!128378) (not b!128200) (not bm!13879) (not b_lambda!5703) (not b!128198) (not d!38717) (not b!128119) (not d!38799) (not b!128143) (not d!38711) (not bm!13888) (not b!128426) (not b!128438) (not b!128413) (not d!38795) (not d!38763) (not b!128315) (not b!128117) (not b!128440) (not b!128430) (not b_lambda!5709) (not b!128174) (not b!128272) (not b!128406) (not d!38805) (not d!38775) (not bm!13859) (not b!128344) (not d!38755) (not bm!13890) (not b!128356) (not d!38697) (not b!128423) (not b!128176) b_and!7949 (not b!128271) (not b!128205) (not d!38753) (not b!128275) (not b!128453) (not b!128326) (not bm!13887) (not d!38701) (not b!128341) (not b!128247) (not d!38739) (not b!128250) (not b!128451) (not bm!13884) (not b!128194) (not b_next!2875) (not b!128214) (not b!128346) (not bm!13860) (not b!128118) (not d!38761) (not d!38703) (not b!128372) (not d!38709) (not bm!13900) (not b!128431) (not b!128429) (not d!38757) (not b!128244) (not b!128177) (not b!128173) (not d!38725) (not b!128322) (not b!128220) (not b!128421) (not b!128197) (not b_lambda!5707) (not b!128447) (not b!128175) (not b!128343) (not d!38733) (not b!128313) (not d!38787) (not b!128273) (not b!128246) (not mapNonEmpty!4555) (not bm!13894) (not bm!13878) (not bm!13880) (not b_lambda!5705) (not b!128124) (not d!38713) (not d!38727) (not bm!13898) (not bm!13861) (not b!128375) (not b!128368) (not d!38743) (not d!38771) (not b_lambda!5691) (not b!128184) (not b!128342) (not b!128243) (not d!38735) (not b!128207) (not d!38731) (not d!38715) (not d!38769) (not b!128376) (not d!38785) (not b!128210) (not b!128410) (not b!128208) (not b!128338) (not d!38797) (not b!128251) (not b!128366) (not b!128365) (not b_next!2873) (not b!128425) (not d!38793) (not b!128255) (not bm!13866) (not bm!13897) (not d!38783) (not d!38809) (not b!128432) (not d!38781) (not mapNonEmpty!4556) (not bm!13869) (not b!128337) (not bm!13904) (not b!128311) (not d!38699) (not b!128422) (not b!128266) (not d!38791) tp_is_empty!2853 (not d!38723) (not b!128427) (not b!128407) (not d!38751) (not b!128409) (not b!128443) (not d!38789) (not b!128218) (not b!128231))
(check-sat b_and!7949 b_and!7951 (not b_next!2873) (not b_next!2875))
(get-model)

(declare-fun d!38811 () Bool)

(assert (=> d!38811 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))

(declare-fun lt!66610 () Unit!3998)

(declare-fun choose!790 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 64) (_ BitVec 32) Int) Unit!3998)

(assert (=> d!38811 (= lt!66610 (choose!790 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(assert (=> d!38811 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38811 (= (lemmaArrayContainsKeyThenInListMap!38 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66610)))

(declare-fun bs!5320 () Bool)

(assert (= bs!5320 d!38811))

(assert (=> bs!5320 m!149841))

(assert (=> bs!5320 m!149841))

(assert (=> bs!5320 m!149785))

(assert (=> bs!5320 m!149917))

(assert (=> bs!5320 m!149785))

(declare-fun m!150521 () Bool)

(assert (=> bs!5320 m!150521))

(assert (=> bs!5320 m!150007))

(assert (=> b!128311 d!38811))

(assert (=> b!128311 d!38725))

(assert (=> b!128311 d!38727))

(declare-fun d!38813 () Bool)

(declare-fun e!83877 () Bool)

(assert (=> d!38813 e!83877))

(declare-fun res!62049 () Bool)

(assert (=> d!38813 (=> res!62049 e!83877)))

(declare-fun lt!66613 () Bool)

(assert (=> d!38813 (= res!62049 (not lt!66613))))

(declare-fun lt!66612 () Bool)

(assert (=> d!38813 (= lt!66613 lt!66612)))

(declare-fun lt!66614 () Unit!3998)

(declare-fun e!83876 () Unit!3998)

(assert (=> d!38813 (= lt!66614 e!83876)))

(declare-fun c!23557 () Bool)

(assert (=> d!38813 (= c!23557 lt!66612)))

(assert (=> d!38813 (= lt!66612 (containsKey!171 (toList!862 lt!66533) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!38813 (= (contains!882 lt!66533 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) lt!66613)))

(declare-fun b!128459 () Bool)

(declare-fun lt!66611 () Unit!3998)

(assert (=> b!128459 (= e!83876 lt!66611)))

(assert (=> b!128459 (= lt!66611 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66533) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128459 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128460 () Bool)

(declare-fun Unit!4017 () Unit!3998)

(assert (=> b!128460 (= e!83876 Unit!4017)))

(declare-fun b!128461 () Bool)

(assert (=> b!128461 (= e!83877 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!38813 c!23557) b!128459))

(assert (= (and d!38813 (not c!23557)) b!128460))

(assert (= (and d!38813 (not res!62049)) b!128461))

(assert (=> d!38813 m!150023))

(declare-fun m!150523 () Bool)

(assert (=> d!38813 m!150523))

(assert (=> b!128459 m!150023))

(declare-fun m!150525 () Bool)

(assert (=> b!128459 m!150525))

(assert (=> b!128459 m!150023))

(declare-fun m!150527 () Bool)

(assert (=> b!128459 m!150527))

(assert (=> b!128459 m!150527))

(declare-fun m!150529 () Bool)

(assert (=> b!128459 m!150529))

(assert (=> b!128461 m!150023))

(assert (=> b!128461 m!150527))

(assert (=> b!128461 m!150527))

(assert (=> b!128461 m!150529))

(assert (=> b!128368 d!38813))

(declare-fun d!38815 () Bool)

(declare-fun e!83878 () Bool)

(assert (=> d!38815 e!83878))

(declare-fun res!62050 () Bool)

(assert (=> d!38815 (=> (not res!62050) (not e!83878))))

(declare-fun lt!66615 () ListLongMap!1693)

(assert (=> d!38815 (= res!62050 (contains!882 lt!66615 (_1!1301 (tuple2!2583 lt!66551 lt!66552))))))

(declare-fun lt!66616 () List!1724)

(assert (=> d!38815 (= lt!66615 (ListLongMap!1694 lt!66616))))

(declare-fun lt!66617 () Unit!3998)

(declare-fun lt!66618 () Unit!3998)

(assert (=> d!38815 (= lt!66617 lt!66618)))

(assert (=> d!38815 (= (getValueByKey!167 lt!66616 (_1!1301 (tuple2!2583 lt!66551 lt!66552))) (Some!172 (_2!1301 (tuple2!2583 lt!66551 lt!66552))))))

(assert (=> d!38815 (= lt!66618 (lemmaContainsTupThenGetReturnValue!84 lt!66616 (_1!1301 (tuple2!2583 lt!66551 lt!66552)) (_2!1301 (tuple2!2583 lt!66551 lt!66552))))))

(assert (=> d!38815 (= lt!66616 (insertStrictlySorted!86 (toList!862 lt!66549) (_1!1301 (tuple2!2583 lt!66551 lt!66552)) (_2!1301 (tuple2!2583 lt!66551 lt!66552))))))

(assert (=> d!38815 (= (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552)) lt!66615)))

(declare-fun b!128462 () Bool)

(declare-fun res!62051 () Bool)

(assert (=> b!128462 (=> (not res!62051) (not e!83878))))

(assert (=> b!128462 (= res!62051 (= (getValueByKey!167 (toList!862 lt!66615) (_1!1301 (tuple2!2583 lt!66551 lt!66552))) (Some!172 (_2!1301 (tuple2!2583 lt!66551 lt!66552)))))))

(declare-fun b!128463 () Bool)

(assert (=> b!128463 (= e!83878 (contains!884 (toList!862 lt!66615) (tuple2!2583 lt!66551 lt!66552)))))

(assert (= (and d!38815 res!62050) b!128462))

(assert (= (and b!128462 res!62051) b!128463))

(declare-fun m!150531 () Bool)

(assert (=> d!38815 m!150531))

(declare-fun m!150533 () Bool)

(assert (=> d!38815 m!150533))

(declare-fun m!150535 () Bool)

(assert (=> d!38815 m!150535))

(declare-fun m!150537 () Bool)

(assert (=> d!38815 m!150537))

(declare-fun m!150539 () Bool)

(assert (=> b!128462 m!150539))

(declare-fun m!150541 () Bool)

(assert (=> b!128463 m!150541))

(assert (=> b!128407 d!38815))

(declare-fun d!38817 () Bool)

(declare-fun e!83880 () Bool)

(assert (=> d!38817 e!83880))

(declare-fun res!62052 () Bool)

(assert (=> d!38817 (=> res!62052 e!83880)))

(declare-fun lt!66621 () Bool)

(assert (=> d!38817 (= res!62052 (not lt!66621))))

(declare-fun lt!66620 () Bool)

(assert (=> d!38817 (= lt!66621 lt!66620)))

(declare-fun lt!66622 () Unit!3998)

(declare-fun e!83879 () Unit!3998)

(assert (=> d!38817 (= lt!66622 e!83879)))

(declare-fun c!23558 () Bool)

(assert (=> d!38817 (= c!23558 lt!66620)))

(assert (=> d!38817 (= lt!66620 (containsKey!171 (toList!862 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552))) lt!66553))))

(assert (=> d!38817 (= (contains!882 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552)) lt!66553) lt!66621)))

(declare-fun b!128464 () Bool)

(declare-fun lt!66619 () Unit!3998)

(assert (=> b!128464 (= e!83879 lt!66619)))

(assert (=> b!128464 (= lt!66619 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552))) lt!66553))))

(assert (=> b!128464 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552))) lt!66553))))

(declare-fun b!128465 () Bool)

(declare-fun Unit!4018 () Unit!3998)

(assert (=> b!128465 (= e!83879 Unit!4018)))

(declare-fun b!128466 () Bool)

(assert (=> b!128466 (= e!83880 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552))) lt!66553)))))

(assert (= (and d!38817 c!23558) b!128464))

(assert (= (and d!38817 (not c!23558)) b!128465))

(assert (= (and d!38817 (not res!62052)) b!128466))

(declare-fun m!150543 () Bool)

(assert (=> d!38817 m!150543))

(declare-fun m!150545 () Bool)

(assert (=> b!128464 m!150545))

(declare-fun m!150547 () Bool)

(assert (=> b!128464 m!150547))

(assert (=> b!128464 m!150547))

(declare-fun m!150549 () Bool)

(assert (=> b!128464 m!150549))

(assert (=> b!128466 m!150547))

(assert (=> b!128466 m!150547))

(assert (=> b!128466 m!150549))

(assert (=> b!128407 d!38817))

(declare-fun d!38819 () Bool)

(declare-fun e!83881 () Bool)

(assert (=> d!38819 e!83881))

(declare-fun res!62053 () Bool)

(assert (=> d!38819 (=> (not res!62053) (not e!83881))))

(declare-fun lt!66623 () ListLongMap!1693)

(assert (=> d!38819 (= res!62053 (contains!882 lt!66623 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66624 () List!1724)

(assert (=> d!38819 (= lt!66623 (ListLongMap!1694 lt!66624))))

(declare-fun lt!66625 () Unit!3998)

(declare-fun lt!66626 () Unit!3998)

(assert (=> d!38819 (= lt!66625 lt!66626)))

(assert (=> d!38819 (= (getValueByKey!167 lt!66624 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38819 (= lt!66626 (lemmaContainsTupThenGetReturnValue!84 lt!66624 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38819 (= lt!66624 (insertStrictlySorted!86 (toList!862 call!13900) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38819 (= (+!166 call!13900 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66623)))

(declare-fun b!128467 () Bool)

(declare-fun res!62054 () Bool)

(assert (=> b!128467 (=> (not res!62054) (not e!83881))))

(assert (=> b!128467 (= res!62054 (= (getValueByKey!167 (toList!862 lt!66623) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128468 () Bool)

(assert (=> b!128468 (= e!83881 (contains!884 (toList!862 lt!66623) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!38819 res!62053) b!128467))

(assert (= (and b!128467 res!62054) b!128468))

(declare-fun m!150551 () Bool)

(assert (=> d!38819 m!150551))

(declare-fun m!150553 () Bool)

(assert (=> d!38819 m!150553))

(declare-fun m!150555 () Bool)

(assert (=> d!38819 m!150555))

(declare-fun m!150557 () Bool)

(assert (=> d!38819 m!150557))

(declare-fun m!150559 () Bool)

(assert (=> b!128467 m!150559))

(declare-fun m!150561 () Bool)

(assert (=> b!128468 m!150561))

(assert (=> b!128407 d!38819))

(assert (=> b!128407 d!38741))

(declare-fun d!38821 () Bool)

(assert (=> d!38821 (not (contains!882 (+!166 lt!66549 (tuple2!2583 lt!66551 lt!66552)) lt!66553))))

(declare-fun lt!66629 () Unit!3998)

(declare-fun choose!791 (ListLongMap!1693 (_ BitVec 64) V!3451 (_ BitVec 64)) Unit!3998)

(assert (=> d!38821 (= lt!66629 (choose!791 lt!66549 lt!66551 lt!66552 lt!66553))))

(declare-fun e!83884 () Bool)

(assert (=> d!38821 e!83884))

(declare-fun res!62057 () Bool)

(assert (=> d!38821 (=> (not res!62057) (not e!83884))))

(assert (=> d!38821 (= res!62057 (not (contains!882 lt!66549 lt!66553)))))

(assert (=> d!38821 (= (addStillNotContains!59 lt!66549 lt!66551 lt!66552 lt!66553) lt!66629)))

(declare-fun b!128472 () Bool)

(assert (=> b!128472 (= e!83884 (not (= lt!66551 lt!66553)))))

(assert (= (and d!38821 res!62057) b!128472))

(assert (=> d!38821 m!150363))

(assert (=> d!38821 m!150363))

(assert (=> d!38821 m!150365))

(declare-fun m!150563 () Bool)

(assert (=> d!38821 m!150563))

(declare-fun m!150565 () Bool)

(assert (=> d!38821 m!150565))

(assert (=> b!128407 d!38821))

(declare-fun d!38823 () Bool)

(assert (=> d!38823 (= (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128338 d!38823))

(declare-fun d!38825 () Bool)

(declare-fun e!83886 () Bool)

(assert (=> d!38825 e!83886))

(declare-fun res!62058 () Bool)

(assert (=> d!38825 (=> res!62058 e!83886)))

(declare-fun lt!66632 () Bool)

(assert (=> d!38825 (= res!62058 (not lt!66632))))

(declare-fun lt!66631 () Bool)

(assert (=> d!38825 (= lt!66632 lt!66631)))

(declare-fun lt!66633 () Unit!3998)

(declare-fun e!83885 () Unit!3998)

(assert (=> d!38825 (= lt!66633 e!83885)))

(declare-fun c!23559 () Bool)

(assert (=> d!38825 (= c!23559 lt!66631)))

(assert (=> d!38825 (= lt!66631 (containsKey!171 (toList!862 lt!66378) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!38825 (= (contains!882 lt!66378 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) lt!66632)))

(declare-fun b!128473 () Bool)

(declare-fun lt!66630 () Unit!3998)

(assert (=> b!128473 (= e!83885 lt!66630)))

(assert (=> b!128473 (= lt!66630 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66378) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128473 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128474 () Bool)

(declare-fun Unit!4019 () Unit!3998)

(assert (=> b!128474 (= e!83885 Unit!4019)))

(declare-fun b!128475 () Bool)

(assert (=> b!128475 (= e!83886 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!38825 c!23559) b!128473))

(assert (= (and d!38825 (not c!23559)) b!128474))

(assert (= (and d!38825 (not res!62058)) b!128475))

(assert (=> d!38825 m!150023))

(declare-fun m!150567 () Bool)

(assert (=> d!38825 m!150567))

(assert (=> b!128473 m!150023))

(declare-fun m!150569 () Bool)

(assert (=> b!128473 m!150569))

(assert (=> b!128473 m!150023))

(declare-fun m!150571 () Bool)

(assert (=> b!128473 m!150571))

(assert (=> b!128473 m!150571))

(declare-fun m!150573 () Bool)

(assert (=> b!128473 m!150573))

(assert (=> b!128475 m!150023))

(assert (=> b!128475 m!150571))

(assert (=> b!128475 m!150571))

(assert (=> b!128475 m!150573))

(assert (=> b!128210 d!38825))

(assert (=> b!128355 d!38823))

(declare-fun d!38827 () Bool)

(declare-fun e!83888 () Bool)

(assert (=> d!38827 e!83888))

(declare-fun res!62059 () Bool)

(assert (=> d!38827 (=> res!62059 e!83888)))

(declare-fun lt!66636 () Bool)

(assert (=> d!38827 (= res!62059 (not lt!66636))))

(declare-fun lt!66635 () Bool)

(assert (=> d!38827 (= lt!66636 lt!66635)))

(declare-fun lt!66637 () Unit!3998)

(declare-fun e!83887 () Unit!3998)

(assert (=> d!38827 (= lt!66637 e!83887)))

(declare-fun c!23560 () Bool)

(assert (=> d!38827 (= c!23560 lt!66635)))

(assert (=> d!38827 (= lt!66635 (containsKey!171 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38827 (= (contains!882 lt!66572 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66636)))

(declare-fun b!128476 () Bool)

(declare-fun lt!66634 () Unit!3998)

(assert (=> b!128476 (= e!83887 lt!66634)))

(assert (=> b!128476 (= lt!66634 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> b!128476 (isDefined!121 (getValueByKey!167 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128477 () Bool)

(declare-fun Unit!4020 () Unit!3998)

(assert (=> b!128477 (= e!83887 Unit!4020)))

(declare-fun b!128478 () Bool)

(assert (=> b!128478 (= e!83888 (isDefined!121 (getValueByKey!167 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38827 c!23560) b!128476))

(assert (= (and d!38827 (not c!23560)) b!128477))

(assert (= (and d!38827 (not res!62059)) b!128478))

(declare-fun m!150575 () Bool)

(assert (=> d!38827 m!150575))

(declare-fun m!150577 () Bool)

(assert (=> b!128476 m!150577))

(assert (=> b!128476 m!150427))

(assert (=> b!128476 m!150427))

(declare-fun m!150579 () Bool)

(assert (=> b!128476 m!150579))

(assert (=> b!128478 m!150427))

(assert (=> b!128478 m!150427))

(assert (=> b!128478 m!150579))

(assert (=> d!38793 d!38827))

(declare-fun b!128482 () Bool)

(declare-fun e!83890 () Option!173)

(assert (=> b!128482 (= e!83890 None!171)))

(declare-fun b!128481 () Bool)

(assert (=> b!128481 (= e!83890 (getValueByKey!167 (t!6115 lt!66573) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128479 () Bool)

(declare-fun e!83889 () Option!173)

(assert (=> b!128479 (= e!83889 (Some!172 (_2!1301 (h!2323 lt!66573))))))

(declare-fun c!23561 () Bool)

(declare-fun d!38829 () Bool)

(assert (=> d!38829 (= c!23561 (and ((_ is Cons!1720) lt!66573) (= (_1!1301 (h!2323 lt!66573)) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38829 (= (getValueByKey!167 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!83889)))

(declare-fun b!128480 () Bool)

(assert (=> b!128480 (= e!83889 e!83890)))

(declare-fun c!23562 () Bool)

(assert (=> b!128480 (= c!23562 (and ((_ is Cons!1720) lt!66573) (not (= (_1!1301 (h!2323 lt!66573)) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!38829 c!23561) b!128479))

(assert (= (and d!38829 (not c!23561)) b!128480))

(assert (= (and b!128480 c!23562) b!128481))

(assert (= (and b!128480 (not c!23562)) b!128482))

(declare-fun m!150581 () Bool)

(assert (=> b!128481 m!150581))

(assert (=> d!38793 d!38829))

(declare-fun d!38831 () Bool)

(assert (=> d!38831 (= (getValueByKey!167 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66640 () Unit!3998)

(declare-fun choose!792 (List!1724 (_ BitVec 64) V!3451) Unit!3998)

(assert (=> d!38831 (= lt!66640 (choose!792 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!83893 () Bool)

(assert (=> d!38831 e!83893))

(declare-fun res!62064 () Bool)

(assert (=> d!38831 (=> (not res!62064) (not e!83893))))

(assert (=> d!38831 (= res!62064 (isStrictlySorted!313 lt!66573))))

(assert (=> d!38831 (= (lemmaContainsTupThenGetReturnValue!84 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66640)))

(declare-fun b!128487 () Bool)

(declare-fun res!62065 () Bool)

(assert (=> b!128487 (=> (not res!62065) (not e!83893))))

(assert (=> b!128487 (= res!62065 (containsKey!171 lt!66573 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128488 () Bool)

(assert (=> b!128488 (= e!83893 (contains!884 lt!66573 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38831 res!62064) b!128487))

(assert (= (and b!128487 res!62065) b!128488))

(assert (=> d!38831 m!150421))

(declare-fun m!150583 () Bool)

(assert (=> d!38831 m!150583))

(declare-fun m!150585 () Bool)

(assert (=> d!38831 m!150585))

(declare-fun m!150587 () Bool)

(assert (=> b!128487 m!150587))

(declare-fun m!150589 () Bool)

(assert (=> b!128488 m!150589))

(assert (=> d!38793 d!38831))

(declare-fun b!128509 () Bool)

(declare-fun c!23574 () Bool)

(assert (=> b!128509 (= c!23574 (and ((_ is Cons!1720) (toList!862 lt!66204)) (bvsgt (_1!1301 (h!2323 (toList!862 lt!66204))) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!83905 () List!1724)

(declare-fun e!83904 () List!1724)

(assert (=> b!128509 (= e!83905 e!83904)))

(declare-fun d!38833 () Bool)

(declare-fun e!83906 () Bool)

(assert (=> d!38833 e!83906))

(declare-fun res!62071 () Bool)

(assert (=> d!38833 (=> (not res!62071) (not e!83906))))

(declare-fun lt!66643 () List!1724)

(assert (=> d!38833 (= res!62071 (isStrictlySorted!313 lt!66643))))

(declare-fun e!83907 () List!1724)

(assert (=> d!38833 (= lt!66643 e!83907)))

(declare-fun c!23573 () Bool)

(assert (=> d!38833 (= c!23573 (and ((_ is Cons!1720) (toList!862 lt!66204)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66204))) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38833 (isStrictlySorted!313 (toList!862 lt!66204))))

(assert (=> d!38833 (= (insertStrictlySorted!86 (toList!862 lt!66204) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66643)))

(declare-fun b!128510 () Bool)

(declare-fun call!13916 () List!1724)

(assert (=> b!128510 (= e!83904 call!13916)))

(declare-fun b!128511 () Bool)

(declare-fun call!13914 () List!1724)

(assert (=> b!128511 (= e!83907 call!13914)))

(declare-fun e!83908 () List!1724)

(declare-fun b!128512 () Bool)

(declare-fun c!23571 () Bool)

(assert (=> b!128512 (= e!83908 (ite c!23571 (t!6115 (toList!862 lt!66204)) (ite c!23574 (Cons!1720 (h!2323 (toList!862 lt!66204)) (t!6115 (toList!862 lt!66204))) Nil!1721)))))

(declare-fun b!128513 () Bool)

(assert (=> b!128513 (= e!83904 call!13916)))

(declare-fun b!128514 () Bool)

(assert (=> b!128514 (= e!83906 (contains!884 lt!66643 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128515 () Bool)

(declare-fun res!62070 () Bool)

(assert (=> b!128515 (=> (not res!62070) (not e!83906))))

(assert (=> b!128515 (= res!62070 (containsKey!171 lt!66643 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13911 () Bool)

(declare-fun $colon$colon!89 (List!1724 tuple2!2582) List!1724)

(assert (=> bm!13911 (= call!13914 ($colon$colon!89 e!83908 (ite c!23573 (h!2323 (toList!862 lt!66204)) (tuple2!2583 (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun c!23572 () Bool)

(assert (=> bm!13911 (= c!23572 c!23573)))

(declare-fun b!128516 () Bool)

(declare-fun call!13915 () List!1724)

(assert (=> b!128516 (= e!83905 call!13915)))

(declare-fun b!128517 () Bool)

(assert (=> b!128517 (= e!83908 (insertStrictlySorted!86 (t!6115 (toList!862 lt!66204)) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13912 () Bool)

(assert (=> bm!13912 (= call!13916 call!13915)))

(declare-fun bm!13913 () Bool)

(assert (=> bm!13913 (= call!13915 call!13914)))

(declare-fun b!128518 () Bool)

(assert (=> b!128518 (= e!83907 e!83905)))

(assert (=> b!128518 (= c!23571 (and ((_ is Cons!1720) (toList!862 lt!66204)) (= (_1!1301 (h!2323 (toList!862 lt!66204))) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38833 c!23573) b!128511))

(assert (= (and d!38833 (not c!23573)) b!128518))

(assert (= (and b!128518 c!23571) b!128516))

(assert (= (and b!128518 (not c!23571)) b!128509))

(assert (= (and b!128509 c!23574) b!128510))

(assert (= (and b!128509 (not c!23574)) b!128513))

(assert (= (or b!128510 b!128513) bm!13912))

(assert (= (or b!128516 bm!13912) bm!13913))

(assert (= (or b!128511 bm!13913) bm!13911))

(assert (= (and bm!13911 c!23572) b!128517))

(assert (= (and bm!13911 (not c!23572)) b!128512))

(assert (= (and d!38833 res!62071) b!128515))

(assert (= (and b!128515 res!62070) b!128514))

(declare-fun m!150591 () Bool)

(assert (=> b!128514 m!150591))

(declare-fun m!150593 () Bool)

(assert (=> d!38833 m!150593))

(declare-fun m!150595 () Bool)

(assert (=> d!38833 m!150595))

(declare-fun m!150597 () Bool)

(assert (=> b!128515 m!150597))

(declare-fun m!150599 () Bool)

(assert (=> bm!13911 m!150599))

(declare-fun m!150601 () Bool)

(assert (=> b!128517 m!150601))

(assert (=> d!38793 d!38833))

(declare-fun d!38835 () Bool)

(assert (=> d!38835 (isDefined!121 (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun lt!66644 () Unit!3998)

(assert (=> d!38835 (= lt!66644 (choose!786 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun e!83909 () Bool)

(assert (=> d!38835 e!83909))

(declare-fun res!62072 () Bool)

(assert (=> d!38835 (=> (not res!62072) (not e!83909))))

(assert (=> d!38835 (= res!62072 (isStrictlySorted!313 (toList!862 call!13842)))))

(assert (=> d!38835 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66644)))

(declare-fun b!128519 () Bool)

(assert (=> b!128519 (= e!83909 (containsKey!171 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!38835 res!62072) b!128519))

(assert (=> d!38835 m!149785))

(assert (=> d!38835 m!150277))

(assert (=> d!38835 m!150277))

(assert (=> d!38835 m!150279))

(assert (=> d!38835 m!149785))

(declare-fun m!150603 () Bool)

(assert (=> d!38835 m!150603))

(declare-fun m!150605 () Bool)

(assert (=> d!38835 m!150605))

(assert (=> b!128519 m!149785))

(assert (=> b!128519 m!150273))

(assert (=> b!128344 d!38835))

(declare-fun d!38837 () Bool)

(assert (=> d!38837 (= (isDefined!121 (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) (not (isEmpty!404 (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(declare-fun bs!5321 () Bool)

(assert (= bs!5321 d!38837))

(assert (=> bs!5321 m!150277))

(declare-fun m!150607 () Bool)

(assert (=> bs!5321 m!150607))

(assert (=> b!128344 d!38837))

(declare-fun b!128523 () Bool)

(declare-fun e!83911 () Option!173)

(assert (=> b!128523 (= e!83911 None!171)))

(declare-fun b!128522 () Bool)

(assert (=> b!128522 (= e!83911 (getValueByKey!167 (t!6115 (toList!862 call!13842)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128520 () Bool)

(declare-fun e!83910 () Option!173)

(assert (=> b!128520 (= e!83910 (Some!172 (_2!1301 (h!2323 (toList!862 call!13842)))))))

(declare-fun d!38839 () Bool)

(declare-fun c!23575 () Bool)

(assert (=> d!38839 (= c!23575 (and ((_ is Cons!1720) (toList!862 call!13842)) (= (_1!1301 (h!2323 (toList!862 call!13842))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!38839 (= (getValueByKey!167 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!83910)))

(declare-fun b!128521 () Bool)

(assert (=> b!128521 (= e!83910 e!83911)))

(declare-fun c!23576 () Bool)

(assert (=> b!128521 (= c!23576 (and ((_ is Cons!1720) (toList!862 call!13842)) (not (= (_1!1301 (h!2323 (toList!862 call!13842))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(assert (= (and d!38839 c!23575) b!128520))

(assert (= (and d!38839 (not c!23575)) b!128521))

(assert (= (and b!128521 c!23576) b!128522))

(assert (= (and b!128521 (not c!23576)) b!128523))

(assert (=> b!128522 m!149785))

(declare-fun m!150609 () Bool)

(assert (=> b!128522 m!150609))

(assert (=> b!128344 d!38839))

(declare-fun d!38841 () Bool)

(assert (=> d!38841 (= (apply!112 (+!166 lt!66595 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66601) (apply!112 lt!66595 lt!66601))))

(declare-fun lt!66645 () Unit!3998)

(assert (=> d!38841 (= lt!66645 (choose!787 lt!66595 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66601))))

(declare-fun e!83912 () Bool)

(assert (=> d!38841 e!83912))

(declare-fun res!62073 () Bool)

(assert (=> d!38841 (=> (not res!62073) (not e!83912))))

(assert (=> d!38841 (= res!62073 (contains!882 lt!66595 lt!66601))))

(assert (=> d!38841 (= (addApplyDifferent!88 lt!66595 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66601) lt!66645)))

(declare-fun b!128524 () Bool)

(assert (=> b!128524 (= e!83912 (not (= lt!66601 lt!66584)))))

(assert (= (and d!38841 res!62073) b!128524))

(assert (=> d!38841 m!150479))

(assert (=> d!38841 m!150467))

(assert (=> d!38841 m!150467))

(assert (=> d!38841 m!150493))

(declare-fun m!150611 () Bool)

(assert (=> d!38841 m!150611))

(declare-fun m!150613 () Bool)

(assert (=> d!38841 m!150613))

(assert (=> b!128438 d!38841))

(declare-fun d!38843 () Bool)

(assert (=> d!38843 (= (apply!112 lt!66591 lt!66602) (get!1466 (getValueByKey!167 (toList!862 lt!66591) lt!66602)))))

(declare-fun bs!5322 () Bool)

(assert (= bs!5322 d!38843))

(declare-fun m!150615 () Bool)

(assert (=> bs!5322 m!150615))

(assert (=> bs!5322 m!150615))

(declare-fun m!150617 () Bool)

(assert (=> bs!5322 m!150617))

(assert (=> b!128438 d!38843))

(declare-fun b!128525 () Bool)

(declare-fun e!83918 () Bool)

(declare-fun e!83917 () Bool)

(assert (=> b!128525 (= e!83918 e!83917)))

(declare-fun c!23579 () Bool)

(declare-fun e!83919 () Bool)

(assert (=> b!128525 (= c!23579 e!83919)))

(declare-fun res!62075 () Bool)

(assert (=> b!128525 (=> (not res!62075) (not e!83919))))

(assert (=> b!128525 (= res!62075 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128526 () Bool)

(declare-fun e!83916 () Bool)

(declare-fun lt!66652 () ListLongMap!1693)

(assert (=> b!128526 (= e!83916 (isEmpty!405 lt!66652))))

(declare-fun b!128527 () Bool)

(assert (=> b!128527 (= e!83919 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128527 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!128528 () Bool)

(declare-fun lt!66646 () Unit!3998)

(declare-fun lt!66648 () Unit!3998)

(assert (=> b!128528 (= lt!66646 lt!66648)))

(declare-fun lt!66650 () V!3451)

(declare-fun lt!66647 () ListLongMap!1693)

(declare-fun lt!66651 () (_ BitVec 64))

(declare-fun lt!66649 () (_ BitVec 64))

(assert (=> b!128528 (not (contains!882 (+!166 lt!66647 (tuple2!2583 lt!66649 lt!66650)) lt!66651))))

(assert (=> b!128528 (= lt!66648 (addStillNotContains!59 lt!66647 lt!66649 lt!66650 lt!66651))))

(assert (=> b!128528 (= lt!66651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!128528 (= lt!66650 (get!1462 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!128528 (= lt!66649 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13917 () ListLongMap!1693)

(assert (=> b!128528 (= lt!66647 call!13917)))

(declare-fun e!83913 () ListLongMap!1693)

(assert (=> b!128528 (= e!83913 (+!166 call!13917 (tuple2!2583 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (get!1462 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!128529 () Bool)

(declare-fun res!62076 () Bool)

(assert (=> b!128529 (=> (not res!62076) (not e!83918))))

(assert (=> b!128529 (= res!62076 (not (contains!882 lt!66652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128530 () Bool)

(assert (=> b!128530 (= e!83916 (= lt!66652 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16))))))

(declare-fun b!128531 () Bool)

(assert (=> b!128531 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> b!128531 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302))))))

(declare-fun e!83915 () Bool)

(assert (=> b!128531 (= e!83915 (= (apply!112 lt!66652 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!128532 () Bool)

(declare-fun e!83914 () ListLongMap!1693)

(assert (=> b!128532 (= e!83914 (ListLongMap!1694 Nil!1721))))

(declare-fun b!128533 () Bool)

(assert (=> b!128533 (= e!83917 e!83915)))

(assert (=> b!128533 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!62074 () Bool)

(assert (=> b!128533 (= res!62074 (contains!882 lt!66652 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128533 (=> (not res!62074) (not e!83915))))

(declare-fun d!38845 () Bool)

(assert (=> d!38845 e!83918))

(declare-fun res!62077 () Bool)

(assert (=> d!38845 (=> (not res!62077) (not e!83918))))

(assert (=> d!38845 (= res!62077 (not (contains!882 lt!66652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!38845 (= lt!66652 e!83914)))

(declare-fun c!23578 () Bool)

(assert (=> d!38845 (= c!23578 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38845 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38845 (= (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66652)))

(declare-fun b!128534 () Bool)

(assert (=> b!128534 (= e!83914 e!83913)))

(declare-fun c!23580 () Bool)

(assert (=> b!128534 (= c!23580 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128535 () Bool)

(assert (=> b!128535 (= e!83913 call!13917)))

(declare-fun bm!13914 () Bool)

(assert (=> bm!13914 (= call!13917 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302) (mask!7073 newMap!16) (ite c!23470 (ite c!23469 lt!66299 lt!66298) (extraKeys!2582 newMap!16)) (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16)))))

(declare-fun b!128536 () Bool)

(assert (=> b!128536 (= e!83917 e!83916)))

(declare-fun c!23577 () Bool)

(assert (=> b!128536 (= c!23577 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (= (and d!38845 c!23578) b!128532))

(assert (= (and d!38845 (not c!23578)) b!128534))

(assert (= (and b!128534 c!23580) b!128528))

(assert (= (and b!128534 (not c!23580)) b!128535))

(assert (= (or b!128528 b!128535) bm!13914))

(assert (= (and d!38845 res!62077) b!128529))

(assert (= (and b!128529 res!62076) b!128525))

(assert (= (and b!128525 res!62075) b!128527))

(assert (= (and b!128525 c!23579) b!128533))

(assert (= (and b!128525 (not c!23579)) b!128536))

(assert (= (and b!128533 res!62074) b!128531))

(assert (= (and b!128536 c!23577) b!128530))

(assert (= (and b!128536 (not c!23577)) b!128526))

(declare-fun b_lambda!5713 () Bool)

(assert (=> (not b_lambda!5713) (not b!128528)))

(assert (=> b!128528 t!6123))

(declare-fun b_and!7953 () Bool)

(assert (= b_and!7949 (and (=> t!6123 result!3905) b_and!7953)))

(assert (=> b!128528 t!6125))

(declare-fun b_and!7955 () Bool)

(assert (= b_and!7951 (and (=> t!6125 result!3907) b_and!7955)))

(declare-fun b_lambda!5715 () Bool)

(assert (=> (not b_lambda!5715) (not b!128531)))

(assert (=> b!128531 t!6123))

(declare-fun b_and!7957 () Bool)

(assert (= b_and!7953 (and (=> t!6123 result!3905) b_and!7957)))

(assert (=> b!128531 t!6125))

(declare-fun b_and!7959 () Bool)

(assert (= b_and!7955 (and (=> t!6125 result!3907) b_and!7959)))

(assert (=> b!128533 m!150023))

(assert (=> b!128533 m!150023))

(declare-fun m!150619 () Bool)

(assert (=> b!128533 m!150619))

(declare-fun m!150621 () Bool)

(assert (=> d!38845 m!150621))

(assert (=> d!38845 m!150007))

(assert (=> b!128527 m!150023))

(assert (=> b!128527 m!150023))

(assert (=> b!128527 m!150115))

(assert (=> b!128531 m!150127))

(assert (=> b!128531 m!150503))

(assert (=> b!128531 m!150127))

(assert (=> b!128531 m!150505))

(assert (=> b!128531 m!150503))

(assert (=> b!128531 m!150023))

(declare-fun m!150623 () Bool)

(assert (=> b!128531 m!150623))

(assert (=> b!128531 m!150023))

(declare-fun m!150625 () Bool)

(assert (=> b!128526 m!150625))

(declare-fun m!150627 () Bool)

(assert (=> bm!13914 m!150627))

(assert (=> b!128534 m!150023))

(assert (=> b!128534 m!150023))

(assert (=> b!128534 m!150115))

(assert (=> b!128530 m!150627))

(declare-fun m!150629 () Bool)

(assert (=> b!128529 m!150629))

(declare-fun m!150631 () Bool)

(assert (=> b!128528 m!150631))

(assert (=> b!128528 m!150503))

(assert (=> b!128528 m!150127))

(assert (=> b!128528 m!150505))

(declare-fun m!150633 () Bool)

(assert (=> b!128528 m!150633))

(assert (=> b!128528 m!150023))

(assert (=> b!128528 m!150127))

(declare-fun m!150635 () Bool)

(assert (=> b!128528 m!150635))

(assert (=> b!128528 m!150635))

(declare-fun m!150637 () Bool)

(assert (=> b!128528 m!150637))

(assert (=> b!128528 m!150503))

(assert (=> b!128438 d!38845))

(declare-fun d!38847 () Bool)

(assert (=> d!38847 (= (apply!112 (+!166 lt!66591 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66602) (apply!112 lt!66591 lt!66602))))

(declare-fun lt!66653 () Unit!3998)

(assert (=> d!38847 (= lt!66653 (choose!787 lt!66591 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66602))))

(declare-fun e!83920 () Bool)

(assert (=> d!38847 e!83920))

(declare-fun res!62078 () Bool)

(assert (=> d!38847 (=> (not res!62078) (not e!83920))))

(assert (=> d!38847 (= res!62078 (contains!882 lt!66591 lt!66602))))

(assert (=> d!38847 (= (addApplyDifferent!88 lt!66591 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66602) lt!66653)))

(declare-fun b!128537 () Bool)

(assert (=> b!128537 (= e!83920 (not (= lt!66602 lt!66592)))))

(assert (= (and d!38847 res!62078) b!128537))

(assert (=> d!38847 m!150487))

(assert (=> d!38847 m!150469))

(assert (=> d!38847 m!150469))

(assert (=> d!38847 m!150489))

(declare-fun m!150639 () Bool)

(assert (=> d!38847 m!150639))

(declare-fun m!150641 () Bool)

(assert (=> d!38847 m!150641))

(assert (=> b!128438 d!38847))

(declare-fun d!38849 () Bool)

(declare-fun e!83921 () Bool)

(assert (=> d!38849 e!83921))

(declare-fun res!62079 () Bool)

(assert (=> d!38849 (=> (not res!62079) (not e!83921))))

(declare-fun lt!66654 () ListLongMap!1693)

(assert (=> d!38849 (= res!62079 (contains!882 lt!66654 (_1!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(declare-fun lt!66655 () List!1724)

(assert (=> d!38849 (= lt!66654 (ListLongMap!1694 lt!66655))))

(declare-fun lt!66656 () Unit!3998)

(declare-fun lt!66657 () Unit!3998)

(assert (=> d!38849 (= lt!66656 lt!66657)))

(assert (=> d!38849 (= (getValueByKey!167 lt!66655 (_1!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38849 (= lt!66657 (lemmaContainsTupThenGetReturnValue!84 lt!66655 (_1!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38849 (= lt!66655 (insertStrictlySorted!86 (toList!862 lt!66598) (_1!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38849 (= (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66654)))

(declare-fun b!128538 () Bool)

(declare-fun res!62080 () Bool)

(assert (=> b!128538 (=> (not res!62080) (not e!83921))))

(assert (=> b!128538 (= res!62080 (= (getValueByKey!167 (toList!862 lt!66654) (_1!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))))))))

(declare-fun b!128539 () Bool)

(assert (=> b!128539 (= e!83921 (contains!884 (toList!862 lt!66654) (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))))))

(assert (= (and d!38849 res!62079) b!128538))

(assert (= (and b!128538 res!62080) b!128539))

(declare-fun m!150643 () Bool)

(assert (=> d!38849 m!150643))

(declare-fun m!150645 () Bool)

(assert (=> d!38849 m!150645))

(declare-fun m!150647 () Bool)

(assert (=> d!38849 m!150647))

(declare-fun m!150649 () Bool)

(assert (=> d!38849 m!150649))

(declare-fun m!150651 () Bool)

(assert (=> b!128538 m!150651))

(declare-fun m!150653 () Bool)

(assert (=> b!128539 m!150653))

(assert (=> b!128438 d!38849))

(declare-fun d!38851 () Bool)

(declare-fun e!83923 () Bool)

(assert (=> d!38851 e!83923))

(declare-fun res!62081 () Bool)

(assert (=> d!38851 (=> res!62081 e!83923)))

(declare-fun lt!66660 () Bool)

(assert (=> d!38851 (= res!62081 (not lt!66660))))

(declare-fun lt!66659 () Bool)

(assert (=> d!38851 (= lt!66660 lt!66659)))

(declare-fun lt!66661 () Unit!3998)

(declare-fun e!83922 () Unit!3998)

(assert (=> d!38851 (= lt!66661 e!83922)))

(declare-fun c!23581 () Bool)

(assert (=> d!38851 (= c!23581 lt!66659)))

(assert (=> d!38851 (= lt!66659 (containsKey!171 (toList!862 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) lt!66597))))

(assert (=> d!38851 (= (contains!882 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66597) lt!66660)))

(declare-fun b!128540 () Bool)

(declare-fun lt!66658 () Unit!3998)

(assert (=> b!128540 (= e!83922 lt!66658)))

(assert (=> b!128540 (= lt!66658 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) lt!66597))))

(assert (=> b!128540 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) lt!66597))))

(declare-fun b!128541 () Bool)

(declare-fun Unit!4021 () Unit!3998)

(assert (=> b!128541 (= e!83922 Unit!4021)))

(declare-fun b!128542 () Bool)

(assert (=> b!128542 (= e!83923 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) lt!66597)))))

(assert (= (and d!38851 c!23581) b!128540))

(assert (= (and d!38851 (not c!23581)) b!128541))

(assert (= (and d!38851 (not res!62081)) b!128542))

(declare-fun m!150655 () Bool)

(assert (=> d!38851 m!150655))

(declare-fun m!150657 () Bool)

(assert (=> b!128540 m!150657))

(declare-fun m!150659 () Bool)

(assert (=> b!128540 m!150659))

(assert (=> b!128540 m!150659))

(declare-fun m!150661 () Bool)

(assert (=> b!128540 m!150661))

(assert (=> b!128542 m!150659))

(assert (=> b!128542 m!150659))

(assert (=> b!128542 m!150661))

(assert (=> b!128438 d!38851))

(declare-fun d!38853 () Bool)

(declare-fun e!83924 () Bool)

(assert (=> d!38853 e!83924))

(declare-fun res!62082 () Bool)

(assert (=> d!38853 (=> (not res!62082) (not e!83924))))

(declare-fun lt!66662 () ListLongMap!1693)

(assert (=> d!38853 (= res!62082 (contains!882 lt!66662 (_1!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(declare-fun lt!66663 () List!1724)

(assert (=> d!38853 (= lt!66662 (ListLongMap!1694 lt!66663))))

(declare-fun lt!66664 () Unit!3998)

(declare-fun lt!66665 () Unit!3998)

(assert (=> d!38853 (= lt!66664 lt!66665)))

(assert (=> d!38853 (= (getValueByKey!167 lt!66663 (_1!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38853 (= lt!66665 (lemmaContainsTupThenGetReturnValue!84 lt!66663 (_1!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38853 (= lt!66663 (insertStrictlySorted!86 (toList!862 lt!66591) (_1!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38853 (= (+!166 lt!66591 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66662)))

(declare-fun b!128543 () Bool)

(declare-fun res!62083 () Bool)

(assert (=> b!128543 (=> (not res!62083) (not e!83924))))

(assert (=> b!128543 (= res!62083 (= (getValueByKey!167 (toList!862 lt!66662) (_1!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(declare-fun b!128544 () Bool)

(assert (=> b!128544 (= e!83924 (contains!884 (toList!862 lt!66662) (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))

(assert (= (and d!38853 res!62082) b!128543))

(assert (= (and b!128543 res!62083) b!128544))

(declare-fun m!150663 () Bool)

(assert (=> d!38853 m!150663))

(declare-fun m!150665 () Bool)

(assert (=> d!38853 m!150665))

(declare-fun m!150667 () Bool)

(assert (=> d!38853 m!150667))

(declare-fun m!150669 () Bool)

(assert (=> d!38853 m!150669))

(declare-fun m!150671 () Bool)

(assert (=> b!128543 m!150671))

(declare-fun m!150673 () Bool)

(assert (=> b!128544 m!150673))

(assert (=> b!128438 d!38853))

(declare-fun d!38855 () Bool)

(assert (=> d!38855 (= (apply!112 (+!166 lt!66594 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66603) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66594 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) lt!66603)))))

(declare-fun bs!5323 () Bool)

(assert (= bs!5323 d!38855))

(declare-fun m!150675 () Bool)

(assert (=> bs!5323 m!150675))

(assert (=> bs!5323 m!150675))

(declare-fun m!150677 () Bool)

(assert (=> bs!5323 m!150677))

(assert (=> b!128438 d!38855))

(declare-fun d!38857 () Bool)

(assert (=> d!38857 (= (apply!112 lt!66595 lt!66601) (get!1466 (getValueByKey!167 (toList!862 lt!66595) lt!66601)))))

(declare-fun bs!5324 () Bool)

(assert (= bs!5324 d!38857))

(declare-fun m!150679 () Bool)

(assert (=> bs!5324 m!150679))

(assert (=> bs!5324 m!150679))

(declare-fun m!150681 () Bool)

(assert (=> bs!5324 m!150681))

(assert (=> b!128438 d!38857))

(declare-fun d!38859 () Bool)

(declare-fun e!83925 () Bool)

(assert (=> d!38859 e!83925))

(declare-fun res!62084 () Bool)

(assert (=> d!38859 (=> (not res!62084) (not e!83925))))

(declare-fun lt!66666 () ListLongMap!1693)

(assert (=> d!38859 (= res!62084 (contains!882 lt!66666 (_1!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(declare-fun lt!66667 () List!1724)

(assert (=> d!38859 (= lt!66666 (ListLongMap!1694 lt!66667))))

(declare-fun lt!66668 () Unit!3998)

(declare-fun lt!66669 () Unit!3998)

(assert (=> d!38859 (= lt!66668 lt!66669)))

(assert (=> d!38859 (= (getValueByKey!167 lt!66667 (_1!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38859 (= lt!66669 (lemmaContainsTupThenGetReturnValue!84 lt!66667 (_1!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38859 (= lt!66667 (insertStrictlySorted!86 (toList!862 lt!66594) (_1!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!38859 (= (+!166 lt!66594 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66666)))

(declare-fun b!128545 () Bool)

(declare-fun res!62085 () Bool)

(assert (=> b!128545 (=> (not res!62085) (not e!83925))))

(assert (=> b!128545 (= res!62085 (= (getValueByKey!167 (toList!862 lt!66666) (_1!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(declare-fun b!128546 () Bool)

(assert (=> b!128546 (= e!83925 (contains!884 (toList!862 lt!66666) (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))

(assert (= (and d!38859 res!62084) b!128545))

(assert (= (and b!128545 res!62085) b!128546))

(declare-fun m!150683 () Bool)

(assert (=> d!38859 m!150683))

(declare-fun m!150685 () Bool)

(assert (=> d!38859 m!150685))

(declare-fun m!150687 () Bool)

(assert (=> d!38859 m!150687))

(declare-fun m!150689 () Bool)

(assert (=> d!38859 m!150689))

(declare-fun m!150691 () Bool)

(assert (=> b!128545 m!150691))

(declare-fun m!150693 () Bool)

(assert (=> b!128546 m!150693))

(assert (=> b!128438 d!38859))

(declare-fun d!38861 () Bool)

(assert (=> d!38861 (= (apply!112 lt!66594 lt!66603) (get!1466 (getValueByKey!167 (toList!862 lt!66594) lt!66603)))))

(declare-fun bs!5325 () Bool)

(assert (= bs!5325 d!38861))

(declare-fun m!150695 () Bool)

(assert (=> bs!5325 m!150695))

(assert (=> bs!5325 m!150695))

(declare-fun m!150697 () Bool)

(assert (=> bs!5325 m!150697))

(assert (=> b!128438 d!38861))

(declare-fun d!38863 () Bool)

(assert (=> d!38863 (= (apply!112 (+!166 lt!66591 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66602) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66591 (tuple2!2583 lt!66592 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) lt!66602)))))

(declare-fun bs!5326 () Bool)

(assert (= bs!5326 d!38863))

(declare-fun m!150699 () Bool)

(assert (=> bs!5326 m!150699))

(assert (=> bs!5326 m!150699))

(declare-fun m!150701 () Bool)

(assert (=> bs!5326 m!150701))

(assert (=> b!128438 d!38863))

(declare-fun d!38865 () Bool)

(assert (=> d!38865 (= (apply!112 (+!166 lt!66595 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66601) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66595 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) lt!66601)))))

(declare-fun bs!5327 () Bool)

(assert (= bs!5327 d!38865))

(declare-fun m!150703 () Bool)

(assert (=> bs!5327 m!150703))

(assert (=> bs!5327 m!150703))

(declare-fun m!150705 () Bool)

(assert (=> bs!5327 m!150705))

(assert (=> b!128438 d!38865))

(declare-fun d!38867 () Bool)

(assert (=> d!38867 (contains!882 (+!166 lt!66598 (tuple2!2583 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66597)))

(declare-fun lt!66670 () Unit!3998)

(assert (=> d!38867 (= lt!66670 (choose!788 lt!66598 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66597))))

(assert (=> d!38867 (contains!882 lt!66598 lt!66597)))

(assert (=> d!38867 (= (addStillContains!88 lt!66598 lt!66599 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)) lt!66597) lt!66670)))

(declare-fun bs!5328 () Bool)

(assert (= bs!5328 d!38867))

(assert (=> bs!5328 m!150481))

(assert (=> bs!5328 m!150481))

(assert (=> bs!5328 m!150483))

(declare-fun m!150707 () Bool)

(assert (=> bs!5328 m!150707))

(declare-fun m!150709 () Bool)

(assert (=> bs!5328 m!150709))

(assert (=> b!128438 d!38867))

(declare-fun d!38869 () Bool)

(declare-fun e!83926 () Bool)

(assert (=> d!38869 e!83926))

(declare-fun res!62086 () Bool)

(assert (=> d!38869 (=> (not res!62086) (not e!83926))))

(declare-fun lt!66671 () ListLongMap!1693)

(assert (=> d!38869 (= res!62086 (contains!882 lt!66671 (_1!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(declare-fun lt!66672 () List!1724)

(assert (=> d!38869 (= lt!66671 (ListLongMap!1694 lt!66672))))

(declare-fun lt!66673 () Unit!3998)

(declare-fun lt!66674 () Unit!3998)

(assert (=> d!38869 (= lt!66673 lt!66674)))

(assert (=> d!38869 (= (getValueByKey!167 lt!66672 (_1!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38869 (= lt!66674 (lemmaContainsTupThenGetReturnValue!84 lt!66672 (_1!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38869 (= lt!66672 (insertStrictlySorted!86 (toList!862 lt!66595) (_1!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))))))

(assert (=> d!38869 (= (+!166 lt!66595 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))) lt!66671)))

(declare-fun b!128547 () Bool)

(declare-fun res!62087 () Bool)

(assert (=> b!128547 (=> (not res!62087) (not e!83926))))

(assert (=> b!128547 (= res!62087 (= (getValueByKey!167 (toList!862 lt!66671) (_1!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))))))))

(declare-fun b!128548 () Bool)

(assert (=> b!128548 (= e!83926 (contains!884 (toList!862 lt!66671) (tuple2!2583 lt!66584 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16)))))))

(assert (= (and d!38869 res!62086) b!128547))

(assert (= (and b!128547 res!62087) b!128548))

(declare-fun m!150711 () Bool)

(assert (=> d!38869 m!150711))

(declare-fun m!150713 () Bool)

(assert (=> d!38869 m!150713))

(declare-fun m!150715 () Bool)

(assert (=> d!38869 m!150715))

(declare-fun m!150717 () Bool)

(assert (=> d!38869 m!150717))

(declare-fun m!150719 () Bool)

(assert (=> b!128547 m!150719))

(declare-fun m!150721 () Bool)

(assert (=> b!128548 m!150721))

(assert (=> b!128438 d!38869))

(declare-fun d!38871 () Bool)

(assert (=> d!38871 (= (apply!112 (+!166 lt!66594 (tuple2!2583 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!66603) (apply!112 lt!66594 lt!66603))))

(declare-fun lt!66675 () Unit!3998)

(assert (=> d!38871 (= lt!66675 (choose!787 lt!66594 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66603))))

(declare-fun e!83927 () Bool)

(assert (=> d!38871 e!83927))

(declare-fun res!62088 () Bool)

(assert (=> d!38871 (=> (not res!62088) (not e!83927))))

(assert (=> d!38871 (= res!62088 (contains!882 lt!66594 lt!66603))))

(assert (=> d!38871 (= (addApplyDifferent!88 lt!66594 lt!66590 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)) lt!66603) lt!66675)))

(declare-fun b!128549 () Bool)

(assert (=> b!128549 (= e!83927 (not (= lt!66603 lt!66590)))))

(assert (= (and d!38871 res!62088) b!128549))

(assert (=> d!38871 m!150485))

(assert (=> d!38871 m!150471))

(assert (=> d!38871 m!150471))

(assert (=> d!38871 m!150473))

(declare-fun m!150723 () Bool)

(assert (=> d!38871 m!150723))

(declare-fun m!150725 () Bool)

(assert (=> d!38871 m!150725))

(assert (=> b!128438 d!38871))

(declare-fun b!128553 () Bool)

(declare-fun e!83929 () Option!173)

(assert (=> b!128553 (= e!83929 None!171)))

(declare-fun b!128552 () Bool)

(assert (=> b!128552 (= e!83929 (getValueByKey!167 (t!6115 (toList!862 lt!66572)) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128550 () Bool)

(declare-fun e!83928 () Option!173)

(assert (=> b!128550 (= e!83928 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66572)))))))

(declare-fun d!38873 () Bool)

(declare-fun c!23582 () Bool)

(assert (=> d!38873 (= c!23582 (and ((_ is Cons!1720) (toList!862 lt!66572)) (= (_1!1301 (h!2323 (toList!862 lt!66572))) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38873 (= (getValueByKey!167 (toList!862 lt!66572) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!83928)))

(declare-fun b!128551 () Bool)

(assert (=> b!128551 (= e!83928 e!83929)))

(declare-fun c!23583 () Bool)

(assert (=> b!128551 (= c!23583 (and ((_ is Cons!1720) (toList!862 lt!66572)) (not (= (_1!1301 (h!2323 (toList!862 lt!66572))) (_1!1301 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!38873 c!23582) b!128550))

(assert (= (and d!38873 (not c!23582)) b!128551))

(assert (= (and b!128551 c!23583) b!128552))

(assert (= (and b!128551 (not c!23583)) b!128553))

(declare-fun m!150727 () Bool)

(assert (=> b!128552 m!150727))

(assert (=> b!128429 d!38873))

(assert (=> b!128315 d!38717))

(assert (=> d!38779 d!38793))

(assert (=> d!38779 d!38801))

(assert (=> d!38779 d!38783))

(declare-fun d!38875 () Bool)

(assert (=> d!38875 (= (apply!112 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66210) (apply!112 lt!66204 lt!66210))))

(assert (=> d!38875 true))

(declare-fun _$34!955 () Unit!3998)

(assert (=> d!38875 (= (choose!787 lt!66204 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66210) _$34!955)))

(declare-fun bs!5329 () Bool)

(assert (= bs!5329 d!38875))

(assert (=> bs!5329 m!149851))

(assert (=> bs!5329 m!149851))

(assert (=> bs!5329 m!149879))

(assert (=> bs!5329 m!149863))

(assert (=> d!38779 d!38875))

(declare-fun d!38877 () Bool)

(declare-fun e!83931 () Bool)

(assert (=> d!38877 e!83931))

(declare-fun res!62089 () Bool)

(assert (=> d!38877 (=> res!62089 e!83931)))

(declare-fun lt!66678 () Bool)

(assert (=> d!38877 (= res!62089 (not lt!66678))))

(declare-fun lt!66677 () Bool)

(assert (=> d!38877 (= lt!66678 lt!66677)))

(declare-fun lt!66679 () Unit!3998)

(declare-fun e!83930 () Unit!3998)

(assert (=> d!38877 (= lt!66679 e!83930)))

(declare-fun c!23584 () Bool)

(assert (=> d!38877 (= c!23584 lt!66677)))

(assert (=> d!38877 (= lt!66677 (containsKey!171 (toList!862 lt!66204) lt!66210))))

(assert (=> d!38877 (= (contains!882 lt!66204 lt!66210) lt!66678)))

(declare-fun b!128555 () Bool)

(declare-fun lt!66676 () Unit!3998)

(assert (=> b!128555 (= e!83930 lt!66676)))

(assert (=> b!128555 (= lt!66676 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66204) lt!66210))))

(assert (=> b!128555 (isDefined!121 (getValueByKey!167 (toList!862 lt!66204) lt!66210))))

(declare-fun b!128556 () Bool)

(declare-fun Unit!4022 () Unit!3998)

(assert (=> b!128556 (= e!83930 Unit!4022)))

(declare-fun b!128557 () Bool)

(assert (=> b!128557 (= e!83931 (isDefined!121 (getValueByKey!167 (toList!862 lt!66204) lt!66210)))))

(assert (= (and d!38877 c!23584) b!128555))

(assert (= (and d!38877 (not c!23584)) b!128556))

(assert (= (and d!38877 (not res!62089)) b!128557))

(declare-fun m!150729 () Bool)

(assert (=> d!38877 m!150729))

(declare-fun m!150731 () Bool)

(assert (=> b!128555 m!150731))

(assert (=> b!128555 m!150451))

(assert (=> b!128555 m!150451))

(declare-fun m!150733 () Bool)

(assert (=> b!128555 m!150733))

(assert (=> b!128557 m!150451))

(assert (=> b!128557 m!150451))

(assert (=> b!128557 m!150733))

(assert (=> d!38779 d!38877))

(declare-fun d!38879 () Bool)

(declare-fun e!83932 () Bool)

(assert (=> d!38879 e!83932))

(declare-fun res!62090 () Bool)

(assert (=> d!38879 (=> (not res!62090) (not e!83932))))

(declare-fun lt!66680 () ListLongMap!1693)

(assert (=> d!38879 (= res!62090 (contains!882 lt!66680 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun lt!66681 () List!1724)

(assert (=> d!38879 (= lt!66680 (ListLongMap!1694 lt!66681))))

(declare-fun lt!66682 () Unit!3998)

(declare-fun lt!66683 () Unit!3998)

(assert (=> d!38879 (= lt!66682 lt!66683)))

(assert (=> d!38879 (= (getValueByKey!167 lt!66681 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38879 (= lt!66683 (lemmaContainsTupThenGetReturnValue!84 lt!66681 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38879 (= lt!66681 (insertStrictlySorted!86 (toList!862 call!13891) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38879 (= (+!166 call!13891 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) lt!66680)))

(declare-fun b!128558 () Bool)

(declare-fun res!62091 () Bool)

(assert (=> b!128558 (=> (not res!62091) (not e!83932))))

(assert (=> b!128558 (= res!62091 (= (getValueByKey!167 (toList!862 lt!66680) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(declare-fun b!128559 () Bool)

(assert (=> b!128559 (= e!83932 (contains!884 (toList!862 lt!66680) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(assert (= (and d!38879 res!62090) b!128558))

(assert (= (and b!128558 res!62091) b!128559))

(declare-fun m!150735 () Bool)

(assert (=> d!38879 m!150735))

(declare-fun m!150737 () Bool)

(assert (=> d!38879 m!150737))

(declare-fun m!150739 () Bool)

(assert (=> d!38879 m!150739))

(declare-fun m!150741 () Bool)

(assert (=> d!38879 m!150741))

(declare-fun m!150743 () Bool)

(assert (=> b!128558 m!150743))

(declare-fun m!150745 () Bool)

(assert (=> b!128559 m!150745))

(assert (=> b!128372 d!38879))

(declare-fun d!38881 () Bool)

(assert (=> d!38881 (= (validMask!0 (mask!7073 newMap!16)) (and (or (= (mask!7073 newMap!16) #b00000000000000000000000000000111) (= (mask!7073 newMap!16) #b00000000000000000000000000001111) (= (mask!7073 newMap!16) #b00000000000000000000000000011111) (= (mask!7073 newMap!16) #b00000000000000000000000000111111) (= (mask!7073 newMap!16) #b00000000000000000000000001111111) (= (mask!7073 newMap!16) #b00000000000000000000000011111111) (= (mask!7073 newMap!16) #b00000000000000000000000111111111) (= (mask!7073 newMap!16) #b00000000000000000000001111111111) (= (mask!7073 newMap!16) #b00000000000000000000011111111111) (= (mask!7073 newMap!16) #b00000000000000000000111111111111) (= (mask!7073 newMap!16) #b00000000000000000001111111111111) (= (mask!7073 newMap!16) #b00000000000000000011111111111111) (= (mask!7073 newMap!16) #b00000000000000000111111111111111) (= (mask!7073 newMap!16) #b00000000000000001111111111111111) (= (mask!7073 newMap!16) #b00000000000000011111111111111111) (= (mask!7073 newMap!16) #b00000000000000111111111111111111) (= (mask!7073 newMap!16) #b00000000000001111111111111111111) (= (mask!7073 newMap!16) #b00000000000011111111111111111111) (= (mask!7073 newMap!16) #b00000000000111111111111111111111) (= (mask!7073 newMap!16) #b00000000001111111111111111111111) (= (mask!7073 newMap!16) #b00000000011111111111111111111111) (= (mask!7073 newMap!16) #b00000000111111111111111111111111) (= (mask!7073 newMap!16) #b00000001111111111111111111111111) (= (mask!7073 newMap!16) #b00000011111111111111111111111111) (= (mask!7073 newMap!16) #b00000111111111111111111111111111) (= (mask!7073 newMap!16) #b00001111111111111111111111111111) (= (mask!7073 newMap!16) #b00011111111111111111111111111111) (= (mask!7073 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!7073 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!38731 d!38881))

(declare-fun b!128563 () Bool)

(declare-fun e!83934 () Option!173)

(assert (=> b!128563 (= e!83934 None!171)))

(declare-fun b!128562 () Bool)

(assert (=> b!128562 (= e!83934 (getValueByKey!167 (t!6115 (toList!862 lt!66382)) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128560 () Bool)

(declare-fun e!83933 () Option!173)

(assert (=> b!128560 (= e!83933 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66382)))))))

(declare-fun c!23585 () Bool)

(declare-fun d!38883 () Bool)

(assert (=> d!38883 (= c!23585 (and ((_ is Cons!1720) (toList!862 lt!66382)) (= (_1!1301 (h!2323 (toList!862 lt!66382))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38883 (= (getValueByKey!167 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!83933)))

(declare-fun b!128561 () Bool)

(assert (=> b!128561 (= e!83933 e!83934)))

(declare-fun c!23586 () Bool)

(assert (=> b!128561 (= c!23586 (and ((_ is Cons!1720) (toList!862 lt!66382)) (not (= (_1!1301 (h!2323 (toList!862 lt!66382))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!38883 c!23585) b!128560))

(assert (= (and d!38883 (not c!23585)) b!128561))

(assert (= (and b!128561 c!23586) b!128562))

(assert (= (and b!128561 (not c!23586)) b!128563))

(declare-fun m!150747 () Bool)

(assert (=> b!128562 m!150747))

(assert (=> b!128246 d!38883))

(assert (=> b!128341 d!38823))

(assert (=> d!38789 d!38795))

(assert (=> d!38789 d!38773))

(assert (=> d!38789 d!38797))

(declare-fun d!38885 () Bool)

(declare-fun e!83936 () Bool)

(assert (=> d!38885 e!83936))

(declare-fun res!62092 () Bool)

(assert (=> d!38885 (=> res!62092 e!83936)))

(declare-fun lt!66686 () Bool)

(assert (=> d!38885 (= res!62092 (not lt!66686))))

(declare-fun lt!66685 () Bool)

(assert (=> d!38885 (= lt!66686 lt!66685)))

(declare-fun lt!66687 () Unit!3998)

(declare-fun e!83935 () Unit!3998)

(assert (=> d!38885 (= lt!66687 e!83935)))

(declare-fun c!23587 () Bool)

(assert (=> d!38885 (= c!23587 lt!66685)))

(assert (=> d!38885 (= lt!66685 (containsKey!171 (toList!862 lt!66203) lt!66212))))

(assert (=> d!38885 (= (contains!882 lt!66203 lt!66212) lt!66686)))

(declare-fun b!128564 () Bool)

(declare-fun lt!66684 () Unit!3998)

(assert (=> b!128564 (= e!83935 lt!66684)))

(assert (=> b!128564 (= lt!66684 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66203) lt!66212))))

(assert (=> b!128564 (isDefined!121 (getValueByKey!167 (toList!862 lt!66203) lt!66212))))

(declare-fun b!128565 () Bool)

(declare-fun Unit!4023 () Unit!3998)

(assert (=> b!128565 (= e!83935 Unit!4023)))

(declare-fun b!128566 () Bool)

(assert (=> b!128566 (= e!83936 (isDefined!121 (getValueByKey!167 (toList!862 lt!66203) lt!66212)))))

(assert (= (and d!38885 c!23587) b!128564))

(assert (= (and d!38885 (not c!23587)) b!128565))

(assert (= (and d!38885 (not res!62092)) b!128566))

(declare-fun m!150749 () Bool)

(assert (=> d!38885 m!150749))

(declare-fun m!150751 () Bool)

(assert (=> b!128564 m!150751))

(assert (=> b!128564 m!150431))

(assert (=> b!128564 m!150431))

(declare-fun m!150753 () Bool)

(assert (=> b!128564 m!150753))

(assert (=> b!128566 m!150431))

(assert (=> b!128566 m!150431))

(assert (=> b!128566 m!150753))

(assert (=> d!38789 d!38885))

(declare-fun d!38887 () Bool)

(assert (=> d!38887 (= (apply!112 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66212) (apply!112 lt!66203 lt!66212))))

(assert (=> d!38887 true))

(declare-fun _$34!956 () Unit!3998)

(assert (=> d!38887 (= (choose!787 lt!66203 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66212) _$34!956)))

(declare-fun bs!5330 () Bool)

(assert (= bs!5330 d!38887))

(assert (=> bs!5330 m!149855))

(assert (=> bs!5330 m!149855))

(assert (=> bs!5330 m!149857))

(assert (=> bs!5330 m!149871))

(assert (=> d!38789 d!38887))

(declare-fun d!38889 () Bool)

(assert (=> d!38889 (= (get!1466 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (v!3147 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!38739 d!38889))

(declare-fun b!128570 () Bool)

(declare-fun e!83938 () Option!173)

(assert (=> b!128570 (= e!83938 None!171)))

(declare-fun b!128569 () Bool)

(assert (=> b!128569 (= e!83938 (getValueByKey!167 (t!6115 (toList!862 lt!66213)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!128567 () Bool)

(declare-fun e!83937 () Option!173)

(assert (=> b!128567 (= e!83937 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66213)))))))

(declare-fun d!38891 () Bool)

(declare-fun c!23588 () Bool)

(assert (=> d!38891 (= c!23588 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!38891 (= (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!83937)))

(declare-fun b!128568 () Bool)

(assert (=> b!128568 (= e!83937 e!83938)))

(declare-fun c!23589 () Bool)

(assert (=> b!128568 (= c!23589 (and ((_ is Cons!1720) (toList!862 lt!66213)) (not (= (_1!1301 (h!2323 (toList!862 lt!66213))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(assert (= (and d!38891 c!23588) b!128567))

(assert (= (and d!38891 (not c!23588)) b!128568))

(assert (= (and b!128568 c!23589) b!128569))

(assert (= (and b!128568 (not c!23589)) b!128570))

(assert (=> b!128569 m!149865))

(declare-fun m!150755 () Bool)

(assert (=> b!128569 m!150755))

(assert (=> d!38739 d!38891))

(declare-fun d!38893 () Bool)

(declare-fun e!83939 () Bool)

(assert (=> d!38893 e!83939))

(declare-fun res!62093 () Bool)

(assert (=> d!38893 (=> (not res!62093) (not e!83939))))

(declare-fun lt!66688 () ListLongMap!1693)

(assert (=> d!38893 (= res!62093 (contains!882 lt!66688 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun lt!66689 () List!1724)

(assert (=> d!38893 (= lt!66688 (ListLongMap!1694 lt!66689))))

(declare-fun lt!66690 () Unit!3998)

(declare-fun lt!66691 () Unit!3998)

(assert (=> d!38893 (= lt!66690 lt!66691)))

(assert (=> d!38893 (= (getValueByKey!167 lt!66689 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38893 (= lt!66691 (lemmaContainsTupThenGetReturnValue!84 lt!66689 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38893 (= lt!66689 (insertStrictlySorted!86 (toList!862 call!13863) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (=> d!38893 (= (+!166 call!13863 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))) lt!66688)))

(declare-fun b!128571 () Bool)

(declare-fun res!62094 () Bool)

(assert (=> b!128571 (=> (not res!62094) (not e!83939))))

(assert (=> b!128571 (= res!62094 (= (getValueByKey!167 (toList!862 lt!66688) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(declare-fun b!128572 () Bool)

(assert (=> b!128572 (= e!83939 (contains!884 (toList!862 lt!66688) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(assert (= (and d!38893 res!62093) b!128571))

(assert (= (and b!128571 res!62094) b!128572))

(declare-fun m!150757 () Bool)

(assert (=> d!38893 m!150757))

(declare-fun m!150759 () Bool)

(assert (=> d!38893 m!150759))

(declare-fun m!150761 () Bool)

(assert (=> d!38893 m!150761))

(declare-fun m!150763 () Bool)

(assert (=> d!38893 m!150763))

(declare-fun m!150765 () Bool)

(assert (=> b!128571 m!150765))

(declare-fun m!150767 () Bool)

(assert (=> b!128572 m!150767))

(assert (=> b!128214 d!38893))

(declare-fun b!128573 () Bool)

(declare-fun e!83941 () Bool)

(declare-fun e!83942 () Bool)

(assert (=> b!128573 (= e!83941 e!83942)))

(declare-fun c!23590 () Bool)

(assert (=> b!128573 (= c!23590 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!128574 () Bool)

(declare-fun e!83940 () Bool)

(assert (=> b!128574 (= e!83942 e!83940)))

(declare-fun lt!66693 () (_ BitVec 64))

(assert (=> b!128574 (= lt!66693 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!66692 () Unit!3998)

(assert (=> b!128574 (= lt!66692 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) lt!66693 #b00000000000000000000000000000000))))

(assert (=> b!128574 (arrayContainsKey!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) lt!66693 #b00000000000000000000000000000000)))

(declare-fun lt!66694 () Unit!3998)

(assert (=> b!128574 (= lt!66694 lt!66692)))

(declare-fun res!62095 () Bool)

(assert (=> b!128574 (= res!62095 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000) (_keys!4542 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992)))) (Found!281 #b00000000000000000000000000000000)))))

(assert (=> b!128574 (=> (not res!62095) (not e!83940))))

(declare-fun b!128575 () Bool)

(declare-fun call!13918 () Bool)

(assert (=> b!128575 (= e!83940 call!13918)))

(declare-fun b!128576 () Bool)

(assert (=> b!128576 (= e!83942 call!13918)))

(declare-fun bm!13915 () Bool)

(assert (=> bm!13915 (= call!13918 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4542 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun d!38895 () Bool)

(declare-fun res!62096 () Bool)

(assert (=> d!38895 (=> res!62096 e!83941)))

(assert (=> d!38895 (= res!62096 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!38895 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992)))) e!83941)))

(assert (= (and d!38895 (not res!62096)) b!128573))

(assert (= (and b!128573 c!23590) b!128574))

(assert (= (and b!128573 (not c!23590)) b!128576))

(assert (= (and b!128574 res!62095) b!128575))

(assert (= (or b!128575 b!128576) bm!13915))

(declare-fun m!150769 () Bool)

(assert (=> b!128573 m!150769))

(assert (=> b!128573 m!150769))

(declare-fun m!150771 () Bool)

(assert (=> b!128573 m!150771))

(assert (=> b!128574 m!150769))

(declare-fun m!150773 () Bool)

(assert (=> b!128574 m!150773))

(declare-fun m!150775 () Bool)

(assert (=> b!128574 m!150775))

(assert (=> b!128574 m!150769))

(declare-fun m!150777 () Bool)

(assert (=> b!128574 m!150777))

(declare-fun m!150779 () Bool)

(assert (=> bm!13915 m!150779))

(assert (=> b!128175 d!38895))

(assert (=> d!38803 d!38785))

(assert (=> d!38803 d!38787))

(declare-fun d!38897 () Bool)

(assert (=> d!38897 (contains!882 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66206)))

(assert (=> d!38897 true))

(declare-fun _$35!374 () Unit!3998)

(assert (=> d!38897 (= (choose!788 lt!66207 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66206) _$35!374)))

(declare-fun bs!5331 () Bool)

(assert (= bs!5331 d!38897))

(assert (=> bs!5331 m!149867))

(assert (=> bs!5331 m!149867))

(assert (=> bs!5331 m!149869))

(assert (=> d!38803 d!38897))

(declare-fun d!38899 () Bool)

(declare-fun e!83944 () Bool)

(assert (=> d!38899 e!83944))

(declare-fun res!62097 () Bool)

(assert (=> d!38899 (=> res!62097 e!83944)))

(declare-fun lt!66697 () Bool)

(assert (=> d!38899 (= res!62097 (not lt!66697))))

(declare-fun lt!66696 () Bool)

(assert (=> d!38899 (= lt!66697 lt!66696)))

(declare-fun lt!66698 () Unit!3998)

(declare-fun e!83943 () Unit!3998)

(assert (=> d!38899 (= lt!66698 e!83943)))

(declare-fun c!23591 () Bool)

(assert (=> d!38899 (= c!23591 lt!66696)))

(assert (=> d!38899 (= lt!66696 (containsKey!171 (toList!862 lt!66207) lt!66206))))

(assert (=> d!38899 (= (contains!882 lt!66207 lt!66206) lt!66697)))

(declare-fun b!128578 () Bool)

(declare-fun lt!66695 () Unit!3998)

(assert (=> b!128578 (= e!83943 lt!66695)))

(assert (=> b!128578 (= lt!66695 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66207) lt!66206))))

(assert (=> b!128578 (isDefined!121 (getValueByKey!167 (toList!862 lt!66207) lt!66206))))

(declare-fun b!128579 () Bool)

(declare-fun Unit!4024 () Unit!3998)

(assert (=> b!128579 (= e!83943 Unit!4024)))

(declare-fun b!128580 () Bool)

(assert (=> b!128580 (= e!83944 (isDefined!121 (getValueByKey!167 (toList!862 lt!66207) lt!66206)))))

(assert (= (and d!38899 c!23591) b!128578))

(assert (= (and d!38899 (not c!23591)) b!128579))

(assert (= (and d!38899 (not res!62097)) b!128580))

(declare-fun m!150781 () Bool)

(assert (=> d!38899 m!150781))

(declare-fun m!150783 () Bool)

(assert (=> b!128578 m!150783))

(declare-fun m!150785 () Bool)

(assert (=> b!128578 m!150785))

(assert (=> b!128578 m!150785))

(declare-fun m!150787 () Bool)

(assert (=> b!128578 m!150787))

(assert (=> b!128580 m!150785))

(assert (=> b!128580 m!150785))

(assert (=> b!128580 m!150787))

(assert (=> d!38803 d!38899))

(declare-fun d!38901 () Bool)

(declare-fun e!83946 () Bool)

(assert (=> d!38901 e!83946))

(declare-fun res!62098 () Bool)

(assert (=> d!38901 (=> res!62098 e!83946)))

(declare-fun lt!66701 () Bool)

(assert (=> d!38901 (= res!62098 (not lt!66701))))

(declare-fun lt!66700 () Bool)

(assert (=> d!38901 (= lt!66701 lt!66700)))

(declare-fun lt!66702 () Unit!3998)

(declare-fun e!83945 () Unit!3998)

(assert (=> d!38901 (= lt!66702 e!83945)))

(declare-fun c!23592 () Bool)

(assert (=> d!38901 (= c!23592 lt!66700)))

(assert (=> d!38901 (= lt!66700 (containsKey!171 (toList!862 lt!66378) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!38901 (= (contains!882 lt!66378 #b0000000000000000000000000000000000000000000000000000000000000000) lt!66701)))

(declare-fun b!128581 () Bool)

(declare-fun lt!66699 () Unit!3998)

(assert (=> b!128581 (= e!83945 lt!66699)))

(assert (=> b!128581 (= lt!66699 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66378) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128581 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128582 () Bool)

(declare-fun Unit!4025 () Unit!3998)

(assert (=> b!128582 (= e!83945 Unit!4025)))

(declare-fun b!128583 () Bool)

(assert (=> b!128583 (= e!83946 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38901 c!23592) b!128581))

(assert (= (and d!38901 (not c!23592)) b!128582))

(assert (= (and d!38901 (not res!62098)) b!128583))

(declare-fun m!150789 () Bool)

(assert (=> d!38901 m!150789))

(declare-fun m!150791 () Bool)

(assert (=> b!128581 m!150791))

(declare-fun m!150793 () Bool)

(assert (=> b!128581 m!150793))

(assert (=> b!128581 m!150793))

(declare-fun m!150795 () Bool)

(assert (=> b!128581 m!150795))

(assert (=> b!128583 m!150793))

(assert (=> b!128583 m!150793))

(assert (=> b!128583 m!150795))

(assert (=> bm!13861 d!38901))

(declare-fun d!38903 () Bool)

(assert (=> d!38903 (= (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!404 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5332 () Bool)

(assert (= bs!5332 d!38903))

(assert (=> bs!5332 m!150155))

(declare-fun m!150797 () Bool)

(assert (=> bs!5332 m!150797))

(assert (=> b!128250 d!38903))

(declare-fun b!128587 () Bool)

(declare-fun e!83948 () Option!173)

(assert (=> b!128587 (= e!83948 None!171)))

(declare-fun b!128586 () Bool)

(assert (=> b!128586 (= e!83948 (getValueByKey!167 (t!6115 (toList!862 lt!66213)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128584 () Bool)

(declare-fun e!83947 () Option!173)

(assert (=> b!128584 (= e!83947 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66213)))))))

(declare-fun d!38905 () Bool)

(declare-fun c!23593 () Bool)

(assert (=> d!38905 (= c!23593 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!38905 (= (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000) e!83947)))

(declare-fun b!128585 () Bool)

(assert (=> b!128585 (= e!83947 e!83948)))

(declare-fun c!23594 () Bool)

(assert (=> b!128585 (= c!23594 (and ((_ is Cons!1720) (toList!862 lt!66213)) (not (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!38905 c!23593) b!128584))

(assert (= (and d!38905 (not c!23593)) b!128585))

(assert (= (and b!128585 c!23594) b!128586))

(assert (= (and b!128585 (not c!23594)) b!128587))

(declare-fun m!150799 () Bool)

(assert (=> b!128586 m!150799))

(assert (=> b!128250 d!38905))

(declare-fun d!38907 () Bool)

(declare-fun e!83950 () Bool)

(assert (=> d!38907 e!83950))

(declare-fun res!62099 () Bool)

(assert (=> d!38907 (=> res!62099 e!83950)))

(declare-fun lt!66705 () Bool)

(assert (=> d!38907 (= res!62099 (not lt!66705))))

(declare-fun lt!66704 () Bool)

(assert (=> d!38907 (= lt!66705 lt!66704)))

(declare-fun lt!66706 () Unit!3998)

(declare-fun e!83949 () Unit!3998)

(assert (=> d!38907 (= lt!66706 e!83949)))

(declare-fun c!23595 () Bool)

(assert (=> d!38907 (= c!23595 lt!66704)))

(assert (=> d!38907 (= lt!66704 (containsKey!171 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!38907 (= (contains!882 lt!66576 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66705)))

(declare-fun b!128588 () Bool)

(declare-fun lt!66703 () Unit!3998)

(assert (=> b!128588 (= e!83949 lt!66703)))

(assert (=> b!128588 (= lt!66703 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> b!128588 (isDefined!121 (getValueByKey!167 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128589 () Bool)

(declare-fun Unit!4026 () Unit!3998)

(assert (=> b!128589 (= e!83949 Unit!4026)))

(declare-fun b!128590 () Bool)

(assert (=> b!128590 (= e!83950 (isDefined!121 (getValueByKey!167 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38907 c!23595) b!128588))

(assert (= (and d!38907 (not c!23595)) b!128589))

(assert (= (and d!38907 (not res!62099)) b!128590))

(declare-fun m!150801 () Bool)

(assert (=> d!38907 m!150801))

(declare-fun m!150803 () Bool)

(assert (=> b!128588 m!150803))

(assert (=> b!128588 m!150443))

(assert (=> b!128588 m!150443))

(declare-fun m!150805 () Bool)

(assert (=> b!128588 m!150805))

(assert (=> b!128590 m!150443))

(assert (=> b!128590 m!150443))

(assert (=> b!128590 m!150805))

(assert (=> d!38797 d!38907))

(declare-fun b!128594 () Bool)

(declare-fun e!83952 () Option!173)

(assert (=> b!128594 (= e!83952 None!171)))

(declare-fun b!128593 () Bool)

(assert (=> b!128593 (= e!83952 (getValueByKey!167 (t!6115 lt!66577) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128591 () Bool)

(declare-fun e!83951 () Option!173)

(assert (=> b!128591 (= e!83951 (Some!172 (_2!1301 (h!2323 lt!66577))))))

(declare-fun d!38909 () Bool)

(declare-fun c!23596 () Bool)

(assert (=> d!38909 (= c!23596 (and ((_ is Cons!1720) lt!66577) (= (_1!1301 (h!2323 lt!66577)) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38909 (= (getValueByKey!167 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!83951)))

(declare-fun b!128592 () Bool)

(assert (=> b!128592 (= e!83951 e!83952)))

(declare-fun c!23597 () Bool)

(assert (=> b!128592 (= c!23597 (and ((_ is Cons!1720) lt!66577) (not (= (_1!1301 (h!2323 lt!66577)) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!38909 c!23596) b!128591))

(assert (= (and d!38909 (not c!23596)) b!128592))

(assert (= (and b!128592 c!23597) b!128593))

(assert (= (and b!128592 (not c!23597)) b!128594))

(declare-fun m!150807 () Bool)

(assert (=> b!128593 m!150807))

(assert (=> d!38797 d!38909))

(declare-fun d!38911 () Bool)

(assert (=> d!38911 (= (getValueByKey!167 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66707 () Unit!3998)

(assert (=> d!38911 (= lt!66707 (choose!792 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!83953 () Bool)

(assert (=> d!38911 e!83953))

(declare-fun res!62100 () Bool)

(assert (=> d!38911 (=> (not res!62100) (not e!83953))))

(assert (=> d!38911 (= res!62100 (isStrictlySorted!313 lt!66577))))

(assert (=> d!38911 (= (lemmaContainsTupThenGetReturnValue!84 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66707)))

(declare-fun b!128595 () Bool)

(declare-fun res!62101 () Bool)

(assert (=> b!128595 (=> (not res!62101) (not e!83953))))

(assert (=> b!128595 (= res!62101 (containsKey!171 lt!66577 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128596 () Bool)

(assert (=> b!128596 (= e!83953 (contains!884 lt!66577 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38911 res!62100) b!128595))

(assert (= (and b!128595 res!62101) b!128596))

(assert (=> d!38911 m!150437))

(declare-fun m!150809 () Bool)

(assert (=> d!38911 m!150809))

(declare-fun m!150811 () Bool)

(assert (=> d!38911 m!150811))

(declare-fun m!150813 () Bool)

(assert (=> b!128595 m!150813))

(declare-fun m!150815 () Bool)

(assert (=> b!128596 m!150815))

(assert (=> d!38797 d!38911))

(declare-fun c!23601 () Bool)

(declare-fun b!128597 () Bool)

(assert (=> b!128597 (= c!23601 (and ((_ is Cons!1720) (toList!862 lt!66203)) (bvsgt (_1!1301 (h!2323 (toList!862 lt!66203))) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!83955 () List!1724)

(declare-fun e!83954 () List!1724)

(assert (=> b!128597 (= e!83955 e!83954)))

(declare-fun d!38913 () Bool)

(declare-fun e!83956 () Bool)

(assert (=> d!38913 e!83956))

(declare-fun res!62103 () Bool)

(assert (=> d!38913 (=> (not res!62103) (not e!83956))))

(declare-fun lt!66708 () List!1724)

(assert (=> d!38913 (= res!62103 (isStrictlySorted!313 lt!66708))))

(declare-fun e!83957 () List!1724)

(assert (=> d!38913 (= lt!66708 e!83957)))

(declare-fun c!23600 () Bool)

(assert (=> d!38913 (= c!23600 (and ((_ is Cons!1720) (toList!862 lt!66203)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66203))) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38913 (isStrictlySorted!313 (toList!862 lt!66203))))

(assert (=> d!38913 (= (insertStrictlySorted!86 (toList!862 lt!66203) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66708)))

(declare-fun b!128598 () Bool)

(declare-fun call!13921 () List!1724)

(assert (=> b!128598 (= e!83954 call!13921)))

(declare-fun b!128599 () Bool)

(declare-fun call!13919 () List!1724)

(assert (=> b!128599 (= e!83957 call!13919)))

(declare-fun c!23598 () Bool)

(declare-fun b!128600 () Bool)

(declare-fun e!83958 () List!1724)

(assert (=> b!128600 (= e!83958 (ite c!23598 (t!6115 (toList!862 lt!66203)) (ite c!23601 (Cons!1720 (h!2323 (toList!862 lt!66203)) (t!6115 (toList!862 lt!66203))) Nil!1721)))))

(declare-fun b!128601 () Bool)

(assert (=> b!128601 (= e!83954 call!13921)))

(declare-fun b!128602 () Bool)

(assert (=> b!128602 (= e!83956 (contains!884 lt!66708 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!128603 () Bool)

(declare-fun res!62102 () Bool)

(assert (=> b!128603 (=> (not res!62102) (not e!83956))))

(assert (=> b!128603 (= res!62102 (containsKey!171 lt!66708 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13916 () Bool)

(assert (=> bm!13916 (= call!13919 ($colon$colon!89 e!83958 (ite c!23600 (h!2323 (toList!862 lt!66203)) (tuple2!2583 (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun c!23599 () Bool)

(assert (=> bm!13916 (= c!23599 c!23600)))

(declare-fun b!128604 () Bool)

(declare-fun call!13920 () List!1724)

(assert (=> b!128604 (= e!83955 call!13920)))

(declare-fun b!128605 () Bool)

(assert (=> b!128605 (= e!83958 (insertStrictlySorted!86 (t!6115 (toList!862 lt!66203)) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13917 () Bool)

(assert (=> bm!13917 (= call!13921 call!13920)))

(declare-fun bm!13918 () Bool)

(assert (=> bm!13918 (= call!13920 call!13919)))

(declare-fun b!128606 () Bool)

(assert (=> b!128606 (= e!83957 e!83955)))

(assert (=> b!128606 (= c!23598 (and ((_ is Cons!1720) (toList!862 lt!66203)) (= (_1!1301 (h!2323 (toList!862 lt!66203))) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!38913 c!23600) b!128599))

(assert (= (and d!38913 (not c!23600)) b!128606))

(assert (= (and b!128606 c!23598) b!128604))

(assert (= (and b!128606 (not c!23598)) b!128597))

(assert (= (and b!128597 c!23601) b!128598))

(assert (= (and b!128597 (not c!23601)) b!128601))

(assert (= (or b!128598 b!128601) bm!13917))

(assert (= (or b!128604 bm!13917) bm!13918))

(assert (= (or b!128599 bm!13918) bm!13916))

(assert (= (and bm!13916 c!23599) b!128605))

(assert (= (and bm!13916 (not c!23599)) b!128600))

(assert (= (and d!38913 res!62103) b!128603))

(assert (= (and b!128603 res!62102) b!128602))

(declare-fun m!150817 () Bool)

(assert (=> b!128602 m!150817))

(declare-fun m!150819 () Bool)

(assert (=> d!38913 m!150819))

(declare-fun m!150821 () Bool)

(assert (=> d!38913 m!150821))

(declare-fun m!150823 () Bool)

(assert (=> b!128603 m!150823))

(declare-fun m!150825 () Bool)

(assert (=> bm!13916 m!150825))

(declare-fun m!150827 () Bool)

(assert (=> b!128605 m!150827))

(assert (=> d!38797 d!38913))

(declare-fun b!128625 () Bool)

(declare-fun e!83971 () Bool)

(declare-fun lt!66714 () SeekEntryResult!281)

(assert (=> b!128625 (= e!83971 (bvsge (x!15132 lt!66714) #b01111111111111111111111111111110))))

(declare-fun d!38915 () Bool)

(assert (=> d!38915 e!83971))

(declare-fun c!23609 () Bool)

(assert (=> d!38915 (= c!23609 (and ((_ is Intermediate!281) lt!66714) (undefined!1093 lt!66714)))))

(declare-fun e!83972 () SeekEntryResult!281)

(assert (=> d!38915 (= lt!66714 e!83972)))

(declare-fun c!23608 () Bool)

(assert (=> d!38915 (= c!23608 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!66713 () (_ BitVec 64))

(assert (=> d!38915 (= lt!66713 (select (arr!2236 (_keys!4542 newMap!16)) (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16))))))

(assert (=> d!38915 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38915 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)) lt!66714)))

(declare-fun b!128626 () Bool)

(assert (=> b!128626 (= e!83972 (Intermediate!281 true (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun b!128627 () Bool)

(assert (=> b!128627 (and (bvsge (index!3282 lt!66714) #b00000000000000000000000000000000) (bvslt (index!3282 lt!66714) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!62111 () Bool)

(assert (=> b!128627 (= res!62111 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66714)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun e!83969 () Bool)

(assert (=> b!128627 (=> res!62111 e!83969)))

(declare-fun e!83973 () Bool)

(assert (=> b!128627 (= e!83973 e!83969)))

(declare-fun b!128628 () Bool)

(assert (=> b!128628 (and (bvsge (index!3282 lt!66714) #b00000000000000000000000000000000) (bvslt (index!3282 lt!66714) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> b!128628 (= e!83969 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66714)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128629 () Bool)

(declare-fun e!83970 () SeekEntryResult!281)

(assert (=> b!128629 (= e!83972 e!83970)))

(declare-fun c!23610 () Bool)

(assert (=> b!128629 (= c!23610 (or (= lt!66713 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (= (bvadd lt!66713 lt!66713) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128630 () Bool)

(assert (=> b!128630 (= e!83971 e!83973)))

(declare-fun res!62112 () Bool)

(assert (=> b!128630 (= res!62112 (and ((_ is Intermediate!281) lt!66714) (not (undefined!1093 lt!66714)) (bvslt (x!15132 lt!66714) #b01111111111111111111111111111110) (bvsge (x!15132 lt!66714) #b00000000000000000000000000000000) (bvsge (x!15132 lt!66714) #b00000000000000000000000000000000)))))

(assert (=> b!128630 (=> (not res!62112) (not e!83973))))

(declare-fun b!128631 () Bool)

(assert (=> b!128631 (and (bvsge (index!3282 lt!66714) #b00000000000000000000000000000000) (bvslt (index!3282 lt!66714) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!62110 () Bool)

(assert (=> b!128631 (= res!62110 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66714)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128631 (=> res!62110 e!83969)))

(declare-fun b!128632 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!128632 (= e!83970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) #b00000000000000000000000000000000 (mask!7073 newMap!16)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun b!128633 () Bool)

(assert (=> b!128633 (= e!83970 (Intermediate!281 false (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) #b00000000000000000000000000000000))))

(assert (= (and d!38915 c!23608) b!128626))

(assert (= (and d!38915 (not c!23608)) b!128629))

(assert (= (and b!128629 c!23610) b!128633))

(assert (= (and b!128629 (not c!23610)) b!128632))

(assert (= (and d!38915 c!23609) b!128625))

(assert (= (and d!38915 (not c!23609)) b!128630))

(assert (= (and b!128630 res!62112) b!128627))

(assert (= (and b!128627 (not res!62111)) b!128631))

(assert (= (and b!128631 (not res!62110)) b!128628))

(declare-fun m!150829 () Bool)

(assert (=> b!128631 m!150829))

(assert (=> d!38915 m!150009))

(declare-fun m!150831 () Bool)

(assert (=> d!38915 m!150831))

(assert (=> d!38915 m!150007))

(assert (=> b!128627 m!150829))

(assert (=> b!128632 m!150009))

(declare-fun m!150833 () Bool)

(assert (=> b!128632 m!150833))

(assert (=> b!128632 m!150833))

(assert (=> b!128632 m!149785))

(declare-fun m!150835 () Bool)

(assert (=> b!128632 m!150835))

(assert (=> b!128628 m!150829))

(assert (=> d!38701 d!38915))

(declare-fun d!38917 () Bool)

(declare-fun lt!66720 () (_ BitVec 32))

(declare-fun lt!66719 () (_ BitVec 32))

(assert (=> d!38917 (= lt!66720 (bvmul (bvxor lt!66719 (bvlshr lt!66719 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!38917 (= lt!66719 ((_ extract 31 0) (bvand (bvxor (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvlshr (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!38917 (and (bvsge (mask!7073 newMap!16) #b00000000000000000000000000000000) (let ((res!62113 (let ((h!2326 ((_ extract 31 0) (bvand (bvxor (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvlshr (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!15235 (bvmul (bvxor h!2326 (bvlshr h!2326 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!15235 (bvlshr x!15235 #b00000000000000000000000000001101)) (mask!7073 newMap!16)))))) (and (bvslt res!62113 (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001)) (bvsge res!62113 #b00000000000000000000000000000000))))))

(assert (=> d!38917 (= (toIndex!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (mask!7073 newMap!16)) (bvand (bvxor lt!66720 (bvlshr lt!66720 #b00000000000000000000000000001101)) (mask!7073 newMap!16)))))

(assert (=> d!38701 d!38917))

(assert (=> d!38701 d!38881))

(declare-fun lt!66723 () Bool)

(declare-fun d!38919 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!126 (List!1724) (InoxSet tuple2!2582))

(assert (=> d!38919 (= lt!66723 (select (content!126 (toList!862 lt!66572)) (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!83979 () Bool)

(assert (=> d!38919 (= lt!66723 e!83979)))

(declare-fun res!62118 () Bool)

(assert (=> d!38919 (=> (not res!62118) (not e!83979))))

(assert (=> d!38919 (= res!62118 ((_ is Cons!1720) (toList!862 lt!66572)))))

(assert (=> d!38919 (= (contains!884 (toList!862 lt!66572) (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66723)))

(declare-fun b!128638 () Bool)

(declare-fun e!83978 () Bool)

(assert (=> b!128638 (= e!83979 e!83978)))

(declare-fun res!62119 () Bool)

(assert (=> b!128638 (=> res!62119 e!83978)))

(assert (=> b!128638 (= res!62119 (= (h!2323 (toList!862 lt!66572)) (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128639 () Bool)

(assert (=> b!128639 (= e!83978 (contains!884 (t!6115 (toList!862 lt!66572)) (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!38919 res!62118) b!128638))

(assert (= (and b!128638 (not res!62119)) b!128639))

(declare-fun m!150837 () Bool)

(assert (=> d!38919 m!150837))

(declare-fun m!150839 () Bool)

(assert (=> d!38919 m!150839))

(declare-fun m!150841 () Bool)

(assert (=> b!128639 m!150841))

(assert (=> b!128430 d!38919))

(declare-fun d!38921 () Bool)

(declare-fun e!83981 () Bool)

(assert (=> d!38921 e!83981))

(declare-fun res!62120 () Bool)

(assert (=> d!38921 (=> res!62120 e!83981)))

(declare-fun lt!66726 () Bool)

(assert (=> d!38921 (= res!62120 (not lt!66726))))

(declare-fun lt!66725 () Bool)

(assert (=> d!38921 (= lt!66726 lt!66725)))

(declare-fun lt!66727 () Unit!3998)

(declare-fun e!83980 () Unit!3998)

(assert (=> d!38921 (= lt!66727 e!83980)))

(declare-fun c!23611 () Bool)

(assert (=> d!38921 (= c!23611 lt!66725)))

(assert (=> d!38921 (= lt!66725 (containsKey!171 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38921 (= (contains!882 lt!66382 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!66726)))

(declare-fun b!128640 () Bool)

(declare-fun lt!66724 () Unit!3998)

(assert (=> b!128640 (= e!83980 lt!66724)))

(assert (=> b!128640 (= lt!66724 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!128640 (isDefined!121 (getValueByKey!167 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128641 () Bool)

(declare-fun Unit!4027 () Unit!3998)

(assert (=> b!128641 (= e!83980 Unit!4027)))

(declare-fun b!128642 () Bool)

(assert (=> b!128642 (= e!83981 (isDefined!121 (getValueByKey!167 (toList!862 lt!66382) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!38921 c!23611) b!128640))

(assert (= (and d!38921 (not c!23611)) b!128641))

(assert (= (and d!38921 (not res!62120)) b!128642))

(declare-fun m!150843 () Bool)

(assert (=> d!38921 m!150843))

(declare-fun m!150845 () Bool)

(assert (=> b!128640 m!150845))

(assert (=> b!128640 m!150147))

(assert (=> b!128640 m!150147))

(declare-fun m!150847 () Bool)

(assert (=> b!128640 m!150847))

(assert (=> b!128642 m!150147))

(assert (=> b!128642 m!150147))

(assert (=> b!128642 m!150847))

(assert (=> d!38733 d!38921))

(declare-fun b!128646 () Bool)

(declare-fun e!83983 () Option!173)

(assert (=> b!128646 (= e!83983 None!171)))

(declare-fun b!128645 () Bool)

(assert (=> b!128645 (= e!83983 (getValueByKey!167 (t!6115 lt!66383) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128643 () Bool)

(declare-fun e!83982 () Option!173)

(assert (=> b!128643 (= e!83982 (Some!172 (_2!1301 (h!2323 lt!66383))))))

(declare-fun c!23612 () Bool)

(declare-fun d!38923 () Bool)

(assert (=> d!38923 (= c!23612 (and ((_ is Cons!1720) lt!66383) (= (_1!1301 (h!2323 lt!66383)) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38923 (= (getValueByKey!167 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!83982)))

(declare-fun b!128644 () Bool)

(assert (=> b!128644 (= e!83982 e!83983)))

(declare-fun c!23613 () Bool)

(assert (=> b!128644 (= c!23613 (and ((_ is Cons!1720) lt!66383) (not (= (_1!1301 (h!2323 lt!66383)) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!38923 c!23612) b!128643))

(assert (= (and d!38923 (not c!23612)) b!128644))

(assert (= (and b!128644 c!23613) b!128645))

(assert (= (and b!128644 (not c!23613)) b!128646))

(declare-fun m!150849 () Bool)

(assert (=> b!128645 m!150849))

(assert (=> d!38733 d!38923))

(declare-fun d!38925 () Bool)

(assert (=> d!38925 (= (getValueByKey!167 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66728 () Unit!3998)

(assert (=> d!38925 (= lt!66728 (choose!792 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!83984 () Bool)

(assert (=> d!38925 e!83984))

(declare-fun res!62121 () Bool)

(assert (=> d!38925 (=> (not res!62121) (not e!83984))))

(assert (=> d!38925 (= res!62121 (isStrictlySorted!313 lt!66383))))

(assert (=> d!38925 (= (lemmaContainsTupThenGetReturnValue!84 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!66728)))

(declare-fun b!128647 () Bool)

(declare-fun res!62122 () Bool)

(assert (=> b!128647 (=> (not res!62122) (not e!83984))))

(assert (=> b!128647 (= res!62122 (containsKey!171 lt!66383 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!128648 () Bool)

(assert (=> b!128648 (= e!83984 (contains!884 lt!66383 (tuple2!2583 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!38925 res!62121) b!128647))

(assert (= (and b!128647 res!62122) b!128648))

(assert (=> d!38925 m!150141))

(declare-fun m!150851 () Bool)

(assert (=> d!38925 m!150851))

(declare-fun m!150853 () Bool)

(assert (=> d!38925 m!150853))

(declare-fun m!150855 () Bool)

(assert (=> b!128647 m!150855))

(declare-fun m!150857 () Bool)

(assert (=> b!128648 m!150857))

(assert (=> d!38733 d!38925))

(declare-fun c!23617 () Bool)

(declare-fun b!128649 () Bool)

(assert (=> b!128649 (= c!23617 (and ((_ is Cons!1720) (toList!862 call!13840)) (bvsgt (_1!1301 (h!2323 (toList!862 call!13840))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!83986 () List!1724)

(declare-fun e!83985 () List!1724)

(assert (=> b!128649 (= e!83986 e!83985)))

(declare-fun d!38927 () Bool)

(declare-fun e!83987 () Bool)

(assert (=> d!38927 e!83987))

(declare-fun res!62124 () Bool)

(assert (=> d!38927 (=> (not res!62124) (not e!83987))))

(declare-fun lt!66729 () List!1724)

(assert (=> d!38927 (= res!62124 (isStrictlySorted!313 lt!66729))))

(declare-fun e!83988 () List!1724)

(assert (=> d!38927 (= lt!66729 e!83988)))

(declare-fun c!23616 () Bool)

(assert (=> d!38927 (= c!23616 (and ((_ is Cons!1720) (toList!862 call!13840)) (bvslt (_1!1301 (h!2323 (toList!862 call!13840))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!38927 (isStrictlySorted!313 (toList!862 call!13840))))

(assert (=> d!38927 (= (insertStrictlySorted!86 (toList!862 call!13840) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!66729)))

(declare-fun b!128650 () Bool)

(declare-fun call!13924 () List!1724)

(assert (=> b!128650 (= e!83985 call!13924)))

(declare-fun b!128651 () Bool)

(declare-fun call!13922 () List!1724)

(assert (=> b!128651 (= e!83988 call!13922)))

(declare-fun c!23614 () Bool)

(declare-fun e!83989 () List!1724)

(declare-fun b!128652 () Bool)

(assert (=> b!128652 (= e!83989 (ite c!23614 (t!6115 (toList!862 call!13840)) (ite c!23617 (Cons!1720 (h!2323 (toList!862 call!13840)) (t!6115 (toList!862 call!13840))) Nil!1721)))))

(declare-fun b!128653 () Bool)

(assert (=> b!128653 (= e!83985 call!13924)))

(declare-fun b!128654 () Bool)

(assert (=> b!128654 (= e!83987 (contains!884 lt!66729 (tuple2!2583 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128655 () Bool)

(declare-fun res!62123 () Bool)

(assert (=> b!128655 (=> (not res!62123) (not e!83987))))

(assert (=> b!128655 (= res!62123 (containsKey!171 lt!66729 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!13919 () Bool)

(assert (=> bm!13919 (= call!13922 ($colon$colon!89 e!83989 (ite c!23616 (h!2323 (toList!862 call!13840)) (tuple2!2583 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!23615 () Bool)

(assert (=> bm!13919 (= c!23615 c!23616)))

(declare-fun b!128656 () Bool)

(declare-fun call!13923 () List!1724)

(assert (=> b!128656 (= e!83986 call!13923)))

(declare-fun b!128657 () Bool)

(assert (=> b!128657 (= e!83989 (insertStrictlySorted!86 (t!6115 (toList!862 call!13840)) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!13920 () Bool)

(assert (=> bm!13920 (= call!13924 call!13923)))

(declare-fun bm!13921 () Bool)

(assert (=> bm!13921 (= call!13923 call!13922)))

(declare-fun b!128658 () Bool)

(assert (=> b!128658 (= e!83988 e!83986)))

(assert (=> b!128658 (= c!23614 (and ((_ is Cons!1720) (toList!862 call!13840)) (= (_1!1301 (h!2323 (toList!862 call!13840))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!38927 c!23616) b!128651))

(assert (= (and d!38927 (not c!23616)) b!128658))

(assert (= (and b!128658 c!23614) b!128656))

(assert (= (and b!128658 (not c!23614)) b!128649))

(assert (= (and b!128649 c!23617) b!128650))

(assert (= (and b!128649 (not c!23617)) b!128653))

(assert (= (or b!128650 b!128653) bm!13920))

(assert (= (or b!128656 bm!13920) bm!13921))

(assert (= (or b!128651 bm!13921) bm!13919))

(assert (= (and bm!13919 c!23615) b!128657))

(assert (= (and bm!13919 (not c!23615)) b!128652))

(assert (= (and d!38927 res!62124) b!128655))

(assert (= (and b!128655 res!62123) b!128654))

(declare-fun m!150859 () Bool)

(assert (=> b!128654 m!150859))

(declare-fun m!150861 () Bool)

(assert (=> d!38927 m!150861))

(declare-fun m!150863 () Bool)

(assert (=> d!38927 m!150863))

(declare-fun m!150865 () Bool)

(assert (=> b!128655 m!150865))

(declare-fun m!150867 () Bool)

(assert (=> bm!13919 m!150867))

(declare-fun m!150869 () Bool)

(assert (=> b!128657 m!150869))

(assert (=> d!38733 d!38927))

(declare-fun b!128659 () Bool)

(declare-fun e!83993 () Bool)

(assert (=> b!128659 (= e!83993 (contains!885 Nil!1723 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun b!128661 () Bool)

(declare-fun e!83990 () Bool)

(declare-fun call!13925 () Bool)

(assert (=> b!128661 (= e!83990 call!13925)))

(declare-fun b!128662 () Bool)

(assert (=> b!128662 (= e!83990 call!13925)))

(declare-fun b!128660 () Bool)

(declare-fun e!83991 () Bool)

(declare-fun e!83992 () Bool)

(assert (=> b!128660 (= e!83991 e!83992)))

(declare-fun res!62126 () Bool)

(assert (=> b!128660 (=> (not res!62126) (not e!83992))))

(assert (=> b!128660 (= res!62126 (not e!83993))))

(declare-fun res!62125 () Bool)

(assert (=> b!128660 (=> (not res!62125) (not e!83993))))

(assert (=> b!128660 (= res!62125 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun d!38929 () Bool)

(declare-fun res!62127 () Bool)

(assert (=> d!38929 (=> res!62127 e!83991)))

(assert (=> d!38929 (= res!62127 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(assert (=> d!38929 (= (arrayNoDuplicates!0 (_keys!4542 (_2!1302 lt!66286)) #b00000000000000000000000000000000 Nil!1723) e!83991)))

(declare-fun bm!13922 () Bool)

(declare-fun c!23618 () Bool)

(assert (=> bm!13922 (= call!13925 (arrayNoDuplicates!0 (_keys!4542 (_2!1302 lt!66286)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23618 (Cons!1722 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000) Nil!1723) Nil!1723)))))

(declare-fun b!128663 () Bool)

(assert (=> b!128663 (= e!83992 e!83990)))

(assert (=> b!128663 (= c!23618 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(assert (= (and d!38929 (not res!62127)) b!128660))

(assert (= (and b!128660 res!62125) b!128659))

(assert (= (and b!128660 res!62126) b!128663))

(assert (= (and b!128663 c!23618) b!128662))

(assert (= (and b!128663 (not c!23618)) b!128661))

(assert (= (or b!128662 b!128661) bm!13922))

(declare-fun m!150871 () Bool)

(assert (=> b!128659 m!150871))

(assert (=> b!128659 m!150871))

(declare-fun m!150873 () Bool)

(assert (=> b!128659 m!150873))

(assert (=> b!128660 m!150871))

(assert (=> b!128660 m!150871))

(declare-fun m!150875 () Bool)

(assert (=> b!128660 m!150875))

(assert (=> bm!13922 m!150871))

(declare-fun m!150877 () Bool)

(assert (=> bm!13922 m!150877))

(assert (=> b!128663 m!150871))

(assert (=> b!128663 m!150871))

(assert (=> b!128663 m!150875))

(assert (=> b!128119 d!38929))

(declare-fun b!128667 () Bool)

(declare-fun e!83995 () Option!173)

(assert (=> b!128667 (= e!83995 None!171)))

(declare-fun b!128666 () Bool)

(assert (=> b!128666 (= e!83995 (getValueByKey!167 (t!6115 (toList!862 lt!66576)) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128664 () Bool)

(declare-fun e!83994 () Option!173)

(assert (=> b!128664 (= e!83994 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66576)))))))

(declare-fun c!23619 () Bool)

(declare-fun d!38931 () Bool)

(assert (=> d!38931 (= c!23619 (and ((_ is Cons!1720) (toList!862 lt!66576)) (= (_1!1301 (h!2323 (toList!862 lt!66576))) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!38931 (= (getValueByKey!167 (toList!862 lt!66576) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!83994)))

(declare-fun b!128665 () Bool)

(assert (=> b!128665 (= e!83994 e!83995)))

(declare-fun c!23620 () Bool)

(assert (=> b!128665 (= c!23620 (and ((_ is Cons!1720) (toList!862 lt!66576)) (not (= (_1!1301 (h!2323 (toList!862 lt!66576))) (_1!1301 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!38931 c!23619) b!128664))

(assert (= (and d!38931 (not c!23619)) b!128665))

(assert (= (and b!128665 c!23620) b!128666))

(assert (= (and b!128665 (not c!23620)) b!128667))

(declare-fun m!150879 () Bool)

(assert (=> b!128666 m!150879))

(assert (=> b!128431 d!38931))

(declare-fun d!38933 () Bool)

(assert (=> d!38933 (= (get!1465 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128252 d!38933))

(declare-fun b!128671 () Bool)

(declare-fun e!83997 () Option!173)

(assert (=> b!128671 (= e!83997 None!171)))

(declare-fun b!128670 () Bool)

(assert (=> b!128670 (= e!83997 (getValueByKey!167 (t!6115 (t!6115 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128668 () Bool)

(declare-fun e!83996 () Option!173)

(assert (=> b!128668 (= e!83996 (Some!172 (_2!1301 (h!2323 (t!6115 (toList!862 lt!66136))))))))

(declare-fun c!23621 () Bool)

(declare-fun d!38935 () Bool)

(assert (=> d!38935 (= c!23621 (and ((_ is Cons!1720) (t!6115 (toList!862 lt!66136))) (= (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!38935 (= (getValueByKey!167 (t!6115 (toList!862 lt!66136)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!83996)))

(declare-fun b!128669 () Bool)

(assert (=> b!128669 (= e!83996 e!83997)))

(declare-fun c!23622 () Bool)

(assert (=> b!128669 (= c!23622 (and ((_ is Cons!1720) (t!6115 (toList!862 lt!66136))) (not (= (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(assert (= (and d!38935 c!23621) b!128668))

(assert (= (and d!38935 (not c!23621)) b!128669))

(assert (= (and b!128669 c!23622) b!128670))

(assert (= (and b!128669 (not c!23622)) b!128671))

(assert (=> b!128670 m!149785))

(declare-fun m!150881 () Bool)

(assert (=> b!128670 m!150881))

(assert (=> b!128266 d!38935))

(assert (=> d!38717 d!38701))

(declare-fun d!38937 () Bool)

(declare-fun e!84000 () Bool)

(assert (=> d!38937 e!84000))

(declare-fun res!62132 () Bool)

(assert (=> d!38937 (=> (not res!62132) (not e!84000))))

(declare-fun lt!66732 () SeekEntryResult!281)

(assert (=> d!38937 (= res!62132 ((_ is Found!281) lt!66732))))

(assert (=> d!38937 (= lt!66732 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (=> d!38937 true))

(declare-fun _$33!108 () Unit!3998)

(assert (=> d!38937 (= (choose!783 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)) _$33!108)))

(declare-fun b!128676 () Bool)

(declare-fun res!62133 () Bool)

(assert (=> b!128676 (=> (not res!62133) (not e!84000))))

(assert (=> b!128676 (= res!62133 (inRange!0 (index!3281 lt!66732) (mask!7073 newMap!16)))))

(declare-fun b!128677 () Bool)

(assert (=> b!128677 (= e!84000 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66732)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!38937 res!62132) b!128676))

(assert (= (and b!128676 res!62133) b!128677))

(assert (=> d!38937 m!149785))

(assert (=> d!38937 m!149929))

(declare-fun m!150883 () Bool)

(assert (=> b!128676 m!150883))

(declare-fun m!150885 () Bool)

(assert (=> b!128677 m!150885))

(assert (=> d!38717 d!38937))

(assert (=> d!38717 d!38881))

(declare-fun d!38939 () Bool)

(declare-fun res!62134 () Bool)

(declare-fun e!84001 () Bool)

(assert (=> d!38939 (=> res!62134 e!84001)))

(assert (=> d!38939 (= res!62134 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!38939 (= (containsKey!171 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!84001)))

(declare-fun b!128678 () Bool)

(declare-fun e!84002 () Bool)

(assert (=> b!128678 (= e!84001 e!84002)))

(declare-fun res!62135 () Bool)

(assert (=> b!128678 (=> (not res!62135) (not e!84002))))

(assert (=> b!128678 (= res!62135 (and (or (not ((_ is Cons!1720) (toList!862 lt!66213))) (bvsle (_1!1301 (h!2323 (toList!862 lt!66213))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) ((_ is Cons!1720) (toList!862 lt!66213)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66213))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun b!128679 () Bool)

(assert (=> b!128679 (= e!84002 (containsKey!171 (t!6115 (toList!862 lt!66213)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!38939 (not res!62134)) b!128678))

(assert (= (and b!128678 res!62135) b!128679))

(assert (=> b!128679 m!149865))

(declare-fun m!150887 () Bool)

(assert (=> b!128679 m!150887))

(assert (=> d!38715 d!38939))

(assert (=> bm!13880 d!38705))

(declare-fun d!38941 () Bool)

(declare-fun e!84004 () Bool)

(assert (=> d!38941 e!84004))

(declare-fun res!62136 () Bool)

(assert (=> d!38941 (=> res!62136 e!84004)))

(declare-fun lt!66735 () Bool)

(assert (=> d!38941 (= res!62136 (not lt!66735))))

(declare-fun lt!66734 () Bool)

(assert (=> d!38941 (= lt!66735 lt!66734)))

(declare-fun lt!66736 () Unit!3998)

(declare-fun e!84003 () Unit!3998)

(assert (=> d!38941 (= lt!66736 e!84003)))

(declare-fun c!23623 () Bool)

(assert (=> d!38941 (= c!23623 lt!66734)))

(assert (=> d!38941 (= lt!66734 (containsKey!171 (toList!862 lt!66533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!38941 (= (contains!882 lt!66533 #b0000000000000000000000000000000000000000000000000000000000000000) lt!66735)))

(declare-fun b!128680 () Bool)

(declare-fun lt!66733 () Unit!3998)

(assert (=> b!128680 (= e!84003 lt!66733)))

(assert (=> b!128680 (= lt!66733 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128680 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128681 () Bool)

(declare-fun Unit!4028 () Unit!3998)

(assert (=> b!128681 (= e!84003 Unit!4028)))

(declare-fun b!128682 () Bool)

(assert (=> b!128682 (= e!84004 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38941 c!23623) b!128680))

(assert (= (and d!38941 (not c!23623)) b!128681))

(assert (= (and d!38941 (not res!62136)) b!128682))

(declare-fun m!150889 () Bool)

(assert (=> d!38941 m!150889))

(declare-fun m!150891 () Bool)

(assert (=> b!128680 m!150891))

(declare-fun m!150893 () Bool)

(assert (=> b!128680 m!150893))

(assert (=> b!128680 m!150893))

(declare-fun m!150895 () Bool)

(assert (=> b!128680 m!150895))

(assert (=> b!128682 m!150893))

(assert (=> b!128682 m!150893))

(assert (=> b!128682 m!150895))

(assert (=> bm!13889 d!38941))

(assert (=> d!38703 d!38701))

(declare-fun b!128699 () Bool)

(declare-fun res!62146 () Bool)

(declare-fun lt!66739 () SeekEntryResult!281)

(assert (=> b!128699 (= res!62146 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66739)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84013 () Bool)

(assert (=> b!128699 (=> (not res!62146) (not e!84013))))

(declare-fun b!128700 () Bool)

(declare-fun e!84016 () Bool)

(assert (=> b!128700 (= e!84016 e!84013)))

(declare-fun res!62148 () Bool)

(declare-fun call!13931 () Bool)

(assert (=> b!128700 (= res!62148 call!13931)))

(assert (=> b!128700 (=> (not res!62148) (not e!84013))))

(declare-fun b!128701 () Bool)

(declare-fun e!84014 () Bool)

(assert (=> b!128701 (= e!84014 ((_ is Undefined!281) lt!66739))))

(declare-fun b!128702 () Bool)

(declare-fun e!84015 () Bool)

(declare-fun call!13930 () Bool)

(assert (=> b!128702 (= e!84015 (not call!13930))))

(declare-fun b!128703 () Bool)

(assert (=> b!128703 (= e!84013 (not call!13930))))

(declare-fun b!128704 () Bool)

(declare-fun res!62145 () Bool)

(assert (=> b!128704 (=> (not res!62145) (not e!84015))))

(assert (=> b!128704 (= res!62145 (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66739)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128705 () Bool)

(declare-fun res!62147 () Bool)

(assert (=> b!128705 (=> (not res!62147) (not e!84015))))

(assert (=> b!128705 (= res!62147 call!13931)))

(assert (=> b!128705 (= e!84014 e!84015)))

(declare-fun bm!13927 () Bool)

(assert (=> bm!13927 (= call!13930 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun c!23629 () Bool)

(declare-fun bm!13928 () Bool)

(assert (=> bm!13928 (= call!13931 (inRange!0 (ite c!23629 (index!3280 lt!66739) (index!3283 lt!66739)) (mask!7073 newMap!16)))))

(declare-fun b!128706 () Bool)

(assert (=> b!128706 (= e!84016 e!84014)))

(declare-fun c!23628 () Bool)

(assert (=> b!128706 (= c!23628 ((_ is MissingVacant!281) lt!66739))))

(declare-fun d!38943 () Bool)

(assert (=> d!38943 e!84016))

(assert (=> d!38943 (= c!23629 ((_ is MissingZero!281) lt!66739))))

(assert (=> d!38943 (= lt!66739 (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (=> d!38943 true))

(declare-fun _$34!959 () Unit!3998)

(assert (=> d!38943 (= (choose!781 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (defaultEntry!2805 newMap!16)) _$34!959)))

(assert (= (and d!38943 c!23629) b!128700))

(assert (= (and d!38943 (not c!23629)) b!128706))

(assert (= (and b!128700 res!62148) b!128699))

(assert (= (and b!128699 res!62146) b!128703))

(assert (= (and b!128706 c!23628) b!128705))

(assert (= (and b!128706 (not c!23628)) b!128701))

(assert (= (and b!128705 res!62147) b!128704))

(assert (= (and b!128704 res!62145) b!128702))

(assert (= (or b!128700 b!128705) bm!13928))

(assert (= (or b!128703 b!128702) bm!13927))

(assert (=> bm!13927 m!149785))

(assert (=> bm!13927 m!149931))

(declare-fun m!150897 () Bool)

(assert (=> b!128699 m!150897))

(assert (=> d!38943 m!149785))

(assert (=> d!38943 m!149929))

(declare-fun m!150899 () Bool)

(assert (=> b!128704 m!150899))

(declare-fun m!150901 () Bool)

(assert (=> bm!13928 m!150901))

(assert (=> d!38703 d!38943))

(assert (=> d!38703 d!38881))

(declare-fun d!38945 () Bool)

(assert (=> d!38945 (= (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206)) (not (isEmpty!404 (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))))

(declare-fun bs!5333 () Bool)

(assert (= bs!5333 d!38945))

(assert (=> bs!5333 m!150395))

(declare-fun m!150903 () Bool)

(assert (=> bs!5333 m!150903))

(assert (=> b!128425 d!38945))

(declare-fun b!128710 () Bool)

(declare-fun e!84018 () Option!173)

(assert (=> b!128710 (= e!84018 None!171)))

(declare-fun b!128709 () Bool)

(assert (=> b!128709 (= e!84018 (getValueByKey!167 (t!6115 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!66206))))

(declare-fun e!84017 () Option!173)

(declare-fun b!128707 () Bool)

(assert (=> b!128707 (= e!84017 (Some!172 (_2!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(declare-fun d!38947 () Bool)

(declare-fun c!23630 () Bool)

(assert (=> d!38947 (= c!23630 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66206)))))

(assert (=> d!38947 (= (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206) e!84017)))

(declare-fun b!128708 () Bool)

(assert (=> b!128708 (= e!84017 e!84018)))

(declare-fun c!23631 () Bool)

(assert (=> b!128708 (= c!23631 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (not (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66206))))))

(assert (= (and d!38947 c!23630) b!128707))

(assert (= (and d!38947 (not c!23630)) b!128708))

(assert (= (and b!128708 c!23631) b!128709))

(assert (= (and b!128708 (not c!23631)) b!128710))

(declare-fun m!150905 () Bool)

(assert (=> b!128709 m!150905))

(assert (=> b!128425 d!38947))

(declare-fun d!38949 () Bool)

(assert (=> d!38949 (= (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66212)) (v!3147 (getValueByKey!167 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66212)))))

(assert (=> d!38773 d!38949))

(declare-fun b!128714 () Bool)

(declare-fun e!84020 () Option!173)

(assert (=> b!128714 (= e!84020 None!171)))

(declare-fun b!128713 () Bool)

(assert (=> b!128713 (= e!84020 (getValueByKey!167 (t!6115 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!66212))))

(declare-fun b!128711 () Bool)

(declare-fun e!84019 () Option!173)

(assert (=> b!128711 (= e!84019 (Some!172 (_2!1301 (h!2323 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(declare-fun d!38951 () Bool)

(declare-fun c!23632 () Bool)

(assert (=> d!38951 (= c!23632 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66212)))))

(assert (=> d!38951 (= (getValueByKey!167 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66212) e!84019)))

(declare-fun b!128712 () Bool)

(assert (=> b!128712 (= e!84019 e!84020)))

(declare-fun c!23633 () Bool)

(assert (=> b!128712 (= c!23633 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (not (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66203 (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66212))))))

(assert (= (and d!38951 c!23632) b!128711))

(assert (= (and d!38951 (not c!23632)) b!128712))

(assert (= (and b!128712 c!23633) b!128713))

(assert (= (and b!128712 (not c!23633)) b!128714))

(declare-fun m!150907 () Bool)

(assert (=> b!128713 m!150907))

(assert (=> d!38773 d!38951))

(declare-fun d!38953 () Bool)

(assert (=> d!38953 (= (apply!112 lt!66604 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5334 () Bool)

(assert (= bs!5334 d!38953))

(declare-fun m!150909 () Bool)

(assert (=> bs!5334 m!150909))

(assert (=> bs!5334 m!150909))

(declare-fun m!150911 () Bool)

(assert (=> bs!5334 m!150911))

(assert (=> b!128451 d!38953))

(declare-fun d!38955 () Bool)

(assert (=> d!38955 (= (isEmpty!404 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) (not ((_ is Some!172) (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(assert (=> d!38745 d!38955))

(assert (=> b!128406 d!38765))

(declare-fun d!38957 () Bool)

(declare-fun e!84021 () Bool)

(assert (=> d!38957 e!84021))

(declare-fun res!62149 () Bool)

(assert (=> d!38957 (=> (not res!62149) (not e!84021))))

(declare-fun lt!66740 () ListLongMap!1693)

(assert (=> d!38957 (= res!62149 (contains!882 lt!66740 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66741 () List!1724)

(assert (=> d!38957 (= lt!66740 (ListLongMap!1694 lt!66741))))

(declare-fun lt!66742 () Unit!3998)

(declare-fun lt!66743 () Unit!3998)

(assert (=> d!38957 (= lt!66742 lt!66743)))

(assert (=> d!38957 (= (getValueByKey!167 lt!66741 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38957 (= lt!66743 (lemmaContainsTupThenGetReturnValue!84 lt!66741 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38957 (= lt!66741 (insertStrictlySorted!86 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38957 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66740)))

(declare-fun b!128715 () Bool)

(declare-fun res!62150 () Bool)

(assert (=> b!128715 (=> (not res!62150) (not e!84021))))

(assert (=> b!128715 (= res!62150 (= (getValueByKey!167 (toList!862 lt!66740) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128716 () Bool)

(assert (=> b!128716 (= e!84021 (contains!884 (toList!862 lt!66740) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!38957 res!62149) b!128715))

(assert (= (and b!128715 res!62150) b!128716))

(declare-fun m!150913 () Bool)

(assert (=> d!38957 m!150913))

(declare-fun m!150915 () Bool)

(assert (=> d!38957 m!150915))

(declare-fun m!150917 () Bool)

(assert (=> d!38957 m!150917))

(declare-fun m!150919 () Bool)

(assert (=> d!38957 m!150919))

(declare-fun m!150921 () Bool)

(assert (=> b!128715 m!150921))

(declare-fun m!150923 () Bool)

(assert (=> b!128716 m!150923))

(assert (=> d!38755 d!38957))

(declare-fun d!38959 () Bool)

(assert (=> d!38959 (= (arrayCountValidKeys!0 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!66746 () Unit!3998)

(declare-fun choose!2 (array!4724 (_ BitVec 32)) Unit!3998)

(assert (=> d!38959 (= lt!66746 (choose!2 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(declare-fun e!84024 () Bool)

(assert (=> d!38959 e!84024))

(declare-fun res!62155 () Bool)

(assert (=> d!38959 (=> (not res!62155) (not e!84024))))

(assert (=> d!38959 (= res!62155 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 lt!66488))))))

(assert (=> d!38959 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))) lt!66746)))

(declare-fun b!128721 () Bool)

(declare-fun res!62156 () Bool)

(assert (=> b!128721 (=> (not res!62156) (not e!84024))))

(assert (=> b!128721 (= res!62156 (validKeyInArray!0 (select (arr!2236 lt!66488) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(declare-fun b!128722 () Bool)

(assert (=> b!128722 (= e!84024 (bvslt (size!2501 lt!66488) #b01111111111111111111111111111111))))

(assert (= (and d!38959 res!62155) b!128721))

(assert (= (and b!128721 res!62156) b!128722))

(assert (=> d!38959 m!150239))

(declare-fun m!150925 () Bool)

(assert (=> d!38959 m!150925))

(declare-fun m!150927 () Bool)

(assert (=> b!128721 m!150927))

(assert (=> b!128721 m!150927))

(declare-fun m!150929 () Bool)

(assert (=> b!128721 m!150929))

(assert (=> d!38755 d!38959))

(declare-fun e!84029 () Bool)

(declare-fun b!128734 () Bool)

(assert (=> b!128734 (= e!84029 (= (arrayCountValidKeys!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4542 newMap!16) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) #b00000000000000000000000000000001)))))

(declare-fun b!128733 () Bool)

(declare-fun e!84030 () Bool)

(assert (=> b!128733 (= e!84030 (bvslt (size!2501 (_keys!4542 newMap!16)) #b01111111111111111111111111111111))))

(declare-fun d!38961 () Bool)

(assert (=> d!38961 e!84029))

(declare-fun res!62165 () Bool)

(assert (=> d!38961 (=> (not res!62165) (not e!84029))))

(assert (=> d!38961 (= res!62165 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 (_keys!4542 newMap!16)))))))

(declare-fun lt!66749 () Unit!3998)

(declare-fun choose!1 (array!4724 (_ BitVec 32) (_ BitVec 64)) Unit!3998)

(assert (=> d!38961 (= lt!66749 (choose!1 (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38961 e!84030))

(declare-fun res!62166 () Bool)

(assert (=> d!38961 (=> (not res!62166) (not e!84030))))

(assert (=> d!38961 (= res!62166 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 (_keys!4542 newMap!16)))))))

(assert (=> d!38961 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66749)))

(declare-fun b!128732 () Bool)

(declare-fun res!62167 () Bool)

(assert (=> b!128732 (=> (not res!62167) (not e!84030))))

(assert (=> b!128732 (= res!62167 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128731 () Bool)

(declare-fun res!62168 () Bool)

(assert (=> b!128731 (=> (not res!62168) (not e!84030))))

(assert (=> b!128731 (= res!62168 (not (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))))

(assert (= (and d!38961 res!62166) b!128731))

(assert (= (and b!128731 res!62168) b!128732))

(assert (= (and b!128732 res!62167) b!128733))

(assert (= (and d!38961 res!62165) b!128734))

(assert (=> b!128734 m!150247))

(assert (=> b!128734 m!150221))

(assert (=> b!128734 m!149969))

(assert (=> d!38961 m!149785))

(declare-fun m!150931 () Bool)

(assert (=> d!38961 m!150931))

(assert (=> b!128732 m!149785))

(declare-fun m!150933 () Bool)

(assert (=> b!128732 m!150933))

(declare-fun m!150935 () Bool)

(assert (=> b!128731 m!150935))

(assert (=> b!128731 m!150935))

(declare-fun m!150937 () Bool)

(assert (=> b!128731 m!150937))

(assert (=> d!38755 d!38961))

(declare-fun d!38963 () Bool)

(declare-fun e!84033 () Bool)

(assert (=> d!38963 e!84033))

(declare-fun res!62171 () Bool)

(assert (=> d!38963 (=> (not res!62171) (not e!84033))))

(assert (=> d!38963 (= res!62171 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 (_keys!4542 newMap!16)))))))

(declare-fun lt!66752 () Unit!3998)

(declare-fun choose!102 ((_ BitVec 64) array!4724 (_ BitVec 32) (_ BitVec 32)) Unit!3998)

(assert (=> d!38963 (= lt!66752 (choose!102 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (mask!7073 newMap!16)))))

(assert (=> d!38963 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38963 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (mask!7073 newMap!16)) lt!66752)))

(declare-fun b!128737 () Bool)

(assert (=> b!128737 (= e!84033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (mask!7073 newMap!16)))))

(assert (= (and d!38963 res!62171) b!128737))

(assert (=> d!38963 m!149785))

(declare-fun m!150939 () Bool)

(assert (=> d!38963 m!150939))

(assert (=> d!38963 m!150007))

(assert (=> b!128737 m!150247))

(assert (=> b!128737 m!150243))

(assert (=> d!38755 d!38963))

(assert (=> d!38755 d!38725))

(assert (=> d!38755 d!38695))

(declare-fun call!13936 () ListLongMap!1693)

(declare-fun call!13934 () ListLongMap!1693)

(declare-fun call!13933 () ListLongMap!1693)

(declare-fun c!23639 () Bool)

(declare-fun bm!13929 () Bool)

(declare-fun c!23635 () Bool)

(declare-fun call!13932 () ListLongMap!1693)

(assert (=> bm!13929 (= call!13932 (+!166 (ite c!23639 call!13936 (ite c!23635 call!13934 call!13933)) (ite (or c!23639 c!23635) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128738 () Bool)

(declare-fun e!84044 () ListLongMap!1693)

(declare-fun call!13935 () ListLongMap!1693)

(assert (=> b!128738 (= e!84044 call!13935)))

(declare-fun b!128739 () Bool)

(declare-fun e!84041 () Bool)

(declare-fun call!13937 () Bool)

(assert (=> b!128739 (= e!84041 (not call!13937))))

(declare-fun bm!13930 () Bool)

(declare-fun call!13938 () Bool)

(declare-fun lt!66774 () ListLongMap!1693)

(assert (=> bm!13930 (= call!13938 (contains!882 lt!66774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128740 () Bool)

(declare-fun c!23634 () Bool)

(assert (=> b!128740 (= c!23634 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84043 () ListLongMap!1693)

(assert (=> b!128740 (= e!84044 e!84043)))

(declare-fun b!128741 () Bool)

(declare-fun e!84040 () Bool)

(assert (=> b!128741 (= e!84041 e!84040)))

(declare-fun res!62173 () Bool)

(assert (=> b!128741 (= res!62173 call!13937)))

(assert (=> b!128741 (=> (not res!62173) (not e!84040))))

(declare-fun b!128742 () Bool)

(declare-fun e!84042 () Unit!3998)

(declare-fun lt!66763 () Unit!3998)

(assert (=> b!128742 (= e!84042 lt!66763)))

(declare-fun lt!66768 () ListLongMap!1693)

(assert (=> b!128742 (= lt!66768 (getCurrentListMapNoExtraKeys!133 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66769 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66769 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66767 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66767 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!66756 () Unit!3998)

(assert (=> b!128742 (= lt!66756 (addStillContains!88 lt!66768 lt!66769 (zeroValue!2666 newMap!16) lt!66767))))

(assert (=> b!128742 (contains!882 (+!166 lt!66768 (tuple2!2583 lt!66769 (zeroValue!2666 newMap!16))) lt!66767)))

(declare-fun lt!66755 () Unit!3998)

(assert (=> b!128742 (= lt!66755 lt!66756)))

(declare-fun lt!66764 () ListLongMap!1693)

(assert (=> b!128742 (= lt!66764 (getCurrentListMapNoExtraKeys!133 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66760 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66760 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66773 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66773 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!66766 () Unit!3998)

(assert (=> b!128742 (= lt!66766 (addApplyDifferent!88 lt!66764 lt!66760 (minValue!2666 newMap!16) lt!66773))))

(assert (=> b!128742 (= (apply!112 (+!166 lt!66764 (tuple2!2583 lt!66760 (minValue!2666 newMap!16))) lt!66773) (apply!112 lt!66764 lt!66773))))

(declare-fun lt!66758 () Unit!3998)

(assert (=> b!128742 (= lt!66758 lt!66766)))

(declare-fun lt!66765 () ListLongMap!1693)

(assert (=> b!128742 (= lt!66765 (getCurrentListMapNoExtraKeys!133 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66754 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66754 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66771 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66771 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!66759 () Unit!3998)

(assert (=> b!128742 (= lt!66759 (addApplyDifferent!88 lt!66765 lt!66754 (zeroValue!2666 newMap!16) lt!66771))))

(assert (=> b!128742 (= (apply!112 (+!166 lt!66765 (tuple2!2583 lt!66754 (zeroValue!2666 newMap!16))) lt!66771) (apply!112 lt!66765 lt!66771))))

(declare-fun lt!66753 () Unit!3998)

(assert (=> b!128742 (= lt!66753 lt!66759)))

(declare-fun lt!66761 () ListLongMap!1693)

(assert (=> b!128742 (= lt!66761 (getCurrentListMapNoExtraKeys!133 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66762 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66762 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66772 () (_ BitVec 64))

(assert (=> b!128742 (= lt!66772 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000))))

(assert (=> b!128742 (= lt!66763 (addApplyDifferent!88 lt!66761 lt!66762 (minValue!2666 newMap!16) lt!66772))))

(assert (=> b!128742 (= (apply!112 (+!166 lt!66761 (tuple2!2583 lt!66762 (minValue!2666 newMap!16))) lt!66772) (apply!112 lt!66761 lt!66772))))

(declare-fun b!128743 () Bool)

(assert (=> b!128743 (= e!84043 call!13935)))

(declare-fun e!84037 () Bool)

(declare-fun b!128744 () Bool)

(assert (=> b!128744 (= e!84037 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!128745 () Bool)

(assert (=> b!128745 (= e!84040 (= (apply!112 lt!66774 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128746 () Bool)

(declare-fun e!84036 () Bool)

(assert (=> b!128746 (= e!84036 e!84041)))

(declare-fun c!23637 () Bool)

(assert (=> b!128746 (= c!23637 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128747 () Bool)

(declare-fun e!84045 () Bool)

(declare-fun e!84039 () Bool)

(assert (=> b!128747 (= e!84045 e!84039)))

(declare-fun res!62179 () Bool)

(assert (=> b!128747 (=> (not res!62179) (not e!84039))))

(assert (=> b!128747 (= res!62179 (contains!882 lt!66774 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> b!128747 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun b!128748 () Bool)

(declare-fun res!62177 () Bool)

(assert (=> b!128748 (=> (not res!62177) (not e!84036))))

(assert (=> b!128748 (= res!62177 e!84045)))

(declare-fun res!62175 () Bool)

(assert (=> b!128748 (=> res!62175 e!84045)))

(assert (=> b!128748 (= res!62175 (not e!84037))))

(declare-fun res!62172 () Bool)

(assert (=> b!128748 (=> (not res!62172) (not e!84037))))

(assert (=> b!128748 (= res!62172 (bvslt #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun b!128749 () Bool)

(assert (=> b!128749 (= e!84043 call!13933)))

(declare-fun b!128750 () Bool)

(declare-fun e!84038 () Bool)

(declare-fun e!84046 () Bool)

(assert (=> b!128750 (= e!84038 e!84046)))

(declare-fun res!62180 () Bool)

(assert (=> b!128750 (= res!62180 call!13938)))

(assert (=> b!128750 (=> (not res!62180) (not e!84046))))

(declare-fun b!128751 () Bool)

(declare-fun e!84034 () ListLongMap!1693)

(assert (=> b!128751 (= e!84034 (+!166 call!13932 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13931 () Bool)

(assert (=> bm!13931 (= call!13937 (contains!882 lt!66774 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13932 () Bool)

(assert (=> bm!13932 (= call!13935 call!13932)))

(declare-fun b!128752 () Bool)

(declare-fun res!62174 () Bool)

(assert (=> b!128752 (=> (not res!62174) (not e!84036))))

(assert (=> b!128752 (= res!62174 e!84038)))

(declare-fun c!23636 () Bool)

(assert (=> b!128752 (= c!23636 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13933 () Bool)

(assert (=> bm!13933 (= call!13934 call!13936)))

(declare-fun b!128753 () Bool)

(assert (=> b!128753 (= e!84034 e!84044)))

(assert (=> b!128753 (= c!23635 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!84035 () Bool)

(declare-fun b!128754 () Bool)

(assert (=> b!128754 (= e!84035 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun bm!13934 () Bool)

(assert (=> bm!13934 (= call!13933 call!13934)))

(declare-fun b!128755 () Bool)

(assert (=> b!128755 (= e!84046 (= (apply!112 lt!66774 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!38965 () Bool)

(assert (=> d!38965 e!84036))

(declare-fun res!62176 () Bool)

(assert (=> d!38965 (=> (not res!62176) (not e!84036))))

(assert (=> d!38965 (= res!62176 (or (bvsge #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))))

(declare-fun lt!66757 () ListLongMap!1693)

(assert (=> d!38965 (= lt!66774 lt!66757)))

(declare-fun lt!66770 () Unit!3998)

(assert (=> d!38965 (= lt!66770 e!84042)))

(declare-fun c!23638 () Bool)

(assert (=> d!38965 (= c!23638 e!84035)))

(declare-fun res!62178 () Bool)

(assert (=> d!38965 (=> (not res!62178) (not e!84035))))

(assert (=> d!38965 (= res!62178 (bvslt #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(assert (=> d!38965 (= lt!66757 e!84034)))

(assert (=> d!38965 (= c!23639 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38965 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38965 (= (getCurrentListMap!534 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66774)))

(declare-fun b!128756 () Bool)

(declare-fun Unit!4029 () Unit!3998)

(assert (=> b!128756 (= e!84042 Unit!4029)))

(declare-fun b!128757 () Bool)

(assert (=> b!128757 (= e!84039 (= (apply!112 lt!66774 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))))))

(assert (=> b!128757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun bm!13935 () Bool)

(assert (=> bm!13935 (= call!13936 (getCurrentListMapNoExtraKeys!133 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128758 () Bool)

(assert (=> b!128758 (= e!84038 (not call!13938))))

(assert (= (and d!38965 c!23639) b!128751))

(assert (= (and d!38965 (not c!23639)) b!128753))

(assert (= (and b!128753 c!23635) b!128738))

(assert (= (and b!128753 (not c!23635)) b!128740))

(assert (= (and b!128740 c!23634) b!128743))

(assert (= (and b!128740 (not c!23634)) b!128749))

(assert (= (or b!128743 b!128749) bm!13934))

(assert (= (or b!128738 bm!13934) bm!13933))

(assert (= (or b!128738 b!128743) bm!13932))

(assert (= (or b!128751 bm!13933) bm!13935))

(assert (= (or b!128751 bm!13932) bm!13929))

(assert (= (and d!38965 res!62178) b!128754))

(assert (= (and d!38965 c!23638) b!128742))

(assert (= (and d!38965 (not c!23638)) b!128756))

(assert (= (and d!38965 res!62176) b!128748))

(assert (= (and b!128748 res!62172) b!128744))

(assert (= (and b!128748 (not res!62175)) b!128747))

(assert (= (and b!128747 res!62179) b!128757))

(assert (= (and b!128748 res!62177) b!128752))

(assert (= (and b!128752 c!23636) b!128750))

(assert (= (and b!128752 (not c!23636)) b!128758))

(assert (= (and b!128750 res!62180) b!128755))

(assert (= (or b!128750 b!128758) bm!13930))

(assert (= (and b!128752 res!62174) b!128746))

(assert (= (and b!128746 c!23637) b!128741))

(assert (= (and b!128746 (not c!23637)) b!128739))

(assert (= (and b!128741 res!62173) b!128745))

(assert (= (or b!128741 b!128739) bm!13931))

(declare-fun b_lambda!5717 () Bool)

(assert (=> (not b_lambda!5717) (not b!128757)))

(assert (=> b!128757 t!6123))

(declare-fun b_and!7961 () Bool)

(assert (= b_and!7957 (and (=> t!6123 result!3905) b_and!7961)))

(assert (=> b!128757 t!6125))

(declare-fun b_and!7963 () Bool)

(assert (= b_and!7959 (and (=> t!6125 result!3907) b_and!7963)))

(declare-fun m!150941 () Bool)

(assert (=> bm!13931 m!150941))

(declare-fun m!150943 () Bool)

(assert (=> b!128755 m!150943))

(declare-fun m!150945 () Bool)

(assert (=> bm!13935 m!150945))

(declare-fun m!150947 () Bool)

(assert (=> b!128742 m!150947))

(declare-fun m!150949 () Bool)

(assert (=> b!128742 m!150949))

(declare-fun m!150951 () Bool)

(assert (=> b!128742 m!150951))

(declare-fun m!150953 () Bool)

(assert (=> b!128742 m!150953))

(declare-fun m!150955 () Bool)

(assert (=> b!128742 m!150955))

(declare-fun m!150957 () Bool)

(assert (=> b!128742 m!150957))

(declare-fun m!150959 () Bool)

(assert (=> b!128742 m!150959))

(declare-fun m!150961 () Bool)

(assert (=> b!128742 m!150961))

(declare-fun m!150963 () Bool)

(assert (=> b!128742 m!150963))

(declare-fun m!150965 () Bool)

(assert (=> b!128742 m!150965))

(declare-fun m!150967 () Bool)

(assert (=> b!128742 m!150967))

(assert (=> b!128742 m!150953))

(declare-fun m!150969 () Bool)

(assert (=> b!128742 m!150969))

(declare-fun m!150971 () Bool)

(assert (=> b!128742 m!150971))

(assert (=> b!128742 m!150951))

(declare-fun m!150973 () Bool)

(assert (=> b!128742 m!150973))

(assert (=> b!128742 m!150945))

(assert (=> b!128742 m!150965))

(declare-fun m!150975 () Bool)

(assert (=> b!128742 m!150975))

(assert (=> b!128742 m!150949))

(declare-fun m!150977 () Bool)

(assert (=> b!128742 m!150977))

(assert (=> d!38965 m!150007))

(assert (=> b!128754 m!150963))

(assert (=> b!128754 m!150963))

(declare-fun m!150979 () Bool)

(assert (=> b!128754 m!150979))

(declare-fun m!150981 () Bool)

(assert (=> bm!13930 m!150981))

(declare-fun m!150983 () Bool)

(assert (=> b!128751 m!150983))

(declare-fun m!150985 () Bool)

(assert (=> b!128745 m!150985))

(assert (=> b!128757 m!150963))

(declare-fun m!150987 () Bool)

(assert (=> b!128757 m!150987))

(declare-fun m!150989 () Bool)

(assert (=> b!128757 m!150989))

(assert (=> b!128757 m!150127))

(assert (=> b!128757 m!150963))

(assert (=> b!128757 m!150989))

(assert (=> b!128757 m!150127))

(declare-fun m!150991 () Bool)

(assert (=> b!128757 m!150991))

(assert (=> b!128744 m!150963))

(assert (=> b!128744 m!150963))

(assert (=> b!128744 m!150979))

(declare-fun m!150993 () Bool)

(assert (=> bm!13929 m!150993))

(assert (=> b!128747 m!150963))

(assert (=> b!128747 m!150963))

(declare-fun m!150995 () Bool)

(assert (=> b!128747 m!150995))

(assert (=> d!38755 d!38965))

(assert (=> d!38755 d!38705))

(declare-fun d!38967 () Bool)

(declare-fun res!62181 () Bool)

(declare-fun e!84047 () Bool)

(assert (=> d!38967 (=> res!62181 e!84047)))

(assert (=> d!38967 (= res!62181 (= (select (arr!2236 lt!66471) #b00000000000000000000000000000000) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!38967 (= (arrayContainsKey!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000) e!84047)))

(declare-fun b!128759 () Bool)

(declare-fun e!84048 () Bool)

(assert (=> b!128759 (= e!84047 e!84048)))

(declare-fun res!62182 () Bool)

(assert (=> b!128759 (=> (not res!62182) (not e!84048))))

(assert (=> b!128759 (= res!62182 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 lt!66471)))))

(declare-fun b!128760 () Bool)

(assert (=> b!128760 (= e!84048 (arrayContainsKey!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!38967 (not res!62181)) b!128759))

(assert (= (and b!128759 res!62182) b!128760))

(declare-fun m!150997 () Bool)

(assert (=> d!38967 m!150997))

(assert (=> b!128760 m!149785))

(declare-fun m!150999 () Bool)

(assert (=> b!128760 m!150999))

(assert (=> d!38755 d!38967))

(declare-fun d!38969 () Bool)

(declare-fun e!84049 () Bool)

(assert (=> d!38969 e!84049))

(declare-fun res!62183 () Bool)

(assert (=> d!38969 (=> (not res!62183) (not e!84049))))

(assert (=> d!38969 (= res!62183 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 lt!66473))))))

(declare-fun lt!66775 () Unit!3998)

(assert (=> d!38969 (= lt!66775 (choose!784 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38969 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38969 (= (lemmaValidKeyInArrayIsInListMap!115 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (defaultEntry!2805 newMap!16)) lt!66775)))

(declare-fun b!128761 () Bool)

(assert (=> b!128761 (= e!84049 (contains!882 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 lt!66473) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(assert (= (and d!38969 res!62183) b!128761))

(declare-fun m!151001 () Bool)

(assert (=> d!38969 m!151001))

(assert (=> d!38969 m!150007))

(assert (=> b!128761 m!150229))

(declare-fun m!151003 () Bool)

(assert (=> b!128761 m!151003))

(assert (=> b!128761 m!150229))

(assert (=> b!128761 m!151003))

(declare-fun m!151005 () Bool)

(assert (=> b!128761 m!151005))

(assert (=> d!38755 d!38969))

(assert (=> d!38755 d!38729))

(declare-fun c!23645 () Bool)

(declare-fun call!13940 () ListLongMap!1693)

(declare-fun call!13943 () ListLongMap!1693)

(declare-fun call!13939 () ListLongMap!1693)

(declare-fun call!13941 () ListLongMap!1693)

(declare-fun bm!13936 () Bool)

(declare-fun c!23641 () Bool)

(assert (=> bm!13936 (= call!13939 (+!166 (ite c!23645 call!13943 (ite c!23641 call!13941 call!13940)) (ite (or c!23645 c!23641) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128762 () Bool)

(declare-fun e!84060 () ListLongMap!1693)

(declare-fun call!13942 () ListLongMap!1693)

(assert (=> b!128762 (= e!84060 call!13942)))

(declare-fun b!128763 () Bool)

(declare-fun e!84057 () Bool)

(declare-fun call!13944 () Bool)

(assert (=> b!128763 (= e!84057 (not call!13944))))

(declare-fun bm!13937 () Bool)

(declare-fun call!13945 () Bool)

(declare-fun lt!66797 () ListLongMap!1693)

(assert (=> bm!13937 (= call!13945 (contains!882 lt!66797 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128764 () Bool)

(declare-fun c!23640 () Bool)

(assert (=> b!128764 (= c!23640 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84059 () ListLongMap!1693)

(assert (=> b!128764 (= e!84060 e!84059)))

(declare-fun b!128765 () Bool)

(declare-fun e!84056 () Bool)

(assert (=> b!128765 (= e!84057 e!84056)))

(declare-fun res!62185 () Bool)

(assert (=> b!128765 (= res!62185 call!13944)))

(assert (=> b!128765 (=> (not res!62185) (not e!84056))))

(declare-fun b!128766 () Bool)

(declare-fun e!84058 () Unit!3998)

(declare-fun lt!66786 () Unit!3998)

(assert (=> b!128766 (= e!84058 lt!66786)))

(declare-fun lt!66791 () ListLongMap!1693)

(assert (=> b!128766 (= lt!66791 (getCurrentListMapNoExtraKeys!133 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66792 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66792 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66790 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66790 (select (arr!2236 lt!66473) #b00000000000000000000000000000000))))

(declare-fun lt!66779 () Unit!3998)

(assert (=> b!128766 (= lt!66779 (addStillContains!88 lt!66791 lt!66792 (zeroValue!2666 newMap!16) lt!66790))))

(assert (=> b!128766 (contains!882 (+!166 lt!66791 (tuple2!2583 lt!66792 (zeroValue!2666 newMap!16))) lt!66790)))

(declare-fun lt!66778 () Unit!3998)

(assert (=> b!128766 (= lt!66778 lt!66779)))

(declare-fun lt!66787 () ListLongMap!1693)

(assert (=> b!128766 (= lt!66787 (getCurrentListMapNoExtraKeys!133 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66783 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66783 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66796 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66796 (select (arr!2236 lt!66473) #b00000000000000000000000000000000))))

(declare-fun lt!66789 () Unit!3998)

(assert (=> b!128766 (= lt!66789 (addApplyDifferent!88 lt!66787 lt!66783 (minValue!2666 newMap!16) lt!66796))))

(assert (=> b!128766 (= (apply!112 (+!166 lt!66787 (tuple2!2583 lt!66783 (minValue!2666 newMap!16))) lt!66796) (apply!112 lt!66787 lt!66796))))

(declare-fun lt!66781 () Unit!3998)

(assert (=> b!128766 (= lt!66781 lt!66789)))

(declare-fun lt!66788 () ListLongMap!1693)

(assert (=> b!128766 (= lt!66788 (getCurrentListMapNoExtraKeys!133 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66777 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66777 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66794 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66794 (select (arr!2236 lt!66473) #b00000000000000000000000000000000))))

(declare-fun lt!66782 () Unit!3998)

(assert (=> b!128766 (= lt!66782 (addApplyDifferent!88 lt!66788 lt!66777 (zeroValue!2666 newMap!16) lt!66794))))

(assert (=> b!128766 (= (apply!112 (+!166 lt!66788 (tuple2!2583 lt!66777 (zeroValue!2666 newMap!16))) lt!66794) (apply!112 lt!66788 lt!66794))))

(declare-fun lt!66776 () Unit!3998)

(assert (=> b!128766 (= lt!66776 lt!66782)))

(declare-fun lt!66784 () ListLongMap!1693)

(assert (=> b!128766 (= lt!66784 (getCurrentListMapNoExtraKeys!133 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66785 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66785 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66795 () (_ BitVec 64))

(assert (=> b!128766 (= lt!66795 (select (arr!2236 lt!66473) #b00000000000000000000000000000000))))

(assert (=> b!128766 (= lt!66786 (addApplyDifferent!88 lt!66784 lt!66785 (minValue!2666 newMap!16) lt!66795))))

(assert (=> b!128766 (= (apply!112 (+!166 lt!66784 (tuple2!2583 lt!66785 (minValue!2666 newMap!16))) lt!66795) (apply!112 lt!66784 lt!66795))))

(declare-fun b!128767 () Bool)

(assert (=> b!128767 (= e!84059 call!13942)))

(declare-fun b!128768 () Bool)

(declare-fun e!84053 () Bool)

(assert (=> b!128768 (= e!84053 (validKeyInArray!0 (select (arr!2236 lt!66473) #b00000000000000000000000000000000)))))

(declare-fun b!128769 () Bool)

(assert (=> b!128769 (= e!84056 (= (apply!112 lt!66797 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128770 () Bool)

(declare-fun e!84052 () Bool)

(assert (=> b!128770 (= e!84052 e!84057)))

(declare-fun c!23643 () Bool)

(assert (=> b!128770 (= c!23643 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128771 () Bool)

(declare-fun e!84061 () Bool)

(declare-fun e!84055 () Bool)

(assert (=> b!128771 (= e!84061 e!84055)))

(declare-fun res!62191 () Bool)

(assert (=> b!128771 (=> (not res!62191) (not e!84055))))

(assert (=> b!128771 (= res!62191 (contains!882 lt!66797 (select (arr!2236 lt!66473) #b00000000000000000000000000000000)))))

(assert (=> b!128771 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 lt!66473)))))

(declare-fun b!128772 () Bool)

(declare-fun res!62189 () Bool)

(assert (=> b!128772 (=> (not res!62189) (not e!84052))))

(assert (=> b!128772 (= res!62189 e!84061)))

(declare-fun res!62187 () Bool)

(assert (=> b!128772 (=> res!62187 e!84061)))

(assert (=> b!128772 (= res!62187 (not e!84053))))

(declare-fun res!62184 () Bool)

(assert (=> b!128772 (=> (not res!62184) (not e!84053))))

(assert (=> b!128772 (= res!62184 (bvslt #b00000000000000000000000000000000 (size!2501 lt!66473)))))

(declare-fun b!128773 () Bool)

(assert (=> b!128773 (= e!84059 call!13940)))

(declare-fun b!128774 () Bool)

(declare-fun e!84054 () Bool)

(declare-fun e!84062 () Bool)

(assert (=> b!128774 (= e!84054 e!84062)))

(declare-fun res!62192 () Bool)

(assert (=> b!128774 (= res!62192 call!13945)))

(assert (=> b!128774 (=> (not res!62192) (not e!84062))))

(declare-fun b!128775 () Bool)

(declare-fun e!84050 () ListLongMap!1693)

(assert (=> b!128775 (= e!84050 (+!166 call!13939 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13938 () Bool)

(assert (=> bm!13938 (= call!13944 (contains!882 lt!66797 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13939 () Bool)

(assert (=> bm!13939 (= call!13942 call!13939)))

(declare-fun b!128776 () Bool)

(declare-fun res!62186 () Bool)

(assert (=> b!128776 (=> (not res!62186) (not e!84052))))

(assert (=> b!128776 (= res!62186 e!84054)))

(declare-fun c!23642 () Bool)

(assert (=> b!128776 (= c!23642 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13940 () Bool)

(assert (=> bm!13940 (= call!13941 call!13943)))

(declare-fun b!128777 () Bool)

(assert (=> b!128777 (= e!84050 e!84060)))

(assert (=> b!128777 (= c!23641 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128778 () Bool)

(declare-fun e!84051 () Bool)

(assert (=> b!128778 (= e!84051 (validKeyInArray!0 (select (arr!2236 lt!66473) #b00000000000000000000000000000000)))))

(declare-fun bm!13941 () Bool)

(assert (=> bm!13941 (= call!13940 call!13941)))

(declare-fun b!128779 () Bool)

(assert (=> b!128779 (= e!84062 (= (apply!112 lt!66797 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!38971 () Bool)

(assert (=> d!38971 e!84052))

(declare-fun res!62188 () Bool)

(assert (=> d!38971 (=> (not res!62188) (not e!84052))))

(assert (=> d!38971 (= res!62188 (or (bvsge #b00000000000000000000000000000000 (size!2501 lt!66473)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 lt!66473)))))))

(declare-fun lt!66780 () ListLongMap!1693)

(assert (=> d!38971 (= lt!66797 lt!66780)))

(declare-fun lt!66793 () Unit!3998)

(assert (=> d!38971 (= lt!66793 e!84058)))

(declare-fun c!23644 () Bool)

(assert (=> d!38971 (= c!23644 e!84051)))

(declare-fun res!62190 () Bool)

(assert (=> d!38971 (=> (not res!62190) (not e!84051))))

(assert (=> d!38971 (= res!62190 (bvslt #b00000000000000000000000000000000 (size!2501 lt!66473)))))

(assert (=> d!38971 (= lt!66780 e!84050)))

(assert (=> d!38971 (= c!23645 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38971 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38971 (= (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66797)))

(declare-fun b!128780 () Bool)

(declare-fun Unit!4030 () Unit!3998)

(assert (=> b!128780 (= e!84058 Unit!4030)))

(declare-fun b!128781 () Bool)

(assert (=> b!128781 (= e!84055 (= (apply!112 lt!66797 (select (arr!2236 lt!66473) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 lt!66492) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 lt!66492)))))

(assert (=> b!128781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 lt!66473)))))

(declare-fun bm!13942 () Bool)

(assert (=> bm!13942 (= call!13943 (getCurrentListMapNoExtraKeys!133 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128782 () Bool)

(assert (=> b!128782 (= e!84054 (not call!13945))))

(assert (= (and d!38971 c!23645) b!128775))

(assert (= (and d!38971 (not c!23645)) b!128777))

(assert (= (and b!128777 c!23641) b!128762))

(assert (= (and b!128777 (not c!23641)) b!128764))

(assert (= (and b!128764 c!23640) b!128767))

(assert (= (and b!128764 (not c!23640)) b!128773))

(assert (= (or b!128767 b!128773) bm!13941))

(assert (= (or b!128762 bm!13941) bm!13940))

(assert (= (or b!128762 b!128767) bm!13939))

(assert (= (or b!128775 bm!13940) bm!13942))

(assert (= (or b!128775 bm!13939) bm!13936))

(assert (= (and d!38971 res!62190) b!128778))

(assert (= (and d!38971 c!23644) b!128766))

(assert (= (and d!38971 (not c!23644)) b!128780))

(assert (= (and d!38971 res!62188) b!128772))

(assert (= (and b!128772 res!62184) b!128768))

(assert (= (and b!128772 (not res!62187)) b!128771))

(assert (= (and b!128771 res!62191) b!128781))

(assert (= (and b!128772 res!62189) b!128776))

(assert (= (and b!128776 c!23642) b!128774))

(assert (= (and b!128776 (not c!23642)) b!128782))

(assert (= (and b!128774 res!62192) b!128779))

(assert (= (or b!128774 b!128782) bm!13937))

(assert (= (and b!128776 res!62186) b!128770))

(assert (= (and b!128770 c!23643) b!128765))

(assert (= (and b!128770 (not c!23643)) b!128763))

(assert (= (and b!128765 res!62185) b!128769))

(assert (= (or b!128765 b!128763) bm!13938))

(declare-fun b_lambda!5719 () Bool)

(assert (=> (not b_lambda!5719) (not b!128781)))

(assert (=> b!128781 t!6123))

(declare-fun b_and!7965 () Bool)

(assert (= b_and!7961 (and (=> t!6123 result!3905) b_and!7965)))

(assert (=> b!128781 t!6125))

(declare-fun b_and!7967 () Bool)

(assert (= b_and!7963 (and (=> t!6125 result!3907) b_and!7967)))

(declare-fun m!151007 () Bool)

(assert (=> bm!13938 m!151007))

(declare-fun m!151009 () Bool)

(assert (=> b!128779 m!151009))

(declare-fun m!151011 () Bool)

(assert (=> bm!13942 m!151011))

(declare-fun m!151013 () Bool)

(assert (=> b!128766 m!151013))

(declare-fun m!151015 () Bool)

(assert (=> b!128766 m!151015))

(declare-fun m!151017 () Bool)

(assert (=> b!128766 m!151017))

(declare-fun m!151019 () Bool)

(assert (=> b!128766 m!151019))

(declare-fun m!151021 () Bool)

(assert (=> b!128766 m!151021))

(declare-fun m!151023 () Bool)

(assert (=> b!128766 m!151023))

(declare-fun m!151025 () Bool)

(assert (=> b!128766 m!151025))

(declare-fun m!151027 () Bool)

(assert (=> b!128766 m!151027))

(declare-fun m!151029 () Bool)

(assert (=> b!128766 m!151029))

(declare-fun m!151031 () Bool)

(assert (=> b!128766 m!151031))

(declare-fun m!151033 () Bool)

(assert (=> b!128766 m!151033))

(assert (=> b!128766 m!151019))

(declare-fun m!151035 () Bool)

(assert (=> b!128766 m!151035))

(declare-fun m!151037 () Bool)

(assert (=> b!128766 m!151037))

(assert (=> b!128766 m!151017))

(declare-fun m!151039 () Bool)

(assert (=> b!128766 m!151039))

(assert (=> b!128766 m!151011))

(assert (=> b!128766 m!151031))

(declare-fun m!151041 () Bool)

(assert (=> b!128766 m!151041))

(assert (=> b!128766 m!151015))

(declare-fun m!151043 () Bool)

(assert (=> b!128766 m!151043))

(assert (=> d!38971 m!150007))

(assert (=> b!128778 m!151029))

(assert (=> b!128778 m!151029))

(declare-fun m!151045 () Bool)

(assert (=> b!128778 m!151045))

(declare-fun m!151047 () Bool)

(assert (=> bm!13937 m!151047))

(declare-fun m!151049 () Bool)

(assert (=> b!128775 m!151049))

(declare-fun m!151051 () Bool)

(assert (=> b!128769 m!151051))

(assert (=> b!128781 m!151029))

(declare-fun m!151053 () Bool)

(assert (=> b!128781 m!151053))

(declare-fun m!151055 () Bool)

(assert (=> b!128781 m!151055))

(assert (=> b!128781 m!150127))

(assert (=> b!128781 m!151029))

(assert (=> b!128781 m!151055))

(assert (=> b!128781 m!150127))

(declare-fun m!151057 () Bool)

(assert (=> b!128781 m!151057))

(assert (=> b!128768 m!151029))

(assert (=> b!128768 m!151029))

(assert (=> b!128768 m!151045))

(declare-fun m!151059 () Bool)

(assert (=> bm!13936 m!151059))

(assert (=> b!128771 m!151029))

(assert (=> b!128771 m!151029))

(declare-fun m!151061 () Bool)

(assert (=> b!128771 m!151061))

(assert (=> d!38755 d!38971))

(declare-fun d!38973 () Bool)

(declare-fun e!84065 () Bool)

(assert (=> d!38973 e!84065))

(declare-fun res!62195 () Bool)

(assert (=> d!38973 (=> (not res!62195) (not e!84065))))

(assert (=> d!38973 (= res!62195 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 (_keys!4542 newMap!16)))))))

(declare-fun lt!66800 () Unit!3998)

(declare-fun choose!41 (array!4724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1726) Unit!3998)

(assert (=> d!38973 (= lt!66800 (choose!41 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) lt!66482 lt!66489))))

(assert (=> d!38973 (bvslt (size!2501 (_keys!4542 newMap!16)) #b01111111111111111111111111111111)))

(assert (=> d!38973 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) lt!66482 lt!66489) lt!66800)))

(declare-fun b!128785 () Bool)

(assert (=> b!128785 (= e!84065 (arrayNoDuplicates!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) lt!66482 lt!66489))))

(assert (= (and d!38973 res!62195) b!128785))

(assert (=> d!38973 m!149785))

(declare-fun m!151063 () Bool)

(assert (=> d!38973 m!151063))

(assert (=> b!128785 m!150247))

(assert (=> b!128785 m!150245))

(assert (=> d!38755 d!38973))

(declare-fun d!38975 () Bool)

(declare-fun e!84067 () Bool)

(assert (=> d!38975 e!84067))

(declare-fun res!62196 () Bool)

(assert (=> d!38975 (=> res!62196 e!84067)))

(declare-fun lt!66803 () Bool)

(assert (=> d!38975 (= res!62196 (not lt!66803))))

(declare-fun lt!66802 () Bool)

(assert (=> d!38975 (= lt!66803 lt!66802)))

(declare-fun lt!66804 () Unit!3998)

(declare-fun e!84066 () Unit!3998)

(assert (=> d!38975 (= lt!66804 e!84066)))

(declare-fun c!23646 () Bool)

(assert (=> d!38975 (= c!23646 lt!66802)))

(assert (=> d!38975 (= lt!66802 (containsKey!171 (toList!862 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(assert (=> d!38975 (= (contains!882 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))) lt!66803)))

(declare-fun b!128786 () Bool)

(declare-fun lt!66801 () Unit!3998)

(assert (=> b!128786 (= e!84066 lt!66801)))

(assert (=> b!128786 (= lt!66801 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(assert (=> b!128786 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(declare-fun b!128787 () Bool)

(declare-fun Unit!4031 () Unit!3998)

(assert (=> b!128787 (= e!84066 Unit!4031)))

(declare-fun b!128788 () Bool)

(assert (=> b!128788 (= e!84067 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 lt!66473 lt!66492 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))))

(assert (= (and d!38975 c!23646) b!128786))

(assert (= (and d!38975 (not c!23646)) b!128787))

(assert (= (and d!38975 (not res!62196)) b!128788))

(assert (=> d!38975 m!150231))

(declare-fun m!151065 () Bool)

(assert (=> d!38975 m!151065))

(assert (=> b!128786 m!150231))

(declare-fun m!151067 () Bool)

(assert (=> b!128786 m!151067))

(assert (=> b!128786 m!150231))

(declare-fun m!151069 () Bool)

(assert (=> b!128786 m!151069))

(assert (=> b!128786 m!151069))

(declare-fun m!151071 () Bool)

(assert (=> b!128786 m!151071))

(assert (=> b!128788 m!150231))

(assert (=> b!128788 m!151069))

(assert (=> b!128788 m!151069))

(assert (=> b!128788 m!151071))

(assert (=> d!38755 d!38975))

(declare-fun d!38977 () Bool)

(declare-fun e!84070 () Bool)

(assert (=> d!38977 e!84070))

(declare-fun res!62199 () Bool)

(assert (=> d!38977 (=> (not res!62199) (not e!84070))))

(assert (=> d!38977 (= res!62199 (and (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2501 (_keys!4542 newMap!16))) (bvslt (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (size!2502 (_values!2788 newMap!16)))))))

(declare-fun lt!66807 () Unit!3998)

(declare-fun choose!793 (array!4724 array!4726 (_ BitVec 32) (_ BitVec 32) V!3451 V!3451 (_ BitVec 32) (_ BitVec 64) V!3451 Int) Unit!3998)

(assert (=> d!38977 (= lt!66807 (choose!793 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)))))

(assert (=> d!38977 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38977 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!38 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)) lt!66807)))

(declare-fun b!128791 () Bool)

(assert (=> b!128791 (= e!84070 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))))

(assert (= (and d!38977 res!62199) b!128791))

(assert (=> d!38977 m!149785))

(assert (=> d!38977 m!149783))

(declare-fun m!151073 () Bool)

(assert (=> d!38977 m!151073))

(assert (=> d!38977 m!150007))

(assert (=> b!128791 m!150247))

(assert (=> b!128791 m!150223))

(assert (=> b!128791 m!149841))

(assert (=> b!128791 m!150067))

(assert (=> b!128791 m!150235))

(assert (=> b!128791 m!149841))

(assert (=> d!38755 d!38977))

(assert (=> d!38755 d!38727))

(declare-fun b!128792 () Bool)

(declare-fun e!84072 () (_ BitVec 32))

(assert (=> b!128792 (= e!84072 #b00000000000000000000000000000000)))

(declare-fun call!13946 () (_ BitVec 32))

(declare-fun bm!13943 () Bool)

(assert (=> bm!13943 (= call!13946 (arrayCountValidKeys!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128793 () Bool)

(declare-fun e!84071 () (_ BitVec 32))

(assert (=> b!128793 (= e!84072 e!84071)))

(declare-fun c!23648 () Bool)

(assert (=> b!128793 (= c!23648 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun lt!66808 () (_ BitVec 32))

(declare-fun d!38979 () Bool)

(assert (=> d!38979 (and (bvsge lt!66808 #b00000000000000000000000000000000) (bvsle lt!66808 (bvsub (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> d!38979 (= lt!66808 e!84072)))

(declare-fun c!23647 () Bool)

(assert (=> d!38979 (= c!23647 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38979 (and (bvsle #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2501 (_keys!4542 newMap!16)) (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(assert (=> d!38979 (= (arrayCountValidKeys!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) lt!66808)))

(declare-fun b!128794 () Bool)

(assert (=> b!128794 (= e!84071 call!13946)))

(declare-fun b!128795 () Bool)

(assert (=> b!128795 (= e!84071 (bvadd #b00000000000000000000000000000001 call!13946))))

(assert (= (and d!38979 c!23647) b!128792))

(assert (= (and d!38979 (not c!23647)) b!128793))

(assert (= (and b!128793 c!23648) b!128795))

(assert (= (and b!128793 (not c!23648)) b!128794))

(assert (= (or b!128795 b!128794) bm!13943))

(declare-fun m!151075 () Bool)

(assert (=> bm!13943 m!151075))

(assert (=> b!128793 m!150963))

(assert (=> b!128793 m!150963))

(assert (=> b!128793 m!150979))

(assert (=> d!38755 d!38979))

(declare-fun e!84076 () Bool)

(declare-fun b!128796 () Bool)

(assert (=> b!128796 (= e!84076 (contains!885 lt!66489 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) lt!66482)))))

(declare-fun b!128798 () Bool)

(declare-fun e!84073 () Bool)

(declare-fun call!13947 () Bool)

(assert (=> b!128798 (= e!84073 call!13947)))

(declare-fun b!128799 () Bool)

(assert (=> b!128799 (= e!84073 call!13947)))

(declare-fun b!128797 () Bool)

(declare-fun e!84074 () Bool)

(declare-fun e!84075 () Bool)

(assert (=> b!128797 (= e!84074 e!84075)))

(declare-fun res!62201 () Bool)

(assert (=> b!128797 (=> (not res!62201) (not e!84075))))

(assert (=> b!128797 (= res!62201 (not e!84076))))

(declare-fun res!62200 () Bool)

(assert (=> b!128797 (=> (not res!62200) (not e!84076))))

(assert (=> b!128797 (= res!62200 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) lt!66482)))))

(declare-fun d!38981 () Bool)

(declare-fun res!62202 () Bool)

(assert (=> d!38981 (=> res!62202 e!84074)))

(assert (=> d!38981 (= res!62202 (bvsge lt!66482 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(assert (=> d!38981 (= (arrayNoDuplicates!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) lt!66482 lt!66489) e!84074)))

(declare-fun c!23649 () Bool)

(declare-fun bm!13944 () Bool)

(assert (=> bm!13944 (= call!13947 (arrayNoDuplicates!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (bvadd lt!66482 #b00000000000000000000000000000001) (ite c!23649 (Cons!1722 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) lt!66482) lt!66489) lt!66489)))))

(declare-fun b!128800 () Bool)

(assert (=> b!128800 (= e!84075 e!84073)))

(assert (=> b!128800 (= c!23649 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) lt!66482)))))

(assert (= (and d!38981 (not res!62202)) b!128797))

(assert (= (and b!128797 res!62200) b!128796))

(assert (= (and b!128797 res!62201) b!128800))

(assert (= (and b!128800 c!23649) b!128799))

(assert (= (and b!128800 (not c!23649)) b!128798))

(assert (= (or b!128799 b!128798) bm!13944))

(declare-fun m!151077 () Bool)

(assert (=> b!128796 m!151077))

(assert (=> b!128796 m!151077))

(declare-fun m!151079 () Bool)

(assert (=> b!128796 m!151079))

(assert (=> b!128797 m!151077))

(assert (=> b!128797 m!151077))

(declare-fun m!151081 () Bool)

(assert (=> b!128797 m!151081))

(assert (=> bm!13944 m!151077))

(declare-fun m!151083 () Bool)

(assert (=> bm!13944 m!151083))

(assert (=> b!128800 m!151077))

(assert (=> b!128800 m!151077))

(assert (=> b!128800 m!151081))

(assert (=> d!38755 d!38981))

(declare-fun d!38983 () Bool)

(assert (=> d!38983 (arrayContainsKey!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(declare-fun lt!66811 () Unit!3998)

(declare-fun choose!13 (array!4724 (_ BitVec 64) (_ BitVec 32)) Unit!3998)

(assert (=> d!38983 (= lt!66811 (choose!13 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))))))

(assert (=> d!38983 (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000)))

(assert (=> d!38983 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!66471 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287))) lt!66811)))

(declare-fun bs!5335 () Bool)

(assert (= bs!5335 d!38983))

(assert (=> bs!5335 m!149785))

(assert (=> bs!5335 m!150251))

(assert (=> bs!5335 m!149785))

(declare-fun m!151085 () Bool)

(assert (=> bs!5335 m!151085))

(assert (=> d!38755 d!38983))

(declare-fun b!128801 () Bool)

(declare-fun e!84078 () Bool)

(declare-fun e!84079 () Bool)

(assert (=> b!128801 (= e!84078 e!84079)))

(declare-fun c!23650 () Bool)

(assert (=> b!128801 (= c!23650 (validKeyInArray!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!128802 () Bool)

(declare-fun e!84077 () Bool)

(assert (=> b!128802 (= e!84079 e!84077)))

(declare-fun lt!66813 () (_ BitVec 64))

(assert (=> b!128802 (= lt!66813 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!66812 () Unit!3998)

(assert (=> b!128802 (= lt!66812 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) lt!66813 #b00000000000000000000000000000000))))

(assert (=> b!128802 (arrayContainsKey!0 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) lt!66813 #b00000000000000000000000000000000)))

(declare-fun lt!66814 () Unit!3998)

(assert (=> b!128802 (= lt!66814 lt!66812)))

(declare-fun res!62203 () Bool)

(assert (=> b!128802 (= res!62203 (= (seekEntryOrOpen!0 (select (arr!2236 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16)))) #b00000000000000000000000000000000) (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (mask!7073 newMap!16)) (Found!281 #b00000000000000000000000000000000)))))

(assert (=> b!128802 (=> (not res!62203) (not e!84077))))

(declare-fun b!128803 () Bool)

(declare-fun call!13948 () Bool)

(assert (=> b!128803 (= e!84077 call!13948)))

(declare-fun b!128804 () Bool)

(assert (=> b!128804 (= e!84079 call!13948)))

(declare-fun bm!13945 () Bool)

(assert (=> bm!13945 (= call!13948 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (mask!7073 newMap!16)))))

(declare-fun d!38985 () Bool)

(declare-fun res!62204 () Bool)

(assert (=> d!38985 (=> res!62204 e!84078)))

(assert (=> d!38985 (= res!62204 (bvsge #b00000000000000000000000000000000 (size!2501 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))))))))

(assert (=> d!38985 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4725 (store (arr!2236 (_keys!4542 newMap!16)) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (size!2501 (_keys!4542 newMap!16))) (mask!7073 newMap!16)) e!84078)))

(assert (= (and d!38985 (not res!62204)) b!128801))

(assert (= (and b!128801 c!23650) b!128802))

(assert (= (and b!128801 (not c!23650)) b!128804))

(assert (= (and b!128802 res!62203) b!128803))

(assert (= (or b!128803 b!128804) bm!13945))

(assert (=> b!128801 m!150963))

(assert (=> b!128801 m!150963))

(assert (=> b!128801 m!150979))

(assert (=> b!128802 m!150963))

(declare-fun m!151087 () Bool)

(assert (=> b!128802 m!151087))

(declare-fun m!151089 () Bool)

(assert (=> b!128802 m!151089))

(assert (=> b!128802 m!150963))

(declare-fun m!151091 () Bool)

(assert (=> b!128802 m!151091))

(declare-fun m!151093 () Bool)

(assert (=> bm!13945 m!151093))

(assert (=> d!38755 d!38985))

(declare-fun b!128805 () Bool)

(declare-fun e!84081 () (_ BitVec 32))

(assert (=> b!128805 (= e!84081 #b00000000000000000000000000000000)))

(declare-fun bm!13946 () Bool)

(declare-fun call!13949 () (_ BitVec 32))

(assert (=> bm!13946 (= call!13949 (arrayCountValidKeys!0 lt!66488 (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)))))

(declare-fun b!128806 () Bool)

(declare-fun e!84080 () (_ BitVec 32))

(assert (=> b!128806 (= e!84081 e!84080)))

(declare-fun c!23652 () Bool)

(assert (=> b!128806 (= c!23652 (validKeyInArray!0 (select (arr!2236 lt!66488) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(declare-fun lt!66815 () (_ BitVec 32))

(declare-fun d!38987 () Bool)

(assert (=> d!38987 (and (bvsge lt!66815 #b00000000000000000000000000000000) (bvsle lt!66815 (bvsub (size!2501 lt!66488) (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)))))))

(assert (=> d!38987 (= lt!66815 e!84081)))

(declare-fun c!23651 () Bool)

(assert (=> d!38987 (= c!23651 (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)))))

(assert (=> d!38987 (and (bvsle (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)) (bvsge (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000000) (bvsle (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001) (size!2501 lt!66488)))))

(assert (=> d!38987 (= (arrayCountValidKeys!0 lt!66488 (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) (bvadd (ite c!23464 (index!3283 lt!66287) (index!3280 lt!66287)) #b00000000000000000000000000000001)) lt!66815)))

(declare-fun b!128807 () Bool)

(assert (=> b!128807 (= e!84080 call!13949)))

(declare-fun b!128808 () Bool)

(assert (=> b!128808 (= e!84080 (bvadd #b00000000000000000000000000000001 call!13949))))

(assert (= (and d!38987 c!23651) b!128805))

(assert (= (and d!38987 (not c!23651)) b!128806))

(assert (= (and b!128806 c!23652) b!128808))

(assert (= (and b!128806 (not c!23652)) b!128807))

(assert (= (or b!128808 b!128807) bm!13946))

(declare-fun m!151095 () Bool)

(assert (=> bm!13946 m!151095))

(assert (=> b!128806 m!150927))

(assert (=> b!128806 m!150927))

(assert (=> b!128806 m!150929))

(assert (=> d!38755 d!38987))

(declare-fun d!38989 () Bool)

(assert (=> d!38989 (= (apply!112 lt!66604 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66604) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5336 () Bool)

(assert (= bs!5336 d!38989))

(declare-fun m!151097 () Bool)

(assert (=> bs!5336 m!151097))

(assert (=> bs!5336 m!151097))

(declare-fun m!151099 () Bool)

(assert (=> bs!5336 m!151099))

(assert (=> b!128441 d!38989))

(declare-fun d!38991 () Bool)

(declare-fun res!62205 () Bool)

(declare-fun e!84082 () Bool)

(assert (=> d!38991 (=> res!62205 e!84082)))

(assert (=> d!38991 (= res!62205 (and ((_ is Cons!1720) (toList!862 call!13833)) (= (_1!1301 (h!2323 (toList!862 call!13833))) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))))

(assert (=> d!38991 (= (containsKey!171 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))) e!84082)))

(declare-fun b!128809 () Bool)

(declare-fun e!84083 () Bool)

(assert (=> b!128809 (= e!84082 e!84083)))

(declare-fun res!62206 () Bool)

(assert (=> b!128809 (=> (not res!62206) (not e!84083))))

(assert (=> b!128809 (= res!62206 (and (or (not ((_ is Cons!1720) (toList!862 call!13833))) (bvsle (_1!1301 (h!2323 (toList!862 call!13833))) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))) ((_ is Cons!1720) (toList!862 call!13833)) (bvslt (_1!1301 (h!2323 (toList!862 call!13833))) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))))

(declare-fun b!128810 () Bool)

(assert (=> b!128810 (= e!84083 (containsKey!171 (t!6115 (toList!862 call!13833)) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(assert (= (and d!38991 (not res!62205)) b!128809))

(assert (= (and b!128809 res!62206) b!128810))

(declare-fun m!151101 () Bool)

(assert (=> b!128810 m!151101))

(assert (=> d!38753 d!38991))

(declare-fun d!38993 () Bool)

(declare-fun e!84084 () Bool)

(assert (=> d!38993 e!84084))

(declare-fun res!62207 () Bool)

(assert (=> d!38993 (=> (not res!62207) (not e!84084))))

(declare-fun lt!66816 () ListLongMap!1693)

(assert (=> d!38993 (= res!62207 (contains!882 lt!66816 (_1!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66817 () List!1724)

(assert (=> d!38993 (= lt!66816 (ListLongMap!1694 lt!66817))))

(declare-fun lt!66818 () Unit!3998)

(declare-fun lt!66819 () Unit!3998)

(assert (=> d!38993 (= lt!66818 lt!66819)))

(assert (=> d!38993 (= (getValueByKey!167 lt!66817 (_1!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38993 (= lt!66819 (lemmaContainsTupThenGetReturnValue!84 lt!66817 (_1!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38993 (= lt!66817 (insertStrictlySorted!86 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (_1!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!38993 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66816)))

(declare-fun b!128811 () Bool)

(declare-fun res!62208 () Bool)

(assert (=> b!128811 (=> (not res!62208) (not e!84084))))

(assert (=> b!128811 (= res!62208 (= (getValueByKey!167 (toList!862 lt!66816) (_1!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128812 () Bool)

(assert (=> b!128812 (= e!84084 (contains!884 (toList!862 lt!66816) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!38993 res!62207) b!128811))

(assert (= (and b!128811 res!62208) b!128812))

(declare-fun m!151103 () Bool)

(assert (=> d!38993 m!151103))

(declare-fun m!151105 () Bool)

(assert (=> d!38993 m!151105))

(declare-fun m!151107 () Bool)

(assert (=> d!38993 m!151107))

(declare-fun m!151109 () Bool)

(assert (=> d!38993 m!151109))

(declare-fun m!151111 () Bool)

(assert (=> b!128811 m!151111))

(declare-fun m!151113 () Bool)

(assert (=> b!128812 m!151113))

(assert (=> d!38809 d!38993))

(declare-fun c!23654 () Bool)

(declare-fun bm!13947 () Bool)

(declare-fun call!13951 () ListLongMap!1693)

(declare-fun call!13952 () ListLongMap!1693)

(declare-fun call!13954 () ListLongMap!1693)

(declare-fun call!13950 () ListLongMap!1693)

(declare-fun c!23658 () Bool)

(assert (=> bm!13947 (= call!13950 (+!166 (ite c!23658 call!13954 (ite c!23654 call!13952 call!13951)) (ite (or c!23658 c!23654) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128813 () Bool)

(declare-fun e!84095 () ListLongMap!1693)

(declare-fun call!13953 () ListLongMap!1693)

(assert (=> b!128813 (= e!84095 call!13953)))

(declare-fun b!128814 () Bool)

(declare-fun e!84092 () Bool)

(declare-fun call!13955 () Bool)

(assert (=> b!128814 (= e!84092 (not call!13955))))

(declare-fun bm!13948 () Bool)

(declare-fun call!13956 () Bool)

(declare-fun lt!66841 () ListLongMap!1693)

(assert (=> bm!13948 (= call!13956 (contains!882 lt!66841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128815 () Bool)

(declare-fun c!23653 () Bool)

(assert (=> b!128815 (= c!23653 (and (not (= (bvand lt!66299 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!66299 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84094 () ListLongMap!1693)

(assert (=> b!128815 (= e!84095 e!84094)))

(declare-fun b!128816 () Bool)

(declare-fun e!84091 () Bool)

(assert (=> b!128816 (= e!84092 e!84091)))

(declare-fun res!62210 () Bool)

(assert (=> b!128816 (= res!62210 call!13955)))

(assert (=> b!128816 (=> (not res!62210) (not e!84091))))

(declare-fun b!128817 () Bool)

(declare-fun e!84093 () Unit!3998)

(declare-fun lt!66830 () Unit!3998)

(assert (=> b!128817 (= e!84093 lt!66830)))

(declare-fun lt!66835 () ListLongMap!1693)

(assert (=> b!128817 (= lt!66835 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66836 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66836 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66834 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66834 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66823 () Unit!3998)

(assert (=> b!128817 (= lt!66823 (addStillContains!88 lt!66835 lt!66836 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!66834))))

(assert (=> b!128817 (contains!882 (+!166 lt!66835 (tuple2!2583 lt!66836 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66834)))

(declare-fun lt!66822 () Unit!3998)

(assert (=> b!128817 (= lt!66822 lt!66823)))

(declare-fun lt!66831 () ListLongMap!1693)

(assert (=> b!128817 (= lt!66831 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66827 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66827 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66840 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66840 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66833 () Unit!3998)

(assert (=> b!128817 (= lt!66833 (addApplyDifferent!88 lt!66831 lt!66827 (minValue!2666 newMap!16) lt!66840))))

(assert (=> b!128817 (= (apply!112 (+!166 lt!66831 (tuple2!2583 lt!66827 (minValue!2666 newMap!16))) lt!66840) (apply!112 lt!66831 lt!66840))))

(declare-fun lt!66825 () Unit!3998)

(assert (=> b!128817 (= lt!66825 lt!66833)))

(declare-fun lt!66832 () ListLongMap!1693)

(assert (=> b!128817 (= lt!66832 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66821 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66821 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66838 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66838 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66826 () Unit!3998)

(assert (=> b!128817 (= lt!66826 (addApplyDifferent!88 lt!66832 lt!66821 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!66838))))

(assert (=> b!128817 (= (apply!112 (+!166 lt!66832 (tuple2!2583 lt!66821 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66838) (apply!112 lt!66832 lt!66838))))

(declare-fun lt!66820 () Unit!3998)

(assert (=> b!128817 (= lt!66820 lt!66826)))

(declare-fun lt!66828 () ListLongMap!1693)

(assert (=> b!128817 (= lt!66828 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66829 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66829 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66839 () (_ BitVec 64))

(assert (=> b!128817 (= lt!66839 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!128817 (= lt!66830 (addApplyDifferent!88 lt!66828 lt!66829 (minValue!2666 newMap!16) lt!66839))))

(assert (=> b!128817 (= (apply!112 (+!166 lt!66828 (tuple2!2583 lt!66829 (minValue!2666 newMap!16))) lt!66839) (apply!112 lt!66828 lt!66839))))

(declare-fun b!128818 () Bool)

(assert (=> b!128818 (= e!84094 call!13953)))

(declare-fun b!128819 () Bool)

(declare-fun e!84088 () Bool)

(assert (=> b!128819 (= e!84088 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128820 () Bool)

(assert (=> b!128820 (= e!84091 (= (apply!112 lt!66841 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128821 () Bool)

(declare-fun e!84087 () Bool)

(assert (=> b!128821 (= e!84087 e!84092)))

(declare-fun c!23656 () Bool)

(assert (=> b!128821 (= c!23656 (not (= (bvand lt!66299 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128822 () Bool)

(declare-fun e!84096 () Bool)

(declare-fun e!84090 () Bool)

(assert (=> b!128822 (= e!84096 e!84090)))

(declare-fun res!62216 () Bool)

(assert (=> b!128822 (=> (not res!62216) (not e!84090))))

(assert (=> b!128822 (= res!62216 (contains!882 lt!66841 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128822 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128823 () Bool)

(declare-fun res!62214 () Bool)

(assert (=> b!128823 (=> (not res!62214) (not e!84087))))

(assert (=> b!128823 (= res!62214 e!84096)))

(declare-fun res!62212 () Bool)

(assert (=> b!128823 (=> res!62212 e!84096)))

(assert (=> b!128823 (= res!62212 (not e!84088))))

(declare-fun res!62209 () Bool)

(assert (=> b!128823 (=> (not res!62209) (not e!84088))))

(assert (=> b!128823 (= res!62209 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128824 () Bool)

(assert (=> b!128824 (= e!84094 call!13951)))

(declare-fun b!128825 () Bool)

(declare-fun e!84089 () Bool)

(declare-fun e!84097 () Bool)

(assert (=> b!128825 (= e!84089 e!84097)))

(declare-fun res!62217 () Bool)

(assert (=> b!128825 (= res!62217 call!13956)))

(assert (=> b!128825 (=> (not res!62217) (not e!84097))))

(declare-fun b!128826 () Bool)

(declare-fun e!84085 () ListLongMap!1693)

(assert (=> b!128826 (= e!84085 (+!166 call!13950 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13949 () Bool)

(assert (=> bm!13949 (= call!13955 (contains!882 lt!66841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13950 () Bool)

(assert (=> bm!13950 (= call!13953 call!13950)))

(declare-fun b!128827 () Bool)

(declare-fun res!62211 () Bool)

(assert (=> b!128827 (=> (not res!62211) (not e!84087))))

(assert (=> b!128827 (= res!62211 e!84089)))

(declare-fun c!23655 () Bool)

(assert (=> b!128827 (= c!23655 (not (= (bvand lt!66299 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13951 () Bool)

(assert (=> bm!13951 (= call!13952 call!13954)))

(declare-fun b!128828 () Bool)

(assert (=> b!128828 (= e!84085 e!84095)))

(assert (=> b!128828 (= c!23654 (and (not (= (bvand lt!66299 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!66299 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128829 () Bool)

(declare-fun e!84086 () Bool)

(assert (=> b!128829 (= e!84086 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13952 () Bool)

(assert (=> bm!13952 (= call!13951 call!13952)))

(declare-fun b!128830 () Bool)

(assert (=> b!128830 (= e!84097 (= (apply!112 lt!66841 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!38995 () Bool)

(assert (=> d!38995 e!84087))

(declare-fun res!62213 () Bool)

(assert (=> d!38995 (=> (not res!62213) (not e!84087))))

(assert (=> d!38995 (= res!62213 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66824 () ListLongMap!1693)

(assert (=> d!38995 (= lt!66841 lt!66824)))

(declare-fun lt!66837 () Unit!3998)

(assert (=> d!38995 (= lt!66837 e!84093)))

(declare-fun c!23657 () Bool)

(assert (=> d!38995 (= c!23657 e!84086)))

(declare-fun res!62215 () Bool)

(assert (=> d!38995 (=> (not res!62215) (not e!84086))))

(assert (=> d!38995 (= res!62215 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!38995 (= lt!66824 e!84085)))

(assert (=> d!38995 (= c!23658 (and (not (= (bvand lt!66299 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!66299 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!38995 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!38995 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66841)))

(declare-fun b!128831 () Bool)

(declare-fun Unit!4032 () Unit!3998)

(assert (=> b!128831 (= e!84093 Unit!4032)))

(declare-fun b!128832 () Bool)

(assert (=> b!128832 (= e!84090 (= (apply!112 lt!66841 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128832 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (_values!2788 newMap!16))))))

(assert (=> b!128832 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13953 () Bool)

(assert (=> bm!13953 (= call!13954 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128833 () Bool)

(assert (=> b!128833 (= e!84089 (not call!13956))))

(assert (= (and d!38995 c!23658) b!128826))

(assert (= (and d!38995 (not c!23658)) b!128828))

(assert (= (and b!128828 c!23654) b!128813))

(assert (= (and b!128828 (not c!23654)) b!128815))

(assert (= (and b!128815 c!23653) b!128818))

(assert (= (and b!128815 (not c!23653)) b!128824))

(assert (= (or b!128818 b!128824) bm!13952))

(assert (= (or b!128813 bm!13952) bm!13951))

(assert (= (or b!128813 b!128818) bm!13950))

(assert (= (or b!128826 bm!13951) bm!13953))

(assert (= (or b!128826 bm!13950) bm!13947))

(assert (= (and d!38995 res!62215) b!128829))

(assert (= (and d!38995 c!23657) b!128817))

(assert (= (and d!38995 (not c!23657)) b!128831))

(assert (= (and d!38995 res!62213) b!128823))

(assert (= (and b!128823 res!62209) b!128819))

(assert (= (and b!128823 (not res!62212)) b!128822))

(assert (= (and b!128822 res!62216) b!128832))

(assert (= (and b!128823 res!62214) b!128827))

(assert (= (and b!128827 c!23655) b!128825))

(assert (= (and b!128827 (not c!23655)) b!128833))

(assert (= (and b!128825 res!62217) b!128830))

(assert (= (or b!128825 b!128833) bm!13948))

(assert (= (and b!128827 res!62211) b!128821))

(assert (= (and b!128821 c!23656) b!128816))

(assert (= (and b!128821 (not c!23656)) b!128814))

(assert (= (and b!128816 res!62210) b!128820))

(assert (= (or b!128816 b!128814) bm!13949))

(declare-fun b_lambda!5721 () Bool)

(assert (=> (not b_lambda!5721) (not b!128832)))

(assert (=> b!128832 t!6123))

(declare-fun b_and!7969 () Bool)

(assert (= b_and!7965 (and (=> t!6123 result!3905) b_and!7969)))

(assert (=> b!128832 t!6125))

(declare-fun b_and!7971 () Bool)

(assert (= b_and!7967 (and (=> t!6125 result!3907) b_and!7971)))

(declare-fun m!151115 () Bool)

(assert (=> bm!13949 m!151115))

(declare-fun m!151117 () Bool)

(assert (=> b!128830 m!151117))

(assert (=> bm!13953 m!149783))

(declare-fun m!151119 () Bool)

(assert (=> bm!13953 m!151119))

(declare-fun m!151121 () Bool)

(assert (=> b!128817 m!151121))

(declare-fun m!151123 () Bool)

(assert (=> b!128817 m!151123))

(declare-fun m!151125 () Bool)

(assert (=> b!128817 m!151125))

(declare-fun m!151127 () Bool)

(assert (=> b!128817 m!151127))

(declare-fun m!151129 () Bool)

(assert (=> b!128817 m!151129))

(assert (=> b!128817 m!149783))

(declare-fun m!151131 () Bool)

(assert (=> b!128817 m!151131))

(declare-fun m!151133 () Bool)

(assert (=> b!128817 m!151133))

(declare-fun m!151135 () Bool)

(assert (=> b!128817 m!151135))

(assert (=> b!128817 m!150023))

(declare-fun m!151137 () Bool)

(assert (=> b!128817 m!151137))

(declare-fun m!151139 () Bool)

(assert (=> b!128817 m!151139))

(assert (=> b!128817 m!151127))

(declare-fun m!151141 () Bool)

(assert (=> b!128817 m!151141))

(declare-fun m!151143 () Bool)

(assert (=> b!128817 m!151143))

(assert (=> b!128817 m!151125))

(declare-fun m!151145 () Bool)

(assert (=> b!128817 m!151145))

(assert (=> b!128817 m!149783))

(assert (=> b!128817 m!151119))

(assert (=> b!128817 m!151137))

(assert (=> b!128817 m!149783))

(declare-fun m!151147 () Bool)

(assert (=> b!128817 m!151147))

(assert (=> b!128817 m!151123))

(declare-fun m!151149 () Bool)

(assert (=> b!128817 m!151149))

(assert (=> d!38995 m!150007))

(assert (=> b!128829 m!150023))

(assert (=> b!128829 m!150023))

(assert (=> b!128829 m!150115))

(declare-fun m!151151 () Bool)

(assert (=> bm!13948 m!151151))

(declare-fun m!151153 () Bool)

(assert (=> b!128826 m!151153))

(declare-fun m!151155 () Bool)

(assert (=> b!128820 m!151155))

(assert (=> b!128832 m!150023))

(declare-fun m!151157 () Bool)

(assert (=> b!128832 m!151157))

(assert (=> b!128832 m!150125))

(assert (=> b!128832 m!150127))

(assert (=> b!128832 m!150023))

(assert (=> b!128832 m!150125))

(assert (=> b!128832 m!150127))

(assert (=> b!128832 m!150129))

(assert (=> b!128819 m!150023))

(assert (=> b!128819 m!150023))

(assert (=> b!128819 m!150115))

(declare-fun m!151159 () Bool)

(assert (=> bm!13947 m!151159))

(assert (=> b!128822 m!150023))

(assert (=> b!128822 m!150023))

(declare-fun m!151161 () Bool)

(assert (=> b!128822 m!151161))

(assert (=> d!38809 d!38995))

(assert (=> d!38809 d!38727))

(assert (=> d!38809 d!38881))

(declare-fun d!38997 () Bool)

(assert (=> d!38997 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66299 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(assert (=> d!38997 true))

(declare-fun _$7!110 () Unit!3998)

(assert (=> d!38997 (= (choose!789 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66299 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2666 newMap!16) (defaultEntry!2805 newMap!16)) _$7!110)))

(declare-fun bs!5337 () Bool)

(assert (= bs!5337 d!38997))

(assert (=> bs!5337 m!149841))

(assert (=> bs!5337 m!149841))

(assert (=> bs!5337 m!150515))

(assert (=> bs!5337 m!149783))

(assert (=> bs!5337 m!150511))

(assert (=> d!38809 d!38997))

(declare-fun d!38999 () Bool)

(declare-fun e!84099 () Bool)

(assert (=> d!38999 e!84099))

(declare-fun res!62218 () Bool)

(assert (=> d!38999 (=> res!62218 e!84099)))

(declare-fun lt!66844 () Bool)

(assert (=> d!38999 (= res!62218 (not lt!66844))))

(declare-fun lt!66843 () Bool)

(assert (=> d!38999 (= lt!66844 lt!66843)))

(declare-fun lt!66845 () Unit!3998)

(declare-fun e!84098 () Unit!3998)

(assert (=> d!38999 (= lt!66845 e!84098)))

(declare-fun c!23659 () Bool)

(assert (=> d!38999 (= c!23659 lt!66843)))

(assert (=> d!38999 (= lt!66843 (containsKey!171 (toList!862 lt!66554) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!38999 (= (contains!882 lt!66554 #b0000000000000000000000000000000000000000000000000000000000000000) lt!66844)))

(declare-fun b!128834 () Bool)

(declare-fun lt!66842 () Unit!3998)

(assert (=> b!128834 (= e!84098 lt!66842)))

(assert (=> b!128834 (= lt!66842 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66554) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!128834 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128835 () Bool)

(declare-fun Unit!4033 () Unit!3998)

(assert (=> b!128835 (= e!84098 Unit!4033)))

(declare-fun b!128836 () Bool)

(assert (=> b!128836 (= e!84099 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!38999 c!23659) b!128834))

(assert (= (and d!38999 (not c!23659)) b!128835))

(assert (= (and d!38999 (not res!62218)) b!128836))

(declare-fun m!151163 () Bool)

(assert (=> d!38999 m!151163))

(declare-fun m!151165 () Bool)

(assert (=> b!128834 m!151165))

(declare-fun m!151167 () Bool)

(assert (=> b!128834 m!151167))

(assert (=> b!128834 m!151167))

(declare-fun m!151169 () Bool)

(assert (=> b!128834 m!151169))

(assert (=> b!128836 m!151167))

(assert (=> b!128836 m!151167))

(assert (=> b!128836 m!151169))

(assert (=> d!38775 d!38999))

(assert (=> d!38775 d!38685))

(declare-fun d!39001 () Bool)

(declare-fun lt!66848 () Bool)

(declare-fun content!127 (List!1726) (InoxSet (_ BitVec 64)))

(assert (=> d!39001 (= lt!66848 (select (content!127 Nil!1723) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!84104 () Bool)

(assert (=> d!39001 (= lt!66848 e!84104)))

(declare-fun res!62223 () Bool)

(assert (=> d!39001 (=> (not res!62223) (not e!84104))))

(assert (=> d!39001 (= res!62223 ((_ is Cons!1722) Nil!1723))))

(assert (=> d!39001 (= (contains!885 Nil!1723 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) lt!66848)))

(declare-fun b!128841 () Bool)

(declare-fun e!84105 () Bool)

(assert (=> b!128841 (= e!84104 e!84105)))

(declare-fun res!62224 () Bool)

(assert (=> b!128841 (=> res!62224 e!84105)))

(assert (=> b!128841 (= res!62224 (= (h!2325 Nil!1723) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128842 () Bool)

(assert (=> b!128842 (= e!84105 (contains!885 (t!6121 Nil!1723) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!39001 res!62223) b!128841))

(assert (= (and b!128841 (not res!62224)) b!128842))

(declare-fun m!151171 () Bool)

(assert (=> d!39001 m!151171))

(assert (=> d!39001 m!150023))

(declare-fun m!151173 () Bool)

(assert (=> d!39001 m!151173))

(assert (=> b!128842 m!150023))

(declare-fun m!151175 () Bool)

(assert (=> b!128842 m!151175))

(assert (=> b!128337 d!39001))

(assert (=> d!38805 d!38881))

(declare-fun d!39003 () Bool)

(assert (=> d!39003 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!66849 () Unit!3998)

(assert (=> d!39003 (= lt!66849 (choose!786 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84106 () Bool)

(assert (=> d!39003 e!84106))

(declare-fun res!62225 () Bool)

(assert (=> d!39003 (=> (not res!62225) (not e!84106))))

(assert (=> d!39003 (= res!62225 (isStrictlySorted!313 (toList!862 lt!66213)))))

(assert (=> d!39003 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000) lt!66849)))

(declare-fun b!128843 () Bool)

(assert (=> b!128843 (= e!84106 (containsKey!171 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39003 res!62225) b!128843))

(assert (=> d!39003 m!150155))

(assert (=> d!39003 m!150155))

(assert (=> d!39003 m!150157))

(declare-fun m!151177 () Bool)

(assert (=> d!39003 m!151177))

(declare-fun m!151179 () Bool)

(assert (=> d!39003 m!151179))

(assert (=> b!128843 m!150151))

(assert (=> b!128248 d!39003))

(assert (=> b!128248 d!38903))

(assert (=> b!128248 d!38905))

(assert (=> bm!13859 d!38705))

(declare-fun d!39005 () Bool)

(assert (=> d!39005 (= (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (not (isEmpty!404 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun bs!5338 () Bool)

(assert (= bs!5338 d!39005))

(assert (=> bs!5338 m!150047))

(declare-fun m!151181 () Bool)

(assert (=> bs!5338 m!151181))

(assert (=> b!128179 d!39005))

(assert (=> b!128179 d!38891))

(declare-fun d!39007 () Bool)

(assert (=> d!39007 (= (apply!112 lt!66554 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1466 (getValueByKey!167 (toList!862 lt!66554) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5339 () Bool)

(assert (= bs!5339 d!39007))

(assert (=> bs!5339 m!149865))

(declare-fun m!151183 () Bool)

(assert (=> bs!5339 m!151183))

(assert (=> bs!5339 m!151183))

(declare-fun m!151185 () Bool)

(assert (=> bs!5339 m!151185))

(assert (=> b!128410 d!39007))

(assert (=> b!128410 d!38741))

(declare-fun d!39009 () Bool)

(assert (=> d!39009 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(assert (=> d!39009 true))

(declare-fun _$5!128 () Unit!3998)

(assert (=> d!39009 (= (choose!785 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)) _$5!128)))

(declare-fun bs!5340 () Bool)

(assert (= bs!5340 d!39009))

(assert (=> bs!5340 m!149841))

(assert (=> bs!5340 m!149841))

(assert (=> bs!5340 m!150067))

(assert (=> bs!5340 m!149915))

(assert (=> bs!5340 m!150069))

(assert (=> d!38723 d!39009))

(assert (=> d!38723 d!38881))

(declare-fun d!39011 () Bool)

(assert (=> d!39011 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun lt!66850 () Unit!3998)

(assert (=> d!39011 (= lt!66850 (choose!786 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun e!84107 () Bool)

(assert (=> d!39011 e!84107))

(declare-fun res!62226 () Bool)

(assert (=> d!39011 (=> (not res!62226) (not e!84107))))

(assert (=> d!39011 (= res!62226 (isStrictlySorted!313 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))))

(assert (=> d!39011 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66850)))

(declare-fun b!128844 () Bool)

(assert (=> b!128844 (= e!84107 (containsKey!171 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!39011 res!62226) b!128844))

(assert (=> d!39011 m!149785))

(assert (=> d!39011 m!150075))

(assert (=> d!39011 m!150075))

(assert (=> d!39011 m!150077))

(assert (=> d!39011 m!149785))

(declare-fun m!151187 () Bool)

(assert (=> d!39011 m!151187))

(declare-fun m!151189 () Bool)

(assert (=> d!39011 m!151189))

(assert (=> b!128844 m!149785))

(assert (=> b!128844 m!150071))

(assert (=> b!128198 d!39011))

(declare-fun d!39013 () Bool)

(assert (=> d!39013 (= (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) (not (isEmpty!404 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(declare-fun bs!5341 () Bool)

(assert (= bs!5341 d!39013))

(assert (=> bs!5341 m!150075))

(declare-fun m!151191 () Bool)

(assert (=> bs!5341 m!151191))

(assert (=> b!128198 d!39013))

(declare-fun b!128848 () Bool)

(declare-fun e!84109 () Option!173)

(assert (=> b!128848 (= e!84109 None!171)))

(declare-fun b!128847 () Bool)

(assert (=> b!128847 (= e!84109 (getValueByKey!167 (t!6115 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128845 () Bool)

(declare-fun e!84108 () Option!173)

(assert (=> b!128845 (= e!84108 (Some!172 (_2!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))))))

(declare-fun d!39015 () Bool)

(declare-fun c!23660 () Bool)

(assert (=> d!39015 (= c!23660 (and ((_ is Cons!1720) (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (= (_1!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!39015 (= (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!84108)))

(declare-fun b!128846 () Bool)

(assert (=> b!128846 (= e!84108 e!84109)))

(declare-fun c!23661 () Bool)

(assert (=> b!128846 (= c!23661 (and ((_ is Cons!1720) (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (not (= (_1!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))))

(assert (= (and d!39015 c!23660) b!128845))

(assert (= (and d!39015 (not c!23660)) b!128846))

(assert (= (and b!128846 c!23661) b!128847))

(assert (= (and b!128846 (not c!23661)) b!128848))

(assert (=> b!128847 m!149785))

(declare-fun m!151193 () Bool)

(assert (=> b!128847 m!151193))

(assert (=> b!128198 d!39015))

(declare-fun d!39017 () Bool)

(assert (=> d!39017 (= (inRange!0 (ite c!23488 (index!3280 lt!66332) (index!3283 lt!66332)) (mask!7073 newMap!16)) (and (bvsge (ite c!23488 (index!3280 lt!66332) (index!3283 lt!66332)) #b00000000000000000000000000000000) (bvslt (ite c!23488 (index!3280 lt!66332) (index!3283 lt!66332)) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13858 d!39017))

(declare-fun b!128849 () Bool)

(declare-fun e!84111 () (_ BitVec 32))

(assert (=> b!128849 (= e!84111 #b00000000000000000000000000000000)))

(declare-fun bm!13954 () Bool)

(declare-fun call!13957 () (_ BitVec 32))

(assert (=> bm!13954 (= call!13957 (arrayCountValidKeys!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128850 () Bool)

(declare-fun e!84110 () (_ BitVec 32))

(assert (=> b!128850 (= e!84111 e!84110)))

(declare-fun c!23663 () Bool)

(assert (=> b!128850 (= c!23663 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!39019 () Bool)

(declare-fun lt!66851 () (_ BitVec 32))

(assert (=> d!39019 (and (bvsge lt!66851 #b00000000000000000000000000000000) (bvsle lt!66851 (bvsub (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!39019 (= lt!66851 e!84111)))

(declare-fun c!23662 () Bool)

(assert (=> d!39019 (= c!23662 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!39019 (and (bvsle #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!39019 (= (arrayCountValidKeys!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))) lt!66851)))

(declare-fun b!128851 () Bool)

(assert (=> b!128851 (= e!84110 call!13957)))

(declare-fun b!128852 () Bool)

(assert (=> b!128852 (= e!84110 (bvadd #b00000000000000000000000000000001 call!13957))))

(assert (= (and d!39019 c!23662) b!128849))

(assert (= (and d!39019 (not c!23662)) b!128850))

(assert (= (and b!128850 c!23663) b!128852))

(assert (= (and b!128850 (not c!23663)) b!128851))

(assert (= (or b!128852 b!128851) bm!13954))

(declare-fun m!151195 () Bool)

(assert (=> bm!13954 m!151195))

(assert (=> b!128850 m!150769))

(assert (=> b!128850 m!150769))

(assert (=> b!128850 m!150771))

(assert (=> b!128174 d!39019))

(declare-fun b!128853 () Bool)

(declare-fun e!84115 () Bool)

(assert (=> b!128853 (= e!84115 (contains!885 (ite c!23527 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) Nil!1723) Nil!1723) (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!128855 () Bool)

(declare-fun e!84112 () Bool)

(declare-fun call!13958 () Bool)

(assert (=> b!128855 (= e!84112 call!13958)))

(declare-fun b!128856 () Bool)

(assert (=> b!128856 (= e!84112 call!13958)))

(declare-fun b!128854 () Bool)

(declare-fun e!84113 () Bool)

(declare-fun e!84114 () Bool)

(assert (=> b!128854 (= e!84113 e!84114)))

(declare-fun res!62228 () Bool)

(assert (=> b!128854 (=> (not res!62228) (not e!84114))))

(assert (=> b!128854 (= res!62228 (not e!84115))))

(declare-fun res!62227 () Bool)

(assert (=> b!128854 (=> (not res!62227) (not e!84115))))

(assert (=> b!128854 (= res!62227 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!39021 () Bool)

(declare-fun res!62229 () Bool)

(assert (=> d!39021 (=> res!62229 e!84113)))

(assert (=> d!39021 (= res!62229 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39021 (= (arrayNoDuplicates!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23527 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) Nil!1723) Nil!1723)) e!84113)))

(declare-fun c!23664 () Bool)

(declare-fun bm!13955 () Bool)

(assert (=> bm!13955 (= call!13958 (arrayNoDuplicates!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!23664 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!23527 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) Nil!1723) Nil!1723)) (ite c!23527 (Cons!1722 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) Nil!1723) Nil!1723))))))

(declare-fun b!128857 () Bool)

(assert (=> b!128857 (= e!84114 e!84112)))

(assert (=> b!128857 (= c!23664 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!39021 (not res!62229)) b!128854))

(assert (= (and b!128854 res!62227) b!128853))

(assert (= (and b!128854 res!62228) b!128857))

(assert (= (and b!128857 c!23664) b!128856))

(assert (= (and b!128857 (not c!23664)) b!128855))

(assert (= (or b!128856 b!128855) bm!13955))

(declare-fun m!151197 () Bool)

(assert (=> b!128853 m!151197))

(assert (=> b!128853 m!151197))

(declare-fun m!151199 () Bool)

(assert (=> b!128853 m!151199))

(assert (=> b!128854 m!151197))

(assert (=> b!128854 m!151197))

(declare-fun m!151201 () Bool)

(assert (=> b!128854 m!151201))

(assert (=> bm!13955 m!151197))

(declare-fun m!151203 () Bool)

(assert (=> bm!13955 m!151203))

(assert (=> b!128857 m!151197))

(assert (=> b!128857 m!151197))

(assert (=> b!128857 m!151201))

(assert (=> bm!13884 d!39021))

(declare-fun d!39023 () Bool)

(assert (=> d!39023 (= (size!2505 newMap!16) (bvadd (_size!586 newMap!16) (bvsdiv (bvadd (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!128244 d!39023))

(declare-fun d!39025 () Bool)

(declare-fun res!62230 () Bool)

(declare-fun e!84116 () Bool)

(assert (=> d!39025 (=> res!62230 e!84116)))

(assert (=> d!39025 (= res!62230 (and ((_ is Cons!1720) (toList!862 call!13842)) (= (_1!1301 (h!2323 (toList!862 call!13842))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!39025 (= (containsKey!171 (toList!862 call!13842) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!84116)))

(declare-fun b!128858 () Bool)

(declare-fun e!84117 () Bool)

(assert (=> b!128858 (= e!84116 e!84117)))

(declare-fun res!62231 () Bool)

(assert (=> b!128858 (=> (not res!62231) (not e!84117))))

(assert (=> b!128858 (= res!62231 (and (or (not ((_ is Cons!1720) (toList!862 call!13842))) (bvsle (_1!1301 (h!2323 (toList!862 call!13842))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) ((_ is Cons!1720) (toList!862 call!13842)) (bvslt (_1!1301 (h!2323 (toList!862 call!13842))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(declare-fun b!128859 () Bool)

(assert (=> b!128859 (= e!84117 (containsKey!171 (t!6115 (toList!862 call!13842)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!39025 (not res!62230)) b!128858))

(assert (= (and b!128858 res!62231) b!128859))

(assert (=> b!128859 m!149785))

(declare-fun m!151205 () Bool)

(assert (=> b!128859 m!151205))

(assert (=> d!38763 d!39025))

(declare-fun d!39027 () Bool)

(assert (=> d!39027 (= (apply!112 lt!66378 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66378) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5342 () Bool)

(assert (= bs!5342 d!39027))

(assert (=> bs!5342 m!150793))

(assert (=> bs!5342 m!150793))

(declare-fun m!151207 () Bool)

(assert (=> bs!5342 m!151207))

(assert (=> b!128218 d!39027))

(declare-fun d!39029 () Bool)

(assert (=> d!39029 (= (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!404 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5343 () Bool)

(assert (= bs!5343 d!39029))

(assert (=> bs!5343 m!150177))

(declare-fun m!151209 () Bool)

(assert (=> bs!5343 m!151209))

(assert (=> b!128270 d!39029))

(declare-fun b!128863 () Bool)

(declare-fun e!84119 () Option!173)

(assert (=> b!128863 (= e!84119 None!171)))

(declare-fun b!128862 () Bool)

(assert (=> b!128862 (= e!84119 (getValueByKey!167 (t!6115 (toList!862 lt!66213)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128860 () Bool)

(declare-fun e!84118 () Option!173)

(assert (=> b!128860 (= e!84118 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66213)))))))

(declare-fun d!39031 () Bool)

(declare-fun c!23665 () Bool)

(assert (=> d!39031 (= c!23665 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39031 (= (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000) e!84118)))

(declare-fun b!128861 () Bool)

(assert (=> b!128861 (= e!84118 e!84119)))

(declare-fun c!23666 () Bool)

(assert (=> b!128861 (= c!23666 (and ((_ is Cons!1720) (toList!862 lt!66213)) (not (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!39031 c!23665) b!128860))

(assert (= (and d!39031 (not c!23665)) b!128861))

(assert (= (and b!128861 c!23666) b!128862))

(assert (= (and b!128861 (not c!23666)) b!128863))

(declare-fun m!151211 () Bool)

(assert (=> b!128862 m!151211))

(assert (=> b!128270 d!39031))

(declare-fun d!39033 () Bool)

(assert (=> d!39033 (isDefined!121 (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(declare-fun lt!66852 () Unit!3998)

(assert (=> d!39033 (= lt!66852 (choose!786 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(declare-fun e!84120 () Bool)

(assert (=> d!39033 e!84120))

(declare-fun res!62232 () Bool)

(assert (=> d!39033 (=> (not res!62232) (not e!84120))))

(assert (=> d!39033 (= res!62232 (isStrictlySorted!313 (toList!862 call!13833)))))

(assert (=> d!39033 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))) lt!66852)))

(declare-fun b!128864 () Bool)

(assert (=> b!128864 (= e!84120 (containsKey!171 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(assert (= (and d!39033 res!62232) b!128864))

(assert (=> d!39033 m!150197))

(assert (=> d!39033 m!150197))

(assert (=> d!39033 m!150199))

(declare-fun m!151213 () Bool)

(assert (=> d!39033 m!151213))

(declare-fun m!151215 () Bool)

(assert (=> d!39033 m!151215))

(assert (=> b!128864 m!150193))

(assert (=> b!128273 d!39033))

(declare-fun d!39035 () Bool)

(assert (=> d!39035 (= (isDefined!121 (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))) (not (isEmpty!404 (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))))

(declare-fun bs!5344 () Bool)

(assert (= bs!5344 d!39035))

(assert (=> bs!5344 m!150197))

(declare-fun m!151217 () Bool)

(assert (=> bs!5344 m!151217))

(assert (=> b!128273 d!39035))

(declare-fun b!128868 () Bool)

(declare-fun e!84122 () Option!173)

(assert (=> b!128868 (= e!84122 None!171)))

(declare-fun b!128867 () Bool)

(assert (=> b!128867 (= e!84122 (getValueByKey!167 (t!6115 (toList!862 call!13833)) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(declare-fun b!128865 () Bool)

(declare-fun e!84121 () Option!173)

(assert (=> b!128865 (= e!84121 (Some!172 (_2!1301 (h!2323 (toList!862 call!13833)))))))

(declare-fun c!23667 () Bool)

(declare-fun d!39037 () Bool)

(assert (=> d!39037 (= c!23667 (and ((_ is Cons!1720) (toList!862 call!13833)) (= (_1!1301 (h!2323 (toList!862 call!13833))) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))))

(assert (=> d!39037 (= (getValueByKey!167 (toList!862 call!13833) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))) e!84121)))

(declare-fun b!128866 () Bool)

(assert (=> b!128866 (= e!84121 e!84122)))

(declare-fun c!23668 () Bool)

(assert (=> b!128866 (= c!23668 (and ((_ is Cons!1720) (toList!862 call!13833)) (not (= (_1!1301 (h!2323 (toList!862 call!13833))) (ite c!23463 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))))

(assert (= (and d!39037 c!23667) b!128865))

(assert (= (and d!39037 (not c!23667)) b!128866))

(assert (= (and b!128866 c!23668) b!128867))

(assert (= (and b!128866 (not c!23668)) b!128868))

(declare-fun m!151219 () Bool)

(assert (=> b!128867 m!151219))

(assert (=> b!128273 d!39037))

(declare-fun d!39039 () Bool)

(assert (=> d!39039 (= (map!1391 (_2!1302 lt!66468)) (getCurrentListMap!534 (_keys!4542 (_2!1302 lt!66468)) (_values!2788 (_2!1302 lt!66468)) (mask!7073 (_2!1302 lt!66468)) (extraKeys!2582 (_2!1302 lt!66468)) (zeroValue!2666 (_2!1302 lt!66468)) (minValue!2666 (_2!1302 lt!66468)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66468))))))

(declare-fun bs!5345 () Bool)

(assert (= bs!5345 d!39039))

(declare-fun m!151221 () Bool)

(assert (=> bs!5345 m!151221))

(assert (=> b!128318 d!39039))

(declare-fun d!39041 () Bool)

(declare-fun e!84123 () Bool)

(assert (=> d!39041 e!84123))

(declare-fun res!62233 () Bool)

(assert (=> d!39041 (=> (not res!62233) (not e!84123))))

(declare-fun lt!66853 () ListLongMap!1693)

(assert (=> d!39041 (= res!62233 (contains!882 lt!66853 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!66854 () List!1724)

(assert (=> d!39041 (= lt!66853 (ListLongMap!1694 lt!66854))))

(declare-fun lt!66855 () Unit!3998)

(declare-fun lt!66856 () Unit!3998)

(assert (=> d!39041 (= lt!66855 lt!66856)))

(assert (=> d!39041 (= (getValueByKey!167 lt!66854 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39041 (= lt!66856 (lemmaContainsTupThenGetReturnValue!84 lt!66854 (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39041 (= lt!66854 (insertStrictlySorted!86 (toList!862 (map!1391 newMap!16)) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39041 (= (+!166 (map!1391 newMap!16) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!66853)))

(declare-fun b!128869 () Bool)

(declare-fun res!62234 () Bool)

(assert (=> b!128869 (=> (not res!62234) (not e!84123))))

(assert (=> b!128869 (= res!62234 (= (getValueByKey!167 (toList!862 lt!66853) (_1!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!128870 () Bool)

(assert (=> b!128870 (= e!84123 (contains!884 (toList!862 lt!66853) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39041 res!62233) b!128869))

(assert (= (and b!128869 res!62234) b!128870))

(declare-fun m!151223 () Bool)

(assert (=> d!39041 m!151223))

(declare-fun m!151225 () Bool)

(assert (=> d!39041 m!151225))

(declare-fun m!151227 () Bool)

(assert (=> d!39041 m!151227))

(declare-fun m!151229 () Bool)

(assert (=> d!39041 m!151229))

(declare-fun m!151231 () Bool)

(assert (=> b!128869 m!151231))

(declare-fun m!151233 () Bool)

(assert (=> b!128870 m!151233))

(assert (=> b!128318 d!39041))

(assert (=> b!128318 d!38681))

(declare-fun b!128871 () Bool)

(declare-fun e!84129 () Bool)

(declare-fun e!84128 () Bool)

(assert (=> b!128871 (= e!84129 e!84128)))

(declare-fun c!23671 () Bool)

(declare-fun e!84130 () Bool)

(assert (=> b!128871 (= c!23671 e!84130)))

(declare-fun res!62236 () Bool)

(assert (=> b!128871 (=> (not res!62236) (not e!84130))))

(assert (=> b!128871 (= res!62236 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128872 () Bool)

(declare-fun e!84127 () Bool)

(declare-fun lt!66863 () ListLongMap!1693)

(assert (=> b!128872 (= e!84127 (isEmpty!405 lt!66863))))

(declare-fun b!128873 () Bool)

(assert (=> b!128873 (= e!84130 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!128873 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!128874 () Bool)

(declare-fun lt!66857 () Unit!3998)

(declare-fun lt!66859 () Unit!3998)

(assert (=> b!128874 (= lt!66857 lt!66859)))

(declare-fun lt!66858 () ListLongMap!1693)

(declare-fun lt!66860 () (_ BitVec 64))

(declare-fun lt!66861 () V!3451)

(declare-fun lt!66862 () (_ BitVec 64))

(assert (=> b!128874 (not (contains!882 (+!166 lt!66858 (tuple2!2583 lt!66860 lt!66861)) lt!66862))))

(assert (=> b!128874 (= lt!66859 (addStillNotContains!59 lt!66858 lt!66860 lt!66861 lt!66862))))

(assert (=> b!128874 (= lt!66862 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!128874 (= lt!66861 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!128874 (= lt!66860 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(declare-fun call!13959 () ListLongMap!1693)

(assert (=> b!128874 (= lt!66858 call!13959)))

(declare-fun e!84124 () ListLongMap!1693)

(assert (=> b!128874 (= e!84124 (+!166 call!13959 (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!128875 () Bool)

(declare-fun res!62237 () Bool)

(assert (=> b!128875 (=> (not res!62237) (not e!84129))))

(assert (=> b!128875 (= res!62237 (not (contains!882 lt!66863 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128876 () Bool)

(assert (=> b!128876 (= e!84127 (= lt!66863 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128877 () Bool)

(assert (=> b!128877 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> b!128877 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!84126 () Bool)

(assert (=> b!128877 (= e!84126 (= (apply!112 lt!66863 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!128878 () Bool)

(declare-fun e!84125 () ListLongMap!1693)

(assert (=> b!128878 (= e!84125 (ListLongMap!1694 Nil!1721))))

(declare-fun b!128879 () Bool)

(assert (=> b!128879 (= e!84128 e!84126)))

(assert (=> b!128879 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun res!62235 () Bool)

(assert (=> b!128879 (= res!62235 (contains!882 lt!66863 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!128879 (=> (not res!62235) (not e!84126))))

(declare-fun d!39043 () Bool)

(assert (=> d!39043 e!84129))

(declare-fun res!62238 () Bool)

(assert (=> d!39043 (=> (not res!62238) (not e!84129))))

(assert (=> d!39043 (= res!62238 (not (contains!882 lt!66863 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39043 (= lt!66863 e!84125)))

(declare-fun c!23670 () Bool)

(assert (=> d!39043 (= c!23670 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!39043 (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992))))))

(assert (=> d!39043 (= (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))) lt!66863)))

(declare-fun b!128880 () Bool)

(assert (=> b!128880 (= e!84125 e!84124)))

(declare-fun c!23672 () Bool)

(assert (=> b!128880 (= c!23672 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!128881 () Bool)

(assert (=> b!128881 (= e!84124 call!13959)))

(declare-fun bm!13956 () Bool)

(assert (=> bm!13956 (= call!13959 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (_values!2788 (v!3143 (underlying!443 thiss!992))) (mask!7073 (v!3143 (underlying!443 thiss!992))) (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) (zeroValue!2666 (v!3143 (underlying!443 thiss!992))) (minValue!2666 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!128882 () Bool)

(assert (=> b!128882 (= e!84128 e!84127)))

(declare-fun c!23669 () Bool)

(assert (=> b!128882 (= c!23669 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!39043 c!23670) b!128878))

(assert (= (and d!39043 (not c!23670)) b!128880))

(assert (= (and b!128880 c!23672) b!128874))

(assert (= (and b!128880 (not c!23672)) b!128881))

(assert (= (or b!128874 b!128881) bm!13956))

(assert (= (and d!39043 res!62238) b!128875))

(assert (= (and b!128875 res!62237) b!128871))

(assert (= (and b!128871 res!62236) b!128873))

(assert (= (and b!128871 c!23671) b!128879))

(assert (= (and b!128871 (not c!23671)) b!128882))

(assert (= (and b!128879 res!62235) b!128877))

(assert (= (and b!128882 c!23669) b!128876))

(assert (= (and b!128882 (not c!23669)) b!128872))

(declare-fun b_lambda!5723 () Bool)

(assert (=> (not b_lambda!5723) (not b!128874)))

(assert (=> b!128874 t!6112))

(declare-fun b_and!7973 () Bool)

(assert (= b_and!7969 (and (=> t!6112 result!3891) b_and!7973)))

(assert (=> b!128874 t!6114))

(declare-fun b_and!7975 () Bool)

(assert (= b_and!7971 (and (=> t!6114 result!3895) b_and!7975)))

(declare-fun b_lambda!5725 () Bool)

(assert (=> (not b_lambda!5725) (not b!128877)))

(assert (=> b!128877 t!6112))

(declare-fun b_and!7977 () Bool)

(assert (= b_and!7973 (and (=> t!6112 result!3891) b_and!7977)))

(assert (=> b!128877 t!6114))

(declare-fun b_and!7979 () Bool)

(assert (= b_and!7975 (and (=> t!6114 result!3895) b_and!7979)))

(declare-fun m!151235 () Bool)

(assert (=> b!128879 m!151235))

(assert (=> b!128879 m!151235))

(declare-fun m!151237 () Bool)

(assert (=> b!128879 m!151237))

(declare-fun m!151239 () Bool)

(assert (=> d!39043 m!151239))

(assert (=> d!39043 m!149793))

(assert (=> b!128873 m!151235))

(assert (=> b!128873 m!151235))

(declare-fun m!151241 () Bool)

(assert (=> b!128873 m!151241))

(assert (=> b!128877 m!149781))

(declare-fun m!151243 () Bool)

(assert (=> b!128877 m!151243))

(assert (=> b!128877 m!149781))

(declare-fun m!151245 () Bool)

(assert (=> b!128877 m!151245))

(assert (=> b!128877 m!151243))

(assert (=> b!128877 m!151235))

(declare-fun m!151247 () Bool)

(assert (=> b!128877 m!151247))

(assert (=> b!128877 m!151235))

(declare-fun m!151249 () Bool)

(assert (=> b!128872 m!151249))

(declare-fun m!151251 () Bool)

(assert (=> bm!13956 m!151251))

(assert (=> b!128880 m!151235))

(assert (=> b!128880 m!151235))

(assert (=> b!128880 m!151241))

(assert (=> b!128876 m!151251))

(declare-fun m!151253 () Bool)

(assert (=> b!128875 m!151253))

(declare-fun m!151255 () Bool)

(assert (=> b!128874 m!151255))

(assert (=> b!128874 m!151243))

(assert (=> b!128874 m!149781))

(assert (=> b!128874 m!151245))

(declare-fun m!151257 () Bool)

(assert (=> b!128874 m!151257))

(assert (=> b!128874 m!151235))

(assert (=> b!128874 m!149781))

(declare-fun m!151259 () Bool)

(assert (=> b!128874 m!151259))

(assert (=> b!128874 m!151259))

(declare-fun m!151261 () Bool)

(assert (=> b!128874 m!151261))

(assert (=> b!128874 m!151243))

(assert (=> bm!13897 d!39043))

(declare-fun d!39045 () Bool)

(declare-fun e!84131 () Bool)

(assert (=> d!39045 e!84131))

(declare-fun res!62239 () Bool)

(assert (=> d!39045 (=> (not res!62239) (not e!84131))))

(declare-fun lt!66864 () ListLongMap!1693)

(assert (=> d!39045 (= res!62239 (contains!882 lt!66864 (_1!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))))))

(declare-fun lt!66865 () List!1724)

(assert (=> d!39045 (= lt!66864 (ListLongMap!1694 lt!66865))))

(declare-fun lt!66866 () Unit!3998)

(declare-fun lt!66867 () Unit!3998)

(assert (=> d!39045 (= lt!66866 lt!66867)))

(assert (=> d!39045 (= (getValueByKey!167 lt!66865 (_1!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39045 (= lt!66867 (lemmaContainsTupThenGetReturnValue!84 lt!66865 (_1!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39045 (= lt!66865 (insertStrictlySorted!86 (toList!862 lt!66524) (_1!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39045 (= (+!166 lt!66524 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) lt!66864)))

(declare-fun b!128883 () Bool)

(declare-fun res!62240 () Bool)

(assert (=> b!128883 (=> (not res!62240) (not e!84131))))

(assert (=> b!128883 (= res!62240 (= (getValueByKey!167 (toList!862 lt!66864) (_1!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))))))))

(declare-fun b!128884 () Bool)

(assert (=> b!128884 (= e!84131 (contains!884 (toList!862 lt!66864) (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))))))

(assert (= (and d!39045 res!62239) b!128883))

(assert (= (and b!128883 res!62240) b!128884))

(declare-fun m!151263 () Bool)

(assert (=> d!39045 m!151263))

(declare-fun m!151265 () Bool)

(assert (=> d!39045 m!151265))

(declare-fun m!151267 () Bool)

(assert (=> d!39045 m!151267))

(declare-fun m!151269 () Bool)

(assert (=> d!39045 m!151269))

(declare-fun m!151271 () Bool)

(assert (=> b!128883 m!151271))

(declare-fun m!151273 () Bool)

(assert (=> b!128884 m!151273))

(assert (=> b!128363 d!39045))

(declare-fun d!39047 () Bool)

(declare-fun e!84133 () Bool)

(assert (=> d!39047 e!84133))

(declare-fun res!62241 () Bool)

(assert (=> d!39047 (=> res!62241 e!84133)))

(declare-fun lt!66870 () Bool)

(assert (=> d!39047 (= res!62241 (not lt!66870))))

(declare-fun lt!66869 () Bool)

(assert (=> d!39047 (= lt!66870 lt!66869)))

(declare-fun lt!66871 () Unit!3998)

(declare-fun e!84132 () Unit!3998)

(assert (=> d!39047 (= lt!66871 e!84132)))

(declare-fun c!23673 () Bool)

(assert (=> d!39047 (= c!23673 lt!66869)))

(assert (=> d!39047 (= lt!66869 (containsKey!171 (toList!862 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) lt!66526))))

(assert (=> d!39047 (= (contains!882 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) lt!66526) lt!66870)))

(declare-fun b!128885 () Bool)

(declare-fun lt!66868 () Unit!3998)

(assert (=> b!128885 (= e!84132 lt!66868)))

(assert (=> b!128885 (= lt!66868 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) lt!66526))))

(assert (=> b!128885 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) lt!66526))))

(declare-fun b!128886 () Bool)

(declare-fun Unit!4034 () Unit!3998)

(assert (=> b!128886 (= e!84132 Unit!4034)))

(declare-fun b!128887 () Bool)

(assert (=> b!128887 (= e!84133 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) lt!66526)))))

(assert (= (and d!39047 c!23673) b!128885))

(assert (= (and d!39047 (not c!23673)) b!128886))

(assert (= (and d!39047 (not res!62241)) b!128887))

(declare-fun m!151275 () Bool)

(assert (=> d!39047 m!151275))

(declare-fun m!151277 () Bool)

(assert (=> b!128885 m!151277))

(declare-fun m!151279 () Bool)

(assert (=> b!128885 m!151279))

(assert (=> b!128885 m!151279))

(declare-fun m!151281 () Bool)

(assert (=> b!128885 m!151281))

(assert (=> b!128887 m!151279))

(assert (=> b!128887 m!151279))

(assert (=> b!128887 m!151281))

(assert (=> b!128363 d!39047))

(declare-fun d!39049 () Bool)

(assert (=> d!39049 (= (apply!112 (+!166 lt!66523 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) lt!66532) (apply!112 lt!66523 lt!66532))))

(declare-fun lt!66872 () Unit!3998)

(assert (=> d!39049 (= lt!66872 (choose!787 lt!66523 lt!66519 (minValue!2666 newMap!16) lt!66532))))

(declare-fun e!84134 () Bool)

(assert (=> d!39049 e!84134))

(declare-fun res!62242 () Bool)

(assert (=> d!39049 (=> (not res!62242) (not e!84134))))

(assert (=> d!39049 (= res!62242 (contains!882 lt!66523 lt!66532))))

(assert (=> d!39049 (= (addApplyDifferent!88 lt!66523 lt!66519 (minValue!2666 newMap!16) lt!66532) lt!66872)))

(declare-fun b!128888 () Bool)

(assert (=> b!128888 (= e!84134 (not (= lt!66532 lt!66519)))))

(assert (= (and d!39049 res!62242) b!128888))

(assert (=> d!39049 m!150317))

(assert (=> d!39049 m!150303))

(assert (=> d!39049 m!150303))

(assert (=> d!39049 m!150305))

(declare-fun m!151283 () Bool)

(assert (=> d!39049 m!151283))

(declare-fun m!151285 () Bool)

(assert (=> d!39049 m!151285))

(assert (=> b!128363 d!39049))

(declare-fun d!39051 () Bool)

(assert (=> d!39051 (= (apply!112 (+!166 lt!66523 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) lt!66532) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66523 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))) lt!66532)))))

(declare-fun bs!5346 () Bool)

(assert (= bs!5346 d!39051))

(declare-fun m!151287 () Bool)

(assert (=> bs!5346 m!151287))

(assert (=> bs!5346 m!151287))

(declare-fun m!151289 () Bool)

(assert (=> bs!5346 m!151289))

(assert (=> b!128363 d!39051))

(declare-fun d!39053 () Bool)

(declare-fun e!84135 () Bool)

(assert (=> d!39053 e!84135))

(declare-fun res!62243 () Bool)

(assert (=> d!39053 (=> (not res!62243) (not e!84135))))

(declare-fun lt!66873 () ListLongMap!1693)

(assert (=> d!39053 (= res!62243 (contains!882 lt!66873 (_1!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))))))

(declare-fun lt!66874 () List!1724)

(assert (=> d!39053 (= lt!66873 (ListLongMap!1694 lt!66874))))

(declare-fun lt!66875 () Unit!3998)

(declare-fun lt!66876 () Unit!3998)

(assert (=> d!39053 (= lt!66875 lt!66876)))

(assert (=> d!39053 (= (getValueByKey!167 lt!66874 (_1!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39053 (= lt!66876 (lemmaContainsTupThenGetReturnValue!84 lt!66874 (_1!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39053 (= lt!66874 (insertStrictlySorted!86 (toList!862 lt!66527) (_1!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39053 (= (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) lt!66873)))

(declare-fun b!128889 () Bool)

(declare-fun res!62244 () Bool)

(assert (=> b!128889 (=> (not res!62244) (not e!84135))))

(assert (=> b!128889 (= res!62244 (= (getValueByKey!167 (toList!862 lt!66873) (_1!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))))))))

(declare-fun b!128890 () Bool)

(assert (=> b!128890 (= e!84135 (contains!884 (toList!862 lt!66873) (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))))))

(assert (= (and d!39053 res!62243) b!128889))

(assert (= (and b!128889 res!62244) b!128890))

(declare-fun m!151291 () Bool)

(assert (=> d!39053 m!151291))

(declare-fun m!151293 () Bool)

(assert (=> d!39053 m!151293))

(declare-fun m!151295 () Bool)

(assert (=> d!39053 m!151295))

(declare-fun m!151297 () Bool)

(assert (=> d!39053 m!151297))

(declare-fun m!151299 () Bool)

(assert (=> b!128889 m!151299))

(declare-fun m!151301 () Bool)

(assert (=> b!128890 m!151301))

(assert (=> b!128363 d!39053))

(declare-fun d!39055 () Bool)

(assert (=> d!39055 (contains!882 (+!166 lt!66527 (tuple2!2583 lt!66528 (zeroValue!2666 newMap!16))) lt!66526)))

(declare-fun lt!66877 () Unit!3998)

(assert (=> d!39055 (= lt!66877 (choose!788 lt!66527 lt!66528 (zeroValue!2666 newMap!16) lt!66526))))

(assert (=> d!39055 (contains!882 lt!66527 lt!66526)))

(assert (=> d!39055 (= (addStillContains!88 lt!66527 lt!66528 (zeroValue!2666 newMap!16) lt!66526) lt!66877)))

(declare-fun bs!5347 () Bool)

(assert (= bs!5347 d!39055))

(assert (=> bs!5347 m!150313))

(assert (=> bs!5347 m!150313))

(assert (=> bs!5347 m!150315))

(declare-fun m!151303 () Bool)

(assert (=> bs!5347 m!151303))

(declare-fun m!151305 () Bool)

(assert (=> bs!5347 m!151305))

(assert (=> b!128363 d!39055))

(declare-fun d!39057 () Bool)

(assert (=> d!39057 (= (apply!112 lt!66523 lt!66532) (get!1466 (getValueByKey!167 (toList!862 lt!66523) lt!66532)))))

(declare-fun bs!5348 () Bool)

(assert (= bs!5348 d!39057))

(declare-fun m!151307 () Bool)

(assert (=> bs!5348 m!151307))

(assert (=> bs!5348 m!151307))

(declare-fun m!151309 () Bool)

(assert (=> bs!5348 m!151309))

(assert (=> b!128363 d!39057))

(declare-fun d!39059 () Bool)

(assert (=> d!39059 (= (apply!112 (+!166 lt!66520 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) lt!66531) (apply!112 lt!66520 lt!66531))))

(declare-fun lt!66878 () Unit!3998)

(assert (=> d!39059 (= lt!66878 (choose!787 lt!66520 lt!66521 (minValue!2666 newMap!16) lt!66531))))

(declare-fun e!84136 () Bool)

(assert (=> d!39059 e!84136))

(declare-fun res!62245 () Bool)

(assert (=> d!39059 (=> (not res!62245) (not e!84136))))

(assert (=> d!39059 (= res!62245 (contains!882 lt!66520 lt!66531))))

(assert (=> d!39059 (= (addApplyDifferent!88 lt!66520 lt!66521 (minValue!2666 newMap!16) lt!66531) lt!66878)))

(declare-fun b!128891 () Bool)

(assert (=> b!128891 (= e!84136 (not (= lt!66531 lt!66521)))))

(assert (= (and d!39059 res!62245) b!128891))

(assert (=> d!39059 m!150319))

(assert (=> d!39059 m!150301))

(assert (=> d!39059 m!150301))

(assert (=> d!39059 m!150321))

(declare-fun m!151311 () Bool)

(assert (=> d!39059 m!151311))

(declare-fun m!151313 () Bool)

(assert (=> d!39059 m!151313))

(assert (=> b!128363 d!39059))

(declare-fun d!39061 () Bool)

(assert (=> d!39061 (= (apply!112 (+!166 lt!66520 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) lt!66531) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66520 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))) lt!66531)))))

(declare-fun bs!5349 () Bool)

(assert (= bs!5349 d!39061))

(declare-fun m!151315 () Bool)

(assert (=> bs!5349 m!151315))

(assert (=> bs!5349 m!151315))

(declare-fun m!151317 () Bool)

(assert (=> bs!5349 m!151317))

(assert (=> b!128363 d!39061))

(declare-fun d!39063 () Bool)

(assert (=> d!39063 (= (apply!112 (+!166 lt!66524 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) lt!66530) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66524 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16)))) lt!66530)))))

(declare-fun bs!5350 () Bool)

(assert (= bs!5350 d!39063))

(declare-fun m!151319 () Bool)

(assert (=> bs!5350 m!151319))

(assert (=> bs!5350 m!151319))

(declare-fun m!151321 () Bool)

(assert (=> bs!5350 m!151321))

(assert (=> b!128363 d!39063))

(declare-fun d!39065 () Bool)

(assert (=> d!39065 (= (apply!112 lt!66520 lt!66531) (get!1466 (getValueByKey!167 (toList!862 lt!66520) lt!66531)))))

(declare-fun bs!5351 () Bool)

(assert (= bs!5351 d!39065))

(declare-fun m!151323 () Bool)

(assert (=> bs!5351 m!151323))

(assert (=> bs!5351 m!151323))

(declare-fun m!151325 () Bool)

(assert (=> bs!5351 m!151325))

(assert (=> b!128363 d!39065))

(declare-fun d!39067 () Bool)

(declare-fun e!84137 () Bool)

(assert (=> d!39067 e!84137))

(declare-fun res!62246 () Bool)

(assert (=> d!39067 (=> (not res!62246) (not e!84137))))

(declare-fun lt!66879 () ListLongMap!1693)

(assert (=> d!39067 (= res!62246 (contains!882 lt!66879 (_1!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))))))

(declare-fun lt!66880 () List!1724)

(assert (=> d!39067 (= lt!66879 (ListLongMap!1694 lt!66880))))

(declare-fun lt!66881 () Unit!3998)

(declare-fun lt!66882 () Unit!3998)

(assert (=> d!39067 (= lt!66881 lt!66882)))

(assert (=> d!39067 (= (getValueByKey!167 lt!66880 (_1!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))))))

(assert (=> d!39067 (= lt!66882 (lemmaContainsTupThenGetReturnValue!84 lt!66880 (_1!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))))))

(assert (=> d!39067 (= lt!66880 (insertStrictlySorted!86 (toList!862 lt!66523) (_1!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))))))

(assert (=> d!39067 (= (+!166 lt!66523 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))) lt!66879)))

(declare-fun b!128892 () Bool)

(declare-fun res!62247 () Bool)

(assert (=> b!128892 (=> (not res!62247) (not e!84137))))

(assert (=> b!128892 (= res!62247 (= (getValueByKey!167 (toList!862 lt!66879) (_1!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66519 (minValue!2666 newMap!16))))))))

(declare-fun b!128893 () Bool)

(assert (=> b!128893 (= e!84137 (contains!884 (toList!862 lt!66879) (tuple2!2583 lt!66519 (minValue!2666 newMap!16))))))

(assert (= (and d!39067 res!62246) b!128892))

(assert (= (and b!128892 res!62247) b!128893))

(declare-fun m!151327 () Bool)

(assert (=> d!39067 m!151327))

(declare-fun m!151329 () Bool)

(assert (=> d!39067 m!151329))

(declare-fun m!151331 () Bool)

(assert (=> d!39067 m!151331))

(declare-fun m!151333 () Bool)

(assert (=> d!39067 m!151333))

(declare-fun m!151335 () Bool)

(assert (=> b!128892 m!151335))

(declare-fun m!151337 () Bool)

(assert (=> b!128893 m!151337))

(assert (=> b!128363 d!39067))

(declare-fun d!39069 () Bool)

(declare-fun e!84138 () Bool)

(assert (=> d!39069 e!84138))

(declare-fun res!62248 () Bool)

(assert (=> d!39069 (=> (not res!62248) (not e!84138))))

(declare-fun lt!66883 () ListLongMap!1693)

(assert (=> d!39069 (= res!62248 (contains!882 lt!66883 (_1!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))))))

(declare-fun lt!66884 () List!1724)

(assert (=> d!39069 (= lt!66883 (ListLongMap!1694 lt!66884))))

(declare-fun lt!66885 () Unit!3998)

(declare-fun lt!66886 () Unit!3998)

(assert (=> d!39069 (= lt!66885 lt!66886)))

(assert (=> d!39069 (= (getValueByKey!167 lt!66884 (_1!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))))))

(assert (=> d!39069 (= lt!66886 (lemmaContainsTupThenGetReturnValue!84 lt!66884 (_1!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))))))

(assert (=> d!39069 (= lt!66884 (insertStrictlySorted!86 (toList!862 lt!66520) (_1!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))))))

(assert (=> d!39069 (= (+!166 lt!66520 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))) lt!66883)))

(declare-fun b!128894 () Bool)

(declare-fun res!62249 () Bool)

(assert (=> b!128894 (=> (not res!62249) (not e!84138))))

(assert (=> b!128894 (= res!62249 (= (getValueByKey!167 (toList!862 lt!66883) (_1!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66521 (minValue!2666 newMap!16))))))))

(declare-fun b!128895 () Bool)

(assert (=> b!128895 (= e!84138 (contains!884 (toList!862 lt!66883) (tuple2!2583 lt!66521 (minValue!2666 newMap!16))))))

(assert (= (and d!39069 res!62248) b!128894))

(assert (= (and b!128894 res!62249) b!128895))

(declare-fun m!151339 () Bool)

(assert (=> d!39069 m!151339))

(declare-fun m!151341 () Bool)

(assert (=> d!39069 m!151341))

(declare-fun m!151343 () Bool)

(assert (=> d!39069 m!151343))

(declare-fun m!151345 () Bool)

(assert (=> d!39069 m!151345))

(declare-fun m!151347 () Bool)

(assert (=> b!128894 m!151347))

(declare-fun m!151349 () Bool)

(assert (=> b!128895 m!151349))

(assert (=> b!128363 d!39069))

(declare-fun d!39071 () Bool)

(assert (=> d!39071 (= (apply!112 lt!66524 lt!66530) (get!1466 (getValueByKey!167 (toList!862 lt!66524) lt!66530)))))

(declare-fun bs!5352 () Bool)

(assert (= bs!5352 d!39071))

(declare-fun m!151351 () Bool)

(assert (=> bs!5352 m!151351))

(assert (=> bs!5352 m!151351))

(declare-fun m!151353 () Bool)

(assert (=> bs!5352 m!151353))

(assert (=> b!128363 d!39071))

(declare-fun d!39073 () Bool)

(assert (=> d!39073 (= (apply!112 (+!166 lt!66524 (tuple2!2583 lt!66513 (zeroValue!2666 newMap!16))) lt!66530) (apply!112 lt!66524 lt!66530))))

(declare-fun lt!66887 () Unit!3998)

(assert (=> d!39073 (= lt!66887 (choose!787 lt!66524 lt!66513 (zeroValue!2666 newMap!16) lt!66530))))

(declare-fun e!84139 () Bool)

(assert (=> d!39073 e!84139))

(declare-fun res!62250 () Bool)

(assert (=> d!39073 (=> (not res!62250) (not e!84139))))

(assert (=> d!39073 (= res!62250 (contains!882 lt!66524 lt!66530))))

(assert (=> d!39073 (= (addApplyDifferent!88 lt!66524 lt!66513 (zeroValue!2666 newMap!16) lt!66530) lt!66887)))

(declare-fun b!128896 () Bool)

(assert (=> b!128896 (= e!84139 (not (= lt!66530 lt!66513)))))

(assert (= (and d!39073 res!62250) b!128896))

(assert (=> d!39073 m!150311))

(assert (=> d!39073 m!150299))

(assert (=> d!39073 m!150299))

(assert (=> d!39073 m!150325))

(declare-fun m!151355 () Bool)

(assert (=> d!39073 m!151355))

(declare-fun m!151357 () Bool)

(assert (=> d!39073 m!151357))

(assert (=> b!128363 d!39073))

(declare-fun b!128897 () Bool)

(declare-fun e!84145 () Bool)

(declare-fun e!84144 () Bool)

(assert (=> b!128897 (= e!84145 e!84144)))

(declare-fun c!23676 () Bool)

(declare-fun e!84146 () Bool)

(assert (=> b!128897 (= c!23676 e!84146)))

(declare-fun res!62252 () Bool)

(assert (=> b!128897 (=> (not res!62252) (not e!84146))))

(assert (=> b!128897 (= res!62252 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128898 () Bool)

(declare-fun e!84143 () Bool)

(declare-fun lt!66894 () ListLongMap!1693)

(assert (=> b!128898 (= e!84143 (isEmpty!405 lt!66894))))

(declare-fun b!128899 () Bool)

(assert (=> b!128899 (= e!84146 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128899 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!128900 () Bool)

(declare-fun lt!66888 () Unit!3998)

(declare-fun lt!66890 () Unit!3998)

(assert (=> b!128900 (= lt!66888 lt!66890)))

(declare-fun lt!66893 () (_ BitVec 64))

(declare-fun lt!66889 () ListLongMap!1693)

(declare-fun lt!66892 () V!3451)

(declare-fun lt!66891 () (_ BitVec 64))

(assert (=> b!128900 (not (contains!882 (+!166 lt!66889 (tuple2!2583 lt!66891 lt!66892)) lt!66893))))

(assert (=> b!128900 (= lt!66890 (addStillNotContains!59 lt!66889 lt!66891 lt!66892 lt!66893))))

(assert (=> b!128900 (= lt!66893 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!128900 (= lt!66892 (get!1462 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!128900 (= lt!66891 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13960 () ListLongMap!1693)

(assert (=> b!128900 (= lt!66889 call!13960)))

(declare-fun e!84140 () ListLongMap!1693)

(assert (=> b!128900 (= e!84140 (+!166 call!13960 (tuple2!2583 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (get!1462 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!128901 () Bool)

(declare-fun res!62253 () Bool)

(assert (=> b!128901 (=> (not res!62253) (not e!84145))))

(assert (=> b!128901 (= res!62253 (not (contains!882 lt!66894 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128902 () Bool)

(assert (=> b!128902 (= e!84143 (= lt!66894 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16))))))

(declare-fun b!128903 () Bool)

(assert (=> b!128903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> b!128903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))))))))

(declare-fun e!84142 () Bool)

(assert (=> b!128903 (= e!84142 (= (apply!112 lt!66894 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!128904 () Bool)

(declare-fun e!84141 () ListLongMap!1693)

(assert (=> b!128904 (= e!84141 (ListLongMap!1694 Nil!1721))))

(declare-fun b!128905 () Bool)

(assert (=> b!128905 (= e!84144 e!84142)))

(assert (=> b!128905 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!62251 () Bool)

(assert (=> b!128905 (= res!62251 (contains!882 lt!66894 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128905 (=> (not res!62251) (not e!84142))))

(declare-fun d!39075 () Bool)

(assert (=> d!39075 e!84145))

(declare-fun res!62254 () Bool)

(assert (=> d!39075 (=> (not res!62254) (not e!84145))))

(assert (=> d!39075 (= res!62254 (not (contains!882 lt!66894 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39075 (= lt!66894 e!84141)))

(declare-fun c!23675 () Bool)

(assert (=> d!39075 (= c!23675 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39075 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39075 (= (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66894)))

(declare-fun b!128906 () Bool)

(assert (=> b!128906 (= e!84141 e!84140)))

(declare-fun c!23677 () Bool)

(assert (=> b!128906 (= c!23677 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128907 () Bool)

(assert (=> b!128907 (= e!84140 call!13960)))

(declare-fun bm!13957 () Bool)

(assert (=> bm!13957 (= call!13960 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16)))))

(declare-fun b!128908 () Bool)

(assert (=> b!128908 (= e!84144 e!84143)))

(declare-fun c!23674 () Bool)

(assert (=> b!128908 (= c!23674 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (= (and d!39075 c!23675) b!128904))

(assert (= (and d!39075 (not c!23675)) b!128906))

(assert (= (and b!128906 c!23677) b!128900))

(assert (= (and b!128906 (not c!23677)) b!128907))

(assert (= (or b!128900 b!128907) bm!13957))

(assert (= (and d!39075 res!62254) b!128901))

(assert (= (and b!128901 res!62253) b!128897))

(assert (= (and b!128897 res!62252) b!128899))

(assert (= (and b!128897 c!23676) b!128905))

(assert (= (and b!128897 (not c!23676)) b!128908))

(assert (= (and b!128905 res!62251) b!128903))

(assert (= (and b!128908 c!23674) b!128902))

(assert (= (and b!128908 (not c!23674)) b!128898))

(declare-fun b_lambda!5727 () Bool)

(assert (=> (not b_lambda!5727) (not b!128900)))

(assert (=> b!128900 t!6123))

(declare-fun b_and!7981 () Bool)

(assert (= b_and!7977 (and (=> t!6123 result!3905) b_and!7981)))

(assert (=> b!128900 t!6125))

(declare-fun b_and!7983 () Bool)

(assert (= b_and!7979 (and (=> t!6125 result!3907) b_and!7983)))

(declare-fun b_lambda!5729 () Bool)

(assert (=> (not b_lambda!5729) (not b!128903)))

(assert (=> b!128903 t!6123))

(declare-fun b_and!7985 () Bool)

(assert (= b_and!7981 (and (=> t!6123 result!3905) b_and!7985)))

(assert (=> b!128903 t!6125))

(declare-fun b_and!7987 () Bool)

(assert (= b_and!7983 (and (=> t!6125 result!3907) b_and!7987)))

(assert (=> b!128905 m!150023))

(assert (=> b!128905 m!150023))

(declare-fun m!151359 () Bool)

(assert (=> b!128905 m!151359))

(declare-fun m!151361 () Bool)

(assert (=> d!39075 m!151361))

(assert (=> d!39075 m!150007))

(assert (=> b!128899 m!150023))

(assert (=> b!128899 m!150023))

(assert (=> b!128899 m!150115))

(assert (=> b!128903 m!150127))

(assert (=> b!128903 m!150335))

(assert (=> b!128903 m!150127))

(assert (=> b!128903 m!150337))

(assert (=> b!128903 m!150335))

(assert (=> b!128903 m!150023))

(declare-fun m!151363 () Bool)

(assert (=> b!128903 m!151363))

(assert (=> b!128903 m!150023))

(declare-fun m!151365 () Bool)

(assert (=> b!128898 m!151365))

(declare-fun m!151367 () Bool)

(assert (=> bm!13957 m!151367))

(assert (=> b!128906 m!150023))

(assert (=> b!128906 m!150023))

(assert (=> b!128906 m!150115))

(assert (=> b!128902 m!151367))

(declare-fun m!151369 () Bool)

(assert (=> b!128901 m!151369))

(declare-fun m!151371 () Bool)

(assert (=> b!128900 m!151371))

(assert (=> b!128900 m!150335))

(assert (=> b!128900 m!150127))

(assert (=> b!128900 m!150337))

(declare-fun m!151373 () Bool)

(assert (=> b!128900 m!151373))

(assert (=> b!128900 m!150023))

(assert (=> b!128900 m!150127))

(declare-fun m!151375 () Bool)

(assert (=> b!128900 m!151375))

(assert (=> b!128900 m!151375))

(declare-fun m!151377 () Bool)

(assert (=> b!128900 m!151377))

(assert (=> b!128900 m!150335))

(assert (=> b!128363 d!39075))

(declare-fun b!128921 () Bool)

(declare-fun c!23684 () Bool)

(declare-fun lt!66900 () (_ BitVec 64))

(assert (=> b!128921 (= c!23684 (= lt!66900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84155 () SeekEntryResult!281)

(declare-fun e!84153 () SeekEntryResult!281)

(assert (=> b!128921 (= e!84155 e!84153)))

(declare-fun b!128922 () Bool)

(declare-fun e!84154 () SeekEntryResult!281)

(assert (=> b!128922 (= e!84154 Undefined!281)))

(declare-fun b!128923 () Bool)

(assert (=> b!128923 (= e!84155 (Found!281 (index!3282 lt!66325)))))

(declare-fun lt!66899 () SeekEntryResult!281)

(declare-fun d!39077 () Bool)

(assert (=> d!39077 (and (or ((_ is Undefined!281) lt!66899) (not ((_ is Found!281) lt!66899)) (and (bvsge (index!3281 lt!66899) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66899) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66899) ((_ is Found!281) lt!66899) (not ((_ is MissingVacant!281) lt!66899)) (not (= (index!3283 lt!66899) (index!3282 lt!66325))) (and (bvsge (index!3283 lt!66899) #b00000000000000000000000000000000) (bvslt (index!3283 lt!66899) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66899) (ite ((_ is Found!281) lt!66899) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66899)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) (and ((_ is MissingVacant!281) lt!66899) (= (index!3283 lt!66899) (index!3282 lt!66325)) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!39077 (= lt!66899 e!84154)))

(declare-fun c!23686 () Bool)

(assert (=> d!39077 (= c!23686 (bvsge (x!15132 lt!66325) #b01111111111111111111111111111110))))

(assert (=> d!39077 (= lt!66900 (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66325)))))

(assert (=> d!39077 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39077 (= (seekKeyOrZeroReturnVacant!0 (x!15132 lt!66325) (index!3282 lt!66325) (index!3282 lt!66325) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)) lt!66899)))

(declare-fun b!128924 () Bool)

(assert (=> b!128924 (= e!84153 (seekKeyOrZeroReturnVacant!0 (bvadd (x!15132 lt!66325) #b00000000000000000000000000000001) (nextIndex!0 (index!3282 lt!66325) (x!15132 lt!66325) (mask!7073 newMap!16)) (index!3282 lt!66325) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun b!128925 () Bool)

(assert (=> b!128925 (= e!84154 e!84155)))

(declare-fun c!23685 () Bool)

(assert (=> b!128925 (= c!23685 (= lt!66900 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!128926 () Bool)

(assert (=> b!128926 (= e!84153 (MissingVacant!281 (index!3282 lt!66325)))))

(assert (= (and d!39077 c!23686) b!128922))

(assert (= (and d!39077 (not c!23686)) b!128925))

(assert (= (and b!128925 c!23685) b!128923))

(assert (= (and b!128925 (not c!23685)) b!128921))

(assert (= (and b!128921 c!23684) b!128926))

(assert (= (and b!128921 (not c!23684)) b!128924))

(declare-fun m!151379 () Bool)

(assert (=> d!39077 m!151379))

(declare-fun m!151381 () Bool)

(assert (=> d!39077 m!151381))

(assert (=> d!39077 m!149999))

(assert (=> d!39077 m!150007))

(declare-fun m!151383 () Bool)

(assert (=> b!128924 m!151383))

(assert (=> b!128924 m!151383))

(assert (=> b!128924 m!149785))

(declare-fun m!151385 () Bool)

(assert (=> b!128924 m!151385))

(assert (=> b!128143 d!39077))

(assert (=> bm!13904 d!38845))

(declare-fun d!39079 () Bool)

(declare-fun e!84157 () Bool)

(assert (=> d!39079 e!84157))

(declare-fun res!62255 () Bool)

(assert (=> d!39079 (=> res!62255 e!84157)))

(declare-fun lt!66903 () Bool)

(assert (=> d!39079 (= res!62255 (not lt!66903))))

(declare-fun lt!66902 () Bool)

(assert (=> d!39079 (= lt!66903 lt!66902)))

(declare-fun lt!66904 () Unit!3998)

(declare-fun e!84156 () Unit!3998)

(assert (=> d!39079 (= lt!66904 e!84156)))

(declare-fun c!23687 () Bool)

(assert (=> d!39079 (= c!23687 lt!66902)))

(assert (=> d!39079 (= lt!66902 (containsKey!171 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))

(assert (=> d!39079 (= (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))) lt!66903)))

(declare-fun b!128927 () Bool)

(declare-fun lt!66901 () Unit!3998)

(assert (=> b!128927 (= e!84156 lt!66901)))

(assert (=> b!128927 (= lt!66901 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))

(assert (=> b!128927 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287))))))

(declare-fun b!128928 () Bool)

(declare-fun Unit!4035 () Unit!3998)

(assert (=> b!128928 (= e!84156 Unit!4035)))

(declare-fun b!128929 () Bool)

(assert (=> b!128929 (= e!84157 (isDefined!121 (getValueByKey!167 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))))

(assert (= (and d!39079 c!23687) b!128927))

(assert (= (and d!39079 (not c!23687)) b!128928))

(assert (= (and d!39079 (not res!62255)) b!128929))

(assert (=> d!39079 m!149947))

(declare-fun m!151387 () Bool)

(assert (=> d!39079 m!151387))

(assert (=> b!128927 m!149947))

(declare-fun m!151389 () Bool)

(assert (=> b!128927 m!151389))

(assert (=> b!128927 m!149947))

(declare-fun m!151391 () Bool)

(assert (=> b!128927 m!151391))

(assert (=> b!128927 m!151391))

(declare-fun m!151393 () Bool)

(assert (=> b!128927 m!151393))

(assert (=> b!128929 m!149947))

(assert (=> b!128929 m!151391))

(assert (=> b!128929 m!151391))

(assert (=> b!128929 m!151393))

(assert (=> b!128194 d!39079))

(declare-fun c!23693 () Bool)

(declare-fun call!13961 () ListLongMap!1693)

(declare-fun call!13963 () ListLongMap!1693)

(declare-fun c!23689 () Bool)

(declare-fun bm!13958 () Bool)

(declare-fun call!13962 () ListLongMap!1693)

(declare-fun call!13965 () ListLongMap!1693)

(assert (=> bm!13958 (= call!13961 (+!166 (ite c!23693 call!13965 (ite c!23689 call!13963 call!13962)) (ite (or c!23693 c!23689) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!128930 () Bool)

(declare-fun e!84168 () ListLongMap!1693)

(declare-fun call!13964 () ListLongMap!1693)

(assert (=> b!128930 (= e!84168 call!13964)))

(declare-fun b!128931 () Bool)

(declare-fun e!84165 () Bool)

(declare-fun call!13966 () Bool)

(assert (=> b!128931 (= e!84165 (not call!13966))))

(declare-fun bm!13959 () Bool)

(declare-fun call!13967 () Bool)

(declare-fun lt!66926 () ListLongMap!1693)

(assert (=> bm!13959 (= call!13967 (contains!882 lt!66926 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128932 () Bool)

(declare-fun c!23688 () Bool)

(assert (=> b!128932 (= c!23688 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84167 () ListLongMap!1693)

(assert (=> b!128932 (= e!84168 e!84167)))

(declare-fun b!128933 () Bool)

(declare-fun e!84164 () Bool)

(assert (=> b!128933 (= e!84165 e!84164)))

(declare-fun res!62257 () Bool)

(assert (=> b!128933 (= res!62257 call!13966)))

(assert (=> b!128933 (=> (not res!62257) (not e!84164))))

(declare-fun b!128934 () Bool)

(declare-fun e!84166 () Unit!3998)

(declare-fun lt!66915 () Unit!3998)

(assert (=> b!128934 (= e!84166 lt!66915)))

(declare-fun lt!66920 () ListLongMap!1693)

(assert (=> b!128934 (= lt!66920 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66921 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66921 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66919 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66919 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66908 () Unit!3998)

(assert (=> b!128934 (= lt!66908 (addStillContains!88 lt!66920 lt!66921 (zeroValue!2666 newMap!16) lt!66919))))

(assert (=> b!128934 (contains!882 (+!166 lt!66920 (tuple2!2583 lt!66921 (zeroValue!2666 newMap!16))) lt!66919)))

(declare-fun lt!66907 () Unit!3998)

(assert (=> b!128934 (= lt!66907 lt!66908)))

(declare-fun lt!66916 () ListLongMap!1693)

(assert (=> b!128934 (= lt!66916 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66912 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66912 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66925 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66925 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66918 () Unit!3998)

(assert (=> b!128934 (= lt!66918 (addApplyDifferent!88 lt!66916 lt!66912 (minValue!2666 newMap!16) lt!66925))))

(assert (=> b!128934 (= (apply!112 (+!166 lt!66916 (tuple2!2583 lt!66912 (minValue!2666 newMap!16))) lt!66925) (apply!112 lt!66916 lt!66925))))

(declare-fun lt!66910 () Unit!3998)

(assert (=> b!128934 (= lt!66910 lt!66918)))

(declare-fun lt!66917 () ListLongMap!1693)

(assert (=> b!128934 (= lt!66917 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66906 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66906 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66923 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66923 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66911 () Unit!3998)

(assert (=> b!128934 (= lt!66911 (addApplyDifferent!88 lt!66917 lt!66906 (zeroValue!2666 newMap!16) lt!66923))))

(assert (=> b!128934 (= (apply!112 (+!166 lt!66917 (tuple2!2583 lt!66906 (zeroValue!2666 newMap!16))) lt!66923) (apply!112 lt!66917 lt!66923))))

(declare-fun lt!66905 () Unit!3998)

(assert (=> b!128934 (= lt!66905 lt!66911)))

(declare-fun lt!66913 () ListLongMap!1693)

(assert (=> b!128934 (= lt!66913 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66914 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66914 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!66924 () (_ BitVec 64))

(assert (=> b!128934 (= lt!66924 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!128934 (= lt!66915 (addApplyDifferent!88 lt!66913 lt!66914 (minValue!2666 newMap!16) lt!66924))))

(assert (=> b!128934 (= (apply!112 (+!166 lt!66913 (tuple2!2583 lt!66914 (minValue!2666 newMap!16))) lt!66924) (apply!112 lt!66913 lt!66924))))

(declare-fun b!128935 () Bool)

(assert (=> b!128935 (= e!84167 call!13964)))

(declare-fun b!128936 () Bool)

(declare-fun e!84161 () Bool)

(assert (=> b!128936 (= e!84161 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128937 () Bool)

(assert (=> b!128937 (= e!84164 (= (apply!112 lt!66926 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!128938 () Bool)

(declare-fun e!84160 () Bool)

(assert (=> b!128938 (= e!84160 e!84165)))

(declare-fun c!23691 () Bool)

(assert (=> b!128938 (= c!23691 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128939 () Bool)

(declare-fun e!84169 () Bool)

(declare-fun e!84163 () Bool)

(assert (=> b!128939 (= e!84169 e!84163)))

(declare-fun res!62263 () Bool)

(assert (=> b!128939 (=> (not res!62263) (not e!84163))))

(assert (=> b!128939 (= res!62263 (contains!882 lt!66926 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128939 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128940 () Bool)

(declare-fun res!62261 () Bool)

(assert (=> b!128940 (=> (not res!62261) (not e!84160))))

(assert (=> b!128940 (= res!62261 e!84169)))

(declare-fun res!62259 () Bool)

(assert (=> b!128940 (=> res!62259 e!84169)))

(assert (=> b!128940 (= res!62259 (not e!84161))))

(declare-fun res!62256 () Bool)

(assert (=> b!128940 (=> (not res!62256) (not e!84161))))

(assert (=> b!128940 (= res!62256 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128941 () Bool)

(assert (=> b!128941 (= e!84167 call!13962)))

(declare-fun b!128942 () Bool)

(declare-fun e!84162 () Bool)

(declare-fun e!84170 () Bool)

(assert (=> b!128942 (= e!84162 e!84170)))

(declare-fun res!62264 () Bool)

(assert (=> b!128942 (= res!62264 call!13967)))

(assert (=> b!128942 (=> (not res!62264) (not e!84170))))

(declare-fun b!128943 () Bool)

(declare-fun e!84158 () ListLongMap!1693)

(assert (=> b!128943 (= e!84158 (+!166 call!13961 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13960 () Bool)

(assert (=> bm!13960 (= call!13966 (contains!882 lt!66926 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13961 () Bool)

(assert (=> bm!13961 (= call!13964 call!13961)))

(declare-fun b!128944 () Bool)

(declare-fun res!62258 () Bool)

(assert (=> b!128944 (=> (not res!62258) (not e!84160))))

(assert (=> b!128944 (= res!62258 e!84162)))

(declare-fun c!23690 () Bool)

(assert (=> b!128944 (= c!23690 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13962 () Bool)

(assert (=> bm!13962 (= call!13963 call!13965)))

(declare-fun b!128945 () Bool)

(assert (=> b!128945 (= e!84158 e!84168)))

(assert (=> b!128945 (= c!23689 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!128946 () Bool)

(declare-fun e!84159 () Bool)

(assert (=> b!128946 (= e!84159 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13963 () Bool)

(assert (=> bm!13963 (= call!13962 call!13963)))

(declare-fun b!128947 () Bool)

(assert (=> b!128947 (= e!84170 (= (apply!112 lt!66926 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!39081 () Bool)

(assert (=> d!39081 e!84160))

(declare-fun res!62260 () Bool)

(assert (=> d!39081 (=> (not res!62260) (not e!84160))))

(assert (=> d!39081 (= res!62260 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66909 () ListLongMap!1693)

(assert (=> d!39081 (= lt!66926 lt!66909)))

(declare-fun lt!66922 () Unit!3998)

(assert (=> d!39081 (= lt!66922 e!84166)))

(declare-fun c!23692 () Bool)

(assert (=> d!39081 (= c!23692 e!84159)))

(declare-fun res!62262 () Bool)

(assert (=> d!39081 (=> (not res!62262) (not e!84159))))

(assert (=> d!39081 (= res!62262 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39081 (= lt!66909 e!84158)))

(assert (=> d!39081 (= c!23693 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39081 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39081 (= (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66926)))

(declare-fun b!128948 () Bool)

(declare-fun Unit!4036 () Unit!3998)

(assert (=> b!128948 (= e!84166 Unit!4036)))

(declare-fun b!128949 () Bool)

(assert (=> b!128949 (= e!84163 (= (apply!112 lt!66926 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 lt!66302) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!128949 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 lt!66302)))))

(assert (=> b!128949 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13964 () Bool)

(assert (=> bm!13964 (= call!13965 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!128950 () Bool)

(assert (=> b!128950 (= e!84162 (not call!13967))))

(assert (= (and d!39081 c!23693) b!128943))

(assert (= (and d!39081 (not c!23693)) b!128945))

(assert (= (and b!128945 c!23689) b!128930))

(assert (= (and b!128945 (not c!23689)) b!128932))

(assert (= (and b!128932 c!23688) b!128935))

(assert (= (and b!128932 (not c!23688)) b!128941))

(assert (= (or b!128935 b!128941) bm!13963))

(assert (= (or b!128930 bm!13963) bm!13962))

(assert (= (or b!128930 b!128935) bm!13961))

(assert (= (or b!128943 bm!13962) bm!13964))

(assert (= (or b!128943 bm!13961) bm!13958))

(assert (= (and d!39081 res!62262) b!128946))

(assert (= (and d!39081 c!23692) b!128934))

(assert (= (and d!39081 (not c!23692)) b!128948))

(assert (= (and d!39081 res!62260) b!128940))

(assert (= (and b!128940 res!62256) b!128936))

(assert (= (and b!128940 (not res!62259)) b!128939))

(assert (= (and b!128939 res!62263) b!128949))

(assert (= (and b!128940 res!62261) b!128944))

(assert (= (and b!128944 c!23690) b!128942))

(assert (= (and b!128944 (not c!23690)) b!128950))

(assert (= (and b!128942 res!62264) b!128947))

(assert (= (or b!128942 b!128950) bm!13959))

(assert (= (and b!128944 res!62258) b!128938))

(assert (= (and b!128938 c!23691) b!128933))

(assert (= (and b!128938 (not c!23691)) b!128931))

(assert (= (and b!128933 res!62257) b!128937))

(assert (= (or b!128933 b!128931) bm!13960))

(declare-fun b_lambda!5731 () Bool)

(assert (=> (not b_lambda!5731) (not b!128949)))

(assert (=> b!128949 t!6123))

(declare-fun b_and!7989 () Bool)

(assert (= b_and!7985 (and (=> t!6123 result!3905) b_and!7989)))

(assert (=> b!128949 t!6125))

(declare-fun b_and!7991 () Bool)

(assert (= b_and!7987 (and (=> t!6125 result!3907) b_and!7991)))

(declare-fun m!151395 () Bool)

(assert (=> bm!13960 m!151395))

(declare-fun m!151397 () Bool)

(assert (=> b!128947 m!151397))

(declare-fun m!151399 () Bool)

(assert (=> bm!13964 m!151399))

(declare-fun m!151401 () Bool)

(assert (=> b!128934 m!151401))

(declare-fun m!151403 () Bool)

(assert (=> b!128934 m!151403))

(declare-fun m!151405 () Bool)

(assert (=> b!128934 m!151405))

(declare-fun m!151407 () Bool)

(assert (=> b!128934 m!151407))

(declare-fun m!151409 () Bool)

(assert (=> b!128934 m!151409))

(declare-fun m!151411 () Bool)

(assert (=> b!128934 m!151411))

(declare-fun m!151413 () Bool)

(assert (=> b!128934 m!151413))

(declare-fun m!151415 () Bool)

(assert (=> b!128934 m!151415))

(assert (=> b!128934 m!150023))

(declare-fun m!151417 () Bool)

(assert (=> b!128934 m!151417))

(declare-fun m!151419 () Bool)

(assert (=> b!128934 m!151419))

(assert (=> b!128934 m!151407))

(declare-fun m!151421 () Bool)

(assert (=> b!128934 m!151421))

(declare-fun m!151423 () Bool)

(assert (=> b!128934 m!151423))

(assert (=> b!128934 m!151405))

(declare-fun m!151425 () Bool)

(assert (=> b!128934 m!151425))

(assert (=> b!128934 m!151399))

(assert (=> b!128934 m!151417))

(declare-fun m!151427 () Bool)

(assert (=> b!128934 m!151427))

(assert (=> b!128934 m!151403))

(declare-fun m!151429 () Bool)

(assert (=> b!128934 m!151429))

(assert (=> d!39081 m!150007))

(assert (=> b!128946 m!150023))

(assert (=> b!128946 m!150023))

(assert (=> b!128946 m!150115))

(declare-fun m!151431 () Bool)

(assert (=> bm!13959 m!151431))

(declare-fun m!151433 () Bool)

(assert (=> b!128943 m!151433))

(declare-fun m!151435 () Bool)

(assert (=> b!128937 m!151435))

(assert (=> b!128949 m!150023))

(declare-fun m!151437 () Bool)

(assert (=> b!128949 m!151437))

(declare-fun m!151439 () Bool)

(assert (=> b!128949 m!151439))

(assert (=> b!128949 m!150127))

(assert (=> b!128949 m!150023))

(assert (=> b!128949 m!151439))

(assert (=> b!128949 m!150127))

(declare-fun m!151441 () Bool)

(assert (=> b!128949 m!151441))

(assert (=> b!128936 m!150023))

(assert (=> b!128936 m!150023))

(assert (=> b!128936 m!150115))

(declare-fun m!151443 () Bool)

(assert (=> bm!13958 m!151443))

(assert (=> b!128939 m!150023))

(assert (=> b!128939 m!150023))

(declare-fun m!151445 () Bool)

(assert (=> b!128939 m!151445))

(assert (=> b!128194 d!39081))

(declare-fun d!39083 () Bool)

(assert (=> d!39083 (= (get!1464 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3142 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!128251 d!39083))

(declare-fun d!39085 () Bool)

(assert (=> d!39085 (= (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66210)) (v!3147 (getValueByKey!167 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66210)))))

(assert (=> d!38783 d!39085))

(declare-fun b!128954 () Bool)

(declare-fun e!84172 () Option!173)

(assert (=> b!128954 (= e!84172 None!171)))

(declare-fun b!128953 () Bool)

(assert (=> b!128953 (= e!84172 (getValueByKey!167 (t!6115 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!66210))))

(declare-fun b!128951 () Bool)

(declare-fun e!84171 () Option!173)

(assert (=> b!128951 (= e!84171 (Some!172 (_2!1301 (h!2323 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(declare-fun d!39087 () Bool)

(declare-fun c!23694 () Bool)

(assert (=> d!39087 (= c!23694 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66210)))))

(assert (=> d!39087 (= (getValueByKey!167 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66210) e!84171)))

(declare-fun b!128952 () Bool)

(assert (=> b!128952 (= e!84171 e!84172)))

(declare-fun c!23695 () Bool)

(assert (=> b!128952 (= c!23695 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (not (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66204 (tuple2!2583 lt!66193 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66210))))))

(assert (= (and d!39087 c!23694) b!128951))

(assert (= (and d!39087 (not c!23694)) b!128952))

(assert (= (and b!128952 c!23695) b!128953))

(assert (= (and b!128952 (not c!23695)) b!128954))

(declare-fun m!151447 () Bool)

(assert (=> b!128953 m!151447))

(assert (=> d!38783 d!39087))

(declare-fun b!128955 () Bool)

(declare-fun e!84174 () Bool)

(declare-fun e!84175 () Bool)

(assert (=> b!128955 (= e!84174 e!84175)))

(declare-fun c!23696 () Bool)

(assert (=> b!128955 (= c!23696 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun b!128956 () Bool)

(declare-fun e!84173 () Bool)

(assert (=> b!128956 (= e!84175 e!84173)))

(declare-fun lt!66928 () (_ BitVec 64))

(assert (=> b!128956 (= lt!66928 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000))))

(declare-fun lt!66927 () Unit!3998)

(assert (=> b!128956 (= lt!66927 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4542 (_2!1302 lt!66286)) lt!66928 #b00000000000000000000000000000000))))

(assert (=> b!128956 (arrayContainsKey!0 (_keys!4542 (_2!1302 lt!66286)) lt!66928 #b00000000000000000000000000000000)))

(declare-fun lt!66929 () Unit!3998)

(assert (=> b!128956 (= lt!66929 lt!66927)))

(declare-fun res!62265 () Bool)

(assert (=> b!128956 (= res!62265 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000) (_keys!4542 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286))) (Found!281 #b00000000000000000000000000000000)))))

(assert (=> b!128956 (=> (not res!62265) (not e!84173))))

(declare-fun b!128957 () Bool)

(declare-fun call!13968 () Bool)

(assert (=> b!128957 (= e!84173 call!13968)))

(declare-fun b!128958 () Bool)

(assert (=> b!128958 (= e!84175 call!13968)))

(declare-fun bm!13965 () Bool)

(assert (=> bm!13965 (= call!13968 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4542 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286))))))

(declare-fun d!39089 () Bool)

(declare-fun res!62266 () Bool)

(assert (=> d!39089 (=> res!62266 e!84174)))

(assert (=> d!39089 (= res!62266 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(assert (=> d!39089 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286))) e!84174)))

(assert (= (and d!39089 (not res!62266)) b!128955))

(assert (= (and b!128955 c!23696) b!128956))

(assert (= (and b!128955 (not c!23696)) b!128958))

(assert (= (and b!128956 res!62265) b!128957))

(assert (= (or b!128957 b!128958) bm!13965))

(assert (=> b!128955 m!150871))

(assert (=> b!128955 m!150871))

(assert (=> b!128955 m!150875))

(assert (=> b!128956 m!150871))

(declare-fun m!151449 () Bool)

(assert (=> b!128956 m!151449))

(declare-fun m!151451 () Bool)

(assert (=> b!128956 m!151451))

(assert (=> b!128956 m!150871))

(declare-fun m!151453 () Bool)

(assert (=> b!128956 m!151453))

(declare-fun m!151455 () Bool)

(assert (=> bm!13965 m!151455))

(assert (=> b!128118 d!39089))

(declare-fun d!39091 () Bool)

(declare-fun lt!66930 () Bool)

(assert (=> d!39091 (= lt!66930 (select (content!126 (toList!862 lt!66315)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!84177 () Bool)

(assert (=> d!39091 (= lt!66930 e!84177)))

(declare-fun res!62267 () Bool)

(assert (=> d!39091 (=> (not res!62267) (not e!84177))))

(assert (=> d!39091 (= res!62267 ((_ is Cons!1720) (toList!862 lt!66315)))))

(assert (=> d!39091 (= (contains!884 (toList!862 lt!66315) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66930)))

(declare-fun b!128959 () Bool)

(declare-fun e!84176 () Bool)

(assert (=> b!128959 (= e!84177 e!84176)))

(declare-fun res!62268 () Bool)

(assert (=> b!128959 (=> res!62268 e!84176)))

(assert (=> b!128959 (= res!62268 (= (h!2323 (toList!862 lt!66315)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!128960 () Bool)

(assert (=> b!128960 (= e!84176 (contains!884 (t!6115 (toList!862 lt!66315)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!39091 res!62267) b!128959))

(assert (= (and b!128959 (not res!62268)) b!128960))

(declare-fun m!151457 () Bool)

(assert (=> d!39091 m!151457))

(declare-fun m!151459 () Bool)

(assert (=> d!39091 m!151459))

(declare-fun m!151461 () Bool)

(assert (=> b!128960 m!151461))

(assert (=> b!128125 d!39091))

(declare-fun d!39093 () Bool)

(assert (=> d!39093 (= (apply!112 (+!166 lt!66365 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) lt!66376) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66365 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))) lt!66376)))))

(declare-fun bs!5353 () Bool)

(assert (= bs!5353 d!39093))

(declare-fun m!151463 () Bool)

(assert (=> bs!5353 m!151463))

(assert (=> bs!5353 m!151463))

(declare-fun m!151465 () Bool)

(assert (=> bs!5353 m!151465))

(assert (=> b!128205 d!39093))

(declare-fun d!39095 () Bool)

(declare-fun e!84178 () Bool)

(assert (=> d!39095 e!84178))

(declare-fun res!62269 () Bool)

(assert (=> d!39095 (=> (not res!62269) (not e!84178))))

(declare-fun lt!66931 () ListLongMap!1693)

(assert (=> d!39095 (= res!62269 (contains!882 lt!66931 (_1!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))))))

(declare-fun lt!66932 () List!1724)

(assert (=> d!39095 (= lt!66931 (ListLongMap!1694 lt!66932))))

(declare-fun lt!66933 () Unit!3998)

(declare-fun lt!66934 () Unit!3998)

(assert (=> d!39095 (= lt!66933 lt!66934)))

(assert (=> d!39095 (= (getValueByKey!167 lt!66932 (_1!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))))))

(assert (=> d!39095 (= lt!66934 (lemmaContainsTupThenGetReturnValue!84 lt!66932 (_1!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))))))

(assert (=> d!39095 (= lt!66932 (insertStrictlySorted!86 (toList!862 lt!66368) (_1!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))))))

(assert (=> d!39095 (= (+!166 lt!66368 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) lt!66931)))

(declare-fun b!128961 () Bool)

(declare-fun res!62270 () Bool)

(assert (=> b!128961 (=> (not res!62270) (not e!84178))))

(assert (=> b!128961 (= res!62270 (= (getValueByKey!167 (toList!862 lt!66931) (_1!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))))))))

(declare-fun b!128962 () Bool)

(assert (=> b!128962 (= e!84178 (contains!884 (toList!862 lt!66931) (tuple2!2583 lt!66364 (minValue!2666 newMap!16))))))

(assert (= (and d!39095 res!62269) b!128961))

(assert (= (and b!128961 res!62270) b!128962))

(declare-fun m!151467 () Bool)

(assert (=> d!39095 m!151467))

(declare-fun m!151469 () Bool)

(assert (=> d!39095 m!151469))

(declare-fun m!151471 () Bool)

(assert (=> d!39095 m!151471))

(declare-fun m!151473 () Bool)

(assert (=> d!39095 m!151473))

(declare-fun m!151475 () Bool)

(assert (=> b!128961 m!151475))

(declare-fun m!151477 () Bool)

(assert (=> b!128962 m!151477))

(assert (=> b!128205 d!39095))

(declare-fun d!39097 () Bool)

(declare-fun e!84179 () Bool)

(assert (=> d!39097 e!84179))

(declare-fun res!62271 () Bool)

(assert (=> d!39097 (=> (not res!62271) (not e!84179))))

(declare-fun lt!66935 () ListLongMap!1693)

(assert (=> d!39097 (= res!62271 (contains!882 lt!66935 (_1!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))))))

(declare-fun lt!66936 () List!1724)

(assert (=> d!39097 (= lt!66935 (ListLongMap!1694 lt!66936))))

(declare-fun lt!66937 () Unit!3998)

(declare-fun lt!66938 () Unit!3998)

(assert (=> d!39097 (= lt!66937 lt!66938)))

(assert (=> d!39097 (= (getValueByKey!167 lt!66936 (_1!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39097 (= lt!66938 (lemmaContainsTupThenGetReturnValue!84 lt!66936 (_1!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39097 (= lt!66936 (insertStrictlySorted!86 (toList!862 lt!66372) (_1!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39097 (= (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) lt!66935)))

(declare-fun b!128963 () Bool)

(declare-fun res!62272 () Bool)

(assert (=> b!128963 (=> (not res!62272) (not e!84179))))

(assert (=> b!128963 (= res!62272 (= (getValueByKey!167 (toList!862 lt!66935) (_1!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))))))))

(declare-fun b!128964 () Bool)

(assert (=> b!128964 (= e!84179 (contains!884 (toList!862 lt!66935) (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))))))

(assert (= (and d!39097 res!62271) b!128963))

(assert (= (and b!128963 res!62272) b!128964))

(declare-fun m!151479 () Bool)

(assert (=> d!39097 m!151479))

(declare-fun m!151481 () Bool)

(assert (=> d!39097 m!151481))

(declare-fun m!151483 () Bool)

(assert (=> d!39097 m!151483))

(declare-fun m!151485 () Bool)

(assert (=> d!39097 m!151485))

(declare-fun m!151487 () Bool)

(assert (=> b!128963 m!151487))

(declare-fun m!151489 () Bool)

(assert (=> b!128964 m!151489))

(assert (=> b!128205 d!39097))

(declare-fun d!39099 () Bool)

(declare-fun e!84180 () Bool)

(assert (=> d!39099 e!84180))

(declare-fun res!62273 () Bool)

(assert (=> d!39099 (=> (not res!62273) (not e!84180))))

(declare-fun lt!66939 () ListLongMap!1693)

(assert (=> d!39099 (= res!62273 (contains!882 lt!66939 (_1!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))))))

(declare-fun lt!66940 () List!1724)

(assert (=> d!39099 (= lt!66939 (ListLongMap!1694 lt!66940))))

(declare-fun lt!66941 () Unit!3998)

(declare-fun lt!66942 () Unit!3998)

(assert (=> d!39099 (= lt!66941 lt!66942)))

(assert (=> d!39099 (= (getValueByKey!167 lt!66940 (_1!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39099 (= lt!66942 (lemmaContainsTupThenGetReturnValue!84 lt!66940 (_1!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39099 (= lt!66940 (insertStrictlySorted!86 (toList!862 lt!66369) (_1!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))))))

(assert (=> d!39099 (= (+!166 lt!66369 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) lt!66939)))

(declare-fun b!128965 () Bool)

(declare-fun res!62274 () Bool)

(assert (=> b!128965 (=> (not res!62274) (not e!84180))))

(assert (=> b!128965 (= res!62274 (= (getValueByKey!167 (toList!862 lt!66939) (_1!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))))))))

(declare-fun b!128966 () Bool)

(assert (=> b!128966 (= e!84180 (contains!884 (toList!862 lt!66939) (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))))))

(assert (= (and d!39099 res!62273) b!128965))

(assert (= (and b!128965 res!62274) b!128966))

(declare-fun m!151491 () Bool)

(assert (=> d!39099 m!151491))

(declare-fun m!151493 () Bool)

(assert (=> d!39099 m!151493))

(declare-fun m!151495 () Bool)

(assert (=> d!39099 m!151495))

(declare-fun m!151497 () Bool)

(assert (=> d!39099 m!151497))

(declare-fun m!151499 () Bool)

(assert (=> b!128965 m!151499))

(declare-fun m!151501 () Bool)

(assert (=> b!128966 m!151501))

(assert (=> b!128205 d!39099))

(declare-fun d!39101 () Bool)

(declare-fun e!84182 () Bool)

(assert (=> d!39101 e!84182))

(declare-fun res!62275 () Bool)

(assert (=> d!39101 (=> res!62275 e!84182)))

(declare-fun lt!66945 () Bool)

(assert (=> d!39101 (= res!62275 (not lt!66945))))

(declare-fun lt!66944 () Bool)

(assert (=> d!39101 (= lt!66945 lt!66944)))

(declare-fun lt!66946 () Unit!3998)

(declare-fun e!84181 () Unit!3998)

(assert (=> d!39101 (= lt!66946 e!84181)))

(declare-fun c!23697 () Bool)

(assert (=> d!39101 (= c!23697 lt!66944)))

(assert (=> d!39101 (= lt!66944 (containsKey!171 (toList!862 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) lt!66371))))

(assert (=> d!39101 (= (contains!882 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) lt!66371) lt!66945)))

(declare-fun b!128967 () Bool)

(declare-fun lt!66943 () Unit!3998)

(assert (=> b!128967 (= e!84181 lt!66943)))

(assert (=> b!128967 (= lt!66943 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) lt!66371))))

(assert (=> b!128967 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) lt!66371))))

(declare-fun b!128968 () Bool)

(declare-fun Unit!4037 () Unit!3998)

(assert (=> b!128968 (= e!84181 Unit!4037)))

(declare-fun b!128969 () Bool)

(assert (=> b!128969 (= e!84182 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16)))) lt!66371)))))

(assert (= (and d!39101 c!23697) b!128967))

(assert (= (and d!39101 (not c!23697)) b!128968))

(assert (= (and d!39101 (not res!62275)) b!128969))

(declare-fun m!151503 () Bool)

(assert (=> d!39101 m!151503))

(declare-fun m!151505 () Bool)

(assert (=> b!128967 m!151505))

(declare-fun m!151507 () Bool)

(assert (=> b!128967 m!151507))

(assert (=> b!128967 m!151507))

(declare-fun m!151509 () Bool)

(assert (=> b!128967 m!151509))

(assert (=> b!128969 m!151507))

(assert (=> b!128969 m!151507))

(assert (=> b!128969 m!151509))

(assert (=> b!128205 d!39101))

(declare-fun d!39103 () Bool)

(assert (=> d!39103 (= (apply!112 lt!66369 lt!66375) (get!1466 (getValueByKey!167 (toList!862 lt!66369) lt!66375)))))

(declare-fun bs!5354 () Bool)

(assert (= bs!5354 d!39103))

(declare-fun m!151511 () Bool)

(assert (=> bs!5354 m!151511))

(assert (=> bs!5354 m!151511))

(declare-fun m!151513 () Bool)

(assert (=> bs!5354 m!151513))

(assert (=> b!128205 d!39103))

(declare-fun d!39105 () Bool)

(assert (=> d!39105 (= (apply!112 (+!166 lt!66368 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) lt!66377) (apply!112 lt!66368 lt!66377))))

(declare-fun lt!66947 () Unit!3998)

(assert (=> d!39105 (= lt!66947 (choose!787 lt!66368 lt!66364 (minValue!2666 newMap!16) lt!66377))))

(declare-fun e!84183 () Bool)

(assert (=> d!39105 e!84183))

(declare-fun res!62276 () Bool)

(assert (=> d!39105 (=> (not res!62276) (not e!84183))))

(assert (=> d!39105 (= res!62276 (contains!882 lt!66368 lt!66377))))

(assert (=> d!39105 (= (addApplyDifferent!88 lt!66368 lt!66364 (minValue!2666 newMap!16) lt!66377) lt!66947)))

(declare-fun b!128970 () Bool)

(assert (=> b!128970 (= e!84183 (not (= lt!66377 lt!66364)))))

(assert (= (and d!39105 res!62276) b!128970))

(assert (=> d!39105 m!150105))

(assert (=> d!39105 m!150091))

(assert (=> d!39105 m!150091))

(assert (=> d!39105 m!150093))

(declare-fun m!151515 () Bool)

(assert (=> d!39105 m!151515))

(declare-fun m!151517 () Bool)

(assert (=> d!39105 m!151517))

(assert (=> b!128205 d!39105))

(declare-fun d!39107 () Bool)

(assert (=> d!39107 (contains!882 (+!166 lt!66372 (tuple2!2583 lt!66373 (zeroValue!2666 newMap!16))) lt!66371)))

(declare-fun lt!66948 () Unit!3998)

(assert (=> d!39107 (= lt!66948 (choose!788 lt!66372 lt!66373 (zeroValue!2666 newMap!16) lt!66371))))

(assert (=> d!39107 (contains!882 lt!66372 lt!66371)))

(assert (=> d!39107 (= (addStillContains!88 lt!66372 lt!66373 (zeroValue!2666 newMap!16) lt!66371) lt!66948)))

(declare-fun bs!5355 () Bool)

(assert (= bs!5355 d!39107))

(assert (=> bs!5355 m!150101))

(assert (=> bs!5355 m!150101))

(assert (=> bs!5355 m!150103))

(declare-fun m!151519 () Bool)

(assert (=> bs!5355 m!151519))

(declare-fun m!151521 () Bool)

(assert (=> bs!5355 m!151521))

(assert (=> b!128205 d!39107))

(declare-fun d!39109 () Bool)

(assert (=> d!39109 (= (apply!112 (+!166 lt!66369 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) lt!66375) (apply!112 lt!66369 lt!66375))))

(declare-fun lt!66949 () Unit!3998)

(assert (=> d!39109 (= lt!66949 (choose!787 lt!66369 lt!66358 (zeroValue!2666 newMap!16) lt!66375))))

(declare-fun e!84184 () Bool)

(assert (=> d!39109 e!84184))

(declare-fun res!62277 () Bool)

(assert (=> d!39109 (=> (not res!62277) (not e!84184))))

(assert (=> d!39109 (= res!62277 (contains!882 lt!66369 lt!66375))))

(assert (=> d!39109 (= (addApplyDifferent!88 lt!66369 lt!66358 (zeroValue!2666 newMap!16) lt!66375) lt!66949)))

(declare-fun b!128971 () Bool)

(assert (=> b!128971 (= e!84184 (not (= lt!66375 lt!66358)))))

(assert (= (and d!39109 res!62277) b!128971))

(assert (=> d!39109 m!150099))

(assert (=> d!39109 m!150087))

(assert (=> d!39109 m!150087))

(assert (=> d!39109 m!150113))

(declare-fun m!151523 () Bool)

(assert (=> d!39109 m!151523))

(declare-fun m!151525 () Bool)

(assert (=> d!39109 m!151525))

(assert (=> b!128205 d!39109))

(declare-fun b!128972 () Bool)

(declare-fun e!84190 () Bool)

(declare-fun e!84189 () Bool)

(assert (=> b!128972 (= e!84190 e!84189)))

(declare-fun c!23700 () Bool)

(declare-fun e!84191 () Bool)

(assert (=> b!128972 (= c!23700 e!84191)))

(declare-fun res!62279 () Bool)

(assert (=> b!128972 (=> (not res!62279) (not e!84191))))

(assert (=> b!128972 (= res!62279 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128973 () Bool)

(declare-fun e!84188 () Bool)

(declare-fun lt!66956 () ListLongMap!1693)

(assert (=> b!128973 (= e!84188 (isEmpty!405 lt!66956))))

(declare-fun b!128974 () Bool)

(assert (=> b!128974 (= e!84191 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128974 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!128975 () Bool)

(declare-fun lt!66950 () Unit!3998)

(declare-fun lt!66952 () Unit!3998)

(assert (=> b!128975 (= lt!66950 lt!66952)))

(declare-fun lt!66951 () ListLongMap!1693)

(declare-fun lt!66955 () (_ BitVec 64))

(declare-fun lt!66954 () V!3451)

(declare-fun lt!66953 () (_ BitVec 64))

(assert (=> b!128975 (not (contains!882 (+!166 lt!66951 (tuple2!2583 lt!66953 lt!66954)) lt!66955))))

(assert (=> b!128975 (= lt!66952 (addStillNotContains!59 lt!66951 lt!66953 lt!66954 lt!66955))))

(assert (=> b!128975 (= lt!66955 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!128975 (= lt!66954 (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!128975 (= lt!66953 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13969 () ListLongMap!1693)

(assert (=> b!128975 (= lt!66951 call!13969)))

(declare-fun e!84185 () ListLongMap!1693)

(assert (=> b!128975 (= e!84185 (+!166 call!13969 (tuple2!2583 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!128976 () Bool)

(declare-fun res!62280 () Bool)

(assert (=> b!128976 (=> (not res!62280) (not e!84190))))

(assert (=> b!128976 (= res!62280 (not (contains!882 lt!66956 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!128977 () Bool)

(assert (=> b!128977 (= e!84188 (= lt!66956 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16))))))

(declare-fun b!128978 () Bool)

(assert (=> b!128978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> b!128978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (_values!2788 newMap!16))))))

(declare-fun e!84187 () Bool)

(assert (=> b!128978 (= e!84187 (= (apply!112 lt!66956 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!128979 () Bool)

(declare-fun e!84186 () ListLongMap!1693)

(assert (=> b!128979 (= e!84186 (ListLongMap!1694 Nil!1721))))

(declare-fun b!128980 () Bool)

(assert (=> b!128980 (= e!84189 e!84187)))

(assert (=> b!128980 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun res!62278 () Bool)

(assert (=> b!128980 (= res!62278 (contains!882 lt!66956 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!128980 (=> (not res!62278) (not e!84187))))

(declare-fun d!39111 () Bool)

(assert (=> d!39111 e!84190))

(declare-fun res!62281 () Bool)

(assert (=> d!39111 (=> (not res!62281) (not e!84190))))

(assert (=> d!39111 (= res!62281 (not (contains!882 lt!66956 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39111 (= lt!66956 e!84186)))

(declare-fun c!23699 () Bool)

(assert (=> d!39111 (= c!23699 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39111 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39111 (= (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!66956)))

(declare-fun b!128981 () Bool)

(assert (=> b!128981 (= e!84186 e!84185)))

(declare-fun c!23701 () Bool)

(assert (=> b!128981 (= c!23701 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!128982 () Bool)

(assert (=> b!128982 (= e!84185 call!13969)))

(declare-fun bm!13966 () Bool)

(assert (=> bm!13966 (= call!13969 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2805 newMap!16)))))

(declare-fun b!128983 () Bool)

(assert (=> b!128983 (= e!84189 e!84188)))

(declare-fun c!23698 () Bool)

(assert (=> b!128983 (= c!23698 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (= (and d!39111 c!23699) b!128979))

(assert (= (and d!39111 (not c!23699)) b!128981))

(assert (= (and b!128981 c!23701) b!128975))

(assert (= (and b!128981 (not c!23701)) b!128982))

(assert (= (or b!128975 b!128982) bm!13966))

(assert (= (and d!39111 res!62281) b!128976))

(assert (= (and b!128976 res!62280) b!128972))

(assert (= (and b!128972 res!62279) b!128974))

(assert (= (and b!128972 c!23700) b!128980))

(assert (= (and b!128972 (not c!23700)) b!128983))

(assert (= (and b!128980 res!62278) b!128978))

(assert (= (and b!128983 c!23698) b!128977))

(assert (= (and b!128983 (not c!23698)) b!128973))

(declare-fun b_lambda!5733 () Bool)

(assert (=> (not b_lambda!5733) (not b!128975)))

(assert (=> b!128975 t!6123))

(declare-fun b_and!7993 () Bool)

(assert (= b_and!7989 (and (=> t!6123 result!3905) b_and!7993)))

(assert (=> b!128975 t!6125))

(declare-fun b_and!7995 () Bool)

(assert (= b_and!7991 (and (=> t!6125 result!3907) b_and!7995)))

(declare-fun b_lambda!5735 () Bool)

(assert (=> (not b_lambda!5735) (not b!128978)))

(assert (=> b!128978 t!6123))

(declare-fun b_and!7997 () Bool)

(assert (= b_and!7993 (and (=> t!6123 result!3905) b_and!7997)))

(assert (=> b!128978 t!6125))

(declare-fun b_and!7999 () Bool)

(assert (= b_and!7995 (and (=> t!6125 result!3907) b_and!7999)))

(assert (=> b!128980 m!150023))

(assert (=> b!128980 m!150023))

(declare-fun m!151527 () Bool)

(assert (=> b!128980 m!151527))

(declare-fun m!151529 () Bool)

(assert (=> d!39111 m!151529))

(assert (=> d!39111 m!150007))

(assert (=> b!128974 m!150023))

(assert (=> b!128974 m!150023))

(assert (=> b!128974 m!150115))

(assert (=> b!128978 m!150127))

(assert (=> b!128978 m!150125))

(assert (=> b!128978 m!150127))

(assert (=> b!128978 m!150129))

(assert (=> b!128978 m!150125))

(assert (=> b!128978 m!150023))

(declare-fun m!151531 () Bool)

(assert (=> b!128978 m!151531))

(assert (=> b!128978 m!150023))

(declare-fun m!151533 () Bool)

(assert (=> b!128973 m!151533))

(declare-fun m!151535 () Bool)

(assert (=> bm!13966 m!151535))

(assert (=> b!128981 m!150023))

(assert (=> b!128981 m!150023))

(assert (=> b!128981 m!150115))

(assert (=> b!128977 m!151535))

(declare-fun m!151537 () Bool)

(assert (=> b!128976 m!151537))

(declare-fun m!151539 () Bool)

(assert (=> b!128975 m!151539))

(assert (=> b!128975 m!150125))

(assert (=> b!128975 m!150127))

(assert (=> b!128975 m!150129))

(declare-fun m!151541 () Bool)

(assert (=> b!128975 m!151541))

(assert (=> b!128975 m!150023))

(assert (=> b!128975 m!150127))

(declare-fun m!151543 () Bool)

(assert (=> b!128975 m!151543))

(assert (=> b!128975 m!151543))

(declare-fun m!151545 () Bool)

(assert (=> b!128975 m!151545))

(assert (=> b!128975 m!150125))

(assert (=> b!128205 d!39111))

(declare-fun d!39113 () Bool)

(assert (=> d!39113 (= (apply!112 (+!166 lt!66365 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) lt!66376) (apply!112 lt!66365 lt!66376))))

(declare-fun lt!66957 () Unit!3998)

(assert (=> d!39113 (= lt!66957 (choose!787 lt!66365 lt!66366 (minValue!2666 newMap!16) lt!66376))))

(declare-fun e!84192 () Bool)

(assert (=> d!39113 e!84192))

(declare-fun res!62282 () Bool)

(assert (=> d!39113 (=> (not res!62282) (not e!84192))))

(assert (=> d!39113 (= res!62282 (contains!882 lt!66365 lt!66376))))

(assert (=> d!39113 (= (addApplyDifferent!88 lt!66365 lt!66366 (minValue!2666 newMap!16) lt!66376) lt!66957)))

(declare-fun b!128984 () Bool)

(assert (=> b!128984 (= e!84192 (not (= lt!66376 lt!66366)))))

(assert (= (and d!39113 res!62282) b!128984))

(assert (=> d!39113 m!150107))

(assert (=> d!39113 m!150089))

(assert (=> d!39113 m!150089))

(assert (=> d!39113 m!150109))

(declare-fun m!151547 () Bool)

(assert (=> d!39113 m!151547))

(declare-fun m!151549 () Bool)

(assert (=> d!39113 m!151549))

(assert (=> b!128205 d!39113))

(declare-fun d!39115 () Bool)

(assert (=> d!39115 (= (apply!112 lt!66368 lt!66377) (get!1466 (getValueByKey!167 (toList!862 lt!66368) lt!66377)))))

(declare-fun bs!5356 () Bool)

(assert (= bs!5356 d!39115))

(declare-fun m!151551 () Bool)

(assert (=> bs!5356 m!151551))

(assert (=> bs!5356 m!151551))

(declare-fun m!151553 () Bool)

(assert (=> bs!5356 m!151553))

(assert (=> b!128205 d!39115))

(declare-fun d!39117 () Bool)

(assert (=> d!39117 (= (apply!112 (+!166 lt!66369 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16))) lt!66375) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66369 (tuple2!2583 lt!66358 (zeroValue!2666 newMap!16)))) lt!66375)))))

(declare-fun bs!5357 () Bool)

(assert (= bs!5357 d!39117))

(declare-fun m!151555 () Bool)

(assert (=> bs!5357 m!151555))

(assert (=> bs!5357 m!151555))

(declare-fun m!151557 () Bool)

(assert (=> bs!5357 m!151557))

(assert (=> b!128205 d!39117))

(declare-fun d!39119 () Bool)

(assert (=> d!39119 (= (apply!112 lt!66365 lt!66376) (get!1466 (getValueByKey!167 (toList!862 lt!66365) lt!66376)))))

(declare-fun bs!5358 () Bool)

(assert (= bs!5358 d!39119))

(declare-fun m!151559 () Bool)

(assert (=> bs!5358 m!151559))

(assert (=> bs!5358 m!151559))

(declare-fun m!151561 () Bool)

(assert (=> bs!5358 m!151561))

(assert (=> b!128205 d!39119))

(declare-fun d!39121 () Bool)

(assert (=> d!39121 (= (apply!112 (+!166 lt!66368 (tuple2!2583 lt!66364 (minValue!2666 newMap!16))) lt!66377) (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66368 (tuple2!2583 lt!66364 (minValue!2666 newMap!16)))) lt!66377)))))

(declare-fun bs!5359 () Bool)

(assert (= bs!5359 d!39121))

(declare-fun m!151563 () Bool)

(assert (=> bs!5359 m!151563))

(assert (=> bs!5359 m!151563))

(declare-fun m!151565 () Bool)

(assert (=> bs!5359 m!151565))

(assert (=> b!128205 d!39121))

(declare-fun d!39123 () Bool)

(declare-fun e!84193 () Bool)

(assert (=> d!39123 e!84193))

(declare-fun res!62283 () Bool)

(assert (=> d!39123 (=> (not res!62283) (not e!84193))))

(declare-fun lt!66958 () ListLongMap!1693)

(assert (=> d!39123 (= res!62283 (contains!882 lt!66958 (_1!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))))))

(declare-fun lt!66959 () List!1724)

(assert (=> d!39123 (= lt!66958 (ListLongMap!1694 lt!66959))))

(declare-fun lt!66960 () Unit!3998)

(declare-fun lt!66961 () Unit!3998)

(assert (=> d!39123 (= lt!66960 lt!66961)))

(assert (=> d!39123 (= (getValueByKey!167 lt!66959 (_1!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))))))

(assert (=> d!39123 (= lt!66961 (lemmaContainsTupThenGetReturnValue!84 lt!66959 (_1!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))))))

(assert (=> d!39123 (= lt!66959 (insertStrictlySorted!86 (toList!862 lt!66365) (_1!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) (_2!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))))))

(assert (=> d!39123 (= (+!166 lt!66365 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))) lt!66958)))

(declare-fun b!128985 () Bool)

(declare-fun res!62284 () Bool)

(assert (=> b!128985 (=> (not res!62284) (not e!84193))))

(assert (=> b!128985 (= res!62284 (= (getValueByKey!167 (toList!862 lt!66958) (_1!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16)))) (Some!172 (_2!1301 (tuple2!2583 lt!66366 (minValue!2666 newMap!16))))))))

(declare-fun b!128986 () Bool)

(assert (=> b!128986 (= e!84193 (contains!884 (toList!862 lt!66958) (tuple2!2583 lt!66366 (minValue!2666 newMap!16))))))

(assert (= (and d!39123 res!62283) b!128985))

(assert (= (and b!128985 res!62284) b!128986))

(declare-fun m!151567 () Bool)

(assert (=> d!39123 m!151567))

(declare-fun m!151569 () Bool)

(assert (=> d!39123 m!151569))

(declare-fun m!151571 () Bool)

(assert (=> d!39123 m!151571))

(declare-fun m!151573 () Bool)

(assert (=> d!39123 m!151573))

(declare-fun m!151575 () Bool)

(assert (=> b!128985 m!151575))

(declare-fun m!151577 () Bool)

(assert (=> b!128986 m!151577))

(assert (=> b!128205 d!39123))

(declare-fun d!39125 () Bool)

(assert (=> d!39125 (= (apply!112 lt!66533 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66533) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5360 () Bool)

(assert (= bs!5360 d!39125))

(assert (=> bs!5360 m!150893))

(assert (=> bs!5360 m!150893))

(declare-fun m!151579 () Bool)

(assert (=> bs!5360 m!151579))

(assert (=> b!128376 d!39125))

(declare-fun d!39127 () Bool)

(assert (=> d!39127 (= (get!1466 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3147 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!38757 d!39127))

(assert (=> d!38757 d!39031))

(declare-fun d!39129 () Bool)

(declare-fun res!62285 () Bool)

(declare-fun e!84194 () Bool)

(assert (=> d!39129 (=> res!62285 e!84194)))

(assert (=> d!39129 (= res!62285 (= (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!39129 (= (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!84194)))

(declare-fun b!128987 () Bool)

(declare-fun e!84195 () Bool)

(assert (=> b!128987 (= e!84194 e!84195)))

(declare-fun res!62286 () Bool)

(assert (=> b!128987 (=> (not res!62286) (not e!84195))))

(assert (=> b!128987 (= res!62286 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!128988 () Bool)

(assert (=> b!128988 (= e!84195 (arrayContainsKey!0 (_keys!4542 newMap!16) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!39129 (not res!62285)) b!128987))

(assert (= (and b!128987 res!62286) b!128988))

(assert (=> d!39129 m!151197))

(assert (=> b!128988 m!149785))

(declare-fun m!151581 () Bool)

(assert (=> b!128988 m!151581))

(assert (=> b!128173 d!39129))

(assert (=> b!128346 d!38837))

(assert (=> b!128346 d!38839))

(declare-fun d!39131 () Bool)

(assert (=> d!39131 (= (get!1466 (getValueByKey!167 (toList!862 lt!66203) lt!66212)) (v!3147 (getValueByKey!167 (toList!862 lt!66203) lt!66212)))))

(assert (=> d!38795 d!39131))

(declare-fun b!128992 () Bool)

(declare-fun e!84197 () Option!173)

(assert (=> b!128992 (= e!84197 None!171)))

(declare-fun b!128991 () Bool)

(assert (=> b!128991 (= e!84197 (getValueByKey!167 (t!6115 (toList!862 lt!66203)) lt!66212))))

(declare-fun b!128989 () Bool)

(declare-fun e!84196 () Option!173)

(assert (=> b!128989 (= e!84196 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66203)))))))

(declare-fun d!39133 () Bool)

(declare-fun c!23702 () Bool)

(assert (=> d!39133 (= c!23702 (and ((_ is Cons!1720) (toList!862 lt!66203)) (= (_1!1301 (h!2323 (toList!862 lt!66203))) lt!66212)))))

(assert (=> d!39133 (= (getValueByKey!167 (toList!862 lt!66203) lt!66212) e!84196)))

(declare-fun b!128990 () Bool)

(assert (=> b!128990 (= e!84196 e!84197)))

(declare-fun c!23703 () Bool)

(assert (=> b!128990 (= c!23703 (and ((_ is Cons!1720) (toList!862 lt!66203)) (not (= (_1!1301 (h!2323 (toList!862 lt!66203))) lt!66212))))))

(assert (= (and d!39133 c!23702) b!128989))

(assert (= (and d!39133 (not c!23702)) b!128990))

(assert (= (and b!128990 c!23703) b!128991))

(assert (= (and b!128990 (not c!23703)) b!128992))

(declare-fun m!151583 () Bool)

(assert (=> b!128991 m!151583))

(assert (=> d!38795 d!39133))

(declare-fun d!39135 () Bool)

(declare-fun e!84199 () Bool)

(assert (=> d!39135 e!84199))

(declare-fun res!62287 () Bool)

(assert (=> d!39135 (=> res!62287 e!84199)))

(declare-fun lt!66964 () Bool)

(assert (=> d!39135 (= res!62287 (not lt!66964))))

(declare-fun lt!66963 () Bool)

(assert (=> d!39135 (= lt!66964 lt!66963)))

(declare-fun lt!66965 () Unit!3998)

(declare-fun e!84198 () Unit!3998)

(assert (=> d!39135 (= lt!66965 e!84198)))

(declare-fun c!23704 () Bool)

(assert (=> d!39135 (= c!23704 lt!66963)))

(assert (=> d!39135 (= lt!66963 (containsKey!171 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!39135 (= (contains!882 lt!66567 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66964)))

(declare-fun b!128993 () Bool)

(declare-fun lt!66962 () Unit!3998)

(assert (=> b!128993 (= e!84198 lt!66962)))

(assert (=> b!128993 (= lt!66962 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> b!128993 (isDefined!121 (getValueByKey!167 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128994 () Bool)

(declare-fun Unit!4038 () Unit!3998)

(assert (=> b!128994 (= e!84198 Unit!4038)))

(declare-fun b!128995 () Bool)

(assert (=> b!128995 (= e!84199 (isDefined!121 (getValueByKey!167 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39135 c!23704) b!128993))

(assert (= (and d!39135 (not c!23704)) b!128994))

(assert (= (and d!39135 (not res!62287)) b!128995))

(declare-fun m!151585 () Bool)

(assert (=> d!39135 m!151585))

(declare-fun m!151587 () Bool)

(assert (=> b!128993 m!151587))

(assert (=> b!128993 m!150407))

(assert (=> b!128993 m!150407))

(declare-fun m!151589 () Bool)

(assert (=> b!128993 m!151589))

(assert (=> b!128995 m!150407))

(assert (=> b!128995 m!150407))

(assert (=> b!128995 m!151589))

(assert (=> d!38787 d!39135))

(declare-fun b!128999 () Bool)

(declare-fun e!84201 () Option!173)

(assert (=> b!128999 (= e!84201 None!171)))

(declare-fun b!128998 () Bool)

(assert (=> b!128998 (= e!84201 (getValueByKey!167 (t!6115 lt!66568) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!128996 () Bool)

(declare-fun e!84200 () Option!173)

(assert (=> b!128996 (= e!84200 (Some!172 (_2!1301 (h!2323 lt!66568))))))

(declare-fun c!23705 () Bool)

(declare-fun d!39137 () Bool)

(assert (=> d!39137 (= c!23705 (and ((_ is Cons!1720) lt!66568) (= (_1!1301 (h!2323 lt!66568)) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39137 (= (getValueByKey!167 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84200)))

(declare-fun b!128997 () Bool)

(assert (=> b!128997 (= e!84200 e!84201)))

(declare-fun c!23706 () Bool)

(assert (=> b!128997 (= c!23706 (and ((_ is Cons!1720) lt!66568) (not (= (_1!1301 (h!2323 lt!66568)) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39137 c!23705) b!128996))

(assert (= (and d!39137 (not c!23705)) b!128997))

(assert (= (and b!128997 c!23706) b!128998))

(assert (= (and b!128997 (not c!23706)) b!128999))

(declare-fun m!151591 () Bool)

(assert (=> b!128998 m!151591))

(assert (=> d!38787 d!39137))

(declare-fun d!39139 () Bool)

(assert (=> d!39139 (= (getValueByKey!167 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66966 () Unit!3998)

(assert (=> d!39139 (= lt!66966 (choose!792 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!84202 () Bool)

(assert (=> d!39139 e!84202))

(declare-fun res!62288 () Bool)

(assert (=> d!39139 (=> (not res!62288) (not e!84202))))

(assert (=> d!39139 (= res!62288 (isStrictlySorted!313 lt!66568))))

(assert (=> d!39139 (= (lemmaContainsTupThenGetReturnValue!84 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66966)))

(declare-fun b!129000 () Bool)

(declare-fun res!62289 () Bool)

(assert (=> b!129000 (=> (not res!62289) (not e!84202))))

(assert (=> b!129000 (= res!62289 (containsKey!171 lt!66568 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129001 () Bool)

(assert (=> b!129001 (= e!84202 (contains!884 lt!66568 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39139 res!62288) b!129000))

(assert (= (and b!129000 res!62289) b!129001))

(assert (=> d!39139 m!150401))

(declare-fun m!151593 () Bool)

(assert (=> d!39139 m!151593))

(declare-fun m!151595 () Bool)

(assert (=> d!39139 m!151595))

(declare-fun m!151597 () Bool)

(assert (=> b!129000 m!151597))

(declare-fun m!151599 () Bool)

(assert (=> b!129001 m!151599))

(assert (=> d!38787 d!39139))

(declare-fun c!23710 () Bool)

(declare-fun b!129002 () Bool)

(assert (=> b!129002 (= c!23710 (and ((_ is Cons!1720) (toList!862 lt!66207)) (bvsgt (_1!1301 (h!2323 (toList!862 lt!66207))) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!84204 () List!1724)

(declare-fun e!84203 () List!1724)

(assert (=> b!129002 (= e!84204 e!84203)))

(declare-fun d!39141 () Bool)

(declare-fun e!84205 () Bool)

(assert (=> d!39141 e!84205))

(declare-fun res!62291 () Bool)

(assert (=> d!39141 (=> (not res!62291) (not e!84205))))

(declare-fun lt!66967 () List!1724)

(assert (=> d!39141 (= res!62291 (isStrictlySorted!313 lt!66967))))

(declare-fun e!84206 () List!1724)

(assert (=> d!39141 (= lt!66967 e!84206)))

(declare-fun c!23709 () Bool)

(assert (=> d!39141 (= c!23709 (and ((_ is Cons!1720) (toList!862 lt!66207)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66207))) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39141 (isStrictlySorted!313 (toList!862 lt!66207))))

(assert (=> d!39141 (= (insertStrictlySorted!86 (toList!862 lt!66207) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66967)))

(declare-fun b!129003 () Bool)

(declare-fun call!13972 () List!1724)

(assert (=> b!129003 (= e!84203 call!13972)))

(declare-fun b!129004 () Bool)

(declare-fun call!13970 () List!1724)

(assert (=> b!129004 (= e!84206 call!13970)))

(declare-fun c!23707 () Bool)

(declare-fun b!129005 () Bool)

(declare-fun e!84207 () List!1724)

(assert (=> b!129005 (= e!84207 (ite c!23707 (t!6115 (toList!862 lt!66207)) (ite c!23710 (Cons!1720 (h!2323 (toList!862 lt!66207)) (t!6115 (toList!862 lt!66207))) Nil!1721)))))

(declare-fun b!129006 () Bool)

(assert (=> b!129006 (= e!84203 call!13972)))

(declare-fun b!129007 () Bool)

(assert (=> b!129007 (= e!84205 (contains!884 lt!66967 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129008 () Bool)

(declare-fun res!62290 () Bool)

(assert (=> b!129008 (=> (not res!62290) (not e!84205))))

(assert (=> b!129008 (= res!62290 (containsKey!171 lt!66967 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13967 () Bool)

(assert (=> bm!13967 (= call!13970 ($colon$colon!89 e!84207 (ite c!23709 (h!2323 (toList!862 lt!66207)) (tuple2!2583 (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun c!23708 () Bool)

(assert (=> bm!13967 (= c!23708 c!23709)))

(declare-fun b!129009 () Bool)

(declare-fun call!13971 () List!1724)

(assert (=> b!129009 (= e!84204 call!13971)))

(declare-fun b!129010 () Bool)

(assert (=> b!129010 (= e!84207 (insertStrictlySorted!86 (t!6115 (toList!862 lt!66207)) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13968 () Bool)

(assert (=> bm!13968 (= call!13972 call!13971)))

(declare-fun bm!13969 () Bool)

(assert (=> bm!13969 (= call!13971 call!13970)))

(declare-fun b!129011 () Bool)

(assert (=> b!129011 (= e!84206 e!84204)))

(assert (=> b!129011 (= c!23707 (and ((_ is Cons!1720) (toList!862 lt!66207)) (= (_1!1301 (h!2323 (toList!862 lt!66207))) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39141 c!23709) b!129004))

(assert (= (and d!39141 (not c!23709)) b!129011))

(assert (= (and b!129011 c!23707) b!129009))

(assert (= (and b!129011 (not c!23707)) b!129002))

(assert (= (and b!129002 c!23710) b!129003))

(assert (= (and b!129002 (not c!23710)) b!129006))

(assert (= (or b!129003 b!129006) bm!13968))

(assert (= (or b!129009 bm!13968) bm!13969))

(assert (= (or b!129004 bm!13969) bm!13967))

(assert (= (and bm!13967 c!23708) b!129010))

(assert (= (and bm!13967 (not c!23708)) b!129005))

(assert (= (and d!39141 res!62291) b!129008))

(assert (= (and b!129008 res!62290) b!129007))

(declare-fun m!151601 () Bool)

(assert (=> b!129007 m!151601))

(declare-fun m!151603 () Bool)

(assert (=> d!39141 m!151603))

(declare-fun m!151605 () Bool)

(assert (=> d!39141 m!151605))

(declare-fun m!151607 () Bool)

(assert (=> b!129008 m!151607))

(declare-fun m!151609 () Bool)

(assert (=> bm!13967 m!151609))

(declare-fun m!151611 () Bool)

(assert (=> b!129010 m!151611))

(assert (=> d!38787 d!39141))

(assert (=> d!38743 d!38745))

(assert (=> d!38743 d!38747))

(declare-fun d!39143 () Bool)

(assert (=> d!39143 (isDefined!121 (getValueByKey!167 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!39143 true))

(declare-fun _$12!393 () Unit!3998)

(assert (=> d!39143 (= (choose!786 (toList!862 lt!66136) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) _$12!393)))

(declare-fun bs!5361 () Bool)

(assert (= bs!5361 d!39143))

(assert (=> bs!5361 m!149785))

(assert (=> bs!5361 m!149903))

(assert (=> bs!5361 m!149903))

(assert (=> bs!5361 m!149905))

(assert (=> d!38743 d!39143))

(declare-fun d!39145 () Bool)

(declare-fun res!62296 () Bool)

(declare-fun e!84212 () Bool)

(assert (=> d!39145 (=> res!62296 e!84212)))

(assert (=> d!39145 (= res!62296 (or ((_ is Nil!1721) (toList!862 lt!66136)) ((_ is Nil!1721) (t!6115 (toList!862 lt!66136)))))))

(assert (=> d!39145 (= (isStrictlySorted!313 (toList!862 lt!66136)) e!84212)))

(declare-fun b!129016 () Bool)

(declare-fun e!84213 () Bool)

(assert (=> b!129016 (= e!84212 e!84213)))

(declare-fun res!62297 () Bool)

(assert (=> b!129016 (=> (not res!62297) (not e!84213))))

(assert (=> b!129016 (= res!62297 (bvslt (_1!1301 (h!2323 (toList!862 lt!66136))) (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136))))))))

(declare-fun b!129017 () Bool)

(assert (=> b!129017 (= e!84213 (isStrictlySorted!313 (t!6115 (toList!862 lt!66136))))))

(assert (= (and d!39145 (not res!62296)) b!129016))

(assert (= (and b!129016 res!62297) b!129017))

(declare-fun m!151613 () Bool)

(assert (=> b!129017 m!151613))

(assert (=> d!38743 d!39145))

(declare-fun d!39147 () Bool)

(declare-fun isEmpty!406 (List!1724) Bool)

(assert (=> d!39147 (= (isEmpty!405 lt!66554) (isEmpty!406 (toList!862 lt!66554)))))

(declare-fun bs!5362 () Bool)

(assert (= bs!5362 d!39147))

(declare-fun m!151615 () Bool)

(assert (=> bs!5362 m!151615))

(assert (=> b!128405 d!39147))

(declare-fun d!39149 () Bool)

(declare-fun e!84215 () Bool)

(assert (=> d!39149 e!84215))

(declare-fun res!62298 () Bool)

(assert (=> d!39149 (=> res!62298 e!84215)))

(declare-fun lt!66970 () Bool)

(assert (=> d!39149 (= res!62298 (not lt!66970))))

(declare-fun lt!66969 () Bool)

(assert (=> d!39149 (= lt!66970 lt!66969)))

(declare-fun lt!66971 () Unit!3998)

(declare-fun e!84214 () Unit!3998)

(assert (=> d!39149 (= lt!66971 e!84214)))

(declare-fun c!23711 () Bool)

(assert (=> d!39149 (= c!23711 lt!66969)))

(assert (=> d!39149 (= lt!66969 (containsKey!171 (toList!862 (map!1391 (_2!1302 lt!66468))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> d!39149 (= (contains!882 (map!1391 (_2!1302 lt!66468)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) lt!66970)))

(declare-fun b!129018 () Bool)

(declare-fun lt!66968 () Unit!3998)

(assert (=> b!129018 (= e!84214 lt!66968)))

(assert (=> b!129018 (= lt!66968 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (map!1391 (_2!1302 lt!66468))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (=> b!129018 (isDefined!121 (getValueByKey!167 (toList!862 (map!1391 (_2!1302 lt!66468))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(declare-fun b!129019 () Bool)

(declare-fun Unit!4039 () Unit!3998)

(assert (=> b!129019 (= e!84214 Unit!4039)))

(declare-fun b!129020 () Bool)

(assert (=> b!129020 (= e!84215 (isDefined!121 (getValueByKey!167 (toList!862 (map!1391 (_2!1302 lt!66468))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (= (and d!39149 c!23711) b!129018))

(assert (= (and d!39149 (not c!23711)) b!129019))

(assert (= (and d!39149 (not res!62298)) b!129020))

(assert (=> d!39149 m!149785))

(declare-fun m!151617 () Bool)

(assert (=> d!39149 m!151617))

(assert (=> b!129018 m!149785))

(declare-fun m!151619 () Bool)

(assert (=> b!129018 m!151619))

(assert (=> b!129018 m!149785))

(declare-fun m!151621 () Bool)

(assert (=> b!129018 m!151621))

(assert (=> b!129018 m!151621))

(declare-fun m!151623 () Bool)

(assert (=> b!129018 m!151623))

(assert (=> b!129020 m!149785))

(assert (=> b!129020 m!151621))

(assert (=> b!129020 m!151621))

(assert (=> b!129020 m!151623))

(assert (=> b!128326 d!39149))

(assert (=> b!128326 d!39039))

(declare-fun d!39151 () Bool)

(assert (=> d!39151 (arrayContainsKey!0 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000)))

(declare-fun lt!66972 () Unit!3998)

(assert (=> d!39151 (= lt!66972 (choose!13 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000))))

(assert (=> d!39151 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!39151 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000) lt!66972)))

(declare-fun bs!5363 () Bool)

(assert (= bs!5363 d!39151))

(assert (=> bs!5363 m!150283))

(declare-fun m!151625 () Bool)

(assert (=> bs!5363 m!151625))

(assert (=> b!128356 d!39151))

(declare-fun d!39153 () Bool)

(declare-fun res!62299 () Bool)

(declare-fun e!84216 () Bool)

(assert (=> d!39153 (=> res!62299 e!84216)))

(assert (=> d!39153 (= res!62299 (= (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) lt!66510))))

(assert (=> d!39153 (= (arrayContainsKey!0 (_keys!4542 newMap!16) lt!66510 #b00000000000000000000000000000000) e!84216)))

(declare-fun b!129021 () Bool)

(declare-fun e!84217 () Bool)

(assert (=> b!129021 (= e!84216 e!84217)))

(declare-fun res!62300 () Bool)

(assert (=> b!129021 (=> (not res!62300) (not e!84217))))

(assert (=> b!129021 (= res!62300 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129022 () Bool)

(assert (=> b!129022 (= e!84217 (arrayContainsKey!0 (_keys!4542 newMap!16) lt!66510 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!39153 (not res!62299)) b!129021))

(assert (= (and b!129021 res!62300) b!129022))

(assert (=> d!39153 m!150023))

(declare-fun m!151627 () Bool)

(assert (=> b!129022 m!151627))

(assert (=> b!128356 d!39153))

(declare-fun b!129023 () Bool)

(declare-fun e!84219 () SeekEntryResult!281)

(declare-fun lt!66973 () SeekEntryResult!281)

(assert (=> b!129023 (= e!84219 (Found!281 (index!3282 lt!66973)))))

(declare-fun b!129024 () Bool)

(declare-fun c!23713 () Bool)

(declare-fun lt!66975 () (_ BitVec 64))

(assert (=> b!129024 (= c!23713 (= lt!66975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84218 () SeekEntryResult!281)

(assert (=> b!129024 (= e!84219 e!84218)))

(declare-fun b!129025 () Bool)

(declare-fun e!84220 () SeekEntryResult!281)

(assert (=> b!129025 (= e!84220 Undefined!281)))

(declare-fun b!129026 () Bool)

(assert (=> b!129026 (= e!84220 e!84219)))

(assert (=> b!129026 (= lt!66975 (select (arr!2236 (_keys!4542 newMap!16)) (index!3282 lt!66973)))))

(declare-fun c!23712 () Bool)

(assert (=> b!129026 (= c!23712 (= lt!66975 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!39155 () Bool)

(declare-fun lt!66974 () SeekEntryResult!281)

(assert (=> d!39155 (and (or ((_ is Undefined!281) lt!66974) (not ((_ is Found!281) lt!66974)) (and (bvsge (index!3281 lt!66974) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66974) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66974) ((_ is Found!281) lt!66974) (not ((_ is MissingZero!281) lt!66974)) (and (bvsge (index!3280 lt!66974) #b00000000000000000000000000000000) (bvslt (index!3280 lt!66974) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66974) ((_ is Found!281) lt!66974) ((_ is MissingZero!281) lt!66974) (not ((_ is MissingVacant!281) lt!66974)) (and (bvsge (index!3283 lt!66974) #b00000000000000000000000000000000) (bvslt (index!3283 lt!66974) (size!2501 (_keys!4542 newMap!16))))) (or ((_ is Undefined!281) lt!66974) (ite ((_ is Found!281) lt!66974) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66974)) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!281) lt!66974) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3280 lt!66974)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!281) lt!66974) (= (select (arr!2236 (_keys!4542 newMap!16)) (index!3283 lt!66974)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39155 (= lt!66974 e!84220)))

(declare-fun c!23714 () Bool)

(assert (=> d!39155 (= c!23714 (and ((_ is Intermediate!281) lt!66973) (undefined!1093 lt!66973)))))

(assert (=> d!39155 (= lt!66973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (mask!7073 newMap!16)) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (=> d!39155 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39155 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (_keys!4542 newMap!16) (mask!7073 newMap!16)) lt!66974)))

(declare-fun b!129027 () Bool)

(assert (=> b!129027 (= e!84218 (MissingZero!281 (index!3282 lt!66973)))))

(declare-fun b!129028 () Bool)

(assert (=> b!129028 (= e!84218 (seekKeyOrZeroReturnVacant!0 (x!15132 lt!66973) (index!3282 lt!66973) (index!3282 lt!66973) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(assert (= (and d!39155 c!23714) b!129025))

(assert (= (and d!39155 (not c!23714)) b!129026))

(assert (= (and b!129026 c!23712) b!129023))

(assert (= (and b!129026 (not c!23712)) b!129024))

(assert (= (and b!129024 c!23713) b!129027))

(assert (= (and b!129024 (not c!23713)) b!129028))

(declare-fun m!151629 () Bool)

(assert (=> b!129026 m!151629))

(declare-fun m!151631 () Bool)

(assert (=> d!39155 m!151631))

(declare-fun m!151633 () Bool)

(assert (=> d!39155 m!151633))

(declare-fun m!151635 () Bool)

(assert (=> d!39155 m!151635))

(assert (=> d!39155 m!150007))

(declare-fun m!151637 () Bool)

(assert (=> d!39155 m!151637))

(assert (=> d!39155 m!150023))

(declare-fun m!151639 () Bool)

(assert (=> d!39155 m!151639))

(assert (=> d!39155 m!150023))

(assert (=> d!39155 m!151637))

(assert (=> b!129028 m!150023))

(declare-fun m!151641 () Bool)

(assert (=> b!129028 m!151641))

(assert (=> b!128356 d!39155))

(assert (=> b!128231 d!38823))

(assert (=> b!128440 d!38823))

(declare-fun d!39157 () Bool)

(assert (=> d!39157 (= (apply!112 lt!66533 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66533) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5364 () Bool)

(assert (= bs!5364 d!39157))

(declare-fun m!151643 () Bool)

(assert (=> bs!5364 m!151643))

(assert (=> bs!5364 m!151643))

(declare-fun m!151645 () Bool)

(assert (=> bs!5364 m!151645))

(assert (=> b!128366 d!39157))

(declare-fun d!39159 () Bool)

(declare-fun res!62301 () Bool)

(declare-fun e!84221 () Bool)

(assert (=> d!39159 (=> res!62301 e!84221)))

(assert (=> d!39159 (= res!62301 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39159 (= (containsKey!171 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000) e!84221)))

(declare-fun b!129029 () Bool)

(declare-fun e!84222 () Bool)

(assert (=> b!129029 (= e!84221 e!84222)))

(declare-fun res!62302 () Bool)

(assert (=> b!129029 (=> (not res!62302) (not e!84222))))

(assert (=> b!129029 (= res!62302 (and (or (not ((_ is Cons!1720) (toList!862 lt!66213))) (bvsle (_1!1301 (h!2323 (toList!862 lt!66213))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1720) (toList!862 lt!66213)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66213))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129030 () Bool)

(assert (=> b!129030 (= e!84222 (containsKey!171 (t!6115 (toList!862 lt!66213)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39159 (not res!62301)) b!129029))

(assert (= (and b!129029 res!62302) b!129030))

(declare-fun m!151647 () Bool)

(assert (=> b!129030 m!151647))

(assert (=> d!38735 d!39159))

(declare-fun d!39161 () Bool)

(assert (=> d!39161 (= (apply!112 lt!66378 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1466 (getValueByKey!167 (toList!862 lt!66378) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5365 () Bool)

(assert (= bs!5365 d!39161))

(declare-fun m!151649 () Bool)

(assert (=> bs!5365 m!151649))

(assert (=> bs!5365 m!151649))

(declare-fun m!151651 () Bool)

(assert (=> bs!5365 m!151651))

(assert (=> b!128208 d!39161))

(declare-fun d!39163 () Bool)

(declare-fun res!62306 () Bool)

(declare-fun e!84223 () Bool)

(assert (=> d!39163 (=> (not res!62306) (not e!84223))))

(assert (=> d!39163 (= res!62306 (validMask!0 (mask!7073 (v!3143 (underlying!443 thiss!992)))))))

(assert (=> d!39163 (= (simpleValid!87 (v!3143 (underlying!443 thiss!992))) e!84223)))

(declare-fun b!129031 () Bool)

(declare-fun res!62304 () Bool)

(assert (=> b!129031 (=> (not res!62304) (not e!84223))))

(assert (=> b!129031 (= res!62304 (and (= (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992)))) (bvadd (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001)) (= (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (size!2502 (_values!2788 (v!3143 (underlying!443 thiss!992))))) (bvsge (_size!586 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!586 (v!3143 (underlying!443 thiss!992))) (bvadd (mask!7073 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!129032 () Bool)

(declare-fun res!62305 () Bool)

(assert (=> b!129032 (=> (not res!62305) (not e!84223))))

(assert (=> b!129032 (= res!62305 (bvsge (size!2505 (v!3143 (underlying!443 thiss!992))) (_size!586 (v!3143 (underlying!443 thiss!992)))))))

(declare-fun b!129033 () Bool)

(declare-fun res!62303 () Bool)

(assert (=> b!129033 (=> (not res!62303) (not e!84223))))

(assert (=> b!129033 (= res!62303 (= (size!2505 (v!3143 (underlying!443 thiss!992))) (bvadd (_size!586 (v!3143 (underlying!443 thiss!992))) (bvsdiv (bvadd (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!129034 () Bool)

(assert (=> b!129034 (= e!84223 (and (bvsge (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2582 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!586 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000)))))

(assert (= (and d!39163 res!62306) b!129031))

(assert (= (and b!129031 res!62304) b!129032))

(assert (= (and b!129032 res!62305) b!129033))

(assert (= (and b!129033 res!62303) b!129034))

(assert (=> d!39163 m!149793))

(declare-fun m!151653 () Bool)

(assert (=> b!129032 m!151653))

(assert (=> b!129033 m!151653))

(assert (=> d!38711 d!39163))

(declare-fun d!39165 () Bool)

(declare-fun lt!66976 () Bool)

(assert (=> d!39165 (= lt!66976 (select (content!126 (toList!862 lt!66495)) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!84225 () Bool)

(assert (=> d!39165 (= lt!66976 e!84225)))

(declare-fun res!62307 () Bool)

(assert (=> d!39165 (=> (not res!62307) (not e!84225))))

(assert (=> d!39165 (= res!62307 ((_ is Cons!1720) (toList!862 lt!66495)))))

(assert (=> d!39165 (= (contains!884 (toList!862 lt!66495) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66976)))

(declare-fun b!129035 () Bool)

(declare-fun e!84224 () Bool)

(assert (=> b!129035 (= e!84225 e!84224)))

(declare-fun res!62308 () Bool)

(assert (=> b!129035 (=> res!62308 e!84224)))

(assert (=> b!129035 (= res!62308 (= (h!2323 (toList!862 lt!66495)) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129036 () Bool)

(assert (=> b!129036 (= e!84224 (contains!884 (t!6115 (toList!862 lt!66495)) (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (= (and d!39165 res!62307) b!129035))

(assert (= (and b!129035 (not res!62308)) b!129036))

(declare-fun m!151655 () Bool)

(assert (=> d!39165 m!151655))

(declare-fun m!151657 () Bool)

(assert (=> d!39165 m!151657))

(declare-fun m!151659 () Bool)

(assert (=> b!129036 m!151659))

(assert (=> b!128343 d!39165))

(declare-fun d!39167 () Bool)

(declare-fun e!84227 () Bool)

(assert (=> d!39167 e!84227))

(declare-fun res!62309 () Bool)

(assert (=> d!39167 (=> res!62309 e!84227)))

(declare-fun lt!66979 () Bool)

(assert (=> d!39167 (= res!62309 (not lt!66979))))

(declare-fun lt!66978 () Bool)

(assert (=> d!39167 (= lt!66979 lt!66978)))

(declare-fun lt!66980 () Unit!3998)

(declare-fun e!84226 () Unit!3998)

(assert (=> d!39167 (= lt!66980 e!84226)))

(declare-fun c!23715 () Bool)

(assert (=> d!39167 (= c!23715 lt!66978)))

(assert (=> d!39167 (= lt!66978 (containsKey!171 (toList!862 lt!66604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39167 (= (contains!882 lt!66604 #b1000000000000000000000000000000000000000000000000000000000000000) lt!66979)))

(declare-fun b!129037 () Bool)

(declare-fun lt!66977 () Unit!3998)

(assert (=> b!129037 (= e!84226 lt!66977)))

(assert (=> b!129037 (= lt!66977 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129037 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129038 () Bool)

(declare-fun Unit!4040 () Unit!3998)

(assert (=> b!129038 (= e!84226 Unit!4040)))

(declare-fun b!129039 () Bool)

(assert (=> b!129039 (= e!84227 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39167 c!23715) b!129037))

(assert (= (and d!39167 (not c!23715)) b!129038))

(assert (= (and d!39167 (not res!62309)) b!129039))

(declare-fun m!151661 () Bool)

(assert (=> d!39167 m!151661))

(declare-fun m!151663 () Bool)

(assert (=> b!129037 m!151663))

(assert (=> b!129037 m!151097))

(assert (=> b!129037 m!151097))

(declare-fun m!151665 () Bool)

(assert (=> b!129037 m!151665))

(assert (=> b!129039 m!151097))

(assert (=> b!129039 m!151097))

(assert (=> b!129039 m!151665))

(assert (=> bm!13900 d!39167))

(declare-fun d!39169 () Bool)

(declare-fun e!84229 () Bool)

(assert (=> d!39169 e!84229))

(declare-fun res!62310 () Bool)

(assert (=> d!39169 (=> res!62310 e!84229)))

(declare-fun lt!66983 () Bool)

(assert (=> d!39169 (= res!62310 (not lt!66983))))

(declare-fun lt!66982 () Bool)

(assert (=> d!39169 (= lt!66983 lt!66982)))

(declare-fun lt!66984 () Unit!3998)

(declare-fun e!84228 () Unit!3998)

(assert (=> d!39169 (= lt!66984 e!84228)))

(declare-fun c!23716 () Bool)

(assert (=> d!39169 (= c!23716 lt!66982)))

(assert (=> d!39169 (= lt!66982 (containsKey!171 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!39169 (= (contains!882 lt!66315 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66983)))

(declare-fun b!129040 () Bool)

(declare-fun lt!66981 () Unit!3998)

(assert (=> b!129040 (= e!84228 lt!66981)))

(assert (=> b!129040 (= lt!66981 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> b!129040 (isDefined!121 (getValueByKey!167 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129041 () Bool)

(declare-fun Unit!4041 () Unit!3998)

(assert (=> b!129041 (= e!84228 Unit!4041)))

(declare-fun b!129042 () Bool)

(assert (=> b!129042 (= e!84229 (isDefined!121 (getValueByKey!167 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39169 c!23716) b!129040))

(assert (= (and d!39169 (not c!23716)) b!129041))

(assert (= (and d!39169 (not res!62310)) b!129042))

(declare-fun m!151667 () Bool)

(assert (=> d!39169 m!151667))

(declare-fun m!151669 () Bool)

(assert (=> b!129040 m!151669))

(assert (=> b!129040 m!149995))

(assert (=> b!129040 m!149995))

(declare-fun m!151671 () Bool)

(assert (=> b!129040 m!151671))

(assert (=> b!129042 m!149995))

(assert (=> b!129042 m!149995))

(assert (=> b!129042 m!151671))

(assert (=> d!38699 d!39169))

(declare-fun b!129046 () Bool)

(declare-fun e!84231 () Option!173)

(assert (=> b!129046 (= e!84231 None!171)))

(declare-fun b!129045 () Bool)

(assert (=> b!129045 (= e!84231 (getValueByKey!167 (t!6115 lt!66316) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129043 () Bool)

(declare-fun e!84230 () Option!173)

(assert (=> b!129043 (= e!84230 (Some!172 (_2!1301 (h!2323 lt!66316))))))

(declare-fun d!39171 () Bool)

(declare-fun c!23717 () Bool)

(assert (=> d!39171 (= c!23717 (and ((_ is Cons!1720) lt!66316) (= (_1!1301 (h!2323 lt!66316)) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39171 (= (getValueByKey!167 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84230)))

(declare-fun b!129044 () Bool)

(assert (=> b!129044 (= e!84230 e!84231)))

(declare-fun c!23718 () Bool)

(assert (=> b!129044 (= c!23718 (and ((_ is Cons!1720) lt!66316) (not (= (_1!1301 (h!2323 lt!66316)) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39171 c!23717) b!129043))

(assert (= (and d!39171 (not c!23717)) b!129044))

(assert (= (and b!129044 c!23718) b!129045))

(assert (= (and b!129044 (not c!23718)) b!129046))

(declare-fun m!151673 () Bool)

(assert (=> b!129045 m!151673))

(assert (=> d!38699 d!39171))

(declare-fun d!39173 () Bool)

(assert (=> d!39173 (= (getValueByKey!167 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!66985 () Unit!3998)

(assert (=> d!39173 (= lt!66985 (choose!792 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!84232 () Bool)

(assert (=> d!39173 e!84232))

(declare-fun res!62311 () Bool)

(assert (=> d!39173 (=> (not res!62311) (not e!84232))))

(assert (=> d!39173 (= res!62311 (isStrictlySorted!313 lt!66316))))

(assert (=> d!39173 (= (lemmaContainsTupThenGetReturnValue!84 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66985)))

(declare-fun b!129047 () Bool)

(declare-fun res!62312 () Bool)

(assert (=> b!129047 (=> (not res!62312) (not e!84232))))

(assert (=> b!129047 (= res!62312 (containsKey!171 lt!66316 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129048 () Bool)

(assert (=> b!129048 (= e!84232 (contains!884 lt!66316 (tuple2!2583 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39173 res!62311) b!129047))

(assert (= (and b!129047 res!62312) b!129048))

(assert (=> d!39173 m!149989))

(declare-fun m!151675 () Bool)

(assert (=> d!39173 m!151675))

(declare-fun m!151677 () Bool)

(assert (=> d!39173 m!151677))

(declare-fun m!151679 () Bool)

(assert (=> b!129047 m!151679))

(declare-fun m!151681 () Bool)

(assert (=> b!129048 m!151681))

(assert (=> d!38699 d!39173))

(declare-fun b!129049 () Bool)

(declare-fun c!23722 () Bool)

(assert (=> b!129049 (= c!23722 (and ((_ is Cons!1720) (toList!862 call!13778)) (bvsgt (_1!1301 (h!2323 (toList!862 call!13778))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!84234 () List!1724)

(declare-fun e!84233 () List!1724)

(assert (=> b!129049 (= e!84234 e!84233)))

(declare-fun d!39175 () Bool)

(declare-fun e!84235 () Bool)

(assert (=> d!39175 e!84235))

(declare-fun res!62314 () Bool)

(assert (=> d!39175 (=> (not res!62314) (not e!84235))))

(declare-fun lt!66986 () List!1724)

(assert (=> d!39175 (= res!62314 (isStrictlySorted!313 lt!66986))))

(declare-fun e!84236 () List!1724)

(assert (=> d!39175 (= lt!66986 e!84236)))

(declare-fun c!23721 () Bool)

(assert (=> d!39175 (= c!23721 (and ((_ is Cons!1720) (toList!862 call!13778)) (bvslt (_1!1301 (h!2323 (toList!862 call!13778))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39175 (isStrictlySorted!313 (toList!862 call!13778))))

(assert (=> d!39175 (= (insertStrictlySorted!86 (toList!862 call!13778) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66986)))

(declare-fun b!129050 () Bool)

(declare-fun call!13975 () List!1724)

(assert (=> b!129050 (= e!84233 call!13975)))

(declare-fun b!129051 () Bool)

(declare-fun call!13973 () List!1724)

(assert (=> b!129051 (= e!84236 call!13973)))

(declare-fun e!84237 () List!1724)

(declare-fun b!129052 () Bool)

(declare-fun c!23719 () Bool)

(assert (=> b!129052 (= e!84237 (ite c!23719 (t!6115 (toList!862 call!13778)) (ite c!23722 (Cons!1720 (h!2323 (toList!862 call!13778)) (t!6115 (toList!862 call!13778))) Nil!1721)))))

(declare-fun b!129053 () Bool)

(assert (=> b!129053 (= e!84233 call!13975)))

(declare-fun b!129054 () Bool)

(assert (=> b!129054 (= e!84235 (contains!884 lt!66986 (tuple2!2583 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129055 () Bool)

(declare-fun res!62313 () Bool)

(assert (=> b!129055 (=> (not res!62313) (not e!84235))))

(assert (=> b!129055 (= res!62313 (containsKey!171 lt!66986 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13970 () Bool)

(assert (=> bm!13970 (= call!13973 ($colon$colon!89 e!84237 (ite c!23721 (h!2323 (toList!862 call!13778)) (tuple2!2583 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun c!23720 () Bool)

(assert (=> bm!13970 (= c!23720 c!23721)))

(declare-fun b!129056 () Bool)

(declare-fun call!13974 () List!1724)

(assert (=> b!129056 (= e!84234 call!13974)))

(declare-fun b!129057 () Bool)

(assert (=> b!129057 (= e!84237 (insertStrictlySorted!86 (t!6115 (toList!862 call!13778)) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13971 () Bool)

(assert (=> bm!13971 (= call!13975 call!13974)))

(declare-fun bm!13972 () Bool)

(assert (=> bm!13972 (= call!13974 call!13973)))

(declare-fun b!129058 () Bool)

(assert (=> b!129058 (= e!84236 e!84234)))

(assert (=> b!129058 (= c!23719 (and ((_ is Cons!1720) (toList!862 call!13778)) (= (_1!1301 (h!2323 (toList!862 call!13778))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39175 c!23721) b!129051))

(assert (= (and d!39175 (not c!23721)) b!129058))

(assert (= (and b!129058 c!23719) b!129056))

(assert (= (and b!129058 (not c!23719)) b!129049))

(assert (= (and b!129049 c!23722) b!129050))

(assert (= (and b!129049 (not c!23722)) b!129053))

(assert (= (or b!129050 b!129053) bm!13971))

(assert (= (or b!129056 bm!13971) bm!13972))

(assert (= (or b!129051 bm!13972) bm!13970))

(assert (= (and bm!13970 c!23720) b!129057))

(assert (= (and bm!13970 (not c!23720)) b!129052))

(assert (= (and d!39175 res!62314) b!129055))

(assert (= (and b!129055 res!62313) b!129054))

(declare-fun m!151683 () Bool)

(assert (=> b!129054 m!151683))

(declare-fun m!151685 () Bool)

(assert (=> d!39175 m!151685))

(declare-fun m!151687 () Bool)

(assert (=> d!39175 m!151687))

(declare-fun m!151689 () Bool)

(assert (=> b!129055 m!151689))

(declare-fun m!151691 () Bool)

(assert (=> bm!13970 m!151691))

(declare-fun m!151693 () Bool)

(assert (=> b!129057 m!151693))

(assert (=> d!38699 d!39175))

(assert (=> b!128409 d!39043))

(assert (=> b!128313 d!38703))

(declare-fun d!39177 () Bool)

(declare-fun lt!66987 () Bool)

(assert (=> d!39177 (= lt!66987 (select (content!126 (toList!862 lt!66559)) (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!84239 () Bool)

(assert (=> d!39177 (= lt!66987 e!84239)))

(declare-fun res!62315 () Bool)

(assert (=> d!39177 (=> (not res!62315) (not e!84239))))

(assert (=> d!39177 (= res!62315 ((_ is Cons!1720) (toList!862 lt!66559)))))

(assert (=> d!39177 (= (contains!884 (toList!862 lt!66559) (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66987)))

(declare-fun b!129059 () Bool)

(declare-fun e!84238 () Bool)

(assert (=> b!129059 (= e!84239 e!84238)))

(declare-fun res!62316 () Bool)

(assert (=> b!129059 (=> res!62316 e!84238)))

(assert (=> b!129059 (= res!62316 (= (h!2323 (toList!862 lt!66559)) (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!129060 () Bool)

(assert (=> b!129060 (= e!84238 (contains!884 (t!6115 (toList!862 lt!66559)) (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!39177 res!62315) b!129059))

(assert (= (and b!129059 (not res!62316)) b!129060))

(declare-fun m!151695 () Bool)

(assert (=> d!39177 m!151695))

(declare-fun m!151697 () Bool)

(assert (=> d!39177 m!151697))

(declare-fun m!151699 () Bool)

(assert (=> b!129060 m!151699))

(assert (=> b!128422 d!39177))

(declare-fun d!39179 () Bool)

(declare-fun res!62317 () Bool)

(declare-fun e!84240 () Bool)

(assert (=> d!39179 (=> res!62317 e!84240)))

(assert (=> d!39179 (= res!62317 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66206)))))

(assert (=> d!39179 (= (containsKey!171 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206) e!84240)))

(declare-fun b!129061 () Bool)

(declare-fun e!84241 () Bool)

(assert (=> b!129061 (= e!84240 e!84241)))

(declare-fun res!62318 () Bool)

(assert (=> b!129061 (=> (not res!62318) (not e!84241))))

(assert (=> b!129061 (= res!62318 (and (or (not ((_ is Cons!1720) (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) (bvsle (_1!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66206)) ((_ is Cons!1720) (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) (bvslt (_1!1301 (h!2323 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66206)))))

(declare-fun b!129062 () Bool)

(assert (=> b!129062 (= e!84241 (containsKey!171 (t!6115 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!66206))))

(assert (= (and d!39179 (not res!62317)) b!129061))

(assert (= (and b!129061 res!62318) b!129062))

(declare-fun m!151701 () Bool)

(assert (=> b!129062 m!151701))

(assert (=> d!38785 d!39179))

(assert (=> b!128450 d!38823))

(declare-fun d!39181 () Bool)

(declare-fun res!62319 () Bool)

(declare-fun e!84242 () Bool)

(assert (=> d!39181 (=> res!62319 e!84242)))

(assert (=> d!39181 (= res!62319 (and ((_ is Cons!1720) (t!6115 (toList!862 lt!66136))) (= (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!39181 (= (containsKey!171 (t!6115 (toList!862 lt!66136)) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!84242)))

(declare-fun b!129063 () Bool)

(declare-fun e!84243 () Bool)

(assert (=> b!129063 (= e!84242 e!84243)))

(declare-fun res!62320 () Bool)

(assert (=> b!129063 (=> (not res!62320) (not e!84243))))

(assert (=> b!129063 (= res!62320 (and (or (not ((_ is Cons!1720) (t!6115 (toList!862 lt!66136)))) (bvsle (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) ((_ is Cons!1720) (t!6115 (toList!862 lt!66136))) (bvslt (_1!1301 (h!2323 (t!6115 (toList!862 lt!66136)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(declare-fun b!129064 () Bool)

(assert (=> b!129064 (= e!84243 (containsKey!171 (t!6115 (t!6115 (toList!862 lt!66136))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!39181 (not res!62319)) b!129063))

(assert (= (and b!129063 res!62320) b!129064))

(assert (=> b!129064 m!149785))

(declare-fun m!151703 () Bool)

(assert (=> b!129064 m!151703))

(assert (=> b!128191 d!39181))

(assert (=> b!128243 d!39023))

(declare-fun d!39183 () Bool)

(declare-fun e!84244 () Bool)

(assert (=> d!39183 e!84244))

(declare-fun res!62321 () Bool)

(assert (=> d!39183 (=> (not res!62321) (not e!84244))))

(declare-fun lt!66988 () ListLongMap!1693)

(assert (=> d!39183 (= res!62321 (contains!882 lt!66988 (_1!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(declare-fun lt!66989 () List!1724)

(assert (=> d!39183 (= lt!66988 (ListLongMap!1694 lt!66989))))

(declare-fun lt!66990 () Unit!3998)

(declare-fun lt!66991 () Unit!3998)

(assert (=> d!39183 (= lt!66990 lt!66991)))

(assert (=> d!39183 (= (getValueByKey!167 lt!66989 (_1!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))) (Some!172 (_2!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(assert (=> d!39183 (= lt!66991 (lemmaContainsTupThenGetReturnValue!84 lt!66989 (_1!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (_2!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(assert (=> d!39183 (= lt!66989 (insertStrictlySorted!86 (toList!862 (ite c!23556 call!13905 (ite c!23552 call!13903 call!13902))) (_1!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (_2!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(assert (=> d!39183 (= (+!166 (ite c!23556 call!13905 (ite c!23552 call!13903 call!13902)) (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) lt!66988)))

(declare-fun b!129065 () Bool)

(declare-fun res!62322 () Bool)

(assert (=> b!129065 (=> (not res!62322) (not e!84244))))

(assert (=> b!129065 (= res!62322 (= (getValueByKey!167 (toList!862 lt!66988) (_1!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))) (Some!172 (_2!1301 (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))))

(declare-fun b!129066 () Bool)

(assert (=> b!129066 (= e!84244 (contains!884 (toList!862 lt!66988) (ite (or c!23556 c!23552) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23470 c!23469) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2666 newMap!16))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (= (and d!39183 res!62321) b!129065))

(assert (= (and b!129065 res!62322) b!129066))

(declare-fun m!151705 () Bool)

(assert (=> d!39183 m!151705))

(declare-fun m!151707 () Bool)

(assert (=> d!39183 m!151707))

(declare-fun m!151709 () Bool)

(assert (=> d!39183 m!151709))

(declare-fun m!151711 () Bool)

(assert (=> d!39183 m!151711))

(declare-fun m!151713 () Bool)

(assert (=> b!129065 m!151713))

(declare-fun m!151715 () Bool)

(assert (=> b!129066 m!151715))

(assert (=> bm!13898 d!39183))

(declare-fun d!39185 () Bool)

(assert (=> d!39185 (isDefined!121 (getValueByKey!167 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(declare-fun lt!66992 () Unit!3998)

(assert (=> d!39185 (= lt!66992 (choose!786 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(declare-fun e!84245 () Bool)

(assert (=> d!39185 e!84245))

(declare-fun res!62323 () Bool)

(assert (=> d!39185 (=> (not res!62323) (not e!84245))))

(assert (=> d!39185 (= res!62323 (isStrictlySorted!313 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39185 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206) lt!66992)))

(declare-fun b!129067 () Bool)

(assert (=> b!129067 (= e!84245 (containsKey!171 (toList!862 (+!166 lt!66207 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66206))))

(assert (= (and d!39185 res!62323) b!129067))

(assert (=> d!39185 m!150395))

(assert (=> d!39185 m!150395))

(assert (=> d!39185 m!150397))

(declare-fun m!151717 () Bool)

(assert (=> d!39185 m!151717))

(declare-fun m!151719 () Bool)

(assert (=> d!39185 m!151719))

(assert (=> b!129067 m!150391))

(assert (=> b!128423 d!39185))

(assert (=> b!128423 d!38945))

(assert (=> b!128423 d!38947))

(declare-fun lt!66993 () Bool)

(declare-fun d!39187 () Bool)

(assert (=> d!39187 (= lt!66993 (select (content!126 (toList!862 lt!66567)) (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!84247 () Bool)

(assert (=> d!39187 (= lt!66993 e!84247)))

(declare-fun res!62324 () Bool)

(assert (=> d!39187 (=> (not res!62324) (not e!84247))))

(assert (=> d!39187 (= res!62324 ((_ is Cons!1720) (toList!862 lt!66567)))))

(assert (=> d!39187 (= (contains!884 (toList!862 lt!66567) (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66993)))

(declare-fun b!129068 () Bool)

(declare-fun e!84246 () Bool)

(assert (=> b!129068 (= e!84247 e!84246)))

(declare-fun res!62325 () Bool)

(assert (=> b!129068 (=> res!62325 e!84246)))

(assert (=> b!129068 (= res!62325 (= (h!2323 (toList!862 lt!66567)) (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!129069 () Bool)

(assert (=> b!129069 (= e!84246 (contains!884 (t!6115 (toList!862 lt!66567)) (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!39187 res!62324) b!129068))

(assert (= (and b!129068 (not res!62325)) b!129069))

(declare-fun m!151721 () Bool)

(assert (=> d!39187 m!151721))

(declare-fun m!151723 () Bool)

(assert (=> d!39187 m!151723))

(declare-fun m!151725 () Bool)

(assert (=> b!129069 m!151725))

(assert (=> b!128427 d!39187))

(declare-fun d!39189 () Bool)

(assert (=> d!39189 (= (get!1466 (getValueByKey!167 (toList!862 lt!66200) lt!66211)) (v!3147 (getValueByKey!167 (toList!862 lt!66200) lt!66211)))))

(assert (=> d!38799 d!39189))

(declare-fun b!129073 () Bool)

(declare-fun e!84249 () Option!173)

(assert (=> b!129073 (= e!84249 None!171)))

(declare-fun b!129072 () Bool)

(assert (=> b!129072 (= e!84249 (getValueByKey!167 (t!6115 (toList!862 lt!66200)) lt!66211))))

(declare-fun b!129070 () Bool)

(declare-fun e!84248 () Option!173)

(assert (=> b!129070 (= e!84248 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66200)))))))

(declare-fun d!39191 () Bool)

(declare-fun c!23723 () Bool)

(assert (=> d!39191 (= c!23723 (and ((_ is Cons!1720) (toList!862 lt!66200)) (= (_1!1301 (h!2323 (toList!862 lt!66200))) lt!66211)))))

(assert (=> d!39191 (= (getValueByKey!167 (toList!862 lt!66200) lt!66211) e!84248)))

(declare-fun b!129071 () Bool)

(assert (=> b!129071 (= e!84248 e!84249)))

(declare-fun c!23724 () Bool)

(assert (=> b!129071 (= c!23724 (and ((_ is Cons!1720) (toList!862 lt!66200)) (not (= (_1!1301 (h!2323 (toList!862 lt!66200))) lt!66211))))))

(assert (= (and d!39191 c!23723) b!129070))

(assert (= (and d!39191 (not c!23723)) b!129071))

(assert (= (and b!129071 c!23724) b!129072))

(assert (= (and b!129071 (not c!23724)) b!129073))

(declare-fun m!151727 () Bool)

(assert (=> b!129072 m!151727))

(assert (=> d!38799 d!39191))

(assert (=> b!128197 d!38957))

(assert (=> b!128197 d!38727))

(declare-fun call!13978 () ListLongMap!1693)

(declare-fun c!23730 () Bool)

(declare-fun call!13976 () ListLongMap!1693)

(declare-fun call!13980 () ListLongMap!1693)

(declare-fun call!13977 () ListLongMap!1693)

(declare-fun c!23726 () Bool)

(declare-fun bm!13973 () Bool)

(assert (=> bm!13973 (= call!13976 (+!166 (ite c!23730 call!13980 (ite c!23726 call!13978 call!13977)) (ite (or c!23730 c!23726) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(declare-fun b!129074 () Bool)

(declare-fun e!84260 () ListLongMap!1693)

(declare-fun call!13979 () ListLongMap!1693)

(assert (=> b!129074 (= e!84260 call!13979)))

(declare-fun b!129075 () Bool)

(declare-fun e!84257 () Bool)

(declare-fun call!13981 () Bool)

(assert (=> b!129075 (= e!84257 (not call!13981))))

(declare-fun bm!13974 () Bool)

(declare-fun call!13982 () Bool)

(declare-fun lt!67015 () ListLongMap!1693)

(assert (=> bm!13974 (= call!13982 (contains!882 lt!67015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129076 () Bool)

(declare-fun c!23725 () Bool)

(assert (=> b!129076 (= c!23725 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84259 () ListLongMap!1693)

(assert (=> b!129076 (= e!84260 e!84259)))

(declare-fun b!129077 () Bool)

(declare-fun e!84256 () Bool)

(assert (=> b!129077 (= e!84257 e!84256)))

(declare-fun res!62327 () Bool)

(assert (=> b!129077 (= res!62327 call!13981)))

(assert (=> b!129077 (=> (not res!62327) (not e!84256))))

(declare-fun b!129078 () Bool)

(declare-fun e!84258 () Unit!3998)

(declare-fun lt!67004 () Unit!3998)

(assert (=> b!129078 (= e!84258 lt!67004)))

(declare-fun lt!67009 () ListLongMap!1693)

(assert (=> b!129078 (= lt!67009 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67010 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67010 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67008 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67008 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!66997 () Unit!3998)

(assert (=> b!129078 (= lt!66997 (addStillContains!88 lt!67009 lt!67010 (zeroValue!2666 newMap!16) lt!67008))))

(assert (=> b!129078 (contains!882 (+!166 lt!67009 (tuple2!2583 lt!67010 (zeroValue!2666 newMap!16))) lt!67008)))

(declare-fun lt!66996 () Unit!3998)

(assert (=> b!129078 (= lt!66996 lt!66997)))

(declare-fun lt!67005 () ListLongMap!1693)

(assert (=> b!129078 (= lt!67005 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67001 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67001 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67014 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67014 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67007 () Unit!3998)

(assert (=> b!129078 (= lt!67007 (addApplyDifferent!88 lt!67005 lt!67001 (minValue!2666 newMap!16) lt!67014))))

(assert (=> b!129078 (= (apply!112 (+!166 lt!67005 (tuple2!2583 lt!67001 (minValue!2666 newMap!16))) lt!67014) (apply!112 lt!67005 lt!67014))))

(declare-fun lt!66999 () Unit!3998)

(assert (=> b!129078 (= lt!66999 lt!67007)))

(declare-fun lt!67006 () ListLongMap!1693)

(assert (=> b!129078 (= lt!67006 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!66995 () (_ BitVec 64))

(assert (=> b!129078 (= lt!66995 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67012 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67012 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67000 () Unit!3998)

(assert (=> b!129078 (= lt!67000 (addApplyDifferent!88 lt!67006 lt!66995 (zeroValue!2666 newMap!16) lt!67012))))

(assert (=> b!129078 (= (apply!112 (+!166 lt!67006 (tuple2!2583 lt!66995 (zeroValue!2666 newMap!16))) lt!67012) (apply!112 lt!67006 lt!67012))))

(declare-fun lt!66994 () Unit!3998)

(assert (=> b!129078 (= lt!66994 lt!67000)))

(declare-fun lt!67002 () ListLongMap!1693)

(assert (=> b!129078 (= lt!67002 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67003 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67003 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67013 () (_ BitVec 64))

(assert (=> b!129078 (= lt!67013 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129078 (= lt!67004 (addApplyDifferent!88 lt!67002 lt!67003 (minValue!2666 newMap!16) lt!67013))))

(assert (=> b!129078 (= (apply!112 (+!166 lt!67002 (tuple2!2583 lt!67003 (minValue!2666 newMap!16))) lt!67013) (apply!112 lt!67002 lt!67013))))

(declare-fun b!129079 () Bool)

(assert (=> b!129079 (= e!84259 call!13979)))

(declare-fun b!129080 () Bool)

(declare-fun e!84253 () Bool)

(assert (=> b!129080 (= e!84253 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129081 () Bool)

(assert (=> b!129081 (= e!84256 (= (apply!112 lt!67015 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 newMap!16)))))

(declare-fun b!129082 () Bool)

(declare-fun e!84252 () Bool)

(assert (=> b!129082 (= e!84252 e!84257)))

(declare-fun c!23728 () Bool)

(assert (=> b!129082 (= c!23728 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129083 () Bool)

(declare-fun e!84261 () Bool)

(declare-fun e!84255 () Bool)

(assert (=> b!129083 (= e!84261 e!84255)))

(declare-fun res!62333 () Bool)

(assert (=> b!129083 (=> (not res!62333) (not e!84255))))

(assert (=> b!129083 (= res!62333 (contains!882 lt!67015 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129083 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129084 () Bool)

(declare-fun res!62331 () Bool)

(assert (=> b!129084 (=> (not res!62331) (not e!84252))))

(assert (=> b!129084 (= res!62331 e!84261)))

(declare-fun res!62329 () Bool)

(assert (=> b!129084 (=> res!62329 e!84261)))

(assert (=> b!129084 (= res!62329 (not e!84253))))

(declare-fun res!62326 () Bool)

(assert (=> b!129084 (=> (not res!62326) (not e!84253))))

(assert (=> b!129084 (= res!62326 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129085 () Bool)

(assert (=> b!129085 (= e!84259 call!13977)))

(declare-fun b!129086 () Bool)

(declare-fun e!84254 () Bool)

(declare-fun e!84262 () Bool)

(assert (=> b!129086 (= e!84254 e!84262)))

(declare-fun res!62334 () Bool)

(assert (=> b!129086 (= res!62334 call!13982)))

(assert (=> b!129086 (=> (not res!62334) (not e!84262))))

(declare-fun b!129087 () Bool)

(declare-fun e!84250 () ListLongMap!1693)

(assert (=> b!129087 (= e!84250 (+!166 call!13976 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))

(declare-fun bm!13975 () Bool)

(assert (=> bm!13975 (= call!13981 (contains!882 lt!67015 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13976 () Bool)

(assert (=> bm!13976 (= call!13979 call!13976)))

(declare-fun b!129088 () Bool)

(declare-fun res!62328 () Bool)

(assert (=> b!129088 (=> (not res!62328) (not e!84252))))

(assert (=> b!129088 (= res!62328 e!84254)))

(declare-fun c!23727 () Bool)

(assert (=> b!129088 (= c!23727 (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13977 () Bool)

(assert (=> bm!13977 (= call!13978 call!13980)))

(declare-fun b!129089 () Bool)

(assert (=> b!129089 (= e!84250 e!84260)))

(assert (=> b!129089 (= c!23726 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129090 () Bool)

(declare-fun e!84251 () Bool)

(assert (=> b!129090 (= e!84251 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13978 () Bool)

(assert (=> bm!13978 (= call!13977 call!13978)))

(declare-fun b!129091 () Bool)

(assert (=> b!129091 (= e!84262 (= (apply!112 lt!67015 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!39193 () Bool)

(assert (=> d!39193 e!84252))

(declare-fun res!62330 () Bool)

(assert (=> d!39193 (=> (not res!62330) (not e!84252))))

(assert (=> d!39193 (= res!62330 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!66998 () ListLongMap!1693)

(assert (=> d!39193 (= lt!67015 lt!66998)))

(declare-fun lt!67011 () Unit!3998)

(assert (=> d!39193 (= lt!67011 e!84258)))

(declare-fun c!23729 () Bool)

(assert (=> d!39193 (= c!23729 e!84251)))

(declare-fun res!62332 () Bool)

(assert (=> d!39193 (=> (not res!62332) (not e!84251))))

(assert (=> d!39193 (= res!62332 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39193 (= lt!66998 e!84250)))

(assert (=> d!39193 (= c!23730 (and (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39193 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39193 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!67015)))

(declare-fun b!129092 () Bool)

(declare-fun Unit!4042 () Unit!3998)

(assert (=> b!129092 (= e!84258 Unit!4042)))

(declare-fun b!129093 () Bool)

(assert (=> b!129093 (= e!84255 (= (apply!112 lt!67015 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129093 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))))))

(assert (=> b!129093 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13979 () Bool)

(assert (=> bm!13979 (= call!13980 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!129094 () Bool)

(assert (=> b!129094 (= e!84254 (not call!13982))))

(assert (= (and d!39193 c!23730) b!129087))

(assert (= (and d!39193 (not c!23730)) b!129089))

(assert (= (and b!129089 c!23726) b!129074))

(assert (= (and b!129089 (not c!23726)) b!129076))

(assert (= (and b!129076 c!23725) b!129079))

(assert (= (and b!129076 (not c!23725)) b!129085))

(assert (= (or b!129079 b!129085) bm!13978))

(assert (= (or b!129074 bm!13978) bm!13977))

(assert (= (or b!129074 b!129079) bm!13976))

(assert (= (or b!129087 bm!13977) bm!13979))

(assert (= (or b!129087 bm!13976) bm!13973))

(assert (= (and d!39193 res!62332) b!129090))

(assert (= (and d!39193 c!23729) b!129078))

(assert (= (and d!39193 (not c!23729)) b!129092))

(assert (= (and d!39193 res!62330) b!129084))

(assert (= (and b!129084 res!62326) b!129080))

(assert (= (and b!129084 (not res!62329)) b!129083))

(assert (= (and b!129083 res!62333) b!129093))

(assert (= (and b!129084 res!62331) b!129088))

(assert (= (and b!129088 c!23727) b!129086))

(assert (= (and b!129088 (not c!23727)) b!129094))

(assert (= (and b!129086 res!62334) b!129091))

(assert (= (or b!129086 b!129094) bm!13974))

(assert (= (and b!129088 res!62328) b!129082))

(assert (= (and b!129082 c!23728) b!129077))

(assert (= (and b!129082 (not c!23728)) b!129075))

(assert (= (and b!129077 res!62327) b!129081))

(assert (= (or b!129077 b!129075) bm!13975))

(declare-fun b_lambda!5737 () Bool)

(assert (=> (not b_lambda!5737) (not b!129093)))

(assert (=> b!129093 t!6123))

(declare-fun b_and!8001 () Bool)

(assert (= b_and!7997 (and (=> t!6123 result!3905) b_and!8001)))

(assert (=> b!129093 t!6125))

(declare-fun b_and!8003 () Bool)

(assert (= b_and!7999 (and (=> t!6125 result!3907) b_and!8003)))

(declare-fun m!151729 () Bool)

(assert (=> bm!13975 m!151729))

(declare-fun m!151731 () Bool)

(assert (=> b!129091 m!151731))

(declare-fun m!151733 () Bool)

(assert (=> bm!13979 m!151733))

(declare-fun m!151735 () Bool)

(assert (=> b!129078 m!151735))

(declare-fun m!151737 () Bool)

(assert (=> b!129078 m!151737))

(declare-fun m!151739 () Bool)

(assert (=> b!129078 m!151739))

(declare-fun m!151741 () Bool)

(assert (=> b!129078 m!151741))

(declare-fun m!151743 () Bool)

(assert (=> b!129078 m!151743))

(declare-fun m!151745 () Bool)

(assert (=> b!129078 m!151745))

(declare-fun m!151747 () Bool)

(assert (=> b!129078 m!151747))

(declare-fun m!151749 () Bool)

(assert (=> b!129078 m!151749))

(assert (=> b!129078 m!150023))

(declare-fun m!151751 () Bool)

(assert (=> b!129078 m!151751))

(declare-fun m!151753 () Bool)

(assert (=> b!129078 m!151753))

(assert (=> b!129078 m!151741))

(declare-fun m!151755 () Bool)

(assert (=> b!129078 m!151755))

(declare-fun m!151757 () Bool)

(assert (=> b!129078 m!151757))

(assert (=> b!129078 m!151739))

(declare-fun m!151759 () Bool)

(assert (=> b!129078 m!151759))

(assert (=> b!129078 m!151733))

(assert (=> b!129078 m!151751))

(declare-fun m!151761 () Bool)

(assert (=> b!129078 m!151761))

(assert (=> b!129078 m!151737))

(declare-fun m!151763 () Bool)

(assert (=> b!129078 m!151763))

(assert (=> d!39193 m!150007))

(assert (=> b!129090 m!150023))

(assert (=> b!129090 m!150023))

(assert (=> b!129090 m!150115))

(declare-fun m!151765 () Bool)

(assert (=> bm!13974 m!151765))

(declare-fun m!151767 () Bool)

(assert (=> b!129087 m!151767))

(declare-fun m!151769 () Bool)

(assert (=> b!129081 m!151769))

(assert (=> b!129093 m!150023))

(declare-fun m!151771 () Bool)

(assert (=> b!129093 m!151771))

(declare-fun m!151773 () Bool)

(assert (=> b!129093 m!151773))

(assert (=> b!129093 m!150127))

(assert (=> b!129093 m!150023))

(assert (=> b!129093 m!151773))

(assert (=> b!129093 m!150127))

(declare-fun m!151775 () Bool)

(assert (=> b!129093 m!151775))

(assert (=> b!129080 m!150023))

(assert (=> b!129080 m!150023))

(assert (=> b!129080 m!150115))

(declare-fun m!151777 () Bool)

(assert (=> bm!13973 m!151777))

(assert (=> b!129083 m!150023))

(assert (=> b!129083 m!150023))

(declare-fun m!151779 () Bool)

(assert (=> b!129083 m!151779))

(assert (=> b!128197 d!39193))

(assert (=> d!38771 d!38881))

(declare-fun d!39195 () Bool)

(assert (=> d!39195 (= (apply!112 lt!66604 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1466 (getValueByKey!167 (toList!862 lt!66604) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5366 () Bool)

(assert (= bs!5366 d!39195))

(assert (=> bs!5366 m!150023))

(declare-fun m!151781 () Bool)

(assert (=> bs!5366 m!151781))

(assert (=> bs!5366 m!151781))

(declare-fun m!151783 () Bool)

(assert (=> bs!5366 m!151783))

(assert (=> b!128453 d!39195))

(declare-fun d!39197 () Bool)

(declare-fun c!23731 () Bool)

(assert (=> d!39197 (= c!23731 ((_ is ValueCellFull!1083) (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000)))))

(declare-fun e!84263 () V!3451)

(assert (=> d!39197 (= (get!1462 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84263)))

(declare-fun b!129095 () Bool)

(assert (=> b!129095 (= e!84263 (get!1464 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129096 () Bool)

(assert (=> b!129096 (= e!84263 (get!1465 (select (arr!2237 (ite (or c!23470 c!23463) (_values!2788 newMap!16) lt!66302)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39197 c!23731) b!129095))

(assert (= (and d!39197 (not c!23731)) b!129096))

(assert (=> b!129095 m!150503))

(assert (=> b!129095 m!150127))

(declare-fun m!151785 () Bool)

(assert (=> b!129095 m!151785))

(assert (=> b!129096 m!150503))

(assert (=> b!129096 m!150127))

(declare-fun m!151787 () Bool)

(assert (=> b!129096 m!151787))

(assert (=> b!128453 d!39197))

(assert (=> bm!13894 d!39075))

(declare-fun d!39199 () Bool)

(assert (=> d!39199 (contains!882 (getCurrentListMap!534 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (select (arr!2236 (_keys!4542 newMap!16)) (index!3281 lt!66287)))))

(assert (=> d!39199 true))

(declare-fun _$16!145 () Unit!3998)

(assert (=> d!39199 (= (choose!784 (_keys!4542 newMap!16) lt!66302 (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (index!3281 lt!66287) (defaultEntry!2805 newMap!16)) _$16!145)))

(declare-fun bs!5367 () Bool)

(assert (= bs!5367 d!39199))

(assert (=> bs!5367 m!150061))

(assert (=> bs!5367 m!149947))

(assert (=> bs!5367 m!150061))

(assert (=> bs!5367 m!149947))

(assert (=> bs!5367 m!150063))

(assert (=> d!38721 d!39199))

(assert (=> d!38721 d!38881))

(declare-fun d!39201 () Bool)

(declare-fun res!62335 () Bool)

(declare-fun e!84264 () Bool)

(assert (=> d!39201 (=> res!62335 e!84264)))

(assert (=> d!39201 (= res!62335 (and ((_ is Cons!1720) (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (= (_1!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(assert (=> d!39201 (= (containsKey!171 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)) e!84264)))

(declare-fun b!129097 () Bool)

(declare-fun e!84265 () Bool)

(assert (=> b!129097 (= e!84264 e!84265)))

(declare-fun res!62336 () Bool)

(assert (=> b!129097 (=> (not res!62336) (not e!84265))))

(assert (=> b!129097 (= res!62336 (and (or (not ((_ is Cons!1720) (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (bvsle (_1!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))) ((_ is Cons!1720) (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (bvslt (_1!1301 (h!2323 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355))))))

(declare-fun b!129098 () Bool)

(assert (=> b!129098 (= e!84265 (containsKey!171 (t!6115 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355)))))

(assert (= (and d!39201 (not res!62335)) b!129097))

(assert (= (and b!129097 res!62336) b!129098))

(assert (=> b!129098 m!149785))

(declare-fun m!151789 () Bool)

(assert (=> b!129098 m!151789))

(assert (=> d!38725 d!39201))

(assert (=> d!38727 d!38881))

(declare-fun b!129099 () Bool)

(declare-fun e!84267 () (_ BitVec 32))

(assert (=> b!129099 (= e!84267 #b00000000000000000000000000000000)))

(declare-fun bm!13980 () Bool)

(declare-fun call!13983 () (_ BitVec 32))

(assert (=> bm!13980 (= call!13983 (arrayCountValidKeys!0 (_keys!4542 (_2!1302 lt!66286)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(declare-fun b!129100 () Bool)

(declare-fun e!84266 () (_ BitVec 32))

(assert (=> b!129100 (= e!84267 e!84266)))

(declare-fun c!23733 () Bool)

(assert (=> b!129100 (= c!23733 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun d!39203 () Bool)

(declare-fun lt!67016 () (_ BitVec 32))

(assert (=> d!39203 (and (bvsge lt!67016 #b00000000000000000000000000000000) (bvsle lt!67016 (bvsub (size!2501 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(assert (=> d!39203 (= lt!67016 e!84267)))

(declare-fun c!23732 () Bool)

(assert (=> d!39203 (= c!23732 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(assert (=> d!39203 (and (bvsle #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2501 (_keys!4542 (_2!1302 lt!66286))) (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(assert (=> d!39203 (= (arrayCountValidKeys!0 (_keys!4542 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))) lt!67016)))

(declare-fun b!129101 () Bool)

(assert (=> b!129101 (= e!84266 call!13983)))

(declare-fun b!129102 () Bool)

(assert (=> b!129102 (= e!84266 (bvadd #b00000000000000000000000000000001 call!13983))))

(assert (= (and d!39203 c!23732) b!129099))

(assert (= (and d!39203 (not c!23732)) b!129100))

(assert (= (and b!129100 c!23733) b!129102))

(assert (= (and b!129100 (not c!23733)) b!129101))

(assert (= (or b!129102 b!129101) bm!13980))

(declare-fun m!151791 () Bool)

(assert (=> bm!13980 m!151791))

(assert (=> b!129100 m!150871))

(assert (=> b!129100 m!150871))

(assert (=> b!129100 m!150875))

(assert (=> b!128117 d!39203))

(declare-fun d!39205 () Bool)

(declare-fun e!84268 () Bool)

(assert (=> d!39205 e!84268))

(declare-fun res!62337 () Bool)

(assert (=> d!39205 (=> (not res!62337) (not e!84268))))

(declare-fun lt!67017 () ListLongMap!1693)

(assert (=> d!39205 (= res!62337 (contains!882 lt!67017 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!67018 () List!1724)

(assert (=> d!39205 (= lt!67017 (ListLongMap!1694 lt!67018))))

(declare-fun lt!67019 () Unit!3998)

(declare-fun lt!67020 () Unit!3998)

(assert (=> d!39205 (= lt!67019 lt!67020)))

(assert (=> d!39205 (= (getValueByKey!167 lt!67018 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39205 (= lt!67020 (lemmaContainsTupThenGetReturnValue!84 lt!67018 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39205 (= lt!67018 (insertStrictlySorted!86 (toList!862 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39205 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67017)))

(declare-fun b!129103 () Bool)

(declare-fun res!62338 () Bool)

(assert (=> b!129103 (=> (not res!62338) (not e!84268))))

(assert (=> b!129103 (= res!62338 (= (getValueByKey!167 (toList!862 lt!67017) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129104 () Bool)

(assert (=> b!129104 (= e!84268 (contains!884 (toList!862 lt!67017) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39205 res!62337) b!129103))

(assert (= (and b!129103 res!62338) b!129104))

(declare-fun m!151793 () Bool)

(assert (=> d!39205 m!151793))

(declare-fun m!151795 () Bool)

(assert (=> d!39205 m!151795))

(declare-fun m!151797 () Bool)

(assert (=> d!39205 m!151797))

(declare-fun m!151799 () Bool)

(assert (=> d!39205 m!151799))

(declare-fun m!151801 () Bool)

(assert (=> b!129103 m!151801))

(declare-fun m!151803 () Bool)

(assert (=> b!129104 m!151803))

(assert (=> d!38713 d!39205))

(declare-fun c!23739 () Bool)

(declare-fun call!13986 () ListLongMap!1693)

(declare-fun call!13984 () ListLongMap!1693)

(declare-fun call!13985 () ListLongMap!1693)

(declare-fun bm!13981 () Bool)

(declare-fun c!23735 () Bool)

(declare-fun call!13988 () ListLongMap!1693)

(assert (=> bm!13981 (= call!13984 (+!166 (ite c!23739 call!13988 (ite c!23735 call!13986 call!13985)) (ite (or c!23739 c!23735) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!129105 () Bool)

(declare-fun e!84279 () ListLongMap!1693)

(declare-fun call!13987 () ListLongMap!1693)

(assert (=> b!129105 (= e!84279 call!13987)))

(declare-fun b!129106 () Bool)

(declare-fun e!84276 () Bool)

(declare-fun call!13989 () Bool)

(assert (=> b!129106 (= e!84276 (not call!13989))))

(declare-fun bm!13982 () Bool)

(declare-fun call!13990 () Bool)

(declare-fun lt!67042 () ListLongMap!1693)

(assert (=> bm!13982 (= call!13990 (contains!882 lt!67042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129107 () Bool)

(declare-fun c!23734 () Bool)

(assert (=> b!129107 (= c!23734 (and (not (= (bvand lt!66298 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!66298 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84278 () ListLongMap!1693)

(assert (=> b!129107 (= e!84279 e!84278)))

(declare-fun b!129108 () Bool)

(declare-fun e!84275 () Bool)

(assert (=> b!129108 (= e!84276 e!84275)))

(declare-fun res!62340 () Bool)

(assert (=> b!129108 (= res!62340 call!13989)))

(assert (=> b!129108 (=> (not res!62340) (not e!84275))))

(declare-fun b!129109 () Bool)

(declare-fun e!84277 () Unit!3998)

(declare-fun lt!67031 () Unit!3998)

(assert (=> b!129109 (= e!84277 lt!67031)))

(declare-fun lt!67036 () ListLongMap!1693)

(assert (=> b!129109 (= lt!67036 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67037 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67037 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67035 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67035 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67024 () Unit!3998)

(assert (=> b!129109 (= lt!67024 (addStillContains!88 lt!67036 lt!67037 (zeroValue!2666 newMap!16) lt!67035))))

(assert (=> b!129109 (contains!882 (+!166 lt!67036 (tuple2!2583 lt!67037 (zeroValue!2666 newMap!16))) lt!67035)))

(declare-fun lt!67023 () Unit!3998)

(assert (=> b!129109 (= lt!67023 lt!67024)))

(declare-fun lt!67032 () ListLongMap!1693)

(assert (=> b!129109 (= lt!67032 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67028 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67028 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67041 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67041 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67034 () Unit!3998)

(assert (=> b!129109 (= lt!67034 (addApplyDifferent!88 lt!67032 lt!67028 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!67041))))

(assert (=> b!129109 (= (apply!112 (+!166 lt!67032 (tuple2!2583 lt!67028 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67041) (apply!112 lt!67032 lt!67041))))

(declare-fun lt!67026 () Unit!3998)

(assert (=> b!129109 (= lt!67026 lt!67034)))

(declare-fun lt!67033 () ListLongMap!1693)

(assert (=> b!129109 (= lt!67033 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67022 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67022 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67039 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67039 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67027 () Unit!3998)

(assert (=> b!129109 (= lt!67027 (addApplyDifferent!88 lt!67033 lt!67022 (zeroValue!2666 newMap!16) lt!67039))))

(assert (=> b!129109 (= (apply!112 (+!166 lt!67033 (tuple2!2583 lt!67022 (zeroValue!2666 newMap!16))) lt!67039) (apply!112 lt!67033 lt!67039))))

(declare-fun lt!67021 () Unit!3998)

(assert (=> b!129109 (= lt!67021 lt!67027)))

(declare-fun lt!67029 () ListLongMap!1693)

(assert (=> b!129109 (= lt!67029 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun lt!67030 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67030 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67040 () (_ BitVec 64))

(assert (=> b!129109 (= lt!67040 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129109 (= lt!67031 (addApplyDifferent!88 lt!67029 lt!67030 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!67040))))

(assert (=> b!129109 (= (apply!112 (+!166 lt!67029 (tuple2!2583 lt!67030 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67040) (apply!112 lt!67029 lt!67040))))

(declare-fun b!129110 () Bool)

(assert (=> b!129110 (= e!84278 call!13987)))

(declare-fun b!129111 () Bool)

(declare-fun e!84272 () Bool)

(assert (=> b!129111 (= e!84272 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129112 () Bool)

(assert (=> b!129112 (= e!84275 (= (apply!112 lt!67042 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!129113 () Bool)

(declare-fun e!84271 () Bool)

(assert (=> b!129113 (= e!84271 e!84276)))

(declare-fun c!23737 () Bool)

(assert (=> b!129113 (= c!23737 (not (= (bvand lt!66298 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129114 () Bool)

(declare-fun e!84280 () Bool)

(declare-fun e!84274 () Bool)

(assert (=> b!129114 (= e!84280 e!84274)))

(declare-fun res!62346 () Bool)

(assert (=> b!129114 (=> (not res!62346) (not e!84274))))

(assert (=> b!129114 (= res!62346 (contains!882 lt!67042 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129115 () Bool)

(declare-fun res!62344 () Bool)

(assert (=> b!129115 (=> (not res!62344) (not e!84271))))

(assert (=> b!129115 (= res!62344 e!84280)))

(declare-fun res!62342 () Bool)

(assert (=> b!129115 (=> res!62342 e!84280)))

(assert (=> b!129115 (= res!62342 (not e!84272))))

(declare-fun res!62339 () Bool)

(assert (=> b!129115 (=> (not res!62339) (not e!84272))))

(assert (=> b!129115 (= res!62339 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129116 () Bool)

(assert (=> b!129116 (= e!84278 call!13985)))

(declare-fun b!129117 () Bool)

(declare-fun e!84273 () Bool)

(declare-fun e!84281 () Bool)

(assert (=> b!129117 (= e!84273 e!84281)))

(declare-fun res!62347 () Bool)

(assert (=> b!129117 (= res!62347 call!13990)))

(assert (=> b!129117 (=> (not res!62347) (not e!84281))))

(declare-fun b!129118 () Bool)

(declare-fun e!84269 () ListLongMap!1693)

(assert (=> b!129118 (= e!84269 (+!166 call!13984 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13983 () Bool)

(assert (=> bm!13983 (= call!13989 (contains!882 lt!67042 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13984 () Bool)

(assert (=> bm!13984 (= call!13987 call!13984)))

(declare-fun b!129119 () Bool)

(declare-fun res!62341 () Bool)

(assert (=> b!129119 (=> (not res!62341) (not e!84271))))

(assert (=> b!129119 (= res!62341 e!84273)))

(declare-fun c!23736 () Bool)

(assert (=> b!129119 (= c!23736 (not (= (bvand lt!66298 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13985 () Bool)

(assert (=> bm!13985 (= call!13986 call!13988)))

(declare-fun b!129120 () Bool)

(assert (=> b!129120 (= e!84269 e!84279)))

(assert (=> b!129120 (= c!23735 (and (not (= (bvand lt!66298 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!66298 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129121 () Bool)

(declare-fun e!84270 () Bool)

(assert (=> b!129121 (= e!84270 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13986 () Bool)

(assert (=> bm!13986 (= call!13985 call!13986)))

(declare-fun b!129122 () Bool)

(assert (=> b!129122 (= e!84281 (= (apply!112 lt!67042 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 newMap!16)))))

(declare-fun d!39207 () Bool)

(assert (=> d!39207 e!84271))

(declare-fun res!62343 () Bool)

(assert (=> d!39207 (=> (not res!62343) (not e!84271))))

(assert (=> d!39207 (= res!62343 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))))

(declare-fun lt!67025 () ListLongMap!1693)

(assert (=> d!39207 (= lt!67042 lt!67025)))

(declare-fun lt!67038 () Unit!3998)

(assert (=> d!39207 (= lt!67038 e!84277)))

(declare-fun c!23738 () Bool)

(assert (=> d!39207 (= c!23738 e!84270)))

(declare-fun res!62345 () Bool)

(assert (=> d!39207 (=> (not res!62345) (not e!84270))))

(assert (=> d!39207 (= res!62345 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39207 (= lt!67025 e!84269)))

(assert (=> d!39207 (= c!23739 (and (not (= (bvand lt!66298 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!66298 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39207 (validMask!0 (mask!7073 newMap!16))))

(assert (=> d!39207 (= (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) lt!67042)))

(declare-fun b!129123 () Bool)

(declare-fun Unit!4043 () Unit!3998)

(assert (=> b!129123 (= e!84277 Unit!4043)))

(declare-fun b!129124 () Bool)

(assert (=> b!129124 (= e!84274 (= (apply!112 lt!67042 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (_values!2788 newMap!16))))))

(assert (=> b!129124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 newMap!16))))))

(declare-fun bm!13987 () Bool)

(assert (=> bm!13987 (= call!13988 (getCurrentListMapNoExtraKeys!133 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(declare-fun b!129125 () Bool)

(assert (=> b!129125 (= e!84273 (not call!13990))))

(assert (= (and d!39207 c!23739) b!129118))

(assert (= (and d!39207 (not c!23739)) b!129120))

(assert (= (and b!129120 c!23735) b!129105))

(assert (= (and b!129120 (not c!23735)) b!129107))

(assert (= (and b!129107 c!23734) b!129110))

(assert (= (and b!129107 (not c!23734)) b!129116))

(assert (= (or b!129110 b!129116) bm!13986))

(assert (= (or b!129105 bm!13986) bm!13985))

(assert (= (or b!129105 b!129110) bm!13984))

(assert (= (or b!129118 bm!13985) bm!13987))

(assert (= (or b!129118 bm!13984) bm!13981))

(assert (= (and d!39207 res!62345) b!129121))

(assert (= (and d!39207 c!23738) b!129109))

(assert (= (and d!39207 (not c!23738)) b!129123))

(assert (= (and d!39207 res!62343) b!129115))

(assert (= (and b!129115 res!62339) b!129111))

(assert (= (and b!129115 (not res!62342)) b!129114))

(assert (= (and b!129114 res!62346) b!129124))

(assert (= (and b!129115 res!62344) b!129119))

(assert (= (and b!129119 c!23736) b!129117))

(assert (= (and b!129119 (not c!23736)) b!129125))

(assert (= (and b!129117 res!62347) b!129122))

(assert (= (or b!129117 b!129125) bm!13982))

(assert (= (and b!129119 res!62341) b!129113))

(assert (= (and b!129113 c!23737) b!129108))

(assert (= (and b!129113 (not c!23737)) b!129106))

(assert (= (and b!129108 res!62340) b!129112))

(assert (= (or b!129108 b!129106) bm!13983))

(declare-fun b_lambda!5739 () Bool)

(assert (=> (not b_lambda!5739) (not b!129124)))

(assert (=> b!129124 t!6123))

(declare-fun b_and!8005 () Bool)

(assert (= b_and!8001 (and (=> t!6123 result!3905) b_and!8005)))

(assert (=> b!129124 t!6125))

(declare-fun b_and!8007 () Bool)

(assert (= b_and!8003 (and (=> t!6125 result!3907) b_and!8007)))

(declare-fun m!151805 () Bool)

(assert (=> bm!13983 m!151805))

(declare-fun m!151807 () Bool)

(assert (=> b!129122 m!151807))

(assert (=> bm!13987 m!149783))

(declare-fun m!151809 () Bool)

(assert (=> bm!13987 m!151809))

(assert (=> b!129109 m!149783))

(declare-fun m!151811 () Bool)

(assert (=> b!129109 m!151811))

(declare-fun m!151813 () Bool)

(assert (=> b!129109 m!151813))

(declare-fun m!151815 () Bool)

(assert (=> b!129109 m!151815))

(declare-fun m!151817 () Bool)

(assert (=> b!129109 m!151817))

(declare-fun m!151819 () Bool)

(assert (=> b!129109 m!151819))

(declare-fun m!151821 () Bool)

(assert (=> b!129109 m!151821))

(assert (=> b!129109 m!149783))

(declare-fun m!151823 () Bool)

(assert (=> b!129109 m!151823))

(declare-fun m!151825 () Bool)

(assert (=> b!129109 m!151825))

(assert (=> b!129109 m!150023))

(declare-fun m!151827 () Bool)

(assert (=> b!129109 m!151827))

(declare-fun m!151829 () Bool)

(assert (=> b!129109 m!151829))

(assert (=> b!129109 m!151817))

(declare-fun m!151831 () Bool)

(assert (=> b!129109 m!151831))

(declare-fun m!151833 () Bool)

(assert (=> b!129109 m!151833))

(assert (=> b!129109 m!151815))

(declare-fun m!151835 () Bool)

(assert (=> b!129109 m!151835))

(assert (=> b!129109 m!149783))

(assert (=> b!129109 m!151809))

(assert (=> b!129109 m!151827))

(declare-fun m!151837 () Bool)

(assert (=> b!129109 m!151837))

(assert (=> b!129109 m!151813))

(declare-fun m!151839 () Bool)

(assert (=> b!129109 m!151839))

(assert (=> d!39207 m!150007))

(assert (=> b!129121 m!150023))

(assert (=> b!129121 m!150023))

(assert (=> b!129121 m!150115))

(declare-fun m!151841 () Bool)

(assert (=> bm!13982 m!151841))

(declare-fun m!151843 () Bool)

(assert (=> b!129118 m!151843))

(declare-fun m!151845 () Bool)

(assert (=> b!129112 m!151845))

(assert (=> b!129124 m!150023))

(declare-fun m!151847 () Bool)

(assert (=> b!129124 m!151847))

(assert (=> b!129124 m!150125))

(assert (=> b!129124 m!150127))

(assert (=> b!129124 m!150023))

(assert (=> b!129124 m!150125))

(assert (=> b!129124 m!150127))

(assert (=> b!129124 m!150129))

(assert (=> b!129111 m!150023))

(assert (=> b!129111 m!150023))

(assert (=> b!129111 m!150115))

(declare-fun m!151849 () Bool)

(assert (=> bm!13981 m!151849))

(assert (=> b!129114 m!150023))

(assert (=> b!129114 m!150023))

(declare-fun m!151851 () Bool)

(assert (=> b!129114 m!151851))

(assert (=> d!38713 d!39207))

(assert (=> d!38713 d!38727))

(declare-fun d!39209 () Bool)

(assert (=> d!39209 (= (+!166 (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!534 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2805 newMap!16)))))

(assert (=> d!39209 true))

(declare-fun _$8!112 () Unit!3998)

(assert (=> d!39209 (= (choose!782 (_keys!4542 newMap!16) (_values!2788 newMap!16) (mask!7073 newMap!16) (extraKeys!2582 newMap!16) lt!66298 (zeroValue!2666 newMap!16) (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2805 newMap!16)) _$8!112)))

(declare-fun bs!5368 () Bool)

(assert (= bs!5368 d!39209))

(assert (=> bs!5368 m!149841))

(assert (=> bs!5368 m!149841))

(assert (=> bs!5368 m!150041))

(assert (=> bs!5368 m!149783))

(assert (=> bs!5368 m!150039))

(assert (=> d!38713 d!39209))

(assert (=> d!38713 d!38881))

(declare-fun b!129129 () Bool)

(declare-fun e!84283 () Option!173)

(assert (=> b!129129 (= e!84283 None!171)))

(declare-fun b!129128 () Bool)

(assert (=> b!129128 (= e!84283 (getValueByKey!167 (t!6115 (toList!862 lt!66315)) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129126 () Bool)

(declare-fun e!84282 () Option!173)

(assert (=> b!129126 (= e!84282 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66315)))))))

(declare-fun d!39211 () Bool)

(declare-fun c!23740 () Bool)

(assert (=> d!39211 (= c!23740 (and ((_ is Cons!1720) (toList!862 lt!66315)) (= (_1!1301 (h!2323 (toList!862 lt!66315))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39211 (= (getValueByKey!167 (toList!862 lt!66315) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84282)))

(declare-fun b!129127 () Bool)

(assert (=> b!129127 (= e!84282 e!84283)))

(declare-fun c!23741 () Bool)

(assert (=> b!129127 (= c!23741 (and ((_ is Cons!1720) (toList!862 lt!66315)) (not (= (_1!1301 (h!2323 (toList!862 lt!66315))) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39211 c!23740) b!129126))

(assert (= (and d!39211 (not c!23740)) b!129127))

(assert (= (and b!129127 c!23741) b!129128))

(assert (= (and b!129127 (not c!23741)) b!129129))

(declare-fun m!151853 () Bool)

(assert (=> b!129128 m!151853))

(assert (=> b!128124 d!39211))

(assert (=> bm!13866 d!39111))

(declare-fun d!39213 () Bool)

(declare-fun e!84285 () Bool)

(assert (=> d!39213 e!84285))

(declare-fun res!62348 () Bool)

(assert (=> d!39213 (=> res!62348 e!84285)))

(declare-fun lt!67045 () Bool)

(assert (=> d!39213 (= res!62348 (not lt!67045))))

(declare-fun lt!67044 () Bool)

(assert (=> d!39213 (= lt!67045 lt!67044)))

(declare-fun lt!67046 () Unit!3998)

(declare-fun e!84284 () Unit!3998)

(assert (=> d!39213 (= lt!67046 e!84284)))

(declare-fun c!23742 () Bool)

(assert (=> d!39213 (= c!23742 lt!67044)))

(assert (=> d!39213 (= lt!67044 (containsKey!171 (toList!862 lt!66604) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!39213 (= (contains!882 lt!66604 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) lt!67045)))

(declare-fun b!129130 () Bool)

(declare-fun lt!67043 () Unit!3998)

(assert (=> b!129130 (= e!84284 lt!67043)))

(assert (=> b!129130 (= lt!67043 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66604) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129130 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129131 () Bool)

(declare-fun Unit!4044 () Unit!3998)

(assert (=> b!129131 (= e!84284 Unit!4044)))

(declare-fun b!129132 () Bool)

(assert (=> b!129132 (= e!84285 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!39213 c!23742) b!129130))

(assert (= (and d!39213 (not c!23742)) b!129131))

(assert (= (and d!39213 (not res!62348)) b!129132))

(assert (=> d!39213 m!150023))

(declare-fun m!151855 () Bool)

(assert (=> d!39213 m!151855))

(assert (=> b!129130 m!150023))

(declare-fun m!151857 () Bool)

(assert (=> b!129130 m!151857))

(assert (=> b!129130 m!150023))

(assert (=> b!129130 m!151781))

(assert (=> b!129130 m!151781))

(declare-fun m!151859 () Bool)

(assert (=> b!129130 m!151859))

(assert (=> b!129132 m!150023))

(assert (=> b!129132 m!151781))

(assert (=> b!129132 m!151781))

(assert (=> b!129132 m!151859))

(assert (=> b!128443 d!39213))

(declare-fun b!129136 () Bool)

(declare-fun e!84287 () Option!173)

(assert (=> b!129136 (= e!84287 None!171)))

(declare-fun b!129135 () Bool)

(assert (=> b!129135 (= e!84287 (getValueByKey!167 (t!6115 (toList!862 lt!66559)) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129133 () Bool)

(declare-fun e!84286 () Option!173)

(assert (=> b!129133 (= e!84286 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66559)))))))

(declare-fun c!23743 () Bool)

(declare-fun d!39215 () Bool)

(assert (=> d!39215 (= c!23743 (and ((_ is Cons!1720) (toList!862 lt!66559)) (= (_1!1301 (h!2323 (toList!862 lt!66559))) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39215 (= (getValueByKey!167 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84286)))

(declare-fun b!129134 () Bool)

(assert (=> b!129134 (= e!84286 e!84287)))

(declare-fun c!23744 () Bool)

(assert (=> b!129134 (= c!23744 (and ((_ is Cons!1720) (toList!862 lt!66559)) (not (= (_1!1301 (h!2323 (toList!862 lt!66559))) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39215 c!23743) b!129133))

(assert (= (and d!39215 (not c!23743)) b!129134))

(assert (= (and b!129134 c!23744) b!129135))

(assert (= (and b!129134 (not c!23744)) b!129136))

(declare-fun m!151861 () Bool)

(assert (=> b!129135 m!151861))

(assert (=> b!128421 d!39215))

(declare-fun d!39217 () Bool)

(declare-fun e!84289 () Bool)

(assert (=> d!39217 e!84289))

(declare-fun res!62349 () Bool)

(assert (=> d!39217 (=> res!62349 e!84289)))

(declare-fun lt!67049 () Bool)

(assert (=> d!39217 (= res!62349 (not lt!67049))))

(declare-fun lt!67048 () Bool)

(assert (=> d!39217 (= lt!67049 lt!67048)))

(declare-fun lt!67050 () Unit!3998)

(declare-fun e!84288 () Unit!3998)

(assert (=> d!39217 (= lt!67050 e!84288)))

(declare-fun c!23745 () Bool)

(assert (=> d!39217 (= c!23745 lt!67048)))

(assert (=> d!39217 (= lt!67048 (containsKey!171 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39217 (= (contains!882 lt!66397 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!67049)))

(declare-fun b!129137 () Bool)

(declare-fun lt!67047 () Unit!3998)

(assert (=> b!129137 (= e!84288 lt!67047)))

(assert (=> b!129137 (= lt!67047 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!129137 (isDefined!121 (getValueByKey!167 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129138 () Bool)

(declare-fun Unit!4045 () Unit!3998)

(assert (=> b!129138 (= e!84288 Unit!4045)))

(declare-fun b!129139 () Bool)

(assert (=> b!129139 (= e!84289 (isDefined!121 (getValueByKey!167 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!39217 c!23745) b!129137))

(assert (= (and d!39217 (not c!23745)) b!129138))

(assert (= (and d!39217 (not res!62349)) b!129139))

(declare-fun m!151863 () Bool)

(assert (=> d!39217 m!151863))

(declare-fun m!151865 () Bool)

(assert (=> b!129137 m!151865))

(assert (=> b!129137 m!150189))

(assert (=> b!129137 m!150189))

(declare-fun m!151867 () Bool)

(assert (=> b!129137 m!151867))

(assert (=> b!129139 m!150189))

(assert (=> b!129139 m!150189))

(assert (=> b!129139 m!151867))

(assert (=> d!38751 d!39217))

(declare-fun b!129143 () Bool)

(declare-fun e!84291 () Option!173)

(assert (=> b!129143 (= e!84291 None!171)))

(declare-fun b!129142 () Bool)

(assert (=> b!129142 (= e!84291 (getValueByKey!167 (t!6115 lt!66398) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129140 () Bool)

(declare-fun e!84290 () Option!173)

(assert (=> b!129140 (= e!84290 (Some!172 (_2!1301 (h!2323 lt!66398))))))

(declare-fun d!39219 () Bool)

(declare-fun c!23746 () Bool)

(assert (=> d!39219 (= c!23746 (and ((_ is Cons!1720) lt!66398) (= (_1!1301 (h!2323 lt!66398)) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39219 (= (getValueByKey!167 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!84290)))

(declare-fun b!129141 () Bool)

(assert (=> b!129141 (= e!84290 e!84291)))

(declare-fun c!23747 () Bool)

(assert (=> b!129141 (= c!23747 (and ((_ is Cons!1720) lt!66398) (not (= (_1!1301 (h!2323 lt!66398)) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(assert (= (and d!39219 c!23746) b!129140))

(assert (= (and d!39219 (not c!23746)) b!129141))

(assert (= (and b!129141 c!23747) b!129142))

(assert (= (and b!129141 (not c!23747)) b!129143))

(declare-fun m!151869 () Bool)

(assert (=> b!129142 m!151869))

(assert (=> d!38751 d!39219))

(declare-fun d!39221 () Bool)

(assert (=> d!39221 (= (getValueByKey!167 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!172 (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!67051 () Unit!3998)

(assert (=> d!39221 (= lt!67051 (choose!792 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!84292 () Bool)

(assert (=> d!39221 e!84292))

(declare-fun res!62350 () Bool)

(assert (=> d!39221 (=> (not res!62350) (not e!84292))))

(assert (=> d!39221 (= res!62350 (isStrictlySorted!313 lt!66398))))

(assert (=> d!39221 (= (lemmaContainsTupThenGetReturnValue!84 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!67051)))

(declare-fun b!129144 () Bool)

(declare-fun res!62351 () Bool)

(assert (=> b!129144 (=> (not res!62351) (not e!84292))))

(assert (=> b!129144 (= res!62351 (containsKey!171 lt!66398 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129145 () Bool)

(assert (=> b!129145 (= e!84292 (contains!884 lt!66398 (tuple2!2583 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!39221 res!62350) b!129144))

(assert (= (and b!129144 res!62351) b!129145))

(assert (=> d!39221 m!150183))

(declare-fun m!151871 () Bool)

(assert (=> d!39221 m!151871))

(declare-fun m!151873 () Bool)

(assert (=> d!39221 m!151873))

(declare-fun m!151875 () Bool)

(assert (=> b!129144 m!151875))

(declare-fun m!151877 () Bool)

(assert (=> b!129145 m!151877))

(assert (=> d!38751 d!39221))

(declare-fun b!129146 () Bool)

(declare-fun c!23751 () Bool)

(assert (=> b!129146 (= c!23751 (and ((_ is Cons!1720) (toList!862 e!83650)) (bvsgt (_1!1301 (h!2323 (toList!862 e!83650))) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun e!84294 () List!1724)

(declare-fun e!84293 () List!1724)

(assert (=> b!129146 (= e!84294 e!84293)))

(declare-fun d!39223 () Bool)

(declare-fun e!84295 () Bool)

(assert (=> d!39223 e!84295))

(declare-fun res!62353 () Bool)

(assert (=> d!39223 (=> (not res!62353) (not e!84295))))

(declare-fun lt!67052 () List!1724)

(assert (=> d!39223 (= res!62353 (isStrictlySorted!313 lt!67052))))

(declare-fun e!84296 () List!1724)

(assert (=> d!39223 (= lt!67052 e!84296)))

(declare-fun c!23750 () Bool)

(assert (=> d!39223 (= c!23750 (and ((_ is Cons!1720) (toList!862 e!83650)) (bvslt (_1!1301 (h!2323 (toList!862 e!83650))) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39223 (isStrictlySorted!313 (toList!862 e!83650))))

(assert (=> d!39223 (= (insertStrictlySorted!86 (toList!862 e!83650) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!67052)))

(declare-fun b!129147 () Bool)

(declare-fun call!13993 () List!1724)

(assert (=> b!129147 (= e!84293 call!13993)))

(declare-fun b!129148 () Bool)

(declare-fun call!13991 () List!1724)

(assert (=> b!129148 (= e!84296 call!13991)))

(declare-fun e!84297 () List!1724)

(declare-fun b!129149 () Bool)

(declare-fun c!23748 () Bool)

(assert (=> b!129149 (= e!84297 (ite c!23748 (t!6115 (toList!862 e!83650)) (ite c!23751 (Cons!1720 (h!2323 (toList!862 e!83650)) (t!6115 (toList!862 e!83650))) Nil!1721)))))

(declare-fun b!129150 () Bool)

(assert (=> b!129150 (= e!84293 call!13993)))

(declare-fun b!129151 () Bool)

(assert (=> b!129151 (= e!84295 (contains!884 lt!67052 (tuple2!2583 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!129152 () Bool)

(declare-fun res!62352 () Bool)

(assert (=> b!129152 (=> (not res!62352) (not e!84295))))

(assert (=> b!129152 (= res!62352 (containsKey!171 lt!67052 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!13988 () Bool)

(assert (=> bm!13988 (= call!13991 ($colon$colon!89 e!84297 (ite c!23750 (h!2323 (toList!862 e!83650)) (tuple2!2583 (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun c!23749 () Bool)

(assert (=> bm!13988 (= c!23749 c!23750)))

(declare-fun b!129153 () Bool)

(declare-fun call!13992 () List!1724)

(assert (=> b!129153 (= e!84294 call!13992)))

(declare-fun b!129154 () Bool)

(assert (=> b!129154 (= e!84297 (insertStrictlySorted!86 (t!6115 (toList!862 e!83650)) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!13989 () Bool)

(assert (=> bm!13989 (= call!13993 call!13992)))

(declare-fun bm!13990 () Bool)

(assert (=> bm!13990 (= call!13992 call!13991)))

(declare-fun b!129155 () Bool)

(assert (=> b!129155 (= e!84296 e!84294)))

(assert (=> b!129155 (= c!23748 (and ((_ is Cons!1720) (toList!862 e!83650)) (= (_1!1301 (h!2323 (toList!862 e!83650))) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!39223 c!23750) b!129148))

(assert (= (and d!39223 (not c!23750)) b!129155))

(assert (= (and b!129155 c!23748) b!129153))

(assert (= (and b!129155 (not c!23748)) b!129146))

(assert (= (and b!129146 c!23751) b!129147))

(assert (= (and b!129146 (not c!23751)) b!129150))

(assert (= (or b!129147 b!129150) bm!13989))

(assert (= (or b!129153 bm!13989) bm!13990))

(assert (= (or b!129148 bm!13990) bm!13988))

(assert (= (and bm!13988 c!23749) b!129154))

(assert (= (and bm!13988 (not c!23749)) b!129149))

(assert (= (and d!39223 res!62353) b!129152))

(assert (= (and b!129152 res!62352) b!129151))

(declare-fun m!151879 () Bool)

(assert (=> b!129151 m!151879))

(declare-fun m!151881 () Bool)

(assert (=> d!39223 m!151881))

(declare-fun m!151883 () Bool)

(assert (=> d!39223 m!151883))

(declare-fun m!151885 () Bool)

(assert (=> b!129152 m!151885))

(declare-fun m!151887 () Bool)

(assert (=> bm!13988 m!151887))

(declare-fun m!151889 () Bool)

(assert (=> b!129154 m!151889))

(assert (=> d!38751 d!39223))

(declare-fun d!39225 () Bool)

(declare-fun res!62354 () Bool)

(declare-fun e!84298 () Bool)

(assert (=> d!39225 (=> res!62354 e!84298)))

(assert (=> d!39225 (= res!62354 (and ((_ is Cons!1720) (toList!862 lt!66213)) (= (_1!1301 (h!2323 (toList!862 lt!66213))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39225 (= (containsKey!171 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000) e!84298)))

(declare-fun b!129156 () Bool)

(declare-fun e!84299 () Bool)

(assert (=> b!129156 (= e!84298 e!84299)))

(declare-fun res!62355 () Bool)

(assert (=> b!129156 (=> (not res!62355) (not e!84299))))

(assert (=> b!129156 (= res!62355 (and (or (not ((_ is Cons!1720) (toList!862 lt!66213))) (bvsle (_1!1301 (h!2323 (toList!862 lt!66213))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1720) (toList!862 lt!66213)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66213))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129157 () Bool)

(assert (=> b!129157 (= e!84299 (containsKey!171 (t!6115 (toList!862 lt!66213)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39225 (not res!62354)) b!129156))

(assert (= (and b!129156 res!62355) b!129157))

(declare-fun m!151891 () Bool)

(assert (=> b!129157 m!151891))

(assert (=> d!38749 d!39225))

(declare-fun b!129158 () Bool)

(declare-fun e!84301 () Bool)

(declare-fun e!84302 () Bool)

(assert (=> b!129158 (= e!84301 e!84302)))

(declare-fun c!23752 () Bool)

(assert (=> b!129158 (= c!23752 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!129159 () Bool)

(declare-fun e!84300 () Bool)

(assert (=> b!129159 (= e!84302 e!84300)))

(declare-fun lt!67054 () (_ BitVec 64))

(assert (=> b!129159 (= lt!67054 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!67053 () Unit!3998)

(assert (=> b!129159 (= lt!67053 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4542 newMap!16) lt!67054 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!129159 (arrayContainsKey!0 (_keys!4542 newMap!16) lt!67054 #b00000000000000000000000000000000)))

(declare-fun lt!67055 () Unit!3998)

(assert (=> b!129159 (= lt!67055 lt!67053)))

(declare-fun res!62356 () Bool)

(assert (=> b!129159 (= res!62356 (= (seekEntryOrOpen!0 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4542 newMap!16) (mask!7073 newMap!16)) (Found!281 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!129159 (=> (not res!62356) (not e!84300))))

(declare-fun b!129160 () Bool)

(declare-fun call!13994 () Bool)

(assert (=> b!129160 (= e!84300 call!13994)))

(declare-fun b!129161 () Bool)

(assert (=> b!129161 (= e!84302 call!13994)))

(declare-fun bm!13991 () Bool)

(assert (=> bm!13991 (= call!13994 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4542 newMap!16) (mask!7073 newMap!16)))))

(declare-fun d!39227 () Bool)

(declare-fun res!62357 () Bool)

(assert (=> d!39227 (=> res!62357 e!84301)))

(assert (=> d!39227 (= res!62357 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39227 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4542 newMap!16) (mask!7073 newMap!16)) e!84301)))

(assert (= (and d!39227 (not res!62357)) b!129158))

(assert (= (and b!129158 c!23752) b!129159))

(assert (= (and b!129158 (not c!23752)) b!129161))

(assert (= (and b!129159 res!62356) b!129160))

(assert (= (or b!129160 b!129161) bm!13991))

(assert (=> b!129158 m!151197))

(assert (=> b!129158 m!151197))

(assert (=> b!129158 m!151201))

(assert (=> b!129159 m!151197))

(declare-fun m!151893 () Bool)

(assert (=> b!129159 m!151893))

(declare-fun m!151895 () Bool)

(assert (=> b!129159 m!151895))

(assert (=> b!129159 m!151197))

(declare-fun m!151897 () Bool)

(assert (=> b!129159 m!151897))

(declare-fun m!151899 () Bool)

(assert (=> bm!13991 m!151899))

(assert (=> bm!13887 d!39227))

(declare-fun b!129162 () Bool)

(declare-fun e!84304 () (_ BitVec 32))

(assert (=> b!129162 (= e!84304 #b00000000000000000000000000000000)))

(declare-fun bm!13992 () Bool)

(declare-fun call!13995 () (_ BitVec 32))

(assert (=> bm!13992 (= call!13995 (arrayCountValidKeys!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(declare-fun b!129163 () Bool)

(declare-fun e!84303 () (_ BitVec 32))

(assert (=> b!129163 (= e!84304 e!84303)))

(declare-fun c!23754 () Bool)

(assert (=> b!129163 (= c!23754 (validKeyInArray!0 (select (arr!2236 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!39229 () Bool)

(declare-fun lt!67056 () (_ BitVec 32))

(assert (=> d!39229 (and (bvsge lt!67056 #b00000000000000000000000000000000) (bvsle lt!67056 (bvsub (size!2501 (_keys!4542 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!39229 (= lt!67056 e!84304)))

(declare-fun c!23753 () Bool)

(assert (=> d!39229 (= c!23753 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39229 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!2501 (_keys!4542 newMap!16)) (size!2501 (_keys!4542 newMap!16))))))

(assert (=> d!39229 (= (arrayCountValidKeys!0 (_keys!4542 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2501 (_keys!4542 newMap!16))) lt!67056)))

(declare-fun b!129164 () Bool)

(assert (=> b!129164 (= e!84303 call!13995)))

(declare-fun b!129165 () Bool)

(assert (=> b!129165 (= e!84303 (bvadd #b00000000000000000000000000000001 call!13995))))

(assert (= (and d!39229 c!23753) b!129162))

(assert (= (and d!39229 (not c!23753)) b!129163))

(assert (= (and b!129163 c!23754) b!129165))

(assert (= (and b!129163 (not c!23754)) b!129164))

(assert (= (or b!129165 b!129164) bm!13992))

(declare-fun m!151901 () Bool)

(assert (=> bm!13992 m!151901))

(assert (=> b!129163 m!151197))

(assert (=> b!129163 m!151197))

(assert (=> b!129163 m!151201))

(assert (=> bm!13869 d!39229))

(assert (=> b!128365 d!38823))

(declare-fun d!39231 () Bool)

(assert (=> d!39231 (= (inRange!0 (ite c!23524 (index!3281 lt!66486) (ite c!23522 (index!3280 lt!66476) (index!3283 lt!66476))) (mask!7073 newMap!16)) (and (bvsge (ite c!23524 (index!3281 lt!66486) (ite c!23522 (index!3280 lt!66476) (index!3283 lt!66476))) #b00000000000000000000000000000000) (bvslt (ite c!23524 (index!3281 lt!66486) (ite c!23522 (index!3280 lt!66476) (index!3283 lt!66476))) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13878 d!39231))

(declare-fun b!129169 () Bool)

(declare-fun e!84306 () Option!173)

(assert (=> b!129169 (= e!84306 None!171)))

(declare-fun b!129168 () Bool)

(assert (=> b!129168 (= e!84306 (getValueByKey!167 (t!6115 (toList!862 lt!66397)) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129166 () Bool)

(declare-fun e!84305 () Option!173)

(assert (=> b!129166 (= e!84305 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66397)))))))

(declare-fun c!23755 () Bool)

(declare-fun d!39233 () Bool)

(assert (=> d!39233 (= c!23755 (and ((_ is Cons!1720) (toList!862 lt!66397)) (= (_1!1301 (h!2323 (toList!862 lt!66397))) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39233 (= (getValueByKey!167 (toList!862 lt!66397) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!84305)))

(declare-fun b!129167 () Bool)

(assert (=> b!129167 (= e!84305 e!84306)))

(declare-fun c!23756 () Bool)

(assert (=> b!129167 (= c!23756 (and ((_ is Cons!1720) (toList!862 lt!66397)) (not (= (_1!1301 (h!2323 (toList!862 lt!66397))) (_1!1301 (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(assert (= (and d!39233 c!23755) b!129166))

(assert (= (and d!39233 (not c!23755)) b!129167))

(assert (= (and b!129167 c!23756) b!129168))

(assert (= (and b!129167 (not c!23756)) b!129169))

(declare-fun m!151903 () Bool)

(assert (=> b!129168 m!151903))

(assert (=> b!128271 d!39233))

(declare-fun d!39235 () Bool)

(declare-fun e!84308 () Bool)

(assert (=> d!39235 e!84308))

(declare-fun res!62358 () Bool)

(assert (=> d!39235 (=> res!62358 e!84308)))

(declare-fun lt!67059 () Bool)

(assert (=> d!39235 (= res!62358 (not lt!67059))))

(declare-fun lt!67058 () Bool)

(assert (=> d!39235 (= lt!67059 lt!67058)))

(declare-fun lt!67060 () Unit!3998)

(declare-fun e!84307 () Unit!3998)

(assert (=> d!39235 (= lt!67060 e!84307)))

(declare-fun c!23757 () Bool)

(assert (=> d!39235 (= c!23757 lt!67058)))

(assert (=> d!39235 (= lt!67058 (containsKey!171 (toList!862 lt!66554) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!39235 (= (contains!882 lt!66554 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!67059)))

(declare-fun b!129170 () Bool)

(declare-fun lt!67057 () Unit!3998)

(assert (=> b!129170 (= e!84307 lt!67057)))

(assert (=> b!129170 (= lt!67057 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66554) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129170 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!129171 () Bool)

(declare-fun Unit!4046 () Unit!3998)

(assert (=> b!129171 (= e!84307 Unit!4046)))

(declare-fun b!129172 () Bool)

(assert (=> b!129172 (= e!84308 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!39235 c!23757) b!129170))

(assert (= (and d!39235 (not c!23757)) b!129171))

(assert (= (and d!39235 (not res!62358)) b!129172))

(assert (=> d!39235 m!149865))

(declare-fun m!151905 () Bool)

(assert (=> d!39235 m!151905))

(assert (=> b!129170 m!149865))

(declare-fun m!151907 () Bool)

(assert (=> b!129170 m!151907))

(assert (=> b!129170 m!149865))

(assert (=> b!129170 m!151183))

(assert (=> b!129170 m!151183))

(declare-fun m!151909 () Bool)

(assert (=> b!129170 m!151909))

(assert (=> b!129172 m!149865))

(assert (=> b!129172 m!151183))

(assert (=> b!129172 m!151183))

(assert (=> b!129172 m!151909))

(assert (=> b!128412 d!39235))

(declare-fun d!39237 () Bool)

(declare-fun e!84309 () Bool)

(assert (=> d!39237 e!84309))

(declare-fun res!62359 () Bool)

(assert (=> d!39237 (=> (not res!62359) (not e!84309))))

(declare-fun lt!67061 () ListLongMap!1693)

(assert (=> d!39237 (= res!62359 (contains!882 lt!67061 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(declare-fun lt!67062 () List!1724)

(assert (=> d!39237 (= lt!67061 (ListLongMap!1694 lt!67062))))

(declare-fun lt!67063 () Unit!3998)

(declare-fun lt!67064 () Unit!3998)

(assert (=> d!39237 (= lt!67063 lt!67064)))

(assert (=> d!39237 (= (getValueByKey!167 lt!67062 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!39237 (= lt!67064 (lemmaContainsTupThenGetReturnValue!84 lt!67062 (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!39237 (= lt!67062 (insertStrictlySorted!86 (toList!862 call!13901) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))))))

(assert (=> d!39237 (= (+!166 call!13901 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))) lt!67061)))

(declare-fun b!129173 () Bool)

(declare-fun res!62360 () Bool)

(assert (=> b!129173 (=> (not res!62360) (not e!84309))))

(assert (=> b!129173 (= res!62360 (= (getValueByKey!167 (toList!862 lt!67061) (_1!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))))

(declare-fun b!129174 () Bool)

(assert (=> b!129174 (= e!84309 (contains!884 (toList!862 lt!67061) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23470 (ite c!23469 (minValue!2666 newMap!16) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2666 newMap!16)))))))

(assert (= (and d!39237 res!62359) b!129173))

(assert (= (and b!129173 res!62360) b!129174))

(declare-fun m!151911 () Bool)

(assert (=> d!39237 m!151911))

(declare-fun m!151913 () Bool)

(assert (=> d!39237 m!151913))

(declare-fun m!151915 () Bool)

(assert (=> d!39237 m!151915))

(declare-fun m!151917 () Bool)

(assert (=> d!39237 m!151917))

(declare-fun m!151919 () Bool)

(assert (=> b!129173 m!151919))

(declare-fun m!151921 () Bool)

(assert (=> b!129174 m!151921))

(assert (=> b!128447 d!39237))

(declare-fun d!39239 () Bool)

(declare-fun e!84311 () Bool)

(assert (=> d!39239 e!84311))

(declare-fun res!62361 () Bool)

(assert (=> d!39239 (=> res!62361 e!84311)))

(declare-fun lt!67067 () Bool)

(assert (=> d!39239 (= res!62361 (not lt!67067))))

(declare-fun lt!67066 () Bool)

(assert (=> d!39239 (= lt!67067 lt!67066)))

(declare-fun lt!67068 () Unit!3998)

(declare-fun e!84310 () Unit!3998)

(assert (=> d!39239 (= lt!67068 e!84310)))

(declare-fun c!23758 () Bool)

(assert (=> d!39239 (= c!23758 lt!67066)))

(assert (=> d!39239 (= lt!67066 (containsKey!171 (toList!862 lt!66533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39239 (= (contains!882 lt!66533 #b1000000000000000000000000000000000000000000000000000000000000000) lt!67067)))

(declare-fun b!129175 () Bool)

(declare-fun lt!67065 () Unit!3998)

(assert (=> b!129175 (= e!84310 lt!67065)))

(assert (=> b!129175 (= lt!67065 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129175 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129176 () Bool)

(declare-fun Unit!4047 () Unit!3998)

(assert (=> b!129176 (= e!84310 Unit!4047)))

(declare-fun b!129177 () Bool)

(assert (=> b!129177 (= e!84311 (isDefined!121 (getValueByKey!167 (toList!862 lt!66533) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39239 c!23758) b!129175))

(assert (= (and d!39239 (not c!23758)) b!129176))

(assert (= (and d!39239 (not res!62361)) b!129177))

(declare-fun m!151923 () Bool)

(assert (=> d!39239 m!151923))

(declare-fun m!151925 () Bool)

(assert (=> b!129175 m!151925))

(assert (=> b!129175 m!151643))

(assert (=> b!129175 m!151643))

(declare-fun m!151927 () Bool)

(assert (=> b!129175 m!151927))

(assert (=> b!129177 m!151643))

(assert (=> b!129177 m!151643))

(assert (=> b!129177 m!151927))

(assert (=> bm!13890 d!39239))

(declare-fun lt!67069 () Bool)

(declare-fun d!39241 () Bool)

(assert (=> d!39241 (= lt!67069 (select (content!126 (toList!862 lt!66382)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!84313 () Bool)

(assert (=> d!39241 (= lt!67069 e!84313)))

(declare-fun res!62362 () Bool)

(assert (=> d!39241 (=> (not res!62362) (not e!84313))))

(assert (=> d!39241 (= res!62362 ((_ is Cons!1720) (toList!862 lt!66382)))))

(assert (=> d!39241 (= (contains!884 (toList!862 lt!66382) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67069)))

(declare-fun b!129178 () Bool)

(declare-fun e!84312 () Bool)

(assert (=> b!129178 (= e!84313 e!84312)))

(declare-fun res!62363 () Bool)

(assert (=> b!129178 (=> res!62363 e!84312)))

(assert (=> b!129178 (= res!62363 (= (h!2323 (toList!862 lt!66382)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!129179 () Bool)

(assert (=> b!129179 (= e!84312 (contains!884 (t!6115 (toList!862 lt!66382)) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39241 res!62362) b!129178))

(assert (= (and b!129178 (not res!62363)) b!129179))

(declare-fun m!151929 () Bool)

(assert (=> d!39241 m!151929))

(declare-fun m!151931 () Bool)

(assert (=> d!39241 m!151931))

(declare-fun m!151933 () Bool)

(assert (=> b!129179 m!151933))

(assert (=> b!128247 d!39241))

(assert (=> b!128200 d!39013))

(assert (=> b!128200 d!39015))

(declare-fun b!129180 () Bool)

(declare-fun e!84317 () Bool)

(assert (=> b!129180 (= e!84317 (contains!885 Nil!1723 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!129182 () Bool)

(declare-fun e!84314 () Bool)

(declare-fun call!13996 () Bool)

(assert (=> b!129182 (= e!84314 call!13996)))

(declare-fun b!129183 () Bool)

(assert (=> b!129183 (= e!84314 call!13996)))

(declare-fun b!129181 () Bool)

(declare-fun e!84315 () Bool)

(declare-fun e!84316 () Bool)

(assert (=> b!129181 (= e!84315 e!84316)))

(declare-fun res!62365 () Bool)

(assert (=> b!129181 (=> (not res!62365) (not e!84316))))

(assert (=> b!129181 (= res!62365 (not e!84317))))

(declare-fun res!62364 () Bool)

(assert (=> b!129181 (=> (not res!62364) (not e!84317))))

(assert (=> b!129181 (= res!62364 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!39243 () Bool)

(declare-fun res!62366 () Bool)

(assert (=> d!39243 (=> res!62366 e!84315)))

(assert (=> d!39243 (= res!62366 (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (v!3143 (underlying!443 thiss!992))))))))

(assert (=> d!39243 (= (arrayNoDuplicates!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) #b00000000000000000000000000000000 Nil!1723) e!84315)))

(declare-fun bm!13993 () Bool)

(declare-fun c!23759 () Bool)

(assert (=> bm!13993 (= call!13996 (arrayNoDuplicates!0 (_keys!4542 (v!3143 (underlying!443 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23759 (Cons!1722 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000) Nil!1723) Nil!1723)))))

(declare-fun b!129184 () Bool)

(assert (=> b!129184 (= e!84316 e!84314)))

(assert (=> b!129184 (= c!23759 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!39243 (not res!62366)) b!129181))

(assert (= (and b!129181 res!62364) b!129180))

(assert (= (and b!129181 res!62365) b!129184))

(assert (= (and b!129184 c!23759) b!129183))

(assert (= (and b!129184 (not c!23759)) b!129182))

(assert (= (or b!129183 b!129182) bm!13993))

(assert (=> b!129180 m!150769))

(assert (=> b!129180 m!150769))

(declare-fun m!151935 () Bool)

(assert (=> b!129180 m!151935))

(assert (=> b!129181 m!150769))

(assert (=> b!129181 m!150769))

(assert (=> b!129181 m!150771))

(assert (=> bm!13993 m!150769))

(declare-fun m!151937 () Bool)

(assert (=> bm!13993 m!151937))

(assert (=> b!129184 m!150769))

(assert (=> b!129184 m!150769))

(assert (=> b!129184 m!150771))

(assert (=> b!128176 d!39243))

(declare-fun d!39245 () Bool)

(assert (=> d!39245 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun lt!67070 () Unit!3998)

(assert (=> d!39245 (= lt!67070 (choose!786 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!84318 () Bool)

(assert (=> d!39245 e!84318))

(declare-fun res!62367 () Bool)

(assert (=> d!39245 (=> (not res!62367) (not e!84318))))

(assert (=> d!39245 (= res!62367 (isStrictlySorted!313 (toList!862 lt!66213)))))

(assert (=> d!39245 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!67070)))

(declare-fun b!129185 () Bool)

(assert (=> b!129185 (= e!84318 (containsKey!171 (toList!862 lt!66213) (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!39245 res!62367) b!129185))

(assert (=> d!39245 m!149865))

(assert (=> d!39245 m!150047))

(assert (=> d!39245 m!150047))

(assert (=> d!39245 m!150049))

(assert (=> d!39245 m!149865))

(declare-fun m!151939 () Bool)

(assert (=> d!39245 m!151939))

(assert (=> d!39245 m!151179))

(assert (=> b!129185 m!149865))

(assert (=> b!129185 m!150043))

(assert (=> b!128177 d!39245))

(assert (=> b!128177 d!39005))

(assert (=> b!128177 d!38891))

(declare-fun d!39247 () Bool)

(declare-fun e!84320 () Bool)

(assert (=> d!39247 e!84320))

(declare-fun res!62368 () Bool)

(assert (=> d!39247 (=> res!62368 e!84320)))

(declare-fun lt!67073 () Bool)

(assert (=> d!39247 (= res!62368 (not lt!67073))))

(declare-fun lt!67072 () Bool)

(assert (=> d!39247 (= lt!67073 lt!67072)))

(declare-fun lt!67074 () Unit!3998)

(declare-fun e!84319 () Unit!3998)

(assert (=> d!39247 (= lt!67074 e!84319)))

(declare-fun c!23760 () Bool)

(assert (=> d!39247 (= c!23760 lt!67072)))

(assert (=> d!39247 (= lt!67072 (containsKey!171 (toList!862 lt!66378) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39247 (= (contains!882 lt!66378 #b1000000000000000000000000000000000000000000000000000000000000000) lt!67073)))

(declare-fun b!129186 () Bool)

(declare-fun lt!67071 () Unit!3998)

(assert (=> b!129186 (= e!84319 lt!67071)))

(assert (=> b!129186 (= lt!67071 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66378) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129186 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129187 () Bool)

(declare-fun Unit!4048 () Unit!3998)

(assert (=> b!129187 (= e!84319 Unit!4048)))

(declare-fun b!129188 () Bool)

(assert (=> b!129188 (= e!84320 (isDefined!121 (getValueByKey!167 (toList!862 lt!66378) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39247 c!23760) b!129186))

(assert (= (and d!39247 (not c!23760)) b!129187))

(assert (= (and d!39247 (not res!62368)) b!129188))

(declare-fun m!151941 () Bool)

(assert (=> d!39247 m!151941))

(declare-fun m!151943 () Bool)

(assert (=> b!129186 m!151943))

(assert (=> b!129186 m!151649))

(assert (=> b!129186 m!151649))

(declare-fun m!151945 () Bool)

(assert (=> b!129186 m!151945))

(assert (=> b!129188 m!151649))

(assert (=> b!129188 m!151649))

(assert (=> b!129188 m!151945))

(assert (=> bm!13862 d!39247))

(declare-fun d!39249 () Bool)

(assert (=> d!39249 (= (inRange!0 (index!3281 lt!66346) (mask!7073 newMap!16)) (and (bvsge (index!3281 lt!66346) #b00000000000000000000000000000000) (bvslt (index!3281 lt!66346) (bvadd (mask!7073 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> b!128184 d!39249))

(assert (=> d!38777 d!38799))

(declare-fun d!39251 () Bool)

(assert (=> d!39251 (= (apply!112 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!66211) (apply!112 lt!66200 lt!66211))))

(assert (=> d!39251 true))

(declare-fun _$34!960 () Unit!3998)

(assert (=> d!39251 (= (choose!787 lt!66200 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))) lt!66211) _$34!960)))

(declare-fun bs!5369 () Bool)

(assert (= bs!5369 d!39251))

(assert (=> bs!5369 m!149853))

(assert (=> bs!5369 m!149853))

(assert (=> bs!5369 m!149875))

(assert (=> bs!5369 m!149873))

(assert (=> d!38777 d!39251))

(assert (=> d!38777 d!38791))

(declare-fun d!39253 () Bool)

(declare-fun e!84322 () Bool)

(assert (=> d!39253 e!84322))

(declare-fun res!62369 () Bool)

(assert (=> d!39253 (=> res!62369 e!84322)))

(declare-fun lt!67077 () Bool)

(assert (=> d!39253 (= res!62369 (not lt!67077))))

(declare-fun lt!67076 () Bool)

(assert (=> d!39253 (= lt!67077 lt!67076)))

(declare-fun lt!67078 () Unit!3998)

(declare-fun e!84321 () Unit!3998)

(assert (=> d!39253 (= lt!67078 e!84321)))

(declare-fun c!23761 () Bool)

(assert (=> d!39253 (= c!23761 lt!67076)))

(assert (=> d!39253 (= lt!67076 (containsKey!171 (toList!862 lt!66200) lt!66211))))

(assert (=> d!39253 (= (contains!882 lt!66200 lt!66211) lt!67077)))

(declare-fun b!129189 () Bool)

(declare-fun lt!67075 () Unit!3998)

(assert (=> b!129189 (= e!84321 lt!67075)))

(assert (=> b!129189 (= lt!67075 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66200) lt!66211))))

(assert (=> b!129189 (isDefined!121 (getValueByKey!167 (toList!862 lt!66200) lt!66211))))

(declare-fun b!129190 () Bool)

(declare-fun Unit!4049 () Unit!3998)

(assert (=> b!129190 (= e!84321 Unit!4049)))

(declare-fun b!129191 () Bool)

(assert (=> b!129191 (= e!84322 (isDefined!121 (getValueByKey!167 (toList!862 lt!66200) lt!66211)))))

(assert (= (and d!39253 c!23761) b!129189))

(assert (= (and d!39253 (not c!23761)) b!129190))

(assert (= (and d!39253 (not res!62369)) b!129191))

(declare-fun m!151947 () Bool)

(assert (=> d!39253 m!151947))

(declare-fun m!151949 () Bool)

(assert (=> b!129189 m!151949))

(assert (=> b!129189 m!150447))

(assert (=> b!129189 m!150447))

(declare-fun m!151951 () Bool)

(assert (=> b!129189 m!151951))

(assert (=> b!129191 m!150447))

(assert (=> b!129191 m!150447))

(assert (=> b!129191 m!151951))

(assert (=> d!38777 d!39253))

(assert (=> d!38777 d!38781))

(declare-fun d!39255 () Bool)

(declare-fun e!84324 () Bool)

(assert (=> d!39255 e!84324))

(declare-fun res!62370 () Bool)

(assert (=> d!39255 (=> res!62370 e!84324)))

(declare-fun lt!67081 () Bool)

(assert (=> d!39255 (= res!62370 (not lt!67081))))

(declare-fun lt!67080 () Bool)

(assert (=> d!39255 (= lt!67081 lt!67080)))

(declare-fun lt!67082 () Unit!3998)

(declare-fun e!84323 () Unit!3998)

(assert (=> d!39255 (= lt!67082 e!84323)))

(declare-fun c!23762 () Bool)

(assert (=> d!39255 (= c!23762 lt!67080)))

(assert (=> d!39255 (= lt!67080 (containsKey!171 (toList!862 lt!66554) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39255 (= (contains!882 lt!66554 #b1000000000000000000000000000000000000000000000000000000000000000) lt!67081)))

(declare-fun b!129192 () Bool)

(declare-fun lt!67079 () Unit!3998)

(assert (=> b!129192 (= e!84323 lt!67079)))

(assert (=> b!129192 (= lt!67079 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66554) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129192 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129193 () Bool)

(declare-fun Unit!4050 () Unit!3998)

(assert (=> b!129193 (= e!84323 Unit!4050)))

(declare-fun b!129194 () Bool)

(assert (=> b!129194 (= e!84324 (isDefined!121 (getValueByKey!167 (toList!862 lt!66554) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39255 c!23762) b!129192))

(assert (= (and d!39255 (not c!23762)) b!129193))

(assert (= (and d!39255 (not res!62370)) b!129194))

(declare-fun m!151953 () Bool)

(assert (=> d!39255 m!151953))

(declare-fun m!151955 () Bool)

(assert (=> b!129192 m!151955))

(declare-fun m!151957 () Bool)

(assert (=> b!129192 m!151957))

(assert (=> b!129192 m!151957))

(declare-fun m!151959 () Bool)

(assert (=> b!129192 m!151959))

(assert (=> b!129194 m!151957))

(assert (=> b!129194 m!151957))

(assert (=> b!129194 m!151959))

(assert (=> b!128408 d!39255))

(assert (=> b!128275 d!39035))

(assert (=> b!128275 d!39037))

(assert (=> bm!13879 d!38701))

(declare-fun d!39257 () Bool)

(assert (=> d!39257 (= (get!1466 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3147 (getValueByKey!167 (toList!862 lt!66213) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!38769 d!39257))

(assert (=> d!38769 d!38905))

(declare-fun d!39259 () Bool)

(declare-fun e!84325 () Bool)

(assert (=> d!39259 e!84325))

(declare-fun res!62371 () Bool)

(assert (=> d!39259 (=> (not res!62371) (not e!84325))))

(declare-fun lt!67083 () ListLongMap!1693)

(assert (=> d!39259 (= res!62371 (contains!882 lt!67083 (_1!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(declare-fun lt!67084 () List!1724)

(assert (=> d!39259 (= lt!67083 (ListLongMap!1694 lt!67084))))

(declare-fun lt!67085 () Unit!3998)

(declare-fun lt!67086 () Unit!3998)

(assert (=> d!39259 (= lt!67085 lt!67086)))

(assert (=> d!39259 (= (getValueByKey!167 lt!67084 (_1!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39259 (= lt!67086 (lemmaContainsTupThenGetReturnValue!84 lt!67084 (_1!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (_2!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39259 (= lt!67084 (insertStrictlySorted!86 (toList!862 (ite c!23537 call!13895 (ite c!23533 call!13893 call!13892))) (_1!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (_2!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39259 (= (+!166 (ite c!23537 call!13895 (ite c!23533 call!13893 call!13892)) (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) lt!67083)))

(declare-fun b!129195 () Bool)

(declare-fun res!62372 () Bool)

(assert (=> b!129195 (=> (not res!62372) (not e!84325))))

(assert (=> b!129195 (= res!62372 (= (getValueByKey!167 (toList!862 lt!67083) (_1!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))))

(declare-fun b!129196 () Bool)

(assert (=> b!129196 (= e!84325 (contains!884 (toList!862 lt!67083) (ite (or c!23537 c!23533) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (= (and d!39259 res!62371) b!129195))

(assert (= (and b!129195 res!62372) b!129196))

(declare-fun m!151961 () Bool)

(assert (=> d!39259 m!151961))

(declare-fun m!151963 () Bool)

(assert (=> d!39259 m!151963))

(declare-fun m!151965 () Bool)

(assert (=> d!39259 m!151965))

(declare-fun m!151967 () Bool)

(assert (=> d!39259 m!151967))

(declare-fun m!151969 () Bool)

(assert (=> b!129195 m!151969))

(declare-fun m!151971 () Bool)

(assert (=> b!129196 m!151971))

(assert (=> bm!13888 d!39259))

(assert (=> b!128375 d!38823))

(declare-fun d!39261 () Bool)

(declare-fun res!62376 () Bool)

(declare-fun e!84326 () Bool)

(assert (=> d!39261 (=> (not res!62376) (not e!84326))))

(assert (=> d!39261 (= res!62376 (validMask!0 (mask!7073 (_2!1302 lt!66286))))))

(assert (=> d!39261 (= (simpleValid!87 (_2!1302 lt!66286)) e!84326)))

(declare-fun b!129197 () Bool)

(declare-fun res!62374 () Bool)

(assert (=> b!129197 (=> (not res!62374) (not e!84326))))

(assert (=> b!129197 (= res!62374 (and (= (size!2502 (_values!2788 (_2!1302 lt!66286))) (bvadd (mask!7073 (_2!1302 lt!66286)) #b00000000000000000000000000000001)) (= (size!2501 (_keys!4542 (_2!1302 lt!66286))) (size!2502 (_values!2788 (_2!1302 lt!66286)))) (bvsge (_size!586 (_2!1302 lt!66286)) #b00000000000000000000000000000000) (bvsle (_size!586 (_2!1302 lt!66286)) (bvadd (mask!7073 (_2!1302 lt!66286)) #b00000000000000000000000000000001))))))

(declare-fun b!129198 () Bool)

(declare-fun res!62375 () Bool)

(assert (=> b!129198 (=> (not res!62375) (not e!84326))))

(assert (=> b!129198 (= res!62375 (bvsge (size!2505 (_2!1302 lt!66286)) (_size!586 (_2!1302 lt!66286))))))

(declare-fun b!129199 () Bool)

(declare-fun res!62373 () Bool)

(assert (=> b!129199 (=> (not res!62373) (not e!84326))))

(assert (=> b!129199 (= res!62373 (= (size!2505 (_2!1302 lt!66286)) (bvadd (_size!586 (_2!1302 lt!66286)) (bvsdiv (bvadd (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!129200 () Bool)

(assert (=> b!129200 (= e!84326 (and (bvsge (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000000) (bvsle (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000011) (bvsge (_vacant!586 (_2!1302 lt!66286)) #b00000000000000000000000000000000)))))

(assert (= (and d!39261 res!62376) b!129197))

(assert (= (and b!129197 res!62374) b!129198))

(assert (= (and b!129198 res!62375) b!129199))

(assert (= (and b!129199 res!62373) b!129200))

(declare-fun m!151973 () Bool)

(assert (=> d!39261 m!151973))

(declare-fun m!151975 () Bool)

(assert (=> b!129198 m!151975))

(assert (=> b!129199 m!151975))

(assert (=> d!38697 d!39261))

(assert (=> b!128217 d!38823))

(declare-fun b!129204 () Bool)

(declare-fun e!84328 () Option!173)

(assert (=> b!129204 (= e!84328 None!171)))

(declare-fun b!129203 () Bool)

(assert (=> b!129203 (= e!84328 (getValueByKey!167 (t!6115 (toList!862 lt!66567)) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129201 () Bool)

(declare-fun e!84327 () Option!173)

(assert (=> b!129201 (= e!84327 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66567)))))))

(declare-fun d!39263 () Bool)

(declare-fun c!23763 () Bool)

(assert (=> d!39263 (= c!23763 (and ((_ is Cons!1720) (toList!862 lt!66567)) (= (_1!1301 (h!2323 (toList!862 lt!66567))) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39263 (= (getValueByKey!167 (toList!862 lt!66567) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84327)))

(declare-fun b!129202 () Bool)

(assert (=> b!129202 (= e!84327 e!84328)))

(declare-fun c!23764 () Bool)

(assert (=> b!129202 (= c!23764 (and ((_ is Cons!1720) (toList!862 lt!66567)) (not (= (_1!1301 (h!2323 (toList!862 lt!66567))) (_1!1301 (tuple2!2583 lt!66208 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39263 c!23763) b!129201))

(assert (= (and d!39263 (not c!23763)) b!129202))

(assert (= (and b!129202 c!23764) b!129203))

(assert (= (and b!129202 (not c!23764)) b!129204))

(declare-fun m!151977 () Bool)

(assert (=> b!129203 m!151977))

(assert (=> b!128426 d!39263))

(declare-fun d!39265 () Bool)

(declare-fun e!84330 () Bool)

(assert (=> d!39265 e!84330))

(declare-fun res!62377 () Bool)

(assert (=> d!39265 (=> res!62377 e!84330)))

(declare-fun lt!67089 () Bool)

(assert (=> d!39265 (= res!62377 (not lt!67089))))

(declare-fun lt!67088 () Bool)

(assert (=> d!39265 (= lt!67089 lt!67088)))

(declare-fun lt!67090 () Unit!3998)

(declare-fun e!84329 () Unit!3998)

(assert (=> d!39265 (= lt!67090 e!84329)))

(declare-fun c!23765 () Bool)

(assert (=> d!39265 (= c!23765 lt!67088)))

(assert (=> d!39265 (= lt!67088 (containsKey!171 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39265 (= (contains!882 lt!66495 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!67089)))

(declare-fun b!129205 () Bool)

(declare-fun lt!67087 () Unit!3998)

(assert (=> b!129205 (= e!84329 lt!67087)))

(assert (=> b!129205 (= lt!67087 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> b!129205 (isDefined!121 (getValueByKey!167 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129206 () Bool)

(declare-fun Unit!4051 () Unit!3998)

(assert (=> b!129206 (= e!84329 Unit!4051)))

(declare-fun b!129207 () Bool)

(assert (=> b!129207 (= e!84330 (isDefined!121 (getValueByKey!167 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39265 c!23765) b!129205))

(assert (= (and d!39265 (not c!23765)) b!129206))

(assert (= (and d!39265 (not res!62377)) b!129207))

(declare-fun m!151979 () Bool)

(assert (=> d!39265 m!151979))

(declare-fun m!151981 () Bool)

(assert (=> b!129205 m!151981))

(assert (=> b!129205 m!150269))

(assert (=> b!129205 m!150269))

(declare-fun m!151983 () Bool)

(assert (=> b!129205 m!151983))

(assert (=> b!129207 m!150269))

(assert (=> b!129207 m!150269))

(assert (=> b!129207 m!151983))

(assert (=> d!38761 d!39265))

(declare-fun b!129211 () Bool)

(declare-fun e!84332 () Option!173)

(assert (=> b!129211 (= e!84332 None!171)))

(declare-fun b!129210 () Bool)

(assert (=> b!129210 (= e!84332 (getValueByKey!167 (t!6115 lt!66496) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129208 () Bool)

(declare-fun e!84331 () Option!173)

(assert (=> b!129208 (= e!84331 (Some!172 (_2!1301 (h!2323 lt!66496))))))

(declare-fun d!39267 () Bool)

(declare-fun c!23766 () Bool)

(assert (=> d!39267 (= c!23766 (and ((_ is Cons!1720) lt!66496) (= (_1!1301 (h!2323 lt!66496)) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (=> d!39267 (= (getValueByKey!167 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) e!84331)))

(declare-fun b!129209 () Bool)

(assert (=> b!129209 (= e!84331 e!84332)))

(declare-fun c!23767 () Bool)

(assert (=> b!129209 (= c!23767 (and ((_ is Cons!1720) lt!66496) (not (= (_1!1301 (h!2323 lt!66496)) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(assert (= (and d!39267 c!23766) b!129208))

(assert (= (and d!39267 (not c!23766)) b!129209))

(assert (= (and b!129209 c!23767) b!129210))

(assert (= (and b!129209 (not c!23767)) b!129211))

(declare-fun m!151985 () Bool)

(assert (=> b!129210 m!151985))

(assert (=> d!38761 d!39267))

(declare-fun d!39269 () Bool)

(assert (=> d!39269 (= (getValueByKey!167 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (Some!172 (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun lt!67091 () Unit!3998)

(assert (=> d!39269 (= lt!67091 (choose!792 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!84333 () Bool)

(assert (=> d!39269 e!84333))

(declare-fun res!62378 () Bool)

(assert (=> d!39269 (=> (not res!62378) (not e!84333))))

(assert (=> d!39269 (= res!62378 (isStrictlySorted!313 lt!66496))))

(assert (=> d!39269 (= (lemmaContainsTupThenGetReturnValue!84 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!67091)))

(declare-fun b!129212 () Bool)

(declare-fun res!62379 () Bool)

(assert (=> b!129212 (=> (not res!62379) (not e!84333))))

(assert (=> b!129212 (= res!62379 (containsKey!171 lt!66496 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129213 () Bool)

(assert (=> b!129213 (= e!84333 (contains!884 lt!66496 (tuple2!2583 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39269 res!62378) b!129212))

(assert (= (and b!129212 res!62379) b!129213))

(assert (=> d!39269 m!150263))

(declare-fun m!151987 () Bool)

(assert (=> d!39269 m!151987))

(declare-fun m!151989 () Bool)

(assert (=> d!39269 m!151989))

(declare-fun m!151991 () Bool)

(assert (=> b!129212 m!151991))

(declare-fun m!151993 () Bool)

(assert (=> b!129213 m!151993))

(assert (=> d!38761 d!39269))

(declare-fun c!23771 () Bool)

(declare-fun b!129214 () Bool)

(assert (=> b!129214 (= c!23771 (and ((_ is Cons!1720) (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (bvsgt (_1!1301 (h!2323 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun e!84335 () List!1724)

(declare-fun e!84334 () List!1724)

(assert (=> b!129214 (= e!84335 e!84334)))

(declare-fun d!39271 () Bool)

(declare-fun e!84336 () Bool)

(assert (=> d!39271 e!84336))

(declare-fun res!62381 () Bool)

(assert (=> d!39271 (=> (not res!62381) (not e!84336))))

(declare-fun lt!67092 () List!1724)

(assert (=> d!39271 (= res!62381 (isStrictlySorted!313 lt!67092))))

(declare-fun e!84337 () List!1724)

(assert (=> d!39271 (= lt!67092 e!84337)))

(declare-fun c!23770 () Bool)

(assert (=> d!39271 (= c!23770 (and ((_ is Cons!1720) (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (bvslt (_1!1301 (h!2323 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (=> d!39271 (isStrictlySorted!313 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))))))

(assert (=> d!39271 (= (insertStrictlySorted!86 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!67092)))

(declare-fun b!129215 () Bool)

(declare-fun call!13999 () List!1724)

(assert (=> b!129215 (= e!84334 call!13999)))

(declare-fun b!129216 () Bool)

(declare-fun call!13997 () List!1724)

(assert (=> b!129216 (= e!84337 call!13997)))

(declare-fun e!84338 () List!1724)

(declare-fun c!23768 () Bool)

(declare-fun b!129217 () Bool)

(assert (=> b!129217 (= e!84338 (ite c!23768 (t!6115 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (ite c!23771 (Cons!1720 (h!2323 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (t!6115 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))))) Nil!1721)))))

(declare-fun b!129218 () Bool)

(assert (=> b!129218 (= e!84334 call!13999)))

(declare-fun b!129219 () Bool)

(assert (=> b!129219 (= e!84336 (contains!884 lt!67092 (tuple2!2583 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun b!129220 () Bool)

(declare-fun res!62380 () Bool)

(assert (=> b!129220 (=> (not res!62380) (not e!84336))))

(assert (=> b!129220 (= res!62380 (containsKey!171 lt!67092 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun bm!13994 () Bool)

(assert (=> bm!13994 (= call!13997 ($colon$colon!89 e!84338 (ite c!23770 (h!2323 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (tuple2!2583 (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(declare-fun c!23769 () Bool)

(assert (=> bm!13994 (= c!23769 c!23770)))

(declare-fun b!129221 () Bool)

(declare-fun call!13998 () List!1724)

(assert (=> b!129221 (= e!84335 call!13998)))

(declare-fun b!129222 () Bool)

(assert (=> b!129222 (= e!84338 (insertStrictlySorted!86 (t!6115 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (_2!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun bm!13995 () Bool)

(assert (=> bm!13995 (= call!13999 call!13998)))

(declare-fun bm!13996 () Bool)

(assert (=> bm!13996 (= call!13998 call!13997)))

(declare-fun b!129223 () Bool)

(assert (=> b!129223 (= e!84337 e!84335)))

(assert (=> b!129223 (= c!23768 (and ((_ is Cons!1720) (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779)))) (= (_1!1301 (h!2323 (toList!862 (ite c!23428 call!13782 (ite c!23424 call!13780 call!13779))))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39271 c!23770) b!129216))

(assert (= (and d!39271 (not c!23770)) b!129223))

(assert (= (and b!129223 c!23768) b!129221))

(assert (= (and b!129223 (not c!23768)) b!129214))

(assert (= (and b!129214 c!23771) b!129215))

(assert (= (and b!129214 (not c!23771)) b!129218))

(assert (= (or b!129215 b!129218) bm!13995))

(assert (= (or b!129221 bm!13995) bm!13996))

(assert (= (or b!129216 bm!13996) bm!13994))

(assert (= (and bm!13994 c!23769) b!129222))

(assert (= (and bm!13994 (not c!23769)) b!129217))

(assert (= (and d!39271 res!62381) b!129220))

(assert (= (and b!129220 res!62380) b!129219))

(declare-fun m!151995 () Bool)

(assert (=> b!129219 m!151995))

(declare-fun m!151997 () Bool)

(assert (=> d!39271 m!151997))

(declare-fun m!151999 () Bool)

(assert (=> d!39271 m!151999))

(declare-fun m!152001 () Bool)

(assert (=> b!129220 m!152001))

(declare-fun m!152003 () Bool)

(assert (=> bm!13994 m!152003))

(declare-fun m!152005 () Bool)

(assert (=> b!129222 m!152005))

(assert (=> d!38761 d!39271))

(declare-fun d!39273 () Bool)

(declare-fun e!84339 () Bool)

(assert (=> d!39273 e!84339))

(declare-fun res!62382 () Bool)

(assert (=> d!39273 (=> (not res!62382) (not e!84339))))

(declare-fun lt!67093 () ListLongMap!1693)

(assert (=> d!39273 (= res!62382 (contains!882 lt!67093 (_1!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(declare-fun lt!67094 () List!1724)

(assert (=> d!39273 (= lt!67093 (ListLongMap!1694 lt!67094))))

(declare-fun lt!67095 () Unit!3998)

(declare-fun lt!67096 () Unit!3998)

(assert (=> d!39273 (= lt!67095 lt!67096)))

(assert (=> d!39273 (= (getValueByKey!167 lt!67094 (_1!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39273 (= lt!67096 (lemmaContainsTupThenGetReturnValue!84 lt!67094 (_1!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (_2!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39273 (= lt!67094 (insertStrictlySorted!86 (toList!862 (ite c!23496 call!13867 (ite c!23492 call!13865 call!13864))) (_1!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) (_2!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))))))

(assert (=> d!39273 (= (+!166 (ite c!23496 call!13867 (ite c!23492 call!13865 call!13864)) (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))) lt!67093)))

(declare-fun b!129224 () Bool)

(declare-fun res!62383 () Bool)

(assert (=> b!129224 (=> (not res!62383) (not e!84339))))

(assert (=> b!129224 (= res!62383 (= (getValueByKey!167 (toList!862 lt!67093) (_1!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16))))) (Some!172 (_2!1301 (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))))

(declare-fun b!129225 () Bool)

(assert (=> b!129225 (= e!84339 (contains!884 (toList!862 lt!67093) (ite (or c!23496 c!23492) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 newMap!16)) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 newMap!16)))))))

(assert (= (and d!39273 res!62382) b!129224))

(assert (= (and b!129224 res!62383) b!129225))

(declare-fun m!152007 () Bool)

(assert (=> d!39273 m!152007))

(declare-fun m!152009 () Bool)

(assert (=> d!39273 m!152009))

(declare-fun m!152011 () Bool)

(assert (=> d!39273 m!152011))

(declare-fun m!152013 () Bool)

(assert (=> d!39273 m!152013))

(declare-fun m!152015 () Bool)

(assert (=> b!129224 m!152015))

(declare-fun m!152017 () Bool)

(assert (=> b!129225 m!152017))

(assert (=> bm!13860 d!39273))

(declare-fun d!39275 () Bool)

(assert (=> d!39275 (isDefined!121 (getValueByKey!167 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!67097 () Unit!3998)

(assert (=> d!39275 (= lt!67097 (choose!786 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84340 () Bool)

(assert (=> d!39275 e!84340))

(declare-fun res!62384 () Bool)

(assert (=> d!39275 (=> (not res!62384) (not e!84340))))

(assert (=> d!39275 (= res!62384 (isStrictlySorted!313 (toList!862 lt!66213)))))

(assert (=> d!39275 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000) lt!67097)))

(declare-fun b!129226 () Bool)

(assert (=> b!129226 (= e!84340 (containsKey!171 (toList!862 lt!66213) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39275 res!62384) b!129226))

(assert (=> d!39275 m!150177))

(assert (=> d!39275 m!150177))

(assert (=> d!39275 m!150179))

(declare-fun m!152019 () Bool)

(assert (=> d!39275 m!152019))

(assert (=> d!39275 m!151179))

(assert (=> b!129226 m!150173))

(assert (=> b!128268 d!39275))

(assert (=> b!128268 d!39029))

(assert (=> b!128268 d!39031))

(assert (=> b!128413 d!38765))

(declare-fun lt!67098 () Bool)

(declare-fun d!39277 () Bool)

(assert (=> d!39277 (= lt!67098 (select (content!126 (toList!862 lt!66397)) (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!84342 () Bool)

(assert (=> d!39277 (= lt!67098 e!84342)))

(declare-fun res!62385 () Bool)

(assert (=> d!39277 (=> (not res!62385) (not e!84342))))

(assert (=> d!39277 (= res!62385 ((_ is Cons!1720) (toList!862 lt!66397)))))

(assert (=> d!39277 (= (contains!884 (toList!862 lt!66397) (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!67098)))

(declare-fun b!129227 () Bool)

(declare-fun e!84341 () Bool)

(assert (=> b!129227 (= e!84342 e!84341)))

(declare-fun res!62386 () Bool)

(assert (=> b!129227 (=> res!62386 e!84341)))

(assert (=> b!129227 (= res!62386 (= (h!2323 (toList!862 lt!66397)) (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!129228 () Bool)

(assert (=> b!129228 (= e!84341 (contains!884 (t!6115 (toList!862 lt!66397)) (ite c!23470 (ite c!23469 (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2583 (select (arr!2236 (_keys!4542 (v!3143 (underlying!443 thiss!992)))) from!355) (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!39277 res!62385) b!129227))

(assert (= (and b!129227 (not res!62386)) b!129228))

(declare-fun m!152021 () Bool)

(assert (=> d!39277 m!152021))

(declare-fun m!152023 () Bool)

(assert (=> d!39277 m!152023))

(declare-fun m!152025 () Bool)

(assert (=> b!129228 m!152025))

(assert (=> b!128272 d!39277))

(declare-fun lt!67099 () Bool)

(declare-fun d!39279 () Bool)

(assert (=> d!39279 (= lt!67099 (select (content!126 (toList!862 lt!66576)) (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun e!84344 () Bool)

(assert (=> d!39279 (= lt!67099 e!84344)))

(declare-fun res!62387 () Bool)

(assert (=> d!39279 (=> (not res!62387) (not e!84344))))

(assert (=> d!39279 (= res!62387 ((_ is Cons!1720) (toList!862 lt!66576)))))

(assert (=> d!39279 (= (contains!884 (toList!862 lt!66576) (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) lt!67099)))

(declare-fun b!129229 () Bool)

(declare-fun e!84343 () Bool)

(assert (=> b!129229 (= e!84344 e!84343)))

(declare-fun res!62388 () Bool)

(assert (=> b!129229 (=> res!62388 e!84343)))

(assert (=> b!129229 (= res!62388 (= (h!2323 (toList!862 lt!66576)) (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(declare-fun b!129230 () Bool)

(assert (=> b!129230 (= e!84343 (contains!884 (t!6115 (toList!862 lt!66576)) (tuple2!2583 lt!66199 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))

(assert (= (and d!39279 res!62387) b!129229))

(assert (= (and b!129229 (not res!62388)) b!129230))

(declare-fun m!152027 () Bool)

(assert (=> d!39279 m!152027))

(declare-fun m!152029 () Bool)

(assert (=> d!39279 m!152029))

(declare-fun m!152031 () Bool)

(assert (=> b!129230 m!152031))

(assert (=> b!128432 d!39279))

(declare-fun b!129234 () Bool)

(declare-fun e!84346 () Option!173)

(assert (=> b!129234 (= e!84346 None!171)))

(declare-fun b!129233 () Bool)

(assert (=> b!129233 (= e!84346 (getValueByKey!167 (t!6115 (toList!862 lt!66495)) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129231 () Bool)

(declare-fun e!84345 () Option!173)

(assert (=> b!129231 (= e!84345 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66495)))))))

(declare-fun d!39281 () Bool)

(declare-fun c!23772 () Bool)

(assert (=> d!39281 (= c!23772 (and ((_ is Cons!1720) (toList!862 lt!66495)) (= (_1!1301 (h!2323 (toList!862 lt!66495))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (=> d!39281 (= (getValueByKey!167 (toList!862 lt!66495) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) e!84345)))

(declare-fun b!129232 () Bool)

(assert (=> b!129232 (= e!84345 e!84346)))

(declare-fun c!23773 () Bool)

(assert (=> b!129232 (= c!23773 (and ((_ is Cons!1720) (toList!862 lt!66495)) (not (= (_1!1301 (h!2323 (toList!862 lt!66495))) (_1!1301 (ite (or c!23428 c!23424) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (v!3143 (underlying!443 thiss!992)))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(assert (= (and d!39281 c!23772) b!129231))

(assert (= (and d!39281 (not c!23772)) b!129232))

(assert (= (and b!129232 c!23773) b!129233))

(assert (= (and b!129232 (not c!23773)) b!129234))

(declare-fun m!152033 () Bool)

(assert (=> b!129233 m!152033))

(assert (=> b!128342 d!39281))

(assert (=> b!128255 d!38719))

(assert (=> b!128207 d!38823))

(declare-fun d!39283 () Bool)

(assert (=> d!39283 (= (get!1466 (getValueByKey!167 (toList!862 lt!66204) lt!66210)) (v!3147 (getValueByKey!167 (toList!862 lt!66204) lt!66210)))))

(assert (=> d!38801 d!39283))

(declare-fun b!129238 () Bool)

(declare-fun e!84348 () Option!173)

(assert (=> b!129238 (= e!84348 None!171)))

(declare-fun b!129237 () Bool)

(assert (=> b!129237 (= e!84348 (getValueByKey!167 (t!6115 (toList!862 lt!66204)) lt!66210))))

(declare-fun b!129235 () Bool)

(declare-fun e!84347 () Option!173)

(assert (=> b!129235 (= e!84347 (Some!172 (_2!1301 (h!2323 (toList!862 lt!66204)))))))

(declare-fun d!39285 () Bool)

(declare-fun c!23774 () Bool)

(assert (=> d!39285 (= c!23774 (and ((_ is Cons!1720) (toList!862 lt!66204)) (= (_1!1301 (h!2323 (toList!862 lt!66204))) lt!66210)))))

(assert (=> d!39285 (= (getValueByKey!167 (toList!862 lt!66204) lt!66210) e!84347)))

(declare-fun b!129236 () Bool)

(assert (=> b!129236 (= e!84347 e!84348)))

(declare-fun c!23775 () Bool)

(assert (=> b!129236 (= c!23775 (and ((_ is Cons!1720) (toList!862 lt!66204)) (not (= (_1!1301 (h!2323 (toList!862 lt!66204))) lt!66210))))))

(assert (= (and d!39285 c!23774) b!129235))

(assert (= (and d!39285 (not c!23774)) b!129236))

(assert (= (and b!129236 c!23775) b!129237))

(assert (= (and b!129236 (not c!23775)) b!129238))

(declare-fun m!152035 () Bool)

(assert (=> b!129237 m!152035))

(assert (=> d!38801 d!39285))

(declare-fun d!39287 () Bool)

(declare-fun res!62389 () Bool)

(declare-fun e!84349 () Bool)

(assert (=> d!39287 (=> (not res!62389) (not e!84349))))

(assert (=> d!39287 (= res!62389 (simpleValid!87 (_2!1302 lt!66468)))))

(assert (=> d!39287 (= (valid!510 (_2!1302 lt!66468)) e!84349)))

(declare-fun b!129239 () Bool)

(declare-fun res!62390 () Bool)

(assert (=> b!129239 (=> (not res!62390) (not e!84349))))

(assert (=> b!129239 (= res!62390 (= (arrayCountValidKeys!0 (_keys!4542 (_2!1302 lt!66468)) #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66468)))) (_size!586 (_2!1302 lt!66468))))))

(declare-fun b!129240 () Bool)

(declare-fun res!62391 () Bool)

(assert (=> b!129240 (=> (not res!62391) (not e!84349))))

(assert (=> b!129240 (= res!62391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4542 (_2!1302 lt!66468)) (mask!7073 (_2!1302 lt!66468))))))

(declare-fun b!129241 () Bool)

(assert (=> b!129241 (= e!84349 (arrayNoDuplicates!0 (_keys!4542 (_2!1302 lt!66468)) #b00000000000000000000000000000000 Nil!1723))))

(assert (= (and d!39287 res!62389) b!129239))

(assert (= (and b!129239 res!62390) b!129240))

(assert (= (and b!129240 res!62391) b!129241))

(declare-fun m!152037 () Bool)

(assert (=> d!39287 m!152037))

(declare-fun m!152039 () Bool)

(assert (=> b!129239 m!152039))

(declare-fun m!152041 () Bool)

(assert (=> b!129240 m!152041))

(declare-fun m!152043 () Bool)

(assert (=> b!129241 m!152043))

(assert (=> b!128322 d!39287))

(declare-fun d!39289 () Bool)

(declare-fun e!84351 () Bool)

(assert (=> d!39289 e!84351))

(declare-fun res!62392 () Bool)

(assert (=> d!39289 (=> res!62392 e!84351)))

(declare-fun lt!67102 () Bool)

(assert (=> d!39289 (= res!62392 (not lt!67102))))

(declare-fun lt!67101 () Bool)

(assert (=> d!39289 (= lt!67102 lt!67101)))

(declare-fun lt!67103 () Unit!3998)

(declare-fun e!84350 () Unit!3998)

(assert (=> d!39289 (= lt!67103 e!84350)))

(declare-fun c!23776 () Bool)

(assert (=> d!39289 (= c!23776 lt!67101)))

(assert (=> d!39289 (= lt!67101 (containsKey!171 (toList!862 lt!66604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39289 (= (contains!882 lt!66604 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67102)))

(declare-fun b!129242 () Bool)

(declare-fun lt!67100 () Unit!3998)

(assert (=> b!129242 (= e!84350 lt!67100)))

(assert (=> b!129242 (= lt!67100 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129242 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129243 () Bool)

(declare-fun Unit!4052 () Unit!3998)

(assert (=> b!129243 (= e!84350 Unit!4052)))

(declare-fun b!129244 () Bool)

(assert (=> b!129244 (= e!84351 (isDefined!121 (getValueByKey!167 (toList!862 lt!66604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39289 c!23776) b!129242))

(assert (= (and d!39289 (not c!23776)) b!129243))

(assert (= (and d!39289 (not res!62392)) b!129244))

(declare-fun m!152045 () Bool)

(assert (=> d!39289 m!152045))

(declare-fun m!152047 () Bool)

(assert (=> b!129242 m!152047))

(assert (=> b!129242 m!150909))

(assert (=> b!129242 m!150909))

(declare-fun m!152049 () Bool)

(assert (=> b!129242 m!152049))

(assert (=> b!129244 m!150909))

(assert (=> b!129244 m!150909))

(assert (=> b!129244 m!152049))

(assert (=> bm!13899 d!39289))

(declare-fun d!39291 () Bool)

(declare-fun e!84353 () Bool)

(assert (=> d!39291 e!84353))

(declare-fun res!62393 () Bool)

(assert (=> d!39291 (=> res!62393 e!84353)))

(declare-fun lt!67106 () Bool)

(assert (=> d!39291 (= res!62393 (not lt!67106))))

(declare-fun lt!67105 () Bool)

(assert (=> d!39291 (= lt!67106 lt!67105)))

(declare-fun lt!67107 () Unit!3998)

(declare-fun e!84352 () Unit!3998)

(assert (=> d!39291 (= lt!67107 e!84352)))

(declare-fun c!23777 () Bool)

(assert (=> d!39291 (= c!23777 lt!67105)))

(assert (=> d!39291 (= lt!67105 (containsKey!171 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> d!39291 (= (contains!882 lt!66559 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!67106)))

(declare-fun b!129245 () Bool)

(declare-fun lt!67104 () Unit!3998)

(assert (=> b!129245 (= e!84352 lt!67104)))

(assert (=> b!129245 (= lt!67104 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(assert (=> b!129245 (isDefined!121 (getValueByKey!167 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129246 () Bool)

(declare-fun Unit!4053 () Unit!3998)

(assert (=> b!129246 (= e!84352 Unit!4053)))

(declare-fun b!129247 () Bool)

(assert (=> b!129247 (= e!84353 (isDefined!121 (getValueByKey!167 (toList!862 lt!66559) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39291 c!23777) b!129245))

(assert (= (and d!39291 (not c!23777)) b!129246))

(assert (= (and d!39291 (not res!62393)) b!129247))

(declare-fun m!152051 () Bool)

(assert (=> d!39291 m!152051))

(declare-fun m!152053 () Bool)

(assert (=> b!129245 m!152053))

(assert (=> b!129245 m!150383))

(assert (=> b!129245 m!150383))

(declare-fun m!152055 () Bool)

(assert (=> b!129245 m!152055))

(assert (=> b!129247 m!150383))

(assert (=> b!129247 m!150383))

(assert (=> b!129247 m!152055))

(assert (=> d!38781 d!39291))

(declare-fun b!129251 () Bool)

(declare-fun e!84355 () Option!173)

(assert (=> b!129251 (= e!84355 None!171)))

(declare-fun b!129250 () Bool)

(assert (=> b!129250 (= e!84355 (getValueByKey!167 (t!6115 lt!66560) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129248 () Bool)

(declare-fun e!84354 () Option!173)

(assert (=> b!129248 (= e!84354 (Some!172 (_2!1301 (h!2323 lt!66560))))))

(declare-fun d!39293 () Bool)

(declare-fun c!23778 () Bool)

(assert (=> d!39293 (= c!23778 (and ((_ is Cons!1720) lt!66560) (= (_1!1301 (h!2323 lt!66560)) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39293 (= (getValueByKey!167 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) e!84354)))

(declare-fun b!129249 () Bool)

(assert (=> b!129249 (= e!84354 e!84355)))

(declare-fun c!23779 () Bool)

(assert (=> b!129249 (= c!23779 (and ((_ is Cons!1720) lt!66560) (not (= (_1!1301 (h!2323 lt!66560)) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(assert (= (and d!39293 c!23778) b!129248))

(assert (= (and d!39293 (not c!23778)) b!129249))

(assert (= (and b!129249 c!23779) b!129250))

(assert (= (and b!129249 (not c!23779)) b!129251))

(declare-fun m!152057 () Bool)

(assert (=> b!129250 m!152057))

(assert (=> d!38781 d!39293))

(declare-fun d!39295 () Bool)

(assert (=> d!39295 (= (getValueByKey!167 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) (Some!172 (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun lt!67108 () Unit!3998)

(assert (=> d!39295 (= lt!67108 (choose!792 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun e!84356 () Bool)

(assert (=> d!39295 e!84356))

(declare-fun res!62394 () Bool)

(assert (=> d!39295 (=> (not res!62394) (not e!84356))))

(assert (=> d!39295 (= res!62394 (isStrictlySorted!313 lt!66560))))

(assert (=> d!39295 (= (lemmaContainsTupThenGetReturnValue!84 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!67108)))

(declare-fun b!129252 () Bool)

(declare-fun res!62395 () Bool)

(assert (=> b!129252 (=> (not res!62395) (not e!84356))))

(assert (=> b!129252 (= res!62395 (containsKey!171 lt!66560 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun b!129253 () Bool)

(assert (=> b!129253 (= e!84356 (contains!884 lt!66560 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39295 res!62394) b!129252))

(assert (= (and b!129252 res!62395) b!129253))

(assert (=> d!39295 m!150377))

(declare-fun m!152059 () Bool)

(assert (=> d!39295 m!152059))

(declare-fun m!152061 () Bool)

(assert (=> d!39295 m!152061))

(declare-fun m!152063 () Bool)

(assert (=> b!129252 m!152063))

(declare-fun m!152065 () Bool)

(assert (=> b!129253 m!152065))

(assert (=> d!38781 d!39295))

(declare-fun c!23783 () Bool)

(declare-fun b!129254 () Bool)

(assert (=> b!129254 (= c!23783 (and ((_ is Cons!1720) (toList!862 lt!66200)) (bvsgt (_1!1301 (h!2323 (toList!862 lt!66200))) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun e!84358 () List!1724)

(declare-fun e!84357 () List!1724)

(assert (=> b!129254 (= e!84358 e!84357)))

(declare-fun d!39297 () Bool)

(declare-fun e!84359 () Bool)

(assert (=> d!39297 e!84359))

(declare-fun res!62397 () Bool)

(assert (=> d!39297 (=> (not res!62397) (not e!84359))))

(declare-fun lt!67109 () List!1724)

(assert (=> d!39297 (= res!62397 (isStrictlySorted!313 lt!67109))))

(declare-fun e!84360 () List!1724)

(assert (=> d!39297 (= lt!67109 e!84360)))

(declare-fun c!23782 () Bool)

(assert (=> d!39297 (= c!23782 (and ((_ is Cons!1720) (toList!862 lt!66200)) (bvslt (_1!1301 (h!2323 (toList!862 lt!66200))) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (=> d!39297 (isStrictlySorted!313 (toList!862 lt!66200))))

(assert (=> d!39297 (= (insertStrictlySorted!86 (toList!862 lt!66200) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!67109)))

(declare-fun b!129255 () Bool)

(declare-fun call!14002 () List!1724)

(assert (=> b!129255 (= e!84357 call!14002)))

(declare-fun b!129256 () Bool)

(declare-fun call!14000 () List!1724)

(assert (=> b!129256 (= e!84360 call!14000)))

(declare-fun c!23780 () Bool)

(declare-fun b!129257 () Bool)

(declare-fun e!84361 () List!1724)

(assert (=> b!129257 (= e!84361 (ite c!23780 (t!6115 (toList!862 lt!66200)) (ite c!23783 (Cons!1720 (h!2323 (toList!862 lt!66200)) (t!6115 (toList!862 lt!66200))) Nil!1721)))))

(declare-fun b!129258 () Bool)

(assert (=> b!129258 (= e!84357 call!14002)))

(declare-fun b!129259 () Bool)

(assert (=> b!129259 (= e!84359 (contains!884 lt!67109 (tuple2!2583 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(declare-fun b!129260 () Bool)

(declare-fun res!62396 () Bool)

(assert (=> b!129260 (=> (not res!62396) (not e!84359))))

(assert (=> b!129260 (= res!62396 (containsKey!171 lt!67109 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13997 () Bool)

(assert (=> bm!13997 (= call!14000 ($colon$colon!89 e!84361 (ite c!23782 (h!2323 (toList!862 lt!66200)) (tuple2!2583 (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))))

(declare-fun c!23781 () Bool)

(assert (=> bm!13997 (= c!23781 c!23782)))

(declare-fun b!129261 () Bool)

(declare-fun call!14001 () List!1724)

(assert (=> b!129261 (= e!84358 call!14001)))

(declare-fun b!129262 () Bool)

(assert (=> b!129262 (= e!84361 (insertStrictlySorted!86 (t!6115 (toList!862 lt!66200)) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))) (_2!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))))

(declare-fun bm!13998 () Bool)

(assert (=> bm!13998 (= call!14002 call!14001)))

(declare-fun bm!13999 () Bool)

(assert (=> bm!13999 (= call!14001 call!14000)))

(declare-fun b!129263 () Bool)

(assert (=> b!129263 (= e!84360 e!84358)))

(assert (=> b!129263 (= c!23780 (and ((_ is Cons!1720) (toList!862 lt!66200)) (= (_1!1301 (h!2323 (toList!862 lt!66200))) (_1!1301 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))

(assert (= (and d!39297 c!23782) b!129256))

(assert (= (and d!39297 (not c!23782)) b!129263))

(assert (= (and b!129263 c!23780) b!129261))

(assert (= (and b!129263 (not c!23780)) b!129254))

(assert (= (and b!129254 c!23783) b!129255))

(assert (= (and b!129254 (not c!23783)) b!129258))

(assert (= (or b!129255 b!129258) bm!13998))

(assert (= (or b!129261 bm!13998) bm!13999))

(assert (= (or b!129256 bm!13999) bm!13997))

(assert (= (and bm!13997 c!23781) b!129262))

(assert (= (and bm!13997 (not c!23781)) b!129257))

(assert (= (and d!39297 res!62397) b!129260))

(assert (= (and b!129260 res!62396) b!129259))

(declare-fun m!152067 () Bool)

(assert (=> b!129259 m!152067))

(declare-fun m!152069 () Bool)

(assert (=> d!39297 m!152069))

(declare-fun m!152071 () Bool)

(assert (=> d!39297 m!152071))

(declare-fun m!152073 () Bool)

(assert (=> b!129260 m!152073))

(declare-fun m!152075 () Bool)

(assert (=> bm!13997 m!152075))

(declare-fun m!152077 () Bool)

(assert (=> b!129262 m!152077))

(assert (=> d!38781 d!39297))

(declare-fun d!39299 () Bool)

(assert (=> d!39299 (= (apply!112 lt!66533 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1466 (getValueByKey!167 (toList!862 lt!66533) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5370 () Bool)

(assert (= bs!5370 d!39299))

(assert (=> bs!5370 m!150023))

(assert (=> bs!5370 m!150527))

(assert (=> bs!5370 m!150527))

(declare-fun m!152079 () Bool)

(assert (=> bs!5370 m!152079))

(assert (=> b!128378 d!39299))

(declare-fun d!39301 () Bool)

(declare-fun c!23784 () Bool)

(assert (=> d!39301 (= c!23784 ((_ is ValueCellFull!1083) (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000)))))

(declare-fun e!84362 () V!3451)

(assert (=> d!39301 (= (get!1462 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84362)))

(declare-fun b!129264 () Bool)

(assert (=> b!129264 (= e!84362 (get!1464 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129265 () Bool)

(assert (=> b!129265 (= e!84362 (get!1465 (select (arr!2237 (ite c!23470 (_values!2788 newMap!16) (array!4727 (store (arr!2237 (_values!2788 newMap!16)) (index!3281 lt!66287) (ValueCellFull!1083 (get!1462 (select (arr!2237 (_values!2788 (v!3143 (underlying!443 thiss!992)))) from!355) (dynLambda!419 (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2502 (_values!2788 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39301 c!23784) b!129264))

(assert (= (and d!39301 (not c!23784)) b!129265))

(assert (=> b!129264 m!150335))

(assert (=> b!129264 m!150127))

(declare-fun m!152081 () Bool)

(assert (=> b!129264 m!152081))

(assert (=> b!129265 m!150335))

(assert (=> b!129265 m!150127))

(declare-fun m!152083 () Bool)

(assert (=> b!129265 m!152083))

(assert (=> b!128378 d!39301))

(declare-fun call!14004 () ListLongMap!1693)

(declare-fun c!23790 () Bool)

(declare-fun call!14005 () ListLongMap!1693)

(declare-fun call!14007 () ListLongMap!1693)

(declare-fun bm!14000 () Bool)

(declare-fun call!14003 () ListLongMap!1693)

(declare-fun c!23786 () Bool)

(assert (=> bm!14000 (= call!14003 (+!166 (ite c!23790 call!14007 (ite c!23786 call!14005 call!14004)) (ite (or c!23790 c!23786) (tuple2!2583 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2666 (_2!1302 lt!66286))) (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (_2!1302 lt!66286))))))))

(declare-fun b!129266 () Bool)

(declare-fun e!84373 () ListLongMap!1693)

(declare-fun call!14006 () ListLongMap!1693)

(assert (=> b!129266 (= e!84373 call!14006)))

(declare-fun b!129267 () Bool)

(declare-fun e!84370 () Bool)

(declare-fun call!14008 () Bool)

(assert (=> b!129267 (= e!84370 (not call!14008))))

(declare-fun bm!14001 () Bool)

(declare-fun call!14009 () Bool)

(declare-fun lt!67131 () ListLongMap!1693)

(assert (=> bm!14001 (= call!14009 (contains!882 lt!67131 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129268 () Bool)

(declare-fun c!23785 () Bool)

(assert (=> b!129268 (= c!23785 (and (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!84372 () ListLongMap!1693)

(assert (=> b!129268 (= e!84373 e!84372)))

(declare-fun b!129269 () Bool)

(declare-fun e!84369 () Bool)

(assert (=> b!129269 (= e!84370 e!84369)))

(declare-fun res!62399 () Bool)

(assert (=> b!129269 (= res!62399 call!14008)))

(assert (=> b!129269 (=> (not res!62399) (not e!84369))))

(declare-fun b!129270 () Bool)

(declare-fun e!84371 () Unit!3998)

(declare-fun lt!67120 () Unit!3998)

(assert (=> b!129270 (= e!84371 lt!67120)))

(declare-fun lt!67125 () ListLongMap!1693)

(assert (=> b!129270 (= lt!67125 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun lt!67126 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67126 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67124 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67124 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000))))

(declare-fun lt!67113 () Unit!3998)

(assert (=> b!129270 (= lt!67113 (addStillContains!88 lt!67125 lt!67126 (zeroValue!2666 (_2!1302 lt!66286)) lt!67124))))

(assert (=> b!129270 (contains!882 (+!166 lt!67125 (tuple2!2583 lt!67126 (zeroValue!2666 (_2!1302 lt!66286)))) lt!67124)))

(declare-fun lt!67112 () Unit!3998)

(assert (=> b!129270 (= lt!67112 lt!67113)))

(declare-fun lt!67121 () ListLongMap!1693)

(assert (=> b!129270 (= lt!67121 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun lt!67117 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67117 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67130 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67130 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000))))

(declare-fun lt!67123 () Unit!3998)

(assert (=> b!129270 (= lt!67123 (addApplyDifferent!88 lt!67121 lt!67117 (minValue!2666 (_2!1302 lt!66286)) lt!67130))))

(assert (=> b!129270 (= (apply!112 (+!166 lt!67121 (tuple2!2583 lt!67117 (minValue!2666 (_2!1302 lt!66286)))) lt!67130) (apply!112 lt!67121 lt!67130))))

(declare-fun lt!67115 () Unit!3998)

(assert (=> b!129270 (= lt!67115 lt!67123)))

(declare-fun lt!67122 () ListLongMap!1693)

(assert (=> b!129270 (= lt!67122 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun lt!67111 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67111 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67128 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67128 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000))))

(declare-fun lt!67116 () Unit!3998)

(assert (=> b!129270 (= lt!67116 (addApplyDifferent!88 lt!67122 lt!67111 (zeroValue!2666 (_2!1302 lt!66286)) lt!67128))))

(assert (=> b!129270 (= (apply!112 (+!166 lt!67122 (tuple2!2583 lt!67111 (zeroValue!2666 (_2!1302 lt!66286)))) lt!67128) (apply!112 lt!67122 lt!67128))))

(declare-fun lt!67110 () Unit!3998)

(assert (=> b!129270 (= lt!67110 lt!67116)))

(declare-fun lt!67118 () ListLongMap!1693)

(assert (=> b!129270 (= lt!67118 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun lt!67119 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67119 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67129 () (_ BitVec 64))

(assert (=> b!129270 (= lt!67129 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000))))

(assert (=> b!129270 (= lt!67120 (addApplyDifferent!88 lt!67118 lt!67119 (minValue!2666 (_2!1302 lt!66286)) lt!67129))))

(assert (=> b!129270 (= (apply!112 (+!166 lt!67118 (tuple2!2583 lt!67119 (minValue!2666 (_2!1302 lt!66286)))) lt!67129) (apply!112 lt!67118 lt!67129))))

(declare-fun b!129271 () Bool)

(assert (=> b!129271 (= e!84372 call!14006)))

(declare-fun b!129272 () Bool)

(declare-fun e!84366 () Bool)

(assert (=> b!129272 (= e!84366 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun b!129273 () Bool)

(assert (=> b!129273 (= e!84369 (= (apply!112 lt!67131 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2666 (_2!1302 lt!66286))))))

(declare-fun b!129274 () Bool)

(declare-fun e!84365 () Bool)

(assert (=> b!129274 (= e!84365 e!84370)))

(declare-fun c!23788 () Bool)

(assert (=> b!129274 (= c!23788 (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129275 () Bool)

(declare-fun e!84374 () Bool)

(declare-fun e!84368 () Bool)

(assert (=> b!129275 (= e!84374 e!84368)))

(declare-fun res!62405 () Bool)

(assert (=> b!129275 (=> (not res!62405) (not e!84368))))

(assert (=> b!129275 (= res!62405 (contains!882 lt!67131 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(assert (=> b!129275 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(declare-fun b!129276 () Bool)

(declare-fun res!62403 () Bool)

(assert (=> b!129276 (=> (not res!62403) (not e!84365))))

(assert (=> b!129276 (= res!62403 e!84374)))

(declare-fun res!62401 () Bool)

(assert (=> b!129276 (=> res!62401 e!84374)))

(assert (=> b!129276 (= res!62401 (not e!84366))))

(declare-fun res!62398 () Bool)

(assert (=> b!129276 (=> (not res!62398) (not e!84366))))

(assert (=> b!129276 (= res!62398 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(declare-fun b!129277 () Bool)

(assert (=> b!129277 (= e!84372 call!14004)))

(declare-fun b!129278 () Bool)

(declare-fun e!84367 () Bool)

(declare-fun e!84375 () Bool)

(assert (=> b!129278 (= e!84367 e!84375)))

(declare-fun res!62406 () Bool)

(assert (=> b!129278 (= res!62406 call!14009)))

(assert (=> b!129278 (=> (not res!62406) (not e!84375))))

(declare-fun b!129279 () Bool)

(declare-fun e!84363 () ListLongMap!1693)

(assert (=> b!129279 (= e!84363 (+!166 call!14003 (tuple2!2583 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2666 (_2!1302 lt!66286)))))))

(declare-fun bm!14002 () Bool)

(assert (=> bm!14002 (= call!14008 (contains!882 lt!67131 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14003 () Bool)

(assert (=> bm!14003 (= call!14006 call!14003)))

(declare-fun b!129280 () Bool)

(declare-fun res!62400 () Bool)

(assert (=> b!129280 (=> (not res!62400) (not e!84365))))

(assert (=> b!129280 (= res!62400 e!84367)))

(declare-fun c!23787 () Bool)

(assert (=> b!129280 (= c!23787 (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14004 () Bool)

(assert (=> bm!14004 (= call!14005 call!14007)))

(declare-fun b!129281 () Bool)

(assert (=> b!129281 (= e!84363 e!84373)))

(assert (=> b!129281 (= c!23786 (and (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129282 () Bool)

(declare-fun e!84364 () Bool)

(assert (=> b!129282 (= e!84364 (validKeyInArray!0 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)))))

(declare-fun bm!14005 () Bool)

(assert (=> bm!14005 (= call!14004 call!14005)))

(declare-fun b!129283 () Bool)

(assert (=> b!129283 (= e!84375 (= (apply!112 lt!67131 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2666 (_2!1302 lt!66286))))))

(declare-fun d!39303 () Bool)

(assert (=> d!39303 e!84365))

(declare-fun res!62402 () Bool)

(assert (=> d!39303 (=> (not res!62402) (not e!84365))))

(assert (=> d!39303 (= res!62402 (or (bvsge #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))))

(declare-fun lt!67114 () ListLongMap!1693)

(assert (=> d!39303 (= lt!67131 lt!67114)))

(declare-fun lt!67127 () Unit!3998)

(assert (=> d!39303 (= lt!67127 e!84371)))

(declare-fun c!23789 () Bool)

(assert (=> d!39303 (= c!23789 e!84364)))

(declare-fun res!62404 () Bool)

(assert (=> d!39303 (=> (not res!62404) (not e!84364))))

(assert (=> d!39303 (= res!62404 (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(assert (=> d!39303 (= lt!67114 e!84363)))

(assert (=> d!39303 (= c!23790 (and (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2582 (_2!1302 lt!66286)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39303 (validMask!0 (mask!7073 (_2!1302 lt!66286)))))

(assert (=> d!39303 (= (getCurrentListMap!534 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))) lt!67131)))

(declare-fun b!129284 () Bool)

(declare-fun Unit!4054 () Unit!3998)

(assert (=> b!129284 (= e!84371 Unit!4054)))

(declare-fun b!129285 () Bool)

(assert (=> b!129285 (= e!84368 (= (apply!112 lt!67131 (select (arr!2236 (_keys!4542 (_2!1302 lt!66286))) #b00000000000000000000000000000000)) (get!1462 (select (arr!2237 (_values!2788 (_2!1302 lt!66286))) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 (_2!1302 lt!66286)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2502 (_values!2788 (_2!1302 lt!66286)))))))

(assert (=> b!129285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2501 (_keys!4542 (_2!1302 lt!66286)))))))

(declare-fun bm!14006 () Bool)

(assert (=> bm!14006 (= call!14007 (getCurrentListMapNoExtraKeys!133 (_keys!4542 (_2!1302 lt!66286)) (_values!2788 (_2!1302 lt!66286)) (mask!7073 (_2!1302 lt!66286)) (extraKeys!2582 (_2!1302 lt!66286)) (zeroValue!2666 (_2!1302 lt!66286)) (minValue!2666 (_2!1302 lt!66286)) #b00000000000000000000000000000000 (defaultEntry!2805 (_2!1302 lt!66286))))))

(declare-fun b!129286 () Bool)

(assert (=> b!129286 (= e!84367 (not call!14009))))

(assert (= (and d!39303 c!23790) b!129279))

(assert (= (and d!39303 (not c!23790)) b!129281))

(assert (= (and b!129281 c!23786) b!129266))

(assert (= (and b!129281 (not c!23786)) b!129268))

(assert (= (and b!129268 c!23785) b!129271))

(assert (= (and b!129268 (not c!23785)) b!129277))

(assert (= (or b!129271 b!129277) bm!14005))

(assert (= (or b!129266 bm!14005) bm!14004))

(assert (= (or b!129266 b!129271) bm!14003))

(assert (= (or b!129279 bm!14004) bm!14006))

(assert (= (or b!129279 bm!14003) bm!14000))

(assert (= (and d!39303 res!62404) b!129282))

(assert (= (and d!39303 c!23789) b!129270))

(assert (= (and d!39303 (not c!23789)) b!129284))

(assert (= (and d!39303 res!62402) b!129276))

(assert (= (and b!129276 res!62398) b!129272))

(assert (= (and b!129276 (not res!62401)) b!129275))

(assert (= (and b!129275 res!62405) b!129285))

(assert (= (and b!129276 res!62403) b!129280))

(assert (= (and b!129280 c!23787) b!129278))

(assert (= (and b!129280 (not c!23787)) b!129286))

(assert (= (and b!129278 res!62406) b!129283))

(assert (= (or b!129278 b!129286) bm!14001))

(assert (= (and b!129280 res!62400) b!129274))

(assert (= (and b!129274 c!23788) b!129269))

(assert (= (and b!129274 (not c!23788)) b!129267))

(assert (= (and b!129269 res!62399) b!129273))

(assert (= (or b!129269 b!129267) bm!14002))

(declare-fun b_lambda!5741 () Bool)

(assert (=> (not b_lambda!5741) (not b!129285)))

(declare-fun t!6127 () Bool)

(declare-fun tb!2365 () Bool)

(assert (=> (and b!127831 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 (_2!1302 lt!66286))) t!6127) tb!2365))

(declare-fun result!3909 () Bool)

(assert (=> tb!2365 (= result!3909 tp_is_empty!2853)))

(assert (=> b!129285 t!6127))

(declare-fun b_and!8009 () Bool)

(assert (= b_and!8005 (and (=> t!6127 result!3909) b_and!8009)))

(declare-fun tb!2367 () Bool)

(declare-fun t!6129 () Bool)

(assert (=> (and b!127844 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (_2!1302 lt!66286))) t!6129) tb!2367))

(declare-fun result!3911 () Bool)

(assert (= result!3911 result!3909))

(assert (=> b!129285 t!6129))

(declare-fun b_and!8011 () Bool)

(assert (= b_and!8007 (and (=> t!6129 result!3911) b_and!8011)))

(declare-fun m!152085 () Bool)

(assert (=> bm!14002 m!152085))

(declare-fun m!152087 () Bool)

(assert (=> b!129283 m!152087))

(declare-fun m!152089 () Bool)

(assert (=> bm!14006 m!152089))

(declare-fun m!152091 () Bool)

(assert (=> b!129270 m!152091))

(declare-fun m!152093 () Bool)

(assert (=> b!129270 m!152093))

(declare-fun m!152095 () Bool)

(assert (=> b!129270 m!152095))

(declare-fun m!152097 () Bool)

(assert (=> b!129270 m!152097))

(declare-fun m!152099 () Bool)

(assert (=> b!129270 m!152099))

(declare-fun m!152101 () Bool)

(assert (=> b!129270 m!152101))

(declare-fun m!152103 () Bool)

(assert (=> b!129270 m!152103))

(declare-fun m!152105 () Bool)

(assert (=> b!129270 m!152105))

(assert (=> b!129270 m!150871))

(declare-fun m!152107 () Bool)

(assert (=> b!129270 m!152107))

(declare-fun m!152109 () Bool)

(assert (=> b!129270 m!152109))

(assert (=> b!129270 m!152097))

(declare-fun m!152111 () Bool)

(assert (=> b!129270 m!152111))

(declare-fun m!152113 () Bool)

(assert (=> b!129270 m!152113))

(assert (=> b!129270 m!152095))

(declare-fun m!152115 () Bool)

(assert (=> b!129270 m!152115))

(assert (=> b!129270 m!152089))

(assert (=> b!129270 m!152107))

(declare-fun m!152117 () Bool)

(assert (=> b!129270 m!152117))

(assert (=> b!129270 m!152093))

(declare-fun m!152119 () Bool)

(assert (=> b!129270 m!152119))

(assert (=> d!39303 m!151973))

(assert (=> b!129282 m!150871))

(assert (=> b!129282 m!150871))

(assert (=> b!129282 m!150875))

(declare-fun m!152121 () Bool)

(assert (=> bm!14001 m!152121))

(declare-fun m!152123 () Bool)

(assert (=> b!129279 m!152123))

(declare-fun m!152125 () Bool)

(assert (=> b!129273 m!152125))

(assert (=> b!129285 m!150871))

(declare-fun m!152127 () Bool)

(assert (=> b!129285 m!152127))

(declare-fun m!152129 () Bool)

(assert (=> b!129285 m!152129))

(declare-fun m!152131 () Bool)

(assert (=> b!129285 m!152131))

(assert (=> b!129285 m!150871))

(assert (=> b!129285 m!152129))

(assert (=> b!129285 m!152131))

(declare-fun m!152133 () Bool)

(assert (=> b!129285 m!152133))

(assert (=> b!129272 m!150871))

(assert (=> b!129272 m!150871))

(assert (=> b!129272 m!150875))

(declare-fun m!152135 () Bool)

(assert (=> bm!14000 m!152135))

(assert (=> b!129275 m!150871))

(assert (=> b!129275 m!150871))

(declare-fun m!152137 () Bool)

(assert (=> b!129275 m!152137))

(assert (=> d!38709 d!39303))

(declare-fun d!39305 () Bool)

(assert (=> d!39305 (= (apply!112 lt!66378 (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000)) (get!1466 (getValueByKey!167 (toList!862 lt!66378) (select (arr!2236 (_keys!4542 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5371 () Bool)

(assert (= bs!5371 d!39305))

(assert (=> bs!5371 m!150023))

(assert (=> bs!5371 m!150571))

(assert (=> bs!5371 m!150571))

(declare-fun m!152139 () Bool)

(assert (=> bs!5371 m!152139))

(assert (=> b!128220 d!39305))

(declare-fun d!39307 () Bool)

(declare-fun c!23791 () Bool)

(assert (=> d!39307 (= c!23791 ((_ is ValueCellFull!1083) (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!84376 () V!3451)

(assert (=> d!39307 (= (get!1462 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84376)))

(declare-fun b!129287 () Bool)

(assert (=> b!129287 (= e!84376 (get!1464 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129288 () Bool)

(assert (=> b!129288 (= e!84376 (get!1465 (select (arr!2237 (_values!2788 newMap!16)) #b00000000000000000000000000000000) (dynLambda!419 (defaultEntry!2805 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39307 c!23791) b!129287))

(assert (= (and d!39307 (not c!23791)) b!129288))

(assert (=> b!129287 m!150125))

(assert (=> b!129287 m!150127))

(declare-fun m!152141 () Bool)

(assert (=> b!129287 m!152141))

(assert (=> b!129288 m!150125))

(assert (=> b!129288 m!150127))

(declare-fun m!152143 () Bool)

(assert (=> b!129288 m!152143))

(assert (=> b!128220 d!39307))

(declare-fun d!39309 () Bool)

(assert (=> d!39309 (= (get!1466 (getValueByKey!167 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66211)) (v!3147 (getValueByKey!167 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66211)))))

(assert (=> d!38791 d!39309))

(declare-fun b!129292 () Bool)

(declare-fun e!84378 () Option!173)

(assert (=> b!129292 (= e!84378 None!171)))

(declare-fun b!129291 () Bool)

(assert (=> b!129291 (= e!84378 (getValueByKey!167 (t!6115 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) lt!66211))))

(declare-fun e!84377 () Option!173)

(declare-fun b!129289 () Bool)

(assert (=> b!129289 (= e!84377 (Some!172 (_2!1301 (h!2323 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))))))))

(declare-fun d!39311 () Bool)

(declare-fun c!23792 () Bool)

(assert (=> d!39311 (= c!23792 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66211)))))

(assert (=> d!39311 (= (getValueByKey!167 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))) lt!66211) e!84377)))

(declare-fun b!129290 () Bool)

(assert (=> b!129290 (= e!84377 e!84378)))

(declare-fun c!23793 () Bool)

(assert (=> b!129290 (= c!23793 (and ((_ is Cons!1720) (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992))))))) (not (= (_1!1301 (h!2323 (toList!862 (+!166 lt!66200 (tuple2!2583 lt!66201 (minValue!2666 (v!3143 (underlying!443 thiss!992)))))))) lt!66211))))))

(assert (= (and d!39311 c!23792) b!129289))

(assert (= (and d!39311 (not c!23792)) b!129290))

(assert (= (and b!129290 c!23793) b!129291))

(assert (= (and b!129290 (not c!23793)) b!129292))

(declare-fun m!152145 () Bool)

(assert (=> b!129291 m!152145))

(assert (=> d!38791 d!39311))

(declare-fun condMapEmpty!4557 () Bool)

(declare-fun mapDefault!4557 () ValueCell!1083)

(assert (=> mapNonEmpty!4555 (= condMapEmpty!4557 (= mapRest!4555 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4557)))))

(declare-fun e!84379 () Bool)

(declare-fun mapRes!4557 () Bool)

(assert (=> mapNonEmpty!4555 (= tp!11053 (and e!84379 mapRes!4557))))

(declare-fun b!129293 () Bool)

(declare-fun e!84380 () Bool)

(assert (=> b!129293 (= e!84380 tp_is_empty!2853)))

(declare-fun b!129294 () Bool)

(assert (=> b!129294 (= e!84379 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4557 () Bool)

(declare-fun tp!11055 () Bool)

(assert (=> mapNonEmpty!4557 (= mapRes!4557 (and tp!11055 e!84380))))

(declare-fun mapValue!4557 () ValueCell!1083)

(declare-fun mapRest!4557 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapKey!4557 () (_ BitVec 32))

(assert (=> mapNonEmpty!4557 (= mapRest!4555 (store mapRest!4557 mapKey!4557 mapValue!4557))))

(declare-fun mapIsEmpty!4557 () Bool)

(assert (=> mapIsEmpty!4557 mapRes!4557))

(assert (= (and mapNonEmpty!4555 condMapEmpty!4557) mapIsEmpty!4557))

(assert (= (and mapNonEmpty!4555 (not condMapEmpty!4557)) mapNonEmpty!4557))

(assert (= (and mapNonEmpty!4557 ((_ is ValueCellFull!1083) mapValue!4557)) b!129293))

(assert (= (and mapNonEmpty!4555 ((_ is ValueCellFull!1083) mapDefault!4557)) b!129294))

(declare-fun m!152147 () Bool)

(assert (=> mapNonEmpty!4557 m!152147))

(declare-fun condMapEmpty!4558 () Bool)

(declare-fun mapDefault!4558 () ValueCell!1083)

(assert (=> mapNonEmpty!4556 (= condMapEmpty!4558 (= mapRest!4556 ((as const (Array (_ BitVec 32) ValueCell!1083)) mapDefault!4558)))))

(declare-fun e!84381 () Bool)

(declare-fun mapRes!4558 () Bool)

(assert (=> mapNonEmpty!4556 (= tp!11054 (and e!84381 mapRes!4558))))

(declare-fun b!129295 () Bool)

(declare-fun e!84382 () Bool)

(assert (=> b!129295 (= e!84382 tp_is_empty!2853)))

(declare-fun b!129296 () Bool)

(assert (=> b!129296 (= e!84381 tp_is_empty!2853)))

(declare-fun mapNonEmpty!4558 () Bool)

(declare-fun tp!11056 () Bool)

(assert (=> mapNonEmpty!4558 (= mapRes!4558 (and tp!11056 e!84382))))

(declare-fun mapRest!4558 () (Array (_ BitVec 32) ValueCell!1083))

(declare-fun mapValue!4558 () ValueCell!1083)

(declare-fun mapKey!4558 () (_ BitVec 32))

(assert (=> mapNonEmpty!4558 (= mapRest!4556 (store mapRest!4558 mapKey!4558 mapValue!4558))))

(declare-fun mapIsEmpty!4558 () Bool)

(assert (=> mapIsEmpty!4558 mapRes!4558))

(assert (= (and mapNonEmpty!4556 condMapEmpty!4558) mapIsEmpty!4558))

(assert (= (and mapNonEmpty!4556 (not condMapEmpty!4558)) mapNonEmpty!4558))

(assert (= (and mapNonEmpty!4558 ((_ is ValueCellFull!1083) mapValue!4558)) b!129295))

(assert (= (and mapNonEmpty!4556 ((_ is ValueCellFull!1083) mapDefault!4558)) b!129296))

(declare-fun m!152149 () Bool)

(assert (=> mapNonEmpty!4558 m!152149))

(declare-fun b_lambda!5743 () Bool)

(assert (= b_lambda!5719 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5743)))

(declare-fun b_lambda!5745 () Bool)

(assert (= b_lambda!5733 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5745)))

(declare-fun b_lambda!5747 () Bool)

(assert (= b_lambda!5735 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5747)))

(declare-fun b_lambda!5749 () Bool)

(assert (= b_lambda!5727 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5749)))

(declare-fun b_lambda!5751 () Bool)

(assert (= b_lambda!5731 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5751)))

(declare-fun b_lambda!5753 () Bool)

(assert (= b_lambda!5725 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5753)))

(declare-fun b_lambda!5755 () Bool)

(assert (= b_lambda!5729 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5755)))

(declare-fun b_lambda!5757 () Bool)

(assert (= b_lambda!5723 (or (and b!127831 b_free!2873) (and b!127844 b_free!2875 (= (defaultEntry!2805 newMap!16) (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))))) b_lambda!5757)))

(declare-fun b_lambda!5759 () Bool)

(assert (= b_lambda!5721 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5759)))

(declare-fun b_lambda!5761 () Bool)

(assert (= b_lambda!5717 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5761)))

(declare-fun b_lambda!5763 () Bool)

(assert (= b_lambda!5737 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5763)))

(declare-fun b_lambda!5765 () Bool)

(assert (= b_lambda!5715 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5765)))

(declare-fun b_lambda!5767 () Bool)

(assert (= b_lambda!5713 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5767)))

(declare-fun b_lambda!5769 () Bool)

(assert (= b_lambda!5739 (or (and b!127831 b_free!2873 (= (defaultEntry!2805 (v!3143 (underlying!443 thiss!992))) (defaultEntry!2805 newMap!16))) (and b!127844 b_free!2875) b_lambda!5769)))

(check-sat (not b!128732) (not b_lambda!5711) (not b_lambda!5755) (not b!128459) (not b!129109) (not bm!14000) (not d!38977) (not bm!13942) (not bm!13958) (not b!128562) (not b!128514) (not b!128462) (not d!39013) (not d!38847) (not b!128869) (not d!39097) (not b!129047) (not b!129285) (not b!129098) (not b!128966) (not d!38907) (not b!128488) (not bm!13960) (not bm!13988) (not b!129066) (not b!128885) (not d!38879) (not bm!13949) (not b_lambda!5687) (not b!129242) (not d!39151) (not b!129222) (not d!38813) (not b!129157) (not b!129139) (not b!129151) (not b!128539) (not d!39185) (not b!129279) (not b!128754) (not b!128895) (not bm!13935) (not d!39183) (not b!128975) (not d!39123) (not b!128721) (not b!129039) (not bm!13930) (not bm!13947) (not b_lambda!5753) (not bm!13967) (not d!38865) (not b!128854) (not bm!13928) (not b!128660) (not b!128857) (not b!128843) (not b!129154) (not b!128657) (not d!38841) (not b!128559) (not b!128709) (not b!129132) (not b_lambda!5747) (not b!129104) (not b!128785) (not bm!13929) (not d!39163) (not b!129033) (not d!39065) (not b!128883) (not b!128986) (not b!128583) (not d!39103) (not b!128463) (not d!38815) (not b!128875) (not d!39107) (not b!128761) (not b!128530) (not b!128797) (not b!129055) (not bm!13997) (not b!128645) (not b!128812) (not d!39055) (not b!128517) (not b!129163) (not d!39147) (not b!128779) (not d!38919) (not d!39093) (not d!39049) (not d!39255) (not b!128571) (not b!128716) (not b!129008) (not d!39173) (not d!39299) (not b!128819) (not b!128526) (not b!128964) (not b!128793) (not b!128961) (not d!38875) (not d!38925) (not bm!13945) (not b!129275) (not b!129172) (not b!128769) (not b!129122) (not b!128859) (not b!129128) (not b_lambda!5703) (not d!39265) (not b!129180) (not b!129192) (not bm!13959) (not b!128555) (not b!129288) (not b!128927) (not b!129259) (not d!39165) (not b!128864) (not d!39119) (not d!39081) (not b!128955) (not d!39111) (not b!129194) (not b!128801) (not b!128737) (not d!39079) (not b!129042) (not d!38869) (not bm!13956) (not bm!13994) (not d!38845) (not d!38893) (not d!38843) (not d!38975) (not d!39217) (not b!128810) (not b!128900) (not d!39045) (not d!38833) (not b!129080) (not b!128596) (not b!129212) (not b!129072) (not b!128830) (not d!39143) (not b!128862) (not d!38913) (not b!129270) (not b!128998) (not b_lambda!5745) (not d!39155) (not b!128899) (not d!39175) (not d!38989) (not d!39091) (not b!128578) (not b!128557) (not b!128879) (not d!39047) (not b!129260) (not b!129252) (not b!129091) (not bm!13979) (not b_lambda!5709) (not b_lambda!5761) (not d!38835) (not d!39073) (not b!128467) (not d!39305) (not b!128836) (not b!129090) (not b!128593) (not b!128887) (not bm!13973) (not b!128853) (not b!129135) (not b!129250) (not b!129158) (not b!129022) (not d!38885) (not d!39275) (not b!128760) (not b!128978) (not b!129198) (not bm!13948) (not b!128963) (not bm!13954) (not d!39271) (not b!129017) (not b!129226) (not d!39259) (not d!39071) (not b!128766) (not d!39067) (not mapNonEmpty!4557) (not b!128817) (not b_lambda!5759) (not b!128771) (not b!128548) (not bm!13966) (not d!39289) (not b!128755) (not b!129045) (not b!128877) (not bm!13916) (not b!129062) (not d!39277) (not b!128889) (not b!129028) (not b!128903) (not b!128906) b_and!8011 (not b!128647) (not d!39245) (not b!128590) (not b!128880) (not d!39095) (not d!38963) (not d!39195) (not b!128973) (not d!39223) (not b!128976) (not b_lambda!5751) (not d!39033) (not b!129205) (not d!38857) (not b!128476) (not b!128580) (not bm!13964) (not bm!13970) (not b!128850) (not d!39251) (not b!129225) (not d!39139) (not b!129283) (not b!129282) (not b!128533) (not b!128519) (not b!128595) (not b!128682) (not b!128822) (not d!39253) (not b!128844) (not b!128478) (not b!129040) (not d!39035) (not d!39115) (not b!128640) (not d!39149) (not d!38971) (not b!128898) (not d!39297) (not b!129181) (not b!129174) (not b!129262) (not b!129095) (not b!128988) (not d!39069) (not d!38999) (not b!128905) (not d!39239) (not b!128527) (not b!128603) (not b!128605) (not d!38957) (not d!39295) (not b!129253) (not d!39041) (not d!38821) (not bm!13937) (not b!129219) (not d!38903) (not b!128946) (not d!38959) (not d!39003) (not b!128632) (not b!129264) (not b!128639) (not b!128937) (not d!38911) (not b!128528) (not b!128977) (not b!129220) (not b_lambda!5765) (not d!38867) (not d!39205) (not b!128936) (not d!39099) (not b!129177) (not b!128586) (not b!129001) (not b!128742) (not d!38921) (not b!129020) (not d!38927) (not b!129237) (not b!128676) (not b!128602) (not b!129069) (not b!128538) (not d!39261) (not d!38887) (not b!129064) (not bm!13965) (not d!39101) (not b!129245) (not bm!14002) (not d!39207) (not b!128902) (not b!128985) (not d!39193) (not b!128564) (not b!128534) (not b!129112) (not b!129240) (not d!38863) (not b!128642) (not d!39241) (not b!128867) (not b_lambda!5749) (not bm!13938) (not d!38973) (not d!39077) (not b!128552) (not bm!13975) (not b!129081) (not b!128663) (not b!129228) (not b_next!2875) (not b!129032) (not b!129196) (not bm!13936) (not d!39167) (not b!128929) (not b!128747) (not b!128890) (not bm!13919) (not d!38817) (not b!128545) (not b!128806) (not d!38995) (not b!129273) (not b!128872) (not d!39141) (not d!39287) (not b!128654) (not b!128847) (not bm!13980) (not bm!13981) (not b!128894) (not b!128573) (not b!129118) (not b!129100) (not d!39157) (not b!128796) (not b!129168) (not b!129000) (not d!39221) (not bm!13955) (not d!39125) (not b!129239) (not b!128995) (not bm!13922) (not bm!13944) (not d!38965) (not bm!13982) (not b!128974) (not b!129152) (not d!39177) (not d!38871) (not b!128515) (not b!129007) (not b!128680) (not d!39117) (not d!38969) (not b!128670) (not b_lambda!5707) (not b!128969) (not b!129057) (not b!128468) (not d!39001) (not b!129210) (not b_lambda!5705) (not b!129213) (not b_lambda!5769) (not bm!13957) (not b!129207) (not b!128566) (not b_lambda!5767) (not d!38831) (not d!39303) (not d!39007) (not b_lambda!5763) (not d!38861) (not b!128544) (not b!128475) (not d!39121) (not b_lambda!5743) (not b!128786) (not b!128655) (not b!129087) (not b!128924) (not bm!13946) (not b!128572) (not b_lambda!5741) (not b!128884) (not d!39011) (not b!128811) (not b!129199) (not d!39237) (not b!129121) (not b!129186) (not d!39105) (not b!128666) (not b!129065) (not b!129203) (not b!128876) (not b!128892) (not b!128826) (not d!39247) (not b!129060) (not d!39187) (not b!128802) (not b!128829) (not b!129175) (not b!128791) (not b!128960) (not b!129265) (not d!39235) b_and!8009 (not b!129111) (not b!129018) (not d!39109) (not d!38983) (not b!128464) (not d!39029) (not d!39291) (not d!38851) (not b_lambda!5691) (not d!38915) (not d!38849) (not b!128874) (not b!128588) (not b!129241) (not b!128949) (not b!129054) (not b!128659) (not b!128487) (not d!39053) (not b!128967) (not d!39273) (not b!129030) (not b!128953) (not d!39059) (not d!38997) (not b!128466) (not d!38837) (not bm!13953) (not d!39005) (not b!128558) (not b!128934) (not b!129170) (not b!128745) (not b!128991) (not b!129144) (not b!128947) (not d!39279) (not b!129179) (not d!39027) (not b!129291) (not b!128540) (not d!39269) (not b!128581) (not b!129124) (not bm!13927) (not b!128731) (not d!38877) (not d!38899) (not d!38819) (not bm!13911) (not b!128529) (not b!128522) (not b!129103) (not b!128939) (not b!129244) (not b!128832) (not bm!13983) (not d!38961) (not d!38827) (not b!129188) (not b!129233) (not b!129287) (not b!128679) (not d!38945) (not b!128713) (not d!38901) (not b!128461) (not d!39051) (not b!128873) (not b!128943) (not d!38943) (not b!128546) (not d!39063) (not b_next!2873) (not b!129184) (not b!129093) (not b!129142) (not b!128778) (not b!128542) (not b!129145) (not b!128757) (not d!38855) (not b!129185) (not d!39075) (not d!39213) (not bm!13915) (not b!129224) (not b!128775) (not b!128531) (not b!129037) (not bm!13991) (not b!128788) (not d!39009) (not b!128842) (not b!128751) (not mapNonEmpty!4558) (not bm!13974) (not b!129048) (not b!129067) (not b!128547) (not b!128648) (not d!39043) (not d!38811) (not b!129173) (not bm!14001) (not d!39169) (not b!129096) (not bm!13992) (not b!128980) (not b!128800) (not bm!13993) (not d!38953) (not b!128543) (not d!38993) (not d!38897) (not b!129130) (not b!128901) (not b!128781) (not b!129010) (not b!128820) (not b!129272) (not bm!14006) (not b!128965) tp_is_empty!2853 (not b!129078) (not bm!13943) (not b!129195) (not b!128768) (not bm!13931) (not b_lambda!5757) (not b!129247) (not d!39199) (not b!128715) (not b!129191) (not d!39061) (not b!128962) (not b!128744) (not b!128734) (not b!128870) (not b!128981) (not bm!13914) (not b!128834) (not d!39039) (not d!38937) (not b!128956) (not b!129159) (not d!39161) (not d!38941) (not d!38825) (not b!129230) (not b!128569) (not b!129137) (not b!129083) (not b!129189) (not b!128893) (not b!128473) (not b!129114) (not d!39057) (not d!38859) (not d!39113) (not b!128481) (not d!39135) (not b!129036) (not b!128574) (not d!39209) (not d!38853) (not b!128993) (not bm!13987))
(check-sat b_and!8009 b_and!8011 (not b_next!2873) (not b_next!2875))
