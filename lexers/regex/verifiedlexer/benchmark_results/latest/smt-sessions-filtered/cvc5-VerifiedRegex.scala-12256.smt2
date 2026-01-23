; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689782 () Bool)

(assert start!689782)

(declare-fun b!7086707 () Bool)

(declare-fun e!4260406 () Bool)

(declare-fun tp!1946035 () Bool)

(assert (=> b!7086707 (= e!4260406 tp!1946035)))

(declare-fun b!7086708 () Bool)

(declare-fun e!4260405 () Bool)

(declare-fun tp!1946036 () Bool)

(assert (=> b!7086708 (= e!4260405 tp!1946036)))

(declare-fun res!2894854 () Bool)

(declare-fun e!4260404 () Bool)

(assert (=> start!689782 (=> (not res!2894854) (not e!4260404))))

(declare-datatypes ((C!35778 0))(
  ( (C!35779 (val!27595 Int)) )
))
(declare-datatypes ((Regex!17754 0))(
  ( (ElementMatch!17754 (c!1322539 C!35778)) (Concat!26599 (regOne!36020 Regex!17754) (regTwo!36020 Regex!17754)) (EmptyExpr!17754) (Star!17754 (reg!18083 Regex!17754)) (EmptyLang!17754) (Union!17754 (regOne!36021 Regex!17754) (regTwo!36021 Regex!17754)) )
))
(declare-fun r!11554 () Regex!17754)

(declare-fun validRegex!9029 (Regex!17754) Bool)

(assert (=> start!689782 (= res!2894854 (validRegex!9029 r!11554))))

(assert (=> start!689782 e!4260404))

(declare-fun e!4260403 () Bool)

(assert (=> start!689782 e!4260403))

(declare-fun tp_is_empty!44741 () Bool)

(assert (=> start!689782 tp_is_empty!44741))

(declare-datatypes ((List!68717 0))(
  ( (Nil!68593) (Cons!68593 (h!75041 Regex!17754) (t!382502 List!68717)) )
))
(declare-datatypes ((Context!13500 0))(
  ( (Context!13501 (exprs!7250 List!68717)) )
))
(declare-fun c!9994 () Context!13500)

(declare-fun inv!87251 (Context!13500) Bool)

(assert (=> start!689782 (and (inv!87251 c!9994) e!4260405)))

(declare-fun auxCtx!45 () Context!13500)

(assert (=> start!689782 (and (inv!87251 auxCtx!45) e!4260406)))

(declare-fun b!7086709 () Bool)

(assert (=> b!7086709 (= e!4260403 tp_is_empty!44741)))

(declare-fun b!7086710 () Bool)

(declare-fun tp!1946032 () Bool)

(assert (=> b!7086710 (= e!4260403 tp!1946032)))

(declare-fun b!7086711 () Bool)

(declare-fun tp!1946031 () Bool)

(declare-fun tp!1946033 () Bool)

(assert (=> b!7086711 (= e!4260403 (and tp!1946031 tp!1946033))))

(declare-fun b!7086712 () Bool)

(assert (=> b!7086712 (= e!4260404 (not (validRegex!9029 (regTwo!36021 r!11554))))))

(declare-fun lt!2554681 () List!68717)

(declare-fun ++!15927 (List!68717 List!68717) List!68717)

(assert (=> b!7086712 (= lt!2554681 (++!15927 (exprs!7250 c!9994) (exprs!7250 auxCtx!45)))))

(declare-datatypes ((Unit!162207 0))(
  ( (Unit!162208) )
))
(declare-fun lt!2554682 () Unit!162207)

(declare-fun lambda!429144 () Int)

(declare-fun lemmaConcatPreservesForall!1057 (List!68717 List!68717 Int) Unit!162207)

(assert (=> b!7086712 (= lt!2554682 (lemmaConcatPreservesForall!1057 (exprs!7250 c!9994) (exprs!7250 auxCtx!45) lambda!429144))))

(declare-fun lt!2554683 () Unit!162207)

(assert (=> b!7086712 (= lt!2554683 (lemmaConcatPreservesForall!1057 (exprs!7250 c!9994) (exprs!7250 auxCtx!45) lambda!429144))))

(declare-fun lt!2554684 () Unit!162207)

(assert (=> b!7086712 (= lt!2554684 (lemmaConcatPreservesForall!1057 (exprs!7250 c!9994) (exprs!7250 auxCtx!45) lambda!429144))))

