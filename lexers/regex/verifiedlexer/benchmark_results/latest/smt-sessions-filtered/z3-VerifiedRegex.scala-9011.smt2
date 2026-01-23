; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485180 () Bool)

(assert start!485180)

(declare-fun b!4749142 () Bool)

(declare-fun e!2962372 () Bool)

(declare-fun tp!1349969 () Bool)

(assert (=> b!4749142 (= e!2962372 tp!1349969)))

(declare-fun b!4749143 () Bool)

(declare-fun e!2962378 () Bool)

(declare-datatypes ((K!14460 0))(
  ( (K!14461 (val!19839 Int)) )
))
(declare-datatypes ((V!14706 0))(
  ( (V!14707 (val!19840 Int)) )
))
(declare-datatypes ((tuple2!54808 0))(
  ( (tuple2!54809 (_1!30698 K!14460) (_2!30698 V!14706)) )
))
(declare-datatypes ((List!53182 0))(
  ( (Nil!53058) (Cons!53058 (h!59455 tuple2!54808) (t!360506 List!53182)) )
))
(declare-datatypes ((ListMap!5497 0))(
  ( (ListMap!5498 (toList!6094 List!53182)) )
))
(declare-fun lt!1912619 () ListMap!5497)

(declare-fun lt!1912609 () ListMap!5497)

(declare-fun eq!1201 (ListMap!5497 ListMap!5497) Bool)

(assert (=> b!4749143 (= e!2962378 (eq!1201 lt!1912619 lt!1912609))))

(declare-fun b!4749144 () Bool)

(declare-fun e!2962374 () Bool)

(declare-fun lt!1912615 () ListMap!5497)

(declare-fun lt!1912610 () ListMap!5497)

(assert (=> b!4749144 (= e!2962374 (eq!1201 lt!1912615 lt!1912610))))

(declare-fun b!4749145 () Bool)

(declare-fun res!2013537 () Bool)

(declare-fun e!2962377 () Bool)

(assert (=> b!4749145 (=> (not res!2013537) (not e!2962377))))

(declare-fun l!14304 () List!53182)

(get-info :version)

(assert (=> b!4749145 (= res!2013537 (not ((_ is Nil!53058) l!14304)))))

(declare-fun e!2962373 () Bool)

(declare-fun b!4749146 () Bool)

(declare-fun lt!1912614 () ListMap!5497)

(declare-fun acc!1214 () ListMap!5497)

(declare-fun addToMapMapFromBucket!1550 (List!53182 ListMap!5497) ListMap!5497)

(assert (=> b!4749146 (= e!2962373 (eq!1201 lt!1912614 (addToMapMapFromBucket!1550 l!14304 acc!1214)))))

(declare-fun b!4749147 () Bool)

(declare-fun e!2962375 () Bool)

(assert (=> b!4749147 (= e!2962375 e!2962377)))

(declare-fun res!2013540 () Bool)

(assert (=> b!4749147 (=> (not res!2013540) (not e!2962377))))

(declare-fun lt!1912621 () List!53182)

(declare-fun noDuplicateKeys!2124 (List!53182) Bool)

(assert (=> b!4749147 (= res!2013540 (noDuplicateKeys!2124 lt!1912621))))

(declare-fun t!14174 () tuple2!54808)

(assert (=> b!4749147 (= lt!1912621 (Cons!53058 t!14174 l!14304))))

(declare-fun res!2013541 () Bool)

(assert (=> start!485180 (=> (not res!2013541) (not e!2962375))))

(assert (=> start!485180 (= res!2013541 (noDuplicateKeys!2124 l!14304))))

(assert (=> start!485180 e!2962375))

(declare-fun e!2962376 () Bool)

(assert (=> start!485180 e!2962376))

(declare-fun tp_is_empty!31789 () Bool)

(declare-fun tp_is_empty!31791 () Bool)

(assert (=> start!485180 (and tp_is_empty!31789 tp_is_empty!31791)))

(declare-fun inv!68332 (ListMap!5497) Bool)

(assert (=> start!485180 (and (inv!68332 acc!1214) e!2962372)))

(declare-fun b!4749148 () Bool)

(assert (=> b!4749148 (= e!2962377 (not true))))

(assert (=> b!4749148 e!2962374))

(declare-fun res!2013538 () Bool)

