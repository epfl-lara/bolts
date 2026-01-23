; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723450 () Bool)

(assert start!723450)

(declare-fun b!7452125 () Bool)

(assert (=> b!7452125 true))

(assert (=> b!7452125 true))

(assert (=> b!7452125 true))

(declare-fun lambda!460969 () Int)

(declare-fun lambda!460968 () Int)

(assert (=> b!7452125 (not (= lambda!460969 lambda!460968))))

(assert (=> b!7452125 true))

(assert (=> b!7452125 true))

(assert (=> b!7452125 true))

(declare-fun e!4448248 () Bool)

(declare-fun e!4448252 () Bool)

(assert (=> b!7452125 (= e!4448248 e!4448252)))

(declare-fun res!2989112 () Bool)

(assert (=> b!7452125 (=> res!2989112 e!4448252)))

(declare-datatypes ((C!39272 0))(
  ( (C!39273 (val!30034 Int)) )
))
(declare-datatypes ((Regex!19499 0))(
  ( (ElementMatch!19499 (c!1377934 C!39272)) (Concat!28344 (regOne!39510 Regex!19499) (regTwo!39510 Regex!19499)) (EmptyExpr!19499) (Star!19499 (reg!19828 Regex!19499)) (EmptyLang!19499) (Union!19499 (regOne!39511 Regex!19499) (regTwo!39511 Regex!19499)) )
))
(declare-fun lt!2620498 () Regex!19499)

(declare-datatypes ((List!72215 0))(
  ( (Nil!72091) (Cons!72091 (h!78539 C!39272) (t!386784 List!72215)) )
))
(declare-datatypes ((tuple2!68452 0))(
  ( (tuple2!68453 (_1!37529 List!72215) (_2!37529 List!72215)) )
))
(declare-fun lt!2620500 () tuple2!68452)

(declare-fun matchR!9263 (Regex!19499 List!72215) Bool)

(assert (=> b!7452125 (= res!2989112 (not (matchR!9263 lt!2620498 (_1!37529 lt!2620500))))))

(declare-datatypes ((Option!17058 0))(
  ( (None!17057) (Some!17057 (v!54186 tuple2!68452)) )
))
(declare-fun lt!2620495 () Option!17058)

(declare-fun get!25132 (Option!17058) tuple2!68452)

(assert (=> b!7452125 (= lt!2620500 (get!25132 lt!2620495))))

(declare-fun Exists!4120 (Int) Bool)

(assert (=> b!7452125 (= (Exists!4120 lambda!460968) (Exists!4120 lambda!460969))))

(declare-fun s!13591 () List!72215)

(declare-datatypes ((Unit!165833 0))(
  ( (Unit!165834) )
))
(declare-fun lt!2620492 () Unit!165833)

(declare-fun rTail!78 () Regex!19499)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2456 (Regex!19499 Regex!19499 List!72215) Unit!165833)

(assert (=> b!7452125 (= lt!2620492 (lemmaExistCutMatchRandMatchRSpecEquivalent!2456 lt!2620498 rTail!78 s!13591))))

(declare-fun isDefined!13747 (Option!17058) Bool)

(assert (=> b!7452125 (= (isDefined!13747 lt!2620495) (Exists!4120 lambda!460968))))

(declare-fun findConcatSeparation!3180 (Regex!19499 Regex!19499 List!72215 List!72215 List!72215) Option!17058)

(assert (=> b!7452125 (= lt!2620495 (findConcatSeparation!3180 lt!2620498 rTail!78 Nil!72091 s!13591 s!13591))))

(declare-fun lt!2620501 () Unit!165833)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2938 (Regex!19499 Regex!19499 List!72215) Unit!165833)

(assert (=> b!7452125 (= lt!2620501 (lemmaFindConcatSeparationEquivalentToExists!2938 lt!2620498 rTail!78 s!13591))))

(declare-fun b!7452127 () Bool)

(declare-fun e!4448247 () Bool)

(declare-fun tp!2159448 () Bool)

(declare-fun tp!2159446 () Bool)

(assert (=> b!7452127 (= e!4448247 (and tp!2159448 tp!2159446))))

(declare-fun b!7452128 () Bool)

(declare-fun e!4448251 () Bool)

(declare-fun tp!2159438 () Bool)

(declare-fun tp!2159439 () Bool)

(assert (=> b!7452128 (= e!4448251 (and tp!2159438 tp!2159439))))

(declare-fun b!7452129 () Bool)

(declare-fun res!2989116 () Bool)

(assert (=> b!7452129 (=> res!2989116 e!4448252)))

(assert (=> b!7452129 (= res!2989116 (not (matchR!9263 rTail!78 (_2!37529 lt!2620500))))))

(declare-fun b!7452130 () Bool)

(declare-fun e!4448250 () Bool)

(assert (=> b!7452130 (= e!4448250 (not e!4448248))))

(declare-fun res!2989113 () Bool)

(assert (=> b!7452130 (=> res!2989113 e!4448248)))

(declare-fun lt!2620494 () Bool)

(assert (=> b!7452130 (= res!2989113 (not lt!2620494))))

(declare-fun lt!2620503 () Regex!19499)

