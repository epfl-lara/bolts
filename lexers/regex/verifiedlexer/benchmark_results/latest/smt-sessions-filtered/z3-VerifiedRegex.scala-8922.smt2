; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478380 () Bool)

(assert start!478380)

(declare-fun b!4709218 () Bool)

(declare-fun res!1990010 () Bool)

(declare-fun e!2937270 () Bool)

(assert (=> b!4709218 (=> (not res!1990010) (not e!2937270))))

(declare-datatypes ((K!14015 0))(
  ( (K!14016 (val!19483 Int)) )
))
(declare-datatypes ((V!14261 0))(
  ( (V!14262 (val!19484 Int)) )
))
(declare-datatypes ((tuple2!54178 0))(
  ( (tuple2!54179 (_1!30383 K!14015) (_2!30383 V!14261)) )
))
(declare-datatypes ((List!52775 0))(
  ( (Nil!52651) (Cons!52651 (h!58954 tuple2!54178) (t!360007 List!52775)) )
))
(declare-fun newBucket!218 () List!52775)

(declare-fun noDuplicateKeys!1946 (List!52775) Bool)

(assert (=> b!4709218 (= res!1990010 (noDuplicateKeys!1946 newBucket!218))))

(declare-fun b!4709219 () Bool)

(declare-fun res!1990021 () Bool)

(declare-fun e!2937274 () Bool)

(assert (=> b!4709219 (=> (not res!1990021) (not e!2937274))))

(declare-datatypes ((Hashable!6315 0))(
  ( (HashableExt!6314 (__x!32018 Int)) )
))
(declare-fun hashF!1323 () Hashable!6315)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1772 (List!52775 (_ BitVec 64) Hashable!6315) Bool)

(assert (=> b!4709219 (= res!1990021 (allKeysSameHash!1772 newBucket!218 hash!405 hashF!1323))))

(declare-fun e!2937268 () Bool)

(declare-fun oldBucket!34 () List!52775)

(declare-datatypes ((ListMap!5145 0))(
  ( (ListMap!5146 (toList!5781 List!52775)) )
))
(declare-fun lt!1873581 () ListMap!5145)

(declare-fun b!4709220 () Bool)

(declare-fun lt!1873586 () ListMap!5145)

(declare-fun eq!1083 (ListMap!5145 ListMap!5145) Bool)

(declare-fun +!2210 (ListMap!5145 tuple2!54178) ListMap!5145)

(declare-fun addToMapMapFromBucket!1376 (List!52775 ListMap!5145) ListMap!5145)

(assert (=> b!4709220 (= e!2937268 (eq!1083 (+!2210 lt!1873586 (h!58954 oldBucket!34)) (addToMapMapFromBucket!1376 oldBucket!34 lt!1873581)))))

(declare-fun lt!1873582 () List!52775)

(declare-fun lt!1873583 () tuple2!54178)

(assert (=> b!4709220 (eq!1083 (addToMapMapFromBucket!1376 (Cons!52651 lt!1873583 lt!1873582) lt!1873581) (+!2210 lt!1873586 lt!1873583))))

(declare-datatypes ((Unit!127526 0))(
  ( (Unit!127527) )
))
(declare-fun lt!1873584 () Unit!127526)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!332 (tuple2!54178 List!52775 ListMap!5145) Unit!127526)

(assert (=> b!4709220 (= lt!1873584 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!332 lt!1873583 lt!1873582 lt!1873581))))

(declare-fun head!10131 (List!52775) tuple2!54178)

(assert (=> b!4709220 (= lt!1873583 (head!10131 oldBucket!34))))

(declare-fun b!4709221 () Bool)

(declare-fun res!1990013 () Bool)

(declare-fun e!2937273 () Bool)

(assert (=> b!4709221 (=> res!1990013 e!2937273)))

(declare-datatypes ((tuple2!54180 0))(
  ( (tuple2!54181 (_1!30384 (_ BitVec 64)) (_2!30384 List!52775)) )
))
(declare-datatypes ((List!52776 0))(
  ( (Nil!52652) (Cons!52652 (h!58955 tuple2!54180) (t!360008 List!52776)) )
))
(declare-datatypes ((ListLongMap!4311 0))(
  ( (ListLongMap!4312 (toList!5782 List!52776)) )
))
(declare-fun lm!2023 () ListLongMap!4311)

(declare-fun extractMap!1972 (List!52776) ListMap!5145)

(assert (=> b!4709221 (= res!1990013 (not (= (extractMap!1972 (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023)))) (extractMap!1972 (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023)))))))))

(declare-fun b!4709222 () Bool)

(declare-fun res!1990023 () Bool)

(assert (=> b!4709222 (=> (not res!1990023) (not e!2937274))))

(declare-fun key!4653 () K!14015)

(declare-fun hash!4264 (Hashable!6315 K!14015) (_ BitVec 64))

(assert (=> b!4709222 (= res!1990023 (= (hash!4264 hashF!1323 key!4653) hash!405))))

(declare-fun b!4709223 () Bool)

(assert (=> b!4709223 (= e!2937273 e!2937268)))

(declare-fun res!1990011 () Bool)

(assert (=> b!4709223 (=> res!1990011 e!2937268)))

(assert (=> b!4709223 (= res!1990011 (not (= lt!1873586 (addToMapMapFromBucket!1376 newBucket!218 lt!1873581))))))

(assert (=> b!4709223 (= lt!1873586 (addToMapMapFromBucket!1376 lt!1873582 lt!1873581))))

(declare-fun b!4709224 () Bool)

(declare-fun res!1990017 () Bool)

(assert (=> b!4709224 (=> (not res!1990017) (not e!2937270))))

