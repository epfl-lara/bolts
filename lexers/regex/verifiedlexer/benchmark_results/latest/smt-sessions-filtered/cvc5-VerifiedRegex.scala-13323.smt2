; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723508 () Bool)

(assert start!723508)

(declare-fun b!7453655 () Bool)

(assert (=> b!7453655 true))

(assert (=> b!7453655 true))

(assert (=> b!7453655 true))

(declare-fun lambda!461099 () Int)

(declare-fun lambda!461098 () Int)

(assert (=> b!7453655 (not (= lambda!461099 lambda!461098))))

(assert (=> b!7453655 true))

(assert (=> b!7453655 true))

(assert (=> b!7453655 true))

(declare-fun b!7453652 () Bool)

(declare-fun e!4448964 () Bool)

(declare-fun tp_is_empty!49305 () Bool)

(declare-fun tp!2160047 () Bool)

(assert (=> b!7453652 (= e!4448964 (and tp_is_empty!49305 tp!2160047))))

(declare-fun b!7453653 () Bool)

(declare-fun res!2989754 () Bool)

(declare-fun e!4448959 () Bool)

(assert (=> b!7453653 (=> (not res!2989754) (not e!4448959))))

(declare-datatypes ((C!39290 0))(
  ( (C!39291 (val!30043 Int)) )
))
(declare-datatypes ((Regex!19508 0))(
  ( (ElementMatch!19508 (c!1378119 C!39290)) (Concat!28353 (regOne!39528 Regex!19508) (regTwo!39528 Regex!19508)) (EmptyExpr!19508) (Star!19508 (reg!19837 Regex!19508)) (EmptyLang!19508) (Union!19508 (regOne!39529 Regex!19508) (regTwo!39529 Regex!19508)) )
))
(declare-fun rTail!78 () Regex!19508)

(declare-fun validRegex!10022 (Regex!19508) Bool)

(assert (=> b!7453653 (= res!2989754 (validRegex!10022 rTail!78))))

(declare-fun b!7453654 () Bool)

(declare-fun e!4448958 () Bool)

(declare-fun tp!2160051 () Bool)

(assert (=> b!7453654 (= e!4448958 tp!2160051)))

(declare-fun e!4448963 () Bool)

(declare-fun e!4448962 () Bool)

(assert (=> b!7453655 (= e!4448963 e!4448962)))

(declare-fun res!2989750 () Bool)

(assert (=> b!7453655 (=> res!2989750 e!4448962)))

(declare-fun lt!2621012 () Regex!19508)

(declare-datatypes ((List!72224 0))(
  ( (Nil!72100) (Cons!72100 (h!78548 C!39290) (t!386793 List!72224)) )
))
(declare-datatypes ((tuple2!68470 0))(
  ( (tuple2!68471 (_1!37538 List!72224) (_2!37538 List!72224)) )
))
(declare-fun lt!2621028 () tuple2!68470)

(declare-fun matchR!9272 (Regex!19508 List!72224) Bool)

(assert (=> b!7453655 (= res!2989750 (not (matchR!9272 lt!2621012 (_1!37538 lt!2621028))))))

(declare-datatypes ((Option!17067 0))(
  ( (None!17066) (Some!17066 (v!54195 tuple2!68470)) )
))
(declare-fun lt!2621022 () Option!17067)

(declare-fun get!25146 (Option!17067) tuple2!68470)

(assert (=> b!7453655 (= lt!2621028 (get!25146 lt!2621022))))

(declare-fun Exists!4129 (Int) Bool)

(assert (=> b!7453655 (= (Exists!4129 lambda!461098) (Exists!4129 lambda!461099))))

(declare-fun s!13591 () List!72224)

(declare-datatypes ((Unit!165851 0))(
  ( (Unit!165852) )
))
(declare-fun lt!2621023 () Unit!165851)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2465 (Regex!19508 Regex!19508 List!72224) Unit!165851)

(assert (=> b!7453655 (= lt!2621023 (lemmaExistCutMatchRandMatchRSpecEquivalent!2465 lt!2621012 rTail!78 s!13591))))

(declare-fun isDefined!13756 (Option!17067) Bool)

(assert (=> b!7453655 (= (isDefined!13756 lt!2621022) (Exists!4129 lambda!461098))))

(declare-fun findConcatSeparation!3189 (Regex!19508 Regex!19508 List!72224 List!72224 List!72224) Option!17067)

(assert (=> b!7453655 (= lt!2621022 (findConcatSeparation!3189 lt!2621012 rTail!78 Nil!72100 s!13591 s!13591))))

(declare-fun lt!2621015 () Unit!165851)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2947 (Regex!19508 Regex!19508 List!72224) Unit!165851)

(assert (=> b!7453655 (= lt!2621015 (lemmaFindConcatSeparationEquivalentToExists!2947 lt!2621012 rTail!78 s!13591))))

(declare-fun b!7453656 () Bool)

(assert (=> b!7453656 (= e!4448958 tp_is_empty!49305)))

(declare-fun b!7453657 () Bool)

(declare-fun e!4448960 () Bool)

(assert (=> b!7453657 (= e!4448962 e!4448960)))

(declare-fun res!2989751 () Bool)

(assert (=> b!7453657 (=> res!2989751 e!4448960)))

(declare-fun lt!2621024 () Bool)

(declare-fun lt!2621026 () Bool)

(assert (=> b!7453657 (= res!2989751 (and (not lt!2621024) (not lt!2621026)))))

(declare-fun r2!5783 () Regex!19508)

(declare-fun matchRSpec!4187 (Regex!19508 List!72224) Bool)

(assert (=> b!7453657 (= lt!2621026 (matchRSpec!4187 r2!5783 (_1!37538 lt!2621028)))))

(assert (=> b!7453657 (= lt!2621026 (matchR!9272 r2!5783 (_1!37538 lt!2621028)))))

(declare-fun lt!2621010 () Unit!165851)

(declare-fun mainMatchTheorem!4181 (Regex!19508 List!72224) Unit!165851)

(assert (=> b!7453657 (= lt!2621010 (mainMatchTheorem!4181 r2!5783 (_1!37538 lt!2621028)))))

(declare-fun r1!5845 () Regex!19508)

(assert (=> b!7453657 (= lt!2621024 (matchRSpec!4187 r1!5845 (_1!37538 lt!2621028)))))

(assert (=> b!7453657 (= lt!2621024 (matchR!9272 r1!5845 (_1!37538 lt!2621028)))))

(declare-fun lt!2621025 () Unit!165851)

(assert (=> b!7453657 (= lt!2621025 (mainMatchTheorem!4181 r1!5845 (_1!37538 lt!2621028)))))

(assert (=> b!7453657 (matchRSpec!4187 rTail!78 (_2!37538 lt!2621028))))

(declare-fun lt!2621018 () Unit!165851)

(assert (=> b!7453657 (= lt!2621018 (mainMatchTheorem!4181 rTail!78 (_2!37538 lt!2621028)))))

(assert (=> b!7453657 (matchRSpec!4187 lt!2621012 (_1!37538 lt!2621028))))

(declare-fun lt!2621017 () Unit!165851)

(assert (=> b!7453657 (= lt!2621017 (mainMatchTheorem!4181 lt!2621012 (_1!37538 lt!2621028)))))

(declare-fun b!7453658 () Bool)

(declare-fun e!4448961 () Bool)

(declare-fun tp!2160057 () Bool)

(declare-fun tp!2160044 () Bool)

(assert (=> b!7453658 (= e!4448961 (and tp!2160057 tp!2160044))))

(declare-fun b!7453659 () Bool)

(declare-fun e!4448957 () Bool)

(declare-fun tp!2160050 () Bool)

(declare-fun tp!2160056 () Bool)

(assert (=> b!7453659 (= e!4448957 (and tp!2160050 tp!2160056))))

(declare-fun b!7453660 () Bool)

(declare-fun tp!2160045 () Bool)

(declare-fun tp!2160055 () Bool)

(assert (=> b!7453660 (= e!4448961 (and tp!2160045 tp!2160055))))

(declare-fun res!2989752 () Bool)

(assert (=> start!723508 (=> (not res!2989752) (not e!4448959))))

(assert (=> start!723508 (= res!2989752 (validRegex!10022 r1!5845))))

(assert (=> start!723508 e!4448959))

(assert (=> start!723508 e!4448957))

(assert (=> start!723508 e!4448961))

(assert (=> start!723508 e!4448958))

(assert (=> start!723508 e!4448964))

(declare-fun b!7453661 () Bool)

(declare-fun tp!2160059 () Bool)

(assert (=> b!7453661 (= e!4448957 tp!2160059)))

(declare-fun b!7453662 () Bool)

(declare-fun res!2989749 () Bool)

(assert (=> b!7453662 (=> res!2989749 e!4448962)))

(assert (=> b!7453662 (= res!2989749 (not (matchR!9272 rTail!78 (_2!37538 lt!2621028))))))

(declare-fun b!7453663 () Bool)

(declare-fun tp!2160054 () Bool)

(declare-fun tp!2160046 () Bool)

(assert (=> b!7453663 (= e!4448958 (and tp!2160054 tp!2160046))))

(declare-fun b!7453664 () Bool)

(declare-fun lt!2621016 () Regex!19508)

(assert (=> b!7453664 (= e!4448960 (validRegex!10022 lt!2621016))))

(declare-fun lt!2621021 () Regex!19508)

(assert (=> b!7453664 (= (matchR!9272 lt!2621021 s!13591) (matchRSpec!4187 lt!2621021 s!13591))))

(declare-fun lt!2621029 () Unit!165851)

(assert (=> b!7453664 (= lt!2621029 (mainMatchTheorem!4181 lt!2621021 s!13591))))

(assert (=> b!7453664 (= (matchR!9272 lt!2621016 s!13591) (matchRSpec!4187 lt!2621016 s!13591))))

(declare-fun lt!2621013 () Unit!165851)

(assert (=> b!7453664 (= lt!2621013 (mainMatchTheorem!4181 lt!2621016 s!13591))))

(declare-fun b!7453665 () Bool)

(assert (=> b!7453665 (= e!4448961 tp_is_empty!49305)))

(declare-fun b!7453666 () Bool)

(assert (=> b!7453666 (= e!4448959 (not e!4448963))))

(declare-fun res!2989755 () Bool)

(assert (=> b!7453666 (=> res!2989755 e!4448963)))

(declare-fun lt!2621020 () Bool)

(assert (=> b!7453666 (= res!2989755 (not lt!2621020))))

(declare-fun lt!2621019 () Regex!19508)

(assert (=> b!7453666 (= (matchR!9272 lt!2621019 s!13591) (matchRSpec!4187 lt!2621019 s!13591))))

(declare-fun lt!2621014 () Unit!165851)

(assert (=> b!7453666 (= lt!2621014 (mainMatchTheorem!4181 lt!2621019 s!13591))))

(declare-fun lt!2621027 () Regex!19508)

(assert (=> b!7453666 (= lt!2621020 (matchRSpec!4187 lt!2621027 s!13591))))

(assert (=> b!7453666 (= lt!2621020 (matchR!9272 lt!2621027 s!13591))))

(declare-fun lt!2621011 () Unit!165851)

(assert (=> b!7453666 (= lt!2621011 (mainMatchTheorem!4181 lt!2621027 s!13591))))

(assert (=> b!7453666 (= lt!2621019 (Union!19508 lt!2621016 lt!2621021))))

(assert (=> b!7453666 (= lt!2621021 (Concat!28353 r2!5783 rTail!78))))

(assert (=> b!7453666 (= lt!2621016 (Concat!28353 r1!5845 rTail!78))))

(assert (=> b!7453666 (= lt!2621027 (Concat!28353 lt!2621012 rTail!78))))

(assert (=> b!7453666 (= lt!2621012 (Union!19508 r1!5845 r2!5783))))

(declare-fun b!7453667 () Bool)

(declare-fun tp!2160052 () Bool)

(declare-fun tp!2160049 () Bool)

(assert (=> b!7453667 (= e!4448958 (and tp!2160052 tp!2160049))))

(declare-fun b!7453668 () Bool)

(declare-fun res!2989753 () Bool)

(assert (=> b!7453668 (=> (not res!2989753) (not e!4448959))))

(assert (=> b!7453668 (= res!2989753 (validRegex!10022 r2!5783))))

(declare-fun b!7453669 () Bool)

(assert (=> b!7453669 (= e!4448957 tp_is_empty!49305)))

(declare-fun b!7453670 () Bool)

(declare-fun tp!2160048 () Bool)

(declare-fun tp!2160053 () Bool)

(assert (=> b!7453670 (= e!4448957 (and tp!2160048 tp!2160053))))

(declare-fun b!7453671 () Bool)

(declare-fun tp!2160058 () Bool)

(assert (=> b!7453671 (= e!4448961 tp!2160058)))

(assert (= (and start!723508 res!2989752) b!7453668))

(assert (= (and b!7453668 res!2989753) b!7453653))

(assert (= (and b!7453653 res!2989754) b!7453666))

(assert (= (and b!7453666 (not res!2989755)) b!7453655))

(assert (= (and b!7453655 (not res!2989750)) b!7453662))

(assert (= (and b!7453662 (not res!2989749)) b!7453657))

(assert (= (and b!7453657 (not res!2989751)) b!7453664))

(assert (= (and start!723508 (is-ElementMatch!19508 r1!5845)) b!7453669))

(assert (= (and start!723508 (is-Concat!28353 r1!5845)) b!7453659))

(assert (= (and start!723508 (is-Star!19508 r1!5845)) b!7453661))

(assert (= (and start!723508 (is-Union!19508 r1!5845)) b!7453670))

(assert (= (and start!723508 (is-ElementMatch!19508 r2!5783)) b!7453665))

(assert (= (and start!723508 (is-Concat!28353 r2!5783)) b!7453660))

(assert (= (and start!723508 (is-Star!19508 r2!5783)) b!7453671))

(assert (= (and start!723508 (is-Union!19508 r2!5783)) b!7453658))

(assert (= (and start!723508 (is-ElementMatch!19508 rTail!78)) b!7453656))

(assert (= (and start!723508 (is-Concat!28353 rTail!78)) b!7453663))

(assert (= (and start!723508 (is-Star!19508 rTail!78)) b!7453654))

(assert (= (and start!723508 (is-Union!19508 rTail!78)) b!7453667))

(assert (= (and start!723508 (is-Cons!72100 s!13591)) b!7453652))

(declare-fun m!8058460 () Bool)

(assert (=> b!7453653 m!8058460))

(declare-fun m!8058462 () Bool)

(assert (=> b!7453668 m!8058462))

(declare-fun m!8058464 () Bool)

(assert (=> start!723508 m!8058464))

(declare-fun m!8058466 () Bool)

(assert (=> b!7453655 m!8058466))

(declare-fun m!8058468 () Bool)

(assert (=> b!7453655 m!8058468))

(declare-fun m!8058470 () Bool)

(assert (=> b!7453655 m!8058470))

(declare-fun m!8058472 () Bool)

(assert (=> b!7453655 m!8058472))

(declare-fun m!8058474 () Bool)

(assert (=> b!7453655 m!8058474))

(declare-fun m!8058476 () Bool)

(assert (=> b!7453655 m!8058476))

(assert (=> b!7453655 m!8058468))

(declare-fun m!8058478 () Bool)

(assert (=> b!7453655 m!8058478))

(declare-fun m!8058480 () Bool)

(assert (=> b!7453655 m!8058480))

(declare-fun m!8058482 () Bool)

(assert (=> b!7453664 m!8058482))

(declare-fun m!8058484 () Bool)

(assert (=> b!7453664 m!8058484))

(declare-fun m!8058486 () Bool)

(assert (=> b!7453664 m!8058486))

(declare-fun m!8058488 () Bool)

(assert (=> b!7453664 m!8058488))

(declare-fun m!8058490 () Bool)

(assert (=> b!7453664 m!8058490))

(declare-fun m!8058492 () Bool)

(assert (=> b!7453664 m!8058492))

(declare-fun m!8058494 () Bool)

(assert (=> b!7453664 m!8058494))

(declare-fun m!8058496 () Bool)

(assert (=> b!7453666 m!8058496))

(declare-fun m!8058498 () Bool)

(assert (=> b!7453666 m!8058498))

(declare-fun m!8058500 () Bool)

(assert (=> b!7453666 m!8058500))

(declare-fun m!8058502 () Bool)

(assert (=> b!7453666 m!8058502))

(declare-fun m!8058504 () Bool)

(assert (=> b!7453666 m!8058504))

(declare-fun m!8058506 () Bool)

(assert (=> b!7453666 m!8058506))

(declare-fun m!8058508 () Bool)

(assert (=> b!7453662 m!8058508))

(declare-fun m!8058510 () Bool)

(assert (=> b!7453657 m!8058510))

(declare-fun m!8058512 () Bool)

(assert (=> b!7453657 m!8058512))

(declare-fun m!8058514 () Bool)

(assert (=> b!7453657 m!8058514))

(declare-fun m!8058516 () Bool)

(assert (=> b!7453657 m!8058516))

(declare-fun m!8058518 () Bool)

(assert (=> b!7453657 m!8058518))

(declare-fun m!8058520 () Bool)

(assert (=> b!7453657 m!8058520))

(declare-fun m!8058522 () Bool)

(assert (=> b!7453657 m!8058522))

(declare-fun m!8058524 () Bool)

(assert (=> b!7453657 m!8058524))

(declare-fun m!8058526 () Bool)

(assert (=> b!7453657 m!8058526))

(declare-fun m!8058528 () Bool)

(assert (=> b!7453657 m!8058528))

(push 1)

(assert (not b!7453661))

(assert (not b!7453668))

(assert (not start!723508))

(assert (not b!7453659))

(assert (not b!7453653))

(assert (not b!7453662))

(assert (not b!7453658))

(assert (not b!7453655))

(assert (not b!7453664))

(assert (not b!7453670))

(assert (not b!7453660))

(assert (not b!7453671))

(assert (not b!7453657))

(assert (not b!7453663))

(assert (not b!7453666))

(assert (not b!7453667))

(assert tp_is_empty!49305)

(assert (not b!7453652))

