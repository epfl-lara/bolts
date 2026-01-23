; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485984 () Bool)

(assert start!485984)

(declare-fun tp_is_empty!32053 () Bool)

(declare-fun tp_is_empty!32055 () Bool)

(declare-fun tp!1350536 () Bool)

(declare-fun e!2966081 () Bool)

(declare-fun b!4754629 () Bool)

(assert (=> b!4754629 (= e!2966081 (and tp_is_empty!32053 tp_is_empty!32055 tp!1350536))))

(declare-fun res!2016913 () Bool)

(declare-fun e!2966084 () Bool)

(assert (=> start!485984 (=> (not res!2016913) (not e!2966084))))

(declare-datatypes ((K!14625 0))(
  ( (K!14626 (val!19971 Int)) )
))
(declare-datatypes ((V!14871 0))(
  ( (V!14872 (val!19972 Int)) )
))
(declare-datatypes ((tuple2!54940 0))(
  ( (tuple2!54941 (_1!30764 K!14625) (_2!30764 V!14871)) )
))
(declare-datatypes ((List!53254 0))(
  ( (Nil!53130) (Cons!53130 (h!59527 tuple2!54940) (t!360598 List!53254)) )
))
(declare-fun l!13029 () List!53254)

(declare-fun key!4572 () K!14625)

(declare-fun containsKey!3596 (List!53254 K!14625) Bool)

(assert (=> start!485984 (= res!2016913 (not (containsKey!3596 l!13029 key!4572)))))

(assert (=> start!485984 e!2966084))

(assert (=> start!485984 e!2966081))

(assert (=> start!485984 tp_is_empty!32053))

(assert (=> start!485984 tp_is_empty!32055))

(declare-datatypes ((ListMap!5625 0))(
  ( (ListMap!5626 (toList!6158 List!53254)) )
))
(declare-fun lhm!63 () ListMap!5625)

(declare-fun e!2966080 () Bool)

(declare-fun inv!68495 (ListMap!5625) Bool)

(assert (=> start!485984 (and (inv!68495 lhm!63) e!2966080)))

(declare-fun b!4754630 () Bool)

(declare-fun e!2966082 () Bool)

(declare-fun lt!1921017 () ListMap!5625)

(declare-fun lt!1921020 () ListMap!5625)

(declare-fun eq!1255 (ListMap!5625 ListMap!5625) Bool)

(assert (=> b!4754630 (= e!2966082 (eq!1255 lt!1921017 lt!1921020))))

(declare-fun b!4754631 () Bool)

(declare-fun res!2016916 () Bool)

(assert (=> b!4754631 (=> (not res!2016916) (not e!2966084))))

(declare-fun noDuplicateKeys!2190 (List!53254) Bool)

(assert (=> b!4754631 (= res!2016916 (noDuplicateKeys!2190 l!13029))))

(declare-fun lt!1921023 () ListMap!5625)

(declare-fun b!4754632 () Bool)

(declare-fun e!2966083 () Bool)

(declare-fun addToMapMapFromBucket!1604 (List!53254 ListMap!5625) ListMap!5625)

(assert (=> b!4754632 (= e!2966083 (= (addToMapMapFromBucket!1604 l!13029 lt!1921023) (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921017)))))

(declare-fun b!4754633 () Bool)

(declare-fun res!2016914 () Bool)

(assert (=> b!4754633 (=> (not res!2016914) (not e!2966084))))

(get-info :version)

(assert (=> b!4754633 (= res!2016914 ((_ is Cons!53130) l!13029))))

(declare-fun b!4754634 () Bool)

(assert (=> b!4754634 (= e!2966084 (not e!2966082))))

(declare-fun res!2016917 () Bool)

(assert (=> b!4754634 (=> res!2016917 e!2966082)))

(assert (=> b!4754634 (= res!2016917 (not (noDuplicateKeys!2190 (t!360598 l!13029))))))

(assert (=> b!4754634 e!2966083))

(declare-fun res!2016915 () Bool)

(assert (=> b!4754634 (=> (not res!2016915) (not e!2966083))))

(declare-fun lt!1921019 () ListMap!5625)

(declare-fun lt!1921021 () tuple2!54940)

(declare-fun +!2424 (ListMap!5625 tuple2!54940) ListMap!5625)

(assert (=> b!4754634 (= res!2016915 (eq!1255 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921020) (+!2424 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) lt!1921021)))))

(declare-datatypes ((Unit!137236 0))(
  ( (Unit!137237) )
))
(declare-fun lt!1921022 () Unit!137236)

(declare-fun value!2966 () V!14871)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!266 (ListMap!5625 K!14625 V!14871 List!53254) Unit!137236)

(assert (=> b!4754634 (= lt!1921022 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!266 lt!1921019 key!4572 value!2966 (t!360598 l!13029)))))

(assert (=> b!4754634 (eq!1255 lt!1921020 lt!1921017)))

(assert (=> b!4754634 (= lt!1921017 (+!2424 lt!1921023 (h!59527 l!13029)))))

(assert (=> b!4754634 (= lt!1921023 (+!2424 lhm!63 lt!1921021))))

(assert (=> b!4754634 (= lt!1921020 (+!2424 lt!1921019 lt!1921021))))

(assert (=> b!4754634 (= lt!1921021 (tuple2!54941 key!4572 value!2966))))

(declare-fun lt!1921018 () Unit!137236)

(declare-fun addCommutativeForDiffKeys!56 (ListMap!5625 K!14625 V!14871 K!14625 V!14871) Unit!137236)

(assert (=> b!4754634 (= lt!1921018 (addCommutativeForDiffKeys!56 lhm!63 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029)) key!4572 value!2966))))

(assert (=> b!4754634 (= lt!1921019 (+!2424 lhm!63 (h!59527 l!13029)))))

(declare-fun b!4754635 () Bool)

(declare-fun tp!1350537 () Bool)

(assert (=> b!4754635 (= e!2966080 tp!1350537)))

(assert (= (and start!485984 res!2016913) b!4754631))

(assert (= (and b!4754631 res!2016916) b!4754633))

(assert (= (and b!4754633 res!2016914) b!4754634))

(assert (= (and b!4754634 res!2016915) b!4754632))

(assert (= (and b!4754634 (not res!2016917)) b!4754630))

(assert (= (and start!485984 ((_ is Cons!53130) l!13029)) b!4754629))

(assert (= start!485984 b!4754635))

(declare-fun m!5723463 () Bool)

(assert (=> b!4754632 m!5723463))

(declare-fun m!5723465 () Bool)

(assert (=> b!4754632 m!5723465))

(declare-fun m!5723467 () Bool)

(assert (=> b!4754630 m!5723467))

(declare-fun m!5723469 () Bool)

(assert (=> b!4754634 m!5723469))

(declare-fun m!5723471 () Bool)

(assert (=> b!4754634 m!5723471))

(declare-fun m!5723473 () Bool)

(assert (=> b!4754634 m!5723473))

(declare-fun m!5723475 () Bool)

(assert (=> b!4754634 m!5723475))

(declare-fun m!5723477 () Bool)

(assert (=> b!4754634 m!5723477))

(declare-fun m!5723479 () Bool)

(assert (=> b!4754634 m!5723479))

(declare-fun m!5723481 () Bool)

(assert (=> b!4754634 m!5723481))

(declare-fun m!5723483 () Bool)

(assert (=> b!4754634 m!5723483))

(declare-fun m!5723485 () Bool)

(assert (=> b!4754634 m!5723485))

(assert (=> b!4754634 m!5723475))

(declare-fun m!5723487 () Bool)

(assert (=> b!4754634 m!5723487))

(assert (=> b!4754634 m!5723479))

(assert (=> b!4754634 m!5723487))

(declare-fun m!5723489 () Bool)

(assert (=> b!4754634 m!5723489))

(declare-fun m!5723491 () Bool)

(assert (=> b!4754634 m!5723491))

(declare-fun m!5723493 () Bool)

(assert (=> b!4754631 m!5723493))

(declare-fun m!5723495 () Bool)

(assert (=> start!485984 m!5723495))

(declare-fun m!5723497 () Bool)

(assert (=> start!485984 m!5723497))

(check-sat tp_is_empty!32053 (not b!4754635) (not b!4754630) (not start!485984) (not b!4754634) (not b!4754632) (not b!4754629) tp_is_empty!32055 (not b!4754631))
(check-sat)
(get-model)

(declare-fun d!1520353 () Bool)

(declare-fun e!2966093 () Bool)

(assert (=> d!1520353 e!2966093))

(declare-fun res!2016928 () Bool)

(assert (=> d!1520353 (=> (not res!2016928) (not e!2966093))))

(declare-fun lt!1921032 () ListMap!5625)

(declare-fun contains!16559 (ListMap!5625 K!14625) Bool)

(assert (=> d!1520353 (= res!2016928 (contains!16559 lt!1921032 (_1!30764 lt!1921021)))))

(declare-fun lt!1921035 () List!53254)

(assert (=> d!1520353 (= lt!1921032 (ListMap!5626 lt!1921035))))

(declare-fun lt!1921033 () Unit!137236)

(declare-fun lt!1921034 () Unit!137236)

(assert (=> d!1520353 (= lt!1921033 lt!1921034)))

(declare-datatypes ((Option!12554 0))(
  ( (None!12553) (Some!12553 (v!47254 V!14871)) )
))
(declare-fun getValueByKey!2104 (List!53254 K!14625) Option!12554)

