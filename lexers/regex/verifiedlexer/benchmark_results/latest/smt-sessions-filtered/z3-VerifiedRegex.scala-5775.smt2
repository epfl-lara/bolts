; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285684 () Bool)

(assert start!285684)

(declare-fun b!2942025 () Bool)

(declare-fun e!1853991 () Bool)

(declare-fun e!1853990 () Bool)

(assert (=> b!2942025 (= e!1853991 e!1853990)))

(declare-fun res!1214174 () Bool)

(assert (=> b!2942025 (=> res!1214174 e!1853990)))

(declare-datatypes ((C!18388 0))(
  ( (C!18389 (val!11230 Int)) )
))
(declare-datatypes ((Regex!9101 0))(
  ( (ElementMatch!9101 (c!481129 C!18388)) (Concat!14422 (regOne!18714 Regex!9101) (regTwo!18714 Regex!9101)) (EmptyExpr!9101) (Star!9101 (reg!9430 Regex!9101)) (EmptyLang!9101) (Union!9101 (regOne!18715 Regex!9101) (regTwo!18715 Regex!9101)) )
))
(declare-fun lt!1030253 () Regex!9101)

(declare-fun isEmptyLang!225 (Regex!9101) Bool)

(assert (=> b!2942025 (= res!1214174 (isEmptyLang!225 lt!1030253))))

(declare-fun lt!1030251 () Regex!9101)

(declare-fun r!17423 () Regex!9101)

(declare-fun simplify!106 (Regex!9101) Regex!9101)

(assert (=> b!2942025 (= lt!1030251 (simplify!106 (regTwo!18714 r!17423)))))

(assert (=> b!2942025 (= lt!1030253 (simplify!106 (regOne!18714 r!17423)))))

(declare-fun b!2942026 () Bool)

(declare-fun e!1853995 () Bool)

(assert (=> b!2942026 (= e!1853995 (not e!1853991))))

(declare-fun res!1214176 () Bool)

(assert (=> b!2942026 (=> res!1214176 e!1853991)))

(declare-fun lt!1030249 () Bool)

(get-info :version)

(assert (=> b!2942026 (= res!1214176 (or lt!1030249 (not ((_ is Concat!14422) r!17423))))))

(declare-datatypes ((List!34966 0))(
  ( (Nil!34842) (Cons!34842 (h!40262 C!18388) (t!234031 List!34966)) )
))
(declare-fun s!11993 () List!34966)

(declare-fun matchRSpec!1238 (Regex!9101 List!34966) Bool)

(assert (=> b!2942026 (= lt!1030249 (matchRSpec!1238 r!17423 s!11993))))

(declare-fun matchR!3983 (Regex!9101 List!34966) Bool)

(assert (=> b!2942026 (= lt!1030249 (matchR!3983 r!17423 s!11993))))

(declare-datatypes ((Unit!48581 0))(
  ( (Unit!48582) )
))
(declare-fun lt!1030252 () Unit!48581)

(declare-fun mainMatchTheorem!1238 (Regex!9101 List!34966) Unit!48581)

(assert (=> b!2942026 (= lt!1030252 (mainMatchTheorem!1238 r!17423 s!11993))))

(declare-fun b!2942027 () Bool)

(declare-fun res!1214179 () Bool)

(declare-fun e!1853992 () Bool)

(assert (=> b!2942027 (=> res!1214179 e!1853992)))

(declare-fun validRegex!3834 (Regex!9101) Bool)

(assert (=> b!2942027 (= res!1214179 (not (validRegex!3834 (regOne!18714 r!17423))))))

(declare-fun b!2942028 () Bool)

(declare-fun e!1853993 () Bool)

(declare-fun tp!941418 () Bool)

(declare-fun tp!941416 () Bool)

(assert (=> b!2942028 (= e!1853993 (and tp!941418 tp!941416))))

(declare-fun b!2942030 () Bool)

(declare-fun tp_is_empty!15765 () Bool)

(assert (=> b!2942030 (= e!1853993 tp_is_empty!15765)))