(assert (=> b!4709224 (= res!1990017 (allKeysSameHash!1772 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4709225 () Bool)

(declare-fun res!1990022 () Bool)

(assert (=> b!4709225 (=> (not res!1990022) (not e!2937274))))

(declare-fun allKeysSameHashInMap!1860 (ListLongMap!4311 Hashable!6315) Bool)

(assert (=> b!4709225 (= res!1990022 (allKeysSameHashInMap!1860 lm!2023 hashF!1323))))

(declare-fun b!4709226 () Bool)

(declare-fun e!2937271 () Bool)

(declare-fun tp!1347325 () Bool)

(assert (=> b!4709226 (= e!2937271 tp!1347325)))

(declare-fun b!4709227 () Bool)

(declare-fun res!1990018 () Bool)

(assert (=> b!4709227 (=> (not res!1990018) (not e!2937274))))

(declare-fun head!10132 (List!52776) tuple2!54180)

(assert (=> b!4709227 (= res!1990018 (= (head!10132 (toList!5782 lm!2023)) (tuple2!54181 hash!405 oldBucket!34)))))

(declare-fun b!4709228 () Bool)

(declare-fun tp_is_empty!31079 () Bool)

(declare-fun tp_is_empty!31077 () Bool)

(declare-fun e!2937267 () Bool)

(declare-fun tp!1347324 () Bool)

(assert (=> b!4709228 (= e!2937267 (and tp_is_empty!31077 tp_is_empty!31079 tp!1347324))))

(declare-fun b!4709229 () Bool)

(declare-fun e!2937269 () Bool)

(assert (=> b!4709229 (= e!2937269 e!2937273)))

(declare-fun res!1990015 () Bool)

(assert (=> b!4709229 (=> res!1990015 e!2937273)))

(assert (=> b!4709229 (= res!1990015 (not (= lt!1873582 newBucket!218)))))

(declare-fun tail!8830 (List!52775) List!52775)

(assert (=> b!4709229 (= lt!1873582 (tail!8830 oldBucket!34))))

(declare-fun b!4709230 () Bool)

(assert (=> b!4709230 (= e!2937270 e!2937274)))

(declare-fun res!1990020 () Bool)

(assert (=> b!4709230 (=> (not res!1990020) (not e!2937274))))

(declare-fun lt!1873585 () ListMap!5145)

(declare-fun contains!15956 (ListMap!5145 K!14015) Bool)

(assert (=> b!4709230 (= res!1990020 (contains!15956 lt!1873585 key!4653))))

(assert (=> b!4709230 (= lt!1873585 (extractMap!1972 (toList!5782 lm!2023)))))

(declare-fun b!4709231 () Bool)

(declare-fun tp!1347323 () Bool)

(declare-fun e!2937272 () Bool)

(assert (=> b!4709231 (= e!2937272 (and tp_is_empty!31077 tp_is_empty!31079 tp!1347323))))

(declare-fun b!4709232 () Bool)

(declare-fun res!1990016 () Bool)

(assert (=> b!4709232 (=> (not res!1990016) (not e!2937274))))

(get-info :version)

(assert (=> b!4709232 (= res!1990016 ((_ is Cons!52652) (toList!5782 lm!2023)))))

(declare-fun b!4709233 () Bool)

(declare-fun res!1990009 () Bool)

(assert (=> b!4709233 (=> (not res!1990009) (not e!2937270))))

(declare-fun removePairForKey!1541 (List!52775 K!14015) List!52775)

(assert (=> b!4709233 (= res!1990009 (= (removePairForKey!1541 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1990012 () Bool)

(assert (=> start!478380 (=> (not res!1990012) (not e!2937270))))

(declare-fun lambda!212227 () Int)

(declare-fun forall!11471 (List!52776 Int) Bool)

(assert (=> start!478380 (= res!1990012 (forall!11471 (toList!5782 lm!2023) lambda!212227))))

(assert (=> start!478380 e!2937270))

(declare-fun inv!67889 (ListLongMap!4311) Bool)

(assert (=> start!478380 (and (inv!67889 lm!2023) e!2937271)))

(assert (=> start!478380 tp_is_empty!31077))

(assert (=> start!478380 e!2937272))

(assert (=> start!478380 true))

(assert (=> start!478380 e!2937267))

(declare-fun b!4709234 () Bool)

(declare-fun res!1990014 () Bool)

(assert (=> b!4709234 (=> (not res!1990014) (not e!2937270))))

(assert (=> b!4709234 (= res!1990014 (noDuplicateKeys!1946 oldBucket!34))))

(declare-fun b!4709235 () Bool)

(assert (=> b!4709235 (= e!2937274 (not e!2937269))))

(declare-fun res!1990019 () Bool)

(assert (=> b!4709235 (=> res!1990019 e!2937269)))

(assert (=> b!4709235 (= res!1990019 (or (not ((_ is Cons!52651) oldBucket!34)) (not (= (_1!30383 (h!58954 oldBucket!34)) key!4653))))))

(assert (=> b!4709235 (= lt!1873585 (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (toList!5782 lm!2023))) lt!1873581))))

(assert (=> b!4709235 (= lt!1873581 (extractMap!1972 (t!360008 (toList!5782 lm!2023))))))

(declare-fun tail!8831 (ListLongMap!4311) ListLongMap!4311)

(assert (=> b!4709235 (= (t!360008 (toList!5782 lm!2023)) (toList!5782 (tail!8831 lm!2023)))))

(assert (= (and start!478380 res!1990012) b!4709234))

(assert (= (and b!4709234 res!1990014) b!4709218))

(assert (= (and b!4709218 res!1990010) b!4709233))

(assert (= (and b!4709233 res!1990009) b!4709224))

(assert (= (and b!4709224 res!1990017) b!4709230))

(assert (= (and b!4709230 res!1990020) b!4709222))

(assert (= (and b!4709222 res!1990023) b!4709219))

(assert (= (and b!4709219 res!1990021) b!4709225))

(assert (= (and b!4709225 res!1990022) b!4709227))

(assert (= (and b!4709227 res!1990018) b!4709232))

(assert (= (and b!4709232 res!1990016) b!4709235))

(assert (= (and b!4709235 (not res!1990019)) b!4709229))

(assert (= (and b!4709229 (not res!1990015)) b!4709221))

(assert (= (and b!4709221 (not res!1990013)) b!4709223))

(assert (= (and b!4709223 (not res!1990011)) b!4709220))

(assert (= start!478380 b!4709226))

(assert (= (and start!478380 ((_ is Cons!52651) oldBucket!34)) b!4709231))

(assert (= (and start!478380 ((_ is Cons!52651) newBucket!218)) b!4709228))

(declare-fun m!5633503 () Bool)

(assert (=> b!4709227 m!5633503))

(declare-fun m!5633505 () Bool)

(assert (=> b!4709218 m!5633505))

(declare-fun m!5633507 () Bool)

(assert (=> start!478380 m!5633507))

(declare-fun m!5633509 () Bool)

(assert (=> start!478380 m!5633509))

(declare-fun m!5633511 () Bool)

(assert (=> b!4709223 m!5633511))

(declare-fun m!5633513 () Bool)

(assert (=> b!4709223 m!5633513))

(declare-fun m!5633515 () Bool)

(assert (=> b!4709221 m!5633515))

(declare-fun m!5633517 () Bool)

(assert (=> b!4709221 m!5633517))

(declare-fun m!5633519 () Bool)

(assert (=> b!4709230 m!5633519))

(declare-fun m!5633521 () Bool)

(assert (=> b!4709230 m!5633521))

(declare-fun m!5633523 () Bool)

(assert (=> b!4709233 m!5633523))

(declare-fun m!5633525 () Bool)

(assert (=> b!4709219 m!5633525))

(declare-fun m!5633527 () Bool)

(assert (=> b!4709229 m!5633527))

(declare-fun m!5633529 () Bool)

(assert (=> b!4709220 m!5633529))

(declare-fun m!5633531 () Bool)

(assert (=> b!4709220 m!5633531))

(declare-fun m!5633533 () Bool)

(assert (=> b!4709220 m!5633533))

(declare-fun m!5633535 () Bool)

(assert (=> b!4709220 m!5633535))

(assert (=> b!4709220 m!5633531))

(assert (=> b!4709220 m!5633535))

(declare-fun m!5633537 () Bool)

(assert (=> b!4709220 m!5633537))

(declare-fun m!5633539 () Bool)

(assert (=> b!4709220 m!5633539))

(assert (=> b!4709220 m!5633529))

(assert (=> b!4709220 m!5633537))

(declare-fun m!5633541 () Bool)

(assert (=> b!4709220 m!5633541))

(declare-fun m!5633543 () Bool)

(assert (=> b!4709220 m!5633543))

(declare-fun m!5633545 () Bool)

(assert (=> b!4709235 m!5633545))

(declare-fun m!5633547 () Bool)

(assert (=> b!4709235 m!5633547))

(declare-fun m!5633549 () Bool)

(assert (=> b!4709235 m!5633549))

(declare-fun m!5633551 () Bool)

(assert (=> b!4709222 m!5633551))

(declare-fun m!5633553 () Bool)

(assert (=> b!4709234 m!5633553))

(declare-fun m!5633555 () Bool)

(assert (=> b!4709225 m!5633555))

(declare-fun m!5633557 () Bool)

(assert (=> b!4709224 m!5633557))

(check-sat (not b!4709229) tp_is_empty!31079 (not b!4709228) (not b!4709233) (not b!4709225) (not b!4709230) (not start!478380) (not b!4709231) (not b!4709226) (not b!4709220) (not b!4709219) tp_is_empty!31077 (not b!4709234) (not b!4709223) (not b!4709218) (not b!4709224) (not b!4709235) (not b!4709222) (not b!4709227) (not b!4709221))
(check-sat)
(get-model)

(declare-fun d!1498603 () Bool)

(assert (=> d!1498603 (= (head!10131 oldBucket!34) (h!58954 oldBucket!34))))

(assert (=> b!4709220 d!1498603))

(declare-fun d!1498605 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9325 (List!52775) (InoxSet tuple2!54178))

(assert (=> d!1498605 (= (eq!1083 (+!2210 lt!1873586 (h!58954 oldBucket!34)) (addToMapMapFromBucket!1376 oldBucket!34 lt!1873581)) (= (content!9325 (toList!5781 (+!2210 lt!1873586 (h!58954 oldBucket!34)))) (content!9325 (toList!5781 (addToMapMapFromBucket!1376 oldBucket!34 lt!1873581)))))))

(declare-fun bs!1100752 () Bool)

(assert (= bs!1100752 d!1498605))

(declare-fun m!5633559 () Bool)

(assert (=> bs!1100752 m!5633559))

(declare-fun m!5633561 () Bool)

(assert (=> bs!1100752 m!5633561))

(assert (=> b!4709220 d!1498605))

(declare-fun d!1498607 () Bool)

(declare-fun e!2937279 () Bool)

(assert (=> d!1498607 e!2937279))

(declare-fun res!1990028 () Bool)

(assert (=> d!1498607 (=> (not res!1990028) (not e!2937279))))

(declare-fun lt!1873597 () ListMap!5145)

(assert (=> d!1498607 (= res!1990028 (contains!15956 lt!1873597 (_1!30383 lt!1873583)))))

(declare-fun lt!1873599 () List!52775)

(assert (=> d!1498607 (= lt!1873597 (ListMap!5146 lt!1873599))))

(declare-fun lt!1873598 () Unit!127526)

(declare-fun lt!1873600 () Unit!127526)

(assert (=> d!1498607 (= lt!1873598 lt!1873600)))

(declare-datatypes ((Option!12260 0))(
  ( (None!12259) (Some!12259 (v!46786 V!14261)) )
))
(declare-fun getValueByKey!1892 (List!52775 K!14015) Option!12260)

(assert (=> d!1498607 (= (getValueByKey!1892 lt!1873599 (_1!30383 lt!1873583)) (Some!12259 (_2!30383 lt!1873583)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1055 (List!52775 K!14015 V!14261) Unit!127526)

(assert (=> d!1498607 (= lt!1873600 (lemmaContainsTupThenGetReturnValue!1055 lt!1873599 (_1!30383 lt!1873583) (_2!30383 lt!1873583)))))

(declare-fun insertNoDuplicatedKeys!563 (List!52775 K!14015 V!14261) List!52775)

(assert (=> d!1498607 (= lt!1873599 (insertNoDuplicatedKeys!563 (toList!5781 lt!1873586) (_1!30383 lt!1873583) (_2!30383 lt!1873583)))))

(assert (=> d!1498607 (= (+!2210 lt!1873586 lt!1873583) lt!1873597)))

(declare-fun b!4709248 () Bool)

(declare-fun res!1990029 () Bool)

(assert (=> b!4709248 (=> (not res!1990029) (not e!2937279))))

(assert (=> b!4709248 (= res!1990029 (= (getValueByKey!1892 (toList!5781 lt!1873597) (_1!30383 lt!1873583)) (Some!12259 (_2!30383 lt!1873583))))))

(declare-fun b!4709249 () Bool)

(declare-fun contains!15957 (List!52775 tuple2!54178) Bool)

(assert (=> b!4709249 (= e!2937279 (contains!15957 (toList!5781 lt!1873597) lt!1873583))))

(assert (= (and d!1498607 res!1990028) b!4709248))

(assert (= (and b!4709248 res!1990029) b!4709249))

(declare-fun m!5633565 () Bool)

(assert (=> d!1498607 m!5633565))

(declare-fun m!5633567 () Bool)

(assert (=> d!1498607 m!5633567))

(declare-fun m!5633569 () Bool)

(assert (=> d!1498607 m!5633569))

(declare-fun m!5633571 () Bool)

(assert (=> d!1498607 m!5633571))

(declare-fun m!5633573 () Bool)

(assert (=> b!4709248 m!5633573))

(declare-fun m!5633575 () Bool)

(assert (=> b!4709249 m!5633575))

(assert (=> b!4709220 d!1498607))

(declare-fun d!1498613 () Bool)

(assert (=> d!1498613 (= (eq!1083 (addToMapMapFromBucket!1376 (Cons!52651 lt!1873583 lt!1873582) lt!1873581) (+!2210 lt!1873586 lt!1873583)) (= (content!9325 (toList!5781 (addToMapMapFromBucket!1376 (Cons!52651 lt!1873583 lt!1873582) lt!1873581))) (content!9325 (toList!5781 (+!2210 lt!1873586 lt!1873583)))))))

(declare-fun bs!1100755 () Bool)

(assert (= bs!1100755 d!1498613))

(declare-fun m!5633585 () Bool)

(assert (=> bs!1100755 m!5633585))

(declare-fun m!5633587 () Bool)

(assert (=> bs!1100755 m!5633587))

(assert (=> b!4709220 d!1498613))

(declare-fun b!4709335 () Bool)

(assert (=> b!4709335 true))

(declare-fun bs!1100797 () Bool)

(declare-fun b!4709338 () Bool)

(assert (= bs!1100797 (and b!4709338 b!4709335)))

(declare-fun lambda!212305 () Int)

(declare-fun lambda!212304 () Int)

(assert (=> bs!1100797 (= lambda!212305 lambda!212304)))

(assert (=> b!4709338 true))

(declare-fun lambda!212306 () Int)

(declare-fun lt!1873759 () ListMap!5145)

(assert (=> bs!1100797 (= (= lt!1873759 lt!1873581) (= lambda!212306 lambda!212304))))

(assert (=> b!4709338 (= (= lt!1873759 lt!1873581) (= lambda!212306 lambda!212305))))

(assert (=> b!4709338 true))

(declare-fun bs!1100798 () Bool)

(declare-fun d!1498617 () Bool)

(assert (= bs!1100798 (and d!1498617 b!4709335)))

(declare-fun lt!1873765 () ListMap!5145)

(declare-fun lambda!212307 () Int)

(assert (=> bs!1100798 (= (= lt!1873765 lt!1873581) (= lambda!212307 lambda!212304))))

(declare-fun bs!1100799 () Bool)

(assert (= bs!1100799 (and d!1498617 b!4709338)))

(assert (=> bs!1100799 (= (= lt!1873765 lt!1873581) (= lambda!212307 lambda!212305))))

(assert (=> bs!1100799 (= (= lt!1873765 lt!1873759) (= lambda!212307 lambda!212306))))

(assert (=> d!1498617 true))

(declare-fun e!2937332 () ListMap!5145)

(assert (=> b!4709335 (= e!2937332 lt!1873581)))

(declare-fun lt!1873761 () Unit!127526)

(declare-fun call!329204 () Unit!127526)

(assert (=> b!4709335 (= lt!1873761 call!329204)))

(declare-fun call!329203 () Bool)

(assert (=> b!4709335 call!329203))

(declare-fun lt!1873760 () Unit!127526)

(assert (=> b!4709335 (= lt!1873760 lt!1873761)))

(declare-fun call!329205 () Bool)

(assert (=> b!4709335 call!329205))

(declare-fun lt!1873757 () Unit!127526)

(declare-fun Unit!127539 () Unit!127526)

(assert (=> b!4709335 (= lt!1873757 Unit!127539)))

(declare-fun e!2937333 () Bool)

(assert (=> d!1498617 e!2937333))

(declare-fun res!1990065 () Bool)

(assert (=> d!1498617 (=> (not res!1990065) (not e!2937333))))

(declare-fun forall!11473 (List!52775 Int) Bool)

(assert (=> d!1498617 (= res!1990065 (forall!11473 (Cons!52651 lt!1873583 lt!1873582) lambda!212307))))

(assert (=> d!1498617 (= lt!1873765 e!2937332)))

(declare-fun c!804618 () Bool)

(assert (=> d!1498617 (= c!804618 ((_ is Nil!52651) (Cons!52651 lt!1873583 lt!1873582)))))

(assert (=> d!1498617 (noDuplicateKeys!1946 (Cons!52651 lt!1873583 lt!1873582))))

(assert (=> d!1498617 (= (addToMapMapFromBucket!1376 (Cons!52651 lt!1873583 lt!1873582) lt!1873581) lt!1873765)))

(declare-fun b!4709336 () Bool)

(declare-fun invariantList!1468 (List!52775) Bool)

(assert (=> b!4709336 (= e!2937333 (invariantList!1468 (toList!5781 lt!1873765)))))

(declare-fun bm!329198 () Bool)

(assert (=> bm!329198 (= call!329203 (forall!11473 (toList!5781 lt!1873581) (ite c!804618 lambda!212304 lambda!212305)))))

(declare-fun bm!329199 () Bool)

(assert (=> bm!329199 (= call!329205 (forall!11473 (toList!5781 lt!1873581) (ite c!804618 lambda!212304 lambda!212306)))))

(declare-fun b!4709337 () Bool)

(declare-fun res!1990064 () Bool)

(assert (=> b!4709337 (=> (not res!1990064) (not e!2937333))))

(assert (=> b!4709337 (= res!1990064 (forall!11473 (toList!5781 lt!1873581) lambda!212307))))

(assert (=> b!4709338 (= e!2937332 lt!1873759)))

(declare-fun lt!1873758 () ListMap!5145)

(assert (=> b!4709338 (= lt!1873758 (+!2210 lt!1873581 (h!58954 (Cons!52651 lt!1873583 lt!1873582))))))

(assert (=> b!4709338 (= lt!1873759 (addToMapMapFromBucket!1376 (t!360007 (Cons!52651 lt!1873583 lt!1873582)) (+!2210 lt!1873581 (h!58954 (Cons!52651 lt!1873583 lt!1873582)))))))

(declare-fun lt!1873766 () Unit!127526)

(assert (=> b!4709338 (= lt!1873766 call!329204)))

(assert (=> b!4709338 call!329203))

(declare-fun lt!1873764 () Unit!127526)

(assert (=> b!4709338 (= lt!1873764 lt!1873766)))

(assert (=> b!4709338 (forall!11473 (toList!5781 lt!1873758) lambda!212306)))

(declare-fun lt!1873768 () Unit!127526)

(declare-fun Unit!127540 () Unit!127526)

(assert (=> b!4709338 (= lt!1873768 Unit!127540)))

(assert (=> b!4709338 (forall!11473 (t!360007 (Cons!52651 lt!1873583 lt!1873582)) lambda!212306)))

(declare-fun lt!1873775 () Unit!127526)

(declare-fun Unit!127541 () Unit!127526)

(assert (=> b!4709338 (= lt!1873775 Unit!127541)))

(declare-fun lt!1873771 () Unit!127526)

(declare-fun Unit!127542 () Unit!127526)

(assert (=> b!4709338 (= lt!1873771 Unit!127542)))

(declare-fun lt!1873773 () Unit!127526)

(declare-fun forallContained!3556 (List!52775 Int tuple2!54178) Unit!127526)

(assert (=> b!4709338 (= lt!1873773 (forallContained!3556 (toList!5781 lt!1873758) lambda!212306 (h!58954 (Cons!52651 lt!1873583 lt!1873582))))))

(assert (=> b!4709338 (contains!15956 lt!1873758 (_1!30383 (h!58954 (Cons!52651 lt!1873583 lt!1873582))))))

(declare-fun lt!1873762 () Unit!127526)

(declare-fun Unit!127543 () Unit!127526)

(assert (=> b!4709338 (= lt!1873762 Unit!127543)))

(assert (=> b!4709338 (contains!15956 lt!1873759 (_1!30383 (h!58954 (Cons!52651 lt!1873583 lt!1873582))))))

(declare-fun lt!1873772 () Unit!127526)

(declare-fun Unit!127544 () Unit!127526)

(assert (=> b!4709338 (= lt!1873772 Unit!127544)))

(assert (=> b!4709338 (forall!11473 (Cons!52651 lt!1873583 lt!1873582) lambda!212306)))

(declare-fun lt!1873767 () Unit!127526)

(declare-fun Unit!127546 () Unit!127526)

(assert (=> b!4709338 (= lt!1873767 Unit!127546)))

(assert (=> b!4709338 (forall!11473 (toList!5781 lt!1873758) lambda!212306)))

(declare-fun lt!1873777 () Unit!127526)

(declare-fun Unit!127547 () Unit!127526)

(assert (=> b!4709338 (= lt!1873777 Unit!127547)))

(declare-fun lt!1873769 () Unit!127526)

(declare-fun Unit!127548 () Unit!127526)

(assert (=> b!4709338 (= lt!1873769 Unit!127548)))

(declare-fun lt!1873770 () Unit!127526)

(declare-fun addForallContainsKeyThenBeforeAdding!755 (ListMap!5145 ListMap!5145 K!14015 V!14261) Unit!127526)

(assert (=> b!4709338 (= lt!1873770 (addForallContainsKeyThenBeforeAdding!755 lt!1873581 lt!1873759 (_1!30383 (h!58954 (Cons!52651 lt!1873583 lt!1873582))) (_2!30383 (h!58954 (Cons!52651 lt!1873583 lt!1873582)))))))

(assert (=> b!4709338 call!329205))

(declare-fun lt!1873776 () Unit!127526)

(assert (=> b!4709338 (= lt!1873776 lt!1873770)))

(assert (=> b!4709338 (forall!11473 (toList!5781 lt!1873581) lambda!212306)))

(declare-fun lt!1873774 () Unit!127526)

(declare-fun Unit!127549 () Unit!127526)

(assert (=> b!4709338 (= lt!1873774 Unit!127549)))

(declare-fun res!1990063 () Bool)

(assert (=> b!4709338 (= res!1990063 (forall!11473 (Cons!52651 lt!1873583 lt!1873582) lambda!212306))))

(declare-fun e!2937331 () Bool)

(assert (=> b!4709338 (=> (not res!1990063) (not e!2937331))))

(assert (=> b!4709338 e!2937331))

(declare-fun lt!1873763 () Unit!127526)

(declare-fun Unit!127550 () Unit!127526)

(assert (=> b!4709338 (= lt!1873763 Unit!127550)))

(declare-fun bm!329200 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!756 (ListMap!5145) Unit!127526)

(assert (=> bm!329200 (= call!329204 (lemmaContainsAllItsOwnKeys!756 lt!1873581))))

(declare-fun b!4709339 () Bool)

(assert (=> b!4709339 (= e!2937331 (forall!11473 (toList!5781 lt!1873581) lambda!212306))))

(assert (= (and d!1498617 c!804618) b!4709335))

(assert (= (and d!1498617 (not c!804618)) b!4709338))

(assert (= (and b!4709338 res!1990063) b!4709339))

(assert (= (or b!4709335 b!4709338) bm!329200))

(assert (= (or b!4709335 b!4709338) bm!329198))

(assert (= (or b!4709335 b!4709338) bm!329199))

(assert (= (and d!1498617 res!1990065) b!4709337))

(assert (= (and b!4709337 res!1990064) b!4709336))

(declare-fun m!5633711 () Bool)

(assert (=> bm!329200 m!5633711))

(declare-fun m!5633713 () Bool)

(assert (=> d!1498617 m!5633713))

(declare-fun m!5633717 () Bool)

(assert (=> d!1498617 m!5633717))

(declare-fun m!5633719 () Bool)

(assert (=> b!4709336 m!5633719))

(declare-fun m!5633723 () Bool)

(assert (=> b!4709338 m!5633723))

(declare-fun m!5633725 () Bool)

(assert (=> b!4709338 m!5633725))

(declare-fun m!5633727 () Bool)

(assert (=> b!4709338 m!5633727))

(declare-fun m!5633729 () Bool)

(assert (=> b!4709338 m!5633729))

(declare-fun m!5633731 () Bool)

(assert (=> b!4709338 m!5633731))

(declare-fun m!5633733 () Bool)

(assert (=> b!4709338 m!5633733))

(declare-fun m!5633735 () Bool)

(assert (=> b!4709338 m!5633735))

(declare-fun m!5633737 () Bool)

(assert (=> b!4709338 m!5633737))

(assert (=> b!4709338 m!5633729))

(declare-fun m!5633739 () Bool)

(assert (=> b!4709338 m!5633739))

(declare-fun m!5633741 () Bool)

(assert (=> b!4709338 m!5633741))

(assert (=> b!4709338 m!5633725))

(assert (=> b!4709338 m!5633723))

(declare-fun m!5633743 () Bool)

(assert (=> b!4709337 m!5633743))

(declare-fun m!5633745 () Bool)

(assert (=> bm!329198 m!5633745))

(declare-fun m!5633747 () Bool)

(assert (=> bm!329199 m!5633747))

(assert (=> b!4709339 m!5633737))

(assert (=> b!4709220 d!1498617))

(declare-fun d!1498651 () Bool)

(assert (=> d!1498651 (eq!1083 (addToMapMapFromBucket!1376 (Cons!52651 lt!1873583 lt!1873582) lt!1873581) (+!2210 (addToMapMapFromBucket!1376 lt!1873582 lt!1873581) lt!1873583))))

(declare-fun lt!1873783 () Unit!127526)

(declare-fun choose!33108 (tuple2!54178 List!52775 ListMap!5145) Unit!127526)

(assert (=> d!1498651 (= lt!1873783 (choose!33108 lt!1873583 lt!1873582 lt!1873581))))

(assert (=> d!1498651 (noDuplicateKeys!1946 lt!1873582)))

(assert (=> d!1498651 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!332 lt!1873583 lt!1873582 lt!1873581) lt!1873783)))

(declare-fun bs!1100803 () Bool)

(assert (= bs!1100803 d!1498651))

(assert (=> bs!1100803 m!5633535))

(declare-fun m!5633755 () Bool)

(assert (=> bs!1100803 m!5633755))

(declare-fun m!5633757 () Bool)

(assert (=> bs!1100803 m!5633757))

(declare-fun m!5633759 () Bool)

(assert (=> bs!1100803 m!5633759))

(assert (=> bs!1100803 m!5633513))

(assert (=> bs!1100803 m!5633755))

(assert (=> bs!1100803 m!5633513))

(assert (=> bs!1100803 m!5633535))

(declare-fun m!5633761 () Bool)

(assert (=> bs!1100803 m!5633761))

(assert (=> b!4709220 d!1498651))

(declare-fun bs!1100804 () Bool)

(declare-fun b!4709348 () Bool)

(assert (= bs!1100804 (and b!4709348 b!4709335)))

(declare-fun lambda!212308 () Int)

(assert (=> bs!1100804 (= lambda!212308 lambda!212304)))

(declare-fun bs!1100805 () Bool)

(assert (= bs!1100805 (and b!4709348 b!4709338)))

(assert (=> bs!1100805 (= lambda!212308 lambda!212305)))

(assert (=> bs!1100805 (= (= lt!1873581 lt!1873759) (= lambda!212308 lambda!212306))))

(declare-fun bs!1100806 () Bool)

(assert (= bs!1100806 (and b!4709348 d!1498617)))

(assert (=> bs!1100806 (= (= lt!1873581 lt!1873765) (= lambda!212308 lambda!212307))))

(assert (=> b!4709348 true))

(declare-fun bs!1100807 () Bool)

(declare-fun b!4709351 () Bool)

(assert (= bs!1100807 (and b!4709351 b!4709335)))

(declare-fun lambda!212309 () Int)

(assert (=> bs!1100807 (= lambda!212309 lambda!212304)))

(declare-fun bs!1100808 () Bool)

(assert (= bs!1100808 (and b!4709351 d!1498617)))

(assert (=> bs!1100808 (= (= lt!1873581 lt!1873765) (= lambda!212309 lambda!212307))))

(declare-fun bs!1100809 () Bool)

(assert (= bs!1100809 (and b!4709351 b!4709338)))

(assert (=> bs!1100809 (= (= lt!1873581 lt!1873759) (= lambda!212309 lambda!212306))))

(declare-fun bs!1100810 () Bool)

(assert (= bs!1100810 (and b!4709351 b!4709348)))

(assert (=> bs!1100810 (= lambda!212309 lambda!212308)))

(assert (=> bs!1100809 (= lambda!212309 lambda!212305)))

(assert (=> b!4709351 true))

(declare-fun lambda!212310 () Int)

(declare-fun lt!1873786 () ListMap!5145)

(assert (=> bs!1100807 (= (= lt!1873786 lt!1873581) (= lambda!212310 lambda!212304))))

(assert (=> bs!1100808 (= (= lt!1873786 lt!1873765) (= lambda!212310 lambda!212307))))

(assert (=> b!4709351 (= (= lt!1873786 lt!1873581) (= lambda!212310 lambda!212309))))

(assert (=> bs!1100809 (= (= lt!1873786 lt!1873759) (= lambda!212310 lambda!212306))))

(assert (=> bs!1100810 (= (= lt!1873786 lt!1873581) (= lambda!212310 lambda!212308))))

(assert (=> bs!1100809 (= (= lt!1873786 lt!1873581) (= lambda!212310 lambda!212305))))

(assert (=> b!4709351 true))

(declare-fun bs!1100811 () Bool)

(declare-fun d!1498655 () Bool)

(assert (= bs!1100811 (and d!1498655 b!4709335)))

(declare-fun lt!1873792 () ListMap!5145)

(declare-fun lambda!212311 () Int)

(assert (=> bs!1100811 (= (= lt!1873792 lt!1873581) (= lambda!212311 lambda!212304))))

(declare-fun bs!1100812 () Bool)

(assert (= bs!1100812 (and d!1498655 d!1498617)))

(assert (=> bs!1100812 (= (= lt!1873792 lt!1873765) (= lambda!212311 lambda!212307))))

(declare-fun bs!1100813 () Bool)

(assert (= bs!1100813 (and d!1498655 b!4709351)))

(assert (=> bs!1100813 (= (= lt!1873792 lt!1873581) (= lambda!212311 lambda!212309))))

(declare-fun bs!1100814 () Bool)

(assert (= bs!1100814 (and d!1498655 b!4709338)))

(assert (=> bs!1100814 (= (= lt!1873792 lt!1873759) (= lambda!212311 lambda!212306))))

(declare-fun bs!1100815 () Bool)

(assert (= bs!1100815 (and d!1498655 b!4709348)))

(assert (=> bs!1100815 (= (= lt!1873792 lt!1873581) (= lambda!212311 lambda!212308))))

(assert (=> bs!1100814 (= (= lt!1873792 lt!1873581) (= lambda!212311 lambda!212305))))

(assert (=> bs!1100813 (= (= lt!1873792 lt!1873786) (= lambda!212311 lambda!212310))))

(assert (=> d!1498655 true))

(declare-fun e!2937341 () ListMap!5145)

(assert (=> b!4709348 (= e!2937341 lt!1873581)))

(declare-fun lt!1873788 () Unit!127526)

(declare-fun call!329207 () Unit!127526)

(assert (=> b!4709348 (= lt!1873788 call!329207)))

(declare-fun call!329206 () Bool)

(assert (=> b!4709348 call!329206))

(declare-fun lt!1873787 () Unit!127526)

(assert (=> b!4709348 (= lt!1873787 lt!1873788)))

(declare-fun call!329208 () Bool)

(assert (=> b!4709348 call!329208))

(declare-fun lt!1873784 () Unit!127526)

(declare-fun Unit!127561 () Unit!127526)

(assert (=> b!4709348 (= lt!1873784 Unit!127561)))

(declare-fun e!2937342 () Bool)

(assert (=> d!1498655 e!2937342))

(declare-fun res!1990074 () Bool)

(assert (=> d!1498655 (=> (not res!1990074) (not e!2937342))))

(assert (=> d!1498655 (= res!1990074 (forall!11473 oldBucket!34 lambda!212311))))

(assert (=> d!1498655 (= lt!1873792 e!2937341)))

(declare-fun c!804619 () Bool)

(assert (=> d!1498655 (= c!804619 ((_ is Nil!52651) oldBucket!34))))

(assert (=> d!1498655 (noDuplicateKeys!1946 oldBucket!34)))

(assert (=> d!1498655 (= (addToMapMapFromBucket!1376 oldBucket!34 lt!1873581) lt!1873792)))

(declare-fun b!4709349 () Bool)

(assert (=> b!4709349 (= e!2937342 (invariantList!1468 (toList!5781 lt!1873792)))))

(declare-fun bm!329201 () Bool)

(assert (=> bm!329201 (= call!329206 (forall!11473 (toList!5781 lt!1873581) (ite c!804619 lambda!212308 lambda!212309)))))

(declare-fun bm!329202 () Bool)

(assert (=> bm!329202 (= call!329208 (forall!11473 (toList!5781 lt!1873581) (ite c!804619 lambda!212308 lambda!212310)))))

(declare-fun b!4709350 () Bool)

(declare-fun res!1990073 () Bool)

(assert (=> b!4709350 (=> (not res!1990073) (not e!2937342))))

(assert (=> b!4709350 (= res!1990073 (forall!11473 (toList!5781 lt!1873581) lambda!212311))))

(assert (=> b!4709351 (= e!2937341 lt!1873786)))

(declare-fun lt!1873785 () ListMap!5145)

(assert (=> b!4709351 (= lt!1873785 (+!2210 lt!1873581 (h!58954 oldBucket!34)))))

(assert (=> b!4709351 (= lt!1873786 (addToMapMapFromBucket!1376 (t!360007 oldBucket!34) (+!2210 lt!1873581 (h!58954 oldBucket!34))))))

(declare-fun lt!1873793 () Unit!127526)

(assert (=> b!4709351 (= lt!1873793 call!329207)))

(assert (=> b!4709351 call!329206))

(declare-fun lt!1873791 () Unit!127526)

(assert (=> b!4709351 (= lt!1873791 lt!1873793)))

(assert (=> b!4709351 (forall!11473 (toList!5781 lt!1873785) lambda!212310)))

(declare-fun lt!1873795 () Unit!127526)

(declare-fun Unit!127562 () Unit!127526)

(assert (=> b!4709351 (= lt!1873795 Unit!127562)))

(assert (=> b!4709351 (forall!11473 (t!360007 oldBucket!34) lambda!212310)))

(declare-fun lt!1873802 () Unit!127526)

(declare-fun Unit!127563 () Unit!127526)

(assert (=> b!4709351 (= lt!1873802 Unit!127563)))

(declare-fun lt!1873798 () Unit!127526)

(declare-fun Unit!127564 () Unit!127526)

(assert (=> b!4709351 (= lt!1873798 Unit!127564)))

(declare-fun lt!1873800 () Unit!127526)

(assert (=> b!4709351 (= lt!1873800 (forallContained!3556 (toList!5781 lt!1873785) lambda!212310 (h!58954 oldBucket!34)))))

(assert (=> b!4709351 (contains!15956 lt!1873785 (_1!30383 (h!58954 oldBucket!34)))))

(declare-fun lt!1873789 () Unit!127526)

(declare-fun Unit!127565 () Unit!127526)

(assert (=> b!4709351 (= lt!1873789 Unit!127565)))

(assert (=> b!4709351 (contains!15956 lt!1873786 (_1!30383 (h!58954 oldBucket!34)))))

(declare-fun lt!1873799 () Unit!127526)

(declare-fun Unit!127566 () Unit!127526)

(assert (=> b!4709351 (= lt!1873799 Unit!127566)))

(assert (=> b!4709351 (forall!11473 oldBucket!34 lambda!212310)))

(declare-fun lt!1873794 () Unit!127526)

(declare-fun Unit!127567 () Unit!127526)

(assert (=> b!4709351 (= lt!1873794 Unit!127567)))

(assert (=> b!4709351 (forall!11473 (toList!5781 lt!1873785) lambda!212310)))

(declare-fun lt!1873804 () Unit!127526)

(declare-fun Unit!127568 () Unit!127526)

(assert (=> b!4709351 (= lt!1873804 Unit!127568)))

(declare-fun lt!1873796 () Unit!127526)

(declare-fun Unit!127569 () Unit!127526)

(assert (=> b!4709351 (= lt!1873796 Unit!127569)))

(declare-fun lt!1873797 () Unit!127526)

(assert (=> b!4709351 (= lt!1873797 (addForallContainsKeyThenBeforeAdding!755 lt!1873581 lt!1873786 (_1!30383 (h!58954 oldBucket!34)) (_2!30383 (h!58954 oldBucket!34))))))

(assert (=> b!4709351 call!329208))

(declare-fun lt!1873803 () Unit!127526)

(assert (=> b!4709351 (= lt!1873803 lt!1873797)))

(assert (=> b!4709351 (forall!11473 (toList!5781 lt!1873581) lambda!212310)))

(declare-fun lt!1873801 () Unit!127526)

(declare-fun Unit!127570 () Unit!127526)

(assert (=> b!4709351 (= lt!1873801 Unit!127570)))

(declare-fun res!1990072 () Bool)

(assert (=> b!4709351 (= res!1990072 (forall!11473 oldBucket!34 lambda!212310))))

(declare-fun e!2937340 () Bool)

(assert (=> b!4709351 (=> (not res!1990072) (not e!2937340))))

(assert (=> b!4709351 e!2937340))

(declare-fun lt!1873790 () Unit!127526)

(declare-fun Unit!127571 () Unit!127526)

(assert (=> b!4709351 (= lt!1873790 Unit!127571)))

(declare-fun bm!329203 () Bool)

(assert (=> bm!329203 (= call!329207 (lemmaContainsAllItsOwnKeys!756 lt!1873581))))

(declare-fun b!4709352 () Bool)

(assert (=> b!4709352 (= e!2937340 (forall!11473 (toList!5781 lt!1873581) lambda!212310))))

(assert (= (and d!1498655 c!804619) b!4709348))

(assert (= (and d!1498655 (not c!804619)) b!4709351))

(assert (= (and b!4709351 res!1990072) b!4709352))

(assert (= (or b!4709348 b!4709351) bm!329203))

(assert (= (or b!4709348 b!4709351) bm!329201))

(assert (= (or b!4709348 b!4709351) bm!329202))

(assert (= (and d!1498655 res!1990074) b!4709350))

(assert (= (and b!4709350 res!1990073) b!4709349))

(assert (=> bm!329203 m!5633711))

(declare-fun m!5633763 () Bool)

(assert (=> d!1498655 m!5633763))

(assert (=> d!1498655 m!5633553))

(declare-fun m!5633765 () Bool)

(assert (=> b!4709349 m!5633765))

(declare-fun m!5633767 () Bool)

(assert (=> b!4709351 m!5633767))

(declare-fun m!5633769 () Bool)

(assert (=> b!4709351 m!5633769))

(declare-fun m!5633771 () Bool)

(assert (=> b!4709351 m!5633771))

(declare-fun m!5633773 () Bool)

(assert (=> b!4709351 m!5633773))

(declare-fun m!5633775 () Bool)

(assert (=> b!4709351 m!5633775))

(declare-fun m!5633777 () Bool)

(assert (=> b!4709351 m!5633777))

(declare-fun m!5633779 () Bool)

(assert (=> b!4709351 m!5633779))

(declare-fun m!5633781 () Bool)

(assert (=> b!4709351 m!5633781))

(assert (=> b!4709351 m!5633773))

(declare-fun m!5633783 () Bool)

(assert (=> b!4709351 m!5633783))

(declare-fun m!5633785 () Bool)

(assert (=> b!4709351 m!5633785))

(assert (=> b!4709351 m!5633769))

(assert (=> b!4709351 m!5633767))

(declare-fun m!5633787 () Bool)

(assert (=> b!4709350 m!5633787))

(declare-fun m!5633789 () Bool)

(assert (=> bm!329201 m!5633789))

(declare-fun m!5633791 () Bool)

(assert (=> bm!329202 m!5633791))

(assert (=> b!4709352 m!5633781))

(assert (=> b!4709220 d!1498655))

(declare-fun d!1498657 () Bool)

(declare-fun e!2937343 () Bool)

(assert (=> d!1498657 e!2937343))

(declare-fun res!1990075 () Bool)

(assert (=> d!1498657 (=> (not res!1990075) (not e!2937343))))

(declare-fun lt!1873805 () ListMap!5145)

(assert (=> d!1498657 (= res!1990075 (contains!15956 lt!1873805 (_1!30383 (h!58954 oldBucket!34))))))

(declare-fun lt!1873807 () List!52775)

(assert (=> d!1498657 (= lt!1873805 (ListMap!5146 lt!1873807))))

(declare-fun lt!1873806 () Unit!127526)

(declare-fun lt!1873808 () Unit!127526)

(assert (=> d!1498657 (= lt!1873806 lt!1873808)))

(assert (=> d!1498657 (= (getValueByKey!1892 lt!1873807 (_1!30383 (h!58954 oldBucket!34))) (Some!12259 (_2!30383 (h!58954 oldBucket!34))))))

(assert (=> d!1498657 (= lt!1873808 (lemmaContainsTupThenGetReturnValue!1055 lt!1873807 (_1!30383 (h!58954 oldBucket!34)) (_2!30383 (h!58954 oldBucket!34))))))

(assert (=> d!1498657 (= lt!1873807 (insertNoDuplicatedKeys!563 (toList!5781 lt!1873586) (_1!30383 (h!58954 oldBucket!34)) (_2!30383 (h!58954 oldBucket!34))))))

(assert (=> d!1498657 (= (+!2210 lt!1873586 (h!58954 oldBucket!34)) lt!1873805)))

(declare-fun b!4709353 () Bool)

(declare-fun res!1990076 () Bool)

(assert (=> b!4709353 (=> (not res!1990076) (not e!2937343))))

(assert (=> b!4709353 (= res!1990076 (= (getValueByKey!1892 (toList!5781 lt!1873805) (_1!30383 (h!58954 oldBucket!34))) (Some!12259 (_2!30383 (h!58954 oldBucket!34)))))))

(declare-fun b!4709354 () Bool)

(assert (=> b!4709354 (= e!2937343 (contains!15957 (toList!5781 lt!1873805) (h!58954 oldBucket!34)))))

(assert (= (and d!1498657 res!1990075) b!4709353))

(assert (= (and b!4709353 res!1990076) b!4709354))

(declare-fun m!5633793 () Bool)

(assert (=> d!1498657 m!5633793))

(declare-fun m!5633795 () Bool)

(assert (=> d!1498657 m!5633795))

(declare-fun m!5633797 () Bool)

(assert (=> d!1498657 m!5633797))

(declare-fun m!5633799 () Bool)

(assert (=> d!1498657 m!5633799))

(declare-fun m!5633801 () Bool)

(assert (=> b!4709353 m!5633801))

(declare-fun m!5633803 () Bool)

(assert (=> b!4709354 m!5633803))

(assert (=> b!4709220 d!1498657))

(declare-fun d!1498659 () Bool)

(assert (=> d!1498659 (= (tail!8830 oldBucket!34) (t!360007 oldBucket!34))))

(assert (=> b!4709229 d!1498659))

(declare-fun bs!1100816 () Bool)

(declare-fun d!1498661 () Bool)

(assert (= bs!1100816 (and d!1498661 b!4709335)))

(declare-fun lambda!212314 () Int)

(assert (=> bs!1100816 (not (= lambda!212314 lambda!212304))))

(declare-fun bs!1100817 () Bool)

(assert (= bs!1100817 (and d!1498661 d!1498617)))

(assert (=> bs!1100817 (not (= lambda!212314 lambda!212307))))

(declare-fun bs!1100818 () Bool)

(assert (= bs!1100818 (and d!1498661 b!4709351)))

(assert (=> bs!1100818 (not (= lambda!212314 lambda!212309))))

(declare-fun bs!1100819 () Bool)

(assert (= bs!1100819 (and d!1498661 b!4709338)))

(assert (=> bs!1100819 (not (= lambda!212314 lambda!212306))))

(declare-fun bs!1100820 () Bool)

(assert (= bs!1100820 (and d!1498661 b!4709348)))

(assert (=> bs!1100820 (not (= lambda!212314 lambda!212308))))

(assert (=> bs!1100819 (not (= lambda!212314 lambda!212305))))

(assert (=> bs!1100818 (not (= lambda!212314 lambda!212310))))

(declare-fun bs!1100821 () Bool)

(assert (= bs!1100821 (and d!1498661 d!1498655)))

(assert (=> bs!1100821 (not (= lambda!212314 lambda!212311))))

(assert (=> d!1498661 true))

(assert (=> d!1498661 true))

(assert (=> d!1498661 (= (allKeysSameHash!1772 newBucket!218 hash!405 hashF!1323) (forall!11473 newBucket!218 lambda!212314))))

(declare-fun bs!1100822 () Bool)

(assert (= bs!1100822 d!1498661))

(declare-fun m!5633817 () Bool)

(assert (=> bs!1100822 m!5633817))

(assert (=> b!4709219 d!1498661))

(declare-fun bm!329215 () Bool)

(declare-fun call!329220 () Bool)

(declare-datatypes ((List!52778 0))(
  ( (Nil!52654) (Cons!52654 (h!58959 K!14015) (t!360012 List!52778)) )
))
(declare-fun e!2937375 () List!52778)

(declare-fun contains!15959 (List!52778 K!14015) Bool)

(assert (=> bm!329215 (= call!329220 (contains!15959 e!2937375 key!4653))))

(declare-fun c!804630 () Bool)

(declare-fun c!804631 () Bool)

(assert (=> bm!329215 (= c!804630 c!804631)))

(declare-fun b!4709402 () Bool)

(declare-fun getKeysList!908 (List!52775) List!52778)

(assert (=> b!4709402 (= e!2937375 (getKeysList!908 (toList!5781 lt!1873585)))))

(declare-fun b!4709403 () Bool)

(declare-fun e!2937374 () Bool)

(declare-fun e!2937373 () Bool)

(assert (=> b!4709403 (= e!2937374 e!2937373)))

(declare-fun res!1990104 () Bool)

(assert (=> b!4709403 (=> (not res!1990104) (not e!2937373))))

(declare-fun isDefined!9516 (Option!12260) Bool)

(assert (=> b!4709403 (= res!1990104 (isDefined!9516 (getValueByKey!1892 (toList!5781 lt!1873585) key!4653)))))

(declare-fun b!4709404 () Bool)

(declare-fun keys!18863 (ListMap!5145) List!52778)

(assert (=> b!4709404 (= e!2937373 (contains!15959 (keys!18863 lt!1873585) key!4653))))

(declare-fun b!4709405 () Bool)

(assert (=> b!4709405 (= e!2937375 (keys!18863 lt!1873585))))

(declare-fun b!4709406 () Bool)

(assert (=> b!4709406 false))

(declare-fun lt!1873907 () Unit!127526)

(declare-fun lt!1873909 () Unit!127526)

(assert (=> b!4709406 (= lt!1873907 lt!1873909)))

(declare-fun containsKey!3244 (List!52775 K!14015) Bool)

(assert (=> b!4709406 (containsKey!3244 (toList!5781 lt!1873585) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!907 (List!52775 K!14015) Unit!127526)

(assert (=> b!4709406 (= lt!1873909 (lemmaInGetKeysListThenContainsKey!907 (toList!5781 lt!1873585) key!4653))))

(declare-fun e!2937372 () Unit!127526)

(declare-fun Unit!127574 () Unit!127526)

(assert (=> b!4709406 (= e!2937372 Unit!127574)))

(declare-fun b!4709407 () Bool)

(declare-fun e!2937376 () Unit!127526)

(declare-fun lt!1873910 () Unit!127526)

(assert (=> b!4709407 (= e!2937376 lt!1873910)))

(declare-fun lt!1873911 () Unit!127526)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1785 (List!52775 K!14015) Unit!127526)

(assert (=> b!4709407 (= lt!1873911 (lemmaContainsKeyImpliesGetValueByKeyDefined!1785 (toList!5781 lt!1873585) key!4653))))

(assert (=> b!4709407 (isDefined!9516 (getValueByKey!1892 (toList!5781 lt!1873585) key!4653))))

(declare-fun lt!1873904 () Unit!127526)

(assert (=> b!4709407 (= lt!1873904 lt!1873911)))

(declare-fun lemmaInListThenGetKeysListContains!903 (List!52775 K!14015) Unit!127526)

(assert (=> b!4709407 (= lt!1873910 (lemmaInListThenGetKeysListContains!903 (toList!5781 lt!1873585) key!4653))))

(assert (=> b!4709407 call!329220))

(declare-fun b!4709408 () Bool)

(declare-fun e!2937371 () Bool)

(assert (=> b!4709408 (= e!2937371 (not (contains!15959 (keys!18863 lt!1873585) key!4653)))))

(declare-fun d!1498665 () Bool)

(assert (=> d!1498665 e!2937374))

(declare-fun res!1990103 () Bool)

(assert (=> d!1498665 (=> res!1990103 e!2937374)))

(assert (=> d!1498665 (= res!1990103 e!2937371)))

(declare-fun res!1990102 () Bool)

(assert (=> d!1498665 (=> (not res!1990102) (not e!2937371))))

(declare-fun lt!1873908 () Bool)

(assert (=> d!1498665 (= res!1990102 (not lt!1873908))))

(declare-fun lt!1873905 () Bool)

(assert (=> d!1498665 (= lt!1873908 lt!1873905)))

(declare-fun lt!1873906 () Unit!127526)

(assert (=> d!1498665 (= lt!1873906 e!2937376)))

(assert (=> d!1498665 (= c!804631 lt!1873905)))

(assert (=> d!1498665 (= lt!1873905 (containsKey!3244 (toList!5781 lt!1873585) key!4653))))

(assert (=> d!1498665 (= (contains!15956 lt!1873585 key!4653) lt!1873908)))

(declare-fun b!4709409 () Bool)

(assert (=> b!4709409 (= e!2937376 e!2937372)))

(declare-fun c!804629 () Bool)

(assert (=> b!4709409 (= c!804629 call!329220)))

(declare-fun b!4709410 () Bool)

(declare-fun Unit!127575 () Unit!127526)

(assert (=> b!4709410 (= e!2937372 Unit!127575)))

(assert (= (and d!1498665 c!804631) b!4709407))

(assert (= (and d!1498665 (not c!804631)) b!4709409))

(assert (= (and b!4709409 c!804629) b!4709406))

(assert (= (and b!4709409 (not c!804629)) b!4709410))

(assert (= (or b!4709407 b!4709409) bm!329215))

(assert (= (and bm!329215 c!804630) b!4709402))

(assert (= (and bm!329215 (not c!804630)) b!4709405))

(assert (= (and d!1498665 res!1990102) b!4709408))

(assert (= (and d!1498665 (not res!1990103)) b!4709403))

(assert (= (and b!4709403 res!1990104) b!4709404))

(declare-fun m!5633897 () Bool)

(assert (=> bm!329215 m!5633897))

(declare-fun m!5633899 () Bool)

(assert (=> b!4709403 m!5633899))

(assert (=> b!4709403 m!5633899))

(declare-fun m!5633901 () Bool)

(assert (=> b!4709403 m!5633901))

(declare-fun m!5633903 () Bool)

(assert (=> b!4709404 m!5633903))

(assert (=> b!4709404 m!5633903))

(declare-fun m!5633905 () Bool)

(assert (=> b!4709404 m!5633905))

(declare-fun m!5633907 () Bool)

(assert (=> b!4709402 m!5633907))

(declare-fun m!5633909 () Bool)

(assert (=> b!4709406 m!5633909))

(declare-fun m!5633911 () Bool)

(assert (=> b!4709406 m!5633911))

(assert (=> b!4709408 m!5633903))

(assert (=> b!4709408 m!5633903))

(assert (=> b!4709408 m!5633905))

(declare-fun m!5633913 () Bool)

(assert (=> b!4709407 m!5633913))

(assert (=> b!4709407 m!5633899))

(assert (=> b!4709407 m!5633899))

(assert (=> b!4709407 m!5633901))

(declare-fun m!5633915 () Bool)

(assert (=> b!4709407 m!5633915))

(assert (=> b!4709405 m!5633903))

(assert (=> d!1498665 m!5633909))

(assert (=> b!4709230 d!1498665))

(declare-fun bs!1100937 () Bool)

(declare-fun d!1498677 () Bool)

(assert (= bs!1100937 (and d!1498677 start!478380)))

(declare-fun lambda!212330 () Int)

(assert (=> bs!1100937 (= lambda!212330 lambda!212227)))

(declare-fun lt!1873915 () ListMap!5145)

(assert (=> d!1498677 (invariantList!1468 (toList!5781 lt!1873915))))

(declare-fun e!2937386 () ListMap!5145)

(assert (=> d!1498677 (= lt!1873915 e!2937386)))

(declare-fun c!804635 () Bool)

(assert (=> d!1498677 (= c!804635 ((_ is Cons!52652) (toList!5782 lm!2023)))))

(assert (=> d!1498677 (forall!11471 (toList!5782 lm!2023) lambda!212330)))

(assert (=> d!1498677 (= (extractMap!1972 (toList!5782 lm!2023)) lt!1873915)))

(declare-fun b!4709427 () Bool)

(assert (=> b!4709427 (= e!2937386 (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (toList!5782 lm!2023))) (extractMap!1972 (t!360008 (toList!5782 lm!2023)))))))

(declare-fun b!4709428 () Bool)

(assert (=> b!4709428 (= e!2937386 (ListMap!5146 Nil!52651))))

(assert (= (and d!1498677 c!804635) b!4709427))

(assert (= (and d!1498677 (not c!804635)) b!4709428))

(declare-fun m!5633959 () Bool)

(assert (=> d!1498677 m!5633959))

(declare-fun m!5633961 () Bool)

(assert (=> d!1498677 m!5633961))

(assert (=> b!4709427 m!5633547))

(assert (=> b!4709427 m!5633547))

(declare-fun m!5633963 () Bool)

(assert (=> b!4709427 m!5633963))

(assert (=> b!4709230 d!1498677))

(declare-fun d!1498685 () Bool)

(declare-fun res!1990109 () Bool)

(declare-fun e!2937392 () Bool)

(assert (=> d!1498685 (=> res!1990109 e!2937392)))

(assert (=> d!1498685 (= res!1990109 (not ((_ is Cons!52651) newBucket!218)))))

(assert (=> d!1498685 (= (noDuplicateKeys!1946 newBucket!218) e!2937392)))

(declare-fun b!4709434 () Bool)

(declare-fun e!2937393 () Bool)

(assert (=> b!4709434 (= e!2937392 e!2937393)))

(declare-fun res!1990110 () Bool)

(assert (=> b!4709434 (=> (not res!1990110) (not e!2937393))))

(declare-fun containsKey!3245 (List!52775 K!14015) Bool)

(assert (=> b!4709434 (= res!1990110 (not (containsKey!3245 (t!360007 newBucket!218) (_1!30383 (h!58954 newBucket!218)))))))

(declare-fun b!4709435 () Bool)

(assert (=> b!4709435 (= e!2937393 (noDuplicateKeys!1946 (t!360007 newBucket!218)))))

(assert (= (and d!1498685 (not res!1990109)) b!4709434))

(assert (= (and b!4709434 res!1990110) b!4709435))

(declare-fun m!5633965 () Bool)

(assert (=> b!4709434 m!5633965))

(declare-fun m!5633967 () Bool)

(assert (=> b!4709435 m!5633967))

(assert (=> b!4709218 d!1498685))

(declare-fun d!1498687 () Bool)

(assert (=> d!1498687 (= (head!10132 (toList!5782 lm!2023)) (h!58955 (toList!5782 lm!2023)))))

(assert (=> b!4709227 d!1498687))

(declare-fun bs!1100939 () Bool)

(declare-fun d!1498689 () Bool)

(assert (= bs!1100939 (and d!1498689 start!478380)))

(declare-fun lambda!212333 () Int)

(assert (=> bs!1100939 (not (= lambda!212333 lambda!212227))))

(declare-fun bs!1100940 () Bool)

(assert (= bs!1100940 (and d!1498689 d!1498677)))

(assert (=> bs!1100940 (not (= lambda!212333 lambda!212330))))

(assert (=> d!1498689 true))

(assert (=> d!1498689 (= (allKeysSameHashInMap!1860 lm!2023 hashF!1323) (forall!11471 (toList!5782 lm!2023) lambda!212333))))

(declare-fun bs!1100941 () Bool)

(assert (= bs!1100941 d!1498689))

(declare-fun m!5633969 () Bool)

(assert (=> bs!1100941 m!5633969))

(assert (=> b!4709225 d!1498689))

(declare-fun bs!1100942 () Bool)

(declare-fun d!1498691 () Bool)

(assert (= bs!1100942 (and d!1498691 b!4709335)))

(declare-fun lambda!212334 () Int)

(assert (=> bs!1100942 (not (= lambda!212334 lambda!212304))))

(declare-fun bs!1100943 () Bool)

(assert (= bs!1100943 (and d!1498691 d!1498617)))

(assert (=> bs!1100943 (not (= lambda!212334 lambda!212307))))

(declare-fun bs!1100944 () Bool)

(assert (= bs!1100944 (and d!1498691 b!4709351)))

(assert (=> bs!1100944 (not (= lambda!212334 lambda!212309))))

(declare-fun bs!1100945 () Bool)

(assert (= bs!1100945 (and d!1498691 b!4709338)))

(assert (=> bs!1100945 (not (= lambda!212334 lambda!212306))))

(declare-fun bs!1100946 () Bool)

(assert (= bs!1100946 (and d!1498691 b!4709348)))

(assert (=> bs!1100946 (not (= lambda!212334 lambda!212308))))

(declare-fun bs!1100947 () Bool)

(assert (= bs!1100947 (and d!1498691 d!1498661)))

(assert (=> bs!1100947 (= lambda!212334 lambda!212314)))

(assert (=> bs!1100945 (not (= lambda!212334 lambda!212305))))

(assert (=> bs!1100944 (not (= lambda!212334 lambda!212310))))

(declare-fun bs!1100948 () Bool)

(assert (= bs!1100948 (and d!1498691 d!1498655)))

(assert (=> bs!1100948 (not (= lambda!212334 lambda!212311))))

(assert (=> d!1498691 true))

(assert (=> d!1498691 true))

(assert (=> d!1498691 (= (allKeysSameHash!1772 oldBucket!34 hash!405 hashF!1323) (forall!11473 oldBucket!34 lambda!212334))))

(declare-fun bs!1100949 () Bool)

(assert (= bs!1100949 d!1498691))

(declare-fun m!5633971 () Bool)

(assert (=> bs!1100949 m!5633971))

(assert (=> b!4709224 d!1498691))

(declare-fun bs!1100950 () Bool)

(declare-fun b!4709438 () Bool)

(assert (= bs!1100950 (and b!4709438 d!1498617)))

(declare-fun lambda!212335 () Int)

(assert (=> bs!1100950 (= (= lt!1873581 lt!1873765) (= lambda!212335 lambda!212307))))

(declare-fun bs!1100951 () Bool)

(assert (= bs!1100951 (and b!4709438 b!4709351)))

(assert (=> bs!1100951 (= lambda!212335 lambda!212309)))

(declare-fun bs!1100952 () Bool)

(assert (= bs!1100952 (and b!4709438 b!4709338)))

(assert (=> bs!1100952 (= (= lt!1873581 lt!1873759) (= lambda!212335 lambda!212306))))

(declare-fun bs!1100953 () Bool)

(assert (= bs!1100953 (and b!4709438 b!4709348)))

(assert (=> bs!1100953 (= lambda!212335 lambda!212308)))

(declare-fun bs!1100954 () Bool)

(assert (= bs!1100954 (and b!4709438 d!1498661)))

(assert (=> bs!1100954 (not (= lambda!212335 lambda!212314))))

(assert (=> bs!1100952 (= lambda!212335 lambda!212305)))

(assert (=> bs!1100951 (= (= lt!1873581 lt!1873786) (= lambda!212335 lambda!212310))))

(declare-fun bs!1100955 () Bool)

(assert (= bs!1100955 (and b!4709438 d!1498655)))

(assert (=> bs!1100955 (= (= lt!1873581 lt!1873792) (= lambda!212335 lambda!212311))))

(declare-fun bs!1100956 () Bool)

(assert (= bs!1100956 (and b!4709438 d!1498691)))

(assert (=> bs!1100956 (not (= lambda!212335 lambda!212334))))

(declare-fun bs!1100957 () Bool)

(assert (= bs!1100957 (and b!4709438 b!4709335)))

(assert (=> bs!1100957 (= lambda!212335 lambda!212304)))

(assert (=> b!4709438 true))

(declare-fun bs!1100958 () Bool)

(declare-fun b!4709441 () Bool)

(assert (= bs!1100958 (and b!4709441 d!1498617)))

(declare-fun lambda!212336 () Int)

(assert (=> bs!1100958 (= (= lt!1873581 lt!1873765) (= lambda!212336 lambda!212307))))

(declare-fun bs!1100959 () Bool)

(assert (= bs!1100959 (and b!4709441 b!4709351)))

(assert (=> bs!1100959 (= lambda!212336 lambda!212309)))

(declare-fun bs!1100960 () Bool)

(assert (= bs!1100960 (and b!4709441 b!4709338)))

(assert (=> bs!1100960 (= (= lt!1873581 lt!1873759) (= lambda!212336 lambda!212306))))

(declare-fun bs!1100961 () Bool)

(assert (= bs!1100961 (and b!4709441 d!1498661)))

(assert (=> bs!1100961 (not (= lambda!212336 lambda!212314))))

(assert (=> bs!1100960 (= lambda!212336 lambda!212305)))

(assert (=> bs!1100959 (= (= lt!1873581 lt!1873786) (= lambda!212336 lambda!212310))))

(declare-fun bs!1100962 () Bool)

(assert (= bs!1100962 (and b!4709441 d!1498655)))

(assert (=> bs!1100962 (= (= lt!1873581 lt!1873792) (= lambda!212336 lambda!212311))))

(declare-fun bs!1100963 () Bool)

(assert (= bs!1100963 (and b!4709441 d!1498691)))

(assert (=> bs!1100963 (not (= lambda!212336 lambda!212334))))

(declare-fun bs!1100964 () Bool)

(assert (= bs!1100964 (and b!4709441 b!4709335)))

(assert (=> bs!1100964 (= lambda!212336 lambda!212304)))

(declare-fun bs!1100965 () Bool)

(assert (= bs!1100965 (and b!4709441 b!4709438)))

(assert (=> bs!1100965 (= lambda!212336 lambda!212335)))

(declare-fun bs!1100966 () Bool)

(assert (= bs!1100966 (and b!4709441 b!4709348)))

(assert (=> bs!1100966 (= lambda!212336 lambda!212308)))

(assert (=> b!4709441 true))

(declare-fun lt!1873918 () ListMap!5145)

(declare-fun lambda!212337 () Int)

(assert (=> bs!1100958 (= (= lt!1873918 lt!1873765) (= lambda!212337 lambda!212307))))

(assert (=> bs!1100959 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212309))))

(assert (=> bs!1100960 (= (= lt!1873918 lt!1873759) (= lambda!212337 lambda!212306))))

(assert (=> bs!1100961 (not (= lambda!212337 lambda!212314))))

(assert (=> bs!1100960 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212305))))

(assert (=> b!4709441 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212336))))

