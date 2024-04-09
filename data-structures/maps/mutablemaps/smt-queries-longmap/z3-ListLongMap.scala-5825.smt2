; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75160 () Bool)

(assert start!75160)

(declare-fun res!601432 () Bool)

(declare-fun e!492836 () Bool)

(assert (=> start!75160 (=> (not res!601432) (not e!492836))))

(declare-datatypes ((B!1270 0))(
  ( (B!1271 (val!8941 Int)) )
))
(declare-datatypes ((tuple2!11902 0))(
  ( (tuple2!11903 (_1!5961 (_ BitVec 64)) (_2!5961 B!1270)) )
))
(declare-datatypes ((List!17741 0))(
  ( (Nil!17738) (Cons!17737 (h!18868 tuple2!11902) (t!25026 List!17741)) )
))
(declare-fun l!906 () List!17741)

(declare-fun isStrictlySorted!474 (List!17741) Bool)

(assert (=> start!75160 (= res!601432 (isStrictlySorted!474 l!906))))

(assert (=> start!75160 e!492836))

(declare-fun e!492835 () Bool)

(assert (=> start!75160 e!492835))

(assert (=> start!75160 true))

(declare-fun tp_is_empty!17781 () Bool)

(assert (=> start!75160 tp_is_empty!17781))

(declare-fun b!885464 () Bool)

(declare-fun res!601433 () Bool)

(assert (=> b!885464 (=> (not res!601433) (not e!492836))))

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!885464 (= res!601433 (or (not ((_ is Cons!17737) l!906)) (bvsge (_1!5961 (h!18868 l!906)) key1!49)))))

(declare-fun b!885465 () Bool)

(declare-fun v1!38 () B!1270)

(declare-fun insertStrictlySorted!295 (List!17741 (_ BitVec 64) B!1270) List!17741)

(assert (=> b!885465 (= e!492836 (not (isStrictlySorted!474 (insertStrictlySorted!295 l!906 key1!49 v1!38))))))

(declare-fun b!885466 () Bool)

(declare-fun tp!54288 () Bool)

(assert (=> b!885466 (= e!492835 (and tp_is_empty!17781 tp!54288))))

(assert (= (and start!75160 res!601432) b!885464))

(assert (= (and b!885464 res!601433) b!885465))

(assert (= (and start!75160 ((_ is Cons!17737) l!906)) b!885466))

(declare-fun m!825743 () Bool)

(assert (=> start!75160 m!825743))

(declare-fun m!825745 () Bool)

(assert (=> b!885465 m!825745))

(assert (=> b!885465 m!825745))

(declare-fun m!825747 () Bool)

(assert (=> b!885465 m!825747))

(check-sat (not start!75160) (not b!885465) (not b!885466) tp_is_empty!17781)
(check-sat)
(get-model)

(declare-fun d!109343 () Bool)

(declare-fun res!601444 () Bool)

(declare-fun e!492847 () Bool)

(assert (=> d!109343 (=> res!601444 e!492847)))

(assert (=> d!109343 (= res!601444 (or ((_ is Nil!17738) l!906) ((_ is Nil!17738) (t!25026 l!906))))))

(assert (=> d!109343 (= (isStrictlySorted!474 l!906) e!492847)))

(declare-fun b!885480 () Bool)

(declare-fun e!492848 () Bool)

(assert (=> b!885480 (= e!492847 e!492848)))

(declare-fun res!601445 () Bool)

(assert (=> b!885480 (=> (not res!601445) (not e!492848))))

(assert (=> b!885480 (= res!601445 (bvslt (_1!5961 (h!18868 l!906)) (_1!5961 (h!18868 (t!25026 l!906)))))))

(declare-fun b!885481 () Bool)

(assert (=> b!885481 (= e!492848 (isStrictlySorted!474 (t!25026 l!906)))))

(assert (= (and d!109343 (not res!601444)) b!885480))

(assert (= (and b!885480 res!601445) b!885481))

(declare-fun m!825755 () Bool)

(assert (=> b!885481 m!825755))

(assert (=> start!75160 d!109343))

(declare-fun d!109349 () Bool)

(declare-fun res!601452 () Bool)

(declare-fun e!492855 () Bool)

(assert (=> d!109349 (=> res!601452 e!492855)))

(assert (=> d!109349 (= res!601452 (or ((_ is Nil!17738) (insertStrictlySorted!295 l!906 key1!49 v1!38)) ((_ is Nil!17738) (t!25026 (insertStrictlySorted!295 l!906 key1!49 v1!38)))))))

(assert (=> d!109349 (= (isStrictlySorted!474 (insertStrictlySorted!295 l!906 key1!49 v1!38)) e!492855)))

(declare-fun b!885488 () Bool)

(declare-fun e!492856 () Bool)

(assert (=> b!885488 (= e!492855 e!492856)))

(declare-fun res!601453 () Bool)

(assert (=> b!885488 (=> (not res!601453) (not e!492856))))

(assert (=> b!885488 (= res!601453 (bvslt (_1!5961 (h!18868 (insertStrictlySorted!295 l!906 key1!49 v1!38))) (_1!5961 (h!18868 (t!25026 (insertStrictlySorted!295 l!906 key1!49 v1!38))))))))

(declare-fun b!885489 () Bool)

(assert (=> b!885489 (= e!492856 (isStrictlySorted!474 (t!25026 (insertStrictlySorted!295 l!906 key1!49 v1!38))))))

(assert (= (and d!109349 (not res!601452)) b!885488))

(assert (= (and b!885488 res!601453) b!885489))

(declare-fun m!825757 () Bool)

(assert (=> b!885489 m!825757))

(assert (=> b!885465 d!109349))

(declare-fun bm!39137 () Bool)

