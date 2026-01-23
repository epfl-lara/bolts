; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738494 () Bool)

(assert start!738494)

(declare-fun b!7745058 () Bool)

(assert (=> b!7745058 true))

(assert (=> b!7745058 true))

(declare-fun bs!1965393 () Bool)

(declare-fun b!7745054 () Bool)

(assert (= bs!1965393 (and b!7745054 b!7745058)))

(declare-fun lambda!471637 () Int)

(declare-fun lambda!471636 () Int)

(assert (=> bs!1965393 (not (= lambda!471637 lambda!471636))))

(assert (=> b!7745054 true))

(assert (=> b!7745054 true))

(declare-fun b!7745046 () Bool)

(declare-fun res!3087839 () Bool)

(declare-fun e!4591846 () Bool)

(assert (=> b!7745046 (=> (not res!3087839) (not e!4591846))))

(declare-datatypes ((C!41494 0))(
  ( (C!41495 (val!31187 Int)) )
))
(declare-datatypes ((Regex!20584 0))(
  ( (ElementMatch!20584 (c!1428574 C!41494)) (Concat!29429 (regOne!41680 Regex!20584) (regTwo!41680 Regex!20584)) (EmptyExpr!20584) (Star!20584 (reg!20913 Regex!20584)) (EmptyLang!20584) (Union!20584 (regOne!41681 Regex!20584) (regTwo!41681 Regex!20584)) )
))
(declare-fun r!14126 () Regex!20584)

(assert (=> b!7745046 (= res!3087839 (and (not (is-EmptyExpr!20584 r!14126)) (not (is-EmptyLang!20584 r!14126)) (not (is-ElementMatch!20584 r!14126)) (not (is-Union!20584 r!14126)) (not (is-Star!20584 r!14126))))))

(declare-fun b!7745047 () Bool)

(declare-fun e!4591849 () Bool)

(assert (=> b!7745047 (= e!4591849 false)))

(declare-fun b!7745048 () Bool)

(declare-datatypes ((Unit!168260 0))(
  ( (Unit!168261) )
))
(declare-fun e!4591848 () Unit!168260)

(declare-fun Unit!168262 () Unit!168260)

(assert (=> b!7745048 (= e!4591848 Unit!168262)))

(declare-datatypes ((List!73431 0))(
  ( (Nil!73307) (Cons!73307 (h!79755 C!41494) (t!388166 List!73431)) )
))
(declare-datatypes ((tuple2!69622 0))(
  ( (tuple2!69623 (_1!38114 List!73431) (_2!38114 List!73431)) )
))
(declare-fun lt!2668439 () tuple2!69622)

(declare-datatypes ((Option!17605 0))(
  ( (None!17604) (Some!17604 (v!54739 tuple2!69622)) )
))
(declare-fun lt!2668445 () Option!17605)

(declare-fun get!26067 (Option!17605) tuple2!69622)

(assert (=> b!7745048 (= lt!2668439 (get!26067 lt!2668445))))

(declare-fun s!9605 () List!73431)

(declare-fun lt!2668441 () Unit!168260)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!209 (Regex!20584 Regex!20584 List!73431 List!73431 List!73431) Unit!168260)

(assert (=> b!7745048 (= lt!2668441 (lemmaFindSeparationIsDefinedThenConcatMatches!209 (regOne!41680 r!14126) (regTwo!41680 r!14126) (_1!38114 lt!2668439) (_2!38114 lt!2668439) s!9605))))

(declare-fun res!3087843 () Bool)

(declare-fun matchR!10076 (Regex!20584 List!73431) Bool)

(declare-fun ++!17783 (List!73431 List!73431) List!73431)

(assert (=> b!7745048 (= res!3087843 (matchR!10076 r!14126 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))))))

(assert (=> b!7745048 (=> (not res!3087843) (not e!4591849))))

(assert (=> b!7745048 e!4591849))

(declare-fun b!7745049 () Bool)

(declare-fun e!4591853 () Bool)

(declare-fun tp_is_empty!51523 () Bool)

(assert (=> b!7745049 (= e!4591853 tp_is_empty!51523)))

(declare-fun b!7745050 () Bool)

(declare-fun e!4591852 () Bool)

(declare-fun tp!2272754 () Bool)

(assert (=> b!7745050 (= e!4591852 (and tp_is_empty!51523 tp!2272754))))

(declare-fun b!7745051 () Bool)

(declare-fun tp!2272756 () Bool)

(assert (=> b!7745051 (= e!4591853 tp!2272756)))

(declare-fun b!7745052 () Bool)

(declare-fun e!4591850 () Bool)

(declare-fun e!4591847 () Bool)

(assert (=> b!7745052 (= e!4591850 e!4591847)))

(declare-fun res!3087841 () Bool)

(assert (=> b!7745052 (=> res!3087841 e!4591847)))

(declare-fun validRegex!11002 (Regex!20584) Bool)

(assert (=> b!7745052 (= res!3087841 (not (validRegex!11002 (regOne!41680 r!14126))))))

(declare-fun lt!2668442 () tuple2!69622)

(declare-fun matchRSpec!4649 (Regex!20584 List!73431) Bool)

(assert (=> b!7745052 (= (matchR!10076 (regTwo!41680 r!14126) (_2!38114 lt!2668442)) (matchRSpec!4649 (regTwo!41680 r!14126) (_2!38114 lt!2668442)))))

(declare-fun lt!2668437 () Unit!168260)

(declare-fun mainMatchTheorem!4619 (Regex!20584 List!73431) Unit!168260)

(assert (=> b!7745052 (= lt!2668437 (mainMatchTheorem!4619 (regTwo!41680 r!14126) (_2!38114 lt!2668442)))))

(assert (=> b!7745052 (= (matchR!10076 (regOne!41680 r!14126) (_1!38114 lt!2668442)) (matchRSpec!4649 (regOne!41680 r!14126) (_1!38114 lt!2668442)))))

(declare-fun lt!2668444 () Unit!168260)

(assert (=> b!7745052 (= lt!2668444 (mainMatchTheorem!4619 (regOne!41680 r!14126) (_1!38114 lt!2668442)))))

(declare-fun pickWitness!541 (Int) tuple2!69622)

(assert (=> b!7745052 (= lt!2668442 (pickWitness!541 lambda!471637))))

(declare-fun res!3087838 () Bool)

(assert (=> start!738494 (=> (not res!3087838) (not e!4591846))))

(assert (=> start!738494 (= res!3087838 (validRegex!11002 r!14126))))

(assert (=> start!738494 e!4591846))

(assert (=> start!738494 e!4591853))

(assert (=> start!738494 e!4591852))

(declare-fun b!7745053 () Bool)

(assert (=> b!7745053 (= e!4591847 (validRegex!11002 (regTwo!41680 r!14126)))))

(declare-fun res!3087840 () Bool)

(assert (=> b!7745054 (=> res!3087840 e!4591850)))

(declare-fun Exists!4705 (Int) Bool)

(assert (=> b!7745054 (= res!3087840 (not (Exists!4705 lambda!471637)))))

(declare-fun b!7745055 () Bool)

(declare-fun Unit!168263 () Unit!168260)

(assert (=> b!7745055 (= e!4591848 Unit!168263)))

(declare-fun b!7745056 () Bool)

(declare-fun tp!2272758 () Bool)

(declare-fun tp!2272755 () Bool)

(assert (=> b!7745056 (= e!4591853 (and tp!2272758 tp!2272755))))

(declare-fun b!7745057 () Bool)

(declare-fun tp!2272757 () Bool)

(declare-fun tp!2272759 () Bool)

(assert (=> b!7745057 (= e!4591853 (and tp!2272757 tp!2272759))))

(declare-fun e!4591851 () Bool)

(assert (=> b!7745058 (= e!4591846 (not e!4591851))))

(declare-fun res!3087837 () Bool)

(assert (=> b!7745058 (=> res!3087837 e!4591851)))

(assert (=> b!7745058 (= res!3087837 (matchR!10076 r!14126 s!9605))))

(declare-fun lt!2668440 () Bool)

(assert (=> b!7745058 (= lt!2668440 (Exists!4705 lambda!471636))))

(declare-fun isDefined!14221 (Option!17605) Bool)

(assert (=> b!7745058 (= lt!2668440 (isDefined!14221 lt!2668445))))

(declare-fun findConcatSeparation!3635 (Regex!20584 Regex!20584 List!73431 List!73431 List!73431) Option!17605)

(assert (=> b!7745058 (= lt!2668445 (findConcatSeparation!3635 (regOne!41680 r!14126) (regTwo!41680 r!14126) Nil!73307 s!9605 s!9605))))

(declare-fun lt!2668443 () Unit!168260)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3393 (Regex!20584 Regex!20584 List!73431) Unit!168260)

(assert (=> b!7745058 (= lt!2668443 (lemmaFindConcatSeparationEquivalentToExists!3393 (regOne!41680 r!14126) (regTwo!41680 r!14126) s!9605))))

(declare-fun b!7745059 () Bool)

(assert (=> b!7745059 (= e!4591851 e!4591850)))

(declare-fun res!3087842 () Bool)

(assert (=> b!7745059 (=> res!3087842 e!4591850)))

(assert (=> b!7745059 (= res!3087842 (Exists!4705 lambda!471636))))

(declare-fun lt!2668438 () Unit!168260)

(assert (=> b!7745059 (= lt!2668438 e!4591848)))

(declare-fun c!1428573 () Bool)

(assert (=> b!7745059 (= c!1428573 lt!2668440)))

(assert (= (and start!738494 res!3087838) b!7745046))

(assert (= (and b!7745046 res!3087839) b!7745058))

(assert (= (and b!7745058 (not res!3087837)) b!7745059))

(assert (= (and b!7745059 c!1428573) b!7745048))

(assert (= (and b!7745059 (not c!1428573)) b!7745055))

(assert (= (and b!7745048 res!3087843) b!7745047))

(assert (= (and b!7745059 (not res!3087842)) b!7745054))

(assert (= (and b!7745054 (not res!3087840)) b!7745052))

(assert (= (and b!7745052 (not res!3087841)) b!7745053))

(assert (= (and start!738494 (is-ElementMatch!20584 r!14126)) b!7745049))

(assert (= (and start!738494 (is-Concat!29429 r!14126)) b!7745057))

(assert (= (and start!738494 (is-Star!20584 r!14126)) b!7745051))

(assert (= (and start!738494 (is-Union!20584 r!14126)) b!7745056))

(assert (= (and start!738494 (is-Cons!73307 s!9605)) b!7745050))

(declare-fun m!8213378 () Bool)

(assert (=> b!7745053 m!8213378))

(declare-fun m!8213380 () Bool)

(assert (=> b!7745054 m!8213380))

(declare-fun m!8213382 () Bool)

(assert (=> b!7745048 m!8213382))

(declare-fun m!8213384 () Bool)

(assert (=> b!7745048 m!8213384))

(declare-fun m!8213386 () Bool)

(assert (=> b!7745048 m!8213386))

(assert (=> b!7745048 m!8213386))

(declare-fun m!8213388 () Bool)

(assert (=> b!7745048 m!8213388))

(declare-fun m!8213390 () Bool)

(assert (=> start!738494 m!8213390))

(declare-fun m!8213392 () Bool)

(assert (=> b!7745058 m!8213392))

(declare-fun m!8213394 () Bool)

(assert (=> b!7745058 m!8213394))

(declare-fun m!8213396 () Bool)

(assert (=> b!7745058 m!8213396))

(declare-fun m!8213398 () Bool)

(assert (=> b!7745058 m!8213398))

(declare-fun m!8213400 () Bool)

(assert (=> b!7745058 m!8213400))

(declare-fun m!8213402 () Bool)

(assert (=> b!7745052 m!8213402))

(declare-fun m!8213404 () Bool)

(assert (=> b!7745052 m!8213404))

(declare-fun m!8213406 () Bool)

(assert (=> b!7745052 m!8213406))

(declare-fun m!8213408 () Bool)

(assert (=> b!7745052 m!8213408))

(declare-fun m!8213410 () Bool)

(assert (=> b!7745052 m!8213410))

(declare-fun m!8213412 () Bool)

(assert (=> b!7745052 m!8213412))

(declare-fun m!8213414 () Bool)

(assert (=> b!7745052 m!8213414))

(declare-fun m!8213416 () Bool)

(assert (=> b!7745052 m!8213416))

(assert (=> b!7745059 m!8213396))

(push 1)

