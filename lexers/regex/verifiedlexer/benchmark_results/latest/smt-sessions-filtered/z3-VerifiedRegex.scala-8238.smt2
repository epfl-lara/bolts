; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!426748 () Bool)

(assert start!426748)

(declare-fun b!4395409 () Bool)

(declare-fun e!2736715 () Bool)

(declare-fun e!2736714 () Bool)

(assert (=> b!4395409 (= e!2736715 e!2736714)))

(declare-fun res!1812199 () Bool)

(assert (=> b!4395409 (=> res!1812199 e!2736714)))

(declare-datatypes ((V!10841 0))(
  ( (V!10842 (val!16747 Int)) )
))
(declare-datatypes ((K!10595 0))(
  ( (K!10596 (val!16748 Int)) )
))
(declare-datatypes ((tuple2!48814 0))(
  ( (tuple2!48815 (_1!27701 K!10595) (_2!27701 V!10841)) )
))
(declare-datatypes ((List!49359 0))(
  ( (Nil!49235) (Cons!49235 (h!54848 tuple2!48814) (t!356293 List!49359)) )
))
(declare-datatypes ((tuple2!48816 0))(
  ( (tuple2!48817 (_1!27702 (_ BitVec 64)) (_2!27702 List!49359)) )
))
(declare-datatypes ((List!49360 0))(
  ( (Nil!49236) (Cons!49236 (h!54849 tuple2!48816) (t!356294 List!49360)) )
))
(declare-datatypes ((ListLongMap!1855 0))(
  ( (ListLongMap!1856 (toList!3205 List!49360)) )
))
(declare-fun lm!1707 () ListLongMap!1855)

(declare-fun noDuplicateKeys!611 (List!49359) Bool)

