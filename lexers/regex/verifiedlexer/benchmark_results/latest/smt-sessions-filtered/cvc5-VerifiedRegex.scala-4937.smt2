; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251682 () Bool)

(assert start!251682)

(declare-fun b!2595184 () Bool)

(assert (=> b!2595184 true))

(declare-fun b!2595189 () Bool)

(declare-fun m!2931313 () Bool)

(assert (=> b!2595189 m!2931313))

(declare-fun bs!472719 () Bool)

(assert (= bs!472719 (and b!2595189 b!2595184)))

(declare-datatypes ((B!2167 0))(
  ( (B!2168 (val!9551 Int)) )
))
(declare-datatypes ((List!29984 0))(
  ( (Nil!29884) (Cons!29884 (h!35304 B!2167) (t!212997 List!29984)) )
))
(declare-fun l1!1546 () List!29984)

(declare-fun lambda!96776 () Int)

(declare-fun lambda!96775 () Int)

(declare-fun tail!4150 (List!29984) List!29984)

(assert (=> bs!472719 (= (= (tail!4150 l1!1546) l1!1546) (= lambda!96776 lambda!96775))))

(assert (=> b!2595189 true))

(declare-fun lambda!96777 () Int)

(assert (=> bs!472719 (= (= (t!212997 l1!1546) l1!1546) (= lambda!96777 lambda!96775))))

(assert (=> b!2595189 (= (= (t!212997 l1!1546) (tail!4150 l1!1546)) (= lambda!96777 lambda!96776))))

(assert (=> b!2595189 true))

(declare-fun bs!472720 () Bool)

(declare-fun b!2595186 () Bool)

(assert (= bs!472720 (and b!2595186 b!2595184)))

(declare-fun lambda!96778 () Int)

(assert (=> bs!472720 (not (= lambda!96778 lambda!96775))))

(declare-fun bs!472721 () Bool)

(assert (= bs!472721 (and b!2595186 b!2595189)))

(assert (=> bs!472721 (not (= lambda!96778 lambda!96776))))

(assert (=> bs!472721 (not (= lambda!96778 lambda!96777))))

(assert (=> b!2595186 true))

(declare-fun res!1092058 () Bool)

(declare-fun e!1637588 () Bool)

(assert (=> b!2595184 (=> (not res!1092058) (not e!1637588))))

(declare-fun l2!1515 () List!29984)

(declare-fun forall!6121 (List!29984 Int) Bool)

(assert (=> b!2595184 (= res!1092058 (forall!6121 l2!1515 lambda!96775))))

(declare-fun b!2595185 () Bool)

(declare-fun e!1637582 () Bool)

(declare-fun e!1637587 () Bool)

(assert (=> b!2595185 (= e!1637582 e!1637587)))

(declare-fun res!1092060 () Bool)

(assert (=> b!2595185 (=> res!1092060 e!1637587)))

(declare-fun lt!913830 () B!2167)

(declare-fun contains!5432 (List!29984 B!2167) Bool)

(assert (=> b!2595185 (= res!1092060 (not (contains!5432 l1!1546 lt!913830)))))

(declare-fun getWitness!555 (List!29984 Int) B!2167)

(assert (=> b!2595185 (= lt!913830 (getWitness!555 (t!212997 l1!1546) lambda!96778))))

(declare-fun e!1637585 () Bool)

(assert (=> b!2595186 (= e!1637585 e!1637582)))

(declare-fun res!1092059 () Bool)

(assert (=> b!2595186 (=> res!1092059 e!1637582)))

(declare-fun exists!933 (List!29984 Int) Bool)

(assert (=> b!2595186 (= res!1092059 (not (exists!933 (t!212997 l1!1546) lambda!96778)))))

(assert (=> b!2595186 (exists!933 (t!212997 l1!1546) lambda!96778)))

(declare-datatypes ((Unit!43924 0))(
  ( (Unit!43925) )
))
(declare-fun lt!913822 () Unit!43924)

(declare-fun lt!913829 () List!29984)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!49 (List!29984 List!29984) Unit!43924)

(assert (=> b!2595186 (= lt!913822 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!49 (t!212997 l1!1546) lt!913829))))

(declare-fun b!2595187 () Bool)

(declare-fun res!1092067 () Bool)

(assert (=> b!2595187 (=> (not res!1092067) (not e!1637588))))

(assert (=> b!2595187 (= res!1092067 (contains!5432 l2!1515 (h!35304 l1!1546)))))

(declare-fun res!1092064 () Bool)

(declare-fun e!1637589 () Bool)

(assert (=> start!251682 (=> (not res!1092064) (not e!1637589))))

(declare-fun noDuplicate!432 (List!29984) Bool)

(assert (=> start!251682 (= res!1092064 (noDuplicate!432 l1!1546))))

(assert (=> start!251682 e!1637589))

(declare-fun e!1637583 () Bool)

(assert (=> start!251682 e!1637583))

(declare-fun e!1637586 () Bool)

(assert (=> start!251682 e!1637586))

(declare-fun b!2595188 () Bool)

(assert (=> b!2595188 (= e!1637589 e!1637588)))

(declare-fun res!1092061 () Bool)

(assert (=> b!2595188 (=> (not res!1092061) (not e!1637588))))

(declare-fun lt!913823 () Int)

(declare-fun lt!913826 () Int)

(assert (=> b!2595188 (= res!1092061 (> lt!913823 lt!913826))))

(declare-fun size!23189 (List!29984) Int)

(assert (=> b!2595188 (= lt!913826 (size!23189 l2!1515))))

(assert (=> b!2595188 (= lt!913823 (size!23189 l1!1546))))

(declare-fun e!1637584 () Bool)

(assert (=> b!2595189 (= e!1637584 e!1637585)))

(declare-fun res!1092065 () Bool)

(assert (=> b!2595189 (=> res!1092065 e!1637585)))

(assert (=> b!2595189 (= res!1092065 (not (forall!6121 lt!913829 lambda!96777)))))

(assert (=> b!2595189 (forall!6121 lt!913829 lambda!96776)))

(declare-fun lt!913828 () Unit!43924)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!15 (List!29984 List!29984 B!2167) Unit!43924)

(assert (=> b!2595189 (= lt!913828 (lemmaForallContainsThenForTailIfContainsNotHead!15 lt!913829 l1!1546 (h!35304 l1!1546)))))

