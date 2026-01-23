; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!237116 () Bool)

(assert start!237116)

(declare-fun b!2420575 () Bool)

(declare-fun e!1540058 () Bool)

(declare-fun tp_is_empty!11643 () Bool)

(assert (=> b!2420575 (= e!1540058 tp_is_empty!11643)))

(declare-fun bm!147888 () Bool)

(declare-datatypes ((C!14388 0))(
  ( (C!14389 (val!8436 Int)) )
))
(declare-datatypes ((List!28468 0))(
  ( (Nil!28370) (Cons!28370 (h!33771 C!14388) (t!208445 List!28468)) )
))
(declare-datatypes ((tuple2!28010 0))(
  ( (tuple2!28011 (_1!16546 List!28468) (_2!16546 List!28468)) )
))
(declare-datatypes ((Option!5616 0))(
  ( (None!5615) (Some!5615 (v!31023 tuple2!28010)) )
))
(declare-fun call!147896 () Option!5616)

(declare-datatypes ((Regex!7115 0))(
  ( (ElementMatch!7115 (c!385855 C!14388)) (Concat!11751 (regOne!14742 Regex!7115) (regTwo!14742 Regex!7115)) (EmptyExpr!7115) (Star!7115 (reg!7444 Regex!7115)) (EmptyLang!7115) (Union!7115 (regOne!14743 Regex!7115) (regTwo!14743 Regex!7115)) )
))
(declare-fun lt!875182 () Regex!7115)

(declare-fun s!9460 () List!28468)

(declare-fun findConcatSeparation!724 (Regex!7115 Regex!7115 List!28468 List!28468 List!28468) Option!5616)

(assert (=> bm!147888 (= call!147896 (findConcatSeparation!724 lt!875182 EmptyExpr!7115 Nil!28370 s!9460 s!9460))))

(declare-fun b!2420576 () Bool)

(declare-fun e!1540060 () Bool)

(declare-fun tp!769341 () Bool)

(assert (=> b!2420576 (= e!1540060 (and tp_is_empty!11643 tp!769341))))

(declare-fun b!2420577 () Bool)

(declare-fun e!1540061 () Bool)

(declare-fun e!1540056 () Bool)

(assert (=> b!2420577 (= e!1540061 e!1540056)))

(declare-fun res!1028014 () Bool)

(assert (=> b!2420577 (=> res!1028014 e!1540056)))

(declare-fun lt!875174 () Regex!7115)

(assert (=> b!2420577 (= res!1028014 (not (= lt!875174 EmptyExpr!7115)))))

(declare-datatypes ((List!28469 0))(
  ( (Nil!28371) (Cons!28371 (h!33772 Regex!7115) (t!208446 List!28469)) )
))
(declare-fun lt!875181 () List!28469)

(declare-fun generalisedConcat!216 (List!28469) Regex!7115)

(assert (=> b!2420577 (= lt!875174 (generalisedConcat!216 lt!875181))))

(declare-fun b!2420578 () Bool)

(declare-fun tp!769336 () Bool)

(assert (=> b!2420578 (= e!1540058 tp!769336)))

(declare-fun b!2420580 () Bool)

(declare-fun e!1540053 () Bool)

(declare-fun e!1540059 () Bool)

(assert (=> b!2420580 (= e!1540053 (not e!1540059))))

(declare-fun res!1028013 () Bool)

(assert (=> b!2420580 (=> res!1028013 e!1540059)))

(declare-fun r!13927 () Regex!7115)

(get-info :version)

(assert (=> b!2420580 (= res!1028013 (or ((_ is Concat!11751) r!13927) ((_ is EmptyExpr!7115) r!13927)))))

(declare-fun matchR!3232 (Regex!7115 List!28468) Bool)

(declare-fun matchRSpec!964 (Regex!7115 List!28468) Bool)

(assert (=> b!2420580 (= (matchR!3232 r!13927 s!9460) (matchRSpec!964 r!13927 s!9460))))

(declare-datatypes ((Unit!41549 0))(
  ( (Unit!41550) )
))
(declare-fun lt!875180 () Unit!41549)

(declare-fun mainMatchTheorem!964 (Regex!7115 List!28468) Unit!41549)

(assert (=> b!2420580 (= lt!875180 (mainMatchTheorem!964 r!13927 s!9460))))

(declare-fun b!2420581 () Bool)

(declare-fun e!1540055 () Bool)

(assert (=> b!2420581 (= e!1540055 false)))

(declare-fun b!2420582 () Bool)

(declare-fun e!1540064 () Unit!41549)

(declare-fun Unit!41551 () Unit!41549)

(assert (=> b!2420582 (= e!1540064 Unit!41551)))

(declare-fun lt!875179 () Unit!41549)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!90 (Regex!7115 Regex!7115 List!28468 List!28468) Unit!41549)

(assert (=> b!2420582 (= lt!875179 (lemmaTwoRegexMatchThenConcatMatchesConcatString!90 lt!875182 EmptyExpr!7115 s!9460 Nil!28370))))

(declare-fun lt!875177 () Regex!7115)

(assert (=> b!2420582 (= lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115))))

(declare-fun res!1028016 () Bool)

(declare-fun call!147893 () List!28468)

(assert (=> b!2420582 (= res!1028016 (matchR!3232 lt!875177 call!147893))))

(declare-fun e!1540054 () Bool)

(assert (=> b!2420582 (=> (not res!1028016) (not e!1540054))))

(assert (=> b!2420582 e!1540054))

(declare-fun lt!875176 () Unit!41549)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!64 (Regex!7115 Regex!7115 List!28468) Unit!41549)

(assert (=> b!2420582 (= lt!875176 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!64 lt!875182 EmptyExpr!7115 s!9460))))

(declare-fun res!1028021 () Bool)

(declare-fun call!147897 () Bool)

(assert (=> b!2420582 (= res!1028021 call!147897)))

(declare-fun e!1540062 () Bool)

(assert (=> b!2420582 (=> (not res!1028021) (not e!1540062))))

(assert (=> b!2420582 e!1540062))

(declare-fun b!2420583 () Bool)

(declare-fun e!1540052 () Bool)

(declare-fun tp!769338 () Bool)

(declare-fun tp!769340 () Bool)

(assert (=> b!2420583 (= e!1540052 (and tp!769338 tp!769340))))

(declare-fun b!2420584 () Bool)

(declare-fun e!1540063 () Unit!41549)

(declare-fun Unit!41552 () Unit!41549)

(assert (=> b!2420584 (= e!1540063 Unit!41552)))

(declare-fun b!2420585 () Bool)

(declare-fun tp!769343 () Bool)

(declare-fun tp!769337 () Bool)

(assert (=> b!2420585 (= e!1540058 (and tp!769343 tp!769337))))

(declare-fun b!2420586 () Bool)

(assert (=> b!2420586 (= e!1540059 e!1540061)))

(declare-fun res!1028020 () Bool)

(assert (=> b!2420586 (=> res!1028020 e!1540061)))

(declare-fun isEmpty!16389 (List!28469) Bool)

(assert (=> b!2420586 (= res!1028020 (not (isEmpty!16389 lt!875181)))))

(declare-fun l!9164 () List!28469)

(declare-fun tail!3713 (List!28469) List!28469)

(assert (=> b!2420586 (= lt!875181 (tail!3713 l!9164))))

(declare-fun b!2420587 () Bool)

(assert (=> b!2420587 e!1540055))

(declare-fun res!1028015 () Bool)

(assert (=> b!2420587 (=> (not res!1028015) (not e!1540055))))

(declare-fun call!147894 () Bool)

(assert (=> b!2420587 (= res!1028015 call!147894)))

(declare-fun lt!875171 () tuple2!28010)

(declare-fun lt!875173 () Unit!41549)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!64 (Regex!7115 Regex!7115 List!28468 List!28468 List!28468) Unit!41549)

(assert (=> b!2420587 (= lt!875173 (lemmaFindSeparationIsDefinedThenConcatMatches!64 lt!875182 EmptyExpr!7115 (_1!16546 lt!875171) (_2!16546 lt!875171) s!9460))))

(declare-fun lt!875178 () Option!5616)

(declare-fun get!8725 (Option!5616) tuple2!28010)

(assert (=> b!2420587 (= lt!875171 (get!8725 lt!875178))))

(declare-fun Unit!41553 () Unit!41549)

(assert (=> b!2420587 (= e!1540063 Unit!41553)))

(declare-fun call!147895 () Option!5616)

(declare-fun bm!147889 () Bool)

(declare-fun c!385854 () Bool)

(declare-fun isDefined!4442 (Option!5616) Bool)

(assert (=> bm!147889 (= call!147897 (isDefined!4442 (ite c!385854 call!147896 call!147895)))))

(declare-fun b!2420588 () Bool)

(declare-fun e!1540065 () Bool)

(assert (=> b!2420588 (= e!1540056 e!1540065)))

(declare-fun res!1028019 () Bool)

(assert (=> b!2420588 (=> res!1028019 e!1540065)))

(assert (=> b!2420588 (= res!1028019 (not ((_ is Cons!28371) l!9164)))))

(declare-fun lt!875170 () Unit!41549)

(assert (=> b!2420588 (= lt!875170 e!1540064)))

(assert (=> b!2420588 (= c!385854 (matchR!3232 lt!875182 s!9460))))

(declare-fun head!5441 (List!28469) Regex!7115)

(assert (=> b!2420588 (= lt!875182 (head!5441 l!9164))))

(declare-fun bm!147890 () Bool)

(assert (=> bm!147890 (= call!147895 (findConcatSeparation!724 lt!875182 lt!875174 Nil!28370 s!9460 s!9460))))

(declare-fun b!2420589 () Bool)

(declare-fun res!1028022 () Bool)

(assert (=> b!2420589 (=> res!1028022 e!1540059)))

(assert (=> b!2420589 (= res!1028022 (isEmpty!16389 l!9164))))

(declare-fun b!2420590 () Bool)

(declare-fun call!147898 () Bool)

(assert (=> b!2420590 (= e!1540062 call!147898)))

(declare-fun b!2420579 () Bool)

(declare-fun e!1540066 () Bool)

(assert (=> b!2420579 (= e!1540065 e!1540066)))

(declare-fun res!1028017 () Bool)

(assert (=> b!2420579 (=> res!1028017 e!1540066)))

(declare-fun validRegex!2835 (Regex!7115) Bool)

(assert (=> b!2420579 (= res!1028017 (not (validRegex!2835 (h!33772 l!9164))))))

(declare-fun lt!875175 () Regex!7115)

(assert (=> b!2420579 (= lt!875175 (generalisedConcat!216 (t!208446 l!9164)))))

(declare-fun res!1028018 () Bool)

(assert (=> start!237116 (=> (not res!1028018) (not e!1540053))))

(declare-fun lambda!91171 () Int)

(declare-fun forall!5749 (List!28469 Int) Bool)

(assert (=> start!237116 (= res!1028018 (forall!5749 l!9164 lambda!91171))))

(assert (=> start!237116 e!1540053))

(assert (=> start!237116 e!1540052))

(assert (=> start!237116 e!1540058))

(assert (=> start!237116 e!1540060))

(declare-fun b!2420591 () Bool)

(declare-fun tp!769342 () Bool)

(declare-fun tp!769339 () Bool)

(assert (=> b!2420591 (= e!1540058 (and tp!769342 tp!769339))))

(declare-fun bm!147891 () Bool)

(assert (=> bm!147891 (= call!147898 (isDefined!4442 (ite c!385854 call!147895 lt!875178)))))

(declare-fun bm!147892 () Bool)

(assert (=> bm!147892 (= call!147894 (matchR!3232 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)) (ite c!385854 s!9460 call!147893)))))

(declare-fun b!2420592 () Bool)

(assert (=> b!2420592 (= e!1540054 call!147894)))

(declare-fun b!2420593 () Bool)

(declare-fun res!1028011 () Bool)

(assert (=> b!2420593 (=> (not res!1028011) (not e!1540053))))

(assert (=> b!2420593 (= res!1028011 (= r!13927 (generalisedConcat!216 l!9164)))))

(declare-fun bm!147893 () Bool)

(declare-fun ++!7036 (List!28468 List!28468) List!28468)

(assert (=> bm!147893 (= call!147893 (++!7036 (ite c!385854 s!9460 (_1!16546 lt!875171)) (ite c!385854 Nil!28370 (_2!16546 lt!875171))))))

(declare-fun b!2420594 () Bool)

(declare-fun Unit!41554 () Unit!41549)

(assert (=> b!2420594 (= e!1540064 Unit!41554)))

(assert (=> b!2420594 (= lt!875178 call!147896)))

(declare-fun lt!875172 () Bool)

(assert (=> b!2420594 (= lt!875172 call!147898)))

(declare-fun c!385853 () Bool)

(assert (=> b!2420594 (= c!385853 lt!875172)))

(declare-fun lt!875169 () Unit!41549)

(assert (=> b!2420594 (= lt!875169 e!1540063)))

(declare-fun res!1028012 () Bool)

(assert (=> b!2420594 (= res!1028012 (not lt!875172))))

(declare-fun e!1540057 () Bool)

(assert (=> b!2420594 (=> (not res!1028012) (not e!1540057))))

(assert (=> b!2420594 e!1540057))

(declare-fun b!2420595 () Bool)

(assert (=> b!2420595 (= e!1540066 (validRegex!2835 lt!875175))))

(declare-fun b!2420596 () Bool)

(assert (=> b!2420596 (= e!1540057 (not call!147897))))

(assert (= (and start!237116 res!1028018) b!2420593))

(assert (= (and b!2420593 res!1028011) b!2420580))

(assert (= (and b!2420580 (not res!1028013)) b!2420589))

(assert (= (and b!2420589 (not res!1028022)) b!2420586))

