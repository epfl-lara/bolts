; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285012 () Bool)

(assert start!285012)

(declare-fun b!2931074 () Bool)

(assert (=> b!2931074 true))

(assert (=> b!2931074 true))

(assert (=> b!2931074 true))

(declare-fun lambda!109110 () Int)

(declare-fun lambda!109109 () Int)

(assert (=> b!2931074 (not (= lambda!109110 lambda!109109))))

(assert (=> b!2931074 true))

(assert (=> b!2931074 true))

(assert (=> b!2931074 true))

(declare-fun b!2931073 () Bool)

(declare-fun e!1848234 () Bool)

(declare-fun e!1848235 () Bool)

(assert (=> b!2931073 (= e!1848234 e!1848235)))

(declare-fun res!1210045 () Bool)

(assert (=> b!2931073 (=> res!1210045 e!1848235)))

(declare-datatypes ((C!18288 0))(
  ( (C!18289 (val!11180 Int)) )
))
(declare-datatypes ((Regex!9051 0))(
  ( (ElementMatch!9051 (c!478647 C!18288)) (Concat!14372 (regOne!18614 Regex!9051) (regTwo!18614 Regex!9051)) (EmptyExpr!9051) (Star!9051 (reg!9380 Regex!9051)) (EmptyLang!9051) (Union!9051 (regOne!18615 Regex!9051) (regTwo!18615 Regex!9051)) )
))
(declare-fun r!17423 () Regex!9051)

(declare-datatypes ((List!34916 0))(
  ( (Nil!34792) (Cons!34792 (h!40212 C!18288) (t!233981 List!34916)) )
))
(declare-datatypes ((tuple2!33752 0))(
  ( (tuple2!33753 (_1!20008 List!34916) (_2!20008 List!34916)) )
))
(declare-fun lt!1027867 () tuple2!33752)

(declare-fun matchR!3933 (Regex!9051 List!34916) Bool)

(assert (=> b!2931073 (= res!1210045 (not (matchR!3933 (reg!9380 r!17423) (_1!20008 lt!1027867))))))

(declare-datatypes ((Option!6608 0))(
  ( (None!6607) (Some!6607 (v!34741 tuple2!33752)) )
))
(declare-fun lt!1027869 () Option!6608)

(declare-fun get!10625 (Option!6608) tuple2!33752)

(assert (=> b!2931073 (= lt!1027867 (get!10625 lt!1027869))))

(declare-fun res!1210047 () Bool)

(declare-fun e!1848237 () Bool)

(assert (=> start!285012 (=> (not res!1210047) (not e!1848237))))

(declare-fun validRegex!3784 (Regex!9051) Bool)

(assert (=> start!285012 (= res!1210047 (validRegex!3784 r!17423))))

(assert (=> start!285012 e!1848237))

(declare-fun e!1848236 () Bool)

(assert (=> start!285012 e!1848236))

(declare-fun e!1848238 () Bool)

(assert (=> start!285012 e!1848238))

(declare-fun e!1848233 () Bool)

(assert (=> b!2931074 (= e!1848233 e!1848234)))

(declare-fun res!1210046 () Bool)

(assert (=> b!2931074 (=> res!1210046 e!1848234)))

(declare-fun lt!1027872 () Bool)

(assert (=> b!2931074 (= res!1210046 (not lt!1027872))))

(declare-fun Exists!1413 (Int) Bool)

(assert (=> b!2931074 (= (Exists!1413 lambda!109109) (Exists!1413 lambda!109110))))

(declare-datatypes ((Unit!48443 0))(
  ( (Unit!48444) )
))
(declare-fun lt!1027875 () Unit!48443)

(declare-fun s!11993 () List!34916)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!224 (Regex!9051 List!34916) Unit!48443)

(assert (=> b!2931074 (= lt!1027875 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!224 (reg!9380 r!17423) s!11993))))

(assert (=> b!2931074 (= lt!1027872 (Exists!1413 lambda!109109))))

(declare-fun isDefined!5159 (Option!6608) Bool)

(assert (=> b!2931074 (= lt!1027872 (isDefined!5159 lt!1027869))))

(declare-fun lt!1027877 () Regex!9051)