(declare-fun matchRSpec!4178 (Regex!19499 List!72215) Bool)

(assert (=> b!7452130 (= (matchR!9263 lt!2620503 s!13591) (matchRSpec!4178 lt!2620503 s!13591))))

(declare-fun lt!2620491 () Unit!165833)

(declare-fun mainMatchTheorem!4172 (Regex!19499 List!72215) Unit!165833)

(assert (=> b!7452130 (= lt!2620491 (mainMatchTheorem!4172 lt!2620503 s!13591))))

(declare-fun lt!2620502 () Regex!19499)

(assert (=> b!7452130 (= lt!2620494 (matchRSpec!4178 lt!2620502 s!13591))))

(assert (=> b!7452130 (= lt!2620494 (matchR!9263 lt!2620502 s!13591))))

(declare-fun lt!2620499 () Unit!165833)

(assert (=> b!7452130 (= lt!2620499 (mainMatchTheorem!4172 lt!2620502 s!13591))))

(declare-fun r2!5783 () Regex!19499)

(declare-fun r1!5845 () Regex!19499)

(assert (=> b!7452130 (= lt!2620503 (Union!19499 (Concat!28344 r1!5845 rTail!78) (Concat!28344 r2!5783 rTail!78)))))

(assert (=> b!7452130 (= lt!2620502 (Concat!28344 lt!2620498 rTail!78))))

(assert (=> b!7452130 (= lt!2620498 (Union!19499 r1!5845 r2!5783))))

(declare-fun b!7452131 () Bool)

(declare-fun e!4448249 () Bool)

(declare-fun tp!2159436 () Bool)

(declare-fun tp!2159447 () Bool)

(assert (=> b!7452131 (= e!4448249 (and tp!2159436 tp!2159447))))

(declare-fun b!7452132 () Bool)

(declare-fun tp_is_empty!49287 () Bool)

(assert (=> b!7452132 (= e!4448249 tp_is_empty!49287)))

(declare-fun b!7452133 () Bool)

(declare-fun tp!2159451 () Bool)

(declare-fun tp!2159442 () Bool)

(assert (=> b!7452133 (= e!4448251 (and tp!2159451 tp!2159442))))

(declare-fun b!7452134 () Bool)

(declare-fun tp!2159449 () Bool)

(declare-fun tp!2159441 () Bool)

(assert (=> b!7452134 (= e!4448247 (and tp!2159449 tp!2159441))))

(declare-fun b!7452135 () Bool)

(assert (=> b!7452135 (= e!4448251 tp_is_empty!49287)))

(declare-fun b!7452136 () Bool)

(declare-fun tp!2159443 () Bool)

(assert (=> b!7452136 (= e!4448251 tp!2159443)))

(declare-fun b!7452137 () Bool)

(declare-fun res!2989114 () Bool)

(assert (=> b!7452137 (=> (not res!2989114) (not e!4448250))))

(declare-fun validRegex!10013 (Regex!19499) Bool)

(assert (=> b!7452137 (= res!2989114 (validRegex!10013 rTail!78))))

(declare-fun b!7452126 () Bool)

(declare-fun tp!2159445 () Bool)

(assert (=> b!7452126 (= e!4448247 tp!2159445)))

(declare-fun res!2989115 () Bool)

(assert (=> start!723450 (=> (not res!2989115) (not e!4448250))))

(assert (=> start!723450 (= res!2989115 (validRegex!10013 r1!5845))))

(assert (=> start!723450 e!4448250))

(assert (=> start!723450 e!4448249))

(assert (=> start!723450 e!4448251))

(assert (=> start!723450 e!4448247))

(declare-fun e!4448246 () Bool)

(assert (=> start!723450 e!4448246))

(declare-fun b!7452138 () Bool)

(declare-fun tp!2159437 () Bool)

(assert (=> b!7452138 (= e!4448246 (and tp_is_empty!49287 tp!2159437))))

(declare-fun b!7452139 () Bool)

(declare-fun res!2989111 () Bool)

(assert (=> b!7452139 (=> (not res!2989111) (not e!4448250))))

(assert (=> b!7452139 (= res!2989111 (validRegex!10013 r2!5783))))

(declare-fun b!7452140 () Bool)

(declare-fun tp!2159444 () Bool)

(assert (=> b!7452140 (= e!4448249 tp!2159444)))

(declare-fun b!7452141 () Bool)

(assert (=> b!7452141 (= e!4448247 tp_is_empty!49287)))

(declare-fun b!7452142 () Bool)

(assert (=> b!7452142 (= e!4448252 true)))

(assert (=> b!7452142 (= (matchR!9263 r1!5845 (_1!37529 lt!2620500)) (matchRSpec!4178 r1!5845 (_1!37529 lt!2620500)))))

(declare-fun lt!2620496 () Unit!165833)

(assert (=> b!7452142 (= lt!2620496 (mainMatchTheorem!4172 r1!5845 (_1!37529 lt!2620500)))))

(assert (=> b!7452142 (matchRSpec!4178 rTail!78 (_2!37529 lt!2620500))))

(declare-fun lt!2620493 () Unit!165833)