(declare-fun b!2595190 () Bool)

(assert (=> b!2595190 (= e!1637588 (not e!1637584))))

(declare-fun res!1092063 () Bool)

(assert (=> b!2595190 (=> res!1092063 e!1637584)))

(assert (=> b!2595190 (= res!1092063 (not (forall!6121 lt!913829 lambda!96775)))))

(assert (=> b!2595190 (= (size!23189 lt!913829) (- lt!913826 1))))

(declare-fun lt!913824 () Unit!43924)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!23 (List!29984 B!2167) Unit!43924)

(assert (=> b!2595190 (= lt!913824 (lemmaRemoveElmtNoDuplicateRemoveOne!23 l2!1515 (h!35304 l1!1546)))))

(assert (=> b!2595190 (forall!6121 lt!913829 lambda!96775)))

(declare-fun lt!913825 () Unit!43924)

(declare-fun lemmaRemoveElmtMaintainsForall!25 (List!29984 B!2167 Int) Unit!43924)

(assert (=> b!2595190 (= lt!913825 (lemmaRemoveElmtMaintainsForall!25 l2!1515 (h!35304 l1!1546) lambda!96775))))

(assert (=> b!2595190 (noDuplicate!432 lt!913829)))

(declare-fun -!161 (List!29984 B!2167) List!29984)

(assert (=> b!2595190 (= lt!913829 (-!161 l2!1515 (h!35304 l1!1546)))))

(declare-fun lt!913827 () Unit!43924)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!27 (List!29984 B!2167) Unit!43924)

(assert (=> b!2595190 (= lt!913827 (lemmaRemoveElmtMaintainsNoDuplicate!27 l2!1515 (h!35304 l1!1546)))))

(declare-fun b!2595191 () Bool)

(declare-fun tp_is_empty!13447 () Bool)

(declare-fun tp!823093 () Bool)

(assert (=> b!2595191 (= e!1637586 (and tp_is_empty!13447 tp!823093))))

(declare-fun b!2595192 () Bool)

(declare-fun tp!823094 () Bool)

(assert (=> b!2595192 (= e!1637583 (and tp_is_empty!13447 tp!823094))))

(declare-fun b!2595193 () Bool)

(declare-fun res!1092066 () Bool)

(assert (=> b!2595193 (=> (not res!1092066) (not e!1637589))))

(assert (=> b!2595193 (= res!1092066 (noDuplicate!432 l2!1515))))

(declare-fun b!2595194 () Bool)

(assert (=> b!2595194 (= e!1637587 (not (= lt!913830 (h!35304 l1!1546))))))

(declare-fun b!2595195 () Bool)

(declare-fun res!1092062 () Bool)

(assert (=> b!2595195 (=> (not res!1092062) (not e!1637588))))

(assert (=> b!2595195 (= res!1092062 (is-Cons!29884 l1!1546))))

(assert (= (and start!251682 res!1092064) b!2595193))

(assert (= (and b!2595193 res!1092066) b!2595188))

(assert (= (and b!2595188 res!1092061) b!2595184))

(assert (= (and b!2595184 res!1092058) b!2595195))

(assert (= (and b!2595195 res!1092062) b!2595187))

(assert (= (and b!2595187 res!1092067) b!2595190))

(assert (= (and b!2595190 (not res!1092063)) b!2595189))

(assert (= (and b!2595189 (not res!1092065)) b!2595186))

(assert (= (and b!2595186 (not res!1092059)) b!2595185))

(assert (= (and b!2595185 (not res!1092060)) b!2595194))

(assert (= (and start!251682 (is-Cons!29884 l1!1546)) b!2595192))

(assert (= (and start!251682 (is-Cons!29884 l2!1515)) b!2595191))

(declare-fun m!2931315 () Bool)

(assert (=> b!2595187 m!2931315))

(declare-fun m!2931317 () Bool)

(assert (=> b!2595185 m!2931317))

(declare-fun m!2931319 () Bool)

(assert (=> b!2595185 m!2931319))

(declare-fun m!2931321 () Bool)

(assert (=> b!2595188 m!2931321))

(declare-fun m!2931323 () Bool)

(assert (=> b!2595188 m!2931323))

(declare-fun m!2931325 () Bool)

(assert (=> b!2595190 m!2931325))

(declare-fun m!2931327 () Bool)

(assert (=> b!2595190 m!2931327))

(declare-fun m!2931329 () Bool)

(assert (=> b!2595190 m!2931329))

(declare-fun m!2931331 () Bool)

(assert (=> b!2595190 m!2931331))

(declare-fun m!2931333 () Bool)

(assert (=> b!2595190 m!2931333))

(assert (=> b!2595190 m!2931325))

(declare-fun m!2931335 () Bool)

(assert (=> b!2595190 m!2931335))

(declare-fun m!2931337 () Bool)

(assert (=> b!2595190 m!2931337))

(declare-fun m!2931339 () Bool)

(assert (=> b!2595193 m!2931339))

(declare-fun m!2931341 () Bool)

(assert (=> b!2595189 m!2931341))

(declare-fun m!2931343 () Bool)

(assert (=> b!2595189 m!2931343))

(declare-fun m!2931345 () Bool)

(assert (=> b!2595189 m!2931345))

(declare-fun m!2931347 () Bool)

(assert (=> b!2595184 m!2931347))

(declare-fun m!2931349 () Bool)

(assert (=> b!2595186 m!2931349))

(assert (=> b!2595186 m!2931349))

(declare-fun m!2931351 () Bool)

(assert (=> b!2595186 m!2931351))

(declare-fun m!2931353 () Bool)

(assert (=> start!251682 m!2931353))

(push 1)

(assert tp_is_empty!13447)

(assert (not b!2595191))

(assert (not start!251682))

(assert (not b!2595185))

(assert (not b!2595190))

(assert (not b!2595189))

(assert (not b!2595187))

(assert (not b!2595192))

(assert (not b!2595188))

(assert (not b!2595186))

(assert (not b!2595184))

