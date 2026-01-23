; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284936 () Bool)

(assert start!284936)

(declare-fun b!2929955 () Bool)

(assert (=> b!2929955 true))

(assert (=> b!2929955 true))

(assert (=> b!2929955 true))

(declare-fun lambda!109016 () Int)

(declare-fun lambda!109015 () Int)

(assert (=> b!2929955 (not (= lambda!109016 lambda!109015))))

(assert (=> b!2929955 true))

(assert (=> b!2929955 true))

(assert (=> b!2929955 true))

(declare-fun b!2929949 () Bool)

(declare-fun e!1847664 () Bool)

(declare-fun tp!939157 () Bool)

(declare-fun tp!939159 () Bool)

(assert (=> b!2929949 (= e!1847664 (and tp!939157 tp!939159))))

(declare-fun b!2929950 () Bool)

(declare-fun tp_is_empty!15649 () Bool)

(assert (=> b!2929950 (= e!1847664 tp_is_empty!15649)))

(declare-fun b!2929951 () Bool)

(declare-fun e!1847662 () Bool)

(declare-fun tp!939158 () Bool)

(assert (=> b!2929951 (= e!1847662 (and tp_is_empty!15649 tp!939158))))

(declare-fun b!2929952 () Bool)

(declare-fun tp!939160 () Bool)

(assert (=> b!2929952 (= e!1847664 tp!939160)))

(declare-fun b!2929953 () Bool)

(declare-fun e!1847663 () Bool)

(declare-fun e!1847665 () Bool)

(assert (=> b!2929953 (= e!1847663 (not e!1847665))))

(declare-fun res!1209492 () Bool)

(assert (=> b!2929953 (=> res!1209492 e!1847665)))

(declare-fun lt!1027525 () Bool)

(declare-datatypes ((C!18272 0))(
  ( (C!18273 (val!11172 Int)) )
))
(declare-datatypes ((Regex!9043 0))(
  ( (ElementMatch!9043 (c!478463 C!18272)) (Concat!14364 (regOne!18598 Regex!9043) (regTwo!18598 Regex!9043)) (EmptyExpr!9043) (Star!9043 (reg!9372 Regex!9043)) (EmptyLang!9043) (Union!9043 (regOne!18599 Regex!9043) (regTwo!18599 Regex!9043)) )
))
(declare-fun r!17423 () Regex!9043)

(get-info :version)

(assert (=> b!2929953 (= res!1209492 (or (not lt!1027525) ((_ is Concat!14364) r!17423) ((_ is Union!9043) r!17423) (not ((_ is Star!9043) r!17423))))))

(declare-datatypes ((List!34908 0))(
  ( (Nil!34784) (Cons!34784 (h!40204 C!18272) (t!233973 List!34908)) )
))
(declare-fun s!11993 () List!34908)

(declare-fun matchRSpec!1180 (Regex!9043 List!34908) Bool)

(assert (=> b!2929953 (= lt!1027525 (matchRSpec!1180 r!17423 s!11993))))

(declare-fun matchR!3925 (Regex!9043 List!34908) Bool)

(assert (=> b!2929953 (= lt!1027525 (matchR!3925 r!17423 s!11993))))

(declare-datatypes ((Unit!48425 0))(
  ( (Unit!48426) )
))
(declare-fun lt!1027520 () Unit!48425)

(declare-fun mainMatchTheorem!1180 (Regex!9043 List!34908) Unit!48425)

(assert (=> b!2929953 (= lt!1027520 (mainMatchTheorem!1180 r!17423 s!11993))))

(declare-fun b!2929948 () Bool)

(declare-fun res!1209490 () Bool)

(declare-fun e!1847661 () Bool)

(assert (=> b!2929948 (=> res!1209490 e!1847661)))

(declare-datatypes ((tuple2!33736 0))(
  ( (tuple2!33737 (_1!20000 List!34908) (_2!20000 List!34908)) )
))
(declare-datatypes ((Option!6600 0))(
  ( (None!6599) (Some!6599 (v!34733 tuple2!33736)) )
))
(declare-fun lt!1027519 () Option!6600)

(declare-fun get!10613 (Option!6600) tuple2!33736)

(assert (=> b!2929948 (= res!1209490 (not (matchR!3925 (reg!9372 r!17423) (_1!20000 (get!10613 lt!1027519)))))))

(declare-fun res!1209493 () Bool)

(assert (=> start!284936 (=> (not res!1209493) (not e!1847663))))

(declare-fun validRegex!3776 (Regex!9043) Bool)

(assert (=> start!284936 (= res!1209493 (validRegex!3776 r!17423))))

(assert (=> start!284936 e!1847663))

(assert (=> start!284936 e!1847664))

(assert (=> start!284936 e!1847662))

(declare-fun b!2929954 () Bool)

(declare-fun res!1209491 () Bool)

