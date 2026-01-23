; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497886 () Bool)

(assert start!497886)

(declare-fun b!4814225 () Bool)

(declare-fun e!3007801 () Bool)

(declare-fun e!3007802 () Bool)

(assert (=> b!4814225 (= e!3007801 (not e!3007802))))

(declare-fun res!2047727 () Bool)

(assert (=> b!4814225 (=> res!2047727 e!3007802)))

(declare-datatypes ((K!16312 0))(
  ( (K!16313 (val!21355 Int)) )
))
(declare-datatypes ((V!16558 0))(
  ( (V!16559 (val!21356 Int)) )
))
(declare-datatypes ((tuple2!57646 0))(
  ( (tuple2!57647 (_1!32117 K!16312) (_2!32117 V!16558)) )
))
(declare-datatypes ((List!54791 0))(
  ( (Nil!54667) (Cons!54667 (h!61099 tuple2!57646) (t!362287 List!54791)) )
))
(declare-datatypes ((tuple2!57648 0))(
  ( (tuple2!57649 (_1!32118 (_ BitVec 64)) (_2!32118 List!54791)) )
))
(declare-datatypes ((List!54792 0))(
  ( (Nil!54668) (Cons!54668 (h!61100 tuple2!57648) (t!362288 List!54792)) )
))
(declare-datatypes ((ListLongMap!5721 0))(
  ( (ListLongMap!5722 (toList!7241 List!54792)) )
))
(declare-fun lm!1254 () ListLongMap!5721)

(declare-fun lt!1965231 () (_ BitVec 64))

(declare-fun contains!18444 (List!54792 tuple2!57648) Bool)

(declare-fun apply!13234 (ListLongMap!5721 (_ BitVec 64)) List!54791)

(assert (=> b!4814225 (= res!2047727 (contains!18444 (toList!7241 lm!1254) (tuple2!57649 lt!1965231 (apply!13234 lm!1254 lt!1965231))))))

(declare-fun contains!18445 (ListLongMap!5721 (_ BitVec 64)) Bool)

(assert (=> b!4814225 (contains!18445 lm!1254 lt!1965231)))

(declare-datatypes ((Hashable!7129 0))(
  ( (HashableExt!7128 (__x!33404 Int)) )
))
(declare-fun hashF!938 () Hashable!7129)

(declare-fun key!2670 () K!16312)

(declare-fun hash!5194 (Hashable!7129 K!16312) (_ BitVec 64))

(assert (=> b!4814225 (= lt!1965231 (hash!5194 hashF!938 key!2670))))

(declare-datatypes ((Unit!141800 0))(
  ( (Unit!141801) )
))
(declare-fun lt!1965230 () Unit!141800)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1067 (ListLongMap!5721 K!16312 Hashable!7129) Unit!141800)

(assert (=> b!4814225 (= lt!1965230 (lemmaInGenMapThenLongMapContainsHash!1067 lm!1254 key!2670 hashF!938))))

(declare-fun b!4814226 () Bool)

(declare-fun res!2047729 () Bool)

(assert (=> b!4814226 (=> (not res!2047729) (not e!3007801))))

(declare-fun allKeysSameHashInMap!2445 (ListLongMap!5721 Hashable!7129) Bool)

(assert (=> b!4814226 (= res!2047729 (allKeysSameHashInMap!2445 lm!1254 hashF!938))))

(declare-fun b!4814227 () Bool)

(declare-fun e!3007799 () Bool)

(assert (=> b!4814227 (= e!3007802 e!3007799)))

(declare-fun res!2047728 () Bool)

(assert (=> b!4814227 (=> (not res!2047728) (not e!3007799))))

(declare-fun isStrictlySorted!940 (List!54792) Bool)

(assert (=> b!4814227 (= res!2047728 (isStrictlySorted!940 (toList!7241 lm!1254)))))

(declare-fun b!4814228 () Bool)

(declare-fun e!3007800 () Bool)

(declare-fun tp!1361698 () Bool)

(assert (=> b!4814228 (= e!3007800 tp!1361698)))

(declare-fun res!2047725 () Bool)

(assert (=> start!497886 (=> (not res!2047725) (not e!3007801))))

(declare-fun lambda!234112 () Int)

(declare-fun forall!12433 (List!54792 Int) Bool)