(assert (=> b!4395409 (= res!1812199 (not (noDuplicateKeys!611 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(declare-datatypes ((ListMap!2449 0))(
  ( (ListMap!2450 (toList!3206 List!49359)) )
))
(declare-fun lt!1602183 () ListMap!2449)

(declare-fun extractMap!670 (List!49360) ListMap!2449)

(assert (=> b!4395409 (= lt!1602183 (extractMap!670 (t!356294 (toList!3205 lm!1707))))))

(declare-fun e!2736716 () Bool)

(assert (=> b!4395409 e!2736716))

(declare-fun res!1812197 () Bool)

(assert (=> b!4395409 (=> (not res!1812197) (not e!2736716))))

(declare-fun key!3918 () K!10595)

(declare-fun containsKey!895 (List!49359 K!10595) Bool)

(declare-fun apply!11463 (ListLongMap!1855 (_ BitVec 64)) List!49359)

(assert (=> b!4395409 (= res!1812197 (not (containsKey!895 (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707)))) key!3918)))))

(declare-datatypes ((Unit!78252 0))(
  ( (Unit!78253) )
))
(declare-fun lt!1602180 () Unit!78252)

(declare-datatypes ((Hashable!5003 0))(
  ( (HashableExt!5002 (__x!30706 Int)) )
))
(declare-fun hashF!1247 () Hashable!5003)

(declare-fun lemmaNotSameHashThenCannotContainKey!82 (ListLongMap!1855 K!10595 (_ BitVec 64) Hashable!5003) Unit!78252)

(assert (=> b!4395409 (= lt!1602180 (lemmaNotSameHashThenCannotContainKey!82 lm!1707 key!3918 (_1!27702 (h!54849 (toList!3205 lm!1707))) hashF!1247))))

(declare-fun b!4395410 () Bool)

(declare-fun res!1812205 () Bool)

(declare-fun e!2736711 () Bool)

(assert (=> b!4395410 (=> res!1812205 e!2736711)))

(declare-fun newBucket!200 () List!49359)

(assert (=> b!4395410 (= res!1812205 (not (noDuplicateKeys!611 newBucket!200)))))

(declare-fun b!4395411 () Bool)

(assert (=> b!4395411 (= e!2736716 (not (containsKey!895 (_2!27702 (h!54849 (toList!3205 lm!1707))) key!3918)))))

(declare-fun b!4395412 () Bool)

(declare-fun e!2736712 () Bool)

(declare-fun tp!1331576 () Bool)

(assert (=> b!4395412 (= e!2736712 tp!1331576)))

(declare-fun b!4395413 () Bool)

(declare-fun res!1812202 () Bool)

(declare-fun e!2736709 () Bool)

(assert (=> b!4395413 (=> (not res!1812202) (not e!2736709))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun hash!1819 (Hashable!5003 K!10595) (_ BitVec 64))

(assert (=> b!4395413 (= res!1812202 (= (hash!1819 hashF!1247 key!3918) hash!377))))

(declare-fun b!4395414 () Bool)

(declare-fun e!2736710 () Bool)

(declare-fun lt!1602177 () ListLongMap!1855)

(declare-fun lambda!147761 () Int)

(declare-fun forall!9328 (List!49360 Int) Bool)

(assert (=> b!4395414 (= e!2736710 (forall!9328 (toList!3205 lt!1602177) lambda!147761))))

(declare-fun b!4395415 () Bool)

(declare-fun res!1812200 () Bool)

(assert (=> b!4395415 (=> (not res!1812200) (not e!2736709))))

(declare-fun contains!11608 (ListMap!2449 K!10595) Bool)

(assert (=> b!4395415 (= res!1812200 (contains!11608 (extractMap!670 (toList!3205 lm!1707)) key!3918))))

(declare-fun b!4395416 () Bool)

(declare-fun addToMapMapFromBucket!284 (List!49359 ListMap!2449) ListMap!2449)

(assert (=> b!4395416 (= e!2736714 (contains!11608 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183) key!3918))))

(declare-fun b!4395417 () Bool)

(declare-fun res!1812207 () Bool)

(assert (=> b!4395417 (=> (not res!1812207) (not e!2736709))))

(declare-fun allKeysSameHash!569 (List!49359 (_ BitVec 64) Hashable!5003) Bool)

(assert (=> b!4395417 (= res!1812207 (allKeysSameHash!569 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4395419 () Bool)

(assert (=> b!4395419 (= e!2736711 e!2736715)))

(declare-fun res!1812198 () Bool)

(assert (=> b!4395419 (=> res!1812198 e!2736715)))

(get-info :version)

(assert (=> b!4395419 (= res!1812198 (or (and ((_ is Cons!49236) (toList!3205 lm!1707)) (= (_1!27702 (h!54849 (toList!3205 lm!1707))) hash!377)) (not ((_ is Cons!49236) (toList!3205 lm!1707))) (= (_1!27702 (h!54849 (toList!3205 lm!1707))) hash!377)))))

(assert (=> b!4395419 e!2736710))

(declare-fun res!1812204 () Bool)

(assert (=> b!4395419 (=> (not res!1812204) (not e!2736710))))

(assert (=> b!4395419 (= res!1812204 (forall!9328 (toList!3205 lt!1602177) lambda!147761))))

(declare-fun +!842 (ListLongMap!1855 tuple2!48816) ListLongMap!1855)

(assert (=> b!4395419 (= lt!1602177 (+!842 lm!1707 (tuple2!48817 hash!377 newBucket!200)))))

(declare-fun lt!1602179 () Unit!78252)

(declare-fun addValidProp!257 (ListLongMap!1855 Int (_ BitVec 64) List!49359) Unit!78252)

(assert (=> b!4395419 (= lt!1602179 (addValidProp!257 lm!1707 lambda!147761 hash!377 newBucket!200))))

(assert (=> b!4395419 (forall!9328 (toList!3205 lm!1707) lambda!147761)))

(declare-fun b!4395420 () Bool)

(declare-fun res!1812201 () Bool)

(assert (=> b!4395420 (=> (not res!1812201) (not e!2736709))))

(declare-fun allKeysSameHashInMap!715 (ListLongMap!1855 Hashable!5003) Bool)

(assert (=> b!4395420 (= res!1812201 (allKeysSameHashInMap!715 lm!1707 hashF!1247))))

(declare-fun b!4395421 () Bool)

(assert (=> b!4395421 (= e!2736709 (not e!2736711))))

(declare-fun res!1812206 () Bool)

(assert (=> b!4395421 (=> res!1812206 e!2736711)))

(declare-fun lt!1602178 () List!49359)

(declare-fun newValue!99 () V!10841)

(declare-fun removePairForKey!579 (List!49359 K!10595) List!49359)

(assert (=> b!4395421 (= res!1812206 (not (= newBucket!200 (Cons!49235 (tuple2!48815 key!3918 newValue!99) (removePairForKey!579 lt!1602178 key!3918)))))))

(declare-fun lt!1602184 () Unit!78252)

(declare-fun lt!1602182 () tuple2!48816)

(declare-fun forallContained!1965 (List!49360 Int tuple2!48816) Unit!78252)

(assert (=> b!4395421 (= lt!1602184 (forallContained!1965 (toList!3205 lm!1707) lambda!147761 lt!1602182))))

(declare-fun contains!11609 (List!49360 tuple2!48816) Bool)

(assert (=> b!4395421 (contains!11609 (toList!3205 lm!1707) lt!1602182)))

(assert (=> b!4395421 (= lt!1602182 (tuple2!48817 hash!377 lt!1602178))))

(declare-fun lt!1602181 () Unit!78252)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!456 (List!49360 (_ BitVec 64) List!49359) Unit!78252)

(assert (=> b!4395421 (= lt!1602181 (lemmaGetValueByKeyImpliesContainsTuple!456 (toList!3205 lm!1707) hash!377 lt!1602178))))

(assert (=> b!4395421 (= lt!1602178 (apply!11463 lm!1707 hash!377))))

(declare-fun b!4395422 () Bool)

(declare-fun tp!1331575 () Bool)

(declare-fun tp_is_empty!25681 () Bool)

(declare-fun e!2736713 () Bool)

(declare-fun tp_is_empty!25683 () Bool)

(assert (=> b!4395422 (= e!2736713 (and tp_is_empty!25681 tp_is_empty!25683 tp!1331575))))

(declare-fun res!1812203 () Bool)

(assert (=> start!426748 (=> (not res!1812203) (not e!2736709))))

(assert (=> start!426748 (= res!1812203 (forall!9328 (toList!3205 lm!1707) lambda!147761))))

(assert (=> start!426748 e!2736709))

(assert (=> start!426748 e!2736713))

(assert (=> start!426748 true))

(declare-fun inv!64781 (ListLongMap!1855) Bool)

(assert (=> start!426748 (and (inv!64781 lm!1707) e!2736712)))

(assert (=> start!426748 tp_is_empty!25681))

(assert (=> start!426748 tp_is_empty!25683))

(declare-fun b!4395418 () Bool)

(declare-fun res!1812196 () Bool)

(assert (=> b!4395418 (=> (not res!1812196) (not e!2736709))))

(declare-fun contains!11610 (ListLongMap!1855 (_ BitVec 64)) Bool)

(assert (=> b!4395418 (= res!1812196 (contains!11610 lm!1707 hash!377))))

(assert (= (and start!426748 res!1812203) b!4395420))

(assert (= (and b!4395420 res!1812201) b!4395413))

(assert (= (and b!4395413 res!1812202) b!4395417))

(assert (= (and b!4395417 res!1812207) b!4395415))

(assert (= (and b!4395415 res!1812200) b!4395418))

(assert (= (and b!4395418 res!1812196) b!4395421))

(assert (= (and b!4395421 (not res!1812206)) b!4395410))

(assert (= (and b!4395410 (not res!1812205)) b!4395419))

(assert (= (and b!4395419 res!1812204) b!4395414))

(assert (= (and b!4395419 (not res!1812198)) b!4395409))

(assert (= (and b!4395409 res!1812197) b!4395411))

(assert (= (and b!4395409 (not res!1812199)) b!4395416))

(assert (= (and start!426748 ((_ is Cons!49235) newBucket!200)) b!4395422))

(assert (= start!426748 b!4395412))

(declare-fun m!5055609 () Bool)

(assert (=> b!4395414 m!5055609))

(declare-fun m!5055611 () Bool)

(assert (=> b!4395416 m!5055611))

(assert (=> b!4395416 m!5055611))

(declare-fun m!5055613 () Bool)

(assert (=> b!4395416 m!5055613))

(declare-fun m!5055615 () Bool)

(assert (=> b!4395410 m!5055615))

(declare-fun m!5055617 () Bool)

(assert (=> b!4395411 m!5055617))

(declare-fun m!5055619 () Bool)

(assert (=> b!4395420 m!5055619))

(declare-fun m!5055621 () Bool)

(assert (=> start!426748 m!5055621))

(declare-fun m!5055623 () Bool)

(assert (=> start!426748 m!5055623))

(declare-fun m!5055625 () Bool)

(assert (=> b!4395413 m!5055625))

(declare-fun m!5055627 () Bool)

(assert (=> b!4395421 m!5055627))

(declare-fun m!5055629 () Bool)

(assert (=> b!4395421 m!5055629))

(declare-fun m!5055631 () Bool)

(assert (=> b!4395421 m!5055631))

(declare-fun m!5055633 () Bool)

(assert (=> b!4395421 m!5055633))

(declare-fun m!5055635 () Bool)

(assert (=> b!4395421 m!5055635))

(declare-fun m!5055637 () Bool)

(assert (=> b!4395409 m!5055637))

(declare-fun m!5055639 () Bool)

(assert (=> b!4395409 m!5055639))

(declare-fun m!5055641 () Bool)

(assert (=> b!4395409 m!5055641))

(declare-fun m!5055643 () Bool)

(assert (=> b!4395409 m!5055643))

(assert (=> b!4395409 m!5055643))

(declare-fun m!5055645 () Bool)

(assert (=> b!4395409 m!5055645))

(declare-fun m!5055647 () Bool)

(assert (=> b!4395417 m!5055647))

(declare-fun m!5055649 () Bool)

(assert (=> b!4395415 m!5055649))

(assert (=> b!4395415 m!5055649))

(declare-fun m!5055651 () Bool)

(assert (=> b!4395415 m!5055651))

(declare-fun m!5055653 () Bool)

(assert (=> b!4395418 m!5055653))

(assert (=> b!4395419 m!5055609))

(declare-fun m!5055655 () Bool)

(assert (=> b!4395419 m!5055655))

(declare-fun m!5055657 () Bool)

(assert (=> b!4395419 m!5055657))

(assert (=> b!4395419 m!5055621))

(check-sat (not b!4395416) (not b!4395413) (not b!4395419) (not b!4395412) (not b!4395421) (not b!4395414) tp_is_empty!25681 (not b!4395417) (not b!4395415) (not b!4395409) (not b!4395420) tp_is_empty!25683 (not start!426748) (not b!4395411) (not b!4395418) (not b!4395422) (not b!4395410))
(check-sat)
(get-model)

(declare-fun d!1324229 () Bool)

(declare-fun res!1812212 () Bool)

(declare-fun e!2736721 () Bool)

(assert (=> d!1324229 (=> res!1812212 e!2736721)))

(assert (=> d!1324229 (= res!1812212 (and ((_ is Cons!49235) (_2!27702 (h!54849 (toList!3205 lm!1707)))) (= (_1!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))) key!3918)))))

(assert (=> d!1324229 (= (containsKey!895 (_2!27702 (h!54849 (toList!3205 lm!1707))) key!3918) e!2736721)))

(declare-fun b!4395427 () Bool)

(declare-fun e!2736722 () Bool)

(assert (=> b!4395427 (= e!2736721 e!2736722)))

(declare-fun res!1812213 () Bool)

(assert (=> b!4395427 (=> (not res!1812213) (not e!2736722))))

(assert (=> b!4395427 (= res!1812213 ((_ is Cons!49235) (_2!27702 (h!54849 (toList!3205 lm!1707)))))))

(declare-fun b!4395428 () Bool)

(assert (=> b!4395428 (= e!2736722 (containsKey!895 (t!356293 (_2!27702 (h!54849 (toList!3205 lm!1707)))) key!3918))))

(assert (= (and d!1324229 (not res!1812212)) b!4395427))

(assert (= (and b!4395427 res!1812213) b!4395428))

(declare-fun m!5055659 () Bool)

(assert (=> b!4395428 m!5055659))

(assert (=> b!4395411 d!1324229))

(declare-fun bs!726391 () Bool)

(declare-fun d!1324231 () Bool)

(assert (= bs!726391 (and d!1324231 start!426748)))

(declare-fun lambda!147764 () Int)

(assert (=> bs!726391 (not (= lambda!147764 lambda!147761))))

(assert (=> d!1324231 true))

(assert (=> d!1324231 (= (allKeysSameHashInMap!715 lm!1707 hashF!1247) (forall!9328 (toList!3205 lm!1707) lambda!147764))))

(declare-fun bs!726392 () Bool)

(assert (= bs!726392 d!1324231))

(declare-fun m!5055661 () Bool)

(assert (=> bs!726392 m!5055661))

(assert (=> b!4395420 d!1324231))

(declare-fun d!1324235 () Bool)

(declare-datatypes ((Option!10590 0))(
  ( (None!10589) (Some!10589 (v!43651 List!49359)) )
))
(declare-fun get!16022 (Option!10590) List!49359)

(declare-fun getValueByKey!576 (List!49360 (_ BitVec 64)) Option!10590)

(assert (=> d!1324235 (= (apply!11463 lm!1707 hash!377) (get!16022 (getValueByKey!576 (toList!3205 lm!1707) hash!377)))))

(declare-fun bs!726393 () Bool)

(assert (= bs!726393 d!1324235))

(declare-fun m!5055663 () Bool)

(assert (=> bs!726393 m!5055663))

(assert (=> bs!726393 m!5055663))

(declare-fun m!5055665 () Bool)

(assert (=> bs!726393 m!5055665))

(assert (=> b!4395421 d!1324235))

(declare-fun d!1324237 () Bool)

(assert (=> d!1324237 (contains!11609 (toList!3205 lm!1707) (tuple2!48817 hash!377 lt!1602178))))

(declare-fun lt!1602199 () Unit!78252)

(declare-fun choose!27476 (List!49360 (_ BitVec 64) List!49359) Unit!78252)

(assert (=> d!1324237 (= lt!1602199 (choose!27476 (toList!3205 lm!1707) hash!377 lt!1602178))))

(declare-fun e!2736737 () Bool)

(assert (=> d!1324237 e!2736737))

(declare-fun res!1812225 () Bool)

(assert (=> d!1324237 (=> (not res!1812225) (not e!2736737))))

(declare-fun isStrictlySorted!165 (List!49360) Bool)

(assert (=> d!1324237 (= res!1812225 (isStrictlySorted!165 (toList!3205 lm!1707)))))

(assert (=> d!1324237 (= (lemmaGetValueByKeyImpliesContainsTuple!456 (toList!3205 lm!1707) hash!377 lt!1602178) lt!1602199)))

(declare-fun b!4395452 () Bool)

(assert (=> b!4395452 (= e!2736737 (= (getValueByKey!576 (toList!3205 lm!1707) hash!377) (Some!10589 lt!1602178)))))

(assert (= (and d!1324237 res!1812225) b!4395452))

(declare-fun m!5055681 () Bool)

(assert (=> d!1324237 m!5055681))

(declare-fun m!5055683 () Bool)

(assert (=> d!1324237 m!5055683))

(declare-fun m!5055685 () Bool)

(assert (=> d!1324237 m!5055685))

(assert (=> b!4395452 m!5055663))

(assert (=> b!4395421 d!1324237))

(declare-fun b!4395468 () Bool)

(declare-fun e!2736746 () List!49359)

(declare-fun e!2736745 () List!49359)

(assert (=> b!4395468 (= e!2736746 e!2736745)))

(declare-fun c!748232 () Bool)

(assert (=> b!4395468 (= c!748232 ((_ is Cons!49235) lt!1602178))))

(declare-fun d!1324245 () Bool)

(declare-fun lt!1602214 () List!49359)

(assert (=> d!1324245 (not (containsKey!895 lt!1602214 key!3918))))

(assert (=> d!1324245 (= lt!1602214 e!2736746)))

(declare-fun c!748233 () Bool)

(assert (=> d!1324245 (= c!748233 (and ((_ is Cons!49235) lt!1602178) (= (_1!27701 (h!54848 lt!1602178)) key!3918)))))

(assert (=> d!1324245 (noDuplicateKeys!611 lt!1602178)))

(assert (=> d!1324245 (= (removePairForKey!579 lt!1602178 key!3918) lt!1602214)))

(declare-fun b!4395467 () Bool)

(assert (=> b!4395467 (= e!2736746 (t!356293 lt!1602178))))

(declare-fun b!4395470 () Bool)

(assert (=> b!4395470 (= e!2736745 Nil!49235)))

(declare-fun b!4395469 () Bool)

(assert (=> b!4395469 (= e!2736745 (Cons!49235 (h!54848 lt!1602178) (removePairForKey!579 (t!356293 lt!1602178) key!3918)))))

(assert (= (and d!1324245 c!748233) b!4395467))

(assert (= (and d!1324245 (not c!748233)) b!4395468))

(assert (= (and b!4395468 c!748232) b!4395469))

(assert (= (and b!4395468 (not c!748232)) b!4395470))

(declare-fun m!5055699 () Bool)

(assert (=> d!1324245 m!5055699))

(declare-fun m!5055701 () Bool)

(assert (=> d!1324245 m!5055701))

(declare-fun m!5055703 () Bool)

(assert (=> b!4395469 m!5055703))

(assert (=> b!4395421 d!1324245))

(declare-fun d!1324249 () Bool)

(declare-fun lt!1602220 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7848 (List!49360) (InoxSet tuple2!48816))

(assert (=> d!1324249 (= lt!1602220 (select (content!7848 (toList!3205 lm!1707)) lt!1602182))))

(declare-fun e!2736757 () Bool)

(assert (=> d!1324249 (= lt!1602220 e!2736757)))

(declare-fun res!1812242 () Bool)

(assert (=> d!1324249 (=> (not res!1812242) (not e!2736757))))

(assert (=> d!1324249 (= res!1812242 ((_ is Cons!49236) (toList!3205 lm!1707)))))

(assert (=> d!1324249 (= (contains!11609 (toList!3205 lm!1707) lt!1602182) lt!1602220)))

(declare-fun b!4395481 () Bool)

(declare-fun e!2736756 () Bool)

(assert (=> b!4395481 (= e!2736757 e!2736756)))

(declare-fun res!1812241 () Bool)

(assert (=> b!4395481 (=> res!1812241 e!2736756)))

(assert (=> b!4395481 (= res!1812241 (= (h!54849 (toList!3205 lm!1707)) lt!1602182))))

(declare-fun b!4395482 () Bool)

(assert (=> b!4395482 (= e!2736756 (contains!11609 (t!356294 (toList!3205 lm!1707)) lt!1602182))))

(assert (= (and d!1324249 res!1812242) b!4395481))

(assert (= (and b!4395481 (not res!1812241)) b!4395482))

(declare-fun m!5055717 () Bool)

(assert (=> d!1324249 m!5055717))

(declare-fun m!5055719 () Bool)

(assert (=> d!1324249 m!5055719))

(declare-fun m!5055721 () Bool)

(assert (=> b!4395482 m!5055721))

(assert (=> b!4395421 d!1324249))

(declare-fun d!1324257 () Bool)

(declare-fun dynLambda!20743 (Int tuple2!48816) Bool)

(assert (=> d!1324257 (dynLambda!20743 lambda!147761 lt!1602182)))

(declare-fun lt!1602223 () Unit!78252)

(declare-fun choose!27477 (List!49360 Int tuple2!48816) Unit!78252)

(assert (=> d!1324257 (= lt!1602223 (choose!27477 (toList!3205 lm!1707) lambda!147761 lt!1602182))))

(declare-fun e!2736760 () Bool)

(assert (=> d!1324257 e!2736760))

(declare-fun res!1812245 () Bool)

(assert (=> d!1324257 (=> (not res!1812245) (not e!2736760))))

(assert (=> d!1324257 (= res!1812245 (forall!9328 (toList!3205 lm!1707) lambda!147761))))

(assert (=> d!1324257 (= (forallContained!1965 (toList!3205 lm!1707) lambda!147761 lt!1602182) lt!1602223)))

(declare-fun b!4395485 () Bool)

(assert (=> b!4395485 (= e!2736760 (contains!11609 (toList!3205 lm!1707) lt!1602182))))

(assert (= (and d!1324257 res!1812245) b!4395485))

(declare-fun b_lambda!139103 () Bool)

(assert (=> (not b_lambda!139103) (not d!1324257)))

(declare-fun m!5055723 () Bool)

(assert (=> d!1324257 m!5055723))

(declare-fun m!5055725 () Bool)

(assert (=> d!1324257 m!5055725))

(assert (=> d!1324257 m!5055621))

(assert (=> b!4395485 m!5055627))

(assert (=> b!4395421 d!1324257))

(declare-fun d!1324259 () Bool)

(declare-fun res!1812254 () Bool)

(declare-fun e!2736775 () Bool)

(assert (=> d!1324259 (=> res!1812254 e!2736775)))

(assert (=> d!1324259 (= res!1812254 ((_ is Nil!49236) (toList!3205 lm!1707)))))

(assert (=> d!1324259 (= (forall!9328 (toList!3205 lm!1707) lambda!147761) e!2736775)))

(declare-fun b!4395504 () Bool)

(declare-fun e!2736776 () Bool)

(assert (=> b!4395504 (= e!2736775 e!2736776)))

(declare-fun res!1812255 () Bool)

(assert (=> b!4395504 (=> (not res!1812255) (not e!2736776))))

(assert (=> b!4395504 (= res!1812255 (dynLambda!20743 lambda!147761 (h!54849 (toList!3205 lm!1707))))))

(declare-fun b!4395505 () Bool)

(assert (=> b!4395505 (= e!2736776 (forall!9328 (t!356294 (toList!3205 lm!1707)) lambda!147761))))

(assert (= (and d!1324259 (not res!1812254)) b!4395504))

(assert (= (and b!4395504 res!1812255) b!4395505))

(declare-fun b_lambda!139105 () Bool)

(assert (=> (not b_lambda!139105) (not b!4395504)))

(declare-fun m!5055727 () Bool)

(assert (=> b!4395504 m!5055727))

(declare-fun m!5055729 () Bool)

(assert (=> b!4395505 m!5055729))

(assert (=> start!426748 d!1324259))

(declare-fun d!1324261 () Bool)

(assert (=> d!1324261 (= (inv!64781 lm!1707) (isStrictlySorted!165 (toList!3205 lm!1707)))))

(declare-fun bs!726396 () Bool)

(assert (= bs!726396 d!1324261))

(assert (=> bs!726396 m!5055685))

(assert (=> start!426748 d!1324261))

(declare-fun d!1324263 () Bool)

(declare-fun res!1812265 () Bool)

(declare-fun e!2736789 () Bool)

(assert (=> d!1324263 (=> res!1812265 e!2736789)))

(assert (=> d!1324263 (= res!1812265 (not ((_ is Cons!49235) newBucket!200)))))

(assert (=> d!1324263 (= (noDuplicateKeys!611 newBucket!200) e!2736789)))

(declare-fun b!4395523 () Bool)

(declare-fun e!2736790 () Bool)

(assert (=> b!4395523 (= e!2736789 e!2736790)))

(declare-fun res!1812266 () Bool)

(assert (=> b!4395523 (=> (not res!1812266) (not e!2736790))))

(assert (=> b!4395523 (= res!1812266 (not (containsKey!895 (t!356293 newBucket!200) (_1!27701 (h!54848 newBucket!200)))))))

(declare-fun b!4395524 () Bool)

(assert (=> b!4395524 (= e!2736790 (noDuplicateKeys!611 (t!356293 newBucket!200)))))

(assert (= (and d!1324263 (not res!1812265)) b!4395523))

(assert (= (and b!4395523 res!1812266) b!4395524))

(declare-fun m!5055751 () Bool)

(assert (=> b!4395523 m!5055751))

(declare-fun m!5055753 () Bool)

(assert (=> b!4395524 m!5055753))

(assert (=> b!4395410 d!1324263))

(declare-fun d!1324267 () Bool)

(declare-fun res!1812267 () Bool)

(declare-fun e!2736791 () Bool)

(assert (=> d!1324267 (=> res!1812267 e!2736791)))

(assert (=> d!1324267 (= res!1812267 ((_ is Nil!49236) (toList!3205 lt!1602177)))))

(assert (=> d!1324267 (= (forall!9328 (toList!3205 lt!1602177) lambda!147761) e!2736791)))

(declare-fun b!4395525 () Bool)

(declare-fun e!2736792 () Bool)

(assert (=> b!4395525 (= e!2736791 e!2736792)))

(declare-fun res!1812268 () Bool)

(assert (=> b!4395525 (=> (not res!1812268) (not e!2736792))))

(assert (=> b!4395525 (= res!1812268 (dynLambda!20743 lambda!147761 (h!54849 (toList!3205 lt!1602177))))))

(declare-fun b!4395526 () Bool)

(assert (=> b!4395526 (= e!2736792 (forall!9328 (t!356294 (toList!3205 lt!1602177)) lambda!147761))))

(assert (= (and d!1324267 (not res!1812267)) b!4395525))

(assert (= (and b!4395525 res!1812268) b!4395526))

(declare-fun b_lambda!139107 () Bool)

(assert (=> (not b_lambda!139107) (not b!4395525)))

(declare-fun m!5055755 () Bool)

(assert (=> b!4395525 m!5055755))

(declare-fun m!5055757 () Bool)

(assert (=> b!4395526 m!5055757))

(assert (=> b!4395419 d!1324267))

(declare-fun d!1324269 () Bool)

(declare-fun e!2736804 () Bool)

(assert (=> d!1324269 e!2736804))

(declare-fun res!1812276 () Bool)

(assert (=> d!1324269 (=> (not res!1812276) (not e!2736804))))

(declare-fun lt!1602267 () ListLongMap!1855)

(assert (=> d!1324269 (= res!1812276 (contains!11610 lt!1602267 (_1!27702 (tuple2!48817 hash!377 newBucket!200))))))

(declare-fun lt!1602268 () List!49360)

(assert (=> d!1324269 (= lt!1602267 (ListLongMap!1856 lt!1602268))))

(declare-fun lt!1602269 () Unit!78252)

(declare-fun lt!1602270 () Unit!78252)

(assert (=> d!1324269 (= lt!1602269 lt!1602270)))

(assert (=> d!1324269 (= (getValueByKey!576 lt!1602268 (_1!27702 (tuple2!48817 hash!377 newBucket!200))) (Some!10589 (_2!27702 (tuple2!48817 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!334 (List!49360 (_ BitVec 64) List!49359) Unit!78252)

(assert (=> d!1324269 (= lt!1602270 (lemmaContainsTupThenGetReturnValue!334 lt!1602268 (_1!27702 (tuple2!48817 hash!377 newBucket!200)) (_2!27702 (tuple2!48817 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!193 (List!49360 (_ BitVec 64) List!49359) List!49360)

(assert (=> d!1324269 (= lt!1602268 (insertStrictlySorted!193 (toList!3205 lm!1707) (_1!27702 (tuple2!48817 hash!377 newBucket!200)) (_2!27702 (tuple2!48817 hash!377 newBucket!200))))))

(assert (=> d!1324269 (= (+!842 lm!1707 (tuple2!48817 hash!377 newBucket!200)) lt!1602267)))

(declare-fun b!4395546 () Bool)

(declare-fun res!1812277 () Bool)

(assert (=> b!4395546 (=> (not res!1812277) (not e!2736804))))

(assert (=> b!4395546 (= res!1812277 (= (getValueByKey!576 (toList!3205 lt!1602267) (_1!27702 (tuple2!48817 hash!377 newBucket!200))) (Some!10589 (_2!27702 (tuple2!48817 hash!377 newBucket!200)))))))

(declare-fun b!4395547 () Bool)

(assert (=> b!4395547 (= e!2736804 (contains!11609 (toList!3205 lt!1602267) (tuple2!48817 hash!377 newBucket!200)))))

(assert (= (and d!1324269 res!1812276) b!4395546))

(assert (= (and b!4395546 res!1812277) b!4395547))

(declare-fun m!5055785 () Bool)

(assert (=> d!1324269 m!5055785))

(declare-fun m!5055787 () Bool)

(assert (=> d!1324269 m!5055787))

(declare-fun m!5055789 () Bool)

(assert (=> d!1324269 m!5055789))

(declare-fun m!5055791 () Bool)

(assert (=> d!1324269 m!5055791))

(declare-fun m!5055793 () Bool)

(assert (=> b!4395546 m!5055793))

(declare-fun m!5055795 () Bool)

(assert (=> b!4395547 m!5055795))

(assert (=> b!4395419 d!1324269))

(declare-fun d!1324275 () Bool)

(assert (=> d!1324275 (forall!9328 (toList!3205 (+!842 lm!1707 (tuple2!48817 hash!377 newBucket!200))) lambda!147761)))

(declare-fun lt!1602273 () Unit!78252)

(declare-fun choose!27479 (ListLongMap!1855 Int (_ BitVec 64) List!49359) Unit!78252)

(assert (=> d!1324275 (= lt!1602273 (choose!27479 lm!1707 lambda!147761 hash!377 newBucket!200))))

(declare-fun e!2736807 () Bool)

(assert (=> d!1324275 e!2736807))

(declare-fun res!1812280 () Bool)

(assert (=> d!1324275 (=> (not res!1812280) (not e!2736807))))

(assert (=> d!1324275 (= res!1812280 (forall!9328 (toList!3205 lm!1707) lambda!147761))))

(assert (=> d!1324275 (= (addValidProp!257 lm!1707 lambda!147761 hash!377 newBucket!200) lt!1602273)))

(declare-fun b!4395551 () Bool)

(assert (=> b!4395551 (= e!2736807 (dynLambda!20743 lambda!147761 (tuple2!48817 hash!377 newBucket!200)))))

(assert (= (and d!1324275 res!1812280) b!4395551))

(declare-fun b_lambda!139109 () Bool)

(assert (=> (not b_lambda!139109) (not b!4395551)))

(assert (=> d!1324275 m!5055655))

(declare-fun m!5055797 () Bool)

(assert (=> d!1324275 m!5055797))

(declare-fun m!5055799 () Bool)

(assert (=> d!1324275 m!5055799))

(assert (=> d!1324275 m!5055621))

(declare-fun m!5055801 () Bool)

(assert (=> b!4395551 m!5055801))

(assert (=> b!4395419 d!1324275))

(assert (=> b!4395419 d!1324259))

(declare-fun d!1324277 () Bool)

(assert (=> d!1324277 (= (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707)))) (get!16022 (getValueByKey!576 (toList!3205 lm!1707) (_1!27702 (h!54849 (toList!3205 lm!1707))))))))

(declare-fun bs!726398 () Bool)

(assert (= bs!726398 d!1324277))

(declare-fun m!5055803 () Bool)

(assert (=> bs!726398 m!5055803))

(assert (=> bs!726398 m!5055803))

(declare-fun m!5055805 () Bool)

(assert (=> bs!726398 m!5055805))

(assert (=> b!4395409 d!1324277))

(declare-fun d!1324279 () Bool)

(declare-fun res!1812281 () Bool)

(declare-fun e!2736808 () Bool)

(assert (=> d!1324279 (=> res!1812281 e!2736808)))

(assert (=> d!1324279 (= res!1812281 (and ((_ is Cons!49235) (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707))))) (= (_1!27701 (h!54848 (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707)))))) key!3918)))))

(assert (=> d!1324279 (= (containsKey!895 (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707)))) key!3918) e!2736808)))

