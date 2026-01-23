; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541866 () Bool)

(assert start!541866)

(declare-fun bs!1194943 () Bool)

(declare-fun b!5128650 () Bool)

(declare-fun b!5128646 () Bool)

(assert (= bs!1194943 (and b!5128650 b!5128646)))

(declare-fun lambda!252715 () Int)

(declare-fun lambda!252714 () Int)

(assert (=> bs!1194943 (not (= lambda!252715 lambda!252714))))

(declare-fun bs!1194944 () Bool)

(declare-fun b!5128647 () Bool)

(assert (= bs!1194944 (and b!5128647 b!5128646)))

(declare-fun lambda!252716 () Int)

(assert (=> bs!1194944 (not (= lambda!252716 lambda!252714))))

(declare-fun bs!1194945 () Bool)

(assert (= bs!1194945 (and b!5128647 b!5128650)))

(assert (=> bs!1194945 (not (= lambda!252716 lambda!252715))))

(declare-fun e!3198533 () Bool)

(declare-fun e!3198532 () Bool)

(assert (=> b!5128646 (= e!3198533 (not e!3198532))))

(declare-fun res!2183736 () Bool)

(assert (=> b!5128646 (=> res!2183736 e!3198532)))

(declare-datatypes ((C!28870 0))(
  ( (C!28871 (val!24087 Int)) )
))
(declare-datatypes ((Regex!14302 0))(
  ( (ElementMatch!14302 (c!881968 C!28870)) (Concat!23147 (regOne!29116 Regex!14302) (regTwo!29116 Regex!14302)) (EmptyExpr!14302) (Star!14302 (reg!14631 Regex!14302)) (EmptyLang!14302) (Union!14302 (regOne!29117 Regex!14302) (regTwo!29117 Regex!14302)) )
))
(declare-datatypes ((List!59534 0))(
  ( (Nil!59410) (Cons!59410 (h!65858 Regex!14302) (t!372561 List!59534)) )
))
(declare-datatypes ((Context!7372 0))(
  ( (Context!7373 (exprs!4186 List!59534)) )
))
(declare-fun lt!2115309 () Context!7372)

(declare-fun z!1113 () (Set Context!7372))

(assert (=> b!5128646 (= res!2183736 (not (set.member lt!2115309 z!1113)))))

(declare-fun forall!13695 (List!59534 Int) Bool)

(assert (=> b!5128646 (forall!13695 (exprs!4186 lt!2115309) lambda!252714)))

(declare-datatypes ((Unit!150610 0))(
  ( (Unit!150611) )
))
(declare-fun lt!2115310 () Unit!150610)

(declare-fun lemmaContextForallValidExprs!17 (Context!7372 List!59534) Unit!150610)

(assert (=> b!5128646 (= lt!2115310 (lemmaContextForallValidExprs!17 lt!2115309 (exprs!4186 lt!2115309)))))

(declare-fun res!2183738 () Bool)

(assert (=> b!5128647 (=> res!2183738 e!3198532)))

(declare-fun exists!1567 (List!59534 Int) Bool)

(assert (=> b!5128647 (= res!2183738 (not (exists!1567 (exprs!4186 lt!2115309) lambda!252716)))))

(declare-fun b!5128648 () Bool)

(declare-fun res!2183739 () Bool)

(declare-fun e!3198531 () Bool)

(assert (=> b!5128648 (=> (not res!2183739) (not e!3198531))))

(declare-fun lambda!252713 () Int)

(declare-fun exists!1568 ((Set Context!7372) Int) Bool)

(assert (=> b!5128648 (= res!2183739 (exists!1568 z!1113 lambda!252713))))

(declare-fun b!5128649 () Bool)

(declare-fun res!2183735 () Bool)

(assert (=> b!5128649 (=> res!2183735 e!3198532)))

(declare-fun lostCause!1236 (Context!7372) Bool)

(assert (=> b!5128649 (= res!2183735 (not (lostCause!1236 lt!2115309)))))

(declare-fun res!2183737 () Bool)

(assert (=> b!5128650 (=> res!2183737 e!3198532)))

(assert (=> b!5128650 (= res!2183737 (not (forall!13695 (exprs!4186 lt!2115309) lambda!252715)))))

(declare-fun b!5128651 () Bool)

(assert (=> b!5128651 (= e!3198531 e!3198533)))

(declare-fun res!2183733 () Bool)

(assert (=> b!5128651 (=> (not res!2183733) (not e!3198533))))

(declare-fun nullableContext!21 (Context!7372) Bool)

(assert (=> b!5128651 (= res!2183733 (nullableContext!21 lt!2115309))))

