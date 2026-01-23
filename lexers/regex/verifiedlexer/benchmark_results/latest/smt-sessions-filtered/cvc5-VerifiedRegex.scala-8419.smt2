; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437082 () Bool)

(assert start!437082)

(declare-fun res!1848586 () Bool)

(declare-fun e!2776263 () Bool)

(assert (=> start!437082 (=> (not res!1848586) (not e!2776263))))

(declare-datatypes ((K!11498 0))(
  ( (K!11499 (val!17469 Int)) )
))
(declare-datatypes ((V!11744 0))(
  ( (V!11745 (val!17470 Int)) )
))
(declare-datatypes ((tuple2!50258 0))(
  ( (tuple2!50259 (_1!28423 K!11498) (_2!28423 V!11744)) )
))
(declare-datatypes ((List!50233 0))(
  ( (Nil!50109) (Cons!50109 (h!55854 tuple2!50258) (t!357183 List!50233)) )
))
(declare-datatypes ((tuple2!50260 0))(
  ( (tuple2!50261 (_1!28424 (_ BitVec 64)) (_2!28424 List!50233)) )
))
(declare-datatypes ((List!50234 0))(
  ( (Nil!50110) (Cons!50110 (h!55855 tuple2!50260) (t!357184 List!50234)) )
))
(declare-datatypes ((ListLongMap!2577 0))(
  ( (ListLongMap!2578 (toList!3921 List!50234)) )
))
(declare-fun lm!1853 () ListLongMap!2577)

(declare-fun lambda!160942 () Int)

(declare-fun forall!9888 (List!50234 Int) Bool)

(assert (=> start!437082 (= res!1848586 (forall!9888 (toList!3921 lm!1853) lambda!160942))))

(assert (=> start!437082 e!2776263))

(declare-fun e!2776261 () Bool)

(declare-fun inv!65685 (ListLongMap!2577) Bool)

(assert (=> start!437082 (and (inv!65685 lm!1853) e!2776261)))

(assert (=> start!437082 true))

(declare-fun e!2776260 () Bool)

(assert (=> start!437082 e!2776260))

(declare-fun tp_is_empty!27049 () Bool)

(assert (=> start!437082 tp_is_empty!27049))

(declare-fun b!4458504 () Bool)

(declare-fun res!1848589 () Bool)

(assert (=> b!4458504 (=> (not res!1848589) (not e!2776263))))

(declare-datatypes ((Hashable!5364 0))(
  ( (HashableExt!5363 (__x!31067 Int)) )
))
(declare-fun hashF!1313 () Hashable!5364)

(declare-fun allKeysSameHashInMap!1076 (ListLongMap!2577 Hashable!5364) Bool)

(assert (=> b!4458504 (= res!1848589 (allKeysSameHashInMap!1076 lm!1853 hashF!1313))))

(declare-fun b!4458505 () Bool)

(declare-fun res!1848590 () Bool)

(declare-fun e!2776262 () Bool)

(assert (=> b!4458505 (=> (not res!1848590) (not e!2776262))))

(declare-fun l!12858 () List!50233)

(assert (=> b!4458505 (= res!1848590 (is-Cons!50109 l!12858))))

(declare-fun b!4458506 () Bool)

(declare-fun containsKey!1351 (List!50233 K!11498) Bool)

(assert (=> b!4458506 (= e!2776262 (not (not (containsKey!1351 (t!357183 l!12858) (_1!28423 (h!55854 l!12858))))))))

(declare-datatypes ((ListMap!3159 0))(
  ( (ListMap!3160 (toList!3922 List!50233)) )
))
(declare-fun lt!1649555 () ListMap!3159)

(declare-fun key!4412 () K!11498)

(declare-fun contains!12615 (ListMap!3159 K!11498) Bool)

(declare-fun addToMapMapFromBucket!538 (List!50233 ListMap!3159) ListMap!3159)

(assert (=> b!4458506 (contains!12615 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555) key!4412)))

(declare-datatypes ((Unit!86381 0))(
  ( (Unit!86382) )
))
(declare-fun lt!1649556 () Unit!86381)

(declare-fun lemmaAddToMapMaintainsContains!43 (ListLongMap!2577 K!11498 List!50233 Hashable!5364) Unit!86381)

(assert (=> b!4458506 (= lt!1649556 (lemmaAddToMapMaintainsContains!43 lm!1853 key!4412 (t!357183 l!12858) hashF!1313))))

(declare-fun b!4458507 () Bool)

(assert (=> b!4458507 (= e!2776263 e!2776262)))

(declare-fun res!1848588 () Bool)

(assert (=> b!4458507 (=> (not res!1848588) (not e!2776262))))

(assert (=> b!4458507 (= res!1848588 (contains!12615 lt!1649555 key!4412))))

(declare-fun extractMap!1025 (List!50234) ListMap!3159)

(assert (=> b!4458507 (= lt!1649555 (extractMap!1025 (toList!3921 lm!1853)))))

(declare-fun b!4458508 () Bool)

(declare-fun res!1848587 () Bool)

(assert (=> b!4458508 (=> (not res!1848587) (not e!2776263))))

(declare-fun noDuplicateKeys!957 (List!50233) Bool)

(assert (=> b!4458508 (= res!1848587 (noDuplicateKeys!957 l!12858))))

(declare-fun tp_is_empty!27051 () Bool)

(declare-fun b!4458509 () Bool)

(declare-fun tp!1335414 () Bool)

(assert (=> b!4458509 (= e!2776260 (and tp_is_empty!27049 tp_is_empty!27051 tp!1335414))))

(declare-fun b!4458510 () Bool)

(declare-fun tp!1335415 () Bool)

(assert (=> b!4458510 (= e!2776261 tp!1335415)))

(assert (= (and start!437082 res!1848586) b!4458504))

