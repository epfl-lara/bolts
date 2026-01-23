; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233922 () Bool)

(assert start!233922)

(declare-fun b!2383815 () Bool)

(assert (=> b!2383815 true))

(assert (=> b!2383815 true))

(declare-fun lambda!88920 () Int)

(declare-fun lambda!88919 () Int)

(assert (=> b!2383815 (not (= lambda!88920 lambda!88919))))

(assert (=> b!2383815 true))

(assert (=> b!2383815 true))

(declare-fun b!2383811 () Bool)

(declare-fun e!1520209 () Bool)

(declare-fun tp!760611 () Bool)

(declare-fun tp!760604 () Bool)

(assert (=> b!2383811 (= e!1520209 (and tp!760611 tp!760604))))

(declare-fun b!2383812 () Bool)

(declare-fun res!1012497 () Bool)

(declare-fun e!1520199 () Bool)

(assert (=> b!2383812 (=> res!1012497 e!1520199)))

(declare-datatypes ((C!14134 0))(
  ( (C!14135 (val!8309 Int)) )
))
(declare-datatypes ((Regex!6988 0))(
  ( (ElementMatch!6988 (c!379034 C!14134)) (Concat!11624 (regOne!14488 Regex!6988) (regTwo!14488 Regex!6988)) (EmptyExpr!6988) (Star!6988 (reg!7317 Regex!6988)) (EmptyLang!6988) (Union!6988 (regOne!14489 Regex!6988) (regTwo!14489 Regex!6988)) )
))
(declare-datatypes ((List!28214 0))(
  ( (Nil!28116) (Cons!28116 (h!33517 Regex!6988) (t!208191 List!28214)) )
))
(declare-fun l!9164 () List!28214)

(declare-fun isEmpty!16074 (List!28214) Bool)

(assert (=> b!2383812 (= res!1012497 (isEmpty!16074 l!9164))))

(declare-fun b!2383814 () Bool)

(declare-fun e!1520203 () Bool)

(declare-fun call!144905 () Bool)

(assert (=> b!2383814 (= e!1520203 call!144905)))

(declare-fun e!1520204 () Bool)

(assert (=> b!2383815 (= e!1520204 e!1520199)))

(declare-fun res!1012498 () Bool)

(assert (=> b!2383815 (=> res!1012498 e!1520199)))

(declare-fun lt!868949 () Bool)

(declare-fun lt!868943 () Bool)

(assert (=> b!2383815 (= res!1012498 (not (= lt!868949 lt!868943)))))

(declare-fun Exists!1050 (Int) Bool)

(assert (=> b!2383815 (= (Exists!1050 lambda!88919) (Exists!1050 lambda!88920))))

(declare-datatypes ((Unit!41063 0))(
  ( (Unit!41064) )
))
(declare-fun lt!868940 () Unit!41063)

(declare-fun r!13927 () Regex!6988)

(declare-datatypes ((List!28215 0))(
  ( (Nil!28117) (Cons!28117 (h!33518 C!14134) (t!208192 List!28215)) )
))
(declare-fun s!9460 () List!28215)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!389 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> b!2383815 (= lt!868940 (lemmaExistCutMatchRandMatchRSpecEquivalent!389 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460))))

(assert (=> b!2383815 (= lt!868943 (Exists!1050 lambda!88919))))

(declare-datatypes ((tuple2!27840 0))(
  ( (tuple2!27841 (_1!16461 List!28215) (_2!16461 List!28215)) )
))
(declare-datatypes ((Option!5531 0))(
  ( (None!5530) (Some!5530 (v!30938 tuple2!27840)) )
))
(declare-fun isDefined!4359 (Option!5531) Bool)

(declare-fun findConcatSeparation!639 (Regex!6988 Regex!6988 List!28215 List!28215 List!28215) Option!5531)

(assert (=> b!2383815 (= lt!868943 (isDefined!4359 (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) Nil!28117 s!9460 s!9460)))))

(declare-fun lt!868941 () Unit!41063)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!639 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> b!2383815 (= lt!868941 (lemmaFindConcatSeparationEquivalentToExists!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460))))

(declare-fun b!2383816 () Bool)

(declare-fun e!1520210 () Bool)

(assert (=> b!2383816 (= e!1520199 e!1520210)))

(declare-fun res!1012500 () Bool)

(assert (=> b!2383816 (=> res!1012500 e!1520210)))

(declare-fun lt!868946 () List!28214)

(assert (=> b!2383816 (= res!1012500 (not (isEmpty!16074 lt!868946)))))

(declare-fun tail!3479 (List!28214) List!28214)

(assert (=> b!2383816 (= lt!868946 (tail!3479 l!9164))))

(declare-fun b!2383817 () Bool)

(declare-fun e!1520208 () Bool)

(assert (=> b!2383817 (= e!1520208 (not e!1520204))))

(declare-fun res!1012496 () Bool)

(assert (=> b!2383817 (=> res!1012496 e!1520204)))

(assert (=> b!2383817 (= res!1012496 (not (is-Concat!11624 r!13927)))))

(declare-fun lt!868952 () Bool)

(assert (=> b!2383817 (= lt!868952 lt!868949)))

(declare-fun matchRSpec!837 (Regex!6988 List!28215) Bool)

(assert (=> b!2383817 (= lt!868949 (matchRSpec!837 r!13927 s!9460))))

(declare-fun matchR!3105 (Regex!6988 List!28215) Bool)

(assert (=> b!2383817 (= lt!868952 (matchR!3105 r!13927 s!9460))))

(declare-fun lt!868945 () Unit!41063)

(declare-fun mainMatchTheorem!837 (Regex!6988 List!28215) Unit!41063)

(assert (=> b!2383817 (= lt!868945 (mainMatchTheorem!837 r!13927 s!9460))))

(declare-fun b!2383818 () Bool)

(declare-fun e!1520200 () Bool)

(declare-fun call!144906 () Bool)

(assert (=> b!2383818 (= e!1520200 call!144906)))

(declare-fun c!379033 () Bool)

(declare-fun lt!868956 () tuple2!27840)

(declare-fun bm!144898 () Bool)

(declare-fun call!144908 () List!28215)

(declare-fun ++!6943 (List!28215 List!28215) List!28215)

(assert (=> bm!144898 (= call!144908 (++!6943 (ite c!379033 s!9460 (_1!16461 lt!868956)) (ite c!379033 Nil!28117 (_2!16461 lt!868956))))))

(declare-fun b!2383819 () Bool)

(declare-fun e!1520207 () Unit!41063)

(declare-fun Unit!41065 () Unit!41063)

(assert (=> b!2383819 (= e!1520207 Unit!41065)))

(declare-fun b!2383820 () Bool)

(declare-fun e!1520201 () Bool)

(declare-fun e!1520205 () Bool)

(assert (=> b!2383820 (= e!1520201 e!1520205)))

(declare-fun res!1012489 () Bool)

(assert (=> b!2383820 (=> res!1012489 e!1520205)))

(declare-fun lt!868953 () Regex!6988)

(declare-fun validRegex!2713 (Regex!6988) Bool)

(assert (=> b!2383820 (= res!1012489 (not (validRegex!2713 lt!868953)))))

(declare-fun lt!868944 () Unit!41063)

(declare-fun e!1520202 () Unit!41063)

(assert (=> b!2383820 (= lt!868944 e!1520202)))

(assert (=> b!2383820 (= c!379033 (matchR!3105 lt!868953 s!9460))))

(declare-fun head!5209 (List!28214) Regex!6988)

(assert (=> b!2383820 (= lt!868953 (head!5209 l!9164))))

(declare-fun b!2383821 () Bool)

(declare-fun e!1520197 () Bool)

(declare-fun call!144903 () Bool)

(assert (=> b!2383821 (= e!1520197 (not call!144903))))

(declare-fun b!2383822 () Bool)

(declare-fun e!1520198 () Bool)

(declare-fun tp!760610 () Bool)

(declare-fun tp!760606 () Bool)

(assert (=> b!2383822 (= e!1520198 (and tp!760610 tp!760606))))

(declare-fun b!2383823 () Bool)

(declare-fun lt!868947 () Regex!6988)

(assert (=> b!2383823 (= e!1520205 (validRegex!2713 lt!868947))))

(declare-fun b!2383813 () Bool)

(declare-fun res!1012490 () Bool)

(assert (=> b!2383813 (=> (not res!1012490) (not e!1520208))))

(declare-fun generalisedConcat!89 (List!28214) Regex!6988)

(assert (=> b!2383813 (= res!1012490 (= r!13927 (generalisedConcat!89 l!9164)))))

(declare-fun res!1012492 () Bool)

(assert (=> start!233922 (=> (not res!1012492) (not e!1520208))))

(declare-fun lambda!88918 () Int)

(declare-fun forall!5622 (List!28214 Int) Bool)

(assert (=> start!233922 (= res!1012492 (forall!5622 l!9164 lambda!88918))))

(assert (=> start!233922 e!1520208))

(assert (=> start!233922 e!1520209))

(assert (=> start!233922 e!1520198))

(declare-fun e!1520211 () Bool)

(assert (=> start!233922 e!1520211))

(declare-fun b!2383824 () Bool)

(declare-fun tp!760605 () Bool)

(declare-fun tp!760607 () Bool)

(assert (=> b!2383824 (= e!1520198 (and tp!760605 tp!760607))))

(declare-fun b!2383825 () Bool)

(declare-fun tp_is_empty!11389 () Bool)

(declare-fun tp!760609 () Bool)

(assert (=> b!2383825 (= e!1520211 (and tp_is_empty!11389 tp!760609))))

(declare-fun call!144904 () Option!5531)

(declare-fun lt!868951 () Option!5531)

(declare-fun bm!144899 () Bool)

(assert (=> bm!144899 (= call!144906 (isDefined!4359 (ite c!379033 call!144904 lt!868951)))))

(declare-fun b!2383826 () Bool)

(declare-fun Unit!41066 () Unit!41063)

(assert (=> b!2383826 (= e!1520202 Unit!41066)))

(declare-fun lt!868955 () Unit!41063)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!37 (Regex!6988 Regex!6988 List!28215 List!28215) Unit!41063)

(assert (=> b!2383826 (= lt!868955 (lemmaTwoRegexMatchThenConcatMatchesConcatString!37 lt!868953 EmptyExpr!6988 s!9460 Nil!28117))))

(declare-fun lt!868954 () Regex!6988)

(assert (=> b!2383826 (= lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988))))

(declare-fun res!1012499 () Bool)

(assert (=> b!2383826 (= res!1012499 (matchR!3105 lt!868954 call!144908))))

(assert (=> b!2383826 (=> (not res!1012499) (not e!1520203))))

(assert (=> b!2383826 e!1520203))

(declare-fun lt!868948 () Unit!41063)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!19 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> b!2383826 (= lt!868948 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!19 lt!868953 EmptyExpr!6988 s!9460))))

(declare-fun res!1012493 () Bool)

(assert (=> b!2383826 (= res!1012493 call!144903)))

(assert (=> b!2383826 (=> (not res!1012493) (not e!1520200))))

(assert (=> b!2383826 e!1520200))

(declare-fun b!2383827 () Bool)

(declare-fun e!1520206 () Bool)

(assert (=> b!2383827 (= e!1520206 false)))

(declare-fun bm!144900 () Bool)

(assert (=> bm!144900 (= call!144905 (matchR!3105 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)) (ite c!379033 s!9460 call!144908)))))

(declare-fun b!2383828 () Bool)

(declare-fun tp!760608 () Bool)

(assert (=> b!2383828 (= e!1520198 tp!760608)))

(declare-fun b!2383829 () Bool)

(assert (=> b!2383829 e!1520206))

(declare-fun res!1012494 () Bool)

(assert (=> b!2383829 (=> (not res!1012494) (not e!1520206))))

(assert (=> b!2383829 (= res!1012494 call!144905)))

(declare-fun lt!868939 () Unit!41063)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!19 (Regex!6988 Regex!6988 List!28215 List!28215 List!28215) Unit!41063)

(assert (=> b!2383829 (= lt!868939 (lemmaFindSeparationIsDefinedThenConcatMatches!19 lt!868953 EmptyExpr!6988 (_1!16461 lt!868956) (_2!16461 lt!868956) s!9460))))

(declare-fun get!8581 (Option!5531) tuple2!27840)

(assert (=> b!2383829 (= lt!868956 (get!8581 lt!868951))))

(declare-fun Unit!41067 () Unit!41063)

(assert (=> b!2383829 (= e!1520207 Unit!41067)))

(declare-fun b!2383830 () Bool)

(assert (=> b!2383830 (= e!1520198 tp_is_empty!11389)))

(declare-fun b!2383831 () Bool)

(assert (=> b!2383831 (= e!1520210 e!1520201)))

(declare-fun res!1012495 () Bool)

(assert (=> b!2383831 (=> res!1012495 e!1520201)))

(assert (=> b!2383831 (= res!1012495 (not (= lt!868947 EmptyExpr!6988)))))

(assert (=> b!2383831 (= lt!868947 (generalisedConcat!89 lt!868946))))

(declare-fun b!2383832 () Bool)

(declare-fun Unit!41068 () Unit!41063)

(assert (=> b!2383832 (= e!1520202 Unit!41068)))

(declare-fun call!144907 () Option!5531)

(assert (=> b!2383832 (= lt!868951 call!144907)))

(declare-fun lt!868950 () Bool)

(assert (=> b!2383832 (= lt!868950 call!144906)))

(declare-fun c!379032 () Bool)

(assert (=> b!2383832 (= c!379032 lt!868950)))

(declare-fun lt!868942 () Unit!41063)

(assert (=> b!2383832 (= lt!868942 e!1520207)))

(declare-fun res!1012491 () Bool)

(assert (=> b!2383832 (= res!1012491 (not lt!868950))))

(assert (=> b!2383832 (=> (not res!1012491) (not e!1520197))))

(assert (=> b!2383832 e!1520197))

(declare-fun bm!144901 () Bool)

(assert (=> bm!144901 (= call!144904 (findConcatSeparation!639 lt!868953 lt!868947 Nil!28117 s!9460 s!9460))))

(declare-fun bm!144902 () Bool)

(assert (=> bm!144902 (= call!144903 (isDefined!4359 (ite c!379033 call!144907 call!144904)))))

(declare-fun bm!144903 () Bool)

(assert (=> bm!144903 (= call!144907 (findConcatSeparation!639 lt!868953 EmptyExpr!6988 Nil!28117 s!9460 s!9460))))

(assert (= (and start!233922 res!1012492) b!2383813))

(assert (= (and b!2383813 res!1012490) b!2383817))

(assert (= (and b!2383817 (not res!1012496)) b!2383815))

(assert (= (and b!2383815 (not res!1012498)) b!2383812))

(assert (= (and b!2383812 (not res!1012497)) b!2383816))