(declare-fun b!4395552 () Bool)

(declare-fun e!2736809 () Bool)

(assert (=> b!4395552 (= e!2736808 e!2736809)))

(declare-fun res!1812282 () Bool)

(assert (=> b!4395552 (=> (not res!1812282) (not e!2736809))))

(assert (=> b!4395552 (= res!1812282 ((_ is Cons!49235) (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707))))))))

(declare-fun b!4395553 () Bool)

(assert (=> b!4395553 (= e!2736809 (containsKey!895 (t!356293 (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707))))) key!3918))))

(assert (= (and d!1324279 (not res!1812281)) b!4395552))

(assert (= (and b!4395552 res!1812282) b!4395553))

(declare-fun m!5055807 () Bool)

(assert (=> b!4395553 m!5055807))

(assert (=> b!4395409 d!1324279))

(declare-fun bs!726399 () Bool)

(declare-fun d!1324281 () Bool)

(assert (= bs!726399 (and d!1324281 start!426748)))

(declare-fun lambda!147773 () Int)

(assert (=> bs!726399 (= lambda!147773 lambda!147761)))

(declare-fun bs!726400 () Bool)

(assert (= bs!726400 (and d!1324281 d!1324231)))

(assert (=> bs!726400 (not (= lambda!147773 lambda!147764))))