(assert (= (and b!4458504 res!1848589) b!4458508))

(assert (= (and b!4458508 res!1848587) b!4458507))

(assert (= (and b!4458507 res!1848588) b!4458505))

(assert (= (and b!4458505 res!1848590) b!4458506))

(assert (= start!437082 b!4458510))

(assert (= (and start!437082 (is-Cons!50109 l!12858)) b!4458509))

(declare-fun m!5161037 () Bool)

(assert (=> b!4458506 m!5161037))

(declare-fun m!5161039 () Bool)

(assert (=> b!4458506 m!5161039))

(assert (=> b!4458506 m!5161039))

(declare-fun m!5161041 () Bool)

(assert (=> b!4458506 m!5161041))

(declare-fun m!5161043 () Bool)

(assert (=> b!4458506 m!5161043))

(declare-fun m!5161045 () Bool)

(assert (=> b!4458508 m!5161045))

(declare-fun m!5161047 () Bool)

(assert (=> start!437082 m!5161047))

(declare-fun m!5161049 () Bool)

(assert (=> start!437082 m!5161049))

(declare-fun m!5161051 () Bool)

(assert (=> b!4458507 m!5161051))

(declare-fun m!5161053 () Bool)

(assert (=> b!4458507 m!5161053))

(declare-fun m!5161055 () Bool)

(assert (=> b!4458504 m!5161055))

(push 1)

(assert (not b!4458504))

(assert tp_is_empty!27049)

(assert tp_is_empty!27051)

(assert (not b!4458509))

(assert (not b!4458510))

(assert (not b!4458508))

(assert (not start!437082))

(assert (not b!4458507))

(assert (not b!4458506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359776 () Bool)

(declare-fun res!1848610 () Bool)

(declare-fun e!2776280 () Bool)

(assert (=> d!1359776 (=> res!1848610 e!2776280)))

(assert (=> d!1359776 (= res!1848610 (and (is-Cons!50109 (t!357183 l!12858)) (= (_1!28423 (h!55854 (t!357183 l!12858))) (_1!28423 (h!55854 l!12858)))))))

(assert (=> d!1359776 (= (containsKey!1351 (t!357183 l!12858) (_1!28423 (h!55854 l!12858))) e!2776280)))

(declare-fun b!4458536 () Bool)

(declare-fun e!2776281 () Bool)

(assert (=> b!4458536 (= e!2776280 e!2776281)))

(declare-fun res!1848611 () Bool)

(assert (=> b!4458536 (=> (not res!1848611) (not e!2776281))))

(assert (=> b!4458536 (= res!1848611 (is-Cons!50109 (t!357183 l!12858)))))

(declare-fun b!4458537 () Bool)

(assert (=> b!4458537 (= e!2776281 (containsKey!1351 (t!357183 (t!357183 l!12858)) (_1!28423 (h!55854 l!12858))))))

(assert (= (and d!1359776 (not res!1848610)) b!4458536))

(assert (= (and b!4458536 res!1848611) b!4458537))

(declare-fun m!5161077 () Bool)

(assert (=> b!4458537 m!5161077))

(assert (=> b!4458506 d!1359776))

(declare-fun b!4458562 () Bool)

(declare-fun e!2776301 () Unit!86381)

(declare-fun lt!1649582 () Unit!86381)

(assert (=> b!4458562 (= e!2776301 lt!1649582)))

(declare-fun lt!1649583 () Unit!86381)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!758 (List!50233 K!11498) Unit!86381)

