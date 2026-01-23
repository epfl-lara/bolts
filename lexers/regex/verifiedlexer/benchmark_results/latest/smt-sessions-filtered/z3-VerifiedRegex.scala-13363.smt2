; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724346 () Bool)

(assert start!724346)

(declare-fun b!7472698 () Bool)

(assert (=> b!7472698 true))

(assert (=> b!7472698 true))

(assert (=> b!7472698 true))

(declare-fun lambda!462897 () Int)

(declare-fun lambda!462896 () Int)

(assert (=> b!7472698 (not (= lambda!462897 lambda!462896))))

(assert (=> b!7472698 true))

(assert (=> b!7472698 true))

(assert (=> b!7472698 true))

(declare-fun bs!1931601 () Bool)

(declare-fun b!7472699 () Bool)

(assert (= bs!1931601 (and b!7472699 b!7472698)))

(declare-datatypes ((C!39452 0))(
  ( (C!39453 (val!30124 Int)) )
))
(declare-datatypes ((Regex!19589 0))(
  ( (ElementMatch!19589 (c!1380612 C!39452)) (Concat!28434 (regOne!39690 Regex!19589) (regTwo!39690 Regex!19589)) (EmptyExpr!19589) (Star!19589 (reg!19918 Regex!19589)) (EmptyLang!19589) (Union!19589 (regOne!39691 Regex!19589) (regTwo!39691 Regex!19589)) )
))
(declare-fun lt!2626494 () Regex!19589)

(declare-fun lambda!462898 () Int)

(declare-fun r2!5783 () Regex!19589)

(assert (=> bs!1931601 (= (= r2!5783 lt!2626494) (= lambda!462898 lambda!462896))))

(assert (=> bs!1931601 (not (= lambda!462898 lambda!462897))))

(assert (=> b!7472699 true))

(assert (=> b!7472699 true))

(assert (=> b!7472699 true))

(declare-fun lambda!462899 () Int)

(assert (=> bs!1931601 (not (= lambda!462899 lambda!462896))))

(assert (=> bs!1931601 (= (= r2!5783 lt!2626494) (= lambda!462899 lambda!462897))))

(assert (=> b!7472699 (not (= lambda!462899 lambda!462898))))

(assert (=> b!7472699 true))

(assert (=> b!7472699 true))

(assert (=> b!7472699 true))

(declare-fun res!2997945 () Bool)

(declare-fun e!4458212 () Bool)

(assert (=> start!724346 (=> (not res!2997945) (not e!4458212))))

(declare-fun r1!5845 () Regex!19589)

(declare-fun validRegex!10103 (Regex!19589) Bool)

(assert (=> start!724346 (= res!2997945 (validRegex!10103 r1!5845))))

(assert (=> start!724346 e!4458212))

(declare-fun e!4458214 () Bool)

(assert (=> start!724346 e!4458214))

(declare-fun e!4458207 () Bool)

(assert (=> start!724346 e!4458207))

(declare-fun e!4458210 () Bool)

(assert (=> start!724346 e!4458210))

(declare-fun e!4458209 () Bool)

(assert (=> start!724346 e!4458209))

(declare-fun b!7472697 () Bool)

(declare-fun tp!2166939 () Bool)

(declare-fun tp!2166935 () Bool)

(assert (=> b!7472697 (= e!4458207 (and tp!2166939 tp!2166935))))

(declare-fun e!4458211 () Bool)

(declare-fun e!4458213 () Bool)

(assert (=> b!7472698 (= e!4458211 e!4458213)))

(declare-fun res!2997950 () Bool)

(assert (=> b!7472698 (=> res!2997950 e!4458213)))

(declare-fun lt!2626481 () Bool)

(declare-fun lt!2626491 () Bool)

(assert (=> b!7472698 (= res!2997950 (or lt!2626481 (not lt!2626491)))))

(declare-fun Exists!4208 (Int) Bool)

(assert (=> b!7472698 (= (Exists!4208 lambda!462896) (Exists!4208 lambda!462897))))

(declare-datatypes ((List!72305 0))(
  ( (Nil!72181) (Cons!72181 (h!78629 C!39452) (t!386874 List!72305)) )
))
(declare-fun s!13591 () List!72305)