(assert (=> b!7452142 (= lt!2620493 (mainMatchTheorem!4172 rTail!78 (_2!37529 lt!2620500)))))

(assert (=> b!7452142 (matchRSpec!4178 lt!2620498 (_1!37529 lt!2620500))))

(declare-fun lt!2620497 () Unit!165833)

(assert (=> b!7452142 (= lt!2620497 (mainMatchTheorem!4172 lt!2620498 (_1!37529 lt!2620500)))))

(declare-fun b!7452143 () Bool)

(declare-fun tp!2159440 () Bool)

(declare-fun tp!2159450 () Bool)

(assert (=> b!7452143 (= e!4448249 (and tp!2159440 tp!2159450))))

(assert (= (and start!723450 res!2989115) b!7452139))

(assert (= (and b!7452139 res!2989111) b!7452137))

(assert (= (and b!7452137 res!2989114) b!7452130))

(assert (= (and b!7452130 (not res!2989113)) b!7452125))

(assert (= (and b!7452125 (not res!2989112)) b!7452129))

(assert (= (and b!7452129 (not res!2989116)) b!7452142))

(get-info :version)

(assert (= (and start!723450 ((_ is ElementMatch!19499) r1!5845)) b!7452132))

(assert (= (and start!723450 ((_ is Concat!28344) r1!5845)) b!7452131))

(assert (= (and start!723450 ((_ is Star!19499) r1!5845)) b!7452140))

(assert (= (and start!723450 ((_ is Union!19499) r1!5845)) b!7452143))

(assert (= (and start!723450 ((_ is ElementMatch!19499) r2!5783)) b!7452135))

(assert (= (and start!723450 ((_ is Concat!28344) r2!5783)) b!7452128))

(assert (= (and start!723450 ((_ is Star!19499) r2!5783)) b!7452136))

(assert (= (and start!723450 ((_ is Union!19499) r2!5783)) b!7452133))

(assert (= (and start!723450 ((_ is ElementMatch!19499) rTail!78)) b!7452141))

(assert (= (and start!723450 ((_ is Concat!28344) rTail!78)) b!7452127))

(assert (= (and start!723450 ((_ is Star!19499) rTail!78)) b!7452126))

(assert (= (and start!723450 ((_ is Union!19499) rTail!78)) b!7452134))

(assert (= (and start!723450 ((_ is Cons!72091) s!13591)) b!7452138))

(declare-fun m!8057506 () Bool)

(assert (=> b!7452130 m!8057506))

(declare-fun m!8057508 () Bool)

(assert (=> b!7452130 m!8057508))

(declare-fun m!8057510 () Bool)

(assert (=> b!7452130 m!8057510))

(declare-fun m!8057512 () Bool)

(assert (=> b!7452130 m!8057512))

(declare-fun m!8057514 () Bool)

(assert (=> b!7452130 m!8057514))

(declare-fun m!8057516 () Bool)

(assert (=> b!7452130 m!8057516))

(declare-fun m!8057518 () Bool)

(assert (=> b!7452129 m!8057518))

(declare-fun m!8057520 () Bool)

(assert (=> b!7452142 m!8057520))

(declare-fun m!8057522 () Bool)

(assert (=> b!7452142 m!8057522))

(declare-fun m!8057524 () Bool)

(assert (=> b!7452142 m!8057524))

(declare-fun m!8057526 () Bool)

(assert (=> b!7452142 m!8057526))

(declare-fun m!8057528 () Bool)

(assert (=> b!7452142 m!8057528))

(declare-fun m!8057530 () Bool)

(assert (=> b!7452142 m!8057530))

(declare-fun m!8057532 () Bool)

(assert (=> b!7452142 m!8057532))

(declare-fun m!8057534 () Bool)

(assert (=> b!7452125 m!8057534))

(declare-fun m!8057536 () Bool)

(assert (=> b!7452125 m!8057536))

(assert (=> b!7452125 m!8057534))

(declare-fun m!8057538 () Bool)

(assert (=> b!7452125 m!8057538))

(declare-fun m!8057540 () Bool)

(assert (=> b!7452125 m!8057540))

(declare-fun m!8057542 () Bool)

(assert (=> b!7452125 m!8057542))

(declare-fun m!8057544 () Bool)

(assert (=> b!7452125 m!8057544))

(declare-fun m!8057546 () Bool)

(assert (=> b!7452125 m!8057546))

(declare-fun m!8057548 () Bool)

(assert (=> b!7452125 m!8057548))

(declare-fun m!8057550 () Bool)

(assert (=> b!7452137 m!8057550))

(declare-fun m!8057552 () Bool)

(assert (=> start!723450 m!8057552))

(declare-fun m!8057554 () Bool)

(assert (=> b!7452139 m!8057554))

(check-sat (not b!7452126) (not b!7452138) (not b!7452137) (not b!7452127) (not b!7452143) (not b!7452128) (not b!7452139) (not b!7452125) (not b!7452131) (not b!7452140) (not b!7452134) (not b!7452130) (not b!7452133) (not b!7452142) (not b!7452129) (not b!7452136) (not start!723450) tp_is_empty!49287)
(check-sat)
