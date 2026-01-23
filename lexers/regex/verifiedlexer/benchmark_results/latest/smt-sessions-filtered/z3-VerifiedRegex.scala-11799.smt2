; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664590 () Bool)

(assert start!664590)

(declare-fun b!6897718 () Bool)

(assert (=> b!6897718 true))

(assert (=> b!6897718 true))

(assert (=> b!6897718 true))

(declare-fun lambda!391216 () Int)

(declare-fun lambda!391215 () Int)

(assert (=> b!6897718 (not (= lambda!391216 lambda!391215))))

(assert (=> b!6897718 true))

(assert (=> b!6897718 true))

(assert (=> b!6897718 true))

(declare-fun bs!1841153 () Bool)

(declare-fun b!6897704 () Bool)

(assert (= bs!1841153 (and b!6897704 b!6897718)))

(declare-datatypes ((C!33960 0))(
  ( (C!33961 (val!26682 Int)) )
))
(declare-datatypes ((Regex!16845 0))(
  ( (ElementMatch!16845 (c!1281921 C!33960)) (Concat!25690 (regOne!34202 Regex!16845) (regTwo!34202 Regex!16845)) (EmptyExpr!16845) (Star!16845 (reg!17174 Regex!16845)) (EmptyLang!16845) (Union!16845 (regOne!34203 Regex!16845) (regTwo!34203 Regex!16845)) )
))
(declare-fun r1!6342 () Regex!16845)

(declare-datatypes ((List!66602 0))(
  ( (Nil!66478) (Cons!66478 (h!72926 C!33960) (t!380345 List!66602)) )
))
(declare-datatypes ((tuple2!67424 0))(
  ( (tuple2!67425 (_1!37015 List!66602) (_2!37015 List!66602)) )
))
(declare-fun lt!2464559 () tuple2!67424)

(declare-fun r3!135 () Regex!16845)

(declare-fun s!14361 () List!66602)

(declare-fun lt!2464553 () Regex!16845)

(declare-fun lambda!391217 () Int)

(declare-fun r2!6280 () Regex!16845)

(assert (=> bs!1841153 (= (and (= (_2!37015 lt!2464559) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464553)) (= lambda!391217 lambda!391215))))

(assert (=> bs!1841153 (not (= lambda!391217 lambda!391216))))

(assert (=> b!6897704 true))

(assert (=> b!6897704 true))

(assert (=> b!6897704 true))

(declare-fun lambda!391218 () Int)

(assert (=> bs!1841153 (not (= lambda!391218 lambda!391215))))

(assert (=> bs!1841153 (= (and (= (_2!37015 lt!2464559) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464553)) (= lambda!391218 lambda!391216))))

(assert (=> b!6897704 (not (= lambda!391218 lambda!391217))))

(assert (=> b!6897704 true))

(assert (=> b!6897704 true))

(assert (=> b!6897704 true))

(declare-fun b!6897703 () Bool)

(declare-fun e!4154421 () Bool)

(declare-fun tp!1898900 () Bool)

(assert (=> b!6897703 (= e!4154421 tp!1898900)))

(declare-fun e!4154422 () Bool)

(declare-fun e!4154423 () Bool)

(assert (=> b!6897704 (= e!4154422 e!4154423)))

(declare-fun res!2812353 () Bool)

(assert (=> b!6897704 (=> res!2812353 e!4154423)))

(declare-fun lt!2464566 () tuple2!67424)

(declare-fun matchR!8990 (Regex!16845 List!66602) Bool)

(assert (=> b!6897704 (= res!2812353 (not (matchR!8990 r2!6280 (_1!37015 lt!2464566))))))

(declare-datatypes ((Option!16624 0))(
  ( (None!16623) (Some!16623 (v!52895 tuple2!67424)) )
))
(declare-fun lt!2464556 () Option!16624)

(declare-fun get!23218 (Option!16624) tuple2!67424)

(assert (=> b!6897704 (= lt!2464566 (get!23218 lt!2464556))))

(declare-fun Exists!3853 (Int) Bool)

(assert (=> b!6897704 (= (Exists!3853 lambda!391217) (Exists!3853 lambda!391218))))

(declare-datatypes ((Unit!160410 0))(
  ( (Unit!160411) )
))
(declare-fun lt!2464551 () Unit!160410)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2326 (Regex!16845 Regex!16845 List!66602) Unit!160410)