(declare-fun rTail!78 () Regex!19589)

(declare-datatypes ((Unit!166013 0))(
  ( (Unit!166014) )
))
(declare-fun lt!2626490 () Unit!166013)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2542 (Regex!19589 Regex!19589 List!72305) Unit!166013)

(assert (=> b!7472698 (= lt!2626490 (lemmaExistCutMatchRandMatchRSpecEquivalent!2542 lt!2626494 rTail!78 s!13591))))

(assert (=> b!7472698 (= lt!2626481 (Exists!4208 lambda!462896))))

(declare-datatypes ((tuple2!68628 0))(
  ( (tuple2!68629 (_1!37617 List!72305) (_2!37617 List!72305)) )
))
(declare-datatypes ((Option!17146 0))(
  ( (None!17145) (Some!17145 (v!54274 tuple2!68628)) )
))
(declare-fun isDefined!13835 (Option!17146) Bool)

(declare-fun findConcatSeparation!3268 (Regex!19589 Regex!19589 List!72305 List!72305 List!72305) Option!17146)

(assert (=> b!7472698 (= lt!2626481 (isDefined!13835 (findConcatSeparation!3268 lt!2626494 rTail!78 Nil!72181 s!13591 s!13591)))))

(declare-fun lt!2626485 () Unit!166013)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3026 (Regex!19589 Regex!19589 List!72305) Unit!166013)

(assert (=> b!7472698 (= lt!2626485 (lemmaFindConcatSeparationEquivalentToExists!3026 lt!2626494 rTail!78 s!13591))))

(declare-fun e!4458206 () Bool)

(declare-fun e!4458208 () Bool)

(assert (=> b!7472699 (= e!4458206 e!4458208)))

(declare-fun res!2997949 () Bool)

(assert (=> b!7472699 (=> res!2997949 e!4458208)))

(declare-fun lt!2626495 () tuple2!68628)

(declare-fun matchR!9353 (Regex!19589 List!72305) Bool)

(assert (=> b!7472699 (= res!2997949 (not (matchR!9353 r2!5783 (_1!37617 lt!2626495))))))

(declare-fun lt!2626487 () Option!17146)

(declare-fun get!25247 (Option!17146) tuple2!68628)

(assert (=> b!7472699 (= lt!2626495 (get!25247 lt!2626487))))

(assert (=> b!7472699 (= (Exists!4208 lambda!462898) (Exists!4208 lambda!462899))))

(declare-fun lt!2626489 () Unit!166013)

(assert (=> b!7472699 (= lt!2626489 (lemmaExistCutMatchRandMatchRSpecEquivalent!2542 r2!5783 rTail!78 s!13591))))

(assert (=> b!7472699 (= (isDefined!13835 lt!2626487) (Exists!4208 lambda!462898))))

(assert (=> b!7472699 (= lt!2626487 (findConcatSeparation!3268 r2!5783 rTail!78 Nil!72181 s!13591 s!13591))))

(declare-fun lt!2626496 () Unit!166013)

(assert (=> b!7472699 (= lt!2626496 (lemmaFindConcatSeparationEquivalentToExists!3026 r2!5783 rTail!78 s!13591))))

(declare-fun b!7472700 () Bool)

(declare-fun tp!2166938 () Bool)

(assert (=> b!7472700 (= e!4458214 tp!2166938)))

(declare-fun b!7472701 () Bool)

(declare-fun tp!2166925 () Bool)

(assert (=> b!7472701 (= e!4458207 tp!2166925)))

(declare-fun b!7472702 () Bool)

(declare-fun tp!2166937 () Bool)

(declare-fun tp!2166924 () Bool)

(assert (=> b!7472702 (= e!4458210 (and tp!2166937 tp!2166924))))

(declare-fun b!7472703 () Bool)

(assert (=> b!7472703 (= e!4458212 (not e!4458211))))

(declare-fun res!2997947 () Bool)

(assert (=> b!7472703 (=> res!2997947 e!4458211)))

(declare-fun lt!2626480 () Bool)

(assert (=> b!7472703 (= res!2997947 lt!2626480)))

(declare-fun lt!2626484 () Regex!19589)

(declare-fun matchRSpec!4268 (Regex!19589 List!72305) Bool)