(assert (=> start!497886 (= res!2047725 (forall!12433 (toList!7241 lm!1254) lambda!234112))))

(assert (=> start!497886 e!3007801))

(declare-fun inv!70213 (ListLongMap!5721) Bool)

(assert (=> start!497886 (and (inv!70213 lm!1254) e!3007800)))

(assert (=> start!497886 true))

(declare-fun tp_is_empty!34127 () Bool)

(assert (=> start!497886 tp_is_empty!34127))

(declare-fun b!4814229 () Bool)

(declare-fun res!2047726 () Bool)

(assert (=> b!4814229 (=> (not res!2047726) (not e!3007801))))

(declare-datatypes ((ListMap!6655 0))(
  ( (ListMap!6656 (toList!7242 List!54791)) )
))
(declare-fun contains!18446 (ListMap!6655 K!16312) Bool)

(declare-fun extractMap!2579 (List!54792) ListMap!6655)

(assert (=> b!4814229 (= res!2047726 (contains!18446 (extractMap!2579 (toList!7241 lm!1254)) key!2670))))

(declare-fun b!4814230 () Bool)

(declare-datatypes ((Option!13377 0))(
  ( (None!13376) (Some!13376 (v!49015 List!54791)) )
))
(declare-fun isDefined!10514 (Option!13377) Bool)

(declare-fun getValueByKey!2540 (List!54792 (_ BitVec 64)) Option!13377)

(assert (=> b!4814230 (= e!3007799 (isDefined!10514 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231)))))

(assert (= (and start!497886 res!2047725) b!4814226))

(assert (= (and b!4814226 res!2047729) b!4814229))

(assert (= (and b!4814229 res!2047726) b!4814225))

(assert (= (and b!4814225 (not res!2047727)) b!4814227))

(assert (= (and b!4814227 res!2047728) b!4814230))

(assert (= start!497886 b!4814228))

(declare-fun m!5800114 () Bool)

(assert (=> b!4814230 m!5800114))

(assert (=> b!4814230 m!5800114))

(declare-fun m!5800116 () Bool)

(assert (=> b!4814230 m!5800116))

(declare-fun m!5800118 () Bool)

(assert (=> b!4814229 m!5800118))

(assert (=> b!4814229 m!5800118))

(declare-fun m!5800120 () Bool)

(assert (=> b!4814229 m!5800120))

(declare-fun m!5800122 () Bool)

(assert (=> b!4814225 m!5800122))

(declare-fun m!5800124 () Bool)

(assert (=> b!4814225 m!5800124))

(declare-fun m!5800126 () Bool)

(assert (=> b!4814225 m!5800126))

(declare-fun m!5800128 () Bool)

(assert (=> b!4814225 m!5800128))

(declare-fun m!5800130 () Bool)

(assert (=> b!4814225 m!5800130))

(declare-fun m!5800132 () Bool)

(assert (=> b!4814227 m!5800132))

(declare-fun m!5800134 () Bool)

(assert (=> start!497886 m!5800134))

(declare-fun m!5800136 () Bool)

(assert (=> start!497886 m!5800136))

(declare-fun m!5800138 () Bool)

(assert (=> b!4814226 m!5800138))

(push 1)

(assert (not b!4814229))

(assert (not b!4814230))

(assert tp_is_empty!34127)

(assert (not b!4814228))

(assert (not b!4814225))

(assert (not b!4814226))

(assert (not b!4814227))