(assert (=> b!6897704 (= lt!2464551 (lemmaExistCutMatchRandMatchRSpecEquivalent!2326 r2!6280 r3!135 (_2!37015 lt!2464559)))))

(declare-fun isDefined!13327 (Option!16624) Bool)

(assert (=> b!6897704 (= (isDefined!13327 lt!2464556) (Exists!3853 lambda!391217))))

(declare-fun findConcatSeparation!3038 (Regex!16845 Regex!16845 List!66602 List!66602 List!66602) Option!16624)

(assert (=> b!6897704 (= lt!2464556 (findConcatSeparation!3038 r2!6280 r3!135 Nil!66478 (_2!37015 lt!2464559) (_2!37015 lt!2464559)))))

(declare-fun lt!2464564 () Unit!160410)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2800 (Regex!16845 Regex!16845 List!66602) Unit!160410)

(assert (=> b!6897704 (= lt!2464564 (lemmaFindConcatSeparationEquivalentToExists!2800 r2!6280 r3!135 (_2!37015 lt!2464559)))))

(declare-fun matchRSpec!3908 (Regex!16845 List!66602) Bool)

(assert (=> b!6897704 (matchRSpec!3908 lt!2464553 (_2!37015 lt!2464559))))

(declare-fun lt!2464558 () Unit!160410)

(declare-fun mainMatchTheorem!3908 (Regex!16845 List!66602) Unit!160410)

(assert (=> b!6897704 (= lt!2464558 (mainMatchTheorem!3908 lt!2464553 (_2!37015 lt!2464559)))))

(declare-fun b!6897705 () Bool)

(declare-fun res!2812356 () Bool)

(declare-fun e!4154426 () Bool)

(assert (=> b!6897705 (=> (not res!2812356) (not e!4154426))))

(declare-fun validRegex!8553 (Regex!16845) Bool)

(assert (=> b!6897705 (= res!2812356 (validRegex!8553 r2!6280))))

(declare-fun b!6897706 () Bool)

(declare-fun e!4154417 () Bool)

(declare-fun tp!1898890 () Bool)

(declare-fun tp!1898889 () Bool)

(assert (=> b!6897706 (= e!4154417 (and tp!1898890 tp!1898889))))

(declare-fun b!6897707 () Bool)

(declare-fun res!2812352 () Bool)

(assert (=> b!6897707 (=> res!2812352 e!4154423)))

(assert (=> b!6897707 (= res!2812352 (not (matchR!8990 r3!135 (_2!37015 lt!2464566))))))

(declare-fun res!2812351 () Bool)

(assert (=> start!664590 (=> (not res!2812351) (not e!4154426))))

(assert (=> start!664590 (= res!2812351 (validRegex!8553 r1!6342))))

(assert (=> start!664590 e!4154426))

(assert (=> start!664590 e!4154421))

(assert (=> start!664590 e!4154417))

(declare-fun e!4154425 () Bool)

(assert (=> start!664590 e!4154425))

(declare-fun e!4154418 () Bool)

(assert (=> start!664590 e!4154418))

(declare-fun b!6897708 () Bool)

(declare-fun e!4154424 () Bool)

(assert (=> b!6897708 (= e!4154426 (not e!4154424))))

(declare-fun res!2812347 () Bool)

(assert (=> b!6897708 (=> res!2812347 e!4154424)))

(declare-fun lt!2464563 () Bool)

(assert (=> b!6897708 (= res!2812347 lt!2464563)))

(declare-fun lt!2464562 () Regex!16845)

(assert (=> b!6897708 (= (matchR!8990 lt!2464562 s!14361) (matchRSpec!3908 lt!2464562 s!14361))))

(declare-fun lt!2464552 () Unit!160410)

(assert (=> b!6897708 (= lt!2464552 (mainMatchTheorem!3908 lt!2464562 s!14361))))

(declare-fun lt!2464555 () Regex!16845)

(assert (=> b!6897708 (= lt!2464563 (matchRSpec!3908 lt!2464555 s!14361))))

(assert (=> b!6897708 (= lt!2464563 (matchR!8990 lt!2464555 s!14361))))

(declare-fun lt!2464557 () Unit!160410)

(assert (=> b!6897708 (= lt!2464557 (mainMatchTheorem!3908 lt!2464555 s!14361))))

(assert (=> b!6897708 (= lt!2464562 (Concat!25690 r1!6342 lt!2464553))))

(assert (=> b!6897708 (= lt!2464553 (Concat!25690 r2!6280 r3!135))))

