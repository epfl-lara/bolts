; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103542 () Bool)

(assert start!103542)

(declare-fun res!827769 () Bool)

(declare-fun e!703105 () Bool)

(assert (=> start!103542 (=> (not res!827769) (not e!703105))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103542 (= res!827769 (not (= a1!66 a2!55)))))

(assert (=> start!103542 e!703105))

(assert (=> start!103542 true))

(declare-datatypes ((B!1796 0))(
  ( (B!1797 (val!15660 Int)) )
))
(declare-datatypes ((tuple2!20348 0))(
  ( (tuple2!20349 (_1!10184 (_ BitVec 64)) (_2!10184 B!1796)) )
))
(declare-datatypes ((List!27489 0))(
  ( (Nil!27486) (Cons!27485 (h!28694 tuple2!20348) (t!40959 List!27489)) )
))
(declare-datatypes ((ListLongMap!18329 0))(
  ( (ListLongMap!18330 (toList!9180 List!27489)) )
))
(declare-fun lm!211 () ListLongMap!18329)

(declare-fun e!703106 () Bool)

(declare-fun inv!42773 (ListLongMap!18329) Bool)

(assert (=> start!103542 (and (inv!42773 lm!211) e!703106)))

(declare-fun tp_is_empty!31195 () Bool)

(assert (=> start!103542 tp_is_empty!31195))

(declare-fun b!1240402 () Bool)

(declare-fun res!827770 () Bool)

(assert (=> b!1240402 (=> (not res!827770) (not e!703105))))

(declare-fun isStrictlySorted!729 (List!27489) Bool)

(assert (=> b!1240402 (= res!827770 (isStrictlySorted!729 (toList!9180 lm!211)))))

(declare-fun lt!561865 () tuple2!20348)

(declare-fun b!1240403 () Bool)

(declare-fun -!2006 (ListLongMap!18329 (_ BitVec 64)) ListLongMap!18329)

(declare-fun +!4120 (ListLongMap!18329 tuple2!20348) ListLongMap!18329)

(assert (=> b!1240403 (= e!703105 (not (= (-!2006 (+!4120 lm!211 lt!561865) a2!55) (+!4120 (-!2006 lm!211 a2!55) lt!561865))))))

(declare-fun b1!77 () B!1796)

(assert (=> b!1240403 (= lt!561865 (tuple2!20349 a1!66 b1!77))))

(declare-fun insertStrictlySorted!419 (List!27489 (_ BitVec 64) B!1796) List!27489)

(declare-fun removeStrictlySorted!113 (List!27489 (_ BitVec 64)) List!27489)

(assert (=> b!1240403 (= (insertStrictlySorted!419 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!113 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77) a2!55))))

(declare-datatypes ((Unit!41173 0))(
  ( (Unit!41174) )
))
(declare-fun lt!561864 () Unit!41173)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!1 (List!27489 (_ BitVec 64) B!1796 (_ BitVec 64)) Unit!41173)

(assert (=> b!1240403 (= lt!561864 (lemmaInsertAndRemoveStrictlySortedCommutative!1 (toList!9180 lm!211) a1!66 b1!77 a2!55))))

(declare-fun b!1240404 () Bool)

(declare-fun tp!92538 () Bool)

(assert (=> b!1240404 (= e!703106 tp!92538)))

(assert (= (and start!103542 res!827769) b!1240402))

(assert (= (and b!1240402 res!827770) b!1240403))

(assert (= start!103542 b!1240404))

(declare-fun m!1143689 () Bool)

(assert (=> start!103542 m!1143689))

(declare-fun m!1143691 () Bool)

(assert (=> b!1240402 m!1143691))

(declare-fun m!1143693 () Bool)

(assert (=> b!1240403 m!1143693))

(declare-fun m!1143695 () Bool)

(assert (=> b!1240403 m!1143695))

(declare-fun m!1143697 () Bool)

(assert (=> b!1240403 m!1143697))

(declare-fun m!1143699 () Bool)

(assert (=> b!1240403 m!1143699))

