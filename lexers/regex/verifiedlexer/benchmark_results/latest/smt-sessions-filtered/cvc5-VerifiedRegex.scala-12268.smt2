; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690078 () Bool)

(assert start!690078)

(declare-fun b!7089673 () Bool)

(declare-fun res!2895617 () Bool)

(declare-fun e!4262046 () Bool)

(assert (=> b!7089673 (=> (not res!2895617) (not e!4262046))))

(declare-datatypes ((C!35826 0))(
  ( (C!35827 (val!27619 Int)) )
))
(declare-datatypes ((Regex!17778 0))(
  ( (ElementMatch!17778 (c!1323177 C!35826)) (Concat!26623 (regOne!36068 Regex!17778) (regTwo!36068 Regex!17778)) (EmptyExpr!17778) (Star!17778 (reg!18107 Regex!17778)) (EmptyLang!17778) (Union!17778 (regOne!36069 Regex!17778) (regTwo!36069 Regex!17778)) )
))
(declare-fun r!11554 () Regex!17778)

(declare-fun nullable!7418 (Regex!17778) Bool)

(assert (=> b!7089673 (= res!2895617 (nullable!7418 (regOne!36068 r!11554)))))

(declare-fun b!7089674 () Bool)

(declare-fun e!4262049 () Bool)

(declare-fun tp!1947216 () Bool)

(declare-fun tp!1947218 () Bool)

(assert (=> b!7089674 (= e!4262049 (and tp!1947216 tp!1947218))))

(declare-fun b!7089675 () Bool)

(declare-fun tp!1947215 () Bool)

(assert (=> b!7089675 (= e!4262049 tp!1947215)))

(declare-fun b!7089676 () Bool)

(declare-fun e!4262047 () Bool)

(declare-fun tp!1947214 () Bool)

(assert (=> b!7089676 (= e!4262047 tp!1947214)))

(declare-fun res!2895615 () Bool)

(assert (=> start!690078 (=> (not res!2895615) (not e!4262046))))

(declare-fun validRegex!9053 (Regex!17778) Bool)

(assert (=> start!690078 (= res!2895615 (validRegex!9053 r!11554))))

(assert (=> start!690078 e!4262046))

(assert (=> start!690078 e!4262049))

(declare-fun tp_is_empty!44789 () Bool)

(assert (=> start!690078 tp_is_empty!44789))

(declare-datatypes ((List!68741 0))(
  ( (Nil!68617) (Cons!68617 (h!75065 Regex!17778) (t!382526 List!68741)) )
))
(declare-datatypes ((Context!13548 0))(
  ( (Context!13549 (exprs!7274 List!68741)) )
))
(declare-fun c!9994 () Context!13548)

(declare-fun e!4262045 () Bool)

(declare-fun inv!87311 (Context!13548) Bool)

(assert (=> start!690078 (and (inv!87311 c!9994) e!4262045)))

(declare-fun auxCtx!45 () Context!13548)

(assert (=> start!690078 (and (inv!87311 auxCtx!45) e!4262047)))

(declare-fun b!7089677 () Bool)

(declare-fun e!4262048 () Bool)

(assert (=> b!7089677 (= e!4262046 e!4262048)))

(declare-fun res!2895616 () Bool)

(assert (=> b!7089677 (=> (not res!2895616) (not e!4262048))))

(declare-fun lambda!429650 () Int)

(declare-fun forall!16718 (List!68741 Int) Bool)

(assert (=> b!7089677 (= res!2895616 (forall!16718 (exprs!7274 c!9994) lambda!429650))))

(declare-fun b!7089678 () Bool)

(declare-fun tp!1947217 () Bool)

(declare-fun tp!1947213 () Bool)

(assert (=> b!7089678 (= e!4262049 (and tp!1947217 tp!1947213))))

(declare-fun b!7089679 () Bool)

(assert (=> b!7089679 (= e!4262048 (not (forall!16718 (exprs!7274 auxCtx!45) lambda!429650)))))

(declare-fun b!7089680 () Bool)

(declare-fun tp!1947219 () Bool)

(assert (=> b!7089680 (= e!4262045 tp!1947219)))

(declare-fun b!7089681 () Bool)

(declare-fun res!2895618 () Bool)

(assert (=> b!7089681 (=> (not res!2895618) (not e!4262046))))

(declare-fun a!1901 () C!35826)

