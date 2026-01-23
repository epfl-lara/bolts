; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485948 () Bool)

(assert start!485948)

(declare-datatypes ((K!14620 0))(
  ( (K!14621 (val!19967 Int)) )
))
(declare-datatypes ((V!14866 0))(
  ( (V!14867 (val!19968 Int)) )
))
(declare-datatypes ((tuple2!54936 0))(
  ( (tuple2!54937 (_1!30762 K!14620) (_2!30762 V!14866)) )
))
(declare-datatypes ((List!53252 0))(
  ( (Nil!53128) (Cons!53128 (h!59525 tuple2!54936) (t!360596 List!53252)) )
))
(declare-fun l!13029 () List!53252)

(declare-datatypes ((ListMap!5621 0))(
  ( (ListMap!5622 (toList!6156 List!53252)) )
))
(declare-fun lt!1920660 () ListMap!5621)

(declare-fun b!4754456 () Bool)

(declare-fun lt!1920661 () ListMap!5621)

(declare-fun e!2965967 () Bool)

(declare-fun addToMapMapFromBucket!1602 (List!53252 ListMap!5621) ListMap!5621)

(assert (=> b!4754456 (= e!2965967 (= (addToMapMapFromBucket!1602 l!13029 lt!1920660) (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920661)))))

(declare-fun tp_is_empty!32045 () Bool)

(declare-fun tp!1350517 () Bool)

(declare-fun b!4754457 () Bool)

(declare-fun tp_is_empty!32047 () Bool)

(declare-fun e!2965966 () Bool)

(assert (=> b!4754457 (= e!2965966 (and tp_is_empty!32045 tp_is_empty!32047 tp!1350517))))

(declare-fun b!4754458 () Bool)

(declare-fun res!2016794 () Bool)

(declare-fun e!2965965 () Bool)

(assert (=> b!4754458 (=> (not res!2016794) (not e!2965965))))

(declare-fun noDuplicateKeys!2188 (List!53252) Bool)

(assert (=> b!4754458 (= res!2016794 (noDuplicateKeys!2188 l!13029))))

(declare-fun b!4754459 () Bool)

(declare-fun res!2016795 () Bool)

(assert (=> b!4754459 (=> (not res!2016795) (not e!2965965))))

(get-info :version)

(assert (=> b!4754459 (= res!2016795 ((_ is Cons!53128) l!13029))))

(declare-fun res!2016792 () Bool)

(assert (=> start!485948 (=> (not res!2016792) (not e!2965965))))

(declare-fun key!4572 () K!14620)

(declare-fun containsKey!3594 (List!53252 K!14620) Bool)

(assert (=> start!485948 (= res!2016792 (not (containsKey!3594 l!13029 key!4572)))))

(assert (=> start!485948 e!2965965))

(assert (=> start!485948 e!2965966))

(assert (=> start!485948 tp_is_empty!32045))

(assert (=> start!485948 tp_is_empty!32047))

(declare-fun lhm!63 () ListMap!5621)

(declare-fun e!2965968 () Bool)

(declare-fun inv!68490 (ListMap!5621) Bool)

(assert (=> start!485948 (and (inv!68490 lhm!63) e!2965968)))

(declare-fun b!4754460 () Bool)

(declare-fun tp!1350516 () Bool)

(assert (=> b!4754460 (= e!2965968 tp!1350516)))

(declare-fun b!4754461 () Bool)

(assert (=> b!4754461 (= e!2965965 (not (noDuplicateKeys!2188 (t!360596 l!13029))))))

(assert (=> b!4754461 e!2965967))

(declare-fun res!2016793 () Bool)

(assert (=> b!4754461 (=> (not res!2016793) (not e!2965967))))

(declare-fun lt!1920658 () ListMap!5621)

(declare-fun lt!1920656 () tuple2!54936)

(declare-fun lt!1920657 () ListMap!5621)

(declare-fun eq!1253 (ListMap!5621 ListMap!5621) Bool)

(declare-fun +!2422 (ListMap!5621 tuple2!54936) ListMap!5621)

(assert (=> b!4754461 (= res!2016793 (eq!1253 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920657) (+!2422 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) lt!1920656)))))

(declare-fun value!2966 () V!14866)

(declare-datatypes ((Unit!137144 0))(
  ( (Unit!137145) )
))
(declare-fun lt!1920655 () Unit!137144)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!264 (ListMap!5621 K!14620 V!14866 List!53252) Unit!137144)

(assert (=> b!4754461 (= lt!1920655 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!264 lt!1920658 key!4572 value!2966 (t!360596 l!13029)))))

(assert (=> b!4754461 (eq!1253 lt!1920657 lt!1920661)))

(assert (=> b!4754461 (= lt!1920661 (+!2422 lt!1920660 (h!59525 l!13029)))))

(assert (=> b!4754461 (= lt!1920660 (+!2422 lhm!63 lt!1920656))))

(assert (=> b!4754461 (= lt!1920657 (+!2422 lt!1920658 lt!1920656))))

(assert (=> b!4754461 (= lt!1920656 (tuple2!54937 key!4572 value!2966))))

(declare-fun lt!1920659 () Unit!137144)

(declare-fun addCommutativeForDiffKeys!54 (ListMap!5621 K!14620 V!14866 K!14620 V!14866) Unit!137144)

(assert (=> b!4754461 (= lt!1920659 (addCommutativeForDiffKeys!54 lhm!63 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029)) key!4572 value!2966))))

(assert (=> b!4754461 (= lt!1920658 (+!2422 lhm!63 (h!59525 l!13029)))))

(assert (= (and start!485948 res!2016792) b!4754458))

(assert (= (and b!4754458 res!2016794) b!4754459))

(assert (= (and b!4754459 res!2016795) b!4754461))

(assert (= (and b!4754461 res!2016793) b!4754456))

(assert (= (and start!485948 ((_ is Cons!53128) l!13029)) b!4754457))

(assert (= start!485948 b!4754460))

(declare-fun m!5722925 () Bool)

(assert (=> b!4754456 m!5722925))

(declare-fun m!5722927 () Bool)

(assert (=> b!4754456 m!5722927))

(declare-fun m!5722929 () Bool)

(assert (=> b!4754458 m!5722929))

(declare-fun m!5722931 () Bool)

(assert (=> start!485948 m!5722931))

(declare-fun m!5722933 () Bool)

(assert (=> start!485948 m!5722933))

(declare-fun m!5722935 () Bool)

(assert (=> b!4754461 m!5722935))

(declare-fun m!5722937 () Bool)

(assert (=> b!4754461 m!5722937))

(declare-fun m!5722939 () Bool)

(assert (=> b!4754461 m!5722939))

(assert (=> b!4754461 m!5722937))

(declare-fun m!5722941 () Bool)

(assert (=> b!4754461 m!5722941))

(declare-fun m!5722943 () Bool)

(assert (=> b!4754461 m!5722943))

(declare-fun m!5722945 () Bool)

(assert (=> b!4754461 m!5722945))

(assert (=> b!4754461 m!5722939))

(declare-fun m!5722947 () Bool)

(assert (=> b!4754461 m!5722947))

(declare-fun m!5722949 () Bool)

(assert (=> b!4754461 m!5722949))

(declare-fun m!5722951 () Bool)

(assert (=> b!4754461 m!5722951))

(declare-fun m!5722953 () Bool)

(assert (=> b!4754461 m!5722953))

(declare-fun m!5722955 () Bool)

(assert (=> b!4754461 m!5722955))

(assert (=> b!4754461 m!5722935))

(declare-fun m!5722957 () Bool)

(assert (=> b!4754461 m!5722957))

(check-sat tp_is_empty!32047 (not start!485948) (not b!4754458) (not b!4754456) (not b!4754457) (not b!4754461) tp_is_empty!32045 (not b!4754460))
(check-sat)
(get-model)

(declare-fun b!4754519 () Bool)

(assert (=> b!4754519 true))

(declare-fun bs!1146135 () Bool)

(declare-fun b!4754516 () Bool)

(assert (= bs!1146135 (and b!4754516 b!4754519)))

(declare-fun lambda!222962 () Int)

(declare-fun lambda!222961 () Int)

(assert (=> bs!1146135 (= lambda!222962 lambda!222961)))

(assert (=> b!4754516 true))

(declare-fun lambda!222963 () Int)

(declare-fun lt!1920848 () ListMap!5621)

(assert (=> bs!1146135 (= (= lt!1920848 lt!1920660) (= lambda!222963 lambda!222961))))

(assert (=> b!4754516 (= (= lt!1920848 lt!1920660) (= lambda!222963 lambda!222962))))

(assert (=> b!4754516 true))

(declare-fun bs!1146136 () Bool)

(declare-fun d!1520286 () Bool)

(assert (= bs!1146136 (and d!1520286 b!4754519)))

(declare-fun lt!1920851 () ListMap!5621)

(declare-fun lambda!222964 () Int)

(assert (=> bs!1146136 (= (= lt!1920851 lt!1920660) (= lambda!222964 lambda!222961))))

(declare-fun bs!1146137 () Bool)

(assert (= bs!1146137 (and d!1520286 b!4754516)))

(assert (=> bs!1146137 (= (= lt!1920851 lt!1920660) (= lambda!222964 lambda!222962))))

(assert (=> bs!1146137 (= (= lt!1920851 lt!1920848) (= lambda!222964 lambda!222963))))

(assert (=> d!1520286 true))

(declare-fun call!333354 () Bool)

(declare-fun bm!333347 () Bool)

(declare-fun c!811608 () Bool)

(declare-fun forall!11778 (List!53252 Int) Bool)

(assert (=> bm!333347 (= call!333354 (forall!11778 (toList!6156 lt!1920660) (ite c!811608 lambda!222961 lambda!222963)))))

(declare-fun e!2966003 () ListMap!5621)

(assert (=> b!4754516 (= e!2966003 lt!1920848)))

(declare-fun lt!1920863 () ListMap!5621)

(assert (=> b!4754516 (= lt!1920863 (+!2422 lt!1920660 (h!59525 l!13029)))))

(assert (=> b!4754516 (= lt!1920848 (addToMapMapFromBucket!1602 (t!360596 l!13029) (+!2422 lt!1920660 (h!59525 l!13029))))))

(declare-fun lt!1920856 () Unit!137144)

(declare-fun call!333353 () Unit!137144)

(assert (=> b!4754516 (= lt!1920856 call!333353)))

(assert (=> b!4754516 (forall!11778 (toList!6156 lt!1920660) lambda!222962)))

(declare-fun lt!1920854 () Unit!137144)

(assert (=> b!4754516 (= lt!1920854 lt!1920856)))

(declare-fun call!333352 () Bool)

(assert (=> b!4754516 call!333352))

(declare-fun lt!1920864 () Unit!137144)

(declare-fun Unit!137168 () Unit!137144)

(assert (=> b!4754516 (= lt!1920864 Unit!137168)))

(assert (=> b!4754516 (forall!11778 (t!360596 l!13029) lambda!222963)))

(declare-fun lt!1920849 () Unit!137144)

(declare-fun Unit!137169 () Unit!137144)

(assert (=> b!4754516 (= lt!1920849 Unit!137169)))

(declare-fun lt!1920860 () Unit!137144)

(declare-fun Unit!137170 () Unit!137144)

(assert (=> b!4754516 (= lt!1920860 Unit!137170)))

(declare-fun lt!1920852 () Unit!137144)

(declare-fun forallContained!3804 (List!53252 Int tuple2!54936) Unit!137144)

(assert (=> b!4754516 (= lt!1920852 (forallContained!3804 (toList!6156 lt!1920863) lambda!222963 (h!59525 l!13029)))))

(declare-fun contains!16555 (ListMap!5621 K!14620) Bool)

