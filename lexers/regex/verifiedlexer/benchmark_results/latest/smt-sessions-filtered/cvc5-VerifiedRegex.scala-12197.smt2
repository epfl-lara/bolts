; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686870 () Bool)

(assert start!686870)

(declare-fun b!7071106 () Bool)

(assert (=> b!7071106 true))

(declare-fun b!7071080 () Bool)

(assert (=> b!7071080 true))

(declare-fun b!7071101 () Bool)

(assert (=> b!7071101 true))

(declare-fun b!7071078 () Bool)

(declare-fun res!2887758 () Bool)

(declare-fun e!4251126 () Bool)

(assert (=> b!7071078 (=> res!2887758 e!4251126)))

(declare-fun lt!2545102 () Bool)

(assert (=> b!7071078 (= res!2887758 (not lt!2545102))))

(declare-fun b!7071079 () Bool)

(declare-fun e!4251120 () Bool)

(assert (=> b!7071079 (= e!4251120 e!4251126)))

(declare-fun res!2887754 () Bool)

(assert (=> b!7071079 (=> res!2887754 e!4251126)))

(declare-fun e!4251124 () Bool)

(assert (=> b!7071079 (= res!2887754 e!4251124)))

(declare-fun res!2887752 () Bool)

(assert (=> b!7071079 (=> (not res!2887752) (not e!4251124))))

(assert (=> b!7071079 (= res!2887752 (not lt!2545102))))

(declare-datatypes ((C!35550 0))(
  ( (C!35551 (val!27477 Int)) )
))
(declare-datatypes ((Regex!17640 0))(
  ( (ElementMatch!17640 (c!1318951 C!35550)) (Concat!26485 (regOne!35792 Regex!17640) (regTwo!35792 Regex!17640)) (EmptyExpr!17640) (Star!17640 (reg!17969 Regex!17640)) (EmptyLang!17640) (Union!17640 (regOne!35793 Regex!17640) (regTwo!35793 Regex!17640)) )
))
(declare-datatypes ((List!68446 0))(
  ( (Nil!68322) (Cons!68322 (h!74770 Regex!17640) (t!382229 List!68446)) )
))
(declare-datatypes ((Context!13272 0))(
  ( (Context!13273 (exprs!7136 List!68446)) )
))
(declare-fun lt!2545078 () (Set Context!13272))

(declare-datatypes ((List!68447 0))(
  ( (Nil!68323) (Cons!68323 (h!74771 C!35550) (t!382230 List!68447)) )
))
(declare-fun lt!2545071 () List!68447)

(declare-fun matchZipper!3180 ((Set Context!13272) List!68447) Bool)

(assert (=> b!7071079 (= lt!2545102 (matchZipper!3180 lt!2545078 lt!2545071))))

(declare-fun s!7408 () List!68447)

(declare-datatypes ((tuple2!68254 0))(
  ( (tuple2!68255 (_1!37430 List!68447) (_2!37430 List!68447)) )
))
(declare-fun lt!2545086 () tuple2!68254)

(assert (=> b!7071079 (= lt!2545071 (Cons!68323 (h!74771 s!7408) (_1!37430 lt!2545086)))))

(declare-fun lt!2545065 () (Set Context!13272))

(assert (=> b!7071079 (matchZipper!3180 lt!2545065 (_1!37430 lt!2545086))))

(declare-datatypes ((Unit!161990 0))(
  ( (Unit!161991) )
))
(declare-fun lt!2545073 () Unit!161990)

(declare-fun lt!2545081 () (Set Context!13272))

(declare-fun lt!2545094 () (Set Context!13272))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1653 ((Set Context!13272) (Set Context!13272) List!68447) Unit!161990)

(assert (=> b!7071079 (= lt!2545073 (lemmaZipperConcatMatchesSameAsBothZippers!1653 lt!2545081 lt!2545094 (_1!37430 lt!2545086)))))

(declare-fun e!4251135 () Bool)

(declare-fun e!4251134 () Bool)

(assert (=> b!7071080 (= e!4251135 e!4251134)))

(declare-fun res!2887759 () Bool)

(assert (=> b!7071080 (=> res!2887759 e!4251134)))

(declare-fun lt!2545090 () Context!13272)

(declare-fun lt!2545070 () Context!13272)

(declare-fun lt!2545067 () Context!13272)

(declare-fun z1!570 () (Set Context!13272))

(assert (=> b!7071080 (= res!2887759 (or (not (= lt!2545090 lt!2545067)) (not (set.member lt!2545070 z1!570))))))

(declare-fun ct2!306 () Context!13272)

(declare-fun ++!15763 (List!68446 List!68446) List!68446)

(assert (=> b!7071080 (= lt!2545090 (Context!13273 (++!15763 (exprs!7136 lt!2545070) (exprs!7136 ct2!306))))))

(declare-fun lt!2545060 () Unit!161990)

(declare-fun lambda!425307 () Int)

(declare-fun lemmaConcatPreservesForall!951 (List!68446 List!68446 Int) Unit!161990)