(declare-fun b!7086713 () Bool)

(declare-fun res!2894853 () Bool)

(assert (=> b!7086713 (=> (not res!2894853) (not e!4260404))))

(declare-fun a!1901 () C!35778)

(assert (=> b!7086713 (= res!2894853 (and (or (not (is-ElementMatch!17754 r!11554)) (not (= (c!1322539 r!11554) a!1901))) (is-Union!17754 r!11554)))))

(declare-fun b!7086714 () Bool)

(declare-fun tp!1946037 () Bool)

(declare-fun tp!1946034 () Bool)

(assert (=> b!7086714 (= e!4260403 (and tp!1946037 tp!1946034))))

(assert (= (and start!689782 res!2894854) b!7086713))

(assert (= (and b!7086713 res!2894853) b!7086712))

(assert (= (and start!689782 (is-ElementMatch!17754 r!11554)) b!7086709))

(assert (= (and start!689782 (is-Concat!26599 r!11554)) b!7086714))

(assert (= (and start!689782 (is-Star!17754 r!11554)) b!7086710))

(assert (= (and start!689782 (is-Union!17754 r!11554)) b!7086711))

(assert (= start!689782 b!7086708))

(assert (= start!689782 b!7086707))

(declare-fun m!7817220 () Bool)

(assert (=> start!689782 m!7817220))

(declare-fun m!7817222 () Bool)

(assert (=> start!689782 m!7817222))

(declare-fun m!7817224 () Bool)

(assert (=> start!689782 m!7817224))

(declare-fun m!7817226 () Bool)

(assert (=> b!7086712 m!7817226))

(declare-fun m!7817228 () Bool)

(assert (=> b!7086712 m!7817228))

(declare-fun m!7817230 () Bool)

(assert (=> b!7086712 m!7817230))

(assert (=> b!7086712 m!7817226))

(assert (=> b!7086712 m!7817226))

(push 1)

(assert tp_is_empty!44741)

(assert (not b!7086712))

(assert (not start!689782))

(assert (not b!7086714))

(assert (not b!7086711))

(assert (not b!7086707))

(assert (not b!7086710))