(declare-fun b!2942031 () Bool)

(declare-fun res!1214183 () Bool)

(assert (=> b!2942031 (=> res!1214183 e!1853990)))

(declare-fun isEmptyExpr!306 (Regex!9101) Bool)

(assert (=> b!2942031 (= res!1214183 (not (isEmptyExpr!306 lt!1030253)))))

(declare-fun b!2942032 () Bool)

(declare-fun res!1214175 () Bool)

(assert (=> b!2942032 (=> res!1214175 e!1853992)))

(assert (=> b!2942032 (= res!1214175 (not (validRegex!3834 (regTwo!18714 r!17423))))))

(declare-fun b!2942033 () Bool)

(declare-fun tp!941417 () Bool)

(assert (=> b!2942033 (= e!1853993 tp!941417)))

(declare-fun b!2942034 () Bool)

(declare-fun e!1853994 () Bool)

(declare-fun tp!941420 () Bool)

(assert (=> b!2942034 (= e!1853994 (and tp_is_empty!15765 tp!941420))))

(declare-fun b!2942035 () Bool)

(declare-fun res!1214180 () Bool)

(assert (=> b!2942035 (=> res!1214180 e!1853992)))

(declare-fun ++!8315 (List!34966 List!34966) List!34966)

(assert (=> b!2942035 (= res!1214180 (not (= (++!8315 Nil!34842 s!11993) s!11993)))))

(declare-fun b!2942036 () Bool)

(declare-fun res!1214182 () Bool)

(assert (=> b!2942036 (=> res!1214182 e!1853992)))

(declare-fun nullable!2879 (Regex!9101) Bool)

(assert (=> b!2942036 (= res!1214182 (not (nullable!2879 (regOne!18714 r!17423))))))

(declare-fun b!2942037 () Bool)

(assert (=> b!2942037 (= e!1853990 e!1853992)))

(declare-fun res!1214177 () Bool)

(assert (=> b!2942037 (=> res!1214177 e!1853992)))

(declare-fun lt!1030247 () Bool)

(assert (=> b!2942037 (= res!1214177 (not lt!1030247))))

(assert (=> b!2942037 (= lt!1030247 (matchR!3983 lt!1030251 s!11993))))

(assert (=> b!2942037 (= lt!1030247 (matchR!3983 (regTwo!18714 r!17423) s!11993))))

(declare-fun lt!1030248 () Unit!48581)

(declare-fun lemmaSimplifySound!90 (Regex!9101 List!34966) Unit!48581)

(assert (=> b!2942037 (= lt!1030248 (lemmaSimplifySound!90 (regTwo!18714 r!17423) s!11993))))

(declare-fun b!2942038 () Bool)

(declare-fun res!1214173 () Bool)

(assert (=> b!2942038 (=> res!1214173 e!1853991)))

(declare-fun isEmpty!19103 (List!34966) Bool)

(assert (=> b!2942038 (= res!1214173 (isEmpty!19103 s!11993))))

(declare-fun res!1214184 () Bool)

(assert (=> start!285684 (=> (not res!1214184) (not e!1853995))))

(assert (=> start!285684 (= res!1214184 (validRegex!3834 r!17423))))

(assert (=> start!285684 e!1853995))

(assert (=> start!285684 e!1853993))

(assert (=> start!285684 e!1853994))

(declare-fun b!2942029 () Bool)

(declare-fun tp!941419 () Bool)

(declare-fun tp!941421 () Bool)

(assert (=> b!2942029 (= e!1853993 (and tp!941419 tp!941421))))

(declare-fun b!2942039 () Bool)

(declare-fun res!1214178 () Bool)

(assert (=> b!2942039 (=> res!1214178 e!1853990)))

(assert (=> b!2942039 (= res!1214178 (isEmptyLang!225 lt!1030251))))

(declare-fun b!2942040 () Bool)

(assert (=> b!2942040 (= e!1853992 true)))

(declare-fun lt!1030250 () Bool)

