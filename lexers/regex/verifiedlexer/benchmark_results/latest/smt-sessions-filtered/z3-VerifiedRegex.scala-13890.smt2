; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738108 () Bool)

(assert start!738108)

(declare-fun b!7733201 () Bool)

(assert (=> b!7733201 true))

(assert (=> b!7733201 true))

(declare-fun bs!1963622 () Bool)

(declare-fun b!7733205 () Bool)

(assert (= bs!1963622 (and b!7733205 b!7733201)))

(declare-fun lambda!471369 () Int)

(declare-fun lambda!471368 () Int)

(assert (=> bs!1963622 (not (= lambda!471369 lambda!471368))))

(assert (=> b!7733205 true))

(assert (=> b!7733205 true))

(declare-fun b!7733195 () Bool)

(declare-datatypes ((Unit!168224 0))(
  ( (Unit!168225) )
))
(declare-fun e!4585848 () Unit!168224)

(declare-fun Unit!168226 () Unit!168224)

(assert (=> b!7733195 (= e!4585848 Unit!168226)))

(declare-datatypes ((C!41476 0))(
  ( (C!41477 (val!31178 Int)) )
))
(declare-datatypes ((List!73422 0))(
  ( (Nil!73298) (Cons!73298 (h!79746 C!41476) (t!388157 List!73422)) )
))
(declare-datatypes ((tuple2!69604 0))(
  ( (tuple2!69605 (_1!38105 List!73422) (_2!38105 List!73422)) )
))
(declare-fun lt!2667432 () tuple2!69604)

(declare-datatypes ((Option!17596 0))(
  ( (None!17595) (Some!17595 (v!54730 tuple2!69604)) )
))
(declare-fun lt!2667431 () Option!17596)

(declare-fun get!26053 (Option!17596) tuple2!69604)

(assert (=> b!7733195 (= lt!2667432 (get!26053 lt!2667431))))

(declare-fun lt!2667434 () Unit!168224)

(declare-fun s!9605 () List!73422)

(declare-datatypes ((Regex!20575 0))(
  ( (ElementMatch!20575 (c!1425746 C!41476)) (Concat!29420 (regOne!41662 Regex!20575) (regTwo!41662 Regex!20575)) (EmptyExpr!20575) (Star!20575 (reg!20904 Regex!20575)) (EmptyLang!20575) (Union!20575 (regOne!41663 Regex!20575) (regTwo!41663 Regex!20575)) )
))
(declare-fun r!14126 () Regex!20575)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!200 (Regex!20575 Regex!20575 List!73422 List!73422 List!73422) Unit!168224)

(assert (=> b!7733195 (= lt!2667434 (lemmaFindSeparationIsDefinedThenConcatMatches!200 (regOne!41662 r!14126) (regTwo!41662 r!14126) (_1!38105 lt!2667432) (_2!38105 lt!2667432) s!9605))))

(declare-fun res!3084555 () Bool)

(declare-fun matchR!10067 (Regex!20575 List!73422) Bool)

(declare-fun ++!17774 (List!73422 List!73422) List!73422)

(assert (=> b!7733195 (= res!3084555 (matchR!10067 r!14126 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))))))

(declare-fun e!4585844 () Bool)

(assert (=> b!7733195 (=> (not res!3084555) (not e!4585844))))

(assert (=> b!7733195 e!4585844))

(declare-fun b!7733196 () Bool)

(declare-fun e!4585847 () Bool)

(declare-fun tp!2269174 () Bool)

(declare-fun tp!2269175 () Bool)

(assert (=> b!7733196 (= e!4585847 (and tp!2269174 tp!2269175))))

(declare-fun res!3084558 () Bool)

(declare-fun e!4585849 () Bool)

(assert (=> start!738108 (=> (not res!3084558) (not e!4585849))))

(declare-fun validRegex!10993 (Regex!20575) Bool)

(assert (=> start!738108 (= res!3084558 (validRegex!10993 r!14126))))

(assert (=> start!738108 e!4585849))

(assert (=> start!738108 e!4585847))

(declare-fun e!4585843 () Bool)

(assert (=> start!738108 e!4585843))

(declare-fun b!7733197 () Bool)

(declare-fun e!4585845 () Bool)

(assert (=> b!7733197 (= e!4585845 (validRegex!10993 (regOne!41662 r!14126)))))

(declare-fun lt!2667436 () tuple2!69604)

(declare-fun pickWitness!532 (Int) tuple2!69604)

(assert (=> b!7733197 (= lt!2667436 (pickWitness!532 lambda!471369))))

(declare-fun b!7733198 () Bool)

(declare-fun tp_is_empty!51505 () Bool)

(declare-fun tp!2269176 () Bool)

(assert (=> b!7733198 (= e!4585843 (and tp_is_empty!51505 tp!2269176))))

(declare-fun b!7733199 () Bool)

(declare-fun tp!2269173 () Bool)

(declare-fun tp!2269177 () Bool)

(assert (=> b!7733199 (= e!4585847 (and tp!2269173 tp!2269177))))

(declare-fun b!7733200 () Bool)

(declare-fun e!4585846 () Bool)

(assert (=> b!7733200 (= e!4585846 e!4585845)))

(declare-fun res!3084560 () Bool)

(assert (=> b!7733200 (=> res!3084560 e!4585845)))

(declare-fun Exists!4696 (Int) Bool)

(assert (=> b!7733200 (= res!3084560 (Exists!4696 lambda!471368))))

(declare-fun lt!2667435 () Unit!168224)

(assert (=> b!7733200 (= lt!2667435 e!4585848)))

(declare-fun c!1425745 () Bool)

(declare-fun lt!2667430 () Bool)

(assert (=> b!7733200 (= c!1425745 lt!2667430)))

(assert (=> b!7733201 (= e!4585849 (not e!4585846))))

(declare-fun res!3084557 () Bool)

(assert (=> b!7733201 (=> res!3084557 e!4585846)))

(assert (=> b!7733201 (= res!3084557 (matchR!10067 r!14126 s!9605))))

(assert (=> b!7733201 (= lt!2667430 (Exists!4696 lambda!471368))))

(declare-fun isDefined!14212 (Option!17596) Bool)

(assert (=> b!7733201 (= lt!2667430 (isDefined!14212 lt!2667431))))

(declare-fun findConcatSeparation!3626 (Regex!20575 Regex!20575 List!73422 List!73422 List!73422) Option!17596)

(assert (=> b!7733201 (= lt!2667431 (findConcatSeparation!3626 (regOne!41662 r!14126) (regTwo!41662 r!14126) Nil!73298 s!9605 s!9605))))

(declare-fun lt!2667433 () Unit!168224)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3384 (Regex!20575 Regex!20575 List!73422) Unit!168224)

(assert (=> b!7733201 (= lt!2667433 (lemmaFindConcatSeparationEquivalentToExists!3384 (regOne!41662 r!14126) (regTwo!41662 r!14126) s!9605))))

(declare-fun b!7733202 () Bool)

(declare-fun res!3084559 () Bool)

(assert (=> b!7733202 (=> (not res!3084559) (not e!4585849))))

(get-info :version)

(assert (=> b!7733202 (= res!3084559 (and (not ((_ is EmptyExpr!20575) r!14126)) (not ((_ is EmptyLang!20575) r!14126)) (not ((_ is ElementMatch!20575) r!14126)) (not ((_ is Union!20575) r!14126)) (not ((_ is Star!20575) r!14126))))))

(declare-fun b!7733203 () Bool)

(declare-fun Unit!168227 () Unit!168224)