(assert (not b!7453654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2297206 () Bool)

(assert (=> d!2297206 (= (matchR!9272 lt!2621019 s!13591) (matchRSpec!4187 lt!2621019 s!13591))))

(declare-fun lt!2621092 () Unit!165851)

(declare-fun choose!57612 (Regex!19508 List!72224) Unit!165851)

(assert (=> d!2297206 (= lt!2621092 (choose!57612 lt!2621019 s!13591))))

(assert (=> d!2297206 (validRegex!10022 lt!2621019)))

(assert (=> d!2297206 (= (mainMatchTheorem!4181 lt!2621019 s!13591) lt!2621092)))

(declare-fun bs!1927428 () Bool)

(assert (= bs!1927428 d!2297206))

(assert (=> bs!1927428 m!8058498))

(assert (=> bs!1927428 m!8058496))

(declare-fun m!8058600 () Bool)

(assert (=> bs!1927428 m!8058600))

(declare-fun m!8058602 () Bool)

(assert (=> bs!1927428 m!8058602))

(assert (=> b!7453666 d!2297206))

(declare-fun bs!1927430 () Bool)

(declare-fun b!7453791 () Bool)

(assert (= bs!1927430 (and b!7453791 b!7453655)))

(declare-fun lambda!461112 () Int)

(assert (=> bs!1927430 (not (= lambda!461112 lambda!461098))))

(assert (=> bs!1927430 (not (= lambda!461112 lambda!461099))))

(assert (=> b!7453791 true))

(assert (=> b!7453791 true))

(declare-fun bs!1927431 () Bool)

(declare-fun b!7453793 () Bool)

(assert (= bs!1927431 (and b!7453793 b!7453655)))

(declare-fun lambda!461113 () Int)

(assert (=> bs!1927431 (not (= lambda!461113 lambda!461098))))

(assert (=> bs!1927431 (= (and (= (regOne!39528 lt!2621027) lt!2621012) (= (regTwo!39528 lt!2621027) rTail!78)) (= lambda!461113 lambda!461099))))

(declare-fun bs!1927432 () Bool)

(assert (= bs!1927432 (and b!7453793 b!7453791)))

(assert (=> bs!1927432 (not (= lambda!461113 lambda!461112))))

(assert (=> b!7453793 true))

(assert (=> b!7453793 true))

(declare-fun b!7453784 () Bool)

(declare-fun res!2989805 () Bool)

(declare-fun e!4449018 () Bool)

(assert (=> b!7453784 (=> res!2989805 e!4449018)))

(declare-fun call!684730 () Bool)

(assert (=> b!7453784 (= res!2989805 call!684730)))

(declare-fun e!4449016 () Bool)

(assert (=> b!7453784 (= e!4449016 e!4449018)))

(declare-fun b!7453785 () Bool)

(declare-fun e!4449017 () Bool)

(declare-fun e!4449014 () Bool)

(assert (=> b!7453785 (= e!4449017 e!4449014)))

(declare-fun res!2989806 () Bool)

(assert (=> b!7453785 (= res!2989806 (matchRSpec!4187 (regOne!39529 lt!2621027) s!13591))))

(assert (=> b!7453785 (=> res!2989806 e!4449014)))

(declare-fun b!7453787 () Bool)

(assert (=> b!7453787 (= e!4449017 e!4449016)))

(declare-fun c!1378129 () Bool)

(assert (=> b!7453787 (= c!1378129 (is-Star!19508 lt!2621027))))

(declare-fun b!7453788 () Bool)

(declare-fun e!4449013 () Bool)

(assert (=> b!7453788 (= e!4449013 (= s!13591 (Cons!72100 (c!1378119 lt!2621027) Nil!72100)))))

(declare-fun bm!684724 () Bool)

(declare-fun isEmpty!41107 (List!72224) Bool)

(assert (=> bm!684724 (= call!684730 (isEmpty!41107 s!13591))))

(declare-fun b!7453789 () Bool)

(declare-fun e!4449019 () Bool)

(declare-fun e!4449015 () Bool)

(assert (=> b!7453789 (= e!4449019 e!4449015)))

(declare-fun res!2989807 () Bool)

(assert (=> b!7453789 (= res!2989807 (not (is-EmptyLang!19508 lt!2621027)))))

(assert (=> b!7453789 (=> (not res!2989807) (not e!4449015))))

(declare-fun bm!684725 () Bool)

(declare-fun call!684729 () Bool)

(assert (=> bm!684725 (= call!684729 (Exists!4129 (ite c!1378129 lambda!461112 lambda!461113)))))

(declare-fun b!7453790 () Bool)

(declare-fun c!1378130 () Bool)

(assert (=> b!7453790 (= c!1378130 (is-ElementMatch!19508 lt!2621027))))

(assert (=> b!7453790 (= e!4449015 e!4449013)))

(assert (=> b!7453791 (= e!4449018 call!684729)))

(declare-fun b!7453792 () Bool)

(assert (=> b!7453792 (= e!4449014 (matchRSpec!4187 (regTwo!39529 lt!2621027) s!13591))))

(declare-fun b!7453786 () Bool)

(declare-fun c!1378131 () Bool)

(assert (=> b!7453786 (= c!1378131 (is-Union!19508 lt!2621027))))

(assert (=> b!7453786 (= e!4449013 e!4449017)))

(declare-fun d!2297208 () Bool)

(declare-fun c!1378132 () Bool)

(assert (=> d!2297208 (= c!1378132 (is-EmptyExpr!19508 lt!2621027))))

(assert (=> d!2297208 (= (matchRSpec!4187 lt!2621027 s!13591) e!4449019)))

(assert (=> b!7453793 (= e!4449016 call!684729)))

(declare-fun b!7453794 () Bool)

(assert (=> b!7453794 (= e!4449019 call!684730)))

(assert (= (and d!2297208 c!1378132) b!7453794))

(assert (= (and d!2297208 (not c!1378132)) b!7453789))

(assert (= (and b!7453789 res!2989807) b!7453790))

(assert (= (and b!7453790 c!1378130) b!7453788))

(assert (= (and b!7453790 (not c!1378130)) b!7453786))

(assert (= (and b!7453786 c!1378131) b!7453785))

(assert (= (and b!7453786 (not c!1378131)) b!7453787))

(assert (= (and b!7453785 (not res!2989806)) b!7453792))

(assert (= (and b!7453787 c!1378129) b!7453784))

(assert (= (and b!7453787 (not c!1378129)) b!7453793))

(assert (= (and b!7453784 (not res!2989805)) b!7453791))

(assert (= (or b!7453791 b!7453793) bm!684725))

(assert (= (or b!7453794 b!7453784) bm!684724))

(declare-fun m!8058608 () Bool)

(assert (=> b!7453785 m!8058608))

(declare-fun m!8058610 () Bool)

(assert (=> bm!684724 m!8058610))

(declare-fun m!8058612 () Bool)

(assert (=> bm!684725 m!8058612))

(declare-fun m!8058614 () Bool)

(assert (=> b!7453792 m!8058614))

(assert (=> b!7453666 d!2297208))

(declare-fun b!7453851 () Bool)

(declare-fun e!4449048 () Bool)

(declare-fun e!4449052 () Bool)

(assert (=> b!7453851 (= e!4449048 e!4449052)))

(declare-fun res!2989845 () Bool)

(assert (=> b!7453851 (=> (not res!2989845) (not e!4449052))))

(declare-fun lt!2621100 () Bool)

(assert (=> b!7453851 (= res!2989845 (not lt!2621100))))

(declare-fun b!7453852 () Bool)

(declare-fun res!2989841 () Bool)

(assert (=> b!7453852 (=> res!2989841 e!4449048)))

(declare-fun e!4449049 () Bool)

(assert (=> b!7453852 (= res!2989841 e!4449049)))

(declare-fun res!2989844 () Bool)

(assert (=> b!7453852 (=> (not res!2989844) (not e!4449049))))

(assert (=> b!7453852 (= res!2989844 lt!2621100)))

(declare-fun b!7453853 () Bool)

(declare-fun res!2989842 () Bool)

(assert (=> b!7453853 (=> (not res!2989842) (not e!4449049))))

(declare-fun tail!14864 (List!72224) List!72224)

(assert (=> b!7453853 (= res!2989842 (isEmpty!41107 (tail!14864 s!13591)))))

(declare-fun b!7453854 () Bool)

(declare-fun e!4449050 () Bool)

(declare-fun derivativeStep!5555 (Regex!19508 C!39290) Regex!19508)

(declare-fun head!15295 (List!72224) C!39290)

(assert (=> b!7453854 (= e!4449050 (matchR!9272 (derivativeStep!5555 lt!2621027 (head!15295 s!13591)) (tail!14864 s!13591)))))

(declare-fun b!7453855 () Bool)

(declare-fun nullable!8496 (Regex!19508) Bool)

(assert (=> b!7453855 (= e!4449050 (nullable!8496 lt!2621027))))

(declare-fun b!7453856 () Bool)

(declare-fun res!2989846 () Bool)

(assert (=> b!7453856 (=> res!2989846 e!4449048)))

(assert (=> b!7453856 (= res!2989846 (not (is-ElementMatch!19508 lt!2621027)))))

(declare-fun e!4449051 () Bool)

(assert (=> b!7453856 (= e!4449051 e!4449048)))

(declare-fun b!7453857 () Bool)

(assert (=> b!7453857 (= e!4449049 (= (head!15295 s!13591) (c!1378119 lt!2621027)))))

(declare-fun d!2297212 () Bool)

(declare-fun e!4449054 () Bool)

(assert (=> d!2297212 e!4449054))

(declare-fun c!1378146 () Bool)

(assert (=> d!2297212 (= c!1378146 (is-EmptyExpr!19508 lt!2621027))))

(assert (=> d!2297212 (= lt!2621100 e!4449050)))

(declare-fun c!1378145 () Bool)

(assert (=> d!2297212 (= c!1378145 (isEmpty!41107 s!13591))))

(assert (=> d!2297212 (validRegex!10022 lt!2621027)))

(assert (=> d!2297212 (= (matchR!9272 lt!2621027 s!13591) lt!2621100)))

(declare-fun b!7453858 () Bool)

(declare-fun e!4449053 () Bool)

(assert (=> b!7453858 (= e!4449052 e!4449053)))

(declare-fun res!2989840 () Bool)

(assert (=> b!7453858 (=> res!2989840 e!4449053)))

(declare-fun call!684735 () Bool)

(assert (=> b!7453858 (= res!2989840 call!684735)))

(declare-fun bm!684730 () Bool)

(assert (=> bm!684730 (= call!684735 (isEmpty!41107 s!13591))))

(declare-fun b!7453859 () Bool)

(assert (=> b!7453859 (= e!4449051 (not lt!2621100))))

(declare-fun b!7453860 () Bool)

(assert (=> b!7453860 (= e!4449054 (= lt!2621100 call!684735))))

(declare-fun b!7453861 () Bool)

(assert (=> b!7453861 (= e!4449054 e!4449051)))

(declare-fun c!1378147 () Bool)

(assert (=> b!7453861 (= c!1378147 (is-EmptyLang!19508 lt!2621027))))

(declare-fun b!7453862 () Bool)

(declare-fun res!2989843 () Bool)

(assert (=> b!7453862 (=> res!2989843 e!4449053)))

(assert (=> b!7453862 (= res!2989843 (not (isEmpty!41107 (tail!14864 s!13591))))))

(declare-fun b!7453863 () Bool)

(declare-fun res!2989847 () Bool)

(assert (=> b!7453863 (=> (not res!2989847) (not e!4449049))))

(assert (=> b!7453863 (= res!2989847 (not call!684735))))

(declare-fun b!7453864 () Bool)

(assert (=> b!7453864 (= e!4449053 (not (= (head!15295 s!13591) (c!1378119 lt!2621027))))))

(assert (= (and d!2297212 c!1378145) b!7453855))

(assert (= (and d!2297212 (not c!1378145)) b!7453854))

(assert (= (and d!2297212 c!1378146) b!7453860))

(assert (= (and d!2297212 (not c!1378146)) b!7453861))

(assert (= (and b!7453861 c!1378147) b!7453859))

(assert (= (and b!7453861 (not c!1378147)) b!7453856))

(assert (= (and b!7453856 (not res!2989846)) b!7453852))

(assert (= (and b!7453852 res!2989844) b!7453863))

(assert (= (and b!7453863 res!2989847) b!7453853))

(assert (= (and b!7453853 res!2989842) b!7453857))

(assert (= (and b!7453852 (not res!2989841)) b!7453851))

(assert (= (and b!7453851 res!2989845) b!7453858))

(assert (= (and b!7453858 (not res!2989840)) b!7453862))

(assert (= (and b!7453862 (not res!2989843)) b!7453864))

(assert (= (or b!7453860 b!7453858 b!7453863) bm!684730))

(declare-fun m!8058616 () Bool)

(assert (=> b!7453864 m!8058616))

(assert (=> d!2297212 m!8058610))

(declare-fun m!8058618 () Bool)

(assert (=> d!2297212 m!8058618))

(assert (=> b!7453857 m!8058616))

(declare-fun m!8058620 () Bool)

(assert (=> b!7453862 m!8058620))

(assert (=> b!7453862 m!8058620))

(declare-fun m!8058622 () Bool)

(assert (=> b!7453862 m!8058622))

(assert (=> b!7453853 m!8058620))

(assert (=> b!7453853 m!8058620))

(assert (=> b!7453853 m!8058622))

(assert (=> bm!684730 m!8058610))

(assert (=> b!7453854 m!8058616))

(assert (=> b!7453854 m!8058616))

(declare-fun m!8058624 () Bool)

(assert (=> b!7453854 m!8058624))

(assert (=> b!7453854 m!8058620))

(assert (=> b!7453854 m!8058624))

(assert (=> b!7453854 m!8058620))

(declare-fun m!8058626 () Bool)

(assert (=> b!7453854 m!8058626))

(declare-fun m!8058628 () Bool)

(assert (=> b!7453855 m!8058628))

(assert (=> b!7453666 d!2297212))

(declare-fun b!7453879 () Bool)

(declare-fun e!4449062 () Bool)

(declare-fun e!4449066 () Bool)

(assert (=> b!7453879 (= e!4449062 e!4449066)))

(declare-fun res!2989861 () Bool)

(assert (=> b!7453879 (=> (not res!2989861) (not e!4449066))))

(declare-fun lt!2621102 () Bool)

(assert (=> b!7453879 (= res!2989861 (not lt!2621102))))

(declare-fun b!7453880 () Bool)

(declare-fun res!2989857 () Bool)

(assert (=> b!7453880 (=> res!2989857 e!4449062)))

(declare-fun e!4449063 () Bool)

(assert (=> b!7453880 (= res!2989857 e!4449063)))

(declare-fun res!2989860 () Bool)

(assert (=> b!7453880 (=> (not res!2989860) (not e!4449063))))

(assert (=> b!7453880 (= res!2989860 lt!2621102)))

(declare-fun b!7453881 () Bool)

(declare-fun res!2989858 () Bool)

(assert (=> b!7453881 (=> (not res!2989858) (not e!4449063))))

(assert (=> b!7453881 (= res!2989858 (isEmpty!41107 (tail!14864 s!13591)))))

(declare-fun b!7453882 () Bool)

(declare-fun e!4449064 () Bool)

(assert (=> b!7453882 (= e!4449064 (matchR!9272 (derivativeStep!5555 lt!2621019 (head!15295 s!13591)) (tail!14864 s!13591)))))

(declare-fun b!7453883 () Bool)

(assert (=> b!7453883 (= e!4449064 (nullable!8496 lt!2621019))))

(declare-fun b!7453884 () Bool)

(declare-fun res!2989862 () Bool)

(assert (=> b!7453884 (=> res!2989862 e!4449062)))

(assert (=> b!7453884 (= res!2989862 (not (is-ElementMatch!19508 lt!2621019)))))

(declare-fun e!4449065 () Bool)

(assert (=> b!7453884 (= e!4449065 e!4449062)))

(declare-fun b!7453885 () Bool)

(assert (=> b!7453885 (= e!4449063 (= (head!15295 s!13591) (c!1378119 lt!2621019)))))

(declare-fun d!2297214 () Bool)

(declare-fun e!4449068 () Bool)

(assert (=> d!2297214 e!4449068))

(declare-fun c!1378152 () Bool)

(assert (=> d!2297214 (= c!1378152 (is-EmptyExpr!19508 lt!2621019))))

(assert (=> d!2297214 (= lt!2621102 e!4449064)))

(declare-fun c!1378151 () Bool)

(assert (=> d!2297214 (= c!1378151 (isEmpty!41107 s!13591))))

(assert (=> d!2297214 (validRegex!10022 lt!2621019)))

(assert (=> d!2297214 (= (matchR!9272 lt!2621019 s!13591) lt!2621102)))

(declare-fun b!7453886 () Bool)

(declare-fun e!4449067 () Bool)

(assert (=> b!7453886 (= e!4449066 e!4449067)))

(declare-fun res!2989856 () Bool)

(assert (=> b!7453886 (=> res!2989856 e!4449067)))

(declare-fun call!684737 () Bool)

(assert (=> b!7453886 (= res!2989856 call!684737)))

(declare-fun bm!684732 () Bool)

(assert (=> bm!684732 (= call!684737 (isEmpty!41107 s!13591))))

(declare-fun b!7453887 () Bool)

(assert (=> b!7453887 (= e!4449065 (not lt!2621102))))

(declare-fun b!7453888 () Bool)

(assert (=> b!7453888 (= e!4449068 (= lt!2621102 call!684737))))

(declare-fun b!7453889 () Bool)

(assert (=> b!7453889 (= e!4449068 e!4449065)))

(declare-fun c!1378153 () Bool)

(assert (=> b!7453889 (= c!1378153 (is-EmptyLang!19508 lt!2621019))))

(declare-fun b!7453890 () Bool)

(declare-fun res!2989859 () Bool)

(assert (=> b!7453890 (=> res!2989859 e!4449067)))

(assert (=> b!7453890 (= res!2989859 (not (isEmpty!41107 (tail!14864 s!13591))))))

(declare-fun b!7453891 () Bool)

(declare-fun res!2989863 () Bool)

(assert (=> b!7453891 (=> (not res!2989863) (not e!4449063))))

(assert (=> b!7453891 (= res!2989863 (not call!684737))))

(declare-fun b!7453892 () Bool)

(assert (=> b!7453892 (= e!4449067 (not (= (head!15295 s!13591) (c!1378119 lt!2621019))))))

(assert (= (and d!2297214 c!1378151) b!7453883))

(assert (= (and d!2297214 (not c!1378151)) b!7453882))

(assert (= (and d!2297214 c!1378152) b!7453888))

(assert (= (and d!2297214 (not c!1378152)) b!7453889))

(assert (= (and b!7453889 c!1378153) b!7453887))

(assert (= (and b!7453889 (not c!1378153)) b!7453884))

(assert (= (and b!7453884 (not res!2989862)) b!7453880))

(assert (= (and b!7453880 res!2989860) b!7453891))

(assert (= (and b!7453891 res!2989863) b!7453881))

(assert (= (and b!7453881 res!2989858) b!7453885))

(assert (= (and b!7453880 (not res!2989857)) b!7453879))

(assert (= (and b!7453879 res!2989861) b!7453886))

(assert (= (and b!7453886 (not res!2989856)) b!7453890))

(assert (= (and b!7453890 (not res!2989859)) b!7453892))

(assert (= (or b!7453888 b!7453886 b!7453891) bm!684732))

(assert (=> b!7453892 m!8058616))

(assert (=> d!2297214 m!8058610))

(assert (=> d!2297214 m!8058602))

(assert (=> b!7453885 m!8058616))

(assert (=> b!7453890 m!8058620))

(assert (=> b!7453890 m!8058620))

(assert (=> b!7453890 m!8058622))

(assert (=> b!7453881 m!8058620))

(assert (=> b!7453881 m!8058620))

(assert (=> b!7453881 m!8058622))

(assert (=> bm!684732 m!8058610))

(assert (=> b!7453882 m!8058616))

(assert (=> b!7453882 m!8058616))

(declare-fun m!8058630 () Bool)

(assert (=> b!7453882 m!8058630))

(assert (=> b!7453882 m!8058620))

(assert (=> b!7453882 m!8058630))

(assert (=> b!7453882 m!8058620))

(declare-fun m!8058632 () Bool)

(assert (=> b!7453882 m!8058632))

(declare-fun m!8058634 () Bool)

(assert (=> b!7453883 m!8058634))

(assert (=> b!7453666 d!2297214))

(declare-fun bs!1927433 () Bool)

(declare-fun b!7453900 () Bool)

(assert (= bs!1927433 (and b!7453900 b!7453655)))

(declare-fun lambda!461114 () Int)

(assert (=> bs!1927433 (not (= lambda!461114 lambda!461098))))

(assert (=> bs!1927433 (not (= lambda!461114 lambda!461099))))

(declare-fun bs!1927434 () Bool)

(assert (= bs!1927434 (and b!7453900 b!7453791)))

(assert (=> bs!1927434 (= (and (= (reg!19837 lt!2621019) (reg!19837 lt!2621027)) (= lt!2621019 lt!2621027)) (= lambda!461114 lambda!461112))))

(declare-fun bs!1927435 () Bool)

(assert (= bs!1927435 (and b!7453900 b!7453793)))

(assert (=> bs!1927435 (not (= lambda!461114 lambda!461113))))

(assert (=> b!7453900 true))

(assert (=> b!7453900 true))

(declare-fun bs!1927436 () Bool)

(declare-fun b!7453902 () Bool)

(assert (= bs!1927436 (and b!7453902 b!7453791)))

(declare-fun lambda!461115 () Int)

(assert (=> bs!1927436 (not (= lambda!461115 lambda!461112))))

(declare-fun bs!1927437 () Bool)

(assert (= bs!1927437 (and b!7453902 b!7453793)))

(assert (=> bs!1927437 (= (and (= (regOne!39528 lt!2621019) (regOne!39528 lt!2621027)) (= (regTwo!39528 lt!2621019) (regTwo!39528 lt!2621027))) (= lambda!461115 lambda!461113))))

(declare-fun bs!1927438 () Bool)

(assert (= bs!1927438 (and b!7453902 b!7453655)))

(assert (=> bs!1927438 (not (= lambda!461115 lambda!461098))))

(assert (=> bs!1927438 (= (and (= (regOne!39528 lt!2621019) lt!2621012) (= (regTwo!39528 lt!2621019) rTail!78)) (= lambda!461115 lambda!461099))))

(declare-fun bs!1927439 () Bool)

(assert (= bs!1927439 (and b!7453902 b!7453900)))

(assert (=> bs!1927439 (not (= lambda!461115 lambda!461114))))

(assert (=> b!7453902 true))

(assert (=> b!7453902 true))

(declare-fun b!7453893 () Bool)

(declare-fun res!2989864 () Bool)

(declare-fun e!4449074 () Bool)

(assert (=> b!7453893 (=> res!2989864 e!4449074)))

(declare-fun call!684739 () Bool)

(assert (=> b!7453893 (= res!2989864 call!684739)))

(declare-fun e!4449072 () Bool)

(assert (=> b!7453893 (= e!4449072 e!4449074)))

(declare-fun b!7453894 () Bool)

(declare-fun e!4449073 () Bool)

(declare-fun e!4449070 () Bool)

(assert (=> b!7453894 (= e!4449073 e!4449070)))

(declare-fun res!2989865 () Bool)

(assert (=> b!7453894 (= res!2989865 (matchRSpec!4187 (regOne!39529 lt!2621019) s!13591))))

(assert (=> b!7453894 (=> res!2989865 e!4449070)))

(declare-fun b!7453896 () Bool)

(assert (=> b!7453896 (= e!4449073 e!4449072)))

(declare-fun c!1378154 () Bool)

(assert (=> b!7453896 (= c!1378154 (is-Star!19508 lt!2621019))))

(declare-fun b!7453897 () Bool)

(declare-fun e!4449069 () Bool)

(assert (=> b!7453897 (= e!4449069 (= s!13591 (Cons!72100 (c!1378119 lt!2621019) Nil!72100)))))

(declare-fun bm!684733 () Bool)

(assert (=> bm!684733 (= call!684739 (isEmpty!41107 s!13591))))

(declare-fun b!7453898 () Bool)

(declare-fun e!4449075 () Bool)

(declare-fun e!4449071 () Bool)

(assert (=> b!7453898 (= e!4449075 e!4449071)))

(declare-fun res!2989866 () Bool)

(assert (=> b!7453898 (= res!2989866 (not (is-EmptyLang!19508 lt!2621019)))))

(assert (=> b!7453898 (=> (not res!2989866) (not e!4449071))))

(declare-fun call!684738 () Bool)

(declare-fun bm!684734 () Bool)

(assert (=> bm!684734 (= call!684738 (Exists!4129 (ite c!1378154 lambda!461114 lambda!461115)))))

(declare-fun b!7453899 () Bool)

(declare-fun c!1378155 () Bool)

(assert (=> b!7453899 (= c!1378155 (is-ElementMatch!19508 lt!2621019))))

(assert (=> b!7453899 (= e!4449071 e!4449069)))

(assert (=> b!7453900 (= e!4449074 call!684738)))

(declare-fun b!7453901 () Bool)

(assert (=> b!7453901 (= e!4449070 (matchRSpec!4187 (regTwo!39529 lt!2621019) s!13591))))

(declare-fun b!7453895 () Bool)

(declare-fun c!1378156 () Bool)

(assert (=> b!7453895 (= c!1378156 (is-Union!19508 lt!2621019))))

(assert (=> b!7453895 (= e!4449069 e!4449073)))

(declare-fun d!2297216 () Bool)

(declare-fun c!1378157 () Bool)

(assert (=> d!2297216 (= c!1378157 (is-EmptyExpr!19508 lt!2621019))))

(assert (=> d!2297216 (= (matchRSpec!4187 lt!2621019 s!13591) e!4449075)))

(assert (=> b!7453902 (= e!4449072 call!684738)))

(declare-fun b!7453903 () Bool)

(assert (=> b!7453903 (= e!4449075 call!684739)))

(assert (= (and d!2297216 c!1378157) b!7453903))

(assert (= (and d!2297216 (not c!1378157)) b!7453898))

(assert (= (and b!7453898 res!2989866) b!7453899))

(assert (= (and b!7453899 c!1378155) b!7453897))

(assert (= (and b!7453899 (not c!1378155)) b!7453895))

(assert (= (and b!7453895 c!1378156) b!7453894))

(assert (= (and b!7453895 (not c!1378156)) b!7453896))

(assert (= (and b!7453894 (not res!2989865)) b!7453901))

(assert (= (and b!7453896 c!1378154) b!7453893))

(assert (= (and b!7453896 (not c!1378154)) b!7453902))

(assert (= (and b!7453893 (not res!2989864)) b!7453900))

(assert (= (or b!7453900 b!7453902) bm!684734))

(assert (= (or b!7453903 b!7453893) bm!684733))

(declare-fun m!8058650 () Bool)

(assert (=> b!7453894 m!8058650))

(assert (=> bm!684733 m!8058610))

(declare-fun m!8058652 () Bool)

(assert (=> bm!684734 m!8058652))

(declare-fun m!8058654 () Bool)

(assert (=> b!7453901 m!8058654))

(assert (=> b!7453666 d!2297216))

(declare-fun d!2297220 () Bool)

(assert (=> d!2297220 (= (matchR!9272 lt!2621027 s!13591) (matchRSpec!4187 lt!2621027 s!13591))))

(declare-fun lt!2621103 () Unit!165851)

(assert (=> d!2297220 (= lt!2621103 (choose!57612 lt!2621027 s!13591))))

(assert (=> d!2297220 (validRegex!10022 lt!2621027)))

(assert (=> d!2297220 (= (mainMatchTheorem!4181 lt!2621027 s!13591) lt!2621103)))

(declare-fun bs!1927440 () Bool)

(assert (= bs!1927440 d!2297220))

(assert (=> bs!1927440 m!8058502))

(assert (=> bs!1927440 m!8058500))

(declare-fun m!8058656 () Bool)

(assert (=> bs!1927440 m!8058656))

(assert (=> bs!1927440 m!8058618))

(assert (=> b!7453666 d!2297220))

(declare-fun b!7453904 () Bool)

(declare-fun e!4449076 () Bool)

(declare-fun e!4449080 () Bool)

(assert (=> b!7453904 (= e!4449076 e!4449080)))

(declare-fun res!2989872 () Bool)

(assert (=> b!7453904 (=> (not res!2989872) (not e!4449080))))

(declare-fun lt!2621104 () Bool)

(assert (=> b!7453904 (= res!2989872 (not lt!2621104))))

(declare-fun b!7453905 () Bool)

(declare-fun res!2989868 () Bool)

(assert (=> b!7453905 (=> res!2989868 e!4449076)))

(declare-fun e!4449077 () Bool)

(assert (=> b!7453905 (= res!2989868 e!4449077)))

(declare-fun res!2989871 () Bool)

(assert (=> b!7453905 (=> (not res!2989871) (not e!4449077))))

(assert (=> b!7453905 (= res!2989871 lt!2621104)))

(declare-fun b!7453906 () Bool)

(declare-fun res!2989869 () Bool)

(assert (=> b!7453906 (=> (not res!2989869) (not e!4449077))))

(assert (=> b!7453906 (= res!2989869 (isEmpty!41107 (tail!14864 (_2!37538 lt!2621028))))))

(declare-fun b!7453907 () Bool)

(declare-fun e!4449078 () Bool)

(assert (=> b!7453907 (= e!4449078 (matchR!9272 (derivativeStep!5555 rTail!78 (head!15295 (_2!37538 lt!2621028))) (tail!14864 (_2!37538 lt!2621028))))))

(declare-fun b!7453908 () Bool)

(assert (=> b!7453908 (= e!4449078 (nullable!8496 rTail!78))))

(declare-fun b!7453909 () Bool)

(declare-fun res!2989873 () Bool)

(assert (=> b!7453909 (=> res!2989873 e!4449076)))

(assert (=> b!7453909 (= res!2989873 (not (is-ElementMatch!19508 rTail!78)))))

(declare-fun e!4449079 () Bool)

(assert (=> b!7453909 (= e!4449079 e!4449076)))

(declare-fun b!7453910 () Bool)

(assert (=> b!7453910 (= e!4449077 (= (head!15295 (_2!37538 lt!2621028)) (c!1378119 rTail!78)))))

(declare-fun d!2297222 () Bool)

(declare-fun e!4449082 () Bool)

(assert (=> d!2297222 e!4449082))

(declare-fun c!1378159 () Bool)

(assert (=> d!2297222 (= c!1378159 (is-EmptyExpr!19508 rTail!78))))

(assert (=> d!2297222 (= lt!2621104 e!4449078)))

(declare-fun c!1378158 () Bool)

(assert (=> d!2297222 (= c!1378158 (isEmpty!41107 (_2!37538 lt!2621028)))))

(assert (=> d!2297222 (validRegex!10022 rTail!78)))

(assert (=> d!2297222 (= (matchR!9272 rTail!78 (_2!37538 lt!2621028)) lt!2621104)))

(declare-fun b!7453911 () Bool)

(declare-fun e!4449081 () Bool)

(assert (=> b!7453911 (= e!4449080 e!4449081)))

(declare-fun res!2989867 () Bool)

(assert (=> b!7453911 (=> res!2989867 e!4449081)))

(declare-fun call!684740 () Bool)

(assert (=> b!7453911 (= res!2989867 call!684740)))

(declare-fun bm!684735 () Bool)

(assert (=> bm!684735 (= call!684740 (isEmpty!41107 (_2!37538 lt!2621028)))))

(declare-fun b!7453912 () Bool)

(assert (=> b!7453912 (= e!4449079 (not lt!2621104))))

(declare-fun b!7453913 () Bool)

(assert (=> b!7453913 (= e!4449082 (= lt!2621104 call!684740))))

(declare-fun b!7453914 () Bool)

(assert (=> b!7453914 (= e!4449082 e!4449079)))

(declare-fun c!1378160 () Bool)

(assert (=> b!7453914 (= c!1378160 (is-EmptyLang!19508 rTail!78))))

(declare-fun b!7453915 () Bool)

(declare-fun res!2989870 () Bool)

(assert (=> b!7453915 (=> res!2989870 e!4449081)))

(assert (=> b!7453915 (= res!2989870 (not (isEmpty!41107 (tail!14864 (_2!37538 lt!2621028)))))))

(declare-fun b!7453916 () Bool)

(declare-fun res!2989874 () Bool)

(assert (=> b!7453916 (=> (not res!2989874) (not e!4449077))))

(assert (=> b!7453916 (= res!2989874 (not call!684740))))

(declare-fun b!7453917 () Bool)

(assert (=> b!7453917 (= e!4449081 (not (= (head!15295 (_2!37538 lt!2621028)) (c!1378119 rTail!78))))))

(assert (= (and d!2297222 c!1378158) b!7453908))

(assert (= (and d!2297222 (not c!1378158)) b!7453907))

(assert (= (and d!2297222 c!1378159) b!7453913))

(assert (= (and d!2297222 (not c!1378159)) b!7453914))

(assert (= (and b!7453914 c!1378160) b!7453912))

(assert (= (and b!7453914 (not c!1378160)) b!7453909))

(assert (= (and b!7453909 (not res!2989873)) b!7453905))

(assert (= (and b!7453905 res!2989871) b!7453916))

(assert (= (and b!7453916 res!2989874) b!7453906))

(assert (= (and b!7453906 res!2989869) b!7453910))

(assert (= (and b!7453905 (not res!2989868)) b!7453904))

(assert (= (and b!7453904 res!2989872) b!7453911))

(assert (= (and b!7453911 (not res!2989867)) b!7453915))

(assert (= (and b!7453915 (not res!2989870)) b!7453917))

(assert (= (or b!7453913 b!7453911 b!7453916) bm!684735))

(declare-fun m!8058658 () Bool)

(assert (=> b!7453917 m!8058658))

(declare-fun m!8058660 () Bool)

(assert (=> d!2297222 m!8058660))

(assert (=> d!2297222 m!8058460))

(assert (=> b!7453910 m!8058658))

(declare-fun m!8058662 () Bool)

(assert (=> b!7453915 m!8058662))

(assert (=> b!7453915 m!8058662))

(declare-fun m!8058664 () Bool)

(assert (=> b!7453915 m!8058664))

(assert (=> b!7453906 m!8058662))

(assert (=> b!7453906 m!8058662))

(assert (=> b!7453906 m!8058664))

(assert (=> bm!684735 m!8058660))

(assert (=> b!7453907 m!8058658))

(assert (=> b!7453907 m!8058658))

(declare-fun m!8058666 () Bool)

(assert (=> b!7453907 m!8058666))

(assert (=> b!7453907 m!8058662))

(assert (=> b!7453907 m!8058666))

(assert (=> b!7453907 m!8058662))

(declare-fun m!8058668 () Bool)

(assert (=> b!7453907 m!8058668))

(declare-fun m!8058670 () Bool)

(assert (=> b!7453908 m!8058670))

(assert (=> b!7453662 d!2297222))

(declare-fun bs!1927441 () Bool)

(declare-fun b!7453925 () Bool)

(assert (= bs!1927441 (and b!7453925 b!7453902)))

(declare-fun lambda!461116 () Int)

(assert (=> bs!1927441 (not (= lambda!461116 lambda!461115))))

(declare-fun bs!1927442 () Bool)

(assert (= bs!1927442 (and b!7453925 b!7453791)))

(assert (=> bs!1927442 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 r1!5845) (reg!19837 lt!2621027)) (= r1!5845 lt!2621027)) (= lambda!461116 lambda!461112))))

(declare-fun bs!1927443 () Bool)

(assert (= bs!1927443 (and b!7453925 b!7453793)))

(assert (=> bs!1927443 (not (= lambda!461116 lambda!461113))))

(declare-fun bs!1927444 () Bool)

(assert (= bs!1927444 (and b!7453925 b!7453655)))

(assert (=> bs!1927444 (not (= lambda!461116 lambda!461098))))

(assert (=> bs!1927444 (not (= lambda!461116 lambda!461099))))

(declare-fun bs!1927445 () Bool)

(assert (= bs!1927445 (and b!7453925 b!7453900)))

(assert (=> bs!1927445 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 r1!5845) (reg!19837 lt!2621019)) (= r1!5845 lt!2621019)) (= lambda!461116 lambda!461114))))

(assert (=> b!7453925 true))

(assert (=> b!7453925 true))

(declare-fun bs!1927446 () Bool)

(declare-fun b!7453927 () Bool)

