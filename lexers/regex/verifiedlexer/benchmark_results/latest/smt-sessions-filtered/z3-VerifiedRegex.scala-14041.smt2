; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741294 () Bool)

(assert start!741294)

(declare-fun b!7802956 () Bool)

(declare-fun e!4619157 () Bool)

(declare-fun tp!2298720 () Bool)

(declare-fun tp!2298717 () Bool)

(assert (=> b!7802956 (= e!4619157 (and tp!2298720 tp!2298717))))

(declare-fun b!7802957 () Bool)

(declare-fun e!4619162 () Bool)

(declare-fun e!4619160 () Bool)

(assert (=> b!7802957 (= e!4619162 e!4619160)))

(declare-fun res!3107645 () Bool)

(assert (=> b!7802957 (=> (not res!3107645) (not e!4619160))))

(declare-datatypes ((C!42080 0))(
  ( (C!42081 (val!31480 Int)) )
))
(declare-datatypes ((Regex!20877 0))(
  ( (ElementMatch!20877 (c!1436928 C!42080)) (Concat!29722 (regOne!42266 Regex!20877) (regTwo!42266 Regex!20877)) (EmptyExpr!20877) (Star!20877 (reg!21206 Regex!20877)) (EmptyLang!20877) (Union!20877 (regOne!42267 Regex!20877) (regTwo!42267 Regex!20877)) )
))
(declare-fun lt!2674747 () Regex!20877)

(declare-datatypes ((List!73716 0))(
  ( (Nil!73592) (Cons!73592 (h!80040 C!42080) (t!388451 List!73716)) )
))
(declare-fun s!14292 () List!73716)

(declare-fun matchR!10337 (Regex!20877 List!73716) Bool)

(assert (=> b!7802957 (= res!3107645 (matchR!10337 lt!2674747 s!14292))))

(declare-fun r1!6279 () Regex!20877)

(declare-fun r2!6217 () Regex!20877)

(assert (=> b!7802957 (= lt!2674747 (Concat!29722 r1!6279 r2!6217))))

(declare-fun b!7802958 () Bool)

(declare-fun res!3107644 () Bool)

(declare-fun e!4619158 () Bool)

(assert (=> b!7802958 (=> (not res!3107644) (not e!4619158))))

(declare-fun lt!2674749 () Regex!20877)

(declare-fun validRegex!11291 (Regex!20877) Bool)

(assert (=> b!7802958 (= res!3107644 (validRegex!11291 lt!2674749))))

(declare-fun b!7802959 () Bool)

(declare-fun tp!2298718 () Bool)

(declare-fun tp!2298715 () Bool)

(assert (=> b!7802959 (= e!4619157 (and tp!2298718 tp!2298715))))

(declare-fun b!7802960 () Bool)

(declare-fun e!4619163 () Bool)

(declare-fun tp_is_empty!52109 () Bool)

(declare-fun tp!2298713 () Bool)

(assert (=> b!7802960 (= e!4619163 (and tp_is_empty!52109 tp!2298713))))

(declare-fun b!7802961 () Bool)

(declare-fun e!4619161 () Bool)

(assert (=> b!7802961 (= e!4619161 e!4619158)))

(declare-fun res!3107642 () Bool)

(assert (=> b!7802961 (=> (not res!3107642) (not e!4619158))))

(declare-fun lt!2674750 () Regex!20877)

(declare-fun lt!2674748 () Regex!20877)

(assert (=> b!7802961 (= res!3107642 (= lt!2674750 lt!2674748))))

(assert (=> b!7802961 (= lt!2674748 (Union!20877 lt!2674749 EmptyLang!20877))))

(declare-fun derivativeStep!6214 (Regex!20877 C!42080) Regex!20877)

(assert (=> b!7802961 (= lt!2674749 (Concat!29722 (derivativeStep!6214 r1!6279 (h!80040 s!14292)) r2!6217))))

(declare-fun b!7802962 () Bool)

(declare-fun e!4619159 () Bool)

(declare-fun tp!2298716 () Bool)

(declare-fun tp!2298712 () Bool)

(assert (=> b!7802962 (= e!4619159 (and tp!2298716 tp!2298712))))

(declare-fun b!7802963 () Bool)

(declare-fun res!3107647 () Bool)

(assert (=> b!7802963 (=> (not res!3107647) (not e!4619162))))

(assert (=> b!7802963 (= res!3107647 (validRegex!11291 r2!6217))))

(declare-fun b!7802964 () Bool)

(declare-fun tp!2298721 () Bool)

(assert (=> b!7802964 (= e!4619159 tp!2298721)))

(declare-fun b!7802965 () Bool)

(declare-fun res!3107643 () Bool)

(assert (=> b!7802965 (=> (not res!3107643) (not e!4619161))))

(declare-fun nullable!9261 (Regex!20877) Bool)

(assert (=> b!7802965 (= res!3107643 (not (nullable!9261 r1!6279)))))

