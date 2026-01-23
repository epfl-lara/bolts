; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295552 () Bool)

(assert start!295552)

(declare-fun b!3129038 () Bool)

(assert (=> b!3129038 true))

(assert (=> b!3129038 true))

(assert (=> b!3129038 true))

(declare-fun lambda!115520 () Int)

(declare-fun lambda!115519 () Int)

(assert (=> b!3129038 (not (= lambda!115520 lambda!115519))))

(assert (=> b!3129038 true))

(assert (=> b!3129038 true))

(assert (=> b!3129038 true))

(declare-fun b!3129033 () Bool)

(declare-fun e!1953044 () Bool)

(declare-fun e!1953048 () Bool)

(assert (=> b!3129033 (= e!1953044 e!1953048)))

(declare-fun res!1279570 () Bool)

(assert (=> b!3129033 (=> res!1279570 e!1953048)))

(declare-datatypes ((C!19456 0))(
  ( (C!19457 (val!11764 Int)) )
))
(declare-datatypes ((Regex!9635 0))(
  ( (ElementMatch!9635 (c!525139 C!19456)) (Concat!14956 (regOne!19782 Regex!9635) (regTwo!19782 Regex!9635)) (EmptyExpr!9635) (Star!9635 (reg!9964 Regex!9635)) (EmptyLang!9635) (Union!9635 (regOne!19783 Regex!9635) (regTwo!19783 Regex!9635)) )
))
(declare-fun lt!1059974 () Regex!9635)

(declare-fun isEmptyLang!686 (Regex!9635) Bool)

(assert (=> b!3129033 (= res!1279570 (isEmptyLang!686 lt!1059974))))

(declare-fun r!17423 () Regex!9635)

(declare-fun simplify!590 (Regex!9635) Regex!9635)

(assert (=> b!3129033 (= lt!1059974 (simplify!590 (reg!9964 r!17423)))))

(declare-fun b!3129034 () Bool)

(declare-datatypes ((Unit!49711 0))(
  ( (Unit!49712) )
))
(declare-fun e!1953049 () Unit!49711)

(declare-fun Unit!49713 () Unit!49711)

(assert (=> b!3129034 (= e!1953049 Unit!49713)))

(declare-fun lt!1059972 () Unit!49711)

(declare-datatypes ((List!35500 0))(
  ( (Nil!35376) (Cons!35376 (h!40796 C!19456) (t!234565 List!35500)) )
))
(declare-datatypes ((tuple2!34248 0))(
  ( (tuple2!34249 (_1!20256 List!35500) (_2!20256 List!35500)) )
))
(declare-fun lt!1059980 () tuple2!34248)

(declare-fun mainMatchTheorem!1772 (Regex!9635 List!35500) Unit!49711)

(assert (=> b!3129034 (= lt!1059972 (mainMatchTheorem!1772 (reg!9964 r!17423) (_1!20256 lt!1059980)))))

(assert (=> b!3129034 false))

(declare-fun res!1279573 () Bool)

(declare-fun e!1953052 () Bool)

(assert (=> start!295552 (=> (not res!1279573) (not e!1953052))))

(declare-fun validRegex!4368 (Regex!9635) Bool)

(assert (=> start!295552 (= res!1279573 (validRegex!4368 r!17423))))

(assert (=> start!295552 e!1953052))

(declare-fun e!1953053 () Bool)

(assert (=> start!295552 e!1953053))

(declare-fun e!1953046 () Bool)

(assert (=> start!295552 e!1953046))

(declare-fun b!3129035 () Bool)

(declare-fun e!1953047 () Bool)

(declare-fun e!1953051 () Bool)

(assert (=> b!3129035 (= e!1953047 e!1953051)))

(declare-fun res!1279576 () Bool)

(assert (=> b!3129035 (=> res!1279576 e!1953051)))

(declare-fun matchR!4517 (Regex!9635 List!35500) Bool)

(assert (=> b!3129035 (= res!1279576 (not (matchR!4517 lt!1059974 (_1!20256 lt!1059980))))))

(declare-datatypes ((Option!6856 0))(
  ( (None!6855) (Some!6855 (v!34989 tuple2!34248)) )
))
(declare-fun lt!1059976 () Option!6856)

(declare-fun get!11139 (Option!6856) tuple2!34248)

(assert (=> b!3129035 (= lt!1059980 (get!11139 lt!1059976))))

(declare-fun b!3129036 () Bool)

(assert (=> b!3129036 (= e!1953051 (validRegex!4368 (Star!9635 (reg!9964 r!17423))))))

(declare-fun lt!1059977 () Unit!49711)

(assert (=> b!3129036 (= lt!1059977 e!1953049)))

(declare-fun c!525138 () Bool)

(declare-fun s!11993 () List!35500)

(declare-fun size!26591 (List!35500) Int)