(assert (=> b!1240403 m!1143693))

(declare-fun m!1143701 () Bool)

(assert (=> b!1240403 m!1143701))

(declare-fun m!1143703 () Bool)

(assert (=> b!1240403 m!1143703))

(declare-fun m!1143705 () Bool)

(assert (=> b!1240403 m!1143705))

(assert (=> b!1240403 m!1143699))

(declare-fun m!1143707 () Bool)

(assert (=> b!1240403 m!1143707))

(assert (=> b!1240403 m!1143701))

(assert (=> b!1240403 m!1143705))

(declare-fun m!1143709 () Bool)

(assert (=> b!1240403 m!1143709))

(push 1)

(assert (not b!1240403))

(assert (not start!103542))

(assert tp_is_empty!31195)

(assert (not b!1240402))

(assert (not b!1240404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136211 () Bool)

(declare-fun res!827791 () Bool)

(declare-fun e!703127 () Bool)

(assert (=> d!136211 (=> res!827791 e!703127)))

(assert (=> d!136211 (= res!827791 (or (is-Nil!27486 (toList!9180 lm!211)) (is-Nil!27486 (t!40959 (toList!9180 lm!211)))))))

(assert (=> d!136211 (= (isStrictlySorted!729 (toList!9180 lm!211)) e!703127)))

(declare-fun b!1240431 () Bool)

(declare-fun e!703128 () Bool)

(assert (=> b!1240431 (= e!703127 e!703128)))

(declare-fun res!827792 () Bool)

(assert (=> b!1240431 (=> (not res!827792) (not e!703128))))

(assert (=> b!1240431 (= res!827792 (bvslt (_1!10184 (h!28694 (toList!9180 lm!211))) (_1!10184 (h!28694 (t!40959 (toList!9180 lm!211))))))))

(declare-fun b!1240432 () Bool)

(assert (=> b!1240432 (= e!703128 (isStrictlySorted!729 (t!40959 (toList!9180 lm!211))))))

(assert (= (and d!136211 (not res!827791)) b!1240431))

(assert (= (and b!1240431 res!827792) b!1240432))

(declare-fun m!1143755 () Bool)

(assert (=> b!1240432 m!1143755))

(assert (=> b!1240402 d!136211))

(declare-fun d!136215 () Bool)

(declare-fun e!703154 () Bool)

(assert (=> d!136215 e!703154))

(declare-fun res!827805 () Bool)

(assert (=> d!136215 (=> (not res!827805) (not e!703154))))

(declare-fun lt!561894 () ListLongMap!18329)

(declare-fun contains!7395 (ListLongMap!18329 (_ BitVec 64)) Bool)

(assert (=> d!136215 (= res!827805 (contains!7395 lt!561894 (_1!10184 lt!561865)))))

(declare-fun lt!561893 () List!27489)

(assert (=> d!136215 (= lt!561894 (ListLongMap!18330 lt!561893))))

(declare-fun lt!561891 () Unit!41173)

(declare-fun lt!561892 () Unit!41173)

(assert (=> d!136215 (= lt!561891 lt!561892)))

(declare-datatypes ((Option!703 0))(
  ( (Some!702 (v!18371 B!1796)) (None!701) )
))
(declare-fun getValueByKey!652 (List!27489 (_ BitVec 64)) Option!703)

(assert (=> d!136215 (= (getValueByKey!652 lt!561893 (_1!10184 lt!561865)) (Some!702 (_2!10184 lt!561865)))))

(declare-fun lemmaContainsTupThenGetReturnValue!327 (List!27489 (_ BitVec 64) B!1796) Unit!41173)

(assert (=> d!136215 (= lt!561892 (lemmaContainsTupThenGetReturnValue!327 lt!561893 (_1!10184 lt!561865) (_2!10184 lt!561865)))))

(assert (=> d!136215 (= lt!561893 (insertStrictlySorted!419 (toList!9180 lm!211) (_1!10184 lt!561865) (_2!10184 lt!561865)))))

(assert (=> d!136215 (= (+!4120 lm!211 lt!561865) lt!561894)))

(declare-fun b!1240481 () Bool)

(declare-fun res!827806 () Bool)

(assert (=> b!1240481 (=> (not res!827806) (not e!703154))))

(assert (=> b!1240481 (= res!827806 (= (getValueByKey!652 (toList!9180 lt!561894) (_1!10184 lt!561865)) (Some!702 (_2!10184 lt!561865))))))

(declare-fun b!1240482 () Bool)

(declare-fun contains!7396 (List!27489 tuple2!20348) Bool)

(assert (=> b!1240482 (= e!703154 (contains!7396 (toList!9180 lt!561894) lt!561865))))

(assert (= (and d!136215 res!827805) b!1240481))

(assert (= (and b!1240481 res!827806) b!1240482))

(declare-fun m!1143771 () Bool)

(assert (=> d!136215 m!1143771))

(declare-fun m!1143773 () Bool)

(assert (=> d!136215 m!1143773))

(declare-fun m!1143775 () Bool)

(assert (=> d!136215 m!1143775))

(declare-fun m!1143777 () Bool)

(assert (=> d!136215 m!1143777))

(declare-fun m!1143779 () Bool)

(assert (=> b!1240481 m!1143779))

(declare-fun m!1143781 () Bool)

(assert (=> b!1240482 m!1143781))

(assert (=> b!1240403 d!136215))

(declare-fun d!136221 () Bool)

(declare-fun e!703155 () Bool)

(assert (=> d!136221 e!703155))

(declare-fun res!827807 () Bool)

(assert (=> d!136221 (=> (not res!827807) (not e!703155))))

(declare-fun lt!561898 () ListLongMap!18329)

(assert (=> d!136221 (= res!827807 (contains!7395 lt!561898 (_1!10184 lt!561865)))))

(declare-fun lt!561897 () List!27489)

(assert (=> d!136221 (= lt!561898 (ListLongMap!18330 lt!561897))))

(declare-fun lt!561895 () Unit!41173)

(declare-fun lt!561896 () Unit!41173)

(assert (=> d!136221 (= lt!561895 lt!561896)))

(assert (=> d!136221 (= (getValueByKey!652 lt!561897 (_1!10184 lt!561865)) (Some!702 (_2!10184 lt!561865)))))

(assert (=> d!136221 (= lt!561896 (lemmaContainsTupThenGetReturnValue!327 lt!561897 (_1!10184 lt!561865) (_2!10184 lt!561865)))))

(assert (=> d!136221 (= lt!561897 (insertStrictlySorted!419 (toList!9180 (-!2006 lm!211 a2!55)) (_1!10184 lt!561865) (_2!10184 lt!561865)))))

(assert (=> d!136221 (= (+!4120 (-!2006 lm!211 a2!55) lt!561865) lt!561898)))

(declare-fun b!1240483 () Bool)

(declare-fun res!827808 () Bool)

(assert (=> b!1240483 (=> (not res!827808) (not e!703155))))

(assert (=> b!1240483 (= res!827808 (= (getValueByKey!652 (toList!9180 lt!561898) (_1!10184 lt!561865)) (Some!702 (_2!10184 lt!561865))))))

(declare-fun b!1240484 () Bool)

(assert (=> b!1240484 (= e!703155 (contains!7396 (toList!9180 lt!561898) lt!561865))))

(assert (= (and d!136221 res!827807) b!1240483))

(assert (= (and b!1240483 res!827808) b!1240484))

(declare-fun m!1143783 () Bool)

(assert (=> d!136221 m!1143783))

(declare-fun m!1143785 () Bool)

(assert (=> d!136221 m!1143785))

(declare-fun m!1143787 () Bool)

(assert (=> d!136221 m!1143787))

(declare-fun m!1143789 () Bool)

(assert (=> d!136221 m!1143789))

(declare-fun m!1143791 () Bool)

(assert (=> b!1240483 m!1143791))

(declare-fun m!1143793 () Bool)

(assert (=> b!1240484 m!1143793))

(assert (=> b!1240403 d!136221))

(declare-fun b!1240539 () Bool)

(declare-fun e!703186 () List!27489)

(declare-fun e!703187 () List!27489)

(assert (=> b!1240539 (= e!703186 e!703187)))

(declare-fun c!121195 () Bool)

(assert (=> b!1240539 (= c!121195 (and (is-Cons!27485 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (= (_1!10184 (h!28694 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55))) a1!66)))))

(declare-fun d!136223 () Bool)

(declare-fun e!703185 () Bool)

(assert (=> d!136223 e!703185))

(declare-fun res!827827 () Bool)

(assert (=> d!136223 (=> (not res!827827) (not e!703185))))

(declare-fun lt!561923 () List!27489)

(assert (=> d!136223 (= res!827827 (isStrictlySorted!729 lt!561923))))

(assert (=> d!136223 (= lt!561923 e!703186)))

(declare-fun c!121196 () Bool)

(assert (=> d!136223 (= c!121196 (and (is-Cons!27485 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (bvslt (_1!10184 (h!28694 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55))) a1!66)))))

(assert (=> d!136223 (isStrictlySorted!729 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55))))