(declare-fun findConcatSeparation!1002 (Regex!9051 Regex!9051 List!34916 List!34916 List!34916) Option!6608)

(assert (=> b!2931074 (= lt!1027869 (findConcatSeparation!1002 (reg!9380 r!17423) lt!1027877 Nil!34792 s!11993 s!11993))))

(declare-fun lt!1027874 () Unit!48443)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!784 (Regex!9051 Regex!9051 List!34916) Unit!48443)

(assert (=> b!2931074 (= lt!1027874 (lemmaFindConcatSeparationEquivalentToExists!784 (reg!9380 r!17423) lt!1027877 s!11993))))

(assert (=> b!2931074 (= lt!1027877 (Star!9051 (reg!9380 r!17423)))))

(declare-fun b!2931075 () Bool)

(declare-fun tp!939377 () Bool)

(assert (=> b!2931075 (= e!1848236 tp!939377)))

(declare-fun b!2931076 () Bool)

(declare-fun tp!939378 () Bool)

(declare-fun tp!939380 () Bool)

(assert (=> b!2931076 (= e!1848236 (and tp!939378 tp!939380))))

(declare-fun b!2931077 () Bool)

(declare-fun tp!939379 () Bool)

(declare-fun tp!939376 () Bool)

(assert (=> b!2931077 (= e!1848236 (and tp!939379 tp!939376))))

(declare-fun b!2931078 () Bool)

(assert (=> b!2931078 (= e!1848235 true)))

(declare-fun lt!1027876 () Unit!48443)

(declare-fun e!1848239 () Unit!48443)

(assert (=> b!2931078 (= lt!1027876 e!1848239)))

(declare-fun c!478646 () Bool)

(declare-fun size!26447 (List!34916) Int)

(assert (=> b!2931078 (= c!478646 (= (size!26447 (_2!20008 lt!1027867)) (size!26447 s!11993)))))

(declare-fun simplify!58 (Regex!9051) Regex!9051)

(assert (=> b!2931078 (matchR!3933 (simplify!58 (reg!9380 r!17423)) (_1!20008 lt!1027867))))

(declare-fun lt!1027871 () Unit!48443)

(declare-fun lemmaSimplifySound!54 (Regex!9051 List!34916) Unit!48443)

(assert (=> b!2931078 (= lt!1027871 (lemmaSimplifySound!54 (reg!9380 r!17423) (_1!20008 lt!1027867)))))

(declare-fun b!2931079 () Bool)

(declare-fun tp_is_empty!15665 () Bool)

(assert (=> b!2931079 (= e!1848236 tp_is_empty!15665)))

(declare-fun b!2931080 () Bool)

(declare-fun Unit!48445 () Unit!48443)

(assert (=> b!2931080 (= e!1848239 Unit!48445)))

(declare-fun lt!1027873 () Unit!48443)

(declare-fun mainMatchTheorem!1188 (Regex!9051 List!34916) Unit!48443)

(assert (=> b!2931080 (= lt!1027873 (mainMatchTheorem!1188 (reg!9380 r!17423) (_1!20008 lt!1027867)))))

(assert (=> b!2931080 false))

(declare-fun b!2931081 () Bool)

(declare-fun res!1210044 () Bool)

(assert (=> b!2931081 (=> res!1210044 e!1848235)))

(assert (=> b!2931081 (= res!1210044 (not (matchR!3933 lt!1027877 (_2!20008 lt!1027867))))))

(declare-fun b!2931082 () Bool)

(declare-fun res!1210048 () Bool)

(assert (=> b!2931082 (=> res!1210048 e!1848233)))

(declare-fun isEmpty!19043 (List!34916) Bool)

(assert (=> b!2931082 (= res!1210048 (isEmpty!19043 s!11993))))

(declare-fun b!2931083 () Bool)

(declare-fun Unit!48446 () Unit!48443)

(assert (=> b!2931083 (= e!1848239 Unit!48446)))

(declare-fun b!2931084 () Bool)

(assert (=> b!2931084 (= e!1848237 (not e!1848233))))

(declare-fun res!1210043 () Bool)

(assert (=> b!2931084 (=> res!1210043 e!1848233)))

(declare-fun lt!1027868 () Bool)

