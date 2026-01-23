; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682918 () Bool)

(assert start!682918)

(declare-fun b!7050286 () Bool)

(assert (=> b!7050286 true))

(declare-fun res!2878194 () Bool)

(declare-fun e!4238350 () Bool)

(assert (=> start!682918 (=> (not res!2878194) (not e!4238350))))

(declare-datatypes ((C!35338 0))(
  ( (C!35339 (val!27371 Int)) )
))
(declare-datatypes ((Regex!17534 0))(
  ( (ElementMatch!17534 (c!1313175 C!35338)) (Concat!26379 (regOne!35580 Regex!17534) (regTwo!35580 Regex!17534)) (EmptyExpr!17534) (Star!17534 (reg!17863 Regex!17534)) (EmptyLang!17534) (Union!17534 (regOne!35581 Regex!17534) (regTwo!35581 Regex!17534)) )
))
(declare-datatypes ((List!68128 0))(
  ( (Nil!68004) (Cons!68004 (h!74452 Regex!17534) (t!381907 List!68128)) )
))
(declare-datatypes ((Context!13060 0))(
  ( (Context!13061 (exprs!7030 List!68128)) )
))
(declare-fun lt!2529204 () (Set Context!13060))

(declare-datatypes ((List!68129 0))(
  ( (Nil!68005) (Cons!68005 (h!74453 C!35338) (t!381908 List!68129)) )
))
(declare-fun s!7408 () List!68129)

(declare-fun matchZipper!3074 ((Set Context!13060) List!68129) Bool)

(assert (=> start!682918 (= res!2878194 (matchZipper!3074 lt!2529204 s!7408))))

(declare-fun z1!570 () (Set Context!13060))

(declare-fun ct2!306 () Context!13060)

(declare-fun appendTo!655 ((Set Context!13060) Context!13060) (Set Context!13060))

(assert (=> start!682918 (= lt!2529204 (appendTo!655 z1!570 ct2!306))))

(assert (=> start!682918 e!4238350))

(declare-fun condSetEmpty!49612 () Bool)

(assert (=> start!682918 (= condSetEmpty!49612 (= z1!570 (as set.empty (Set Context!13060))))))

(declare-fun setRes!49612 () Bool)

(assert (=> start!682918 setRes!49612))

(declare-fun e!4238348 () Bool)

(declare-fun inv!86695 (Context!13060) Bool)

(assert (=> start!682918 (and (inv!86695 ct2!306) e!4238348)))

(declare-fun e!4238351 () Bool)

(assert (=> start!682918 e!4238351))

(declare-fun b!7050285 () Bool)

(declare-fun e!4238347 () Bool)

(assert (=> b!7050285 (= e!4238350 e!4238347)))

(declare-fun res!2878193 () Bool)

(assert (=> b!7050285 (=> (not res!2878193) (not e!4238347))))

(declare-fun lt!2529205 () Context!13060)

(declare-fun nullableContext!90 (Context!13060) Bool)

(assert (=> b!7050285 (= res!2878193 (nullableContext!90 lt!2529205))))

(declare-fun lambda!418774 () Int)

(declare-fun getWitness!1576 ((Set Context!13060) Int) Context!13060)

(assert (=> b!7050285 (= lt!2529205 (getWitness!1576 lt!2529204 lambda!418774))))

(declare-fun lt!2529203 () Context!13060)

(declare-fun ++!15621 (List!68128 List!68128) List!68128)

(assert (=> b!7050286 (= e!4238347 (not (= (Context!13061 (++!15621 (exprs!7030 lt!2529203) (exprs!7030 ct2!306))) lt!2529205)))))

(declare-datatypes ((Unit!161744 0))(
  ( (Unit!161745) )
))
(declare-fun lt!2529202 () Unit!161744)

(declare-fun lambda!418776 () Int)

(declare-fun lemmaConcatPreservesForall!849 (List!68128 List!68128 Int) Unit!161744)

(assert (=> b!7050286 (= lt!2529202 (lemmaConcatPreservesForall!849 (exprs!7030 lt!2529203) (exprs!7030 ct2!306) lambda!418776))))

(declare-fun lambda!418775 () Int)