(assert (=> d!136223 (= (insertStrictlySorted!419 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55) a1!66 b1!77) lt!561923)))

(declare-fun bm!61147 () Bool)

(declare-fun call!61151 () List!27489)

(declare-fun call!61152 () List!27489)

(assert (=> bm!61147 (= call!61151 call!61152)))

(declare-fun c!121194 () Bool)

(declare-fun b!1240540 () Bool)

(declare-fun e!703184 () List!27489)

(assert (=> b!1240540 (= e!703184 (ite c!121195 (t!40959 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (ite c!121194 (Cons!27485 (h!28694 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (t!40959 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55))) Nil!27486)))))

(declare-fun b!1240541 () Bool)

(declare-fun e!703188 () List!27489)

(declare-fun call!61150 () List!27489)

(assert (=> b!1240541 (= e!703188 call!61150)))

(declare-fun bm!61148 () Bool)

(declare-fun $colon$colon!616 (List!27489 tuple2!20348) List!27489)

(assert (=> bm!61148 (= call!61152 ($colon$colon!616 e!703184 (ite c!121196 (h!28694 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (tuple2!20349 a1!66 b1!77))))))

(declare-fun c!121193 () Bool)

(assert (=> bm!61148 (= c!121193 c!121196)))

(declare-fun b!1240542 () Bool)

(assert (=> b!1240542 (= e!703188 call!61150)))

(declare-fun bm!61149 () Bool)

(assert (=> bm!61149 (= call!61150 call!61151)))

(declare-fun b!1240543 () Bool)

(assert (=> b!1240543 (= c!121194 (and (is-Cons!27485 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) (bvsgt (_1!10184 (h!28694 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55))) a1!66)))))

(assert (=> b!1240543 (= e!703187 e!703188)))

(declare-fun b!1240544 () Bool)

(assert (=> b!1240544 (= e!703184 (insertStrictlySorted!419 (t!40959 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)) a1!66 b1!77))))