(assert (=> b!7733203 (= e!4585848 Unit!168227)))

(declare-fun b!7733204 () Bool)

(assert (=> b!7733204 (= e!4585847 tp_is_empty!51505)))

(declare-fun res!3084556 () Bool)

(assert (=> b!7733205 (=> res!3084556 e!4585845)))

(assert (=> b!7733205 (= res!3084556 (not (Exists!4696 lambda!471369)))))

(declare-fun b!7733206 () Bool)

(assert (=> b!7733206 (= e!4585844 false)))

(declare-fun b!7733207 () Bool)

(declare-fun tp!2269172 () Bool)

(assert (=> b!7733207 (= e!4585847 tp!2269172)))

(assert (= (and start!738108 res!3084558) b!7733202))

(assert (= (and b!7733202 res!3084559) b!7733201))

(assert (= (and b!7733201 (not res!3084557)) b!7733200))

(assert (= (and b!7733200 c!1425745) b!7733195))

(assert (= (and b!7733200 (not c!1425745)) b!7733203))

(assert (= (and b!7733195 res!3084555) b!7733206))

(assert (= (and b!7733200 (not res!3084560)) b!7733205))

(assert (= (and b!7733205 (not res!3084556)) b!7733197))

(assert (= (and start!738108 ((_ is ElementMatch!20575) r!14126)) b!7733204))

(assert (= (and start!738108 ((_ is Concat!29420) r!14126)) b!7733196))

(assert (= (and start!738108 ((_ is Star!20575) r!14126)) b!7733207))

(assert (= (and start!738108 ((_ is Union!20575) r!14126)) b!7733199))

(assert (= (and start!738108 ((_ is Cons!73298) s!9605)) b!7733198))

(declare-fun m!8206576 () Bool)

(assert (=> b!7733200 m!8206576))

(declare-fun m!8206578 () Bool)

(assert (=> b!7733197 m!8206578))

(declare-fun m!8206580 () Bool)

(assert (=> b!7733197 m!8206580))

(declare-fun m!8206582 () Bool)

(assert (=> b!7733201 m!8206582))

(declare-fun m!8206584 () Bool)

(assert (=> b!7733201 m!8206584))

(declare-fun m!8206586 () Bool)

(assert (=> b!7733201 m!8206586))

(declare-fun m!8206588 () Bool)

(assert (=> b!7733201 m!8206588))

(assert (=> b!7733201 m!8206576))

(declare-fun m!8206590 () Bool)

(assert (=> start!738108 m!8206590))

(declare-fun m!8206592 () Bool)

(assert (=> b!7733205 m!8206592))

(declare-fun m!8206594 () Bool)

(assert (=> b!7733195 m!8206594))

(declare-fun m!8206596 () Bool)

(assert (=> b!7733195 m!8206596))

(declare-fun m!8206598 () Bool)

(assert (=> b!7733195 m!8206598))

(assert (=> b!7733195 m!8206598))

(declare-fun m!8206600 () Bool)

(assert (=> b!7733195 m!8206600))

(check-sat (not b!7733197) (not b!7733201) (not b!7733205) tp_is_empty!51505 (not b!7733207) (not b!7733200) (not b!7733199) (not start!738108) (not b!7733195) (not b!7733198) (not b!7733196))
(check-sat)
(get-model)

(declare-fun b!7733230 () Bool)

(declare-fun e!4585864 () Bool)

(declare-fun call!715682 () Bool)

(assert (=> b!7733230 (= e!4585864 call!715682)))

(declare-fun bm!715676 () Bool)

(declare-fun call!715681 () Bool)

(declare-fun call!715683 () Bool)

(assert (=> bm!715676 (= call!715681 call!715683)))

(declare-fun b!7733232 () Bool)

(declare-fun e!4585867 () Bool)

(assert (=> b!7733232 (= e!4585867 call!715682)))

(declare-fun b!7733233 () Bool)

(declare-fun e!4585866 () Bool)

(declare-fun e!4585870 () Bool)

(assert (=> b!7733233 (= e!4585866 e!4585870)))

(declare-fun c!1425751 () Bool)

(assert (=> b!7733233 (= c!1425751 ((_ is Union!20575) (regOne!41662 r!14126)))))

(declare-fun b!7733234 () Bool)

(declare-fun e!4585869 () Bool)

(assert (=> b!7733234 (= e!4585866 e!4585869)))

(declare-fun res!3084573 () Bool)

(declare-fun nullable!9047 (Regex!20575) Bool)

(assert (=> b!7733234 (= res!3084573 (not (nullable!9047 (reg!20904 (regOne!41662 r!14126)))))))

(assert (=> b!7733234 (=> (not res!3084573) (not e!4585869))))

(declare-fun bm!715677 () Bool)

(assert (=> bm!715677 (= call!715682 (validRegex!10993 (ite c!1425751 (regTwo!41663 (regOne!41662 r!14126)) (regTwo!41662 (regOne!41662 r!14126)))))))

(declare-fun b!7733235 () Bool)

(declare-fun res!3084571 () Bool)

(assert (=> b!7733235 (=> (not res!3084571) (not e!4585864))))

(assert (=> b!7733235 (= res!3084571 call!715681)))

(assert (=> b!7733235 (= e!4585870 e!4585864)))

(declare-fun bm!715678 () Bool)

(declare-fun c!1425752 () Bool)

(assert (=> bm!715678 (= call!715683 (validRegex!10993 (ite c!1425752 (reg!20904 (regOne!41662 r!14126)) (ite c!1425751 (regOne!41663 (regOne!41662 r!14126)) (regOne!41662 (regOne!41662 r!14126))))))))

(declare-fun b!7733236 () Bool)

(assert (=> b!7733236 (= e!4585869 call!715683)))

(declare-fun b!7733231 () Bool)

(declare-fun e!4585868 () Bool)

(assert (=> b!7733231 (= e!4585868 e!4585867)))

(declare-fun res!3084572 () Bool)

(assert (=> b!7733231 (=> (not res!3084572) (not e!4585867))))

(assert (=> b!7733231 (= res!3084572 call!715681)))

(declare-fun d!2339695 () Bool)

(declare-fun res!3084575 () Bool)

(declare-fun e!4585865 () Bool)

(assert (=> d!2339695 (=> res!3084575 e!4585865)))

(assert (=> d!2339695 (= res!3084575 ((_ is ElementMatch!20575) (regOne!41662 r!14126)))))

(assert (=> d!2339695 (= (validRegex!10993 (regOne!41662 r!14126)) e!4585865)))

(declare-fun b!7733237 () Bool)

(declare-fun res!3084574 () Bool)

(assert (=> b!7733237 (=> res!3084574 e!4585868)))

(assert (=> b!7733237 (= res!3084574 (not ((_ is Concat!29420) (regOne!41662 r!14126))))))

(assert (=> b!7733237 (= e!4585870 e!4585868)))

(declare-fun b!7733238 () Bool)

(assert (=> b!7733238 (= e!4585865 e!4585866)))

(assert (=> b!7733238 (= c!1425752 ((_ is Star!20575) (regOne!41662 r!14126)))))

(assert (= (and d!2339695 (not res!3084575)) b!7733238))

(assert (= (and b!7733238 c!1425752) b!7733234))

(assert (= (and b!7733238 (not c!1425752)) b!7733233))

(assert (= (and b!7733234 res!3084573) b!7733236))

(assert (= (and b!7733233 c!1425751) b!7733235))

(assert (= (and b!7733233 (not c!1425751)) b!7733237))