(assert (not b!2595193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735100 () Bool)

(declare-fun lt!913862 () Int)

(assert (=> d!735100 (>= lt!913862 0)))

(declare-fun e!1637636 () Int)

(assert (=> d!735100 (= lt!913862 e!1637636)))

(declare-fun c!418183 () Bool)

(assert (=> d!735100 (= c!418183 (is-Nil!29884 l2!1515))))

(assert (=> d!735100 (= (size!23189 l2!1515) lt!913862)))

(declare-fun b!2595244 () Bool)

(assert (=> b!2595244 (= e!1637636 0)))

(declare-fun b!2595245 () Bool)

(assert (=> b!2595245 (= e!1637636 (+ 1 (size!23189 (t!212997 l2!1515))))))

(assert (= (and d!735100 c!418183) b!2595244))

(assert (= (and d!735100 (not c!418183)) b!2595245))

(declare-fun m!2931397 () Bool)

(assert (=> b!2595245 m!2931397))

(assert (=> b!2595188 d!735100))

(declare-fun d!735102 () Bool)

(declare-fun lt!913863 () Int)

(assert (=> d!735102 (>= lt!913863 0)))

(declare-fun e!1637637 () Int)

(assert (=> d!735102 (= lt!913863 e!1637637)))

(declare-fun c!418184 () Bool)

(assert (=> d!735102 (= c!418184 (is-Nil!29884 l1!1546))))

(assert (=> d!735102 (= (size!23189 l1!1546) lt!913863)))

(declare-fun b!2595246 () Bool)

(assert (=> b!2595246 (= e!1637637 0)))

(declare-fun b!2595247 () Bool)

(assert (=> b!2595247 (= e!1637637 (+ 1 (size!23189 (t!212997 l1!1546))))))

(assert (= (and d!735102 c!418184) b!2595246))

(assert (= (and d!735102 (not c!418184)) b!2595247))

(declare-fun m!2931399 () Bool)

(assert (=> b!2595247 m!2931399))

(assert (=> b!2595188 d!735102))

(declare-fun d!735104 () Bool)

(declare-fun res!1092108 () Bool)

(declare-fun e!1637644 () Bool)

(assert (=> d!735104 (=> res!1092108 e!1637644)))

(assert (=> d!735104 (= res!1092108 (is-Nil!29884 l2!1515))))

(assert (=> d!735104 (= (noDuplicate!432 l2!1515) e!1637644)))

(declare-fun b!2595254 () Bool)

(declare-fun e!1637645 () Bool)

(assert (=> b!2595254 (= e!1637644 e!1637645)))

(declare-fun res!1092109 () Bool)

(assert (=> b!2595254 (=> (not res!1092109) (not e!1637645))))

(assert (=> b!2595254 (= res!1092109 (not (contains!5432 (t!212997 l2!1515) (h!35304 l2!1515))))))

(declare-fun b!2595255 () Bool)

(assert (=> b!2595255 (= e!1637645 (noDuplicate!432 (t!212997 l2!1515)))))

(assert (= (and d!735104 (not res!1092108)) b!2595254))

(assert (= (and b!2595254 res!1092109) b!2595255))

(declare-fun m!2931407 () Bool)

(assert (=> b!2595254 m!2931407))

(declare-fun m!2931409 () Bool)

(assert (=> b!2595255 m!2931409))

(assert (=> b!2595193 d!735104))

(declare-fun d!735108 () Bool)

(declare-fun lt!913867 () Bool)

(declare-fun content!4193 (List!29984) (Set B!2167))

(assert (=> d!735108 (= lt!913867 (set.member (h!35304 l1!1546) (content!4193 l2!1515)))))

(declare-fun e!1637650 () Bool)

(assert (=> d!735108 (= lt!913867 e!1637650)))

(declare-fun res!1092115 () Bool)

(assert (=> d!735108 (=> (not res!1092115) (not e!1637650))))

(assert (=> d!735108 (= res!1092115 (is-Cons!29884 l2!1515))))

(assert (=> d!735108 (= (contains!5432 l2!1515 (h!35304 l1!1546)) lt!913867)))

(declare-fun b!2595260 () Bool)

(declare-fun e!1637651 () Bool)

(assert (=> b!2595260 (= e!1637650 e!1637651)))

(declare-fun res!1092114 () Bool)

(assert (=> b!2595260 (=> res!1092114 e!1637651)))

(assert (=> b!2595260 (= res!1092114 (= (h!35304 l2!1515) (h!35304 l1!1546)))))

(declare-fun b!2595261 () Bool)

(assert (=> b!2595261 (= e!1637651 (contains!5432 (t!212997 l2!1515) (h!35304 l1!1546)))))

(assert (= (and d!735108 res!1092115) b!2595260))

(assert (= (and b!2595260 (not res!1092114)) b!2595261))

(declare-fun m!2931411 () Bool)

(assert (=> d!735108 m!2931411))

(declare-fun m!2931413 () Bool)

(assert (=> d!735108 m!2931413))

(declare-fun m!2931415 () Bool)

(assert (=> b!2595261 m!2931415))

(assert (=> b!2595187 d!735108))

(declare-fun d!735110 () Bool)

(declare-fun res!1092120 () Bool)

(declare-fun e!1637656 () Bool)

(assert (=> d!735110 (=> res!1092120 e!1637656)))

(assert (=> d!735110 (= res!1092120 (is-Nil!29884 l2!1515))))

(assert (=> d!735110 (= (forall!6121 l2!1515 lambda!96775) e!1637656)))

(declare-fun b!2595266 () Bool)

(declare-fun e!1637657 () Bool)

(assert (=> b!2595266 (= e!1637656 e!1637657)))

(declare-fun res!1092121 () Bool)

(assert (=> b!2595266 (=> (not res!1092121) (not e!1637657))))

(declare-fun dynLambda!12639 (Int B!2167) Bool)

(assert (=> b!2595266 (= res!1092121 (dynLambda!12639 lambda!96775 (h!35304 l2!1515)))))

(declare-fun b!2595267 () Bool)

(assert (=> b!2595267 (= e!1637657 (forall!6121 (t!212997 l2!1515) lambda!96775))))

(assert (= (and d!735110 (not res!1092120)) b!2595266))

(assert (= (and b!2595266 res!1092121) b!2595267))

(declare-fun b_lambda!77371 () Bool)

(assert (=> (not b_lambda!77371) (not b!2595266)))

(declare-fun m!2931417 () Bool)

(assert (=> b!2595266 m!2931417))

(declare-fun m!2931419 () Bool)

(assert (=> b!2595267 m!2931419))

(assert (=> b!2595184 d!735110))

(declare-fun d!735112 () Bool)

(assert (=> d!735112 (= (tail!4150 l1!1546) (t!212997 l1!1546))))

(assert (=> b!2595189 d!735112))

(declare-fun d!735114 () Bool)

(declare-fun res!1092122 () Bool)

(declare-fun e!1637658 () Bool)

(assert (=> d!735114 (=> res!1092122 e!1637658)))

(assert (=> d!735114 (= res!1092122 (is-Nil!29884 lt!913829))))

(assert (=> d!735114 (= (forall!6121 lt!913829 lambda!96777) e!1637658)))

(declare-fun b!2595268 () Bool)

(declare-fun e!1637659 () Bool)

(assert (=> b!2595268 (= e!1637658 e!1637659)))

(declare-fun res!1092123 () Bool)

(assert (=> b!2595268 (=> (not res!1092123) (not e!1637659))))

(assert (=> b!2595268 (= res!1092123 (dynLambda!12639 lambda!96777 (h!35304 lt!913829)))))

(declare-fun b!2595269 () Bool)

(assert (=> b!2595269 (= e!1637659 (forall!6121 (t!212997 lt!913829) lambda!96777))))

(assert (= (and d!735114 (not res!1092122)) b!2595268))

(assert (= (and b!2595268 res!1092123) b!2595269))

(declare-fun b_lambda!77373 () Bool)

(assert (=> (not b_lambda!77373) (not b!2595268)))

(declare-fun m!2931421 () Bool)

(assert (=> b!2595268 m!2931421))

(declare-fun m!2931423 () Bool)

(assert (=> b!2595269 m!2931423))

(assert (=> b!2595189 d!735114))

(declare-fun d!735116 () Bool)

(declare-fun res!1092124 () Bool)

(declare-fun e!1637660 () Bool)

(assert (=> d!735116 (=> res!1092124 e!1637660)))

(assert (=> d!735116 (= res!1092124 (is-Nil!29884 lt!913829))))

(assert (=> d!735116 (= (forall!6121 lt!913829 lambda!96776) e!1637660)))

(declare-fun b!2595270 () Bool)

(declare-fun e!1637661 () Bool)

(assert (=> b!2595270 (= e!1637660 e!1637661)))

(declare-fun res!1092125 () Bool)

(assert (=> b!2595270 (=> (not res!1092125) (not e!1637661))))

(assert (=> b!2595270 (= res!1092125 (dynLambda!12639 lambda!96776 (h!35304 lt!913829)))))

(declare-fun b!2595271 () Bool)

(assert (=> b!2595271 (= e!1637661 (forall!6121 (t!212997 lt!913829) lambda!96776))))

(assert (= (and d!735116 (not res!1092124)) b!2595270))

(assert (= (and b!2595270 res!1092125) b!2595271))

(declare-fun b_lambda!77375 () Bool)

(assert (=> (not b_lambda!77375) (not b!2595270)))

(declare-fun m!2931425 () Bool)

(assert (=> b!2595270 m!2931425))

(declare-fun m!2931427 () Bool)

(assert (=> b!2595271 m!2931427))

(assert (=> b!2595189 d!735116))

(declare-fun bs!472725 () Bool)

(declare-fun d!735118 () Bool)

(assert (= bs!472725 d!735118))

(assert (=> bs!472725 m!2931313))

(declare-fun bs!472726 () Bool)

(assert (= bs!472726 (and d!735118 b!2595184)))

(declare-fun lambda!96801 () Int)

(assert (=> bs!472726 (= (= (tail!4150 l1!1546) l1!1546) (= lambda!96801 lambda!96775))))

(declare-fun bs!472727 () Bool)

(assert (= bs!472727 (and d!735118 b!2595189)))

(assert (=> bs!472727 (= lambda!96801 lambda!96776)))

(assert (=> bs!472727 (= (= (tail!4150 l1!1546) (t!212997 l1!1546)) (= lambda!96801 lambda!96777))))

(declare-fun bs!472728 () Bool)

(assert (= bs!472728 (and d!735118 b!2595186)))

(assert (=> bs!472728 (not (= lambda!96801 lambda!96778))))

(assert (=> d!735118 true))

(assert (=> d!735118 (forall!6121 lt!913829 lambda!96801)))

(declare-fun lt!913874 () Unit!43924)

(declare-fun choose!15389 (List!29984 List!29984 B!2167) Unit!43924)

(assert (=> d!735118 (= lt!913874 (choose!15389 lt!913829 l1!1546 (h!35304 l1!1546)))))

(declare-fun isEmpty!17128 (List!29984) Bool)

(assert (=> d!735118 (not (isEmpty!17128 l1!1546))))

(assert (=> d!735118 (= (lemmaForallContainsThenForTailIfContainsNotHead!15 lt!913829 l1!1546 (h!35304 l1!1546)) lt!913874)))

(declare-fun m!2931429 () Bool)

(assert (=> bs!472725 m!2931429))

(declare-fun m!2931431 () Bool)

(assert (=> bs!472725 m!2931431))

(declare-fun m!2931433 () Bool)

(assert (=> bs!472725 m!2931433))

(assert (=> b!2595189 d!735118))

(declare-fun d!735120 () Bool)

(declare-fun lt!913875 () Bool)

(assert (=> d!735120 (= lt!913875 (set.member lt!913830 (content!4193 l1!1546)))))

(declare-fun e!1637672 () Bool)

(assert (=> d!735120 (= lt!913875 e!1637672)))

(declare-fun res!1092131 () Bool)

(assert (=> d!735120 (=> (not res!1092131) (not e!1637672))))

(assert (=> d!735120 (= res!1092131 (is-Cons!29884 l1!1546))))

(assert (=> d!735120 (= (contains!5432 l1!1546 lt!913830) lt!913875)))

(declare-fun b!2595284 () Bool)

(declare-fun e!1637673 () Bool)

(assert (=> b!2595284 (= e!1637672 e!1637673)))

(declare-fun res!1092130 () Bool)

(assert (=> b!2595284 (=> res!1092130 e!1637673)))

(assert (=> b!2595284 (= res!1092130 (= (h!35304 l1!1546) lt!913830))))

(declare-fun b!2595285 () Bool)

(assert (=> b!2595285 (= e!1637673 (contains!5432 (t!212997 l1!1546) lt!913830))))

(assert (= (and d!735120 res!1092131) b!2595284))

(assert (= (and b!2595284 (not res!1092130)) b!2595285))

(declare-fun m!2931435 () Bool)

(assert (=> d!735120 m!2931435))

(declare-fun m!2931437 () Bool)

(assert (=> d!735120 m!2931437))

(declare-fun m!2931439 () Bool)

(assert (=> b!2595285 m!2931439))

(assert (=> b!2595185 d!735120))

(declare-fun b!2595308 () Bool)

(declare-fun e!1637690 () B!2167)

(assert (=> b!2595308 (= e!1637690 (getWitness!555 (t!212997 (t!212997 l1!1546)) lambda!96778))))

(declare-fun d!735122 () Bool)

(declare-fun e!1637691 () Bool)

(assert (=> d!735122 e!1637691))

(declare-fun res!1092142 () Bool)

(assert (=> d!735122 (=> (not res!1092142) (not e!1637691))))

(declare-fun lt!913883 () B!2167)

(assert (=> d!735122 (= res!1092142 (dynLambda!12639 lambda!96778 lt!913883))))

(declare-fun e!1637692 () B!2167)

(assert (=> d!735122 (= lt!913883 e!1637692)))

(declare-fun c!418196 () Bool)

(declare-fun e!1637693 () Bool)

(assert (=> d!735122 (= c!418196 e!1637693)))

(declare-fun res!1092143 () Bool)

(assert (=> d!735122 (=> (not res!1092143) (not e!1637693))))

(assert (=> d!735122 (= res!1092143 (is-Cons!29884 (t!212997 l1!1546)))))

(assert (=> d!735122 (exists!933 (t!212997 l1!1546) lambda!96778)))

(assert (=> d!735122 (= (getWitness!555 (t!212997 l1!1546) lambda!96778) lt!913883)))

(declare-fun b!2595309 () Bool)

(assert (=> b!2595309 (= e!1637692 (h!35304 (t!212997 l1!1546)))))

(declare-fun b!2595310 () Bool)

(assert (=> b!2595310 (= e!1637692 e!1637690)))

(declare-fun c!418195 () Bool)

(assert (=> b!2595310 (= c!418195 (is-Cons!29884 (t!212997 l1!1546)))))

(declare-fun b!2595311 () Bool)

(assert (=> b!2595311 (= e!1637693 (dynLambda!12639 lambda!96778 (h!35304 (t!212997 l1!1546))))))

(declare-fun b!2595312 () Bool)

(declare-fun lt!913882 () Unit!43924)

(declare-fun Unit!43928 () Unit!43924)

(assert (=> b!2595312 (= lt!913882 Unit!43928)))

(assert (=> b!2595312 false))

(declare-fun head!5887 (List!29984) B!2167)

(assert (=> b!2595312 (= e!1637690 (head!5887 (t!212997 l1!1546)))))

(declare-fun b!2595313 () Bool)

(assert (=> b!2595313 (= e!1637691 (contains!5432 (t!212997 l1!1546) lt!913883))))

(assert (= (and d!735122 res!1092143) b!2595311))

(assert (= (and d!735122 c!418196) b!2595309))

(assert (= (and d!735122 (not c!418196)) b!2595310))

(assert (= (and b!2595310 c!418195) b!2595308))

(assert (= (and b!2595310 (not c!418195)) b!2595312))

(assert (= (and d!735122 res!1092142) b!2595313))

(declare-fun b_lambda!77381 () Bool)

(assert (=> (not b_lambda!77381) (not d!735122)))

(declare-fun b_lambda!77383 () Bool)

(assert (=> (not b_lambda!77383) (not b!2595311)))

(declare-fun m!2931451 () Bool)

(assert (=> b!2595308 m!2931451))

(declare-fun m!2931453 () Bool)

(assert (=> b!2595313 m!2931453))

(declare-fun m!2931455 () Bool)

(assert (=> d!735122 m!2931455))

(assert (=> d!735122 m!2931349))

(declare-fun m!2931457 () Bool)

(assert (=> b!2595312 m!2931457))

(declare-fun m!2931459 () Bool)

(assert (=> b!2595311 m!2931459))

(assert (=> b!2595185 d!735122))

(declare-fun d!735126 () Bool)

(declare-fun lt!913884 () Int)

(assert (=> d!735126 (>= lt!913884 0)))

(declare-fun e!1637694 () Int)

(assert (=> d!735126 (= lt!913884 e!1637694)))

(declare-fun c!418197 () Bool)

(assert (=> d!735126 (= c!418197 (is-Nil!29884 lt!913829))))

(assert (=> d!735126 (= (size!23189 lt!913829) lt!913884)))

(declare-fun b!2595314 () Bool)

(assert (=> b!2595314 (= e!1637694 0)))

(declare-fun b!2595315 () Bool)

(assert (=> b!2595315 (= e!1637694 (+ 1 (size!23189 (t!212997 lt!913829))))))

(assert (= (and d!735126 c!418197) b!2595314))

(assert (= (and d!735126 (not c!418197)) b!2595315))

(declare-fun m!2931461 () Bool)

(assert (=> b!2595315 m!2931461))

(assert (=> b!2595190 d!735126))

(declare-fun d!735128 () Bool)

(assert (=> d!735128 (forall!6121 (-!161 l2!1515 (h!35304 l1!1546)) lambda!96775)))

(declare-fun lt!913887 () Unit!43924)

(declare-fun choose!15390 (List!29984 B!2167 Int) Unit!43924)

(assert (=> d!735128 (= lt!913887 (choose!15390 l2!1515 (h!35304 l1!1546) lambda!96775))))

(assert (=> d!735128 (noDuplicate!432 l2!1515)))

(assert (=> d!735128 (= (lemmaRemoveElmtMaintainsForall!25 l2!1515 (h!35304 l1!1546) lambda!96775) lt!913887)))

(declare-fun bs!472729 () Bool)

(assert (= bs!472729 d!735128))

(assert (=> bs!472729 m!2931331))

(assert (=> bs!472729 m!2931331))

(declare-fun m!2931467 () Bool)

(assert (=> bs!472729 m!2931467))

(declare-fun m!2931469 () Bool)

(assert (=> bs!472729 m!2931469))

(assert (=> bs!472729 m!2931339))

(assert (=> b!2595190 d!735128))

(declare-fun lt!913892 () List!29984)

(declare-fun e!1637711 () Bool)

(declare-fun b!2595336 () Bool)

(assert (=> b!2595336 (= e!1637711 (= (content!4193 lt!913892) (set.minus (content!4193 l2!1515) (set.insert (h!35304 l1!1546) (as set.empty (Set B!2167))))))))

(declare-fun d!735132 () Bool)

(assert (=> d!735132 e!1637711))

(declare-fun res!1092148 () Bool)

(assert (=> d!735132 (=> (not res!1092148) (not e!1637711))))

(assert (=> d!735132 (= res!1092148 (<= (size!23189 lt!913892) (size!23189 l2!1515)))))

(declare-fun e!1637710 () List!29984)

(assert (=> d!735132 (= lt!913892 e!1637710)))

(declare-fun c!418206 () Bool)

(assert (=> d!735132 (= c!418206 (is-Cons!29884 l2!1515))))

(assert (=> d!735132 (= (-!161 l2!1515 (h!35304 l1!1546)) lt!913892)))

(declare-fun b!2595337 () Bool)

(declare-fun e!1637712 () List!29984)

(declare-fun call!167311 () List!29984)

(assert (=> b!2595337 (= e!1637712 (Cons!29884 (h!35304 l2!1515) call!167311))))

(declare-fun bm!167306 () Bool)

(assert (=> bm!167306 (= call!167311 (-!161 (t!212997 l2!1515) (h!35304 l1!1546)))))

(declare-fun b!2595338 () Bool)

(assert (=> b!2595338 (= e!1637712 call!167311)))

(declare-fun b!2595339 () Bool)

(assert (=> b!2595339 (= e!1637710 Nil!29884)))

(declare-fun b!2595340 () Bool)

(assert (=> b!2595340 (= e!1637710 e!1637712)))

(declare-fun c!418207 () Bool)

(assert (=> b!2595340 (= c!418207 (= (h!35304 l1!1546) (h!35304 l2!1515)))))

(assert (= (and d!735132 c!418206) b!2595340))

(assert (= (and d!735132 (not c!418206)) b!2595339))

(assert (= (and b!2595340 c!418207) b!2595338))

(assert (= (and b!2595340 (not c!418207)) b!2595337))

(assert (= (or b!2595338 b!2595337) bm!167306))

(assert (= (and d!735132 res!1092148) b!2595336))

(declare-fun m!2931471 () Bool)

(assert (=> b!2595336 m!2931471))

(assert (=> b!2595336 m!2931411))

(declare-fun m!2931473 () Bool)

(assert (=> b!2595336 m!2931473))

(declare-fun m!2931475 () Bool)

(assert (=> d!735132 m!2931475))

(assert (=> d!735132 m!2931321))

(declare-fun m!2931477 () Bool)

(assert (=> bm!167306 m!2931477))

(assert (=> b!2595190 d!735132))

(declare-fun d!735134 () Bool)

(assert (=> d!735134 (= (size!23189 (-!161 l2!1515 (h!35304 l1!1546))) (- (size!23189 l2!1515) 1))))

(declare-fun lt!913895 () Unit!43924)

(declare-fun choose!15391 (List!29984 B!2167) Unit!43924)

(assert (=> d!735134 (= lt!913895 (choose!15391 l2!1515 (h!35304 l1!1546)))))

(assert (=> d!735134 (noDuplicate!432 l2!1515)))

(assert (=> d!735134 (= (lemmaRemoveElmtNoDuplicateRemoveOne!23 l2!1515 (h!35304 l1!1546)) lt!913895)))

(declare-fun bs!472730 () Bool)

(assert (= bs!472730 d!735134))

(declare-fun m!2931479 () Bool)

(assert (=> bs!472730 m!2931479))

(assert (=> bs!472730 m!2931321))

(assert (=> bs!472730 m!2931339))

(assert (=> bs!472730 m!2931331))

(assert (=> bs!472730 m!2931331))

(declare-fun m!2931481 () Bool)

(assert (=> bs!472730 m!2931481))

(assert (=> b!2595190 d!735134))

(declare-fun d!735136 () Bool)

(assert (=> d!735136 (noDuplicate!432 (-!161 l2!1515 (h!35304 l1!1546)))))

(declare-fun lt!913899 () Unit!43924)

(declare-fun choose!15392 (List!29984 B!2167) Unit!43924)

(assert (=> d!735136 (= lt!913899 (choose!15392 l2!1515 (h!35304 l1!1546)))))

(assert (=> d!735136 (noDuplicate!432 l2!1515)))

(assert (=> d!735136 (= (lemmaRemoveElmtMaintainsNoDuplicate!27 l2!1515 (h!35304 l1!1546)) lt!913899)))

(declare-fun bs!472731 () Bool)

(assert (= bs!472731 d!735136))

(assert (=> bs!472731 m!2931331))

(assert (=> bs!472731 m!2931331))

(declare-fun m!2931483 () Bool)

(assert (=> bs!472731 m!2931483))

(declare-fun m!2931485 () Bool)

(assert (=> bs!472731 m!2931485))

(assert (=> bs!472731 m!2931339))

(assert (=> b!2595190 d!735136))

(declare-fun d!735138 () Bool)

(declare-fun res!1092152 () Bool)

(declare-fun e!1637720 () Bool)

(assert (=> d!735138 (=> res!1092152 e!1637720)))

(assert (=> d!735138 (= res!1092152 (is-Nil!29884 lt!913829))))

(assert (=> d!735138 (= (noDuplicate!432 lt!913829) e!1637720)))

(declare-fun b!2595348 () Bool)

(declare-fun e!1637721 () Bool)

(assert (=> b!2595348 (= e!1637720 e!1637721)))

(declare-fun res!1092153 () Bool)

(assert (=> b!2595348 (=> (not res!1092153) (not e!1637721))))

(assert (=> b!2595348 (= res!1092153 (not (contains!5432 (t!212997 lt!913829) (h!35304 lt!913829))))))

(declare-fun b!2595349 () Bool)

(assert (=> b!2595349 (= e!1637721 (noDuplicate!432 (t!212997 lt!913829)))))

(assert (= (and d!735138 (not res!1092152)) b!2595348))

(assert (= (and b!2595348 res!1092153) b!2595349))

(declare-fun m!2931487 () Bool)

(assert (=> b!2595348 m!2931487))

(declare-fun m!2931489 () Bool)

(assert (=> b!2595349 m!2931489))

(assert (=> b!2595190 d!735138))

(declare-fun d!735140 () Bool)

(declare-fun res!1092154 () Bool)

(declare-fun e!1637722 () Bool)

(assert (=> d!735140 (=> res!1092154 e!1637722)))

(assert (=> d!735140 (= res!1092154 (is-Nil!29884 lt!913829))))

(assert (=> d!735140 (= (forall!6121 lt!913829 lambda!96775) e!1637722)))

(declare-fun b!2595350 () Bool)

(declare-fun e!1637723 () Bool)

(assert (=> b!2595350 (= e!1637722 e!1637723)))

(declare-fun res!1092155 () Bool)

(assert (=> b!2595350 (=> (not res!1092155) (not e!1637723))))

(assert (=> b!2595350 (= res!1092155 (dynLambda!12639 lambda!96775 (h!35304 lt!913829)))))

(declare-fun b!2595351 () Bool)

(assert (=> b!2595351 (= e!1637723 (forall!6121 (t!212997 lt!913829) lambda!96775))))

(assert (= (and d!735140 (not res!1092154)) b!2595350))

(assert (= (and b!2595350 res!1092155) b!2595351))

(declare-fun b_lambda!77385 () Bool)

(assert (=> (not b_lambda!77385) (not b!2595350)))

(declare-fun m!2931493 () Bool)

(assert (=> b!2595350 m!2931493))

(declare-fun m!2931495 () Bool)

(assert (=> b!2595351 m!2931495))

(assert (=> b!2595190 d!735140))

(declare-fun d!735142 () Bool)

(declare-fun res!1092156 () Bool)

(declare-fun e!1637724 () Bool)

(assert (=> d!735142 (=> res!1092156 e!1637724)))

(assert (=> d!735142 (= res!1092156 (is-Nil!29884 l1!1546))))

(assert (=> d!735142 (= (noDuplicate!432 l1!1546) e!1637724)))

(declare-fun b!2595352 () Bool)

(declare-fun e!1637725 () Bool)

(assert (=> b!2595352 (= e!1637724 e!1637725)))

(declare-fun res!1092157 () Bool)

(assert (=> b!2595352 (=> (not res!1092157) (not e!1637725))))

(assert (=> b!2595352 (= res!1092157 (not (contains!5432 (t!212997 l1!1546) (h!35304 l1!1546))))))

(declare-fun b!2595353 () Bool)

(assert (=> b!2595353 (= e!1637725 (noDuplicate!432 (t!212997 l1!1546)))))

(assert (= (and d!735142 (not res!1092156)) b!2595352))

(assert (= (and b!2595352 res!1092157) b!2595353))

(declare-fun m!2931505 () Bool)

(assert (=> b!2595352 m!2931505))

(declare-fun m!2931507 () Bool)

(assert (=> b!2595353 m!2931507))

(assert (=> start!251682 d!735142))

(declare-fun bs!472732 () Bool)

(declare-fun d!735146 () Bool)

(assert (= bs!472732 (and d!735146 b!2595184)))

(declare-fun lambda!96804 () Int)

(assert (=> bs!472732 (not (= lambda!96804 lambda!96775))))

(declare-fun bs!472733 () Bool)

(assert (= bs!472733 (and d!735146 b!2595189)))

(assert (=> bs!472733 (not (= lambda!96804 lambda!96776))))

(declare-fun bs!472734 () Bool)

(assert (= bs!472734 (and d!735146 b!2595186)))

(assert (=> bs!472734 (not (= lambda!96804 lambda!96778))))

(declare-fun bs!472735 () Bool)

(assert (= bs!472735 (and d!735146 d!735118)))

(assert (=> bs!472735 (not (= lambda!96804 lambda!96801))))

(assert (=> bs!472733 (not (= lambda!96804 lambda!96777))))

(assert (=> d!735146 true))

(declare-fun order!15897 () Int)

(declare-fun dynLambda!12641 (Int Int) Int)

(assert (=> d!735146 (< (dynLambda!12641 order!15897 lambda!96778) (dynLambda!12641 order!15897 lambda!96804))))

(assert (=> d!735146 (= (exists!933 (t!212997 l1!1546) lambda!96778) (not (forall!6121 (t!212997 l1!1546) lambda!96804)))))

(declare-fun bs!472736 () Bool)

(assert (= bs!472736 d!735146))

(declare-fun m!2931509 () Bool)

(assert (=> bs!472736 m!2931509))

(assert (=> b!2595186 d!735146))

(declare-fun bs!472737 () Bool)

(declare-fun d!735148 () Bool)

(assert (= bs!472737 (and d!735148 b!2595184)))

(declare-fun lambda!96807 () Int)

(assert (=> bs!472737 (not (= lambda!96807 lambda!96775))))

(declare-fun bs!472738 () Bool)

(assert (= bs!472738 (and d!735148 b!2595189)))

(assert (=> bs!472738 (not (= lambda!96807 lambda!96776))))

(declare-fun bs!472739 () Bool)

(assert (= bs!472739 (and d!735148 b!2595186)))

(assert (=> bs!472739 (= lambda!96807 lambda!96778)))

(declare-fun bs!472740 () Bool)

(assert (= bs!472740 (and d!735148 d!735118)))

(assert (=> bs!472740 (not (= lambda!96807 lambda!96801))))

(assert (=> bs!472738 (not (= lambda!96807 lambda!96777))))

(declare-fun bs!472742 () Bool)

(assert (= bs!472742 (and d!735148 d!735146)))

(assert (=> bs!472742 (not (= lambda!96807 lambda!96804))))

(assert (=> d!735148 true))

(assert (=> d!735148 (exists!933 (t!212997 l1!1546) lambda!96807)))

(declare-fun lt!913904 () Unit!43924)

(declare-fun choose!15393 (List!29984 List!29984) Unit!43924)

(assert (=> d!735148 (= lt!913904 (choose!15393 (t!212997 l1!1546) lt!913829))))

(assert (=> d!735148 (noDuplicate!432 (t!212997 l1!1546))))

(assert (=> d!735148 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!49 (t!212997 l1!1546) lt!913829) lt!913904)))