(assert (= (and b!2420586 (not res!1028020)) b!2420577))

(assert (= (and b!2420577 (not res!1028014)) b!2420588))

(assert (= (and b!2420588 c!385854) b!2420582))

(assert (= (and b!2420588 (not c!385854)) b!2420594))

(assert (= (and b!2420582 res!1028016) b!2420592))

(assert (= (and b!2420582 res!1028021) b!2420590))

(assert (= (and b!2420594 c!385853) b!2420587))

(assert (= (and b!2420594 (not c!385853)) b!2420584))

(assert (= (and b!2420587 res!1028015) b!2420581))

(assert (= (and b!2420594 res!1028012) b!2420596))

(assert (= (or b!2420582 b!2420594) bm!147888))

(assert (= (or b!2420582 b!2420587) bm!147893))

(assert (= (or b!2420590 b!2420596) bm!147890))

(assert (= (or b!2420590 b!2420594) bm!147891))

(assert (= (or b!2420592 b!2420587) bm!147892))

(assert (= (or b!2420582 b!2420596) bm!147889))

(assert (= (and b!2420588 (not res!1028019)) b!2420579))

(assert (= (and b!2420579 (not res!1028017)) b!2420595))

(assert (= (and start!237116 ((_ is Cons!28371) l!9164)) b!2420583))

(assert (= (and start!237116 ((_ is ElementMatch!7115) r!13927)) b!2420575))

(assert (= (and start!237116 ((_ is Concat!11751) r!13927)) b!2420591))

(assert (= (and start!237116 ((_ is Star!7115) r!13927)) b!2420578))

(assert (= (and start!237116 ((_ is Union!7115) r!13927)) b!2420585))

(assert (= (and start!237116 ((_ is Cons!28370) s!9460)) b!2420576))

(declare-fun m!2807463 () Bool)

(assert (=> b!2420588 m!2807463))

(declare-fun m!2807465 () Bool)

(assert (=> b!2420588 m!2807465))

(declare-fun m!2807467 () Bool)

(assert (=> b!2420593 m!2807467))

(declare-fun m!2807469 () Bool)

(assert (=> bm!147892 m!2807469))

(declare-fun m!2807471 () Bool)

(assert (=> b!2420589 m!2807471))

(declare-fun m!2807473 () Bool)

(assert (=> b!2420586 m!2807473))

(declare-fun m!2807475 () Bool)

(assert (=> b!2420586 m!2807475))

(declare-fun m!2807477 () Bool)

(assert (=> b!2420579 m!2807477))

(declare-fun m!2807479 () Bool)

(assert (=> b!2420579 m!2807479))

(declare-fun m!2807481 () Bool)

(assert (=> start!237116 m!2807481))

(declare-fun m!2807483 () Bool)

(assert (=> b!2420577 m!2807483))

(declare-fun m!2807485 () Bool)

(assert (=> b!2420582 m!2807485))

(declare-fun m!2807487 () Bool)

(assert (=> b!2420582 m!2807487))

(declare-fun m!2807489 () Bool)

(assert (=> b!2420582 m!2807489))

(declare-fun m!2807491 () Bool)

(assert (=> b!2420595 m!2807491))

(declare-fun m!2807493 () Bool)

(assert (=> bm!147891 m!2807493))

(declare-fun m!2807495 () Bool)

(assert (=> b!2420580 m!2807495))

(declare-fun m!2807497 () Bool)

(assert (=> b!2420580 m!2807497))

(declare-fun m!2807499 () Bool)

(assert (=> b!2420580 m!2807499))

(declare-fun m!2807501 () Bool)

(assert (=> bm!147889 m!2807501))

(declare-fun m!2807503 () Bool)

(assert (=> bm!147893 m!2807503))

(declare-fun m!2807505 () Bool)

(assert (=> bm!147888 m!2807505))

(declare-fun m!2807507 () Bool)

(assert (=> bm!147890 m!2807507))

(declare-fun m!2807509 () Bool)

(assert (=> b!2420587 m!2807509))

(declare-fun m!2807511 () Bool)

(assert (=> b!2420587 m!2807511))

(check-sat (not b!2420588) (not b!2420591) (not b!2420595) (not bm!147890) (not start!237116) (not b!2420589) tp_is_empty!11643 (not b!2420577) (not b!2420586) (not b!2420576) (not b!2420593) (not b!2420578) (not bm!147892) (not bm!147891) (not b!2420580) (not b!2420587) (not bm!147889) (not b!2420582) (not b!2420585) (not b!2420583) (not bm!147893) (not bm!147888) (not b!2420579))
(check-sat)
(get-model)

(declare-fun d!701784 () Bool)

(declare-fun e!1540119 () Bool)

(assert (=> d!701784 e!1540119))

(declare-fun c!385874 () Bool)

(assert (=> d!701784 (= c!385874 ((_ is EmptyExpr!7115) r!13927))))

(declare-fun lt!875199 () Bool)

(declare-fun e!1540124 () Bool)

(assert (=> d!701784 (= lt!875199 e!1540124)))

(declare-fun c!385875 () Bool)

(declare-fun isEmpty!16392 (List!28468) Bool)

(assert (=> d!701784 (= c!385875 (isEmpty!16392 s!9460))))

(assert (=> d!701784 (validRegex!2835 r!13927)))

(assert (=> d!701784 (= (matchR!3232 r!13927 s!9460) lt!875199)))

(declare-fun b!2420693 () Bool)

(declare-fun res!1028087 () Bool)

(declare-fun e!1540118 () Bool)

(assert (=> b!2420693 (=> (not res!1028087) (not e!1540118))))

(declare-fun call!147906 () Bool)

(assert (=> b!2420693 (= res!1028087 (not call!147906))))

(declare-fun b!2420695 () Bool)

(declare-fun derivativeStep!1807 (Regex!7115 C!14388) Regex!7115)

(declare-fun head!5443 (List!28468) C!14388)

(declare-fun tail!3715 (List!28468) List!28468)

(assert (=> b!2420695 (= e!1540124 (matchR!3232 (derivativeStep!1807 r!13927 (head!5443 s!9460)) (tail!3715 s!9460)))))

(declare-fun b!2420697 () Bool)

(assert (=> b!2420697 (= e!1540118 (= (head!5443 s!9460) (c!385855 r!13927)))))

(declare-fun b!2420700 () Bool)

(declare-fun e!1540126 () Bool)

(assert (=> b!2420700 (= e!1540126 (not lt!875199))))

(declare-fun b!2420702 () Bool)

(assert (=> b!2420702 (= e!1540119 (= lt!875199 call!147906))))

(declare-fun b!2420704 () Bool)

(declare-fun e!1540122 () Bool)

(assert (=> b!2420704 (= e!1540122 (not (= (head!5443 s!9460) (c!385855 r!13927))))))

(declare-fun b!2420706 () Bool)

(assert (=> b!2420706 (= e!1540119 e!1540126)))

(declare-fun c!385878 () Bool)

(assert (=> b!2420706 (= c!385878 ((_ is EmptyLang!7115) r!13927))))

(declare-fun b!2420708 () Bool)

(declare-fun e!1540128 () Bool)

(declare-fun e!1540120 () Bool)

(assert (=> b!2420708 (= e!1540128 e!1540120)))

(declare-fun res!1028086 () Bool)

(assert (=> b!2420708 (=> (not res!1028086) (not e!1540120))))

(assert (=> b!2420708 (= res!1028086 (not lt!875199))))

(declare-fun b!2420710 () Bool)

(declare-fun res!1028092 () Bool)

(assert (=> b!2420710 (=> res!1028092 e!1540128)))

(assert (=> b!2420710 (= res!1028092 e!1540118)))

(declare-fun res!1028088 () Bool)

(assert (=> b!2420710 (=> (not res!1028088) (not e!1540118))))

(assert (=> b!2420710 (= res!1028088 lt!875199)))

(declare-fun b!2420711 () Bool)

(assert (=> b!2420711 (= e!1540120 e!1540122)))

(declare-fun res!1028094 () Bool)

(assert (=> b!2420711 (=> res!1028094 e!1540122)))

(assert (=> b!2420711 (= res!1028094 call!147906)))

(declare-fun b!2420713 () Bool)

(declare-fun res!1028081 () Bool)

(assert (=> b!2420713 (=> (not res!1028081) (not e!1540118))))

(assert (=> b!2420713 (= res!1028081 (isEmpty!16392 (tail!3715 s!9460)))))

(declare-fun b!2420715 () Bool)

(declare-fun res!1028089 () Bool)

(assert (=> b!2420715 (=> res!1028089 e!1540128)))

(assert (=> b!2420715 (= res!1028089 (not ((_ is ElementMatch!7115) r!13927)))))

(assert (=> b!2420715 (= e!1540126 e!1540128)))

(declare-fun b!2420716 () Bool)

(declare-fun nullable!2150 (Regex!7115) Bool)

(assert (=> b!2420716 (= e!1540124 (nullable!2150 r!13927))))

(declare-fun b!2420717 () Bool)

(declare-fun res!1028080 () Bool)

(assert (=> b!2420717 (=> res!1028080 e!1540122)))

(assert (=> b!2420717 (= res!1028080 (not (isEmpty!16392 (tail!3715 s!9460))))))

(declare-fun bm!147901 () Bool)

(assert (=> bm!147901 (= call!147906 (isEmpty!16392 s!9460))))

(assert (= (and d!701784 c!385875) b!2420716))

(assert (= (and d!701784 (not c!385875)) b!2420695))

(assert (= (and d!701784 c!385874) b!2420702))

(assert (= (and d!701784 (not c!385874)) b!2420706))

(assert (= (and b!2420706 c!385878) b!2420700))

(assert (= (and b!2420706 (not c!385878)) b!2420715))

(assert (= (and b!2420715 (not res!1028089)) b!2420710))

(assert (= (and b!2420710 res!1028088) b!2420693))

(assert (= (and b!2420693 res!1028087) b!2420713))

(assert (= (and b!2420713 res!1028081) b!2420697))

(assert (= (and b!2420710 (not res!1028092)) b!2420708))

(assert (= (and b!2420708 res!1028086) b!2420711))

(assert (= (and b!2420711 (not res!1028094)) b!2420717))

(assert (= (and b!2420717 (not res!1028080)) b!2420704))

(assert (= (or b!2420702 b!2420693 b!2420711) bm!147901))

(declare-fun m!2807585 () Bool)

(assert (=> bm!147901 m!2807585))

(declare-fun m!2807587 () Bool)

(assert (=> b!2420697 m!2807587))

(assert (=> b!2420695 m!2807587))

(assert (=> b!2420695 m!2807587))

(declare-fun m!2807589 () Bool)

(assert (=> b!2420695 m!2807589))

(declare-fun m!2807591 () Bool)

(assert (=> b!2420695 m!2807591))

(assert (=> b!2420695 m!2807589))

(assert (=> b!2420695 m!2807591))

(declare-fun m!2807593 () Bool)

(assert (=> b!2420695 m!2807593))

(assert (=> b!2420717 m!2807591))

(assert (=> b!2420717 m!2807591))

(declare-fun m!2807595 () Bool)

(assert (=> b!2420717 m!2807595))

(assert (=> b!2420704 m!2807587))

(declare-fun m!2807597 () Bool)

(assert (=> b!2420716 m!2807597))

(assert (=> d!701784 m!2807585))

(declare-fun m!2807599 () Bool)

(assert (=> d!701784 m!2807599))

(assert (=> b!2420713 m!2807591))

(assert (=> b!2420713 m!2807591))

(assert (=> b!2420713 m!2807595))

(assert (=> b!2420580 d!701784))

(declare-fun b!2420869 () Bool)

(assert (=> b!2420869 true))

(assert (=> b!2420869 true))

(declare-fun bs!463720 () Bool)

(declare-fun b!2420864 () Bool)

(assert (= bs!463720 (and b!2420864 b!2420869)))

(declare-fun lambda!91181 () Int)

(declare-fun lambda!91180 () Int)

(assert (=> bs!463720 (not (= lambda!91181 lambda!91180))))

(assert (=> b!2420864 true))

(assert (=> b!2420864 true))

(declare-fun b!2420861 () Bool)

(declare-fun e!1540225 () Bool)

(declare-fun call!147923 () Bool)

(assert (=> b!2420861 (= e!1540225 call!147923)))

(declare-fun bm!147918 () Bool)

(assert (=> bm!147918 (= call!147923 (isEmpty!16392 s!9460))))

(declare-fun b!2420862 () Bool)

(declare-fun e!1540226 () Bool)

(assert (=> b!2420862 (= e!1540226 (= s!9460 (Cons!28370 (c!385855 r!13927) Nil!28370)))))

(declare-fun b!2420863 () Bool)

(declare-fun e!1540221 () Bool)

(assert (=> b!2420863 (= e!1540221 (matchRSpec!964 (regTwo!14743 r!13927) s!9460))))

(declare-fun e!1540222 () Bool)

(declare-fun call!147924 () Bool)

(assert (=> b!2420864 (= e!1540222 call!147924)))

(declare-fun b!2420865 () Bool)

(declare-fun e!1540224 () Bool)

(assert (=> b!2420865 (= e!1540224 e!1540221)))

(declare-fun res!1028161 () Bool)

(assert (=> b!2420865 (= res!1028161 (matchRSpec!964 (regOne!14743 r!13927) s!9460))))

(assert (=> b!2420865 (=> res!1028161 e!1540221)))

(declare-fun b!2420866 () Bool)

(declare-fun e!1540223 () Bool)

(assert (=> b!2420866 (= e!1540225 e!1540223)))

(declare-fun res!1028160 () Bool)

(assert (=> b!2420866 (= res!1028160 (not ((_ is EmptyLang!7115) r!13927)))))

(assert (=> b!2420866 (=> (not res!1028160) (not e!1540223))))