(declare-fun getWitness!722 ((Set Context!7372) Int) Context!7372)

(assert (=> b!5128651 (= lt!2115309 (getWitness!722 z!1113 lambda!252713))))

(declare-fun res!2183734 () Bool)

(assert (=> start!541866 (=> (not res!2183734) (not e!3198531))))

(declare-fun nullableZipper!1087 ((Set Context!7372)) Bool)

(assert (=> start!541866 (= res!2183734 (nullableZipper!1087 z!1113))))

(assert (=> start!541866 e!3198531))

(declare-fun condSetEmpty!30899 () Bool)

(assert (=> start!541866 (= condSetEmpty!30899 (= z!1113 (as set.empty (Set Context!7372))))))

(declare-fun setRes!30899 () Bool)

(assert (=> start!541866 setRes!30899))

(declare-fun setIsEmpty!30899 () Bool)

(assert (=> setIsEmpty!30899 setRes!30899))

(declare-fun b!5128652 () Bool)

(declare-fun e!3198530 () Bool)

(declare-fun tp!1430910 () Bool)

(assert (=> b!5128652 (= e!3198530 tp!1430910)))

(declare-fun setNonEmpty!30899 () Bool)

(declare-fun setElem!30899 () Context!7372)

(declare-fun tp!1430911 () Bool)

(declare-fun inv!78937 (Context!7372) Bool)

(assert (=> setNonEmpty!30899 (= setRes!30899 (and tp!1430911 (inv!78937 setElem!30899) e!3198530))))

(declare-fun setRest!30899 () (Set Context!7372))

(assert (=> setNonEmpty!30899 (= z!1113 (set.union (set.insert setElem!30899 (as set.empty (Set Context!7372))) setRest!30899))))

(declare-fun b!5128653 () Bool)

(declare-fun contains!19617 (List!59534 Regex!14302) Bool)

(declare-fun getWitness!723 (List!59534 Int) Regex!14302)

(assert (=> b!5128653 (= e!3198532 (contains!19617 (exprs!4186 lt!2115309) (getWitness!723 (exprs!4186 lt!2115309) lambda!252716)))))

(assert (= (and start!541866 res!2183734) b!5128648))

(assert (= (and b!5128648 res!2183739) b!5128651))

(assert (= (and b!5128651 res!2183733) b!5128646))

(assert (= (and b!5128646 (not res!2183736)) b!5128650))

(assert (= (and b!5128650 (not res!2183737)) b!5128649))

(assert (= (and b!5128649 (not res!2183735)) b!5128647))

(assert (= (and b!5128647 (not res!2183738)) b!5128653))

(assert (= (and start!541866 condSetEmpty!30899) setIsEmpty!30899))

(assert (= (and start!541866 (not condSetEmpty!30899)) setNonEmpty!30899))

(assert (= setNonEmpty!30899 b!5128652))

(declare-fun m!6193010 () Bool)

(assert (=> setNonEmpty!30899 m!6193010))

(declare-fun m!6193012 () Bool)

(assert (=> b!5128647 m!6193012))

(declare-fun m!6193014 () Bool)

(assert (=> b!5128651 m!6193014))

(declare-fun m!6193016 () Bool)

(assert (=> b!5128651 m!6193016))

(declare-fun m!6193018 () Bool)

(assert (=> b!5128650 m!6193018))

(declare-fun m!6193020 () Bool)

(assert (=> b!5128646 m!6193020))

(declare-fun m!6193022 () Bool)

(assert (=> b!5128646 m!6193022))

(declare-fun m!6193024 () Bool)

(assert (=> b!5128646 m!6193024))

(declare-fun m!6193026 () Bool)

(assert (=> b!5128649 m!6193026))

(declare-fun m!6193028 () Bool)

(assert (=> b!5128648 m!6193028))

(declare-fun m!6193030 () Bool)

(assert (=> start!541866 m!6193030))

(declare-fun m!6193032 () Bool)

(assert (=> b!5128653 m!6193032))

(assert (=> b!5128653 m!6193032))

(declare-fun m!6193034 () Bool)

(assert (=> b!5128653 m!6193034))

(push 1)

(assert (not setNonEmpty!30899))

(assert (not start!541866))

(assert (not b!5128650))

(assert (not b!5128652))

(assert (not b!5128653))

(assert (not b!5128649))

(assert (not b!5128648))

(assert (not b!5128646))

(assert (not b!5128651))

(assert (not b!5128647))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194949 () Bool)

(declare-fun d!1659093 () Bool)

(assert (= bs!1194949 (and d!1659093 b!5128646)))

