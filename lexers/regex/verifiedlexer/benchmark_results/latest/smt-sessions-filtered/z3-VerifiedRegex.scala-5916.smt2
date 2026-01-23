; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289660 () Bool)

(assert start!289660)

(declare-fun b!3005919 () Bool)

(assert (=> b!3005919 true))

(assert (=> b!3005919 true))

(assert (=> b!3005919 true))

(declare-fun lambda!112402 () Int)

(declare-fun lambda!112401 () Int)

(assert (=> b!3005919 (not (= lambda!112402 lambda!112401))))

(assert (=> b!3005919 true))

(assert (=> b!3005919 true))

(assert (=> b!3005919 true))

(declare-fun b!3005909 () Bool)

(declare-fun e!1887847 () Bool)

(declare-fun e!1887851 () Bool)

(assert (=> b!3005909 (= e!1887847 e!1887851)))

(declare-fun res!1238834 () Bool)

(assert (=> b!3005909 (=> res!1238834 e!1887851)))

(declare-fun lt!1042942 () Int)

(declare-fun lt!1042943 () Int)

(assert (=> b!3005909 (= res!1238834 (not (= lt!1042942 lt!1042943)))))

(declare-datatypes ((C!18952 0))(
  ( (C!18953 (val!11512 Int)) )
))
(declare-datatypes ((List!35248 0))(
  ( (Nil!35124) (Cons!35124 (h!40544 C!18952) (t!234313 List!35248)) )
))
(declare-fun s!11993 () List!35248)

(declare-fun size!26513 (List!35248) Int)

(assert (=> b!3005909 (= lt!1042943 (size!26513 s!11993))))

(declare-datatypes ((tuple2!34060 0))(
  ( (tuple2!34061 (_1!20162 List!35248) (_2!20162 List!35248)) )
))
(declare-fun lt!1042944 () tuple2!34060)

(assert (=> b!3005909 (= lt!1042942 (size!26513 (_2!20162 lt!1042944)))))

(declare-datatypes ((Regex!9383 0))(
  ( (ElementMatch!9383 (c!494881 C!18952)) (Concat!14704 (regOne!19278 Regex!9383) (regTwo!19278 Regex!9383)) (EmptyExpr!9383) (Star!9383 (reg!9712 Regex!9383)) (EmptyLang!9383) (Union!9383 (regOne!19279 Regex!9383) (regTwo!19279 Regex!9383)) )
))
(declare-fun r!17423 () Regex!9383)

(declare-fun matchR!4265 (Regex!9383 List!35248) Bool)

(assert (=> b!3005909 (matchR!4265 (reg!9712 r!17423) (_1!20162 lt!1042944))))

(declare-datatypes ((Unit!49181 0))(
  ( (Unit!49182) )
))
(declare-fun lt!1042940 () Unit!49181)

(declare-fun lemmaSimplifySound!224 (Regex!9383 List!35248) Unit!49181)

(assert (=> b!3005909 (= lt!1042940 (lemmaSimplifySound!224 (reg!9712 r!17423) (_1!20162 lt!1042944)))))

(declare-fun b!3005910 () Bool)

(declare-fun e!1887850 () Bool)

(declare-fun e!1887845 () Bool)

(assert (=> b!3005910 (= e!1887850 e!1887845)))

(declare-fun res!1238835 () Bool)

(assert (=> b!3005910 (=> res!1238835 e!1887845)))

(declare-fun lt!1042946 () Regex!9383)

(declare-fun isEmptyLang!473 (Regex!9383) Bool)

(assert (=> b!3005910 (= res!1238835 (isEmptyLang!473 lt!1042946))))

(declare-fun simplify!374 (Regex!9383) Regex!9383)

(assert (=> b!3005910 (= lt!1042946 (simplify!374 (reg!9712 r!17423)))))

(declare-fun b!3005911 () Bool)

(declare-fun e!1887846 () Bool)

(declare-fun tp!954680 () Bool)

(declare-fun tp!954681 () Bool)

(assert (=> b!3005911 (= e!1887846 (and tp!954680 tp!954681))))

(declare-fun b!3005912 () Bool)

(declare-fun tp_is_empty!16329 () Bool)

(assert (=> b!3005912 (= e!1887846 tp_is_empty!16329)))

(declare-fun b!3005913 () Bool)

(declare-fun e!1887848 () Bool)

(declare-fun tp!954682 () Bool)

(assert (=> b!3005913 (= e!1887848 (and tp_is_empty!16329 tp!954682))))

(declare-fun res!1238833 () Bool)

(declare-fun e!1887842 () Bool)

(assert (=> start!289660 (=> (not res!1238833) (not e!1887842))))

(declare-fun validRegex!4116 (Regex!9383) Bool)

(assert (=> start!289660 (= res!1238833 (validRegex!4116 r!17423))))

(assert (=> start!289660 e!1887842))

(assert (=> start!289660 e!1887846))

(assert (=> start!289660 e!1887848))

(declare-fun b!3005914 () Bool)