(assert (= (and b!2383816 (not res!1012500)) b!2383831))

(assert (= (and b!2383831 (not res!1012495)) b!2383820))

(assert (= (and b!2383820 c!379033) b!2383826))

(assert (= (and b!2383820 (not c!379033)) b!2383832))

(assert (= (and b!2383826 res!1012499) b!2383814))

(assert (= (and b!2383826 res!1012493) b!2383818))

(assert (= (and b!2383832 c!379032) b!2383829))

(assert (= (and b!2383832 (not c!379032)) b!2383819))

(assert (= (and b!2383829 res!1012494) b!2383827))

(assert (= (and b!2383832 res!1012491) b!2383821))

(assert (= (or b!2383818 b!2383821) bm!144901))

(assert (= (or b!2383826 b!2383832) bm!144903))

(assert (= (or b!2383826 b!2383829) bm!144898))

(assert (= (or b!2383818 b!2383832) bm!144899))

(assert (= (or b!2383814 b!2383829) bm!144900))

(assert (= (or b!2383826 b!2383821) bm!144902))

(assert (= (and b!2383820 (not res!1012489)) b!2383823))

(assert (= (and start!233922 (is-Cons!28116 l!9164)) b!2383811))

(assert (= (and start!233922 (is-ElementMatch!6988 r!13927)) b!2383830))

(assert (= (and start!233922 (is-Concat!11624 r!13927)) b!2383824))

(assert (= (and start!233922 (is-Star!6988 r!13927)) b!2383828))

(assert (= (and start!233922 (is-Union!6988 r!13927)) b!2383822))

(assert (= (and start!233922 (is-Cons!28117 s!9460)) b!2383825))

(declare-fun m!2786707 () Bool)

(assert (=> bm!144902 m!2786707))

(declare-fun m!2786709 () Bool)

(assert (=> b!2383831 m!2786709))

(declare-fun m!2786711 () Bool)

(assert (=> b!2383813 m!2786711))

(declare-fun m!2786713 () Bool)

(assert (=> bm!144898 m!2786713))

(declare-fun m!2786715 () Bool)

(assert (=> b!2383826 m!2786715))

(declare-fun m!2786717 () Bool)

(assert (=> b!2383826 m!2786717))

(declare-fun m!2786719 () Bool)

(assert (=> b!2383826 m!2786719))

(declare-fun m!2786721 () Bool)

(assert (=> bm!144899 m!2786721))

(declare-fun m!2786723 () Bool)

(assert (=> b!2383815 m!2786723))

(declare-fun m!2786725 () Bool)

(assert (=> b!2383815 m!2786725))

(declare-fun m!2786727 () Bool)

(assert (=> b!2383815 m!2786727))

(declare-fun m!2786729 () Bool)

(assert (=> b!2383815 m!2786729))

(assert (=> b!2383815 m!2786723))

(assert (=> b!2383815 m!2786727))

(declare-fun m!2786731 () Bool)

(assert (=> b!2383815 m!2786731))

(declare-fun m!2786733 () Bool)

(assert (=> b!2383815 m!2786733))

(declare-fun m!2786735 () Bool)

(assert (=> b!2383823 m!2786735))

(declare-fun m!2786737 () Bool)

(assert (=> bm!144900 m!2786737))

(declare-fun m!2786739 () Bool)

(assert (=> bm!144903 m!2786739))

(declare-fun m!2786741 () Bool)

(assert (=> b!2383820 m!2786741))

(declare-fun m!2786743 () Bool)

(assert (=> b!2383820 m!2786743))

(declare-fun m!2786745 () Bool)

(assert (=> b!2383820 m!2786745))

(declare-fun m!2786747 () Bool)

(assert (=> b!2383812 m!2786747))

(declare-fun m!2786749 () Bool)

(assert (=> bm!144901 m!2786749))

(declare-fun m!2786751 () Bool)

(assert (=> b!2383829 m!2786751))

(declare-fun m!2786753 () Bool)

(assert (=> b!2383829 m!2786753))

(declare-fun m!2786755 () Bool)

(assert (=> b!2383816 m!2786755))

(declare-fun m!2786757 () Bool)

(assert (=> b!2383816 m!2786757))

(declare-fun m!2786759 () Bool)

(assert (=> b!2383817 m!2786759))

(declare-fun m!2786761 () Bool)

(assert (=> b!2383817 m!2786761))

(declare-fun m!2786763 () Bool)

(assert (=> b!2383817 m!2786763))

(declare-fun m!2786765 () Bool)

(assert (=> start!233922 m!2786765))

(push 1)

(assert tp_is_empty!11389)

(assert (not b!2383813))

(assert (not bm!144902))

(assert (not bm!144903))

(assert (not b!2383820))

(assert (not b!2383822))

(assert (not b!2383825))

(assert (not b!2383831))

(assert (not bm!144901))

(assert (not bm!144899))

(assert (not b!2383811))

(assert (not b!2383829))

(assert (not start!233922))

(assert (not b!2383823))

(assert (not bm!144898))

(assert (not b!2383817))

(assert (not b!2383826))

(assert (not b!2383824))

(assert (not b!2383828))

(assert (not bm!144900))

(assert (not b!2383812))

(assert (not b!2383816))

(assert (not b!2383815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697155 () Bool)

(assert (=> d!697155 (matchR!3105 (Concat!11624 lt!868953 EmptyExpr!6988) (++!6943 (_1!16461 lt!868956) (_2!16461 lt!868956)))))

(declare-fun lt!869013 () Unit!41063)

(declare-fun choose!13974 (Regex!6988 Regex!6988 List!28215 List!28215 List!28215) Unit!41063)

(assert (=> d!697155 (= lt!869013 (choose!13974 lt!868953 EmptyExpr!6988 (_1!16461 lt!868956) (_2!16461 lt!868956) s!9460))))

(assert (=> d!697155 (validRegex!2713 lt!868953)))

(assert (=> d!697155 (= (lemmaFindSeparationIsDefinedThenConcatMatches!19 lt!868953 EmptyExpr!6988 (_1!16461 lt!868956) (_2!16461 lt!868956) s!9460) lt!869013)))

(declare-fun bs!462065 () Bool)

(assert (= bs!462065 d!697155))

(declare-fun m!2786827 () Bool)

(assert (=> bs!462065 m!2786827))

(assert (=> bs!462065 m!2786827))

(declare-fun m!2786829 () Bool)

(assert (=> bs!462065 m!2786829))

(declare-fun m!2786831 () Bool)

(assert (=> bs!462065 m!2786831))

(assert (=> bs!462065 m!2786741))

(assert (=> b!2383829 d!697155))

(declare-fun d!697157 () Bool)

(assert (=> d!697157 (= (get!8581 lt!868951) (v!30938 lt!868951))))

(assert (=> b!2383829 d!697157))

(declare-fun d!697159 () Bool)

(assert (=> d!697159 (= (isEmpty!16074 l!9164) (is-Nil!28116 l!9164))))

(assert (=> b!2383812 d!697159))

(declare-fun bs!462066 () Bool)

(declare-fun d!697163 () Bool)

(assert (= bs!462066 (and d!697163 start!233922)))

(declare-fun lambda!88934 () Int)

(assert (=> bs!462066 (= lambda!88934 lambda!88918)))

(declare-fun b!2383939 () Bool)

(declare-fun e!1520280 () Bool)

(declare-fun lt!869016 () Regex!6988)

(assert (=> b!2383939 (= e!1520280 (= lt!869016 (head!5209 lt!868946)))))

(declare-fun e!1520275 () Bool)

(assert (=> d!697163 e!1520275))

(declare-fun res!1012553 () Bool)

(assert (=> d!697163 (=> (not res!1012553) (not e!1520275))))

(assert (=> d!697163 (= res!1012553 (validRegex!2713 lt!869016))))

(declare-fun e!1520276 () Regex!6988)

(assert (=> d!697163 (= lt!869016 e!1520276)))

(declare-fun c!379051 () Bool)

(declare-fun e!1520279 () Bool)

(assert (=> d!697163 (= c!379051 e!1520279)))

(declare-fun res!1012554 () Bool)

(assert (=> d!697163 (=> (not res!1012554) (not e!1520279))))

(assert (=> d!697163 (= res!1012554 (is-Cons!28116 lt!868946))))

(assert (=> d!697163 (forall!5622 lt!868946 lambda!88934)))

(assert (=> d!697163 (= (generalisedConcat!89 lt!868946) lt!869016)))

(declare-fun b!2383940 () Bool)

(assert (=> b!2383940 (= e!1520276 (h!33517 lt!868946))))

(declare-fun b!2383941 () Bool)

(declare-fun e!1520278 () Bool)

(declare-fun isEmptyExpr!58 (Regex!6988) Bool)

(assert (=> b!2383941 (= e!1520278 (isEmptyExpr!58 lt!869016))))

(declare-fun b!2383942 () Bool)

(declare-fun isConcat!58 (Regex!6988) Bool)

(assert (=> b!2383942 (= e!1520280 (isConcat!58 lt!869016))))

(declare-fun b!2383943 () Bool)

(assert (=> b!2383943 (= e!1520278 e!1520280)))

(declare-fun c!379052 () Bool)

(assert (=> b!2383943 (= c!379052 (isEmpty!16074 (tail!3479 lt!868946)))))

(declare-fun b!2383944 () Bool)

(declare-fun e!1520277 () Regex!6988)

(assert (=> b!2383944 (= e!1520276 e!1520277)))

(declare-fun c!379053 () Bool)

(assert (=> b!2383944 (= c!379053 (is-Cons!28116 lt!868946))))

(declare-fun b!2383945 () Bool)

(assert (=> b!2383945 (= e!1520277 EmptyExpr!6988)))

(declare-fun b!2383946 () Bool)

(assert (=> b!2383946 (= e!1520279 (isEmpty!16074 (t!208191 lt!868946)))))

(declare-fun b!2383947 () Bool)

(assert (=> b!2383947 (= e!1520275 e!1520278)))

(declare-fun c!379050 () Bool)

(assert (=> b!2383947 (= c!379050 (isEmpty!16074 lt!868946))))

(declare-fun b!2383948 () Bool)

(assert (=> b!2383948 (= e!1520277 (Concat!11624 (h!33517 lt!868946) (generalisedConcat!89 (t!208191 lt!868946))))))

(assert (= (and d!697163 res!1012554) b!2383946))

(assert (= (and d!697163 c!379051) b!2383940))

(assert (= (and d!697163 (not c!379051)) b!2383944))

(assert (= (and b!2383944 c!379053) b!2383948))

(assert (= (and b!2383944 (not c!379053)) b!2383945))

(assert (= (and d!697163 res!1012553) b!2383947))

(assert (= (and b!2383947 c!379050) b!2383941))

(assert (= (and b!2383947 (not c!379050)) b!2383943))

(assert (= (and b!2383943 c!379052) b!2383939))

(assert (= (and b!2383943 (not c!379052)) b!2383942))

(declare-fun m!2786833 () Bool)

(assert (=> b!2383941 m!2786833))

(assert (=> b!2383947 m!2786755))

(declare-fun m!2786835 () Bool)

(assert (=> b!2383948 m!2786835))

(declare-fun m!2786837 () Bool)

(assert (=> b!2383943 m!2786837))

(assert (=> b!2383943 m!2786837))

(declare-fun m!2786839 () Bool)

(assert (=> b!2383943 m!2786839))

(declare-fun m!2786841 () Bool)

(assert (=> b!2383946 m!2786841))

(declare-fun m!2786843 () Bool)

(assert (=> b!2383939 m!2786843))

(declare-fun m!2786845 () Bool)

(assert (=> b!2383942 m!2786845))

(declare-fun m!2786847 () Bool)

(assert (=> d!697163 m!2786847))

(declare-fun m!2786849 () Bool)

(assert (=> d!697163 m!2786849))

(assert (=> b!2383831 d!697163))

(declare-fun bs!462067 () Bool)

(declare-fun d!697171 () Bool)

(assert (= bs!462067 (and d!697171 start!233922)))

(declare-fun lambda!88935 () Int)

(assert (=> bs!462067 (= lambda!88935 lambda!88918)))

(declare-fun bs!462068 () Bool)

(assert (= bs!462068 (and d!697171 d!697163)))

(assert (=> bs!462068 (= lambda!88935 lambda!88934)))

(declare-fun b!2383949 () Bool)

(declare-fun e!1520286 () Bool)

(declare-fun lt!869017 () Regex!6988)

(assert (=> b!2383949 (= e!1520286 (= lt!869017 (head!5209 l!9164)))))

(declare-fun e!1520281 () Bool)

(assert (=> d!697171 e!1520281))

(declare-fun res!1012555 () Bool)

(assert (=> d!697171 (=> (not res!1012555) (not e!1520281))))

(assert (=> d!697171 (= res!1012555 (validRegex!2713 lt!869017))))

(declare-fun e!1520282 () Regex!6988)

(assert (=> d!697171 (= lt!869017 e!1520282)))

(declare-fun c!379055 () Bool)

(declare-fun e!1520285 () Bool)

(assert (=> d!697171 (= c!379055 e!1520285)))

(declare-fun res!1012556 () Bool)

(assert (=> d!697171 (=> (not res!1012556) (not e!1520285))))

(assert (=> d!697171 (= res!1012556 (is-Cons!28116 l!9164))))

(assert (=> d!697171 (forall!5622 l!9164 lambda!88935)))

(assert (=> d!697171 (= (generalisedConcat!89 l!9164) lt!869017)))

(declare-fun b!2383950 () Bool)

(assert (=> b!2383950 (= e!1520282 (h!33517 l!9164))))

(declare-fun b!2383951 () Bool)

(declare-fun e!1520284 () Bool)

(assert (=> b!2383951 (= e!1520284 (isEmptyExpr!58 lt!869017))))

(declare-fun b!2383952 () Bool)

(assert (=> b!2383952 (= e!1520286 (isConcat!58 lt!869017))))

(declare-fun b!2383953 () Bool)

(assert (=> b!2383953 (= e!1520284 e!1520286)))

(declare-fun c!379056 () Bool)

(assert (=> b!2383953 (= c!379056 (isEmpty!16074 (tail!3479 l!9164)))))

(declare-fun b!2383954 () Bool)

(declare-fun e!1520283 () Regex!6988)

(assert (=> b!2383954 (= e!1520282 e!1520283)))

(declare-fun c!379057 () Bool)

(assert (=> b!2383954 (= c!379057 (is-Cons!28116 l!9164))))

(declare-fun b!2383955 () Bool)

(assert (=> b!2383955 (= e!1520283 EmptyExpr!6988)))

(declare-fun b!2383956 () Bool)

(assert (=> b!2383956 (= e!1520285 (isEmpty!16074 (t!208191 l!9164)))))

(declare-fun b!2383957 () Bool)

(assert (=> b!2383957 (= e!1520281 e!1520284)))

(declare-fun c!379054 () Bool)

(assert (=> b!2383957 (= c!379054 (isEmpty!16074 l!9164))))

(declare-fun b!2383958 () Bool)

(assert (=> b!2383958 (= e!1520283 (Concat!11624 (h!33517 l!9164) (generalisedConcat!89 (t!208191 l!9164))))))

(assert (= (and d!697171 res!1012556) b!2383956))

(assert (= (and d!697171 c!379055) b!2383950))

(assert (= (and d!697171 (not c!379055)) b!2383954))

(assert (= (and b!2383954 c!379057) b!2383958))

(assert (= (and b!2383954 (not c!379057)) b!2383955))

(assert (= (and d!697171 res!1012555) b!2383957))

(assert (= (and b!2383957 c!379054) b!2383951))

(assert (= (and b!2383957 (not c!379054)) b!2383953))

(assert (= (and b!2383953 c!379056) b!2383949))

(assert (= (and b!2383953 (not c!379056)) b!2383952))

(declare-fun m!2786851 () Bool)

(assert (=> b!2383951 m!2786851))

(assert (=> b!2383957 m!2786747))

(declare-fun m!2786853 () Bool)

(assert (=> b!2383958 m!2786853))

(assert (=> b!2383953 m!2786757))

(assert (=> b!2383953 m!2786757))

(declare-fun m!2786855 () Bool)

(assert (=> b!2383953 m!2786855))

(declare-fun m!2786857 () Bool)

(assert (=> b!2383956 m!2786857))

(assert (=> b!2383949 m!2786745))

(declare-fun m!2786859 () Bool)

(assert (=> b!2383952 m!2786859))

(declare-fun m!2786861 () Bool)

(assert (=> d!697171 m!2786861))

(declare-fun m!2786863 () Bool)

(assert (=> d!697171 m!2786863))

(assert (=> b!2383813 d!697171))

(declare-fun b!2383970 () Bool)

(declare-fun e!1520292 () Bool)

(declare-fun lt!869020 () List!28215)

(assert (=> b!2383970 (= e!1520292 (or (not (= (ite c!379033 Nil!28117 (_2!16461 lt!868956)) Nil!28117)) (= lt!869020 (ite c!379033 s!9460 (_1!16461 lt!868956)))))))

(declare-fun b!2383967 () Bool)

(declare-fun e!1520291 () List!28215)

(assert (=> b!2383967 (= e!1520291 (ite c!379033 Nil!28117 (_2!16461 lt!868956)))))

(declare-fun b!2383969 () Bool)

(declare-fun res!1012561 () Bool)

(assert (=> b!2383969 (=> (not res!1012561) (not e!1520292))))

(declare-fun size!22175 (List!28215) Int)

(assert (=> b!2383969 (= res!1012561 (= (size!22175 lt!869020) (+ (size!22175 (ite c!379033 s!9460 (_1!16461 lt!868956))) (size!22175 (ite c!379033 Nil!28117 (_2!16461 lt!868956))))))))

(declare-fun d!697173 () Bool)

(assert (=> d!697173 e!1520292))

(declare-fun res!1012562 () Bool)

(assert (=> d!697173 (=> (not res!1012562) (not e!1520292))))

(declare-fun content!3837 (List!28215) (Set C!14134))

(assert (=> d!697173 (= res!1012562 (= (content!3837 lt!869020) (set.union (content!3837 (ite c!379033 s!9460 (_1!16461 lt!868956))) (content!3837 (ite c!379033 Nil!28117 (_2!16461 lt!868956))))))))

(assert (=> d!697173 (= lt!869020 e!1520291)))

(declare-fun c!379060 () Bool)

(assert (=> d!697173 (= c!379060 (is-Nil!28117 (ite c!379033 s!9460 (_1!16461 lt!868956))))))

(assert (=> d!697173 (= (++!6943 (ite c!379033 s!9460 (_1!16461 lt!868956)) (ite c!379033 Nil!28117 (_2!16461 lt!868956))) lt!869020)))

(declare-fun b!2383968 () Bool)

(assert (=> b!2383968 (= e!1520291 (Cons!28117 (h!33518 (ite c!379033 s!9460 (_1!16461 lt!868956))) (++!6943 (t!208192 (ite c!379033 s!9460 (_1!16461 lt!868956))) (ite c!379033 Nil!28117 (_2!16461 lt!868956)))))))

(assert (= (and d!697173 c!379060) b!2383967))

(assert (= (and d!697173 (not c!379060)) b!2383968))

(assert (= (and d!697173 res!1012562) b!2383969))

(assert (= (and b!2383969 res!1012561) b!2383970))

(declare-fun m!2786865 () Bool)

(assert (=> b!2383969 m!2786865))

(declare-fun m!2786867 () Bool)

(assert (=> b!2383969 m!2786867))

(declare-fun m!2786869 () Bool)

(assert (=> b!2383969 m!2786869))

(declare-fun m!2786871 () Bool)

(assert (=> d!697173 m!2786871))

(declare-fun m!2786873 () Bool)

(assert (=> d!697173 m!2786873))

(declare-fun m!2786875 () Bool)

(assert (=> d!697173 m!2786875))

(declare-fun m!2786877 () Bool)

(assert (=> b!2383968 m!2786877))

(assert (=> bm!144898 d!697173))

(declare-fun b!2384009 () Bool)

(declare-fun e!1520314 () Bool)

(declare-fun e!1520313 () Bool)

(assert (=> b!2384009 (= e!1520314 e!1520313)))

(declare-fun res!1012588 () Bool)

(assert (=> b!2384009 (=> res!1012588 e!1520313)))

(declare-fun call!144929 () Bool)

(assert (=> b!2384009 (= res!1012588 call!144929)))

(declare-fun b!2384010 () Bool)

(declare-fun res!1012584 () Bool)

(declare-fun e!1520318 () Bool)

(assert (=> b!2384010 (=> (not res!1012584) (not e!1520318))))

(declare-fun isEmpty!16076 (List!28215) Bool)

(declare-fun tail!3481 (List!28215) List!28215)

(assert (=> b!2384010 (= res!1012584 (isEmpty!16076 (tail!3481 (ite c!379033 s!9460 call!144908))))))

(declare-fun b!2384011 () Bool)

(declare-fun e!1520317 () Bool)

(declare-fun lt!869029 () Bool)

(assert (=> b!2384011 (= e!1520317 (= lt!869029 call!144929))))

(declare-fun b!2384012 () Bool)

(declare-fun res!1012587 () Bool)

(declare-fun e!1520316 () Bool)

(assert (=> b!2384012 (=> res!1012587 e!1520316)))

(assert (=> b!2384012 (= res!1012587 e!1520318)))

(declare-fun res!1012585 () Bool)

(assert (=> b!2384012 (=> (not res!1012585) (not e!1520318))))

(assert (=> b!2384012 (= res!1012585 lt!869029)))

(declare-fun d!697175 () Bool)

(assert (=> d!697175 e!1520317))

(declare-fun c!379073 () Bool)

(assert (=> d!697175 (= c!379073 (is-EmptyExpr!6988 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988))))))