(declare-fun lt!1602276 () ListMap!2449)

(declare-fun invariantList!739 (List!49359) Bool)

(assert (=> d!1324281 (invariantList!739 (toList!3206 lt!1602276))))

(declare-fun e!2736812 () ListMap!2449)

(assert (=> d!1324281 (= lt!1602276 e!2736812)))

(declare-fun c!748251 () Bool)

(assert (=> d!1324281 (= c!748251 ((_ is Cons!49236) (t!356294 (toList!3205 lm!1707))))))

(assert (=> d!1324281 (forall!9328 (t!356294 (toList!3205 lm!1707)) lambda!147773)))

(assert (=> d!1324281 (= (extractMap!670 (t!356294 (toList!3205 lm!1707))) lt!1602276)))

(declare-fun b!4395558 () Bool)

(assert (=> b!4395558 (= e!2736812 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (t!356294 (toList!3205 lm!1707)))) (extractMap!670 (t!356294 (t!356294 (toList!3205 lm!1707))))))))

(declare-fun b!4395559 () Bool)

(assert (=> b!4395559 (= e!2736812 (ListMap!2450 Nil!49235))))

(assert (= (and d!1324281 c!748251) b!4395558))

(assert (= (and d!1324281 (not c!748251)) b!4395559))

(declare-fun m!5055809 () Bool)

(assert (=> d!1324281 m!5055809))

(declare-fun m!5055811 () Bool)

(assert (=> d!1324281 m!5055811))

(declare-fun m!5055813 () Bool)

(assert (=> b!4395558 m!5055813))

(assert (=> b!4395558 m!5055813))

(declare-fun m!5055815 () Bool)

(assert (=> b!4395558 m!5055815))

(assert (=> b!4395409 d!1324281))

(declare-fun bs!726401 () Bool)

(declare-fun d!1324283 () Bool)

(assert (= bs!726401 (and d!1324283 start!426748)))

(declare-fun lambda!147776 () Int)

(assert (=> bs!726401 (= lambda!147776 lambda!147761)))

(declare-fun bs!726402 () Bool)

(assert (= bs!726402 (and d!1324283 d!1324231)))

(assert (=> bs!726402 (not (= lambda!147776 lambda!147764))))

(declare-fun bs!726403 () Bool)

(assert (= bs!726403 (and d!1324283 d!1324281)))

(assert (=> bs!726403 (= lambda!147776 lambda!147773)))

(assert (=> d!1324283 (not (containsKey!895 (apply!11463 lm!1707 (_1!27702 (h!54849 (toList!3205 lm!1707)))) key!3918))))