(declare-fun b!1240545 () Bool)

(assert (=> b!1240545 (= e!703186 call!61152)))

(declare-fun b!1240546 () Bool)

(assert (=> b!1240546 (= e!703187 call!61151)))

(declare-fun b!1240547 () Bool)

(declare-fun res!827828 () Bool)

(assert (=> b!1240547 (=> (not res!827828) (not e!703185))))

(declare-fun containsKey!600 (List!27489 (_ BitVec 64)) Bool)

(assert (=> b!1240547 (= res!827828 (containsKey!600 lt!561923 a1!66))))

(declare-fun b!1240548 () Bool)

(assert (=> b!1240548 (= e!703185 (contains!7396 lt!561923 (tuple2!20349 a1!66 b1!77)))))

(assert (= (and d!136223 c!121196) b!1240545))

(assert (= (and d!136223 (not c!121196)) b!1240539))

(assert (= (and b!1240539 c!121195) b!1240546))

(assert (= (and b!1240539 (not c!121195)) b!1240543))

(assert (= (and b!1240543 c!121194) b!1240541))

(assert (= (and b!1240543 (not c!121194)) b!1240542))

(assert (= (or b!1240541 b!1240542) bm!61149))

(assert (= (or b!1240546 bm!61149) bm!61147))

(assert (= (or b!1240545 bm!61147) bm!61148))