(assert (= (and b!7733235 res!3084571) b!7733230))

(assert (= (and b!7733237 (not res!3084574)) b!7733231))

(assert (= (and b!7733231 res!3084572) b!7733232))

(assert (= (or b!7733235 b!7733231) bm!715676))

(assert (= (or b!7733230 b!7733232) bm!715677))

(assert (= (or b!7733236 bm!715676) bm!715678))

(declare-fun m!8206602 () Bool)

(assert (=> b!7733234 m!8206602))

(declare-fun m!8206604 () Bool)

(assert (=> bm!715677 m!8206604))

(declare-fun m!8206606 () Bool)

(assert (=> bm!715678 m!8206606))

(assert (=> b!7733197 d!2339695))

(declare-fun d!2339701 () Bool)

(declare-fun lt!2667439 () tuple2!69604)

(declare-fun dynLambda!29968 (Int tuple2!69604) Bool)

(assert (=> d!2339701 (dynLambda!29968 lambda!471369 lt!2667439)))

(declare-fun choose!59328 (Int) tuple2!69604)

(assert (=> d!2339701 (= lt!2667439 (choose!59328 lambda!471369))))

(assert (=> d!2339701 (Exists!4696 lambda!471369)))

(assert (=> d!2339701 (= (pickWitness!532 lambda!471369) lt!2667439)))

(declare-fun b_lambda!289331 () Bool)

(assert (=> (not b_lambda!289331) (not d!2339701)))

(declare-fun bs!1963623 () Bool)

(assert (= bs!1963623 d!2339701))

(declare-fun m!8206608 () Bool)

(assert (=> bs!1963623 m!8206608))

(declare-fun m!8206610 () Bool)

(assert (=> bs!1963623 m!8206610))

(assert (=> bs!1963623 m!8206592))

(assert (=> b!7733197 d!2339701))

(declare-fun d!2339703 () Bool)

(declare-fun choose!59329 (Int) Bool)

(assert (=> d!2339703 (= (Exists!4696 lambda!471368) (choose!59329 lambda!471368))))

(declare-fun bs!1963624 () Bool)

(assert (= bs!1963624 d!2339703))

(declare-fun m!8206612 () Bool)

(assert (=> bs!1963624 m!8206612))

(assert (=> b!7733200 d!2339703))

(declare-fun d!2339705 () Bool)

(assert (=> d!2339705 (= (get!26053 lt!2667431) (v!54730 lt!2667431))))

(assert (=> b!7733195 d!2339705))

(declare-fun d!2339707 () Bool)

(assert (=> d!2339707 (matchR!10067 (Concat!29420 (regOne!41662 r!14126) (regTwo!41662 r!14126)) (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432)))))

(declare-fun lt!2667445 () Unit!168224)

(declare-fun choose!59330 (Regex!20575 Regex!20575 List!73422 List!73422 List!73422) Unit!168224)

(assert (=> d!2339707 (= lt!2667445 (choose!59330 (regOne!41662 r!14126) (regTwo!41662 r!14126) (_1!38105 lt!2667432) (_2!38105 lt!2667432) s!9605))))

(assert (=> d!2339707 (validRegex!10993 (regOne!41662 r!14126))))

(assert (=> d!2339707 (= (lemmaFindSeparationIsDefinedThenConcatMatches!200 (regOne!41662 r!14126) (regTwo!41662 r!14126) (_1!38105 lt!2667432) (_2!38105 lt!2667432) s!9605) lt!2667445)))

(declare-fun bs!1963626 () Bool)

(assert (= bs!1963626 d!2339707))

(assert (=> bs!1963626 m!8206598))

(assert (=> bs!1963626 m!8206598))

(declare-fun m!8206618 () Bool)

(assert (=> bs!1963626 m!8206618))

(declare-fun m!8206620 () Bool)

(assert (=> bs!1963626 m!8206620))

(assert (=> bs!1963626 m!8206578))

(assert (=> b!7733195 d!2339707))

(declare-fun b!7733309 () Bool)

(declare-fun e!4585909 () Bool)

(declare-fun derivativeStep!6007 (Regex!20575 C!41476) Regex!20575)

(declare-fun head!15807 (List!73422) C!41476)

(declare-fun tail!15347 (List!73422) List!73422)

(assert (=> b!7733309 (= e!4585909 (matchR!10067 (derivativeStep!6007 r!14126 (head!15807 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432)))) (tail!15347 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432)))))))

(declare-fun b!7733310 () Bool)

(declare-fun res!3084619 () Bool)

(declare-fun e!4585906 () Bool)

(assert (=> b!7733310 (=> res!3084619 e!4585906)))

(assert (=> b!7733310 (= res!3084619 (not ((_ is ElementMatch!20575) r!14126)))))

(declare-fun e!4585907 () Bool)

(assert (=> b!7733310 (= e!4585907 e!4585906)))

(declare-fun b!7733311 () Bool)

(declare-fun res!3084622 () Bool)

(declare-fun e!4585910 () Bool)

(assert (=> b!7733311 (=> res!3084622 e!4585910)))

(declare-fun isEmpty!41977 (List!73422) Bool)

(assert (=> b!7733311 (= res!3084622 (not (isEmpty!41977 (tail!15347 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))))))))

(declare-fun b!7733312 () Bool)

(assert (=> b!7733312 (= e!4585909 (nullable!9047 r!14126))))

(declare-fun b!7733313 () Bool)

(declare-fun e!4585911 () Bool)

(assert (=> b!7733313 (= e!4585911 (= (head!15807 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))) (c!1425746 r!14126)))))

(declare-fun b!7733314 () Bool)

(declare-fun e!4585908 () Bool)

(assert (=> b!7733314 (= e!4585906 e!4585908)))

(declare-fun res!3084620 () Bool)

(assert (=> b!7733314 (=> (not res!3084620) (not e!4585908))))

(declare-fun lt!2667451 () Bool)

(assert (=> b!7733314 (= res!3084620 (not lt!2667451))))

(declare-fun bm!715684 () Bool)

(declare-fun call!715689 () Bool)

(assert (=> bm!715684 (= call!715689 (isEmpty!41977 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))))))

(declare-fun b!7733315 () Bool)

(declare-fun res!3084617 () Bool)

(assert (=> b!7733315 (=> (not res!3084617) (not e!4585911))))

(assert (=> b!7733315 (= res!3084617 (not call!715689))))

(declare-fun b!7733316 () Bool)

(declare-fun res!3084623 () Bool)

(assert (=> b!7733316 (=> (not res!3084623) (not e!4585911))))

(assert (=> b!7733316 (= res!3084623 (isEmpty!41977 (tail!15347 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432)))))))

(declare-fun b!7733317 () Bool)

(declare-fun res!3084621 () Bool)

(assert (=> b!7733317 (=> res!3084621 e!4585906)))

(assert (=> b!7733317 (= res!3084621 e!4585911)))

(declare-fun res!3084618 () Bool)

(assert (=> b!7733317 (=> (not res!3084618) (not e!4585911))))

(assert (=> b!7733317 (= res!3084618 lt!2667451)))

(declare-fun b!7733318 () Bool)

(declare-fun e!4585912 () Bool)

(assert (=> b!7733318 (= e!4585912 e!4585907)))

(declare-fun c!1425770 () Bool)

(assert (=> b!7733318 (= c!1425770 ((_ is EmptyLang!20575) r!14126))))

(declare-fun d!2339711 () Bool)

(assert (=> d!2339711 e!4585912))

(declare-fun c!1425769 () Bool)