(declare-fun call!39141 () List!17741)

(declare-fun call!39142 () List!17741)

(assert (=> bm!39137 (= call!39141 call!39142)))

(declare-fun c!93261 () Bool)

(declare-fun b!885560 () Bool)

(declare-fun c!93263 () Bool)

(declare-fun e!492901 () List!17741)

(assert (=> b!885560 (= e!492901 (ite c!93263 (t!25026 l!906) (ite c!93261 (Cons!17737 (h!18868 l!906) (t!25026 l!906)) Nil!17738)))))

(declare-fun b!885561 () Bool)

(declare-fun e!492900 () List!17741)

(declare-fun e!492898 () List!17741)

(assert (=> b!885561 (= e!492900 e!492898)))

(assert (=> b!885561 (= c!93263 (and ((_ is Cons!17737) l!906) (= (_1!5961 (h!18868 l!906)) key1!49)))))

(declare-fun c!93262 () Bool)

(declare-fun bm!39138 () Bool)

(declare-fun $colon$colon!545 (List!17741 tuple2!11902) List!17741)

(assert (=> bm!39138 (= call!39142 ($colon$colon!545 e!492901 (ite c!93262 (h!18868 l!906) (tuple2!11903 key1!49 v1!38))))))

(declare-fun c!93260 () Bool)

(assert (=> bm!39138 (= c!93260 c!93262)))

(declare-fun bm!39139 () Bool)

(declare-fun call!39140 () List!17741)

(assert (=> bm!39139 (= call!39140 call!39141)))

(declare-fun b!885562 () Bool)

(assert (=> b!885562 (= e!492901 (insertStrictlySorted!295 (t!25026 l!906) key1!49 v1!38))))

(declare-fun d!109351 () Bool)

(declare-fun e!492899 () Bool)

(assert (=> d!109351 e!492899))

(declare-fun res!601476 () Bool)

(assert (=> d!109351 (=> (not res!601476) (not e!492899))))

(declare-fun lt!400987 () List!17741)

(assert (=> d!109351 (= res!601476 (isStrictlySorted!474 lt!400987))))

(assert (=> d!109351 (= lt!400987 e!492900)))

(assert (=> d!109351 (= c!93262 (and ((_ is Cons!17737) l!906) (bvslt (_1!5961 (h!18868 l!906)) key1!49)))))

(assert (=> d!109351 (isStrictlySorted!474 l!906)))

(assert (=> d!109351 (= (insertStrictlySorted!295 l!906 key1!49 v1!38) lt!400987)))

(declare-fun b!885563 () Bool)

(declare-fun contains!4288 (List!17741 tuple2!11902) Bool)

(assert (=> b!885563 (= e!492899 (contains!4288 lt!400987 (tuple2!11903 key1!49 v1!38)))))

(declare-fun b!885564 () Bool)

(assert (=> b!885564 (= e!492900 call!39142)))

(declare-fun b!885565 () Bool)

(declare-fun res!601477 () Bool)

(assert (=> b!885565 (=> (not res!601477) (not e!492899))))

(declare-fun containsKey!409 (List!17741 (_ BitVec 64)) Bool)

(assert (=> b!885565 (= res!601477 (containsKey!409 lt!400987 key1!49))))

(declare-fun b!885566 () Bool)

(declare-fun e!492897 () List!17741)

(assert (=> b!885566 (= e!492897 call!39140)))

(declare-fun b!885567 () Bool)

(assert (=> b!885567 (= c!93261 (and ((_ is Cons!17737) l!906) (bvsgt (_1!5961 (h!18868 l!906)) key1!49)))))

(assert (=> b!885567 (= e!492898 e!492897)))

(declare-fun b!885568 () Bool)

(assert (=> b!885568 (= e!492897 call!39140)))

(declare-fun b!885569 () Bool)

(assert (=> b!885569 (= e!492898 call!39141)))

(assert (= (and d!109351 c!93262) b!885564))

(assert (= (and d!109351 (not c!93262)) b!885561))

(assert (= (and b!885561 c!93263) b!885569))

(assert (= (and b!885561 (not c!93263)) b!885567))

(assert (= (and b!885567 c!93261) b!885566))

(assert (= (and b!885567 (not c!93261)) b!885568))

(assert (= (or b!885566 b!885568) bm!39139))

(assert (= (or b!885569 bm!39139) bm!39137))

(assert (= (or b!885564 bm!39137) bm!39138))

(assert (= (and bm!39138 c!93260) b!885562))

(assert (= (and bm!39138 (not c!93260)) b!885560))

(assert (= (and d!109351 res!601476) b!885565))

(assert (= (and b!885565 res!601477) b!885563))

(declare-fun m!825767 () Bool)

(assert (=> b!885565 m!825767))

(declare-fun m!825769 () Bool)

(assert (=> b!885562 m!825769))

(declare-fun m!825771 () Bool)

(assert (=> b!885563 m!825771))

(declare-fun m!825773 () Bool)

(assert (=> bm!39138 m!825773))

(declare-fun m!825775 () Bool)

(assert (=> d!109351 m!825775))

(assert (=> d!109351 m!825743))

(assert (=> b!885465 d!109351))

(declare-fun b!885594 () Bool)

(declare-fun e!492914 () Bool)

(declare-fun tp!54294 () Bool)

(assert (=> b!885594 (= e!492914 (and tp_is_empty!17781 tp!54294))))

(assert (=> b!885466 (= tp!54288 e!492914)))

(assert (= (and b!885466 ((_ is Cons!17737) (t!25026 l!906))) b!885594))

(check-sat (not b!885594) (not bm!39138) (not b!885562) (not b!885563) tp_is_empty!17781 (not b!885481) (not b!885489) (not b!885565) (not d!109351))
(check-sat)
