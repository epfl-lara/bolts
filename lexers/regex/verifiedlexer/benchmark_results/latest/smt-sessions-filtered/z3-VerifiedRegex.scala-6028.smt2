; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294932 () Bool)

(assert start!294932)

(declare-fun b!3115217 () Bool)

(declare-fun e!1945649 () Bool)

(declare-datatypes ((C!19400 0))(
  ( (C!19401 (val!11736 Int)) )
))
(declare-datatypes ((Regex!9607 0))(
  ( (ElementMatch!9607 (c!521751 C!19400)) (Concat!14928 (regOne!19726 Regex!9607) (regTwo!19726 Regex!9607)) (EmptyExpr!9607) (Star!9607 (reg!9936 Regex!9607)) (EmptyLang!9607) (Union!9607 (regOne!19727 Regex!9607) (regTwo!19727 Regex!9607)) )
))
(declare-fun r!17423 () Regex!9607)

(declare-fun validRegex!4340 (Regex!9607) Bool)

(assert (=> b!3115217 (= e!1945649 (validRegex!4340 (Star!9607 (reg!9936 r!17423))))))

(declare-fun b!3115218 () Bool)

(declare-fun e!1945651 () Bool)

(declare-fun tp_is_empty!16777 () Bool)

(declare-fun tp!977076 () Bool)

(assert (=> b!3115218 (= e!1945651 (and tp_is_empty!16777 tp!977076))))

(declare-fun b!3115219 () Bool)

(declare-fun e!1945652 () Bool)

(assert (=> b!3115219 (= e!1945652 tp_is_empty!16777)))

(declare-fun res!1275097 () Bool)

(declare-fun e!1945648 () Bool)

(assert (=> start!294932 (=> (not res!1275097) (not e!1945648))))

(assert (=> start!294932 (= res!1275097 (validRegex!4340 r!17423))))

(assert (=> start!294932 e!1945648))

(assert (=> start!294932 e!1945652))

(assert (=> start!294932 e!1945651))

(declare-fun b!3115220 () Bool)

(declare-fun e!1945650 () Bool)

(assert (=> b!3115220 (= e!1945648 (not e!1945650))))

(declare-fun res!1275099 () Bool)

(assert (=> b!3115220 (=> res!1275099 e!1945650)))

(declare-fun lt!1058144 () Bool)

(get-info :version)

(assert (=> b!3115220 (= res!1275099 (or lt!1058144 ((_ is Concat!14928) r!17423) ((_ is Union!9607) r!17423) (not ((_ is Star!9607) r!17423))))))

(declare-datatypes ((List!35472 0))(
  ( (Nil!35348) (Cons!35348 (h!40768 C!19400) (t!234537 List!35472)) )
))
(declare-fun s!11993 () List!35472)

(declare-fun matchRSpec!1744 (Regex!9607 List!35472) Bool)

(assert (=> b!3115220 (= lt!1058144 (matchRSpec!1744 r!17423 s!11993))))

(declare-fun matchR!4489 (Regex!9607 List!35472) Bool)

(assert (=> b!3115220 (= lt!1058144 (matchR!4489 r!17423 s!11993))))

(declare-datatypes ((Unit!49653 0))(
  ( (Unit!49654) )
))
(declare-fun lt!1058143 () Unit!49653)

(declare-fun mainMatchTheorem!1744 (Regex!9607 List!35472) Unit!49653)

(assert (=> b!3115220 (= lt!1058143 (mainMatchTheorem!1744 r!17423 s!11993))))

(declare-fun b!3115221 () Bool)

(declare-fun e!1945653 () Bool)

(assert (=> b!3115221 (= e!1945653 e!1945649)))

(declare-fun res!1275100 () Bool)

(assert (=> b!3115221 (=> res!1275100 e!1945649)))

(declare-fun lt!1058142 () Bool)

(assert (=> b!3115221 (= res!1275100 (not lt!1058142))))

(declare-fun lt!1058146 () Regex!9607)

(assert (=> b!3115221 (= lt!1058142 (matchR!4489 lt!1058146 s!11993))))

(assert (=> b!3115221 (= lt!1058142 (matchR!4489 (reg!9936 r!17423) s!11993))))

(declare-fun lt!1058145 () Unit!49653)

(declare-fun lemmaSimplifySound!350 (Regex!9607 List!35472) Unit!49653)

(assert (=> b!3115221 (= lt!1058145 (lemmaSimplifySound!350 (reg!9936 r!17423) s!11993))))

(declare-fun b!3115222 () Bool)

(assert (=> b!3115222 (= e!1945650 e!1945653)))

(declare-fun res!1275098 () Bool)

(assert (=> b!3115222 (=> res!1275098 e!1945653)))

(declare-fun isEmptyLang!658 (Regex!9607) Bool)

(assert (=> b!3115222 (= res!1275098 (not (isEmptyLang!658 lt!1058146)))))

(declare-fun simplify!562 (Regex!9607) Regex!9607)

(assert (=> b!3115222 (= lt!1058146 (simplify!562 (reg!9936 r!17423)))))

(declare-fun b!3115223 () Bool)

(declare-fun tp!977081 () Bool)

(declare-fun tp!977078 () Bool)

(assert (=> b!3115223 (= e!1945652 (and tp!977081 tp!977078))))

(declare-fun b!3115224 () Bool)

(declare-fun tp!977077 () Bool)

(declare-fun tp!977080 () Bool)

(assert (=> b!3115224 (= e!1945652 (and tp!977077 tp!977080))))

(declare-fun b!3115225 () Bool)

(declare-fun tp!977079 () Bool)

(assert (=> b!3115225 (= e!1945652 tp!977079)))

(assert (= (and start!294932 res!1275097) b!3115220))

(assert (= (and b!3115220 (not res!1275099)) b!3115222))

(assert (= (and b!3115222 (not res!1275098)) b!3115221))

(assert (= (and b!3115221 (not res!1275100)) b!3115217))

(assert (= (and start!294932 ((_ is ElementMatch!9607) r!17423)) b!3115219))

(assert (= (and start!294932 ((_ is Concat!14928) r!17423)) b!3115224))

(assert (= (and start!294932 ((_ is Star!9607) r!17423)) b!3115225))

(assert (= (and start!294932 ((_ is Union!9607) r!17423)) b!3115223))

(assert (= (and start!294932 ((_ is Cons!35348) s!11993)) b!3115218))

(declare-fun m!3406189 () Bool)

(assert (=> b!3115222 m!3406189))

(declare-fun m!3406191 () Bool)

(assert (=> b!3115222 m!3406191))

(declare-fun m!3406193 () Bool)

(assert (=> b!3115221 m!3406193))

(declare-fun m!3406195 () Bool)

(assert (=> b!3115221 m!3406195))

(declare-fun m!3406197 () Bool)

(assert (=> b!3115221 m!3406197))

(declare-fun m!3406199 () Bool)

(assert (=> start!294932 m!3406199))

(declare-fun m!3406201 () Bool)

(assert (=> b!3115217 m!3406201))

(declare-fun m!3406203 () Bool)

(assert (=> b!3115220 m!3406203))

(declare-fun m!3406205 () Bool)

(assert (=> b!3115220 m!3406205))

(declare-fun m!3406207 () Bool)

(assert (=> b!3115220 m!3406207))

(check-sat (not b!3115223) (not b!3115225) (not b!3115221) (not b!3115220) tp_is_empty!16777 (not b!3115218) (not start!294932) (not b!3115217) (not b!3115224) (not b!3115222))
(check-sat)