(assert (=> b!4754516 (contains!16555 lt!1920863 (_1!30762 (h!59525 l!13029)))))

(declare-fun lt!1920846 () Unit!137144)

(declare-fun Unit!137171 () Unit!137144)

(assert (=> b!4754516 (= lt!1920846 Unit!137171)))

(assert (=> b!4754516 (contains!16555 lt!1920848 (_1!30762 (h!59525 l!13029)))))

(declare-fun lt!1920862 () Unit!137144)

(declare-fun Unit!137172 () Unit!137144)

(assert (=> b!4754516 (= lt!1920862 Unit!137172)))

(assert (=> b!4754516 (forall!11778 l!13029 lambda!222963)))

(declare-fun lt!1920845 () Unit!137144)

(declare-fun Unit!137173 () Unit!137144)

(assert (=> b!4754516 (= lt!1920845 Unit!137173)))

(assert (=> b!4754516 (forall!11778 (toList!6156 lt!1920863) lambda!222963)))

(declare-fun lt!1920850 () Unit!137144)

(declare-fun Unit!137174 () Unit!137144)

(assert (=> b!4754516 (= lt!1920850 Unit!137174)))

(declare-fun lt!1920847 () Unit!137144)

(declare-fun Unit!137175 () Unit!137144)

(assert (=> b!4754516 (= lt!1920847 Unit!137175)))

(declare-fun lt!1920858 () Unit!137144)

(declare-fun addForallContainsKeyThenBeforeAdding!892 (ListMap!5621 ListMap!5621 K!14620 V!14866) Unit!137144)

(assert (=> b!4754516 (= lt!1920858 (addForallContainsKeyThenBeforeAdding!892 lt!1920660 lt!1920848 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029))))))

(assert (=> b!4754516 (forall!11778 (toList!6156 lt!1920660) lambda!222963)))

(declare-fun lt!1920853 () Unit!137144)

(assert (=> b!4754516 (= lt!1920853 lt!1920858)))

(assert (=> b!4754516 call!333354))

(declare-fun lt!1920865 () Unit!137144)

(declare-fun Unit!137176 () Unit!137144)

(assert (=> b!4754516 (= lt!1920865 Unit!137176)))

(declare-fun res!2016832 () Bool)

(assert (=> b!4754516 (= res!2016832 (forall!11778 l!13029 lambda!222963))))

(declare-fun e!2966002 () Bool)

(assert (=> b!4754516 (=> (not res!2016832) (not e!2966002))))

(assert (=> b!4754516 e!2966002))

(declare-fun lt!1920855 () Unit!137144)

(declare-fun Unit!137177 () Unit!137144)

(assert (=> b!4754516 (= lt!1920855 Unit!137177)))

(declare-fun b!4754517 () Bool)

(declare-fun res!2016833 () Bool)

(declare-fun e!2966004 () Bool)

(assert (=> b!4754517 (=> (not res!2016833) (not e!2966004))))

(assert (=> b!4754517 (= res!2016833 (forall!11778 (toList!6156 lt!1920660) lambda!222964))))

(declare-fun bm!333348 () Bool)

(assert (=> bm!333348 (= call!333352 (forall!11778 (ite c!811608 (toList!6156 lt!1920660) (toList!6156 lt!1920863)) (ite c!811608 lambda!222961 lambda!222963)))))

(assert (=> b!4754519 (= e!2966003 lt!1920660)))

(declare-fun lt!1920859 () Unit!137144)

(assert (=> b!4754519 (= lt!1920859 call!333353)))

(assert (=> b!4754519 call!333354))

(declare-fun lt!1920861 () Unit!137144)

(assert (=> b!4754519 (= lt!1920861 lt!1920859)))

(assert (=> b!4754519 call!333352))

(declare-fun lt!1920857 () Unit!137144)

(declare-fun Unit!137178 () Unit!137144)

(assert (=> b!4754519 (= lt!1920857 Unit!137178)))

(declare-fun bm!333349 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!893 (ListMap!5621) Unit!137144)

(assert (=> bm!333349 (= call!333353 (lemmaContainsAllItsOwnKeys!893 lt!1920660))))

(declare-fun b!4754520 () Bool)

(assert (=> b!4754520 (= e!2966002 (forall!11778 (toList!6156 lt!1920660) lambda!222963))))

(assert (=> d!1520286 e!2966004))

(declare-fun res!2016834 () Bool)

(assert (=> d!1520286 (=> (not res!2016834) (not e!2966004))))

(assert (=> d!1520286 (= res!2016834 (forall!11778 l!13029 lambda!222964))))

(assert (=> d!1520286 (= lt!1920851 e!2966003)))

(assert (=> d!1520286 (= c!811608 ((_ is Nil!53128) l!13029))))

(assert (=> d!1520286 (noDuplicateKeys!2188 l!13029)))

(assert (=> d!1520286 (= (addToMapMapFromBucket!1602 l!13029 lt!1920660) lt!1920851)))

(declare-fun b!4754518 () Bool)

(declare-fun invariantList!1616 (List!53252) Bool)

(assert (=> b!4754518 (= e!2966004 (invariantList!1616 (toList!6156 lt!1920851)))))

(assert (= (and d!1520286 c!811608) b!4754519))

(assert (= (and d!1520286 (not c!811608)) b!4754516))

(assert (= (and b!4754516 res!2016832) b!4754520))

(assert (= (or b!4754519 b!4754516) bm!333347))

(assert (= (or b!4754519 b!4754516) bm!333348))

(assert (= (or b!4754519 b!4754516) bm!333349))

(assert (= (and d!1520286 res!2016834) b!4754517))

(assert (= (and b!4754517 res!2016833) b!4754518))

(declare-fun m!5723153 () Bool)

(assert (=> bm!333348 m!5723153))

(declare-fun m!5723155 () Bool)

(assert (=> bm!333347 m!5723155))

(declare-fun m!5723157 () Bool)

(assert (=> b!4754518 m!5723157))

(declare-fun m!5723159 () Bool)

(assert (=> bm!333349 m!5723159))

(declare-fun m!5723161 () Bool)

(assert (=> d!1520286 m!5723161))

(assert (=> d!1520286 m!5722929))

(declare-fun m!5723163 () Bool)

(assert (=> b!4754517 m!5723163))

(declare-fun m!5723165 () Bool)

(assert (=> b!4754520 m!5723165))

(declare-fun m!5723167 () Bool)

(assert (=> b!4754516 m!5723167))

(declare-fun m!5723169 () Bool)

(assert (=> b!4754516 m!5723169))

(assert (=> b!4754516 m!5722951))

(declare-fun m!5723171 () Bool)

(assert (=> b!4754516 m!5723171))

(declare-fun m!5723173 () Bool)

(assert (=> b!4754516 m!5723173))

(declare-fun m!5723175 () Bool)

(assert (=> b!4754516 m!5723175))

(declare-fun m!5723177 () Bool)

(assert (=> b!4754516 m!5723177))

(declare-fun m!5723179 () Bool)

(assert (=> b!4754516 m!5723179))

(assert (=> b!4754516 m!5723175))

(assert (=> b!4754516 m!5723165))

(assert (=> b!4754516 m!5722951))

(declare-fun m!5723181 () Bool)

(assert (=> b!4754516 m!5723181))

(declare-fun m!5723183 () Bool)

(assert (=> b!4754516 m!5723183))

(assert (=> b!4754456 d!1520286))

(declare-fun bs!1146138 () Bool)

(declare-fun b!4754530 () Bool)

(assert (= bs!1146138 (and b!4754530 b!4754519)))

(declare-fun lambda!222965 () Int)

(assert (=> bs!1146138 (= (= lt!1920661 lt!1920660) (= lambda!222965 lambda!222961))))

(declare-fun bs!1146139 () Bool)

(assert (= bs!1146139 (and b!4754530 b!4754516)))

(assert (=> bs!1146139 (= (= lt!1920661 lt!1920660) (= lambda!222965 lambda!222962))))

(assert (=> bs!1146139 (= (= lt!1920661 lt!1920848) (= lambda!222965 lambda!222963))))

(declare-fun bs!1146140 () Bool)

(assert (= bs!1146140 (and b!4754530 d!1520286)))

(assert (=> bs!1146140 (= (= lt!1920661 lt!1920851) (= lambda!222965 lambda!222964))))

(assert (=> b!4754530 true))

(declare-fun bs!1146141 () Bool)

(declare-fun b!4754527 () Bool)

(assert (= bs!1146141 (and b!4754527 b!4754519)))

(declare-fun lambda!222966 () Int)

(assert (=> bs!1146141 (= (= lt!1920661 lt!1920660) (= lambda!222966 lambda!222961))))

(declare-fun bs!1146142 () Bool)

(assert (= bs!1146142 (and b!4754527 d!1520286)))

(assert (=> bs!1146142 (= (= lt!1920661 lt!1920851) (= lambda!222966 lambda!222964))))

(declare-fun bs!1146143 () Bool)

(assert (= bs!1146143 (and b!4754527 b!4754530)))

(assert (=> bs!1146143 (= lambda!222966 lambda!222965)))

(declare-fun bs!1146144 () Bool)

(assert (= bs!1146144 (and b!4754527 b!4754516)))

(assert (=> bs!1146144 (= (= lt!1920661 lt!1920660) (= lambda!222966 lambda!222962))))

(assert (=> bs!1146144 (= (= lt!1920661 lt!1920848) (= lambda!222966 lambda!222963))))

(assert (=> b!4754527 true))

(declare-fun lt!1920877 () ListMap!5621)

(declare-fun lambda!222967 () Int)

(assert (=> b!4754527 (= (= lt!1920877 lt!1920661) (= lambda!222967 lambda!222966))))

(assert (=> bs!1146141 (= (= lt!1920877 lt!1920660) (= lambda!222967 lambda!222961))))

(assert (=> bs!1146142 (= (= lt!1920877 lt!1920851) (= lambda!222967 lambda!222964))))

(assert (=> bs!1146143 (= (= lt!1920877 lt!1920661) (= lambda!222967 lambda!222965))))

(assert (=> bs!1146144 (= (= lt!1920877 lt!1920660) (= lambda!222967 lambda!222962))))

(assert (=> bs!1146144 (= (= lt!1920877 lt!1920848) (= lambda!222967 lambda!222963))))

(assert (=> b!4754527 true))

(declare-fun bs!1146145 () Bool)

(declare-fun d!1520310 () Bool)

(assert (= bs!1146145 (and d!1520310 b!4754527)))

(declare-fun lt!1920880 () ListMap!5621)

(declare-fun lambda!222968 () Int)

(assert (=> bs!1146145 (= (= lt!1920880 lt!1920661) (= lambda!222968 lambda!222966))))

(assert (=> bs!1146145 (= (= lt!1920880 lt!1920877) (= lambda!222968 lambda!222967))))

(declare-fun bs!1146146 () Bool)

(assert (= bs!1146146 (and d!1520310 b!4754519)))

(assert (=> bs!1146146 (= (= lt!1920880 lt!1920660) (= lambda!222968 lambda!222961))))

(declare-fun bs!1146147 () Bool)

(assert (= bs!1146147 (and d!1520310 d!1520286)))

(assert (=> bs!1146147 (= (= lt!1920880 lt!1920851) (= lambda!222968 lambda!222964))))

(declare-fun bs!1146148 () Bool)

(assert (= bs!1146148 (and d!1520310 b!4754530)))

(assert (=> bs!1146148 (= (= lt!1920880 lt!1920661) (= lambda!222968 lambda!222965))))

(declare-fun bs!1146149 () Bool)

(assert (= bs!1146149 (and d!1520310 b!4754516)))

(assert (=> bs!1146149 (= (= lt!1920880 lt!1920660) (= lambda!222968 lambda!222962))))