(assert (not start!497886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1160327 () Bool)

(declare-fun d!1540910 () Bool)

(assert (= bs!1160327 (and d!1540910 start!497886)))

(declare-fun lambda!234118 () Int)

(assert (=> bs!1160327 (not (= lambda!234118 lambda!234112))))

(assert (=> d!1540910 true))

(assert (=> d!1540910 (= (allKeysSameHashInMap!2445 lm!1254 hashF!938) (forall!12433 (toList!7241 lm!1254) lambda!234118))))

(declare-fun bs!1160328 () Bool)

(assert (= bs!1160328 d!1540910))

(declare-fun m!5800166 () Bool)

(assert (=> bs!1160328 m!5800166))

(assert (=> b!4814226 d!1540910))

(declare-fun bs!1160329 () Bool)

(declare-fun d!1540912 () Bool)

(assert (= bs!1160329 (and d!1540912 start!497886)))

(declare-fun lambda!234121 () Int)

(assert (=> bs!1160329 (= lambda!234121 lambda!234112)))

(declare-fun bs!1160330 () Bool)

(assert (= bs!1160330 (and d!1540912 d!1540910)))

(assert (=> bs!1160330 (not (= lambda!234121 lambda!234118))))

(assert (=> d!1540912 (contains!18445 lm!1254 (hash!5194 hashF!938 key!2670))))

(declare-fun lt!1965240 () Unit!141800)

(declare-fun choose!34898 (ListLongMap!5721 K!16312 Hashable!7129) Unit!141800)

(assert (=> d!1540912 (= lt!1965240 (choose!34898 lm!1254 key!2670 hashF!938))))

(assert (=> d!1540912 (forall!12433 (toList!7241 lm!1254) lambda!234121)))

(assert (=> d!1540912 (= (lemmaInGenMapThenLongMapContainsHash!1067 lm!1254 key!2670 hashF!938) lt!1965240)))

(declare-fun bs!1160331 () Bool)

(assert (= bs!1160331 d!1540912))

(assert (=> bs!1160331 m!5800124))

(assert (=> bs!1160331 m!5800124))

(declare-fun m!5800168 () Bool)

(assert (=> bs!1160331 m!5800168))

(declare-fun m!5800170 () Bool)

(assert (=> bs!1160331 m!5800170))

(declare-fun m!5800172 () Bool)

(assert (=> bs!1160331 m!5800172))

(assert (=> b!4814225 d!1540912))

(declare-fun d!1540914 () Bool)

(declare-fun hash!5196 (Hashable!7129 K!16312) (_ BitVec 64))

(assert (=> d!1540914 (= (hash!5194 hashF!938 key!2670) (hash!5196 hashF!938 key!2670))))

(declare-fun bs!1160332 () Bool)

(assert (= bs!1160332 d!1540914))

(declare-fun m!5800174 () Bool)

(assert (=> bs!1160332 m!5800174))

(assert (=> b!4814225 d!1540914))

(declare-fun d!1540916 () Bool)

(declare-fun get!18705 (Option!13377) List!54791)

(assert (=> d!1540916 (= (apply!13234 lm!1254 lt!1965231) (get!18705 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231)))))

(declare-fun bs!1160333 () Bool)

(assert (= bs!1160333 d!1540916))

(assert (=> bs!1160333 m!5800114))

(assert (=> bs!1160333 m!5800114))

(declare-fun m!5800176 () Bool)

(assert (=> bs!1160333 m!5800176))

(assert (=> b!4814225 d!1540916))

(declare-fun d!1540918 () Bool)

(declare-fun e!3007819 () Bool)

(assert (=> d!1540918 e!3007819))

(declare-fun res!2047747 () Bool)

(assert (=> d!1540918 (=> res!2047747 e!3007819)))

(declare-fun lt!1965249 () Bool)

(assert (=> d!1540918 (= res!2047747 (not lt!1965249))))

(declare-fun lt!1965252 () Bool)

(assert (=> d!1540918 (= lt!1965249 lt!1965252)))

(declare-fun lt!1965250 () Unit!141800)

(declare-fun e!3007820 () Unit!141800)

(assert (=> d!1540918 (= lt!1965250 e!3007820)))

(declare-fun c!820511 () Bool)

(assert (=> d!1540918 (= c!820511 lt!1965252)))

(declare-fun containsKey!4210 (List!54792 (_ BitVec 64)) Bool)

(assert (=> d!1540918 (= lt!1965252 (containsKey!4210 (toList!7241 lm!1254) lt!1965231))))

(assert (=> d!1540918 (= (contains!18445 lm!1254 lt!1965231) lt!1965249)))

(declare-fun b!4814257 () Bool)

(declare-fun lt!1965251 () Unit!141800)

(assert (=> b!4814257 (= e!3007820 lt!1965251)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2327 (List!54792 (_ BitVec 64)) Unit!141800)

(assert (=> b!4814257 (= lt!1965251 (lemmaContainsKeyImpliesGetValueByKeyDefined!2327 (toList!7241 lm!1254) lt!1965231))))

(assert (=> b!4814257 (isDefined!10514 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231))))

(declare-fun b!4814258 () Bool)

(declare-fun Unit!141804 () Unit!141800)