(assert (=> b!7071080 (= lt!2545060 (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545070) (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lambda!425306 () Int)

(declare-fun mapPost2!469 ((Set Context!13272) Int Context!13272) Context!13272)

(assert (=> b!7071080 (= lt!2545070 (mapPost2!469 z1!570 lambda!425306 lt!2545067))))

(declare-fun b!7071082 () Bool)

(declare-fun e!4251122 () Bool)

(declare-fun e!4251132 () Bool)

(assert (=> b!7071082 (= e!4251122 e!4251132)))

(declare-fun res!2887734 () Bool)

(assert (=> b!7071082 (=> res!2887734 e!4251132)))

(declare-fun lt!2545093 () (Set Context!13272))

(declare-fun lt!2545058 () (Set Context!13272))

(assert (=> b!7071082 (= res!2887734 (not (= lt!2545093 lt!2545058)))))

(declare-fun lambda!425308 () Int)

(declare-fun flatMap!2566 ((Set Context!13272) Int) (Set Context!13272))

(declare-fun derivationStepZipperUp!2224 (Context!13272 C!35550) (Set Context!13272))

(assert (=> b!7071082 (= (flatMap!2566 lt!2545078 lambda!425308) (derivationStepZipperUp!2224 lt!2545070 (h!74771 s!7408)))))

(declare-fun lt!2545083 () Unit!161990)

(declare-fun lemmaFlatMapOnSingletonSet!2075 ((Set Context!13272) Context!13272 Int) Unit!161990)

(assert (=> b!7071082 (= lt!2545083 (lemmaFlatMapOnSingletonSet!2075 lt!2545078 lt!2545070 lambda!425308))))

(assert (=> b!7071082 (= lt!2545058 (derivationStepZipperUp!2224 lt!2545070 (h!74771 s!7408)))))

(declare-fun derivationStepZipper!3090 ((Set Context!13272) C!35550) (Set Context!13272))

(assert (=> b!7071082 (= lt!2545093 (derivationStepZipper!3090 lt!2545078 (h!74771 s!7408)))))

(assert (=> b!7071082 (= lt!2545078 (set.insert lt!2545070 (as set.empty (Set Context!13272))))))

(declare-fun b!7071083 () Bool)

(declare-fun res!2887756 () Bool)

(assert (=> b!7071083 (=> res!2887756 e!4251122)))

(declare-fun ++!15764 (List!68447 List!68447) List!68447)

(assert (=> b!7071083 (= res!2887756 (not (= (++!15764 (_1!37430 lt!2545086) (_2!37430 lt!2545086)) (t!382230 s!7408))))))

(declare-fun b!7071084 () Bool)

(declare-fun e!4251129 () Bool)

(assert (=> b!7071084 (= e!4251134 e!4251129)))

(declare-fun res!2887751 () Bool)

(assert (=> b!7071084 (=> res!2887751 e!4251129)))

(declare-fun lt!2545068 () (Set Context!13272))

(declare-fun lt!2545084 () (Set Context!13272))

(assert (=> b!7071084 (= res!2887751 (not (= lt!2545068 lt!2545084)))))

(assert (=> b!7071084 (= lt!2545068 (set.insert lt!2545090 (as set.empty (Set Context!13272))))))

(declare-fun lt!2545098 () Unit!161990)

(assert (=> b!7071084 (= lt!2545098 (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545070) (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071085 () Bool)

(declare-fun res!2887736 () Bool)

(assert (=> b!7071085 (=> res!2887736 e!4251126)))

(assert (=> b!7071085 (= res!2887736 (not (= (++!15764 lt!2545071 (_2!37430 lt!2545086)) s!7408)))))

(declare-fun b!7071086 () Bool)

(declare-fun res!2887750 () Bool)

(declare-fun e!4251119 () Bool)

(assert (=> b!7071086 (=> res!2887750 e!4251119)))

(declare-fun lt!2545064 () Bool)

(assert (=> b!7071086 (= res!2887750 (not lt!2545064))))

(declare-fun b!7071087 () Bool)

(declare-fun e!4251121 () Bool)

(assert (=> b!7071087 (= e!4251119 e!4251121)))

(declare-fun res!2887744 () Bool)

(assert (=> b!7071087 (=> res!2887744 e!4251121)))

(declare-fun lt!2545100 () (Set Context!13272))

(assert (=> b!7071087 (= res!2887744 (matchZipper!3180 lt!2545100 (t!382230 s!7408)))))

(declare-fun lt!2545055 () Unit!161990)

(declare-fun lt!2545089 () List!68446)

(assert (=> b!7071087 (= lt!2545055 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071088 () Bool)

(declare-fun e!4251127 () Bool)

(assert (=> b!7071088 (= e!4251121 e!4251127)))

(declare-fun res!2887739 () Bool)

(assert (=> b!7071088 (=> res!2887739 e!4251127)))

(declare-fun lt!2545096 () Bool)

(assert (=> b!7071088 (= res!2887739 (not lt!2545096))))

(declare-fun lt!2545063 () Unit!161990)

(assert (=> b!7071088 (= lt!2545063 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lt!2545092 () Unit!161990)

(assert (=> b!7071088 (= lt!2545092 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071089 () Bool)

(declare-fun res!2887743 () Bool)

(declare-fun e!4251118 () Bool)

(assert (=> b!7071089 (=> res!2887743 e!4251118)))

(declare-fun isEmpty!39874 (List!68446) Bool)

(assert (=> b!7071089 (= res!2887743 (isEmpty!39874 (exprs!7136 lt!2545070)))))

(declare-fun b!7071090 () Bool)

(declare-fun e!4251136 () Bool)

(declare-fun tp!1942215 () Bool)

(assert (=> b!7071090 (= e!4251136 tp!1942215)))

(declare-fun b!7071091 () Bool)

(declare-fun res!2887741 () Bool)

(assert (=> b!7071091 (=> res!2887741 e!4251126)))

(declare-fun isPrefix!5853 (List!68447 List!68447) Bool)

(assert (=> b!7071091 (= res!2887741 (not (isPrefix!5853 Nil!68323 lt!2545071)))))

(declare-fun b!7071092 () Bool)

(declare-fun res!2887753 () Bool)

(declare-fun e!4251128 () Bool)

(assert (=> b!7071092 (=> (not res!2887753) (not e!4251128))))

(assert (=> b!7071092 (= res!2887753 (is-Cons!68323 s!7408))))

(declare-fun res!2887757 () Bool)

(assert (=> start!686870 (=> (not res!2887757) (not e!4251128))))

(declare-fun lt!2545066 () (Set Context!13272))

(assert (=> start!686870 (= res!2887757 (matchZipper!3180 lt!2545066 s!7408))))

(declare-fun appendTo!761 ((Set Context!13272) Context!13272) (Set Context!13272))

(assert (=> start!686870 (= lt!2545066 (appendTo!761 z1!570 ct2!306))))

(assert (=> start!686870 e!4251128))

(declare-fun condSetEmpty!50237 () Bool)

(assert (=> start!686870 (= condSetEmpty!50237 (= z1!570 (as set.empty (Set Context!13272))))))

(declare-fun setRes!50237 () Bool)

(assert (=> start!686870 setRes!50237))

(declare-fun inv!86960 (Context!13272) Bool)

(assert (=> start!686870 (and (inv!86960 ct2!306) e!4251136)))

(declare-fun e!4251125 () Bool)

(assert (=> start!686870 e!4251125))

(declare-fun b!7071081 () Bool)

(declare-fun tp_is_empty!44505 () Bool)

(declare-fun tp!1942216 () Bool)

(assert (=> b!7071081 (= e!4251125 (and tp_is_empty!44505 tp!1942216))))

(declare-fun setIsEmpty!50237 () Bool)

(assert (=> setIsEmpty!50237 setRes!50237))

(declare-fun b!7071093 () Bool)

(declare-fun e!4251123 () Bool)

(assert (=> b!7071093 (= e!4251123 e!4251119)))

(declare-fun res!2887740 () Bool)

(assert (=> b!7071093 (=> res!2887740 e!4251119)))

(declare-fun e!4251133 () Bool)

(assert (=> b!7071093 (= res!2887740 e!4251133)))

(declare-fun res!2887738 () Bool)

(assert (=> b!7071093 (=> (not res!2887738) (not e!4251133))))

(assert (=> b!7071093 (= res!2887738 (not (= lt!2545064 lt!2545096)))))

(declare-fun lt!2545091 () (Set Context!13272))

(assert (=> b!7071093 (= lt!2545064 (matchZipper!3180 lt!2545091 (t!382230 s!7408)))))

(declare-fun lt!2545057 () Unit!161990)

(assert (=> b!7071093 (= lt!2545057 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lt!2545087 () (Set Context!13272))

(declare-fun e!4251131 () Bool)

(assert (=> b!7071093 (= (matchZipper!3180 lt!2545087 (t!382230 s!7408)) e!4251131)))

(declare-fun res!2887760 () Bool)

(assert (=> b!7071093 (=> res!2887760 e!4251131)))

(assert (=> b!7071093 (= res!2887760 lt!2545096)))

(declare-fun lt!2545079 () (Set Context!13272))

(assert (=> b!7071093 (= lt!2545096 (matchZipper!3180 lt!2545079 (t!382230 s!7408)))))

(declare-fun lt!2545095 () Unit!161990)

(assert (=> b!7071093 (= lt!2545095 (lemmaZipperConcatMatchesSameAsBothZippers!1653 lt!2545079 lt!2545100 (t!382230 s!7408)))))

(declare-fun lt!2545085 () Unit!161990)

(assert (=> b!7071093 (= lt!2545085 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lt!2545069 () Unit!161990)

(assert (=> b!7071093 (= lt!2545069 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071094 () Bool)

(declare-fun res!2887737 () Bool)

(assert (=> b!7071094 (=> res!2887737 e!4251118)))

(assert (=> b!7071094 (= res!2887737 (not (is-Cons!68322 (exprs!7136 lt!2545070))))))

(declare-fun b!7071095 () Bool)

(assert (=> b!7071095 (= e!4251124 (not (matchZipper!3180 lt!2545094 (_1!37430 lt!2545086))))))

(declare-fun b!7071096 () Bool)

(declare-fun res!2887748 () Bool)

(assert (=> b!7071096 (=> res!2887748 e!4251135)))

(assert (=> b!7071096 (= res!2887748 (not (set.member lt!2545067 lt!2545066)))))

(declare-fun tp!1942214 () Bool)

(declare-fun setElem!50237 () Context!13272)

(declare-fun setNonEmpty!50237 () Bool)

(declare-fun e!4251137 () Bool)

(assert (=> setNonEmpty!50237 (= setRes!50237 (and tp!1942214 (inv!86960 setElem!50237) e!4251137))))

(declare-fun setRest!50237 () (Set Context!13272))

(assert (=> setNonEmpty!50237 (= z1!570 (set.union (set.insert setElem!50237 (as set.empty (Set Context!13272))) setRest!50237))))

(declare-fun b!7071097 () Bool)

(declare-fun e!4251130 () Bool)

(assert (=> b!7071097 (= e!4251130 e!4251123)))

(declare-fun res!2887746 () Bool)

(assert (=> b!7071097 (=> res!2887746 e!4251123)))

(assert (=> b!7071097 (= res!2887746 (not (= lt!2545091 lt!2545087)))))

(assert (=> b!7071097 (= lt!2545087 (set.union lt!2545079 lt!2545100))))

(declare-fun lt!2545097 () Context!13272)

(assert (=> b!7071097 (= lt!2545100 (derivationStepZipperUp!2224 lt!2545097 (h!74771 s!7408)))))

(declare-fun derivationStepZipperDown!2274 (Regex!17640 Context!13272 C!35550) (Set Context!13272))

(assert (=> b!7071097 (= lt!2545079 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) lt!2545097 (h!74771 s!7408)))))

(assert (=> b!7071097 (= lt!2545097 (Context!13273 (++!15763 lt!2545089 (exprs!7136 ct2!306))))))

(declare-fun lt!2545062 () Unit!161990)

(assert (=> b!7071097 (= lt!2545062 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lt!2545077 () Unit!161990)

(assert (=> b!7071097 (= lt!2545077 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071098 () Bool)

(declare-fun tp!1942217 () Bool)

(assert (=> b!7071098 (= e!4251137 tp!1942217)))

(declare-fun b!7071099 () Bool)

(assert (=> b!7071099 (= e!4251133 (not (matchZipper!3180 lt!2545100 (t!382230 s!7408))))))

(declare-fun lt!2545074 () Unit!161990)

(assert (=> b!7071099 (= lt!2545074 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071100 () Bool)

(assert (=> b!7071100 (= e!4251131 (matchZipper!3180 lt!2545100 (t!382230 s!7408)))))

(assert (=> b!7071101 (= e!4251129 e!4251118)))

(declare-fun res!2887755 () Bool)

(assert (=> b!7071101 (=> res!2887755 e!4251118)))

(assert (=> b!7071101 (= res!2887755 (not (= (derivationStepZipper!3090 lt!2545068 (h!74771 s!7408)) lt!2545091)))))

(assert (=> b!7071101 (= (flatMap!2566 lt!2545068 lambda!425308) (derivationStepZipperUp!2224 lt!2545090 (h!74771 s!7408)))))

(declare-fun lt!2545088 () Unit!161990)

(assert (=> b!7071101 (= lt!2545088 (lemmaFlatMapOnSingletonSet!2075 lt!2545068 lt!2545090 lambda!425308))))

(assert (=> b!7071101 (= lt!2545091 (derivationStepZipperUp!2224 lt!2545090 (h!74771 s!7408)))))

(declare-fun lt!2545099 () Unit!161990)

(assert (=> b!7071101 (= lt!2545099 (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545070) (exprs!7136 ct2!306) lambda!425307))))

(declare-fun b!7071102 () Bool)

(assert (=> b!7071102 (= e!4251132 e!4251120)))

(declare-fun res!2887735 () Bool)

(assert (=> b!7071102 (=> res!2887735 e!4251120)))

(assert (=> b!7071102 (= res!2887735 (not (= lt!2545093 lt!2545065)))))

(assert (=> b!7071102 (= lt!2545065 (set.union lt!2545081 lt!2545094))))

(declare-fun lt!2545061 () Context!13272)

(assert (=> b!7071102 (= lt!2545094 (derivationStepZipperUp!2224 lt!2545061 (h!74771 s!7408)))))

(declare-fun b!7071103 () Bool)

(declare-fun res!2887747 () Bool)

(assert (=> b!7071103 (=> res!2887747 e!4251122)))

(declare-fun lt!2545072 () (Set Context!13272))

(assert (=> b!7071103 (= res!2887747 (not (matchZipper!3180 lt!2545072 (_2!37430 lt!2545086))))))

(declare-fun b!7071104 () Bool)

(assert (=> b!7071104 (= e!4251127 e!4251122)))

(declare-fun res!2887749 () Bool)

(assert (=> b!7071104 (=> res!2887749 e!4251122)))

(assert (=> b!7071104 (= res!2887749 (not (matchZipper!3180 lt!2545081 (_1!37430 lt!2545086))))))

(declare-datatypes ((Option!16959 0))(
  ( (None!16958) (Some!16958 (v!53252 tuple2!68254)) )
))
(declare-fun lt!2545080 () Option!16959)

(declare-fun get!23930 (Option!16959) tuple2!68254)

(assert (=> b!7071104 (= lt!2545086 (get!23930 lt!2545080))))

(declare-fun isDefined!13660 (Option!16959) Bool)

(assert (=> b!7071104 (isDefined!13660 lt!2545080)))

(declare-fun findConcatSeparationZippers!475 ((Set Context!13272) (Set Context!13272) List!68447 List!68447 List!68447) Option!16959)

(assert (=> b!7071104 (= lt!2545080 (findConcatSeparationZippers!475 lt!2545081 lt!2545072 Nil!68323 (t!382230 s!7408) (t!382230 s!7408)))))

(assert (=> b!7071104 (= lt!2545072 (set.insert ct2!306 (as set.empty (Set Context!13272))))))

(declare-fun lt!2545101 () Unit!161990)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!463 ((Set Context!13272) Context!13272 List!68447) Unit!161990)

(assert (=> b!7071104 (= lt!2545101 (lemmaConcatZipperMatchesStringThenFindConcatDefined!463 lt!2545081 ct2!306 (t!382230 s!7408)))))

(declare-fun lt!2545056 () Unit!161990)

(assert (=> b!7071104 (= lt!2545056 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(assert (=> b!7071104 (= lt!2545079 (appendTo!761 lt!2545081 ct2!306))))

(assert (=> b!7071104 (= lt!2545081 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) lt!2545061 (h!74771 s!7408)))))

(declare-fun lt!2545075 () Unit!161990)

(assert (=> b!7071104 (= lt!2545075 (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(declare-fun lt!2545059 () Unit!161990)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!111 (Context!13272 Regex!17640 C!35550 Context!13272) Unit!161990)

(assert (=> b!7071104 (= lt!2545059 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!111 lt!2545061 (h!74770 (exprs!7136 lt!2545070)) (h!74771 s!7408) ct2!306))))

(declare-fun b!7071105 () Bool)

(assert (=> b!7071105 (= e!4251118 e!4251130)))

(declare-fun res!2887745 () Bool)

(assert (=> b!7071105 (=> res!2887745 e!4251130)))

(declare-fun nullable!7323 (Regex!17640) Bool)

(assert (=> b!7071105 (= res!2887745 (not (nullable!7323 (h!74770 (exprs!7136 lt!2545070)))))))

(assert (=> b!7071105 (= lt!2545061 (Context!13273 lt!2545089))))

(declare-fun tail!13821 (List!68446) List!68446)

(assert (=> b!7071105 (= lt!2545089 (tail!13821 (exprs!7136 lt!2545070)))))

(assert (=> b!7071106 (= e!4251128 (not e!4251135))))

(declare-fun res!2887742 () Bool)

(assert (=> b!7071106 (=> res!2887742 e!4251135)))

(assert (=> b!7071106 (= res!2887742 (not (matchZipper!3180 lt!2545084 s!7408)))))

(assert (=> b!7071106 (= lt!2545084 (set.insert lt!2545067 (as set.empty (Set Context!13272))))))

(declare-fun lambda!425305 () Int)

(declare-fun getWitness!1740 ((Set Context!13272) Int) Context!13272)

(assert (=> b!7071106 (= lt!2545067 (getWitness!1740 lt!2545066 lambda!425305))))

(declare-datatypes ((List!68448 0))(
  ( (Nil!68324) (Cons!68324 (h!74772 Context!13272) (t!382231 List!68448)) )
))
(declare-fun lt!2545076 () List!68448)

(declare-fun exists!3683 (List!68448 Int) Bool)

(assert (=> b!7071106 (exists!3683 lt!2545076 lambda!425305)))

(declare-fun lt!2545082 () Unit!161990)

(declare-fun lemmaZipperMatchesExistsMatchingContext!561 (List!68448 List!68447) Unit!161990)

(assert (=> b!7071106 (= lt!2545082 (lemmaZipperMatchesExistsMatchingContext!561 lt!2545076 s!7408))))

(declare-fun toList!10981 ((Set Context!13272)) List!68448)

(assert (=> b!7071106 (= lt!2545076 (toList!10981 lt!2545066))))

(declare-fun b!7071107 () Bool)

(assert (=> b!7071107 (= e!4251126 (= (++!15764 Nil!68323 s!7408) s!7408))))

(assert (= (and start!686870 res!2887757) b!7071092))

(assert (= (and b!7071092 res!2887753) b!7071106))

(assert (= (and b!7071106 (not res!2887742)) b!7071096))

(assert (= (and b!7071096 (not res!2887748)) b!7071080))

(assert (= (and b!7071080 (not res!2887759)) b!7071084))

(assert (= (and b!7071084 (not res!2887751)) b!7071101))

(assert (= (and b!7071101 (not res!2887755)) b!7071094))

(assert (= (and b!7071094 (not res!2887737)) b!7071089))

(assert (= (and b!7071089 (not res!2887743)) b!7071105))

(assert (= (and b!7071105 (not res!2887745)) b!7071097))

(assert (= (and b!7071097 (not res!2887746)) b!7071093))

(assert (= (and b!7071093 (not res!2887760)) b!7071100))

(assert (= (and b!7071093 res!2887738) b!7071099))

(assert (= (and b!7071093 (not res!2887740)) b!7071086))

(assert (= (and b!7071086 (not res!2887750)) b!7071087))

(assert (= (and b!7071087 (not res!2887744)) b!7071088))

(assert (= (and b!7071088 (not res!2887739)) b!7071104))

(assert (= (and b!7071104 (not res!2887749)) b!7071103))

(assert (= (and b!7071103 (not res!2887747)) b!7071083))

(assert (= (and b!7071083 (not res!2887756)) b!7071082))

(assert (= (and b!7071082 (not res!2887734)) b!7071102))

(assert (= (and b!7071102 (not res!2887735)) b!7071079))

(assert (= (and b!7071079 res!2887752) b!7071095))

(assert (= (and b!7071079 (not res!2887754)) b!7071078))

(assert (= (and b!7071078 (not res!2887758)) b!7071085))

(assert (= (and b!7071085 (not res!2887736)) b!7071091))

(assert (= (and b!7071091 (not res!2887741)) b!7071107))

(assert (= (and start!686870 condSetEmpty!50237) setIsEmpty!50237))

(assert (= (and start!686870 (not condSetEmpty!50237)) setNonEmpty!50237))

(assert (= setNonEmpty!50237 b!7071098))

(assert (= start!686870 b!7071090))

(assert (= (and start!686870 (is-Cons!68323 s!7408)) b!7071081))

(declare-fun m!7796546 () Bool)

(assert (=> b!7071087 m!7796546))

(declare-fun m!7796548 () Bool)

(assert (=> b!7071087 m!7796548))

(declare-fun m!7796550 () Bool)

(assert (=> b!7071097 m!7796550))

(declare-fun m!7796552 () Bool)

(assert (=> b!7071097 m!7796552))

(declare-fun m!7796554 () Bool)

(assert (=> b!7071097 m!7796554))

(assert (=> b!7071097 m!7796548))

(assert (=> b!7071097 m!7796548))

(declare-fun m!7796556 () Bool)

(assert (=> b!7071107 m!7796556))

(declare-fun m!7796558 () Bool)

(assert (=> setNonEmpty!50237 m!7796558))

(assert (=> b!7071099 m!7796546))

(assert (=> b!7071099 m!7796548))

(declare-fun m!7796560 () Bool)

(assert (=> b!7071102 m!7796560))

(declare-fun m!7796562 () Bool)

(assert (=> b!7071095 m!7796562))

(assert (=> b!7071093 m!7796548))

(declare-fun m!7796564 () Bool)

(assert (=> b!7071093 m!7796564))

(assert (=> b!7071093 m!7796548))

(declare-fun m!7796566 () Bool)

(assert (=> b!7071093 m!7796566))

(assert (=> b!7071093 m!7796548))

(declare-fun m!7796568 () Bool)

(assert (=> b!7071093 m!7796568))

(declare-fun m!7796570 () Bool)

(assert (=> b!7071093 m!7796570))

(declare-fun m!7796572 () Bool)

(assert (=> b!7071082 m!7796572))

(declare-fun m!7796574 () Bool)

(assert (=> b!7071082 m!7796574))

(declare-fun m!7796576 () Bool)

(assert (=> b!7071082 m!7796576))

(declare-fun m!7796578 () Bool)

(assert (=> b!7071082 m!7796578))

(declare-fun m!7796580 () Bool)

(assert (=> b!7071082 m!7796580))

(assert (=> b!7071088 m!7796548))

(assert (=> b!7071088 m!7796548))

(declare-fun m!7796582 () Bool)

(assert (=> b!7071105 m!7796582))

(declare-fun m!7796584 () Bool)

(assert (=> b!7071105 m!7796584))

(declare-fun m!7796586 () Bool)

(assert (=> b!7071089 m!7796586))

(declare-fun m!7796588 () Bool)

(assert (=> start!686870 m!7796588))

(declare-fun m!7796590 () Bool)

(assert (=> start!686870 m!7796590))

(declare-fun m!7796592 () Bool)

(assert (=> start!686870 m!7796592))

(declare-fun m!7796594 () Bool)

(assert (=> b!7071104 m!7796594))

(declare-fun m!7796596 () Bool)

(assert (=> b!7071104 m!7796596))

(declare-fun m!7796598 () Bool)

(assert (=> b!7071104 m!7796598))

(declare-fun m!7796600 () Bool)

(assert (=> b!7071104 m!7796600))

(declare-fun m!7796602 () Bool)

(assert (=> b!7071104 m!7796602))

(assert (=> b!7071104 m!7796548))

(declare-fun m!7796604 () Bool)

(assert (=> b!7071104 m!7796604))

(declare-fun m!7796606 () Bool)

(assert (=> b!7071104 m!7796606))

(declare-fun m!7796608 () Bool)

(assert (=> b!7071104 m!7796608))

(declare-fun m!7796610 () Bool)

(assert (=> b!7071104 m!7796610))

(assert (=> b!7071104 m!7796548))

(declare-fun m!7796612 () Bool)

(assert (=> b!7071103 m!7796612))

(declare-fun m!7796614 () Bool)

(assert (=> b!7071085 m!7796614))

(declare-fun m!7796616 () Bool)

(assert (=> b!7071096 m!7796616))

(declare-fun m!7796618 () Bool)

(assert (=> b!7071080 m!7796618))

(declare-fun m!7796620 () Bool)

(assert (=> b!7071080 m!7796620))

(declare-fun m!7796622 () Bool)

(assert (=> b!7071080 m!7796622))

(declare-fun m!7796624 () Bool)

(assert (=> b!7071080 m!7796624))

(declare-fun m!7796626 () Bool)

(assert (=> b!7071101 m!7796626))

(declare-fun m!7796628 () Bool)

(assert (=> b!7071101 m!7796628))

(declare-fun m!7796630 () Bool)

(assert (=> b!7071101 m!7796630))

(declare-fun m!7796632 () Bool)

(assert (=> b!7071101 m!7796632))

(assert (=> b!7071101 m!7796622))

(declare-fun m!7796634 () Bool)

(assert (=> b!7071106 m!7796634))

(declare-fun m!7796636 () Bool)

(assert (=> b!7071106 m!7796636))

(declare-fun m!7796638 () Bool)

(assert (=> b!7071106 m!7796638))

(declare-fun m!7796640 () Bool)

(assert (=> b!7071106 m!7796640))

(declare-fun m!7796642 () Bool)

(assert (=> b!7071106 m!7796642))

(declare-fun m!7796644 () Bool)

(assert (=> b!7071106 m!7796644))

(declare-fun m!7796646 () Bool)

(assert (=> b!7071079 m!7796646))

(declare-fun m!7796648 () Bool)

(assert (=> b!7071079 m!7796648))

(declare-fun m!7796650 () Bool)

(assert (=> b!7071079 m!7796650))

(declare-fun m!7796652 () Bool)

(assert (=> b!7071083 m!7796652))

(declare-fun m!7796654 () Bool)

(assert (=> b!7071084 m!7796654))

(assert (=> b!7071084 m!7796622))

(assert (=> b!7071100 m!7796546))

(declare-fun m!7796656 () Bool)

(assert (=> b!7071091 m!7796656))

(push 1)

(assert (not b!7071097))

(assert (not b!7071095))

(assert (not b!7071083))

(assert (not b!7071105))

(assert tp_is_empty!44505)

(assert (not b!7071093))

(assert (not b!7071089))

(assert (not b!7071106))

(assert (not b!7071087))

(assert (not b!7071088))

(assert (not b!7071082))

(assert (not b!7071079))

(assert (not setNonEmpty!50237))

(assert (not b!7071099))

(assert (not b!7071100))

(assert (not b!7071098))

(assert (not b!7071101))

(assert (not b!7071081))

(assert (not b!7071103))

(assert (not start!686870))

(assert (not b!7071084))

(assert (not b!7071104))

(assert (not b!7071102))

(assert (not b!7071080))

(assert (not b!7071107))

(assert (not b!7071091))

(assert (not b!7071090))

(assert (not b!7071085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2211298 () Bool)

(declare-fun c!1318965 () Bool)

(declare-fun isEmpty!39876 (List!68447) Bool)

(assert (=> d!2211298 (= c!1318965 (isEmpty!39876 (_1!37430 lt!2545086)))))

(declare-fun e!4251200 () Bool)

(assert (=> d!2211298 (= (matchZipper!3180 lt!2545094 (_1!37430 lt!2545086)) e!4251200)))

(declare-fun b!7071214 () Bool)

(declare-fun nullableZipper!2697 ((Set Context!13272)) Bool)

(assert (=> b!7071214 (= e!4251200 (nullableZipper!2697 lt!2545094))))

(declare-fun b!7071215 () Bool)

(declare-fun head!14405 (List!68447) C!35550)

(declare-fun tail!13823 (List!68447) List!68447)

(assert (=> b!7071215 (= e!4251200 (matchZipper!3180 (derivationStepZipper!3090 lt!2545094 (head!14405 (_1!37430 lt!2545086))) (tail!13823 (_1!37430 lt!2545086))))))

(assert (= (and d!2211298 c!1318965) b!7071214))

(assert (= (and d!2211298 (not c!1318965)) b!7071215))

(declare-fun m!7796770 () Bool)

(assert (=> d!2211298 m!7796770))

(declare-fun m!7796772 () Bool)

(assert (=> b!7071214 m!7796772))

(declare-fun m!7796774 () Bool)

(assert (=> b!7071215 m!7796774))

(assert (=> b!7071215 m!7796774))

(declare-fun m!7796776 () Bool)

(assert (=> b!7071215 m!7796776))

(declare-fun m!7796778 () Bool)

(assert (=> b!7071215 m!7796778))

(assert (=> b!7071215 m!7796776))

(assert (=> b!7071215 m!7796778))

(declare-fun m!7796780 () Bool)

(assert (=> b!7071215 m!7796780))

(assert (=> b!7071095 d!2211298))

(declare-fun d!2211300 () Bool)

(declare-fun c!1318966 () Bool)

(assert (=> d!2211300 (= c!1318966 (isEmpty!39876 lt!2545071))))

(declare-fun e!4251201 () Bool)

(assert (=> d!2211300 (= (matchZipper!3180 lt!2545078 lt!2545071) e!4251201)))

(declare-fun b!7071216 () Bool)

(assert (=> b!7071216 (= e!4251201 (nullableZipper!2697 lt!2545078))))

(declare-fun b!7071217 () Bool)

(assert (=> b!7071217 (= e!4251201 (matchZipper!3180 (derivationStepZipper!3090 lt!2545078 (head!14405 lt!2545071)) (tail!13823 lt!2545071)))))

(assert (= (and d!2211300 c!1318966) b!7071216))

(assert (= (and d!2211300 (not c!1318966)) b!7071217))

(declare-fun m!7796782 () Bool)

(assert (=> d!2211300 m!7796782))

(declare-fun m!7796784 () Bool)

(assert (=> b!7071216 m!7796784))

(declare-fun m!7796786 () Bool)

(assert (=> b!7071217 m!7796786))

(assert (=> b!7071217 m!7796786))

(declare-fun m!7796788 () Bool)

(assert (=> b!7071217 m!7796788))

(declare-fun m!7796790 () Bool)

(assert (=> b!7071217 m!7796790))

(assert (=> b!7071217 m!7796788))

(assert (=> b!7071217 m!7796790))

(declare-fun m!7796792 () Bool)

(assert (=> b!7071217 m!7796792))

(assert (=> b!7071079 d!2211300))

(declare-fun d!2211302 () Bool)

(declare-fun c!1318967 () Bool)

(assert (=> d!2211302 (= c!1318967 (isEmpty!39876 (_1!37430 lt!2545086)))))

(declare-fun e!4251202 () Bool)

(assert (=> d!2211302 (= (matchZipper!3180 lt!2545065 (_1!37430 lt!2545086)) e!4251202)))

(declare-fun b!7071218 () Bool)

(assert (=> b!7071218 (= e!4251202 (nullableZipper!2697 lt!2545065))))

(declare-fun b!7071219 () Bool)

(assert (=> b!7071219 (= e!4251202 (matchZipper!3180 (derivationStepZipper!3090 lt!2545065 (head!14405 (_1!37430 lt!2545086))) (tail!13823 (_1!37430 lt!2545086))))))

(assert (= (and d!2211302 c!1318967) b!7071218))

(assert (= (and d!2211302 (not c!1318967)) b!7071219))

(assert (=> d!2211302 m!7796770))

(declare-fun m!7796794 () Bool)

(assert (=> b!7071218 m!7796794))

(assert (=> b!7071219 m!7796774))

(assert (=> b!7071219 m!7796774))

(declare-fun m!7796796 () Bool)

(assert (=> b!7071219 m!7796796))

(assert (=> b!7071219 m!7796778))

(assert (=> b!7071219 m!7796796))

(assert (=> b!7071219 m!7796778))

(declare-fun m!7796798 () Bool)

(assert (=> b!7071219 m!7796798))

(assert (=> b!7071079 d!2211302))

(declare-fun e!4251205 () Bool)

(declare-fun d!2211304 () Bool)

(assert (=> d!2211304 (= (matchZipper!3180 (set.union lt!2545081 lt!2545094) (_1!37430 lt!2545086)) e!4251205)))

(declare-fun res!2887845 () Bool)

(assert (=> d!2211304 (=> res!2887845 e!4251205)))

(assert (=> d!2211304 (= res!2887845 (matchZipper!3180 lt!2545081 (_1!37430 lt!2545086)))))

(declare-fun lt!2545251 () Unit!161990)

(declare-fun choose!54192 ((Set Context!13272) (Set Context!13272) List!68447) Unit!161990)

(assert (=> d!2211304 (= lt!2545251 (choose!54192 lt!2545081 lt!2545094 (_1!37430 lt!2545086)))))

(assert (=> d!2211304 (= (lemmaZipperConcatMatchesSameAsBothZippers!1653 lt!2545081 lt!2545094 (_1!37430 lt!2545086)) lt!2545251)))

(declare-fun b!7071222 () Bool)

(assert (=> b!7071222 (= e!4251205 (matchZipper!3180 lt!2545094 (_1!37430 lt!2545086)))))

(assert (= (and d!2211304 (not res!2887845)) b!7071222))

(declare-fun m!7796800 () Bool)

(assert (=> d!2211304 m!7796800))

(assert (=> d!2211304 m!7796600))

(declare-fun m!7796802 () Bool)

(assert (=> d!2211304 m!7796802))

(assert (=> b!7071222 m!7796562))

(assert (=> b!7071079 d!2211304))

(declare-fun bs!1880583 () Bool)

(declare-fun d!2211306 () Bool)

(assert (= bs!1880583 (and d!2211306 b!7071080)))

(declare-fun lambda!425355 () Int)

(assert (=> bs!1880583 (= lambda!425355 lambda!425307)))

(declare-fun forall!16593 (List!68446 Int) Bool)

(assert (=> d!2211306 (= (inv!86960 setElem!50237) (forall!16593 (exprs!7136 setElem!50237) lambda!425355))))

(declare-fun bs!1880584 () Bool)

(assert (= bs!1880584 d!2211306))

(declare-fun m!7796804 () Bool)

(assert (=> bs!1880584 m!7796804))

(assert (=> setNonEmpty!50237 d!2211306))

(declare-fun b!7071233 () Bool)

(declare-fun e!4251213 () (Set Context!13272))

(declare-fun e!4251214 () (Set Context!13272))

(assert (=> b!7071233 (= e!4251213 e!4251214)))

(declare-fun c!1318973 () Bool)

(assert (=> b!7071233 (= c!1318973 (is-Cons!68322 (exprs!7136 lt!2545097)))))

(declare-fun b!7071234 () Bool)

(declare-fun e!4251212 () Bool)

(assert (=> b!7071234 (= e!4251212 (nullable!7323 (h!74770 (exprs!7136 lt!2545097))))))

(declare-fun bm!642670 () Bool)

(declare-fun call!642675 () (Set Context!13272))

(assert (=> bm!642670 (= call!642675 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545097)) (Context!13273 (t!382229 (exprs!7136 lt!2545097))) (h!74771 s!7408)))))

(declare-fun b!7071235 () Bool)

(assert (=> b!7071235 (= e!4251214 call!642675)))

(declare-fun d!2211308 () Bool)

(declare-fun c!1318972 () Bool)

(assert (=> d!2211308 (= c!1318972 e!4251212)))

(declare-fun res!2887848 () Bool)

(assert (=> d!2211308 (=> (not res!2887848) (not e!4251212))))

(assert (=> d!2211308 (= res!2887848 (is-Cons!68322 (exprs!7136 lt!2545097)))))

(assert (=> d!2211308 (= (derivationStepZipperUp!2224 lt!2545097 (h!74771 s!7408)) e!4251213)))

(declare-fun b!7071236 () Bool)

(assert (=> b!7071236 (= e!4251213 (set.union call!642675 (derivationStepZipperUp!2224 (Context!13273 (t!382229 (exprs!7136 lt!2545097))) (h!74771 s!7408))))))

(declare-fun b!7071237 () Bool)

(assert (=> b!7071237 (= e!4251214 (as set.empty (Set Context!13272)))))

(assert (= (and d!2211308 res!2887848) b!7071234))

(assert (= (and d!2211308 c!1318972) b!7071236))

(assert (= (and d!2211308 (not c!1318972)) b!7071233))

(assert (= (and b!7071233 c!1318973) b!7071235))

(assert (= (and b!7071233 (not c!1318973)) b!7071237))

(assert (= (or b!7071236 b!7071235) bm!642670))

(declare-fun m!7796806 () Bool)

(assert (=> b!7071234 m!7796806))

(declare-fun m!7796808 () Bool)

(assert (=> bm!642670 m!7796808))

(declare-fun m!7796810 () Bool)

(assert (=> b!7071236 m!7796810))

(assert (=> b!7071097 d!2211308))

(declare-fun d!2211310 () Bool)

(declare-fun e!4251219 () Bool)

(assert (=> d!2211310 e!4251219))

(declare-fun res!2887854 () Bool)

(assert (=> d!2211310 (=> (not res!2887854) (not e!4251219))))

(declare-fun lt!2545254 () List!68446)

(declare-fun content!13785 (List!68446) (Set Regex!17640))

(assert (=> d!2211310 (= res!2887854 (= (content!13785 lt!2545254) (set.union (content!13785 lt!2545089) (content!13785 (exprs!7136 ct2!306)))))))

(declare-fun e!4251220 () List!68446)

(assert (=> d!2211310 (= lt!2545254 e!4251220)))

(declare-fun c!1318976 () Bool)

(assert (=> d!2211310 (= c!1318976 (is-Nil!68322 lt!2545089))))

(assert (=> d!2211310 (= (++!15763 lt!2545089 (exprs!7136 ct2!306)) lt!2545254)))

(declare-fun b!7071248 () Bool)

(declare-fun res!2887853 () Bool)

(assert (=> b!7071248 (=> (not res!2887853) (not e!4251219))))

(declare-fun size!41210 (List!68446) Int)

(assert (=> b!7071248 (= res!2887853 (= (size!41210 lt!2545254) (+ (size!41210 lt!2545089) (size!41210 (exprs!7136 ct2!306)))))))

(declare-fun b!7071246 () Bool)

(assert (=> b!7071246 (= e!4251220 (exprs!7136 ct2!306))))

(declare-fun b!7071247 () Bool)

(assert (=> b!7071247 (= e!4251220 (Cons!68322 (h!74770 lt!2545089) (++!15763 (t!382229 lt!2545089) (exprs!7136 ct2!306))))))

(declare-fun b!7071249 () Bool)

(assert (=> b!7071249 (= e!4251219 (or (not (= (exprs!7136 ct2!306) Nil!68322)) (= lt!2545254 lt!2545089)))))

(assert (= (and d!2211310 c!1318976) b!7071246))

(assert (= (and d!2211310 (not c!1318976)) b!7071247))

(assert (= (and d!2211310 res!2887854) b!7071248))

(assert (= (and b!7071248 res!2887853) b!7071249))

(declare-fun m!7796812 () Bool)

(assert (=> d!2211310 m!7796812))

(declare-fun m!7796814 () Bool)

(assert (=> d!2211310 m!7796814))

(declare-fun m!7796816 () Bool)

(assert (=> d!2211310 m!7796816))

(declare-fun m!7796818 () Bool)

(assert (=> b!7071248 m!7796818))

(declare-fun m!7796820 () Bool)

(assert (=> b!7071248 m!7796820))

(declare-fun m!7796822 () Bool)

(assert (=> b!7071248 m!7796822))

(declare-fun m!7796824 () Bool)

(assert (=> b!7071247 m!7796824))

(assert (=> b!7071097 d!2211310))

(declare-fun d!2211312 () Bool)

(assert (=> d!2211312 (forall!16593 (++!15763 lt!2545089 (exprs!7136 ct2!306)) lambda!425307)))

(declare-fun lt!2545257 () Unit!161990)

(declare-fun choose!54193 (List!68446 List!68446 Int) Unit!161990)

(assert (=> d!2211312 (= lt!2545257 (choose!54193 lt!2545089 (exprs!7136 ct2!306) lambda!425307))))

(assert (=> d!2211312 (forall!16593 lt!2545089 lambda!425307)))

(assert (=> d!2211312 (= (lemmaConcatPreservesForall!951 lt!2545089 (exprs!7136 ct2!306) lambda!425307) lt!2545257)))

(declare-fun bs!1880585 () Bool)

(assert (= bs!1880585 d!2211312))

(assert (=> bs!1880585 m!7796550))

(assert (=> bs!1880585 m!7796550))

(declare-fun m!7796826 () Bool)

(assert (=> bs!1880585 m!7796826))

(declare-fun m!7796828 () Bool)

(assert (=> bs!1880585 m!7796828))

(declare-fun m!7796830 () Bool)

(assert (=> bs!1880585 m!7796830))

(assert (=> b!7071097 d!2211312))

(declare-fun c!1318989 () Bool)

(declare-fun call!642688 () (Set Context!13272))

(declare-fun call!642693 () List!68446)

(declare-fun c!1318990 () Bool)

(declare-fun c!1318987 () Bool)

(declare-fun bm!642683 () Bool)

(assert (=> bm!642683 (= call!642688 (derivationStepZipperDown!2274 (ite c!1318989 (regOne!35793 (h!74770 (exprs!7136 lt!2545070))) (ite c!1318987 (regTwo!35792 (h!74770 (exprs!7136 lt!2545070))) (ite c!1318990 (regOne!35792 (h!74770 (exprs!7136 lt!2545070))) (reg!17969 (h!74770 (exprs!7136 lt!2545070)))))) (ite (or c!1318989 c!1318987) lt!2545097 (Context!13273 call!642693)) (h!74771 s!7408)))))

(declare-fun bm!642684 () Bool)

(declare-fun call!642690 () (Set Context!13272))

(declare-fun call!642689 () List!68446)

(assert (=> bm!642684 (= call!642690 (derivationStepZipperDown!2274 (ite c!1318989 (regTwo!35793 (h!74770 (exprs!7136 lt!2545070))) (regOne!35792 (h!74770 (exprs!7136 lt!2545070)))) (ite c!1318989 lt!2545097 (Context!13273 call!642689)) (h!74771 s!7408)))))

(declare-fun b!7071272 () Bool)

(declare-fun e!4251237 () (Set Context!13272))

(declare-fun call!642691 () (Set Context!13272))

(assert (=> b!7071272 (= e!4251237 call!642691)))

(declare-fun bm!642685 () Bool)

(declare-fun call!642692 () (Set Context!13272))

(assert (=> bm!642685 (= call!642691 call!642692)))

(declare-fun b!7071273 () Bool)

(declare-fun e!4251236 () (Set Context!13272))

(assert (=> b!7071273 (= e!4251236 e!4251237)))

(assert (=> b!7071273 (= c!1318990 (is-Concat!26485 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun b!7071274 () Bool)

(declare-fun e!4251238 () Bool)

(assert (=> b!7071274 (= c!1318987 e!4251238)))

(declare-fun res!2887857 () Bool)

(assert (=> b!7071274 (=> (not res!2887857) (not e!4251238))))

(assert (=> b!7071274 (= res!2887857 (is-Concat!26485 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun e!4251234 () (Set Context!13272))

(assert (=> b!7071274 (= e!4251234 e!4251236)))

(declare-fun b!7071275 () Bool)

(declare-fun c!1318991 () Bool)

(assert (=> b!7071275 (= c!1318991 (is-Star!17640 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun e!4251235 () (Set Context!13272))

(assert (=> b!7071275 (= e!4251237 e!4251235)))

(declare-fun b!7071276 () Bool)

(assert (=> b!7071276 (= e!4251235 call!642691)))

(declare-fun b!7071277 () Bool)

(assert (=> b!7071277 (= e!4251234 (set.union call!642688 call!642690))))

(declare-fun b!7071278 () Bool)

(declare-fun e!4251233 () (Set Context!13272))

(assert (=> b!7071278 (= e!4251233 (set.insert lt!2545097 (as set.empty (Set Context!13272))))))

(declare-fun bm!642686 () Bool)

(assert (=> bm!642686 (= call!642692 call!642688)))

(declare-fun bm!642687 () Bool)

(declare-fun $colon$colon!2658 (List!68446 Regex!17640) List!68446)

(assert (=> bm!642687 (= call!642689 ($colon$colon!2658 (exprs!7136 lt!2545097) (ite (or c!1318987 c!1318990) (regTwo!35792 (h!74770 (exprs!7136 lt!2545070))) (h!74770 (exprs!7136 lt!2545070)))))))

(declare-fun b!7071279 () Bool)

(assert (=> b!7071279 (= e!4251238 (nullable!7323 (regOne!35792 (h!74770 (exprs!7136 lt!2545070)))))))

(declare-fun b!7071280 () Bool)

(assert (=> b!7071280 (= e!4251235 (as set.empty (Set Context!13272)))))

(declare-fun d!2211314 () Bool)

(declare-fun c!1318988 () Bool)

(assert (=> d!2211314 (= c!1318988 (and (is-ElementMatch!17640 (h!74770 (exprs!7136 lt!2545070))) (= (c!1318951 (h!74770 (exprs!7136 lt!2545070))) (h!74771 s!7408))))))

(assert (=> d!2211314 (= (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) lt!2545097 (h!74771 s!7408)) e!4251233)))

(declare-fun b!7071281 () Bool)

(assert (=> b!7071281 (= e!4251233 e!4251234)))

(assert (=> b!7071281 (= c!1318989 (is-Union!17640 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun b!7071282 () Bool)

(assert (=> b!7071282 (= e!4251236 (set.union call!642690 call!642692))))

(declare-fun bm!642688 () Bool)

(assert (=> bm!642688 (= call!642693 call!642689)))

(assert (= (and d!2211314 c!1318988) b!7071278))

(assert (= (and d!2211314 (not c!1318988)) b!7071281))

(assert (= (and b!7071281 c!1318989) b!7071277))

(assert (= (and b!7071281 (not c!1318989)) b!7071274))

(assert (= (and b!7071274 res!2887857) b!7071279))

(assert (= (and b!7071274 c!1318987) b!7071282))

(assert (= (and b!7071274 (not c!1318987)) b!7071273))

(assert (= (and b!7071273 c!1318990) b!7071272))

(assert (= (and b!7071273 (not c!1318990)) b!7071275))

(assert (= (and b!7071275 c!1318991) b!7071276))

(assert (= (and b!7071275 (not c!1318991)) b!7071280))

(assert (= (or b!7071272 b!7071276) bm!642688))

(assert (= (or b!7071272 b!7071276) bm!642685))

(assert (= (or b!7071282 bm!642685) bm!642686))

(assert (= (or b!7071282 bm!642688) bm!642687))

(assert (= (or b!7071277 bm!642686) bm!642683))

(assert (= (or b!7071277 b!7071282) bm!642684))

(declare-fun m!7796832 () Bool)

(assert (=> b!7071279 m!7796832))

(declare-fun m!7796834 () Bool)

(assert (=> bm!642684 m!7796834))

(declare-fun m!7796836 () Bool)

(assert (=> b!7071278 m!7796836))

(declare-fun m!7796838 () Bool)

(assert (=> bm!642687 m!7796838))

(declare-fun m!7796840 () Bool)

(assert (=> bm!642683 m!7796840))

(assert (=> b!7071097 d!2211314))

(declare-fun b!7071294 () Bool)

(declare-fun e!4251245 () Bool)

(declare-fun size!41211 (List!68447) Int)

(assert (=> b!7071294 (= e!4251245 (>= (size!41211 lt!2545071) (size!41211 Nil!68323)))))

(declare-fun b!7071291 () Bool)

(declare-fun e!4251246 () Bool)

(declare-fun e!4251247 () Bool)

(assert (=> b!7071291 (= e!4251246 e!4251247)))

(declare-fun res!2887869 () Bool)

(assert (=> b!7071291 (=> (not res!2887869) (not e!4251247))))

(assert (=> b!7071291 (= res!2887869 (not (is-Nil!68323 lt!2545071)))))

(declare-fun b!7071293 () Bool)

(assert (=> b!7071293 (= e!4251247 (isPrefix!5853 (tail!13823 Nil!68323) (tail!13823 lt!2545071)))))

(declare-fun b!7071292 () Bool)

(declare-fun res!2887866 () Bool)

(assert (=> b!7071292 (=> (not res!2887866) (not e!4251247))))

(assert (=> b!7071292 (= res!2887866 (= (head!14405 Nil!68323) (head!14405 lt!2545071)))))

(declare-fun d!2211316 () Bool)

(assert (=> d!2211316 e!4251245))

(declare-fun res!2887867 () Bool)

(assert (=> d!2211316 (=> res!2887867 e!4251245)))

(declare-fun lt!2545260 () Bool)

(assert (=> d!2211316 (= res!2887867 (not lt!2545260))))

(assert (=> d!2211316 (= lt!2545260 e!4251246)))

(declare-fun res!2887868 () Bool)

(assert (=> d!2211316 (=> res!2887868 e!4251246)))

(assert (=> d!2211316 (= res!2887868 (is-Nil!68323 Nil!68323))))

(assert (=> d!2211316 (= (isPrefix!5853 Nil!68323 lt!2545071) lt!2545260)))

(assert (= (and d!2211316 (not res!2887868)) b!7071291))

(assert (= (and b!7071291 res!2887869) b!7071292))

(assert (= (and b!7071292 res!2887866) b!7071293))

(assert (= (and d!2211316 (not res!2887867)) b!7071294))

(declare-fun m!7796842 () Bool)

(assert (=> b!7071294 m!7796842))

(declare-fun m!7796844 () Bool)

(assert (=> b!7071294 m!7796844))

(declare-fun m!7796846 () Bool)

(assert (=> b!7071293 m!7796846))

(assert (=> b!7071293 m!7796790))

(assert (=> b!7071293 m!7796846))

(assert (=> b!7071293 m!7796790))

(declare-fun m!7796848 () Bool)

(assert (=> b!7071293 m!7796848))

(declare-fun m!7796850 () Bool)

(assert (=> b!7071292 m!7796850))

(assert (=> b!7071292 m!7796786))

(assert (=> b!7071091 d!2211316))

(declare-fun d!2211318 () Bool)

(declare-fun c!1318992 () Bool)

(assert (=> d!2211318 (= c!1318992 (isEmpty!39876 (t!382230 s!7408)))))

(declare-fun e!4251248 () Bool)

(assert (=> d!2211318 (= (matchZipper!3180 lt!2545079 (t!382230 s!7408)) e!4251248)))

(declare-fun b!7071295 () Bool)

(assert (=> b!7071295 (= e!4251248 (nullableZipper!2697 lt!2545079))))

(declare-fun b!7071296 () Bool)

(assert (=> b!7071296 (= e!4251248 (matchZipper!3180 (derivationStepZipper!3090 lt!2545079 (head!14405 (t!382230 s!7408))) (tail!13823 (t!382230 s!7408))))))

(assert (= (and d!2211318 c!1318992) b!7071295))

(assert (= (and d!2211318 (not c!1318992)) b!7071296))

(declare-fun m!7796852 () Bool)

(assert (=> d!2211318 m!7796852))

(declare-fun m!7796854 () Bool)

(assert (=> b!7071295 m!7796854))

(declare-fun m!7796856 () Bool)

(assert (=> b!7071296 m!7796856))

(assert (=> b!7071296 m!7796856))

(declare-fun m!7796858 () Bool)

(assert (=> b!7071296 m!7796858))

(declare-fun m!7796860 () Bool)

(assert (=> b!7071296 m!7796860))

(assert (=> b!7071296 m!7796858))

(assert (=> b!7071296 m!7796860))

(declare-fun m!7796862 () Bool)

(assert (=> b!7071296 m!7796862))

(assert (=> b!7071093 d!2211318))

(assert (=> b!7071093 d!2211312))

(declare-fun d!2211320 () Bool)

(declare-fun c!1318993 () Bool)

(assert (=> d!2211320 (= c!1318993 (isEmpty!39876 (t!382230 s!7408)))))

(declare-fun e!4251249 () Bool)

(assert (=> d!2211320 (= (matchZipper!3180 lt!2545091 (t!382230 s!7408)) e!4251249)))

(declare-fun b!7071297 () Bool)

(assert (=> b!7071297 (= e!4251249 (nullableZipper!2697 lt!2545091))))

(declare-fun b!7071298 () Bool)

(assert (=> b!7071298 (= e!4251249 (matchZipper!3180 (derivationStepZipper!3090 lt!2545091 (head!14405 (t!382230 s!7408))) (tail!13823 (t!382230 s!7408))))))

(assert (= (and d!2211320 c!1318993) b!7071297))

(assert (= (and d!2211320 (not c!1318993)) b!7071298))

(assert (=> d!2211320 m!7796852))

(declare-fun m!7796864 () Bool)

(assert (=> b!7071297 m!7796864))

(assert (=> b!7071298 m!7796856))

(assert (=> b!7071298 m!7796856))

(declare-fun m!7796866 () Bool)

(assert (=> b!7071298 m!7796866))

(assert (=> b!7071298 m!7796860))

(assert (=> b!7071298 m!7796866))

(assert (=> b!7071298 m!7796860))

(declare-fun m!7796868 () Bool)

(assert (=> b!7071298 m!7796868))

(assert (=> b!7071093 d!2211320))

(declare-fun d!2211322 () Bool)

(declare-fun c!1318994 () Bool)

(assert (=> d!2211322 (= c!1318994 (isEmpty!39876 (t!382230 s!7408)))))

(declare-fun e!4251250 () Bool)

(assert (=> d!2211322 (= (matchZipper!3180 lt!2545087 (t!382230 s!7408)) e!4251250)))

(declare-fun b!7071299 () Bool)

(assert (=> b!7071299 (= e!4251250 (nullableZipper!2697 lt!2545087))))

(declare-fun b!7071300 () Bool)

(assert (=> b!7071300 (= e!4251250 (matchZipper!3180 (derivationStepZipper!3090 lt!2545087 (head!14405 (t!382230 s!7408))) (tail!13823 (t!382230 s!7408))))))

(assert (= (and d!2211322 c!1318994) b!7071299))

(assert (= (and d!2211322 (not c!1318994)) b!7071300))

(assert (=> d!2211322 m!7796852))

(declare-fun m!7796870 () Bool)

(assert (=> b!7071299 m!7796870))

(assert (=> b!7071300 m!7796856))

(assert (=> b!7071300 m!7796856))

(declare-fun m!7796872 () Bool)

(assert (=> b!7071300 m!7796872))

(assert (=> b!7071300 m!7796860))

(assert (=> b!7071300 m!7796872))

(assert (=> b!7071300 m!7796860))

(declare-fun m!7796874 () Bool)

(assert (=> b!7071300 m!7796874))

(assert (=> b!7071093 d!2211322))

(declare-fun d!2211324 () Bool)

(declare-fun e!4251251 () Bool)

(assert (=> d!2211324 (= (matchZipper!3180 (set.union lt!2545079 lt!2545100) (t!382230 s!7408)) e!4251251)))

(declare-fun res!2887870 () Bool)

(assert (=> d!2211324 (=> res!2887870 e!4251251)))

(assert (=> d!2211324 (= res!2887870 (matchZipper!3180 lt!2545079 (t!382230 s!7408)))))

(declare-fun lt!2545261 () Unit!161990)

(assert (=> d!2211324 (= lt!2545261 (choose!54192 lt!2545079 lt!2545100 (t!382230 s!7408)))))

(assert (=> d!2211324 (= (lemmaZipperConcatMatchesSameAsBothZippers!1653 lt!2545079 lt!2545100 (t!382230 s!7408)) lt!2545261)))

(declare-fun b!7071301 () Bool)

(assert (=> b!7071301 (= e!4251251 (matchZipper!3180 lt!2545100 (t!382230 s!7408)))))

(assert (= (and d!2211324 (not res!2887870)) b!7071301))

(declare-fun m!7796876 () Bool)

(assert (=> d!2211324 m!7796876))

(assert (=> d!2211324 m!7796564))

(declare-fun m!7796878 () Bool)

(assert (=> d!2211324 m!7796878))

(assert (=> b!7071301 m!7796546))

(assert (=> b!7071093 d!2211324))

(declare-fun d!2211326 () Bool)

(declare-fun c!1318995 () Bool)

(assert (=> d!2211326 (= c!1318995 (isEmpty!39876 (t!382230 s!7408)))))

(declare-fun e!4251252 () Bool)

(assert (=> d!2211326 (= (matchZipper!3180 lt!2545100 (t!382230 s!7408)) e!4251252)))

(declare-fun b!7071302 () Bool)

(assert (=> b!7071302 (= e!4251252 (nullableZipper!2697 lt!2545100))))

(declare-fun b!7071303 () Bool)

(assert (=> b!7071303 (= e!4251252 (matchZipper!3180 (derivationStepZipper!3090 lt!2545100 (head!14405 (t!382230 s!7408))) (tail!13823 (t!382230 s!7408))))))

(assert (= (and d!2211326 c!1318995) b!7071302))

(assert (= (and d!2211326 (not c!1318995)) b!7071303))

(assert (=> d!2211326 m!7796852))

(declare-fun m!7796880 () Bool)

(assert (=> b!7071302 m!7796880))

(assert (=> b!7071303 m!7796856))

(assert (=> b!7071303 m!7796856))

(declare-fun m!7796882 () Bool)

(assert (=> b!7071303 m!7796882))

(assert (=> b!7071303 m!7796860))

(assert (=> b!7071303 m!7796882))

(assert (=> b!7071303 m!7796860))

(declare-fun m!7796884 () Bool)

(assert (=> b!7071303 m!7796884))

(assert (=> b!7071087 d!2211326))

(assert (=> b!7071087 d!2211312))

(declare-fun d!2211328 () Bool)

(declare-fun c!1318996 () Bool)

(assert (=> d!2211328 (= c!1318996 (isEmpty!39876 s!7408))))

(declare-fun e!4251253 () Bool)

(assert (=> d!2211328 (= (matchZipper!3180 lt!2545084 s!7408) e!4251253)))

(declare-fun b!7071304 () Bool)

(assert (=> b!7071304 (= e!4251253 (nullableZipper!2697 lt!2545084))))

(declare-fun b!7071305 () Bool)

(assert (=> b!7071305 (= e!4251253 (matchZipper!3180 (derivationStepZipper!3090 lt!2545084 (head!14405 s!7408)) (tail!13823 s!7408)))))

(assert (= (and d!2211328 c!1318996) b!7071304))

(assert (= (and d!2211328 (not c!1318996)) b!7071305))

(declare-fun m!7796886 () Bool)

(assert (=> d!2211328 m!7796886))

(declare-fun m!7796888 () Bool)

(assert (=> b!7071304 m!7796888))

(declare-fun m!7796890 () Bool)

(assert (=> b!7071305 m!7796890))

(assert (=> b!7071305 m!7796890))

(declare-fun m!7796892 () Bool)

(assert (=> b!7071305 m!7796892))

(declare-fun m!7796894 () Bool)

(assert (=> b!7071305 m!7796894))

(assert (=> b!7071305 m!7796892))

(assert (=> b!7071305 m!7796894))

(declare-fun m!7796896 () Bool)

(assert (=> b!7071305 m!7796896))

(assert (=> b!7071106 d!2211328))

(declare-fun d!2211330 () Bool)

(declare-fun e!4251256 () Bool)

(assert (=> d!2211330 e!4251256))

(declare-fun res!2887873 () Bool)

(assert (=> d!2211330 (=> (not res!2887873) (not e!4251256))))

(declare-fun lt!2545264 () List!68448)

(declare-fun noDuplicate!2726 (List!68448) Bool)

(assert (=> d!2211330 (= res!2887873 (noDuplicate!2726 lt!2545264))))

(declare-fun choose!54194 ((Set Context!13272)) List!68448)

(assert (=> d!2211330 (= lt!2545264 (choose!54194 lt!2545066))))

(assert (=> d!2211330 (= (toList!10981 lt!2545066) lt!2545264)))

(declare-fun b!7071308 () Bool)

(declare-fun content!13786 (List!68448) (Set Context!13272))

(assert (=> b!7071308 (= e!4251256 (= (content!13786 lt!2545264) lt!2545066))))

(assert (= (and d!2211330 res!2887873) b!7071308))

(declare-fun m!7796898 () Bool)

(assert (=> d!2211330 m!7796898))

(declare-fun m!7796900 () Bool)

(assert (=> d!2211330 m!7796900))

(declare-fun m!7796902 () Bool)

(assert (=> b!7071308 m!7796902))

(assert (=> b!7071106 d!2211330))

(declare-fun bs!1880586 () Bool)

(declare-fun d!2211332 () Bool)

(assert (= bs!1880586 (and d!2211332 b!7071106)))

(declare-fun lambda!425358 () Int)

(assert (=> bs!1880586 (= lambda!425358 lambda!425305)))

(assert (=> d!2211332 true))

(assert (=> d!2211332 (exists!3683 lt!2545076 lambda!425358)))

(declare-fun lt!2545267 () Unit!161990)

(declare-fun choose!54195 (List!68448 List!68447) Unit!161990)

(assert (=> d!2211332 (= lt!2545267 (choose!54195 lt!2545076 s!7408))))

(assert (=> d!2211332 (matchZipper!3180 (content!13786 lt!2545076) s!7408)))

(assert (=> d!2211332 (= (lemmaZipperMatchesExistsMatchingContext!561 lt!2545076 s!7408) lt!2545267)))

(declare-fun bs!1880587 () Bool)

(assert (= bs!1880587 d!2211332))

(declare-fun m!7796904 () Bool)

(assert (=> bs!1880587 m!7796904))

(declare-fun m!7796906 () Bool)

(assert (=> bs!1880587 m!7796906))

(declare-fun m!7796908 () Bool)

(assert (=> bs!1880587 m!7796908))

(assert (=> bs!1880587 m!7796908))

(declare-fun m!7796910 () Bool)

(assert (=> bs!1880587 m!7796910))

(assert (=> b!7071106 d!2211332))

(declare-fun d!2211334 () Bool)

(declare-fun e!4251259 () Bool)

(assert (=> d!2211334 e!4251259))

(declare-fun res!2887876 () Bool)

(assert (=> d!2211334 (=> (not res!2887876) (not e!4251259))))

(declare-fun lt!2545270 () Context!13272)

(declare-fun dynLambda!27791 (Int Context!13272) Bool)

(assert (=> d!2211334 (= res!2887876 (dynLambda!27791 lambda!425305 lt!2545270))))

(declare-fun getWitness!1742 (List!68448 Int) Context!13272)

(assert (=> d!2211334 (= lt!2545270 (getWitness!1742 (toList!10981 lt!2545066) lambda!425305))))

(declare-fun exists!3685 ((Set Context!13272) Int) Bool)

(assert (=> d!2211334 (exists!3685 lt!2545066 lambda!425305)))

(assert (=> d!2211334 (= (getWitness!1740 lt!2545066 lambda!425305) lt!2545270)))

(declare-fun b!7071311 () Bool)

(assert (=> b!7071311 (= e!4251259 (set.member lt!2545270 lt!2545066))))

(assert (= (and d!2211334 res!2887876) b!7071311))

(declare-fun b_lambda!269959 () Bool)

(assert (=> (not b_lambda!269959) (not d!2211334)))

(declare-fun m!7796912 () Bool)

(assert (=> d!2211334 m!7796912))

(assert (=> d!2211334 m!7796640))

(assert (=> d!2211334 m!7796640))

(declare-fun m!7796914 () Bool)

(assert (=> d!2211334 m!7796914))

(declare-fun m!7796916 () Bool)

(assert (=> d!2211334 m!7796916))

(declare-fun m!7796918 () Bool)

(assert (=> b!7071311 m!7796918))

(assert (=> b!7071106 d!2211334))

(declare-fun bs!1880588 () Bool)

(declare-fun d!2211336 () Bool)

(assert (= bs!1880588 (and d!2211336 b!7071106)))

(declare-fun lambda!425361 () Int)

(assert (=> bs!1880588 (not (= lambda!425361 lambda!425305))))

(declare-fun bs!1880589 () Bool)

(assert (= bs!1880589 (and d!2211336 d!2211332)))

(assert (=> bs!1880589 (not (= lambda!425361 lambda!425358))))

(assert (=> d!2211336 true))

(declare-fun order!28403 () Int)

(declare-fun dynLambda!27792 (Int Int) Int)

(assert (=> d!2211336 (< (dynLambda!27792 order!28403 lambda!425305) (dynLambda!27792 order!28403 lambda!425361))))

(declare-fun forall!16594 (List!68448 Int) Bool)

(assert (=> d!2211336 (= (exists!3683 lt!2545076 lambda!425305) (not (forall!16594 lt!2545076 lambda!425361)))))

(declare-fun bs!1880590 () Bool)

(assert (= bs!1880590 d!2211336))

(declare-fun m!7796920 () Bool)

(assert (=> bs!1880590 m!7796920))

(assert (=> b!7071106 d!2211336))

(declare-fun e!4251265 () Bool)

(declare-fun b!7071325 () Bool)

(declare-fun lt!2545273 () List!68447)

(assert (=> b!7071325 (= e!4251265 (or (not (= (_2!37430 lt!2545086) Nil!68323)) (= lt!2545273 lt!2545071)))))

(declare-fun b!7071323 () Bool)

(declare-fun e!4251264 () List!68447)

(assert (=> b!7071323 (= e!4251264 (Cons!68323 (h!74771 lt!2545071) (++!15764 (t!382230 lt!2545071) (_2!37430 lt!2545086))))))

(declare-fun b!7071322 () Bool)

(assert (=> b!7071322 (= e!4251264 (_2!37430 lt!2545086))))

(declare-fun b!7071324 () Bool)

(declare-fun res!2887882 () Bool)

(assert (=> b!7071324 (=> (not res!2887882) (not e!4251265))))

(assert (=> b!7071324 (= res!2887882 (= (size!41211 lt!2545273) (+ (size!41211 lt!2545071) (size!41211 (_2!37430 lt!2545086)))))))

(declare-fun d!2211338 () Bool)

(assert (=> d!2211338 e!4251265))

(declare-fun res!2887881 () Bool)

(assert (=> d!2211338 (=> (not res!2887881) (not e!4251265))))

(declare-fun content!13787 (List!68447) (Set C!35550))

(assert (=> d!2211338 (= res!2887881 (= (content!13787 lt!2545273) (set.union (content!13787 lt!2545071) (content!13787 (_2!37430 lt!2545086)))))))

(assert (=> d!2211338 (= lt!2545273 e!4251264)))

(declare-fun c!1319001 () Bool)

(assert (=> d!2211338 (= c!1319001 (is-Nil!68323 lt!2545071))))

(assert (=> d!2211338 (= (++!15764 lt!2545071 (_2!37430 lt!2545086)) lt!2545273)))

(assert (= (and d!2211338 c!1319001) b!7071322))

(assert (= (and d!2211338 (not c!1319001)) b!7071323))

(assert (= (and d!2211338 res!2887881) b!7071324))

(assert (= (and b!7071324 res!2887882) b!7071325))

(declare-fun m!7796922 () Bool)

(assert (=> b!7071323 m!7796922))

(declare-fun m!7796924 () Bool)

(assert (=> b!7071324 m!7796924))

(assert (=> b!7071324 m!7796842))

(declare-fun m!7796926 () Bool)

(assert (=> b!7071324 m!7796926))

(declare-fun m!7796928 () Bool)

(assert (=> d!2211338 m!7796928))

(declare-fun m!7796930 () Bool)

(assert (=> d!2211338 m!7796930))

(declare-fun m!7796932 () Bool)

(assert (=> d!2211338 m!7796932))

(assert (=> b!7071085 d!2211338))

(declare-fun d!2211340 () Bool)

(assert (=> d!2211340 (= (get!23930 lt!2545080) (v!53252 lt!2545080))))

(assert (=> b!7071104 d!2211340))

(declare-fun call!642699 () List!68446)

(declare-fun c!1319004 () Bool)

(declare-fun c!1319002 () Bool)

(declare-fun call!642694 () (Set Context!13272))

(declare-fun bm!642689 () Bool)

(declare-fun c!1319005 () Bool)

(assert (=> bm!642689 (= call!642694 (derivationStepZipperDown!2274 (ite c!1319004 (regOne!35793 (h!74770 (exprs!7136 lt!2545070))) (ite c!1319002 (regTwo!35792 (h!74770 (exprs!7136 lt!2545070))) (ite c!1319005 (regOne!35792 (h!74770 (exprs!7136 lt!2545070))) (reg!17969 (h!74770 (exprs!7136 lt!2545070)))))) (ite (or c!1319004 c!1319002) lt!2545061 (Context!13273 call!642699)) (h!74771 s!7408)))))

(declare-fun bm!642690 () Bool)

(declare-fun call!642696 () (Set Context!13272))

(declare-fun call!642695 () List!68446)

(assert (=> bm!642690 (= call!642696 (derivationStepZipperDown!2274 (ite c!1319004 (regTwo!35793 (h!74770 (exprs!7136 lt!2545070))) (regOne!35792 (h!74770 (exprs!7136 lt!2545070)))) (ite c!1319004 lt!2545061 (Context!13273 call!642695)) (h!74771 s!7408)))))

(declare-fun b!7071326 () Bool)

(declare-fun e!4251270 () (Set Context!13272))

(declare-fun call!642697 () (Set Context!13272))

(assert (=> b!7071326 (= e!4251270 call!642697)))

(declare-fun bm!642691 () Bool)

(declare-fun call!642698 () (Set Context!13272))

(assert (=> bm!642691 (= call!642697 call!642698)))

(declare-fun b!7071327 () Bool)

(declare-fun e!4251269 () (Set Context!13272))

(assert (=> b!7071327 (= e!4251269 e!4251270)))

(assert (=> b!7071327 (= c!1319005 (is-Concat!26485 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun b!7071328 () Bool)

(declare-fun e!4251271 () Bool)

(assert (=> b!7071328 (= c!1319002 e!4251271)))

(declare-fun res!2887883 () Bool)

(assert (=> b!7071328 (=> (not res!2887883) (not e!4251271))))

(assert (=> b!7071328 (= res!2887883 (is-Concat!26485 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun e!4251267 () (Set Context!13272))

(assert (=> b!7071328 (= e!4251267 e!4251269)))

(declare-fun b!7071329 () Bool)

(declare-fun c!1319006 () Bool)

(assert (=> b!7071329 (= c!1319006 (is-Star!17640 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun e!4251268 () (Set Context!13272))

(assert (=> b!7071329 (= e!4251270 e!4251268)))

(declare-fun b!7071330 () Bool)

(assert (=> b!7071330 (= e!4251268 call!642697)))

(declare-fun b!7071331 () Bool)

(assert (=> b!7071331 (= e!4251267 (set.union call!642694 call!642696))))

(declare-fun b!7071332 () Bool)

(declare-fun e!4251266 () (Set Context!13272))

(assert (=> b!7071332 (= e!4251266 (set.insert lt!2545061 (as set.empty (Set Context!13272))))))

(declare-fun bm!642692 () Bool)

(assert (=> bm!642692 (= call!642698 call!642694)))

(declare-fun bm!642693 () Bool)

(assert (=> bm!642693 (= call!642695 ($colon$colon!2658 (exprs!7136 lt!2545061) (ite (or c!1319002 c!1319005) (regTwo!35792 (h!74770 (exprs!7136 lt!2545070))) (h!74770 (exprs!7136 lt!2545070)))))))

(declare-fun b!7071333 () Bool)

(assert (=> b!7071333 (= e!4251271 (nullable!7323 (regOne!35792 (h!74770 (exprs!7136 lt!2545070)))))))

(declare-fun b!7071334 () Bool)

(assert (=> b!7071334 (= e!4251268 (as set.empty (Set Context!13272)))))

(declare-fun d!2211342 () Bool)

(declare-fun c!1319003 () Bool)

(assert (=> d!2211342 (= c!1319003 (and (is-ElementMatch!17640 (h!74770 (exprs!7136 lt!2545070))) (= (c!1318951 (h!74770 (exprs!7136 lt!2545070))) (h!74771 s!7408))))))

(assert (=> d!2211342 (= (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) lt!2545061 (h!74771 s!7408)) e!4251266)))

(declare-fun b!7071335 () Bool)

(assert (=> b!7071335 (= e!4251266 e!4251267)))

(assert (=> b!7071335 (= c!1319004 (is-Union!17640 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun b!7071336 () Bool)

(assert (=> b!7071336 (= e!4251269 (set.union call!642696 call!642698))))

(declare-fun bm!642694 () Bool)

(assert (=> bm!642694 (= call!642699 call!642695)))

(assert (= (and d!2211342 c!1319003) b!7071332))

(assert (= (and d!2211342 (not c!1319003)) b!7071335))

(assert (= (and b!7071335 c!1319004) b!7071331))

(assert (= (and b!7071335 (not c!1319004)) b!7071328))

(assert (= (and b!7071328 res!2887883) b!7071333))

(assert (= (and b!7071328 c!1319002) b!7071336))

(assert (= (and b!7071328 (not c!1319002)) b!7071327))

(assert (= (and b!7071327 c!1319005) b!7071326))

(assert (= (and b!7071327 (not c!1319005)) b!7071329))

(assert (= (and b!7071329 c!1319006) b!7071330))

(assert (= (and b!7071329 (not c!1319006)) b!7071334))

(assert (= (or b!7071326 b!7071330) bm!642694))

(assert (= (or b!7071326 b!7071330) bm!642691))

(assert (= (or b!7071336 bm!642691) bm!642692))

(assert (= (or b!7071336 bm!642694) bm!642693))

(assert (= (or b!7071331 bm!642692) bm!642689))

(assert (= (or b!7071331 b!7071336) bm!642690))

(assert (=> b!7071333 m!7796832))

(declare-fun m!7796934 () Bool)

(assert (=> bm!642690 m!7796934))

(declare-fun m!7796936 () Bool)

(assert (=> b!7071332 m!7796936))

(declare-fun m!7796938 () Bool)

(assert (=> bm!642693 m!7796938))

(declare-fun m!7796940 () Bool)

(assert (=> bm!642689 m!7796940))

(assert (=> b!7071104 d!2211342))

(declare-fun d!2211344 () Bool)

(assert (=> d!2211344 (isDefined!13660 (findConcatSeparationZippers!475 lt!2545081 (set.insert ct2!306 (as set.empty (Set Context!13272))) Nil!68323 (t!382230 s!7408) (t!382230 s!7408)))))

(declare-fun lt!2545276 () Unit!161990)

(declare-fun choose!54196 ((Set Context!13272) Context!13272 List!68447) Unit!161990)

(assert (=> d!2211344 (= lt!2545276 (choose!54196 lt!2545081 ct2!306 (t!382230 s!7408)))))

(assert (=> d!2211344 (matchZipper!3180 (appendTo!761 lt!2545081 ct2!306) (t!382230 s!7408))))

(assert (=> d!2211344 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!463 lt!2545081 ct2!306 (t!382230 s!7408)) lt!2545276)))

(declare-fun bs!1880591 () Bool)

(assert (= bs!1880591 d!2211344))

(assert (=> bs!1880591 m!7796596))

(declare-fun m!7796942 () Bool)

(assert (=> bs!1880591 m!7796942))

(assert (=> bs!1880591 m!7796604))

(declare-fun m!7796944 () Bool)

(assert (=> bs!1880591 m!7796944))

(assert (=> bs!1880591 m!7796942))

(declare-fun m!7796946 () Bool)

(assert (=> bs!1880591 m!7796946))

(assert (=> bs!1880591 m!7796596))

(assert (=> bs!1880591 m!7796604))

(declare-fun m!7796948 () Bool)

(assert (=> bs!1880591 m!7796948))

(assert (=> b!7071104 d!2211344))

(declare-fun bs!1880592 () Bool)

(declare-fun d!2211346 () Bool)

(assert (= bs!1880592 (and d!2211346 b!7071080)))

(declare-fun lambda!425364 () Int)

(assert (=> bs!1880592 (= lambda!425364 lambda!425307)))

(declare-fun bs!1880593 () Bool)

(assert (= bs!1880593 (and d!2211346 d!2211306)))

(assert (=> bs!1880593 (= lambda!425364 lambda!425355)))

(assert (=> d!2211346 (= (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) (Context!13273 (++!15763 (exprs!7136 lt!2545061) (exprs!7136 ct2!306))) (h!74771 s!7408)) (appendTo!761 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) lt!2545061 (h!74771 s!7408)) ct2!306))))

(declare-fun lt!2545282 () Unit!161990)

(assert (=> d!2211346 (= lt!2545282 (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545061) (exprs!7136 ct2!306) lambda!425364))))

(declare-fun lt!2545281 () Unit!161990)

(declare-fun choose!54197 (Context!13272 Regex!17640 C!35550 Context!13272) Unit!161990)

(assert (=> d!2211346 (= lt!2545281 (choose!54197 lt!2545061 (h!74770 (exprs!7136 lt!2545070)) (h!74771 s!7408) ct2!306))))

(declare-fun validRegex!8971 (Regex!17640) Bool)

(assert (=> d!2211346 (validRegex!8971 (h!74770 (exprs!7136 lt!2545070)))))

(assert (=> d!2211346 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!111 lt!2545061 (h!74770 (exprs!7136 lt!2545070)) (h!74771 s!7408) ct2!306) lt!2545281)))

(declare-fun bs!1880594 () Bool)

(assert (= bs!1880594 d!2211346))

(assert (=> bs!1880594 m!7796608))

(declare-fun m!7796950 () Bool)

(assert (=> bs!1880594 m!7796950))

(declare-fun m!7796952 () Bool)

(assert (=> bs!1880594 m!7796952))

(assert (=> bs!1880594 m!7796608))

(declare-fun m!7796954 () Bool)

(assert (=> bs!1880594 m!7796954))

(declare-fun m!7796956 () Bool)

(assert (=> bs!1880594 m!7796956))

(declare-fun m!7796958 () Bool)

(assert (=> bs!1880594 m!7796958))

(declare-fun m!7796960 () Bool)

(assert (=> bs!1880594 m!7796960))

(assert (=> b!7071104 d!2211346))

(declare-fun bs!1880595 () Bool)

(declare-fun d!2211348 () Bool)

(assert (= bs!1880595 (and d!2211348 b!7071080)))

(declare-fun lambda!425369 () Int)

(assert (=> bs!1880595 (= lambda!425369 lambda!425306)))

(assert (=> d!2211348 true))

(declare-fun map!15986 ((Set Context!13272) Int) (Set Context!13272))

(assert (=> d!2211348 (= (appendTo!761 lt!2545081 ct2!306) (map!15986 lt!2545081 lambda!425369))))

(declare-fun bs!1880596 () Bool)

(assert (= bs!1880596 d!2211348))

(declare-fun m!7796962 () Bool)

(assert (=> bs!1880596 m!7796962))

(assert (=> b!7071104 d!2211348))

(assert (=> b!7071104 d!2211312))

(declare-fun d!2211350 () Bool)

(declare-fun c!1319009 () Bool)

(assert (=> d!2211350 (= c!1319009 (isEmpty!39876 (_1!37430 lt!2545086)))))

(declare-fun e!4251272 () Bool)

(assert (=> d!2211350 (= (matchZipper!3180 lt!2545081 (_1!37430 lt!2545086)) e!4251272)))

(declare-fun b!7071337 () Bool)

(assert (=> b!7071337 (= e!4251272 (nullableZipper!2697 lt!2545081))))

(declare-fun b!7071338 () Bool)

(assert (=> b!7071338 (= e!4251272 (matchZipper!3180 (derivationStepZipper!3090 lt!2545081 (head!14405 (_1!37430 lt!2545086))) (tail!13823 (_1!37430 lt!2545086))))))

(assert (= (and d!2211350 c!1319009) b!7071337))

(assert (= (and d!2211350 (not c!1319009)) b!7071338))

(assert (=> d!2211350 m!7796770))

(declare-fun m!7796964 () Bool)

(assert (=> b!7071337 m!7796964))

(assert (=> b!7071338 m!7796774))

(assert (=> b!7071338 m!7796774))

(declare-fun m!7796966 () Bool)

(assert (=> b!7071338 m!7796966))

(assert (=> b!7071338 m!7796778))

(assert (=> b!7071338 m!7796966))

(assert (=> b!7071338 m!7796778))

(declare-fun m!7796968 () Bool)

(assert (=> b!7071338 m!7796968))

(assert (=> b!7071104 d!2211350))

(declare-fun d!2211352 () Bool)

(declare-fun isEmpty!39877 (Option!16959) Bool)

(assert (=> d!2211352 (= (isDefined!13660 lt!2545080) (not (isEmpty!39877 lt!2545080)))))

(declare-fun bs!1880597 () Bool)

(assert (= bs!1880597 d!2211352))

(declare-fun m!7796970 () Bool)

(assert (=> bs!1880597 m!7796970))

(assert (=> b!7071104 d!2211352))

(declare-fun b!7071357 () Bool)

(declare-fun res!2887894 () Bool)

(declare-fun e!4251285 () Bool)

(assert (=> b!7071357 (=> (not res!2887894) (not e!4251285))))

(declare-fun lt!2545291 () Option!16959)

(assert (=> b!7071357 (= res!2887894 (matchZipper!3180 lt!2545081 (_1!37430 (get!23930 lt!2545291))))))

(declare-fun b!7071358 () Bool)

(declare-fun e!4251284 () Option!16959)

(assert (=> b!7071358 (= e!4251284 None!16958)))

(declare-fun b!7071359 () Bool)

(assert (=> b!7071359 (= e!4251285 (= (++!15764 (_1!37430 (get!23930 lt!2545291)) (_2!37430 (get!23930 lt!2545291))) (t!382230 s!7408)))))

(declare-fun b!7071360 () Bool)

(declare-fun res!2887898 () Bool)

(assert (=> b!7071360 (=> (not res!2887898) (not e!4251285))))

(assert (=> b!7071360 (= res!2887898 (matchZipper!3180 lt!2545072 (_2!37430 (get!23930 lt!2545291))))))

(declare-fun b!7071361 () Bool)

(declare-fun lt!2545292 () Unit!161990)

(declare-fun lt!2545293 () Unit!161990)

(assert (=> b!7071361 (= lt!2545292 lt!2545293)))

(assert (=> b!7071361 (= (++!15764 (++!15764 Nil!68323 (Cons!68323 (h!74771 (t!382230 s!7408)) Nil!68323)) (t!382230 (t!382230 s!7408))) (t!382230 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2973 (List!68447 C!35550 List!68447 List!68447) Unit!161990)

(assert (=> b!7071361 (= lt!2545293 (lemmaMoveElementToOtherListKeepsConcatEq!2973 Nil!68323 (h!74771 (t!382230 s!7408)) (t!382230 (t!382230 s!7408)) (t!382230 s!7408)))))

(assert (=> b!7071361 (= e!4251284 (findConcatSeparationZippers!475 lt!2545081 lt!2545072 (++!15764 Nil!68323 (Cons!68323 (h!74771 (t!382230 s!7408)) Nil!68323)) (t!382230 (t!382230 s!7408)) (t!382230 s!7408)))))

(declare-fun b!7071362 () Bool)

(declare-fun e!4251283 () Bool)

(assert (=> b!7071362 (= e!4251283 (matchZipper!3180 lt!2545072 (t!382230 s!7408)))))

(declare-fun d!2211354 () Bool)

(declare-fun e!4251287 () Bool)

(assert (=> d!2211354 e!4251287))

(declare-fun res!2887896 () Bool)

(assert (=> d!2211354 (=> res!2887896 e!4251287)))

(assert (=> d!2211354 (= res!2887896 e!4251285)))

(declare-fun res!2887897 () Bool)

(assert (=> d!2211354 (=> (not res!2887897) (not e!4251285))))

(assert (=> d!2211354 (= res!2887897 (isDefined!13660 lt!2545291))))

(declare-fun e!4251286 () Option!16959)

(assert (=> d!2211354 (= lt!2545291 e!4251286)))

(declare-fun c!1319015 () Bool)

(assert (=> d!2211354 (= c!1319015 e!4251283)))

(declare-fun res!2887895 () Bool)

(assert (=> d!2211354 (=> (not res!2887895) (not e!4251283))))

(assert (=> d!2211354 (= res!2887895 (matchZipper!3180 lt!2545081 Nil!68323))))

(assert (=> d!2211354 (= (++!15764 Nil!68323 (t!382230 s!7408)) (t!382230 s!7408))))

(assert (=> d!2211354 (= (findConcatSeparationZippers!475 lt!2545081 lt!2545072 Nil!68323 (t!382230 s!7408) (t!382230 s!7408)) lt!2545291)))

(declare-fun b!7071363 () Bool)

(assert (=> b!7071363 (= e!4251286 (Some!16958 (tuple2!68255 Nil!68323 (t!382230 s!7408))))))

(declare-fun b!7071364 () Bool)

(assert (=> b!7071364 (= e!4251287 (not (isDefined!13660 lt!2545291)))))

(declare-fun b!7071365 () Bool)

(assert (=> b!7071365 (= e!4251286 e!4251284)))

(declare-fun c!1319014 () Bool)

(assert (=> b!7071365 (= c!1319014 (is-Nil!68323 (t!382230 s!7408)))))

(assert (= (and d!2211354 res!2887895) b!7071362))

(assert (= (and d!2211354 c!1319015) b!7071363))

(assert (= (and d!2211354 (not c!1319015)) b!7071365))

(assert (= (and b!7071365 c!1319014) b!7071358))

(assert (= (and b!7071365 (not c!1319014)) b!7071361))

(assert (= (and d!2211354 res!2887897) b!7071357))

(assert (= (and b!7071357 res!2887894) b!7071360))

(assert (= (and b!7071360 res!2887898) b!7071359))

(assert (= (and d!2211354 (not res!2887896)) b!7071364))

(declare-fun m!7796972 () Bool)

(assert (=> b!7071362 m!7796972))

(declare-fun m!7796974 () Bool)

(assert (=> b!7071364 m!7796974))

(declare-fun m!7796976 () Bool)

(assert (=> b!7071361 m!7796976))

(assert (=> b!7071361 m!7796976))

(declare-fun m!7796978 () Bool)

(assert (=> b!7071361 m!7796978))

(declare-fun m!7796980 () Bool)

(assert (=> b!7071361 m!7796980))

(assert (=> b!7071361 m!7796976))

(declare-fun m!7796982 () Bool)

(assert (=> b!7071361 m!7796982))

(declare-fun m!7796984 () Bool)

(assert (=> b!7071360 m!7796984))

(declare-fun m!7796986 () Bool)

(assert (=> b!7071360 m!7796986))

(assert (=> b!7071359 m!7796984))

(declare-fun m!7796988 () Bool)

(assert (=> b!7071359 m!7796988))

(assert (=> b!7071357 m!7796984))

(declare-fun m!7796990 () Bool)

(assert (=> b!7071357 m!7796990))

(assert (=> d!2211354 m!7796974))

(declare-fun m!7796992 () Bool)

(assert (=> d!2211354 m!7796992))

(declare-fun m!7796994 () Bool)

(assert (=> d!2211354 m!7796994))

(assert (=> b!7071104 d!2211354))

(declare-fun d!2211356 () Bool)

(declare-fun c!1319016 () Bool)

(assert (=> d!2211356 (= c!1319016 (isEmpty!39876 s!7408))))

(declare-fun e!4251288 () Bool)

(assert (=> d!2211356 (= (matchZipper!3180 lt!2545066 s!7408) e!4251288)))

(declare-fun b!7071366 () Bool)

(assert (=> b!7071366 (= e!4251288 (nullableZipper!2697 lt!2545066))))

(declare-fun b!7071367 () Bool)

(assert (=> b!7071367 (= e!4251288 (matchZipper!3180 (derivationStepZipper!3090 lt!2545066 (head!14405 s!7408)) (tail!13823 s!7408)))))

(assert (= (and d!2211356 c!1319016) b!7071366))

(assert (= (and d!2211356 (not c!1319016)) b!7071367))

(assert (=> d!2211356 m!7796886))

(declare-fun m!7796996 () Bool)

(assert (=> b!7071366 m!7796996))

(assert (=> b!7071367 m!7796890))

(assert (=> b!7071367 m!7796890))

(declare-fun m!7796998 () Bool)

(assert (=> b!7071367 m!7796998))

(assert (=> b!7071367 m!7796894))

(assert (=> b!7071367 m!7796998))

(assert (=> b!7071367 m!7796894))

(declare-fun m!7797000 () Bool)

(assert (=> b!7071367 m!7797000))

(assert (=> start!686870 d!2211356))

(declare-fun bs!1880598 () Bool)

(declare-fun d!2211358 () Bool)

(assert (= bs!1880598 (and d!2211358 b!7071080)))

(declare-fun lambda!425370 () Int)

(assert (=> bs!1880598 (= lambda!425370 lambda!425306)))

(declare-fun bs!1880599 () Bool)

(assert (= bs!1880599 (and d!2211358 d!2211348)))

(assert (=> bs!1880599 (= lambda!425370 lambda!425369)))

(assert (=> d!2211358 true))

(assert (=> d!2211358 (= (appendTo!761 z1!570 ct2!306) (map!15986 z1!570 lambda!425370))))

(declare-fun bs!1880600 () Bool)

(assert (= bs!1880600 d!2211358))

(declare-fun m!7797002 () Bool)

(assert (=> bs!1880600 m!7797002))

(assert (=> start!686870 d!2211358))

(declare-fun bs!1880601 () Bool)

(declare-fun d!2211360 () Bool)

(assert (= bs!1880601 (and d!2211360 b!7071080)))

(declare-fun lambda!425371 () Int)

(assert (=> bs!1880601 (= lambda!425371 lambda!425307)))

(declare-fun bs!1880602 () Bool)

(assert (= bs!1880602 (and d!2211360 d!2211306)))

(assert (=> bs!1880602 (= lambda!425371 lambda!425355)))

(declare-fun bs!1880603 () Bool)

(assert (= bs!1880603 (and d!2211360 d!2211346)))

(assert (=> bs!1880603 (= lambda!425371 lambda!425364)))

(assert (=> d!2211360 (= (inv!86960 ct2!306) (forall!16593 (exprs!7136 ct2!306) lambda!425371))))

(declare-fun bs!1880604 () Bool)

(assert (= bs!1880604 d!2211360))

(declare-fun m!7797004 () Bool)

(assert (=> bs!1880604 m!7797004))

(assert (=> start!686870 d!2211360))

(declare-fun d!2211362 () Bool)

(declare-fun nullableFct!2812 (Regex!17640) Bool)

(assert (=> d!2211362 (= (nullable!7323 (h!74770 (exprs!7136 lt!2545070))) (nullableFct!2812 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun bs!1880605 () Bool)

(assert (= bs!1880605 d!2211362))

(declare-fun m!7797006 () Bool)

(assert (=> bs!1880605 m!7797006))

(assert (=> b!7071105 d!2211362))

(declare-fun d!2211364 () Bool)

(assert (=> d!2211364 (= (tail!13821 (exprs!7136 lt!2545070)) (t!382229 (exprs!7136 lt!2545070)))))

(assert (=> b!7071105 d!2211364))

(declare-fun d!2211366 () Bool)

(assert (=> d!2211366 (= (isEmpty!39874 (exprs!7136 lt!2545070)) (is-Nil!68322 (exprs!7136 lt!2545070)))))

(assert (=> b!7071089 d!2211366))

(declare-fun b!7071371 () Bool)

(declare-fun e!4251290 () Bool)

(declare-fun lt!2545294 () List!68447)

(assert (=> b!7071371 (= e!4251290 (or (not (= s!7408 Nil!68323)) (= lt!2545294 Nil!68323)))))

(declare-fun b!7071369 () Bool)

(declare-fun e!4251289 () List!68447)

(assert (=> b!7071369 (= e!4251289 (Cons!68323 (h!74771 Nil!68323) (++!15764 (t!382230 Nil!68323) s!7408)))))

(declare-fun b!7071368 () Bool)

(assert (=> b!7071368 (= e!4251289 s!7408)))

(declare-fun b!7071370 () Bool)

(declare-fun res!2887900 () Bool)

(assert (=> b!7071370 (=> (not res!2887900) (not e!4251290))))

(assert (=> b!7071370 (= res!2887900 (= (size!41211 lt!2545294) (+ (size!41211 Nil!68323) (size!41211 s!7408))))))

(declare-fun d!2211368 () Bool)

(assert (=> d!2211368 e!4251290))

(declare-fun res!2887899 () Bool)

(assert (=> d!2211368 (=> (not res!2887899) (not e!4251290))))

(assert (=> d!2211368 (= res!2887899 (= (content!13787 lt!2545294) (set.union (content!13787 Nil!68323) (content!13787 s!7408))))))

(assert (=> d!2211368 (= lt!2545294 e!4251289)))

(declare-fun c!1319017 () Bool)

(assert (=> d!2211368 (= c!1319017 (is-Nil!68323 Nil!68323))))

(assert (=> d!2211368 (= (++!15764 Nil!68323 s!7408) lt!2545294)))

(assert (= (and d!2211368 c!1319017) b!7071368))

(assert (= (and d!2211368 (not c!1319017)) b!7071369))

(assert (= (and d!2211368 res!2887899) b!7071370))

(assert (= (and b!7071370 res!2887900) b!7071371))

(declare-fun m!7797008 () Bool)

(assert (=> b!7071369 m!7797008))

(declare-fun m!7797010 () Bool)

(assert (=> b!7071370 m!7797010))

(assert (=> b!7071370 m!7796844))

(declare-fun m!7797012 () Bool)

(assert (=> b!7071370 m!7797012))

(declare-fun m!7797014 () Bool)

(assert (=> d!2211368 m!7797014))

(declare-fun m!7797016 () Bool)

(assert (=> d!2211368 m!7797016))

(declare-fun m!7797018 () Bool)

(assert (=> d!2211368 m!7797018))

(assert (=> b!7071107 d!2211368))

(assert (=> b!7071088 d!2211312))

(assert (=> b!7071100 d!2211326))

(declare-fun d!2211370 () Bool)

(declare-fun choose!54198 ((Set Context!13272) Int) (Set Context!13272))

(assert (=> d!2211370 (= (flatMap!2566 lt!2545068 lambda!425308) (choose!54198 lt!2545068 lambda!425308))))

(declare-fun bs!1880606 () Bool)

(assert (= bs!1880606 d!2211370))

(declare-fun m!7797020 () Bool)

(assert (=> bs!1880606 m!7797020))

(assert (=> b!7071101 d!2211370))

(declare-fun d!2211372 () Bool)

(assert (=> d!2211372 (forall!16593 (++!15763 (exprs!7136 lt!2545070) (exprs!7136 ct2!306)) lambda!425307)))

(declare-fun lt!2545295 () Unit!161990)

(assert (=> d!2211372 (= lt!2545295 (choose!54193 (exprs!7136 lt!2545070) (exprs!7136 ct2!306) lambda!425307))))

(assert (=> d!2211372 (forall!16593 (exprs!7136 lt!2545070) lambda!425307)))

(assert (=> d!2211372 (= (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545070) (exprs!7136 ct2!306) lambda!425307) lt!2545295)))

(declare-fun bs!1880607 () Bool)

(assert (= bs!1880607 d!2211372))

(assert (=> bs!1880607 m!7796620))

(assert (=> bs!1880607 m!7796620))

(declare-fun m!7797022 () Bool)

(assert (=> bs!1880607 m!7797022))

(declare-fun m!7797024 () Bool)

(assert (=> bs!1880607 m!7797024))

(declare-fun m!7797026 () Bool)

(assert (=> bs!1880607 m!7797026))

(assert (=> b!7071101 d!2211372))

(declare-fun bs!1880608 () Bool)

(declare-fun d!2211374 () Bool)

(assert (= bs!1880608 (and d!2211374 b!7071101)))

(declare-fun lambda!425374 () Int)

(assert (=> bs!1880608 (= lambda!425374 lambda!425308)))

(assert (=> d!2211374 true))

(assert (=> d!2211374 (= (derivationStepZipper!3090 lt!2545068 (h!74771 s!7408)) (flatMap!2566 lt!2545068 lambda!425374))))

(declare-fun bs!1880609 () Bool)

(assert (= bs!1880609 d!2211374))

(declare-fun m!7797028 () Bool)

(assert (=> bs!1880609 m!7797028))

(assert (=> b!7071101 d!2211374))

(declare-fun b!7071374 () Bool)

(declare-fun e!4251292 () (Set Context!13272))

(declare-fun e!4251293 () (Set Context!13272))

(assert (=> b!7071374 (= e!4251292 e!4251293)))

(declare-fun c!1319021 () Bool)

(assert (=> b!7071374 (= c!1319021 (is-Cons!68322 (exprs!7136 lt!2545090)))))

(declare-fun b!7071375 () Bool)

(declare-fun e!4251291 () Bool)

(assert (=> b!7071375 (= e!4251291 (nullable!7323 (h!74770 (exprs!7136 lt!2545090))))))

(declare-fun bm!642695 () Bool)

(declare-fun call!642700 () (Set Context!13272))

(assert (=> bm!642695 (= call!642700 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545090)) (Context!13273 (t!382229 (exprs!7136 lt!2545090))) (h!74771 s!7408)))))

(declare-fun b!7071376 () Bool)

(assert (=> b!7071376 (= e!4251293 call!642700)))

(declare-fun d!2211376 () Bool)

(declare-fun c!1319020 () Bool)

(assert (=> d!2211376 (= c!1319020 e!4251291)))

(declare-fun res!2887901 () Bool)

(assert (=> d!2211376 (=> (not res!2887901) (not e!4251291))))

(assert (=> d!2211376 (= res!2887901 (is-Cons!68322 (exprs!7136 lt!2545090)))))

(assert (=> d!2211376 (= (derivationStepZipperUp!2224 lt!2545090 (h!74771 s!7408)) e!4251292)))

(declare-fun b!7071377 () Bool)

(assert (=> b!7071377 (= e!4251292 (set.union call!642700 (derivationStepZipperUp!2224 (Context!13273 (t!382229 (exprs!7136 lt!2545090))) (h!74771 s!7408))))))

(declare-fun b!7071378 () Bool)

(assert (=> b!7071378 (= e!4251293 (as set.empty (Set Context!13272)))))

(assert (= (and d!2211376 res!2887901) b!7071375))

(assert (= (and d!2211376 c!1319020) b!7071377))

(assert (= (and d!2211376 (not c!1319020)) b!7071374))

(assert (= (and b!7071374 c!1319021) b!7071376))

(assert (= (and b!7071374 (not c!1319021)) b!7071378))

(assert (= (or b!7071377 b!7071376) bm!642695))

(declare-fun m!7797030 () Bool)

(assert (=> b!7071375 m!7797030))

(declare-fun m!7797032 () Bool)

(assert (=> bm!642695 m!7797032))

(declare-fun m!7797034 () Bool)

(assert (=> b!7071377 m!7797034))

(assert (=> b!7071101 d!2211376))

(declare-fun d!2211378 () Bool)

(declare-fun dynLambda!27793 (Int Context!13272) (Set Context!13272))

(assert (=> d!2211378 (= (flatMap!2566 lt!2545068 lambda!425308) (dynLambda!27793 lambda!425308 lt!2545090))))

(declare-fun lt!2545298 () Unit!161990)

(declare-fun choose!54199 ((Set Context!13272) Context!13272 Int) Unit!161990)

(assert (=> d!2211378 (= lt!2545298 (choose!54199 lt!2545068 lt!2545090 lambda!425308))))

(assert (=> d!2211378 (= lt!2545068 (set.insert lt!2545090 (as set.empty (Set Context!13272))))))

(assert (=> d!2211378 (= (lemmaFlatMapOnSingletonSet!2075 lt!2545068 lt!2545090 lambda!425308) lt!2545298)))

(declare-fun b_lambda!269961 () Bool)

(assert (=> (not b_lambda!269961) (not d!2211378)))

(declare-fun bs!1880610 () Bool)

(assert (= bs!1880610 d!2211378))

(assert (=> bs!1880610 m!7796626))

(declare-fun m!7797036 () Bool)

(assert (=> bs!1880610 m!7797036))

(declare-fun m!7797038 () Bool)

(assert (=> bs!1880610 m!7797038))

(assert (=> bs!1880610 m!7796654))

(assert (=> b!7071101 d!2211378))

(assert (=> b!7071099 d!2211326))

(assert (=> b!7071099 d!2211312))

(declare-fun d!2211380 () Bool)

(declare-fun e!4251294 () Bool)

(assert (=> d!2211380 e!4251294))

(declare-fun res!2887903 () Bool)

(assert (=> d!2211380 (=> (not res!2887903) (not e!4251294))))

(declare-fun lt!2545299 () List!68446)

(assert (=> d!2211380 (= res!2887903 (= (content!13785 lt!2545299) (set.union (content!13785 (exprs!7136 lt!2545070)) (content!13785 (exprs!7136 ct2!306)))))))

(declare-fun e!4251295 () List!68446)

(assert (=> d!2211380 (= lt!2545299 e!4251295)))

(declare-fun c!1319022 () Bool)

(assert (=> d!2211380 (= c!1319022 (is-Nil!68322 (exprs!7136 lt!2545070)))))

(assert (=> d!2211380 (= (++!15763 (exprs!7136 lt!2545070) (exprs!7136 ct2!306)) lt!2545299)))

(declare-fun b!7071381 () Bool)

(declare-fun res!2887902 () Bool)

(assert (=> b!7071381 (=> (not res!2887902) (not e!4251294))))

(assert (=> b!7071381 (= res!2887902 (= (size!41210 lt!2545299) (+ (size!41210 (exprs!7136 lt!2545070)) (size!41210 (exprs!7136 ct2!306)))))))

(declare-fun b!7071379 () Bool)

(assert (=> b!7071379 (= e!4251295 (exprs!7136 ct2!306))))

(declare-fun b!7071380 () Bool)

(assert (=> b!7071380 (= e!4251295 (Cons!68322 (h!74770 (exprs!7136 lt!2545070)) (++!15763 (t!382229 (exprs!7136 lt!2545070)) (exprs!7136 ct2!306))))))

(declare-fun b!7071382 () Bool)

(assert (=> b!7071382 (= e!4251294 (or (not (= (exprs!7136 ct2!306) Nil!68322)) (= lt!2545299 (exprs!7136 lt!2545070))))))

(assert (= (and d!2211380 c!1319022) b!7071379))

(assert (= (and d!2211380 (not c!1319022)) b!7071380))

(assert (= (and d!2211380 res!2887903) b!7071381))

(assert (= (and b!7071381 res!2887902) b!7071382))

(declare-fun m!7797040 () Bool)

(assert (=> d!2211380 m!7797040))

(declare-fun m!7797042 () Bool)

(assert (=> d!2211380 m!7797042))

(assert (=> d!2211380 m!7796816))

(declare-fun m!7797044 () Bool)

(assert (=> b!7071381 m!7797044))

(declare-fun m!7797046 () Bool)

(assert (=> b!7071381 m!7797046))

(assert (=> b!7071381 m!7796822))

(declare-fun m!7797048 () Bool)

(assert (=> b!7071380 m!7797048))

(assert (=> b!7071080 d!2211380))

(assert (=> b!7071080 d!2211372))

(declare-fun d!2211382 () Bool)

(declare-fun e!4251298 () Bool)

(assert (=> d!2211382 e!4251298))

(declare-fun res!2887906 () Bool)

(assert (=> d!2211382 (=> (not res!2887906) (not e!4251298))))

(declare-fun lt!2545302 () Context!13272)

(declare-fun dynLambda!27794 (Int Context!13272) Context!13272)

(assert (=> d!2211382 (= res!2887906 (= lt!2545067 (dynLambda!27794 lambda!425306 lt!2545302)))))

(declare-fun choose!54200 ((Set Context!13272) Int Context!13272) Context!13272)

(assert (=> d!2211382 (= lt!2545302 (choose!54200 z1!570 lambda!425306 lt!2545067))))

(assert (=> d!2211382 (set.member lt!2545067 (map!15986 z1!570 lambda!425306))))

(assert (=> d!2211382 (= (mapPost2!469 z1!570 lambda!425306 lt!2545067) lt!2545302)))

(declare-fun b!7071386 () Bool)

(assert (=> b!7071386 (= e!4251298 (set.member lt!2545302 z1!570))))

(assert (= (and d!2211382 res!2887906) b!7071386))

(declare-fun b_lambda!269963 () Bool)

(assert (=> (not b_lambda!269963) (not d!2211382)))

(declare-fun m!7797050 () Bool)

(assert (=> d!2211382 m!7797050))

(declare-fun m!7797052 () Bool)

(assert (=> d!2211382 m!7797052))

(declare-fun m!7797054 () Bool)

(assert (=> d!2211382 m!7797054))

(declare-fun m!7797056 () Bool)

(assert (=> d!2211382 m!7797056))

(declare-fun m!7797058 () Bool)

(assert (=> b!7071386 m!7797058))

(assert (=> b!7071080 d!2211382))

(declare-fun d!2211384 () Bool)

(declare-fun c!1319023 () Bool)

(assert (=> d!2211384 (= c!1319023 (isEmpty!39876 (_2!37430 lt!2545086)))))

(declare-fun e!4251299 () Bool)

(assert (=> d!2211384 (= (matchZipper!3180 lt!2545072 (_2!37430 lt!2545086)) e!4251299)))

(declare-fun b!7071387 () Bool)

(assert (=> b!7071387 (= e!4251299 (nullableZipper!2697 lt!2545072))))

(declare-fun b!7071388 () Bool)

(assert (=> b!7071388 (= e!4251299 (matchZipper!3180 (derivationStepZipper!3090 lt!2545072 (head!14405 (_2!37430 lt!2545086))) (tail!13823 (_2!37430 lt!2545086))))))

(assert (= (and d!2211384 c!1319023) b!7071387))

(assert (= (and d!2211384 (not c!1319023)) b!7071388))

(declare-fun m!7797060 () Bool)

(assert (=> d!2211384 m!7797060))

(declare-fun m!7797062 () Bool)

(assert (=> b!7071387 m!7797062))

(declare-fun m!7797064 () Bool)

(assert (=> b!7071388 m!7797064))

(assert (=> b!7071388 m!7797064))

(declare-fun m!7797066 () Bool)

(assert (=> b!7071388 m!7797066))

(declare-fun m!7797068 () Bool)

(assert (=> b!7071388 m!7797068))

(assert (=> b!7071388 m!7797066))

(assert (=> b!7071388 m!7797068))

(declare-fun m!7797070 () Bool)

(assert (=> b!7071388 m!7797070))

(assert (=> b!7071103 d!2211384))

(assert (=> b!7071084 d!2211372))

(declare-fun d!2211386 () Bool)

(assert (=> d!2211386 (= (flatMap!2566 lt!2545078 lambda!425308) (choose!54198 lt!2545078 lambda!425308))))

(declare-fun bs!1880611 () Bool)

(assert (= bs!1880611 d!2211386))

(declare-fun m!7797072 () Bool)

(assert (=> bs!1880611 m!7797072))

(assert (=> b!7071082 d!2211386))

(declare-fun b!7071389 () Bool)

(declare-fun e!4251301 () (Set Context!13272))

(declare-fun e!4251302 () (Set Context!13272))

(assert (=> b!7071389 (= e!4251301 e!4251302)))

(declare-fun c!1319025 () Bool)

(assert (=> b!7071389 (= c!1319025 (is-Cons!68322 (exprs!7136 lt!2545070)))))

(declare-fun b!7071390 () Bool)

(declare-fun e!4251300 () Bool)

(assert (=> b!7071390 (= e!4251300 (nullable!7323 (h!74770 (exprs!7136 lt!2545070))))))

(declare-fun bm!642696 () Bool)

(declare-fun call!642701 () (Set Context!13272))

(assert (=> bm!642696 (= call!642701 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545070)) (Context!13273 (t!382229 (exprs!7136 lt!2545070))) (h!74771 s!7408)))))

(declare-fun b!7071391 () Bool)

(assert (=> b!7071391 (= e!4251302 call!642701)))

(declare-fun d!2211388 () Bool)

(declare-fun c!1319024 () Bool)

(assert (=> d!2211388 (= c!1319024 e!4251300)))

(declare-fun res!2887907 () Bool)

(assert (=> d!2211388 (=> (not res!2887907) (not e!4251300))))

(assert (=> d!2211388 (= res!2887907 (is-Cons!68322 (exprs!7136 lt!2545070)))))

(assert (=> d!2211388 (= (derivationStepZipperUp!2224 lt!2545070 (h!74771 s!7408)) e!4251301)))

(declare-fun b!7071392 () Bool)

(assert (=> b!7071392 (= e!4251301 (set.union call!642701 (derivationStepZipperUp!2224 (Context!13273 (t!382229 (exprs!7136 lt!2545070))) (h!74771 s!7408))))))

(declare-fun b!7071393 () Bool)

(assert (=> b!7071393 (= e!4251302 (as set.empty (Set Context!13272)))))

(assert (= (and d!2211388 res!2887907) b!7071390))

(assert (= (and d!2211388 c!1319024) b!7071392))

(assert (= (and d!2211388 (not c!1319024)) b!7071389))

(assert (= (and b!7071389 c!1319025) b!7071391))

(assert (= (and b!7071389 (not c!1319025)) b!7071393))

(assert (= (or b!7071392 b!7071391) bm!642696))

(assert (=> b!7071390 m!7796582))

(declare-fun m!7797074 () Bool)

(assert (=> bm!642696 m!7797074))

(declare-fun m!7797076 () Bool)

(assert (=> b!7071392 m!7797076))

(assert (=> b!7071082 d!2211388))

(declare-fun d!2211390 () Bool)

(assert (=> d!2211390 (= (flatMap!2566 lt!2545078 lambda!425308) (dynLambda!27793 lambda!425308 lt!2545070))))

(declare-fun lt!2545303 () Unit!161990)

(assert (=> d!2211390 (= lt!2545303 (choose!54199 lt!2545078 lt!2545070 lambda!425308))))

(assert (=> d!2211390 (= lt!2545078 (set.insert lt!2545070 (as set.empty (Set Context!13272))))))

(assert (=> d!2211390 (= (lemmaFlatMapOnSingletonSet!2075 lt!2545078 lt!2545070 lambda!425308) lt!2545303)))

(declare-fun b_lambda!269965 () Bool)

(assert (=> (not b_lambda!269965) (not d!2211390)))

(declare-fun bs!1880612 () Bool)

(assert (= bs!1880612 d!2211390))

(assert (=> bs!1880612 m!7796574))

(declare-fun m!7797078 () Bool)

(assert (=> bs!1880612 m!7797078))

(declare-fun m!7797080 () Bool)

(assert (=> bs!1880612 m!7797080))

(assert (=> bs!1880612 m!7796580))

(assert (=> b!7071082 d!2211390))

(declare-fun bs!1880613 () Bool)

(declare-fun d!2211392 () Bool)

(assert (= bs!1880613 (and d!2211392 b!7071101)))

(declare-fun lambda!425375 () Int)

(assert (=> bs!1880613 (= lambda!425375 lambda!425308)))

(declare-fun bs!1880614 () Bool)

(assert (= bs!1880614 (and d!2211392 d!2211374)))

(assert (=> bs!1880614 (= lambda!425375 lambda!425374)))

(assert (=> d!2211392 true))

(assert (=> d!2211392 (= (derivationStepZipper!3090 lt!2545078 (h!74771 s!7408)) (flatMap!2566 lt!2545078 lambda!425375))))

(declare-fun bs!1880615 () Bool)

(assert (= bs!1880615 d!2211392))

(declare-fun m!7797082 () Bool)

(assert (=> bs!1880615 m!7797082))

(assert (=> b!7071082 d!2211392))

(declare-fun b!7071397 () Bool)

(declare-fun e!4251304 () Bool)

(declare-fun lt!2545304 () List!68447)

(assert (=> b!7071397 (= e!4251304 (or (not (= (_2!37430 lt!2545086) Nil!68323)) (= lt!2545304 (_1!37430 lt!2545086))))))

(declare-fun b!7071395 () Bool)

(declare-fun e!4251303 () List!68447)

(assert (=> b!7071395 (= e!4251303 (Cons!68323 (h!74771 (_1!37430 lt!2545086)) (++!15764 (t!382230 (_1!37430 lt!2545086)) (_2!37430 lt!2545086))))))

(declare-fun b!7071394 () Bool)

(assert (=> b!7071394 (= e!4251303 (_2!37430 lt!2545086))))

(declare-fun b!7071396 () Bool)

(declare-fun res!2887909 () Bool)

(assert (=> b!7071396 (=> (not res!2887909) (not e!4251304))))

(assert (=> b!7071396 (= res!2887909 (= (size!41211 lt!2545304) (+ (size!41211 (_1!37430 lt!2545086)) (size!41211 (_2!37430 lt!2545086)))))))

(declare-fun d!2211394 () Bool)

(assert (=> d!2211394 e!4251304))

(declare-fun res!2887908 () Bool)

(assert (=> d!2211394 (=> (not res!2887908) (not e!4251304))))

(assert (=> d!2211394 (= res!2887908 (= (content!13787 lt!2545304) (set.union (content!13787 (_1!37430 lt!2545086)) (content!13787 (_2!37430 lt!2545086)))))))

(assert (=> d!2211394 (= lt!2545304 e!4251303)))

(declare-fun c!1319026 () Bool)

(assert (=> d!2211394 (= c!1319026 (is-Nil!68323 (_1!37430 lt!2545086)))))

(assert (=> d!2211394 (= (++!15764 (_1!37430 lt!2545086) (_2!37430 lt!2545086)) lt!2545304)))

(assert (= (and d!2211394 c!1319026) b!7071394))

(assert (= (and d!2211394 (not c!1319026)) b!7071395))

(assert (= (and d!2211394 res!2887908) b!7071396))

(assert (= (and b!7071396 res!2887909) b!7071397))

(declare-fun m!7797084 () Bool)

(assert (=> b!7071395 m!7797084))

(declare-fun m!7797086 () Bool)

(assert (=> b!7071396 m!7797086))

(declare-fun m!7797088 () Bool)

(assert (=> b!7071396 m!7797088))

(assert (=> b!7071396 m!7796926))

(declare-fun m!7797090 () Bool)

(assert (=> d!2211394 m!7797090))

(declare-fun m!7797092 () Bool)

(assert (=> d!2211394 m!7797092))

(assert (=> d!2211394 m!7796932))

(assert (=> b!7071083 d!2211394))

(declare-fun b!7071398 () Bool)

(declare-fun e!4251306 () (Set Context!13272))

(declare-fun e!4251307 () (Set Context!13272))

(assert (=> b!7071398 (= e!4251306 e!4251307)))

(declare-fun c!1319028 () Bool)

(assert (=> b!7071398 (= c!1319028 (is-Cons!68322 (exprs!7136 lt!2545061)))))

(declare-fun b!7071399 () Bool)

(declare-fun e!4251305 () Bool)

(assert (=> b!7071399 (= e!4251305 (nullable!7323 (h!74770 (exprs!7136 lt!2545061))))))

(declare-fun bm!642697 () Bool)

(declare-fun call!642702 () (Set Context!13272))

(assert (=> bm!642697 (= call!642702 (derivationStepZipperDown!2274 (h!74770 (exprs!7136 lt!2545061)) (Context!13273 (t!382229 (exprs!7136 lt!2545061))) (h!74771 s!7408)))))

(declare-fun b!7071400 () Bool)

(assert (=> b!7071400 (= e!4251307 call!642702)))

(declare-fun d!2211396 () Bool)

(declare-fun c!1319027 () Bool)

(assert (=> d!2211396 (= c!1319027 e!4251305)))

(declare-fun res!2887910 () Bool)

(assert (=> d!2211396 (=> (not res!2887910) (not e!4251305))))

(assert (=> d!2211396 (= res!2887910 (is-Cons!68322 (exprs!7136 lt!2545061)))))

(assert (=> d!2211396 (= (derivationStepZipperUp!2224 lt!2545061 (h!74771 s!7408)) e!4251306)))

(declare-fun b!7071401 () Bool)

(assert (=> b!7071401 (= e!4251306 (set.union call!642702 (derivationStepZipperUp!2224 (Context!13273 (t!382229 (exprs!7136 lt!2545061))) (h!74771 s!7408))))))

(declare-fun b!7071402 () Bool)

(assert (=> b!7071402 (= e!4251307 (as set.empty (Set Context!13272)))))

(assert (= (and d!2211396 res!2887910) b!7071399))

(assert (= (and d!2211396 c!1319027) b!7071401))

(assert (= (and d!2211396 (not c!1319027)) b!7071398))

(assert (= (and b!7071398 c!1319028) b!7071400))

(assert (= (and b!7071398 (not c!1319028)) b!7071402))

(assert (= (or b!7071401 b!7071400) bm!642697))

(declare-fun m!7797094 () Bool)

(assert (=> b!7071399 m!7797094))

(declare-fun m!7797096 () Bool)

(assert (=> bm!642697 m!7797096))

(declare-fun m!7797098 () Bool)

(assert (=> b!7071401 m!7797098))

(assert (=> b!7071102 d!2211396))

(declare-fun b!7071407 () Bool)

(declare-fun e!4251310 () Bool)

(declare-fun tp!1942232 () Bool)

(assert (=> b!7071407 (= e!4251310 (and tp_is_empty!44505 tp!1942232))))

(assert (=> b!7071081 (= tp!1942216 e!4251310)))

(assert (= (and b!7071081 (is-Cons!68323 (t!382230 s!7408))) b!7071407))

(declare-fun b!7071412 () Bool)

(declare-fun e!4251313 () Bool)

(declare-fun tp!1942237 () Bool)

(declare-fun tp!1942238 () Bool)

(assert (=> b!7071412 (= e!4251313 (and tp!1942237 tp!1942238))))

(assert (=> b!7071090 (= tp!1942215 e!4251313)))

(assert (= (and b!7071090 (is-Cons!68322 (exprs!7136 ct2!306))) b!7071412))

(declare-fun b!7071413 () Bool)

(declare-fun e!4251314 () Bool)

(declare-fun tp!1942239 () Bool)

(declare-fun tp!1942240 () Bool)

(assert (=> b!7071413 (= e!4251314 (and tp!1942239 tp!1942240))))

(assert (=> b!7071098 (= tp!1942217 e!4251314)))

(assert (= (and b!7071098 (is-Cons!68322 (exprs!7136 setElem!50237))) b!7071413))

(declare-fun condSetEmpty!50243 () Bool)

(assert (=> setNonEmpty!50237 (= condSetEmpty!50243 (= setRest!50237 (as set.empty (Set Context!13272))))))

(declare-fun setRes!50243 () Bool)

(assert (=> setNonEmpty!50237 (= tp!1942214 setRes!50243)))

(declare-fun setIsEmpty!50243 () Bool)

(assert (=> setIsEmpty!50243 setRes!50243))

(declare-fun e!4251317 () Bool)

(declare-fun setNonEmpty!50243 () Bool)

(declare-fun setElem!50243 () Context!13272)

(declare-fun tp!1942245 () Bool)

(assert (=> setNonEmpty!50243 (= setRes!50243 (and tp!1942245 (inv!86960 setElem!50243) e!4251317))))

(declare-fun setRest!50243 () (Set Context!13272))

(assert (=> setNonEmpty!50243 (= setRest!50237 (set.union (set.insert setElem!50243 (as set.empty (Set Context!13272))) setRest!50243))))

(declare-fun b!7071418 () Bool)

(declare-fun tp!1942246 () Bool)

(assert (=> b!7071418 (= e!4251317 tp!1942246)))

(assert (= (and setNonEmpty!50237 condSetEmpty!50243) setIsEmpty!50243))

(assert (= (and setNonEmpty!50237 (not condSetEmpty!50243)) setNonEmpty!50243))

(assert (= setNonEmpty!50243 b!7071418))

(declare-fun m!7797100 () Bool)

(assert (=> setNonEmpty!50243 m!7797100))

(declare-fun b_lambda!269967 () Bool)

(assert (= b_lambda!269965 (or b!7071101 b_lambda!269967)))

(declare-fun bs!1880616 () Bool)

(declare-fun d!2211398 () Bool)

(assert (= bs!1880616 (and d!2211398 b!7071101)))

(assert (=> bs!1880616 (= (dynLambda!27793 lambda!425308 lt!2545070) (derivationStepZipperUp!2224 lt!2545070 (h!74771 s!7408)))))

(assert (=> bs!1880616 m!7796578))

(assert (=> d!2211390 d!2211398))

(declare-fun b_lambda!269969 () Bool)

(assert (= b_lambda!269963 (or b!7071080 b_lambda!269969)))

(declare-fun bs!1880617 () Bool)

(declare-fun d!2211400 () Bool)

(assert (= bs!1880617 (and d!2211400 b!7071080)))

(declare-fun lt!2545305 () Unit!161990)

(assert (=> bs!1880617 (= lt!2545305 (lemmaConcatPreservesForall!951 (exprs!7136 lt!2545302) (exprs!7136 ct2!306) lambda!425307))))

(assert (=> bs!1880617 (= (dynLambda!27794 lambda!425306 lt!2545302) (Context!13273 (++!15763 (exprs!7136 lt!2545302) (exprs!7136 ct2!306))))))

(declare-fun m!7797102 () Bool)

(assert (=> bs!1880617 m!7797102))

(declare-fun m!7797104 () Bool)

(assert (=> bs!1880617 m!7797104))

(assert (=> d!2211382 d!2211400))

(declare-fun b_lambda!269971 () Bool)

(assert (= b_lambda!269961 (or b!7071101 b_lambda!269971)))

(declare-fun bs!1880618 () Bool)

(declare-fun d!2211402 () Bool)

(assert (= bs!1880618 (and d!2211402 b!7071101)))

(assert (=> bs!1880618 (= (dynLambda!27793 lambda!425308 lt!2545090) (derivationStepZipperUp!2224 lt!2545090 (h!74771 s!7408)))))

(assert (=> bs!1880618 m!7796630))

(assert (=> d!2211378 d!2211402))

(declare-fun b_lambda!269973 () Bool)

(assert (= b_lambda!269959 (or b!7071106 b_lambda!269973)))

(declare-fun bs!1880619 () Bool)

(declare-fun d!2211404 () Bool)

(assert (= bs!1880619 (and d!2211404 b!7071106)))

(assert (=> bs!1880619 (= (dynLambda!27791 lambda!425305 lt!2545270) (matchZipper!3180 (set.insert lt!2545270 (as set.empty (Set Context!13272))) s!7408))))

(declare-fun m!7797106 () Bool)

(assert (=> bs!1880619 m!7797106))

(assert (=> bs!1880619 m!7797106))

(declare-fun m!7797108 () Bool)

(assert (=> bs!1880619 m!7797108))

(assert (=> d!2211334 d!2211404))

(push 1)

(assert (not d!2211362))

(assert (not b!7071323))

(assert (not d!2211322))

(assert (not b!7071308))

(assert (not b!7071362))

(assert (not d!2211378))

(assert (not d!2211370))

(assert (not b!7071302))

(assert (not b_lambda!269967))

(assert (not d!2211392))

(assert (not bm!642684))

(assert (not bs!1880618))

(assert (not b!7071337))

(assert (not b!7071217))

(assert (not bs!1880616))

(assert (not b!7071248))

(assert (not b!7071370))

(assert (not b!7071392))

(assert (not d!2211386))

(assert (not b!7071380))

(assert (not b!7071401))

(assert (not d!2211368))

(assert (not b!7071279))

(assert (not b!7071367))

(assert (not bs!1880619))

(assert (not b!7071359))

(assert (not d!2211384))

(assert (not b!7071418))

(assert (not d!2211372))

(assert (not b!7071247))

(assert (not b!7071412))

(assert (not b!7071218))

(assert (not d!2211354))

(assert (not d!2211310))

(assert (not d!2211352))

(assert (not b!7071395))

(assert (not b!7071296))

(assert (not bm!642687))

(assert (not b!7071293))

(assert (not b!7071357))

(assert tp_is_empty!44505)

(assert (not b!7071377))

(assert (not b!7071360))

(assert (not b_lambda!269971))

(assert (not d!2211382))

(assert (not bm!642693))

(assert (not b!7071234))

(assert (not bm!642695))

(assert (not d!2211298))

(assert (not d!2211346))

(assert (not b!7071388))

(assert (not b!7071361))

(assert (not d!2211312))

(assert (not b!7071399))

(assert (not b!7071387))

(assert (not b!7071301))

(assert (not b!7071304))

(assert (not b!7071381))

(assert (not bm!642670))

(assert (not bm!642690))

(assert (not bs!1880617))

(assert (not b!7071300))

(assert (not b!7071366))

(assert (not d!2211390))

(assert (not d!2211306))

(assert (not d!2211350))

(assert (not bm!642697))

(assert (not b_lambda!269969))

(assert (not d!2211300))

(assert (not d!2211324))

(assert (not bm!642689))

(assert (not b!7071396))

(assert (not setNonEmpty!50243))

(assert (not d!2211336))

(assert (not b!7071219))

(assert (not b!7071298))

(assert (not b!7071222))

(assert (not d!2211394))

(assert (not b!7071407))

(assert (not d!2211320))

(assert (not b!7071295))

(assert (not d!2211330))

(assert (not b!7071333))

(assert (not d!2211348))

(assert (not b!7071292))

(assert (not b_lambda!269973))

(assert (not d!2211304))

(assert (not b!7071297))

(assert (not b!7071216))

(assert (not d!2211334))

(assert (not b!7071236))

(assert (not b!7071305))

(assert (not b!7071369))

(assert (not b!7071294))

(assert (not d!2211374))

(assert (not b!7071338))

(assert (not b!7071390))

(assert (not d!2211328))

(assert (not d!2211344))

(assert (not b!7071303))

(assert (not b!7071324))

(assert (not d!2211360))

(assert (not b!7071215))

(assert (not b!7071413))

(assert (not b!7071364))

(assert (not d!2211326))

(assert (not bm!642683))

(assert (not bm!642696))

(assert (not d!2211358))

(assert (not b!7071375))

(assert (not b!7071299))

(assert (not d!2211302))

(assert (not d!2211380))

(assert (not b!7071214))

(assert (not d!2211338))

(assert (not d!2211332))

(assert (not d!2211356))

(assert (not d!2211318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