(assert (=> b!2929954 (=> res!1209491 e!1847665)))

(declare-fun isEmpty!19033 (List!34908) Bool)

(assert (=> b!2929954 (= res!1209491 (isEmpty!19033 s!11993))))

(assert (=> b!2929955 (= e!1847665 e!1847661)))

(declare-fun res!1209494 () Bool)

(assert (=> b!2929955 (=> res!1209494 e!1847661)))

(declare-fun lt!1027523 () Bool)

(assert (=> b!2929955 (= res!1209494 (not lt!1027523))))

(declare-fun Exists!1405 (Int) Bool)

(assert (=> b!2929955 (= (Exists!1405 lambda!109015) (Exists!1405 lambda!109016))))

(declare-fun lt!1027521 () Unit!48425)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!216 (Regex!9043 List!34908) Unit!48425)

(assert (=> b!2929955 (= lt!1027521 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!216 (reg!9372 r!17423) s!11993))))

(assert (=> b!2929955 (= lt!1027523 (Exists!1405 lambda!109015))))

(declare-fun isDefined!5151 (Option!6600) Bool)

(assert (=> b!2929955 (= lt!1027523 (isDefined!5151 lt!1027519))))

(declare-fun lt!1027524 () Regex!9043)

(declare-fun findConcatSeparation!994 (Regex!9043 Regex!9043 List!34908 List!34908 List!34908) Option!6600)

(assert (=> b!2929955 (= lt!1027519 (findConcatSeparation!994 (reg!9372 r!17423) lt!1027524 Nil!34784 s!11993 s!11993))))

(declare-fun lt!1027522 () Unit!48425)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!776 (Regex!9043 Regex!9043 List!34908) Unit!48425)

(assert (=> b!2929955 (= lt!1027522 (lemmaFindConcatSeparationEquivalentToExists!776 (reg!9372 r!17423) lt!1027524 s!11993))))

(assert (=> b!2929955 (= lt!1027524 (Star!9043 (reg!9372 r!17423)))))

(declare-fun b!2929956 () Bool)

(declare-fun tp!939161 () Bool)

(declare-fun tp!939156 () Bool)

(assert (=> b!2929956 (= e!1847664 (and tp!939161 tp!939156))))

(declare-fun b!2929957 () Bool)

(assert (=> b!2929957 (= e!1847661 (validRegex!3776 lt!1027524))))

(assert (= (and start!284936 res!1209493) b!2929953))

(assert (= (and b!2929953 (not res!1209492)) b!2929954))

(assert (= (and b!2929954 (not res!1209491)) b!2929955))

(assert (= (and b!2929955 (not res!1209494)) b!2929948))

(assert (= (and b!2929948 (not res!1209490)) b!2929957))

(assert (= (and start!284936 ((_ is ElementMatch!9043) r!17423)) b!2929950))

(assert (= (and start!284936 ((_ is Concat!14364) r!17423)) b!2929956))

(assert (= (and start!284936 ((_ is Star!9043) r!17423)) b!2929952))

(assert (= (and start!284936 ((_ is Union!9043) r!17423)) b!2929949))

(assert (= (and start!284936 ((_ is Cons!34784) s!11993)) b!2929951))

(declare-fun m!3320525 () Bool)

(assert (=> b!2929953 m!3320525))

(declare-fun m!3320527 () Bool)

(assert (=> b!2929953 m!3320527))

(declare-fun m!3320529 () Bool)

(assert (=> b!2929953 m!3320529))

(declare-fun m!3320531 () Bool)

(assert (=> b!2929957 m!3320531))

(declare-fun m!3320533 () Bool)

(assert (=> b!2929948 m!3320533))

(declare-fun m!3320535 () Bool)

(assert (=> b!2929948 m!3320535))

(declare-fun m!3320537 () Bool)

(assert (=> b!2929955 m!3320537))

(declare-fun m!3320539 () Bool)

(assert (=> b!2929955 m!3320539))

(declare-fun m!3320541 () Bool)

(assert (=> b!2929955 m!3320541))

(assert (=> b!2929955 m!3320541))

(declare-fun m!3320543 () Bool)

(assert (=> b!2929955 m!3320543))

(declare-fun m!3320545 () Bool)

(assert (=> b!2929955 m!3320545))

(declare-fun m!3320547 () Bool)

(assert (=> b!2929955 m!3320547))

(declare-fun m!3320549 () Bool)

(assert (=> start!284936 m!3320549))

(declare-fun m!3320551 () Bool)

(assert (=> b!2929954 m!3320551))

(check-sat (not b!2929952) (not b!2929954) (not start!284936) (not b!2929948) (not b!2929955) (not b!2929956) (not b!2929951) (not b!2929949) tp_is_empty!15649 (not b!2929953) (not b!2929957))
(check-sat)