(assert (= bs!1927446 (and b!7453927 b!7453902)))

(declare-fun lambda!461117 () Int)

(assert (=> bs!1927446 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r1!5845) (regOne!39528 lt!2621019)) (= (regTwo!39528 r1!5845) (regTwo!39528 lt!2621019))) (= lambda!461117 lambda!461115))))

(declare-fun bs!1927447 () Bool)

(assert (= bs!1927447 (and b!7453927 b!7453925)))

(assert (=> bs!1927447 (not (= lambda!461117 lambda!461116))))

(declare-fun bs!1927448 () Bool)

(assert (= bs!1927448 (and b!7453927 b!7453791)))

(assert (=> bs!1927448 (not (= lambda!461117 lambda!461112))))

(declare-fun bs!1927449 () Bool)

(assert (= bs!1927449 (and b!7453927 b!7453793)))

(assert (=> bs!1927449 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r1!5845) (regOne!39528 lt!2621027)) (= (regTwo!39528 r1!5845) (regTwo!39528 lt!2621027))) (= lambda!461117 lambda!461113))))

(declare-fun bs!1927450 () Bool)

(assert (= bs!1927450 (and b!7453927 b!7453655)))

(assert (=> bs!1927450 (not (= lambda!461117 lambda!461098))))

(assert (=> bs!1927450 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r1!5845) lt!2621012) (= (regTwo!39528 r1!5845) rTail!78)) (= lambda!461117 lambda!461099))))

(declare-fun bs!1927451 () Bool)

(assert (= bs!1927451 (and b!7453927 b!7453900)))

(assert (=> bs!1927451 (not (= lambda!461117 lambda!461114))))

(assert (=> b!7453927 true))

(assert (=> b!7453927 true))

(declare-fun b!7453918 () Bool)

(declare-fun res!2989875 () Bool)

(declare-fun e!4449088 () Bool)

(assert (=> b!7453918 (=> res!2989875 e!4449088)))

(declare-fun call!684742 () Bool)

(assert (=> b!7453918 (= res!2989875 call!684742)))

(declare-fun e!4449086 () Bool)

(assert (=> b!7453918 (= e!4449086 e!4449088)))

(declare-fun b!7453919 () Bool)

(declare-fun e!4449087 () Bool)

(declare-fun e!4449084 () Bool)

(assert (=> b!7453919 (= e!4449087 e!4449084)))

(declare-fun res!2989876 () Bool)

(assert (=> b!7453919 (= res!2989876 (matchRSpec!4187 (regOne!39529 r1!5845) (_1!37538 lt!2621028)))))

(assert (=> b!7453919 (=> res!2989876 e!4449084)))

(declare-fun b!7453921 () Bool)

(assert (=> b!7453921 (= e!4449087 e!4449086)))

(declare-fun c!1378161 () Bool)

(assert (=> b!7453921 (= c!1378161 (is-Star!19508 r1!5845))))

(declare-fun b!7453922 () Bool)

(declare-fun e!4449083 () Bool)

(assert (=> b!7453922 (= e!4449083 (= (_1!37538 lt!2621028) (Cons!72100 (c!1378119 r1!5845) Nil!72100)))))

(declare-fun bm!684736 () Bool)

(assert (=> bm!684736 (= call!684742 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7453923 () Bool)

(declare-fun e!4449089 () Bool)

(declare-fun e!4449085 () Bool)

(assert (=> b!7453923 (= e!4449089 e!4449085)))

(declare-fun res!2989877 () Bool)

(assert (=> b!7453923 (= res!2989877 (not (is-EmptyLang!19508 r1!5845)))))

(assert (=> b!7453923 (=> (not res!2989877) (not e!4449085))))

(declare-fun bm!684737 () Bool)

(declare-fun call!684741 () Bool)

(assert (=> bm!684737 (= call!684741 (Exists!4129 (ite c!1378161 lambda!461116 lambda!461117)))))

(declare-fun b!7453924 () Bool)

(declare-fun c!1378162 () Bool)

(assert (=> b!7453924 (= c!1378162 (is-ElementMatch!19508 r1!5845))))

(assert (=> b!7453924 (= e!4449085 e!4449083)))

(assert (=> b!7453925 (= e!4449088 call!684741)))

(declare-fun b!7453926 () Bool)

(assert (=> b!7453926 (= e!4449084 (matchRSpec!4187 (regTwo!39529 r1!5845) (_1!37538 lt!2621028)))))

(declare-fun b!7453920 () Bool)

(declare-fun c!1378163 () Bool)

(assert (=> b!7453920 (= c!1378163 (is-Union!19508 r1!5845))))

(assert (=> b!7453920 (= e!4449083 e!4449087)))

(declare-fun d!2297224 () Bool)

(declare-fun c!1378164 () Bool)

(assert (=> d!2297224 (= c!1378164 (is-EmptyExpr!19508 r1!5845))))

(assert (=> d!2297224 (= (matchRSpec!4187 r1!5845 (_1!37538 lt!2621028)) e!4449089)))

(assert (=> b!7453927 (= e!4449086 call!684741)))

(declare-fun b!7453928 () Bool)

(assert (=> b!7453928 (= e!4449089 call!684742)))

(assert (= (and d!2297224 c!1378164) b!7453928))

(assert (= (and d!2297224 (not c!1378164)) b!7453923))

(assert (= (and b!7453923 res!2989877) b!7453924))

(assert (= (and b!7453924 c!1378162) b!7453922))

(assert (= (and b!7453924 (not c!1378162)) b!7453920))

(assert (= (and b!7453920 c!1378163) b!7453919))

(assert (= (and b!7453920 (not c!1378163)) b!7453921))

(assert (= (and b!7453919 (not res!2989876)) b!7453926))

(assert (= (and b!7453921 c!1378161) b!7453918))

(assert (= (and b!7453921 (not c!1378161)) b!7453927))

(assert (= (and b!7453918 (not res!2989875)) b!7453925))

(assert (= (or b!7453925 b!7453927) bm!684737))

(assert (= (or b!7453928 b!7453918) bm!684736))

(declare-fun m!8058672 () Bool)

(assert (=> b!7453919 m!8058672))

(declare-fun m!8058674 () Bool)

(assert (=> bm!684736 m!8058674))

(declare-fun m!8058676 () Bool)

(assert (=> bm!684737 m!8058676))

(declare-fun m!8058678 () Bool)

(assert (=> b!7453926 m!8058678))

(assert (=> b!7453657 d!2297224))

(declare-fun d!2297226 () Bool)

(assert (=> d!2297226 (= (matchR!9272 rTail!78 (_2!37538 lt!2621028)) (matchRSpec!4187 rTail!78 (_2!37538 lt!2621028)))))

(declare-fun lt!2621105 () Unit!165851)

(assert (=> d!2297226 (= lt!2621105 (choose!57612 rTail!78 (_2!37538 lt!2621028)))))

(assert (=> d!2297226 (validRegex!10022 rTail!78)))

(assert (=> d!2297226 (= (mainMatchTheorem!4181 rTail!78 (_2!37538 lt!2621028)) lt!2621105)))

(declare-fun bs!1927452 () Bool)

(assert (= bs!1927452 d!2297226))

(assert (=> bs!1927452 m!8058508))

(assert (=> bs!1927452 m!8058520))

(declare-fun m!8058680 () Bool)

(assert (=> bs!1927452 m!8058680))

(assert (=> bs!1927452 m!8058460))

(assert (=> b!7453657 d!2297226))

(declare-fun bs!1927453 () Bool)

(declare-fun b!7453936 () Bool)

(assert (= bs!1927453 (and b!7453936 b!7453902)))

(declare-fun lambda!461118 () Int)

(assert (=> bs!1927453 (not (= lambda!461118 lambda!461115))))

(declare-fun bs!1927454 () Bool)

(assert (= bs!1927454 (and b!7453936 b!7453925)))

(assert (=> bs!1927454 (= (and (= (reg!19837 r2!5783) (reg!19837 r1!5845)) (= r2!5783 r1!5845)) (= lambda!461118 lambda!461116))))

(declare-fun bs!1927455 () Bool)

(assert (= bs!1927455 (and b!7453936 b!7453927)))

(assert (=> bs!1927455 (not (= lambda!461118 lambda!461117))))

(declare-fun bs!1927456 () Bool)

(assert (= bs!1927456 (and b!7453936 b!7453791)))

(assert (=> bs!1927456 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 r2!5783) (reg!19837 lt!2621027)) (= r2!5783 lt!2621027)) (= lambda!461118 lambda!461112))))

(declare-fun bs!1927457 () Bool)

(assert (= bs!1927457 (and b!7453936 b!7453793)))

(assert (=> bs!1927457 (not (= lambda!461118 lambda!461113))))

(declare-fun bs!1927458 () Bool)

(assert (= bs!1927458 (and b!7453936 b!7453655)))

(assert (=> bs!1927458 (not (= lambda!461118 lambda!461098))))

(assert (=> bs!1927458 (not (= lambda!461118 lambda!461099))))

(declare-fun bs!1927459 () Bool)

(assert (= bs!1927459 (and b!7453936 b!7453900)))

(assert (=> bs!1927459 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 r2!5783) (reg!19837 lt!2621019)) (= r2!5783 lt!2621019)) (= lambda!461118 lambda!461114))))

(assert (=> b!7453936 true))

(assert (=> b!7453936 true))

(declare-fun bs!1927460 () Bool)

(declare-fun b!7453938 () Bool)

(assert (= bs!1927460 (and b!7453938 b!7453902)))

(declare-fun lambda!461119 () Int)

(assert (=> bs!1927460 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r2!5783) (regOne!39528 lt!2621019)) (= (regTwo!39528 r2!5783) (regTwo!39528 lt!2621019))) (= lambda!461119 lambda!461115))))

(declare-fun bs!1927461 () Bool)

(assert (= bs!1927461 (and b!7453938 b!7453925)))

(assert (=> bs!1927461 (not (= lambda!461119 lambda!461116))))

(declare-fun bs!1927462 () Bool)

(assert (= bs!1927462 (and b!7453938 b!7453936)))

(assert (=> bs!1927462 (not (= lambda!461119 lambda!461118))))

(declare-fun bs!1927463 () Bool)

(assert (= bs!1927463 (and b!7453938 b!7453927)))

(assert (=> bs!1927463 (= (and (= (regOne!39528 r2!5783) (regOne!39528 r1!5845)) (= (regTwo!39528 r2!5783) (regTwo!39528 r1!5845))) (= lambda!461119 lambda!461117))))

(declare-fun bs!1927464 () Bool)

(assert (= bs!1927464 (and b!7453938 b!7453791)))

(assert (=> bs!1927464 (not (= lambda!461119 lambda!461112))))

(declare-fun bs!1927465 () Bool)

(assert (= bs!1927465 (and b!7453938 b!7453793)))

(assert (=> bs!1927465 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r2!5783) (regOne!39528 lt!2621027)) (= (regTwo!39528 r2!5783) (regTwo!39528 lt!2621027))) (= lambda!461119 lambda!461113))))

(declare-fun bs!1927466 () Bool)

(assert (= bs!1927466 (and b!7453938 b!7453655)))

(assert (=> bs!1927466 (not (= lambda!461119 lambda!461098))))

(assert (=> bs!1927466 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 r2!5783) lt!2621012) (= (regTwo!39528 r2!5783) rTail!78)) (= lambda!461119 lambda!461099))))

(declare-fun bs!1927467 () Bool)

(assert (= bs!1927467 (and b!7453938 b!7453900)))

(assert (=> bs!1927467 (not (= lambda!461119 lambda!461114))))

(assert (=> b!7453938 true))

(assert (=> b!7453938 true))

(declare-fun b!7453929 () Bool)

(declare-fun res!2989878 () Bool)

(declare-fun e!4449095 () Bool)

(assert (=> b!7453929 (=> res!2989878 e!4449095)))

(declare-fun call!684744 () Bool)

(assert (=> b!7453929 (= res!2989878 call!684744)))

(declare-fun e!4449093 () Bool)

(assert (=> b!7453929 (= e!4449093 e!4449095)))

(declare-fun b!7453930 () Bool)

(declare-fun e!4449094 () Bool)

(declare-fun e!4449091 () Bool)

(assert (=> b!7453930 (= e!4449094 e!4449091)))

(declare-fun res!2989879 () Bool)

(assert (=> b!7453930 (= res!2989879 (matchRSpec!4187 (regOne!39529 r2!5783) (_1!37538 lt!2621028)))))

(assert (=> b!7453930 (=> res!2989879 e!4449091)))

(declare-fun b!7453932 () Bool)

(assert (=> b!7453932 (= e!4449094 e!4449093)))

(declare-fun c!1378165 () Bool)

(assert (=> b!7453932 (= c!1378165 (is-Star!19508 r2!5783))))

(declare-fun b!7453933 () Bool)

(declare-fun e!4449090 () Bool)

(assert (=> b!7453933 (= e!4449090 (= (_1!37538 lt!2621028) (Cons!72100 (c!1378119 r2!5783) Nil!72100)))))

(declare-fun bm!684738 () Bool)

(assert (=> bm!684738 (= call!684744 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7453934 () Bool)

(declare-fun e!4449096 () Bool)

(declare-fun e!4449092 () Bool)

(assert (=> b!7453934 (= e!4449096 e!4449092)))

(declare-fun res!2989880 () Bool)

(assert (=> b!7453934 (= res!2989880 (not (is-EmptyLang!19508 r2!5783)))))

(assert (=> b!7453934 (=> (not res!2989880) (not e!4449092))))

(declare-fun call!684743 () Bool)

(declare-fun bm!684739 () Bool)

(assert (=> bm!684739 (= call!684743 (Exists!4129 (ite c!1378165 lambda!461118 lambda!461119)))))

(declare-fun b!7453935 () Bool)

(declare-fun c!1378166 () Bool)

(assert (=> b!7453935 (= c!1378166 (is-ElementMatch!19508 r2!5783))))

(assert (=> b!7453935 (= e!4449092 e!4449090)))

(assert (=> b!7453936 (= e!4449095 call!684743)))

(declare-fun b!7453937 () Bool)

(assert (=> b!7453937 (= e!4449091 (matchRSpec!4187 (regTwo!39529 r2!5783) (_1!37538 lt!2621028)))))

(declare-fun b!7453931 () Bool)

(declare-fun c!1378167 () Bool)

(assert (=> b!7453931 (= c!1378167 (is-Union!19508 r2!5783))))

(assert (=> b!7453931 (= e!4449090 e!4449094)))

(declare-fun d!2297228 () Bool)

(declare-fun c!1378168 () Bool)

(assert (=> d!2297228 (= c!1378168 (is-EmptyExpr!19508 r2!5783))))

(assert (=> d!2297228 (= (matchRSpec!4187 r2!5783 (_1!37538 lt!2621028)) e!4449096)))

(assert (=> b!7453938 (= e!4449093 call!684743)))

(declare-fun b!7453939 () Bool)

(assert (=> b!7453939 (= e!4449096 call!684744)))

(assert (= (and d!2297228 c!1378168) b!7453939))

(assert (= (and d!2297228 (not c!1378168)) b!7453934))

(assert (= (and b!7453934 res!2989880) b!7453935))

(assert (= (and b!7453935 c!1378166) b!7453933))

(assert (= (and b!7453935 (not c!1378166)) b!7453931))

(assert (= (and b!7453931 c!1378167) b!7453930))

(assert (= (and b!7453931 (not c!1378167)) b!7453932))

(assert (= (and b!7453930 (not res!2989879)) b!7453937))

(assert (= (and b!7453932 c!1378165) b!7453929))

(assert (= (and b!7453932 (not c!1378165)) b!7453938))

(assert (= (and b!7453929 (not res!2989878)) b!7453936))

(assert (= (or b!7453936 b!7453938) bm!684739))

(assert (= (or b!7453939 b!7453929) bm!684738))

(declare-fun m!8058682 () Bool)

(assert (=> b!7453930 m!8058682))

(assert (=> bm!684738 m!8058674))

(declare-fun m!8058684 () Bool)

(assert (=> bm!684739 m!8058684))

(declare-fun m!8058686 () Bool)

(assert (=> b!7453937 m!8058686))

(assert (=> b!7453657 d!2297228))

(declare-fun bs!1927468 () Bool)

(declare-fun b!7453951 () Bool)

(assert (= bs!1927468 (and b!7453951 b!7453902)))

(declare-fun lambda!461120 () Int)

(assert (=> bs!1927468 (not (= lambda!461120 lambda!461115))))

(declare-fun bs!1927469 () Bool)

(assert (= bs!1927469 (and b!7453951 b!7453925)))

(assert (=> bs!1927469 (= (and (= (_2!37538 lt!2621028) (_1!37538 lt!2621028)) (= (reg!19837 rTail!78) (reg!19837 r1!5845)) (= rTail!78 r1!5845)) (= lambda!461120 lambda!461116))))

(declare-fun bs!1927470 () Bool)

(assert (= bs!1927470 (and b!7453951 b!7453936)))

(assert (=> bs!1927470 (= (and (= (_2!37538 lt!2621028) (_1!37538 lt!2621028)) (= (reg!19837 rTail!78) (reg!19837 r2!5783)) (= rTail!78 r2!5783)) (= lambda!461120 lambda!461118))))

(declare-fun bs!1927471 () Bool)

(assert (= bs!1927471 (and b!7453951 b!7453927)))

(assert (=> bs!1927471 (not (= lambda!461120 lambda!461117))))

(declare-fun bs!1927472 () Bool)

(assert (= bs!1927472 (and b!7453951 b!7453791)))

(assert (=> bs!1927472 (= (and (= (_2!37538 lt!2621028) s!13591) (= (reg!19837 rTail!78) (reg!19837 lt!2621027)) (= rTail!78 lt!2621027)) (= lambda!461120 lambda!461112))))

(declare-fun bs!1927473 () Bool)

(assert (= bs!1927473 (and b!7453951 b!7453793)))

(assert (=> bs!1927473 (not (= lambda!461120 lambda!461113))))

(declare-fun bs!1927474 () Bool)

(assert (= bs!1927474 (and b!7453951 b!7453655)))

(assert (=> bs!1927474 (not (= lambda!461120 lambda!461098))))

(assert (=> bs!1927474 (not (= lambda!461120 lambda!461099))))

(declare-fun bs!1927475 () Bool)

(assert (= bs!1927475 (and b!7453951 b!7453900)))

(assert (=> bs!1927475 (= (and (= (_2!37538 lt!2621028) s!13591) (= (reg!19837 rTail!78) (reg!19837 lt!2621019)) (= rTail!78 lt!2621019)) (= lambda!461120 lambda!461114))))

(declare-fun bs!1927476 () Bool)

(assert (= bs!1927476 (and b!7453951 b!7453938)))

(assert (=> bs!1927476 (not (= lambda!461120 lambda!461119))))

(assert (=> b!7453951 true))

(assert (=> b!7453951 true))

(declare-fun bs!1927477 () Bool)

(declare-fun b!7453953 () Bool)

(assert (= bs!1927477 (and b!7453953 b!7453902)))

(declare-fun lambda!461121 () Int)

(assert (=> bs!1927477 (= (and (= (_2!37538 lt!2621028) s!13591) (= (regOne!39528 rTail!78) (regOne!39528 lt!2621019)) (= (regTwo!39528 rTail!78) (regTwo!39528 lt!2621019))) (= lambda!461121 lambda!461115))))

(declare-fun bs!1927478 () Bool)

(assert (= bs!1927478 (and b!7453953 b!7453925)))

(assert (=> bs!1927478 (not (= lambda!461121 lambda!461116))))

(declare-fun bs!1927479 () Bool)

(assert (= bs!1927479 (and b!7453953 b!7453951)))

(assert (=> bs!1927479 (not (= lambda!461121 lambda!461120))))

(declare-fun bs!1927480 () Bool)

(assert (= bs!1927480 (and b!7453953 b!7453936)))

(assert (=> bs!1927480 (not (= lambda!461121 lambda!461118))))

(declare-fun bs!1927481 () Bool)

(assert (= bs!1927481 (and b!7453953 b!7453927)))

(assert (=> bs!1927481 (= (and (= (_2!37538 lt!2621028) (_1!37538 lt!2621028)) (= (regOne!39528 rTail!78) (regOne!39528 r1!5845)) (= (regTwo!39528 rTail!78) (regTwo!39528 r1!5845))) (= lambda!461121 lambda!461117))))

(declare-fun bs!1927482 () Bool)

(assert (= bs!1927482 (and b!7453953 b!7453791)))

(assert (=> bs!1927482 (not (= lambda!461121 lambda!461112))))

(declare-fun bs!1927483 () Bool)

(assert (= bs!1927483 (and b!7453953 b!7453793)))

(assert (=> bs!1927483 (= (and (= (_2!37538 lt!2621028) s!13591) (= (regOne!39528 rTail!78) (regOne!39528 lt!2621027)) (= (regTwo!39528 rTail!78) (regTwo!39528 lt!2621027))) (= lambda!461121 lambda!461113))))

(declare-fun bs!1927484 () Bool)

(assert (= bs!1927484 (and b!7453953 b!7453655)))

(assert (=> bs!1927484 (not (= lambda!461121 lambda!461098))))

(assert (=> bs!1927484 (= (and (= (_2!37538 lt!2621028) s!13591) (= (regOne!39528 rTail!78) lt!2621012) (= (regTwo!39528 rTail!78) rTail!78)) (= lambda!461121 lambda!461099))))

(declare-fun bs!1927485 () Bool)

(assert (= bs!1927485 (and b!7453953 b!7453900)))

(assert (=> bs!1927485 (not (= lambda!461121 lambda!461114))))

(declare-fun bs!1927486 () Bool)

(assert (= bs!1927486 (and b!7453953 b!7453938)))

(assert (=> bs!1927486 (= (and (= (_2!37538 lt!2621028) (_1!37538 lt!2621028)) (= (regOne!39528 rTail!78) (regOne!39528 r2!5783)) (= (regTwo!39528 rTail!78) (regTwo!39528 r2!5783))) (= lambda!461121 lambda!461119))))

(assert (=> b!7453953 true))

(assert (=> b!7453953 true))

(declare-fun b!7453944 () Bool)

(declare-fun res!2989881 () Bool)

(declare-fun e!4449104 () Bool)

(assert (=> b!7453944 (=> res!2989881 e!4449104)))

(declare-fun call!684746 () Bool)

(assert (=> b!7453944 (= res!2989881 call!684746)))

(declare-fun e!4449102 () Bool)

(assert (=> b!7453944 (= e!4449102 e!4449104)))

(declare-fun b!7453945 () Bool)

(declare-fun e!4449103 () Bool)

(declare-fun e!4449100 () Bool)

(assert (=> b!7453945 (= e!4449103 e!4449100)))

(declare-fun res!2989882 () Bool)

(assert (=> b!7453945 (= res!2989882 (matchRSpec!4187 (regOne!39529 rTail!78) (_2!37538 lt!2621028)))))

(assert (=> b!7453945 (=> res!2989882 e!4449100)))

(declare-fun b!7453947 () Bool)

(assert (=> b!7453947 (= e!4449103 e!4449102)))

(declare-fun c!1378171 () Bool)

(assert (=> b!7453947 (= c!1378171 (is-Star!19508 rTail!78))))

(declare-fun b!7453948 () Bool)

(declare-fun e!4449099 () Bool)

(assert (=> b!7453948 (= e!4449099 (= (_2!37538 lt!2621028) (Cons!72100 (c!1378119 rTail!78) Nil!72100)))))

(declare-fun bm!684740 () Bool)

(assert (=> bm!684740 (= call!684746 (isEmpty!41107 (_2!37538 lt!2621028)))))

(declare-fun b!7453949 () Bool)

(declare-fun e!4449105 () Bool)

(declare-fun e!4449101 () Bool)

(assert (=> b!7453949 (= e!4449105 e!4449101)))

(declare-fun res!2989883 () Bool)

(assert (=> b!7453949 (= res!2989883 (not (is-EmptyLang!19508 rTail!78)))))

(assert (=> b!7453949 (=> (not res!2989883) (not e!4449101))))

(declare-fun call!684745 () Bool)

(declare-fun bm!684741 () Bool)

(assert (=> bm!684741 (= call!684745 (Exists!4129 (ite c!1378171 lambda!461120 lambda!461121)))))

(declare-fun b!7453950 () Bool)

(declare-fun c!1378172 () Bool)

(assert (=> b!7453950 (= c!1378172 (is-ElementMatch!19508 rTail!78))))

(assert (=> b!7453950 (= e!4449101 e!4449099)))

(assert (=> b!7453951 (= e!4449104 call!684745)))

(declare-fun b!7453952 () Bool)

(assert (=> b!7453952 (= e!4449100 (matchRSpec!4187 (regTwo!39529 rTail!78) (_2!37538 lt!2621028)))))

(declare-fun b!7453946 () Bool)

(declare-fun c!1378173 () Bool)

(assert (=> b!7453946 (= c!1378173 (is-Union!19508 rTail!78))))

(assert (=> b!7453946 (= e!4449099 e!4449103)))

(declare-fun d!2297230 () Bool)

(declare-fun c!1378174 () Bool)

(assert (=> d!2297230 (= c!1378174 (is-EmptyExpr!19508 rTail!78))))

(assert (=> d!2297230 (= (matchRSpec!4187 rTail!78 (_2!37538 lt!2621028)) e!4449105)))

(assert (=> b!7453953 (= e!4449102 call!684745)))

(declare-fun b!7453954 () Bool)

(assert (=> b!7453954 (= e!4449105 call!684746)))

(assert (= (and d!2297230 c!1378174) b!7453954))

(assert (= (and d!2297230 (not c!1378174)) b!7453949))

(assert (= (and b!7453949 res!2989883) b!7453950))

(assert (= (and b!7453950 c!1378172) b!7453948))

(assert (= (and b!7453950 (not c!1378172)) b!7453946))

(assert (= (and b!7453946 c!1378173) b!7453945))

(assert (= (and b!7453946 (not c!1378173)) b!7453947))

(assert (= (and b!7453945 (not res!2989882)) b!7453952))

(assert (= (and b!7453947 c!1378171) b!7453944))

(assert (= (and b!7453947 (not c!1378171)) b!7453953))

(assert (= (and b!7453944 (not res!2989881)) b!7453951))

(assert (= (or b!7453951 b!7453953) bm!684741))

(assert (= (or b!7453954 b!7453944) bm!684740))

(declare-fun m!8058688 () Bool)

(assert (=> b!7453945 m!8058688))

(assert (=> bm!684740 m!8058660))

(declare-fun m!8058690 () Bool)

(assert (=> bm!684741 m!8058690))

(declare-fun m!8058692 () Bool)

(assert (=> b!7453952 m!8058692))

(assert (=> b!7453657 d!2297230))

(declare-fun d!2297232 () Bool)

(assert (=> d!2297232 (= (matchR!9272 r2!5783 (_1!37538 lt!2621028)) (matchRSpec!4187 r2!5783 (_1!37538 lt!2621028)))))

(declare-fun lt!2621106 () Unit!165851)

(assert (=> d!2297232 (= lt!2621106 (choose!57612 r2!5783 (_1!37538 lt!2621028)))))

(assert (=> d!2297232 (validRegex!10022 r2!5783)))

(assert (=> d!2297232 (= (mainMatchTheorem!4181 r2!5783 (_1!37538 lt!2621028)) lt!2621106)))

(declare-fun bs!1927487 () Bool)

(assert (= bs!1927487 d!2297232))

(assert (=> bs!1927487 m!8058526))

(assert (=> bs!1927487 m!8058528))

(declare-fun m!8058694 () Bool)

(assert (=> bs!1927487 m!8058694))

(assert (=> bs!1927487 m!8058462))

(assert (=> b!7453657 d!2297232))

(declare-fun b!7453979 () Bool)

(declare-fun e!4449120 () Bool)

(declare-fun e!4449124 () Bool)

(assert (=> b!7453979 (= e!4449120 e!4449124)))

(declare-fun res!2989901 () Bool)

(assert (=> b!7453979 (=> (not res!2989901) (not e!4449124))))

(declare-fun lt!2621107 () Bool)

(assert (=> b!7453979 (= res!2989901 (not lt!2621107))))

(declare-fun b!7453980 () Bool)

(declare-fun res!2989897 () Bool)

(assert (=> b!7453980 (=> res!2989897 e!4449120)))

(declare-fun e!4449121 () Bool)

(assert (=> b!7453980 (= res!2989897 e!4449121)))

(declare-fun res!2989900 () Bool)

(assert (=> b!7453980 (=> (not res!2989900) (not e!4449121))))

(assert (=> b!7453980 (= res!2989900 lt!2621107)))

(declare-fun b!7453981 () Bool)

(declare-fun res!2989898 () Bool)

(assert (=> b!7453981 (=> (not res!2989898) (not e!4449121))))

(assert (=> b!7453981 (= res!2989898 (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7453982 () Bool)

(declare-fun e!4449122 () Bool)

(assert (=> b!7453982 (= e!4449122 (matchR!9272 (derivativeStep!5555 r2!5783 (head!15295 (_1!37538 lt!2621028))) (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7453983 () Bool)

(assert (=> b!7453983 (= e!4449122 (nullable!8496 r2!5783))))

(declare-fun b!7453984 () Bool)

(declare-fun res!2989902 () Bool)

(assert (=> b!7453984 (=> res!2989902 e!4449120)))

(assert (=> b!7453984 (= res!2989902 (not (is-ElementMatch!19508 r2!5783)))))

(declare-fun e!4449123 () Bool)

(assert (=> b!7453984 (= e!4449123 e!4449120)))

(declare-fun b!7453985 () Bool)

(assert (=> b!7453985 (= e!4449121 (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 r2!5783)))))

(declare-fun d!2297234 () Bool)

(declare-fun e!4449126 () Bool)

(assert (=> d!2297234 e!4449126))

(declare-fun c!1378182 () Bool)

(assert (=> d!2297234 (= c!1378182 (is-EmptyExpr!19508 r2!5783))))

(assert (=> d!2297234 (= lt!2621107 e!4449122)))

(declare-fun c!1378181 () Bool)

(assert (=> d!2297234 (= c!1378181 (isEmpty!41107 (_1!37538 lt!2621028)))))

(assert (=> d!2297234 (validRegex!10022 r2!5783)))

(assert (=> d!2297234 (= (matchR!9272 r2!5783 (_1!37538 lt!2621028)) lt!2621107)))

(declare-fun b!7453986 () Bool)

(declare-fun e!4449125 () Bool)

(assert (=> b!7453986 (= e!4449124 e!4449125)))

(declare-fun res!2989896 () Bool)

(assert (=> b!7453986 (=> res!2989896 e!4449125)))

(declare-fun call!684747 () Bool)

(assert (=> b!7453986 (= res!2989896 call!684747)))

(declare-fun bm!684742 () Bool)

(assert (=> bm!684742 (= call!684747 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7453987 () Bool)

(assert (=> b!7453987 (= e!4449123 (not lt!2621107))))

(declare-fun b!7453988 () Bool)

(assert (=> b!7453988 (= e!4449126 (= lt!2621107 call!684747))))

(declare-fun b!7453989 () Bool)

(assert (=> b!7453989 (= e!4449126 e!4449123)))

(declare-fun c!1378183 () Bool)

(assert (=> b!7453989 (= c!1378183 (is-EmptyLang!19508 r2!5783))))

(declare-fun b!7453990 () Bool)

(declare-fun res!2989899 () Bool)

(assert (=> b!7453990 (=> res!2989899 e!4449125)))

(assert (=> b!7453990 (= res!2989899 (not (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028)))))))

(declare-fun b!7453991 () Bool)

(declare-fun res!2989903 () Bool)

(assert (=> b!7453991 (=> (not res!2989903) (not e!4449121))))

(assert (=> b!7453991 (= res!2989903 (not call!684747))))

(declare-fun b!7453992 () Bool)

(assert (=> b!7453992 (= e!4449125 (not (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 r2!5783))))))

(assert (= (and d!2297234 c!1378181) b!7453983))

(assert (= (and d!2297234 (not c!1378181)) b!7453982))

(assert (= (and d!2297234 c!1378182) b!7453988))

(assert (= (and d!2297234 (not c!1378182)) b!7453989))

(assert (= (and b!7453989 c!1378183) b!7453987))

(assert (= (and b!7453989 (not c!1378183)) b!7453984))

(assert (= (and b!7453984 (not res!2989902)) b!7453980))

(assert (= (and b!7453980 res!2989900) b!7453991))

(assert (= (and b!7453991 res!2989903) b!7453981))

(assert (= (and b!7453981 res!2989898) b!7453985))

(assert (= (and b!7453980 (not res!2989897)) b!7453979))

(assert (= (and b!7453979 res!2989901) b!7453986))

(assert (= (and b!7453986 (not res!2989896)) b!7453990))

(assert (= (and b!7453990 (not res!2989899)) b!7453992))

(assert (= (or b!7453988 b!7453986 b!7453991) bm!684742))

(declare-fun m!8058696 () Bool)

(assert (=> b!7453992 m!8058696))

(assert (=> d!2297234 m!8058674))

(assert (=> d!2297234 m!8058462))

(assert (=> b!7453985 m!8058696))

(declare-fun m!8058698 () Bool)

(assert (=> b!7453990 m!8058698))

(assert (=> b!7453990 m!8058698))

(declare-fun m!8058700 () Bool)

(assert (=> b!7453990 m!8058700))

(assert (=> b!7453981 m!8058698))

(assert (=> b!7453981 m!8058698))

(assert (=> b!7453981 m!8058700))

(assert (=> bm!684742 m!8058674))

(assert (=> b!7453982 m!8058696))

(assert (=> b!7453982 m!8058696))

(declare-fun m!8058702 () Bool)

(assert (=> b!7453982 m!8058702))

(assert (=> b!7453982 m!8058698))

(assert (=> b!7453982 m!8058702))

(assert (=> b!7453982 m!8058698))

(declare-fun m!8058704 () Bool)

(assert (=> b!7453982 m!8058704))

(declare-fun m!8058706 () Bool)

(assert (=> b!7453983 m!8058706))

(assert (=> b!7453657 d!2297234))

(declare-fun bs!1927488 () Bool)

(declare-fun b!7454000 () Bool)

(assert (= bs!1927488 (and b!7454000 b!7453953)))

(declare-fun lambda!461124 () Int)

(assert (=> bs!1927488 (not (= lambda!461124 lambda!461121))))

(declare-fun bs!1927489 () Bool)

(assert (= bs!1927489 (and b!7454000 b!7453902)))

(assert (=> bs!1927489 (not (= lambda!461124 lambda!461115))))

(declare-fun bs!1927490 () Bool)

(assert (= bs!1927490 (and b!7454000 b!7453925)))

(assert (=> bs!1927490 (= (and (= (reg!19837 lt!2621012) (reg!19837 r1!5845)) (= lt!2621012 r1!5845)) (= lambda!461124 lambda!461116))))

(declare-fun bs!1927491 () Bool)

(assert (= bs!1927491 (and b!7454000 b!7453951)))

(assert (=> bs!1927491 (= (and (= (_1!37538 lt!2621028) (_2!37538 lt!2621028)) (= (reg!19837 lt!2621012) (reg!19837 rTail!78)) (= lt!2621012 rTail!78)) (= lambda!461124 lambda!461120))))

(declare-fun bs!1927492 () Bool)

(assert (= bs!1927492 (and b!7454000 b!7453936)))

(assert (=> bs!1927492 (= (and (= (reg!19837 lt!2621012) (reg!19837 r2!5783)) (= lt!2621012 r2!5783)) (= lambda!461124 lambda!461118))))

(declare-fun bs!1927493 () Bool)

(assert (= bs!1927493 (and b!7454000 b!7453927)))

(assert (=> bs!1927493 (not (= lambda!461124 lambda!461117))))

(declare-fun bs!1927494 () Bool)

(assert (= bs!1927494 (and b!7454000 b!7453791)))

(assert (=> bs!1927494 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 lt!2621012) (reg!19837 lt!2621027)) (= lt!2621012 lt!2621027)) (= lambda!461124 lambda!461112))))

(declare-fun bs!1927495 () Bool)

(assert (= bs!1927495 (and b!7454000 b!7453793)))

(assert (=> bs!1927495 (not (= lambda!461124 lambda!461113))))

(declare-fun bs!1927496 () Bool)

(assert (= bs!1927496 (and b!7454000 b!7453655)))

(assert (=> bs!1927496 (not (= lambda!461124 lambda!461098))))

(assert (=> bs!1927496 (not (= lambda!461124 lambda!461099))))

(declare-fun bs!1927497 () Bool)

(assert (= bs!1927497 (and b!7454000 b!7453900)))

(assert (=> bs!1927497 (= (and (= (_1!37538 lt!2621028) s!13591) (= (reg!19837 lt!2621012) (reg!19837 lt!2621019)) (= lt!2621012 lt!2621019)) (= lambda!461124 lambda!461114))))

(declare-fun bs!1927498 () Bool)

(assert (= bs!1927498 (and b!7454000 b!7453938)))

(assert (=> bs!1927498 (not (= lambda!461124 lambda!461119))))

(assert (=> b!7454000 true))

(assert (=> b!7454000 true))

(declare-fun bs!1927499 () Bool)

(declare-fun b!7454002 () Bool)

(assert (= bs!1927499 (and b!7454002 b!7453902)))

(declare-fun lambda!461125 () Int)

(assert (=> bs!1927499 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 lt!2621012) (regOne!39528 lt!2621019)) (= (regTwo!39528 lt!2621012) (regTwo!39528 lt!2621019))) (= lambda!461125 lambda!461115))))