(declare-fun e!1520319 () Bool)

(assert (=> d!697175 (= lt!869029 e!1520319)))

(declare-fun c!379071 () Bool)

(assert (=> d!697175 (= c!379071 (isEmpty!16076 (ite c!379033 s!9460 call!144908)))))

(assert (=> d!697175 (validRegex!2713 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)))))

(assert (=> d!697175 (= (matchR!3105 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)) (ite c!379033 s!9460 call!144908)) lt!869029)))

(declare-fun b!2384013 () Bool)

(declare-fun e!1520315 () Bool)

(assert (=> b!2384013 (= e!1520317 e!1520315)))

(declare-fun c!379072 () Bool)

(assert (=> b!2384013 (= c!379072 (is-EmptyLang!6988 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988))))))

(declare-fun b!2384014 () Bool)

(declare-fun head!5211 (List!28215) C!14134)

(assert (=> b!2384014 (= e!1520313 (not (= (head!5211 (ite c!379033 s!9460 call!144908)) (c!379034 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988))))))))

(declare-fun b!2384015 () Bool)

(declare-fun derivativeStep!1696 (Regex!6988 C!14134) Regex!6988)

(assert (=> b!2384015 (= e!1520319 (matchR!3105 (derivativeStep!1696 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)) (head!5211 (ite c!379033 s!9460 call!144908))) (tail!3481 (ite c!379033 s!9460 call!144908))))))

(declare-fun b!2384016 () Bool)

(declare-fun res!1012583 () Bool)

(assert (=> b!2384016 (=> res!1012583 e!1520316)))

(assert (=> b!2384016 (= res!1012583 (not (is-ElementMatch!6988 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)))))))

(assert (=> b!2384016 (= e!1520315 e!1520316)))

(declare-fun b!2384017 () Bool)

(assert (=> b!2384017 (= e!1520315 (not lt!869029))))

(declare-fun b!2384018 () Bool)

(assert (=> b!2384018 (= e!1520316 e!1520314)))

(declare-fun res!1012582 () Bool)

(assert (=> b!2384018 (=> (not res!1012582) (not e!1520314))))

(assert (=> b!2384018 (= res!1012582 (not lt!869029))))

(declare-fun b!2384019 () Bool)

(assert (=> b!2384019 (= e!1520318 (= (head!5211 (ite c!379033 s!9460 call!144908)) (c!379034 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988)))))))

(declare-fun b!2384020 () Bool)

(declare-fun res!1012581 () Bool)

(assert (=> b!2384020 (=> res!1012581 e!1520313)))

(assert (=> b!2384020 (= res!1012581 (not (isEmpty!16076 (tail!3481 (ite c!379033 s!9460 call!144908)))))))

(declare-fun bm!144924 () Bool)

(assert (=> bm!144924 (= call!144929 (isEmpty!16076 (ite c!379033 s!9460 call!144908)))))

(declare-fun b!2384021 () Bool)

(declare-fun res!1012586 () Bool)

(assert (=> b!2384021 (=> (not res!1012586) (not e!1520318))))

(assert (=> b!2384021 (= res!1012586 (not call!144929))))

(declare-fun b!2384022 () Bool)

(declare-fun nullable!2038 (Regex!6988) Bool)

(assert (=> b!2384022 (= e!1520319 (nullable!2038 (ite c!379033 lt!868954 (Concat!11624 lt!868953 EmptyExpr!6988))))))

(assert (= (and d!697175 c!379071) b!2384022))

(assert (= (and d!697175 (not c!379071)) b!2384015))

(assert (= (and d!697175 c!379073) b!2384011))

(assert (= (and d!697175 (not c!379073)) b!2384013))

(assert (= (and b!2384013 c!379072) b!2384017))

(assert (= (and b!2384013 (not c!379072)) b!2384016))

(assert (= (and b!2384016 (not res!1012583)) b!2384012))

(assert (= (and b!2384012 res!1012585) b!2384021))

(assert (= (and b!2384021 res!1012586) b!2384010))

(assert (= (and b!2384010 res!1012584) b!2384019))

(assert (= (and b!2384012 (not res!1012587)) b!2384018))

(assert (= (and b!2384018 res!1012582) b!2384009))

(assert (= (and b!2384009 (not res!1012588)) b!2384020))

(assert (= (and b!2384020 (not res!1012581)) b!2384014))

(assert (= (or b!2384011 b!2384009 b!2384021) bm!144924))

(declare-fun m!2786879 () Bool)

(assert (=> b!2384015 m!2786879))

(assert (=> b!2384015 m!2786879))

(declare-fun m!2786881 () Bool)

(assert (=> b!2384015 m!2786881))

(declare-fun m!2786883 () Bool)

(assert (=> b!2384015 m!2786883))

(assert (=> b!2384015 m!2786881))

(assert (=> b!2384015 m!2786883))

(declare-fun m!2786885 () Bool)

(assert (=> b!2384015 m!2786885))

(declare-fun m!2786887 () Bool)

(assert (=> b!2384022 m!2786887))

(assert (=> b!2384020 m!2786883))

(assert (=> b!2384020 m!2786883))

(declare-fun m!2786889 () Bool)

(assert (=> b!2384020 m!2786889))

(assert (=> b!2384014 m!2786879))

(assert (=> b!2384019 m!2786879))

(declare-fun m!2786891 () Bool)

(assert (=> bm!144924 m!2786891))

(assert (=> b!2384010 m!2786883))

(assert (=> b!2384010 m!2786883))

(assert (=> b!2384010 m!2786889))

(assert (=> d!697175 m!2786891))

(declare-fun m!2786893 () Bool)

(assert (=> d!697175 m!2786893))

(assert (=> bm!144900 d!697175))

(declare-fun b!2384049 () Bool)

(declare-fun res!1012610 () Bool)

(declare-fun e!1520342 () Bool)

(assert (=> b!2384049 (=> res!1012610 e!1520342)))

(assert (=> b!2384049 (= res!1012610 (not (is-Concat!11624 lt!868953)))))

(declare-fun e!1520344 () Bool)

(assert (=> b!2384049 (= e!1520344 e!1520342)))

(declare-fun d!697177 () Bool)

(declare-fun res!1012608 () Bool)

(declare-fun e!1520343 () Bool)

(assert (=> d!697177 (=> res!1012608 e!1520343)))

(assert (=> d!697177 (= res!1012608 (is-ElementMatch!6988 lt!868953))))

(assert (=> d!697177 (= (validRegex!2713 lt!868953) e!1520343)))

(declare-fun b!2384050 () Bool)

(declare-fun e!1520340 () Bool)

(declare-fun call!144937 () Bool)

(assert (=> b!2384050 (= e!1520340 call!144937)))

(declare-fun call!144936 () Bool)

(declare-fun c!379078 () Bool)

(declare-fun c!379079 () Bool)

(declare-fun bm!144931 () Bool)

(assert (=> bm!144931 (= call!144936 (validRegex!2713 (ite c!379079 (reg!7317 lt!868953) (ite c!379078 (regOne!14489 lt!868953) (regTwo!14488 lt!868953)))))))

(declare-fun bm!144932 () Bool)

(declare-fun call!144938 () Bool)

(assert (=> bm!144932 (= call!144938 call!144936)))

(declare-fun b!2384051 () Bool)

(declare-fun res!1012607 () Bool)

(assert (=> b!2384051 (=> (not res!1012607) (not e!1520340))))

(assert (=> b!2384051 (= res!1012607 call!144938)))

(assert (=> b!2384051 (= e!1520344 e!1520340)))

(declare-fun b!2384052 () Bool)

(declare-fun e!1520338 () Bool)

(assert (=> b!2384052 (= e!1520338 call!144938)))

(declare-fun b!2384053 () Bool)

(assert (=> b!2384053 (= e!1520342 e!1520338)))

(declare-fun res!1012611 () Bool)