(declare-fun mapPost2!369 ((Set Context!13060) Int Context!13060) Context!13060)

(assert (=> b!7050286 (= lt!2529203 (mapPost2!369 z1!570 lambda!418775 lt!2529205))))

(declare-fun b!7050287 () Bool)

(declare-fun res!2878191 () Bool)

(assert (=> b!7050287 (=> (not res!2878191) (not e!4238350))))

(declare-fun nullableZipper!2627 ((Set Context!13060)) Bool)

(assert (=> b!7050287 (= res!2878191 (nullableZipper!2627 lt!2529204))))

(declare-fun b!7050288 () Bool)

(declare-fun tp!1938854 () Bool)

(assert (=> b!7050288 (= e!4238348 tp!1938854)))

(declare-fun b!7050289 () Bool)

(declare-fun res!2878192 () Bool)

(assert (=> b!7050289 (=> (not res!2878192) (not e!4238350))))

(declare-fun exists!3502 ((Set Context!13060) Int) Bool)

(assert (=> b!7050289 (= res!2878192 (exists!3502 lt!2529204 lambda!418774))))

(declare-fun tp!1938852 () Bool)

(declare-fun e!4238349 () Bool)

(declare-fun setElem!49612 () Context!13060)

(declare-fun setNonEmpty!49612 () Bool)

(assert (=> setNonEmpty!49612 (= setRes!49612 (and tp!1938852 (inv!86695 setElem!49612) e!4238349))))

(declare-fun setRest!49612 () (Set Context!13060))

(assert (=> setNonEmpty!49612 (= z1!570 (set.union (set.insert setElem!49612 (as set.empty (Set Context!13060))) setRest!49612))))

(declare-fun b!7050290 () Bool)

(declare-fun tp_is_empty!44293 () Bool)

(declare-fun tp!1938853 () Bool)

(assert (=> b!7050290 (= e!4238351 (and tp_is_empty!44293 tp!1938853))))

(declare-fun setIsEmpty!49612 () Bool)

(assert (=> setIsEmpty!49612 setRes!49612))

(declare-fun b!7050291 () Bool)

(declare-fun res!2878190 () Bool)

(assert (=> b!7050291 (=> (not res!2878190) (not e!4238350))))

(assert (=> b!7050291 (= res!2878190 (not (is-Cons!68005 s!7408)))))

(declare-fun b!7050292 () Bool)

(declare-fun tp!1938851 () Bool)

(assert (=> b!7050292 (= e!4238349 tp!1938851)))

(assert (= (and start!682918 res!2878194) b!7050291))

(assert (= (and b!7050291 res!2878190) b!7050287))

(assert (= (and b!7050287 res!2878191) b!7050289))

(assert (= (and b!7050289 res!2878192) b!7050285))

(assert (= (and b!7050285 res!2878193) b!7050286))

(assert (= (and start!682918 condSetEmpty!49612) setIsEmpty!49612))

(assert (= (and start!682918 (not condSetEmpty!49612)) setNonEmpty!49612))

(assert (= setNonEmpty!49612 b!7050292))

(assert (= start!682918 b!7050288))

(assert (= (and start!682918 (is-Cons!68005 s!7408)) b!7050290))

(declare-fun m!7765910 () Bool)

(assert (=> setNonEmpty!49612 m!7765910))

(declare-fun m!7765912 () Bool)

(assert (=> b!7050289 m!7765912))

(declare-fun m!7765914 () Bool)

(assert (=> b!7050285 m!7765914))

(declare-fun m!7765916 () Bool)

(assert (=> b!7050285 m!7765916))

(declare-fun m!7765918 () Bool)

(assert (=> b!7050287 m!7765918))

(declare-fun m!7765920 () Bool)

(assert (=> start!682918 m!7765920))

(declare-fun m!7765922 () Bool)

(assert (=> start!682918 m!7765922))

(declare-fun m!7765924 () Bool)

(assert (=> start!682918 m!7765924))

(declare-fun m!7765926 () Bool)

(assert (=> b!7050286 m!7765926))

(declare-fun m!7765928 () Bool)

(assert (=> b!7050286 m!7765928))

(declare-fun m!7765930 () Bool)

(assert (=> b!7050286 m!7765930))