(declare-fun d!701808 () Bool)

(declare-fun c!385920 () Bool)

(assert (=> d!701808 (= c!385920 ((_ is EmptyExpr!7115) r!13927))))

(assert (=> d!701808 (= (matchRSpec!964 r!13927 s!9460) e!1540225)))

(declare-fun b!2420867 () Bool)

(declare-fun res!1028159 () Bool)

(declare-fun e!1540227 () Bool)

(assert (=> b!2420867 (=> res!1028159 e!1540227)))

(assert (=> b!2420867 (= res!1028159 call!147923)))

(assert (=> b!2420867 (= e!1540222 e!1540227)))

(declare-fun b!2420868 () Bool)

(assert (=> b!2420868 (= e!1540224 e!1540222)))

(declare-fun c!385923 () Bool)

(assert (=> b!2420868 (= c!385923 ((_ is Star!7115) r!13927))))

(assert (=> b!2420869 (= e!1540227 call!147924)))

(declare-fun b!2420870 () Bool)

(declare-fun c!385921 () Bool)

(assert (=> b!2420870 (= c!385921 ((_ is ElementMatch!7115) r!13927))))

(assert (=> b!2420870 (= e!1540223 e!1540226)))

(declare-fun b!2420871 () Bool)

(declare-fun c!385922 () Bool)

(assert (=> b!2420871 (= c!385922 ((_ is Union!7115) r!13927))))

(assert (=> b!2420871 (= e!1540226 e!1540224)))

(declare-fun bm!147919 () Bool)

(declare-fun Exists!1154 (Int) Bool)

(assert (=> bm!147919 (= call!147924 (Exists!1154 (ite c!385923 lambda!91180 lambda!91181)))))

(assert (= (and d!701808 c!385920) b!2420861))

(assert (= (and d!701808 (not c!385920)) b!2420866))

(assert (= (and b!2420866 res!1028160) b!2420870))

(assert (= (and b!2420870 c!385921) b!2420862))

(assert (= (and b!2420870 (not c!385921)) b!2420871))

(assert (= (and b!2420871 c!385922) b!2420865))

(assert (= (and b!2420871 (not c!385922)) b!2420868))

(assert (= (and b!2420865 (not res!1028161)) b!2420863))

(assert (= (and b!2420868 c!385923) b!2420867))

(assert (= (and b!2420868 (not c!385923)) b!2420864))

(assert (= (and b!2420867 (not res!1028159)) b!2420869))

(assert (= (or b!2420869 b!2420864) bm!147919))

(assert (= (or b!2420861 b!2420867) bm!147918))

(assert (=> bm!147918 m!2807585))

(declare-fun m!2807697 () Bool)

(assert (=> b!2420863 m!2807697))

(declare-fun m!2807699 () Bool)

(assert (=> b!2420865 m!2807699))

(declare-fun m!2807701 () Bool)

(assert (=> bm!147919 m!2807701))

(assert (=> b!2420580 d!701808))

(declare-fun d!701826 () Bool)

(assert (=> d!701826 (= (matchR!3232 r!13927 s!9460) (matchRSpec!964 r!13927 s!9460))))

(declare-fun lt!875219 () Unit!41549)

(declare-fun choose!14325 (Regex!7115 List!28468) Unit!41549)

(assert (=> d!701826 (= lt!875219 (choose!14325 r!13927 s!9460))))

(assert (=> d!701826 (validRegex!2835 r!13927)))

(assert (=> d!701826 (= (mainMatchTheorem!964 r!13927 s!9460) lt!875219)))

(declare-fun bs!463721 () Bool)

(assert (= bs!463721 d!701826))

(assert (=> bs!463721 m!2807495))

(assert (=> bs!463721 m!2807497))

(declare-fun m!2807703 () Bool)

(assert (=> bs!463721 m!2807703))

(assert (=> bs!463721 m!2807599))

(assert (=> b!2420580 d!701826))

(declare-fun d!701828 () Bool)

(assert (=> d!701828 (= (isEmpty!16389 l!9164) ((_ is Nil!28371) l!9164))))

(assert (=> b!2420589 d!701828))

(declare-fun b!2421022 () Bool)

(declare-fun lt!875235 () Unit!41549)

(declare-fun lt!875233 () Unit!41549)

(assert (=> b!2421022 (= lt!875235 lt!875233)))