(assert (=> b!2384053 (=> (not res!1012611) (not e!1520338))))

(assert (=> b!2384053 (= res!1012611 call!144937)))

(declare-fun b!2384054 () Bool)

(declare-fun e!1520339 () Bool)

(assert (=> b!2384054 (= e!1520339 call!144936)))

(declare-fun b!2384055 () Bool)

(declare-fun e!1520341 () Bool)

(assert (=> b!2384055 (= e!1520341 e!1520339)))

(declare-fun res!1012609 () Bool)

(assert (=> b!2384055 (= res!1012609 (not (nullable!2038 (reg!7317 lt!868953))))))

(assert (=> b!2384055 (=> (not res!1012609) (not e!1520339))))

(declare-fun bm!144933 () Bool)

(assert (=> bm!144933 (= call!144937 (validRegex!2713 (ite c!379078 (regTwo!14489 lt!868953) (regOne!14488 lt!868953))))))

(declare-fun b!2384056 () Bool)

(assert (=> b!2384056 (= e!1520341 e!1520344)))

(assert (=> b!2384056 (= c!379078 (is-Union!6988 lt!868953))))

(declare-fun b!2384057 () Bool)

(assert (=> b!2384057 (= e!1520343 e!1520341)))

(assert (=> b!2384057 (= c!379079 (is-Star!6988 lt!868953))))

(assert (= (and d!697177 (not res!1012608)) b!2384057))

(assert (= (and b!2384057 c!379079) b!2384055))

(assert (= (and b!2384057 (not c!379079)) b!2384056))

(assert (= (and b!2384055 res!1012609) b!2384054))

(assert (= (and b!2384056 c!379078) b!2384051))

(assert (= (and b!2384056 (not c!379078)) b!2384049))

(assert (= (and b!2384051 res!1012607) b!2384050))

(assert (= (and b!2384049 (not res!1012610)) b!2384053))

(assert (= (and b!2384053 res!1012611) b!2384052))

(assert (= (or b!2384051 b!2384052) bm!144932))

(assert (= (or b!2384050 b!2384053) bm!144933))

(assert (= (or b!2384054 bm!144932) bm!144931))

(declare-fun m!2786895 () Bool)

(assert (=> bm!144931 m!2786895))

(declare-fun m!2786897 () Bool)

(assert (=> b!2384055 m!2786897))

(declare-fun m!2786899 () Bool)

(assert (=> bm!144933 m!2786899))

(assert (=> b!2383820 d!697177))

(declare-fun b!2384058 () Bool)

(declare-fun e!1520346 () Bool)

(declare-fun e!1520345 () Bool)

(assert (=> b!2384058 (= e!1520346 e!1520345)))

(declare-fun res!1012619 () Bool)

(assert (=> b!2384058 (=> res!1012619 e!1520345)))

(declare-fun call!144939 () Bool)

(assert (=> b!2384058 (= res!1012619 call!144939)))

(declare-fun b!2384059 () Bool)

(declare-fun res!1012615 () Bool)

(declare-fun e!1520350 () Bool)

(assert (=> b!2384059 (=> (not res!1012615) (not e!1520350))))

(assert (=> b!2384059 (= res!1012615 (isEmpty!16076 (tail!3481 s!9460)))))

(declare-fun b!2384060 () Bool)

(declare-fun e!1520349 () Bool)

(declare-fun lt!869030 () Bool)

(assert (=> b!2384060 (= e!1520349 (= lt!869030 call!144939))))

(declare-fun b!2384061 () Bool)

(declare-fun res!1012618 () Bool)

(declare-fun e!1520348 () Bool)

(assert (=> b!2384061 (=> res!1012618 e!1520348)))

(assert (=> b!2384061 (= res!1012618 e!1520350)))

(declare-fun res!1012616 () Bool)

(assert (=> b!2384061 (=> (not res!1012616) (not e!1520350))))

(assert (=> b!2384061 (= res!1012616 lt!869030)))

(declare-fun d!697179 () Bool)

(assert (=> d!697179 e!1520349))

(declare-fun c!379082 () Bool)

(assert (=> d!697179 (= c!379082 (is-EmptyExpr!6988 lt!868953))))

(declare-fun e!1520351 () Bool)

(assert (=> d!697179 (= lt!869030 e!1520351)))

(declare-fun c!379080 () Bool)

(assert (=> d!697179 (= c!379080 (isEmpty!16076 s!9460))))

(assert (=> d!697179 (validRegex!2713 lt!868953)))

(assert (=> d!697179 (= (matchR!3105 lt!868953 s!9460) lt!869030)))

(declare-fun b!2384062 () Bool)

(declare-fun e!1520347 () Bool)

(assert (=> b!2384062 (= e!1520349 e!1520347)))

(declare-fun c!379081 () Bool)

(assert (=> b!2384062 (= c!379081 (is-EmptyLang!6988 lt!868953))))

(declare-fun b!2384063 () Bool)

(assert (=> b!2384063 (= e!1520345 (not (= (head!5211 s!9460) (c!379034 lt!868953))))))

(declare-fun b!2384064 () Bool)

(assert (=> b!2384064 (= e!1520351 (matchR!3105 (derivativeStep!1696 lt!868953 (head!5211 s!9460)) (tail!3481 s!9460)))))

(declare-fun b!2384065 () Bool)

(declare-fun res!1012614 () Bool)

(assert (=> b!2384065 (=> res!1012614 e!1520348)))

(assert (=> b!2384065 (= res!1012614 (not (is-ElementMatch!6988 lt!868953)))))

(assert (=> b!2384065 (= e!1520347 e!1520348)))

(declare-fun b!2384066 () Bool)

(assert (=> b!2384066 (= e!1520347 (not lt!869030))))

(declare-fun b!2384067 () Bool)

(assert (=> b!2384067 (= e!1520348 e!1520346)))

(declare-fun res!1012613 () Bool)

(assert (=> b!2384067 (=> (not res!1012613) (not e!1520346))))

(assert (=> b!2384067 (= res!1012613 (not lt!869030))))

(declare-fun b!2384068 () Bool)

(assert (=> b!2384068 (= e!1520350 (= (head!5211 s!9460) (c!379034 lt!868953)))))

(declare-fun b!2384069 () Bool)

(declare-fun res!1012612 () Bool)

(assert (=> b!2384069 (=> res!1012612 e!1520345)))

(assert (=> b!2384069 (= res!1012612 (not (isEmpty!16076 (tail!3481 s!9460))))))

(declare-fun bm!144934 () Bool)

(assert (=> bm!144934 (= call!144939 (isEmpty!16076 s!9460))))

(declare-fun b!2384070 () Bool)

(declare-fun res!1012617 () Bool)

(assert (=> b!2384070 (=> (not res!1012617) (not e!1520350))))

(assert (=> b!2384070 (= res!1012617 (not call!144939))))

(declare-fun b!2384071 () Bool)

(assert (=> b!2384071 (= e!1520351 (nullable!2038 lt!868953))))

(assert (= (and d!697179 c!379080) b!2384071))

(assert (= (and d!697179 (not c!379080)) b!2384064))

(assert (= (and d!697179 c!379082) b!2384060))

(assert (= (and d!697179 (not c!379082)) b!2384062))

(assert (= (and b!2384062 c!379081) b!2384066))

(assert (= (and b!2384062 (not c!379081)) b!2384065))

(assert (= (and b!2384065 (not res!1012614)) b!2384061))

(assert (= (and b!2384061 res!1012616) b!2384070))

(assert (= (and b!2384070 res!1012617) b!2384059))

(assert (= (and b!2384059 res!1012615) b!2384068))

(assert (= (and b!2384061 (not res!1012618)) b!2384067))

(assert (= (and b!2384067 res!1012613) b!2384058))

(assert (= (and b!2384058 (not res!1012619)) b!2384069))

(assert (= (and b!2384069 (not res!1012612)) b!2384063))

(assert (= (or b!2384060 b!2384058 b!2384070) bm!144934))

(declare-fun m!2786901 () Bool)

(assert (=> b!2384064 m!2786901))

(assert (=> b!2384064 m!2786901))

(declare-fun m!2786903 () Bool)

(assert (=> b!2384064 m!2786903))

(declare-fun m!2786905 () Bool)

(assert (=> b!2384064 m!2786905))

(assert (=> b!2384064 m!2786903))

(assert (=> b!2384064 m!2786905))

(declare-fun m!2786907 () Bool)

(assert (=> b!2384064 m!2786907))

(declare-fun m!2786909 () Bool)

(assert (=> b!2384071 m!2786909))

(assert (=> b!2384069 m!2786905))

(assert (=> b!2384069 m!2786905))

(declare-fun m!2786911 () Bool)

(assert (=> b!2384069 m!2786911))

(assert (=> b!2384063 m!2786901))

(assert (=> b!2384068 m!2786901))

(declare-fun m!2786913 () Bool)

(assert (=> bm!144934 m!2786913))

(assert (=> b!2384059 m!2786905))

(assert (=> b!2384059 m!2786905))

(assert (=> b!2384059 m!2786911))

(assert (=> d!697179 m!2786913))

(assert (=> d!697179 m!2786741))

(assert (=> b!2383820 d!697179))

(declare-fun d!697181 () Bool)

(assert (=> d!697181 (= (head!5209 l!9164) (h!33517 l!9164))))

(assert (=> b!2383820 d!697181))

(declare-fun d!697183 () Bool)

(assert (=> d!697183 (= (isEmpty!16074 lt!868946) (is-Nil!28116 lt!868946))))

(assert (=> b!2383816 d!697183))

(declare-fun d!697185 () Bool)

(assert (=> d!697185 (= (tail!3479 l!9164) (t!208191 l!9164))))

(assert (=> b!2383816 d!697185))

(declare-fun d!697187 () Bool)

(declare-fun isEmpty!16077 (Option!5531) Bool)

(assert (=> d!697187 (= (isDefined!4359 (ite c!379033 call!144904 lt!868951)) (not (isEmpty!16077 (ite c!379033 call!144904 lt!868951))))))

(declare-fun bs!462069 () Bool)

(assert (= bs!462069 d!697187))

(declare-fun m!2786915 () Bool)

(assert (=> bs!462069 m!2786915))

(assert (=> bm!144899 d!697187))

(declare-fun b!2384099 () Bool)

(declare-fun e!1520370 () Bool)

(assert (=> b!2384099 (= e!1520370 (matchR!3105 EmptyExpr!6988 s!9460))))

(declare-fun b!2384100 () Bool)

(declare-fun e!1520367 () Option!5531)

(assert (=> b!2384100 (= e!1520367 (Some!5530 (tuple2!27841 Nil!28117 s!9460)))))

(declare-fun b!2384101 () Bool)

(declare-fun res!1012638 () Bool)

(declare-fun e!1520369 () Bool)

(assert (=> b!2384101 (=> (not res!1012638) (not e!1520369))))

(declare-fun lt!869041 () Option!5531)

(assert (=> b!2384101 (= res!1012638 (matchR!3105 EmptyExpr!6988 (_2!16461 (get!8581 lt!869041))))))

(declare-fun d!697189 () Bool)

(declare-fun e!1520371 () Bool)

(assert (=> d!697189 e!1520371))

(declare-fun res!1012637 () Bool)

(assert (=> d!697189 (=> res!1012637 e!1520371)))

(assert (=> d!697189 (= res!1012637 e!1520369)))

(declare-fun res!1012639 () Bool)

(assert (=> d!697189 (=> (not res!1012639) (not e!1520369))))

(assert (=> d!697189 (= res!1012639 (isDefined!4359 lt!869041))))

(assert (=> d!697189 (= lt!869041 e!1520367)))

(declare-fun c!379090 () Bool)

(assert (=> d!697189 (= c!379090 e!1520370)))

(declare-fun res!1012635 () Bool)

(assert (=> d!697189 (=> (not res!1012635) (not e!1520370))))

(assert (=> d!697189 (= res!1012635 (matchR!3105 lt!868953 Nil!28117))))

(assert (=> d!697189 (validRegex!2713 lt!868953)))

(assert (=> d!697189 (= (findConcatSeparation!639 lt!868953 EmptyExpr!6988 Nil!28117 s!9460 s!9460) lt!869041)))

(declare-fun b!2384102 () Bool)

(declare-fun e!1520368 () Option!5531)

(assert (=> b!2384102 (= e!1520367 e!1520368)))

(declare-fun c!379089 () Bool)

(assert (=> b!2384102 (= c!379089 (is-Nil!28117 s!9460))))

(declare-fun b!2384103 () Bool)

(declare-fun res!1012636 () Bool)

(assert (=> b!2384103 (=> (not res!1012636) (not e!1520369))))

(assert (=> b!2384103 (= res!1012636 (matchR!3105 lt!868953 (_1!16461 (get!8581 lt!869041))))))

(declare-fun b!2384104 () Bool)

(declare-fun lt!869042 () Unit!41063)

(declare-fun lt!869040 () Unit!41063)

(assert (=> b!2384104 (= lt!869042 lt!869040)))