(assert (=> b!7089681 (= res!2895618 (and (or (not (is-ElementMatch!17778 r!11554)) (not (= (c!1323177 r!11554) a!1901))) (not (is-Union!17778 r!11554)) (is-Concat!26623 r!11554)))))

(declare-fun b!7089682 () Bool)

(assert (=> b!7089682 (= e!4262049 tp_is_empty!44789)))

(assert (= (and start!690078 res!2895615) b!7089681))

(assert (= (and b!7089681 res!2895618) b!7089673))

(assert (= (and b!7089673 res!2895617) b!7089677))

(assert (= (and b!7089677 res!2895616) b!7089679))

(assert (= (and start!690078 (is-ElementMatch!17778 r!11554)) b!7089682))

(assert (= (and start!690078 (is-Concat!26623 r!11554)) b!7089674))

(assert (= (and start!690078 (is-Star!17778 r!11554)) b!7089675))

(assert (= (and start!690078 (is-Union!17778 r!11554)) b!7089678))

(assert (= start!690078 b!7089680))

(assert (= start!690078 b!7089676))

(declare-fun m!7819320 () Bool)

(assert (=> b!7089673 m!7819320))

(declare-fun m!7819322 () Bool)

(assert (=> start!690078 m!7819322))

(declare-fun m!7819324 () Bool)

(assert (=> start!690078 m!7819324))

(declare-fun m!7819326 () Bool)

(assert (=> start!690078 m!7819326))

(declare-fun m!7819328 () Bool)

(assert (=> b!7089677 m!7819328))

(declare-fun m!7819330 () Bool)

(assert (=> b!7089679 m!7819330))

(push 1)

(assert (not b!7089677))

(assert (not b!7089680))

(assert (not b!7089679))

(assert (not b!7089676))

(assert (not start!690078))

(assert (not b!7089675))

(assert (not b!7089674))

(assert (not b!7089678))

(assert (not b!7089673))

(assert tp_is_empty!44789)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216667 () Bool)

(declare-fun nullableFct!2841 (Regex!17778) Bool)

(assert (=> d!2216667 (= (nullable!7418 (regOne!36068 r!11554)) (nullableFct!2841 (regOne!36068 r!11554)))))

(declare-fun bs!1883343 () Bool)

(assert (= bs!1883343 d!2216667))

(declare-fun m!7819344 () Bool)

(assert (=> bs!1883343 m!7819344))

(assert (=> b!7089673 d!2216667))

(declare-fun b!7089731 () Bool)

(declare-fun e!4262082 () Bool)

(declare-fun call!644653 () Bool)

(assert (=> b!7089731 (= e!4262082 call!644653)))

(declare-fun b!7089732 () Bool)

(declare-fun e!4262080 () Bool)

(declare-fun e!4262083 () Bool)

(assert (=> b!7089732 (= e!4262080 e!4262083)))

(declare-fun res!2895644 () Bool)

(assert (=> b!7089732 (=> (not res!2895644) (not e!4262083))))

(declare-fun call!644652 () Bool)

(assert (=> b!7089732 (= res!2895644 call!644652)))

(declare-fun c!1323183 () Bool)

(declare-fun bm!644647 () Bool)

(declare-fun c!1323184 () Bool)

(assert (=> bm!644647 (= call!644653 (validRegex!9053 (ite c!1323184 (reg!18107 r!11554) (ite c!1323183 (regTwo!36069 r!11554) (regOne!36068 r!11554)))))))

(declare-fun b!7089733 () Bool)

(declare-fun e!4262081 () Bool)

(declare-fun e!4262085 () Bool)

(assert (=> b!7089733 (= e!4262081 e!4262085)))

(assert (=> b!7089733 (= c!1323184 (is-Star!17778 r!11554))))

(declare-fun b!7089734 () Bool)

(declare-fun e!4262084 () Bool)

(assert (=> b!7089734 (= e!4262084 call!644652)))

(declare-fun b!7089735 () Bool)

(declare-fun e!4262079 () Bool)

(assert (=> b!7089735 (= e!4262085 e!4262079)))

(assert (=> b!7089735 (= c!1323183 (is-Union!17778 r!11554))))

(declare-fun b!7089736 () Bool)

(declare-fun call!644654 () Bool)

(assert (=> b!7089736 (= e!4262083 call!644654)))

(declare-fun bm!644648 () Bool)