(declare-fun bs!1927500 () Bool)

(assert (= bs!1927500 (and b!7454002 b!7453925)))

(assert (=> bs!1927500 (not (= lambda!461125 lambda!461116))))

(declare-fun bs!1927501 () Bool)

(assert (= bs!1927501 (and b!7454002 b!7453951)))

(assert (=> bs!1927501 (not (= lambda!461125 lambda!461120))))

(declare-fun bs!1927502 () Bool)

(assert (= bs!1927502 (and b!7454002 b!7453936)))

(assert (=> bs!1927502 (not (= lambda!461125 lambda!461118))))

(declare-fun bs!1927503 () Bool)

(assert (= bs!1927503 (and b!7454002 b!7453927)))

(assert (=> bs!1927503 (= (and (= (regOne!39528 lt!2621012) (regOne!39528 r1!5845)) (= (regTwo!39528 lt!2621012) (regTwo!39528 r1!5845))) (= lambda!461125 lambda!461117))))

(declare-fun bs!1927504 () Bool)

(assert (= bs!1927504 (and b!7454002 b!7453791)))

(assert (=> bs!1927504 (not (= lambda!461125 lambda!461112))))

(declare-fun bs!1927505 () Bool)

(assert (= bs!1927505 (and b!7454002 b!7453953)))

(assert (=> bs!1927505 (= (and (= (_1!37538 lt!2621028) (_2!37538 lt!2621028)) (= (regOne!39528 lt!2621012) (regOne!39528 rTail!78)) (= (regTwo!39528 lt!2621012) (regTwo!39528 rTail!78))) (= lambda!461125 lambda!461121))))

(declare-fun bs!1927506 () Bool)

(assert (= bs!1927506 (and b!7454002 b!7454000)))

(assert (=> bs!1927506 (not (= lambda!461125 lambda!461124))))

(declare-fun bs!1927507 () Bool)

(assert (= bs!1927507 (and b!7454002 b!7453793)))

(assert (=> bs!1927507 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 lt!2621012) (regOne!39528 lt!2621027)) (= (regTwo!39528 lt!2621012) (regTwo!39528 lt!2621027))) (= lambda!461125 lambda!461113))))

(declare-fun bs!1927508 () Bool)

(assert (= bs!1927508 (and b!7454002 b!7453655)))

(assert (=> bs!1927508 (not (= lambda!461125 lambda!461098))))

(assert (=> bs!1927508 (= (and (= (_1!37538 lt!2621028) s!13591) (= (regOne!39528 lt!2621012) lt!2621012) (= (regTwo!39528 lt!2621012) rTail!78)) (= lambda!461125 lambda!461099))))

(declare-fun bs!1927509 () Bool)

(assert (= bs!1927509 (and b!7454002 b!7453900)))

(assert (=> bs!1927509 (not (= lambda!461125 lambda!461114))))

(declare-fun bs!1927510 () Bool)

(assert (= bs!1927510 (and b!7454002 b!7453938)))

(assert (=> bs!1927510 (= (and (= (regOne!39528 lt!2621012) (regOne!39528 r2!5783)) (= (regTwo!39528 lt!2621012) (regTwo!39528 r2!5783))) (= lambda!461125 lambda!461119))))

(assert (=> b!7454002 true))

(assert (=> b!7454002 true))

(declare-fun b!7453993 () Bool)

(declare-fun res!2989904 () Bool)

(declare-fun e!4449132 () Bool)

(assert (=> b!7453993 (=> res!2989904 e!4449132)))

(declare-fun call!684749 () Bool)

(assert (=> b!7453993 (= res!2989904 call!684749)))

(declare-fun e!4449130 () Bool)

(assert (=> b!7453993 (= e!4449130 e!4449132)))

(declare-fun b!7453994 () Bool)

(declare-fun e!4449131 () Bool)

(declare-fun e!4449128 () Bool)

(assert (=> b!7453994 (= e!4449131 e!4449128)))

(declare-fun res!2989905 () Bool)

(assert (=> b!7453994 (= res!2989905 (matchRSpec!4187 (regOne!39529 lt!2621012) (_1!37538 lt!2621028)))))

(assert (=> b!7453994 (=> res!2989905 e!4449128)))

(declare-fun b!7453996 () Bool)

(assert (=> b!7453996 (= e!4449131 e!4449130)))

(declare-fun c!1378184 () Bool)

(assert (=> b!7453996 (= c!1378184 (is-Star!19508 lt!2621012))))

(declare-fun b!7453997 () Bool)

(declare-fun e!4449127 () Bool)

(assert (=> b!7453997 (= e!4449127 (= (_1!37538 lt!2621028) (Cons!72100 (c!1378119 lt!2621012) Nil!72100)))))

(declare-fun bm!684743 () Bool)