(assert (=> bs!1100959 (= (= lt!1873918 lt!1873786) (= lambda!212337 lambda!212310))))

(assert (=> bs!1100962 (= (= lt!1873918 lt!1873792) (= lambda!212337 lambda!212311))))

(assert (=> bs!1100963 (not (= lambda!212337 lambda!212334))))

(assert (=> bs!1100964 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212304))))

(assert (=> bs!1100965 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212335))))

(assert (=> bs!1100966 (= (= lt!1873918 lt!1873581) (= lambda!212337 lambda!212308))))

(assert (=> b!4709441 true))

(declare-fun bs!1100967 () Bool)

(declare-fun d!1498693 () Bool)

(assert (= bs!1100967 (and d!1498693 d!1498617)))

(declare-fun lambda!212338 () Int)

(declare-fun lt!1873924 () ListMap!5145)

(assert (=> bs!1100967 (= (= lt!1873924 lt!1873765) (= lambda!212338 lambda!212307))))

(declare-fun bs!1100968 () Bool)

(assert (= bs!1100968 (and d!1498693 b!4709351)))

(assert (=> bs!1100968 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212309))))

(declare-fun bs!1100969 () Bool)

(assert (= bs!1100969 (and d!1498693 b!4709338)))

(assert (=> bs!1100969 (= (= lt!1873924 lt!1873759) (= lambda!212338 lambda!212306))))