(assert (=> d!1520353 (= (getValueByKey!2104 lt!1921035 (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1181 (List!53254 K!14625 V!14871) Unit!137236)

(assert (=> d!1520353 (= lt!1921034 (lemmaContainsTupThenGetReturnValue!1181 lt!1921035 (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(declare-fun insertNoDuplicatedKeys!689 (List!53254 K!14625 V!14871) List!53254)

(assert (=> d!1520353 (= lt!1921035 (insertNoDuplicatedKeys!689 (toList!6158 lhm!63) (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(assert (=> d!1520353 (= (+!2424 lhm!63 lt!1921021) lt!1921032)))

(declare-fun b!4754646 () Bool)

(declare-fun res!2016929 () Bool)

(assert (=> b!4754646 (=> (not res!2016929) (not e!2966093))))

(assert (=> b!4754646 (= res!2016929 (= (getValueByKey!2104 (toList!6158 lt!1921032) (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021))))))

(declare-fun b!4754647 () Bool)

(declare-fun contains!16560 (List!53254 tuple2!54940) Bool)

(assert (=> b!4754647 (= e!2966093 (contains!16560 (toList!6158 lt!1921032) lt!1921021))))

(assert (= (and d!1520353 res!2016928) b!4754646))

(assert (= (and b!4754646 res!2016929) b!4754647))

(declare-fun m!5723505 () Bool)

(assert (=> d!1520353 m!5723505))

(declare-fun m!5723507 () Bool)

(assert (=> d!1520353 m!5723507))

(declare-fun m!5723509 () Bool)

(assert (=> d!1520353 m!5723509))

(declare-fun m!5723511 () Bool)

(assert (=> d!1520353 m!5723511))

(declare-fun m!5723513 () Bool)

(assert (=> b!4754646 m!5723513))

(declare-fun m!5723515 () Bool)

(assert (=> b!4754647 m!5723515))

(assert (=> b!4754634 d!1520353))

(declare-fun d!1520361 () Bool)

(declare-fun res!2016934 () Bool)

(declare-fun e!2966098 () Bool)

(assert (=> d!1520361 (=> res!2016934 e!2966098)))

(assert (=> d!1520361 (= res!2016934 (not ((_ is Cons!53130) (t!360598 l!13029))))))

(assert (=> d!1520361 (= (noDuplicateKeys!2190 (t!360598 l!13029)) e!2966098)))

(declare-fun b!4754652 () Bool)

(declare-fun e!2966099 () Bool)

(assert (=> b!4754652 (= e!2966098 e!2966099)))

(declare-fun res!2016935 () Bool)

(assert (=> b!4754652 (=> (not res!2016935) (not e!2966099))))

(assert (=> b!4754652 (= res!2016935 (not (containsKey!3596 (t!360598 (t!360598 l!13029)) (_1!30764 (h!59527 (t!360598 l!13029))))))))

(declare-fun b!4754653 () Bool)

(assert (=> b!4754653 (= e!2966099 (noDuplicateKeys!2190 (t!360598 (t!360598 l!13029))))))

(assert (= (and d!1520361 (not res!2016934)) b!4754652))

(assert (= (and b!4754652 res!2016935) b!4754653))

(declare-fun m!5723517 () Bool)

(assert (=> b!4754652 m!5723517))

(declare-fun m!5723519 () Bool)

(assert (=> b!4754653 m!5723519))

(assert (=> b!4754634 d!1520361))

(declare-fun d!1520363 () Bool)

(assert (=> d!1520363 (eq!1255 (addToMapMapFromBucket!1604 (t!360598 l!13029) (+!2424 lt!1921019 (tuple2!54941 key!4572 value!2966))) (+!2424 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) (tuple2!54941 key!4572 value!2966)))))

(declare-fun lt!1921038 () Unit!137236)

(declare-fun choose!33875 (ListMap!5625 K!14625 V!14871 List!53254) Unit!137236)

(assert (=> d!1520363 (= lt!1921038 (choose!33875 lt!1921019 key!4572 value!2966 (t!360598 l!13029)))))

(assert (=> d!1520363 (not (containsKey!3596 (t!360598 l!13029) key!4572))))

(assert (=> d!1520363 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!266 lt!1921019 key!4572 value!2966 (t!360598 l!13029)) lt!1921038)))

(declare-fun bs!1146211 () Bool)

(assert (= bs!1146211 d!1520363))

(declare-fun m!5723521 () Bool)

(assert (=> bs!1146211 m!5723521))

(declare-fun m!5723523 () Bool)

(assert (=> bs!1146211 m!5723523))

(declare-fun m!5723525 () Bool)

(assert (=> bs!1146211 m!5723525))

(declare-fun m!5723527 () Bool)

(assert (=> bs!1146211 m!5723527))

(assert (=> bs!1146211 m!5723475))

(assert (=> bs!1146211 m!5723525))

(assert (=> bs!1146211 m!5723475))

(declare-fun m!5723529 () Bool)

(assert (=> bs!1146211 m!5723529))

(assert (=> bs!1146211 m!5723523))

(declare-fun m!5723531 () Bool)

(assert (=> bs!1146211 m!5723531))

(assert (=> bs!1146211 m!5723529))

(assert (=> b!4754634 d!1520363))

(declare-fun d!1520365 () Bool)

(declare-fun e!2966100 () Bool)

(assert (=> d!1520365 e!2966100))

(declare-fun res!2016936 () Bool)

(assert (=> d!1520365 (=> (not res!2016936) (not e!2966100))))

(declare-fun lt!1921039 () ListMap!5625)

(assert (=> d!1520365 (= res!2016936 (contains!16559 lt!1921039 (_1!30764 lt!1921021)))))

(declare-fun lt!1921042 () List!53254)

(assert (=> d!1520365 (= lt!1921039 (ListMap!5626 lt!1921042))))

(declare-fun lt!1921040 () Unit!137236)

(declare-fun lt!1921041 () Unit!137236)

(assert (=> d!1520365 (= lt!1921040 lt!1921041)))

(assert (=> d!1520365 (= (getValueByKey!2104 lt!1921042 (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021)))))

(assert (=> d!1520365 (= lt!1921041 (lemmaContainsTupThenGetReturnValue!1181 lt!1921042 (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(assert (=> d!1520365 (= lt!1921042 (insertNoDuplicatedKeys!689 (toList!6158 lt!1921019) (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(assert (=> d!1520365 (= (+!2424 lt!1921019 lt!1921021) lt!1921039)))

(declare-fun b!4754654 () Bool)

(declare-fun res!2016937 () Bool)

(assert (=> b!4754654 (=> (not res!2016937) (not e!2966100))))

(assert (=> b!4754654 (= res!2016937 (= (getValueByKey!2104 (toList!6158 lt!1921039) (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021))))))

(declare-fun b!4754655 () Bool)

(assert (=> b!4754655 (= e!2966100 (contains!16560 (toList!6158 lt!1921039) lt!1921021))))

(assert (= (and d!1520365 res!2016936) b!4754654))

(assert (= (and b!4754654 res!2016937) b!4754655))

(declare-fun m!5723533 () Bool)

(assert (=> d!1520365 m!5723533))

(declare-fun m!5723535 () Bool)

(assert (=> d!1520365 m!5723535))

(declare-fun m!5723537 () Bool)

(assert (=> d!1520365 m!5723537))

(declare-fun m!5723539 () Bool)

(assert (=> d!1520365 m!5723539))

(declare-fun m!5723541 () Bool)

(assert (=> b!4754654 m!5723541))

(declare-fun m!5723543 () Bool)

(assert (=> b!4754655 m!5723543))

(assert (=> b!4754634 d!1520365))

(declare-fun b!4754712 () Bool)

(assert (=> b!4754712 true))

(declare-fun bs!1146244 () Bool)

(declare-fun b!4754710 () Bool)

(assert (= bs!1146244 (and b!4754710 b!4754712)))

(declare-fun lambda!223045 () Int)

(declare-fun lambda!223044 () Int)

(assert (=> bs!1146244 (= lambda!223045 lambda!223044)))

(assert (=> b!4754710 true))

(declare-fun lt!1921242 () ListMap!5625)

(declare-fun lambda!223046 () Int)

(assert (=> bs!1146244 (= (= lt!1921242 lt!1921019) (= lambda!223046 lambda!223044))))

(assert (=> b!4754710 (= (= lt!1921242 lt!1921019) (= lambda!223046 lambda!223045))))

(assert (=> b!4754710 true))

(declare-fun bs!1146251 () Bool)

(declare-fun d!1520367 () Bool)

(assert (= bs!1146251 (and d!1520367 b!4754712)))

(declare-fun lt!1921225 () ListMap!5625)

(declare-fun lambda!223048 () Int)

(assert (=> bs!1146251 (= (= lt!1921225 lt!1921019) (= lambda!223048 lambda!223044))))

(declare-fun bs!1146253 () Bool)

(assert (= bs!1146253 (and d!1520367 b!4754710)))

(assert (=> bs!1146253 (= (= lt!1921225 lt!1921019) (= lambda!223048 lambda!223045))))

(assert (=> bs!1146253 (= (= lt!1921225 lt!1921242) (= lambda!223048 lambda!223046))))

(assert (=> d!1520367 true))

(declare-fun b!4754709 () Bool)

(declare-fun e!2966132 () Bool)

(declare-fun forall!11780 (List!53254 Int) Bool)

(assert (=> b!4754709 (= e!2966132 (forall!11780 (toList!6158 lt!1921019) lambda!223046))))

(declare-fun e!2966133 () ListMap!5625)

(assert (=> b!4754710 (= e!2966133 lt!1921242)))

(declare-fun lt!1921240 () ListMap!5625)

(assert (=> b!4754710 (= lt!1921240 (+!2424 lt!1921019 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754710 (= lt!1921242 (addToMapMapFromBucket!1604 (t!360598 (t!360598 l!13029)) (+!2424 lt!1921019 (h!59527 (t!360598 l!13029)))))))

(declare-fun lt!1921235 () Unit!137236)

(declare-fun call!333385 () Unit!137236)

(assert (=> b!4754710 (= lt!1921235 call!333385)))

(declare-fun call!333387 () Bool)

(assert (=> b!4754710 call!333387))

(declare-fun lt!1921238 () Unit!137236)

(assert (=> b!4754710 (= lt!1921238 lt!1921235)))

(assert (=> b!4754710 (forall!11780 (toList!6158 lt!1921240) lambda!223046)))

(declare-fun lt!1921224 () Unit!137236)

(declare-fun Unit!137249 () Unit!137236)

(assert (=> b!4754710 (= lt!1921224 Unit!137249)))

(assert (=> b!4754710 (forall!11780 (t!360598 (t!360598 l!13029)) lambda!223046)))

(declare-fun lt!1921226 () Unit!137236)

(declare-fun Unit!137250 () Unit!137236)

(assert (=> b!4754710 (= lt!1921226 Unit!137250)))

(declare-fun lt!1921230 () Unit!137236)

(declare-fun Unit!137251 () Unit!137236)

(assert (=> b!4754710 (= lt!1921230 Unit!137251)))

(declare-fun lt!1921233 () Unit!137236)

(declare-fun forallContained!3806 (List!53254 Int tuple2!54940) Unit!137236)

(assert (=> b!4754710 (= lt!1921233 (forallContained!3806 (toList!6158 lt!1921240) lambda!223046 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754710 (contains!16559 lt!1921240 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921241 () Unit!137236)

(declare-fun Unit!137252 () Unit!137236)

(assert (=> b!4754710 (= lt!1921241 Unit!137252)))

(assert (=> b!4754710 (contains!16559 lt!1921242 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921239 () Unit!137236)

(declare-fun Unit!137253 () Unit!137236)

(assert (=> b!4754710 (= lt!1921239 Unit!137253)))

(assert (=> b!4754710 (forall!11780 (t!360598 l!13029) lambda!223046)))

(declare-fun lt!1921237 () Unit!137236)

(declare-fun Unit!137254 () Unit!137236)

(assert (=> b!4754710 (= lt!1921237 Unit!137254)))

(assert (=> b!4754710 (forall!11780 (toList!6158 lt!1921240) lambda!223046)))

(declare-fun lt!1921234 () Unit!137236)

(declare-fun Unit!137255 () Unit!137236)

(assert (=> b!4754710 (= lt!1921234 Unit!137255)))

(declare-fun lt!1921227 () Unit!137236)

(declare-fun Unit!137256 () Unit!137236)

(assert (=> b!4754710 (= lt!1921227 Unit!137256)))

(declare-fun lt!1921229 () Unit!137236)

(declare-fun addForallContainsKeyThenBeforeAdding!894 (ListMap!5625 ListMap!5625 K!14625 V!14871) Unit!137236)

(assert (=> b!4754710 (= lt!1921229 (addForallContainsKeyThenBeforeAdding!894 lt!1921019 lt!1921242 (_1!30764 (h!59527 (t!360598 l!13029))) (_2!30764 (h!59527 (t!360598 l!13029)))))))

(assert (=> b!4754710 (forall!11780 (toList!6158 lt!1921019) lambda!223046)))

(declare-fun lt!1921228 () Unit!137236)

(assert (=> b!4754710 (= lt!1921228 lt!1921229)))

(assert (=> b!4754710 (forall!11780 (toList!6158 lt!1921019) lambda!223046)))

(declare-fun lt!1921236 () Unit!137236)

(declare-fun Unit!137257 () Unit!137236)

(assert (=> b!4754710 (= lt!1921236 Unit!137257)))

(declare-fun res!2016977 () Bool)

(declare-fun call!333386 () Bool)

(assert (=> b!4754710 (= res!2016977 call!333386)))

(assert (=> b!4754710 (=> (not res!2016977) (not e!2966132))))

(assert (=> b!4754710 e!2966132))

(declare-fun lt!1921231 () Unit!137236)

(declare-fun Unit!137258 () Unit!137236)

(assert (=> b!4754710 (= lt!1921231 Unit!137258)))

(declare-fun bm!333380 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!895 (ListMap!5625) Unit!137236)

(assert (=> bm!333380 (= call!333385 (lemmaContainsAllItsOwnKeys!895 lt!1921019))))

(declare-fun b!4754711 () Bool)

(declare-fun res!2016976 () Bool)

(declare-fun e!2966131 () Bool)

(assert (=> b!4754711 (=> (not res!2016976) (not e!2966131))))

(assert (=> b!4754711 (= res!2016976 (forall!11780 (toList!6158 lt!1921019) lambda!223048))))

(declare-fun bm!333381 () Bool)

(declare-fun c!811619 () Bool)

(assert (=> bm!333381 (= call!333387 (forall!11780 (toList!6158 lt!1921019) (ite c!811619 lambda!223044 lambda!223045)))))

(declare-fun bm!333382 () Bool)

(assert (=> bm!333382 (= call!333386 (forall!11780 (ite c!811619 (toList!6158 lt!1921019) (t!360598 l!13029)) (ite c!811619 lambda!223044 lambda!223046)))))

(assert (=> d!1520367 e!2966131))

(declare-fun res!2016975 () Bool)

(assert (=> d!1520367 (=> (not res!2016975) (not e!2966131))))

(assert (=> d!1520367 (= res!2016975 (forall!11780 (t!360598 l!13029) lambda!223048))))

(assert (=> d!1520367 (= lt!1921225 e!2966133)))

(assert (=> d!1520367 (= c!811619 ((_ is Nil!53130) (t!360598 l!13029)))))

(assert (=> d!1520367 (noDuplicateKeys!2190 (t!360598 l!13029))))

(assert (=> d!1520367 (= (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) lt!1921225)))

(assert (=> b!4754712 (= e!2966133 lt!1921019)))

(declare-fun lt!1921243 () Unit!137236)

(assert (=> b!4754712 (= lt!1921243 call!333385)))

(assert (=> b!4754712 call!333386))

(declare-fun lt!1921244 () Unit!137236)

(assert (=> b!4754712 (= lt!1921244 lt!1921243)))

(assert (=> b!4754712 call!333387))

(declare-fun lt!1921232 () Unit!137236)

(declare-fun Unit!137259 () Unit!137236)

(assert (=> b!4754712 (= lt!1921232 Unit!137259)))

(declare-fun b!4754713 () Bool)

(declare-fun invariantList!1618 (List!53254) Bool)

(assert (=> b!4754713 (= e!2966131 (invariantList!1618 (toList!6158 lt!1921225)))))

(assert (= (and d!1520367 c!811619) b!4754712))

(assert (= (and d!1520367 (not c!811619)) b!4754710))

(assert (= (and b!4754710 res!2016977) b!4754709))

(assert (= (or b!4754712 b!4754710) bm!333381))

(assert (= (or b!4754712 b!4754710) bm!333382))

(assert (= (or b!4754712 b!4754710) bm!333380))

(assert (= (and d!1520367 res!2016975) b!4754711))

(assert (= (and b!4754711 res!2016976) b!4754713))

(declare-fun m!5723721 () Bool)

(assert (=> b!4754713 m!5723721))

(declare-fun m!5723727 () Bool)

(assert (=> b!4754709 m!5723727))

(declare-fun m!5723731 () Bool)

(assert (=> b!4754710 m!5723731))

(declare-fun m!5723733 () Bool)

(assert (=> b!4754710 m!5723733))

(assert (=> b!4754710 m!5723727))

(assert (=> b!4754710 m!5723733))

(declare-fun m!5723741 () Bool)

(assert (=> b!4754710 m!5723741))

(declare-fun m!5723745 () Bool)

(assert (=> b!4754710 m!5723745))

(declare-fun m!5723749 () Bool)

(assert (=> b!4754710 m!5723749))

(declare-fun m!5723751 () Bool)

(assert (=> b!4754710 m!5723751))

(assert (=> b!4754710 m!5723727))

(declare-fun m!5723753 () Bool)

(assert (=> b!4754710 m!5723753))

(declare-fun m!5723755 () Bool)

(assert (=> b!4754710 m!5723755))

(declare-fun m!5723757 () Bool)

(assert (=> b!4754710 m!5723757))

(assert (=> b!4754710 m!5723749))

(declare-fun m!5723759 () Bool)

(assert (=> bm!333382 m!5723759))

(declare-fun m!5723761 () Bool)

(assert (=> d!1520367 m!5723761))

(assert (=> d!1520367 m!5723469))

(declare-fun m!5723763 () Bool)

(assert (=> bm!333381 m!5723763))

(declare-fun m!5723765 () Bool)

(assert (=> bm!333380 m!5723765))

(declare-fun m!5723767 () Bool)

(assert (=> b!4754711 m!5723767))

(assert (=> b!4754634 d!1520367))

(declare-fun d!1520395 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9555 (List!53254) (InoxSet tuple2!54940))

(assert (=> d!1520395 (= (eq!1255 lt!1921020 lt!1921017) (= (content!9555 (toList!6158 lt!1921020)) (content!9555 (toList!6158 lt!1921017))))))

(declare-fun bs!1146265 () Bool)

(assert (= bs!1146265 d!1520395))

(declare-fun m!5723769 () Bool)

(assert (=> bs!1146265 m!5723769))

(declare-fun m!5723771 () Bool)

(assert (=> bs!1146265 m!5723771))

(assert (=> b!4754634 d!1520395))

(declare-fun d!1520397 () Bool)

(declare-fun e!2966137 () Bool)

(assert (=> d!1520397 e!2966137))

(declare-fun res!2016981 () Bool)

(assert (=> d!1520397 (=> (not res!2016981) (not e!2966137))))

(declare-fun lt!1921266 () ListMap!5625)

(assert (=> d!1520397 (= res!2016981 (contains!16559 lt!1921266 (_1!30764 (h!59527 l!13029))))))

(declare-fun lt!1921269 () List!53254)

(assert (=> d!1520397 (= lt!1921266 (ListMap!5626 lt!1921269))))

(declare-fun lt!1921267 () Unit!137236)

(declare-fun lt!1921268 () Unit!137236)

(assert (=> d!1520397 (= lt!1921267 lt!1921268)))

(assert (=> d!1520397 (= (getValueByKey!2104 lt!1921269 (_1!30764 (h!59527 l!13029))) (Some!12553 (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520397 (= lt!1921268 (lemmaContainsTupThenGetReturnValue!1181 lt!1921269 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520397 (= lt!1921269 (insertNoDuplicatedKeys!689 (toList!6158 lt!1921023) (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520397 (= (+!2424 lt!1921023 (h!59527 l!13029)) lt!1921266)))

(declare-fun b!4754721 () Bool)

(declare-fun res!2016982 () Bool)

(assert (=> b!4754721 (=> (not res!2016982) (not e!2966137))))

(assert (=> b!4754721 (= res!2016982 (= (getValueByKey!2104 (toList!6158 lt!1921266) (_1!30764 (h!59527 l!13029))) (Some!12553 (_2!30764 (h!59527 l!13029)))))))

(declare-fun b!4754722 () Bool)

(assert (=> b!4754722 (= e!2966137 (contains!16560 (toList!6158 lt!1921266) (h!59527 l!13029)))))

(assert (= (and d!1520397 res!2016981) b!4754721))

(assert (= (and b!4754721 res!2016982) b!4754722))

(declare-fun m!5723773 () Bool)

(assert (=> d!1520397 m!5723773))

(declare-fun m!5723775 () Bool)

(assert (=> d!1520397 m!5723775))

(declare-fun m!5723777 () Bool)

(assert (=> d!1520397 m!5723777))

(declare-fun m!5723779 () Bool)

(assert (=> d!1520397 m!5723779))

(declare-fun m!5723781 () Bool)

(assert (=> b!4754721 m!5723781))

(declare-fun m!5723783 () Bool)

(assert (=> b!4754722 m!5723783))

(assert (=> b!4754634 d!1520397))

(declare-fun d!1520399 () Bool)

(declare-fun e!2966138 () Bool)

(assert (=> d!1520399 e!2966138))

(declare-fun res!2016983 () Bool)

(assert (=> d!1520399 (=> (not res!2016983) (not e!2966138))))

(declare-fun lt!1921270 () ListMap!5625)

(assert (=> d!1520399 (= res!2016983 (contains!16559 lt!1921270 (_1!30764 lt!1921021)))))

(declare-fun lt!1921273 () List!53254)

(assert (=> d!1520399 (= lt!1921270 (ListMap!5626 lt!1921273))))

(declare-fun lt!1921271 () Unit!137236)

(declare-fun lt!1921272 () Unit!137236)

(assert (=> d!1520399 (= lt!1921271 lt!1921272)))

(assert (=> d!1520399 (= (getValueByKey!2104 lt!1921273 (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021)))))

(assert (=> d!1520399 (= lt!1921272 (lemmaContainsTupThenGetReturnValue!1181 lt!1921273 (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(assert (=> d!1520399 (= lt!1921273 (insertNoDuplicatedKeys!689 (toList!6158 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019)) (_1!30764 lt!1921021) (_2!30764 lt!1921021)))))

(assert (=> d!1520399 (= (+!2424 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) lt!1921021) lt!1921270)))

(declare-fun b!4754723 () Bool)

(declare-fun res!2016984 () Bool)

(assert (=> b!4754723 (=> (not res!2016984) (not e!2966138))))

(assert (=> b!4754723 (= res!2016984 (= (getValueByKey!2104 (toList!6158 lt!1921270) (_1!30764 lt!1921021)) (Some!12553 (_2!30764 lt!1921021))))))

(declare-fun b!4754724 () Bool)

(assert (=> b!4754724 (= e!2966138 (contains!16560 (toList!6158 lt!1921270) lt!1921021))))

(assert (= (and d!1520399 res!2016983) b!4754723))

(assert (= (and b!4754723 res!2016984) b!4754724))

(declare-fun m!5723785 () Bool)

(assert (=> d!1520399 m!5723785))

(declare-fun m!5723787 () Bool)

(assert (=> d!1520399 m!5723787))

(declare-fun m!5723789 () Bool)

(assert (=> d!1520399 m!5723789))

(declare-fun m!5723791 () Bool)

(assert (=> d!1520399 m!5723791))

(declare-fun m!5723793 () Bool)

(assert (=> b!4754723 m!5723793))

(declare-fun m!5723795 () Bool)

(assert (=> b!4754724 m!5723795))

(assert (=> b!4754634 d!1520399))

(declare-fun bs!1146275 () Bool)

(declare-fun b!4754728 () Bool)

(assert (= bs!1146275 (and b!4754728 b!4754712)))

(declare-fun lambda!223052 () Int)

(assert (=> bs!1146275 (= (= lt!1921020 lt!1921019) (= lambda!223052 lambda!223044))))

(declare-fun bs!1146276 () Bool)

(assert (= bs!1146276 (and b!4754728 b!4754710)))

(assert (=> bs!1146276 (= (= lt!1921020 lt!1921019) (= lambda!223052 lambda!223045))))

(assert (=> bs!1146276 (= (= lt!1921020 lt!1921242) (= lambda!223052 lambda!223046))))

(declare-fun bs!1146277 () Bool)

(assert (= bs!1146277 (and b!4754728 d!1520367)))

(assert (=> bs!1146277 (= (= lt!1921020 lt!1921225) (= lambda!223052 lambda!223048))))

(assert (=> b!4754728 true))

(declare-fun bs!1146278 () Bool)

(declare-fun b!4754726 () Bool)

(assert (= bs!1146278 (and b!4754726 b!4754728)))

(declare-fun lambda!223053 () Int)

(assert (=> bs!1146278 (= lambda!223053 lambda!223052)))

(declare-fun bs!1146279 () Bool)

(assert (= bs!1146279 (and b!4754726 b!4754710)))

(assert (=> bs!1146279 (= (= lt!1921020 lt!1921242) (= lambda!223053 lambda!223046))))

(declare-fun bs!1146280 () Bool)

(assert (= bs!1146280 (and b!4754726 b!4754712)))

(assert (=> bs!1146280 (= (= lt!1921020 lt!1921019) (= lambda!223053 lambda!223044))))

(declare-fun bs!1146281 () Bool)

(assert (= bs!1146281 (and b!4754726 d!1520367)))

(assert (=> bs!1146281 (= (= lt!1921020 lt!1921225) (= lambda!223053 lambda!223048))))

(assert (=> bs!1146279 (= (= lt!1921020 lt!1921019) (= lambda!223053 lambda!223045))))

(assert (=> b!4754726 true))

(declare-fun lt!1921292 () ListMap!5625)

(declare-fun lambda!223054 () Int)

(assert (=> bs!1146278 (= (= lt!1921292 lt!1921020) (= lambda!223054 lambda!223052))))

(assert (=> bs!1146279 (= (= lt!1921292 lt!1921242) (= lambda!223054 lambda!223046))))

(assert (=> bs!1146280 (= (= lt!1921292 lt!1921019) (= lambda!223054 lambda!223044))))

(assert (=> bs!1146281 (= (= lt!1921292 lt!1921225) (= lambda!223054 lambda!223048))))

(assert (=> b!4754726 (= (= lt!1921292 lt!1921020) (= lambda!223054 lambda!223053))))

(assert (=> bs!1146279 (= (= lt!1921292 lt!1921019) (= lambda!223054 lambda!223045))))

(assert (=> b!4754726 true))

(declare-fun bs!1146293 () Bool)

(declare-fun d!1520401 () Bool)

(assert (= bs!1146293 (and d!1520401 b!4754728)))

(declare-fun lambda!223056 () Int)

(declare-fun lt!1921275 () ListMap!5625)

(assert (=> bs!1146293 (= (= lt!1921275 lt!1921020) (= lambda!223056 lambda!223052))))

(declare-fun bs!1146294 () Bool)

(assert (= bs!1146294 (and d!1520401 b!4754710)))

(assert (=> bs!1146294 (= (= lt!1921275 lt!1921242) (= lambda!223056 lambda!223046))))

(declare-fun bs!1146295 () Bool)

(assert (= bs!1146295 (and d!1520401 b!4754712)))

(assert (=> bs!1146295 (= (= lt!1921275 lt!1921019) (= lambda!223056 lambda!223044))))

(declare-fun bs!1146296 () Bool)

(assert (= bs!1146296 (and d!1520401 d!1520367)))

(assert (=> bs!1146296 (= (= lt!1921275 lt!1921225) (= lambda!223056 lambda!223048))))

(declare-fun bs!1146297 () Bool)

(assert (= bs!1146297 (and d!1520401 b!4754726)))

(assert (=> bs!1146297 (= (= lt!1921275 lt!1921020) (= lambda!223056 lambda!223053))))

(assert (=> bs!1146297 (= (= lt!1921275 lt!1921292) (= lambda!223056 lambda!223054))))

(assert (=> bs!1146294 (= (= lt!1921275 lt!1921019) (= lambda!223056 lambda!223045))))

(assert (=> d!1520401 true))

(declare-fun b!4754725 () Bool)

(declare-fun e!2966140 () Bool)

(assert (=> b!4754725 (= e!2966140 (forall!11780 (toList!6158 lt!1921020) lambda!223054))))

(declare-fun e!2966141 () ListMap!5625)

(assert (=> b!4754726 (= e!2966141 lt!1921292)))

(declare-fun lt!1921290 () ListMap!5625)

(assert (=> b!4754726 (= lt!1921290 (+!2424 lt!1921020 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754726 (= lt!1921292 (addToMapMapFromBucket!1604 (t!360598 (t!360598 l!13029)) (+!2424 lt!1921020 (h!59527 (t!360598 l!13029)))))))

(declare-fun lt!1921285 () Unit!137236)

(declare-fun call!333391 () Unit!137236)

(assert (=> b!4754726 (= lt!1921285 call!333391)))

(declare-fun call!333393 () Bool)

(assert (=> b!4754726 call!333393))

(declare-fun lt!1921288 () Unit!137236)

(assert (=> b!4754726 (= lt!1921288 lt!1921285)))

(assert (=> b!4754726 (forall!11780 (toList!6158 lt!1921290) lambda!223054)))

(declare-fun lt!1921274 () Unit!137236)

(declare-fun Unit!137268 () Unit!137236)

(assert (=> b!4754726 (= lt!1921274 Unit!137268)))

(assert (=> b!4754726 (forall!11780 (t!360598 (t!360598 l!13029)) lambda!223054)))

(declare-fun lt!1921276 () Unit!137236)

(declare-fun Unit!137270 () Unit!137236)

(assert (=> b!4754726 (= lt!1921276 Unit!137270)))

(declare-fun lt!1921280 () Unit!137236)

(declare-fun Unit!137271 () Unit!137236)

(assert (=> b!4754726 (= lt!1921280 Unit!137271)))

(declare-fun lt!1921283 () Unit!137236)

(assert (=> b!4754726 (= lt!1921283 (forallContained!3806 (toList!6158 lt!1921290) lambda!223054 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754726 (contains!16559 lt!1921290 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921291 () Unit!137236)

(declare-fun Unit!137272 () Unit!137236)

(assert (=> b!4754726 (= lt!1921291 Unit!137272)))

(assert (=> b!4754726 (contains!16559 lt!1921292 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921289 () Unit!137236)

(declare-fun Unit!137273 () Unit!137236)

(assert (=> b!4754726 (= lt!1921289 Unit!137273)))

(assert (=> b!4754726 (forall!11780 (t!360598 l!13029) lambda!223054)))

(declare-fun lt!1921287 () Unit!137236)

(declare-fun Unit!137274 () Unit!137236)

(assert (=> b!4754726 (= lt!1921287 Unit!137274)))

(assert (=> b!4754726 (forall!11780 (toList!6158 lt!1921290) lambda!223054)))

(declare-fun lt!1921284 () Unit!137236)

(declare-fun Unit!137275 () Unit!137236)

(assert (=> b!4754726 (= lt!1921284 Unit!137275)))

(declare-fun lt!1921277 () Unit!137236)

(declare-fun Unit!137276 () Unit!137236)

(assert (=> b!4754726 (= lt!1921277 Unit!137276)))

(declare-fun lt!1921279 () Unit!137236)

(assert (=> b!4754726 (= lt!1921279 (addForallContainsKeyThenBeforeAdding!894 lt!1921020 lt!1921292 (_1!30764 (h!59527 (t!360598 l!13029))) (_2!30764 (h!59527 (t!360598 l!13029)))))))

(assert (=> b!4754726 (forall!11780 (toList!6158 lt!1921020) lambda!223054)))

(declare-fun lt!1921278 () Unit!137236)

(assert (=> b!4754726 (= lt!1921278 lt!1921279)))

(assert (=> b!4754726 (forall!11780 (toList!6158 lt!1921020) lambda!223054)))

(declare-fun lt!1921286 () Unit!137236)

(declare-fun Unit!137277 () Unit!137236)

(assert (=> b!4754726 (= lt!1921286 Unit!137277)))

(declare-fun res!2016987 () Bool)

(declare-fun call!333392 () Bool)

(assert (=> b!4754726 (= res!2016987 call!333392)))

(assert (=> b!4754726 (=> (not res!2016987) (not e!2966140))))

(assert (=> b!4754726 e!2966140))

(declare-fun lt!1921281 () Unit!137236)

(declare-fun Unit!137278 () Unit!137236)

(assert (=> b!4754726 (= lt!1921281 Unit!137278)))

(declare-fun bm!333386 () Bool)

(assert (=> bm!333386 (= call!333391 (lemmaContainsAllItsOwnKeys!895 lt!1921020))))

(declare-fun b!4754727 () Bool)

(declare-fun res!2016986 () Bool)

(declare-fun e!2966139 () Bool)

(assert (=> b!4754727 (=> (not res!2016986) (not e!2966139))))

(assert (=> b!4754727 (= res!2016986 (forall!11780 (toList!6158 lt!1921020) lambda!223056))))

(declare-fun c!811621 () Bool)

(declare-fun bm!333387 () Bool)

(assert (=> bm!333387 (= call!333393 (forall!11780 (toList!6158 lt!1921020) (ite c!811621 lambda!223052 lambda!223053)))))

(declare-fun bm!333388 () Bool)

(assert (=> bm!333388 (= call!333392 (forall!11780 (ite c!811621 (toList!6158 lt!1921020) (t!360598 l!13029)) (ite c!811621 lambda!223052 lambda!223054)))))

(assert (=> d!1520401 e!2966139))

(declare-fun res!2016985 () Bool)

(assert (=> d!1520401 (=> (not res!2016985) (not e!2966139))))

(assert (=> d!1520401 (= res!2016985 (forall!11780 (t!360598 l!13029) lambda!223056))))

(assert (=> d!1520401 (= lt!1921275 e!2966141)))

(assert (=> d!1520401 (= c!811621 ((_ is Nil!53130) (t!360598 l!13029)))))

(assert (=> d!1520401 (noDuplicateKeys!2190 (t!360598 l!13029))))

(assert (=> d!1520401 (= (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921020) lt!1921275)))

(assert (=> b!4754728 (= e!2966141 lt!1921020)))

(declare-fun lt!1921293 () Unit!137236)

(assert (=> b!4754728 (= lt!1921293 call!333391)))

(assert (=> b!4754728 call!333392))

(declare-fun lt!1921294 () Unit!137236)

(assert (=> b!4754728 (= lt!1921294 lt!1921293)))

(assert (=> b!4754728 call!333393))

(declare-fun lt!1921282 () Unit!137236)

(declare-fun Unit!137281 () Unit!137236)

(assert (=> b!4754728 (= lt!1921282 Unit!137281)))

(declare-fun b!4754729 () Bool)

(assert (=> b!4754729 (= e!2966139 (invariantList!1618 (toList!6158 lt!1921275)))))

(assert (= (and d!1520401 c!811621) b!4754728))

(assert (= (and d!1520401 (not c!811621)) b!4754726))

(assert (= (and b!4754726 res!2016987) b!4754725))

(assert (= (or b!4754728 b!4754726) bm!333387))

(assert (= (or b!4754728 b!4754726) bm!333388))

(assert (= (or b!4754728 b!4754726) bm!333386))

(assert (= (and d!1520401 res!2016985) b!4754727))

(assert (= (and b!4754727 res!2016986) b!4754729))

(declare-fun m!5723831 () Bool)

(assert (=> b!4754729 m!5723831))

(declare-fun m!5723833 () Bool)

(assert (=> b!4754725 m!5723833))

(declare-fun m!5723835 () Bool)

(assert (=> b!4754726 m!5723835))

(declare-fun m!5723837 () Bool)

(assert (=> b!4754726 m!5723837))

(assert (=> b!4754726 m!5723833))

(assert (=> b!4754726 m!5723837))

(declare-fun m!5723839 () Bool)

(assert (=> b!4754726 m!5723839))

(declare-fun m!5723841 () Bool)

(assert (=> b!4754726 m!5723841))

(declare-fun m!5723843 () Bool)

(assert (=> b!4754726 m!5723843))

(declare-fun m!5723845 () Bool)

(assert (=> b!4754726 m!5723845))

(assert (=> b!4754726 m!5723833))

(declare-fun m!5723847 () Bool)

(assert (=> b!4754726 m!5723847))

(declare-fun m!5723849 () Bool)

(assert (=> b!4754726 m!5723849))

(declare-fun m!5723851 () Bool)

(assert (=> b!4754726 m!5723851))

(assert (=> b!4754726 m!5723843))

(declare-fun m!5723853 () Bool)

(assert (=> bm!333388 m!5723853))

(declare-fun m!5723855 () Bool)

(assert (=> d!1520401 m!5723855))

(assert (=> d!1520401 m!5723469))

(declare-fun m!5723857 () Bool)

(assert (=> bm!333387 m!5723857))

(declare-fun m!5723859 () Bool)

(assert (=> bm!333386 m!5723859))

(declare-fun m!5723861 () Bool)

(assert (=> b!4754727 m!5723861))

(assert (=> b!4754634 d!1520401))

(declare-fun d!1520405 () Bool)

(assert (=> d!1520405 (= (eq!1255 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921020) (+!2424 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) lt!1921021)) (= (content!9555 (toList!6158 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921020))) (content!9555 (toList!6158 (+!2424 (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921019) lt!1921021)))))))

(declare-fun bs!1146298 () Bool)

(assert (= bs!1146298 d!1520405))

(declare-fun m!5723863 () Bool)

(assert (=> bs!1146298 m!5723863))

(declare-fun m!5723865 () Bool)

(assert (=> bs!1146298 m!5723865))

(assert (=> b!4754634 d!1520405))

(declare-fun d!1520407 () Bool)

(declare-fun e!2966144 () Bool)

(assert (=> d!1520407 e!2966144))

(declare-fun res!2016990 () Bool)

(assert (=> d!1520407 (=> (not res!2016990) (not e!2966144))))

(declare-fun lt!1921295 () ListMap!5625)

(assert (=> d!1520407 (= res!2016990 (contains!16559 lt!1921295 (_1!30764 (h!59527 l!13029))))))

(declare-fun lt!1921298 () List!53254)

(assert (=> d!1520407 (= lt!1921295 (ListMap!5626 lt!1921298))))

(declare-fun lt!1921296 () Unit!137236)

(declare-fun lt!1921297 () Unit!137236)

(assert (=> d!1520407 (= lt!1921296 lt!1921297)))

(assert (=> d!1520407 (= (getValueByKey!2104 lt!1921298 (_1!30764 (h!59527 l!13029))) (Some!12553 (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520407 (= lt!1921297 (lemmaContainsTupThenGetReturnValue!1181 lt!1921298 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520407 (= lt!1921298 (insertNoDuplicatedKeys!689 (toList!6158 lhm!63) (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029))))))

(assert (=> d!1520407 (= (+!2424 lhm!63 (h!59527 l!13029)) lt!1921295)))

(declare-fun b!4754730 () Bool)

(declare-fun res!2016991 () Bool)

(assert (=> b!4754730 (=> (not res!2016991) (not e!2966144))))

(assert (=> b!4754730 (= res!2016991 (= (getValueByKey!2104 (toList!6158 lt!1921295) (_1!30764 (h!59527 l!13029))) (Some!12553 (_2!30764 (h!59527 l!13029)))))))

(declare-fun b!4754731 () Bool)

(assert (=> b!4754731 (= e!2966144 (contains!16560 (toList!6158 lt!1921295) (h!59527 l!13029)))))

(assert (= (and d!1520407 res!2016990) b!4754730))

(assert (= (and b!4754730 res!2016991) b!4754731))

(declare-fun m!5723867 () Bool)

(assert (=> d!1520407 m!5723867))

(declare-fun m!5723869 () Bool)

(assert (=> d!1520407 m!5723869))

(declare-fun m!5723871 () Bool)

(assert (=> d!1520407 m!5723871))

(declare-fun m!5723873 () Bool)

(assert (=> d!1520407 m!5723873))

(declare-fun m!5723875 () Bool)

(assert (=> b!4754730 m!5723875))

(declare-fun m!5723877 () Bool)

(assert (=> b!4754731 m!5723877))

(assert (=> b!4754634 d!1520407))

(declare-fun d!1520409 () Bool)

(assert (=> d!1520409 (eq!1255 (+!2424 (+!2424 lhm!63 (tuple2!54941 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029)))) (tuple2!54941 key!4572 value!2966)) (+!2424 (+!2424 lhm!63 (tuple2!54941 key!4572 value!2966)) (tuple2!54941 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029)))))))

(declare-fun lt!1921301 () Unit!137236)

(declare-fun choose!33878 (ListMap!5625 K!14625 V!14871 K!14625 V!14871) Unit!137236)

(assert (=> d!1520409 (= lt!1921301 (choose!33878 lhm!63 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029)) key!4572 value!2966))))

(assert (=> d!1520409 (not (= (_1!30764 (h!59527 l!13029)) key!4572))))

(assert (=> d!1520409 (= (addCommutativeForDiffKeys!56 lhm!63 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029)) key!4572 value!2966) lt!1921301)))

(declare-fun bs!1146300 () Bool)

(assert (= bs!1146300 d!1520409))

(declare-fun m!5723881 () Bool)

(assert (=> bs!1146300 m!5723881))

(declare-fun m!5723883 () Bool)

(assert (=> bs!1146300 m!5723883))

(declare-fun m!5723885 () Bool)

(assert (=> bs!1146300 m!5723885))

(declare-fun m!5723887 () Bool)

(assert (=> bs!1146300 m!5723887))

(assert (=> bs!1146300 m!5723881))

(declare-fun m!5723889 () Bool)

(assert (=> bs!1146300 m!5723889))

(assert (=> bs!1146300 m!5723887))

(assert (=> bs!1146300 m!5723883))

(declare-fun m!5723891 () Bool)

(assert (=> bs!1146300 m!5723891))

(assert (=> bs!1146300 m!5723885))

(assert (=> b!4754634 d!1520409))

(declare-fun d!1520413 () Bool)

(declare-fun res!2017000 () Bool)

(declare-fun e!2966157 () Bool)

(assert (=> d!1520413 (=> res!2017000 e!2966157)))

(assert (=> d!1520413 (= res!2017000 (and ((_ is Cons!53130) l!13029) (= (_1!30764 (h!59527 l!13029)) key!4572)))))

(assert (=> d!1520413 (= (containsKey!3596 l!13029 key!4572) e!2966157)))

(declare-fun b!4754748 () Bool)

(declare-fun e!2966158 () Bool)

(assert (=> b!4754748 (= e!2966157 e!2966158)))

(declare-fun res!2017001 () Bool)

(assert (=> b!4754748 (=> (not res!2017001) (not e!2966158))))

(assert (=> b!4754748 (= res!2017001 ((_ is Cons!53130) l!13029))))

(declare-fun b!4754749 () Bool)

(assert (=> b!4754749 (= e!2966158 (containsKey!3596 (t!360598 l!13029) key!4572))))

(assert (= (and d!1520413 (not res!2017000)) b!4754748))

(assert (= (and b!4754748 res!2017001) b!4754749))

(assert (=> b!4754749 m!5723521))

(assert (=> start!485984 d!1520413))

(declare-fun d!1520415 () Bool)

(assert (=> d!1520415 (= (inv!68495 lhm!63) (invariantList!1618 (toList!6158 lhm!63)))))

(declare-fun bs!1146301 () Bool)

(assert (= bs!1146301 d!1520415))

(declare-fun m!5723893 () Bool)

(assert (=> bs!1146301 m!5723893))

(assert (=> start!485984 d!1520415))

(declare-fun bs!1146302 () Bool)

(declare-fun b!4754753 () Bool)

(assert (= bs!1146302 (and b!4754753 b!4754728)))

(declare-fun lambda!223057 () Int)

(assert (=> bs!1146302 (= (= lt!1921023 lt!1921020) (= lambda!223057 lambda!223052))))

(declare-fun bs!1146303 () Bool)

(assert (= bs!1146303 (and b!4754753 b!4754710)))

(assert (=> bs!1146303 (= (= lt!1921023 lt!1921242) (= lambda!223057 lambda!223046))))

(declare-fun bs!1146304 () Bool)

(assert (= bs!1146304 (and b!4754753 b!4754712)))

(assert (=> bs!1146304 (= (= lt!1921023 lt!1921019) (= lambda!223057 lambda!223044))))

(declare-fun bs!1146305 () Bool)

(assert (= bs!1146305 (and b!4754753 d!1520401)))

(assert (=> bs!1146305 (= (= lt!1921023 lt!1921275) (= lambda!223057 lambda!223056))))

(declare-fun bs!1146306 () Bool)

(assert (= bs!1146306 (and b!4754753 d!1520367)))

(assert (=> bs!1146306 (= (= lt!1921023 lt!1921225) (= lambda!223057 lambda!223048))))

(declare-fun bs!1146307 () Bool)

(assert (= bs!1146307 (and b!4754753 b!4754726)))

(assert (=> bs!1146307 (= (= lt!1921023 lt!1921020) (= lambda!223057 lambda!223053))))

(assert (=> bs!1146307 (= (= lt!1921023 lt!1921292) (= lambda!223057 lambda!223054))))

(assert (=> bs!1146303 (= (= lt!1921023 lt!1921019) (= lambda!223057 lambda!223045))))

(assert (=> b!4754753 true))

(declare-fun bs!1146308 () Bool)

(declare-fun b!4754751 () Bool)

(assert (= bs!1146308 (and b!4754751 b!4754728)))

(declare-fun lambda!223058 () Int)

(assert (=> bs!1146308 (= (= lt!1921023 lt!1921020) (= lambda!223058 lambda!223052))))

(declare-fun bs!1146309 () Bool)

(assert (= bs!1146309 (and b!4754751 b!4754710)))

(assert (=> bs!1146309 (= (= lt!1921023 lt!1921242) (= lambda!223058 lambda!223046))))

(declare-fun bs!1146310 () Bool)

(assert (= bs!1146310 (and b!4754751 b!4754712)))

(assert (=> bs!1146310 (= (= lt!1921023 lt!1921019) (= lambda!223058 lambda!223044))))

(declare-fun bs!1146311 () Bool)

(assert (= bs!1146311 (and b!4754751 d!1520401)))

(assert (=> bs!1146311 (= (= lt!1921023 lt!1921275) (= lambda!223058 lambda!223056))))

(declare-fun bs!1146312 () Bool)

(assert (= bs!1146312 (and b!4754751 d!1520367)))

(assert (=> bs!1146312 (= (= lt!1921023 lt!1921225) (= lambda!223058 lambda!223048))))

(declare-fun bs!1146313 () Bool)

(assert (= bs!1146313 (and b!4754751 b!4754753)))

(assert (=> bs!1146313 (= lambda!223058 lambda!223057)))

(declare-fun bs!1146314 () Bool)

(assert (= bs!1146314 (and b!4754751 b!4754726)))

(assert (=> bs!1146314 (= (= lt!1921023 lt!1921020) (= lambda!223058 lambda!223053))))

(assert (=> bs!1146314 (= (= lt!1921023 lt!1921292) (= lambda!223058 lambda!223054))))

(assert (=> bs!1146309 (= (= lt!1921023 lt!1921019) (= lambda!223058 lambda!223045))))

(assert (=> b!4754751 true))

(declare-fun lambda!223059 () Int)

(declare-fun lt!1921320 () ListMap!5625)

(assert (=> bs!1146308 (= (= lt!1921320 lt!1921020) (= lambda!223059 lambda!223052))))

(assert (=> bs!1146309 (= (= lt!1921320 lt!1921242) (= lambda!223059 lambda!223046))))

(assert (=> bs!1146310 (= (= lt!1921320 lt!1921019) (= lambda!223059 lambda!223044))))

(assert (=> bs!1146311 (= (= lt!1921320 lt!1921275) (= lambda!223059 lambda!223056))))

(assert (=> bs!1146312 (= (= lt!1921320 lt!1921225) (= lambda!223059 lambda!223048))))

(assert (=> bs!1146313 (= (= lt!1921320 lt!1921023) (= lambda!223059 lambda!223057))))

(assert (=> bs!1146314 (= (= lt!1921320 lt!1921020) (= lambda!223059 lambda!223053))))

(assert (=> bs!1146314 (= (= lt!1921320 lt!1921292) (= lambda!223059 lambda!223054))))

(assert (=> bs!1146309 (= (= lt!1921320 lt!1921019) (= lambda!223059 lambda!223045))))

(assert (=> b!4754751 (= (= lt!1921320 lt!1921023) (= lambda!223059 lambda!223058))))

(assert (=> b!4754751 true))

(declare-fun bs!1146315 () Bool)

(declare-fun d!1520417 () Bool)

(assert (= bs!1146315 (and d!1520417 b!4754728)))

(declare-fun lt!1921303 () ListMap!5625)

(declare-fun lambda!223060 () Int)

(assert (=> bs!1146315 (= (= lt!1921303 lt!1921020) (= lambda!223060 lambda!223052))))

(declare-fun bs!1146316 () Bool)

(assert (= bs!1146316 (and d!1520417 b!4754710)))

(assert (=> bs!1146316 (= (= lt!1921303 lt!1921242) (= lambda!223060 lambda!223046))))

(declare-fun bs!1146317 () Bool)

(assert (= bs!1146317 (and d!1520417 b!4754712)))

(assert (=> bs!1146317 (= (= lt!1921303 lt!1921019) (= lambda!223060 lambda!223044))))

(declare-fun bs!1146318 () Bool)

(assert (= bs!1146318 (and d!1520417 d!1520367)))

(assert (=> bs!1146318 (= (= lt!1921303 lt!1921225) (= lambda!223060 lambda!223048))))

(declare-fun bs!1146319 () Bool)

(assert (= bs!1146319 (and d!1520417 b!4754753)))

(assert (=> bs!1146319 (= (= lt!1921303 lt!1921023) (= lambda!223060 lambda!223057))))

(declare-fun bs!1146320 () Bool)

(assert (= bs!1146320 (and d!1520417 b!4754726)))

(assert (=> bs!1146320 (= (= lt!1921303 lt!1921020) (= lambda!223060 lambda!223053))))

(assert (=> bs!1146320 (= (= lt!1921303 lt!1921292) (= lambda!223060 lambda!223054))))

(assert (=> bs!1146316 (= (= lt!1921303 lt!1921019) (= lambda!223060 lambda!223045))))

(declare-fun bs!1146321 () Bool)

(assert (= bs!1146321 (and d!1520417 b!4754751)))

(assert (=> bs!1146321 (= (= lt!1921303 lt!1921023) (= lambda!223060 lambda!223058))))

(assert (=> bs!1146321 (= (= lt!1921303 lt!1921320) (= lambda!223060 lambda!223059))))

(declare-fun bs!1146322 () Bool)

(assert (= bs!1146322 (and d!1520417 d!1520401)))

(assert (=> bs!1146322 (= (= lt!1921303 lt!1921275) (= lambda!223060 lambda!223056))))

(assert (=> d!1520417 true))

(declare-fun b!4754750 () Bool)

(declare-fun e!2966160 () Bool)

(assert (=> b!4754750 (= e!2966160 (forall!11780 (toList!6158 lt!1921023) lambda!223059))))

(declare-fun e!2966161 () ListMap!5625)

(assert (=> b!4754751 (= e!2966161 lt!1921320)))

(declare-fun lt!1921318 () ListMap!5625)

(assert (=> b!4754751 (= lt!1921318 (+!2424 lt!1921023 (h!59527 l!13029)))))

(assert (=> b!4754751 (= lt!1921320 (addToMapMapFromBucket!1604 (t!360598 l!13029) (+!2424 lt!1921023 (h!59527 l!13029))))))

(declare-fun lt!1921313 () Unit!137236)

(declare-fun call!333394 () Unit!137236)

(assert (=> b!4754751 (= lt!1921313 call!333394)))

(declare-fun call!333396 () Bool)

(assert (=> b!4754751 call!333396))

(declare-fun lt!1921316 () Unit!137236)

(assert (=> b!4754751 (= lt!1921316 lt!1921313)))

(assert (=> b!4754751 (forall!11780 (toList!6158 lt!1921318) lambda!223059)))

(declare-fun lt!1921302 () Unit!137236)

(declare-fun Unit!137287 () Unit!137236)

(assert (=> b!4754751 (= lt!1921302 Unit!137287)))

(assert (=> b!4754751 (forall!11780 (t!360598 l!13029) lambda!223059)))

(declare-fun lt!1921304 () Unit!137236)

(declare-fun Unit!137289 () Unit!137236)

(assert (=> b!4754751 (= lt!1921304 Unit!137289)))

(declare-fun lt!1921308 () Unit!137236)

(declare-fun Unit!137290 () Unit!137236)

(assert (=> b!4754751 (= lt!1921308 Unit!137290)))

(declare-fun lt!1921311 () Unit!137236)

(assert (=> b!4754751 (= lt!1921311 (forallContained!3806 (toList!6158 lt!1921318) lambda!223059 (h!59527 l!13029)))))

(assert (=> b!4754751 (contains!16559 lt!1921318 (_1!30764 (h!59527 l!13029)))))

(declare-fun lt!1921319 () Unit!137236)

(declare-fun Unit!137292 () Unit!137236)

(assert (=> b!4754751 (= lt!1921319 Unit!137292)))

(assert (=> b!4754751 (contains!16559 lt!1921320 (_1!30764 (h!59527 l!13029)))))

(declare-fun lt!1921317 () Unit!137236)

(declare-fun Unit!137295 () Unit!137236)

(assert (=> b!4754751 (= lt!1921317 Unit!137295)))

(assert (=> b!4754751 (forall!11780 l!13029 lambda!223059)))

(declare-fun lt!1921315 () Unit!137236)

(declare-fun Unit!137296 () Unit!137236)

(assert (=> b!4754751 (= lt!1921315 Unit!137296)))

(assert (=> b!4754751 (forall!11780 (toList!6158 lt!1921318) lambda!223059)))

(declare-fun lt!1921312 () Unit!137236)

(declare-fun Unit!137297 () Unit!137236)

(assert (=> b!4754751 (= lt!1921312 Unit!137297)))

(declare-fun lt!1921305 () Unit!137236)

(declare-fun Unit!137299 () Unit!137236)

(assert (=> b!4754751 (= lt!1921305 Unit!137299)))

(declare-fun lt!1921307 () Unit!137236)

(assert (=> b!4754751 (= lt!1921307 (addForallContainsKeyThenBeforeAdding!894 lt!1921023 lt!1921320 (_1!30764 (h!59527 l!13029)) (_2!30764 (h!59527 l!13029))))))

(assert (=> b!4754751 (forall!11780 (toList!6158 lt!1921023) lambda!223059)))

(declare-fun lt!1921306 () Unit!137236)

(assert (=> b!4754751 (= lt!1921306 lt!1921307)))

(assert (=> b!4754751 (forall!11780 (toList!6158 lt!1921023) lambda!223059)))

(declare-fun lt!1921314 () Unit!137236)

(declare-fun Unit!137301 () Unit!137236)

(assert (=> b!4754751 (= lt!1921314 Unit!137301)))

(declare-fun res!2017004 () Bool)

(declare-fun call!333395 () Bool)

(assert (=> b!4754751 (= res!2017004 call!333395)))

(assert (=> b!4754751 (=> (not res!2017004) (not e!2966160))))

(assert (=> b!4754751 e!2966160))

(declare-fun lt!1921309 () Unit!137236)

(declare-fun Unit!137302 () Unit!137236)

(assert (=> b!4754751 (= lt!1921309 Unit!137302)))

(declare-fun bm!333389 () Bool)

(assert (=> bm!333389 (= call!333394 (lemmaContainsAllItsOwnKeys!895 lt!1921023))))

(declare-fun b!4754752 () Bool)

(declare-fun res!2017003 () Bool)

(declare-fun e!2966159 () Bool)

(assert (=> b!4754752 (=> (not res!2017003) (not e!2966159))))

(assert (=> b!4754752 (= res!2017003 (forall!11780 (toList!6158 lt!1921023) lambda!223060))))

(declare-fun c!811622 () Bool)

(declare-fun bm!333390 () Bool)

(assert (=> bm!333390 (= call!333396 (forall!11780 (toList!6158 lt!1921023) (ite c!811622 lambda!223057 lambda!223058)))))

(declare-fun bm!333391 () Bool)

(assert (=> bm!333391 (= call!333395 (forall!11780 (ite c!811622 (toList!6158 lt!1921023) l!13029) (ite c!811622 lambda!223057 lambda!223059)))))

(assert (=> d!1520417 e!2966159))

(declare-fun res!2017002 () Bool)

(assert (=> d!1520417 (=> (not res!2017002) (not e!2966159))))

(assert (=> d!1520417 (= res!2017002 (forall!11780 l!13029 lambda!223060))))

(assert (=> d!1520417 (= lt!1921303 e!2966161)))

(assert (=> d!1520417 (= c!811622 ((_ is Nil!53130) l!13029))))

(assert (=> d!1520417 (noDuplicateKeys!2190 l!13029)))

(assert (=> d!1520417 (= (addToMapMapFromBucket!1604 l!13029 lt!1921023) lt!1921303)))

(assert (=> b!4754753 (= e!2966161 lt!1921023)))

(declare-fun lt!1921321 () Unit!137236)

(assert (=> b!4754753 (= lt!1921321 call!333394)))

(assert (=> b!4754753 call!333395))

(declare-fun lt!1921322 () Unit!137236)

(assert (=> b!4754753 (= lt!1921322 lt!1921321)))

(assert (=> b!4754753 call!333396))

(declare-fun lt!1921310 () Unit!137236)

(declare-fun Unit!137303 () Unit!137236)

(assert (=> b!4754753 (= lt!1921310 Unit!137303)))

(declare-fun b!4754754 () Bool)

(assert (=> b!4754754 (= e!2966159 (invariantList!1618 (toList!6158 lt!1921303)))))

(assert (= (and d!1520417 c!811622) b!4754753))

(assert (= (and d!1520417 (not c!811622)) b!4754751))

(assert (= (and b!4754751 res!2017004) b!4754750))

(assert (= (or b!4754753 b!4754751) bm!333390))

(assert (= (or b!4754753 b!4754751) bm!333391))

(assert (= (or b!4754753 b!4754751) bm!333389))

(assert (= (and d!1520417 res!2017002) b!4754752))

(assert (= (and b!4754752 res!2017003) b!4754754))

(declare-fun m!5723895 () Bool)

(assert (=> b!4754754 m!5723895))

(declare-fun m!5723897 () Bool)

(assert (=> b!4754750 m!5723897))

(declare-fun m!5723899 () Bool)

(assert (=> b!4754751 m!5723899))

(assert (=> b!4754751 m!5723485))

(assert (=> b!4754751 m!5723897))

(assert (=> b!4754751 m!5723485))

(declare-fun m!5723901 () Bool)

(assert (=> b!4754751 m!5723901))

(declare-fun m!5723903 () Bool)

(assert (=> b!4754751 m!5723903))

(declare-fun m!5723905 () Bool)

(assert (=> b!4754751 m!5723905))

(declare-fun m!5723907 () Bool)

(assert (=> b!4754751 m!5723907))

(assert (=> b!4754751 m!5723897))

(declare-fun m!5723909 () Bool)

(assert (=> b!4754751 m!5723909))

(declare-fun m!5723911 () Bool)

(assert (=> b!4754751 m!5723911))

(declare-fun m!5723913 () Bool)

(assert (=> b!4754751 m!5723913))

(assert (=> b!4754751 m!5723905))

(declare-fun m!5723915 () Bool)

(assert (=> bm!333391 m!5723915))

(declare-fun m!5723917 () Bool)

(assert (=> d!1520417 m!5723917))

(assert (=> d!1520417 m!5723493))

(declare-fun m!5723919 () Bool)

(assert (=> bm!333390 m!5723919))

(declare-fun m!5723921 () Bool)

(assert (=> bm!333389 m!5723921))

(declare-fun m!5723923 () Bool)

(assert (=> b!4754752 m!5723923))

(assert (=> b!4754632 d!1520417))

(declare-fun bs!1146323 () Bool)

(declare-fun b!4754758 () Bool)

(assert (= bs!1146323 (and b!4754758 b!4754728)))

(declare-fun lambda!223061 () Int)

(assert (=> bs!1146323 (= (= lt!1921017 lt!1921020) (= lambda!223061 lambda!223052))))

(declare-fun bs!1146324 () Bool)

(assert (= bs!1146324 (and b!4754758 b!4754710)))

(assert (=> bs!1146324 (= (= lt!1921017 lt!1921242) (= lambda!223061 lambda!223046))))

(declare-fun bs!1146325 () Bool)

(assert (= bs!1146325 (and b!4754758 b!4754712)))

(assert (=> bs!1146325 (= (= lt!1921017 lt!1921019) (= lambda!223061 lambda!223044))))

(declare-fun bs!1146326 () Bool)

(assert (= bs!1146326 (and b!4754758 d!1520367)))

(assert (=> bs!1146326 (= (= lt!1921017 lt!1921225) (= lambda!223061 lambda!223048))))

(declare-fun bs!1146327 () Bool)

(assert (= bs!1146327 (and b!4754758 b!4754753)))

(assert (=> bs!1146327 (= (= lt!1921017 lt!1921023) (= lambda!223061 lambda!223057))))

(declare-fun bs!1146328 () Bool)

(assert (= bs!1146328 (and b!4754758 b!4754726)))

(assert (=> bs!1146328 (= (= lt!1921017 lt!1921292) (= lambda!223061 lambda!223054))))

(assert (=> bs!1146324 (= (= lt!1921017 lt!1921019) (= lambda!223061 lambda!223045))))

(declare-fun bs!1146329 () Bool)

(assert (= bs!1146329 (and b!4754758 b!4754751)))

(assert (=> bs!1146329 (= (= lt!1921017 lt!1921023) (= lambda!223061 lambda!223058))))

(assert (=> bs!1146329 (= (= lt!1921017 lt!1921320) (= lambda!223061 lambda!223059))))

(declare-fun bs!1146330 () Bool)

(assert (= bs!1146330 (and b!4754758 d!1520401)))

(assert (=> bs!1146330 (= (= lt!1921017 lt!1921275) (= lambda!223061 lambda!223056))))

(assert (=> bs!1146328 (= (= lt!1921017 lt!1921020) (= lambda!223061 lambda!223053))))

(declare-fun bs!1146331 () Bool)

(assert (= bs!1146331 (and b!4754758 d!1520417)))

(assert (=> bs!1146331 (= (= lt!1921017 lt!1921303) (= lambda!223061 lambda!223060))))

(assert (=> b!4754758 true))

(declare-fun bs!1146332 () Bool)

(declare-fun b!4754756 () Bool)

(assert (= bs!1146332 (and b!4754756 b!4754728)))

(declare-fun lambda!223062 () Int)

(assert (=> bs!1146332 (= (= lt!1921017 lt!1921020) (= lambda!223062 lambda!223052))))

(declare-fun bs!1146333 () Bool)

(assert (= bs!1146333 (and b!4754756 b!4754710)))

(assert (=> bs!1146333 (= (= lt!1921017 lt!1921242) (= lambda!223062 lambda!223046))))

(declare-fun bs!1146334 () Bool)

(assert (= bs!1146334 (and b!4754756 b!4754712)))

(assert (=> bs!1146334 (= (= lt!1921017 lt!1921019) (= lambda!223062 lambda!223044))))

(declare-fun bs!1146335 () Bool)

(assert (= bs!1146335 (and b!4754756 d!1520367)))

(assert (=> bs!1146335 (= (= lt!1921017 lt!1921225) (= lambda!223062 lambda!223048))))

(declare-fun bs!1146336 () Bool)

(assert (= bs!1146336 (and b!4754756 b!4754753)))

(assert (=> bs!1146336 (= (= lt!1921017 lt!1921023) (= lambda!223062 lambda!223057))))

(declare-fun bs!1146337 () Bool)

(assert (= bs!1146337 (and b!4754756 b!4754726)))

(assert (=> bs!1146337 (= (= lt!1921017 lt!1921292) (= lambda!223062 lambda!223054))))

(assert (=> bs!1146333 (= (= lt!1921017 lt!1921019) (= lambda!223062 lambda!223045))))

(declare-fun bs!1146338 () Bool)

(assert (= bs!1146338 (and b!4754756 b!4754751)))

(assert (=> bs!1146338 (= (= lt!1921017 lt!1921023) (= lambda!223062 lambda!223058))))

(declare-fun bs!1146339 () Bool)

(assert (= bs!1146339 (and b!4754756 b!4754758)))

(assert (=> bs!1146339 (= lambda!223062 lambda!223061)))

(assert (=> bs!1146338 (= (= lt!1921017 lt!1921320) (= lambda!223062 lambda!223059))))

(declare-fun bs!1146340 () Bool)

(assert (= bs!1146340 (and b!4754756 d!1520401)))

(assert (=> bs!1146340 (= (= lt!1921017 lt!1921275) (= lambda!223062 lambda!223056))))

(assert (=> bs!1146337 (= (= lt!1921017 lt!1921020) (= lambda!223062 lambda!223053))))

(declare-fun bs!1146341 () Bool)

(assert (= bs!1146341 (and b!4754756 d!1520417)))

(assert (=> bs!1146341 (= (= lt!1921017 lt!1921303) (= lambda!223062 lambda!223060))))

(assert (=> b!4754756 true))

(declare-fun lt!1921341 () ListMap!5625)

(declare-fun lambda!223063 () Int)

(assert (=> bs!1146332 (= (= lt!1921341 lt!1921020) (= lambda!223063 lambda!223052))))

(assert (=> bs!1146333 (= (= lt!1921341 lt!1921242) (= lambda!223063 lambda!223046))))

(assert (=> bs!1146334 (= (= lt!1921341 lt!1921019) (= lambda!223063 lambda!223044))))

(assert (=> bs!1146335 (= (= lt!1921341 lt!1921225) (= lambda!223063 lambda!223048))))

(assert (=> bs!1146336 (= (= lt!1921341 lt!1921023) (= lambda!223063 lambda!223057))))

(assert (=> bs!1146337 (= (= lt!1921341 lt!1921292) (= lambda!223063 lambda!223054))))

(assert (=> bs!1146333 (= (= lt!1921341 lt!1921019) (= lambda!223063 lambda!223045))))

(assert (=> bs!1146338 (= (= lt!1921341 lt!1921023) (= lambda!223063 lambda!223058))))

(assert (=> b!4754756 (= (= lt!1921341 lt!1921017) (= lambda!223063 lambda!223062))))

(assert (=> bs!1146339 (= (= lt!1921341 lt!1921017) (= lambda!223063 lambda!223061))))

(assert (=> bs!1146338 (= (= lt!1921341 lt!1921320) (= lambda!223063 lambda!223059))))

(assert (=> bs!1146340 (= (= lt!1921341 lt!1921275) (= lambda!223063 lambda!223056))))

(assert (=> bs!1146337 (= (= lt!1921341 lt!1921020) (= lambda!223063 lambda!223053))))

(assert (=> bs!1146341 (= (= lt!1921341 lt!1921303) (= lambda!223063 lambda!223060))))

(assert (=> b!4754756 true))

(declare-fun bs!1146342 () Bool)

(declare-fun d!1520419 () Bool)

(assert (= bs!1146342 (and d!1520419 b!4754728)))

(declare-fun lt!1921324 () ListMap!5625)

(declare-fun lambda!223064 () Int)

(assert (=> bs!1146342 (= (= lt!1921324 lt!1921020) (= lambda!223064 lambda!223052))))

(declare-fun bs!1146343 () Bool)

(assert (= bs!1146343 (and d!1520419 b!4754710)))

(assert (=> bs!1146343 (= (= lt!1921324 lt!1921242) (= lambda!223064 lambda!223046))))

(declare-fun bs!1146344 () Bool)

(assert (= bs!1146344 (and d!1520419 b!4754712)))

(assert (=> bs!1146344 (= (= lt!1921324 lt!1921019) (= lambda!223064 lambda!223044))))

(declare-fun bs!1146345 () Bool)

(assert (= bs!1146345 (and d!1520419 d!1520367)))

(assert (=> bs!1146345 (= (= lt!1921324 lt!1921225) (= lambda!223064 lambda!223048))))

(declare-fun bs!1146346 () Bool)

(assert (= bs!1146346 (and d!1520419 b!4754753)))

(assert (=> bs!1146346 (= (= lt!1921324 lt!1921023) (= lambda!223064 lambda!223057))))

(declare-fun bs!1146347 () Bool)

(assert (= bs!1146347 (and d!1520419 b!4754726)))

(assert (=> bs!1146347 (= (= lt!1921324 lt!1921292) (= lambda!223064 lambda!223054))))

(declare-fun bs!1146348 () Bool)

(assert (= bs!1146348 (and d!1520419 b!4754756)))

(assert (=> bs!1146348 (= (= lt!1921324 lt!1921341) (= lambda!223064 lambda!223063))))

(assert (=> bs!1146343 (= (= lt!1921324 lt!1921019) (= lambda!223064 lambda!223045))))

(declare-fun bs!1146349 () Bool)

(assert (= bs!1146349 (and d!1520419 b!4754751)))

(assert (=> bs!1146349 (= (= lt!1921324 lt!1921023) (= lambda!223064 lambda!223058))))

(assert (=> bs!1146348 (= (= lt!1921324 lt!1921017) (= lambda!223064 lambda!223062))))

(declare-fun bs!1146350 () Bool)

(assert (= bs!1146350 (and d!1520419 b!4754758)))

(assert (=> bs!1146350 (= (= lt!1921324 lt!1921017) (= lambda!223064 lambda!223061))))

(assert (=> bs!1146349 (= (= lt!1921324 lt!1921320) (= lambda!223064 lambda!223059))))

(declare-fun bs!1146351 () Bool)

(assert (= bs!1146351 (and d!1520419 d!1520401)))

(assert (=> bs!1146351 (= (= lt!1921324 lt!1921275) (= lambda!223064 lambda!223056))))

(assert (=> bs!1146347 (= (= lt!1921324 lt!1921020) (= lambda!223064 lambda!223053))))

(declare-fun bs!1146352 () Bool)

(assert (= bs!1146352 (and d!1520419 d!1520417)))

(assert (=> bs!1146352 (= (= lt!1921324 lt!1921303) (= lambda!223064 lambda!223060))))

(assert (=> d!1520419 true))

(declare-fun b!4754755 () Bool)

(declare-fun e!2966163 () Bool)

(assert (=> b!4754755 (= e!2966163 (forall!11780 (toList!6158 lt!1921017) lambda!223063))))

(declare-fun e!2966164 () ListMap!5625)

(assert (=> b!4754756 (= e!2966164 lt!1921341)))

(declare-fun lt!1921339 () ListMap!5625)

(assert (=> b!4754756 (= lt!1921339 (+!2424 lt!1921017 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754756 (= lt!1921341 (addToMapMapFromBucket!1604 (t!360598 (t!360598 l!13029)) (+!2424 lt!1921017 (h!59527 (t!360598 l!13029)))))))

(declare-fun lt!1921334 () Unit!137236)

(declare-fun call!333397 () Unit!137236)

(assert (=> b!4754756 (= lt!1921334 call!333397)))

(declare-fun call!333399 () Bool)

(assert (=> b!4754756 call!333399))

(declare-fun lt!1921337 () Unit!137236)

(assert (=> b!4754756 (= lt!1921337 lt!1921334)))

(assert (=> b!4754756 (forall!11780 (toList!6158 lt!1921339) lambda!223063)))

(declare-fun lt!1921323 () Unit!137236)

(declare-fun Unit!137305 () Unit!137236)

(assert (=> b!4754756 (= lt!1921323 Unit!137305)))

(assert (=> b!4754756 (forall!11780 (t!360598 (t!360598 l!13029)) lambda!223063)))

(declare-fun lt!1921325 () Unit!137236)

(declare-fun Unit!137306 () Unit!137236)

(assert (=> b!4754756 (= lt!1921325 Unit!137306)))

(declare-fun lt!1921329 () Unit!137236)

(declare-fun Unit!137307 () Unit!137236)

(assert (=> b!4754756 (= lt!1921329 Unit!137307)))

(declare-fun lt!1921332 () Unit!137236)

(assert (=> b!4754756 (= lt!1921332 (forallContained!3806 (toList!6158 lt!1921339) lambda!223063 (h!59527 (t!360598 l!13029))))))

(assert (=> b!4754756 (contains!16559 lt!1921339 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921340 () Unit!137236)

(declare-fun Unit!137308 () Unit!137236)

(assert (=> b!4754756 (= lt!1921340 Unit!137308)))

(assert (=> b!4754756 (contains!16559 lt!1921341 (_1!30764 (h!59527 (t!360598 l!13029))))))

(declare-fun lt!1921338 () Unit!137236)

(declare-fun Unit!137310 () Unit!137236)

(assert (=> b!4754756 (= lt!1921338 Unit!137310)))

(assert (=> b!4754756 (forall!11780 (t!360598 l!13029) lambda!223063)))

(declare-fun lt!1921336 () Unit!137236)

(declare-fun Unit!137313 () Unit!137236)

(assert (=> b!4754756 (= lt!1921336 Unit!137313)))

(assert (=> b!4754756 (forall!11780 (toList!6158 lt!1921339) lambda!223063)))

(declare-fun lt!1921333 () Unit!137236)

(declare-fun Unit!137314 () Unit!137236)

(assert (=> b!4754756 (= lt!1921333 Unit!137314)))

(declare-fun lt!1921326 () Unit!137236)

(declare-fun Unit!137315 () Unit!137236)

(assert (=> b!4754756 (= lt!1921326 Unit!137315)))

(declare-fun lt!1921328 () Unit!137236)

(assert (=> b!4754756 (= lt!1921328 (addForallContainsKeyThenBeforeAdding!894 lt!1921017 lt!1921341 (_1!30764 (h!59527 (t!360598 l!13029))) (_2!30764 (h!59527 (t!360598 l!13029)))))))

(assert (=> b!4754756 (forall!11780 (toList!6158 lt!1921017) lambda!223063)))

(declare-fun lt!1921327 () Unit!137236)

(assert (=> b!4754756 (= lt!1921327 lt!1921328)))

(assert (=> b!4754756 (forall!11780 (toList!6158 lt!1921017) lambda!223063)))

(declare-fun lt!1921335 () Unit!137236)

(declare-fun Unit!137318 () Unit!137236)

(assert (=> b!4754756 (= lt!1921335 Unit!137318)))

(declare-fun res!2017007 () Bool)

(declare-fun call!333398 () Bool)

(assert (=> b!4754756 (= res!2017007 call!333398)))

(assert (=> b!4754756 (=> (not res!2017007) (not e!2966163))))

(assert (=> b!4754756 e!2966163))

(declare-fun lt!1921330 () Unit!137236)

(declare-fun Unit!137321 () Unit!137236)

(assert (=> b!4754756 (= lt!1921330 Unit!137321)))

(declare-fun bm!333392 () Bool)

(assert (=> bm!333392 (= call!333397 (lemmaContainsAllItsOwnKeys!895 lt!1921017))))

(declare-fun b!4754757 () Bool)

(declare-fun res!2017006 () Bool)

(declare-fun e!2966162 () Bool)

(assert (=> b!4754757 (=> (not res!2017006) (not e!2966162))))

(assert (=> b!4754757 (= res!2017006 (forall!11780 (toList!6158 lt!1921017) lambda!223064))))

(declare-fun c!811623 () Bool)

(declare-fun bm!333393 () Bool)

(assert (=> bm!333393 (= call!333399 (forall!11780 (toList!6158 lt!1921017) (ite c!811623 lambda!223061 lambda!223062)))))

(declare-fun bm!333394 () Bool)

(assert (=> bm!333394 (= call!333398 (forall!11780 (ite c!811623 (toList!6158 lt!1921017) (t!360598 l!13029)) (ite c!811623 lambda!223061 lambda!223063)))))

(assert (=> d!1520419 e!2966162))

(declare-fun res!2017005 () Bool)

(assert (=> d!1520419 (=> (not res!2017005) (not e!2966162))))

(assert (=> d!1520419 (= res!2017005 (forall!11780 (t!360598 l!13029) lambda!223064))))

(assert (=> d!1520419 (= lt!1921324 e!2966164)))

(assert (=> d!1520419 (= c!811623 ((_ is Nil!53130) (t!360598 l!13029)))))

(assert (=> d!1520419 (noDuplicateKeys!2190 (t!360598 l!13029))))

(assert (=> d!1520419 (= (addToMapMapFromBucket!1604 (t!360598 l!13029) lt!1921017) lt!1921324)))

(assert (=> b!4754758 (= e!2966164 lt!1921017)))

(declare-fun lt!1921342 () Unit!137236)

(assert (=> b!4754758 (= lt!1921342 call!333397)))

(assert (=> b!4754758 call!333398))

(declare-fun lt!1921343 () Unit!137236)

(assert (=> b!4754758 (= lt!1921343 lt!1921342)))

(assert (=> b!4754758 call!333399))

(declare-fun lt!1921331 () Unit!137236)

(declare-fun Unit!137325 () Unit!137236)

(assert (=> b!4754758 (= lt!1921331 Unit!137325)))

(declare-fun b!4754759 () Bool)

(assert (=> b!4754759 (= e!2966162 (invariantList!1618 (toList!6158 lt!1921324)))))

(assert (= (and d!1520419 c!811623) b!4754758))

(assert (= (and d!1520419 (not c!811623)) b!4754756))

(assert (= (and b!4754756 res!2017007) b!4754755))

(assert (= (or b!4754758 b!4754756) bm!333393))

(assert (= (or b!4754758 b!4754756) bm!333394))

(assert (= (or b!4754758 b!4754756) bm!333392))

(assert (= (and d!1520419 res!2017005) b!4754757))

(assert (= (and b!4754757 res!2017006) b!4754759))

(declare-fun m!5723925 () Bool)

(assert (=> b!4754759 m!5723925))

(declare-fun m!5723927 () Bool)

(assert (=> b!4754755 m!5723927))

(declare-fun m!5723929 () Bool)

(assert (=> b!4754756 m!5723929))

(declare-fun m!5723931 () Bool)

(assert (=> b!4754756 m!5723931))

(assert (=> b!4754756 m!5723927))

(assert (=> b!4754756 m!5723931))

(declare-fun m!5723933 () Bool)

(assert (=> b!4754756 m!5723933))

(declare-fun m!5723935 () Bool)

(assert (=> b!4754756 m!5723935))

(declare-fun m!5723937 () Bool)

(assert (=> b!4754756 m!5723937))

(declare-fun m!5723939 () Bool)

(assert (=> b!4754756 m!5723939))

(assert (=> b!4754756 m!5723927))

(declare-fun m!5723941 () Bool)

(assert (=> b!4754756 m!5723941))

(declare-fun m!5723943 () Bool)

(assert (=> b!4754756 m!5723943))

(declare-fun m!5723945 () Bool)

(assert (=> b!4754756 m!5723945))

(assert (=> b!4754756 m!5723937))

(declare-fun m!5723947 () Bool)

(assert (=> bm!333394 m!5723947))

(declare-fun m!5723949 () Bool)

(assert (=> d!1520419 m!5723949))

(assert (=> d!1520419 m!5723469))

(declare-fun m!5723951 () Bool)

(assert (=> bm!333393 m!5723951))

(declare-fun m!5723953 () Bool)

(assert (=> bm!333392 m!5723953))

(declare-fun m!5723955 () Bool)

(assert (=> b!4754757 m!5723955))

(assert (=> b!4754632 d!1520419))

(declare-fun d!1520421 () Bool)

(declare-fun res!2017008 () Bool)

(declare-fun e!2966165 () Bool)

(assert (=> d!1520421 (=> res!2017008 e!2966165)))

(assert (=> d!1520421 (= res!2017008 (not ((_ is Cons!53130) l!13029)))))

(assert (=> d!1520421 (= (noDuplicateKeys!2190 l!13029) e!2966165)))

(declare-fun b!4754760 () Bool)

(declare-fun e!2966166 () Bool)

(assert (=> b!4754760 (= e!2966165 e!2966166)))

(declare-fun res!2017009 () Bool)

(assert (=> b!4754760 (=> (not res!2017009) (not e!2966166))))

(assert (=> b!4754760 (= res!2017009 (not (containsKey!3596 (t!360598 l!13029) (_1!30764 (h!59527 l!13029)))))))

(declare-fun b!4754761 () Bool)

(assert (=> b!4754761 (= e!2966166 (noDuplicateKeys!2190 (t!360598 l!13029)))))

(assert (= (and d!1520421 (not res!2017008)) b!4754760))

(assert (= (and b!4754760 res!2017009) b!4754761))

(declare-fun m!5723957 () Bool)

(assert (=> b!4754760 m!5723957))

(assert (=> b!4754761 m!5723469))

(assert (=> b!4754631 d!1520421))

(declare-fun d!1520423 () Bool)

(assert (=> d!1520423 (= (eq!1255 lt!1921017 lt!1921020) (= (content!9555 (toList!6158 lt!1921017)) (content!9555 (toList!6158 lt!1921020))))))

(declare-fun bs!1146353 () Bool)

(assert (= bs!1146353 d!1520423))

(assert (=> bs!1146353 m!5723771))

(assert (=> bs!1146353 m!5723769))

(assert (=> b!4754630 d!1520423))

(declare-fun b!4754766 () Bool)

(declare-fun e!2966169 () Bool)

(declare-fun tp!1350544 () Bool)

(assert (=> b!4754766 (= e!2966169 (and tp_is_empty!32053 tp_is_empty!32055 tp!1350544))))

(assert (=> b!4754635 (= tp!1350537 e!2966169)))

(assert (= (and b!4754635 ((_ is Cons!53130) (toList!6158 lhm!63))) b!4754766))

(declare-fun e!2966170 () Bool)

(declare-fun tp!1350545 () Bool)

(declare-fun b!4754767 () Bool)

(assert (=> b!4754767 (= e!2966170 (and tp_is_empty!32053 tp_is_empty!32055 tp!1350545))))

(assert (=> b!4754629 (= tp!1350536 e!2966170)))

(assert (= (and b!4754629 ((_ is Cons!53130) (t!360598 l!13029))) b!4754767))

(check-sat (not d!1520415) tp_is_empty!32053 (not b!4754721) (not b!4754761) (not b!4754711) (not d!1520399) (not bm!333382) (not d!1520395) (not bm!333393) (not b!4754654) (not d!1520363) (not bm!333391) (not b!4754725) (not d!1520365) (not bm!333389) (not b!4754759) (not b!4754726) (not b!4754647) (not b!4754652) (not b!4754750) (not b!4754730) (not b!4754760) (not bm!333380) (not b!4754767) (not b!4754757) tp_is_empty!32055 (not bm!333381) (not b!4754751) (not b!4754713) (not b!4754646) (not b!4754752) (not b!4754655) (not d!1520409) (not d!1520353) (not d!1520423) (not bm!333386) (not bm!333390) (not b!4754653) (not b!4754723) (not d!1520417) (not b!4754722) (not d!1520367) (not d!1520405) (not b!4754724) (not b!4754709) (not d!1520401) (not b!4754749) (not bm!333392) (not bm!333394) (not d!1520419) (not b!4754756) (not b!4754755) (not b!4754766) (not bm!333387) (not bm!333388) (not d!1520407) (not b!4754731) (not b!4754754) (not b!4754729) (not b!4754710) (not d!1520397) (not b!4754727))
(check-sat)
