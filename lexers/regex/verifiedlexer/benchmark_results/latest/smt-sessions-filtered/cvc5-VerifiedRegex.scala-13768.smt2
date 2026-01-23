; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734282 () Bool)

(assert start!734282)

(declare-fun b!7623885 () Bool)

(assert (=> b!7623885 true))

(assert (=> b!7623885 true))

(declare-fun bs!1943585 () Bool)

(declare-fun b!7623877 () Bool)

(assert (= bs!1943585 (and b!7623877 b!7623885)))

(declare-fun lambda!468603 () Int)

(declare-fun lambda!468602 () Int)

(assert (=> bs!1943585 (not (= lambda!468603 lambda!468602))))

(assert (=> b!7623877 true))

(assert (=> b!7623877 true))

(declare-fun b!7623876 () Bool)

(declare-fun e!4533088 () Bool)

(declare-fun tp_is_empty!51015 () Bool)

(declare-fun tp!2225898 () Bool)

(assert (=> b!7623876 (= e!4533088 (and tp_is_empty!51015 tp!2225898))))

(declare-fun res!3052609 () Bool)

(declare-fun e!4533085 () Bool)

(assert (=> b!7623877 (=> res!3052609 e!4533085)))

(declare-fun Exists!4486 (Int) Bool)

(assert (=> b!7623877 (= res!3052609 (not (Exists!4486 lambda!468603)))))

(declare-fun b!7623878 () Bool)

(declare-datatypes ((Unit!167560 0))(
  ( (Unit!167561) )
))
(declare-fun e!4533087 () Unit!167560)

(declare-fun Unit!167562 () Unit!167560)

(assert (=> b!7623878 (= e!4533087 Unit!167562)))

(declare-fun b!7623879 () Bool)

(declare-fun Unit!167563 () Unit!167560)

(assert (=> b!7623879 (= e!4533087 Unit!167563)))

(declare-fun lt!2657445 () Unit!167560)

(declare-datatypes ((C!40986 0))(
  ( (C!40987 (val!30933 Int)) )
))
(declare-datatypes ((Regex!20330 0))(
  ( (ElementMatch!20330 (c!1404948 C!40986)) (Concat!29175 (regOne!41172 Regex!20330) (regTwo!41172 Regex!20330)) (EmptyExpr!20330) (Star!20330 (reg!20659 Regex!20330)) (EmptyLang!20330) (Union!20330 (regOne!41173 Regex!20330) (regTwo!41173 Regex!20330)) )
))
(declare-fun r!14126 () Regex!20330)

(declare-datatypes ((List!73183 0))(
  ( (Nil!73059) (Cons!73059 (h!79507 C!40986) (t!387918 List!73183)) )
))
(declare-fun s!9605 () List!73183)

(declare-fun lemmaStarAppConcat!11 (Regex!20330 List!73183) Unit!167560)

(assert (=> b!7623879 (= lt!2657445 (lemmaStarAppConcat!11 (reg!20659 r!14126) s!9605))))

(declare-fun matchR!9837 (Regex!20330 List!73183) Bool)

(assert (=> b!7623879 (matchR!9837 (Concat!29175 (reg!20659 r!14126) r!14126) s!9605)))

(declare-fun lt!2657447 () Unit!167560)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!243 (Regex!20330 Regex!20330 List!73183) Unit!167560)

(assert (=> b!7623879 (= lt!2657447 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!243 (reg!20659 r!14126) r!14126 s!9605))))

(assert (=> b!7623879 false))

(declare-fun b!7623881 () Bool)

(declare-fun e!4533083 () Bool)

(declare-fun tp!2225892 () Bool)

(assert (=> b!7623881 (= e!4533083 tp!2225892)))

(declare-fun b!7623882 () Bool)

(declare-fun res!3052610 () Bool)

(assert (=> b!7623882 (=> res!3052610 e!4533085)))

(declare-datatypes ((tuple2!69222 0))(
  ( (tuple2!69223 (_1!37914 List!73183) (_2!37914 List!73183)) )
))
(declare-fun cut!11 () tuple2!69222)

(declare-fun isEmpty!41685 (List!73183) Bool)

(assert (=> b!7623882 (= res!3052610 (isEmpty!41685 (_1!37914 cut!11)))))

(declare-fun b!7623883 () Bool)

(declare-fun res!3052615 () Bool)

(declare-fun e!4533084 () Bool)

(assert (=> b!7623883 (=> (not res!3052615) (not e!4533084))))

(assert (=> b!7623883 (= res!3052615 (and (not (is-EmptyExpr!20330 r!14126)) (not (is-EmptyLang!20330 r!14126)) (not (is-ElementMatch!20330 r!14126)) (not (is-Union!20330 r!14126)) (is-Star!20330 r!14126)))))

(declare-fun b!7623884 () Bool)

(declare-fun validRegex!10750 (Regex!20330) Bool)

(assert (=> b!7623884 (= e!4533085 (validRegex!10750 (reg!20659 r!14126)))))

(declare-fun e!4533086 () Bool)

(assert (=> b!7623885 (= e!4533084 (not e!4533086))))

(declare-fun res!3052613 () Bool)

(assert (=> b!7623885 (=> res!3052613 e!4533086)))

(declare-fun lt!2657443 () Bool)

(assert (=> b!7623885 (= res!3052613 lt!2657443)))

(assert (=> b!7623885 (= lt!2657443 (Exists!4486 lambda!468602))))

(declare-datatypes ((Option!17405 0))(
  ( (None!17404) (Some!17404 (v!54539 tuple2!69222)) )
))
(declare-fun isDefined!14021 (Option!17405) Bool)

(declare-fun findConcatSeparation!3435 (Regex!20330 Regex!20330 List!73183 List!73183 List!73183) Option!17405)

(assert (=> b!7623885 (= lt!2657443 (isDefined!14021 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605)))))

(declare-fun lt!2657446 () Unit!167560)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3193 (Regex!20330 Regex!20330 List!73183) Unit!167560)

(assert (=> b!7623885 (= lt!2657446 (lemmaFindConcatSeparationEquivalentToExists!3193 (reg!20659 r!14126) r!14126 s!9605))))

(declare-fun b!7623886 () Bool)

(assert (=> b!7623886 (= e!4533083 tp_is_empty!51015)))

(declare-fun b!7623887 () Bool)

(declare-fun tp!2225897 () Bool)

(declare-fun tp!2225895 () Bool)

(assert (=> b!7623887 (= e!4533083 (and tp!2225897 tp!2225895))))

(declare-fun b!7623888 () Bool)

(declare-fun e!4533089 () Bool)

(declare-fun tp!2225894 () Bool)

(assert (=> b!7623888 (= e!4533089 (and tp_is_empty!51015 tp!2225894))))

(declare-fun b!7623889 () Bool)

(declare-fun res!3052612 () Bool)

(assert (=> b!7623889 (=> res!3052612 e!4533085)))

(declare-fun ++!17636 (List!73183 List!73183) List!73183)

(assert (=> b!7623889 (= res!3052612 (not (= (++!17636 (_1!37914 cut!11) (_2!37914 cut!11)) s!9605)))))

(declare-fun res!3052616 () Bool)

(assert (=> start!734282 (=> (not res!3052616) (not e!4533084))))

(assert (=> start!734282 (= res!3052616 (validRegex!10750 r!14126))))

(assert (=> start!734282 e!4533084))

(assert (=> start!734282 e!4533083))

(declare-fun e!4533082 () Bool)

(assert (=> start!734282 e!4533082))

(assert (=> start!734282 (and e!4533089 e!4533088)))