(assert (=> b!2384104 (= (++!6943 (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!585 (List!28215 C!14134 List!28215 List!28215) Unit!41063)

(assert (=> b!2384104 (= lt!869040 (lemmaMoveElementToOtherListKeepsConcatEq!585 Nil!28117 (h!33518 s!9460) (t!208192 s!9460) s!9460))))

(assert (=> b!2384104 (= e!1520368 (findConcatSeparation!639 lt!868953 EmptyExpr!6988 (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460) s!9460))))

(declare-fun b!2384105 () Bool)

(assert (=> b!2384105 (= e!1520368 None!5530)))

(declare-fun b!2384106 () Bool)

(assert (=> b!2384106 (= e!1520371 (not (isDefined!4359 lt!869041)))))

(declare-fun b!2384107 () Bool)

(assert (=> b!2384107 (= e!1520369 (= (++!6943 (_1!16461 (get!8581 lt!869041)) (_2!16461 (get!8581 lt!869041))) s!9460))))

(assert (= (and d!697189 res!1012635) b!2384099))

(assert (= (and d!697189 c!379090) b!2384100))

(assert (= (and d!697189 (not c!379090)) b!2384102))

(assert (= (and b!2384102 c!379089) b!2384105))

(assert (= (and b!2384102 (not c!379089)) b!2384104))

(assert (= (and d!697189 res!1012639) b!2384103))

(assert (= (and b!2384103 res!1012636) b!2384101))

(assert (= (and b!2384101 res!1012638) b!2384107))

(assert (= (and d!697189 (not res!1012637)) b!2384106))

(declare-fun m!2786939 () Bool)

(assert (=> b!2384101 m!2786939))

(declare-fun m!2786941 () Bool)

(assert (=> b!2384101 m!2786941))

(assert (=> b!2384107 m!2786939))

(declare-fun m!2786943 () Bool)

(assert (=> b!2384107 m!2786943))

(declare-fun m!2786945 () Bool)

(assert (=> b!2384104 m!2786945))

(assert (=> b!2384104 m!2786945))

(declare-fun m!2786947 () Bool)

(assert (=> b!2384104 m!2786947))

(declare-fun m!2786949 () Bool)

(assert (=> b!2384104 m!2786949))

(assert (=> b!2384104 m!2786945))

(declare-fun m!2786951 () Bool)

(assert (=> b!2384104 m!2786951))

(declare-fun m!2786953 () Bool)

(assert (=> b!2384106 m!2786953))

(declare-fun m!2786955 () Bool)

(assert (=> b!2384099 m!2786955))

(assert (=> b!2384103 m!2786939))

(declare-fun m!2786957 () Bool)

(assert (=> b!2384103 m!2786957))

(assert (=> d!697189 m!2786953))

(declare-fun m!2786959 () Bool)

(assert (=> d!697189 m!2786959))

(assert (=> d!697189 m!2786741))

(assert (=> bm!144903 d!697189))

(declare-fun bs!462070 () Bool)

(declare-fun b!2384177 () Bool)

(assert (= bs!462070 (and b!2384177 b!2383815)))

(declare-fun lambda!88940 () Int)

(assert (=> bs!462070 (not (= lambda!88940 lambda!88919))))

(assert (=> bs!462070 (not (= lambda!88940 lambda!88920))))

(assert (=> b!2384177 true))

(assert (=> b!2384177 true))

(declare-fun bs!462071 () Bool)

(declare-fun b!2384172 () Bool)

(assert (= bs!462071 (and b!2384172 b!2383815)))

(declare-fun lambda!88941 () Int)

(assert (=> bs!462071 (not (= lambda!88941 lambda!88919))))

(assert (=> bs!462071 (= lambda!88941 lambda!88920)))

(declare-fun bs!462072 () Bool)

(assert (= bs!462072 (and b!2384172 b!2384177)))

(assert (=> bs!462072 (not (= lambda!88941 lambda!88940))))

(assert (=> b!2384172 true))

(assert (=> b!2384172 true))

(declare-fun bm!144941 () Bool)

(declare-fun call!144946 () Bool)

(assert (=> bm!144941 (= call!144946 (isEmpty!16076 s!9460))))

(declare-fun b!2384168 () Bool)

(declare-fun e!1520404 () Bool)

(assert (=> b!2384168 (= e!1520404 (= s!9460 (Cons!28117 (c!379034 r!13927) Nil!28117)))))

(declare-fun b!2384169 () Bool)

(declare-fun e!1520405 () Bool)

(assert (=> b!2384169 (= e!1520405 call!144946)))

(declare-fun b!2384170 () Bool)

(declare-fun e!1520406 () Bool)

(declare-fun e!1520408 () Bool)

(assert (=> b!2384170 (= e!1520406 e!1520408)))

(declare-fun c!379108 () Bool)

(assert (=> b!2384170 (= c!379108 (is-Star!6988 r!13927))))

(declare-fun b!2384171 () Bool)

(declare-fun res!1012672 () Bool)

(declare-fun e!1520407 () Bool)

(assert (=> b!2384171 (=> res!1012672 e!1520407)))

(assert (=> b!2384171 (= res!1012672 call!144946)))

(assert (=> b!2384171 (= e!1520408 e!1520407)))

(declare-fun call!144947 () Bool)

(assert (=> b!2384172 (= e!1520408 call!144947)))

(declare-fun b!2384173 () Bool)

(declare-fun c!379105 () Bool)

(assert (=> b!2384173 (= c!379105 (is-ElementMatch!6988 r!13927))))

(declare-fun e!1520409 () Bool)

(assert (=> b!2384173 (= e!1520409 e!1520404)))

(declare-fun b!2384175 () Bool)

(declare-fun e!1520410 () Bool)

(assert (=> b!2384175 (= e!1520410 (matchRSpec!837 (regTwo!14489 r!13927) s!9460))))

(declare-fun bm!144942 () Bool)

(assert (=> bm!144942 (= call!144947 (Exists!1050 (ite c!379108 lambda!88940 lambda!88941)))))

(declare-fun b!2384176 () Bool)

(assert (=> b!2384176 (= e!1520405 e!1520409)))

(declare-fun res!1012674 () Bool)

(assert (=> b!2384176 (= res!1012674 (not (is-EmptyLang!6988 r!13927)))))

(assert (=> b!2384176 (=> (not res!1012674) (not e!1520409))))

(declare-fun b!2384174 () Bool)

(declare-fun c!379107 () Bool)

(assert (=> b!2384174 (= c!379107 (is-Union!6988 r!13927))))

(assert (=> b!2384174 (= e!1520404 e!1520406)))

(declare-fun d!697193 () Bool)

(declare-fun c!379106 () Bool)

(assert (=> d!697193 (= c!379106 (is-EmptyExpr!6988 r!13927))))

(assert (=> d!697193 (= (matchRSpec!837 r!13927 s!9460) e!1520405)))

(assert (=> b!2384177 (= e!1520407 call!144947)))

(declare-fun b!2384178 () Bool)

(assert (=> b!2384178 (= e!1520406 e!1520410)))

(declare-fun res!1012673 () Bool)

(assert (=> b!2384178 (= res!1012673 (matchRSpec!837 (regOne!14489 r!13927) s!9460))))

(assert (=> b!2384178 (=> res!1012673 e!1520410)))

(assert (= (and d!697193 c!379106) b!2384169))

(assert (= (and d!697193 (not c!379106)) b!2384176))

(assert (= (and b!2384176 res!1012674) b!2384173))

(assert (= (and b!2384173 c!379105) b!2384168))

(assert (= (and b!2384173 (not c!379105)) b!2384174))

(assert (= (and b!2384174 c!379107) b!2384178))

(assert (= (and b!2384174 (not c!379107)) b!2384170))

(assert (= (and b!2384178 (not res!1012673)) b!2384175))

(assert (= (and b!2384170 c!379108) b!2384171))

(assert (= (and b!2384170 (not c!379108)) b!2384172))

(assert (= (and b!2384171 (not res!1012672)) b!2384177))

(assert (= (or b!2384177 b!2384172) bm!144942))

(assert (= (or b!2384169 b!2384171) bm!144941))

(assert (=> bm!144941 m!2786913))

(declare-fun m!2786961 () Bool)

(assert (=> b!2384175 m!2786961))

(declare-fun m!2786963 () Bool)

(assert (=> bm!144942 m!2786963))

(declare-fun m!2786965 () Bool)

(assert (=> b!2384178 m!2786965))

(assert (=> b!2383817 d!697193))

(declare-fun b!2384193 () Bool)

(declare-fun e!1520419 () Bool)

(declare-fun e!1520418 () Bool)

(assert (=> b!2384193 (= e!1520419 e!1520418)))

(declare-fun res!1012690 () Bool)

(assert (=> b!2384193 (=> res!1012690 e!1520418)))

(declare-fun call!144949 () Bool)

(assert (=> b!2384193 (= res!1012690 call!144949)))

(declare-fun b!2384194 () Bool)

(declare-fun res!1012686 () Bool)

(declare-fun e!1520423 () Bool)

(assert (=> b!2384194 (=> (not res!1012686) (not e!1520423))))

(assert (=> b!2384194 (= res!1012686 (isEmpty!16076 (tail!3481 s!9460)))))

(declare-fun b!2384195 () Bool)

(declare-fun e!1520422 () Bool)

(declare-fun lt!869046 () Bool)

(assert (=> b!2384195 (= e!1520422 (= lt!869046 call!144949))))

(declare-fun b!2384196 () Bool)

(declare-fun res!1012689 () Bool)

(declare-fun e!1520421 () Bool)

(assert (=> b!2384196 (=> res!1012689 e!1520421)))

(assert (=> b!2384196 (= res!1012689 e!1520423)))

(declare-fun res!1012687 () Bool)

(assert (=> b!2384196 (=> (not res!1012687) (not e!1520423))))

(assert (=> b!2384196 (= res!1012687 lt!869046)))

(declare-fun d!697195 () Bool)

(assert (=> d!697195 e!1520422))

(declare-fun c!379114 () Bool)

(assert (=> d!697195 (= c!379114 (is-EmptyExpr!6988 r!13927))))

(declare-fun e!1520424 () Bool)

(assert (=> d!697195 (= lt!869046 e!1520424)))

(declare-fun c!379112 () Bool)

(assert (=> d!697195 (= c!379112 (isEmpty!16076 s!9460))))

(assert (=> d!697195 (validRegex!2713 r!13927)))

(assert (=> d!697195 (= (matchR!3105 r!13927 s!9460) lt!869046)))

(declare-fun b!2384197 () Bool)

(declare-fun e!1520420 () Bool)

(assert (=> b!2384197 (= e!1520422 e!1520420)))

(declare-fun c!379113 () Bool)

(assert (=> b!2384197 (= c!379113 (is-EmptyLang!6988 r!13927))))

(declare-fun b!2384198 () Bool)

(assert (=> b!2384198 (= e!1520418 (not (= (head!5211 s!9460) (c!379034 r!13927))))))

(declare-fun b!2384199 () Bool)

(assert (=> b!2384199 (= e!1520424 (matchR!3105 (derivativeStep!1696 r!13927 (head!5211 s!9460)) (tail!3481 s!9460)))))

(declare-fun b!2384200 () Bool)

(declare-fun res!1012685 () Bool)

(assert (=> b!2384200 (=> res!1012685 e!1520421)))

(assert (=> b!2384200 (= res!1012685 (not (is-ElementMatch!6988 r!13927)))))

(assert (=> b!2384200 (= e!1520420 e!1520421)))

(declare-fun b!2384201 () Bool)

(assert (=> b!2384201 (= e!1520420 (not lt!869046))))

(declare-fun b!2384202 () Bool)

(assert (=> b!2384202 (= e!1520421 e!1520419)))

(declare-fun res!1012684 () Bool)

(assert (=> b!2384202 (=> (not res!1012684) (not e!1520419))))

(assert (=> b!2384202 (= res!1012684 (not lt!869046))))

(declare-fun b!2384203 () Bool)

(assert (=> b!2384203 (= e!1520423 (= (head!5211 s!9460) (c!379034 r!13927)))))

(declare-fun b!2384204 () Bool)

(declare-fun res!1012683 () Bool)

(assert (=> b!2384204 (=> res!1012683 e!1520418)))

(assert (=> b!2384204 (= res!1012683 (not (isEmpty!16076 (tail!3481 s!9460))))))

(declare-fun bm!144944 () Bool)

(assert (=> bm!144944 (= call!144949 (isEmpty!16076 s!9460))))

(declare-fun b!2384205 () Bool)

(declare-fun res!1012688 () Bool)

(assert (=> b!2384205 (=> (not res!1012688) (not e!1520423))))

(assert (=> b!2384205 (= res!1012688 (not call!144949))))

(declare-fun b!2384206 () Bool)

(assert (=> b!2384206 (= e!1520424 (nullable!2038 r!13927))))

(assert (= (and d!697195 c!379112) b!2384206))

(assert (= (and d!697195 (not c!379112)) b!2384199))

(assert (= (and d!697195 c!379114) b!2384195))

(assert (= (and d!697195 (not c!379114)) b!2384197))

(assert (= (and b!2384197 c!379113) b!2384201))

(assert (= (and b!2384197 (not c!379113)) b!2384200))

(assert (= (and b!2384200 (not res!1012685)) b!2384196))

(assert (= (and b!2384196 res!1012687) b!2384205))

(assert (= (and b!2384205 res!1012688) b!2384194))

(assert (= (and b!2384194 res!1012686) b!2384203))

(assert (= (and b!2384196 (not res!1012689)) b!2384202))

(assert (= (and b!2384202 res!1012684) b!2384193))

(assert (= (and b!2384193 (not res!1012690)) b!2384204))

(assert (= (and b!2384204 (not res!1012683)) b!2384198))

(assert (= (or b!2384195 b!2384193 b!2384205) bm!144944))

(assert (=> b!2384199 m!2786901))

(assert (=> b!2384199 m!2786901))

(declare-fun m!2786969 () Bool)

(assert (=> b!2384199 m!2786969))

(assert (=> b!2384199 m!2786905))

(assert (=> b!2384199 m!2786969))

(assert (=> b!2384199 m!2786905))

(declare-fun m!2786973 () Bool)

(assert (=> b!2384199 m!2786973))

(declare-fun m!2786975 () Bool)

(assert (=> b!2384206 m!2786975))

(assert (=> b!2384204 m!2786905))

(assert (=> b!2384204 m!2786905))

(assert (=> b!2384204 m!2786911))

(assert (=> b!2384198 m!2786901))

(assert (=> b!2384203 m!2786901))

(assert (=> bm!144944 m!2786913))

(assert (=> b!2384194 m!2786905))

(assert (=> b!2384194 m!2786905))

(assert (=> b!2384194 m!2786911))

(assert (=> d!697195 m!2786913))

(declare-fun m!2786979 () Bool)

(assert (=> d!697195 m!2786979))

(assert (=> b!2383817 d!697195))

(declare-fun d!697197 () Bool)

(assert (=> d!697197 (= (matchR!3105 r!13927 s!9460) (matchRSpec!837 r!13927 s!9460))))

(declare-fun lt!869049 () Unit!41063)

(declare-fun choose!13975 (Regex!6988 List!28215) Unit!41063)

(assert (=> d!697197 (= lt!869049 (choose!13975 r!13927 s!9460))))

(assert (=> d!697197 (validRegex!2713 r!13927)))

(assert (=> d!697197 (= (mainMatchTheorem!837 r!13927 s!9460) lt!869049)))

(declare-fun bs!462073 () Bool)

(assert (= bs!462073 d!697197))

(assert (=> bs!462073 m!2786761))

(assert (=> bs!462073 m!2786759))

(declare-fun m!2786991 () Bool)

(assert (=> bs!462073 m!2786991))

(assert (=> bs!462073 m!2786979))

(assert (=> b!2383817 d!697197))

(declare-fun d!697201 () Bool)

(assert (=> d!697201 (matchR!3105 (Concat!11624 lt!868953 EmptyExpr!6988) (++!6943 s!9460 Nil!28117))))

(declare-fun lt!869052 () Unit!41063)

(declare-fun choose!13976 (Regex!6988 Regex!6988 List!28215 List!28215) Unit!41063)

(assert (=> d!697201 (= lt!869052 (choose!13976 lt!868953 EmptyExpr!6988 s!9460 Nil!28117))))

(declare-fun e!1520427 () Bool)

(assert (=> d!697201 e!1520427))

(declare-fun res!1012693 () Bool)

(assert (=> d!697201 (=> (not res!1012693) (not e!1520427))))

(assert (=> d!697201 (= res!1012693 (validRegex!2713 lt!868953))))

(assert (=> d!697201 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!37 lt!868953 EmptyExpr!6988 s!9460 Nil!28117) lt!869052)))

(declare-fun b!2384209 () Bool)

(assert (=> b!2384209 (= e!1520427 (validRegex!2713 EmptyExpr!6988))))

(assert (= (and d!697201 res!1012693) b!2384209))

(declare-fun m!2786993 () Bool)

(assert (=> d!697201 m!2786993))

(assert (=> d!697201 m!2786993))

(declare-fun m!2786995 () Bool)

(assert (=> d!697201 m!2786995))

(declare-fun m!2786997 () Bool)

(assert (=> d!697201 m!2786997))

(assert (=> d!697201 m!2786741))

(declare-fun m!2786999 () Bool)

(assert (=> b!2384209 m!2786999))

(assert (=> b!2383826 d!697201))

(declare-fun b!2384210 () Bool)

(declare-fun e!1520429 () Bool)

(declare-fun e!1520428 () Bool)

(assert (=> b!2384210 (= e!1520429 e!1520428)))

(declare-fun res!1012701 () Bool)

(assert (=> b!2384210 (=> res!1012701 e!1520428)))

(declare-fun call!144950 () Bool)

(assert (=> b!2384210 (= res!1012701 call!144950)))

(declare-fun b!2384211 () Bool)

(declare-fun res!1012697 () Bool)

(declare-fun e!1520433 () Bool)

(assert (=> b!2384211 (=> (not res!1012697) (not e!1520433))))

(assert (=> b!2384211 (= res!1012697 (isEmpty!16076 (tail!3481 call!144908)))))

(declare-fun b!2384212 () Bool)

(declare-fun e!1520432 () Bool)

(declare-fun lt!869053 () Bool)

(assert (=> b!2384212 (= e!1520432 (= lt!869053 call!144950))))

(declare-fun b!2384213 () Bool)

(declare-fun res!1012700 () Bool)

(declare-fun e!1520431 () Bool)

(assert (=> b!2384213 (=> res!1012700 e!1520431)))

(assert (=> b!2384213 (= res!1012700 e!1520433)))

(declare-fun res!1012698 () Bool)

(assert (=> b!2384213 (=> (not res!1012698) (not e!1520433))))

(assert (=> b!2384213 (= res!1012698 lt!869053)))

(declare-fun d!697203 () Bool)

(assert (=> d!697203 e!1520432))

(declare-fun c!379117 () Bool)

(assert (=> d!697203 (= c!379117 (is-EmptyExpr!6988 lt!868954))))

(declare-fun e!1520434 () Bool)

(assert (=> d!697203 (= lt!869053 e!1520434)))

(declare-fun c!379115 () Bool)

(assert (=> d!697203 (= c!379115 (isEmpty!16076 call!144908))))

(assert (=> d!697203 (validRegex!2713 lt!868954)))

(assert (=> d!697203 (= (matchR!3105 lt!868954 call!144908) lt!869053)))

(declare-fun b!2384214 () Bool)

(declare-fun e!1520430 () Bool)

(assert (=> b!2384214 (= e!1520432 e!1520430)))

(declare-fun c!379116 () Bool)

(assert (=> b!2384214 (= c!379116 (is-EmptyLang!6988 lt!868954))))

(declare-fun b!2384215 () Bool)

(assert (=> b!2384215 (= e!1520428 (not (= (head!5211 call!144908) (c!379034 lt!868954))))))

(declare-fun b!2384216 () Bool)

(assert (=> b!2384216 (= e!1520434 (matchR!3105 (derivativeStep!1696 lt!868954 (head!5211 call!144908)) (tail!3481 call!144908)))))

(declare-fun b!2384217 () Bool)

(declare-fun res!1012696 () Bool)

(assert (=> b!2384217 (=> res!1012696 e!1520431)))

(assert (=> b!2384217 (= res!1012696 (not (is-ElementMatch!6988 lt!868954)))))

(assert (=> b!2384217 (= e!1520430 e!1520431)))

(declare-fun b!2384218 () Bool)

(assert (=> b!2384218 (= e!1520430 (not lt!869053))))

(declare-fun b!2384219 () Bool)

(assert (=> b!2384219 (= e!1520431 e!1520429)))

(declare-fun res!1012695 () Bool)

(assert (=> b!2384219 (=> (not res!1012695) (not e!1520429))))

(assert (=> b!2384219 (= res!1012695 (not lt!869053))))

(declare-fun b!2384220 () Bool)

(assert (=> b!2384220 (= e!1520433 (= (head!5211 call!144908) (c!379034 lt!868954)))))

(declare-fun b!2384221 () Bool)

(declare-fun res!1012694 () Bool)

(assert (=> b!2384221 (=> res!1012694 e!1520428)))

(assert (=> b!2384221 (= res!1012694 (not (isEmpty!16076 (tail!3481 call!144908))))))

(declare-fun bm!144945 () Bool)

(assert (=> bm!144945 (= call!144950 (isEmpty!16076 call!144908))))

(declare-fun b!2384222 () Bool)

(declare-fun res!1012699 () Bool)

(assert (=> b!2384222 (=> (not res!1012699) (not e!1520433))))

(assert (=> b!2384222 (= res!1012699 (not call!144950))))

(declare-fun b!2384223 () Bool)

(assert (=> b!2384223 (= e!1520434 (nullable!2038 lt!868954))))

(assert (= (and d!697203 c!379115) b!2384223))

(assert (= (and d!697203 (not c!379115)) b!2384216))

(assert (= (and d!697203 c!379117) b!2384212))

(assert (= (and d!697203 (not c!379117)) b!2384214))

(assert (= (and b!2384214 c!379116) b!2384218))

(assert (= (and b!2384214 (not c!379116)) b!2384217))

(assert (= (and b!2384217 (not res!1012696)) b!2384213))

(assert (= (and b!2384213 res!1012698) b!2384222))

(assert (= (and b!2384222 res!1012699) b!2384211))

(assert (= (and b!2384211 res!1012697) b!2384220))

(assert (= (and b!2384213 (not res!1012700)) b!2384219))

(assert (= (and b!2384219 res!1012695) b!2384210))

(assert (= (and b!2384210 (not res!1012701)) b!2384221))

(assert (= (and b!2384221 (not res!1012694)) b!2384215))

(assert (= (or b!2384212 b!2384210 b!2384222) bm!144945))

(declare-fun m!2787001 () Bool)

(assert (=> b!2384216 m!2787001))

(assert (=> b!2384216 m!2787001))

(declare-fun m!2787003 () Bool)

(assert (=> b!2384216 m!2787003))

(declare-fun m!2787005 () Bool)

(assert (=> b!2384216 m!2787005))

(assert (=> b!2384216 m!2787003))

(assert (=> b!2384216 m!2787005))

(declare-fun m!2787007 () Bool)

(assert (=> b!2384216 m!2787007))

(declare-fun m!2787009 () Bool)

(assert (=> b!2384223 m!2787009))

(assert (=> b!2384221 m!2787005))

(assert (=> b!2384221 m!2787005))

(declare-fun m!2787011 () Bool)

(assert (=> b!2384221 m!2787011))

(assert (=> b!2384215 m!2787001))

(assert (=> b!2384220 m!2787001))

(declare-fun m!2787013 () Bool)

(assert (=> bm!144945 m!2787013))

(assert (=> b!2384211 m!2787005))

(assert (=> b!2384211 m!2787005))

(assert (=> b!2384211 m!2787011))

(assert (=> d!697203 m!2787013))

(declare-fun m!2787015 () Bool)

(assert (=> d!697203 m!2787015))

(assert (=> b!2383826 d!697203))

(declare-fun d!697205 () Bool)

(assert (=> d!697205 (isDefined!4359 (findConcatSeparation!639 lt!868953 EmptyExpr!6988 Nil!28117 s!9460 s!9460))))

(declare-fun lt!869058 () Unit!41063)

(declare-fun choose!13977 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> d!697205 (= lt!869058 (choose!13977 lt!868953 EmptyExpr!6988 s!9460))))

(assert (=> d!697205 (validRegex!2713 lt!868953)))

(assert (=> d!697205 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!19 lt!868953 EmptyExpr!6988 s!9460) lt!869058)))