(assert (=> b!2421022 (= (++!7036 (++!7036 Nil!28370 (Cons!28370 (h!33771 s!9460) Nil!28370)) (t!208445 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!662 (List!28468 C!14388 List!28468 List!28468) Unit!41549)

(assert (=> b!2421022 (= lt!875233 (lemmaMoveElementToOtherListKeepsConcatEq!662 Nil!28370 (h!33771 s!9460) (t!208445 s!9460) s!9460))))

(declare-fun e!1540299 () Option!5616)

(assert (=> b!2421022 (= e!1540299 (findConcatSeparation!724 lt!875182 lt!875174 (++!7036 Nil!28370 (Cons!28370 (h!33771 s!9460) Nil!28370)) (t!208445 s!9460) s!9460))))

(declare-fun b!2421023 () Bool)

(declare-fun res!1028210 () Bool)

(declare-fun e!1540298 () Bool)

(assert (=> b!2421023 (=> (not res!1028210) (not e!1540298))))

(declare-fun lt!875234 () Option!5616)

(assert (=> b!2421023 (= res!1028210 (matchR!3232 lt!875182 (_1!16546 (get!8725 lt!875234))))))

(declare-fun b!2421024 () Bool)

(assert (=> b!2421024 (= e!1540299 None!5615)))

(declare-fun d!701830 () Bool)

(declare-fun e!1540297 () Bool)

(assert (=> d!701830 e!1540297))

(declare-fun res!1028208 () Bool)

(assert (=> d!701830 (=> res!1028208 e!1540297)))

(assert (=> d!701830 (= res!1028208 e!1540298)))

(declare-fun res!1028212 () Bool)

(assert (=> d!701830 (=> (not res!1028212) (not e!1540298))))

(assert (=> d!701830 (= res!1028212 (isDefined!4442 lt!875234))))

(declare-fun e!1540300 () Option!5616)

(assert (=> d!701830 (= lt!875234 e!1540300)))

(declare-fun c!385951 () Bool)

(declare-fun e!1540301 () Bool)

(assert (=> d!701830 (= c!385951 e!1540301)))

(declare-fun res!1028211 () Bool)

(assert (=> d!701830 (=> (not res!1028211) (not e!1540301))))

(assert (=> d!701830 (= res!1028211 (matchR!3232 lt!875182 Nil!28370))))

(assert (=> d!701830 (validRegex!2835 lt!875182)))

(assert (=> d!701830 (= (findConcatSeparation!724 lt!875182 lt!875174 Nil!28370 s!9460 s!9460) lt!875234)))

(declare-fun b!2421025 () Bool)

(declare-fun res!1028209 () Bool)

(assert (=> b!2421025 (=> (not res!1028209) (not e!1540298))))

(assert (=> b!2421025 (= res!1028209 (matchR!3232 lt!875174 (_2!16546 (get!8725 lt!875234))))))

(declare-fun b!2421026 () Bool)

(assert (=> b!2421026 (= e!1540297 (not (isDefined!4442 lt!875234)))))

(declare-fun b!2421027 () Bool)

(assert (=> b!2421027 (= e!1540301 (matchR!3232 lt!875174 s!9460))))

(declare-fun b!2421028 () Bool)

(assert (=> b!2421028 (= e!1540300 (Some!5615 (tuple2!28011 Nil!28370 s!9460)))))

(declare-fun b!2421029 () Bool)

(assert (=> b!2421029 (= e!1540300 e!1540299)))

(declare-fun c!385950 () Bool)

(assert (=> b!2421029 (= c!385950 ((_ is Nil!28370) s!9460))))

(declare-fun b!2421030 () Bool)

(assert (=> b!2421030 (= e!1540298 (= (++!7036 (_1!16546 (get!8725 lt!875234)) (_2!16546 (get!8725 lt!875234))) s!9460))))

(assert (= (and d!701830 res!1028211) b!2421027))

(assert (= (and d!701830 c!385951) b!2421028))

(assert (= (and d!701830 (not c!385951)) b!2421029))

(assert (= (and b!2421029 c!385950) b!2421024))

(assert (= (and b!2421029 (not c!385950)) b!2421022))

(assert (= (and d!701830 res!1028212) b!2421023))

(assert (= (and b!2421023 res!1028210) b!2421025))

(assert (= (and b!2421025 res!1028209) b!2421030))

(assert (= (and d!701830 (not res!1028208)) b!2421026))

(declare-fun m!2807737 () Bool)

(assert (=> b!2421022 m!2807737))

(assert (=> b!2421022 m!2807737))

(declare-fun m!2807739 () Bool)

(assert (=> b!2421022 m!2807739))

(declare-fun m!2807741 () Bool)

(assert (=> b!2421022 m!2807741))

(assert (=> b!2421022 m!2807737))

(declare-fun m!2807743 () Bool)

(assert (=> b!2421022 m!2807743))

(declare-fun m!2807745 () Bool)

(assert (=> b!2421026 m!2807745))

(declare-fun m!2807747 () Bool)

(assert (=> b!2421023 m!2807747))

(declare-fun m!2807749 () Bool)

(assert (=> b!2421023 m!2807749))

(assert (=> b!2421030 m!2807747))

(declare-fun m!2807751 () Bool)

(assert (=> b!2421030 m!2807751))

(assert (=> b!2421025 m!2807747))

(declare-fun m!2807753 () Bool)

(assert (=> b!2421025 m!2807753))

(declare-fun m!2807755 () Bool)

(assert (=> b!2421027 m!2807755))

(assert (=> d!701830 m!2807745))

(declare-fun m!2807757 () Bool)

(assert (=> d!701830 m!2807757))

(declare-fun m!2807759 () Bool)

(assert (=> d!701830 m!2807759))

(assert (=> bm!147890 d!701830))

(declare-fun bm!147933 () Bool)

(declare-fun call!147939 () Bool)

(declare-fun c!385957 () Bool)

(assert (=> bm!147933 (= call!147939 (validRegex!2835 (ite c!385957 (regOne!14743 lt!875175) (regTwo!14742 lt!875175))))))

(declare-fun b!2421049 () Bool)

(declare-fun e!1540319 () Bool)

(declare-fun call!147940 () Bool)

(assert (=> b!2421049 (= e!1540319 call!147940)))

(declare-fun b!2421050 () Bool)

(declare-fun res!1028226 () Bool)

(assert (=> b!2421050 (=> (not res!1028226) (not e!1540319))))

(assert (=> b!2421050 (= res!1028226 call!147939)))

(declare-fun e!1540317 () Bool)

(assert (=> b!2421050 (= e!1540317 e!1540319)))

(declare-fun b!2421051 () Bool)

(declare-fun e!1540322 () Bool)

(declare-fun e!1540316 () Bool)

(assert (=> b!2421051 (= e!1540322 e!1540316)))

(declare-fun res!1028227 () Bool)

(assert (=> b!2421051 (= res!1028227 (not (nullable!2150 (reg!7444 lt!875175))))))

(assert (=> b!2421051 (=> (not res!1028227) (not e!1540316))))

(declare-fun b!2421052 () Bool)

(declare-fun e!1540321 () Bool)

(assert (=> b!2421052 (= e!1540321 call!147939)))

(declare-fun bm!147935 () Bool)

(declare-fun call!147938 () Bool)

(assert (=> bm!147935 (= call!147940 call!147938)))

(declare-fun b!2421053 () Bool)

(declare-fun e!1540320 () Bool)

(assert (=> b!2421053 (= e!1540320 e!1540321)))

(declare-fun res!1028223 () Bool)

(assert (=> b!2421053 (=> (not res!1028223) (not e!1540321))))

(assert (=> b!2421053 (= res!1028223 call!147940)))

(declare-fun b!2421054 () Bool)

(declare-fun res!1028224 () Bool)

(assert (=> b!2421054 (=> res!1028224 e!1540320)))

(assert (=> b!2421054 (= res!1028224 (not ((_ is Concat!11751) lt!875175)))))

(assert (=> b!2421054 (= e!1540317 e!1540320)))

(declare-fun b!2421055 () Bool)

(assert (=> b!2421055 (= e!1540316 call!147938)))

(declare-fun d!701844 () Bool)

(declare-fun res!1028225 () Bool)

(declare-fun e!1540318 () Bool)

(assert (=> d!701844 (=> res!1028225 e!1540318)))

(assert (=> d!701844 (= res!1028225 ((_ is ElementMatch!7115) lt!875175))))

(assert (=> d!701844 (= (validRegex!2835 lt!875175) e!1540318)))

(declare-fun c!385956 () Bool)

(declare-fun bm!147934 () Bool)

(assert (=> bm!147934 (= call!147938 (validRegex!2835 (ite c!385956 (reg!7444 lt!875175) (ite c!385957 (regTwo!14743 lt!875175) (regOne!14742 lt!875175)))))))

(declare-fun b!2421056 () Bool)

(assert (=> b!2421056 (= e!1540318 e!1540322)))

(assert (=> b!2421056 (= c!385956 ((_ is Star!7115) lt!875175))))

(declare-fun b!2421057 () Bool)

(assert (=> b!2421057 (= e!1540322 e!1540317)))

(assert (=> b!2421057 (= c!385957 ((_ is Union!7115) lt!875175))))

(assert (= (and d!701844 (not res!1028225)) b!2421056))

(assert (= (and b!2421056 c!385956) b!2421051))

(assert (= (and b!2421056 (not c!385956)) b!2421057))

(assert (= (and b!2421051 res!1028227) b!2421055))

(assert (= (and b!2421057 c!385957) b!2421050))

(assert (= (and b!2421057 (not c!385957)) b!2421054))

(assert (= (and b!2421050 res!1028226) b!2421049))

(assert (= (and b!2421054 (not res!1028224)) b!2421053))

(assert (= (and b!2421053 res!1028223) b!2421052))

(assert (= (or b!2421050 b!2421052) bm!147933))

(assert (= (or b!2421049 b!2421053) bm!147935))

(assert (= (or b!2421055 bm!147935) bm!147934))

(declare-fun m!2807761 () Bool)

(assert (=> bm!147933 m!2807761))

(declare-fun m!2807763 () Bool)

(assert (=> b!2421051 m!2807763))

(declare-fun m!2807765 () Bool)

(assert (=> bm!147934 m!2807765))

(assert (=> b!2420595 d!701844))

(declare-fun bm!147936 () Bool)

(declare-fun call!147942 () Bool)

(declare-fun c!385959 () Bool)

(assert (=> bm!147936 (= call!147942 (validRegex!2835 (ite c!385959 (regOne!14743 (h!33772 l!9164)) (regTwo!14742 (h!33772 l!9164)))))))

(declare-fun b!2421058 () Bool)

(declare-fun e!1540326 () Bool)

(declare-fun call!147943 () Bool)

(assert (=> b!2421058 (= e!1540326 call!147943)))

(declare-fun b!2421059 () Bool)

(declare-fun res!1028231 () Bool)

(assert (=> b!2421059 (=> (not res!1028231) (not e!1540326))))

(assert (=> b!2421059 (= res!1028231 call!147942)))

(declare-fun e!1540324 () Bool)

(assert (=> b!2421059 (= e!1540324 e!1540326)))

(declare-fun b!2421060 () Bool)

(declare-fun e!1540329 () Bool)

(declare-fun e!1540323 () Bool)

(assert (=> b!2421060 (= e!1540329 e!1540323)))

(declare-fun res!1028232 () Bool)

(assert (=> b!2421060 (= res!1028232 (not (nullable!2150 (reg!7444 (h!33772 l!9164)))))))

(assert (=> b!2421060 (=> (not res!1028232) (not e!1540323))))

(declare-fun b!2421061 () Bool)

(declare-fun e!1540328 () Bool)

(assert (=> b!2421061 (= e!1540328 call!147942)))

(declare-fun bm!147938 () Bool)

(declare-fun call!147941 () Bool)

(assert (=> bm!147938 (= call!147943 call!147941)))

(declare-fun b!2421062 () Bool)

(declare-fun e!1540327 () Bool)

(assert (=> b!2421062 (= e!1540327 e!1540328)))

(declare-fun res!1028228 () Bool)

(assert (=> b!2421062 (=> (not res!1028228) (not e!1540328))))

(assert (=> b!2421062 (= res!1028228 call!147943)))

(declare-fun b!2421063 () Bool)

(declare-fun res!1028229 () Bool)

(assert (=> b!2421063 (=> res!1028229 e!1540327)))

(assert (=> b!2421063 (= res!1028229 (not ((_ is Concat!11751) (h!33772 l!9164))))))

(assert (=> b!2421063 (= e!1540324 e!1540327)))

(declare-fun b!2421064 () Bool)

(assert (=> b!2421064 (= e!1540323 call!147941)))

(declare-fun d!701846 () Bool)

(declare-fun res!1028230 () Bool)

(declare-fun e!1540325 () Bool)

(assert (=> d!701846 (=> res!1028230 e!1540325)))

(assert (=> d!701846 (= res!1028230 ((_ is ElementMatch!7115) (h!33772 l!9164)))))

(assert (=> d!701846 (= (validRegex!2835 (h!33772 l!9164)) e!1540325)))

(declare-fun c!385958 () Bool)

(declare-fun bm!147937 () Bool)

(assert (=> bm!147937 (= call!147941 (validRegex!2835 (ite c!385958 (reg!7444 (h!33772 l!9164)) (ite c!385959 (regTwo!14743 (h!33772 l!9164)) (regOne!14742 (h!33772 l!9164))))))))

(declare-fun b!2421065 () Bool)

(assert (=> b!2421065 (= e!1540325 e!1540329)))

(assert (=> b!2421065 (= c!385958 ((_ is Star!7115) (h!33772 l!9164)))))

(declare-fun b!2421066 () Bool)

(assert (=> b!2421066 (= e!1540329 e!1540324)))

(assert (=> b!2421066 (= c!385959 ((_ is Union!7115) (h!33772 l!9164)))))

(assert (= (and d!701846 (not res!1028230)) b!2421065))

(assert (= (and b!2421065 c!385958) b!2421060))

(assert (= (and b!2421065 (not c!385958)) b!2421066))

(assert (= (and b!2421060 res!1028232) b!2421064))

(assert (= (and b!2421066 c!385959) b!2421059))

(assert (= (and b!2421066 (not c!385959)) b!2421063))

(assert (= (and b!2421059 res!1028231) b!2421058))

(assert (= (and b!2421063 (not res!1028229)) b!2421062))

(assert (= (and b!2421062 res!1028228) b!2421061))

(assert (= (or b!2421059 b!2421061) bm!147936))

(assert (= (or b!2421058 b!2421062) bm!147938))

(assert (= (or b!2421064 bm!147938) bm!147937))

(declare-fun m!2807767 () Bool)

(assert (=> bm!147936 m!2807767))

(declare-fun m!2807769 () Bool)

(assert (=> b!2421060 m!2807769))

(declare-fun m!2807771 () Bool)

(assert (=> bm!147937 m!2807771))

(assert (=> b!2420579 d!701846))

(declare-fun bs!463728 () Bool)

(declare-fun d!701848 () Bool)

(assert (= bs!463728 (and d!701848 start!237116)))

(declare-fun lambda!91191 () Int)

(assert (=> bs!463728 (= lambda!91191 lambda!91171)))

(declare-fun b!2421087 () Bool)

(declare-fun e!1540342 () Bool)

(declare-fun lt!875238 () Regex!7115)

(assert (=> b!2421087 (= e!1540342 (= lt!875238 (head!5441 (t!208446 l!9164))))))

(declare-fun b!2421088 () Bool)

(declare-fun e!1540344 () Bool)

(assert (=> b!2421088 (= e!1540344 e!1540342)))

(declare-fun c!385970 () Bool)

(assert (=> b!2421088 (= c!385970 (isEmpty!16389 (tail!3713 (t!208446 l!9164))))))

(declare-fun b!2421089 () Bool)

(declare-fun isEmptyExpr!170 (Regex!7115) Bool)

(assert (=> b!2421089 (= e!1540344 (isEmptyExpr!170 lt!875238))))

(declare-fun e!1540345 () Bool)

(assert (=> d!701848 e!1540345))

(declare-fun res!1028238 () Bool)

(assert (=> d!701848 (=> (not res!1028238) (not e!1540345))))

(assert (=> d!701848 (= res!1028238 (validRegex!2835 lt!875238))))

(declare-fun e!1540346 () Regex!7115)

(assert (=> d!701848 (= lt!875238 e!1540346)))

(declare-fun c!385969 () Bool)

(declare-fun e!1540347 () Bool)

(assert (=> d!701848 (= c!385969 e!1540347)))

(declare-fun res!1028237 () Bool)

(assert (=> d!701848 (=> (not res!1028237) (not e!1540347))))

(assert (=> d!701848 (= res!1028237 ((_ is Cons!28371) (t!208446 l!9164)))))

(assert (=> d!701848 (forall!5749 (t!208446 l!9164) lambda!91191)))

(assert (=> d!701848 (= (generalisedConcat!216 (t!208446 l!9164)) lt!875238)))

(declare-fun b!2421090 () Bool)

(declare-fun isConcat!170 (Regex!7115) Bool)

(assert (=> b!2421090 (= e!1540342 (isConcat!170 lt!875238))))

(declare-fun b!2421091 () Bool)

(declare-fun e!1540343 () Regex!7115)

(assert (=> b!2421091 (= e!1540346 e!1540343)))

(declare-fun c!385968 () Bool)

(assert (=> b!2421091 (= c!385968 ((_ is Cons!28371) (t!208446 l!9164)))))

(declare-fun b!2421092 () Bool)

(assert (=> b!2421092 (= e!1540347 (isEmpty!16389 (t!208446 (t!208446 l!9164))))))

(declare-fun b!2421093 () Bool)

(assert (=> b!2421093 (= e!1540343 (Concat!11751 (h!33772 (t!208446 l!9164)) (generalisedConcat!216 (t!208446 (t!208446 l!9164)))))))

(declare-fun b!2421094 () Bool)

(assert (=> b!2421094 (= e!1540346 (h!33772 (t!208446 l!9164)))))

(declare-fun b!2421095 () Bool)

(assert (=> b!2421095 (= e!1540343 EmptyExpr!7115)))

(declare-fun b!2421096 () Bool)

(assert (=> b!2421096 (= e!1540345 e!1540344)))

(declare-fun c!385971 () Bool)

(assert (=> b!2421096 (= c!385971 (isEmpty!16389 (t!208446 l!9164)))))

(assert (= (and d!701848 res!1028237) b!2421092))

(assert (= (and d!701848 c!385969) b!2421094))

(assert (= (and d!701848 (not c!385969)) b!2421091))

(assert (= (and b!2421091 c!385968) b!2421093))

(assert (= (and b!2421091 (not c!385968)) b!2421095))

(assert (= (and d!701848 res!1028238) b!2421096))

(assert (= (and b!2421096 c!385971) b!2421089))

(assert (= (and b!2421096 (not c!385971)) b!2421088))

(assert (= (and b!2421088 c!385970) b!2421087))

(assert (= (and b!2421088 (not c!385970)) b!2421090))

(declare-fun m!2807773 () Bool)

(assert (=> b!2421092 m!2807773))

(declare-fun m!2807775 () Bool)

(assert (=> b!2421090 m!2807775))

(declare-fun m!2807777 () Bool)

(assert (=> b!2421088 m!2807777))

(assert (=> b!2421088 m!2807777))

(declare-fun m!2807779 () Bool)

(assert (=> b!2421088 m!2807779))

(declare-fun m!2807781 () Bool)

(assert (=> b!2421089 m!2807781))

(declare-fun m!2807783 () Bool)

(assert (=> b!2421096 m!2807783))

(declare-fun m!2807785 () Bool)

(assert (=> b!2421093 m!2807785))

(declare-fun m!2807787 () Bool)

(assert (=> d!701848 m!2807787))

(declare-fun m!2807789 () Bool)

(assert (=> d!701848 m!2807789))

(declare-fun m!2807791 () Bool)

(assert (=> b!2421087 m!2807791))

(assert (=> b!2420579 d!701848))

(declare-fun d!701850 () Bool)

(declare-fun isEmpty!16393 (Option!5616) Bool)

(assert (=> d!701850 (= (isDefined!4442 (ite c!385854 call!147895 lt!875178)) (not (isEmpty!16393 (ite c!385854 call!147895 lt!875178))))))

(declare-fun bs!463729 () Bool)

(assert (= bs!463729 d!701850))

(declare-fun m!2807793 () Bool)

(assert (=> bs!463729 m!2807793))

(assert (=> bm!147891 d!701850))

(declare-fun d!701852 () Bool)

(assert (=> d!701852 (matchR!3232 (Concat!11751 lt!875182 EmptyExpr!7115) (++!7036 s!9460 Nil!28370))))

(declare-fun lt!875241 () Unit!41549)

(declare-fun choose!14327 (Regex!7115 Regex!7115 List!28468 List!28468) Unit!41549)

(assert (=> d!701852 (= lt!875241 (choose!14327 lt!875182 EmptyExpr!7115 s!9460 Nil!28370))))

(declare-fun e!1540350 () Bool)

(assert (=> d!701852 e!1540350))

(declare-fun res!1028241 () Bool)

(assert (=> d!701852 (=> (not res!1028241) (not e!1540350))))

(assert (=> d!701852 (= res!1028241 (validRegex!2835 lt!875182))))

(assert (=> d!701852 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!90 lt!875182 EmptyExpr!7115 s!9460 Nil!28370) lt!875241)))

(declare-fun b!2421099 () Bool)

(assert (=> b!2421099 (= e!1540350 (validRegex!2835 EmptyExpr!7115))))

(assert (= (and d!701852 res!1028241) b!2421099))

(declare-fun m!2807795 () Bool)

(assert (=> d!701852 m!2807795))

(assert (=> d!701852 m!2807795))

(declare-fun m!2807797 () Bool)

(assert (=> d!701852 m!2807797))

(declare-fun m!2807799 () Bool)

(assert (=> d!701852 m!2807799))

(assert (=> d!701852 m!2807759))

(declare-fun m!2807801 () Bool)

(assert (=> b!2421099 m!2807801))

(assert (=> b!2420582 d!701852))

(declare-fun d!701854 () Bool)

(declare-fun e!1540352 () Bool)

(assert (=> d!701854 e!1540352))

(declare-fun c!385972 () Bool)

(assert (=> d!701854 (= c!385972 ((_ is EmptyExpr!7115) lt!875177))))

(declare-fun lt!875242 () Bool)

(declare-fun e!1540355 () Bool)

(assert (=> d!701854 (= lt!875242 e!1540355)))

(declare-fun c!385973 () Bool)

(assert (=> d!701854 (= c!385973 (isEmpty!16392 call!147893))))

(assert (=> d!701854 (validRegex!2835 lt!875177)))

(assert (=> d!701854 (= (matchR!3232 lt!875177 call!147893) lt!875242)))

(declare-fun b!2421100 () Bool)

(declare-fun res!1028245 () Bool)

(declare-fun e!1540351 () Bool)

(assert (=> b!2421100 (=> (not res!1028245) (not e!1540351))))

(declare-fun call!147944 () Bool)

(assert (=> b!2421100 (= res!1028245 (not call!147944))))

(declare-fun b!2421101 () Bool)

(assert (=> b!2421101 (= e!1540355 (matchR!3232 (derivativeStep!1807 lt!875177 (head!5443 call!147893)) (tail!3715 call!147893)))))

(declare-fun b!2421102 () Bool)

(assert (=> b!2421102 (= e!1540351 (= (head!5443 call!147893) (c!385855 lt!875177)))))

(declare-fun b!2421103 () Bool)

(declare-fun e!1540356 () Bool)

(assert (=> b!2421103 (= e!1540356 (not lt!875242))))

(declare-fun b!2421104 () Bool)

(assert (=> b!2421104 (= e!1540352 (= lt!875242 call!147944))))

(declare-fun b!2421105 () Bool)

(declare-fun e!1540354 () Bool)

(assert (=> b!2421105 (= e!1540354 (not (= (head!5443 call!147893) (c!385855 lt!875177))))))

(declare-fun b!2421106 () Bool)

(assert (=> b!2421106 (= e!1540352 e!1540356)))

(declare-fun c!385974 () Bool)

(assert (=> b!2421106 (= c!385974 ((_ is EmptyLang!7115) lt!875177))))

(declare-fun b!2421107 () Bool)

(declare-fun e!1540357 () Bool)

(declare-fun e!1540353 () Bool)

(assert (=> b!2421107 (= e!1540357 e!1540353)))

(declare-fun res!1028244 () Bool)

(assert (=> b!2421107 (=> (not res!1028244) (not e!1540353))))

(assert (=> b!2421107 (= res!1028244 (not lt!875242))))

(declare-fun b!2421108 () Bool)

(declare-fun res!1028248 () Bool)

(assert (=> b!2421108 (=> res!1028248 e!1540357)))

(assert (=> b!2421108 (= res!1028248 e!1540351)))

(declare-fun res!1028246 () Bool)

(assert (=> b!2421108 (=> (not res!1028246) (not e!1540351))))

(assert (=> b!2421108 (= res!1028246 lt!875242)))

(declare-fun b!2421109 () Bool)

(assert (=> b!2421109 (= e!1540353 e!1540354)))

(declare-fun res!1028249 () Bool)

(assert (=> b!2421109 (=> res!1028249 e!1540354)))

(assert (=> b!2421109 (= res!1028249 call!147944)))

(declare-fun b!2421110 () Bool)

(declare-fun res!1028243 () Bool)

(assert (=> b!2421110 (=> (not res!1028243) (not e!1540351))))

(assert (=> b!2421110 (= res!1028243 (isEmpty!16392 (tail!3715 call!147893)))))

(declare-fun b!2421111 () Bool)

(declare-fun res!1028247 () Bool)

(assert (=> b!2421111 (=> res!1028247 e!1540357)))

(assert (=> b!2421111 (= res!1028247 (not ((_ is ElementMatch!7115) lt!875177)))))

(assert (=> b!2421111 (= e!1540356 e!1540357)))

(declare-fun b!2421112 () Bool)

(assert (=> b!2421112 (= e!1540355 (nullable!2150 lt!875177))))

(declare-fun b!2421113 () Bool)

(declare-fun res!1028242 () Bool)

(assert (=> b!2421113 (=> res!1028242 e!1540354)))

(assert (=> b!2421113 (= res!1028242 (not (isEmpty!16392 (tail!3715 call!147893))))))

(declare-fun bm!147939 () Bool)

(assert (=> bm!147939 (= call!147944 (isEmpty!16392 call!147893))))

(assert (= (and d!701854 c!385973) b!2421112))

(assert (= (and d!701854 (not c!385973)) b!2421101))

(assert (= (and d!701854 c!385972) b!2421104))

(assert (= (and d!701854 (not c!385972)) b!2421106))

(assert (= (and b!2421106 c!385974) b!2421103))

(assert (= (and b!2421106 (not c!385974)) b!2421111))

(assert (= (and b!2421111 (not res!1028247)) b!2421108))

(assert (= (and b!2421108 res!1028246) b!2421100))

(assert (= (and b!2421100 res!1028245) b!2421110))

(assert (= (and b!2421110 res!1028243) b!2421102))

(assert (= (and b!2421108 (not res!1028248)) b!2421107))

(assert (= (and b!2421107 res!1028244) b!2421109))

(assert (= (and b!2421109 (not res!1028249)) b!2421113))

(assert (= (and b!2421113 (not res!1028242)) b!2421105))

(assert (= (or b!2421104 b!2421100 b!2421109) bm!147939))

(declare-fun m!2807803 () Bool)

(assert (=> bm!147939 m!2807803))

(declare-fun m!2807805 () Bool)

(assert (=> b!2421102 m!2807805))

(assert (=> b!2421101 m!2807805))

(assert (=> b!2421101 m!2807805))

(declare-fun m!2807807 () Bool)

(assert (=> b!2421101 m!2807807))

(declare-fun m!2807809 () Bool)

(assert (=> b!2421101 m!2807809))

(assert (=> b!2421101 m!2807807))

(assert (=> b!2421101 m!2807809))

(declare-fun m!2807811 () Bool)

(assert (=> b!2421101 m!2807811))

(assert (=> b!2421113 m!2807809))

(assert (=> b!2421113 m!2807809))

(declare-fun m!2807813 () Bool)

(assert (=> b!2421113 m!2807813))

(assert (=> b!2421105 m!2807805))

(declare-fun m!2807815 () Bool)

(assert (=> b!2421112 m!2807815))

(assert (=> d!701854 m!2807803))

(declare-fun m!2807817 () Bool)

(assert (=> d!701854 m!2807817))

(assert (=> b!2421110 m!2807809))

(assert (=> b!2421110 m!2807809))

(assert (=> b!2421110 m!2807813))

(assert (=> b!2420582 d!701854))

(declare-fun d!701856 () Bool)

(assert (=> d!701856 (isDefined!4442 (findConcatSeparation!724 lt!875182 EmptyExpr!7115 Nil!28370 s!9460 s!9460))))

(declare-fun lt!875245 () Unit!41549)

(declare-fun choose!14328 (Regex!7115 Regex!7115 List!28468) Unit!41549)

(assert (=> d!701856 (= lt!875245 (choose!14328 lt!875182 EmptyExpr!7115 s!9460))))

(assert (=> d!701856 (validRegex!2835 lt!875182)))

(assert (=> d!701856 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!64 lt!875182 EmptyExpr!7115 s!9460) lt!875245)))