(assert (=> bm!684743 (= call!684749 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7453998 () Bool)

(declare-fun e!4449133 () Bool)

(declare-fun e!4449129 () Bool)

(assert (=> b!7453998 (= e!4449133 e!4449129)))

(declare-fun res!2989906 () Bool)

(assert (=> b!7453998 (= res!2989906 (not (is-EmptyLang!19508 lt!2621012)))))

(assert (=> b!7453998 (=> (not res!2989906) (not e!4449129))))

(declare-fun bm!684744 () Bool)

(declare-fun call!684748 () Bool)

(assert (=> bm!684744 (= call!684748 (Exists!4129 (ite c!1378184 lambda!461124 lambda!461125)))))

(declare-fun b!7453999 () Bool)

(declare-fun c!1378185 () Bool)

(assert (=> b!7453999 (= c!1378185 (is-ElementMatch!19508 lt!2621012))))

(assert (=> b!7453999 (= e!4449129 e!4449127)))

(assert (=> b!7454000 (= e!4449132 call!684748)))

(declare-fun b!7454001 () Bool)

(assert (=> b!7454001 (= e!4449128 (matchRSpec!4187 (regTwo!39529 lt!2621012) (_1!37538 lt!2621028)))))

(declare-fun b!7453995 () Bool)

(declare-fun c!1378186 () Bool)

(assert (=> b!7453995 (= c!1378186 (is-Union!19508 lt!2621012))))

(assert (=> b!7453995 (= e!4449127 e!4449131)))

(declare-fun d!2297236 () Bool)

(declare-fun c!1378187 () Bool)

(assert (=> d!2297236 (= c!1378187 (is-EmptyExpr!19508 lt!2621012))))

(assert (=> d!2297236 (= (matchRSpec!4187 lt!2621012 (_1!37538 lt!2621028)) e!4449133)))

(assert (=> b!7454002 (= e!4449130 call!684748)))

(declare-fun b!7454003 () Bool)

(assert (=> b!7454003 (= e!4449133 call!684749)))

(assert (= (and d!2297236 c!1378187) b!7454003))

(assert (= (and d!2297236 (not c!1378187)) b!7453998))

(assert (= (and b!7453998 res!2989906) b!7453999))

(assert (= (and b!7453999 c!1378185) b!7453997))

(assert (= (and b!7453999 (not c!1378185)) b!7453995))

(assert (= (and b!7453995 c!1378186) b!7453994))

(assert (= (and b!7453995 (not c!1378186)) b!7453996))

(assert (= (and b!7453994 (not res!2989905)) b!7454001))

(assert (= (and b!7453996 c!1378184) b!7453993))

(assert (= (and b!7453996 (not c!1378184)) b!7454002))

(assert (= (and b!7453993 (not res!2989904)) b!7454000))

(assert (= (or b!7454000 b!7454002) bm!684744))

(assert (= (or b!7454003 b!7453993) bm!684743))

(declare-fun m!8058708 () Bool)

(assert (=> b!7453994 m!8058708))

(assert (=> bm!684743 m!8058674))

(declare-fun m!8058710 () Bool)

(assert (=> bm!684744 m!8058710))

(declare-fun m!8058712 () Bool)

(assert (=> b!7454001 m!8058712))

(assert (=> b!7453657 d!2297236))

(declare-fun d!2297238 () Bool)

(assert (=> d!2297238 (= (matchR!9272 r1!5845 (_1!37538 lt!2621028)) (matchRSpec!4187 r1!5845 (_1!37538 lt!2621028)))))

(declare-fun lt!2621108 () Unit!165851)

(assert (=> d!2297238 (= lt!2621108 (choose!57612 r1!5845 (_1!37538 lt!2621028)))))

(assert (=> d!2297238 (validRegex!10022 r1!5845)))

(assert (=> d!2297238 (= (mainMatchTheorem!4181 r1!5845 (_1!37538 lt!2621028)) lt!2621108)))

(declare-fun bs!1927511 () Bool)

(assert (= bs!1927511 d!2297238))

(assert (=> bs!1927511 m!8058522))

(assert (=> bs!1927511 m!8058512))

(declare-fun m!8058714 () Bool)

(assert (=> bs!1927511 m!8058714))

(assert (=> bs!1927511 m!8058464))

(assert (=> b!7453657 d!2297238))

(declare-fun d!2297240 () Bool)

(assert (=> d!2297240 (= (matchR!9272 lt!2621012 (_1!37538 lt!2621028)) (matchRSpec!4187 lt!2621012 (_1!37538 lt!2621028)))))

(declare-fun lt!2621109 () Unit!165851)

(assert (=> d!2297240 (= lt!2621109 (choose!57612 lt!2621012 (_1!37538 lt!2621028)))))

(assert (=> d!2297240 (validRegex!10022 lt!2621012)))

(assert (=> d!2297240 (= (mainMatchTheorem!4181 lt!2621012 (_1!37538 lt!2621028)) lt!2621109)))

(declare-fun bs!1927512 () Bool)

(assert (= bs!1927512 d!2297240))

(assert (=> bs!1927512 m!8058466))

(assert (=> bs!1927512 m!8058514))

(declare-fun m!8058716 () Bool)

(assert (=> bs!1927512 m!8058716))

(declare-fun m!8058718 () Bool)

(assert (=> bs!1927512 m!8058718))

(assert (=> b!7453657 d!2297240))

(declare-fun b!7454008 () Bool)

(declare-fun e!4449136 () Bool)

(declare-fun e!4449140 () Bool)

(assert (=> b!7454008 (= e!4449136 e!4449140)))

(declare-fun res!2989916 () Bool)

(assert (=> b!7454008 (=> (not res!2989916) (not e!4449140))))

(declare-fun lt!2621110 () Bool)

(assert (=> b!7454008 (= res!2989916 (not lt!2621110))))

(declare-fun b!7454009 () Bool)

(declare-fun res!2989912 () Bool)

(assert (=> b!7454009 (=> res!2989912 e!4449136)))

(declare-fun e!4449137 () Bool)

(assert (=> b!7454009 (= res!2989912 e!4449137)))

(declare-fun res!2989915 () Bool)

(assert (=> b!7454009 (=> (not res!2989915) (not e!4449137))))

(assert (=> b!7454009 (= res!2989915 lt!2621110)))

(declare-fun b!7454010 () Bool)

(declare-fun res!2989913 () Bool)

(assert (=> b!7454010 (=> (not res!2989913) (not e!4449137))))

(assert (=> b!7454010 (= res!2989913 (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7454011 () Bool)

(declare-fun e!4449138 () Bool)

(assert (=> b!7454011 (= e!4449138 (matchR!9272 (derivativeStep!5555 r1!5845 (head!15295 (_1!37538 lt!2621028))) (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7454012 () Bool)

(assert (=> b!7454012 (= e!4449138 (nullable!8496 r1!5845))))

(declare-fun b!7454013 () Bool)

(declare-fun res!2989917 () Bool)

(assert (=> b!7454013 (=> res!2989917 e!4449136)))

(assert (=> b!7454013 (= res!2989917 (not (is-ElementMatch!19508 r1!5845)))))

(declare-fun e!4449139 () Bool)

(assert (=> b!7454013 (= e!4449139 e!4449136)))

(declare-fun b!7454014 () Bool)

(assert (=> b!7454014 (= e!4449137 (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 r1!5845)))))

(declare-fun d!2297242 () Bool)

(declare-fun e!4449142 () Bool)

(assert (=> d!2297242 e!4449142))

(declare-fun c!1378189 () Bool)

(assert (=> d!2297242 (= c!1378189 (is-EmptyExpr!19508 r1!5845))))

(assert (=> d!2297242 (= lt!2621110 e!4449138)))

(declare-fun c!1378188 () Bool)

(assert (=> d!2297242 (= c!1378188 (isEmpty!41107 (_1!37538 lt!2621028)))))

(assert (=> d!2297242 (validRegex!10022 r1!5845)))

(assert (=> d!2297242 (= (matchR!9272 r1!5845 (_1!37538 lt!2621028)) lt!2621110)))

(declare-fun b!7454015 () Bool)

(declare-fun e!4449141 () Bool)

(assert (=> b!7454015 (= e!4449140 e!4449141)))

(declare-fun res!2989911 () Bool)

(assert (=> b!7454015 (=> res!2989911 e!4449141)))

(declare-fun call!684750 () Bool)

(assert (=> b!7454015 (= res!2989911 call!684750)))

(declare-fun bm!684745 () Bool)

(assert (=> bm!684745 (= call!684750 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7454016 () Bool)

(assert (=> b!7454016 (= e!4449139 (not lt!2621110))))

(declare-fun b!7454017 () Bool)

(assert (=> b!7454017 (= e!4449142 (= lt!2621110 call!684750))))

(declare-fun b!7454018 () Bool)

(assert (=> b!7454018 (= e!4449142 e!4449139)))

(declare-fun c!1378190 () Bool)

(assert (=> b!7454018 (= c!1378190 (is-EmptyLang!19508 r1!5845))))

(declare-fun b!7454019 () Bool)

(declare-fun res!2989914 () Bool)

(assert (=> b!7454019 (=> res!2989914 e!4449141)))

(assert (=> b!7454019 (= res!2989914 (not (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028)))))))

(declare-fun b!7454020 () Bool)

(declare-fun res!2989918 () Bool)

(assert (=> b!7454020 (=> (not res!2989918) (not e!4449137))))

(assert (=> b!7454020 (= res!2989918 (not call!684750))))

(declare-fun b!7454021 () Bool)

(assert (=> b!7454021 (= e!4449141 (not (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 r1!5845))))))

(assert (= (and d!2297242 c!1378188) b!7454012))

(assert (= (and d!2297242 (not c!1378188)) b!7454011))

(assert (= (and d!2297242 c!1378189) b!7454017))

(assert (= (and d!2297242 (not c!1378189)) b!7454018))

(assert (= (and b!7454018 c!1378190) b!7454016))

(assert (= (and b!7454018 (not c!1378190)) b!7454013))

(assert (= (and b!7454013 (not res!2989917)) b!7454009))

(assert (= (and b!7454009 res!2989915) b!7454020))

(assert (= (and b!7454020 res!2989918) b!7454010))

(assert (= (and b!7454010 res!2989913) b!7454014))

(assert (= (and b!7454009 (not res!2989912)) b!7454008))

(assert (= (and b!7454008 res!2989916) b!7454015))

(assert (= (and b!7454015 (not res!2989911)) b!7454019))

(assert (= (and b!7454019 (not res!2989914)) b!7454021))

(assert (= (or b!7454017 b!7454015 b!7454020) bm!684745))

(assert (=> b!7454021 m!8058696))

(assert (=> d!2297242 m!8058674))

(assert (=> d!2297242 m!8058464))

(assert (=> b!7454014 m!8058696))

(assert (=> b!7454019 m!8058698))

(assert (=> b!7454019 m!8058698))

(assert (=> b!7454019 m!8058700))

(assert (=> b!7454010 m!8058698))

(assert (=> b!7454010 m!8058698))

(assert (=> b!7454010 m!8058700))

(assert (=> bm!684745 m!8058674))

(assert (=> b!7454011 m!8058696))

(assert (=> b!7454011 m!8058696))

(declare-fun m!8058720 () Bool)

(assert (=> b!7454011 m!8058720))

(assert (=> b!7454011 m!8058698))

(assert (=> b!7454011 m!8058720))

(assert (=> b!7454011 m!8058698))

(declare-fun m!8058722 () Bool)

(assert (=> b!7454011 m!8058722))

(declare-fun m!8058724 () Bool)

(assert (=> b!7454012 m!8058724))

(assert (=> b!7453657 d!2297242))

(declare-fun b!7454040 () Bool)

(declare-fun e!4449162 () Bool)

(declare-fun call!684761 () Bool)

(assert (=> b!7454040 (= e!4449162 call!684761)))

(declare-fun b!7454041 () Bool)

(declare-fun res!2989929 () Bool)

(declare-fun e!4449163 () Bool)

(assert (=> b!7454041 (=> (not res!2989929) (not e!4449163))))

(declare-fun call!684763 () Bool)

(assert (=> b!7454041 (= res!2989929 call!684763)))

(declare-fun e!4449160 () Bool)

(assert (=> b!7454041 (= e!4449160 e!4449163)))

(declare-fun d!2297244 () Bool)

(declare-fun res!2989931 () Bool)

(declare-fun e!4449158 () Bool)

(assert (=> d!2297244 (=> res!2989931 e!4449158)))

(assert (=> d!2297244 (= res!2989931 (is-ElementMatch!19508 r1!5845))))

(assert (=> d!2297244 (= (validRegex!10022 r1!5845) e!4449158)))

(declare-fun b!7454042 () Bool)

(declare-fun e!4449157 () Bool)

(assert (=> b!7454042 (= e!4449157 e!4449160)))

(declare-fun c!1378196 () Bool)

(assert (=> b!7454042 (= c!1378196 (is-Union!19508 r1!5845))))

(declare-fun bm!684756 () Bool)

(declare-fun call!684762 () Bool)

(assert (=> bm!684756 (= call!684763 call!684762)))

(declare-fun b!7454043 () Bool)

(declare-fun e!4449159 () Bool)

(assert (=> b!7454043 (= e!4449157 e!4449159)))

(declare-fun res!2989930 () Bool)

(assert (=> b!7454043 (= res!2989930 (not (nullable!8496 (reg!19837 r1!5845))))))

(assert (=> b!7454043 (=> (not res!2989930) (not e!4449159))))

(declare-fun b!7454044 () Bool)

(assert (=> b!7454044 (= e!4449159 call!684762)))

(declare-fun b!7454045 () Bool)

(assert (=> b!7454045 (= e!4449163 call!684761)))

(declare-fun b!7454046 () Bool)

(assert (=> b!7454046 (= e!4449158 e!4449157)))

(declare-fun c!1378195 () Bool)

(assert (=> b!7454046 (= c!1378195 (is-Star!19508 r1!5845))))

(declare-fun bm!684757 () Bool)

(assert (=> bm!684757 (= call!684761 (validRegex!10022 (ite c!1378196 (regTwo!39529 r1!5845) (regTwo!39528 r1!5845))))))

(declare-fun b!7454047 () Bool)

(declare-fun res!2989932 () Bool)

(declare-fun e!4449161 () Bool)

(assert (=> b!7454047 (=> res!2989932 e!4449161)))

(assert (=> b!7454047 (= res!2989932 (not (is-Concat!28353 r1!5845)))))

(assert (=> b!7454047 (= e!4449160 e!4449161)))

(declare-fun b!7454048 () Bool)

(assert (=> b!7454048 (= e!4449161 e!4449162)))

(declare-fun res!2989933 () Bool)

(assert (=> b!7454048 (=> (not res!2989933) (not e!4449162))))

(assert (=> b!7454048 (= res!2989933 call!684763)))

(declare-fun bm!684758 () Bool)

(assert (=> bm!684758 (= call!684762 (validRegex!10022 (ite c!1378195 (reg!19837 r1!5845) (ite c!1378196 (regOne!39529 r1!5845) (regOne!39528 r1!5845)))))))

(assert (= (and d!2297244 (not res!2989931)) b!7454046))

(assert (= (and b!7454046 c!1378195) b!7454043))

(assert (= (and b!7454046 (not c!1378195)) b!7454042))

(assert (= (and b!7454043 res!2989930) b!7454044))

(assert (= (and b!7454042 c!1378196) b!7454041))

(assert (= (and b!7454042 (not c!1378196)) b!7454047))

(assert (= (and b!7454041 res!2989929) b!7454045))

(assert (= (and b!7454047 (not res!2989932)) b!7454048))

(assert (= (and b!7454048 res!2989933) b!7454040))

(assert (= (or b!7454045 b!7454040) bm!684757))

(assert (= (or b!7454041 b!7454048) bm!684756))

(assert (= (or b!7454044 bm!684756) bm!684758))

(declare-fun m!8058726 () Bool)

(assert (=> b!7454043 m!8058726))

(declare-fun m!8058728 () Bool)

(assert (=> bm!684757 m!8058728))

(declare-fun m!8058730 () Bool)

(assert (=> bm!684758 m!8058730))

(assert (=> start!723508 d!2297244))

(declare-fun b!7454049 () Bool)

(declare-fun e!4449169 () Bool)

(declare-fun call!684764 () Bool)

(assert (=> b!7454049 (= e!4449169 call!684764)))

(declare-fun b!7454050 () Bool)

(declare-fun res!2989934 () Bool)

(declare-fun e!4449170 () Bool)

(assert (=> b!7454050 (=> (not res!2989934) (not e!4449170))))

(declare-fun call!684766 () Bool)

(assert (=> b!7454050 (= res!2989934 call!684766)))

(declare-fun e!4449167 () Bool)

(assert (=> b!7454050 (= e!4449167 e!4449170)))

(declare-fun d!2297246 () Bool)

(declare-fun res!2989936 () Bool)

(declare-fun e!4449165 () Bool)

(assert (=> d!2297246 (=> res!2989936 e!4449165)))

(assert (=> d!2297246 (= res!2989936 (is-ElementMatch!19508 r2!5783))))

(assert (=> d!2297246 (= (validRegex!10022 r2!5783) e!4449165)))

(declare-fun b!7454051 () Bool)

(declare-fun e!4449164 () Bool)

(assert (=> b!7454051 (= e!4449164 e!4449167)))

(declare-fun c!1378198 () Bool)

(assert (=> b!7454051 (= c!1378198 (is-Union!19508 r2!5783))))

(declare-fun bm!684759 () Bool)

(declare-fun call!684765 () Bool)

(assert (=> bm!684759 (= call!684766 call!684765)))

(declare-fun b!7454052 () Bool)

(declare-fun e!4449166 () Bool)

(assert (=> b!7454052 (= e!4449164 e!4449166)))

(declare-fun res!2989935 () Bool)

(assert (=> b!7454052 (= res!2989935 (not (nullable!8496 (reg!19837 r2!5783))))))

(assert (=> b!7454052 (=> (not res!2989935) (not e!4449166))))

(declare-fun b!7454053 () Bool)

(assert (=> b!7454053 (= e!4449166 call!684765)))

(declare-fun b!7454054 () Bool)

(assert (=> b!7454054 (= e!4449170 call!684764)))

(declare-fun b!7454055 () Bool)

(assert (=> b!7454055 (= e!4449165 e!4449164)))

(declare-fun c!1378197 () Bool)

(assert (=> b!7454055 (= c!1378197 (is-Star!19508 r2!5783))))

(declare-fun bm!684760 () Bool)

(assert (=> bm!684760 (= call!684764 (validRegex!10022 (ite c!1378198 (regTwo!39529 r2!5783) (regTwo!39528 r2!5783))))))

(declare-fun b!7454056 () Bool)

(declare-fun res!2989937 () Bool)

(declare-fun e!4449168 () Bool)

(assert (=> b!7454056 (=> res!2989937 e!4449168)))

(assert (=> b!7454056 (= res!2989937 (not (is-Concat!28353 r2!5783)))))

(assert (=> b!7454056 (= e!4449167 e!4449168)))

(declare-fun b!7454057 () Bool)

(assert (=> b!7454057 (= e!4449168 e!4449169)))

(declare-fun res!2989938 () Bool)

(assert (=> b!7454057 (=> (not res!2989938) (not e!4449169))))

(assert (=> b!7454057 (= res!2989938 call!684766)))

(declare-fun bm!684761 () Bool)

(assert (=> bm!684761 (= call!684765 (validRegex!10022 (ite c!1378197 (reg!19837 r2!5783) (ite c!1378198 (regOne!39529 r2!5783) (regOne!39528 r2!5783)))))))

(assert (= (and d!2297246 (not res!2989936)) b!7454055))

(assert (= (and b!7454055 c!1378197) b!7454052))

(assert (= (and b!7454055 (not c!1378197)) b!7454051))

(assert (= (and b!7454052 res!2989935) b!7454053))

(assert (= (and b!7454051 c!1378198) b!7454050))

(assert (= (and b!7454051 (not c!1378198)) b!7454056))

(assert (= (and b!7454050 res!2989934) b!7454054))

(assert (= (and b!7454056 (not res!2989937)) b!7454057))

(assert (= (and b!7454057 res!2989938) b!7454049))

(assert (= (or b!7454054 b!7454049) bm!684760))

(assert (= (or b!7454050 b!7454057) bm!684759))

(assert (= (or b!7454053 bm!684759) bm!684761))

(declare-fun m!8058732 () Bool)

(assert (=> b!7454052 m!8058732))

(declare-fun m!8058734 () Bool)

(assert (=> bm!684760 m!8058734))

(declare-fun m!8058736 () Bool)

(assert (=> bm!684761 m!8058736))

(assert (=> b!7453668 d!2297246))

(declare-fun b!7454058 () Bool)

(declare-fun e!4449176 () Bool)

(declare-fun call!684767 () Bool)

(assert (=> b!7454058 (= e!4449176 call!684767)))

(declare-fun b!7454059 () Bool)

(declare-fun res!2989939 () Bool)

(declare-fun e!4449177 () Bool)

(assert (=> b!7454059 (=> (not res!2989939) (not e!4449177))))

(declare-fun call!684769 () Bool)

(assert (=> b!7454059 (= res!2989939 call!684769)))

(declare-fun e!4449174 () Bool)

(assert (=> b!7454059 (= e!4449174 e!4449177)))

(declare-fun d!2297248 () Bool)

(declare-fun res!2989941 () Bool)

(declare-fun e!4449172 () Bool)

(assert (=> d!2297248 (=> res!2989941 e!4449172)))

(assert (=> d!2297248 (= res!2989941 (is-ElementMatch!19508 rTail!78))))

(assert (=> d!2297248 (= (validRegex!10022 rTail!78) e!4449172)))

(declare-fun b!7454060 () Bool)

(declare-fun e!4449171 () Bool)

(assert (=> b!7454060 (= e!4449171 e!4449174)))

(declare-fun c!1378200 () Bool)

(assert (=> b!7454060 (= c!1378200 (is-Union!19508 rTail!78))))

(declare-fun bm!684762 () Bool)

(declare-fun call!684768 () Bool)

(assert (=> bm!684762 (= call!684769 call!684768)))

(declare-fun b!7454061 () Bool)

(declare-fun e!4449173 () Bool)

(assert (=> b!7454061 (= e!4449171 e!4449173)))

(declare-fun res!2989940 () Bool)

(assert (=> b!7454061 (= res!2989940 (not (nullable!8496 (reg!19837 rTail!78))))))

(assert (=> b!7454061 (=> (not res!2989940) (not e!4449173))))

(declare-fun b!7454062 () Bool)

(assert (=> b!7454062 (= e!4449173 call!684768)))

(declare-fun b!7454063 () Bool)

(assert (=> b!7454063 (= e!4449177 call!684767)))

(declare-fun b!7454064 () Bool)

(assert (=> b!7454064 (= e!4449172 e!4449171)))

(declare-fun c!1378199 () Bool)

(assert (=> b!7454064 (= c!1378199 (is-Star!19508 rTail!78))))

(declare-fun bm!684763 () Bool)

(assert (=> bm!684763 (= call!684767 (validRegex!10022 (ite c!1378200 (regTwo!39529 rTail!78) (regTwo!39528 rTail!78))))))

(declare-fun b!7454065 () Bool)

(declare-fun res!2989942 () Bool)

(declare-fun e!4449175 () Bool)

(assert (=> b!7454065 (=> res!2989942 e!4449175)))

(assert (=> b!7454065 (= res!2989942 (not (is-Concat!28353 rTail!78)))))

(assert (=> b!7454065 (= e!4449174 e!4449175)))

(declare-fun b!7454066 () Bool)

(assert (=> b!7454066 (= e!4449175 e!4449176)))

(declare-fun res!2989943 () Bool)

(assert (=> b!7454066 (=> (not res!2989943) (not e!4449176))))

(assert (=> b!7454066 (= res!2989943 call!684769)))

(declare-fun bm!684764 () Bool)

(assert (=> bm!684764 (= call!684768 (validRegex!10022 (ite c!1378199 (reg!19837 rTail!78) (ite c!1378200 (regOne!39529 rTail!78) (regOne!39528 rTail!78)))))))

(assert (= (and d!2297248 (not res!2989941)) b!7454064))

(assert (= (and b!7454064 c!1378199) b!7454061))

(assert (= (and b!7454064 (not c!1378199)) b!7454060))

(assert (= (and b!7454061 res!2989940) b!7454062))

(assert (= (and b!7454060 c!1378200) b!7454059))

(assert (= (and b!7454060 (not c!1378200)) b!7454065))

(assert (= (and b!7454059 res!2989939) b!7454063))

(assert (= (and b!7454065 (not res!2989942)) b!7454066))

(assert (= (and b!7454066 res!2989943) b!7454058))

(assert (= (or b!7454063 b!7454058) bm!684763))

(assert (= (or b!7454059 b!7454066) bm!684762))

(assert (= (or b!7454062 bm!684762) bm!684764))

(declare-fun m!8058738 () Bool)

(assert (=> b!7454061 m!8058738))

(declare-fun m!8058740 () Bool)

(assert (=> bm!684763 m!8058740))

(declare-fun m!8058742 () Bool)

(assert (=> bm!684764 m!8058742))

(assert (=> b!7453653 d!2297248))

(declare-fun b!7454067 () Bool)

(declare-fun e!4449178 () Bool)

(declare-fun e!4449182 () Bool)

(assert (=> b!7454067 (= e!4449178 e!4449182)))

(declare-fun res!2989949 () Bool)

(assert (=> b!7454067 (=> (not res!2989949) (not e!4449182))))

(declare-fun lt!2621111 () Bool)

(assert (=> b!7454067 (= res!2989949 (not lt!2621111))))

(declare-fun b!7454068 () Bool)

(declare-fun res!2989945 () Bool)

(assert (=> b!7454068 (=> res!2989945 e!4449178)))

(declare-fun e!4449179 () Bool)

(assert (=> b!7454068 (= res!2989945 e!4449179)))

(declare-fun res!2989948 () Bool)

(assert (=> b!7454068 (=> (not res!2989948) (not e!4449179))))

(assert (=> b!7454068 (= res!2989948 lt!2621111)))

(declare-fun b!7454069 () Bool)

(declare-fun res!2989946 () Bool)

(assert (=> b!7454069 (=> (not res!2989946) (not e!4449179))))

(assert (=> b!7454069 (= res!2989946 (isEmpty!41107 (tail!14864 s!13591)))))

(declare-fun b!7454070 () Bool)

(declare-fun e!4449180 () Bool)

(assert (=> b!7454070 (= e!4449180 (matchR!9272 (derivativeStep!5555 lt!2621021 (head!15295 s!13591)) (tail!14864 s!13591)))))

(declare-fun b!7454071 () Bool)

(assert (=> b!7454071 (= e!4449180 (nullable!8496 lt!2621021))))

(declare-fun b!7454072 () Bool)

(declare-fun res!2989950 () Bool)

(assert (=> b!7454072 (=> res!2989950 e!4449178)))

(assert (=> b!7454072 (= res!2989950 (not (is-ElementMatch!19508 lt!2621021)))))

(declare-fun e!4449181 () Bool)

(assert (=> b!7454072 (= e!4449181 e!4449178)))

(declare-fun b!7454073 () Bool)

(assert (=> b!7454073 (= e!4449179 (= (head!15295 s!13591) (c!1378119 lt!2621021)))))

(declare-fun d!2297250 () Bool)

(declare-fun e!4449184 () Bool)

(assert (=> d!2297250 e!4449184))

(declare-fun c!1378202 () Bool)

(assert (=> d!2297250 (= c!1378202 (is-EmptyExpr!19508 lt!2621021))))

(assert (=> d!2297250 (= lt!2621111 e!4449180)))

(declare-fun c!1378201 () Bool)

(assert (=> d!2297250 (= c!1378201 (isEmpty!41107 s!13591))))

(assert (=> d!2297250 (validRegex!10022 lt!2621021)))

(assert (=> d!2297250 (= (matchR!9272 lt!2621021 s!13591) lt!2621111)))

(declare-fun b!7454074 () Bool)

(declare-fun e!4449183 () Bool)

(assert (=> b!7454074 (= e!4449182 e!4449183)))

(declare-fun res!2989944 () Bool)

(assert (=> b!7454074 (=> res!2989944 e!4449183)))

(declare-fun call!684770 () Bool)

(assert (=> b!7454074 (= res!2989944 call!684770)))

(declare-fun bm!684765 () Bool)

(assert (=> bm!684765 (= call!684770 (isEmpty!41107 s!13591))))

(declare-fun b!7454075 () Bool)

(assert (=> b!7454075 (= e!4449181 (not lt!2621111))))

(declare-fun b!7454076 () Bool)

(assert (=> b!7454076 (= e!4449184 (= lt!2621111 call!684770))))

(declare-fun b!7454077 () Bool)

(assert (=> b!7454077 (= e!4449184 e!4449181)))

(declare-fun c!1378203 () Bool)

(assert (=> b!7454077 (= c!1378203 (is-EmptyLang!19508 lt!2621021))))

(declare-fun b!7454078 () Bool)

(declare-fun res!2989947 () Bool)

(assert (=> b!7454078 (=> res!2989947 e!4449183)))

(assert (=> b!7454078 (= res!2989947 (not (isEmpty!41107 (tail!14864 s!13591))))))

(declare-fun b!7454079 () Bool)

(declare-fun res!2989951 () Bool)

(assert (=> b!7454079 (=> (not res!2989951) (not e!4449179))))

(assert (=> b!7454079 (= res!2989951 (not call!684770))))

(declare-fun b!7454080 () Bool)

(assert (=> b!7454080 (= e!4449183 (not (= (head!15295 s!13591) (c!1378119 lt!2621021))))))

(assert (= (and d!2297250 c!1378201) b!7454071))

(assert (= (and d!2297250 (not c!1378201)) b!7454070))

(assert (= (and d!2297250 c!1378202) b!7454076))

(assert (= (and d!2297250 (not c!1378202)) b!7454077))

(assert (= (and b!7454077 c!1378203) b!7454075))

(assert (= (and b!7454077 (not c!1378203)) b!7454072))

(assert (= (and b!7454072 (not res!2989950)) b!7454068))

(assert (= (and b!7454068 res!2989948) b!7454079))

(assert (= (and b!7454079 res!2989951) b!7454069))

(assert (= (and b!7454069 res!2989946) b!7454073))

(assert (= (and b!7454068 (not res!2989945)) b!7454067))

(assert (= (and b!7454067 res!2989949) b!7454074))

(assert (= (and b!7454074 (not res!2989944)) b!7454078))

(assert (= (and b!7454078 (not res!2989947)) b!7454080))

(assert (= (or b!7454076 b!7454074 b!7454079) bm!684765))

(assert (=> b!7454080 m!8058616))

(assert (=> d!2297250 m!8058610))

(declare-fun m!8058744 () Bool)

(assert (=> d!2297250 m!8058744))

(assert (=> b!7454073 m!8058616))

(assert (=> b!7454078 m!8058620))

(assert (=> b!7454078 m!8058620))

(assert (=> b!7454078 m!8058622))

(assert (=> b!7454069 m!8058620))

(assert (=> b!7454069 m!8058620))

(assert (=> b!7454069 m!8058622))

(assert (=> bm!684765 m!8058610))

(assert (=> b!7454070 m!8058616))

(assert (=> b!7454070 m!8058616))

(declare-fun m!8058746 () Bool)

(assert (=> b!7454070 m!8058746))

(assert (=> b!7454070 m!8058620))

(assert (=> b!7454070 m!8058746))

(assert (=> b!7454070 m!8058620))

(declare-fun m!8058748 () Bool)

(assert (=> b!7454070 m!8058748))

(declare-fun m!8058750 () Bool)

(assert (=> b!7454071 m!8058750))

(assert (=> b!7453664 d!2297250))

(declare-fun bs!1927513 () Bool)

(declare-fun b!7454088 () Bool)

(assert (= bs!1927513 (and b!7454088 b!7453925)))

(declare-fun lambda!461128 () Int)

(assert (=> bs!1927513 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621016) (reg!19837 r1!5845)) (= lt!2621016 r1!5845)) (= lambda!461128 lambda!461116))))

(declare-fun bs!1927514 () Bool)

(assert (= bs!1927514 (and b!7454088 b!7453951)))

(assert (=> bs!1927514 (= (and (= s!13591 (_2!37538 lt!2621028)) (= (reg!19837 lt!2621016) (reg!19837 rTail!78)) (= lt!2621016 rTail!78)) (= lambda!461128 lambda!461120))))

(declare-fun bs!1927515 () Bool)

(assert (= bs!1927515 (and b!7454088 b!7453936)))

(assert (=> bs!1927515 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621016) (reg!19837 r2!5783)) (= lt!2621016 r2!5783)) (= lambda!461128 lambda!461118))))

(declare-fun bs!1927516 () Bool)

(assert (= bs!1927516 (and b!7454088 b!7453927)))

(assert (=> bs!1927516 (not (= lambda!461128 lambda!461117))))

(declare-fun bs!1927517 () Bool)

(assert (= bs!1927517 (and b!7454088 b!7453791)))

(assert (=> bs!1927517 (= (and (= (reg!19837 lt!2621016) (reg!19837 lt!2621027)) (= lt!2621016 lt!2621027)) (= lambda!461128 lambda!461112))))

(declare-fun bs!1927518 () Bool)

(assert (= bs!1927518 (and b!7454088 b!7453953)))

(assert (=> bs!1927518 (not (= lambda!461128 lambda!461121))))

(declare-fun bs!1927519 () Bool)

(assert (= bs!1927519 (and b!7454088 b!7454000)))

(assert (=> bs!1927519 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621016) (reg!19837 lt!2621012)) (= lt!2621016 lt!2621012)) (= lambda!461128 lambda!461124))))

(declare-fun bs!1927520 () Bool)

(assert (= bs!1927520 (and b!7454088 b!7453902)))

(assert (=> bs!1927520 (not (= lambda!461128 lambda!461115))))

(declare-fun bs!1927521 () Bool)

(assert (= bs!1927521 (and b!7454088 b!7454002)))

(assert (=> bs!1927521 (not (= lambda!461128 lambda!461125))))

(declare-fun bs!1927522 () Bool)

(assert (= bs!1927522 (and b!7454088 b!7453793)))

(assert (=> bs!1927522 (not (= lambda!461128 lambda!461113))))

(declare-fun bs!1927523 () Bool)

(assert (= bs!1927523 (and b!7454088 b!7453655)))

(assert (=> bs!1927523 (not (= lambda!461128 lambda!461098))))

(assert (=> bs!1927523 (not (= lambda!461128 lambda!461099))))

(declare-fun bs!1927525 () Bool)

(assert (= bs!1927525 (and b!7454088 b!7453900)))

(assert (=> bs!1927525 (= (and (= (reg!19837 lt!2621016) (reg!19837 lt!2621019)) (= lt!2621016 lt!2621019)) (= lambda!461128 lambda!461114))))

(declare-fun bs!1927526 () Bool)

(assert (= bs!1927526 (and b!7454088 b!7453938)))

(assert (=> bs!1927526 (not (= lambda!461128 lambda!461119))))

(assert (=> b!7454088 true))

(assert (=> b!7454088 true))

(declare-fun bs!1927527 () Bool)

(declare-fun b!7454090 () Bool)

(assert (= bs!1927527 (and b!7454090 b!7453925)))

(declare-fun lambda!461130 () Int)

(assert (=> bs!1927527 (not (= lambda!461130 lambda!461116))))

(declare-fun bs!1927528 () Bool)

(assert (= bs!1927528 (and b!7454090 b!7453951)))

(assert (=> bs!1927528 (not (= lambda!461130 lambda!461120))))

(declare-fun bs!1927529 () Bool)

(assert (= bs!1927529 (and b!7454090 b!7454088)))

(assert (=> bs!1927529 (not (= lambda!461130 lambda!461128))))

(declare-fun bs!1927530 () Bool)

(assert (= bs!1927530 (and b!7454090 b!7453936)))

(assert (=> bs!1927530 (not (= lambda!461130 lambda!461118))))

(declare-fun bs!1927531 () Bool)

(assert (= bs!1927531 (and b!7454090 b!7453927)))

(assert (=> bs!1927531 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621016) (regOne!39528 r1!5845)) (= (regTwo!39528 lt!2621016) (regTwo!39528 r1!5845))) (= lambda!461130 lambda!461117))))

(declare-fun bs!1927532 () Bool)

(assert (= bs!1927532 (and b!7454090 b!7453791)))

(assert (=> bs!1927532 (not (= lambda!461130 lambda!461112))))

(declare-fun bs!1927533 () Bool)

(assert (= bs!1927533 (and b!7454090 b!7453953)))

(assert (=> bs!1927533 (= (and (= s!13591 (_2!37538 lt!2621028)) (= (regOne!39528 lt!2621016) (regOne!39528 rTail!78)) (= (regTwo!39528 lt!2621016) (regTwo!39528 rTail!78))) (= lambda!461130 lambda!461121))))

(declare-fun bs!1927534 () Bool)

(assert (= bs!1927534 (and b!7454090 b!7454000)))

(assert (=> bs!1927534 (not (= lambda!461130 lambda!461124))))

(declare-fun bs!1927535 () Bool)

(assert (= bs!1927535 (and b!7454090 b!7453902)))

(assert (=> bs!1927535 (= (and (= (regOne!39528 lt!2621016) (regOne!39528 lt!2621019)) (= (regTwo!39528 lt!2621016) (regTwo!39528 lt!2621019))) (= lambda!461130 lambda!461115))))

(declare-fun bs!1927537 () Bool)

(assert (= bs!1927537 (and b!7454090 b!7454002)))

(assert (=> bs!1927537 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621016) (regOne!39528 lt!2621012)) (= (regTwo!39528 lt!2621016) (regTwo!39528 lt!2621012))) (= lambda!461130 lambda!461125))))

(declare-fun bs!1927538 () Bool)

(assert (= bs!1927538 (and b!7454090 b!7453793)))

(assert (=> bs!1927538 (= (and (= (regOne!39528 lt!2621016) (regOne!39528 lt!2621027)) (= (regTwo!39528 lt!2621016) (regTwo!39528 lt!2621027))) (= lambda!461130 lambda!461113))))

(declare-fun bs!1927539 () Bool)

(assert (= bs!1927539 (and b!7454090 b!7453655)))

(assert (=> bs!1927539 (not (= lambda!461130 lambda!461098))))

(assert (=> bs!1927539 (= (and (= (regOne!39528 lt!2621016) lt!2621012) (= (regTwo!39528 lt!2621016) rTail!78)) (= lambda!461130 lambda!461099))))

(declare-fun bs!1927540 () Bool)

(assert (= bs!1927540 (and b!7454090 b!7453900)))

(assert (=> bs!1927540 (not (= lambda!461130 lambda!461114))))

(declare-fun bs!1927542 () Bool)

(assert (= bs!1927542 (and b!7454090 b!7453938)))

(assert (=> bs!1927542 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621016) (regOne!39528 r2!5783)) (= (regTwo!39528 lt!2621016) (regTwo!39528 r2!5783))) (= lambda!461130 lambda!461119))))

(assert (=> b!7454090 true))

(assert (=> b!7454090 true))

(declare-fun b!7454081 () Bool)

(declare-fun res!2989952 () Bool)

(declare-fun e!4449190 () Bool)

(assert (=> b!7454081 (=> res!2989952 e!4449190)))

(declare-fun call!684772 () Bool)

(assert (=> b!7454081 (= res!2989952 call!684772)))

(declare-fun e!4449188 () Bool)

(assert (=> b!7454081 (= e!4449188 e!4449190)))

(declare-fun b!7454082 () Bool)