(declare-fun lambda!252735 () Int)

(assert (=> bs!1194949 (not (= lambda!252735 lambda!252714))))

(declare-fun bs!1194950 () Bool)

(assert (= bs!1194950 (and d!1659093 b!5128650)))

(assert (=> bs!1194950 (not (= lambda!252735 lambda!252715))))

(declare-fun bs!1194951 () Bool)

(assert (= bs!1194951 (and d!1659093 b!5128647)))

(assert (=> bs!1194951 (= lambda!252735 lambda!252716)))

(assert (=> d!1659093 (= (lostCause!1236 lt!2115309) (exists!1567 (exprs!4186 lt!2115309) lambda!252735))))

(declare-fun bs!1194952 () Bool)

(assert (= bs!1194952 d!1659093))

(declare-fun m!6193062 () Bool)

(assert (=> bs!1194952 m!6193062))

(assert (=> b!5128649 d!1659093))

(declare-fun d!1659095 () Bool)

(declare-fun res!2183765 () Bool)

(declare-fun e!3198550 () Bool)

(assert (=> d!1659095 (=> res!2183765 e!3198550)))

(assert (=> d!1659095 (= res!2183765 (is-Nil!59410 (exprs!4186 lt!2115309)))))

(assert (=> d!1659095 (= (forall!13695 (exprs!4186 lt!2115309) lambda!252715) e!3198550)))

(declare-fun b!5128682 () Bool)

(declare-fun e!3198551 () Bool)

(assert (=> b!5128682 (= e!3198550 e!3198551)))

(declare-fun res!2183766 () Bool)

(assert (=> b!5128682 (=> (not res!2183766) (not e!3198551))))

(declare-fun dynLambda!23644 (Int Regex!14302) Bool)

(assert (=> b!5128682 (= res!2183766 (dynLambda!23644 lambda!252715 (h!65858 (exprs!4186 lt!2115309))))))

(declare-fun b!5128683 () Bool)

(assert (=> b!5128683 (= e!3198551 (forall!13695 (t!372561 (exprs!4186 lt!2115309)) lambda!252715))))

(assert (= (and d!1659095 (not res!2183765)) b!5128682))

(assert (= (and b!5128682 res!2183766) b!5128683))

(declare-fun b_lambda!199221 () Bool)

(assert (=> (not b_lambda!199221) (not b!5128682)))

(declare-fun m!6193064 () Bool)

(assert (=> b!5128682 m!6193064))

(declare-fun m!6193066 () Bool)

(assert (=> b!5128683 m!6193066))

(assert (=> b!5128650 d!1659095))

(declare-fun d!1659097 () Bool)

(declare-fun lt!2115319 () Bool)

(declare-datatypes ((List!59536 0))(
  ( (Nil!59412) (Cons!59412 (h!65860 Context!7372) (t!372563 List!59536)) )
))
(declare-fun exists!1571 (List!59536 Int) Bool)

(declare-fun toList!8299 ((Set Context!7372)) List!59536)

(assert (=> d!1659097 (= lt!2115319 (exists!1571 (toList!8299 z!1113) lambda!252713))))

(declare-fun choose!37800 ((Set Context!7372) Int) Bool)

(assert (=> d!1659097 (= lt!2115319 (choose!37800 z!1113 lambda!252713))))

(assert (=> d!1659097 (= (exists!1568 z!1113 lambda!252713) lt!2115319)))

(declare-fun bs!1194953 () Bool)

(assert (= bs!1194953 d!1659097))

(declare-fun m!6193068 () Bool)

(assert (=> bs!1194953 m!6193068))

(assert (=> bs!1194953 m!6193068))

(declare-fun m!6193070 () Bool)

(assert (=> bs!1194953 m!6193070))

(declare-fun m!6193072 () Bool)

(assert (=> bs!1194953 m!6193072))

(assert (=> b!5128648 d!1659097))

(declare-fun bs!1194954 () Bool)

(declare-fun d!1659099 () Bool)

(assert (= bs!1194954 (and d!1659099 b!5128646)))

(declare-fun lambda!252738 () Int)

(assert (=> bs!1194954 (= lambda!252738 lambda!252714)))

(declare-fun bs!1194955 () Bool)

(assert (= bs!1194955 (and d!1659099 b!5128650)))

(assert (=> bs!1194955 (not (= lambda!252738 lambda!252715))))

(declare-fun bs!1194956 () Bool)

(assert (= bs!1194956 (and d!1659099 b!5128647)))

(assert (=> bs!1194956 (not (= lambda!252738 lambda!252716))))

(declare-fun bs!1194957 () Bool)