(assert (=> bm!644648 (= call!644654 (validRegex!9053 (ite c!1323183 (regOne!36069 r!11554) (regTwo!36068 r!11554))))))

(declare-fun b!7089738 () Bool)

(declare-fun res!2895643 () Bool)

(assert (=> b!7089738 (=> res!2895643 e!4262080)))

(assert (=> b!7089738 (= res!2895643 (not (is-Concat!26623 r!11554)))))

(assert (=> b!7089738 (= e!4262079 e!4262080)))

(declare-fun b!7089739 () Bool)

(declare-fun res!2895645 () Bool)

(assert (=> b!7089739 (=> (not res!2895645) (not e!4262084))))

(assert (=> b!7089739 (= res!2895645 call!644654)))

(assert (=> b!7089739 (= e!4262079 e!4262084)))

(declare-fun bm!644649 () Bool)

(assert (=> bm!644649 (= call!644652 call!644653)))

(declare-fun b!7089737 () Bool)

(assert (=> b!7089737 (= e!4262085 e!4262082)))

(declare-fun res!2895642 () Bool)

(assert (=> b!7089737 (= res!2895642 (not (nullable!7418 (reg!18107 r!11554))))))

(assert (=> b!7089737 (=> (not res!2895642) (not e!4262082))))

(declare-fun d!2216669 () Bool)

(declare-fun res!2895641 () Bool)

(assert (=> d!2216669 (=> res!2895641 e!4262081)))

(assert (=> d!2216669 (= res!2895641 (is-ElementMatch!17778 r!11554))))

(assert (=> d!2216669 (= (validRegex!9053 r!11554) e!4262081)))

(assert (= (and d!2216669 (not res!2895641)) b!7089733))

(assert (= (and b!7089733 c!1323184) b!7089737))

(assert (= (and b!7089733 (not c!1323184)) b!7089735))

(assert (= (and b!7089737 res!2895642) b!7089731))

(assert (= (and b!7089735 c!1323183) b!7089739))

(assert (= (and b!7089735 (not c!1323183)) b!7089738))

(assert (= (and b!7089739 res!2895645) b!7089734))

(assert (= (and b!7089738 (not res!2895643)) b!7089732))

(assert (= (and b!7089732 res!2895644) b!7089736))

(assert (= (or b!7089739 b!7089736) bm!644648))

(assert (= (or b!7089734 b!7089732) bm!644649))

(assert (= (or b!7089731 bm!644649) bm!644647))

(declare-fun m!7819346 () Bool)

(assert (=> bm!644647 m!7819346))

(declare-fun m!7819348 () Bool)

(assert (=> bm!644648 m!7819348))

(declare-fun m!7819350 () Bool)

(assert (=> b!7089737 m!7819350))

(assert (=> start!690078 d!2216669))

(declare-fun bs!1883344 () Bool)

(declare-fun d!2216671 () Bool)

(assert (= bs!1883344 (and d!2216671 b!7089677)))

(declare-fun lambda!429656 () Int)

(assert (=> bs!1883344 (= lambda!429656 lambda!429650)))

(assert (=> d!2216671 (= (inv!87311 c!9994) (forall!16718 (exprs!7274 c!9994) lambda!429656))))

(declare-fun bs!1883345 () Bool)

(assert (= bs!1883345 d!2216671))

(declare-fun m!7819352 () Bool)

(assert (=> bs!1883345 m!7819352))

(assert (=> start!690078 d!2216671))

(declare-fun bs!1883346 () Bool)

(declare-fun d!2216675 () Bool)

(assert (= bs!1883346 (and d!2216675 b!7089677)))

(declare-fun lambda!429657 () Int)

(assert (=> bs!1883346 (= lambda!429657 lambda!429650)))

(declare-fun bs!1883347 () Bool)

(assert (= bs!1883347 (and d!2216675 d!2216671)))

(assert (=> bs!1883347 (= lambda!429657 lambda!429656)))

(assert (=> d!2216675 (= (inv!87311 auxCtx!45) (forall!16718 (exprs!7274 auxCtx!45) lambda!429657))))

(declare-fun bs!1883348 () Bool)

(assert (= bs!1883348 d!2216675))

(declare-fun m!7819354 () Bool)

(assert (=> bs!1883348 m!7819354))

(assert (=> start!690078 d!2216675))

(declare-fun d!2216677 () Bool)