(declare-fun e!4449189 () Bool)

(declare-fun e!4449186 () Bool)

(assert (=> b!7454082 (= e!4449189 e!4449186)))

(declare-fun res!2989953 () Bool)

(assert (=> b!7454082 (= res!2989953 (matchRSpec!4187 (regOne!39529 lt!2621016) s!13591))))

(assert (=> b!7454082 (=> res!2989953 e!4449186)))

(declare-fun b!7454084 () Bool)

(assert (=> b!7454084 (= e!4449189 e!4449188)))

(declare-fun c!1378204 () Bool)

(assert (=> b!7454084 (= c!1378204 (is-Star!19508 lt!2621016))))

(declare-fun b!7454085 () Bool)

(declare-fun e!4449185 () Bool)

(assert (=> b!7454085 (= e!4449185 (= s!13591 (Cons!72100 (c!1378119 lt!2621016) Nil!72100)))))

(declare-fun bm!684766 () Bool)

(assert (=> bm!684766 (= call!684772 (isEmpty!41107 s!13591))))

(declare-fun b!7454086 () Bool)

(declare-fun e!4449191 () Bool)

(declare-fun e!4449187 () Bool)

(assert (=> b!7454086 (= e!4449191 e!4449187)))

(declare-fun res!2989954 () Bool)

(assert (=> b!7454086 (= res!2989954 (not (is-EmptyLang!19508 lt!2621016)))))

(assert (=> b!7454086 (=> (not res!2989954) (not e!4449187))))

(declare-fun bm!684767 () Bool)

(declare-fun call!684771 () Bool)

(assert (=> bm!684767 (= call!684771 (Exists!4129 (ite c!1378204 lambda!461128 lambda!461130)))))

(declare-fun b!7454087 () Bool)

(declare-fun c!1378205 () Bool)

(assert (=> b!7454087 (= c!1378205 (is-ElementMatch!19508 lt!2621016))))

(assert (=> b!7454087 (= e!4449187 e!4449185)))

(assert (=> b!7454088 (= e!4449190 call!684771)))

(declare-fun b!7454089 () Bool)

(assert (=> b!7454089 (= e!4449186 (matchRSpec!4187 (regTwo!39529 lt!2621016) s!13591))))

(declare-fun b!7454083 () Bool)

(declare-fun c!1378206 () Bool)

(assert (=> b!7454083 (= c!1378206 (is-Union!19508 lt!2621016))))

(assert (=> b!7454083 (= e!4449185 e!4449189)))

(declare-fun d!2297252 () Bool)

(declare-fun c!1378207 () Bool)

(assert (=> d!2297252 (= c!1378207 (is-EmptyExpr!19508 lt!2621016))))

(assert (=> d!2297252 (= (matchRSpec!4187 lt!2621016 s!13591) e!4449191)))

(assert (=> b!7454090 (= e!4449188 call!684771)))

(declare-fun b!7454091 () Bool)

(assert (=> b!7454091 (= e!4449191 call!684772)))

(assert (= (and d!2297252 c!1378207) b!7454091))

(assert (= (and d!2297252 (not c!1378207)) b!7454086))

(assert (= (and b!7454086 res!2989954) b!7454087))

(assert (= (and b!7454087 c!1378205) b!7454085))

(assert (= (and b!7454087 (not c!1378205)) b!7454083))

(assert (= (and b!7454083 c!1378206) b!7454082))

(assert (= (and b!7454083 (not c!1378206)) b!7454084))

(assert (= (and b!7454082 (not res!2989953)) b!7454089))

(assert (= (and b!7454084 c!1378204) b!7454081))

(assert (= (and b!7454084 (not c!1378204)) b!7454090))

(assert (= (and b!7454081 (not res!2989952)) b!7454088))

(assert (= (or b!7454088 b!7454090) bm!684767))

(assert (= (or b!7454091 b!7454081) bm!684766))

(declare-fun m!8058752 () Bool)

(assert (=> b!7454082 m!8058752))

(assert (=> bm!684766 m!8058610))

(declare-fun m!8058754 () Bool)

(assert (=> bm!684767 m!8058754))

(declare-fun m!8058756 () Bool)

(assert (=> b!7454089 m!8058756))

(assert (=> b!7453664 d!2297252))

(declare-fun b!7454103 () Bool)

(declare-fun e!4449204 () Bool)

(declare-fun call!684775 () Bool)

(assert (=> b!7454103 (= e!4449204 call!684775)))

(declare-fun b!7454104 () Bool)

(declare-fun res!2989958 () Bool)

(declare-fun e!4449205 () Bool)

(assert (=> b!7454104 (=> (not res!2989958) (not e!4449205))))

(declare-fun call!684777 () Bool)

(assert (=> b!7454104 (= res!2989958 call!684777)))

(declare-fun e!4449202 () Bool)

(assert (=> b!7454104 (= e!4449202 e!4449205)))

(declare-fun d!2297254 () Bool)

(declare-fun res!2989960 () Bool)

(declare-fun e!4449200 () Bool)

(assert (=> d!2297254 (=> res!2989960 e!4449200)))

(assert (=> d!2297254 (= res!2989960 (is-ElementMatch!19508 lt!2621016))))

(assert (=> d!2297254 (= (validRegex!10022 lt!2621016) e!4449200)))

(declare-fun b!7454105 () Bool)

(declare-fun e!4449199 () Bool)

(assert (=> b!7454105 (= e!4449199 e!4449202)))

(declare-fun c!1378213 () Bool)

(assert (=> b!7454105 (= c!1378213 (is-Union!19508 lt!2621016))))

(declare-fun bm!684770 () Bool)

(declare-fun call!684776 () Bool)

(assert (=> bm!684770 (= call!684777 call!684776)))

(declare-fun b!7454106 () Bool)

(declare-fun e!4449201 () Bool)

(assert (=> b!7454106 (= e!4449199 e!4449201)))

(declare-fun res!2989959 () Bool)

(assert (=> b!7454106 (= res!2989959 (not (nullable!8496 (reg!19837 lt!2621016))))))

(assert (=> b!7454106 (=> (not res!2989959) (not e!4449201))))

(declare-fun b!7454107 () Bool)

(assert (=> b!7454107 (= e!4449201 call!684776)))

(declare-fun b!7454108 () Bool)

(assert (=> b!7454108 (= e!4449205 call!684775)))

(declare-fun b!7454109 () Bool)

(assert (=> b!7454109 (= e!4449200 e!4449199)))

(declare-fun c!1378212 () Bool)

(assert (=> b!7454109 (= c!1378212 (is-Star!19508 lt!2621016))))

(declare-fun bm!684771 () Bool)

(assert (=> bm!684771 (= call!684775 (validRegex!10022 (ite c!1378213 (regTwo!39529 lt!2621016) (regTwo!39528 lt!2621016))))))

(declare-fun b!7454110 () Bool)

(declare-fun res!2989961 () Bool)

(declare-fun e!4449203 () Bool)

(assert (=> b!7454110 (=> res!2989961 e!4449203)))

(assert (=> b!7454110 (= res!2989961 (not (is-Concat!28353 lt!2621016)))))

(assert (=> b!7454110 (= e!4449202 e!4449203)))

(declare-fun b!7454111 () Bool)

(assert (=> b!7454111 (= e!4449203 e!4449204)))

(declare-fun res!2989962 () Bool)

(assert (=> b!7454111 (=> (not res!2989962) (not e!4449204))))

(assert (=> b!7454111 (= res!2989962 call!684777)))

(declare-fun bm!684772 () Bool)

(assert (=> bm!684772 (= call!684776 (validRegex!10022 (ite c!1378212 (reg!19837 lt!2621016) (ite c!1378213 (regOne!39529 lt!2621016) (regOne!39528 lt!2621016)))))))

(assert (= (and d!2297254 (not res!2989960)) b!7454109))

(assert (= (and b!7454109 c!1378212) b!7454106))

(assert (= (and b!7454109 (not c!1378212)) b!7454105))

(assert (= (and b!7454106 res!2989959) b!7454107))

(assert (= (and b!7454105 c!1378213) b!7454104))

(assert (= (and b!7454105 (not c!1378213)) b!7454110))

(assert (= (and b!7454104 res!2989958) b!7454108))

(assert (= (and b!7454110 (not res!2989961)) b!7454111))

(assert (= (and b!7454111 res!2989962) b!7454103))

(assert (= (or b!7454108 b!7454103) bm!684771))

(assert (= (or b!7454104 b!7454111) bm!684770))

(assert (= (or b!7454107 bm!684770) bm!684772))

(declare-fun m!8058758 () Bool)

(assert (=> b!7454106 m!8058758))

(declare-fun m!8058760 () Bool)

(assert (=> bm!684771 m!8058760))

(declare-fun m!8058764 () Bool)

(assert (=> bm!684772 m!8058764))

(assert (=> b!7453664 d!2297254))

(declare-fun bs!1927543 () Bool)

(declare-fun b!7454119 () Bool)

(assert (= bs!1927543 (and b!7454119 b!7453925)))

(declare-fun lambda!461132 () Int)

(assert (=> bs!1927543 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621021) (reg!19837 r1!5845)) (= lt!2621021 r1!5845)) (= lambda!461132 lambda!461116))))

(declare-fun bs!1927544 () Bool)

(assert (= bs!1927544 (and b!7454119 b!7453951)))

(assert (=> bs!1927544 (= (and (= s!13591 (_2!37538 lt!2621028)) (= (reg!19837 lt!2621021) (reg!19837 rTail!78)) (= lt!2621021 rTail!78)) (= lambda!461132 lambda!461120))))

(declare-fun bs!1927545 () Bool)

(assert (= bs!1927545 (and b!7454119 b!7453936)))

(assert (=> bs!1927545 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621021) (reg!19837 r2!5783)) (= lt!2621021 r2!5783)) (= lambda!461132 lambda!461118))))

(declare-fun bs!1927546 () Bool)

(assert (= bs!1927546 (and b!7454119 b!7453927)))

(assert (=> bs!1927546 (not (= lambda!461132 lambda!461117))))

(declare-fun bs!1927547 () Bool)

(assert (= bs!1927547 (and b!7454119 b!7453791)))

(assert (=> bs!1927547 (= (and (= (reg!19837 lt!2621021) (reg!19837 lt!2621027)) (= lt!2621021 lt!2621027)) (= lambda!461132 lambda!461112))))

(declare-fun bs!1927548 () Bool)

(assert (= bs!1927548 (and b!7454119 b!7453953)))

(assert (=> bs!1927548 (not (= lambda!461132 lambda!461121))))

(declare-fun bs!1927549 () Bool)

(assert (= bs!1927549 (and b!7454119 b!7454000)))

(assert (=> bs!1927549 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (reg!19837 lt!2621021) (reg!19837 lt!2621012)) (= lt!2621021 lt!2621012)) (= lambda!461132 lambda!461124))))

(declare-fun bs!1927550 () Bool)

(assert (= bs!1927550 (and b!7454119 b!7453902)))

(assert (=> bs!1927550 (not (= lambda!461132 lambda!461115))))

(declare-fun bs!1927551 () Bool)

(assert (= bs!1927551 (and b!7454119 b!7454002)))

(assert (=> bs!1927551 (not (= lambda!461132 lambda!461125))))

(declare-fun bs!1927552 () Bool)

(assert (= bs!1927552 (and b!7454119 b!7453793)))

(assert (=> bs!1927552 (not (= lambda!461132 lambda!461113))))

(declare-fun bs!1927554 () Bool)

(assert (= bs!1927554 (and b!7454119 b!7453655)))

(assert (=> bs!1927554 (not (= lambda!461132 lambda!461098))))

(declare-fun bs!1927555 () Bool)

(assert (= bs!1927555 (and b!7454119 b!7454088)))

(assert (=> bs!1927555 (= (and (= (reg!19837 lt!2621021) (reg!19837 lt!2621016)) (= lt!2621021 lt!2621016)) (= lambda!461132 lambda!461128))))

(declare-fun bs!1927556 () Bool)

(assert (= bs!1927556 (and b!7454119 b!7454090)))

(assert (=> bs!1927556 (not (= lambda!461132 lambda!461130))))

(assert (=> bs!1927554 (not (= lambda!461132 lambda!461099))))

(declare-fun bs!1927557 () Bool)

(assert (= bs!1927557 (and b!7454119 b!7453900)))

(assert (=> bs!1927557 (= (and (= (reg!19837 lt!2621021) (reg!19837 lt!2621019)) (= lt!2621021 lt!2621019)) (= lambda!461132 lambda!461114))))

(declare-fun bs!1927559 () Bool)

(assert (= bs!1927559 (and b!7454119 b!7453938)))

(assert (=> bs!1927559 (not (= lambda!461132 lambda!461119))))

(assert (=> b!7454119 true))

(assert (=> b!7454119 true))

(declare-fun bs!1927561 () Bool)

(declare-fun b!7454121 () Bool)

(assert (= bs!1927561 (and b!7454121 b!7453925)))

(declare-fun lambda!461134 () Int)

(assert (=> bs!1927561 (not (= lambda!461134 lambda!461116))))

(declare-fun bs!1927562 () Bool)

(assert (= bs!1927562 (and b!7454121 b!7453951)))

(assert (=> bs!1927562 (not (= lambda!461134 lambda!461120))))

(declare-fun bs!1927563 () Bool)

(assert (= bs!1927563 (and b!7454121 b!7453936)))

(assert (=> bs!1927563 (not (= lambda!461134 lambda!461118))))

(declare-fun bs!1927564 () Bool)

(assert (= bs!1927564 (and b!7454121 b!7453927)))

(assert (=> bs!1927564 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621021) (regOne!39528 r1!5845)) (= (regTwo!39528 lt!2621021) (regTwo!39528 r1!5845))) (= lambda!461134 lambda!461117))))

(declare-fun bs!1927565 () Bool)

(assert (= bs!1927565 (and b!7454121 b!7453953)))

(assert (=> bs!1927565 (= (and (= s!13591 (_2!37538 lt!2621028)) (= (regOne!39528 lt!2621021) (regOne!39528 rTail!78)) (= (regTwo!39528 lt!2621021) (regTwo!39528 rTail!78))) (= lambda!461134 lambda!461121))))

(declare-fun bs!1927566 () Bool)

(assert (= bs!1927566 (and b!7454121 b!7454000)))

(assert (=> bs!1927566 (not (= lambda!461134 lambda!461124))))

(declare-fun bs!1927567 () Bool)

(assert (= bs!1927567 (and b!7454121 b!7453902)))

(assert (=> bs!1927567 (= (and (= (regOne!39528 lt!2621021) (regOne!39528 lt!2621019)) (= (regTwo!39528 lt!2621021) (regTwo!39528 lt!2621019))) (= lambda!461134 lambda!461115))))

(declare-fun bs!1927568 () Bool)

(assert (= bs!1927568 (and b!7454121 b!7454002)))

(assert (=> bs!1927568 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621021) (regOne!39528 lt!2621012)) (= (regTwo!39528 lt!2621021) (regTwo!39528 lt!2621012))) (= lambda!461134 lambda!461125))))

(declare-fun bs!1927569 () Bool)

(assert (= bs!1927569 (and b!7454121 b!7453793)))

(assert (=> bs!1927569 (= (and (= (regOne!39528 lt!2621021) (regOne!39528 lt!2621027)) (= (regTwo!39528 lt!2621021) (regTwo!39528 lt!2621027))) (= lambda!461134 lambda!461113))))

(declare-fun bs!1927570 () Bool)

(assert (= bs!1927570 (and b!7454121 b!7453655)))

(assert (=> bs!1927570 (not (= lambda!461134 lambda!461098))))

(declare-fun bs!1927571 () Bool)

(assert (= bs!1927571 (and b!7454121 b!7454088)))

(assert (=> bs!1927571 (not (= lambda!461134 lambda!461128))))

(declare-fun bs!1927573 () Bool)

(assert (= bs!1927573 (and b!7454121 b!7454090)))

(assert (=> bs!1927573 (= (and (= (regOne!39528 lt!2621021) (regOne!39528 lt!2621016)) (= (regTwo!39528 lt!2621021) (regTwo!39528 lt!2621016))) (= lambda!461134 lambda!461130))))

(assert (=> bs!1927570 (= (and (= (regOne!39528 lt!2621021) lt!2621012) (= (regTwo!39528 lt!2621021) rTail!78)) (= lambda!461134 lambda!461099))))

(declare-fun bs!1927574 () Bool)

(assert (= bs!1927574 (and b!7454121 b!7453900)))

(assert (=> bs!1927574 (not (= lambda!461134 lambda!461114))))

(declare-fun bs!1927575 () Bool)

(assert (= bs!1927575 (and b!7454121 b!7453938)))

(assert (=> bs!1927575 (= (and (= s!13591 (_1!37538 lt!2621028)) (= (regOne!39528 lt!2621021) (regOne!39528 r2!5783)) (= (regTwo!39528 lt!2621021) (regTwo!39528 r2!5783))) (= lambda!461134 lambda!461119))))

(declare-fun bs!1927576 () Bool)

(assert (= bs!1927576 (and b!7454121 b!7454119)))

(assert (=> bs!1927576 (not (= lambda!461134 lambda!461132))))

(declare-fun bs!1927578 () Bool)

(assert (= bs!1927578 (and b!7454121 b!7453791)))

(assert (=> bs!1927578 (not (= lambda!461134 lambda!461112))))

(assert (=> b!7454121 true))

(assert (=> b!7454121 true))

(declare-fun b!7454112 () Bool)

(declare-fun res!2989963 () Bool)

(declare-fun e!4449211 () Bool)

(assert (=> b!7454112 (=> res!2989963 e!4449211)))

(declare-fun call!684779 () Bool)

(assert (=> b!7454112 (= res!2989963 call!684779)))

(declare-fun e!4449209 () Bool)

(assert (=> b!7454112 (= e!4449209 e!4449211)))

(declare-fun b!7454113 () Bool)

(declare-fun e!4449210 () Bool)

(declare-fun e!4449207 () Bool)

(assert (=> b!7454113 (= e!4449210 e!4449207)))

(declare-fun res!2989964 () Bool)

(assert (=> b!7454113 (= res!2989964 (matchRSpec!4187 (regOne!39529 lt!2621021) s!13591))))

(assert (=> b!7454113 (=> res!2989964 e!4449207)))

(declare-fun b!7454115 () Bool)

(assert (=> b!7454115 (= e!4449210 e!4449209)))

(declare-fun c!1378214 () Bool)

(assert (=> b!7454115 (= c!1378214 (is-Star!19508 lt!2621021))))

(declare-fun b!7454116 () Bool)

(declare-fun e!4449206 () Bool)

(assert (=> b!7454116 (= e!4449206 (= s!13591 (Cons!72100 (c!1378119 lt!2621021) Nil!72100)))))

(declare-fun bm!684773 () Bool)

(assert (=> bm!684773 (= call!684779 (isEmpty!41107 s!13591))))

(declare-fun b!7454117 () Bool)

(declare-fun e!4449212 () Bool)

(declare-fun e!4449208 () Bool)

(assert (=> b!7454117 (= e!4449212 e!4449208)))

(declare-fun res!2989965 () Bool)

(assert (=> b!7454117 (= res!2989965 (not (is-EmptyLang!19508 lt!2621021)))))

(assert (=> b!7454117 (=> (not res!2989965) (not e!4449208))))

(declare-fun bm!684774 () Bool)

(declare-fun call!684778 () Bool)

(assert (=> bm!684774 (= call!684778 (Exists!4129 (ite c!1378214 lambda!461132 lambda!461134)))))

(declare-fun b!7454118 () Bool)

(declare-fun c!1378215 () Bool)

(assert (=> b!7454118 (= c!1378215 (is-ElementMatch!19508 lt!2621021))))

(assert (=> b!7454118 (= e!4449208 e!4449206)))

(assert (=> b!7454119 (= e!4449211 call!684778)))

(declare-fun b!7454120 () Bool)

(assert (=> b!7454120 (= e!4449207 (matchRSpec!4187 (regTwo!39529 lt!2621021) s!13591))))

(declare-fun b!7454114 () Bool)

(declare-fun c!1378216 () Bool)

(assert (=> b!7454114 (= c!1378216 (is-Union!19508 lt!2621021))))

(assert (=> b!7454114 (= e!4449206 e!4449210)))

(declare-fun d!2297256 () Bool)

(declare-fun c!1378217 () Bool)

(assert (=> d!2297256 (= c!1378217 (is-EmptyExpr!19508 lt!2621021))))

(assert (=> d!2297256 (= (matchRSpec!4187 lt!2621021 s!13591) e!4449212)))

(assert (=> b!7454121 (= e!4449209 call!684778)))

(declare-fun b!7454122 () Bool)

(assert (=> b!7454122 (= e!4449212 call!684779)))

(assert (= (and d!2297256 c!1378217) b!7454122))

(assert (= (and d!2297256 (not c!1378217)) b!7454117))

(assert (= (and b!7454117 res!2989965) b!7454118))

(assert (= (and b!7454118 c!1378215) b!7454116))

(assert (= (and b!7454118 (not c!1378215)) b!7454114))

(assert (= (and b!7454114 c!1378216) b!7454113))

(assert (= (and b!7454114 (not c!1378216)) b!7454115))

(assert (= (and b!7454113 (not res!2989964)) b!7454120))

(assert (= (and b!7454115 c!1378214) b!7454112))

(assert (= (and b!7454115 (not c!1378214)) b!7454121))

(assert (= (and b!7454112 (not res!2989963)) b!7454119))

(assert (= (or b!7454119 b!7454121) bm!684774))

(assert (= (or b!7454122 b!7454112) bm!684773))

(declare-fun m!8058770 () Bool)

(assert (=> b!7454113 m!8058770))

(assert (=> bm!684773 m!8058610))

(declare-fun m!8058772 () Bool)

(assert (=> bm!684774 m!8058772))

(declare-fun m!8058774 () Bool)

(assert (=> b!7454120 m!8058774))

(assert (=> b!7453664 d!2297256))

(declare-fun b!7454134 () Bool)

(declare-fun e!4449220 () Bool)

(declare-fun e!4449224 () Bool)

(assert (=> b!7454134 (= e!4449220 e!4449224)))

(declare-fun res!2989974 () Bool)

(assert (=> b!7454134 (=> (not res!2989974) (not e!4449224))))

(declare-fun lt!2621112 () Bool)

(assert (=> b!7454134 (= res!2989974 (not lt!2621112))))

(declare-fun b!7454135 () Bool)

(declare-fun res!2989970 () Bool)

(assert (=> b!7454135 (=> res!2989970 e!4449220)))

(declare-fun e!4449221 () Bool)

(assert (=> b!7454135 (= res!2989970 e!4449221)))

(declare-fun res!2989973 () Bool)

(assert (=> b!7454135 (=> (not res!2989973) (not e!4449221))))

(assert (=> b!7454135 (= res!2989973 lt!2621112)))

(declare-fun b!7454136 () Bool)

(declare-fun res!2989971 () Bool)

(assert (=> b!7454136 (=> (not res!2989971) (not e!4449221))))

(assert (=> b!7454136 (= res!2989971 (isEmpty!41107 (tail!14864 s!13591)))))

(declare-fun b!7454137 () Bool)

(declare-fun e!4449222 () Bool)

(assert (=> b!7454137 (= e!4449222 (matchR!9272 (derivativeStep!5555 lt!2621016 (head!15295 s!13591)) (tail!14864 s!13591)))))

(declare-fun b!7454138 () Bool)

(assert (=> b!7454138 (= e!4449222 (nullable!8496 lt!2621016))))

(declare-fun b!7454139 () Bool)

(declare-fun res!2989975 () Bool)

(assert (=> b!7454139 (=> res!2989975 e!4449220)))

(assert (=> b!7454139 (= res!2989975 (not (is-ElementMatch!19508 lt!2621016)))))

(declare-fun e!4449223 () Bool)

(assert (=> b!7454139 (= e!4449223 e!4449220)))

(declare-fun b!7454140 () Bool)

(assert (=> b!7454140 (= e!4449221 (= (head!15295 s!13591) (c!1378119 lt!2621016)))))

(declare-fun d!2297260 () Bool)

(declare-fun e!4449226 () Bool)

(assert (=> d!2297260 e!4449226))

(declare-fun c!1378223 () Bool)

(assert (=> d!2297260 (= c!1378223 (is-EmptyExpr!19508 lt!2621016))))

(assert (=> d!2297260 (= lt!2621112 e!4449222)))

(declare-fun c!1378222 () Bool)

(assert (=> d!2297260 (= c!1378222 (isEmpty!41107 s!13591))))

(assert (=> d!2297260 (validRegex!10022 lt!2621016)))

(assert (=> d!2297260 (= (matchR!9272 lt!2621016 s!13591) lt!2621112)))

(declare-fun b!7454141 () Bool)

(declare-fun e!4449225 () Bool)

(assert (=> b!7454141 (= e!4449224 e!4449225)))

(declare-fun res!2989969 () Bool)

(assert (=> b!7454141 (=> res!2989969 e!4449225)))

(declare-fun call!684782 () Bool)

(assert (=> b!7454141 (= res!2989969 call!684782)))

(declare-fun bm!684777 () Bool)

(assert (=> bm!684777 (= call!684782 (isEmpty!41107 s!13591))))

(declare-fun b!7454142 () Bool)

(assert (=> b!7454142 (= e!4449223 (not lt!2621112))))

(declare-fun b!7454143 () Bool)

(assert (=> b!7454143 (= e!4449226 (= lt!2621112 call!684782))))

(declare-fun b!7454144 () Bool)

(assert (=> b!7454144 (= e!4449226 e!4449223)))

(declare-fun c!1378224 () Bool)

(assert (=> b!7454144 (= c!1378224 (is-EmptyLang!19508 lt!2621016))))

(declare-fun b!7454145 () Bool)

(declare-fun res!2989972 () Bool)

(assert (=> b!7454145 (=> res!2989972 e!4449225)))

(assert (=> b!7454145 (= res!2989972 (not (isEmpty!41107 (tail!14864 s!13591))))))

(declare-fun b!7454146 () Bool)

(declare-fun res!2989976 () Bool)

(assert (=> b!7454146 (=> (not res!2989976) (not e!4449221))))

(assert (=> b!7454146 (= res!2989976 (not call!684782))))

(declare-fun b!7454147 () Bool)

(assert (=> b!7454147 (= e!4449225 (not (= (head!15295 s!13591) (c!1378119 lt!2621016))))))

(assert (= (and d!2297260 c!1378222) b!7454138))

(assert (= (and d!2297260 (not c!1378222)) b!7454137))

(assert (= (and d!2297260 c!1378223) b!7454143))

(assert (= (and d!2297260 (not c!1378223)) b!7454144))

(assert (= (and b!7454144 c!1378224) b!7454142))

(assert (= (and b!7454144 (not c!1378224)) b!7454139))

(assert (= (and b!7454139 (not res!2989975)) b!7454135))

(assert (= (and b!7454135 res!2989973) b!7454146))

(assert (= (and b!7454146 res!2989976) b!7454136))

(assert (= (and b!7454136 res!2989971) b!7454140))

(assert (= (and b!7454135 (not res!2989970)) b!7454134))

(assert (= (and b!7454134 res!2989974) b!7454141))

(assert (= (and b!7454141 (not res!2989969)) b!7454145))

(assert (= (and b!7454145 (not res!2989972)) b!7454147))