(assert (not b!7086708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7086757 () Bool)

(declare-fun e!4260435 () Bool)

(declare-fun call!643963 () Bool)

(assert (=> b!7086757 (= e!4260435 call!643963)))

(declare-fun bm!643957 () Bool)

(declare-fun call!643964 () Bool)

(declare-fun call!643962 () Bool)

(assert (=> bm!643957 (= call!643964 call!643962)))

(declare-fun b!7086758 () Bool)

(declare-fun res!2894871 () Bool)

(assert (=> b!7086758 (=> (not res!2894871) (not e!4260435))))

(assert (=> b!7086758 (= res!2894871 call!643964)))

(declare-fun e!4260433 () Bool)

(assert (=> b!7086758 (= e!4260433 e!4260435)))

(declare-fun b!7086759 () Bool)

(declare-fun e!4260439 () Bool)

(declare-fun e!4260437 () Bool)

(assert (=> b!7086759 (= e!4260439 e!4260437)))

(declare-fun res!2894873 () Bool)

(assert (=> b!7086759 (=> (not res!2894873) (not e!4260437))))

(assert (=> b!7086759 (= res!2894873 call!643963)))

(declare-fun b!7086760 () Bool)

(assert (=> b!7086760 (= e!4260437 call!643964)))

(declare-fun b!7086761 () Bool)

(declare-fun e!4260438 () Bool)

(assert (=> b!7086761 (= e!4260438 e!4260433)))

(declare-fun c!1322546 () Bool)

(assert (=> b!7086761 (= c!1322546 (is-Union!17754 r!11554))))

(declare-fun d!2216139 () Bool)

(declare-fun res!2894875 () Bool)

(declare-fun e!4260436 () Bool)

(assert (=> d!2216139 (=> res!2894875 e!4260436)))

(assert (=> d!2216139 (= res!2894875 (is-ElementMatch!17754 r!11554))))

(assert (=> d!2216139 (= (validRegex!9029 r!11554) e!4260436)))

(declare-fun c!1322545 () Bool)

(declare-fun bm!643958 () Bool)

(assert (=> bm!643958 (= call!643962 (validRegex!9029 (ite c!1322545 (reg!18083 r!11554) (ite c!1322546 (regOne!36021 r!11554) (regTwo!36020 r!11554)))))))

(declare-fun bm!643959 () Bool)

(assert (=> bm!643959 (= call!643963 (validRegex!9029 (ite c!1322546 (regTwo!36021 r!11554) (regOne!36020 r!11554))))))

(declare-fun b!7086762 () Bool)

(declare-fun e!4260434 () Bool)

(assert (=> b!7086762 (= e!4260434 call!643962)))

(declare-fun b!7086763 () Bool)

(declare-fun res!2894872 () Bool)

(assert (=> b!7086763 (=> res!2894872 e!4260439)))

(assert (=> b!7086763 (= res!2894872 (not (is-Concat!26599 r!11554)))))

(assert (=> b!7086763 (= e!4260433 e!4260439)))

(declare-fun b!7086764 () Bool)

(assert (=> b!7086764 (= e!4260438 e!4260434)))

(declare-fun res!2894874 () Bool)

(declare-fun nullable!7402 (Regex!17754) Bool)

(assert (=> b!7086764 (= res!2894874 (not (nullable!7402 (reg!18083 r!11554))))))

(assert (=> b!7086764 (=> (not res!2894874) (not e!4260434))))

(declare-fun b!7086765 () Bool)

(assert (=> b!7086765 (= e!4260436 e!4260438)))

(assert (=> b!7086765 (= c!1322545 (is-Star!17754 r!11554))))

(assert (= (and d!2216139 (not res!2894875)) b!7086765))

(assert (= (and b!7086765 c!1322545) b!7086764))

(assert (= (and b!7086765 (not c!1322545)) b!7086761))

(assert (= (and b!7086764 res!2894874) b!7086762))

(assert (= (and b!7086761 c!1322546) b!7086758))

(assert (= (and b!7086761 (not c!1322546)) b!7086763))

(assert (= (and b!7086758 res!2894871) b!7086757))

(assert (= (and b!7086763 (not res!2894872)) b!7086759))

(assert (= (and b!7086759 res!2894873) b!7086760))

(assert (= (or b!7086758 b!7086760) bm!643957))

(assert (= (or b!7086757 b!7086759) bm!643959))

(assert (= (or b!7086762 bm!643957) bm!643958))

(declare-fun m!7817244 () Bool)

(assert (=> bm!643958 m!7817244))

(declare-fun m!7817246 () Bool)

(assert (=> bm!643959 m!7817246))

(declare-fun m!7817248 () Bool)

(assert (=> b!7086764 m!7817248))

(assert (=> start!689782 d!2216139))

(declare-fun bs!1883007 () Bool)

(declare-fun d!2216141 () Bool)

(assert (= bs!1883007 (and d!2216141 b!7086712)))

(declare-fun lambda!429154 () Int)

(assert (=> bs!1883007 (= lambda!429154 lambda!429144)))

(declare-fun forall!16702 (List!68717 Int) Bool)

(assert (=> d!2216141 (= (inv!87251 c!9994) (forall!16702 (exprs!7250 c!9994) lambda!429154))))

(declare-fun bs!1883008 () Bool)

(assert (= bs!1883008 d!2216141))

(declare-fun m!7817250 () Bool)

(assert (=> bs!1883008 m!7817250))

(assert (=> start!689782 d!2216141))

(declare-fun bs!1883009 () Bool)

(declare-fun d!2216145 () Bool)

(assert (= bs!1883009 (and d!2216145 b!7086712)))

(declare-fun lambda!429155 () Int)

(assert (=> bs!1883009 (= lambda!429155 lambda!429144)))

(declare-fun bs!1883010 () Bool)

(assert (= bs!1883010 (and d!2216145 d!2216141)))

(assert (=> bs!1883010 (= lambda!429155 lambda!429154)))

(assert (=> d!2216145 (= (inv!87251 auxCtx!45) (forall!16702 (exprs!7250 auxCtx!45) lambda!429155))))

(declare-fun bs!1883011 () Bool)

(assert (= bs!1883011 d!2216145))

(declare-fun m!7817252 () Bool)

(assert (=> bs!1883011 m!7817252))

(assert (=> start!689782 d!2216145))

(declare-fun b!7086766 () Bool)

(declare-fun e!4260442 () Bool)

(declare-fun call!643966 () Bool)

(assert (=> b!7086766 (= e!4260442 call!643966)))

(declare-fun bm!643960 () Bool)

(declare-fun call!643967 () Bool)

(declare-fun call!643965 () Bool)

(assert (=> bm!643960 (= call!643967 call!643965)))

(declare-fun b!7086767 () Bool)

(declare-fun res!2894876 () Bool)

(assert (=> b!7086767 (=> (not res!2894876) (not e!4260442))))

(assert (=> b!7086767 (= res!2894876 call!643967)))

(declare-fun e!4260440 () Bool)

(assert (=> b!7086767 (= e!4260440 e!4260442)))

(declare-fun b!7086768 () Bool)

(declare-fun e!4260446 () Bool)

(declare-fun e!4260444 () Bool)

(assert (=> b!7086768 (= e!4260446 e!4260444)))

(declare-fun res!2894878 () Bool)

(assert (=> b!7086768 (=> (not res!2894878) (not e!4260444))))

(assert (=> b!7086768 (= res!2894878 call!643966)))

(declare-fun b!7086769 () Bool)

(assert (=> b!7086769 (= e!4260444 call!643967)))

(declare-fun b!7086770 () Bool)

(declare-fun e!4260445 () Bool)

(assert (=> b!7086770 (= e!4260445 e!4260440)))

(declare-fun c!1322548 () Bool)

(assert (=> b!7086770 (= c!1322548 (is-Union!17754 (regTwo!36021 r!11554)))))

(declare-fun d!2216147 () Bool)

(declare-fun res!2894880 () Bool)

(declare-fun e!4260443 () Bool)

(assert (=> d!2216147 (=> res!2894880 e!4260443)))

(assert (=> d!2216147 (= res!2894880 (is-ElementMatch!17754 (regTwo!36021 r!11554)))))

(assert (=> d!2216147 (= (validRegex!9029 (regTwo!36021 r!11554)) e!4260443)))

(declare-fun bm!643961 () Bool)

(declare-fun c!1322547 () Bool)

(assert (=> bm!643961 (= call!643965 (validRegex!9029 (ite c!1322547 (reg!18083 (regTwo!36021 r!11554)) (ite c!1322548 (regOne!36021 (regTwo!36021 r!11554)) (regTwo!36020 (regTwo!36021 r!11554))))))))

(declare-fun bm!643962 () Bool)

(assert (=> bm!643962 (= call!643966 (validRegex!9029 (ite c!1322548 (regTwo!36021 (regTwo!36021 r!11554)) (regOne!36020 (regTwo!36021 r!11554)))))))

(declare-fun b!7086771 () Bool)

(declare-fun e!4260441 () Bool)

(assert (=> b!7086771 (= e!4260441 call!643965)))

(declare-fun b!7086772 () Bool)

(declare-fun res!2894877 () Bool)

(assert (=> b!7086772 (=> res!2894877 e!4260446)))

(assert (=> b!7086772 (= res!2894877 (not (is-Concat!26599 (regTwo!36021 r!11554))))))

(assert (=> b!7086772 (= e!4260440 e!4260446)))

(declare-fun b!7086773 () Bool)

(assert (=> b!7086773 (= e!4260445 e!4260441)))

(declare-fun res!2894879 () Bool)

(assert (=> b!7086773 (= res!2894879 (not (nullable!7402 (reg!18083 (regTwo!36021 r!11554)))))))

(assert (=> b!7086773 (=> (not res!2894879) (not e!4260441))))

(declare-fun b!7086774 () Bool)

(assert (=> b!7086774 (= e!4260443 e!4260445)))

(assert (=> b!7086774 (= c!1322547 (is-Star!17754 (regTwo!36021 r!11554)))))

(assert (= (and d!2216147 (not res!2894880)) b!7086774))

(assert (= (and b!7086774 c!1322547) b!7086773))

(assert (= (and b!7086774 (not c!1322547)) b!7086770))

(assert (= (and b!7086773 res!2894879) b!7086771))

(assert (= (and b!7086770 c!1322548) b!7086767))

(assert (= (and b!7086770 (not c!1322548)) b!7086772))

(assert (= (and b!7086767 res!2894876) b!7086766))

(assert (= (and b!7086772 (not res!2894877)) b!7086768))

(assert (= (and b!7086768 res!2894878) b!7086769))

(assert (= (or b!7086767 b!7086769) bm!643960))

(assert (= (or b!7086766 b!7086768) bm!643962))

(assert (= (or b!7086771 bm!643960) bm!643961))

(declare-fun m!7817254 () Bool)

(assert (=> bm!643961 m!7817254))

(declare-fun m!7817256 () Bool)

(assert (=> bm!643962 m!7817256))

(declare-fun m!7817258 () Bool)

(assert (=> b!7086773 m!7817258))

(assert (=> b!7086712 d!2216147))

(declare-fun d!2216149 () Bool)

(assert (=> d!2216149 (forall!16702 (++!15927 (exprs!7250 c!9994) (exprs!7250 auxCtx!45)) lambda!429144)))

(declare-fun lt!2554699 () Unit!162207)

(declare-fun choose!54616 (List!68717 List!68717 Int) Unit!162207)

(assert (=> d!2216149 (= lt!2554699 (choose!54616 (exprs!7250 c!9994) (exprs!7250 auxCtx!45) lambda!429144))))

(assert (=> d!2216149 (forall!16702 (exprs!7250 c!9994) lambda!429144)))

(assert (=> d!2216149 (= (lemmaConcatPreservesForall!1057 (exprs!7250 c!9994) (exprs!7250 auxCtx!45) lambda!429144) lt!2554699)))

(declare-fun bs!1883012 () Bool)

(assert (= bs!1883012 d!2216149))

(assert (=> bs!1883012 m!7817230))

(assert (=> bs!1883012 m!7817230))

(declare-fun m!7817260 () Bool)

(assert (=> bs!1883012 m!7817260))

(declare-fun m!7817262 () Bool)

(assert (=> bs!1883012 m!7817262))

(declare-fun m!7817264 () Bool)

(assert (=> bs!1883012 m!7817264))

(assert (=> b!7086712 d!2216149))

(declare-fun d!2216151 () Bool)

(declare-fun e!4260451 () Bool)

(assert (=> d!2216151 e!4260451))

(declare-fun res!2894885 () Bool)

(assert (=> d!2216151 (=> (not res!2894885) (not e!4260451))))

(declare-fun lt!2554705 () List!68717)

(declare-fun content!13920 (List!68717) (Set Regex!17754))

(assert (=> d!2216151 (= res!2894885 (= (content!13920 lt!2554705) (set.union (content!13920 (exprs!7250 c!9994)) (content!13920 (exprs!7250 auxCtx!45)))))))

(declare-fun e!4260452 () List!68717)

(assert (=> d!2216151 (= lt!2554705 e!4260452)))

(declare-fun c!1322551 () Bool)

(assert (=> d!2216151 (= c!1322551 (is-Nil!68593 (exprs!7250 c!9994)))))

(assert (=> d!2216151 (= (++!15927 (exprs!7250 c!9994) (exprs!7250 auxCtx!45)) lt!2554705)))

(declare-fun b!7086783 () Bool)

(assert (=> b!7086783 (= e!4260452 (exprs!7250 auxCtx!45))))

(declare-fun b!7086785 () Bool)

(declare-fun res!2894886 () Bool)

(assert (=> b!7086785 (=> (not res!2894886) (not e!4260451))))

(declare-fun size!41295 (List!68717) Int)

(assert (=> b!7086785 (= res!2894886 (= (size!41295 lt!2554705) (+ (size!41295 (exprs!7250 c!9994)) (size!41295 (exprs!7250 auxCtx!45)))))))

(declare-fun b!7086786 () Bool)

(assert (=> b!7086786 (= e!4260451 (or (not (= (exprs!7250 auxCtx!45) Nil!68593)) (= lt!2554705 (exprs!7250 c!9994))))))

(declare-fun b!7086784 () Bool)

(assert (=> b!7086784 (= e!4260452 (Cons!68593 (h!75041 (exprs!7250 c!9994)) (++!15927 (t!382502 (exprs!7250 c!9994)) (exprs!7250 auxCtx!45))))))

(assert (= (and d!2216151 c!1322551) b!7086783))

(assert (= (and d!2216151 (not c!1322551)) b!7086784))

(assert (= (and d!2216151 res!2894885) b!7086785))

(assert (= (and b!7086785 res!2894886) b!7086786))

(declare-fun m!7817272 () Bool)

(assert (=> d!2216151 m!7817272))

(declare-fun m!7817274 () Bool)

(assert (=> d!2216151 m!7817274))

(declare-fun m!7817276 () Bool)

(assert (=> d!2216151 m!7817276))

(declare-fun m!7817278 () Bool)

(assert (=> b!7086785 m!7817278))

(declare-fun m!7817280 () Bool)

(assert (=> b!7086785 m!7817280))

(declare-fun m!7817282 () Bool)

(assert (=> b!7086785 m!7817282))

(declare-fun m!7817284 () Bool)

(assert (=> b!7086784 m!7817284))

(assert (=> b!7086712 d!2216151))

(declare-fun b!7086800 () Bool)

(declare-fun e!4260455 () Bool)

(declare-fun tp!1946071 () Bool)

(declare-fun tp!1946072 () Bool)

(assert (=> b!7086800 (= e!4260455 (and tp!1946071 tp!1946072))))

(declare-fun b!7086797 () Bool)

(assert (=> b!7086797 (= e!4260455 tp_is_empty!44741)))

(assert (=> b!7086714 (= tp!1946037 e!4260455)))

(declare-fun b!7086798 () Bool)

(declare-fun tp!1946069 () Bool)

(declare-fun tp!1946070 () Bool)

(assert (=> b!7086798 (= e!4260455 (and tp!1946069 tp!1946070))))

(declare-fun b!7086799 () Bool)

(declare-fun tp!1946073 () Bool)

(assert (=> b!7086799 (= e!4260455 tp!1946073)))

(assert (= (and b!7086714 (is-ElementMatch!17754 (regOne!36020 r!11554))) b!7086797))

(assert (= (and b!7086714 (is-Concat!26599 (regOne!36020 r!11554))) b!7086798))

(assert (= (and b!7086714 (is-Star!17754 (regOne!36020 r!11554))) b!7086799))

(assert (= (and b!7086714 (is-Union!17754 (regOne!36020 r!11554))) b!7086800))

(declare-fun b!7086804 () Bool)

(declare-fun e!4260456 () Bool)

(declare-fun tp!1946076 () Bool)

(declare-fun tp!1946077 () Bool)

(assert (=> b!7086804 (= e!4260456 (and tp!1946076 tp!1946077))))

(declare-fun b!7086801 () Bool)

(assert (=> b!7086801 (= e!4260456 tp_is_empty!44741)))

(assert (=> b!7086714 (= tp!1946034 e!4260456)))

(declare-fun b!7086802 () Bool)

(declare-fun tp!1946074 () Bool)

(declare-fun tp!1946075 () Bool)

(assert (=> b!7086802 (= e!4260456 (and tp!1946074 tp!1946075))))

(declare-fun b!7086803 () Bool)

(declare-fun tp!1946078 () Bool)

(assert (=> b!7086803 (= e!4260456 tp!1946078)))

(assert (= (and b!7086714 (is-ElementMatch!17754 (regTwo!36020 r!11554))) b!7086801))

(assert (= (and b!7086714 (is-Concat!26599 (regTwo!36020 r!11554))) b!7086802))

(assert (= (and b!7086714 (is-Star!17754 (regTwo!36020 r!11554))) b!7086803))

(assert (= (and b!7086714 (is-Union!17754 (regTwo!36020 r!11554))) b!7086804))

(declare-fun b!7086815 () Bool)

(declare-fun e!4260463 () Bool)

(declare-fun tp!1946083 () Bool)

(declare-fun tp!1946084 () Bool)

(assert (=> b!7086815 (= e!4260463 (and tp!1946083 tp!1946084))))

(assert (=> b!7086708 (= tp!1946036 e!4260463)))

(assert (= (and b!7086708 (is-Cons!68593 (exprs!7250 c!9994))) b!7086815))

(declare-fun b!7086821 () Bool)

(declare-fun e!4260466 () Bool)

(declare-fun tp!1946087 () Bool)

(declare-fun tp!1946088 () Bool)

(assert (=> b!7086821 (= e!4260466 (and tp!1946087 tp!1946088))))

(declare-fun b!7086818 () Bool)

(assert (=> b!7086818 (= e!4260466 tp_is_empty!44741)))

(assert (=> b!7086710 (= tp!1946032 e!4260466)))

(declare-fun b!7086819 () Bool)

(declare-fun tp!1946085 () Bool)

(declare-fun tp!1946086 () Bool)

(assert (=> b!7086819 (= e!4260466 (and tp!1946085 tp!1946086))))

(declare-fun b!7086820 () Bool)

(declare-fun tp!1946089 () Bool)

(assert (=> b!7086820 (= e!4260466 tp!1946089)))

(assert (= (and b!7086710 (is-ElementMatch!17754 (reg!18083 r!11554))) b!7086818))

(assert (= (and b!7086710 (is-Concat!26599 (reg!18083 r!11554))) b!7086819))

(assert (= (and b!7086710 (is-Star!17754 (reg!18083 r!11554))) b!7086820))

(assert (= (and b!7086710 (is-Union!17754 (reg!18083 r!11554))) b!7086821))

(declare-fun b!7086829 () Bool)

(declare-fun e!4260469 () Bool)

(declare-fun tp!1946092 () Bool)

(declare-fun tp!1946093 () Bool)

(assert (=> b!7086829 (= e!4260469 (and tp!1946092 tp!1946093))))

(declare-fun b!7086826 () Bool)

(assert (=> b!7086826 (= e!4260469 tp_is_empty!44741)))

(assert (=> b!7086711 (= tp!1946031 e!4260469)))

(declare-fun b!7086827 () Bool)

(declare-fun tp!1946090 () Bool)

(declare-fun tp!1946091 () Bool)

(assert (=> b!7086827 (= e!4260469 (and tp!1946090 tp!1946091))))

(declare-fun b!7086828 () Bool)

(declare-fun tp!1946094 () Bool)

(assert (=> b!7086828 (= e!4260469 tp!1946094)))

(assert (= (and b!7086711 (is-ElementMatch!17754 (regOne!36021 r!11554))) b!7086826))

(assert (= (and b!7086711 (is-Concat!26599 (regOne!36021 r!11554))) b!7086827))

(assert (= (and b!7086711 (is-Star!17754 (regOne!36021 r!11554))) b!7086828))

(assert (= (and b!7086711 (is-Union!17754 (regOne!36021 r!11554))) b!7086829))

(declare-fun b!7086835 () Bool)

(declare-fun e!4260472 () Bool)

(declare-fun tp!1946097 () Bool)

(declare-fun tp!1946098 () Bool)

(assert (=> b!7086835 (= e!4260472 (and tp!1946097 tp!1946098))))

(declare-fun b!7086832 () Bool)

(assert (=> b!7086832 (= e!4260472 tp_is_empty!44741)))

(assert (=> b!7086711 (= tp!1946033 e!4260472)))

(declare-fun b!7086833 () Bool)

(declare-fun tp!1946095 () Bool)

(declare-fun tp!1946096 () Bool)

(assert (=> b!7086833 (= e!4260472 (and tp!1946095 tp!1946096))))

(declare-fun b!7086834 () Bool)

(declare-fun tp!1946099 () Bool)

(assert (=> b!7086834 (= e!4260472 tp!1946099)))

(assert (= (and b!7086711 (is-ElementMatch!17754 (regTwo!36021 r!11554))) b!7086832))

(assert (= (and b!7086711 (is-Concat!26599 (regTwo!36021 r!11554))) b!7086833))

(assert (= (and b!7086711 (is-Star!17754 (regTwo!36021 r!11554))) b!7086834))

(assert (= (and b!7086711 (is-Union!17754 (regTwo!36021 r!11554))) b!7086835))

(declare-fun b!7086840 () Bool)

(declare-fun e!4260477 () Bool)

(declare-fun tp!1946100 () Bool)

(declare-fun tp!1946101 () Bool)

(assert (=> b!7086840 (= e!4260477 (and tp!1946100 tp!1946101))))

(assert (=> b!7086707 (= tp!1946035 e!4260477)))

(assert (= (and b!7086707 (is-Cons!68593 (exprs!7250 auxCtx!45))) b!7086840))

(push 1)

(assert (not b!7086829))

(assert (not b!7086803))

(assert (not bm!643962))

(assert (not bm!643959))

(assert (not b!7086834))

(assert (not b!7086785))

(assert (not b!7086784))

(assert (not b!7086773))

(assert (not bm!643958))

(assert (not b!7086798))

(assert (not b!7086802))

(assert (not b!7086800))

(assert (not b!7086819))

(assert (not bm!643961))

(assert tp_is_empty!44741)

(assert (not d!2216145))

(assert (not b!7086833))

(assert (not b!7086815))

(assert (not d!2216141))

(assert (not d!2216151))

(assert (not b!7086828))

(assert (not b!7086764))

(assert (not d!2216149))

(assert (not b!7086799))

(assert (not b!7086827))

(assert (not b!7086804))

(assert (not b!7086821))

(assert (not b!7086835))

(assert (not b!7086840))

(assert (not b!7086820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