(get-info :version)

(assert (=> b!2931084 (= res!1210043 (or (not lt!1027868) ((_ is Concat!14372) r!17423) ((_ is Union!9051) r!17423) (not ((_ is Star!9051) r!17423))))))

(declare-fun matchRSpec!1188 (Regex!9051 List!34916) Bool)

(assert (=> b!2931084 (= lt!1027868 (matchRSpec!1188 r!17423 s!11993))))

(assert (=> b!2931084 (= lt!1027868 (matchR!3933 r!17423 s!11993))))

(declare-fun lt!1027870 () Unit!48443)

(assert (=> b!2931084 (= lt!1027870 (mainMatchTheorem!1188 r!17423 s!11993))))

(declare-fun b!2931085 () Bool)

(declare-fun tp!939381 () Bool)

(assert (=> b!2931085 (= e!1848238 (and tp_is_empty!15665 tp!939381))))

(assert (= (and start!285012 res!1210047) b!2931084))

(assert (= (and b!2931084 (not res!1210043)) b!2931082))

(assert (= (and b!2931082 (not res!1210048)) b!2931074))

(assert (= (and b!2931074 (not res!1210046)) b!2931073))

(assert (= (and b!2931073 (not res!1210045)) b!2931081))

(assert (= (and b!2931081 (not res!1210044)) b!2931078))

(assert (= (and b!2931078 c!478646) b!2931080))

(assert (= (and b!2931078 (not c!478646)) b!2931083))

(assert (= (and start!285012 ((_ is ElementMatch!9051) r!17423)) b!2931079))

(assert (= (and start!285012 ((_ is Concat!14372) r!17423)) b!2931076))

(assert (= (and start!285012 ((_ is Star!9051) r!17423)) b!2931075))

(assert (= (and start!285012 ((_ is Union!9051) r!17423)) b!2931077))

(assert (= (and start!285012 ((_ is Cons!34792) s!11993)) b!2931085))

(declare-fun m!3321105 () Bool)

(assert (=> b!2931080 m!3321105))

(declare-fun m!3321107 () Bool)

(assert (=> b!2931074 m!3321107))

(declare-fun m!3321109 () Bool)

(assert (=> b!2931074 m!3321109))

(declare-fun m!3321111 () Bool)

(assert (=> b!2931074 m!3321111))

(declare-fun m!3321113 () Bool)

(assert (=> b!2931074 m!3321113))

(declare-fun m!3321115 () Bool)

(assert (=> b!2931074 m!3321115))

(declare-fun m!3321117 () Bool)

(assert (=> b!2931074 m!3321117))

(assert (=> b!2931074 m!3321109))

(declare-fun m!3321119 () Bool)

(assert (=> b!2931084 m!3321119))

(declare-fun m!3321121 () Bool)

(assert (=> b!2931084 m!3321121))

(declare-fun m!3321123 () Bool)

(assert (=> b!2931084 m!3321123))

(declare-fun m!3321125 () Bool)

(assert (=> b!2931081 m!3321125))

(declare-fun m!3321127 () Bool)

(assert (=> b!2931078 m!3321127))

(assert (=> b!2931078 m!3321127))

(declare-fun m!3321129 () Bool)

(assert (=> b!2931078 m!3321129))

(declare-fun m!3321131 () Bool)

(assert (=> b!2931078 m!3321131))

(declare-fun m!3321133 () Bool)

(assert (=> b!2931078 m!3321133))

(declare-fun m!3321135 () Bool)

(assert (=> b!2931078 m!3321135))

(declare-fun m!3321137 () Bool)

(assert (=> b!2931073 m!3321137))

(declare-fun m!3321139 () Bool)

(assert (=> b!2931073 m!3321139))

(declare-fun m!3321141 () Bool)

(assert (=> b!2931082 m!3321141))

(declare-fun m!3321143 () Bool)

(assert (=> start!285012 m!3321143))

(check-sat (not b!2931085) tp_is_empty!15665 (not b!2931077) (not start!285012) (not b!2931084) (not b!2931078) (not b!2931081) (not b!2931082) (not b!2931075) (not b!2931073) (not b!2931074) (not b!2931080) (not b!2931076))
(check-sat)