(assert (=> b!3129036 (= c!525138 (= (size!26591 (_2!20256 lt!1059980)) (size!26591 s!11993)))))

(assert (=> b!3129036 (matchR!4517 (reg!9964 r!17423) (_1!20256 lt!1059980))))

(declare-fun lt!1059981 () Unit!49711)

(declare-fun lemmaSimplifySound!362 (Regex!9635 List!35500) Unit!49711)

(assert (=> b!3129036 (= lt!1059981 (lemmaSimplifySound!362 (reg!9964 r!17423) (_1!20256 lt!1059980)))))

(declare-fun b!3129037 () Bool)

(declare-fun tp!980075 () Bool)

(declare-fun tp!980076 () Bool)

(assert (=> b!3129037 (= e!1953053 (and tp!980075 tp!980076))))

(declare-fun e!1953045 () Bool)

(assert (=> b!3129038 (= e!1953045 e!1953047)))

(declare-fun res!1279575 () Bool)

(assert (=> b!3129038 (=> res!1279575 e!1953047)))

(declare-fun lt!1059970 () Bool)

(assert (=> b!3129038 (= res!1279575 (not lt!1059970))))

(declare-fun Exists!1889 (Int) Bool)

(assert (=> b!3129038 (= (Exists!1889 lambda!115519) (Exists!1889 lambda!115520))))

(declare-fun lt!1059973 () Unit!49711)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!350 (Regex!9635 List!35500) Unit!49711)

(assert (=> b!3129038 (= lt!1059973 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!350 lt!1059974 s!11993))))

(assert (=> b!3129038 (= lt!1059970 (Exists!1889 lambda!115519))))

(declare-fun isDefined!5407 (Option!6856) Bool)

(assert (=> b!3129038 (= lt!1059970 (isDefined!5407 lt!1059976))))

(declare-fun lt!1059979 () Regex!9635)

(declare-fun findConcatSeparation!1250 (Regex!9635 Regex!9635 List!35500 List!35500 List!35500) Option!6856)

(assert (=> b!3129038 (= lt!1059976 (findConcatSeparation!1250 lt!1059974 lt!1059979 Nil!35376 s!11993 s!11993))))

(declare-fun lt!1059971 () Unit!49711)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1020 (Regex!9635 Regex!9635 List!35500) Unit!49711)

(assert (=> b!3129038 (= lt!1059971 (lemmaFindConcatSeparationEquivalentToExists!1020 lt!1059974 lt!1059979 s!11993))))

(declare-fun b!3129039 () Bool)

(declare-fun tp_is_empty!16833 () Bool)

(declare-fun tp!980077 () Bool)

(assert (=> b!3129039 (= e!1953046 (and tp_is_empty!16833 tp!980077))))

(declare-fun b!3129040 () Bool)

(declare-fun tp!980072 () Bool)

(declare-fun tp!980074 () Bool)

(assert (=> b!3129040 (= e!1953053 (and tp!980072 tp!980074))))

(declare-fun b!3129041 () Bool)

(assert (=> b!3129041 (= e!1953052 (not e!1953044))))

(declare-fun res!1279571 () Bool)

(assert (=> b!3129041 (=> res!1279571 e!1953044)))

(declare-fun lt!1059978 () Bool)

(get-info :version)

(assert (=> b!3129041 (= res!1279571 (or lt!1059978 ((_ is Concat!14956) r!17423) ((_ is Union!9635) r!17423) (not ((_ is Star!9635) r!17423))))))

(declare-fun matchRSpec!1772 (Regex!9635 List!35500) Bool)

(assert (=> b!3129041 (= lt!1059978 (matchRSpec!1772 r!17423 s!11993))))

(assert (=> b!3129041 (= lt!1059978 (matchR!4517 r!17423 s!11993))))

(declare-fun lt!1059975 () Unit!49711)

(assert (=> b!3129041 (= lt!1059975 (mainMatchTheorem!1772 r!17423 s!11993))))

(declare-fun b!3129042 () Bool)

(assert (=> b!3129042 (= e!1953053 tp_is_empty!16833)))

(declare-fun b!3129043 () Bool)

(declare-fun e!1953050 () Bool)

(assert (=> b!3129043 (= e!1953048 e!1953050)))

(declare-fun res!1279574 () Bool)

(assert (=> b!3129043 (=> res!1279574 e!1953050)))

(assert (=> b!3129043 (= res!1279574 (not (matchR!4517 lt!1059979 s!11993)))))

(assert (=> b!3129043 (= lt!1059979 (Star!9635 lt!1059974))))

(declare-fun b!3129044 () Bool)

(declare-fun tp!980073 () Bool)

(assert (=> b!3129044 (= e!1953053 tp!980073)))

(declare-fun b!3129045 () Bool)

(assert (=> b!3129045 (= e!1953050 e!1953045)))

(declare-fun res!1279569 () Bool)

