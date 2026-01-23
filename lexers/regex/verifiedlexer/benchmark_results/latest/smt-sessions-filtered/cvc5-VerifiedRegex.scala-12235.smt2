; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689354 () Bool)

(assert start!689354)

(declare-fun b!7083210 () Bool)

(assert (=> b!7083210 true))

(declare-fun bs!1882649 () Bool)

(declare-fun b!7083206 () Bool)

(assert (= bs!1882649 (and b!7083206 b!7083210)))

(declare-fun lambda!428657 () Int)

(declare-fun lambda!428656 () Int)

(assert (=> bs!1882649 (not (= lambda!428657 lambda!428656))))

(declare-fun e!4258409 () Bool)

(declare-fun e!4258408 () Bool)

(assert (=> b!7083206 (= e!4258409 (not e!4258408))))

(declare-fun res!2893649 () Bool)

(assert (=> b!7083206 (=> res!2893649 e!4258408)))

(declare-datatypes ((C!35702 0))(
  ( (C!35703 (val!27553 Int)) )
))
(declare-datatypes ((Regex!17716 0))(
  ( (ElementMatch!17716 (c!1322153 C!35702)) (Concat!26561 (regOne!35944 Regex!17716) (regTwo!35944 Regex!17716)) (EmptyExpr!17716) (Star!17716 (reg!18045 Regex!17716)) (EmptyLang!17716) (Union!17716 (regOne!35945 Regex!17716) (regTwo!35945 Regex!17716)) )
))
(declare-datatypes ((List!68669 0))(
  ( (Nil!68545) (Cons!68545 (h!74993 Regex!17716) (t!382454 List!68669)) )
))
(declare-datatypes ((Context!13424 0))(
  ( (Context!13425 (exprs!7212 List!68669)) )
))
(declare-fun lt!2554034 () Context!13424)

(declare-fun nullableContext!127 (Context!13424) Bool)

(assert (=> b!7083206 (= res!2893649 (not (nullableContext!127 lt!2554034)))))

(declare-fun lt!2554033 () List!68669)

(declare-datatypes ((Unit!162143 0))(
  ( (Unit!162144) )
))
(declare-fun lt!2554032 () Unit!162143)

(declare-fun ct2!306 () Context!13424)

(declare-fun lemmaContentSubsetPreservesForall!361 (List!68669 List!68669 Int) Unit!162143)

(assert (=> b!7083206 (= lt!2554032 (lemmaContentSubsetPreservesForall!361 lt!2554033 (exprs!7212 ct2!306) lambda!428657))))

(declare-fun lt!2554041 () Unit!162143)

(assert (=> b!7083206 (= lt!2554041 (lemmaContentSubsetPreservesForall!361 lt!2554033 (exprs!7212 lt!2554034) lambda!428657))))

(declare-fun subseq!710 (List!68669 List!68669) Bool)

(assert (=> b!7083206 (subseq!710 (exprs!7212 ct2!306) lt!2554033)))

(declare-fun lt!2554038 () Unit!162143)

(declare-fun lemmaConcatThenSecondSubseqOfTot!31 (List!68669 List!68669) Unit!162143)

