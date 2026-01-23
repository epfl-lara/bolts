; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281018 () Bool)

(assert start!281018)

(declare-fun b!2879682 () Bool)

(declare-fun e!1821992 () Bool)

(declare-fun tp!924057 () Bool)

(assert (=> b!2879682 (= e!1821992 tp!924057)))

(declare-fun b!2879683 () Bool)

(declare-fun e!1821988 () Bool)

(declare-fun e!1821991 () Bool)

(assert (=> b!2879683 (= e!1821988 (not e!1821991))))

(declare-fun res!1193565 () Bool)

(assert (=> b!2879683 (=> res!1193565 e!1821991)))

(declare-datatypes ((C!17678 0))(
  ( (C!17679 (val!10873 Int)) )
))
(declare-datatypes ((Regex!8748 0))(
  ( (ElementMatch!8748 (c!467357 C!17678)) (Concat!14069 (regOne!18008 Regex!8748) (regTwo!18008 Regex!8748)) (EmptyExpr!8748) (Star!8748 (reg!9077 Regex!8748)) (EmptyLang!8748) (Union!8748 (regOne!18009 Regex!8748) (regTwo!18009 Regex!8748)) )
))
(declare-datatypes ((List!34535 0))(
  ( (Nil!34411) (Cons!34411 (h!39831 Regex!8748) (t!233578 List!34535)) )
))
(declare-datatypes ((Context!5416 0))(
  ( (Context!5417 (exprs!3208 List!34535)) )
))
(declare-fun c!7184 () Context!5416)

(declare-datatypes ((List!34536 0))(
  ( (Nil!34412) (Cons!34412 (h!39832 C!17678) (t!233579 List!34536)) )
))
(declare-datatypes ((Option!6423 0))(
  ( (None!6422) (Some!6422 (v!34548 List!34536)) )
))
(declare-fun lt!1019386 () Option!6423)

(declare-fun matchR!3748 (Regex!8748 List!34536) Bool)

(assert (=> b!2879683 (= res!1193565 (not (matchR!3748 (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386))))))

(declare-fun lt!1019388 () (Set Context!5416))

(declare-fun lt!1019383 () Option!6423)

(declare-fun matchZipper!490 ((Set Context!5416) List!34536) Bool)

(declare-fun get!10349 (Option!6423) List!34536)

(assert (=> b!2879683 (matchZipper!490 lt!1019388 (get!10349 lt!1019383))))

(declare-fun lt!1019384 () Context!5416)

(assert (=> b!2879683 (= lt!1019388 (set.insert lt!1019384 (as set.empty (Set Context!5416))))))

(declare-datatypes ((Unit!47997 0))(
  ( (Unit!47998) )
))
(declare-fun lt!1019380 () Unit!47997)

(declare-fun lemmaGetWitnessMatchesContext!47 (Context!5416) Unit!47997)

(assert (=> b!2879683 (= lt!1019380 (lemmaGetWitnessMatchesContext!47 lt!1019384))))

(assert (=> b!2879683 (matchR!3748 (h!39831 (exprs!3208 c!7184)) (get!10349 lt!1019386))))

(declare-fun lt!1019381 () Unit!47997)

(declare-fun lemmaGetWitnessMatches!55 (Regex!8748) Unit!47997)