(assert (=> b!7472703 (= lt!2626491 (matchRSpec!4268 lt!2626484 s!13591))))

(assert (=> b!7472703 (= lt!2626491 (matchR!9353 lt!2626484 s!13591))))

(declare-fun lt!2626493 () Unit!166013)

(declare-fun mainMatchTheorem!4262 (Regex!19589 List!72305) Unit!166013)

(assert (=> b!7472703 (= lt!2626493 (mainMatchTheorem!4262 lt!2626484 s!13591))))

(declare-fun lt!2626499 () Regex!19589)

(assert (=> b!7472703 (= lt!2626480 (matchRSpec!4268 lt!2626499 s!13591))))

(assert (=> b!7472703 (= lt!2626480 (matchR!9353 lt!2626499 s!13591))))

(declare-fun lt!2626492 () Unit!166013)

(assert (=> b!7472703 (= lt!2626492 (mainMatchTheorem!4262 lt!2626499 s!13591))))

(declare-fun lt!2626500 () Regex!19589)

(declare-fun lt!2626486 () Regex!19589)

(assert (=> b!7472703 (= lt!2626484 (Union!19589 lt!2626500 lt!2626486))))

(assert (=> b!7472703 (= lt!2626486 (Concat!28434 r2!5783 rTail!78))))

(assert (=> b!7472703 (= lt!2626500 (Concat!28434 r1!5845 rTail!78))))

(assert (=> b!7472703 (= lt!2626499 (Concat!28434 lt!2626494 rTail!78))))

(assert (=> b!7472703 (= lt!2626494 (Union!19589 r1!5845 r2!5783))))

(declare-fun b!7472704 () Bool)

(declare-fun tp!2166933 () Bool)

(declare-fun tp!2166927 () Bool)

(assert (=> b!7472704 (= e!4458214 (and tp!2166933 tp!2166927))))

(declare-fun b!7472705 () Bool)

(declare-fun res!2997952 () Bool)

(assert (=> b!7472705 (=> res!2997952 e!4458208)))

(assert (=> b!7472705 (= res!2997952 (not (matchR!9353 rTail!78 (_2!37617 lt!2626495))))))

(declare-fun b!7472706 () Bool)

(declare-fun tp_is_empty!49467 () Bool)

(assert (=> b!7472706 (= e!4458207 tp_is_empty!49467)))

(declare-fun b!7472707 () Bool)

(declare-fun tp!2166929 () Bool)

(declare-fun tp!2166930 () Bool)

(assert (=> b!7472707 (= e!4458210 (and tp!2166929 tp!2166930))))

(declare-fun b!7472708 () Bool)

(declare-fun tp!2166936 () Bool)

(assert (=> b!7472708 (= e!4458210 tp!2166936)))

(declare-fun b!7472709 () Bool)

(assert (=> b!7472709 (= e!4458210 tp_is_empty!49467)))

(declare-fun b!7472710 () Bool)

(declare-fun res!2997948 () Bool)

(assert (=> b!7472710 (=> (not res!2997948) (not e!4458212))))

(assert (=> b!7472710 (= res!2997948 (validRegex!10103 r2!5783))))

(declare-fun b!7472711 () Bool)

(assert (=> b!7472711 (= e!4458214 tp_is_empty!49467)))

(declare-fun b!7472712 () Bool)

(declare-fun tp!2166934 () Bool)

(declare-fun tp!2166926 () Bool)

(assert (=> b!7472712 (= e!4458214 (and tp!2166934 tp!2166926))))

(declare-fun b!7472713 () Bool)

(declare-fun tp!2166928 () Bool)

(declare-fun tp!2166931 () Bool)

(assert (=> b!7472713 (= e!4458207 (and tp!2166928 tp!2166931))))

(declare-fun b!7472714 () Bool)

(declare-fun tp!2166932 () Bool)

(assert (=> b!7472714 (= e!4458209 (and tp_is_empty!49467 tp!2166932))))

(declare-fun b!7472715 () Bool)

(declare-fun res!2997946 () Bool)

(assert (=> b!7472715 (=> (not res!2997946) (not e!4458212))))

(assert (=> b!7472715 (= res!2997946 (validRegex!10103 rTail!78))))