(declare-fun isPrefix!2758 (List!34966 List!34966) Bool)

(assert (=> b!2942040 (= lt!1030250 (isPrefix!2758 Nil!34842 Nil!34842))))

(declare-fun b!2942041 () Bool)

(declare-fun res!1214181 () Bool)

(assert (=> b!2942041 (=> res!1214181 e!1853992)))

(assert (=> b!2942041 (= res!1214181 (not (matchR!3983 (regOne!18714 r!17423) Nil!34842)))))

(assert (= (and start!285684 res!1214184) b!2942026))

(assert (= (and b!2942026 (not res!1214176)) b!2942038))

(assert (= (and b!2942038 (not res!1214173)) b!2942025))

(assert (= (and b!2942025 (not res!1214174)) b!2942039))

(assert (= (and b!2942039 (not res!1214178)) b!2942031))

(assert (= (and b!2942031 (not res!1214183)) b!2942037))

(assert (= (and b!2942037 (not res!1214177)) b!2942036))

(assert (= (and b!2942036 (not res!1214182)) b!2942041))

(assert (= (and b!2942041 (not res!1214181)) b!2942027))

(assert (= (and b!2942027 (not res!1214179)) b!2942032))

(assert (= (and b!2942032 (not res!1214175)) b!2942035))

(assert (= (and b!2942035 (not res!1214180)) b!2942040))

(assert (= (and start!285684 ((_ is ElementMatch!9101) r!17423)) b!2942030))

(assert (= (and start!285684 ((_ is Concat!14422) r!17423)) b!2942028))

(assert (= (and start!285684 ((_ is Star!9101) r!17423)) b!2942033))

(assert (= (and start!285684 ((_ is Union!9101) r!17423)) b!2942029))

(assert (= (and start!285684 ((_ is Cons!34842) s!11993)) b!2942034))

(declare-fun m!3325811 () Bool)

(assert (=> b!2942031 m!3325811))

(declare-fun m!3325813 () Bool)

(assert (=> b!2942041 m!3325813))

(declare-fun m!3325815 () Bool)

(assert (=> b!2942039 m!3325815))

(declare-fun m!3325817 () Bool)

(assert (=> b!2942038 m!3325817))

(declare-fun m!3325819 () Bool)

(assert (=> b!2942027 m!3325819))

(declare-fun m!3325821 () Bool)

(assert (=> b!2942036 m!3325821))

(declare-fun m!3325823 () Bool)

(assert (=> b!2942037 m!3325823))

(declare-fun m!3325825 () Bool)

(assert (=> b!2942037 m!3325825))

(declare-fun m!3325827 () Bool)

(assert (=> b!2942037 m!3325827))

(declare-fun m!3325829 () Bool)

(assert (=> b!2942035 m!3325829))

(declare-fun m!3325831 () Bool)

(assert (=> b!2942025 m!3325831))

(declare-fun m!3325833 () Bool)

(assert (=> b!2942025 m!3325833))

(declare-fun m!3325835 () Bool)

(assert (=> b!2942025 m!3325835))

(declare-fun m!3325837 () Bool)

(assert (=> start!285684 m!3325837))

(declare-fun m!3325839 () Bool)

(assert (=> b!2942032 m!3325839))

(declare-fun m!3325841 () Bool)

(assert (=> b!2942026 m!3325841))

(declare-fun m!3325843 () Bool)

(assert (=> b!2942026 m!3325843))

(declare-fun m!3325845 () Bool)

(assert (=> b!2942026 m!3325845))

(declare-fun m!3325847 () Bool)

(assert (=> b!2942040 m!3325847))

(check-sat (not b!2942029) (not start!285684) (not b!2942031) (not b!2942033) (not b!2942037) (not b!2942025) (not b!2942038) (not b!2942039) (not b!2942041) (not b!2942035) (not b!2942036) (not b!2942026) tp_is_empty!15765 (not b!2942032) (not b!2942027) (not b!2942028) (not b!2942034) (not b!2942040))
(check-sat)
