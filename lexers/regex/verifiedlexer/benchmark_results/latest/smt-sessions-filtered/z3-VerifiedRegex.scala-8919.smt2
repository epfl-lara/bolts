; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478316 () Bool)

(assert start!478316)

(declare-fun b!4708718 () Bool)

(declare-fun res!1989694 () Bool)

(declare-fun e!2937018 () Bool)

(assert (=> b!4708718 (=> (not res!1989694) (not e!2937018))))

(declare-datatypes ((K!14000 0))(
  ( (K!14001 (val!19471 Int)) )
))
(declare-fun key!4653 () K!14000)

(declare-datatypes ((Hashable!6309 0))(
  ( (HashableExt!6308 (__x!32012 Int)) )
))
(declare-fun hashF!1323 () Hashable!6309)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4256 (Hashable!6309 K!14000) (_ BitVec 64))

(assert (=> b!4708718 (= res!1989694 (= (hash!4256 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708719 () Bool)

(declare-fun res!1989689 () Bool)

(assert (=> b!4708719 (=> (not res!1989689) (not e!2937018))))

(declare-datatypes ((V!14246 0))(
  ( (V!14247 (val!19472 Int)) )
))
(declare-datatypes ((tuple2!54154 0))(
  ( (tuple2!54155 (_1!30371 K!14000) (_2!30371 V!14246)) )
))
(declare-datatypes ((List!52761 0))(
  ( (Nil!52637) (Cons!52637 (h!58938 tuple2!54154) (t!359993 List!52761)) )
))
(declare-fun newBucket!218 () List!52761)

(declare-fun allKeysSameHash!1766 (List!52761 (_ BitVec 64) Hashable!6309) Bool)

(assert (=> b!4708719 (= res!1989689 (allKeysSameHash!1766 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708720 () Bool)

(declare-fun e!2937016 () Bool)

(declare-fun tp!1347251 () Bool)

(assert (=> b!4708720 (= e!2937016 tp!1347251)))

(declare-fun b!4708721 () Bool)

(declare-fun res!1989692 () Bool)

(assert (=> b!4708721 (=> (not res!1989692) (not e!2937018))))

(declare-datatypes ((tuple2!54156 0))(
  ( (tuple2!54157 (_1!30372 (_ BitVec 64)) (_2!30372 List!52761)) )
))
(declare-datatypes ((List!52762 0))(
  ( (Nil!52638) (Cons!52638 (h!58939 tuple2!54156) (t!359994 List!52762)) )
))
(declare-datatypes ((ListLongMap!4299 0))(
  ( (ListLongMap!4300 (toList!5769 List!52762)) )
))
(declare-fun lm!2023 () ListLongMap!4299)

(get-info :version)

(assert (=> b!4708721 (= res!1989692 ((_ is Cons!52638) (toList!5769 lm!2023)))))

(declare-fun res!1989700 () Bool)

(declare-fun e!2937020 () Bool)

(assert (=> start!478316 (=> (not res!1989700) (not e!2937020))))

(declare-fun lambda!212123 () Int)

(declare-fun forall!11463 (List!52762 Int) Bool)

(assert (=> start!478316 (= res!1989700 (forall!11463 (toList!5769 lm!2023) lambda!212123))))

(assert (=> start!478316 e!2937020))

(declare-fun inv!67874 (ListLongMap!4299) Bool)

(assert (=> start!478316 (and (inv!67874 lm!2023) e!2937016)))

(declare-fun tp_is_empty!31053 () Bool)

(assert (=> start!478316 tp_is_empty!31053))

(declare-fun e!2937017 () Bool)

(assert (=> start!478316 e!2937017))

(assert (=> start!478316 true))

(declare-fun e!2937015 () Bool)

(assert (=> start!478316 e!2937015))

(declare-fun b!4708722 () Bool)

(declare-fun res!1989690 () Bool)

(assert (=> b!4708722 (=> (not res!1989690) (not e!2937020))))

(declare-fun noDuplicateKeys!1940 (List!52761) Bool)

(assert (=> b!4708722 (= res!1989690 (noDuplicateKeys!1940 newBucket!218))))

(declare-fun b!4708723 () Bool)

(declare-fun res!1989699 () Bool)

(assert (=> b!4708723 (=> (not res!1989699) (not e!2937018))))

(declare-fun allKeysSameHashInMap!1854 (ListLongMap!4299 Hashable!6309) Bool)

(assert (=> b!4708723 (= res!1989699 (allKeysSameHashInMap!1854 lm!2023 hashF!1323))))

(declare-fun tp!1347250 () Bool)

(declare-fun tp_is_empty!31055 () Bool)

(declare-fun b!4708724 () Bool)

(assert (=> b!4708724 (= e!2937017 (and tp_is_empty!31053 tp_is_empty!31055 tp!1347250))))

(declare-fun b!4708725 () Bool)

(declare-fun res!1989695 () Bool)

(assert (=> b!4708725 (=> (not res!1989695) (not e!2937020))))

(declare-fun oldBucket!34 () List!52761)

(assert (=> b!4708725 (= res!1989695 (noDuplicateKeys!1940 oldBucket!34))))

(declare-fun b!4708726 () Bool)

(declare-fun tp!1347249 () Bool)

(assert (=> b!4708726 (= e!2937015 (and tp_is_empty!31053 tp_is_empty!31055 tp!1347249))))

(declare-fun b!4708727 () Bool)

(declare-fun res!1989698 () Bool)

(assert (=> b!4708727 (=> (not res!1989698) (not e!2937020))))

(declare-fun removePairForKey!1535 (List!52761 K!14000) List!52761)

(assert (=> b!4708727 (= res!1989698 (= (removePairForKey!1535 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708728 () Bool)

(declare-fun e!2937019 () Bool)

(assert (=> b!4708728 (= e!2937018 (not e!2937019))))

(declare-fun res!1989697 () Bool)

(assert (=> b!4708728 (=> res!1989697 e!2937019)))

(assert (=> b!4708728 (= res!1989697 (or (not ((_ is Cons!52637) oldBucket!34)) (not (= (_1!30371 (h!58938 oldBucket!34)) key!4653))))))

(declare-fun e!2937014 () Bool)

(assert (=> b!4708728 e!2937014))

(declare-fun res!1989693 () Bool)

(assert (=> b!4708728 (=> (not res!1989693) (not e!2937014))))

(declare-fun tail!8816 (ListLongMap!4299) ListLongMap!4299)

(assert (=> b!4708728 (= res!1989693 (= (t!359994 (toList!5769 lm!2023)) (toList!5769 (tail!8816 lm!2023))))))

(declare-fun b!4708729 () Bool)

(declare-fun res!1989701 () Bool)

(assert (=> b!4708729 (=> (not res!1989701) (not e!2937018))))

(declare-fun head!10124 (List!52762) tuple2!54156)

(assert (=> b!4708729 (= res!1989701 (= (head!10124 (toList!5769 lm!2023)) (tuple2!54157 hash!405 oldBucket!34)))))

(declare-fun b!4708730 () Bool)

(declare-fun res!1989691 () Bool)

(assert (=> b!4708730 (=> (not res!1989691) (not e!2937020))))

(assert (=> b!4708730 (= res!1989691 (allKeysSameHash!1766 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708731 () Bool)

(declare-datatypes ((ListMap!5133 0))(
  ( (ListMap!5134 (toList!5770 List!52761)) )
))
(declare-fun lt!1873332 () ListMap!5133)

(declare-fun addToMapMapFromBucket!1370 (List!52761 ListMap!5133) ListMap!5133)

(declare-fun extractMap!1966 (List!52762) ListMap!5133)

(assert (=> b!4708731 (= e!2937014 (= lt!1873332 (addToMapMapFromBucket!1370 (_2!30372 (h!58939 (toList!5769 lm!2023))) (extractMap!1966 (t!359994 (toList!5769 lm!2023))))))))

(declare-fun b!4708732 () Bool)

(assert (=> b!4708732 (= e!2937020 e!2937018)))

(declare-fun res!1989696 () Bool)

(assert (=> b!4708732 (=> (not res!1989696) (not e!2937018))))

(declare-fun contains!15948 (ListMap!5133 K!14000) Bool)

(assert (=> b!4708732 (= res!1989696 (contains!15948 lt!1873332 key!4653))))

(assert (=> b!4708732 (= lt!1873332 (extractMap!1966 (toList!5769 lm!2023)))))

(declare-fun b!4708733 () Bool)

(declare-fun tail!8817 (List!52761) List!52761)

(assert (=> b!4708733 (= e!2937019 (= (tail!8817 oldBucket!34) newBucket!218))))

(assert (= (and start!478316 res!1989700) b!4708725))

(assert (= (and b!4708725 res!1989695) b!4708722))

(assert (= (and b!4708722 res!1989690) b!4708727))

(assert (= (and b!4708727 res!1989698) b!4708730))

(assert (= (and b!4708730 res!1989691) b!4708732))

(assert (= (and b!4708732 res!1989696) b!4708718))

(assert (= (and b!4708718 res!1989694) b!4708719))

(assert (= (and b!4708719 res!1989689) b!4708723))

(assert (= (and b!4708723 res!1989699) b!4708729))

(assert (= (and b!4708729 res!1989701) b!4708721))

(assert (= (and b!4708721 res!1989692) b!4708728))

(assert (= (and b!4708728 res!1989693) b!4708731))

(assert (= (and b!4708728 (not res!1989697)) b!4708733))

(assert (= start!478316 b!4708720))

(assert (= (and start!478316 ((_ is Cons!52637) oldBucket!34)) b!4708724))

(assert (= (and start!478316 ((_ is Cons!52637) newBucket!218)) b!4708726))

(declare-fun m!5633073 () Bool)

(assert (=> b!4708730 m!5633073))

(declare-fun m!5633075 () Bool)

(assert (=> b!4708733 m!5633075))

(declare-fun m!5633077 () Bool)

(assert (=> start!478316 m!5633077))

(declare-fun m!5633079 () Bool)

(assert (=> start!478316 m!5633079))

(declare-fun m!5633081 () Bool)

(assert (=> b!4708728 m!5633081))

(declare-fun m!5633083 () Bool)

(assert (=> b!4708718 m!5633083))

(declare-fun m!5633085 () Bool)

(assert (=> b!4708719 m!5633085))

(declare-fun m!5633087 () Bool)

(assert (=> b!4708722 m!5633087))

(declare-fun m!5633089 () Bool)

(assert (=> b!4708723 m!5633089))

(declare-fun m!5633091 () Bool)

(assert (=> b!4708725 m!5633091))

(declare-fun m!5633093 () Bool)

(assert (=> b!4708731 m!5633093))

(assert (=> b!4708731 m!5633093))

(declare-fun m!5633095 () Bool)

(assert (=> b!4708731 m!5633095))

(declare-fun m!5633097 () Bool)

(assert (=> b!4708732 m!5633097))

(declare-fun m!5633099 () Bool)

(assert (=> b!4708732 m!5633099))

(declare-fun m!5633101 () Bool)

(assert (=> b!4708727 m!5633101))

(declare-fun m!5633103 () Bool)

(assert (=> b!4708729 m!5633103))

(check-sat (not b!4708722) (not b!4708729) (not start!478316) tp_is_empty!31055 (not b!4708726) (not b!4708730) tp_is_empty!31053 (not b!4708725) (not b!4708723) (not b!4708724) (not b!4708732) (not b!4708727) (not b!4708733) (not b!4708728) (not b!4708720) (not b!4708718) (not b!4708731) (not b!4708719))
(check-sat)
(get-model)

(declare-fun d!1498536 () Bool)

(assert (=> d!1498536 (= (tail!8817 oldBucket!34) (t!359993 oldBucket!34))))

(assert (=> b!4708733 d!1498536))

(declare-fun d!1498538 () Bool)

(declare-fun res!1989706 () Bool)

(declare-fun e!2937025 () Bool)

(assert (=> d!1498538 (=> res!1989706 e!2937025)))

(assert (=> d!1498538 (= res!1989706 (not ((_ is Cons!52637) newBucket!218)))))

(assert (=> d!1498538 (= (noDuplicateKeys!1940 newBucket!218) e!2937025)))

(declare-fun b!4708744 () Bool)

(declare-fun e!2937026 () Bool)

(assert (=> b!4708744 (= e!2937025 e!2937026)))

(declare-fun res!1989707 () Bool)

(assert (=> b!4708744 (=> (not res!1989707) (not e!2937026))))

(declare-fun containsKey!3238 (List!52761 K!14000) Bool)

(assert (=> b!4708744 (= res!1989707 (not (containsKey!3238 (t!359993 newBucket!218) (_1!30371 (h!58938 newBucket!218)))))))

(declare-fun b!4708745 () Bool)

(assert (=> b!4708745 (= e!2937026 (noDuplicateKeys!1940 (t!359993 newBucket!218)))))

(assert (= (and d!1498538 (not res!1989706)) b!4708744))

(assert (= (and b!4708744 res!1989707) b!4708745))

(declare-fun m!5633109 () Bool)

(assert (=> b!4708744 m!5633109))

(declare-fun m!5633111 () Bool)

(assert (=> b!4708745 m!5633111))

(assert (=> b!4708722 d!1498538))

(declare-fun b!4708764 () Bool)

(declare-datatypes ((Unit!127496 0))(
  ( (Unit!127497) )
))
(declare-fun e!2937040 () Unit!127496)

(declare-fun e!2937043 () Unit!127496)

(assert (=> b!4708764 (= e!2937040 e!2937043)))

(declare-fun c!804556 () Bool)

(declare-fun call!329160 () Bool)

(assert (=> b!4708764 (= c!804556 call!329160)))

(declare-fun b!4708765 () Bool)

(declare-fun lt!1873356 () Unit!127496)

(assert (=> b!4708765 (= e!2937040 lt!1873356)))

(declare-fun lt!1873355 () Unit!127496)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1782 (List!52761 K!14000) Unit!127496)

(assert (=> b!4708765 (= lt!1873355 (lemmaContainsKeyImpliesGetValueByKeyDefined!1782 (toList!5770 lt!1873332) key!4653))))

(declare-datatypes ((Option!12258 0))(
  ( (None!12257) (Some!12257 (v!46784 V!14246)) )
))
(declare-fun isDefined!9513 (Option!12258) Bool)

(declare-fun getValueByKey!1890 (List!52761 K!14000) Option!12258)

(assert (=> b!4708765 (isDefined!9513 (getValueByKey!1890 (toList!5770 lt!1873332) key!4653))))

(declare-fun lt!1873353 () Unit!127496)

(assert (=> b!4708765 (= lt!1873353 lt!1873355)))

(declare-fun lemmaInListThenGetKeysListContains!900 (List!52761 K!14000) Unit!127496)

(assert (=> b!4708765 (= lt!1873356 (lemmaInListThenGetKeysListContains!900 (toList!5770 lt!1873332) key!4653))))

(assert (=> b!4708765 call!329160))

(declare-fun b!4708766 () Bool)

(declare-fun e!2937039 () Bool)

(declare-datatypes ((List!52763 0))(
  ( (Nil!52639) (Cons!52639 (h!58942 K!14000) (t!359995 List!52763)) )
))
(declare-fun contains!15949 (List!52763 K!14000) Bool)

(declare-fun keys!18854 (ListMap!5133) List!52763)

(assert (=> b!4708766 (= e!2937039 (not (contains!15949 (keys!18854 lt!1873332) key!4653)))))

(declare-fun d!1498542 () Bool)

(declare-fun e!2937042 () Bool)

(assert (=> d!1498542 e!2937042))

(declare-fun res!1989714 () Bool)

(assert (=> d!1498542 (=> res!1989714 e!2937042)))

(assert (=> d!1498542 (= res!1989714 e!2937039)))

(declare-fun res!1989716 () Bool)

(assert (=> d!1498542 (=> (not res!1989716) (not e!2937039))))

(declare-fun lt!1873352 () Bool)

(assert (=> d!1498542 (= res!1989716 (not lt!1873352))))

(declare-fun lt!1873351 () Bool)

(assert (=> d!1498542 (= lt!1873352 lt!1873351)))

(declare-fun lt!1873354 () Unit!127496)

(assert (=> d!1498542 (= lt!1873354 e!2937040)))

(declare-fun c!804555 () Bool)

(assert (=> d!1498542 (= c!804555 lt!1873351)))

(declare-fun containsKey!3239 (List!52761 K!14000) Bool)

(assert (=> d!1498542 (= lt!1873351 (containsKey!3239 (toList!5770 lt!1873332) key!4653))))

(assert (=> d!1498542 (= (contains!15948 lt!1873332 key!4653) lt!1873352)))

(declare-fun b!4708767 () Bool)

(declare-fun e!2937044 () List!52763)

(declare-fun getKeysList!905 (List!52761) List!52763)

(assert (=> b!4708767 (= e!2937044 (getKeysList!905 (toList!5770 lt!1873332)))))

(declare-fun b!4708768 () Bool)

(declare-fun e!2937041 () Bool)

(assert (=> b!4708768 (= e!2937042 e!2937041)))

(declare-fun res!1989715 () Bool)

(assert (=> b!4708768 (=> (not res!1989715) (not e!2937041))))

(assert (=> b!4708768 (= res!1989715 (isDefined!9513 (getValueByKey!1890 (toList!5770 lt!1873332) key!4653)))))

(declare-fun b!4708769 () Bool)

(assert (=> b!4708769 false))

(declare-fun lt!1873349 () Unit!127496)

(declare-fun lt!1873350 () Unit!127496)

(assert (=> b!4708769 (= lt!1873349 lt!1873350)))

(assert (=> b!4708769 (containsKey!3239 (toList!5770 lt!1873332) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!904 (List!52761 K!14000) Unit!127496)

(assert (=> b!4708769 (= lt!1873350 (lemmaInGetKeysListThenContainsKey!904 (toList!5770 lt!1873332) key!4653))))

(declare-fun Unit!127507 () Unit!127496)

(assert (=> b!4708769 (= e!2937043 Unit!127507)))

(declare-fun b!4708770 () Bool)

(declare-fun Unit!127508 () Unit!127496)

(assert (=> b!4708770 (= e!2937043 Unit!127508)))

(declare-fun bm!329155 () Bool)

(assert (=> bm!329155 (= call!329160 (contains!15949 e!2937044 key!4653))))

(declare-fun c!804554 () Bool)

(assert (=> bm!329155 (= c!804554 c!804555)))

(declare-fun b!4708771 () Bool)

(assert (=> b!4708771 (= e!2937041 (contains!15949 (keys!18854 lt!1873332) key!4653))))

(declare-fun b!4708772 () Bool)

(assert (=> b!4708772 (= e!2937044 (keys!18854 lt!1873332))))

(assert (= (and d!1498542 c!804555) b!4708765))

(assert (= (and d!1498542 (not c!804555)) b!4708764))

(assert (= (and b!4708764 c!804556) b!4708769))

(assert (= (and b!4708764 (not c!804556)) b!4708770))

(assert (= (or b!4708765 b!4708764) bm!329155))

(assert (= (and bm!329155 c!804554) b!4708767))

(assert (= (and bm!329155 (not c!804554)) b!4708772))

(assert (= (and d!1498542 res!1989716) b!4708766))

(assert (= (and d!1498542 (not res!1989714)) b!4708768))

(assert (= (and b!4708768 res!1989715) b!4708771))

(declare-fun m!5633113 () Bool)

(assert (=> b!4708768 m!5633113))

(assert (=> b!4708768 m!5633113))

(declare-fun m!5633115 () Bool)

(assert (=> b!4708768 m!5633115))

(declare-fun m!5633117 () Bool)

(assert (=> bm!329155 m!5633117))

(declare-fun m!5633119 () Bool)

(assert (=> b!4708765 m!5633119))

(assert (=> b!4708765 m!5633113))

(assert (=> b!4708765 m!5633113))

(assert (=> b!4708765 m!5633115))

(declare-fun m!5633121 () Bool)

(assert (=> b!4708765 m!5633121))

(declare-fun m!5633123 () Bool)

(assert (=> b!4708771 m!5633123))

(assert (=> b!4708771 m!5633123))

(declare-fun m!5633125 () Bool)

(assert (=> b!4708771 m!5633125))

(assert (=> b!4708766 m!5633123))

(assert (=> b!4708766 m!5633123))

(assert (=> b!4708766 m!5633125))

(declare-fun m!5633127 () Bool)

(assert (=> b!4708767 m!5633127))

(declare-fun m!5633129 () Bool)

(assert (=> b!4708769 m!5633129))

(declare-fun m!5633131 () Bool)

(assert (=> b!4708769 m!5633131))

(assert (=> d!1498542 m!5633129))

(assert (=> b!4708772 m!5633123))

(assert (=> b!4708732 d!1498542))

(declare-fun bs!1100703 () Bool)

(declare-fun d!1498544 () Bool)

(assert (= bs!1100703 (and d!1498544 start!478316)))

(declare-fun lambda!212132 () Int)

(assert (=> bs!1100703 (= lambda!212132 lambda!212123)))

(declare-fun lt!1873359 () ListMap!5133)

(declare-fun invariantList!1466 (List!52761) Bool)

(assert (=> d!1498544 (invariantList!1466 (toList!5770 lt!1873359))))

(declare-fun e!2937047 () ListMap!5133)

(assert (=> d!1498544 (= lt!1873359 e!2937047)))

(declare-fun c!804559 () Bool)

(assert (=> d!1498544 (= c!804559 ((_ is Cons!52638) (toList!5769 lm!2023)))))

(assert (=> d!1498544 (forall!11463 (toList!5769 lm!2023) lambda!212132)))

(assert (=> d!1498544 (= (extractMap!1966 (toList!5769 lm!2023)) lt!1873359)))

(declare-fun b!4708777 () Bool)

(assert (=> b!4708777 (= e!2937047 (addToMapMapFromBucket!1370 (_2!30372 (h!58939 (toList!5769 lm!2023))) (extractMap!1966 (t!359994 (toList!5769 lm!2023)))))))

(declare-fun b!4708778 () Bool)

(assert (=> b!4708778 (= e!2937047 (ListMap!5134 Nil!52637))))

(assert (= (and d!1498544 c!804559) b!4708777))

(assert (= (and d!1498544 (not c!804559)) b!4708778))

(declare-fun m!5633133 () Bool)

(assert (=> d!1498544 m!5633133))

(declare-fun m!5633135 () Bool)

(assert (=> d!1498544 m!5633135))

(assert (=> b!4708777 m!5633093))

(assert (=> b!4708777 m!5633093))

(assert (=> b!4708777 m!5633095))

(assert (=> b!4708732 d!1498544))

(declare-fun b!4708838 () Bool)

(assert (=> b!4708838 true))

(declare-fun bs!1100719 () Bool)

(declare-fun b!4708840 () Bool)

(assert (= bs!1100719 (and b!4708840 b!4708838)))

(declare-fun lambda!212198 () Int)

(declare-fun lambda!212197 () Int)

(assert (=> bs!1100719 (= lambda!212198 lambda!212197)))

(assert (=> b!4708840 true))

(declare-fun lt!1873490 () ListMap!5133)

(declare-fun lambda!212199 () Int)

(assert (=> bs!1100719 (= (= lt!1873490 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (= lambda!212199 lambda!212197))))

(assert (=> b!4708840 (= (= lt!1873490 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (= lambda!212199 lambda!212198))))

(assert (=> b!4708840 true))

(declare-fun bs!1100720 () Bool)

(declare-fun d!1498546 () Bool)

(assert (= bs!1100720 (and d!1498546 b!4708838)))

(declare-fun lambda!212200 () Int)

(declare-fun lt!1873486 () ListMap!5133)

(assert (=> bs!1100720 (= (= lt!1873486 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (= lambda!212200 lambda!212197))))

(declare-fun bs!1100721 () Bool)

(assert (= bs!1100721 (and d!1498546 b!4708840)))

(assert (=> bs!1100721 (= (= lt!1873486 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (= lambda!212200 lambda!212198))))

(assert (=> bs!1100721 (= (= lt!1873486 lt!1873490) (= lambda!212200 lambda!212199))))

(assert (=> d!1498546 true))

(declare-fun e!2937086 () ListMap!5133)

(assert (=> b!4708838 (= e!2937086 (extractMap!1966 (t!359994 (toList!5769 lm!2023))))))

(declare-fun lt!1873475 () Unit!127496)

(declare-fun call!329176 () Unit!127496)

(assert (=> b!4708838 (= lt!1873475 call!329176)))

(declare-fun call!329178 () Bool)

(assert (=> b!4708838 call!329178))

(declare-fun lt!1873473 () Unit!127496)

(assert (=> b!4708838 (= lt!1873473 lt!1873475)))

(declare-fun call!329177 () Bool)

(assert (=> b!4708838 call!329177))

(declare-fun lt!1873476 () Unit!127496)

(declare-fun Unit!127511 () Unit!127496)

(assert (=> b!4708838 (= lt!1873476 Unit!127511)))

(declare-fun c!804574 () Bool)

(declare-fun bm!329171 () Bool)

(declare-fun forall!11465 (List!52761 Int) Bool)

(assert (=> bm!329171 (= call!329178 (forall!11465 (toList!5770 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (ite c!804574 lambda!212197 lambda!212199)))))

(declare-fun b!4708839 () Bool)

(declare-fun e!2937088 () Bool)

(assert (=> b!4708839 (= e!2937088 (forall!11465 (toList!5770 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) lambda!212199))))

(assert (=> b!4708840 (= e!2937086 lt!1873490)))

(declare-fun lt!1873479 () ListMap!5133)

(declare-fun +!2208 (ListMap!5133 tuple2!54154) ListMap!5133)

(assert (=> b!4708840 (= lt!1873479 (+!2208 (extractMap!1966 (t!359994 (toList!5769 lm!2023))) (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023))))))))

(assert (=> b!4708840 (= lt!1873490 (addToMapMapFromBucket!1370 (t!359993 (_2!30372 (h!58939 (toList!5769 lm!2023)))) (+!2208 (extractMap!1966 (t!359994 (toList!5769 lm!2023))) (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023)))))))))

(declare-fun lt!1873491 () Unit!127496)

(assert (=> b!4708840 (= lt!1873491 call!329176)))

(assert (=> b!4708840 (forall!11465 (toList!5770 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) lambda!212198)))

(declare-fun lt!1873480 () Unit!127496)

(assert (=> b!4708840 (= lt!1873480 lt!1873491)))

(assert (=> b!4708840 (forall!11465 (toList!5770 lt!1873479) lambda!212199)))

(declare-fun lt!1873478 () Unit!127496)

(declare-fun Unit!127512 () Unit!127496)

(assert (=> b!4708840 (= lt!1873478 Unit!127512)))

(assert (=> b!4708840 (forall!11465 (t!359993 (_2!30372 (h!58939 (toList!5769 lm!2023)))) lambda!212199)))

(declare-fun lt!1873484 () Unit!127496)

(declare-fun Unit!127513 () Unit!127496)

(assert (=> b!4708840 (= lt!1873484 Unit!127513)))

(declare-fun lt!1873472 () Unit!127496)

(declare-fun Unit!127514 () Unit!127496)

(assert (=> b!4708840 (= lt!1873472 Unit!127514)))

(declare-fun lt!1873474 () Unit!127496)

(declare-fun forallContained!3554 (List!52761 Int tuple2!54154) Unit!127496)

(assert (=> b!4708840 (= lt!1873474 (forallContained!3554 (toList!5770 lt!1873479) lambda!212199 (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023))))))))

(assert (=> b!4708840 (contains!15948 lt!1873479 (_1!30371 (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023))))))))

(declare-fun lt!1873471 () Unit!127496)

(declare-fun Unit!127515 () Unit!127496)

(assert (=> b!4708840 (= lt!1873471 Unit!127515)))

(assert (=> b!4708840 (contains!15948 lt!1873490 (_1!30371 (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023))))))))

(declare-fun lt!1873489 () Unit!127496)

(declare-fun Unit!127516 () Unit!127496)

(assert (=> b!4708840 (= lt!1873489 Unit!127516)))

(assert (=> b!4708840 (forall!11465 (_2!30372 (h!58939 (toList!5769 lm!2023))) lambda!212199)))

(declare-fun lt!1873481 () Unit!127496)

(declare-fun Unit!127517 () Unit!127496)

(assert (=> b!4708840 (= lt!1873481 Unit!127517)))

(assert (=> b!4708840 (forall!11465 (toList!5770 lt!1873479) lambda!212199)))

(declare-fun lt!1873485 () Unit!127496)

(declare-fun Unit!127518 () Unit!127496)

(assert (=> b!4708840 (= lt!1873485 Unit!127518)))

(declare-fun lt!1873488 () Unit!127496)

(declare-fun Unit!127519 () Unit!127496)

(assert (=> b!4708840 (= lt!1873488 Unit!127519)))

(declare-fun lt!1873487 () Unit!127496)

(declare-fun addForallContainsKeyThenBeforeAdding!753 (ListMap!5133 ListMap!5133 K!14000 V!14246) Unit!127496)

(assert (=> b!4708840 (= lt!1873487 (addForallContainsKeyThenBeforeAdding!753 (extractMap!1966 (t!359994 (toList!5769 lm!2023))) lt!1873490 (_1!30371 (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023))))) (_2!30371 (h!58938 (_2!30372 (h!58939 (toList!5769 lm!2023)))))))))

(assert (=> b!4708840 call!329178))

(declare-fun lt!1873477 () Unit!127496)

(assert (=> b!4708840 (= lt!1873477 lt!1873487)))

(assert (=> b!4708840 call!329177))

(declare-fun lt!1873483 () Unit!127496)

(declare-fun Unit!127520 () Unit!127496)

(assert (=> b!4708840 (= lt!1873483 Unit!127520)))

(declare-fun res!1989746 () Bool)

(assert (=> b!4708840 (= res!1989746 (forall!11465 (_2!30372 (h!58939 (toList!5769 lm!2023))) lambda!212199))))

(assert (=> b!4708840 (=> (not res!1989746) (not e!2937088))))

(assert (=> b!4708840 e!2937088))

(declare-fun lt!1873482 () Unit!127496)

(declare-fun Unit!127521 () Unit!127496)

(assert (=> b!4708840 (= lt!1873482 Unit!127521)))

(declare-fun bm!329173 () Bool)

(assert (=> bm!329173 (= call!329177 (forall!11465 (toList!5770 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) (ite c!804574 lambda!212197 lambda!212199)))))

(declare-fun b!4708841 () Bool)

(declare-fun res!1989748 () Bool)

(declare-fun e!2937087 () Bool)

(assert (=> b!4708841 (=> (not res!1989748) (not e!2937087))))

(assert (=> b!4708841 (= res!1989748 (forall!11465 (toList!5770 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) lambda!212200))))

(declare-fun b!4708842 () Bool)

(assert (=> b!4708842 (= e!2937087 (invariantList!1466 (toList!5770 lt!1873486)))))

(assert (=> d!1498546 e!2937087))

(declare-fun res!1989747 () Bool)

(assert (=> d!1498546 (=> (not res!1989747) (not e!2937087))))

(assert (=> d!1498546 (= res!1989747 (forall!11465 (_2!30372 (h!58939 (toList!5769 lm!2023))) lambda!212200))))

(assert (=> d!1498546 (= lt!1873486 e!2937086)))

(assert (=> d!1498546 (= c!804574 ((_ is Nil!52637) (_2!30372 (h!58939 (toList!5769 lm!2023)))))))

(assert (=> d!1498546 (noDuplicateKeys!1940 (_2!30372 (h!58939 (toList!5769 lm!2023))))))

(assert (=> d!1498546 (= (addToMapMapFromBucket!1370 (_2!30372 (h!58939 (toList!5769 lm!2023))) (extractMap!1966 (t!359994 (toList!5769 lm!2023)))) lt!1873486)))

(declare-fun bm!329172 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!754 (ListMap!5133) Unit!127496)

(assert (=> bm!329172 (= call!329176 (lemmaContainsAllItsOwnKeys!754 (extractMap!1966 (t!359994 (toList!5769 lm!2023)))))))

(assert (= (and d!1498546 c!804574) b!4708838))

(assert (= (and d!1498546 (not c!804574)) b!4708840))

(assert (= (and b!4708840 res!1989746) b!4708839))

(assert (= (or b!4708838 b!4708840) bm!329172))

(assert (= (or b!4708838 b!4708840) bm!329173))

(assert (= (or b!4708838 b!4708840) bm!329171))

(assert (= (and d!1498546 res!1989747) b!4708841))

(assert (= (and b!4708841 res!1989748) b!4708842))

(assert (=> bm!329172 m!5633093))

(declare-fun m!5633203 () Bool)

(assert (=> bm!329172 m!5633203))

(declare-fun m!5633205 () Bool)

(assert (=> b!4708839 m!5633205))

(declare-fun m!5633207 () Bool)

(assert (=> bm!329173 m!5633207))

(declare-fun m!5633209 () Bool)

(assert (=> b!4708842 m!5633209))

(assert (=> bm!329171 m!5633207))

(declare-fun m!5633211 () Bool)

(assert (=> d!1498546 m!5633211))

(declare-fun m!5633213 () Bool)

(assert (=> d!1498546 m!5633213))

(declare-fun m!5633215 () Bool)

(assert (=> b!4708840 m!5633215))

(declare-fun m!5633217 () Bool)

(assert (=> b!4708840 m!5633217))

(declare-fun m!5633219 () Bool)

(assert (=> b!4708840 m!5633219))

(declare-fun m!5633221 () Bool)

(assert (=> b!4708840 m!5633221))

(declare-fun m!5633223 () Bool)

(assert (=> b!4708840 m!5633223))

(declare-fun m!5633225 () Bool)

(assert (=> b!4708840 m!5633225))

(assert (=> b!4708840 m!5633093))

(assert (=> b!4708840 m!5633223))

(declare-fun m!5633227 () Bool)

(assert (=> b!4708840 m!5633227))

(declare-fun m!5633229 () Bool)

(assert (=> b!4708840 m!5633229))

(declare-fun m!5633231 () Bool)

(assert (=> b!4708840 m!5633231))

(assert (=> b!4708840 m!5633221))

(assert (=> b!4708840 m!5633229))

(assert (=> b!4708840 m!5633093))

(declare-fun m!5633233 () Bool)

(assert (=> b!4708840 m!5633233))

(declare-fun m!5633235 () Bool)

(assert (=> b!4708841 m!5633235))

(assert (=> b!4708731 d!1498546))

(declare-fun bs!1100722 () Bool)

(declare-fun d!1498570 () Bool)

(assert (= bs!1100722 (and d!1498570 start!478316)))

(declare-fun lambda!212201 () Int)

(assert (=> bs!1100722 (= lambda!212201 lambda!212123)))

(declare-fun bs!1100723 () Bool)

(assert (= bs!1100723 (and d!1498570 d!1498544)))

(assert (=> bs!1100723 (= lambda!212201 lambda!212132)))

(declare-fun lt!1873492 () ListMap!5133)

(assert (=> d!1498570 (invariantList!1466 (toList!5770 lt!1873492))))

(declare-fun e!2937089 () ListMap!5133)

(assert (=> d!1498570 (= lt!1873492 e!2937089)))

(declare-fun c!804575 () Bool)

(assert (=> d!1498570 (= c!804575 ((_ is Cons!52638) (t!359994 (toList!5769 lm!2023))))))

(assert (=> d!1498570 (forall!11463 (t!359994 (toList!5769 lm!2023)) lambda!212201)))

(assert (=> d!1498570 (= (extractMap!1966 (t!359994 (toList!5769 lm!2023))) lt!1873492)))

(declare-fun b!4708845 () Bool)

(assert (=> b!4708845 (= e!2937089 (addToMapMapFromBucket!1370 (_2!30372 (h!58939 (t!359994 (toList!5769 lm!2023)))) (extractMap!1966 (t!359994 (t!359994 (toList!5769 lm!2023))))))))

(declare-fun b!4708846 () Bool)

(assert (=> b!4708846 (= e!2937089 (ListMap!5134 Nil!52637))))

(assert (= (and d!1498570 c!804575) b!4708845))

(assert (= (and d!1498570 (not c!804575)) b!4708846))

(declare-fun m!5633237 () Bool)

(assert (=> d!1498570 m!5633237))

(declare-fun m!5633239 () Bool)

(assert (=> d!1498570 m!5633239))

(declare-fun m!5633241 () Bool)

(assert (=> b!4708845 m!5633241))

(assert (=> b!4708845 m!5633241))

(declare-fun m!5633243 () Bool)

(assert (=> b!4708845 m!5633243))

(assert (=> b!4708731 d!1498570))

(declare-fun bs!1100724 () Bool)

(declare-fun d!1498572 () Bool)

(assert (= bs!1100724 (and d!1498572 b!4708838)))

(declare-fun lambda!212204 () Int)

(assert (=> bs!1100724 (not (= lambda!212204 lambda!212197))))

(declare-fun bs!1100725 () Bool)

(assert (= bs!1100725 (and d!1498572 b!4708840)))

(assert (=> bs!1100725 (not (= lambda!212204 lambda!212198))))

(assert (=> bs!1100725 (not (= lambda!212204 lambda!212199))))

(declare-fun bs!1100726 () Bool)

(assert (= bs!1100726 (and d!1498572 d!1498546)))

(assert (=> bs!1100726 (not (= lambda!212204 lambda!212200))))

(assert (=> d!1498572 true))

(assert (=> d!1498572 true))

(assert (=> d!1498572 (= (allKeysSameHash!1766 oldBucket!34 hash!405 hashF!1323) (forall!11465 oldBucket!34 lambda!212204))))

(declare-fun bs!1100727 () Bool)

(assert (= bs!1100727 d!1498572))

(declare-fun m!5633245 () Bool)

(assert (=> bs!1100727 m!5633245))

(assert (=> b!4708730 d!1498572))

(declare-fun bs!1100728 () Bool)

(declare-fun d!1498574 () Bool)

(assert (= bs!1100728 (and d!1498574 b!4708840)))

(declare-fun lambda!212205 () Int)

(assert (=> bs!1100728 (not (= lambda!212205 lambda!212199))))

(declare-fun bs!1100729 () Bool)

(assert (= bs!1100729 (and d!1498574 d!1498546)))

(assert (=> bs!1100729 (not (= lambda!212205 lambda!212200))))

(assert (=> bs!1100728 (not (= lambda!212205 lambda!212198))))

(declare-fun bs!1100730 () Bool)

(assert (= bs!1100730 (and d!1498574 d!1498572)))

(assert (=> bs!1100730 (= lambda!212205 lambda!212204)))

(declare-fun bs!1100731 () Bool)

(assert (= bs!1100731 (and d!1498574 b!4708838)))

(assert (=> bs!1100731 (not (= lambda!212205 lambda!212197))))

(assert (=> d!1498574 true))

(assert (=> d!1498574 true))

(assert (=> d!1498574 (= (allKeysSameHash!1766 newBucket!218 hash!405 hashF!1323) (forall!11465 newBucket!218 lambda!212205))))

(declare-fun bs!1100732 () Bool)

(assert (= bs!1100732 d!1498574))

(declare-fun m!5633247 () Bool)

(assert (=> bs!1100732 m!5633247))

(assert (=> b!4708719 d!1498574))

(declare-fun d!1498576 () Bool)

(declare-fun res!1989759 () Bool)

(declare-fun e!2937106 () Bool)

(assert (=> d!1498576 (=> res!1989759 e!2937106)))

(assert (=> d!1498576 (= res!1989759 ((_ is Nil!52638) (toList!5769 lm!2023)))))

(assert (=> d!1498576 (= (forall!11463 (toList!5769 lm!2023) lambda!212123) e!2937106)))

(declare-fun b!4708873 () Bool)

(declare-fun e!2937107 () Bool)

(assert (=> b!4708873 (= e!2937106 e!2937107)))

(declare-fun res!1989760 () Bool)

(assert (=> b!4708873 (=> (not res!1989760) (not e!2937107))))

(declare-fun dynLambda!21769 (Int tuple2!54156) Bool)

(assert (=> b!4708873 (= res!1989760 (dynLambda!21769 lambda!212123 (h!58939 (toList!5769 lm!2023))))))

(declare-fun b!4708874 () Bool)

(assert (=> b!4708874 (= e!2937107 (forall!11463 (t!359994 (toList!5769 lm!2023)) lambda!212123))))

(assert (= (and d!1498576 (not res!1989759)) b!4708873))

(assert (= (and b!4708873 res!1989760) b!4708874))

(declare-fun b_lambda!177615 () Bool)

(assert (=> (not b_lambda!177615) (not b!4708873)))

(declare-fun m!5633249 () Bool)

(assert (=> b!4708873 m!5633249))

(declare-fun m!5633251 () Bool)

(assert (=> b!4708874 m!5633251))

(assert (=> start!478316 d!1498576))

(declare-fun d!1498578 () Bool)

(declare-fun isStrictlySorted!705 (List!52762) Bool)

(assert (=> d!1498578 (= (inv!67874 lm!2023) (isStrictlySorted!705 (toList!5769 lm!2023)))))

(declare-fun bs!1100733 () Bool)

(assert (= bs!1100733 d!1498578))

(declare-fun m!5633253 () Bool)

(assert (=> bs!1100733 m!5633253))

(assert (=> start!478316 d!1498578))

(declare-fun d!1498580 () Bool)

(assert (=> d!1498580 (= (head!10124 (toList!5769 lm!2023)) (h!58939 (toList!5769 lm!2023)))))

(assert (=> b!4708729 d!1498580))

(declare-fun d!1498582 () Bool)

(declare-fun hash!4257 (Hashable!6309 K!14000) (_ BitVec 64))

(assert (=> d!1498582 (= (hash!4256 hashF!1323 key!4653) (hash!4257 hashF!1323 key!4653))))

(declare-fun bs!1100734 () Bool)

(assert (= bs!1100734 d!1498582))

(declare-fun m!5633263 () Bool)

(assert (=> bs!1100734 m!5633263))

(assert (=> b!4708718 d!1498582))

(declare-fun d!1498584 () Bool)

(declare-fun tail!8819 (List!52762) List!52762)

(assert (=> d!1498584 (= (tail!8816 lm!2023) (ListLongMap!4300 (tail!8819 (toList!5769 lm!2023))))))

(declare-fun bs!1100736 () Bool)

(assert (= bs!1100736 d!1498584))

(declare-fun m!5633277 () Bool)

(assert (=> bs!1100736 m!5633277))

(assert (=> b!4708728 d!1498584))

(declare-fun b!4708908 () Bool)

(declare-fun e!2937126 () List!52761)

(assert (=> b!4708908 (= e!2937126 Nil!52637)))

(declare-fun b!4708905 () Bool)

(declare-fun e!2937127 () List!52761)

(assert (=> b!4708905 (= e!2937127 (t!359993 oldBucket!34))))

(declare-fun b!4708906 () Bool)

(assert (=> b!4708906 (= e!2937127 e!2937126)))

(declare-fun c!804591 () Bool)

(assert (=> b!4708906 (= c!804591 ((_ is Cons!52637) oldBucket!34))))

(declare-fun b!4708907 () Bool)

(assert (=> b!4708907 (= e!2937126 (Cons!52637 (h!58938 oldBucket!34) (removePairForKey!1535 (t!359993 oldBucket!34) key!4653)))))

(declare-fun d!1498588 () Bool)

(declare-fun lt!1873520 () List!52761)

(assert (=> d!1498588 (not (containsKey!3238 lt!1873520 key!4653))))

(assert (=> d!1498588 (= lt!1873520 e!2937127)))

(declare-fun c!804590 () Bool)

(assert (=> d!1498588 (= c!804590 (and ((_ is Cons!52637) oldBucket!34) (= (_1!30371 (h!58938 oldBucket!34)) key!4653)))))

(assert (=> d!1498588 (noDuplicateKeys!1940 oldBucket!34)))

(assert (=> d!1498588 (= (removePairForKey!1535 oldBucket!34 key!4653) lt!1873520)))

(assert (= (and d!1498588 c!804590) b!4708905))

(assert (= (and d!1498588 (not c!804590)) b!4708906))

(assert (= (and b!4708906 c!804591) b!4708907))

(assert (= (and b!4708906 (not c!804591)) b!4708908))

(declare-fun m!5633285 () Bool)

(assert (=> b!4708907 m!5633285))

(declare-fun m!5633287 () Bool)

(assert (=> d!1498588 m!5633287))

(assert (=> d!1498588 m!5633091))

(assert (=> b!4708727 d!1498588))

(declare-fun d!1498594 () Bool)

(declare-fun res!1989764 () Bool)

(declare-fun e!2937128 () Bool)

(assert (=> d!1498594 (=> res!1989764 e!2937128)))

(assert (=> d!1498594 (= res!1989764 (not ((_ is Cons!52637) oldBucket!34)))))

(assert (=> d!1498594 (= (noDuplicateKeys!1940 oldBucket!34) e!2937128)))

(declare-fun b!4708909 () Bool)

(declare-fun e!2937129 () Bool)

(assert (=> b!4708909 (= e!2937128 e!2937129)))

(declare-fun res!1989765 () Bool)

(assert (=> b!4708909 (=> (not res!1989765) (not e!2937129))))

(assert (=> b!4708909 (= res!1989765 (not (containsKey!3238 (t!359993 oldBucket!34) (_1!30371 (h!58938 oldBucket!34)))))))

(declare-fun b!4708910 () Bool)

(assert (=> b!4708910 (= e!2937129 (noDuplicateKeys!1940 (t!359993 oldBucket!34)))))

(assert (= (and d!1498594 (not res!1989764)) b!4708909))

(assert (= (and b!4708909 res!1989765) b!4708910))

(declare-fun m!5633289 () Bool)

(assert (=> b!4708909 m!5633289))

(declare-fun m!5633291 () Bool)

(assert (=> b!4708910 m!5633291))

(assert (=> b!4708725 d!1498594))

(declare-fun bs!1100741 () Bool)

(declare-fun d!1498596 () Bool)

(assert (= bs!1100741 (and d!1498596 start!478316)))

(declare-fun lambda!212209 () Int)

(assert (=> bs!1100741 (not (= lambda!212209 lambda!212123))))

(declare-fun bs!1100742 () Bool)

(assert (= bs!1100742 (and d!1498596 d!1498544)))

(assert (=> bs!1100742 (not (= lambda!212209 lambda!212132))))

(declare-fun bs!1100743 () Bool)

(assert (= bs!1100743 (and d!1498596 d!1498570)))

(assert (=> bs!1100743 (not (= lambda!212209 lambda!212201))))

(assert (=> d!1498596 true))

(assert (=> d!1498596 (= (allKeysSameHashInMap!1854 lm!2023 hashF!1323) (forall!11463 (toList!5769 lm!2023) lambda!212209))))

(declare-fun bs!1100744 () Bool)

(assert (= bs!1100744 d!1498596))

(declare-fun m!5633293 () Bool)

(assert (=> bs!1100744 m!5633293))

(assert (=> b!4708723 d!1498596))

(declare-fun e!2937132 () Bool)

(declare-fun b!4708917 () Bool)

(declare-fun tp!1347264 () Bool)

(assert (=> b!4708917 (= e!2937132 (and tp_is_empty!31053 tp_is_empty!31055 tp!1347264))))

(assert (=> b!4708726 (= tp!1347249 e!2937132)))

(assert (= (and b!4708726 ((_ is Cons!52637) (t!359993 newBucket!218))) b!4708917))

(declare-fun b!4708922 () Bool)

(declare-fun e!2937135 () Bool)

(declare-fun tp!1347269 () Bool)

(declare-fun tp!1347270 () Bool)

(assert (=> b!4708922 (= e!2937135 (and tp!1347269 tp!1347270))))

(assert (=> b!4708720 (= tp!1347251 e!2937135)))

(assert (= (and b!4708720 ((_ is Cons!52638) (toList!5769 lm!2023))) b!4708922))

(declare-fun tp!1347271 () Bool)

(declare-fun e!2937136 () Bool)

(declare-fun b!4708923 () Bool)

(assert (=> b!4708923 (= e!2937136 (and tp_is_empty!31053 tp_is_empty!31055 tp!1347271))))

(assert (=> b!4708724 (= tp!1347250 e!2937136)))

(assert (= (and b!4708724 ((_ is Cons!52637) (t!359993 oldBucket!34))) b!4708923))

(declare-fun b_lambda!177619 () Bool)

(assert (= b_lambda!177615 (or start!478316 b_lambda!177619)))

(declare-fun bs!1100745 () Bool)

(declare-fun d!1498598 () Bool)

(assert (= bs!1100745 (and d!1498598 start!478316)))

(assert (=> bs!1100745 (= (dynLambda!21769 lambda!212123 (h!58939 (toList!5769 lm!2023))) (noDuplicateKeys!1940 (_2!30372 (h!58939 (toList!5769 lm!2023)))))))

(assert (=> bs!1100745 m!5633213))

(assert (=> b!4708873 d!1498598))

(check-sat (not bm!329155) (not b!4708839) (not b!4708765) (not b!4708842) (not b!4708917) (not b!4708744) tp_is_empty!31055 (not d!1498570) (not b!4708777) (not bm!329172) tp_is_empty!31053 (not b!4708772) (not b!4708922) (not b!4708909) (not b!4708840) (not b!4708907) (not d!1498582) (not d!1498596) (not b!4708841) (not b!4708745) (not b!4708910) (not b!4708923) (not b!4708766) (not bm!329171) (not d!1498542) (not bm!329173) (not b_lambda!177619) (not b!4708845) (not d!1498574) (not bs!1100745) (not b!4708768) (not d!1498546) (not d!1498572) (not d!1498578) (not b!4708769) (not b!4708767) (not d!1498584) (not d!1498544) (not b!4708874) (not d!1498588) (not b!4708771))
(check-sat)
