; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289784 () Bool)

(assert start!289784)

(declare-fun b!3007884 () Bool)

(assert (=> b!3007884 true))

(assert (=> b!3007884 true))

(assert (=> b!3007884 true))

(declare-fun lambda!112502 () Int)

(declare-fun lambda!112501 () Int)

(assert (=> b!3007884 (not (= lambda!112502 lambda!112501))))

(assert (=> b!3007884 true))

(assert (=> b!3007884 true))

(assert (=> b!3007884 true))

(declare-fun res!1239594 () Bool)

(declare-fun e!1888871 () Bool)

(assert (=> start!289784 (=> (not res!1239594) (not e!1888871))))

(declare-datatypes ((C!18960 0))(
  ( (C!18961 (val!11516 Int)) )
))
(declare-datatypes ((Regex!9387 0))(
  ( (ElementMatch!9387 (c!495319 C!18960)) (Concat!14708 (regOne!19286 Regex!9387) (regTwo!19286 Regex!9387)) (EmptyExpr!9387) (Star!9387 (reg!9716 Regex!9387)) (EmptyLang!9387) (Union!9387 (regOne!19287 Regex!9387) (regTwo!19287 Regex!9387)) )
))
(declare-fun r!17423 () Regex!9387)

(declare-fun validRegex!4120 (Regex!9387) Bool)

(assert (=> start!289784 (= res!1239594 (validRegex!4120 r!17423))))

(assert (=> start!289784 e!1888871))

(declare-fun e!1888873 () Bool)

(assert (=> start!289784 e!1888873))

(declare-fun e!1888870 () Bool)

(assert (=> start!289784 e!1888870))

(declare-fun b!3007875 () Bool)

(declare-fun res!1239586 () Bool)

(declare-fun e!1888868 () Bool)

(assert (=> b!3007875 (=> res!1239586 e!1888868)))

(declare-datatypes ((List!35252 0))(
  ( (Nil!35128) (Cons!35128 (h!40548 C!18960) (t!234317 List!35252)) )
))
(declare-datatypes ((tuple2!34068 0))(
  ( (tuple2!34069 (_1!20166 List!35252) (_2!20166 List!35252)) )
))
(declare-fun lt!1043298 () tuple2!34068)

(declare-fun s!11993 () List!35252)

(declare-fun ++!8415 (List!35252 List!35252) List!35252)

(assert (=> b!3007875 (= res!1239586 (not (= (++!8415 (_1!20166 lt!1043298) (_2!20166 lt!1043298)) s!11993)))))

(declare-fun b!3007876 () Bool)

(declare-fun e!1888869 () Bool)

(declare-fun e!1888866 () Bool)

(assert (=> b!3007876 (= e!1888869 e!1888866)))

(declare-fun res!1239591 () Bool)

(assert (=> b!3007876 (=> res!1239591 e!1888866)))

(declare-fun isEmpty!19411 (List!35252) Bool)

(assert (=> b!3007876 (= res!1239591 (isEmpty!19411 s!11993))))

(declare-fun lt!1043300 () Regex!9387)

(declare-fun matchRSpec!1524 (Regex!9387 List!35252) Bool)

(assert (=> b!3007876 (matchRSpec!1524 lt!1043300 s!11993)))

(declare-datatypes ((Unit!49189 0))(
  ( (Unit!49190) )
))
(declare-fun lt!1043293 () Unit!49189)

(declare-fun mainMatchTheorem!1524 (Regex!9387 List!35252) Unit!49189)

(assert (=> b!3007876 (= lt!1043293 (mainMatchTheorem!1524 lt!1043300 s!11993))))

(declare-fun b!3007877 () Bool)

(declare-fun res!1239590 () Bool)

(declare-fun e!1888867 () Bool)

(assert (=> b!3007877 (=> res!1239590 e!1888867)))

(declare-fun matchR!4269 (Regex!9387 List!35252) Bool)

(assert (=> b!3007877 (= res!1239590 (not (matchR!4269 lt!1043300 (_2!20166 lt!1043298))))))

(declare-fun b!3007878 () Bool)

(declare-fun tp!955083 () Bool)

(assert (=> b!3007878 (= e!1888873 tp!955083)))

(declare-fun b!3007879 () Bool)

(declare-fun tp_is_empty!16337 () Bool)

(assert (=> b!3007879 (= e!1888873 tp_is_empty!16337)))

(declare-fun b!3007880 () Bool)

(declare-fun tp!955084 () Bool)

(declare-fun tp!955082 () Bool)

(assert (=> b!3007880 (= e!1888873 (and tp!955084 tp!955082))))

(declare-fun b!3007881 () Bool)

(assert (=> b!3007881 (= e!1888868 true)))

(declare-fun lt!1043291 () Int)

(declare-fun size!26517 (List!35252) Int)

