; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485612 () Bool)

(assert start!485612)

(declare-fun b!4752797 () Bool)

(declare-fun e!2964867 () Bool)

(declare-fun tp!1350241 () Bool)

(assert (=> b!4752797 (= e!2964867 tp!1350241)))

(declare-fun b!4752798 () Bool)

(declare-fun res!2015658 () Bool)

(declare-fun e!2964868 () Bool)

(assert (=> b!4752798 (=> (not res!2015658) (not e!2964868))))

(declare-datatypes ((K!14535 0))(
  ( (K!14536 (val!19899 Int)) )
))
(declare-datatypes ((V!14781 0))(
  ( (V!14782 (val!19900 Int)) )
))
(declare-datatypes ((tuple2!54868 0))(
  ( (tuple2!54869 (_1!30728 K!14535) (_2!30728 V!14781)) )
))
(declare-datatypes ((List!53218 0))(
  ( (Nil!53094) (Cons!53094 (h!59491 tuple2!54868) (t!360556 List!53218)) )
))
(declare-fun l!14304 () List!53218)

(get-info :version)

(assert (=> b!4752798 (= res!2015658 (not ((_ is Nil!53094) l!14304)))))

(declare-fun b!4752800 () Bool)

(declare-fun e!2964866 () Bool)

(assert (=> b!4752800 (= e!2964866 e!2964868)))

(declare-fun res!2015661 () Bool)

(assert (=> b!4752800 (=> (not res!2015661) (not e!2964868))))

(declare-fun lt!1917462 () List!53218)

(declare-fun noDuplicateKeys!2154 (List!53218) Bool)

(assert (=> b!4752800 (= res!2015661 (noDuplicateKeys!2154 lt!1917462))))

(declare-fun t!14174 () tuple2!54868)

(assert (=> b!4752800 (= lt!1917462 (Cons!53094 t!14174 l!14304))))

(declare-fun b!4752801 () Bool)

(declare-fun e!2964865 () Bool)

(declare-datatypes ((ListMap!5553 0))(
  ( (ListMap!5554 (toList!6122 List!53218)) )
))
(declare-fun lt!1917459 () ListMap!5553)

(declare-fun lt!1917457 () ListMap!5553)

(declare-fun eq!1223 (ListMap!5553 ListMap!5553) Bool)

(assert (=> b!4752801 (= e!2964865 (eq!1223 lt!1917459 lt!1917457))))

(declare-fun b!4752802 () Bool)

(assert (=> b!4752802 (= e!2964868 (not (noDuplicateKeys!2154 (t!360556 l!14304))))))

(assert (=> b!4752802 e!2964865))

(declare-fun res!2015659 () Bool)

(assert (=> b!4752802 (=> (not res!2015659) (not e!2964865))))

(declare-fun lt!1917458 () ListMap!5553)

(declare-fun lt!1917463 () ListMap!5553)

(assert (=> b!4752802 (= res!2015659 (eq!1223 lt!1917458 lt!1917463))))

(declare-datatypes ((Unit!136402 0))(
  ( (Unit!136403) )
))
(declare-fun lt!1917465 () Unit!136402)

(declare-fun acc!1214 () ListMap!5553)

(declare-fun addCommutativeForDiffKeys!24 (ListMap!5553 K!14535 V!14781 K!14535 V!14781) Unit!136402)

(assert (=> b!4752802 (= lt!1917465 (addCommutativeForDiffKeys!24 acc!1214 (_1!30728 t!14174) (_2!30728 t!14174) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> b!4752802 (eq!1223 lt!1917463 lt!1917458)))

(declare-fun +!2388 (ListMap!5553 tuple2!54868) ListMap!5553)

(assert (=> b!4752802 (= lt!1917458 (+!2388 (+!2388 acc!1214 t!14174) (h!59491 l!14304)))))

(declare-fun lt!1917460 () ListMap!5553)

(assert (=> b!4752802 (= lt!1917463 (+!2388 lt!1917460 t!14174))))

(declare-fun lt!1917455 () Unit!136402)

(assert (=> b!4752802 (= lt!1917455 (addCommutativeForDiffKeys!24 acc!1214 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)) (_1!30728 t!14174) (_2!30728 t!14174)))))

(declare-fun lt!1917456 () ListMap!5553)

(declare-fun addToMapMapFromBucket!1578 (List!53218 ListMap!5553) ListMap!5553)

(assert (=> b!4752802 (eq!1223 lt!1917456 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917459))))

(declare-fun lt!1917454 () ListMap!5553)

(assert (=> b!4752802 (= lt!1917459 (+!2388 lt!1917454 (h!59491 l!14304)))))

(assert (=> b!4752802 (eq!1223 lt!1917456 (addToMapMapFromBucket!1578 l!14304 lt!1917454))))

(assert (=> b!4752802 (= lt!1917454 (+!2388 acc!1214 t!14174))))

(assert (=> b!4752802 (= lt!1917456 (addToMapMapFromBucket!1578 lt!1917462 acc!1214))))

(declare-fun lt!1917464 () ListMap!5553)

(assert (=> b!4752802 (eq!1223 lt!1917464 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917457))))

(assert (=> b!4752802 (= lt!1917457 (+!2388 lt!1917460 t!14174))))

(declare-fun e!2964870 () Bool)

(assert (=> b!4752802 e!2964870))

(declare-fun res!2015657 () Bool)

(assert (=> b!4752802 (=> (not res!2015657) (not e!2964870))))

(declare-fun lt!1917461 () ListMap!5553)

(assert (=> b!4752802 (= res!2015657 (eq!1223 lt!1917464 (+!2388 lt!1917461 t!14174)))))

(assert (=> b!4752802 (= lt!1917464 (addToMapMapFromBucket!1578 (Cons!53094 t!14174 (t!360556 l!14304)) lt!1917460))))

(declare-fun lt!1917453 () Unit!136402)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!468 (tuple2!54868 List!53218 ListMap!5553) Unit!136402)

(assert (=> b!4752802 (= lt!1917453 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!468 t!14174 (t!360556 l!14304) lt!1917460))))

(assert (=> b!4752802 (= lt!1917461 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917460))))

(assert (=> b!4752802 (= lt!1917460 (+!2388 acc!1214 (h!59491 l!14304)))))

(declare-fun b!4752803 () Bool)

(assert (=> b!4752803 (= e!2964870 (eq!1223 lt!1917461 (addToMapMapFromBucket!1578 l!14304 acc!1214)))))

(declare-fun tp_is_empty!31911 () Bool)

(declare-fun tp_is_empty!31909 () Bool)

(declare-fun e!2964869 () Bool)

(declare-fun b!4752799 () Bool)

(declare-fun tp!1350240 () Bool)

(assert (=> b!4752799 (= e!2964869 (and tp_is_empty!31909 tp_is_empty!31911 tp!1350240))))

(declare-fun res!2015660 () Bool)

(assert (=> start!485612 (=> (not res!2015660) (not e!2964866))))

(assert (=> start!485612 (= res!2015660 (noDuplicateKeys!2154 l!14304))))

(assert (=> start!485612 e!2964866))

(assert (=> start!485612 e!2964869))

(assert (=> start!485612 (and tp_is_empty!31909 tp_is_empty!31911)))

(declare-fun inv!68405 (ListMap!5553) Bool)

(assert (=> start!485612 (and (inv!68405 acc!1214) e!2964867)))

(assert (= (and start!485612 res!2015660) b!4752800))

(assert (= (and b!4752800 res!2015661) b!4752798))

(assert (= (and b!4752798 res!2015658) b!4752802))

(assert (= (and b!4752802 res!2015657) b!4752803))

(assert (= (and b!4752802 res!2015659) b!4752801))

(assert (= (and start!485612 ((_ is Cons!53094) l!14304)) b!4752799))

(assert (= start!485612 b!4752797))

(declare-fun m!5717917 () Bool)

(assert (=> b!4752800 m!5717917))

(declare-fun m!5717919 () Bool)

(assert (=> b!4752802 m!5717919))

(declare-fun m!5717921 () Bool)

(assert (=> b!4752802 m!5717921))

(declare-fun m!5717923 () Bool)

(assert (=> b!4752802 m!5717923))

(declare-fun m!5717925 () Bool)

(assert (=> b!4752802 m!5717925))

(declare-fun m!5717927 () Bool)

(assert (=> b!4752802 m!5717927))

(declare-fun m!5717929 () Bool)

(assert (=> b!4752802 m!5717929))

(declare-fun m!5717931 () Bool)

(assert (=> b!4752802 m!5717931))

(declare-fun m!5717933 () Bool)

(assert (=> b!4752802 m!5717933))

(assert (=> b!4752802 m!5717929))

(declare-fun m!5717935 () Bool)

(assert (=> b!4752802 m!5717935))

(declare-fun m!5717937 () Bool)

(assert (=> b!4752802 m!5717937))

(declare-fun m!5717939 () Bool)

(assert (=> b!4752802 m!5717939))

(declare-fun m!5717941 () Bool)

(assert (=> b!4752802 m!5717941))

(declare-fun m!5717943 () Bool)

(assert (=> b!4752802 m!5717943))

(declare-fun m!5717945 () Bool)

(assert (=> b!4752802 m!5717945))

(assert (=> b!4752802 m!5717937))

(declare-fun m!5717947 () Bool)

(assert (=> b!4752802 m!5717947))

(declare-fun m!5717949 () Bool)

(assert (=> b!4752802 m!5717949))

(declare-fun m!5717951 () Bool)

(assert (=> b!4752802 m!5717951))

(assert (=> b!4752802 m!5717927))

(declare-fun m!5717953 () Bool)

(assert (=> b!4752802 m!5717953))

(declare-fun m!5717955 () Bool)

(assert (=> b!4752802 m!5717955))

(declare-fun m!5717957 () Bool)

(assert (=> b!4752802 m!5717957))

(declare-fun m!5717959 () Bool)

(assert (=> b!4752802 m!5717959))

(assert (=> b!4752802 m!5717957))

(declare-fun m!5717961 () Bool)

(assert (=> b!4752802 m!5717961))

(assert (=> b!4752802 m!5717939))

(declare-fun m!5717963 () Bool)

(assert (=> start!485612 m!5717963))

(declare-fun m!5717965 () Bool)

(assert (=> start!485612 m!5717965))

(declare-fun m!5717967 () Bool)

(assert (=> b!4752803 m!5717967))

(assert (=> b!4752803 m!5717967))

(declare-fun m!5717969 () Bool)

(assert (=> b!4752803 m!5717969))

(declare-fun m!5717971 () Bool)

(assert (=> b!4752801 m!5717971))

(check-sat tp_is_empty!31911 (not b!4752800) (not start!485612) (not b!4752802) tp_is_empty!31909 (not b!4752797) (not b!4752803) (not b!4752801) (not b!4752799))
(check-sat)
(get-model)

(declare-fun d!1519577 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9535 (List!53218) (InoxSet tuple2!54868))

(assert (=> d!1519577 (= (eq!1223 lt!1917461 (addToMapMapFromBucket!1578 l!14304 acc!1214)) (= (content!9535 (toList!6122 lt!1917461)) (content!9535 (toList!6122 (addToMapMapFromBucket!1578 l!14304 acc!1214)))))))

(declare-fun bs!1144341 () Bool)

(assert (= bs!1144341 d!1519577))

(declare-fun m!5717981 () Bool)

(assert (=> bs!1144341 m!5717981))

(declare-fun m!5717983 () Bool)

(assert (=> bs!1144341 m!5717983))

(assert (=> b!4752803 d!1519577))

(declare-fun b!4752863 () Bool)

(assert (=> b!4752863 true))

(declare-fun bs!1144386 () Bool)

(declare-fun b!4752865 () Bool)

(assert (= bs!1144386 (and b!4752865 b!4752863)))

(declare-fun lambda!222375 () Int)

(declare-fun lambda!222373 () Int)

(assert (=> bs!1144386 (= lambda!222375 lambda!222373)))

(assert (=> b!4752865 true))

(declare-fun lambda!222376 () Int)

(declare-fun lt!1917650 () ListMap!5553)

(assert (=> bs!1144386 (= (= lt!1917650 acc!1214) (= lambda!222376 lambda!222373))))

(assert (=> b!4752865 (= (= lt!1917650 acc!1214) (= lambda!222376 lambda!222375))))

(assert (=> b!4752865 true))

(declare-fun bs!1144402 () Bool)

(declare-fun d!1519579 () Bool)

(assert (= bs!1144402 (and d!1519579 b!4752863)))

(declare-fun lt!1917664 () ListMap!5553)

(declare-fun lambda!222378 () Int)

(assert (=> bs!1144402 (= (= lt!1917664 acc!1214) (= lambda!222378 lambda!222373))))

(declare-fun bs!1144403 () Bool)

(assert (= bs!1144403 (and d!1519579 b!4752865)))

(assert (=> bs!1144403 (= (= lt!1917664 acc!1214) (= lambda!222378 lambda!222375))))

(assert (=> bs!1144403 (= (= lt!1917664 lt!1917650) (= lambda!222378 lambda!222376))))

(assert (=> d!1519579 true))

(declare-fun bm!333086 () Bool)

(declare-fun call!333093 () Bool)

(declare-fun c!811513 () Bool)

(declare-fun forall!11766 (List!53218 Int) Bool)

(assert (=> bm!333086 (= call!333093 (forall!11766 (toList!6122 acc!1214) (ite c!811513 lambda!222373 lambda!222376)))))

(declare-fun b!4752861 () Bool)

(declare-fun e!2964905 () Bool)

(assert (=> b!4752861 (= e!2964905 (forall!11766 (toList!6122 acc!1214) lambda!222376))))

(declare-fun e!2964907 () Bool)

(assert (=> d!1519579 e!2964907))

(declare-fun res!2015703 () Bool)

(assert (=> d!1519579 (=> (not res!2015703) (not e!2964907))))

(assert (=> d!1519579 (= res!2015703 (forall!11766 l!14304 lambda!222378))))

(declare-fun e!2964906 () ListMap!5553)

(assert (=> d!1519579 (= lt!1917664 e!2964906)))

(assert (=> d!1519579 (= c!811513 ((_ is Nil!53094) l!14304))))

(assert (=> d!1519579 (noDuplicateKeys!2154 l!14304)))

(assert (=> d!1519579 (= (addToMapMapFromBucket!1578 l!14304 acc!1214) lt!1917664)))

(declare-fun b!4752862 () Bool)

(declare-fun invariantList!1598 (List!53218) Bool)

(assert (=> b!4752862 (= e!2964907 (invariantList!1598 (toList!6122 lt!1917664)))))

(assert (=> b!4752863 (= e!2964906 acc!1214)))

(declare-fun lt!1917660 () Unit!136402)

(declare-fun call!333092 () Unit!136402)

(assert (=> b!4752863 (= lt!1917660 call!333092)))

(declare-fun call!333091 () Bool)

(assert (=> b!4752863 call!333091))

(declare-fun lt!1917665 () Unit!136402)

(assert (=> b!4752863 (= lt!1917665 lt!1917660)))

(assert (=> b!4752863 call!333093))

(declare-fun lt!1917654 () Unit!136402)

(declare-fun Unit!136415 () Unit!136402)

(assert (=> b!4752863 (= lt!1917654 Unit!136415)))

(declare-fun lt!1917655 () ListMap!5553)

(declare-fun bm!333087 () Bool)

(assert (=> bm!333087 (= call!333091 (forall!11766 (ite c!811513 (toList!6122 acc!1214) (toList!6122 lt!1917655)) (ite c!811513 lambda!222373 lambda!222376)))))

(declare-fun b!4752864 () Bool)

(declare-fun res!2015704 () Bool)

(assert (=> b!4752864 (=> (not res!2015704) (not e!2964907))))

(assert (=> b!4752864 (= res!2015704 (forall!11766 (toList!6122 acc!1214) lambda!222378))))

(assert (=> b!4752865 (= e!2964906 lt!1917650)))

(assert (=> b!4752865 (= lt!1917655 (+!2388 acc!1214 (h!59491 l!14304)))))

(assert (=> b!4752865 (= lt!1917650 (addToMapMapFromBucket!1578 (t!360556 l!14304) (+!2388 acc!1214 (h!59491 l!14304))))))

(declare-fun lt!1917648 () Unit!136402)

(assert (=> b!4752865 (= lt!1917648 call!333092)))

(assert (=> b!4752865 (forall!11766 (toList!6122 acc!1214) lambda!222375)))

(declare-fun lt!1917662 () Unit!136402)

(assert (=> b!4752865 (= lt!1917662 lt!1917648)))

(assert (=> b!4752865 call!333091))

(declare-fun lt!1917647 () Unit!136402)

(declare-fun Unit!136416 () Unit!136402)

(assert (=> b!4752865 (= lt!1917647 Unit!136416)))

(assert (=> b!4752865 (forall!11766 (t!360556 l!14304) lambda!222376)))

(declare-fun lt!1917657 () Unit!136402)

(declare-fun Unit!136417 () Unit!136402)

(assert (=> b!4752865 (= lt!1917657 Unit!136417)))

(declare-fun lt!1917653 () Unit!136402)

(declare-fun Unit!136418 () Unit!136402)

(assert (=> b!4752865 (= lt!1917653 Unit!136418)))

(declare-fun lt!1917659 () Unit!136402)

(declare-fun forallContained!3792 (List!53218 Int tuple2!54868) Unit!136402)

(assert (=> b!4752865 (= lt!1917659 (forallContained!3792 (toList!6122 lt!1917655) lambda!222376 (h!59491 l!14304)))))

(declare-fun contains!16520 (ListMap!5553 K!14535) Bool)

(assert (=> b!4752865 (contains!16520 lt!1917655 (_1!30728 (h!59491 l!14304)))))

(declare-fun lt!1917663 () Unit!136402)

(declare-fun Unit!136419 () Unit!136402)

(assert (=> b!4752865 (= lt!1917663 Unit!136419)))

(assert (=> b!4752865 (contains!16520 lt!1917650 (_1!30728 (h!59491 l!14304)))))

(declare-fun lt!1917661 () Unit!136402)

(declare-fun Unit!136420 () Unit!136402)

(assert (=> b!4752865 (= lt!1917661 Unit!136420)))

(assert (=> b!4752865 (forall!11766 l!14304 lambda!222376)))

(declare-fun lt!1917652 () Unit!136402)

(declare-fun Unit!136421 () Unit!136402)

(assert (=> b!4752865 (= lt!1917652 Unit!136421)))

(assert (=> b!4752865 (forall!11766 (toList!6122 lt!1917655) lambda!222376)))

(declare-fun lt!1917658 () Unit!136402)

(declare-fun Unit!136422 () Unit!136402)

(assert (=> b!4752865 (= lt!1917658 Unit!136422)))

(declare-fun lt!1917651 () Unit!136402)

(declare-fun Unit!136423 () Unit!136402)

(assert (=> b!4752865 (= lt!1917651 Unit!136423)))

(declare-fun lt!1917656 () Unit!136402)

(declare-fun addForallContainsKeyThenBeforeAdding!880 (ListMap!5553 ListMap!5553 K!14535 V!14781) Unit!136402)

