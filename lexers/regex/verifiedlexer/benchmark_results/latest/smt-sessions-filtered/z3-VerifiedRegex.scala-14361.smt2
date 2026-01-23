; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749520 () Bool)

(assert start!749520)

(declare-fun b!7940993 () Bool)

(declare-fun e!4685513 () Bool)

(declare-fun tp!2361145 () Bool)

(declare-fun tp!2361149 () Bool)

(assert (=> b!7940993 (= e!4685513 (and tp!2361145 tp!2361149))))

(declare-fun b!7940994 () Bool)

(declare-fun res!3150178 () Bool)

(declare-fun e!4685515 () Bool)

(assert (=> b!7940994 (=> (not res!3150178) (not e!4685515))))

(declare-datatypes ((C!43144 0))(
  ( (C!43145 (val!32120 Int)) )
))
(declare-datatypes ((List!74632 0))(
  ( (Nil!74508) (Cons!74508 (h!80956 C!43144) (t!390375 List!74632)) )
))
(declare-fun input!6711 () List!74632)

(declare-fun isPrefix!6503 (List!74632 List!74632) Bool)

(assert (=> b!7940994 (= res!3150178 (isPrefix!6503 Nil!74508 input!6711))))

(declare-fun b!7940995 () Bool)

(declare-fun tp!2361147 () Bool)

(assert (=> b!7940995 (= e!4685513 tp!2361147)))

(declare-fun b!7940996 () Bool)

(declare-fun e!4685514 () Bool)

(declare-datatypes ((Regex!21403 0))(
  ( (ElementMatch!21403 (c!1458930 C!43144)) (Concat!30402 (regOne!43318 Regex!21403) (regTwo!43318 Regex!21403)) (EmptyExpr!21403) (Star!21403 (reg!21732 Regex!21403)) (EmptyLang!21403) (Union!21403 (regOne!43319 Regex!21403) (regTwo!43319 Regex!21403)) )
))
(declare-fun r!15654 () Regex!21403)

(declare-datatypes ((tuple2!70496 0))(
  ( (tuple2!70497 (_1!38551 List!74632) (_2!38551 List!74632)) )
))
(declare-fun lt!2696412 () tuple2!70496)

(declare-fun matchR!10710 (Regex!21403 List!74632) Bool)

(assert (=> b!7940996 (= e!4685514 (matchR!10710 r!15654 (_1!38551 lt!2696412)))))

(declare-fun b!7940997 () Bool)

(declare-fun e!4685517 () Bool)

(assert (=> b!7940997 (= e!4685515 (not e!4685517))))

(declare-fun res!3150174 () Bool)

(assert (=> b!7940997 (=> res!3150174 e!4685517)))

(declare-fun lt!2696410 () Int)

(declare-fun lt!2696413 () Int)

(declare-fun isEmpty!42823 (List!74632) Bool)

(declare-fun findLongestMatchInner!2198 (Regex!21403 List!74632 Int List!74632 List!74632 Int) tuple2!70496)

(assert (=> b!7940997 (= res!3150174 (isEmpty!42823 (_1!38551 (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 input!6711 input!6711 lt!2696410))))))

(assert (=> b!7940997 e!4685514))

(declare-fun res!3150175 () Bool)

(assert (=> b!7940997 (=> res!3150175 e!4685514)))

(assert (=> b!7940997 (= res!3150175 (isEmpty!42823 (_1!38551 lt!2696412)))))

(declare-fun lt!2696411 () List!74632)

(assert (=> b!7940997 (= lt!2696412 (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 lt!2696411 input!6711 lt!2696410))))

(declare-fun size!43340 (List!74632) Int)

(assert (=> b!7940997 (= lt!2696410 (size!43340 input!6711))))

(declare-fun getSuffix!3714 (List!74632 List!74632) List!74632)

(assert (=> b!7940997 (= lt!2696411 (getSuffix!3714 input!6711 Nil!74508))))

(assert (=> b!7940997 (= lt!2696413 (size!43340 Nil!74508))))

(declare-datatypes ((Unit!169634 0))(
  ( (Unit!169635) )
))
(declare-fun lt!2696409 () Unit!169634)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!41 (Regex!21403 Regex!21403 List!74632 List!74632) Unit!169634)

(assert (=> b!7940997 (= lt!2696409 (longestMatchIsAcceptedByMatchOrIsEmptyRec!41 r!15654 r!15654 Nil!74508 input!6711))))

(declare-fun b!7940998 () Bool)

(declare-fun tp!2361150 () Bool)

(declare-fun tp!2361148 () Bool)

(assert (=> b!7940998 (= e!4685513 (and tp!2361150 tp!2361148))))

(declare-fun b!7940999 () Bool)

(declare-fun tp_is_empty!53349 () Bool)

(assert (=> b!7940999 (= e!4685513 tp_is_empty!53349)))

(declare-fun res!3150176 () Bool)

(assert (=> start!749520 (=> (not res!3150176) (not e!4685515))))

(declare-fun validRegex!11707 (Regex!21403) Bool)

(assert (=> start!749520 (= res!3150176 (validRegex!11707 r!15654))))

(assert (=> start!749520 e!4685515))

(assert (=> start!749520 e!4685513))

(declare-fun e!4685516 () Bool)

(assert (=> start!749520 e!4685516))

(declare-fun b!7941000 () Bool)

(declare-fun res!3150177 () Bool)

(assert (=> b!7941000 (=> (not res!3150177) (not e!4685515))))

(declare-fun derivative!591 (Regex!21403 List!74632) Regex!21403)

(assert (=> b!7941000 (= res!3150177 (= (derivative!591 r!15654 Nil!74508) r!15654))))

(declare-fun b!7941001 () Bool)

(declare-fun ++!18299 (List!74632 List!74632) List!74632)

(assert (=> b!7941001 (= e!4685517 (= (++!18299 Nil!74508 input!6711) input!6711))))

(declare-fun b!7941002 () Bool)

(declare-fun tp!2361146 () Bool)

(assert (=> b!7941002 (= e!4685516 (and tp_is_empty!53349 tp!2361146))))

(assert (= (and start!749520 res!3150176) b!7940994))

(assert (= (and b!7940994 res!3150178) b!7941000))

(assert (= (and b!7941000 res!3150177) b!7940997))

(assert (= (and b!7940997 (not res!3150175)) b!7940996))

(assert (= (and b!7940997 (not res!3150174)) b!7941001))

(get-info :version)

(assert (= (and start!749520 ((_ is ElementMatch!21403) r!15654)) b!7940999))

(assert (= (and start!749520 ((_ is Concat!30402) r!15654)) b!7940998))

(assert (= (and start!749520 ((_ is Star!21403) r!15654)) b!7940995))

(assert (= (and start!749520 ((_ is Union!21403) r!15654)) b!7940993))

(assert (= (and start!749520 ((_ is Cons!74508) input!6711)) b!7941002))

(declare-fun m!8329972 () Bool)

(assert (=> b!7941001 m!8329972))

(declare-fun m!8329974 () Bool)

(assert (=> b!7940994 m!8329974))

(declare-fun m!8329976 () Bool)

(assert (=> b!7940996 m!8329976))

(declare-fun m!8329978 () Bool)

(assert (=> b!7941000 m!8329978))

(declare-fun m!8329980 () Bool)

(assert (=> start!749520 m!8329980))

(declare-fun m!8329982 () Bool)

(assert (=> b!7940997 m!8329982))

(declare-fun m!8329984 () Bool)

(assert (=> b!7940997 m!8329984))

(declare-fun m!8329986 () Bool)

(assert (=> b!7940997 m!8329986))

(declare-fun m!8329988 () Bool)

(assert (=> b!7940997 m!8329988))

(declare-fun m!8329990 () Bool)

(assert (=> b!7940997 m!8329990))

(declare-fun m!8329992 () Bool)

(assert (=> b!7940997 m!8329992))

(declare-fun m!8329994 () Bool)

(assert (=> b!7940997 m!8329994))

(declare-fun m!8329996 () Bool)

(assert (=> b!7940997 m!8329996))

(check-sat (not start!749520) (not b!7940994) (not b!7940998) (not b!7941002) (not b!7940996) tp_is_empty!53349 (not b!7941001) (not b!7940993) (not b!7940995) (not b!7941000) (not b!7940997))
(check-sat)
(get-model)

(declare-fun d!2375056 () Bool)

(declare-fun e!4685547 () Bool)

(assert (=> d!2375056 e!4685547))

(declare-fun res!3150202 () Bool)

(assert (=> d!2375056 (=> res!3150202 e!4685547)))

(assert (=> d!2375056 (= res!3150202 (isEmpty!42823 (_1!38551 (findLongestMatchInner!2198 r!15654 Nil!74508 (size!43340 Nil!74508) (getSuffix!3714 input!6711 Nil!74508) input!6711 (size!43340 input!6711)))))))

(declare-fun lt!2696419 () Unit!169634)

(declare-fun choose!59873 (Regex!21403 Regex!21403 List!74632 List!74632) Unit!169634)

(assert (=> d!2375056 (= lt!2696419 (choose!59873 r!15654 r!15654 Nil!74508 input!6711))))