(declare-fun bs!462074 () Bool)

(assert (= bs!462074 d!697205))

(assert (=> bs!462074 m!2786739))

(assert (=> bs!462074 m!2786739))

(declare-fun m!2787017 () Bool)

(assert (=> bs!462074 m!2787017))

(declare-fun m!2787019 () Bool)

(assert (=> bs!462074 m!2787019))

(assert (=> bs!462074 m!2786741))

(assert (=> b!2383826 d!697205))

(declare-fun b!2384234 () Bool)

(declare-fun res!1012707 () Bool)

(declare-fun e!1520445 () Bool)

(assert (=> b!2384234 (=> res!1012707 e!1520445)))

(assert (=> b!2384234 (= res!1012707 (not (is-Concat!11624 lt!868947)))))

(declare-fun e!1520447 () Bool)

(assert (=> b!2384234 (= e!1520447 e!1520445)))

(declare-fun d!697207 () Bool)

(declare-fun res!1012705 () Bool)

(declare-fun e!1520446 () Bool)

(assert (=> d!697207 (=> res!1012705 e!1520446)))

(assert (=> d!697207 (= res!1012705 (is-ElementMatch!6988 lt!868947))))

(assert (=> d!697207 (= (validRegex!2713 lt!868947) e!1520446)))

(declare-fun b!2384235 () Bool)

(declare-fun e!1520443 () Bool)

(declare-fun call!144952 () Bool)

(assert (=> b!2384235 (= e!1520443 call!144952)))

(declare-fun bm!144946 () Bool)

(declare-fun c!379122 () Bool)

(declare-fun c!379123 () Bool)

(declare-fun call!144951 () Bool)

(assert (=> bm!144946 (= call!144951 (validRegex!2713 (ite c!379123 (reg!7317 lt!868947) (ite c!379122 (regOne!14489 lt!868947) (regTwo!14488 lt!868947)))))))

(declare-fun bm!144947 () Bool)

(declare-fun call!144953 () Bool)

(assert (=> bm!144947 (= call!144953 call!144951)))

(declare-fun b!2384236 () Bool)

(declare-fun res!1012704 () Bool)

(assert (=> b!2384236 (=> (not res!1012704) (not e!1520443))))

(assert (=> b!2384236 (= res!1012704 call!144953)))

(assert (=> b!2384236 (= e!1520447 e!1520443)))

(declare-fun b!2384237 () Bool)

(declare-fun e!1520441 () Bool)

(assert (=> b!2384237 (= e!1520441 call!144953)))

(declare-fun b!2384238 () Bool)

(assert (=> b!2384238 (= e!1520445 e!1520441)))

(declare-fun res!1012708 () Bool)

(assert (=> b!2384238 (=> (not res!1012708) (not e!1520441))))

(assert (=> b!2384238 (= res!1012708 call!144952)))

(declare-fun b!2384239 () Bool)

(declare-fun e!1520442 () Bool)

(assert (=> b!2384239 (= e!1520442 call!144951)))

(declare-fun b!2384240 () Bool)

(declare-fun e!1520444 () Bool)

(assert (=> b!2384240 (= e!1520444 e!1520442)))

(declare-fun res!1012706 () Bool)

(assert (=> b!2384240 (= res!1012706 (not (nullable!2038 (reg!7317 lt!868947))))))

(assert (=> b!2384240 (=> (not res!1012706) (not e!1520442))))

(declare-fun bm!144948 () Bool)

(assert (=> bm!144948 (= call!144952 (validRegex!2713 (ite c!379122 (regTwo!14489 lt!868947) (regOne!14488 lt!868947))))))

(declare-fun b!2384241 () Bool)

(assert (=> b!2384241 (= e!1520444 e!1520447)))

(assert (=> b!2384241 (= c!379122 (is-Union!6988 lt!868947))))

(declare-fun b!2384242 () Bool)

(assert (=> b!2384242 (= e!1520446 e!1520444)))

(assert (=> b!2384242 (= c!379123 (is-Star!6988 lt!868947))))

(assert (= (and d!697207 (not res!1012705)) b!2384242))

(assert (= (and b!2384242 c!379123) b!2384240))

(assert (= (and b!2384242 (not c!379123)) b!2384241))

(assert (= (and b!2384240 res!1012706) b!2384239))

(assert (= (and b!2384241 c!379122) b!2384236))

(assert (= (and b!2384241 (not c!379122)) b!2384234))

(assert (= (and b!2384236 res!1012704) b!2384235))

(assert (= (and b!2384234 (not res!1012707)) b!2384238))

(assert (= (and b!2384238 res!1012708) b!2384237))

(assert (= (or b!2384236 b!2384237) bm!144947))

(assert (= (or b!2384235 b!2384238) bm!144948))

(assert (= (or b!2384239 bm!144947) bm!144946))

(declare-fun m!2787021 () Bool)

(assert (=> bm!144946 m!2787021))

(declare-fun m!2787023 () Bool)

(assert (=> b!2384240 m!2787023))

(declare-fun m!2787025 () Bool)

(assert (=> bm!144948 m!2787025))

(assert (=> b!2383823 d!697207))

(declare-fun b!2384247 () Bool)

(declare-fun e!1520453 () Bool)

(assert (=> b!2384247 (= e!1520453 (matchR!3105 lt!868947 s!9460))))

(declare-fun b!2384248 () Bool)

(declare-fun e!1520450 () Option!5531)

(assert (=> b!2384248 (= e!1520450 (Some!5530 (tuple2!27841 Nil!28117 s!9460)))))

(declare-fun b!2384249 () Bool)

(declare-fun res!1012714 () Bool)

(declare-fun e!1520452 () Bool)

(assert (=> b!2384249 (=> (not res!1012714) (not e!1520452))))

(declare-fun lt!869060 () Option!5531)

(assert (=> b!2384249 (= res!1012714 (matchR!3105 lt!868947 (_2!16461 (get!8581 lt!869060))))))

(declare-fun d!697209 () Bool)

(declare-fun e!1520454 () Bool)

(assert (=> d!697209 e!1520454))

(declare-fun res!1012713 () Bool)

(assert (=> d!697209 (=> res!1012713 e!1520454)))

(assert (=> d!697209 (= res!1012713 e!1520452)))

(declare-fun res!1012715 () Bool)

(assert (=> d!697209 (=> (not res!1012715) (not e!1520452))))

(assert (=> d!697209 (= res!1012715 (isDefined!4359 lt!869060))))

(assert (=> d!697209 (= lt!869060 e!1520450)))

(declare-fun c!379125 () Bool)

(assert (=> d!697209 (= c!379125 e!1520453)))

(declare-fun res!1012711 () Bool)