(declare-fun lt!1602279 () Unit!78252)

(declare-fun choose!27480 (ListLongMap!1855 K!10595 (_ BitVec 64) Hashable!5003) Unit!78252)

(assert (=> d!1324283 (= lt!1602279 (choose!27480 lm!1707 key!3918 (_1!27702 (h!54849 (toList!3205 lm!1707))) hashF!1247))))

(assert (=> d!1324283 (forall!9328 (toList!3205 lm!1707) lambda!147776)))

(assert (=> d!1324283 (= (lemmaNotSameHashThenCannotContainKey!82 lm!1707 key!3918 (_1!27702 (h!54849 (toList!3205 lm!1707))) hashF!1247) lt!1602279)))

(declare-fun bs!726404 () Bool)

(assert (= bs!726404 d!1324283))

(assert (=> bs!726404 m!5055643))

(assert (=> bs!726404 m!5055643))

(assert (=> bs!726404 m!5055645))

(declare-fun m!5055817 () Bool)

(assert (=> bs!726404 m!5055817))

(declare-fun m!5055819 () Bool)

(assert (=> bs!726404 m!5055819))

(assert (=> b!4395409 d!1324283))

(declare-fun d!1324285 () Bool)

(declare-fun res!1812283 () Bool)

(declare-fun e!2736813 () Bool)

(assert (=> d!1324285 (=> res!1812283 e!2736813)))