(declare-fun bs!1100970 () Bool)

(assert (= bs!1100970 (and d!1498693 d!1498661)))

(assert (=> bs!1100970 (not (= lambda!212338 lambda!212314))))

(assert (=> bs!1100969 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212305))))

(declare-fun bs!1100971 () Bool)

(assert (= bs!1100971 (and d!1498693 b!4709441)))

(assert (=> bs!1100971 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212336))))

(assert (=> bs!1100968 (= (= lt!1873924 lt!1873786) (= lambda!212338 lambda!212310))))

(declare-fun bs!1100972 () Bool)

(assert (= bs!1100972 (and d!1498693 d!1498655)))

(assert (=> bs!1100972 (= (= lt!1873924 lt!1873792) (= lambda!212338 lambda!212311))))

(assert (=> bs!1100971 (= (= lt!1873924 lt!1873918) (= lambda!212338 lambda!212337))))

(declare-fun bs!1100973 () Bool)

(assert (= bs!1100973 (and d!1498693 d!1498691)))

(assert (=> bs!1100973 (not (= lambda!212338 lambda!212334))))

(declare-fun bs!1100974 () Bool)

(assert (= bs!1100974 (and d!1498693 b!4709335)))

(assert (=> bs!1100974 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212304))))

(declare-fun bs!1100975 () Bool)