(assert (= bs!1194957 (and d!1659099 d!1659093)))

(assert (=> bs!1194957 (not (= lambda!252738 lambda!252735))))

(assert (=> d!1659099 (= (inv!78937 setElem!30899) (forall!13695 (exprs!4186 setElem!30899) lambda!252738))))

(declare-fun bs!1194958 () Bool)

(assert (= bs!1194958 d!1659099))

(declare-fun m!6193074 () Bool)

(assert (=> bs!1194958 m!6193074))

(assert (=> setNonEmpty!30899 d!1659099))

(declare-fun d!1659101 () Bool)

(declare-fun lt!2115322 () Bool)

(declare-fun content!10559 (List!59534) (Set Regex!14302))

(assert (=> d!1659101 (= lt!2115322 (set.member (getWitness!723 (exprs!4186 lt!2115309) lambda!252716) (content!10559 (exprs!4186 lt!2115309))))))

(declare-fun e!3198556 () Bool)

(assert (=> d!1659101 (= lt!2115322 e!3198556)))

(declare-fun res!2183772 () Bool)

(assert (=> d!1659101 (=> (not res!2183772) (not e!3198556))))

(assert (=> d!1659101 (= res!2183772 (is-Cons!59410 (exprs!4186 lt!2115309)))))

(assert (=> d!1659101 (= (contains!19617 (exprs!4186 lt!2115309) (getWitness!723 (exprs!4186 lt!2115309) lambda!252716)) lt!2115322)))

(declare-fun b!5128688 () Bool)

(declare-fun e!3198557 () Bool)

(assert (=> b!5128688 (= e!3198556 e!3198557)))

(declare-fun res!2183771 () Bool)

(assert (=> b!5128688 (=> res!2183771 e!3198557)))

(assert (=> b!5128688 (= res!2183771 (= (h!65858 (exprs!4186 lt!2115309)) (getWitness!723 (exprs!4186 lt!2115309) lambda!252716)))))

(declare-fun b!5128689 () Bool)

(assert (=> b!5128689 (= e!3198557 (contains!19617 (t!372561 (exprs!4186 lt!2115309)) (getWitness!723 (exprs!4186 lt!2115309) lambda!252716)))))

(assert (= (and d!1659101 res!2183772) b!5128688))

(assert (= (and b!5128688 (not res!2183771)) b!5128689))

(declare-fun m!6193076 () Bool)

(assert (=> d!1659101 m!6193076))

(assert (=> d!1659101 m!6193032))

(declare-fun m!6193078 () Bool)

(assert (=> d!1659101 m!6193078))

(assert (=> b!5128689 m!6193032))

(declare-fun m!6193080 () Bool)

(assert (=> b!5128689 m!6193080))

(assert (=> b!5128653 d!1659101))

(declare-fun b!5128702 () Bool)

(declare-fun e!3198567 () Regex!14302)

(assert (=> b!5128702 (= e!3198567 (h!65858 (exprs!4186 lt!2115309)))))

(declare-fun b!5128703 () Bool)

(declare-fun e!3198569 () Regex!14302)

(assert (=> b!5128703 (= e!3198567 e!3198569)))

(declare-fun c!881979 () Bool)

(assert (=> b!5128703 (= c!881979 (is-Cons!59410 (exprs!4186 lt!2115309)))))

(declare-fun b!5128704 () Bool)

(assert (=> b!5128704 (= e!3198569 (getWitness!723 (t!372561 (exprs!4186 lt!2115309)) lambda!252716))))

(declare-fun b!5128705 () Bool)

(declare-fun lt!2115328 () Unit!150610)

(declare-fun Unit!150614 () Unit!150610)

(assert (=> b!5128705 (= lt!2115328 Unit!150614)))

(assert (=> b!5128705 false))

(declare-fun head!10971 (List!59534) Regex!14302)

(assert (=> b!5128705 (= e!3198569 (head!10971 (exprs!4186 lt!2115309)))))

(declare-fun b!5128706 () Bool)

(declare-fun e!3198566 () Bool)

(declare-fun lt!2115327 () Regex!14302)

(assert (=> b!5128706 (= e!3198566 (contains!19617 (exprs!4186 lt!2115309) lt!2115327))))

(declare-fun d!1659103 () Bool)

(assert (=> d!1659103 e!3198566))

(declare-fun res!2183777 () Bool)

(assert (=> d!1659103 (=> (not res!2183777) (not e!3198566))))

(assert (=> d!1659103 (= res!2183777 (dynLambda!23644 lambda!252716 lt!2115327))))