(assert (= (and bm!61148 c!121193) b!1240544))

(assert (= (and bm!61148 (not c!121193)) b!1240540))

(assert (= (and d!136223 res!827827) b!1240547))

(assert (= (and b!1240547 res!827828) b!1240548))

(declare-fun m!1143827 () Bool)

(assert (=> b!1240548 m!1143827))

(declare-fun m!1143829 () Bool)

(assert (=> b!1240544 m!1143829))

(declare-fun m!1143831 () Bool)

(assert (=> b!1240547 m!1143831))

(declare-fun m!1143833 () Bool)

(assert (=> bm!61148 m!1143833))

(declare-fun m!1143835 () Bool)

(assert (=> d!136223 m!1143835))

(assert (=> d!136223 m!1143693))

(declare-fun m!1143837 () Bool)

(assert (=> d!136223 m!1143837))

(assert (=> b!1240403 d!136223))

(declare-fun d!136235 () Bool)

(declare-fun lt!561932 () ListLongMap!18329)

(assert (=> d!136235 (not (contains!7395 lt!561932 a2!55))))

(assert (=> d!136235 (= lt!561932 (ListLongMap!18330 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55)))))

(assert (=> d!136235 (= (-!2006 lm!211 a2!55) lt!561932)))

(declare-fun bs!34910 () Bool)

(assert (= bs!34910 d!136235))

(declare-fun m!1143875 () Bool)

(assert (=> bs!34910 m!1143875))

(assert (=> bs!34910 m!1143693))

(assert (=> b!1240403 d!136235))

(declare-fun d!136245 () Bool)

(declare-fun e!703224 () Bool)

(assert (=> d!136245 e!703224))

(declare-fun res!827843 () Bool)

(assert (=> d!136245 (=> (not res!827843) (not e!703224))))

(declare-fun lt!561948 () List!27489)

(assert (=> d!136245 (= res!827843 (isStrictlySorted!729 lt!561948))))

(declare-fun e!703226 () List!27489)

(assert (=> d!136245 (= lt!561948 e!703226)))

(declare-fun c!121222 () Bool)

(assert (=> d!136245 (= c!121222 (and (is-Cons!27485 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77)) (= (_1!10184 (h!28694 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77))) a2!55)))))

(assert (=> d!136245 (isStrictlySorted!729 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77))))

(assert (=> d!136245 (= (removeStrictlySorted!113 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77) a2!55) lt!561948)))

(declare-fun b!1240611 () Bool)

(declare-fun e!703225 () List!27489)

(assert (=> b!1240611 (= e!703225 Nil!27486)))

(declare-fun b!1240612 () Bool)

(assert (=> b!1240612 (= e!703224 (not (containsKey!600 lt!561948 a2!55)))))

(declare-fun b!1240613 () Bool)

(assert (=> b!1240613 (= e!703226 (t!40959 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77)))))

(declare-fun b!1240614 () Bool)

(assert (=> b!1240614 (= e!703225 ($colon$colon!616 (removeStrictlySorted!113 (t!40959 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77)) a2!55) (h!28694 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77))))))

(declare-fun b!1240615 () Bool)

(assert (=> b!1240615 (= e!703226 e!703225)))

(declare-fun c!121221 () Bool)

(assert (=> b!1240615 (= c!121221 (and (is-Cons!27485 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77)) (not (= (_1!10184 (h!28694 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77))) a2!55))))))

(assert (= (and d!136245 c!121222) b!1240613))

(assert (= (and d!136245 (not c!121222)) b!1240615))

(assert (= (and b!1240615 c!121221) b!1240614))

(assert (= (and b!1240615 (not c!121221)) b!1240611))