(assert (= bs!1100975 (and d!1498693 b!4709438)))

(assert (=> bs!1100975 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212335))))

(declare-fun bs!1100976 () Bool)

(assert (= bs!1100976 (and d!1498693 b!4709348)))

(assert (=> bs!1100976 (= (= lt!1873924 lt!1873581) (= lambda!212338 lambda!212308))))

(assert (=> d!1498693 true))

(declare-fun e!2937395 () ListMap!5145)

(assert (=> b!4709438 (= e!2937395 lt!1873581)))

(declare-fun lt!1873920 () Unit!127526)

(declare-fun call!329222 () Unit!127526)

(assert (=> b!4709438 (= lt!1873920 call!329222)))

(declare-fun call!329221 () Bool)

(assert (=> b!4709438 call!329221))

(declare-fun lt!1873919 () Unit!127526)

(assert (=> b!4709438 (= lt!1873919 lt!1873920)))

(declare-fun call!329223 () Bool)

(assert (=> b!4709438 call!329223))

(declare-fun lt!1873916 () Unit!127526)

(declare-fun Unit!127576 () Unit!127526)

(assert (=> b!4709438 (= lt!1873916 Unit!127576)))

(declare-fun e!2937396 () Bool)

(assert (=> d!1498693 e!2937396))

(declare-fun res!1990113 () Bool)

(assert (=> d!1498693 (=> (not res!1990113) (not e!2937396))))

(assert (=> d!1498693 (= res!1990113 (forall!11473 (_2!30384 (h!58955 (toList!5782 lm!2023))) lambda!212338))))

(assert (=> d!1498693 (= lt!1873924 e!2937395)))

(declare-fun c!804636 () Bool)

(assert (=> d!1498693 (= c!804636 ((_ is Nil!52651) (_2!30384 (h!58955 (toList!5782 lm!2023)))))))

(assert (=> d!1498693 (noDuplicateKeys!1946 (_2!30384 (h!58955 (toList!5782 lm!2023))))))

(assert (=> d!1498693 (= (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (toList!5782 lm!2023))) lt!1873581) lt!1873924)))

(declare-fun b!4709439 () Bool)

(assert (=> b!4709439 (= e!2937396 (invariantList!1468 (toList!5781 lt!1873924)))))

(declare-fun bm!329216 () Bool)

(assert (=> bm!329216 (= call!329221 (forall!11473 (toList!5781 lt!1873581) (ite c!804636 lambda!212335 lambda!212336)))))

(declare-fun bm!329217 () Bool)

(assert (=> bm!329217 (= call!329223 (forall!11473 (toList!5781 lt!1873581) (ite c!804636 lambda!212335 lambda!212337)))))

(declare-fun b!4709440 () Bool)

(declare-fun res!1990112 () Bool)

(assert (=> b!4709440 (=> (not res!1990112) (not e!2937396))))

(assert (=> b!4709440 (= res!1990112 (forall!11473 (toList!5781 lt!1873581) lambda!212338))))

(assert (=> b!4709441 (= e!2937395 lt!1873918)))

(declare-fun lt!1873917 () ListMap!5145)

(assert (=> b!4709441 (= lt!1873917 (+!2210 lt!1873581 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023))))))))

(assert (=> b!4709441 (= lt!1873918 (addToMapMapFromBucket!1376 (t!360007 (_2!30384 (h!58955 (toList!5782 lm!2023)))) (+!2210 lt!1873581 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023)))))))))

(declare-fun lt!1873925 () Unit!127526)

(assert (=> b!4709441 (= lt!1873925 call!329222)))

(assert (=> b!4709441 call!329221))

(declare-fun lt!1873923 () Unit!127526)

(assert (=> b!4709441 (= lt!1873923 lt!1873925)))

(assert (=> b!4709441 (forall!11473 (toList!5781 lt!1873917) lambda!212337)))

(declare-fun lt!1873927 () Unit!127526)

(declare-fun Unit!127577 () Unit!127526)

(assert (=> b!4709441 (= lt!1873927 Unit!127577)))

(assert (=> b!4709441 (forall!11473 (t!360007 (_2!30384 (h!58955 (toList!5782 lm!2023)))) lambda!212337)))

(declare-fun lt!1873934 () Unit!127526)

(declare-fun Unit!127578 () Unit!127526)

(assert (=> b!4709441 (= lt!1873934 Unit!127578)))

(declare-fun lt!1873930 () Unit!127526)

(declare-fun Unit!127579 () Unit!127526)

(assert (=> b!4709441 (= lt!1873930 Unit!127579)))

(declare-fun lt!1873932 () Unit!127526)

(assert (=> b!4709441 (= lt!1873932 (forallContained!3556 (toList!5781 lt!1873917) lambda!212337 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023))))))))

(assert (=> b!4709441 (contains!15956 lt!1873917 (_1!30383 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023))))))))

(declare-fun lt!1873921 () Unit!127526)

(declare-fun Unit!127580 () Unit!127526)

(assert (=> b!4709441 (= lt!1873921 Unit!127580)))

(assert (=> b!4709441 (contains!15956 lt!1873918 (_1!30383 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023))))))))

(declare-fun lt!1873931 () Unit!127526)

(declare-fun Unit!127581 () Unit!127526)

(assert (=> b!4709441 (= lt!1873931 Unit!127581)))

(assert (=> b!4709441 (forall!11473 (_2!30384 (h!58955 (toList!5782 lm!2023))) lambda!212337)))

(declare-fun lt!1873926 () Unit!127526)

(declare-fun Unit!127582 () Unit!127526)

(assert (=> b!4709441 (= lt!1873926 Unit!127582)))

(assert (=> b!4709441 (forall!11473 (toList!5781 lt!1873917) lambda!212337)))

(declare-fun lt!1873936 () Unit!127526)

(declare-fun Unit!127583 () Unit!127526)

(assert (=> b!4709441 (= lt!1873936 Unit!127583)))

(declare-fun lt!1873928 () Unit!127526)

(declare-fun Unit!127584 () Unit!127526)

(assert (=> b!4709441 (= lt!1873928 Unit!127584)))

(declare-fun lt!1873929 () Unit!127526)

(assert (=> b!4709441 (= lt!1873929 (addForallContainsKeyThenBeforeAdding!755 lt!1873581 lt!1873918 (_1!30383 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023))))) (_2!30383 (h!58954 (_2!30384 (h!58955 (toList!5782 lm!2023)))))))))

(assert (=> b!4709441 call!329223))

(declare-fun lt!1873935 () Unit!127526)

(assert (=> b!4709441 (= lt!1873935 lt!1873929)))

(assert (=> b!4709441 (forall!11473 (toList!5781 lt!1873581) lambda!212337)))

(declare-fun lt!1873933 () Unit!127526)

(declare-fun Unit!127585 () Unit!127526)

(assert (=> b!4709441 (= lt!1873933 Unit!127585)))

(declare-fun res!1990111 () Bool)

(assert (=> b!4709441 (= res!1990111 (forall!11473 (_2!30384 (h!58955 (toList!5782 lm!2023))) lambda!212337))))

(declare-fun e!2937394 () Bool)

(assert (=> b!4709441 (=> (not res!1990111) (not e!2937394))))

(assert (=> b!4709441 e!2937394))

(declare-fun lt!1873922 () Unit!127526)

(declare-fun Unit!127586 () Unit!127526)

(assert (=> b!4709441 (= lt!1873922 Unit!127586)))

(declare-fun bm!329218 () Bool)

(assert (=> bm!329218 (= call!329222 (lemmaContainsAllItsOwnKeys!756 lt!1873581))))

(declare-fun b!4709442 () Bool)

(assert (=> b!4709442 (= e!2937394 (forall!11473 (toList!5781 lt!1873581) lambda!212337))))

(assert (= (and d!1498693 c!804636) b!4709438))

(assert (= (and d!1498693 (not c!804636)) b!4709441))

(assert (= (and b!4709441 res!1990111) b!4709442))

(assert (= (or b!4709438 b!4709441) bm!329218))

(assert (= (or b!4709438 b!4709441) bm!329216))

(assert (= (or b!4709438 b!4709441) bm!329217))

(assert (= (and d!1498693 res!1990113) b!4709440))

(assert (= (and b!4709440 res!1990112) b!4709439))

(assert (=> bm!329218 m!5633711))

(declare-fun m!5633973 () Bool)

(assert (=> d!1498693 m!5633973))

(declare-fun m!5633975 () Bool)

(assert (=> d!1498693 m!5633975))

(declare-fun m!5633977 () Bool)

(assert (=> b!4709439 m!5633977))

(declare-fun m!5633979 () Bool)

(assert (=> b!4709441 m!5633979))

(declare-fun m!5633981 () Bool)

(assert (=> b!4709441 m!5633981))

(declare-fun m!5633983 () Bool)

(assert (=> b!4709441 m!5633983))

(declare-fun m!5633985 () Bool)

(assert (=> b!4709441 m!5633985))

(declare-fun m!5633987 () Bool)

(assert (=> b!4709441 m!5633987))

(declare-fun m!5633989 () Bool)

(assert (=> b!4709441 m!5633989))

(declare-fun m!5633991 () Bool)

(assert (=> b!4709441 m!5633991))

(declare-fun m!5633993 () Bool)

(assert (=> b!4709441 m!5633993))

(assert (=> b!4709441 m!5633985))

(declare-fun m!5633995 () Bool)

(assert (=> b!4709441 m!5633995))

(declare-fun m!5633997 () Bool)

(assert (=> b!4709441 m!5633997))

(assert (=> b!4709441 m!5633981))

(assert (=> b!4709441 m!5633979))

(declare-fun m!5633999 () Bool)

(assert (=> b!4709440 m!5633999))

(declare-fun m!5634001 () Bool)

(assert (=> bm!329216 m!5634001))

(declare-fun m!5634003 () Bool)

(assert (=> bm!329217 m!5634003))

(assert (=> b!4709442 m!5633993))

(assert (=> b!4709235 d!1498693))

(declare-fun bs!1100977 () Bool)

(declare-fun d!1498695 () Bool)

(assert (= bs!1100977 (and d!1498695 start!478380)))

(declare-fun lambda!212339 () Int)

(assert (=> bs!1100977 (= lambda!212339 lambda!212227)))

(declare-fun bs!1100978 () Bool)

(assert (= bs!1100978 (and d!1498695 d!1498677)))

(assert (=> bs!1100978 (= lambda!212339 lambda!212330)))

(declare-fun bs!1100979 () Bool)

(assert (= bs!1100979 (and d!1498695 d!1498689)))

(assert (=> bs!1100979 (not (= lambda!212339 lambda!212333))))

(declare-fun lt!1873937 () ListMap!5145)

(assert (=> d!1498695 (invariantList!1468 (toList!5781 lt!1873937))))

(declare-fun e!2937397 () ListMap!5145)

(assert (=> d!1498695 (= lt!1873937 e!2937397)))

(declare-fun c!804637 () Bool)

(assert (=> d!1498695 (= c!804637 ((_ is Cons!52652) (t!360008 (toList!5782 lm!2023))))))

(assert (=> d!1498695 (forall!11471 (t!360008 (toList!5782 lm!2023)) lambda!212339)))

(assert (=> d!1498695 (= (extractMap!1972 (t!360008 (toList!5782 lm!2023))) lt!1873937)))

(declare-fun b!4709443 () Bool)

(assert (=> b!4709443 (= e!2937397 (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (t!360008 (toList!5782 lm!2023)))) (extractMap!1972 (t!360008 (t!360008 (toList!5782 lm!2023))))))))

(declare-fun b!4709444 () Bool)

(assert (=> b!4709444 (= e!2937397 (ListMap!5146 Nil!52651))))

(assert (= (and d!1498695 c!804637) b!4709443))

(assert (= (and d!1498695 (not c!804637)) b!4709444))

(declare-fun m!5634005 () Bool)

(assert (=> d!1498695 m!5634005))

(declare-fun m!5634007 () Bool)

(assert (=> d!1498695 m!5634007))

(declare-fun m!5634009 () Bool)

(assert (=> b!4709443 m!5634009))

(assert (=> b!4709443 m!5634009))

(declare-fun m!5634011 () Bool)

(assert (=> b!4709443 m!5634011))

(assert (=> b!4709235 d!1498695))

(declare-fun d!1498697 () Bool)

(declare-fun tail!8832 (List!52776) List!52776)

(assert (=> d!1498697 (= (tail!8831 lm!2023) (ListLongMap!4312 (tail!8832 (toList!5782 lm!2023))))))

(declare-fun bs!1100980 () Bool)

(assert (= bs!1100980 d!1498697))

(declare-fun m!5634013 () Bool)

(assert (=> bs!1100980 m!5634013))

(assert (=> b!4709235 d!1498697))

(declare-fun b!4709454 () Bool)

(declare-fun e!2937403 () List!52775)

(declare-fun e!2937402 () List!52775)

(assert (=> b!4709454 (= e!2937403 e!2937402)))

(declare-fun c!804642 () Bool)

(assert (=> b!4709454 (= c!804642 ((_ is Cons!52651) oldBucket!34))))

(declare-fun d!1498699 () Bool)

(declare-fun lt!1873940 () List!52775)

(assert (=> d!1498699 (not (containsKey!3245 lt!1873940 key!4653))))

(assert (=> d!1498699 (= lt!1873940 e!2937403)))

(declare-fun c!804643 () Bool)

(assert (=> d!1498699 (= c!804643 (and ((_ is Cons!52651) oldBucket!34) (= (_1!30383 (h!58954 oldBucket!34)) key!4653)))))

(assert (=> d!1498699 (noDuplicateKeys!1946 oldBucket!34)))

(assert (=> d!1498699 (= (removePairForKey!1541 oldBucket!34 key!4653) lt!1873940)))

(declare-fun b!4709453 () Bool)

(assert (=> b!4709453 (= e!2937403 (t!360007 oldBucket!34))))

(declare-fun b!4709456 () Bool)

(assert (=> b!4709456 (= e!2937402 Nil!52651)))

(declare-fun b!4709455 () Bool)

(assert (=> b!4709455 (= e!2937402 (Cons!52651 (h!58954 oldBucket!34) (removePairForKey!1541 (t!360007 oldBucket!34) key!4653)))))

(assert (= (and d!1498699 c!804643) b!4709453))

(assert (= (and d!1498699 (not c!804643)) b!4709454))

(assert (= (and b!4709454 c!804642) b!4709455))

(assert (= (and b!4709454 (not c!804642)) b!4709456))

(declare-fun m!5634015 () Bool)

(assert (=> d!1498699 m!5634015))

(assert (=> d!1498699 m!5633553))

(declare-fun m!5634017 () Bool)

(assert (=> b!4709455 m!5634017))

(assert (=> b!4709233 d!1498699))

(declare-fun d!1498701 () Bool)

(declare-fun res!1990118 () Bool)

(declare-fun e!2937408 () Bool)

(assert (=> d!1498701 (=> res!1990118 e!2937408)))

(assert (=> d!1498701 (= res!1990118 ((_ is Nil!52652) (toList!5782 lm!2023)))))

(assert (=> d!1498701 (= (forall!11471 (toList!5782 lm!2023) lambda!212227) e!2937408)))

(declare-fun b!4709461 () Bool)

(declare-fun e!2937409 () Bool)

(assert (=> b!4709461 (= e!2937408 e!2937409)))

(declare-fun res!1990119 () Bool)

(assert (=> b!4709461 (=> (not res!1990119) (not e!2937409))))

(declare-fun dynLambda!21771 (Int tuple2!54180) Bool)