(assert (=> b!6897708 (= lt!2464555 (Concat!25690 (Concat!25690 r1!6342 r2!6280) r3!135))))

(declare-fun b!6897709 () Bool)

(declare-fun tp!1898895 () Bool)

(declare-fun tp!1898891 () Bool)

(assert (=> b!6897709 (= e!4154425 (and tp!1898895 tp!1898891))))

(declare-fun b!6897710 () Bool)

(declare-fun tp_is_empty!42915 () Bool)

(assert (=> b!6897710 (= e!4154425 tp_is_empty!42915)))

(declare-fun b!6897711 () Bool)

(declare-fun res!2812355 () Bool)

(assert (=> b!6897711 (=> res!2812355 e!4154422)))

(assert (=> b!6897711 (= res!2812355 (not (matchR!8990 lt!2464553 (_2!37015 lt!2464559))))))

(declare-fun b!6897712 () Bool)

(declare-fun tp!1898899 () Bool)

(declare-fun tp!1898903 () Bool)

(assert (=> b!6897712 (= e!4154417 (and tp!1898899 tp!1898903))))

(declare-fun b!6897713 () Bool)

(assert (=> b!6897713 (= e!4154421 tp_is_empty!42915)))

(declare-fun b!6897714 () Bool)

(declare-fun tp!1898894 () Bool)

(declare-fun tp!1898901 () Bool)

(assert (=> b!6897714 (= e!4154421 (and tp!1898894 tp!1898901))))

(declare-fun b!6897715 () Bool)

(declare-fun tp!1898902 () Bool)

(declare-fun tp!1898892 () Bool)

(assert (=> b!6897715 (= e!4154421 (and tp!1898902 tp!1898892))))

(declare-fun b!6897716 () Bool)

(declare-fun e!4154419 () Bool)

(assert (=> b!6897716 (= e!4154419 true)))

(declare-fun lt!2464550 () List!66602)

(declare-fun ++!14898 (List!66602 List!66602) List!66602)

(assert (=> b!6897716 (= (++!14898 (++!14898 (_1!37015 lt!2464559) (_1!37015 lt!2464566)) (_2!37015 lt!2464566)) lt!2464550)))

(declare-fun lt!2464568 () Unit!160410)

(declare-fun lemmaConcatAssociativity!2978 (List!66602 List!66602 List!66602) Unit!160410)

(assert (=> b!6897716 (= lt!2464568 (lemmaConcatAssociativity!2978 (_1!37015 lt!2464559) (_1!37015 lt!2464566) (_2!37015 lt!2464566)))))

(declare-fun b!6897717 () Bool)

(assert (=> b!6897717 (= e!4154423 e!4154419)))

(declare-fun res!2812350 () Bool)

(assert (=> b!6897717 (=> res!2812350 e!4154419)))

(assert (=> b!6897717 (= res!2812350 (not (= lt!2464550 s!14361)))))

(assert (=> b!6897717 (= lt!2464550 (++!14898 (_1!37015 lt!2464559) (++!14898 (_1!37015 lt!2464566) (_2!37015 lt!2464566))))))

(assert (=> b!6897717 (matchRSpec!3908 r3!135 (_2!37015 lt!2464566))))

(declare-fun lt!2464549 () Unit!160410)

(assert (=> b!6897717 (= lt!2464549 (mainMatchTheorem!3908 r3!135 (_2!37015 lt!2464566)))))

(assert (=> b!6897717 (matchRSpec!3908 r2!6280 (_1!37015 lt!2464566))))

(declare-fun lt!2464565 () Unit!160410)

(assert (=> b!6897717 (= lt!2464565 (mainMatchTheorem!3908 r2!6280 (_1!37015 lt!2464566)))))

(declare-fun e!4154420 () Bool)

(assert (=> b!6897718 (= e!4154420 e!4154422)))

(declare-fun res!2812348 () Bool)

(assert (=> b!6897718 (=> res!2812348 e!4154422)))

(declare-fun lt!2464560 () Bool)

(assert (=> b!6897718 (= res!2812348 (not lt!2464560))))

(assert (=> b!6897718 (= lt!2464560 (matchRSpec!3908 r1!6342 (_1!37015 lt!2464559)))))

(assert (=> b!6897718 (= lt!2464560 (matchR!8990 r1!6342 (_1!37015 lt!2464559)))))

(declare-fun lt!2464567 () Unit!160410)