(declare-fun res!2895650 () Bool)

(declare-fun e!4262090 () Bool)

(assert (=> d!2216677 (=> res!2895650 e!4262090)))

(assert (=> d!2216677 (= res!2895650 (is-Nil!68617 (exprs!7274 auxCtx!45)))))

(assert (=> d!2216677 (= (forall!16718 (exprs!7274 auxCtx!45) lambda!429650) e!4262090)))

(declare-fun b!7089744 () Bool)

(declare-fun e!4262091 () Bool)

(assert (=> b!7089744 (= e!4262090 e!4262091)))

(declare-fun res!2895651 () Bool)

(assert (=> b!7089744 (=> (not res!2895651) (not e!4262091))))

(declare-fun dynLambda!27990 (Int Regex!17778) Bool)

(assert (=> b!7089744 (= res!2895651 (dynLambda!27990 lambda!429650 (h!75065 (exprs!7274 auxCtx!45))))))

(declare-fun b!7089745 () Bool)

(assert (=> b!7089745 (= e!4262091 (forall!16718 (t!382526 (exprs!7274 auxCtx!45)) lambda!429650))))

(assert (= (and d!2216677 (not res!2895650)) b!7089744))

(assert (= (and b!7089744 res!2895651) b!7089745))

(declare-fun b_lambda!270961 () Bool)

(assert (=> (not b_lambda!270961) (not b!7089744)))

(declare-fun m!7819356 () Bool)

(assert (=> b!7089744 m!7819356))

(declare-fun m!7819358 () Bool)

(assert (=> b!7089745 m!7819358))

(assert (=> b!7089679 d!2216677))

(declare-fun d!2216679 () Bool)

(declare-fun res!2895655 () Bool)

(declare-fun e!4262096 () Bool)

(assert (=> d!2216679 (=> res!2895655 e!4262096)))

(assert (=> d!2216679 (= res!2895655 (is-Nil!68617 (exprs!7274 c!9994)))))

(assert (=> d!2216679 (= (forall!16718 (exprs!7274 c!9994) lambda!429650) e!4262096)))

(declare-fun b!7089748 () Bool)

(declare-fun e!4262097 () Bool)

(assert (=> b!7089748 (= e!4262096 e!4262097)))

(declare-fun res!2895657 () Bool)

(assert (=> b!7089748 (=> (not res!2895657) (not e!4262097))))

(assert (=> b!7089748 (= res!2895657 (dynLambda!27990 lambda!429650 (h!75065 (exprs!7274 c!9994))))))

(declare-fun b!7089749 () Bool)

(assert (=> b!7089749 (= e!4262097 (forall!16718 (t!382526 (exprs!7274 c!9994)) lambda!429650))))

(assert (= (and d!2216679 (not res!2895655)) b!7089748))

(assert (= (and b!7089748 res!2895657) b!7089749))

(declare-fun b_lambda!270963 () Bool)

(assert (=> (not b_lambda!270963) (not b!7089748)))

(declare-fun m!7819360 () Bool)

(assert (=> b!7089748 m!7819360))

(declare-fun m!7819362 () Bool)

(assert (=> b!7089749 m!7819362))

(assert (=> b!7089677 d!2216679))

(declare-fun b!7089765 () Bool)

(declare-fun e!4262100 () Bool)

(declare-fun tp!1947255 () Bool)

(declare-fun tp!1947254 () Bool)

(assert (=> b!7089765 (= e!4262100 (and tp!1947255 tp!1947254))))

(declare-fun b!7089763 () Bool)

(declare-fun tp!1947251 () Bool)

(declare-fun tp!1947253 () Bool)

(assert (=> b!7089763 (= e!4262100 (and tp!1947251 tp!1947253))))

(declare-fun b!7089762 () Bool)

(assert (=> b!7089762 (= e!4262100 tp_is_empty!44789)))

(declare-fun b!7089764 () Bool)

(declare-fun tp!1947252 () Bool)

(assert (=> b!7089764 (= e!4262100 tp!1947252)))

(assert (=> b!7089678 (= tp!1947217 e!4262100)))

(assert (= (and b!7089678 (is-ElementMatch!17778 (regOne!36069 r!11554))) b!7089762))

(assert (= (and b!7089678 (is-Concat!26623 (regOne!36069 r!11554))) b!7089763))