(declare-fun bs!472743 () Bool)

(assert (= bs!472743 d!735148))

(declare-fun m!2931515 () Bool)

(assert (=> bs!472743 m!2931515))

(declare-fun m!2931517 () Bool)

(assert (=> bs!472743 m!2931517))

(assert (=> bs!472743 m!2931507))

(assert (=> b!2595186 d!735148))

(declare-fun b!2595360 () Bool)

(declare-fun e!1637731 () Bool)

(declare-fun tp!823103 () Bool)

(assert (=> b!2595360 (= e!1637731 (and tp_is_empty!13447 tp!823103))))

(assert (=> b!2595192 (= tp!823094 e!1637731)))

(assert (= (and b!2595192 (is-Cons!29884 (t!212997 l1!1546))) b!2595360))

(declare-fun b!2595361 () Bool)

(declare-fun e!1637732 () Bool)

(declare-fun tp!823104 () Bool)

(assert (=> b!2595361 (= e!1637732 (and tp_is_empty!13447 tp!823104))))

(assert (=> b!2595191 (= tp!823093 e!1637732)))

(assert (= (and b!2595191 (is-Cons!29884 (t!212997 l2!1515))) b!2595361))

(declare-fun b_lambda!77387 () Bool)

(assert (= b_lambda!77373 (or b!2595189 b_lambda!77387)))