(declare-fun b!7623880 () Bool)

(declare-fun res!3052611 () Bool)

(assert (=> b!7623880 (=> (not res!3052611) (not e!4533084))))

(assert (=> b!7623880 (= res!3052611 (not (isEmpty!41685 s!9605)))))

(declare-fun b!7623890 () Bool)

(assert (=> b!7623890 (= e!4533086 e!4533085)))

(declare-fun res!3052614 () Bool)

(assert (=> b!7623890 (=> res!3052614 e!4533085)))

(assert (=> b!7623890 (= res!3052614 (Exists!4486 lambda!468602))))

(declare-fun lt!2657444 () Unit!167560)

(assert (=> b!7623890 (= lt!2657444 e!4533087)))

(declare-fun c!1404947 () Bool)

(assert (=> b!7623890 (= c!1404947 (matchR!9837 r!14126 s!9605))))

(declare-fun b!7623891 () Bool)

(declare-fun tp!2225893 () Bool)

(declare-fun tp!2225896 () Bool)

(assert (=> b!7623891 (= e!4533083 (and tp!2225893 tp!2225896))))

(declare-fun b!7623892 () Bool)

(declare-fun tp!2225899 () Bool)

(assert (=> b!7623892 (= e!4533082 (and tp_is_empty!51015 tp!2225899))))

(assert (= (and start!734282 res!3052616) b!7623883))

(assert (= (and b!7623883 res!3052615) b!7623880))

(assert (= (and b!7623880 res!3052611) b!7623885))

(assert (= (and b!7623885 (not res!3052613)) b!7623890))

(assert (= (and b!7623890 c!1404947) b!7623879))

(assert (= (and b!7623890 (not c!1404947)) b!7623878))

(assert (= (and b!7623890 (not res!3052614)) b!7623877))

(assert (= (and b!7623877 (not res!3052609)) b!7623889))

(assert (= (and b!7623889 (not res!3052612)) b!7623882))

(assert (= (and b!7623882 (not res!3052610)) b!7623884))

(assert (= (and start!734282 (is-ElementMatch!20330 r!14126)) b!7623886))

(assert (= (and start!734282 (is-Concat!29175 r!14126)) b!7623891))

(assert (= (and start!734282 (is-Star!20330 r!14126)) b!7623881))

(assert (= (and start!734282 (is-Union!20330 r!14126)) b!7623887))

(assert (= (and start!734282 (is-Cons!73059 s!9605)) b!7623892))

(assert (= (and start!734282 (is-Cons!73059 (_1!37914 cut!11))) b!7623888))

(assert (= (and start!734282 (is-Cons!73059 (_2!37914 cut!11))) b!7623876))

(declare-fun m!8154434 () Bool)

(assert (=> b!7623882 m!8154434))

(declare-fun m!8154436 () Bool)

(assert (=> b!7623877 m!8154436))

(declare-fun m!8154438 () Bool)

(assert (=> b!7623880 m!8154438))

(declare-fun m!8154440 () Bool)

(assert (=> start!734282 m!8154440))

(declare-fun m!8154442 () Bool)

(assert (=> b!7623885 m!8154442))

(declare-fun m!8154444 () Bool)

(assert (=> b!7623885 m!8154444))

(assert (=> b!7623885 m!8154444))

(declare-fun m!8154446 () Bool)

(assert (=> b!7623885 m!8154446))

(declare-fun m!8154448 () Bool)

(assert (=> b!7623885 m!8154448))

(assert (=> b!7623890 m!8154442))

(declare-fun m!8154450 () Bool)

(assert (=> b!7623890 m!8154450))

(declare-fun m!8154452 () Bool)

(assert (=> b!7623884 m!8154452))

(declare-fun m!8154454 () Bool)

(assert (=> b!7623879 m!8154454))

(declare-fun m!8154456 () Bool)

(assert (=> b!7623879 m!8154456))

(declare-fun m!8154458 () Bool)

(assert (=> b!7623879 m!8154458))

(declare-fun m!8154460 () Bool)

(assert (=> b!7623889 m!8154460))

(push 1)

(assert tp_is_empty!51015)

(assert (not b!7623890))

(assert (not b!7623887))

(assert (not b!7623882))

(assert (not b!7623884))

(assert (not b!7623889))

(assert (not start!734282))

(assert (not b!7623885))

(assert (not b!7623880))

(assert (not b!7623877))

(assert (not b!7623891))

(assert (not b!7623888))

(assert (not b!7623879))

(assert (not b!7623881))

(assert (not b!7623892))

