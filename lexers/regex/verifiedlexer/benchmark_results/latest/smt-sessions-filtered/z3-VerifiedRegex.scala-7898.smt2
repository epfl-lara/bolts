; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412428 () Bool)

(assert start!412428)

(declare-fun b!4296105 () Bool)

(declare-fun b_free!127783 () Bool)

(declare-fun b_next!128487 () Bool)

(assert (=> b!4296105 (= b_free!127783 (not b_next!128487))))

(declare-fun tp!1319373 () Bool)

(declare-fun b_and!338999 () Bool)

(assert (=> b!4296105 (= tp!1319373 b_and!338999)))

(declare-fun b!4296097 () Bool)

(declare-fun b_free!127785 () Bool)

(declare-fun b_next!128489 () Bool)

(assert (=> b!4296097 (= b_free!127785 (not b_next!128489))))

(declare-fun tp!1319369 () Bool)

(declare-fun b_and!339001 () Bool)

(assert (=> b!4296097 (= tp!1319369 b_and!339001)))

(declare-fun b!4296098 () Bool)

(assert (=> b!4296098 true))

(declare-fun setIsEmpty!26755 () Bool)

(declare-fun setRes!26755 () Bool)

(assert (=> setIsEmpty!26755 setRes!26755))

(declare-fun e!2669862 () Bool)

(declare-fun e!2669850 () Bool)

(assert (=> b!4296097 (= e!2669862 (and e!2669850 tp!1319369))))

(declare-fun b!4296099 () Bool)

(declare-fun e!2669857 () Bool)

(declare-fun tp!1319375 () Bool)

(assert (=> b!4296099 (= e!2669857 tp!1319375)))

(declare-fun e!2669861 () Bool)