(declare-fun bs!472744 () Bool)

(declare-fun d!735152 () Bool)

(assert (= bs!472744 (and d!735152 b!2595189)))

(assert (=> bs!472744 (= (dynLambda!12639 lambda!96777 (h!35304 lt!913829)) (contains!5432 (t!212997 l1!1546) (h!35304 lt!913829)))))

(declare-fun m!2931519 () Bool)

(assert (=> bs!472744 m!2931519))

(assert (=> b!2595268 d!735152))

(declare-fun b_lambda!77389 () Bool)

(assert (= b_lambda!77381 (or b!2595186 b_lambda!77389)))

(declare-fun bs!472745 () Bool)

(declare-fun d!735154 () Bool)

(assert (= bs!472745 (and d!735154 b!2595186)))

(assert (=> bs!472745 (= (dynLambda!12639 lambda!96778 lt!913883) (not (contains!5432 lt!913829 lt!913883)))))

(declare-fun m!2931521 () Bool)

(assert (=> bs!472745 m!2931521))

(assert (=> d!735122 d!735154))

(declare-fun b_lambda!77391 () Bool)

(assert (= b_lambda!77385 (or b!2595184 b_lambda!77391)))

(declare-fun bs!472746 () Bool)

(declare-fun d!735156 () Bool)