(assert (not b!7623876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7623995 () Bool)

(declare-fun e!4533138 () Bool)

(declare-fun lt!2657465 () List!73183)

(assert (=> b!7623995 (= e!4533138 (or (not (= (_2!37914 cut!11) Nil!73059)) (= lt!2657465 (_1!37914 cut!11))))))

(declare-fun d!2323531 () Bool)

(assert (=> d!2323531 e!4533138))

(declare-fun res!3052670 () Bool)

(assert (=> d!2323531 (=> (not res!3052670) (not e!4533138))))

(declare-fun content!15450 (List!73183) (Set C!40986))

(assert (=> d!2323531 (= res!3052670 (= (content!15450 lt!2657465) (set.union (content!15450 (_1!37914 cut!11)) (content!15450 (_2!37914 cut!11)))))))

(declare-fun e!4533139 () List!73183)

(assert (=> d!2323531 (= lt!2657465 e!4533139)))

(declare-fun c!1404959 () Bool)

(assert (=> d!2323531 (= c!1404959 (is-Nil!73059 (_1!37914 cut!11)))))

(assert (=> d!2323531 (= (++!17636 (_1!37914 cut!11) (_2!37914 cut!11)) lt!2657465)))

(declare-fun b!7623994 () Bool)

(declare-fun res!3052669 () Bool)

(assert (=> b!7623994 (=> (not res!3052669) (not e!4533138))))

(declare-fun size!42543 (List!73183) Int)

(assert (=> b!7623994 (= res!3052669 (= (size!42543 lt!2657465) (+ (size!42543 (_1!37914 cut!11)) (size!42543 (_2!37914 cut!11)))))))

(declare-fun b!7623993 () Bool)

(assert (=> b!7623993 (= e!4533139 (Cons!73059 (h!79507 (_1!37914 cut!11)) (++!17636 (t!387918 (_1!37914 cut!11)) (_2!37914 cut!11))))))

(declare-fun b!7623992 () Bool)

(assert (=> b!7623992 (= e!4533139 (_2!37914 cut!11))))

(assert (= (and d!2323531 c!1404959) b!7623992))

(assert (= (and d!2323531 (not c!1404959)) b!7623993))

(assert (= (and d!2323531 res!3052670) b!7623994))

(assert (= (and b!7623994 res!3052669) b!7623995))

(declare-fun m!8154490 () Bool)

(assert (=> d!2323531 m!8154490))

(declare-fun m!8154492 () Bool)

(assert (=> d!2323531 m!8154492))

(declare-fun m!8154494 () Bool)

(assert (=> d!2323531 m!8154494))

(declare-fun m!8154496 () Bool)

(assert (=> b!7623994 m!8154496))

(declare-fun m!8154498 () Bool)

(assert (=> b!7623994 m!8154498))

(declare-fun m!8154500 () Bool)

(assert (=> b!7623994 m!8154500))

(declare-fun m!8154502 () Bool)

(assert (=> b!7623993 m!8154502))

(assert (=> b!7623889 d!2323531))

(declare-fun d!2323533 () Bool)

(declare-fun choose!58835 (Int) Bool)

(assert (=> d!2323533 (= (Exists!4486 lambda!468602) (choose!58835 lambda!468602))))

(declare-fun bs!1943587 () Bool)

(assert (= bs!1943587 d!2323533))

(declare-fun m!8154504 () Bool)

(assert (=> bs!1943587 m!8154504))

(assert (=> b!7623890 d!2323533))

(declare-fun b!7624043 () Bool)

(declare-fun e!4533168 () Bool)

(declare-fun head!15663 (List!73183) C!40986)

(assert (=> b!7624043 (= e!4533168 (not (= (head!15663 s!9605) (c!1404948 r!14126))))))

(declare-fun b!7624044 () Bool)

(declare-fun res!3052699 () Bool)

(declare-fun e!4533173 () Bool)

(assert (=> b!7624044 (=> (not res!3052699) (not e!4533173))))

(declare-fun call!700105 () Bool)

(assert (=> b!7624044 (= res!3052699 (not call!700105))))

(declare-fun bm!700100 () Bool)

(assert (=> bm!700100 (= call!700105 (isEmpty!41685 s!9605))))

(declare-fun b!7624045 () Bool)

(declare-fun e!4533170 () Bool)

(declare-fun lt!2657468 () Bool)

(assert (=> b!7624045 (= e!4533170 (= lt!2657468 call!700105))))

(declare-fun b!7624046 () Bool)

(declare-fun e!4533171 () Bool)

(assert (=> b!7624046 (= e!4533171 e!4533168)))

(declare-fun res!3052700 () Bool)

(assert (=> b!7624046 (=> res!3052700 e!4533168)))

(assert (=> b!7624046 (= res!3052700 call!700105)))

(declare-fun b!7624047 () Bool)

(assert (=> b!7624047 (= e!4533173 (= (head!15663 s!9605) (c!1404948 r!14126)))))

(declare-fun b!7624048 () Bool)

(declare-fun e!4533174 () Bool)

(assert (=> b!7624048 (= e!4533174 e!4533171)))

(declare-fun res!3052703 () Bool)

(assert (=> b!7624048 (=> (not res!3052703) (not e!4533171))))

(assert (=> b!7624048 (= res!3052703 (not lt!2657468))))

(declare-fun b!7624049 () Bool)

(declare-fun e!4533172 () Bool)

(assert (=> b!7624049 (= e!4533170 e!4533172)))

(declare-fun c!1404972 () Bool)

(assert (=> b!7624049 (= c!1404972 (is-EmptyLang!20330 r!14126))))

(declare-fun b!7624042 () Bool)

(declare-fun e!4533169 () Bool)

(declare-fun derivativeStep!5863 (Regex!20330 C!40986) Regex!20330)

(declare-fun tail!15203 (List!73183) List!73183)

(assert (=> b!7624042 (= e!4533169 (matchR!9837 (derivativeStep!5863 r!14126 (head!15663 s!9605)) (tail!15203 s!9605)))))

(declare-fun d!2323535 () Bool)

(assert (=> d!2323535 e!4533170))

(declare-fun c!1404970 () Bool)

(assert (=> d!2323535 (= c!1404970 (is-EmptyExpr!20330 r!14126))))

(assert (=> d!2323535 (= lt!2657468 e!4533169)))

(declare-fun c!1404971 () Bool)

(assert (=> d!2323535 (= c!1404971 (isEmpty!41685 s!9605))))

(assert (=> d!2323535 (validRegex!10750 r!14126)))

(assert (=> d!2323535 (= (matchR!9837 r!14126 s!9605) lt!2657468)))

(declare-fun b!7624050 () Bool)

(declare-fun res!3052697 () Bool)

(assert (=> b!7624050 (=> res!3052697 e!4533174)))

(assert (=> b!7624050 (= res!3052697 (not (is-ElementMatch!20330 r!14126)))))

(assert (=> b!7624050 (= e!4533172 e!4533174)))

(declare-fun b!7624051 () Bool)

(declare-fun res!3052701 () Bool)

(assert (=> b!7624051 (=> res!3052701 e!4533168)))

(assert (=> b!7624051 (= res!3052701 (not (isEmpty!41685 (tail!15203 s!9605))))))

(declare-fun b!7624052 () Bool)

(assert (=> b!7624052 (= e!4533172 (not lt!2657468))))

(declare-fun b!7624053 () Bool)

(declare-fun res!3052698 () Bool)

(assert (=> b!7624053 (=> (not res!3052698) (not e!4533173))))

(assert (=> b!7624053 (= res!3052698 (isEmpty!41685 (tail!15203 s!9605)))))

(declare-fun b!7624054 () Bool)

(declare-fun nullable!8889 (Regex!20330) Bool)

(assert (=> b!7624054 (= e!4533169 (nullable!8889 r!14126))))

(declare-fun b!7624055 () Bool)

(declare-fun res!3052704 () Bool)

(assert (=> b!7624055 (=> res!3052704 e!4533174)))

(assert (=> b!7624055 (= res!3052704 e!4533173)))

(declare-fun res!3052702 () Bool)

(assert (=> b!7624055 (=> (not res!3052702) (not e!4533173))))

(assert (=> b!7624055 (= res!3052702 lt!2657468)))

(assert (= (and d!2323535 c!1404971) b!7624054))

(assert (= (and d!2323535 (not c!1404971)) b!7624042))

(assert (= (and d!2323535 c!1404970) b!7624045))

(assert (= (and d!2323535 (not c!1404970)) b!7624049))

(assert (= (and b!7624049 c!1404972) b!7624052))

(assert (= (and b!7624049 (not c!1404972)) b!7624050))

(assert (= (and b!7624050 (not res!3052697)) b!7624055))

(assert (= (and b!7624055 res!3052702) b!7624044))

(assert (= (and b!7624044 res!3052699) b!7624053))

(assert (= (and b!7624053 res!3052698) b!7624047))

(assert (= (and b!7624055 (not res!3052704)) b!7624048))

(assert (= (and b!7624048 res!3052703) b!7624046))

(assert (= (and b!7624046 (not res!3052700)) b!7624051))

(assert (= (and b!7624051 (not res!3052701)) b!7624043))

(assert (= (or b!7624045 b!7624044 b!7624046) bm!700100))

(declare-fun m!8154514 () Bool)

(assert (=> b!7624054 m!8154514))

(declare-fun m!8154516 () Bool)

(assert (=> b!7624042 m!8154516))

(assert (=> b!7624042 m!8154516))

(declare-fun m!8154518 () Bool)

(assert (=> b!7624042 m!8154518))

(declare-fun m!8154521 () Bool)

(assert (=> b!7624042 m!8154521))

(assert (=> b!7624042 m!8154518))

(assert (=> b!7624042 m!8154521))

(declare-fun m!8154524 () Bool)

(assert (=> b!7624042 m!8154524))

(assert (=> d!2323535 m!8154438))

(assert (=> d!2323535 m!8154440))

(assert (=> b!7624043 m!8154516))

(assert (=> b!7624047 m!8154516))

(assert (=> b!7624053 m!8154521))

(assert (=> b!7624053 m!8154521))

(declare-fun m!8154528 () Bool)

(assert (=> b!7624053 m!8154528))

(assert (=> bm!700100 m!8154438))

(assert (=> b!7624051 m!8154521))

(assert (=> b!7624051 m!8154521))

(assert (=> b!7624051 m!8154528))

(assert (=> b!7623890 d!2323535))

(assert (=> b!7623885 d!2323533))

(declare-fun d!2323541 () Bool)

(declare-fun isEmpty!41687 (Option!17405) Bool)

(assert (=> d!2323541 (= (isDefined!14021 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605)) (not (isEmpty!41687 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605))))))