(assert (=> b!3129045 (=> res!1279569 e!1953045)))

(declare-fun isEmpty!19729 (List!35500) Bool)

(assert (=> b!3129045 (= res!1279569 (isEmpty!19729 s!11993))))

(assert (=> b!3129045 (matchRSpec!1772 lt!1059979 s!11993)))

(declare-fun lt!1059982 () Unit!49711)

(assert (=> b!3129045 (= lt!1059982 (mainMatchTheorem!1772 lt!1059979 s!11993))))

(declare-fun b!3129046 () Bool)

(declare-fun res!1279572 () Bool)

(assert (=> b!3129046 (=> res!1279572 e!1953051)))

(assert (=> b!3129046 (= res!1279572 (not (matchR!4517 lt!1059979 (_2!20256 lt!1059980))))))

(declare-fun b!3129047 () Bool)

(declare-fun Unit!49714 () Unit!49711)

(assert (=> b!3129047 (= e!1953049 Unit!49714)))

(assert (= (and start!295552 res!1279573) b!3129041))

(assert (= (and b!3129041 (not res!1279571)) b!3129033))

(assert (= (and b!3129033 (not res!1279570)) b!3129043))

(assert (= (and b!3129043 (not res!1279574)) b!3129045))

(assert (= (and b!3129045 (not res!1279569)) b!3129038))

(assert (= (and b!3129038 (not res!1279575)) b!3129035))

(assert (= (and b!3129035 (not res!1279576)) b!3129046))

(assert (= (and b!3129046 (not res!1279572)) b!3129036))

(assert (= (and b!3129036 c!525138) b!3129034))

(assert (= (and b!3129036 (not c!525138)) b!3129047))

(assert (= (and start!295552 ((_ is ElementMatch!9635) r!17423)) b!3129042))

(assert (= (and start!295552 ((_ is Concat!14956) r!17423)) b!3129037))

(assert (= (and start!295552 ((_ is Star!9635) r!17423)) b!3129044))

(assert (= (and start!295552 ((_ is Union!9635) r!17423)) b!3129040))

(assert (= (and start!295552 ((_ is Cons!35376) s!11993)) b!3129039))

(declare-fun m!3412475 () Bool)

(assert (=> b!3129033 m!3412475))

(declare-fun m!3412477 () Bool)

(assert (=> b!3129033 m!3412477))

(declare-fun m!3412479 () Bool)

(assert (=> b!3129034 m!3412479))

(declare-fun m!3412481 () Bool)

(assert (=> b!3129038 m!3412481))

(declare-fun m!3412483 () Bool)

(assert (=> b!3129038 m!3412483))

(declare-fun m!3412485 () Bool)

(assert (=> b!3129038 m!3412485))

(declare-fun m!3412487 () Bool)

(assert (=> b!3129038 m!3412487))

(assert (=> b!3129038 m!3412483))

(declare-fun m!3412489 () Bool)

(assert (=> b!3129038 m!3412489))

(declare-fun m!3412491 () Bool)

(assert (=> b!3129038 m!3412491))

(declare-fun m!3412493 () Bool)

(assert (=> b!3129046 m!3412493))

(declare-fun m!3412495 () Bool)

(assert (=> b!3129041 m!3412495))

(declare-fun m!3412497 () Bool)

(assert (=> b!3129041 m!3412497))

(declare-fun m!3412499 () Bool)

(assert (=> b!3129041 m!3412499))

(declare-fun m!3412501 () Bool)

(assert (=> b!3129043 m!3412501))

(declare-fun m!3412503 () Bool)

(assert (=> b!3129036 m!3412503))

(declare-fun m!3412505 () Bool)

(assert (=> b!3129036 m!3412505))

(declare-fun m!3412507 () Bool)

(assert (=> b!3129036 m!3412507))

(declare-fun m!3412509 () Bool)

(assert (=> b!3129036 m!3412509))

(declare-fun m!3412511 () Bool)

(assert (=> b!3129036 m!3412511))

(declare-fun m!3412513 () Bool)

(assert (=> start!295552 m!3412513))

(declare-fun m!3412515 () Bool)

(assert (=> b!3129045 m!3412515))

(declare-fun m!3412517 () Bool)

(assert (=> b!3129045 m!3412517))

(declare-fun m!3412519 () Bool)

(assert (=> b!3129045 m!3412519))

(declare-fun m!3412521 () Bool)

(assert (=> b!3129035 m!3412521))

(declare-fun m!3412523 () Bool)

(assert (=> b!3129035 m!3412523))

(check-sat (not b!3129046) (not b!3129044) (not b!3129039) (not b!3129040) (not b!3129041) (not b!3129045) tp_is_empty!16833 (not b!3129035) (not b!3129038) (not b!3129043) (not b!3129037) (not b!3129036) (not b!3129033) (not b!3129034) (not start!295552))
(check-sat)