(declare-datatypes ((C!26188 0))(
  ( (C!26189 (val!15420 Int)) )
))
(declare-datatypes ((Regex!12995 0))(
  ( (ElementMatch!12995 (c!730924 C!26188)) (Concat!21314 (regOne!26502 Regex!12995) (regTwo!26502 Regex!12995)) (EmptyExpr!12995) (Star!12995 (reg!13324 Regex!12995)) (EmptyLang!12995) (Union!12995 (regOne!26503 Regex!12995) (regTwo!26503 Regex!12995)) )
))
(declare-datatypes ((List!47974 0))(
  ( (Nil!47850) (Cons!47850 (h!53270 Regex!12995) (t!354581 List!47974)) )
))
(declare-datatypes ((Context!5770 0))(
  ( (Context!5771 (exprs!3385 List!47974)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45636 0))(
  ( (tuple2!45637 (_1!26097 (InoxSet Context!5770)) (_2!26097 Int)) )
))
(declare-datatypes ((tuple2!45638 0))(
  ( (tuple2!45639 (_1!26098 tuple2!45636) (_2!26098 Int)) )
))
(declare-datatypes ((List!47975 0))(
  ( (Nil!47851) (Cons!47851 (h!53271 tuple2!45638) (t!354582 List!47975)) )
))
(declare-datatypes ((array!15976 0))(
  ( (array!15977 (arr!7139 (Array (_ BitVec 32) (_ BitVec 64))) (size!35156 (_ BitVec 32))) )
))
(declare-datatypes ((array!15978 0))(
  ( (array!15979 (arr!7140 (Array (_ BitVec 32) List!47975)) (size!35157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8954 0))(
  ( (LongMapFixedSize!8955 (defaultEntry!4862 Int) (mask!12944 (_ BitVec 32)) (extraKeys!4726 (_ BitVec 32)) (zeroValue!4736 List!47975) (minValue!4736 List!47975) (_size!8997 (_ BitVec 32)) (_keys!4777 array!15976) (_values!4758 array!15978) (_vacant!4538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17717 0))(
  ( (Cell!17718 (v!41789 LongMapFixedSize!8954)) )
))
(declare-datatypes ((MutLongMap!4477 0))(
  ( (LongMap!4477 (underlying!9183 Cell!17717)) (MutLongMapExt!4476 (__x!29456 Int)) )
))
(declare-datatypes ((Cell!17719 0))(
  ( (Cell!17720 (v!41790 MutLongMap!4477)) )
))
(declare-datatypes ((Hashable!4393 0))(
  ( (HashableExt!4392 (__x!29457 Int)) )
))
(declare-datatypes ((MutableMap!4383 0))(
  ( (MutableMapExt!4382 (__x!29458 Int)) (HashMap!4383 (underlying!9184 Cell!17719) (hashF!6425 Hashable!4393) (_size!8998 (_ BitVec 32)) (defaultValue!4554 Int)) )
))
(declare-datatypes ((List!47976 0))(
  ( (Nil!47852) (Cons!47852 (h!53272 C!26188) (t!354583 List!47976)) )
))
(declare-datatypes ((IArray!28933 0))(
  ( (IArray!28934 (innerList!14524 List!47976)) )
))
(declare-datatypes ((Conc!14436 0))(
  ( (Node!14436 (left!35492 Conc!14436) (right!35822 Conc!14436) (csize!29102 Int) (cheight!14647 Int)) (Leaf!22335 (xs!17742 IArray!28933) (csize!29103 Int)) (Empty!14436) )
))
(declare-datatypes ((BalanceConc!28362 0))(
  ( (BalanceConc!28363 (c!730925 Conc!14436)) )
))
(declare-datatypes ((CacheFindLongestMatch!560 0))(
  ( (CacheFindLongestMatch!561 (cache!4523 MutableMap!4383) (totalInput!4412 BalanceConc!28362)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!560)

(declare-fun b!4296100 () Bool)

(declare-fun e!2669853 () Bool)

(declare-fun inv!63401 (BalanceConc!28362) Bool)

(assert (=> b!4296100 (= e!2669853 (and e!2669862 (inv!63401 (totalInput!4412 thiss!29019)) e!2669861))))

(declare-fun setElem!26755 () Context!5770)

(declare-fun setNonEmpty!26755 () Bool)

(declare-fun tp!1319370 () Bool)

(declare-fun inv!63402 (Context!5770) Bool)

(assert (=> setNonEmpty!26755 (= setRes!26755 (and tp!1319370 (inv!63402 setElem!26755) e!2669857))))

(declare-fun z!500 () (InoxSet Context!5770))

(declare-fun setRest!26755 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26755 (= z!500 ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26755 true) setRest!26755))))

(declare-fun b!4296101 () Bool)

(declare-fun e!2669856 () Bool)

(declare-fun tp!1319371 () Bool)

(declare-fun mapRes!20121 () Bool)

(assert (=> b!4296101 (= e!2669856 (and tp!1319371 mapRes!20121))))

(declare-fun condMapEmpty!20121 () Bool)

(declare-fun mapDefault!20121 () List!47975)

(assert (=> b!4296101 (= condMapEmpty!20121 (= (arr!7140 (_values!4758 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47975)) mapDefault!20121)))))

(declare-fun b!4296102 () Bool)

(declare-fun e!2669859 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28362)

(declare-fun tp!1319377 () Bool)

(declare-fun inv!63403 (Conc!14436) Bool)

(assert (=> b!4296102 (= e!2669859 (and (inv!63403 (c!730925 localTotalInput!12)) tp!1319377))))

(declare-fun mapIsEmpty!20121 () Bool)

(assert (=> mapIsEmpty!20121 mapRes!20121))

(declare-fun b!4296103 () Bool)

(declare-fun tp!1319372 () Bool)

(assert (=> b!4296103 (= e!2669861 (and (inv!63403 (c!730925 (totalInput!4412 thiss!29019))) tp!1319372))))

(declare-fun b!4296104 () Bool)

(declare-fun e!2669858 () Bool)

(declare-fun e!2669855 () Bool)

(assert (=> b!4296104 (= e!2669858 e!2669855)))

(declare-fun res!1760900 () Bool)

(assert (=> b!4296104 (=> (not res!1760900) (not e!2669855))))

(declare-fun from!940 () Int)

(declare-fun lt!1518398 () Int)

(assert (=> b!4296104 (= res!1760900 (<= from!940 lt!1518398))))

(declare-fun size!35158 (BalanceConc!28362) Int)

(assert (=> b!4296104 (= lt!1518398 (size!35158 (totalInput!4412 thiss!29019)))))

(declare-fun e!2669860 () Bool)

(declare-fun tp!1319367 () Bool)

(declare-fun tp!1319376 () Bool)

(declare-fun array_inv!5117 (array!15976) Bool)

(declare-fun array_inv!5118 (array!15978) Bool)

(assert (=> b!4296105 (= e!2669860 (and tp!1319373 tp!1319376 tp!1319367 (array_inv!5117 (_keys!4777 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) (array_inv!5118 (_values!4758 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) e!2669856))))

(declare-fun b!4296106 () Bool)

(declare-fun res!1760899 () Bool)

(assert (=> b!4296106 (=> (not res!1760899) (not e!2669858))))

(assert (=> b!4296106 (= res!1760899 (>= from!940 0))))

(declare-fun b!4296107 () Bool)

(declare-fun res!1760902 () Bool)

(assert (=> b!4296107 (=> (not res!1760902) (not e!2669858))))

(declare-fun validCacheMapFindLongestMatch!90 (MutableMap!4383 BalanceConc!28362) Bool)

(assert (=> b!4296107 (= res!1760902 (validCacheMapFindLongestMatch!90 (cache!4523 thiss!29019) (totalInput!4412 thiss!29019)))))

(declare-fun res!1760898 () Bool)

(assert (=> start!412428 (=> (not res!1760898) (not e!2669858))))

(assert (=> start!412428 (= res!1760898 (= localTotalInput!12 (totalInput!4412 thiss!29019)))))

(assert (=> start!412428 e!2669858))

(declare-fun condSetEmpty!26755 () Bool)

(assert (=> start!412428 (= condSetEmpty!26755 (= z!500 ((as const (Array Context!5770 Bool)) false)))))

(assert (=> start!412428 setRes!26755))

(assert (=> start!412428 true))

(declare-fun inv!63404 (CacheFindLongestMatch!560) Bool)

(assert (=> start!412428 (and (inv!63404 thiss!29019) e!2669853)))

(assert (=> start!412428 (and (inv!63401 localTotalInput!12) e!2669859)))

(declare-datatypes ((tuple2!45640 0))(
  ( (tuple2!45641 (_1!26099 Bool) (_2!26099 MutableMap!4383)) )
))
(declare-fun lt!1518399 () tuple2!45640)

(get-info :version)

(assert (=> b!4296098 (= e!2669855 (not ((_ is HashMap!4383) (_2!26099 lt!1518399))))))

(declare-fun lambda!131719 () Int)

(declare-fun forall!8573 (List!47975 Int) Bool)

(declare-datatypes ((ListMap!1403 0))(
  ( (ListMap!1404 (toList!2140 List!47975)) )
))
(declare-fun map!9824 (MutableMap!4383) ListMap!1403)

(assert (=> b!4296098 (forall!8573 (toList!2140 (map!9824 (_2!26099 lt!1518399))) lambda!131719)))

(declare-fun lt!1518395 () tuple2!45636)

(declare-fun res!14399 () Int)

(declare-fun update!292 (MutableMap!4383 tuple2!45636 Int) tuple2!45640)

(assert (=> b!4296098 (= lt!1518399 (update!292 (cache!4523 thiss!29019) lt!1518395 res!14399))))

(declare-datatypes ((Unit!66481 0))(
  ( (Unit!66482) )
))
(declare-fun lt!1518397 () Unit!66481)

(declare-fun lemmaUpdatePreservesForallPairs!42 (MutableMap!4383 tuple2!45636 Int Int) Unit!66481)

(assert (=> b!4296098 (= lt!1518397 (lemmaUpdatePreservesForallPairs!42 (cache!4523 thiss!29019) lt!1518395 res!14399 lambda!131719))))

(assert (=> b!4296098 (= lt!1518395 (tuple2!45637 z!500 from!940))))

(declare-fun b!4296108 () Bool)

(declare-fun e!2669854 () Bool)

(declare-fun lt!1518396 () MutLongMap!4477)

(assert (=> b!4296108 (= e!2669850 (and e!2669854 ((_ is LongMap!4477) lt!1518396)))))

(assert (=> b!4296108 (= lt!1518396 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))

(declare-fun b!4296109 () Bool)

(declare-fun e!2669852 () Bool)

(assert (=> b!4296109 (= e!2669854 e!2669852)))

(declare-fun b!4296110 () Bool)

(assert (=> b!4296110 (= e!2669852 e!2669860)))

(declare-fun mapNonEmpty!20121 () Bool)

(declare-fun tp!1319374 () Bool)

(declare-fun tp!1319368 () Bool)

(assert (=> mapNonEmpty!20121 (= mapRes!20121 (and tp!1319374 tp!1319368))))

(declare-fun mapRest!20121 () (Array (_ BitVec 32) List!47975))

(declare-fun mapKey!20121 () (_ BitVec 32))

(declare-fun mapValue!20121 () List!47975)

(assert (=> mapNonEmpty!20121 (= (arr!7140 (_values!4758 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) (store mapRest!20121 mapKey!20121 mapValue!20121))))

(declare-fun b!4296111 () Bool)

(declare-fun res!1760901 () Bool)

(assert (=> b!4296111 (=> (not res!1760901) (not e!2669855))))

(declare-fun findLongestMatchInnerZipperFastV2!49 ((InoxSet Context!5770) Int BalanceConc!28362 Int) Int)

(assert (=> b!4296111 (= res!1760901 (= res!14399 (findLongestMatchInnerZipperFastV2!49 z!500 from!940 (totalInput!4412 thiss!29019) lt!1518398)))))

(assert (= (and start!412428 res!1760898) b!4296107))

(assert (= (and b!4296107 res!1760902) b!4296106))

(assert (= (and b!4296106 res!1760899) b!4296104))

(assert (= (and b!4296104 res!1760900) b!4296111))

(assert (= (and b!4296111 res!1760901) b!4296098))

(assert (= (and start!412428 condSetEmpty!26755) setIsEmpty!26755))

(assert (= (and start!412428 (not condSetEmpty!26755)) setNonEmpty!26755))

(assert (= setNonEmpty!26755 b!4296099))

(assert (= (and b!4296101 condMapEmpty!20121) mapIsEmpty!20121))

(assert (= (and b!4296101 (not condMapEmpty!20121)) mapNonEmpty!20121))

(assert (= b!4296105 b!4296101))

(assert (= b!4296110 b!4296105))

(assert (= b!4296109 b!4296110))

(assert (= (and b!4296108 ((_ is LongMap!4477) (v!41790 (underlying!9184 (cache!4523 thiss!29019))))) b!4296109))

(assert (= b!4296097 b!4296108))

(assert (= (and b!4296100 ((_ is HashMap!4383) (cache!4523 thiss!29019))) b!4296097))

(assert (= b!4296100 b!4296103))

(assert (= start!412428 b!4296100))

(assert (= start!412428 b!4296102))

(declare-fun m!4888553 () Bool)

(assert (=> b!4296100 m!4888553))

(declare-fun m!4888555 () Bool)

(assert (=> b!4296111 m!4888555))

(declare-fun m!4888557 () Bool)

(assert (=> b!4296098 m!4888557))

(declare-fun m!4888559 () Bool)

(assert (=> b!4296098 m!4888559))

(declare-fun m!4888561 () Bool)

(assert (=> b!4296098 m!4888561))

(declare-fun m!4888563 () Bool)

(assert (=> b!4296098 m!4888563))

(declare-fun m!4888565 () Bool)

(assert (=> b!4296107 m!4888565))

(declare-fun m!4888567 () Bool)

(assert (=> b!4296102 m!4888567))

(declare-fun m!4888569 () Bool)

(assert (=> start!412428 m!4888569))

(declare-fun m!4888571 () Bool)

(assert (=> start!412428 m!4888571))

(declare-fun m!4888573 () Bool)

(assert (=> mapNonEmpty!20121 m!4888573))

(declare-fun m!4888575 () Bool)

(assert (=> b!4296104 m!4888575))

(declare-fun m!4888577 () Bool)

(assert (=> setNonEmpty!26755 m!4888577))

(declare-fun m!4888579 () Bool)

(assert (=> b!4296105 m!4888579))

(declare-fun m!4888581 () Bool)

(assert (=> b!4296105 m!4888581))

(declare-fun m!4888583 () Bool)

(assert (=> b!4296103 m!4888583))

(check-sat (not b!4296099) (not b_next!128487) (not b!4296111) (not b!4296103) (not b!4296104) (not mapNonEmpty!20121) (not setNonEmpty!26755) (not b_next!128489) (not b!4296105) b_and!338999 (not b!4296100) (not b!4296102) (not b!4296098) (not b!4296101) (not b!4296107) b_and!339001 (not start!412428))
(check-sat b_and!339001 b_and!338999 (not b_next!128489) (not b_next!128487))
(get-model)

(declare-fun d!1266141 () Bool)

(declare-fun isBalanced!3891 (Conc!14436) Bool)

(assert (=> d!1266141 (= (inv!63401 (totalInput!4412 thiss!29019)) (isBalanced!3891 (c!730925 (totalInput!4412 thiss!29019))))))

(declare-fun bs!603799 () Bool)

(assert (= bs!603799 d!1266141))

(declare-fun m!4888585 () Bool)

(assert (=> bs!603799 m!4888585))

(assert (=> b!4296100 d!1266141))

(declare-fun d!1266143 () Bool)

(declare-fun c!730928 () Bool)

(assert (=> d!1266143 (= c!730928 ((_ is Node!14436) (c!730925 (totalInput!4412 thiss!29019))))))

(declare-fun e!2669867 () Bool)

(assert (=> d!1266143 (= (inv!63403 (c!730925 (totalInput!4412 thiss!29019))) e!2669867)))

(declare-fun b!4296120 () Bool)

(declare-fun inv!63405 (Conc!14436) Bool)

(assert (=> b!4296120 (= e!2669867 (inv!63405 (c!730925 (totalInput!4412 thiss!29019))))))

(declare-fun b!4296121 () Bool)

(declare-fun e!2669868 () Bool)

(assert (=> b!4296121 (= e!2669867 e!2669868)))

(declare-fun res!1760905 () Bool)

(assert (=> b!4296121 (= res!1760905 (not ((_ is Leaf!22335) (c!730925 (totalInput!4412 thiss!29019)))))))

(assert (=> b!4296121 (=> res!1760905 e!2669868)))

(declare-fun b!4296122 () Bool)

(declare-fun inv!63406 (Conc!14436) Bool)

(assert (=> b!4296122 (= e!2669868 (inv!63406 (c!730925 (totalInput!4412 thiss!29019))))))

(assert (= (and d!1266143 c!730928) b!4296120))

(assert (= (and d!1266143 (not c!730928)) b!4296121))

(assert (= (and b!4296121 (not res!1760905)) b!4296122))

(declare-fun m!4888587 () Bool)

(assert (=> b!4296120 m!4888587))

(declare-fun m!4888589 () Bool)

(assert (=> b!4296122 m!4888589))

(assert (=> b!4296103 d!1266143))

(declare-fun d!1266145 () Bool)

(declare-fun lambda!131722 () Int)

(declare-fun forall!8574 (List!47974 Int) Bool)

(assert (=> d!1266145 (= (inv!63402 setElem!26755) (forall!8574 (exprs!3385 setElem!26755) lambda!131722))))

(declare-fun bs!603800 () Bool)

(assert (= bs!603800 d!1266145))

(declare-fun m!4888591 () Bool)

(assert (=> bs!603800 m!4888591))

(assert (=> setNonEmpty!26755 d!1266145))

(declare-fun d!1266147 () Bool)

(declare-fun lt!1518402 () Int)

(declare-fun size!35159 (List!47976) Int)

(declare-fun list!17368 (BalanceConc!28362) List!47976)

(assert (=> d!1266147 (= lt!1518402 (size!35159 (list!17368 (totalInput!4412 thiss!29019))))))

(declare-fun size!35160 (Conc!14436) Int)

(assert (=> d!1266147 (= lt!1518402 (size!35160 (c!730925 (totalInput!4412 thiss!29019))))))

(assert (=> d!1266147 (= (size!35158 (totalInput!4412 thiss!29019)) lt!1518402)))

(declare-fun bs!603801 () Bool)

(assert (= bs!603801 d!1266147))

(declare-fun m!4888593 () Bool)

(assert (=> bs!603801 m!4888593))

(assert (=> bs!603801 m!4888593))

(declare-fun m!4888595 () Bool)

(assert (=> bs!603801 m!4888595))

(declare-fun m!4888597 () Bool)

(assert (=> bs!603801 m!4888597))

(assert (=> b!4296104 d!1266147))

(declare-fun d!1266149 () Bool)

(declare-fun res!1760908 () Bool)

(declare-fun e!2669871 () Bool)

(assert (=> d!1266149 (=> (not res!1760908) (not e!2669871))))

(assert (=> d!1266149 (= res!1760908 ((_ is HashMap!4383) (cache!4523 thiss!29019)))))

(assert (=> d!1266149 (= (inv!63404 thiss!29019) e!2669871)))

(declare-fun b!4296125 () Bool)

(assert (=> b!4296125 (= e!2669871 (validCacheMapFindLongestMatch!90 (cache!4523 thiss!29019) (totalInput!4412 thiss!29019)))))

(assert (= (and d!1266149 res!1760908) b!4296125))

(assert (=> b!4296125 m!4888565))

(assert (=> start!412428 d!1266149))

(declare-fun d!1266151 () Bool)

(assert (=> d!1266151 (= (inv!63401 localTotalInput!12) (isBalanced!3891 (c!730925 localTotalInput!12)))))

(declare-fun bs!603802 () Bool)

(assert (= bs!603802 d!1266151))

(declare-fun m!4888599 () Bool)

(assert (=> bs!603802 m!4888599))

(assert (=> start!412428 d!1266151))

(declare-fun d!1266153 () Bool)

(assert (=> d!1266153 (= (array_inv!5117 (_keys!4777 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) (bvsge (size!35156 (_keys!4777 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296105 d!1266153))

(declare-fun d!1266155 () Bool)

(assert (=> d!1266155 (= (array_inv!5118 (_values!4758 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) (bvsge (size!35157 (_values!4758 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296105 d!1266155))

(declare-fun bs!603803 () Bool)

(declare-fun b!4296131 () Bool)

(assert (= bs!603803 (and b!4296131 b!4296098)))

(declare-fun lambda!131725 () Int)

(assert (=> bs!603803 (= (= (totalInput!4412 thiss!29019) localTotalInput!12) (= lambda!131725 lambda!131719))))

(assert (=> b!4296131 true))

(declare-fun d!1266157 () Bool)

(declare-fun res!1760913 () Bool)

(declare-fun e!2669874 () Bool)

(assert (=> d!1266157 (=> (not res!1760913) (not e!2669874))))

(declare-fun valid!3454 (MutableMap!4383) Bool)

(assert (=> d!1266157 (= res!1760913 (valid!3454 (cache!4523 thiss!29019)))))

(assert (=> d!1266157 (= (validCacheMapFindLongestMatch!90 (cache!4523 thiss!29019) (totalInput!4412 thiss!29019)) e!2669874)))

(declare-fun b!4296130 () Bool)

(declare-fun res!1760914 () Bool)

(assert (=> b!4296130 (=> (not res!1760914) (not e!2669874))))

(declare-fun invariantList!519 (List!47975) Bool)

(assert (=> b!4296130 (= res!1760914 (invariantList!519 (toList!2140 (map!9824 (cache!4523 thiss!29019)))))))

(assert (=> b!4296131 (= e!2669874 (forall!8573 (toList!2140 (map!9824 (cache!4523 thiss!29019))) lambda!131725))))

(assert (= (and d!1266157 res!1760913) b!4296130))

(assert (= (and b!4296130 res!1760914) b!4296131))

(declare-fun m!4888602 () Bool)

(assert (=> d!1266157 m!4888602))

(declare-fun m!4888604 () Bool)

(assert (=> b!4296130 m!4888604))

(declare-fun m!4888606 () Bool)

(assert (=> b!4296130 m!4888606))

(assert (=> b!4296131 m!4888604))

(declare-fun m!4888608 () Bool)

(assert (=> b!4296131 m!4888608))

(assert (=> b!4296107 d!1266157))

(declare-fun b!4296148 () Bool)

(declare-fun e!2669889 () Bool)

(assert (=> b!4296148 (= e!2669889 (<= from!940 (size!35158 (totalInput!4412 thiss!29019))))))

(declare-fun b!4296149 () Bool)

(declare-fun e!2669885 () Int)

(assert (=> b!4296149 (= e!2669885 0)))

(declare-fun b!4296150 () Bool)

(declare-fun e!2669887 () Int)

(declare-fun lt!1518411 () Int)

(assert (=> b!4296150 (= e!2669887 (+ 1 lt!1518411))))

(declare-fun d!1266159 () Bool)

(declare-fun lt!1518409 () Int)

(assert (=> d!1266159 (and (>= lt!1518409 0) (<= lt!1518409 (- lt!1518398 from!940)))))

(assert (=> d!1266159 (= lt!1518409 e!2669885)))

(declare-fun c!730937 () Bool)

(declare-fun e!2669888 () Bool)

(assert (=> d!1266159 (= c!730937 e!2669888)))

(declare-fun res!1760919 () Bool)

(assert (=> d!1266159 (=> res!1760919 e!2669888)))

(assert (=> d!1266159 (= res!1760919 (= from!940 lt!1518398))))

(assert (=> d!1266159 e!2669889))

(declare-fun res!1760920 () Bool)

(assert (=> d!1266159 (=> (not res!1760920) (not e!2669889))))

(assert (=> d!1266159 (= res!1760920 (>= from!940 0))))

(assert (=> d!1266159 (= (findLongestMatchInnerZipperFastV2!49 z!500 from!940 (totalInput!4412 thiss!29019) lt!1518398) lt!1518409)))

(declare-fun b!4296151 () Bool)

(assert (=> b!4296151 (= e!2669885 e!2669887)))

(declare-fun lt!1518410 () (InoxSet Context!5770))

(declare-fun derivationStepZipper!555 ((InoxSet Context!5770) C!26188) (InoxSet Context!5770))

(declare-fun apply!10856 (BalanceConc!28362 Int) C!26188)

(assert (=> b!4296151 (= lt!1518410 (derivationStepZipper!555 z!500 (apply!10856 (totalInput!4412 thiss!29019) from!940)))))

(assert (=> b!4296151 (= lt!1518411 (findLongestMatchInnerZipperFastV2!49 lt!1518410 (+ from!940 1) (totalInput!4412 thiss!29019) lt!1518398))))

(declare-fun c!730936 () Bool)

(assert (=> b!4296151 (= c!730936 (> lt!1518411 0))))

(declare-fun b!4296152 () Bool)

(declare-fun c!730935 () Bool)

(declare-fun nullableZipper!778 ((InoxSet Context!5770)) Bool)

(assert (=> b!4296152 (= c!730935 (nullableZipper!778 lt!1518410))))

(declare-fun e!2669886 () Int)

(assert (=> b!4296152 (= e!2669887 e!2669886)))

(declare-fun b!4296153 () Bool)

(assert (=> b!4296153 (= e!2669886 0)))

(declare-fun b!4296154 () Bool)

(assert (=> b!4296154 (= e!2669886 1)))

(declare-fun b!4296155 () Bool)

(declare-fun lostCauseZipper!658 ((InoxSet Context!5770)) Bool)

(assert (=> b!4296155 (= e!2669888 (lostCauseZipper!658 z!500))))

(assert (= (and d!1266159 res!1760920) b!4296148))

(assert (= (and d!1266159 (not res!1760919)) b!4296155))

(assert (= (and d!1266159 c!730937) b!4296149))

(assert (= (and d!1266159 (not c!730937)) b!4296151))

(assert (= (and b!4296151 c!730936) b!4296150))

(assert (= (and b!4296151 (not c!730936)) b!4296152))

(assert (= (and b!4296152 c!730935) b!4296154))

(assert (= (and b!4296152 (not c!730935)) b!4296153))

(assert (=> b!4296148 m!4888575))

(declare-fun m!4888610 () Bool)

(assert (=> b!4296151 m!4888610))

(assert (=> b!4296151 m!4888610))

(declare-fun m!4888612 () Bool)

(assert (=> b!4296151 m!4888612))

(declare-fun m!4888614 () Bool)

(assert (=> b!4296151 m!4888614))

(declare-fun m!4888616 () Bool)

(assert (=> b!4296152 m!4888616))

(declare-fun m!4888618 () Bool)

(assert (=> b!4296155 m!4888618))

(assert (=> b!4296111 d!1266159))

(declare-fun d!1266161 () Bool)

(declare-fun res!1760925 () Bool)

(declare-fun e!2669894 () Bool)

(assert (=> d!1266161 (=> res!1760925 e!2669894)))

(assert (=> d!1266161 (= res!1760925 ((_ is Nil!47851) (toList!2140 (map!9824 (_2!26099 lt!1518399)))))))

(assert (=> d!1266161 (= (forall!8573 (toList!2140 (map!9824 (_2!26099 lt!1518399))) lambda!131719) e!2669894)))

(declare-fun b!4296160 () Bool)

(declare-fun e!2669895 () Bool)

(assert (=> b!4296160 (= e!2669894 e!2669895)))

(declare-fun res!1760926 () Bool)

(assert (=> b!4296160 (=> (not res!1760926) (not e!2669895))))

(declare-fun dynLambda!20330 (Int tuple2!45638) Bool)

(assert (=> b!4296160 (= res!1760926 (dynLambda!20330 lambda!131719 (h!53271 (toList!2140 (map!9824 (_2!26099 lt!1518399))))))))

(declare-fun b!4296161 () Bool)

(assert (=> b!4296161 (= e!2669895 (forall!8573 (t!354582 (toList!2140 (map!9824 (_2!26099 lt!1518399)))) lambda!131719))))

(assert (= (and d!1266161 (not res!1760925)) b!4296160))

(assert (= (and b!4296160 res!1760926) b!4296161))

(declare-fun b_lambda!126129 () Bool)

(assert (=> (not b_lambda!126129) (not b!4296160)))

(declare-fun m!4888620 () Bool)

(assert (=> b!4296160 m!4888620))

(declare-fun m!4888622 () Bool)

(assert (=> b!4296161 m!4888622))

(assert (=> b!4296098 d!1266161))

(declare-fun d!1266163 () Bool)

(declare-fun lt!1518414 () ListMap!1403)

(assert (=> d!1266163 (invariantList!519 (toList!2140 lt!1518414))))

(declare-datatypes ((tuple2!45642 0))(
  ( (tuple2!45643 (_1!26100 (_ BitVec 64)) (_2!26100 List!47975)) )
))
(declare-datatypes ((List!47977 0))(
  ( (Nil!47853) (Cons!47853 (h!53273 tuple2!45642) (t!354584 List!47977)) )
))
(declare-fun extractMap!255 (List!47977) ListMap!1403)

(declare-datatypes ((ListLongMap!771 0))(
  ( (ListLongMap!772 (toList!2141 List!47977)) )
))
(declare-fun map!9825 (MutLongMap!4477) ListLongMap!771)

(assert (=> d!1266163 (= lt!1518414 (extractMap!255 (toList!2141 (map!9825 (v!41790 (underlying!9184 (_2!26099 lt!1518399)))))))))

(assert (=> d!1266163 (valid!3454 (_2!26099 lt!1518399))))

(assert (=> d!1266163 (= (map!9824 (_2!26099 lt!1518399)) lt!1518414)))

(declare-fun bs!603804 () Bool)

(assert (= bs!603804 d!1266163))

(declare-fun m!4888624 () Bool)

(assert (=> bs!603804 m!4888624))

(declare-fun m!4888626 () Bool)

(assert (=> bs!603804 m!4888626))

(declare-fun m!4888628 () Bool)

(assert (=> bs!603804 m!4888628))

(declare-fun m!4888630 () Bool)

(assert (=> bs!603804 m!4888630))

(assert (=> b!4296098 d!1266163))

(declare-fun bs!603805 () Bool)

(declare-fun b!4296208 () Bool)

(declare-fun b!4296211 () Bool)

(assert (= bs!603805 (and b!4296208 b!4296211)))

(declare-fun lambda!131735 () Int)

(declare-fun lambda!131734 () Int)

(assert (=> bs!603805 (= lambda!131735 lambda!131734)))

(declare-fun b!4296200 () Bool)

(declare-fun e!2669921 () List!47975)

(assert (=> b!4296200 (= e!2669921 Nil!47851)))

(declare-fun b!4296201 () Bool)

(declare-fun e!2669918 () Bool)

(declare-fun call!294780 () Bool)

(assert (=> b!4296201 (= e!2669918 call!294780)))

(declare-fun call!294809 () List!47975)

(declare-fun call!294799 () Bool)

(declare-fun c!730954 () Bool)

(declare-fun lt!1518528 () (_ BitVec 64))

(declare-fun bm!294775 () Bool)

(declare-fun lt!1518530 () (_ BitVec 64))

(declare-fun allKeysSameHash!109 (List!47975 (_ BitVec 64) Hashable!4393) Bool)

(assert (=> bm!294775 (= call!294799 (allKeysSameHash!109 call!294809 (ite c!730954 lt!1518530 lt!1518528) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun d!1266165 () Bool)

(declare-fun e!2669927 () Bool)

(assert (=> d!1266165 e!2669927))

(declare-fun res!1760941 () Bool)

(assert (=> d!1266165 (=> (not res!1760941) (not e!2669927))))

(declare-fun lt!1518567 () tuple2!45640)

(assert (=> d!1266165 (= res!1760941 ((_ is HashMap!4383) (_2!26099 lt!1518567)))))

(declare-fun lt!1518558 () tuple2!45640)

(assert (=> d!1266165 (= lt!1518567 (tuple2!45641 (_1!26099 lt!1518558) (_2!26099 lt!1518558)))))

(declare-fun e!2669926 () tuple2!45640)

(assert (=> d!1266165 (= lt!1518558 e!2669926)))

(declare-fun contains!9802 (MutableMap!4383 tuple2!45636) Bool)

(assert (=> d!1266165 (= c!730954 (contains!9802 (cache!4523 thiss!29019) lt!1518395))))

(declare-fun lt!1518552 () ListLongMap!771)

(assert (=> d!1266165 (= lt!1518552 (map!9825 (v!41790 (underlying!9184 (cache!4523 thiss!29019)))))))

(declare-fun lt!1518555 () ListMap!1403)

(assert (=> d!1266165 (= lt!1518555 (map!9824 (cache!4523 thiss!29019)))))

(assert (=> d!1266165 (valid!3454 (cache!4523 thiss!29019))))

(assert (=> d!1266165 (= (update!292 (cache!4523 thiss!29019) lt!1518395 res!14399) lt!1518567)))

(declare-fun call!294808 () ListMap!1403)

(declare-fun bm!294776 () Bool)

(declare-fun call!294807 () Bool)

(declare-fun lt!1518571 () ListMap!1403)

(declare-fun contains!9803 (ListMap!1403 tuple2!45636) Bool)

(assert (=> bm!294776 (= call!294807 (contains!9803 (ite c!730954 lt!1518571 call!294808) lt!1518395))))

(declare-fun bm!294777 () Bool)

(declare-fun call!294803 () ListMap!1403)

(assert (=> bm!294777 (= call!294803 (map!9824 (cache!4523 thiss!29019)))))

(declare-fun call!294797 () ListMap!1403)

(declare-fun bm!294778 () Bool)

(declare-fun +!133 (ListMap!1403 tuple2!45638) ListMap!1403)

(assert (=> bm!294778 (= call!294797 (+!133 lt!1518555 (tuple2!45639 lt!1518395 res!14399)))))

(declare-fun b!4296202 () Bool)

(declare-fun res!1760938 () Bool)

(assert (=> b!4296202 (=> (not res!1760938) (not e!2669927))))

(assert (=> b!4296202 (= res!1760938 (valid!3454 (_2!26099 lt!1518567)))))

(declare-fun lt!1518549 () List!47975)

(declare-fun lt!1518534 () List!47975)

(declare-fun call!294794 () Unit!66481)

(declare-fun bm!294779 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!96 (List!47975 tuple2!45636 (_ BitVec 64) Hashable!4393) Unit!66481)

(assert (=> bm!294779 (= call!294794 (lemmaRemovePairForKeyPreservesHash!96 (ite c!730954 lt!1518549 lt!1518534) lt!1518395 (ite c!730954 lt!1518530 lt!1518528) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun bm!294780 () Bool)

(declare-fun call!294783 () ListMap!1403)

(assert (=> bm!294780 (= call!294783 (extractMap!255 (toList!2141 lt!1518552)))))

(declare-fun bm!294781 () Bool)

(declare-fun call!294798 () Bool)

(declare-fun call!294782 () ListLongMap!771)

(declare-fun allKeysSameHashInMap!254 (ListLongMap!771 Hashable!4393) Bool)

(assert (=> bm!294781 (= call!294798 (allKeysSameHashInMap!254 call!294782 (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun call!294804 () ListMap!1403)

(declare-fun lt!1518564 () MutableMap!4383)

(declare-fun lt!1518553 () MutableMap!4383)

(declare-fun bm!294782 () Bool)

(assert (=> bm!294782 (= call!294804 (map!9824 (ite c!730954 lt!1518564 lt!1518553)))))

(declare-fun bm!294783 () Bool)

(declare-fun call!294781 () (_ BitVec 64))

(declare-fun hash!825 (Hashable!4393 tuple2!45636) (_ BitVec 64))

(assert (=> bm!294783 (= call!294781 (hash!825 (hashF!6425 (cache!4523 thiss!29019)) lt!1518395))))

(declare-fun bm!294784 () Bool)

(declare-fun call!294791 () ListMap!1403)

(assert (=> bm!294784 (= call!294791 (map!9824 (_2!26099 lt!1518567)))))

(declare-fun b!4296203 () Bool)

(declare-fun e!2669922 () Unit!66481)

(declare-fun Unit!66483 () Unit!66481)

(assert (=> b!4296203 (= e!2669922 Unit!66483)))

(declare-fun bm!294785 () Bool)

(declare-fun lt!1518557 () ListMap!1403)

(declare-fun lt!1518560 () ListMap!1403)

(declare-fun call!294795 () Bool)

(assert (=> bm!294785 (= call!294795 (contains!9803 (ite c!730954 lt!1518557 lt!1518560) lt!1518395))))

(declare-fun bm!294786 () Bool)

(declare-fun call!294784 () List!47975)

(declare-fun apply!10857 (MutLongMap!4477 (_ BitVec 64)) List!47975)

(assert (=> bm!294786 (= call!294784 (apply!10857 (v!41790 (underlying!9184 (cache!4523 thiss!29019))) (ite c!730954 lt!1518530 lt!1518528)))))

(declare-fun b!4296204 () Bool)

(declare-fun e!2669925 () Bool)

(assert (=> b!4296204 (= e!2669925 call!294780)))

(declare-fun b!4296205 () Bool)

(assert (=> b!4296205 (= e!2669918 e!2669925)))

(declare-fun res!1760940 () Bool)

(assert (=> b!4296205 (= res!1760940 (contains!9803 call!294791 lt!1518395))))

(assert (=> b!4296205 (=> (not res!1760940) (not e!2669925))))

(declare-fun lt!1518566 () List!47975)

(declare-fun bm!294787 () Bool)

(declare-fun call!294790 () ListLongMap!771)

(declare-fun lt!1518538 () List!47975)

(declare-fun +!134 (ListLongMap!771 tuple2!45642) ListLongMap!771)

(assert (=> bm!294787 (= call!294790 (+!134 lt!1518552 (ite c!730954 (tuple2!45643 lt!1518530 lt!1518538) (tuple2!45643 lt!1518528 lt!1518566))))))

(declare-fun bm!294788 () Bool)

(declare-fun call!294806 () Bool)

(declare-fun forall!8575 (List!47977 Int) Bool)

(assert (=> bm!294788 (= call!294806 (forall!8575 (toList!2141 call!294782) (ite c!730954 lambda!131734 lambda!131735)))))

(declare-fun b!4296206 () Bool)

(assert (=> b!4296206 (= e!2669921 call!294784)))

(declare-fun b!4296207 () Bool)

(declare-fun e!2669920 () Bool)

(declare-fun call!294800 () Bool)

(assert (=> b!4296207 (= e!2669920 call!294800)))

(assert (=> b!4296208 call!294807))

(declare-fun lt!1518570 () Unit!66481)

(declare-fun Unit!66484 () Unit!66481)

(assert (=> b!4296208 (= lt!1518570 Unit!66484)))

(assert (=> b!4296208 (contains!9803 call!294797 lt!1518395)))

(declare-fun lt!1518562 () Unit!66481)

(declare-fun lt!1518532 () Unit!66481)

(assert (=> b!4296208 (= lt!1518562 lt!1518532)))

(declare-fun lt!1518579 () ListMap!1403)

(assert (=> b!4296208 (= call!294795 (contains!9803 lt!1518579 lt!1518395))))

(declare-fun call!294801 () Unit!66481)

(assert (=> b!4296208 (= lt!1518532 call!294801)))

(assert (=> b!4296208 (= lt!1518579 call!294797)))

(assert (=> b!4296208 (= lt!1518560 call!294808)))

(declare-fun lt!1518545 () Unit!66481)

(declare-fun Unit!66485 () Unit!66481)

(assert (=> b!4296208 (= lt!1518545 Unit!66485)))

(declare-fun call!294810 () Bool)

(assert (=> b!4296208 call!294810))

(declare-fun lt!1518568 () Unit!66481)

(declare-fun Unit!66486 () Unit!66481)

(assert (=> b!4296208 (= lt!1518568 Unit!66486)))

(assert (=> b!4296208 call!294798))

(declare-fun lt!1518573 () Unit!66481)

(declare-fun Unit!66487 () Unit!66481)

(assert (=> b!4296208 (= lt!1518573 Unit!66487)))

(assert (=> b!4296208 call!294806))

(declare-fun lt!1518543 () Unit!66481)

(declare-fun lt!1518526 () Unit!66481)

(assert (=> b!4296208 (= lt!1518543 lt!1518526)))

(declare-fun call!294792 () Bool)

(assert (=> b!4296208 call!294792))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!21 (ListLongMap!771 (_ BitVec 64) List!47975 tuple2!45636 Int Hashable!4393) Unit!66481)

(assert (=> b!4296208 (= lt!1518526 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!21 lt!1518552 lt!1518528 lt!1518566 lt!1518395 res!14399 (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun lt!1518554 () Unit!66481)

(declare-fun lt!1518547 () Unit!66481)

(assert (=> b!4296208 (= lt!1518554 lt!1518547)))

(declare-fun e!2669924 () Bool)

(assert (=> b!4296208 e!2669924))

(declare-fun res!1760939 () Bool)

(assert (=> b!4296208 (=> (not res!1760939) (not e!2669924))))

(declare-fun call!294793 () Bool)

(assert (=> b!4296208 (= res!1760939 call!294793)))

(declare-fun lt!1518529 () ListLongMap!771)

(assert (=> b!4296208 (= lt!1518529 call!294790)))

(declare-fun call!294788 () Unit!66481)

(assert (=> b!4296208 (= lt!1518547 call!294788)))

(declare-fun lt!1518578 () Unit!66481)

(assert (=> b!4296208 (= lt!1518578 e!2669922)))

(declare-fun c!730953 () Bool)

(declare-fun isEmpty!28033 (List!47975) Bool)

(assert (=> b!4296208 (= c!730953 (not (isEmpty!28033 lt!1518534)))))

(declare-fun e!2669923 () Unit!66481)

(declare-fun Unit!66488 () Unit!66481)

(assert (=> b!4296208 (= e!2669923 Unit!66488)))

(declare-fun bm!294789 () Bool)

(declare-fun call!294796 () ListMap!1403)

(assert (=> bm!294789 (= call!294796 (+!133 call!294783 (tuple2!45639 lt!1518395 res!14399)))))

(declare-fun bm!294790 () Bool)

(declare-fun e!2669928 () ListMap!1403)

(declare-fun eq!82 (ListMap!1403 ListMap!1403) Bool)

(assert (=> bm!294790 (= call!294780 (eq!82 call!294791 e!2669928))))

(declare-fun c!730958 () Bool)

(declare-fun c!730955 () Bool)

(assert (=> bm!294790 (= c!730958 c!730955)))

(declare-fun b!4296209 () Bool)

(declare-datatypes ((tuple2!45644 0))(
  ( (tuple2!45645 (_1!26101 Bool) (_2!26101 MutLongMap!4477)) )
))
(declare-fun lt!1518577 () tuple2!45644)

(declare-datatypes ((tuple2!45646 0))(
  ( (tuple2!45647 (_1!26102 Unit!66481) (_2!26102 MutableMap!4383)) )
))
(declare-fun Unit!66489 () Unit!66481)

(declare-fun Unit!66490 () Unit!66481)

(assert (=> b!4296209 (= e!2669926 (tuple2!45641 (_1!26101 lt!1518577) (_2!26102 (ite false (tuple2!45647 Unit!66489 (HashMap!4383 (Cell!17720 (_2!26101 lt!1518577)) (hashF!6425 (cache!4523 thiss!29019)) (bvadd (_size!8998 (cache!4523 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4554 (cache!4523 thiss!29019)))) (tuple2!45647 Unit!66490 lt!1518564)))))))

(assert (=> b!4296209 (= lt!1518530 call!294781)))

(assert (=> b!4296209 (= lt!1518549 call!294784)))

(assert (=> b!4296209 (= lt!1518538 (Cons!47851 (tuple2!45639 lt!1518395 res!14399) call!294809))))

(declare-fun call!294805 () tuple2!45644)

(assert (=> b!4296209 (= lt!1518577 call!294805)))

(assert (=> b!4296209 (= lt!1518564 (HashMap!4383 (Cell!17720 (_2!26101 lt!1518577)) (hashF!6425 (cache!4523 thiss!29019)) (_size!8998 (cache!4523 thiss!29019)) (defaultValue!4554 (cache!4523 thiss!29019))))))

(declare-fun c!730956 () Bool)

(assert (=> b!4296209 (= c!730956 (_1!26101 lt!1518577))))

(declare-fun lt!1518546 () Unit!66481)

(declare-fun e!2669919 () Unit!66481)

(assert (=> b!4296209 (= lt!1518546 e!2669919)))

(declare-fun lt!1518548 () tuple2!45644)

(declare-fun b!4296210 () Bool)

(declare-fun Unit!66491 () Unit!66481)

(declare-fun Unit!66492 () Unit!66481)

(assert (=> b!4296210 (= e!2669926 (tuple2!45641 (_1!26101 lt!1518548) (_2!26102 (ite (_1!26101 lt!1518548) (tuple2!45647 Unit!66491 (HashMap!4383 (Cell!17720 (_2!26101 lt!1518548)) (hashF!6425 (cache!4523 thiss!29019)) (bvadd (_size!8998 (cache!4523 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4554 (cache!4523 thiss!29019)))) (tuple2!45647 Unit!66492 lt!1518553)))))))

(assert (=> b!4296210 (= lt!1518528 call!294781)))

(declare-fun c!730957 () Bool)

(declare-fun contains!9804 (MutLongMap!4477 (_ BitVec 64)) Bool)

(assert (=> b!4296210 (= c!730957 (contains!9804 (v!41790 (underlying!9184 (cache!4523 thiss!29019))) lt!1518528))))

(assert (=> b!4296210 (= lt!1518534 e!2669921)))

(assert (=> b!4296210 (= lt!1518566 (Cons!47851 (tuple2!45639 lt!1518395 res!14399) lt!1518534))))

(assert (=> b!4296210 (= lt!1518548 call!294805)))

(assert (=> b!4296210 (= lt!1518553 (HashMap!4383 (Cell!17720 (_2!26101 lt!1518548)) (hashF!6425 (cache!4523 thiss!29019)) (_size!8998 (cache!4523 thiss!29019)) (defaultValue!4554 (cache!4523 thiss!29019))))))

(declare-fun c!730952 () Bool)

(assert (=> b!4296210 (= c!730952 (_1!26101 lt!1518548))))

(declare-fun lt!1518569 () Unit!66481)

(assert (=> b!4296210 (= lt!1518569 e!2669923)))

(assert (=> b!4296211 call!294810))

(declare-fun lt!1518574 () Unit!66481)

(declare-fun Unit!66493 () Unit!66481)

(assert (=> b!4296211 (= lt!1518574 Unit!66493)))

(assert (=> b!4296211 call!294798))

(declare-fun lt!1518575 () Unit!66481)

(declare-fun Unit!66494 () Unit!66481)

(assert (=> b!4296211 (= lt!1518575 Unit!66494)))

(assert (=> b!4296211 call!294806))

(declare-fun lt!1518556 () Unit!66481)

(declare-fun lt!1518540 () Unit!66481)

(assert (=> b!4296211 (= lt!1518556 lt!1518540)))

(assert (=> b!4296211 (= call!294807 call!294795)))

(assert (=> b!4296211 (= lt!1518540 call!294801)))

(assert (=> b!4296211 (= lt!1518557 call!294797)))

(declare-fun call!294786 () ListMap!1403)

(assert (=> b!4296211 (= lt!1518571 call!294786)))

(declare-fun lt!1518565 () Unit!66481)

(declare-fun lt!1518533 () Unit!66481)

(assert (=> b!4296211 (= lt!1518565 lt!1518533)))

(assert (=> b!4296211 call!294792))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!21 (ListLongMap!771 (_ BitVec 64) List!47975 tuple2!45636 Int Hashable!4393) Unit!66481)

(assert (=> b!4296211 (= lt!1518533 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!21 lt!1518552 lt!1518530 lt!1518538 lt!1518395 res!14399 (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun lt!1518576 () Unit!66481)

(declare-fun lt!1518544 () Unit!66481)

(assert (=> b!4296211 (= lt!1518576 lt!1518544)))

(assert (=> b!4296211 e!2669920))

(declare-fun res!1760937 () Bool)

(assert (=> b!4296211 (=> (not res!1760937) (not e!2669920))))

(assert (=> b!4296211 (= res!1760937 call!294793)))

(declare-fun lt!1518531 () ListLongMap!771)

(assert (=> b!4296211 (= lt!1518531 call!294790)))

(assert (=> b!4296211 (= lt!1518544 call!294788)))

(declare-fun lt!1518551 () Unit!66481)

(declare-fun Unit!66495 () Unit!66481)

(assert (=> b!4296211 (= lt!1518551 Unit!66495)))

(declare-fun noDuplicateKeys!137 (List!47975) Bool)

(assert (=> b!4296211 (noDuplicateKeys!137 lt!1518538)))

(declare-fun lt!1518572 () Unit!66481)

(declare-fun Unit!66496 () Unit!66481)

(assert (=> b!4296211 (= lt!1518572 Unit!66496)))

(declare-fun containsKey!214 (List!47975 tuple2!45636) Bool)

(assert (=> b!4296211 (not (containsKey!214 call!294809 lt!1518395))))

(declare-fun lt!1518537 () Unit!66481)

(declare-fun Unit!66497 () Unit!66481)

(assert (=> b!4296211 (= lt!1518537 Unit!66497)))

(declare-fun lt!1518541 () Unit!66481)

(declare-fun lt!1518563 () Unit!66481)

(assert (=> b!4296211 (= lt!1518541 lt!1518563)))

(assert (=> b!4296211 (noDuplicateKeys!137 call!294809)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!114 (List!47975 tuple2!45636) Unit!66481)

(assert (=> b!4296211 (= lt!1518563 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!114 lt!1518549 lt!1518395))))

(declare-fun lt!1518527 () Unit!66481)

(declare-fun lt!1518559 () Unit!66481)

(assert (=> b!4296211 (= lt!1518527 lt!1518559)))

(assert (=> b!4296211 call!294799))

(assert (=> b!4296211 (= lt!1518559 call!294794)))

(declare-fun lt!1518550 () Unit!66481)

(declare-fun lt!1518525 () Unit!66481)

(assert (=> b!4296211 (= lt!1518550 lt!1518525)))

(declare-fun call!294785 () Bool)

(assert (=> b!4296211 call!294785))

(declare-fun call!294787 () Unit!66481)

(assert (=> b!4296211 (= lt!1518525 call!294787)))

(declare-fun Unit!66498 () Unit!66481)

(assert (=> b!4296211 (= e!2669919 Unit!66498)))

(declare-fun bm!294791 () Bool)

(assert (=> bm!294791 (= call!294793 (forall!8575 (ite c!730954 (toList!2141 lt!1518531) (toList!2141 lt!1518529)) (ite c!730954 lambda!131734 lambda!131735)))))

(declare-fun b!4296212 () Bool)

(assert (=> b!4296212 (= e!2669927 e!2669918)))

(assert (=> b!4296212 (= c!730955 (_1!26099 lt!1518567))))

(declare-fun bm!294792 () Bool)

(assert (=> bm!294792 (= call!294782 (map!9825 (ite c!730954 (_2!26101 lt!1518577) (_2!26101 lt!1518548))))))

(declare-fun bm!294793 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!100 (List!47977 (_ BitVec 64) List!47975 Hashable!4393) Unit!66481)

(assert (=> bm!294793 (= call!294787 (lemmaInLongMapAllKeySameHashThenForTuple!100 (toList!2141 lt!1518552) (ite c!730954 lt!1518530 lt!1518528) (ite c!730954 lt!1518549 lt!1518534) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun bm!294794 () Bool)

(declare-fun lemmaEquivalentThenSameContains!21 (ListMap!1403 ListMap!1403 tuple2!45636) Unit!66481)

(assert (=> bm!294794 (= call!294801 (lemmaEquivalentThenSameContains!21 (ite c!730954 lt!1518571 lt!1518560) (ite c!730954 lt!1518557 lt!1518579) lt!1518395))))

(declare-fun bm!294795 () Bool)

(assert (=> bm!294795 (= call!294808 call!294804)))

(declare-fun bm!294796 () Bool)

(declare-fun call!294802 () ListMap!1403)

(assert (=> bm!294796 (= call!294802 (extractMap!255 (toList!2141 call!294790)))))

(declare-fun bm!294797 () Bool)

(declare-fun removePairForKey!126 (List!47975 tuple2!45636) List!47975)

(assert (=> bm!294797 (= call!294809 (removePairForKey!126 (ite c!730954 lt!1518549 lt!1518534) lt!1518395))))

(declare-fun bm!294798 () Bool)

(assert (=> bm!294798 (= call!294810 (eq!82 (ite c!730954 call!294786 call!294808) call!294797))))

(declare-fun bm!294799 () Bool)

(declare-fun call!294789 () Bool)

(assert (=> bm!294799 (= call!294789 (valid!3454 (ite c!730954 lt!1518564 lt!1518553)))))

(declare-fun bm!294800 () Bool)

(assert (=> bm!294800 (= call!294785 (allKeysSameHash!109 (ite c!730954 lt!1518549 lt!1518534) (ite c!730954 lt!1518530 lt!1518528) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun bm!294801 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!87 (ListLongMap!771 (_ BitVec 64) List!47975 Hashable!4393) Unit!66481)

(assert (=> bm!294801 (= call!294788 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!87 lt!1518552 (ite c!730954 lt!1518530 lt!1518528) (ite c!730954 lt!1518538 lt!1518566) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun b!4296213 () Bool)

(declare-fun lt!1518536 () Unit!66481)

(assert (=> b!4296213 (= e!2669922 lt!1518536)))

(declare-fun lt!1518561 () Unit!66481)

(assert (=> b!4296213 (= lt!1518561 call!294787)))

(assert (=> b!4296213 call!294785))

(declare-fun lt!1518535 () Unit!66481)

(assert (=> b!4296213 (= lt!1518535 lt!1518561)))

(assert (=> b!4296213 (= lt!1518536 call!294794)))

(assert (=> b!4296213 call!294799))

(declare-fun bm!294802 () Bool)

(assert (=> bm!294802 (= call!294800 (allKeysSameHashInMap!254 (ite c!730954 lt!1518531 lt!1518529) (hashF!6425 (cache!4523 thiss!29019))))))

(declare-fun bm!294803 () Bool)

(declare-fun update!293 (MutLongMap!4477 (_ BitVec 64) List!47975) tuple2!45644)

(assert (=> bm!294803 (= call!294805 (update!293 (v!41790 (underlying!9184 (cache!4523 thiss!29019))) (ite c!730954 lt!1518530 lt!1518528) (ite c!730954 lt!1518538 lt!1518566)))))

(declare-fun b!4296214 () Bool)

(assert (=> b!4296214 (= e!2669928 call!294803)))

(declare-fun b!4296215 () Bool)

(assert (=> b!4296215 (= e!2669928 (+!133 call!294803 (tuple2!45639 lt!1518395 res!14399)))))

(declare-fun bm!294804 () Bool)

(assert (=> bm!294804 (= call!294792 (eq!82 call!294802 call!294796))))

(declare-fun b!4296216 () Bool)

(assert (=> b!4296216 (= call!294786 lt!1518555)))

(declare-fun lt!1518539 () Unit!66481)

(declare-fun Unit!66499 () Unit!66481)

(assert (=> b!4296216 (= lt!1518539 Unit!66499)))

(assert (=> b!4296216 call!294789))

(declare-fun Unit!66500 () Unit!66481)

(assert (=> b!4296216 (= e!2669919 Unit!66500)))

(declare-fun bm!294805 () Bool)

(assert (=> bm!294805 (= call!294786 call!294804)))

(declare-fun b!4296217 () Bool)

(assert (=> b!4296217 (= e!2669924 call!294800)))

(declare-fun b!4296218 () Bool)

(assert (=> b!4296218 (= call!294808 lt!1518555)))

(declare-fun lt!1518542 () Unit!66481)

(declare-fun Unit!66501 () Unit!66481)

(assert (=> b!4296218 (= lt!1518542 Unit!66501)))

(assert (=> b!4296218 call!294789))

(declare-fun Unit!66502 () Unit!66481)

(assert (=> b!4296218 (= e!2669923 Unit!66502)))

(assert (= (and d!1266165 c!730954) b!4296209))

(assert (= (and d!1266165 (not c!730954)) b!4296210))

(assert (= (and b!4296209 c!730956) b!4296211))

(assert (= (and b!4296209 (not c!730956)) b!4296216))

(assert (= (and b!4296211 res!1760937) b!4296207))

(assert (= (or b!4296211 b!4296216) bm!294805))

(assert (= (and b!4296210 c!730957) b!4296206))

(assert (= (and b!4296210 (not c!730957)) b!4296200))

(assert (= (and b!4296210 c!730952) b!4296208))

(assert (= (and b!4296210 (not c!730952)) b!4296218))

(assert (= (and b!4296208 c!730953) b!4296213))

(assert (= (and b!4296208 (not c!730953)) b!4296203))

(assert (= (and b!4296208 res!1760939) b!4296217))

(assert (= (or b!4296208 b!4296218) bm!294795))

(assert (= (or b!4296211 b!4296208) bm!294792))

(assert (= (or b!4296211 b!4296213) bm!294779))

(assert (= (or b!4296211 b!4296213) bm!294800))

(assert (= (or b!4296211 b!4296208) bm!294791))

(assert (= (or b!4296211 b!4296213) bm!294793))

(assert (= (or b!4296211 b!4296208) bm!294780))

(assert (= (or b!4296211 b!4296208) bm!294778))

(assert (= (or b!4296209 b!4296211 b!4296213) bm!294797))

(assert (= (or b!4296209 b!4296206) bm!294786))

(assert (= (or b!4296209 b!4296210) bm!294783))

(assert (= (or b!4296209 b!4296210) bm!294803))

(assert (= (or b!4296211 b!4296208) bm!294787))

(assert (= (or b!4296216 b!4296218) bm!294799))

(assert (= (or b!4296211 b!4296208) bm!294785))

(assert (= (or b!4296207 b!4296217) bm!294802))

(assert (= (or b!4296211 b!4296208) bm!294794))

(assert (= (or bm!294805 bm!294795) bm!294782))

(assert (= (or b!4296211 b!4296208) bm!294801))

(assert (= (or b!4296211 b!4296208) bm!294776))

(assert (= (or b!4296211 b!4296208) bm!294796))

(assert (= (or b!4296211 b!4296208) bm!294781))

(assert (= (or b!4296211 b!4296213) bm!294775))

(assert (= (or b!4296211 b!4296208) bm!294788))

(assert (= (or b!4296211 b!4296208) bm!294789))

(assert (= (or b!4296211 b!4296208) bm!294798))

(assert (= (or b!4296211 b!4296208) bm!294804))

(assert (= (and d!1266165 res!1760941) b!4296202))

(assert (= (and b!4296202 res!1760938) b!4296212))

(assert (= (and b!4296212 c!730955) b!4296205))

(assert (= (and b!4296212 (not c!730955)) b!4296201))

(assert (= (and b!4296205 res!1760940) b!4296204))

(assert (= (or b!4296204 b!4296201) bm!294777))

(assert (= (or b!4296205 b!4296204 b!4296201) bm!294784))

(assert (= (or b!4296204 b!4296201) bm!294790))

(assert (= (and bm!294790 c!730958) b!4296215))

(assert (= (and bm!294790 (not c!730958)) b!4296214))

(declare-fun m!4888632 () Bool)

(assert (=> bm!294784 m!4888632))

(declare-fun m!4888634 () Bool)

(assert (=> bm!294779 m!4888634))

(declare-fun m!4888636 () Bool)

(assert (=> bm!294796 m!4888636))

(declare-fun m!4888638 () Bool)

(assert (=> b!4296211 m!4888638))

(declare-fun m!4888640 () Bool)

(assert (=> b!4296211 m!4888640))

(declare-fun m!4888642 () Bool)

(assert (=> b!4296211 m!4888642))

(declare-fun m!4888644 () Bool)

(assert (=> b!4296211 m!4888644))

(declare-fun m!4888646 () Bool)

(assert (=> b!4296211 m!4888646))

(declare-fun m!4888648 () Bool)

(assert (=> bm!294803 m!4888648))

(declare-fun m!4888650 () Bool)

(assert (=> bm!294802 m!4888650))

(declare-fun m!4888652 () Bool)

(assert (=> bm!294785 m!4888652))

(declare-fun m!4888654 () Bool)

(assert (=> b!4296210 m!4888654))

(declare-fun m!4888656 () Bool)

(assert (=> bm!294787 m!4888656))

(declare-fun m!4888658 () Bool)

(assert (=> bm!294797 m!4888658))

(declare-fun m!4888660 () Bool)

(assert (=> bm!294775 m!4888660))

(declare-fun m!4888662 () Bool)

(assert (=> b!4296215 m!4888662))

(declare-fun m!4888664 () Bool)

(assert (=> bm!294790 m!4888664))

(declare-fun m!4888666 () Bool)

(assert (=> bm!294788 m!4888666))

(declare-fun m!4888668 () Bool)

(assert (=> bm!294794 m!4888668))

(declare-fun m!4888670 () Bool)

(assert (=> bm!294800 m!4888670))

(declare-fun m!4888672 () Bool)

(assert (=> d!1266165 m!4888672))

(declare-fun m!4888674 () Bool)

(assert (=> d!1266165 m!4888674))

(assert (=> d!1266165 m!4888604))

(assert (=> d!1266165 m!4888602))

(declare-fun m!4888676 () Bool)

(assert (=> b!4296208 m!4888676))

(declare-fun m!4888678 () Bool)

(assert (=> b!4296208 m!4888678))

(declare-fun m!4888680 () Bool)

(assert (=> b!4296208 m!4888680))

(declare-fun m!4888682 () Bool)

(assert (=> b!4296208 m!4888682))

(declare-fun m!4888684 () Bool)

(assert (=> bm!294781 m!4888684))

(declare-fun m!4888686 () Bool)

(assert (=> bm!294791 m!4888686))

(declare-fun m!4888688 () Bool)

(assert (=> bm!294782 m!4888688))

(declare-fun m!4888690 () Bool)

(assert (=> bm!294786 m!4888690))

(declare-fun m!4888692 () Bool)

(assert (=> bm!294778 m!4888692))

(declare-fun m!4888694 () Bool)

(assert (=> bm!294783 m!4888694))

(declare-fun m!4888696 () Bool)

(assert (=> bm!294801 m!4888696))

(declare-fun m!4888698 () Bool)

(assert (=> b!4296202 m!4888698))

(declare-fun m!4888700 () Bool)

(assert (=> bm!294798 m!4888700))

(declare-fun m!4888702 () Bool)

(assert (=> b!4296205 m!4888702))

(declare-fun m!4888704 () Bool)

(assert (=> bm!294799 m!4888704))

(declare-fun m!4888706 () Bool)

(assert (=> bm!294780 m!4888706))

(declare-fun m!4888708 () Bool)

(assert (=> bm!294776 m!4888708))

(declare-fun m!4888710 () Bool)

(assert (=> bm!294789 m!4888710))

(declare-fun m!4888712 () Bool)

(assert (=> bm!294793 m!4888712))

(declare-fun m!4888714 () Bool)

(assert (=> bm!294792 m!4888714))

(declare-fun m!4888716 () Bool)

(assert (=> bm!294804 m!4888716))

(assert (=> bm!294777 m!4888604))

(assert (=> b!4296098 d!1266165))

(declare-fun d!1266167 () Bool)

(declare-fun e!2669931 () Bool)

(assert (=> d!1266167 e!2669931))

(declare-fun res!1760944 () Bool)

(assert (=> d!1266167 (=> (not res!1760944) (not e!2669931))))

(assert (=> d!1266167 (= res!1760944 (and (or (not ((_ is HashMap!4383) (cache!4523 thiss!29019))) ((_ is HashMap!4383) (cache!4523 thiss!29019))) ((_ is HashMap!4383) (cache!4523 thiss!29019))))))

(declare-fun lt!1518592 () Unit!66481)

(declare-fun choose!26160 (MutableMap!4383 tuple2!45636 Int Int) Unit!66481)

(assert (=> d!1266167 (= lt!1518592 (choose!26160 (cache!4523 thiss!29019) lt!1518395 res!14399 lambda!131719))))

(assert (=> d!1266167 (valid!3454 (cache!4523 thiss!29019))))

(assert (=> d!1266167 (= (lemmaUpdatePreservesForallPairs!42 (cache!4523 thiss!29019) lt!1518395 res!14399 lambda!131719) lt!1518592)))

(declare-fun b!4296221 () Bool)

(declare-fun lt!1518597 () MutableMap!4383)

(assert (=> b!4296221 (= e!2669931 (forall!8573 (toList!2140 (map!9824 lt!1518597)) lambda!131719))))

(assert (=> b!4296221 ((_ is HashMap!4383) lt!1518597)))

(declare-fun lt!1518593 () MutableMap!4383)

(assert (=> b!4296221 (= lt!1518597 lt!1518593)))

(assert (=> b!4296221 ((_ is HashMap!4383) lt!1518593)))

(declare-fun lt!1518594 () MutableMap!4383)

(assert (=> b!4296221 (= lt!1518593 lt!1518594)))

(assert (=> b!4296221 ((_ is HashMap!4383) lt!1518594)))

(declare-fun lt!1518595 () tuple2!45640)

(assert (=> b!4296221 (= lt!1518594 (_2!26099 lt!1518595))))

(assert (=> b!4296221 ((_ is HashMap!4383) (_2!26099 lt!1518595))))

(declare-fun lt!1518596 () tuple2!45640)

(assert (=> b!4296221 (= lt!1518595 lt!1518596)))

(assert (=> b!4296221 ((_ is HashMap!4383) (_2!26099 lt!1518596))))

(assert (=> b!4296221 (= lt!1518596 (update!292 (cache!4523 thiss!29019) lt!1518395 res!14399))))

(assert (= (and d!1266167 res!1760944) b!4296221))

(declare-fun m!4888718 () Bool)

(assert (=> d!1266167 m!4888718))

(assert (=> d!1266167 m!4888602))

(declare-fun m!4888720 () Bool)

(assert (=> b!4296221 m!4888720))

(declare-fun m!4888722 () Bool)

(assert (=> b!4296221 m!4888722))

(assert (=> b!4296221 m!4888561))

(assert (=> b!4296098 d!1266167))

(declare-fun d!1266169 () Bool)

(declare-fun c!730959 () Bool)

(assert (=> d!1266169 (= c!730959 ((_ is Node!14436) (c!730925 localTotalInput!12)))))

(declare-fun e!2669932 () Bool)

(assert (=> d!1266169 (= (inv!63403 (c!730925 localTotalInput!12)) e!2669932)))

(declare-fun b!4296222 () Bool)

(assert (=> b!4296222 (= e!2669932 (inv!63405 (c!730925 localTotalInput!12)))))

(declare-fun b!4296223 () Bool)

(declare-fun e!2669933 () Bool)

(assert (=> b!4296223 (= e!2669932 e!2669933)))

(declare-fun res!1760945 () Bool)

(assert (=> b!4296223 (= res!1760945 (not ((_ is Leaf!22335) (c!730925 localTotalInput!12))))))

(assert (=> b!4296223 (=> res!1760945 e!2669933)))

(declare-fun b!4296224 () Bool)

(assert (=> b!4296224 (= e!2669933 (inv!63406 (c!730925 localTotalInput!12)))))

(assert (= (and d!1266169 c!730959) b!4296222))

(assert (= (and d!1266169 (not c!730959)) b!4296223))

(assert (= (and b!4296223 (not res!1760945)) b!4296224))

(declare-fun m!4888724 () Bool)

(assert (=> b!4296222 m!4888724))

(declare-fun m!4888726 () Bool)

(assert (=> b!4296224 m!4888726))

(assert (=> b!4296102 d!1266169))

(declare-fun tp!1319384 () Bool)

(declare-fun b!4296233 () Bool)

(declare-fun tp!1319385 () Bool)

(declare-fun e!2669938 () Bool)

(assert (=> b!4296233 (= e!2669938 (and (inv!63403 (left!35492 (c!730925 (totalInput!4412 thiss!29019)))) tp!1319384 (inv!63403 (right!35822 (c!730925 (totalInput!4412 thiss!29019)))) tp!1319385))))

(declare-fun b!4296235 () Bool)

(declare-fun e!2669939 () Bool)

(declare-fun tp!1319386 () Bool)

(assert (=> b!4296235 (= e!2669939 tp!1319386)))

(declare-fun b!4296234 () Bool)

(declare-fun inv!63407 (IArray!28933) Bool)

(assert (=> b!4296234 (= e!2669938 (and (inv!63407 (xs!17742 (c!730925 (totalInput!4412 thiss!29019)))) e!2669939))))

(assert (=> b!4296103 (= tp!1319372 (and (inv!63403 (c!730925 (totalInput!4412 thiss!29019))) e!2669938))))

(assert (= (and b!4296103 ((_ is Node!14436) (c!730925 (totalInput!4412 thiss!29019)))) b!4296233))

(assert (= b!4296234 b!4296235))

(assert (= (and b!4296103 ((_ is Leaf!22335) (c!730925 (totalInput!4412 thiss!29019)))) b!4296234))

(declare-fun m!4888728 () Bool)

(assert (=> b!4296233 m!4888728))

(declare-fun m!4888730 () Bool)

(assert (=> b!4296233 m!4888730))

(declare-fun m!4888732 () Bool)

(assert (=> b!4296234 m!4888732))

(assert (=> b!4296103 m!4888583))

(declare-fun b!4296240 () Bool)

(declare-fun e!2669942 () Bool)

(declare-fun tp!1319391 () Bool)

(declare-fun tp!1319392 () Bool)

(assert (=> b!4296240 (= e!2669942 (and tp!1319391 tp!1319392))))

(assert (=> b!4296099 (= tp!1319375 e!2669942)))

(assert (= (and b!4296099 ((_ is Cons!47850) (exprs!3385 setElem!26755))) b!4296240))

(declare-fun condSetEmpty!26758 () Bool)

(assert (=> setNonEmpty!26755 (= condSetEmpty!26758 (= setRest!26755 ((as const (Array Context!5770 Bool)) false)))))

(declare-fun setRes!26758 () Bool)

(assert (=> setNonEmpty!26755 (= tp!1319370 setRes!26758)))

(declare-fun setIsEmpty!26758 () Bool)

(assert (=> setIsEmpty!26758 setRes!26758))

(declare-fun setElem!26758 () Context!5770)

(declare-fun e!2669945 () Bool)

(declare-fun setNonEmpty!26758 () Bool)

(declare-fun tp!1319398 () Bool)

(assert (=> setNonEmpty!26758 (= setRes!26758 (and tp!1319398 (inv!63402 setElem!26758) e!2669945))))

(declare-fun setRest!26758 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26758 (= setRest!26755 ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26758 true) setRest!26758))))

(declare-fun b!4296245 () Bool)

(declare-fun tp!1319397 () Bool)

(assert (=> b!4296245 (= e!2669945 tp!1319397)))

(assert (= (and setNonEmpty!26755 condSetEmpty!26758) setIsEmpty!26758))

(assert (= (and setNonEmpty!26755 (not condSetEmpty!26758)) setNonEmpty!26758))

(assert (= setNonEmpty!26758 b!4296245))

(declare-fun m!4888734 () Bool)

(assert (=> setNonEmpty!26758 m!4888734))

(declare-fun condMapEmpty!20124 () Bool)

(declare-fun mapDefault!20124 () List!47975)

(assert (=> mapNonEmpty!20121 (= condMapEmpty!20124 (= mapRest!20121 ((as const (Array (_ BitVec 32) List!47975)) mapDefault!20124)))))

(declare-fun e!2669954 () Bool)

(declare-fun mapRes!20124 () Bool)

(assert (=> mapNonEmpty!20121 (= tp!1319374 (and e!2669954 mapRes!20124))))

(declare-fun b!4296256 () Bool)

(declare-fun setRes!26764 () Bool)

(declare-fun tp!1319417 () Bool)

(assert (=> b!4296256 (= e!2669954 (and setRes!26764 tp!1319417))))

(declare-fun condSetEmpty!26764 () Bool)

(assert (=> b!4296256 (= condSetEmpty!26764 (= (_1!26097 (_1!26098 (h!53271 mapDefault!20124))) ((as const (Array Context!5770 Bool)) false)))))

(declare-fun setElem!26764 () Context!5770)

(declare-fun setRes!26763 () Bool)

(declare-fun tp!1319414 () Bool)

(declare-fun e!2669955 () Bool)

(declare-fun setNonEmpty!26763 () Bool)

(assert (=> setNonEmpty!26763 (= setRes!26763 (and tp!1319414 (inv!63402 setElem!26764) e!2669955))))

(declare-fun mapValue!20124 () List!47975)

(declare-fun setRest!26763 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26763 (= (_1!26097 (_1!26098 (h!53271 mapValue!20124))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26764 true) setRest!26763))))

(declare-fun setIsEmpty!26763 () Bool)

(assert (=> setIsEmpty!26763 setRes!26763))

(declare-fun b!4296257 () Bool)

(declare-fun tp!1319419 () Bool)

(assert (=> b!4296257 (= e!2669955 tp!1319419)))

(declare-fun mapNonEmpty!20124 () Bool)

(declare-fun tp!1319413 () Bool)

(declare-fun e!2669956 () Bool)

(assert (=> mapNonEmpty!20124 (= mapRes!20124 (and tp!1319413 e!2669956))))

(declare-fun mapKey!20124 () (_ BitVec 32))

(declare-fun mapRest!20124 () (Array (_ BitVec 32) List!47975))

(assert (=> mapNonEmpty!20124 (= mapRest!20121 (store mapRest!20124 mapKey!20124 mapValue!20124))))

(declare-fun mapIsEmpty!20124 () Bool)

(assert (=> mapIsEmpty!20124 mapRes!20124))

(declare-fun tp!1319418 () Bool)

(declare-fun e!2669957 () Bool)

(declare-fun setNonEmpty!26764 () Bool)

(declare-fun setElem!26763 () Context!5770)

(assert (=> setNonEmpty!26764 (= setRes!26764 (and tp!1319418 (inv!63402 setElem!26763) e!2669957))))

(declare-fun setRest!26764 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26764 (= (_1!26097 (_1!26098 (h!53271 mapDefault!20124))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26763 true) setRest!26764))))

(declare-fun setIsEmpty!26764 () Bool)

(assert (=> setIsEmpty!26764 setRes!26764))

(declare-fun b!4296258 () Bool)

(declare-fun tp!1319416 () Bool)

(assert (=> b!4296258 (= e!2669957 tp!1319416)))

(declare-fun b!4296259 () Bool)

(declare-fun tp!1319415 () Bool)

(assert (=> b!4296259 (= e!2669956 (and setRes!26763 tp!1319415))))

(declare-fun condSetEmpty!26763 () Bool)

(assert (=> b!4296259 (= condSetEmpty!26763 (= (_1!26097 (_1!26098 (h!53271 mapValue!20124))) ((as const (Array Context!5770 Bool)) false)))))

(assert (= (and mapNonEmpty!20121 condMapEmpty!20124) mapIsEmpty!20124))

(assert (= (and mapNonEmpty!20121 (not condMapEmpty!20124)) mapNonEmpty!20124))

(assert (= (and b!4296259 condSetEmpty!26763) setIsEmpty!26763))

(assert (= (and b!4296259 (not condSetEmpty!26763)) setNonEmpty!26763))

(assert (= setNonEmpty!26763 b!4296257))

(assert (= (and mapNonEmpty!20124 ((_ is Cons!47851) mapValue!20124)) b!4296259))

(assert (= (and b!4296256 condSetEmpty!26764) setIsEmpty!26764))

(assert (= (and b!4296256 (not condSetEmpty!26764)) setNonEmpty!26764))

(assert (= setNonEmpty!26764 b!4296258))

(assert (= (and mapNonEmpty!20121 ((_ is Cons!47851) mapDefault!20124)) b!4296256))

(declare-fun m!4888736 () Bool)

(assert (=> setNonEmpty!26763 m!4888736))

(declare-fun m!4888738 () Bool)

(assert (=> mapNonEmpty!20124 m!4888738))

(declare-fun m!4888740 () Bool)

(assert (=> setNonEmpty!26764 m!4888740))

(declare-fun b!4296266 () Bool)

(declare-fun e!2669962 () Bool)

(declare-fun setRes!26767 () Bool)

(declare-fun tp!1319426 () Bool)

(assert (=> b!4296266 (= e!2669962 (and setRes!26767 tp!1319426))))

(declare-fun condSetEmpty!26767 () Bool)

(assert (=> b!4296266 (= condSetEmpty!26767 (= (_1!26097 (_1!26098 (h!53271 mapValue!20121))) ((as const (Array Context!5770 Bool)) false)))))

(declare-fun b!4296267 () Bool)

(declare-fun e!2669963 () Bool)

(declare-fun tp!1319428 () Bool)

(assert (=> b!4296267 (= e!2669963 tp!1319428)))

(declare-fun setIsEmpty!26767 () Bool)

(assert (=> setIsEmpty!26767 setRes!26767))

(declare-fun tp!1319427 () Bool)

(declare-fun setElem!26767 () Context!5770)

(declare-fun setNonEmpty!26767 () Bool)

(assert (=> setNonEmpty!26767 (= setRes!26767 (and tp!1319427 (inv!63402 setElem!26767) e!2669963))))

(declare-fun setRest!26767 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26767 (= (_1!26097 (_1!26098 (h!53271 mapValue!20121))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26767 true) setRest!26767))))

(assert (=> mapNonEmpty!20121 (= tp!1319368 e!2669962)))

(assert (= (and b!4296266 condSetEmpty!26767) setIsEmpty!26767))

(assert (= (and b!4296266 (not condSetEmpty!26767)) setNonEmpty!26767))

(assert (= setNonEmpty!26767 b!4296267))

(assert (= (and mapNonEmpty!20121 ((_ is Cons!47851) mapValue!20121)) b!4296266))

(declare-fun m!4888742 () Bool)

(assert (=> setNonEmpty!26767 m!4888742))

(declare-fun b!4296268 () Bool)

(declare-fun e!2669964 () Bool)

(declare-fun setRes!26768 () Bool)

(declare-fun tp!1319429 () Bool)

(assert (=> b!4296268 (= e!2669964 (and setRes!26768 tp!1319429))))

(declare-fun condSetEmpty!26768 () Bool)

(assert (=> b!4296268 (= condSetEmpty!26768 (= (_1!26097 (_1!26098 (h!53271 mapDefault!20121))) ((as const (Array Context!5770 Bool)) false)))))

(declare-fun b!4296269 () Bool)

(declare-fun e!2669965 () Bool)

(declare-fun tp!1319431 () Bool)

(assert (=> b!4296269 (= e!2669965 tp!1319431)))

(declare-fun setIsEmpty!26768 () Bool)

(assert (=> setIsEmpty!26768 setRes!26768))

(declare-fun setElem!26768 () Context!5770)

(declare-fun tp!1319430 () Bool)

(declare-fun setNonEmpty!26768 () Bool)

(assert (=> setNonEmpty!26768 (= setRes!26768 (and tp!1319430 (inv!63402 setElem!26768) e!2669965))))

(declare-fun setRest!26768 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26768 (= (_1!26097 (_1!26098 (h!53271 mapDefault!20121))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26768 true) setRest!26768))))

(assert (=> b!4296101 (= tp!1319371 e!2669964)))

(assert (= (and b!4296268 condSetEmpty!26768) setIsEmpty!26768))

(assert (= (and b!4296268 (not condSetEmpty!26768)) setNonEmpty!26768))

(assert (= setNonEmpty!26768 b!4296269))

(assert (= (and b!4296101 ((_ is Cons!47851) mapDefault!20121)) b!4296268))

(declare-fun m!4888744 () Bool)

(assert (=> setNonEmpty!26768 m!4888744))

(declare-fun b!4296270 () Bool)

(declare-fun e!2669966 () Bool)

(declare-fun setRes!26769 () Bool)

(declare-fun tp!1319432 () Bool)

(assert (=> b!4296270 (= e!2669966 (and setRes!26769 tp!1319432))))

(declare-fun condSetEmpty!26769 () Bool)

(assert (=> b!4296270 (= condSetEmpty!26769 (= (_1!26097 (_1!26098 (h!53271 (zeroValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))))) ((as const (Array Context!5770 Bool)) false)))))

(declare-fun b!4296271 () Bool)

(declare-fun e!2669967 () Bool)

(declare-fun tp!1319434 () Bool)

(assert (=> b!4296271 (= e!2669967 tp!1319434)))

(declare-fun setIsEmpty!26769 () Bool)

(assert (=> setIsEmpty!26769 setRes!26769))

(declare-fun tp!1319433 () Bool)

(declare-fun setNonEmpty!26769 () Bool)

(declare-fun setElem!26769 () Context!5770)

(assert (=> setNonEmpty!26769 (= setRes!26769 (and tp!1319433 (inv!63402 setElem!26769) e!2669967))))

(declare-fun setRest!26769 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26769 (= (_1!26097 (_1!26098 (h!53271 (zeroValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26769 true) setRest!26769))))

(assert (=> b!4296105 (= tp!1319376 e!2669966)))

(assert (= (and b!4296270 condSetEmpty!26769) setIsEmpty!26769))

(assert (= (and b!4296270 (not condSetEmpty!26769)) setNonEmpty!26769))

(assert (= setNonEmpty!26769 b!4296271))

(assert (= (and b!4296105 ((_ is Cons!47851) (zeroValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019)))))))) b!4296270))

(declare-fun m!4888746 () Bool)

(assert (=> setNonEmpty!26769 m!4888746))

(declare-fun b!4296272 () Bool)

(declare-fun e!2669968 () Bool)

(declare-fun setRes!26770 () Bool)

(declare-fun tp!1319435 () Bool)

(assert (=> b!4296272 (= e!2669968 (and setRes!26770 tp!1319435))))

(declare-fun condSetEmpty!26770 () Bool)

(assert (=> b!4296272 (= condSetEmpty!26770 (= (_1!26097 (_1!26098 (h!53271 (minValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))))) ((as const (Array Context!5770 Bool)) false)))))

(declare-fun b!4296273 () Bool)

(declare-fun e!2669969 () Bool)

(declare-fun tp!1319437 () Bool)

(assert (=> b!4296273 (= e!2669969 tp!1319437)))

(declare-fun setIsEmpty!26770 () Bool)

(assert (=> setIsEmpty!26770 setRes!26770))

(declare-fun setElem!26770 () Context!5770)

(declare-fun setNonEmpty!26770 () Bool)

(declare-fun tp!1319436 () Bool)

(assert (=> setNonEmpty!26770 (= setRes!26770 (and tp!1319436 (inv!63402 setElem!26770) e!2669969))))

(declare-fun setRest!26770 () (InoxSet Context!5770))

(assert (=> setNonEmpty!26770 (= (_1!26097 (_1!26098 (h!53271 (minValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5770 Bool)) false) setElem!26770 true) setRest!26770))))

(assert (=> b!4296105 (= tp!1319367 e!2669968)))

(assert (= (and b!4296272 condSetEmpty!26770) setIsEmpty!26770))

(assert (= (and b!4296272 (not condSetEmpty!26770)) setNonEmpty!26770))

(assert (= setNonEmpty!26770 b!4296273))

(assert (= (and b!4296105 ((_ is Cons!47851) (minValue!4736 (v!41789 (underlying!9183 (v!41790 (underlying!9184 (cache!4523 thiss!29019)))))))) b!4296272))

(declare-fun m!4888748 () Bool)

(assert (=> setNonEmpty!26770 m!4888748))

(declare-fun b!4296274 () Bool)

(declare-fun e!2669970 () Bool)

(declare-fun tp!1319438 () Bool)

(declare-fun tp!1319439 () Bool)

(assert (=> b!4296274 (= e!2669970 (and (inv!63403 (left!35492 (c!730925 localTotalInput!12))) tp!1319438 (inv!63403 (right!35822 (c!730925 localTotalInput!12))) tp!1319439))))

(declare-fun b!4296276 () Bool)

(declare-fun e!2669971 () Bool)

(declare-fun tp!1319440 () Bool)

(assert (=> b!4296276 (= e!2669971 tp!1319440)))

(declare-fun b!4296275 () Bool)

(assert (=> b!4296275 (= e!2669970 (and (inv!63407 (xs!17742 (c!730925 localTotalInput!12))) e!2669971))))

(assert (=> b!4296102 (= tp!1319377 (and (inv!63403 (c!730925 localTotalInput!12)) e!2669970))))

(assert (= (and b!4296102 ((_ is Node!14436) (c!730925 localTotalInput!12))) b!4296274))

(assert (= b!4296275 b!4296276))

(assert (= (and b!4296102 ((_ is Leaf!22335) (c!730925 localTotalInput!12))) b!4296275))

(declare-fun m!4888750 () Bool)

(assert (=> b!4296274 m!4888750))

(declare-fun m!4888752 () Bool)

(assert (=> b!4296274 m!4888752))

(declare-fun m!4888754 () Bool)

(assert (=> b!4296275 m!4888754))

(assert (=> b!4296102 m!4888567))

(declare-fun b_lambda!126131 () Bool)

(assert (= b_lambda!126129 (or b!4296098 b_lambda!126131)))

(declare-fun bs!603806 () Bool)

(declare-fun d!1266171 () Bool)

(assert (= bs!603806 (and d!1266171 b!4296098)))

(declare-fun validCacheMapFindLongestMatchBody!10 (tuple2!45638 BalanceConc!28362) Bool)

(assert (=> bs!603806 (= (dynLambda!20330 lambda!131719 (h!53271 (toList!2140 (map!9824 (_2!26099 lt!1518399))))) (validCacheMapFindLongestMatchBody!10 (h!53271 (toList!2140 (map!9824 (_2!26099 lt!1518399)))) localTotalInput!12))))

(declare-fun m!4888756 () Bool)

(assert (=> bs!603806 m!4888756))

(assert (=> b!4296160 d!1266171))

(check-sat (not bm!294803) (not b!4296273) (not bm!294785) (not setNonEmpty!26768) (not bm!294799) (not b!4296102) (not b!4296272) (not bm!294776) (not bm!294783) (not b!4296270) (not b!4296271) (not setNonEmpty!26764) (not b!4296155) (not b!4296120) (not setNonEmpty!26769) (not b!4296130) (not b!4296208) (not bm!294800) (not b!4296224) (not b_next!128487) (not d!1266163) (not setNonEmpty!26763) (not b!4296266) (not bm!294798) (not b!4296125) (not bm!294801) (not b!4296222) (not bm!294791) (not b!4296269) (not b!4296122) (not bm!294797) (not setNonEmpty!26770) (not bm!294779) (not bm!294802) (not b!4296234) (not b!4296131) (not b!4296103) (not bm!294786) (not b!4296233) (not b!4296221) (not b!4296202) (not d!1266145) (not bm!294787) (not setNonEmpty!26758) (not bm!294788) (not d!1266147) (not b!4296151) (not bm!294796) (not bm!294777) (not b!4296240) (not bm!294789) (not bm!294804) (not b!4296258) (not bm!294778) (not bm!294781) (not d!1266141) (not mapNonEmpty!20124) (not b!4296276) (not b_lambda!126131) (not d!1266157) (not b_next!128489) (not b!4296152) (not b!4296268) (not b!4296211) (not d!1266167) (not b!4296235) (not b!4296259) (not bm!294790) (not b!4296256) (not b!4296267) (not bm!294782) (not bm!294792) (not b!4296275) (not b!4296215) (not d!1266165) (not bm!294793) (not bm!294780) (not d!1266151) (not bm!294784) (not b!4296205) (not b!4296210) (not bm!294794) (not b!4296274) b_and!338999 (not b!4296148) (not bm!294775) (not setNonEmpty!26767) b_and!339001 (not bs!603806) (not b!4296161) (not b!4296257) (not b!4296245))
(check-sat b_and!339001 b_and!338999 (not b_next!128489) (not b_next!128487))