(assert (=> d!2339711 (= c!1425769 ((_ is EmptyExpr!20575) r!14126))))

(assert (=> d!2339711 (= lt!2667451 e!4585909)))

(declare-fun c!1425768 () Bool)

(assert (=> d!2339711 (= c!1425768 (isEmpty!41977 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))))))

(assert (=> d!2339711 (validRegex!10993 r!14126)))

(assert (=> d!2339711 (= (matchR!10067 r!14126 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))) lt!2667451)))

(declare-fun b!7733319 () Bool)

(assert (=> b!7733319 (= e!4585910 (not (= (head!15807 (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432))) (c!1425746 r!14126))))))

(declare-fun b!7733320 () Bool)

(assert (=> b!7733320 (= e!4585907 (not lt!2667451))))

(declare-fun b!7733321 () Bool)

(assert (=> b!7733321 (= e!4585912 (= lt!2667451 call!715689))))

(declare-fun b!7733322 () Bool)

(assert (=> b!7733322 (= e!4585908 e!4585910)))

(declare-fun res!3084616 () Bool)

(assert (=> b!7733322 (=> res!3084616 e!4585910)))

(assert (=> b!7733322 (= res!3084616 call!715689)))

(assert (= (and d!2339711 c!1425768) b!7733312))

(assert (= (and d!2339711 (not c!1425768)) b!7733309))

(assert (= (and d!2339711 c!1425769) b!7733321))

(assert (= (and d!2339711 (not c!1425769)) b!7733318))

(assert (= (and b!7733318 c!1425770) b!7733320))

(assert (= (and b!7733318 (not c!1425770)) b!7733310))

(assert (= (and b!7733310 (not res!3084619)) b!7733317))

(assert (= (and b!7733317 res!3084618) b!7733315))

(assert (= (and b!7733315 res!3084617) b!7733316))

(assert (= (and b!7733316 res!3084623) b!7733313))

(assert (= (and b!7733317 (not res!3084621)) b!7733314))

(assert (= (and b!7733314 res!3084620) b!7733322))

(assert (= (and b!7733322 (not res!3084616)) b!7733311))

(assert (= (and b!7733311 (not res!3084622)) b!7733319))

(assert (= (or b!7733321 b!7733322 b!7733315) bm!715684))

(assert (=> b!7733316 m!8206598))

(declare-fun m!8206636 () Bool)

(assert (=> b!7733316 m!8206636))

(assert (=> b!7733316 m!8206636))

(declare-fun m!8206638 () Bool)

(assert (=> b!7733316 m!8206638))

(assert (=> b!7733319 m!8206598))

(declare-fun m!8206640 () Bool)

(assert (=> b!7733319 m!8206640))

(assert (=> b!7733311 m!8206598))

(assert (=> b!7733311 m!8206636))

(assert (=> b!7733311 m!8206636))

(assert (=> b!7733311 m!8206638))

(declare-fun m!8206642 () Bool)

(assert (=> b!7733312 m!8206642))

(assert (=> bm!715684 m!8206598))

(declare-fun m!8206644 () Bool)

(assert (=> bm!715684 m!8206644))

(assert (=> b!7733309 m!8206598))

(assert (=> b!7733309 m!8206640))

(assert (=> b!7733309 m!8206640))

(declare-fun m!8206646 () Bool)

(assert (=> b!7733309 m!8206646))

(assert (=> b!7733309 m!8206598))

(assert (=> b!7733309 m!8206636))

(assert (=> b!7733309 m!8206646))

(assert (=> b!7733309 m!8206636))

(declare-fun m!8206648 () Bool)

(assert (=> b!7733309 m!8206648))

(assert (=> d!2339711 m!8206598))

(assert (=> d!2339711 m!8206644))

(assert (=> d!2339711 m!8206590))

(assert (=> b!7733313 m!8206598))

(assert (=> b!7733313 m!8206640))

(assert (=> b!7733195 d!2339711))

(declare-fun d!2339715 () Bool)

(declare-fun e!4585937 () Bool)

(assert (=> d!2339715 e!4585937))

(declare-fun res!3084645 () Bool)

(assert (=> d!2339715 (=> (not res!3084645) (not e!4585937))))

(declare-fun lt!2667457 () List!73422)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15530 (List!73422) (InoxSet C!41476))

(assert (=> d!2339715 (= res!3084645 (= (content!15530 lt!2667457) ((_ map or) (content!15530 (_1!38105 lt!2667432)) (content!15530 (_2!38105 lt!2667432)))))))

(declare-fun e!4585938 () List!73422)

(assert (=> d!2339715 (= lt!2667457 e!4585938)))

(declare-fun c!1425780 () Bool)

(assert (=> d!2339715 (= c!1425780 ((_ is Nil!73298) (_1!38105 lt!2667432)))))

(assert (=> d!2339715 (= (++!17774 (_1!38105 lt!2667432) (_2!38105 lt!2667432)) lt!2667457)))

(declare-fun b!7733362 () Bool)

(assert (=> b!7733362 (= e!4585938 (Cons!73298 (h!79746 (_1!38105 lt!2667432)) (++!17774 (t!388157 (_1!38105 lt!2667432)) (_2!38105 lt!2667432))))))

(declare-fun b!7733361 () Bool)

(assert (=> b!7733361 (= e!4585938 (_2!38105 lt!2667432))))

(declare-fun b!7733364 () Bool)

(assert (=> b!7733364 (= e!4585937 (or (not (= (_2!38105 lt!2667432) Nil!73298)) (= lt!2667457 (_1!38105 lt!2667432))))))

(declare-fun b!7733363 () Bool)

(declare-fun res!3084644 () Bool)

(assert (=> b!7733363 (=> (not res!3084644) (not e!4585937))))

(declare-fun size!42633 (List!73422) Int)

(assert (=> b!7733363 (= res!3084644 (= (size!42633 lt!2667457) (+ (size!42633 (_1!38105 lt!2667432)) (size!42633 (_2!38105 lt!2667432)))))))

(assert (= (and d!2339715 c!1425780) b!7733361))

(assert (= (and d!2339715 (not c!1425780)) b!7733362))

(assert (= (and d!2339715 res!3084645) b!7733363))

(assert (= (and b!7733363 res!3084644) b!7733364))

(declare-fun m!8206666 () Bool)

(assert (=> d!2339715 m!8206666))

(declare-fun m!8206668 () Bool)

(assert (=> d!2339715 m!8206668))

(declare-fun m!8206670 () Bool)

(assert (=> d!2339715 m!8206670))

(declare-fun m!8206672 () Bool)

(assert (=> b!7733362 m!8206672))

(declare-fun m!8206674 () Bool)

(assert (=> b!7733363 m!8206674))

(declare-fun m!8206676 () Bool)

(assert (=> b!7733363 m!8206676))

(declare-fun m!8206678 () Bool)

(assert (=> b!7733363 m!8206678))

(assert (=> b!7733195 d!2339715))

(declare-fun b!7733365 () Bool)

(declare-fun e!4585939 () Bool)

(declare-fun call!715697 () Bool)

(assert (=> b!7733365 (= e!4585939 call!715697)))

(declare-fun bm!715689 () Bool)

(declare-fun call!715696 () Bool)

(declare-fun call!715698 () Bool)

(assert (=> bm!715689 (= call!715696 call!715698)))

(declare-fun b!7733367 () Bool)

(declare-fun e!4585942 () Bool)

(assert (=> b!7733367 (= e!4585942 call!715697)))

(declare-fun b!7733368 () Bool)

(declare-fun e!4585941 () Bool)