(assert (not b!7745048))

(assert (not b!7745053))

(assert (not b!7745058))

(assert (not b!7745054))

(assert (not b!7745052))

(assert (not b!7745051))

(assert (not b!7745059))

(assert (not b!7745050))

(assert (not start!738494))

(assert (not b!7745057))

(assert tp_is_empty!51523)

(assert (not b!7745056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2342028 () Bool)

(declare-fun choose!59374 (Int) Bool)

(assert (=> d!2342028 (= (Exists!4705 lambda!471637) (choose!59374 lambda!471637))))

(declare-fun bs!1965395 () Bool)

(assert (= bs!1965395 d!2342028))

(declare-fun m!8213458 () Bool)

(assert (=> bs!1965395 m!8213458))

(assert (=> b!7745054 d!2342028))

(declare-fun d!2342030 () Bool)

(assert (=> d!2342030 (= (get!26067 lt!2668445) (v!54739 lt!2668445))))

(assert (=> b!7745048 d!2342030))

(declare-fun d!2342032 () Bool)

(assert (=> d!2342032 (matchR!10076 (Concat!29429 (regOne!41680 r!14126) (regTwo!41680 r!14126)) (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439)))))

(declare-fun lt!2668475 () Unit!168260)

(declare-fun choose!59375 (Regex!20584 Regex!20584 List!73431 List!73431 List!73431) Unit!168260)

(assert (=> d!2342032 (= lt!2668475 (choose!59375 (regOne!41680 r!14126) (regTwo!41680 r!14126) (_1!38114 lt!2668439) (_2!38114 lt!2668439) s!9605))))

(assert (=> d!2342032 (validRegex!11002 (regOne!41680 r!14126))))

(assert (=> d!2342032 (= (lemmaFindSeparationIsDefinedThenConcatMatches!209 (regOne!41680 r!14126) (regTwo!41680 r!14126) (_1!38114 lt!2668439) (_2!38114 lt!2668439) s!9605) lt!2668475)))

(declare-fun bs!1965396 () Bool)

(assert (= bs!1965396 d!2342032))

(assert (=> bs!1965396 m!8213386))

(assert (=> bs!1965396 m!8213386))

(declare-fun m!8213460 () Bool)

(assert (=> bs!1965396 m!8213460))

(declare-fun m!8213462 () Bool)

(assert (=> bs!1965396 m!8213462))

(assert (=> bs!1965396 m!8213412))

(assert (=> b!7745048 d!2342032))

(declare-fun b!7745154 () Bool)

(declare-fun res!3087903 () Bool)

(declare-fun e!4591900 () Bool)

(assert (=> b!7745154 (=> (not res!3087903) (not e!4591900))))

(declare-fun isEmpty!41995 (List!73431) Bool)

(declare-fun tail!15356 (List!73431) List!73431)

(assert (=> b!7745154 (= res!3087903 (isEmpty!41995 (tail!15356 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439)))))))

(declare-fun b!7745155 () Bool)

(declare-fun res!3087898 () Bool)

(declare-fun e!4591905 () Bool)

(assert (=> b!7745155 (=> res!3087898 e!4591905)))

(assert (=> b!7745155 (= res!3087898 (not (is-ElementMatch!20584 r!14126)))))

(declare-fun e!4591902 () Bool)

(assert (=> b!7745155 (= e!4591902 e!4591905)))

(declare-fun b!7745156 () Bool)

(declare-fun head!15816 (List!73431) C!41494)

(assert (=> b!7745156 (= e!4591900 (= (head!15816 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))) (c!1428574 r!14126)))))

(declare-fun b!7745157 () Bool)

(declare-fun lt!2668478 () Bool)

(assert (=> b!7745157 (= e!4591902 (not lt!2668478))))

(declare-fun b!7745158 () Bool)

(declare-fun res!3087897 () Bool)

(assert (=> b!7745158 (=> res!3087897 e!4591905)))

(assert (=> b!7745158 (= res!3087897 e!4591900)))

(declare-fun res!3087900 () Bool)

(assert (=> b!7745158 (=> (not res!3087900) (not e!4591900))))

(assert (=> b!7745158 (= res!3087900 lt!2668478)))

(declare-fun bm!717820 () Bool)

(declare-fun call!717825 () Bool)

(assert (=> bm!717820 (= call!717825 (isEmpty!41995 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))))))

(declare-fun b!7745159 () Bool)

(declare-fun e!4591901 () Bool)

(assert (=> b!7745159 (= e!4591901 (= lt!2668478 call!717825))))

(declare-fun b!7745160 () Bool)

(declare-fun res!3087899 () Bool)

(assert (=> b!7745160 (=> (not res!3087899) (not e!4591900))))

(assert (=> b!7745160 (= res!3087899 (not call!717825))))

(declare-fun b!7745161 () Bool)

(declare-fun e!4591904 () Bool)

(declare-fun e!4591903 () Bool)

(assert (=> b!7745161 (= e!4591904 e!4591903)))

(declare-fun res!3087902 () Bool)

(assert (=> b!7745161 (=> res!3087902 e!4591903)))

(assert (=> b!7745161 (= res!3087902 call!717825)))

(declare-fun b!7745162 () Bool)

(assert (=> b!7745162 (= e!4591905 e!4591904)))

(declare-fun res!3087901 () Bool)

(assert (=> b!7745162 (=> (not res!3087901) (not e!4591904))))

(assert (=> b!7745162 (= res!3087901 (not lt!2668478))))

(declare-fun b!7745163 () Bool)

(declare-fun e!4591906 () Bool)

(declare-fun nullable!9057 (Regex!20584) Bool)

(assert (=> b!7745163 (= e!4591906 (nullable!9057 r!14126))))

(declare-fun b!7745164 () Bool)

(assert (=> b!7745164 (= e!4591903 (not (= (head!15816 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))) (c!1428574 r!14126))))))

(declare-fun b!7745165 () Bool)

(declare-fun res!3087904 () Bool)

(assert (=> b!7745165 (=> res!3087904 e!4591903)))

(assert (=> b!7745165 (= res!3087904 (not (isEmpty!41995 (tail!15356 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))))))))

(declare-fun b!7745166 () Bool)

(assert (=> b!7745166 (= e!4591901 e!4591902)))

(declare-fun c!1428585 () Bool)

(assert (=> b!7745166 (= c!1428585 (is-EmptyLang!20584 r!14126))))

(declare-fun d!2342034 () Bool)

(assert (=> d!2342034 e!4591901))

(declare-fun c!1428586 () Bool)

(assert (=> d!2342034 (= c!1428586 (is-EmptyExpr!20584 r!14126))))

(assert (=> d!2342034 (= lt!2668478 e!4591906)))

(declare-fun c!1428587 () Bool)

(assert (=> d!2342034 (= c!1428587 (isEmpty!41995 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))))))

(assert (=> d!2342034 (validRegex!11002 r!14126)))

(assert (=> d!2342034 (= (matchR!10076 r!14126 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439))) lt!2668478)))

(declare-fun b!7745167 () Bool)

(declare-fun derivativeStep!6016 (Regex!20584 C!41494) Regex!20584)

(assert (=> b!7745167 (= e!4591906 (matchR!10076 (derivativeStep!6016 r!14126 (head!15816 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439)))) (tail!15356 (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439)))))))

(assert (= (and d!2342034 c!1428587) b!7745163))

(assert (= (and d!2342034 (not c!1428587)) b!7745167))

(assert (= (and d!2342034 c!1428586) b!7745159))

(assert (= (and d!2342034 (not c!1428586)) b!7745166))

(assert (= (and b!7745166 c!1428585) b!7745157))

(assert (= (and b!7745166 (not c!1428585)) b!7745155))

(assert (= (and b!7745155 (not res!3087898)) b!7745158))

(assert (= (and b!7745158 res!3087900) b!7745160))

(assert (= (and b!7745160 res!3087899) b!7745154))

(assert (= (and b!7745154 res!3087903) b!7745156))

(assert (= (and b!7745158 (not res!3087897)) b!7745162))

(assert (= (and b!7745162 res!3087901) b!7745161))

(assert (= (and b!7745161 (not res!3087902)) b!7745165))

(assert (= (and b!7745165 (not res!3087904)) b!7745164))

(assert (= (or b!7745159 b!7745160 b!7745161) bm!717820))

(assert (=> b!7745167 m!8213386))

(declare-fun m!8213464 () Bool)

(assert (=> b!7745167 m!8213464))

(assert (=> b!7745167 m!8213464))

(declare-fun m!8213466 () Bool)

(assert (=> b!7745167 m!8213466))

(assert (=> b!7745167 m!8213386))

(declare-fun m!8213468 () Bool)

(assert (=> b!7745167 m!8213468))

(assert (=> b!7745167 m!8213466))

(assert (=> b!7745167 m!8213468))

(declare-fun m!8213470 () Bool)

(assert (=> b!7745167 m!8213470))

(assert (=> b!7745165 m!8213386))

(assert (=> b!7745165 m!8213468))

(assert (=> b!7745165 m!8213468))

(declare-fun m!8213472 () Bool)

(assert (=> b!7745165 m!8213472))

(assert (=> d!2342034 m!8213386))

(declare-fun m!8213474 () Bool)

(assert (=> d!2342034 m!8213474))

(assert (=> d!2342034 m!8213390))

(assert (=> bm!717820 m!8213386))

(assert (=> bm!717820 m!8213474))

(assert (=> b!7745154 m!8213386))

(assert (=> b!7745154 m!8213468))

(assert (=> b!7745154 m!8213468))

(assert (=> b!7745154 m!8213472))

(assert (=> b!7745164 m!8213386))

(assert (=> b!7745164 m!8213464))

(declare-fun m!8213476 () Bool)

(assert (=> b!7745163 m!8213476))

(assert (=> b!7745156 m!8213386))

(assert (=> b!7745156 m!8213464))

(assert (=> b!7745048 d!2342034))

(declare-fun b!7745179 () Bool)

(declare-fun e!4591911 () Bool)

(declare-fun lt!2668483 () List!73431)

(assert (=> b!7745179 (= e!4591911 (or (not (= (_2!38114 lt!2668439) Nil!73307)) (= lt!2668483 (_1!38114 lt!2668439))))))

(declare-fun d!2342038 () Bool)

(assert (=> d!2342038 e!4591911))

(declare-fun res!3087909 () Bool)

(assert (=> d!2342038 (=> (not res!3087909) (not e!4591911))))

(declare-fun content!15540 (List!73431) (Set C!41494))

(assert (=> d!2342038 (= res!3087909 (= (content!15540 lt!2668483) (set.union (content!15540 (_1!38114 lt!2668439)) (content!15540 (_2!38114 lt!2668439)))))))

(declare-fun e!4591912 () List!73431)

(assert (=> d!2342038 (= lt!2668483 e!4591912)))

(declare-fun c!1428590 () Bool)

(assert (=> d!2342038 (= c!1428590 (is-Nil!73307 (_1!38114 lt!2668439)))))

(assert (=> d!2342038 (= (++!17783 (_1!38114 lt!2668439) (_2!38114 lt!2668439)) lt!2668483)))

(declare-fun b!7745178 () Bool)

(declare-fun res!3087910 () Bool)

(assert (=> b!7745178 (=> (not res!3087910) (not e!4591911))))

(declare-fun size!42643 (List!73431) Int)

(assert (=> b!7745178 (= res!3087910 (= (size!42643 lt!2668483) (+ (size!42643 (_1!38114 lt!2668439)) (size!42643 (_2!38114 lt!2668439)))))))

(declare-fun b!7745176 () Bool)

(assert (=> b!7745176 (= e!4591912 (_2!38114 lt!2668439))))

(declare-fun b!7745177 () Bool)

(assert (=> b!7745177 (= e!4591912 (Cons!73307 (h!79755 (_1!38114 lt!2668439)) (++!17783 (t!388166 (_1!38114 lt!2668439)) (_2!38114 lt!2668439))))))

(assert (= (and d!2342038 c!1428590) b!7745176))

(assert (= (and d!2342038 (not c!1428590)) b!7745177))

(assert (= (and d!2342038 res!3087909) b!7745178))

(assert (= (and b!7745178 res!3087910) b!7745179))

(declare-fun m!8213478 () Bool)

(assert (=> d!2342038 m!8213478))

(declare-fun m!8213480 () Bool)

(assert (=> d!2342038 m!8213480))

(declare-fun m!8213482 () Bool)

(assert (=> d!2342038 m!8213482))