(assert (=> b!4458562 (= lt!1649583 (lemmaContainsKeyImpliesGetValueByKeyDefined!758 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(declare-datatypes ((Option!10867 0))(
  ( (None!10866) (Some!10866 (v!44124 V!11744)) )
))
(declare-fun isDefined!8155 (Option!10867) Bool)

(declare-fun getValueByKey!853 (List!50233 K!11498) Option!10867)

(assert (=> b!4458562 (isDefined!8155 (getValueByKey!853 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(declare-fun lt!1649585 () Unit!86381)

(assert (=> b!4458562 (= lt!1649585 lt!1649583)))

(declare-fun lemmaInListThenGetKeysListContains!331 (List!50233 K!11498) Unit!86381)

(assert (=> b!4458562 (= lt!1649582 (lemmaInListThenGetKeysListContains!331 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(declare-fun call!310293 () Bool)

(assert (=> b!4458562 call!310293))

(declare-fun bm!310288 () Bool)

(declare-datatypes ((List!50237 0))(
  ( (Nil!50113) (Cons!50113 (h!55858 K!11498) (t!357187 List!50237)) )
))
(declare-fun e!2776302 () List!50237)

(declare-fun contains!12617 (List!50237 K!11498) Bool)

(assert (=> bm!310288 (= call!310293 (contains!12617 e!2776302 key!4412))))

(declare-fun c!758847 () Bool)

(declare-fun c!758845 () Bool)

(assert (=> bm!310288 (= c!758847 c!758845)))

(declare-fun b!4458563 () Bool)

(declare-fun e!2776304 () Bool)

(declare-fun keys!17242 (ListMap!3159) List!50237)

(assert (=> b!4458563 (= e!2776304 (not (contains!12617 (keys!17242 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412)))))

(declare-fun d!1359778 () Bool)

(declare-fun e!2776305 () Bool)

(assert (=> d!1359778 e!2776305))

(declare-fun res!1848626 () Bool)

(assert (=> d!1359778 (=> res!1848626 e!2776305)))

(assert (=> d!1359778 (= res!1848626 e!2776304)))

(declare-fun res!1848625 () Bool)

(assert (=> d!1359778 (=> (not res!1848625) (not e!2776304))))

(declare-fun lt!1649586 () Bool)

(assert (=> d!1359778 (= res!1848625 (not lt!1649586))))

(declare-fun lt!1649584 () Bool)

(assert (=> d!1359778 (= lt!1649586 lt!1649584)))

(declare-fun lt!1649580 () Unit!86381)

(assert (=> d!1359778 (= lt!1649580 e!2776301)))

(assert (=> d!1359778 (= c!758845 lt!1649584)))

(declare-fun containsKey!1353 (List!50233 K!11498) Bool)

(assert (=> d!1359778 (= lt!1649584 (containsKey!1353 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(assert (=> d!1359778 (= (contains!12615 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555) key!4412) lt!1649586)))

(declare-fun b!4458564 () Bool)

(declare-fun e!2776303 () Unit!86381)

(declare-fun Unit!86385 () Unit!86381)

(assert (=> b!4458564 (= e!2776303 Unit!86385)))

(declare-fun b!4458565 () Bool)

(declare-fun e!2776300 () Bool)

(assert (=> b!4458565 (= e!2776305 e!2776300)))

(declare-fun res!1848624 () Bool)

(assert (=> b!4458565 (=> (not res!1848624) (not e!2776300))))

(assert (=> b!4458565 (= res!1848624 (isDefined!8155 (getValueByKey!853 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412)))))

(declare-fun b!4458566 () Bool)

(assert (=> b!4458566 (= e!2776301 e!2776303)))

(declare-fun c!758846 () Bool)

(assert (=> b!4458566 (= c!758846 call!310293)))

(declare-fun b!4458567 () Bool)

(assert (=> b!4458567 (= e!2776302 (keys!17242 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)))))

(declare-fun b!4458568 () Bool)

(assert (=> b!4458568 (= e!2776300 (contains!12617 (keys!17242 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(declare-fun b!4458569 () Bool)

(assert (=> b!4458569 false))

(declare-fun lt!1649581 () Unit!86381)

(declare-fun lt!1649579 () Unit!86381)

(assert (=> b!4458569 (= lt!1649581 lt!1649579)))

(assert (=> b!4458569 (containsKey!1353 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!334 (List!50233 K!11498) Unit!86381)

(assert (=> b!4458569 (= lt!1649579 (lemmaInGetKeysListThenContainsKey!334 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555)) key!4412))))

(declare-fun Unit!86386 () Unit!86381)

(assert (=> b!4458569 (= e!2776303 Unit!86386)))

(declare-fun b!4458570 () Bool)

(declare-fun getKeysList!335 (List!50233) List!50237)

(assert (=> b!4458570 (= e!2776302 (getKeysList!335 (toList!3922 (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555))))))

(assert (= (and d!1359778 c!758845) b!4458562))

(assert (= (and d!1359778 (not c!758845)) b!4458566))

(assert (= (and b!4458566 c!758846) b!4458569))

(assert (= (and b!4458566 (not c!758846)) b!4458564))

(assert (= (or b!4458562 b!4458566) bm!310288))

(assert (= (and bm!310288 c!758847) b!4458570))

(assert (= (and bm!310288 (not c!758847)) b!4458567))

(assert (= (and d!1359778 res!1848625) b!4458563))

(assert (= (and d!1359778 (not res!1848626)) b!4458565))

(assert (= (and b!4458565 res!1848624) b!4458568))

(declare-fun m!5161081 () Bool)

(assert (=> b!4458565 m!5161081))

(assert (=> b!4458565 m!5161081))

(declare-fun m!5161083 () Bool)

(assert (=> b!4458565 m!5161083))

(assert (=> b!4458563 m!5161039))

(declare-fun m!5161085 () Bool)

(assert (=> b!4458563 m!5161085))

(assert (=> b!4458563 m!5161085))

(declare-fun m!5161087 () Bool)

(assert (=> b!4458563 m!5161087))

(declare-fun m!5161089 () Bool)

(assert (=> b!4458570 m!5161089))

(declare-fun m!5161091 () Bool)

(assert (=> b!4458569 m!5161091))

(declare-fun m!5161093 () Bool)

(assert (=> b!4458569 m!5161093))

(declare-fun m!5161095 () Bool)

(assert (=> bm!310288 m!5161095))

(assert (=> d!1359778 m!5161091))

(assert (=> b!4458567 m!5161039))

(assert (=> b!4458567 m!5161085))

(assert (=> b!4458568 m!5161039))

(assert (=> b!4458568 m!5161085))

(assert (=> b!4458568 m!5161085))

(assert (=> b!4458568 m!5161087))

(declare-fun m!5161097 () Bool)

(assert (=> b!4458562 m!5161097))

(assert (=> b!4458562 m!5161081))

(assert (=> b!4458562 m!5161081))

(assert (=> b!4458562 m!5161083))

(declare-fun m!5161099 () Bool)

(assert (=> b!4458562 m!5161099))

(assert (=> b!4458506 d!1359778))

(declare-fun b!4458611 () Bool)

(assert (=> b!4458611 true))

(declare-fun bs!791185 () Bool)

(declare-fun b!4458612 () Bool)

(assert (= bs!791185 (and b!4458612 b!4458611)))

(declare-fun lambda!160975 () Int)

(declare-fun lambda!160974 () Int)

(assert (=> bs!791185 (= lambda!160975 lambda!160974)))

(assert (=> b!4458612 true))

(declare-fun lambda!160976 () Int)

(declare-fun lt!1649654 () ListMap!3159)

(assert (=> bs!791185 (= (= lt!1649654 lt!1649555) (= lambda!160976 lambda!160974))))

(assert (=> b!4458612 (= (= lt!1649654 lt!1649555) (= lambda!160976 lambda!160975))))

(assert (=> b!4458612 true))

(declare-fun bs!791186 () Bool)

(declare-fun d!1359784 () Bool)

(assert (= bs!791186 (and d!1359784 b!4458611)))

(declare-fun lambda!160977 () Int)

(declare-fun lt!1649669 () ListMap!3159)

(assert (=> bs!791186 (= (= lt!1649669 lt!1649555) (= lambda!160977 lambda!160974))))

(declare-fun bs!791187 () Bool)

(assert (= bs!791187 (and d!1359784 b!4458612)))

(assert (=> bs!791187 (= (= lt!1649669 lt!1649555) (= lambda!160977 lambda!160975))))

(assert (=> bs!791187 (= (= lt!1649669 lt!1649654) (= lambda!160977 lambda!160976))))

(assert (=> d!1359784 true))

(declare-fun bm!310298 () Bool)

(declare-fun call!310304 () Bool)

(declare-fun c!758859 () Bool)

(declare-fun forall!9890 (List!50233 Int) Bool)

(assert (=> bm!310298 (= call!310304 (forall!9890 (ite c!758859 (toList!3922 lt!1649555) (t!357183 l!12858)) (ite c!758859 lambda!160974 lambda!160976)))))

(declare-fun e!2776330 () Bool)

(assert (=> d!1359784 e!2776330))

(declare-fun res!1848643 () Bool)

(assert (=> d!1359784 (=> (not res!1848643) (not e!2776330))))

(assert (=> d!1359784 (= res!1848643 (forall!9890 (t!357183 l!12858) lambda!160977))))

(declare-fun e!2776331 () ListMap!3159)

(assert (=> d!1359784 (= lt!1649669 e!2776331)))

(assert (=> d!1359784 (= c!758859 (is-Nil!50109 (t!357183 l!12858)))))

(assert (=> d!1359784 (noDuplicateKeys!957 (t!357183 l!12858))))

(assert (=> d!1359784 (= (addToMapMapFromBucket!538 (t!357183 l!12858) lt!1649555) lt!1649669)))

(declare-fun bm!310299 () Bool)

(declare-fun call!310303 () Unit!86381)

(declare-fun lemmaContainsAllItsOwnKeys!237 (ListMap!3159) Unit!86381)

(assert (=> bm!310299 (= call!310303 (lemmaContainsAllItsOwnKeys!237 lt!1649555))))

(declare-fun b!4458608 () Bool)

(declare-fun invariantList!889 (List!50233) Bool)

(assert (=> b!4458608 (= e!2776330 (invariantList!889 (toList!3922 lt!1649669)))))

(declare-fun b!4458609 () Bool)

(declare-fun e!2776332 () Bool)

(assert (=> b!4458609 (= e!2776332 (forall!9890 (toList!3922 lt!1649555) lambda!160976))))

(declare-fun b!4458610 () Bool)

(declare-fun res!1848644 () Bool)

(assert (=> b!4458610 (=> (not res!1848644) (not e!2776330))))

(assert (=> b!4458610 (= res!1848644 (forall!9890 (toList!3922 lt!1649555) lambda!160977))))

(declare-fun call!310305 () Bool)

(declare-fun bm!310300 () Bool)

(assert (=> bm!310300 (= call!310305 (forall!9890 (toList!3922 lt!1649555) (ite c!758859 lambda!160974 lambda!160975)))))

(assert (=> b!4458611 (= e!2776331 lt!1649555)))

(declare-fun lt!1649659 () Unit!86381)

(assert (=> b!4458611 (= lt!1649659 call!310303)))

(assert (=> b!4458611 call!310304))

(declare-fun lt!1649671 () Unit!86381)

(assert (=> b!4458611 (= lt!1649671 lt!1649659)))

(assert (=> b!4458611 call!310305))

(declare-fun lt!1649662 () Unit!86381)

(declare-fun Unit!86387 () Unit!86381)

(assert (=> b!4458611 (= lt!1649662 Unit!86387)))

(assert (=> b!4458612 (= e!2776331 lt!1649654)))

(declare-fun lt!1649668 () ListMap!3159)

(declare-fun +!1314 (ListMap!3159 tuple2!50258) ListMap!3159)

(assert (=> b!4458612 (= lt!1649668 (+!1314 lt!1649555 (h!55854 (t!357183 l!12858))))))

(assert (=> b!4458612 (= lt!1649654 (addToMapMapFromBucket!538 (t!357183 (t!357183 l!12858)) (+!1314 lt!1649555 (h!55854 (t!357183 l!12858)))))))

(declare-fun lt!1649673 () Unit!86381)

(assert (=> b!4458612 (= lt!1649673 call!310303)))

(assert (=> b!4458612 call!310305))

(declare-fun lt!1649666 () Unit!86381)

(assert (=> b!4458612 (= lt!1649666 lt!1649673)))

(assert (=> b!4458612 (forall!9890 (toList!3922 lt!1649668) lambda!160976)))

(declare-fun lt!1649670 () Unit!86381)

(declare-fun Unit!86388 () Unit!86381)

(assert (=> b!4458612 (= lt!1649670 Unit!86388)))

(assert (=> b!4458612 (forall!9890 (t!357183 (t!357183 l!12858)) lambda!160976)))

(declare-fun lt!1649657 () Unit!86381)

(declare-fun Unit!86389 () Unit!86381)

(assert (=> b!4458612 (= lt!1649657 Unit!86389)))

(declare-fun lt!1649667 () Unit!86381)

(declare-fun Unit!86390 () Unit!86381)

(assert (=> b!4458612 (= lt!1649667 Unit!86390)))

(declare-fun lt!1649656 () Unit!86381)

(declare-fun forallContained!2187 (List!50233 Int tuple2!50258) Unit!86381)

(assert (=> b!4458612 (= lt!1649656 (forallContained!2187 (toList!3922 lt!1649668) lambda!160976 (h!55854 (t!357183 l!12858))))))

(assert (=> b!4458612 (contains!12615 lt!1649668 (_1!28423 (h!55854 (t!357183 l!12858))))))

(declare-fun lt!1649665 () Unit!86381)

(declare-fun Unit!86391 () Unit!86381)

(assert (=> b!4458612 (= lt!1649665 Unit!86391)))

(assert (=> b!4458612 (contains!12615 lt!1649654 (_1!28423 (h!55854 (t!357183 l!12858))))))

(declare-fun lt!1649653 () Unit!86381)

(declare-fun Unit!86392 () Unit!86381)

(assert (=> b!4458612 (= lt!1649653 Unit!86392)))

(assert (=> b!4458612 call!310304))

(declare-fun lt!1649661 () Unit!86381)

(declare-fun Unit!86393 () Unit!86381)

(assert (=> b!4458612 (= lt!1649661 Unit!86393)))

(assert (=> b!4458612 (forall!9890 (toList!3922 lt!1649668) lambda!160976)))

(declare-fun lt!1649655 () Unit!86381)

(declare-fun Unit!86394 () Unit!86381)

(assert (=> b!4458612 (= lt!1649655 Unit!86394)))

(declare-fun lt!1649658 () Unit!86381)

(declare-fun Unit!86395 () Unit!86381)

(assert (=> b!4458612 (= lt!1649658 Unit!86395)))

(declare-fun lt!1649664 () Unit!86381)

(declare-fun addForallContainsKeyThenBeforeAdding!236 (ListMap!3159 ListMap!3159 K!11498 V!11744) Unit!86381)

(assert (=> b!4458612 (= lt!1649664 (addForallContainsKeyThenBeforeAdding!236 lt!1649555 lt!1649654 (_1!28423 (h!55854 (t!357183 l!12858))) (_2!28423 (h!55854 (t!357183 l!12858)))))))

(assert (=> b!4458612 (forall!9890 (toList!3922 lt!1649555) lambda!160976)))

(declare-fun lt!1649672 () Unit!86381)

(assert (=> b!4458612 (= lt!1649672 lt!1649664)))

(assert (=> b!4458612 (forall!9890 (toList!3922 lt!1649555) lambda!160976)))

(declare-fun lt!1649663 () Unit!86381)

(declare-fun Unit!86396 () Unit!86381)

(assert (=> b!4458612 (= lt!1649663 Unit!86396)))

(declare-fun res!1848642 () Bool)

(assert (=> b!4458612 (= res!1848642 (forall!9890 (t!357183 l!12858) lambda!160976))))

(assert (=> b!4458612 (=> (not res!1848642) (not e!2776332))))

(assert (=> b!4458612 e!2776332))

(declare-fun lt!1649660 () Unit!86381)

(declare-fun Unit!86397 () Unit!86381)

(assert (=> b!4458612 (= lt!1649660 Unit!86397)))

(assert (= (and d!1359784 c!758859) b!4458611))

(assert (= (and d!1359784 (not c!758859)) b!4458612))

(assert (= (and b!4458612 res!1848642) b!4458609))

(assert (= (or b!4458611 b!4458612) bm!310299))

(assert (= (or b!4458611 b!4458612) bm!310298))

(assert (= (or b!4458611 b!4458612) bm!310300))

(assert (= (and d!1359784 res!1848643) b!4458610))

(assert (= (and b!4458610 res!1848644) b!4458608))

(declare-fun m!5161121 () Bool)

(assert (=> bm!310298 m!5161121))

(declare-fun m!5161123 () Bool)

(assert (=> bm!310299 m!5161123))

(declare-fun m!5161125 () Bool)

(assert (=> b!4458608 m!5161125))

(declare-fun m!5161127 () Bool)

(assert (=> b!4458612 m!5161127))

(declare-fun m!5161129 () Bool)

(assert (=> b!4458612 m!5161129))

(declare-fun m!5161131 () Bool)

(assert (=> b!4458612 m!5161131))

(declare-fun m!5161133 () Bool)

(assert (=> b!4458612 m!5161133))

(declare-fun m!5161135 () Bool)

(assert (=> b!4458612 m!5161135))

(assert (=> b!4458612 m!5161135))

(assert (=> b!4458612 m!5161133))

(declare-fun m!5161137 () Bool)

(assert (=> b!4458612 m!5161137))

(declare-fun m!5161139 () Bool)

(assert (=> b!4458612 m!5161139))

(declare-fun m!5161141 () Bool)

(assert (=> b!4458612 m!5161141))

(declare-fun m!5161143 () Bool)

(assert (=> b!4458612 m!5161143))

(declare-fun m!5161145 () Bool)

(assert (=> b!4458612 m!5161145))

(assert (=> b!4458612 m!5161139))

(declare-fun m!5161147 () Bool)

(assert (=> d!1359784 m!5161147))

(declare-fun m!5161149 () Bool)

(assert (=> d!1359784 m!5161149))

(assert (=> b!4458609 m!5161133))

(declare-fun m!5161151 () Bool)

(assert (=> b!4458610 m!5161151))

(declare-fun m!5161153 () Bool)

(assert (=> bm!310300 m!5161153))

(assert (=> b!4458506 d!1359784))

(declare-fun bs!791188 () Bool)

(declare-fun d!1359788 () Bool)

(assert (= bs!791188 (and d!1359788 start!437082)))

(declare-fun lambda!160980 () Int)

(assert (=> bs!791188 (= lambda!160980 lambda!160942)))

(assert (=> d!1359788 (contains!12615 (addToMapMapFromBucket!538 (t!357183 l!12858) (extractMap!1025 (toList!3921 lm!1853))) key!4412)))

(declare-fun lt!1649676 () Unit!86381)

(declare-fun choose!28401 (ListLongMap!2577 K!11498 List!50233 Hashable!5364) Unit!86381)

(assert (=> d!1359788 (= lt!1649676 (choose!28401 lm!1853 key!4412 (t!357183 l!12858) hashF!1313))))

(assert (=> d!1359788 (forall!9888 (toList!3921 lm!1853) lambda!160980)))

(assert (=> d!1359788 (= (lemmaAddToMapMaintainsContains!43 lm!1853 key!4412 (t!357183 l!12858) hashF!1313) lt!1649676)))

(declare-fun bs!791189 () Bool)

(assert (= bs!791189 d!1359788))

(assert (=> bs!791189 m!5161053))

(declare-fun m!5161155 () Bool)

(assert (=> bs!791189 m!5161155))

(declare-fun m!5161157 () Bool)

(assert (=> bs!791189 m!5161157))

(assert (=> bs!791189 m!5161155))

(declare-fun m!5161159 () Bool)

(assert (=> bs!791189 m!5161159))

(assert (=> bs!791189 m!5161053))

(declare-fun m!5161161 () Bool)

(assert (=> bs!791189 m!5161161))

(assert (=> b!4458506 d!1359788))

(declare-fun bs!791190 () Bool)

(declare-fun d!1359790 () Bool)

(assert (= bs!791190 (and d!1359790 start!437082)))

(declare-fun lambda!160983 () Int)

(assert (=> bs!791190 (not (= lambda!160983 lambda!160942))))

(declare-fun bs!791191 () Bool)

(assert (= bs!791191 (and d!1359790 d!1359788)))

(assert (=> bs!791191 (not (= lambda!160983 lambda!160980))))

(assert (=> d!1359790 true))

(assert (=> d!1359790 (= (allKeysSameHashInMap!1076 lm!1853 hashF!1313) (forall!9888 (toList!3921 lm!1853) lambda!160983))))

(declare-fun bs!791192 () Bool)

(assert (= bs!791192 d!1359790))

(declare-fun m!5161163 () Bool)

(assert (=> bs!791192 m!5161163))

(assert (=> b!4458504 d!1359790))

(declare-fun d!1359792 () Bool)

(declare-fun res!1848649 () Bool)

(declare-fun e!2776337 () Bool)

(assert (=> d!1359792 (=> res!1848649 e!2776337)))

(assert (=> d!1359792 (= res!1848649 (not (is-Cons!50109 l!12858)))))

(assert (=> d!1359792 (= (noDuplicateKeys!957 l!12858) e!2776337)))

(declare-fun b!4458621 () Bool)

(declare-fun e!2776338 () Bool)

(assert (=> b!4458621 (= e!2776337 e!2776338)))

(declare-fun res!1848650 () Bool)

(assert (=> b!4458621 (=> (not res!1848650) (not e!2776338))))

(assert (=> b!4458621 (= res!1848650 (not (containsKey!1351 (t!357183 l!12858) (_1!28423 (h!55854 l!12858)))))))

(declare-fun b!4458622 () Bool)

(assert (=> b!4458622 (= e!2776338 (noDuplicateKeys!957 (t!357183 l!12858)))))

(assert (= (and d!1359792 (not res!1848649)) b!4458621))

(assert (= (and b!4458621 res!1848650) b!4458622))

(assert (=> b!4458621 m!5161037))

(assert (=> b!4458622 m!5161149))

(assert (=> b!4458508 d!1359792))

(declare-fun d!1359794 () Bool)

(declare-fun res!1848655 () Bool)

(declare-fun e!2776343 () Bool)

(assert (=> d!1359794 (=> res!1848655 e!2776343)))

(assert (=> d!1359794 (= res!1848655 (is-Nil!50110 (toList!3921 lm!1853)))))

(assert (=> d!1359794 (= (forall!9888 (toList!3921 lm!1853) lambda!160942) e!2776343)))

(declare-fun b!4458627 () Bool)

(declare-fun e!2776344 () Bool)

(assert (=> b!4458627 (= e!2776343 e!2776344)))

(declare-fun res!1848656 () Bool)

(assert (=> b!4458627 (=> (not res!1848656) (not e!2776344))))

(declare-fun dynLambda!20981 (Int tuple2!50260) Bool)

(assert (=> b!4458627 (= res!1848656 (dynLambda!20981 lambda!160942 (h!55855 (toList!3921 lm!1853))))))

(declare-fun b!4458628 () Bool)

(assert (=> b!4458628 (= e!2776344 (forall!9888 (t!357184 (toList!3921 lm!1853)) lambda!160942))))

(assert (= (and d!1359794 (not res!1848655)) b!4458627))

(assert (= (and b!4458627 res!1848656) b!4458628))

(declare-fun b_lambda!147725 () Bool)

(assert (=> (not b_lambda!147725) (not b!4458627)))

(declare-fun m!5161165 () Bool)

(assert (=> b!4458627 m!5161165))

(declare-fun m!5161167 () Bool)

(assert (=> b!4458628 m!5161167))

(assert (=> start!437082 d!1359794))

(declare-fun d!1359796 () Bool)

(declare-fun isStrictlySorted!318 (List!50234) Bool)

(assert (=> d!1359796 (= (inv!65685 lm!1853) (isStrictlySorted!318 (toList!3921 lm!1853)))))

(declare-fun bs!791193 () Bool)

(assert (= bs!791193 d!1359796))

(declare-fun m!5161169 () Bool)

(assert (=> bs!791193 m!5161169))

(assert (=> start!437082 d!1359796))

(declare-fun b!4458629 () Bool)

(declare-fun e!2776346 () Unit!86381)

(declare-fun lt!1649680 () Unit!86381)

(assert (=> b!4458629 (= e!2776346 lt!1649680)))

(declare-fun lt!1649681 () Unit!86381)

(assert (=> b!4458629 (= lt!1649681 (lemmaContainsKeyImpliesGetValueByKeyDefined!758 (toList!3922 lt!1649555) key!4412))))

(assert (=> b!4458629 (isDefined!8155 (getValueByKey!853 (toList!3922 lt!1649555) key!4412))))

(declare-fun lt!1649683 () Unit!86381)

(assert (=> b!4458629 (= lt!1649683 lt!1649681)))

(assert (=> b!4458629 (= lt!1649680 (lemmaInListThenGetKeysListContains!331 (toList!3922 lt!1649555) key!4412))))

(declare-fun call!310306 () Bool)

(assert (=> b!4458629 call!310306))

(declare-fun bm!310301 () Bool)

(declare-fun e!2776347 () List!50237)

(assert (=> bm!310301 (= call!310306 (contains!12617 e!2776347 key!4412))))

(declare-fun c!758862 () Bool)

(declare-fun c!758860 () Bool)

(assert (=> bm!310301 (= c!758862 c!758860)))

(declare-fun b!4458630 () Bool)

(declare-fun e!2776349 () Bool)

(assert (=> b!4458630 (= e!2776349 (not (contains!12617 (keys!17242 lt!1649555) key!4412)))))

(declare-fun d!1359798 () Bool)

(declare-fun e!2776350 () Bool)

(assert (=> d!1359798 e!2776350))

(declare-fun res!1848659 () Bool)

(assert (=> d!1359798 (=> res!1848659 e!2776350)))

(assert (=> d!1359798 (= res!1848659 e!2776349)))

(declare-fun res!1848658 () Bool)

(assert (=> d!1359798 (=> (not res!1848658) (not e!2776349))))

(declare-fun lt!1649684 () Bool)

(assert (=> d!1359798 (= res!1848658 (not lt!1649684))))

(declare-fun lt!1649682 () Bool)

(assert (=> d!1359798 (= lt!1649684 lt!1649682)))

(declare-fun lt!1649678 () Unit!86381)

(assert (=> d!1359798 (= lt!1649678 e!2776346)))

(assert (=> d!1359798 (= c!758860 lt!1649682)))

(assert (=> d!1359798 (= lt!1649682 (containsKey!1353 (toList!3922 lt!1649555) key!4412))))

(assert (=> d!1359798 (= (contains!12615 lt!1649555 key!4412) lt!1649684)))

(declare-fun b!4458631 () Bool)

(declare-fun e!2776348 () Unit!86381)

(declare-fun Unit!86398 () Unit!86381)

(assert (=> b!4458631 (= e!2776348 Unit!86398)))

(declare-fun b!4458632 () Bool)

(declare-fun e!2776345 () Bool)

(assert (=> b!4458632 (= e!2776350 e!2776345)))

(declare-fun res!1848657 () Bool)

(assert (=> b!4458632 (=> (not res!1848657) (not e!2776345))))

(assert (=> b!4458632 (= res!1848657 (isDefined!8155 (getValueByKey!853 (toList!3922 lt!1649555) key!4412)))))

(declare-fun b!4458633 () Bool)

(assert (=> b!4458633 (= e!2776346 e!2776348)))

(declare-fun c!758861 () Bool)

(assert (=> b!4458633 (= c!758861 call!310306)))

(declare-fun b!4458634 () Bool)

(assert (=> b!4458634 (= e!2776347 (keys!17242 lt!1649555))))

(declare-fun b!4458635 () Bool)

(assert (=> b!4458635 (= e!2776345 (contains!12617 (keys!17242 lt!1649555) key!4412))))

(declare-fun b!4458636 () Bool)

(assert (=> b!4458636 false))

(declare-fun lt!1649679 () Unit!86381)

(declare-fun lt!1649677 () Unit!86381)

(assert (=> b!4458636 (= lt!1649679 lt!1649677)))

(assert (=> b!4458636 (containsKey!1353 (toList!3922 lt!1649555) key!4412)))

(assert (=> b!4458636 (= lt!1649677 (lemmaInGetKeysListThenContainsKey!334 (toList!3922 lt!1649555) key!4412))))

(declare-fun Unit!86399 () Unit!86381)

(assert (=> b!4458636 (= e!2776348 Unit!86399)))

(declare-fun b!4458637 () Bool)

(assert (=> b!4458637 (= e!2776347 (getKeysList!335 (toList!3922 lt!1649555)))))

(assert (= (and d!1359798 c!758860) b!4458629))

(assert (= (and d!1359798 (not c!758860)) b!4458633))

(assert (= (and b!4458633 c!758861) b!4458636))

(assert (= (and b!4458633 (not c!758861)) b!4458631))

(assert (= (or b!4458629 b!4458633) bm!310301))

(assert (= (and bm!310301 c!758862) b!4458637))

(assert (= (and bm!310301 (not c!758862)) b!4458634))

(assert (= (and d!1359798 res!1848658) b!4458630))

(assert (= (and d!1359798 (not res!1848659)) b!4458632))

(assert (= (and b!4458632 res!1848657) b!4458635))

(declare-fun m!5161171 () Bool)

(assert (=> b!4458632 m!5161171))

(assert (=> b!4458632 m!5161171))

(declare-fun m!5161173 () Bool)

(assert (=> b!4458632 m!5161173))

(declare-fun m!5161175 () Bool)

(assert (=> b!4458630 m!5161175))

(assert (=> b!4458630 m!5161175))

(declare-fun m!5161177 () Bool)

(assert (=> b!4458630 m!5161177))

(declare-fun m!5161179 () Bool)

(assert (=> b!4458637 m!5161179))

(declare-fun m!5161181 () Bool)

(assert (=> b!4458636 m!5161181))

(declare-fun m!5161183 () Bool)

(assert (=> b!4458636 m!5161183))

(declare-fun m!5161185 () Bool)

(assert (=> bm!310301 m!5161185))

(assert (=> d!1359798 m!5161181))

(assert (=> b!4458634 m!5161175))

(assert (=> b!4458635 m!5161175))

(assert (=> b!4458635 m!5161175))

(assert (=> b!4458635 m!5161177))

(declare-fun m!5161187 () Bool)

(assert (=> b!4458629 m!5161187))

(assert (=> b!4458629 m!5161171))

(assert (=> b!4458629 m!5161171))

(assert (=> b!4458629 m!5161173))

(declare-fun m!5161189 () Bool)

(assert (=> b!4458629 m!5161189))

(assert (=> b!4458507 d!1359798))

(declare-fun bs!791194 () Bool)

(declare-fun d!1359800 () Bool)

(assert (= bs!791194 (and d!1359800 start!437082)))

(declare-fun lambda!160986 () Int)

(assert (=> bs!791194 (= lambda!160986 lambda!160942)))

(declare-fun bs!791195 () Bool)

(assert (= bs!791195 (and d!1359800 d!1359788)))

(assert (=> bs!791195 (= lambda!160986 lambda!160980)))

(declare-fun bs!791196 () Bool)

(assert (= bs!791196 (and d!1359800 d!1359790)))

(assert (=> bs!791196 (not (= lambda!160986 lambda!160983))))

(declare-fun lt!1649687 () ListMap!3159)

(assert (=> d!1359800 (invariantList!889 (toList!3922 lt!1649687))))

(declare-fun e!2776353 () ListMap!3159)

(assert (=> d!1359800 (= lt!1649687 e!2776353)))

(declare-fun c!758865 () Bool)

(assert (=> d!1359800 (= c!758865 (is-Cons!50110 (toList!3921 lm!1853)))))

(assert (=> d!1359800 (forall!9888 (toList!3921 lm!1853) lambda!160986)))

(assert (=> d!1359800 (= (extractMap!1025 (toList!3921 lm!1853)) lt!1649687)))

(declare-fun b!4458642 () Bool)

(assert (=> b!4458642 (= e!2776353 (addToMapMapFromBucket!538 (_2!28424 (h!55855 (toList!3921 lm!1853))) (extractMap!1025 (t!357184 (toList!3921 lm!1853)))))))

(declare-fun b!4458643 () Bool)

(assert (=> b!4458643 (= e!2776353 (ListMap!3160 Nil!50109))))

(assert (= (and d!1359800 c!758865) b!4458642))

(assert (= (and d!1359800 (not c!758865)) b!4458643))

(declare-fun m!5161191 () Bool)

(assert (=> d!1359800 m!5161191))

(declare-fun m!5161193 () Bool)

(assert (=> d!1359800 m!5161193))

(declare-fun m!5161195 () Bool)

(assert (=> b!4458642 m!5161195))

(assert (=> b!4458642 m!5161195))

(declare-fun m!5161197 () Bool)

(assert (=> b!4458642 m!5161197))

(assert (=> b!4458507 d!1359800))

(declare-fun b!4458648 () Bool)

(declare-fun e!2776356 () Bool)

(declare-fun tp!1335426 () Bool)

(declare-fun tp!1335427 () Bool)

(assert (=> b!4458648 (= e!2776356 (and tp!1335426 tp!1335427))))

(assert (=> b!4458510 (= tp!1335415 e!2776356)))

(assert (= (and b!4458510 (is-Cons!50110 (toList!3921 lm!1853))) b!4458648))

(declare-fun e!2776359 () Bool)

(declare-fun tp!1335430 () Bool)

(declare-fun b!4458653 () Bool)

(assert (=> b!4458653 (= e!2776359 (and tp_is_empty!27049 tp_is_empty!27051 tp!1335430))))

(assert (=> b!4458509 (= tp!1335414 e!2776359)))

(assert (= (and b!4458509 (is-Cons!50109 (t!357183 l!12858))) b!4458653))

(declare-fun b_lambda!147727 () Bool)

(assert (= b_lambda!147725 (or start!437082 b_lambda!147727)))

(declare-fun bs!791197 () Bool)

(declare-fun d!1359802 () Bool)

(assert (= bs!791197 (and d!1359802 start!437082)))

(assert (=> bs!791197 (= (dynLambda!20981 lambda!160942 (h!55855 (toList!3921 lm!1853))) (noDuplicateKeys!957 (_2!28424 (h!55855 (toList!3921 lm!1853)))))))

(declare-fun m!5161199 () Bool)

(assert (=> bs!791197 m!5161199))

(assert (=> b!4458627 d!1359802))

(push 1)

(assert (not d!1359784))

(assert (not b!4458637))

(assert (not bm!310299))

(assert (not b!4458630))

(assert (not b!4458569))

(assert (not b!4458653))

(assert (not b!4458642))

(assert (not d!1359778))

(assert (not b!4458567))

(assert (not b!4458610))

(assert (not b!4458622))

(assert (not b!4458565))

(assert (not bm!310300))

(assert (not d!1359790))

(assert (not d!1359800))

(assert (not b_lambda!147727))

(assert (not b!4458635))

(assert (not b!4458562))

(assert (not b!4458621))

(assert (not b!4458632))

(assert tp_is_empty!27049)

(assert (not b!4458612))

(assert (not bm!310288))

(assert (not b!4458568))

(assert (not b!4458570))

(assert (not b!4458648))

(assert (not b!4458634))

(assert tp_is_empty!27051)

(assert (not d!1359798))

(assert (not bs!791197))

(assert (not b!4458608))

(assert (not bm!310301))

(assert (not b!4458628))

(assert (not b!4458609))

(assert (not d!1359796))

(assert (not b!4458636))

(assert (not bm!310298))

(assert (not d!1359788))

(assert (not b!4458629))

(assert (not b!4458563))

(assert (not b!4458537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