(assert (=> b!4752865 (= lt!1917656 (addForallContainsKeyThenBeforeAdding!880 acc!1214 lt!1917650 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> b!4752865 call!333093))

(declare-fun lt!1917649 () Unit!136402)

(assert (=> b!4752865 (= lt!1917649 lt!1917656)))

(assert (=> b!4752865 (forall!11766 (toList!6122 acc!1214) lambda!222376)))

(declare-fun lt!1917667 () Unit!136402)

(declare-fun Unit!136424 () Unit!136402)

(assert (=> b!4752865 (= lt!1917667 Unit!136424)))

(declare-fun res!2015705 () Bool)

(assert (=> b!4752865 (= res!2015705 (forall!11766 l!14304 lambda!222376))))

(assert (=> b!4752865 (=> (not res!2015705) (not e!2964905))))

(assert (=> b!4752865 e!2964905))

(declare-fun lt!1917666 () Unit!136402)

(declare-fun Unit!136425 () Unit!136402)

(assert (=> b!4752865 (= lt!1917666 Unit!136425)))

(declare-fun bm!333088 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!881 (ListMap!5553) Unit!136402)

(assert (=> bm!333088 (= call!333092 (lemmaContainsAllItsOwnKeys!881 acc!1214))))

(assert (= (and d!1519579 c!811513) b!4752863))

(assert (= (and d!1519579 (not c!811513)) b!4752865))

(assert (= (and b!4752865 res!2015705) b!4752861))

(assert (= (or b!4752863 b!4752865) bm!333088))

(assert (= (or b!4752863 b!4752865) bm!333087))

(assert (= (or b!4752863 b!4752865) bm!333086))

(assert (= (and d!1519579 res!2015703) b!4752864))

(assert (= (and b!4752864 res!2015704) b!4752862))

(declare-fun m!5718165 () Bool)

(assert (=> b!4752862 m!5718165))

(declare-fun m!5718167 () Bool)

(assert (=> b!4752861 m!5718167))

(declare-fun m!5718169 () Bool)

(assert (=> d!1519579 m!5718169))

(assert (=> d!1519579 m!5717963))

(declare-fun m!5718171 () Bool)

(assert (=> bm!333088 m!5718171))

(declare-fun m!5718173 () Bool)

(assert (=> bm!333087 m!5718173))

(declare-fun m!5718175 () Bool)

(assert (=> b!4752865 m!5718175))

(assert (=> b!4752865 m!5717955))

(declare-fun m!5718177 () Bool)

(assert (=> b!4752865 m!5718177))

(assert (=> b!4752865 m!5718167))

(declare-fun m!5718179 () Bool)

(assert (=> b!4752865 m!5718179))

(declare-fun m!5718181 () Bool)

(assert (=> b!4752865 m!5718181))

(declare-fun m!5718183 () Bool)

(assert (=> b!4752865 m!5718183))

(assert (=> b!4752865 m!5718179))

(declare-fun m!5718185 () Bool)

(assert (=> b!4752865 m!5718185))

(declare-fun m!5718187 () Bool)

(assert (=> b!4752865 m!5718187))

(assert (=> b!4752865 m!5717955))

(declare-fun m!5718189 () Bool)

(assert (=> b!4752865 m!5718189))

(declare-fun m!5718191 () Bool)

(assert (=> b!4752865 m!5718191))

(declare-fun m!5718193 () Bool)

(assert (=> b!4752864 m!5718193))

(declare-fun m!5718195 () Bool)

(assert (=> bm!333086 m!5718195))

(assert (=> b!4752803 d!1519579))

(declare-fun d!1519607 () Bool)

(assert (=> d!1519607 (= (eq!1223 lt!1917459 lt!1917457) (= (content!9535 (toList!6122 lt!1917459)) (content!9535 (toList!6122 lt!1917457))))))

(declare-fun bs!1144405 () Bool)

(assert (= bs!1144405 d!1519607))

(declare-fun m!5718197 () Bool)

(assert (=> bs!1144405 m!5718197))

(declare-fun m!5718199 () Bool)

(assert (=> bs!1144405 m!5718199))

(assert (=> b!4752801 d!1519607))

(declare-fun d!1519609 () Bool)

(declare-fun res!2015713 () Bool)

(declare-fun e!2964915 () Bool)

(assert (=> d!1519609 (=> res!2015713 e!2964915)))

(assert (=> d!1519609 (= res!2015713 (not ((_ is Cons!53094) l!14304)))))

(assert (=> d!1519609 (= (noDuplicateKeys!2154 l!14304) e!2964915)))

(declare-fun b!4752877 () Bool)

(declare-fun e!2964916 () Bool)

(assert (=> b!4752877 (= e!2964915 e!2964916)))

(declare-fun res!2015714 () Bool)

(assert (=> b!4752877 (=> (not res!2015714) (not e!2964916))))

(declare-fun containsKey!3563 (List!53218 K!14535) Bool)

(assert (=> b!4752877 (= res!2015714 (not (containsKey!3563 (t!360556 l!14304) (_1!30728 (h!59491 l!14304)))))))

(declare-fun b!4752878 () Bool)

(assert (=> b!4752878 (= e!2964916 (noDuplicateKeys!2154 (t!360556 l!14304)))))

(assert (= (and d!1519609 (not res!2015713)) b!4752877))

(assert (= (and b!4752877 res!2015714) b!4752878))

(declare-fun m!5718205 () Bool)

(assert (=> b!4752877 m!5718205))

(assert (=> b!4752878 m!5717961))

(assert (=> start!485612 d!1519609))

(declare-fun d!1519611 () Bool)

(assert (=> d!1519611 (= (inv!68405 acc!1214) (invariantList!1598 (toList!6122 acc!1214)))))

(declare-fun bs!1144417 () Bool)

(assert (= bs!1144417 d!1519611))

(declare-fun m!5718237 () Bool)

(assert (=> bs!1144417 m!5718237))

(assert (=> start!485612 d!1519611))

(declare-fun d!1519615 () Bool)

(declare-fun e!2964923 () Bool)

(assert (=> d!1519615 e!2964923))

(declare-fun res!2015724 () Bool)

(assert (=> d!1519615 (=> (not res!2015724) (not e!2964923))))

(declare-fun lt!1917722 () ListMap!5553)

(assert (=> d!1519615 (= res!2015724 (contains!16520 lt!1917722 (_1!30728 (h!59491 l!14304))))))

(declare-fun lt!1917725 () List!53218)

(assert (=> d!1519615 (= lt!1917722 (ListMap!5554 lt!1917725))))

(declare-fun lt!1917723 () Unit!136402)

(declare-fun lt!1917724 () Unit!136402)

(assert (=> d!1519615 (= lt!1917723 lt!1917724)))

(declare-datatypes ((Option!12535 0))(
  ( (None!12534) (Some!12534 (v!47235 V!14781)) )
))
(declare-fun getValueByKey!2085 (List!53218 K!14535) Option!12535)

(assert (=> d!1519615 (= (getValueByKey!2085 lt!1917725 (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1162 (List!53218 K!14535 V!14781) Unit!136402)

(assert (=> d!1519615 (= lt!1917724 (lemmaContainsTupThenGetReturnValue!1162 lt!1917725 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(declare-fun insertNoDuplicatedKeys!670 (List!53218 K!14535 V!14781) List!53218)

(assert (=> d!1519615 (= lt!1917725 (insertNoDuplicatedKeys!670 (toList!6122 acc!1214) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519615 (= (+!2388 acc!1214 (h!59491 l!14304)) lt!1917722)))

(declare-fun b!4752890 () Bool)

(declare-fun res!2015725 () Bool)

(assert (=> b!4752890 (=> (not res!2015725) (not e!2964923))))

(assert (=> b!4752890 (= res!2015725 (= (getValueByKey!2085 (toList!6122 lt!1917722) (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304)))))))

(declare-fun b!4752891 () Bool)

(declare-fun contains!16521 (List!53218 tuple2!54868) Bool)

(assert (=> b!4752891 (= e!2964923 (contains!16521 (toList!6122 lt!1917722) (h!59491 l!14304)))))

(assert (= (and d!1519615 res!2015724) b!4752890))

(assert (= (and b!4752890 res!2015725) b!4752891))

(declare-fun m!5718289 () Bool)

(assert (=> d!1519615 m!5718289))

(declare-fun m!5718293 () Bool)

(assert (=> d!1519615 m!5718293))

(declare-fun m!5718295 () Bool)

(assert (=> d!1519615 m!5718295))

(declare-fun m!5718297 () Bool)

(assert (=> d!1519615 m!5718297))

(declare-fun m!5718299 () Bool)

(assert (=> b!4752890 m!5718299))

(declare-fun m!5718301 () Bool)

(assert (=> b!4752891 m!5718301))

(assert (=> b!4752802 d!1519615))

(declare-fun bs!1144461 () Bool)

(declare-fun b!4752894 () Bool)

(assert (= bs!1144461 (and b!4752894 b!4752863)))

(declare-fun lambda!222385 () Int)

(assert (=> bs!1144461 (= lambda!222385 lambda!222373)))

(declare-fun bs!1144462 () Bool)

(assert (= bs!1144462 (and b!4752894 b!4752865)))

(assert (=> bs!1144462 (= lambda!222385 lambda!222375)))

(assert (=> bs!1144462 (= (= acc!1214 lt!1917650) (= lambda!222385 lambda!222376))))

(declare-fun bs!1144463 () Bool)

(assert (= bs!1144463 (and b!4752894 d!1519579)))

(assert (=> bs!1144463 (= (= acc!1214 lt!1917664) (= lambda!222385 lambda!222378))))

(assert (=> b!4752894 true))

(declare-fun bs!1144464 () Bool)

(declare-fun b!4752896 () Bool)

(assert (= bs!1144464 (and b!4752896 b!4752865)))

(declare-fun lambda!222386 () Int)

(assert (=> bs!1144464 (= lambda!222386 lambda!222375)))

(declare-fun bs!1144465 () Bool)

(assert (= bs!1144465 (and b!4752896 d!1519579)))

(assert (=> bs!1144465 (= (= acc!1214 lt!1917664) (= lambda!222386 lambda!222378))))

(declare-fun bs!1144466 () Bool)

(assert (= bs!1144466 (and b!4752896 b!4752894)))

(assert (=> bs!1144466 (= lambda!222386 lambda!222385)))

(assert (=> bs!1144464 (= (= acc!1214 lt!1917650) (= lambda!222386 lambda!222376))))

(declare-fun bs!1144467 () Bool)

(assert (= bs!1144467 (and b!4752896 b!4752863)))

(assert (=> bs!1144467 (= lambda!222386 lambda!222373)))

(assert (=> b!4752896 true))

(declare-fun lt!1917730 () ListMap!5553)

(declare-fun lambda!222388 () Int)

(assert (=> bs!1144464 (= (= lt!1917730 acc!1214) (= lambda!222388 lambda!222375))))

(assert (=> bs!1144465 (= (= lt!1917730 lt!1917664) (= lambda!222388 lambda!222378))))

(assert (=> bs!1144466 (= (= lt!1917730 acc!1214) (= lambda!222388 lambda!222385))))

(assert (=> bs!1144464 (= (= lt!1917730 lt!1917650) (= lambda!222388 lambda!222376))))

(assert (=> b!4752896 (= (= lt!1917730 acc!1214) (= lambda!222388 lambda!222386))))

(assert (=> bs!1144467 (= (= lt!1917730 acc!1214) (= lambda!222388 lambda!222373))))

(assert (=> b!4752896 true))

(declare-fun bs!1144483 () Bool)

(declare-fun d!1519627 () Bool)

(assert (= bs!1144483 (and d!1519627 b!4752865)))

(declare-fun lt!1917744 () ListMap!5553)

(declare-fun lambda!222389 () Int)

(assert (=> bs!1144483 (= (= lt!1917744 acc!1214) (= lambda!222389 lambda!222375))))

(declare-fun bs!1144484 () Bool)

(assert (= bs!1144484 (and d!1519627 d!1519579)))

(assert (=> bs!1144484 (= (= lt!1917744 lt!1917664) (= lambda!222389 lambda!222378))))

(declare-fun bs!1144486 () Bool)

(assert (= bs!1144486 (and d!1519627 b!4752894)))

(assert (=> bs!1144486 (= (= lt!1917744 acc!1214) (= lambda!222389 lambda!222385))))

(declare-fun bs!1144488 () Bool)

(assert (= bs!1144488 (and d!1519627 b!4752896)))

(assert (=> bs!1144488 (= (= lt!1917744 lt!1917730) (= lambda!222389 lambda!222388))))

(assert (=> bs!1144483 (= (= lt!1917744 lt!1917650) (= lambda!222389 lambda!222376))))

(assert (=> bs!1144488 (= (= lt!1917744 acc!1214) (= lambda!222389 lambda!222386))))

(declare-fun bs!1144491 () Bool)

(assert (= bs!1144491 (and d!1519627 b!4752863)))

(assert (=> bs!1144491 (= (= lt!1917744 acc!1214) (= lambda!222389 lambda!222373))))

(assert (=> d!1519627 true))

(declare-fun c!811516 () Bool)

(declare-fun bm!333095 () Bool)

(declare-fun call!333102 () Bool)

(assert (=> bm!333095 (= call!333102 (forall!11766 (toList!6122 acc!1214) (ite c!811516 lambda!222385 lambda!222388)))))

(declare-fun b!4752892 () Bool)

(declare-fun e!2964924 () Bool)

(assert (=> b!4752892 (= e!2964924 (forall!11766 (toList!6122 acc!1214) lambda!222388))))

(declare-fun e!2964926 () Bool)

(assert (=> d!1519627 e!2964926))

(declare-fun res!2015726 () Bool)

(assert (=> d!1519627 (=> (not res!2015726) (not e!2964926))))

(assert (=> d!1519627 (= res!2015726 (forall!11766 lt!1917462 lambda!222389))))

(declare-fun e!2964925 () ListMap!5553)

(assert (=> d!1519627 (= lt!1917744 e!2964925)))

(assert (=> d!1519627 (= c!811516 ((_ is Nil!53094) lt!1917462))))

(assert (=> d!1519627 (noDuplicateKeys!2154 lt!1917462)))

(assert (=> d!1519627 (= (addToMapMapFromBucket!1578 lt!1917462 acc!1214) lt!1917744)))

(declare-fun b!4752893 () Bool)

(assert (=> b!4752893 (= e!2964926 (invariantList!1598 (toList!6122 lt!1917744)))))

(assert (=> b!4752894 (= e!2964925 acc!1214)))

(declare-fun lt!1917740 () Unit!136402)

(declare-fun call!333101 () Unit!136402)

(assert (=> b!4752894 (= lt!1917740 call!333101)))

(declare-fun call!333100 () Bool)

(assert (=> b!4752894 call!333100))

(declare-fun lt!1917745 () Unit!136402)

(assert (=> b!4752894 (= lt!1917745 lt!1917740)))

(assert (=> b!4752894 call!333102))

(declare-fun lt!1917734 () Unit!136402)

(declare-fun Unit!136437 () Unit!136402)

(assert (=> b!4752894 (= lt!1917734 Unit!136437)))

(declare-fun bm!333096 () Bool)

(declare-fun lt!1917735 () ListMap!5553)

(assert (=> bm!333096 (= call!333100 (forall!11766 (ite c!811516 (toList!6122 acc!1214) (toList!6122 lt!1917735)) (ite c!811516 lambda!222385 lambda!222388)))))

(declare-fun b!4752895 () Bool)

(declare-fun res!2015727 () Bool)

(assert (=> b!4752895 (=> (not res!2015727) (not e!2964926))))

(assert (=> b!4752895 (= res!2015727 (forall!11766 (toList!6122 acc!1214) lambda!222389))))

(assert (=> b!4752896 (= e!2964925 lt!1917730)))

(assert (=> b!4752896 (= lt!1917735 (+!2388 acc!1214 (h!59491 lt!1917462)))))

(assert (=> b!4752896 (= lt!1917730 (addToMapMapFromBucket!1578 (t!360556 lt!1917462) (+!2388 acc!1214 (h!59491 lt!1917462))))))

(declare-fun lt!1917728 () Unit!136402)

(assert (=> b!4752896 (= lt!1917728 call!333101)))

(assert (=> b!4752896 (forall!11766 (toList!6122 acc!1214) lambda!222386)))

(declare-fun lt!1917742 () Unit!136402)

(assert (=> b!4752896 (= lt!1917742 lt!1917728)))

(assert (=> b!4752896 call!333100))

(declare-fun lt!1917727 () Unit!136402)

(declare-fun Unit!136438 () Unit!136402)

(assert (=> b!4752896 (= lt!1917727 Unit!136438)))

(assert (=> b!4752896 (forall!11766 (t!360556 lt!1917462) lambda!222388)))

(declare-fun lt!1917737 () Unit!136402)

(declare-fun Unit!136439 () Unit!136402)

(assert (=> b!4752896 (= lt!1917737 Unit!136439)))

(declare-fun lt!1917733 () Unit!136402)

(declare-fun Unit!136440 () Unit!136402)

(assert (=> b!4752896 (= lt!1917733 Unit!136440)))

(declare-fun lt!1917739 () Unit!136402)

(assert (=> b!4752896 (= lt!1917739 (forallContained!3792 (toList!6122 lt!1917735) lambda!222388 (h!59491 lt!1917462)))))

(assert (=> b!4752896 (contains!16520 lt!1917735 (_1!30728 (h!59491 lt!1917462)))))

(declare-fun lt!1917743 () Unit!136402)

(declare-fun Unit!136441 () Unit!136402)

(assert (=> b!4752896 (= lt!1917743 Unit!136441)))

(assert (=> b!4752896 (contains!16520 lt!1917730 (_1!30728 (h!59491 lt!1917462)))))

(declare-fun lt!1917741 () Unit!136402)

(declare-fun Unit!136442 () Unit!136402)

(assert (=> b!4752896 (= lt!1917741 Unit!136442)))

(assert (=> b!4752896 (forall!11766 lt!1917462 lambda!222388)))

(declare-fun lt!1917732 () Unit!136402)

(declare-fun Unit!136443 () Unit!136402)

(assert (=> b!4752896 (= lt!1917732 Unit!136443)))

(assert (=> b!4752896 (forall!11766 (toList!6122 lt!1917735) lambda!222388)))

(declare-fun lt!1917738 () Unit!136402)

(declare-fun Unit!136444 () Unit!136402)

(assert (=> b!4752896 (= lt!1917738 Unit!136444)))

(declare-fun lt!1917731 () Unit!136402)

(declare-fun Unit!136445 () Unit!136402)

(assert (=> b!4752896 (= lt!1917731 Unit!136445)))

(declare-fun lt!1917736 () Unit!136402)

(assert (=> b!4752896 (= lt!1917736 (addForallContainsKeyThenBeforeAdding!880 acc!1214 lt!1917730 (_1!30728 (h!59491 lt!1917462)) (_2!30728 (h!59491 lt!1917462))))))

(assert (=> b!4752896 call!333102))

(declare-fun lt!1917729 () Unit!136402)

(assert (=> b!4752896 (= lt!1917729 lt!1917736)))

(assert (=> b!4752896 (forall!11766 (toList!6122 acc!1214) lambda!222388)))

(declare-fun lt!1917747 () Unit!136402)

(declare-fun Unit!136446 () Unit!136402)

(assert (=> b!4752896 (= lt!1917747 Unit!136446)))

(declare-fun res!2015728 () Bool)

(assert (=> b!4752896 (= res!2015728 (forall!11766 lt!1917462 lambda!222388))))

(assert (=> b!4752896 (=> (not res!2015728) (not e!2964924))))

(assert (=> b!4752896 e!2964924))

(declare-fun lt!1917746 () Unit!136402)

(declare-fun Unit!136447 () Unit!136402)

(assert (=> b!4752896 (= lt!1917746 Unit!136447)))

(declare-fun bm!333097 () Bool)

(assert (=> bm!333097 (= call!333101 (lemmaContainsAllItsOwnKeys!881 acc!1214))))

(assert (= (and d!1519627 c!811516) b!4752894))

(assert (= (and d!1519627 (not c!811516)) b!4752896))

(assert (= (and b!4752896 res!2015728) b!4752892))

(assert (= (or b!4752894 b!4752896) bm!333097))

(assert (= (or b!4752894 b!4752896) bm!333096))

(assert (= (or b!4752894 b!4752896) bm!333095))

(assert (= (and d!1519627 res!2015726) b!4752895))

(assert (= (and b!4752895 res!2015727) b!4752893))

(declare-fun m!5718311 () Bool)

(assert (=> b!4752893 m!5718311))

(declare-fun m!5718313 () Bool)

(assert (=> b!4752892 m!5718313))

(declare-fun m!5718315 () Bool)

(assert (=> d!1519627 m!5718315))

(assert (=> d!1519627 m!5717917))

(assert (=> bm!333097 m!5718171))

(declare-fun m!5718317 () Bool)

(assert (=> bm!333096 m!5718317))

(declare-fun m!5718319 () Bool)

(assert (=> b!4752896 m!5718319))

(declare-fun m!5718321 () Bool)

(assert (=> b!4752896 m!5718321))

(declare-fun m!5718323 () Bool)

(assert (=> b!4752896 m!5718323))

(assert (=> b!4752896 m!5718313))

(declare-fun m!5718325 () Bool)

(assert (=> b!4752896 m!5718325))

(declare-fun m!5718327 () Bool)

(assert (=> b!4752896 m!5718327))

(declare-fun m!5718329 () Bool)

(assert (=> b!4752896 m!5718329))

(assert (=> b!4752896 m!5718325))

(declare-fun m!5718331 () Bool)

(assert (=> b!4752896 m!5718331))

(declare-fun m!5718333 () Bool)

(assert (=> b!4752896 m!5718333))

(assert (=> b!4752896 m!5718321))

(declare-fun m!5718335 () Bool)

(assert (=> b!4752896 m!5718335))

(declare-fun m!5718337 () Bool)

(assert (=> b!4752896 m!5718337))

(declare-fun m!5718339 () Bool)

(assert (=> b!4752895 m!5718339))

(declare-fun m!5718341 () Bool)

(assert (=> bm!333095 m!5718341))

(assert (=> b!4752802 d!1519627))

(declare-fun bs!1144504 () Bool)

(declare-fun b!4752906 () Bool)

(assert (= bs!1144504 (and b!4752906 b!4752865)))

(declare-fun lambda!222392 () Int)

(assert (=> bs!1144504 (= (= lt!1917460 acc!1214) (= lambda!222392 lambda!222375))))

(declare-fun bs!1144505 () Bool)

(assert (= bs!1144505 (and b!4752906 d!1519579)))

(assert (=> bs!1144505 (= (= lt!1917460 lt!1917664) (= lambda!222392 lambda!222378))))

(declare-fun bs!1144506 () Bool)

(assert (= bs!1144506 (and b!4752906 b!4752894)))

(assert (=> bs!1144506 (= (= lt!1917460 acc!1214) (= lambda!222392 lambda!222385))))

(declare-fun bs!1144507 () Bool)

(assert (= bs!1144507 (and b!4752906 b!4752896)))

(assert (=> bs!1144507 (= (= lt!1917460 lt!1917730) (= lambda!222392 lambda!222388))))

(assert (=> bs!1144504 (= (= lt!1917460 lt!1917650) (= lambda!222392 lambda!222376))))

(assert (=> bs!1144507 (= (= lt!1917460 acc!1214) (= lambda!222392 lambda!222386))))

(declare-fun bs!1144508 () Bool)

(assert (= bs!1144508 (and b!4752906 b!4752863)))

(assert (=> bs!1144508 (= (= lt!1917460 acc!1214) (= lambda!222392 lambda!222373))))

(declare-fun bs!1144509 () Bool)

(assert (= bs!1144509 (and b!4752906 d!1519627)))

(assert (=> bs!1144509 (= (= lt!1917460 lt!1917744) (= lambda!222392 lambda!222389))))

(assert (=> b!4752906 true))

(declare-fun bs!1144510 () Bool)

(declare-fun b!4752908 () Bool)

(assert (= bs!1144510 (and b!4752908 b!4752865)))

(declare-fun lambda!222393 () Int)

(assert (=> bs!1144510 (= (= lt!1917460 acc!1214) (= lambda!222393 lambda!222375))))

(declare-fun bs!1144511 () Bool)

(assert (= bs!1144511 (and b!4752908 d!1519579)))

(assert (=> bs!1144511 (= (= lt!1917460 lt!1917664) (= lambda!222393 lambda!222378))))

(declare-fun bs!1144512 () Bool)

(assert (= bs!1144512 (and b!4752908 b!4752906)))

(assert (=> bs!1144512 (= lambda!222393 lambda!222392)))

(declare-fun bs!1144513 () Bool)

(assert (= bs!1144513 (and b!4752908 b!4752894)))

(assert (=> bs!1144513 (= (= lt!1917460 acc!1214) (= lambda!222393 lambda!222385))))

(declare-fun bs!1144514 () Bool)

(assert (= bs!1144514 (and b!4752908 b!4752896)))

(assert (=> bs!1144514 (= (= lt!1917460 lt!1917730) (= lambda!222393 lambda!222388))))

(assert (=> bs!1144510 (= (= lt!1917460 lt!1917650) (= lambda!222393 lambda!222376))))

(assert (=> bs!1144514 (= (= lt!1917460 acc!1214) (= lambda!222393 lambda!222386))))

(declare-fun bs!1144515 () Bool)

(assert (= bs!1144515 (and b!4752908 b!4752863)))

(assert (=> bs!1144515 (= (= lt!1917460 acc!1214) (= lambda!222393 lambda!222373))))

(declare-fun bs!1144517 () Bool)

(assert (= bs!1144517 (and b!4752908 d!1519627)))

(assert (=> bs!1144517 (= (= lt!1917460 lt!1917744) (= lambda!222393 lambda!222389))))

(assert (=> b!4752908 true))

(declare-fun lambda!222395 () Int)

(declare-fun lt!1917772 () ListMap!5553)

(assert (=> b!4752908 (= (= lt!1917772 lt!1917460) (= lambda!222395 lambda!222393))))

(assert (=> bs!1144510 (= (= lt!1917772 acc!1214) (= lambda!222395 lambda!222375))))

(assert (=> bs!1144511 (= (= lt!1917772 lt!1917664) (= lambda!222395 lambda!222378))))

(assert (=> bs!1144512 (= (= lt!1917772 lt!1917460) (= lambda!222395 lambda!222392))))

(assert (=> bs!1144513 (= (= lt!1917772 acc!1214) (= lambda!222395 lambda!222385))))

(assert (=> bs!1144514 (= (= lt!1917772 lt!1917730) (= lambda!222395 lambda!222388))))

(assert (=> bs!1144510 (= (= lt!1917772 lt!1917650) (= lambda!222395 lambda!222376))))

(assert (=> bs!1144514 (= (= lt!1917772 acc!1214) (= lambda!222395 lambda!222386))))

(assert (=> bs!1144515 (= (= lt!1917772 acc!1214) (= lambda!222395 lambda!222373))))

(assert (=> bs!1144517 (= (= lt!1917772 lt!1917744) (= lambda!222395 lambda!222389))))

(assert (=> b!4752908 true))

(declare-fun bs!1144534 () Bool)

(declare-fun d!1519633 () Bool)

(assert (= bs!1144534 (and d!1519633 b!4752908)))

(declare-fun lambda!222396 () Int)

(declare-fun lt!1917786 () ListMap!5553)

(assert (=> bs!1144534 (= (= lt!1917786 lt!1917460) (= lambda!222396 lambda!222393))))

(declare-fun bs!1144535 () Bool)

(assert (= bs!1144535 (and d!1519633 b!4752865)))

(assert (=> bs!1144535 (= (= lt!1917786 acc!1214) (= lambda!222396 lambda!222375))))

(declare-fun bs!1144536 () Bool)

(assert (= bs!1144536 (and d!1519633 d!1519579)))

(assert (=> bs!1144536 (= (= lt!1917786 lt!1917664) (= lambda!222396 lambda!222378))))

(declare-fun bs!1144537 () Bool)

(assert (= bs!1144537 (and d!1519633 b!4752906)))

(assert (=> bs!1144537 (= (= lt!1917786 lt!1917460) (= lambda!222396 lambda!222392))))

(declare-fun bs!1144538 () Bool)

(assert (= bs!1144538 (and d!1519633 b!4752894)))

(assert (=> bs!1144538 (= (= lt!1917786 acc!1214) (= lambda!222396 lambda!222385))))

(declare-fun bs!1144539 () Bool)

(assert (= bs!1144539 (and d!1519633 b!4752896)))

(assert (=> bs!1144539 (= (= lt!1917786 lt!1917730) (= lambda!222396 lambda!222388))))

(assert (=> bs!1144535 (= (= lt!1917786 lt!1917650) (= lambda!222396 lambda!222376))))

(assert (=> bs!1144539 (= (= lt!1917786 acc!1214) (= lambda!222396 lambda!222386))))

(declare-fun bs!1144540 () Bool)

(assert (= bs!1144540 (and d!1519633 b!4752863)))

(assert (=> bs!1144540 (= (= lt!1917786 acc!1214) (= lambda!222396 lambda!222373))))

(declare-fun bs!1144541 () Bool)

(assert (= bs!1144541 (and d!1519633 d!1519627)))

(assert (=> bs!1144541 (= (= lt!1917786 lt!1917744) (= lambda!222396 lambda!222389))))

(assert (=> bs!1144534 (= (= lt!1917786 lt!1917772) (= lambda!222396 lambda!222395))))

(assert (=> d!1519633 true))

(declare-fun call!333108 () Bool)

(declare-fun bm!333101 () Bool)

(declare-fun c!811518 () Bool)

(assert (=> bm!333101 (= call!333108 (forall!11766 (toList!6122 lt!1917460) (ite c!811518 lambda!222392 lambda!222395)))))

(declare-fun b!4752904 () Bool)

(declare-fun e!2964932 () Bool)

(assert (=> b!4752904 (= e!2964932 (forall!11766 (toList!6122 lt!1917460) lambda!222395))))

(declare-fun e!2964934 () Bool)

(assert (=> d!1519633 e!2964934))

(declare-fun res!2015734 () Bool)

(assert (=> d!1519633 (=> (not res!2015734) (not e!2964934))))

(assert (=> d!1519633 (= res!2015734 (forall!11766 (Cons!53094 t!14174 (t!360556 l!14304)) lambda!222396))))

(declare-fun e!2964933 () ListMap!5553)

(assert (=> d!1519633 (= lt!1917786 e!2964933)))

(assert (=> d!1519633 (= c!811518 ((_ is Nil!53094) (Cons!53094 t!14174 (t!360556 l!14304))))))

(assert (=> d!1519633 (noDuplicateKeys!2154 (Cons!53094 t!14174 (t!360556 l!14304)))))

(assert (=> d!1519633 (= (addToMapMapFromBucket!1578 (Cons!53094 t!14174 (t!360556 l!14304)) lt!1917460) lt!1917786)))

(declare-fun b!4752905 () Bool)

(assert (=> b!4752905 (= e!2964934 (invariantList!1598 (toList!6122 lt!1917786)))))

(assert (=> b!4752906 (= e!2964933 lt!1917460)))

(declare-fun lt!1917782 () Unit!136402)

(declare-fun call!333107 () Unit!136402)

(assert (=> b!4752906 (= lt!1917782 call!333107)))

(declare-fun call!333106 () Bool)

(assert (=> b!4752906 call!333106))

(declare-fun lt!1917787 () Unit!136402)

(assert (=> b!4752906 (= lt!1917787 lt!1917782)))

(assert (=> b!4752906 call!333108))

(declare-fun lt!1917776 () Unit!136402)

(declare-fun Unit!136459 () Unit!136402)

(assert (=> b!4752906 (= lt!1917776 Unit!136459)))

(declare-fun lt!1917777 () ListMap!5553)

(declare-fun bm!333102 () Bool)

(assert (=> bm!333102 (= call!333106 (forall!11766 (ite c!811518 (toList!6122 lt!1917460) (toList!6122 lt!1917777)) (ite c!811518 lambda!222392 lambda!222395)))))

(declare-fun b!4752907 () Bool)

(declare-fun res!2015735 () Bool)

(assert (=> b!4752907 (=> (not res!2015735) (not e!2964934))))

(assert (=> b!4752907 (= res!2015735 (forall!11766 (toList!6122 lt!1917460) lambda!222396))))

(assert (=> b!4752908 (= e!2964933 lt!1917772)))

(assert (=> b!4752908 (= lt!1917777 (+!2388 lt!1917460 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304)))))))

(assert (=> b!4752908 (= lt!1917772 (addToMapMapFromBucket!1578 (t!360556 (Cons!53094 t!14174 (t!360556 l!14304))) (+!2388 lt!1917460 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304))))))))

(declare-fun lt!1917770 () Unit!136402)

(assert (=> b!4752908 (= lt!1917770 call!333107)))

(assert (=> b!4752908 (forall!11766 (toList!6122 lt!1917460) lambda!222393)))

(declare-fun lt!1917784 () Unit!136402)

(assert (=> b!4752908 (= lt!1917784 lt!1917770)))

(assert (=> b!4752908 call!333106))

(declare-fun lt!1917769 () Unit!136402)

(declare-fun Unit!136460 () Unit!136402)

(assert (=> b!4752908 (= lt!1917769 Unit!136460)))

(assert (=> b!4752908 (forall!11766 (t!360556 (Cons!53094 t!14174 (t!360556 l!14304))) lambda!222395)))

(declare-fun lt!1917779 () Unit!136402)

(declare-fun Unit!136461 () Unit!136402)

(assert (=> b!4752908 (= lt!1917779 Unit!136461)))

(declare-fun lt!1917775 () Unit!136402)

(declare-fun Unit!136462 () Unit!136402)

(assert (=> b!4752908 (= lt!1917775 Unit!136462)))

(declare-fun lt!1917781 () Unit!136402)

(assert (=> b!4752908 (= lt!1917781 (forallContained!3792 (toList!6122 lt!1917777) lambda!222395 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304)))))))

(assert (=> b!4752908 (contains!16520 lt!1917777 (_1!30728 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304)))))))