(declare-fun m!8213484 () Bool)

(assert (=> b!7745178 m!8213484))

(declare-fun m!8213486 () Bool)

(assert (=> b!7745178 m!8213486))

(declare-fun m!8213488 () Bool)

(assert (=> b!7745178 m!8213488))

(declare-fun m!8213490 () Bool)

(assert (=> b!7745177 m!8213490))

(assert (=> b!7745048 d!2342038))

(declare-fun d!2342040 () Bool)

(assert (=> d!2342040 (= (Exists!4705 lambda!471636) (choose!59374 lambda!471636))))

(declare-fun bs!1965397 () Bool)

(assert (= bs!1965397 d!2342040))

(declare-fun m!8213492 () Bool)

(assert (=> bs!1965397 m!8213492))

(assert (=> b!7745059 d!2342040))

(declare-fun b!7745198 () Bool)

(declare-fun e!4591933 () Bool)

(declare-fun e!4591929 () Bool)

(assert (=> b!7745198 (= e!4591933 e!4591929)))

(declare-fun c!1428595 () Bool)

(assert (=> b!7745198 (= c!1428595 (is-Star!20584 r!14126))))

(declare-fun d!2342042 () Bool)

(declare-fun res!3087922 () Bool)

(assert (=> d!2342042 (=> res!3087922 e!4591933)))

(assert (=> d!2342042 (= res!3087922 (is-ElementMatch!20584 r!14126))))

(assert (=> d!2342042 (= (validRegex!11002 r!14126) e!4591933)))

(declare-fun bm!717827 () Bool)

(declare-fun call!717833 () Bool)

(declare-fun c!1428596 () Bool)

(assert (=> bm!717827 (= call!717833 (validRegex!11002 (ite c!1428595 (reg!20913 r!14126) (ite c!1428596 (regOne!41681 r!14126) (regOne!41680 r!14126)))))))

(declare-fun b!7745199 () Bool)

(declare-fun e!4591927 () Bool)

(declare-fun e!4591931 () Bool)

(assert (=> b!7745199 (= e!4591927 e!4591931)))

(declare-fun res!3087925 () Bool)

(assert (=> b!7745199 (=> (not res!3087925) (not e!4591931))))

(declare-fun call!717832 () Bool)

(assert (=> b!7745199 (= res!3087925 call!717832)))

(declare-fun bm!717828 () Bool)

(assert (=> bm!717828 (= call!717832 call!717833)))

(declare-fun b!7745200 () Bool)

(declare-fun res!3087921 () Bool)

(declare-fun e!4591930 () Bool)

(assert (=> b!7745200 (=> (not res!3087921) (not e!4591930))))

(assert (=> b!7745200 (= res!3087921 call!717832)))

(declare-fun e!4591928 () Bool)

(assert (=> b!7745200 (= e!4591928 e!4591930)))

(declare-fun b!7745201 () Bool)

(assert (=> b!7745201 (= e!4591929 e!4591928)))

(assert (=> b!7745201 (= c!1428596 (is-Union!20584 r!14126))))

(declare-fun b!7745202 () Bool)

(declare-fun call!717834 () Bool)

(assert (=> b!7745202 (= e!4591930 call!717834)))

(declare-fun b!7745203 () Bool)

(declare-fun res!3087924 () Bool)

(assert (=> b!7745203 (=> res!3087924 e!4591927)))

(assert (=> b!7745203 (= res!3087924 (not (is-Concat!29429 r!14126)))))

(assert (=> b!7745203 (= e!4591928 e!4591927)))

(declare-fun bm!717829 () Bool)

(assert (=> bm!717829 (= call!717834 (validRegex!11002 (ite c!1428596 (regTwo!41681 r!14126) (regTwo!41680 r!14126))))))

(declare-fun b!7745204 () Bool)

(declare-fun e!4591932 () Bool)

(assert (=> b!7745204 (= e!4591929 e!4591932)))

(declare-fun res!3087923 () Bool)

(assert (=> b!7745204 (= res!3087923 (not (nullable!9057 (reg!20913 r!14126))))))

(assert (=> b!7745204 (=> (not res!3087923) (not e!4591932))))

(declare-fun b!7745205 () Bool)

(assert (=> b!7745205 (= e!4591931 call!717834)))

(declare-fun b!7745206 () Bool)

(assert (=> b!7745206 (= e!4591932 call!717833)))

(assert (= (and d!2342042 (not res!3087922)) b!7745198))

(assert (= (and b!7745198 c!1428595) b!7745204))

(assert (= (and b!7745198 (not c!1428595)) b!7745201))

(assert (= (and b!7745204 res!3087923) b!7745206))

(assert (= (and b!7745201 c!1428596) b!7745200))

(assert (= (and b!7745201 (not c!1428596)) b!7745203))

(assert (= (and b!7745200 res!3087921) b!7745202))

(assert (= (and b!7745203 (not res!3087924)) b!7745199))

(assert (= (and b!7745199 res!3087925) b!7745205))

(assert (= (or b!7745200 b!7745199) bm!717828))

(assert (= (or b!7745202 b!7745205) bm!717829))

(assert (= (or b!7745206 bm!717828) bm!717827))

(declare-fun m!8213496 () Bool)

(assert (=> bm!717827 m!8213496))

(declare-fun m!8213498 () Bool)

(assert (=> bm!717829 m!8213498))

(declare-fun m!8213500 () Bool)

(assert (=> b!7745204 m!8213500))

(assert (=> start!738494 d!2342042))

(declare-fun b!7745207 () Bool)

(declare-fun res!3087932 () Bool)

(declare-fun e!4591934 () Bool)

(assert (=> b!7745207 (=> (not res!3087932) (not e!4591934))))

(assert (=> b!7745207 (= res!3087932 (isEmpty!41995 (tail!15356 s!9605)))))

(declare-fun b!7745208 () Bool)

(declare-fun res!3087927 () Bool)

(declare-fun e!4591939 () Bool)

(assert (=> b!7745208 (=> res!3087927 e!4591939)))

(assert (=> b!7745208 (= res!3087927 (not (is-ElementMatch!20584 r!14126)))))

(declare-fun e!4591936 () Bool)

(assert (=> b!7745208 (= e!4591936 e!4591939)))

(declare-fun b!7745209 () Bool)

(assert (=> b!7745209 (= e!4591934 (= (head!15816 s!9605) (c!1428574 r!14126)))))

(declare-fun b!7745210 () Bool)

(declare-fun lt!2668485 () Bool)

(assert (=> b!7745210 (= e!4591936 (not lt!2668485))))

(declare-fun b!7745211 () Bool)

(declare-fun res!3087926 () Bool)

(assert (=> b!7745211 (=> res!3087926 e!4591939)))

(assert (=> b!7745211 (= res!3087926 e!4591934)))

(declare-fun res!3087929 () Bool)

(assert (=> b!7745211 (=> (not res!3087929) (not e!4591934))))

(assert (=> b!7745211 (= res!3087929 lt!2668485)))

(declare-fun bm!717830 () Bool)

(declare-fun call!717835 () Bool)

(assert (=> bm!717830 (= call!717835 (isEmpty!41995 s!9605))))

(declare-fun b!7745212 () Bool)

(declare-fun e!4591935 () Bool)

(assert (=> b!7745212 (= e!4591935 (= lt!2668485 call!717835))))

(declare-fun b!7745213 () Bool)

(declare-fun res!3087928 () Bool)

(assert (=> b!7745213 (=> (not res!3087928) (not e!4591934))))

(assert (=> b!7745213 (= res!3087928 (not call!717835))))

(declare-fun b!7745214 () Bool)

(declare-fun e!4591938 () Bool)

(declare-fun e!4591937 () Bool)

(assert (=> b!7745214 (= e!4591938 e!4591937)))

(declare-fun res!3087931 () Bool)

(assert (=> b!7745214 (=> res!3087931 e!4591937)))

(assert (=> b!7745214 (= res!3087931 call!717835)))

(declare-fun b!7745215 () Bool)

(assert (=> b!7745215 (= e!4591939 e!4591938)))

(declare-fun res!3087930 () Bool)

(assert (=> b!7745215 (=> (not res!3087930) (not e!4591938))))

(assert (=> b!7745215 (= res!3087930 (not lt!2668485))))

(declare-fun b!7745216 () Bool)

(declare-fun e!4591940 () Bool)

(assert (=> b!7745216 (= e!4591940 (nullable!9057 r!14126))))

(declare-fun b!7745217 () Bool)

(assert (=> b!7745217 (= e!4591937 (not (= (head!15816 s!9605) (c!1428574 r!14126))))))

(declare-fun b!7745218 () Bool)

(declare-fun res!3087933 () Bool)

(assert (=> b!7745218 (=> res!3087933 e!4591937)))

(assert (=> b!7745218 (= res!3087933 (not (isEmpty!41995 (tail!15356 s!9605))))))

(declare-fun b!7745219 () Bool)

(assert (=> b!7745219 (= e!4591935 e!4591936)))

(declare-fun c!1428597 () Bool)

(assert (=> b!7745219 (= c!1428597 (is-EmptyLang!20584 r!14126))))

(declare-fun d!2342046 () Bool)

(assert (=> d!2342046 e!4591935))

(declare-fun c!1428598 () Bool)

(assert (=> d!2342046 (= c!1428598 (is-EmptyExpr!20584 r!14126))))

(assert (=> d!2342046 (= lt!2668485 e!4591940)))

(declare-fun c!1428599 () Bool)

(assert (=> d!2342046 (= c!1428599 (isEmpty!41995 s!9605))))

(assert (=> d!2342046 (validRegex!11002 r!14126)))

(assert (=> d!2342046 (= (matchR!10076 r!14126 s!9605) lt!2668485)))

(declare-fun b!7745220 () Bool)

(assert (=> b!7745220 (= e!4591940 (matchR!10076 (derivativeStep!6016 r!14126 (head!15816 s!9605)) (tail!15356 s!9605)))))

(assert (= (and d!2342046 c!1428599) b!7745216))

(assert (= (and d!2342046 (not c!1428599)) b!7745220))

(assert (= (and d!2342046 c!1428598) b!7745212))

(assert (= (and d!2342046 (not c!1428598)) b!7745219))

(assert (= (and b!7745219 c!1428597) b!7745210))

(assert (= (and b!7745219 (not c!1428597)) b!7745208))

(assert (= (and b!7745208 (not res!3087927)) b!7745211))

(assert (= (and b!7745211 res!3087929) b!7745213))

(assert (= (and b!7745213 res!3087928) b!7745207))

(assert (= (and b!7745207 res!3087932) b!7745209))

(assert (= (and b!7745211 (not res!3087926)) b!7745215))

(assert (= (and b!7745215 res!3087930) b!7745214))

(assert (= (and b!7745214 (not res!3087931)) b!7745218))

(assert (= (and b!7745218 (not res!3087933)) b!7745217))

(assert (= (or b!7745212 b!7745213 b!7745214) bm!717830))

(declare-fun m!8213502 () Bool)

(assert (=> b!7745220 m!8213502))

(assert (=> b!7745220 m!8213502))

(declare-fun m!8213504 () Bool)

(assert (=> b!7745220 m!8213504))

(declare-fun m!8213506 () Bool)

(assert (=> b!7745220 m!8213506))

(assert (=> b!7745220 m!8213504))

(assert (=> b!7745220 m!8213506))

(declare-fun m!8213508 () Bool)

(assert (=> b!7745220 m!8213508))

(assert (=> b!7745218 m!8213506))

(assert (=> b!7745218 m!8213506))

(declare-fun m!8213510 () Bool)

(assert (=> b!7745218 m!8213510))

(declare-fun m!8213512 () Bool)

(assert (=> d!2342046 m!8213512))

(assert (=> d!2342046 m!8213390))

(assert (=> bm!717830 m!8213512))

(assert (=> b!7745207 m!8213506))

(assert (=> b!7745207 m!8213506))

(assert (=> b!7745207 m!8213510))

(assert (=> b!7745217 m!8213502))

(assert (=> b!7745216 m!8213476))

(assert (=> b!7745209 m!8213502))

(assert (=> b!7745058 d!2342046))

(declare-fun bs!1965399 () Bool)

(declare-fun d!2342048 () Bool)

(assert (= bs!1965399 (and d!2342048 b!7745058)))

(declare-fun lambda!471650 () Int)

(assert (=> bs!1965399 (= lambda!471650 lambda!471636)))