(declare-fun bs!463730 () Bool)

(assert (= bs!463730 d!701856))

(assert (=> bs!463730 m!2807505))

(assert (=> bs!463730 m!2807505))

(declare-fun m!2807819 () Bool)

(assert (=> bs!463730 m!2807819))

(declare-fun m!2807821 () Bool)

(assert (=> bs!463730 m!2807821))

(assert (=> bs!463730 m!2807759))

(assert (=> b!2420582 d!701856))

(declare-fun d!701858 () Bool)

(declare-fun res!1028254 () Bool)

(declare-fun e!1540362 () Bool)

(assert (=> d!701858 (=> res!1028254 e!1540362)))

(assert (=> d!701858 (= res!1028254 ((_ is Nil!28371) l!9164))))

(assert (=> d!701858 (= (forall!5749 l!9164 lambda!91171) e!1540362)))

(declare-fun b!2421118 () Bool)

(declare-fun e!1540363 () Bool)

(assert (=> b!2421118 (= e!1540362 e!1540363)))

(declare-fun res!1028255 () Bool)

(assert (=> b!2421118 (=> (not res!1028255) (not e!1540363))))

(declare-fun dynLambda!12210 (Int Regex!7115) Bool)

(assert (=> b!2421118 (= res!1028255 (dynLambda!12210 lambda!91171 (h!33772 l!9164)))))

(declare-fun b!2421119 () Bool)

(assert (=> b!2421119 (= e!1540363 (forall!5749 (t!208446 l!9164) lambda!91171))))

(assert (= (and d!701858 (not res!1028254)) b!2421118))

(assert (= (and b!2421118 res!1028255) b!2421119))

(declare-fun b_lambda!74639 () Bool)

(assert (=> (not b_lambda!74639) (not b!2421118)))

(declare-fun m!2807823 () Bool)

(assert (=> b!2421118 m!2807823))

(declare-fun m!2807825 () Bool)

(assert (=> b!2421119 m!2807825))

(assert (=> start!237116 d!701858))

(declare-fun d!701860 () Bool)

(assert (=> d!701860 (= (isEmpty!16389 lt!875181) ((_ is Nil!28371) lt!875181))))

(assert (=> b!2420586 d!701860))

(declare-fun d!701862 () Bool)

(assert (=> d!701862 (= (tail!3713 l!9164) (t!208446 l!9164))))

(assert (=> b!2420586 d!701862))

(declare-fun bs!463731 () Bool)

(declare-fun d!701864 () Bool)

(assert (= bs!463731 (and d!701864 start!237116)))

(declare-fun lambda!91192 () Int)

(assert (=> bs!463731 (= lambda!91192 lambda!91171)))

(declare-fun bs!463732 () Bool)

(assert (= bs!463732 (and d!701864 d!701848)))

(assert (=> bs!463732 (= lambda!91192 lambda!91191)))

(declare-fun b!2421120 () Bool)

(declare-fun e!1540364 () Bool)

(declare-fun lt!875246 () Regex!7115)

(assert (=> b!2421120 (= e!1540364 (= lt!875246 (head!5441 l!9164)))))

(declare-fun b!2421121 () Bool)

(declare-fun e!1540366 () Bool)

(assert (=> b!2421121 (= e!1540366 e!1540364)))

(declare-fun c!385977 () Bool)

(assert (=> b!2421121 (= c!385977 (isEmpty!16389 (tail!3713 l!9164)))))

(declare-fun b!2421122 () Bool)

(assert (=> b!2421122 (= e!1540366 (isEmptyExpr!170 lt!875246))))

(declare-fun e!1540367 () Bool)

(assert (=> d!701864 e!1540367))

(declare-fun res!1028257 () Bool)

(assert (=> d!701864 (=> (not res!1028257) (not e!1540367))))

(assert (=> d!701864 (= res!1028257 (validRegex!2835 lt!875246))))

(declare-fun e!1540368 () Regex!7115)

(assert (=> d!701864 (= lt!875246 e!1540368)))

(declare-fun c!385976 () Bool)

(declare-fun e!1540369 () Bool)

(assert (=> d!701864 (= c!385976 e!1540369)))

(declare-fun res!1028256 () Bool)

(assert (=> d!701864 (=> (not res!1028256) (not e!1540369))))

(assert (=> d!701864 (= res!1028256 ((_ is Cons!28371) l!9164))))

(assert (=> d!701864 (forall!5749 l!9164 lambda!91192)))

(assert (=> d!701864 (= (generalisedConcat!216 l!9164) lt!875246)))

(declare-fun b!2421123 () Bool)

(assert (=> b!2421123 (= e!1540364 (isConcat!170 lt!875246))))

(declare-fun b!2421124 () Bool)

(declare-fun e!1540365 () Regex!7115)

(assert (=> b!2421124 (= e!1540368 e!1540365)))

(declare-fun c!385975 () Bool)

(assert (=> b!2421124 (= c!385975 ((_ is Cons!28371) l!9164))))

(declare-fun b!2421125 () Bool)

(assert (=> b!2421125 (= e!1540369 (isEmpty!16389 (t!208446 l!9164)))))

(declare-fun b!2421126 () Bool)

(assert (=> b!2421126 (= e!1540365 (Concat!11751 (h!33772 l!9164) (generalisedConcat!216 (t!208446 l!9164))))))

(declare-fun b!2421127 () Bool)

(assert (=> b!2421127 (= e!1540368 (h!33772 l!9164))))

(declare-fun b!2421128 () Bool)

(assert (=> b!2421128 (= e!1540365 EmptyExpr!7115)))

(declare-fun b!2421129 () Bool)

(assert (=> b!2421129 (= e!1540367 e!1540366)))

(declare-fun c!385978 () Bool)

(assert (=> b!2421129 (= c!385978 (isEmpty!16389 l!9164))))

(assert (= (and d!701864 res!1028256) b!2421125))

(assert (= (and d!701864 c!385976) b!2421127))

(assert (= (and d!701864 (not c!385976)) b!2421124))

(assert (= (and b!2421124 c!385975) b!2421126))

(assert (= (and b!2421124 (not c!385975)) b!2421128))

(assert (= (and d!701864 res!1028257) b!2421129))

(assert (= (and b!2421129 c!385978) b!2421122))

(assert (= (and b!2421129 (not c!385978)) b!2421121))

(assert (= (and b!2421121 c!385977) b!2421120))

(assert (= (and b!2421121 (not c!385977)) b!2421123))

(assert (=> b!2421125 m!2807783))

(declare-fun m!2807827 () Bool)

(assert (=> b!2421123 m!2807827))

(assert (=> b!2421121 m!2807475))

(assert (=> b!2421121 m!2807475))

(declare-fun m!2807829 () Bool)

(assert (=> b!2421121 m!2807829))

(declare-fun m!2807831 () Bool)

(assert (=> b!2421122 m!2807831))

(assert (=> b!2421129 m!2807471))

(assert (=> b!2421126 m!2807479))

(declare-fun m!2807833 () Bool)

(assert (=> d!701864 m!2807833))

(declare-fun m!2807835 () Bool)

(assert (=> d!701864 m!2807835))

(assert (=> b!2421120 m!2807465))

(assert (=> b!2420593 d!701864))

(declare-fun b!2421130 () Bool)

(declare-fun lt!875249 () Unit!41549)

(declare-fun lt!875247 () Unit!41549)