(assert (=> b!4709461 (= res!1990119 (dynLambda!21771 lambda!212227 (h!58955 (toList!5782 lm!2023))))))

(declare-fun b!4709462 () Bool)

(assert (=> b!4709462 (= e!2937409 (forall!11471 (t!360008 (toList!5782 lm!2023)) lambda!212227))))

(assert (= (and d!1498701 (not res!1990118)) b!4709461))

(assert (= (and b!4709461 res!1990119) b!4709462))

(declare-fun b_lambda!177625 () Bool)

(assert (=> (not b_lambda!177625) (not b!4709461)))

(declare-fun m!5634019 () Bool)

(assert (=> b!4709461 m!5634019))

(declare-fun m!5634021 () Bool)

(assert (=> b!4709462 m!5634021))

(assert (=> start!478380 d!1498701))

(declare-fun d!1498703 () Bool)

(declare-fun isStrictlySorted!707 (List!52776) Bool)

(assert (=> d!1498703 (= (inv!67889 lm!2023) (isStrictlySorted!707 (toList!5782 lm!2023)))))

(declare-fun bs!1100981 () Bool)

(assert (= bs!1100981 d!1498703))

(declare-fun m!5634023 () Bool)

(assert (=> bs!1100981 m!5634023))

(assert (=> start!478380 d!1498703))

(declare-fun bs!1100982 () Bool)

(declare-fun b!4709463 () Bool)

(assert (= bs!1100982 (and b!4709463 d!1498617)))

(declare-fun lambda!212340 () Int)

(assert (=> bs!1100982 (= (= lt!1873581 lt!1873765) (= lambda!212340 lambda!212307))))

(declare-fun bs!1100983 () Bool)

(assert (= bs!1100983 (and b!4709463 d!1498693)))

(assert (=> bs!1100983 (= (= lt!1873581 lt!1873924) (= lambda!212340 lambda!212338))))

(declare-fun bs!1100984 () Bool)

(assert (= bs!1100984 (and b!4709463 b!4709351)))

(assert (=> bs!1100984 (= lambda!212340 lambda!212309)))

(declare-fun bs!1100985 () Bool)

(assert (= bs!1100985 (and b!4709463 b!4709338)))

(assert (=> bs!1100985 (= (= lt!1873581 lt!1873759) (= lambda!212340 lambda!212306))))

(declare-fun bs!1100986 () Bool)

(assert (= bs!1100986 (and b!4709463 d!1498661)))

(assert (=> bs!1100986 (not (= lambda!212340 lambda!212314))))

(assert (=> bs!1100985 (= lambda!212340 lambda!212305)))

(declare-fun bs!1100987 () Bool)

(assert (= bs!1100987 (and b!4709463 b!4709441)))

(assert (=> bs!1100987 (= lambda!212340 lambda!212336)))

(assert (=> bs!1100984 (= (= lt!1873581 lt!1873786) (= lambda!212340 lambda!212310))))

(declare-fun bs!1100988 () Bool)

(assert (= bs!1100988 (and b!4709463 d!1498655)))

(assert (=> bs!1100988 (= (= lt!1873581 lt!1873792) (= lambda!212340 lambda!212311))))

(assert (=> bs!1100987 (= (= lt!1873581 lt!1873918) (= lambda!212340 lambda!212337))))

(declare-fun bs!1100989 () Bool)

(assert (= bs!1100989 (and b!4709463 d!1498691)))

(assert (=> bs!1100989 (not (= lambda!212340 lambda!212334))))

(declare-fun bs!1100990 () Bool)

(assert (= bs!1100990 (and b!4709463 b!4709335)))

(assert (=> bs!1100990 (= lambda!212340 lambda!212304)))

(declare-fun bs!1100991 () Bool)

(assert (= bs!1100991 (and b!4709463 b!4709438)))

(assert (=> bs!1100991 (= lambda!212340 lambda!212335)))

(declare-fun bs!1100992 () Bool)

(assert (= bs!1100992 (and b!4709463 b!4709348)))

(assert (=> bs!1100992 (= lambda!212340 lambda!212308)))

(assert (=> b!4709463 true))

(declare-fun bs!1100993 () Bool)

(declare-fun b!4709466 () Bool)

(assert (= bs!1100993 (and b!4709466 d!1498617)))

(declare-fun lambda!212341 () Int)

(assert (=> bs!1100993 (= (= lt!1873581 lt!1873765) (= lambda!212341 lambda!212307))))

(declare-fun bs!1100994 () Bool)

(assert (= bs!1100994 (and b!4709466 d!1498693)))

(assert (=> bs!1100994 (= (= lt!1873581 lt!1873924) (= lambda!212341 lambda!212338))))

(declare-fun bs!1100995 () Bool)

(assert (= bs!1100995 (and b!4709466 b!4709351)))

(assert (=> bs!1100995 (= lambda!212341 lambda!212309)))

(declare-fun bs!1100996 () Bool)

(assert (= bs!1100996 (and b!4709466 d!1498661)))

(assert (=> bs!1100996 (not (= lambda!212341 lambda!212314))))

(declare-fun bs!1100997 () Bool)

(assert (= bs!1100997 (and b!4709466 b!4709338)))

(assert (=> bs!1100997 (= lambda!212341 lambda!212305)))

(declare-fun bs!1100998 () Bool)

(assert (= bs!1100998 (and b!4709466 b!4709441)))

(assert (=> bs!1100998 (= lambda!212341 lambda!212336)))

(assert (=> bs!1100995 (= (= lt!1873581 lt!1873786) (= lambda!212341 lambda!212310))))

(declare-fun bs!1100999 () Bool)

(assert (= bs!1100999 (and b!4709466 d!1498655)))

(assert (=> bs!1100999 (= (= lt!1873581 lt!1873792) (= lambda!212341 lambda!212311))))

(assert (=> bs!1100998 (= (= lt!1873581 lt!1873918) (= lambda!212341 lambda!212337))))

(declare-fun bs!1101000 () Bool)

(assert (= bs!1101000 (and b!4709466 d!1498691)))

(assert (=> bs!1101000 (not (= lambda!212341 lambda!212334))))

(declare-fun bs!1101001 () Bool)

(assert (= bs!1101001 (and b!4709466 b!4709335)))

(assert (=> bs!1101001 (= lambda!212341 lambda!212304)))

(assert (=> bs!1100997 (= (= lt!1873581 lt!1873759) (= lambda!212341 lambda!212306))))

(declare-fun bs!1101002 () Bool)

(assert (= bs!1101002 (and b!4709466 b!4709463)))

(assert (=> bs!1101002 (= lambda!212341 lambda!212340)))

(declare-fun bs!1101003 () Bool)

(assert (= bs!1101003 (and b!4709466 b!4709438)))

(assert (=> bs!1101003 (= lambda!212341 lambda!212335)))

(declare-fun bs!1101004 () Bool)

(assert (= bs!1101004 (and b!4709466 b!4709348)))

(assert (=> bs!1101004 (= lambda!212341 lambda!212308)))

(assert (=> b!4709466 true))

(declare-fun lambda!212342 () Int)

(declare-fun lt!1873943 () ListMap!5145)

(assert (=> bs!1100993 (= (= lt!1873943 lt!1873765) (= lambda!212342 lambda!212307))))

(assert (=> bs!1100994 (= (= lt!1873943 lt!1873924) (= lambda!212342 lambda!212338))))

(assert (=> bs!1100995 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212309))))

(assert (=> bs!1100996 (not (= lambda!212342 lambda!212314))))

(assert (=> bs!1100997 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212305))))

(assert (=> bs!1100998 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212336))))

(assert (=> b!4709466 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212341))))

(assert (=> bs!1100995 (= (= lt!1873943 lt!1873786) (= lambda!212342 lambda!212310))))

(assert (=> bs!1100999 (= (= lt!1873943 lt!1873792) (= lambda!212342 lambda!212311))))

(assert (=> bs!1100998 (= (= lt!1873943 lt!1873918) (= lambda!212342 lambda!212337))))

(assert (=> bs!1101000 (not (= lambda!212342 lambda!212334))))

(assert (=> bs!1101001 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212304))))

(assert (=> bs!1100997 (= (= lt!1873943 lt!1873759) (= lambda!212342 lambda!212306))))

(assert (=> bs!1101002 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212340))))

(assert (=> bs!1101003 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212335))))

(assert (=> bs!1101004 (= (= lt!1873943 lt!1873581) (= lambda!212342 lambda!212308))))

(assert (=> b!4709466 true))

(declare-fun bs!1101005 () Bool)

(declare-fun d!1498705 () Bool)

(assert (= bs!1101005 (and d!1498705 d!1498617)))

(declare-fun lt!1873949 () ListMap!5145)

(declare-fun lambda!212343 () Int)

(assert (=> bs!1101005 (= (= lt!1873949 lt!1873765) (= lambda!212343 lambda!212307))))

(declare-fun bs!1101006 () Bool)

(assert (= bs!1101006 (and d!1498705 d!1498693)))

(assert (=> bs!1101006 (= (= lt!1873949 lt!1873924) (= lambda!212343 lambda!212338))))

(declare-fun bs!1101007 () Bool)

(assert (= bs!1101007 (and d!1498705 b!4709351)))

(assert (=> bs!1101007 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212309))))

(declare-fun bs!1101008 () Bool)

(assert (= bs!1101008 (and d!1498705 d!1498661)))

(assert (=> bs!1101008 (not (= lambda!212343 lambda!212314))))

(declare-fun bs!1101009 () Bool)

(assert (= bs!1101009 (and d!1498705 b!4709338)))

(assert (=> bs!1101009 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212305))))

(declare-fun bs!1101010 () Bool)

(assert (= bs!1101010 (and d!1498705 b!4709441)))

(assert (=> bs!1101010 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212336))))

(declare-fun bs!1101011 () Bool)

(assert (= bs!1101011 (and d!1498705 b!4709466)))

(assert (=> bs!1101011 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212341))))

(assert (=> bs!1101007 (= (= lt!1873949 lt!1873786) (= lambda!212343 lambda!212310))))

(declare-fun bs!1101012 () Bool)

(assert (= bs!1101012 (and d!1498705 d!1498655)))

(assert (=> bs!1101012 (= (= lt!1873949 lt!1873792) (= lambda!212343 lambda!212311))))

(assert (=> bs!1101010 (= (= lt!1873949 lt!1873918) (= lambda!212343 lambda!212337))))

(declare-fun bs!1101013 () Bool)

(assert (= bs!1101013 (and d!1498705 d!1498691)))

(assert (=> bs!1101013 (not (= lambda!212343 lambda!212334))))

(declare-fun bs!1101014 () Bool)

(assert (= bs!1101014 (and d!1498705 b!4709335)))

(assert (=> bs!1101014 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212304))))

(assert (=> bs!1101009 (= (= lt!1873949 lt!1873759) (= lambda!212343 lambda!212306))))

(declare-fun bs!1101015 () Bool)

(assert (= bs!1101015 (and d!1498705 b!4709463)))

(assert (=> bs!1101015 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212340))))

(declare-fun bs!1101016 () Bool)

(assert (= bs!1101016 (and d!1498705 b!4709438)))

(assert (=> bs!1101016 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212335))))

(assert (=> bs!1101011 (= (= lt!1873949 lt!1873943) (= lambda!212343 lambda!212342))))

(declare-fun bs!1101017 () Bool)

(assert (= bs!1101017 (and d!1498705 b!4709348)))

(assert (=> bs!1101017 (= (= lt!1873949 lt!1873581) (= lambda!212343 lambda!212308))))

(assert (=> d!1498705 true))

(declare-fun e!2937411 () ListMap!5145)

(assert (=> b!4709463 (= e!2937411 lt!1873581)))

(declare-fun lt!1873945 () Unit!127526)

(declare-fun call!329225 () Unit!127526)

(assert (=> b!4709463 (= lt!1873945 call!329225)))

(declare-fun call!329224 () Bool)

(assert (=> b!4709463 call!329224))

(declare-fun lt!1873944 () Unit!127526)

(assert (=> b!4709463 (= lt!1873944 lt!1873945)))

(declare-fun call!329226 () Bool)

(assert (=> b!4709463 call!329226))

(declare-fun lt!1873941 () Unit!127526)

(declare-fun Unit!127598 () Unit!127526)

(assert (=> b!4709463 (= lt!1873941 Unit!127598)))

(declare-fun e!2937412 () Bool)

(assert (=> d!1498705 e!2937412))

(declare-fun res!1990122 () Bool)

(assert (=> d!1498705 (=> (not res!1990122) (not e!2937412))))

(assert (=> d!1498705 (= res!1990122 (forall!11473 newBucket!218 lambda!212343))))

(assert (=> d!1498705 (= lt!1873949 e!2937411)))

(declare-fun c!804644 () Bool)

(assert (=> d!1498705 (= c!804644 ((_ is Nil!52651) newBucket!218))))

(assert (=> d!1498705 (noDuplicateKeys!1946 newBucket!218)))

(assert (=> d!1498705 (= (addToMapMapFromBucket!1376 newBucket!218 lt!1873581) lt!1873949)))

(declare-fun b!4709464 () Bool)

(assert (=> b!4709464 (= e!2937412 (invariantList!1468 (toList!5781 lt!1873949)))))

(declare-fun bm!329219 () Bool)

(assert (=> bm!329219 (= call!329224 (forall!11473 (toList!5781 lt!1873581) (ite c!804644 lambda!212340 lambda!212341)))))

(declare-fun bm!329220 () Bool)

(assert (=> bm!329220 (= call!329226 (forall!11473 (toList!5781 lt!1873581) (ite c!804644 lambda!212340 lambda!212342)))))

(declare-fun b!4709465 () Bool)

(declare-fun res!1990121 () Bool)

(assert (=> b!4709465 (=> (not res!1990121) (not e!2937412))))

(assert (=> b!4709465 (= res!1990121 (forall!11473 (toList!5781 lt!1873581) lambda!212343))))

(assert (=> b!4709466 (= e!2937411 lt!1873943)))

(declare-fun lt!1873942 () ListMap!5145)

(assert (=> b!4709466 (= lt!1873942 (+!2210 lt!1873581 (h!58954 newBucket!218)))))

(assert (=> b!4709466 (= lt!1873943 (addToMapMapFromBucket!1376 (t!360007 newBucket!218) (+!2210 lt!1873581 (h!58954 newBucket!218))))))

(declare-fun lt!1873950 () Unit!127526)

(assert (=> b!4709466 (= lt!1873950 call!329225)))

(assert (=> b!4709466 call!329224))

(declare-fun lt!1873948 () Unit!127526)

(assert (=> b!4709466 (= lt!1873948 lt!1873950)))

(assert (=> b!4709466 (forall!11473 (toList!5781 lt!1873942) lambda!212342)))

(declare-fun lt!1873952 () Unit!127526)

(declare-fun Unit!127599 () Unit!127526)

(assert (=> b!4709466 (= lt!1873952 Unit!127599)))

(assert (=> b!4709466 (forall!11473 (t!360007 newBucket!218) lambda!212342)))

(declare-fun lt!1873959 () Unit!127526)

(declare-fun Unit!127600 () Unit!127526)

(assert (=> b!4709466 (= lt!1873959 Unit!127600)))

(declare-fun lt!1873955 () Unit!127526)

(declare-fun Unit!127601 () Unit!127526)

(assert (=> b!4709466 (= lt!1873955 Unit!127601)))

(declare-fun lt!1873957 () Unit!127526)

(assert (=> b!4709466 (= lt!1873957 (forallContained!3556 (toList!5781 lt!1873942) lambda!212342 (h!58954 newBucket!218)))))

(assert (=> b!4709466 (contains!15956 lt!1873942 (_1!30383 (h!58954 newBucket!218)))))

(declare-fun lt!1873946 () Unit!127526)

(declare-fun Unit!127602 () Unit!127526)

(assert (=> b!4709466 (= lt!1873946 Unit!127602)))

(assert (=> b!4709466 (contains!15956 lt!1873943 (_1!30383 (h!58954 newBucket!218)))))

(declare-fun lt!1873956 () Unit!127526)

(declare-fun Unit!127603 () Unit!127526)

(assert (=> b!4709466 (= lt!1873956 Unit!127603)))

(assert (=> b!4709466 (forall!11473 newBucket!218 lambda!212342)))

(declare-fun lt!1873951 () Unit!127526)

(declare-fun Unit!127604 () Unit!127526)

(assert (=> b!4709466 (= lt!1873951 Unit!127604)))

(assert (=> b!4709466 (forall!11473 (toList!5781 lt!1873942) lambda!212342)))

(declare-fun lt!1873961 () Unit!127526)

(declare-fun Unit!127605 () Unit!127526)

(assert (=> b!4709466 (= lt!1873961 Unit!127605)))

(declare-fun lt!1873953 () Unit!127526)

(declare-fun Unit!127606 () Unit!127526)

(assert (=> b!4709466 (= lt!1873953 Unit!127606)))

(declare-fun lt!1873954 () Unit!127526)

(assert (=> b!4709466 (= lt!1873954 (addForallContainsKeyThenBeforeAdding!755 lt!1873581 lt!1873943 (_1!30383 (h!58954 newBucket!218)) (_2!30383 (h!58954 newBucket!218))))))

(assert (=> b!4709466 call!329226))

(declare-fun lt!1873960 () Unit!127526)

(assert (=> b!4709466 (= lt!1873960 lt!1873954)))

(assert (=> b!4709466 (forall!11473 (toList!5781 lt!1873581) lambda!212342)))

(declare-fun lt!1873958 () Unit!127526)

(declare-fun Unit!127607 () Unit!127526)

(assert (=> b!4709466 (= lt!1873958 Unit!127607)))

(declare-fun res!1990120 () Bool)

(assert (=> b!4709466 (= res!1990120 (forall!11473 newBucket!218 lambda!212342))))

