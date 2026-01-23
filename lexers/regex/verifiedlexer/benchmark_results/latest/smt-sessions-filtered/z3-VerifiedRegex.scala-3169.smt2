; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185550 () Bool)

(assert start!185550)

(declare-fun b!1858834 () Bool)

(declare-fun b_free!51977 () Bool)

(declare-fun b_next!52681 () Bool)

(assert (=> b!1858834 (= b_free!51977 (not b_next!52681))))

(declare-fun tp!529884 () Bool)

(declare-fun b_and!144245 () Bool)

(assert (=> b!1858834 (= tp!529884 b_and!144245)))

(declare-fun b!1858831 () Bool)

(declare-fun e!1187033 () Bool)

(declare-fun e!1187035 () Bool)

(assert (=> b!1858831 (= e!1187033 e!1187035)))

(declare-fun c!302642 () Bool)

(declare-datatypes ((V!3888 0))(
  ( (V!3889 (val!5894 Int)) )
))
(declare-datatypes ((array!6561 0))(
  ( (array!6562 (arr!2914 (Array (_ BitVec 32) (_ BitVec 64))) (size!16299 (_ BitVec 32))) )
))
(declare-datatypes ((array!6563 0))(
  ( (array!6564 (arr!2915 (Array (_ BitVec 32) V!3888)) (size!16300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3816 0))(
  ( (LongMapFixedSize!3817 (defaultEntry!2273 Int) (mask!5626 (_ BitVec 32)) (extraKeys!2156 (_ BitVec 32)) (zeroValue!2166 V!3888) (minValue!2166 V!3888) (_size!3886 (_ BitVec 32)) (_keys!2205 array!6561) (_values!2188 array!6563) (_vacant!1969 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7495 0))(
  ( (Cell!7496 (v!26053 LongMapFixedSize!3816)) )
))
(declare-datatypes ((MutLongMap!1908 0))(
  ( (LongMap!1908 (underlying!4026 Cell!7495)) (MutLongMapExt!1907 (__x!12977 Int)) )
))
(declare-datatypes ((tuple2!19876 0))(
  ( (tuple2!19877 (_1!11365 Bool) (_2!11365 MutLongMap!1908)) )
))
(declare-fun lt!717338 () tuple2!19876)

(assert (=> b!1858831 (= c!302642 (_1!11365 lt!717338))))

(declare-fun bm!115588 () Bool)

(declare-datatypes ((tuple2!19878 0))(
  ( (tuple2!19879 (_1!11366 (_ BitVec 64)) (_2!11366 V!3888)) )
))
(declare-datatypes ((List!20692 0))(
  ( (Nil!20612) (Cons!20612 (h!26013 tuple2!19878) (t!172561 List!20692)) )
))
(declare-datatypes ((ListLongMap!217 0))(
  ( (ListLongMap!218 (toList!994 List!20692)) )
))
(declare-fun call!115594 () ListLongMap!217)

(declare-fun abstractMap!65 (MutLongMap!1908) ListLongMap!217)

(assert (=> bm!115588 (= call!115594 (abstractMap!65 (_2!11365 lt!717338)))))

(declare-fun b!1858832 () Bool)

(declare-fun e!1187034 () Bool)

(declare-fun tp_is_empty!8583 () Bool)

(declare-fun mapRes!8869 () Bool)

(assert (=> b!1858832 (= e!1187034 (and tp_is_empty!8583 mapRes!8869))))

(declare-fun condMapEmpty!8869 () Bool)

(declare-fun thiss!47603 () MutLongMap!1908)

(declare-fun mapDefault!8869 () V!3888)

(assert (=> b!1858832 (= condMapEmpty!8869 (= (arr!2915 (_values!2188 (v!26053 (underlying!4026 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3888)) mapDefault!8869)))))

(declare-fun b!1858833 () Bool)

(declare-fun e!1187037 () Bool)

(declare-fun e!1187030 () Bool)

(assert (=> b!1858833 (= e!1187037 e!1187030)))

(declare-fun e!1187036 () Bool)

(declare-fun array_inv!2097 (array!6561) Bool)

(declare-fun array_inv!2098 (array!6563) Bool)

(assert (=> b!1858834 (= e!1187036 (and tp!529884 tp_is_empty!8583 (array_inv!2097 (_keys!2205 (v!26053 (underlying!4026 thiss!47603)))) (array_inv!2098 (_values!2188 (v!26053 (underlying!4026 thiss!47603)))) e!1187034))))

(declare-fun b!1858835 () Bool)

(declare-fun res!832608 () Bool)

(declare-fun e!1187031 () Bool)

(assert (=> b!1858835 (=> (not res!832608) (not e!1187031))))

(get-info :version)

(assert (=> b!1858835 (= res!832608 (not ((_ is LongMap!1908) thiss!47603)))))

(declare-fun bm!115589 () Bool)

(declare-fun call!115593 () ListLongMap!217)

(assert (=> bm!115589 (= call!115593 (abstractMap!65 thiss!47603))))

(declare-fun res!832609 () Bool)

(assert (=> start!185550 (=> (not res!832609) (not e!1187031))))

(declare-fun valid!1535 (MutLongMap!1908) Bool)

(assert (=> start!185550 (= res!832609 (valid!1535 thiss!47603))))

(assert (=> start!185550 e!1187031))

(assert (=> start!185550 e!1187037))

(assert (=> start!185550 true))

(declare-fun b!1858836 () Bool)

(assert (=> b!1858836 (= e!1187031 e!1187033)))

(declare-fun res!832610 () Bool)

(assert (=> b!1858836 (=> res!832610 e!1187033)))

(assert (=> b!1858836 (= res!832610 (not (valid!1535 (_2!11365 lt!717338))))))

(declare-fun key!7122 () (_ BitVec 64))

(declare-fun remove!58 (MutLongMap!1908 (_ BitVec 64)) tuple2!19876)

(assert (=> b!1858836 (= lt!717338 (remove!58 thiss!47603 key!7122))))

(declare-fun b!1858837 () Bool)

(declare-fun -!102 (ListLongMap!217 (_ BitVec 64)) ListLongMap!217)

(assert (=> b!1858837 (= e!1187035 (not (= call!115594 (-!102 call!115593 key!7122))))))

(declare-fun mapIsEmpty!8869 () Bool)

(assert (=> mapIsEmpty!8869 mapRes!8869))

(declare-fun b!1858838 () Bool)

(assert (=> b!1858838 (= e!1187035 (not (= call!115594 call!115593)))))

(declare-fun b!1858839 () Bool)

(assert (=> b!1858839 (= e!1187030 e!1187036)))

(declare-fun mapNonEmpty!8869 () Bool)

(declare-fun tp!529883 () Bool)

(assert (=> mapNonEmpty!8869 (= mapRes!8869 (and tp!529883 tp_is_empty!8583))))

(declare-fun mapRest!8869 () (Array (_ BitVec 32) V!3888))

(declare-fun mapKey!8869 () (_ BitVec 32))

(declare-fun mapValue!8869 () V!3888)

(assert (=> mapNonEmpty!8869 (= (arr!2915 (_values!2188 (v!26053 (underlying!4026 thiss!47603)))) (store mapRest!8869 mapKey!8869 mapValue!8869))))

(assert (= (and start!185550 res!832609) b!1858835))

(assert (= (and b!1858835 res!832608) b!1858836))

(assert (= (and b!1858836 (not res!832610)) b!1858831))

(assert (= (and b!1858831 c!302642) b!1858837))

(assert (= (and b!1858831 (not c!302642)) b!1858838))

(assert (= (or b!1858837 b!1858838) bm!115588))

(assert (= (or b!1858837 b!1858838) bm!115589))

(assert (= (and b!1858832 condMapEmpty!8869) mapIsEmpty!8869))

(assert (= (and b!1858832 (not condMapEmpty!8869)) mapNonEmpty!8869))

(assert (= b!1858834 b!1858832))

(assert (= b!1858839 b!1858834))

(assert (= b!1858833 b!1858839))

(assert (= (and start!185550 ((_ is LongMap!1908) thiss!47603)) b!1858833))

(declare-fun m!2282301 () Bool)

(assert (=> b!1858834 m!2282301))

(declare-fun m!2282303 () Bool)

(assert (=> b!1858834 m!2282303))

(declare-fun m!2282305 () Bool)

(assert (=> b!1858836 m!2282305))

(declare-fun m!2282307 () Bool)

(assert (=> b!1858836 m!2282307))

(declare-fun m!2282309 () Bool)

(assert (=> bm!115589 m!2282309))

(declare-fun m!2282311 () Bool)

(assert (=> mapNonEmpty!8869 m!2282311))

(declare-fun m!2282313 () Bool)

(assert (=> start!185550 m!2282313))

(declare-fun m!2282315 () Bool)

(assert (=> bm!115588 m!2282315))

(declare-fun m!2282317 () Bool)

(assert (=> b!1858837 m!2282317))

(check-sat (not start!185550) (not bm!115589) (not bm!115588) b_and!144245 tp_is_empty!8583 (not b_next!52681) (not mapNonEmpty!8869) (not b!1858836) (not b!1858837) (not b!1858834))
(check-sat b_and!144245 (not b_next!52681))
(get-model)

(declare-fun d!567176 () Bool)

(declare-fun c!302645 () Bool)

(assert (=> d!567176 (= c!302645 ((_ is LongMap!1908) (_2!11365 lt!717338)))))

(declare-fun e!1187040 () Bool)

(assert (=> d!567176 (= (valid!1535 (_2!11365 lt!717338)) e!1187040)))

(declare-fun b!1858844 () Bool)

(declare-fun valid!1536 (MutLongMap!1908) Bool)

(assert (=> b!1858844 (= e!1187040 (valid!1536 (_2!11365 lt!717338)))))

(declare-fun b!1858845 () Bool)

(declare-fun valid!1537 (MutLongMap!1908) Bool)

(assert (=> b!1858845 (= e!1187040 (valid!1537 (_2!11365 lt!717338)))))

(assert (= (and d!567176 c!302645) b!1858844))

(assert (= (and d!567176 (not c!302645)) b!1858845))

(declare-fun m!2282319 () Bool)

(assert (=> b!1858844 m!2282319))

(declare-fun m!2282321 () Bool)

(assert (=> b!1858845 m!2282321))

(assert (=> b!1858836 d!567176))

(declare-fun b!1858854 () Bool)

(declare-fun res!832615 () Bool)

(declare-fun e!1187046 () Bool)

(assert (=> b!1858854 (=> (not res!832615) (not e!1187046))))

(declare-fun lt!717341 () tuple2!19876)

(assert (=> b!1858854 (= res!832615 (valid!1535 (_2!11365 lt!717341)))))

(declare-fun bm!115594 () Bool)

(declare-fun call!115599 () ListLongMap!217)

(assert (=> bm!115594 (= call!115599 (abstractMap!65 thiss!47603))))

(declare-fun b!1858855 () Bool)

(declare-fun call!115600 () ListLongMap!217)

(declare-fun e!1187045 () Bool)

(assert (=> b!1858855 (= e!1187045 (= call!115600 (-!102 call!115599 key!7122)))))

(declare-fun b!1858856 () Bool)

(assert (=> b!1858856 (= e!1187045 (= call!115600 call!115599))))

(declare-fun d!567178 () Bool)

(assert (=> d!567178 e!1187046))

(declare-fun res!832616 () Bool)

(assert (=> d!567178 (=> (not res!832616) (not e!1187046))))

(assert (=> d!567178 (= res!832616 ((_ is MutLongMapExt!1907) (_2!11365 lt!717341)))))

(declare-fun choose!11687 (MutLongMap!1908 (_ BitVec 64)) tuple2!19876)

(assert (=> d!567178 (= lt!717341 (choose!11687 thiss!47603 key!7122))))

(assert (=> d!567178 (valid!1535 thiss!47603)))

(assert (=> d!567178 (= (remove!58 thiss!47603 key!7122) lt!717341)))

(declare-fun b!1858857 () Bool)

(assert (=> b!1858857 (= e!1187046 e!1187045)))

(declare-fun c!302648 () Bool)

(assert (=> b!1858857 (= c!302648 (_1!11365 lt!717341))))

(declare-fun bm!115595 () Bool)

(assert (=> bm!115595 (= call!115600 (abstractMap!65 (_2!11365 lt!717341)))))

(assert (= (and d!567178 res!832616) b!1858854))

(assert (= (and b!1858854 res!832615) b!1858857))

(assert (= (and b!1858857 c!302648) b!1858855))

(assert (= (and b!1858857 (not c!302648)) b!1858856))

(assert (= (or b!1858855 b!1858856) bm!115594))

(assert (= (or b!1858855 b!1858856) bm!115595))

(declare-fun m!2282323 () Bool)

(assert (=> b!1858855 m!2282323))

(assert (=> bm!115594 m!2282309))

(declare-fun m!2282325 () Bool)

(assert (=> b!1858854 m!2282325))

(declare-fun m!2282327 () Bool)

(assert (=> bm!115595 m!2282327))

(declare-fun m!2282329 () Bool)

(assert (=> d!567178 m!2282329))

(assert (=> d!567178 m!2282313))

(assert (=> b!1858836 d!567178))

(declare-fun d!567180 () Bool)

(declare-fun lt!717344 () ListLongMap!217)

(declare-fun contains!3802 (ListLongMap!217 (_ BitVec 64)) Bool)

(assert (=> d!567180 (not (contains!3802 lt!717344 key!7122))))

(declare-fun removeStrictlySorted!2 (List!20692 (_ BitVec 64)) List!20692)

(assert (=> d!567180 (= lt!717344 (ListLongMap!218 (removeStrictlySorted!2 (toList!994 call!115593) key!7122)))))

(assert (=> d!567180 (= (-!102 call!115593 key!7122) lt!717344)))

(declare-fun bs!410756 () Bool)

(assert (= bs!410756 d!567180))

(declare-fun m!2282331 () Bool)

(assert (=> bs!410756 m!2282331))

(declare-fun m!2282333 () Bool)

(assert (=> bs!410756 m!2282333))

(assert (=> b!1858837 d!567180))

(declare-fun d!567182 () Bool)

(declare-fun c!302649 () Bool)

(assert (=> d!567182 (= c!302649 ((_ is LongMap!1908) thiss!47603))))

(declare-fun e!1187047 () Bool)

(assert (=> d!567182 (= (valid!1535 thiss!47603) e!1187047)))

(declare-fun b!1858858 () Bool)

(assert (=> b!1858858 (= e!1187047 (valid!1536 thiss!47603))))

(declare-fun b!1858859 () Bool)

(assert (=> b!1858859 (= e!1187047 (valid!1537 thiss!47603))))

(assert (= (and d!567182 c!302649) b!1858858))

(assert (= (and d!567182 (not c!302649)) b!1858859))

(declare-fun m!2282335 () Bool)

(assert (=> b!1858858 m!2282335))

(declare-fun m!2282337 () Bool)

(assert (=> b!1858859 m!2282337))

(assert (=> start!185550 d!567182))

(declare-fun d!567184 () Bool)

(assert (=> d!567184 (= (array_inv!2097 (_keys!2205 (v!26053 (underlying!4026 thiss!47603)))) (bvsge (size!16299 (_keys!2205 (v!26053 (underlying!4026 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858834 d!567184))

(declare-fun d!567186 () Bool)

(assert (=> d!567186 (= (array_inv!2098 (_values!2188 (v!26053 (underlying!4026 thiss!47603)))) (bvsge (size!16300 (_values!2188 (v!26053 (underlying!4026 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858834 d!567186))

(declare-fun d!567188 () Bool)

(declare-fun c!302652 () Bool)

(assert (=> d!567188 (= c!302652 ((_ is LongMap!1908) thiss!47603))))

(declare-fun e!1187050 () ListLongMap!217)

(assert (=> d!567188 (= (abstractMap!65 thiss!47603) e!1187050)))

(declare-fun b!1858864 () Bool)

(declare-fun abstractMap!66 (MutLongMap!1908) ListLongMap!217)

(assert (=> b!1858864 (= e!1187050 (abstractMap!66 thiss!47603))))

(declare-fun b!1858865 () Bool)

(declare-fun abstractMap!67 (MutLongMap!1908) ListLongMap!217)

(assert (=> b!1858865 (= e!1187050 (abstractMap!67 thiss!47603))))

(assert (= (and d!567188 c!302652) b!1858864))

(assert (= (and d!567188 (not c!302652)) b!1858865))

(declare-fun m!2282339 () Bool)

(assert (=> b!1858864 m!2282339))

(declare-fun m!2282341 () Bool)

(assert (=> b!1858865 m!2282341))

(assert (=> bm!115589 d!567188))

(declare-fun d!567190 () Bool)

(declare-fun c!302653 () Bool)

(assert (=> d!567190 (= c!302653 ((_ is LongMap!1908) (_2!11365 lt!717338)))))

(declare-fun e!1187051 () ListLongMap!217)

(assert (=> d!567190 (= (abstractMap!65 (_2!11365 lt!717338)) e!1187051)))

(declare-fun b!1858866 () Bool)

(assert (=> b!1858866 (= e!1187051 (abstractMap!66 (_2!11365 lt!717338)))))

(declare-fun b!1858867 () Bool)

(assert (=> b!1858867 (= e!1187051 (abstractMap!67 (_2!11365 lt!717338)))))

(assert (= (and d!567190 c!302653) b!1858866))

(assert (= (and d!567190 (not c!302653)) b!1858867))

(declare-fun m!2282343 () Bool)

(assert (=> b!1858866 m!2282343))

(declare-fun m!2282345 () Bool)

(assert (=> b!1858867 m!2282345))

(assert (=> bm!115588 d!567190))

(declare-fun condMapEmpty!8872 () Bool)

(declare-fun mapDefault!8872 () V!3888)

(assert (=> mapNonEmpty!8869 (= condMapEmpty!8872 (= mapRest!8869 ((as const (Array (_ BitVec 32) V!3888)) mapDefault!8872)))))

(declare-fun mapRes!8872 () Bool)

(assert (=> mapNonEmpty!8869 (= tp!529883 (and tp_is_empty!8583 mapRes!8872))))

(declare-fun mapIsEmpty!8872 () Bool)

(assert (=> mapIsEmpty!8872 mapRes!8872))

(declare-fun mapNonEmpty!8872 () Bool)

(declare-fun tp!529887 () Bool)

(assert (=> mapNonEmpty!8872 (= mapRes!8872 (and tp!529887 tp_is_empty!8583))))

(declare-fun mapValue!8872 () V!3888)

(declare-fun mapRest!8872 () (Array (_ BitVec 32) V!3888))

(declare-fun mapKey!8872 () (_ BitVec 32))

(assert (=> mapNonEmpty!8872 (= mapRest!8869 (store mapRest!8872 mapKey!8872 mapValue!8872))))

(assert (= (and mapNonEmpty!8869 condMapEmpty!8872) mapIsEmpty!8872))

(assert (= (and mapNonEmpty!8869 (not condMapEmpty!8872)) mapNonEmpty!8872))

(declare-fun m!2282347 () Bool)

(assert (=> mapNonEmpty!8872 m!2282347))

(check-sat (not b!1858854) (not b!1858865) (not b!1858859) (not b!1858844) (not b!1858858) (not b!1858845) (not b_next!52681) (not d!567180) (not d!567178) (not mapNonEmpty!8872) (not b!1858864) b_and!144245 tp_is_empty!8583 (not bm!115595) (not b!1858866) (not b!1858867) (not bm!115594) (not b!1858855))
(check-sat b_and!144245 (not b_next!52681))