(declare-fun bs!1965400 () Bool)

(assert (= bs!1965400 (and d!2342048 b!7745054)))

(assert (=> bs!1965400 (not (= lambda!471650 lambda!471637))))

(assert (=> d!2342048 true))

(assert (=> d!2342048 true))

(assert (=> d!2342048 true))

(assert (=> d!2342048 (= (isDefined!14221 (findConcatSeparation!3635 (regOne!41680 r!14126) (regTwo!41680 r!14126) Nil!73307 s!9605 s!9605)) (Exists!4705 lambda!471650))))

(declare-fun lt!2668490 () Unit!168260)

(declare-fun choose!59376 (Regex!20584 Regex!20584 List!73431) Unit!168260)

(assert (=> d!2342048 (= lt!2668490 (choose!59376 (regOne!41680 r!14126) (regTwo!41680 r!14126) s!9605))))

(assert (=> d!2342048 (validRegex!11002 (regOne!41680 r!14126))))

(assert (=> d!2342048 (= (lemmaFindConcatSeparationEquivalentToExists!3393 (regOne!41680 r!14126) (regTwo!41680 r!14126) s!9605) lt!2668490)))

(declare-fun bs!1965401 () Bool)

(assert (= bs!1965401 d!2342048))

(declare-fun m!8213514 () Bool)

(assert (=> bs!1965401 m!8213514))

(assert (=> bs!1965401 m!8213394))

(declare-fun m!8213516 () Bool)

(assert (=> bs!1965401 m!8213516))

(assert (=> bs!1965401 m!8213412))

(declare-fun m!8213518 () Bool)

(assert (=> bs!1965401 m!8213518))

(assert (=> bs!1965401 m!8213394))

(assert (=> b!7745058 d!2342048))

(declare-fun b!7745285 () Bool)

(declare-fun e!4591977 () Option!17605)

(assert (=> b!7745285 (= e!4591977 (Some!17604 (tuple2!69623 Nil!73307 s!9605)))))

(declare-fun b!7745286 () Bool)

(declare-fun e!4591974 () Option!17605)

(assert (=> b!7745286 (= e!4591977 e!4591974)))

(declare-fun c!1428614 () Bool)

(assert (=> b!7745286 (= c!1428614 (is-Nil!73307 s!9605))))

(declare-fun b!7745287 () Bool)

(declare-fun res!3087972 () Bool)

(declare-fun e!4591978 () Bool)

(assert (=> b!7745287 (=> (not res!3087972) (not e!4591978))))

(declare-fun lt!2668498 () Option!17605)

(assert (=> b!7745287 (= res!3087972 (matchR!10076 (regOne!41680 r!14126) (_1!38114 (get!26067 lt!2668498))))))

(declare-fun b!7745288 () Bool)

(declare-fun e!4591976 () Bool)

(assert (=> b!7745288 (= e!4591976 (matchR!10076 (regTwo!41680 r!14126) s!9605))))

(declare-fun b!7745290 () Bool)

(assert (=> b!7745290 (= e!4591978 (= (++!17783 (_1!38114 (get!26067 lt!2668498)) (_2!38114 (get!26067 lt!2668498))) s!9605))))

(declare-fun b!7745291 () Bool)

(assert (=> b!7745291 (= e!4591974 None!17604)))

(declare-fun b!7745289 () Bool)

(declare-fun res!3087975 () Bool)

(assert (=> b!7745289 (=> (not res!3087975) (not e!4591978))))

(assert (=> b!7745289 (= res!3087975 (matchR!10076 (regTwo!41680 r!14126) (_2!38114 (get!26067 lt!2668498))))))

(declare-fun d!2342050 () Bool)

(declare-fun e!4591975 () Bool)

(assert (=> d!2342050 e!4591975))

(declare-fun res!3087976 () Bool)

(assert (=> d!2342050 (=> res!3087976 e!4591975)))

(assert (=> d!2342050 (= res!3087976 e!4591978)))

(declare-fun res!3087973 () Bool)

(assert (=> d!2342050 (=> (not res!3087973) (not e!4591978))))

(assert (=> d!2342050 (= res!3087973 (isDefined!14221 lt!2668498))))

(assert (=> d!2342050 (= lt!2668498 e!4591977)))

(declare-fun c!1428613 () Bool)

(assert (=> d!2342050 (= c!1428613 e!4591976)))

(declare-fun res!3087974 () Bool)

(assert (=> d!2342050 (=> (not res!3087974) (not e!4591976))))

(assert (=> d!2342050 (= res!3087974 (matchR!10076 (regOne!41680 r!14126) Nil!73307))))

(assert (=> d!2342050 (validRegex!11002 (regOne!41680 r!14126))))

(assert (=> d!2342050 (= (findConcatSeparation!3635 (regOne!41680 r!14126) (regTwo!41680 r!14126) Nil!73307 s!9605 s!9605) lt!2668498)))

(declare-fun b!7745292 () Bool)

(declare-fun lt!2668499 () Unit!168260)

(declare-fun lt!2668500 () Unit!168260)

(assert (=> b!7745292 (= lt!2668499 lt!2668500)))