(declare-fun lt!1917785 () Unit!136402)

(declare-fun Unit!136463 () Unit!136402)

(assert (=> b!4752908 (= lt!1917785 Unit!136463)))

(assert (=> b!4752908 (contains!16520 lt!1917772 (_1!30728 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304)))))))

(declare-fun lt!1917783 () Unit!136402)

(declare-fun Unit!136464 () Unit!136402)

(assert (=> b!4752908 (= lt!1917783 Unit!136464)))

(assert (=> b!4752908 (forall!11766 (Cons!53094 t!14174 (t!360556 l!14304)) lambda!222395)))

(declare-fun lt!1917774 () Unit!136402)

(declare-fun Unit!136465 () Unit!136402)

(assert (=> b!4752908 (= lt!1917774 Unit!136465)))

(assert (=> b!4752908 (forall!11766 (toList!6122 lt!1917777) lambda!222395)))

(declare-fun lt!1917780 () Unit!136402)

(declare-fun Unit!136466 () Unit!136402)

(assert (=> b!4752908 (= lt!1917780 Unit!136466)))

(declare-fun lt!1917773 () Unit!136402)

(declare-fun Unit!136467 () Unit!136402)

(assert (=> b!4752908 (= lt!1917773 Unit!136467)))

(declare-fun lt!1917778 () Unit!136402)

(assert (=> b!4752908 (= lt!1917778 (addForallContainsKeyThenBeforeAdding!880 lt!1917460 lt!1917772 (_1!30728 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304)))) (_2!30728 (h!59491 (Cons!53094 t!14174 (t!360556 l!14304))))))))

(assert (=> b!4752908 call!333108))

(declare-fun lt!1917771 () Unit!136402)

(assert (=> b!4752908 (= lt!1917771 lt!1917778)))

(assert (=> b!4752908 (forall!11766 (toList!6122 lt!1917460) lambda!222395)))

(declare-fun lt!1917789 () Unit!136402)

(declare-fun Unit!136468 () Unit!136402)

(assert (=> b!4752908 (= lt!1917789 Unit!136468)))

(declare-fun res!2015736 () Bool)

(assert (=> b!4752908 (= res!2015736 (forall!11766 (Cons!53094 t!14174 (t!360556 l!14304)) lambda!222395))))

(assert (=> b!4752908 (=> (not res!2015736) (not e!2964932))))

(assert (=> b!4752908 e!2964932))

(declare-fun lt!1917788 () Unit!136402)

(declare-fun Unit!136469 () Unit!136402)

(assert (=> b!4752908 (= lt!1917788 Unit!136469)))

(declare-fun bm!333103 () Bool)

(assert (=> bm!333103 (= call!333107 (lemmaContainsAllItsOwnKeys!881 lt!1917460))))

(assert (= (and d!1519633 c!811518) b!4752906))

(assert (= (and d!1519633 (not c!811518)) b!4752908))

(assert (= (and b!4752908 res!2015736) b!4752904))

(assert (= (or b!4752906 b!4752908) bm!333103))

(assert (= (or b!4752906 b!4752908) bm!333102))

(assert (= (or b!4752906 b!4752908) bm!333101))

(assert (= (and d!1519633 res!2015734) b!4752907))

(assert (= (and b!4752907 res!2015735) b!4752905))

(declare-fun m!5718375 () Bool)

(assert (=> b!4752905 m!5718375))

(declare-fun m!5718377 () Bool)

(assert (=> b!4752904 m!5718377))

(declare-fun m!5718379 () Bool)

(assert (=> d!1519633 m!5718379))

(declare-fun m!5718381 () Bool)

(assert (=> d!1519633 m!5718381))

(declare-fun m!5718383 () Bool)

(assert (=> bm!333103 m!5718383))

(declare-fun m!5718385 () Bool)

(assert (=> bm!333102 m!5718385))

(declare-fun m!5718387 () Bool)

(assert (=> b!4752908 m!5718387))

(declare-fun m!5718389 () Bool)

(assert (=> b!4752908 m!5718389))

(declare-fun m!5718391 () Bool)

(assert (=> b!4752908 m!5718391))

(assert (=> b!4752908 m!5718377))

(declare-fun m!5718393 () Bool)

(assert (=> b!4752908 m!5718393))

(declare-fun m!5718395 () Bool)

(assert (=> b!4752908 m!5718395))

(declare-fun m!5718397 () Bool)

(assert (=> b!4752908 m!5718397))

(assert (=> b!4752908 m!5718393))

(declare-fun m!5718399 () Bool)

(assert (=> b!4752908 m!5718399))

(declare-fun m!5718401 () Bool)

(assert (=> b!4752908 m!5718401))

(assert (=> b!4752908 m!5718389))

(declare-fun m!5718403 () Bool)

(assert (=> b!4752908 m!5718403))

(declare-fun m!5718405 () Bool)

(assert (=> b!4752908 m!5718405))

(declare-fun m!5718407 () Bool)

(assert (=> b!4752907 m!5718407))

(declare-fun m!5718409 () Bool)

(assert (=> bm!333101 m!5718409))

(assert (=> b!4752802 d!1519633))

(declare-fun d!1519639 () Bool)

(assert (=> d!1519639 (eq!1223 (addToMapMapFromBucket!1578 (Cons!53094 t!14174 (t!360556 l!14304)) lt!1917460) (+!2388 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917460) t!14174))))

(declare-fun lt!1917813 () Unit!136402)

(declare-fun choose!33837 (tuple2!54868 List!53218 ListMap!5553) Unit!136402)

(assert (=> d!1519639 (= lt!1917813 (choose!33837 t!14174 (t!360556 l!14304) lt!1917460))))

(assert (=> d!1519639 (noDuplicateKeys!2154 (t!360556 l!14304))))

(assert (=> d!1519639 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!468 t!14174 (t!360556 l!14304) lt!1917460) lt!1917813)))

(declare-fun bs!1144601 () Bool)

(assert (= bs!1144601 d!1519639))

(assert (=> bs!1144601 m!5717925))

(assert (=> bs!1144601 m!5717961))

(assert (=> bs!1144601 m!5717925))

(declare-fun m!5718417 () Bool)

(assert (=> bs!1144601 m!5718417))

(declare-fun m!5718419 () Bool)

(assert (=> bs!1144601 m!5718419))

(declare-fun m!5718421 () Bool)

(assert (=> bs!1144601 m!5718421))

(assert (=> bs!1144601 m!5717919))

(assert (=> bs!1144601 m!5717919))

(assert (=> bs!1144601 m!5718417))

(assert (=> b!4752802 d!1519639))

(declare-fun bs!1144602 () Bool)

(declare-fun b!4752918 () Bool)

(assert (= bs!1144602 (and b!4752918 b!4752908)))

(declare-fun lambda!222401 () Int)

(assert (=> bs!1144602 (= (= lt!1917457 lt!1917460) (= lambda!222401 lambda!222393))))

(declare-fun bs!1144603 () Bool)

(assert (= bs!1144603 (and b!4752918 b!4752865)))

(assert (=> bs!1144603 (= (= lt!1917457 acc!1214) (= lambda!222401 lambda!222375))))

(declare-fun bs!1144604 () Bool)

(assert (= bs!1144604 (and b!4752918 d!1519579)))

(assert (=> bs!1144604 (= (= lt!1917457 lt!1917664) (= lambda!222401 lambda!222378))))

(declare-fun bs!1144605 () Bool)

(assert (= bs!1144605 (and b!4752918 b!4752906)))

(assert (=> bs!1144605 (= (= lt!1917457 lt!1917460) (= lambda!222401 lambda!222392))))

(declare-fun bs!1144606 () Bool)

(assert (= bs!1144606 (and b!4752918 b!4752894)))

(assert (=> bs!1144606 (= (= lt!1917457 acc!1214) (= lambda!222401 lambda!222385))))

(declare-fun bs!1144607 () Bool)

(assert (= bs!1144607 (and b!4752918 b!4752896)))

(assert (=> bs!1144607 (= (= lt!1917457 lt!1917730) (= lambda!222401 lambda!222388))))

(assert (=> bs!1144603 (= (= lt!1917457 lt!1917650) (= lambda!222401 lambda!222376))))

(declare-fun bs!1144608 () Bool)

(assert (= bs!1144608 (and b!4752918 b!4752863)))

(assert (=> bs!1144608 (= (= lt!1917457 acc!1214) (= lambda!222401 lambda!222373))))

(declare-fun bs!1144609 () Bool)

(assert (= bs!1144609 (and b!4752918 d!1519627)))

(assert (=> bs!1144609 (= (= lt!1917457 lt!1917744) (= lambda!222401 lambda!222389))))

(assert (=> bs!1144602 (= (= lt!1917457 lt!1917772) (= lambda!222401 lambda!222395))))

(assert (=> bs!1144607 (= (= lt!1917457 acc!1214) (= lambda!222401 lambda!222386))))

(declare-fun bs!1144610 () Bool)

(assert (= bs!1144610 (and b!4752918 d!1519633)))

(assert (=> bs!1144610 (= (= lt!1917457 lt!1917786) (= lambda!222401 lambda!222396))))

(assert (=> b!4752918 true))

(declare-fun bs!1144611 () Bool)

(declare-fun b!4752920 () Bool)

(assert (= bs!1144611 (and b!4752920 b!4752908)))

(declare-fun lambda!222402 () Int)

(assert (=> bs!1144611 (= (= lt!1917457 lt!1917460) (= lambda!222402 lambda!222393))))

(declare-fun bs!1144612 () Bool)

(assert (= bs!1144612 (and b!4752920 b!4752865)))

(assert (=> bs!1144612 (= (= lt!1917457 acc!1214) (= lambda!222402 lambda!222375))))

(declare-fun bs!1144613 () Bool)

(assert (= bs!1144613 (and b!4752920 d!1519579)))

(assert (=> bs!1144613 (= (= lt!1917457 lt!1917664) (= lambda!222402 lambda!222378))))

(declare-fun bs!1144614 () Bool)

(assert (= bs!1144614 (and b!4752920 b!4752906)))

(assert (=> bs!1144614 (= (= lt!1917457 lt!1917460) (= lambda!222402 lambda!222392))))

(declare-fun bs!1144615 () Bool)

(assert (= bs!1144615 (and b!4752920 b!4752894)))

(assert (=> bs!1144615 (= (= lt!1917457 acc!1214) (= lambda!222402 lambda!222385))))

(declare-fun bs!1144616 () Bool)

(assert (= bs!1144616 (and b!4752920 b!4752896)))

(assert (=> bs!1144616 (= (= lt!1917457 lt!1917730) (= lambda!222402 lambda!222388))))

(assert (=> bs!1144612 (= (= lt!1917457 lt!1917650) (= lambda!222402 lambda!222376))))

(declare-fun bs!1144617 () Bool)

(assert (= bs!1144617 (and b!4752920 b!4752863)))

(assert (=> bs!1144617 (= (= lt!1917457 acc!1214) (= lambda!222402 lambda!222373))))

(declare-fun bs!1144618 () Bool)

(assert (= bs!1144618 (and b!4752920 d!1519627)))

(assert (=> bs!1144618 (= (= lt!1917457 lt!1917744) (= lambda!222402 lambda!222389))))

(declare-fun bs!1144619 () Bool)

(assert (= bs!1144619 (and b!4752920 b!4752918)))

(assert (=> bs!1144619 (= lambda!222402 lambda!222401)))

(assert (=> bs!1144611 (= (= lt!1917457 lt!1917772) (= lambda!222402 lambda!222395))))

(assert (=> bs!1144616 (= (= lt!1917457 acc!1214) (= lambda!222402 lambda!222386))))

(declare-fun bs!1144620 () Bool)

(assert (= bs!1144620 (and b!4752920 d!1519633)))

(assert (=> bs!1144620 (= (= lt!1917457 lt!1917786) (= lambda!222402 lambda!222396))))

(assert (=> b!4752920 true))

(declare-fun lt!1917817 () ListMap!5553)

(declare-fun lambda!222403 () Int)

(assert (=> bs!1144611 (= (= lt!1917817 lt!1917460) (= lambda!222403 lambda!222393))))

(assert (=> bs!1144612 (= (= lt!1917817 acc!1214) (= lambda!222403 lambda!222375))))

(assert (=> bs!1144613 (= (= lt!1917817 lt!1917664) (= lambda!222403 lambda!222378))))

(assert (=> bs!1144614 (= (= lt!1917817 lt!1917460) (= lambda!222403 lambda!222392))))

(assert (=> bs!1144615 (= (= lt!1917817 acc!1214) (= lambda!222403 lambda!222385))))

(assert (=> bs!1144616 (= (= lt!1917817 lt!1917730) (= lambda!222403 lambda!222388))))

(assert (=> bs!1144612 (= (= lt!1917817 lt!1917650) (= lambda!222403 lambda!222376))))

(assert (=> b!4752920 (= (= lt!1917817 lt!1917457) (= lambda!222403 lambda!222402))))

(assert (=> bs!1144617 (= (= lt!1917817 acc!1214) (= lambda!222403 lambda!222373))))

(assert (=> bs!1144618 (= (= lt!1917817 lt!1917744) (= lambda!222403 lambda!222389))))

(assert (=> bs!1144619 (= (= lt!1917817 lt!1917457) (= lambda!222403 lambda!222401))))

(assert (=> bs!1144611 (= (= lt!1917817 lt!1917772) (= lambda!222403 lambda!222395))))

(assert (=> bs!1144616 (= (= lt!1917817 acc!1214) (= lambda!222403 lambda!222386))))

(assert (=> bs!1144620 (= (= lt!1917817 lt!1917786) (= lambda!222403 lambda!222396))))

(assert (=> b!4752920 true))

(declare-fun bs!1144621 () Bool)

(declare-fun d!1519645 () Bool)

(assert (= bs!1144621 (and d!1519645 b!4752908)))

(declare-fun lt!1917831 () ListMap!5553)

(declare-fun lambda!222404 () Int)

(assert (=> bs!1144621 (= (= lt!1917831 lt!1917460) (= lambda!222404 lambda!222393))))

(declare-fun bs!1144622 () Bool)

(assert (= bs!1144622 (and d!1519645 b!4752865)))