(declare-fun res!1238829 () Bool)

(assert (=> b!3005914 (=> res!1238829 e!1887851)))

(declare-fun ++!8411 (List!35248 List!35248) List!35248)

(assert (=> b!3005914 (= res!1238829 (not (= (++!8411 (_1!20162 lt!1042944) (_2!20162 lt!1042944)) s!11993)))))

(declare-fun b!3005915 () Bool)

(declare-fun e!1887843 () Bool)

(assert (=> b!3005915 (= e!1887843 e!1887847)))

(declare-fun res!1238827 () Bool)

(assert (=> b!3005915 (=> res!1238827 e!1887847)))

(assert (=> b!3005915 (= res!1238827 (not (matchR!4265 lt!1042946 (_1!20162 lt!1042944))))))

(declare-datatypes ((Option!6762 0))(
  ( (None!6761) (Some!6761 (v!34895 tuple2!34060)) )
))
(declare-fun lt!1042948 () Option!6762)

(declare-fun get!10921 (Option!6762) tuple2!34060)

(assert (=> b!3005915 (= lt!1042944 (get!10921 lt!1042948))))

(declare-fun b!3005916 () Bool)

(assert (=> b!3005916 (= e!1887842 (not e!1887850))))

(declare-fun res!1238832 () Bool)

(assert (=> b!3005916 (=> res!1238832 e!1887850)))

(declare-fun lt!1042952 () Bool)

(get-info :version)

(assert (=> b!3005916 (= res!1238832 (or lt!1042952 ((_ is Concat!14704) r!17423) ((_ is Union!9383) r!17423) (not ((_ is Star!9383) r!17423))))))

(declare-fun matchRSpec!1520 (Regex!9383 List!35248) Bool)

(assert (=> b!3005916 (= lt!1042952 (matchRSpec!1520 r!17423 s!11993))))

(assert (=> b!3005916 (= lt!1042952 (matchR!4265 r!17423 s!11993))))

(declare-fun lt!1042939 () Unit!49181)

(declare-fun mainMatchTheorem!1520 (Regex!9383 List!35248) Unit!49181)

(assert (=> b!3005916 (= lt!1042939 (mainMatchTheorem!1520 r!17423 s!11993))))

(declare-fun b!3005917 () Bool)

(declare-fun tp!954683 () Bool)

(declare-fun tp!954684 () Bool)

(assert (=> b!3005917 (= e!1887846 (and tp!954683 tp!954684))))

(declare-fun b!3005918 () Bool)

(declare-fun lt!1042941 () Int)

(assert (=> b!3005918 (= e!1887851 (or (not (= (+ lt!1042941 lt!1042942) lt!1042943)) (= lt!1042941 0)))))

(assert (=> b!3005918 (= lt!1042941 (size!26513 (_1!20162 lt!1042944)))))

(declare-fun e!1887849 () Bool)

(assert (=> b!3005919 (= e!1887849 e!1887843)))

(declare-fun res!1238830 () Bool)

(assert (=> b!3005919 (=> res!1238830 e!1887843)))

(declare-fun lt!1042949 () Bool)

(assert (=> b!3005919 (= res!1238830 (not lt!1042949))))

(declare-fun Exists!1652 (Int) Bool)

(assert (=> b!3005919 (= (Exists!1652 lambda!112401) (Exists!1652 lambda!112402))))

(declare-fun lt!1042950 () Unit!49181)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!318 (Regex!9383 List!35248) Unit!49181)

(assert (=> b!3005919 (= lt!1042950 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!318 lt!1042946 s!11993))))

(assert (=> b!3005919 (= lt!1042949 (Exists!1652 lambda!112401))))

(declare-fun isDefined!5313 (Option!6762) Bool)

(assert (=> b!3005919 (= lt!1042949 (isDefined!5313 lt!1042948))))

(declare-fun lt!1042951 () Regex!9383)

(declare-fun findConcatSeparation!1156 (Regex!9383 Regex!9383 List!35248 List!35248 List!35248) Option!6762)

(assert (=> b!3005919 (= lt!1042948 (findConcatSeparation!1156 lt!1042946 lt!1042951 Nil!35124 s!11993 s!11993))))

(declare-fun lt!1042947 () Unit!49181)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!934 (Regex!9383 Regex!9383 List!35248) Unit!49181)

(assert (=> b!3005919 (= lt!1042947 (lemmaFindConcatSeparationEquivalentToExists!934 lt!1042946 lt!1042951 s!11993))))

(declare-fun b!3005920 () Bool)

(declare-fun tp!954685 () Bool)

(assert (=> b!3005920 (= e!1887846 tp!954685)))

(declare-fun b!3005921 () Bool)

(declare-fun e!1887844 () Bool)

(assert (=> b!3005921 (= e!1887845 e!1887844)))

(declare-fun res!1238831 () Bool)

(assert (=> b!3005921 (=> res!1238831 e!1887844)))

(assert (=> b!3005921 (= res!1238831 (not (matchR!4265 lt!1042951 s!11993)))))