(push 1)

(assert (not b!7050292))

(assert (not b!7050285))

(assert (not b!7050287))

(assert (not start!682918))

(assert (not setNonEmpty!49612))

(assert (not b!7050288))

(assert (not b!7050289))

(assert (not b!7050286))

(assert tp_is_empty!44293)

(assert (not b!7050290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1875707 () Bool)

(declare-fun d!2202437 () Bool)

(assert (= bs!1875707 (and d!2202437 b!7050289)))

(declare-fun lambda!418792 () Int)

(assert (=> bs!1875707 (= lambda!418792 lambda!418774)))

(assert (=> d!2202437 (= (nullableZipper!2627 lt!2529204) (exists!3502 lt!2529204 lambda!418792))))

(declare-fun bs!1875708 () Bool)

(assert (= bs!1875708 d!2202437))

(declare-fun m!7765954 () Bool)

(assert (=> bs!1875708 m!7765954))

(assert (=> b!7050287 d!2202437))

(declare-fun d!2202439 () Bool)

(declare-fun lt!2529222 () Bool)

(declare-datatypes ((List!68132 0))(
  ( (Nil!68008) (Cons!68008 (h!74456 Context!13060) (t!381911 List!68132)) )
))
(declare-fun exists!3504 (List!68132 Int) Bool)

(declare-fun toList!10875 ((Set Context!13060)) List!68132)

(assert (=> d!2202439 (= lt!2529222 (exists!3504 (toList!10875 lt!2529204) lambda!418774))))

(declare-fun choose!53647 ((Set Context!13060) Int) Bool)

(assert (=> d!2202439 (= lt!2529222 (choose!53647 lt!2529204 lambda!418774))))

(assert (=> d!2202439 (= (exists!3502 lt!2529204 lambda!418774) lt!2529222)))

(declare-fun bs!1875709 () Bool)

(assert (= bs!1875709 d!2202439))

(declare-fun m!7765956 () Bool)

(assert (=> bs!1875709 m!7765956))

(assert (=> bs!1875709 m!7765956))

(declare-fun m!7765958 () Bool)

(assert (=> bs!1875709 m!7765958))

(declare-fun m!7765960 () Bool)

(assert (=> bs!1875709 m!7765960))

(assert (=> b!7050289 d!2202439))

(declare-fun bs!1875710 () Bool)

(declare-fun d!2202441 () Bool)

(assert (= bs!1875710 (and d!2202441 b!7050286)))

(declare-fun lambda!418795 () Int)

(assert (=> bs!1875710 (= lambda!418795 lambda!418776)))

(declare-fun forall!16463 (List!68128 Int) Bool)

(assert (=> d!2202441 (= (inv!86695 setElem!49612) (forall!16463 (exprs!7030 setElem!49612) lambda!418795))))

(declare-fun bs!1875711 () Bool)

(assert (= bs!1875711 d!2202441))

(declare-fun m!7765962 () Bool)

(assert (=> bs!1875711 m!7765962))

(assert (=> setNonEmpty!49612 d!2202441))

(declare-fun bs!1875712 () Bool)

(declare-fun d!2202443 () Bool)

(assert (= bs!1875712 (and d!2202443 b!7050286)))

(declare-fun lambda!418798 () Int)

(assert (=> bs!1875712 (not (= lambda!418798 lambda!418776))))

(declare-fun bs!1875713 () Bool)

(assert (= bs!1875713 (and d!2202443 d!2202441)))

(assert (=> bs!1875713 (not (= lambda!418798 lambda!418795))))

(assert (=> d!2202443 (= (nullableContext!90 lt!2529205) (forall!16463 (exprs!7030 lt!2529205) lambda!418798))))

(declare-fun bs!1875714 () Bool)

(assert (= bs!1875714 d!2202443))

(declare-fun m!7765964 () Bool)

(assert (=> bs!1875714 m!7765964))

(assert (=> b!7050285 d!2202443))

(declare-fun d!2202445 () Bool)

(declare-fun e!4238369 () Bool)

(assert (=> d!2202445 e!4238369))

(declare-fun res!2878214 () Bool)

(assert (=> d!2202445 (=> (not res!2878214) (not e!4238369))))

(declare-fun lt!2529225 () Context!13060)

(declare-fun dynLambda!27549 (Int Context!13060) Bool)

(assert (=> d!2202445 (= res!2878214 (dynLambda!27549 lambda!418774 lt!2529225))))

(declare-fun getWitness!1578 (List!68132 Int) Context!13060)

(assert (=> d!2202445 (= lt!2529225 (getWitness!1578 (toList!10875 lt!2529204) lambda!418774))))

(assert (=> d!2202445 (exists!3502 lt!2529204 lambda!418774)))

(assert (=> d!2202445 (= (getWitness!1576 lt!2529204 lambda!418774) lt!2529225)))

(declare-fun b!7050323 () Bool)

(assert (=> b!7050323 (= e!4238369 (set.member lt!2529225 lt!2529204))))

(assert (= (and d!2202445 res!2878214) b!7050323))

(declare-fun b_lambda!268063 () Bool)

(assert (=> (not b_lambda!268063) (not d!2202445)))

(declare-fun m!7765966 () Bool)

(assert (=> d!2202445 m!7765966))

(assert (=> d!2202445 m!7765956))

(assert (=> d!2202445 m!7765956))

(declare-fun m!7765968 () Bool)

(assert (=> d!2202445 m!7765968))

(assert (=> d!2202445 m!7765912))

(declare-fun m!7765970 () Bool)

(assert (=> b!7050323 m!7765970))

(assert (=> b!7050285 d!2202445))

(declare-fun d!2202447 () Bool)

(declare-fun c!1313189 () Bool)

(declare-fun isEmpty!39683 (List!68129) Bool)

(assert (=> d!2202447 (= c!1313189 (isEmpty!39683 s!7408))))

(declare-fun e!4238372 () Bool)

(assert (=> d!2202447 (= (matchZipper!3074 lt!2529204 s!7408) e!4238372)))

(declare-fun b!7050328 () Bool)

(assert (=> b!7050328 (= e!4238372 (nullableZipper!2627 lt!2529204))))

(declare-fun b!7050329 () Bool)

(declare-fun derivationStepZipper!2988 ((Set Context!13060) C!35338) (Set Context!13060))

(declare-fun head!14324 (List!68129) C!35338)

(declare-fun tail!13657 (List!68129) List!68129)

(assert (=> b!7050329 (= e!4238372 (matchZipper!3074 (derivationStepZipper!2988 lt!2529204 (head!14324 s!7408)) (tail!13657 s!7408)))))

(assert (= (and d!2202447 c!1313189) b!7050328))

(assert (= (and d!2202447 (not c!1313189)) b!7050329))

(declare-fun m!7765972 () Bool)

(assert (=> d!2202447 m!7765972))

(assert (=> b!7050328 m!7765918))

(declare-fun m!7765974 () Bool)

(assert (=> b!7050329 m!7765974))

(assert (=> b!7050329 m!7765974))

(declare-fun m!7765976 () Bool)

(assert (=> b!7050329 m!7765976))

(declare-fun m!7765978 () Bool)

(assert (=> b!7050329 m!7765978))

(assert (=> b!7050329 m!7765976))

(assert (=> b!7050329 m!7765978))

(declare-fun m!7765980 () Bool)

(assert (=> b!7050329 m!7765980))

(assert (=> start!682918 d!2202447))

(declare-fun bs!1875717 () Bool)

(declare-fun d!2202451 () Bool)

(assert (= bs!1875717 (and d!2202451 b!7050286)))

(declare-fun lambda!418806 () Int)

(assert (=> bs!1875717 (= lambda!418806 lambda!418775)))

(assert (=> d!2202451 true))

(declare-fun map!15847 ((Set Context!13060) Int) (Set Context!13060))

(assert (=> d!2202451 (= (appendTo!655 z1!570 ct2!306) (map!15847 z1!570 lambda!418806))))

(declare-fun bs!1875718 () Bool)

(assert (= bs!1875718 d!2202451))

(declare-fun m!7765984 () Bool)

(assert (=> bs!1875718 m!7765984))

(assert (=> start!682918 d!2202451))

(declare-fun bs!1875719 () Bool)

(declare-fun d!2202455 () Bool)

(assert (= bs!1875719 (and d!2202455 b!7050286)))

(declare-fun lambda!418807 () Int)

(assert (=> bs!1875719 (= lambda!418807 lambda!418776)))

(declare-fun bs!1875720 () Bool)

(assert (= bs!1875720 (and d!2202455 d!2202441)))

(assert (=> bs!1875720 (= lambda!418807 lambda!418795)))

(declare-fun bs!1875721 () Bool)

(assert (= bs!1875721 (and d!2202455 d!2202443)))

(assert (=> bs!1875721 (not (= lambda!418807 lambda!418798))))

(assert (=> d!2202455 (= (inv!86695 ct2!306) (forall!16463 (exprs!7030 ct2!306) lambda!418807))))

(declare-fun bs!1875722 () Bool)

(assert (= bs!1875722 d!2202455))

(declare-fun m!7765986 () Bool)

(assert (=> bs!1875722 m!7765986))

(assert (=> start!682918 d!2202455))

(declare-fun d!2202457 () Bool)

(declare-fun e!4238379 () Bool)

(assert (=> d!2202457 e!4238379))

(declare-fun res!2878222 () Bool)

(assert (=> d!2202457 (=> (not res!2878222) (not e!4238379))))

(declare-fun lt!2529232 () List!68128)

(declare-fun content!13636 (List!68128) (Set Regex!17534))

(assert (=> d!2202457 (= res!2878222 (= (content!13636 lt!2529232) (set.union (content!13636 (exprs!7030 lt!2529203)) (content!13636 (exprs!7030 ct2!306)))))))

(declare-fun e!4238380 () List!68128)

(assert (=> d!2202457 (= lt!2529232 e!4238380)))

(declare-fun c!1313193 () Bool)

(assert (=> d!2202457 (= c!1313193 (is-Nil!68004 (exprs!7030 lt!2529203)))))

(assert (=> d!2202457 (= (++!15621 (exprs!7030 lt!2529203) (exprs!7030 ct2!306)) lt!2529232)))

(declare-fun b!7050342 () Bool)

(declare-fun res!2878221 () Bool)

(assert (=> b!7050342 (=> (not res!2878221) (not e!4238379))))

(declare-fun size!41127 (List!68128) Int)

(assert (=> b!7050342 (= res!2878221 (= (size!41127 lt!2529232) (+ (size!41127 (exprs!7030 lt!2529203)) (size!41127 (exprs!7030 ct2!306)))))))

(declare-fun b!7050340 () Bool)

(assert (=> b!7050340 (= e!4238380 (exprs!7030 ct2!306))))

(declare-fun b!7050343 () Bool)

(assert (=> b!7050343 (= e!4238379 (or (not (= (exprs!7030 ct2!306) Nil!68004)) (= lt!2529232 (exprs!7030 lt!2529203))))))

(declare-fun b!7050341 () Bool)

(assert (=> b!7050341 (= e!4238380 (Cons!68004 (h!74452 (exprs!7030 lt!2529203)) (++!15621 (t!381907 (exprs!7030 lt!2529203)) (exprs!7030 ct2!306))))))

(assert (= (and d!2202457 c!1313193) b!7050340))

(assert (= (and d!2202457 (not c!1313193)) b!7050341))

(assert (= (and d!2202457 res!2878222) b!7050342))

(assert (= (and b!7050342 res!2878221) b!7050343))

(declare-fun m!7765988 () Bool)

(assert (=> d!2202457 m!7765988))

(declare-fun m!7765990 () Bool)

(assert (=> d!2202457 m!7765990))

(declare-fun m!7765992 () Bool)

(assert (=> d!2202457 m!7765992))

(declare-fun m!7765994 () Bool)

(assert (=> b!7050342 m!7765994))

(declare-fun m!7765996 () Bool)

(assert (=> b!7050342 m!7765996))

(declare-fun m!7765998 () Bool)

(assert (=> b!7050342 m!7765998))

(declare-fun m!7766000 () Bool)

(assert (=> b!7050341 m!7766000))

(assert (=> b!7050286 d!2202457))

(declare-fun d!2202459 () Bool)

(assert (=> d!2202459 (forall!16463 (++!15621 (exprs!7030 lt!2529203) (exprs!7030 ct2!306)) lambda!418776)))

(declare-fun lt!2529236 () Unit!161744)

(declare-fun choose!53648 (List!68128 List!68128 Int) Unit!161744)

(assert (=> d!2202459 (= lt!2529236 (choose!53648 (exprs!7030 lt!2529203) (exprs!7030 ct2!306) lambda!418776))))

(assert (=> d!2202459 (forall!16463 (exprs!7030 lt!2529203) lambda!418776)))

(assert (=> d!2202459 (= (lemmaConcatPreservesForall!849 (exprs!7030 lt!2529203) (exprs!7030 ct2!306) lambda!418776) lt!2529236)))

(declare-fun bs!1875723 () Bool)

(assert (= bs!1875723 d!2202459))

(assert (=> bs!1875723 m!7765926))

(assert (=> bs!1875723 m!7765926))

(declare-fun m!7766010 () Bool)

(assert (=> bs!1875723 m!7766010))

(declare-fun m!7766012 () Bool)

(assert (=> bs!1875723 m!7766012))

(declare-fun m!7766014 () Bool)

(assert (=> bs!1875723 m!7766014))

(assert (=> b!7050286 d!2202459))

(declare-fun d!2202463 () Bool)

(declare-fun e!4238384 () Bool)

(assert (=> d!2202463 e!4238384))

(declare-fun res!2878226 () Bool)

(assert (=> d!2202463 (=> (not res!2878226) (not e!4238384))))

(declare-fun lt!2529239 () Context!13060)

(declare-fun dynLambda!27550 (Int Context!13060) Context!13060)

(assert (=> d!2202463 (= res!2878226 (= lt!2529205 (dynLambda!27550 lambda!418775 lt!2529239)))))

(declare-fun choose!53649 ((Set Context!13060) Int Context!13060) Context!13060)

(assert (=> d!2202463 (= lt!2529239 (choose!53649 z1!570 lambda!418775 lt!2529205))))

(assert (=> d!2202463 (set.member lt!2529205 (map!15847 z1!570 lambda!418775))))

(assert (=> d!2202463 (= (mapPost2!369 z1!570 lambda!418775 lt!2529205) lt!2529239)))

(declare-fun b!7050348 () Bool)

(assert (=> b!7050348 (= e!4238384 (set.member lt!2529239 z1!570))))

(assert (= (and d!2202463 res!2878226) b!7050348))

(declare-fun b_lambda!268067 () Bool)

(assert (=> (not b_lambda!268067) (not d!2202463)))

(declare-fun m!7766018 () Bool)

(assert (=> d!2202463 m!7766018))

(declare-fun m!7766020 () Bool)

(assert (=> d!2202463 m!7766020))

(declare-fun m!7766022 () Bool)

(assert (=> d!2202463 m!7766022))

(declare-fun m!7766024 () Bool)

(assert (=> d!2202463 m!7766024))

(declare-fun m!7766026 () Bool)

(assert (=> b!7050348 m!7766026))

(assert (=> b!7050286 d!2202463))

(declare-fun b!7050353 () Bool)

(declare-fun e!4238387 () Bool)

(declare-fun tp!1938871 () Bool)

(declare-fun tp!1938872 () Bool)

(assert (=> b!7050353 (= e!4238387 (and tp!1938871 tp!1938872))))

(assert (=> b!7050288 (= tp!1938854 e!4238387)))

(assert (= (and b!7050288 (is-Cons!68004 (exprs!7030 ct2!306))) b!7050353))

(declare-fun b!7050354 () Bool)

(declare-fun e!4238388 () Bool)

(declare-fun tp!1938873 () Bool)

(declare-fun tp!1938874 () Bool)

(assert (=> b!7050354 (= e!4238388 (and tp!1938873 tp!1938874))))

(assert (=> b!7050292 (= tp!1938851 e!4238388)))

(assert (= (and b!7050292 (is-Cons!68004 (exprs!7030 setElem!49612))) b!7050354))

(declare-fun condSetEmpty!49618 () Bool)

(assert (=> setNonEmpty!49612 (= condSetEmpty!49618 (= setRest!49612 (as set.empty (Set Context!13060))))))

(declare-fun setRes!49618 () Bool)

(assert (=> setNonEmpty!49612 (= tp!1938852 setRes!49618)))

(declare-fun setIsEmpty!49618 () Bool)

(assert (=> setIsEmpty!49618 setRes!49618))

(declare-fun tp!1938880 () Bool)

(declare-fun setElem!49618 () Context!13060)

(declare-fun setNonEmpty!49618 () Bool)

(declare-fun e!4238391 () Bool)

(assert (=> setNonEmpty!49618 (= setRes!49618 (and tp!1938880 (inv!86695 setElem!49618) e!4238391))))

(declare-fun setRest!49618 () (Set Context!13060))

(assert (=> setNonEmpty!49618 (= setRest!49612 (set.union (set.insert setElem!49618 (as set.empty (Set Context!13060))) setRest!49618))))

(declare-fun b!7050359 () Bool)

(declare-fun tp!1938879 () Bool)

(assert (=> b!7050359 (= e!4238391 tp!1938879)))

(assert (= (and setNonEmpty!49612 condSetEmpty!49618) setIsEmpty!49618))

(assert (= (and setNonEmpty!49612 (not condSetEmpty!49618)) setNonEmpty!49618))

(assert (= setNonEmpty!49618 b!7050359))

(declare-fun m!7766028 () Bool)

(assert (=> setNonEmpty!49618 m!7766028))

(declare-fun b!7050364 () Bool)

(declare-fun e!4238394 () Bool)

(declare-fun tp!1938883 () Bool)

(assert (=> b!7050364 (= e!4238394 (and tp_is_empty!44293 tp!1938883))))

(assert (=> b!7050290 (= tp!1938853 e!4238394)))

(assert (= (and b!7050290 (is-Cons!68005 (t!381908 s!7408))) b!7050364))

(declare-fun b_lambda!268069 () Bool)

(assert (= b_lambda!268067 (or b!7050286 b_lambda!268069)))

(declare-fun bs!1875727 () Bool)

(declare-fun d!2202467 () Bool)

(assert (= bs!1875727 (and d!2202467 b!7050286)))

(declare-fun lt!2529240 () Unit!161744)

(assert (=> bs!1875727 (= lt!2529240 (lemmaConcatPreservesForall!849 (exprs!7030 lt!2529239) (exprs!7030 ct2!306) lambda!418776))))

(assert (=> bs!1875727 (= (dynLambda!27550 lambda!418775 lt!2529239) (Context!13061 (++!15621 (exprs!7030 lt!2529239) (exprs!7030 ct2!306))))))

(declare-fun m!7766030 () Bool)

(assert (=> bs!1875727 m!7766030))

(declare-fun m!7766032 () Bool)

(assert (=> bs!1875727 m!7766032))

(assert (=> d!2202463 d!2202467))

(declare-fun b_lambda!268071 () Bool)

(assert (= b_lambda!268063 (or b!7050289 b_lambda!268071)))

(declare-fun bs!1875728 () Bool)

(declare-fun d!2202469 () Bool)

(assert (= bs!1875728 (and d!2202469 b!7050289)))

(assert (=> bs!1875728 (= (dynLambda!27549 lambda!418774 lt!2529225) (nullableContext!90 lt!2529225))))

(declare-fun m!7766034 () Bool)

(assert (=> bs!1875728 m!7766034))

(assert (=> d!2202445 d!2202469))

(push 1)

(assert (not b!7050353))

(assert (not b!7050342))

(assert (not b_lambda!268069))

(assert (not d!2202443))

(assert (not d!2202459))

(assert (not d!2202445))

(assert (not d!2202441))

(assert (not d!2202455))

(assert (not d!2202457))

(assert (not setNonEmpty!49618))

(assert (not d!2202439))

(assert (not b!7050354))

(assert (not d!2202447))

(assert (not b!7050359))

(assert (not bs!1875728))

(assert tp_is_empty!44293)

(assert (not b_lambda!268071))

(assert (not b!7050328))

(assert (not bs!1875727))

(assert (not d!2202451))

(assert (not b!7050329))

(assert (not d!2202463))

(assert (not d!2202437))

(assert (not b!7050364))

(assert (not b!7050341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