(assert (= (and d!136245 res!827843) b!1240612))

(declare-fun m!1143917 () Bool)

(assert (=> d!136245 m!1143917))

(assert (=> d!136245 m!1143699))

(declare-fun m!1143919 () Bool)

(assert (=> d!136245 m!1143919))

(declare-fun m!1143921 () Bool)

(assert (=> b!1240612 m!1143921))

(declare-fun m!1143923 () Bool)

(assert (=> b!1240614 m!1143923))

(assert (=> b!1240614 m!1143923))

(declare-fun m!1143925 () Bool)

(assert (=> b!1240614 m!1143925))

(assert (=> b!1240403 d!136245))

(declare-fun d!136259 () Bool)

(declare-fun e!703227 () Bool)

(assert (=> d!136259 e!703227))

(declare-fun res!827844 () Bool)

(assert (=> d!136259 (=> (not res!827844) (not e!703227))))

(declare-fun lt!561949 () List!27489)

(assert (=> d!136259 (= res!827844 (isStrictlySorted!729 lt!561949))))

(declare-fun e!703229 () List!27489)

(assert (=> d!136259 (= lt!561949 e!703229)))

(declare-fun c!121224 () Bool)

(assert (=> d!136259 (= c!121224 (and (is-Cons!27485 (toList!9180 lm!211)) (= (_1!10184 (h!28694 (toList!9180 lm!211))) a2!55)))))

(assert (=> d!136259 (isStrictlySorted!729 (toList!9180 lm!211))))

(assert (=> d!136259 (= (removeStrictlySorted!113 (toList!9180 lm!211) a2!55) lt!561949)))

(declare-fun b!1240616 () Bool)

(declare-fun e!703228 () List!27489)

(assert (=> b!1240616 (= e!703228 Nil!27486)))

(declare-fun b!1240617 () Bool)

(assert (=> b!1240617 (= e!703227 (not (containsKey!600 lt!561949 a2!55)))))

(declare-fun b!1240618 () Bool)

(assert (=> b!1240618 (= e!703229 (t!40959 (toList!9180 lm!211)))))

(declare-fun b!1240619 () Bool)

(assert (=> b!1240619 (= e!703228 ($colon$colon!616 (removeStrictlySorted!113 (t!40959 (toList!9180 lm!211)) a2!55) (h!28694 (toList!9180 lm!211))))))

(declare-fun b!1240620 () Bool)

(assert (=> b!1240620 (= e!703229 e!703228)))

(declare-fun c!121223 () Bool)

(assert (=> b!1240620 (= c!121223 (and (is-Cons!27485 (toList!9180 lm!211)) (not (= (_1!10184 (h!28694 (toList!9180 lm!211))) a2!55))))))

(assert (= (and d!136259 c!121224) b!1240618))

(assert (= (and d!136259 (not c!121224)) b!1240620))

(assert (= (and b!1240620 c!121223) b!1240619))

(assert (= (and b!1240620 (not c!121223)) b!1240616))

(assert (= (and d!136259 res!827844) b!1240617))

(declare-fun m!1143927 () Bool)

(assert (=> d!136259 m!1143927))

(assert (=> d!136259 m!1143691))

(declare-fun m!1143929 () Bool)

(assert (=> b!1240617 m!1143929))

(declare-fun m!1143931 () Bool)

(assert (=> b!1240619 m!1143931))

(assert (=> b!1240619 m!1143931))

(declare-fun m!1143933 () Bool)

(assert (=> b!1240619 m!1143933))

(assert (=> b!1240403 d!136259))

(declare-fun d!136261 () Bool)

(declare-fun lt!561950 () ListLongMap!18329)

(assert (=> d!136261 (not (contains!7395 lt!561950 a2!55))))

(assert (=> d!136261 (= lt!561950 (ListLongMap!18330 (removeStrictlySorted!113 (toList!9180 (+!4120 lm!211 lt!561865)) a2!55)))))

(assert (=> d!136261 (= (-!2006 (+!4120 lm!211 lt!561865) a2!55) lt!561950)))