(declare-fun b!7472716 () Bool)

(assert (=> b!7472716 (= e!4458213 e!4458206)))

(declare-fun res!2997951 () Bool)

(assert (=> b!7472716 (=> res!2997951 e!4458206)))

(declare-fun lt!2626479 () Bool)

(declare-fun lt!2626498 () Bool)

(assert (=> b!7472716 (= res!2997951 (or (and (not lt!2626479) (not lt!2626498)) lt!2626479))))

(assert (=> b!7472716 (= lt!2626498 (matchRSpec!4268 lt!2626486 s!13591))))

(assert (=> b!7472716 (= lt!2626498 (matchR!9353 lt!2626486 s!13591))))

(declare-fun lt!2626482 () Unit!166013)

(assert (=> b!7472716 (= lt!2626482 (mainMatchTheorem!4262 lt!2626486 s!13591))))

(assert (=> b!7472716 (= lt!2626479 (matchRSpec!4268 lt!2626500 s!13591))))

(assert (=> b!7472716 (= lt!2626479 (matchR!9353 lt!2626500 s!13591))))

(declare-fun lt!2626488 () Unit!166013)

(assert (=> b!7472716 (= lt!2626488 (mainMatchTheorem!4262 lt!2626500 s!13591))))

(declare-fun b!7472717 () Bool)

(assert (=> b!7472717 (= e!4458208 true)))

(assert (=> b!7472717 (matchRSpec!4268 r2!5783 (_1!37617 lt!2626495))))

(declare-fun lt!2626501 () Unit!166013)

(assert (=> b!7472717 (= lt!2626501 (mainMatchTheorem!4262 r2!5783 (_1!37617 lt!2626495)))))

(assert (=> b!7472717 (= (matchR!9353 r1!5845 (_1!37617 lt!2626495)) (matchRSpec!4268 r1!5845 (_1!37617 lt!2626495)))))

(declare-fun lt!2626483 () Unit!166013)

(assert (=> b!7472717 (= lt!2626483 (mainMatchTheorem!4262 r1!5845 (_1!37617 lt!2626495)))))

(assert (=> b!7472717 (= (matchR!9353 lt!2626494 (_1!37617 lt!2626495)) (matchRSpec!4268 lt!2626494 (_1!37617 lt!2626495)))))

(declare-fun lt!2626497 () Unit!166013)

(assert (=> b!7472717 (= lt!2626497 (mainMatchTheorem!4262 lt!2626494 (_1!37617 lt!2626495)))))

(assert (= (and start!724346 res!2997945) b!7472710))

(assert (= (and b!7472710 res!2997948) b!7472715))

(assert (= (and b!7472715 res!2997946) b!7472703))

(assert (= (and b!7472703 (not res!2997947)) b!7472698))

(assert (= (and b!7472698 (not res!2997950)) b!7472716))

(assert (= (and b!7472716 (not res!2997951)) b!7472699))

(assert (= (and b!7472699 (not res!2997949)) b!7472705))

(assert (= (and b!7472705 (not res!2997952)) b!7472717))

(get-info :version)

(assert (= (and start!724346 ((_ is ElementMatch!19589) r1!5845)) b!7472711))

(assert (= (and start!724346 ((_ is Concat!28434) r1!5845)) b!7472704))

(assert (= (and start!724346 ((_ is Star!19589) r1!5845)) b!7472700))

(assert (= (and start!724346 ((_ is Union!19589) r1!5845)) b!7472712))

(assert (= (and start!724346 ((_ is ElementMatch!19589) r2!5783)) b!7472706))

(assert (= (and start!724346 ((_ is Concat!28434) r2!5783)) b!7472713))

(assert (= (and start!724346 ((_ is Star!19589) r2!5783)) b!7472701))

(assert (= (and start!724346 ((_ is Union!19589) r2!5783)) b!7472697))

(assert (= (and start!724346 ((_ is ElementMatch!19589) rTail!78)) b!7472709))

(assert (= (and start!724346 ((_ is Concat!28434) rTail!78)) b!7472702))

(assert (= (and start!724346 ((_ is Star!19589) rTail!78)) b!7472708))

(assert (= (and start!724346 ((_ is Union!19589) rTail!78)) b!7472707))