(assert (= (or b!7454143 b!7454141 b!7454146) bm!684777))

(assert (=> b!7454147 m!8058616))

(assert (=> d!2297260 m!8058610))

(assert (=> d!2297260 m!8058488))

(assert (=> b!7454140 m!8058616))

(assert (=> b!7454145 m!8058620))

(assert (=> b!7454145 m!8058620))

(assert (=> b!7454145 m!8058622))

(assert (=> b!7454136 m!8058620))

(assert (=> b!7454136 m!8058620))

(assert (=> b!7454136 m!8058622))

(assert (=> bm!684777 m!8058610))

(assert (=> b!7454137 m!8058616))

(assert (=> b!7454137 m!8058616))

(declare-fun m!8058776 () Bool)

(assert (=> b!7454137 m!8058776))

(assert (=> b!7454137 m!8058620))

(assert (=> b!7454137 m!8058776))

(assert (=> b!7454137 m!8058620))

(declare-fun m!8058778 () Bool)

(assert (=> b!7454137 m!8058778))

(declare-fun m!8058780 () Bool)

(assert (=> b!7454138 m!8058780))

(assert (=> b!7453664 d!2297260))

(declare-fun d!2297262 () Bool)

(assert (=> d!2297262 (= (matchR!9272 lt!2621016 s!13591) (matchRSpec!4187 lt!2621016 s!13591))))

(declare-fun lt!2621113 () Unit!165851)

(assert (=> d!2297262 (= lt!2621113 (choose!57612 lt!2621016 s!13591))))

(assert (=> d!2297262 (validRegex!10022 lt!2621016)))

(assert (=> d!2297262 (= (mainMatchTheorem!4181 lt!2621016 s!13591) lt!2621113)))

(declare-fun bs!1927581 () Bool)

(assert (= bs!1927581 d!2297262))

(assert (=> bs!1927581 m!8058486))

(assert (=> bs!1927581 m!8058484))

(declare-fun m!8058784 () Bool)

(assert (=> bs!1927581 m!8058784))

(assert (=> bs!1927581 m!8058488))

(assert (=> b!7453664 d!2297262))

(declare-fun d!2297264 () Bool)

(assert (=> d!2297264 (= (matchR!9272 lt!2621021 s!13591) (matchRSpec!4187 lt!2621021 s!13591))))

(declare-fun lt!2621114 () Unit!165851)

(assert (=> d!2297264 (= lt!2621114 (choose!57612 lt!2621021 s!13591))))

(assert (=> d!2297264 (validRegex!10022 lt!2621021)))

(assert (=> d!2297264 (= (mainMatchTheorem!4181 lt!2621021 s!13591) lt!2621114)))

(declare-fun bs!1927582 () Bool)

(assert (= bs!1927582 d!2297264))

(assert (=> bs!1927582 m!8058494))

(assert (=> bs!1927582 m!8058492))

(declare-fun m!8058790 () Bool)

(assert (=> bs!1927582 m!8058790))

(assert (=> bs!1927582 m!8058744))

(assert (=> b!7453664 d!2297264))

(declare-fun d!2297266 () Bool)

(declare-fun choose!57617 (Int) Bool)

(assert (=> d!2297266 (= (Exists!4129 lambda!461099) (choose!57617 lambda!461099))))

(declare-fun bs!1927584 () Bool)

(assert (= bs!1927584 d!2297266))

(declare-fun m!8058794 () Bool)

(assert (=> bs!1927584 m!8058794))

(assert (=> b!7453655 d!2297266))

(declare-fun bs!1927592 () Bool)

(declare-fun d!2297272 () Bool)

(assert (= bs!1927592 (and d!2297272 b!7453925)))

(declare-fun lambda!461140 () Int)

(assert (=> bs!1927592 (not (= lambda!461140 lambda!461116))))

(declare-fun bs!1927594 () Bool)

(assert (= bs!1927594 (and d!2297272 b!7453951)))

(assert (=> bs!1927594 (not (= lambda!461140 lambda!461120))))

(declare-fun bs!1927595 () Bool)

(assert (= bs!1927595 (and d!2297272 b!7453936)))

(assert (=> bs!1927595 (not (= lambda!461140 lambda!461118))))

(declare-fun bs!1927597 () Bool)

(assert (= bs!1927597 (and d!2297272 b!7454121)))

(assert (=> bs!1927597 (not (= lambda!461140 lambda!461134))))

(declare-fun bs!1927598 () Bool)

(assert (= bs!1927598 (and d!2297272 b!7453927)))

(assert (=> bs!1927598 (not (= lambda!461140 lambda!461117))))

(declare-fun bs!1927600 () Bool)

(assert (= bs!1927600 (and d!2297272 b!7453953)))

(assert (=> bs!1927600 (not (= lambda!461140 lambda!461121))))

(declare-fun bs!1927601 () Bool)

(assert (= bs!1927601 (and d!2297272 b!7454000)))

(assert (=> bs!1927601 (not (= lambda!461140 lambda!461124))))

(declare-fun bs!1927602 () Bool)

(assert (= bs!1927602 (and d!2297272 b!7453902)))

(assert (=> bs!1927602 (not (= lambda!461140 lambda!461115))))

(declare-fun bs!1927604 () Bool)

(assert (= bs!1927604 (and d!2297272 b!7454002)))

(assert (=> bs!1927604 (not (= lambda!461140 lambda!461125))))

(declare-fun bs!1927605 () Bool)

(assert (= bs!1927605 (and d!2297272 b!7453793)))

(assert (=> bs!1927605 (not (= lambda!461140 lambda!461113))))

(declare-fun bs!1927606 () Bool)

(assert (= bs!1927606 (and d!2297272 b!7453655)))

(assert (=> bs!1927606 (= lambda!461140 lambda!461098)))

(declare-fun bs!1927607 () Bool)

(assert (= bs!1927607 (and d!2297272 b!7454088)))

(assert (=> bs!1927607 (not (= lambda!461140 lambda!461128))))

(declare-fun bs!1927609 () Bool)

(assert (= bs!1927609 (and d!2297272 b!7454090)))

(assert (=> bs!1927609 (not (= lambda!461140 lambda!461130))))

(assert (=> bs!1927606 (not (= lambda!461140 lambda!461099))))

(declare-fun bs!1927610 () Bool)

(assert (= bs!1927610 (and d!2297272 b!7453900)))

(assert (=> bs!1927610 (not (= lambda!461140 lambda!461114))))

(declare-fun bs!1927611 () Bool)

(assert (= bs!1927611 (and d!2297272 b!7453938)))

(assert (=> bs!1927611 (not (= lambda!461140 lambda!461119))))

(declare-fun bs!1927612 () Bool)

(assert (= bs!1927612 (and d!2297272 b!7454119)))

(assert (=> bs!1927612 (not (= lambda!461140 lambda!461132))))

(declare-fun bs!1927613 () Bool)

(assert (= bs!1927613 (and d!2297272 b!7453791)))

(assert (=> bs!1927613 (not (= lambda!461140 lambda!461112))))

(assert (=> d!2297272 true))

(assert (=> d!2297272 true))

(assert (=> d!2297272 true))

(assert (=> d!2297272 (= (isDefined!13756 (findConcatSeparation!3189 lt!2621012 rTail!78 Nil!72100 s!13591 s!13591)) (Exists!4129 lambda!461140))))

(declare-fun lt!2621120 () Unit!165851)

(declare-fun choose!57618 (Regex!19508 Regex!19508 List!72224) Unit!165851)

(assert (=> d!2297272 (= lt!2621120 (choose!57618 lt!2621012 rTail!78 s!13591))))

(assert (=> d!2297272 (validRegex!10022 lt!2621012)))

(assert (=> d!2297272 (= (lemmaFindConcatSeparationEquivalentToExists!2947 lt!2621012 rTail!78 s!13591) lt!2621120)))

(declare-fun bs!1927614 () Bool)

(assert (= bs!1927614 d!2297272))

(assert (=> bs!1927614 m!8058480))

(declare-fun m!8058804 () Bool)

(assert (=> bs!1927614 m!8058804))

(assert (=> bs!1927614 m!8058718))

(assert (=> bs!1927614 m!8058480))

(declare-fun m!8058806 () Bool)

(assert (=> bs!1927614 m!8058806))

(declare-fun m!8058808 () Bool)

(assert (=> bs!1927614 m!8058808))

(assert (=> b!7453655 d!2297272))

(declare-fun d!2297278 () Bool)

(declare-fun isEmpty!41110 (Option!17067) Bool)

(assert (=> d!2297278 (= (isDefined!13756 lt!2621022) (not (isEmpty!41110 lt!2621022)))))

(declare-fun bs!1927615 () Bool)

(assert (= bs!1927615 d!2297278))

(declare-fun m!8058818 () Bool)

(assert (=> bs!1927615 m!8058818))

(assert (=> b!7453655 d!2297278))

(declare-fun b!7454220 () Bool)

(declare-fun e!4449269 () Bool)

(declare-fun lt!2621131 () Option!17067)

(assert (=> b!7454220 (= e!4449269 (not (isDefined!13756 lt!2621131)))))

(declare-fun b!7454221 () Bool)

(declare-fun res!2990013 () Bool)

(declare-fun e!4449270 () Bool)

(assert (=> b!7454221 (=> (not res!2990013) (not e!4449270))))

(assert (=> b!7454221 (= res!2990013 (matchR!9272 rTail!78 (_2!37538 (get!25146 lt!2621131))))))

(declare-fun b!7454222 () Bool)

(declare-fun e!4449268 () Bool)

(assert (=> b!7454222 (= e!4449268 (matchR!9272 rTail!78 s!13591))))

(declare-fun b!7454223 () Bool)

(declare-fun ++!17169 (List!72224 List!72224) List!72224)

(assert (=> b!7454223 (= e!4449270 (= (++!17169 (_1!37538 (get!25146 lt!2621131)) (_2!37538 (get!25146 lt!2621131))) s!13591))))

(declare-fun b!7454224 () Bool)

(declare-fun e!4449271 () Option!17067)

(assert (=> b!7454224 (= e!4449271 (Some!17066 (tuple2!68471 Nil!72100 s!13591)))))

(declare-fun b!7454225 () Bool)

(declare-fun lt!2621130 () Unit!165851)

(declare-fun lt!2621129 () Unit!165851)

(assert (=> b!7454225 (= lt!2621130 lt!2621129)))

