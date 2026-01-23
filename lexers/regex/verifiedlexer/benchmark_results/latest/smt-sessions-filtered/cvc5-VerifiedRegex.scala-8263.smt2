; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429342 () Bool)

(assert start!429342)

(declare-fun res!1821167 () Bool)

(declare-fun e!2747419 () Bool)

(assert (=> start!429342 (=> (not res!1821167) (not e!2747419))))

(declare-datatypes ((V!10964 0))(
  ( (V!10965 (val!16845 Int)) )
))
(declare-datatypes ((K!10718 0))(
  ( (K!10719 (val!16846 Int)) )
))
(declare-datatypes ((tuple2!49010 0))(
  ( (tuple2!49011 (_1!27799 K!10718) (_2!27799 V!10964)) )
))
(declare-datatypes ((List!49485 0))(
  ( (Nil!49361) (Cons!49361 (h!55004 tuple2!49010) (t!356423 List!49485)) )
))
(declare-datatypes ((tuple2!49012 0))(
  ( (tuple2!49013 (_1!27800 (_ BitVec 64)) (_2!27800 List!49485)) )
))
(declare-datatypes ((List!49486 0))(
  ( (Nil!49362) (Cons!49362 (h!55005 tuple2!49012) (t!356424 List!49486)) )
))
(declare-datatypes ((ListLongMap!1953 0))(
  ( (ListLongMap!1954 (toList!3303 List!49486)) )
))
(declare-fun lm!1616 () ListLongMap!1953)

(declare-fun lambda!150830 () Int)

(declare-fun forall!9424 (List!49486 Int) Bool)

(assert (=> start!429342 (= res!1821167 (forall!9424 (toList!3303 lm!1616) lambda!150830))))

(assert (=> start!429342 e!2747419))

(declare-fun tp_is_empty!25877 () Bool)

(assert (=> start!429342 tp_is_empty!25877))

(declare-fun tp_is_empty!25879 () Bool)

(assert (=> start!429342 tp_is_empty!25879))

(declare-fun e!2747421 () Bool)

(assert (=> start!429342 e!2747421))

(declare-fun e!2747416 () Bool)

(declare-fun inv!64905 (ListLongMap!1953) Bool)

(assert (=> start!429342 (and (inv!64905 lm!1616) e!2747416)))

(assert (=> start!429342 true))

(declare-fun b!4411748 () Bool)

(declare-fun e!2747420 () Bool)

(declare-fun e!2747417 () Bool)

(assert (=> b!4411748 (= e!2747420 (not e!2747417))))

(declare-fun res!1821169 () Bool)

(assert (=> b!4411748 (=> res!1821169 e!2747417)))

(declare-fun lt!1614373 () ListLongMap!1953)

(assert (=> b!4411748 (= res!1821169 (not (forall!9424 (toList!3303 lt!1614373) lambda!150830)))))

(assert (=> b!4411748 (forall!9424 (toList!3303 lt!1614373) lambda!150830)))

(declare-fun lt!1614370 () tuple2!49012)

(declare-fun +!925 (ListLongMap!1953 tuple2!49012) ListLongMap!1953)

(assert (=> b!4411748 (= lt!1614373 (+!925 lm!1616 lt!1614370))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49485)

(assert (=> b!4411748 (= lt!1614370 (tuple2!49013 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80463 0))(
  ( (Unit!80464) )
))
(declare-fun lt!1614372 () Unit!80463)

(declare-fun addValidProp!302 (ListLongMap!1953 Int (_ BitVec 64) List!49485) Unit!80463)

(assert (=> b!4411748 (= lt!1614372 (addValidProp!302 lm!1616 lambda!150830 hash!366 newBucket!194))))

(declare-fun newValue!93 () V!10964)

(declare-fun e!2747418 () Bool)

(declare-fun key!3717 () K!10718)

(declare-fun b!4411749 () Bool)

(declare-fun apply!11510 (ListLongMap!1953 (_ BitVec 64)) List!49485)

(assert (=> b!4411749 (= e!2747418 (= newBucket!194 (Cons!49361 (tuple2!49011 key!3717 newValue!93) (apply!11510 lm!1616 hash!366))))))

(declare-fun b!4411750 () Bool)

(declare-fun res!1821173 () Bool)

(assert (=> b!4411750 (=> (not res!1821173) (not e!2747419))))

(declare-datatypes ((Hashable!5052 0))(
  ( (HashableExt!5051 (__x!30755 Int)) )
))
(declare-fun hashF!1220 () Hashable!5052)

(declare-fun allKeysSameHash!618 (List!49485 (_ BitVec 64) Hashable!5052) Bool)

(assert (=> b!4411750 (= res!1821173 (allKeysSameHash!618 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4411751 () Bool)

(declare-fun res!1821172 () Bool)

(assert (=> b!4411751 (=> (not res!1821172) (not e!2747419))))

(declare-fun hash!1957 (Hashable!5052 K!10718) (_ BitVec 64))

(assert (=> b!4411751 (= res!1821172 (= (hash!1957 hashF!1220 key!3717) hash!366))))

(declare-fun b!4411752 () Bool)

(assert (=> b!4411752 (= e!2747419 e!2747420)))

(declare-fun res!1821163 () Bool)

(assert (=> b!4411752 (=> (not res!1821163) (not e!2747420))))

(declare-fun e!2747415 () Bool)

(assert (=> b!4411752 (= res!1821163 e!2747415)))

(declare-fun res!1821168 () Bool)

(assert (=> b!4411752 (=> res!1821168 e!2747415)))

(assert (=> b!4411752 (= res!1821168 e!2747418)))

(declare-fun res!1821161 () Bool)

(assert (=> b!4411752 (=> (not res!1821161) (not e!2747418))))

(declare-fun lt!1614371 () Bool)

(assert (=> b!4411752 (= res!1821161 (not lt!1614371))))

(declare-fun lt!1614369 () Bool)

(assert (=> b!4411752 (= lt!1614371 (not lt!1614369))))

(declare-fun contains!11792 (ListLongMap!1953 (_ BitVec 64)) Bool)

(assert (=> b!4411752 (= lt!1614369 (contains!11792 lm!1616 hash!366))))

(declare-fun b!4411753 () Bool)

(declare-fun res!1821166 () Bool)

(assert (=> b!4411753 (=> (not res!1821166) (not e!2747419))))

(declare-fun allKeysSameHashInMap!764 (ListLongMap!1953 Hashable!5052) Bool)

(assert (=> b!4411753 (= res!1821166 (allKeysSameHashInMap!764 lm!1616 hashF!1220))))

(declare-fun b!4411754 () Bool)

(declare-fun res!1821165 () Bool)

(assert (=> b!4411754 (=> (not res!1821165) (not e!2747420))))

(assert (=> b!4411754 (= res!1821165 (forall!9424 (toList!3303 lm!1616) lambda!150830))))

(declare-fun b!4411755 () Bool)

(assert (=> b!4411755 (= e!2747415 (and (not lt!1614369) (= newBucket!194 (Cons!49361 (tuple2!49011 key!3717 newValue!93) Nil!49361))))))

(declare-fun b!4411756 () Bool)

(declare-fun res!1821162 () Bool)

(assert (=> b!4411756 (=> (not res!1821162) (not e!2747419))))

(declare-datatypes ((ListMap!2547 0))(
  ( (ListMap!2548 (toList!3304 List!49485)) )
))
(declare-fun contains!11793 (ListMap!2547 K!10718) Bool)

(declare-fun extractMap!719 (List!49486) ListMap!2547)

(assert (=> b!4411756 (= res!1821162 (not (contains!11793 (extractMap!719 (toList!3303 lm!1616)) key!3717)))))

(declare-fun b!4411757 () Bool)

(assert (=> b!4411757 (= e!2747417 (not (= (toList!3303 lt!1614373) Nil!49362)))))

(declare-fun b!4411758 () Bool)

(declare-fun tp!1332221 () Bool)

(assert (=> b!4411758 (= e!2747421 (and tp_is_empty!25879 tp_is_empty!25877 tp!1332221))))

(declare-fun b!4411759 () Bool)

(declare-fun res!1821170 () Bool)

(assert (=> b!4411759 (=> res!1821170 e!2747417)))

(assert (=> b!4411759 (= res!1821170 (or (not (is-Cons!49362 (toList!3303 lm!1616))) (not (= (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366)) lt!1614371))))

(declare-fun b!4411760 () Bool)

(declare-fun tp!1332222 () Bool)

(assert (=> b!4411760 (= e!2747416 tp!1332222)))

(declare-fun b!4411761 () Bool)

(declare-fun res!1821164 () Bool)

(assert (=> b!4411761 (=> res!1821164 e!2747417)))

(declare-fun head!9137 (List!49486) tuple2!49012)

(assert (=> b!4411761 (= res!1821164 (not (= (head!9137 (toList!3303 lt!1614373)) lt!1614370)))))

(declare-fun b!4411762 () Bool)

(declare-fun res!1821171 () Bool)

(assert (=> b!4411762 (=> (not res!1821171) (not e!2747420))))

(declare-fun noDuplicateKeys!658 (List!49485) Bool)

(assert (=> b!4411762 (= res!1821171 (noDuplicateKeys!658 newBucket!194))))

(assert (= (and start!429342 res!1821167) b!4411753))

(assert (= (and b!4411753 res!1821166) b!4411751))

(assert (= (and b!4411751 res!1821172) b!4411750))

(assert (= (and b!4411750 res!1821173) b!4411756))

(assert (= (and b!4411756 res!1821162) b!4411752))

(assert (= (and b!4411752 res!1821161) b!4411749))

(assert (= (and b!4411752 (not res!1821168)) b!4411755))

(assert (= (and b!4411752 res!1821163) b!4411762))

(assert (= (and b!4411762 res!1821171) b!4411754))

(assert (= (and b!4411754 res!1821165) b!4411748))

(assert (= (and b!4411748 (not res!1821169)) b!4411759))

(assert (= (and b!4411759 (not res!1821170)) b!4411761))

(assert (= (and b!4411761 (not res!1821164)) b!4411757))

(assert (= (and start!429342 (is-Cons!49361 newBucket!194)) b!4411758))

(assert (= start!429342 b!4411760))

(declare-fun m!5087447 () Bool)

(assert (=> b!4411754 m!5087447))

(declare-fun m!5087449 () Bool)

(assert (=> b!4411750 m!5087449))

(declare-fun m!5087451 () Bool)

(assert (=> b!4411752 m!5087451))

(declare-fun m!5087453 () Bool)

(assert (=> b!4411751 m!5087453))

(declare-fun m!5087455 () Bool)

(assert (=> b!4411749 m!5087455))

(declare-fun m!5087457 () Bool)

(assert (=> b!4411753 m!5087457))

(declare-fun m!5087459 () Bool)

(assert (=> b!4411761 m!5087459))

(declare-fun m!5087461 () Bool)

(assert (=> b!4411762 m!5087461))

(assert (=> start!429342 m!5087447))

(declare-fun m!5087463 () Bool)

(assert (=> start!429342 m!5087463))

(declare-fun m!5087465 () Bool)

(assert (=> b!4411748 m!5087465))

(assert (=> b!4411748 m!5087465))

(declare-fun m!5087467 () Bool)

(assert (=> b!4411748 m!5087467))

(declare-fun m!5087469 () Bool)

(assert (=> b!4411748 m!5087469))

(declare-fun m!5087471 () Bool)

(assert (=> b!4411756 m!5087471))

(assert (=> b!4411756 m!5087471))

(declare-fun m!5087473 () Bool)

(assert (=> b!4411756 m!5087473))

(push 1)

(assert (not b!4411749))

(assert (not start!429342))

(assert (not b!4411753))

(assert (not b!4411758))

(assert (not b!4411750))

(assert (not b!4411754))

(assert (not b!4411751))

(assert tp_is_empty!25879)

(assert tp_is_empty!25877)

(assert (not b!4411756))

(assert (not b!4411762))

(assert (not b!4411761))

(assert (not b!4411748))

(assert (not b!4411760))

(assert (not b!4411752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1336954 () Bool)

(declare-fun res!1821217 () Bool)

(declare-fun e!2747447 () Bool)

(assert (=> d!1336954 (=> res!1821217 e!2747447)))

(assert (=> d!1336954 (= res!1821217 (is-Nil!49362 (toList!3303 lt!1614373)))))

(assert (=> d!1336954 (= (forall!9424 (toList!3303 lt!1614373) lambda!150830) e!2747447)))

(declare-fun b!4411812 () Bool)

(declare-fun e!2747448 () Bool)

(assert (=> b!4411812 (= e!2747447 e!2747448)))

(declare-fun res!1821218 () Bool)

(assert (=> b!4411812 (=> (not res!1821218) (not e!2747448))))

(declare-fun dynLambda!20793 (Int tuple2!49012) Bool)

(assert (=> b!4411812 (= res!1821218 (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 lt!1614373))))))

(declare-fun b!4411813 () Bool)

(assert (=> b!4411813 (= e!2747448 (forall!9424 (t!356424 (toList!3303 lt!1614373)) lambda!150830))))

(assert (= (and d!1336954 (not res!1821217)) b!4411812))

(assert (= (and b!4411812 res!1821218) b!4411813))

(declare-fun b_lambda!141903 () Bool)

(assert (=> (not b_lambda!141903) (not b!4411812)))

(declare-fun m!5087503 () Bool)

(assert (=> b!4411812 m!5087503))

(declare-fun m!5087505 () Bool)

(assert (=> b!4411813 m!5087505))

(assert (=> b!4411748 d!1336954))

(declare-fun d!1336956 () Bool)

(declare-fun e!2747455 () Bool)

(assert (=> d!1336956 e!2747455))

(declare-fun res!1821227 () Bool)

(assert (=> d!1336956 (=> (not res!1821227) (not e!2747455))))

(declare-fun lt!1614400 () ListLongMap!1953)

(assert (=> d!1336956 (= res!1821227 (contains!11792 lt!1614400 (_1!27800 lt!1614370)))))

(declare-fun lt!1614397 () List!49486)

(assert (=> d!1336956 (= lt!1614400 (ListLongMap!1954 lt!1614397))))

(declare-fun lt!1614398 () Unit!80463)

(declare-fun lt!1614399 () Unit!80463)

(assert (=> d!1336956 (= lt!1614398 lt!1614399)))

(declare-datatypes ((Option!10645 0))(
  ( (None!10644) (Some!10644 (v!43800 List!49485)) )
))
(declare-fun getValueByKey!631 (List!49486 (_ BitVec 64)) Option!10645)

(assert (=> d!1336956 (= (getValueByKey!631 lt!1614397 (_1!27800 lt!1614370)) (Some!10644 (_2!27800 lt!1614370)))))

(declare-fun lemmaContainsTupThenGetReturnValue!374 (List!49486 (_ BitVec 64) List!49485) Unit!80463)

(assert (=> d!1336956 (= lt!1614399 (lemmaContainsTupThenGetReturnValue!374 lt!1614397 (_1!27800 lt!1614370) (_2!27800 lt!1614370)))))

(declare-fun insertStrictlySorted!220 (List!49486 (_ BitVec 64) List!49485) List!49486)

(assert (=> d!1336956 (= lt!1614397 (insertStrictlySorted!220 (toList!3303 lm!1616) (_1!27800 lt!1614370) (_2!27800 lt!1614370)))))

(assert (=> d!1336956 (= (+!925 lm!1616 lt!1614370) lt!1614400)))

(declare-fun b!4411822 () Bool)

(declare-fun res!1821228 () Bool)

(assert (=> b!4411822 (=> (not res!1821228) (not e!2747455))))

(assert (=> b!4411822 (= res!1821228 (= (getValueByKey!631 (toList!3303 lt!1614400) (_1!27800 lt!1614370)) (Some!10644 (_2!27800 lt!1614370))))))

(declare-fun b!4411823 () Bool)

(declare-fun contains!11796 (List!49486 tuple2!49012) Bool)

(assert (=> b!4411823 (= e!2747455 (contains!11796 (toList!3303 lt!1614400) lt!1614370))))

(assert (= (and d!1336956 res!1821227) b!4411822))

(assert (= (and b!4411822 res!1821228) b!4411823))

(declare-fun m!5087507 () Bool)

(assert (=> d!1336956 m!5087507))

(declare-fun m!5087509 () Bool)

(assert (=> d!1336956 m!5087509))

(declare-fun m!5087511 () Bool)

(assert (=> d!1336956 m!5087511))

(declare-fun m!5087513 () Bool)

(assert (=> d!1336956 m!5087513))

(declare-fun m!5087515 () Bool)

(assert (=> b!4411822 m!5087515))

(declare-fun m!5087517 () Bool)

(assert (=> b!4411823 m!5087517))

(assert (=> b!4411748 d!1336956))

(declare-fun d!1336960 () Bool)

(assert (=> d!1336960 (forall!9424 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194))) lambda!150830)))

(declare-fun lt!1614403 () Unit!80463)

(declare-fun choose!27761 (ListLongMap!1953 Int (_ BitVec 64) List!49485) Unit!80463)

(assert (=> d!1336960 (= lt!1614403 (choose!27761 lm!1616 lambda!150830 hash!366 newBucket!194))))

(declare-fun e!2747460 () Bool)

(assert (=> d!1336960 e!2747460))

(declare-fun res!1821233 () Bool)

(assert (=> d!1336960 (=> (not res!1821233) (not e!2747460))))

(assert (=> d!1336960 (= res!1821233 (forall!9424 (toList!3303 lm!1616) lambda!150830))))

(assert (=> d!1336960 (= (addValidProp!302 lm!1616 lambda!150830 hash!366 newBucket!194) lt!1614403)))

(declare-fun b!4411831 () Bool)

(assert (=> b!4411831 (= e!2747460 (dynLambda!20793 lambda!150830 (tuple2!49013 hash!366 newBucket!194)))))

(assert (= (and d!1336960 res!1821233) b!4411831))

(declare-fun b_lambda!141905 () Bool)

(assert (=> (not b_lambda!141905) (not b!4411831)))

(declare-fun m!5087523 () Bool)

(assert (=> d!1336960 m!5087523))

(declare-fun m!5087525 () Bool)

(assert (=> d!1336960 m!5087525))

(declare-fun m!5087527 () Bool)

(assert (=> d!1336960 m!5087527))

(assert (=> d!1336960 m!5087447))

(declare-fun m!5087529 () Bool)

(assert (=> b!4411831 m!5087529))

(assert (=> b!4411748 d!1336960))

(declare-fun d!1336964 () Bool)

(declare-fun get!16075 (Option!10645) List!49485)

(assert (=> d!1336964 (= (apply!11510 lm!1616 hash!366) (get!16075 (getValueByKey!631 (toList!3303 lm!1616) hash!366)))))

(declare-fun bs!752797 () Bool)

(assert (= bs!752797 d!1336964))

(declare-fun m!5087533 () Bool)

(assert (=> bs!752797 m!5087533))

(assert (=> bs!752797 m!5087533))

(declare-fun m!5087535 () Bool)

(assert (=> bs!752797 m!5087535))

(assert (=> b!4411749 d!1336964))

(declare-fun d!1336968 () Bool)

(declare-fun res!1821234 () Bool)

(declare-fun e!2747461 () Bool)

(assert (=> d!1336968 (=> res!1821234 e!2747461)))

(assert (=> d!1336968 (= res!1821234 (is-Nil!49362 (toList!3303 lm!1616)))))

(assert (=> d!1336968 (= (forall!9424 (toList!3303 lm!1616) lambda!150830) e!2747461)))

(declare-fun b!4411832 () Bool)

(declare-fun e!2747462 () Bool)

(assert (=> b!4411832 (= e!2747461 e!2747462)))

(declare-fun res!1821235 () Bool)

(assert (=> b!4411832 (=> (not res!1821235) (not e!2747462))))

(assert (=> b!4411832 (= res!1821235 (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 lm!1616))))))