(assert (=> d!1659103 (= lt!2115327 e!3198567)))

(declare-fun c!881978 () Bool)

(declare-fun e!3198568 () Bool)

(assert (=> d!1659103 (= c!881978 e!3198568)))

(declare-fun res!2183778 () Bool)

(assert (=> d!1659103 (=> (not res!2183778) (not e!3198568))))

(assert (=> d!1659103 (= res!2183778 (is-Cons!59410 (exprs!4186 lt!2115309)))))

(assert (=> d!1659103 (exists!1567 (exprs!4186 lt!2115309) lambda!252716)))

(assert (=> d!1659103 (= (getWitness!723 (exprs!4186 lt!2115309) lambda!252716) lt!2115327)))

(declare-fun b!5128707 () Bool)

(assert (=> b!5128707 (= e!3198568 (dynLambda!23644 lambda!252716 (h!65858 (exprs!4186 lt!2115309))))))

(assert (= (and d!1659103 res!2183778) b!5128707))

(assert (= (and d!1659103 c!881978) b!5128702))

(assert (= (and d!1659103 (not c!881978)) b!5128703))

(assert (= (and b!5128703 c!881979) b!5128704))

(assert (= (and b!5128703 (not c!881979)) b!5128705))

(assert (= (and d!1659103 res!2183777) b!5128706))

(declare-fun b_lambda!199223 () Bool)

(assert (=> (not b_lambda!199223) (not d!1659103)))

(declare-fun b_lambda!199225 () Bool)

(assert (=> (not b_lambda!199225) (not b!5128707)))

(declare-fun m!6193082 () Bool)

(assert (=> b!5128704 m!6193082))

(declare-fun m!6193084 () Bool)

(assert (=> d!1659103 m!6193084))

(assert (=> d!1659103 m!6193012))

(declare-fun m!6193086 () Bool)

(assert (=> b!5128706 m!6193086))

(declare-fun m!6193088 () Bool)

(assert (=> b!5128707 m!6193088))

(declare-fun m!6193090 () Bool)

(assert (=> b!5128705 m!6193090))

(assert (=> b!5128653 d!1659103))

(declare-fun bs!1194959 () Bool)

(declare-fun d!1659105 () Bool)

(assert (= bs!1194959 (and d!1659105 b!5128648)))

(declare-fun lambda!252741 () Int)

(assert (=> bs!1194959 (= lambda!252741 lambda!252713)))

(assert (=> d!1659105 (= (nullableZipper!1087 z!1113) (exists!1568 z!1113 lambda!252741))))

(declare-fun bs!1194960 () Bool)

(assert (= bs!1194960 d!1659105))

(declare-fun m!6193092 () Bool)

(assert (=> bs!1194960 m!6193092))

(assert (=> start!541866 d!1659105))

(declare-fun d!1659109 () Bool)

(declare-fun res!2183779 () Bool)

(declare-fun e!3198570 () Bool)

(assert (=> d!1659109 (=> res!2183779 e!3198570)))

(assert (=> d!1659109 (= res!2183779 (is-Nil!59410 (exprs!4186 lt!2115309)))))

(assert (=> d!1659109 (= (forall!13695 (exprs!4186 lt!2115309) lambda!252714) e!3198570)))

(declare-fun b!5128708 () Bool)

(declare-fun e!3198571 () Bool)

(assert (=> b!5128708 (= e!3198570 e!3198571)))

(declare-fun res!2183780 () Bool)

(assert (=> b!5128708 (=> (not res!2183780) (not e!3198571))))

(assert (=> b!5128708 (= res!2183780 (dynLambda!23644 lambda!252714 (h!65858 (exprs!4186 lt!2115309))))))

(declare-fun b!5128709 () Bool)

(assert (=> b!5128709 (= e!3198571 (forall!13695 (t!372561 (exprs!4186 lt!2115309)) lambda!252714))))

(assert (= (and d!1659109 (not res!2183779)) b!5128708))

(assert (= (and b!5128708 res!2183780) b!5128709))

(declare-fun b_lambda!199227 () Bool)

(assert (=> (not b_lambda!199227) (not b!5128708)))

(declare-fun m!6193094 () Bool)

(assert (=> b!5128708 m!6193094))

(declare-fun m!6193096 () Bool)

(assert (=> b!5128709 m!6193096))

(assert (=> b!5128646 d!1659109))

(declare-fun bs!1194964 () Bool)

(declare-fun d!1659111 () Bool)

(assert (= bs!1194964 (and d!1659111 b!5128650)))

(declare-fun lambda!252747 () Int)

(assert (=> bs!1194964 (not (= lambda!252747 lambda!252715))))