(assert (=> b!6897718 (= lt!2464567 (mainMatchTheorem!3908 r1!6342 (_1!37015 lt!2464559)))))

(declare-fun lt!2464561 () Option!16624)

(assert (=> b!6897718 (= lt!2464559 (get!23218 lt!2464561))))

(assert (=> b!6897718 (= (Exists!3853 lambda!391215) (Exists!3853 lambda!391216))))

(declare-fun lt!2464554 () Unit!160410)

(assert (=> b!6897718 (= lt!2464554 (lemmaExistCutMatchRandMatchRSpecEquivalent!2326 r1!6342 lt!2464553 s!14361))))

(assert (=> b!6897718 (Exists!3853 lambda!391215)))

(declare-fun lt!2464569 () Unit!160410)

(assert (=> b!6897718 (= lt!2464569 (lemmaFindConcatSeparationEquivalentToExists!2800 r1!6342 lt!2464553 s!14361))))

(declare-fun b!6897719 () Bool)

(declare-fun tp!1898893 () Bool)

(declare-fun tp!1898897 () Bool)

(assert (=> b!6897719 (= e!4154425 (and tp!1898893 tp!1898897))))

(declare-fun b!6897720 () Bool)

(declare-fun res!2812354 () Bool)

(assert (=> b!6897720 (=> (not res!2812354) (not e!4154426))))

(assert (=> b!6897720 (= res!2812354 (validRegex!8553 r3!135))))

(declare-fun b!6897721 () Bool)

(declare-fun tp!1898898 () Bool)

(assert (=> b!6897721 (= e!4154418 (and tp_is_empty!42915 tp!1898898))))

(declare-fun b!6897722 () Bool)

(declare-fun tp!1898896 () Bool)

(assert (=> b!6897722 (= e!4154417 tp!1898896)))

(declare-fun b!6897723 () Bool)

(assert (=> b!6897723 (= e!4154424 e!4154420)))

(declare-fun res!2812349 () Bool)

(assert (=> b!6897723 (=> res!2812349 e!4154420)))

(assert (=> b!6897723 (= res!2812349 (not (isDefined!13327 lt!2464561)))))

(assert (=> b!6897723 (= lt!2464561 (findConcatSeparation!3038 r1!6342 lt!2464553 Nil!66478 s!14361 s!14361))))

(declare-fun b!6897724 () Bool)

(assert (=> b!6897724 (= e!4154417 tp_is_empty!42915)))

(declare-fun b!6897725 () Bool)

(declare-fun tp!1898888 () Bool)

(assert (=> b!6897725 (= e!4154425 tp!1898888)))

(assert (= (and start!664590 res!2812351) b!6897705))

(assert (= (and b!6897705 res!2812356) b!6897720))

(assert (= (and b!6897720 res!2812354) b!6897708))

(assert (= (and b!6897708 (not res!2812347)) b!6897723))

(assert (= (and b!6897723 (not res!2812349)) b!6897718))

(assert (= (and b!6897718 (not res!2812348)) b!6897711))

(assert (= (and b!6897711 (not res!2812355)) b!6897704))

(assert (= (and b!6897704 (not res!2812353)) b!6897707))

(assert (= (and b!6897707 (not res!2812352)) b!6897717))

(assert (= (and b!6897717 (not res!2812350)) b!6897716))

(get-info :version)

(assert (= (and start!664590 ((_ is ElementMatch!16845) r1!6342)) b!6897713))

(assert (= (and start!664590 ((_ is Concat!25690) r1!6342)) b!6897715))

(assert (= (and start!664590 ((_ is Star!16845) r1!6342)) b!6897703))

(assert (= (and start!664590 ((_ is Union!16845) r1!6342)) b!6897714))

(assert (= (and start!664590 ((_ is ElementMatch!16845) r2!6280)) b!6897724))

(assert (= (and start!664590 ((_ is Concat!25690) r2!6280)) b!6897706))

(assert (= (and start!664590 ((_ is Star!16845) r2!6280)) b!6897722))

(assert (= (and start!664590 ((_ is Union!16845) r2!6280)) b!6897712))

(assert (= (and start!664590 ((_ is ElementMatch!16845) r3!135)) b!6897710))

(assert (= (and start!664590 ((_ is Concat!25690) r3!135)) b!6897709))

(assert (= (and start!664590 ((_ is Star!16845) r3!135)) b!6897725))

(assert (= (and start!664590 ((_ is Union!16845) r3!135)) b!6897719))