(declare-fun bs!1943588 () Bool)

(assert (= bs!1943588 d!2323541))

(assert (=> bs!1943588 m!8154444))

(declare-fun m!8154530 () Bool)

(assert (=> bs!1943588 m!8154530))

(assert (=> b!7623885 d!2323541))

(declare-fun b!7624077 () Bool)

(declare-fun e!4533190 () Option!17405)

(declare-fun e!4533192 () Option!17405)

(assert (=> b!7624077 (= e!4533190 e!4533192)))

(declare-fun c!1404978 () Bool)

(assert (=> b!7624077 (= c!1404978 (is-Nil!73059 s!9605))))

(declare-fun b!7624078 () Bool)

(assert (=> b!7624078 (= e!4533190 (Some!17404 (tuple2!69223 Nil!73059 s!9605)))))

(declare-fun b!7624079 () Bool)

(declare-fun res!3052722 () Bool)

(declare-fun e!4533191 () Bool)

(assert (=> b!7624079 (=> (not res!3052722) (not e!4533191))))

(declare-fun lt!2657479 () Option!17405)

(declare-fun get!25799 (Option!17405) tuple2!69222)

(assert (=> b!7624079 (= res!3052722 (matchR!9837 (reg!20659 r!14126) (_1!37914 (get!25799 lt!2657479))))))

(declare-fun d!2323543 () Bool)

(declare-fun e!4533189 () Bool)

(assert (=> d!2323543 e!4533189))

(declare-fun res!3052721 () Bool)

(assert (=> d!2323543 (=> res!3052721 e!4533189)))

(assert (=> d!2323543 (= res!3052721 e!4533191)))

(declare-fun res!3052718 () Bool)

(assert (=> d!2323543 (=> (not res!3052718) (not e!4533191))))

(assert (=> d!2323543 (= res!3052718 (isDefined!14021 lt!2657479))))

(assert (=> d!2323543 (= lt!2657479 e!4533190)))

(declare-fun c!1404977 () Bool)

(declare-fun e!4533188 () Bool)

(assert (=> d!2323543 (= c!1404977 e!4533188)))

(declare-fun res!3052719 () Bool)

(assert (=> d!2323543 (=> (not res!3052719) (not e!4533188))))

(assert (=> d!2323543 (= res!3052719 (matchR!9837 (reg!20659 r!14126) Nil!73059))))

(assert (=> d!2323543 (validRegex!10750 (reg!20659 r!14126))))

(assert (=> d!2323543 (= (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605) lt!2657479)))

(declare-fun b!7624080 () Bool)

(assert (=> b!7624080 (= e!4533192 None!17404)))

(declare-fun b!7624081 () Bool)

(declare-fun res!3052720 () Bool)

(assert (=> b!7624081 (=> (not res!3052720) (not e!4533191))))

(assert (=> b!7624081 (= res!3052720 (matchR!9837 r!14126 (_2!37914 (get!25799 lt!2657479))))))

(declare-fun b!7624082 () Bool)

(assert (=> b!7624082 (= e!4533188 (matchR!9837 r!14126 s!9605))))

(declare-fun b!7624083 () Bool)

(assert (=> b!7624083 (= e!4533191 (= (++!17636 (_1!37914 (get!25799 lt!2657479)) (_2!37914 (get!25799 lt!2657479))) s!9605))))

(declare-fun b!7624084 () Bool)

(declare-fun lt!2657478 () Unit!167560)

(declare-fun lt!2657480 () Unit!167560)

(assert (=> b!7624084 (= lt!2657478 lt!2657480)))