(assert (=> b!4749148 (=> (not res!2013538) (not e!2962374))))

(declare-fun lt!1912612 () ListMap!5497)

(assert (=> b!4749148 (= res!2013538 (eq!1201 lt!1912610 lt!1912612))))

(declare-datatypes ((Unit!135207 0))(
  ( (Unit!135208) )
))
(declare-fun lt!1912620 () Unit!135207)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!114 (ListMap!5497 ListMap!5497 List!53182) Unit!135207)

(assert (=> b!4749148 (= lt!1912620 (lemmaAddToMapFromBucketPreservesEquivalence!114 lt!1912609 lt!1912619 (t!360506 l!14304)))))

(assert (=> b!4749148 e!2962378))

(declare-fun res!2013539 () Bool)

(assert (=> b!4749148 (=> (not res!2013539) (not e!2962378))))

(declare-fun lt!1912616 () ListMap!5497)

(declare-fun lt!1912608 () ListMap!5497)

(assert (=> b!4749148 (= res!2013539 (eq!1201 lt!1912616 lt!1912608))))

(declare-fun lt!1912618 () Unit!135207)

(declare-fun addCommutativeForDiffKeys!16 (ListMap!5497 K!14460 V!14706 K!14460 V!14706) Unit!135207)

(assert (=> b!4749148 (= lt!1912618 (addCommutativeForDiffKeys!16 acc!1214 (_1!30698 t!14174) (_2!30698 t!14174) (_1!30698 (h!59455 l!14304)) (_2!30698 (h!59455 l!14304))))))

(assert (=> b!4749148 (eq!1201 lt!1912608 lt!1912616)))

(declare-fun +!2360 (ListMap!5497 tuple2!54808) ListMap!5497)

(assert (=> b!4749148 (= lt!1912616 (+!2360 (+!2360 acc!1214 t!14174) (h!59455 l!14304)))))

(declare-fun lt!1912622 () ListMap!5497)

(assert (=> b!4749148 (= lt!1912608 (+!2360 lt!1912622 t!14174))))

(declare-fun lt!1912623 () Unit!135207)

(assert (=> b!4749148 (= lt!1912623 (addCommutativeForDiffKeys!16 acc!1214 (_1!30698 (h!59455 l!14304)) (_2!30698 (h!59455 l!14304)) (_1!30698 t!14174) (_2!30698 t!14174)))))

(assert (=> b!4749148 (eq!1201 lt!1912615 lt!1912612)))

(assert (=> b!4749148 (= lt!1912612 (addToMapMapFromBucket!1550 (t!360506 l!14304) lt!1912619))))

(declare-fun lt!1912613 () ListMap!5497)

(assert (=> b!4749148 (= lt!1912619 (+!2360 lt!1912613 (h!59455 l!14304)))))

(assert (=> b!4749148 (eq!1201 lt!1912615 (addToMapMapFromBucket!1550 l!14304 lt!1912613))))

(assert (=> b!4749148 (= lt!1912613 (+!2360 acc!1214 t!14174))))

(assert (=> b!4749148 (= lt!1912615 (addToMapMapFromBucket!1550 lt!1912621 acc!1214))))

(declare-fun lt!1912611 () ListMap!5497)

(assert (=> b!4749148 (eq!1201 lt!1912611 lt!1912610)))

(assert (=> b!4749148 (= lt!1912610 (addToMapMapFromBucket!1550 (t!360506 l!14304) lt!1912609))))

(assert (=> b!4749148 (= lt!1912609 (+!2360 lt!1912622 t!14174))))

(assert (=> b!4749148 e!2962373))

(declare-fun res!2013536 () Bool)

(assert (=> b!4749148 (=> (not res!2013536) (not e!2962373))))

(assert (=> b!4749148 (= res!2013536 (eq!1201 lt!1912611 (+!2360 lt!1912614 t!14174)))))

(assert (=> b!4749148 (= lt!1912611 (addToMapMapFromBucket!1550 (Cons!53058 t!14174 (t!360506 l!14304)) lt!1912622))))

(declare-fun lt!1912617 () Unit!135207)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!448 (tuple2!54808 List!53182 ListMap!5497) Unit!135207)

(assert (=> b!4749148 (= lt!1912617 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!448 t!14174 (t!360506 l!14304) lt!1912622))))