(assert (=> b!4814258 (= e!3007820 Unit!141804)))

(declare-fun b!4814259 () Bool)

(assert (=> b!4814259 (= e!3007819 (isDefined!10514 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231)))))

(assert (= (and d!1540918 c!820511) b!4814257))

(assert (= (and d!1540918 (not c!820511)) b!4814258))

(assert (= (and d!1540918 (not res!2047747)) b!4814259))

(declare-fun m!5800178 () Bool)

(assert (=> d!1540918 m!5800178))

(declare-fun m!5800180 () Bool)

(assert (=> b!4814257 m!5800180))

(assert (=> b!4814257 m!5800114))

(assert (=> b!4814257 m!5800114))

(assert (=> b!4814257 m!5800116))

(assert (=> b!4814259 m!5800114))

(assert (=> b!4814259 m!5800114))

(assert (=> b!4814259 m!5800116))

(assert (=> b!4814225 d!1540918))

(declare-fun d!1540920 () Bool)

(declare-fun lt!1965255 () Bool)

(declare-fun content!9785 (List!54792) (Set tuple2!57648))

(assert (=> d!1540920 (= lt!1965255 (set.member (tuple2!57649 lt!1965231 (apply!13234 lm!1254 lt!1965231)) (content!9785 (toList!7241 lm!1254))))))

(declare-fun e!3007826 () Bool)

(assert (=> d!1540920 (= lt!1965255 e!3007826)))

(declare-fun res!2047753 () Bool)

(assert (=> d!1540920 (=> (not res!2047753) (not e!3007826))))

(assert (=> d!1540920 (= res!2047753 (is-Cons!54668 (toList!7241 lm!1254)))))

(assert (=> d!1540920 (= (contains!18444 (toList!7241 lm!1254) (tuple2!57649 lt!1965231 (apply!13234 lm!1254 lt!1965231))) lt!1965255)))

(declare-fun b!4814264 () Bool)

(declare-fun e!3007825 () Bool)

(assert (=> b!4814264 (= e!3007826 e!3007825)))

(declare-fun res!2047752 () Bool)

(assert (=> b!4814264 (=> res!2047752 e!3007825)))

(assert (=> b!4814264 (= res!2047752 (= (h!61100 (toList!7241 lm!1254)) (tuple2!57649 lt!1965231 (apply!13234 lm!1254 lt!1965231))))))

(declare-fun b!4814265 () Bool)

(assert (=> b!4814265 (= e!3007825 (contains!18444 (t!362288 (toList!7241 lm!1254)) (tuple2!57649 lt!1965231 (apply!13234 lm!1254 lt!1965231))))))

(assert (= (and d!1540920 res!2047753) b!4814264))

(assert (= (and b!4814264 (not res!2047752)) b!4814265))

(declare-fun m!5800182 () Bool)

(assert (=> d!1540920 m!5800182))

(declare-fun m!5800184 () Bool)

(assert (=> d!1540920 m!5800184))

(declare-fun m!5800186 () Bool)

(assert (=> b!4814265 m!5800186))

(assert (=> b!4814225 d!1540920))

(declare-fun d!1540924 () Bool)

(declare-fun isEmpty!29565 (Option!13377) Bool)

(assert (=> d!1540924 (= (isDefined!10514 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231)) (not (isEmpty!29565 (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231))))))

(declare-fun bs!1160334 () Bool)

(assert (= bs!1160334 d!1540924))

(assert (=> bs!1160334 m!5800114))

(declare-fun m!5800188 () Bool)

(assert (=> bs!1160334 m!5800188))

(assert (=> b!4814230 d!1540924))

(declare-fun b!4814278 () Bool)

(declare-fun e!3007835 () Option!13377)

(assert (=> b!4814278 (= e!3007835 (Some!13376 (_2!32118 (h!61100 (toList!7241 lm!1254)))))))

(declare-fun b!4814279 () Bool)

(declare-fun e!3007836 () Option!13377)

(assert (=> b!4814279 (= e!3007835 e!3007836)))

(declare-fun c!820517 () Bool)

(assert (=> b!4814279 (= c!820517 (and (is-Cons!54668 (toList!7241 lm!1254)) (not (= (_1!32118 (h!61100 (toList!7241 lm!1254))) lt!1965231))))))