(assert (= (and b!7089678 (is-Star!17778 (regOne!36069 r!11554))) b!7089764))

(assert (= (and b!7089678 (is-Union!17778 (regOne!36069 r!11554))) b!7089765))

(declare-fun b!7089769 () Bool)

(declare-fun e!4262101 () Bool)

(declare-fun tp!1947260 () Bool)

(declare-fun tp!1947259 () Bool)

(assert (=> b!7089769 (= e!4262101 (and tp!1947260 tp!1947259))))

(declare-fun b!7089767 () Bool)

(declare-fun tp!1947256 () Bool)

(declare-fun tp!1947258 () Bool)

(assert (=> b!7089767 (= e!4262101 (and tp!1947256 tp!1947258))))

(declare-fun b!7089766 () Bool)

(assert (=> b!7089766 (= e!4262101 tp_is_empty!44789)))

(declare-fun b!7089768 () Bool)

(declare-fun tp!1947257 () Bool)

(assert (=> b!7089768 (= e!4262101 tp!1947257)))

(assert (=> b!7089678 (= tp!1947213 e!4262101)))

(assert (= (and b!7089678 (is-ElementMatch!17778 (regTwo!36069 r!11554))) b!7089766))

(assert (= (and b!7089678 (is-Concat!26623 (regTwo!36069 r!11554))) b!7089767))

(assert (= (and b!7089678 (is-Star!17778 (regTwo!36069 r!11554))) b!7089768))

(assert (= (and b!7089678 (is-Union!17778 (regTwo!36069 r!11554))) b!7089769))

(declare-fun b!7089774 () Bool)

(declare-fun e!4262104 () Bool)

(declare-fun tp!1947265 () Bool)

(declare-fun tp!1947266 () Bool)

(assert (=> b!7089774 (= e!4262104 (and tp!1947265 tp!1947266))))

(assert (=> b!7089680 (= tp!1947219 e!4262104)))

(assert (= (and b!7089680 (is-Cons!68617 (exprs!7274 c!9994))) b!7089774))

(declare-fun b!7089778 () Bool)

(declare-fun e!4262105 () Bool)

(declare-fun tp!1947271 () Bool)

(declare-fun tp!1947270 () Bool)

(assert (=> b!7089778 (= e!4262105 (and tp!1947271 tp!1947270))))

(declare-fun b!7089776 () Bool)

(declare-fun tp!1947267 () Bool)

(declare-fun tp!1947269 () Bool)

(assert (=> b!7089776 (= e!4262105 (and tp!1947267 tp!1947269))))

(declare-fun b!7089775 () Bool)

(assert (=> b!7089775 (= e!4262105 tp_is_empty!44789)))

(declare-fun b!7089777 () Bool)

(declare-fun tp!1947268 () Bool)

(assert (=> b!7089777 (= e!4262105 tp!1947268)))

(assert (=> b!7089674 (= tp!1947216 e!4262105)))

(assert (= (and b!7089674 (is-ElementMatch!17778 (regOne!36068 r!11554))) b!7089775))

(assert (= (and b!7089674 (is-Concat!26623 (regOne!36068 r!11554))) b!7089776))

(assert (= (and b!7089674 (is-Star!17778 (regOne!36068 r!11554))) b!7089777))

(assert (= (and b!7089674 (is-Union!17778 (regOne!36068 r!11554))) b!7089778))

(declare-fun b!7089782 () Bool)

(declare-fun e!4262106 () Bool)

(declare-fun tp!1947276 () Bool)

(declare-fun tp!1947275 () Bool)

(assert (=> b!7089782 (= e!4262106 (and tp!1947276 tp!1947275))))

(declare-fun b!7089780 () Bool)

(declare-fun tp!1947272 () Bool)

(declare-fun tp!1947274 () Bool)

(assert (=> b!7089780 (= e!4262106 (and tp!1947272 tp!1947274))))

(declare-fun b!7089779 () Bool)

(assert (=> b!7089779 (= e!4262106 tp_is_empty!44789)))

(declare-fun b!7089781 () Bool)

(declare-fun tp!1947273 () Bool)

(assert (=> b!7089781 (= e!4262106 tp!1947273)))

(assert (=> b!7089674 (= tp!1947218 e!4262106)))

(assert (= (and b!7089674 (is-ElementMatch!17778 (regTwo!36068 r!11554))) b!7089779))