(assert (=> bs!1146149 (= (= lt!1920880 lt!1920848) (= lambda!222968 lambda!222963))))

(assert (=> d!1520310 true))

(declare-fun bm!333350 () Bool)

(declare-fun call!333357 () Bool)

(declare-fun c!811609 () Bool)

(assert (=> bm!333350 (= call!333357 (forall!11778 (toList!6156 lt!1920661) (ite c!811609 lambda!222965 lambda!222967)))))

(declare-fun e!2966008 () ListMap!5621)

(assert (=> b!4754527 (= e!2966008 lt!1920877)))

(declare-fun lt!1920892 () ListMap!5621)

(assert (=> b!4754527 (= lt!1920892 (+!2422 lt!1920661 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754527 (= lt!1920877 (addToMapMapFromBucket!1602 (t!360596 (t!360596 l!13029)) (+!2422 lt!1920661 (h!59525 (t!360596 l!13029)))))))

(declare-fun lt!1920885 () Unit!137144)

(declare-fun call!333356 () Unit!137144)

(assert (=> b!4754527 (= lt!1920885 call!333356)))

(assert (=> b!4754527 (forall!11778 (toList!6156 lt!1920661) lambda!222966)))

(declare-fun lt!1920883 () Unit!137144)

(assert (=> b!4754527 (= lt!1920883 lt!1920885)))

(declare-fun call!333355 () Bool)

(assert (=> b!4754527 call!333355))

(declare-fun lt!1920893 () Unit!137144)

(declare-fun Unit!137188 () Unit!137144)

(assert (=> b!4754527 (= lt!1920893 Unit!137188)))

(assert (=> b!4754527 (forall!11778 (t!360596 (t!360596 l!13029)) lambda!222967)))

(declare-fun lt!1920878 () Unit!137144)

(declare-fun Unit!137189 () Unit!137144)

(assert (=> b!4754527 (= lt!1920878 Unit!137189)))

(declare-fun lt!1920889 () Unit!137144)

(declare-fun Unit!137190 () Unit!137144)

(assert (=> b!4754527 (= lt!1920889 Unit!137190)))

(declare-fun lt!1920881 () Unit!137144)

(assert (=> b!4754527 (= lt!1920881 (forallContained!3804 (toList!6156 lt!1920892) lambda!222967 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754527 (contains!16555 lt!1920892 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920875 () Unit!137144)

(declare-fun Unit!137192 () Unit!137144)

(assert (=> b!4754527 (= lt!1920875 Unit!137192)))

(assert (=> b!4754527 (contains!16555 lt!1920877 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920891 () Unit!137144)

(declare-fun Unit!137194 () Unit!137144)

(assert (=> b!4754527 (= lt!1920891 Unit!137194)))

(assert (=> b!4754527 (forall!11778 (t!360596 l!13029) lambda!222967)))

(declare-fun lt!1920874 () Unit!137144)

(declare-fun Unit!137195 () Unit!137144)

(assert (=> b!4754527 (= lt!1920874 Unit!137195)))

(assert (=> b!4754527 (forall!11778 (toList!6156 lt!1920892) lambda!222967)))

(declare-fun lt!1920879 () Unit!137144)

(declare-fun Unit!137196 () Unit!137144)

(assert (=> b!4754527 (= lt!1920879 Unit!137196)))

(declare-fun lt!1920876 () Unit!137144)

(declare-fun Unit!137197 () Unit!137144)

(assert (=> b!4754527 (= lt!1920876 Unit!137197)))

(declare-fun lt!1920887 () Unit!137144)

(assert (=> b!4754527 (= lt!1920887 (addForallContainsKeyThenBeforeAdding!892 lt!1920661 lt!1920877 (_1!30762 (h!59525 (t!360596 l!13029))) (_2!30762 (h!59525 (t!360596 l!13029)))))))

(assert (=> b!4754527 (forall!11778 (toList!6156 lt!1920661) lambda!222967)))

(declare-fun lt!1920882 () Unit!137144)

(assert (=> b!4754527 (= lt!1920882 lt!1920887)))

(assert (=> b!4754527 call!333357))

(declare-fun lt!1920894 () Unit!137144)

(declare-fun Unit!137198 () Unit!137144)

(assert (=> b!4754527 (= lt!1920894 Unit!137198)))

(declare-fun res!2016839 () Bool)

(assert (=> b!4754527 (= res!2016839 (forall!11778 (t!360596 l!13029) lambda!222967))))

(declare-fun e!2966007 () Bool)

(assert (=> b!4754527 (=> (not res!2016839) (not e!2966007))))

(assert (=> b!4754527 e!2966007))

(declare-fun lt!1920884 () Unit!137144)

(declare-fun Unit!137199 () Unit!137144)

(assert (=> b!4754527 (= lt!1920884 Unit!137199)))

(declare-fun b!4754528 () Bool)

(declare-fun res!2016840 () Bool)

(declare-fun e!2966009 () Bool)

(assert (=> b!4754528 (=> (not res!2016840) (not e!2966009))))

(assert (=> b!4754528 (= res!2016840 (forall!11778 (toList!6156 lt!1920661) lambda!222968))))

(declare-fun bm!333351 () Bool)

(assert (=> bm!333351 (= call!333355 (forall!11778 (ite c!811609 (toList!6156 lt!1920661) (toList!6156 lt!1920892)) (ite c!811609 lambda!222965 lambda!222967)))))

(assert (=> b!4754530 (= e!2966008 lt!1920661)))

(declare-fun lt!1920888 () Unit!137144)

(assert (=> b!4754530 (= lt!1920888 call!333356)))

(assert (=> b!4754530 call!333357))

(declare-fun lt!1920890 () Unit!137144)

(assert (=> b!4754530 (= lt!1920890 lt!1920888)))

(assert (=> b!4754530 call!333355))

(declare-fun lt!1920886 () Unit!137144)

(declare-fun Unit!137200 () Unit!137144)

(assert (=> b!4754530 (= lt!1920886 Unit!137200)))

(declare-fun bm!333352 () Bool)

(assert (=> bm!333352 (= call!333356 (lemmaContainsAllItsOwnKeys!893 lt!1920661))))

(declare-fun b!4754531 () Bool)

(assert (=> b!4754531 (= e!2966007 (forall!11778 (toList!6156 lt!1920661) lambda!222967))))

(assert (=> d!1520310 e!2966009))

(declare-fun res!2016841 () Bool)

(assert (=> d!1520310 (=> (not res!2016841) (not e!2966009))))

(assert (=> d!1520310 (= res!2016841 (forall!11778 (t!360596 l!13029) lambda!222968))))

(assert (=> d!1520310 (= lt!1920880 e!2966008)))

(assert (=> d!1520310 (= c!811609 ((_ is Nil!53128) (t!360596 l!13029)))))

(assert (=> d!1520310 (noDuplicateKeys!2188 (t!360596 l!13029))))

(assert (=> d!1520310 (= (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920661) lt!1920880)))

(declare-fun b!4754529 () Bool)

(assert (=> b!4754529 (= e!2966009 (invariantList!1616 (toList!6156 lt!1920880)))))

(assert (= (and d!1520310 c!811609) b!4754530))

(assert (= (and d!1520310 (not c!811609)) b!4754527))

(assert (= (and b!4754527 res!2016839) b!4754531))

(assert (= (or b!4754530 b!4754527) bm!333350))

(assert (= (or b!4754530 b!4754527) bm!333351))

(assert (= (or b!4754530 b!4754527) bm!333352))

(assert (= (and d!1520310 res!2016841) b!4754528))

(assert (= (and b!4754528 res!2016840) b!4754529))

(declare-fun m!5723197 () Bool)

(assert (=> bm!333351 m!5723197))

(declare-fun m!5723199 () Bool)

(assert (=> bm!333350 m!5723199))

(declare-fun m!5723201 () Bool)

(assert (=> b!4754529 m!5723201))

(declare-fun m!5723203 () Bool)

(assert (=> bm!333352 m!5723203))

(declare-fun m!5723205 () Bool)

(assert (=> d!1520310 m!5723205))

(assert (=> d!1520310 m!5722943))

(declare-fun m!5723207 () Bool)

(assert (=> b!4754528 m!5723207))

(declare-fun m!5723209 () Bool)

(assert (=> b!4754531 m!5723209))

(declare-fun m!5723211 () Bool)

(assert (=> b!4754527 m!5723211))

(declare-fun m!5723213 () Bool)

(assert (=> b!4754527 m!5723213))

(declare-fun m!5723215 () Bool)

(assert (=> b!4754527 m!5723215))

(declare-fun m!5723217 () Bool)

(assert (=> b!4754527 m!5723217))

(declare-fun m!5723219 () Bool)

(assert (=> b!4754527 m!5723219))

(declare-fun m!5723221 () Bool)

(assert (=> b!4754527 m!5723221))

(declare-fun m!5723223 () Bool)

(assert (=> b!4754527 m!5723223))

(declare-fun m!5723225 () Bool)

(assert (=> b!4754527 m!5723225))

(assert (=> b!4754527 m!5723221))

(assert (=> b!4754527 m!5723209))

(assert (=> b!4754527 m!5723215))

(declare-fun m!5723233 () Bool)

(assert (=> b!4754527 m!5723233))

(declare-fun m!5723237 () Bool)

(assert (=> b!4754527 m!5723237))

(assert (=> b!4754456 d!1520310))

(declare-fun d!1520314 () Bool)

(declare-fun e!2966026 () Bool)

(assert (=> d!1520314 e!2966026))

(declare-fun res!2016859 () Bool)

(assert (=> d!1520314 (=> (not res!2016859) (not e!2966026))))

(declare-fun lt!1920915 () ListMap!5621)

(assert (=> d!1520314 (= res!2016859 (contains!16555 lt!1920915 (_1!30762 lt!1920656)))))

(declare-fun lt!1920914 () List!53252)

(assert (=> d!1520314 (= lt!1920915 (ListMap!5622 lt!1920914))))

(declare-fun lt!1920917 () Unit!137144)

(declare-fun lt!1920916 () Unit!137144)

(assert (=> d!1520314 (= lt!1920917 lt!1920916)))

(declare-datatypes ((Option!12552 0))(
  ( (None!12551) (Some!12551 (v!47252 V!14866)) )
))
(declare-fun getValueByKey!2102 (List!53252 K!14620) Option!12552)

(assert (=> d!1520314 (= (getValueByKey!2102 lt!1920914 (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1179 (List!53252 K!14620 V!14866) Unit!137144)

(assert (=> d!1520314 (= lt!1920916 (lemmaContainsTupThenGetReturnValue!1179 lt!1920914 (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(declare-fun insertNoDuplicatedKeys!687 (List!53252 K!14620 V!14866) List!53252)

(assert (=> d!1520314 (= lt!1920914 (insertNoDuplicatedKeys!687 (toList!6156 lhm!63) (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(assert (=> d!1520314 (= (+!2422 lhm!63 lt!1920656) lt!1920915)))

(declare-fun b!4754554 () Bool)

(declare-fun res!2016858 () Bool)

(assert (=> b!4754554 (=> (not res!2016858) (not e!2966026))))

(assert (=> b!4754554 (= res!2016858 (= (getValueByKey!2102 (toList!6156 lt!1920915) (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656))))))

(declare-fun b!4754555 () Bool)

(declare-fun contains!16556 (List!53252 tuple2!54936) Bool)

(assert (=> b!4754555 (= e!2966026 (contains!16556 (toList!6156 lt!1920915) lt!1920656))))

(assert (= (and d!1520314 res!2016859) b!4754554))

(assert (= (and b!4754554 res!2016858) b!4754555))

(declare-fun m!5723259 () Bool)

(assert (=> d!1520314 m!5723259))

(declare-fun m!5723261 () Bool)

(assert (=> d!1520314 m!5723261))

(declare-fun m!5723263 () Bool)

(assert (=> d!1520314 m!5723263))

(declare-fun m!5723265 () Bool)

(assert (=> d!1520314 m!5723265))

(declare-fun m!5723267 () Bool)

(assert (=> b!4754554 m!5723267))

(declare-fun m!5723269 () Bool)

(assert (=> b!4754555 m!5723269))

(assert (=> b!4754461 d!1520314))

(declare-fun d!1520324 () Bool)

(declare-fun res!2016864 () Bool)

(declare-fun e!2966031 () Bool)

(assert (=> d!1520324 (=> res!2016864 e!2966031)))

(assert (=> d!1520324 (= res!2016864 (not ((_ is Cons!53128) (t!360596 l!13029))))))

(assert (=> d!1520324 (= (noDuplicateKeys!2188 (t!360596 l!13029)) e!2966031)))

(declare-fun b!4754560 () Bool)

(declare-fun e!2966032 () Bool)

(assert (=> b!4754560 (= e!2966031 e!2966032)))

(declare-fun res!2016865 () Bool)

(assert (=> b!4754560 (=> (not res!2016865) (not e!2966032))))

(assert (=> b!4754560 (= res!2016865 (not (containsKey!3594 (t!360596 (t!360596 l!13029)) (_1!30762 (h!59525 (t!360596 l!13029))))))))

(declare-fun b!4754561 () Bool)

(assert (=> b!4754561 (= e!2966032 (noDuplicateKeys!2188 (t!360596 (t!360596 l!13029))))))

(assert (= (and d!1520324 (not res!2016864)) b!4754560))

(assert (= (and b!4754560 res!2016865) b!4754561))

(declare-fun m!5723271 () Bool)

(assert (=> b!4754560 m!5723271))

(declare-fun m!5723273 () Bool)

(assert (=> b!4754561 m!5723273))

(assert (=> b!4754461 d!1520324))

(declare-fun d!1520326 () Bool)

(assert (=> d!1520326 (eq!1253 (addToMapMapFromBucket!1602 (t!360596 l!13029) (+!2422 lt!1920658 (tuple2!54937 key!4572 value!2966))) (+!2422 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) (tuple2!54937 key!4572 value!2966)))))

(declare-fun lt!1920920 () Unit!137144)

(declare-fun choose!33872 (ListMap!5621 K!14620 V!14866 List!53252) Unit!137144)

(assert (=> d!1520326 (= lt!1920920 (choose!33872 lt!1920658 key!4572 value!2966 (t!360596 l!13029)))))

(assert (=> d!1520326 (not (containsKey!3594 (t!360596 l!13029) key!4572))))

(assert (=> d!1520326 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!264 lt!1920658 key!4572 value!2966 (t!360596 l!13029)) lt!1920920)))

(declare-fun bs!1146152 () Bool)

(assert (= bs!1146152 d!1520326))

(declare-fun m!5723275 () Bool)

(assert (=> bs!1146152 m!5723275))

(assert (=> bs!1146152 m!5722935))

(declare-fun m!5723277 () Bool)

(assert (=> bs!1146152 m!5723277))

(declare-fun m!5723279 () Bool)

(assert (=> bs!1146152 m!5723279))

(assert (=> bs!1146152 m!5723277))

(declare-fun m!5723281 () Bool)

(assert (=> bs!1146152 m!5723281))

(declare-fun m!5723283 () Bool)

(assert (=> bs!1146152 m!5723283))

(assert (=> bs!1146152 m!5723283))

(assert (=> bs!1146152 m!5723279))

(declare-fun m!5723285 () Bool)

(assert (=> bs!1146152 m!5723285))

(assert (=> bs!1146152 m!5722935))

(assert (=> b!4754461 d!1520326))

(declare-fun d!1520328 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9553 (List!53252) (InoxSet tuple2!54936))

(assert (=> d!1520328 (= (eq!1253 lt!1920657 lt!1920661) (= (content!9553 (toList!6156 lt!1920657)) (content!9553 (toList!6156 lt!1920661))))))

(declare-fun bs!1146153 () Bool)

(assert (= bs!1146153 d!1520328))

(declare-fun m!5723287 () Bool)

(assert (=> bs!1146153 m!5723287))

(declare-fun m!5723289 () Bool)

(assert (=> bs!1146153 m!5723289))

(assert (=> b!4754461 d!1520328))

(declare-fun d!1520330 () Bool)

(declare-fun e!2966033 () Bool)

(assert (=> d!1520330 e!2966033))

(declare-fun res!2016867 () Bool)

(assert (=> d!1520330 (=> (not res!2016867) (not e!2966033))))

(declare-fun lt!1920922 () ListMap!5621)

(assert (=> d!1520330 (= res!2016867 (contains!16555 lt!1920922 (_1!30762 lt!1920656)))))

(declare-fun lt!1920921 () List!53252)

(assert (=> d!1520330 (= lt!1920922 (ListMap!5622 lt!1920921))))

(declare-fun lt!1920924 () Unit!137144)

(declare-fun lt!1920923 () Unit!137144)

(assert (=> d!1520330 (= lt!1920924 lt!1920923)))

(assert (=> d!1520330 (= (getValueByKey!2102 lt!1920921 (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656)))))

(assert (=> d!1520330 (= lt!1920923 (lemmaContainsTupThenGetReturnValue!1179 lt!1920921 (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(assert (=> d!1520330 (= lt!1920921 (insertNoDuplicatedKeys!687 (toList!6156 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658)) (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(assert (=> d!1520330 (= (+!2422 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) lt!1920656) lt!1920922)))

(declare-fun b!4754562 () Bool)

(declare-fun res!2016866 () Bool)

(assert (=> b!4754562 (=> (not res!2016866) (not e!2966033))))

(assert (=> b!4754562 (= res!2016866 (= (getValueByKey!2102 (toList!6156 lt!1920922) (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656))))))

(declare-fun b!4754563 () Bool)

(assert (=> b!4754563 (= e!2966033 (contains!16556 (toList!6156 lt!1920922) lt!1920656))))

(assert (= (and d!1520330 res!2016867) b!4754562))

(assert (= (and b!4754562 res!2016866) b!4754563))

(declare-fun m!5723291 () Bool)

(assert (=> d!1520330 m!5723291))

(declare-fun m!5723293 () Bool)

(assert (=> d!1520330 m!5723293))

(declare-fun m!5723295 () Bool)

(assert (=> d!1520330 m!5723295))

(declare-fun m!5723297 () Bool)

(assert (=> d!1520330 m!5723297))

(declare-fun m!5723299 () Bool)

(assert (=> b!4754562 m!5723299))

(declare-fun m!5723301 () Bool)

(assert (=> b!4754563 m!5723301))

(assert (=> b!4754461 d!1520330))

(declare-fun bs!1146154 () Bool)

(declare-fun b!4754567 () Bool)

(assert (= bs!1146154 (and b!4754567 b!4754527)))

(declare-fun lambda!222969 () Int)

(assert (=> bs!1146154 (= (= lt!1920658 lt!1920661) (= lambda!222969 lambda!222966))))

(assert (=> bs!1146154 (= (= lt!1920658 lt!1920877) (= lambda!222969 lambda!222967))))

(declare-fun bs!1146155 () Bool)

(assert (= bs!1146155 (and b!4754567 b!4754519)))

(assert (=> bs!1146155 (= (= lt!1920658 lt!1920660) (= lambda!222969 lambda!222961))))

(declare-fun bs!1146156 () Bool)

(assert (= bs!1146156 (and b!4754567 b!4754530)))

(assert (=> bs!1146156 (= (= lt!1920658 lt!1920661) (= lambda!222969 lambda!222965))))

(declare-fun bs!1146157 () Bool)

(assert (= bs!1146157 (and b!4754567 b!4754516)))

(assert (=> bs!1146157 (= (= lt!1920658 lt!1920660) (= lambda!222969 lambda!222962))))

(assert (=> bs!1146157 (= (= lt!1920658 lt!1920848) (= lambda!222969 lambda!222963))))

(declare-fun bs!1146158 () Bool)

(assert (= bs!1146158 (and b!4754567 d!1520286)))

(assert (=> bs!1146158 (= (= lt!1920658 lt!1920851) (= lambda!222969 lambda!222964))))

(declare-fun bs!1146159 () Bool)

(assert (= bs!1146159 (and b!4754567 d!1520310)))

(assert (=> bs!1146159 (= (= lt!1920658 lt!1920880) (= lambda!222969 lambda!222968))))

(assert (=> b!4754567 true))

(declare-fun bs!1146160 () Bool)

(declare-fun b!4754564 () Bool)

(assert (= bs!1146160 (and b!4754564 b!4754527)))

(declare-fun lambda!222970 () Int)

(assert (=> bs!1146160 (= (= lt!1920658 lt!1920661) (= lambda!222970 lambda!222966))))

(declare-fun bs!1146161 () Bool)

(assert (= bs!1146161 (and b!4754564 b!4754567)))

(assert (=> bs!1146161 (= lambda!222970 lambda!222969)))

(assert (=> bs!1146160 (= (= lt!1920658 lt!1920877) (= lambda!222970 lambda!222967))))

(declare-fun bs!1146162 () Bool)

(assert (= bs!1146162 (and b!4754564 b!4754519)))

(assert (=> bs!1146162 (= (= lt!1920658 lt!1920660) (= lambda!222970 lambda!222961))))

(declare-fun bs!1146163 () Bool)

(assert (= bs!1146163 (and b!4754564 b!4754530)))

(assert (=> bs!1146163 (= (= lt!1920658 lt!1920661) (= lambda!222970 lambda!222965))))

(declare-fun bs!1146164 () Bool)

(assert (= bs!1146164 (and b!4754564 b!4754516)))

(assert (=> bs!1146164 (= (= lt!1920658 lt!1920660) (= lambda!222970 lambda!222962))))

(assert (=> bs!1146164 (= (= lt!1920658 lt!1920848) (= lambda!222970 lambda!222963))))

(declare-fun bs!1146165 () Bool)

(assert (= bs!1146165 (and b!4754564 d!1520286)))

(assert (=> bs!1146165 (= (= lt!1920658 lt!1920851) (= lambda!222970 lambda!222964))))

(declare-fun bs!1146166 () Bool)

(assert (= bs!1146166 (and b!4754564 d!1520310)))

(assert (=> bs!1146166 (= (= lt!1920658 lt!1920880) (= lambda!222970 lambda!222968))))

(assert (=> b!4754564 true))

(declare-fun lt!1920928 () ListMap!5621)

(declare-fun lambda!222971 () Int)

(assert (=> bs!1146160 (= (= lt!1920928 lt!1920661) (= lambda!222971 lambda!222966))))

(assert (=> bs!1146161 (= (= lt!1920928 lt!1920658) (= lambda!222971 lambda!222969))))

(assert (=> bs!1146160 (= (= lt!1920928 lt!1920877) (= lambda!222971 lambda!222967))))

(assert (=> bs!1146162 (= (= lt!1920928 lt!1920660) (= lambda!222971 lambda!222961))))

(assert (=> bs!1146163 (= (= lt!1920928 lt!1920661) (= lambda!222971 lambda!222965))))

(assert (=> bs!1146164 (= (= lt!1920928 lt!1920660) (= lambda!222971 lambda!222962))))

(assert (=> b!4754564 (= (= lt!1920928 lt!1920658) (= lambda!222971 lambda!222970))))

(assert (=> bs!1146164 (= (= lt!1920928 lt!1920848) (= lambda!222971 lambda!222963))))

(assert (=> bs!1146165 (= (= lt!1920928 lt!1920851) (= lambda!222971 lambda!222964))))

(assert (=> bs!1146166 (= (= lt!1920928 lt!1920880) (= lambda!222971 lambda!222968))))

(assert (=> b!4754564 true))

(declare-fun bs!1146167 () Bool)

(declare-fun d!1520332 () Bool)

(assert (= bs!1146167 (and d!1520332 b!4754527)))

(declare-fun lambda!222972 () Int)

(declare-fun lt!1920931 () ListMap!5621)

(assert (=> bs!1146167 (= (= lt!1920931 lt!1920661) (= lambda!222972 lambda!222966))))

(declare-fun bs!1146168 () Bool)

(assert (= bs!1146168 (and d!1520332 b!4754567)))

(assert (=> bs!1146168 (= (= lt!1920931 lt!1920658) (= lambda!222972 lambda!222969))))

(assert (=> bs!1146167 (= (= lt!1920931 lt!1920877) (= lambda!222972 lambda!222967))))

(declare-fun bs!1146169 () Bool)

(assert (= bs!1146169 (and d!1520332 b!4754519)))

(assert (=> bs!1146169 (= (= lt!1920931 lt!1920660) (= lambda!222972 lambda!222961))))

(declare-fun bs!1146170 () Bool)

(assert (= bs!1146170 (and d!1520332 b!4754564)))

(assert (=> bs!1146170 (= (= lt!1920931 lt!1920928) (= lambda!222972 lambda!222971))))

(declare-fun bs!1146171 () Bool)

(assert (= bs!1146171 (and d!1520332 b!4754530)))

(assert (=> bs!1146171 (= (= lt!1920931 lt!1920661) (= lambda!222972 lambda!222965))))

(declare-fun bs!1146172 () Bool)

(assert (= bs!1146172 (and d!1520332 b!4754516)))

(assert (=> bs!1146172 (= (= lt!1920931 lt!1920660) (= lambda!222972 lambda!222962))))

(assert (=> bs!1146170 (= (= lt!1920931 lt!1920658) (= lambda!222972 lambda!222970))))

(assert (=> bs!1146172 (= (= lt!1920931 lt!1920848) (= lambda!222972 lambda!222963))))

(declare-fun bs!1146173 () Bool)

(assert (= bs!1146173 (and d!1520332 d!1520286)))

(assert (=> bs!1146173 (= (= lt!1920931 lt!1920851) (= lambda!222972 lambda!222964))))

(declare-fun bs!1146174 () Bool)

(assert (= bs!1146174 (and d!1520332 d!1520310)))

(assert (=> bs!1146174 (= (= lt!1920931 lt!1920880) (= lambda!222972 lambda!222968))))

(assert (=> d!1520332 true))

(declare-fun bm!333353 () Bool)

(declare-fun c!811610 () Bool)

(declare-fun call!333360 () Bool)

(assert (=> bm!333353 (= call!333360 (forall!11778 (toList!6156 lt!1920658) (ite c!811610 lambda!222969 lambda!222971)))))

(declare-fun e!2966035 () ListMap!5621)

(assert (=> b!4754564 (= e!2966035 lt!1920928)))

(declare-fun lt!1920943 () ListMap!5621)

(assert (=> b!4754564 (= lt!1920943 (+!2422 lt!1920658 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754564 (= lt!1920928 (addToMapMapFromBucket!1602 (t!360596 (t!360596 l!13029)) (+!2422 lt!1920658 (h!59525 (t!360596 l!13029)))))))

(declare-fun lt!1920936 () Unit!137144)

(declare-fun call!333359 () Unit!137144)

(assert (=> b!4754564 (= lt!1920936 call!333359)))

(assert (=> b!4754564 (forall!11778 (toList!6156 lt!1920658) lambda!222970)))

(declare-fun lt!1920934 () Unit!137144)

(assert (=> b!4754564 (= lt!1920934 lt!1920936)))

(declare-fun call!333358 () Bool)

(assert (=> b!4754564 call!333358))

(declare-fun lt!1920944 () Unit!137144)

(declare-fun Unit!137207 () Unit!137144)

(assert (=> b!4754564 (= lt!1920944 Unit!137207)))

(assert (=> b!4754564 (forall!11778 (t!360596 (t!360596 l!13029)) lambda!222971)))

(declare-fun lt!1920929 () Unit!137144)

(declare-fun Unit!137209 () Unit!137144)

(assert (=> b!4754564 (= lt!1920929 Unit!137209)))

(declare-fun lt!1920940 () Unit!137144)

(declare-fun Unit!137211 () Unit!137144)

(assert (=> b!4754564 (= lt!1920940 Unit!137211)))

(declare-fun lt!1920932 () Unit!137144)

(assert (=> b!4754564 (= lt!1920932 (forallContained!3804 (toList!6156 lt!1920943) lambda!222971 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754564 (contains!16555 lt!1920943 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920926 () Unit!137144)

(declare-fun Unit!137213 () Unit!137144)

(assert (=> b!4754564 (= lt!1920926 Unit!137213)))

(assert (=> b!4754564 (contains!16555 lt!1920928 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920942 () Unit!137144)

(declare-fun Unit!137214 () Unit!137144)

(assert (=> b!4754564 (= lt!1920942 Unit!137214)))

(assert (=> b!4754564 (forall!11778 (t!360596 l!13029) lambda!222971)))

(declare-fun lt!1920925 () Unit!137144)

(declare-fun Unit!137216 () Unit!137144)

(assert (=> b!4754564 (= lt!1920925 Unit!137216)))

(assert (=> b!4754564 (forall!11778 (toList!6156 lt!1920943) lambda!222971)))

(declare-fun lt!1920930 () Unit!137144)

(declare-fun Unit!137217 () Unit!137144)

(assert (=> b!4754564 (= lt!1920930 Unit!137217)))

(declare-fun lt!1920927 () Unit!137144)

(declare-fun Unit!137219 () Unit!137144)

(assert (=> b!4754564 (= lt!1920927 Unit!137219)))

(declare-fun lt!1920938 () Unit!137144)

(assert (=> b!4754564 (= lt!1920938 (addForallContainsKeyThenBeforeAdding!892 lt!1920658 lt!1920928 (_1!30762 (h!59525 (t!360596 l!13029))) (_2!30762 (h!59525 (t!360596 l!13029)))))))

(assert (=> b!4754564 (forall!11778 (toList!6156 lt!1920658) lambda!222971)))

(declare-fun lt!1920933 () Unit!137144)

(assert (=> b!4754564 (= lt!1920933 lt!1920938)))

(assert (=> b!4754564 call!333360))

(declare-fun lt!1920945 () Unit!137144)

(declare-fun Unit!137220 () Unit!137144)

(assert (=> b!4754564 (= lt!1920945 Unit!137220)))

(declare-fun res!2016868 () Bool)

(assert (=> b!4754564 (= res!2016868 (forall!11778 (t!360596 l!13029) lambda!222971))))

(declare-fun e!2966034 () Bool)

(assert (=> b!4754564 (=> (not res!2016868) (not e!2966034))))

(assert (=> b!4754564 e!2966034))

(declare-fun lt!1920935 () Unit!137144)

(declare-fun Unit!137221 () Unit!137144)

(assert (=> b!4754564 (= lt!1920935 Unit!137221)))

(declare-fun b!4754565 () Bool)

(declare-fun res!2016869 () Bool)

(declare-fun e!2966036 () Bool)

(assert (=> b!4754565 (=> (not res!2016869) (not e!2966036))))

(assert (=> b!4754565 (= res!2016869 (forall!11778 (toList!6156 lt!1920658) lambda!222972))))

(declare-fun bm!333354 () Bool)

(assert (=> bm!333354 (= call!333358 (forall!11778 (ite c!811610 (toList!6156 lt!1920658) (toList!6156 lt!1920943)) (ite c!811610 lambda!222969 lambda!222971)))))

(assert (=> b!4754567 (= e!2966035 lt!1920658)))

(declare-fun lt!1920939 () Unit!137144)

(assert (=> b!4754567 (= lt!1920939 call!333359)))

(assert (=> b!4754567 call!333360))

(declare-fun lt!1920941 () Unit!137144)

(assert (=> b!4754567 (= lt!1920941 lt!1920939)))

(assert (=> b!4754567 call!333358))

(declare-fun lt!1920937 () Unit!137144)

(declare-fun Unit!137222 () Unit!137144)

(assert (=> b!4754567 (= lt!1920937 Unit!137222)))

(declare-fun bm!333355 () Bool)

(assert (=> bm!333355 (= call!333359 (lemmaContainsAllItsOwnKeys!893 lt!1920658))))

(declare-fun b!4754568 () Bool)

(assert (=> b!4754568 (= e!2966034 (forall!11778 (toList!6156 lt!1920658) lambda!222971))))

(assert (=> d!1520332 e!2966036))

(declare-fun res!2016870 () Bool)

(assert (=> d!1520332 (=> (not res!2016870) (not e!2966036))))

(assert (=> d!1520332 (= res!2016870 (forall!11778 (t!360596 l!13029) lambda!222972))))

(assert (=> d!1520332 (= lt!1920931 e!2966035)))

(assert (=> d!1520332 (= c!811610 ((_ is Nil!53128) (t!360596 l!13029)))))

(assert (=> d!1520332 (noDuplicateKeys!2188 (t!360596 l!13029))))

(assert (=> d!1520332 (= (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) lt!1920931)))

(declare-fun b!4754566 () Bool)

(assert (=> b!4754566 (= e!2966036 (invariantList!1616 (toList!6156 lt!1920931)))))

(assert (= (and d!1520332 c!811610) b!4754567))

(assert (= (and d!1520332 (not c!811610)) b!4754564))

(assert (= (and b!4754564 res!2016868) b!4754568))

(assert (= (or b!4754567 b!4754564) bm!333353))

(assert (= (or b!4754567 b!4754564) bm!333354))

(assert (= (or b!4754567 b!4754564) bm!333355))

(assert (= (and d!1520332 res!2016870) b!4754565))

(assert (= (and b!4754565 res!2016869) b!4754566))

(declare-fun m!5723303 () Bool)

(assert (=> bm!333354 m!5723303))

(declare-fun m!5723305 () Bool)

(assert (=> bm!333353 m!5723305))

(declare-fun m!5723307 () Bool)

(assert (=> b!4754566 m!5723307))

(declare-fun m!5723309 () Bool)

(assert (=> bm!333355 m!5723309))

(declare-fun m!5723311 () Bool)

(assert (=> d!1520332 m!5723311))

(assert (=> d!1520332 m!5722943))

(declare-fun m!5723313 () Bool)

(assert (=> b!4754565 m!5723313))

(declare-fun m!5723315 () Bool)

(assert (=> b!4754568 m!5723315))

(declare-fun m!5723317 () Bool)

(assert (=> b!4754564 m!5723317))

(declare-fun m!5723319 () Bool)

(assert (=> b!4754564 m!5723319))

(declare-fun m!5723321 () Bool)

(assert (=> b!4754564 m!5723321))

(declare-fun m!5723323 () Bool)

(assert (=> b!4754564 m!5723323))

(declare-fun m!5723325 () Bool)

(assert (=> b!4754564 m!5723325))

(declare-fun m!5723327 () Bool)

(assert (=> b!4754564 m!5723327))

(declare-fun m!5723329 () Bool)

(assert (=> b!4754564 m!5723329))

(declare-fun m!5723331 () Bool)

(assert (=> b!4754564 m!5723331))

(assert (=> b!4754564 m!5723327))

(assert (=> b!4754564 m!5723315))

(assert (=> b!4754564 m!5723321))

(declare-fun m!5723333 () Bool)

(assert (=> b!4754564 m!5723333))

(declare-fun m!5723335 () Bool)

(assert (=> b!4754564 m!5723335))

(assert (=> b!4754461 d!1520332))

(declare-fun d!1520334 () Bool)

(assert (=> d!1520334 (= (eq!1253 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920657) (+!2422 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) lt!1920656)) (= (content!9553 (toList!6156 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920657))) (content!9553 (toList!6156 (+!2422 (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920658) lt!1920656)))))))

(declare-fun bs!1146175 () Bool)

(assert (= bs!1146175 d!1520334))

(declare-fun m!5723337 () Bool)

(assert (=> bs!1146175 m!5723337))

(declare-fun m!5723339 () Bool)

(assert (=> bs!1146175 m!5723339))

(assert (=> b!4754461 d!1520334))

(declare-fun d!1520336 () Bool)

(declare-fun e!2966037 () Bool)

(assert (=> d!1520336 e!2966037))

(declare-fun res!2016872 () Bool)

(assert (=> d!1520336 (=> (not res!2016872) (not e!2966037))))

(declare-fun lt!1920947 () ListMap!5621)

(assert (=> d!1520336 (= res!2016872 (contains!16555 lt!1920947 (_1!30762 lt!1920656)))))

(declare-fun lt!1920946 () List!53252)

(assert (=> d!1520336 (= lt!1920947 (ListMap!5622 lt!1920946))))

(declare-fun lt!1920949 () Unit!137144)

(declare-fun lt!1920948 () Unit!137144)

(assert (=> d!1520336 (= lt!1920949 lt!1920948)))

(assert (=> d!1520336 (= (getValueByKey!2102 lt!1920946 (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656)))))

(assert (=> d!1520336 (= lt!1920948 (lemmaContainsTupThenGetReturnValue!1179 lt!1920946 (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(assert (=> d!1520336 (= lt!1920946 (insertNoDuplicatedKeys!687 (toList!6156 lt!1920658) (_1!30762 lt!1920656) (_2!30762 lt!1920656)))))

(assert (=> d!1520336 (= (+!2422 lt!1920658 lt!1920656) lt!1920947)))

(declare-fun b!4754569 () Bool)

(declare-fun res!2016871 () Bool)

(assert (=> b!4754569 (=> (not res!2016871) (not e!2966037))))

(assert (=> b!4754569 (= res!2016871 (= (getValueByKey!2102 (toList!6156 lt!1920947) (_1!30762 lt!1920656)) (Some!12551 (_2!30762 lt!1920656))))))

(declare-fun b!4754570 () Bool)

(assert (=> b!4754570 (= e!2966037 (contains!16556 (toList!6156 lt!1920947) lt!1920656))))

(assert (= (and d!1520336 res!2016872) b!4754569))

(assert (= (and b!4754569 res!2016871) b!4754570))

(declare-fun m!5723341 () Bool)

(assert (=> d!1520336 m!5723341))

(declare-fun m!5723343 () Bool)

(assert (=> d!1520336 m!5723343))

(declare-fun m!5723345 () Bool)

(assert (=> d!1520336 m!5723345))

(declare-fun m!5723347 () Bool)

(assert (=> d!1520336 m!5723347))

(declare-fun m!5723349 () Bool)

(assert (=> b!4754569 m!5723349))

(declare-fun m!5723351 () Bool)

(assert (=> b!4754570 m!5723351))

(assert (=> b!4754461 d!1520336))

(declare-fun d!1520338 () Bool)

(declare-fun e!2966038 () Bool)

(assert (=> d!1520338 e!2966038))

(declare-fun res!2016874 () Bool)

(assert (=> d!1520338 (=> (not res!2016874) (not e!2966038))))

(declare-fun lt!1920951 () ListMap!5621)

(assert (=> d!1520338 (= res!2016874 (contains!16555 lt!1920951 (_1!30762 (h!59525 l!13029))))))

(declare-fun lt!1920950 () List!53252)

(assert (=> d!1520338 (= lt!1920951 (ListMap!5622 lt!1920950))))

(declare-fun lt!1920953 () Unit!137144)

(declare-fun lt!1920952 () Unit!137144)

(assert (=> d!1520338 (= lt!1920953 lt!1920952)))

(assert (=> d!1520338 (= (getValueByKey!2102 lt!1920950 (_1!30762 (h!59525 l!13029))) (Some!12551 (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520338 (= lt!1920952 (lemmaContainsTupThenGetReturnValue!1179 lt!1920950 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520338 (= lt!1920950 (insertNoDuplicatedKeys!687 (toList!6156 lt!1920660) (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520338 (= (+!2422 lt!1920660 (h!59525 l!13029)) lt!1920951)))

(declare-fun b!4754571 () Bool)

(declare-fun res!2016873 () Bool)

(assert (=> b!4754571 (=> (not res!2016873) (not e!2966038))))

(assert (=> b!4754571 (= res!2016873 (= (getValueByKey!2102 (toList!6156 lt!1920951) (_1!30762 (h!59525 l!13029))) (Some!12551 (_2!30762 (h!59525 l!13029)))))))

(declare-fun b!4754572 () Bool)

(assert (=> b!4754572 (= e!2966038 (contains!16556 (toList!6156 lt!1920951) (h!59525 l!13029)))))

(assert (= (and d!1520338 res!2016874) b!4754571))

(assert (= (and b!4754571 res!2016873) b!4754572))

(declare-fun m!5723353 () Bool)

(assert (=> d!1520338 m!5723353))

(declare-fun m!5723355 () Bool)

(assert (=> d!1520338 m!5723355))

(declare-fun m!5723357 () Bool)

(assert (=> d!1520338 m!5723357))

(declare-fun m!5723359 () Bool)

(assert (=> d!1520338 m!5723359))

(declare-fun m!5723361 () Bool)

(assert (=> b!4754571 m!5723361))

(declare-fun m!5723363 () Bool)

(assert (=> b!4754572 m!5723363))

(assert (=> b!4754461 d!1520338))

(declare-fun bs!1146176 () Bool)

(declare-fun b!4754576 () Bool)

(assert (= bs!1146176 (and b!4754576 b!4754527)))

(declare-fun lambda!222973 () Int)

(assert (=> bs!1146176 (= (= lt!1920657 lt!1920661) (= lambda!222973 lambda!222966))))

(declare-fun bs!1146177 () Bool)

(assert (= bs!1146177 (and b!4754576 b!4754567)))

(assert (=> bs!1146177 (= (= lt!1920657 lt!1920658) (= lambda!222973 lambda!222969))))

(assert (=> bs!1146176 (= (= lt!1920657 lt!1920877) (= lambda!222973 lambda!222967))))

(declare-fun bs!1146178 () Bool)

(assert (= bs!1146178 (and b!4754576 b!4754519)))

(assert (=> bs!1146178 (= (= lt!1920657 lt!1920660) (= lambda!222973 lambda!222961))))

(declare-fun bs!1146179 () Bool)

(assert (= bs!1146179 (and b!4754576 b!4754564)))

(assert (=> bs!1146179 (= (= lt!1920657 lt!1920928) (= lambda!222973 lambda!222971))))

(declare-fun bs!1146180 () Bool)

(assert (= bs!1146180 (and b!4754576 b!4754516)))

(assert (=> bs!1146180 (= (= lt!1920657 lt!1920660) (= lambda!222973 lambda!222962))))

(assert (=> bs!1146179 (= (= lt!1920657 lt!1920658) (= lambda!222973 lambda!222970))))

(assert (=> bs!1146180 (= (= lt!1920657 lt!1920848) (= lambda!222973 lambda!222963))))

(declare-fun bs!1146181 () Bool)

(assert (= bs!1146181 (and b!4754576 d!1520286)))

(assert (=> bs!1146181 (= (= lt!1920657 lt!1920851) (= lambda!222973 lambda!222964))))

(declare-fun bs!1146182 () Bool)

(assert (= bs!1146182 (and b!4754576 d!1520310)))

(assert (=> bs!1146182 (= (= lt!1920657 lt!1920880) (= lambda!222973 lambda!222968))))

(declare-fun bs!1146183 () Bool)

(assert (= bs!1146183 (and b!4754576 d!1520332)))

(assert (=> bs!1146183 (= (= lt!1920657 lt!1920931) (= lambda!222973 lambda!222972))))

(declare-fun bs!1146184 () Bool)

(assert (= bs!1146184 (and b!4754576 b!4754530)))

(assert (=> bs!1146184 (= (= lt!1920657 lt!1920661) (= lambda!222973 lambda!222965))))

(assert (=> b!4754576 true))

(declare-fun bs!1146185 () Bool)

(declare-fun b!4754573 () Bool)

(assert (= bs!1146185 (and b!4754573 b!4754527)))

(declare-fun lambda!222974 () Int)

(assert (=> bs!1146185 (= (= lt!1920657 lt!1920661) (= lambda!222974 lambda!222966))))

(declare-fun bs!1146186 () Bool)

(assert (= bs!1146186 (and b!4754573 b!4754567)))

(assert (=> bs!1146186 (= (= lt!1920657 lt!1920658) (= lambda!222974 lambda!222969))))

(declare-fun bs!1146187 () Bool)

(assert (= bs!1146187 (and b!4754573 b!4754576)))

(assert (=> bs!1146187 (= lambda!222974 lambda!222973)))

(assert (=> bs!1146185 (= (= lt!1920657 lt!1920877) (= lambda!222974 lambda!222967))))

(declare-fun bs!1146188 () Bool)

(assert (= bs!1146188 (and b!4754573 b!4754519)))

(assert (=> bs!1146188 (= (= lt!1920657 lt!1920660) (= lambda!222974 lambda!222961))))

(declare-fun bs!1146189 () Bool)

(assert (= bs!1146189 (and b!4754573 b!4754564)))

(assert (=> bs!1146189 (= (= lt!1920657 lt!1920928) (= lambda!222974 lambda!222971))))

(declare-fun bs!1146190 () Bool)

(assert (= bs!1146190 (and b!4754573 b!4754516)))

(assert (=> bs!1146190 (= (= lt!1920657 lt!1920660) (= lambda!222974 lambda!222962))))

(assert (=> bs!1146189 (= (= lt!1920657 lt!1920658) (= lambda!222974 lambda!222970))))

(assert (=> bs!1146190 (= (= lt!1920657 lt!1920848) (= lambda!222974 lambda!222963))))

(declare-fun bs!1146191 () Bool)

(assert (= bs!1146191 (and b!4754573 d!1520286)))

(assert (=> bs!1146191 (= (= lt!1920657 lt!1920851) (= lambda!222974 lambda!222964))))

(declare-fun bs!1146192 () Bool)

(assert (= bs!1146192 (and b!4754573 d!1520310)))

(assert (=> bs!1146192 (= (= lt!1920657 lt!1920880) (= lambda!222974 lambda!222968))))

(declare-fun bs!1146193 () Bool)

(assert (= bs!1146193 (and b!4754573 d!1520332)))

(assert (=> bs!1146193 (= (= lt!1920657 lt!1920931) (= lambda!222974 lambda!222972))))

(declare-fun bs!1146194 () Bool)

(assert (= bs!1146194 (and b!4754573 b!4754530)))

(assert (=> bs!1146194 (= (= lt!1920657 lt!1920661) (= lambda!222974 lambda!222965))))

(assert (=> b!4754573 true))

(declare-fun lambda!222975 () Int)

(declare-fun lt!1920957 () ListMap!5621)

(assert (=> bs!1146185 (= (= lt!1920957 lt!1920661) (= lambda!222975 lambda!222966))))

(assert (=> bs!1146186 (= (= lt!1920957 lt!1920658) (= lambda!222975 lambda!222969))))

(assert (=> b!4754573 (= (= lt!1920957 lt!1920657) (= lambda!222975 lambda!222974))))

(assert (=> bs!1146187 (= (= lt!1920957 lt!1920657) (= lambda!222975 lambda!222973))))

(assert (=> bs!1146185 (= (= lt!1920957 lt!1920877) (= lambda!222975 lambda!222967))))

(assert (=> bs!1146188 (= (= lt!1920957 lt!1920660) (= lambda!222975 lambda!222961))))

(assert (=> bs!1146189 (= (= lt!1920957 lt!1920928) (= lambda!222975 lambda!222971))))

(assert (=> bs!1146190 (= (= lt!1920957 lt!1920660) (= lambda!222975 lambda!222962))))

(assert (=> bs!1146189 (= (= lt!1920957 lt!1920658) (= lambda!222975 lambda!222970))))

(assert (=> bs!1146190 (= (= lt!1920957 lt!1920848) (= lambda!222975 lambda!222963))))

(assert (=> bs!1146191 (= (= lt!1920957 lt!1920851) (= lambda!222975 lambda!222964))))

(assert (=> bs!1146192 (= (= lt!1920957 lt!1920880) (= lambda!222975 lambda!222968))))

(assert (=> bs!1146193 (= (= lt!1920957 lt!1920931) (= lambda!222975 lambda!222972))))

(assert (=> bs!1146194 (= (= lt!1920957 lt!1920661) (= lambda!222975 lambda!222965))))

(assert (=> b!4754573 true))

(declare-fun bs!1146195 () Bool)

(declare-fun d!1520340 () Bool)

(assert (= bs!1146195 (and d!1520340 b!4754527)))

(declare-fun lt!1920960 () ListMap!5621)

(declare-fun lambda!222976 () Int)

(assert (=> bs!1146195 (= (= lt!1920960 lt!1920661) (= lambda!222976 lambda!222966))))

(declare-fun bs!1146196 () Bool)

(assert (= bs!1146196 (and d!1520340 b!4754567)))

(assert (=> bs!1146196 (= (= lt!1920960 lt!1920658) (= lambda!222976 lambda!222969))))

(declare-fun bs!1146197 () Bool)

(assert (= bs!1146197 (and d!1520340 b!4754573)))

(assert (=> bs!1146197 (= (= lt!1920960 lt!1920957) (= lambda!222976 lambda!222975))))

(assert (=> bs!1146197 (= (= lt!1920960 lt!1920657) (= lambda!222976 lambda!222974))))

(declare-fun bs!1146198 () Bool)

(assert (= bs!1146198 (and d!1520340 b!4754576)))

(assert (=> bs!1146198 (= (= lt!1920960 lt!1920657) (= lambda!222976 lambda!222973))))

(assert (=> bs!1146195 (= (= lt!1920960 lt!1920877) (= lambda!222976 lambda!222967))))

(declare-fun bs!1146199 () Bool)

(assert (= bs!1146199 (and d!1520340 b!4754519)))

(assert (=> bs!1146199 (= (= lt!1920960 lt!1920660) (= lambda!222976 lambda!222961))))

(declare-fun bs!1146200 () Bool)

(assert (= bs!1146200 (and d!1520340 b!4754564)))

(assert (=> bs!1146200 (= (= lt!1920960 lt!1920928) (= lambda!222976 lambda!222971))))

(declare-fun bs!1146201 () Bool)

(assert (= bs!1146201 (and d!1520340 b!4754516)))

(assert (=> bs!1146201 (= (= lt!1920960 lt!1920660) (= lambda!222976 lambda!222962))))

(assert (=> bs!1146200 (= (= lt!1920960 lt!1920658) (= lambda!222976 lambda!222970))))

(assert (=> bs!1146201 (= (= lt!1920960 lt!1920848) (= lambda!222976 lambda!222963))))

(declare-fun bs!1146202 () Bool)

(assert (= bs!1146202 (and d!1520340 d!1520286)))

(assert (=> bs!1146202 (= (= lt!1920960 lt!1920851) (= lambda!222976 lambda!222964))))

(declare-fun bs!1146203 () Bool)

(assert (= bs!1146203 (and d!1520340 d!1520310)))

(assert (=> bs!1146203 (= (= lt!1920960 lt!1920880) (= lambda!222976 lambda!222968))))

(declare-fun bs!1146204 () Bool)

(assert (= bs!1146204 (and d!1520340 d!1520332)))

(assert (=> bs!1146204 (= (= lt!1920960 lt!1920931) (= lambda!222976 lambda!222972))))

(declare-fun bs!1146205 () Bool)

(assert (= bs!1146205 (and d!1520340 b!4754530)))

(assert (=> bs!1146205 (= (= lt!1920960 lt!1920661) (= lambda!222976 lambda!222965))))

(assert (=> d!1520340 true))

(declare-fun call!333363 () Bool)

(declare-fun c!811611 () Bool)

(declare-fun bm!333356 () Bool)

(assert (=> bm!333356 (= call!333363 (forall!11778 (toList!6156 lt!1920657) (ite c!811611 lambda!222973 lambda!222975)))))

(declare-fun e!2966040 () ListMap!5621)

(assert (=> b!4754573 (= e!2966040 lt!1920957)))

(declare-fun lt!1920972 () ListMap!5621)

(assert (=> b!4754573 (= lt!1920972 (+!2422 lt!1920657 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754573 (= lt!1920957 (addToMapMapFromBucket!1602 (t!360596 (t!360596 l!13029)) (+!2422 lt!1920657 (h!59525 (t!360596 l!13029)))))))

(declare-fun lt!1920965 () Unit!137144)

(declare-fun call!333362 () Unit!137144)

(assert (=> b!4754573 (= lt!1920965 call!333362)))

(assert (=> b!4754573 (forall!11778 (toList!6156 lt!1920657) lambda!222974)))

(declare-fun lt!1920963 () Unit!137144)

(assert (=> b!4754573 (= lt!1920963 lt!1920965)))

(declare-fun call!333361 () Bool)

(assert (=> b!4754573 call!333361))

(declare-fun lt!1920973 () Unit!137144)

(declare-fun Unit!137223 () Unit!137144)

(assert (=> b!4754573 (= lt!1920973 Unit!137223)))

(assert (=> b!4754573 (forall!11778 (t!360596 (t!360596 l!13029)) lambda!222975)))

(declare-fun lt!1920958 () Unit!137144)

(declare-fun Unit!137224 () Unit!137144)

(assert (=> b!4754573 (= lt!1920958 Unit!137224)))

(declare-fun lt!1920969 () Unit!137144)

(declare-fun Unit!137225 () Unit!137144)

(assert (=> b!4754573 (= lt!1920969 Unit!137225)))

(declare-fun lt!1920961 () Unit!137144)

(assert (=> b!4754573 (= lt!1920961 (forallContained!3804 (toList!6156 lt!1920972) lambda!222975 (h!59525 (t!360596 l!13029))))))

(assert (=> b!4754573 (contains!16555 lt!1920972 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920955 () Unit!137144)

(declare-fun Unit!137226 () Unit!137144)

(assert (=> b!4754573 (= lt!1920955 Unit!137226)))

(assert (=> b!4754573 (contains!16555 lt!1920957 (_1!30762 (h!59525 (t!360596 l!13029))))))

(declare-fun lt!1920971 () Unit!137144)

(declare-fun Unit!137227 () Unit!137144)

(assert (=> b!4754573 (= lt!1920971 Unit!137227)))

(assert (=> b!4754573 (forall!11778 (t!360596 l!13029) lambda!222975)))

(declare-fun lt!1920954 () Unit!137144)

(declare-fun Unit!137228 () Unit!137144)

(assert (=> b!4754573 (= lt!1920954 Unit!137228)))

(assert (=> b!4754573 (forall!11778 (toList!6156 lt!1920972) lambda!222975)))

(declare-fun lt!1920959 () Unit!137144)

(declare-fun Unit!137229 () Unit!137144)

(assert (=> b!4754573 (= lt!1920959 Unit!137229)))

(declare-fun lt!1920956 () Unit!137144)

(declare-fun Unit!137230 () Unit!137144)

(assert (=> b!4754573 (= lt!1920956 Unit!137230)))

(declare-fun lt!1920967 () Unit!137144)

(assert (=> b!4754573 (= lt!1920967 (addForallContainsKeyThenBeforeAdding!892 lt!1920657 lt!1920957 (_1!30762 (h!59525 (t!360596 l!13029))) (_2!30762 (h!59525 (t!360596 l!13029)))))))

(assert (=> b!4754573 (forall!11778 (toList!6156 lt!1920657) lambda!222975)))

(declare-fun lt!1920962 () Unit!137144)

(assert (=> b!4754573 (= lt!1920962 lt!1920967)))

(assert (=> b!4754573 call!333363))

(declare-fun lt!1920974 () Unit!137144)

(declare-fun Unit!137231 () Unit!137144)

(assert (=> b!4754573 (= lt!1920974 Unit!137231)))

(declare-fun res!2016875 () Bool)

(assert (=> b!4754573 (= res!2016875 (forall!11778 (t!360596 l!13029) lambda!222975))))

(declare-fun e!2966039 () Bool)

(assert (=> b!4754573 (=> (not res!2016875) (not e!2966039))))

(assert (=> b!4754573 e!2966039))

(declare-fun lt!1920964 () Unit!137144)

(declare-fun Unit!137232 () Unit!137144)

(assert (=> b!4754573 (= lt!1920964 Unit!137232)))

(declare-fun b!4754574 () Bool)

(declare-fun res!2016876 () Bool)

(declare-fun e!2966041 () Bool)

(assert (=> b!4754574 (=> (not res!2016876) (not e!2966041))))

(assert (=> b!4754574 (= res!2016876 (forall!11778 (toList!6156 lt!1920657) lambda!222976))))

(declare-fun bm!333357 () Bool)

(assert (=> bm!333357 (= call!333361 (forall!11778 (ite c!811611 (toList!6156 lt!1920657) (toList!6156 lt!1920972)) (ite c!811611 lambda!222973 lambda!222975)))))

(assert (=> b!4754576 (= e!2966040 lt!1920657)))

(declare-fun lt!1920968 () Unit!137144)

(assert (=> b!4754576 (= lt!1920968 call!333362)))

(assert (=> b!4754576 call!333363))

(declare-fun lt!1920970 () Unit!137144)

(assert (=> b!4754576 (= lt!1920970 lt!1920968)))

(assert (=> b!4754576 call!333361))

(declare-fun lt!1920966 () Unit!137144)

(declare-fun Unit!137233 () Unit!137144)

(assert (=> b!4754576 (= lt!1920966 Unit!137233)))

(declare-fun bm!333358 () Bool)

(assert (=> bm!333358 (= call!333362 (lemmaContainsAllItsOwnKeys!893 lt!1920657))))

(declare-fun b!4754577 () Bool)

(assert (=> b!4754577 (= e!2966039 (forall!11778 (toList!6156 lt!1920657) lambda!222975))))

(assert (=> d!1520340 e!2966041))

(declare-fun res!2016877 () Bool)

(assert (=> d!1520340 (=> (not res!2016877) (not e!2966041))))

(assert (=> d!1520340 (= res!2016877 (forall!11778 (t!360596 l!13029) lambda!222976))))

(assert (=> d!1520340 (= lt!1920960 e!2966040)))

(assert (=> d!1520340 (= c!811611 ((_ is Nil!53128) (t!360596 l!13029)))))

(assert (=> d!1520340 (noDuplicateKeys!2188 (t!360596 l!13029))))

(assert (=> d!1520340 (= (addToMapMapFromBucket!1602 (t!360596 l!13029) lt!1920657) lt!1920960)))

(declare-fun b!4754575 () Bool)

(assert (=> b!4754575 (= e!2966041 (invariantList!1616 (toList!6156 lt!1920960)))))

(assert (= (and d!1520340 c!811611) b!4754576))

(assert (= (and d!1520340 (not c!811611)) b!4754573))

(assert (= (and b!4754573 res!2016875) b!4754577))

(assert (= (or b!4754576 b!4754573) bm!333356))

(assert (= (or b!4754576 b!4754573) bm!333357))

(assert (= (or b!4754576 b!4754573) bm!333358))

(assert (= (and d!1520340 res!2016877) b!4754574))

(assert (= (and b!4754574 res!2016876) b!4754575))

(declare-fun m!5723365 () Bool)

(assert (=> bm!333357 m!5723365))

(declare-fun m!5723367 () Bool)

(assert (=> bm!333356 m!5723367))

(declare-fun m!5723369 () Bool)

(assert (=> b!4754575 m!5723369))

(declare-fun m!5723371 () Bool)

(assert (=> bm!333358 m!5723371))

(declare-fun m!5723373 () Bool)

(assert (=> d!1520340 m!5723373))

(assert (=> d!1520340 m!5722943))

(declare-fun m!5723375 () Bool)

(assert (=> b!4754574 m!5723375))

(declare-fun m!5723377 () Bool)

(assert (=> b!4754577 m!5723377))

(declare-fun m!5723379 () Bool)

(assert (=> b!4754573 m!5723379))

(declare-fun m!5723381 () Bool)

(assert (=> b!4754573 m!5723381))

(declare-fun m!5723383 () Bool)

(assert (=> b!4754573 m!5723383))

(declare-fun m!5723385 () Bool)

(assert (=> b!4754573 m!5723385))

(declare-fun m!5723387 () Bool)

(assert (=> b!4754573 m!5723387))

(declare-fun m!5723389 () Bool)

(assert (=> b!4754573 m!5723389))

(declare-fun m!5723391 () Bool)

(assert (=> b!4754573 m!5723391))

(declare-fun m!5723393 () Bool)

(assert (=> b!4754573 m!5723393))

(assert (=> b!4754573 m!5723389))

(assert (=> b!4754573 m!5723377))

(assert (=> b!4754573 m!5723383))

(declare-fun m!5723395 () Bool)

(assert (=> b!4754573 m!5723395))

(declare-fun m!5723397 () Bool)

(assert (=> b!4754573 m!5723397))

(assert (=> b!4754461 d!1520340))

(declare-fun d!1520342 () Bool)

(declare-fun e!2966042 () Bool)

(assert (=> d!1520342 e!2966042))

(declare-fun res!2016879 () Bool)

(assert (=> d!1520342 (=> (not res!2016879) (not e!2966042))))

(declare-fun lt!1920976 () ListMap!5621)

(assert (=> d!1520342 (= res!2016879 (contains!16555 lt!1920976 (_1!30762 (h!59525 l!13029))))))

(declare-fun lt!1920975 () List!53252)

(assert (=> d!1520342 (= lt!1920976 (ListMap!5622 lt!1920975))))

(declare-fun lt!1920978 () Unit!137144)

(declare-fun lt!1920977 () Unit!137144)

(assert (=> d!1520342 (= lt!1920978 lt!1920977)))

(assert (=> d!1520342 (= (getValueByKey!2102 lt!1920975 (_1!30762 (h!59525 l!13029))) (Some!12551 (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520342 (= lt!1920977 (lemmaContainsTupThenGetReturnValue!1179 lt!1920975 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520342 (= lt!1920975 (insertNoDuplicatedKeys!687 (toList!6156 lhm!63) (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029))))))

(assert (=> d!1520342 (= (+!2422 lhm!63 (h!59525 l!13029)) lt!1920976)))

(declare-fun b!4754578 () Bool)

(declare-fun res!2016878 () Bool)

(assert (=> b!4754578 (=> (not res!2016878) (not e!2966042))))

(assert (=> b!4754578 (= res!2016878 (= (getValueByKey!2102 (toList!6156 lt!1920976) (_1!30762 (h!59525 l!13029))) (Some!12551 (_2!30762 (h!59525 l!13029)))))))

(declare-fun b!4754579 () Bool)

(assert (=> b!4754579 (= e!2966042 (contains!16556 (toList!6156 lt!1920976) (h!59525 l!13029)))))

(assert (= (and d!1520342 res!2016879) b!4754578))

(assert (= (and b!4754578 res!2016878) b!4754579))

(declare-fun m!5723399 () Bool)

(assert (=> d!1520342 m!5723399))

(declare-fun m!5723401 () Bool)

(assert (=> d!1520342 m!5723401))

(declare-fun m!5723403 () Bool)

(assert (=> d!1520342 m!5723403))

(declare-fun m!5723405 () Bool)

(assert (=> d!1520342 m!5723405))

(declare-fun m!5723407 () Bool)

(assert (=> b!4754578 m!5723407))

(declare-fun m!5723409 () Bool)

(assert (=> b!4754579 m!5723409))

(assert (=> b!4754461 d!1520342))

(declare-fun d!1520344 () Bool)

(assert (=> d!1520344 (eq!1253 (+!2422 (+!2422 lhm!63 (tuple2!54937 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029)))) (tuple2!54937 key!4572 value!2966)) (+!2422 (+!2422 lhm!63 (tuple2!54937 key!4572 value!2966)) (tuple2!54937 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029)))))))

(declare-fun lt!1920981 () Unit!137144)

(declare-fun choose!33874 (ListMap!5621 K!14620 V!14866 K!14620 V!14866) Unit!137144)

(assert (=> d!1520344 (= lt!1920981 (choose!33874 lhm!63 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029)) key!4572 value!2966))))

(assert (=> d!1520344 (not (= (_1!30762 (h!59525 l!13029)) key!4572))))

(assert (=> d!1520344 (= (addCommutativeForDiffKeys!54 lhm!63 (_1!30762 (h!59525 l!13029)) (_2!30762 (h!59525 l!13029)) key!4572 value!2966) lt!1920981)))

(declare-fun bs!1146206 () Bool)

(assert (= bs!1146206 d!1520344))

(declare-fun m!5723411 () Bool)

(assert (=> bs!1146206 m!5723411))

(declare-fun m!5723413 () Bool)

(assert (=> bs!1146206 m!5723413))

(declare-fun m!5723415 () Bool)

(assert (=> bs!1146206 m!5723415))

(assert (=> bs!1146206 m!5723413))

(declare-fun m!5723417 () Bool)

(assert (=> bs!1146206 m!5723417))

(declare-fun m!5723419 () Bool)

(assert (=> bs!1146206 m!5723419))

(assert (=> bs!1146206 m!5723415))

(assert (=> bs!1146206 m!5723411))

(assert (=> bs!1146206 m!5723419))

(declare-fun m!5723421 () Bool)

(assert (=> bs!1146206 m!5723421))

(assert (=> b!4754461 d!1520344))

(declare-fun d!1520346 () Bool)

(declare-fun res!2016884 () Bool)

(declare-fun e!2966047 () Bool)

(assert (=> d!1520346 (=> res!2016884 e!2966047)))

(assert (=> d!1520346 (= res!2016884 (and ((_ is Cons!53128) l!13029) (= (_1!30762 (h!59525 l!13029)) key!4572)))))

(assert (=> d!1520346 (= (containsKey!3594 l!13029 key!4572) e!2966047)))

(declare-fun b!4754584 () Bool)

(declare-fun e!2966048 () Bool)

(assert (=> b!4754584 (= e!2966047 e!2966048)))

(declare-fun res!2016885 () Bool)

(assert (=> b!4754584 (=> (not res!2016885) (not e!2966048))))

(assert (=> b!4754584 (= res!2016885 ((_ is Cons!53128) l!13029))))

(declare-fun b!4754585 () Bool)

(assert (=> b!4754585 (= e!2966048 (containsKey!3594 (t!360596 l!13029) key!4572))))

(assert (= (and d!1520346 (not res!2016884)) b!4754584))

(assert (= (and b!4754584 res!2016885) b!4754585))

(assert (=> b!4754585 m!5723275))

(assert (=> start!485948 d!1520346))

(declare-fun d!1520348 () Bool)

(assert (=> d!1520348 (= (inv!68490 lhm!63) (invariantList!1616 (toList!6156 lhm!63)))))

(declare-fun bs!1146207 () Bool)

(assert (= bs!1146207 d!1520348))

(declare-fun m!5723423 () Bool)

(assert (=> bs!1146207 m!5723423))

(assert (=> start!485948 d!1520348))

(declare-fun d!1520350 () Bool)

(declare-fun res!2016886 () Bool)

(declare-fun e!2966049 () Bool)

(assert (=> d!1520350 (=> res!2016886 e!2966049)))

(assert (=> d!1520350 (= res!2016886 (not ((_ is Cons!53128) l!13029)))))

(assert (=> d!1520350 (= (noDuplicateKeys!2188 l!13029) e!2966049)))

(declare-fun b!4754586 () Bool)

(declare-fun e!2966050 () Bool)

(assert (=> b!4754586 (= e!2966049 e!2966050)))

(declare-fun res!2016887 () Bool)

(assert (=> b!4754586 (=> (not res!2016887) (not e!2966050))))

(assert (=> b!4754586 (= res!2016887 (not (containsKey!3594 (t!360596 l!13029) (_1!30762 (h!59525 l!13029)))))))

(declare-fun b!4754587 () Bool)

(assert (=> b!4754587 (= e!2966050 (noDuplicateKeys!2188 (t!360596 l!13029)))))

(assert (= (and d!1520350 (not res!2016886)) b!4754586))

(assert (= (and b!4754586 res!2016887) b!4754587))

(declare-fun m!5723425 () Bool)

(assert (=> b!4754586 m!5723425))

(assert (=> b!4754587 m!5722943))

(assert (=> b!4754458 d!1520350))

(declare-fun e!2966053 () Bool)

(declare-fun tp!1350524 () Bool)

(declare-fun b!4754592 () Bool)

(assert (=> b!4754592 (= e!2966053 (and tp_is_empty!32045 tp_is_empty!32047 tp!1350524))))

(assert (=> b!4754460 (= tp!1350516 e!2966053)))

(assert (= (and b!4754460 ((_ is Cons!53128) (toList!6156 lhm!63))) b!4754592))

(declare-fun tp!1350525 () Bool)

(declare-fun b!4754593 () Bool)

(declare-fun e!2966054 () Bool)

(assert (=> b!4754593 (= e!2966054 (and tp_is_empty!32045 tp_is_empty!32047 tp!1350525))))

(assert (=> b!4754457 (= tp!1350517 e!2966054)))

(assert (= (and b!4754457 ((_ is Cons!53128) (t!360596 l!13029))) b!4754593))

(check-sat (not b!4754578) (not d!1520326) (not b!4754579) (not b!4754555) (not bm!333354) (not b!4754527) (not b!4754577) (not b!4754562) (not b!4754516) (not b!4754593) (not b!4754563) (not d!1520332) (not b!4754565) (not b!4754568) (not d!1520334) tp_is_empty!32047 (not bm!333357) (not b!4754554) (not b!4754571) (not bm!333353) (not bm!333358) (not b!4754518) (not b!4754569) (not bm!333349) (not bm!333355) (not b!4754574) (not b!4754561) (not b!4754587) (not bm!333348) (not bm!333347) (not b!4754573) (not b!4754531) (not d!1520286) (not b!4754566) (not b!4754570) (not b!4754520) (not b!4754560) (not d!1520336) (not d!1520342) (not d!1520314) (not bm!333356) (not bm!333351) (not d!1520338) (not b!4754575) (not d!1520348) (not b!4754586) (not d!1520344) (not b!4754585) (not bm!333352) (not b!4754592) (not d!1520330) tp_is_empty!32045 (not bm!333350) (not b!4754529) (not b!4754572) (not d!1520340) (not b!4754564) (not d!1520328) (not b!4754528) (not b!4754517) (not d!1520310))
(check-sat)