(assert (=> bs!1144622 (= (= lt!1917831 acc!1214) (= lambda!222404 lambda!222375))))

(declare-fun bs!1144623 () Bool)

(assert (= bs!1144623 (and d!1519645 d!1519579)))

(assert (=> bs!1144623 (= (= lt!1917831 lt!1917664) (= lambda!222404 lambda!222378))))

(declare-fun bs!1144624 () Bool)

(assert (= bs!1144624 (and d!1519645 b!4752906)))

(assert (=> bs!1144624 (= (= lt!1917831 lt!1917460) (= lambda!222404 lambda!222392))))

(declare-fun bs!1144625 () Bool)

(assert (= bs!1144625 (and d!1519645 b!4752894)))

(assert (=> bs!1144625 (= (= lt!1917831 acc!1214) (= lambda!222404 lambda!222385))))

(assert (=> bs!1144622 (= (= lt!1917831 lt!1917650) (= lambda!222404 lambda!222376))))

(declare-fun bs!1144626 () Bool)

(assert (= bs!1144626 (and d!1519645 b!4752920)))

(assert (=> bs!1144626 (= (= lt!1917831 lt!1917457) (= lambda!222404 lambda!222402))))

(declare-fun bs!1144627 () Bool)

(assert (= bs!1144627 (and d!1519645 b!4752863)))

(assert (=> bs!1144627 (= (= lt!1917831 acc!1214) (= lambda!222404 lambda!222373))))

(declare-fun bs!1144628 () Bool)

(assert (= bs!1144628 (and d!1519645 d!1519627)))

(assert (=> bs!1144628 (= (= lt!1917831 lt!1917744) (= lambda!222404 lambda!222389))))

(declare-fun bs!1144629 () Bool)

(assert (= bs!1144629 (and d!1519645 b!4752918)))

(assert (=> bs!1144629 (= (= lt!1917831 lt!1917457) (= lambda!222404 lambda!222401))))

(assert (=> bs!1144621 (= (= lt!1917831 lt!1917772) (= lambda!222404 lambda!222395))))

(assert (=> bs!1144626 (= (= lt!1917831 lt!1917817) (= lambda!222404 lambda!222403))))

(declare-fun bs!1144630 () Bool)

(assert (= bs!1144630 (and d!1519645 b!4752896)))

(assert (=> bs!1144630 (= (= lt!1917831 lt!1917730) (= lambda!222404 lambda!222388))))

(assert (=> bs!1144630 (= (= lt!1917831 acc!1214) (= lambda!222404 lambda!222386))))

(declare-fun bs!1144631 () Bool)

(assert (= bs!1144631 (and d!1519645 d!1519633)))

(assert (=> bs!1144631 (= (= lt!1917831 lt!1917786) (= lambda!222404 lambda!222396))))

(assert (=> d!1519645 true))

(declare-fun call!333114 () Bool)

(declare-fun bm!333107 () Bool)

(declare-fun c!811520 () Bool)

(assert (=> bm!333107 (= call!333114 (forall!11766 (toList!6122 lt!1917457) (ite c!811520 lambda!222401 lambda!222403)))))

(declare-fun b!4752916 () Bool)

(declare-fun e!2964940 () Bool)

(assert (=> b!4752916 (= e!2964940 (forall!11766 (toList!6122 lt!1917457) lambda!222403))))

(declare-fun e!2964942 () Bool)

(assert (=> d!1519645 e!2964942))

(declare-fun res!2015742 () Bool)

(assert (=> d!1519645 (=> (not res!2015742) (not e!2964942))))

(assert (=> d!1519645 (= res!2015742 (forall!11766 (t!360556 l!14304) lambda!222404))))

(declare-fun e!2964941 () ListMap!5553)

(assert (=> d!1519645 (= lt!1917831 e!2964941)))

(assert (=> d!1519645 (= c!811520 ((_ is Nil!53094) (t!360556 l!14304)))))

(assert (=> d!1519645 (noDuplicateKeys!2154 (t!360556 l!14304))))

(assert (=> d!1519645 (= (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917457) lt!1917831)))

(declare-fun b!4752917 () Bool)

(assert (=> b!4752917 (= e!2964942 (invariantList!1598 (toList!6122 lt!1917831)))))

(assert (=> b!4752918 (= e!2964941 lt!1917457)))

(declare-fun lt!1917827 () Unit!136402)

(declare-fun call!333113 () Unit!136402)

(assert (=> b!4752918 (= lt!1917827 call!333113)))

(declare-fun call!333112 () Bool)

(assert (=> b!4752918 call!333112))

(declare-fun lt!1917832 () Unit!136402)

(assert (=> b!4752918 (= lt!1917832 lt!1917827)))

(assert (=> b!4752918 call!333114))

(declare-fun lt!1917821 () Unit!136402)

(declare-fun Unit!136481 () Unit!136402)

(assert (=> b!4752918 (= lt!1917821 Unit!136481)))

(declare-fun lt!1917822 () ListMap!5553)

(declare-fun bm!333108 () Bool)

(assert (=> bm!333108 (= call!333112 (forall!11766 (ite c!811520 (toList!6122 lt!1917457) (toList!6122 lt!1917822)) (ite c!811520 lambda!222401 lambda!222403)))))

(declare-fun b!4752919 () Bool)

(declare-fun res!2015743 () Bool)

(assert (=> b!4752919 (=> (not res!2015743) (not e!2964942))))

(assert (=> b!4752919 (= res!2015743 (forall!11766 (toList!6122 lt!1917457) lambda!222404))))

(assert (=> b!4752920 (= e!2964941 lt!1917817)))