(declare-fun d!1540926 () Bool)

(declare-fun c!820516 () Bool)

(assert (=> d!1540926 (= c!820516 (and (is-Cons!54668 (toList!7241 lm!1254)) (= (_1!32118 (h!61100 (toList!7241 lm!1254))) lt!1965231)))))

(assert (=> d!1540926 (= (getValueByKey!2540 (toList!7241 lm!1254) lt!1965231) e!3007835)))

(declare-fun b!4814280 () Bool)

(assert (=> b!4814280 (= e!3007836 (getValueByKey!2540 (t!362288 (toList!7241 lm!1254)) lt!1965231))))

(declare-fun b!4814281 () Bool)

(assert (=> b!4814281 (= e!3007836 None!13376)))

(assert (= (and d!1540926 c!820516) b!4814278))

(assert (= (and d!1540926 (not c!820516)) b!4814279))

(assert (= (and b!4814279 c!820517) b!4814280))

(assert (= (and b!4814279 (not c!820517)) b!4814281))

(declare-fun m!5800190 () Bool)

(assert (=> b!4814280 m!5800190))

(assert (=> b!4814230 d!1540926))

(declare-fun d!1540928 () Bool)

(declare-fun res!2047764 () Bool)

(declare-fun e!3007843 () Bool)

(assert (=> d!1540928 (=> res!2047764 e!3007843)))

(assert (=> d!1540928 (= res!2047764 (is-Nil!54668 (toList!7241 lm!1254)))))

(assert (=> d!1540928 (= (forall!12433 (toList!7241 lm!1254) lambda!234112) e!3007843)))

(declare-fun b!4814288 () Bool)

(declare-fun e!3007844 () Bool)

(assert (=> b!4814288 (= e!3007843 e!3007844)))

(declare-fun res!2047765 () Bool)

(assert (=> b!4814288 (=> (not res!2047765) (not e!3007844))))

(declare-fun dynLambda!22153 (Int tuple2!57648) Bool)

(assert (=> b!4814288 (= res!2047765 (dynLambda!22153 lambda!234112 (h!61100 (toList!7241 lm!1254))))))

(declare-fun b!4814289 () Bool)

(assert (=> b!4814289 (= e!3007844 (forall!12433 (t!362288 (toList!7241 lm!1254)) lambda!234112))))

(assert (= (and d!1540928 (not res!2047764)) b!4814288))

(assert (= (and b!4814288 res!2047765) b!4814289))

(declare-fun b_lambda!188337 () Bool)

(assert (=> (not b_lambda!188337) (not b!4814288)))

(declare-fun m!5800194 () Bool)

(assert (=> b!4814288 m!5800194))

(declare-fun m!5800196 () Bool)

(assert (=> b!4814289 m!5800196))

(assert (=> start!497886 d!1540928))

(declare-fun d!1540932 () Bool)

(assert (=> d!1540932 (= (inv!70213 lm!1254) (isStrictlySorted!940 (toList!7241 lm!1254)))))

(declare-fun bs!1160335 () Bool)

(assert (= bs!1160335 d!1540932))

(assert (=> bs!1160335 m!5800132))

(assert (=> start!497886 d!1540932))

(declare-fun b!4814312 () Bool)

(declare-fun e!3007862 () Unit!141800)

(declare-fun Unit!141805 () Unit!141800)

(assert (=> b!4814312 (= e!3007862 Unit!141805)))

(declare-fun b!4814313 () Bool)

(declare-datatypes ((List!54795 0))(
  ( (Nil!54671) (Cons!54671 (h!61103 K!16312) (t!362291 List!54795)) )
))
(declare-fun e!3007863 () List!54795)

(declare-fun keys!20057 (ListMap!6655) List!54795)

(assert (=> b!4814313 (= e!3007863 (keys!20057 (extractMap!2579 (toList!7241 lm!1254))))))

(declare-fun b!4814314 () Bool)

(declare-fun getKeysList!1128 (List!54791) List!54795)

(assert (=> b!4814314 (= e!3007863 (getKeysList!1128 (toList!7242 (extractMap!2579 (toList!7241 lm!1254)))))))

(declare-fun d!1540934 () Bool)

(declare-fun e!3007865 () Bool)

(assert (=> d!1540934 e!3007865))

(declare-fun res!2047778 () Bool)