(declare-fun e!4585945 () Bool)

(assert (=> b!7733368 (= e!4585941 e!4585945)))

(declare-fun c!1425781 () Bool)

(assert (=> b!7733368 (= c!1425781 ((_ is Union!20575) r!14126))))

(declare-fun b!7733369 () Bool)

(declare-fun e!4585944 () Bool)

(assert (=> b!7733369 (= e!4585941 e!4585944)))

(declare-fun res!3084648 () Bool)

(assert (=> b!7733369 (= res!3084648 (not (nullable!9047 (reg!20904 r!14126))))))

(assert (=> b!7733369 (=> (not res!3084648) (not e!4585944))))

(declare-fun bm!715690 () Bool)

(assert (=> bm!715690 (= call!715697 (validRegex!10993 (ite c!1425781 (regTwo!41663 r!14126) (regTwo!41662 r!14126))))))

(declare-fun b!7733370 () Bool)

(declare-fun res!3084646 () Bool)

(assert (=> b!7733370 (=> (not res!3084646) (not e!4585939))))

(assert (=> b!7733370 (= res!3084646 call!715696)))

(assert (=> b!7733370 (= e!4585945 e!4585939)))

(declare-fun bm!715693 () Bool)

(declare-fun c!1425782 () Bool)

(assert (=> bm!715693 (= call!715698 (validRegex!10993 (ite c!1425782 (reg!20904 r!14126) (ite c!1425781 (regOne!41663 r!14126) (regOne!41662 r!14126)))))))

(declare-fun b!7733371 () Bool)

(assert (=> b!7733371 (= e!4585944 call!715698)))

(declare-fun b!7733366 () Bool)

(declare-fun e!4585943 () Bool)

(assert (=> b!7733366 (= e!4585943 e!4585942)))

(declare-fun res!3084647 () Bool)

(assert (=> b!7733366 (=> (not res!3084647) (not e!4585942))))

(assert (=> b!7733366 (= res!3084647 call!715696)))

(declare-fun d!2339721 () Bool)

(declare-fun res!3084650 () Bool)

(declare-fun e!4585940 () Bool)

(assert (=> d!2339721 (=> res!3084650 e!4585940)))

(assert (=> d!2339721 (= res!3084650 ((_ is ElementMatch!20575) r!14126))))

(assert (=> d!2339721 (= (validRegex!10993 r!14126) e!4585940)))

(declare-fun b!7733372 () Bool)

(declare-fun res!3084649 () Bool)

(assert (=> b!7733372 (=> res!3084649 e!4585943)))

(assert (=> b!7733372 (= res!3084649 (not ((_ is Concat!29420) r!14126)))))

(assert (=> b!7733372 (= e!4585945 e!4585943)))

(declare-fun b!7733373 () Bool)

(assert (=> b!7733373 (= e!4585940 e!4585941)))

(assert (=> b!7733373 (= c!1425782 ((_ is Star!20575) r!14126))))

(assert (= (and d!2339721 (not res!3084650)) b!7733373))

(assert (= (and b!7733373 c!1425782) b!7733369))

(assert (= (and b!7733373 (not c!1425782)) b!7733368))

(assert (= (and b!7733369 res!3084648) b!7733371))

(assert (= (and b!7733368 c!1425781) b!7733370))

(assert (= (and b!7733368 (not c!1425781)) b!7733372))

(assert (= (and b!7733370 res!3084646) b!7733365))

(assert (= (and b!7733372 (not res!3084649)) b!7733366))

(assert (= (and b!7733366 res!3084647) b!7733367))

(assert (= (or b!7733370 b!7733366) bm!715689))

(assert (= (or b!7733365 b!7733367) bm!715690))

(assert (= (or b!7733371 bm!715689) bm!715693))

(declare-fun m!8206680 () Bool)

(assert (=> b!7733369 m!8206680))

(declare-fun m!8206682 () Bool)

(assert (=> bm!715690 m!8206682))

(declare-fun m!8206684 () Bool)

(assert (=> bm!715693 m!8206684))

(assert (=> start!738108 d!2339721))

(declare-fun d!2339723 () Bool)

(assert (=> d!2339723 (= (Exists!4696 lambda!471369) (choose!59329 lambda!471369))))

(declare-fun bs!1963628 () Bool)

(assert (= bs!1963628 d!2339723))

(declare-fun m!8206686 () Bool)

(assert (=> bs!1963628 m!8206686))

(assert (=> b!7733205 d!2339723))

(declare-fun b!7733374 () Bool)

(declare-fun e!4585949 () Bool)

(assert (=> b!7733374 (= e!4585949 (matchR!10067 (derivativeStep!6007 r!14126 (head!15807 s!9605)) (tail!15347 s!9605)))))

(declare-fun b!7733375 () Bool)

(declare-fun res!3084654 () Bool)

(declare-fun e!4585946 () Bool)

(assert (=> b!7733375 (=> res!3084654 e!4585946)))

(assert (=> b!7733375 (= res!3084654 (not ((_ is ElementMatch!20575) r!14126)))))

(declare-fun e!4585947 () Bool)

(assert (=> b!7733375 (= e!4585947 e!4585946)))

(declare-fun b!7733376 () Bool)

(declare-fun res!3084657 () Bool)

(declare-fun e!4585950 () Bool)

(assert (=> b!7733376 (=> res!3084657 e!4585950)))

(assert (=> b!7733376 (= res!3084657 (not (isEmpty!41977 (tail!15347 s!9605))))))

(declare-fun b!7733377 () Bool)

(assert (=> b!7733377 (= e!4585949 (nullable!9047 r!14126))))

(declare-fun b!7733378 () Bool)

(declare-fun e!4585951 () Bool)

(assert (=> b!7733378 (= e!4585951 (= (head!15807 s!9605) (c!1425746 r!14126)))))

(declare-fun b!7733379 () Bool)

(declare-fun e!4585948 () Bool)

(assert (=> b!7733379 (= e!4585946 e!4585948)))

(declare-fun res!3084655 () Bool)

(assert (=> b!7733379 (=> (not res!3084655) (not e!4585948))))

(declare-fun lt!2667458 () Bool)

(assert (=> b!7733379 (= res!3084655 (not lt!2667458))))

(declare-fun bm!715694 () Bool)

(declare-fun call!715699 () Bool)

(assert (=> bm!715694 (= call!715699 (isEmpty!41977 s!9605))))

(declare-fun b!7733380 () Bool)

(declare-fun res!3084652 () Bool)

(assert (=> b!7733380 (=> (not res!3084652) (not e!4585951))))

(assert (=> b!7733380 (= res!3084652 (not call!715699))))

(declare-fun b!7733381 () Bool)

(declare-fun res!3084658 () Bool)

(assert (=> b!7733381 (=> (not res!3084658) (not e!4585951))))

(assert (=> b!7733381 (= res!3084658 (isEmpty!41977 (tail!15347 s!9605)))))

(declare-fun b!7733382 () Bool)

(declare-fun res!3084656 () Bool)

(assert (=> b!7733382 (=> res!3084656 e!4585946)))

(assert (=> b!7733382 (= res!3084656 e!4585951)))

(declare-fun res!3084653 () Bool)

(assert (=> b!7733382 (=> (not res!3084653) (not e!4585951))))

(assert (=> b!7733382 (= res!3084653 lt!2667458)))

(declare-fun b!7733383 () Bool)

(declare-fun e!4585952 () Bool)

(assert (=> b!7733383 (= e!4585952 e!4585947)))

(declare-fun c!1425785 () Bool)