(assert (=> b!2421130 (= lt!875249 lt!875247)))

(assert (=> b!2421130 (= (++!7036 (++!7036 Nil!28370 (Cons!28370 (h!33771 s!9460) Nil!28370)) (t!208445 s!9460)) s!9460)))

(assert (=> b!2421130 (= lt!875247 (lemmaMoveElementToOtherListKeepsConcatEq!662 Nil!28370 (h!33771 s!9460) (t!208445 s!9460) s!9460))))

(declare-fun e!1540372 () Option!5616)

(assert (=> b!2421130 (= e!1540372 (findConcatSeparation!724 lt!875182 EmptyExpr!7115 (++!7036 Nil!28370 (Cons!28370 (h!33771 s!9460) Nil!28370)) (t!208445 s!9460) s!9460))))

(declare-fun b!2421131 () Bool)

(declare-fun res!1028260 () Bool)

(declare-fun e!1540371 () Bool)

(assert (=> b!2421131 (=> (not res!1028260) (not e!1540371))))

(declare-fun lt!875248 () Option!5616)

(assert (=> b!2421131 (= res!1028260 (matchR!3232 lt!875182 (_1!16546 (get!8725 lt!875248))))))

(declare-fun b!2421132 () Bool)

(assert (=> b!2421132 (= e!1540372 None!5615)))

(declare-fun d!701866 () Bool)

(declare-fun e!1540370 () Bool)

(assert (=> d!701866 e!1540370))

(declare-fun res!1028258 () Bool)

(assert (=> d!701866 (=> res!1028258 e!1540370)))

(assert (=> d!701866 (= res!1028258 e!1540371)))

(declare-fun res!1028262 () Bool)

(assert (=> d!701866 (=> (not res!1028262) (not e!1540371))))

(assert (=> d!701866 (= res!1028262 (isDefined!4442 lt!875248))))

(declare-fun e!1540373 () Option!5616)

(assert (=> d!701866 (= lt!875248 e!1540373)))

(declare-fun c!385980 () Bool)

(declare-fun e!1540374 () Bool)

(assert (=> d!701866 (= c!385980 e!1540374)))

(declare-fun res!1028261 () Bool)

(assert (=> d!701866 (=> (not res!1028261) (not e!1540374))))

(assert (=> d!701866 (= res!1028261 (matchR!3232 lt!875182 Nil!28370))))

(assert (=> d!701866 (validRegex!2835 lt!875182)))

(assert (=> d!701866 (= (findConcatSeparation!724 lt!875182 EmptyExpr!7115 Nil!28370 s!9460 s!9460) lt!875248)))

(declare-fun b!2421133 () Bool)

(declare-fun res!1028259 () Bool)

(assert (=> b!2421133 (=> (not res!1028259) (not e!1540371))))

(assert (=> b!2421133 (= res!1028259 (matchR!3232 EmptyExpr!7115 (_2!16546 (get!8725 lt!875248))))))

(declare-fun b!2421134 () Bool)

(assert (=> b!2421134 (= e!1540370 (not (isDefined!4442 lt!875248)))))

(declare-fun b!2421135 () Bool)

(assert (=> b!2421135 (= e!1540374 (matchR!3232 EmptyExpr!7115 s!9460))))

(declare-fun b!2421136 () Bool)

(assert (=> b!2421136 (= e!1540373 (Some!5615 (tuple2!28011 Nil!28370 s!9460)))))

(declare-fun b!2421137 () Bool)

(assert (=> b!2421137 (= e!1540373 e!1540372)))

(declare-fun c!385979 () Bool)

(assert (=> b!2421137 (= c!385979 ((_ is Nil!28370) s!9460))))

(declare-fun b!2421138 () Bool)

(assert (=> b!2421138 (= e!1540371 (= (++!7036 (_1!16546 (get!8725 lt!875248)) (_2!16546 (get!8725 lt!875248))) s!9460))))

(assert (= (and d!701866 res!1028261) b!2421135))

(assert (= (and d!701866 c!385980) b!2421136))

(assert (= (and d!701866 (not c!385980)) b!2421137))

(assert (= (and b!2421137 c!385979) b!2421132))

(assert (= (and b!2421137 (not c!385979)) b!2421130))

(assert (= (and d!701866 res!1028262) b!2421131))

(assert (= (and b!2421131 res!1028260) b!2421133))

(assert (= (and b!2421133 res!1028259) b!2421138))

(assert (= (and d!701866 (not res!1028258)) b!2421134))

(assert (=> b!2421130 m!2807737))

(assert (=> b!2421130 m!2807737))

(assert (=> b!2421130 m!2807739))

(assert (=> b!2421130 m!2807741))

(assert (=> b!2421130 m!2807737))

(declare-fun m!2807837 () Bool)

(assert (=> b!2421130 m!2807837))

(declare-fun m!2807839 () Bool)

(assert (=> b!2421134 m!2807839))

(declare-fun m!2807841 () Bool)

(assert (=> b!2421131 m!2807841))

(declare-fun m!2807843 () Bool)

(assert (=> b!2421131 m!2807843))

(assert (=> b!2421138 m!2807841))

(declare-fun m!2807845 () Bool)

(assert (=> b!2421138 m!2807845))

(assert (=> b!2421133 m!2807841))

(declare-fun m!2807847 () Bool)

(assert (=> b!2421133 m!2807847))

(declare-fun m!2807849 () Bool)

(assert (=> b!2421135 m!2807849))

(assert (=> d!701866 m!2807839))

(assert (=> d!701866 m!2807757))

(assert (=> d!701866 m!2807759))

(assert (=> bm!147888 d!701866))

(declare-fun d!701868 () Bool)

(declare-fun e!1540376 () Bool)

(assert (=> d!701868 e!1540376))

(declare-fun c!385981 () Bool)

(assert (=> d!701868 (= c!385981 ((_ is EmptyExpr!7115) (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115))))))

(declare-fun lt!875250 () Bool)

(declare-fun e!1540379 () Bool)

(assert (=> d!701868 (= lt!875250 e!1540379)))

(declare-fun c!385982 () Bool)

(assert (=> d!701868 (= c!385982 (isEmpty!16392 (ite c!385854 s!9460 call!147893)))))

(assert (=> d!701868 (validRegex!2835 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)))))

(assert (=> d!701868 (= (matchR!3232 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)) (ite c!385854 s!9460 call!147893)) lt!875250)))

(declare-fun b!2421139 () Bool)

(declare-fun res!1028266 () Bool)

(declare-fun e!1540375 () Bool)

(assert (=> b!2421139 (=> (not res!1028266) (not e!1540375))))

(declare-fun call!147945 () Bool)

(assert (=> b!2421139 (= res!1028266 (not call!147945))))

(declare-fun b!2421140 () Bool)

(assert (=> b!2421140 (= e!1540379 (matchR!3232 (derivativeStep!1807 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)) (head!5443 (ite c!385854 s!9460 call!147893))) (tail!3715 (ite c!385854 s!9460 call!147893))))))

(declare-fun b!2421141 () Bool)

(assert (=> b!2421141 (= e!1540375 (= (head!5443 (ite c!385854 s!9460 call!147893)) (c!385855 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)))))))

(declare-fun b!2421142 () Bool)

(declare-fun e!1540380 () Bool)

(assert (=> b!2421142 (= e!1540380 (not lt!875250))))

(declare-fun b!2421143 () Bool)

(assert (=> b!2421143 (= e!1540376 (= lt!875250 call!147945))))

(declare-fun e!1540378 () Bool)

(declare-fun b!2421144 () Bool)

(assert (=> b!2421144 (= e!1540378 (not (= (head!5443 (ite c!385854 s!9460 call!147893)) (c!385855 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115))))))))

(declare-fun b!2421145 () Bool)

(assert (=> b!2421145 (= e!1540376 e!1540380)))

(declare-fun c!385983 () Bool)

(assert (=> b!2421145 (= c!385983 ((_ is EmptyLang!7115) (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115))))))

(declare-fun b!2421146 () Bool)

(declare-fun e!1540381 () Bool)

(declare-fun e!1540377 () Bool)

(assert (=> b!2421146 (= e!1540381 e!1540377)))

(declare-fun res!1028265 () Bool)

(assert (=> b!2421146 (=> (not res!1028265) (not e!1540377))))

(assert (=> b!2421146 (= res!1028265 (not lt!875250))))

(declare-fun b!2421147 () Bool)

(declare-fun res!1028269 () Bool)

(assert (=> b!2421147 (=> res!1028269 e!1540381)))

(assert (=> b!2421147 (= res!1028269 e!1540375)))

(declare-fun res!1028267 () Bool)

(assert (=> b!2421147 (=> (not res!1028267) (not e!1540375))))

(assert (=> b!2421147 (= res!1028267 lt!875250)))

(declare-fun b!2421148 () Bool)

(assert (=> b!2421148 (= e!1540377 e!1540378)))

(declare-fun res!1028270 () Bool)

(assert (=> b!2421148 (=> res!1028270 e!1540378)))

(assert (=> b!2421148 (= res!1028270 call!147945)))

(declare-fun b!2421149 () Bool)

(declare-fun res!1028264 () Bool)

(assert (=> b!2421149 (=> (not res!1028264) (not e!1540375))))

(assert (=> b!2421149 (= res!1028264 (isEmpty!16392 (tail!3715 (ite c!385854 s!9460 call!147893))))))

(declare-fun b!2421150 () Bool)

(declare-fun res!1028268 () Bool)

(assert (=> b!2421150 (=> res!1028268 e!1540381)))

(assert (=> b!2421150 (= res!1028268 (not ((_ is ElementMatch!7115) (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115)))))))

(assert (=> b!2421150 (= e!1540380 e!1540381)))

(declare-fun b!2421151 () Bool)

(assert (=> b!2421151 (= e!1540379 (nullable!2150 (ite c!385854 lt!875177 (Concat!11751 lt!875182 EmptyExpr!7115))))))

(declare-fun b!2421152 () Bool)

(declare-fun res!1028263 () Bool)

(assert (=> b!2421152 (=> res!1028263 e!1540378)))

(assert (=> b!2421152 (= res!1028263 (not (isEmpty!16392 (tail!3715 (ite c!385854 s!9460 call!147893)))))))

(declare-fun bm!147940 () Bool)

(assert (=> bm!147940 (= call!147945 (isEmpty!16392 (ite c!385854 s!9460 call!147893)))))

(assert (= (and d!701868 c!385982) b!2421151))

(assert (= (and d!701868 (not c!385982)) b!2421140))

(assert (= (and d!701868 c!385981) b!2421143))

(assert (= (and d!701868 (not c!385981)) b!2421145))

(assert (= (and b!2421145 c!385983) b!2421142))

(assert (= (and b!2421145 (not c!385983)) b!2421150))

(assert (= (and b!2421150 (not res!1028268)) b!2421147))

(assert (= (and b!2421147 res!1028267) b!2421139))

(assert (= (and b!2421139 res!1028266) b!2421149))

(assert (= (and b!2421149 res!1028264) b!2421141))

(assert (= (and b!2421147 (not res!1028269)) b!2421146))

(assert (= (and b!2421146 res!1028265) b!2421148))

(assert (= (and b!2421148 (not res!1028270)) b!2421152))

(assert (= (and b!2421152 (not res!1028263)) b!2421144))

(assert (= (or b!2421143 b!2421139 b!2421148) bm!147940))

(declare-fun m!2807851 () Bool)

(assert (=> bm!147940 m!2807851))

(declare-fun m!2807853 () Bool)

(assert (=> b!2421141 m!2807853))

(assert (=> b!2421140 m!2807853))

(assert (=> b!2421140 m!2807853))

(declare-fun m!2807855 () Bool)

(assert (=> b!2421140 m!2807855))

(declare-fun m!2807857 () Bool)

(assert (=> b!2421140 m!2807857))

(assert (=> b!2421140 m!2807855))

(assert (=> b!2421140 m!2807857))

(declare-fun m!2807859 () Bool)

(assert (=> b!2421140 m!2807859))

(assert (=> b!2421152 m!2807857))

(assert (=> b!2421152 m!2807857))

(declare-fun m!2807861 () Bool)

(assert (=> b!2421152 m!2807861))

(assert (=> b!2421144 m!2807853))

(declare-fun m!2807863 () Bool)

(assert (=> b!2421151 m!2807863))

(assert (=> d!701868 m!2807851))

(declare-fun m!2807865 () Bool)

(assert (=> d!701868 m!2807865))

(assert (=> b!2421149 m!2807857))

(assert (=> b!2421149 m!2807857))

(assert (=> b!2421149 m!2807861))

(assert (=> bm!147892 d!701868))

(declare-fun d!701870 () Bool)

(declare-fun e!1540383 () Bool)

(assert (=> d!701870 e!1540383))

(declare-fun c!385984 () Bool)

(assert (=> d!701870 (= c!385984 ((_ is EmptyExpr!7115) lt!875182))))

(declare-fun lt!875251 () Bool)

(declare-fun e!1540386 () Bool)

(assert (=> d!701870 (= lt!875251 e!1540386)))

(declare-fun c!385985 () Bool)

(assert (=> d!701870 (= c!385985 (isEmpty!16392 s!9460))))

(assert (=> d!701870 (validRegex!2835 lt!875182)))

(assert (=> d!701870 (= (matchR!3232 lt!875182 s!9460) lt!875251)))

(declare-fun b!2421153 () Bool)

(declare-fun res!1028274 () Bool)

(declare-fun e!1540382 () Bool)

(assert (=> b!2421153 (=> (not res!1028274) (not e!1540382))))

(declare-fun call!147946 () Bool)

(assert (=> b!2421153 (= res!1028274 (not call!147946))))

(declare-fun b!2421154 () Bool)