(assert (=> d!697209 (=> (not res!1012711) (not e!1520453))))

(assert (=> d!697209 (= res!1012711 (matchR!3105 lt!868953 Nil!28117))))

(assert (=> d!697209 (validRegex!2713 lt!868953)))

(assert (=> d!697209 (= (findConcatSeparation!639 lt!868953 lt!868947 Nil!28117 s!9460 s!9460) lt!869060)))

(declare-fun b!2384251 () Bool)

(declare-fun e!1520451 () Option!5531)

(assert (=> b!2384251 (= e!1520450 e!1520451)))

(declare-fun c!379124 () Bool)

(assert (=> b!2384251 (= c!379124 (is-Nil!28117 s!9460))))

(declare-fun b!2384252 () Bool)

(declare-fun res!1012712 () Bool)

(assert (=> b!2384252 (=> (not res!1012712) (not e!1520452))))

(assert (=> b!2384252 (= res!1012712 (matchR!3105 lt!868953 (_1!16461 (get!8581 lt!869060))))))

(declare-fun b!2384254 () Bool)

(declare-fun lt!869061 () Unit!41063)

(declare-fun lt!869059 () Unit!41063)

(assert (=> b!2384254 (= lt!869061 lt!869059)))

(assert (=> b!2384254 (= (++!6943 (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460)) s!9460)))

(assert (=> b!2384254 (= lt!869059 (lemmaMoveElementToOtherListKeepsConcatEq!585 Nil!28117 (h!33518 s!9460) (t!208192 s!9460) s!9460))))

(assert (=> b!2384254 (= e!1520451 (findConcatSeparation!639 lt!868953 lt!868947 (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460) s!9460))))

(declare-fun b!2384255 () Bool)

(assert (=> b!2384255 (= e!1520451 None!5530)))

(declare-fun b!2384256 () Bool)

(assert (=> b!2384256 (= e!1520454 (not (isDefined!4359 lt!869060)))))

(declare-fun b!2384257 () Bool)

(assert (=> b!2384257 (= e!1520452 (= (++!6943 (_1!16461 (get!8581 lt!869060)) (_2!16461 (get!8581 lt!869060))) s!9460))))

(assert (= (and d!697209 res!1012711) b!2384247))

(assert (= (and d!697209 c!379125) b!2384248))

(assert (= (and d!697209 (not c!379125)) b!2384251))

(assert (= (and b!2384251 c!379124) b!2384255))

(assert (= (and b!2384251 (not c!379124)) b!2384254))

(assert (= (and d!697209 res!1012715) b!2384252))

(assert (= (and b!2384252 res!1012712) b!2384249))

(assert (= (and b!2384249 res!1012714) b!2384257))

(assert (= (and d!697209 (not res!1012713)) b!2384256))

(declare-fun m!2787027 () Bool)

(assert (=> b!2384249 m!2787027))

(declare-fun m!2787029 () Bool)

(assert (=> b!2384249 m!2787029))

(assert (=> b!2384257 m!2787027))

(declare-fun m!2787031 () Bool)

(assert (=> b!2384257 m!2787031))

(assert (=> b!2384254 m!2786945))

(assert (=> b!2384254 m!2786945))

(assert (=> b!2384254 m!2786947))

(assert (=> b!2384254 m!2786949))

(assert (=> b!2384254 m!2786945))

(declare-fun m!2787033 () Bool)

(assert (=> b!2384254 m!2787033))

(declare-fun m!2787035 () Bool)

(assert (=> b!2384256 m!2787035))

(declare-fun m!2787037 () Bool)

(assert (=> b!2384247 m!2787037))

(assert (=> b!2384252 m!2787027))

(declare-fun m!2787039 () Bool)

(assert (=> b!2384252 m!2787039))

(assert (=> d!697209 m!2787035))

(assert (=> d!697209 m!2786959))

(assert (=> d!697209 m!2786741))

(assert (=> bm!144901 d!697209))

(declare-fun d!697211 () Bool)

(assert (=> d!697211 (= (isDefined!4359 (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) Nil!28117 s!9460 s!9460)) (not (isEmpty!16077 (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) Nil!28117 s!9460 s!9460))))))

(declare-fun bs!462075 () Bool)

(assert (= bs!462075 d!697211))

(assert (=> bs!462075 m!2786723))

(declare-fun m!2787041 () Bool)

(assert (=> bs!462075 m!2787041))

(assert (=> b!2383815 d!697211))

(declare-fun d!697213 () Bool)

(declare-fun choose!13978 (Int) Bool)

(assert (=> d!697213 (= (Exists!1050 lambda!88920) (choose!13978 lambda!88920))))

(declare-fun bs!462076 () Bool)

(assert (= bs!462076 d!697213))

(declare-fun m!2787043 () Bool)

(assert (=> bs!462076 m!2787043))

(assert (=> b!2383815 d!697213))

(declare-fun bs!462078 () Bool)

(declare-fun d!697215 () Bool)

(assert (= bs!462078 (and d!697215 b!2383815)))

(declare-fun lambda!88947 () Int)

(assert (=> bs!462078 (= lambda!88947 lambda!88919)))

(assert (=> bs!462078 (not (= lambda!88947 lambda!88920))))

(declare-fun bs!462079 () Bool)

(assert (= bs!462079 (and d!697215 b!2384177)))

(assert (=> bs!462079 (not (= lambda!88947 lambda!88940))))

(declare-fun bs!462080 () Bool)

(assert (= bs!462080 (and d!697215 b!2384172)))

(assert (=> bs!462080 (not (= lambda!88947 lambda!88941))))

(assert (=> d!697215 true))

(assert (=> d!697215 true))

(assert (=> d!697215 true))

(assert (=> d!697215 (= (isDefined!4359 (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) Nil!28117 s!9460 s!9460)) (Exists!1050 lambda!88947))))

(declare-fun lt!869065 () Unit!41063)

(declare-fun choose!13979 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> d!697215 (= lt!869065 (choose!13979 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460))))

(assert (=> d!697215 (validRegex!2713 (regOne!14488 r!13927))))

(assert (=> d!697215 (= (lemmaFindConcatSeparationEquivalentToExists!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460) lt!869065)))

(declare-fun bs!462081 () Bool)

(assert (= bs!462081 d!697215))

(declare-fun m!2787059 () Bool)

(assert (=> bs!462081 m!2787059))

(assert (=> bs!462081 m!2786723))

(assert (=> bs!462081 m!2786725))

(declare-fun m!2787061 () Bool)

(assert (=> bs!462081 m!2787061))

(declare-fun m!2787063 () Bool)

(assert (=> bs!462081 m!2787063))

(assert (=> bs!462081 m!2786723))

(assert (=> b!2383815 d!697215))

(declare-fun bs!462082 () Bool)

(declare-fun d!697219 () Bool)

(assert (= bs!462082 (and d!697219 b!2384177)))

(declare-fun lambda!88952 () Int)

(assert (=> bs!462082 (not (= lambda!88952 lambda!88940))))

(declare-fun bs!462083 () Bool)

(assert (= bs!462083 (and d!697219 b!2383815)))

(assert (=> bs!462083 (not (= lambda!88952 lambda!88920))))

(declare-fun bs!462084 () Bool)

(assert (= bs!462084 (and d!697219 b!2384172)))

(assert (=> bs!462084 (not (= lambda!88952 lambda!88941))))

(assert (=> bs!462083 (= lambda!88952 lambda!88919)))

(declare-fun bs!462085 () Bool)

(assert (= bs!462085 (and d!697219 d!697215)))

(assert (=> bs!462085 (= lambda!88952 lambda!88947)))

(assert (=> d!697219 true))

(assert (=> d!697219 true))

(assert (=> d!697219 true))

(declare-fun lambda!88953 () Int)

(assert (=> bs!462082 (not (= lambda!88953 lambda!88940))))

(assert (=> bs!462083 (= lambda!88953 lambda!88920)))

(assert (=> bs!462084 (= lambda!88953 lambda!88941)))

(declare-fun bs!462086 () Bool)

(assert (= bs!462086 d!697219))

(assert (=> bs!462086 (not (= lambda!88953 lambda!88952))))

(assert (=> bs!462083 (not (= lambda!88953 lambda!88919))))

(assert (=> bs!462085 (not (= lambda!88953 lambda!88947))))

(assert (=> d!697219 true))

(assert (=> d!697219 true))

(assert (=> d!697219 true))

(assert (=> d!697219 (= (Exists!1050 lambda!88952) (Exists!1050 lambda!88953))))

(declare-fun lt!869071 () Unit!41063)

(declare-fun choose!13980 (Regex!6988 Regex!6988 List!28215) Unit!41063)

(assert (=> d!697219 (= lt!869071 (choose!13980 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460))))

(assert (=> d!697219 (validRegex!2713 (regOne!14488 r!13927))))

(assert (=> d!697219 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!389 (regOne!14488 r!13927) (regTwo!14488 r!13927) s!9460) lt!869071)))

(declare-fun m!2787079 () Bool)

(assert (=> bs!462086 m!2787079))

(declare-fun m!2787081 () Bool)

(assert (=> bs!462086 m!2787081))

(declare-fun m!2787083 () Bool)

(assert (=> bs!462086 m!2787083))

(assert (=> bs!462086 m!2787061))

(assert (=> b!2383815 d!697219))

(declare-fun b!2384311 () Bool)

(declare-fun e!1520493 () Bool)

(assert (=> b!2384311 (= e!1520493 (matchR!3105 (regTwo!14488 r!13927) s!9460))))

(declare-fun b!2384312 () Bool)

(declare-fun e!1520490 () Option!5531)

(assert (=> b!2384312 (= e!1520490 (Some!5530 (tuple2!27841 Nil!28117 s!9460)))))

(declare-fun b!2384313 () Bool)

(declare-fun res!1012748 () Bool)

(declare-fun e!1520492 () Bool)

(assert (=> b!2384313 (=> (not res!1012748) (not e!1520492))))

(declare-fun lt!869073 () Option!5531)

(assert (=> b!2384313 (= res!1012748 (matchR!3105 (regTwo!14488 r!13927) (_2!16461 (get!8581 lt!869073))))))

(declare-fun d!697223 () Bool)

(declare-fun e!1520494 () Bool)

(assert (=> d!697223 e!1520494))

(declare-fun res!1012747 () Bool)

(assert (=> d!697223 (=> res!1012747 e!1520494)))

(assert (=> d!697223 (= res!1012747 e!1520492)))

(declare-fun res!1012749 () Bool)

(assert (=> d!697223 (=> (not res!1012749) (not e!1520492))))

(assert (=> d!697223 (= res!1012749 (isDefined!4359 lt!869073))))

(assert (=> d!697223 (= lt!869073 e!1520490)))

(declare-fun c!379141 () Bool)

(assert (=> d!697223 (= c!379141 e!1520493)))

(declare-fun res!1012745 () Bool)

(assert (=> d!697223 (=> (not res!1012745) (not e!1520493))))

(assert (=> d!697223 (= res!1012745 (matchR!3105 (regOne!14488 r!13927) Nil!28117))))

(assert (=> d!697223 (validRegex!2713 (regOne!14488 r!13927))))

(assert (=> d!697223 (= (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) Nil!28117 s!9460 s!9460) lt!869073)))

(declare-fun b!2384314 () Bool)

(declare-fun e!1520491 () Option!5531)

(assert (=> b!2384314 (= e!1520490 e!1520491)))

(declare-fun c!379140 () Bool)

(assert (=> b!2384314 (= c!379140 (is-Nil!28117 s!9460))))

(declare-fun b!2384315 () Bool)

(declare-fun res!1012746 () Bool)

(assert (=> b!2384315 (=> (not res!1012746) (not e!1520492))))

(assert (=> b!2384315 (= res!1012746 (matchR!3105 (regOne!14488 r!13927) (_1!16461 (get!8581 lt!869073))))))

(declare-fun b!2384316 () Bool)

(declare-fun lt!869074 () Unit!41063)

(declare-fun lt!869072 () Unit!41063)

(assert (=> b!2384316 (= lt!869074 lt!869072)))

(assert (=> b!2384316 (= (++!6943 (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460)) s!9460)))

(assert (=> b!2384316 (= lt!869072 (lemmaMoveElementToOtherListKeepsConcatEq!585 Nil!28117 (h!33518 s!9460) (t!208192 s!9460) s!9460))))

(assert (=> b!2384316 (= e!1520491 (findConcatSeparation!639 (regOne!14488 r!13927) (regTwo!14488 r!13927) (++!6943 Nil!28117 (Cons!28117 (h!33518 s!9460) Nil!28117)) (t!208192 s!9460) s!9460))))

(declare-fun b!2384317 () Bool)

(assert (=> b!2384317 (= e!1520491 None!5530)))

(declare-fun b!2384318 () Bool)

(assert (=> b!2384318 (= e!1520494 (not (isDefined!4359 lt!869073)))))

(declare-fun b!2384319 () Bool)

(assert (=> b!2384319 (= e!1520492 (= (++!6943 (_1!16461 (get!8581 lt!869073)) (_2!16461 (get!8581 lt!869073))) s!9460))))

(assert (= (and d!697223 res!1012745) b!2384311))

(assert (= (and d!697223 c!379141) b!2384312))

(assert (= (and d!697223 (not c!379141)) b!2384314))

(assert (= (and b!2384314 c!379140) b!2384317))

(assert (= (and b!2384314 (not c!379140)) b!2384316))

(assert (= (and d!697223 res!1012749) b!2384315))

(assert (= (and b!2384315 res!1012746) b!2384313))

(assert (= (and b!2384313 res!1012748) b!2384319))

(assert (= (and d!697223 (not res!1012747)) b!2384318))

(declare-fun m!2787085 () Bool)

(assert (=> b!2384313 m!2787085))

(declare-fun m!2787087 () Bool)

(assert (=> b!2384313 m!2787087))

(assert (=> b!2384319 m!2787085))

(declare-fun m!2787089 () Bool)

(assert (=> b!2384319 m!2787089))

(assert (=> b!2384316 m!2786945))

(assert (=> b!2384316 m!2786945))

(assert (=> b!2384316 m!2786947))

(assert (=> b!2384316 m!2786949))

(assert (=> b!2384316 m!2786945))

(declare-fun m!2787091 () Bool)

(assert (=> b!2384316 m!2787091))

(declare-fun m!2787093 () Bool)

(assert (=> b!2384318 m!2787093))

(declare-fun m!2787095 () Bool)

(assert (=> b!2384311 m!2787095))

(assert (=> b!2384315 m!2787085))

(declare-fun m!2787097 () Bool)

(assert (=> b!2384315 m!2787097))

(assert (=> d!697223 m!2787093))

(declare-fun m!2787099 () Bool)

(assert (=> d!697223 m!2787099))

(assert (=> d!697223 m!2787061))

(assert (=> b!2383815 d!697223))