(assert (=> b!7624084 (= (++!17636 (++!17636 Nil!73059 (Cons!73059 (h!79507 s!9605) Nil!73059)) (t!387918 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3226 (List!73183 C!40986 List!73183 List!73183) Unit!167560)

(assert (=> b!7624084 (= lt!2657480 (lemmaMoveElementToOtherListKeepsConcatEq!3226 Nil!73059 (h!79507 s!9605) (t!387918 s!9605) s!9605))))

(assert (=> b!7624084 (= e!4533192 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 (++!17636 Nil!73059 (Cons!73059 (h!79507 s!9605) Nil!73059)) (t!387918 s!9605) s!9605))))

(declare-fun b!7624085 () Bool)

(assert (=> b!7624085 (= e!4533189 (not (isDefined!14021 lt!2657479)))))

(assert (= (and d!2323543 res!3052719) b!7624082))

(assert (= (and d!2323543 c!1404977) b!7624078))

(assert (= (and d!2323543 (not c!1404977)) b!7624077))

(assert (= (and b!7624077 c!1404978) b!7624080))

(assert (= (and b!7624077 (not c!1404978)) b!7624084))

(assert (= (and d!2323543 res!3052718) b!7624079))

(assert (= (and b!7624079 res!3052722) b!7624081))

(assert (= (and b!7624081 res!3052720) b!7624083))

(assert (= (and d!2323543 (not res!3052721)) b!7624085))

(declare-fun m!8154540 () Bool)

(assert (=> b!7624083 m!8154540))

(declare-fun m!8154542 () Bool)

(assert (=> b!7624083 m!8154542))

(declare-fun m!8154544 () Bool)

(assert (=> b!7624085 m!8154544))

(assert (=> b!7624081 m!8154540))

(declare-fun m!8154546 () Bool)

(assert (=> b!7624081 m!8154546))

(declare-fun m!8154548 () Bool)

(assert (=> b!7624084 m!8154548))

(assert (=> b!7624084 m!8154548))

(declare-fun m!8154550 () Bool)

(assert (=> b!7624084 m!8154550))

(declare-fun m!8154552 () Bool)

(assert (=> b!7624084 m!8154552))

(assert (=> b!7624084 m!8154548))

(declare-fun m!8154554 () Bool)

(assert (=> b!7624084 m!8154554))

(assert (=> b!7624082 m!8154450))

(assert (=> b!7624079 m!8154540))

(declare-fun m!8154556 () Bool)

(assert (=> b!7624079 m!8154556))

(assert (=> d!2323543 m!8154544))

(declare-fun m!8154558 () Bool)

(assert (=> d!2323543 m!8154558))

(assert (=> d!2323543 m!8154452))

(assert (=> b!7623885 d!2323543))

(declare-fun bs!1943590 () Bool)

(declare-fun d!2323549 () Bool)

(assert (= bs!1943590 (and d!2323549 b!7623885)))

(declare-fun lambda!468614 () Int)

(assert (=> bs!1943590 (= lambda!468614 lambda!468602)))

(declare-fun bs!1943591 () Bool)

(assert (= bs!1943591 (and d!2323549 b!7623877)))

(assert (=> bs!1943591 (not (= lambda!468614 lambda!468603))))

(assert (=> d!2323549 true))

(assert (=> d!2323549 true))

(assert (=> d!2323549 true))

(assert (=> d!2323549 (= (isDefined!14021 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605)) (Exists!4486 lambda!468614))))

(declare-fun lt!2657483 () Unit!167560)

(declare-fun choose!58836 (Regex!20330 Regex!20330 List!73183) Unit!167560)

(assert (=> d!2323549 (= lt!2657483 (choose!58836 (reg!20659 r!14126) r!14126 s!9605))))

(assert (=> d!2323549 (validRegex!10750 (reg!20659 r!14126))))

(assert (=> d!2323549 (= (lemmaFindConcatSeparationEquivalentToExists!3193 (reg!20659 r!14126) r!14126 s!9605) lt!2657483)))

(declare-fun bs!1943592 () Bool)

(assert (= bs!1943592 d!2323549))

(declare-fun m!8154560 () Bool)

(assert (=> bs!1943592 m!8154560))

(declare-fun m!8154562 () Bool)

(assert (=> bs!1943592 m!8154562))

(assert (=> bs!1943592 m!8154452))

(assert (=> bs!1943592 m!8154444))

(assert (=> bs!1943592 m!8154446))

(assert (=> bs!1943592 m!8154444))

(assert (=> b!7623885 d!2323549))

(declare-fun call!700114 () Bool)

(declare-fun bm!700109 () Bool)

(declare-fun c!1404990 () Bool)

(declare-fun c!1404989 () Bool)

(assert (=> bm!700109 (= call!700114 (validRegex!10750 (ite c!1404990 (reg!20659 (reg!20659 r!14126)) (ite c!1404989 (regTwo!41173 (reg!20659 r!14126)) (regTwo!41172 (reg!20659 r!14126))))))))

(declare-fun b!7624136 () Bool)

(declare-fun e!4533226 () Bool)

(declare-fun e!4533227 () Bool)

(assert (=> b!7624136 (= e!4533226 e!4533227)))

(assert (=> b!7624136 (= c!1404990 (is-Star!20330 (reg!20659 r!14126)))))

(declare-fun b!7624137 () Bool)

(declare-fun e!4533228 () Bool)

(assert (=> b!7624137 (= e!4533227 e!4533228)))

(declare-fun res!3052754 () Bool)

(assert (=> b!7624137 (= res!3052754 (not (nullable!8889 (reg!20659 (reg!20659 r!14126)))))))

(assert (=> b!7624137 (=> (not res!3052754) (not e!4533228))))

(declare-fun b!7624138 () Bool)

(declare-fun e!4533223 () Bool)

(declare-fun call!700116 () Bool)

(assert (=> b!7624138 (= e!4533223 call!700116)))

(declare-fun b!7624139 () Bool)

(declare-fun e!4533224 () Bool)

(assert (=> b!7624139 (= e!4533224 call!700116)))

(declare-fun b!7624140 () Bool)

(assert (=> b!7624140 (= e!4533228 call!700114)))

(declare-fun b!7624141 () Bool)

(declare-fun res!3052757 () Bool)

(assert (=> b!7624141 (=> (not res!3052757) (not e!4533224))))

(declare-fun call!700115 () Bool)

(assert (=> b!7624141 (= res!3052757 call!700115)))

(declare-fun e!4533229 () Bool)

(assert (=> b!7624141 (= e!4533229 e!4533224)))

(declare-fun b!7624142 () Bool)

(declare-fun res!3052753 () Bool)

(declare-fun e!4533225 () Bool)

(assert (=> b!7624142 (=> res!3052753 e!4533225)))

(assert (=> b!7624142 (= res!3052753 (not (is-Concat!29175 (reg!20659 r!14126))))))

(assert (=> b!7624142 (= e!4533229 e!4533225)))

(declare-fun bm!700111 () Bool)

(assert (=> bm!700111 (= call!700116 call!700114)))

(declare-fun b!7624143 () Bool)

(assert (=> b!7624143 (= e!4533225 e!4533223)))

(declare-fun res!3052756 () Bool)

(assert (=> b!7624143 (=> (not res!3052756) (not e!4533223))))

(assert (=> b!7624143 (= res!3052756 call!700115)))

(declare-fun b!7624144 () Bool)

(assert (=> b!7624144 (= e!4533227 e!4533229)))

(assert (=> b!7624144 (= c!1404989 (is-Union!20330 (reg!20659 r!14126)))))

(declare-fun d!2323551 () Bool)

(declare-fun res!3052755 () Bool)

(assert (=> d!2323551 (=> res!3052755 e!4533226)))

(assert (=> d!2323551 (= res!3052755 (is-ElementMatch!20330 (reg!20659 r!14126)))))

(assert (=> d!2323551 (= (validRegex!10750 (reg!20659 r!14126)) e!4533226)))

(declare-fun bm!700110 () Bool)

(assert (=> bm!700110 (= call!700115 (validRegex!10750 (ite c!1404989 (regOne!41173 (reg!20659 r!14126)) (regOne!41172 (reg!20659 r!14126)))))))

(assert (= (and d!2323551 (not res!3052755)) b!7624136))

(assert (= (and b!7624136 c!1404990) b!7624137))

(assert (= (and b!7624136 (not c!1404990)) b!7624144))

(assert (= (and b!7624137 res!3052754) b!7624140))

(assert (= (and b!7624144 c!1404989) b!7624141))

(assert (= (and b!7624144 (not c!1404989)) b!7624142))

(assert (= (and b!7624141 res!3052757) b!7624139))

(assert (= (and b!7624142 (not res!3052753)) b!7624143))

(assert (= (and b!7624143 res!3052756) b!7624138))

(assert (= (or b!7624141 b!7624143) bm!700110))

(assert (= (or b!7624139 b!7624138) bm!700111))

(assert (= (or b!7624140 bm!700111) bm!700109))

(declare-fun m!8154564 () Bool)

(assert (=> bm!700109 m!8154564))

(declare-fun m!8154566 () Bool)

(assert (=> b!7624137 m!8154566))

(declare-fun m!8154568 () Bool)

(assert (=> bm!700110 m!8154568))

(assert (=> b!7623884 d!2323551))

(declare-fun d!2323553 () Bool)

(declare-fun e!4533232 () Bool)

(assert (=> d!2323553 e!4533232))

(declare-fun res!3052760 () Bool)

(assert (=> d!2323553 (=> res!3052760 e!4533232)))

(assert (=> d!2323553 (= res!3052760 (isEmpty!41685 s!9605))))

(declare-fun lt!2657488 () Unit!167560)

(declare-fun choose!58837 (Regex!20330 List!73183) Unit!167560)

(assert (=> d!2323553 (= lt!2657488 (choose!58837 (reg!20659 r!14126) s!9605))))

(assert (=> d!2323553 (validRegex!10750 (Star!20330 (reg!20659 r!14126)))))

(assert (=> d!2323553 (= (lemmaStarAppConcat!11 (reg!20659 r!14126) s!9605) lt!2657488)))

(declare-fun b!7624147 () Bool)

(assert (=> b!7624147 (= e!4533232 (matchR!9837 (Concat!29175 (reg!20659 r!14126) (Star!20330 (reg!20659 r!14126))) s!9605))))

(assert (= (and d!2323553 (not res!3052760)) b!7624147))

(assert (=> d!2323553 m!8154438))

(declare-fun m!8154570 () Bool)

(assert (=> d!2323553 m!8154570))

(declare-fun m!8154572 () Bool)

(assert (=> d!2323553 m!8154572))

(declare-fun m!8154574 () Bool)

(assert (=> b!7624147 m!8154574))

(assert (=> b!7623879 d!2323553))

(declare-fun b!7624149 () Bool)

(declare-fun e!4533233 () Bool)

(assert (=> b!7624149 (= e!4533233 (not (= (head!15663 s!9605) (c!1404948 (Concat!29175 (reg!20659 r!14126) r!14126)))))))

(declare-fun b!7624150 () Bool)

(declare-fun res!3052763 () Bool)

(declare-fun e!4533238 () Bool)

(assert (=> b!7624150 (=> (not res!3052763) (not e!4533238))))

(declare-fun call!700117 () Bool)

(assert (=> b!7624150 (= res!3052763 (not call!700117))))

(declare-fun bm!700112 () Bool)

(assert (=> bm!700112 (= call!700117 (isEmpty!41685 s!9605))))

(declare-fun b!7624151 () Bool)

(declare-fun e!4533235 () Bool)

(declare-fun lt!2657489 () Bool)

(assert (=> b!7624151 (= e!4533235 (= lt!2657489 call!700117))))

(declare-fun b!7624152 () Bool)

(declare-fun e!4533236 () Bool)

(assert (=> b!7624152 (= e!4533236 e!4533233)))

(declare-fun res!3052764 () Bool)

(assert (=> b!7624152 (=> res!3052764 e!4533233)))

(assert (=> b!7624152 (= res!3052764 call!700117)))

(declare-fun b!7624153 () Bool)

(assert (=> b!7624153 (= e!4533238 (= (head!15663 s!9605) (c!1404948 (Concat!29175 (reg!20659 r!14126) r!14126))))))

(declare-fun b!7624154 () Bool)

(declare-fun e!4533239 () Bool)

(assert (=> b!7624154 (= e!4533239 e!4533236)))

(declare-fun res!3052767 () Bool)

(assert (=> b!7624154 (=> (not res!3052767) (not e!4533236))))

(assert (=> b!7624154 (= res!3052767 (not lt!2657489))))

(declare-fun b!7624155 () Bool)

(declare-fun e!4533237 () Bool)

(assert (=> b!7624155 (= e!4533235 e!4533237)))

(declare-fun c!1404993 () Bool)

(assert (=> b!7624155 (= c!1404993 (is-EmptyLang!20330 (Concat!29175 (reg!20659 r!14126) r!14126)))))

(declare-fun b!7624148 () Bool)

(declare-fun e!4533234 () Bool)

(assert (=> b!7624148 (= e!4533234 (matchR!9837 (derivativeStep!5863 (Concat!29175 (reg!20659 r!14126) r!14126) (head!15663 s!9605)) (tail!15203 s!9605)))))

(declare-fun d!2323555 () Bool)

(assert (=> d!2323555 e!4533235))

(declare-fun c!1404991 () Bool)

(assert (=> d!2323555 (= c!1404991 (is-EmptyExpr!20330 (Concat!29175 (reg!20659 r!14126) r!14126)))))

(assert (=> d!2323555 (= lt!2657489 e!4533234)))

(declare-fun c!1404992 () Bool)

(assert (=> d!2323555 (= c!1404992 (isEmpty!41685 s!9605))))

(assert (=> d!2323555 (validRegex!10750 (Concat!29175 (reg!20659 r!14126) r!14126))))

(assert (=> d!2323555 (= (matchR!9837 (Concat!29175 (reg!20659 r!14126) r!14126) s!9605) lt!2657489)))

(declare-fun b!7624156 () Bool)

(declare-fun res!3052761 () Bool)

(assert (=> b!7624156 (=> res!3052761 e!4533239)))

(assert (=> b!7624156 (= res!3052761 (not (is-ElementMatch!20330 (Concat!29175 (reg!20659 r!14126) r!14126))))))

(assert (=> b!7624156 (= e!4533237 e!4533239)))

(declare-fun b!7624157 () Bool)

(declare-fun res!3052765 () Bool)

(assert (=> b!7624157 (=> res!3052765 e!4533233)))

(assert (=> b!7624157 (= res!3052765 (not (isEmpty!41685 (tail!15203 s!9605))))))

(declare-fun b!7624158 () Bool)

(assert (=> b!7624158 (= e!4533237 (not lt!2657489))))

(declare-fun b!7624159 () Bool)

(declare-fun res!3052762 () Bool)

(assert (=> b!7624159 (=> (not res!3052762) (not e!4533238))))

(assert (=> b!7624159 (= res!3052762 (isEmpty!41685 (tail!15203 s!9605)))))

(declare-fun b!7624160 () Bool)

(assert (=> b!7624160 (= e!4533234 (nullable!8889 (Concat!29175 (reg!20659 r!14126) r!14126)))))

(declare-fun b!7624161 () Bool)

(declare-fun res!3052768 () Bool)

(assert (=> b!7624161 (=> res!3052768 e!4533239)))

(assert (=> b!7624161 (= res!3052768 e!4533238)))

(declare-fun res!3052766 () Bool)

(assert (=> b!7624161 (=> (not res!3052766) (not e!4533238))))

(assert (=> b!7624161 (= res!3052766 lt!2657489)))

(assert (= (and d!2323555 c!1404992) b!7624160))

(assert (= (and d!2323555 (not c!1404992)) b!7624148))

(assert (= (and d!2323555 c!1404991) b!7624151))

(assert (= (and d!2323555 (not c!1404991)) b!7624155))

(assert (= (and b!7624155 c!1404993) b!7624158))

(assert (= (and b!7624155 (not c!1404993)) b!7624156))

(assert (= (and b!7624156 (not res!3052761)) b!7624161))

(assert (= (and b!7624161 res!3052766) b!7624150))

(assert (= (and b!7624150 res!3052763) b!7624159))

(assert (= (and b!7624159 res!3052762) b!7624153))

(assert (= (and b!7624161 (not res!3052768)) b!7624154))

(assert (= (and b!7624154 res!3052767) b!7624152))

(assert (= (and b!7624152 (not res!3052764)) b!7624157))

(assert (= (and b!7624157 (not res!3052765)) b!7624149))

(assert (= (or b!7624151 b!7624150 b!7624152) bm!700112))

(declare-fun m!8154576 () Bool)

(assert (=> b!7624160 m!8154576))

(assert (=> b!7624148 m!8154516))

(assert (=> b!7624148 m!8154516))

(declare-fun m!8154578 () Bool)

(assert (=> b!7624148 m!8154578))

(assert (=> b!7624148 m!8154521))

(assert (=> b!7624148 m!8154578))

(assert (=> b!7624148 m!8154521))

(declare-fun m!8154580 () Bool)

(assert (=> b!7624148 m!8154580))

(assert (=> d!2323555 m!8154438))

(declare-fun m!8154582 () Bool)

(assert (=> d!2323555 m!8154582))

(assert (=> b!7624149 m!8154516))

(assert (=> b!7624153 m!8154516))

(assert (=> b!7624159 m!8154521))

(assert (=> b!7624159 m!8154521))

(assert (=> b!7624159 m!8154528))

(assert (=> bm!700112 m!8154438))

(assert (=> b!7624157 m!8154521))

(assert (=> b!7624157 m!8154521))

(assert (=> b!7624157 m!8154528))

(assert (=> b!7623879 d!2323555))

(declare-fun d!2323557 () Bool)

(assert (=> d!2323557 (isDefined!14021 (findConcatSeparation!3435 (reg!20659 r!14126) r!14126 Nil!73059 s!9605 s!9605))))

(declare-fun lt!2657493 () Unit!167560)

(declare-fun choose!58838 (Regex!20330 Regex!20330 List!73183) Unit!167560)

(assert (=> d!2323557 (= lt!2657493 (choose!58838 (reg!20659 r!14126) r!14126 s!9605))))

(assert (=> d!2323557 (validRegex!10750 (reg!20659 r!14126))))

(assert (=> d!2323557 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!243 (reg!20659 r!14126) r!14126 s!9605) lt!2657493)))