(declare-fun bs!34914 () Bool)

(assert (= bs!34914 d!136261))

(declare-fun m!1143935 () Bool)

(assert (=> bs!34914 m!1143935))

(declare-fun m!1143937 () Bool)

(assert (=> bs!34914 m!1143937))

(assert (=> b!1240403 d!136261))

(declare-fun b!1240621 () Bool)

(declare-fun e!703232 () List!27489)

(declare-fun e!703233 () List!27489)

(assert (=> b!1240621 (= e!703232 e!703233)))

(declare-fun c!121227 () Bool)

(assert (=> b!1240621 (= c!121227 (and (is-Cons!27485 (toList!9180 lm!211)) (= (_1!10184 (h!28694 (toList!9180 lm!211))) a1!66)))))

(declare-fun d!136263 () Bool)

(declare-fun e!703231 () Bool)

(assert (=> d!136263 e!703231))

(declare-fun res!827845 () Bool)

(assert (=> d!136263 (=> (not res!827845) (not e!703231))))

(declare-fun lt!561951 () List!27489)

(assert (=> d!136263 (= res!827845 (isStrictlySorted!729 lt!561951))))

(assert (=> d!136263 (= lt!561951 e!703232)))

(declare-fun c!121228 () Bool)

(assert (=> d!136263 (= c!121228 (and (is-Cons!27485 (toList!9180 lm!211)) (bvslt (_1!10184 (h!28694 (toList!9180 lm!211))) a1!66)))))

(assert (=> d!136263 (isStrictlySorted!729 (toList!9180 lm!211))))

(assert (=> d!136263 (= (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77) lt!561951)))

(declare-fun bm!61156 () Bool)

(declare-fun call!61160 () List!27489)

(declare-fun call!61161 () List!27489)

(assert (=> bm!61156 (= call!61160 call!61161)))

(declare-fun c!121226 () Bool)

(declare-fun b!1240622 () Bool)

(declare-fun e!703230 () List!27489)

(assert (=> b!1240622 (= e!703230 (ite c!121227 (t!40959 (toList!9180 lm!211)) (ite c!121226 (Cons!27485 (h!28694 (toList!9180 lm!211)) (t!40959 (toList!9180 lm!211))) Nil!27486)))))

(declare-fun b!1240623 () Bool)

(declare-fun e!703234 () List!27489)

(declare-fun call!61159 () List!27489)

(assert (=> b!1240623 (= e!703234 call!61159)))

(declare-fun bm!61157 () Bool)

(assert (=> bm!61157 (= call!61161 ($colon$colon!616 e!703230 (ite c!121228 (h!28694 (toList!9180 lm!211)) (tuple2!20349 a1!66 b1!77))))))

(declare-fun c!121225 () Bool)

(assert (=> bm!61157 (= c!121225 c!121228)))

(declare-fun b!1240624 () Bool)

(assert (=> b!1240624 (= e!703234 call!61159)))

(declare-fun bm!61158 () Bool)

(assert (=> bm!61158 (= call!61159 call!61160)))

(declare-fun b!1240625 () Bool)

(assert (=> b!1240625 (= c!121226 (and (is-Cons!27485 (toList!9180 lm!211)) (bvsgt (_1!10184 (h!28694 (toList!9180 lm!211))) a1!66)))))

(assert (=> b!1240625 (= e!703233 e!703234)))

(declare-fun b!1240626 () Bool)

(assert (=> b!1240626 (= e!703230 (insertStrictlySorted!419 (t!40959 (toList!9180 lm!211)) a1!66 b1!77))))

(declare-fun b!1240627 () Bool)

(assert (=> b!1240627 (= e!703232 call!61161)))

(declare-fun b!1240628 () Bool)

(assert (=> b!1240628 (= e!703233 call!61160)))

(declare-fun b!1240629 () Bool)

(declare-fun res!827846 () Bool)

(assert (=> b!1240629 (=> (not res!827846) (not e!703231))))