(assert (=> b!4749148 (= lt!1912614 (addToMapMapFromBucket!1550 (t!360506 l!14304) lt!1912622))))

(assert (=> b!4749148 (= lt!1912622 (+!2360 acc!1214 (h!59455 l!14304)))))

(declare-fun tp!1349968 () Bool)

(declare-fun b!4749149 () Bool)

(assert (=> b!4749149 (= e!2962376 (and tp_is_empty!31789 tp_is_empty!31791 tp!1349968))))

(assert (= (and start!485180 res!2013541) b!4749147))

(assert (= (and b!4749147 res!2013540) b!4749145))

(assert (= (and b!4749145 res!2013537) b!4749148))

(assert (= (and b!4749148 res!2013536) b!4749146))

(assert (= (and b!4749148 res!2013539) b!4749143))

(assert (= (and b!4749148 res!2013538) b!4749144))

(assert (= (and start!485180 ((_ is Cons!53058) l!14304)) b!4749149))

(assert (= start!485180 b!4749142))

(declare-fun m!5709167 () Bool)

(assert (=> b!4749143 m!5709167))

(declare-fun m!5709169 () Bool)

(assert (=> b!4749148 m!5709169))

(declare-fun m!5709171 () Bool)

(assert (=> b!4749148 m!5709171))

(declare-fun m!5709173 () Bool)

(assert (=> b!4749148 m!5709173))

(declare-fun m!5709175 () Bool)

(assert (=> b!4749148 m!5709175))

(declare-fun m!5709177 () Bool)

(assert (=> b!4749148 m!5709177))

(declare-fun m!5709179 () Bool)

(assert (=> b!4749148 m!5709179))

(declare-fun m!5709181 () Bool)

(assert (=> b!4749148 m!5709181))

(declare-fun m!5709183 () Bool)

(assert (=> b!4749148 m!5709183))

(declare-fun m!5709185 () Bool)

(assert (=> b!4749148 m!5709185))

(declare-fun m!5709187 () Bool)

(assert (=> b!4749148 m!5709187))

(declare-fun m!5709189 () Bool)

(assert (=> b!4749148 m!5709189))

(declare-fun m!5709191 () Bool)

(assert (=> b!4749148 m!5709191))

(assert (=> b!4749148 m!5709173))

(declare-fun m!5709193 () Bool)

(assert (=> b!4749148 m!5709193))

(assert (=> b!4749148 m!5709191))

(declare-fun m!5709195 () Bool)

(assert (=> b!4749148 m!5709195))

(declare-fun m!5709197 () Bool)

(assert (=> b!4749148 m!5709197))

(declare-fun m!5709199 () Bool)

(assert (=> b!4749148 m!5709199))

(declare-fun m!5709201 () Bool)

(assert (=> b!4749148 m!5709201))

(declare-fun m!5709203 () Bool)

(assert (=> b!4749148 m!5709203))

(declare-fun m!5709205 () Bool)

(assert (=> b!4749148 m!5709205))

(declare-fun m!5709207 () Bool)

(assert (=> b!4749148 m!5709207))

(declare-fun m!5709209 () Bool)

(assert (=> b!4749148 m!5709209))

(declare-fun m!5709211 () Bool)

(assert (=> b!4749148 m!5709211))

(assert (=> b!4749148 m!5709175))

(declare-fun m!5709213 () Bool)

(assert (=> b!4749148 m!5709213))

(declare-fun m!5709215 () Bool)

(assert (=> b!4749147 m!5709215))

(declare-fun m!5709217 () Bool)

(assert (=> b!4749146 m!5709217))

(assert (=> b!4749146 m!5709217))

(declare-fun m!5709219 () Bool)

(assert (=> b!4749146 m!5709219))

(declare-fun m!5709221 () Bool)

(assert (=> start!485180 m!5709221))

(declare-fun m!5709223 () Bool)

(assert (=> start!485180 m!5709223))

(declare-fun m!5709225 () Bool)

(assert (=> b!4749144 m!5709225))

(check-sat (not b!4749147) (not start!485180) tp_is_empty!31791 (not b!4749146) (not b!4749143) (not b!4749148) (not b!4749142) (not b!4749149) tp_is_empty!31789 (not b!4749144))
(check-sat)