(declare-fun bs!1943593 () Bool)

(assert (= bs!1943593 d!2323557))

(assert (=> bs!1943593 m!8154444))

(assert (=> bs!1943593 m!8154444))

(assert (=> bs!1943593 m!8154446))

(declare-fun m!8154584 () Bool)

(assert (=> bs!1943593 m!8154584))

(assert (=> bs!1943593 m!8154452))

(assert (=> b!7623879 d!2323557))

(declare-fun d!2323559 () Bool)

(assert (=> d!2323559 (= (isEmpty!41685 s!9605) (is-Nil!73059 s!9605))))

(assert (=> b!7623880 d!2323559))

(declare-fun c!1404998 () Bool)

(declare-fun c!1404997 () Bool)

(declare-fun call!700119 () Bool)

(declare-fun bm!700114 () Bool)

(assert (=> bm!700114 (= call!700119 (validRegex!10750 (ite c!1404998 (reg!20659 r!14126) (ite c!1404997 (regTwo!41173 r!14126) (regTwo!41172 r!14126)))))))

(declare-fun b!7624176 () Bool)

(declare-fun e!4533250 () Bool)

(declare-fun e!4533251 () Bool)

(assert (=> b!7624176 (= e!4533250 e!4533251)))

(assert (=> b!7624176 (= c!1404998 (is-Star!20330 r!14126))))