(assert (=> b!1240629 (= res!827846 (containsKey!600 lt!561951 a1!66))))

(declare-fun b!1240630 () Bool)

(assert (=> b!1240630 (= e!703231 (contains!7396 lt!561951 (tuple2!20349 a1!66 b1!77)))))

(assert (= (and d!136263 c!121228) b!1240627))

(assert (= (and d!136263 (not c!121228)) b!1240621))

(assert (= (and b!1240621 c!121227) b!1240628))

(assert (= (and b!1240621 (not c!121227)) b!1240625))

(assert (= (and b!1240625 c!121226) b!1240623))

(assert (= (and b!1240625 (not c!121226)) b!1240624))

(assert (= (or b!1240623 b!1240624) bm!61158))

(assert (= (or b!1240628 bm!61158) bm!61156))

(assert (= (or b!1240627 bm!61156) bm!61157))

(assert (= (and bm!61157 c!121225) b!1240626))

(assert (= (and bm!61157 (not c!121225)) b!1240622))

(assert (= (and d!136263 res!827845) b!1240629))

(assert (= (and b!1240629 res!827846) b!1240630))

(declare-fun m!1143939 () Bool)

(assert (=> b!1240630 m!1143939))

(declare-fun m!1143941 () Bool)

(assert (=> b!1240626 m!1143941))

(declare-fun m!1143943 () Bool)

(assert (=> b!1240629 m!1143943))

(declare-fun m!1143945 () Bool)

(assert (=> bm!61157 m!1143945))

(declare-fun m!1143947 () Bool)

(assert (=> d!136263 m!1143947))

(assert (=> d!136263 m!1143691))

(assert (=> b!1240403 d!136263))

(declare-fun d!136265 () Bool)

(assert (=> d!136265 (= (insertStrictlySorted!419 (removeStrictlySorted!113 (toList!9180 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!113 (insertStrictlySorted!419 (toList!9180 lm!211) a1!66 b1!77) a2!55))))

(declare-fun lt!561962 () Unit!41173)

(declare-fun choose!1841 (List!27489 (_ BitVec 64) B!1796 (_ BitVec 64)) Unit!41173)

(assert (=> d!136265 (= lt!561962 (choose!1841 (toList!9180 lm!211) a1!66 b1!77 a2!55))))

(assert (=> d!136265 (not (= a1!66 a2!55))))

(assert (=> d!136265 (= (lemmaInsertAndRemoveStrictlySortedCommutative!1 (toList!9180 lm!211) a1!66 b1!77 a2!55) lt!561962)))

(declare-fun bs!34915 () Bool)

(assert (= bs!34915 d!136265))

(assert (=> bs!34915 m!1143693))

(assert (=> bs!34915 m!1143695))

(assert (=> bs!34915 m!1143693))

(declare-fun m!1143951 () Bool)

(assert (=> bs!34915 m!1143951))

(assert (=> bs!34915 m!1143699))

(assert (=> bs!34915 m!1143699))

(assert (=> bs!34915 m!1143707))

(assert (=> b!1240403 d!136265))

(declare-fun d!136267 () Bool)

(assert (=> d!136267 (= (inv!42773 lm!211) (isStrictlySorted!729 (toList!9180 lm!211)))))

(declare-fun bs!34916 () Bool)

(assert (= bs!34916 d!136267))

(assert (=> bs!34916 m!1143691))

(assert (=> start!103542 d!136267))

(declare-fun b!1240652 () Bool)

(declare-fun e!703249 () Bool)

(declare-fun tp!92550 () Bool)

(assert (=> b!1240652 (= e!703249 (and tp_is_empty!31195 tp!92550))))

(assert (=> b!1240404 (= tp!92538 e!703249)))

(assert (= (and b!1240404 (is-Cons!27485 (toList!9180 lm!211))) b!1240652))

(push 1)

(assert (not d!136265))

(assert (not b!1240629))

(assert (not bm!61157))

(assert (not b!1240617))

(assert (not b!1240619))

(assert (not bm!61148))

(assert (not d!136259))

(assert (not d!136263))

