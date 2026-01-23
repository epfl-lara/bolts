; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499138 () Bool)

(assert start!499138)

(declare-fun b!4819181 () Bool)

(declare-fun res!2050599 () Bool)

(declare-fun e!3010942 () Bool)

(assert (=> b!4819181 (=> (not res!2050599) (not e!3010942))))

(declare-datatypes ((V!16785 0))(
  ( (V!16786 (val!21537 Int)) )
))
(declare-datatypes ((K!16539 0))(
  ( (K!16540 (val!21538 Int)) )
))
(declare-datatypes ((tuple2!58010 0))(
  ( (tuple2!58011 (_1!32299 K!16539) (_2!32299 V!16785)) )
))
(declare-datatypes ((List!54988 0))(
  ( (Nil!54864) (Cons!54864 (h!61298 tuple2!58010) (t!362484 List!54988)) )
))
(declare-datatypes ((tuple2!58012 0))(
  ( (tuple2!58013 (_1!32300 (_ BitVec 64)) (_2!32300 List!54988)) )
))
(declare-datatypes ((List!54989 0))(
  ( (Nil!54865) (Cons!54865 (h!61299 tuple2!58012) (t!362485 List!54989)) )
))
(declare-datatypes ((ListLongMap!5903 0))(
  ( (ListLongMap!5904 (toList!7409 List!54989)) )
))
(declare-fun lm!2280 () ListLongMap!5903)

(declare-fun lt!1968597 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4819181 (= res!2050599 (and (or (not ((_ is Cons!54865) (toList!7409 lm!2280))) (not (= (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597))) ((_ is Cons!54865) (toList!7409 lm!2280)) (not (= (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597))))))

(declare-fun b!4819182 () Bool)

(declare-fun e!3010940 () Bool)

(assert (=> b!4819182 (= e!3010940 e!3010942)))

(declare-fun res!2050594 () Bool)

(assert (=> b!4819182 (=> (not res!2050594) (not e!3010942))))

(declare-fun contains!18682 (ListLongMap!5903 (_ BitVec 64)) Bool)

(assert (=> b!4819182 (= res!2050594 (contains!18682 lm!2280 lt!1968597))))

(declare-datatypes ((Hashable!7220 0))(
  ( (HashableExt!7219 (__x!33495 Int)) )
))
(declare-fun hashF!1509 () Hashable!7220)

(declare-fun key!5428 () K!16539)

(declare-fun hash!5303 (Hashable!7220 K!16539) (_ BitVec 64))

(assert (=> b!4819182 (= lt!1968597 (hash!5303 hashF!1509 key!5428))))

(declare-fun b!4819183 () Bool)

(declare-fun isEmpty!29618 (ListLongMap!5903) Bool)

(assert (=> b!4819183 (= e!3010942 (not (not (isEmpty!29618 lm!2280))))))

(declare-fun e!3010941 () Bool)

(declare-datatypes ((ListMap!6809 0))(
  ( (ListMap!6810 (toList!7410 List!54988)) )
))
(declare-fun lt!1968599 () ListMap!6809)

(declare-fun contains!18683 (ListMap!6809 K!16539) Bool)

(declare-fun addToMapMapFromBucket!1776 (List!54988 ListMap!6809) ListMap!6809)

(assert (=> b!4819183 (= (contains!18683 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599) key!5428) e!3010941)))

(declare-fun res!2050596 () Bool)

(assert (=> b!4819183 (=> res!2050596 e!3010941)))

(declare-fun containsKey!4284 (List!54988 K!16539) Bool)

(assert (=> b!4819183 (= res!2050596 (containsKey!4284 (_2!32300 (h!61299 (toList!7409 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142179 0))(
  ( (Unit!142180) )
))
(declare-fun lt!1968600 () Unit!142179)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!4 (List!54988 ListMap!6809 K!16539) Unit!142179)

(assert (=> b!4819183 (= lt!1968600 (lemmaAddToMapFromBucketContainsIIFInAccOrL!4 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599 key!5428))))

(declare-fun extractMap!2656 (List!54989) ListMap!6809)

(assert (=> b!4819183 (= lt!1968599 (extractMap!2656 (t!362485 (toList!7409 lm!2280))))))

(declare-fun apply!13307 (ListLongMap!5903 (_ BitVec 64)) List!54988)

(assert (=> b!4819183 (not (containsKey!4284 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))) key!5428))))

(declare-fun lt!1968598 () Unit!142179)

(declare-fun lemmaNotSameHashThenCannotContainKey!204 (ListLongMap!5903 K!16539 (_ BitVec 64) Hashable!7220) Unit!142179)

(assert (=> b!4819183 (= lt!1968598 (lemmaNotSameHashThenCannotContainKey!204 lm!2280 key!5428 (_1!32300 (h!61299 (toList!7409 lm!2280))) hashF!1509))))

(declare-fun b!4819184 () Bool)

(declare-fun e!3010943 () Bool)

(declare-fun tp!1362175 () Bool)

(assert (=> b!4819184 (= e!3010943 tp!1362175)))

(declare-fun b!4819185 () Bool)

(declare-fun res!2050597 () Bool)

(assert (=> b!4819185 (=> (not res!2050597) (not e!3010942))))

(assert (=> b!4819185 (= res!2050597 (not (containsKey!4284 (apply!13307 lm!2280 lt!1968597) key!5428)))))

(declare-fun res!2050598 () Bool)

(assert (=> start!499138 (=> (not res!2050598) (not e!3010940))))

(declare-fun lambda!235168 () Int)

(declare-fun forall!12534 (List!54989 Int) Bool)

(assert (=> start!499138 (= res!2050598 (forall!12534 (toList!7409 lm!2280) lambda!235168))))

(assert (=> start!499138 e!3010940))

(declare-fun inv!70439 (ListLongMap!5903) Bool)

(assert (=> start!499138 (and (inv!70439 lm!2280) e!3010943)))

(assert (=> start!499138 true))

(declare-fun tp_is_empty!34325 () Bool)

(assert (=> start!499138 tp_is_empty!34325))

(declare-fun b!4819186 () Bool)

(declare-fun res!2050595 () Bool)

(assert (=> b!4819186 (=> (not res!2050595) (not e!3010940))))

(declare-fun allKeysSameHashInMap!2536 (ListLongMap!5903 Hashable!7220) Bool)

(assert (=> b!4819186 (= res!2050595 (allKeysSameHashInMap!2536 lm!2280 hashF!1509))))

(declare-fun b!4819187 () Bool)

(assert (=> b!4819187 (= e!3010941 (contains!18683 lt!1968599 key!5428))))

(assert (= (and start!499138 res!2050598) b!4819186))

(assert (= (and b!4819186 res!2050595) b!4819182))

(assert (= (and b!4819182 res!2050594) b!4819185))

(assert (= (and b!4819185 res!2050597) b!4819181))

(assert (= (and b!4819181 res!2050599) b!4819183))

(assert (= (and b!4819183 (not res!2050596)) b!4819187))

(assert (= start!499138 b!4819184))

(declare-fun m!5806142 () Bool)

(assert (=> start!499138 m!5806142))

(declare-fun m!5806144 () Bool)

(assert (=> start!499138 m!5806144))

(declare-fun m!5806146 () Bool)

(assert (=> b!4819185 m!5806146))

(assert (=> b!4819185 m!5806146))

(declare-fun m!5806148 () Bool)

(assert (=> b!4819185 m!5806148))

(declare-fun m!5806150 () Bool)

(assert (=> b!4819186 m!5806150))

(declare-fun m!5806152 () Bool)

(assert (=> b!4819183 m!5806152))

(declare-fun m!5806154 () Bool)

(assert (=> b!4819183 m!5806154))

(declare-fun m!5806156 () Bool)

(assert (=> b!4819183 m!5806156))

(declare-fun m!5806158 () Bool)

(assert (=> b!4819183 m!5806158))

(declare-fun m!5806160 () Bool)

(assert (=> b!4819183 m!5806160))

(declare-fun m!5806162 () Bool)

(assert (=> b!4819183 m!5806162))

(declare-fun m!5806164 () Bool)

(assert (=> b!4819183 m!5806164))

(assert (=> b!4819183 m!5806154))

(assert (=> b!4819183 m!5806162))

(declare-fun m!5806166 () Bool)

(assert (=> b!4819183 m!5806166))

(declare-fun m!5806168 () Bool)

(assert (=> b!4819183 m!5806168))

(declare-fun m!5806170 () Bool)

(assert (=> b!4819182 m!5806170))

(declare-fun m!5806172 () Bool)

(assert (=> b!4819182 m!5806172))

(declare-fun m!5806174 () Bool)

(assert (=> b!4819187 m!5806174))

(check-sat (not b!4819183) (not start!499138) (not b!4819182) tp_is_empty!34325 (not b!4819184) (not b!4819186) (not b!4819185) (not b!4819187))
(check-sat)
(get-model)

(declare-fun d!1542681 () Bool)

(declare-datatypes ((Option!13454 0))(
  ( (None!13453) (Some!13453 (v!49120 List!54988)) )
))
(declare-fun get!18775 (Option!13454) List!54988)

(declare-fun getValueByKey!2581 (List!54989 (_ BitVec 64)) Option!13454)