(declare-fun b!7624177 () Bool)

(declare-fun e!4533252 () Bool)

(assert (=> b!7624177 (= e!4533251 e!4533252)))

(declare-fun res!3052778 () Bool)

(assert (=> b!7624177 (= res!3052778 (not (nullable!8889 (reg!20659 r!14126))))))

(assert (=> b!7624177 (=> (not res!3052778) (not e!4533252))))

(declare-fun b!7624178 () Bool)

(declare-fun e!4533247 () Bool)

(declare-fun call!700121 () Bool)

(assert (=> b!7624178 (= e!4533247 call!700121)))

(declare-fun b!7624179 () Bool)

(declare-fun e!4533248 () Bool)

(assert (=> b!7624179 (= e!4533248 call!700121)))

(declare-fun b!7624180 () Bool)

(assert (=> b!7624180 (= e!4533252 call!700119)))

(declare-fun b!7624181 () Bool)

(declare-fun res!3052781 () Bool)

(assert (=> b!7624181 (=> (not res!3052781) (not e!4533248))))

(declare-fun call!700120 () Bool)

(assert (=> b!7624181 (= res!3052781 call!700120)))

(declare-fun e!4533253 () Bool)

(assert (=> b!7624181 (= e!4533253 e!4533248)))

(declare-fun b!7624182 () Bool)

(declare-fun res!3052777 () Bool)

(declare-fun e!4533249 () Bool)

(assert (=> b!7624182 (=> res!3052777 e!4533249)))

(assert (=> b!7624182 (= res!3052777 (not (is-Concat!29175 r!14126)))))

(assert (=> b!7624182 (= e!4533253 e!4533249)))

(declare-fun bm!700116 () Bool)

(assert (=> bm!700116 (= call!700121 call!700119)))

(declare-fun b!7624183 () Bool)

(assert (=> b!7624183 (= e!4533249 e!4533247)))

(declare-fun res!3052780 () Bool)

(assert (=> b!7624183 (=> (not res!3052780) (not e!4533247))))

(assert (=> b!7624183 (= res!3052780 call!700120)))

(declare-fun b!7624184 () Bool)

(assert (=> b!7624184 (= e!4533251 e!4533253)))

(assert (=> b!7624184 (= c!1404997 (is-Union!20330 r!14126))))

(declare-fun d!2323561 () Bool)

(declare-fun res!3052779 () Bool)

(assert (=> d!2323561 (=> res!3052779 e!4533250)))

(assert (=> d!2323561 (= res!3052779 (is-ElementMatch!20330 r!14126))))

(assert (=> d!2323561 (= (validRegex!10750 r!14126) e!4533250)))

(declare-fun bm!700115 () Bool)

(assert (=> bm!700115 (= call!700120 (validRegex!10750 (ite c!1404997 (regOne!41173 r!14126) (regOne!41172 r!14126))))))

(assert (= (and d!2323561 (not res!3052779)) b!7624176))

(assert (= (and b!7624176 c!1404998) b!7624177))

(assert (= (and b!7624176 (not c!1404998)) b!7624184))

(assert (= (and b!7624177 res!3052778) b!7624180))

(assert (= (and b!7624184 c!1404997) b!7624181))

(assert (= (and b!7624184 (not c!1404997)) b!7624182))

(assert (= (and b!7624181 res!3052781) b!7624179))

(assert (= (and b!7624182 (not res!3052777)) b!7624183))

(assert (= (and b!7624183 res!3052780) b!7624178))

(assert (= (or b!7624181 b!7624183) bm!700115))

(assert (= (or b!7624179 b!7624178) bm!700116))

(assert (= (or b!7624180 bm!700116) bm!700114))

(declare-fun m!8154598 () Bool)

(assert (=> bm!700114 m!8154598))

(declare-fun m!8154600 () Bool)

(assert (=> b!7624177 m!8154600))

(declare-fun m!8154602 () Bool)

(assert (=> bm!700115 m!8154602))

(assert (=> start!734282 d!2323561))

(declare-fun d!2323563 () Bool)

(assert (=> d!2323563 (= (isEmpty!41685 (_1!37914 cut!11)) (is-Nil!73059 (_1!37914 cut!11)))))

(assert (=> b!7623882 d!2323563))

(declare-fun d!2323565 () Bool)

(assert (=> d!2323565 (= (Exists!4486 lambda!468603) (choose!58835 lambda!468603))))

(declare-fun bs!1943594 () Bool)

(assert (= bs!1943594 d!2323565))

(declare-fun m!8154606 () Bool)

(assert (=> bs!1943594 m!8154606))

(assert (=> b!7623877 d!2323565))

(declare-fun b!7624189 () Bool)

(declare-fun e!4533256 () Bool)

(declare-fun tp!2225926 () Bool)

(assert (=> b!7624189 (= e!4533256 (and tp_is_empty!51015 tp!2225926))))

(assert (=> b!7623888 (= tp!2225894 e!4533256)))

(assert (= (and b!7623888 (is-Cons!73059 (t!387918 (_1!37914 cut!11)))) b!7624189))

(declare-fun b!7624202 () Bool)

(declare-fun e!4533259 () Bool)

(declare-fun tp!2225939 () Bool)

(assert (=> b!7624202 (= e!4533259 tp!2225939)))

(declare-fun b!7624201 () Bool)

(declare-fun tp!2225937 () Bool)

(declare-fun tp!2225938 () Bool)

(assert (=> b!7624201 (= e!4533259 (and tp!2225937 tp!2225938))))

(declare-fun b!7624203 () Bool)

(declare-fun tp!2225940 () Bool)

(declare-fun tp!2225941 () Bool)

(assert (=> b!7624203 (= e!4533259 (and tp!2225940 tp!2225941))))

(declare-fun b!7624200 () Bool)

(assert (=> b!7624200 (= e!4533259 tp_is_empty!51015)))

(assert (=> b!7623881 (= tp!2225892 e!4533259)))

(assert (= (and b!7623881 (is-ElementMatch!20330 (reg!20659 r!14126))) b!7624200))

(assert (= (and b!7623881 (is-Concat!29175 (reg!20659 r!14126))) b!7624201))

(assert (= (and b!7623881 (is-Star!20330 (reg!20659 r!14126))) b!7624202))

(assert (= (and b!7623881 (is-Union!20330 (reg!20659 r!14126))) b!7624203))

(declare-fun b!7624206 () Bool)

(declare-fun e!4533260 () Bool)

(declare-fun tp!2225944 () Bool)

(assert (=> b!7624206 (= e!4533260 tp!2225944)))

(declare-fun b!7624205 () Bool)

(declare-fun tp!2225942 () Bool)