(assert (=> d!2375056 (validRegex!11707 r!15654)))

(assert (=> d!2375056 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!41 r!15654 r!15654 Nil!74508 input!6711) lt!2696419)))

(declare-fun b!7941044 () Bool)

(assert (=> b!7941044 (= e!4685547 (matchR!10710 r!15654 (_1!38551 (findLongestMatchInner!2198 r!15654 Nil!74508 (size!43340 Nil!74508) (getSuffix!3714 input!6711 Nil!74508) input!6711 (size!43340 input!6711)))))))

(assert (= (and d!2375056 (not res!3150202)) b!7941044))

(assert (=> d!2375056 m!8329982))

(declare-fun m!8330008 () Bool)

(assert (=> d!2375056 m!8330008))

(declare-fun m!8330014 () Bool)

(assert (=> d!2375056 m!8330014))

(assert (=> d!2375056 m!8329996))

(assert (=> d!2375056 m!8329980))

(assert (=> d!2375056 m!8329990))

(assert (=> d!2375056 m!8329990))

(assert (=> d!2375056 m!8329982))

(assert (=> d!2375056 m!8329996))

(declare-fun m!8330018 () Bool)

(assert (=> d!2375056 m!8330018))

(assert (=> b!7941044 m!8329982))

(assert (=> b!7941044 m!8329990))

(assert (=> b!7941044 m!8329990))

(assert (=> b!7941044 m!8329982))

(assert (=> b!7941044 m!8329996))

(assert (=> b!7941044 m!8330018))

(declare-fun m!8330020 () Bool)

(assert (=> b!7941044 m!8330020))

(assert (=> b!7941044 m!8329996))

(assert (=> b!7940997 d!2375056))

(declare-fun d!2375062 () Bool)

(declare-fun lt!2696424 () List!74632)

(assert (=> d!2375062 (= (++!18299 Nil!74508 lt!2696424) input!6711)))

(declare-fun e!4685552 () List!74632)

(assert (=> d!2375062 (= lt!2696424 e!4685552)))

(declare-fun c!1458944 () Bool)

(assert (=> d!2375062 (= c!1458944 ((_ is Cons!74508) Nil!74508))))

(assert (=> d!2375062 (>= (size!43340 input!6711) (size!43340 Nil!74508))))

(assert (=> d!2375062 (= (getSuffix!3714 input!6711 Nil!74508) lt!2696424)))

(declare-fun b!7941053 () Bool)

(declare-fun tail!15728 (List!74632) List!74632)

(assert (=> b!7941053 (= e!4685552 (getSuffix!3714 (tail!15728 input!6711) (t!390375 Nil!74508)))))

(declare-fun b!7941055 () Bool)

(assert (=> b!7941055 (= e!4685552 input!6711)))

(assert (= (and d!2375062 c!1458944) b!7941053))

(assert (= (and d!2375062 (not c!1458944)) b!7941055))

(declare-fun m!8330023 () Bool)

(assert (=> d!2375062 m!8330023))

(assert (=> d!2375062 m!8329996))

(assert (=> d!2375062 m!8329990))

(declare-fun m!8330028 () Bool)

(assert (=> b!7941053 m!8330028))

(assert (=> b!7941053 m!8330028))

(declare-fun m!8330030 () Bool)

(assert (=> b!7941053 m!8330030))

(assert (=> b!7940997 d!2375062))

(declare-fun d!2375064 () Bool)

(assert (=> d!2375064 (= (isEmpty!42823 (_1!38551 lt!2696412)) ((_ is Nil!74508) (_1!38551 lt!2696412)))))

(assert (=> b!7940997 d!2375064))

(declare-fun d!2375068 () Bool)

(assert (=> d!2375068 (= (isEmpty!42823 (_1!38551 (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 input!6711 input!6711 lt!2696410))) ((_ is Nil!74508) (_1!38551 (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 input!6711 input!6711 lt!2696410))))))

(assert (=> b!7940997 d!2375068))

(declare-fun bm!735886 () Bool)

(declare-fun call!735896 () List!74632)

(assert (=> bm!735886 (= call!735896 (tail!15728 input!6711))))

(declare-fun b!7941148 () Bool)

(declare-fun e!4685608 () Unit!169634)

(declare-fun Unit!169636 () Unit!169634)

(assert (=> b!7941148 (= e!4685608 Unit!169636)))

(declare-fun lt!2696517 () Unit!169634)

(declare-fun call!735892 () Unit!169634)

(assert (=> b!7941148 (= lt!2696517 call!735892)))

(declare-fun call!735893 () Bool)

(assert (=> b!7941148 call!735893))

(declare-fun lt!2696500 () Unit!169634)

(assert (=> b!7941148 (= lt!2696500 lt!2696517)))

(declare-fun lt!2696502 () Unit!169634)

(declare-fun call!735895 () Unit!169634)

(assert (=> b!7941148 (= lt!2696502 call!735895)))

(assert (=> b!7941148 (= input!6711 Nil!74508)))

(declare-fun lt!2696510 () Unit!169634)

(assert (=> b!7941148 (= lt!2696510 lt!2696502)))

(assert (=> b!7941148 false))

(declare-fun b!7941149 () Bool)

(declare-fun e!4685606 () Bool)

(declare-fun e!4685610 () Bool)

(assert (=> b!7941149 (= e!4685606 e!4685610)))

(declare-fun res!3150247 () Bool)

(assert (=> b!7941149 (=> res!3150247 e!4685610)))

(declare-fun lt!2696508 () tuple2!70496)

(assert (=> b!7941149 (= res!3150247 (isEmpty!42823 (_1!38551 lt!2696508)))))

(declare-fun b!7941150 () Bool)

(declare-fun e!4685611 () tuple2!70496)

(assert (=> b!7941150 (= e!4685611 (tuple2!70497 Nil!74508 Nil!74508))))

(declare-fun b!7941151 () Bool)

(declare-fun e!4685613 () tuple2!70496)

(declare-fun lt!2696521 () tuple2!70496)

(assert (=> b!7941151 (= e!4685613 lt!2696521)))

(declare-fun d!2375070 () Bool)

(assert (=> d!2375070 e!4685606))

(declare-fun res!3150246 () Bool)

(assert (=> d!2375070 (=> (not res!3150246) (not e!4685606))))

(assert (=> d!2375070 (= res!3150246 (= (++!18299 (_1!38551 lt!2696508) (_2!38551 lt!2696508)) input!6711))))

(declare-fun e!4685609 () tuple2!70496)

(assert (=> d!2375070 (= lt!2696508 e!4685609)))

(declare-fun c!1458972 () Bool)

(declare-fun lostCause!1937 (Regex!21403) Bool)

(assert (=> d!2375070 (= c!1458972 (lostCause!1937 r!15654))))

(declare-fun lt!2696497 () Unit!169634)

(declare-fun Unit!169637 () Unit!169634)

(assert (=> d!2375070 (= lt!2696497 Unit!169637)))

(assert (=> d!2375070 (= (getSuffix!3714 input!6711 Nil!74508) input!6711)))

(declare-fun lt!2696495 () Unit!169634)

(declare-fun lt!2696496 () Unit!169634)

(assert (=> d!2375070 (= lt!2696495 lt!2696496)))

(declare-fun lt!2696504 () List!74632)

(assert (=> d!2375070 (= input!6711 lt!2696504)))

(declare-fun lemmaSamePrefixThenSameSuffix!2953 (List!74632 List!74632 List!74632 List!74632 List!74632) Unit!169634)

(assert (=> d!2375070 (= lt!2696496 (lemmaSamePrefixThenSameSuffix!2953 Nil!74508 input!6711 Nil!74508 lt!2696504 input!6711))))

(assert (=> d!2375070 (= lt!2696504 (getSuffix!3714 input!6711 Nil!74508))))

(declare-fun lt!2696503 () Unit!169634)

(declare-fun lt!2696520 () Unit!169634)

(assert (=> d!2375070 (= lt!2696503 lt!2696520)))