(assert (=> b!2421154 (= e!1540386 (matchR!3232 (derivativeStep!1807 lt!875182 (head!5443 s!9460)) (tail!3715 s!9460)))))

(declare-fun b!2421155 () Bool)

(assert (=> b!2421155 (= e!1540382 (= (head!5443 s!9460) (c!385855 lt!875182)))))

(declare-fun b!2421156 () Bool)

(declare-fun e!1540387 () Bool)

(assert (=> b!2421156 (= e!1540387 (not lt!875251))))

(declare-fun b!2421157 () Bool)

(assert (=> b!2421157 (= e!1540383 (= lt!875251 call!147946))))

(declare-fun b!2421158 () Bool)

(declare-fun e!1540385 () Bool)

(assert (=> b!2421158 (= e!1540385 (not (= (head!5443 s!9460) (c!385855 lt!875182))))))

(declare-fun b!2421159 () Bool)

(assert (=> b!2421159 (= e!1540383 e!1540387)))

(declare-fun c!385986 () Bool)

(assert (=> b!2421159 (= c!385986 ((_ is EmptyLang!7115) lt!875182))))

(declare-fun b!2421160 () Bool)

(declare-fun e!1540388 () Bool)

(declare-fun e!1540384 () Bool)

(assert (=> b!2421160 (= e!1540388 e!1540384)))

(declare-fun res!1028273 () Bool)

(assert (=> b!2421160 (=> (not res!1028273) (not e!1540384))))

(assert (=> b!2421160 (= res!1028273 (not lt!875251))))

(declare-fun b!2421161 () Bool)

(declare-fun res!1028277 () Bool)

(assert (=> b!2421161 (=> res!1028277 e!1540388)))

(assert (=> b!2421161 (= res!1028277 e!1540382)))

(declare-fun res!1028275 () Bool)

(assert (=> b!2421161 (=> (not res!1028275) (not e!1540382))))

(assert (=> b!2421161 (= res!1028275 lt!875251)))

(declare-fun b!2421162 () Bool)

(assert (=> b!2421162 (= e!1540384 e!1540385)))

(declare-fun res!1028278 () Bool)

(assert (=> b!2421162 (=> res!1028278 e!1540385)))

(assert (=> b!2421162 (= res!1028278 call!147946)))

(declare-fun b!2421163 () Bool)

(declare-fun res!1028272 () Bool)

(assert (=> b!2421163 (=> (not res!1028272) (not e!1540382))))

(assert (=> b!2421163 (= res!1028272 (isEmpty!16392 (tail!3715 s!9460)))))

(declare-fun b!2421164 () Bool)

(declare-fun res!1028276 () Bool)

(assert (=> b!2421164 (=> res!1028276 e!1540388)))

(assert (=> b!2421164 (= res!1028276 (not ((_ is ElementMatch!7115) lt!875182)))))

(assert (=> b!2421164 (= e!1540387 e!1540388)))

(declare-fun b!2421165 () Bool)

(assert (=> b!2421165 (= e!1540386 (nullable!2150 lt!875182))))

(declare-fun b!2421166 () Bool)

(declare-fun res!1028271 () Bool)

(assert (=> b!2421166 (=> res!1028271 e!1540385)))

(assert (=> b!2421166 (= res!1028271 (not (isEmpty!16392 (tail!3715 s!9460))))))

(declare-fun bm!147941 () Bool)

(assert (=> bm!147941 (= call!147946 (isEmpty!16392 s!9460))))

(assert (= (and d!701870 c!385985) b!2421165))

(assert (= (and d!701870 (not c!385985)) b!2421154))

(assert (= (and d!701870 c!385984) b!2421157))

(assert (= (and d!701870 (not c!385984)) b!2421159))

(assert (= (and b!2421159 c!385986) b!2421156))

(assert (= (and b!2421159 (not c!385986)) b!2421164))

(assert (= (and b!2421164 (not res!1028276)) b!2421161))

(assert (= (and b!2421161 res!1028275) b!2421153))

(assert (= (and b!2421153 res!1028274) b!2421163))

(assert (= (and b!2421163 res!1028272) b!2421155))

(assert (= (and b!2421161 (not res!1028277)) b!2421160))

(assert (= (and b!2421160 res!1028273) b!2421162))

(assert (= (and b!2421162 (not res!1028278)) b!2421166))

(assert (= (and b!2421166 (not res!1028271)) b!2421158))

(assert (= (or b!2421157 b!2421153 b!2421162) bm!147941))

(assert (=> bm!147941 m!2807585))

(assert (=> b!2421155 m!2807587))

(assert (=> b!2421154 m!2807587))

(assert (=> b!2421154 m!2807587))

(declare-fun m!2807867 () Bool)

(assert (=> b!2421154 m!2807867))

(assert (=> b!2421154 m!2807591))

(assert (=> b!2421154 m!2807867))

(assert (=> b!2421154 m!2807591))

(declare-fun m!2807869 () Bool)

(assert (=> b!2421154 m!2807869))

(assert (=> b!2421166 m!2807591))

(assert (=> b!2421166 m!2807591))

(assert (=> b!2421166 m!2807595))

(assert (=> b!2421158 m!2807587))

(declare-fun m!2807871 () Bool)

(assert (=> b!2421165 m!2807871))

(assert (=> d!701870 m!2807585))

(assert (=> d!701870 m!2807759))

(assert (=> b!2421163 m!2807591))

(assert (=> b!2421163 m!2807591))

(assert (=> b!2421163 m!2807595))

(assert (=> b!2420588 d!701870))

(declare-fun d!701872 () Bool)

(assert (=> d!701872 (= (head!5441 l!9164) (h!33772 l!9164))))

(assert (=> b!2420588 d!701872))

(declare-fun d!701874 () Bool)

(assert (=> d!701874 (= (isDefined!4442 (ite c!385854 call!147896 call!147895)) (not (isEmpty!16393 (ite c!385854 call!147896 call!147895))))))

(declare-fun bs!463733 () Bool)

(assert (= bs!463733 d!701874))

(declare-fun m!2807873 () Bool)

(assert (=> bs!463733 m!2807873))

(assert (=> bm!147889 d!701874))

(declare-fun b!2421175 () Bool)

(declare-fun e!1540394 () List!28468)

(assert (=> b!2421175 (= e!1540394 (ite c!385854 Nil!28370 (_2!16546 lt!875171)))))

(declare-fun lt!875254 () List!28468)

(declare-fun b!2421178 () Bool)

(declare-fun e!1540393 () Bool)

(assert (=> b!2421178 (= e!1540393 (or (not (= (ite c!385854 Nil!28370 (_2!16546 lt!875171)) Nil!28370)) (= lt!875254 (ite c!385854 s!9460 (_1!16546 lt!875171)))))))

(declare-fun d!701876 () Bool)

(assert (=> d!701876 e!1540393))

(declare-fun res!1028283 () Bool)