(declare-fun tp!2225943 () Bool)

(assert (=> b!7624205 (= e!4533260 (and tp!2225942 tp!2225943))))

(declare-fun b!7624207 () Bool)

(declare-fun tp!2225945 () Bool)

(declare-fun tp!2225946 () Bool)

(assert (=> b!7624207 (= e!4533260 (and tp!2225945 tp!2225946))))

(declare-fun b!7624204 () Bool)

(assert (=> b!7624204 (= e!4533260 tp_is_empty!51015)))

(assert (=> b!7623891 (= tp!2225893 e!4533260)))

(assert (= (and b!7623891 (is-ElementMatch!20330 (regOne!41172 r!14126))) b!7624204))

(assert (= (and b!7623891 (is-Concat!29175 (regOne!41172 r!14126))) b!7624205))

(assert (= (and b!7623891 (is-Star!20330 (regOne!41172 r!14126))) b!7624206))

(assert (= (and b!7623891 (is-Union!20330 (regOne!41172 r!14126))) b!7624207))

(declare-fun b!7624210 () Bool)

(declare-fun e!4533261 () Bool)

(declare-fun tp!2225949 () Bool)

(assert (=> b!7624210 (= e!4533261 tp!2225949)))

(declare-fun b!7624209 () Bool)

(declare-fun tp!2225947 () Bool)

(declare-fun tp!2225948 () Bool)

(assert (=> b!7624209 (= e!4533261 (and tp!2225947 tp!2225948))))

(declare-fun b!7624211 () Bool)

(declare-fun tp!2225950 () Bool)

(declare-fun tp!2225951 () Bool)

(assert (=> b!7624211 (= e!4533261 (and tp!2225950 tp!2225951))))

(declare-fun b!7624208 () Bool)

(assert (=> b!7624208 (= e!4533261 tp_is_empty!51015)))

(assert (=> b!7623891 (= tp!2225896 e!4533261)))

(assert (= (and b!7623891 (is-ElementMatch!20330 (regTwo!41172 r!14126))) b!7624208))

(assert (= (and b!7623891 (is-Concat!29175 (regTwo!41172 r!14126))) b!7624209))

(assert (= (and b!7623891 (is-Star!20330 (regTwo!41172 r!14126))) b!7624210))

(assert (= (and b!7623891 (is-Union!20330 (regTwo!41172 r!14126))) b!7624211))

(declare-fun b!7624212 () Bool)

(declare-fun e!4533262 () Bool)

(declare-fun tp!2225952 () Bool)

(assert (=> b!7624212 (= e!4533262 (and tp_is_empty!51015 tp!2225952))))

(assert (=> b!7623876 (= tp!2225898 e!4533262)))

(assert (= (and b!7623876 (is-Cons!73059 (t!387918 (_2!37914 cut!11)))) b!7624212))

(declare-fun b!7624213 () Bool)

(declare-fun e!4533263 () Bool)

(declare-fun tp!2225953 () Bool)

(assert (=> b!7624213 (= e!4533263 (and tp_is_empty!51015 tp!2225953))))

(assert (=> b!7623892 (= tp!2225899 e!4533263)))

(assert (= (and b!7623892 (is-Cons!73059 (t!387918 s!9605))) b!7624213))

(declare-fun b!7624216 () Bool)

(declare-fun e!4533264 () Bool)

(declare-fun tp!2225956 () Bool)

(assert (=> b!7624216 (= e!4533264 tp!2225956)))

(declare-fun b!7624215 () Bool)

(declare-fun tp!2225954 () Bool)

(declare-fun tp!2225955 () Bool)

(assert (=> b!7624215 (= e!4533264 (and tp!2225954 tp!2225955))))

(declare-fun b!7624217 () Bool)

(declare-fun tp!2225957 () Bool)

(declare-fun tp!2225958 () Bool)

(assert (=> b!7624217 (= e!4533264 (and tp!2225957 tp!2225958))))

(declare-fun b!7624214 () Bool)

(assert (=> b!7624214 (= e!4533264 tp_is_empty!51015)))

(assert (=> b!7623887 (= tp!2225897 e!4533264)))

(assert (= (and b!7623887 (is-ElementMatch!20330 (regOne!41173 r!14126))) b!7624214))

(assert (= (and b!7623887 (is-Concat!29175 (regOne!41173 r!14126))) b!7624215))

(assert (= (and b!7623887 (is-Star!20330 (regOne!41173 r!14126))) b!7624216))

(assert (= (and b!7623887 (is-Union!20330 (regOne!41173 r!14126))) b!7624217))

(declare-fun b!7624220 () Bool)

(declare-fun e!4533265 () Bool)

(declare-fun tp!2225961 () Bool)

(assert (=> b!7624220 (= e!4533265 tp!2225961)))

(declare-fun b!7624219 () Bool)

(declare-fun tp!2225959 () Bool)

(declare-fun tp!2225960 () Bool)

(assert (=> b!7624219 (= e!4533265 (and tp!2225959 tp!2225960))))

(declare-fun b!7624221 () Bool)

(declare-fun tp!2225962 () Bool)

(declare-fun tp!2225963 () Bool)

(assert (=> b!7624221 (= e!4533265 (and tp!2225962 tp!2225963))))

(declare-fun b!7624218 () Bool)

(assert (=> b!7624218 (= e!4533265 tp_is_empty!51015)))

(assert (=> b!7623887 (= tp!2225895 e!4533265)))

(assert (= (and b!7623887 (is-ElementMatch!20330 (regTwo!41173 r!14126))) b!7624218))

(assert (= (and b!7623887 (is-Concat!29175 (regTwo!41173 r!14126))) b!7624219))

(assert (= (and b!7623887 (is-Star!20330 (regTwo!41173 r!14126))) b!7624220))

(assert (= (and b!7623887 (is-Union!20330 (regTwo!41173 r!14126))) b!7624221))

(push 1)

(assert (not b!7624149))

(assert (not b!7624047))

(assert (not d!2323543))

(assert tp_is_empty!51015)

(assert (not b!7624053))

(assert (not d!2323549))

(assert (not bm!700115))

(assert (not b!7624209))

(assert (not b!7624189))

(assert (not b!7624084))

(assert (not b!7624215))

(assert (not d!2323565))

(assert (not b!7624147))

(assert (not b!7624043))

(assert (not b!7624206))

(assert (not b!7624083))

(assert (not d!2323557))

(assert (not b!7624159))

(assert (not b!7624221))

(assert (not b!7624148))

(assert (not b!7624219))

(assert (not b!7624085))

(assert (not b!7624153))

(assert (not d!2323531))

(assert (not b!7624079))

(assert (not d!2323555))

(assert (not b!7624217))

(assert (not b!7624082))

(assert (not bm!700109))

(assert (not bm!700100))

(assert (not b!7624177))

(assert (not b!7624205))

(assert (not b!7624202))

(assert (not b!7624157))

(assert (not b!7624203))

(assert (not bm!700114))

(assert (not d!2323553))

(assert (not b!7624051))

(assert (not b!7624216))

(assert (not b!7624137))

(assert (not d!2323533))

(assert (not b!7624212))

(assert (not b!7624211))

(assert (not b!7624220))

(assert (not b!7624160))

(assert (not b!7624042))

(assert (not b!7623993))

(assert (not b!7624207))

(assert (not d!2323541))

(assert (not b!7624081))

(assert (not d!2323535))

(assert (not bm!700110))

(assert (not b!7623994))

(assert (not b!7624213))

(assert (not b!7624201))

(assert (not b!7624210))

(assert (not bm!700112))

(assert (not b!7624054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