(declare-fun e!2937410 () Bool)

(assert (=> b!4709466 (=> (not res!1990120) (not e!2937410))))

(assert (=> b!4709466 e!2937410))

(declare-fun lt!1873947 () Unit!127526)

(declare-fun Unit!127608 () Unit!127526)

(assert (=> b!4709466 (= lt!1873947 Unit!127608)))

(declare-fun bm!329221 () Bool)

(assert (=> bm!329221 (= call!329225 (lemmaContainsAllItsOwnKeys!756 lt!1873581))))

(declare-fun b!4709467 () Bool)

(assert (=> b!4709467 (= e!2937410 (forall!11473 (toList!5781 lt!1873581) lambda!212342))))

(assert (= (and d!1498705 c!804644) b!4709463))

(assert (= (and d!1498705 (not c!804644)) b!4709466))

(assert (= (and b!4709466 res!1990120) b!4709467))

(assert (= (or b!4709463 b!4709466) bm!329221))

(assert (= (or b!4709463 b!4709466) bm!329219))

(assert (= (or b!4709463 b!4709466) bm!329220))

(assert (= (and d!1498705 res!1990122) b!4709465))

(assert (= (and b!4709465 res!1990121) b!4709464))

(assert (=> bm!329221 m!5633711))

(declare-fun m!5634025 () Bool)

(assert (=> d!1498705 m!5634025))

(assert (=> d!1498705 m!5633505))

(declare-fun m!5634027 () Bool)

(assert (=> b!4709464 m!5634027))

(declare-fun m!5634029 () Bool)

(assert (=> b!4709466 m!5634029))

(declare-fun m!5634031 () Bool)

(assert (=> b!4709466 m!5634031))

(declare-fun m!5634033 () Bool)

(assert (=> b!4709466 m!5634033))

(declare-fun m!5634035 () Bool)

(assert (=> b!4709466 m!5634035))

(declare-fun m!5634037 () Bool)

(assert (=> b!4709466 m!5634037))

(declare-fun m!5634039 () Bool)

(assert (=> b!4709466 m!5634039))

(declare-fun m!5634041 () Bool)

(assert (=> b!4709466 m!5634041))

(declare-fun m!5634043 () Bool)

(assert (=> b!4709466 m!5634043))

(assert (=> b!4709466 m!5634035))

(declare-fun m!5634045 () Bool)

(assert (=> b!4709466 m!5634045))

(declare-fun m!5634047 () Bool)

(assert (=> b!4709466 m!5634047))

(assert (=> b!4709466 m!5634031))

(assert (=> b!4709466 m!5634029))

(declare-fun m!5634049 () Bool)

(assert (=> b!4709465 m!5634049))

(declare-fun m!5634051 () Bool)

(assert (=> bm!329219 m!5634051))

(declare-fun m!5634053 () Bool)

(assert (=> bm!329220 m!5634053))

(assert (=> b!4709467 m!5634043))

(assert (=> b!4709223 d!1498705))

(declare-fun bs!1101018 () Bool)

(declare-fun b!4709468 () Bool)

(assert (= bs!1101018 (and b!4709468 d!1498617)))

(declare-fun lambda!212344 () Int)

(assert (=> bs!1101018 (= (= lt!1873581 lt!1873765) (= lambda!212344 lambda!212307))))

(declare-fun bs!1101019 () Bool)

(assert (= bs!1101019 (and b!4709468 d!1498705)))

(assert (=> bs!1101019 (= (= lt!1873581 lt!1873949) (= lambda!212344 lambda!212343))))

(declare-fun bs!1101020 () Bool)

(assert (= bs!1101020 (and b!4709468 d!1498693)))

(assert (=> bs!1101020 (= (= lt!1873581 lt!1873924) (= lambda!212344 lambda!212338))))

(declare-fun bs!1101021 () Bool)

(assert (= bs!1101021 (and b!4709468 b!4709351)))

(assert (=> bs!1101021 (= lambda!212344 lambda!212309)))

(declare-fun bs!1101022 () Bool)

(assert (= bs!1101022 (and b!4709468 d!1498661)))

(assert (=> bs!1101022 (not (= lambda!212344 lambda!212314))))

(declare-fun bs!1101023 () Bool)

(assert (= bs!1101023 (and b!4709468 b!4709338)))

(assert (=> bs!1101023 (= lambda!212344 lambda!212305)))

(declare-fun bs!1101024 () Bool)

(assert (= bs!1101024 (and b!4709468 b!4709441)))

(assert (=> bs!1101024 (= lambda!212344 lambda!212336)))

(declare-fun bs!1101025 () Bool)

(assert (= bs!1101025 (and b!4709468 b!4709466)))

(assert (=> bs!1101025 (= lambda!212344 lambda!212341)))

(assert (=> bs!1101021 (= (= lt!1873581 lt!1873786) (= lambda!212344 lambda!212310))))

(declare-fun bs!1101026 () Bool)

(assert (= bs!1101026 (and b!4709468 d!1498655)))

(assert (=> bs!1101026 (= (= lt!1873581 lt!1873792) (= lambda!212344 lambda!212311))))

(assert (=> bs!1101024 (= (= lt!1873581 lt!1873918) (= lambda!212344 lambda!212337))))

(declare-fun bs!1101027 () Bool)

(assert (= bs!1101027 (and b!4709468 d!1498691)))

(assert (=> bs!1101027 (not (= lambda!212344 lambda!212334))))

(declare-fun bs!1101028 () Bool)

(assert (= bs!1101028 (and b!4709468 b!4709335)))

(assert (=> bs!1101028 (= lambda!212344 lambda!212304)))

(assert (=> bs!1101023 (= (= lt!1873581 lt!1873759) (= lambda!212344 lambda!212306))))

(declare-fun bs!1101029 () Bool)

(assert (= bs!1101029 (and b!4709468 b!4709463)))

(assert (=> bs!1101029 (= lambda!212344 lambda!212340)))

(declare-fun bs!1101030 () Bool)

(assert (= bs!1101030 (and b!4709468 b!4709438)))

(assert (=> bs!1101030 (= lambda!212344 lambda!212335)))

(assert (=> bs!1101025 (= (= lt!1873581 lt!1873943) (= lambda!212344 lambda!212342))))

(declare-fun bs!1101031 () Bool)

(assert (= bs!1101031 (and b!4709468 b!4709348)))

(assert (=> bs!1101031 (= lambda!212344 lambda!212308)))

(assert (=> b!4709468 true))

(declare-fun bs!1101032 () Bool)

(declare-fun b!4709471 () Bool)

(assert (= bs!1101032 (and b!4709471 d!1498617)))

(declare-fun lambda!212345 () Int)

(assert (=> bs!1101032 (= (= lt!1873581 lt!1873765) (= lambda!212345 lambda!212307))))

(declare-fun bs!1101033 () Bool)

(assert (= bs!1101033 (and b!4709471 d!1498705)))

(assert (=> bs!1101033 (= (= lt!1873581 lt!1873949) (= lambda!212345 lambda!212343))))

(declare-fun bs!1101034 () Bool)

(assert (= bs!1101034 (and b!4709471 d!1498693)))

(assert (=> bs!1101034 (= (= lt!1873581 lt!1873924) (= lambda!212345 lambda!212338))))

(declare-fun bs!1101035 () Bool)

(assert (= bs!1101035 (and b!4709471 b!4709351)))

(assert (=> bs!1101035 (= lambda!212345 lambda!212309)))

(declare-fun bs!1101036 () Bool)

(assert (= bs!1101036 (and b!4709471 d!1498661)))

(assert (=> bs!1101036 (not (= lambda!212345 lambda!212314))))

(declare-fun bs!1101037 () Bool)

(assert (= bs!1101037 (and b!4709471 b!4709338)))

(assert (=> bs!1101037 (= lambda!212345 lambda!212305)))

(declare-fun bs!1101038 () Bool)

(assert (= bs!1101038 (and b!4709471 b!4709441)))

(assert (=> bs!1101038 (= lambda!212345 lambda!212336)))

(declare-fun bs!1101039 () Bool)

(assert (= bs!1101039 (and b!4709471 b!4709466)))

(assert (=> bs!1101039 (= lambda!212345 lambda!212341)))

(assert (=> bs!1101035 (= (= lt!1873581 lt!1873786) (= lambda!212345 lambda!212310))))

(declare-fun bs!1101040 () Bool)

(assert (= bs!1101040 (and b!4709471 d!1498655)))

(assert (=> bs!1101040 (= (= lt!1873581 lt!1873792) (= lambda!212345 lambda!212311))))

(assert (=> bs!1101038 (= (= lt!1873581 lt!1873918) (= lambda!212345 lambda!212337))))

(declare-fun bs!1101041 () Bool)

(assert (= bs!1101041 (and b!4709471 d!1498691)))

(assert (=> bs!1101041 (not (= lambda!212345 lambda!212334))))

(declare-fun bs!1101042 () Bool)

(assert (= bs!1101042 (and b!4709471 b!4709468)))

(assert (=> bs!1101042 (= lambda!212345 lambda!212344)))

(declare-fun bs!1101043 () Bool)

(assert (= bs!1101043 (and b!4709471 b!4709335)))

(assert (=> bs!1101043 (= lambda!212345 lambda!212304)))

(assert (=> bs!1101037 (= (= lt!1873581 lt!1873759) (= lambda!212345 lambda!212306))))

(declare-fun bs!1101044 () Bool)

(assert (= bs!1101044 (and b!4709471 b!4709463)))

(assert (=> bs!1101044 (= lambda!212345 lambda!212340)))

(declare-fun bs!1101045 () Bool)

(assert (= bs!1101045 (and b!4709471 b!4709438)))

(assert (=> bs!1101045 (= lambda!212345 lambda!212335)))

(assert (=> bs!1101039 (= (= lt!1873581 lt!1873943) (= lambda!212345 lambda!212342))))

(declare-fun bs!1101046 () Bool)

(assert (= bs!1101046 (and b!4709471 b!4709348)))

(assert (=> bs!1101046 (= lambda!212345 lambda!212308)))

(assert (=> b!4709471 true))

(declare-fun lt!1873964 () ListMap!5145)

(declare-fun lambda!212346 () Int)

(assert (=> bs!1101032 (= (= lt!1873964 lt!1873765) (= lambda!212346 lambda!212307))))

(assert (=> bs!1101033 (= (= lt!1873964 lt!1873949) (= lambda!212346 lambda!212343))))

(assert (=> bs!1101034 (= (= lt!1873964 lt!1873924) (= lambda!212346 lambda!212338))))

(assert (=> bs!1101035 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212309))))

(assert (=> bs!1101036 (not (= lambda!212346 lambda!212314))))

(assert (=> bs!1101037 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212305))))

(assert (=> bs!1101038 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212336))))

(assert (=> bs!1101035 (= (= lt!1873964 lt!1873786) (= lambda!212346 lambda!212310))))

(assert (=> bs!1101040 (= (= lt!1873964 lt!1873792) (= lambda!212346 lambda!212311))))

(assert (=> bs!1101038 (= (= lt!1873964 lt!1873918) (= lambda!212346 lambda!212337))))

(assert (=> bs!1101041 (not (= lambda!212346 lambda!212334))))

(assert (=> bs!1101042 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212344))))

(assert (=> bs!1101043 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212304))))

(assert (=> bs!1101037 (= (= lt!1873964 lt!1873759) (= lambda!212346 lambda!212306))))

(assert (=> bs!1101044 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212340))))

(assert (=> bs!1101045 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212335))))

(assert (=> bs!1101039 (= (= lt!1873964 lt!1873943) (= lambda!212346 lambda!212342))))

(assert (=> bs!1101046 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212308))))

(assert (=> b!4709471 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212345))))

(assert (=> bs!1101039 (= (= lt!1873964 lt!1873581) (= lambda!212346 lambda!212341))))

(assert (=> b!4709471 true))

(declare-fun bs!1101047 () Bool)

(declare-fun d!1498707 () Bool)

(assert (= bs!1101047 (and d!1498707 d!1498617)))

(declare-fun lt!1873970 () ListMap!5145)

(declare-fun lambda!212347 () Int)

(assert (=> bs!1101047 (= (= lt!1873970 lt!1873765) (= lambda!212347 lambda!212307))))

(declare-fun bs!1101048 () Bool)

(assert (= bs!1101048 (and d!1498707 d!1498705)))

(assert (=> bs!1101048 (= (= lt!1873970 lt!1873949) (= lambda!212347 lambda!212343))))

(declare-fun bs!1101049 () Bool)

(assert (= bs!1101049 (and d!1498707 d!1498693)))

(assert (=> bs!1101049 (= (= lt!1873970 lt!1873924) (= lambda!212347 lambda!212338))))

(declare-fun bs!1101050 () Bool)

(assert (= bs!1101050 (and d!1498707 b!4709351)))

(assert (=> bs!1101050 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212309))))

(declare-fun bs!1101051 () Bool)

(assert (= bs!1101051 (and d!1498707 d!1498661)))

(assert (=> bs!1101051 (not (= lambda!212347 lambda!212314))))

(declare-fun bs!1101052 () Bool)

(assert (= bs!1101052 (and d!1498707 b!4709338)))

(assert (=> bs!1101052 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212305))))

(declare-fun bs!1101053 () Bool)

(assert (= bs!1101053 (and d!1498707 b!4709441)))

(assert (=> bs!1101053 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212336))))

(declare-fun bs!1101054 () Bool)

(assert (= bs!1101054 (and d!1498707 b!4709471)))

(assert (=> bs!1101054 (= (= lt!1873970 lt!1873964) (= lambda!212347 lambda!212346))))

(assert (=> bs!1101050 (= (= lt!1873970 lt!1873786) (= lambda!212347 lambda!212310))))

(declare-fun bs!1101055 () Bool)

(assert (= bs!1101055 (and d!1498707 d!1498655)))

(assert (=> bs!1101055 (= (= lt!1873970 lt!1873792) (= lambda!212347 lambda!212311))))

(assert (=> bs!1101053 (= (= lt!1873970 lt!1873918) (= lambda!212347 lambda!212337))))

(declare-fun bs!1101056 () Bool)

(assert (= bs!1101056 (and d!1498707 d!1498691)))

(assert (=> bs!1101056 (not (= lambda!212347 lambda!212334))))

(declare-fun bs!1101057 () Bool)

(assert (= bs!1101057 (and d!1498707 b!4709468)))

(assert (=> bs!1101057 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212344))))

(declare-fun bs!1101058 () Bool)

(assert (= bs!1101058 (and d!1498707 b!4709335)))

(assert (=> bs!1101058 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212304))))

(assert (=> bs!1101052 (= (= lt!1873970 lt!1873759) (= lambda!212347 lambda!212306))))

(declare-fun bs!1101059 () Bool)

(assert (= bs!1101059 (and d!1498707 b!4709463)))

(assert (=> bs!1101059 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212340))))

(declare-fun bs!1101060 () Bool)

(assert (= bs!1101060 (and d!1498707 b!4709438)))

(assert (=> bs!1101060 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212335))))

(declare-fun bs!1101061 () Bool)

(assert (= bs!1101061 (and d!1498707 b!4709466)))

(assert (=> bs!1101061 (= (= lt!1873970 lt!1873943) (= lambda!212347 lambda!212342))))

(declare-fun bs!1101062 () Bool)

(assert (= bs!1101062 (and d!1498707 b!4709348)))

(assert (=> bs!1101062 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212308))))

(assert (=> bs!1101054 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212345))))

(assert (=> bs!1101061 (= (= lt!1873970 lt!1873581) (= lambda!212347 lambda!212341))))

(assert (=> d!1498707 true))

(declare-fun e!2937414 () ListMap!5145)

(assert (=> b!4709468 (= e!2937414 lt!1873581)))

(declare-fun lt!1873966 () Unit!127526)

(declare-fun call!329228 () Unit!127526)

(assert (=> b!4709468 (= lt!1873966 call!329228)))

(declare-fun call!329227 () Bool)

(assert (=> b!4709468 call!329227))

(declare-fun lt!1873965 () Unit!127526)

(assert (=> b!4709468 (= lt!1873965 lt!1873966)))

(declare-fun call!329229 () Bool)

(assert (=> b!4709468 call!329229))

(declare-fun lt!1873962 () Unit!127526)

(declare-fun Unit!127616 () Unit!127526)

(assert (=> b!4709468 (= lt!1873962 Unit!127616)))

(declare-fun e!2937415 () Bool)

(assert (=> d!1498707 e!2937415))

(declare-fun res!1990125 () Bool)

(assert (=> d!1498707 (=> (not res!1990125) (not e!2937415))))

(assert (=> d!1498707 (= res!1990125 (forall!11473 lt!1873582 lambda!212347))))

(assert (=> d!1498707 (= lt!1873970 e!2937414)))

(declare-fun c!804645 () Bool)

(assert (=> d!1498707 (= c!804645 ((_ is Nil!52651) lt!1873582))))

(assert (=> d!1498707 (noDuplicateKeys!1946 lt!1873582)))

(assert (=> d!1498707 (= (addToMapMapFromBucket!1376 lt!1873582 lt!1873581) lt!1873970)))

(declare-fun b!4709469 () Bool)

(assert (=> b!4709469 (= e!2937415 (invariantList!1468 (toList!5781 lt!1873970)))))

(declare-fun bm!329222 () Bool)

(assert (=> bm!329222 (= call!329227 (forall!11473 (toList!5781 lt!1873581) (ite c!804645 lambda!212344 lambda!212345)))))

(declare-fun bm!329223 () Bool)

(assert (=> bm!329223 (= call!329229 (forall!11473 (toList!5781 lt!1873581) (ite c!804645 lambda!212344 lambda!212346)))))

(declare-fun b!4709470 () Bool)