(assert (= (and start!664590 ((_ is Cons!66478) s!14361)) b!6897721))

(declare-fun m!7616208 () Bool)

(assert (=> b!6897723 m!7616208))

(declare-fun m!7616210 () Bool)

(assert (=> b!6897723 m!7616210))

(declare-fun m!7616212 () Bool)

(assert (=> b!6897705 m!7616212))

(declare-fun m!7616214 () Bool)

(assert (=> start!664590 m!7616214))

(declare-fun m!7616216 () Bool)

(assert (=> b!6897720 m!7616216))

(declare-fun m!7616218 () Bool)

(assert (=> b!6897708 m!7616218))

(declare-fun m!7616220 () Bool)

(assert (=> b!6897708 m!7616220))

(declare-fun m!7616222 () Bool)

(assert (=> b!6897708 m!7616222))

(declare-fun m!7616224 () Bool)

(assert (=> b!6897708 m!7616224))

(declare-fun m!7616226 () Bool)

(assert (=> b!6897708 m!7616226))

(declare-fun m!7616228 () Bool)

(assert (=> b!6897708 m!7616228))

(declare-fun m!7616230 () Bool)

(assert (=> b!6897717 m!7616230))

(declare-fun m!7616232 () Bool)

(assert (=> b!6897717 m!7616232))

(assert (=> b!6897717 m!7616232))

(declare-fun m!7616234 () Bool)

(assert (=> b!6897717 m!7616234))

(declare-fun m!7616236 () Bool)

(assert (=> b!6897717 m!7616236))

(declare-fun m!7616238 () Bool)

(assert (=> b!6897717 m!7616238))

(declare-fun m!7616240 () Bool)

(assert (=> b!6897717 m!7616240))

(declare-fun m!7616242 () Bool)

(assert (=> b!6897718 m!7616242))

(declare-fun m!7616244 () Bool)

(assert (=> b!6897718 m!7616244))

(declare-fun m!7616246 () Bool)

(assert (=> b!6897718 m!7616246))

(declare-fun m!7616248 () Bool)

(assert (=> b!6897718 m!7616248))

(declare-fun m!7616250 () Bool)

(assert (=> b!6897718 m!7616250))

(declare-fun m!7616252 () Bool)

(assert (=> b!6897718 m!7616252))

(declare-fun m!7616254 () Bool)

(assert (=> b!6897718 m!7616254))

(assert (=> b!6897718 m!7616250))

(declare-fun m!7616256 () Bool)

(assert (=> b!6897718 m!7616256))

(declare-fun m!7616258 () Bool)

(assert (=> b!6897704 m!7616258))

(declare-fun m!7616260 () Bool)

(assert (=> b!6897704 m!7616260))

(declare-fun m!7616262 () Bool)

(assert (=> b!6897704 m!7616262))

(declare-fun m!7616264 () Bool)

(assert (=> b!6897704 m!7616264))

(declare-fun m!7616266 () Bool)

(assert (=> b!6897704 m!7616266))

(declare-fun m!7616268 () Bool)

(assert (=> b!6897704 m!7616268))

(declare-fun m!7616270 () Bool)

(assert (=> b!6897704 m!7616270))

(declare-fun m!7616272 () Bool)

(assert (=> b!6897704 m!7616272))

(assert (=> b!6897704 m!7616262))

(declare-fun m!7616274 () Bool)

(assert (=> b!6897704 m!7616274))

(declare-fun m!7616276 () Bool)

(assert (=> b!6897704 m!7616276))

(declare-fun m!7616278 () Bool)

(assert (=> b!6897707 m!7616278))

(declare-fun m!7616280 () Bool)

(assert (=> b!6897716 m!7616280))

(assert (=> b!6897716 m!7616280))

(declare-fun m!7616282 () Bool)

(assert (=> b!6897716 m!7616282))

(declare-fun m!7616284 () Bool)

(assert (=> b!6897716 m!7616284))

(declare-fun m!7616286 () Bool)

(assert (=> b!6897711 m!7616286))

(check-sat (not b!6897703) (not b!6897725) (not b!6897723) (not b!6897708) (not start!664590) (not b!6897715) (not b!6897709) (not b!6897707) (not b!6897704) (not b!6897712) (not b!6897722) tp_is_empty!42915 (not b!6897706) (not b!6897721) (not b!6897716) (not b!6897720) (not b!6897717) (not b!6897711) (not b!6897719) (not b!6897705) (not b!6897718) (not b!6897714))
(check-sat)