(assert (=> d!1540934 (=> res!2047778 e!3007865)))

(declare-fun e!3007866 () Bool)

(assert (=> d!1540934 (= res!2047778 e!3007866)))

(declare-fun res!2047777 () Bool)

(assert (=> d!1540934 (=> (not res!2047777) (not e!3007866))))

(declare-fun lt!1965284 () Bool)

(assert (=> d!1540934 (= res!2047777 (not lt!1965284))))

(declare-fun lt!1965282 () Bool)

(assert (=> d!1540934 (= lt!1965284 lt!1965282)))

(declare-fun lt!1965278 () Unit!141800)

(declare-fun e!3007864 () Unit!141800)

(assert (=> d!1540934 (= lt!1965278 e!3007864)))

(declare-fun c!820524 () Bool)

(assert (=> d!1540934 (= c!820524 lt!1965282)))

(declare-fun containsKey!4211 (List!54791 K!16312) Bool)

(assert (=> d!1540934 (= lt!1965282 (containsKey!4211 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(assert (=> d!1540934 (= (contains!18446 (extractMap!2579 (toList!7241 lm!1254)) key!2670) lt!1965284)))

(declare-fun b!4814315 () Bool)

(declare-fun contains!18450 (List!54795 K!16312) Bool)

(assert (=> b!4814315 (= e!3007866 (not (contains!18450 (keys!20057 (extractMap!2579 (toList!7241 lm!1254))) key!2670)))))

(declare-fun b!4814316 () Bool)

(declare-fun e!3007861 () Bool)

(assert (=> b!4814316 (= e!3007865 e!3007861)))

(declare-fun res!2047776 () Bool)

(assert (=> b!4814316 (=> (not res!2047776) (not e!3007861))))

(declare-datatypes ((Option!13379 0))(
  ( (None!13378) (Some!13378 (v!49019 V!16558)) )
))
(declare-fun isDefined!10516 (Option!13379) Bool)

(declare-fun getValueByKey!2542 (List!54791 K!16312) Option!13379)

(assert (=> b!4814316 (= res!2047776 (isDefined!10516 (getValueByKey!2542 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670)))))

(declare-fun b!4814317 () Bool)

(declare-fun lt!1965281 () Unit!141800)

(assert (=> b!4814317 (= e!3007864 lt!1965281)))

(declare-fun lt!1965280 () Unit!141800)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2328 (List!54791 K!16312) Unit!141800)

(assert (=> b!4814317 (= lt!1965280 (lemmaContainsKeyImpliesGetValueByKeyDefined!2328 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(assert (=> b!4814317 (isDefined!10516 (getValueByKey!2542 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(declare-fun lt!1965277 () Unit!141800)

(assert (=> b!4814317 (= lt!1965277 lt!1965280)))

(declare-fun lemmaInListThenGetKeysListContains!1123 (List!54791 K!16312) Unit!141800)

(assert (=> b!4814317 (= lt!1965281 (lemmaInListThenGetKeysListContains!1123 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(declare-fun call!335917 () Bool)

(assert (=> b!4814317 call!335917))

(declare-fun bm!335912 () Bool)

(assert (=> bm!335912 (= call!335917 (contains!18450 e!3007863 key!2670))))

(declare-fun c!820526 () Bool)

(assert (=> bm!335912 (= c!820526 c!820524)))

(declare-fun b!4814318 () Bool)

(assert (=> b!4814318 (= e!3007861 (contains!18450 (keys!20057 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(declare-fun b!4814319 () Bool)

(assert (=> b!4814319 false))

(declare-fun lt!1965283 () Unit!141800)

(declare-fun lt!1965279 () Unit!141800)

(assert (=> b!4814319 (= lt!1965283 lt!1965279)))

(assert (=> b!4814319 (containsKey!4211 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670)))

(declare-fun lemmaInGetKeysListThenContainsKey!1128 (List!54791 K!16312) Unit!141800)

(assert (=> b!4814319 (= lt!1965279 (lemmaInGetKeysListThenContainsKey!1128 (toList!7242 (extractMap!2579 (toList!7241 lm!1254))) key!2670))))

(declare-fun Unit!141806 () Unit!141800)

(assert (=> b!4814319 (= e!3007862 Unit!141806)))

(declare-fun b!4814320 () Bool)

(assert (=> b!4814320 (= e!3007864 e!3007862)))

(declare-fun c!820525 () Bool)

(assert (=> b!4814320 (= c!820525 call!335917)))

(assert (= (and d!1540934 c!820524) b!4814317))

(assert (= (and d!1540934 (not c!820524)) b!4814320))

(assert (= (and b!4814320 c!820525) b!4814319))

(assert (= (and b!4814320 (not c!820525)) b!4814312))

(assert (= (or b!4814317 b!4814320) bm!335912))

(assert (= (and bm!335912 c!820526) b!4814314))

(assert (= (and bm!335912 (not c!820526)) b!4814313))

(assert (= (and d!1540934 res!2047777) b!4814315))

(assert (= (and d!1540934 (not res!2047778)) b!4814316))

(assert (= (and b!4814316 res!2047776) b!4814318))

(declare-fun m!5800206 () Bool)

(assert (=> bm!335912 m!5800206))

(declare-fun m!5800208 () Bool)

(assert (=> b!4814317 m!5800208))

(declare-fun m!5800210 () Bool)

(assert (=> b!4814317 m!5800210))

(assert (=> b!4814317 m!5800210))

(declare-fun m!5800212 () Bool)

(assert (=> b!4814317 m!5800212))

(declare-fun m!5800214 () Bool)

(assert (=> b!4814317 m!5800214))

(assert (=> b!4814315 m!5800118))

(declare-fun m!5800216 () Bool)

(assert (=> b!4814315 m!5800216))

(assert (=> b!4814315 m!5800216))

(declare-fun m!5800218 () Bool)

(assert (=> b!4814315 m!5800218))

(assert (=> b!4814313 m!5800118))

(assert (=> b!4814313 m!5800216))

(assert (=> b!4814318 m!5800118))

(assert (=> b!4814318 m!5800216))

(assert (=> b!4814318 m!5800216))

(assert (=> b!4814318 m!5800218))

(declare-fun m!5800220 () Bool)

(assert (=> d!1540934 m!5800220))

(declare-fun m!5800222 () Bool)

(assert (=> b!4814314 m!5800222))

(assert (=> b!4814319 m!5800220))

(declare-fun m!5800224 () Bool)

(assert (=> b!4814319 m!5800224))

(assert (=> b!4814316 m!5800210))

(assert (=> b!4814316 m!5800210))

(assert (=> b!4814316 m!5800212))

(assert (=> b!4814229 d!1540934))

(declare-fun bs!1160340 () Bool)

(declare-fun d!1540940 () Bool)

(assert (= bs!1160340 (and d!1540940 start!497886)))

(declare-fun lambda!234127 () Int)

(assert (=> bs!1160340 (= lambda!234127 lambda!234112)))

(declare-fun bs!1160341 () Bool)

(assert (= bs!1160341 (and d!1540940 d!1540910)))

(assert (=> bs!1160341 (not (= lambda!234127 lambda!234118))))

(declare-fun bs!1160342 () Bool)

(assert (= bs!1160342 (and d!1540940 d!1540912)))

(assert (=> bs!1160342 (= lambda!234127 lambda!234121)))

(declare-fun lt!1965288 () ListMap!6655)

(declare-fun invariantList!1782 (List!54791) Bool)

(assert (=> d!1540940 (invariantList!1782 (toList!7242 lt!1965288))))

(declare-fun e!3007871 () ListMap!6655)

(assert (=> d!1540940 (= lt!1965288 e!3007871)))

(declare-fun c!820529 () Bool)

(assert (=> d!1540940 (= c!820529 (is-Cons!54668 (toList!7241 lm!1254)))))

(assert (=> d!1540940 (forall!12433 (toList!7241 lm!1254) lambda!234127)))

(assert (=> d!1540940 (= (extractMap!2579 (toList!7241 lm!1254)) lt!1965288)))

(declare-fun b!4814327 () Bool)

(declare-fun addToMapMapFromBucket!1759 (List!54791 ListMap!6655) ListMap!6655)

(assert (=> b!4814327 (= e!3007871 (addToMapMapFromBucket!1759 (_2!32118 (h!61100 (toList!7241 lm!1254))) (extractMap!2579 (t!362288 (toList!7241 lm!1254)))))))

(declare-fun b!4814328 () Bool)

(assert (=> b!4814328 (= e!3007871 (ListMap!6656 Nil!54667))))

(assert (= (and d!1540940 c!820529) b!4814327))

(assert (= (and d!1540940 (not c!820529)) b!4814328))

(declare-fun m!5800234 () Bool)

(assert (=> d!1540940 m!5800234))

(declare-fun m!5800236 () Bool)

(assert (=> d!1540940 m!5800236))

(declare-fun m!5800238 () Bool)

(assert (=> b!4814327 m!5800238))

(assert (=> b!4814327 m!5800238))

(declare-fun m!5800240 () Bool)

(assert (=> b!4814327 m!5800240))

(assert (=> b!4814229 d!1540940))

(declare-fun d!1540946 () Bool)

(declare-fun res!2047785 () Bool)

(declare-fun e!3007878 () Bool)

(assert (=> d!1540946 (=> res!2047785 e!3007878)))

(assert (=> d!1540946 (= res!2047785 (or (is-Nil!54668 (toList!7241 lm!1254)) (is-Nil!54668 (t!362288 (toList!7241 lm!1254)))))))

(assert (=> d!1540946 (= (isStrictlySorted!940 (toList!7241 lm!1254)) e!3007878)))

(declare-fun b!4814337 () Bool)

(declare-fun e!3007879 () Bool)

(assert (=> b!4814337 (= e!3007878 e!3007879)))

(declare-fun res!2047786 () Bool)

(assert (=> b!4814337 (=> (not res!2047786) (not e!3007879))))

(assert (=> b!4814337 (= res!2047786 (bvslt (_1!32118 (h!61100 (toList!7241 lm!1254))) (_1!32118 (h!61100 (t!362288 (toList!7241 lm!1254))))))))

(declare-fun b!4814338 () Bool)

(assert (=> b!4814338 (= e!3007879 (isStrictlySorted!940 (t!362288 (toList!7241 lm!1254))))))

(assert (= (and d!1540946 (not res!2047785)) b!4814337))

(assert (= (and b!4814337 res!2047786) b!4814338))

(declare-fun m!5800242 () Bool)

(assert (=> b!4814338 m!5800242))

(assert (=> b!4814227 d!1540946))

(declare-fun b!4814343 () Bool)

(declare-fun e!3007882 () Bool)

(declare-fun tp!1361706 () Bool)

(declare-fun tp!1361707 () Bool)

(assert (=> b!4814343 (= e!3007882 (and tp!1361706 tp!1361707))))

(assert (=> b!4814228 (= tp!1361698 e!3007882)))

(assert (= (and b!4814228 (is-Cons!54668 (toList!7241 lm!1254))) b!4814343))

(declare-fun b_lambda!188339 () Bool)

(assert (= b_lambda!188337 (or start!497886 b_lambda!188339)))

(declare-fun bs!1160343 () Bool)

(declare-fun d!1540948 () Bool)

(assert (= bs!1160343 (and d!1540948 start!497886)))

(declare-fun noDuplicateKeys!2398 (List!54791) Bool)

(assert (=> bs!1160343 (= (dynLambda!22153 lambda!234112 (h!61100 (toList!7241 lm!1254))) (noDuplicateKeys!2398 (_2!32118 (h!61100 (toList!7241 lm!1254)))))))

(declare-fun m!5800244 () Bool)

(assert (=> bs!1160343 m!5800244))

(assert (=> b!4814288 d!1540948))

(push 1)

(assert (not b!4814314))

(assert (not b!4814317))

(assert (not d!1540920))

(assert (not d!1540912))

(assert (not b!4814327))

(assert (not b!4814315))

(assert (not bm!335912))

(assert (not d!1540914))

(assert (not b_lambda!188339))

(assert (not b!4814257))

(assert (not b!4814316))

(assert (not b!4814289))

(assert (not d!1540916))

(assert (not d!1540940))

(assert (not d!1540932))

(assert (not bs!1160343))

(assert (not b!4814338))

(assert (not b!4814343))

(assert (not d!1540924))

(assert (not d!1540934))

(assert (not b!4814318))

(assert (not b!4814259))

(assert (not b!4814319))

(assert (not b!4814265))

(assert (not d!1540918))

(assert (not d!1540910))

(assert tp_is_empty!34127)

(assert (not b!4814313))

(assert (not b!4814280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