(assert (=> b!3005921 (= lt!1042951 (Star!9383 lt!1042946))))

(declare-fun b!3005922 () Bool)

(declare-fun res!1238836 () Bool)

(assert (=> b!3005922 (=> res!1238836 e!1887847)))

(assert (=> b!3005922 (= res!1238836 (not (matchR!4265 lt!1042951 (_2!20162 lt!1042944))))))

(declare-fun b!3005923 () Bool)

(assert (=> b!3005923 (= e!1887844 e!1887849)))

(declare-fun res!1238828 () Bool)

(assert (=> b!3005923 (=> res!1238828 e!1887849)))

(declare-fun isEmpty!19405 (List!35248) Bool)

(assert (=> b!3005923 (= res!1238828 (isEmpty!19405 s!11993))))

(assert (=> b!3005923 (matchRSpec!1520 lt!1042951 s!11993)))

(declare-fun lt!1042945 () Unit!49181)

(assert (=> b!3005923 (= lt!1042945 (mainMatchTheorem!1520 lt!1042951 s!11993))))

(assert (= (and start!289660 res!1238833) b!3005916))

(assert (= (and b!3005916 (not res!1238832)) b!3005910))

(assert (= (and b!3005910 (not res!1238835)) b!3005921))

(assert (= (and b!3005921 (not res!1238831)) b!3005923))

(assert (= (and b!3005923 (not res!1238828)) b!3005919))

(assert (= (and b!3005919 (not res!1238830)) b!3005915))

(assert (= (and b!3005915 (not res!1238827)) b!3005922))

(assert (= (and b!3005922 (not res!1238836)) b!3005909))

(assert (= (and b!3005909 (not res!1238834)) b!3005914))

(assert (= (and b!3005914 (not res!1238829)) b!3005918))

(assert (= (and start!289660 ((_ is ElementMatch!9383) r!17423)) b!3005912))

(assert (= (and start!289660 ((_ is Concat!14704) r!17423)) b!3005917))

(assert (= (and start!289660 ((_ is Star!9383) r!17423)) b!3005920))

(assert (= (and start!289660 ((_ is Union!9383) r!17423)) b!3005911))

(assert (= (and start!289660 ((_ is Cons!35124) s!11993)) b!3005913))

(declare-fun m!3354483 () Bool)

(assert (=> b!3005921 m!3354483))

(declare-fun m!3354485 () Bool)

(assert (=> b!3005922 m!3354485))

(declare-fun m!3354487 () Bool)

(assert (=> b!3005914 m!3354487))

(declare-fun m!3354489 () Bool)

(assert (=> b!3005918 m!3354489))

(declare-fun m!3354491 () Bool)

(assert (=> b!3005919 m!3354491))

(declare-fun m!3354493 () Bool)

(assert (=> b!3005919 m!3354493))

(assert (=> b!3005919 m!3354493))

(declare-fun m!3354495 () Bool)

(assert (=> b!3005919 m!3354495))

(declare-fun m!3354497 () Bool)

(assert (=> b!3005919 m!3354497))

(declare-fun m!3354499 () Bool)

(assert (=> b!3005919 m!3354499))

(declare-fun m!3354501 () Bool)

(assert (=> b!3005919 m!3354501))

(declare-fun m!3354503 () Bool)

(assert (=> b!3005923 m!3354503))

(declare-fun m!3354505 () Bool)

(assert (=> b!3005923 m!3354505))

(declare-fun m!3354507 () Bool)

(assert (=> b!3005923 m!3354507))

(declare-fun m!3354509 () Bool)

(assert (=> b!3005915 m!3354509))

(declare-fun m!3354511 () Bool)

(assert (=> b!3005915 m!3354511))

(declare-fun m!3354513 () Bool)

(assert (=> start!289660 m!3354513))

(declare-fun m!3354515 () Bool)

(assert (=> b!3005916 m!3354515))

(declare-fun m!3354517 () Bool)

(assert (=> b!3005916 m!3354517))

(declare-fun m!3354519 () Bool)

(assert (=> b!3005916 m!3354519))

(declare-fun m!3354521 () Bool)

(assert (=> b!3005910 m!3354521))

(declare-fun m!3354523 () Bool)

(assert (=> b!3005910 m!3354523))

(declare-fun m!3354525 () Bool)

(assert (=> b!3005909 m!3354525))

(declare-fun m!3354527 () Bool)

(assert (=> b!3005909 m!3354527))

(declare-fun m!3354529 () Bool)

(assert (=> b!3005909 m!3354529))

(declare-fun m!3354531 () Bool)

(assert (=> b!3005909 m!3354531))

(check-sat (not b!3005918) (not b!3005920) (not b!3005921) (not b!3005916) (not b!3005913) (not b!3005917) (not b!3005915) (not b!3005914) (not b!3005911) (not b!3005923) (not b!3005909) (not b!3005919) (not start!289660) (not b!3005922) tp_is_empty!16329 (not b!3005910))
(check-sat)