(assert (=> b!3007881 (= lt!1043291 (size!26517 (_1!20166 lt!1043298)))))

(declare-fun b!3007882 () Bool)

(declare-fun e!1888872 () Bool)

(assert (=> b!3007882 (= e!1888872 e!1888867)))

(declare-fun res!1239592 () Bool)

(assert (=> b!3007882 (=> res!1239592 e!1888867)))

(declare-fun lt!1043301 () Regex!9387)

(assert (=> b!3007882 (= res!1239592 (not (matchR!4269 lt!1043301 (_1!20166 lt!1043298))))))

(declare-datatypes ((Option!6766 0))(
  ( (None!6765) (Some!6765 (v!34899 tuple2!34068)) )
))
(declare-fun lt!1043302 () Option!6766)

(declare-fun get!10927 (Option!6766) tuple2!34068)

(assert (=> b!3007882 (= lt!1043298 (get!10927 lt!1043302))))

(declare-fun b!3007883 () Bool)

(declare-fun e!1888864 () Bool)

(declare-fun e!1888865 () Bool)

(assert (=> b!3007883 (= e!1888864 e!1888865)))

(declare-fun res!1239588 () Bool)

(assert (=> b!3007883 (=> res!1239588 e!1888865)))

(declare-fun isEmptyLang!477 (Regex!9387) Bool)

(assert (=> b!3007883 (= res!1239588 (isEmptyLang!477 lt!1043301))))

(declare-fun simplify!378 (Regex!9387) Regex!9387)

(assert (=> b!3007883 (= lt!1043301 (simplify!378 (reg!9716 r!17423)))))

(assert (=> b!3007884 (= e!1888866 e!1888872)))

(declare-fun res!1239589 () Bool)

(assert (=> b!3007884 (=> res!1239589 e!1888872)))

(declare-fun lt!1043297 () Bool)

(assert (=> b!3007884 (= res!1239589 (not lt!1043297))))

(declare-fun Exists!1656 (Int) Bool)

(assert (=> b!3007884 (= (Exists!1656 lambda!112501) (Exists!1656 lambda!112502))))

(declare-fun lt!1043292 () Unit!49189)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!322 (Regex!9387 List!35252) Unit!49189)

(assert (=> b!3007884 (= lt!1043292 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!322 lt!1043301 s!11993))))

(assert (=> b!3007884 (= lt!1043297 (Exists!1656 lambda!112501))))

(declare-fun isDefined!5317 (Option!6766) Bool)

(assert (=> b!3007884 (= lt!1043297 (isDefined!5317 lt!1043302))))

(declare-fun findConcatSeparation!1160 (Regex!9387 Regex!9387 List!35252 List!35252 List!35252) Option!6766)

(assert (=> b!3007884 (= lt!1043302 (findConcatSeparation!1160 lt!1043301 lt!1043300 Nil!35128 s!11993 s!11993))))

(declare-fun lt!1043296 () Unit!49189)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!938 (Regex!9387 Regex!9387 List!35252) Unit!49189)

(assert (=> b!3007884 (= lt!1043296 (lemmaFindConcatSeparationEquivalentToExists!938 lt!1043301 lt!1043300 s!11993))))

(declare-fun b!3007885 () Bool)

(assert (=> b!3007885 (= e!1888865 e!1888869)))

(declare-fun res!1239585 () Bool)

(assert (=> b!3007885 (=> res!1239585 e!1888869)))

(assert (=> b!3007885 (= res!1239585 (not (matchR!4269 lt!1043300 s!11993)))))

(assert (=> b!3007885 (= lt!1043300 (Star!9387 lt!1043301))))

(declare-fun b!3007886 () Bool)

(declare-fun tp!955080 () Bool)

(declare-fun tp!955085 () Bool)

(assert (=> b!3007886 (= e!1888873 (and tp!955080 tp!955085))))

(declare-fun b!3007887 () Bool)

(assert (=> b!3007887 (= e!1888867 e!1888868)))

(declare-fun res!1239593 () Bool)

(assert (=> b!3007887 (=> res!1239593 e!1888868)))

(assert (=> b!3007887 (= res!1239593 (not (= (size!26517 (_2!20166 lt!1043298)) (size!26517 s!11993))))))

(assert (=> b!3007887 (matchR!4269 (reg!9716 r!17423) (_1!20166 lt!1043298))))

(declare-fun lt!1043295 () Unit!49189)

(declare-fun lemmaSimplifySound!228 (Regex!9387 List!35252) Unit!49189)

(assert (=> b!3007887 (= lt!1043295 (lemmaSimplifySound!228 (reg!9716 r!17423) (_1!20166 lt!1043298)))))

(declare-fun b!3007888 () Bool)

(assert (=> b!3007888 (= e!1888871 (not e!1888864))))

(declare-fun res!1239587 () Bool)