(assert (=> b!2879683 (= lt!1019381 (lemmaGetWitnessMatches!55 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2879684 () Bool)

(declare-fun e!1821990 () Bool)

(assert (=> b!2879684 (= e!1821990 e!1821988)))

(declare-fun res!1193567 () Bool)

(assert (=> b!2879684 (=> (not res!1193567) (not e!1821988))))

(assert (=> b!2879684 (= res!1193567 (is-Some!6422 lt!1019383))))

(declare-fun getLanguageWitness!447 (Context!5416) Option!6423)

(assert (=> b!2879684 (= lt!1019383 (getLanguageWitness!447 lt!1019384))))

(assert (=> b!2879684 (= lt!1019384 (Context!5417 (t!233578 (exprs!3208 c!7184))))))

(declare-fun b!2879686 () Bool)

(declare-fun e!1821993 () Bool)

(assert (=> b!2879686 (= e!1821993 e!1821990)))

(declare-fun res!1193564 () Bool)

(assert (=> b!2879686 (=> (not res!1193564) (not e!1821990))))

(assert (=> b!2879686 (= res!1193564 (is-Some!6422 lt!1019386))))

(declare-fun getLanguageWitness!448 (Regex!8748) Option!6423)

(assert (=> b!2879686 (= lt!1019386 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2879687 () Bool)

(declare-fun e!1821989 () Bool)

(assert (=> b!2879687 (= e!1821991 e!1821989)))

(declare-fun res!1193568 () Bool)

(assert (=> b!2879687 (=> res!1193568 e!1821989)))

(assert (=> b!2879687 (= res!1193568 (not (matchZipper!490 lt!1019388 (v!34548 lt!1019383))))))

(declare-fun lt!1019387 () (Set Context!5416))

(assert (=> b!2879687 (matchZipper!490 lt!1019387 (v!34548 lt!1019386))))

(declare-fun lt!1019382 () Unit!47997)

(declare-fun lt!1019385 () Context!5416)

(declare-datatypes ((List!34537 0))(
  ( (Nil!34413) (Cons!34413 (h!39833 Context!5416) (t!233580 List!34537)) )
))
(declare-fun theoremZipperRegexEquiv!122 ((Set Context!5416) List!34537 Regex!8748 List!34536) Unit!47997)

(assert (=> b!2879687 (= lt!1019382 (theoremZipperRegexEquiv!122 lt!1019387 (Cons!34413 lt!1019385 Nil!34413) (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)))))

(assert (=> b!2879687 (= lt!1019387 (set.insert lt!1019385 (as set.empty (Set Context!5416))))))

(assert (=> b!2879687 (= lt!1019385 (Context!5417 (Cons!34411 (h!39831 (exprs!3208 c!7184)) Nil!34411)))))

(declare-fun b!2879688 () Bool)

(declare-fun res!1193566 () Bool)

(assert (=> b!2879688 (=> (not res!1193566) (not e!1821993))))

(assert (=> b!2879688 (= res!1193566 (is-Cons!34411 (exprs!3208 c!7184)))))

(declare-fun b!2879685 () Bool)

(declare-fun inv!46458 (Context!5416) Bool)

(assert (=> b!2879685 (= e!1821989 (inv!46458 lt!1019384))))

(declare-fun res!1193569 () Bool)

(assert (=> start!281018 (=> (not res!1193569) (not e!1821993))))

(declare-fun lostCause!840 (Context!5416) Bool)

(assert (=> start!281018 (= res!1193569 (not (lostCause!840 c!7184)))))

(assert (=> start!281018 e!1821993))

(assert (=> start!281018 (and (inv!46458 c!7184) e!1821992)))

(assert (= (and start!281018 res!1193569) b!2879688))

(assert (= (and b!2879688 res!1193566) b!2879686))

(assert (= (and b!2879686 res!1193564) b!2879684))

(assert (= (and b!2879684 res!1193567) b!2879683))

(assert (= (and b!2879683 (not res!1193565)) b!2879687))

(assert (= (and b!2879687 (not res!1193568)) b!2879685))

(assert (= start!281018 b!2879682))

(declare-fun m!3296963 () Bool)

(assert (=> b!2879684 m!3296963))

(declare-fun m!3296965 () Bool)

(assert (=> b!2879687 m!3296965))

(declare-fun m!3296967 () Bool)

(assert (=> b!2879687 m!3296967))

(declare-fun m!3296969 () Bool)

(assert (=> b!2879687 m!3296969))

(declare-fun m!3296971 () Bool)

(assert (=> b!2879687 m!3296971))

(declare-fun m!3296973 () Bool)

(assert (=> b!2879683 m!3296973))

(declare-fun m!3296975 () Bool)

(assert (=> b!2879683 m!3296975))

(declare-fun m!3296977 () Bool)

(assert (=> b!2879683 m!3296977))

(declare-fun m!3296979 () Bool)

(assert (=> b!2879683 m!3296979))

(declare-fun m!3296981 () Bool)

(assert (=> b!2879683 m!3296981))

(assert (=> b!2879683 m!3296979))

(declare-fun m!3296983 () Bool)

(assert (=> b!2879683 m!3296983))

(declare-fun m!3296985 () Bool)

(assert (=> b!2879683 m!3296985))

(assert (=> b!2879683 m!3296983))

(declare-fun m!3296987 () Bool)

(assert (=> b!2879683 m!3296987))

(declare-fun m!3296989 () Bool)

(assert (=> start!281018 m!3296989))

(declare-fun m!3296991 () Bool)

(assert (=> start!281018 m!3296991))

(declare-fun m!3296993 () Bool)

(assert (=> b!2879685 m!3296993))

(declare-fun m!3296995 () Bool)

(assert (=> b!2879686 m!3296995))

(push 1)

(assert (not start!281018))

(assert (not b!2879686))

(assert (not b!2879685))

(assert (not b!2879687))

(assert (not b!2879684))

(assert (not b!2879682))

(assert (not b!2879683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!832766 () Bool)

(declare-fun lambda!107449 () Int)

(declare-fun exists!1187 (List!34535 Int) Bool)

(assert (=> d!832766 (= (lostCause!840 c!7184) (exists!1187 (exprs!3208 c!7184) lambda!107449))))

(declare-fun bs!523267 () Bool)

(assert (= bs!523267 d!832766))

(declare-fun m!3297059 () Bool)

(assert (=> bs!523267 m!3297059))

(assert (=> start!281018 d!832766))

(declare-fun bs!523268 () Bool)

(declare-fun d!832776 () Bool)

(assert (= bs!523268 (and d!832776 d!832766)))

(declare-fun lambda!107452 () Int)

(assert (=> bs!523268 (not (= lambda!107452 lambda!107449))))

(declare-fun forall!7092 (List!34535 Int) Bool)

(assert (=> d!832776 (= (inv!46458 c!7184) (forall!7092 (exprs!3208 c!7184) lambda!107452))))

(declare-fun bs!523269 () Bool)

(assert (= bs!523269 d!832776))

(declare-fun m!3297061 () Bool)

(assert (=> bs!523269 m!3297061))

(assert (=> start!281018 d!832776))

(declare-fun bm!186650 () Bool)

(declare-fun call!186655 () Option!6423)

(declare-fun c!467389 () Bool)

(assert (=> bm!186650 (= call!186655 (getLanguageWitness!448 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun bm!186651 () Bool)

(declare-fun call!186656 () Option!6423)

(assert (=> bm!186651 (= call!186656 (getLanguageWitness!448 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2879762 () Bool)

(declare-fun e!1822043 () Option!6423)

(assert (=> b!2879762 (= e!1822043 call!186656)))

(declare-fun b!2879763 () Bool)

(declare-fun e!1822041 () Option!6423)

(assert (=> b!2879763 (= e!1822041 None!6422)))

(declare-fun b!2879765 () Bool)

(declare-fun e!1822042 () Option!6423)

(assert (=> b!2879765 (= e!1822042 (Some!6422 (Cons!34412 (c!467357 (h!39831 (exprs!3208 c!7184))) Nil!34412)))))

(declare-fun b!2879766 () Bool)

(declare-fun e!1822044 () Option!6423)

(assert (=> b!2879766 (= e!1822044 e!1822043)))

(declare-fun lt!1019433 () Option!6423)

(assert (=> b!2879766 (= lt!1019433 call!186655)))

(declare-fun c!467393 () Bool)

(assert (=> b!2879766 (= c!467393 (is-Some!6422 lt!1019433))))

(declare-fun b!2879767 () Bool)

(declare-fun e!1822040 () Option!6423)

(assert (=> b!2879767 (= e!1822042 e!1822040)))

(declare-fun c!467391 () Bool)

(assert (=> b!2879767 (= c!467391 (is-Star!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2879768 () Bool)

(declare-fun e!1822045 () Option!6423)

(assert (=> b!2879768 (= e!1822045 (Some!6422 Nil!34412))))

(declare-fun b!2879769 () Bool)

(assert (=> b!2879769 (= e!1822043 lt!1019433)))

(declare-fun b!2879770 () Bool)

(declare-fun c!467392 () Bool)

(assert (=> b!2879770 (= c!467392 (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> b!2879770 (= e!1822041 e!1822042)))

(declare-fun b!2879771 () Bool)

(declare-fun e!1822039 () Option!6423)

(assert (=> b!2879771 (= e!1822039 None!6422)))

(declare-fun b!2879772 () Bool)

(assert (=> b!2879772 (= e!1822040 (Some!6422 Nil!34412))))

(declare-fun b!2879773 () Bool)

(assert (=> b!2879773 (= e!1822045 e!1822041)))

(declare-fun c!467388 () Bool)

(assert (=> b!2879773 (= c!467388 (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun d!832778 () Bool)

(declare-fun c!467387 () Bool)

(assert (=> d!832778 (= c!467387 (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> d!832778 (= (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))) e!1822045)))

(declare-fun b!2879764 () Bool)

(declare-fun c!467390 () Bool)

(declare-fun lt!1019432 () Option!6423)

(assert (=> b!2879764 (= c!467390 (is-Some!6422 lt!1019432))))

(assert (=> b!2879764 (= lt!1019432 call!186656)))

(declare-fun e!1822038 () Option!6423)

(assert (=> b!2879764 (= e!1822038 e!1822039)))

(declare-fun b!2879774 () Bool)

(declare-fun lt!1019431 () Option!6423)

(declare-fun ++!8184 (List!34536 List!34536) List!34536)

(assert (=> b!2879774 (= e!1822039 (Some!6422 (++!8184 (v!34548 lt!1019431) (v!34548 lt!1019432))))))

(declare-fun b!2879775 () Bool)

(assert (=> b!2879775 (= c!467389 (is-Union!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> b!2879775 (= e!1822040 e!1822044)))

(declare-fun b!2879776 () Bool)

(assert (=> b!2879776 (= e!1822038 None!6422)))

(declare-fun b!2879777 () Bool)

(assert (=> b!2879777 (= e!1822044 e!1822038)))

(assert (=> b!2879777 (= lt!1019431 call!186655)))

(declare-fun c!467386 () Bool)

(assert (=> b!2879777 (= c!467386 (is-Some!6422 lt!1019431))))

(assert (= (and d!832778 c!467387) b!2879768))

(assert (= (and d!832778 (not c!467387)) b!2879773))

(assert (= (and b!2879773 c!467388) b!2879763))

(assert (= (and b!2879773 (not c!467388)) b!2879770))

(assert (= (and b!2879770 c!467392) b!2879765))

(assert (= (and b!2879770 (not c!467392)) b!2879767))

(assert (= (and b!2879767 c!467391) b!2879772))

(assert (= (and b!2879767 (not c!467391)) b!2879775))

(assert (= (and b!2879775 c!467389) b!2879766))

(assert (= (and b!2879775 (not c!467389)) b!2879777))

(assert (= (and b!2879766 c!467393) b!2879769))

(assert (= (and b!2879766 (not c!467393)) b!2879762))

(assert (= (and b!2879777 c!467386) b!2879764))

(assert (= (and b!2879777 (not c!467386)) b!2879776))

(assert (= (and b!2879764 c!467390) b!2879774))

(assert (= (and b!2879764 (not c!467390)) b!2879771))

(assert (= (or b!2879762 b!2879764) bm!186651))

(assert (= (or b!2879766 b!2879777) bm!186650))

(declare-fun m!3297063 () Bool)

(assert (=> bm!186650 m!3297063))

(declare-fun m!3297065 () Bool)

(assert (=> bm!186651 m!3297065))

(declare-fun m!3297067 () Bool)

(assert (=> b!2879774 m!3297067))

(assert (=> b!2879686 d!832778))

(declare-fun bs!523270 () Bool)

(declare-fun d!832780 () Bool)

(assert (= bs!523270 (and d!832780 d!832766)))

(declare-fun lambda!107453 () Int)

(assert (=> bs!523270 (not (= lambda!107453 lambda!107449))))

(declare-fun bs!523271 () Bool)

(assert (= bs!523271 (and d!832780 d!832776)))

(assert (=> bs!523271 (= lambda!107453 lambda!107452)))

(assert (=> d!832780 (= (inv!46458 lt!1019384) (forall!7092 (exprs!3208 lt!1019384) lambda!107453))))

(declare-fun bs!523272 () Bool)

(assert (= bs!523272 d!832780))

(declare-fun m!3297069 () Bool)

(assert (=> bs!523272 m!3297069))

(assert (=> b!2879685 d!832780))

(declare-fun bs!523273 () Bool)

(declare-fun d!832782 () Bool)

(assert (= bs!523273 (and d!832782 d!832766)))

(declare-fun lambda!107456 () Int)

(assert (=> bs!523273 (= lambda!107456 lambda!107449)))

(declare-fun bs!523274 () Bool)

(assert (= bs!523274 (and d!832782 d!832776)))

(assert (=> bs!523274 (not (= lambda!107456 lambda!107452))))

(declare-fun bs!523275 () Bool)

(assert (= bs!523275 (and d!832782 d!832780)))

(assert (=> bs!523275 (not (= lambda!107456 lambda!107453))))

(declare-fun b!2879791 () Bool)

(declare-fun e!1822053 () Option!6423)

(assert (=> b!2879791 (= e!1822053 None!6422)))

(declare-fun b!2879792 () Bool)

(declare-fun c!467401 () Bool)

(declare-fun lt!1019441 () Option!6423)

(assert (=> b!2879792 (= c!467401 (is-Some!6422 lt!1019441))))

(assert (=> b!2879792 (= lt!1019441 (getLanguageWitness!447 (Context!5417 (t!233578 (exprs!3208 lt!1019384)))))))

(declare-fun e!1822054 () Option!6423)

(assert (=> b!2879792 (= e!1822054 e!1822053)))

(declare-fun b!2879793 () Bool)

(declare-fun e!1822052 () Option!6423)

(assert (=> b!2879793 (= e!1822052 (Some!6422 Nil!34412))))

(declare-fun b!2879794 () Bool)

(declare-fun lt!1019440 () Option!6423)

(assert (=> b!2879794 (= e!1822053 (Some!6422 (++!8184 (v!34548 lt!1019440) (v!34548 lt!1019441))))))

(declare-fun b!2879795 () Bool)

(assert (=> b!2879795 (= e!1822054 None!6422)))

(declare-fun b!2879790 () Bool)

(assert (=> b!2879790 (= e!1822052 e!1822054)))

(assert (=> b!2879790 (= lt!1019440 (getLanguageWitness!448 (h!39831 (exprs!3208 lt!1019384))))))

(declare-fun c!467402 () Bool)

(assert (=> b!2879790 (= c!467402 (is-Some!6422 lt!1019440))))

(declare-fun lt!1019442 () Option!6423)

(declare-fun isEmpty!18739 (Option!6423) Bool)

(assert (=> d!832782 (= (isEmpty!18739 lt!1019442) (exists!1187 (exprs!3208 lt!1019384) lambda!107456))))

(assert (=> d!832782 (= lt!1019442 e!1822052)))

(declare-fun c!467403 () Bool)

(assert (=> d!832782 (= c!467403 (is-Cons!34411 (exprs!3208 lt!1019384)))))

(assert (=> d!832782 (= (getLanguageWitness!447 lt!1019384) lt!1019442)))

(assert (= (and d!832782 c!467403) b!2879790))

(assert (= (and d!832782 (not c!467403)) b!2879793))

(assert (= (and b!2879790 c!467402) b!2879792))

(assert (= (and b!2879790 (not c!467402)) b!2879795))

(assert (= (and b!2879792 c!467401) b!2879794))

(assert (= (and b!2879792 (not c!467401)) b!2879791))

(declare-fun m!3297071 () Bool)

(assert (=> b!2879792 m!3297071))

(declare-fun m!3297073 () Bool)

(assert (=> b!2879794 m!3297073))

(declare-fun m!3297075 () Bool)

(assert (=> b!2879790 m!3297075))

(declare-fun m!3297077 () Bool)

(assert (=> d!832782 m!3297077))

(declare-fun m!3297079 () Bool)

(assert (=> d!832782 m!3297079))

(assert (=> b!2879684 d!832782))

(declare-fun b!2879824 () Bool)

(declare-fun res!1193608 () Bool)

(declare-fun e!1822072 () Bool)

(assert (=> b!2879824 (=> res!1193608 e!1822072)))

(declare-fun isEmpty!18740 (List!34536) Bool)

(declare-fun tail!4580 (List!34536) List!34536)

(assert (=> b!2879824 (= res!1193608 (not (isEmpty!18740 (tail!4580 (get!10349 lt!1019386)))))))

(declare-fun b!2879825 () Bool)

(declare-fun e!1822074 () Bool)

(declare-fun lt!1019445 () Bool)

(assert (=> b!2879825 (= e!1822074 (not lt!1019445))))

(declare-fun b!2879826 () Bool)

(declare-fun res!1193605 () Bool)

(declare-fun e!1822069 () Bool)

(assert (=> b!2879826 (=> (not res!1193605) (not e!1822069))))

(declare-fun call!186659 () Bool)

(assert (=> b!2879826 (= res!1193605 (not call!186659))))

(declare-fun b!2879827 () Bool)

(declare-fun e!1822073 () Bool)

(declare-fun e!1822075 () Bool)

(assert (=> b!2879827 (= e!1822073 e!1822075)))

(declare-fun res!1193610 () Bool)

(assert (=> b!2879827 (=> (not res!1193610) (not e!1822075))))

(assert (=> b!2879827 (= res!1193610 (not lt!1019445))))

(declare-fun bm!186654 () Bool)

(assert (=> bm!186654 (= call!186659 (isEmpty!18740 (get!10349 lt!1019386)))))

(declare-fun d!832784 () Bool)

(declare-fun e!1822070 () Bool)

(assert (=> d!832784 e!1822070))

(declare-fun c!467410 () Bool)

(assert (=> d!832784 (= c!467410 (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun e!1822071 () Bool)

(assert (=> d!832784 (= lt!1019445 e!1822071)))

(declare-fun c!467412 () Bool)

(assert (=> d!832784 (= c!467412 (isEmpty!18740 (get!10349 lt!1019386)))))

(declare-fun validRegex!3526 (Regex!8748) Bool)

(assert (=> d!832784 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832784 (= (matchR!3748 (h!39831 (exprs!3208 c!7184)) (get!10349 lt!1019386)) lt!1019445)))

(declare-fun b!2879828 () Bool)

(declare-fun head!6355 (List!34536) C!17678)

(assert (=> b!2879828 (= e!1822069 (= (head!6355 (get!10349 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun b!2879829 () Bool)

(declare-fun res!1193611 () Bool)

(assert (=> b!2879829 (=> res!1193611 e!1822073)))

(assert (=> b!2879829 (= res!1193611 (not (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> b!2879829 (= e!1822074 e!1822073)))

(declare-fun b!2879830 () Bool)

(declare-fun res!1193606 () Bool)

(assert (=> b!2879830 (=> (not res!1193606) (not e!1822069))))

(assert (=> b!2879830 (= res!1193606 (isEmpty!18740 (tail!4580 (get!10349 lt!1019386))))))

(declare-fun b!2879831 () Bool)

(assert (=> b!2879831 (= e!1822075 e!1822072)))

(declare-fun res!1193607 () Bool)

(assert (=> b!2879831 (=> res!1193607 e!1822072)))

(assert (=> b!2879831 (= res!1193607 call!186659)))

(declare-fun b!2879832 () Bool)

(declare-fun derivativeStep!2331 (Regex!8748 C!17678) Regex!8748)

(assert (=> b!2879832 (= e!1822071 (matchR!3748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))) (tail!4580 (get!10349 lt!1019386))))))

(declare-fun b!2879833 () Bool)

(declare-fun res!1193609 () Bool)

(assert (=> b!2879833 (=> res!1193609 e!1822073)))

(assert (=> b!2879833 (= res!1193609 e!1822069)))

(declare-fun res!1193604 () Bool)

(assert (=> b!2879833 (=> (not res!1193604) (not e!1822069))))

(assert (=> b!2879833 (= res!1193604 lt!1019445)))

(declare-fun b!2879834 () Bool)

(assert (=> b!2879834 (= e!1822072 (not (= (head!6355 (get!10349 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2879835 () Bool)

(declare-fun nullable!2698 (Regex!8748) Bool)

(assert (=> b!2879835 (= e!1822071 (nullable!2698 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2879836 () Bool)

(assert (=> b!2879836 (= e!1822070 (= lt!1019445 call!186659))))

(declare-fun b!2879837 () Bool)

(assert (=> b!2879837 (= e!1822070 e!1822074)))

(declare-fun c!467411 () Bool)

(assert (=> b!2879837 (= c!467411 (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (= (and d!832784 c!467412) b!2879835))

(assert (= (and d!832784 (not c!467412)) b!2879832))

(assert (= (and d!832784 c!467410) b!2879836))

(assert (= (and d!832784 (not c!467410)) b!2879837))

(assert (= (and b!2879837 c!467411) b!2879825))

(assert (= (and b!2879837 (not c!467411)) b!2879829))

(assert (= (and b!2879829 (not res!1193611)) b!2879833))

(assert (= (and b!2879833 res!1193604) b!2879826))

(assert (= (and b!2879826 res!1193605) b!2879830))

(assert (= (and b!2879830 res!1193606) b!2879828))

(assert (= (and b!2879833 (not res!1193609)) b!2879827))

(assert (= (and b!2879827 res!1193610) b!2879831))

(assert (= (and b!2879831 (not res!1193607)) b!2879824))

(assert (= (and b!2879824 (not res!1193608)) b!2879834))

(assert (= (or b!2879836 b!2879826 b!2879831) bm!186654))

(assert (=> b!2879832 m!3296979))

(declare-fun m!3297081 () Bool)

(assert (=> b!2879832 m!3297081))

(assert (=> b!2879832 m!3297081))

(declare-fun m!3297083 () Bool)

(assert (=> b!2879832 m!3297083))

(assert (=> b!2879832 m!3296979))

(declare-fun m!3297085 () Bool)

(assert (=> b!2879832 m!3297085))

(assert (=> b!2879832 m!3297083))

(assert (=> b!2879832 m!3297085))

(declare-fun m!3297087 () Bool)

(assert (=> b!2879832 m!3297087))

(assert (=> b!2879830 m!3296979))

(assert (=> b!2879830 m!3297085))

(assert (=> b!2879830 m!3297085))

(declare-fun m!3297089 () Bool)

(assert (=> b!2879830 m!3297089))

(assert (=> b!2879828 m!3296979))

(assert (=> b!2879828 m!3297081))

(declare-fun m!3297091 () Bool)

(assert (=> b!2879835 m!3297091))

(assert (=> b!2879834 m!3296979))

(assert (=> b!2879834 m!3297081))

(assert (=> b!2879824 m!3296979))

(assert (=> b!2879824 m!3297085))

(assert (=> b!2879824 m!3297085))

(assert (=> b!2879824 m!3297089))

(assert (=> bm!186654 m!3296979))

(declare-fun m!3297093 () Bool)

(assert (=> bm!186654 m!3297093))

(assert (=> d!832784 m!3296979))

(assert (=> d!832784 m!3297093))

(declare-fun m!3297095 () Bool)

(assert (=> d!832784 m!3297095))

(assert (=> b!2879683 d!832784))

(declare-fun d!832786 () Bool)

(assert (=> d!832786 (matchZipper!490 (set.insert lt!1019384 (as set.empty (Set Context!5416))) (get!10349 (getLanguageWitness!447 lt!1019384)))))

(declare-fun lt!1019448 () Unit!47997)

(declare-fun choose!17029 (Context!5416) Unit!47997)

(assert (=> d!832786 (= lt!1019448 (choose!17029 lt!1019384))))

(assert (=> d!832786 (not (lostCause!840 lt!1019384))))

(assert (=> d!832786 (= (lemmaGetWitnessMatchesContext!47 lt!1019384) lt!1019448)))

(declare-fun bs!523276 () Bool)

(assert (= bs!523276 d!832786))

(declare-fun m!3297097 () Bool)

(assert (=> bs!523276 m!3297097))

(assert (=> bs!523276 m!3296975))

(declare-fun m!3297099 () Bool)

(assert (=> bs!523276 m!3297099))

(declare-fun m!3297101 () Bool)

(assert (=> bs!523276 m!3297101))

(assert (=> bs!523276 m!3296963))

(assert (=> bs!523276 m!3297099))

(assert (=> bs!523276 m!3296975))

(assert (=> bs!523276 m!3296963))

(declare-fun m!3297103 () Bool)

(assert (=> bs!523276 m!3297103))

(assert (=> b!2879683 d!832786))

(declare-fun b!2879838 () Bool)

(declare-fun res!1193616 () Bool)

(declare-fun e!1822079 () Bool)

(assert (=> b!2879838 (=> res!1193616 e!1822079)))

(assert (=> b!2879838 (= res!1193616 (not (isEmpty!18740 (tail!4580 (v!34548 lt!1019386)))))))

(declare-fun b!2879839 () Bool)

(declare-fun e!1822081 () Bool)

(declare-fun lt!1019449 () Bool)

(assert (=> b!2879839 (= e!1822081 (not lt!1019449))))

(declare-fun b!2879840 () Bool)

(declare-fun res!1193613 () Bool)

(declare-fun e!1822076 () Bool)

(assert (=> b!2879840 (=> (not res!1193613) (not e!1822076))))

(declare-fun call!186660 () Bool)

(assert (=> b!2879840 (= res!1193613 (not call!186660))))

(declare-fun b!2879841 () Bool)

(declare-fun e!1822080 () Bool)

(declare-fun e!1822082 () Bool)

(assert (=> b!2879841 (= e!1822080 e!1822082)))

(declare-fun res!1193618 () Bool)

(assert (=> b!2879841 (=> (not res!1193618) (not e!1822082))))

(assert (=> b!2879841 (= res!1193618 (not lt!1019449))))

(declare-fun bm!186655 () Bool)

(assert (=> bm!186655 (= call!186660 (isEmpty!18740 (v!34548 lt!1019386)))))

(declare-fun d!832788 () Bool)

(declare-fun e!1822077 () Bool)

(assert (=> d!832788 e!1822077))

(declare-fun c!467414 () Bool)

(assert (=> d!832788 (= c!467414 (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun e!1822078 () Bool)

(assert (=> d!832788 (= lt!1019449 e!1822078)))

(declare-fun c!467416 () Bool)

(assert (=> d!832788 (= c!467416 (isEmpty!18740 (v!34548 lt!1019386)))))

(assert (=> d!832788 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832788 (= (matchR!3748 (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)) lt!1019449)))

(declare-fun b!2879842 () Bool)

(assert (=> b!2879842 (= e!1822076 (= (head!6355 (v!34548 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun b!2879843 () Bool)

(declare-fun res!1193619 () Bool)

(assert (=> b!2879843 (=> res!1193619 e!1822080)))

(assert (=> b!2879843 (= res!1193619 (not (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> b!2879843 (= e!1822081 e!1822080)))

(declare-fun b!2879844 () Bool)

(declare-fun res!1193614 () Bool)

(assert (=> b!2879844 (=> (not res!1193614) (not e!1822076))))

(assert (=> b!2879844 (= res!1193614 (isEmpty!18740 (tail!4580 (v!34548 lt!1019386))))))

(declare-fun b!2879845 () Bool)

(assert (=> b!2879845 (= e!1822082 e!1822079)))

(declare-fun res!1193615 () Bool)

(assert (=> b!2879845 (=> res!1193615 e!1822079)))

(assert (=> b!2879845 (= res!1193615 call!186660)))

(declare-fun b!2879846 () Bool)

(assert (=> b!2879846 (= e!1822078 (matchR!3748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))) (tail!4580 (v!34548 lt!1019386))))))

(declare-fun b!2879847 () Bool)

(declare-fun res!1193617 () Bool)

(assert (=> b!2879847 (=> res!1193617 e!1822080)))

(assert (=> b!2879847 (= res!1193617 e!1822076)))

(declare-fun res!1193612 () Bool)

(assert (=> b!2879847 (=> (not res!1193612) (not e!1822076))))

(assert (=> b!2879847 (= res!1193612 lt!1019449)))

(declare-fun b!2879848 () Bool)

(assert (=> b!2879848 (= e!1822079 (not (= (head!6355 (v!34548 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2879849 () Bool)

(assert (=> b!2879849 (= e!1822078 (nullable!2698 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2879850 () Bool)

(assert (=> b!2879850 (= e!1822077 (= lt!1019449 call!186660))))

(declare-fun b!2879851 () Bool)

(assert (=> b!2879851 (= e!1822077 e!1822081)))

(declare-fun c!467415 () Bool)

(assert (=> b!2879851 (= c!467415 (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (= (and d!832788 c!467416) b!2879849))

(assert (= (and d!832788 (not c!467416)) b!2879846))

(assert (= (and d!832788 c!467414) b!2879850))

(assert (= (and d!832788 (not c!467414)) b!2879851))

(assert (= (and b!2879851 c!467415) b!2879839))

(assert (= (and b!2879851 (not c!467415)) b!2879843))

(assert (= (and b!2879843 (not res!1193619)) b!2879847))

(assert (= (and b!2879847 res!1193612) b!2879840))

(assert (= (and b!2879840 res!1193613) b!2879844))

(assert (= (and b!2879844 res!1193614) b!2879842))

(assert (= (and b!2879847 (not res!1193617)) b!2879841))

(assert (= (and b!2879841 res!1193618) b!2879845))

(assert (= (and b!2879845 (not res!1193615)) b!2879838))

(assert (= (and b!2879838 (not res!1193616)) b!2879848))

(assert (= (or b!2879850 b!2879840 b!2879845) bm!186655))

(declare-fun m!3297105 () Bool)

(assert (=> b!2879846 m!3297105))

(assert (=> b!2879846 m!3297105))

(declare-fun m!3297107 () Bool)

(assert (=> b!2879846 m!3297107))

(declare-fun m!3297109 () Bool)

(assert (=> b!2879846 m!3297109))

(assert (=> b!2879846 m!3297107))

(assert (=> b!2879846 m!3297109))

(declare-fun m!3297111 () Bool)

(assert (=> b!2879846 m!3297111))

(assert (=> b!2879844 m!3297109))

(assert (=> b!2879844 m!3297109))

(declare-fun m!3297113 () Bool)

(assert (=> b!2879844 m!3297113))

(assert (=> b!2879842 m!3297105))

(assert (=> b!2879849 m!3297091))

(assert (=> b!2879848 m!3297105))

(assert (=> b!2879838 m!3297109))

(assert (=> b!2879838 m!3297109))

(assert (=> b!2879838 m!3297113))

(declare-fun m!3297115 () Bool)

(assert (=> bm!186655 m!3297115))

(assert (=> d!832788 m!3297115))

(assert (=> d!832788 m!3297095))

(assert (=> b!2879683 d!832788))

(declare-fun d!832790 () Bool)

(assert (=> d!832790 (= (get!10349 lt!1019383) (v!34548 lt!1019383))))

(assert (=> b!2879683 d!832790))

(declare-fun d!832792 () Bool)

(assert (=> d!832792 (= (get!10349 lt!1019386) (v!34548 lt!1019386))))

(assert (=> b!2879683 d!832792))

(declare-fun d!832794 () Bool)

(declare-fun c!467419 () Bool)

(assert (=> d!832794 (= c!467419 (isEmpty!18740 (get!10349 lt!1019383)))))

(declare-fun e!1822085 () Bool)

(assert (=> d!832794 (= (matchZipper!490 lt!1019388 (get!10349 lt!1019383)) e!1822085)))

(declare-fun b!2879856 () Bool)

(declare-fun nullableZipper!726 ((Set Context!5416)) Bool)

(assert (=> b!2879856 (= e!1822085 (nullableZipper!726 lt!1019388))))

(declare-fun b!2879857 () Bool)

(declare-fun derivationStepZipper!482 ((Set Context!5416) C!17678) (Set Context!5416))

(assert (=> b!2879857 (= e!1822085 (matchZipper!490 (derivationStepZipper!482 lt!1019388 (head!6355 (get!10349 lt!1019383))) (tail!4580 (get!10349 lt!1019383))))))

(assert (= (and d!832794 c!467419) b!2879856))

(assert (= (and d!832794 (not c!467419)) b!2879857))

(assert (=> d!832794 m!3296983))

(declare-fun m!3297117 () Bool)

(assert (=> d!832794 m!3297117))

(declare-fun m!3297119 () Bool)

(assert (=> b!2879856 m!3297119))

(assert (=> b!2879857 m!3296983))

(declare-fun m!3297121 () Bool)

(assert (=> b!2879857 m!3297121))

(assert (=> b!2879857 m!3297121))

(declare-fun m!3297123 () Bool)

(assert (=> b!2879857 m!3297123))

(assert (=> b!2879857 m!3296983))

(declare-fun m!3297125 () Bool)

(assert (=> b!2879857 m!3297125))

(assert (=> b!2879857 m!3297123))

(assert (=> b!2879857 m!3297125))

(declare-fun m!3297127 () Bool)

(assert (=> b!2879857 m!3297127))

(assert (=> b!2879683 d!832794))

(declare-fun d!832796 () Bool)

(assert (=> d!832796 (matchR!3748 (h!39831 (exprs!3208 c!7184)) (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun lt!1019452 () Unit!47997)

(declare-fun choose!17030 (Regex!8748) Unit!47997)

(assert (=> d!832796 (= lt!1019452 (choose!17030 (h!39831 (exprs!3208 c!7184))))))

(assert (=> d!832796 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832796 (= (lemmaGetWitnessMatches!55 (h!39831 (exprs!3208 c!7184))) lt!1019452)))

(declare-fun bs!523277 () Bool)

(assert (= bs!523277 d!832796))

(assert (=> bs!523277 m!3297095))

(declare-fun m!3297129 () Bool)

(assert (=> bs!523277 m!3297129))

(declare-fun m!3297131 () Bool)

(assert (=> bs!523277 m!3297131))

(assert (=> bs!523277 m!3296995))

(assert (=> bs!523277 m!3297129))

(assert (=> bs!523277 m!3296995))

(declare-fun m!3297133 () Bool)

(assert (=> bs!523277 m!3297133))

(assert (=> b!2879683 d!832796))

(declare-fun d!832798 () Bool)

(declare-fun c!467420 () Bool)

(assert (=> d!832798 (= c!467420 (isEmpty!18740 (v!34548 lt!1019383)))))

(declare-fun e!1822086 () Bool)

(assert (=> d!832798 (= (matchZipper!490 lt!1019388 (v!34548 lt!1019383)) e!1822086)))

(declare-fun b!2879858 () Bool)

(assert (=> b!2879858 (= e!1822086 (nullableZipper!726 lt!1019388))))

(declare-fun b!2879859 () Bool)

(assert (=> b!2879859 (= e!1822086 (matchZipper!490 (derivationStepZipper!482 lt!1019388 (head!6355 (v!34548 lt!1019383))) (tail!4580 (v!34548 lt!1019383))))))

(assert (= (and d!832798 c!467420) b!2879858))

(assert (= (and d!832798 (not c!467420)) b!2879859))

(declare-fun m!3297135 () Bool)

(assert (=> d!832798 m!3297135))

(assert (=> b!2879858 m!3297119))

(declare-fun m!3297137 () Bool)

(assert (=> b!2879859 m!3297137))

(assert (=> b!2879859 m!3297137))

(declare-fun m!3297139 () Bool)

(assert (=> b!2879859 m!3297139))

(declare-fun m!3297141 () Bool)

(assert (=> b!2879859 m!3297141))

(assert (=> b!2879859 m!3297139))

(assert (=> b!2879859 m!3297141))

(declare-fun m!3297143 () Bool)

(assert (=> b!2879859 m!3297143))

(assert (=> b!2879687 d!832798))

(declare-fun d!832800 () Bool)

(declare-fun c!467421 () Bool)

(assert (=> d!832800 (= c!467421 (isEmpty!18740 (v!34548 lt!1019386)))))

(declare-fun e!1822087 () Bool)

(assert (=> d!832800 (= (matchZipper!490 lt!1019387 (v!34548 lt!1019386)) e!1822087)))

(declare-fun b!2879860 () Bool)

(assert (=> b!2879860 (= e!1822087 (nullableZipper!726 lt!1019387))))

(declare-fun b!2879861 () Bool)

(assert (=> b!2879861 (= e!1822087 (matchZipper!490 (derivationStepZipper!482 lt!1019387 (head!6355 (v!34548 lt!1019386))) (tail!4580 (v!34548 lt!1019386))))))

(assert (= (and d!832800 c!467421) b!2879860))

(assert (= (and d!832800 (not c!467421)) b!2879861))

(assert (=> d!832800 m!3297115))

(declare-fun m!3297145 () Bool)

(assert (=> b!2879860 m!3297145))

(assert (=> b!2879861 m!3297105))

(assert (=> b!2879861 m!3297105))

(declare-fun m!3297147 () Bool)

(assert (=> b!2879861 m!3297147))

(assert (=> b!2879861 m!3297109))

(assert (=> b!2879861 m!3297147))

(assert (=> b!2879861 m!3297109))

(declare-fun m!3297149 () Bool)

(assert (=> b!2879861 m!3297149))

(assert (=> b!2879687 d!832800))

(declare-fun d!832802 () Bool)

(assert (=> d!832802 (= (matchR!3748 (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)) (matchZipper!490 lt!1019387 (v!34548 lt!1019386)))))

(declare-fun lt!1019455 () Unit!47997)

(declare-fun choose!17031 ((Set Context!5416) List!34537 Regex!8748 List!34536) Unit!47997)

(assert (=> d!832802 (= lt!1019455 (choose!17031 lt!1019387 (Cons!34413 lt!1019385 Nil!34413) (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)))))

(assert (=> d!832802 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832802 (= (theoremZipperRegexEquiv!122 lt!1019387 (Cons!34413 lt!1019385 Nil!34413) (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)) lt!1019455)))

(declare-fun bs!523278 () Bool)

(assert (= bs!523278 d!832802))

(assert (=> bs!523278 m!3296985))

(assert (=> bs!523278 m!3296967))

(declare-fun m!3297151 () Bool)

(assert (=> bs!523278 m!3297151))

(assert (=> bs!523278 m!3297095))

(assert (=> b!2879687 d!832802))

(declare-fun b!2879866 () Bool)

(declare-fun e!1822090 () Bool)

(declare-fun tp!924065 () Bool)

(declare-fun tp!924066 () Bool)

(assert (=> b!2879866 (= e!1822090 (and tp!924065 tp!924066))))

(assert (=> b!2879682 (= tp!924057 e!1822090)))

(assert (= (and b!2879682 (is-Cons!34411 (exprs!3208 c!7184))) b!2879866))

(push 1)

(assert (not b!2879792))

(assert (not b!2879830))

(assert (not b!2879844))

(assert (not bm!186654))

(assert (not bm!186650))

(assert (not d!832782))

(assert (not b!2879838))

(assert (not b!2879835))

(assert (not d!832780))

(assert (not bm!186655))

(assert (not d!832766))

(assert (not b!2879859))

(assert (not b!2879860))

(assert (not d!832798))

(assert (not b!2879848))

(assert (not b!2879842))

(assert (not d!832786))

(assert (not bm!186651))

(assert (not b!2879790))

(assert (not b!2879774))

(assert (not d!832776))

(assert (not b!2879857))

(assert (not b!2879832))

(assert (not b!2879824))

(assert (not d!832800))

(assert (not b!2879828))

(assert (not d!832802))

(assert (not b!2879856))

(assert (not b!2879834))

(assert (not b!2879861))

(assert (not b!2879846))

(assert (not b!2879849))

(assert (not d!832796))

(assert (not b!2879866))

(assert (not d!832784))

(assert (not b!2879858))

(assert (not d!832794))

(assert (not d!832788))

(assert (not b!2879794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!832826 () Bool)

(declare-fun nullableFct!826 (Regex!8748) Bool)

(assert (=> d!832826 (= (nullable!2698 (h!39831 (exprs!3208 c!7184))) (nullableFct!826 (h!39831 (exprs!3208 c!7184))))))

(declare-fun bs!523290 () Bool)

(assert (= bs!523290 d!832826))

(declare-fun m!3297219 () Bool)

(assert (=> bs!523290 m!3297219))

(assert (=> b!2879849 d!832826))

(declare-fun call!186671 () Option!6423)

(declare-fun bm!186666 () Bool)

(declare-fun c!467466 () Bool)

(assert (=> bm!186666 (= call!186671 (getLanguageWitness!448 (ite c!467466 (regOne!18009 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) (regOne!18008 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))))

(declare-fun bm!186667 () Bool)

(declare-fun call!186672 () Option!6423)

(assert (=> bm!186667 (= call!186672 (getLanguageWitness!448 (ite c!467466 (regTwo!18009 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) (regTwo!18008 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))))

(declare-fun b!2879984 () Bool)

(declare-fun e!1822155 () Option!6423)

(assert (=> b!2879984 (= e!1822155 call!186672)))

(declare-fun b!2879985 () Bool)

(declare-fun e!1822153 () Option!6423)

(assert (=> b!2879985 (= e!1822153 None!6422)))

(declare-fun b!2879987 () Bool)

(declare-fun e!1822154 () Option!6423)

(assert (=> b!2879987 (= e!1822154 (Some!6422 (Cons!34412 (c!467357 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) Nil!34412)))))

(declare-fun b!2879988 () Bool)

(declare-fun e!1822156 () Option!6423)

(assert (=> b!2879988 (= e!1822156 e!1822155)))

(declare-fun lt!1019480 () Option!6423)

(assert (=> b!2879988 (= lt!1019480 call!186671)))

(declare-fun c!467470 () Bool)

(assert (=> b!2879988 (= c!467470 (is-Some!6422 lt!1019480))))

(declare-fun b!2879989 () Bool)

(declare-fun e!1822152 () Option!6423)

(assert (=> b!2879989 (= e!1822154 e!1822152)))

(declare-fun c!467468 () Bool)

(assert (=> b!2879989 (= c!467468 (is-Star!8748 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2879990 () Bool)

(declare-fun e!1822157 () Option!6423)

(assert (=> b!2879990 (= e!1822157 (Some!6422 Nil!34412))))

(declare-fun b!2879991 () Bool)

(assert (=> b!2879991 (= e!1822155 lt!1019480)))

(declare-fun b!2879992 () Bool)

(declare-fun c!467469 () Bool)

(assert (=> b!2879992 (= c!467469 (is-ElementMatch!8748 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> b!2879992 (= e!1822153 e!1822154)))

(declare-fun b!2879993 () Bool)

(declare-fun e!1822151 () Option!6423)

(assert (=> b!2879993 (= e!1822151 None!6422)))

(declare-fun b!2879994 () Bool)

(assert (=> b!2879994 (= e!1822152 (Some!6422 Nil!34412))))

(declare-fun b!2879995 () Bool)

(assert (=> b!2879995 (= e!1822157 e!1822153)))

(declare-fun c!467465 () Bool)

(assert (=> b!2879995 (= c!467465 (is-EmptyLang!8748 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun d!832828 () Bool)

(declare-fun c!467464 () Bool)

(assert (=> d!832828 (= c!467464 (is-EmptyExpr!8748 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> d!832828 (= (getLanguageWitness!448 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) e!1822157)))

(declare-fun b!2879986 () Bool)

(declare-fun c!467467 () Bool)

(declare-fun lt!1019479 () Option!6423)

(assert (=> b!2879986 (= c!467467 (is-Some!6422 lt!1019479))))

(assert (=> b!2879986 (= lt!1019479 call!186672)))

(declare-fun e!1822150 () Option!6423)

(assert (=> b!2879986 (= e!1822150 e!1822151)))

(declare-fun b!2879996 () Bool)

(declare-fun lt!1019478 () Option!6423)

(assert (=> b!2879996 (= e!1822151 (Some!6422 (++!8184 (v!34548 lt!1019478) (v!34548 lt!1019479))))))

(declare-fun b!2879997 () Bool)

(assert (=> b!2879997 (= c!467466 (is-Union!8748 (ite c!467389 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> b!2879997 (= e!1822152 e!1822156)))

(declare-fun b!2879998 () Bool)

(assert (=> b!2879998 (= e!1822150 None!6422)))

(declare-fun b!2879999 () Bool)

(assert (=> b!2879999 (= e!1822156 e!1822150)))

(assert (=> b!2879999 (= lt!1019478 call!186671)))

(declare-fun c!467463 () Bool)

(assert (=> b!2879999 (= c!467463 (is-Some!6422 lt!1019478))))

(assert (= (and d!832828 c!467464) b!2879990))

(assert (= (and d!832828 (not c!467464)) b!2879995))

(assert (= (and b!2879995 c!467465) b!2879985))

(assert (= (and b!2879995 (not c!467465)) b!2879992))

(assert (= (and b!2879992 c!467469) b!2879987))

(assert (= (and b!2879992 (not c!467469)) b!2879989))

(assert (= (and b!2879989 c!467468) b!2879994))

(assert (= (and b!2879989 (not c!467468)) b!2879997))

(assert (= (and b!2879997 c!467466) b!2879988))

(assert (= (and b!2879997 (not c!467466)) b!2879999))

(assert (= (and b!2879988 c!467470) b!2879991))

(assert (= (and b!2879988 (not c!467470)) b!2879984))

(assert (= (and b!2879999 c!467463) b!2879986))

(assert (= (and b!2879999 (not c!467463)) b!2879998))

(assert (= (and b!2879986 c!467467) b!2879996))

(assert (= (and b!2879986 (not c!467467)) b!2879993))

(assert (= (or b!2879984 b!2879986) bm!186667))

(assert (= (or b!2879988 b!2879999) bm!186666))

(declare-fun m!3297221 () Bool)

(assert (=> bm!186666 m!3297221))

(declare-fun m!3297223 () Bool)

(assert (=> bm!186667 m!3297223))

(declare-fun m!3297225 () Bool)

(assert (=> b!2879996 m!3297225))

(assert (=> bm!186650 d!832828))

(declare-fun d!832830 () Bool)

(assert (=> d!832830 (= (head!6355 (v!34548 lt!1019386)) (h!39832 (v!34548 lt!1019386)))))

(assert (=> b!2879848 d!832830))

(declare-fun bs!523291 () Bool)

(declare-fun d!832832 () Bool)

(assert (= bs!523291 (and d!832832 d!832766)))

(declare-fun lambda!107469 () Int)

(assert (=> bs!523291 (not (= lambda!107469 lambda!107449))))

(declare-fun bs!523292 () Bool)

(assert (= bs!523292 (and d!832832 d!832776)))

(assert (=> bs!523292 (not (= lambda!107469 lambda!107452))))

(declare-fun bs!523293 () Bool)

(assert (= bs!523293 (and d!832832 d!832780)))

(assert (=> bs!523293 (not (= lambda!107469 lambda!107453))))

(declare-fun bs!523294 () Bool)

(assert (= bs!523294 (and d!832832 d!832782)))

(assert (=> bs!523294 (not (= lambda!107469 lambda!107456))))

(assert (=> d!832832 true))

(declare-fun order!18149 () Int)

(declare-fun dynLambda!14330 (Int Int) Int)

(assert (=> d!832832 (< (dynLambda!14330 order!18149 lambda!107449) (dynLambda!14330 order!18149 lambda!107469))))

(assert (=> d!832832 (= (exists!1187 (exprs!3208 c!7184) lambda!107449) (not (forall!7092 (exprs!3208 c!7184) lambda!107469)))))

(declare-fun bs!523295 () Bool)

(assert (= bs!523295 d!832832))

(declare-fun m!3297227 () Bool)

(assert (=> bs!523295 m!3297227))

(assert (=> d!832766 d!832832))

(declare-fun d!832834 () Bool)

(assert (=> d!832834 (= (isEmpty!18740 (v!34548 lt!1019386)) (is-Nil!34412 (v!34548 lt!1019386)))))

(assert (=> d!832800 d!832834))

(declare-fun b!2880012 () Bool)

(declare-fun res!1193657 () Bool)

(declare-fun e!1822163 () Bool)

(assert (=> b!2880012 (=> (not res!1193657) (not e!1822163))))

(declare-fun lt!1019483 () List!34536)

(declare-fun size!26331 (List!34536) Int)

(assert (=> b!2880012 (= res!1193657 (= (size!26331 lt!1019483) (+ (size!26331 (v!34548 lt!1019440)) (size!26331 (v!34548 lt!1019441)))))))

(declare-fun b!2880013 () Bool)

(assert (=> b!2880013 (= e!1822163 (or (not (= (v!34548 lt!1019441) Nil!34412)) (= lt!1019483 (v!34548 lt!1019440))))))

(declare-fun b!2880011 () Bool)

(declare-fun e!1822162 () List!34536)

(assert (=> b!2880011 (= e!1822162 (Cons!34412 (h!39832 (v!34548 lt!1019440)) (++!8184 (t!233579 (v!34548 lt!1019440)) (v!34548 lt!1019441))))))

(declare-fun d!832836 () Bool)

(assert (=> d!832836 e!1822163))

(declare-fun res!1193656 () Bool)

(assert (=> d!832836 (=> (not res!1193656) (not e!1822163))))

(declare-fun content!4712 (List!34536) (Set C!17678))

(assert (=> d!832836 (= res!1193656 (= (content!4712 lt!1019483) (set.union (content!4712 (v!34548 lt!1019440)) (content!4712 (v!34548 lt!1019441)))))))

(assert (=> d!832836 (= lt!1019483 e!1822162)))

(declare-fun c!467473 () Bool)

(assert (=> d!832836 (= c!467473 (is-Nil!34412 (v!34548 lt!1019440)))))

(assert (=> d!832836 (= (++!8184 (v!34548 lt!1019440) (v!34548 lt!1019441)) lt!1019483)))

(declare-fun b!2880010 () Bool)

(assert (=> b!2880010 (= e!1822162 (v!34548 lt!1019441))))

(assert (= (and d!832836 c!467473) b!2880010))

(assert (= (and d!832836 (not c!467473)) b!2880011))

(assert (= (and d!832836 res!1193656) b!2880012))

(assert (= (and b!2880012 res!1193657) b!2880013))

(declare-fun m!3297229 () Bool)

(assert (=> b!2880012 m!3297229))

(declare-fun m!3297231 () Bool)

(assert (=> b!2880012 m!3297231))

(declare-fun m!3297233 () Bool)

(assert (=> b!2880012 m!3297233))

(declare-fun m!3297235 () Bool)

(assert (=> b!2880011 m!3297235))

(declare-fun m!3297237 () Bool)

(assert (=> d!832836 m!3297237))

(declare-fun m!3297239 () Bool)

(assert (=> d!832836 m!3297239))

(declare-fun m!3297241 () Bool)

(assert (=> d!832836 m!3297241))

(assert (=> b!2879794 d!832836))

(declare-fun d!832838 () Bool)

(declare-fun c!467474 () Bool)

(assert (=> d!832838 (= c!467474 (isEmpty!18740 (tail!4580 (v!34548 lt!1019386))))))

(declare-fun e!1822164 () Bool)

(assert (=> d!832838 (= (matchZipper!490 (derivationStepZipper!482 lt!1019387 (head!6355 (v!34548 lt!1019386))) (tail!4580 (v!34548 lt!1019386))) e!1822164)))

(declare-fun b!2880014 () Bool)

(assert (=> b!2880014 (= e!1822164 (nullableZipper!726 (derivationStepZipper!482 lt!1019387 (head!6355 (v!34548 lt!1019386)))))))

(declare-fun b!2880015 () Bool)

(assert (=> b!2880015 (= e!1822164 (matchZipper!490 (derivationStepZipper!482 (derivationStepZipper!482 lt!1019387 (head!6355 (v!34548 lt!1019386))) (head!6355 (tail!4580 (v!34548 lt!1019386)))) (tail!4580 (tail!4580 (v!34548 lt!1019386)))))))

(assert (= (and d!832838 c!467474) b!2880014))

(assert (= (and d!832838 (not c!467474)) b!2880015))

(assert (=> d!832838 m!3297109))

(assert (=> d!832838 m!3297113))

(assert (=> b!2880014 m!3297147))

(declare-fun m!3297243 () Bool)

(assert (=> b!2880014 m!3297243))

(assert (=> b!2880015 m!3297109))

(declare-fun m!3297245 () Bool)

(assert (=> b!2880015 m!3297245))

(assert (=> b!2880015 m!3297147))

(assert (=> b!2880015 m!3297245))

(declare-fun m!3297247 () Bool)

(assert (=> b!2880015 m!3297247))

(assert (=> b!2880015 m!3297109))

(declare-fun m!3297249 () Bool)

(assert (=> b!2880015 m!3297249))

(assert (=> b!2880015 m!3297247))

(assert (=> b!2880015 m!3297249))

(declare-fun m!3297251 () Bool)

(assert (=> b!2880015 m!3297251))

(assert (=> b!2879861 d!832838))

(declare-fun d!832840 () Bool)

(assert (=> d!832840 true))

(declare-fun lambda!107472 () Int)

(declare-fun flatMap!229 ((Set Context!5416) Int) (Set Context!5416))

(assert (=> d!832840 (= (derivationStepZipper!482 lt!1019387 (head!6355 (v!34548 lt!1019386))) (flatMap!229 lt!1019387 lambda!107472))))

(declare-fun bs!523296 () Bool)

(assert (= bs!523296 d!832840))

(declare-fun m!3297253 () Bool)

(assert (=> bs!523296 m!3297253))

(assert (=> b!2879861 d!832840))

(assert (=> b!2879861 d!832830))

(declare-fun d!832842 () Bool)

(assert (=> d!832842 (= (tail!4580 (v!34548 lt!1019386)) (t!233579 (v!34548 lt!1019386)))))

(assert (=> b!2879861 d!832842))

(declare-fun d!832844 () Bool)

(declare-fun lambda!107475 () Int)

(declare-fun exists!1189 ((Set Context!5416) Int) Bool)

(assert (=> d!832844 (= (nullableZipper!726 lt!1019387) (exists!1189 lt!1019387 lambda!107475))))

(declare-fun bs!523297 () Bool)

(assert (= bs!523297 d!832844))

(declare-fun m!3297255 () Bool)

(assert (=> bs!523297 m!3297255))

(assert (=> b!2879860 d!832844))

(declare-fun d!832846 () Bool)

(assert (=> d!832846 (= (isEmpty!18740 (get!10349 lt!1019383)) (is-Nil!34412 (get!10349 lt!1019383)))))

(assert (=> d!832794 d!832846))

(declare-fun c!467482 () Bool)

(declare-fun bm!186668 () Bool)

(declare-fun call!186673 () Option!6423)

(assert (=> bm!186668 (= call!186673 (getLanguageWitness!448 (ite c!467482 (regOne!18009 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))) (regOne!18008 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))))

(declare-fun bm!186669 () Bool)

(declare-fun call!186674 () Option!6423)

(assert (=> bm!186669 (= call!186674 (getLanguageWitness!448 (ite c!467482 (regTwo!18009 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))) (regTwo!18008 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))))

(declare-fun b!2880018 () Bool)

(declare-fun e!1822170 () Option!6423)

(assert (=> b!2880018 (= e!1822170 call!186674)))

(declare-fun b!2880019 () Bool)

(declare-fun e!1822168 () Option!6423)

(assert (=> b!2880019 (= e!1822168 None!6422)))

(declare-fun b!2880021 () Bool)

(declare-fun e!1822169 () Option!6423)

(assert (=> b!2880021 (= e!1822169 (Some!6422 (Cons!34412 (c!467357 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))) Nil!34412)))))

(declare-fun b!2880022 () Bool)

(declare-fun e!1822171 () Option!6423)

(assert (=> b!2880022 (= e!1822171 e!1822170)))

(declare-fun lt!1019486 () Option!6423)

(assert (=> b!2880022 (= lt!1019486 call!186673)))

(declare-fun c!467486 () Bool)

(assert (=> b!2880022 (= c!467486 (is-Some!6422 lt!1019486))))

(declare-fun b!2880023 () Bool)

(declare-fun e!1822167 () Option!6423)

(assert (=> b!2880023 (= e!1822169 e!1822167)))

(declare-fun c!467484 () Bool)

(assert (=> b!2880023 (= c!467484 (is-Star!8748 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2880024 () Bool)

(declare-fun e!1822172 () Option!6423)

(assert (=> b!2880024 (= e!1822172 (Some!6422 Nil!34412))))

(declare-fun b!2880025 () Bool)

(assert (=> b!2880025 (= e!1822170 lt!1019486)))

(declare-fun b!2880026 () Bool)

(declare-fun c!467485 () Bool)

(assert (=> b!2880026 (= c!467485 (is-ElementMatch!8748 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> b!2880026 (= e!1822168 e!1822169)))

(declare-fun b!2880027 () Bool)

(declare-fun e!1822166 () Option!6423)

(assert (=> b!2880027 (= e!1822166 None!6422)))

(declare-fun b!2880028 () Bool)

(assert (=> b!2880028 (= e!1822167 (Some!6422 Nil!34412))))

(declare-fun b!2880029 () Bool)

(assert (=> b!2880029 (= e!1822172 e!1822168)))

(declare-fun c!467481 () Bool)

(assert (=> b!2880029 (= c!467481 (is-EmptyLang!8748 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun d!832848 () Bool)

(declare-fun c!467480 () Bool)

(assert (=> d!832848 (= c!467480 (is-EmptyExpr!8748 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> d!832848 (= (getLanguageWitness!448 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))) e!1822172)))

(declare-fun b!2880020 () Bool)

(declare-fun c!467483 () Bool)

(declare-fun lt!1019485 () Option!6423)

(assert (=> b!2880020 (= c!467483 (is-Some!6422 lt!1019485))))

(assert (=> b!2880020 (= lt!1019485 call!186674)))

(declare-fun e!1822165 () Option!6423)

(assert (=> b!2880020 (= e!1822165 e!1822166)))

(declare-fun b!2880030 () Bool)

(declare-fun lt!1019484 () Option!6423)

(assert (=> b!2880030 (= e!1822166 (Some!6422 (++!8184 (v!34548 lt!1019484) (v!34548 lt!1019485))))))

(declare-fun b!2880031 () Bool)

(assert (=> b!2880031 (= c!467482 (is-Union!8748 (ite c!467389 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> b!2880031 (= e!1822167 e!1822171)))

(declare-fun b!2880032 () Bool)

(assert (=> b!2880032 (= e!1822165 None!6422)))

(declare-fun b!2880033 () Bool)

(assert (=> b!2880033 (= e!1822171 e!1822165)))

(assert (=> b!2880033 (= lt!1019484 call!186673)))

(declare-fun c!467479 () Bool)

(assert (=> b!2880033 (= c!467479 (is-Some!6422 lt!1019484))))

(assert (= (and d!832848 c!467480) b!2880024))

(assert (= (and d!832848 (not c!467480)) b!2880029))

(assert (= (and b!2880029 c!467481) b!2880019))

(assert (= (and b!2880029 (not c!467481)) b!2880026))

(assert (= (and b!2880026 c!467485) b!2880021))

(assert (= (and b!2880026 (not c!467485)) b!2880023))

(assert (= (and b!2880023 c!467484) b!2880028))

(assert (= (and b!2880023 (not c!467484)) b!2880031))

(assert (= (and b!2880031 c!467482) b!2880022))

(assert (= (and b!2880031 (not c!467482)) b!2880033))

(assert (= (and b!2880022 c!467486) b!2880025))

(assert (= (and b!2880022 (not c!467486)) b!2880018))

(assert (= (and b!2880033 c!467479) b!2880020))

(assert (= (and b!2880033 (not c!467479)) b!2880032))

(assert (= (and b!2880020 c!467483) b!2880030))

(assert (= (and b!2880020 (not c!467483)) b!2880027))

(assert (= (or b!2880018 b!2880020) bm!186669))

(assert (= (or b!2880022 b!2880033) bm!186668))

(declare-fun m!3297257 () Bool)

(assert (=> bm!186668 m!3297257))

(declare-fun m!3297259 () Bool)

(assert (=> bm!186669 m!3297259))

(declare-fun m!3297261 () Bool)

(assert (=> b!2880030 m!3297261))

(assert (=> bm!186651 d!832848))

(declare-fun d!832850 () Bool)

(assert (=> d!832850 (= (isEmpty!18740 (v!34548 lt!1019383)) (is-Nil!34412 (v!34548 lt!1019383)))))

(assert (=> d!832798 d!832850))

(declare-fun d!832852 () Bool)

(declare-fun res!1193662 () Bool)

(declare-fun e!1822177 () Bool)

(assert (=> d!832852 (=> res!1193662 e!1822177)))

(assert (=> d!832852 (= res!1193662 (is-Nil!34411 (exprs!3208 lt!1019384)))))

(assert (=> d!832852 (= (forall!7092 (exprs!3208 lt!1019384) lambda!107453) e!1822177)))

(declare-fun b!2880038 () Bool)

(declare-fun e!1822178 () Bool)

(assert (=> b!2880038 (= e!1822177 e!1822178)))

(declare-fun res!1193663 () Bool)

(assert (=> b!2880038 (=> (not res!1193663) (not e!1822178))))

(declare-fun dynLambda!14331 (Int Regex!8748) Bool)

(assert (=> b!2880038 (= res!1193663 (dynLambda!14331 lambda!107453 (h!39831 (exprs!3208 lt!1019384))))))

(declare-fun b!2880039 () Bool)

(assert (=> b!2880039 (= e!1822178 (forall!7092 (t!233578 (exprs!3208 lt!1019384)) lambda!107453))))

(assert (= (and d!832852 (not res!1193662)) b!2880038))

(assert (= (and b!2880038 res!1193663) b!2880039))

(declare-fun b_lambda!86275 () Bool)

(assert (=> (not b_lambda!86275) (not b!2880038)))

(declare-fun m!3297263 () Bool)

(assert (=> b!2880038 m!3297263))

(declare-fun m!3297265 () Bool)

(assert (=> b!2880039 m!3297265))

(assert (=> d!832780 d!832852))

(declare-fun d!832854 () Bool)

(assert (=> d!832854 (= (isEmpty!18740 (tail!4580 (get!10349 lt!1019386))) (is-Nil!34412 (tail!4580 (get!10349 lt!1019386))))))

(assert (=> b!2879824 d!832854))

(declare-fun d!832856 () Bool)

(assert (=> d!832856 (= (tail!4580 (get!10349 lt!1019386)) (t!233579 (get!10349 lt!1019386)))))

(assert (=> b!2879824 d!832856))

(declare-fun d!832858 () Bool)

(declare-fun c!467487 () Bool)

(assert (=> d!832858 (= c!467487 (isEmpty!18740 (tail!4580 (v!34548 lt!1019383))))))

(declare-fun e!1822179 () Bool)

(assert (=> d!832858 (= (matchZipper!490 (derivationStepZipper!482 lt!1019388 (head!6355 (v!34548 lt!1019383))) (tail!4580 (v!34548 lt!1019383))) e!1822179)))

(declare-fun b!2880040 () Bool)

(assert (=> b!2880040 (= e!1822179 (nullableZipper!726 (derivationStepZipper!482 lt!1019388 (head!6355 (v!34548 lt!1019383)))))))

(declare-fun b!2880041 () Bool)

(assert (=> b!2880041 (= e!1822179 (matchZipper!490 (derivationStepZipper!482 (derivationStepZipper!482 lt!1019388 (head!6355 (v!34548 lt!1019383))) (head!6355 (tail!4580 (v!34548 lt!1019383)))) (tail!4580 (tail!4580 (v!34548 lt!1019383)))))))

(assert (= (and d!832858 c!467487) b!2880040))

(assert (= (and d!832858 (not c!467487)) b!2880041))

(assert (=> d!832858 m!3297141))

(declare-fun m!3297267 () Bool)

(assert (=> d!832858 m!3297267))

(assert (=> b!2880040 m!3297139))

(declare-fun m!3297269 () Bool)

(assert (=> b!2880040 m!3297269))

(assert (=> b!2880041 m!3297141))

(declare-fun m!3297271 () Bool)

(assert (=> b!2880041 m!3297271))

(assert (=> b!2880041 m!3297139))

(assert (=> b!2880041 m!3297271))

(declare-fun m!3297273 () Bool)

(assert (=> b!2880041 m!3297273))

(assert (=> b!2880041 m!3297141))

(declare-fun m!3297275 () Bool)

(assert (=> b!2880041 m!3297275))

(assert (=> b!2880041 m!3297273))

(assert (=> b!2880041 m!3297275))

(declare-fun m!3297277 () Bool)

(assert (=> b!2880041 m!3297277))

(assert (=> b!2879859 d!832858))

(declare-fun bs!523298 () Bool)

(declare-fun d!832860 () Bool)

(assert (= bs!523298 (and d!832860 d!832840)))

(declare-fun lambda!107476 () Int)

(assert (=> bs!523298 (= (= (head!6355 (v!34548 lt!1019383)) (head!6355 (v!34548 lt!1019386))) (= lambda!107476 lambda!107472))))

(assert (=> d!832860 true))

(assert (=> d!832860 (= (derivationStepZipper!482 lt!1019388 (head!6355 (v!34548 lt!1019383))) (flatMap!229 lt!1019388 lambda!107476))))

(declare-fun bs!523299 () Bool)

(assert (= bs!523299 d!832860))

(declare-fun m!3297279 () Bool)

(assert (=> bs!523299 m!3297279))

(assert (=> b!2879859 d!832860))

(declare-fun d!832862 () Bool)

(assert (=> d!832862 (= (head!6355 (v!34548 lt!1019383)) (h!39832 (v!34548 lt!1019383)))))

(assert (=> b!2879859 d!832862))

(declare-fun d!832864 () Bool)

(assert (=> d!832864 (= (tail!4580 (v!34548 lt!1019383)) (t!233579 (v!34548 lt!1019383)))))

(assert (=> b!2879859 d!832864))

(declare-fun bs!523300 () Bool)

(declare-fun d!832866 () Bool)

(assert (= bs!523300 (and d!832866 d!832844)))

(declare-fun lambda!107477 () Int)

(assert (=> bs!523300 (= lambda!107477 lambda!107475)))

(assert (=> d!832866 (= (nullableZipper!726 lt!1019388) (exists!1189 lt!1019388 lambda!107477))))

(declare-fun bs!523301 () Bool)

(assert (= bs!523301 d!832866))

(declare-fun m!3297281 () Bool)

(assert (=> bs!523301 m!3297281))

(assert (=> b!2879858 d!832866))

(declare-fun d!832868 () Bool)

(assert (=> d!832868 (= (isEmpty!18740 (get!10349 lt!1019386)) (is-Nil!34412 (get!10349 lt!1019386)))))

(assert (=> bm!186654 d!832868))

(declare-fun b!2880060 () Bool)

(declare-fun res!1193674 () Bool)

(declare-fun e!1822197 () Bool)

(assert (=> b!2880060 (=> res!1193674 e!1822197)))

(assert (=> b!2880060 (= res!1193674 (not (is-Concat!14069 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun e!1822198 () Bool)

(assert (=> b!2880060 (= e!1822198 e!1822197)))

(declare-fun b!2880061 () Bool)

(declare-fun e!1822196 () Bool)

(assert (=> b!2880061 (= e!1822196 e!1822198)))

(declare-fun c!467493 () Bool)

(assert (=> b!2880061 (= c!467493 (is-Union!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880062 () Bool)

(declare-fun e!1822194 () Bool)

(declare-fun call!186681 () Bool)

(assert (=> b!2880062 (= e!1822194 call!186681)))

(declare-fun c!467492 () Bool)

(declare-fun call!186683 () Bool)

(declare-fun bm!186676 () Bool)

(assert (=> bm!186676 (= call!186683 (validRegex!3526 (ite c!467492 (reg!9077 (h!39831 (exprs!3208 c!7184))) (ite c!467493 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184)))))))))

(declare-fun b!2880063 () Bool)

(declare-fun res!1193678 () Bool)

(assert (=> b!2880063 (=> (not res!1193678) (not e!1822194))))

(declare-fun call!186682 () Bool)

(assert (=> b!2880063 (= res!1193678 call!186682)))

(assert (=> b!2880063 (= e!1822198 e!1822194)))

(declare-fun d!832870 () Bool)

(declare-fun res!1193675 () Bool)

(declare-fun e!1822195 () Bool)

(assert (=> d!832870 (=> res!1193675 e!1822195)))

(assert (=> d!832870 (= res!1193675 (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> d!832870 (= (validRegex!3526 (h!39831 (exprs!3208 c!7184))) e!1822195)))

(declare-fun b!2880064 () Bool)

(declare-fun e!1822199 () Bool)

(assert (=> b!2880064 (= e!1822196 e!1822199)))

(declare-fun res!1193677 () Bool)

(assert (=> b!2880064 (= res!1193677 (not (nullable!2698 (reg!9077 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> b!2880064 (=> (not res!1193677) (not e!1822199))))

(declare-fun b!2880065 () Bool)

(declare-fun e!1822200 () Bool)

(assert (=> b!2880065 (= e!1822200 call!186682)))

(declare-fun b!2880066 () Bool)

(assert (=> b!2880066 (= e!1822195 e!1822196)))

(assert (=> b!2880066 (= c!467492 (is-Star!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun bm!186677 () Bool)

(assert (=> bm!186677 (= call!186681 call!186683)))

(declare-fun b!2880067 () Bool)

(assert (=> b!2880067 (= e!1822199 call!186683)))

(declare-fun b!2880068 () Bool)

(assert (=> b!2880068 (= e!1822197 e!1822200)))

(declare-fun res!1193676 () Bool)

(assert (=> b!2880068 (=> (not res!1193676) (not e!1822200))))

(assert (=> b!2880068 (= res!1193676 call!186681)))

(declare-fun bm!186678 () Bool)

(assert (=> bm!186678 (= call!186682 (validRegex!3526 (ite c!467493 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184))))))))

(assert (= (and d!832870 (not res!1193675)) b!2880066))

(assert (= (and b!2880066 c!467492) b!2880064))

(assert (= (and b!2880066 (not c!467492)) b!2880061))

(assert (= (and b!2880064 res!1193677) b!2880067))

(assert (= (and b!2880061 c!467493) b!2880063))

(assert (= (and b!2880061 (not c!467493)) b!2880060))

(assert (= (and b!2880063 res!1193678) b!2880062))

(assert (= (and b!2880060 (not res!1193674)) b!2880068))

(assert (= (and b!2880068 res!1193676) b!2880065))

(assert (= (or b!2880062 b!2880068) bm!186677))

(assert (= (or b!2880063 b!2880065) bm!186678))

(assert (= (or b!2880067 bm!186677) bm!186676))

(declare-fun m!3297283 () Bool)

(assert (=> bm!186676 m!3297283))

(declare-fun m!3297285 () Bool)

(assert (=> b!2880064 m!3297285))

(declare-fun m!3297287 () Bool)

(assert (=> bm!186678 m!3297287))

(assert (=> d!832796 d!832870))

(declare-fun d!832872 () Bool)

(assert (=> d!832872 (= (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))) (v!34548 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> d!832796 d!832872))

(assert (=> d!832796 d!832778))

(declare-fun b!2880069 () Bool)

(declare-fun res!1193683 () Bool)

(declare-fun e!1822204 () Bool)

(assert (=> b!2880069 (=> res!1193683 e!1822204)))

(assert (=> b!2880069 (= res!1193683 (not (isEmpty!18740 (tail!4580 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))))))))

(declare-fun b!2880070 () Bool)

(declare-fun e!1822206 () Bool)

(declare-fun lt!1019487 () Bool)

(assert (=> b!2880070 (= e!1822206 (not lt!1019487))))

(declare-fun b!2880071 () Bool)

(declare-fun res!1193680 () Bool)

(declare-fun e!1822201 () Bool)

(assert (=> b!2880071 (=> (not res!1193680) (not e!1822201))))

(declare-fun call!186684 () Bool)

(assert (=> b!2880071 (= res!1193680 (not call!186684))))

(declare-fun b!2880072 () Bool)

(declare-fun e!1822205 () Bool)

(declare-fun e!1822207 () Bool)

(assert (=> b!2880072 (= e!1822205 e!1822207)))

(declare-fun res!1193685 () Bool)

(assert (=> b!2880072 (=> (not res!1193685) (not e!1822207))))

(assert (=> b!2880072 (= res!1193685 (not lt!1019487))))

(declare-fun bm!186679 () Bool)

(assert (=> bm!186679 (= call!186684 (isEmpty!18740 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun d!832874 () Bool)

(declare-fun e!1822202 () Bool)

(assert (=> d!832874 e!1822202))

(declare-fun c!467494 () Bool)

(assert (=> d!832874 (= c!467494 (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun e!1822203 () Bool)

(assert (=> d!832874 (= lt!1019487 e!1822203)))

(declare-fun c!467496 () Bool)

(assert (=> d!832874 (= c!467496 (isEmpty!18740 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))))))

(assert (=> d!832874 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832874 (= (matchR!3748 (h!39831 (exprs!3208 c!7184)) (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))) lt!1019487)))

(declare-fun b!2880073 () Bool)

(assert (=> b!2880073 (= e!1822201 (= (head!6355 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))) (c!467357 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun b!2880074 () Bool)

(declare-fun res!1193686 () Bool)

(assert (=> b!2880074 (=> res!1193686 e!1822205)))

(assert (=> b!2880074 (= res!1193686 (not (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> b!2880074 (= e!1822206 e!1822205)))

(declare-fun b!2880075 () Bool)

(declare-fun res!1193681 () Bool)

(assert (=> b!2880075 (=> (not res!1193681) (not e!1822201))))

(assert (=> b!2880075 (= res!1193681 (isEmpty!18740 (tail!4580 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))))))

(declare-fun b!2880076 () Bool)

(assert (=> b!2880076 (= e!1822207 e!1822204)))

(declare-fun res!1193682 () Bool)

(assert (=> b!2880076 (=> res!1193682 e!1822204)))

(assert (=> b!2880076 (= res!1193682 call!186684)))

(declare-fun b!2880077 () Bool)

(assert (=> b!2880077 (= e!1822203 (matchR!3748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))) (tail!4580 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))))))

(declare-fun b!2880078 () Bool)

(declare-fun res!1193684 () Bool)

(assert (=> b!2880078 (=> res!1193684 e!1822205)))

(assert (=> b!2880078 (= res!1193684 e!1822201)))

(declare-fun res!1193679 () Bool)

(assert (=> b!2880078 (=> (not res!1193679) (not e!1822201))))

(assert (=> b!2880078 (= res!1193679 lt!1019487)))

(declare-fun b!2880079 () Bool)

(assert (=> b!2880079 (= e!1822204 (not (= (head!6355 (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184))))) (c!467357 (h!39831 (exprs!3208 c!7184))))))))

(declare-fun b!2880080 () Bool)

(assert (=> b!2880080 (= e!1822203 (nullable!2698 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880081 () Bool)

(assert (=> b!2880081 (= e!1822202 (= lt!1019487 call!186684))))

(declare-fun b!2880082 () Bool)

(assert (=> b!2880082 (= e!1822202 e!1822206)))

(declare-fun c!467495 () Bool)

(assert (=> b!2880082 (= c!467495 (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (= (and d!832874 c!467496) b!2880080))

(assert (= (and d!832874 (not c!467496)) b!2880077))

(assert (= (and d!832874 c!467494) b!2880081))

(assert (= (and d!832874 (not c!467494)) b!2880082))

(assert (= (and b!2880082 c!467495) b!2880070))

(assert (= (and b!2880082 (not c!467495)) b!2880074))

(assert (= (and b!2880074 (not res!1193686)) b!2880078))

(assert (= (and b!2880078 res!1193679) b!2880071))

(assert (= (and b!2880071 res!1193680) b!2880075))

(assert (= (and b!2880075 res!1193681) b!2880073))

(assert (= (and b!2880078 (not res!1193684)) b!2880072))

(assert (= (and b!2880072 res!1193685) b!2880076))

(assert (= (and b!2880076 (not res!1193682)) b!2880069))

(assert (= (and b!2880069 (not res!1193683)) b!2880079))

(assert (= (or b!2880081 b!2880071 b!2880076) bm!186679))

(assert (=> b!2880077 m!3297129))

(declare-fun m!3297289 () Bool)

(assert (=> b!2880077 m!3297289))

(assert (=> b!2880077 m!3297289))

(declare-fun m!3297291 () Bool)

(assert (=> b!2880077 m!3297291))

(assert (=> b!2880077 m!3297129))

(declare-fun m!3297293 () Bool)

(assert (=> b!2880077 m!3297293))

(assert (=> b!2880077 m!3297291))

(assert (=> b!2880077 m!3297293))

(declare-fun m!3297295 () Bool)

(assert (=> b!2880077 m!3297295))

(assert (=> b!2880075 m!3297129))

(assert (=> b!2880075 m!3297293))

(assert (=> b!2880075 m!3297293))

(declare-fun m!3297297 () Bool)

(assert (=> b!2880075 m!3297297))

(assert (=> b!2880073 m!3297129))

(assert (=> b!2880073 m!3297289))

(assert (=> b!2880080 m!3297091))

(assert (=> b!2880079 m!3297129))

(assert (=> b!2880079 m!3297289))

(assert (=> b!2880069 m!3297129))

(assert (=> b!2880069 m!3297293))

(assert (=> b!2880069 m!3297293))

(assert (=> b!2880069 m!3297297))

(assert (=> bm!186679 m!3297129))

(declare-fun m!3297299 () Bool)

(assert (=> bm!186679 m!3297299))

(assert (=> d!832874 m!3297129))

(assert (=> d!832874 m!3297299))

(assert (=> d!832874 m!3297095))

(assert (=> d!832796 d!832874))

(declare-fun d!832876 () Bool)

(assert (=> d!832876 (matchR!3748 (h!39831 (exprs!3208 c!7184)) (get!10349 (getLanguageWitness!448 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> d!832876 true))

(declare-fun _$101!126 () Unit!47997)

(assert (=> d!832876 (= (choose!17030 (h!39831 (exprs!3208 c!7184))) _$101!126)))

(declare-fun bs!523302 () Bool)

(assert (= bs!523302 d!832876))

(assert (=> bs!523302 m!3296995))

(assert (=> bs!523302 m!3296995))

(assert (=> bs!523302 m!3297129))

(assert (=> bs!523302 m!3297129))

(assert (=> bs!523302 m!3297131))

(assert (=> d!832796 d!832876))

(assert (=> b!2879830 d!832854))

(assert (=> b!2879830 d!832856))

(declare-fun d!832878 () Bool)

(declare-fun res!1193687 () Bool)

(declare-fun e!1822208 () Bool)

(assert (=> d!832878 (=> res!1193687 e!1822208)))

(assert (=> d!832878 (= res!1193687 (is-Nil!34411 (exprs!3208 c!7184)))))

(assert (=> d!832878 (= (forall!7092 (exprs!3208 c!7184) lambda!107452) e!1822208)))

(declare-fun b!2880083 () Bool)

(declare-fun e!1822209 () Bool)

(assert (=> b!2880083 (= e!1822208 e!1822209)))

(declare-fun res!1193688 () Bool)

(assert (=> b!2880083 (=> (not res!1193688) (not e!1822209))))

(assert (=> b!2880083 (= res!1193688 (dynLambda!14331 lambda!107452 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880084 () Bool)

(assert (=> b!2880084 (= e!1822209 (forall!7092 (t!233578 (exprs!3208 c!7184)) lambda!107452))))

(assert (= (and d!832878 (not res!1193687)) b!2880083))

(assert (= (and b!2880083 res!1193688) b!2880084))

(declare-fun b_lambda!86277 () Bool)

(assert (=> (not b_lambda!86277) (not b!2880083)))

(declare-fun m!3297301 () Bool)

(assert (=> b!2880083 m!3297301))

(declare-fun m!3297303 () Bool)

(assert (=> b!2880084 m!3297303))

(assert (=> d!832776 d!832878))

(assert (=> d!832802 d!832788))

(assert (=> d!832802 d!832800))

(declare-fun d!832880 () Bool)

(assert (=> d!832880 (= (matchR!3748 (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)) (matchZipper!490 lt!1019387 (v!34548 lt!1019386)))))

(assert (=> d!832880 true))

(declare-fun _$44!1311 () Unit!47997)

(assert (=> d!832880 (= (choose!17031 lt!1019387 (Cons!34413 lt!1019385 Nil!34413) (h!39831 (exprs!3208 c!7184)) (v!34548 lt!1019386)) _$44!1311)))

(declare-fun bs!523303 () Bool)

(assert (= bs!523303 d!832880))

(assert (=> bs!523303 m!3296985))

(assert (=> bs!523303 m!3296967))

(assert (=> d!832802 d!832880))

(assert (=> d!832802 d!832870))

(assert (=> d!832788 d!832834))

(assert (=> d!832788 d!832870))

(declare-fun d!832882 () Bool)

(assert (=> d!832882 (= (isEmpty!18740 (tail!4580 (v!34548 lt!1019386))) (is-Nil!34412 (tail!4580 (v!34548 lt!1019386))))))

(assert (=> b!2879838 d!832882))

(assert (=> b!2879838 d!832842))

(declare-fun d!832884 () Bool)

(assert (=> d!832884 (= (head!6355 (get!10349 lt!1019386)) (h!39832 (get!10349 lt!1019386)))))

(assert (=> b!2879828 d!832884))

(declare-fun b!2880087 () Bool)

(declare-fun res!1193690 () Bool)

(declare-fun e!1822211 () Bool)

(assert (=> b!2880087 (=> (not res!1193690) (not e!1822211))))

(declare-fun lt!1019488 () List!34536)

(assert (=> b!2880087 (= res!1193690 (= (size!26331 lt!1019488) (+ (size!26331 (v!34548 lt!1019431)) (size!26331 (v!34548 lt!1019432)))))))

(declare-fun b!2880088 () Bool)

(assert (=> b!2880088 (= e!1822211 (or (not (= (v!34548 lt!1019432) Nil!34412)) (= lt!1019488 (v!34548 lt!1019431))))))

(declare-fun b!2880086 () Bool)

(declare-fun e!1822210 () List!34536)

(assert (=> b!2880086 (= e!1822210 (Cons!34412 (h!39832 (v!34548 lt!1019431)) (++!8184 (t!233579 (v!34548 lt!1019431)) (v!34548 lt!1019432))))))

(declare-fun d!832886 () Bool)

(assert (=> d!832886 e!1822211))

(declare-fun res!1193689 () Bool)

(assert (=> d!832886 (=> (not res!1193689) (not e!1822211))))

(assert (=> d!832886 (= res!1193689 (= (content!4712 lt!1019488) (set.union (content!4712 (v!34548 lt!1019431)) (content!4712 (v!34548 lt!1019432)))))))

(assert (=> d!832886 (= lt!1019488 e!1822210)))

(declare-fun c!467497 () Bool)

(assert (=> d!832886 (= c!467497 (is-Nil!34412 (v!34548 lt!1019431)))))

(assert (=> d!832886 (= (++!8184 (v!34548 lt!1019431) (v!34548 lt!1019432)) lt!1019488)))

(declare-fun b!2880085 () Bool)

(assert (=> b!2880085 (= e!1822210 (v!34548 lt!1019432))))

(assert (= (and d!832886 c!467497) b!2880085))

(assert (= (and d!832886 (not c!467497)) b!2880086))

(assert (= (and d!832886 res!1193689) b!2880087))

(assert (= (and b!2880087 res!1193690) b!2880088))

(declare-fun m!3297305 () Bool)

(assert (=> b!2880087 m!3297305))

(declare-fun m!3297307 () Bool)

(assert (=> b!2880087 m!3297307))

(declare-fun m!3297309 () Bool)

(assert (=> b!2880087 m!3297309))

(declare-fun m!3297311 () Bool)

(assert (=> b!2880086 m!3297311))

(declare-fun m!3297313 () Bool)

(assert (=> d!832886 m!3297313))

(declare-fun m!3297315 () Bool)

(assert (=> d!832886 m!3297315))

(declare-fun m!3297317 () Bool)

(assert (=> d!832886 m!3297317))

(assert (=> b!2879774 d!832886))

(assert (=> bm!186655 d!832834))

(declare-fun b!2880089 () Bool)

(declare-fun res!1193695 () Bool)

(declare-fun e!1822215 () Bool)

(assert (=> b!2880089 (=> res!1193695 e!1822215)))

(assert (=> b!2880089 (= res!1193695 (not (isEmpty!18740 (tail!4580 (tail!4580 (get!10349 lt!1019386))))))))

(declare-fun b!2880090 () Bool)

(declare-fun e!1822217 () Bool)

(declare-fun lt!1019489 () Bool)

(assert (=> b!2880090 (= e!1822217 (not lt!1019489))))

(declare-fun b!2880091 () Bool)

(declare-fun res!1193692 () Bool)

(declare-fun e!1822212 () Bool)

(assert (=> b!2880091 (=> (not res!1193692) (not e!1822212))))

(declare-fun call!186685 () Bool)

(assert (=> b!2880091 (= res!1193692 (not call!186685))))

(declare-fun b!2880092 () Bool)

(declare-fun e!1822216 () Bool)

(declare-fun e!1822218 () Bool)

(assert (=> b!2880092 (= e!1822216 e!1822218)))

(declare-fun res!1193697 () Bool)

(assert (=> b!2880092 (=> (not res!1193697) (not e!1822218))))

(assert (=> b!2880092 (= res!1193697 (not lt!1019489))))

(declare-fun bm!186680 () Bool)

(assert (=> bm!186680 (= call!186685 (isEmpty!18740 (tail!4580 (get!10349 lt!1019386))))))

(declare-fun d!832888 () Bool)

(declare-fun e!1822213 () Bool)

(assert (=> d!832888 e!1822213))

(declare-fun c!467498 () Bool)

(assert (=> d!832888 (= c!467498 (is-EmptyExpr!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386)))))))

(declare-fun e!1822214 () Bool)

(assert (=> d!832888 (= lt!1019489 e!1822214)))

(declare-fun c!467500 () Bool)

(assert (=> d!832888 (= c!467500 (isEmpty!18740 (tail!4580 (get!10349 lt!1019386))))))

(assert (=> d!832888 (validRegex!3526 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))))))

(assert (=> d!832888 (= (matchR!3748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))) (tail!4580 (get!10349 lt!1019386))) lt!1019489)))

(declare-fun b!2880093 () Bool)

(assert (=> b!2880093 (= e!1822212 (= (head!6355 (tail!4580 (get!10349 lt!1019386))) (c!467357 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))))))))

(declare-fun b!2880094 () Bool)

(declare-fun res!1193698 () Bool)

(assert (=> b!2880094 (=> res!1193698 e!1822216)))

(assert (=> b!2880094 (= res!1193698 (not (is-ElementMatch!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))))))))

(assert (=> b!2880094 (= e!1822217 e!1822216)))

(declare-fun b!2880095 () Bool)

(declare-fun res!1193693 () Bool)

(assert (=> b!2880095 (=> (not res!1193693) (not e!1822212))))

(assert (=> b!2880095 (= res!1193693 (isEmpty!18740 (tail!4580 (tail!4580 (get!10349 lt!1019386)))))))

(declare-fun b!2880096 () Bool)

(assert (=> b!2880096 (= e!1822218 e!1822215)))

(declare-fun res!1193694 () Bool)

(assert (=> b!2880096 (=> res!1193694 e!1822215)))

(assert (=> b!2880096 (= res!1193694 call!186685)))

(declare-fun b!2880097 () Bool)

(assert (=> b!2880097 (= e!1822214 (matchR!3748 (derivativeStep!2331 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))) (head!6355 (tail!4580 (get!10349 lt!1019386)))) (tail!4580 (tail!4580 (get!10349 lt!1019386)))))))

(declare-fun b!2880098 () Bool)

(declare-fun res!1193696 () Bool)

(assert (=> b!2880098 (=> res!1193696 e!1822216)))

(assert (=> b!2880098 (= res!1193696 e!1822212)))

(declare-fun res!1193691 () Bool)

(assert (=> b!2880098 (=> (not res!1193691) (not e!1822212))))

(assert (=> b!2880098 (= res!1193691 lt!1019489)))

(declare-fun b!2880099 () Bool)

(assert (=> b!2880099 (= e!1822215 (not (= (head!6355 (tail!4580 (get!10349 lt!1019386))) (c!467357 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386)))))))))

(declare-fun b!2880100 () Bool)

(assert (=> b!2880100 (= e!1822214 (nullable!2698 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386)))))))

(declare-fun b!2880101 () Bool)

(assert (=> b!2880101 (= e!1822213 (= lt!1019489 call!186685))))

(declare-fun b!2880102 () Bool)

(assert (=> b!2880102 (= e!1822213 e!1822217)))

(declare-fun c!467499 () Bool)

(assert (=> b!2880102 (= c!467499 (is-EmptyLang!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386)))))))

(assert (= (and d!832888 c!467500) b!2880100))

(assert (= (and d!832888 (not c!467500)) b!2880097))

(assert (= (and d!832888 c!467498) b!2880101))

(assert (= (and d!832888 (not c!467498)) b!2880102))

(assert (= (and b!2880102 c!467499) b!2880090))

(assert (= (and b!2880102 (not c!467499)) b!2880094))

(assert (= (and b!2880094 (not res!1193698)) b!2880098))

(assert (= (and b!2880098 res!1193691) b!2880091))

(assert (= (and b!2880091 res!1193692) b!2880095))

(assert (= (and b!2880095 res!1193693) b!2880093))

(assert (= (and b!2880098 (not res!1193696)) b!2880092))

(assert (= (and b!2880092 res!1193697) b!2880096))

(assert (= (and b!2880096 (not res!1193694)) b!2880089))

(assert (= (and b!2880089 (not res!1193695)) b!2880099))

(assert (= (or b!2880101 b!2880091 b!2880096) bm!186680))

(assert (=> b!2880097 m!3297085))

(declare-fun m!3297319 () Bool)

(assert (=> b!2880097 m!3297319))

(assert (=> b!2880097 m!3297083))

(assert (=> b!2880097 m!3297319))

(declare-fun m!3297321 () Bool)

(assert (=> b!2880097 m!3297321))

(assert (=> b!2880097 m!3297085))

(declare-fun m!3297323 () Bool)

(assert (=> b!2880097 m!3297323))

(assert (=> b!2880097 m!3297321))

(assert (=> b!2880097 m!3297323))

(declare-fun m!3297325 () Bool)

(assert (=> b!2880097 m!3297325))

(assert (=> b!2880095 m!3297085))

(assert (=> b!2880095 m!3297323))

(assert (=> b!2880095 m!3297323))

(declare-fun m!3297327 () Bool)

(assert (=> b!2880095 m!3297327))

(assert (=> b!2880093 m!3297085))

(assert (=> b!2880093 m!3297319))

(assert (=> b!2880100 m!3297083))

(declare-fun m!3297329 () Bool)

(assert (=> b!2880100 m!3297329))

(assert (=> b!2880099 m!3297085))

(assert (=> b!2880099 m!3297319))

(assert (=> b!2880089 m!3297085))

(assert (=> b!2880089 m!3297323))

(assert (=> b!2880089 m!3297323))

(assert (=> b!2880089 m!3297327))

(assert (=> bm!186680 m!3297085))

(assert (=> bm!186680 m!3297089))

(assert (=> d!832888 m!3297085))

(assert (=> d!832888 m!3297089))

(assert (=> d!832888 m!3297083))

(declare-fun m!3297331 () Bool)

(assert (=> d!832888 m!3297331))

(assert (=> b!2879832 d!832888))

(declare-fun bm!186689 () Bool)

(declare-fun call!186697 () Regex!8748)

(declare-fun call!186694 () Regex!8748)

(assert (=> bm!186689 (= call!186697 call!186694)))

(declare-fun bm!186690 () Bool)

(declare-fun call!186695 () Regex!8748)

(declare-fun c!467511 () Bool)

(assert (=> bm!186690 (= call!186695 (derivativeStep!2331 (ite c!467511 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) (head!6355 (get!10349 lt!1019386))))))

(declare-fun b!2880123 () Bool)

(declare-fun c!467512 () Bool)

(assert (=> b!2880123 (= c!467512 (nullable!2698 (regOne!18008 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun e!1822231 () Regex!8748)

(declare-fun e!1822233 () Regex!8748)

(assert (=> b!2880123 (= e!1822231 e!1822233)))

(declare-fun b!2880124 () Bool)

(declare-fun call!186696 () Regex!8748)

(assert (=> b!2880124 (= e!1822233 (Union!8748 (Concat!14069 call!186696 (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) call!186695))))

(declare-fun b!2880125 () Bool)

(declare-fun e!1822230 () Regex!8748)

(assert (=> b!2880125 (= e!1822230 (ite (= (head!6355 (get!10349 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184)))) EmptyExpr!8748 EmptyLang!8748))))

(declare-fun b!2880126 () Bool)

(declare-fun e!1822229 () Regex!8748)

(assert (=> b!2880126 (= e!1822229 (Union!8748 call!186695 call!186694))))

(declare-fun b!2880127 () Bool)

(assert (=> b!2880127 (= e!1822229 e!1822231)))

(declare-fun c!467515 () Bool)

(assert (=> b!2880127 (= c!467515 (is-Star!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun bm!186691 () Bool)

(assert (=> bm!186691 (= call!186696 call!186697)))

(declare-fun d!832890 () Bool)

(declare-fun lt!1019492 () Regex!8748)

(assert (=> d!832890 (validRegex!3526 lt!1019492)))

(declare-fun e!1822232 () Regex!8748)

(assert (=> d!832890 (= lt!1019492 e!1822232)))

(declare-fun c!467513 () Bool)

(assert (=> d!832890 (= c!467513 (or (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))) (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> d!832890 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832890 (= (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (get!10349 lt!1019386))) lt!1019492)))

(declare-fun bm!186692 () Bool)

(assert (=> bm!186692 (= call!186694 (derivativeStep!2331 (ite c!467511 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (ite c!467515 (reg!9077 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) (head!6355 (get!10349 lt!1019386))))))

(declare-fun b!2880128 () Bool)

(assert (=> b!2880128 (= e!1822233 (Union!8748 (Concat!14069 call!186696 (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) EmptyLang!8748))))

(declare-fun b!2880129 () Bool)

(assert (=> b!2880129 (= c!467511 (is-Union!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> b!2880129 (= e!1822230 e!1822229)))

(declare-fun b!2880130 () Bool)

(assert (=> b!2880130 (= e!1822232 e!1822230)))

(declare-fun c!467514 () Bool)

(assert (=> b!2880130 (= c!467514 (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880131 () Bool)

(assert (=> b!2880131 (= e!1822231 (Concat!14069 call!186697 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880132 () Bool)

(assert (=> b!2880132 (= e!1822232 EmptyLang!8748)))

(assert (= (and d!832890 c!467513) b!2880132))

(assert (= (and d!832890 (not c!467513)) b!2880130))

(assert (= (and b!2880130 c!467514) b!2880125))

(assert (= (and b!2880130 (not c!467514)) b!2880129))

(assert (= (and b!2880129 c!467511) b!2880126))

(assert (= (and b!2880129 (not c!467511)) b!2880127))

(assert (= (and b!2880127 c!467515) b!2880131))

(assert (= (and b!2880127 (not c!467515)) b!2880123))

(assert (= (and b!2880123 c!467512) b!2880124))

(assert (= (and b!2880123 (not c!467512)) b!2880128))

(assert (= (or b!2880124 b!2880128) bm!186691))

(assert (= (or b!2880131 bm!186691) bm!186689))

(assert (= (or b!2880126 b!2880124) bm!186690))

(assert (= (or b!2880126 bm!186689) bm!186692))

(assert (=> bm!186690 m!3297081))

(declare-fun m!3297333 () Bool)

(assert (=> bm!186690 m!3297333))

(declare-fun m!3297335 () Bool)

(assert (=> b!2880123 m!3297335))

(declare-fun m!3297337 () Bool)

(assert (=> d!832890 m!3297337))

(assert (=> d!832890 m!3297095))

(assert (=> bm!186692 m!3297081))

(declare-fun m!3297339 () Bool)

(assert (=> bm!186692 m!3297339))

(assert (=> b!2879832 d!832890))

(assert (=> b!2879832 d!832884))

(assert (=> b!2879832 d!832856))

(declare-fun d!832892 () Bool)

(assert (=> d!832892 (= (isEmpty!18739 lt!1019442) (not (is-Some!6422 lt!1019442)))))

(assert (=> d!832782 d!832892))

(declare-fun bs!523304 () Bool)

(declare-fun d!832894 () Bool)

(assert (= bs!523304 (and d!832894 d!832832)))

(declare-fun lambda!107478 () Int)

(assert (=> bs!523304 (= (= lambda!107456 lambda!107449) (= lambda!107478 lambda!107469))))

(declare-fun bs!523305 () Bool)

(assert (= bs!523305 (and d!832894 d!832782)))

(assert (=> bs!523305 (not (= lambda!107478 lambda!107456))))

(declare-fun bs!523306 () Bool)

(assert (= bs!523306 (and d!832894 d!832776)))

(assert (=> bs!523306 (not (= lambda!107478 lambda!107452))))

(declare-fun bs!523307 () Bool)

(assert (= bs!523307 (and d!832894 d!832780)))

(assert (=> bs!523307 (not (= lambda!107478 lambda!107453))))

(declare-fun bs!523308 () Bool)

(assert (= bs!523308 (and d!832894 d!832766)))

(assert (=> bs!523308 (not (= lambda!107478 lambda!107449))))

(assert (=> d!832894 true))

(assert (=> d!832894 (< (dynLambda!14330 order!18149 lambda!107456) (dynLambda!14330 order!18149 lambda!107478))))

(assert (=> d!832894 (= (exists!1187 (exprs!3208 lt!1019384) lambda!107456) (not (forall!7092 (exprs!3208 lt!1019384) lambda!107478)))))

(declare-fun bs!523309 () Bool)

(assert (= bs!523309 d!832894))

(declare-fun m!3297341 () Bool)

(assert (=> bs!523309 m!3297341))

(assert (=> d!832782 d!832894))

(declare-fun bm!186693 () Bool)

(declare-fun call!186698 () Option!6423)

(declare-fun c!467519 () Bool)

(assert (=> bm!186693 (= call!186698 (getLanguageWitness!448 (ite c!467519 (regOne!18009 (h!39831 (exprs!3208 lt!1019384))) (regOne!18008 (h!39831 (exprs!3208 lt!1019384))))))))

(declare-fun bm!186694 () Bool)

(declare-fun call!186699 () Option!6423)

(assert (=> bm!186694 (= call!186699 (getLanguageWitness!448 (ite c!467519 (regTwo!18009 (h!39831 (exprs!3208 lt!1019384))) (regTwo!18008 (h!39831 (exprs!3208 lt!1019384))))))))

(declare-fun b!2880133 () Bool)

(declare-fun e!1822239 () Option!6423)

(assert (=> b!2880133 (= e!1822239 call!186699)))

(declare-fun b!2880134 () Bool)

(declare-fun e!1822237 () Option!6423)

(assert (=> b!2880134 (= e!1822237 None!6422)))

(declare-fun b!2880136 () Bool)

(declare-fun e!1822238 () Option!6423)

(assert (=> b!2880136 (= e!1822238 (Some!6422 (Cons!34412 (c!467357 (h!39831 (exprs!3208 lt!1019384))) Nil!34412)))))

(declare-fun b!2880137 () Bool)

(declare-fun e!1822240 () Option!6423)

(assert (=> b!2880137 (= e!1822240 e!1822239)))

(declare-fun lt!1019495 () Option!6423)

(assert (=> b!2880137 (= lt!1019495 call!186698)))

(declare-fun c!467523 () Bool)

(assert (=> b!2880137 (= c!467523 (is-Some!6422 lt!1019495))))

(declare-fun b!2880138 () Bool)

(declare-fun e!1822236 () Option!6423)

(assert (=> b!2880138 (= e!1822238 e!1822236)))

(declare-fun c!467521 () Bool)

(assert (=> b!2880138 (= c!467521 (is-Star!8748 (h!39831 (exprs!3208 lt!1019384))))))

(declare-fun b!2880139 () Bool)

(declare-fun e!1822241 () Option!6423)

(assert (=> b!2880139 (= e!1822241 (Some!6422 Nil!34412))))

(declare-fun b!2880140 () Bool)

(assert (=> b!2880140 (= e!1822239 lt!1019495)))

(declare-fun b!2880141 () Bool)

(declare-fun c!467522 () Bool)

(assert (=> b!2880141 (= c!467522 (is-ElementMatch!8748 (h!39831 (exprs!3208 lt!1019384))))))

(assert (=> b!2880141 (= e!1822237 e!1822238)))

(declare-fun b!2880142 () Bool)

(declare-fun e!1822235 () Option!6423)

(assert (=> b!2880142 (= e!1822235 None!6422)))

(declare-fun b!2880143 () Bool)

(assert (=> b!2880143 (= e!1822236 (Some!6422 Nil!34412))))

(declare-fun b!2880144 () Bool)

(assert (=> b!2880144 (= e!1822241 e!1822237)))

(declare-fun c!467518 () Bool)

(assert (=> b!2880144 (= c!467518 (is-EmptyLang!8748 (h!39831 (exprs!3208 lt!1019384))))))

(declare-fun d!832896 () Bool)

(declare-fun c!467517 () Bool)

(assert (=> d!832896 (= c!467517 (is-EmptyExpr!8748 (h!39831 (exprs!3208 lt!1019384))))))

(assert (=> d!832896 (= (getLanguageWitness!448 (h!39831 (exprs!3208 lt!1019384))) e!1822241)))

(declare-fun b!2880135 () Bool)

(declare-fun c!467520 () Bool)

(declare-fun lt!1019494 () Option!6423)

(assert (=> b!2880135 (= c!467520 (is-Some!6422 lt!1019494))))

(assert (=> b!2880135 (= lt!1019494 call!186699)))

(declare-fun e!1822234 () Option!6423)

(assert (=> b!2880135 (= e!1822234 e!1822235)))

(declare-fun b!2880145 () Bool)

(declare-fun lt!1019493 () Option!6423)

(assert (=> b!2880145 (= e!1822235 (Some!6422 (++!8184 (v!34548 lt!1019493) (v!34548 lt!1019494))))))

(declare-fun b!2880146 () Bool)

(assert (=> b!2880146 (= c!467519 (is-Union!8748 (h!39831 (exprs!3208 lt!1019384))))))

(assert (=> b!2880146 (= e!1822236 e!1822240)))

(declare-fun b!2880147 () Bool)

(assert (=> b!2880147 (= e!1822234 None!6422)))

(declare-fun b!2880148 () Bool)

(assert (=> b!2880148 (= e!1822240 e!1822234)))

(assert (=> b!2880148 (= lt!1019493 call!186698)))

(declare-fun c!467516 () Bool)

(assert (=> b!2880148 (= c!467516 (is-Some!6422 lt!1019493))))

(assert (= (and d!832896 c!467517) b!2880139))

(assert (= (and d!832896 (not c!467517)) b!2880144))

(assert (= (and b!2880144 c!467518) b!2880134))

(assert (= (and b!2880144 (not c!467518)) b!2880141))

(assert (= (and b!2880141 c!467522) b!2880136))

(assert (= (and b!2880141 (not c!467522)) b!2880138))

(assert (= (and b!2880138 c!467521) b!2880143))

(assert (= (and b!2880138 (not c!467521)) b!2880146))

(assert (= (and b!2880146 c!467519) b!2880137))

(assert (= (and b!2880146 (not c!467519)) b!2880148))

(assert (= (and b!2880137 c!467523) b!2880140))

(assert (= (and b!2880137 (not c!467523)) b!2880133))

(assert (= (and b!2880148 c!467516) b!2880135))

(assert (= (and b!2880148 (not c!467516)) b!2880147))

(assert (= (and b!2880135 c!467520) b!2880145))

(assert (= (and b!2880135 (not c!467520)) b!2880142))

(assert (= (or b!2880133 b!2880135) bm!186694))

(assert (= (or b!2880137 b!2880148) bm!186693))

(declare-fun m!3297343 () Bool)

(assert (=> bm!186693 m!3297343))

(declare-fun m!3297345 () Bool)

(assert (=> bm!186694 m!3297345))

(declare-fun m!3297347 () Bool)

(assert (=> b!2880145 m!3297347))

(assert (=> b!2879790 d!832896))

(assert (=> d!832784 d!832868))

(assert (=> d!832784 d!832870))

(assert (=> b!2879835 d!832826))

(assert (=> b!2879834 d!832884))

(assert (=> b!2879842 d!832830))

(declare-fun bs!523310 () Bool)

(declare-fun d!832898 () Bool)

(assert (= bs!523310 (and d!832898 d!832832)))

(declare-fun lambda!107479 () Int)

(assert (=> bs!523310 (not (= lambda!107479 lambda!107469))))

(declare-fun bs!523311 () Bool)

(assert (= bs!523311 (and d!832898 d!832782)))

(assert (=> bs!523311 (= lambda!107479 lambda!107456)))

(declare-fun bs!523312 () Bool)

(assert (= bs!523312 (and d!832898 d!832894)))

(assert (=> bs!523312 (not (= lambda!107479 lambda!107478))))

(declare-fun bs!523313 () Bool)

(assert (= bs!523313 (and d!832898 d!832776)))

(assert (=> bs!523313 (not (= lambda!107479 lambda!107452))))

(declare-fun bs!523314 () Bool)

(assert (= bs!523314 (and d!832898 d!832780)))

(assert (=> bs!523314 (not (= lambda!107479 lambda!107453))))

(declare-fun bs!523315 () Bool)

(assert (= bs!523315 (and d!832898 d!832766)))

(assert (=> bs!523315 (= lambda!107479 lambda!107449)))

(assert (=> d!832898 (= (lostCause!840 lt!1019384) (exists!1187 (exprs!3208 lt!1019384) lambda!107479))))

(declare-fun bs!523316 () Bool)

(assert (= bs!523316 d!832898))

(declare-fun m!3297349 () Bool)

(assert (=> bs!523316 m!3297349))

(assert (=> d!832786 d!832898))

(declare-fun d!832900 () Bool)

(assert (=> d!832900 (= (get!10349 (getLanguageWitness!447 lt!1019384)) (v!34548 (getLanguageWitness!447 lt!1019384)))))

(assert (=> d!832786 d!832900))

(declare-fun d!832902 () Bool)

(assert (=> d!832902 (matchZipper!490 (set.insert lt!1019384 (as set.empty (Set Context!5416))) (get!10349 (getLanguageWitness!447 lt!1019384)))))

(assert (=> d!832902 true))

(declare-fun _$31!175 () Unit!47997)

(assert (=> d!832902 (= (choose!17029 lt!1019384) _$31!175)))

(declare-fun bs!523317 () Bool)

(assert (= bs!523317 d!832902))

(assert (=> bs!523317 m!3296975))

(assert (=> bs!523317 m!3296963))

(assert (=> bs!523317 m!3296963))

(assert (=> bs!523317 m!3297099))

(assert (=> bs!523317 m!3296975))

(assert (=> bs!523317 m!3297099))

(assert (=> bs!523317 m!3297101))

(assert (=> d!832786 d!832902))

(assert (=> d!832786 d!832782))

(declare-fun d!832904 () Bool)

(declare-fun c!467525 () Bool)

(assert (=> d!832904 (= c!467525 (isEmpty!18740 (get!10349 (getLanguageWitness!447 lt!1019384))))))

(declare-fun e!1822242 () Bool)

(assert (=> d!832904 (= (matchZipper!490 (set.insert lt!1019384 (as set.empty (Set Context!5416))) (get!10349 (getLanguageWitness!447 lt!1019384))) e!1822242)))

(declare-fun b!2880149 () Bool)

(assert (=> b!2880149 (= e!1822242 (nullableZipper!726 (set.insert lt!1019384 (as set.empty (Set Context!5416)))))))

(declare-fun b!2880150 () Bool)

(assert (=> b!2880150 (= e!1822242 (matchZipper!490 (derivationStepZipper!482 (set.insert lt!1019384 (as set.empty (Set Context!5416))) (head!6355 (get!10349 (getLanguageWitness!447 lt!1019384)))) (tail!4580 (get!10349 (getLanguageWitness!447 lt!1019384)))))))

(assert (= (and d!832904 c!467525) b!2880149))

(assert (= (and d!832904 (not c!467525)) b!2880150))

(assert (=> d!832904 m!3297099))

(declare-fun m!3297351 () Bool)

(assert (=> d!832904 m!3297351))

(assert (=> b!2880149 m!3296975))

(declare-fun m!3297353 () Bool)

(assert (=> b!2880149 m!3297353))

(assert (=> b!2880150 m!3297099))

(declare-fun m!3297355 () Bool)

(assert (=> b!2880150 m!3297355))

(assert (=> b!2880150 m!3296975))

(assert (=> b!2880150 m!3297355))

(declare-fun m!3297357 () Bool)

(assert (=> b!2880150 m!3297357))

(assert (=> b!2880150 m!3297099))

(declare-fun m!3297359 () Bool)

(assert (=> b!2880150 m!3297359))

(assert (=> b!2880150 m!3297357))

(assert (=> b!2880150 m!3297359))

(declare-fun m!3297361 () Bool)

(assert (=> b!2880150 m!3297361))

(assert (=> d!832786 d!832904))

(declare-fun b!2880151 () Bool)

(declare-fun res!1193703 () Bool)

(declare-fun e!1822246 () Bool)

(assert (=> b!2880151 (=> res!1193703 e!1822246)))

(assert (=> b!2880151 (= res!1193703 (not (isEmpty!18740 (tail!4580 (tail!4580 (v!34548 lt!1019386))))))))

(declare-fun b!2880152 () Bool)

(declare-fun e!1822248 () Bool)

(declare-fun lt!1019496 () Bool)

(assert (=> b!2880152 (= e!1822248 (not lt!1019496))))

(declare-fun b!2880153 () Bool)

(declare-fun res!1193700 () Bool)

(declare-fun e!1822243 () Bool)

(assert (=> b!2880153 (=> (not res!1193700) (not e!1822243))))

(declare-fun call!186700 () Bool)

(assert (=> b!2880153 (= res!1193700 (not call!186700))))

(declare-fun b!2880154 () Bool)

(declare-fun e!1822247 () Bool)

(declare-fun e!1822249 () Bool)

(assert (=> b!2880154 (= e!1822247 e!1822249)))

(declare-fun res!1193705 () Bool)

(assert (=> b!2880154 (=> (not res!1193705) (not e!1822249))))

(assert (=> b!2880154 (= res!1193705 (not lt!1019496))))

(declare-fun bm!186695 () Bool)

(assert (=> bm!186695 (= call!186700 (isEmpty!18740 (tail!4580 (v!34548 lt!1019386))))))

(declare-fun d!832906 () Bool)

(declare-fun e!1822244 () Bool)

(assert (=> d!832906 e!1822244))

(declare-fun c!467526 () Bool)

(assert (=> d!832906 (= c!467526 (is-EmptyExpr!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386)))))))

(declare-fun e!1822245 () Bool)

(assert (=> d!832906 (= lt!1019496 e!1822245)))

(declare-fun c!467528 () Bool)

(assert (=> d!832906 (= c!467528 (isEmpty!18740 (tail!4580 (v!34548 lt!1019386))))))

(assert (=> d!832906 (validRegex!3526 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))))))

(assert (=> d!832906 (= (matchR!3748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))) (tail!4580 (v!34548 lt!1019386))) lt!1019496)))

(declare-fun b!2880155 () Bool)

(assert (=> b!2880155 (= e!1822243 (= (head!6355 (tail!4580 (v!34548 lt!1019386))) (c!467357 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))))))))

(declare-fun b!2880156 () Bool)

(declare-fun res!1193706 () Bool)

(assert (=> b!2880156 (=> res!1193706 e!1822247)))

(assert (=> b!2880156 (= res!1193706 (not (is-ElementMatch!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))))))))

(assert (=> b!2880156 (= e!1822248 e!1822247)))

(declare-fun b!2880157 () Bool)

(declare-fun res!1193701 () Bool)

(assert (=> b!2880157 (=> (not res!1193701) (not e!1822243))))

(assert (=> b!2880157 (= res!1193701 (isEmpty!18740 (tail!4580 (tail!4580 (v!34548 lt!1019386)))))))

(declare-fun b!2880158 () Bool)

(assert (=> b!2880158 (= e!1822249 e!1822246)))

(declare-fun res!1193702 () Bool)

(assert (=> b!2880158 (=> res!1193702 e!1822246)))

(assert (=> b!2880158 (= res!1193702 call!186700)))

(declare-fun b!2880159 () Bool)

(assert (=> b!2880159 (= e!1822245 (matchR!3748 (derivativeStep!2331 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))) (head!6355 (tail!4580 (v!34548 lt!1019386)))) (tail!4580 (tail!4580 (v!34548 lt!1019386)))))))

(declare-fun b!2880160 () Bool)

(declare-fun res!1193704 () Bool)

(assert (=> b!2880160 (=> res!1193704 e!1822247)))

(assert (=> b!2880160 (= res!1193704 e!1822243)))

(declare-fun res!1193699 () Bool)

(assert (=> b!2880160 (=> (not res!1193699) (not e!1822243))))

(assert (=> b!2880160 (= res!1193699 lt!1019496)))

(declare-fun b!2880161 () Bool)

(assert (=> b!2880161 (= e!1822246 (not (= (head!6355 (tail!4580 (v!34548 lt!1019386))) (c!467357 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386)))))))))

(declare-fun b!2880162 () Bool)

(assert (=> b!2880162 (= e!1822245 (nullable!2698 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386)))))))

(declare-fun b!2880163 () Bool)

(assert (=> b!2880163 (= e!1822244 (= lt!1019496 call!186700))))

(declare-fun b!2880164 () Bool)

(assert (=> b!2880164 (= e!1822244 e!1822248)))

(declare-fun c!467527 () Bool)

(assert (=> b!2880164 (= c!467527 (is-EmptyLang!8748 (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386)))))))

(assert (= (and d!832906 c!467528) b!2880162))

(assert (= (and d!832906 (not c!467528)) b!2880159))

(assert (= (and d!832906 c!467526) b!2880163))

(assert (= (and d!832906 (not c!467526)) b!2880164))

(assert (= (and b!2880164 c!467527) b!2880152))

(assert (= (and b!2880164 (not c!467527)) b!2880156))

(assert (= (and b!2880156 (not res!1193706)) b!2880160))

(assert (= (and b!2880160 res!1193699) b!2880153))

(assert (= (and b!2880153 res!1193700) b!2880157))

(assert (= (and b!2880157 res!1193701) b!2880155))

(assert (= (and b!2880160 (not res!1193704)) b!2880154))

(assert (= (and b!2880154 res!1193705) b!2880158))

(assert (= (and b!2880158 (not res!1193702)) b!2880151))

(assert (= (and b!2880151 (not res!1193703)) b!2880161))

(assert (= (or b!2880163 b!2880153 b!2880158) bm!186695))

(assert (=> b!2880159 m!3297109))

(assert (=> b!2880159 m!3297245))

(assert (=> b!2880159 m!3297107))

(assert (=> b!2880159 m!3297245))

(declare-fun m!3297363 () Bool)

(assert (=> b!2880159 m!3297363))

(assert (=> b!2880159 m!3297109))

(assert (=> b!2880159 m!3297249))

(assert (=> b!2880159 m!3297363))

(assert (=> b!2880159 m!3297249))

(declare-fun m!3297365 () Bool)

(assert (=> b!2880159 m!3297365))

(assert (=> b!2880157 m!3297109))

(assert (=> b!2880157 m!3297249))

(assert (=> b!2880157 m!3297249))

(declare-fun m!3297367 () Bool)

(assert (=> b!2880157 m!3297367))

(assert (=> b!2880155 m!3297109))

(assert (=> b!2880155 m!3297245))

(assert (=> b!2880162 m!3297107))

(declare-fun m!3297369 () Bool)

(assert (=> b!2880162 m!3297369))

(assert (=> b!2880161 m!3297109))

(assert (=> b!2880161 m!3297245))

(assert (=> b!2880151 m!3297109))

(assert (=> b!2880151 m!3297249))

(assert (=> b!2880151 m!3297249))

(assert (=> b!2880151 m!3297367))

(assert (=> bm!186695 m!3297109))

(assert (=> bm!186695 m!3297113))

(assert (=> d!832906 m!3297109))

(assert (=> d!832906 m!3297113))

(assert (=> d!832906 m!3297107))

(declare-fun m!3297371 () Bool)

(assert (=> d!832906 m!3297371))

(assert (=> b!2879846 d!832906))

(declare-fun bm!186696 () Bool)

(declare-fun call!186704 () Regex!8748)

(declare-fun call!186701 () Regex!8748)

(assert (=> bm!186696 (= call!186704 call!186701)))

(declare-fun bm!186697 () Bool)

(declare-fun c!467529 () Bool)

(declare-fun call!186702 () Regex!8748)

(assert (=> bm!186697 (= call!186702 (derivativeStep!2331 (ite c!467529 (regOne!18009 (h!39831 (exprs!3208 c!7184))) (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) (head!6355 (v!34548 lt!1019386))))))

(declare-fun b!2880165 () Bool)

(declare-fun c!467530 () Bool)

(assert (=> b!2880165 (= c!467530 (nullable!2698 (regOne!18008 (h!39831 (exprs!3208 c!7184)))))))

(declare-fun e!1822252 () Regex!8748)

(declare-fun e!1822254 () Regex!8748)

(assert (=> b!2880165 (= e!1822252 e!1822254)))

(declare-fun b!2880166 () Bool)

(declare-fun call!186703 () Regex!8748)

(assert (=> b!2880166 (= e!1822254 (Union!8748 (Concat!14069 call!186703 (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) call!186702))))

(declare-fun b!2880167 () Bool)

(declare-fun e!1822251 () Regex!8748)

(assert (=> b!2880167 (= e!1822251 (ite (= (head!6355 (v!34548 lt!1019386)) (c!467357 (h!39831 (exprs!3208 c!7184)))) EmptyExpr!8748 EmptyLang!8748))))

(declare-fun b!2880168 () Bool)

(declare-fun e!1822250 () Regex!8748)

(assert (=> b!2880168 (= e!1822250 (Union!8748 call!186702 call!186701))))

(declare-fun b!2880169 () Bool)

(assert (=> b!2880169 (= e!1822250 e!1822252)))

(declare-fun c!467533 () Bool)

(assert (=> b!2880169 (= c!467533 (is-Star!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun bm!186698 () Bool)

(assert (=> bm!186698 (= call!186703 call!186704)))

(declare-fun d!832908 () Bool)

(declare-fun lt!1019497 () Regex!8748)

(assert (=> d!832908 (validRegex!3526 lt!1019497)))

(declare-fun e!1822253 () Regex!8748)

(assert (=> d!832908 (= lt!1019497 e!1822253)))

(declare-fun c!467531 () Bool)

(assert (=> d!832908 (= c!467531 (or (is-EmptyExpr!8748 (h!39831 (exprs!3208 c!7184))) (is-EmptyLang!8748 (h!39831 (exprs!3208 c!7184)))))))

(assert (=> d!832908 (validRegex!3526 (h!39831 (exprs!3208 c!7184)))))

(assert (=> d!832908 (= (derivativeStep!2331 (h!39831 (exprs!3208 c!7184)) (head!6355 (v!34548 lt!1019386))) lt!1019497)))

(declare-fun bm!186699 () Bool)

(assert (=> bm!186699 (= call!186701 (derivativeStep!2331 (ite c!467529 (regTwo!18009 (h!39831 (exprs!3208 c!7184))) (ite c!467533 (reg!9077 (h!39831 (exprs!3208 c!7184))) (regOne!18008 (h!39831 (exprs!3208 c!7184))))) (head!6355 (v!34548 lt!1019386))))))

(declare-fun b!2880170 () Bool)

(assert (=> b!2880170 (= e!1822254 (Union!8748 (Concat!14069 call!186703 (regTwo!18008 (h!39831 (exprs!3208 c!7184)))) EmptyLang!8748))))

(declare-fun b!2880171 () Bool)

(assert (=> b!2880171 (= c!467529 (is-Union!8748 (h!39831 (exprs!3208 c!7184))))))

(assert (=> b!2880171 (= e!1822251 e!1822250)))

(declare-fun b!2880172 () Bool)

(assert (=> b!2880172 (= e!1822253 e!1822251)))

(declare-fun c!467532 () Bool)

(assert (=> b!2880172 (= c!467532 (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880173 () Bool)

(assert (=> b!2880173 (= e!1822252 (Concat!14069 call!186704 (h!39831 (exprs!3208 c!7184))))))

(declare-fun b!2880174 () Bool)

(assert (=> b!2880174 (= e!1822253 EmptyLang!8748)))

(assert (= (and d!832908 c!467531) b!2880174))

(assert (= (and d!832908 (not c!467531)) b!2880172))

(assert (= (and b!2880172 c!467532) b!2880167))

(assert (= (and b!2880172 (not c!467532)) b!2880171))

(assert (= (and b!2880171 c!467529) b!2880168))

(assert (= (and b!2880171 (not c!467529)) b!2880169))

(assert (= (and b!2880169 c!467533) b!2880173))

(assert (= (and b!2880169 (not c!467533)) b!2880165))

(assert (= (and b!2880165 c!467530) b!2880166))

(assert (= (and b!2880165 (not c!467530)) b!2880170))

(assert (= (or b!2880166 b!2880170) bm!186698))

(assert (= (or b!2880173 bm!186698) bm!186696))

(assert (= (or b!2880168 b!2880166) bm!186697))

(assert (= (or b!2880168 bm!186696) bm!186699))

(assert (=> bm!186697 m!3297105))

(declare-fun m!3297373 () Bool)

(assert (=> bm!186697 m!3297373))

(assert (=> b!2880165 m!3297335))

(declare-fun m!3297375 () Bool)

(assert (=> d!832908 m!3297375))

(assert (=> d!832908 m!3297095))

(assert (=> bm!186699 m!3297105))

(declare-fun m!3297377 () Bool)

(assert (=> bm!186699 m!3297377))

(assert (=> b!2879846 d!832908))

(assert (=> b!2879846 d!832830))

(assert (=> b!2879846 d!832842))

(declare-fun d!832910 () Bool)

(declare-fun c!467534 () Bool)

(assert (=> d!832910 (= c!467534 (isEmpty!18740 (tail!4580 (get!10349 lt!1019383))))))

(declare-fun e!1822255 () Bool)

(assert (=> d!832910 (= (matchZipper!490 (derivationStepZipper!482 lt!1019388 (head!6355 (get!10349 lt!1019383))) (tail!4580 (get!10349 lt!1019383))) e!1822255)))

(declare-fun b!2880175 () Bool)

(assert (=> b!2880175 (= e!1822255 (nullableZipper!726 (derivationStepZipper!482 lt!1019388 (head!6355 (get!10349 lt!1019383)))))))

(declare-fun b!2880176 () Bool)

(assert (=> b!2880176 (= e!1822255 (matchZipper!490 (derivationStepZipper!482 (derivationStepZipper!482 lt!1019388 (head!6355 (get!10349 lt!1019383))) (head!6355 (tail!4580 (get!10349 lt!1019383)))) (tail!4580 (tail!4580 (get!10349 lt!1019383)))))))

(assert (= (and d!832910 c!467534) b!2880175))

(assert (= (and d!832910 (not c!467534)) b!2880176))

(assert (=> d!832910 m!3297125))

(declare-fun m!3297379 () Bool)

(assert (=> d!832910 m!3297379))

(assert (=> b!2880175 m!3297123))

(declare-fun m!3297381 () Bool)

(assert (=> b!2880175 m!3297381))

(assert (=> b!2880176 m!3297125))

(declare-fun m!3297383 () Bool)

(assert (=> b!2880176 m!3297383))

(assert (=> b!2880176 m!3297123))

(assert (=> b!2880176 m!3297383))

(declare-fun m!3297385 () Bool)

(assert (=> b!2880176 m!3297385))

(assert (=> b!2880176 m!3297125))

(declare-fun m!3297387 () Bool)

(assert (=> b!2880176 m!3297387))

(assert (=> b!2880176 m!3297385))

(assert (=> b!2880176 m!3297387))

(declare-fun m!3297389 () Bool)

(assert (=> b!2880176 m!3297389))

(assert (=> b!2879857 d!832910))

(declare-fun bs!523318 () Bool)

(declare-fun d!832912 () Bool)

(assert (= bs!523318 (and d!832912 d!832840)))

(declare-fun lambda!107480 () Int)

(assert (=> bs!523318 (= (= (head!6355 (get!10349 lt!1019383)) (head!6355 (v!34548 lt!1019386))) (= lambda!107480 lambda!107472))))

(declare-fun bs!523319 () Bool)

(assert (= bs!523319 (and d!832912 d!832860)))

(assert (=> bs!523319 (= (= (head!6355 (get!10349 lt!1019383)) (head!6355 (v!34548 lt!1019383))) (= lambda!107480 lambda!107476))))

(assert (=> d!832912 true))

(assert (=> d!832912 (= (derivationStepZipper!482 lt!1019388 (head!6355 (get!10349 lt!1019383))) (flatMap!229 lt!1019388 lambda!107480))))

(declare-fun bs!523320 () Bool)

(assert (= bs!523320 d!832912))

(declare-fun m!3297391 () Bool)

(assert (=> bs!523320 m!3297391))

(assert (=> b!2879857 d!832912))

(declare-fun d!832914 () Bool)

(assert (=> d!832914 (= (head!6355 (get!10349 lt!1019383)) (h!39832 (get!10349 lt!1019383)))))

(assert (=> b!2879857 d!832914))

(declare-fun d!832916 () Bool)

(assert (=> d!832916 (= (tail!4580 (get!10349 lt!1019383)) (t!233579 (get!10349 lt!1019383)))))

(assert (=> b!2879857 d!832916))

(declare-fun bs!523321 () Bool)

(declare-fun d!832918 () Bool)

(assert (= bs!523321 (and d!832918 d!832832)))

(declare-fun lambda!107481 () Int)

(assert (=> bs!523321 (not (= lambda!107481 lambda!107469))))

(declare-fun bs!523322 () Bool)

(assert (= bs!523322 (and d!832918 d!832782)))

(assert (=> bs!523322 (= lambda!107481 lambda!107456)))

(declare-fun bs!523323 () Bool)

(assert (= bs!523323 (and d!832918 d!832894)))

(assert (=> bs!523323 (not (= lambda!107481 lambda!107478))))

(declare-fun bs!523324 () Bool)

(assert (= bs!523324 (and d!832918 d!832776)))

(assert (=> bs!523324 (not (= lambda!107481 lambda!107452))))

(declare-fun bs!523325 () Bool)

(assert (= bs!523325 (and d!832918 d!832780)))

(assert (=> bs!523325 (not (= lambda!107481 lambda!107453))))

(declare-fun bs!523326 () Bool)

(assert (= bs!523326 (and d!832918 d!832898)))

(assert (=> bs!523326 (= lambda!107481 lambda!107479)))

(declare-fun bs!523327 () Bool)

(assert (= bs!523327 (and d!832918 d!832766)))

(assert (=> bs!523327 (= lambda!107481 lambda!107449)))

(declare-fun b!2880178 () Bool)

(declare-fun e!1822257 () Option!6423)

(assert (=> b!2880178 (= e!1822257 None!6422)))

(declare-fun b!2880179 () Bool)

(declare-fun c!467535 () Bool)

(declare-fun lt!1019499 () Option!6423)

(assert (=> b!2880179 (= c!467535 (is-Some!6422 lt!1019499))))

(assert (=> b!2880179 (= lt!1019499 (getLanguageWitness!447 (Context!5417 (t!233578 (exprs!3208 (Context!5417 (t!233578 (exprs!3208 lt!1019384))))))))))

(declare-fun e!1822258 () Option!6423)

(assert (=> b!2880179 (= e!1822258 e!1822257)))

(declare-fun b!2880180 () Bool)

(declare-fun e!1822256 () Option!6423)

(assert (=> b!2880180 (= e!1822256 (Some!6422 Nil!34412))))

(declare-fun b!2880181 () Bool)

(declare-fun lt!1019498 () Option!6423)

(assert (=> b!2880181 (= e!1822257 (Some!6422 (++!8184 (v!34548 lt!1019498) (v!34548 lt!1019499))))))

(declare-fun b!2880182 () Bool)

(assert (=> b!2880182 (= e!1822258 None!6422)))

(declare-fun b!2880177 () Bool)

(assert (=> b!2880177 (= e!1822256 e!1822258)))

(assert (=> b!2880177 (= lt!1019498 (getLanguageWitness!448 (h!39831 (exprs!3208 (Context!5417 (t!233578 (exprs!3208 lt!1019384)))))))))

(declare-fun c!467536 () Bool)

(assert (=> b!2880177 (= c!467536 (is-Some!6422 lt!1019498))))

(declare-fun lt!1019500 () Option!6423)

(assert (=> d!832918 (= (isEmpty!18739 lt!1019500) (exists!1187 (exprs!3208 (Context!5417 (t!233578 (exprs!3208 lt!1019384)))) lambda!107481))))

(assert (=> d!832918 (= lt!1019500 e!1822256)))

(declare-fun c!467537 () Bool)

(assert (=> d!832918 (= c!467537 (is-Cons!34411 (exprs!3208 (Context!5417 (t!233578 (exprs!3208 lt!1019384))))))))

(assert (=> d!832918 (= (getLanguageWitness!447 (Context!5417 (t!233578 (exprs!3208 lt!1019384)))) lt!1019500)))

(assert (= (and d!832918 c!467537) b!2880177))

(assert (= (and d!832918 (not c!467537)) b!2880180))

(assert (= (and b!2880177 c!467536) b!2880179))

(assert (= (and b!2880177 (not c!467536)) b!2880182))

(assert (= (and b!2880179 c!467535) b!2880181))

(assert (= (and b!2880179 (not c!467535)) b!2880178))

(declare-fun m!3297393 () Bool)

(assert (=> b!2880179 m!3297393))

(declare-fun m!3297395 () Bool)

(assert (=> b!2880181 m!3297395))

(declare-fun m!3297397 () Bool)

(assert (=> b!2880177 m!3297397))

(declare-fun m!3297399 () Bool)

(assert (=> d!832918 m!3297399))

(declare-fun m!3297401 () Bool)

(assert (=> d!832918 m!3297401))

(assert (=> b!2879792 d!832918))

(assert (=> b!2879844 d!832882))

(assert (=> b!2879844 d!832842))

(assert (=> b!2879856 d!832866))

(declare-fun b!2880194 () Bool)

(declare-fun e!1822261 () Bool)

(declare-fun tp!924087 () Bool)

(declare-fun tp!924085 () Bool)

(assert (=> b!2880194 (= e!1822261 (and tp!924087 tp!924085))))

(declare-fun b!2880193 () Bool)

(declare-fun tp_is_empty!15093 () Bool)

(assert (=> b!2880193 (= e!1822261 tp_is_empty!15093)))

(declare-fun b!2880196 () Bool)

(declare-fun tp!924083 () Bool)

(declare-fun tp!924084 () Bool)

(assert (=> b!2880196 (= e!1822261 (and tp!924083 tp!924084))))

(declare-fun b!2880195 () Bool)

(declare-fun tp!924086 () Bool)

(assert (=> b!2880195 (= e!1822261 tp!924086)))

(assert (=> b!2879866 (= tp!924065 e!1822261)))

(assert (= (and b!2879866 (is-ElementMatch!8748 (h!39831 (exprs!3208 c!7184)))) b!2880193))

(assert (= (and b!2879866 (is-Concat!14069 (h!39831 (exprs!3208 c!7184)))) b!2880194))

(assert (= (and b!2879866 (is-Star!8748 (h!39831 (exprs!3208 c!7184)))) b!2880195))

(assert (= (and b!2879866 (is-Union!8748 (h!39831 (exprs!3208 c!7184)))) b!2880196))

(declare-fun b!2880197 () Bool)

(declare-fun e!1822262 () Bool)

(declare-fun tp!924088 () Bool)

(declare-fun tp!924089 () Bool)

(assert (=> b!2880197 (= e!1822262 (and tp!924088 tp!924089))))

(assert (=> b!2879866 (= tp!924066 e!1822262)))

(assert (= (and b!2879866 (is-Cons!34411 (t!233578 (exprs!3208 c!7184)))) b!2880197))

(declare-fun b_lambda!86279 () Bool)

(assert (= b_lambda!86277 (or d!832776 b_lambda!86279)))

(declare-fun bs!523328 () Bool)

(declare-fun d!832922 () Bool)

(assert (= bs!523328 (and d!832922 d!832776)))

(assert (=> bs!523328 (= (dynLambda!14331 lambda!107452 (h!39831 (exprs!3208 c!7184))) (validRegex!3526 (h!39831 (exprs!3208 c!7184))))))

(assert (=> bs!523328 m!3297095))

(assert (=> b!2880083 d!832922))

(declare-fun b_lambda!86281 () Bool)

(assert (= b_lambda!86275 (or d!832780 b_lambda!86281)))

(declare-fun bs!523329 () Bool)

(declare-fun d!832924 () Bool)

(assert (= bs!523329 (and d!832924 d!832780)))

(assert (=> bs!523329 (= (dynLambda!14331 lambda!107453 (h!39831 (exprs!3208 lt!1019384))) (validRegex!3526 (h!39831 (exprs!3208 lt!1019384))))))

(declare-fun m!3297403 () Bool)

(assert (=> bs!523329 m!3297403))

(assert (=> b!2880038 d!832924))

(push 1)

(assert (not d!832874))

(assert (not b!2880064))

(assert (not b!2880039))

(assert (not bm!186692))

(assert (not bm!186693))

(assert (not d!832910))

(assert (not d!832904))

(assert (not b!2880159))

(assert (not bm!186667))

(assert (not b!2880161))

(assert (not bm!186676))

(assert (not b!2880030))

(assert (not d!832902))

(assert (not b!2880012))

(assert (not b!2880196))

(assert (not b!2880086))

(assert (not b!2880075))

(assert (not b!2879996))

(assert (not b!2880176))

(assert (not bm!186678))

(assert (not b!2880079))

(assert (not bm!186695))

(assert (not b!2880100))

(assert (not b!2880194))

(assert (not b!2880155))

(assert (not bs!523329))

(assert (not b!2880123))

(assert (not b_lambda!86279))

(assert (not bs!523328))

(assert (not b!2880093))

(assert (not b!2880162))

(assert (not b!2880087))

(assert (not d!832860))

(assert (not b!2880080))

(assert (not b!2880040))

(assert (not d!832838))

(assert (not b!2880149))

(assert (not b!2880069))

(assert (not bm!186669))

(assert (not bm!186697))

(assert (not d!832880))

(assert (not d!832858))

(assert (not b!2880175))

(assert (not bm!186668))

(assert (not b!2880181))

(assert (not b!2880145))

(assert (not d!832888))

(assert (not b!2880095))

(assert (not b!2880089))

(assert (not bm!186680))

(assert (not b!2880195))

(assert (not bm!186690))

(assert (not d!832866))

(assert (not b!2880179))

(assert (not b!2880041))

(assert (not bm!186694))

(assert (not d!832894))

(assert (not b!2880165))

(assert (not b!2880151))

(assert (not d!832836))

(assert (not d!832890))

(assert (not d!832918))

(assert (not b!2880084))

(assert (not b!2880077))

(assert (not d!832912))

(assert (not bm!186679))

(assert (not b!2880099))

(assert (not b!2880015))

(assert (not b_lambda!86281))

(assert (not d!832840))

(assert tp_is_empty!15093)

(assert (not d!832832))

(assert (not b!2880177))

(assert (not bm!186699))

(assert (not d!832826))

(assert (not d!832908))

(assert (not b!2880150))

(assert (not d!832844))

(assert (not b!2880073))

(assert (not bm!186666))

(assert (not b!2880157))

(assert (not d!832906))

(assert (not d!832886))

(assert (not b!2880011))

(assert (not d!832876))

(assert (not b!2880014))

(assert (not b!2880097))

(assert (not b!2880197))

(assert (not d!832898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