(assert (= (and b!7089674 (is-Concat!26623 (regTwo!36068 r!11554))) b!7089780))

(assert (= (and b!7089674 (is-Star!17778 (regTwo!36068 r!11554))) b!7089781))

(assert (= (and b!7089674 (is-Union!17778 (regTwo!36068 r!11554))) b!7089782))

(declare-fun b!7089783 () Bool)

(declare-fun e!4262107 () Bool)

(declare-fun tp!1947277 () Bool)

(declare-fun tp!1947278 () Bool)

(assert (=> b!7089783 (= e!4262107 (and tp!1947277 tp!1947278))))

(assert (=> b!7089676 (= tp!1947214 e!4262107)))

(assert (= (and b!7089676 (is-Cons!68617 (exprs!7274 auxCtx!45))) b!7089783))

(declare-fun b!7089789 () Bool)

(declare-fun e!4262110 () Bool)

(declare-fun tp!1947283 () Bool)

(declare-fun tp!1947282 () Bool)

(assert (=> b!7089789 (= e!4262110 (and tp!1947283 tp!1947282))))

(declare-fun b!7089787 () Bool)

(declare-fun tp!1947279 () Bool)

(declare-fun tp!1947281 () Bool)

(assert (=> b!7089787 (= e!4262110 (and tp!1947279 tp!1947281))))

(declare-fun b!7089786 () Bool)

(assert (=> b!7089786 (= e!4262110 tp_is_empty!44789)))

(declare-fun b!7089788 () Bool)

(declare-fun tp!1947280 () Bool)

(assert (=> b!7089788 (= e!4262110 tp!1947280)))

(assert (=> b!7089675 (= tp!1947215 e!4262110)))

(assert (= (and b!7089675 (is-ElementMatch!17778 (reg!18107 r!11554))) b!7089786))

(assert (= (and b!7089675 (is-Concat!26623 (reg!18107 r!11554))) b!7089787))

(assert (= (and b!7089675 (is-Star!17778 (reg!18107 r!11554))) b!7089788))

(assert (= (and b!7089675 (is-Union!17778 (reg!18107 r!11554))) b!7089789))

(declare-fun b_lambda!270965 () Bool)

(assert (= b_lambda!270963 (or b!7089677 b_lambda!270965)))

(declare-fun bs!1883349 () Bool)

(declare-fun d!2216681 () Bool)

(assert (= bs!1883349 (and d!2216681 b!7089677)))

(assert (=> bs!1883349 (= (dynLambda!27990 lambda!429650 (h!75065 (exprs!7274 c!9994))) (validRegex!9053 (h!75065 (exprs!7274 c!9994))))))

(declare-fun m!7819364 () Bool)

(assert (=> bs!1883349 m!7819364))

(assert (=> b!7089748 d!2216681))

(declare-fun b_lambda!270967 () Bool)

(assert (= b_lambda!270961 (or b!7089677 b_lambda!270967)))

(declare-fun bs!1883350 () Bool)

(declare-fun d!2216683 () Bool)

(assert (= bs!1883350 (and d!2216683 b!7089677)))

(assert (=> bs!1883350 (= (dynLambda!27990 lambda!429650 (h!75065 (exprs!7274 auxCtx!45))) (validRegex!9053 (h!75065 (exprs!7274 auxCtx!45))))))

(declare-fun m!7819366 () Bool)

(assert (=> bs!1883350 m!7819366))

(assert (=> b!7089744 d!2216683))

(push 1)

(assert (not b!7089765))

(assert (not b!7089782))

(assert (not d!2216667))

(assert (not bs!1883350))

(assert (not b!7089780))

(assert (not b!7089763))

(assert (not b!7089776))

(assert (not b!7089781))

(assert (not b!7089737))

(assert (not bs!1883349))

(assert (not b!7089777))

(assert (not b!7089788))

(assert (not b!7089768))

(assert (not b_lambda!270965))

(assert (not bm!644647))

(assert (not bm!644648))

(assert (not b!7089787))

(assert (not b!7089749))

(assert (not b!7089769))

(assert (not b!7089745))

(assert (not d!2216675))

(assert (not b!7089778))

(assert (not b!7089767))

(assert (not b!7089783))

(assert (not d!2216671))

(assert (not b!7089764))

(assert (not b!7089789))

(assert (not b!7089774))

(assert (not b_lambda!270967))

(assert tp_is_empty!44789)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