(assert (=> b!7083206 (= lt!2554038 (lemmaConcatThenSecondSubseqOfTot!31 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(assert (=> b!7083206 (subseq!710 (exprs!7212 lt!2554034) lt!2554033)))

(declare-fun lt!2554036 () Unit!162143)

(declare-fun lemmaConcatThenFirstSubseqOfTot!31 (List!68669 List!68669) Unit!162143)

(assert (=> b!7083206 (= lt!2554036 (lemmaConcatThenFirstSubseqOfTot!31 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(declare-fun b!7083207 () Bool)

(declare-fun res!2893654 () Bool)

(declare-fun e!4258406 () Bool)

(assert (=> b!7083207 (=> (not res!2893654) (not e!4258406))))

(declare-fun lt!2554042 () (Set Context!13424))

(declare-fun lambda!428654 () Int)

(declare-fun exists!3816 ((Set Context!13424) Int) Bool)

(assert (=> b!7083207 (= res!2893654 (exists!3816 lt!2554042 lambda!428654))))

(declare-fun setIsEmpty!50626 () Bool)

(declare-fun setRes!50626 () Bool)

(assert (=> setIsEmpty!50626 setRes!50626))

(declare-fun b!7083208 () Bool)

(declare-fun res!2893651 () Bool)

(assert (=> b!7083208 (=> (not res!2893651) (not e!4258406))))

(declare-datatypes ((List!68670 0))(
  ( (Nil!68546) (Cons!68546 (h!74994 C!35702) (t!382455 List!68670)) )
))
(declare-fun s!7408 () List!68670)

(assert (=> b!7083208 (= res!2893651 (not (is-Cons!68546 s!7408)))))

(declare-fun b!7083209 () Bool)

(declare-fun e!4258410 () Bool)

(declare-fun isPrefix!5869 (List!68670 List!68670) Bool)

(assert (=> b!7083209 (= e!4258410 (isPrefix!5869 Nil!68546 Nil!68546))))

(declare-fun e!4258404 () Bool)

(assert (=> b!7083210 (= e!4258404 e!4258409)))

(declare-fun res!2893655 () Bool)

(assert (=> b!7083210 (=> (not res!2893655) (not e!4258409))))

(declare-fun lt!2554037 () Context!13424)

(assert (=> b!7083210 (= res!2893655 (= (Context!13425 lt!2554033) lt!2554037))))

(declare-fun ++!15889 (List!68669 List!68669) List!68669)

(assert (=> b!7083210 (= lt!2554033 (++!15889 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(declare-fun lt!2554031 () Unit!162143)

(declare-fun lemmaConcatPreservesForall!1027 (List!68669 List!68669 Int) Unit!162143)

(assert (=> b!7083210 (= lt!2554031 (lemmaConcatPreservesForall!1027 (exprs!7212 lt!2554034) (exprs!7212 ct2!306) lambda!428656))))

(declare-fun z1!570 () (Set Context!13424))

(declare-fun lambda!428655 () Int)

(declare-fun mapPost2!543 ((Set Context!13424) Int Context!13424) Context!13424)

(assert (=> b!7083210 (= lt!2554034 (mapPost2!543 z1!570 lambda!428655 lt!2554037))))

(declare-fun b!7083211 () Bool)

(declare-fun res!2893647 () Bool)

(assert (=> b!7083211 (=> res!2893647 e!4258410)))

(declare-fun lt!2554035 () (Set Context!13424))

(declare-fun matchZipper!3256 ((Set Context!13424) List!68670) Bool)

(assert (=> b!7083211 (= res!2893647 (not (matchZipper!3256 lt!2554035 Nil!68546)))))

(declare-fun b!7083212 () Bool)

(assert (=> b!7083212 (= e!4258408 e!4258410)))

(declare-fun res!2893653 () Bool)

(assert (=> b!7083212 (=> res!2893653 e!4258410)))

(assert (=> b!7083212 (= res!2893653 (not (matchZipper!3256 z1!570 Nil!68546)))))

(assert (=> b!7083212 (exists!3816 lt!2554035 lambda!428654)))

(declare-fun lt!2554039 () Unit!162143)

(declare-fun lemmaContainsThenExists!192 ((Set Context!13424) Context!13424 Int) Unit!162143)

(assert (=> b!7083212 (= lt!2554039 (lemmaContainsThenExists!192 lt!2554035 ct2!306 lambda!428654))))

(assert (=> b!7083212 (= lt!2554035 (set.insert ct2!306 (as set.empty (Set Context!13424))))))

(assert (=> b!7083212 (exists!3816 z1!570 lambda!428654)))

(declare-fun lt!2554040 () Unit!162143)

(assert (=> b!7083212 (= lt!2554040 (lemmaContainsThenExists!192 z1!570 lt!2554034 lambda!428654))))

(declare-fun b!7083213 () Bool)

(declare-fun res!2893652 () Bool)

(assert (=> b!7083213 (=> (not res!2893652) (not e!4258406))))

(declare-fun nullableZipper!2747 ((Set Context!13424)) Bool)

(assert (=> b!7083213 (= res!2893652 (nullableZipper!2747 lt!2554042))))

(declare-fun b!7083214 () Bool)

(declare-fun e!4258403 () Bool)

(declare-fun tp!1944094 () Bool)

(assert (=> b!7083214 (= e!4258403 tp!1944094)))

(declare-fun b!7083215 () Bool)

(declare-fun res!2893648 () Bool)

(assert (=> b!7083215 (=> res!2893648 e!4258410)))

(declare-fun ++!15890 (List!68670 List!68670) List!68670)

(assert (=> b!7083215 (= res!2893648 (not (= (++!15890 Nil!68546 Nil!68546) Nil!68546)))))

(declare-fun b!7083205 () Bool)

(assert (=> b!7083205 (= e!4258406 e!4258404)))

(declare-fun res!2893650 () Bool)

(assert (=> b!7083205 (=> (not res!2893650) (not e!4258404))))

(assert (=> b!7083205 (= res!2893650 (nullableContext!127 lt!2554037))))

(declare-fun getWitness!1858 ((Set Context!13424) Int) Context!13424)

(assert (=> b!7083205 (= lt!2554037 (getWitness!1858 lt!2554042 lambda!428654))))

(declare-fun res!2893645 () Bool)

(assert (=> start!689354 (=> (not res!2893645) (not e!4258406))))

(assert (=> start!689354 (= res!2893645 (matchZipper!3256 lt!2554042 s!7408))))

(declare-fun appendTo!837 ((Set Context!13424) Context!13424) (Set Context!13424))

(assert (=> start!689354 (= lt!2554042 (appendTo!837 z1!570 ct2!306))))

(assert (=> start!689354 e!4258406))

(declare-fun condSetEmpty!50626 () Bool)

(assert (=> start!689354 (= condSetEmpty!50626 (= z1!570 (as set.empty (Set Context!13424))))))

(assert (=> start!689354 setRes!50626))

(declare-fun inv!87150 (Context!13424) Bool)

(assert (=> start!689354 (and (inv!87150 ct2!306) e!4258403)))

(declare-fun e!4258407 () Bool)

(assert (=> start!689354 e!4258407))

(declare-fun b!7083216 () Bool)

(declare-fun tp_is_empty!44657 () Bool)

(declare-fun tp!1944092 () Bool)

(assert (=> b!7083216 (= e!4258407 (and tp_is_empty!44657 tp!1944092))))

(declare-fun b!7083217 () Bool)

(declare-fun res!2893646 () Bool)

(assert (=> b!7083217 (=> res!2893646 e!4258408)))

(assert (=> b!7083217 (= res!2893646 (not (nullableContext!127 ct2!306)))))

(declare-fun b!7083218 () Bool)

(declare-fun e!4258405 () Bool)

(declare-fun tp!1944091 () Bool)

(assert (=> b!7083218 (= e!4258405 tp!1944091)))

(declare-fun setNonEmpty!50626 () Bool)

(declare-fun setElem!50626 () Context!13424)

(declare-fun tp!1944093 () Bool)

(assert (=> setNonEmpty!50626 (= setRes!50626 (and tp!1944093 (inv!87150 setElem!50626) e!4258405))))

(declare-fun setRest!50626 () (Set Context!13424))

(assert (=> setNonEmpty!50626 (= z1!570 (set.union (set.insert setElem!50626 (as set.empty (Set Context!13424))) setRest!50626))))

(assert (= (and start!689354 res!2893645) b!7083208))

(assert (= (and b!7083208 res!2893651) b!7083213))

(assert (= (and b!7083213 res!2893652) b!7083207))

(assert (= (and b!7083207 res!2893654) b!7083205))

(assert (= (and b!7083205 res!2893650) b!7083210))

(assert (= (and b!7083210 res!2893655) b!7083206))

(assert (= (and b!7083206 (not res!2893649)) b!7083217))

(assert (= (and b!7083217 (not res!2893646)) b!7083212))

(assert (= (and b!7083212 (not res!2893653)) b!7083211))

(assert (= (and b!7083211 (not res!2893647)) b!7083215))

(assert (= (and b!7083215 (not res!2893648)) b!7083209))

(assert (= (and start!689354 condSetEmpty!50626) setIsEmpty!50626))

(assert (= (and start!689354 (not condSetEmpty!50626)) setNonEmpty!50626))

(assert (= setNonEmpty!50626 b!7083218))

(assert (= start!689354 b!7083214))

(assert (= (and start!689354 (is-Cons!68546 s!7408)) b!7083216))

(declare-fun m!7815184 () Bool)

(assert (=> b!7083206 m!7815184))

(declare-fun m!7815186 () Bool)

(assert (=> b!7083206 m!7815186))

(declare-fun m!7815188 () Bool)

(assert (=> b!7083206 m!7815188))

(declare-fun m!7815190 () Bool)

(assert (=> b!7083206 m!7815190))

(declare-fun m!7815192 () Bool)

(assert (=> b!7083206 m!7815192))

(declare-fun m!7815194 () Bool)

(assert (=> b!7083206 m!7815194))

(declare-fun m!7815196 () Bool)

(assert (=> b!7083206 m!7815196))

(declare-fun m!7815198 () Bool)

(assert (=> setNonEmpty!50626 m!7815198))

(declare-fun m!7815200 () Bool)

(assert (=> b!7083210 m!7815200))

(declare-fun m!7815202 () Bool)

(assert (=> b!7083210 m!7815202))

(declare-fun m!7815204 () Bool)

(assert (=> b!7083210 m!7815204))

(declare-fun m!7815206 () Bool)

(assert (=> start!689354 m!7815206))

(declare-fun m!7815208 () Bool)

(assert (=> start!689354 m!7815208))

(declare-fun m!7815210 () Bool)

(assert (=> start!689354 m!7815210))

(declare-fun m!7815212 () Bool)

(assert (=> b!7083211 m!7815212))

(declare-fun m!7815214 () Bool)

(assert (=> b!7083212 m!7815214))

(declare-fun m!7815216 () Bool)

(assert (=> b!7083212 m!7815216))

(declare-fun m!7815218 () Bool)

(assert (=> b!7083212 m!7815218))

(declare-fun m!7815220 () Bool)

(assert (=> b!7083212 m!7815220))

(declare-fun m!7815222 () Bool)

(assert (=> b!7083212 m!7815222))

(declare-fun m!7815224 () Bool)

(assert (=> b!7083212 m!7815224))

(declare-fun m!7815226 () Bool)

(assert (=> b!7083213 m!7815226))

(declare-fun m!7815228 () Bool)

(assert (=> b!7083215 m!7815228))

(declare-fun m!7815230 () Bool)

(assert (=> b!7083209 m!7815230))

(declare-fun m!7815232 () Bool)

(assert (=> b!7083217 m!7815232))

(declare-fun m!7815234 () Bool)

(assert (=> b!7083205 m!7815234))

(declare-fun m!7815236 () Bool)

(assert (=> b!7083205 m!7815236))

(declare-fun m!7815238 () Bool)

(assert (=> b!7083207 m!7815238))

(push 1)

(assert (not start!689354))

(assert (not b!7083216))

(assert (not b!7083210))

(assert tp_is_empty!44657)

(assert (not b!7083207))

(assert (not b!7083212))

(assert (not b!7083217))

(assert (not b!7083205))

(assert (not b!7083214))

(assert (not b!7083206))

(assert (not b!7083209))

(assert (not setNonEmpty!50626))

(assert (not b!7083213))

(assert (not b!7083211))

(assert (not b!7083218))

(assert (not b!7083215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882651 () Bool)

(declare-fun d!2215550 () Bool)

(assert (= bs!1882651 (and d!2215550 b!7083210)))

(declare-fun lambda!428682 () Int)

(assert (=> bs!1882651 (= lambda!428682 lambda!428656)))

(declare-fun bs!1882652 () Bool)

(assert (= bs!1882652 (and d!2215550 b!7083206)))

(assert (=> bs!1882652 (not (= lambda!428682 lambda!428657))))

(declare-fun forall!16674 (List!68669 Int) Bool)

(assert (=> d!2215550 (= (inv!87150 setElem!50626) (forall!16674 (exprs!7212 setElem!50626) lambda!428682))))

(declare-fun bs!1882653 () Bool)

(assert (= bs!1882653 d!2215550))

(declare-fun m!7815296 () Bool)

(assert (=> bs!1882653 m!7815296))

(assert (=> setNonEmpty!50626 d!2215550))

(declare-fun b!7083275 () Bool)

(declare-fun e!4258441 () Bool)

(declare-fun tail!13914 (List!68670) List!68670)

(assert (=> b!7083275 (= e!4258441 (isPrefix!5869 (tail!13914 Nil!68546) (tail!13914 Nil!68546)))))

(declare-fun b!7083274 () Bool)

(declare-fun res!2893701 () Bool)

(assert (=> b!7083274 (=> (not res!2893701) (not e!4258441))))

(declare-fun head!14451 (List!68670) C!35702)

(assert (=> b!7083274 (= res!2893701 (= (head!14451 Nil!68546) (head!14451 Nil!68546)))))

(declare-fun b!7083273 () Bool)

(declare-fun e!4258442 () Bool)

(assert (=> b!7083273 (= e!4258442 e!4258441)))

(declare-fun res!2893699 () Bool)

(assert (=> b!7083273 (=> (not res!2893699) (not e!4258441))))

(assert (=> b!7083273 (= res!2893699 (not (is-Nil!68546 Nil!68546)))))

(declare-fun b!7083276 () Bool)

(declare-fun e!4258443 () Bool)

(declare-fun size!41278 (List!68670) Int)

(assert (=> b!7083276 (= e!4258443 (>= (size!41278 Nil!68546) (size!41278 Nil!68546)))))

(declare-fun d!2215552 () Bool)

(assert (=> d!2215552 e!4258443))

(declare-fun res!2893700 () Bool)

(assert (=> d!2215552 (=> res!2893700 e!4258443)))

(declare-fun lt!2554083 () Bool)

(assert (=> d!2215552 (= res!2893700 (not lt!2554083))))

(assert (=> d!2215552 (= lt!2554083 e!4258442)))

(declare-fun res!2893702 () Bool)

(assert (=> d!2215552 (=> res!2893702 e!4258442)))

(assert (=> d!2215552 (= res!2893702 (is-Nil!68546 Nil!68546))))

(assert (=> d!2215552 (= (isPrefix!5869 Nil!68546 Nil!68546) lt!2554083)))

(assert (= (and d!2215552 (not res!2893702)) b!7083273))

(assert (= (and b!7083273 res!2893699) b!7083274))

(assert (= (and b!7083274 res!2893701) b!7083275))

(assert (= (and d!2215552 (not res!2893700)) b!7083276))

(declare-fun m!7815298 () Bool)

(assert (=> b!7083275 m!7815298))

(assert (=> b!7083275 m!7815298))

(assert (=> b!7083275 m!7815298))

(assert (=> b!7083275 m!7815298))

(declare-fun m!7815300 () Bool)

(assert (=> b!7083275 m!7815300))

(declare-fun m!7815302 () Bool)

(assert (=> b!7083274 m!7815302))

(assert (=> b!7083274 m!7815302))

(declare-fun m!7815304 () Bool)

(assert (=> b!7083276 m!7815304))

(assert (=> b!7083276 m!7815304))

(assert (=> b!7083209 d!2215552))

(declare-fun d!2215554 () Bool)

(declare-fun lt!2554086 () Bool)

(declare-datatypes ((List!68673 0))(
  ( (Nil!68549) (Cons!68549 (h!74997 Context!13424) (t!382458 List!68673)) )
))
(declare-fun exists!3818 (List!68673 Int) Bool)

(declare-fun toList!11052 ((Set Context!13424)) List!68673)

(assert (=> d!2215554 (= lt!2554086 (exists!3818 (toList!11052 lt!2554042) lambda!428654))))

(declare-fun choose!54566 ((Set Context!13424) Int) Bool)

(assert (=> d!2215554 (= lt!2554086 (choose!54566 lt!2554042 lambda!428654))))

(assert (=> d!2215554 (= (exists!3816 lt!2554042 lambda!428654) lt!2554086)))

(declare-fun bs!1882654 () Bool)

(assert (= bs!1882654 d!2215554))

(declare-fun m!7815306 () Bool)

(assert (=> bs!1882654 m!7815306))

(assert (=> bs!1882654 m!7815306))

(declare-fun m!7815308 () Bool)

(assert (=> bs!1882654 m!7815308))

(declare-fun m!7815310 () Bool)

(assert (=> bs!1882654 m!7815310))

(assert (=> b!7083207 d!2215554))

(declare-fun bs!1882655 () Bool)

(declare-fun d!2215556 () Bool)

(assert (= bs!1882655 (and d!2215556 b!7083210)))

(declare-fun lambda!428685 () Int)

(assert (=> bs!1882655 (not (= lambda!428685 lambda!428656))))

(declare-fun bs!1882656 () Bool)

(assert (= bs!1882656 (and d!2215556 b!7083206)))

(assert (=> bs!1882656 (= lambda!428685 lambda!428657)))

(declare-fun bs!1882657 () Bool)

(assert (= bs!1882657 (and d!2215556 d!2215550)))

(assert (=> bs!1882657 (not (= lambda!428685 lambda!428682))))

(assert (=> d!2215556 (= (nullableContext!127 ct2!306) (forall!16674 (exprs!7212 ct2!306) lambda!428685))))

(declare-fun bs!1882658 () Bool)

(assert (= bs!1882658 d!2215556))

(declare-fun m!7815312 () Bool)

(assert (=> bs!1882658 m!7815312))

(assert (=> b!7083217 d!2215556))

(declare-fun d!2215560 () Bool)

(declare-fun e!4258448 () Bool)

(assert (=> d!2215560 e!4258448))

(declare-fun res!2893707 () Bool)

(assert (=> d!2215560 (=> (not res!2893707) (not e!4258448))))

(declare-fun lt!2554092 () List!68670)

(declare-fun content!13903 (List!68670) (Set C!35702))

(assert (=> d!2215560 (= res!2893707 (= (content!13903 lt!2554092) (set.union (content!13903 Nil!68546) (content!13903 Nil!68546))))))

(declare-fun e!4258449 () List!68670)

(assert (=> d!2215560 (= lt!2554092 e!4258449)))

(declare-fun c!1322168 () Bool)

(assert (=> d!2215560 (= c!1322168 (is-Nil!68546 Nil!68546))))

(assert (=> d!2215560 (= (++!15890 Nil!68546 Nil!68546) lt!2554092)))

(declare-fun b!7083286 () Bool)

(assert (=> b!7083286 (= e!4258449 (Cons!68546 (h!74994 Nil!68546) (++!15890 (t!382455 Nil!68546) Nil!68546)))))

(declare-fun b!7083285 () Bool)

(assert (=> b!7083285 (= e!4258449 Nil!68546)))

(declare-fun b!7083287 () Bool)

(declare-fun res!2893708 () Bool)

(assert (=> b!7083287 (=> (not res!2893708) (not e!4258448))))

(assert (=> b!7083287 (= res!2893708 (= (size!41278 lt!2554092) (+ (size!41278 Nil!68546) (size!41278 Nil!68546))))))

(declare-fun b!7083288 () Bool)

(assert (=> b!7083288 (= e!4258448 (or (not (= Nil!68546 Nil!68546)) (= lt!2554092 Nil!68546)))))

(assert (= (and d!2215560 c!1322168) b!7083285))

(assert (= (and d!2215560 (not c!1322168)) b!7083286))

(assert (= (and d!2215560 res!2893707) b!7083287))

(assert (= (and b!7083287 res!2893708) b!7083288))

(declare-fun m!7815320 () Bool)

(assert (=> d!2215560 m!7815320))

(declare-fun m!7815322 () Bool)

(assert (=> d!2215560 m!7815322))

(assert (=> d!2215560 m!7815322))

(declare-fun m!7815324 () Bool)

(assert (=> b!7083286 m!7815324))

(declare-fun m!7815326 () Bool)

(assert (=> b!7083287 m!7815326))

(assert (=> b!7083287 m!7815304))

(assert (=> b!7083287 m!7815304))

(assert (=> b!7083215 d!2215560))

(declare-fun d!2215564 () Bool)

(assert (=> d!2215564 (subseq!710 (exprs!7212 ct2!306) (++!15889 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(declare-fun lt!2554095 () Unit!162143)

(declare-fun choose!54567 (List!68669 List!68669) Unit!162143)

(assert (=> d!2215564 (= lt!2554095 (choose!54567 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(assert (=> d!2215564 (= (lemmaConcatThenSecondSubseqOfTot!31 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)) lt!2554095)))

(declare-fun bs!1882660 () Bool)

(assert (= bs!1882660 d!2215564))

(assert (=> bs!1882660 m!7815200))

(assert (=> bs!1882660 m!7815200))

(declare-fun m!7815328 () Bool)

(assert (=> bs!1882660 m!7815328))

(declare-fun m!7815330 () Bool)

(assert (=> bs!1882660 m!7815330))

(assert (=> b!7083206 d!2215564))

(declare-fun b!7083297 () Bool)

(declare-fun e!4258461 () Bool)

(declare-fun e!4258459 () Bool)

(assert (=> b!7083297 (= e!4258461 e!4258459)))

(declare-fun res!2893719 () Bool)

(assert (=> b!7083297 (=> (not res!2893719) (not e!4258459))))

(assert (=> b!7083297 (= res!2893719 (is-Cons!68545 lt!2554033))))

(declare-fun b!7083300 () Bool)

(declare-fun e!4258460 () Bool)

(assert (=> b!7083300 (= e!4258460 (subseq!710 (exprs!7212 lt!2554034) (t!382454 lt!2554033)))))

(declare-fun b!7083299 () Bool)

(declare-fun e!4258458 () Bool)

(assert (=> b!7083299 (= e!4258458 (subseq!710 (t!382454 (exprs!7212 lt!2554034)) (t!382454 lt!2554033)))))

(declare-fun d!2215566 () Bool)

(declare-fun res!2893720 () Bool)

(assert (=> d!2215566 (=> res!2893720 e!4258461)))

(assert (=> d!2215566 (= res!2893720 (is-Nil!68545 (exprs!7212 lt!2554034)))))

(assert (=> d!2215566 (= (subseq!710 (exprs!7212 lt!2554034) lt!2554033) e!4258461)))

(declare-fun b!7083298 () Bool)

(assert (=> b!7083298 (= e!4258459 e!4258460)))

(declare-fun res!2893718 () Bool)

(assert (=> b!7083298 (=> res!2893718 e!4258460)))

(assert (=> b!7083298 (= res!2893718 e!4258458)))

(declare-fun res!2893717 () Bool)

(assert (=> b!7083298 (=> (not res!2893717) (not e!4258458))))

(assert (=> b!7083298 (= res!2893717 (= (h!74993 (exprs!7212 lt!2554034)) (h!74993 lt!2554033)))))

(assert (= (and d!2215566 (not res!2893720)) b!7083297))

(assert (= (and b!7083297 res!2893719) b!7083298))

(assert (= (and b!7083298 res!2893717) b!7083299))

(assert (= (and b!7083298 (not res!2893718)) b!7083300))

(declare-fun m!7815338 () Bool)

(assert (=> b!7083300 m!7815338))

(declare-fun m!7815340 () Bool)

(assert (=> b!7083299 m!7815340))

(assert (=> b!7083206 d!2215566))

(declare-fun bs!1882662 () Bool)

(declare-fun d!2215570 () Bool)

(assert (= bs!1882662 (and d!2215570 b!7083210)))

(declare-fun lambda!428688 () Int)

(assert (=> bs!1882662 (not (= lambda!428688 lambda!428656))))

(declare-fun bs!1882663 () Bool)

(assert (= bs!1882663 (and d!2215570 b!7083206)))

(assert (=> bs!1882663 (= lambda!428688 lambda!428657)))

(declare-fun bs!1882664 () Bool)

(assert (= bs!1882664 (and d!2215570 d!2215550)))

(assert (=> bs!1882664 (not (= lambda!428688 lambda!428682))))

(declare-fun bs!1882665 () Bool)

(assert (= bs!1882665 (and d!2215570 d!2215556)))

(assert (=> bs!1882665 (= lambda!428688 lambda!428685)))

(assert (=> d!2215570 (= (nullableContext!127 lt!2554034) (forall!16674 (exprs!7212 lt!2554034) lambda!428688))))

(declare-fun bs!1882666 () Bool)

(assert (= bs!1882666 d!2215570))

(declare-fun m!7815342 () Bool)

(assert (=> bs!1882666 m!7815342))

(assert (=> b!7083206 d!2215570))

(declare-fun b!7083301 () Bool)

(declare-fun e!4258465 () Bool)

(declare-fun e!4258463 () Bool)

(assert (=> b!7083301 (= e!4258465 e!4258463)))

(declare-fun res!2893723 () Bool)

(assert (=> b!7083301 (=> (not res!2893723) (not e!4258463))))

(assert (=> b!7083301 (= res!2893723 (is-Cons!68545 lt!2554033))))

(declare-fun b!7083304 () Bool)

(declare-fun e!4258464 () Bool)

(assert (=> b!7083304 (= e!4258464 (subseq!710 (exprs!7212 ct2!306) (t!382454 lt!2554033)))))

(declare-fun b!7083303 () Bool)

(declare-fun e!4258462 () Bool)

(assert (=> b!7083303 (= e!4258462 (subseq!710 (t!382454 (exprs!7212 ct2!306)) (t!382454 lt!2554033)))))

(declare-fun d!2215572 () Bool)

(declare-fun res!2893724 () Bool)

(assert (=> d!2215572 (=> res!2893724 e!4258465)))

(assert (=> d!2215572 (= res!2893724 (is-Nil!68545 (exprs!7212 ct2!306)))))

(assert (=> d!2215572 (= (subseq!710 (exprs!7212 ct2!306) lt!2554033) e!4258465)))

(declare-fun b!7083302 () Bool)

(assert (=> b!7083302 (= e!4258463 e!4258464)))

(declare-fun res!2893722 () Bool)

(assert (=> b!7083302 (=> res!2893722 e!4258464)))

(assert (=> b!7083302 (= res!2893722 e!4258462)))

(declare-fun res!2893721 () Bool)

(assert (=> b!7083302 (=> (not res!2893721) (not e!4258462))))

(assert (=> b!7083302 (= res!2893721 (= (h!74993 (exprs!7212 ct2!306)) (h!74993 lt!2554033)))))

(assert (= (and d!2215572 (not res!2893724)) b!7083301))

(assert (= (and b!7083301 res!2893723) b!7083302))

(assert (= (and b!7083302 res!2893721) b!7083303))

(assert (= (and b!7083302 (not res!2893722)) b!7083304))

(declare-fun m!7815344 () Bool)

(assert (=> b!7083304 m!7815344))

(declare-fun m!7815346 () Bool)

(assert (=> b!7083303 m!7815346))

(assert (=> b!7083206 d!2215572))

(declare-fun d!2215574 () Bool)

(assert (=> d!2215574 (forall!16674 (exprs!7212 ct2!306) lambda!428657)))

(declare-fun lt!2554101 () Unit!162143)

(declare-fun choose!54568 (List!68669 List!68669 Int) Unit!162143)

(assert (=> d!2215574 (= lt!2554101 (choose!54568 lt!2554033 (exprs!7212 ct2!306) lambda!428657))))

(assert (=> d!2215574 (forall!16674 lt!2554033 lambda!428657)))

(assert (=> d!2215574 (= (lemmaContentSubsetPreservesForall!361 lt!2554033 (exprs!7212 ct2!306) lambda!428657) lt!2554101)))

(declare-fun bs!1882670 () Bool)

(assert (= bs!1882670 d!2215574))

(declare-fun m!7815350 () Bool)

(assert (=> bs!1882670 m!7815350))

(declare-fun m!7815352 () Bool)

(assert (=> bs!1882670 m!7815352))

(declare-fun m!7815354 () Bool)

(assert (=> bs!1882670 m!7815354))

(assert (=> b!7083206 d!2215574))

(declare-fun d!2215578 () Bool)

(assert (=> d!2215578 (forall!16674 (exprs!7212 lt!2554034) lambda!428657)))

(declare-fun lt!2554102 () Unit!162143)

(assert (=> d!2215578 (= lt!2554102 (choose!54568 lt!2554033 (exprs!7212 lt!2554034) lambda!428657))))

(assert (=> d!2215578 (forall!16674 lt!2554033 lambda!428657)))

(assert (=> d!2215578 (= (lemmaContentSubsetPreservesForall!361 lt!2554033 (exprs!7212 lt!2554034) lambda!428657) lt!2554102)))

(declare-fun bs!1882671 () Bool)

(assert (= bs!1882671 d!2215578))

(declare-fun m!7815356 () Bool)

(assert (=> bs!1882671 m!7815356))

(declare-fun m!7815358 () Bool)

(assert (=> bs!1882671 m!7815358))

(assert (=> bs!1882671 m!7815354))

(assert (=> b!7083206 d!2215578))

(declare-fun d!2215580 () Bool)

(assert (=> d!2215580 (subseq!710 (exprs!7212 lt!2554034) (++!15889 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(declare-fun lt!2554105 () Unit!162143)

(declare-fun choose!54569 (List!68669 List!68669) Unit!162143)

(assert (=> d!2215580 (= lt!2554105 (choose!54569 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)))))

(assert (=> d!2215580 (= (lemmaConcatThenFirstSubseqOfTot!31 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)) lt!2554105)))

(declare-fun bs!1882672 () Bool)

(assert (= bs!1882672 d!2215580))

(assert (=> bs!1882672 m!7815200))

(assert (=> bs!1882672 m!7815200))

(declare-fun m!7815360 () Bool)

(assert (=> bs!1882672 m!7815360))

(declare-fun m!7815362 () Bool)

(assert (=> bs!1882672 m!7815362))

(assert (=> b!7083206 d!2215580))

(declare-fun bs!1882673 () Bool)

(declare-fun d!2215582 () Bool)

(assert (= bs!1882673 (and d!2215582 d!2215556)))

(declare-fun lambda!428690 () Int)

(assert (=> bs!1882673 (= lambda!428690 lambda!428685)))

(declare-fun bs!1882674 () Bool)

(assert (= bs!1882674 (and d!2215582 d!2215570)))

(assert (=> bs!1882674 (= lambda!428690 lambda!428688)))

(declare-fun bs!1882675 () Bool)

(assert (= bs!1882675 (and d!2215582 b!7083206)))

(assert (=> bs!1882675 (= lambda!428690 lambda!428657)))

(declare-fun bs!1882676 () Bool)

(assert (= bs!1882676 (and d!2215582 d!2215550)))

(assert (=> bs!1882676 (not (= lambda!428690 lambda!428682))))

(declare-fun bs!1882677 () Bool)

(assert (= bs!1882677 (and d!2215582 b!7083210)))

(assert (=> bs!1882677 (not (= lambda!428690 lambda!428656))))

(assert (=> d!2215582 (= (nullableContext!127 lt!2554037) (forall!16674 (exprs!7212 lt!2554037) lambda!428690))))

(declare-fun bs!1882678 () Bool)

(assert (= bs!1882678 d!2215582))

(declare-fun m!7815364 () Bool)

(assert (=> bs!1882678 m!7815364))

(assert (=> b!7083205 d!2215582))

(declare-fun d!2215584 () Bool)

(declare-fun e!4258468 () Bool)

(assert (=> d!2215584 e!4258468))

(declare-fun res!2893727 () Bool)

(assert (=> d!2215584 (=> (not res!2893727) (not e!4258468))))

(declare-fun lt!2554111 () Context!13424)

(declare-fun dynLambda!27946 (Int Context!13424) Bool)

(assert (=> d!2215584 (= res!2893727 (dynLambda!27946 lambda!428654 lt!2554111))))

(declare-fun getWitness!1860 (List!68673 Int) Context!13424)

(assert (=> d!2215584 (= lt!2554111 (getWitness!1860 (toList!11052 lt!2554042) lambda!428654))))

(assert (=> d!2215584 (exists!3816 lt!2554042 lambda!428654)))

(assert (=> d!2215584 (= (getWitness!1858 lt!2554042 lambda!428654) lt!2554111)))

(declare-fun b!7083307 () Bool)

(assert (=> b!7083307 (= e!4258468 (set.member lt!2554111 lt!2554042))))

(assert (= (and d!2215584 res!2893727) b!7083307))

(declare-fun b_lambda!270713 () Bool)

(assert (=> (not b_lambda!270713) (not d!2215584)))

(declare-fun m!7815370 () Bool)

(assert (=> d!2215584 m!7815370))

(assert (=> d!2215584 m!7815306))

(assert (=> d!2215584 m!7815306))

(declare-fun m!7815372 () Bool)

(assert (=> d!2215584 m!7815372))

(assert (=> d!2215584 m!7815238))

(declare-fun m!7815374 () Bool)

(assert (=> b!7083307 m!7815374))

(assert (=> b!7083205 d!2215584))

(declare-fun bs!1882680 () Bool)

(declare-fun d!2215588 () Bool)

(assert (= bs!1882680 (and d!2215588 b!7083207)))

(declare-fun lambda!428693 () Int)

(assert (=> bs!1882680 (= lambda!428693 lambda!428654)))

(assert (=> d!2215588 (= (nullableZipper!2747 lt!2554042) (exists!3816 lt!2554042 lambda!428693))))

(declare-fun bs!1882681 () Bool)

(assert (= bs!1882681 d!2215588))

(declare-fun m!7815376 () Bool)

(assert (=> bs!1882681 m!7815376))

(assert (=> b!7083213 d!2215588))

(declare-fun d!2215590 () Bool)

(declare-fun c!1322174 () Bool)

(declare-fun isEmpty!39994 (List!68670) Bool)

(assert (=> d!2215590 (= c!1322174 (isEmpty!39994 Nil!68546))))

(declare-fun e!4258483 () Bool)

(assert (=> d!2215590 (= (matchZipper!3256 lt!2554035 Nil!68546) e!4258483)))

(declare-fun b!7083324 () Bool)

(assert (=> b!7083324 (= e!4258483 (nullableZipper!2747 lt!2554035))))

(declare-fun b!7083325 () Bool)

(declare-fun derivationStepZipper!3161 ((Set Context!13424) C!35702) (Set Context!13424))

(assert (=> b!7083325 (= e!4258483 (matchZipper!3256 (derivationStepZipper!3161 lt!2554035 (head!14451 Nil!68546)) (tail!13914 Nil!68546)))))

(assert (= (and d!2215590 c!1322174) b!7083324))

(assert (= (and d!2215590 (not c!1322174)) b!7083325))

(declare-fun m!7815378 () Bool)

(assert (=> d!2215590 m!7815378))

(declare-fun m!7815380 () Bool)

(assert (=> b!7083324 m!7815380))

(assert (=> b!7083325 m!7815302))

(assert (=> b!7083325 m!7815302))

(declare-fun m!7815382 () Bool)

(assert (=> b!7083325 m!7815382))

(assert (=> b!7083325 m!7815298))

(assert (=> b!7083325 m!7815382))

(assert (=> b!7083325 m!7815298))

(declare-fun m!7815384 () Bool)

(assert (=> b!7083325 m!7815384))

(assert (=> b!7083211 d!2215590))

(declare-fun d!2215592 () Bool)

(declare-fun c!1322175 () Bool)

(assert (=> d!2215592 (= c!1322175 (isEmpty!39994 s!7408))))

(declare-fun e!4258484 () Bool)

(assert (=> d!2215592 (= (matchZipper!3256 lt!2554042 s!7408) e!4258484)))

(declare-fun b!7083326 () Bool)

(assert (=> b!7083326 (= e!4258484 (nullableZipper!2747 lt!2554042))))

(declare-fun b!7083327 () Bool)

(assert (=> b!7083327 (= e!4258484 (matchZipper!3256 (derivationStepZipper!3161 lt!2554042 (head!14451 s!7408)) (tail!13914 s!7408)))))

(assert (= (and d!2215592 c!1322175) b!7083326))

(assert (= (and d!2215592 (not c!1322175)) b!7083327))

(declare-fun m!7815390 () Bool)

(assert (=> d!2215592 m!7815390))

(assert (=> b!7083326 m!7815226))

(declare-fun m!7815392 () Bool)

(assert (=> b!7083327 m!7815392))

(assert (=> b!7083327 m!7815392))

(declare-fun m!7815394 () Bool)

(assert (=> b!7083327 m!7815394))

(declare-fun m!7815396 () Bool)

(assert (=> b!7083327 m!7815396))

(assert (=> b!7083327 m!7815394))

(assert (=> b!7083327 m!7815396))

(declare-fun m!7815398 () Bool)

(assert (=> b!7083327 m!7815398))

(assert (=> start!689354 d!2215592))

(declare-fun bs!1882683 () Bool)

(declare-fun d!2215596 () Bool)

(assert (= bs!1882683 (and d!2215596 b!7083210)))

(declare-fun lambda!428698 () Int)

(assert (=> bs!1882683 (= lambda!428698 lambda!428655)))

(assert (=> d!2215596 true))

(declare-fun map!16069 ((Set Context!13424) Int) (Set Context!13424))

(assert (=> d!2215596 (= (appendTo!837 z1!570 ct2!306) (map!16069 z1!570 lambda!428698))))

(declare-fun bs!1882684 () Bool)

(assert (= bs!1882684 d!2215596))

(declare-fun m!7815408 () Bool)

(assert (=> bs!1882684 m!7815408))

(assert (=> start!689354 d!2215596))

(declare-fun bs!1882685 () Bool)

(declare-fun d!2215602 () Bool)

(assert (= bs!1882685 (and d!2215602 d!2215556)))

(declare-fun lambda!428699 () Int)

(assert (=> bs!1882685 (not (= lambda!428699 lambda!428685))))

(declare-fun bs!1882686 () Bool)

(assert (= bs!1882686 (and d!2215602 d!2215582)))

(assert (=> bs!1882686 (not (= lambda!428699 lambda!428690))))

(declare-fun bs!1882687 () Bool)

(assert (= bs!1882687 (and d!2215602 d!2215570)))

(assert (=> bs!1882687 (not (= lambda!428699 lambda!428688))))

(declare-fun bs!1882688 () Bool)

(assert (= bs!1882688 (and d!2215602 b!7083206)))

(assert (=> bs!1882688 (not (= lambda!428699 lambda!428657))))

(declare-fun bs!1882689 () Bool)

(assert (= bs!1882689 (and d!2215602 d!2215550)))

(assert (=> bs!1882689 (= lambda!428699 lambda!428682)))

(declare-fun bs!1882691 () Bool)

(assert (= bs!1882691 (and d!2215602 b!7083210)))

(assert (=> bs!1882691 (= lambda!428699 lambda!428656)))

(assert (=> d!2215602 (= (inv!87150 ct2!306) (forall!16674 (exprs!7212 ct2!306) lambda!428699))))

(declare-fun bs!1882692 () Bool)

(assert (= bs!1882692 d!2215602))

(declare-fun m!7815412 () Bool)

(assert (=> bs!1882692 m!7815412))

(assert (=> start!689354 d!2215602))

(declare-fun d!2215604 () Bool)

(assert (=> d!2215604 (exists!3816 lt!2554035 lambda!428654)))

(declare-fun lt!2554120 () Unit!162143)

(declare-fun choose!54570 ((Set Context!13424) Context!13424 Int) Unit!162143)

(assert (=> d!2215604 (= lt!2554120 (choose!54570 lt!2554035 ct2!306 lambda!428654))))

(assert (=> d!2215604 (set.member ct2!306 lt!2554035)))

(assert (=> d!2215604 (= (lemmaContainsThenExists!192 lt!2554035 ct2!306 lambda!428654) lt!2554120)))

(declare-fun bs!1882693 () Bool)

(assert (= bs!1882693 d!2215604))

(assert (=> bs!1882693 m!7815216))

(declare-fun m!7815416 () Bool)

(assert (=> bs!1882693 m!7815416))

(declare-fun m!7815418 () Bool)

(assert (=> bs!1882693 m!7815418))

(assert (=> b!7083212 d!2215604))

(declare-fun d!2215608 () Bool)

(assert (=> d!2215608 (exists!3816 z1!570 lambda!428654)))

(declare-fun lt!2554121 () Unit!162143)

(assert (=> d!2215608 (= lt!2554121 (choose!54570 z1!570 lt!2554034 lambda!428654))))

(assert (=> d!2215608 (set.member lt!2554034 z1!570)))

(assert (=> d!2215608 (= (lemmaContainsThenExists!192 z1!570 lt!2554034 lambda!428654) lt!2554121)))

(declare-fun bs!1882694 () Bool)

(assert (= bs!1882694 d!2215608))

(assert (=> bs!1882694 m!7815218))

(declare-fun m!7815420 () Bool)

(assert (=> bs!1882694 m!7815420))

(declare-fun m!7815422 () Bool)

(assert (=> bs!1882694 m!7815422))

(assert (=> b!7083212 d!2215608))

(declare-fun d!2215610 () Bool)

(declare-fun lt!2554122 () Bool)

(assert (=> d!2215610 (= lt!2554122 (exists!3818 (toList!11052 z1!570) lambda!428654))))

(assert (=> d!2215610 (= lt!2554122 (choose!54566 z1!570 lambda!428654))))

(assert (=> d!2215610 (= (exists!3816 z1!570 lambda!428654) lt!2554122)))

(declare-fun bs!1882695 () Bool)

(assert (= bs!1882695 d!2215610))

(declare-fun m!7815424 () Bool)

(assert (=> bs!1882695 m!7815424))

(assert (=> bs!1882695 m!7815424))

(declare-fun m!7815426 () Bool)

(assert (=> bs!1882695 m!7815426))

(declare-fun m!7815428 () Bool)

(assert (=> bs!1882695 m!7815428))

(assert (=> b!7083212 d!2215610))

(declare-fun d!2215612 () Bool)

(declare-fun c!1322177 () Bool)

(assert (=> d!2215612 (= c!1322177 (isEmpty!39994 Nil!68546))))

(declare-fun e!4258490 () Bool)

(assert (=> d!2215612 (= (matchZipper!3256 z1!570 Nil!68546) e!4258490)))

(declare-fun b!7083332 () Bool)

(assert (=> b!7083332 (= e!4258490 (nullableZipper!2747 z1!570))))

(declare-fun b!7083333 () Bool)

(assert (=> b!7083333 (= e!4258490 (matchZipper!3256 (derivationStepZipper!3161 z1!570 (head!14451 Nil!68546)) (tail!13914 Nil!68546)))))

(assert (= (and d!2215612 c!1322177) b!7083332))

(assert (= (and d!2215612 (not c!1322177)) b!7083333))

(assert (=> d!2215612 m!7815378))

(declare-fun m!7815430 () Bool)

(assert (=> b!7083332 m!7815430))

(assert (=> b!7083333 m!7815302))

(assert (=> b!7083333 m!7815302))

(declare-fun m!7815432 () Bool)

(assert (=> b!7083333 m!7815432))

(assert (=> b!7083333 m!7815298))

(assert (=> b!7083333 m!7815432))

(assert (=> b!7083333 m!7815298))

(declare-fun m!7815434 () Bool)

(assert (=> b!7083333 m!7815434))

(assert (=> b!7083212 d!2215612))

(declare-fun d!2215614 () Bool)

(declare-fun lt!2554123 () Bool)

(assert (=> d!2215614 (= lt!2554123 (exists!3818 (toList!11052 lt!2554035) lambda!428654))))

(assert (=> d!2215614 (= lt!2554123 (choose!54566 lt!2554035 lambda!428654))))

(assert (=> d!2215614 (= (exists!3816 lt!2554035 lambda!428654) lt!2554123)))

(declare-fun bs!1882696 () Bool)

(assert (= bs!1882696 d!2215614))

(declare-fun m!7815436 () Bool)

(assert (=> bs!1882696 m!7815436))

(assert (=> bs!1882696 m!7815436))

(declare-fun m!7815438 () Bool)

(assert (=> bs!1882696 m!7815438))

(declare-fun m!7815440 () Bool)

(assert (=> bs!1882696 m!7815440))

(assert (=> b!7083212 d!2215614))

(declare-fun b!7083353 () Bool)

(declare-fun lt!2554128 () List!68669)

(declare-fun e!4258499 () Bool)

(assert (=> b!7083353 (= e!4258499 (or (not (= (exprs!7212 ct2!306) Nil!68545)) (= lt!2554128 (exprs!7212 lt!2554034))))))

(declare-fun b!7083351 () Bool)

(declare-fun e!4258500 () List!68669)

(assert (=> b!7083351 (= e!4258500 (Cons!68545 (h!74993 (exprs!7212 lt!2554034)) (++!15889 (t!382454 (exprs!7212 lt!2554034)) (exprs!7212 ct2!306))))))

(declare-fun d!2215616 () Bool)

(assert (=> d!2215616 e!4258499))

(declare-fun res!2893752 () Bool)

(assert (=> d!2215616 (=> (not res!2893752) (not e!4258499))))

(declare-fun content!13904 (List!68669) (Set Regex!17716))

(assert (=> d!2215616 (= res!2893752 (= (content!13904 lt!2554128) (set.union (content!13904 (exprs!7212 lt!2554034)) (content!13904 (exprs!7212 ct2!306)))))))

(assert (=> d!2215616 (= lt!2554128 e!4258500)))

(declare-fun c!1322182 () Bool)

(assert (=> d!2215616 (= c!1322182 (is-Nil!68545 (exprs!7212 lt!2554034)))))

(assert (=> d!2215616 (= (++!15889 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)) lt!2554128)))

(declare-fun b!7083350 () Bool)

(assert (=> b!7083350 (= e!4258500 (exprs!7212 ct2!306))))

(declare-fun b!7083352 () Bool)

(declare-fun res!2893753 () Bool)

(assert (=> b!7083352 (=> (not res!2893753) (not e!4258499))))

(declare-fun size!41279 (List!68669) Int)

(assert (=> b!7083352 (= res!2893753 (= (size!41279 lt!2554128) (+ (size!41279 (exprs!7212 lt!2554034)) (size!41279 (exprs!7212 ct2!306)))))))

(assert (= (and d!2215616 c!1322182) b!7083350))

(assert (= (and d!2215616 (not c!1322182)) b!7083351))

(assert (= (and d!2215616 res!2893752) b!7083352))

(assert (= (and b!7083352 res!2893753) b!7083353))

(declare-fun m!7815442 () Bool)

(assert (=> b!7083351 m!7815442))

(declare-fun m!7815444 () Bool)

(assert (=> d!2215616 m!7815444))

(declare-fun m!7815446 () Bool)

(assert (=> d!2215616 m!7815446))

(declare-fun m!7815448 () Bool)

(assert (=> d!2215616 m!7815448))

(declare-fun m!7815450 () Bool)

(assert (=> b!7083352 m!7815450))

(declare-fun m!7815452 () Bool)

(assert (=> b!7083352 m!7815452))

(declare-fun m!7815454 () Bool)

(assert (=> b!7083352 m!7815454))

(assert (=> b!7083210 d!2215616))

(declare-fun d!2215618 () Bool)

(assert (=> d!2215618 (forall!16674 (++!15889 (exprs!7212 lt!2554034) (exprs!7212 ct2!306)) lambda!428656)))

(declare-fun lt!2554131 () Unit!162143)

(declare-fun choose!54571 (List!68669 List!68669 Int) Unit!162143)

(assert (=> d!2215618 (= lt!2554131 (choose!54571 (exprs!7212 lt!2554034) (exprs!7212 ct2!306) lambda!428656))))

(assert (=> d!2215618 (forall!16674 (exprs!7212 lt!2554034) lambda!428656)))

(assert (=> d!2215618 (= (lemmaConcatPreservesForall!1027 (exprs!7212 lt!2554034) (exprs!7212 ct2!306) lambda!428656) lt!2554131)))

(declare-fun bs!1882697 () Bool)

(assert (= bs!1882697 d!2215618))

(assert (=> bs!1882697 m!7815200))

(assert (=> bs!1882697 m!7815200))

(declare-fun m!7815456 () Bool)

(assert (=> bs!1882697 m!7815456))

(declare-fun m!7815458 () Bool)

(assert (=> bs!1882697 m!7815458))

(declare-fun m!7815460 () Bool)

(assert (=> bs!1882697 m!7815460))

(assert (=> b!7083210 d!2215618))

(declare-fun d!2215620 () Bool)

(declare-fun e!4258505 () Bool)

(assert (=> d!2215620 e!4258505))

(declare-fun res!2893758 () Bool)

(assert (=> d!2215620 (=> (not res!2893758) (not e!4258505))))

(declare-fun lt!2554135 () Context!13424)

(declare-fun dynLambda!27947 (Int Context!13424) Context!13424)

(assert (=> d!2215620 (= res!2893758 (= lt!2554037 (dynLambda!27947 lambda!428655 lt!2554135)))))

(declare-fun choose!54572 ((Set Context!13424) Int Context!13424) Context!13424)

(assert (=> d!2215620 (= lt!2554135 (choose!54572 z1!570 lambda!428655 lt!2554037))))

(assert (=> d!2215620 (set.member lt!2554037 (map!16069 z1!570 lambda!428655))))

(assert (=> d!2215620 (= (mapPost2!543 z1!570 lambda!428655 lt!2554037) lt!2554135)))

(declare-fun b!7083361 () Bool)

(assert (=> b!7083361 (= e!4258505 (set.member lt!2554135 z1!570))))

(assert (= (and d!2215620 res!2893758) b!7083361))

(declare-fun b_lambda!270715 () Bool)

(assert (=> (not b_lambda!270715) (not d!2215620)))

(declare-fun m!7815476 () Bool)

(assert (=> d!2215620 m!7815476))

(declare-fun m!7815478 () Bool)

(assert (=> d!2215620 m!7815478))

(declare-fun m!7815480 () Bool)

(assert (=> d!2215620 m!7815480))

(declare-fun m!7815482 () Bool)

(assert (=> d!2215620 m!7815482))

(declare-fun m!7815484 () Bool)

(assert (=> b!7083361 m!7815484))

(assert (=> b!7083210 d!2215620))

(declare-fun condSetEmpty!50632 () Bool)

(assert (=> setNonEmpty!50626 (= condSetEmpty!50632 (= setRest!50626 (as set.empty (Set Context!13424))))))

(declare-fun setRes!50632 () Bool)

(assert (=> setNonEmpty!50626 (= tp!1944093 setRes!50632)))

(declare-fun setIsEmpty!50632 () Bool)

(assert (=> setIsEmpty!50632 setRes!50632))

(declare-fun e!4258508 () Bool)

(declare-fun setNonEmpty!50632 () Bool)

(declare-fun setElem!50632 () Context!13424)

(declare-fun tp!1944111 () Bool)

(assert (=> setNonEmpty!50632 (= setRes!50632 (and tp!1944111 (inv!87150 setElem!50632) e!4258508))))

(declare-fun setRest!50632 () (Set Context!13424))

(assert (=> setNonEmpty!50632 (= setRest!50626 (set.union (set.insert setElem!50632 (as set.empty (Set Context!13424))) setRest!50632))))

(declare-fun b!7083366 () Bool)

(declare-fun tp!1944112 () Bool)

(assert (=> b!7083366 (= e!4258508 tp!1944112)))

(assert (= (and setNonEmpty!50626 condSetEmpty!50632) setIsEmpty!50632))

(assert (= (and setNonEmpty!50626 (not condSetEmpty!50632)) setNonEmpty!50632))

(assert (= setNonEmpty!50632 b!7083366))

(declare-fun m!7815486 () Bool)

(assert (=> setNonEmpty!50632 m!7815486))

(declare-fun b!7083371 () Bool)

(declare-fun e!4258511 () Bool)

(declare-fun tp!1944117 () Bool)

(declare-fun tp!1944118 () Bool)

(assert (=> b!7083371 (= e!4258511 (and tp!1944117 tp!1944118))))

(assert (=> b!7083214 (= tp!1944094 e!4258511)))

(assert (= (and b!7083214 (is-Cons!68545 (exprs!7212 ct2!306))) b!7083371))

(declare-fun b!7083372 () Bool)

(declare-fun e!4258512 () Bool)

(declare-fun tp!1944119 () Bool)

(declare-fun tp!1944120 () Bool)

(assert (=> b!7083372 (= e!4258512 (and tp!1944119 tp!1944120))))

(assert (=> b!7083218 (= tp!1944091 e!4258512)))

(assert (= (and b!7083218 (is-Cons!68545 (exprs!7212 setElem!50626))) b!7083372))

(declare-fun b!7083377 () Bool)

(declare-fun e!4258515 () Bool)

(declare-fun tp!1944123 () Bool)

(assert (=> b!7083377 (= e!4258515 (and tp_is_empty!44657 tp!1944123))))

(assert (=> b!7083216 (= tp!1944092 e!4258515)))

(assert (= (and b!7083216 (is-Cons!68546 (t!382455 s!7408))) b!7083377))

(declare-fun b_lambda!270717 () Bool)

(assert (= b_lambda!270715 (or b!7083210 b_lambda!270717)))

(declare-fun bs!1882698 () Bool)

(declare-fun d!2215624 () Bool)

(assert (= bs!1882698 (and d!2215624 b!7083210)))

(declare-fun lt!2554138 () Unit!162143)

(assert (=> bs!1882698 (= lt!2554138 (lemmaConcatPreservesForall!1027 (exprs!7212 lt!2554135) (exprs!7212 ct2!306) lambda!428656))))

(assert (=> bs!1882698 (= (dynLambda!27947 lambda!428655 lt!2554135) (Context!13425 (++!15889 (exprs!7212 lt!2554135) (exprs!7212 ct2!306))))))

(declare-fun m!7815488 () Bool)

(assert (=> bs!1882698 m!7815488))

(declare-fun m!7815490 () Bool)

(assert (=> bs!1882698 m!7815490))

(assert (=> d!2215620 d!2215624))

(declare-fun b_lambda!270719 () Bool)

(assert (= b_lambda!270713 (or b!7083207 b_lambda!270719)))

(declare-fun bs!1882699 () Bool)

(declare-fun d!2215626 () Bool)

(assert (= bs!1882699 (and d!2215626 b!7083207)))

(assert (=> bs!1882699 (= (dynLambda!27946 lambda!428654 lt!2554111) (nullableContext!127 lt!2554111))))

(declare-fun m!7815492 () Bool)

(assert (=> bs!1882699 m!7815492))

(assert (=> d!2215584 d!2215626))

(push 1)

(assert (not b!7083300))

(assert (not d!2215582))

(assert (not setNonEmpty!50632))

(assert tp_is_empty!44657)

(assert (not b!7083299))

(assert (not d!2215574))

(assert (not d!2215614))

(assert (not b!7083304))

(assert (not b!7083372))

(assert (not b!7083326))

(assert (not d!2215610))

(assert (not b!7083275))

(assert (not d!2215608))

(assert (not d!2215616))

(assert (not d!2215592))

(assert (not b!7083327))

(assert (not d!2215620))

(assert (not b!7083333))

(assert (not d!2215554))

(assert (not b_lambda!270717))

(assert (not d!2215570))

(assert (not b_lambda!270719))

(assert (not d!2215612))

(assert (not b!7083276))

(assert (not d!2215588))

(assert (not d!2215596))

(assert (not d!2215590))

(assert (not bs!1882698))

(assert (not d!2215564))

(assert (not b!7083366))

(assert (not b!7083352))

(assert (not b!7083351))

(assert (not d!2215578))

(assert (not b!7083371))

(assert (not d!2215618))

(assert (not d!2215602))

(assert (not d!2215584))

(assert (not b!7083286))

(assert (not d!2215580))

(assert (not bs!1882699))

(assert (not b!7083377))

(assert (not b!7083287))

(assert (not b!7083324))

(assert (not b!7083274))

(assert (not d!2215604))

(assert (not b!7083325))

(assert (not b!7083303))

(assert (not b!7083332))

(assert (not d!2215560))

(assert (not d!2215550))

(assert (not d!2215556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