(assert (=> b!7745292 (= (++!17783 (++!17783 Nil!73307 (Cons!73307 (h!79755 s!9605) Nil!73307)) (t!388166 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3331 (List!73431 C!41494 List!73431 List!73431) Unit!168260)

(assert (=> b!7745292 (= lt!2668500 (lemmaMoveElementToOtherListKeepsConcatEq!3331 Nil!73307 (h!79755 s!9605) (t!388166 s!9605) s!9605))))

(assert (=> b!7745292 (= e!4591974 (findConcatSeparation!3635 (regOne!41680 r!14126) (regTwo!41680 r!14126) (++!17783 Nil!73307 (Cons!73307 (h!79755 s!9605) Nil!73307)) (t!388166 s!9605) s!9605))))

(declare-fun b!7745293 () Bool)

(assert (=> b!7745293 (= e!4591975 (not (isDefined!14221 lt!2668498)))))

(assert (= (and d!2342050 res!3087974) b!7745288))

(assert (= (and d!2342050 c!1428613) b!7745285))

(assert (= (and d!2342050 (not c!1428613)) b!7745286))

(assert (= (and b!7745286 c!1428614) b!7745291))

(assert (= (and b!7745286 (not c!1428614)) b!7745292))

(assert (= (and d!2342050 res!3087973) b!7745287))

(assert (= (and b!7745287 res!3087972) b!7745289))

(assert (= (and b!7745289 res!3087975) b!7745290))

(assert (= (and d!2342050 (not res!3087976)) b!7745293))

(declare-fun m!8213534 () Bool)

(assert (=> b!7745288 m!8213534))

(declare-fun m!8213536 () Bool)

(assert (=> b!7745287 m!8213536))

(declare-fun m!8213538 () Bool)

(assert (=> b!7745287 m!8213538))

(assert (=> b!7745289 m!8213536))

(declare-fun m!8213540 () Bool)

(assert (=> b!7745289 m!8213540))

(declare-fun m!8213542 () Bool)

(assert (=> d!2342050 m!8213542))

(declare-fun m!8213544 () Bool)

(assert (=> d!2342050 m!8213544))

(assert (=> d!2342050 m!8213412))

(assert (=> b!7745293 m!8213542))

(declare-fun m!8213546 () Bool)

(assert (=> b!7745292 m!8213546))

(assert (=> b!7745292 m!8213546))

(declare-fun m!8213548 () Bool)

(assert (=> b!7745292 m!8213548))

(declare-fun m!8213550 () Bool)

(assert (=> b!7745292 m!8213550))

(assert (=> b!7745292 m!8213546))

(declare-fun m!8213552 () Bool)

(assert (=> b!7745292 m!8213552))

(assert (=> b!7745290 m!8213536))

(declare-fun m!8213554 () Bool)

(assert (=> b!7745290 m!8213554))

(assert (=> b!7745058 d!2342050))

(assert (=> b!7745058 d!2342040))

(declare-fun d!2342054 () Bool)

(declare-fun isEmpty!41996 (Option!17605) Bool)

(assert (=> d!2342054 (= (isDefined!14221 lt!2668445) (not (isEmpty!41996 lt!2668445)))))

(declare-fun bs!1965403 () Bool)

(assert (= bs!1965403 d!2342054))

(declare-fun m!8213560 () Bool)

(assert (=> bs!1965403 m!8213560))

(assert (=> b!7745058 d!2342054))

(declare-fun b!7745294 () Bool)

(declare-fun e!4591985 () Bool)

(declare-fun e!4591981 () Bool)

(assert (=> b!7745294 (= e!4591985 e!4591981)))

(declare-fun c!1428615 () Bool)

(assert (=> b!7745294 (= c!1428615 (is-Star!20584 (regTwo!41680 r!14126)))))

(declare-fun d!2342058 () Bool)

(declare-fun res!3087978 () Bool)

(assert (=> d!2342058 (=> res!3087978 e!4591985)))

(assert (=> d!2342058 (= res!3087978 (is-ElementMatch!20584 (regTwo!41680 r!14126)))))

(assert (=> d!2342058 (= (validRegex!11002 (regTwo!41680 r!14126)) e!4591985)))

(declare-fun bm!717834 () Bool)

(declare-fun call!717840 () Bool)

(declare-fun c!1428616 () Bool)

(assert (=> bm!717834 (= call!717840 (validRegex!11002 (ite c!1428615 (reg!20913 (regTwo!41680 r!14126)) (ite c!1428616 (regOne!41681 (regTwo!41680 r!14126)) (regOne!41680 (regTwo!41680 r!14126))))))))

(declare-fun b!7745295 () Bool)

(declare-fun e!4591979 () Bool)

(declare-fun e!4591983 () Bool)

(assert (=> b!7745295 (= e!4591979 e!4591983)))

(declare-fun res!3087981 () Bool)

(assert (=> b!7745295 (=> (not res!3087981) (not e!4591983))))

(declare-fun call!717839 () Bool)

(assert (=> b!7745295 (= res!3087981 call!717839)))

(declare-fun bm!717835 () Bool)

(assert (=> bm!717835 (= call!717839 call!717840)))

(declare-fun b!7745296 () Bool)

(declare-fun res!3087977 () Bool)

(declare-fun e!4591982 () Bool)

(assert (=> b!7745296 (=> (not res!3087977) (not e!4591982))))

(assert (=> b!7745296 (= res!3087977 call!717839)))

(declare-fun e!4591980 () Bool)

(assert (=> b!7745296 (= e!4591980 e!4591982)))

(declare-fun b!7745297 () Bool)

(assert (=> b!7745297 (= e!4591981 e!4591980)))

(assert (=> b!7745297 (= c!1428616 (is-Union!20584 (regTwo!41680 r!14126)))))

(declare-fun b!7745298 () Bool)

(declare-fun call!717841 () Bool)

(assert (=> b!7745298 (= e!4591982 call!717841)))

(declare-fun b!7745299 () Bool)

(declare-fun res!3087980 () Bool)

(assert (=> b!7745299 (=> res!3087980 e!4591979)))

(assert (=> b!7745299 (= res!3087980 (not (is-Concat!29429 (regTwo!41680 r!14126))))))

(assert (=> b!7745299 (= e!4591980 e!4591979)))

(declare-fun bm!717836 () Bool)

(assert (=> bm!717836 (= call!717841 (validRegex!11002 (ite c!1428616 (regTwo!41681 (regTwo!41680 r!14126)) (regTwo!41680 (regTwo!41680 r!14126)))))))

(declare-fun b!7745300 () Bool)

(declare-fun e!4591984 () Bool)

(assert (=> b!7745300 (= e!4591981 e!4591984)))

(declare-fun res!3087979 () Bool)

(assert (=> b!7745300 (= res!3087979 (not (nullable!9057 (reg!20913 (regTwo!41680 r!14126)))))))

(assert (=> b!7745300 (=> (not res!3087979) (not e!4591984))))

(declare-fun b!7745301 () Bool)

(assert (=> b!7745301 (= e!4591983 call!717841)))

(declare-fun b!7745302 () Bool)

(assert (=> b!7745302 (= e!4591984 call!717840)))

(assert (= (and d!2342058 (not res!3087978)) b!7745294))

(assert (= (and b!7745294 c!1428615) b!7745300))

(assert (= (and b!7745294 (not c!1428615)) b!7745297))

(assert (= (and b!7745300 res!3087979) b!7745302))

(assert (= (and b!7745297 c!1428616) b!7745296))

(assert (= (and b!7745297 (not c!1428616)) b!7745299))

(assert (= (and b!7745296 res!3087977) b!7745298))

(assert (= (and b!7745299 (not res!3087980)) b!7745295))

(assert (= (and b!7745295 res!3087981) b!7745301))

(assert (= (or b!7745296 b!7745295) bm!717835))

(assert (= (or b!7745298 b!7745301) bm!717836))

(assert (= (or b!7745302 bm!717835) bm!717834))

(declare-fun m!8213562 () Bool)

(assert (=> bm!717834 m!8213562))

(declare-fun m!8213564 () Bool)

(assert (=> bm!717836 m!8213564))

(declare-fun m!8213566 () Bool)

(assert (=> b!7745300 m!8213566))

(assert (=> b!7745053 d!2342058))

(declare-fun bs!1965404 () Bool)

(declare-fun b!7745372 () Bool)

(assert (= bs!1965404 (and b!7745372 b!7745058)))

(declare-fun lambda!471655 () Int)

(assert (=> bs!1965404 (not (= lambda!471655 lambda!471636))))

(declare-fun bs!1965405 () Bool)

(assert (= bs!1965405 (and b!7745372 b!7745054)))

(assert (=> bs!1965405 (not (= lambda!471655 lambda!471637))))

(declare-fun bs!1965406 () Bool)

(assert (= bs!1965406 (and b!7745372 d!2342048)))

(assert (=> bs!1965406 (not (= lambda!471655 lambda!471650))))

(assert (=> b!7745372 true))

(assert (=> b!7745372 true))

(declare-fun bs!1965407 () Bool)

(declare-fun b!7745365 () Bool)

(assert (= bs!1965407 (and b!7745365 b!7745058)))

(declare-fun lambda!471656 () Int)

(assert (=> bs!1965407 (not (= lambda!471656 lambda!471636))))

(declare-fun bs!1965408 () Bool)

(assert (= bs!1965408 (and b!7745365 b!7745054)))

(assert (=> bs!1965408 (= (and (= (_1!38114 lt!2668442) s!9605) (= (regOne!41680 (regOne!41680 r!14126)) (regOne!41680 r!14126)) (= (regTwo!41680 (regOne!41680 r!14126)) (regTwo!41680 r!14126))) (= lambda!471656 lambda!471637))))

(declare-fun bs!1965409 () Bool)

(assert (= bs!1965409 (and b!7745365 d!2342048)))

(assert (=> bs!1965409 (not (= lambda!471656 lambda!471650))))

(declare-fun bs!1965410 () Bool)

(assert (= bs!1965410 (and b!7745365 b!7745372)))

(assert (=> bs!1965410 (not (= lambda!471656 lambda!471655))))

(assert (=> b!7745365 true))

(assert (=> b!7745365 true))

(declare-fun e!4592021 () Bool)

(declare-fun call!717847 () Bool)

(assert (=> b!7745365 (= e!4592021 call!717847)))

(declare-fun b!7745366 () Bool)

(declare-fun c!1428634 () Bool)

(assert (=> b!7745366 (= c!1428634 (is-Union!20584 (regOne!41680 r!14126)))))

(declare-fun e!4592024 () Bool)

(declare-fun e!4592022 () Bool)

(assert (=> b!7745366 (= e!4592024 e!4592022)))

(declare-fun b!7745367 () Bool)

(declare-fun e!4592025 () Bool)

(declare-fun call!717848 () Bool)

(assert (=> b!7745367 (= e!4592025 call!717848)))

(declare-fun b!7745368 () Bool)

(declare-fun c!1428635 () Bool)

(assert (=> b!7745368 (= c!1428635 (is-ElementMatch!20584 (regOne!41680 r!14126)))))

(declare-fun e!4592026 () Bool)

(assert (=> b!7745368 (= e!4592026 e!4592024)))

(declare-fun b!7745369 () Bool)

(assert (=> b!7745369 (= e!4592024 (= (_1!38114 lt!2668442) (Cons!73307 (c!1428574 (regOne!41680 r!14126)) Nil!73307)))))

(declare-fun d!2342060 () Bool)

(declare-fun c!1428636 () Bool)

(assert (=> d!2342060 (= c!1428636 (is-EmptyExpr!20584 (regOne!41680 r!14126)))))

(assert (=> d!2342060 (= (matchRSpec!4649 (regOne!41680 r!14126) (_1!38114 lt!2668442)) e!4592025)))

(declare-fun b!7745370 () Bool)

(assert (=> b!7745370 (= e!4592025 e!4592026)))

(declare-fun res!3088012 () Bool)

(assert (=> b!7745370 (= res!3088012 (not (is-EmptyLang!20584 (regOne!41680 r!14126))))))

(assert (=> b!7745370 (=> (not res!3088012) (not e!4592026))))

(declare-fun bm!717842 () Bool)

(declare-fun c!1428637 () Bool)

(assert (=> bm!717842 (= call!717847 (Exists!4705 (ite c!1428637 lambda!471655 lambda!471656)))))

(declare-fun b!7745371 () Bool)

(declare-fun e!4592023 () Bool)

(assert (=> b!7745371 (= e!4592023 (matchRSpec!4649 (regTwo!41681 (regOne!41680 r!14126)) (_1!38114 lt!2668442)))))

(declare-fun e!4592027 () Bool)

(assert (=> b!7745372 (= e!4592027 call!717847)))

(declare-fun b!7745373 () Bool)

(assert (=> b!7745373 (= e!4592022 e!4592023)))

(declare-fun res!3088011 () Bool)

(assert (=> b!7745373 (= res!3088011 (matchRSpec!4649 (regOne!41681 (regOne!41680 r!14126)) (_1!38114 lt!2668442)))))

(assert (=> b!7745373 (=> res!3088011 e!4592023)))

(declare-fun b!7745374 () Bool)

(assert (=> b!7745374 (= e!4592022 e!4592021)))

(assert (=> b!7745374 (= c!1428637 (is-Star!20584 (regOne!41680 r!14126)))))

(declare-fun bm!717843 () Bool)

(assert (=> bm!717843 (= call!717848 (isEmpty!41995 (_1!38114 lt!2668442)))))

(declare-fun b!7745375 () Bool)

(declare-fun res!3088010 () Bool)

(assert (=> b!7745375 (=> res!3088010 e!4592027)))

(assert (=> b!7745375 (= res!3088010 call!717848)))

(assert (=> b!7745375 (= e!4592021 e!4592027)))

(assert (= (and d!2342060 c!1428636) b!7745367))

(assert (= (and d!2342060 (not c!1428636)) b!7745370))

(assert (= (and b!7745370 res!3088012) b!7745368))

(assert (= (and b!7745368 c!1428635) b!7745369))

(assert (= (and b!7745368 (not c!1428635)) b!7745366))

(assert (= (and b!7745366 c!1428634) b!7745373))

(assert (= (and b!7745366 (not c!1428634)) b!7745374))

(assert (= (and b!7745373 (not res!3088011)) b!7745371))

(assert (= (and b!7745374 c!1428637) b!7745375))

(assert (= (and b!7745374 (not c!1428637)) b!7745365))

(assert (= (and b!7745375 (not res!3088010)) b!7745372))

(assert (= (or b!7745372 b!7745365) bm!717842))

(assert (= (or b!7745367 b!7745375) bm!717843))

(declare-fun m!8213582 () Bool)

(assert (=> bm!717842 m!8213582))

(declare-fun m!8213584 () Bool)

(assert (=> b!7745371 m!8213584))

(declare-fun m!8213586 () Bool)

(assert (=> b!7745373 m!8213586))

(declare-fun m!8213588 () Bool)

(assert (=> bm!717843 m!8213588))

(assert (=> b!7745052 d!2342060))

(declare-fun bs!1965411 () Bool)

(declare-fun b!7745391 () Bool)

(assert (= bs!1965411 (and b!7745391 b!7745372)))

(declare-fun lambda!471659 () Int)

(assert (=> bs!1965411 (= (and (= (_2!38114 lt!2668442) (_1!38114 lt!2668442)) (= (reg!20913 (regTwo!41680 r!14126)) (reg!20913 (regOne!41680 r!14126))) (= (regTwo!41680 r!14126) (regOne!41680 r!14126))) (= lambda!471659 lambda!471655))))

(declare-fun bs!1965412 () Bool)

(assert (= bs!1965412 (and b!7745391 b!7745054)))

(assert (=> bs!1965412 (not (= lambda!471659 lambda!471637))))

(declare-fun bs!1965413 () Bool)

(assert (= bs!1965413 (and b!7745391 d!2342048)))

(assert (=> bs!1965413 (not (= lambda!471659 lambda!471650))))

(declare-fun bs!1965414 () Bool)

(assert (= bs!1965414 (and b!7745391 b!7745365)))

(assert (=> bs!1965414 (not (= lambda!471659 lambda!471656))))

(declare-fun bs!1965415 () Bool)

(assert (= bs!1965415 (and b!7745391 b!7745058)))

(assert (=> bs!1965415 (not (= lambda!471659 lambda!471636))))

(assert (=> b!7745391 true))

(assert (=> b!7745391 true))

(declare-fun bs!1965416 () Bool)

(declare-fun b!7745384 () Bool)

(assert (= bs!1965416 (and b!7745384 b!7745372)))

(declare-fun lambda!471660 () Int)

(assert (=> bs!1965416 (not (= lambda!471660 lambda!471655))))

(declare-fun bs!1965417 () Bool)

(assert (= bs!1965417 (and b!7745384 b!7745054)))

(assert (=> bs!1965417 (= (and (= (_2!38114 lt!2668442) s!9605) (= (regOne!41680 (regTwo!41680 r!14126)) (regOne!41680 r!14126)) (= (regTwo!41680 (regTwo!41680 r!14126)) (regTwo!41680 r!14126))) (= lambda!471660 lambda!471637))))

(declare-fun bs!1965418 () Bool)

(assert (= bs!1965418 (and b!7745384 d!2342048)))

(assert (=> bs!1965418 (not (= lambda!471660 lambda!471650))))

(declare-fun bs!1965419 () Bool)

(assert (= bs!1965419 (and b!7745384 b!7745365)))

(assert (=> bs!1965419 (= (and (= (_2!38114 lt!2668442) (_1!38114 lt!2668442)) (= (regOne!41680 (regTwo!41680 r!14126)) (regOne!41680 (regOne!41680 r!14126))) (= (regTwo!41680 (regTwo!41680 r!14126)) (regTwo!41680 (regOne!41680 r!14126)))) (= lambda!471660 lambda!471656))))

(declare-fun bs!1965420 () Bool)

(assert (= bs!1965420 (and b!7745384 b!7745058)))

(assert (=> bs!1965420 (not (= lambda!471660 lambda!471636))))

(declare-fun bs!1965421 () Bool)

(assert (= bs!1965421 (and b!7745384 b!7745391)))

(assert (=> bs!1965421 (not (= lambda!471660 lambda!471659))))

(assert (=> b!7745384 true))

(assert (=> b!7745384 true))

(declare-fun e!4592034 () Bool)

(declare-fun call!717849 () Bool)

(assert (=> b!7745384 (= e!4592034 call!717849)))

(declare-fun b!7745385 () Bool)

(declare-fun c!1428640 () Bool)

(assert (=> b!7745385 (= c!1428640 (is-Union!20584 (regTwo!41680 r!14126)))))

(declare-fun e!4592037 () Bool)

(declare-fun e!4592035 () Bool)

(assert (=> b!7745385 (= e!4592037 e!4592035)))

(declare-fun b!7745386 () Bool)

(declare-fun e!4592038 () Bool)

(declare-fun call!717850 () Bool)

(assert (=> b!7745386 (= e!4592038 call!717850)))

(declare-fun b!7745387 () Bool)

(declare-fun c!1428641 () Bool)

(assert (=> b!7745387 (= c!1428641 (is-ElementMatch!20584 (regTwo!41680 r!14126)))))

(declare-fun e!4592039 () Bool)

(assert (=> b!7745387 (= e!4592039 e!4592037)))

(declare-fun b!7745388 () Bool)

(assert (=> b!7745388 (= e!4592037 (= (_2!38114 lt!2668442) (Cons!73307 (c!1428574 (regTwo!41680 r!14126)) Nil!73307)))))

(declare-fun d!2342064 () Bool)

(declare-fun c!1428642 () Bool)

(assert (=> d!2342064 (= c!1428642 (is-EmptyExpr!20584 (regTwo!41680 r!14126)))))

(assert (=> d!2342064 (= (matchRSpec!4649 (regTwo!41680 r!14126) (_2!38114 lt!2668442)) e!4592038)))

(declare-fun b!7745389 () Bool)

(assert (=> b!7745389 (= e!4592038 e!4592039)))

(declare-fun res!3088019 () Bool)

(assert (=> b!7745389 (= res!3088019 (not (is-EmptyLang!20584 (regTwo!41680 r!14126))))))

(assert (=> b!7745389 (=> (not res!3088019) (not e!4592039))))

(declare-fun bm!717844 () Bool)

(declare-fun c!1428643 () Bool)

(assert (=> bm!717844 (= call!717849 (Exists!4705 (ite c!1428643 lambda!471659 lambda!471660)))))

(declare-fun b!7745390 () Bool)

(declare-fun e!4592036 () Bool)

(assert (=> b!7745390 (= e!4592036 (matchRSpec!4649 (regTwo!41681 (regTwo!41680 r!14126)) (_2!38114 lt!2668442)))))

(declare-fun e!4592040 () Bool)

(assert (=> b!7745391 (= e!4592040 call!717849)))

(declare-fun b!7745392 () Bool)

(assert (=> b!7745392 (= e!4592035 e!4592036)))

(declare-fun res!3088018 () Bool)

(assert (=> b!7745392 (= res!3088018 (matchRSpec!4649 (regOne!41681 (regTwo!41680 r!14126)) (_2!38114 lt!2668442)))))

(assert (=> b!7745392 (=> res!3088018 e!4592036)))

(declare-fun b!7745393 () Bool)

(assert (=> b!7745393 (= e!4592035 e!4592034)))

(assert (=> b!7745393 (= c!1428643 (is-Star!20584 (regTwo!41680 r!14126)))))

(declare-fun bm!717845 () Bool)

(assert (=> bm!717845 (= call!717850 (isEmpty!41995 (_2!38114 lt!2668442)))))

(declare-fun b!7745394 () Bool)

(declare-fun res!3088017 () Bool)

(assert (=> b!7745394 (=> res!3088017 e!4592040)))

(assert (=> b!7745394 (= res!3088017 call!717850)))

(assert (=> b!7745394 (= e!4592034 e!4592040)))

(assert (= (and d!2342064 c!1428642) b!7745386))

(assert (= (and d!2342064 (not c!1428642)) b!7745389))

(assert (= (and b!7745389 res!3088019) b!7745387))

(assert (= (and b!7745387 c!1428641) b!7745388))

(assert (= (and b!7745387 (not c!1428641)) b!7745385))

(assert (= (and b!7745385 c!1428640) b!7745392))

(assert (= (and b!7745385 (not c!1428640)) b!7745393))

(assert (= (and b!7745392 (not res!3088018)) b!7745390))

(assert (= (and b!7745393 c!1428643) b!7745394))

(assert (= (and b!7745393 (not c!1428643)) b!7745384))

(assert (= (and b!7745394 (not res!3088017)) b!7745391))

(assert (= (or b!7745391 b!7745384) bm!717844))

(assert (= (or b!7745386 b!7745394) bm!717845))

(declare-fun m!8213590 () Bool)

(assert (=> bm!717844 m!8213590))

(declare-fun m!8213592 () Bool)

(assert (=> b!7745390 m!8213592))

(declare-fun m!8213594 () Bool)

(assert (=> b!7745392 m!8213594))

(declare-fun m!8213596 () Bool)

(assert (=> bm!717845 m!8213596))

(assert (=> b!7745052 d!2342064))

(declare-fun d!2342066 () Bool)

(assert (=> d!2342066 (= (matchR!10076 (regOne!41680 r!14126) (_1!38114 lt!2668442)) (matchRSpec!4649 (regOne!41680 r!14126) (_1!38114 lt!2668442)))))

(declare-fun lt!2668507 () Unit!168260)

(declare-fun choose!59377 (Regex!20584 List!73431) Unit!168260)

(assert (=> d!2342066 (= lt!2668507 (choose!59377 (regOne!41680 r!14126) (_1!38114 lt!2668442)))))

(assert (=> d!2342066 (validRegex!11002 (regOne!41680 r!14126))))

(assert (=> d!2342066 (= (mainMatchTheorem!4619 (regOne!41680 r!14126) (_1!38114 lt!2668442)) lt!2668507)))

(declare-fun bs!1965422 () Bool)

(assert (= bs!1965422 d!2342066))

(assert (=> bs!1965422 m!8213404))

(assert (=> bs!1965422 m!8213402))

(declare-fun m!8213598 () Bool)

(assert (=> bs!1965422 m!8213598))

(assert (=> bs!1965422 m!8213412))

(assert (=> b!7745052 d!2342066))

(declare-fun d!2342068 () Bool)

(assert (=> d!2342068 (= (matchR!10076 (regTwo!41680 r!14126) (_2!38114 lt!2668442)) (matchRSpec!4649 (regTwo!41680 r!14126) (_2!38114 lt!2668442)))))

(declare-fun lt!2668508 () Unit!168260)

(assert (=> d!2342068 (= lt!2668508 (choose!59377 (regTwo!41680 r!14126) (_2!38114 lt!2668442)))))

(assert (=> d!2342068 (validRegex!11002 (regTwo!41680 r!14126))))

(assert (=> d!2342068 (= (mainMatchTheorem!4619 (regTwo!41680 r!14126) (_2!38114 lt!2668442)) lt!2668508)))

(declare-fun bs!1965423 () Bool)

(assert (= bs!1965423 d!2342068))

(assert (=> bs!1965423 m!8213416))

(assert (=> bs!1965423 m!8213414))

(declare-fun m!8213600 () Bool)

(assert (=> bs!1965423 m!8213600))

(assert (=> bs!1965423 m!8213378))

(assert (=> b!7745052 d!2342068))

(declare-fun b!7745403 () Bool)

(declare-fun e!4592049 () Bool)

(declare-fun e!4592045 () Bool)

(assert (=> b!7745403 (= e!4592049 e!4592045)))

(declare-fun c!1428644 () Bool)

(assert (=> b!7745403 (= c!1428644 (is-Star!20584 (regOne!41680 r!14126)))))

(declare-fun d!2342070 () Bool)

(declare-fun res!3088029 () Bool)

(assert (=> d!2342070 (=> res!3088029 e!4592049)))

(assert (=> d!2342070 (= res!3088029 (is-ElementMatch!20584 (regOne!41680 r!14126)))))

(assert (=> d!2342070 (= (validRegex!11002 (regOne!41680 r!14126)) e!4592049)))

(declare-fun call!717852 () Bool)

(declare-fun bm!717846 () Bool)

(declare-fun c!1428645 () Bool)

(assert (=> bm!717846 (= call!717852 (validRegex!11002 (ite c!1428644 (reg!20913 (regOne!41680 r!14126)) (ite c!1428645 (regOne!41681 (regOne!41680 r!14126)) (regOne!41680 (regOne!41680 r!14126))))))))

(declare-fun b!7745404 () Bool)

(declare-fun e!4592043 () Bool)

(declare-fun e!4592047 () Bool)

(assert (=> b!7745404 (= e!4592043 e!4592047)))

(declare-fun res!3088032 () Bool)

(assert (=> b!7745404 (=> (not res!3088032) (not e!4592047))))

(declare-fun call!717851 () Bool)

(assert (=> b!7745404 (= res!3088032 call!717851)))

(declare-fun bm!717847 () Bool)

(assert (=> bm!717847 (= call!717851 call!717852)))

(declare-fun b!7745405 () Bool)

(declare-fun res!3088028 () Bool)

(declare-fun e!4592046 () Bool)

(assert (=> b!7745405 (=> (not res!3088028) (not e!4592046))))

(assert (=> b!7745405 (= res!3088028 call!717851)))

(declare-fun e!4592044 () Bool)

(assert (=> b!7745405 (= e!4592044 e!4592046)))

(declare-fun b!7745406 () Bool)

(assert (=> b!7745406 (= e!4592045 e!4592044)))

(assert (=> b!7745406 (= c!1428645 (is-Union!20584 (regOne!41680 r!14126)))))

(declare-fun b!7745407 () Bool)

(declare-fun call!717853 () Bool)

(assert (=> b!7745407 (= e!4592046 call!717853)))

(declare-fun b!7745408 () Bool)

(declare-fun res!3088031 () Bool)

(assert (=> b!7745408 (=> res!3088031 e!4592043)))

(assert (=> b!7745408 (= res!3088031 (not (is-Concat!29429 (regOne!41680 r!14126))))))

(assert (=> b!7745408 (= e!4592044 e!4592043)))

(declare-fun bm!717848 () Bool)

(assert (=> bm!717848 (= call!717853 (validRegex!11002 (ite c!1428645 (regTwo!41681 (regOne!41680 r!14126)) (regTwo!41680 (regOne!41680 r!14126)))))))

(declare-fun b!7745409 () Bool)

(declare-fun e!4592048 () Bool)

(assert (=> b!7745409 (= e!4592045 e!4592048)))

(declare-fun res!3088030 () Bool)

(assert (=> b!7745409 (= res!3088030 (not (nullable!9057 (reg!20913 (regOne!41680 r!14126)))))))

(assert (=> b!7745409 (=> (not res!3088030) (not e!4592048))))

(declare-fun b!7745410 () Bool)

(assert (=> b!7745410 (= e!4592047 call!717853)))

(declare-fun b!7745411 () Bool)

(assert (=> b!7745411 (= e!4592048 call!717852)))

(assert (= (and d!2342070 (not res!3088029)) b!7745403))

(assert (= (and b!7745403 c!1428644) b!7745409))

(assert (= (and b!7745403 (not c!1428644)) b!7745406))

(assert (= (and b!7745409 res!3088030) b!7745411))

(assert (= (and b!7745406 c!1428645) b!7745405))

(assert (= (and b!7745406 (not c!1428645)) b!7745408))

(assert (= (and b!7745405 res!3088028) b!7745407))

(assert (= (and b!7745408 (not res!3088031)) b!7745404))

(assert (= (and b!7745404 res!3088032) b!7745410))

(assert (= (or b!7745405 b!7745404) bm!717847))

(assert (= (or b!7745407 b!7745410) bm!717848))

(assert (= (or b!7745411 bm!717847) bm!717846))

(declare-fun m!8213602 () Bool)

(assert (=> bm!717846 m!8213602))

(declare-fun m!8213604 () Bool)

(assert (=> bm!717848 m!8213604))

(declare-fun m!8213606 () Bool)

(assert (=> b!7745409 m!8213606))

(assert (=> b!7745052 d!2342070))

(declare-fun b!7745412 () Bool)

(declare-fun res!3088039 () Bool)

(declare-fun e!4592050 () Bool)

(assert (=> b!7745412 (=> (not res!3088039) (not e!4592050))))

(assert (=> b!7745412 (= res!3088039 (isEmpty!41995 (tail!15356 (_2!38114 lt!2668442))))))

(declare-fun b!7745413 () Bool)

(declare-fun res!3088034 () Bool)

(declare-fun e!4592055 () Bool)

(assert (=> b!7745413 (=> res!3088034 e!4592055)))

(assert (=> b!7745413 (= res!3088034 (not (is-ElementMatch!20584 (regTwo!41680 r!14126))))))

(declare-fun e!4592052 () Bool)

(assert (=> b!7745413 (= e!4592052 e!4592055)))

(declare-fun b!7745414 () Bool)

(assert (=> b!7745414 (= e!4592050 (= (head!15816 (_2!38114 lt!2668442)) (c!1428574 (regTwo!41680 r!14126))))))

(declare-fun b!7745415 () Bool)

(declare-fun lt!2668509 () Bool)

(assert (=> b!7745415 (= e!4592052 (not lt!2668509))))

(declare-fun b!7745416 () Bool)

(declare-fun res!3088033 () Bool)

(assert (=> b!7745416 (=> res!3088033 e!4592055)))

(assert (=> b!7745416 (= res!3088033 e!4592050)))

(declare-fun res!3088036 () Bool)

(assert (=> b!7745416 (=> (not res!3088036) (not e!4592050))))

(assert (=> b!7745416 (= res!3088036 lt!2668509)))

(declare-fun bm!717849 () Bool)

(declare-fun call!717854 () Bool)

(assert (=> bm!717849 (= call!717854 (isEmpty!41995 (_2!38114 lt!2668442)))))

(declare-fun b!7745417 () Bool)

(declare-fun e!4592051 () Bool)

(assert (=> b!7745417 (= e!4592051 (= lt!2668509 call!717854))))

(declare-fun b!7745418 () Bool)

(declare-fun res!3088035 () Bool)

(assert (=> b!7745418 (=> (not res!3088035) (not e!4592050))))

(assert (=> b!7745418 (= res!3088035 (not call!717854))))

(declare-fun b!7745419 () Bool)

(declare-fun e!4592054 () Bool)

(declare-fun e!4592053 () Bool)

(assert (=> b!7745419 (= e!4592054 e!4592053)))

(declare-fun res!3088038 () Bool)

(assert (=> b!7745419 (=> res!3088038 e!4592053)))

(assert (=> b!7745419 (= res!3088038 call!717854)))

(declare-fun b!7745420 () Bool)

(assert (=> b!7745420 (= e!4592055 e!4592054)))

(declare-fun res!3088037 () Bool)

(assert (=> b!7745420 (=> (not res!3088037) (not e!4592054))))

(assert (=> b!7745420 (= res!3088037 (not lt!2668509))))

(declare-fun b!7745421 () Bool)

(declare-fun e!4592056 () Bool)

(assert (=> b!7745421 (= e!4592056 (nullable!9057 (regTwo!41680 r!14126)))))

(declare-fun b!7745422 () Bool)

(assert (=> b!7745422 (= e!4592053 (not (= (head!15816 (_2!38114 lt!2668442)) (c!1428574 (regTwo!41680 r!14126)))))))

(declare-fun b!7745423 () Bool)

(declare-fun res!3088040 () Bool)

(assert (=> b!7745423 (=> res!3088040 e!4592053)))

(assert (=> b!7745423 (= res!3088040 (not (isEmpty!41995 (tail!15356 (_2!38114 lt!2668442)))))))

(declare-fun b!7745424 () Bool)

(assert (=> b!7745424 (= e!4592051 e!4592052)))

(declare-fun c!1428646 () Bool)

(assert (=> b!7745424 (= c!1428646 (is-EmptyLang!20584 (regTwo!41680 r!14126)))))

(declare-fun d!2342072 () Bool)

(assert (=> d!2342072 e!4592051))

(declare-fun c!1428647 () Bool)

(assert (=> d!2342072 (= c!1428647 (is-EmptyExpr!20584 (regTwo!41680 r!14126)))))

(assert (=> d!2342072 (= lt!2668509 e!4592056)))

(declare-fun c!1428648 () Bool)

(assert (=> d!2342072 (= c!1428648 (isEmpty!41995 (_2!38114 lt!2668442)))))

(assert (=> d!2342072 (validRegex!11002 (regTwo!41680 r!14126))))

(assert (=> d!2342072 (= (matchR!10076 (regTwo!41680 r!14126) (_2!38114 lt!2668442)) lt!2668509)))

(declare-fun b!7745425 () Bool)

(assert (=> b!7745425 (= e!4592056 (matchR!10076 (derivativeStep!6016 (regTwo!41680 r!14126) (head!15816 (_2!38114 lt!2668442))) (tail!15356 (_2!38114 lt!2668442))))))

(assert (= (and d!2342072 c!1428648) b!7745421))

(assert (= (and d!2342072 (not c!1428648)) b!7745425))

(assert (= (and d!2342072 c!1428647) b!7745417))

(assert (= (and d!2342072 (not c!1428647)) b!7745424))

(assert (= (and b!7745424 c!1428646) b!7745415))

(assert (= (and b!7745424 (not c!1428646)) b!7745413))

(assert (= (and b!7745413 (not res!3088034)) b!7745416))

(assert (= (and b!7745416 res!3088036) b!7745418))

(assert (= (and b!7745418 res!3088035) b!7745412))

(assert (= (and b!7745412 res!3088039) b!7745414))

(assert (= (and b!7745416 (not res!3088033)) b!7745420))

(assert (= (and b!7745420 res!3088037) b!7745419))

(assert (= (and b!7745419 (not res!3088038)) b!7745423))

(assert (= (and b!7745423 (not res!3088040)) b!7745422))

(assert (= (or b!7745417 b!7745418 b!7745419) bm!717849))

(declare-fun m!8213608 () Bool)

(assert (=> b!7745425 m!8213608))

(assert (=> b!7745425 m!8213608))

(declare-fun m!8213610 () Bool)

(assert (=> b!7745425 m!8213610))

(declare-fun m!8213612 () Bool)

(assert (=> b!7745425 m!8213612))

(assert (=> b!7745425 m!8213610))

(assert (=> b!7745425 m!8213612))

(declare-fun m!8213614 () Bool)

(assert (=> b!7745425 m!8213614))

(assert (=> b!7745423 m!8213612))

(assert (=> b!7745423 m!8213612))

(declare-fun m!8213616 () Bool)

(assert (=> b!7745423 m!8213616))

(assert (=> d!2342072 m!8213596))

(assert (=> d!2342072 m!8213378))

(assert (=> bm!717849 m!8213596))

(assert (=> b!7745412 m!8213612))

(assert (=> b!7745412 m!8213612))

(assert (=> b!7745412 m!8213616))

(assert (=> b!7745422 m!8213608))

(declare-fun m!8213618 () Bool)

(assert (=> b!7745421 m!8213618))

(assert (=> b!7745414 m!8213608))

(assert (=> b!7745052 d!2342072))

(declare-fun d!2342074 () Bool)

(declare-fun lt!2668512 () tuple2!69622)

(declare-fun dynLambda!29977 (Int tuple2!69622) Bool)

(assert (=> d!2342074 (dynLambda!29977 lambda!471637 lt!2668512)))

(declare-fun choose!59378 (Int) tuple2!69622)

(assert (=> d!2342074 (= lt!2668512 (choose!59378 lambda!471637))))

(assert (=> d!2342074 (Exists!4705 lambda!471637)))

(assert (=> d!2342074 (= (pickWitness!541 lambda!471637) lt!2668512)))

(declare-fun b_lambda!289389 () Bool)

(assert (=> (not b_lambda!289389) (not d!2342074)))

(declare-fun bs!1965424 () Bool)

(assert (= bs!1965424 d!2342074))

(declare-fun m!8213620 () Bool)

(assert (=> bs!1965424 m!8213620))

(declare-fun m!8213622 () Bool)

(assert (=> bs!1965424 m!8213622))

(assert (=> bs!1965424 m!8213380))

(assert (=> b!7745052 d!2342074))

(declare-fun b!7745426 () Bool)

(declare-fun res!3088047 () Bool)

(declare-fun e!4592057 () Bool)

(assert (=> b!7745426 (=> (not res!3088047) (not e!4592057))))

(assert (=> b!7745426 (= res!3088047 (isEmpty!41995 (tail!15356 (_1!38114 lt!2668442))))))

(declare-fun b!7745427 () Bool)

(declare-fun res!3088042 () Bool)

(declare-fun e!4592062 () Bool)

(assert (=> b!7745427 (=> res!3088042 e!4592062)))

(assert (=> b!7745427 (= res!3088042 (not (is-ElementMatch!20584 (regOne!41680 r!14126))))))

(declare-fun e!4592059 () Bool)

(assert (=> b!7745427 (= e!4592059 e!4592062)))

(declare-fun b!7745428 () Bool)

(assert (=> b!7745428 (= e!4592057 (= (head!15816 (_1!38114 lt!2668442)) (c!1428574 (regOne!41680 r!14126))))))

(declare-fun b!7745429 () Bool)

(declare-fun lt!2668513 () Bool)

(assert (=> b!7745429 (= e!4592059 (not lt!2668513))))

(declare-fun b!7745430 () Bool)

(declare-fun res!3088041 () Bool)

(assert (=> b!7745430 (=> res!3088041 e!4592062)))

(assert (=> b!7745430 (= res!3088041 e!4592057)))

(declare-fun res!3088044 () Bool)

(assert (=> b!7745430 (=> (not res!3088044) (not e!4592057))))

(assert (=> b!7745430 (= res!3088044 lt!2668513)))

(declare-fun bm!717852 () Bool)

(declare-fun call!717857 () Bool)

(assert (=> bm!717852 (= call!717857 (isEmpty!41995 (_1!38114 lt!2668442)))))

(declare-fun b!7745431 () Bool)

(declare-fun e!4592058 () Bool)

(assert (=> b!7745431 (= e!4592058 (= lt!2668513 call!717857))))

(declare-fun b!7745432 () Bool)

(declare-fun res!3088043 () Bool)

(assert (=> b!7745432 (=> (not res!3088043) (not e!4592057))))

(assert (=> b!7745432 (= res!3088043 (not call!717857))))

(declare-fun b!7745433 () Bool)

(declare-fun e!4592061 () Bool)

(declare-fun e!4592060 () Bool)

(assert (=> b!7745433 (= e!4592061 e!4592060)))

(declare-fun res!3088046 () Bool)

(assert (=> b!7745433 (=> res!3088046 e!4592060)))

(assert (=> b!7745433 (= res!3088046 call!717857)))

(declare-fun b!7745434 () Bool)

(assert (=> b!7745434 (= e!4592062 e!4592061)))

(declare-fun res!3088045 () Bool)

(assert (=> b!7745434 (=> (not res!3088045) (not e!4592061))))

(assert (=> b!7745434 (= res!3088045 (not lt!2668513))))

(declare-fun b!7745435 () Bool)

(declare-fun e!4592063 () Bool)

(assert (=> b!7745435 (= e!4592063 (nullable!9057 (regOne!41680 r!14126)))))

(declare-fun b!7745436 () Bool)

(assert (=> b!7745436 (= e!4592060 (not (= (head!15816 (_1!38114 lt!2668442)) (c!1428574 (regOne!41680 r!14126)))))))

(declare-fun b!7745437 () Bool)

(declare-fun res!3088048 () Bool)

(assert (=> b!7745437 (=> res!3088048 e!4592060)))

(assert (=> b!7745437 (= res!3088048 (not (isEmpty!41995 (tail!15356 (_1!38114 lt!2668442)))))))

(declare-fun b!7745438 () Bool)

(assert (=> b!7745438 (= e!4592058 e!4592059)))

(declare-fun c!1428649 () Bool)

(assert (=> b!7745438 (= c!1428649 (is-EmptyLang!20584 (regOne!41680 r!14126)))))

(declare-fun d!2342076 () Bool)

(assert (=> d!2342076 e!4592058))

(declare-fun c!1428650 () Bool)

(assert (=> d!2342076 (= c!1428650 (is-EmptyExpr!20584 (regOne!41680 r!14126)))))

(assert (=> d!2342076 (= lt!2668513 e!4592063)))

(declare-fun c!1428651 () Bool)

(assert (=> d!2342076 (= c!1428651 (isEmpty!41995 (_1!38114 lt!2668442)))))

(assert (=> d!2342076 (validRegex!11002 (regOne!41680 r!14126))))

(assert (=> d!2342076 (= (matchR!10076 (regOne!41680 r!14126) (_1!38114 lt!2668442)) lt!2668513)))

(declare-fun b!7745439 () Bool)

(assert (=> b!7745439 (= e!4592063 (matchR!10076 (derivativeStep!6016 (regOne!41680 r!14126) (head!15816 (_1!38114 lt!2668442))) (tail!15356 (_1!38114 lt!2668442))))))

(assert (= (and d!2342076 c!1428651) b!7745435))

(assert (= (and d!2342076 (not c!1428651)) b!7745439))

(assert (= (and d!2342076 c!1428650) b!7745431))

(assert (= (and d!2342076 (not c!1428650)) b!7745438))

(assert (= (and b!7745438 c!1428649) b!7745429))

(assert (= (and b!7745438 (not c!1428649)) b!7745427))

(assert (= (and b!7745427 (not res!3088042)) b!7745430))

(assert (= (and b!7745430 res!3088044) b!7745432))

(assert (= (and b!7745432 res!3088043) b!7745426))

(assert (= (and b!7745426 res!3088047) b!7745428))

(assert (= (and b!7745430 (not res!3088041)) b!7745434))

(assert (= (and b!7745434 res!3088045) b!7745433))

(assert (= (and b!7745433 (not res!3088046)) b!7745437))

(assert (= (and b!7745437 (not res!3088048)) b!7745436))

(assert (= (or b!7745431 b!7745432 b!7745433) bm!717852))

(declare-fun m!8213624 () Bool)

(assert (=> b!7745439 m!8213624))

(assert (=> b!7745439 m!8213624))

(declare-fun m!8213626 () Bool)

(assert (=> b!7745439 m!8213626))

(declare-fun m!8213628 () Bool)

(assert (=> b!7745439 m!8213628))

(assert (=> b!7745439 m!8213626))

(assert (=> b!7745439 m!8213628))

(declare-fun m!8213630 () Bool)

(assert (=> b!7745439 m!8213630))

(assert (=> b!7745437 m!8213628))

(assert (=> b!7745437 m!8213628))

(declare-fun m!8213632 () Bool)

(assert (=> b!7745437 m!8213632))

(assert (=> d!2342076 m!8213588))

(assert (=> d!2342076 m!8213412))

(assert (=> bm!717852 m!8213588))

(assert (=> b!7745426 m!8213628))

(assert (=> b!7745426 m!8213628))

(assert (=> b!7745426 m!8213632))

(assert (=> b!7745436 m!8213624))

(declare-fun m!8213634 () Bool)

(assert (=> b!7745435 m!8213634))

(assert (=> b!7745428 m!8213624))

(assert (=> b!7745052 d!2342076))

(declare-fun b!7745451 () Bool)

(declare-fun e!4592066 () Bool)

(declare-fun tp!2272789 () Bool)

(declare-fun tp!2272792 () Bool)

(assert (=> b!7745451 (= e!4592066 (and tp!2272789 tp!2272792))))

(declare-fun b!7745453 () Bool)

(declare-fun tp!2272788 () Bool)

(declare-fun tp!2272790 () Bool)

(assert (=> b!7745453 (= e!4592066 (and tp!2272788 tp!2272790))))

(assert (=> b!7745056 (= tp!2272758 e!4592066)))

(declare-fun b!7745450 () Bool)

(assert (=> b!7745450 (= e!4592066 tp_is_empty!51523)))

(declare-fun b!7745452 () Bool)

(declare-fun tp!2272791 () Bool)

(assert (=> b!7745452 (= e!4592066 tp!2272791)))

(assert (= (and b!7745056 (is-ElementMatch!20584 (regOne!41681 r!14126))) b!7745450))

(assert (= (and b!7745056 (is-Concat!29429 (regOne!41681 r!14126))) b!7745451))

(assert (= (and b!7745056 (is-Star!20584 (regOne!41681 r!14126))) b!7745452))

(assert (= (and b!7745056 (is-Union!20584 (regOne!41681 r!14126))) b!7745453))

(declare-fun b!7745455 () Bool)

(declare-fun e!4592067 () Bool)

(declare-fun tp!2272794 () Bool)

(declare-fun tp!2272797 () Bool)

(assert (=> b!7745455 (= e!4592067 (and tp!2272794 tp!2272797))))

(declare-fun b!7745457 () Bool)

(declare-fun tp!2272793 () Bool)

(declare-fun tp!2272795 () Bool)

(assert (=> b!7745457 (= e!4592067 (and tp!2272793 tp!2272795))))

(assert (=> b!7745056 (= tp!2272755 e!4592067)))

(declare-fun b!7745454 () Bool)

(assert (=> b!7745454 (= e!4592067 tp_is_empty!51523)))

(declare-fun b!7745456 () Bool)

(declare-fun tp!2272796 () Bool)

(assert (=> b!7745456 (= e!4592067 tp!2272796)))

(assert (= (and b!7745056 (is-ElementMatch!20584 (regTwo!41681 r!14126))) b!7745454))

(assert (= (and b!7745056 (is-Concat!29429 (regTwo!41681 r!14126))) b!7745455))

(assert (= (and b!7745056 (is-Star!20584 (regTwo!41681 r!14126))) b!7745456))

(assert (= (and b!7745056 (is-Union!20584 (regTwo!41681 r!14126))) b!7745457))

(declare-fun b!7745459 () Bool)

(declare-fun e!4592068 () Bool)

(declare-fun tp!2272799 () Bool)

(declare-fun tp!2272802 () Bool)

(assert (=> b!7745459 (= e!4592068 (and tp!2272799 tp!2272802))))

(declare-fun b!7745461 () Bool)

(declare-fun tp!2272798 () Bool)

(declare-fun tp!2272800 () Bool)

(assert (=> b!7745461 (= e!4592068 (and tp!2272798 tp!2272800))))

(assert (=> b!7745051 (= tp!2272756 e!4592068)))

(declare-fun b!7745458 () Bool)

(assert (=> b!7745458 (= e!4592068 tp_is_empty!51523)))

(declare-fun b!7745460 () Bool)

(declare-fun tp!2272801 () Bool)

(assert (=> b!7745460 (= e!4592068 tp!2272801)))

(assert (= (and b!7745051 (is-ElementMatch!20584 (reg!20913 r!14126))) b!7745458))

(assert (= (and b!7745051 (is-Concat!29429 (reg!20913 r!14126))) b!7745459))

(assert (= (and b!7745051 (is-Star!20584 (reg!20913 r!14126))) b!7745460))

(assert (= (and b!7745051 (is-Union!20584 (reg!20913 r!14126))) b!7745461))

(declare-fun b!7745466 () Bool)

(declare-fun e!4592071 () Bool)

(declare-fun tp!2272805 () Bool)

(assert (=> b!7745466 (= e!4592071 (and tp_is_empty!51523 tp!2272805))))

(assert (=> b!7745050 (= tp!2272754 e!4592071)))

(assert (= (and b!7745050 (is-Cons!73307 (t!388166 s!9605))) b!7745466))

(declare-fun b!7745468 () Bool)

(declare-fun e!4592072 () Bool)

(declare-fun tp!2272807 () Bool)

(declare-fun tp!2272810 () Bool)

(assert (=> b!7745468 (= e!4592072 (and tp!2272807 tp!2272810))))

(declare-fun b!7745470 () Bool)

(declare-fun tp!2272806 () Bool)

(declare-fun tp!2272808 () Bool)

(assert (=> b!7745470 (= e!4592072 (and tp!2272806 tp!2272808))))

(assert (=> b!7745057 (= tp!2272757 e!4592072)))

(declare-fun b!7745467 () Bool)

(assert (=> b!7745467 (= e!4592072 tp_is_empty!51523)))

(declare-fun b!7745469 () Bool)

(declare-fun tp!2272809 () Bool)

(assert (=> b!7745469 (= e!4592072 tp!2272809)))

(assert (= (and b!7745057 (is-ElementMatch!20584 (regOne!41680 r!14126))) b!7745467))

(assert (= (and b!7745057 (is-Concat!29429 (regOne!41680 r!14126))) b!7745468))

(assert (= (and b!7745057 (is-Star!20584 (regOne!41680 r!14126))) b!7745469))

(assert (= (and b!7745057 (is-Union!20584 (regOne!41680 r!14126))) b!7745470))

(declare-fun b!7745472 () Bool)

(declare-fun e!4592073 () Bool)

(declare-fun tp!2272812 () Bool)

(declare-fun tp!2272815 () Bool)

(assert (=> b!7745472 (= e!4592073 (and tp!2272812 tp!2272815))))

(declare-fun b!7745474 () Bool)

(declare-fun tp!2272811 () Bool)

(declare-fun tp!2272813 () Bool)

(assert (=> b!7745474 (= e!4592073 (and tp!2272811 tp!2272813))))

(assert (=> b!7745057 (= tp!2272759 e!4592073)))

(declare-fun b!7745471 () Bool)

(assert (=> b!7745471 (= e!4592073 tp_is_empty!51523)))

(declare-fun b!7745473 () Bool)

(declare-fun tp!2272814 () Bool)

(assert (=> b!7745473 (= e!4592073 tp!2272814)))

(assert (= (and b!7745057 (is-ElementMatch!20584 (regTwo!41680 r!14126))) b!7745471))

(assert (= (and b!7745057 (is-Concat!29429 (regTwo!41680 r!14126))) b!7745472))

(assert (= (and b!7745057 (is-Star!20584 (regTwo!41680 r!14126))) b!7745473))

(assert (= (and b!7745057 (is-Union!20584 (regTwo!41680 r!14126))) b!7745474))

(declare-fun b_lambda!289391 () Bool)

(assert (= b_lambda!289389 (or b!7745054 b_lambda!289391)))

(declare-fun bs!1965425 () Bool)

(declare-fun d!2342078 () Bool)

(assert (= bs!1965425 (and d!2342078 b!7745054)))

(declare-fun res!3088049 () Bool)

(declare-fun e!4592074 () Bool)

(assert (=> bs!1965425 (=> (not res!3088049) (not e!4592074))))

(assert (=> bs!1965425 (= res!3088049 (= (++!17783 (_1!38114 lt!2668512) (_2!38114 lt!2668512)) s!9605))))

(assert (=> bs!1965425 (= (dynLambda!29977 lambda!471637 lt!2668512) e!4592074)))

(declare-fun b!7745475 () Bool)

(declare-fun res!3088050 () Bool)

(assert (=> b!7745475 (=> (not res!3088050) (not e!4592074))))

(assert (=> b!7745475 (= res!3088050 (matchRSpec!4649 (regOne!41680 r!14126) (_1!38114 lt!2668512)))))

(declare-fun b!7745476 () Bool)

(assert (=> b!7745476 (= e!4592074 (matchRSpec!4649 (regTwo!41680 r!14126) (_2!38114 lt!2668512)))))

(assert (= (and bs!1965425 res!3088049) b!7745475))

(assert (= (and b!7745475 res!3088050) b!7745476))

(declare-fun m!8213636 () Bool)

(assert (=> bs!1965425 m!8213636))

(declare-fun m!8213638 () Bool)

(assert (=> b!7745475 m!8213638))

(declare-fun m!8213640 () Bool)

(assert (=> b!7745476 m!8213640))

(assert (=> d!2342074 d!2342078))

(push 1)

(assert (not b!7745293))

(assert (not d!2342046))

(assert (not b!7745216))

(assert (not b!7745167))

(assert (not b!7745390))

(assert (not d!2342066))

(assert (not b!7745439))

(assert (not bm!717845))

(assert (not bm!717836))

(assert (not b!7745290))

(assert (not b!7745426))

(assert (not b!7745217))

(assert (not b!7745470))

(assert (not d!2342072))

(assert (not b!7745453))

(assert (not b!7745451))

(assert (not b!7745288))

(assert (not b!7745421))

(assert (not bm!717843))

(assert (not b!7745373))

(assert (not d!2342076))

(assert (not b!7745371))

(assert (not d!2342028))

(assert (not d!2342034))

(assert (not b!7745475))

(assert (not b!7745459))

(assert (not b!7745436))

(assert (not b!7745414))

(assert (not b!7745300))

(assert (not b!7745461))

(assert (not b!7745468))

(assert (not bs!1965425))

(assert (not b!7745425))

(assert (not b!7745178))

(assert (not d!2342032))

(assert (not b!7745207))

(assert (not bm!717844))

(assert (not b!7745437))

(assert (not b!7745163))

(assert (not b!7745423))

(assert (not b!7745204))

(assert (not bm!717849))

(assert (not b!7745218))

(assert (not bm!717852))

(assert (not b!7745456))

(assert (not bm!717829))

(assert (not d!2342048))

(assert (not d!2342040))

(assert (not d!2342038))

(assert (not b!7745392))

(assert (not bm!717846))

(assert (not bm!717834))

(assert (not b!7745287))

(assert (not b!7745154))

(assert (not b!7745412))

(assert (not bm!717830))

(assert (not b!7745476))

(assert (not b!7745177))

(assert (not b!7745422))

(assert (not b!7745472))

(assert (not bm!717827))

(assert (not b!7745289))

(assert (not b!7745209))

(assert (not b!7745469))

(assert (not b!7745455))

(assert (not bm!717842))

(assert (not d!2342068))

(assert (not b!7745164))

(assert (not b!7745156))

(assert (not bm!717820))

(assert (not b!7745473))

(assert (not b!7745409))

(assert (not d!2342050))

(assert (not b!7745292))

(assert (not bm!717848))

(assert (not b!7745452))

(assert (not b!7745457))

(assert (not d!2342054))

(assert (not d!2342074))

(assert (not b!7745220))

(assert (not b!7745428))

(assert (not b!7745460))

(assert (not b!7745474))

(assert tp_is_empty!51523)

(assert (not b!7745165))

(assert (not b!7745466))

(assert (not b_lambda!289391))

(assert (not b!7745435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