(assert (= bs!472746 (and d!735156 b!2595184)))

(assert (=> bs!472746 (= (dynLambda!12639 lambda!96775 (h!35304 lt!913829)) (contains!5432 l1!1546 (h!35304 lt!913829)))))

(declare-fun m!2931523 () Bool)

(assert (=> bs!472746 m!2931523))

(assert (=> b!2595350 d!735156))

(declare-fun b_lambda!77393 () Bool)

(assert (= b_lambda!77383 (or b!2595186 b_lambda!77393)))

(declare-fun bs!472747 () Bool)

(declare-fun d!735158 () Bool)

(assert (= bs!472747 (and d!735158 b!2595186)))

(assert (=> bs!472747 (= (dynLambda!12639 lambda!96778 (h!35304 (t!212997 l1!1546))) (not (contains!5432 lt!913829 (h!35304 (t!212997 l1!1546)))))))

(declare-fun m!2931525 () Bool)

(assert (=> bs!472747 m!2931525))

(assert (=> b!2595311 d!735158))

(declare-fun b_lambda!77395 () Bool)

(assert (= b_lambda!77375 (or b!2595189 b_lambda!77395)))

(declare-fun bs!472748 () Bool)

(declare-fun d!735160 () Bool)

(assert (= bs!472748 (and d!735160 b!2595189)))