(assert (=> b!3007888 (=> res!1239587 e!1888864)))

(declare-fun lt!1043294 () Bool)

(get-info :version)

(assert (=> b!3007888 (= res!1239587 (or lt!1043294 ((_ is Concat!14708) r!17423) ((_ is Union!9387) r!17423) (not ((_ is Star!9387) r!17423))))))

(assert (=> b!3007888 (= lt!1043294 (matchRSpec!1524 r!17423 s!11993))))

(assert (=> b!3007888 (= lt!1043294 (matchR!4269 r!17423 s!11993))))

(declare-fun lt!1043299 () Unit!49189)

(assert (=> b!3007888 (= lt!1043299 (mainMatchTheorem!1524 r!17423 s!11993))))

(declare-fun b!3007889 () Bool)

(declare-fun tp!955081 () Bool)

(assert (=> b!3007889 (= e!1888870 (and tp_is_empty!16337 tp!955081))))

(assert (= (and start!289784 res!1239594) b!3007888))

(assert (= (and b!3007888 (not res!1239587)) b!3007883))

(assert (= (and b!3007883 (not res!1239588)) b!3007885))

(assert (= (and b!3007885 (not res!1239585)) b!3007876))

(assert (= (and b!3007876 (not res!1239591)) b!3007884))

(assert (= (and b!3007884 (not res!1239589)) b!3007882))

(assert (= (and b!3007882 (not res!1239592)) b!3007877))

(assert (= (and b!3007877 (not res!1239590)) b!3007887))

(assert (= (and b!3007887 (not res!1239593)) b!3007875))

(assert (= (and b!3007875 (not res!1239586)) b!3007881))

(assert (= (and start!289784 ((_ is ElementMatch!9387) r!17423)) b!3007879))

(assert (= (and start!289784 ((_ is Concat!14708) r!17423)) b!3007880))

(assert (= (and start!289784 ((_ is Star!9387) r!17423)) b!3007878))

(assert (= (and start!289784 ((_ is Union!9387) r!17423)) b!3007886))

(assert (= (and start!289784 ((_ is Cons!35128) s!11993)) b!3007889))

(declare-fun m!3355707 () Bool)

(assert (=> b!3007882 m!3355707))

(declare-fun m!3355709 () Bool)

(assert (=> b!3007882 m!3355709))

(declare-fun m!3355711 () Bool)

(assert (=> b!3007888 m!3355711))

(declare-fun m!3355713 () Bool)

(assert (=> b!3007888 m!3355713))

(declare-fun m!3355715 () Bool)

(assert (=> b!3007888 m!3355715))

(declare-fun m!3355717 () Bool)

(assert (=> b!3007876 m!3355717))

(declare-fun m!3355719 () Bool)

(assert (=> b!3007876 m!3355719))

(declare-fun m!3355721 () Bool)

(assert (=> b!3007876 m!3355721))

(declare-fun m!3355723 () Bool)

(assert (=> b!3007885 m!3355723))

(declare-fun m!3355725 () Bool)

(assert (=> b!3007877 m!3355725))

(declare-fun m!3355727 () Bool)

(assert (=> b!3007883 m!3355727))

(declare-fun m!3355729 () Bool)

(assert (=> b!3007883 m!3355729))

(declare-fun m!3355731 () Bool)

(assert (=> b!3007887 m!3355731))

(declare-fun m!3355733 () Bool)

(assert (=> b!3007887 m!3355733))

(declare-fun m!3355735 () Bool)

(assert (=> b!3007887 m!3355735))

(declare-fun m!3355737 () Bool)

(assert (=> b!3007887 m!3355737))

(declare-fun m!3355739 () Bool)

(assert (=> start!289784 m!3355739))

(declare-fun m!3355741 () Bool)

(assert (=> b!3007881 m!3355741))

(declare-fun m!3355743 () Bool)

(assert (=> b!3007884 m!3355743))

(declare-fun m!3355745 () Bool)

(assert (=> b!3007884 m!3355745))

(declare-fun m!3355747 () Bool)

(assert (=> b!3007884 m!3355747))

(declare-fun m!3355749 () Bool)

(assert (=> b!3007884 m!3355749))

(declare-fun m!3355751 () Bool)

(assert (=> b!3007884 m!3355751))

(assert (=> b!3007884 m!3355751))

(declare-fun m!3355753 () Bool)

(assert (=> b!3007884 m!3355753))

(declare-fun m!3355755 () Bool)

(assert (=> b!3007875 m!3355755))

(check-sat (not b!3007885) (not b!3007876) (not b!3007882) (not b!3007877) (not b!3007887) tp_is_empty!16337 (not b!3007886) (not b!3007884) (not b!3007878) (not b!3007880) (not b!3007881) (not b!3007888) (not start!289784) (not b!3007875) (not b!3007889) (not b!3007883))
(check-sat)