(declare-fun b!7802966 () Bool)

(assert (=> b!7802966 (= e!4619157 tp_is_empty!52109)))

(declare-fun b!7802967 () Bool)

(declare-fun tp!2298714 () Bool)

(assert (=> b!7802967 (= e!4619157 tp!2298714)))

(declare-fun b!7802968 () Bool)

(declare-fun tp!2298719 () Bool)

(declare-fun tp!2298711 () Bool)

(assert (=> b!7802968 (= e!4619159 (and tp!2298719 tp!2298711))))

(declare-fun b!7802969 () Bool)

(assert (=> b!7802969 (= e!4619160 e!4619161)))

(declare-fun res!3107646 () Bool)

(assert (=> b!7802969 (=> (not res!3107646) (not e!4619161))))

(assert (=> b!7802969 (= res!3107646 (matchR!10337 lt!2674750 (t!388451 s!14292)))))

(assert (=> b!7802969 (= lt!2674750 (derivativeStep!6214 lt!2674747 (h!80040 s!14292)))))

(declare-fun b!7802970 () Bool)

(declare-fun res!3107649 () Bool)

(assert (=> b!7802970 (=> (not res!3107649) (not e!4619158))))

(assert (=> b!7802970 (= res!3107649 true)))

(declare-fun res!3107650 () Bool)

(assert (=> start!741294 (=> (not res!3107650) (not e!4619162))))

(assert (=> start!741294 (= res!3107650 (validRegex!11291 r1!6279))))

(assert (=> start!741294 e!4619162))

(assert (=> start!741294 e!4619159))

(assert (=> start!741294 e!4619157))

(assert (=> start!741294 e!4619163))

(declare-fun b!7802971 () Bool)

(declare-fun res!3107648 () Bool)

(assert (=> b!7802971 (=> (not res!3107648) (not e!4619160))))

(get-info :version)

(assert (=> b!7802971 (= res!3107648 ((_ is Cons!73592) s!14292))))

(declare-fun b!7802972 () Bool)

(assert (=> b!7802972 (= e!4619158 (not (matchR!10337 lt!2674748 (t!388451 s!14292))))))

(declare-fun b!7802973 () Bool)

(assert (=> b!7802973 (= e!4619159 tp_is_empty!52109)))

(assert (= (and start!741294 res!3107650) b!7802963))

(assert (= (and b!7802963 res!3107647) b!7802957))

(assert (= (and b!7802957 res!3107645) b!7802971))

(assert (= (and b!7802971 res!3107648) b!7802969))

(assert (= (and b!7802969 res!3107646) b!7802965))

(assert (= (and b!7802965 res!3107643) b!7802961))

(assert (= (and b!7802961 res!3107642) b!7802958))

(assert (= (and b!7802958 res!3107644) b!7802970))

(assert (= (and b!7802970 res!3107649) b!7802972))

(assert (= (and start!741294 ((_ is ElementMatch!20877) r1!6279)) b!7802973))

(assert (= (and start!741294 ((_ is Concat!29722) r1!6279)) b!7802962))

(assert (= (and start!741294 ((_ is Star!20877) r1!6279)) b!7802964))

(assert (= (and start!741294 ((_ is Union!20877) r1!6279)) b!7802968))

(assert (= (and start!741294 ((_ is ElementMatch!20877) r2!6217)) b!7802966))

(assert (= (and start!741294 ((_ is Concat!29722) r2!6217)) b!7802959))

(assert (= (and start!741294 ((_ is Star!20877) r2!6217)) b!7802967))

(assert (= (and start!741294 ((_ is Union!20877) r2!6217)) b!7802956))

(assert (= (and start!741294 ((_ is Cons!73592) s!14292)) b!7802960))

(declare-fun m!8237904 () Bool)

(assert (=> b!7802958 m!8237904))

(declare-fun m!8237906 () Bool)

(assert (=> b!7802965 m!8237906))

(declare-fun m!8237908 () Bool)

(assert (=> b!7802961 m!8237908))

(declare-fun m!8237910 () Bool)

(assert (=> b!7802972 m!8237910))

(declare-fun m!8237912 () Bool)

(assert (=> start!741294 m!8237912))

(declare-fun m!8237914 () Bool)

(assert (=> b!7802957 m!8237914))

(declare-fun m!8237916 () Bool)

(assert (=> b!7802963 m!8237916))

(declare-fun m!8237918 () Bool)

(assert (=> b!7802969 m!8237918))

(declare-fun m!8237920 () Bool)

(assert (=> b!7802969 m!8237920))

(check-sat (not b!7802963) (not b!7802968) (not b!7802962) (not b!7802965) (not b!7802960) (not b!7802958) (not b!7802964) (not b!7802957) (not b!7802961) (not b!7802967) (not b!7802956) (not start!741294) (not b!7802959) (not b!7802972) (not b!7802969) tp_is_empty!52109)
(check-sat)