(declare-fun bs!1194965 () Bool)

(assert (= bs!1194965 (and d!1659111 d!1659093)))

(assert (=> bs!1194965 (not (= lambda!252747 lambda!252735))))

(declare-fun bs!1194966 () Bool)

(assert (= bs!1194966 (and d!1659111 d!1659099)))

(assert (=> bs!1194966 (= lambda!252747 lambda!252738)))

(declare-fun bs!1194968 () Bool)

(assert (= bs!1194968 (and d!1659111 b!5128646)))

(assert (=> bs!1194968 (= lambda!252747 lambda!252714)))

(declare-fun bs!1194969 () Bool)

(assert (= bs!1194969 (and d!1659111 b!5128647)))

(assert (=> bs!1194969 (not (= lambda!252747 lambda!252716))))

(assert (=> d!1659111 (forall!13695 (exprs!4186 lt!2115309) lambda!252747)))

(declare-fun lt!2115331 () Unit!150610)

(declare-fun choose!37801 (Context!7372 List!59534) Unit!150610)

(assert (=> d!1659111 (= lt!2115331 (choose!37801 lt!2115309 (exprs!4186 lt!2115309)))))

(assert (=> d!1659111 (= (exprs!4186 lt!2115309) (exprs!4186 lt!2115309))))

(assert (=> d!1659111 (= (lemmaContextForallValidExprs!17 lt!2115309 (exprs!4186 lt!2115309)) lt!2115331)))

(declare-fun bs!1194970 () Bool)

(assert (= bs!1194970 d!1659111))

(declare-fun m!6193100 () Bool)

(assert (=> bs!1194970 m!6193100))

(declare-fun m!6193102 () Bool)

(assert (=> bs!1194970 m!6193102))

(assert (=> b!5128646 d!1659111))

(declare-fun bs!1194971 () Bool)

(declare-fun d!1659115 () Bool)

(assert (= bs!1194971 (and d!1659115 b!5128650)))

(declare-fun lambda!252752 () Int)

(assert (=> bs!1194971 (not (= lambda!252752 lambda!252715))))

(declare-fun bs!1194972 () Bool)

(assert (= bs!1194972 (and d!1659115 d!1659093)))

(assert (=> bs!1194972 (not (= lambda!252752 lambda!252735))))

(declare-fun bs!1194973 () Bool)

(assert (= bs!1194973 (and d!1659115 d!1659099)))

(assert (=> bs!1194973 (not (= lambda!252752 lambda!252738))))

(declare-fun bs!1194974 () Bool)

(assert (= bs!1194974 (and d!1659115 b!5128646)))

(assert (=> bs!1194974 (not (= lambda!252752 lambda!252714))))

(declare-fun bs!1194975 () Bool)

(assert (= bs!1194975 (and d!1659115 d!1659111)))

(assert (=> bs!1194975 (not (= lambda!252752 lambda!252747))))

(declare-fun bs!1194976 () Bool)

(assert (= bs!1194976 (and d!1659115 b!5128647)))

(assert (=> bs!1194976 (not (= lambda!252752 lambda!252716))))

(assert (=> d!1659115 true))

(declare-fun order!26819 () Int)

(declare-fun dynLambda!23645 (Int Int) Int)

(assert (=> d!1659115 (< (dynLambda!23645 order!26819 lambda!252716) (dynLambda!23645 order!26819 lambda!252752))))

(assert (=> d!1659115 (= (exists!1567 (exprs!4186 lt!2115309) lambda!252716) (not (forall!13695 (exprs!4186 lt!2115309) lambda!252752)))))

(declare-fun bs!1194977 () Bool)

(assert (= bs!1194977 d!1659115))

(declare-fun m!6193104 () Bool)

(assert (=> bs!1194977 m!6193104))

(assert (=> b!5128647 d!1659115))

(declare-fun bs!1194983 () Bool)

(declare-fun d!1659117 () Bool)

(assert (= bs!1194983 (and d!1659117 b!5128650)))

(declare-fun lambda!252756 () Int)

(assert (=> bs!1194983 (= lambda!252756 lambda!252715)))

(declare-fun bs!1194984 () Bool)

(assert (= bs!1194984 (and d!1659117 d!1659093)))

(assert (=> bs!1194984 (not (= lambda!252756 lambda!252735))))

(declare-fun bs!1194985 () Bool)

(assert (= bs!1194985 (and d!1659117 d!1659115)))

(assert (=> bs!1194985 (not (= lambda!252756 lambda!252752))))

(declare-fun bs!1194986 () Bool)