(declare-fun b!4411833 () Bool)

(assert (=> b!4411833 (= e!2747462 (forall!9424 (t!356424 (toList!3303 lm!1616)) lambda!150830))))

(assert (= (and d!1336968 (not res!1821234)) b!4411832))

(assert (= (and b!4411832 res!1821235) b!4411833))

(declare-fun b_lambda!141907 () Bool)

(assert (=> (not b_lambda!141907) (not b!4411832)))

(declare-fun m!5087537 () Bool)

(assert (=> b!4411832 m!5087537))

(declare-fun m!5087539 () Bool)

(assert (=> b!4411833 m!5087539))

(assert (=> b!4411754 d!1336968))

(declare-fun d!1336970 () Bool)

(assert (=> d!1336970 (= (head!9137 (toList!3303 lt!1614373)) (h!55005 (toList!3303 lt!1614373)))))

(assert (=> b!4411761 d!1336970))

(declare-fun d!1336972 () Bool)

(assert (=> d!1336972 true))

(assert (=> d!1336972 true))

(declare-fun lambda!150845 () Int)

(declare-fun forall!9426 (List!49485 Int) Bool)

(assert (=> d!1336972 (= (allKeysSameHash!618 newBucket!194 hash!366 hashF!1220) (forall!9426 newBucket!194 lambda!150845))))

(declare-fun bs!752798 () Bool)

(assert (= bs!752798 d!1336972))

(declare-fun m!5087541 () Bool)

(assert (=> bs!752798 m!5087541))

(assert (=> b!4411750 d!1336972))

(declare-fun d!1336974 () Bool)

(declare-fun hash!1959 (Hashable!5052 K!10718) (_ BitVec 64))

(assert (=> d!1336974 (= (hash!1957 hashF!1220 key!3717) (hash!1959 hashF!1220 key!3717))))

(declare-fun bs!752800 () Bool)

(assert (= bs!752800 d!1336974))

(declare-fun m!5087547 () Bool)

(assert (=> bs!752800 m!5087547))

(assert (=> b!4411751 d!1336974))

(assert (=> start!429342 d!1336968))

(declare-fun d!1336978 () Bool)

(declare-fun isStrictlySorted!192 (List!49486) Bool)

(assert (=> d!1336978 (= (inv!64905 lm!1616) (isStrictlySorted!192 (toList!3303 lm!1616)))))

(declare-fun bs!752801 () Bool)

(assert (= bs!752801 d!1336978))

(declare-fun m!5087549 () Bool)

(assert (=> bs!752801 m!5087549))

(assert (=> start!429342 d!1336978))

(declare-fun b!4411865 () Bool)

(declare-fun e!2747481 () Unit!80463)

(declare-fun lt!1614436 () Unit!80463)

(assert (=> b!4411865 (= e!2747481 lt!1614436)))

(declare-fun lt!1614439 () Unit!80463)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!541 (List!49485 K!10718) Unit!80463)