(assert (=> d!2375070 (isPrefix!6503 Nil!74508 (++!18299 Nil!74508 input!6711))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3815 (List!74632 List!74632) Unit!169634)

(assert (=> d!2375070 (= lt!2696520 (lemmaConcatTwoListThenFirstIsPrefix!3815 Nil!74508 input!6711))))

(assert (=> d!2375070 (validRegex!11707 r!15654)))

(assert (=> d!2375070 (= (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 input!6711 input!6711 lt!2696410) lt!2696508)))

(declare-fun b!7941152 () Bool)

(assert (=> b!7941152 (= e!4685609 (tuple2!70497 Nil!74508 input!6711))))

(declare-fun b!7941153 () Bool)

(declare-fun e!4685607 () tuple2!70496)

(assert (=> b!7941153 (= e!4685607 e!4685613)))

(declare-fun call!735894 () tuple2!70496)

(assert (=> b!7941153 (= lt!2696521 call!735894)))

(declare-fun c!1458975 () Bool)

(assert (=> b!7941153 (= c!1458975 (isEmpty!42823 (_1!38551 lt!2696521)))))

(declare-fun b!7941154 () Bool)

(declare-fun Unit!169638 () Unit!169634)

(assert (=> b!7941154 (= e!4685608 Unit!169638)))

(declare-fun bm!735887 () Bool)

(declare-fun lemmaIsPrefixRefl!4004 (List!74632 List!74632) Unit!169634)

(assert (=> bm!735887 (= call!735892 (lemmaIsPrefixRefl!4004 input!6711 input!6711))))

(declare-fun b!7941155 () Bool)

(assert (=> b!7941155 (= e!4685611 (tuple2!70497 Nil!74508 input!6711))))

(declare-fun bm!735888 () Bool)

(declare-fun call!735897 () Regex!21403)

(declare-fun lt!2696506 () List!74632)

(assert (=> bm!735888 (= call!735894 (findLongestMatchInner!2198 call!735897 lt!2696506 (+ lt!2696413 1) call!735896 input!6711 lt!2696410))))

(declare-fun b!7941156 () Bool)

(declare-fun c!1458974 () Bool)

(declare-fun call!735898 () Bool)

(assert (=> b!7941156 (= c!1458974 call!735898)))

(declare-fun lt!2696509 () Unit!169634)

(declare-fun lt!2696513 () Unit!169634)

(assert (=> b!7941156 (= lt!2696509 lt!2696513)))

(assert (=> b!7941156 (= input!6711 Nil!74508)))

(assert (=> b!7941156 (= lt!2696513 call!735895)))

(declare-fun lt!2696514 () Unit!169634)

(declare-fun lt!2696518 () Unit!169634)

(assert (=> b!7941156 (= lt!2696514 lt!2696518)))

(assert (=> b!7941156 call!735893))

(assert (=> b!7941156 (= lt!2696518 call!735892)))

(declare-fun e!4685612 () tuple2!70496)

(assert (=> b!7941156 (= e!4685612 e!4685611)))

(declare-fun b!7941157 () Bool)

(assert (=> b!7941157 (= e!4685613 (tuple2!70497 Nil!74508 input!6711))))

(declare-fun b!7941158 () Bool)

(assert (=> b!7941158 (= e!4685607 call!735894)))

(declare-fun b!7941159 () Bool)

(assert (=> b!7941159 (= e!4685609 e!4685612)))

(declare-fun c!1458973 () Bool)

(assert (=> b!7941159 (= c!1458973 (= lt!2696413 lt!2696410))))

(declare-fun bm!735889 () Bool)

(declare-fun nullable!9527 (Regex!21403) Bool)

(assert (=> bm!735889 (= call!735898 (nullable!9527 r!15654))))

(declare-fun bm!735890 () Bool)

(assert (=> bm!735890 (= call!735893 (isPrefix!6503 input!6711 input!6711))))

(declare-fun b!7941160 () Bool)

(assert (=> b!7941160 (= e!4685610 (>= (size!43340 (_1!38551 lt!2696508)) (size!43340 Nil!74508)))))

(declare-fun bm!735891 () Bool)

(declare-fun call!735891 () C!43144)

(declare-fun head!16186 (List!74632) C!43144)

(assert (=> bm!735891 (= call!735891 (head!16186 input!6711))))

(declare-fun b!7941161 () Bool)

(declare-fun c!1458971 () Bool)

(assert (=> b!7941161 (= c!1458971 call!735898)))

(declare-fun lt!2696516 () Unit!169634)

(declare-fun lt!2696511 () Unit!169634)

(assert (=> b!7941161 (= lt!2696516 lt!2696511)))

(declare-fun lt!2696501 () C!43144)

(declare-fun lt!2696512 () List!74632)

(assert (=> b!7941161 (= (++!18299 (++!18299 Nil!74508 (Cons!74508 lt!2696501 Nil!74508)) lt!2696512) input!6711)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3493 (List!74632 C!43144 List!74632 List!74632) Unit!169634)

(assert (=> b!7941161 (= lt!2696511 (lemmaMoveElementToOtherListKeepsConcatEq!3493 Nil!74508 lt!2696501 lt!2696512 input!6711))))

(assert (=> b!7941161 (= lt!2696512 (tail!15728 input!6711))))

(assert (=> b!7941161 (= lt!2696501 (head!16186 input!6711))))

(declare-fun lt!2696499 () Unit!169634)

(declare-fun lt!2696515 () Unit!169634)

(assert (=> b!7941161 (= lt!2696499 lt!2696515)))

(assert (=> b!7941161 (isPrefix!6503 (++!18299 Nil!74508 (Cons!74508 (head!16186 (getSuffix!3714 input!6711 Nil!74508)) Nil!74508)) input!6711)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1271 (List!74632 List!74632) Unit!169634)

(assert (=> b!7941161 (= lt!2696515 (lemmaAddHeadSuffixToPrefixStillPrefix!1271 Nil!74508 input!6711))))

(declare-fun lt!2696519 () Unit!169634)

(declare-fun lt!2696507 () Unit!169634)

(assert (=> b!7941161 (= lt!2696519 lt!2696507)))

(assert (=> b!7941161 (= lt!2696507 (lemmaAddHeadSuffixToPrefixStillPrefix!1271 Nil!74508 input!6711))))

(assert (=> b!7941161 (= lt!2696506 (++!18299 Nil!74508 (Cons!74508 (head!16186 input!6711) Nil!74508)))))

(declare-fun lt!2696505 () Unit!169634)

(assert (=> b!7941161 (= lt!2696505 e!4685608)))

(declare-fun c!1458970 () Bool)

(assert (=> b!7941161 (= c!1458970 (= (size!43340 Nil!74508) (size!43340 input!6711)))))

(declare-fun lt!2696498 () Unit!169634)

(declare-fun lt!2696494 () Unit!169634)

(assert (=> b!7941161 (= lt!2696498 lt!2696494)))

(assert (=> b!7941161 (<= (size!43340 Nil!74508) (size!43340 input!6711))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1051 (List!74632 List!74632) Unit!169634)

(assert (=> b!7941161 (= lt!2696494 (lemmaIsPrefixThenSmallerEqSize!1051 Nil!74508 input!6711))))

(assert (=> b!7941161 (= e!4685612 e!4685607)))

(declare-fun bm!735892 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1586 (List!74632 List!74632 List!74632) Unit!169634)

(assert (=> bm!735892 (= call!735895 (lemmaIsPrefixSameLengthThenSameList!1586 input!6711 Nil!74508 input!6711))))

(declare-fun bm!735893 () Bool)

(declare-fun derivativeStep!6465 (Regex!21403 C!43144) Regex!21403)

(assert (=> bm!735893 (= call!735897 (derivativeStep!6465 r!15654 call!735891))))

(assert (= (and d!2375070 c!1458972) b!7941152))

(assert (= (and d!2375070 (not c!1458972)) b!7941159))

(assert (= (and b!7941159 c!1458973) b!7941156))

(assert (= (and b!7941159 (not c!1458973)) b!7941161))

(assert (= (and b!7941156 c!1458974) b!7941150))

(assert (= (and b!7941156 (not c!1458974)) b!7941155))

(assert (= (and b!7941161 c!1458970) b!7941148))

(assert (= (and b!7941161 (not c!1458970)) b!7941154))

(assert (= (and b!7941161 c!1458971) b!7941153))

(assert (= (and b!7941161 (not c!1458971)) b!7941158))

(assert (= (and b!7941153 c!1458975) b!7941157))

(assert (= (and b!7941153 (not c!1458975)) b!7941151))

(assert (= (or b!7941153 b!7941158) bm!735886))

(assert (= (or b!7941153 b!7941158) bm!735891))

(assert (= (or b!7941153 b!7941158) bm!735893))

(assert (= (or b!7941153 b!7941158) bm!735888))

(assert (= (or b!7941156 b!7941148) bm!735890))

(assert (= (or b!7941156 b!7941161) bm!735889))

(assert (= (or b!7941156 b!7941148) bm!735887))

(assert (= (or b!7941156 b!7941148) bm!735892))

(assert (= (and d!2375070 res!3150246) b!7941149))

(assert (= (and b!7941149 (not res!3150247)) b!7941160))

(declare-fun m!8330068 () Bool)

(assert (=> bm!735887 m!8330068))

(declare-fun m!8330070 () Bool)

(assert (=> bm!735890 m!8330070))

(assert (=> bm!735886 m!8330028))

(assert (=> d!2375070 m!8329972))

(declare-fun m!8330072 () Bool)

(assert (=> d!2375070 m!8330072))

(declare-fun m!8330074 () Bool)

(assert (=> d!2375070 m!8330074))

(declare-fun m!8330076 () Bool)

(assert (=> d!2375070 m!8330076))

(assert (=> d!2375070 m!8329982))

(assert (=> d!2375070 m!8329980))

(declare-fun m!8330078 () Bool)

(assert (=> d!2375070 m!8330078))

(assert (=> d!2375070 m!8329972))

(declare-fun m!8330080 () Bool)

(assert (=> d!2375070 m!8330080))

(declare-fun m!8330082 () Bool)

(assert (=> b!7941153 m!8330082))

(declare-fun m!8330084 () Bool)

(assert (=> bm!735888 m!8330084))

(declare-fun m!8330086 () Bool)

(assert (=> bm!735891 m!8330086))

(declare-fun m!8330088 () Bool)

(assert (=> b!7941160 m!8330088))

(assert (=> b!7941160 m!8329990))

(declare-fun m!8330090 () Bool)

(assert (=> b!7941149 m!8330090))

(assert (=> b!7941161 m!8329982))

(declare-fun m!8330092 () Bool)

(assert (=> b!7941161 m!8330092))

(declare-fun m!8330094 () Bool)

(assert (=> b!7941161 m!8330094))

(assert (=> b!7941161 m!8330086))

(assert (=> b!7941161 m!8329996))

(declare-fun m!8330096 () Bool)

(assert (=> b!7941161 m!8330096))

(assert (=> b!7941161 m!8330096))

(declare-fun m!8330098 () Bool)

(assert (=> b!7941161 m!8330098))

(declare-fun m!8330100 () Bool)

(assert (=> b!7941161 m!8330100))

(declare-fun m!8330102 () Bool)

(assert (=> b!7941161 m!8330102))

(assert (=> b!7941161 m!8329990))

(assert (=> b!7941161 m!8329982))

(declare-fun m!8330104 () Bool)

(assert (=> b!7941161 m!8330104))

(declare-fun m!8330106 () Bool)

(assert (=> b!7941161 m!8330106))

(assert (=> b!7941161 m!8330094))

(declare-fun m!8330108 () Bool)

(assert (=> b!7941161 m!8330108))

(assert (=> b!7941161 m!8330028))

(declare-fun m!8330110 () Bool)

(assert (=> bm!735893 m!8330110))

(declare-fun m!8330112 () Bool)

(assert (=> bm!735889 m!8330112))

(declare-fun m!8330114 () Bool)

(assert (=> bm!735892 m!8330114))

(assert (=> b!7940997 d!2375070))

(declare-fun d!2375080 () Bool)

(declare-fun lt!2696524 () Int)

(assert (=> d!2375080 (>= lt!2696524 0)))

(declare-fun e!4685616 () Int)

(assert (=> d!2375080 (= lt!2696524 e!4685616)))

(declare-fun c!1458978 () Bool)

(assert (=> d!2375080 (= c!1458978 ((_ is Nil!74508) Nil!74508))))

(assert (=> d!2375080 (= (size!43340 Nil!74508) lt!2696524)))

(declare-fun b!7941166 () Bool)

(assert (=> b!7941166 (= e!4685616 0)))

(declare-fun b!7941167 () Bool)

(assert (=> b!7941167 (= e!4685616 (+ 1 (size!43340 (t!390375 Nil!74508))))))

(assert (= (and d!2375080 c!1458978) b!7941166))

(assert (= (and d!2375080 (not c!1458978)) b!7941167))

(declare-fun m!8330116 () Bool)

(assert (=> b!7941167 m!8330116))

(assert (=> b!7940997 d!2375080))

(declare-fun d!2375082 () Bool)

(declare-fun lt!2696525 () Int)

(assert (=> d!2375082 (>= lt!2696525 0)))

(declare-fun e!4685617 () Int)

(assert (=> d!2375082 (= lt!2696525 e!4685617)))

(declare-fun c!1458979 () Bool)

(assert (=> d!2375082 (= c!1458979 ((_ is Nil!74508) input!6711))))

(assert (=> d!2375082 (= (size!43340 input!6711) lt!2696525)))

(declare-fun b!7941168 () Bool)

(assert (=> b!7941168 (= e!4685617 0)))

(declare-fun b!7941169 () Bool)

(assert (=> b!7941169 (= e!4685617 (+ 1 (size!43340 (t!390375 input!6711))))))

(assert (= (and d!2375082 c!1458979) b!7941168))

(assert (= (and d!2375082 (not c!1458979)) b!7941169))

(declare-fun m!8330118 () Bool)

(assert (=> b!7941169 m!8330118))

(assert (=> b!7940997 d!2375082))

(declare-fun bm!735894 () Bool)

(declare-fun call!735904 () List!74632)

(assert (=> bm!735894 (= call!735904 (tail!15728 lt!2696411))))

(declare-fun b!7941170 () Bool)

(declare-fun e!4685620 () Unit!169634)

(declare-fun Unit!169640 () Unit!169634)

(assert (=> b!7941170 (= e!4685620 Unit!169640)))

(declare-fun lt!2696549 () Unit!169634)

(declare-fun call!735900 () Unit!169634)

(assert (=> b!7941170 (= lt!2696549 call!735900)))

(declare-fun call!735901 () Bool)

(assert (=> b!7941170 call!735901))

(declare-fun lt!2696532 () Unit!169634)

(assert (=> b!7941170 (= lt!2696532 lt!2696549)))

(declare-fun lt!2696534 () Unit!169634)

(declare-fun call!735903 () Unit!169634)

(assert (=> b!7941170 (= lt!2696534 call!735903)))

(assert (=> b!7941170 (= input!6711 Nil!74508)))

(declare-fun lt!2696542 () Unit!169634)

(assert (=> b!7941170 (= lt!2696542 lt!2696534)))

(assert (=> b!7941170 false))

(declare-fun b!7941171 () Bool)

(declare-fun e!4685618 () Bool)

(declare-fun e!4685622 () Bool)

(assert (=> b!7941171 (= e!4685618 e!4685622)))

(declare-fun res!3150249 () Bool)

(assert (=> b!7941171 (=> res!3150249 e!4685622)))

(declare-fun lt!2696540 () tuple2!70496)

(assert (=> b!7941171 (= res!3150249 (isEmpty!42823 (_1!38551 lt!2696540)))))

(declare-fun b!7941172 () Bool)

(declare-fun e!4685623 () tuple2!70496)

(assert (=> b!7941172 (= e!4685623 (tuple2!70497 Nil!74508 Nil!74508))))

(declare-fun b!7941173 () Bool)

(declare-fun e!4685625 () tuple2!70496)

(declare-fun lt!2696553 () tuple2!70496)

(assert (=> b!7941173 (= e!4685625 lt!2696553)))

(declare-fun d!2375084 () Bool)

(assert (=> d!2375084 e!4685618))

(declare-fun res!3150248 () Bool)

(assert (=> d!2375084 (=> (not res!3150248) (not e!4685618))))

(assert (=> d!2375084 (= res!3150248 (= (++!18299 (_1!38551 lt!2696540) (_2!38551 lt!2696540)) input!6711))))

(declare-fun e!4685621 () tuple2!70496)

(assert (=> d!2375084 (= lt!2696540 e!4685621)))

(declare-fun c!1458982 () Bool)

(assert (=> d!2375084 (= c!1458982 (lostCause!1937 r!15654))))

(declare-fun lt!2696529 () Unit!169634)

(declare-fun Unit!169642 () Unit!169634)

(assert (=> d!2375084 (= lt!2696529 Unit!169642)))

(assert (=> d!2375084 (= (getSuffix!3714 input!6711 Nil!74508) lt!2696411)))

(declare-fun lt!2696527 () Unit!169634)

(declare-fun lt!2696528 () Unit!169634)

(assert (=> d!2375084 (= lt!2696527 lt!2696528)))

(declare-fun lt!2696536 () List!74632)

(assert (=> d!2375084 (= lt!2696411 lt!2696536)))

(assert (=> d!2375084 (= lt!2696528 (lemmaSamePrefixThenSameSuffix!2953 Nil!74508 lt!2696411 Nil!74508 lt!2696536 input!6711))))

(assert (=> d!2375084 (= lt!2696536 (getSuffix!3714 input!6711 Nil!74508))))

(declare-fun lt!2696535 () Unit!169634)

(declare-fun lt!2696552 () Unit!169634)

(assert (=> d!2375084 (= lt!2696535 lt!2696552)))

(assert (=> d!2375084 (isPrefix!6503 Nil!74508 (++!18299 Nil!74508 lt!2696411))))

(assert (=> d!2375084 (= lt!2696552 (lemmaConcatTwoListThenFirstIsPrefix!3815 Nil!74508 lt!2696411))))

(assert (=> d!2375084 (validRegex!11707 r!15654)))

(assert (=> d!2375084 (= (findLongestMatchInner!2198 r!15654 Nil!74508 lt!2696413 lt!2696411 input!6711 lt!2696410) lt!2696540)))

(declare-fun b!7941174 () Bool)

(assert (=> b!7941174 (= e!4685621 (tuple2!70497 Nil!74508 input!6711))))

(declare-fun b!7941175 () Bool)

(declare-fun e!4685619 () tuple2!70496)

(assert (=> b!7941175 (= e!4685619 e!4685625)))

(declare-fun call!735902 () tuple2!70496)

(assert (=> b!7941175 (= lt!2696553 call!735902)))

(declare-fun c!1458985 () Bool)

(assert (=> b!7941175 (= c!1458985 (isEmpty!42823 (_1!38551 lt!2696553)))))

(declare-fun b!7941176 () Bool)

(declare-fun Unit!169643 () Unit!169634)

(assert (=> b!7941176 (= e!4685620 Unit!169643)))

(declare-fun bm!735895 () Bool)

(assert (=> bm!735895 (= call!735900 (lemmaIsPrefixRefl!4004 input!6711 input!6711))))

(declare-fun b!7941177 () Bool)

(assert (=> b!7941177 (= e!4685623 (tuple2!70497 Nil!74508 input!6711))))

(declare-fun bm!735896 () Bool)

(declare-fun call!735905 () Regex!21403)

(declare-fun lt!2696538 () List!74632)

(assert (=> bm!735896 (= call!735902 (findLongestMatchInner!2198 call!735905 lt!2696538 (+ lt!2696413 1) call!735904 input!6711 lt!2696410))))

(declare-fun b!7941178 () Bool)

(declare-fun c!1458984 () Bool)

(declare-fun call!735906 () Bool)

(assert (=> b!7941178 (= c!1458984 call!735906)))

(declare-fun lt!2696541 () Unit!169634)

(declare-fun lt!2696545 () Unit!169634)

(assert (=> b!7941178 (= lt!2696541 lt!2696545)))

(assert (=> b!7941178 (= input!6711 Nil!74508)))

(assert (=> b!7941178 (= lt!2696545 call!735903)))

(declare-fun lt!2696546 () Unit!169634)

(declare-fun lt!2696550 () Unit!169634)

(assert (=> b!7941178 (= lt!2696546 lt!2696550)))

(assert (=> b!7941178 call!735901))

(assert (=> b!7941178 (= lt!2696550 call!735900)))

(declare-fun e!4685624 () tuple2!70496)

(assert (=> b!7941178 (= e!4685624 e!4685623)))

(declare-fun b!7941179 () Bool)

(assert (=> b!7941179 (= e!4685625 (tuple2!70497 Nil!74508 lt!2696411))))

(declare-fun b!7941180 () Bool)

(assert (=> b!7941180 (= e!4685619 call!735902)))

(declare-fun b!7941181 () Bool)

(assert (=> b!7941181 (= e!4685621 e!4685624)))

(declare-fun c!1458983 () Bool)

(assert (=> b!7941181 (= c!1458983 (= lt!2696413 lt!2696410))))

(declare-fun bm!735897 () Bool)

(assert (=> bm!735897 (= call!735906 (nullable!9527 r!15654))))

(declare-fun bm!735898 () Bool)

(assert (=> bm!735898 (= call!735901 (isPrefix!6503 input!6711 input!6711))))

(declare-fun b!7941182 () Bool)

(assert (=> b!7941182 (= e!4685622 (>= (size!43340 (_1!38551 lt!2696540)) (size!43340 Nil!74508)))))

(declare-fun bm!735899 () Bool)

(declare-fun call!735899 () C!43144)

(assert (=> bm!735899 (= call!735899 (head!16186 lt!2696411))))

(declare-fun b!7941183 () Bool)

(declare-fun c!1458981 () Bool)

(assert (=> b!7941183 (= c!1458981 call!735906)))

(declare-fun lt!2696548 () Unit!169634)

(declare-fun lt!2696543 () Unit!169634)

(assert (=> b!7941183 (= lt!2696548 lt!2696543)))

(declare-fun lt!2696533 () C!43144)

(declare-fun lt!2696544 () List!74632)

(assert (=> b!7941183 (= (++!18299 (++!18299 Nil!74508 (Cons!74508 lt!2696533 Nil!74508)) lt!2696544) input!6711)))

(assert (=> b!7941183 (= lt!2696543 (lemmaMoveElementToOtherListKeepsConcatEq!3493 Nil!74508 lt!2696533 lt!2696544 input!6711))))

(assert (=> b!7941183 (= lt!2696544 (tail!15728 lt!2696411))))

(assert (=> b!7941183 (= lt!2696533 (head!16186 lt!2696411))))

(declare-fun lt!2696531 () Unit!169634)

(declare-fun lt!2696547 () Unit!169634)

(assert (=> b!7941183 (= lt!2696531 lt!2696547)))

(assert (=> b!7941183 (isPrefix!6503 (++!18299 Nil!74508 (Cons!74508 (head!16186 (getSuffix!3714 input!6711 Nil!74508)) Nil!74508)) input!6711)))

(assert (=> b!7941183 (= lt!2696547 (lemmaAddHeadSuffixToPrefixStillPrefix!1271 Nil!74508 input!6711))))

(declare-fun lt!2696551 () Unit!169634)

(declare-fun lt!2696539 () Unit!169634)

(assert (=> b!7941183 (= lt!2696551 lt!2696539)))

(assert (=> b!7941183 (= lt!2696539 (lemmaAddHeadSuffixToPrefixStillPrefix!1271 Nil!74508 input!6711))))

(assert (=> b!7941183 (= lt!2696538 (++!18299 Nil!74508 (Cons!74508 (head!16186 lt!2696411) Nil!74508)))))

(declare-fun lt!2696537 () Unit!169634)

(assert (=> b!7941183 (= lt!2696537 e!4685620)))

(declare-fun c!1458980 () Bool)

(assert (=> b!7941183 (= c!1458980 (= (size!43340 Nil!74508) (size!43340 input!6711)))))

(declare-fun lt!2696530 () Unit!169634)

(declare-fun lt!2696526 () Unit!169634)

(assert (=> b!7941183 (= lt!2696530 lt!2696526)))

(assert (=> b!7941183 (<= (size!43340 Nil!74508) (size!43340 input!6711))))

(assert (=> b!7941183 (= lt!2696526 (lemmaIsPrefixThenSmallerEqSize!1051 Nil!74508 input!6711))))

(assert (=> b!7941183 (= e!4685624 e!4685619)))

(declare-fun bm!735900 () Bool)

(assert (=> bm!735900 (= call!735903 (lemmaIsPrefixSameLengthThenSameList!1586 input!6711 Nil!74508 input!6711))))

(declare-fun bm!735901 () Bool)

(assert (=> bm!735901 (= call!735905 (derivativeStep!6465 r!15654 call!735899))))

(assert (= (and d!2375084 c!1458982) b!7941174))

(assert (= (and d!2375084 (not c!1458982)) b!7941181))

(assert (= (and b!7941181 c!1458983) b!7941178))

(assert (= (and b!7941181 (not c!1458983)) b!7941183))

(assert (= (and b!7941178 c!1458984) b!7941172))

(assert (= (and b!7941178 (not c!1458984)) b!7941177))

(assert (= (and b!7941183 c!1458980) b!7941170))

(assert (= (and b!7941183 (not c!1458980)) b!7941176))

(assert (= (and b!7941183 c!1458981) b!7941175))

(assert (= (and b!7941183 (not c!1458981)) b!7941180))

(assert (= (and b!7941175 c!1458985) b!7941179))

(assert (= (and b!7941175 (not c!1458985)) b!7941173))

(assert (= (or b!7941175 b!7941180) bm!735894))

(assert (= (or b!7941175 b!7941180) bm!735899))

(assert (= (or b!7941175 b!7941180) bm!735901))

(assert (= (or b!7941175 b!7941180) bm!735896))

(assert (= (or b!7941178 b!7941170) bm!735898))

(assert (= (or b!7941178 b!7941183) bm!735897))

(assert (= (or b!7941178 b!7941170) bm!735895))

(assert (= (or b!7941178 b!7941170) bm!735900))

(assert (= (and d!2375084 res!3150248) b!7941171))

(assert (= (and b!7941171 (not res!3150249)) b!7941182))

(assert (=> bm!735895 m!8330068))

(assert (=> bm!735898 m!8330070))

(declare-fun m!8330120 () Bool)

(assert (=> bm!735894 m!8330120))

(declare-fun m!8330122 () Bool)

(assert (=> d!2375084 m!8330122))

(declare-fun m!8330124 () Bool)

(assert (=> d!2375084 m!8330124))

(assert (=> d!2375084 m!8330074))

(declare-fun m!8330126 () Bool)

(assert (=> d!2375084 m!8330126))

(assert (=> d!2375084 m!8329982))

(assert (=> d!2375084 m!8329980))

(declare-fun m!8330128 () Bool)

(assert (=> d!2375084 m!8330128))

(assert (=> d!2375084 m!8330122))

(declare-fun m!8330130 () Bool)

(assert (=> d!2375084 m!8330130))

(declare-fun m!8330132 () Bool)

(assert (=> b!7941175 m!8330132))

(declare-fun m!8330134 () Bool)

(assert (=> bm!735896 m!8330134))

(declare-fun m!8330136 () Bool)

(assert (=> bm!735899 m!8330136))

(declare-fun m!8330138 () Bool)

(assert (=> b!7941182 m!8330138))

(assert (=> b!7941182 m!8329990))

(declare-fun m!8330140 () Bool)

(assert (=> b!7941171 m!8330140))

(assert (=> b!7941183 m!8329982))

(assert (=> b!7941183 m!8330092))

(declare-fun m!8330142 () Bool)

(assert (=> b!7941183 m!8330142))

(assert (=> b!7941183 m!8330136))

(assert (=> b!7941183 m!8329996))

(assert (=> b!7941183 m!8330096))

(assert (=> b!7941183 m!8330096))

(assert (=> b!7941183 m!8330098))

(assert (=> b!7941183 m!8330100))

(declare-fun m!8330144 () Bool)

(assert (=> b!7941183 m!8330144))

(assert (=> b!7941183 m!8329990))

(assert (=> b!7941183 m!8329982))

(assert (=> b!7941183 m!8330104))

(declare-fun m!8330146 () Bool)

(assert (=> b!7941183 m!8330146))

(assert (=> b!7941183 m!8330142))

(declare-fun m!8330148 () Bool)

(assert (=> b!7941183 m!8330148))

(assert (=> b!7941183 m!8330120))

(declare-fun m!8330150 () Bool)

(assert (=> bm!735901 m!8330150))

(assert (=> bm!735897 m!8330112))

(assert (=> bm!735900 m!8330114))

(assert (=> b!7940997 d!2375084))

(declare-fun bm!735908 () Bool)

(declare-fun call!735914 () Bool)

(declare-fun c!1458998 () Bool)

(assert (=> bm!735908 (= call!735914 (validRegex!11707 (ite c!1458998 (regOne!43319 r!15654) (regTwo!43318 r!15654))))))

(declare-fun b!7941218 () Bool)

(declare-fun e!4685648 () Bool)

(declare-fun e!4685651 () Bool)

(assert (=> b!7941218 (= e!4685648 e!4685651)))

(declare-fun res!3150262 () Bool)

(assert (=> b!7941218 (=> (not res!3150262) (not e!4685651))))

(declare-fun call!735915 () Bool)

(assert (=> b!7941218 (= res!3150262 call!735915)))

(declare-fun d!2375086 () Bool)

(declare-fun res!3150263 () Bool)

(declare-fun e!4685650 () Bool)

(assert (=> d!2375086 (=> res!3150263 e!4685650)))

(assert (=> d!2375086 (= res!3150263 ((_ is ElementMatch!21403) r!15654))))

(assert (=> d!2375086 (= (validRegex!11707 r!15654) e!4685650)))

(declare-fun b!7941219 () Bool)

(declare-fun e!4685652 () Bool)

(assert (=> b!7941219 (= e!4685652 call!735915)))

(declare-fun b!7941220 () Bool)

(declare-fun e!4685653 () Bool)

(declare-fun call!735913 () Bool)

(assert (=> b!7941220 (= e!4685653 call!735913)))

(declare-fun b!7941221 () Bool)

(assert (=> b!7941221 (= e!4685651 call!735914)))

(declare-fun b!7941222 () Bool)

(declare-fun res!3150260 () Bool)

(assert (=> b!7941222 (=> (not res!3150260) (not e!4685652))))

(assert (=> b!7941222 (= res!3150260 call!735914)))

(declare-fun e!4685654 () Bool)

(assert (=> b!7941222 (= e!4685654 e!4685652)))

(declare-fun b!7941223 () Bool)

(declare-fun res!3150264 () Bool)

(assert (=> b!7941223 (=> res!3150264 e!4685648)))

(assert (=> b!7941223 (= res!3150264 (not ((_ is Concat!30402) r!15654)))))

(assert (=> b!7941223 (= e!4685654 e!4685648)))

(declare-fun b!7941224 () Bool)

(declare-fun e!4685649 () Bool)

(assert (=> b!7941224 (= e!4685649 e!4685654)))

(assert (=> b!7941224 (= c!1458998 ((_ is Union!21403) r!15654))))

(declare-fun b!7941225 () Bool)

(assert (=> b!7941225 (= e!4685650 e!4685649)))

(declare-fun c!1458999 () Bool)

(assert (=> b!7941225 (= c!1458999 ((_ is Star!21403) r!15654))))

(declare-fun b!7941226 () Bool)

(assert (=> b!7941226 (= e!4685649 e!4685653)))

(declare-fun res!3150261 () Bool)

(assert (=> b!7941226 (= res!3150261 (not (nullable!9527 (reg!21732 r!15654))))))

(assert (=> b!7941226 (=> (not res!3150261) (not e!4685653))))

(declare-fun bm!735909 () Bool)

(assert (=> bm!735909 (= call!735915 call!735913)))

(declare-fun bm!735910 () Bool)

(assert (=> bm!735910 (= call!735913 (validRegex!11707 (ite c!1458999 (reg!21732 r!15654) (ite c!1458998 (regTwo!43319 r!15654) (regOne!43318 r!15654)))))))

(assert (= (and d!2375086 (not res!3150263)) b!7941225))

(assert (= (and b!7941225 c!1458999) b!7941226))

(assert (= (and b!7941225 (not c!1458999)) b!7941224))

(assert (= (and b!7941226 res!3150261) b!7941220))

(assert (= (and b!7941224 c!1458998) b!7941222))

(assert (= (and b!7941224 (not c!1458998)) b!7941223))

(assert (= (and b!7941222 res!3150260) b!7941219))

(assert (= (and b!7941223 (not res!3150264)) b!7941218))

(assert (= (and b!7941218 res!3150262) b!7941221))

(assert (= (or b!7941222 b!7941221) bm!735908))

(assert (= (or b!7941219 b!7941218) bm!735909))

(assert (= (or b!7941220 bm!735909) bm!735910))

(declare-fun m!8330152 () Bool)

(assert (=> bm!735908 m!8330152))

(declare-fun m!8330154 () Bool)

(assert (=> b!7941226 m!8330154))

(declare-fun m!8330156 () Bool)

(assert (=> bm!735910 m!8330156))

(assert (=> start!749520 d!2375086))

(declare-fun d!2375088 () Bool)

(declare-fun lt!2696612 () Regex!21403)

(assert (=> d!2375088 (validRegex!11707 lt!2696612)))

(declare-fun e!4685661 () Regex!21403)

(assert (=> d!2375088 (= lt!2696612 e!4685661)))

(declare-fun c!1459006 () Bool)

(assert (=> d!2375088 (= c!1459006 ((_ is Cons!74508) Nil!74508))))

(assert (=> d!2375088 (validRegex!11707 r!15654)))

(assert (=> d!2375088 (= (derivative!591 r!15654 Nil!74508) lt!2696612)))

(declare-fun b!7941239 () Bool)

(assert (=> b!7941239 (= e!4685661 (derivative!591 (derivativeStep!6465 r!15654 (h!80956 Nil!74508)) (t!390375 Nil!74508)))))

(declare-fun b!7941240 () Bool)

(assert (=> b!7941240 (= e!4685661 r!15654)))

(assert (= (and d!2375088 c!1459006) b!7941239))

(assert (= (and d!2375088 (not c!1459006)) b!7941240))

(declare-fun m!8330158 () Bool)

(assert (=> d!2375088 m!8330158))

(assert (=> d!2375088 m!8329980))

(declare-fun m!8330160 () Bool)

(assert (=> b!7941239 m!8330160))

(assert (=> b!7941239 m!8330160))

(declare-fun m!8330162 () Bool)

(assert (=> b!7941239 m!8330162))

(assert (=> b!7941000 d!2375088))

(declare-fun b!7941255 () Bool)

(declare-fun e!4685672 () Bool)

(assert (=> b!7941255 (= e!4685672 (isPrefix!6503 (tail!15728 Nil!74508) (tail!15728 input!6711)))))

(declare-fun b!7941256 () Bool)

(declare-fun e!4685673 () Bool)

(assert (=> b!7941256 (= e!4685673 (>= (size!43340 input!6711) (size!43340 Nil!74508)))))

(declare-fun b!7941253 () Bool)

(declare-fun e!4685674 () Bool)

(assert (=> b!7941253 (= e!4685674 e!4685672)))

(declare-fun res!3150278 () Bool)

(assert (=> b!7941253 (=> (not res!3150278) (not e!4685672))))

(assert (=> b!7941253 (= res!3150278 (not ((_ is Nil!74508) input!6711)))))

(declare-fun b!7941254 () Bool)

(declare-fun res!3150280 () Bool)

(assert (=> b!7941254 (=> (not res!3150280) (not e!4685672))))

(assert (=> b!7941254 (= res!3150280 (= (head!16186 Nil!74508) (head!16186 input!6711)))))

(declare-fun d!2375090 () Bool)

(assert (=> d!2375090 e!4685673))

(declare-fun res!3150277 () Bool)

(assert (=> d!2375090 (=> res!3150277 e!4685673)))

(declare-fun lt!2696615 () Bool)

(assert (=> d!2375090 (= res!3150277 (not lt!2696615))))

(assert (=> d!2375090 (= lt!2696615 e!4685674)))

(declare-fun res!3150279 () Bool)

(assert (=> d!2375090 (=> res!3150279 e!4685674)))

(assert (=> d!2375090 (= res!3150279 ((_ is Nil!74508) Nil!74508))))

(assert (=> d!2375090 (= (isPrefix!6503 Nil!74508 input!6711) lt!2696615)))

(assert (= (and d!2375090 (not res!3150279)) b!7941253))

(assert (= (and b!7941253 res!3150278) b!7941254))

(assert (= (and b!7941254 res!3150280) b!7941255))

(assert (= (and d!2375090 (not res!3150277)) b!7941256))

(declare-fun m!8330164 () Bool)

(assert (=> b!7941255 m!8330164))

(assert (=> b!7941255 m!8330028))

(assert (=> b!7941255 m!8330164))

(assert (=> b!7941255 m!8330028))

(declare-fun m!8330166 () Bool)

(assert (=> b!7941255 m!8330166))

(assert (=> b!7941256 m!8329996))

(assert (=> b!7941256 m!8329990))

(declare-fun m!8330168 () Bool)

(assert (=> b!7941254 m!8330168))

(assert (=> b!7941254 m!8330086))

(assert (=> b!7940994 d!2375090))

(declare-fun b!7941268 () Bool)

(declare-fun e!4685679 () Bool)

(declare-fun lt!2696618 () List!74632)

(assert (=> b!7941268 (= e!4685679 (or (not (= input!6711 Nil!74508)) (= lt!2696618 Nil!74508)))))

(declare-fun b!7941265 () Bool)

(declare-fun e!4685680 () List!74632)

(assert (=> b!7941265 (= e!4685680 input!6711)))

(declare-fun b!7941267 () Bool)

(declare-fun res!3150286 () Bool)

(assert (=> b!7941267 (=> (not res!3150286) (not e!4685679))))

(assert (=> b!7941267 (= res!3150286 (= (size!43340 lt!2696618) (+ (size!43340 Nil!74508) (size!43340 input!6711))))))

(declare-fun b!7941266 () Bool)

(assert (=> b!7941266 (= e!4685680 (Cons!74508 (h!80956 Nil!74508) (++!18299 (t!390375 Nil!74508) input!6711)))))

(declare-fun d!2375092 () Bool)

(assert (=> d!2375092 e!4685679))

(declare-fun res!3150285 () Bool)

(assert (=> d!2375092 (=> (not res!3150285) (not e!4685679))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15814 (List!74632) (InoxSet C!43144))

(assert (=> d!2375092 (= res!3150285 (= (content!15814 lt!2696618) ((_ map or) (content!15814 Nil!74508) (content!15814 input!6711))))))

(assert (=> d!2375092 (= lt!2696618 e!4685680)))

(declare-fun c!1459009 () Bool)

(assert (=> d!2375092 (= c!1459009 ((_ is Nil!74508) Nil!74508))))

(assert (=> d!2375092 (= (++!18299 Nil!74508 input!6711) lt!2696618)))

(assert (= (and d!2375092 c!1459009) b!7941265))

(assert (= (and d!2375092 (not c!1459009)) b!7941266))

(assert (= (and d!2375092 res!3150285) b!7941267))

(assert (= (and b!7941267 res!3150286) b!7941268))

(declare-fun m!8330170 () Bool)

(assert (=> b!7941267 m!8330170))

(assert (=> b!7941267 m!8329990))

(assert (=> b!7941267 m!8329996))

(declare-fun m!8330172 () Bool)

(assert (=> b!7941266 m!8330172))

(declare-fun m!8330174 () Bool)

(assert (=> d!2375092 m!8330174))

(declare-fun m!8330176 () Bool)

(assert (=> d!2375092 m!8330176))

(declare-fun m!8330178 () Bool)

(assert (=> d!2375092 m!8330178))

(assert (=> b!7941001 d!2375092))

(declare-fun d!2375094 () Bool)

(declare-fun e!4685723 () Bool)

(assert (=> d!2375094 e!4685723))

(declare-fun c!1459034 () Bool)

(assert (=> d!2375094 (= c!1459034 ((_ is EmptyExpr!21403) r!15654))))

(declare-fun lt!2696681 () Bool)

(declare-fun e!4685721 () Bool)

(assert (=> d!2375094 (= lt!2696681 e!4685721)))

(declare-fun c!1459033 () Bool)

(assert (=> d!2375094 (= c!1459033 (isEmpty!42823 (_1!38551 lt!2696412)))))

(assert (=> d!2375094 (validRegex!11707 r!15654)))

(assert (=> d!2375094 (= (matchR!10710 r!15654 (_1!38551 lt!2696412)) lt!2696681)))

(declare-fun b!7941343 () Bool)

(declare-fun res!3150314 () Bool)

(declare-fun e!4685722 () Bool)

(assert (=> b!7941343 (=> res!3150314 e!4685722)))

(assert (=> b!7941343 (= res!3150314 (not ((_ is ElementMatch!21403) r!15654)))))

(declare-fun e!4685717 () Bool)

(assert (=> b!7941343 (= e!4685717 e!4685722)))

(declare-fun b!7941344 () Bool)

(declare-fun res!3150310 () Bool)

(declare-fun e!4685718 () Bool)

(assert (=> b!7941344 (=> res!3150310 e!4685718)))

(assert (=> b!7941344 (= res!3150310 (not (isEmpty!42823 (tail!15728 (_1!38551 lt!2696412)))))))

(declare-fun b!7941345 () Bool)

(declare-fun call!735950 () Bool)

(assert (=> b!7941345 (= e!4685723 (= lt!2696681 call!735950))))

(declare-fun b!7941346 () Bool)

(assert (=> b!7941346 (= e!4685718 (not (= (head!16186 (_1!38551 lt!2696412)) (c!1458930 r!15654))))))

(declare-fun b!7941347 () Bool)

(declare-fun e!4685719 () Bool)

(assert (=> b!7941347 (= e!4685719 e!4685718)))

(declare-fun res!3150312 () Bool)

(assert (=> b!7941347 (=> res!3150312 e!4685718)))

(assert (=> b!7941347 (= res!3150312 call!735950)))

(declare-fun b!7941348 () Bool)

(assert (=> b!7941348 (= e!4685717 (not lt!2696681))))

(declare-fun b!7941349 () Bool)

(declare-fun res!3150313 () Bool)

(declare-fun e!4685720 () Bool)

(assert (=> b!7941349 (=> (not res!3150313) (not e!4685720))))

(assert (=> b!7941349 (= res!3150313 (isEmpty!42823 (tail!15728 (_1!38551 lt!2696412))))))

(declare-fun b!7941350 () Bool)

(declare-fun res!3150309 () Bool)

(assert (=> b!7941350 (=> res!3150309 e!4685722)))

(assert (=> b!7941350 (= res!3150309 e!4685720)))

(declare-fun res!3150308 () Bool)

(assert (=> b!7941350 (=> (not res!3150308) (not e!4685720))))

(assert (=> b!7941350 (= res!3150308 lt!2696681)))

(declare-fun b!7941351 () Bool)

(assert (=> b!7941351 (= e!4685721 (nullable!9527 r!15654))))

(declare-fun b!7941352 () Bool)

(assert (=> b!7941352 (= e!4685720 (= (head!16186 (_1!38551 lt!2696412)) (c!1458930 r!15654)))))

(declare-fun bm!735945 () Bool)

(assert (=> bm!735945 (= call!735950 (isEmpty!42823 (_1!38551 lt!2696412)))))

(declare-fun b!7941353 () Bool)

(assert (=> b!7941353 (= e!4685721 (matchR!10710 (derivativeStep!6465 r!15654 (head!16186 (_1!38551 lt!2696412))) (tail!15728 (_1!38551 lt!2696412))))))

(declare-fun b!7941354 () Bool)

(assert (=> b!7941354 (= e!4685723 e!4685717)))

(declare-fun c!1459032 () Bool)

(assert (=> b!7941354 (= c!1459032 ((_ is EmptyLang!21403) r!15654))))

(declare-fun b!7941355 () Bool)

(declare-fun res!3150311 () Bool)

(assert (=> b!7941355 (=> (not res!3150311) (not e!4685720))))

(assert (=> b!7941355 (= res!3150311 (not call!735950))))

(declare-fun b!7941356 () Bool)

(assert (=> b!7941356 (= e!4685722 e!4685719)))

(declare-fun res!3150307 () Bool)

(assert (=> b!7941356 (=> (not res!3150307) (not e!4685719))))

(assert (=> b!7941356 (= res!3150307 (not lt!2696681))))

(assert (= (and d!2375094 c!1459033) b!7941351))

(assert (= (and d!2375094 (not c!1459033)) b!7941353))

(assert (= (and d!2375094 c!1459034) b!7941345))

(assert (= (and d!2375094 (not c!1459034)) b!7941354))

(assert (= (and b!7941354 c!1459032) b!7941348))

(assert (= (and b!7941354 (not c!1459032)) b!7941343))

(assert (= (and b!7941343 (not res!3150314)) b!7941350))

(assert (= (and b!7941350 res!3150308) b!7941355))

(assert (= (and b!7941355 res!3150311) b!7941349))

(assert (= (and b!7941349 res!3150313) b!7941352))

(assert (= (and b!7941350 (not res!3150309)) b!7941356))

(assert (= (and b!7941356 res!3150307) b!7941347))

(assert (= (and b!7941347 (not res!3150312)) b!7941344))

(assert (= (and b!7941344 (not res!3150310)) b!7941346))

(assert (= (or b!7941345 b!7941347 b!7941355) bm!735945))

(declare-fun m!8330260 () Bool)

(assert (=> b!7941353 m!8330260))

(assert (=> b!7941353 m!8330260))

(declare-fun m!8330262 () Bool)

(assert (=> b!7941353 m!8330262))

(declare-fun m!8330264 () Bool)

(assert (=> b!7941353 m!8330264))

(assert (=> b!7941353 m!8330262))

(assert (=> b!7941353 m!8330264))

(declare-fun m!8330266 () Bool)

(assert (=> b!7941353 m!8330266))

(assert (=> b!7941346 m!8330260))

(assert (=> b!7941344 m!8330264))

(assert (=> b!7941344 m!8330264))

(declare-fun m!8330268 () Bool)

(assert (=> b!7941344 m!8330268))

(assert (=> d!2375094 m!8329986))

(assert (=> d!2375094 m!8329980))

(assert (=> b!7941351 m!8330112))

(assert (=> bm!735945 m!8329986))

(assert (=> b!7941349 m!8330264))

(assert (=> b!7941349 m!8330264))

(assert (=> b!7941349 m!8330268))

(assert (=> b!7941352 m!8330260))

(assert (=> b!7940996 d!2375094))

(declare-fun b!7941381 () Bool)

(declare-fun e!4685731 () Bool)

(declare-fun tp!2361188 () Bool)

(assert (=> b!7941381 (= e!4685731 (and tp_is_empty!53349 tp!2361188))))

(assert (=> b!7941002 (= tp!2361146 e!4685731)))

(assert (= (and b!7941002 ((_ is Cons!74508) (t!390375 input!6711))) b!7941381))

(declare-fun e!4685737 () Bool)

(assert (=> b!7940993 (= tp!2361145 e!4685737)))

(declare-fun b!7941399 () Bool)

(declare-fun tp!2361206 () Bool)

(assert (=> b!7941399 (= e!4685737 tp!2361206)))

(declare-fun b!7941400 () Bool)

(declare-fun tp!2361204 () Bool)

(declare-fun tp!2361202 () Bool)

(assert (=> b!7941400 (= e!4685737 (and tp!2361204 tp!2361202))))

(declare-fun b!7941398 () Bool)

(declare-fun tp!2361205 () Bool)

(declare-fun tp!2361203 () Bool)

(assert (=> b!7941398 (= e!4685737 (and tp!2361205 tp!2361203))))

(declare-fun b!7941397 () Bool)

(assert (=> b!7941397 (= e!4685737 tp_is_empty!53349)))

(assert (= (and b!7940993 ((_ is ElementMatch!21403) (regOne!43319 r!15654))) b!7941397))

(assert (= (and b!7940993 ((_ is Concat!30402) (regOne!43319 r!15654))) b!7941398))

(assert (= (and b!7940993 ((_ is Star!21403) (regOne!43319 r!15654))) b!7941399))

(assert (= (and b!7940993 ((_ is Union!21403) (regOne!43319 r!15654))) b!7941400))

(declare-fun e!4685738 () Bool)

(assert (=> b!7940993 (= tp!2361149 e!4685738)))

(declare-fun b!7941403 () Bool)

(declare-fun tp!2361211 () Bool)

(assert (=> b!7941403 (= e!4685738 tp!2361211)))

(declare-fun b!7941404 () Bool)

(declare-fun tp!2361209 () Bool)

(declare-fun tp!2361207 () Bool)

(assert (=> b!7941404 (= e!4685738 (and tp!2361209 tp!2361207))))

(declare-fun b!7941402 () Bool)

(declare-fun tp!2361210 () Bool)

(declare-fun tp!2361208 () Bool)

(assert (=> b!7941402 (= e!4685738 (and tp!2361210 tp!2361208))))

(declare-fun b!7941401 () Bool)

(assert (=> b!7941401 (= e!4685738 tp_is_empty!53349)))

(assert (= (and b!7940993 ((_ is ElementMatch!21403) (regTwo!43319 r!15654))) b!7941401))

(assert (= (and b!7940993 ((_ is Concat!30402) (regTwo!43319 r!15654))) b!7941402))

(assert (= (and b!7940993 ((_ is Star!21403) (regTwo!43319 r!15654))) b!7941403))

(assert (= (and b!7940993 ((_ is Union!21403) (regTwo!43319 r!15654))) b!7941404))

(declare-fun e!4685739 () Bool)

(assert (=> b!7940998 (= tp!2361150 e!4685739)))

(declare-fun b!7941407 () Bool)

(declare-fun tp!2361216 () Bool)

(assert (=> b!7941407 (= e!4685739 tp!2361216)))

(declare-fun b!7941408 () Bool)

(declare-fun tp!2361214 () Bool)

(declare-fun tp!2361212 () Bool)

(assert (=> b!7941408 (= e!4685739 (and tp!2361214 tp!2361212))))

(declare-fun b!7941406 () Bool)

(declare-fun tp!2361215 () Bool)

(declare-fun tp!2361213 () Bool)

(assert (=> b!7941406 (= e!4685739 (and tp!2361215 tp!2361213))))

(declare-fun b!7941405 () Bool)

(assert (=> b!7941405 (= e!4685739 tp_is_empty!53349)))

(assert (= (and b!7940998 ((_ is ElementMatch!21403) (regOne!43318 r!15654))) b!7941405))

(assert (= (and b!7940998 ((_ is Concat!30402) (regOne!43318 r!15654))) b!7941406))

(assert (= (and b!7940998 ((_ is Star!21403) (regOne!43318 r!15654))) b!7941407))

(assert (= (and b!7940998 ((_ is Union!21403) (regOne!43318 r!15654))) b!7941408))

(declare-fun e!4685740 () Bool)

(assert (=> b!7940998 (= tp!2361148 e!4685740)))

(declare-fun b!7941411 () Bool)

(declare-fun tp!2361221 () Bool)

(assert (=> b!7941411 (= e!4685740 tp!2361221)))

(declare-fun b!7941412 () Bool)

(declare-fun tp!2361219 () Bool)

(declare-fun tp!2361217 () Bool)

(assert (=> b!7941412 (= e!4685740 (and tp!2361219 tp!2361217))))

(declare-fun b!7941410 () Bool)

(declare-fun tp!2361220 () Bool)

(declare-fun tp!2361218 () Bool)

(assert (=> b!7941410 (= e!4685740 (and tp!2361220 tp!2361218))))

(declare-fun b!7941409 () Bool)

(assert (=> b!7941409 (= e!4685740 tp_is_empty!53349)))

(assert (= (and b!7940998 ((_ is ElementMatch!21403) (regTwo!43318 r!15654))) b!7941409))

(assert (= (and b!7940998 ((_ is Concat!30402) (regTwo!43318 r!15654))) b!7941410))

(assert (= (and b!7940998 ((_ is Star!21403) (regTwo!43318 r!15654))) b!7941411))

(assert (= (and b!7940998 ((_ is Union!21403) (regTwo!43318 r!15654))) b!7941412))

(declare-fun e!4685741 () Bool)

(assert (=> b!7940995 (= tp!2361147 e!4685741)))

(declare-fun b!7941415 () Bool)

(declare-fun tp!2361226 () Bool)

(assert (=> b!7941415 (= e!4685741 tp!2361226)))

(declare-fun b!7941416 () Bool)

(declare-fun tp!2361224 () Bool)

(declare-fun tp!2361222 () Bool)

(assert (=> b!7941416 (= e!4685741 (and tp!2361224 tp!2361222))))

(declare-fun b!7941414 () Bool)

(declare-fun tp!2361225 () Bool)

(declare-fun tp!2361223 () Bool)

(assert (=> b!7941414 (= e!4685741 (and tp!2361225 tp!2361223))))

(declare-fun b!7941413 () Bool)

(assert (=> b!7941413 (= e!4685741 tp_is_empty!53349)))

(assert (= (and b!7940995 ((_ is ElementMatch!21403) (reg!21732 r!15654))) b!7941413))

(assert (= (and b!7940995 ((_ is Concat!30402) (reg!21732 r!15654))) b!7941414))

(assert (= (and b!7940995 ((_ is Star!21403) (reg!21732 r!15654))) b!7941415))

(assert (= (and b!7940995 ((_ is Union!21403) (reg!21732 r!15654))) b!7941416))

(check-sat (not b!7941169) (not b!7941414) (not b!7941053) (not b!7941404) (not bm!735894) (not d!2375092) (not b!7941412) (not b!7941353) (not d!2375056) (not b!7941352) (not bm!735895) (not b!7941255) (not bm!735887) (not b!7941407) (not b!7941415) (not b!7941344) (not b!7941149) (not bm!735900) (not bm!735901) (not d!2375070) (not b!7941351) (not bm!735886) (not d!2375094) (not b!7941349) (not b!7941346) (not bm!735893) (not bm!735889) (not b!7941183) (not b!7941416) (not bm!735899) (not b!7941402) (not b!7941182) (not b!7941175) (not b!7941160) (not bm!735892) (not b!7941406) (not bm!735890) (not bm!735891) (not b!7941254) (not b!7941239) (not b!7941266) (not b!7941226) (not b!7941410) (not d!2375084) (not b!7941398) (not bm!735910) (not d!2375088) (not bm!735888) (not bm!735898) (not b!7941267) (not bm!735896) (not b!7941256) (not b!7941408) (not bm!735908) (not b!7941399) (not b!7941381) (not b!7941171) (not b!7941167) (not b!7941403) (not b!7941161) (not b!7941411) (not bm!735897) (not b!7941153) (not b!7941044) (not b!7941400) (not d!2375062) (not bm!735945) tp_is_empty!53349)
(check-sat)