(assert (= bs!1194986 (and d!1659117 d!1659099)))

(assert (=> bs!1194986 (not (= lambda!252756 lambda!252738))))

(declare-fun bs!1194987 () Bool)

(assert (= bs!1194987 (and d!1659117 b!5128646)))

(assert (=> bs!1194987 (not (= lambda!252756 lambda!252714))))

(declare-fun bs!1194988 () Bool)

(assert (= bs!1194988 (and d!1659117 d!1659111)))

(assert (=> bs!1194988 (not (= lambda!252756 lambda!252747))))

(declare-fun bs!1194989 () Bool)

(assert (= bs!1194989 (and d!1659117 b!5128647)))

(assert (=> bs!1194989 (not (= lambda!252756 lambda!252716))))

(assert (=> d!1659117 (= (nullableContext!21 lt!2115309) (forall!13695 (exprs!4186 lt!2115309) lambda!252756))))

(declare-fun bs!1194990 () Bool)

(assert (= bs!1194990 d!1659117))

(declare-fun m!6193108 () Bool)

(assert (=> bs!1194990 m!6193108))

(assert (=> b!5128651 d!1659117))

(declare-fun d!1659121 () Bool)

(declare-fun e!3198574 () Bool)

(assert (=> d!1659121 e!3198574))

(declare-fun res!2183783 () Bool)

(assert (=> d!1659121 (=> (not res!2183783) (not e!3198574))))

(declare-fun lt!2115334 () Context!7372)

(declare-fun dynLambda!23646 (Int Context!7372) Bool)

(assert (=> d!1659121 (= res!2183783 (dynLambda!23646 lambda!252713 lt!2115334))))

(declare-fun getWitness!726 (List!59536 Int) Context!7372)

(assert (=> d!1659121 (= lt!2115334 (getWitness!726 (toList!8299 z!1113) lambda!252713))))

(assert (=> d!1659121 (exists!1568 z!1113 lambda!252713)))

(assert (=> d!1659121 (= (getWitness!722 z!1113 lambda!252713) lt!2115334)))

(declare-fun b!5128714 () Bool)

(assert (=> b!5128714 (= e!3198574 (set.member lt!2115334 z!1113))))

(assert (= (and d!1659121 res!2183783) b!5128714))

(declare-fun b_lambda!199229 () Bool)

(assert (=> (not b_lambda!199229) (not d!1659121)))

(declare-fun m!6193110 () Bool)

(assert (=> d!1659121 m!6193110))

(assert (=> d!1659121 m!6193068))

(assert (=> d!1659121 m!6193068))

(declare-fun m!6193112 () Bool)

(assert (=> d!1659121 m!6193112))

(assert (=> d!1659121 m!6193028))

(declare-fun m!6193114 () Bool)

(assert (=> b!5128714 m!6193114))

(assert (=> b!5128651 d!1659121))

(declare-fun condSetEmpty!30905 () Bool)

(assert (=> setNonEmpty!30899 (= condSetEmpty!30905 (= setRest!30899 (as set.empty (Set Context!7372))))))

(declare-fun setRes!30905 () Bool)

(assert (=> setNonEmpty!30899 (= tp!1430911 setRes!30905)))

(declare-fun setIsEmpty!30905 () Bool)

(assert (=> setIsEmpty!30905 setRes!30905))

(declare-fun setElem!30905 () Context!7372)

(declare-fun tp!1430922 () Bool)

(declare-fun e!3198579 () Bool)

(declare-fun setNonEmpty!30905 () Bool)

(assert (=> setNonEmpty!30905 (= setRes!30905 (and tp!1430922 (inv!78937 setElem!30905) e!3198579))))

(declare-fun setRest!30905 () (Set Context!7372))

(assert (=> setNonEmpty!30905 (= setRest!30899 (set.union (set.insert setElem!30905 (as set.empty (Set Context!7372))) setRest!30905))))

(declare-fun b!5128721 () Bool)

(declare-fun tp!1430923 () Bool)

(assert (=> b!5128721 (= e!3198579 tp!1430923)))

(assert (= (and setNonEmpty!30899 condSetEmpty!30905) setIsEmpty!30905))

(assert (= (and setNonEmpty!30899 (not condSetEmpty!30905)) setNonEmpty!30905))

(assert (= setNonEmpty!30905 b!5128721))

(declare-fun m!6193116 () Bool)

(assert (=> setNonEmpty!30905 m!6193116))

(declare-fun b!5128726 () Bool)

(declare-fun e!3198582 () Bool)

(declare-fun tp!1430928 () Bool)

(declare-fun tp!1430929 () Bool)