(assert (= (and start!724346 ((_ is Cons!72181) s!13591)) b!7472714))

(declare-fun m!8069036 () Bool)

(assert (=> b!7472698 m!8069036))

(declare-fun m!8069038 () Bool)

(assert (=> b!7472698 m!8069038))

(declare-fun m!8069040 () Bool)

(assert (=> b!7472698 m!8069040))

(declare-fun m!8069042 () Bool)

(assert (=> b!7472698 m!8069042))

(assert (=> b!7472698 m!8069038))

(assert (=> b!7472698 m!8069036))

(declare-fun m!8069044 () Bool)

(assert (=> b!7472698 m!8069044))

(declare-fun m!8069046 () Bool)

(assert (=> b!7472698 m!8069046))

(declare-fun m!8069048 () Bool)

(assert (=> b!7472710 m!8069048))

(declare-fun m!8069050 () Bool)

(assert (=> b!7472699 m!8069050))

(declare-fun m!8069052 () Bool)

(assert (=> b!7472699 m!8069052))

(declare-fun m!8069054 () Bool)

(assert (=> b!7472699 m!8069054))

(declare-fun m!8069056 () Bool)

(assert (=> b!7472699 m!8069056))

(declare-fun m!8069058 () Bool)

(assert (=> b!7472699 m!8069058))

(assert (=> b!7472699 m!8069054))

(declare-fun m!8069060 () Bool)

(assert (=> b!7472699 m!8069060))

(declare-fun m!8069062 () Bool)

(assert (=> b!7472699 m!8069062))

(declare-fun m!8069064 () Bool)

(assert (=> b!7472699 m!8069064))

(declare-fun m!8069066 () Bool)

(assert (=> start!724346 m!8069066))

(declare-fun m!8069068 () Bool)

(assert (=> b!7472703 m!8069068))

(declare-fun m!8069070 () Bool)

(assert (=> b!7472703 m!8069070))

(declare-fun m!8069072 () Bool)

(assert (=> b!7472703 m!8069072))

(declare-fun m!8069074 () Bool)

(assert (=> b!7472703 m!8069074))

(declare-fun m!8069076 () Bool)

(assert (=> b!7472703 m!8069076))

(declare-fun m!8069078 () Bool)

(assert (=> b!7472703 m!8069078))

(declare-fun m!8069080 () Bool)

(assert (=> b!7472715 m!8069080))

(declare-fun m!8069082 () Bool)

(assert (=> b!7472716 m!8069082))

(declare-fun m!8069084 () Bool)

(assert (=> b!7472716 m!8069084))

(declare-fun m!8069086 () Bool)

(assert (=> b!7472716 m!8069086))

(declare-fun m!8069088 () Bool)

(assert (=> b!7472716 m!8069088))

(declare-fun m!8069090 () Bool)

(assert (=> b!7472716 m!8069090))

(declare-fun m!8069092 () Bool)

(assert (=> b!7472716 m!8069092))

(declare-fun m!8069094 () Bool)

(assert (=> b!7472717 m!8069094))

(declare-fun m!8069096 () Bool)

(assert (=> b!7472717 m!8069096))

(declare-fun m!8069098 () Bool)

(assert (=> b!7472717 m!8069098))

(declare-fun m!8069100 () Bool)

(assert (=> b!7472717 m!8069100))

(declare-fun m!8069102 () Bool)

(assert (=> b!7472717 m!8069102))

(declare-fun m!8069104 () Bool)

(assert (=> b!7472717 m!8069104))

(declare-fun m!8069106 () Bool)

(assert (=> b!7472717 m!8069106))

(declare-fun m!8069108 () Bool)

(assert (=> b!7472717 m!8069108))

(declare-fun m!8069110 () Bool)

(assert (=> b!7472705 m!8069110))

(check-sat (not b!7472707) (not b!7472697) (not b!7472700) (not b!7472701) (not start!724346) (not b!7472698) (not b!7472713) (not b!7472708) (not b!7472712) (not b!7472710) (not b!7472705) (not b!7472716) (not b!7472704) (not b!7472699) (not b!7472703) tp_is_empty!49467 (not b!7472715) (not b!7472714) (not b!7472702) (not b!7472717))
(check-sat)