(declare-fun res!1990124 () Bool)

(assert (=> b!4709470 (=> (not res!1990124) (not e!2937415))))

(assert (=> b!4709470 (= res!1990124 (forall!11473 (toList!5781 lt!1873581) lambda!212347))))

(assert (=> b!4709471 (= e!2937414 lt!1873964)))

(declare-fun lt!1873963 () ListMap!5145)

(assert (=> b!4709471 (= lt!1873963 (+!2210 lt!1873581 (h!58954 lt!1873582)))))

(assert (=> b!4709471 (= lt!1873964 (addToMapMapFromBucket!1376 (t!360007 lt!1873582) (+!2210 lt!1873581 (h!58954 lt!1873582))))))

(declare-fun lt!1873971 () Unit!127526)

(assert (=> b!4709471 (= lt!1873971 call!329228)))

(assert (=> b!4709471 call!329227))

(declare-fun lt!1873969 () Unit!127526)

(assert (=> b!4709471 (= lt!1873969 lt!1873971)))

(assert (=> b!4709471 (forall!11473 (toList!5781 lt!1873963) lambda!212346)))

(declare-fun lt!1873973 () Unit!127526)

(declare-fun Unit!127621 () Unit!127526)

(assert (=> b!4709471 (= lt!1873973 Unit!127621)))

(assert (=> b!4709471 (forall!11473 (t!360007 lt!1873582) lambda!212346)))

(declare-fun lt!1873980 () Unit!127526)

(declare-fun Unit!127622 () Unit!127526)

(assert (=> b!4709471 (= lt!1873980 Unit!127622)))

(declare-fun lt!1873976 () Unit!127526)

(declare-fun Unit!127623 () Unit!127526)

(assert (=> b!4709471 (= lt!1873976 Unit!127623)))

(declare-fun lt!1873978 () Unit!127526)

(assert (=> b!4709471 (= lt!1873978 (forallContained!3556 (toList!5781 lt!1873963) lambda!212346 (h!58954 lt!1873582)))))

(assert (=> b!4709471 (contains!15956 lt!1873963 (_1!30383 (h!58954 lt!1873582)))))

(declare-fun lt!1873967 () Unit!127526)

(declare-fun Unit!127624 () Unit!127526)

(assert (=> b!4709471 (= lt!1873967 Unit!127624)))

(assert (=> b!4709471 (contains!15956 lt!1873964 (_1!30383 (h!58954 lt!1873582)))))

(declare-fun lt!1873977 () Unit!127526)

(declare-fun Unit!127625 () Unit!127526)

(assert (=> b!4709471 (= lt!1873977 Unit!127625)))

(assert (=> b!4709471 (forall!11473 lt!1873582 lambda!212346)))

(declare-fun lt!1873972 () Unit!127526)

(declare-fun Unit!127626 () Unit!127526)

(assert (=> b!4709471 (= lt!1873972 Unit!127626)))

(assert (=> b!4709471 (forall!11473 (toList!5781 lt!1873963) lambda!212346)))

(declare-fun lt!1873982 () Unit!127526)

(declare-fun Unit!127627 () Unit!127526)

(assert (=> b!4709471 (= lt!1873982 Unit!127627)))

(declare-fun lt!1873974 () Unit!127526)

(declare-fun Unit!127628 () Unit!127526)

(assert (=> b!4709471 (= lt!1873974 Unit!127628)))

(declare-fun lt!1873975 () Unit!127526)

(assert (=> b!4709471 (= lt!1873975 (addForallContainsKeyThenBeforeAdding!755 lt!1873581 lt!1873964 (_1!30383 (h!58954 lt!1873582)) (_2!30383 (h!58954 lt!1873582))))))

(assert (=> b!4709471 call!329229))

(declare-fun lt!1873981 () Unit!127526)

(assert (=> b!4709471 (= lt!1873981 lt!1873975)))

(assert (=> b!4709471 (forall!11473 (toList!5781 lt!1873581) lambda!212346)))

(declare-fun lt!1873979 () Unit!127526)

(declare-fun Unit!127629 () Unit!127526)

(assert (=> b!4709471 (= lt!1873979 Unit!127629)))

(declare-fun res!1990123 () Bool)

(assert (=> b!4709471 (= res!1990123 (forall!11473 lt!1873582 lambda!212346))))

(declare-fun e!2937413 () Bool)

(assert (=> b!4709471 (=> (not res!1990123) (not e!2937413))))

(assert (=> b!4709471 e!2937413))

(declare-fun lt!1873968 () Unit!127526)

(declare-fun Unit!127630 () Unit!127526)

(assert (=> b!4709471 (= lt!1873968 Unit!127630)))

(declare-fun bm!329224 () Bool)

(assert (=> bm!329224 (= call!329228 (lemmaContainsAllItsOwnKeys!756 lt!1873581))))

(declare-fun b!4709472 () Bool)

(assert (=> b!4709472 (= e!2937413 (forall!11473 (toList!5781 lt!1873581) lambda!212346))))

(assert (= (and d!1498707 c!804645) b!4709468))

(assert (= (and d!1498707 (not c!804645)) b!4709471))

(assert (= (and b!4709471 res!1990123) b!4709472))

(assert (= (or b!4709468 b!4709471) bm!329224))

(assert (= (or b!4709468 b!4709471) bm!329222))

(assert (= (or b!4709468 b!4709471) bm!329223))

(assert (= (and d!1498707 res!1990125) b!4709470))

(assert (= (and b!4709470 res!1990124) b!4709469))

(assert (=> bm!329224 m!5633711))

(declare-fun m!5634055 () Bool)

(assert (=> d!1498707 m!5634055))

(assert (=> d!1498707 m!5633759))

(declare-fun m!5634057 () Bool)

(assert (=> b!4709469 m!5634057))

(declare-fun m!5634059 () Bool)

(assert (=> b!4709471 m!5634059))

(declare-fun m!5634061 () Bool)

(assert (=> b!4709471 m!5634061))

(declare-fun m!5634063 () Bool)

(assert (=> b!4709471 m!5634063))

(declare-fun m!5634065 () Bool)

(assert (=> b!4709471 m!5634065))

(declare-fun m!5634067 () Bool)

(assert (=> b!4709471 m!5634067))

(declare-fun m!5634069 () Bool)

(assert (=> b!4709471 m!5634069))

(declare-fun m!5634071 () Bool)

(assert (=> b!4709471 m!5634071))

(declare-fun m!5634073 () Bool)

(assert (=> b!4709471 m!5634073))

(assert (=> b!4709471 m!5634065))

(declare-fun m!5634075 () Bool)

(assert (=> b!4709471 m!5634075))

(declare-fun m!5634077 () Bool)

(assert (=> b!4709471 m!5634077))

(assert (=> b!4709471 m!5634061))

(assert (=> b!4709471 m!5634059))

(declare-fun m!5634079 () Bool)

(assert (=> b!4709470 m!5634079))

(declare-fun m!5634081 () Bool)

(assert (=> bm!329222 m!5634081))

(declare-fun m!5634083 () Bool)

(assert (=> bm!329223 m!5634083))

(assert (=> b!4709472 m!5634073))

(assert (=> b!4709223 d!1498707))

(declare-fun d!1498709 () Bool)

(declare-fun res!1990126 () Bool)

(declare-fun e!2937416 () Bool)

(assert (=> d!1498709 (=> res!1990126 e!2937416)))

(assert (=> d!1498709 (= res!1990126 (not ((_ is Cons!52651) oldBucket!34)))))

(assert (=> d!1498709 (= (noDuplicateKeys!1946 oldBucket!34) e!2937416)))

(declare-fun b!4709473 () Bool)

(declare-fun e!2937417 () Bool)

(assert (=> b!4709473 (= e!2937416 e!2937417)))

(declare-fun res!1990127 () Bool)

(assert (=> b!4709473 (=> (not res!1990127) (not e!2937417))))

(assert (=> b!4709473 (= res!1990127 (not (containsKey!3245 (t!360007 oldBucket!34) (_1!30383 (h!58954 oldBucket!34)))))))

(declare-fun b!4709474 () Bool)

(assert (=> b!4709474 (= e!2937417 (noDuplicateKeys!1946 (t!360007 oldBucket!34)))))

(assert (= (and d!1498709 (not res!1990126)) b!4709473))

(assert (= (and b!4709473 res!1990127) b!4709474))

(declare-fun m!5634085 () Bool)

(assert (=> b!4709473 m!5634085))

(declare-fun m!5634087 () Bool)

(assert (=> b!4709474 m!5634087))

(assert (=> b!4709234 d!1498709))

(declare-fun bs!1101063 () Bool)

(declare-fun d!1498711 () Bool)

(assert (= bs!1101063 (and d!1498711 start!478380)))

(declare-fun lambda!212348 () Int)

(assert (=> bs!1101063 (= lambda!212348 lambda!212227)))

(declare-fun bs!1101064 () Bool)

(assert (= bs!1101064 (and d!1498711 d!1498677)))

(assert (=> bs!1101064 (= lambda!212348 lambda!212330)))

(declare-fun bs!1101065 () Bool)

(assert (= bs!1101065 (and d!1498711 d!1498689)))

(assert (=> bs!1101065 (not (= lambda!212348 lambda!212333))))

(declare-fun bs!1101066 () Bool)

(assert (= bs!1101066 (and d!1498711 d!1498695)))

(assert (=> bs!1101066 (= lambda!212348 lambda!212339)))

(declare-fun lt!1873983 () ListMap!5145)

(assert (=> d!1498711 (invariantList!1468 (toList!5781 lt!1873983))))

(declare-fun e!2937418 () ListMap!5145)

(assert (=> d!1498711 (= lt!1873983 e!2937418)))

(declare-fun c!804646 () Bool)

(assert (=> d!1498711 (= c!804646 ((_ is Cons!52652) (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023)))))))

(assert (=> d!1498711 (forall!11471 (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023))) lambda!212348)))

(assert (=> d!1498711 (= (extractMap!1972 (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023)))) lt!1873983)))

(declare-fun b!4709475 () Bool)

(assert (=> b!4709475 (= e!2937418 (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023))))) (extractMap!1972 (t!360008 (Cons!52652 (tuple2!54181 hash!405 lt!1873582) (t!360008 (toList!5782 lm!2023)))))))))

(declare-fun b!4709476 () Bool)

(assert (=> b!4709476 (= e!2937418 (ListMap!5146 Nil!52651))))

(assert (= (and d!1498711 c!804646) b!4709475))

(assert (= (and d!1498711 (not c!804646)) b!4709476))

(declare-fun m!5634089 () Bool)

(assert (=> d!1498711 m!5634089))

(declare-fun m!5634091 () Bool)

(assert (=> d!1498711 m!5634091))

(declare-fun m!5634093 () Bool)

(assert (=> b!4709475 m!5634093))

(assert (=> b!4709475 m!5634093))

(declare-fun m!5634095 () Bool)

(assert (=> b!4709475 m!5634095))

(assert (=> b!4709221 d!1498711))

(declare-fun bs!1101067 () Bool)

(declare-fun d!1498713 () Bool)

(assert (= bs!1101067 (and d!1498713 d!1498689)))

(declare-fun lambda!212349 () Int)

(assert (=> bs!1101067 (not (= lambda!212349 lambda!212333))))

(declare-fun bs!1101068 () Bool)

(assert (= bs!1101068 (and d!1498713 d!1498677)))

(assert (=> bs!1101068 (= lambda!212349 lambda!212330)))

(declare-fun bs!1101069 () Bool)

(assert (= bs!1101069 (and d!1498713 d!1498711)))

(assert (=> bs!1101069 (= lambda!212349 lambda!212348)))

(declare-fun bs!1101070 () Bool)

(assert (= bs!1101070 (and d!1498713 start!478380)))

(assert (=> bs!1101070 (= lambda!212349 lambda!212227)))

(declare-fun bs!1101071 () Bool)

(assert (= bs!1101071 (and d!1498713 d!1498695)))

(assert (=> bs!1101071 (= lambda!212349 lambda!212339)))

(declare-fun lt!1873984 () ListMap!5145)

(assert (=> d!1498713 (invariantList!1468 (toList!5781 lt!1873984))))

(declare-fun e!2937419 () ListMap!5145)

(assert (=> d!1498713 (= lt!1873984 e!2937419)))

(declare-fun c!804647 () Bool)

(assert (=> d!1498713 (= c!804647 ((_ is Cons!52652) (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023)))))))

(assert (=> d!1498713 (forall!11471 (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023))) lambda!212349)))

(assert (=> d!1498713 (= (extractMap!1972 (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023)))) lt!1873984)))

(declare-fun b!4709477 () Bool)

(assert (=> b!4709477 (= e!2937419 (addToMapMapFromBucket!1376 (_2!30384 (h!58955 (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023))))) (extractMap!1972 (t!360008 (Cons!52652 (tuple2!54181 hash!405 newBucket!218) (t!360008 (toList!5782 lm!2023)))))))))

(declare-fun b!4709478 () Bool)

(assert (=> b!4709478 (= e!2937419 (ListMap!5146 Nil!52651))))

(assert (= (and d!1498713 c!804647) b!4709477))

(assert (= (and d!1498713 (not c!804647)) b!4709478))

(declare-fun m!5634097 () Bool)

(assert (=> d!1498713 m!5634097))

(declare-fun m!5634099 () Bool)

(assert (=> d!1498713 m!5634099))

(declare-fun m!5634101 () Bool)

(assert (=> b!4709477 m!5634101))

(assert (=> b!4709477 m!5634101))

(declare-fun m!5634103 () Bool)

(assert (=> b!4709477 m!5634103))

(assert (=> b!4709221 d!1498713))

(declare-fun d!1498715 () Bool)

(declare-fun hash!4266 (Hashable!6315 K!14015) (_ BitVec 64))

(assert (=> d!1498715 (= (hash!4264 hashF!1323 key!4653) (hash!4266 hashF!1323 key!4653))))

(declare-fun bs!1101072 () Bool)

(assert (= bs!1101072 d!1498715))

(declare-fun m!5634105 () Bool)

(assert (=> bs!1101072 m!5634105))

(assert (=> b!4709222 d!1498715))

(declare-fun e!2937422 () Bool)

(declare-fun b!4709483 () Bool)

(declare-fun tp!1347338 () Bool)

(assert (=> b!4709483 (= e!2937422 (and tp_is_empty!31077 tp_is_empty!31079 tp!1347338))))

(assert (=> b!4709231 (= tp!1347323 e!2937422)))

(assert (= (and b!4709231 ((_ is Cons!52651) (t!360007 oldBucket!34))) b!4709483))

(declare-fun b!4709488 () Bool)

(declare-fun e!2937425 () Bool)

(declare-fun tp!1347343 () Bool)

(declare-fun tp!1347344 () Bool)

(assert (=> b!4709488 (= e!2937425 (and tp!1347343 tp!1347344))))

(assert (=> b!4709226 (= tp!1347325 e!2937425)))

(assert (= (and b!4709226 ((_ is Cons!52652) (toList!5782 lm!2023))) b!4709488))

(declare-fun tp!1347345 () Bool)

(declare-fun e!2937426 () Bool)

(declare-fun b!4709489 () Bool)

(assert (=> b!4709489 (= e!2937426 (and tp_is_empty!31077 tp_is_empty!31079 tp!1347345))))

(assert (=> b!4709228 (= tp!1347324 e!2937426)))

(assert (= (and b!4709228 ((_ is Cons!52651) (t!360007 newBucket!218))) b!4709489))

(declare-fun b_lambda!177627 () Bool)

(assert (= b_lambda!177625 (or start!478380 b_lambda!177627)))

(declare-fun bs!1101073 () Bool)

(declare-fun d!1498717 () Bool)

(assert (= bs!1101073 (and d!1498717 start!478380)))

(assert (=> bs!1101073 (= (dynLambda!21771 lambda!212227 (h!58955 (toList!5782 lm!2023))) (noDuplicateKeys!1946 (_2!30384 (h!58955 (toList!5782 lm!2023)))))))

(assert (=> bs!1101073 m!5633975))

(assert (=> b!4709461 d!1498717))

(check-sat (not b!4709353) (not b!4709435) (not bm!329216) (not bm!329201) (not bm!329198) (not b!4709404) (not b!4709464) (not b!4709465) (not b!4709472) (not b!4709470) (not bm!329219) (not b!4709407) (not d!1498705) (not d!1498715) (not bm!329202) (not b!4709466) (not d!1498713) (not d!1498607) (not b!4709351) tp_is_empty!31079 (not b!4709352) (not d!1498655) (not b!4709405) (not d!1498661) (not d!1498703) (not d!1498693) (not bm!329203) (not b!4709338) (not b!4709339) tp_is_empty!31077 (not b!4709403) (not b!4709336) (not b!4709474) (not b!4709455) (not b!4709488) (not bm!329220) (not d!1498697) (not d!1498699) (not b_lambda!177627) (not d!1498605) (not b!4709337) (not bm!329221) (not b!4709439) (not d!1498665) (not b!4709408) (not b!4709443) (not bm!329215) (not b!4709354) (not b!4709469) (not d!1498695) (not b!4709249) (not d!1498651) (not bm!329222) (not b!4709477) (not d!1498711) (not b!4709434) (not d!1498707) (not b!4709471) (not bm!329217) (not d!1498689) (not b!4709473) (not bm!329224) (not d!1498657) (not b!4709402) (not d!1498617) (not b!4709349) (not bm!329199) (not bm!329223) (not bs!1101073) (not d!1498691) (not d!1498613) (not b!4709440) (not b!4709427) (not b!4709350) (not b!4709441) (not bm!329200) (not b!4709248) (not b!4709489) (not b!4709483) (not b!4709442) (not d!1498677) (not b!4709462) (not bm!329218) (not b!4709406) (not b!4709467) (not b!4709475))
(check-sat)