(assert (=> b!5128726 (= e!3198582 (and tp!1430928 tp!1430929))))

(assert (=> b!5128652 (= tp!1430910 e!3198582)))

(assert (= (and b!5128652 (is-Cons!59410 (exprs!4186 setElem!30899))) b!5128726))

(declare-fun b_lambda!199231 () Bool)

(assert (= b_lambda!199221 (or b!5128650 b_lambda!199231)))

(declare-fun bs!1194991 () Bool)

(declare-fun d!1659123 () Bool)

(assert (= bs!1194991 (and d!1659123 b!5128650)))

(declare-fun nullable!4733 (Regex!14302) Bool)

(assert (=> bs!1194991 (= (dynLambda!23644 lambda!252715 (h!65858 (exprs!4186 lt!2115309))) (nullable!4733 (h!65858 (exprs!4186 lt!2115309))))))

(declare-fun m!6193118 () Bool)

(assert (=> bs!1194991 m!6193118))

(assert (=> b!5128682 d!1659123))

(declare-fun b_lambda!199233 () Bool)

(assert (= b_lambda!199223 (or b!5128647 b_lambda!199233)))

(declare-fun bs!1194992 () Bool)

(declare-fun d!1659125 () Bool)

(assert (= bs!1194992 (and d!1659125 b!5128647)))

(declare-fun lostCause!1238 (Regex!14302) Bool)

(assert (=> bs!1194992 (= (dynLambda!23644 lambda!252716 lt!2115327) (lostCause!1238 lt!2115327))))

(declare-fun m!6193120 () Bool)

(assert (=> bs!1194992 m!6193120))

(assert (=> d!1659103 d!1659125))

(declare-fun b_lambda!199235 () Bool)

(assert (= b_lambda!199227 (or b!5128646 b_lambda!199235)))

(declare-fun bs!1194993 () Bool)

(declare-fun d!1659127 () Bool)

(assert (= bs!1194993 (and d!1659127 b!5128646)))

(declare-fun validRegex!6229 (Regex!14302) Bool)

(assert (=> bs!1194993 (= (dynLambda!23644 lambda!252714 (h!65858 (exprs!4186 lt!2115309))) (validRegex!6229 (h!65858 (exprs!4186 lt!2115309))))))

(declare-fun m!6193122 () Bool)

(assert (=> bs!1194993 m!6193122))

(assert (=> b!5128708 d!1659127))

(declare-fun b_lambda!199237 () Bool)

(assert (= b_lambda!199225 (or b!5128647 b_lambda!199237)))

(declare-fun bs!1194994 () Bool)

(declare-fun d!1659129 () Bool)

(assert (= bs!1194994 (and d!1659129 b!5128647)))

(assert (=> bs!1194994 (= (dynLambda!23644 lambda!252716 (h!65858 (exprs!4186 lt!2115309))) (lostCause!1238 (h!65858 (exprs!4186 lt!2115309))))))

(declare-fun m!6193124 () Bool)

(assert (=> bs!1194994 m!6193124))

(assert (=> b!5128707 d!1659129))

(declare-fun b_lambda!199239 () Bool)

(assert (= b_lambda!199229 (or b!5128648 b_lambda!199239)))

(declare-fun bs!1194995 () Bool)

(declare-fun d!1659131 () Bool)

(assert (= bs!1194995 (and d!1659131 b!5128648)))

(assert (=> bs!1194995 (= (dynLambda!23646 lambda!252713 lt!2115334) (nullableContext!21 lt!2115334))))

(declare-fun m!6193126 () Bool)

(assert (=> bs!1194995 m!6193126))

(assert (=> d!1659121 d!1659131))

(push 1)

(assert (not d!1659115))

(assert (not d!1659121))

(assert (not bs!1194992))

(assert (not bs!1194991))

(assert (not d!1659105))

(assert (not b!5128704))

(assert (not b_lambda!199237))

(assert (not setNonEmpty!30905))

(assert (not b_lambda!199233))

(assert (not b_lambda!199239))

(assert (not d!1659117))

(assert (not d!1659093))

(assert (not b_lambda!199235))

(assert (not bs!1194994))

(assert (not d!1659111))

(assert (not bs!1194993))

(assert (not d!1659101))

(assert (not b!5128709))

(assert (not b!5128683))

(assert (not d!1659103))

(assert (not b!5128726))

(assert (not b!5128706))

(assert (not b!5128721))

(assert (not b_lambda!199231))

(assert (not b!5128705))

(assert (not d!1659097))

(assert (not d!1659099))

(assert (not b!5128689))

(assert (not bs!1194995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