(assert (=> d!701876 (=> (not res!1028283) (not e!1540393))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3901 (List!28468) (InoxSet C!14388))

(assert (=> d!701876 (= res!1028283 (= (content!3901 lt!875254) ((_ map or) (content!3901 (ite c!385854 s!9460 (_1!16546 lt!875171))) (content!3901 (ite c!385854 Nil!28370 (_2!16546 lt!875171))))))))

(assert (=> d!701876 (= lt!875254 e!1540394)))

(declare-fun c!385989 () Bool)

(assert (=> d!701876 (= c!385989 ((_ is Nil!28370) (ite c!385854 s!9460 (_1!16546 lt!875171))))))

(assert (=> d!701876 (= (++!7036 (ite c!385854 s!9460 (_1!16546 lt!875171)) (ite c!385854 Nil!28370 (_2!16546 lt!875171))) lt!875254)))

(declare-fun b!2421177 () Bool)

(declare-fun res!1028284 () Bool)

(assert (=> b!2421177 (=> (not res!1028284) (not e!1540393))))

(declare-fun size!22239 (List!28468) Int)

(assert (=> b!2421177 (= res!1028284 (= (size!22239 lt!875254) (+ (size!22239 (ite c!385854 s!9460 (_1!16546 lt!875171))) (size!22239 (ite c!385854 Nil!28370 (_2!16546 lt!875171))))))))

(declare-fun b!2421176 () Bool)

(assert (=> b!2421176 (= e!1540394 (Cons!28370 (h!33771 (ite c!385854 s!9460 (_1!16546 lt!875171))) (++!7036 (t!208445 (ite c!385854 s!9460 (_1!16546 lt!875171))) (ite c!385854 Nil!28370 (_2!16546 lt!875171)))))))

(assert (= (and d!701876 c!385989) b!2421175))

(assert (= (and d!701876 (not c!385989)) b!2421176))

(assert (= (and d!701876 res!1028283) b!2421177))

(assert (= (and b!2421177 res!1028284) b!2421178))

(declare-fun m!2807875 () Bool)

(assert (=> d!701876 m!2807875))

(declare-fun m!2807877 () Bool)

(assert (=> d!701876 m!2807877))

(declare-fun m!2807879 () Bool)

(assert (=> d!701876 m!2807879))

(declare-fun m!2807881 () Bool)

(assert (=> b!2421177 m!2807881))

(declare-fun m!2807883 () Bool)

(assert (=> b!2421177 m!2807883))

(declare-fun m!2807885 () Bool)

(assert (=> b!2421177 m!2807885))

(declare-fun m!2807887 () Bool)

(assert (=> b!2421176 m!2807887))

(assert (=> bm!147893 d!701876))

(declare-fun bs!463734 () Bool)

(declare-fun d!701878 () Bool)

(assert (= bs!463734 (and d!701878 start!237116)))

(declare-fun lambda!91193 () Int)

(assert (=> bs!463734 (= lambda!91193 lambda!91171)))

(declare-fun bs!463735 () Bool)

(assert (= bs!463735 (and d!701878 d!701848)))

(assert (=> bs!463735 (= lambda!91193 lambda!91191)))

(declare-fun bs!463736 () Bool)

(assert (= bs!463736 (and d!701878 d!701864)))

(assert (=> bs!463736 (= lambda!91193 lambda!91192)))

(declare-fun b!2421179 () Bool)

(declare-fun e!1540395 () Bool)

(declare-fun lt!875255 () Regex!7115)

(assert (=> b!2421179 (= e!1540395 (= lt!875255 (head!5441 lt!875181)))))

(declare-fun b!2421180 () Bool)

(declare-fun e!1540397 () Bool)

(assert (=> b!2421180 (= e!1540397 e!1540395)))

(declare-fun c!385992 () Bool)

(assert (=> b!2421180 (= c!385992 (isEmpty!16389 (tail!3713 lt!875181)))))

(declare-fun b!2421181 () Bool)

(assert (=> b!2421181 (= e!1540397 (isEmptyExpr!170 lt!875255))))

(declare-fun e!1540398 () Bool)

(assert (=> d!701878 e!1540398))

(declare-fun res!1028286 () Bool)

(assert (=> d!701878 (=> (not res!1028286) (not e!1540398))))

(assert (=> d!701878 (= res!1028286 (validRegex!2835 lt!875255))))

(declare-fun e!1540399 () Regex!7115)

(assert (=> d!701878 (= lt!875255 e!1540399)))

(declare-fun c!385991 () Bool)

(declare-fun e!1540400 () Bool)

(assert (=> d!701878 (= c!385991 e!1540400)))

(declare-fun res!1028285 () Bool)

(assert (=> d!701878 (=> (not res!1028285) (not e!1540400))))

(assert (=> d!701878 (= res!1028285 ((_ is Cons!28371) lt!875181))))

(assert (=> d!701878 (forall!5749 lt!875181 lambda!91193)))

(assert (=> d!701878 (= (generalisedConcat!216 lt!875181) lt!875255)))

(declare-fun b!2421182 () Bool)

(assert (=> b!2421182 (= e!1540395 (isConcat!170 lt!875255))))

(declare-fun b!2421183 () Bool)

(declare-fun e!1540396 () Regex!7115)

(assert (=> b!2421183 (= e!1540399 e!1540396)))

(declare-fun c!385990 () Bool)

(assert (=> b!2421183 (= c!385990 ((_ is Cons!28371) lt!875181))))

(declare-fun b!2421184 () Bool)

(assert (=> b!2421184 (= e!1540400 (isEmpty!16389 (t!208446 lt!875181)))))

(declare-fun b!2421185 () Bool)

(assert (=> b!2421185 (= e!1540396 (Concat!11751 (h!33772 lt!875181) (generalisedConcat!216 (t!208446 lt!875181))))))

(declare-fun b!2421186 () Bool)

(assert (=> b!2421186 (= e!1540399 (h!33772 lt!875181))))

(declare-fun b!2421187 () Bool)

(assert (=> b!2421187 (= e!1540396 EmptyExpr!7115)))

(declare-fun b!2421188 () Bool)

(assert (=> b!2421188 (= e!1540398 e!1540397)))

(declare-fun c!385993 () Bool)

(assert (=> b!2421188 (= c!385993 (isEmpty!16389 lt!875181))))

(assert (= (and d!701878 res!1028285) b!2421184))

(assert (= (and d!701878 c!385991) b!2421186))

(assert (= (and d!701878 (not c!385991)) b!2421183))

(assert (= (and b!2421183 c!385990) b!2421185))

(assert (= (and b!2421183 (not c!385990)) b!2421187))

(assert (= (and d!701878 res!1028286) b!2421188))

(assert (= (and b!2421188 c!385993) b!2421181))

(assert (= (and b!2421188 (not c!385993)) b!2421180))

(assert (= (and b!2421180 c!385992) b!2421179))

(assert (= (and b!2421180 (not c!385992)) b!2421182))

(declare-fun m!2807889 () Bool)

(assert (=> b!2421184 m!2807889))

(declare-fun m!2807891 () Bool)

(assert (=> b!2421182 m!2807891))

(declare-fun m!2807893 () Bool)

(assert (=> b!2421180 m!2807893))

(assert (=> b!2421180 m!2807893))

(declare-fun m!2807895 () Bool)

(assert (=> b!2421180 m!2807895))

(declare-fun m!2807897 () Bool)

(assert (=> b!2421181 m!2807897))

(assert (=> b!2421188 m!2807473))

(declare-fun m!2807899 () Bool)

(assert (=> b!2421185 m!2807899))

(declare-fun m!2807901 () Bool)

(assert (=> d!701878 m!2807901))

(declare-fun m!2807903 () Bool)

(assert (=> d!701878 m!2807903))

(declare-fun m!2807905 () Bool)

(assert (=> b!2421179 m!2807905))

(assert (=> b!2420577 d!701878))

(declare-fun d!701880 () Bool)

(assert (=> d!701880 (matchR!3232 (Concat!11751 lt!875182 EmptyExpr!7115) (++!7036 (_1!16546 lt!875171) (_2!16546 lt!875171)))))

(declare-fun lt!875258 () Unit!41549)

(declare-fun choose!14329 (Regex!7115 Regex!7115 List!28468 List!28468 List!28468) Unit!41549)

(assert (=> d!701880 (= lt!875258 (choose!14329 lt!875182 EmptyExpr!7115 (_1!16546 lt!875171) (_2!16546 lt!875171) s!9460))))

(assert (=> d!701880 (validRegex!2835 lt!875182)))

(assert (=> d!701880 (= (lemmaFindSeparationIsDefinedThenConcatMatches!64 lt!875182 EmptyExpr!7115 (_1!16546 lt!875171) (_2!16546 lt!875171) s!9460) lt!875258)))

(declare-fun bs!463737 () Bool)

(assert (= bs!463737 d!701880))

(declare-fun m!2807907 () Bool)

(assert (=> bs!463737 m!2807907))

(assert (=> bs!463737 m!2807907))

(declare-fun m!2807909 () Bool)

(assert (=> bs!463737 m!2807909))

(declare-fun m!2807911 () Bool)

(assert (=> bs!463737 m!2807911))

(assert (=> bs!463737 m!2807759))

(assert (=> b!2420587 d!701880))

(declare-fun d!701882 () Bool)

(assert (=> d!701882 (= (get!8725 lt!875178) (v!31023 lt!875178))))

(assert (=> b!2420587 d!701882))

(declare-fun e!1540403 () Bool)

(assert (=> b!2420585 (= tp!769343 e!1540403)))

(declare-fun b!2421202 () Bool)

(declare-fun tp!769404 () Bool)

(declare-fun tp!769405 () Bool)

(assert (=> b!2421202 (= e!1540403 (and tp!769404 tp!769405))))

(declare-fun b!2421200 () Bool)

(declare-fun tp!769406 () Bool)

(declare-fun tp!769407 () Bool)

(assert (=> b!2421200 (= e!1540403 (and tp!769406 tp!769407))))

(declare-fun b!2421199 () Bool)

(assert (=> b!2421199 (= e!1540403 tp_is_empty!11643)))

(declare-fun b!2421201 () Bool)

(declare-fun tp!769403 () Bool)

(assert (=> b!2421201 (= e!1540403 tp!769403)))

(assert (= (and b!2420585 ((_ is ElementMatch!7115) (regOne!14743 r!13927))) b!2421199))

(assert (= (and b!2420585 ((_ is Concat!11751) (regOne!14743 r!13927))) b!2421200))

(assert (= (and b!2420585 ((_ is Star!7115) (regOne!14743 r!13927))) b!2421201))

(assert (= (and b!2420585 ((_ is Union!7115) (regOne!14743 r!13927))) b!2421202))

(declare-fun e!1540404 () Bool)

(assert (=> b!2420585 (= tp!769337 e!1540404)))

(declare-fun b!2421206 () Bool)

(declare-fun tp!769409 () Bool)

(declare-fun tp!769410 () Bool)

(assert (=> b!2421206 (= e!1540404 (and tp!769409 tp!769410))))

(declare-fun b!2421204 () Bool)

(declare-fun tp!769411 () Bool)

(declare-fun tp!769412 () Bool)

(assert (=> b!2421204 (= e!1540404 (and tp!769411 tp!769412))))

(declare-fun b!2421203 () Bool)

(assert (=> b!2421203 (= e!1540404 tp_is_empty!11643)))

(declare-fun b!2421205 () Bool)

(declare-fun tp!769408 () Bool)

(assert (=> b!2421205 (= e!1540404 tp!769408)))

(assert (= (and b!2420585 ((_ is ElementMatch!7115) (regTwo!14743 r!13927))) b!2421203))

(assert (= (and b!2420585 ((_ is Concat!11751) (regTwo!14743 r!13927))) b!2421204))

(assert (= (and b!2420585 ((_ is Star!7115) (regTwo!14743 r!13927))) b!2421205))

(assert (= (and b!2420585 ((_ is Union!7115) (regTwo!14743 r!13927))) b!2421206))

(declare-fun e!1540405 () Bool)

(assert (=> b!2420578 (= tp!769336 e!1540405)))

(declare-fun b!2421210 () Bool)

(declare-fun tp!769414 () Bool)

(declare-fun tp!769415 () Bool)

(assert (=> b!2421210 (= e!1540405 (and tp!769414 tp!769415))))

(declare-fun b!2421208 () Bool)

(declare-fun tp!769416 () Bool)

(declare-fun tp!769417 () Bool)

(assert (=> b!2421208 (= e!1540405 (and tp!769416 tp!769417))))

(declare-fun b!2421207 () Bool)

(assert (=> b!2421207 (= e!1540405 tp_is_empty!11643)))

(declare-fun b!2421209 () Bool)

(declare-fun tp!769413 () Bool)

(assert (=> b!2421209 (= e!1540405 tp!769413)))

(assert (= (and b!2420578 ((_ is ElementMatch!7115) (reg!7444 r!13927))) b!2421207))

(assert (= (and b!2420578 ((_ is Concat!11751) (reg!7444 r!13927))) b!2421208))

(assert (= (and b!2420578 ((_ is Star!7115) (reg!7444 r!13927))) b!2421209))

(assert (= (and b!2420578 ((_ is Union!7115) (reg!7444 r!13927))) b!2421210))

(declare-fun e!1540406 () Bool)

(assert (=> b!2420583 (= tp!769338 e!1540406)))

(declare-fun b!2421214 () Bool)

(declare-fun tp!769419 () Bool)

(declare-fun tp!769420 () Bool)

(assert (=> b!2421214 (= e!1540406 (and tp!769419 tp!769420))))

(declare-fun b!2421212 () Bool)

(declare-fun tp!769421 () Bool)

(declare-fun tp!769422 () Bool)

(assert (=> b!2421212 (= e!1540406 (and tp!769421 tp!769422))))

(declare-fun b!2421211 () Bool)

(assert (=> b!2421211 (= e!1540406 tp_is_empty!11643)))

(declare-fun b!2421213 () Bool)

(declare-fun tp!769418 () Bool)

(assert (=> b!2421213 (= e!1540406 tp!769418)))

(assert (= (and b!2420583 ((_ is ElementMatch!7115) (h!33772 l!9164))) b!2421211))

(assert (= (and b!2420583 ((_ is Concat!11751) (h!33772 l!9164))) b!2421212))

(assert (= (and b!2420583 ((_ is Star!7115) (h!33772 l!9164))) b!2421213))

(assert (= (and b!2420583 ((_ is Union!7115) (h!33772 l!9164))) b!2421214))

(declare-fun b!2421219 () Bool)

(declare-fun e!1540409 () Bool)

(declare-fun tp!769427 () Bool)

(declare-fun tp!769428 () Bool)

(assert (=> b!2421219 (= e!1540409 (and tp!769427 tp!769428))))

(assert (=> b!2420583 (= tp!769340 e!1540409)))

(assert (= (and b!2420583 ((_ is Cons!28371) (t!208446 l!9164))) b!2421219))

(declare-fun e!1540410 () Bool)

(assert (=> b!2420591 (= tp!769342 e!1540410)))

(declare-fun b!2421223 () Bool)

(declare-fun tp!769430 () Bool)

(declare-fun tp!769431 () Bool)

(assert (=> b!2421223 (= e!1540410 (and tp!769430 tp!769431))))

(declare-fun b!2421221 () Bool)

(declare-fun tp!769432 () Bool)

(declare-fun tp!769433 () Bool)

(assert (=> b!2421221 (= e!1540410 (and tp!769432 tp!769433))))

(declare-fun b!2421220 () Bool)

(assert (=> b!2421220 (= e!1540410 tp_is_empty!11643)))

(declare-fun b!2421222 () Bool)

(declare-fun tp!769429 () Bool)

(assert (=> b!2421222 (= e!1540410 tp!769429)))

(assert (= (and b!2420591 ((_ is ElementMatch!7115) (regOne!14742 r!13927))) b!2421220))

(assert (= (and b!2420591 ((_ is Concat!11751) (regOne!14742 r!13927))) b!2421221))

(assert (= (and b!2420591 ((_ is Star!7115) (regOne!14742 r!13927))) b!2421222))

(assert (= (and b!2420591 ((_ is Union!7115) (regOne!14742 r!13927))) b!2421223))

(declare-fun e!1540411 () Bool)

(assert (=> b!2420591 (= tp!769339 e!1540411)))

(declare-fun b!2421227 () Bool)

(declare-fun tp!769435 () Bool)

(declare-fun tp!769436 () Bool)

(assert (=> b!2421227 (= e!1540411 (and tp!769435 tp!769436))))

(declare-fun b!2421225 () Bool)

(declare-fun tp!769437 () Bool)

(declare-fun tp!769438 () Bool)

(assert (=> b!2421225 (= e!1540411 (and tp!769437 tp!769438))))

(declare-fun b!2421224 () Bool)

(assert (=> b!2421224 (= e!1540411 tp_is_empty!11643)))

(declare-fun b!2421226 () Bool)

(declare-fun tp!769434 () Bool)

(assert (=> b!2421226 (= e!1540411 tp!769434)))

(assert (= (and b!2420591 ((_ is ElementMatch!7115) (regTwo!14742 r!13927))) b!2421224))

(assert (= (and b!2420591 ((_ is Concat!11751) (regTwo!14742 r!13927))) b!2421225))

(assert (= (and b!2420591 ((_ is Star!7115) (regTwo!14742 r!13927))) b!2421226))

(assert (= (and b!2420591 ((_ is Union!7115) (regTwo!14742 r!13927))) b!2421227))

(declare-fun b!2421232 () Bool)

(declare-fun e!1540414 () Bool)

(declare-fun tp!769441 () Bool)

(assert (=> b!2421232 (= e!1540414 (and tp_is_empty!11643 tp!769441))))

(assert (=> b!2420576 (= tp!769341 e!1540414)))

(assert (= (and b!2420576 ((_ is Cons!28370) (t!208445 s!9460))) b!2421232))

(declare-fun b_lambda!74641 () Bool)

(assert (= b_lambda!74639 (or start!237116 b_lambda!74641)))

(declare-fun bs!463738 () Bool)

(declare-fun d!701884 () Bool)

(assert (= bs!463738 (and d!701884 start!237116)))

(assert (=> bs!463738 (= (dynLambda!12210 lambda!91171 (h!33772 l!9164)) (validRegex!2835 (h!33772 l!9164)))))

(assert (=> bs!463738 m!2807477))

(assert (=> b!2421118 d!701884))

(check-sat (not b!2421201) (not b!2421151) (not b!2421087) (not b!2421102) (not b!2421121) (not b!2421181) (not b!2421232) (not b!2421131) (not b!2421090) (not b!2421149) (not b!2421022) (not b!2421110) (not b!2421212) (not b!2421213) (not d!701848) (not b!2421099) (not b!2421129) (not b!2420717) (not b!2421177) (not b!2420695) (not b!2420713) (not b!2421205) (not bm!147936) (not bm!147918) (not d!701856) (not b!2421180) (not b!2421123) (not b!2420716) (not bm!147934) (not b!2421089) (not b!2421208) (not b!2421202) (not b!2421176) (not b!2421060) (not b!2421179) (not b!2421163) (not b!2421210) (not bm!147901) (not b!2421226) (not b!2421154) (not b!2421185) (not b!2421134) (not bm!147941) (not b!2421219) (not b!2421140) tp_is_empty!11643 (not b!2421023) (not b!2421221) (not b!2421182) (not b!2421188) (not d!701870) (not b!2421209) (not b!2421144) (not b!2421026) (not b!2420863) (not b!2421130) (not b!2421119) (not b!2421200) (not b_lambda!74641) (not b!2420704) (not b!2421051) (not b!2421206) (not d!701878) (not d!701850) (not bm!147933) (not b!2421184) (not d!701864) (not b!2421125) (not b!2421092) (not bm!147939) (not b!2420697) (not b!2421204) (not b!2421225) (not b!2421101) (not b!2421158) (not b!2421214) (not b!2421165) (not bs!463738) (not b!2421088) (not b!2421096) (not b!2421030) (not b!2421122) (not b!2421155) (not b!2421133) (not bm!147919) (not b!2421152) (not b!2421126) (not d!701874) (not b!2421093) (not d!701826) (not b!2421141) (not b!2420865) (not d!701868) (not b!2421027) (not bm!147940) (not b!2421223) (not d!701876) (not b!2421025) (not d!701852) (not b!2421166) (not bm!147937) (not b!2421222) (not b!2421112) (not b!2421138) (not b!2421227) (not d!701854) (not b!2421105) (not d!701880) (not b!2421120) (not d!701784) (not d!701830) (not b!2421113) (not b!2421135) (not d!701866))
(check-sat)