(assert (=> bs!472748 (= (dynLambda!12639 lambda!96776 (h!35304 lt!913829)) (contains!5432 (tail!4150 l1!1546) (h!35304 lt!913829)))))

(declare-fun m!2931527 () Bool)

(assert (=> bs!472748 m!2931527))

(assert (=> b!2595270 d!735160))

(declare-fun b_lambda!77397 () Bool)

(assert (= b_lambda!77371 (or b!2595184 b_lambda!77397)))

(declare-fun bs!472749 () Bool)

(declare-fun d!735162 () Bool)

(assert (= bs!472749 (and d!735162 b!2595184)))

(assert (=> bs!472749 (= (dynLambda!12639 lambda!96775 (h!35304 l2!1515)) (contains!5432 l1!1546 (h!35304 l2!1515)))))

(declare-fun m!2931529 () Bool)

(assert (=> bs!472749 m!2931529))

(assert (=> b!2595266 d!735162))

(push 1)

(assert (not b!2595360))

(assert (not d!735120))

(assert (not bs!472749))

(assert (not bs!472746))

(assert (not b!2595308))

(assert (not bs!472748))

(assert (not d!735136))

(assert (not b_lambda!77387))

(assert (not b_lambda!77391))

(assert (not b!2595255))

(assert (not b!2595348))

(assert (not d!735148))

(assert (not b!2595267))

(assert (not b!2595361))

(assert (not b!2595352))

(assert (not b!2595271))

(assert (not b!2595315))

(assert (not b!2595269))

(assert tp_is_empty!13447)

(assert (not bs!472744))

(assert (not d!735134))

(assert (not d!735108))

(assert (not b!2595349))

(assert (not d!735132))

(assert (not b!2595353))

(assert (not b!2595285))

(assert (not b!2595312))

(assert (not d!735122))

(assert (not b_lambda!77389))

(assert (not b!2595254))

(assert (not b!2595245))

(assert (not b!2595351))

(assert (not bs!472747))

(assert (not b_lambda!77397))

(assert (not b_lambda!77393))

(assert (not d!735118))

(assert (not b!2595336))

(assert (not b_lambda!77395))

(assert (not bm!167306))

(assert (not d!735146))

(assert (not d!735128))

(assert (not bs!472745))

(assert (not b!2595247))

(assert (not b!2595313))

(assert (not b!2595261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