(declare-fun d!697225 () Bool)

(assert (=> d!697225 (= (Exists!1050 lambda!88919) (choose!13978 lambda!88919))))

(declare-fun bs!462087 () Bool)

(assert (= bs!462087 d!697225))

(declare-fun m!2787101 () Bool)

(assert (=> bs!462087 m!2787101))

(assert (=> b!2383815 d!697225))

(declare-fun d!697227 () Bool)

(declare-fun res!1012754 () Bool)

(declare-fun e!1520499 () Bool)

(assert (=> d!697227 (=> res!1012754 e!1520499)))

(assert (=> d!697227 (= res!1012754 (is-Nil!28116 l!9164))))

(assert (=> d!697227 (= (forall!5622 l!9164 lambda!88918) e!1520499)))

(declare-fun b!2384324 () Bool)

(declare-fun e!1520500 () Bool)

(assert (=> b!2384324 (= e!1520499 e!1520500)))

(declare-fun res!1012755 () Bool)

(assert (=> b!2384324 (=> (not res!1012755) (not e!1520500))))

(declare-fun dynLambda!12105 (Int Regex!6988) Bool)

(assert (=> b!2384324 (= res!1012755 (dynLambda!12105 lambda!88918 (h!33517 l!9164)))))

(declare-fun b!2384325 () Bool)

(assert (=> b!2384325 (= e!1520500 (forall!5622 (t!208191 l!9164) lambda!88918))))

(assert (= (and d!697227 (not res!1012754)) b!2384324))

(assert (= (and b!2384324 res!1012755) b!2384325))

(declare-fun b_lambda!74099 () Bool)

(assert (=> (not b_lambda!74099) (not b!2384324)))

(declare-fun m!2787103 () Bool)

(assert (=> b!2384324 m!2787103))

(declare-fun m!2787105 () Bool)

(assert (=> b!2384325 m!2787105))

(assert (=> start!233922 d!697227))

(declare-fun d!697229 () Bool)

(assert (=> d!697229 (= (isDefined!4359 (ite c!379033 call!144907 call!144904)) (not (isEmpty!16077 (ite c!379033 call!144907 call!144904))))))

(declare-fun bs!462088 () Bool)

(assert (= bs!462088 d!697229))

(declare-fun m!2787107 () Bool)

(assert (=> bs!462088 m!2787107))

(assert (=> bm!144902 d!697229))

(declare-fun b!2384347 () Bool)

(declare-fun e!1520510 () Bool)

(declare-fun tp!760647 () Bool)

(assert (=> b!2384347 (= e!1520510 tp!760647)))

(declare-fun b!2384348 () Bool)

(declare-fun tp!760648 () Bool)

(declare-fun tp!760649 () Bool)

(assert (=> b!2384348 (= e!1520510 (and tp!760648 tp!760649))))

(declare-fun b!2384345 () Bool)

(assert (=> b!2384345 (= e!1520510 tp_is_empty!11389)))

(assert (=> b!2383811 (= tp!760611 e!1520510)))

(declare-fun b!2384346 () Bool)

(declare-fun tp!760650 () Bool)

(declare-fun tp!760646 () Bool)

(assert (=> b!2384346 (= e!1520510 (and tp!760650 tp!760646))))

(assert (= (and b!2383811 (is-ElementMatch!6988 (h!33517 l!9164))) b!2384345))

(assert (= (and b!2383811 (is-Concat!11624 (h!33517 l!9164))) b!2384346))

(assert (= (and b!2383811 (is-Star!6988 (h!33517 l!9164))) b!2384347))

(assert (= (and b!2383811 (is-Union!6988 (h!33517 l!9164))) b!2384348))

(declare-fun b!2384353 () Bool)

(declare-fun e!1520513 () Bool)

(declare-fun tp!760655 () Bool)

(declare-fun tp!760656 () Bool)

(assert (=> b!2384353 (= e!1520513 (and tp!760655 tp!760656))))

(assert (=> b!2383811 (= tp!760604 e!1520513)))

(assert (= (and b!2383811 (is-Cons!28116 (t!208191 l!9164))) b!2384353))

(declare-fun b!2384356 () Bool)

(declare-fun e!1520514 () Bool)

(declare-fun tp!760658 () Bool)

(assert (=> b!2384356 (= e!1520514 tp!760658)))

(declare-fun b!2384357 () Bool)

(declare-fun tp!760659 () Bool)

(declare-fun tp!760660 () Bool)

(assert (=> b!2384357 (= e!1520514 (and tp!760659 tp!760660))))

(declare-fun b!2384354 () Bool)

(assert (=> b!2384354 (= e!1520514 tp_is_empty!11389)))

(assert (=> b!2383822 (= tp!760610 e!1520514)))

(declare-fun b!2384355 () Bool)

(declare-fun tp!760661 () Bool)

(declare-fun tp!760657 () Bool)

(assert (=> b!2384355 (= e!1520514 (and tp!760661 tp!760657))))

(assert (= (and b!2383822 (is-ElementMatch!6988 (regOne!14489 r!13927))) b!2384354))

(assert (= (and b!2383822 (is-Concat!11624 (regOne!14489 r!13927))) b!2384355))

(assert (= (and b!2383822 (is-Star!6988 (regOne!14489 r!13927))) b!2384356))

(assert (= (and b!2383822 (is-Union!6988 (regOne!14489 r!13927))) b!2384357))

(declare-fun b!2384360 () Bool)

(declare-fun e!1520515 () Bool)

(declare-fun tp!760663 () Bool)

(assert (=> b!2384360 (= e!1520515 tp!760663)))

(declare-fun b!2384361 () Bool)

(declare-fun tp!760664 () Bool)

(declare-fun tp!760665 () Bool)

(assert (=> b!2384361 (= e!1520515 (and tp!760664 tp!760665))))

(declare-fun b!2384358 () Bool)

(assert (=> b!2384358 (= e!1520515 tp_is_empty!11389)))

(assert (=> b!2383822 (= tp!760606 e!1520515)))

(declare-fun b!2384359 () Bool)

(declare-fun tp!760666 () Bool)

(declare-fun tp!760662 () Bool)

(assert (=> b!2384359 (= e!1520515 (and tp!760666 tp!760662))))

(assert (= (and b!2383822 (is-ElementMatch!6988 (regTwo!14489 r!13927))) b!2384358))

(assert (= (and b!2383822 (is-Concat!11624 (regTwo!14489 r!13927))) b!2384359))

(assert (= (and b!2383822 (is-Star!6988 (regTwo!14489 r!13927))) b!2384360))

(assert (= (and b!2383822 (is-Union!6988 (regTwo!14489 r!13927))) b!2384361))

(declare-fun b!2384364 () Bool)

(declare-fun e!1520516 () Bool)

(declare-fun tp!760668 () Bool)

(assert (=> b!2384364 (= e!1520516 tp!760668)))

(declare-fun b!2384365 () Bool)

(declare-fun tp!760669 () Bool)

(declare-fun tp!760670 () Bool)

(assert (=> b!2384365 (= e!1520516 (and tp!760669 tp!760670))))

(declare-fun b!2384362 () Bool)

(assert (=> b!2384362 (= e!1520516 tp_is_empty!11389)))

(assert (=> b!2383824 (= tp!760605 e!1520516)))

(declare-fun b!2384363 () Bool)

(declare-fun tp!760671 () Bool)

(declare-fun tp!760667 () Bool)

(assert (=> b!2384363 (= e!1520516 (and tp!760671 tp!760667))))

(assert (= (and b!2383824 (is-ElementMatch!6988 (regOne!14488 r!13927))) b!2384362))

(assert (= (and b!2383824 (is-Concat!11624 (regOne!14488 r!13927))) b!2384363))

(assert (= (and b!2383824 (is-Star!6988 (regOne!14488 r!13927))) b!2384364))

(assert (= (and b!2383824 (is-Union!6988 (regOne!14488 r!13927))) b!2384365))

(declare-fun b!2384368 () Bool)

(declare-fun e!1520517 () Bool)

(declare-fun tp!760673 () Bool)

(assert (=> b!2384368 (= e!1520517 tp!760673)))

(declare-fun b!2384369 () Bool)

(declare-fun tp!760674 () Bool)

(declare-fun tp!760675 () Bool)

(assert (=> b!2384369 (= e!1520517 (and tp!760674 tp!760675))))

(declare-fun b!2384366 () Bool)

(assert (=> b!2384366 (= e!1520517 tp_is_empty!11389)))

(assert (=> b!2383824 (= tp!760607 e!1520517)))

(declare-fun b!2384367 () Bool)

(declare-fun tp!760676 () Bool)

(declare-fun tp!760672 () Bool)

(assert (=> b!2384367 (= e!1520517 (and tp!760676 tp!760672))))

(assert (= (and b!2383824 (is-ElementMatch!6988 (regTwo!14488 r!13927))) b!2384366))

(assert (= (and b!2383824 (is-Concat!11624 (regTwo!14488 r!13927))) b!2384367))

(assert (= (and b!2383824 (is-Star!6988 (regTwo!14488 r!13927))) b!2384368))

(assert (= (and b!2383824 (is-Union!6988 (regTwo!14488 r!13927))) b!2384369))

(declare-fun b!2384372 () Bool)

(declare-fun e!1520518 () Bool)

(declare-fun tp!760678 () Bool)

(assert (=> b!2384372 (= e!1520518 tp!760678)))

(declare-fun b!2384373 () Bool)

(declare-fun tp!760679 () Bool)

(declare-fun tp!760680 () Bool)

(assert (=> b!2384373 (= e!1520518 (and tp!760679 tp!760680))))

(declare-fun b!2384370 () Bool)

(assert (=> b!2384370 (= e!1520518 tp_is_empty!11389)))

(assert (=> b!2383828 (= tp!760608 e!1520518)))

(declare-fun b!2384371 () Bool)

(declare-fun tp!760681 () Bool)

(declare-fun tp!760677 () Bool)

(assert (=> b!2384371 (= e!1520518 (and tp!760681 tp!760677))))

(assert (= (and b!2383828 (is-ElementMatch!6988 (reg!7317 r!13927))) b!2384370))

(assert (= (and b!2383828 (is-Concat!11624 (reg!7317 r!13927))) b!2384371))

(assert (= (and b!2383828 (is-Star!6988 (reg!7317 r!13927))) b!2384372))

(assert (= (and b!2383828 (is-Union!6988 (reg!7317 r!13927))) b!2384373))

(declare-fun b!2384378 () Bool)

(declare-fun e!1520521 () Bool)

(declare-fun tp!760684 () Bool)

(assert (=> b!2384378 (= e!1520521 (and tp_is_empty!11389 tp!760684))))

(assert (=> b!2383825 (= tp!760609 e!1520521)))

(assert (= (and b!2383825 (is-Cons!28117 (t!208192 s!9460))) b!2384378))

(declare-fun b_lambda!74101 () Bool)

(assert (= b_lambda!74099 (or start!233922 b_lambda!74101)))

(declare-fun bs!462089 () Bool)

(declare-fun d!697233 () Bool)

(assert (= bs!462089 (and d!697233 start!233922)))

(assert (=> bs!462089 (= (dynLambda!12105 lambda!88918 (h!33517 l!9164)) (validRegex!2713 (h!33517 l!9164)))))

(declare-fun m!2787115 () Bool)

(assert (=> bs!462089 m!2787115))

(assert (=> b!2384324 d!697233))

(push 1)

(assert (not b!2384203))

(assert (not b!2384010))

(assert (not b!2384247))

(assert (not b!2384068))

(assert (not d!697215))

(assert tp_is_empty!11389)

(assert (not d!697219))

(assert (not d!697201))

(assert (not b!2383956))

(assert (not b!2384103))

(assert (not bm!144934))

(assert (not d!697171))

(assert (not b!2384104))

(assert (not b!2384360))

(assert (not d!697225))

(assert (not b!2384353))

(assert (not b!2384215))

(assert (not b!2384240))

(assert (not d!697173))

(assert (not d!697163))

(assert (not b!2383958))

(assert (not b!2384209))

(assert (not bm!144933))

(assert (not b!2384069))

(assert (not d!697205))

(assert (not b!2384071))

(assert (not b!2384361))

(assert (not b!2384198))

(assert (not b!2384206))

(assert (not b!2384204))

(assert (not bm!144924))

(assert (not b!2384106))

(assert (not bm!144941))

(assert (not b!2384014))

(assert (not bm!144948))

(assert (not d!697209))

(assert (not b!2383953))

(assert (not b!2384099))

(assert (not b!2383939))

(assert (not b!2384348))

(assert (not d!697175))

(assert (not b!2384101))

(assert (not b!2384257))

(assert (not b!2383943))

(assert (not b!2384199))

(assert (not b!2384359))

(assert (not b!2384319))

(assert (not d!697155))

(assert (not b!2384368))

(assert (not b!2384254))

(assert (not b!2384220))

(assert (not d!697229))

(assert (not b!2384316))

(assert (not b!2384311))

(assert (not bs!462089))

(assert (not b!2383941))

(assert (not b!2384063))

(assert (not b!2384363))

(assert (not d!697223))

(assert (not b!2383957))

(assert (not b!2383951))

(assert (not b!2384313))

(assert (not b!2384252))

(assert (not b!2384194))

(assert (not b!2384369))

(assert (not b!2384175))

(assert (not b!2383947))

(assert (not b!2384249))

(assert (not b!2383948))

(assert (not b!2384015))

(assert (not b!2384059))

(assert (not b_lambda!74101))

(assert (not b!2384064))

(assert (not b!2384355))

(assert (not b!2384221))

(assert (not b!2383952))

(assert (not b!2384357))

(assert (not b!2384373))

(assert (not b!2384346))

(assert (not b!2384223))

(assert (not b!2384347))

(assert (not bm!144942))

(assert (not b!2384107))

(assert (not b!2384256))

(assert (not b!2383946))

(assert (not d!697203))

(assert (not d!697187))

(assert (not b!2383969))

(assert (not d!697189))

(assert (not b!2384019))

(assert (not b!2384022))

(assert (not b!2384372))

(assert (not b!2383968))

(assert (not bm!144931))

(assert (not b!2384178))

(assert (not b!2383942))

(assert (not b!2384318))

(assert (not b!2384378))

(assert (not b!2384365))

(assert (not b!2384356))

(assert (not b!2384315))

(assert (not b!2384211))

(assert (not bm!144945))

(assert (not d!697213))

(assert (not b!2384055))

(assert (not b!2384364))

(assert (not d!697195))

(assert (not b!2383949))

(assert (not b!2384371))

(assert (not d!697179))

(assert (not b!2384367))

(assert (not b!2384020))

(assert (not b!2384325))

(assert (not bm!144946))

(assert (not bm!144944))

(assert (not b!2384216))

(assert (not d!697197))

(assert (not d!697211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