(assert (=> b!7733383 (= c!1425785 ((_ is EmptyLang!20575) r!14126))))

(declare-fun d!2339725 () Bool)

(assert (=> d!2339725 e!4585952))

(declare-fun c!1425784 () Bool)

(assert (=> d!2339725 (= c!1425784 ((_ is EmptyExpr!20575) r!14126))))

(assert (=> d!2339725 (= lt!2667458 e!4585949)))

(declare-fun c!1425783 () Bool)

(assert (=> d!2339725 (= c!1425783 (isEmpty!41977 s!9605))))

(assert (=> d!2339725 (validRegex!10993 r!14126)))

(assert (=> d!2339725 (= (matchR!10067 r!14126 s!9605) lt!2667458)))

(declare-fun b!7733384 () Bool)

(assert (=> b!7733384 (= e!4585950 (not (= (head!15807 s!9605) (c!1425746 r!14126))))))

(declare-fun b!7733385 () Bool)

(assert (=> b!7733385 (= e!4585947 (not lt!2667458))))

(declare-fun b!7733386 () Bool)

(assert (=> b!7733386 (= e!4585952 (= lt!2667458 call!715699))))

(declare-fun b!7733387 () Bool)

(assert (=> b!7733387 (= e!4585948 e!4585950)))

(declare-fun res!3084651 () Bool)

(assert (=> b!7733387 (=> res!3084651 e!4585950)))

(assert (=> b!7733387 (= res!3084651 call!715699)))

(assert (= (and d!2339725 c!1425783) b!7733377))

(assert (= (and d!2339725 (not c!1425783)) b!7733374))

(assert (= (and d!2339725 c!1425784) b!7733386))

(assert (= (and d!2339725 (not c!1425784)) b!7733383))

(assert (= (and b!7733383 c!1425785) b!7733385))

(assert (= (and b!7733383 (not c!1425785)) b!7733375))

(assert (= (and b!7733375 (not res!3084654)) b!7733382))

(assert (= (and b!7733382 res!3084653) b!7733380))

(assert (= (and b!7733380 res!3084652) b!7733381))

(assert (= (and b!7733381 res!3084658) b!7733378))

(assert (= (and b!7733382 (not res!3084656)) b!7733379))

(assert (= (and b!7733379 res!3084655) b!7733387))

(assert (= (and b!7733387 (not res!3084651)) b!7733376))

(assert (= (and b!7733376 (not res!3084657)) b!7733384))

(assert (= (or b!7733386 b!7733387 b!7733380) bm!715694))

(declare-fun m!8206688 () Bool)

(assert (=> b!7733381 m!8206688))

(assert (=> b!7733381 m!8206688))

(declare-fun m!8206690 () Bool)

(assert (=> b!7733381 m!8206690))

(declare-fun m!8206692 () Bool)

(assert (=> b!7733384 m!8206692))

(assert (=> b!7733376 m!8206688))

(assert (=> b!7733376 m!8206688))

(assert (=> b!7733376 m!8206690))

(assert (=> b!7733377 m!8206642))

(declare-fun m!8206694 () Bool)

(assert (=> bm!715694 m!8206694))

(assert (=> b!7733374 m!8206692))

(assert (=> b!7733374 m!8206692))

(declare-fun m!8206696 () Bool)

(assert (=> b!7733374 m!8206696))

(assert (=> b!7733374 m!8206688))

(assert (=> b!7733374 m!8206696))

(assert (=> b!7733374 m!8206688))

(declare-fun m!8206698 () Bool)

(assert (=> b!7733374 m!8206698))

(assert (=> d!2339725 m!8206694))

(assert (=> d!2339725 m!8206590))

(assert (=> b!7733378 m!8206692))

(assert (=> b!7733201 d!2339725))

(declare-fun bs!1963629 () Bool)

(declare-fun d!2339727 () Bool)

(assert (= bs!1963629 (and d!2339727 b!7733201)))

(declare-fun lambda!471373 () Int)

(assert (=> bs!1963629 (= lambda!471373 lambda!471368)))

(declare-fun bs!1963630 () Bool)

(assert (= bs!1963630 (and d!2339727 b!7733205)))

(assert (=> bs!1963630 (not (= lambda!471373 lambda!471369))))

(assert (=> d!2339727 true))

(assert (=> d!2339727 true))

(assert (=> d!2339727 true))

(assert (=> d!2339727 (= (isDefined!14212 (findConcatSeparation!3626 (regOne!41662 r!14126) (regTwo!41662 r!14126) Nil!73298 s!9605 s!9605)) (Exists!4696 lambda!471373))))

(declare-fun lt!2667464 () Unit!168224)

(declare-fun choose!59332 (Regex!20575 Regex!20575 List!73422) Unit!168224)

(assert (=> d!2339727 (= lt!2667464 (choose!59332 (regOne!41662 r!14126) (regTwo!41662 r!14126) s!9605))))

(assert (=> d!2339727 (validRegex!10993 (regOne!41662 r!14126))))

(assert (=> d!2339727 (= (lemmaFindConcatSeparationEquivalentToExists!3384 (regOne!41662 r!14126) (regTwo!41662 r!14126) s!9605) lt!2667464)))

(declare-fun bs!1963631 () Bool)

(assert (= bs!1963631 d!2339727))

(assert (=> bs!1963631 m!8206578))

(declare-fun m!8206718 () Bool)

(assert (=> bs!1963631 m!8206718))

(declare-fun m!8206720 () Bool)

(assert (=> bs!1963631 m!8206720))

(assert (=> bs!1963631 m!8206584))

(declare-fun m!8206722 () Bool)

(assert (=> bs!1963631 m!8206722))

(assert (=> bs!1963631 m!8206584))

(assert (=> b!7733201 d!2339727))

(declare-fun d!2339733 () Bool)

(declare-fun isEmpty!41978 (Option!17596) Bool)

(assert (=> d!2339733 (= (isDefined!14212 lt!2667431) (not (isEmpty!41978 lt!2667431)))))

(declare-fun bs!1963632 () Bool)

(assert (= bs!1963632 d!2339733))

(declare-fun m!8206724 () Bool)

(assert (=> bs!1963632 m!8206724))

(assert (=> b!7733201 d!2339733))

(declare-fun b!7733455 () Bool)

(declare-fun res!3084701 () Bool)

(declare-fun e!4585993 () Bool)

(assert (=> b!7733455 (=> (not res!3084701) (not e!4585993))))

(declare-fun lt!2667478 () Option!17596)

(assert (=> b!7733455 (= res!3084701 (matchR!10067 (regOne!41662 r!14126) (_1!38105 (get!26053 lt!2667478))))))

(declare-fun b!7733456 () Bool)

(declare-fun lt!2667479 () Unit!168224)

(declare-fun lt!2667480 () Unit!168224)

(assert (=> b!7733456 (= lt!2667479 lt!2667480)))