(assert (=> b!7454225 (= (++!17169 (++!17169 Nil!72100 (Cons!72100 (h!78548 s!13591) Nil!72100)) (t!386793 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3049 (List!72224 C!39290 List!72224 List!72224) Unit!165851)

(assert (=> b!7454225 (= lt!2621129 (lemmaMoveElementToOtherListKeepsConcatEq!3049 Nil!72100 (h!78548 s!13591) (t!386793 s!13591) s!13591))))

(declare-fun e!4449267 () Option!17067)

(assert (=> b!7454225 (= e!4449267 (findConcatSeparation!3189 lt!2621012 rTail!78 (++!17169 Nil!72100 (Cons!72100 (h!78548 s!13591) Nil!72100)) (t!386793 s!13591) s!13591))))

(declare-fun d!2297282 () Bool)

(assert (=> d!2297282 e!4449269))

(declare-fun res!2990016 () Bool)

(assert (=> d!2297282 (=> res!2990016 e!4449269)))

(assert (=> d!2297282 (= res!2990016 e!4449270)))

(declare-fun res!2990015 () Bool)

(assert (=> d!2297282 (=> (not res!2990015) (not e!4449270))))

(assert (=> d!2297282 (= res!2990015 (isDefined!13756 lt!2621131))))

(assert (=> d!2297282 (= lt!2621131 e!4449271)))

(declare-fun c!1378243 () Bool)

(assert (=> d!2297282 (= c!1378243 e!4449268)))

(declare-fun res!2990017 () Bool)

(assert (=> d!2297282 (=> (not res!2990017) (not e!4449268))))

(assert (=> d!2297282 (= res!2990017 (matchR!9272 lt!2621012 Nil!72100))))

(assert (=> d!2297282 (validRegex!10022 lt!2621012)))

(assert (=> d!2297282 (= (findConcatSeparation!3189 lt!2621012 rTail!78 Nil!72100 s!13591 s!13591) lt!2621131)))

(declare-fun b!7454226 () Bool)

(assert (=> b!7454226 (= e!4449271 e!4449267)))

(declare-fun c!1378244 () Bool)

(assert (=> b!7454226 (= c!1378244 (is-Nil!72100 s!13591))))

(declare-fun b!7454227 () Bool)

(declare-fun res!2990014 () Bool)

(assert (=> b!7454227 (=> (not res!2990014) (not e!4449270))))

(assert (=> b!7454227 (= res!2990014 (matchR!9272 lt!2621012 (_1!37538 (get!25146 lt!2621131))))))

(declare-fun b!7454228 () Bool)

(assert (=> b!7454228 (= e!4449267 None!17066)))

(assert (= (and d!2297282 res!2990017) b!7454222))

(assert (= (and d!2297282 c!1378243) b!7454224))

(assert (= (and d!2297282 (not c!1378243)) b!7454226))

(assert (= (and b!7454226 c!1378244) b!7454228))

(assert (= (and b!7454226 (not c!1378244)) b!7454225))

(assert (= (and d!2297282 res!2990015) b!7454227))

(assert (= (and b!7454227 res!2990014) b!7454221))

(assert (= (and b!7454221 res!2990013) b!7454223))

(assert (= (and d!2297282 (not res!2990016)) b!7454220))

(declare-fun m!8058840 () Bool)

(assert (=> b!7454220 m!8058840))

(assert (=> d!2297282 m!8058840))

(declare-fun m!8058842 () Bool)

(assert (=> d!2297282 m!8058842))

(assert (=> d!2297282 m!8058718))

(declare-fun m!8058844 () Bool)

(assert (=> b!7454222 m!8058844))

(declare-fun m!8058846 () Bool)

(assert (=> b!7454225 m!8058846))

(assert (=> b!7454225 m!8058846))

(declare-fun m!8058848 () Bool)

(assert (=> b!7454225 m!8058848))

(declare-fun m!8058850 () Bool)

(assert (=> b!7454225 m!8058850))

(assert (=> b!7454225 m!8058846))

(declare-fun m!8058852 () Bool)

(assert (=> b!7454225 m!8058852))

(declare-fun m!8058854 () Bool)

(assert (=> b!7454223 m!8058854))

(declare-fun m!8058856 () Bool)

(assert (=> b!7454223 m!8058856))

(assert (=> b!7454227 m!8058854))

(declare-fun m!8058858 () Bool)

(assert (=> b!7454227 m!8058858))

(assert (=> b!7454221 m!8058854))

(declare-fun m!8058860 () Bool)

(assert (=> b!7454221 m!8058860))

(assert (=> b!7453655 d!2297282))

(declare-fun d!2297290 () Bool)

(assert (=> d!2297290 (= (get!25146 lt!2621022) (v!54195 lt!2621022))))

(assert (=> b!7453655 d!2297290))

(declare-fun d!2297292 () Bool)

(assert (=> d!2297292 (= (Exists!4129 lambda!461098) (choose!57617 lambda!461098))))

(declare-fun bs!1927632 () Bool)

(assert (= bs!1927632 d!2297292))

(declare-fun m!8058862 () Bool)

(assert (=> bs!1927632 m!8058862))

(assert (=> b!7453655 d!2297292))

(declare-fun b!7454229 () Bool)

(declare-fun e!4449272 () Bool)

(declare-fun e!4449276 () Bool)

(assert (=> b!7454229 (= e!4449272 e!4449276)))

(declare-fun res!2990023 () Bool)

(assert (=> b!7454229 (=> (not res!2990023) (not e!4449276))))

(declare-fun lt!2621132 () Bool)

(assert (=> b!7454229 (= res!2990023 (not lt!2621132))))

(declare-fun b!7454230 () Bool)

(declare-fun res!2990019 () Bool)

(assert (=> b!7454230 (=> res!2990019 e!4449272)))

(declare-fun e!4449273 () Bool)

(assert (=> b!7454230 (= res!2990019 e!4449273)))

(declare-fun res!2990022 () Bool)

(assert (=> b!7454230 (=> (not res!2990022) (not e!4449273))))

(assert (=> b!7454230 (= res!2990022 lt!2621132)))

(declare-fun b!7454231 () Bool)

(declare-fun res!2990020 () Bool)

(assert (=> b!7454231 (=> (not res!2990020) (not e!4449273))))

(assert (=> b!7454231 (= res!2990020 (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7454232 () Bool)

(declare-fun e!4449274 () Bool)

(assert (=> b!7454232 (= e!4449274 (matchR!9272 (derivativeStep!5555 lt!2621012 (head!15295 (_1!37538 lt!2621028))) (tail!14864 (_1!37538 lt!2621028))))))

(declare-fun b!7454233 () Bool)

(assert (=> b!7454233 (= e!4449274 (nullable!8496 lt!2621012))))

(declare-fun b!7454234 () Bool)

(declare-fun res!2990024 () Bool)

(assert (=> b!7454234 (=> res!2990024 e!4449272)))

(assert (=> b!7454234 (= res!2990024 (not (is-ElementMatch!19508 lt!2621012)))))

(declare-fun e!4449275 () Bool)

(assert (=> b!7454234 (= e!4449275 e!4449272)))

(declare-fun b!7454235 () Bool)

(assert (=> b!7454235 (= e!4449273 (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 lt!2621012)))))

(declare-fun d!2297294 () Bool)

(declare-fun e!4449278 () Bool)

(assert (=> d!2297294 e!4449278))

(declare-fun c!1378246 () Bool)

(assert (=> d!2297294 (= c!1378246 (is-EmptyExpr!19508 lt!2621012))))

(assert (=> d!2297294 (= lt!2621132 e!4449274)))

(declare-fun c!1378245 () Bool)

(assert (=> d!2297294 (= c!1378245 (isEmpty!41107 (_1!37538 lt!2621028)))))

(assert (=> d!2297294 (validRegex!10022 lt!2621012)))

(assert (=> d!2297294 (= (matchR!9272 lt!2621012 (_1!37538 lt!2621028)) lt!2621132)))

(declare-fun b!7454236 () Bool)

(declare-fun e!4449277 () Bool)

(assert (=> b!7454236 (= e!4449276 e!4449277)))

(declare-fun res!2990018 () Bool)

(assert (=> b!7454236 (=> res!2990018 e!4449277)))

(declare-fun call!684789 () Bool)

(assert (=> b!7454236 (= res!2990018 call!684789)))

(declare-fun bm!684784 () Bool)

(assert (=> bm!684784 (= call!684789 (isEmpty!41107 (_1!37538 lt!2621028)))))

(declare-fun b!7454237 () Bool)

(assert (=> b!7454237 (= e!4449275 (not lt!2621132))))

(declare-fun b!7454238 () Bool)

(assert (=> b!7454238 (= e!4449278 (= lt!2621132 call!684789))))

(declare-fun b!7454239 () Bool)

(assert (=> b!7454239 (= e!4449278 e!4449275)))

(declare-fun c!1378247 () Bool)

(assert (=> b!7454239 (= c!1378247 (is-EmptyLang!19508 lt!2621012))))

(declare-fun b!7454240 () Bool)

(declare-fun res!2990021 () Bool)

(assert (=> b!7454240 (=> res!2990021 e!4449277)))

(assert (=> b!7454240 (= res!2990021 (not (isEmpty!41107 (tail!14864 (_1!37538 lt!2621028)))))))

(declare-fun b!7454241 () Bool)

(declare-fun res!2990025 () Bool)

(assert (=> b!7454241 (=> (not res!2990025) (not e!4449273))))

(assert (=> b!7454241 (= res!2990025 (not call!684789))))

(declare-fun b!7454242 () Bool)

(assert (=> b!7454242 (= e!4449277 (not (= (head!15295 (_1!37538 lt!2621028)) (c!1378119 lt!2621012))))))

(assert (= (and d!2297294 c!1378245) b!7454233))

(assert (= (and d!2297294 (not c!1378245)) b!7454232))

(assert (= (and d!2297294 c!1378246) b!7454238))

(assert (= (and d!2297294 (not c!1378246)) b!7454239))

(assert (= (and b!7454239 c!1378247) b!7454237))

(assert (= (and b!7454239 (not c!1378247)) b!7454234))

(assert (= (and b!7454234 (not res!2990024)) b!7454230))

(assert (= (and b!7454230 res!2990022) b!7454241))

(assert (= (and b!7454241 res!2990025) b!7454231))

(assert (= (and b!7454231 res!2990020) b!7454235))

(assert (= (and b!7454230 (not res!2990019)) b!7454229))

(assert (= (and b!7454229 res!2990023) b!7454236))

(assert (= (and b!7454236 (not res!2990018)) b!7454240))

(assert (= (and b!7454240 (not res!2990021)) b!7454242))

(assert (= (or b!7454238 b!7454236 b!7454241) bm!684784))

(assert (=> b!7454242 m!8058696))

(assert (=> d!2297294 m!8058674))

(assert (=> d!2297294 m!8058718))

(assert (=> b!7454235 m!8058696))

(assert (=> b!7454240 m!8058698))

(assert (=> b!7454240 m!8058698))

(assert (=> b!7454240 m!8058700))

(assert (=> b!7454231 m!8058698))

(assert (=> b!7454231 m!8058698))

(assert (=> b!7454231 m!8058700))

(assert (=> bm!684784 m!8058674))

(assert (=> b!7454232 m!8058696))

(assert (=> b!7454232 m!8058696))

(declare-fun m!8058864 () Bool)

(assert (=> b!7454232 m!8058864))

(assert (=> b!7454232 m!8058698))

(assert (=> b!7454232 m!8058864))

(assert (=> b!7454232 m!8058698))

(declare-fun m!8058866 () Bool)

(assert (=> b!7454232 m!8058866))

(declare-fun m!8058868 () Bool)

(assert (=> b!7454233 m!8058868))

(assert (=> b!7453655 d!2297294))

(declare-fun bs!1927633 () Bool)

(declare-fun d!2297296 () Bool)

(assert (= bs!1927633 (and d!2297296 d!2297272)))

(declare-fun lambda!461151 () Int)

(assert (=> bs!1927633 (= lambda!461151 lambda!461140)))

(declare-fun bs!1927634 () Bool)

(assert (= bs!1927634 (and d!2297296 b!7453925)))

(assert (=> bs!1927634 (not (= lambda!461151 lambda!461116))))

(declare-fun bs!1927635 () Bool)

(assert (= bs!1927635 (and d!2297296 b!7453951)))

(assert (=> bs!1927635 (not (= lambda!461151 lambda!461120))))

(declare-fun bs!1927636 () Bool)

(assert (= bs!1927636 (and d!2297296 b!7453936)))

(assert (=> bs!1927636 (not (= lambda!461151 lambda!461118))))

(declare-fun bs!1927637 () Bool)

(assert (= bs!1927637 (and d!2297296 b!7454121)))

(assert (=> bs!1927637 (not (= lambda!461151 lambda!461134))))

(declare-fun bs!1927638 () Bool)

(assert (= bs!1927638 (and d!2297296 b!7453927)))

(assert (=> bs!1927638 (not (= lambda!461151 lambda!461117))))

(declare-fun bs!1927639 () Bool)

(assert (= bs!1927639 (and d!2297296 b!7453953)))

(assert (=> bs!1927639 (not (= lambda!461151 lambda!461121))))

(declare-fun bs!1927640 () Bool)

(assert (= bs!1927640 (and d!2297296 b!7454000)))

(assert (=> bs!1927640 (not (= lambda!461151 lambda!461124))))

(declare-fun bs!1927641 () Bool)

(assert (= bs!1927641 (and d!2297296 b!7453902)))

(assert (=> bs!1927641 (not (= lambda!461151 lambda!461115))))

(declare-fun bs!1927642 () Bool)

(assert (= bs!1927642 (and d!2297296 b!7454002)))

(assert (=> bs!1927642 (not (= lambda!461151 lambda!461125))))

(declare-fun bs!1927643 () Bool)

(assert (= bs!1927643 (and d!2297296 b!7453793)))

(assert (=> bs!1927643 (not (= lambda!461151 lambda!461113))))

(declare-fun bs!1927644 () Bool)

(assert (= bs!1927644 (and d!2297296 b!7453655)))

(assert (=> bs!1927644 (= lambda!461151 lambda!461098)))

(declare-fun bs!1927645 () Bool)

(assert (= bs!1927645 (and d!2297296 b!7454088)))

(assert (=> bs!1927645 (not (= lambda!461151 lambda!461128))))

(declare-fun bs!1927646 () Bool)

(assert (= bs!1927646 (and d!2297296 b!7454090)))

(assert (=> bs!1927646 (not (= lambda!461151 lambda!461130))))

(assert (=> bs!1927644 (not (= lambda!461151 lambda!461099))))

(declare-fun bs!1927647 () Bool)

(assert (= bs!1927647 (and d!2297296 b!7453900)))

(assert (=> bs!1927647 (not (= lambda!461151 lambda!461114))))

(declare-fun bs!1927648 () Bool)

(assert (= bs!1927648 (and d!2297296 b!7453938)))

(assert (=> bs!1927648 (not (= lambda!461151 lambda!461119))))

(declare-fun bs!1927649 () Bool)

(assert (= bs!1927649 (and d!2297296 b!7454119)))

(assert (=> bs!1927649 (not (= lambda!461151 lambda!461132))))

(declare-fun bs!1927650 () Bool)

(assert (= bs!1927650 (and d!2297296 b!7453791)))

(assert (=> bs!1927650 (not (= lambda!461151 lambda!461112))))

(assert (=> d!2297296 true))

(assert (=> d!2297296 true))

(assert (=> d!2297296 true))

(declare-fun lambda!461152 () Int)

(assert (=> bs!1927633 (not (= lambda!461152 lambda!461140))))

(assert (=> bs!1927634 (not (= lambda!461152 lambda!461116))))

(assert (=> bs!1927635 (not (= lambda!461152 lambda!461120))))

(assert (=> bs!1927636 (not (= lambda!461152 lambda!461118))))

(assert (=> bs!1927637 (= (and (= lt!2621012 (regOne!39528 lt!2621021)) (= rTail!78 (regTwo!39528 lt!2621021))) (= lambda!461152 lambda!461134))))

(assert (=> bs!1927638 (= (and (= s!13591 (_1!37538 lt!2621028)) (= lt!2621012 (regOne!39528 r1!5845)) (= rTail!78 (regTwo!39528 r1!5845))) (= lambda!461152 lambda!461117))))

(declare-fun bs!1927652 () Bool)

(assert (= bs!1927652 d!2297296))

(assert (=> bs!1927652 (not (= lambda!461152 lambda!461151))))

(assert (=> bs!1927639 (= (and (= s!13591 (_2!37538 lt!2621028)) (= lt!2621012 (regOne!39528 rTail!78)) (= rTail!78 (regTwo!39528 rTail!78))) (= lambda!461152 lambda!461121))))

(assert (=> bs!1927640 (not (= lambda!461152 lambda!461124))))

(assert (=> bs!1927641 (= (and (= lt!2621012 (regOne!39528 lt!2621019)) (= rTail!78 (regTwo!39528 lt!2621019))) (= lambda!461152 lambda!461115))))

(assert (=> bs!1927642 (= (and (= s!13591 (_1!37538 lt!2621028)) (= lt!2621012 (regOne!39528 lt!2621012)) (= rTail!78 (regTwo!39528 lt!2621012))) (= lambda!461152 lambda!461125))))

(assert (=> bs!1927643 (= (and (= lt!2621012 (regOne!39528 lt!2621027)) (= rTail!78 (regTwo!39528 lt!2621027))) (= lambda!461152 lambda!461113))))

(assert (=> bs!1927644 (not (= lambda!461152 lambda!461098))))

(assert (=> bs!1927645 (not (= lambda!461152 lambda!461128))))

(assert (=> bs!1927646 (= (and (= lt!2621012 (regOne!39528 lt!2621016)) (= rTail!78 (regTwo!39528 lt!2621016))) (= lambda!461152 lambda!461130))))

(assert (=> bs!1927644 (= lambda!461152 lambda!461099)))

(assert (=> bs!1927647 (not (= lambda!461152 lambda!461114))))

(assert (=> bs!1927648 (= (and (= s!13591 (_1!37538 lt!2621028)) (= lt!2621012 (regOne!39528 r2!5783)) (= rTail!78 (regTwo!39528 r2!5783))) (= lambda!461152 lambda!461119))))

(assert (=> bs!1927649 (not (= lambda!461152 lambda!461132))))

(assert (=> bs!1927650 (not (= lambda!461152 lambda!461112))))

(assert (=> d!2297296 true))

(assert (=> d!2297296 true))

(assert (=> d!2297296 true))

(assert (=> d!2297296 (= (Exists!4129 lambda!461151) (Exists!4129 lambda!461152))))

(declare-fun lt!2621137 () Unit!165851)

(declare-fun choose!57619 (Regex!19508 Regex!19508 List!72224) Unit!165851)

(assert (=> d!2297296 (= lt!2621137 (choose!57619 lt!2621012 rTail!78 s!13591))))

(assert (=> d!2297296 (validRegex!10022 lt!2621012)))

(assert (=> d!2297296 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2465 lt!2621012 rTail!78 s!13591) lt!2621137)))

(declare-fun m!8058870 () Bool)

(assert (=> bs!1927652 m!8058870))

(declare-fun m!8058872 () Bool)

(assert (=> bs!1927652 m!8058872))

(declare-fun m!8058874 () Bool)

(assert (=> bs!1927652 m!8058874))

(assert (=> bs!1927652 m!8058718))

(assert (=> b!7453655 d!2297296))

(declare-fun e!4449289 () Bool)

(assert (=> b!7453661 (= tp!2160059 e!4449289)))

(declare-fun b!7454271 () Bool)

(declare-fun tp!2160118 () Bool)

(assert (=> b!7454271 (= e!4449289 tp!2160118)))

(declare-fun b!7454269 () Bool)

(assert (=> b!7454269 (= e!4449289 tp_is_empty!49305)))

(declare-fun b!7454270 () Bool)

(declare-fun tp!2160121 () Bool)

(declare-fun tp!2160120 () Bool)

(assert (=> b!7454270 (= e!4449289 (and tp!2160121 tp!2160120))))

(declare-fun b!7454272 () Bool)

(declare-fun tp!2160122 () Bool)

(declare-fun tp!2160119 () Bool)

(assert (=> b!7454272 (= e!4449289 (and tp!2160122 tp!2160119))))

(assert (= (and b!7453661 (is-ElementMatch!19508 (reg!19837 r1!5845))) b!7454269))

(assert (= (and b!7453661 (is-Concat!28353 (reg!19837 r1!5845))) b!7454270))

(assert (= (and b!7453661 (is-Star!19508 (reg!19837 r1!5845))) b!7454271))

(assert (= (and b!7453661 (is-Union!19508 (reg!19837 r1!5845))) b!7454272))

(declare-fun e!4449290 () Bool)

(assert (=> b!7453667 (= tp!2160052 e!4449290)))

(declare-fun b!7454275 () Bool)

(declare-fun tp!2160123 () Bool)

(assert (=> b!7454275 (= e!4449290 tp!2160123)))

(declare-fun b!7454273 () Bool)

(assert (=> b!7454273 (= e!4449290 tp_is_empty!49305)))

(declare-fun b!7454274 () Bool)

(declare-fun tp!2160126 () Bool)

(declare-fun tp!2160125 () Bool)

(assert (=> b!7454274 (= e!4449290 (and tp!2160126 tp!2160125))))

(declare-fun b!7454276 () Bool)

(declare-fun tp!2160127 () Bool)

(declare-fun tp!2160124 () Bool)

(assert (=> b!7454276 (= e!4449290 (and tp!2160127 tp!2160124))))

(assert (= (and b!7453667 (is-ElementMatch!19508 (regOne!39529 rTail!78))) b!7454273))

(assert (= (and b!7453667 (is-Concat!28353 (regOne!39529 rTail!78))) b!7454274))

(assert (= (and b!7453667 (is-Star!19508 (regOne!39529 rTail!78))) b!7454275))

(assert (= (and b!7453667 (is-Union!19508 (regOne!39529 rTail!78))) b!7454276))

(declare-fun e!4449291 () Bool)

(assert (=> b!7453667 (= tp!2160049 e!4449291)))

(declare-fun b!7454279 () Bool)

(declare-fun tp!2160128 () Bool)

(assert (=> b!7454279 (= e!4449291 tp!2160128)))

(declare-fun b!7454277 () Bool)

(assert (=> b!7454277 (= e!4449291 tp_is_empty!49305)))

(declare-fun b!7454278 () Bool)

(declare-fun tp!2160131 () Bool)

(declare-fun tp!2160130 () Bool)

(assert (=> b!7454278 (= e!4449291 (and tp!2160131 tp!2160130))))

(declare-fun b!7454280 () Bool)

(declare-fun tp!2160132 () Bool)

(declare-fun tp!2160129 () Bool)

(assert (=> b!7454280 (= e!4449291 (and tp!2160132 tp!2160129))))

(assert (= (and b!7453667 (is-ElementMatch!19508 (regTwo!39529 rTail!78))) b!7454277))

(assert (= (and b!7453667 (is-Concat!28353 (regTwo!39529 rTail!78))) b!7454278))

(assert (= (and b!7453667 (is-Star!19508 (regTwo!39529 rTail!78))) b!7454279))

(assert (= (and b!7453667 (is-Union!19508 (regTwo!39529 rTail!78))) b!7454280))

(declare-fun b!7454285 () Bool)

(declare-fun e!4449294 () Bool)

(declare-fun tp!2160135 () Bool)

(assert (=> b!7454285 (= e!4449294 (and tp_is_empty!49305 tp!2160135))))

(assert (=> b!7453652 (= tp!2160047 e!4449294)))

(assert (= (and b!7453652 (is-Cons!72100 (t!386793 s!13591))) b!7454285))

(declare-fun e!4449295 () Bool)

(assert (=> b!7453663 (= tp!2160054 e!4449295)))

(declare-fun b!7454288 () Bool)

(declare-fun tp!2160136 () Bool)

(assert (=> b!7454288 (= e!4449295 tp!2160136)))

(declare-fun b!7454286 () Bool)

(assert (=> b!7454286 (= e!4449295 tp_is_empty!49305)))

(declare-fun b!7454287 () Bool)

(declare-fun tp!2160139 () Bool)

(declare-fun tp!2160138 () Bool)

(assert (=> b!7454287 (= e!4449295 (and tp!2160139 tp!2160138))))

(declare-fun b!7454289 () Bool)

(declare-fun tp!2160140 () Bool)

(declare-fun tp!2160137 () Bool)

(assert (=> b!7454289 (= e!4449295 (and tp!2160140 tp!2160137))))

(assert (= (and b!7453663 (is-ElementMatch!19508 (regOne!39528 rTail!78))) b!7454286))

(assert (= (and b!7453663 (is-Concat!28353 (regOne!39528 rTail!78))) b!7454287))

(assert (= (and b!7453663 (is-Star!19508 (regOne!39528 rTail!78))) b!7454288))

(assert (= (and b!7453663 (is-Union!19508 (regOne!39528 rTail!78))) b!7454289))

(declare-fun e!4449296 () Bool)

(assert (=> b!7453663 (= tp!2160046 e!4449296)))

(declare-fun b!7454292 () Bool)

(declare-fun tp!2160141 () Bool)

(assert (=> b!7454292 (= e!4449296 tp!2160141)))

(declare-fun b!7454290 () Bool)

(assert (=> b!7454290 (= e!4449296 tp_is_empty!49305)))

(declare-fun b!7454291 () Bool)

(declare-fun tp!2160144 () Bool)

(declare-fun tp!2160143 () Bool)

(assert (=> b!7454291 (= e!4449296 (and tp!2160144 tp!2160143))))

(declare-fun b!7454293 () Bool)

(declare-fun tp!2160145 () Bool)

(declare-fun tp!2160142 () Bool)

(assert (=> b!7454293 (= e!4449296 (and tp!2160145 tp!2160142))))

(assert (= (and b!7453663 (is-ElementMatch!19508 (regTwo!39528 rTail!78))) b!7454290))

(assert (= (and b!7453663 (is-Concat!28353 (regTwo!39528 rTail!78))) b!7454291))

(assert (= (and b!7453663 (is-Star!19508 (regTwo!39528 rTail!78))) b!7454292))

(assert (= (and b!7453663 (is-Union!19508 (regTwo!39528 rTail!78))) b!7454293))

(declare-fun e!4449297 () Bool)

(assert (=> b!7453658 (= tp!2160057 e!4449297)))

(declare-fun b!7454296 () Bool)

(declare-fun tp!2160146 () Bool)

(assert (=> b!7454296 (= e!4449297 tp!2160146)))

(declare-fun b!7454294 () Bool)

(assert (=> b!7454294 (= e!4449297 tp_is_empty!49305)))

(declare-fun b!7454295 () Bool)

(declare-fun tp!2160149 () Bool)

(declare-fun tp!2160148 () Bool)

(assert (=> b!7454295 (= e!4449297 (and tp!2160149 tp!2160148))))

(declare-fun b!7454297 () Bool)

(declare-fun tp!2160150 () Bool)

(declare-fun tp!2160147 () Bool)

(assert (=> b!7454297 (= e!4449297 (and tp!2160150 tp!2160147))))

(assert (= (and b!7453658 (is-ElementMatch!19508 (regOne!39529 r2!5783))) b!7454294))

(assert (= (and b!7453658 (is-Concat!28353 (regOne!39529 r2!5783))) b!7454295))

(assert (= (and b!7453658 (is-Star!19508 (regOne!39529 r2!5783))) b!7454296))

(assert (= (and b!7453658 (is-Union!19508 (regOne!39529 r2!5783))) b!7454297))

(declare-fun e!4449298 () Bool)

(assert (=> b!7453658 (= tp!2160044 e!4449298)))

(declare-fun b!7454300 () Bool)

(declare-fun tp!2160151 () Bool)

(assert (=> b!7454300 (= e!4449298 tp!2160151)))

(declare-fun b!7454298 () Bool)

(assert (=> b!7454298 (= e!4449298 tp_is_empty!49305)))

(declare-fun b!7454299 () Bool)

(declare-fun tp!2160154 () Bool)

(declare-fun tp!2160153 () Bool)

(assert (=> b!7454299 (= e!4449298 (and tp!2160154 tp!2160153))))

(declare-fun b!7454301 () Bool)

(declare-fun tp!2160155 () Bool)

(declare-fun tp!2160152 () Bool)

(assert (=> b!7454301 (= e!4449298 (and tp!2160155 tp!2160152))))

(assert (= (and b!7453658 (is-ElementMatch!19508 (regTwo!39529 r2!5783))) b!7454298))

(assert (= (and b!7453658 (is-Concat!28353 (regTwo!39529 r2!5783))) b!7454299))

(assert (= (and b!7453658 (is-Star!19508 (regTwo!39529 r2!5783))) b!7454300))

(assert (= (and b!7453658 (is-Union!19508 (regTwo!39529 r2!5783))) b!7454301))

(declare-fun e!4449299 () Bool)

(assert (=> b!7453659 (= tp!2160050 e!4449299)))

(declare-fun b!7454304 () Bool)

(declare-fun tp!2160156 () Bool)

(assert (=> b!7454304 (= e!4449299 tp!2160156)))

(declare-fun b!7454302 () Bool)

(assert (=> b!7454302 (= e!4449299 tp_is_empty!49305)))

(declare-fun b!7454303 () Bool)

(declare-fun tp!2160159 () Bool)

(declare-fun tp!2160158 () Bool)

(assert (=> b!7454303 (= e!4449299 (and tp!2160159 tp!2160158))))

(declare-fun b!7454305 () Bool)

(declare-fun tp!2160160 () Bool)

(declare-fun tp!2160157 () Bool)

(assert (=> b!7454305 (= e!4449299 (and tp!2160160 tp!2160157))))

(assert (= (and b!7453659 (is-ElementMatch!19508 (regOne!39528 r1!5845))) b!7454302))

(assert (= (and b!7453659 (is-Concat!28353 (regOne!39528 r1!5845))) b!7454303))

(assert (= (and b!7453659 (is-Star!19508 (regOne!39528 r1!5845))) b!7454304))

(assert (= (and b!7453659 (is-Union!19508 (regOne!39528 r1!5845))) b!7454305))

(declare-fun e!4449300 () Bool)

(assert (=> b!7453659 (= tp!2160056 e!4449300)))

(declare-fun b!7454308 () Bool)

(declare-fun tp!2160161 () Bool)

(assert (=> b!7454308 (= e!4449300 tp!2160161)))

(declare-fun b!7454306 () Bool)

(assert (=> b!7454306 (= e!4449300 tp_is_empty!49305)))

(declare-fun b!7454307 () Bool)

(declare-fun tp!2160164 () Bool)

(declare-fun tp!2160163 () Bool)

(assert (=> b!7454307 (= e!4449300 (and tp!2160164 tp!2160163))))

(declare-fun b!7454309 () Bool)

(declare-fun tp!2160165 () Bool)

(declare-fun tp!2160162 () Bool)

(assert (=> b!7454309 (= e!4449300 (and tp!2160165 tp!2160162))))

(assert (= (and b!7453659 (is-ElementMatch!19508 (regTwo!39528 r1!5845))) b!7454306))

(assert (= (and b!7453659 (is-Concat!28353 (regTwo!39528 r1!5845))) b!7454307))

(assert (= (and b!7453659 (is-Star!19508 (regTwo!39528 r1!5845))) b!7454308))

(assert (= (and b!7453659 (is-Union!19508 (regTwo!39528 r1!5845))) b!7454309))

(declare-fun e!4449301 () Bool)

(assert (=> b!7453654 (= tp!2160051 e!4449301)))

(declare-fun b!7454312 () Bool)

(declare-fun tp!2160166 () Bool)

(assert (=> b!7454312 (= e!4449301 tp!2160166)))

(declare-fun b!7454310 () Bool)

(assert (=> b!7454310 (= e!4449301 tp_is_empty!49305)))

(declare-fun b!7454311 () Bool)

(declare-fun tp!2160169 () Bool)

(declare-fun tp!2160168 () Bool)

(assert (=> b!7454311 (= e!4449301 (and tp!2160169 tp!2160168))))

(declare-fun b!7454313 () Bool)

(declare-fun tp!2160170 () Bool)

(declare-fun tp!2160167 () Bool)

(assert (=> b!7454313 (= e!4449301 (and tp!2160170 tp!2160167))))

(assert (= (and b!7453654 (is-ElementMatch!19508 (reg!19837 rTail!78))) b!7454310))

(assert (= (and b!7453654 (is-Concat!28353 (reg!19837 rTail!78))) b!7454311))

(assert (= (and b!7453654 (is-Star!19508 (reg!19837 rTail!78))) b!7454312))

(assert (= (and b!7453654 (is-Union!19508 (reg!19837 rTail!78))) b!7454313))

(declare-fun e!4449302 () Bool)

(assert (=> b!7453670 (= tp!2160048 e!4449302)))

(declare-fun b!7454316 () Bool)

(declare-fun tp!2160171 () Bool)

(assert (=> b!7454316 (= e!4449302 tp!2160171)))

(declare-fun b!7454314 () Bool)

(assert (=> b!7454314 (= e!4449302 tp_is_empty!49305)))

(declare-fun b!7454315 () Bool)

(declare-fun tp!2160174 () Bool)

(declare-fun tp!2160173 () Bool)

(assert (=> b!7454315 (= e!4449302 (and tp!2160174 tp!2160173))))

(declare-fun b!7454317 () Bool)

(declare-fun tp!2160175 () Bool)

(declare-fun tp!2160172 () Bool)

(assert (=> b!7454317 (= e!4449302 (and tp!2160175 tp!2160172))))

(assert (= (and b!7453670 (is-ElementMatch!19508 (regOne!39529 r1!5845))) b!7454314))

(assert (= (and b!7453670 (is-Concat!28353 (regOne!39529 r1!5845))) b!7454315))

(assert (= (and b!7453670 (is-Star!19508 (regOne!39529 r1!5845))) b!7454316))

(assert (= (and b!7453670 (is-Union!19508 (regOne!39529 r1!5845))) b!7454317))

(declare-fun e!4449303 () Bool)

(assert (=> b!7453670 (= tp!2160053 e!4449303)))

(declare-fun b!7454320 () Bool)

(declare-fun tp!2160176 () Bool)

(assert (=> b!7454320 (= e!4449303 tp!2160176)))

(declare-fun b!7454318 () Bool)

(assert (=> b!7454318 (= e!4449303 tp_is_empty!49305)))

(declare-fun b!7454319 () Bool)

(declare-fun tp!2160179 () Bool)

(declare-fun tp!2160178 () Bool)

(assert (=> b!7454319 (= e!4449303 (and tp!2160179 tp!2160178))))

(declare-fun b!7454321 () Bool)

(declare-fun tp!2160180 () Bool)

(declare-fun tp!2160177 () Bool)

(assert (=> b!7454321 (= e!4449303 (and tp!2160180 tp!2160177))))

(assert (= (and b!7453670 (is-ElementMatch!19508 (regTwo!39529 r1!5845))) b!7454318))

(assert (= (and b!7453670 (is-Concat!28353 (regTwo!39529 r1!5845))) b!7454319))

(assert (= (and b!7453670 (is-Star!19508 (regTwo!39529 r1!5845))) b!7454320))

(assert (= (and b!7453670 (is-Union!19508 (regTwo!39529 r1!5845))) b!7454321))

(declare-fun e!4449304 () Bool)

(assert (=> b!7453660 (= tp!2160045 e!4449304)))

(declare-fun b!7454324 () Bool)

(declare-fun tp!2160181 () Bool)

(assert (=> b!7454324 (= e!4449304 tp!2160181)))

(declare-fun b!7454322 () Bool)

(assert (=> b!7454322 (= e!4449304 tp_is_empty!49305)))

(declare-fun b!7454323 () Bool)

(declare-fun tp!2160184 () Bool)

(declare-fun tp!2160183 () Bool)

(assert (=> b!7454323 (= e!4449304 (and tp!2160184 tp!2160183))))

(declare-fun b!7454325 () Bool)

(declare-fun tp!2160185 () Bool)

(declare-fun tp!2160182 () Bool)

(assert (=> b!7454325 (= e!4449304 (and tp!2160185 tp!2160182))))

(assert (= (and b!7453660 (is-ElementMatch!19508 (regOne!39528 r2!5783))) b!7454322))

(assert (= (and b!7453660 (is-Concat!28353 (regOne!39528 r2!5783))) b!7454323))

(assert (= (and b!7453660 (is-Star!19508 (regOne!39528 r2!5783))) b!7454324))

(assert (= (and b!7453660 (is-Union!19508 (regOne!39528 r2!5783))) b!7454325))

(declare-fun e!4449305 () Bool)

(assert (=> b!7453660 (= tp!2160055 e!4449305)))

(declare-fun b!7454328 () Bool)

(declare-fun tp!2160186 () Bool)

(assert (=> b!7454328 (= e!4449305 tp!2160186)))

(declare-fun b!7454326 () Bool)

(assert (=> b!7454326 (= e!4449305 tp_is_empty!49305)))

(declare-fun b!7454327 () Bool)

(declare-fun tp!2160189 () Bool)

(declare-fun tp!2160188 () Bool)

(assert (=> b!7454327 (= e!4449305 (and tp!2160189 tp!2160188))))

(declare-fun b!7454329 () Bool)

(declare-fun tp!2160190 () Bool)

(declare-fun tp!2160187 () Bool)

(assert (=> b!7454329 (= e!4449305 (and tp!2160190 tp!2160187))))

(assert (= (and b!7453660 (is-ElementMatch!19508 (regTwo!39528 r2!5783))) b!7454326))

(assert (= (and b!7453660 (is-Concat!28353 (regTwo!39528 r2!5783))) b!7454327))

(assert (= (and b!7453660 (is-Star!19508 (regTwo!39528 r2!5783))) b!7454328))

(assert (= (and b!7453660 (is-Union!19508 (regTwo!39528 r2!5783))) b!7454329))

(declare-fun e!4449306 () Bool)

(assert (=> b!7453671 (= tp!2160058 e!4449306)))

(declare-fun b!7454332 () Bool)

(declare-fun tp!2160191 () Bool)

(assert (=> b!7454332 (= e!4449306 tp!2160191)))

(declare-fun b!7454330 () Bool)

(assert (=> b!7454330 (= e!4449306 tp_is_empty!49305)))

(declare-fun b!7454331 () Bool)

(declare-fun tp!2160194 () Bool)

(declare-fun tp!2160193 () Bool)

(assert (=> b!7454331 (= e!4449306 (and tp!2160194 tp!2160193))))

(declare-fun b!7454333 () Bool)

(declare-fun tp!2160195 () Bool)

(declare-fun tp!2160192 () Bool)

(assert (=> b!7454333 (= e!4449306 (and tp!2160195 tp!2160192))))

(assert (= (and b!7453671 (is-ElementMatch!19508 (reg!19837 r2!5783))) b!7454330))

(assert (= (and b!7453671 (is-Concat!28353 (reg!19837 r2!5783))) b!7454331))

(assert (= (and b!7453671 (is-Star!19508 (reg!19837 r2!5783))) b!7454332))

(assert (= (and b!7453671 (is-Union!19508 (reg!19837 r2!5783))) b!7454333))

(push 1)

(assert (not bm!684730))

(assert (not b!7453792))

(assert (not b!7454296))

(assert (not b!7453890))

(assert (not b!7454014))

(assert (not b!7454303))

(assert (not d!2297226))

(assert (not b!7454227))

(assert (not b!7454225))

(assert (not d!2297272))

(assert (not bm!684741))

(assert (not b!7454232))

(assert (not b!7454069))

(assert (not b!7454001))

(assert (not b!7454272))

(assert (not bm!684764))

(assert (not bm!684725))

(assert (not b!7454220))

(assert (not b!7453855))

(assert (not b!7454270))

(assert (not b!7453853))

(assert (not b!7454311))

(assert (not b!7454293))

(assert (not b!7453952))

(assert (not b!7454080))

(assert (not b!7453910))

(assert (not b!7454320))

(assert (not b!7454300))

(assert (not b!7453882))

(assert (not bm!684761))

(assert (not bm!684771))

(assert (not d!2297212))

(assert (not b!7454315))

(assert (not b!7453907))

(assert (not d!2297214))

(assert (not b!7453985))

(assert (not bm!684742))

(assert (not d!2297234))

(assert (not b!7454082))

(assert (not b!7454289))

(assert (not d!2297292))

(assert (not b!7454019))

(assert (not b!7454021))

(assert (not b!7454070))

(assert (not b!7454329))

(assert (not b!7454313))

(assert (not b!7454071))

(assert (not b!7454223))

(assert (not d!2297260))

(assert (not bm!684763))

(assert (not d!2297264))

(assert (not b!7453915))

(assert (not bm!684737))

(assert (not d!2297232))

(assert (not d!2297296))

(assert (not d!2297250))

(assert (not bm!684757))

(assert (not b!7454231))

(assert (not b!7453881))

(assert (not b!7454299))

(assert (not bm!684743))

(assert (not bm!684777))

(assert (not b!7454061))

(assert (not b!7454305))

(assert (not bm!684784))

(assert (not b!7454113))

(assert (not b!7454140))

(assert (not b!7454324))

(assert (not b!7454287))

(assert (not b!7454240))

(assert (not b!7454312))

(assert (not b!7454331))

(assert (not b!7454078))

(assert (not b!7453945))

(assert (not d!2297294))

(assert (not bm!684739))

(assert (not d!2297206))

(assert (not b!7454316))

(assert (not b!7454308))

(assert (not b!7454120))

(assert (not b!7454052))

(assert (not b!7453992))

(assert (not b!7453857))

(assert (not b!7453901))

(assert (not b!7454145))

(assert (not b!7453919))

(assert (not b!7453862))

(assert (not b!7454297))

(assert (not b!7453785))

(assert (not b!7453981))

(assert (not b!7453892))

(assert (not bm!684736))

(assert (not b!7454325))

(assert (not bm!684735))

(assert (not b!7453994))

(assert (not bm!684724))

(assert (not b!7454279))

(assert (not b!7454222))

(assert (not bm!684732))

(assert (not b!7454301))

(assert (not d!2297220))

(assert (not bm!684740))

(assert (not b!7454106))

(assert (not d!2297222))

(assert (not d!2297266))

(assert (not bm!684766))

(assert (not b!7454295))

(assert (not b!7453906))

(assert (not b!7454011))

(assert (not d!2297262))

(assert (not b!7453983))

(assert (not bm!684773))

(assert (not b!7454319))

(assert (not b!7454285))

(assert (not bm!684760))

(assert (not b!7454304))

(assert (not b!7454271))

(assert (not b!7454332))

(assert (not b!7454242))

(assert (not b!7453917))

(assert (not d!2297242))

(assert (not bm!684744))

(assert (not b!7454278))

(assert (not b!7454089))

(assert (not bm!684774))

(assert (not b!7453908))

(assert (not b!7454317))

(assert (not b!7453894))

(assert (not b!7453885))

(assert (not b!7453883))

(assert (not d!2297282))

(assert (not b!7454221))

(assert (not bm!684767))

(assert (not b!7454073))

(assert (not b!7454137))

(assert (not b!7454138))

(assert (not b!7454043))

(assert (not bm!684765))

(assert (not b!7453854))

(assert (not b!7454292))

(assert (not b!7453937))

(assert (not bm!684738))

(assert (not b!7453990))

(assert (not b!7454327))

(assert (not b!7454276))

(assert (not b!7454309))

(assert (not b!7454235))

(assert tp_is_empty!49305)

(assert (not bm!684745))

(assert (not b!7454291))

(assert (not b!7454275))

(assert (not b!7454328))

(assert (not bm!684734))

(assert (not b!7454147))

(assert (not d!2297240))

(assert (not b!7454280))

(assert (not b!7454307))

(assert (not bm!684758))

(assert (not b!7453926))

(assert (not d!2297238))

(assert (not b!7454010))

(assert (not bm!684733))

(assert (not b!7454233))

(assert (not bm!684772))

(assert (not b!7454288))

(assert (not d!2297278))

(assert (not b!7454321))

(assert (not b!7454333))

(assert (not b!7454323))

(assert (not b!7454012))

(assert (not b!7454136))

(assert (not b!7453982))

(assert (not b!7453864))

(assert (not b!7454274))

(assert (not b!7453930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