(assert (=> d!1542681 (= (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))) (get!18775 (getValueByKey!2581 (toList!7409 lm!2280) (_1!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun bs!1161206 () Bool)

(assert (= bs!1161206 d!1542681))

(declare-fun m!5806176 () Bool)

(assert (=> bs!1161206 m!5806176))

(assert (=> bs!1161206 m!5806176))

(declare-fun m!5806178 () Bool)

(assert (=> bs!1161206 m!5806178))

(assert (=> b!4819183 d!1542681))

(declare-fun b!4819293 () Bool)

(assert (=> b!4819293 true))

(declare-fun bs!1161224 () Bool)

(declare-fun b!4819294 () Bool)

(assert (= bs!1161224 (and b!4819294 b!4819293)))

(declare-fun lambda!235239 () Int)

(declare-fun lambda!235238 () Int)

(assert (=> bs!1161224 (= lambda!235239 lambda!235238)))

(assert (=> b!4819294 true))

(declare-fun lambda!235240 () Int)

(declare-fun lt!1968760 () ListMap!6809)

(assert (=> bs!1161224 (= (= lt!1968760 lt!1968599) (= lambda!235240 lambda!235238))))

(assert (=> b!4819294 (= (= lt!1968760 lt!1968599) (= lambda!235240 lambda!235239))))

(assert (=> b!4819294 true))

(declare-fun bs!1161225 () Bool)

(declare-fun d!1542683 () Bool)

(assert (= bs!1161225 (and d!1542683 b!4819293)))

(declare-fun lt!1968770 () ListMap!6809)

(declare-fun lambda!235241 () Int)

(assert (=> bs!1161225 (= (= lt!1968770 lt!1968599) (= lambda!235241 lambda!235238))))

(declare-fun bs!1161226 () Bool)

(assert (= bs!1161226 (and d!1542683 b!4819294)))

(assert (=> bs!1161226 (= (= lt!1968770 lt!1968599) (= lambda!235241 lambda!235239))))

(assert (=> bs!1161226 (= (= lt!1968770 lt!1968760) (= lambda!235241 lambda!235240))))

(assert (=> d!1542683 true))

(declare-fun b!4819292 () Bool)

(declare-fun res!2050650 () Bool)

(declare-fun e!3011015 () Bool)

(assert (=> b!4819292 (=> (not res!2050650) (not e!3011015))))

(declare-fun forall!12536 (List!54988 Int) Bool)

(assert (=> b!4819292 (= res!2050650 (forall!12536 (toList!7410 lt!1968599) lambda!235241))))

(declare-fun bm!336065 () Bool)

(declare-fun call!336072 () Unit!142179)

(declare-fun lemmaContainsAllItsOwnKeys!978 (ListMap!6809) Unit!142179)

(assert (=> bm!336065 (= call!336072 (lemmaContainsAllItsOwnKeys!978 lt!1968599))))

(declare-fun e!3011016 () ListMap!6809)

(assert (=> b!4819293 (= e!3011016 lt!1968599)))

(declare-fun lt!1968761 () Unit!142179)

(assert (=> b!4819293 (= lt!1968761 call!336072)))

(declare-fun call!336071 () Bool)

(assert (=> b!4819293 call!336071))

(declare-fun lt!1968777 () Unit!142179)

(assert (=> b!4819293 (= lt!1968777 lt!1968761)))

(declare-fun call!336070 () Bool)

(assert (=> b!4819293 call!336070))

(declare-fun lt!1968778 () Unit!142179)

(declare-fun Unit!142197 () Unit!142179)

(assert (=> b!4819293 (= lt!1968778 Unit!142197)))

(assert (=> b!4819294 (= e!3011016 lt!1968760)))

(declare-fun lt!1968765 () ListMap!6809)

(declare-fun +!2523 (ListMap!6809 tuple2!58010) ListMap!6809)

(assert (=> b!4819294 (= lt!1968765 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> b!4819294 (= lt!1968760 (addToMapMapFromBucket!1776 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968759 () Unit!142179)

(assert (=> b!4819294 (= lt!1968759 call!336072)))

(assert (=> b!4819294 (forall!12536 (toList!7410 lt!1968599) lambda!235239)))

(declare-fun lt!1968774 () Unit!142179)

(assert (=> b!4819294 (= lt!1968774 lt!1968759)))

(assert (=> b!4819294 (forall!12536 (toList!7410 lt!1968765) lambda!235240)))

(declare-fun lt!1968764 () Unit!142179)

(declare-fun Unit!142198 () Unit!142179)

(assert (=> b!4819294 (= lt!1968764 Unit!142198)))

(assert (=> b!4819294 (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235240)))

(declare-fun lt!1968767 () Unit!142179)

(declare-fun Unit!142199 () Unit!142179)

(assert (=> b!4819294 (= lt!1968767 Unit!142199)))

(declare-fun lt!1968779 () Unit!142179)

(declare-fun Unit!142200 () Unit!142179)

(assert (=> b!4819294 (= lt!1968779 Unit!142200)))

(declare-fun lt!1968769 () Unit!142179)

(declare-fun forallContained!4358 (List!54988 Int tuple2!58010) Unit!142179)

(assert (=> b!4819294 (= lt!1968769 (forallContained!4358 (toList!7410 lt!1968765) lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> b!4819294 (contains!18683 lt!1968765 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun lt!1968766 () Unit!142179)

(declare-fun Unit!142201 () Unit!142179)

(assert (=> b!4819294 (= lt!1968766 Unit!142201)))

(assert (=> b!4819294 (contains!18683 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun lt!1968771 () Unit!142179)

(declare-fun Unit!142202 () Unit!142179)

(assert (=> b!4819294 (= lt!1968771 Unit!142202)))

(assert (=> b!4819294 (forall!12536 (_2!32300 (h!61299 (toList!7409 lm!2280))) lambda!235240)))

(declare-fun lt!1968763 () Unit!142179)

(declare-fun Unit!142203 () Unit!142179)

(assert (=> b!4819294 (= lt!1968763 Unit!142203)))

(assert (=> b!4819294 (forall!12536 (toList!7410 lt!1968765) lambda!235240)))

(declare-fun lt!1968762 () Unit!142179)

(declare-fun Unit!142204 () Unit!142179)

(assert (=> b!4819294 (= lt!1968762 Unit!142204)))

(declare-fun lt!1968776 () Unit!142179)

(declare-fun Unit!142205 () Unit!142179)

(assert (=> b!4819294 (= lt!1968776 Unit!142205)))

(declare-fun lt!1968775 () Unit!142179)

(declare-fun addForallContainsKeyThenBeforeAdding!977 (ListMap!6809 ListMap!6809 K!16539 V!16785) Unit!142179)

(assert (=> b!4819294 (= lt!1968775 (addForallContainsKeyThenBeforeAdding!977 lt!1968599 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819294 (forall!12536 (toList!7410 lt!1968599) lambda!235240)))

(declare-fun lt!1968773 () Unit!142179)

(assert (=> b!4819294 (= lt!1968773 lt!1968775)))

(assert (=> b!4819294 call!336070))

(declare-fun lt!1968772 () Unit!142179)

(declare-fun Unit!142206 () Unit!142179)

(assert (=> b!4819294 (= lt!1968772 Unit!142206)))

(declare-fun res!2050649 () Bool)

(assert (=> b!4819294 (= res!2050649 call!336071)))

(declare-fun e!3011014 () Bool)

(assert (=> b!4819294 (=> (not res!2050649) (not e!3011014))))

(assert (=> b!4819294 e!3011014))

(declare-fun lt!1968768 () Unit!142179)

(declare-fun Unit!142207 () Unit!142179)

(assert (=> b!4819294 (= lt!1968768 Unit!142207)))

(assert (=> d!1542683 e!3011015))

(declare-fun res!2050651 () Bool)

(assert (=> d!1542683 (=> (not res!2050651) (not e!3011015))))

(assert (=> d!1542683 (= res!2050651 (forall!12536 (_2!32300 (h!61299 (toList!7409 lm!2280))) lambda!235241))))

(assert (=> d!1542683 (= lt!1968770 e!3011016)))

(declare-fun c!821292 () Bool)

(assert (=> d!1542683 (= c!821292 ((_ is Nil!54864) (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun noDuplicateKeys!2425 (List!54988) Bool)

(assert (=> d!1542683 (noDuplicateKeys!2425 (_2!32300 (h!61299 (toList!7409 lm!2280))))))

(assert (=> d!1542683 (= (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599) lt!1968770)))

(declare-fun b!4819295 () Bool)

(assert (=> b!4819295 (= e!3011014 (forall!12536 (toList!7410 lt!1968599) lambda!235240))))

(declare-fun bm!336066 () Bool)

(assert (=> bm!336066 (= call!336070 (forall!12536 (toList!7410 lt!1968599) (ite c!821292 lambda!235238 lambda!235240)))))

(declare-fun bm!336067 () Bool)

(assert (=> bm!336067 (= call!336071 (forall!12536 (ite c!821292 (toList!7410 lt!1968599) (_2!32300 (h!61299 (toList!7409 lm!2280)))) (ite c!821292 lambda!235238 lambda!235240)))))

(declare-fun b!4819296 () Bool)

(declare-fun invariantList!1797 (List!54988) Bool)

(assert (=> b!4819296 (= e!3011015 (invariantList!1797 (toList!7410 lt!1968770)))))

(assert (= (and d!1542683 c!821292) b!4819293))

(assert (= (and d!1542683 (not c!821292)) b!4819294))

(assert (= (and b!4819294 res!2050649) b!4819295))

(assert (= (or b!4819293 b!4819294) bm!336067))

(assert (= (or b!4819293 b!4819294) bm!336066))

(assert (= (or b!4819293 b!4819294) bm!336065))

(assert (= (and d!1542683 res!2050651) b!4819292))

(assert (= (and b!4819292 res!2050650) b!4819296))

(declare-fun m!5806298 () Bool)

(assert (=> b!4819294 m!5806298))

(declare-fun m!5806300 () Bool)

(assert (=> b!4819294 m!5806300))

(declare-fun m!5806302 () Bool)

(assert (=> b!4819294 m!5806302))

(declare-fun m!5806304 () Bool)

(assert (=> b!4819294 m!5806304))

(declare-fun m!5806306 () Bool)

(assert (=> b!4819294 m!5806306))

(declare-fun m!5806308 () Bool)

(assert (=> b!4819294 m!5806308))

(assert (=> b!4819294 m!5806304))

(declare-fun m!5806310 () Bool)

(assert (=> b!4819294 m!5806310))

(declare-fun m!5806312 () Bool)

(assert (=> b!4819294 m!5806312))

(declare-fun m!5806314 () Bool)

(assert (=> b!4819294 m!5806314))

(declare-fun m!5806316 () Bool)

(assert (=> b!4819294 m!5806316))

(assert (=> b!4819294 m!5806316))

(declare-fun m!5806318 () Bool)

(assert (=> b!4819294 m!5806318))

(declare-fun m!5806320 () Bool)

(assert (=> b!4819296 m!5806320))

(declare-fun m!5806322 () Bool)

(assert (=> d!1542683 m!5806322))

(declare-fun m!5806324 () Bool)

(assert (=> d!1542683 m!5806324))

(assert (=> b!4819295 m!5806306))

(declare-fun m!5806326 () Bool)

(assert (=> bm!336066 m!5806326))

(declare-fun m!5806328 () Bool)

(assert (=> b!4819292 m!5806328))

(declare-fun m!5806330 () Bool)

(assert (=> bm!336067 m!5806330))

(declare-fun m!5806332 () Bool)

(assert (=> bm!336065 m!5806332))

(assert (=> b!4819183 d!1542683))

(declare-fun d!1542719 () Bool)

(declare-fun res!2050656 () Bool)

(declare-fun e!3011021 () Bool)

(assert (=> d!1542719 (=> res!2050656 e!3011021)))

(assert (=> d!1542719 (= res!2050656 (and ((_ is Cons!54864) (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280))))) (= (_1!32299 (h!61298 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))))) key!5428)))))

(assert (=> d!1542719 (= (containsKey!4284 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))) key!5428) e!3011021)))

(declare-fun b!4819303 () Bool)

(declare-fun e!3011022 () Bool)

(assert (=> b!4819303 (= e!3011021 e!3011022)))

(declare-fun res!2050657 () Bool)

(assert (=> b!4819303 (=> (not res!2050657) (not e!3011022))))

(assert (=> b!4819303 (= res!2050657 ((_ is Cons!54864) (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun b!4819304 () Bool)

(assert (=> b!4819304 (= e!3011022 (containsKey!4284 (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280))))) key!5428))))

(assert (= (and d!1542719 (not res!2050656)) b!4819303))

(assert (= (and b!4819303 res!2050657) b!4819304))

(declare-fun m!5806334 () Bool)

(assert (=> b!4819304 m!5806334))

(assert (=> b!4819183 d!1542719))

(declare-fun d!1542721 () Bool)

(declare-fun res!2050658 () Bool)

(declare-fun e!3011023 () Bool)

(assert (=> d!1542721 (=> res!2050658 e!3011023)))

(assert (=> d!1542721 (= res!2050658 (and ((_ is Cons!54864) (_2!32300 (h!61299 (toList!7409 lm!2280)))) (= (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) key!5428)))))

(assert (=> d!1542721 (= (containsKey!4284 (_2!32300 (h!61299 (toList!7409 lm!2280))) key!5428) e!3011023)))

(declare-fun b!4819305 () Bool)

(declare-fun e!3011024 () Bool)

(assert (=> b!4819305 (= e!3011023 e!3011024)))

(declare-fun res!2050659 () Bool)

(assert (=> b!4819305 (=> (not res!2050659) (not e!3011024))))

(assert (=> b!4819305 (= res!2050659 ((_ is Cons!54864) (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun b!4819306 () Bool)

(assert (=> b!4819306 (= e!3011024 (containsKey!4284 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) key!5428))))

(assert (= (and d!1542721 (not res!2050658)) b!4819305))

(assert (= (and b!4819305 res!2050659) b!4819306))

(declare-fun m!5806336 () Bool)

(assert (=> b!4819306 m!5806336))

(assert (=> b!4819183 d!1542721))

(declare-fun bs!1161227 () Bool)

(declare-fun d!1542723 () Bool)

(assert (= bs!1161227 (and d!1542723 start!499138)))

(declare-fun lambda!235244 () Int)

(assert (=> bs!1161227 (= lambda!235244 lambda!235168)))

(assert (=> d!1542723 (not (containsKey!4284 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))) key!5428))))

(declare-fun lt!1968782 () Unit!142179)

(declare-fun choose!34980 (ListLongMap!5903 K!16539 (_ BitVec 64) Hashable!7220) Unit!142179)

(assert (=> d!1542723 (= lt!1968782 (choose!34980 lm!2280 key!5428 (_1!32300 (h!61299 (toList!7409 lm!2280))) hashF!1509))))

(assert (=> d!1542723 (forall!12534 (toList!7409 lm!2280) lambda!235244)))

(assert (=> d!1542723 (= (lemmaNotSameHashThenCannotContainKey!204 lm!2280 key!5428 (_1!32300 (h!61299 (toList!7409 lm!2280))) hashF!1509) lt!1968782)))

(declare-fun bs!1161228 () Bool)

(assert (= bs!1161228 d!1542723))

(assert (=> bs!1161228 m!5806154))

(assert (=> bs!1161228 m!5806154))

(assert (=> bs!1161228 m!5806156))

(declare-fun m!5806338 () Bool)

(assert (=> bs!1161228 m!5806338))

(declare-fun m!5806340 () Bool)

(assert (=> bs!1161228 m!5806340))

(assert (=> b!4819183 d!1542723))

(declare-fun b!4819325 () Bool)

(declare-datatypes ((List!54991 0))(
  ( (Nil!54867) (Cons!54867 (h!61301 K!16539) (t!362487 List!54991)) )
))
(declare-fun e!3011038 () List!54991)

(declare-fun getKeysList!1144 (List!54988) List!54991)

(assert (=> b!4819325 (= e!3011038 (getKeysList!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))

(declare-fun b!4819326 () Bool)

(assert (=> b!4819326 false))

(declare-fun lt!1968802 () Unit!142179)

(declare-fun lt!1968799 () Unit!142179)

(assert (=> b!4819326 (= lt!1968802 lt!1968799)))

(declare-fun containsKey!4287 (List!54988 K!16539) Bool)

(assert (=> b!4819326 (containsKey!4287 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1144 (List!54988 K!16539) Unit!142179)

(assert (=> b!4819326 (= lt!1968799 (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(declare-fun e!3011042 () Unit!142179)

(declare-fun Unit!142208 () Unit!142179)

(assert (=> b!4819326 (= e!3011042 Unit!142208)))

(declare-fun b!4819327 () Bool)

(declare-fun e!3011040 () Bool)

(declare-fun contains!18685 (List!54991 K!16539) Bool)

(declare-fun keys!20165 (ListMap!6809) List!54991)

(assert (=> b!4819327 (= e!3011040 (contains!18685 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(declare-fun d!1542725 () Bool)

(declare-fun e!3011041 () Bool)

(assert (=> d!1542725 e!3011041))

(declare-fun res!2050666 () Bool)

(assert (=> d!1542725 (=> res!2050666 e!3011041)))

(declare-fun e!3011037 () Bool)

(assert (=> d!1542725 (= res!2050666 e!3011037)))

(declare-fun res!2050667 () Bool)

(assert (=> d!1542725 (=> (not res!2050667) (not e!3011037))))

(declare-fun lt!1968803 () Bool)

(assert (=> d!1542725 (= res!2050667 (not lt!1968803))))

(declare-fun lt!1968804 () Bool)

(assert (=> d!1542725 (= lt!1968803 lt!1968804)))

(declare-fun lt!1968800 () Unit!142179)

(declare-fun e!3011039 () Unit!142179)

(assert (=> d!1542725 (= lt!1968800 e!3011039)))

(declare-fun c!821301 () Bool)

(assert (=> d!1542725 (= c!821301 lt!1968804)))

(assert (=> d!1542725 (= lt!1968804 (containsKey!4287 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(assert (=> d!1542725 (= (contains!18683 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599) key!5428) lt!1968803)))

(declare-fun b!4819328 () Bool)

(assert (=> b!4819328 (= e!3011038 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))

(declare-fun b!4819329 () Bool)

(declare-fun Unit!142209 () Unit!142179)

(assert (=> b!4819329 (= e!3011042 Unit!142209)))

(declare-fun b!4819330 () Bool)

(assert (=> b!4819330 (= e!3011039 e!3011042)))

(declare-fun c!821299 () Bool)

(declare-fun call!336075 () Bool)

(assert (=> b!4819330 (= c!821299 call!336075)))

(declare-fun b!4819331 () Bool)

(assert (=> b!4819331 (= e!3011037 (not (contains!18685 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428)))))

(declare-fun b!4819332 () Bool)

(declare-fun lt!1968805 () Unit!142179)

(assert (=> b!4819332 (= e!3011039 lt!1968805)))

(declare-fun lt!1968801 () Unit!142179)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (List!54988 K!16539) Unit!142179)

(assert (=> b!4819332 (= lt!1968801 (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(declare-datatypes ((Option!13455 0))(
  ( (None!13454) (Some!13454 (v!49121 V!16785)) )
))
(declare-fun isDefined!10570 (Option!13455) Bool)

(declare-fun getValueByKey!2582 (List!54988 K!16539) Option!13455)

(assert (=> b!4819332 (isDefined!10570 (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(declare-fun lt!1968806 () Unit!142179)

(assert (=> b!4819332 (= lt!1968806 lt!1968801)))

(declare-fun lemmaInListThenGetKeysListContains!1139 (List!54988 K!16539) Unit!142179)

(assert (=> b!4819332 (= lt!1968805 (lemmaInListThenGetKeysListContains!1139 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(assert (=> b!4819332 call!336075))

(declare-fun bm!336070 () Bool)

(assert (=> bm!336070 (= call!336075 (contains!18685 e!3011038 key!5428))))

(declare-fun c!821300 () Bool)

(assert (=> bm!336070 (= c!821300 c!821301)))

(declare-fun b!4819333 () Bool)

(assert (=> b!4819333 (= e!3011041 e!3011040)))

(declare-fun res!2050668 () Bool)

(assert (=> b!4819333 (=> (not res!2050668) (not e!3011040))))

(assert (=> b!4819333 (= res!2050668 (isDefined!10570 (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428)))))

(assert (= (and d!1542725 c!821301) b!4819332))

(assert (= (and d!1542725 (not c!821301)) b!4819330))

(assert (= (and b!4819330 c!821299) b!4819326))

(assert (= (and b!4819330 (not c!821299)) b!4819329))

(assert (= (or b!4819332 b!4819330) bm!336070))

(assert (= (and bm!336070 c!821300) b!4819325))

(assert (= (and bm!336070 (not c!821300)) b!4819328))

(assert (= (and d!1542725 res!2050667) b!4819331))

(assert (= (and d!1542725 (not res!2050666)) b!4819333))

(assert (= (and b!4819333 res!2050668) b!4819327))

(assert (=> b!4819327 m!5806162))

(declare-fun m!5806342 () Bool)

(assert (=> b!4819327 m!5806342))

(assert (=> b!4819327 m!5806342))

(declare-fun m!5806344 () Bool)

(assert (=> b!4819327 m!5806344))

(assert (=> b!4819328 m!5806162))

(assert (=> b!4819328 m!5806342))

(declare-fun m!5806346 () Bool)

(assert (=> b!4819333 m!5806346))

(assert (=> b!4819333 m!5806346))

(declare-fun m!5806348 () Bool)

(assert (=> b!4819333 m!5806348))

(assert (=> b!4819331 m!5806162))

(assert (=> b!4819331 m!5806342))

(assert (=> b!4819331 m!5806342))

(assert (=> b!4819331 m!5806344))

(declare-fun m!5806350 () Bool)

(assert (=> bm!336070 m!5806350))

(declare-fun m!5806352 () Bool)

(assert (=> b!4819325 m!5806352))

(declare-fun m!5806354 () Bool)

(assert (=> b!4819332 m!5806354))

(assert (=> b!4819332 m!5806346))

(assert (=> b!4819332 m!5806346))

(assert (=> b!4819332 m!5806348))

(declare-fun m!5806356 () Bool)

(assert (=> b!4819332 m!5806356))

(declare-fun m!5806358 () Bool)

(assert (=> d!1542725 m!5806358))

(assert (=> b!4819326 m!5806358))

(declare-fun m!5806360 () Bool)

(assert (=> b!4819326 m!5806360))

(assert (=> b!4819183 d!1542725))

(declare-fun d!1542727 () Bool)

(declare-fun e!3011045 () Bool)

(assert (=> d!1542727 (= (contains!18683 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599) key!5428) e!3011045)))

(declare-fun res!2050671 () Bool)

(assert (=> d!1542727 (=> res!2050671 e!3011045)))

(assert (=> d!1542727 (= res!2050671 (containsKey!4284 (_2!32300 (h!61299 (toList!7409 lm!2280))) key!5428))))

(declare-fun lt!1968809 () Unit!142179)

(declare-fun choose!34981 (List!54988 ListMap!6809 K!16539) Unit!142179)

(assert (=> d!1542727 (= lt!1968809 (choose!34981 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599 key!5428))))

(assert (=> d!1542727 (noDuplicateKeys!2425 (_2!32300 (h!61299 (toList!7409 lm!2280))))))

(assert (=> d!1542727 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!4 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599 key!5428) lt!1968809)))

(declare-fun b!4819336 () Bool)

(assert (=> b!4819336 (= e!3011045 (contains!18683 lt!1968599 key!5428))))

(assert (= (and d!1542727 (not res!2050671)) b!4819336))

(assert (=> d!1542727 m!5806168))

(assert (=> d!1542727 m!5806324))

(declare-fun m!5806362 () Bool)

(assert (=> d!1542727 m!5806362))

(assert (=> d!1542727 m!5806162))

(assert (=> d!1542727 m!5806164))

(assert (=> d!1542727 m!5806162))

(assert (=> b!4819336 m!5806174))

(assert (=> b!4819183 d!1542727))

(declare-fun bs!1161229 () Bool)

(declare-fun d!1542729 () Bool)

(assert (= bs!1161229 (and d!1542729 start!499138)))

(declare-fun lambda!235247 () Int)

(assert (=> bs!1161229 (= lambda!235247 lambda!235168)))

(declare-fun bs!1161230 () Bool)

(assert (= bs!1161230 (and d!1542729 d!1542723)))

(assert (=> bs!1161230 (= lambda!235247 lambda!235244)))

(declare-fun lt!1968812 () ListMap!6809)

(assert (=> d!1542729 (invariantList!1797 (toList!7410 lt!1968812))))

(declare-fun e!3011048 () ListMap!6809)

(assert (=> d!1542729 (= lt!1968812 e!3011048)))

(declare-fun c!821304 () Bool)

(assert (=> d!1542729 (= c!821304 ((_ is Cons!54865) (t!362485 (toList!7409 lm!2280))))))

(assert (=> d!1542729 (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235247)))

(assert (=> d!1542729 (= (extractMap!2656 (t!362485 (toList!7409 lm!2280))) lt!1968812)))

(declare-fun b!4819341 () Bool)

(assert (=> b!4819341 (= e!3011048 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))) (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))))))

(declare-fun b!4819342 () Bool)

(assert (=> b!4819342 (= e!3011048 (ListMap!6810 Nil!54864))))

(assert (= (and d!1542729 c!821304) b!4819341))

(assert (= (and d!1542729 (not c!821304)) b!4819342))

(declare-fun m!5806364 () Bool)

(assert (=> d!1542729 m!5806364))

(declare-fun m!5806366 () Bool)

(assert (=> d!1542729 m!5806366))

(declare-fun m!5806368 () Bool)

(assert (=> b!4819341 m!5806368))

(assert (=> b!4819341 m!5806368))

(declare-fun m!5806370 () Bool)

(assert (=> b!4819341 m!5806370))

(assert (=> b!4819183 d!1542729))

(declare-fun d!1542731 () Bool)

(declare-fun isEmpty!29620 (List!54989) Bool)

(assert (=> d!1542731 (= (isEmpty!29618 lm!2280) (isEmpty!29620 (toList!7409 lm!2280)))))

(declare-fun bs!1161231 () Bool)

(assert (= bs!1161231 d!1542731))

(declare-fun m!5806372 () Bool)

(assert (=> bs!1161231 m!5806372))

(assert (=> b!4819183 d!1542731))

(declare-fun d!1542733 () Bool)

(declare-fun res!2050676 () Bool)

(declare-fun e!3011053 () Bool)

(assert (=> d!1542733 (=> res!2050676 e!3011053)))

(assert (=> d!1542733 (= res!2050676 ((_ is Nil!54865) (toList!7409 lm!2280)))))

(assert (=> d!1542733 (= (forall!12534 (toList!7409 lm!2280) lambda!235168) e!3011053)))

(declare-fun b!4819347 () Bool)

(declare-fun e!3011054 () Bool)

(assert (=> b!4819347 (= e!3011053 e!3011054)))

(declare-fun res!2050677 () Bool)

(assert (=> b!4819347 (=> (not res!2050677) (not e!3011054))))

(declare-fun dynLambda!22179 (Int tuple2!58012) Bool)

(assert (=> b!4819347 (= res!2050677 (dynLambda!22179 lambda!235168 (h!61299 (toList!7409 lm!2280))))))

(declare-fun b!4819348 () Bool)

(assert (=> b!4819348 (= e!3011054 (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235168))))

(assert (= (and d!1542733 (not res!2050676)) b!4819347))

(assert (= (and b!4819347 res!2050677) b!4819348))

(declare-fun b_lambda!188813 () Bool)

(assert (=> (not b_lambda!188813) (not b!4819347)))

(declare-fun m!5806374 () Bool)

(assert (=> b!4819347 m!5806374))

(declare-fun m!5806376 () Bool)

(assert (=> b!4819348 m!5806376))

(assert (=> start!499138 d!1542733))

(declare-fun d!1542735 () Bool)

(declare-fun isStrictlySorted!961 (List!54989) Bool)

(assert (=> d!1542735 (= (inv!70439 lm!2280) (isStrictlySorted!961 (toList!7409 lm!2280)))))

(declare-fun bs!1161232 () Bool)

(assert (= bs!1161232 d!1542735))

(declare-fun m!5806378 () Bool)

(assert (=> bs!1161232 m!5806378))

(assert (=> start!499138 d!1542735))

(declare-fun bs!1161233 () Bool)

(declare-fun d!1542737 () Bool)

(assert (= bs!1161233 (and d!1542737 start!499138)))

(declare-fun lambda!235250 () Int)

(assert (=> bs!1161233 (not (= lambda!235250 lambda!235168))))

(declare-fun bs!1161234 () Bool)

(assert (= bs!1161234 (and d!1542737 d!1542723)))

(assert (=> bs!1161234 (not (= lambda!235250 lambda!235244))))

(declare-fun bs!1161235 () Bool)

(assert (= bs!1161235 (and d!1542737 d!1542729)))

(assert (=> bs!1161235 (not (= lambda!235250 lambda!235247))))

(assert (=> d!1542737 true))

(assert (=> d!1542737 (= (allKeysSameHashInMap!2536 lm!2280 hashF!1509) (forall!12534 (toList!7409 lm!2280) lambda!235250))))

(declare-fun bs!1161236 () Bool)

(assert (= bs!1161236 d!1542737))

(declare-fun m!5806380 () Bool)

(assert (=> bs!1161236 m!5806380))

(assert (=> b!4819186 d!1542737))

(declare-fun d!1542739 () Bool)

(declare-fun res!2050678 () Bool)

(declare-fun e!3011055 () Bool)

(assert (=> d!1542739 (=> res!2050678 e!3011055)))

(assert (=> d!1542739 (= res!2050678 (and ((_ is Cons!54864) (apply!13307 lm!2280 lt!1968597)) (= (_1!32299 (h!61298 (apply!13307 lm!2280 lt!1968597))) key!5428)))))

(assert (=> d!1542739 (= (containsKey!4284 (apply!13307 lm!2280 lt!1968597) key!5428) e!3011055)))

(declare-fun b!4819351 () Bool)

(declare-fun e!3011056 () Bool)

(assert (=> b!4819351 (= e!3011055 e!3011056)))

(declare-fun res!2050679 () Bool)

(assert (=> b!4819351 (=> (not res!2050679) (not e!3011056))))

(assert (=> b!4819351 (= res!2050679 ((_ is Cons!54864) (apply!13307 lm!2280 lt!1968597)))))

(declare-fun b!4819352 () Bool)

(assert (=> b!4819352 (= e!3011056 (containsKey!4284 (t!362484 (apply!13307 lm!2280 lt!1968597)) key!5428))))

(assert (= (and d!1542739 (not res!2050678)) b!4819351))

(assert (= (and b!4819351 res!2050679) b!4819352))

(declare-fun m!5806382 () Bool)

(assert (=> b!4819352 m!5806382))

(assert (=> b!4819185 d!1542739))

(declare-fun d!1542741 () Bool)

(assert (=> d!1542741 (= (apply!13307 lm!2280 lt!1968597) (get!18775 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597)))))

(declare-fun bs!1161237 () Bool)

(assert (= bs!1161237 d!1542741))

(declare-fun m!5806384 () Bool)

(assert (=> bs!1161237 m!5806384))

(assert (=> bs!1161237 m!5806384))

(declare-fun m!5806386 () Bool)

(assert (=> bs!1161237 m!5806386))

(assert (=> b!4819185 d!1542741))

(declare-fun b!4819353 () Bool)

(declare-fun e!3011058 () List!54991)

(assert (=> b!4819353 (= e!3011058 (getKeysList!1144 (toList!7410 lt!1968599)))))

(declare-fun b!4819354 () Bool)

(assert (=> b!4819354 false))

(declare-fun lt!1968816 () Unit!142179)

(declare-fun lt!1968813 () Unit!142179)

(assert (=> b!4819354 (= lt!1968816 lt!1968813)))

(assert (=> b!4819354 (containsKey!4287 (toList!7410 lt!1968599) key!5428)))

(assert (=> b!4819354 (= lt!1968813 (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 lt!1968599) key!5428))))

(declare-fun e!3011062 () Unit!142179)

(declare-fun Unit!142210 () Unit!142179)

(assert (=> b!4819354 (= e!3011062 Unit!142210)))

(declare-fun b!4819355 () Bool)

(declare-fun e!3011060 () Bool)

(assert (=> b!4819355 (= e!3011060 (contains!18685 (keys!20165 lt!1968599) key!5428))))

(declare-fun d!1542743 () Bool)

(declare-fun e!3011061 () Bool)

(assert (=> d!1542743 e!3011061))

(declare-fun res!2050680 () Bool)

(assert (=> d!1542743 (=> res!2050680 e!3011061)))

(declare-fun e!3011057 () Bool)

(assert (=> d!1542743 (= res!2050680 e!3011057)))

(declare-fun res!2050681 () Bool)

(assert (=> d!1542743 (=> (not res!2050681) (not e!3011057))))

(declare-fun lt!1968817 () Bool)

(assert (=> d!1542743 (= res!2050681 (not lt!1968817))))

(declare-fun lt!1968818 () Bool)

(assert (=> d!1542743 (= lt!1968817 lt!1968818)))

(declare-fun lt!1968814 () Unit!142179)

(declare-fun e!3011059 () Unit!142179)

(assert (=> d!1542743 (= lt!1968814 e!3011059)))

(declare-fun c!821307 () Bool)

(assert (=> d!1542743 (= c!821307 lt!1968818)))

(assert (=> d!1542743 (= lt!1968818 (containsKey!4287 (toList!7410 lt!1968599) key!5428))))

(assert (=> d!1542743 (= (contains!18683 lt!1968599 key!5428) lt!1968817)))

(declare-fun b!4819356 () Bool)

(assert (=> b!4819356 (= e!3011058 (keys!20165 lt!1968599))))

(declare-fun b!4819357 () Bool)

(declare-fun Unit!142211 () Unit!142179)

(assert (=> b!4819357 (= e!3011062 Unit!142211)))

(declare-fun b!4819358 () Bool)

(assert (=> b!4819358 (= e!3011059 e!3011062)))

(declare-fun c!821305 () Bool)

(declare-fun call!336076 () Bool)

(assert (=> b!4819358 (= c!821305 call!336076)))

(declare-fun b!4819359 () Bool)

(assert (=> b!4819359 (= e!3011057 (not (contains!18685 (keys!20165 lt!1968599) key!5428)))))

(declare-fun b!4819360 () Bool)

(declare-fun lt!1968819 () Unit!142179)

(assert (=> b!4819360 (= e!3011059 lt!1968819)))

(declare-fun lt!1968815 () Unit!142179)

(assert (=> b!4819360 (= lt!1968815 (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 lt!1968599) key!5428))))

(assert (=> b!4819360 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968599) key!5428))))

(declare-fun lt!1968820 () Unit!142179)

(assert (=> b!4819360 (= lt!1968820 lt!1968815)))

(assert (=> b!4819360 (= lt!1968819 (lemmaInListThenGetKeysListContains!1139 (toList!7410 lt!1968599) key!5428))))

(assert (=> b!4819360 call!336076))

(declare-fun bm!336071 () Bool)

(assert (=> bm!336071 (= call!336076 (contains!18685 e!3011058 key!5428))))

(declare-fun c!821306 () Bool)

(assert (=> bm!336071 (= c!821306 c!821307)))

(declare-fun b!4819361 () Bool)

(assert (=> b!4819361 (= e!3011061 e!3011060)))

(declare-fun res!2050682 () Bool)

(assert (=> b!4819361 (=> (not res!2050682) (not e!3011060))))

(assert (=> b!4819361 (= res!2050682 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968599) key!5428)))))

(assert (= (and d!1542743 c!821307) b!4819360))

(assert (= (and d!1542743 (not c!821307)) b!4819358))

(assert (= (and b!4819358 c!821305) b!4819354))

(assert (= (and b!4819358 (not c!821305)) b!4819357))

(assert (= (or b!4819360 b!4819358) bm!336071))

(assert (= (and bm!336071 c!821306) b!4819353))

(assert (= (and bm!336071 (not c!821306)) b!4819356))

(assert (= (and d!1542743 res!2050681) b!4819359))

(assert (= (and d!1542743 (not res!2050680)) b!4819361))

(assert (= (and b!4819361 res!2050682) b!4819355))

(declare-fun m!5806388 () Bool)

(assert (=> b!4819355 m!5806388))

(assert (=> b!4819355 m!5806388))

(declare-fun m!5806390 () Bool)

(assert (=> b!4819355 m!5806390))

(assert (=> b!4819356 m!5806388))

(declare-fun m!5806392 () Bool)

(assert (=> b!4819361 m!5806392))

(assert (=> b!4819361 m!5806392))

(declare-fun m!5806394 () Bool)

(assert (=> b!4819361 m!5806394))

(assert (=> b!4819359 m!5806388))

(assert (=> b!4819359 m!5806388))

(assert (=> b!4819359 m!5806390))

(declare-fun m!5806396 () Bool)

(assert (=> bm!336071 m!5806396))

(declare-fun m!5806398 () Bool)

(assert (=> b!4819353 m!5806398))

(declare-fun m!5806400 () Bool)

(assert (=> b!4819360 m!5806400))

(assert (=> b!4819360 m!5806392))

(assert (=> b!4819360 m!5806392))

(assert (=> b!4819360 m!5806394))

(declare-fun m!5806402 () Bool)

(assert (=> b!4819360 m!5806402))

(declare-fun m!5806404 () Bool)

(assert (=> d!1542743 m!5806404))

(assert (=> b!4819354 m!5806404))

(declare-fun m!5806406 () Bool)

(assert (=> b!4819354 m!5806406))

(assert (=> b!4819187 d!1542743))

(declare-fun d!1542745 () Bool)

(declare-fun e!3011067 () Bool)

(assert (=> d!1542745 e!3011067))

(declare-fun res!2050685 () Bool)

(assert (=> d!1542745 (=> res!2050685 e!3011067)))

(declare-fun lt!1968832 () Bool)

(assert (=> d!1542745 (= res!2050685 (not lt!1968832))))

(declare-fun lt!1968829 () Bool)

(assert (=> d!1542745 (= lt!1968832 lt!1968829)))

(declare-fun lt!1968831 () Unit!142179)

(declare-fun e!3011068 () Unit!142179)

(assert (=> d!1542745 (= lt!1968831 e!3011068)))

(declare-fun c!821310 () Bool)

(assert (=> d!1542745 (= c!821310 lt!1968829)))

(declare-fun containsKey!4288 (List!54989 (_ BitVec 64)) Bool)

(assert (=> d!1542745 (= lt!1968829 (containsKey!4288 (toList!7409 lm!2280) lt!1968597))))

(assert (=> d!1542745 (= (contains!18682 lm!2280 lt!1968597) lt!1968832)))

(declare-fun b!4819368 () Bool)

(declare-fun lt!1968830 () Unit!142179)

(assert (=> b!4819368 (= e!3011068 lt!1968830)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2368 (List!54989 (_ BitVec 64)) Unit!142179)

(assert (=> b!4819368 (= lt!1968830 (lemmaContainsKeyImpliesGetValueByKeyDefined!2368 (toList!7409 lm!2280) lt!1968597))))

(declare-fun isDefined!10571 (Option!13454) Bool)

(assert (=> b!4819368 (isDefined!10571 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597))))

(declare-fun b!4819369 () Bool)

(declare-fun Unit!142212 () Unit!142179)

(assert (=> b!4819369 (= e!3011068 Unit!142212)))

(declare-fun b!4819370 () Bool)

(assert (=> b!4819370 (= e!3011067 (isDefined!10571 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597)))))

(assert (= (and d!1542745 c!821310) b!4819368))

(assert (= (and d!1542745 (not c!821310)) b!4819369))

(assert (= (and d!1542745 (not res!2050685)) b!4819370))

(declare-fun m!5806408 () Bool)

(assert (=> d!1542745 m!5806408))

(declare-fun m!5806410 () Bool)

(assert (=> b!4819368 m!5806410))

(assert (=> b!4819368 m!5806384))

(assert (=> b!4819368 m!5806384))

(declare-fun m!5806412 () Bool)

(assert (=> b!4819368 m!5806412))

(assert (=> b!4819370 m!5806384))

(assert (=> b!4819370 m!5806384))

(assert (=> b!4819370 m!5806412))

(assert (=> b!4819182 d!1542745))

(declare-fun d!1542747 () Bool)

(declare-fun hash!5307 (Hashable!7220 K!16539) (_ BitVec 64))

(assert (=> d!1542747 (= (hash!5303 hashF!1509 key!5428) (hash!5307 hashF!1509 key!5428))))

(declare-fun bs!1161238 () Bool)

(assert (= bs!1161238 d!1542747))

(declare-fun m!5806414 () Bool)

(assert (=> bs!1161238 m!5806414))

(assert (=> b!4819182 d!1542747))

(declare-fun b!4819375 () Bool)

(declare-fun e!3011071 () Bool)

(declare-fun tp!1362186 () Bool)

(declare-fun tp!1362187 () Bool)

(assert (=> b!4819375 (= e!3011071 (and tp!1362186 tp!1362187))))

(assert (=> b!4819184 (= tp!1362175 e!3011071)))

(assert (= (and b!4819184 ((_ is Cons!54865) (toList!7409 lm!2280))) b!4819375))

(declare-fun b_lambda!188815 () Bool)

(assert (= b_lambda!188813 (or start!499138 b_lambda!188815)))

(declare-fun bs!1161239 () Bool)

(declare-fun d!1542749 () Bool)

(assert (= bs!1161239 (and d!1542749 start!499138)))

(assert (=> bs!1161239 (= (dynLambda!22179 lambda!235168 (h!61299 (toList!7409 lm!2280))) (noDuplicateKeys!2425 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(assert (=> bs!1161239 m!5806324))

(assert (=> b!4819347 d!1542749))

(check-sat (not d!1542741) (not b!4819331) (not b!4819296) (not b!4819368) (not b!4819325) (not bm!336070) (not b!4819294) (not b!4819328) (not d!1542745) (not b!4819356) (not b!4819292) (not d!1542747) (not d!1542735) (not b!4819327) (not bs!1161239) (not b!4819295) (not d!1542743) (not b!4819361) (not d!1542737) (not b!4819352) (not d!1542729) (not b!4819326) (not d!1542683) (not bm!336065) (not d!1542731) (not b!4819336) (not b!4819375) (not d!1542727) (not d!1542725) (not b!4819360) (not b_lambda!188815) (not d!1542723) (not b!4819370) (not bm!336071) (not b!4819306) (not b!4819354) (not b!4819359) (not bm!336067) (not b!4819353) (not b!4819333) (not b!4819332) (not b!4819304) (not d!1542681) (not b!4819341) (not bm!336066) tp_is_empty!34325 (not b!4819348) (not b!4819355))
(check-sat)
(get-model)

(declare-fun lt!1968835 () Bool)

(declare-fun d!1542751 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9806 (List!54991) (InoxSet K!16539))

(assert (=> d!1542751 (= lt!1968835 (select (content!9806 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428))))

(declare-fun e!3011077 () Bool)

(assert (=> d!1542751 (= lt!1968835 e!3011077)))

(declare-fun res!2050690 () Bool)

(assert (=> d!1542751 (=> (not res!2050690) (not e!3011077))))

(assert (=> d!1542751 (= res!2050690 ((_ is Cons!54867) (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))

(assert (=> d!1542751 (= (contains!18685 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) lt!1968835)))

(declare-fun b!4819380 () Bool)

(declare-fun e!3011076 () Bool)

(assert (=> b!4819380 (= e!3011077 e!3011076)))

(declare-fun res!2050691 () Bool)

(assert (=> b!4819380 (=> res!2050691 e!3011076)))

(assert (=> b!4819380 (= res!2050691 (= (h!61301 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428))))

(declare-fun b!4819381 () Bool)

(assert (=> b!4819381 (= e!3011076 (contains!18685 (t!362487 (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428))))

(assert (= (and d!1542751 res!2050690) b!4819380))

(assert (= (and b!4819380 (not res!2050691)) b!4819381))

(assert (=> d!1542751 m!5806342))

(declare-fun m!5806416 () Bool)

(assert (=> d!1542751 m!5806416))

(declare-fun m!5806418 () Bool)

(assert (=> d!1542751 m!5806418))

(declare-fun m!5806420 () Bool)

(assert (=> b!4819381 m!5806420))

(assert (=> b!4819331 d!1542751))

(declare-fun b!4819391 () Bool)

(assert (=> b!4819391 true))

(declare-fun d!1542753 () Bool)

(declare-fun e!3011082 () Bool)

(assert (=> d!1542753 e!3011082))

(declare-fun res!2050702 () Bool)

(assert (=> d!1542753 (=> (not res!2050702) (not e!3011082))))

(declare-fun lt!1968838 () List!54991)

(declare-fun noDuplicate!947 (List!54991) Bool)

(assert (=> d!1542753 (= res!2050702 (noDuplicate!947 lt!1968838))))

(assert (=> d!1542753 (= lt!1968838 (getKeysList!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))

(assert (=> d!1542753 (= (keys!20165 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) lt!1968838)))

(declare-fun b!4819390 () Bool)

(declare-fun res!2050701 () Bool)

(assert (=> b!4819390 (=> (not res!2050701) (not e!3011082))))

(declare-fun length!750 (List!54991) Int)

(declare-fun length!751 (List!54988) Int)

(assert (=> b!4819390 (= res!2050701 (= (length!750 lt!1968838) (length!751 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))))

(declare-fun res!2050700 () Bool)

(assert (=> b!4819391 (=> (not res!2050700) (not e!3011082))))

(declare-fun lambda!235255 () Int)

(declare-fun forall!12537 (List!54991 Int) Bool)

(assert (=> b!4819391 (= res!2050700 (forall!12537 lt!1968838 lambda!235255))))

(declare-fun lambda!235256 () Int)

(declare-fun b!4819392 () Bool)

(declare-fun map!12543 (List!54988 Int) List!54991)

(assert (=> b!4819392 (= e!3011082 (= (content!9806 lt!1968838) (content!9806 (map!12543 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) lambda!235256))))))

(assert (= (and d!1542753 res!2050702) b!4819390))

(assert (= (and b!4819390 res!2050701) b!4819391))

(assert (= (and b!4819391 res!2050700) b!4819392))

(declare-fun m!5806428 () Bool)

(assert (=> d!1542753 m!5806428))

(assert (=> d!1542753 m!5806352))

(declare-fun m!5806430 () Bool)

(assert (=> b!4819390 m!5806430))

(declare-fun m!5806432 () Bool)

(assert (=> b!4819390 m!5806432))

(declare-fun m!5806434 () Bool)

(assert (=> b!4819391 m!5806434))

(declare-fun m!5806436 () Bool)

(assert (=> b!4819392 m!5806436))

(declare-fun m!5806438 () Bool)

(assert (=> b!4819392 m!5806438))

(assert (=> b!4819392 m!5806438))

(declare-fun m!5806440 () Bool)

(assert (=> b!4819392 m!5806440))

(assert (=> b!4819331 d!1542753))

(declare-fun d!1542761 () Bool)

(assert (=> d!1542761 (= (isEmpty!29620 (toList!7409 lm!2280)) ((_ is Nil!54865) (toList!7409 lm!2280)))))

(assert (=> d!1542731 d!1542761))

(declare-fun d!1542763 () Bool)

(declare-fun res!2050707 () Bool)

(declare-fun e!3011093 () Bool)

(assert (=> d!1542763 (=> res!2050707 e!3011093)))

(assert (=> d!1542763 (= res!2050707 ((_ is Nil!54864) (toList!7410 lt!1968599)))))

(assert (=> d!1542763 (= (forall!12536 (toList!7410 lt!1968599) (ite c!821292 lambda!235238 lambda!235240)) e!3011093)))

(declare-fun b!4819411 () Bool)

(declare-fun e!3011094 () Bool)

(assert (=> b!4819411 (= e!3011093 e!3011094)))

(declare-fun res!2050708 () Bool)

(assert (=> b!4819411 (=> (not res!2050708) (not e!3011094))))

(declare-fun dynLambda!22180 (Int tuple2!58010) Bool)

(assert (=> b!4819411 (= res!2050708 (dynLambda!22180 (ite c!821292 lambda!235238 lambda!235240) (h!61298 (toList!7410 lt!1968599))))))

(declare-fun b!4819412 () Bool)

(assert (=> b!4819412 (= e!3011094 (forall!12536 (t!362484 (toList!7410 lt!1968599)) (ite c!821292 lambda!235238 lambda!235240)))))

(assert (= (and d!1542763 (not res!2050707)) b!4819411))

(assert (= (and b!4819411 res!2050708) b!4819412))

(declare-fun b_lambda!188819 () Bool)

(assert (=> (not b_lambda!188819) (not b!4819411)))

(declare-fun m!5806444 () Bool)

(assert (=> b!4819411 m!5806444))

(declare-fun m!5806446 () Bool)

(assert (=> b!4819412 m!5806446))

(assert (=> bm!336066 d!1542763))

(declare-fun d!1542767 () Bool)

(declare-fun res!2050709 () Bool)

(declare-fun e!3011095 () Bool)

(assert (=> d!1542767 (=> res!2050709 e!3011095)))

(assert (=> d!1542767 (= res!2050709 ((_ is Nil!54864) (ite c!821292 (toList!7410 lt!1968599) (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542767 (= (forall!12536 (ite c!821292 (toList!7410 lt!1968599) (_2!32300 (h!61299 (toList!7409 lm!2280)))) (ite c!821292 lambda!235238 lambda!235240)) e!3011095)))

(declare-fun b!4819413 () Bool)

(declare-fun e!3011096 () Bool)

(assert (=> b!4819413 (= e!3011095 e!3011096)))

(declare-fun res!2050710 () Bool)

(assert (=> b!4819413 (=> (not res!2050710) (not e!3011096))))

(assert (=> b!4819413 (= res!2050710 (dynLambda!22180 (ite c!821292 lambda!235238 lambda!235240) (h!61298 (ite c!821292 (toList!7410 lt!1968599) (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun b!4819414 () Bool)

(assert (=> b!4819414 (= e!3011096 (forall!12536 (t!362484 (ite c!821292 (toList!7410 lt!1968599) (_2!32300 (h!61299 (toList!7409 lm!2280))))) (ite c!821292 lambda!235238 lambda!235240)))))

(assert (= (and d!1542767 (not res!2050709)) b!4819413))

(assert (= (and b!4819413 res!2050710) b!4819414))

(declare-fun b_lambda!188821 () Bool)

(assert (=> (not b_lambda!188821) (not b!4819413)))

(declare-fun m!5806448 () Bool)

(assert (=> b!4819413 m!5806448))

(declare-fun m!5806450 () Bool)

(assert (=> b!4819414 m!5806450))

(assert (=> bm!336067 d!1542767))

(declare-fun d!1542769 () Bool)

(assert (=> d!1542769 (= (get!18775 (getValueByKey!2581 (toList!7409 lm!2280) (_1!32300 (h!61299 (toList!7409 lm!2280))))) (v!49120 (getValueByKey!2581 (toList!7409 lm!2280) (_1!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542681 d!1542769))

(declare-fun b!4819427 () Bool)

(declare-fun e!3011103 () Option!13454)

(assert (=> b!4819427 (= e!3011103 (Some!13453 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun b!4819429 () Bool)

(declare-fun e!3011104 () Option!13454)

(assert (=> b!4819429 (= e!3011104 (getValueByKey!2581 (t!362485 (toList!7409 lm!2280)) (_1!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun b!4819428 () Bool)

(assert (=> b!4819428 (= e!3011103 e!3011104)))

(declare-fun c!821324 () Bool)

(assert (=> b!4819428 (= c!821324 (and ((_ is Cons!54865) (toList!7409 lm!2280)) (not (= (_1!32300 (h!61299 (toList!7409 lm!2280))) (_1!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun d!1542775 () Bool)

(declare-fun c!821323 () Bool)

(assert (=> d!1542775 (= c!821323 (and ((_ is Cons!54865) (toList!7409 lm!2280)) (= (_1!32300 (h!61299 (toList!7409 lm!2280))) (_1!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542775 (= (getValueByKey!2581 (toList!7409 lm!2280) (_1!32300 (h!61299 (toList!7409 lm!2280)))) e!3011103)))

(declare-fun b!4819430 () Bool)

(assert (=> b!4819430 (= e!3011104 None!13453)))

(assert (= (and d!1542775 c!821323) b!4819427))

(assert (= (and d!1542775 (not c!821323)) b!4819428))

(assert (= (and b!4819428 c!821324) b!4819429))

(assert (= (and b!4819428 (not c!821324)) b!4819430))

(declare-fun m!5806460 () Bool)

(assert (=> b!4819429 m!5806460))

(assert (=> d!1542681 d!1542775))

(assert (=> b!4819336 d!1542743))

(declare-fun d!1542779 () Bool)

(declare-fun res!2050717 () Bool)

(declare-fun e!3011111 () Bool)

(assert (=> d!1542779 (=> res!2050717 e!3011111)))

(assert (=> d!1542779 (= res!2050717 (and ((_ is Cons!54864) (toList!7410 lt!1968599)) (= (_1!32299 (h!61298 (toList!7410 lt!1968599))) key!5428)))))

(assert (=> d!1542779 (= (containsKey!4287 (toList!7410 lt!1968599) key!5428) e!3011111)))

(declare-fun b!4819437 () Bool)

(declare-fun e!3011112 () Bool)

(assert (=> b!4819437 (= e!3011111 e!3011112)))

(declare-fun res!2050718 () Bool)

(assert (=> b!4819437 (=> (not res!2050718) (not e!3011112))))

(assert (=> b!4819437 (= res!2050718 ((_ is Cons!54864) (toList!7410 lt!1968599)))))

(declare-fun b!4819438 () Bool)

(assert (=> b!4819438 (= e!3011112 (containsKey!4287 (t!362484 (toList!7410 lt!1968599)) key!5428))))

(assert (= (and d!1542779 (not res!2050717)) b!4819437))

(assert (= (and b!4819437 res!2050718) b!4819438))

(declare-fun m!5806466 () Bool)

(assert (=> b!4819438 m!5806466))

(assert (=> d!1542743 d!1542779))

(declare-fun d!1542783 () Bool)

(declare-fun res!2050724 () Bool)

(declare-fun e!3011118 () Bool)

(assert (=> d!1542783 (=> res!2050724 e!3011118)))

(assert (=> d!1542783 (= res!2050724 (not ((_ is Cons!54864) (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542783 (= (noDuplicateKeys!2425 (_2!32300 (h!61299 (toList!7409 lm!2280)))) e!3011118)))

(declare-fun b!4819444 () Bool)

(declare-fun e!3011119 () Bool)

(assert (=> b!4819444 (= e!3011118 e!3011119)))

(declare-fun res!2050725 () Bool)

(assert (=> b!4819444 (=> (not res!2050725) (not e!3011119))))

(assert (=> b!4819444 (= res!2050725 (not (containsKey!4284 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun b!4819445 () Bool)

(assert (=> b!4819445 (= e!3011119 (noDuplicateKeys!2425 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (= (and d!1542783 (not res!2050724)) b!4819444))

(assert (= (and b!4819444 res!2050725) b!4819445))

(declare-fun m!5806472 () Bool)

(assert (=> b!4819444 m!5806472))

(declare-fun m!5806474 () Bool)

(assert (=> b!4819445 m!5806474))

(assert (=> bs!1161239 d!1542783))

(declare-fun d!1542789 () Bool)

(assert (=> d!1542789 (isDefined!10570 (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(declare-fun lt!1968850 () Unit!142179)

(declare-fun choose!34983 (List!54988 K!16539) Unit!142179)

(assert (=> d!1542789 (= lt!1968850 (choose!34983 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(assert (=> d!1542789 (invariantList!1797 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))

(assert (=> d!1542789 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) lt!1968850)))

(declare-fun bs!1161245 () Bool)

(assert (= bs!1161245 d!1542789))

(assert (=> bs!1161245 m!5806346))

(assert (=> bs!1161245 m!5806346))

(assert (=> bs!1161245 m!5806348))

(declare-fun m!5806476 () Bool)

(assert (=> bs!1161245 m!5806476))

(declare-fun m!5806478 () Bool)

(assert (=> bs!1161245 m!5806478))

(assert (=> b!4819332 d!1542789))

(declare-fun d!1542791 () Bool)

(declare-fun isEmpty!29622 (Option!13455) Bool)

(assert (=> d!1542791 (= (isDefined!10570 (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428)) (not (isEmpty!29622 (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))))

(declare-fun bs!1161246 () Bool)

(assert (= bs!1161246 d!1542791))

(assert (=> bs!1161246 m!5806346))

(declare-fun m!5806482 () Bool)

(assert (=> bs!1161246 m!5806482))

(assert (=> b!4819332 d!1542791))

(declare-fun d!1542795 () Bool)

(declare-fun c!821335 () Bool)

(assert (=> d!1542795 (= c!821335 (and ((_ is Cons!54864) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) key!5428)))))

(declare-fun e!3011136 () Option!13455)

(assert (=> d!1542795 (= (getValueByKey!2582 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) e!3011136)))

(declare-fun b!4819475 () Bool)

(declare-fun e!3011137 () Option!13455)

(assert (=> b!4819475 (= e!3011137 None!13454)))

(declare-fun b!4819472 () Bool)

(assert (=> b!4819472 (= e!3011136 (Some!13454 (_2!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))))

(declare-fun b!4819473 () Bool)

(assert (=> b!4819473 (= e!3011136 e!3011137)))

(declare-fun c!821336 () Bool)

(assert (=> b!4819473 (= c!821336 (and ((_ is Cons!54864) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (not (= (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) key!5428))))))

(declare-fun b!4819474 () Bool)

(assert (=> b!4819474 (= e!3011137 (getValueByKey!2582 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428))))

(assert (= (and d!1542795 c!821335) b!4819472))

(assert (= (and d!1542795 (not c!821335)) b!4819473))

(assert (= (and b!4819473 c!821336) b!4819474))

(assert (= (and b!4819473 (not c!821336)) b!4819475))

(declare-fun m!5806490 () Bool)

(assert (=> b!4819474 m!5806490))

(assert (=> b!4819332 d!1542795))

(declare-fun d!1542799 () Bool)

(assert (=> d!1542799 (contains!18685 (getKeysList!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428)))

(declare-fun lt!1968856 () Unit!142179)

(declare-fun choose!34986 (List!54988 K!16539) Unit!142179)

(assert (=> d!1542799 (= lt!1968856 (choose!34986 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(assert (=> d!1542799 (invariantList!1797 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))

(assert (=> d!1542799 (= (lemmaInListThenGetKeysListContains!1139 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) lt!1968856)))

(declare-fun bs!1161247 () Bool)

(assert (= bs!1161247 d!1542799))

(assert (=> bs!1161247 m!5806352))

(assert (=> bs!1161247 m!5806352))

(declare-fun m!5806494 () Bool)

(assert (=> bs!1161247 m!5806494))

(declare-fun m!5806496 () Bool)

(assert (=> bs!1161247 m!5806496))

(assert (=> bs!1161247 m!5806478))

(assert (=> b!4819332 d!1542799))

(assert (=> b!4819328 d!1542753))

(declare-fun d!1542803 () Bool)

(declare-fun res!2050738 () Bool)

(declare-fun e!3011144 () Bool)

(assert (=> d!1542803 (=> res!2050738 e!3011144)))

(assert (=> d!1542803 (= res!2050738 ((_ is Nil!54864) (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542803 (= (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235240) e!3011144)))

(declare-fun b!4819482 () Bool)

(declare-fun e!3011145 () Bool)

(assert (=> b!4819482 (= e!3011144 e!3011145)))

(declare-fun res!2050739 () Bool)

(assert (=> b!4819482 (=> (not res!2050739) (not e!3011145))))

(assert (=> b!4819482 (= res!2050739 (dynLambda!22180 lambda!235240 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun b!4819483 () Bool)

(assert (=> b!4819483 (= e!3011145 (forall!12536 (t!362484 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lambda!235240))))

(assert (= (and d!1542803 (not res!2050738)) b!4819482))

(assert (= (and b!4819482 res!2050739) b!4819483))

(declare-fun b_lambda!188823 () Bool)

(assert (=> (not b_lambda!188823) (not b!4819482)))

(declare-fun m!5806498 () Bool)

(assert (=> b!4819482 m!5806498))

(declare-fun m!5806500 () Bool)

(assert (=> b!4819483 m!5806500))

(assert (=> b!4819294 d!1542803))

(declare-fun bs!1161248 () Bool)

(declare-fun d!1542805 () Bool)

(assert (= bs!1161248 (and d!1542805 b!4819293)))

(declare-fun lambda!235261 () Int)

(assert (=> bs!1161248 (= (= lt!1968760 lt!1968599) (= lambda!235261 lambda!235238))))

(declare-fun bs!1161249 () Bool)

(assert (= bs!1161249 (and d!1542805 b!4819294)))

(assert (=> bs!1161249 (= (= lt!1968760 lt!1968599) (= lambda!235261 lambda!235239))))

(assert (=> bs!1161249 (= lambda!235261 lambda!235240)))

(declare-fun bs!1161250 () Bool)

(assert (= bs!1161250 (and d!1542805 d!1542683)))

(assert (=> bs!1161250 (= (= lt!1968760 lt!1968770) (= lambda!235261 lambda!235241))))

(assert (=> d!1542805 true))

(assert (=> d!1542805 (forall!12536 (toList!7410 lt!1968599) lambda!235261)))

(declare-fun lt!1968859 () Unit!142179)

(declare-fun choose!34987 (ListMap!6809 ListMap!6809 K!16539 V!16785) Unit!142179)

(assert (=> d!1542805 (= lt!1968859 (choose!34987 lt!1968599 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> d!1542805 (forall!12536 (toList!7410 (+!2523 lt!1968599 (tuple2!58011 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))) lambda!235261)))

(assert (=> d!1542805 (= (addForallContainsKeyThenBeforeAdding!977 lt!1968599 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lt!1968859)))

(declare-fun bs!1161251 () Bool)

(assert (= bs!1161251 d!1542805))

(declare-fun m!5806506 () Bool)

(assert (=> bs!1161251 m!5806506))

(declare-fun m!5806508 () Bool)

(assert (=> bs!1161251 m!5806508))

(declare-fun m!5806510 () Bool)

(assert (=> bs!1161251 m!5806510))

(declare-fun m!5806512 () Bool)

(assert (=> bs!1161251 m!5806512))

(assert (=> b!4819294 d!1542805))

(declare-fun b!4819494 () Bool)

(declare-fun e!3011156 () List!54991)

(assert (=> b!4819494 (= e!3011156 (getKeysList!1144 (toList!7410 lt!1968765)))))

(declare-fun b!4819495 () Bool)

(assert (=> b!4819495 false))

(declare-fun lt!1968863 () Unit!142179)

(declare-fun lt!1968860 () Unit!142179)

(assert (=> b!4819495 (= lt!1968863 lt!1968860)))

(assert (=> b!4819495 (containsKey!4287 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> b!4819495 (= lt!1968860 (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun e!3011160 () Unit!142179)

(declare-fun Unit!142213 () Unit!142179)

(assert (=> b!4819495 (= e!3011160 Unit!142213)))

(declare-fun b!4819496 () Bool)

(declare-fun e!3011158 () Bool)

(assert (=> b!4819496 (= e!3011158 (contains!18685 (keys!20165 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun d!1542811 () Bool)

(declare-fun e!3011159 () Bool)

(assert (=> d!1542811 e!3011159))

(declare-fun res!2050749 () Bool)

(assert (=> d!1542811 (=> res!2050749 e!3011159)))

(declare-fun e!3011155 () Bool)

(assert (=> d!1542811 (= res!2050749 e!3011155)))

(declare-fun res!2050750 () Bool)

(assert (=> d!1542811 (=> (not res!2050750) (not e!3011155))))

(declare-fun lt!1968864 () Bool)

(assert (=> d!1542811 (= res!2050750 (not lt!1968864))))

(declare-fun lt!1968865 () Bool)

(assert (=> d!1542811 (= lt!1968864 lt!1968865)))

(declare-fun lt!1968861 () Unit!142179)

(declare-fun e!3011157 () Unit!142179)

(assert (=> d!1542811 (= lt!1968861 e!3011157)))

(declare-fun c!821339 () Bool)

(assert (=> d!1542811 (= c!821339 lt!1968865)))

(assert (=> d!1542811 (= lt!1968865 (containsKey!4287 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> d!1542811 (= (contains!18683 lt!1968765 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lt!1968864)))

(declare-fun b!4819497 () Bool)

(assert (=> b!4819497 (= e!3011156 (keys!20165 lt!1968765))))

(declare-fun b!4819498 () Bool)

(declare-fun Unit!142214 () Unit!142179)

(assert (=> b!4819498 (= e!3011160 Unit!142214)))

(declare-fun b!4819499 () Bool)

(assert (=> b!4819499 (= e!3011157 e!3011160)))

(declare-fun c!821337 () Bool)

(declare-fun call!336077 () Bool)

(assert (=> b!4819499 (= c!821337 call!336077)))

(declare-fun b!4819500 () Bool)

(assert (=> b!4819500 (= e!3011155 (not (contains!18685 (keys!20165 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun b!4819501 () Bool)

(declare-fun lt!1968866 () Unit!142179)

(assert (=> b!4819501 (= e!3011157 lt!1968866)))

(declare-fun lt!1968862 () Unit!142179)

(assert (=> b!4819501 (= lt!1968862 (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819501 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968867 () Unit!142179)

(assert (=> b!4819501 (= lt!1968867 lt!1968862)))

(assert (=> b!4819501 (= lt!1968866 (lemmaInListThenGetKeysListContains!1139 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819501 call!336077))

(declare-fun bm!336072 () Bool)

(assert (=> bm!336072 (= call!336077 (contains!18685 e!3011156 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun c!821338 () Bool)

(assert (=> bm!336072 (= c!821338 c!821339)))

(declare-fun b!4819502 () Bool)

(assert (=> b!4819502 (= e!3011159 e!3011158)))

(declare-fun res!2050751 () Bool)

(assert (=> b!4819502 (=> (not res!2050751) (not e!3011158))))

(assert (=> b!4819502 (= res!2050751 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968765) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(assert (= (and d!1542811 c!821339) b!4819501))

(assert (= (and d!1542811 (not c!821339)) b!4819499))

(assert (= (and b!4819499 c!821337) b!4819495))

(assert (= (and b!4819499 (not c!821337)) b!4819498))

(assert (= (or b!4819501 b!4819499) bm!336072))

(assert (= (and bm!336072 c!821338) b!4819494))

(assert (= (and bm!336072 (not c!821338)) b!4819497))

(assert (= (and d!1542811 res!2050750) b!4819500))

(assert (= (and d!1542811 (not res!2050749)) b!4819502))

(assert (= (and b!4819502 res!2050751) b!4819496))

(declare-fun m!5806514 () Bool)

(assert (=> b!4819496 m!5806514))

(assert (=> b!4819496 m!5806514))

(declare-fun m!5806516 () Bool)

(assert (=> b!4819496 m!5806516))

(assert (=> b!4819497 m!5806514))

(declare-fun m!5806518 () Bool)

(assert (=> b!4819502 m!5806518))

(assert (=> b!4819502 m!5806518))

(declare-fun m!5806520 () Bool)

(assert (=> b!4819502 m!5806520))

(assert (=> b!4819500 m!5806514))

(assert (=> b!4819500 m!5806514))

(assert (=> b!4819500 m!5806516))

(declare-fun m!5806522 () Bool)

(assert (=> bm!336072 m!5806522))

(declare-fun m!5806524 () Bool)

(assert (=> b!4819494 m!5806524))

(declare-fun m!5806526 () Bool)

(assert (=> b!4819501 m!5806526))

(assert (=> b!4819501 m!5806518))

(assert (=> b!4819501 m!5806518))

(assert (=> b!4819501 m!5806520))

(declare-fun m!5806528 () Bool)

(assert (=> b!4819501 m!5806528))

(declare-fun m!5806530 () Bool)

(assert (=> d!1542811 m!5806530))

(assert (=> b!4819495 m!5806530))

(declare-fun m!5806532 () Bool)

(assert (=> b!4819495 m!5806532))

(assert (=> b!4819294 d!1542811))

(declare-fun d!1542813 () Bool)

(declare-fun res!2050752 () Bool)

(declare-fun e!3011161 () Bool)

(assert (=> d!1542813 (=> res!2050752 e!3011161)))

(assert (=> d!1542813 (= res!2050752 ((_ is Nil!54864) (toList!7410 lt!1968599)))))

(assert (=> d!1542813 (= (forall!12536 (toList!7410 lt!1968599) lambda!235239) e!3011161)))

(declare-fun b!4819503 () Bool)

(declare-fun e!3011162 () Bool)

(assert (=> b!4819503 (= e!3011161 e!3011162)))

(declare-fun res!2050753 () Bool)

(assert (=> b!4819503 (=> (not res!2050753) (not e!3011162))))

(assert (=> b!4819503 (= res!2050753 (dynLambda!22180 lambda!235239 (h!61298 (toList!7410 lt!1968599))))))

(declare-fun b!4819504 () Bool)

(assert (=> b!4819504 (= e!3011162 (forall!12536 (t!362484 (toList!7410 lt!1968599)) lambda!235239))))

(assert (= (and d!1542813 (not res!2050752)) b!4819503))

(assert (= (and b!4819503 res!2050753) b!4819504))

(declare-fun b_lambda!188825 () Bool)

(assert (=> (not b_lambda!188825) (not b!4819503)))

(declare-fun m!5806534 () Bool)

(assert (=> b!4819503 m!5806534))

(declare-fun m!5806536 () Bool)

(assert (=> b!4819504 m!5806536))

(assert (=> b!4819294 d!1542813))

(declare-fun d!1542815 () Bool)

(declare-fun res!2050754 () Bool)

(declare-fun e!3011163 () Bool)

(assert (=> d!1542815 (=> res!2050754 e!3011163)))

(assert (=> d!1542815 (= res!2050754 ((_ is Nil!54864) (toList!7410 lt!1968599)))))

(assert (=> d!1542815 (= (forall!12536 (toList!7410 lt!1968599) lambda!235240) e!3011163)))

(declare-fun b!4819505 () Bool)

(declare-fun e!3011164 () Bool)

(assert (=> b!4819505 (= e!3011163 e!3011164)))

(declare-fun res!2050755 () Bool)

(assert (=> b!4819505 (=> (not res!2050755) (not e!3011164))))

(assert (=> b!4819505 (= res!2050755 (dynLambda!22180 lambda!235240 (h!61298 (toList!7410 lt!1968599))))))

(declare-fun b!4819506 () Bool)

(assert (=> b!4819506 (= e!3011164 (forall!12536 (t!362484 (toList!7410 lt!1968599)) lambda!235240))))

(assert (= (and d!1542815 (not res!2050754)) b!4819505))

(assert (= (and b!4819505 res!2050755) b!4819506))

(declare-fun b_lambda!188827 () Bool)

(assert (=> (not b_lambda!188827) (not b!4819505)))

(declare-fun m!5806538 () Bool)

(assert (=> b!4819505 m!5806538))

(declare-fun m!5806540 () Bool)

(assert (=> b!4819506 m!5806540))

(assert (=> b!4819294 d!1542815))

(declare-fun d!1542817 () Bool)

(declare-fun e!3011182 () Bool)

(assert (=> d!1542817 e!3011182))

(declare-fun res!2050779 () Bool)

(assert (=> d!1542817 (=> (not res!2050779) (not e!3011182))))

(declare-fun lt!1968882 () ListMap!6809)

(assert (=> d!1542817 (= res!2050779 (contains!18683 lt!1968882 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968879 () List!54988)

(assert (=> d!1542817 (= lt!1968882 (ListMap!6810 lt!1968879))))

(declare-fun lt!1968880 () Unit!142179)

(declare-fun lt!1968881 () Unit!142179)

(assert (=> d!1542817 (= lt!1968880 lt!1968881)))

(assert (=> d!1542817 (= (getValueByKey!2582 lt!1968879 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (Some!13454 (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1206 (List!54988 K!16539 V!16785) Unit!142179)

(assert (=> d!1542817 (= lt!1968881 (lemmaContainsTupThenGetReturnValue!1206 lt!1968879 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!714 (List!54988 K!16539 V!16785) List!54988)

(assert (=> d!1542817 (= lt!1968879 (insertNoDuplicatedKeys!714 (toList!7410 lt!1968599) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> d!1542817 (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968882)))

(declare-fun b!4819536 () Bool)

(declare-fun res!2050780 () Bool)

(assert (=> b!4819536 (=> (not res!2050780) (not e!3011182))))

(assert (=> b!4819536 (= res!2050780 (= (getValueByKey!2582 (toList!7410 lt!1968882) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (Some!13454 (_2!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun b!4819537 () Bool)

(declare-fun contains!18686 (List!54988 tuple2!58010) Bool)

(assert (=> b!4819537 (= e!3011182 (contains!18686 (toList!7410 lt!1968882) (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (= (and d!1542817 res!2050779) b!4819536))

(assert (= (and b!4819536 res!2050780) b!4819537))

(declare-fun m!5806566 () Bool)

(assert (=> d!1542817 m!5806566))

(declare-fun m!5806568 () Bool)

(assert (=> d!1542817 m!5806568))

(declare-fun m!5806570 () Bool)

(assert (=> d!1542817 m!5806570))

(declare-fun m!5806572 () Bool)

(assert (=> d!1542817 m!5806572))

(declare-fun m!5806574 () Bool)

(assert (=> b!4819536 m!5806574))

(declare-fun m!5806576 () Bool)

(assert (=> b!4819537 m!5806576))

(assert (=> b!4819294 d!1542817))

(declare-fun d!1542831 () Bool)

(declare-fun res!2050781 () Bool)

(declare-fun e!3011183 () Bool)

(assert (=> d!1542831 (=> res!2050781 e!3011183)))

(assert (=> d!1542831 (= res!2050781 ((_ is Nil!54864) (toList!7410 lt!1968765)))))

(assert (=> d!1542831 (= (forall!12536 (toList!7410 lt!1968765) lambda!235240) e!3011183)))

(declare-fun b!4819538 () Bool)

(declare-fun e!3011184 () Bool)

(assert (=> b!4819538 (= e!3011183 e!3011184)))

(declare-fun res!2050782 () Bool)

(assert (=> b!4819538 (=> (not res!2050782) (not e!3011184))))

(assert (=> b!4819538 (= res!2050782 (dynLambda!22180 lambda!235240 (h!61298 (toList!7410 lt!1968765))))))

(declare-fun b!4819539 () Bool)

(assert (=> b!4819539 (= e!3011184 (forall!12536 (t!362484 (toList!7410 lt!1968765)) lambda!235240))))

(assert (= (and d!1542831 (not res!2050781)) b!4819538))

(assert (= (and b!4819538 res!2050782) b!4819539))

(declare-fun b_lambda!188831 () Bool)

(assert (=> (not b_lambda!188831) (not b!4819538)))

(declare-fun m!5806578 () Bool)

(assert (=> b!4819538 m!5806578))

(declare-fun m!5806580 () Bool)

(assert (=> b!4819539 m!5806580))

(assert (=> b!4819294 d!1542831))

(declare-fun b!4819540 () Bool)

(declare-fun e!3011186 () List!54991)

(assert (=> b!4819540 (= e!3011186 (getKeysList!1144 (toList!7410 lt!1968760)))))

(declare-fun b!4819541 () Bool)

(assert (=> b!4819541 false))

(declare-fun lt!1968889 () Unit!142179)

(declare-fun lt!1968886 () Unit!142179)

(assert (=> b!4819541 (= lt!1968889 lt!1968886)))

(assert (=> b!4819541 (containsKey!4287 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> b!4819541 (= lt!1968886 (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun e!3011190 () Unit!142179)

(declare-fun Unit!142215 () Unit!142179)

(assert (=> b!4819541 (= e!3011190 Unit!142215)))

(declare-fun b!4819542 () Bool)

(declare-fun e!3011188 () Bool)

(assert (=> b!4819542 (= e!3011188 (contains!18685 (keys!20165 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun d!1542833 () Bool)

(declare-fun e!3011189 () Bool)

(assert (=> d!1542833 e!3011189))

(declare-fun res!2050783 () Bool)

(assert (=> d!1542833 (=> res!2050783 e!3011189)))

(declare-fun e!3011185 () Bool)

(assert (=> d!1542833 (= res!2050783 e!3011185)))

(declare-fun res!2050784 () Bool)

(assert (=> d!1542833 (=> (not res!2050784) (not e!3011185))))

(declare-fun lt!1968890 () Bool)

(assert (=> d!1542833 (= res!2050784 (not lt!1968890))))

(declare-fun lt!1968891 () Bool)

(assert (=> d!1542833 (= lt!1968890 lt!1968891)))

(declare-fun lt!1968887 () Unit!142179)

(declare-fun e!3011187 () Unit!142179)

(assert (=> d!1542833 (= lt!1968887 e!3011187)))

(declare-fun c!821344 () Bool)

(assert (=> d!1542833 (= c!821344 lt!1968891)))

(assert (=> d!1542833 (= lt!1968891 (containsKey!4287 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> d!1542833 (= (contains!18683 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lt!1968890)))

(declare-fun b!4819543 () Bool)

(assert (=> b!4819543 (= e!3011186 (keys!20165 lt!1968760))))

(declare-fun b!4819544 () Bool)

(declare-fun Unit!142216 () Unit!142179)

(assert (=> b!4819544 (= e!3011190 Unit!142216)))

(declare-fun b!4819545 () Bool)

(assert (=> b!4819545 (= e!3011187 e!3011190)))

(declare-fun c!821342 () Bool)

(declare-fun call!336078 () Bool)

(assert (=> b!4819545 (= c!821342 call!336078)))

(declare-fun b!4819546 () Bool)

(assert (=> b!4819546 (= e!3011185 (not (contains!18685 (keys!20165 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun b!4819547 () Bool)

(declare-fun lt!1968892 () Unit!142179)

(assert (=> b!4819547 (= e!3011187 lt!1968892)))

(declare-fun lt!1968888 () Unit!142179)

(assert (=> b!4819547 (= lt!1968888 (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819547 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968893 () Unit!142179)

(assert (=> b!4819547 (= lt!1968893 lt!1968888)))

(assert (=> b!4819547 (= lt!1968892 (lemmaInListThenGetKeysListContains!1139 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819547 call!336078))

(declare-fun bm!336073 () Bool)

(assert (=> bm!336073 (= call!336078 (contains!18685 e!3011186 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun c!821343 () Bool)

(assert (=> bm!336073 (= c!821343 c!821344)))

(declare-fun b!4819548 () Bool)

(assert (=> b!4819548 (= e!3011189 e!3011188)))

(declare-fun res!2050785 () Bool)

(assert (=> b!4819548 (=> (not res!2050785) (not e!3011188))))

(assert (=> b!4819548 (= res!2050785 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968760) (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(assert (= (and d!1542833 c!821344) b!4819547))

(assert (= (and d!1542833 (not c!821344)) b!4819545))

(assert (= (and b!4819545 c!821342) b!4819541))

(assert (= (and b!4819545 (not c!821342)) b!4819544))

(assert (= (or b!4819547 b!4819545) bm!336073))

(assert (= (and bm!336073 c!821343) b!4819540))

(assert (= (and bm!336073 (not c!821343)) b!4819543))

(assert (= (and d!1542833 res!2050784) b!4819546))

(assert (= (and d!1542833 (not res!2050783)) b!4819548))

(assert (= (and b!4819548 res!2050785) b!4819542))

(declare-fun m!5806586 () Bool)

(assert (=> b!4819542 m!5806586))

(assert (=> b!4819542 m!5806586))

(declare-fun m!5806588 () Bool)

(assert (=> b!4819542 m!5806588))

(assert (=> b!4819543 m!5806586))

(declare-fun m!5806590 () Bool)

(assert (=> b!4819548 m!5806590))

(assert (=> b!4819548 m!5806590))

(declare-fun m!5806592 () Bool)

(assert (=> b!4819548 m!5806592))

(assert (=> b!4819546 m!5806586))

(assert (=> b!4819546 m!5806586))

(assert (=> b!4819546 m!5806588))

(declare-fun m!5806594 () Bool)

(assert (=> bm!336073 m!5806594))

(declare-fun m!5806596 () Bool)

(assert (=> b!4819540 m!5806596))

(declare-fun m!5806598 () Bool)

(assert (=> b!4819547 m!5806598))

(assert (=> b!4819547 m!5806590))

(assert (=> b!4819547 m!5806590))

(assert (=> b!4819547 m!5806592))

(declare-fun m!5806600 () Bool)

(assert (=> b!4819547 m!5806600))

(declare-fun m!5806602 () Bool)

(assert (=> d!1542833 m!5806602))

(assert (=> b!4819541 m!5806602))

(declare-fun m!5806604 () Bool)

(assert (=> b!4819541 m!5806604))

(assert (=> b!4819294 d!1542833))

(declare-fun bs!1161253 () Bool)

(declare-fun b!4819554 () Bool)

(assert (= bs!1161253 (and b!4819554 b!4819294)))

(declare-fun lambda!235268 () Int)

(assert (=> bs!1161253 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968760) (= lambda!235268 lambda!235240))))

(declare-fun bs!1161254 () Bool)

(assert (= bs!1161254 (and b!4819554 b!4819293)))

(assert (=> bs!1161254 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968599) (= lambda!235268 lambda!235238))))

(assert (=> bs!1161253 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968599) (= lambda!235268 lambda!235239))))

(declare-fun bs!1161255 () Bool)

(assert (= bs!1161255 (and b!4819554 d!1542805)))

(assert (=> bs!1161255 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968760) (= lambda!235268 lambda!235261))))

(declare-fun bs!1161256 () Bool)

(assert (= bs!1161256 (and b!4819554 d!1542683)))

(assert (=> bs!1161256 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968770) (= lambda!235268 lambda!235241))))

(assert (=> b!4819554 true))

(declare-fun bs!1161257 () Bool)

(declare-fun b!4819555 () Bool)

(assert (= bs!1161257 (and b!4819555 b!4819294)))

(declare-fun lambda!235269 () Int)

(assert (=> bs!1161257 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968760) (= lambda!235269 lambda!235240))))

(declare-fun bs!1161258 () Bool)

(assert (= bs!1161258 (and b!4819555 b!4819293)))

(assert (=> bs!1161258 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968599) (= lambda!235269 lambda!235238))))

(declare-fun bs!1161259 () Bool)

(assert (= bs!1161259 (and b!4819555 b!4819554)))

(assert (=> bs!1161259 (= lambda!235269 lambda!235268)))

(assert (=> bs!1161257 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968599) (= lambda!235269 lambda!235239))))

(declare-fun bs!1161260 () Bool)

(assert (= bs!1161260 (and b!4819555 d!1542805)))

(assert (=> bs!1161260 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968760) (= lambda!235269 lambda!235261))))

(declare-fun bs!1161261 () Bool)

(assert (= bs!1161261 (and b!4819555 d!1542683)))

(assert (=> bs!1161261 (= (= (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968770) (= lambda!235269 lambda!235241))))

(assert (=> b!4819555 true))

(declare-fun lambda!235270 () Int)

(declare-fun lt!1968895 () ListMap!6809)

(assert (=> bs!1161257 (= (= lt!1968895 lt!1968760) (= lambda!235270 lambda!235240))))

(assert (=> bs!1161258 (= (= lt!1968895 lt!1968599) (= lambda!235270 lambda!235238))))

(assert (=> bs!1161259 (= (= lt!1968895 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235270 lambda!235268))))

(assert (=> b!4819555 (= (= lt!1968895 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235270 lambda!235269))))

(assert (=> bs!1161257 (= (= lt!1968895 lt!1968599) (= lambda!235270 lambda!235239))))

(assert (=> bs!1161260 (= (= lt!1968895 lt!1968760) (= lambda!235270 lambda!235261))))

(assert (=> bs!1161261 (= (= lt!1968895 lt!1968770) (= lambda!235270 lambda!235241))))

(assert (=> b!4819555 true))

(declare-fun bs!1161264 () Bool)

(declare-fun d!1542837 () Bool)

(assert (= bs!1161264 (and d!1542837 b!4819294)))

(declare-fun lt!1968905 () ListMap!6809)

(declare-fun lambda!235272 () Int)

(assert (=> bs!1161264 (= (= lt!1968905 lt!1968760) (= lambda!235272 lambda!235240))))

(declare-fun bs!1161266 () Bool)

(assert (= bs!1161266 (and d!1542837 b!4819293)))

(assert (=> bs!1161266 (= (= lt!1968905 lt!1968599) (= lambda!235272 lambda!235238))))

(declare-fun bs!1161267 () Bool)

(assert (= bs!1161267 (and d!1542837 b!4819555)))

(assert (=> bs!1161267 (= (= lt!1968905 lt!1968895) (= lambda!235272 lambda!235270))))

(declare-fun bs!1161268 () Bool)

(assert (= bs!1161268 (and d!1542837 b!4819554)))

(assert (=> bs!1161268 (= (= lt!1968905 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235272 lambda!235268))))

(assert (=> bs!1161267 (= (= lt!1968905 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235272 lambda!235269))))

(assert (=> bs!1161264 (= (= lt!1968905 lt!1968599) (= lambda!235272 lambda!235239))))

(declare-fun bs!1161269 () Bool)

(assert (= bs!1161269 (and d!1542837 d!1542805)))

(assert (=> bs!1161269 (= (= lt!1968905 lt!1968760) (= lambda!235272 lambda!235261))))

(declare-fun bs!1161270 () Bool)

(assert (= bs!1161270 (and d!1542837 d!1542683)))

(assert (=> bs!1161270 (= (= lt!1968905 lt!1968770) (= lambda!235272 lambda!235241))))

(assert (=> d!1542837 true))

(declare-fun b!4819553 () Bool)

(declare-fun res!2050791 () Bool)

(declare-fun e!3011196 () Bool)

(assert (=> b!4819553 (=> (not res!2050791) (not e!3011196))))

(assert (=> b!4819553 (= res!2050791 (forall!12536 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lambda!235272))))

(declare-fun bm!336074 () Bool)

(declare-fun call!336081 () Unit!142179)

(assert (=> bm!336074 (= call!336081 (lemmaContainsAllItsOwnKeys!978 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun e!3011197 () ListMap!6809)

(assert (=> b!4819554 (= e!3011197 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun lt!1968896 () Unit!142179)

(assert (=> b!4819554 (= lt!1968896 call!336081)))

(declare-fun call!336080 () Bool)

(assert (=> b!4819554 call!336080))

(declare-fun lt!1968912 () Unit!142179)

(assert (=> b!4819554 (= lt!1968912 lt!1968896)))

(declare-fun call!336079 () Bool)

(assert (=> b!4819554 call!336079))

(declare-fun lt!1968913 () Unit!142179)

(declare-fun Unit!142217 () Unit!142179)

(assert (=> b!4819554 (= lt!1968913 Unit!142217)))

(assert (=> b!4819555 (= e!3011197 lt!1968895)))

(declare-fun lt!1968900 () ListMap!6809)

(assert (=> b!4819555 (= lt!1968900 (+!2523 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819555 (= lt!1968895 (addToMapMapFromBucket!1776 (t!362484 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (+!2523 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun lt!1968894 () Unit!142179)

(assert (=> b!4819555 (= lt!1968894 call!336081)))

(assert (=> b!4819555 (forall!12536 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lambda!235269)))

(declare-fun lt!1968909 () Unit!142179)

(assert (=> b!4819555 (= lt!1968909 lt!1968894)))

(assert (=> b!4819555 (forall!12536 (toList!7410 lt!1968900) lambda!235270)))

(declare-fun lt!1968899 () Unit!142179)

(declare-fun Unit!142218 () Unit!142179)

(assert (=> b!4819555 (= lt!1968899 Unit!142218)))

(assert (=> b!4819555 (forall!12536 (t!362484 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lambda!235270)))

(declare-fun lt!1968902 () Unit!142179)

(declare-fun Unit!142219 () Unit!142179)

(assert (=> b!4819555 (= lt!1968902 Unit!142219)))

(declare-fun lt!1968914 () Unit!142179)

(declare-fun Unit!142220 () Unit!142179)

(assert (=> b!4819555 (= lt!1968914 Unit!142220)))

(declare-fun lt!1968904 () Unit!142179)

(assert (=> b!4819555 (= lt!1968904 (forallContained!4358 (toList!7410 lt!1968900) lambda!235270 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> b!4819555 (contains!18683 lt!1968900 (_1!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968901 () Unit!142179)

(declare-fun Unit!142221 () Unit!142179)

(assert (=> b!4819555 (= lt!1968901 Unit!142221)))

(assert (=> b!4819555 (contains!18683 lt!1968895 (_1!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun lt!1968906 () Unit!142179)

(declare-fun Unit!142222 () Unit!142179)

(assert (=> b!4819555 (= lt!1968906 Unit!142222)))

(assert (=> b!4819555 (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235270)))

(declare-fun lt!1968898 () Unit!142179)

(declare-fun Unit!142223 () Unit!142179)

(assert (=> b!4819555 (= lt!1968898 Unit!142223)))

(assert (=> b!4819555 (forall!12536 (toList!7410 lt!1968900) lambda!235270)))

(declare-fun lt!1968897 () Unit!142179)

(declare-fun Unit!142224 () Unit!142179)

(assert (=> b!4819555 (= lt!1968897 Unit!142224)))

(declare-fun lt!1968911 () Unit!142179)

(declare-fun Unit!142225 () Unit!142179)

(assert (=> b!4819555 (= lt!1968911 Unit!142225)))

(declare-fun lt!1968910 () Unit!142179)

(assert (=> b!4819555 (= lt!1968910 (addForallContainsKeyThenBeforeAdding!977 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968895 (_1!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (_2!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(assert (=> b!4819555 (forall!12536 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lambda!235270)))

(declare-fun lt!1968908 () Unit!142179)

(assert (=> b!4819555 (= lt!1968908 lt!1968910)))

(assert (=> b!4819555 call!336079))

(declare-fun lt!1968907 () Unit!142179)

(declare-fun Unit!142226 () Unit!142179)

(assert (=> b!4819555 (= lt!1968907 Unit!142226)))

(declare-fun res!2050790 () Bool)

(assert (=> b!4819555 (= res!2050790 call!336080)))

(declare-fun e!3011195 () Bool)

(assert (=> b!4819555 (=> (not res!2050790) (not e!3011195))))

(assert (=> b!4819555 e!3011195))

(declare-fun lt!1968903 () Unit!142179)

(declare-fun Unit!142227 () Unit!142179)

(assert (=> b!4819555 (= lt!1968903 Unit!142227)))

(assert (=> d!1542837 e!3011196))

(declare-fun res!2050792 () Bool)

(assert (=> d!1542837 (=> (not res!2050792) (not e!3011196))))

(assert (=> d!1542837 (= res!2050792 (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235272))))

(assert (=> d!1542837 (= lt!1968905 e!3011197)))

(declare-fun c!821345 () Bool)

(assert (=> d!1542837 (= c!821345 ((_ is Nil!54864) (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (=> d!1542837 (noDuplicateKeys!2425 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(assert (=> d!1542837 (= (addToMapMapFromBucket!1776 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lt!1968905)))

(declare-fun b!4819556 () Bool)

(assert (=> b!4819556 (= e!3011195 (forall!12536 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) lambda!235270))))

(declare-fun bm!336075 () Bool)

(assert (=> bm!336075 (= call!336079 (forall!12536 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (ite c!821345 lambda!235268 lambda!235270)))))

(declare-fun bm!336076 () Bool)

(assert (=> bm!336076 (= call!336080 (forall!12536 (ite c!821345 (toList!7410 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (ite c!821345 lambda!235268 lambda!235270)))))

(declare-fun b!4819557 () Bool)

(assert (=> b!4819557 (= e!3011196 (invariantList!1797 (toList!7410 lt!1968905)))))

(assert (= (and d!1542837 c!821345) b!4819554))

(assert (= (and d!1542837 (not c!821345)) b!4819555))

(assert (= (and b!4819555 res!2050790) b!4819556))

(assert (= (or b!4819554 b!4819555) bm!336076))

(assert (= (or b!4819554 b!4819555) bm!336075))

(assert (= (or b!4819554 b!4819555) bm!336074))

(assert (= (and d!1542837 res!2050792) b!4819553))

(assert (= (and b!4819553 res!2050791) b!4819557))

(declare-fun m!5806638 () Bool)

(assert (=> b!4819555 m!5806638))

(declare-fun m!5806640 () Bool)

(assert (=> b!4819555 m!5806640))

(declare-fun m!5806642 () Bool)

(assert (=> b!4819555 m!5806642))

(assert (=> b!4819555 m!5806304))

(declare-fun m!5806644 () Bool)

(assert (=> b!4819555 m!5806644))

(declare-fun m!5806646 () Bool)

(assert (=> b!4819555 m!5806646))

(assert (=> b!4819555 m!5806304))

(declare-fun m!5806648 () Bool)

(assert (=> b!4819555 m!5806648))

(assert (=> b!4819555 m!5806644))

(declare-fun m!5806650 () Bool)

(assert (=> b!4819555 m!5806650))

(declare-fun m!5806652 () Bool)

(assert (=> b!4819555 m!5806652))

(declare-fun m!5806654 () Bool)

(assert (=> b!4819555 m!5806654))

(declare-fun m!5806656 () Bool)

(assert (=> b!4819555 m!5806656))

(assert (=> b!4819555 m!5806656))

(declare-fun m!5806658 () Bool)

(assert (=> b!4819555 m!5806658))

(declare-fun m!5806660 () Bool)

(assert (=> b!4819557 m!5806660))

(declare-fun m!5806662 () Bool)

(assert (=> d!1542837 m!5806662))

(assert (=> d!1542837 m!5806474))

(assert (=> b!4819556 m!5806646))

(declare-fun m!5806664 () Bool)

(assert (=> bm!336075 m!5806664))

(declare-fun m!5806666 () Bool)

(assert (=> b!4819553 m!5806666))

(declare-fun m!5806668 () Bool)

(assert (=> bm!336076 m!5806668))

(assert (=> bm!336074 m!5806304))

(declare-fun m!5806670 () Bool)

(assert (=> bm!336074 m!5806670))

(assert (=> b!4819294 d!1542837))

(declare-fun d!1542847 () Bool)

(assert (=> d!1542847 (dynLambda!22180 lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun lt!1968946 () Unit!142179)

(declare-fun choose!34989 (List!54988 Int tuple2!58010) Unit!142179)

(assert (=> d!1542847 (= lt!1968946 (choose!34989 (toList!7410 lt!1968765) lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun e!3011215 () Bool)

(assert (=> d!1542847 e!3011215))

(declare-fun res!2050807 () Bool)

(assert (=> d!1542847 (=> (not res!2050807) (not e!3011215))))

(assert (=> d!1542847 (= res!2050807 (forall!12536 (toList!7410 lt!1968765) lambda!235240))))

(assert (=> d!1542847 (= (forallContained!4358 (toList!7410 lt!1968765) lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) lt!1968946)))

(declare-fun b!4819580 () Bool)

(assert (=> b!4819580 (= e!3011215 (contains!18686 (toList!7410 lt!1968765) (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(assert (= (and d!1542847 res!2050807) b!4819580))

(declare-fun b_lambda!188839 () Bool)

(assert (=> (not b_lambda!188839) (not d!1542847)))

(declare-fun m!5806702 () Bool)

(assert (=> d!1542847 m!5806702))

(declare-fun m!5806704 () Bool)

(assert (=> d!1542847 m!5806704))

(assert (=> d!1542847 m!5806316))

(declare-fun m!5806706 () Bool)

(assert (=> b!4819580 m!5806706))

(assert (=> b!4819294 d!1542847))

(declare-fun d!1542851 () Bool)

(declare-fun res!2050808 () Bool)

(declare-fun e!3011216 () Bool)

(assert (=> d!1542851 (=> res!2050808 e!3011216)))

(assert (=> d!1542851 (= res!2050808 ((_ is Nil!54864) (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(assert (=> d!1542851 (= (forall!12536 (_2!32300 (h!61299 (toList!7409 lm!2280))) lambda!235240) e!3011216)))

(declare-fun b!4819581 () Bool)

(declare-fun e!3011217 () Bool)

(assert (=> b!4819581 (= e!3011216 e!3011217)))

(declare-fun res!2050809 () Bool)

(assert (=> b!4819581 (=> (not res!2050809) (not e!3011217))))

(assert (=> b!4819581 (= res!2050809 (dynLambda!22180 lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun b!4819582 () Bool)

(assert (=> b!4819582 (= e!3011217 (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235240))))

(assert (= (and d!1542851 (not res!2050808)) b!4819581))

(assert (= (and b!4819581 res!2050809) b!4819582))

(declare-fun b_lambda!188841 () Bool)

(assert (=> (not b_lambda!188841) (not b!4819581)))

(assert (=> b!4819581 m!5806702))

(assert (=> b!4819582 m!5806300))

(assert (=> b!4819294 d!1542851))

(assert (=> b!4819295 d!1542815))

(declare-fun d!1542853 () Bool)

(declare-fun res!2050810 () Bool)

(declare-fun e!3011218 () Bool)

(assert (=> d!1542853 (=> res!2050810 e!3011218)))

(assert (=> d!1542853 (= res!2050810 (and ((_ is Cons!54864) (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))))) (= (_1!32299 (h!61298 (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280))))))) key!5428)))))

(assert (=> d!1542853 (= (containsKey!4284 (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280))))) key!5428) e!3011218)))

(declare-fun b!4819583 () Bool)

(declare-fun e!3011219 () Bool)

(assert (=> b!4819583 (= e!3011218 e!3011219)))

(declare-fun res!2050811 () Bool)

(assert (=> b!4819583 (=> (not res!2050811) (not e!3011219))))

(assert (=> b!4819583 (= res!2050811 ((_ is Cons!54864) (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun b!4819584 () Bool)

(assert (=> b!4819584 (= e!3011219 (containsKey!4284 (t!362484 (t!362484 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))))) key!5428))))

(assert (= (and d!1542853 (not res!2050810)) b!4819583))

(assert (= (and b!4819583 res!2050811) b!4819584))

(declare-fun m!5806708 () Bool)

(assert (=> b!4819584 m!5806708))

(assert (=> b!4819304 d!1542853))

(declare-fun d!1542855 () Bool)

(declare-fun noDuplicatedKeys!465 (List!54988) Bool)

(assert (=> d!1542855 (= (invariantList!1797 (toList!7410 lt!1968812)) (noDuplicatedKeys!465 (toList!7410 lt!1968812)))))

(declare-fun bs!1161280 () Bool)

(assert (= bs!1161280 d!1542855))

(declare-fun m!5806710 () Bool)

(assert (=> bs!1161280 m!5806710))

(assert (=> d!1542729 d!1542855))

(declare-fun d!1542857 () Bool)

(declare-fun res!2050812 () Bool)

(declare-fun e!3011220 () Bool)

(assert (=> d!1542857 (=> res!2050812 e!3011220)))

(assert (=> d!1542857 (= res!2050812 ((_ is Nil!54865) (t!362485 (toList!7409 lm!2280))))))

(assert (=> d!1542857 (= (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235247) e!3011220)))

(declare-fun b!4819585 () Bool)

(declare-fun e!3011222 () Bool)

(assert (=> b!4819585 (= e!3011220 e!3011222)))

(declare-fun res!2050813 () Bool)

(assert (=> b!4819585 (=> (not res!2050813) (not e!3011222))))

(assert (=> b!4819585 (= res!2050813 (dynLambda!22179 lambda!235247 (h!61299 (t!362485 (toList!7409 lm!2280)))))))

(declare-fun b!4819586 () Bool)

(assert (=> b!4819586 (= e!3011222 (forall!12534 (t!362485 (t!362485 (toList!7409 lm!2280))) lambda!235247))))

(assert (= (and d!1542857 (not res!2050812)) b!4819585))

(assert (= (and b!4819585 res!2050813) b!4819586))

(declare-fun b_lambda!188843 () Bool)

(assert (=> (not b_lambda!188843) (not b!4819585)))

(declare-fun m!5806712 () Bool)

(assert (=> b!4819585 m!5806712))

(declare-fun m!5806714 () Bool)

(assert (=> b!4819586 m!5806714))

(assert (=> d!1542729 d!1542857))

(declare-fun bs!1161281 () Bool)

(declare-fun b!4819590 () Bool)

(assert (= bs!1161281 (and b!4819590 b!4819391)))

(declare-fun lambda!235276 () Int)

(assert (=> bs!1161281 (= (= (toList!7410 lt!1968599) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235276 lambda!235255))))

(assert (=> b!4819590 true))

(declare-fun bs!1161282 () Bool)

(declare-fun b!4819591 () Bool)

(assert (= bs!1161282 (and b!4819591 b!4819392)))

(declare-fun lambda!235277 () Int)

(assert (=> bs!1161282 (= lambda!235277 lambda!235256)))

(declare-fun d!1542859 () Bool)

(declare-fun e!3011224 () Bool)

(assert (=> d!1542859 e!3011224))

(declare-fun res!2050818 () Bool)

(assert (=> d!1542859 (=> (not res!2050818) (not e!3011224))))

(declare-fun lt!1968949 () List!54991)

(assert (=> d!1542859 (= res!2050818 (noDuplicate!947 lt!1968949))))

(assert (=> d!1542859 (= lt!1968949 (getKeysList!1144 (toList!7410 lt!1968599)))))

(assert (=> d!1542859 (= (keys!20165 lt!1968599) lt!1968949)))

(declare-fun b!4819589 () Bool)

(declare-fun res!2050817 () Bool)

(assert (=> b!4819589 (=> (not res!2050817) (not e!3011224))))

(assert (=> b!4819589 (= res!2050817 (= (length!750 lt!1968949) (length!751 (toList!7410 lt!1968599))))))

(declare-fun res!2050816 () Bool)

(assert (=> b!4819590 (=> (not res!2050816) (not e!3011224))))

(assert (=> b!4819590 (= res!2050816 (forall!12537 lt!1968949 lambda!235276))))

(assert (=> b!4819591 (= e!3011224 (= (content!9806 lt!1968949) (content!9806 (map!12543 (toList!7410 lt!1968599) lambda!235277))))))

(assert (= (and d!1542859 res!2050818) b!4819589))

(assert (= (and b!4819589 res!2050817) b!4819590))

(assert (= (and b!4819590 res!2050816) b!4819591))

(declare-fun m!5806722 () Bool)

(assert (=> d!1542859 m!5806722))

(assert (=> d!1542859 m!5806398))

(declare-fun m!5806724 () Bool)

(assert (=> b!4819589 m!5806724))

(declare-fun m!5806726 () Bool)

(assert (=> b!4819589 m!5806726))

(declare-fun m!5806728 () Bool)

(assert (=> b!4819590 m!5806728))

(declare-fun m!5806730 () Bool)

(assert (=> b!4819591 m!5806730))

(declare-fun m!5806732 () Bool)

(assert (=> b!4819591 m!5806732))

(assert (=> b!4819591 m!5806732))

(declare-fun m!5806734 () Bool)

(assert (=> b!4819591 m!5806734))

(assert (=> b!4819356 d!1542859))

(declare-fun d!1542863 () Bool)

(declare-fun isEmpty!29624 (Option!13454) Bool)

(assert (=> d!1542863 (= (isDefined!10571 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597)) (not (isEmpty!29624 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597))))))

(declare-fun bs!1161283 () Bool)

(assert (= bs!1161283 d!1542863))

(assert (=> bs!1161283 m!5806384))

(declare-fun m!5806736 () Bool)

(assert (=> bs!1161283 m!5806736))

(assert (=> b!4819370 d!1542863))

(declare-fun b!4819593 () Bool)

(declare-fun e!3011226 () Option!13454)

(assert (=> b!4819593 (= e!3011226 (Some!13453 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(declare-fun b!4819595 () Bool)

(declare-fun e!3011227 () Option!13454)

(assert (=> b!4819595 (= e!3011227 (getValueByKey!2581 (t!362485 (toList!7409 lm!2280)) lt!1968597))))

(declare-fun b!4819594 () Bool)

(assert (=> b!4819594 (= e!3011226 e!3011227)))

(declare-fun c!821351 () Bool)

(assert (=> b!4819594 (= c!821351 (and ((_ is Cons!54865) (toList!7409 lm!2280)) (not (= (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597))))))

(declare-fun d!1542865 () Bool)

(declare-fun c!821350 () Bool)

(assert (=> d!1542865 (= c!821350 (and ((_ is Cons!54865) (toList!7409 lm!2280)) (= (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597)))))

(assert (=> d!1542865 (= (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597) e!3011226)))

(declare-fun b!4819596 () Bool)

(assert (=> b!4819596 (= e!3011227 None!13453)))

(assert (= (and d!1542865 c!821350) b!4819593))

(assert (= (and d!1542865 (not c!821350)) b!4819594))

(assert (= (and b!4819594 c!821351) b!4819595))

(assert (= (and b!4819594 (not c!821351)) b!4819596))

(declare-fun m!5806738 () Bool)

(assert (=> b!4819595 m!5806738))

(assert (=> b!4819370 d!1542865))

(declare-fun d!1542867 () Bool)

(declare-fun res!2050820 () Bool)

(declare-fun e!3011228 () Bool)

(assert (=> d!1542867 (=> res!2050820 e!3011228)))

(assert (=> d!1542867 (= res!2050820 ((_ is Nil!54864) (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(assert (=> d!1542867 (= (forall!12536 (_2!32300 (h!61299 (toList!7409 lm!2280))) lambda!235241) e!3011228)))

(declare-fun b!4819597 () Bool)

(declare-fun e!3011229 () Bool)

(assert (=> b!4819597 (= e!3011228 e!3011229)))

(declare-fun res!2050821 () Bool)

(assert (=> b!4819597 (=> (not res!2050821) (not e!3011229))))

(assert (=> b!4819597 (= res!2050821 (dynLambda!22180 lambda!235241 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun b!4819598 () Bool)

(assert (=> b!4819598 (= e!3011229 (forall!12536 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) lambda!235241))))

(assert (= (and d!1542867 (not res!2050820)) b!4819597))

(assert (= (and b!4819597 res!2050821) b!4819598))

(declare-fun b_lambda!188847 () Bool)

(assert (=> (not b_lambda!188847) (not b!4819597)))

(declare-fun m!5806740 () Bool)

(assert (=> b!4819597 m!5806740))

(declare-fun m!5806742 () Bool)

(assert (=> b!4819598 m!5806742))

(assert (=> d!1542683 d!1542867))

(assert (=> d!1542683 d!1542783))

(declare-fun d!1542869 () Bool)

(declare-fun lt!1968951 () Bool)

(assert (=> d!1542869 (= lt!1968951 (select (content!9806 e!3011038) key!5428))))

(declare-fun e!3011231 () Bool)

(assert (=> d!1542869 (= lt!1968951 e!3011231)))

(declare-fun res!2050822 () Bool)

(assert (=> d!1542869 (=> (not res!2050822) (not e!3011231))))

(assert (=> d!1542869 (= res!2050822 ((_ is Cons!54867) e!3011038))))

(assert (=> d!1542869 (= (contains!18685 e!3011038 key!5428) lt!1968951)))

(declare-fun b!4819599 () Bool)

(declare-fun e!3011230 () Bool)

(assert (=> b!4819599 (= e!3011231 e!3011230)))

(declare-fun res!2050823 () Bool)

(assert (=> b!4819599 (=> res!2050823 e!3011230)))

(assert (=> b!4819599 (= res!2050823 (= (h!61301 e!3011038) key!5428))))

(declare-fun b!4819600 () Bool)

(assert (=> b!4819600 (= e!3011230 (contains!18685 (t!362487 e!3011038) key!5428))))

(assert (= (and d!1542869 res!2050822) b!4819599))

(assert (= (and b!4819599 (not res!2050823)) b!4819600))

(declare-fun m!5806744 () Bool)

(assert (=> d!1542869 m!5806744))

(declare-fun m!5806746 () Bool)

(assert (=> d!1542869 m!5806746))

(declare-fun m!5806748 () Bool)

(assert (=> b!4819600 m!5806748))

(assert (=> bm!336070 d!1542869))

(declare-fun bs!1161291 () Bool)

(declare-fun b!4819642 () Bool)

(assert (= bs!1161291 (and b!4819642 b!4819391)))

(declare-fun lambda!235291 () Int)

(assert (=> bs!1161291 (= (= (t!362484 (toList!7410 lt!1968599)) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235291 lambda!235255))))

(declare-fun bs!1161292 () Bool)

(assert (= bs!1161292 (and b!4819642 b!4819590)))

(assert (=> bs!1161292 (= (= (t!362484 (toList!7410 lt!1968599)) (toList!7410 lt!1968599)) (= lambda!235291 lambda!235276))))

(assert (=> b!4819642 true))

(declare-fun bs!1161293 () Bool)

(declare-fun b!4819643 () Bool)

(assert (= bs!1161293 (and b!4819643 b!4819391)))

(declare-fun lambda!235292 () Int)

(assert (=> bs!1161293 (= (= (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599))) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235292 lambda!235255))))

(declare-fun bs!1161294 () Bool)

(assert (= bs!1161294 (and b!4819643 b!4819590)))

(assert (=> bs!1161294 (= (= (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599))) (toList!7410 lt!1968599)) (= lambda!235292 lambda!235276))))

(declare-fun bs!1161295 () Bool)

(assert (= bs!1161295 (and b!4819643 b!4819642)))

(assert (=> bs!1161295 (= (= (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599))) (t!362484 (toList!7410 lt!1968599))) (= lambda!235292 lambda!235291))))

(assert (=> b!4819643 true))

(declare-fun bs!1161296 () Bool)

(declare-fun b!4819645 () Bool)

(assert (= bs!1161296 (and b!4819645 b!4819391)))

(declare-fun lambda!235293 () Int)

(assert (=> bs!1161296 (= (= (toList!7410 lt!1968599) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235293 lambda!235255))))

(declare-fun bs!1161297 () Bool)

(assert (= bs!1161297 (and b!4819645 b!4819590)))

(assert (=> bs!1161297 (= lambda!235293 lambda!235276)))

(declare-fun bs!1161298 () Bool)

(assert (= bs!1161298 (and b!4819645 b!4819642)))

(assert (=> bs!1161298 (= (= (toList!7410 lt!1968599) (t!362484 (toList!7410 lt!1968599))) (= lambda!235293 lambda!235291))))

(declare-fun bs!1161299 () Bool)

(assert (= bs!1161299 (and b!4819645 b!4819643)))

(assert (=> bs!1161299 (= (= (toList!7410 lt!1968599) (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599)))) (= lambda!235293 lambda!235292))))

(assert (=> b!4819645 true))

(declare-fun bs!1161300 () Bool)

(declare-fun b!4819644 () Bool)

(assert (= bs!1161300 (and b!4819644 b!4819392)))

(declare-fun lambda!235294 () Int)

(assert (=> bs!1161300 (= lambda!235294 lambda!235256)))

(declare-fun bs!1161301 () Bool)

(assert (= bs!1161301 (and b!4819644 b!4819591)))

(assert (=> bs!1161301 (= lambda!235294 lambda!235277)))

(declare-fun b!4819639 () Bool)

(declare-fun e!3011254 () Unit!142179)

(declare-fun Unit!142237 () Unit!142179)

(assert (=> b!4819639 (= e!3011254 Unit!142237)))

(declare-fun b!4819640 () Bool)

(assert (=> b!4819640 false))

(declare-fun e!3011255 () Unit!142179)

(declare-fun Unit!142239 () Unit!142179)

(assert (=> b!4819640 (= e!3011255 Unit!142239)))

(declare-fun b!4819641 () Bool)

(declare-fun e!3011253 () List!54991)

(assert (=> b!4819641 (= e!3011253 Nil!54867)))

(assert (=> b!4819642 false))

(declare-fun lt!1968992 () Unit!142179)

(declare-fun forallContained!4359 (List!54991 Int K!16539) Unit!142179)

(assert (=> b!4819642 (= lt!1968992 (forallContained!4359 (getKeysList!1144 (t!362484 (toList!7410 lt!1968599))) lambda!235291 (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun Unit!142240 () Unit!142179)

(assert (=> b!4819642 (= e!3011254 Unit!142240)))

(declare-fun e!3011256 () Bool)

(declare-fun lt!1968993 () List!54991)

(assert (=> b!4819644 (= e!3011256 (= (content!9806 lt!1968993) (content!9806 (map!12543 (toList!7410 lt!1968599) lambda!235294))))))

(declare-fun res!2050843 () Bool)

(assert (=> b!4819645 (=> (not res!2050843) (not e!3011256))))

(assert (=> b!4819645 (= res!2050843 (forall!12537 lt!1968993 lambda!235293))))

(declare-fun b!4819646 () Bool)

(declare-fun res!2050845 () Bool)

(assert (=> b!4819646 (=> (not res!2050845) (not e!3011256))))

(assert (=> b!4819646 (= res!2050845 (= (length!750 lt!1968993) (length!751 (toList!7410 lt!1968599))))))

(declare-fun b!4819647 () Bool)

(declare-fun Unit!142242 () Unit!142179)

(assert (=> b!4819647 (= e!3011255 Unit!142242)))

(declare-fun d!1542871 () Bool)

(assert (=> d!1542871 e!3011256))

(declare-fun res!2050844 () Bool)

(assert (=> d!1542871 (=> (not res!2050844) (not e!3011256))))

(assert (=> d!1542871 (= res!2050844 (noDuplicate!947 lt!1968993))))

(assert (=> d!1542871 (= lt!1968993 e!3011253)))

(declare-fun c!821362 () Bool)

(assert (=> d!1542871 (= c!821362 ((_ is Cons!54864) (toList!7410 lt!1968599)))))

(assert (=> d!1542871 (invariantList!1797 (toList!7410 lt!1968599))))

(assert (=> d!1542871 (= (getKeysList!1144 (toList!7410 lt!1968599)) lt!1968993)))

(assert (=> b!4819643 (= e!3011253 (Cons!54867 (_1!32299 (h!61298 (toList!7410 lt!1968599))) (getKeysList!1144 (t!362484 (toList!7410 lt!1968599)))))))

(declare-fun c!821361 () Bool)

(assert (=> b!4819643 (= c!821361 (containsKey!4287 (t!362484 (toList!7410 lt!1968599)) (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun lt!1968989 () Unit!142179)

(assert (=> b!4819643 (= lt!1968989 e!3011255)))

(declare-fun c!821363 () Bool)

(assert (=> b!4819643 (= c!821363 (contains!18685 (getKeysList!1144 (t!362484 (toList!7410 lt!1968599))) (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun lt!1968994 () Unit!142179)

(assert (=> b!4819643 (= lt!1968994 e!3011254)))

(declare-fun lt!1968991 () List!54991)

(assert (=> b!4819643 (= lt!1968991 (getKeysList!1144 (t!362484 (toList!7410 lt!1968599))))))

(declare-fun lt!1968995 () Unit!142179)

(declare-fun lemmaForallContainsAddHeadPreserves!362 (List!54988 List!54991 tuple2!58010) Unit!142179)

(assert (=> b!4819643 (= lt!1968995 (lemmaForallContainsAddHeadPreserves!362 (t!362484 (toList!7410 lt!1968599)) lt!1968991 (h!61298 (toList!7410 lt!1968599))))))

(assert (=> b!4819643 (forall!12537 lt!1968991 lambda!235292)))

(declare-fun lt!1968990 () Unit!142179)

(assert (=> b!4819643 (= lt!1968990 lt!1968995)))

(assert (= (and d!1542871 c!821362) b!4819643))

(assert (= (and d!1542871 (not c!821362)) b!4819641))

(assert (= (and b!4819643 c!821361) b!4819640))

(assert (= (and b!4819643 (not c!821361)) b!4819647))

(assert (= (and b!4819643 c!821363) b!4819642))

(assert (= (and b!4819643 (not c!821363)) b!4819639))

(assert (= (and d!1542871 res!2050844) b!4819646))

(assert (= (and b!4819646 res!2050845) b!4819645))

(assert (= (and b!4819645 res!2050843) b!4819644))

(declare-fun m!5806796 () Bool)

(assert (=> b!4819643 m!5806796))

(declare-fun m!5806798 () Bool)

(assert (=> b!4819643 m!5806798))

(declare-fun m!5806800 () Bool)

(assert (=> b!4819643 m!5806800))

(declare-fun m!5806802 () Bool)

(assert (=> b!4819643 m!5806802))

(assert (=> b!4819643 m!5806802))

(declare-fun m!5806804 () Bool)

(assert (=> b!4819643 m!5806804))

(declare-fun m!5806806 () Bool)

(assert (=> b!4819646 m!5806806))

(assert (=> b!4819646 m!5806726))

(assert (=> b!4819642 m!5806802))

(assert (=> b!4819642 m!5806802))

(declare-fun m!5806808 () Bool)

(assert (=> b!4819642 m!5806808))

(declare-fun m!5806810 () Bool)

(assert (=> d!1542871 m!5806810))

(declare-fun m!5806812 () Bool)

(assert (=> d!1542871 m!5806812))

(declare-fun m!5806814 () Bool)

(assert (=> b!4819645 m!5806814))

(declare-fun m!5806816 () Bool)

(assert (=> b!4819644 m!5806816))

(declare-fun m!5806818 () Bool)

(assert (=> b!4819644 m!5806818))

(assert (=> b!4819644 m!5806818))

(declare-fun m!5806820 () Bool)

(assert (=> b!4819644 m!5806820))

(assert (=> b!4819353 d!1542871))

(declare-fun d!1542885 () Bool)

(assert (=> d!1542885 (= (invariantList!1797 (toList!7410 lt!1968770)) (noDuplicatedKeys!465 (toList!7410 lt!1968770)))))

(declare-fun bs!1161302 () Bool)

(assert (= bs!1161302 d!1542885))

(declare-fun m!5806822 () Bool)

(assert (=> bs!1161302 m!5806822))

(assert (=> b!4819296 d!1542885))

(assert (=> b!4819333 d!1542791))

(assert (=> b!4819333 d!1542795))

(assert (=> b!4819354 d!1542779))

(declare-fun d!1542887 () Bool)

(assert (=> d!1542887 (containsKey!4287 (toList!7410 lt!1968599) key!5428)))

(declare-fun lt!1968998 () Unit!142179)

(declare-fun choose!34990 (List!54988 K!16539) Unit!142179)

(assert (=> d!1542887 (= lt!1968998 (choose!34990 (toList!7410 lt!1968599) key!5428))))

(assert (=> d!1542887 (invariantList!1797 (toList!7410 lt!1968599))))

(assert (=> d!1542887 (= (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 lt!1968599) key!5428) lt!1968998)))

(declare-fun bs!1161303 () Bool)

(assert (= bs!1161303 d!1542887))

(assert (=> bs!1161303 m!5806404))

(declare-fun m!5806824 () Bool)

(assert (=> bs!1161303 m!5806824))

(assert (=> bs!1161303 m!5806812))

(assert (=> b!4819354 d!1542887))

(declare-fun d!1542889 () Bool)

(declare-fun res!2050846 () Bool)

(declare-fun e!3011257 () Bool)

(assert (=> d!1542889 (=> res!2050846 e!3011257)))

(assert (=> d!1542889 (= res!2050846 ((_ is Nil!54865) (toList!7409 lm!2280)))))

(assert (=> d!1542889 (= (forall!12534 (toList!7409 lm!2280) lambda!235250) e!3011257)))

(declare-fun b!4819650 () Bool)

(declare-fun e!3011258 () Bool)

(assert (=> b!4819650 (= e!3011257 e!3011258)))

(declare-fun res!2050847 () Bool)

(assert (=> b!4819650 (=> (not res!2050847) (not e!3011258))))

(assert (=> b!4819650 (= res!2050847 (dynLambda!22179 lambda!235250 (h!61299 (toList!7409 lm!2280))))))

(declare-fun b!4819651 () Bool)

(assert (=> b!4819651 (= e!3011258 (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235250))))

(assert (= (and d!1542889 (not res!2050846)) b!4819650))

(assert (= (and b!4819650 res!2050847) b!4819651))

(declare-fun b_lambda!188851 () Bool)

(assert (=> (not b_lambda!188851) (not b!4819650)))

(declare-fun m!5806826 () Bool)

(assert (=> b!4819650 m!5806826))

(declare-fun m!5806828 () Bool)

(assert (=> b!4819651 m!5806828))

(assert (=> d!1542737 d!1542889))

(declare-fun d!1542891 () Bool)

(declare-fun lt!1968999 () Bool)

(assert (=> d!1542891 (= lt!1968999 (select (content!9806 (keys!20165 lt!1968599)) key!5428))))

(declare-fun e!3011260 () Bool)

(assert (=> d!1542891 (= lt!1968999 e!3011260)))

(declare-fun res!2050848 () Bool)

(assert (=> d!1542891 (=> (not res!2050848) (not e!3011260))))

(assert (=> d!1542891 (= res!2050848 ((_ is Cons!54867) (keys!20165 lt!1968599)))))

(assert (=> d!1542891 (= (contains!18685 (keys!20165 lt!1968599) key!5428) lt!1968999)))

(declare-fun b!4819652 () Bool)

(declare-fun e!3011259 () Bool)

(assert (=> b!4819652 (= e!3011260 e!3011259)))

(declare-fun res!2050849 () Bool)

(assert (=> b!4819652 (=> res!2050849 e!3011259)))

(assert (=> b!4819652 (= res!2050849 (= (h!61301 (keys!20165 lt!1968599)) key!5428))))

(declare-fun b!4819653 () Bool)

(assert (=> b!4819653 (= e!3011259 (contains!18685 (t!362487 (keys!20165 lt!1968599)) key!5428))))

(assert (= (and d!1542891 res!2050848) b!4819652))

(assert (= (and b!4819652 (not res!2050849)) b!4819653))

(assert (=> d!1542891 m!5806388))

(declare-fun m!5806830 () Bool)

(assert (=> d!1542891 m!5806830))

(declare-fun m!5806832 () Bool)

(assert (=> d!1542891 m!5806832))

(declare-fun m!5806834 () Bool)

(assert (=> b!4819653 m!5806834))

(assert (=> b!4819355 d!1542891))

(assert (=> b!4819355 d!1542859))

(declare-fun d!1542893 () Bool)

(assert (=> d!1542893 (isDefined!10571 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597))))

(declare-fun lt!1969002 () Unit!142179)

(declare-fun choose!34992 (List!54989 (_ BitVec 64)) Unit!142179)

(assert (=> d!1542893 (= lt!1969002 (choose!34992 (toList!7409 lm!2280) lt!1968597))))

(declare-fun e!3011263 () Bool)

(assert (=> d!1542893 e!3011263))

(declare-fun res!2050852 () Bool)

(assert (=> d!1542893 (=> (not res!2050852) (not e!3011263))))

(assert (=> d!1542893 (= res!2050852 (isStrictlySorted!961 (toList!7409 lm!2280)))))

(assert (=> d!1542893 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2368 (toList!7409 lm!2280) lt!1968597) lt!1969002)))

(declare-fun b!4819656 () Bool)

(assert (=> b!4819656 (= e!3011263 (containsKey!4288 (toList!7409 lm!2280) lt!1968597))))

(assert (= (and d!1542893 res!2050852) b!4819656))

(assert (=> d!1542893 m!5806384))

(assert (=> d!1542893 m!5806384))

(assert (=> d!1542893 m!5806412))

(declare-fun m!5806836 () Bool)

(assert (=> d!1542893 m!5806836))

(assert (=> d!1542893 m!5806378))

(assert (=> b!4819656 m!5806408))

(assert (=> b!4819368 d!1542893))

(assert (=> b!4819368 d!1542863))

(assert (=> b!4819368 d!1542865))

(assert (=> d!1542727 d!1542683))

(assert (=> d!1542727 d!1542721))

(declare-fun e!3011274 () Bool)

(declare-fun d!1542895 () Bool)

(assert (=> d!1542895 (= (contains!18683 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599) key!5428) e!3011274)))

(declare-fun res!2050861 () Bool)

(assert (=> d!1542895 (=> res!2050861 e!3011274)))

(assert (=> d!1542895 (= res!2050861 (containsKey!4284 (_2!32300 (h!61299 (toList!7409 lm!2280))) key!5428))))

(assert (=> d!1542895 true))

(declare-fun _$29!775 () Unit!142179)

(assert (=> d!1542895 (= (choose!34981 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599 key!5428) _$29!775)))

(declare-fun b!4819677 () Bool)

(assert (=> b!4819677 (= e!3011274 (contains!18683 lt!1968599 key!5428))))

(assert (= (and d!1542895 (not res!2050861)) b!4819677))

(assert (=> d!1542895 m!5806162))

(assert (=> d!1542895 m!5806162))

(assert (=> d!1542895 m!5806164))

(assert (=> d!1542895 m!5806168))

(assert (=> b!4819677 m!5806174))

(assert (=> d!1542727 d!1542895))

(assert (=> d!1542727 d!1542783))

(assert (=> d!1542727 d!1542725))

(declare-fun d!1542897 () Bool)

(declare-fun lt!1969017 () Bool)

(assert (=> d!1542897 (= lt!1969017 (select (content!9806 e!3011058) key!5428))))

(declare-fun e!3011276 () Bool)

(assert (=> d!1542897 (= lt!1969017 e!3011276)))

(declare-fun res!2050862 () Bool)

(assert (=> d!1542897 (=> (not res!2050862) (not e!3011276))))

(assert (=> d!1542897 (= res!2050862 ((_ is Cons!54867) e!3011058))))

(assert (=> d!1542897 (= (contains!18685 e!3011058 key!5428) lt!1969017)))

(declare-fun b!4819678 () Bool)

(declare-fun e!3011275 () Bool)

(assert (=> b!4819678 (= e!3011276 e!3011275)))

(declare-fun res!2050863 () Bool)

(assert (=> b!4819678 (=> res!2050863 e!3011275)))

(assert (=> b!4819678 (= res!2050863 (= (h!61301 e!3011058) key!5428))))

(declare-fun b!4819679 () Bool)

(assert (=> b!4819679 (= e!3011275 (contains!18685 (t!362487 e!3011058) key!5428))))

(assert (= (and d!1542897 res!2050862) b!4819678))

(assert (= (and b!4819678 (not res!2050863)) b!4819679))

(declare-fun m!5806838 () Bool)

(assert (=> d!1542897 m!5806838))

(declare-fun m!5806840 () Bool)

(assert (=> d!1542897 m!5806840))

(declare-fun m!5806842 () Bool)

(assert (=> b!4819679 m!5806842))

(assert (=> bm!336071 d!1542897))

(declare-fun d!1542899 () Bool)

(assert (=> d!1542899 (= (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968599) key!5428)) (not (isEmpty!29622 (getValueByKey!2582 (toList!7410 lt!1968599) key!5428))))))

(declare-fun bs!1161304 () Bool)

(assert (= bs!1161304 d!1542899))

(assert (=> bs!1161304 m!5806392))

(declare-fun m!5806844 () Bool)

(assert (=> bs!1161304 m!5806844))

(assert (=> b!4819361 d!1542899))

(declare-fun d!1542901 () Bool)

(declare-fun c!821370 () Bool)

(assert (=> d!1542901 (= c!821370 (and ((_ is Cons!54864) (toList!7410 lt!1968599)) (= (_1!32299 (h!61298 (toList!7410 lt!1968599))) key!5428)))))

(declare-fun e!3011277 () Option!13455)

(assert (=> d!1542901 (= (getValueByKey!2582 (toList!7410 lt!1968599) key!5428) e!3011277)))

(declare-fun b!4819683 () Bool)

(declare-fun e!3011278 () Option!13455)

(assert (=> b!4819683 (= e!3011278 None!13454)))

(declare-fun b!4819680 () Bool)

(assert (=> b!4819680 (= e!3011277 (Some!13454 (_2!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun b!4819681 () Bool)

(assert (=> b!4819681 (= e!3011277 e!3011278)))

(declare-fun c!821371 () Bool)

(assert (=> b!4819681 (= c!821371 (and ((_ is Cons!54864) (toList!7410 lt!1968599)) (not (= (_1!32299 (h!61298 (toList!7410 lt!1968599))) key!5428))))))

(declare-fun b!4819682 () Bool)

(assert (=> b!4819682 (= e!3011278 (getValueByKey!2582 (t!362484 (toList!7410 lt!1968599)) key!5428))))

(assert (= (and d!1542901 c!821370) b!4819680))

(assert (= (and d!1542901 (not c!821370)) b!4819681))

(assert (= (and b!4819681 c!821371) b!4819682))

(assert (= (and b!4819681 (not c!821371)) b!4819683))

(declare-fun m!5806846 () Bool)

(assert (=> b!4819682 m!5806846))

(assert (=> b!4819361 d!1542901))

(declare-fun d!1542903 () Bool)

(declare-fun res!2050864 () Bool)

(declare-fun e!3011279 () Bool)

(assert (=> d!1542903 (=> res!2050864 e!3011279)))

(assert (=> d!1542903 (= res!2050864 (and ((_ is Cons!54864) (t!362484 (apply!13307 lm!2280 lt!1968597))) (= (_1!32299 (h!61298 (t!362484 (apply!13307 lm!2280 lt!1968597)))) key!5428)))))

(assert (=> d!1542903 (= (containsKey!4284 (t!362484 (apply!13307 lm!2280 lt!1968597)) key!5428) e!3011279)))

(declare-fun b!4819684 () Bool)

(declare-fun e!3011280 () Bool)

(assert (=> b!4819684 (= e!3011279 e!3011280)))

(declare-fun res!2050865 () Bool)

(assert (=> b!4819684 (=> (not res!2050865) (not e!3011280))))

(assert (=> b!4819684 (= res!2050865 ((_ is Cons!54864) (t!362484 (apply!13307 lm!2280 lt!1968597))))))

(declare-fun b!4819685 () Bool)

(assert (=> b!4819685 (= e!3011280 (containsKey!4284 (t!362484 (t!362484 (apply!13307 lm!2280 lt!1968597))) key!5428))))

(assert (= (and d!1542903 (not res!2050864)) b!4819684))

(assert (= (and b!4819684 res!2050865) b!4819685))

(declare-fun m!5806848 () Bool)

(assert (=> b!4819685 m!5806848))

(assert (=> b!4819352 d!1542903))

(declare-fun d!1542905 () Bool)

(declare-fun res!2050873 () Bool)

(declare-fun e!3011289 () Bool)

(assert (=> d!1542905 (=> res!2050873 e!3011289)))

(assert (=> d!1542905 (= res!2050873 (and ((_ is Cons!54865) (toList!7409 lm!2280)) (= (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597)))))

(assert (=> d!1542905 (= (containsKey!4288 (toList!7409 lm!2280) lt!1968597) e!3011289)))

(declare-fun b!4819701 () Bool)

(declare-fun e!3011290 () Bool)

(assert (=> b!4819701 (= e!3011289 e!3011290)))

(declare-fun res!2050874 () Bool)

(assert (=> b!4819701 (=> (not res!2050874) (not e!3011290))))

(assert (=> b!4819701 (= res!2050874 (and (or (not ((_ is Cons!54865) (toList!7409 lm!2280))) (bvsle (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597)) ((_ is Cons!54865) (toList!7409 lm!2280)) (bvslt (_1!32300 (h!61299 (toList!7409 lm!2280))) lt!1968597)))))

(declare-fun b!4819702 () Bool)

(assert (=> b!4819702 (= e!3011290 (containsKey!4288 (t!362485 (toList!7409 lm!2280)) lt!1968597))))

(assert (= (and d!1542905 (not res!2050873)) b!4819701))

(assert (= (and b!4819701 res!2050874) b!4819702))

(declare-fun m!5806850 () Bool)

(assert (=> b!4819702 m!5806850))

(assert (=> d!1542745 d!1542905))

(declare-fun bs!1161312 () Bool)

(declare-fun b!4819704 () Bool)

(assert (= bs!1161312 (and b!4819704 b!4819294)))

(declare-fun lambda!235307 () Int)

(assert (=> bs!1161312 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968760) (= lambda!235307 lambda!235240))))

(declare-fun bs!1161313 () Bool)

(assert (= bs!1161313 (and b!4819704 b!4819293)))

(assert (=> bs!1161313 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968599) (= lambda!235307 lambda!235238))))

(declare-fun bs!1161314 () Bool)

(assert (= bs!1161314 (and b!4819704 b!4819555)))

(assert (=> bs!1161314 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968895) (= lambda!235307 lambda!235270))))

(declare-fun bs!1161315 () Bool)

(assert (= bs!1161315 (and b!4819704 d!1542837)))

(assert (=> bs!1161315 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968905) (= lambda!235307 lambda!235272))))

(declare-fun bs!1161316 () Bool)

(assert (= bs!1161316 (and b!4819704 b!4819554)))

(assert (=> bs!1161316 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235307 lambda!235268))))

(assert (=> bs!1161314 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235307 lambda!235269))))

(assert (=> bs!1161312 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968599) (= lambda!235307 lambda!235239))))

(declare-fun bs!1161317 () Bool)

(assert (= bs!1161317 (and b!4819704 d!1542805)))

(assert (=> bs!1161317 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968760) (= lambda!235307 lambda!235261))))

(declare-fun bs!1161318 () Bool)

(assert (= bs!1161318 (and b!4819704 d!1542683)))

(assert (=> bs!1161318 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968770) (= lambda!235307 lambda!235241))))

(assert (=> b!4819704 true))

(declare-fun bs!1161319 () Bool)

(declare-fun b!4819705 () Bool)

(assert (= bs!1161319 (and b!4819705 b!4819294)))

(declare-fun lambda!235308 () Int)

(assert (=> bs!1161319 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968760) (= lambda!235308 lambda!235240))))

(declare-fun bs!1161320 () Bool)

(assert (= bs!1161320 (and b!4819705 b!4819293)))

(assert (=> bs!1161320 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968599) (= lambda!235308 lambda!235238))))

(declare-fun bs!1161321 () Bool)

(assert (= bs!1161321 (and b!4819705 b!4819555)))

(assert (=> bs!1161321 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968895) (= lambda!235308 lambda!235270))))

(declare-fun bs!1161322 () Bool)

(assert (= bs!1161322 (and b!4819705 d!1542837)))

(assert (=> bs!1161322 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968905) (= lambda!235308 lambda!235272))))

(declare-fun bs!1161323 () Bool)

(assert (= bs!1161323 (and b!4819705 b!4819704)))

(assert (=> bs!1161323 (= lambda!235308 lambda!235307)))

(declare-fun bs!1161324 () Bool)

(assert (= bs!1161324 (and b!4819705 b!4819554)))

(assert (=> bs!1161324 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235308 lambda!235268))))

(assert (=> bs!1161321 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235308 lambda!235269))))

(assert (=> bs!1161319 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968599) (= lambda!235308 lambda!235239))))

(declare-fun bs!1161325 () Bool)

(assert (= bs!1161325 (and b!4819705 d!1542805)))

(assert (=> bs!1161325 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968760) (= lambda!235308 lambda!235261))))

(declare-fun bs!1161326 () Bool)

(assert (= bs!1161326 (and b!4819705 d!1542683)))

(assert (=> bs!1161326 (= (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1968770) (= lambda!235308 lambda!235241))))

(assert (=> b!4819705 true))

(declare-fun lt!1969026 () ListMap!6809)

(declare-fun lambda!235309 () Int)

(assert (=> bs!1161319 (= (= lt!1969026 lt!1968760) (= lambda!235309 lambda!235240))))

(assert (=> bs!1161320 (= (= lt!1969026 lt!1968599) (= lambda!235309 lambda!235238))))

(assert (=> bs!1161321 (= (= lt!1969026 lt!1968895) (= lambda!235309 lambda!235270))))

(assert (=> b!4819705 (= (= lt!1969026 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235309 lambda!235308))))

(assert (=> bs!1161322 (= (= lt!1969026 lt!1968905) (= lambda!235309 lambda!235272))))

(assert (=> bs!1161323 (= (= lt!1969026 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235309 lambda!235307))))

(assert (=> bs!1161324 (= (= lt!1969026 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235309 lambda!235268))))

(assert (=> bs!1161321 (= (= lt!1969026 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235309 lambda!235269))))

(assert (=> bs!1161319 (= (= lt!1969026 lt!1968599) (= lambda!235309 lambda!235239))))

(assert (=> bs!1161325 (= (= lt!1969026 lt!1968760) (= lambda!235309 lambda!235261))))

(assert (=> bs!1161326 (= (= lt!1969026 lt!1968770) (= lambda!235309 lambda!235241))))

(assert (=> b!4819705 true))

(declare-fun bs!1161333 () Bool)

(declare-fun d!1542907 () Bool)

(assert (= bs!1161333 (and d!1542907 b!4819294)))

(declare-fun lambda!235312 () Int)

(declare-fun lt!1969036 () ListMap!6809)

(assert (=> bs!1161333 (= (= lt!1969036 lt!1968760) (= lambda!235312 lambda!235240))))

(declare-fun bs!1161334 () Bool)

(assert (= bs!1161334 (and d!1542907 b!4819293)))

(assert (=> bs!1161334 (= (= lt!1969036 lt!1968599) (= lambda!235312 lambda!235238))))

(declare-fun bs!1161335 () Bool)

(assert (= bs!1161335 (and d!1542907 b!4819555)))

(assert (=> bs!1161335 (= (= lt!1969036 lt!1968895) (= lambda!235312 lambda!235270))))

(declare-fun bs!1161336 () Bool)

(assert (= bs!1161336 (and d!1542907 b!4819705)))

(assert (=> bs!1161336 (= (= lt!1969036 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235312 lambda!235308))))

(declare-fun bs!1161337 () Bool)

(assert (= bs!1161337 (and d!1542907 d!1542837)))

(assert (=> bs!1161337 (= (= lt!1969036 lt!1968905) (= lambda!235312 lambda!235272))))

(declare-fun bs!1161338 () Bool)

(assert (= bs!1161338 (and d!1542907 b!4819554)))

(assert (=> bs!1161338 (= (= lt!1969036 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235312 lambda!235268))))

(assert (=> bs!1161335 (= (= lt!1969036 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235312 lambda!235269))))

(assert (=> bs!1161333 (= (= lt!1969036 lt!1968599) (= lambda!235312 lambda!235239))))

(declare-fun bs!1161340 () Bool)

(assert (= bs!1161340 (and d!1542907 d!1542805)))

(assert (=> bs!1161340 (= (= lt!1969036 lt!1968760) (= lambda!235312 lambda!235261))))

(declare-fun bs!1161341 () Bool)

(assert (= bs!1161341 (and d!1542907 d!1542683)))

(assert (=> bs!1161341 (= (= lt!1969036 lt!1968770) (= lambda!235312 lambda!235241))))

(assert (=> bs!1161336 (= (= lt!1969036 lt!1969026) (= lambda!235312 lambda!235309))))

(declare-fun bs!1161342 () Bool)

(assert (= bs!1161342 (and d!1542907 b!4819704)))

(assert (=> bs!1161342 (= (= lt!1969036 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235312 lambda!235307))))

(assert (=> d!1542907 true))

(declare-fun b!4819703 () Bool)

(declare-fun res!2050876 () Bool)

(declare-fun e!3011292 () Bool)

(assert (=> b!4819703 (=> (not res!2050876) (not e!3011292))))

(assert (=> b!4819703 (= res!2050876 (forall!12536 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) lambda!235312))))

(declare-fun bm!336082 () Bool)

(declare-fun call!336089 () Unit!142179)

(assert (=> bm!336082 (= call!336089 (lemmaContainsAllItsOwnKeys!978 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))))))

(declare-fun e!3011293 () ListMap!6809)

(assert (=> b!4819704 (= e!3011293 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))))))

(declare-fun lt!1969027 () Unit!142179)

(assert (=> b!4819704 (= lt!1969027 call!336089)))

(declare-fun call!336088 () Bool)

(assert (=> b!4819704 call!336088))

(declare-fun lt!1969043 () Unit!142179)

(assert (=> b!4819704 (= lt!1969043 lt!1969027)))

(declare-fun call!336087 () Bool)

(assert (=> b!4819704 call!336087))

(declare-fun lt!1969044 () Unit!142179)

(declare-fun Unit!142246 () Unit!142179)

(assert (=> b!4819704 (= lt!1969044 Unit!142246)))

(assert (=> b!4819705 (= e!3011293 lt!1969026)))

(declare-fun lt!1969031 () ListMap!6809)

(assert (=> b!4819705 (= lt!1969031 (+!2523 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))))))

(assert (=> b!4819705 (= lt!1969026 (addToMapMapFromBucket!1776 (t!362484 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))) (+!2523 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))))

(declare-fun lt!1969025 () Unit!142179)

(assert (=> b!4819705 (= lt!1969025 call!336089)))

(assert (=> b!4819705 (forall!12536 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) lambda!235308)))

(declare-fun lt!1969040 () Unit!142179)

(assert (=> b!4819705 (= lt!1969040 lt!1969025)))

(assert (=> b!4819705 (forall!12536 (toList!7410 lt!1969031) lambda!235309)))

(declare-fun lt!1969030 () Unit!142179)

(declare-fun Unit!142247 () Unit!142179)

(assert (=> b!4819705 (= lt!1969030 Unit!142247)))

(assert (=> b!4819705 (forall!12536 (t!362484 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))) lambda!235309)))

(declare-fun lt!1969033 () Unit!142179)

(declare-fun Unit!142249 () Unit!142179)

(assert (=> b!4819705 (= lt!1969033 Unit!142249)))

(declare-fun lt!1969045 () Unit!142179)

(declare-fun Unit!142250 () Unit!142179)

(assert (=> b!4819705 (= lt!1969045 Unit!142250)))

(declare-fun lt!1969035 () Unit!142179)

(assert (=> b!4819705 (= lt!1969035 (forallContained!4358 (toList!7410 lt!1969031) lambda!235309 (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))))))

(assert (=> b!4819705 (contains!18683 lt!1969031 (_1!32299 (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))))))

(declare-fun lt!1969032 () Unit!142179)

(declare-fun Unit!142251 () Unit!142179)

(assert (=> b!4819705 (= lt!1969032 Unit!142251)))

(assert (=> b!4819705 (contains!18683 lt!1969026 (_1!32299 (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))))))

(declare-fun lt!1969037 () Unit!142179)

(declare-fun Unit!142252 () Unit!142179)

(assert (=> b!4819705 (= lt!1969037 Unit!142252)))

(assert (=> b!4819705 (forall!12536 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))) lambda!235309)))

(declare-fun lt!1969029 () Unit!142179)

(declare-fun Unit!142253 () Unit!142179)

(assert (=> b!4819705 (= lt!1969029 Unit!142253)))

(assert (=> b!4819705 (forall!12536 (toList!7410 lt!1969031) lambda!235309)))

(declare-fun lt!1969028 () Unit!142179)

(declare-fun Unit!142254 () Unit!142179)

(assert (=> b!4819705 (= lt!1969028 Unit!142254)))

(declare-fun lt!1969042 () Unit!142179)

(declare-fun Unit!142255 () Unit!142179)

(assert (=> b!4819705 (= lt!1969042 Unit!142255)))

(declare-fun lt!1969041 () Unit!142179)

(assert (=> b!4819705 (= lt!1969041 (addForallContainsKeyThenBeforeAdding!977 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1969026 (_1!32299 (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))) (_2!32299 (h!61298 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))))

(assert (=> b!4819705 (forall!12536 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) lambda!235309)))

(declare-fun lt!1969039 () Unit!142179)

(assert (=> b!4819705 (= lt!1969039 lt!1969041)))

(assert (=> b!4819705 call!336087))

(declare-fun lt!1969038 () Unit!142179)

(declare-fun Unit!142256 () Unit!142179)

(assert (=> b!4819705 (= lt!1969038 Unit!142256)))

(declare-fun res!2050875 () Bool)

(assert (=> b!4819705 (= res!2050875 call!336088)))

(declare-fun e!3011291 () Bool)

(assert (=> b!4819705 (=> (not res!2050875) (not e!3011291))))

(assert (=> b!4819705 e!3011291))

(declare-fun lt!1969034 () Unit!142179)

(declare-fun Unit!142257 () Unit!142179)

(assert (=> b!4819705 (= lt!1969034 Unit!142257)))

(assert (=> d!1542907 e!3011292))

(declare-fun res!2050877 () Bool)

(assert (=> d!1542907 (=> (not res!2050877) (not e!3011292))))

(assert (=> d!1542907 (= res!2050877 (forall!12536 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))) lambda!235312))))

(assert (=> d!1542907 (= lt!1969036 e!3011293)))

(declare-fun c!821375 () Bool)

(assert (=> d!1542907 (= c!821375 ((_ is Nil!54864) (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))

(assert (=> d!1542907 (noDuplicateKeys!2425 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))))))

(assert (=> d!1542907 (= (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280)))) (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) lt!1969036)))

(declare-fun b!4819706 () Bool)

(assert (=> b!4819706 (= e!3011291 (forall!12536 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) lambda!235309))))

(declare-fun bm!336083 () Bool)

(assert (=> bm!336083 (= call!336087 (forall!12536 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (ite c!821375 lambda!235307 lambda!235309)))))

(declare-fun bm!336084 () Bool)

(assert (=> bm!336084 (= call!336088 (forall!12536 (ite c!821375 (toList!7410 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))) (ite c!821375 lambda!235307 lambda!235309)))))

(declare-fun b!4819707 () Bool)

(assert (=> b!4819707 (= e!3011292 (invariantList!1797 (toList!7410 lt!1969036)))))

(assert (= (and d!1542907 c!821375) b!4819704))

(assert (= (and d!1542907 (not c!821375)) b!4819705))

(assert (= (and b!4819705 res!2050875) b!4819706))

(assert (= (or b!4819704 b!4819705) bm!336084))

(assert (= (or b!4819704 b!4819705) bm!336083))

(assert (= (or b!4819704 b!4819705) bm!336082))

(assert (= (and d!1542907 res!2050877) b!4819703))

(assert (= (and b!4819703 res!2050876) b!4819707))

(declare-fun m!5806914 () Bool)

(assert (=> b!4819705 m!5806914))

(declare-fun m!5806916 () Bool)

(assert (=> b!4819705 m!5806916))

(declare-fun m!5806918 () Bool)

(assert (=> b!4819705 m!5806918))

(assert (=> b!4819705 m!5806368))

(declare-fun m!5806920 () Bool)

(assert (=> b!4819705 m!5806920))

(declare-fun m!5806922 () Bool)

(assert (=> b!4819705 m!5806922))

(assert (=> b!4819705 m!5806368))

(declare-fun m!5806924 () Bool)

(assert (=> b!4819705 m!5806924))

(assert (=> b!4819705 m!5806920))

(declare-fun m!5806926 () Bool)

(assert (=> b!4819705 m!5806926))

(declare-fun m!5806928 () Bool)

(assert (=> b!4819705 m!5806928))

(declare-fun m!5806930 () Bool)

(assert (=> b!4819705 m!5806930))

(declare-fun m!5806932 () Bool)

(assert (=> b!4819705 m!5806932))

(assert (=> b!4819705 m!5806932))

(declare-fun m!5806934 () Bool)

(assert (=> b!4819705 m!5806934))

(declare-fun m!5806936 () Bool)

(assert (=> b!4819707 m!5806936))

(declare-fun m!5806938 () Bool)

(assert (=> d!1542907 m!5806938))

(declare-fun m!5806940 () Bool)

(assert (=> d!1542907 m!5806940))

(assert (=> b!4819706 m!5806922))

(declare-fun m!5806942 () Bool)

(assert (=> bm!336083 m!5806942))

(declare-fun m!5806944 () Bool)

(assert (=> b!4819703 m!5806944))

(declare-fun m!5806946 () Bool)

(assert (=> bm!336084 m!5806946))

(assert (=> bm!336082 m!5806368))

(declare-fun m!5806948 () Bool)

(assert (=> bm!336082 m!5806948))

(assert (=> b!4819341 d!1542907))

(declare-fun bs!1161353 () Bool)

(declare-fun d!1542929 () Bool)

(assert (= bs!1161353 (and d!1542929 start!499138)))

(declare-fun lambda!235315 () Int)

(assert (=> bs!1161353 (= lambda!235315 lambda!235168)))

(declare-fun bs!1161355 () Bool)

(assert (= bs!1161355 (and d!1542929 d!1542723)))

(assert (=> bs!1161355 (= lambda!235315 lambda!235244)))

(declare-fun bs!1161357 () Bool)

(assert (= bs!1161357 (and d!1542929 d!1542729)))

(assert (=> bs!1161357 (= lambda!235315 lambda!235247)))

(declare-fun bs!1161359 () Bool)

(assert (= bs!1161359 (and d!1542929 d!1542737)))

(assert (=> bs!1161359 (not (= lambda!235315 lambda!235250))))

(declare-fun lt!1969071 () ListMap!6809)

(assert (=> d!1542929 (invariantList!1797 (toList!7410 lt!1969071))))

(declare-fun e!3011306 () ListMap!6809)

(assert (=> d!1542929 (= lt!1969071 e!3011306)))

(declare-fun c!821377 () Bool)

(assert (=> d!1542929 (= c!821377 ((_ is Cons!54865) (t!362485 (t!362485 (toList!7409 lm!2280)))))))

(assert (=> d!1542929 (forall!12534 (t!362485 (t!362485 (toList!7409 lm!2280))) lambda!235315)))

(assert (=> d!1542929 (= (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280)))) lt!1969071)))

(declare-fun b!4819724 () Bool)

(assert (=> b!4819724 (= e!3011306 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (t!362485 (t!362485 (toList!7409 lm!2280))))) (extractMap!2656 (t!362485 (t!362485 (t!362485 (toList!7409 lm!2280)))))))))

(declare-fun b!4819725 () Bool)

(assert (=> b!4819725 (= e!3011306 (ListMap!6810 Nil!54864))))

(assert (= (and d!1542929 c!821377) b!4819724))

(assert (= (and d!1542929 (not c!821377)) b!4819725))

(declare-fun m!5806950 () Bool)

(assert (=> d!1542929 m!5806950))

(declare-fun m!5806952 () Bool)

(assert (=> d!1542929 m!5806952))

(declare-fun m!5806954 () Bool)

(assert (=> b!4819724 m!5806954))

(assert (=> b!4819724 m!5806954))

(declare-fun m!5806956 () Bool)

(assert (=> b!4819724 m!5806956))

(assert (=> b!4819341 d!1542929))

(assert (=> b!4819359 d!1542891))

(assert (=> b!4819359 d!1542859))

(declare-fun d!1542931 () Bool)

(declare-fun res!2050892 () Bool)

(declare-fun e!3011307 () Bool)

(assert (=> d!1542931 (=> res!2050892 e!3011307)))

(assert (=> d!1542931 (= res!2050892 ((_ is Nil!54865) (t!362485 (toList!7409 lm!2280))))))

(assert (=> d!1542931 (= (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235168) e!3011307)))

(declare-fun b!4819726 () Bool)

(declare-fun e!3011308 () Bool)

(assert (=> b!4819726 (= e!3011307 e!3011308)))

(declare-fun res!2050893 () Bool)

(assert (=> b!4819726 (=> (not res!2050893) (not e!3011308))))

(assert (=> b!4819726 (= res!2050893 (dynLambda!22179 lambda!235168 (h!61299 (t!362485 (toList!7409 lm!2280)))))))

(declare-fun b!4819727 () Bool)

(assert (=> b!4819727 (= e!3011308 (forall!12534 (t!362485 (t!362485 (toList!7409 lm!2280))) lambda!235168))))

(assert (= (and d!1542931 (not res!2050892)) b!4819726))

(assert (= (and b!4819726 res!2050893) b!4819727))

(declare-fun b_lambda!188857 () Bool)

(assert (=> (not b_lambda!188857) (not b!4819726)))

(declare-fun m!5806958 () Bool)

(assert (=> b!4819726 m!5806958))

(declare-fun m!5806960 () Bool)

(assert (=> b!4819727 m!5806960))

(assert (=> b!4819348 d!1542931))

(declare-fun d!1542933 () Bool)

(declare-fun res!2050894 () Bool)

(declare-fun e!3011309 () Bool)

(assert (=> d!1542933 (=> res!2050894 e!3011309)))

(assert (=> d!1542933 (= res!2050894 (and ((_ is Cons!54864) (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (= (_1!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) key!5428)))))

(assert (=> d!1542933 (= (containsKey!4284 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))) key!5428) e!3011309)))

(declare-fun b!4819728 () Bool)

(declare-fun e!3011310 () Bool)

(assert (=> b!4819728 (= e!3011309 e!3011310)))

(declare-fun res!2050895 () Bool)

(assert (=> b!4819728 (=> (not res!2050895) (not e!3011310))))

(assert (=> b!4819728 (= res!2050895 ((_ is Cons!54864) (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))

(declare-fun b!4819729 () Bool)

(assert (=> b!4819729 (= e!3011310 (containsKey!4284 (t!362484 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))) key!5428))))

(assert (= (and d!1542933 (not res!2050894)) b!4819728))

(assert (= (and b!4819728 res!2050895) b!4819729))

(declare-fun m!5806962 () Bool)

(assert (=> b!4819729 m!5806962))

(assert (=> b!4819306 d!1542933))

(declare-fun d!1542935 () Bool)

(assert (=> d!1542935 (isDefined!10570 (getValueByKey!2582 (toList!7410 lt!1968599) key!5428))))

(declare-fun lt!1969072 () Unit!142179)

(assert (=> d!1542935 (= lt!1969072 (choose!34983 (toList!7410 lt!1968599) key!5428))))

(assert (=> d!1542935 (invariantList!1797 (toList!7410 lt!1968599))))

(assert (=> d!1542935 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2367 (toList!7410 lt!1968599) key!5428) lt!1969072)))

(declare-fun bs!1161364 () Bool)

(assert (= bs!1161364 d!1542935))

(assert (=> bs!1161364 m!5806392))

(assert (=> bs!1161364 m!5806392))

(assert (=> bs!1161364 m!5806394))

(declare-fun m!5806964 () Bool)

(assert (=> bs!1161364 m!5806964))

(assert (=> bs!1161364 m!5806812))

(assert (=> b!4819360 d!1542935))

(assert (=> b!4819360 d!1542899))

(assert (=> b!4819360 d!1542901))

(declare-fun d!1542937 () Bool)

(assert (=> d!1542937 (contains!18685 (getKeysList!1144 (toList!7410 lt!1968599)) key!5428)))

(declare-fun lt!1969073 () Unit!142179)

(assert (=> d!1542937 (= lt!1969073 (choose!34986 (toList!7410 lt!1968599) key!5428))))

(assert (=> d!1542937 (invariantList!1797 (toList!7410 lt!1968599))))

(assert (=> d!1542937 (= (lemmaInListThenGetKeysListContains!1139 (toList!7410 lt!1968599) key!5428) lt!1969073)))

(declare-fun bs!1161365 () Bool)

(assert (= bs!1161365 d!1542937))

(assert (=> bs!1161365 m!5806398))

(assert (=> bs!1161365 m!5806398))

(declare-fun m!5806966 () Bool)

(assert (=> bs!1161365 m!5806966))

(declare-fun m!5806968 () Bool)

(assert (=> bs!1161365 m!5806968))

(assert (=> bs!1161365 m!5806812))

(assert (=> b!4819360 d!1542937))

(declare-fun bs!1161366 () Bool)

(declare-fun b!4819733 () Bool)

(assert (= bs!1161366 (and b!4819733 b!4819642)))

(declare-fun lambda!235317 () Int)

(assert (=> bs!1161366 (= (= (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 lt!1968599))) (= lambda!235317 lambda!235291))))

(declare-fun bs!1161367 () Bool)

(assert (= bs!1161367 (and b!4819733 b!4819643)))

(assert (=> bs!1161367 (= (= (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599)))) (= lambda!235317 lambda!235292))))

(declare-fun bs!1161368 () Bool)

(assert (= bs!1161368 (and b!4819733 b!4819590)))

(assert (=> bs!1161368 (= (= (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (toList!7410 lt!1968599)) (= lambda!235317 lambda!235276))))

(declare-fun bs!1161369 () Bool)

(assert (= bs!1161369 (and b!4819733 b!4819645)))

(assert (=> bs!1161369 (= (= (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (toList!7410 lt!1968599)) (= lambda!235317 lambda!235293))))

(declare-fun bs!1161370 () Bool)

(assert (= bs!1161370 (and b!4819733 b!4819391)))

(assert (=> bs!1161370 (= (= (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235317 lambda!235255))))

(assert (=> b!4819733 true))

(declare-fun bs!1161376 () Bool)

(declare-fun b!4819734 () Bool)

(assert (= bs!1161376 (and b!4819734 b!4819642)))

(declare-fun lambda!235319 () Int)

(assert (=> bs!1161376 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (t!362484 (toList!7410 lt!1968599))) (= lambda!235319 lambda!235291))))

(declare-fun bs!1161378 () Bool)

(assert (= bs!1161378 (and b!4819734 b!4819643)))

(assert (=> bs!1161378 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599)))) (= lambda!235319 lambda!235292))))

(declare-fun bs!1161380 () Bool)

(assert (= bs!1161380 (and b!4819734 b!4819733)))

(assert (=> bs!1161380 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (= lambda!235319 lambda!235317))))

(declare-fun bs!1161381 () Bool)

(assert (= bs!1161381 (and b!4819734 b!4819590)))

(assert (=> bs!1161381 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (toList!7410 lt!1968599)) (= lambda!235319 lambda!235276))))

(declare-fun bs!1161383 () Bool)

(assert (= bs!1161383 (and b!4819734 b!4819645)))

(assert (=> bs!1161383 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (toList!7410 lt!1968599)) (= lambda!235319 lambda!235293))))

(declare-fun bs!1161385 () Bool)

(assert (= bs!1161385 (and b!4819734 b!4819391)))

(assert (=> bs!1161385 (= (= (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= lambda!235319 lambda!235255))))

(assert (=> b!4819734 true))

(declare-fun bs!1161386 () Bool)

(declare-fun b!4819736 () Bool)

(assert (= bs!1161386 (and b!4819736 b!4819642)))

(declare-fun lambda!235320 () Int)

(assert (=> bs!1161386 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (t!362484 (toList!7410 lt!1968599))) (= lambda!235320 lambda!235291))))

(declare-fun bs!1161387 () Bool)

(assert (= bs!1161387 (and b!4819736 b!4819733)))

(assert (=> bs!1161387 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (= lambda!235320 lambda!235317))))

(declare-fun bs!1161388 () Bool)

(assert (= bs!1161388 (and b!4819736 b!4819590)))

(assert (=> bs!1161388 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (toList!7410 lt!1968599)) (= lambda!235320 lambda!235276))))

(declare-fun bs!1161389 () Bool)

(assert (= bs!1161389 (and b!4819736 b!4819645)))

(assert (=> bs!1161389 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (toList!7410 lt!1968599)) (= lambda!235320 lambda!235293))))

(declare-fun bs!1161390 () Bool)

(assert (= bs!1161390 (and b!4819736 b!4819391)))

(assert (=> bs!1161390 (= lambda!235320 lambda!235255)))

(declare-fun bs!1161391 () Bool)

(assert (= bs!1161391 (and b!4819736 b!4819734)))

(assert (=> bs!1161391 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (Cons!54864 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))) (= lambda!235320 lambda!235319))))

(declare-fun bs!1161392 () Bool)

(assert (= bs!1161392 (and b!4819736 b!4819643)))

(assert (=> bs!1161392 (= (= (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) (Cons!54864 (h!61298 (toList!7410 lt!1968599)) (t!362484 (toList!7410 lt!1968599)))) (= lambda!235320 lambda!235292))))

(assert (=> b!4819736 true))

(declare-fun bs!1161393 () Bool)

(declare-fun b!4819735 () Bool)

(assert (= bs!1161393 (and b!4819735 b!4819392)))

(declare-fun lambda!235321 () Int)

(assert (=> bs!1161393 (= lambda!235321 lambda!235256)))

(declare-fun bs!1161394 () Bool)

(assert (= bs!1161394 (and b!4819735 b!4819591)))

(assert (=> bs!1161394 (= lambda!235321 lambda!235277)))

(declare-fun bs!1161395 () Bool)

(assert (= bs!1161395 (and b!4819735 b!4819644)))

(assert (=> bs!1161395 (= lambda!235321 lambda!235294)))

(declare-fun b!4819730 () Bool)

(declare-fun e!3011312 () Unit!142179)

(declare-fun Unit!142260 () Unit!142179)

(assert (=> b!4819730 (= e!3011312 Unit!142260)))

(declare-fun b!4819731 () Bool)

(assert (=> b!4819731 false))

(declare-fun e!3011313 () Unit!142179)

(declare-fun Unit!142262 () Unit!142179)

(assert (=> b!4819731 (= e!3011313 Unit!142262)))

(declare-fun b!4819732 () Bool)

(declare-fun e!3011311 () List!54991)

(assert (=> b!4819732 (= e!3011311 Nil!54867)))

(assert (=> b!4819733 false))

(declare-fun lt!1969077 () Unit!142179)

(assert (=> b!4819733 (= lt!1969077 (forallContained!4359 (getKeysList!1144 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) lambda!235317 (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))))

(declare-fun Unit!142263 () Unit!142179)

(assert (=> b!4819733 (= e!3011312 Unit!142263)))

(declare-fun e!3011314 () Bool)

(declare-fun lt!1969078 () List!54991)

(assert (=> b!4819735 (= e!3011314 (= (content!9806 lt!1969078) (content!9806 (map!12543 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) lambda!235321))))))

(declare-fun res!2050896 () Bool)

(assert (=> b!4819736 (=> (not res!2050896) (not e!3011314))))

(assert (=> b!4819736 (= res!2050896 (forall!12537 lt!1969078 lambda!235320))))

(declare-fun b!4819737 () Bool)

(declare-fun res!2050898 () Bool)

(assert (=> b!4819737 (=> (not res!2050898) (not e!3011314))))

(assert (=> b!4819737 (= res!2050898 (= (length!750 lt!1969078) (length!751 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))))

(declare-fun b!4819738 () Bool)

(declare-fun Unit!142265 () Unit!142179)

(assert (=> b!4819738 (= e!3011313 Unit!142265)))

(declare-fun d!1542939 () Bool)

(assert (=> d!1542939 e!3011314))

(declare-fun res!2050897 () Bool)

(assert (=> d!1542939 (=> (not res!2050897) (not e!3011314))))

(assert (=> d!1542939 (= res!2050897 (noDuplicate!947 lt!1969078))))

(assert (=> d!1542939 (= lt!1969078 e!3011311)))

(declare-fun c!821379 () Bool)

(assert (=> d!1542939 (= c!821379 ((_ is Cons!54864) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))

(assert (=> d!1542939 (invariantList!1797 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))

(assert (=> d!1542939 (= (getKeysList!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) lt!1969078)))

(assert (=> b!4819734 (= e!3011311 (Cons!54867 (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (getKeysList!1144 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))))

(declare-fun c!821378 () Bool)

(assert (=> b!4819734 (= c!821378 (containsKey!4287 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))))

(declare-fun lt!1969074 () Unit!142179)

(assert (=> b!4819734 (= lt!1969074 e!3011313)))

(declare-fun c!821380 () Bool)

(assert (=> b!4819734 (= c!821380 (contains!18685 (getKeysList!1144 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))))

(declare-fun lt!1969079 () Unit!142179)

(assert (=> b!4819734 (= lt!1969079 e!3011312)))

(declare-fun lt!1969076 () List!54991)

(assert (=> b!4819734 (= lt!1969076 (getKeysList!1144 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))))

(declare-fun lt!1969080 () Unit!142179)

(assert (=> b!4819734 (= lt!1969080 (lemmaForallContainsAddHeadPreserves!362 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) lt!1969076 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))))

(assert (=> b!4819734 (forall!12537 lt!1969076 lambda!235319)))

(declare-fun lt!1969075 () Unit!142179)

(assert (=> b!4819734 (= lt!1969075 lt!1969080)))

(assert (= (and d!1542939 c!821379) b!4819734))

(assert (= (and d!1542939 (not c!821379)) b!4819732))

(assert (= (and b!4819734 c!821378) b!4819731))

(assert (= (and b!4819734 (not c!821378)) b!4819738))

(assert (= (and b!4819734 c!821380) b!4819733))

(assert (= (and b!4819734 (not c!821380)) b!4819730))

(assert (= (and d!1542939 res!2050897) b!4819737))

(assert (= (and b!4819737 res!2050898) b!4819736))

(assert (= (and b!4819736 res!2050896) b!4819735))

(declare-fun m!5806992 () Bool)

(assert (=> b!4819734 m!5806992))

(declare-fun m!5806996 () Bool)

(assert (=> b!4819734 m!5806996))

(declare-fun m!5806998 () Bool)

(assert (=> b!4819734 m!5806998))

(declare-fun m!5807000 () Bool)

(assert (=> b!4819734 m!5807000))

(assert (=> b!4819734 m!5807000))

(declare-fun m!5807004 () Bool)

(assert (=> b!4819734 m!5807004))

(declare-fun m!5807008 () Bool)

(assert (=> b!4819737 m!5807008))

(assert (=> b!4819737 m!5806432))

(assert (=> b!4819733 m!5807000))

(assert (=> b!4819733 m!5807000))

(declare-fun m!5807014 () Bool)

(assert (=> b!4819733 m!5807014))

(declare-fun m!5807016 () Bool)

(assert (=> d!1542939 m!5807016))

(assert (=> d!1542939 m!5806478))

(declare-fun m!5807018 () Bool)

(assert (=> b!4819736 m!5807018))

(declare-fun m!5807020 () Bool)

(assert (=> b!4819735 m!5807020))

(declare-fun m!5807022 () Bool)

(assert (=> b!4819735 m!5807022))

(assert (=> b!4819735 m!5807022))

(declare-fun m!5807024 () Bool)

(assert (=> b!4819735 m!5807024))

(assert (=> b!4819325 d!1542939))

(declare-fun d!1542943 () Bool)

(declare-fun res!2050899 () Bool)

(declare-fun e!3011316 () Bool)

(assert (=> d!1542943 (=> res!2050899 e!3011316)))

(assert (=> d!1542943 (= res!2050899 ((_ is Nil!54864) (toList!7410 lt!1968599)))))

(assert (=> d!1542943 (= (forall!12536 (toList!7410 lt!1968599) lambda!235241) e!3011316)))

(declare-fun b!4819741 () Bool)

(declare-fun e!3011317 () Bool)

(assert (=> b!4819741 (= e!3011316 e!3011317)))

(declare-fun res!2050900 () Bool)

(assert (=> b!4819741 (=> (not res!2050900) (not e!3011317))))

(assert (=> b!4819741 (= res!2050900 (dynLambda!22180 lambda!235241 (h!61298 (toList!7410 lt!1968599))))))

(declare-fun b!4819742 () Bool)

(assert (=> b!4819742 (= e!3011317 (forall!12536 (t!362484 (toList!7410 lt!1968599)) lambda!235241))))

(assert (= (and d!1542943 (not res!2050899)) b!4819741))

(assert (= (and b!4819741 res!2050900) b!4819742))

(declare-fun b_lambda!188859 () Bool)

(assert (=> (not b_lambda!188859) (not b!4819741)))

(declare-fun m!5807026 () Bool)

(assert (=> b!4819741 m!5807026))

(declare-fun m!5807028 () Bool)

(assert (=> b!4819742 m!5807028))

(assert (=> b!4819292 d!1542943))

(declare-fun d!1542945 () Bool)

(assert (=> d!1542945 (= (get!18775 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597)) (v!49120 (getValueByKey!2581 (toList!7409 lm!2280) lt!1968597)))))

(assert (=> d!1542741 d!1542945))

(assert (=> d!1542741 d!1542865))

(declare-fun d!1542947 () Bool)

(declare-fun res!2050901 () Bool)

(declare-fun e!3011318 () Bool)

(assert (=> d!1542947 (=> res!2050901 e!3011318)))

(assert (=> d!1542947 (= res!2050901 (and ((_ is Cons!54864) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) (= (_1!32299 (h!61298 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))) key!5428)))))

(assert (=> d!1542947 (= (containsKey!4287 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) e!3011318)))

(declare-fun b!4819743 () Bool)

(declare-fun e!3011319 () Bool)

(assert (=> b!4819743 (= e!3011318 e!3011319)))

(declare-fun res!2050902 () Bool)

(assert (=> b!4819743 (=> (not res!2050902) (not e!3011319))))

(assert (=> b!4819743 (= res!2050902 ((_ is Cons!54864) (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))))))

(declare-fun b!4819744 () Bool)

(assert (=> b!4819744 (= e!3011319 (containsKey!4287 (t!362484 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599))) key!5428))))

(assert (= (and d!1542947 (not res!2050901)) b!4819743))

(assert (= (and b!4819743 res!2050902) b!4819744))

(declare-fun m!5807032 () Bool)

(assert (=> b!4819744 m!5807032))

(assert (=> b!4819326 d!1542947))

(declare-fun d!1542949 () Bool)

(assert (=> d!1542949 (containsKey!4287 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428)))

(declare-fun lt!1969082 () Unit!142179)

(assert (=> d!1542949 (= lt!1969082 (choose!34990 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428))))

(assert (=> d!1542949 (invariantList!1797 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)))))

(assert (=> d!1542949 (= (lemmaInGetKeysListThenContainsKey!1144 (toList!7410 (addToMapMapFromBucket!1776 (_2!32300 (h!61299 (toList!7409 lm!2280))) lt!1968599)) key!5428) lt!1969082)))

(declare-fun bs!1161400 () Bool)

(assert (= bs!1161400 d!1542949))

(assert (=> bs!1161400 m!5806358))

(declare-fun m!5807040 () Bool)

(assert (=> bs!1161400 m!5807040))

(assert (=> bs!1161400 m!5806478))

(assert (=> b!4819326 d!1542949))

(declare-fun d!1542953 () Bool)

(declare-fun res!2050907 () Bool)

(declare-fun e!3011324 () Bool)

(assert (=> d!1542953 (=> res!2050907 e!3011324)))

(assert (=> d!1542953 (= res!2050907 (or ((_ is Nil!54865) (toList!7409 lm!2280)) ((_ is Nil!54865) (t!362485 (toList!7409 lm!2280)))))))

(assert (=> d!1542953 (= (isStrictlySorted!961 (toList!7409 lm!2280)) e!3011324)))

(declare-fun b!4819749 () Bool)

(declare-fun e!3011325 () Bool)

(assert (=> b!4819749 (= e!3011324 e!3011325)))

(declare-fun res!2050908 () Bool)

(assert (=> b!4819749 (=> (not res!2050908) (not e!3011325))))

(assert (=> b!4819749 (= res!2050908 (bvslt (_1!32300 (h!61299 (toList!7409 lm!2280))) (_1!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))

(declare-fun b!4819750 () Bool)

(assert (=> b!4819750 (= e!3011325 (isStrictlySorted!961 (t!362485 (toList!7409 lm!2280))))))

(assert (= (and d!1542953 (not res!2050907)) b!4819749))

(assert (= (and b!4819749 res!2050908) b!4819750))

(declare-fun m!5807042 () Bool)

(assert (=> b!4819750 m!5807042))

(assert (=> d!1542735 d!1542953))

(assert (=> b!4819327 d!1542751))

(assert (=> b!4819327 d!1542753))

(declare-fun bs!1161413 () Bool)

(declare-fun d!1542955 () Bool)

(assert (= bs!1161413 (and d!1542955 b!4819294)))

(declare-fun lambda!235328 () Int)

(assert (=> bs!1161413 (= (= lt!1968599 lt!1968760) (= lambda!235328 lambda!235240))))

(declare-fun bs!1161414 () Bool)

(assert (= bs!1161414 (and d!1542955 b!4819293)))

(assert (=> bs!1161414 (= lambda!235328 lambda!235238)))

(declare-fun bs!1161415 () Bool)

(assert (= bs!1161415 (and d!1542955 b!4819555)))

(assert (=> bs!1161415 (= (= lt!1968599 lt!1968895) (= lambda!235328 lambda!235270))))

(declare-fun bs!1161416 () Bool)

(assert (= bs!1161416 (and d!1542955 b!4819705)))

(assert (=> bs!1161416 (= (= lt!1968599 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235328 lambda!235308))))

(declare-fun bs!1161417 () Bool)

(assert (= bs!1161417 (and d!1542955 d!1542907)))

(assert (=> bs!1161417 (= (= lt!1968599 lt!1969036) (= lambda!235328 lambda!235312))))

(declare-fun bs!1161418 () Bool)

(assert (= bs!1161418 (and d!1542955 d!1542837)))

(assert (=> bs!1161418 (= (= lt!1968599 lt!1968905) (= lambda!235328 lambda!235272))))

(declare-fun bs!1161419 () Bool)

(assert (= bs!1161419 (and d!1542955 b!4819554)))

(assert (=> bs!1161419 (= (= lt!1968599 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235328 lambda!235268))))

(assert (=> bs!1161415 (= (= lt!1968599 (+!2523 lt!1968599 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (= lambda!235328 lambda!235269))))

(assert (=> bs!1161413 (= lambda!235328 lambda!235239)))

(declare-fun bs!1161420 () Bool)

(assert (= bs!1161420 (and d!1542955 d!1542805)))

(assert (=> bs!1161420 (= (= lt!1968599 lt!1968760) (= lambda!235328 lambda!235261))))

(declare-fun bs!1161422 () Bool)

(assert (= bs!1161422 (and d!1542955 d!1542683)))

(assert (=> bs!1161422 (= (= lt!1968599 lt!1968770) (= lambda!235328 lambda!235241))))

(assert (=> bs!1161416 (= (= lt!1968599 lt!1969026) (= lambda!235328 lambda!235309))))

(declare-fun bs!1161423 () Bool)

(assert (= bs!1161423 (and d!1542955 b!4819704)))

(assert (=> bs!1161423 (= (= lt!1968599 (extractMap!2656 (t!362485 (t!362485 (toList!7409 lm!2280))))) (= lambda!235328 lambda!235307))))

(assert (=> d!1542955 true))

(assert (=> d!1542955 (forall!12536 (toList!7410 lt!1968599) lambda!235328)))

(declare-fun lt!1969088 () Unit!142179)

(declare-fun choose!34994 (ListMap!6809) Unit!142179)

(assert (=> d!1542955 (= lt!1969088 (choose!34994 lt!1968599))))

(assert (=> d!1542955 (= (lemmaContainsAllItsOwnKeys!978 lt!1968599) lt!1969088)))

(declare-fun bs!1161424 () Bool)

(assert (= bs!1161424 d!1542955))

(declare-fun m!5807054 () Bool)

(assert (=> bs!1161424 m!5807054))

(declare-fun m!5807058 () Bool)

(assert (=> bs!1161424 m!5807058))

(assert (=> bm!336065 d!1542955))

(assert (=> d!1542723 d!1542719))

(assert (=> d!1542723 d!1542681))

(declare-fun d!1542967 () Bool)

(assert (=> d!1542967 (not (containsKey!4284 (apply!13307 lm!2280 (_1!32300 (h!61299 (toList!7409 lm!2280)))) key!5428))))

(assert (=> d!1542967 true))

(declare-fun _$39!406 () Unit!142179)

(assert (=> d!1542967 (= (choose!34980 lm!2280 key!5428 (_1!32300 (h!61299 (toList!7409 lm!2280))) hashF!1509) _$39!406)))

(declare-fun bs!1161430 () Bool)

(assert (= bs!1161430 d!1542967))

(assert (=> bs!1161430 m!5806154))

(assert (=> bs!1161430 m!5806154))

(assert (=> bs!1161430 m!5806156))

(assert (=> d!1542723 d!1542967))

(declare-fun d!1542971 () Bool)

(declare-fun res!2050918 () Bool)

(declare-fun e!3011336 () Bool)

(assert (=> d!1542971 (=> res!2050918 e!3011336)))

(assert (=> d!1542971 (= res!2050918 ((_ is Nil!54865) (toList!7409 lm!2280)))))

(assert (=> d!1542971 (= (forall!12534 (toList!7409 lm!2280) lambda!235244) e!3011336)))

(declare-fun b!4819766 () Bool)

(declare-fun e!3011337 () Bool)

(assert (=> b!4819766 (= e!3011336 e!3011337)))

(declare-fun res!2050919 () Bool)

(assert (=> b!4819766 (=> (not res!2050919) (not e!3011337))))

(assert (=> b!4819766 (= res!2050919 (dynLambda!22179 lambda!235244 (h!61299 (toList!7409 lm!2280))))))

(declare-fun b!4819767 () Bool)

(assert (=> b!4819767 (= e!3011337 (forall!12534 (t!362485 (toList!7409 lm!2280)) lambda!235244))))

(assert (= (and d!1542971 (not res!2050918)) b!4819766))

(assert (= (and b!4819766 res!2050919) b!4819767))

(declare-fun b_lambda!188865 () Bool)

(assert (=> (not b_lambda!188865) (not b!4819766)))

(declare-fun m!5807064 () Bool)

(assert (=> b!4819766 m!5807064))

(declare-fun m!5807066 () Bool)

(assert (=> b!4819767 m!5807066))

(assert (=> d!1542723 d!1542971))

(assert (=> d!1542725 d!1542947))

(declare-fun d!1542973 () Bool)

(declare-fun choose!34995 (Hashable!7220 K!16539) (_ BitVec 64))

(assert (=> d!1542973 (= (hash!5307 hashF!1509 key!5428) (choose!34995 hashF!1509 key!5428))))

(declare-fun bs!1161444 () Bool)

(assert (= bs!1161444 d!1542973))

(declare-fun m!5807068 () Bool)

(assert (=> bs!1161444 m!5807068))

(assert (=> d!1542747 d!1542973))

(declare-fun tp!1362190 () Bool)

(declare-fun tp_is_empty!34327 () Bool)

(declare-fun e!3011340 () Bool)

(declare-fun b!4819772 () Bool)

(assert (=> b!4819772 (= e!3011340 (and tp_is_empty!34325 tp_is_empty!34327 tp!1362190))))

(assert (=> b!4819375 (= tp!1362186 e!3011340)))

(assert (= (and b!4819375 ((_ is Cons!54864) (_2!32300 (h!61299 (toList!7409 lm!2280))))) b!4819772))

(declare-fun b!4819773 () Bool)

(declare-fun e!3011341 () Bool)

(declare-fun tp!1362191 () Bool)

(declare-fun tp!1362192 () Bool)

(assert (=> b!4819773 (= e!3011341 (and tp!1362191 tp!1362192))))

(assert (=> b!4819375 (= tp!1362187 e!3011341)))

(assert (= (and b!4819375 ((_ is Cons!54865) (t!362485 (toList!7409 lm!2280)))) b!4819773))

(declare-fun b_lambda!188867 () Bool)

(assert (= b_lambda!188851 (or d!1542737 b_lambda!188867)))

(declare-fun bs!1161448 () Bool)

(declare-fun d!1542975 () Bool)

(assert (= bs!1161448 (and d!1542975 d!1542737)))

(declare-fun allKeysSameHash!1990 (List!54988 (_ BitVec 64) Hashable!7220) Bool)

(assert (=> bs!1161448 (= (dynLambda!22179 lambda!235250 (h!61299 (toList!7409 lm!2280))) (allKeysSameHash!1990 (_2!32300 (h!61299 (toList!7409 lm!2280))) (_1!32300 (h!61299 (toList!7409 lm!2280))) hashF!1509))))

(declare-fun m!5807094 () Bool)

(assert (=> bs!1161448 m!5807094))

(assert (=> b!4819650 d!1542975))

(declare-fun b_lambda!188869 () Bool)

(assert (= b_lambda!188839 (or b!4819294 b_lambda!188869)))

(declare-fun bs!1161449 () Bool)

(declare-fun d!1542979 () Bool)

(assert (= bs!1161449 (and d!1542979 b!4819294)))

(assert (=> bs!1161449 (= (dynLambda!22180 lambda!235240 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (contains!18683 lt!1968760 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(assert (=> bs!1161449 m!5806314))

(assert (=> d!1542847 d!1542979))

(declare-fun b_lambda!188871 () Bool)

(assert (= b_lambda!188857 (or start!499138 b_lambda!188871)))

(declare-fun bs!1161450 () Bool)

(declare-fun d!1542981 () Bool)

(assert (= bs!1161450 (and d!1542981 start!499138)))

(assert (=> bs!1161450 (= (dynLambda!22179 lambda!235168 (h!61299 (t!362485 (toList!7409 lm!2280)))) (noDuplicateKeys!2425 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))

(assert (=> bs!1161450 m!5806940))

(assert (=> b!4819726 d!1542981))

(declare-fun b_lambda!188873 () Bool)

(assert (= b_lambda!188865 (or d!1542723 b_lambda!188873)))

(declare-fun bs!1161452 () Bool)

(declare-fun d!1542983 () Bool)

(assert (= bs!1161452 (and d!1542983 d!1542723)))

(assert (=> bs!1161452 (= (dynLambda!22179 lambda!235244 (h!61299 (toList!7409 lm!2280))) (noDuplicateKeys!2425 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))

(assert (=> bs!1161452 m!5806324))

(assert (=> b!4819766 d!1542983))

(declare-fun b_lambda!188875 () Bool)

(assert (= b_lambda!188841 (or b!4819294 b_lambda!188875)))

(assert (=> b!4819581 d!1542979))

(declare-fun b_lambda!188877 () Bool)

(assert (= b_lambda!188847 (or d!1542683 b_lambda!188877)))

(declare-fun bs!1161453 () Bool)

(declare-fun d!1542987 () Bool)

(assert (= bs!1161453 (and d!1542987 d!1542683)))

(assert (=> bs!1161453 (= (dynLambda!22180 lambda!235241 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280))))) (contains!18683 lt!1968770 (_1!32299 (h!61298 (_2!32300 (h!61299 (toList!7409 lm!2280)))))))))

(declare-fun m!5807098 () Bool)

(assert (=> bs!1161453 m!5807098))

(assert (=> b!4819597 d!1542987))

(declare-fun b_lambda!188879 () Bool)

(assert (= b_lambda!188825 (or b!4819294 b_lambda!188879)))

(declare-fun bs!1161454 () Bool)

(declare-fun d!1542989 () Bool)

(assert (= bs!1161454 (and d!1542989 b!4819294)))

(assert (=> bs!1161454 (= (dynLambda!22180 lambda!235239 (h!61298 (toList!7410 lt!1968599))) (contains!18683 lt!1968599 (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun m!5807102 () Bool)

(assert (=> bs!1161454 m!5807102))

(assert (=> b!4819503 d!1542989))

(declare-fun b_lambda!188881 () Bool)

(assert (= b_lambda!188843 (or d!1542729 b_lambda!188881)))

(declare-fun bs!1161455 () Bool)

(declare-fun d!1542991 () Bool)

(assert (= bs!1161455 (and d!1542991 d!1542729)))

(assert (=> bs!1161455 (= (dynLambda!22179 lambda!235247 (h!61299 (t!362485 (toList!7409 lm!2280)))) (noDuplicateKeys!2425 (_2!32300 (h!61299 (t!362485 (toList!7409 lm!2280))))))))

(assert (=> bs!1161455 m!5806940))

(assert (=> b!4819585 d!1542991))

(declare-fun b_lambda!188883 () Bool)

(assert (= b_lambda!188859 (or d!1542683 b_lambda!188883)))

(declare-fun bs!1161456 () Bool)

(declare-fun d!1542995 () Bool)

(assert (= bs!1161456 (and d!1542995 d!1542683)))

(assert (=> bs!1161456 (= (dynLambda!22180 lambda!235241 (h!61298 (toList!7410 lt!1968599))) (contains!18683 lt!1968770 (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun m!5807108 () Bool)

(assert (=> bs!1161456 m!5807108))

(assert (=> b!4819741 d!1542995))

(declare-fun b_lambda!188885 () Bool)

(assert (= b_lambda!188827 (or b!4819294 b_lambda!188885)))

(declare-fun bs!1161457 () Bool)

(declare-fun d!1542997 () Bool)

(assert (= bs!1161457 (and d!1542997 b!4819294)))

(assert (=> bs!1161457 (= (dynLambda!22180 lambda!235240 (h!61298 (toList!7410 lt!1968599))) (contains!18683 lt!1968760 (_1!32299 (h!61298 (toList!7410 lt!1968599)))))))

(declare-fun m!5807110 () Bool)

(assert (=> bs!1161457 m!5807110))

(assert (=> b!4819505 d!1542997))

(declare-fun b_lambda!188887 () Bool)

(assert (= b_lambda!188823 (or b!4819294 b_lambda!188887)))

(declare-fun bs!1161458 () Bool)

(declare-fun d!1542999 () Bool)

(assert (= bs!1161458 (and d!1542999 b!4819294)))

(assert (=> bs!1161458 (= (dynLambda!22180 lambda!235240 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280)))))) (contains!18683 lt!1968760 (_1!32299 (h!61298 (t!362484 (_2!32300 (h!61299 (toList!7409 lm!2280))))))))))

(declare-fun m!5807112 () Bool)

(assert (=> bs!1161458 m!5807112))

(assert (=> b!4819482 d!1542999))

(declare-fun b_lambda!188889 () Bool)

(assert (= b_lambda!188831 (or b!4819294 b_lambda!188889)))

(declare-fun bs!1161459 () Bool)

(declare-fun d!1543001 () Bool)

(assert (= bs!1161459 (and d!1543001 b!4819294)))

(assert (=> bs!1161459 (= (dynLambda!22180 lambda!235240 (h!61298 (toList!7410 lt!1968765))) (contains!18683 lt!1968760 (_1!32299 (h!61298 (toList!7410 lt!1968765)))))))

(declare-fun m!5807114 () Bool)

(assert (=> bs!1161459 m!5807114))

(assert (=> b!4819538 d!1543001))

(check-sat (not b!4819703) (not d!1542753) (not d!1542847) (not b!4819651) (not d!1542955) (not b!4819750) (not d!1542869) (not bm!336072) (not bs!1161457) (not bs!1161448) (not b!4819547) (not b!4819444) (not b!4819600) (not b_lambda!188875) (not b!4819724) (not b!4819744) (not b!4819542) (not d!1542799) (not b!4819595) (not b!4819733) (not b_lambda!188879) (not bs!1161459) (not bm!336073) (not b_lambda!188869) (not b!4819729) (not b!4819504) (not d!1542811) (not d!1542949) (not b!4819682) (not b_lambda!188883) (not bm!336082) (not b_lambda!188871) (not bm!336075) (not b!4819736) (not b!4819590) (not b!4819767) (not b!4819548) (not d!1542899) (not b!4819500) (not b_lambda!188887) (not b!4819483) (not b!4819391) (not b_lambda!188867) (not b!4819445) (not b!4819584) (not b!4819495) (not b!4819557) (not b!4819556) (not b!4819737) (not d!1542855) (not d!1542863) (not b!4819381) (not b!4819553) (not d!1542885) (not b!4819580) (not d!1542833) (not d!1542897) (not d!1542929) (not b!4819474) (not b!4819543) (not d!1542805) (not b_lambda!188873) (not b_lambda!188819) (not b!4819496) (not b!4819773) (not b!4819742) (not bm!336076) (not b!4819598) (not b!4819646) (not b!4819414) (not b!4819582) (not b!4819539) (not b!4819438) (not b!4819392) (not b!4819506) (not bs!1161453) (not d!1542817) (not b!4819540) (not b!4819536) (not d!1542907) (not b!4819644) (not b_lambda!188889) (not bs!1161455) (not b!4819546) (not b_lambda!188885) (not b!4819589) (not b!4819735) (not d!1542859) (not d!1542893) (not b!4819705) (not b_lambda!188815) (not bs!1161454) (not b!4819502) (not bs!1161449) (not b!4819707) (not bs!1161458) (not d!1542791) (not b!4819537) (not b!4819679) (not bs!1161450) (not b!4819501) (not d!1542871) (not d!1542967) (not bm!336074) (not b!4819642) (not d!1542973) tp_is_empty!34327 (not bs!1161452) (not b!4819429) (not b_lambda!188821) (not b!4819706) (not b!4819656) (not bm!336083) (not b!4819591) (not b!4819772) (not d!1542937) (not b!4819734) (not b!4819645) (not d!1542789) (not d!1542939) (not b!4819541) (not d!1542895) (not d!1542751) (not bs!1161456) (not b!4819653) (not b!4819727) (not b!4819494) (not b_lambda!188877) (not b!4819677) (not b!4819412) (not d!1542935) (not b!4819497) (not b!4819643) (not b!4819586) (not b!4819685) (not b_lambda!188881) (not d!1542891) (not b!4819702) (not d!1542887) (not b!4819555) tp_is_empty!34325 (not bm!336084) (not b!4819390) (not d!1542837))
(check-sat)