(assert (=> b!7733456 (= (++!17774 (++!17774 Nil!73298 (Cons!73298 (h!79746 s!9605) Nil!73298)) (t!388157 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3321 (List!73422 C!41476 List!73422 List!73422) Unit!168224)

(assert (=> b!7733456 (= lt!2667480 (lemmaMoveElementToOtherListKeepsConcatEq!3321 Nil!73298 (h!79746 s!9605) (t!388157 s!9605) s!9605))))

(declare-fun e!4585995 () Option!17596)

(assert (=> b!7733456 (= e!4585995 (findConcatSeparation!3626 (regOne!41662 r!14126) (regTwo!41662 r!14126) (++!17774 Nil!73298 (Cons!73298 (h!79746 s!9605) Nil!73298)) (t!388157 s!9605) s!9605))))

(declare-fun b!7733457 () Bool)

(declare-fun e!4585994 () Bool)

(assert (=> b!7733457 (= e!4585994 (matchR!10067 (regTwo!41662 r!14126) s!9605))))

(declare-fun b!7733458 () Bool)

(declare-fun e!4585991 () Bool)

(assert (=> b!7733458 (= e!4585991 (not (isDefined!14212 lt!2667478)))))

(declare-fun d!2339735 () Bool)

(assert (=> d!2339735 e!4585991))

(declare-fun res!3084702 () Bool)

(assert (=> d!2339735 (=> res!3084702 e!4585991)))

(assert (=> d!2339735 (= res!3084702 e!4585993)))

(declare-fun res!3084704 () Bool)

(assert (=> d!2339735 (=> (not res!3084704) (not e!4585993))))

(assert (=> d!2339735 (= res!3084704 (isDefined!14212 lt!2667478))))

(declare-fun e!4585992 () Option!17596)

(assert (=> d!2339735 (= lt!2667478 e!4585992)))

(declare-fun c!1425799 () Bool)

(assert (=> d!2339735 (= c!1425799 e!4585994)))

(declare-fun res!3084700 () Bool)

(assert (=> d!2339735 (=> (not res!3084700) (not e!4585994))))

(assert (=> d!2339735 (= res!3084700 (matchR!10067 (regOne!41662 r!14126) Nil!73298))))

(assert (=> d!2339735 (validRegex!10993 (regOne!41662 r!14126))))

(assert (=> d!2339735 (= (findConcatSeparation!3626 (regOne!41662 r!14126) (regTwo!41662 r!14126) Nil!73298 s!9605 s!9605) lt!2667478)))

(declare-fun b!7733459 () Bool)

(assert (=> b!7733459 (= e!4585995 None!17595)))

(declare-fun b!7733460 () Bool)

(assert (=> b!7733460 (= e!4585992 (Some!17595 (tuple2!69605 Nil!73298 s!9605)))))

(declare-fun b!7733461 () Bool)

(assert (=> b!7733461 (= e!4585993 (= (++!17774 (_1!38105 (get!26053 lt!2667478)) (_2!38105 (get!26053 lt!2667478))) s!9605))))

(declare-fun b!7733462 () Bool)

(assert (=> b!7733462 (= e!4585992 e!4585995)))

(declare-fun c!1425800 () Bool)

(assert (=> b!7733462 (= c!1425800 ((_ is Nil!73298) s!9605))))

(declare-fun b!7733463 () Bool)

(declare-fun res!3084703 () Bool)

(assert (=> b!7733463 (=> (not res!3084703) (not e!4585993))))

(assert (=> b!7733463 (= res!3084703 (matchR!10067 (regTwo!41662 r!14126) (_2!38105 (get!26053 lt!2667478))))))

(assert (= (and d!2339735 res!3084700) b!7733457))

(assert (= (and d!2339735 c!1425799) b!7733460))

(assert (= (and d!2339735 (not c!1425799)) b!7733462))

(assert (= (and b!7733462 c!1425800) b!7733459))

(assert (= (and b!7733462 (not c!1425800)) b!7733456))

(assert (= (and d!2339735 res!3084704) b!7733455))

(assert (= (and b!7733455 res!3084701) b!7733463))

(assert (= (and b!7733463 res!3084703) b!7733461))

(assert (= (and d!2339735 (not res!3084702)) b!7733458))

(declare-fun m!8206734 () Bool)

(assert (=> b!7733457 m!8206734))

(declare-fun m!8206736 () Bool)

(assert (=> d!2339735 m!8206736))

(declare-fun m!8206738 () Bool)

(assert (=> d!2339735 m!8206738))

(assert (=> d!2339735 m!8206578))

(declare-fun m!8206740 () Bool)

(assert (=> b!7733456 m!8206740))

(assert (=> b!7733456 m!8206740))

(declare-fun m!8206742 () Bool)

(assert (=> b!7733456 m!8206742))

(declare-fun m!8206744 () Bool)

(assert (=> b!7733456 m!8206744))

(assert (=> b!7733456 m!8206740))

(declare-fun m!8206746 () Bool)

(assert (=> b!7733456 m!8206746))

(declare-fun m!8206748 () Bool)

(assert (=> b!7733463 m!8206748))

(declare-fun m!8206750 () Bool)

(assert (=> b!7733463 m!8206750))

(assert (=> b!7733461 m!8206748))

(declare-fun m!8206752 () Bool)

(assert (=> b!7733461 m!8206752))

(assert (=> b!7733455 m!8206748))

(declare-fun m!8206754 () Bool)

(assert (=> b!7733455 m!8206754))

(assert (=> b!7733458 m!8206736))

(assert (=> b!7733201 d!2339735))

(assert (=> b!7733201 d!2339703))

(declare-fun e!4586003 () Bool)

(assert (=> b!7733199 (= tp!2269173 e!4586003)))

(declare-fun b!7733483 () Bool)

(assert (=> b!7733483 (= e!4586003 tp_is_empty!51505)))

(declare-fun b!7733484 () Bool)

(declare-fun tp!2269190 () Bool)

(declare-fun tp!2269189 () Bool)

(assert (=> b!7733484 (= e!4586003 (and tp!2269190 tp!2269189))))

(declare-fun b!7733485 () Bool)

(declare-fun tp!2269192 () Bool)

(assert (=> b!7733485 (= e!4586003 tp!2269192)))

(declare-fun b!7733486 () Bool)

(declare-fun tp!2269191 () Bool)

(declare-fun tp!2269188 () Bool)

(assert (=> b!7733486 (= e!4586003 (and tp!2269191 tp!2269188))))

(assert (= (and b!7733199 ((_ is ElementMatch!20575) (regOne!41663 r!14126))) b!7733483))

(assert (= (and b!7733199 ((_ is Concat!29420) (regOne!41663 r!14126))) b!7733484))

(assert (= (and b!7733199 ((_ is Star!20575) (regOne!41663 r!14126))) b!7733485))

(assert (= (and b!7733199 ((_ is Union!20575) (regOne!41663 r!14126))) b!7733486))

(declare-fun e!4586004 () Bool)

(assert (=> b!7733199 (= tp!2269177 e!4586004)))

(declare-fun b!7733487 () Bool)

(assert (=> b!7733487 (= e!4586004 tp_is_empty!51505)))

(declare-fun b!7733488 () Bool)

(declare-fun tp!2269195 () Bool)

(declare-fun tp!2269194 () Bool)

(assert (=> b!7733488 (= e!4586004 (and tp!2269195 tp!2269194))))

(declare-fun b!7733489 () Bool)

(declare-fun tp!2269197 () Bool)

(assert (=> b!7733489 (= e!4586004 tp!2269197)))

(declare-fun b!7733490 () Bool)

(declare-fun tp!2269196 () Bool)

(declare-fun tp!2269193 () Bool)

(assert (=> b!7733490 (= e!4586004 (and tp!2269196 tp!2269193))))

(assert (= (and b!7733199 ((_ is ElementMatch!20575) (regTwo!41663 r!14126))) b!7733487))

(assert (= (and b!7733199 ((_ is Concat!29420) (regTwo!41663 r!14126))) b!7733488))

(assert (= (and b!7733199 ((_ is Star!20575) (regTwo!41663 r!14126))) b!7733489))

(assert (= (and b!7733199 ((_ is Union!20575) (regTwo!41663 r!14126))) b!7733490))

(declare-fun b!7733504 () Bool)

(declare-fun e!4586014 () Bool)

(declare-fun tp!2269200 () Bool)

(assert (=> b!7733504 (= e!4586014 (and tp_is_empty!51505 tp!2269200))))

(assert (=> b!7733198 (= tp!2269176 e!4586014)))

(assert (= (and b!7733198 ((_ is Cons!73298) (t!388157 s!9605))) b!7733504))

(declare-fun e!4586015 () Bool)

(assert (=> b!7733196 (= tp!2269174 e!4586015)))

(declare-fun b!7733505 () Bool)

(assert (=> b!7733505 (= e!4586015 tp_is_empty!51505)))

(declare-fun b!7733506 () Bool)

(declare-fun tp!2269203 () Bool)

(declare-fun tp!2269202 () Bool)

(assert (=> b!7733506 (= e!4586015 (and tp!2269203 tp!2269202))))

(declare-fun b!7733507 () Bool)

(declare-fun tp!2269205 () Bool)

(assert (=> b!7733507 (= e!4586015 tp!2269205)))

(declare-fun b!7733508 () Bool)

(declare-fun tp!2269204 () Bool)

(declare-fun tp!2269201 () Bool)

(assert (=> b!7733508 (= e!4586015 (and tp!2269204 tp!2269201))))

(assert (= (and b!7733196 ((_ is ElementMatch!20575) (regOne!41662 r!14126))) b!7733505))

(assert (= (and b!7733196 ((_ is Concat!29420) (regOne!41662 r!14126))) b!7733506))

(assert (= (and b!7733196 ((_ is Star!20575) (regOne!41662 r!14126))) b!7733507))

(assert (= (and b!7733196 ((_ is Union!20575) (regOne!41662 r!14126))) b!7733508))

(declare-fun e!4586016 () Bool)

(assert (=> b!7733196 (= tp!2269175 e!4586016)))

(declare-fun b!7733509 () Bool)

(assert (=> b!7733509 (= e!4586016 tp_is_empty!51505)))

(declare-fun b!7733510 () Bool)

(declare-fun tp!2269208 () Bool)

(declare-fun tp!2269207 () Bool)

(assert (=> b!7733510 (= e!4586016 (and tp!2269208 tp!2269207))))

(declare-fun b!7733511 () Bool)

(declare-fun tp!2269210 () Bool)

(assert (=> b!7733511 (= e!4586016 tp!2269210)))

(declare-fun b!7733512 () Bool)

(declare-fun tp!2269209 () Bool)

(declare-fun tp!2269206 () Bool)

(assert (=> b!7733512 (= e!4586016 (and tp!2269209 tp!2269206))))

(assert (= (and b!7733196 ((_ is ElementMatch!20575) (regTwo!41662 r!14126))) b!7733509))

(assert (= (and b!7733196 ((_ is Concat!29420) (regTwo!41662 r!14126))) b!7733510))

(assert (= (and b!7733196 ((_ is Star!20575) (regTwo!41662 r!14126))) b!7733511))

(assert (= (and b!7733196 ((_ is Union!20575) (regTwo!41662 r!14126))) b!7733512))

(declare-fun e!4586017 () Bool)

(assert (=> b!7733207 (= tp!2269172 e!4586017)))

(declare-fun b!7733513 () Bool)

(assert (=> b!7733513 (= e!4586017 tp_is_empty!51505)))

(declare-fun b!7733514 () Bool)

(declare-fun tp!2269213 () Bool)

(declare-fun tp!2269212 () Bool)

(assert (=> b!7733514 (= e!4586017 (and tp!2269213 tp!2269212))))

(declare-fun b!7733515 () Bool)

(declare-fun tp!2269215 () Bool)

(assert (=> b!7733515 (= e!4586017 tp!2269215)))

(declare-fun b!7733516 () Bool)

(declare-fun tp!2269214 () Bool)

(declare-fun tp!2269211 () Bool)

(assert (=> b!7733516 (= e!4586017 (and tp!2269214 tp!2269211))))

(assert (= (and b!7733207 ((_ is ElementMatch!20575) (reg!20904 r!14126))) b!7733513))

(assert (= (and b!7733207 ((_ is Concat!29420) (reg!20904 r!14126))) b!7733514))

(assert (= (and b!7733207 ((_ is Star!20575) (reg!20904 r!14126))) b!7733515))

(assert (= (and b!7733207 ((_ is Union!20575) (reg!20904 r!14126))) b!7733516))

(declare-fun b_lambda!289333 () Bool)

(assert (= b_lambda!289331 (or b!7733205 b_lambda!289333)))

(declare-fun bs!1963638 () Bool)

(declare-fun d!2339747 () Bool)

(assert (= bs!1963638 (and d!2339747 b!7733205)))

(declare-fun res!3084715 () Bool)

(declare-fun e!4586018 () Bool)

(assert (=> bs!1963638 (=> (not res!3084715) (not e!4586018))))

(assert (=> bs!1963638 (= res!3084715 (= (++!17774 (_1!38105 lt!2667439) (_2!38105 lt!2667439)) s!9605))))

(assert (=> bs!1963638 (= (dynLambda!29968 lambda!471369 lt!2667439) e!4586018)))

(declare-fun b!7733517 () Bool)

(declare-fun res!3084716 () Bool)

(assert (=> b!7733517 (=> (not res!3084716) (not e!4586018))))

(declare-fun matchRSpec!4640 (Regex!20575 List!73422) Bool)

(assert (=> b!7733517 (= res!3084716 (matchRSpec!4640 (regOne!41662 r!14126) (_1!38105 lt!2667439)))))

(declare-fun b!7733518 () Bool)

(assert (=> b!7733518 (= e!4586018 (matchRSpec!4640 (regTwo!41662 r!14126) (_2!38105 lt!2667439)))))

(assert (= (and bs!1963638 res!3084715) b!7733517))

(assert (= (and b!7733517 res!3084716) b!7733518))

(declare-fun m!8206786 () Bool)

(assert (=> bs!1963638 m!8206786))

(declare-fun m!8206788 () Bool)

(assert (=> b!7733517 m!8206788))

(declare-fun m!8206790 () Bool)

(assert (=> b!7733518 m!8206790))

(assert (=> d!2339701 d!2339747))

(check-sat (not b!7733234) (not b!7733514) (not b!7733381) (not b!7733461) tp_is_empty!51505 (not b!7733511) (not b!7733313) (not b!7733504) (not d!2339701) (not d!2339707) (not b!7733507) (not bm!715678) (not b!7733384) (not b!7733518) (not b!7733311) (not b!7733362) (not bm!715690) (not b!7733484) (not b!7733378) (not b!7733316) (not d!2339715) (not b!7733312) (not d!2339733) (not b!7733455) (not d!2339711) (not b!7733512) (not bm!715684) (not b!7733377) (not b!7733488) (not bs!1963638) (not b!7733363) (not b!7733369) (not d!2339703) (not b!7733516) (not bm!715694) (not b!7733456) (not d!2339727) (not b!7733309) (not b!7733508) (not b!7733376) (not b!7733490) (not b!7733485) (not b!7733486) (not b!7733517) (not bm!715693) (not d!2339723) (not b!7733489) (not b!7733506) (not b!7733515) (not b_lambda!289333) (not d!2339725) (not b!7733374) (not d!2339735) (not bm!715677) (not b!7733463) (not b!7733510) (not b!7733457) (not b!7733319) (not b!7733458))
(check-sat)