(assert (=> b!4411865 (= lt!1614439 (lemmaContainsKeyImpliesGetValueByKeyDefined!541 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-datatypes ((Option!10646 0))(
  ( (None!10645) (Some!10645 (v!43801 V!10964)) )
))
(declare-fun isDefined!7938 (Option!10646) Bool)

(declare-fun getValueByKey!632 (List!49485 K!10718) Option!10646)

(assert (=> b!4411865 (isDefined!7938 (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-fun lt!1614434 () Unit!80463)

(assert (=> b!4411865 (= lt!1614434 lt!1614439)))

(declare-fun lemmaInListThenGetKeysListContains!210 (List!49485 K!10718) Unit!80463)

(assert (=> b!4411865 (= lt!1614436 (lemmaInListThenGetKeysListContains!210 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-fun call!307081 () Bool)

(assert (=> b!4411865 call!307081))

(declare-fun b!4411866 () Bool)

(declare-fun e!2747484 () Bool)

(declare-datatypes ((List!49489 0))(
  ( (Nil!49365) (Cons!49365 (h!55009 K!10718) (t!356427 List!49489)) )
))
(declare-fun contains!11797 (List!49489 K!10718) Bool)

(declare-fun keys!16799 (ListMap!2547) List!49489)

(assert (=> b!4411866 (= e!2747484 (not (contains!11797 (keys!16799 (extractMap!719 (toList!3303 lm!1616))) key!3717)))))

(declare-fun b!4411867 () Bool)

(assert (=> b!4411867 false))

(declare-fun lt!1614438 () Unit!80463)

(declare-fun lt!1614432 () Unit!80463)

(assert (=> b!4411867 (= lt!1614438 lt!1614432)))

(declare-fun containsKey!992 (List!49485 K!10718) Bool)

(assert (=> b!4411867 (containsKey!992 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!211 (List!49485 K!10718) Unit!80463)

(assert (=> b!4411867 (= lt!1614432 (lemmaInGetKeysListThenContainsKey!211 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-fun e!2747486 () Unit!80463)

(declare-fun Unit!80467 () Unit!80463)

(assert (=> b!4411867 (= e!2747486 Unit!80467)))

(declare-fun b!4411868 () Bool)

(declare-fun e!2747485 () List!49489)

(declare-fun getKeysList!213 (List!49485) List!49489)

(assert (=> b!4411868 (= e!2747485 (getKeysList!213 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))

(declare-fun b!4411869 () Bool)

(assert (=> b!4411869 (= e!2747481 e!2747486)))

(declare-fun c!751417 () Bool)

(assert (=> b!4411869 (= c!751417 call!307081)))

(declare-fun b!4411870 () Bool)

(declare-fun Unit!80468 () Unit!80463)

(assert (=> b!4411870 (= e!2747486 Unit!80468)))

(declare-fun b!4411871 () Bool)

(declare-fun e!2747482 () Bool)

(assert (=> b!4411871 (= e!2747482 (contains!11797 (keys!16799 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-fun b!4411872 () Bool)

(declare-fun e!2747483 () Bool)

(assert (=> b!4411872 (= e!2747483 e!2747482)))

(declare-fun res!1821245 () Bool)

(assert (=> b!4411872 (=> (not res!1821245) (not e!2747482))))

(assert (=> b!4411872 (= res!1821245 (isDefined!7938 (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717)))))

(declare-fun b!4411873 () Bool)

(assert (=> b!4411873 (= e!2747485 (keys!16799 (extractMap!719 (toList!3303 lm!1616))))))

(declare-fun d!1336980 () Bool)

(assert (=> d!1336980 e!2747483))

(declare-fun res!1821246 () Bool)

(assert (=> d!1336980 (=> res!1821246 e!2747483)))

(assert (=> d!1336980 (= res!1821246 e!2747484)))

(declare-fun res!1821247 () Bool)

(assert (=> d!1336980 (=> (not res!1821247) (not e!2747484))))

(declare-fun lt!1614435 () Bool)

(assert (=> d!1336980 (= res!1821247 (not lt!1614435))))

(declare-fun lt!1614437 () Bool)

(assert (=> d!1336980 (= lt!1614435 lt!1614437)))

(declare-fun lt!1614433 () Unit!80463)

(assert (=> d!1336980 (= lt!1614433 e!2747481)))

(declare-fun c!751416 () Bool)

(assert (=> d!1336980 (= c!751416 lt!1614437)))

(assert (=> d!1336980 (= lt!1614437 (containsKey!992 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(assert (=> d!1336980 (= (contains!11793 (extractMap!719 (toList!3303 lm!1616)) key!3717) lt!1614435)))

(declare-fun bm!307076 () Bool)

(assert (=> bm!307076 (= call!307081 (contains!11797 e!2747485 key!3717))))

(declare-fun c!751415 () Bool)

(assert (=> bm!307076 (= c!751415 c!751416)))

(assert (= (and d!1336980 c!751416) b!4411865))

(assert (= (and d!1336980 (not c!751416)) b!4411869))

(assert (= (and b!4411869 c!751417) b!4411867))

(assert (= (and b!4411869 (not c!751417)) b!4411870))

(assert (= (or b!4411865 b!4411869) bm!307076))

(assert (= (and bm!307076 c!751415) b!4411868))

(assert (= (and bm!307076 (not c!751415)) b!4411873))

(assert (= (and d!1336980 res!1821247) b!4411866))

(assert (= (and d!1336980 (not res!1821246)) b!4411872))

(assert (= (and b!4411872 res!1821245) b!4411871))

(assert (=> b!4411873 m!5087471))

(declare-fun m!5087559 () Bool)

(assert (=> b!4411873 m!5087559))

(declare-fun m!5087561 () Bool)

(assert (=> b!4411867 m!5087561))

(declare-fun m!5087563 () Bool)

(assert (=> b!4411867 m!5087563))

(declare-fun m!5087565 () Bool)

(assert (=> b!4411865 m!5087565))

(declare-fun m!5087567 () Bool)

(assert (=> b!4411865 m!5087567))

(assert (=> b!4411865 m!5087567))

(declare-fun m!5087569 () Bool)

(assert (=> b!4411865 m!5087569))

(declare-fun m!5087571 () Bool)

(assert (=> b!4411865 m!5087571))

(declare-fun m!5087573 () Bool)

(assert (=> bm!307076 m!5087573))

(declare-fun m!5087575 () Bool)

(assert (=> b!4411868 m!5087575))

(assert (=> b!4411872 m!5087567))

(assert (=> b!4411872 m!5087567))

(assert (=> b!4411872 m!5087569))

(assert (=> b!4411871 m!5087471))

(assert (=> b!4411871 m!5087559))

(assert (=> b!4411871 m!5087559))

(declare-fun m!5087577 () Bool)

(assert (=> b!4411871 m!5087577))

(assert (=> d!1336980 m!5087561))

(assert (=> b!4411866 m!5087471))

(assert (=> b!4411866 m!5087559))

(assert (=> b!4411866 m!5087559))

(assert (=> b!4411866 m!5087577))

(assert (=> b!4411756 d!1336980))

(declare-fun bs!752803 () Bool)

(declare-fun d!1336988 () Bool)

(assert (= bs!752803 (and d!1336988 start!429342)))

(declare-fun lambda!150848 () Int)

(assert (=> bs!752803 (= lambda!150848 lambda!150830)))

(declare-fun lt!1614442 () ListMap!2547)

(declare-fun invariantList!766 (List!49485) Bool)

(assert (=> d!1336988 (invariantList!766 (toList!3304 lt!1614442))))

(declare-fun e!2747495 () ListMap!2547)

(assert (=> d!1336988 (= lt!1614442 e!2747495)))

(declare-fun c!751420 () Bool)

(assert (=> d!1336988 (= c!751420 (is-Cons!49362 (toList!3303 lm!1616)))))

(assert (=> d!1336988 (forall!9424 (toList!3303 lm!1616) lambda!150848)))

(assert (=> d!1336988 (= (extractMap!719 (toList!3303 lm!1616)) lt!1614442)))

(declare-fun b!4411884 () Bool)

(declare-fun addToMapMapFromBucket!317 (List!49485 ListMap!2547) ListMap!2547)

(assert (=> b!4411884 (= e!2747495 (addToMapMapFromBucket!317 (_2!27800 (h!55005 (toList!3303 lm!1616))) (extractMap!719 (t!356424 (toList!3303 lm!1616)))))))

(declare-fun b!4411885 () Bool)

(assert (=> b!4411885 (= e!2747495 (ListMap!2548 Nil!49361))))

(assert (= (and d!1336988 c!751420) b!4411884))

(assert (= (and d!1336988 (not c!751420)) b!4411885))

(declare-fun m!5087583 () Bool)

(assert (=> d!1336988 m!5087583))

(declare-fun m!5087585 () Bool)

(assert (=> d!1336988 m!5087585))

(declare-fun m!5087587 () Bool)

(assert (=> b!4411884 m!5087587))

(assert (=> b!4411884 m!5087587))

(declare-fun m!5087589 () Bool)

(assert (=> b!4411884 m!5087589))

(assert (=> b!4411756 d!1336988))

(declare-fun d!1336992 () Bool)

(declare-fun res!1821262 () Bool)

(declare-fun e!2747502 () Bool)

(assert (=> d!1336992 (=> res!1821262 e!2747502)))

(assert (=> d!1336992 (= res!1821262 (not (is-Cons!49361 newBucket!194)))))

(assert (=> d!1336992 (= (noDuplicateKeys!658 newBucket!194) e!2747502)))

(declare-fun b!4411894 () Bool)

(declare-fun e!2747503 () Bool)

(assert (=> b!4411894 (= e!2747502 e!2747503)))

(declare-fun res!1821263 () Bool)

(assert (=> b!4411894 (=> (not res!1821263) (not e!2747503))))

(declare-fun containsKey!993 (List!49485 K!10718) Bool)

(assert (=> b!4411894 (= res!1821263 (not (containsKey!993 (t!356423 newBucket!194) (_1!27799 (h!55004 newBucket!194)))))))

(declare-fun b!4411895 () Bool)

(assert (=> b!4411895 (= e!2747503 (noDuplicateKeys!658 (t!356423 newBucket!194)))))

(assert (= (and d!1336992 (not res!1821262)) b!4411894))

(assert (= (and b!4411894 res!1821263) b!4411895))

(declare-fun m!5087591 () Bool)

(assert (=> b!4411894 m!5087591))

(declare-fun m!5087593 () Bool)

(assert (=> b!4411895 m!5087593))

(assert (=> b!4411762 d!1336992))

(declare-fun d!1336994 () Bool)

(declare-fun e!2747510 () Bool)

(assert (=> d!1336994 e!2747510))

(declare-fun res!1821268 () Bool)

(assert (=> d!1336994 (=> res!1821268 e!2747510)))

(declare-fun lt!1614463 () Bool)

(assert (=> d!1336994 (= res!1821268 (not lt!1614463))))

(declare-fun lt!1614466 () Bool)

(assert (=> d!1336994 (= lt!1614463 lt!1614466)))

(declare-fun lt!1614465 () Unit!80463)

(declare-fun e!2747509 () Unit!80463)

(assert (=> d!1336994 (= lt!1614465 e!2747509)))

(declare-fun c!751423 () Bool)

(assert (=> d!1336994 (= c!751423 lt!1614466)))

(declare-fun containsKey!994 (List!49486 (_ BitVec 64)) Bool)

(assert (=> d!1336994 (= lt!1614466 (containsKey!994 (toList!3303 lm!1616) hash!366))))

(assert (=> d!1336994 (= (contains!11792 lm!1616 hash!366) lt!1614463)))

(declare-fun b!4411904 () Bool)

(declare-fun lt!1614464 () Unit!80463)

(assert (=> b!4411904 (= e!2747509 lt!1614464)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!542 (List!49486 (_ BitVec 64)) Unit!80463)

(assert (=> b!4411904 (= lt!1614464 (lemmaContainsKeyImpliesGetValueByKeyDefined!542 (toList!3303 lm!1616) hash!366))))

(declare-fun isDefined!7939 (Option!10645) Bool)

(assert (=> b!4411904 (isDefined!7939 (getValueByKey!631 (toList!3303 lm!1616) hash!366))))

(declare-fun b!4411905 () Bool)

(declare-fun Unit!80469 () Unit!80463)

(assert (=> b!4411905 (= e!2747509 Unit!80469)))

(declare-fun b!4411906 () Bool)

(assert (=> b!4411906 (= e!2747510 (isDefined!7939 (getValueByKey!631 (toList!3303 lm!1616) hash!366)))))

(assert (= (and d!1336994 c!751423) b!4411904))

(assert (= (and d!1336994 (not c!751423)) b!4411905))

(assert (= (and d!1336994 (not res!1821268)) b!4411906))

(declare-fun m!5087607 () Bool)

(assert (=> d!1336994 m!5087607))

(declare-fun m!5087609 () Bool)

(assert (=> b!4411904 m!5087609))

(assert (=> b!4411904 m!5087533))

(assert (=> b!4411904 m!5087533))

(declare-fun m!5087611 () Bool)

(assert (=> b!4411904 m!5087611))

(assert (=> b!4411906 m!5087533))

(assert (=> b!4411906 m!5087533))

(assert (=> b!4411906 m!5087611))

(assert (=> b!4411752 d!1336994))

(declare-fun bs!752804 () Bool)

(declare-fun d!1336998 () Bool)

(assert (= bs!752804 (and d!1336998 start!429342)))

(declare-fun lambda!150851 () Int)

(assert (=> bs!752804 (not (= lambda!150851 lambda!150830))))

(declare-fun bs!752805 () Bool)

(assert (= bs!752805 (and d!1336998 d!1336988)))

(assert (=> bs!752805 (not (= lambda!150851 lambda!150848))))

(assert (=> d!1336998 true))

(assert (=> d!1336998 (= (allKeysSameHashInMap!764 lm!1616 hashF!1220) (forall!9424 (toList!3303 lm!1616) lambda!150851))))

(declare-fun bs!752806 () Bool)

(assert (= bs!752806 d!1336998))

(declare-fun m!5087613 () Bool)

(assert (=> bs!752806 m!5087613))

(assert (=> b!4411753 d!1336998))

(declare-fun b!4411913 () Bool)

(declare-fun e!2747513 () Bool)

(declare-fun tp!1332233 () Bool)

(declare-fun tp!1332234 () Bool)

(assert (=> b!4411913 (= e!2747513 (and tp!1332233 tp!1332234))))

(assert (=> b!4411760 (= tp!1332222 e!2747513)))

(assert (= (and b!4411760 (is-Cons!49362 (toList!3303 lm!1616))) b!4411913))

(declare-fun b!4411918 () Bool)

(declare-fun e!2747516 () Bool)

(declare-fun tp!1332237 () Bool)

(assert (=> b!4411918 (= e!2747516 (and tp_is_empty!25879 tp_is_empty!25877 tp!1332237))))

(assert (=> b!4411758 (= tp!1332221 e!2747516)))

(assert (= (and b!4411758 (is-Cons!49361 (t!356423 newBucket!194))) b!4411918))

(declare-fun b_lambda!141911 () Bool)

(assert (= b_lambda!141907 (or start!429342 b_lambda!141911)))

(declare-fun bs!752807 () Bool)

(declare-fun d!1337000 () Bool)

(assert (= bs!752807 (and d!1337000 start!429342)))

(assert (=> bs!752807 (= (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 lm!1616))) (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))

(declare-fun m!5087615 () Bool)

(assert (=> bs!752807 m!5087615))

(assert (=> b!4411832 d!1337000))

(declare-fun b_lambda!141913 () Bool)

(assert (= b_lambda!141905 (or start!429342 b_lambda!141913)))

(declare-fun bs!752808 () Bool)

(declare-fun d!1337002 () Bool)

(assert (= bs!752808 (and d!1337002 start!429342)))

(assert (=> bs!752808 (= (dynLambda!20793 lambda!150830 (tuple2!49013 hash!366 newBucket!194)) (noDuplicateKeys!658 (_2!27800 (tuple2!49013 hash!366 newBucket!194))))))

(declare-fun m!5087617 () Bool)

(assert (=> bs!752808 m!5087617))

(assert (=> b!4411831 d!1337002))

(declare-fun b_lambda!141915 () Bool)

(assert (= b_lambda!141903 (or start!429342 b_lambda!141915)))

(declare-fun bs!752809 () Bool)

(declare-fun d!1337004 () Bool)

(assert (= bs!752809 (and d!1337004 start!429342)))

(assert (=> bs!752809 (= (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 lt!1614373))) (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lt!1614373)))))))

(declare-fun m!5087619 () Bool)

(assert (=> bs!752809 m!5087619))

(assert (=> b!4411812 d!1337004))

(push 1)

(assert (not b!4411913))

(assert (not b!4411873))

(assert (not b!4411865))

(assert (not b!4411822))

(assert (not b!4411906))

(assert (not b!4411895))

(assert (not bs!752807))

(assert (not d!1336988))

(assert (not d!1336994))

(assert (not b!4411894))

(assert (not b!4411868))

(assert (not d!1336974))

(assert (not b_lambda!141915))

(assert (not b_lambda!141911))

(assert (not d!1336964))

(assert (not bm!307076))

(assert (not d!1336978))

(assert (not b!4411813))

(assert (not b!4411866))

(assert (not d!1336998))

(assert (not d!1336980))

(assert (not d!1336960))

(assert (not b!4411867))

(assert (not b!4411872))

(assert (not b!4411871))

(assert (not d!1336972))

(assert (not d!1336956))

(assert (not b!4411884))

(assert (not b!4411833))

(assert (not bs!752808))

(assert (not b!4411904))

(assert (not b!4411823))

(assert tp_is_empty!25879)

(assert (not b!4411918))

(assert (not b_lambda!141913))

(assert tp_is_empty!25877)

(assert (not bs!752809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1337022 () Bool)

(assert (=> d!1337022 (isDefined!7938 (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(declare-fun lt!1614499 () Unit!80463)

(declare-fun choose!27763 (List!49485 K!10718) Unit!80463)

(assert (=> d!1337022 (= lt!1614499 (choose!27763 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(assert (=> d!1337022 (invariantList!766 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))

(assert (=> d!1337022 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!541 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717) lt!1614499)))

(declare-fun bs!752817 () Bool)

(assert (= bs!752817 d!1337022))

(assert (=> bs!752817 m!5087567))

(assert (=> bs!752817 m!5087567))

(assert (=> bs!752817 m!5087569))

(declare-fun m!5087671 () Bool)

(assert (=> bs!752817 m!5087671))

(declare-fun m!5087673 () Bool)

(assert (=> bs!752817 m!5087673))

(assert (=> b!4411865 d!1337022))

(declare-fun d!1337024 () Bool)

(declare-fun isEmpty!28300 (Option!10646) Bool)

(assert (=> d!1337024 (= (isDefined!7938 (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717)) (not (isEmpty!28300 (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))))

(declare-fun bs!752818 () Bool)

(assert (= bs!752818 d!1337024))

(assert (=> bs!752818 m!5087567))

(declare-fun m!5087675 () Bool)

(assert (=> bs!752818 m!5087675))

(assert (=> b!4411865 d!1337024))

(declare-fun b!4411982 () Bool)

(declare-fun e!2747554 () Option!10646)

(assert (=> b!4411982 (= e!2747554 (getValueByKey!632 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) key!3717))))

(declare-fun b!4411981 () Bool)

(declare-fun e!2747553 () Option!10646)

(assert (=> b!4411981 (= e!2747553 e!2747554)))

(declare-fun c!751441 () Bool)

(assert (=> b!4411981 (= c!751441 (and (is-Cons!49361 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (not (= (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) key!3717))))))

(declare-fun b!4411980 () Bool)

(assert (=> b!4411980 (= e!2747553 (Some!10645 (_2!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))))

(declare-fun b!4411983 () Bool)

(assert (=> b!4411983 (= e!2747554 None!10645)))

(declare-fun d!1337026 () Bool)

(declare-fun c!751440 () Bool)

(assert (=> d!1337026 (= c!751440 (and (is-Cons!49361 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (= (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) key!3717)))))

(assert (=> d!1337026 (= (getValueByKey!632 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717) e!2747553)))

(assert (= (and d!1337026 c!751440) b!4411980))

(assert (= (and d!1337026 (not c!751440)) b!4411981))

(assert (= (and b!4411981 c!751441) b!4411982))

(assert (= (and b!4411981 (not c!751441)) b!4411983))

(declare-fun m!5087677 () Bool)

(assert (=> b!4411982 m!5087677))

(assert (=> b!4411865 d!1337026))

(declare-fun d!1337028 () Bool)

(assert (=> d!1337028 (contains!11797 (getKeysList!213 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) key!3717)))

(declare-fun lt!1614502 () Unit!80463)

(declare-fun choose!27764 (List!49485 K!10718) Unit!80463)

(assert (=> d!1337028 (= lt!1614502 (choose!27764 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(assert (=> d!1337028 (invariantList!766 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))

(assert (=> d!1337028 (= (lemmaInListThenGetKeysListContains!210 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717) lt!1614502)))

(declare-fun bs!752819 () Bool)

(assert (= bs!752819 d!1337028))

(assert (=> bs!752819 m!5087575))

(assert (=> bs!752819 m!5087575))

(declare-fun m!5087679 () Bool)

(assert (=> bs!752819 m!5087679))

(declare-fun m!5087681 () Bool)

(assert (=> bs!752819 m!5087681))

(assert (=> bs!752819 m!5087673))

(assert (=> b!4411865 d!1337028))

(declare-fun d!1337030 () Bool)

(declare-fun lt!1614505 () Bool)

(declare-fun content!7907 (List!49489) (Set K!10718))

(assert (=> d!1337030 (= lt!1614505 (set.member key!3717 (content!7907 (keys!16799 (extractMap!719 (toList!3303 lm!1616))))))))

(declare-fun e!2747560 () Bool)

(assert (=> d!1337030 (= lt!1614505 e!2747560)))

(declare-fun res!1821288 () Bool)

(assert (=> d!1337030 (=> (not res!1821288) (not e!2747560))))

(assert (=> d!1337030 (= res!1821288 (is-Cons!49365 (keys!16799 (extractMap!719 (toList!3303 lm!1616)))))))

(assert (=> d!1337030 (= (contains!11797 (keys!16799 (extractMap!719 (toList!3303 lm!1616))) key!3717) lt!1614505)))

(declare-fun b!4411988 () Bool)

(declare-fun e!2747559 () Bool)

(assert (=> b!4411988 (= e!2747560 e!2747559)))

(declare-fun res!1821287 () Bool)

(assert (=> b!4411988 (=> res!1821287 e!2747559)))

(assert (=> b!4411988 (= res!1821287 (= (h!55009 (keys!16799 (extractMap!719 (toList!3303 lm!1616)))) key!3717))))

(declare-fun b!4411989 () Bool)

(assert (=> b!4411989 (= e!2747559 (contains!11797 (t!356427 (keys!16799 (extractMap!719 (toList!3303 lm!1616)))) key!3717))))

(assert (= (and d!1337030 res!1821288) b!4411988))

(assert (= (and b!4411988 (not res!1821287)) b!4411989))

(assert (=> d!1337030 m!5087559))

(declare-fun m!5087683 () Bool)

(assert (=> d!1337030 m!5087683))

(declare-fun m!5087685 () Bool)

(assert (=> d!1337030 m!5087685))

(declare-fun m!5087687 () Bool)

(assert (=> b!4411989 m!5087687))

(assert (=> b!4411866 d!1337030))

(declare-fun b!4411997 () Bool)

(assert (=> b!4411997 true))

(declare-fun d!1337032 () Bool)

(declare-fun e!2747563 () Bool)

(assert (=> d!1337032 e!2747563))

(declare-fun res!1821297 () Bool)

(assert (=> d!1337032 (=> (not res!1821297) (not e!2747563))))

(declare-fun lt!1614508 () List!49489)

(declare-fun noDuplicate!647 (List!49489) Bool)

(assert (=> d!1337032 (= res!1821297 (noDuplicate!647 lt!1614508))))

(assert (=> d!1337032 (= lt!1614508 (getKeysList!213 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))

(assert (=> d!1337032 (= (keys!16799 (extractMap!719 (toList!3303 lm!1616))) lt!1614508)))

(declare-fun b!4411996 () Bool)

(declare-fun res!1821295 () Bool)

(assert (=> b!4411996 (=> (not res!1821295) (not e!2747563))))

(declare-fun length!150 (List!49489) Int)

(declare-fun length!151 (List!49485) Int)

(assert (=> b!4411996 (= res!1821295 (= (length!150 lt!1614508) (length!151 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))))

(declare-fun res!1821296 () Bool)

(assert (=> b!4411997 (=> (not res!1821296) (not e!2747563))))

(declare-fun lambda!150862 () Int)

(declare-fun forall!9428 (List!49489 Int) Bool)

(assert (=> b!4411997 (= res!1821296 (forall!9428 lt!1614508 lambda!150862))))

(declare-fun lambda!150863 () Int)

(declare-fun b!4411998 () Bool)

(declare-fun map!10774 (List!49485 Int) List!49489)

(assert (=> b!4411998 (= e!2747563 (= (content!7907 lt!1614508) (content!7907 (map!10774 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) lambda!150863))))))

(assert (= (and d!1337032 res!1821297) b!4411996))

(assert (= (and b!4411996 res!1821295) b!4411997))

(assert (= (and b!4411997 res!1821296) b!4411998))

(declare-fun m!5087689 () Bool)

(assert (=> d!1337032 m!5087689))

(assert (=> d!1337032 m!5087575))

(declare-fun m!5087691 () Bool)

(assert (=> b!4411996 m!5087691))

(declare-fun m!5087693 () Bool)

(assert (=> b!4411996 m!5087693))

(declare-fun m!5087695 () Bool)

(assert (=> b!4411997 m!5087695))

(declare-fun m!5087697 () Bool)

(assert (=> b!4411998 m!5087697))

(declare-fun m!5087699 () Bool)

(assert (=> b!4411998 m!5087699))

(assert (=> b!4411998 m!5087699))

(declare-fun m!5087701 () Bool)

(assert (=> b!4411998 m!5087701))

(assert (=> b!4411866 d!1337032))

(declare-fun d!1337034 () Bool)

(declare-fun res!1821302 () Bool)

(declare-fun e!2747568 () Bool)

(assert (=> d!1337034 (=> res!1821302 e!2747568)))

(assert (=> d!1337034 (= res!1821302 (is-Nil!49361 newBucket!194))))

(assert (=> d!1337034 (= (forall!9426 newBucket!194 lambda!150845) e!2747568)))

(declare-fun b!4412005 () Bool)

(declare-fun e!2747569 () Bool)

(assert (=> b!4412005 (= e!2747568 e!2747569)))

(declare-fun res!1821303 () Bool)

(assert (=> b!4412005 (=> (not res!1821303) (not e!2747569))))

(declare-fun dynLambda!20795 (Int tuple2!49010) Bool)

(assert (=> b!4412005 (= res!1821303 (dynLambda!20795 lambda!150845 (h!55004 newBucket!194)))))

(declare-fun b!4412006 () Bool)

(assert (=> b!4412006 (= e!2747569 (forall!9426 (t!356423 newBucket!194) lambda!150845))))

(assert (= (and d!1337034 (not res!1821302)) b!4412005))

(assert (= (and b!4412005 res!1821303) b!4412006))

(declare-fun b_lambda!141927 () Bool)

(assert (=> (not b_lambda!141927) (not b!4412005)))

(declare-fun m!5087703 () Bool)

(assert (=> b!4412005 m!5087703))

(declare-fun m!5087705 () Bool)

(assert (=> b!4412006 m!5087705))

(assert (=> d!1336972 d!1337034))

(declare-fun d!1337036 () Bool)

(declare-fun res!1821308 () Bool)

(declare-fun e!2747574 () Bool)

(assert (=> d!1337036 (=> res!1821308 e!2747574)))

(assert (=> d!1337036 (= res!1821308 (and (is-Cons!49361 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (= (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) key!3717)))))

(assert (=> d!1337036 (= (containsKey!992 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717) e!2747574)))

(declare-fun b!4412011 () Bool)

(declare-fun e!2747575 () Bool)

(assert (=> b!4412011 (= e!2747574 e!2747575)))

(declare-fun res!1821309 () Bool)

(assert (=> b!4412011 (=> (not res!1821309) (not e!2747575))))

(assert (=> b!4412011 (= res!1821309 (is-Cons!49361 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))

(declare-fun b!4412012 () Bool)

(assert (=> b!4412012 (= e!2747575 (containsKey!992 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) key!3717))))

(assert (= (and d!1337036 (not res!1821308)) b!4412011))

(assert (= (and b!4412011 res!1821309) b!4412012))

(declare-fun m!5087707 () Bool)

(assert (=> b!4412012 m!5087707))

(assert (=> b!4411867 d!1337036))

(declare-fun d!1337038 () Bool)

(assert (=> d!1337038 (containsKey!992 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717)))

(declare-fun lt!1614511 () Unit!80463)

(declare-fun choose!27765 (List!49485 K!10718) Unit!80463)

(assert (=> d!1337038 (= lt!1614511 (choose!27765 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717))))

(assert (=> d!1337038 (invariantList!766 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))

(assert (=> d!1337038 (= (lemmaInGetKeysListThenContainsKey!211 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) key!3717) lt!1614511)))

(declare-fun bs!752820 () Bool)

(assert (= bs!752820 d!1337038))

(assert (=> bs!752820 m!5087561))

(declare-fun m!5087709 () Bool)

(assert (=> bs!752820 m!5087709))

(assert (=> bs!752820 m!5087673))

(assert (=> b!4411867 d!1337038))

(declare-fun d!1337040 () Bool)

(declare-fun res!1821310 () Bool)

(declare-fun e!2747576 () Bool)

(assert (=> d!1337040 (=> res!1821310 e!2747576)))

(assert (=> d!1337040 (= res!1821310 (is-Nil!49362 (t!356424 (toList!3303 lt!1614373))))))

(assert (=> d!1337040 (= (forall!9424 (t!356424 (toList!3303 lt!1614373)) lambda!150830) e!2747576)))

(declare-fun b!4412013 () Bool)

(declare-fun e!2747577 () Bool)

(assert (=> b!4412013 (= e!2747576 e!2747577)))

(declare-fun res!1821311 () Bool)

(assert (=> b!4412013 (=> (not res!1821311) (not e!2747577))))

(assert (=> b!4412013 (= res!1821311 (dynLambda!20793 lambda!150830 (h!55005 (t!356424 (toList!3303 lt!1614373)))))))

(declare-fun b!4412014 () Bool)

(assert (=> b!4412014 (= e!2747577 (forall!9424 (t!356424 (t!356424 (toList!3303 lt!1614373))) lambda!150830))))

(assert (= (and d!1337040 (not res!1821310)) b!4412013))

(assert (= (and b!4412013 res!1821311) b!4412014))

(declare-fun b_lambda!141929 () Bool)

(assert (=> (not b_lambda!141929) (not b!4412013)))

(declare-fun m!5087711 () Bool)

(assert (=> b!4412013 m!5087711))

(declare-fun m!5087713 () Bool)

(assert (=> b!4412014 m!5087713))

(assert (=> b!4411813 d!1337040))

(assert (=> d!1336980 d!1337036))

(declare-fun d!1337042 () Bool)

(declare-fun choose!27766 (Hashable!5052 K!10718) (_ BitVec 64))

(assert (=> d!1337042 (= (hash!1959 hashF!1220 key!3717) (choose!27766 hashF!1220 key!3717))))

(declare-fun bs!752821 () Bool)

(assert (= bs!752821 d!1337042))

(declare-fun m!5087715 () Bool)

(assert (=> bs!752821 m!5087715))

(assert (=> d!1336974 d!1337042))

(declare-fun bs!752822 () Bool)

(declare-fun b!4412034 () Bool)

(assert (= bs!752822 (and b!4412034 b!4411997)))

(declare-fun lambda!150872 () Int)

(assert (=> bs!752822 (= (= (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (= lambda!150872 lambda!150862))))

(assert (=> b!4412034 true))

(declare-fun bs!752823 () Bool)

(declare-fun b!4412037 () Bool)

(assert (= bs!752823 (and b!4412037 b!4411997)))

(declare-fun lambda!150873 () Int)

(assert (=> bs!752823 (= (= (Cons!49361 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (= lambda!150873 lambda!150862))))

(declare-fun bs!752824 () Bool)

(assert (= bs!752824 (and b!4412037 b!4412034)))

(assert (=> bs!752824 (= (= (Cons!49361 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (= lambda!150873 lambda!150872))))

(assert (=> b!4412037 true))

(declare-fun bs!752825 () Bool)

(declare-fun b!4412039 () Bool)

(assert (= bs!752825 (and b!4412039 b!4411997)))

(declare-fun lambda!150874 () Int)

(assert (=> bs!752825 (= lambda!150874 lambda!150862)))

(declare-fun bs!752826 () Bool)

(assert (= bs!752826 (and b!4412039 b!4412034)))

(assert (=> bs!752826 (= (= (toList!3304 (extractMap!719 (toList!3303 lm!1616))) (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (= lambda!150874 lambda!150872))))

(declare-fun bs!752827 () Bool)

(assert (= bs!752827 (and b!4412039 b!4412037)))

(assert (=> bs!752827 (= (= (toList!3304 (extractMap!719 (toList!3303 lm!1616))) (Cons!49361 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))) (= lambda!150874 lambda!150873))))

(assert (=> b!4412039 true))

(declare-fun bs!752828 () Bool)

(declare-fun b!4412038 () Bool)

(assert (= bs!752828 (and b!4412038 b!4411998)))

(declare-fun lambda!150875 () Int)

(assert (=> bs!752828 (= lambda!150875 lambda!150863)))

(declare-fun b!4412033 () Bool)

(declare-fun e!2747589 () Unit!80463)

(declare-fun Unit!80473 () Unit!80463)

(assert (=> b!4412033 (= e!2747589 Unit!80473)))

(assert (=> b!4412034 false))

(declare-fun lt!1614527 () Unit!80463)

(declare-fun forallContained!2052 (List!49489 Int K!10718) Unit!80463)

(assert (=> b!4412034 (= lt!1614527 (forallContained!2052 (getKeysList!213 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) lambda!150872 (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))))

(declare-fun e!2747586 () Unit!80463)

(declare-fun Unit!80474 () Unit!80463)

(assert (=> b!4412034 (= e!2747586 Unit!80474)))

(declare-fun b!4412035 () Bool)

(declare-fun Unit!80475 () Unit!80463)

(assert (=> b!4412035 (= e!2747586 Unit!80475)))

(declare-fun d!1337044 () Bool)

(declare-fun e!2747588 () Bool)

(assert (=> d!1337044 e!2747588))

(declare-fun res!1821319 () Bool)

(assert (=> d!1337044 (=> (not res!1821319) (not e!2747588))))

(declare-fun lt!1614526 () List!49489)

(assert (=> d!1337044 (= res!1821319 (noDuplicate!647 lt!1614526))))

(declare-fun e!2747587 () List!49489)

(assert (=> d!1337044 (= lt!1614526 e!2747587)))

(declare-fun c!751450 () Bool)

(assert (=> d!1337044 (= c!751450 (is-Cons!49361 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))

(assert (=> d!1337044 (invariantList!766 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))

(assert (=> d!1337044 (= (getKeysList!213 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) lt!1614526)))

(declare-fun b!4412036 () Bool)

(declare-fun res!1821318 () Bool)

(assert (=> b!4412036 (=> (not res!1821318) (not e!2747588))))

(assert (=> b!4412036 (= res!1821318 (= (length!150 lt!1614526) (length!151 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))))

(assert (=> b!4412037 (= e!2747587 (Cons!49365 (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (getKeysList!213 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))))

(declare-fun c!751448 () Bool)

(assert (=> b!4412037 (= c!751448 (containsKey!992 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))))

(declare-fun lt!1614529 () Unit!80463)

(assert (=> b!4412037 (= lt!1614529 e!2747589)))

(declare-fun c!751449 () Bool)

(assert (=> b!4412037 (= c!751449 (contains!11797 (getKeysList!213 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))) (_1!27799 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))))))))

(declare-fun lt!1614528 () Unit!80463)

(assert (=> b!4412037 (= lt!1614528 e!2747586)))

(declare-fun lt!1614530 () List!49489)

(assert (=> b!4412037 (= lt!1614530 (getKeysList!213 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))))

(declare-fun lt!1614531 () Unit!80463)

(declare-fun lemmaForallContainsAddHeadPreserves!69 (List!49485 List!49489 tuple2!49010) Unit!80463)

(assert (=> b!4412037 (= lt!1614531 (lemmaForallContainsAddHeadPreserves!69 (t!356423 (toList!3304 (extractMap!719 (toList!3303 lm!1616)))) lt!1614530 (h!55004 (toList!3304 (extractMap!719 (toList!3303 lm!1616))))))))

(assert (=> b!4412037 (forall!9428 lt!1614530 lambda!150873)))

(declare-fun lt!1614532 () Unit!80463)

(assert (=> b!4412037 (= lt!1614532 lt!1614531)))

(assert (=> b!4412038 (= e!2747588 (= (content!7907 lt!1614526) (content!7907 (map!10774 (toList!3304 (extractMap!719 (toList!3303 lm!1616))) lambda!150875))))))

(declare-fun res!1821320 () Bool)

(assert (=> b!4412039 (=> (not res!1821320) (not e!2747588))))

(assert (=> b!4412039 (= res!1821320 (forall!9428 lt!1614526 lambda!150874))))

(declare-fun b!4412040 () Bool)

(assert (=> b!4412040 false))

(declare-fun Unit!80476 () Unit!80463)

(assert (=> b!4412040 (= e!2747589 Unit!80476)))

(declare-fun b!4412041 () Bool)

(assert (=> b!4412041 (= e!2747587 Nil!49365)))

(assert (= (and d!1337044 c!751450) b!4412037))

(assert (= (and d!1337044 (not c!751450)) b!4412041))

(assert (= (and b!4412037 c!751448) b!4412040))

(assert (= (and b!4412037 (not c!751448)) b!4412033))

(assert (= (and b!4412037 c!751449) b!4412034))

(assert (= (and b!4412037 (not c!751449)) b!4412035))

(assert (= (and d!1337044 res!1821319) b!4412036))

(assert (= (and b!4412036 res!1821318) b!4412039))

(assert (= (and b!4412039 res!1821320) b!4412038))

(declare-fun m!5087717 () Bool)

(assert (=> b!4412039 m!5087717))

(declare-fun m!5087719 () Bool)

(assert (=> b!4412036 m!5087719))

(assert (=> b!4412036 m!5087693))

(declare-fun m!5087721 () Bool)

(assert (=> b!4412038 m!5087721))

(declare-fun m!5087723 () Bool)

(assert (=> b!4412038 m!5087723))

(assert (=> b!4412038 m!5087723))

(declare-fun m!5087725 () Bool)

(assert (=> b!4412038 m!5087725))

(declare-fun m!5087727 () Bool)

(assert (=> b!4412037 m!5087727))

(declare-fun m!5087729 () Bool)

(assert (=> b!4412037 m!5087729))

(declare-fun m!5087731 () Bool)

(assert (=> b!4412037 m!5087731))

(declare-fun m!5087733 () Bool)

(assert (=> b!4412037 m!5087733))

(assert (=> b!4412037 m!5087729))

(declare-fun m!5087735 () Bool)

(assert (=> b!4412037 m!5087735))

(assert (=> b!4412034 m!5087729))

(assert (=> b!4412034 m!5087729))

(declare-fun m!5087737 () Bool)

(assert (=> b!4412034 m!5087737))

(declare-fun m!5087739 () Bool)

(assert (=> d!1337044 m!5087739))

(assert (=> d!1337044 m!5087673))

(assert (=> b!4411868 d!1337044))

(declare-fun d!1337046 () Bool)

(assert (=> d!1337046 (isDefined!7939 (getValueByKey!631 (toList!3303 lm!1616) hash!366))))

(declare-fun lt!1614535 () Unit!80463)

(declare-fun choose!27767 (List!49486 (_ BitVec 64)) Unit!80463)

(assert (=> d!1337046 (= lt!1614535 (choose!27767 (toList!3303 lm!1616) hash!366))))

(declare-fun e!2747592 () Bool)

(assert (=> d!1337046 e!2747592))

(declare-fun res!1821323 () Bool)

(assert (=> d!1337046 (=> (not res!1821323) (not e!2747592))))

(assert (=> d!1337046 (= res!1821323 (isStrictlySorted!192 (toList!3303 lm!1616)))))

(assert (=> d!1337046 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!542 (toList!3303 lm!1616) hash!366) lt!1614535)))

(declare-fun b!4412046 () Bool)

(assert (=> b!4412046 (= e!2747592 (containsKey!994 (toList!3303 lm!1616) hash!366))))

(assert (= (and d!1337046 res!1821323) b!4412046))

(assert (=> d!1337046 m!5087533))

(assert (=> d!1337046 m!5087533))

(assert (=> d!1337046 m!5087611))

(declare-fun m!5087741 () Bool)

(assert (=> d!1337046 m!5087741))

(assert (=> d!1337046 m!5087549))

(assert (=> b!4412046 m!5087607))

(assert (=> b!4411904 d!1337046))

(declare-fun d!1337048 () Bool)

(declare-fun isEmpty!28301 (Option!10645) Bool)

(assert (=> d!1337048 (= (isDefined!7939 (getValueByKey!631 (toList!3303 lm!1616) hash!366)) (not (isEmpty!28301 (getValueByKey!631 (toList!3303 lm!1616) hash!366))))))

(declare-fun bs!752829 () Bool)

(assert (= bs!752829 d!1337048))

(assert (=> bs!752829 m!5087533))

(declare-fun m!5087743 () Bool)

(assert (=> bs!752829 m!5087743))

(assert (=> b!4411904 d!1337048))

(declare-fun b!4412058 () Bool)

(declare-fun e!2747598 () Option!10645)

(assert (=> b!4412058 (= e!2747598 None!10644)))

(declare-fun b!4412057 () Bool)

(assert (=> b!4412057 (= e!2747598 (getValueByKey!631 (t!356424 (toList!3303 lm!1616)) hash!366))))

(declare-fun b!4412055 () Bool)

(declare-fun e!2747597 () Option!10645)

(assert (=> b!4412055 (= e!2747597 (Some!10644 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))

(declare-fun b!4412056 () Bool)

(assert (=> b!4412056 (= e!2747597 e!2747598)))

(declare-fun c!751456 () Bool)

(assert (=> b!4412056 (= c!751456 (and (is-Cons!49362 (toList!3303 lm!1616)) (not (= (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366))))))

(declare-fun d!1337050 () Bool)

(declare-fun c!751455 () Bool)

(assert (=> d!1337050 (= c!751455 (and (is-Cons!49362 (toList!3303 lm!1616)) (= (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366)))))

(assert (=> d!1337050 (= (getValueByKey!631 (toList!3303 lm!1616) hash!366) e!2747597)))

(assert (= (and d!1337050 c!751455) b!4412055))

(assert (= (and d!1337050 (not c!751455)) b!4412056))

(assert (= (and b!4412056 c!751456) b!4412057))

(assert (= (and b!4412056 (not c!751456)) b!4412058))

(declare-fun m!5087745 () Bool)

(assert (=> b!4412057 m!5087745))

(assert (=> b!4411904 d!1337050))

(declare-fun d!1337052 () Bool)

(declare-fun res!1821324 () Bool)

(declare-fun e!2747599 () Bool)

(assert (=> d!1337052 (=> res!1821324 e!2747599)))

(assert (=> d!1337052 (= res!1821324 (not (is-Cons!49361 (_2!27800 (tuple2!49013 hash!366 newBucket!194)))))))

(assert (=> d!1337052 (= (noDuplicateKeys!658 (_2!27800 (tuple2!49013 hash!366 newBucket!194))) e!2747599)))

(declare-fun b!4412059 () Bool)

(declare-fun e!2747600 () Bool)

(assert (=> b!4412059 (= e!2747599 e!2747600)))

(declare-fun res!1821325 () Bool)

(assert (=> b!4412059 (=> (not res!1821325) (not e!2747600))))

(assert (=> b!4412059 (= res!1821325 (not (containsKey!993 (t!356423 (_2!27800 (tuple2!49013 hash!366 newBucket!194))) (_1!27799 (h!55004 (_2!27800 (tuple2!49013 hash!366 newBucket!194)))))))))

(declare-fun b!4412060 () Bool)

(assert (=> b!4412060 (= e!2747600 (noDuplicateKeys!658 (t!356423 (_2!27800 (tuple2!49013 hash!366 newBucket!194)))))))

(assert (= (and d!1337052 (not res!1821324)) b!4412059))

(assert (= (and b!4412059 res!1821325) b!4412060))

(declare-fun m!5087747 () Bool)

(assert (=> b!4412059 m!5087747))

(declare-fun m!5087749 () Bool)

(assert (=> b!4412060 m!5087749))

(assert (=> bs!752808 d!1337052))

(declare-fun d!1337054 () Bool)

(declare-fun noDuplicatedKeys!163 (List!49485) Bool)

(assert (=> d!1337054 (= (invariantList!766 (toList!3304 lt!1614442)) (noDuplicatedKeys!163 (toList!3304 lt!1614442)))))

(declare-fun bs!752830 () Bool)

(assert (= bs!752830 d!1337054))

(declare-fun m!5087751 () Bool)

(assert (=> bs!752830 m!5087751))

(assert (=> d!1336988 d!1337054))

(declare-fun d!1337056 () Bool)

(declare-fun res!1821326 () Bool)

(declare-fun e!2747601 () Bool)

(assert (=> d!1337056 (=> res!1821326 e!2747601)))

(assert (=> d!1337056 (= res!1821326 (is-Nil!49362 (toList!3303 lm!1616)))))

(assert (=> d!1337056 (= (forall!9424 (toList!3303 lm!1616) lambda!150848) e!2747601)))

(declare-fun b!4412061 () Bool)

(declare-fun e!2747602 () Bool)

(assert (=> b!4412061 (= e!2747601 e!2747602)))

(declare-fun res!1821327 () Bool)

(assert (=> b!4412061 (=> (not res!1821327) (not e!2747602))))

(assert (=> b!4412061 (= res!1821327 (dynLambda!20793 lambda!150848 (h!55005 (toList!3303 lm!1616))))))

(declare-fun b!4412062 () Bool)

(assert (=> b!4412062 (= e!2747602 (forall!9424 (t!356424 (toList!3303 lm!1616)) lambda!150848))))

(assert (= (and d!1337056 (not res!1821326)) b!4412061))

(assert (= (and b!4412061 res!1821327) b!4412062))

(declare-fun b_lambda!141931 () Bool)

(assert (=> (not b_lambda!141931) (not b!4412061)))

(declare-fun m!5087753 () Bool)

(assert (=> b!4412061 m!5087753))

(declare-fun m!5087755 () Bool)

(assert (=> b!4412062 m!5087755))

(assert (=> d!1336988 d!1337056))

(assert (=> b!4411906 d!1337048))

(assert (=> b!4411906 d!1337050))

(assert (=> b!4411871 d!1337030))

(assert (=> b!4411871 d!1337032))

(assert (=> b!4411872 d!1337024))

(assert (=> b!4411872 d!1337026))

(assert (=> b!4411873 d!1337032))

(declare-fun d!1337058 () Bool)

(declare-fun res!1821328 () Bool)

(declare-fun e!2747603 () Bool)

(assert (=> d!1337058 (=> res!1821328 e!2747603)))

(assert (=> d!1337058 (= res!1821328 (not (is-Cons!49361 (_2!27800 (h!55005 (toList!3303 lt!1614373))))))))

(assert (=> d!1337058 (= (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lt!1614373)))) e!2747603)))

(declare-fun b!4412063 () Bool)

(declare-fun e!2747604 () Bool)

(assert (=> b!4412063 (= e!2747603 e!2747604)))

(declare-fun res!1821329 () Bool)

(assert (=> b!4412063 (=> (not res!1821329) (not e!2747604))))

(assert (=> b!4412063 (= res!1821329 (not (containsKey!993 (t!356423 (_2!27800 (h!55005 (toList!3303 lt!1614373)))) (_1!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lt!1614373))))))))))

(declare-fun b!4412064 () Bool)

(assert (=> b!4412064 (= e!2747604 (noDuplicateKeys!658 (t!356423 (_2!27800 (h!55005 (toList!3303 lt!1614373))))))))

(assert (= (and d!1337058 (not res!1821328)) b!4412063))

(assert (= (and b!4412063 res!1821329) b!4412064))

(declare-fun m!5087757 () Bool)

(assert (=> b!4412063 m!5087757))

(declare-fun m!5087759 () Bool)

(assert (=> b!4412064 m!5087759))

(assert (=> bs!752809 d!1337058))

(declare-fun d!1337060 () Bool)

(declare-fun lt!1614536 () Bool)

(assert (=> d!1337060 (= lt!1614536 (set.member key!3717 (content!7907 e!2747485)))))

(declare-fun e!2747606 () Bool)

(assert (=> d!1337060 (= lt!1614536 e!2747606)))

(declare-fun res!1821331 () Bool)

(assert (=> d!1337060 (=> (not res!1821331) (not e!2747606))))

(assert (=> d!1337060 (= res!1821331 (is-Cons!49365 e!2747485))))

(assert (=> d!1337060 (= (contains!11797 e!2747485 key!3717) lt!1614536)))

(declare-fun b!4412065 () Bool)

(declare-fun e!2747605 () Bool)

(assert (=> b!4412065 (= e!2747606 e!2747605)))

(declare-fun res!1821330 () Bool)

(assert (=> b!4412065 (=> res!1821330 e!2747605)))

(assert (=> b!4412065 (= res!1821330 (= (h!55009 e!2747485) key!3717))))

(declare-fun b!4412066 () Bool)

(assert (=> b!4412066 (= e!2747605 (contains!11797 (t!356427 e!2747485) key!3717))))

(assert (= (and d!1337060 res!1821331) b!4412065))

(assert (= (and b!4412065 (not res!1821330)) b!4412066))

(declare-fun m!5087761 () Bool)

(assert (=> d!1337060 m!5087761))

(declare-fun m!5087763 () Bool)

(assert (=> d!1337060 m!5087763))

(declare-fun m!5087765 () Bool)

(assert (=> b!4412066 m!5087765))

(assert (=> bm!307076 d!1337060))

(declare-fun d!1337062 () Bool)

(assert (=> d!1337062 (= (get!16075 (getValueByKey!631 (toList!3303 lm!1616) hash!366)) (v!43800 (getValueByKey!631 (toList!3303 lm!1616) hash!366)))))

(assert (=> d!1336964 d!1337062))

(assert (=> d!1336964 d!1337050))

(declare-fun d!1337064 () Bool)

(declare-fun res!1821332 () Bool)

(declare-fun e!2747607 () Bool)

(assert (=> d!1337064 (=> res!1821332 e!2747607)))

(assert (=> d!1337064 (= res!1821332 (is-Nil!49362 (t!356424 (toList!3303 lm!1616))))))

(assert (=> d!1337064 (= (forall!9424 (t!356424 (toList!3303 lm!1616)) lambda!150830) e!2747607)))

(declare-fun b!4412067 () Bool)

(declare-fun e!2747608 () Bool)

(assert (=> b!4412067 (= e!2747607 e!2747608)))

(declare-fun res!1821333 () Bool)

(assert (=> b!4412067 (=> (not res!1821333) (not e!2747608))))

(assert (=> b!4412067 (= res!1821333 (dynLambda!20793 lambda!150830 (h!55005 (t!356424 (toList!3303 lm!1616)))))))

(declare-fun b!4412068 () Bool)

(assert (=> b!4412068 (= e!2747608 (forall!9424 (t!356424 (t!356424 (toList!3303 lm!1616))) lambda!150830))))

(assert (= (and d!1337064 (not res!1821332)) b!4412067))

(assert (= (and b!4412067 res!1821333) b!4412068))

(declare-fun b_lambda!141933 () Bool)

(assert (=> (not b_lambda!141933) (not b!4412067)))

(declare-fun m!5087767 () Bool)

(assert (=> b!4412067 m!5087767))

(declare-fun m!5087769 () Bool)

(assert (=> b!4412068 m!5087769))

(assert (=> b!4411833 d!1337064))

(declare-fun d!1337066 () Bool)

(declare-fun res!1821338 () Bool)

(declare-fun e!2747613 () Bool)

(assert (=> d!1337066 (=> res!1821338 e!2747613)))

(assert (=> d!1337066 (= res!1821338 (and (is-Cons!49361 (t!356423 newBucket!194)) (= (_1!27799 (h!55004 (t!356423 newBucket!194))) (_1!27799 (h!55004 newBucket!194)))))))

(assert (=> d!1337066 (= (containsKey!993 (t!356423 newBucket!194) (_1!27799 (h!55004 newBucket!194))) e!2747613)))

(declare-fun b!4412073 () Bool)

(declare-fun e!2747614 () Bool)

(assert (=> b!4412073 (= e!2747613 e!2747614)))

(declare-fun res!1821339 () Bool)

(assert (=> b!4412073 (=> (not res!1821339) (not e!2747614))))

(assert (=> b!4412073 (= res!1821339 (is-Cons!49361 (t!356423 newBucket!194)))))

(declare-fun b!4412074 () Bool)

(assert (=> b!4412074 (= e!2747614 (containsKey!993 (t!356423 (t!356423 newBucket!194)) (_1!27799 (h!55004 newBucket!194))))))

(assert (= (and d!1337066 (not res!1821338)) b!4412073))

(assert (= (and b!4412073 res!1821339) b!4412074))

(declare-fun m!5087771 () Bool)

(assert (=> b!4412074 m!5087771))

(assert (=> b!4411894 d!1337066))

(declare-fun d!1337068 () Bool)

(declare-fun res!1821340 () Bool)

(declare-fun e!2747615 () Bool)

(assert (=> d!1337068 (=> res!1821340 e!2747615)))

(assert (=> d!1337068 (= res!1821340 (not (is-Cons!49361 (t!356423 newBucket!194))))))

(assert (=> d!1337068 (= (noDuplicateKeys!658 (t!356423 newBucket!194)) e!2747615)))

(declare-fun b!4412075 () Bool)

(declare-fun e!2747616 () Bool)

(assert (=> b!4412075 (= e!2747615 e!2747616)))

(declare-fun res!1821341 () Bool)

(assert (=> b!4412075 (=> (not res!1821341) (not e!2747616))))

(assert (=> b!4412075 (= res!1821341 (not (containsKey!993 (t!356423 (t!356423 newBucket!194)) (_1!27799 (h!55004 (t!356423 newBucket!194))))))))

(declare-fun b!4412076 () Bool)

(assert (=> b!4412076 (= e!2747616 (noDuplicateKeys!658 (t!356423 (t!356423 newBucket!194))))))

(assert (= (and d!1337068 (not res!1821340)) b!4412075))

(assert (= (and b!4412075 res!1821341) b!4412076))

(declare-fun m!5087773 () Bool)

(assert (=> b!4412075 m!5087773))

(declare-fun m!5087775 () Bool)

(assert (=> b!4412076 m!5087775))

(assert (=> b!4411895 d!1337068))

(declare-fun d!1337070 () Bool)

(declare-fun e!2747618 () Bool)

(assert (=> d!1337070 e!2747618))

(declare-fun res!1821342 () Bool)

(assert (=> d!1337070 (=> res!1821342 e!2747618)))

(declare-fun lt!1614537 () Bool)

(assert (=> d!1337070 (= res!1821342 (not lt!1614537))))

(declare-fun lt!1614540 () Bool)

(assert (=> d!1337070 (= lt!1614537 lt!1614540)))

(declare-fun lt!1614539 () Unit!80463)

(declare-fun e!2747617 () Unit!80463)

(assert (=> d!1337070 (= lt!1614539 e!2747617)))

(declare-fun c!751457 () Bool)

(assert (=> d!1337070 (= c!751457 lt!1614540)))

(assert (=> d!1337070 (= lt!1614540 (containsKey!994 (toList!3303 lt!1614400) (_1!27800 lt!1614370)))))

(assert (=> d!1337070 (= (contains!11792 lt!1614400 (_1!27800 lt!1614370)) lt!1614537)))

(declare-fun b!4412077 () Bool)

(declare-fun lt!1614538 () Unit!80463)

(assert (=> b!4412077 (= e!2747617 lt!1614538)))

(assert (=> b!4412077 (= lt!1614538 (lemmaContainsKeyImpliesGetValueByKeyDefined!542 (toList!3303 lt!1614400) (_1!27800 lt!1614370)))))

(assert (=> b!4412077 (isDefined!7939 (getValueByKey!631 (toList!3303 lt!1614400) (_1!27800 lt!1614370)))))

(declare-fun b!4412078 () Bool)

(declare-fun Unit!80477 () Unit!80463)

(assert (=> b!4412078 (= e!2747617 Unit!80477)))

(declare-fun b!4412079 () Bool)

(assert (=> b!4412079 (= e!2747618 (isDefined!7939 (getValueByKey!631 (toList!3303 lt!1614400) (_1!27800 lt!1614370))))))

(assert (= (and d!1337070 c!751457) b!4412077))

(assert (= (and d!1337070 (not c!751457)) b!4412078))

(assert (= (and d!1337070 (not res!1821342)) b!4412079))

(declare-fun m!5087777 () Bool)

(assert (=> d!1337070 m!5087777))

(declare-fun m!5087779 () Bool)

(assert (=> b!4412077 m!5087779))

(assert (=> b!4412077 m!5087515))

(assert (=> b!4412077 m!5087515))

(declare-fun m!5087781 () Bool)

(assert (=> b!4412077 m!5087781))

(assert (=> b!4412079 m!5087515))

(assert (=> b!4412079 m!5087515))

(assert (=> b!4412079 m!5087781))

(assert (=> d!1336956 d!1337070))

(declare-fun b!4412083 () Bool)

(declare-fun e!2747620 () Option!10645)

(assert (=> b!4412083 (= e!2747620 None!10644)))

(declare-fun b!4412082 () Bool)

(assert (=> b!4412082 (= e!2747620 (getValueByKey!631 (t!356424 lt!1614397) (_1!27800 lt!1614370)))))

(declare-fun b!4412080 () Bool)

(declare-fun e!2747619 () Option!10645)

(assert (=> b!4412080 (= e!2747619 (Some!10644 (_2!27800 (h!55005 lt!1614397))))))

(declare-fun b!4412081 () Bool)

(assert (=> b!4412081 (= e!2747619 e!2747620)))

(declare-fun c!751459 () Bool)

(assert (=> b!4412081 (= c!751459 (and (is-Cons!49362 lt!1614397) (not (= (_1!27800 (h!55005 lt!1614397)) (_1!27800 lt!1614370)))))))

(declare-fun d!1337072 () Bool)

(declare-fun c!751458 () Bool)

(assert (=> d!1337072 (= c!751458 (and (is-Cons!49362 lt!1614397) (= (_1!27800 (h!55005 lt!1614397)) (_1!27800 lt!1614370))))))

(assert (=> d!1337072 (= (getValueByKey!631 lt!1614397 (_1!27800 lt!1614370)) e!2747619)))

(assert (= (and d!1337072 c!751458) b!4412080))

(assert (= (and d!1337072 (not c!751458)) b!4412081))

(assert (= (and b!4412081 c!751459) b!4412082))

(assert (= (and b!4412081 (not c!751459)) b!4412083))

(declare-fun m!5087783 () Bool)

(assert (=> b!4412082 m!5087783))

(assert (=> d!1336956 d!1337072))

(declare-fun d!1337074 () Bool)

(assert (=> d!1337074 (= (getValueByKey!631 lt!1614397 (_1!27800 lt!1614370)) (Some!10644 (_2!27800 lt!1614370)))))

(declare-fun lt!1614543 () Unit!80463)

(declare-fun choose!27768 (List!49486 (_ BitVec 64) List!49485) Unit!80463)

(assert (=> d!1337074 (= lt!1614543 (choose!27768 lt!1614397 (_1!27800 lt!1614370) (_2!27800 lt!1614370)))))

(declare-fun e!2747623 () Bool)

(assert (=> d!1337074 e!2747623))

(declare-fun res!1821347 () Bool)

(assert (=> d!1337074 (=> (not res!1821347) (not e!2747623))))

(assert (=> d!1337074 (= res!1821347 (isStrictlySorted!192 lt!1614397))))

(assert (=> d!1337074 (= (lemmaContainsTupThenGetReturnValue!374 lt!1614397 (_1!27800 lt!1614370) (_2!27800 lt!1614370)) lt!1614543)))

(declare-fun b!4412088 () Bool)

(declare-fun res!1821348 () Bool)

(assert (=> b!4412088 (=> (not res!1821348) (not e!2747623))))

(assert (=> b!4412088 (= res!1821348 (containsKey!994 lt!1614397 (_1!27800 lt!1614370)))))

(declare-fun b!4412089 () Bool)

(assert (=> b!4412089 (= e!2747623 (contains!11796 lt!1614397 (tuple2!49013 (_1!27800 lt!1614370) (_2!27800 lt!1614370))))))

(assert (= (and d!1337074 res!1821347) b!4412088))

(assert (= (and b!4412088 res!1821348) b!4412089))

(assert (=> d!1337074 m!5087509))

(declare-fun m!5087785 () Bool)

(assert (=> d!1337074 m!5087785))

(declare-fun m!5087787 () Bool)

(assert (=> d!1337074 m!5087787))

(declare-fun m!5087789 () Bool)

(assert (=> b!4412088 m!5087789))

(declare-fun m!5087791 () Bool)

(assert (=> b!4412089 m!5087791))

(assert (=> d!1336956 d!1337074))

(declare-fun b!4412110 () Bool)

(declare-fun e!2747637 () List!49486)

(declare-fun call!307091 () List!49486)

(assert (=> b!4412110 (= e!2747637 call!307091)))

(declare-fun b!4412111 () Bool)

(declare-fun res!1821353 () Bool)

(declare-fun e!2747638 () Bool)

(assert (=> b!4412111 (=> (not res!1821353) (not e!2747638))))

(declare-fun lt!1614546 () List!49486)

(assert (=> b!4412111 (= res!1821353 (containsKey!994 lt!1614546 (_1!27800 lt!1614370)))))

(declare-fun bm!307086 () Bool)

(declare-fun call!307093 () List!49486)

(declare-fun e!2747635 () List!49486)

(declare-fun c!751470 () Bool)

(declare-fun $colon$colon!768 (List!49486 tuple2!49012) List!49486)

(assert (=> bm!307086 (= call!307093 ($colon$colon!768 e!2747635 (ite c!751470 (h!55005 (toList!3303 lm!1616)) (tuple2!49013 (_1!27800 lt!1614370) (_2!27800 lt!1614370)))))))

(declare-fun c!751471 () Bool)

(assert (=> bm!307086 (= c!751471 c!751470)))

(declare-fun d!1337076 () Bool)

(assert (=> d!1337076 e!2747638))

(declare-fun res!1821354 () Bool)

(assert (=> d!1337076 (=> (not res!1821354) (not e!2747638))))

(assert (=> d!1337076 (= res!1821354 (isStrictlySorted!192 lt!1614546))))

(declare-fun e!2747636 () List!49486)

(assert (=> d!1337076 (= lt!1614546 e!2747636)))

(assert (=> d!1337076 (= c!751470 (and (is-Cons!49362 (toList!3303 lm!1616)) (bvslt (_1!27800 (h!55005 (toList!3303 lm!1616))) (_1!27800 lt!1614370))))))

(assert (=> d!1337076 (isStrictlySorted!192 (toList!3303 lm!1616))))

(assert (=> d!1337076 (= (insertStrictlySorted!220 (toList!3303 lm!1616) (_1!27800 lt!1614370) (_2!27800 lt!1614370)) lt!1614546)))

(declare-fun b!4412112 () Bool)

(assert (=> b!4412112 (= e!2747636 call!307093)))

(declare-fun b!4412113 () Bool)

(assert (=> b!4412113 (= e!2747635 (insertStrictlySorted!220 (t!356424 (toList!3303 lm!1616)) (_1!27800 lt!1614370) (_2!27800 lt!1614370)))))

(declare-fun b!4412114 () Bool)

(declare-fun c!751469 () Bool)

(declare-fun c!751468 () Bool)

(assert (=> b!4412114 (= e!2747635 (ite c!751469 (t!356424 (toList!3303 lm!1616)) (ite c!751468 (Cons!49362 (h!55005 (toList!3303 lm!1616)) (t!356424 (toList!3303 lm!1616))) Nil!49362)))))

(declare-fun b!4412115 () Bool)

(assert (=> b!4412115 (= e!2747638 (contains!11796 lt!1614546 (tuple2!49013 (_1!27800 lt!1614370) (_2!27800 lt!1614370))))))

(declare-fun b!4412116 () Bool)

(assert (=> b!4412116 (= e!2747636 e!2747637)))

(assert (=> b!4412116 (= c!751469 (and (is-Cons!49362 (toList!3303 lm!1616)) (= (_1!27800 (h!55005 (toList!3303 lm!1616))) (_1!27800 lt!1614370))))))

(declare-fun bm!307087 () Bool)

(assert (=> bm!307087 (= call!307091 call!307093)))

(declare-fun b!4412117 () Bool)

(assert (=> b!4412117 (= c!751468 (and (is-Cons!49362 (toList!3303 lm!1616)) (bvsgt (_1!27800 (h!55005 (toList!3303 lm!1616))) (_1!27800 lt!1614370))))))

(declare-fun e!2747634 () List!49486)

(assert (=> b!4412117 (= e!2747637 e!2747634)))

(declare-fun bm!307088 () Bool)

(declare-fun call!307092 () List!49486)

(assert (=> bm!307088 (= call!307092 call!307091)))

(declare-fun b!4412118 () Bool)

(assert (=> b!4412118 (= e!2747634 call!307092)))

(declare-fun b!4412119 () Bool)

(assert (=> b!4412119 (= e!2747634 call!307092)))

(assert (= (and d!1337076 c!751470) b!4412112))

(assert (= (and d!1337076 (not c!751470)) b!4412116))

(assert (= (and b!4412116 c!751469) b!4412110))

(assert (= (and b!4412116 (not c!751469)) b!4412117))

(assert (= (and b!4412117 c!751468) b!4412119))

(assert (= (and b!4412117 (not c!751468)) b!4412118))

(assert (= (or b!4412119 b!4412118) bm!307088))

(assert (= (or b!4412110 bm!307088) bm!307087))

(assert (= (or b!4412112 bm!307087) bm!307086))

(assert (= (and bm!307086 c!751471) b!4412113))

(assert (= (and bm!307086 (not c!751471)) b!4412114))

(assert (= (and d!1337076 res!1821354) b!4412111))

(assert (= (and b!4412111 res!1821353) b!4412115))

(declare-fun m!5087793 () Bool)

(assert (=> d!1337076 m!5087793))

(assert (=> d!1337076 m!5087549))

(declare-fun m!5087795 () Bool)

(assert (=> bm!307086 m!5087795))

(declare-fun m!5087797 () Bool)

(assert (=> b!4412111 m!5087797))

(declare-fun m!5087799 () Bool)

(assert (=> b!4412115 m!5087799))

(declare-fun m!5087801 () Bool)

(assert (=> b!4412113 m!5087801))

(assert (=> d!1336956 d!1337076))

(declare-fun d!1337078 () Bool)

(declare-fun res!1821359 () Bool)

(declare-fun e!2747643 () Bool)

(assert (=> d!1337078 (=> res!1821359 e!2747643)))

(assert (=> d!1337078 (= res!1821359 (or (is-Nil!49362 (toList!3303 lm!1616)) (is-Nil!49362 (t!356424 (toList!3303 lm!1616)))))))

(assert (=> d!1337078 (= (isStrictlySorted!192 (toList!3303 lm!1616)) e!2747643)))

(declare-fun b!4412124 () Bool)

(declare-fun e!2747644 () Bool)

(assert (=> b!4412124 (= e!2747643 e!2747644)))

(declare-fun res!1821360 () Bool)

(assert (=> b!4412124 (=> (not res!1821360) (not e!2747644))))

(assert (=> b!4412124 (= res!1821360 (bvslt (_1!27800 (h!55005 (toList!3303 lm!1616))) (_1!27800 (h!55005 (t!356424 (toList!3303 lm!1616))))))))

(declare-fun b!4412125 () Bool)

(assert (=> b!4412125 (= e!2747644 (isStrictlySorted!192 (t!356424 (toList!3303 lm!1616))))))

(assert (= (and d!1337078 (not res!1821359)) b!4412124))

(assert (= (and b!4412124 res!1821360) b!4412125))

(declare-fun m!5087803 () Bool)

(assert (=> b!4412125 m!5087803))

(assert (=> d!1336978 d!1337078))

(declare-fun d!1337080 () Bool)

(declare-fun res!1821361 () Bool)

(declare-fun e!2747645 () Bool)

(assert (=> d!1337080 (=> res!1821361 e!2747645)))

(assert (=> d!1337080 (= res!1821361 (is-Nil!49362 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194)))))))

(assert (=> d!1337080 (= (forall!9424 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194))) lambda!150830) e!2747645)))

(declare-fun b!4412126 () Bool)

(declare-fun e!2747646 () Bool)

(assert (=> b!4412126 (= e!2747645 e!2747646)))

(declare-fun res!1821362 () Bool)

(assert (=> b!4412126 (=> (not res!1821362) (not e!2747646))))

(assert (=> b!4412126 (= res!1821362 (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194))))))))

(declare-fun b!4412127 () Bool)

(assert (=> b!4412127 (= e!2747646 (forall!9424 (t!356424 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194)))) lambda!150830))))

(assert (= (and d!1337080 (not res!1821361)) b!4412126))

(assert (= (and b!4412126 res!1821362) b!4412127))

(declare-fun b_lambda!141935 () Bool)

(assert (=> (not b_lambda!141935) (not b!4412126)))

(declare-fun m!5087805 () Bool)

(assert (=> b!4412126 m!5087805))

(declare-fun m!5087807 () Bool)

(assert (=> b!4412127 m!5087807))

(assert (=> d!1336960 d!1337080))

(declare-fun d!1337082 () Bool)

(declare-fun e!2747647 () Bool)

(assert (=> d!1337082 e!2747647))

(declare-fun res!1821363 () Bool)

(assert (=> d!1337082 (=> (not res!1821363) (not e!2747647))))

(declare-fun lt!1614550 () ListLongMap!1953)

(assert (=> d!1337082 (= res!1821363 (contains!11792 lt!1614550 (_1!27800 (tuple2!49013 hash!366 newBucket!194))))))

(declare-fun lt!1614547 () List!49486)

(assert (=> d!1337082 (= lt!1614550 (ListLongMap!1954 lt!1614547))))

(declare-fun lt!1614548 () Unit!80463)

(declare-fun lt!1614549 () Unit!80463)

(assert (=> d!1337082 (= lt!1614548 lt!1614549)))

(assert (=> d!1337082 (= (getValueByKey!631 lt!1614547 (_1!27800 (tuple2!49013 hash!366 newBucket!194))) (Some!10644 (_2!27800 (tuple2!49013 hash!366 newBucket!194))))))

(assert (=> d!1337082 (= lt!1614549 (lemmaContainsTupThenGetReturnValue!374 lt!1614547 (_1!27800 (tuple2!49013 hash!366 newBucket!194)) (_2!27800 (tuple2!49013 hash!366 newBucket!194))))))

(assert (=> d!1337082 (= lt!1614547 (insertStrictlySorted!220 (toList!3303 lm!1616) (_1!27800 (tuple2!49013 hash!366 newBucket!194)) (_2!27800 (tuple2!49013 hash!366 newBucket!194))))))

(assert (=> d!1337082 (= (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194)) lt!1614550)))

(declare-fun b!4412128 () Bool)

(declare-fun res!1821364 () Bool)

(assert (=> b!4412128 (=> (not res!1821364) (not e!2747647))))

(assert (=> b!4412128 (= res!1821364 (= (getValueByKey!631 (toList!3303 lt!1614550) (_1!27800 (tuple2!49013 hash!366 newBucket!194))) (Some!10644 (_2!27800 (tuple2!49013 hash!366 newBucket!194)))))))

(declare-fun b!4412129 () Bool)

(assert (=> b!4412129 (= e!2747647 (contains!11796 (toList!3303 lt!1614550) (tuple2!49013 hash!366 newBucket!194)))))

(assert (= (and d!1337082 res!1821363) b!4412128))

(assert (= (and b!4412128 res!1821364) b!4412129))

(declare-fun m!5087809 () Bool)

(assert (=> d!1337082 m!5087809))

(declare-fun m!5087811 () Bool)

(assert (=> d!1337082 m!5087811))

(declare-fun m!5087813 () Bool)

(assert (=> d!1337082 m!5087813))

(declare-fun m!5087815 () Bool)

(assert (=> d!1337082 m!5087815))

(declare-fun m!5087817 () Bool)

(assert (=> b!4412128 m!5087817))

(declare-fun m!5087819 () Bool)

(assert (=> b!4412129 m!5087819))

(assert (=> d!1336960 d!1337082))

(declare-fun d!1337084 () Bool)

(assert (=> d!1337084 (forall!9424 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194))) lambda!150830)))

(assert (=> d!1337084 true))

(declare-fun _$31!355 () Unit!80463)

(assert (=> d!1337084 (= (choose!27761 lm!1616 lambda!150830 hash!366 newBucket!194) _$31!355)))

(declare-fun bs!752831 () Bool)

(assert (= bs!752831 d!1337084))

(assert (=> bs!752831 m!5087523))

(assert (=> bs!752831 m!5087525))

(assert (=> d!1336960 d!1337084))

(assert (=> d!1336960 d!1336968))

(declare-fun b!4412134 () Bool)

(declare-fun e!2747649 () Option!10645)

(assert (=> b!4412134 (= e!2747649 None!10644)))

(declare-fun b!4412133 () Bool)

(assert (=> b!4412133 (= e!2747649 (getValueByKey!631 (t!356424 (toList!3303 lt!1614400)) (_1!27800 lt!1614370)))))

(declare-fun b!4412131 () Bool)

(declare-fun e!2747648 () Option!10645)

(assert (=> b!4412131 (= e!2747648 (Some!10644 (_2!27800 (h!55005 (toList!3303 lt!1614400)))))))

(declare-fun b!4412132 () Bool)

(assert (=> b!4412132 (= e!2747648 e!2747649)))

(declare-fun c!751473 () Bool)

(assert (=> b!4412132 (= c!751473 (and (is-Cons!49362 (toList!3303 lt!1614400)) (not (= (_1!27800 (h!55005 (toList!3303 lt!1614400))) (_1!27800 lt!1614370)))))))

(declare-fun d!1337086 () Bool)

(declare-fun c!751472 () Bool)

(assert (=> d!1337086 (= c!751472 (and (is-Cons!49362 (toList!3303 lt!1614400)) (= (_1!27800 (h!55005 (toList!3303 lt!1614400))) (_1!27800 lt!1614370))))))

(assert (=> d!1337086 (= (getValueByKey!631 (toList!3303 lt!1614400) (_1!27800 lt!1614370)) e!2747648)))

(assert (= (and d!1337086 c!751472) b!4412131))

(assert (= (and d!1337086 (not c!751472)) b!4412132))

(assert (= (and b!4412132 c!751473) b!4412133))

(assert (= (and b!4412132 (not c!751473)) b!4412134))

(declare-fun m!5087821 () Bool)

(assert (=> b!4412133 m!5087821))

(assert (=> b!4411822 d!1337086))

(declare-fun d!1337088 () Bool)

(declare-fun res!1821369 () Bool)

(declare-fun e!2747654 () Bool)

(assert (=> d!1337088 (=> res!1821369 e!2747654)))

(assert (=> d!1337088 (= res!1821369 (and (is-Cons!49362 (toList!3303 lm!1616)) (= (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366)))))

(assert (=> d!1337088 (= (containsKey!994 (toList!3303 lm!1616) hash!366) e!2747654)))

(declare-fun b!4412139 () Bool)

(declare-fun e!2747655 () Bool)

(assert (=> b!4412139 (= e!2747654 e!2747655)))

(declare-fun res!1821370 () Bool)

(assert (=> b!4412139 (=> (not res!1821370) (not e!2747655))))

(assert (=> b!4412139 (= res!1821370 (and (or (not (is-Cons!49362 (toList!3303 lm!1616))) (bvsle (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366)) (is-Cons!49362 (toList!3303 lm!1616)) (bvslt (_1!27800 (h!55005 (toList!3303 lm!1616))) hash!366)))))

(declare-fun b!4412140 () Bool)

(assert (=> b!4412140 (= e!2747655 (containsKey!994 (t!356424 (toList!3303 lm!1616)) hash!366))))

(assert (= (and d!1337088 (not res!1821369)) b!4412139))

(assert (= (and b!4412139 res!1821370) b!4412140))

(declare-fun m!5087823 () Bool)

(assert (=> b!4412140 m!5087823))

(assert (=> d!1336994 d!1337088))

(declare-fun d!1337090 () Bool)

(declare-fun lt!1614553 () Bool)

(declare-fun content!7908 (List!49486) (Set tuple2!49012))

(assert (=> d!1337090 (= lt!1614553 (set.member lt!1614370 (content!7908 (toList!3303 lt!1614400))))))

(declare-fun e!2747661 () Bool)

(assert (=> d!1337090 (= lt!1614553 e!2747661)))

(declare-fun res!1821375 () Bool)

(assert (=> d!1337090 (=> (not res!1821375) (not e!2747661))))

(assert (=> d!1337090 (= res!1821375 (is-Cons!49362 (toList!3303 lt!1614400)))))

(assert (=> d!1337090 (= (contains!11796 (toList!3303 lt!1614400) lt!1614370) lt!1614553)))

(declare-fun b!4412145 () Bool)

(declare-fun e!2747660 () Bool)

(assert (=> b!4412145 (= e!2747661 e!2747660)))

(declare-fun res!1821376 () Bool)

(assert (=> b!4412145 (=> res!1821376 e!2747660)))

(assert (=> b!4412145 (= res!1821376 (= (h!55005 (toList!3303 lt!1614400)) lt!1614370))))

(declare-fun b!4412146 () Bool)

(assert (=> b!4412146 (= e!2747660 (contains!11796 (t!356424 (toList!3303 lt!1614400)) lt!1614370))))

(assert (= (and d!1337090 res!1821375) b!4412145))

(assert (= (and b!4412145 (not res!1821376)) b!4412146))

(declare-fun m!5087825 () Bool)

(assert (=> d!1337090 m!5087825))

(declare-fun m!5087827 () Bool)

(assert (=> d!1337090 m!5087827))

(declare-fun m!5087829 () Bool)

(assert (=> b!4412146 m!5087829))

(assert (=> b!4411823 d!1337090))

(declare-fun bs!752840 () Bool)

(declare-fun b!4412240 () Bool)

(assert (= bs!752840 (and b!4412240 d!1336972)))

(declare-fun lambda!150922 () Int)

(assert (=> bs!752840 (not (= lambda!150922 lambda!150845))))

(assert (=> b!4412240 true))

(declare-fun bs!752841 () Bool)

(declare-fun b!4412238 () Bool)

(assert (= bs!752841 (and b!4412238 d!1336972)))

(declare-fun lambda!150923 () Int)

(assert (=> bs!752841 (not (= lambda!150923 lambda!150845))))

(declare-fun bs!752842 () Bool)

(assert (= bs!752842 (and b!4412238 b!4412240)))

(assert (=> bs!752842 (= lambda!150923 lambda!150922)))

(assert (=> b!4412238 true))

(declare-fun lambda!150924 () Int)

(assert (=> bs!752841 (not (= lambda!150924 lambda!150845))))

(declare-fun lt!1614630 () ListMap!2547)

(assert (=> bs!752842 (= (= lt!1614630 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (= lambda!150924 lambda!150922))))

(assert (=> b!4412238 (= (= lt!1614630 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (= lambda!150924 lambda!150923))))

(assert (=> b!4412238 true))

(declare-fun bs!752843 () Bool)

(declare-fun d!1337092 () Bool)

(assert (= bs!752843 (and d!1337092 d!1336972)))

(declare-fun lambda!150925 () Int)

(assert (=> bs!752843 (not (= lambda!150925 lambda!150845))))

(declare-fun bs!752844 () Bool)

(assert (= bs!752844 (and d!1337092 b!4412240)))

(declare-fun lt!1614628 () ListMap!2547)

(assert (=> bs!752844 (= (= lt!1614628 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (= lambda!150925 lambda!150922))))

(declare-fun bs!752845 () Bool)

(assert (= bs!752845 (and d!1337092 b!4412238)))

(assert (=> bs!752845 (= (= lt!1614628 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (= lambda!150925 lambda!150923))))

(assert (=> bs!752845 (= (= lt!1614628 lt!1614630) (= lambda!150925 lambda!150924))))

(assert (=> d!1337092 true))

(declare-fun c!751485 () Bool)

(declare-fun call!307102 () Bool)

(declare-fun bm!307095 () Bool)

(assert (=> bm!307095 (= call!307102 (forall!9426 (ite c!751485 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (t!356423 (_2!27800 (h!55005 (toList!3303 lm!1616))))) (ite c!751485 lambda!150922 lambda!150924)))))

(declare-fun call!307101 () Bool)

(declare-fun bm!307096 () Bool)

(assert (=> bm!307096 (= call!307101 (forall!9426 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) (ite c!751485 lambda!150922 lambda!150923)))))

(declare-fun e!2747721 () ListMap!2547)

(assert (=> b!4412238 (= e!2747721 lt!1614630)))

(declare-fun lt!1614624 () ListMap!2547)

(declare-fun +!927 (ListMap!2547 tuple2!49010) ListMap!2547)

(assert (=> b!4412238 (= lt!1614624 (+!927 (extractMap!719 (t!356424 (toList!3303 lm!1616))) (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(assert (=> b!4412238 (= lt!1614630 (addToMapMapFromBucket!317 (t!356423 (_2!27800 (h!55005 (toList!3303 lm!1616)))) (+!927 (extractMap!719 (t!356424 (toList!3303 lm!1616))) (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))))

(declare-fun lt!1614633 () Unit!80463)

(declare-fun call!307100 () Unit!80463)

(assert (=> b!4412238 (= lt!1614633 call!307100)))

(assert (=> b!4412238 call!307101))

(declare-fun lt!1614639 () Unit!80463)

(assert (=> b!4412238 (= lt!1614639 lt!1614633)))

(assert (=> b!4412238 (forall!9426 (toList!3304 lt!1614624) lambda!150924)))

(declare-fun lt!1614644 () Unit!80463)

(declare-fun Unit!80478 () Unit!80463)

(assert (=> b!4412238 (= lt!1614644 Unit!80478)))

(assert (=> b!4412238 call!307102))

(declare-fun lt!1614631 () Unit!80463)

(declare-fun Unit!80479 () Unit!80463)

(assert (=> b!4412238 (= lt!1614631 Unit!80479)))

(declare-fun lt!1614626 () Unit!80463)

(declare-fun Unit!80480 () Unit!80463)

(assert (=> b!4412238 (= lt!1614626 Unit!80480)))

(declare-fun lt!1614636 () Unit!80463)

(declare-fun forallContained!2053 (List!49485 Int tuple2!49010) Unit!80463)

(assert (=> b!4412238 (= lt!1614636 (forallContained!2053 (toList!3304 lt!1614624) lambda!150924 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(assert (=> b!4412238 (contains!11793 lt!1614624 (_1!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(declare-fun lt!1614632 () Unit!80463)

(declare-fun Unit!80481 () Unit!80463)

(assert (=> b!4412238 (= lt!1614632 Unit!80481)))

(assert (=> b!4412238 (contains!11793 lt!1614630 (_1!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(declare-fun lt!1614634 () Unit!80463)

(declare-fun Unit!80482 () Unit!80463)

(assert (=> b!4412238 (= lt!1614634 Unit!80482)))

(assert (=> b!4412238 (forall!9426 (_2!27800 (h!55005 (toList!3303 lm!1616))) lambda!150924)))

(declare-fun lt!1614643 () Unit!80463)

(declare-fun Unit!80483 () Unit!80463)

(assert (=> b!4412238 (= lt!1614643 Unit!80483)))

(assert (=> b!4412238 (forall!9426 (toList!3304 lt!1614624) lambda!150924)))

(declare-fun lt!1614637 () Unit!80463)

(declare-fun Unit!80484 () Unit!80463)

(assert (=> b!4412238 (= lt!1614637 Unit!80484)))

(declare-fun lt!1614635 () Unit!80463)

(declare-fun Unit!80485 () Unit!80463)

(assert (=> b!4412238 (= lt!1614635 Unit!80485)))

(declare-fun lt!1614641 () Unit!80463)

(declare-fun addForallContainsKeyThenBeforeAdding!144 (ListMap!2547 ListMap!2547 K!10718 V!10964) Unit!80463)

(assert (=> b!4412238 (= lt!1614641 (addForallContainsKeyThenBeforeAdding!144 (extractMap!719 (t!356424 (toList!3303 lm!1616))) lt!1614630 (_1!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))) (_2!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))))

(assert (=> b!4412238 (forall!9426 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) lambda!150924)))

(declare-fun lt!1614625 () Unit!80463)

(assert (=> b!4412238 (= lt!1614625 lt!1614641)))

(assert (=> b!4412238 (forall!9426 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) lambda!150924)))

(declare-fun lt!1614629 () Unit!80463)

(declare-fun Unit!80486 () Unit!80463)

(assert (=> b!4412238 (= lt!1614629 Unit!80486)))

(declare-fun res!1821440 () Bool)

(assert (=> b!4412238 (= res!1821440 (forall!9426 (_2!27800 (h!55005 (toList!3303 lm!1616))) lambda!150924))))

(declare-fun e!2747723 () Bool)

(assert (=> b!4412238 (=> (not res!1821440) (not e!2747723))))

(assert (=> b!4412238 e!2747723))

(declare-fun lt!1614627 () Unit!80463)

(declare-fun Unit!80487 () Unit!80463)

(assert (=> b!4412238 (= lt!1614627 Unit!80487)))

(declare-fun b!4412239 () Bool)

(declare-fun e!2747722 () Bool)

(assert (=> b!4412239 (= e!2747722 (invariantList!766 (toList!3304 lt!1614628)))))

(assert (=> b!4412240 (= e!2747721 (extractMap!719 (t!356424 (toList!3303 lm!1616))))))

(declare-fun lt!1614642 () Unit!80463)

(assert (=> b!4412240 (= lt!1614642 call!307100)))

(assert (=> b!4412240 call!307102))

(declare-fun lt!1614640 () Unit!80463)

(assert (=> b!4412240 (= lt!1614640 lt!1614642)))

(assert (=> b!4412240 call!307101))

(declare-fun lt!1614638 () Unit!80463)

(declare-fun Unit!80488 () Unit!80463)

(assert (=> b!4412240 (= lt!1614638 Unit!80488)))

(declare-fun b!4412241 () Bool)

(assert (=> b!4412241 (= e!2747723 (forall!9426 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) lambda!150924))))

(declare-fun bm!307097 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!144 (ListMap!2547) Unit!80463)

(assert (=> bm!307097 (= call!307100 (lemmaContainsAllItsOwnKeys!144 (extractMap!719 (t!356424 (toList!3303 lm!1616)))))))

(declare-fun b!4412237 () Bool)

(declare-fun res!1821439 () Bool)

(assert (=> b!4412237 (=> (not res!1821439) (not e!2747722))))

(assert (=> b!4412237 (= res!1821439 (forall!9426 (toList!3304 (extractMap!719 (t!356424 (toList!3303 lm!1616)))) lambda!150925))))

(assert (=> d!1337092 e!2747722))

(declare-fun res!1821441 () Bool)

(assert (=> d!1337092 (=> (not res!1821441) (not e!2747722))))

(assert (=> d!1337092 (= res!1821441 (forall!9426 (_2!27800 (h!55005 (toList!3303 lm!1616))) lambda!150925))))

(assert (=> d!1337092 (= lt!1614628 e!2747721)))

(assert (=> d!1337092 (= c!751485 (is-Nil!49361 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))

(assert (=> d!1337092 (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lm!1616))))))

(assert (=> d!1337092 (= (addToMapMapFromBucket!317 (_2!27800 (h!55005 (toList!3303 lm!1616))) (extractMap!719 (t!356424 (toList!3303 lm!1616)))) lt!1614628)))

(assert (= (and d!1337092 c!751485) b!4412240))

(assert (= (and d!1337092 (not c!751485)) b!4412238))

(assert (= (and b!4412238 res!1821440) b!4412241))

(assert (= (or b!4412240 b!4412238) bm!307097))

(assert (= (or b!4412240 b!4412238) bm!307096))

(assert (= (or b!4412240 b!4412238) bm!307095))

(assert (= (and d!1337092 res!1821441) b!4412237))

(assert (= (and b!4412237 res!1821439) b!4412239))

(assert (=> bm!307097 m!5087587))

(declare-fun m!5087911 () Bool)

(assert (=> bm!307097 m!5087911))

(declare-fun m!5087913 () Bool)

(assert (=> bm!307095 m!5087913))

(declare-fun m!5087915 () Bool)

(assert (=> bm!307096 m!5087915))

(declare-fun m!5087917 () Bool)

(assert (=> b!4412241 m!5087917))

(declare-fun m!5087919 () Bool)

(assert (=> b!4412237 m!5087919))

(declare-fun m!5087921 () Bool)

(assert (=> b!4412239 m!5087921))

(declare-fun m!5087923 () Bool)

(assert (=> b!4412238 m!5087923))

(assert (=> b!4412238 m!5087587))

(declare-fun m!5087925 () Bool)

(assert (=> b!4412238 m!5087925))

(assert (=> b!4412238 m!5087925))

(declare-fun m!5087927 () Bool)

(assert (=> b!4412238 m!5087927))

(assert (=> b!4412238 m!5087917))

(declare-fun m!5087929 () Bool)

(assert (=> b!4412238 m!5087929))

(assert (=> b!4412238 m!5087587))

(declare-fun m!5087931 () Bool)

(assert (=> b!4412238 m!5087931))

(assert (=> b!4412238 m!5087917))

(declare-fun m!5087933 () Bool)

(assert (=> b!4412238 m!5087933))

(declare-fun m!5087935 () Bool)

(assert (=> b!4412238 m!5087935))

(assert (=> b!4412238 m!5087935))

(assert (=> b!4412238 m!5087933))

(declare-fun m!5087939 () Bool)

(assert (=> b!4412238 m!5087939))

(declare-fun m!5087941 () Bool)

(assert (=> d!1337092 m!5087941))

(assert (=> d!1337092 m!5087615))

(assert (=> b!4411884 d!1337092))

(declare-fun bs!752847 () Bool)

(declare-fun d!1337126 () Bool)

(assert (= bs!752847 (and d!1337126 start!429342)))

(declare-fun lambda!150926 () Int)

(assert (=> bs!752847 (= lambda!150926 lambda!150830)))

(declare-fun bs!752848 () Bool)

(assert (= bs!752848 (and d!1337126 d!1336988)))

(assert (=> bs!752848 (= lambda!150926 lambda!150848)))

(declare-fun bs!752849 () Bool)

(assert (= bs!752849 (and d!1337126 d!1336998)))

(assert (=> bs!752849 (not (= lambda!150926 lambda!150851))))

(declare-fun lt!1614648 () ListMap!2547)

(assert (=> d!1337126 (invariantList!766 (toList!3304 lt!1614648))))

(declare-fun e!2747736 () ListMap!2547)

(assert (=> d!1337126 (= lt!1614648 e!2747736)))

(declare-fun c!751492 () Bool)

(assert (=> d!1337126 (= c!751492 (is-Cons!49362 (t!356424 (toList!3303 lm!1616))))))

(assert (=> d!1337126 (forall!9424 (t!356424 (toList!3303 lm!1616)) lambda!150926)))

(assert (=> d!1337126 (= (extractMap!719 (t!356424 (toList!3303 lm!1616))) lt!1614648)))

(declare-fun b!4412260 () Bool)

(assert (=> b!4412260 (= e!2747736 (addToMapMapFromBucket!317 (_2!27800 (h!55005 (t!356424 (toList!3303 lm!1616)))) (extractMap!719 (t!356424 (t!356424 (toList!3303 lm!1616))))))))

(declare-fun b!4412261 () Bool)

(assert (=> b!4412261 (= e!2747736 (ListMap!2548 Nil!49361))))

(assert (= (and d!1337126 c!751492) b!4412260))

(assert (= (and d!1337126 (not c!751492)) b!4412261))

(declare-fun m!5087943 () Bool)

(assert (=> d!1337126 m!5087943))

(declare-fun m!5087945 () Bool)

(assert (=> d!1337126 m!5087945))

(declare-fun m!5087947 () Bool)

(assert (=> b!4412260 m!5087947))

(assert (=> b!4412260 m!5087947))

(declare-fun m!5087949 () Bool)

(assert (=> b!4412260 m!5087949))

(assert (=> b!4411884 d!1337126))

(declare-fun d!1337128 () Bool)

(declare-fun res!1821448 () Bool)

(declare-fun e!2747737 () Bool)

(assert (=> d!1337128 (=> res!1821448 e!2747737)))

(assert (=> d!1337128 (= res!1821448 (not (is-Cons!49361 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(assert (=> d!1337128 (= (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lm!1616)))) e!2747737)))

(declare-fun b!4412262 () Bool)

(declare-fun e!2747738 () Bool)

(assert (=> b!4412262 (= e!2747737 e!2747738)))

(declare-fun res!1821449 () Bool)

(assert (=> b!4412262 (=> (not res!1821449) (not e!2747738))))

(assert (=> b!4412262 (= res!1821449 (not (containsKey!993 (t!356423 (_2!27800 (h!55005 (toList!3303 lm!1616)))) (_1!27799 (h!55004 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))))

(declare-fun b!4412263 () Bool)

(assert (=> b!4412263 (= e!2747738 (noDuplicateKeys!658 (t!356423 (_2!27800 (h!55005 (toList!3303 lm!1616))))))))

(assert (= (and d!1337128 (not res!1821448)) b!4412262))

(assert (= (and b!4412262 res!1821449) b!4412263))

(declare-fun m!5087951 () Bool)

(assert (=> b!4412262 m!5087951))

(declare-fun m!5087953 () Bool)

(assert (=> b!4412263 m!5087953))

(assert (=> bs!752807 d!1337128))

(declare-fun d!1337130 () Bool)

(declare-fun res!1821450 () Bool)

(declare-fun e!2747743 () Bool)

(assert (=> d!1337130 (=> res!1821450 e!2747743)))

(assert (=> d!1337130 (= res!1821450 (is-Nil!49362 (toList!3303 lm!1616)))))

(assert (=> d!1337130 (= (forall!9424 (toList!3303 lm!1616) lambda!150851) e!2747743)))

(declare-fun b!4412272 () Bool)

(declare-fun e!2747744 () Bool)

(assert (=> b!4412272 (= e!2747743 e!2747744)))

(declare-fun res!1821451 () Bool)

(assert (=> b!4412272 (=> (not res!1821451) (not e!2747744))))

(assert (=> b!4412272 (= res!1821451 (dynLambda!20793 lambda!150851 (h!55005 (toList!3303 lm!1616))))))

(declare-fun b!4412273 () Bool)

(assert (=> b!4412273 (= e!2747744 (forall!9424 (t!356424 (toList!3303 lm!1616)) lambda!150851))))

(assert (= (and d!1337130 (not res!1821450)) b!4412272))

(assert (= (and b!4412272 res!1821451) b!4412273))

(declare-fun b_lambda!141941 () Bool)

(assert (=> (not b_lambda!141941) (not b!4412272)))

(declare-fun m!5087955 () Bool)

(assert (=> b!4412272 m!5087955))

(declare-fun m!5087957 () Bool)

(assert (=> b!4412273 m!5087957))

(assert (=> d!1336998 d!1337130))

(declare-fun tp!1332247 () Bool)

(declare-fun e!2747745 () Bool)

(declare-fun b!4412274 () Bool)

(assert (=> b!4412274 (= e!2747745 (and tp_is_empty!25879 tp_is_empty!25877 tp!1332247))))

(assert (=> b!4411918 (= tp!1332237 e!2747745)))

(assert (= (and b!4411918 (is-Cons!49361 (t!356423 (t!356423 newBucket!194)))) b!4412274))

(declare-fun tp!1332248 () Bool)

(declare-fun e!2747746 () Bool)

(declare-fun b!4412275 () Bool)

(assert (=> b!4412275 (= e!2747746 (and tp_is_empty!25879 tp_is_empty!25877 tp!1332248))))

(assert (=> b!4411913 (= tp!1332233 e!2747746)))

(assert (= (and b!4411913 (is-Cons!49361 (_2!27800 (h!55005 (toList!3303 lm!1616))))) b!4412275))

(declare-fun b!4412276 () Bool)

(declare-fun e!2747747 () Bool)

(declare-fun tp!1332249 () Bool)

(declare-fun tp!1332250 () Bool)

(assert (=> b!4412276 (= e!2747747 (and tp!1332249 tp!1332250))))

(assert (=> b!4411913 (= tp!1332234 e!2747747)))

(assert (= (and b!4411913 (is-Cons!49362 (t!356424 (toList!3303 lm!1616)))) b!4412276))

(declare-fun b_lambda!141943 () Bool)

(assert (= b_lambda!141931 (or d!1336988 b_lambda!141943)))

(declare-fun bs!752850 () Bool)

(declare-fun d!1337132 () Bool)

(assert (= bs!752850 (and d!1337132 d!1336988)))

(assert (=> bs!752850 (= (dynLambda!20793 lambda!150848 (h!55005 (toList!3303 lm!1616))) (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 lm!1616)))))))

(assert (=> bs!752850 m!5087615))

(assert (=> b!4412061 d!1337132))

(declare-fun b_lambda!141945 () Bool)

(assert (= b_lambda!141929 (or start!429342 b_lambda!141945)))

(declare-fun bs!752851 () Bool)

(declare-fun d!1337134 () Bool)

(assert (= bs!752851 (and d!1337134 start!429342)))

(assert (=> bs!752851 (= (dynLambda!20793 lambda!150830 (h!55005 (t!356424 (toList!3303 lt!1614373)))) (noDuplicateKeys!658 (_2!27800 (h!55005 (t!356424 (toList!3303 lt!1614373))))))))

(declare-fun m!5087959 () Bool)

(assert (=> bs!752851 m!5087959))

(assert (=> b!4412013 d!1337134))

(declare-fun b_lambda!141947 () Bool)

(assert (= b_lambda!141941 (or d!1336998 b_lambda!141947)))

(declare-fun bs!752852 () Bool)

(declare-fun d!1337136 () Bool)

(assert (= bs!752852 (and d!1337136 d!1336998)))

(assert (=> bs!752852 (= (dynLambda!20793 lambda!150851 (h!55005 (toList!3303 lm!1616))) (allKeysSameHash!618 (_2!27800 (h!55005 (toList!3303 lm!1616))) (_1!27800 (h!55005 (toList!3303 lm!1616))) hashF!1220))))

(declare-fun m!5087961 () Bool)

(assert (=> bs!752852 m!5087961))

(assert (=> b!4412272 d!1337136))

(declare-fun b_lambda!141949 () Bool)

(assert (= b_lambda!141927 (or d!1336972 b_lambda!141949)))

(declare-fun bs!752853 () Bool)

(declare-fun d!1337138 () Bool)

(assert (= bs!752853 (and d!1337138 d!1336972)))

(assert (=> bs!752853 (= (dynLambda!20795 lambda!150845 (h!55004 newBucket!194)) (= (hash!1957 hashF!1220 (_1!27799 (h!55004 newBucket!194))) hash!366))))

(declare-fun m!5087963 () Bool)

(assert (=> bs!752853 m!5087963))

(assert (=> b!4412005 d!1337138))

(declare-fun b_lambda!141951 () Bool)

(assert (= b_lambda!141935 (or start!429342 b_lambda!141951)))

(declare-fun bs!752854 () Bool)

(declare-fun d!1337140 () Bool)

(assert (= bs!752854 (and d!1337140 start!429342)))

(assert (=> bs!752854 (= (dynLambda!20793 lambda!150830 (h!55005 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194))))) (noDuplicateKeys!658 (_2!27800 (h!55005 (toList!3303 (+!925 lm!1616 (tuple2!49013 hash!366 newBucket!194)))))))))

(declare-fun m!5087965 () Bool)

(assert (=> bs!752854 m!5087965))

(assert (=> b!4412126 d!1337140))

(declare-fun b_lambda!141953 () Bool)

(assert (= b_lambda!141933 (or start!429342 b_lambda!141953)))

(declare-fun bs!752855 () Bool)

(declare-fun d!1337142 () Bool)

(assert (= bs!752855 (and d!1337142 start!429342)))

(assert (=> bs!752855 (= (dynLambda!20793 lambda!150830 (h!55005 (t!356424 (toList!3303 lm!1616)))) (noDuplicateKeys!658 (_2!27800 (h!55005 (t!356424 (toList!3303 lm!1616))))))))

(declare-fun m!5087969 () Bool)

(assert (=> bs!752855 m!5087969))

(assert (=> b!4412067 d!1337142))

(push 1)

(assert (not b!4412089))

(assert (not d!1337070))

(assert (not b!4411997))

(assert (not bm!307096))

(assert (not b!4411996))

(assert (not bs!752850))

(assert (not b_lambda!141911))

(assert (not bs!752852))

(assert (not b_lambda!141945))

(assert (not b!4412034))

(assert (not d!1337090))

(assert (not b!4412146))

(assert (not b!4412038))

(assert (not bs!752854))

(assert (not d!1337044))

(assert (not bs!752855))

(assert (not b!4412111))

(assert (not b!4412241))

(assert (not d!1337074))

(assert (not b!4412262))

(assert (not d!1337032))

(assert (not b!4411998))

(assert (not b!4412039))

(assert (not b!4412068))

(assert (not b!4412064))

(assert (not d!1337022))

(assert (not d!1337126))

(assert (not b!4412263))

(assert (not d!1337048))

(assert (not b!4412076))

(assert (not b!4412239))

(assert (not b!4412274))

(assert (not b!4412088))

(assert (not d!1337082))

(assert (not d!1337076))

(assert (not b_lambda!141947))

(assert (not b!4412059))

(assert (not b!4412066))

(assert (not b!4412127))

(assert (not b!4412128))

(assert (not b!4412113))

(assert (not b!4412062))

(assert (not b!4412014))

(assert (not b_lambda!141949))

(assert (not d!1337054))

(assert (not b!4412237))

(assert (not b!4412046))

(assert (not d!1337060))

(assert (not b!4412125))

(assert (not b!4412074))

(assert (not bs!752851))

(assert (not d!1337028))

(assert (not b!4412115))

(assert (not b_lambda!141951))

(assert (not b_lambda!141953))

(assert (not b!4412037))

(assert (not b!4412273))

(assert (not b!4412129))

(assert (not bm!307095))

(assert (not b!4412063))

(assert (not b!4412036))

(assert (not d!1337046))

(assert (not b_lambda!141943))

(assert (not b!4411982))

(assert (not b!4412260))

(assert (not b!4412057))

(assert (not d!1337084))

(assert (not b!4412012))

(assert (not bm!307086))

(assert (not b!4412140))

(assert (not bm!307097))

(assert (not d!1337042))

(assert (not b!4412060))

(assert (not b!4412133))

(assert (not b!4412276))

(assert (not b!4412077))

(assert tp_is_empty!25879)

(assert (not b!4412238))

(assert (not b!4412082))

(assert (not b_lambda!141915))

(assert (not d!1337024))

(assert (not d!1337030))

(assert (not b!4412006))

(assert (not b!4411989))

(assert (not b!4412075))

(assert (not d!1337038))

(assert tp_is_empty!25877)

(assert (not b!4412275))

(assert (not bs!752853))

(assert (not d!1337092))

(assert (not b_lambda!141913))

(assert (not b!4412079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