(assert (=> d!1324285 (= res!1812283 (not ((_ is Cons!49235) (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(assert (=> d!1324285 (= (noDuplicateKeys!611 (_2!27702 (h!54849 (toList!3205 lm!1707)))) e!2736813)))

(declare-fun b!4395560 () Bool)

(declare-fun e!2736814 () Bool)

(assert (=> b!4395560 (= e!2736813 e!2736814)))

(declare-fun res!1812284 () Bool)

(assert (=> b!4395560 (=> (not res!1812284) (not e!2736814))))

(assert (=> b!4395560 (= res!1812284 (not (containsKey!895 (t!356293 (_2!27702 (h!54849 (toList!3205 lm!1707)))) (_1!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))))

(declare-fun b!4395561 () Bool)

(assert (=> b!4395561 (= e!2736814 (noDuplicateKeys!611 (t!356293 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(assert (= (and d!1324285 (not res!1812283)) b!4395560))

(assert (= (and b!4395560 res!1812284) b!4395561))

(declare-fun m!5055821 () Bool)

(assert (=> b!4395560 m!5055821))

(declare-fun m!5055823 () Bool)

(assert (=> b!4395561 m!5055823))

(assert (=> b!4395409 d!1324285))

(declare-fun d!1324287 () Bool)

(declare-fun e!2736820 () Bool)

(assert (=> d!1324287 e!2736820))

(declare-fun res!1812287 () Bool)

(assert (=> d!1324287 (=> res!1812287 e!2736820)))

(declare-fun lt!1602289 () Bool)

(assert (=> d!1324287 (= res!1812287 (not lt!1602289))))

(declare-fun lt!1602290 () Bool)

(assert (=> d!1324287 (= lt!1602289 lt!1602290)))

(declare-fun lt!1602288 () Unit!78252)

(declare-fun e!2736819 () Unit!78252)

(assert (=> d!1324287 (= lt!1602288 e!2736819)))

(declare-fun c!748254 () Bool)

(assert (=> d!1324287 (= c!748254 lt!1602290)))

(declare-fun containsKey!898 (List!49360 (_ BitVec 64)) Bool)

(assert (=> d!1324287 (= lt!1602290 (containsKey!898 (toList!3205 lm!1707) hash!377))))

(assert (=> d!1324287 (= (contains!11610 lm!1707 hash!377) lt!1602289)))

(declare-fun b!4395568 () Bool)

(declare-fun lt!1602291 () Unit!78252)

(assert (=> b!4395568 (= e!2736819 lt!1602291)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!486 (List!49360 (_ BitVec 64)) Unit!78252)

(assert (=> b!4395568 (= lt!1602291 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!3205 lm!1707) hash!377))))

(declare-fun isDefined!7883 (Option!10590) Bool)

(assert (=> b!4395568 (isDefined!7883 (getValueByKey!576 (toList!3205 lm!1707) hash!377))))

(declare-fun b!4395569 () Bool)

(declare-fun Unit!78270 () Unit!78252)

(assert (=> b!4395569 (= e!2736819 Unit!78270)))

(declare-fun b!4395570 () Bool)

(assert (=> b!4395570 (= e!2736820 (isDefined!7883 (getValueByKey!576 (toList!3205 lm!1707) hash!377)))))

(assert (= (and d!1324287 c!748254) b!4395568))

(assert (= (and d!1324287 (not c!748254)) b!4395569))

(assert (= (and d!1324287 (not res!1812287)) b!4395570))

(declare-fun m!5055825 () Bool)

(assert (=> d!1324287 m!5055825))

(declare-fun m!5055827 () Bool)

(assert (=> b!4395568 m!5055827))

(assert (=> b!4395568 m!5055663))

(assert (=> b!4395568 m!5055663))

(declare-fun m!5055829 () Bool)

(assert (=> b!4395568 m!5055829))

(assert (=> b!4395570 m!5055663))

(assert (=> b!4395570 m!5055663))

(assert (=> b!4395570 m!5055829))

(assert (=> b!4395418 d!1324287))

(declare-fun b!4395599 () Bool)

(declare-fun e!2736839 () Unit!78252)

(declare-fun lt!1602353 () Unit!78252)

(assert (=> b!4395599 (= e!2736839 lt!1602353)))

(declare-fun lt!1602352 () Unit!78252)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!487 (List!49359 K!10595) Unit!78252)

(assert (=> b!4395599 (= lt!1602352 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(declare-datatypes ((Option!10591 0))(
  ( (None!10590) (Some!10590 (v!43652 V!10841)) )
))
(declare-fun isDefined!7884 (Option!10591) Bool)

(declare-fun getValueByKey!577 (List!49359 K!10595) Option!10591)

(assert (=> b!4395599 (isDefined!7884 (getValueByKey!577 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(declare-fun lt!1602355 () Unit!78252)

(assert (=> b!4395599 (= lt!1602355 lt!1602352)))

(declare-fun lemmaInListThenGetKeysListContains!183 (List!49359 K!10595) Unit!78252)

(assert (=> b!4395599 (= lt!1602353 (lemmaInListThenGetKeysListContains!183 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(declare-fun call!305956 () Bool)

(assert (=> b!4395599 call!305956))

(declare-fun b!4395600 () Bool)

(declare-datatypes ((List!49362 0))(
  ( (Nil!49238) (Cons!49238 (h!54853 K!10595) (t!356296 List!49362)) )
))
(declare-fun e!2736842 () List!49362)

(declare-fun keys!16720 (ListMap!2449) List!49362)

(assert (=> b!4395600 (= e!2736842 (keys!16720 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)))))

(declare-fun b!4395601 () Bool)

(declare-fun e!2736843 () Unit!78252)

(declare-fun Unit!78271 () Unit!78252)

(assert (=> b!4395601 (= e!2736843 Unit!78271)))

(declare-fun b!4395602 () Bool)

(assert (=> b!4395602 (= e!2736839 e!2736843)))

(declare-fun c!748265 () Bool)

(assert (=> b!4395602 (= c!748265 call!305956)))

(declare-fun b!4395603 () Bool)

(declare-fun e!2736844 () Bool)

(declare-fun e!2736840 () Bool)

(assert (=> b!4395603 (= e!2736844 e!2736840)))

(declare-fun res!1812301 () Bool)

(assert (=> b!4395603 (=> (not res!1812301) (not e!2736840))))

(assert (=> b!4395603 (= res!1812301 (isDefined!7884 (getValueByKey!577 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918)))))

(declare-fun b!4395604 () Bool)

(declare-fun e!2736841 () Bool)

(declare-fun contains!11612 (List!49362 K!10595) Bool)

(assert (=> b!4395604 (= e!2736841 (not (contains!11612 (keys!16720 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918)))))

(declare-fun b!4395605 () Bool)

(declare-fun getKeysList!186 (List!49359) List!49362)

(assert (=> b!4395605 (= e!2736842 (getKeysList!186 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183))))))

(declare-fun b!4395606 () Bool)

(assert (=> b!4395606 false))

(declare-fun lt!1602357 () Unit!78252)

(declare-fun lt!1602356 () Unit!78252)

(assert (=> b!4395606 (= lt!1602357 lt!1602356)))

(declare-fun containsKey!899 (List!49359 K!10595) Bool)

(assert (=> b!4395606 (containsKey!899 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!184 (List!49359 K!10595) Unit!78252)

(assert (=> b!4395606 (= lt!1602356 (lemmaInGetKeysListThenContainsKey!184 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(declare-fun Unit!78272 () Unit!78252)

(assert (=> b!4395606 (= e!2736843 Unit!78272)))

(declare-fun d!1324289 () Bool)

(assert (=> d!1324289 e!2736844))

(declare-fun res!1812302 () Bool)

(assert (=> d!1324289 (=> res!1812302 e!2736844)))

(assert (=> d!1324289 (= res!1812302 e!2736841)))

(declare-fun res!1812300 () Bool)

(assert (=> d!1324289 (=> (not res!1812300) (not e!2736841))))

(declare-fun lt!1602354 () Bool)

(assert (=> d!1324289 (= res!1812300 (not lt!1602354))))

(declare-fun lt!1602351 () Bool)

(assert (=> d!1324289 (= lt!1602354 lt!1602351)))

(declare-fun lt!1602350 () Unit!78252)

(assert (=> d!1324289 (= lt!1602350 e!2736839)))

(declare-fun c!748264 () Bool)

(assert (=> d!1324289 (= c!748264 lt!1602351)))

(assert (=> d!1324289 (= lt!1602351 (containsKey!899 (toList!3206 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(assert (=> d!1324289 (= (contains!11608 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183) key!3918) lt!1602354)))

(declare-fun bm!305951 () Bool)

(assert (=> bm!305951 (= call!305956 (contains!11612 e!2736842 key!3918))))

(declare-fun c!748263 () Bool)

(assert (=> bm!305951 (= c!748263 c!748264)))

(declare-fun b!4395607 () Bool)

(assert (=> b!4395607 (= e!2736840 (contains!11612 (keys!16720 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183)) key!3918))))

(assert (= (and d!1324289 c!748264) b!4395599))

(assert (= (and d!1324289 (not c!748264)) b!4395602))

(assert (= (and b!4395602 c!748265) b!4395606))

(assert (= (and b!4395602 (not c!748265)) b!4395601))

(assert (= (or b!4395599 b!4395602) bm!305951))

(assert (= (and bm!305951 c!748263) b!4395605))

(assert (= (and bm!305951 (not c!748263)) b!4395600))

(assert (= (and d!1324289 res!1812300) b!4395604))

(assert (= (and d!1324289 (not res!1812302)) b!4395603))

(assert (= (and b!4395603 res!1812301) b!4395607))

(assert (=> b!4395607 m!5055611))

(declare-fun m!5055831 () Bool)

(assert (=> b!4395607 m!5055831))

(assert (=> b!4395607 m!5055831))

(declare-fun m!5055833 () Bool)

(assert (=> b!4395607 m!5055833))

(declare-fun m!5055835 () Bool)

(assert (=> b!4395606 m!5055835))

(declare-fun m!5055837 () Bool)

(assert (=> b!4395606 m!5055837))

(assert (=> d!1324289 m!5055835))

(declare-fun m!5055839 () Bool)

(assert (=> bm!305951 m!5055839))

(declare-fun m!5055841 () Bool)

(assert (=> b!4395605 m!5055841))

(declare-fun m!5055843 () Bool)

(assert (=> b!4395599 m!5055843))

(declare-fun m!5055845 () Bool)

(assert (=> b!4395599 m!5055845))

(assert (=> b!4395599 m!5055845))

(declare-fun m!5055847 () Bool)

(assert (=> b!4395599 m!5055847))

(declare-fun m!5055849 () Bool)

(assert (=> b!4395599 m!5055849))

(assert (=> b!4395604 m!5055611))

(assert (=> b!4395604 m!5055831))

(assert (=> b!4395604 m!5055831))

(assert (=> b!4395604 m!5055833))

(assert (=> b!4395600 m!5055611))

(assert (=> b!4395600 m!5055831))

(assert (=> b!4395603 m!5055845))

(assert (=> b!4395603 m!5055845))

(assert (=> b!4395603 m!5055847))

(assert (=> b!4395416 d!1324289))

(declare-fun b!4395683 () Bool)

(assert (=> b!4395683 true))

(declare-fun bs!726429 () Bool)

(declare-fun b!4395679 () Bool)

(assert (= bs!726429 (and b!4395679 b!4395683)))

(declare-fun lambda!147845 () Int)

(declare-fun lambda!147844 () Int)

(assert (=> bs!726429 (= lambda!147845 lambda!147844)))

(assert (=> b!4395679 true))

(declare-fun lambda!147846 () Int)

(declare-fun lt!1602437 () ListMap!2449)

(assert (=> bs!726429 (= (= lt!1602437 lt!1602183) (= lambda!147846 lambda!147844))))

(assert (=> b!4395679 (= (= lt!1602437 lt!1602183) (= lambda!147846 lambda!147845))))

(assert (=> b!4395679 true))

(declare-fun bs!726430 () Bool)

(declare-fun d!1324291 () Bool)

(assert (= bs!726430 (and d!1324291 b!4395683)))

(declare-fun lambda!147847 () Int)

(declare-fun lt!1602453 () ListMap!2449)

(assert (=> bs!726430 (= (= lt!1602453 lt!1602183) (= lambda!147847 lambda!147844))))

(declare-fun bs!726431 () Bool)

(assert (= bs!726431 (and d!1324291 b!4395679)))

(assert (=> bs!726431 (= (= lt!1602453 lt!1602183) (= lambda!147847 lambda!147845))))

(assert (=> bs!726431 (= (= lt!1602453 lt!1602437) (= lambda!147847 lambda!147846))))

(assert (=> d!1324291 true))

(declare-fun e!2736895 () ListMap!2449)

(assert (=> b!4395679 (= e!2736895 lt!1602437)))

(declare-fun lt!1602452 () ListMap!2449)

(declare-fun +!844 (ListMap!2449 tuple2!48814) ListMap!2449)

(assert (=> b!4395679 (= lt!1602452 (+!844 lt!1602183 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(assert (=> b!4395679 (= lt!1602437 (addToMapMapFromBucket!284 (t!356293 (_2!27702 (h!54849 (toList!3205 lm!1707)))) (+!844 lt!1602183 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707)))))))))

(declare-fun lt!1602445 () Unit!78252)

(declare-fun call!305968 () Unit!78252)

(assert (=> b!4395679 (= lt!1602445 call!305968)))

(declare-fun forall!9330 (List!49359 Int) Bool)

(assert (=> b!4395679 (forall!9330 (toList!3206 lt!1602183) lambda!147845)))

(declare-fun lt!1602448 () Unit!78252)

(assert (=> b!4395679 (= lt!1602448 lt!1602445)))

(assert (=> b!4395679 (forall!9330 (toList!3206 lt!1602452) lambda!147846)))

(declare-fun lt!1602439 () Unit!78252)

(declare-fun Unit!78273 () Unit!78252)

(assert (=> b!4395679 (= lt!1602439 Unit!78273)))

(assert (=> b!4395679 (forall!9330 (t!356293 (_2!27702 (h!54849 (toList!3205 lm!1707)))) lambda!147846)))

(declare-fun lt!1602444 () Unit!78252)

(declare-fun Unit!78274 () Unit!78252)

(assert (=> b!4395679 (= lt!1602444 Unit!78274)))

(declare-fun lt!1602447 () Unit!78252)

(declare-fun Unit!78275 () Unit!78252)

(assert (=> b!4395679 (= lt!1602447 Unit!78275)))

(declare-fun lt!1602451 () Unit!78252)

(declare-fun forallContained!1967 (List!49359 Int tuple2!48814) Unit!78252)

(assert (=> b!4395679 (= lt!1602451 (forallContained!1967 (toList!3206 lt!1602452) lambda!147846 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(assert (=> b!4395679 (contains!11608 lt!1602452 (_1!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(declare-fun lt!1602455 () Unit!78252)

(declare-fun Unit!78276 () Unit!78252)

(assert (=> b!4395679 (= lt!1602455 Unit!78276)))

(assert (=> b!4395679 (contains!11608 lt!1602437 (_1!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))))))

(declare-fun lt!1602438 () Unit!78252)

(declare-fun Unit!78277 () Unit!78252)

(assert (=> b!4395679 (= lt!1602438 Unit!78277)))

(assert (=> b!4395679 (forall!9330 (_2!27702 (h!54849 (toList!3205 lm!1707))) lambda!147846)))

(declare-fun lt!1602442 () Unit!78252)

(declare-fun Unit!78278 () Unit!78252)

(assert (=> b!4395679 (= lt!1602442 Unit!78278)))

(declare-fun call!305966 () Bool)

(assert (=> b!4395679 call!305966))

(declare-fun lt!1602450 () Unit!78252)

(declare-fun Unit!78279 () Unit!78252)

(assert (=> b!4395679 (= lt!1602450 Unit!78279)))

(declare-fun lt!1602457 () Unit!78252)

(declare-fun Unit!78280 () Unit!78252)

(assert (=> b!4395679 (= lt!1602457 Unit!78280)))

(declare-fun lt!1602454 () Unit!78252)

(declare-fun addForallContainsKeyThenBeforeAdding!119 (ListMap!2449 ListMap!2449 K!10595 V!10841) Unit!78252)

(assert (=> b!4395679 (= lt!1602454 (addForallContainsKeyThenBeforeAdding!119 lt!1602183 lt!1602437 (_1!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707))))) (_2!27701 (h!54848 (_2!27702 (h!54849 (toList!3205 lm!1707)))))))))

(assert (=> b!4395679 (forall!9330 (toList!3206 lt!1602183) lambda!147846)))

(declare-fun lt!1602449 () Unit!78252)

(assert (=> b!4395679 (= lt!1602449 lt!1602454)))

(declare-fun call!305967 () Bool)

(assert (=> b!4395679 call!305967))

(declare-fun lt!1602456 () Unit!78252)

(declare-fun Unit!78281 () Unit!78252)

(assert (=> b!4395679 (= lt!1602456 Unit!78281)))

(declare-fun res!1812342 () Bool)

(assert (=> b!4395679 (= res!1812342 (forall!9330 (_2!27702 (h!54849 (toList!3205 lm!1707))) lambda!147846))))

(declare-fun e!2736897 () Bool)

(assert (=> b!4395679 (=> (not res!1812342) (not e!2736897))))

(assert (=> b!4395679 e!2736897))

(declare-fun lt!1602440 () Unit!78252)

(declare-fun Unit!78282 () Unit!78252)

(assert (=> b!4395679 (= lt!1602440 Unit!78282)))

(declare-fun b!4395680 () Bool)

(assert (=> b!4395680 (= e!2736897 (forall!9330 (toList!3206 lt!1602183) lambda!147846))))

(declare-fun c!748276 () Bool)

(declare-fun bm!305961 () Bool)

(assert (=> bm!305961 (= call!305966 (forall!9330 (ite c!748276 (toList!3206 lt!1602183) (toList!3206 lt!1602452)) (ite c!748276 lambda!147844 lambda!147846)))))

(declare-fun bm!305962 () Bool)

(assert (=> bm!305962 (= call!305967 (forall!9330 (toList!3206 lt!1602183) (ite c!748276 lambda!147844 lambda!147846)))))

(declare-fun b!4395681 () Bool)

(declare-fun res!1812340 () Bool)

(declare-fun e!2736896 () Bool)

(assert (=> b!4395681 (=> (not res!1812340) (not e!2736896))))

(assert (=> b!4395681 (= res!1812340 (forall!9330 (toList!3206 lt!1602183) lambda!147847))))

(assert (=> d!1324291 e!2736896))

(declare-fun res!1812341 () Bool)

(assert (=> d!1324291 (=> (not res!1812341) (not e!2736896))))

(assert (=> d!1324291 (= res!1812341 (forall!9330 (_2!27702 (h!54849 (toList!3205 lm!1707))) lambda!147847))))

(assert (=> d!1324291 (= lt!1602453 e!2736895)))

(assert (=> d!1324291 (= c!748276 ((_ is Nil!49235) (_2!27702 (h!54849 (toList!3205 lm!1707)))))))

(assert (=> d!1324291 (noDuplicateKeys!611 (_2!27702 (h!54849 (toList!3205 lm!1707))))))

(assert (=> d!1324291 (= (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) lt!1602183) lt!1602453)))

(declare-fun b!4395682 () Bool)

(assert (=> b!4395682 (= e!2736896 (invariantList!739 (toList!3206 lt!1602453)))))

(assert (=> b!4395683 (= e!2736895 lt!1602183)))

(declare-fun lt!1602446 () Unit!78252)

(assert (=> b!4395683 (= lt!1602446 call!305968)))

(assert (=> b!4395683 call!305967))

(declare-fun lt!1602443 () Unit!78252)

(assert (=> b!4395683 (= lt!1602443 lt!1602446)))

(assert (=> b!4395683 call!305966))

(declare-fun lt!1602441 () Unit!78252)

(declare-fun Unit!78283 () Unit!78252)

(assert (=> b!4395683 (= lt!1602441 Unit!78283)))

(declare-fun bm!305963 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!119 (ListMap!2449) Unit!78252)

(assert (=> bm!305963 (= call!305968 (lemmaContainsAllItsOwnKeys!119 lt!1602183))))

(assert (= (and d!1324291 c!748276) b!4395683))

(assert (= (and d!1324291 (not c!748276)) b!4395679))

(assert (= (and b!4395679 res!1812342) b!4395680))

(assert (= (or b!4395683 b!4395679) bm!305963))

(assert (= (or b!4395683 b!4395679) bm!305961))

(assert (= (or b!4395683 b!4395679) bm!305962))

(assert (= (and d!1324291 res!1812341) b!4395681))

(assert (= (and b!4395681 res!1812340) b!4395682))

(declare-fun m!5055943 () Bool)

(assert (=> d!1324291 m!5055943))

(assert (=> d!1324291 m!5055637))

(declare-fun m!5055945 () Bool)

(assert (=> b!4395680 m!5055945))

(declare-fun m!5055947 () Bool)

(assert (=> bm!305962 m!5055947))

(declare-fun m!5055949 () Bool)

(assert (=> bm!305961 m!5055949))

(declare-fun m!5055951 () Bool)

(assert (=> b!4395679 m!5055951))

(declare-fun m!5055953 () Bool)

(assert (=> b!4395679 m!5055953))

(declare-fun m!5055955 () Bool)

(assert (=> b!4395679 m!5055955))

(declare-fun m!5055957 () Bool)

(assert (=> b!4395679 m!5055957))

(declare-fun m!5055959 () Bool)

(assert (=> b!4395679 m!5055959))

(declare-fun m!5055961 () Bool)

(assert (=> b!4395679 m!5055961))

(assert (=> b!4395679 m!5055957))

(declare-fun m!5055963 () Bool)

(assert (=> b!4395679 m!5055963))

(assert (=> b!4395679 m!5055945))

(declare-fun m!5055965 () Bool)

(assert (=> b!4395679 m!5055965))

(assert (=> b!4395679 m!5055953))

(declare-fun m!5055967 () Bool)

(assert (=> b!4395679 m!5055967))

(declare-fun m!5055969 () Bool)

(assert (=> b!4395679 m!5055969))

(declare-fun m!5055971 () Bool)

(assert (=> b!4395681 m!5055971))

(declare-fun m!5055973 () Bool)

(assert (=> bm!305963 m!5055973))

(declare-fun m!5055975 () Bool)

(assert (=> b!4395682 m!5055975))

(assert (=> b!4395416 d!1324291))

(declare-fun bs!726432 () Bool)

(declare-fun d!1324329 () Bool)

(assert (= bs!726432 (and d!1324329 b!4395683)))

(declare-fun lambda!147850 () Int)

(assert (=> bs!726432 (not (= lambda!147850 lambda!147844))))

(declare-fun bs!726433 () Bool)

(assert (= bs!726433 (and d!1324329 b!4395679)))

(assert (=> bs!726433 (not (= lambda!147850 lambda!147845))))

(assert (=> bs!726433 (not (= lambda!147850 lambda!147846))))

(declare-fun bs!726434 () Bool)

(assert (= bs!726434 (and d!1324329 d!1324291)))

(assert (=> bs!726434 (not (= lambda!147850 lambda!147847))))

(assert (=> d!1324329 true))

(assert (=> d!1324329 true))

(assert (=> d!1324329 (= (allKeysSameHash!569 newBucket!200 hash!377 hashF!1247) (forall!9330 newBucket!200 lambda!147850))))

(declare-fun bs!726435 () Bool)

(assert (= bs!726435 d!1324329))

(declare-fun m!5055977 () Bool)

(assert (=> bs!726435 m!5055977))

(assert (=> b!4395417 d!1324329))

(declare-fun b!4395690 () Bool)

(declare-fun e!2736898 () Unit!78252)

(declare-fun lt!1602461 () Unit!78252)

(assert (=> b!4395690 (= e!2736898 lt!1602461)))

(declare-fun lt!1602460 () Unit!78252)

(assert (=> b!4395690 (= lt!1602460 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(assert (=> b!4395690 (isDefined!7884 (getValueByKey!577 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(declare-fun lt!1602463 () Unit!78252)

(assert (=> b!4395690 (= lt!1602463 lt!1602460)))

(assert (=> b!4395690 (= lt!1602461 (lemmaInListThenGetKeysListContains!183 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(declare-fun call!305969 () Bool)

(assert (=> b!4395690 call!305969))

(declare-fun b!4395691 () Bool)

(declare-fun e!2736901 () List!49362)

(assert (=> b!4395691 (= e!2736901 (keys!16720 (extractMap!670 (toList!3205 lm!1707))))))

(declare-fun b!4395692 () Bool)

(declare-fun e!2736902 () Unit!78252)

(declare-fun Unit!78284 () Unit!78252)

(assert (=> b!4395692 (= e!2736902 Unit!78284)))

(declare-fun b!4395693 () Bool)

(assert (=> b!4395693 (= e!2736898 e!2736902)))

(declare-fun c!748279 () Bool)

(assert (=> b!4395693 (= c!748279 call!305969)))

(declare-fun b!4395694 () Bool)

(declare-fun e!2736903 () Bool)

(declare-fun e!2736899 () Bool)

(assert (=> b!4395694 (= e!2736903 e!2736899)))

(declare-fun res!1812344 () Bool)

(assert (=> b!4395694 (=> (not res!1812344) (not e!2736899))))

(assert (=> b!4395694 (= res!1812344 (isDefined!7884 (getValueByKey!577 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918)))))

(declare-fun b!4395695 () Bool)

(declare-fun e!2736900 () Bool)

(assert (=> b!4395695 (= e!2736900 (not (contains!11612 (keys!16720 (extractMap!670 (toList!3205 lm!1707))) key!3918)))))

(declare-fun b!4395696 () Bool)

(assert (=> b!4395696 (= e!2736901 (getKeysList!186 (toList!3206 (extractMap!670 (toList!3205 lm!1707)))))))

(declare-fun b!4395697 () Bool)

(assert (=> b!4395697 false))

(declare-fun lt!1602465 () Unit!78252)

(declare-fun lt!1602464 () Unit!78252)

(assert (=> b!4395697 (= lt!1602465 lt!1602464)))

(assert (=> b!4395697 (containsKey!899 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918)))

(assert (=> b!4395697 (= lt!1602464 (lemmaInGetKeysListThenContainsKey!184 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(declare-fun Unit!78285 () Unit!78252)

(assert (=> b!4395697 (= e!2736902 Unit!78285)))

(declare-fun d!1324331 () Bool)

(assert (=> d!1324331 e!2736903))

(declare-fun res!1812345 () Bool)

(assert (=> d!1324331 (=> res!1812345 e!2736903)))

(assert (=> d!1324331 (= res!1812345 e!2736900)))

(declare-fun res!1812343 () Bool)

(assert (=> d!1324331 (=> (not res!1812343) (not e!2736900))))

(declare-fun lt!1602462 () Bool)

(assert (=> d!1324331 (= res!1812343 (not lt!1602462))))

(declare-fun lt!1602459 () Bool)

(assert (=> d!1324331 (= lt!1602462 lt!1602459)))

(declare-fun lt!1602458 () Unit!78252)

(assert (=> d!1324331 (= lt!1602458 e!2736898)))

(declare-fun c!748278 () Bool)

(assert (=> d!1324331 (= c!748278 lt!1602459)))

(assert (=> d!1324331 (= lt!1602459 (containsKey!899 (toList!3206 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(assert (=> d!1324331 (= (contains!11608 (extractMap!670 (toList!3205 lm!1707)) key!3918) lt!1602462)))

(declare-fun bm!305964 () Bool)

(assert (=> bm!305964 (= call!305969 (contains!11612 e!2736901 key!3918))))

(declare-fun c!748277 () Bool)

(assert (=> bm!305964 (= c!748277 c!748278)))

(declare-fun b!4395698 () Bool)

(assert (=> b!4395698 (= e!2736899 (contains!11612 (keys!16720 (extractMap!670 (toList!3205 lm!1707))) key!3918))))

(assert (= (and d!1324331 c!748278) b!4395690))

(assert (= (and d!1324331 (not c!748278)) b!4395693))

(assert (= (and b!4395693 c!748279) b!4395697))

(assert (= (and b!4395693 (not c!748279)) b!4395692))

(assert (= (or b!4395690 b!4395693) bm!305964))

(assert (= (and bm!305964 c!748277) b!4395696))

(assert (= (and bm!305964 (not c!748277)) b!4395691))

(assert (= (and d!1324331 res!1812343) b!4395695))

(assert (= (and d!1324331 (not res!1812345)) b!4395694))

(assert (= (and b!4395694 res!1812344) b!4395698))

(assert (=> b!4395698 m!5055649))

(declare-fun m!5055979 () Bool)

(assert (=> b!4395698 m!5055979))

(assert (=> b!4395698 m!5055979))

(declare-fun m!5055981 () Bool)

(assert (=> b!4395698 m!5055981))

(declare-fun m!5055983 () Bool)

(assert (=> b!4395697 m!5055983))

(declare-fun m!5055985 () Bool)

(assert (=> b!4395697 m!5055985))

(assert (=> d!1324331 m!5055983))

(declare-fun m!5055987 () Bool)

(assert (=> bm!305964 m!5055987))

(declare-fun m!5055989 () Bool)

(assert (=> b!4395696 m!5055989))

(declare-fun m!5055991 () Bool)

(assert (=> b!4395690 m!5055991))

(declare-fun m!5055993 () Bool)

(assert (=> b!4395690 m!5055993))

(assert (=> b!4395690 m!5055993))

(declare-fun m!5055995 () Bool)

(assert (=> b!4395690 m!5055995))

(declare-fun m!5055997 () Bool)

(assert (=> b!4395690 m!5055997))

(assert (=> b!4395695 m!5055649))

(assert (=> b!4395695 m!5055979))

(assert (=> b!4395695 m!5055979))

(assert (=> b!4395695 m!5055981))

(assert (=> b!4395691 m!5055649))

(assert (=> b!4395691 m!5055979))

(assert (=> b!4395694 m!5055993))

(assert (=> b!4395694 m!5055993))

(assert (=> b!4395694 m!5055995))

(assert (=> b!4395415 d!1324331))

(declare-fun bs!726436 () Bool)

(declare-fun d!1324333 () Bool)

(assert (= bs!726436 (and d!1324333 start!426748)))

(declare-fun lambda!147851 () Int)

(assert (=> bs!726436 (= lambda!147851 lambda!147761)))

(declare-fun bs!726437 () Bool)

(assert (= bs!726437 (and d!1324333 d!1324231)))

(assert (=> bs!726437 (not (= lambda!147851 lambda!147764))))

(declare-fun bs!726438 () Bool)

(assert (= bs!726438 (and d!1324333 d!1324281)))

(assert (=> bs!726438 (= lambda!147851 lambda!147773)))

(declare-fun bs!726439 () Bool)

(assert (= bs!726439 (and d!1324333 d!1324283)))

(assert (=> bs!726439 (= lambda!147851 lambda!147776)))

(declare-fun lt!1602466 () ListMap!2449)

(assert (=> d!1324333 (invariantList!739 (toList!3206 lt!1602466))))

(declare-fun e!2736904 () ListMap!2449)

(assert (=> d!1324333 (= lt!1602466 e!2736904)))

(declare-fun c!748280 () Bool)

(assert (=> d!1324333 (= c!748280 ((_ is Cons!49236) (toList!3205 lm!1707)))))

(assert (=> d!1324333 (forall!9328 (toList!3205 lm!1707) lambda!147851)))

(assert (=> d!1324333 (= (extractMap!670 (toList!3205 lm!1707)) lt!1602466)))

(declare-fun b!4395699 () Bool)

(assert (=> b!4395699 (= e!2736904 (addToMapMapFromBucket!284 (_2!27702 (h!54849 (toList!3205 lm!1707))) (extractMap!670 (t!356294 (toList!3205 lm!1707)))))))

(declare-fun b!4395700 () Bool)

(assert (=> b!4395700 (= e!2736904 (ListMap!2450 Nil!49235))))

(assert (= (and d!1324333 c!748280) b!4395699))

(assert (= (and d!1324333 (not c!748280)) b!4395700))

(declare-fun m!5055999 () Bool)

(assert (=> d!1324333 m!5055999))

(declare-fun m!5056001 () Bool)

(assert (=> d!1324333 m!5056001))

(assert (=> b!4395699 m!5055639))

(assert (=> b!4395699 m!5055639))

(declare-fun m!5056003 () Bool)

(assert (=> b!4395699 m!5056003))

(assert (=> b!4395415 d!1324333))

(assert (=> b!4395414 d!1324267))

(declare-fun d!1324335 () Bool)

(declare-fun hash!1823 (Hashable!5003 K!10595) (_ BitVec 64))

(assert (=> d!1324335 (= (hash!1819 hashF!1247 key!3918) (hash!1823 hashF!1247 key!3918))))

(declare-fun bs!726440 () Bool)

(assert (= bs!726440 d!1324335))

(declare-fun m!5056005 () Bool)

(assert (=> bs!726440 m!5056005))

(assert (=> b!4395413 d!1324335))

(declare-fun b!4395705 () Bool)

(declare-fun tp!1331588 () Bool)

(declare-fun e!2736907 () Bool)

(assert (=> b!4395705 (= e!2736907 (and tp_is_empty!25681 tp_is_empty!25683 tp!1331588))))

(assert (=> b!4395422 (= tp!1331575 e!2736907)))

(assert (= (and b!4395422 ((_ is Cons!49235) (t!356293 newBucket!200))) b!4395705))

(declare-fun b!4395710 () Bool)

(declare-fun e!2736910 () Bool)

(declare-fun tp!1331593 () Bool)

(declare-fun tp!1331594 () Bool)

(assert (=> b!4395710 (= e!2736910 (and tp!1331593 tp!1331594))))

(assert (=> b!4395412 (= tp!1331576 e!2736910)))

(assert (= (and b!4395412 ((_ is Cons!49236) (toList!3205 lm!1707))) b!4395710))

(declare-fun b_lambda!139121 () Bool)

(assert (= b_lambda!139107 (or start!426748 b_lambda!139121)))

(declare-fun bs!726441 () Bool)

(declare-fun d!1324337 () Bool)

(assert (= bs!726441 (and d!1324337 start!426748)))

(assert (=> bs!726441 (= (dynLambda!20743 lambda!147761 (h!54849 (toList!3205 lt!1602177))) (noDuplicateKeys!611 (_2!27702 (h!54849 (toList!3205 lt!1602177)))))))

(declare-fun m!5056007 () Bool)

(assert (=> bs!726441 m!5056007))

(assert (=> b!4395525 d!1324337))

(declare-fun b_lambda!139123 () Bool)

(assert (= b_lambda!139103 (or start!426748 b_lambda!139123)))

(declare-fun bs!726442 () Bool)

(declare-fun d!1324339 () Bool)

(assert (= bs!726442 (and d!1324339 start!426748)))

(assert (=> bs!726442 (= (dynLambda!20743 lambda!147761 lt!1602182) (noDuplicateKeys!611 (_2!27702 lt!1602182)))))

(declare-fun m!5056009 () Bool)

(assert (=> bs!726442 m!5056009))

(assert (=> d!1324257 d!1324339))

(declare-fun b_lambda!139125 () Bool)

(assert (= b_lambda!139109 (or start!426748 b_lambda!139125)))

(declare-fun bs!726443 () Bool)

(declare-fun d!1324341 () Bool)

(assert (= bs!726443 (and d!1324341 start!426748)))

(assert (=> bs!726443 (= (dynLambda!20743 lambda!147761 (tuple2!48817 hash!377 newBucket!200)) (noDuplicateKeys!611 (_2!27702 (tuple2!48817 hash!377 newBucket!200))))))

(declare-fun m!5056011 () Bool)

(assert (=> bs!726443 m!5056011))

(assert (=> b!4395551 d!1324341))

(declare-fun b_lambda!139127 () Bool)

(assert (= b_lambda!139105 (or start!426748 b_lambda!139127)))

(declare-fun bs!726444 () Bool)

(declare-fun d!1324343 () Bool)

(assert (= bs!726444 (and d!1324343 start!426748)))

(assert (=> bs!726444 (= (dynLambda!20743 lambda!147761 (h!54849 (toList!3205 lm!1707))) (noDuplicateKeys!611 (_2!27702 (h!54849 (toList!3205 lm!1707)))))))

(assert (=> bs!726444 m!5055637))

(assert (=> b!4395504 d!1324343))

(check-sat (not b!4395705) (not b!4395452) (not bm!305963) (not b!4395603) (not bm!305961) (not b!4395485) tp_is_empty!25683 (not bs!726443) (not b!4395691) (not b!4395682) (not d!1324287) (not b!4395694) (not bs!726441) (not b!4395526) (not b!4395679) (not b_lambda!139125) (not d!1324237) (not d!1324277) (not bs!726444) (not d!1324335) (not d!1324261) (not b!4395523) (not b_lambda!139121) (not b_lambda!139123) (not b!4395524) (not b!4395681) (not d!1324281) (not b!4395568) (not b!4395605) (not b!4395560) (not d!1324257) (not b!4395696) (not d!1324235) (not d!1324249) (not b!4395570) (not bm!305962) (not b!4395546) (not b!4395469) (not b!4395710) (not b_lambda!139127) (not d!1324333) (not bm!305951) (not d!1324269) (not b!4395558) (not b!4395697) (not d!1324291) (not b!4395698) (not d!1324275) (not b!4395607) tp_is_empty!25681 (not b!4395680) (not bm!305964) (not b!4395561) (not b!4395690) (not b!4395606) (not d!1324231) (not d!1324331) (not b!4395505) (not d!1324283) (not d!1324289) (not b!4395482) (not d!1324329) (not bs!726442) (not b!4395553) (not b!4395695) (not b!4395699) (not d!1324245) (not b!4395547) (not b!4395599) (not b!4395600) (not b!4395428) (not b!4395604))
(check-sat)