(assert (=> b!4752920 (= lt!1917822 (+!2388 lt!1917457 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752920 (= lt!1917817 (addToMapMapFromBucket!1578 (t!360556 (t!360556 l!14304)) (+!2388 lt!1917457 (h!59491 (t!360556 l!14304)))))))

(declare-fun lt!1917815 () Unit!136402)

(assert (=> b!4752920 (= lt!1917815 call!333113)))

(assert (=> b!4752920 (forall!11766 (toList!6122 lt!1917457) lambda!222402)))

(declare-fun lt!1917829 () Unit!136402)

(assert (=> b!4752920 (= lt!1917829 lt!1917815)))

(assert (=> b!4752920 call!333112))

(declare-fun lt!1917814 () Unit!136402)

(declare-fun Unit!136482 () Unit!136402)

(assert (=> b!4752920 (= lt!1917814 Unit!136482)))

(assert (=> b!4752920 (forall!11766 (t!360556 (t!360556 l!14304)) lambda!222403)))

(declare-fun lt!1917824 () Unit!136402)

(declare-fun Unit!136483 () Unit!136402)

(assert (=> b!4752920 (= lt!1917824 Unit!136483)))

(declare-fun lt!1917820 () Unit!136402)

(declare-fun Unit!136484 () Unit!136402)

(assert (=> b!4752920 (= lt!1917820 Unit!136484)))

(declare-fun lt!1917826 () Unit!136402)

(assert (=> b!4752920 (= lt!1917826 (forallContained!3792 (toList!6122 lt!1917822) lambda!222403 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752920 (contains!16520 lt!1917822 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917830 () Unit!136402)

(declare-fun Unit!136485 () Unit!136402)

(assert (=> b!4752920 (= lt!1917830 Unit!136485)))

(assert (=> b!4752920 (contains!16520 lt!1917817 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917828 () Unit!136402)

(declare-fun Unit!136486 () Unit!136402)

(assert (=> b!4752920 (= lt!1917828 Unit!136486)))

(assert (=> b!4752920 (forall!11766 (t!360556 l!14304) lambda!222403)))

(declare-fun lt!1917819 () Unit!136402)

(declare-fun Unit!136487 () Unit!136402)

(assert (=> b!4752920 (= lt!1917819 Unit!136487)))

(assert (=> b!4752920 (forall!11766 (toList!6122 lt!1917822) lambda!222403)))

(declare-fun lt!1917825 () Unit!136402)

(declare-fun Unit!136488 () Unit!136402)

(assert (=> b!4752920 (= lt!1917825 Unit!136488)))

(declare-fun lt!1917818 () Unit!136402)

(declare-fun Unit!136489 () Unit!136402)

(assert (=> b!4752920 (= lt!1917818 Unit!136489)))

(declare-fun lt!1917823 () Unit!136402)

(assert (=> b!4752920 (= lt!1917823 (addForallContainsKeyThenBeforeAdding!880 lt!1917457 lt!1917817 (_1!30728 (h!59491 (t!360556 l!14304))) (_2!30728 (h!59491 (t!360556 l!14304)))))))

(assert (=> b!4752920 call!333114))

(declare-fun lt!1917816 () Unit!136402)

(assert (=> b!4752920 (= lt!1917816 lt!1917823)))

(assert (=> b!4752920 (forall!11766 (toList!6122 lt!1917457) lambda!222403)))

(declare-fun lt!1917834 () Unit!136402)

(declare-fun Unit!136490 () Unit!136402)

(assert (=> b!4752920 (= lt!1917834 Unit!136490)))

(declare-fun res!2015744 () Bool)

(assert (=> b!4752920 (= res!2015744 (forall!11766 (t!360556 l!14304) lambda!222403))))

(assert (=> b!4752920 (=> (not res!2015744) (not e!2964940))))

(assert (=> b!4752920 e!2964940))

(declare-fun lt!1917833 () Unit!136402)

(declare-fun Unit!136491 () Unit!136402)

(assert (=> b!4752920 (= lt!1917833 Unit!136491)))

(declare-fun bm!333109 () Bool)

(assert (=> bm!333109 (= call!333113 (lemmaContainsAllItsOwnKeys!881 lt!1917457))))

(assert (= (and d!1519645 c!811520) b!4752918))

(assert (= (and d!1519645 (not c!811520)) b!4752920))

(assert (= (and b!4752920 res!2015744) b!4752916))

(assert (= (or b!4752918 b!4752920) bm!333109))

(assert (= (or b!4752918 b!4752920) bm!333108))

(assert (= (or b!4752918 b!4752920) bm!333107))

(assert (= (and d!1519645 res!2015742) b!4752919))

(assert (= (and b!4752919 res!2015743) b!4752917))

(declare-fun m!5718451 () Bool)

(assert (=> b!4752917 m!5718451))

(declare-fun m!5718453 () Bool)

(assert (=> b!4752916 m!5718453))

(declare-fun m!5718455 () Bool)

(assert (=> d!1519645 m!5718455))

(assert (=> d!1519645 m!5717961))

(declare-fun m!5718457 () Bool)

(assert (=> bm!333109 m!5718457))

(declare-fun m!5718459 () Bool)

(assert (=> bm!333108 m!5718459))

(declare-fun m!5718461 () Bool)

(assert (=> b!4752920 m!5718461))

(declare-fun m!5718463 () Bool)

(assert (=> b!4752920 m!5718463))

(declare-fun m!5718465 () Bool)

(assert (=> b!4752920 m!5718465))

(assert (=> b!4752920 m!5718453))

(declare-fun m!5718467 () Bool)

(assert (=> b!4752920 m!5718467))

(declare-fun m!5718469 () Bool)

(assert (=> b!4752920 m!5718469))

(declare-fun m!5718471 () Bool)

(assert (=> b!4752920 m!5718471))

(assert (=> b!4752920 m!5718467))

(declare-fun m!5718473 () Bool)

(assert (=> b!4752920 m!5718473))

(declare-fun m!5718475 () Bool)

(assert (=> b!4752920 m!5718475))

(assert (=> b!4752920 m!5718463))

(declare-fun m!5718477 () Bool)

(assert (=> b!4752920 m!5718477))

(declare-fun m!5718479 () Bool)

(assert (=> b!4752920 m!5718479))

(declare-fun m!5718481 () Bool)

(assert (=> b!4752919 m!5718481))

(declare-fun m!5718483 () Bool)

(assert (=> bm!333107 m!5718483))

(assert (=> b!4752802 d!1519645))

(declare-fun d!1519647 () Bool)

(assert (=> d!1519647 (= (eq!1223 lt!1917456 (addToMapMapFromBucket!1578 l!14304 lt!1917454)) (= (content!9535 (toList!6122 lt!1917456)) (content!9535 (toList!6122 (addToMapMapFromBucket!1578 l!14304 lt!1917454)))))))

(declare-fun bs!1144632 () Bool)

(assert (= bs!1144632 d!1519647))

(declare-fun m!5718485 () Bool)

(assert (=> bs!1144632 m!5718485))

(declare-fun m!5718487 () Bool)

(assert (=> bs!1144632 m!5718487))

(assert (=> b!4752802 d!1519647))

(declare-fun d!1519649 () Bool)

(declare-fun res!2015745 () Bool)

(declare-fun e!2964947 () Bool)

(assert (=> d!1519649 (=> res!2015745 e!2964947)))

(assert (=> d!1519649 (= res!2015745 (not ((_ is Cons!53094) (t!360556 l!14304))))))

(assert (=> d!1519649 (= (noDuplicateKeys!2154 (t!360556 l!14304)) e!2964947)))

(declare-fun b!4752927 () Bool)

(declare-fun e!2964948 () Bool)

(assert (=> b!4752927 (= e!2964947 e!2964948)))

(declare-fun res!2015746 () Bool)

(assert (=> b!4752927 (=> (not res!2015746) (not e!2964948))))

(assert (=> b!4752927 (= res!2015746 (not (containsKey!3563 (t!360556 (t!360556 l!14304)) (_1!30728 (h!59491 (t!360556 l!14304))))))))

(declare-fun b!4752928 () Bool)

(assert (=> b!4752928 (= e!2964948 (noDuplicateKeys!2154 (t!360556 (t!360556 l!14304))))))

(assert (= (and d!1519649 (not res!2015745)) b!4752927))

(assert (= (and b!4752927 res!2015746) b!4752928))

(declare-fun m!5718489 () Bool)

(assert (=> b!4752927 m!5718489))

(declare-fun m!5718491 () Bool)

(assert (=> b!4752928 m!5718491))

(assert (=> b!4752802 d!1519649))

(declare-fun bs!1144633 () Bool)

(declare-fun b!4752931 () Bool)

(assert (= bs!1144633 (and b!4752931 b!4752908)))

(declare-fun lambda!222405 () Int)

(assert (=> bs!1144633 (= (= lt!1917459 lt!1917460) (= lambda!222405 lambda!222393))))

(declare-fun bs!1144634 () Bool)

(assert (= bs!1144634 (and b!4752931 b!4752865)))

(assert (=> bs!1144634 (= (= lt!1917459 acc!1214) (= lambda!222405 lambda!222375))))

(declare-fun bs!1144635 () Bool)

(assert (= bs!1144635 (and b!4752931 d!1519579)))

(assert (=> bs!1144635 (= (= lt!1917459 lt!1917664) (= lambda!222405 lambda!222378))))

(declare-fun bs!1144636 () Bool)

(assert (= bs!1144636 (and b!4752931 b!4752894)))

(assert (=> bs!1144636 (= (= lt!1917459 acc!1214) (= lambda!222405 lambda!222385))))

(assert (=> bs!1144634 (= (= lt!1917459 lt!1917650) (= lambda!222405 lambda!222376))))

(declare-fun bs!1144637 () Bool)

(assert (= bs!1144637 (and b!4752931 b!4752920)))

(assert (=> bs!1144637 (= (= lt!1917459 lt!1917457) (= lambda!222405 lambda!222402))))

(declare-fun bs!1144638 () Bool)

(assert (= bs!1144638 (and b!4752931 b!4752863)))

(assert (=> bs!1144638 (= (= lt!1917459 acc!1214) (= lambda!222405 lambda!222373))))

(declare-fun bs!1144639 () Bool)

(assert (= bs!1144639 (and b!4752931 d!1519627)))

(assert (=> bs!1144639 (= (= lt!1917459 lt!1917744) (= lambda!222405 lambda!222389))))

(declare-fun bs!1144640 () Bool)

(assert (= bs!1144640 (and b!4752931 b!4752918)))

(assert (=> bs!1144640 (= (= lt!1917459 lt!1917457) (= lambda!222405 lambda!222401))))

(assert (=> bs!1144633 (= (= lt!1917459 lt!1917772) (= lambda!222405 lambda!222395))))

(declare-fun bs!1144641 () Bool)

(assert (= bs!1144641 (and b!4752931 b!4752906)))

(assert (=> bs!1144641 (= (= lt!1917459 lt!1917460) (= lambda!222405 lambda!222392))))

(declare-fun bs!1144642 () Bool)

(assert (= bs!1144642 (and b!4752931 d!1519645)))

(assert (=> bs!1144642 (= (= lt!1917459 lt!1917831) (= lambda!222405 lambda!222404))))

(assert (=> bs!1144637 (= (= lt!1917459 lt!1917817) (= lambda!222405 lambda!222403))))

(declare-fun bs!1144643 () Bool)

(assert (= bs!1144643 (and b!4752931 b!4752896)))

(assert (=> bs!1144643 (= (= lt!1917459 lt!1917730) (= lambda!222405 lambda!222388))))

(assert (=> bs!1144643 (= (= lt!1917459 acc!1214) (= lambda!222405 lambda!222386))))

(declare-fun bs!1144644 () Bool)

(assert (= bs!1144644 (and b!4752931 d!1519633)))

(assert (=> bs!1144644 (= (= lt!1917459 lt!1917786) (= lambda!222405 lambda!222396))))

(assert (=> b!4752931 true))

(declare-fun bs!1144645 () Bool)

(declare-fun b!4752933 () Bool)

(assert (= bs!1144645 (and b!4752933 b!4752908)))

(declare-fun lambda!222406 () Int)

(assert (=> bs!1144645 (= (= lt!1917459 lt!1917460) (= lambda!222406 lambda!222393))))

(declare-fun bs!1144646 () Bool)

(assert (= bs!1144646 (and b!4752933 b!4752865)))

(assert (=> bs!1144646 (= (= lt!1917459 acc!1214) (= lambda!222406 lambda!222375))))

(declare-fun bs!1144647 () Bool)

(assert (= bs!1144647 (and b!4752933 d!1519579)))

(assert (=> bs!1144647 (= (= lt!1917459 lt!1917664) (= lambda!222406 lambda!222378))))

(declare-fun bs!1144648 () Bool)

(assert (= bs!1144648 (and b!4752933 b!4752894)))

(assert (=> bs!1144648 (= (= lt!1917459 acc!1214) (= lambda!222406 lambda!222385))))

(assert (=> bs!1144646 (= (= lt!1917459 lt!1917650) (= lambda!222406 lambda!222376))))

(declare-fun bs!1144649 () Bool)

(assert (= bs!1144649 (and b!4752933 b!4752920)))

(assert (=> bs!1144649 (= (= lt!1917459 lt!1917457) (= lambda!222406 lambda!222402))))

(declare-fun bs!1144650 () Bool)

(assert (= bs!1144650 (and b!4752933 b!4752863)))

(assert (=> bs!1144650 (= (= lt!1917459 acc!1214) (= lambda!222406 lambda!222373))))

(declare-fun bs!1144651 () Bool)

(assert (= bs!1144651 (and b!4752933 d!1519627)))

(assert (=> bs!1144651 (= (= lt!1917459 lt!1917744) (= lambda!222406 lambda!222389))))

(declare-fun bs!1144652 () Bool)

(assert (= bs!1144652 (and b!4752933 b!4752918)))

(assert (=> bs!1144652 (= (= lt!1917459 lt!1917457) (= lambda!222406 lambda!222401))))

(assert (=> bs!1144645 (= (= lt!1917459 lt!1917772) (= lambda!222406 lambda!222395))))

(declare-fun bs!1144653 () Bool)

(assert (= bs!1144653 (and b!4752933 b!4752931)))

(assert (=> bs!1144653 (= lambda!222406 lambda!222405)))

(declare-fun bs!1144654 () Bool)

(assert (= bs!1144654 (and b!4752933 b!4752906)))

(assert (=> bs!1144654 (= (= lt!1917459 lt!1917460) (= lambda!222406 lambda!222392))))

(declare-fun bs!1144655 () Bool)

(assert (= bs!1144655 (and b!4752933 d!1519645)))

(assert (=> bs!1144655 (= (= lt!1917459 lt!1917831) (= lambda!222406 lambda!222404))))

(assert (=> bs!1144649 (= (= lt!1917459 lt!1917817) (= lambda!222406 lambda!222403))))

(declare-fun bs!1144656 () Bool)

(assert (= bs!1144656 (and b!4752933 b!4752896)))

(assert (=> bs!1144656 (= (= lt!1917459 lt!1917730) (= lambda!222406 lambda!222388))))

(assert (=> bs!1144656 (= (= lt!1917459 acc!1214) (= lambda!222406 lambda!222386))))

(declare-fun bs!1144657 () Bool)

(assert (= bs!1144657 (and b!4752933 d!1519633)))

(assert (=> bs!1144657 (= (= lt!1917459 lt!1917786) (= lambda!222406 lambda!222396))))

(assert (=> b!4752933 true))

(declare-fun lt!1917838 () ListMap!5553)

(declare-fun lambda!222407 () Int)

(assert (=> bs!1144645 (= (= lt!1917838 lt!1917460) (= lambda!222407 lambda!222393))))

(assert (=> b!4752933 (= (= lt!1917838 lt!1917459) (= lambda!222407 lambda!222406))))

(assert (=> bs!1144646 (= (= lt!1917838 acc!1214) (= lambda!222407 lambda!222375))))

(assert (=> bs!1144647 (= (= lt!1917838 lt!1917664) (= lambda!222407 lambda!222378))))

(assert (=> bs!1144648 (= (= lt!1917838 acc!1214) (= lambda!222407 lambda!222385))))

(assert (=> bs!1144646 (= (= lt!1917838 lt!1917650) (= lambda!222407 lambda!222376))))

(assert (=> bs!1144649 (= (= lt!1917838 lt!1917457) (= lambda!222407 lambda!222402))))

(assert (=> bs!1144650 (= (= lt!1917838 acc!1214) (= lambda!222407 lambda!222373))))

(assert (=> bs!1144651 (= (= lt!1917838 lt!1917744) (= lambda!222407 lambda!222389))))

(assert (=> bs!1144652 (= (= lt!1917838 lt!1917457) (= lambda!222407 lambda!222401))))

(assert (=> bs!1144645 (= (= lt!1917838 lt!1917772) (= lambda!222407 lambda!222395))))

(assert (=> bs!1144653 (= (= lt!1917838 lt!1917459) (= lambda!222407 lambda!222405))))

(assert (=> bs!1144654 (= (= lt!1917838 lt!1917460) (= lambda!222407 lambda!222392))))

(assert (=> bs!1144655 (= (= lt!1917838 lt!1917831) (= lambda!222407 lambda!222404))))

(assert (=> bs!1144649 (= (= lt!1917838 lt!1917817) (= lambda!222407 lambda!222403))))

(assert (=> bs!1144656 (= (= lt!1917838 lt!1917730) (= lambda!222407 lambda!222388))))

(assert (=> bs!1144656 (= (= lt!1917838 acc!1214) (= lambda!222407 lambda!222386))))

(assert (=> bs!1144657 (= (= lt!1917838 lt!1917786) (= lambda!222407 lambda!222396))))

(assert (=> b!4752933 true))

(declare-fun bs!1144658 () Bool)

(declare-fun d!1519651 () Bool)

(assert (= bs!1144658 (and d!1519651 b!4752908)))

(declare-fun lambda!222408 () Int)

(declare-fun lt!1917852 () ListMap!5553)

(assert (=> bs!1144658 (= (= lt!1917852 lt!1917460) (= lambda!222408 lambda!222393))))

(declare-fun bs!1144659 () Bool)

(assert (= bs!1144659 (and d!1519651 b!4752933)))

(assert (=> bs!1144659 (= (= lt!1917852 lt!1917459) (= lambda!222408 lambda!222406))))

(declare-fun bs!1144660 () Bool)

(assert (= bs!1144660 (and d!1519651 b!4752865)))

(assert (=> bs!1144660 (= (= lt!1917852 acc!1214) (= lambda!222408 lambda!222375))))

(declare-fun bs!1144661 () Bool)

(assert (= bs!1144661 (and d!1519651 d!1519579)))

(assert (=> bs!1144661 (= (= lt!1917852 lt!1917664) (= lambda!222408 lambda!222378))))

(assert (=> bs!1144659 (= (= lt!1917852 lt!1917838) (= lambda!222408 lambda!222407))))

(declare-fun bs!1144662 () Bool)

(assert (= bs!1144662 (and d!1519651 b!4752894)))

(assert (=> bs!1144662 (= (= lt!1917852 acc!1214) (= lambda!222408 lambda!222385))))

(assert (=> bs!1144660 (= (= lt!1917852 lt!1917650) (= lambda!222408 lambda!222376))))

(declare-fun bs!1144663 () Bool)

(assert (= bs!1144663 (and d!1519651 b!4752920)))

(assert (=> bs!1144663 (= (= lt!1917852 lt!1917457) (= lambda!222408 lambda!222402))))

(declare-fun bs!1144664 () Bool)

(assert (= bs!1144664 (and d!1519651 b!4752863)))

(assert (=> bs!1144664 (= (= lt!1917852 acc!1214) (= lambda!222408 lambda!222373))))

(declare-fun bs!1144665 () Bool)

(assert (= bs!1144665 (and d!1519651 d!1519627)))

(assert (=> bs!1144665 (= (= lt!1917852 lt!1917744) (= lambda!222408 lambda!222389))))

(declare-fun bs!1144666 () Bool)

(assert (= bs!1144666 (and d!1519651 b!4752918)))

(assert (=> bs!1144666 (= (= lt!1917852 lt!1917457) (= lambda!222408 lambda!222401))))

(assert (=> bs!1144658 (= (= lt!1917852 lt!1917772) (= lambda!222408 lambda!222395))))

(declare-fun bs!1144667 () Bool)

(assert (= bs!1144667 (and d!1519651 b!4752931)))

(assert (=> bs!1144667 (= (= lt!1917852 lt!1917459) (= lambda!222408 lambda!222405))))

(declare-fun bs!1144668 () Bool)

(assert (= bs!1144668 (and d!1519651 b!4752906)))

(assert (=> bs!1144668 (= (= lt!1917852 lt!1917460) (= lambda!222408 lambda!222392))))

(declare-fun bs!1144669 () Bool)

(assert (= bs!1144669 (and d!1519651 d!1519645)))

(assert (=> bs!1144669 (= (= lt!1917852 lt!1917831) (= lambda!222408 lambda!222404))))

(assert (=> bs!1144663 (= (= lt!1917852 lt!1917817) (= lambda!222408 lambda!222403))))

(declare-fun bs!1144670 () Bool)

(assert (= bs!1144670 (and d!1519651 b!4752896)))

(assert (=> bs!1144670 (= (= lt!1917852 lt!1917730) (= lambda!222408 lambda!222388))))

(assert (=> bs!1144670 (= (= lt!1917852 acc!1214) (= lambda!222408 lambda!222386))))

(declare-fun bs!1144671 () Bool)

(assert (= bs!1144671 (and d!1519651 d!1519633)))

(assert (=> bs!1144671 (= (= lt!1917852 lt!1917786) (= lambda!222408 lambda!222396))))

(assert (=> d!1519651 true))

(declare-fun c!811521 () Bool)

(declare-fun bm!333110 () Bool)

(declare-fun call!333117 () Bool)

(assert (=> bm!333110 (= call!333117 (forall!11766 (toList!6122 lt!1917459) (ite c!811521 lambda!222405 lambda!222407)))))

(declare-fun b!4752929 () Bool)

(declare-fun e!2964949 () Bool)

(assert (=> b!4752929 (= e!2964949 (forall!11766 (toList!6122 lt!1917459) lambda!222407))))

(declare-fun e!2964951 () Bool)

(assert (=> d!1519651 e!2964951))

(declare-fun res!2015747 () Bool)

(assert (=> d!1519651 (=> (not res!2015747) (not e!2964951))))

(assert (=> d!1519651 (= res!2015747 (forall!11766 (t!360556 l!14304) lambda!222408))))

(declare-fun e!2964950 () ListMap!5553)

(assert (=> d!1519651 (= lt!1917852 e!2964950)))

(assert (=> d!1519651 (= c!811521 ((_ is Nil!53094) (t!360556 l!14304)))))

(assert (=> d!1519651 (noDuplicateKeys!2154 (t!360556 l!14304))))

(assert (=> d!1519651 (= (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917459) lt!1917852)))

(declare-fun b!4752930 () Bool)

(assert (=> b!4752930 (= e!2964951 (invariantList!1598 (toList!6122 lt!1917852)))))

(assert (=> b!4752931 (= e!2964950 lt!1917459)))

(declare-fun lt!1917848 () Unit!136402)

(declare-fun call!333116 () Unit!136402)

(assert (=> b!4752931 (= lt!1917848 call!333116)))

(declare-fun call!333115 () Bool)

(assert (=> b!4752931 call!333115))

(declare-fun lt!1917853 () Unit!136402)

(assert (=> b!4752931 (= lt!1917853 lt!1917848)))

(assert (=> b!4752931 call!333117))

(declare-fun lt!1917842 () Unit!136402)

(declare-fun Unit!136501 () Unit!136402)

(assert (=> b!4752931 (= lt!1917842 Unit!136501)))

(declare-fun bm!333111 () Bool)

(declare-fun lt!1917843 () ListMap!5553)

(assert (=> bm!333111 (= call!333115 (forall!11766 (ite c!811521 (toList!6122 lt!1917459) (toList!6122 lt!1917843)) (ite c!811521 lambda!222405 lambda!222407)))))

(declare-fun b!4752932 () Bool)

(declare-fun res!2015748 () Bool)

(assert (=> b!4752932 (=> (not res!2015748) (not e!2964951))))

(assert (=> b!4752932 (= res!2015748 (forall!11766 (toList!6122 lt!1917459) lambda!222408))))

(assert (=> b!4752933 (= e!2964950 lt!1917838)))

(assert (=> b!4752933 (= lt!1917843 (+!2388 lt!1917459 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752933 (= lt!1917838 (addToMapMapFromBucket!1578 (t!360556 (t!360556 l!14304)) (+!2388 lt!1917459 (h!59491 (t!360556 l!14304)))))))

(declare-fun lt!1917836 () Unit!136402)

(assert (=> b!4752933 (= lt!1917836 call!333116)))

(assert (=> b!4752933 (forall!11766 (toList!6122 lt!1917459) lambda!222406)))

(declare-fun lt!1917850 () Unit!136402)

(assert (=> b!4752933 (= lt!1917850 lt!1917836)))

(assert (=> b!4752933 call!333115))

(declare-fun lt!1917835 () Unit!136402)

(declare-fun Unit!136504 () Unit!136402)

(assert (=> b!4752933 (= lt!1917835 Unit!136504)))

(assert (=> b!4752933 (forall!11766 (t!360556 (t!360556 l!14304)) lambda!222407)))

(declare-fun lt!1917845 () Unit!136402)

(declare-fun Unit!136505 () Unit!136402)

(assert (=> b!4752933 (= lt!1917845 Unit!136505)))

(declare-fun lt!1917841 () Unit!136402)

(declare-fun Unit!136506 () Unit!136402)

(assert (=> b!4752933 (= lt!1917841 Unit!136506)))

(declare-fun lt!1917847 () Unit!136402)

(assert (=> b!4752933 (= lt!1917847 (forallContained!3792 (toList!6122 lt!1917843) lambda!222407 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752933 (contains!16520 lt!1917843 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917851 () Unit!136402)

(declare-fun Unit!136507 () Unit!136402)

(assert (=> b!4752933 (= lt!1917851 Unit!136507)))

(assert (=> b!4752933 (contains!16520 lt!1917838 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917849 () Unit!136402)

(declare-fun Unit!136508 () Unit!136402)

(assert (=> b!4752933 (= lt!1917849 Unit!136508)))

(assert (=> b!4752933 (forall!11766 (t!360556 l!14304) lambda!222407)))

(declare-fun lt!1917840 () Unit!136402)

(declare-fun Unit!136509 () Unit!136402)

(assert (=> b!4752933 (= lt!1917840 Unit!136509)))

(assert (=> b!4752933 (forall!11766 (toList!6122 lt!1917843) lambda!222407)))

(declare-fun lt!1917846 () Unit!136402)

(declare-fun Unit!136510 () Unit!136402)

(assert (=> b!4752933 (= lt!1917846 Unit!136510)))

(declare-fun lt!1917839 () Unit!136402)

(declare-fun Unit!136511 () Unit!136402)

(assert (=> b!4752933 (= lt!1917839 Unit!136511)))

(declare-fun lt!1917844 () Unit!136402)

(assert (=> b!4752933 (= lt!1917844 (addForallContainsKeyThenBeforeAdding!880 lt!1917459 lt!1917838 (_1!30728 (h!59491 (t!360556 l!14304))) (_2!30728 (h!59491 (t!360556 l!14304)))))))

(assert (=> b!4752933 call!333117))

(declare-fun lt!1917837 () Unit!136402)

(assert (=> b!4752933 (= lt!1917837 lt!1917844)))

(assert (=> b!4752933 (forall!11766 (toList!6122 lt!1917459) lambda!222407)))

(declare-fun lt!1917855 () Unit!136402)

(declare-fun Unit!136512 () Unit!136402)

(assert (=> b!4752933 (= lt!1917855 Unit!136512)))

(declare-fun res!2015749 () Bool)

(assert (=> b!4752933 (= res!2015749 (forall!11766 (t!360556 l!14304) lambda!222407))))

(assert (=> b!4752933 (=> (not res!2015749) (not e!2964949))))

(assert (=> b!4752933 e!2964949))

(declare-fun lt!1917854 () Unit!136402)

(declare-fun Unit!136513 () Unit!136402)

(assert (=> b!4752933 (= lt!1917854 Unit!136513)))

(declare-fun bm!333112 () Bool)

(assert (=> bm!333112 (= call!333116 (lemmaContainsAllItsOwnKeys!881 lt!1917459))))

(assert (= (and d!1519651 c!811521) b!4752931))

(assert (= (and d!1519651 (not c!811521)) b!4752933))

(assert (= (and b!4752933 res!2015749) b!4752929))

(assert (= (or b!4752931 b!4752933) bm!333112))

(assert (= (or b!4752931 b!4752933) bm!333111))

(assert (= (or b!4752931 b!4752933) bm!333110))

(assert (= (and d!1519651 res!2015747) b!4752932))

(assert (= (and b!4752932 res!2015748) b!4752930))

(declare-fun m!5718493 () Bool)

(assert (=> b!4752930 m!5718493))

(declare-fun m!5718495 () Bool)

(assert (=> b!4752929 m!5718495))

(declare-fun m!5718497 () Bool)

(assert (=> d!1519651 m!5718497))

(assert (=> d!1519651 m!5717961))

(declare-fun m!5718499 () Bool)

(assert (=> bm!333112 m!5718499))

(declare-fun m!5718501 () Bool)

(assert (=> bm!333111 m!5718501))

(declare-fun m!5718503 () Bool)

(assert (=> b!4752933 m!5718503))

(declare-fun m!5718505 () Bool)

(assert (=> b!4752933 m!5718505))

(declare-fun m!5718507 () Bool)

(assert (=> b!4752933 m!5718507))

(assert (=> b!4752933 m!5718495))

(declare-fun m!5718509 () Bool)

(assert (=> b!4752933 m!5718509))

(declare-fun m!5718511 () Bool)

(assert (=> b!4752933 m!5718511))

(declare-fun m!5718513 () Bool)

(assert (=> b!4752933 m!5718513))

(assert (=> b!4752933 m!5718509))

(declare-fun m!5718515 () Bool)

(assert (=> b!4752933 m!5718515))

(declare-fun m!5718517 () Bool)

(assert (=> b!4752933 m!5718517))

(assert (=> b!4752933 m!5718505))

(declare-fun m!5718519 () Bool)

(assert (=> b!4752933 m!5718519))

(declare-fun m!5718521 () Bool)

(assert (=> b!4752933 m!5718521))

(declare-fun m!5718523 () Bool)

(assert (=> b!4752932 m!5718523))

(declare-fun m!5718525 () Bool)

(assert (=> bm!333110 m!5718525))

(assert (=> b!4752802 d!1519651))

(declare-fun d!1519653 () Bool)

(declare-fun e!2964952 () Bool)

(assert (=> d!1519653 e!2964952))

(declare-fun res!2015750 () Bool)

(assert (=> d!1519653 (=> (not res!2015750) (not e!2964952))))

(declare-fun lt!1917856 () ListMap!5553)

(assert (=> d!1519653 (= res!2015750 (contains!16520 lt!1917856 (_1!30728 (h!59491 l!14304))))))

(declare-fun lt!1917859 () List!53218)

(assert (=> d!1519653 (= lt!1917856 (ListMap!5554 lt!1917859))))

(declare-fun lt!1917857 () Unit!136402)

(declare-fun lt!1917858 () Unit!136402)

(assert (=> d!1519653 (= lt!1917857 lt!1917858)))

(assert (=> d!1519653 (= (getValueByKey!2085 lt!1917859 (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519653 (= lt!1917858 (lemmaContainsTupThenGetReturnValue!1162 lt!1917859 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519653 (= lt!1917859 (insertNoDuplicatedKeys!670 (toList!6122 lt!1917454) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519653 (= (+!2388 lt!1917454 (h!59491 l!14304)) lt!1917856)))

(declare-fun b!4752934 () Bool)

(declare-fun res!2015751 () Bool)

(assert (=> b!4752934 (=> (not res!2015751) (not e!2964952))))

(assert (=> b!4752934 (= res!2015751 (= (getValueByKey!2085 (toList!6122 lt!1917856) (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304)))))))

(declare-fun b!4752935 () Bool)

(assert (=> b!4752935 (= e!2964952 (contains!16521 (toList!6122 lt!1917856) (h!59491 l!14304)))))

(assert (= (and d!1519653 res!2015750) b!4752934))

(assert (= (and b!4752934 res!2015751) b!4752935))

(declare-fun m!5718527 () Bool)

(assert (=> d!1519653 m!5718527))

(declare-fun m!5718529 () Bool)

(assert (=> d!1519653 m!5718529))

(declare-fun m!5718531 () Bool)

(assert (=> d!1519653 m!5718531))

(declare-fun m!5718533 () Bool)

(assert (=> d!1519653 m!5718533))

(declare-fun m!5718535 () Bool)

(assert (=> b!4752934 m!5718535))

(declare-fun m!5718537 () Bool)

(assert (=> b!4752935 m!5718537))

(assert (=> b!4752802 d!1519653))

(declare-fun d!1519655 () Bool)

(assert (=> d!1519655 (= (eq!1223 lt!1917464 (+!2388 lt!1917461 t!14174)) (= (content!9535 (toList!6122 lt!1917464)) (content!9535 (toList!6122 (+!2388 lt!1917461 t!14174)))))))

(declare-fun bs!1144672 () Bool)

(assert (= bs!1144672 d!1519655))

(declare-fun m!5718539 () Bool)

(assert (=> bs!1144672 m!5718539))

(declare-fun m!5718541 () Bool)

(assert (=> bs!1144672 m!5718541))

(assert (=> b!4752802 d!1519655))

(declare-fun bs!1144673 () Bool)

(declare-fun b!4752938 () Bool)

(assert (= bs!1144673 (and b!4752938 b!4752908)))

(declare-fun lambda!222409 () Int)

(assert (=> bs!1144673 (= (= lt!1917454 lt!1917460) (= lambda!222409 lambda!222393))))

(declare-fun bs!1144674 () Bool)

(assert (= bs!1144674 (and b!4752938 b!4752933)))

(assert (=> bs!1144674 (= (= lt!1917454 lt!1917459) (= lambda!222409 lambda!222406))))

(declare-fun bs!1144675 () Bool)

(assert (= bs!1144675 (and b!4752938 b!4752865)))

(assert (=> bs!1144675 (= (= lt!1917454 acc!1214) (= lambda!222409 lambda!222375))))

(declare-fun bs!1144676 () Bool)

(assert (= bs!1144676 (and b!4752938 d!1519579)))

(assert (=> bs!1144676 (= (= lt!1917454 lt!1917664) (= lambda!222409 lambda!222378))))

(assert (=> bs!1144674 (= (= lt!1917454 lt!1917838) (= lambda!222409 lambda!222407))))

(declare-fun bs!1144677 () Bool)

(assert (= bs!1144677 (and b!4752938 b!4752894)))

(assert (=> bs!1144677 (= (= lt!1917454 acc!1214) (= lambda!222409 lambda!222385))))

(assert (=> bs!1144675 (= (= lt!1917454 lt!1917650) (= lambda!222409 lambda!222376))))

(declare-fun bs!1144678 () Bool)

(assert (= bs!1144678 (and b!4752938 b!4752920)))

(assert (=> bs!1144678 (= (= lt!1917454 lt!1917457) (= lambda!222409 lambda!222402))))

(declare-fun bs!1144679 () Bool)

(assert (= bs!1144679 (and b!4752938 b!4752863)))

(assert (=> bs!1144679 (= (= lt!1917454 acc!1214) (= lambda!222409 lambda!222373))))

(declare-fun bs!1144680 () Bool)

(assert (= bs!1144680 (and b!4752938 d!1519627)))

(assert (=> bs!1144680 (= (= lt!1917454 lt!1917744) (= lambda!222409 lambda!222389))))

(assert (=> bs!1144673 (= (= lt!1917454 lt!1917772) (= lambda!222409 lambda!222395))))

(declare-fun bs!1144681 () Bool)

(assert (= bs!1144681 (and b!4752938 b!4752931)))

(assert (=> bs!1144681 (= (= lt!1917454 lt!1917459) (= lambda!222409 lambda!222405))))

(declare-fun bs!1144682 () Bool)

(assert (= bs!1144682 (and b!4752938 b!4752906)))

(assert (=> bs!1144682 (= (= lt!1917454 lt!1917460) (= lambda!222409 lambda!222392))))

(declare-fun bs!1144683 () Bool)

(assert (= bs!1144683 (and b!4752938 d!1519645)))

(assert (=> bs!1144683 (= (= lt!1917454 lt!1917831) (= lambda!222409 lambda!222404))))

(assert (=> bs!1144678 (= (= lt!1917454 lt!1917817) (= lambda!222409 lambda!222403))))

(declare-fun bs!1144684 () Bool)

(assert (= bs!1144684 (and b!4752938 b!4752896)))

(assert (=> bs!1144684 (= (= lt!1917454 lt!1917730) (= lambda!222409 lambda!222388))))

(assert (=> bs!1144684 (= (= lt!1917454 acc!1214) (= lambda!222409 lambda!222386))))

(declare-fun bs!1144685 () Bool)

(assert (= bs!1144685 (and b!4752938 d!1519633)))

(assert (=> bs!1144685 (= (= lt!1917454 lt!1917786) (= lambda!222409 lambda!222396))))

(declare-fun bs!1144686 () Bool)

(assert (= bs!1144686 (and b!4752938 b!4752918)))

(assert (=> bs!1144686 (= (= lt!1917454 lt!1917457) (= lambda!222409 lambda!222401))))

(declare-fun bs!1144687 () Bool)

(assert (= bs!1144687 (and b!4752938 d!1519651)))

(assert (=> bs!1144687 (= (= lt!1917454 lt!1917852) (= lambda!222409 lambda!222408))))

(assert (=> b!4752938 true))

(declare-fun bs!1144688 () Bool)

(declare-fun b!4752940 () Bool)

(assert (= bs!1144688 (and b!4752940 b!4752908)))

(declare-fun lambda!222410 () Int)

(assert (=> bs!1144688 (= (= lt!1917454 lt!1917460) (= lambda!222410 lambda!222393))))

(declare-fun bs!1144689 () Bool)

(assert (= bs!1144689 (and b!4752940 b!4752938)))

(assert (=> bs!1144689 (= lambda!222410 lambda!222409)))

(declare-fun bs!1144690 () Bool)

(assert (= bs!1144690 (and b!4752940 b!4752933)))

(assert (=> bs!1144690 (= (= lt!1917454 lt!1917459) (= lambda!222410 lambda!222406))))

(declare-fun bs!1144691 () Bool)

(assert (= bs!1144691 (and b!4752940 b!4752865)))

(assert (=> bs!1144691 (= (= lt!1917454 acc!1214) (= lambda!222410 lambda!222375))))

(declare-fun bs!1144692 () Bool)

(assert (= bs!1144692 (and b!4752940 d!1519579)))

(assert (=> bs!1144692 (= (= lt!1917454 lt!1917664) (= lambda!222410 lambda!222378))))

(assert (=> bs!1144690 (= (= lt!1917454 lt!1917838) (= lambda!222410 lambda!222407))))

(declare-fun bs!1144693 () Bool)

(assert (= bs!1144693 (and b!4752940 b!4752894)))

(assert (=> bs!1144693 (= (= lt!1917454 acc!1214) (= lambda!222410 lambda!222385))))

(assert (=> bs!1144691 (= (= lt!1917454 lt!1917650) (= lambda!222410 lambda!222376))))

(declare-fun bs!1144694 () Bool)

(assert (= bs!1144694 (and b!4752940 b!4752920)))

(assert (=> bs!1144694 (= (= lt!1917454 lt!1917457) (= lambda!222410 lambda!222402))))

(declare-fun bs!1144695 () Bool)

(assert (= bs!1144695 (and b!4752940 b!4752863)))

(assert (=> bs!1144695 (= (= lt!1917454 acc!1214) (= lambda!222410 lambda!222373))))

(declare-fun bs!1144696 () Bool)

(assert (= bs!1144696 (and b!4752940 d!1519627)))

(assert (=> bs!1144696 (= (= lt!1917454 lt!1917744) (= lambda!222410 lambda!222389))))

(assert (=> bs!1144688 (= (= lt!1917454 lt!1917772) (= lambda!222410 lambda!222395))))

(declare-fun bs!1144697 () Bool)

(assert (= bs!1144697 (and b!4752940 b!4752931)))

(assert (=> bs!1144697 (= (= lt!1917454 lt!1917459) (= lambda!222410 lambda!222405))))

(declare-fun bs!1144698 () Bool)

(assert (= bs!1144698 (and b!4752940 b!4752906)))

(assert (=> bs!1144698 (= (= lt!1917454 lt!1917460) (= lambda!222410 lambda!222392))))

(declare-fun bs!1144699 () Bool)

(assert (= bs!1144699 (and b!4752940 d!1519645)))

(assert (=> bs!1144699 (= (= lt!1917454 lt!1917831) (= lambda!222410 lambda!222404))))

(assert (=> bs!1144694 (= (= lt!1917454 lt!1917817) (= lambda!222410 lambda!222403))))

(declare-fun bs!1144700 () Bool)

(assert (= bs!1144700 (and b!4752940 b!4752896)))

(assert (=> bs!1144700 (= (= lt!1917454 lt!1917730) (= lambda!222410 lambda!222388))))

(assert (=> bs!1144700 (= (= lt!1917454 acc!1214) (= lambda!222410 lambda!222386))))

(declare-fun bs!1144701 () Bool)

(assert (= bs!1144701 (and b!4752940 d!1519633)))

(assert (=> bs!1144701 (= (= lt!1917454 lt!1917786) (= lambda!222410 lambda!222396))))

(declare-fun bs!1144702 () Bool)

(assert (= bs!1144702 (and b!4752940 b!4752918)))

(assert (=> bs!1144702 (= (= lt!1917454 lt!1917457) (= lambda!222410 lambda!222401))))

(declare-fun bs!1144703 () Bool)

(assert (= bs!1144703 (and b!4752940 d!1519651)))

(assert (=> bs!1144703 (= (= lt!1917454 lt!1917852) (= lambda!222410 lambda!222408))))

(assert (=> b!4752940 true))

(declare-fun lambda!222411 () Int)

(declare-fun lt!1917863 () ListMap!5553)

(assert (=> bs!1144688 (= (= lt!1917863 lt!1917460) (= lambda!222411 lambda!222393))))

(assert (=> bs!1144689 (= (= lt!1917863 lt!1917454) (= lambda!222411 lambda!222409))))

(assert (=> bs!1144690 (= (= lt!1917863 lt!1917459) (= lambda!222411 lambda!222406))))

(assert (=> bs!1144691 (= (= lt!1917863 acc!1214) (= lambda!222411 lambda!222375))))

(assert (=> bs!1144692 (= (= lt!1917863 lt!1917664) (= lambda!222411 lambda!222378))))

(assert (=> bs!1144690 (= (= lt!1917863 lt!1917838) (= lambda!222411 lambda!222407))))

(assert (=> bs!1144693 (= (= lt!1917863 acc!1214) (= lambda!222411 lambda!222385))))

(assert (=> bs!1144691 (= (= lt!1917863 lt!1917650) (= lambda!222411 lambda!222376))))

(assert (=> bs!1144694 (= (= lt!1917863 lt!1917457) (= lambda!222411 lambda!222402))))

(assert (=> bs!1144695 (= (= lt!1917863 acc!1214) (= lambda!222411 lambda!222373))))

(assert (=> bs!1144696 (= (= lt!1917863 lt!1917744) (= lambda!222411 lambda!222389))))

(assert (=> bs!1144688 (= (= lt!1917863 lt!1917772) (= lambda!222411 lambda!222395))))

(assert (=> bs!1144697 (= (= lt!1917863 lt!1917459) (= lambda!222411 lambda!222405))))

(assert (=> bs!1144698 (= (= lt!1917863 lt!1917460) (= lambda!222411 lambda!222392))))

(assert (=> bs!1144699 (= (= lt!1917863 lt!1917831) (= lambda!222411 lambda!222404))))

(assert (=> b!4752940 (= (= lt!1917863 lt!1917454) (= lambda!222411 lambda!222410))))

(assert (=> bs!1144694 (= (= lt!1917863 lt!1917817) (= lambda!222411 lambda!222403))))

(assert (=> bs!1144700 (= (= lt!1917863 lt!1917730) (= lambda!222411 lambda!222388))))

(assert (=> bs!1144700 (= (= lt!1917863 acc!1214) (= lambda!222411 lambda!222386))))

(assert (=> bs!1144701 (= (= lt!1917863 lt!1917786) (= lambda!222411 lambda!222396))))

(assert (=> bs!1144702 (= (= lt!1917863 lt!1917457) (= lambda!222411 lambda!222401))))

(assert (=> bs!1144703 (= (= lt!1917863 lt!1917852) (= lambda!222411 lambda!222408))))

(assert (=> b!4752940 true))

(declare-fun bs!1144704 () Bool)

(declare-fun d!1519657 () Bool)

(assert (= bs!1144704 (and d!1519657 b!4752908)))

(declare-fun lambda!222412 () Int)

(declare-fun lt!1917877 () ListMap!5553)

(assert (=> bs!1144704 (= (= lt!1917877 lt!1917460) (= lambda!222412 lambda!222393))))

(declare-fun bs!1144705 () Bool)

(assert (= bs!1144705 (and d!1519657 b!4752938)))

(assert (=> bs!1144705 (= (= lt!1917877 lt!1917454) (= lambda!222412 lambda!222409))))

(declare-fun bs!1144706 () Bool)

(assert (= bs!1144706 (and d!1519657 b!4752933)))

(assert (=> bs!1144706 (= (= lt!1917877 lt!1917459) (= lambda!222412 lambda!222406))))

(declare-fun bs!1144707 () Bool)

(assert (= bs!1144707 (and d!1519657 b!4752865)))

(assert (=> bs!1144707 (= (= lt!1917877 acc!1214) (= lambda!222412 lambda!222375))))

(declare-fun bs!1144708 () Bool)

(assert (= bs!1144708 (and d!1519657 d!1519579)))

(assert (=> bs!1144708 (= (= lt!1917877 lt!1917664) (= lambda!222412 lambda!222378))))

(assert (=> bs!1144706 (= (= lt!1917877 lt!1917838) (= lambda!222412 lambda!222407))))

(declare-fun bs!1144709 () Bool)

(assert (= bs!1144709 (and d!1519657 b!4752894)))

(assert (=> bs!1144709 (= (= lt!1917877 acc!1214) (= lambda!222412 lambda!222385))))

(assert (=> bs!1144707 (= (= lt!1917877 lt!1917650) (= lambda!222412 lambda!222376))))

(declare-fun bs!1144710 () Bool)

(assert (= bs!1144710 (and d!1519657 b!4752920)))

(assert (=> bs!1144710 (= (= lt!1917877 lt!1917457) (= lambda!222412 lambda!222402))))

(declare-fun bs!1144711 () Bool)

(assert (= bs!1144711 (and d!1519657 b!4752863)))

(assert (=> bs!1144711 (= (= lt!1917877 acc!1214) (= lambda!222412 lambda!222373))))

(declare-fun bs!1144712 () Bool)

(assert (= bs!1144712 (and d!1519657 d!1519627)))

(assert (=> bs!1144712 (= (= lt!1917877 lt!1917744) (= lambda!222412 lambda!222389))))

(assert (=> bs!1144704 (= (= lt!1917877 lt!1917772) (= lambda!222412 lambda!222395))))

(declare-fun bs!1144713 () Bool)

(assert (= bs!1144713 (and d!1519657 b!4752931)))

(assert (=> bs!1144713 (= (= lt!1917877 lt!1917459) (= lambda!222412 lambda!222405))))

(declare-fun bs!1144714 () Bool)

(assert (= bs!1144714 (and d!1519657 b!4752940)))

(assert (=> bs!1144714 (= (= lt!1917877 lt!1917863) (= lambda!222412 lambda!222411))))

(declare-fun bs!1144715 () Bool)

(assert (= bs!1144715 (and d!1519657 b!4752906)))

(assert (=> bs!1144715 (= (= lt!1917877 lt!1917460) (= lambda!222412 lambda!222392))))

(declare-fun bs!1144716 () Bool)

(assert (= bs!1144716 (and d!1519657 d!1519645)))

(assert (=> bs!1144716 (= (= lt!1917877 lt!1917831) (= lambda!222412 lambda!222404))))

(assert (=> bs!1144714 (= (= lt!1917877 lt!1917454) (= lambda!222412 lambda!222410))))

(assert (=> bs!1144710 (= (= lt!1917877 lt!1917817) (= lambda!222412 lambda!222403))))

(declare-fun bs!1144717 () Bool)

(assert (= bs!1144717 (and d!1519657 b!4752896)))

(assert (=> bs!1144717 (= (= lt!1917877 lt!1917730) (= lambda!222412 lambda!222388))))

(assert (=> bs!1144717 (= (= lt!1917877 acc!1214) (= lambda!222412 lambda!222386))))

(declare-fun bs!1144718 () Bool)

(assert (= bs!1144718 (and d!1519657 d!1519633)))

(assert (=> bs!1144718 (= (= lt!1917877 lt!1917786) (= lambda!222412 lambda!222396))))

(declare-fun bs!1144719 () Bool)

(assert (= bs!1144719 (and d!1519657 b!4752918)))

(assert (=> bs!1144719 (= (= lt!1917877 lt!1917457) (= lambda!222412 lambda!222401))))

(declare-fun bs!1144720 () Bool)

(assert (= bs!1144720 (and d!1519657 d!1519651)))

(assert (=> bs!1144720 (= (= lt!1917877 lt!1917852) (= lambda!222412 lambda!222408))))

(assert (=> d!1519657 true))

(declare-fun c!811522 () Bool)

(declare-fun bm!333113 () Bool)

(declare-fun call!333120 () Bool)

(assert (=> bm!333113 (= call!333120 (forall!11766 (toList!6122 lt!1917454) (ite c!811522 lambda!222409 lambda!222411)))))

(declare-fun b!4752936 () Bool)

(declare-fun e!2964953 () Bool)

(assert (=> b!4752936 (= e!2964953 (forall!11766 (toList!6122 lt!1917454) lambda!222411))))

(declare-fun e!2964955 () Bool)

(assert (=> d!1519657 e!2964955))

(declare-fun res!2015752 () Bool)

(assert (=> d!1519657 (=> (not res!2015752) (not e!2964955))))

(assert (=> d!1519657 (= res!2015752 (forall!11766 l!14304 lambda!222412))))

(declare-fun e!2964954 () ListMap!5553)

(assert (=> d!1519657 (= lt!1917877 e!2964954)))

(assert (=> d!1519657 (= c!811522 ((_ is Nil!53094) l!14304))))

(assert (=> d!1519657 (noDuplicateKeys!2154 l!14304)))

(assert (=> d!1519657 (= (addToMapMapFromBucket!1578 l!14304 lt!1917454) lt!1917877)))

(declare-fun b!4752937 () Bool)

(assert (=> b!4752937 (= e!2964955 (invariantList!1598 (toList!6122 lt!1917877)))))

(assert (=> b!4752938 (= e!2964954 lt!1917454)))

(declare-fun lt!1917873 () Unit!136402)

(declare-fun call!333119 () Unit!136402)

(assert (=> b!4752938 (= lt!1917873 call!333119)))

(declare-fun call!333118 () Bool)

(assert (=> b!4752938 call!333118))

(declare-fun lt!1917878 () Unit!136402)

(assert (=> b!4752938 (= lt!1917878 lt!1917873)))

(assert (=> b!4752938 call!333120))

(declare-fun lt!1917867 () Unit!136402)

(declare-fun Unit!136514 () Unit!136402)

(assert (=> b!4752938 (= lt!1917867 Unit!136514)))

(declare-fun bm!333114 () Bool)

(declare-fun lt!1917868 () ListMap!5553)

(assert (=> bm!333114 (= call!333118 (forall!11766 (ite c!811522 (toList!6122 lt!1917454) (toList!6122 lt!1917868)) (ite c!811522 lambda!222409 lambda!222411)))))

(declare-fun b!4752939 () Bool)

(declare-fun res!2015753 () Bool)

(assert (=> b!4752939 (=> (not res!2015753) (not e!2964955))))

(assert (=> b!4752939 (= res!2015753 (forall!11766 (toList!6122 lt!1917454) lambda!222412))))

(assert (=> b!4752940 (= e!2964954 lt!1917863)))

(assert (=> b!4752940 (= lt!1917868 (+!2388 lt!1917454 (h!59491 l!14304)))))

(assert (=> b!4752940 (= lt!1917863 (addToMapMapFromBucket!1578 (t!360556 l!14304) (+!2388 lt!1917454 (h!59491 l!14304))))))

(declare-fun lt!1917861 () Unit!136402)

(assert (=> b!4752940 (= lt!1917861 call!333119)))

(assert (=> b!4752940 (forall!11766 (toList!6122 lt!1917454) lambda!222410)))

(declare-fun lt!1917875 () Unit!136402)

(assert (=> b!4752940 (= lt!1917875 lt!1917861)))

(assert (=> b!4752940 call!333118))

(declare-fun lt!1917860 () Unit!136402)

(declare-fun Unit!136518 () Unit!136402)

(assert (=> b!4752940 (= lt!1917860 Unit!136518)))

(assert (=> b!4752940 (forall!11766 (t!360556 l!14304) lambda!222411)))

(declare-fun lt!1917870 () Unit!136402)

(declare-fun Unit!136520 () Unit!136402)

(assert (=> b!4752940 (= lt!1917870 Unit!136520)))

(declare-fun lt!1917866 () Unit!136402)

(declare-fun Unit!136521 () Unit!136402)

(assert (=> b!4752940 (= lt!1917866 Unit!136521)))

(declare-fun lt!1917872 () Unit!136402)

(assert (=> b!4752940 (= lt!1917872 (forallContained!3792 (toList!6122 lt!1917868) lambda!222411 (h!59491 l!14304)))))

(assert (=> b!4752940 (contains!16520 lt!1917868 (_1!30728 (h!59491 l!14304)))))

(declare-fun lt!1917876 () Unit!136402)

(declare-fun Unit!136523 () Unit!136402)

(assert (=> b!4752940 (= lt!1917876 Unit!136523)))

(assert (=> b!4752940 (contains!16520 lt!1917863 (_1!30728 (h!59491 l!14304)))))

(declare-fun lt!1917874 () Unit!136402)

(declare-fun Unit!136525 () Unit!136402)

(assert (=> b!4752940 (= lt!1917874 Unit!136525)))

(assert (=> b!4752940 (forall!11766 l!14304 lambda!222411)))

(declare-fun lt!1917865 () Unit!136402)

(declare-fun Unit!136528 () Unit!136402)

(assert (=> b!4752940 (= lt!1917865 Unit!136528)))

(assert (=> b!4752940 (forall!11766 (toList!6122 lt!1917868) lambda!222411)))

(declare-fun lt!1917871 () Unit!136402)

(declare-fun Unit!136529 () Unit!136402)

(assert (=> b!4752940 (= lt!1917871 Unit!136529)))

(declare-fun lt!1917864 () Unit!136402)

(declare-fun Unit!136530 () Unit!136402)

(assert (=> b!4752940 (= lt!1917864 Unit!136530)))

(declare-fun lt!1917869 () Unit!136402)

(assert (=> b!4752940 (= lt!1917869 (addForallContainsKeyThenBeforeAdding!880 lt!1917454 lt!1917863 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> b!4752940 call!333120))

(declare-fun lt!1917862 () Unit!136402)

(assert (=> b!4752940 (= lt!1917862 lt!1917869)))

(assert (=> b!4752940 (forall!11766 (toList!6122 lt!1917454) lambda!222411)))

(declare-fun lt!1917880 () Unit!136402)

(declare-fun Unit!136532 () Unit!136402)

(assert (=> b!4752940 (= lt!1917880 Unit!136532)))

(declare-fun res!2015754 () Bool)

(assert (=> b!4752940 (= res!2015754 (forall!11766 l!14304 lambda!222411))))

(assert (=> b!4752940 (=> (not res!2015754) (not e!2964953))))

(assert (=> b!4752940 e!2964953))

(declare-fun lt!1917879 () Unit!136402)

(declare-fun Unit!136534 () Unit!136402)

(assert (=> b!4752940 (= lt!1917879 Unit!136534)))

(declare-fun bm!333115 () Bool)

(assert (=> bm!333115 (= call!333119 (lemmaContainsAllItsOwnKeys!881 lt!1917454))))

(assert (= (and d!1519657 c!811522) b!4752938))

(assert (= (and d!1519657 (not c!811522)) b!4752940))

(assert (= (and b!4752940 res!2015754) b!4752936))

(assert (= (or b!4752938 b!4752940) bm!333115))

(assert (= (or b!4752938 b!4752940) bm!333114))

(assert (= (or b!4752938 b!4752940) bm!333113))

(assert (= (and d!1519657 res!2015752) b!4752939))

(assert (= (and b!4752939 res!2015753) b!4752937))

(declare-fun m!5718543 () Bool)

(assert (=> b!4752937 m!5718543))

(declare-fun m!5718545 () Bool)

(assert (=> b!4752936 m!5718545))

(declare-fun m!5718547 () Bool)

(assert (=> d!1519657 m!5718547))

(assert (=> d!1519657 m!5717963))

(declare-fun m!5718549 () Bool)

(assert (=> bm!333115 m!5718549))

(declare-fun m!5718551 () Bool)

(assert (=> bm!333114 m!5718551))

(declare-fun m!5718553 () Bool)

(assert (=> b!4752940 m!5718553))

(assert (=> b!4752940 m!5717951))

(declare-fun m!5718555 () Bool)

(assert (=> b!4752940 m!5718555))

(assert (=> b!4752940 m!5718545))

(declare-fun m!5718557 () Bool)

(assert (=> b!4752940 m!5718557))

(declare-fun m!5718559 () Bool)

(assert (=> b!4752940 m!5718559))

(declare-fun m!5718561 () Bool)

(assert (=> b!4752940 m!5718561))

(assert (=> b!4752940 m!5718557))

(declare-fun m!5718563 () Bool)

(assert (=> b!4752940 m!5718563))

(declare-fun m!5718565 () Bool)

(assert (=> b!4752940 m!5718565))

(assert (=> b!4752940 m!5717951))

(declare-fun m!5718567 () Bool)

(assert (=> b!4752940 m!5718567))

(declare-fun m!5718569 () Bool)

(assert (=> b!4752940 m!5718569))

(declare-fun m!5718571 () Bool)

(assert (=> b!4752939 m!5718571))

(declare-fun m!5718573 () Bool)

(assert (=> bm!333113 m!5718573))

(assert (=> b!4752802 d!1519657))

(declare-fun d!1519659 () Bool)

(assert (=> d!1519659 (eq!1223 (+!2388 (+!2388 acc!1214 (tuple2!54869 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)))) (tuple2!54869 (_1!30728 t!14174) (_2!30728 t!14174))) (+!2388 (+!2388 acc!1214 (tuple2!54869 (_1!30728 t!14174) (_2!30728 t!14174))) (tuple2!54869 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)))))))

(declare-fun lt!1917883 () Unit!136402)

(declare-fun choose!33838 (ListMap!5553 K!14535 V!14781 K!14535 V!14781) Unit!136402)

(assert (=> d!1519659 (= lt!1917883 (choose!33838 acc!1214 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)) (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519659 (not (= (_1!30728 (h!59491 l!14304)) (_1!30728 t!14174)))))

(assert (=> d!1519659 (= (addCommutativeForDiffKeys!24 acc!1214 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)) (_1!30728 t!14174) (_2!30728 t!14174)) lt!1917883)))

(declare-fun bs!1144721 () Bool)

(assert (= bs!1144721 d!1519659))

(declare-fun m!5718575 () Bool)

(assert (=> bs!1144721 m!5718575))

(declare-fun m!5718577 () Bool)

(assert (=> bs!1144721 m!5718577))

(declare-fun m!5718579 () Bool)

(assert (=> bs!1144721 m!5718579))

(assert (=> bs!1144721 m!5718575))

(declare-fun m!5718581 () Bool)

(assert (=> bs!1144721 m!5718581))

(declare-fun m!5718583 () Bool)

(assert (=> bs!1144721 m!5718583))

(assert (=> bs!1144721 m!5718581))

(assert (=> bs!1144721 m!5718577))

(assert (=> bs!1144721 m!5718583))

(declare-fun m!5718585 () Bool)

(assert (=> bs!1144721 m!5718585))

(assert (=> b!4752802 d!1519659))

(declare-fun d!1519661 () Bool)

(declare-fun e!2964956 () Bool)

(assert (=> d!1519661 e!2964956))

(declare-fun res!2015755 () Bool)

(assert (=> d!1519661 (=> (not res!2015755) (not e!2964956))))

(declare-fun lt!1917884 () ListMap!5553)

(assert (=> d!1519661 (= res!2015755 (contains!16520 lt!1917884 (_1!30728 (h!59491 l!14304))))))

(declare-fun lt!1917887 () List!53218)

(assert (=> d!1519661 (= lt!1917884 (ListMap!5554 lt!1917887))))

(declare-fun lt!1917885 () Unit!136402)

(declare-fun lt!1917886 () Unit!136402)

(assert (=> d!1519661 (= lt!1917885 lt!1917886)))

(assert (=> d!1519661 (= (getValueByKey!2085 lt!1917887 (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519661 (= lt!1917886 (lemmaContainsTupThenGetReturnValue!1162 lt!1917887 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519661 (= lt!1917887 (insertNoDuplicatedKeys!670 (toList!6122 (+!2388 acc!1214 t!14174)) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519661 (= (+!2388 (+!2388 acc!1214 t!14174) (h!59491 l!14304)) lt!1917884)))

(declare-fun b!4752941 () Bool)

(declare-fun res!2015756 () Bool)

(assert (=> b!4752941 (=> (not res!2015756) (not e!2964956))))

(assert (=> b!4752941 (= res!2015756 (= (getValueByKey!2085 (toList!6122 lt!1917884) (_1!30728 (h!59491 l!14304))) (Some!12534 (_2!30728 (h!59491 l!14304)))))))

(declare-fun b!4752942 () Bool)

(assert (=> b!4752942 (= e!2964956 (contains!16521 (toList!6122 lt!1917884) (h!59491 l!14304)))))

(assert (= (and d!1519661 res!2015755) b!4752941))

(assert (= (and b!4752941 res!2015756) b!4752942))

(declare-fun m!5718587 () Bool)

(assert (=> d!1519661 m!5718587))

(declare-fun m!5718589 () Bool)

(assert (=> d!1519661 m!5718589))

(declare-fun m!5718591 () Bool)

(assert (=> d!1519661 m!5718591))

(declare-fun m!5718593 () Bool)

(assert (=> d!1519661 m!5718593))

(declare-fun m!5718595 () Bool)

(assert (=> b!4752941 m!5718595))

(declare-fun m!5718597 () Bool)

(assert (=> b!4752942 m!5718597))

(assert (=> b!4752802 d!1519661))

(declare-fun bs!1144722 () Bool)

(declare-fun b!4752945 () Bool)

(assert (= bs!1144722 (and b!4752945 b!4752908)))

(declare-fun lambda!222413 () Int)

(assert (=> bs!1144722 (= lambda!222413 lambda!222393)))

(declare-fun bs!1144723 () Bool)

(assert (= bs!1144723 (and b!4752945 b!4752938)))

(assert (=> bs!1144723 (= (= lt!1917460 lt!1917454) (= lambda!222413 lambda!222409))))

(declare-fun bs!1144724 () Bool)

(assert (= bs!1144724 (and b!4752945 b!4752933)))

(assert (=> bs!1144724 (= (= lt!1917460 lt!1917459) (= lambda!222413 lambda!222406))))

(declare-fun bs!1144725 () Bool)

(assert (= bs!1144725 (and b!4752945 b!4752865)))

(assert (=> bs!1144725 (= (= lt!1917460 acc!1214) (= lambda!222413 lambda!222375))))

(declare-fun bs!1144726 () Bool)

(assert (= bs!1144726 (and b!4752945 d!1519579)))

(assert (=> bs!1144726 (= (= lt!1917460 lt!1917664) (= lambda!222413 lambda!222378))))

(assert (=> bs!1144724 (= (= lt!1917460 lt!1917838) (= lambda!222413 lambda!222407))))

(declare-fun bs!1144727 () Bool)

(assert (= bs!1144727 (and b!4752945 b!4752894)))

(assert (=> bs!1144727 (= (= lt!1917460 acc!1214) (= lambda!222413 lambda!222385))))

(assert (=> bs!1144725 (= (= lt!1917460 lt!1917650) (= lambda!222413 lambda!222376))))

(declare-fun bs!1144728 () Bool)

(assert (= bs!1144728 (and b!4752945 b!4752920)))

(assert (=> bs!1144728 (= (= lt!1917460 lt!1917457) (= lambda!222413 lambda!222402))))

(declare-fun bs!1144729 () Bool)

(assert (= bs!1144729 (and b!4752945 b!4752863)))

(assert (=> bs!1144729 (= (= lt!1917460 acc!1214) (= lambda!222413 lambda!222373))))

(declare-fun bs!1144730 () Bool)

(assert (= bs!1144730 (and b!4752945 d!1519627)))

(assert (=> bs!1144730 (= (= lt!1917460 lt!1917744) (= lambda!222413 lambda!222389))))

(assert (=> bs!1144722 (= (= lt!1917460 lt!1917772) (= lambda!222413 lambda!222395))))

(declare-fun bs!1144731 () Bool)

(assert (= bs!1144731 (and b!4752945 b!4752931)))

(assert (=> bs!1144731 (= (= lt!1917460 lt!1917459) (= lambda!222413 lambda!222405))))

(declare-fun bs!1144732 () Bool)

(assert (= bs!1144732 (and b!4752945 b!4752940)))

(assert (=> bs!1144732 (= (= lt!1917460 lt!1917863) (= lambda!222413 lambda!222411))))

(declare-fun bs!1144733 () Bool)

(assert (= bs!1144733 (and b!4752945 b!4752906)))

(assert (=> bs!1144733 (= lambda!222413 lambda!222392)))

(declare-fun bs!1144734 () Bool)

(assert (= bs!1144734 (and b!4752945 d!1519645)))

(assert (=> bs!1144734 (= (= lt!1917460 lt!1917831) (= lambda!222413 lambda!222404))))

(assert (=> bs!1144732 (= (= lt!1917460 lt!1917454) (= lambda!222413 lambda!222410))))

(assert (=> bs!1144728 (= (= lt!1917460 lt!1917817) (= lambda!222413 lambda!222403))))

(declare-fun bs!1144735 () Bool)

(assert (= bs!1144735 (and b!4752945 d!1519657)))

(assert (=> bs!1144735 (= (= lt!1917460 lt!1917877) (= lambda!222413 lambda!222412))))

(declare-fun bs!1144736 () Bool)

(assert (= bs!1144736 (and b!4752945 b!4752896)))

(assert (=> bs!1144736 (= (= lt!1917460 lt!1917730) (= lambda!222413 lambda!222388))))

(assert (=> bs!1144736 (= (= lt!1917460 acc!1214) (= lambda!222413 lambda!222386))))

(declare-fun bs!1144737 () Bool)

(assert (= bs!1144737 (and b!4752945 d!1519633)))

(assert (=> bs!1144737 (= (= lt!1917460 lt!1917786) (= lambda!222413 lambda!222396))))

(declare-fun bs!1144738 () Bool)

(assert (= bs!1144738 (and b!4752945 b!4752918)))

(assert (=> bs!1144738 (= (= lt!1917460 lt!1917457) (= lambda!222413 lambda!222401))))

(declare-fun bs!1144739 () Bool)

(assert (= bs!1144739 (and b!4752945 d!1519651)))

(assert (=> bs!1144739 (= (= lt!1917460 lt!1917852) (= lambda!222413 lambda!222408))))

(assert (=> b!4752945 true))

(declare-fun bs!1144740 () Bool)

(declare-fun b!4752947 () Bool)

(assert (= bs!1144740 (and b!4752947 b!4752908)))

(declare-fun lambda!222414 () Int)

(assert (=> bs!1144740 (= lambda!222414 lambda!222393)))

(declare-fun bs!1144741 () Bool)

(assert (= bs!1144741 (and b!4752947 b!4752938)))

(assert (=> bs!1144741 (= (= lt!1917460 lt!1917454) (= lambda!222414 lambda!222409))))

(declare-fun bs!1144742 () Bool)

(assert (= bs!1144742 (and b!4752947 b!4752933)))

(assert (=> bs!1144742 (= (= lt!1917460 lt!1917459) (= lambda!222414 lambda!222406))))

(declare-fun bs!1144743 () Bool)

(assert (= bs!1144743 (and b!4752947 b!4752865)))

(assert (=> bs!1144743 (= (= lt!1917460 acc!1214) (= lambda!222414 lambda!222375))))

(assert (=> bs!1144742 (= (= lt!1917460 lt!1917838) (= lambda!222414 lambda!222407))))

(declare-fun bs!1144744 () Bool)

(assert (= bs!1144744 (and b!4752947 b!4752894)))

(assert (=> bs!1144744 (= (= lt!1917460 acc!1214) (= lambda!222414 lambda!222385))))

(assert (=> bs!1144743 (= (= lt!1917460 lt!1917650) (= lambda!222414 lambda!222376))))

(declare-fun bs!1144745 () Bool)

(assert (= bs!1144745 (and b!4752947 b!4752920)))

(assert (=> bs!1144745 (= (= lt!1917460 lt!1917457) (= lambda!222414 lambda!222402))))

(declare-fun bs!1144746 () Bool)

(assert (= bs!1144746 (and b!4752947 b!4752863)))

(assert (=> bs!1144746 (= (= lt!1917460 acc!1214) (= lambda!222414 lambda!222373))))

(declare-fun bs!1144747 () Bool)

(assert (= bs!1144747 (and b!4752947 d!1519627)))

(assert (=> bs!1144747 (= (= lt!1917460 lt!1917744) (= lambda!222414 lambda!222389))))

(assert (=> bs!1144740 (= (= lt!1917460 lt!1917772) (= lambda!222414 lambda!222395))))

(declare-fun bs!1144748 () Bool)

(assert (= bs!1144748 (and b!4752947 b!4752931)))

(assert (=> bs!1144748 (= (= lt!1917460 lt!1917459) (= lambda!222414 lambda!222405))))

(declare-fun bs!1144749 () Bool)

(assert (= bs!1144749 (and b!4752947 b!4752940)))

(assert (=> bs!1144749 (= (= lt!1917460 lt!1917863) (= lambda!222414 lambda!222411))))

(declare-fun bs!1144750 () Bool)

(assert (= bs!1144750 (and b!4752947 b!4752945)))

(assert (=> bs!1144750 (= lambda!222414 lambda!222413)))

(declare-fun bs!1144751 () Bool)

(assert (= bs!1144751 (and b!4752947 d!1519579)))

(assert (=> bs!1144751 (= (= lt!1917460 lt!1917664) (= lambda!222414 lambda!222378))))

(declare-fun bs!1144752 () Bool)

(assert (= bs!1144752 (and b!4752947 b!4752906)))

(assert (=> bs!1144752 (= lambda!222414 lambda!222392)))

(declare-fun bs!1144753 () Bool)

(assert (= bs!1144753 (and b!4752947 d!1519645)))

(assert (=> bs!1144753 (= (= lt!1917460 lt!1917831) (= lambda!222414 lambda!222404))))

(assert (=> bs!1144749 (= (= lt!1917460 lt!1917454) (= lambda!222414 lambda!222410))))

(assert (=> bs!1144745 (= (= lt!1917460 lt!1917817) (= lambda!222414 lambda!222403))))

(declare-fun bs!1144754 () Bool)

(assert (= bs!1144754 (and b!4752947 d!1519657)))

(assert (=> bs!1144754 (= (= lt!1917460 lt!1917877) (= lambda!222414 lambda!222412))))

(declare-fun bs!1144755 () Bool)

(assert (= bs!1144755 (and b!4752947 b!4752896)))

(assert (=> bs!1144755 (= (= lt!1917460 lt!1917730) (= lambda!222414 lambda!222388))))

(assert (=> bs!1144755 (= (= lt!1917460 acc!1214) (= lambda!222414 lambda!222386))))

(declare-fun bs!1144756 () Bool)

(assert (= bs!1144756 (and b!4752947 d!1519633)))

(assert (=> bs!1144756 (= (= lt!1917460 lt!1917786) (= lambda!222414 lambda!222396))))

(declare-fun bs!1144757 () Bool)

(assert (= bs!1144757 (and b!4752947 b!4752918)))

(assert (=> bs!1144757 (= (= lt!1917460 lt!1917457) (= lambda!222414 lambda!222401))))

(declare-fun bs!1144758 () Bool)

(assert (= bs!1144758 (and b!4752947 d!1519651)))

(assert (=> bs!1144758 (= (= lt!1917460 lt!1917852) (= lambda!222414 lambda!222408))))

(assert (=> b!4752947 true))

(declare-fun lambda!222415 () Int)

(declare-fun lt!1917891 () ListMap!5553)

(assert (=> bs!1144740 (= (= lt!1917891 lt!1917460) (= lambda!222415 lambda!222393))))

(assert (=> bs!1144741 (= (= lt!1917891 lt!1917454) (= lambda!222415 lambda!222409))))

(assert (=> bs!1144742 (= (= lt!1917891 lt!1917459) (= lambda!222415 lambda!222406))))

(assert (=> bs!1144743 (= (= lt!1917891 acc!1214) (= lambda!222415 lambda!222375))))

(assert (=> bs!1144742 (= (= lt!1917891 lt!1917838) (= lambda!222415 lambda!222407))))

(assert (=> b!4752947 (= (= lt!1917891 lt!1917460) (= lambda!222415 lambda!222414))))

(assert (=> bs!1144744 (= (= lt!1917891 acc!1214) (= lambda!222415 lambda!222385))))

(assert (=> bs!1144743 (= (= lt!1917891 lt!1917650) (= lambda!222415 lambda!222376))))

(assert (=> bs!1144745 (= (= lt!1917891 lt!1917457) (= lambda!222415 lambda!222402))))

(assert (=> bs!1144746 (= (= lt!1917891 acc!1214) (= lambda!222415 lambda!222373))))

(assert (=> bs!1144747 (= (= lt!1917891 lt!1917744) (= lambda!222415 lambda!222389))))

(assert (=> bs!1144740 (= (= lt!1917891 lt!1917772) (= lambda!222415 lambda!222395))))

(assert (=> bs!1144748 (= (= lt!1917891 lt!1917459) (= lambda!222415 lambda!222405))))

(assert (=> bs!1144749 (= (= lt!1917891 lt!1917863) (= lambda!222415 lambda!222411))))

(assert (=> bs!1144750 (= (= lt!1917891 lt!1917460) (= lambda!222415 lambda!222413))))

(assert (=> bs!1144751 (= (= lt!1917891 lt!1917664) (= lambda!222415 lambda!222378))))

(assert (=> bs!1144752 (= (= lt!1917891 lt!1917460) (= lambda!222415 lambda!222392))))

(assert (=> bs!1144753 (= (= lt!1917891 lt!1917831) (= lambda!222415 lambda!222404))))

(assert (=> bs!1144749 (= (= lt!1917891 lt!1917454) (= lambda!222415 lambda!222410))))

(assert (=> bs!1144745 (= (= lt!1917891 lt!1917817) (= lambda!222415 lambda!222403))))

(assert (=> bs!1144754 (= (= lt!1917891 lt!1917877) (= lambda!222415 lambda!222412))))

(assert (=> bs!1144755 (= (= lt!1917891 lt!1917730) (= lambda!222415 lambda!222388))))

(assert (=> bs!1144755 (= (= lt!1917891 acc!1214) (= lambda!222415 lambda!222386))))

(assert (=> bs!1144756 (= (= lt!1917891 lt!1917786) (= lambda!222415 lambda!222396))))

(assert (=> bs!1144757 (= (= lt!1917891 lt!1917457) (= lambda!222415 lambda!222401))))

(assert (=> bs!1144758 (= (= lt!1917891 lt!1917852) (= lambda!222415 lambda!222408))))

(assert (=> b!4752947 true))

(declare-fun bs!1144759 () Bool)

(declare-fun d!1519663 () Bool)

(assert (= bs!1144759 (and d!1519663 b!4752908)))

(declare-fun lt!1917905 () ListMap!5553)

(declare-fun lambda!222416 () Int)

(assert (=> bs!1144759 (= (= lt!1917905 lt!1917460) (= lambda!222416 lambda!222393))))

(declare-fun bs!1144760 () Bool)

(assert (= bs!1144760 (and d!1519663 b!4752938)))

(assert (=> bs!1144760 (= (= lt!1917905 lt!1917454) (= lambda!222416 lambda!222409))))

(declare-fun bs!1144761 () Bool)

(assert (= bs!1144761 (and d!1519663 b!4752933)))

(assert (=> bs!1144761 (= (= lt!1917905 lt!1917459) (= lambda!222416 lambda!222406))))

(declare-fun bs!1144762 () Bool)

(assert (= bs!1144762 (and d!1519663 b!4752947)))

(assert (=> bs!1144762 (= (= lt!1917905 lt!1917891) (= lambda!222416 lambda!222415))))

(declare-fun bs!1144763 () Bool)

(assert (= bs!1144763 (and d!1519663 b!4752865)))

(assert (=> bs!1144763 (= (= lt!1917905 acc!1214) (= lambda!222416 lambda!222375))))

(assert (=> bs!1144761 (= (= lt!1917905 lt!1917838) (= lambda!222416 lambda!222407))))

(assert (=> bs!1144762 (= (= lt!1917905 lt!1917460) (= lambda!222416 lambda!222414))))

(declare-fun bs!1144764 () Bool)

(assert (= bs!1144764 (and d!1519663 b!4752894)))

(assert (=> bs!1144764 (= (= lt!1917905 acc!1214) (= lambda!222416 lambda!222385))))

(assert (=> bs!1144763 (= (= lt!1917905 lt!1917650) (= lambda!222416 lambda!222376))))

(declare-fun bs!1144765 () Bool)

(assert (= bs!1144765 (and d!1519663 b!4752920)))

(assert (=> bs!1144765 (= (= lt!1917905 lt!1917457) (= lambda!222416 lambda!222402))))

(declare-fun bs!1144766 () Bool)

(assert (= bs!1144766 (and d!1519663 b!4752863)))

(assert (=> bs!1144766 (= (= lt!1917905 acc!1214) (= lambda!222416 lambda!222373))))

(declare-fun bs!1144767 () Bool)

(assert (= bs!1144767 (and d!1519663 d!1519627)))

(assert (=> bs!1144767 (= (= lt!1917905 lt!1917744) (= lambda!222416 lambda!222389))))

(assert (=> bs!1144759 (= (= lt!1917905 lt!1917772) (= lambda!222416 lambda!222395))))

(declare-fun bs!1144768 () Bool)

(assert (= bs!1144768 (and d!1519663 b!4752931)))

(assert (=> bs!1144768 (= (= lt!1917905 lt!1917459) (= lambda!222416 lambda!222405))))

(declare-fun bs!1144769 () Bool)

(assert (= bs!1144769 (and d!1519663 b!4752940)))

(assert (=> bs!1144769 (= (= lt!1917905 lt!1917863) (= lambda!222416 lambda!222411))))

(declare-fun bs!1144770 () Bool)

(assert (= bs!1144770 (and d!1519663 b!4752945)))

(assert (=> bs!1144770 (= (= lt!1917905 lt!1917460) (= lambda!222416 lambda!222413))))

(declare-fun bs!1144771 () Bool)

(assert (= bs!1144771 (and d!1519663 d!1519579)))

(assert (=> bs!1144771 (= (= lt!1917905 lt!1917664) (= lambda!222416 lambda!222378))))

(declare-fun bs!1144772 () Bool)

(assert (= bs!1144772 (and d!1519663 b!4752906)))

(assert (=> bs!1144772 (= (= lt!1917905 lt!1917460) (= lambda!222416 lambda!222392))))

(declare-fun bs!1144773 () Bool)

(assert (= bs!1144773 (and d!1519663 d!1519645)))

(assert (=> bs!1144773 (= (= lt!1917905 lt!1917831) (= lambda!222416 lambda!222404))))

(assert (=> bs!1144769 (= (= lt!1917905 lt!1917454) (= lambda!222416 lambda!222410))))

(assert (=> bs!1144765 (= (= lt!1917905 lt!1917817) (= lambda!222416 lambda!222403))))

(declare-fun bs!1144774 () Bool)

(assert (= bs!1144774 (and d!1519663 d!1519657)))

(assert (=> bs!1144774 (= (= lt!1917905 lt!1917877) (= lambda!222416 lambda!222412))))

(declare-fun bs!1144775 () Bool)

(assert (= bs!1144775 (and d!1519663 b!4752896)))

(assert (=> bs!1144775 (= (= lt!1917905 lt!1917730) (= lambda!222416 lambda!222388))))

(assert (=> bs!1144775 (= (= lt!1917905 acc!1214) (= lambda!222416 lambda!222386))))

(declare-fun bs!1144776 () Bool)

(assert (= bs!1144776 (and d!1519663 d!1519633)))

(assert (=> bs!1144776 (= (= lt!1917905 lt!1917786) (= lambda!222416 lambda!222396))))

(declare-fun bs!1144777 () Bool)

(assert (= bs!1144777 (and d!1519663 b!4752918)))

(assert (=> bs!1144777 (= (= lt!1917905 lt!1917457) (= lambda!222416 lambda!222401))))

(declare-fun bs!1144778 () Bool)

(assert (= bs!1144778 (and d!1519663 d!1519651)))

(assert (=> bs!1144778 (= (= lt!1917905 lt!1917852) (= lambda!222416 lambda!222408))))

(assert (=> d!1519663 true))

(declare-fun bm!333116 () Bool)

(declare-fun call!333123 () Bool)

(declare-fun c!811523 () Bool)

(assert (=> bm!333116 (= call!333123 (forall!11766 (toList!6122 lt!1917460) (ite c!811523 lambda!222413 lambda!222415)))))

(declare-fun b!4752943 () Bool)

(declare-fun e!2964957 () Bool)

(assert (=> b!4752943 (= e!2964957 (forall!11766 (toList!6122 lt!1917460) lambda!222415))))

(declare-fun e!2964959 () Bool)

(assert (=> d!1519663 e!2964959))

(declare-fun res!2015757 () Bool)

(assert (=> d!1519663 (=> (not res!2015757) (not e!2964959))))

(assert (=> d!1519663 (= res!2015757 (forall!11766 (t!360556 l!14304) lambda!222416))))

(declare-fun e!2964958 () ListMap!5553)

(assert (=> d!1519663 (= lt!1917905 e!2964958)))

(assert (=> d!1519663 (= c!811523 ((_ is Nil!53094) (t!360556 l!14304)))))

(assert (=> d!1519663 (noDuplicateKeys!2154 (t!360556 l!14304))))

(assert (=> d!1519663 (= (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917460) lt!1917905)))

(declare-fun b!4752944 () Bool)

(assert (=> b!4752944 (= e!2964959 (invariantList!1598 (toList!6122 lt!1917905)))))

(assert (=> b!4752945 (= e!2964958 lt!1917460)))

(declare-fun lt!1917901 () Unit!136402)

(declare-fun call!333122 () Unit!136402)

(assert (=> b!4752945 (= lt!1917901 call!333122)))

(declare-fun call!333121 () Bool)

(assert (=> b!4752945 call!333121))

(declare-fun lt!1917906 () Unit!136402)

(assert (=> b!4752945 (= lt!1917906 lt!1917901)))

(assert (=> b!4752945 call!333123))

(declare-fun lt!1917895 () Unit!136402)

(declare-fun Unit!136536 () Unit!136402)

(assert (=> b!4752945 (= lt!1917895 Unit!136536)))

(declare-fun lt!1917896 () ListMap!5553)

(declare-fun bm!333117 () Bool)

(assert (=> bm!333117 (= call!333121 (forall!11766 (ite c!811523 (toList!6122 lt!1917460) (toList!6122 lt!1917896)) (ite c!811523 lambda!222413 lambda!222415)))))

(declare-fun b!4752946 () Bool)

(declare-fun res!2015758 () Bool)

(assert (=> b!4752946 (=> (not res!2015758) (not e!2964959))))

(assert (=> b!4752946 (= res!2015758 (forall!11766 (toList!6122 lt!1917460) lambda!222416))))

(assert (=> b!4752947 (= e!2964958 lt!1917891)))

(assert (=> b!4752947 (= lt!1917896 (+!2388 lt!1917460 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752947 (= lt!1917891 (addToMapMapFromBucket!1578 (t!360556 (t!360556 l!14304)) (+!2388 lt!1917460 (h!59491 (t!360556 l!14304)))))))

(declare-fun lt!1917889 () Unit!136402)

(assert (=> b!4752947 (= lt!1917889 call!333122)))

(assert (=> b!4752947 (forall!11766 (toList!6122 lt!1917460) lambda!222414)))

(declare-fun lt!1917903 () Unit!136402)

(assert (=> b!4752947 (= lt!1917903 lt!1917889)))

(assert (=> b!4752947 call!333121))

(declare-fun lt!1917888 () Unit!136402)

(declare-fun Unit!136539 () Unit!136402)

(assert (=> b!4752947 (= lt!1917888 Unit!136539)))

(assert (=> b!4752947 (forall!11766 (t!360556 (t!360556 l!14304)) lambda!222415)))

(declare-fun lt!1917898 () Unit!136402)

(declare-fun Unit!136541 () Unit!136402)

(assert (=> b!4752947 (= lt!1917898 Unit!136541)))

(declare-fun lt!1917894 () Unit!136402)

(declare-fun Unit!136542 () Unit!136402)

(assert (=> b!4752947 (= lt!1917894 Unit!136542)))

(declare-fun lt!1917900 () Unit!136402)

(assert (=> b!4752947 (= lt!1917900 (forallContained!3792 (toList!6122 lt!1917896) lambda!222415 (h!59491 (t!360556 l!14304))))))

(assert (=> b!4752947 (contains!16520 lt!1917896 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917904 () Unit!136402)

(declare-fun Unit!136545 () Unit!136402)

(assert (=> b!4752947 (= lt!1917904 Unit!136545)))

(assert (=> b!4752947 (contains!16520 lt!1917891 (_1!30728 (h!59491 (t!360556 l!14304))))))

(declare-fun lt!1917902 () Unit!136402)

(declare-fun Unit!136546 () Unit!136402)

(assert (=> b!4752947 (= lt!1917902 Unit!136546)))

(assert (=> b!4752947 (forall!11766 (t!360556 l!14304) lambda!222415)))

(declare-fun lt!1917893 () Unit!136402)

(declare-fun Unit!136548 () Unit!136402)

(assert (=> b!4752947 (= lt!1917893 Unit!136548)))

(assert (=> b!4752947 (forall!11766 (toList!6122 lt!1917896) lambda!222415)))

(declare-fun lt!1917899 () Unit!136402)

(declare-fun Unit!136551 () Unit!136402)

(assert (=> b!4752947 (= lt!1917899 Unit!136551)))

(declare-fun lt!1917892 () Unit!136402)

(declare-fun Unit!136552 () Unit!136402)

(assert (=> b!4752947 (= lt!1917892 Unit!136552)))

(declare-fun lt!1917897 () Unit!136402)

(assert (=> b!4752947 (= lt!1917897 (addForallContainsKeyThenBeforeAdding!880 lt!1917460 lt!1917891 (_1!30728 (h!59491 (t!360556 l!14304))) (_2!30728 (h!59491 (t!360556 l!14304)))))))

(assert (=> b!4752947 call!333123))

(declare-fun lt!1917890 () Unit!136402)

(assert (=> b!4752947 (= lt!1917890 lt!1917897)))

(assert (=> b!4752947 (forall!11766 (toList!6122 lt!1917460) lambda!222415)))

(declare-fun lt!1917908 () Unit!136402)

(declare-fun Unit!136554 () Unit!136402)

(assert (=> b!4752947 (= lt!1917908 Unit!136554)))

(declare-fun res!2015759 () Bool)

(assert (=> b!4752947 (= res!2015759 (forall!11766 (t!360556 l!14304) lambda!222415))))

(assert (=> b!4752947 (=> (not res!2015759) (not e!2964957))))

(assert (=> b!4752947 e!2964957))

(declare-fun lt!1917907 () Unit!136402)

(declare-fun Unit!136556 () Unit!136402)

(assert (=> b!4752947 (= lt!1917907 Unit!136556)))

(declare-fun bm!333118 () Bool)

(assert (=> bm!333118 (= call!333122 (lemmaContainsAllItsOwnKeys!881 lt!1917460))))

(assert (= (and d!1519663 c!811523) b!4752945))

(assert (= (and d!1519663 (not c!811523)) b!4752947))

(assert (= (and b!4752947 res!2015759) b!4752943))

(assert (= (or b!4752945 b!4752947) bm!333118))

(assert (= (or b!4752945 b!4752947) bm!333117))

(assert (= (or b!4752945 b!4752947) bm!333116))

(assert (= (and d!1519663 res!2015757) b!4752946))

(assert (= (and b!4752946 res!2015758) b!4752944))

(declare-fun m!5718599 () Bool)

(assert (=> b!4752944 m!5718599))

(declare-fun m!5718601 () Bool)

(assert (=> b!4752943 m!5718601))

(declare-fun m!5718603 () Bool)

(assert (=> d!1519663 m!5718603))

(assert (=> d!1519663 m!5717961))

(assert (=> bm!333118 m!5718383))

(declare-fun m!5718605 () Bool)

(assert (=> bm!333117 m!5718605))

(declare-fun m!5718607 () Bool)

(assert (=> b!4752947 m!5718607))

(declare-fun m!5718609 () Bool)

(assert (=> b!4752947 m!5718609))

(declare-fun m!5718611 () Bool)

(assert (=> b!4752947 m!5718611))

(assert (=> b!4752947 m!5718601))

(declare-fun m!5718613 () Bool)

(assert (=> b!4752947 m!5718613))

(declare-fun m!5718615 () Bool)

(assert (=> b!4752947 m!5718615))

(declare-fun m!5718617 () Bool)

(assert (=> b!4752947 m!5718617))

(assert (=> b!4752947 m!5718613))

(declare-fun m!5718619 () Bool)

(assert (=> b!4752947 m!5718619))

(declare-fun m!5718621 () Bool)

(assert (=> b!4752947 m!5718621))

(assert (=> b!4752947 m!5718609))

(declare-fun m!5718623 () Bool)

(assert (=> b!4752947 m!5718623))

(declare-fun m!5718625 () Bool)

(assert (=> b!4752947 m!5718625))

(declare-fun m!5718627 () Bool)

(assert (=> b!4752946 m!5718627))

(declare-fun m!5718629 () Bool)

(assert (=> bm!333116 m!5718629))

(assert (=> b!4752802 d!1519663))

(declare-fun d!1519665 () Bool)

(declare-fun e!2964960 () Bool)

(assert (=> d!1519665 e!2964960))

(declare-fun res!2015760 () Bool)

(assert (=> d!1519665 (=> (not res!2015760) (not e!2964960))))

(declare-fun lt!1917909 () ListMap!5553)

(assert (=> d!1519665 (= res!2015760 (contains!16520 lt!1917909 (_1!30728 t!14174)))))

(declare-fun lt!1917912 () List!53218)

(assert (=> d!1519665 (= lt!1917909 (ListMap!5554 lt!1917912))))

(declare-fun lt!1917910 () Unit!136402)

(declare-fun lt!1917911 () Unit!136402)

(assert (=> d!1519665 (= lt!1917910 lt!1917911)))

(assert (=> d!1519665 (= (getValueByKey!2085 lt!1917912 (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174)))))

(assert (=> d!1519665 (= lt!1917911 (lemmaContainsTupThenGetReturnValue!1162 lt!1917912 (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519665 (= lt!1917912 (insertNoDuplicatedKeys!670 (toList!6122 lt!1917460) (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519665 (= (+!2388 lt!1917460 t!14174) lt!1917909)))

(declare-fun b!4752948 () Bool)

(declare-fun res!2015761 () Bool)

(assert (=> b!4752948 (=> (not res!2015761) (not e!2964960))))

(assert (=> b!4752948 (= res!2015761 (= (getValueByKey!2085 (toList!6122 lt!1917909) (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174))))))

(declare-fun b!4752949 () Bool)

(assert (=> b!4752949 (= e!2964960 (contains!16521 (toList!6122 lt!1917909) t!14174))))

(assert (= (and d!1519665 res!2015760) b!4752948))

(assert (= (and b!4752948 res!2015761) b!4752949))

(declare-fun m!5718631 () Bool)

(assert (=> d!1519665 m!5718631))

(declare-fun m!5718633 () Bool)

(assert (=> d!1519665 m!5718633))

(declare-fun m!5718635 () Bool)

(assert (=> d!1519665 m!5718635))

(declare-fun m!5718637 () Bool)

(assert (=> d!1519665 m!5718637))

(declare-fun m!5718639 () Bool)

(assert (=> b!4752948 m!5718639))

(declare-fun m!5718641 () Bool)

(assert (=> b!4752949 m!5718641))

(assert (=> b!4752802 d!1519665))

(declare-fun d!1519667 () Bool)

(assert (=> d!1519667 (= (eq!1223 lt!1917456 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917459)) (= (content!9535 (toList!6122 lt!1917456)) (content!9535 (toList!6122 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917459)))))))

(declare-fun bs!1144779 () Bool)

(assert (= bs!1144779 d!1519667))

(assert (=> bs!1144779 m!5718485))

(declare-fun m!5718643 () Bool)

(assert (=> bs!1144779 m!5718643))

(assert (=> b!4752802 d!1519667))

(declare-fun d!1519669 () Bool)

(assert (=> d!1519669 (= (eq!1223 lt!1917464 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917457)) (= (content!9535 (toList!6122 lt!1917464)) (content!9535 (toList!6122 (addToMapMapFromBucket!1578 (t!360556 l!14304) lt!1917457)))))))

(declare-fun bs!1144780 () Bool)

(assert (= bs!1144780 d!1519669))

(assert (=> bs!1144780 m!5718539))

(declare-fun m!5718645 () Bool)

(assert (=> bs!1144780 m!5718645))

(assert (=> b!4752802 d!1519669))

(declare-fun d!1519671 () Bool)

(assert (=> d!1519671 (eq!1223 (+!2388 (+!2388 acc!1214 (tuple2!54869 (_1!30728 t!14174) (_2!30728 t!14174))) (tuple2!54869 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)))) (+!2388 (+!2388 acc!1214 (tuple2!54869 (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304)))) (tuple2!54869 (_1!30728 t!14174) (_2!30728 t!14174))))))

(declare-fun lt!1917913 () Unit!136402)

(assert (=> d!1519671 (= lt!1917913 (choose!33838 acc!1214 (_1!30728 t!14174) (_2!30728 t!14174) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))))))

(assert (=> d!1519671 (not (= (_1!30728 t!14174) (_1!30728 (h!59491 l!14304))))))

(assert (=> d!1519671 (= (addCommutativeForDiffKeys!24 acc!1214 (_1!30728 t!14174) (_2!30728 t!14174) (_1!30728 (h!59491 l!14304)) (_2!30728 (h!59491 l!14304))) lt!1917913)))

(declare-fun bs!1144781 () Bool)

(assert (= bs!1144781 d!1519671))

(assert (=> bs!1144781 m!5718581))

(assert (=> bs!1144781 m!5718583))

(declare-fun m!5718647 () Bool)

(assert (=> bs!1144781 m!5718647))

(assert (=> bs!1144781 m!5718581))

(assert (=> bs!1144781 m!5718575))

(assert (=> bs!1144781 m!5718577))

(assert (=> bs!1144781 m!5718575))

(assert (=> bs!1144781 m!5718583))

(assert (=> bs!1144781 m!5718577))

(declare-fun m!5718649 () Bool)

(assert (=> bs!1144781 m!5718649))

(assert (=> b!4752802 d!1519671))

(declare-fun d!1519673 () Bool)

(declare-fun e!2964961 () Bool)

(assert (=> d!1519673 e!2964961))

(declare-fun res!2015762 () Bool)

(assert (=> d!1519673 (=> (not res!2015762) (not e!2964961))))

(declare-fun lt!1917914 () ListMap!5553)

(assert (=> d!1519673 (= res!2015762 (contains!16520 lt!1917914 (_1!30728 t!14174)))))

(declare-fun lt!1917917 () List!53218)

(assert (=> d!1519673 (= lt!1917914 (ListMap!5554 lt!1917917))))

(declare-fun lt!1917915 () Unit!136402)

(declare-fun lt!1917916 () Unit!136402)

(assert (=> d!1519673 (= lt!1917915 lt!1917916)))

(assert (=> d!1519673 (= (getValueByKey!2085 lt!1917917 (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174)))))

(assert (=> d!1519673 (= lt!1917916 (lemmaContainsTupThenGetReturnValue!1162 lt!1917917 (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519673 (= lt!1917917 (insertNoDuplicatedKeys!670 (toList!6122 acc!1214) (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519673 (= (+!2388 acc!1214 t!14174) lt!1917914)))

(declare-fun b!4752950 () Bool)

(declare-fun res!2015763 () Bool)

(assert (=> b!4752950 (=> (not res!2015763) (not e!2964961))))

(assert (=> b!4752950 (= res!2015763 (= (getValueByKey!2085 (toList!6122 lt!1917914) (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174))))))

(declare-fun b!4752951 () Bool)

(assert (=> b!4752951 (= e!2964961 (contains!16521 (toList!6122 lt!1917914) t!14174))))

(assert (= (and d!1519673 res!2015762) b!4752950))

(assert (= (and b!4752950 res!2015763) b!4752951))

(declare-fun m!5718651 () Bool)

(assert (=> d!1519673 m!5718651))

(declare-fun m!5718653 () Bool)

(assert (=> d!1519673 m!5718653))

(declare-fun m!5718655 () Bool)

(assert (=> d!1519673 m!5718655))

(declare-fun m!5718657 () Bool)

(assert (=> d!1519673 m!5718657))

(declare-fun m!5718659 () Bool)

(assert (=> b!4752950 m!5718659))

(declare-fun m!5718661 () Bool)

(assert (=> b!4752951 m!5718661))

(assert (=> b!4752802 d!1519673))

(declare-fun d!1519675 () Bool)

(assert (=> d!1519675 (= (eq!1223 lt!1917463 lt!1917458) (= (content!9535 (toList!6122 lt!1917463)) (content!9535 (toList!6122 lt!1917458))))))

(declare-fun bs!1144782 () Bool)

(assert (= bs!1144782 d!1519675))

(declare-fun m!5718663 () Bool)

(assert (=> bs!1144782 m!5718663))

(declare-fun m!5718665 () Bool)

(assert (=> bs!1144782 m!5718665))

(assert (=> b!4752802 d!1519675))

(declare-fun d!1519677 () Bool)

(declare-fun e!2964962 () Bool)

(assert (=> d!1519677 e!2964962))

(declare-fun res!2015764 () Bool)

(assert (=> d!1519677 (=> (not res!2015764) (not e!2964962))))

(declare-fun lt!1917918 () ListMap!5553)

(assert (=> d!1519677 (= res!2015764 (contains!16520 lt!1917918 (_1!30728 t!14174)))))

(declare-fun lt!1917921 () List!53218)

(assert (=> d!1519677 (= lt!1917918 (ListMap!5554 lt!1917921))))

(declare-fun lt!1917919 () Unit!136402)

(declare-fun lt!1917920 () Unit!136402)

(assert (=> d!1519677 (= lt!1917919 lt!1917920)))

(assert (=> d!1519677 (= (getValueByKey!2085 lt!1917921 (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174)))))

(assert (=> d!1519677 (= lt!1917920 (lemmaContainsTupThenGetReturnValue!1162 lt!1917921 (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519677 (= lt!1917921 (insertNoDuplicatedKeys!670 (toList!6122 lt!1917461) (_1!30728 t!14174) (_2!30728 t!14174)))))

(assert (=> d!1519677 (= (+!2388 lt!1917461 t!14174) lt!1917918)))

(declare-fun b!4752952 () Bool)

(declare-fun res!2015765 () Bool)

(assert (=> b!4752952 (=> (not res!2015765) (not e!2964962))))

(assert (=> b!4752952 (= res!2015765 (= (getValueByKey!2085 (toList!6122 lt!1917918) (_1!30728 t!14174)) (Some!12534 (_2!30728 t!14174))))))

(declare-fun b!4752953 () Bool)

(assert (=> b!4752953 (= e!2964962 (contains!16521 (toList!6122 lt!1917918) t!14174))))

(assert (= (and d!1519677 res!2015764) b!4752952))

(assert (= (and b!4752952 res!2015765) b!4752953))

(declare-fun m!5718667 () Bool)

(assert (=> d!1519677 m!5718667))

(declare-fun m!5718669 () Bool)

(assert (=> d!1519677 m!5718669))

(declare-fun m!5718671 () Bool)

(assert (=> d!1519677 m!5718671))

(declare-fun m!5718673 () Bool)

(assert (=> d!1519677 m!5718673))

(declare-fun m!5718675 () Bool)

(assert (=> b!4752952 m!5718675))

(declare-fun m!5718677 () Bool)

(assert (=> b!4752953 m!5718677))

(assert (=> b!4752802 d!1519677))

(declare-fun d!1519679 () Bool)

(assert (=> d!1519679 (= (eq!1223 lt!1917458 lt!1917463) (= (content!9535 (toList!6122 lt!1917458)) (content!9535 (toList!6122 lt!1917463))))))

(declare-fun bs!1144783 () Bool)

(assert (= bs!1144783 d!1519679))

(assert (=> bs!1144783 m!5718665))

(assert (=> bs!1144783 m!5718663))

(assert (=> b!4752802 d!1519679))

(declare-fun d!1519681 () Bool)

(declare-fun res!2015766 () Bool)

(declare-fun e!2964963 () Bool)

(assert (=> d!1519681 (=> res!2015766 e!2964963)))

(assert (=> d!1519681 (= res!2015766 (not ((_ is Cons!53094) lt!1917462)))))

(assert (=> d!1519681 (= (noDuplicateKeys!2154 lt!1917462) e!2964963)))

(declare-fun b!4752954 () Bool)

(declare-fun e!2964964 () Bool)

(assert (=> b!4752954 (= e!2964963 e!2964964)))

(declare-fun res!2015767 () Bool)

(assert (=> b!4752954 (=> (not res!2015767) (not e!2964964))))

(assert (=> b!4752954 (= res!2015767 (not (containsKey!3563 (t!360556 lt!1917462) (_1!30728 (h!59491 lt!1917462)))))))

(declare-fun b!4752955 () Bool)

(assert (=> b!4752955 (= e!2964964 (noDuplicateKeys!2154 (t!360556 lt!1917462)))))

(assert (= (and d!1519681 (not res!2015766)) b!4752954))

(assert (= (and b!4752954 res!2015767) b!4752955))

(declare-fun m!5718679 () Bool)

(assert (=> b!4752954 m!5718679))

(declare-fun m!5718681 () Bool)

(assert (=> b!4752955 m!5718681))

(assert (=> b!4752800 d!1519681))

(declare-fun tp!1350248 () Bool)

(declare-fun b!4752960 () Bool)

(declare-fun e!2964967 () Bool)

(assert (=> b!4752960 (= e!2964967 (and tp_is_empty!31909 tp_is_empty!31911 tp!1350248))))

(assert (=> b!4752797 (= tp!1350241 e!2964967)))

(assert (= (and b!4752797 ((_ is Cons!53094) (toList!6122 acc!1214))) b!4752960))

(declare-fun tp!1350249 () Bool)

(declare-fun e!2964968 () Bool)

(declare-fun b!4752961 () Bool)

(assert (=> b!4752961 (= e!2964968 (and tp_is_empty!31909 tp_is_empty!31911 tp!1350249))))

(assert (=> b!4752799 (= tp!1350240 e!2964968)))

(assert (= (and b!4752799 ((_ is Cons!53094) (t!360556 l!14304))) b!4752961))

(check-sat (not d!1519651) (not bm!333086) (not d!1519669) (not bm!333107) (not d!1519665) (not b!4752908) (not d!1519653) (not d!1519607) (not b!4752907) (not bm!333101) (not d!1519579) (not b!4752937) (not d!1519675) (not b!4752862) (not b!4752935) (not bm!333115) (not b!4752890) (not bm!333109) (not b!4752920) (not b!4752896) (not d!1519639) (not b!4752919) (not b!4752941) (not d!1519627) (not b!4752943) (not b!4752942) (not b!4752950) (not bm!333112) (not bm!333116) tp_is_empty!31911 (not d!1519667) (not d!1519615) (not b!4752905) (not b!4752865) (not d!1519577) (not d!1519611) (not b!4752932) (not b!4752961) (not d!1519677) (not b!4752955) (not d!1519655) (not b!4752904) (not b!4752939) (not d!1519673) (not b!4752960) (not bm!333118) tp_is_empty!31909 (not d!1519633) (not bm!333108) (not d!1519645) (not b!4752936) (not bm!333110) (not b!4752933) (not bm!333102) (not b!4752948) (not b!4752947) (not b!4752949) (not d!1519657) (not bm!333103) (not b!4752892) (not bm!333097) (not b!4752929) (not d!1519663) (not b!4752891) (not b!4752930) (not bm!333087) (not b!4752877) (not b!4752928) (not b!4752953) (not b!4752951) (not bm!333113) (not b!4752893) (not b!4752916) (not d!1519661) (not b!4752878) (not bm!333088) (not b!4752944) (not b!4752927) (not d!1519671) (not b!4752861) (not d!1519647) (not d!1519659) (not b!4752917) (not b!4752940) (not bm!333117) (not b!4752952) (not bm!333114) (not bm!333096) (not bm!333095) (not b!4752954) (not b!4752946) (not b!4752895) (not d!1519679) (not bm!333111) (not b!4752864) (not b!4752934))
(check-sat)
