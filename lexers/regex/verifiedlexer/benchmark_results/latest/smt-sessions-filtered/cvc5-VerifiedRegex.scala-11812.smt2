; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664836 () Bool)

(assert start!664836)

(declare-fun b!6903708 () Bool)

(assert (=> b!6903708 true))

(assert (=> b!6903708 true))

(assert (=> b!6903708 true))

(declare-fun lambda!392060 () Int)

(declare-fun lambda!392059 () Int)

(assert (=> b!6903708 (not (= lambda!392060 lambda!392059))))

(assert (=> b!6903708 true))

(assert (=> b!6903708 true))

(assert (=> b!6903708 true))

(declare-fun b!6903694 () Bool)

(declare-fun res!2815243 () Bool)

(declare-fun e!4157306 () Bool)

(assert (=> b!6903694 (=> (not res!2815243) (not e!4157306))))

(declare-datatypes ((C!34010 0))(
  ( (C!34011 (val!26707 Int)) )
))
(declare-datatypes ((Regex!16870 0))(
  ( (ElementMatch!16870 (c!1282634 C!34010)) (Concat!25715 (regOne!34252 Regex!16870) (regTwo!34252 Regex!16870)) (EmptyExpr!16870) (Star!16870 (reg!17199 Regex!16870)) (EmptyLang!16870) (Union!16870 (regOne!34253 Regex!16870) (regTwo!34253 Regex!16870)) )
))
(declare-fun r3!135 () Regex!16870)

(declare-fun validRegex!8578 (Regex!16870) Bool)

(assert (=> b!6903694 (= res!2815243 (validRegex!8578 r3!135))))

(declare-fun b!6903695 () Bool)

(declare-fun e!4157305 () Bool)

(declare-fun tp!1900793 () Bool)

(assert (=> b!6903695 (= e!4157305 tp!1900793)))

(declare-fun b!6903696 () Bool)

(declare-fun e!4157302 () Bool)

(declare-fun tp_is_empty!42965 () Bool)

(assert (=> b!6903696 (= e!4157302 tp_is_empty!42965)))

(declare-fun b!6903697 () Bool)

(declare-fun e!4157304 () Bool)

(declare-datatypes ((List!66627 0))(
  ( (Nil!66503) (Cons!66503 (h!72951 C!34010) (t!380370 List!66627)) )
))
(declare-datatypes ((tuple2!67474 0))(
  ( (tuple2!67475 (_1!37040 List!66627) (_2!37040 List!66627)) )
))
(declare-fun lt!2467030 () tuple2!67474)

(declare-fun matchR!9015 (Regex!16870 List!66627) Bool)

(assert (=> b!6903697 (= e!4157304 (matchR!9015 r3!135 (_2!37040 lt!2467030)))))

(declare-fun b!6903698 () Bool)

(declare-fun tp!1900802 () Bool)

(declare-fun tp!1900794 () Bool)

(assert (=> b!6903698 (= e!4157305 (and tp!1900802 tp!1900794))))

(declare-fun b!6903699 () Bool)

(declare-fun e!4157301 () Bool)

(assert (=> b!6903699 (= e!4157301 tp_is_empty!42965)))

(declare-fun b!6903700 () Bool)

(declare-fun tp!1900792 () Bool)

(assert (=> b!6903700 (= e!4157301 tp!1900792)))

(declare-fun b!6903701 () Bool)

(declare-fun tp!1900797 () Bool)

(declare-fun tp!1900800 () Bool)

(assert (=> b!6903701 (= e!4157302 (and tp!1900797 tp!1900800))))

(declare-fun b!6903702 () Bool)

(declare-fun e!4157303 () Bool)

(assert (=> b!6903702 (= e!4157306 (not e!4157303))))

(declare-fun res!2815241 () Bool)

(assert (=> b!6903702 (=> res!2815241 e!4157303)))

(declare-fun lt!2467035 () Bool)

(assert (=> b!6903702 (= res!2815241 (not lt!2467035))))

(declare-fun lt!2467033 () Regex!16870)

(declare-fun s!14361 () List!66627)

(declare-fun matchRSpec!3933 (Regex!16870 List!66627) Bool)

(assert (=> b!6903702 (= (matchR!9015 lt!2467033 s!14361) (matchRSpec!3933 lt!2467033 s!14361))))

(declare-datatypes ((Unit!160476 0))(
  ( (Unit!160477) )
))
(declare-fun lt!2467029 () Unit!160476)

(declare-fun mainMatchTheorem!3933 (Regex!16870 List!66627) Unit!160476)

(assert (=> b!6903702 (= lt!2467029 (mainMatchTheorem!3933 lt!2467033 s!14361))))

(declare-fun lt!2467032 () Regex!16870)

(assert (=> b!6903702 (= lt!2467035 (matchRSpec!3933 lt!2467032 s!14361))))

(assert (=> b!6903702 (= lt!2467035 (matchR!9015 lt!2467032 s!14361))))

(declare-fun lt!2467031 () Unit!160476)

(assert (=> b!6903702 (= lt!2467031 (mainMatchTheorem!3933 lt!2467032 s!14361))))

(declare-fun r1!6342 () Regex!16870)

(declare-fun r2!6280 () Regex!16870)

(assert (=> b!6903702 (= lt!2467033 (Concat!25715 r1!6342 (Concat!25715 r2!6280 r3!135)))))

(declare-fun lt!2467026 () Regex!16870)

(assert (=> b!6903702 (= lt!2467032 (Concat!25715 lt!2467026 r3!135))))

(assert (=> b!6903702 (= lt!2467026 (Concat!25715 r1!6342 r2!6280))))

(declare-fun b!6903703 () Bool)

(assert (=> b!6903703 (= e!4157305 tp_is_empty!42965)))

(declare-fun res!2815244 () Bool)

(assert (=> start!664836 (=> (not res!2815244) (not e!4157306))))

(assert (=> start!664836 (= res!2815244 (validRegex!8578 r1!6342))))

(assert (=> start!664836 e!4157306))

(assert (=> start!664836 e!4157305))

(assert (=> start!664836 e!4157301))

(assert (=> start!664836 e!4157302))

(declare-fun e!4157307 () Bool)

(assert (=> start!664836 e!4157307))

(declare-fun b!6903704 () Bool)

(declare-fun tp!1900805 () Bool)

(declare-fun tp!1900803 () Bool)

(assert (=> b!6903704 (= e!4157301 (and tp!1900805 tp!1900803))))

(declare-fun b!6903705 () Bool)

(declare-fun res!2815245 () Bool)

(assert (=> b!6903705 (=> (not res!2815245) (not e!4157306))))

(assert (=> b!6903705 (= res!2815245 (validRegex!8578 r2!6280))))

(declare-fun b!6903706 () Bool)

(declare-fun tp!1900795 () Bool)

(declare-fun tp!1900807 () Bool)

(assert (=> b!6903706 (= e!4157301 (and tp!1900795 tp!1900807))))

(declare-fun b!6903707 () Bool)

(declare-fun tp!1900804 () Bool)

(assert (=> b!6903707 (= e!4157302 tp!1900804)))

(assert (=> b!6903708 (= e!4157303 e!4157304)))

(declare-fun res!2815242 () Bool)

(assert (=> b!6903708 (=> res!2815242 e!4157304)))

(declare-fun lt!2467036 () Bool)

(assert (=> b!6903708 (= res!2815242 (not lt!2467036))))

(assert (=> b!6903708 (= lt!2467036 (matchRSpec!3933 lt!2467026 (_1!37040 lt!2467030)))))

(assert (=> b!6903708 (= lt!2467036 (matchR!9015 lt!2467026 (_1!37040 lt!2467030)))))

(declare-fun lt!2467037 () Unit!160476)

(assert (=> b!6903708 (= lt!2467037 (mainMatchTheorem!3933 lt!2467026 (_1!37040 lt!2467030)))))

(declare-datatypes ((Option!16649 0))(
  ( (None!16648) (Some!16648 (v!52920 tuple2!67474)) )
))
(declare-fun lt!2467034 () Option!16649)

(declare-fun get!23256 (Option!16649) tuple2!67474)

(assert (=> b!6903708 (= lt!2467030 (get!23256 lt!2467034))))

(declare-fun Exists!3878 (Int) Bool)

(assert (=> b!6903708 (= (Exists!3878 lambda!392059) (Exists!3878 lambda!392060))))

(declare-fun lt!2467028 () Unit!160476)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2351 (Regex!16870 Regex!16870 List!66627) Unit!160476)

(assert (=> b!6903708 (= lt!2467028 (lemmaExistCutMatchRandMatchRSpecEquivalent!2351 lt!2467026 r3!135 s!14361))))

(declare-fun isDefined!13352 (Option!16649) Bool)

(assert (=> b!6903708 (= (isDefined!13352 lt!2467034) (Exists!3878 lambda!392059))))

(declare-fun findConcatSeparation!3063 (Regex!16870 Regex!16870 List!66627 List!66627 List!66627) Option!16649)

(assert (=> b!6903708 (= lt!2467034 (findConcatSeparation!3063 lt!2467026 r3!135 Nil!66503 s!14361 s!14361))))

(declare-fun lt!2467027 () Unit!160476)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2825 (Regex!16870 Regex!16870 List!66627) Unit!160476)

(assert (=> b!6903708 (= lt!2467027 (lemmaFindConcatSeparationEquivalentToExists!2825 lt!2467026 r3!135 s!14361))))

(declare-fun b!6903709 () Bool)

(declare-fun tp!1900798 () Bool)

(declare-fun tp!1900801 () Bool)

(assert (=> b!6903709 (= e!4157305 (and tp!1900798 tp!1900801))))

(declare-fun b!6903710 () Bool)

(declare-fun tp!1900799 () Bool)

(declare-fun tp!1900796 () Bool)

(assert (=> b!6903710 (= e!4157302 (and tp!1900799 tp!1900796))))

(declare-fun b!6903711 () Bool)

(declare-fun tp!1900806 () Bool)

(assert (=> b!6903711 (= e!4157307 (and tp_is_empty!42965 tp!1900806))))

(assert (= (and start!664836 res!2815244) b!6903705))

(assert (= (and b!6903705 res!2815245) b!6903694))

(assert (= (and b!6903694 res!2815243) b!6903702))

(assert (= (and b!6903702 (not res!2815241)) b!6903708))

(assert (= (and b!6903708 (not res!2815242)) b!6903697))

(assert (= (and start!664836 (is-ElementMatch!16870 r1!6342)) b!6903703))

(assert (= (and start!664836 (is-Concat!25715 r1!6342)) b!6903698))

(assert (= (and start!664836 (is-Star!16870 r1!6342)) b!6903695))

(assert (= (and start!664836 (is-Union!16870 r1!6342)) b!6903709))

(assert (= (and start!664836 (is-ElementMatch!16870 r2!6280)) b!6903699))

(assert (= (and start!664836 (is-Concat!25715 r2!6280)) b!6903706))

(assert (= (and start!664836 (is-Star!16870 r2!6280)) b!6903700))

(assert (= (and start!664836 (is-Union!16870 r2!6280)) b!6903704))

(assert (= (and start!664836 (is-ElementMatch!16870 r3!135)) b!6903696))

(assert (= (and start!664836 (is-Concat!25715 r3!135)) b!6903710))

(assert (= (and start!664836 (is-Star!16870 r3!135)) b!6903707))

(assert (= (and start!664836 (is-Union!16870 r3!135)) b!6903701))

(assert (= (and start!664836 (is-Cons!66503 s!14361)) b!6903711))

(declare-fun m!7621164 () Bool)

(assert (=> b!6903697 m!7621164))

(declare-fun m!7621166 () Bool)

(assert (=> b!6903694 m!7621166))

(declare-fun m!7621168 () Bool)

(assert (=> b!6903702 m!7621168))

(declare-fun m!7621170 () Bool)

(assert (=> b!6903702 m!7621170))

(declare-fun m!7621172 () Bool)

(assert (=> b!6903702 m!7621172))

(declare-fun m!7621174 () Bool)

(assert (=> b!6903702 m!7621174))

(declare-fun m!7621176 () Bool)

(assert (=> b!6903702 m!7621176))

(declare-fun m!7621178 () Bool)

(assert (=> b!6903702 m!7621178))

(declare-fun m!7621180 () Bool)

(assert (=> b!6903705 m!7621180))

(declare-fun m!7621182 () Bool)

(assert (=> start!664836 m!7621182))

(declare-fun m!7621184 () Bool)

(assert (=> b!6903708 m!7621184))

(declare-fun m!7621186 () Bool)

(assert (=> b!6903708 m!7621186))

(declare-fun m!7621188 () Bool)

(assert (=> b!6903708 m!7621188))

(declare-fun m!7621190 () Bool)

(assert (=> b!6903708 m!7621190))

(declare-fun m!7621192 () Bool)

(assert (=> b!6903708 m!7621192))

(declare-fun m!7621194 () Bool)

(assert (=> b!6903708 m!7621194))

(assert (=> b!6903708 m!7621190))

(declare-fun m!7621196 () Bool)

(assert (=> b!6903708 m!7621196))

(declare-fun m!7621198 () Bool)

(assert (=> b!6903708 m!7621198))

(declare-fun m!7621200 () Bool)

(assert (=> b!6903708 m!7621200))

(declare-fun m!7621202 () Bool)

(assert (=> b!6903708 m!7621202))

(push 1)

(assert (not b!6903698))

(assert (not b!6903708))

(assert (not b!6903697))

(assert (not b!6903702))

(assert (not b!6903700))

(assert (not b!6903707))

(assert (not b!6903709))

(assert (not b!6903706))

(assert (not start!664836))

(assert tp_is_empty!42965)

(assert (not b!6903711))

(assert (not b!6903705))

(assert (not b!6903694))

(assert (not b!6903695))

(assert (not b!6903710))

(assert (not b!6903701))

(assert (not b!6903704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6903814 () Bool)

(declare-fun res!2815294 () Bool)

(declare-fun e!4157351 () Bool)

(assert (=> b!6903814 (=> res!2815294 e!4157351)))

(assert (=> b!6903814 (= res!2815294 (not (is-ElementMatch!16870 lt!2467032)))))

(declare-fun e!4157350 () Bool)

(assert (=> b!6903814 (= e!4157350 e!4157351)))

(declare-fun d!2162419 () Bool)

(declare-fun e!4157352 () Bool)

(assert (=> d!2162419 e!4157352))

(declare-fun c!1282644 () Bool)

(assert (=> d!2162419 (= c!1282644 (is-EmptyExpr!16870 lt!2467032))))

(declare-fun lt!2467076 () Bool)

(declare-fun e!4157354 () Bool)

(assert (=> d!2162419 (= lt!2467076 e!4157354)))

(declare-fun c!1282643 () Bool)

(declare-fun isEmpty!38736 (List!66627) Bool)

(assert (=> d!2162419 (= c!1282643 (isEmpty!38736 s!14361))))

(assert (=> d!2162419 (validRegex!8578 lt!2467032)))

(assert (=> d!2162419 (= (matchR!9015 lt!2467032 s!14361) lt!2467076)))

(declare-fun b!6903815 () Bool)

(declare-fun e!4157355 () Bool)

(assert (=> b!6903815 (= e!4157351 e!4157355)))

(declare-fun res!2815290 () Bool)

(assert (=> b!6903815 (=> (not res!2815290) (not e!4157355))))

(assert (=> b!6903815 (= res!2815290 (not lt!2467076))))

(declare-fun b!6903816 () Bool)

(declare-fun res!2815296 () Bool)

(declare-fun e!4157349 () Bool)

(assert (=> b!6903816 (=> (not res!2815296) (not e!4157349))))

(declare-fun tail!12895 (List!66627) List!66627)

(assert (=> b!6903816 (= res!2815296 (isEmpty!38736 (tail!12895 s!14361)))))

(declare-fun b!6903817 () Bool)

(declare-fun e!4157353 () Bool)

(assert (=> b!6903817 (= e!4157355 e!4157353)))

(declare-fun res!2815289 () Bool)

(assert (=> b!6903817 (=> res!2815289 e!4157353)))

(declare-fun call!627784 () Bool)

(assert (=> b!6903817 (= res!2815289 call!627784)))

(declare-fun b!6903818 () Bool)

(assert (=> b!6903818 (= e!4157352 e!4157350)))

(declare-fun c!1282642 () Bool)

(assert (=> b!6903818 (= c!1282642 (is-EmptyLang!16870 lt!2467032))))

(declare-fun b!6903819 () Bool)

(declare-fun res!2815295 () Bool)

(assert (=> b!6903819 (=> res!2815295 e!4157353)))

(assert (=> b!6903819 (= res!2815295 (not (isEmpty!38736 (tail!12895 s!14361))))))

(declare-fun b!6903820 () Bool)

(declare-fun head!13843 (List!66627) C!34010)

(assert (=> b!6903820 (= e!4157349 (= (head!13843 s!14361) (c!1282634 lt!2467032)))))

(declare-fun b!6903821 () Bool)

(declare-fun derivativeStep!5390 (Regex!16870 C!34010) Regex!16870)

(assert (=> b!6903821 (= e!4157354 (matchR!9015 (derivativeStep!5390 lt!2467032 (head!13843 s!14361)) (tail!12895 s!14361)))))

(declare-fun b!6903822 () Bool)

(declare-fun res!2815292 () Bool)

(assert (=> b!6903822 (=> res!2815292 e!4157351)))

(assert (=> b!6903822 (= res!2815292 e!4157349)))

(declare-fun res!2815291 () Bool)

(assert (=> b!6903822 (=> (not res!2815291) (not e!4157349))))

(assert (=> b!6903822 (= res!2815291 lt!2467076)))

(declare-fun b!6903823 () Bool)

(assert (=> b!6903823 (= e!4157353 (not (= (head!13843 s!14361) (c!1282634 lt!2467032))))))

(declare-fun bm!627779 () Bool)

(assert (=> bm!627779 (= call!627784 (isEmpty!38736 s!14361))))

(declare-fun b!6903824 () Bool)

(assert (=> b!6903824 (= e!4157350 (not lt!2467076))))

(declare-fun b!6903825 () Bool)

(assert (=> b!6903825 (= e!4157352 (= lt!2467076 call!627784))))

(declare-fun b!6903826 () Bool)

(declare-fun res!2815293 () Bool)

(assert (=> b!6903826 (=> (not res!2815293) (not e!4157349))))

(assert (=> b!6903826 (= res!2815293 (not call!627784))))

(declare-fun b!6903827 () Bool)

(declare-fun nullable!6711 (Regex!16870) Bool)

(assert (=> b!6903827 (= e!4157354 (nullable!6711 lt!2467032))))

(assert (= (and d!2162419 c!1282643) b!6903827))

(assert (= (and d!2162419 (not c!1282643)) b!6903821))

(assert (= (and d!2162419 c!1282644) b!6903825))

(assert (= (and d!2162419 (not c!1282644)) b!6903818))

(assert (= (and b!6903818 c!1282642) b!6903824))

(assert (= (and b!6903818 (not c!1282642)) b!6903814))

(assert (= (and b!6903814 (not res!2815294)) b!6903822))

(assert (= (and b!6903822 res!2815291) b!6903826))

(assert (= (and b!6903826 res!2815293) b!6903816))

(assert (= (and b!6903816 res!2815296) b!6903820))

(assert (= (and b!6903822 (not res!2815292)) b!6903815))

(assert (= (and b!6903815 res!2815290) b!6903817))

(assert (= (and b!6903817 (not res!2815289)) b!6903819))

(assert (= (and b!6903819 (not res!2815295)) b!6903823))

(assert (= (or b!6903825 b!6903817 b!6903826) bm!627779))

(declare-fun m!7621244 () Bool)

(assert (=> b!6903827 m!7621244))

(declare-fun m!7621246 () Bool)

(assert (=> b!6903819 m!7621246))

(assert (=> b!6903819 m!7621246))

(declare-fun m!7621248 () Bool)

(assert (=> b!6903819 m!7621248))

(assert (=> b!6903816 m!7621246))

(assert (=> b!6903816 m!7621246))

(assert (=> b!6903816 m!7621248))

(declare-fun m!7621250 () Bool)

(assert (=> b!6903820 m!7621250))

(declare-fun m!7621252 () Bool)

(assert (=> bm!627779 m!7621252))

(assert (=> b!6903823 m!7621250))

(assert (=> b!6903821 m!7621250))

(assert (=> b!6903821 m!7621250))

(declare-fun m!7621254 () Bool)

(assert (=> b!6903821 m!7621254))

(assert (=> b!6903821 m!7621246))

(assert (=> b!6903821 m!7621254))

(assert (=> b!6903821 m!7621246))

(declare-fun m!7621256 () Bool)

(assert (=> b!6903821 m!7621256))

(assert (=> d!2162419 m!7621252))

(declare-fun m!7621258 () Bool)

(assert (=> d!2162419 m!7621258))

(assert (=> b!6903702 d!2162419))

(declare-fun bs!1843186 () Bool)

(declare-fun b!6903898 () Bool)

(assert (= bs!1843186 (and b!6903898 b!6903708)))

(declare-fun lambda!392073 () Int)

(assert (=> bs!1843186 (not (= lambda!392073 lambda!392059))))

(assert (=> bs!1843186 (not (= lambda!392073 lambda!392060))))

(assert (=> b!6903898 true))

(assert (=> b!6903898 true))

(declare-fun bs!1843187 () Bool)

(declare-fun b!6903894 () Bool)

(assert (= bs!1843187 (and b!6903894 b!6903708)))

(declare-fun lambda!392074 () Int)

(assert (=> bs!1843187 (not (= lambda!392074 lambda!392059))))

(assert (=> bs!1843187 (= (and (= (regOne!34252 lt!2467033) lt!2467026) (= (regTwo!34252 lt!2467033) r3!135)) (= lambda!392074 lambda!392060))))

(declare-fun bs!1843188 () Bool)

(assert (= bs!1843188 (and b!6903894 b!6903898)))

(assert (=> bs!1843188 (not (= lambda!392074 lambda!392073))))

(assert (=> b!6903894 true))

(assert (=> b!6903894 true))

(declare-fun b!6903888 () Bool)

(declare-fun e!4157393 () Bool)

(assert (=> b!6903888 (= e!4157393 (= s!14361 (Cons!66503 (c!1282634 lt!2467033) Nil!66503)))))

(declare-fun b!6903889 () Bool)

(declare-fun res!2815330 () Bool)

(declare-fun e!4157394 () Bool)

(assert (=> b!6903889 (=> res!2815330 e!4157394)))

(declare-fun call!627791 () Bool)

(assert (=> b!6903889 (= res!2815330 call!627791)))

(declare-fun e!4157390 () Bool)

(assert (=> b!6903889 (= e!4157390 e!4157394)))

(declare-fun b!6903890 () Bool)

(declare-fun e!4157391 () Bool)

(assert (=> b!6903890 (= e!4157391 (matchRSpec!3933 (regTwo!34253 lt!2467033) s!14361))))

(declare-fun b!6903891 () Bool)

(declare-fun c!1282659 () Bool)

(assert (=> b!6903891 (= c!1282659 (is-Union!16870 lt!2467033))))

(declare-fun e!4157392 () Bool)

(assert (=> b!6903891 (= e!4157393 e!4157392)))

(declare-fun b!6903892 () Bool)

(declare-fun e!4157389 () Bool)

(declare-fun e!4157388 () Bool)

(assert (=> b!6903892 (= e!4157389 e!4157388)))

(declare-fun res!2815329 () Bool)

(assert (=> b!6903892 (= res!2815329 (not (is-EmptyLang!16870 lt!2467033)))))

(assert (=> b!6903892 (=> (not res!2815329) (not e!4157388))))

(declare-fun bm!627786 () Bool)

(assert (=> bm!627786 (= call!627791 (isEmpty!38736 s!14361))))

(declare-fun b!6903893 () Bool)

(declare-fun c!1282660 () Bool)

(assert (=> b!6903893 (= c!1282660 (is-ElementMatch!16870 lt!2467033))))

(assert (=> b!6903893 (= e!4157388 e!4157393)))

(declare-fun d!2162423 () Bool)

(declare-fun c!1282662 () Bool)

(assert (=> d!2162423 (= c!1282662 (is-EmptyExpr!16870 lt!2467033))))

(assert (=> d!2162423 (= (matchRSpec!3933 lt!2467033 s!14361) e!4157389)))

(declare-fun call!627792 () Bool)

(assert (=> b!6903894 (= e!4157390 call!627792)))

(declare-fun b!6903895 () Bool)

(assert (=> b!6903895 (= e!4157392 e!4157390)))

(declare-fun c!1282661 () Bool)

(assert (=> b!6903895 (= c!1282661 (is-Star!16870 lt!2467033))))

(declare-fun b!6903896 () Bool)

(assert (=> b!6903896 (= e!4157392 e!4157391)))

(declare-fun res!2815331 () Bool)

(assert (=> b!6903896 (= res!2815331 (matchRSpec!3933 (regOne!34253 lt!2467033) s!14361))))

(assert (=> b!6903896 (=> res!2815331 e!4157391)))

(declare-fun bm!627787 () Bool)

(assert (=> bm!627787 (= call!627792 (Exists!3878 (ite c!1282661 lambda!392073 lambda!392074)))))

(declare-fun b!6903897 () Bool)

(assert (=> b!6903897 (= e!4157389 call!627791)))

(assert (=> b!6903898 (= e!4157394 call!627792)))

(assert (= (and d!2162423 c!1282662) b!6903897))

(assert (= (and d!2162423 (not c!1282662)) b!6903892))

(assert (= (and b!6903892 res!2815329) b!6903893))

(assert (= (and b!6903893 c!1282660) b!6903888))

(assert (= (and b!6903893 (not c!1282660)) b!6903891))

(assert (= (and b!6903891 c!1282659) b!6903896))

(assert (= (and b!6903891 (not c!1282659)) b!6903895))

(assert (= (and b!6903896 (not res!2815331)) b!6903890))

(assert (= (and b!6903895 c!1282661) b!6903889))

(assert (= (and b!6903895 (not c!1282661)) b!6903894))

(assert (= (and b!6903889 (not res!2815330)) b!6903898))

(assert (= (or b!6903898 b!6903894) bm!627787))

(assert (= (or b!6903897 b!6903889) bm!627786))

(declare-fun m!7621260 () Bool)

(assert (=> b!6903890 m!7621260))

(assert (=> bm!627786 m!7621252))

(declare-fun m!7621262 () Bool)

(assert (=> b!6903896 m!7621262))

(declare-fun m!7621264 () Bool)

(assert (=> bm!627787 m!7621264))

(assert (=> b!6903702 d!2162423))

(declare-fun d!2162425 () Bool)

(assert (=> d!2162425 (= (matchR!9015 lt!2467032 s!14361) (matchRSpec!3933 lt!2467032 s!14361))))

(declare-fun lt!2467082 () Unit!160476)

(declare-fun choose!51404 (Regex!16870 List!66627) Unit!160476)

(assert (=> d!2162425 (= lt!2467082 (choose!51404 lt!2467032 s!14361))))

(assert (=> d!2162425 (validRegex!8578 lt!2467032)))

(assert (=> d!2162425 (= (mainMatchTheorem!3933 lt!2467032 s!14361) lt!2467082)))

(declare-fun bs!1843189 () Bool)

(assert (= bs!1843189 d!2162425))

(assert (=> bs!1843189 m!7621174))

(assert (=> bs!1843189 m!7621170))

(declare-fun m!7621266 () Bool)

(assert (=> bs!1843189 m!7621266))

(assert (=> bs!1843189 m!7621258))

(assert (=> b!6903702 d!2162425))

(declare-fun d!2162427 () Bool)

(assert (=> d!2162427 (= (matchR!9015 lt!2467033 s!14361) (matchRSpec!3933 lt!2467033 s!14361))))

(declare-fun lt!2467083 () Unit!160476)

(assert (=> d!2162427 (= lt!2467083 (choose!51404 lt!2467033 s!14361))))

(assert (=> d!2162427 (validRegex!8578 lt!2467033)))

(assert (=> d!2162427 (= (mainMatchTheorem!3933 lt!2467033 s!14361) lt!2467083)))

(declare-fun bs!1843190 () Bool)

(assert (= bs!1843190 d!2162427))

(assert (=> bs!1843190 m!7621178))

(assert (=> bs!1843190 m!7621176))

(declare-fun m!7621268 () Bool)

(assert (=> bs!1843190 m!7621268))

(declare-fun m!7621270 () Bool)

(assert (=> bs!1843190 m!7621270))

(assert (=> b!6903702 d!2162427))

(declare-fun bs!1843191 () Bool)

(declare-fun b!6903923 () Bool)

(assert (= bs!1843191 (and b!6903923 b!6903708)))

(declare-fun lambda!392075 () Int)

(assert (=> bs!1843191 (not (= lambda!392075 lambda!392059))))

(assert (=> bs!1843191 (not (= lambda!392075 lambda!392060))))

(declare-fun bs!1843192 () Bool)

(assert (= bs!1843192 (and b!6903923 b!6903898)))

(assert (=> bs!1843192 (= (and (= (reg!17199 lt!2467032) (reg!17199 lt!2467033)) (= lt!2467032 lt!2467033)) (= lambda!392075 lambda!392073))))

(declare-fun bs!1843193 () Bool)

(assert (= bs!1843193 (and b!6903923 b!6903894)))

(assert (=> bs!1843193 (not (= lambda!392075 lambda!392074))))

(assert (=> b!6903923 true))

(assert (=> b!6903923 true))

(declare-fun bs!1843194 () Bool)

(declare-fun b!6903919 () Bool)

(assert (= bs!1843194 (and b!6903919 b!6903708)))

(declare-fun lambda!392076 () Int)

(assert (=> bs!1843194 (not (= lambda!392076 lambda!392059))))

(declare-fun bs!1843195 () Bool)

(assert (= bs!1843195 (and b!6903919 b!6903923)))

(assert (=> bs!1843195 (not (= lambda!392076 lambda!392075))))

(declare-fun bs!1843196 () Bool)

(assert (= bs!1843196 (and b!6903919 b!6903894)))

(assert (=> bs!1843196 (= (and (= (regOne!34252 lt!2467032) (regOne!34252 lt!2467033)) (= (regTwo!34252 lt!2467032) (regTwo!34252 lt!2467033))) (= lambda!392076 lambda!392074))))

(assert (=> bs!1843194 (= (and (= (regOne!34252 lt!2467032) lt!2467026) (= (regTwo!34252 lt!2467032) r3!135)) (= lambda!392076 lambda!392060))))

(declare-fun bs!1843197 () Bool)

(assert (= bs!1843197 (and b!6903919 b!6903898)))

(assert (=> bs!1843197 (not (= lambda!392076 lambda!392073))))

(assert (=> b!6903919 true))

(assert (=> b!6903919 true))

(declare-fun b!6903913 () Bool)

(declare-fun e!4157407 () Bool)

(assert (=> b!6903913 (= e!4157407 (= s!14361 (Cons!66503 (c!1282634 lt!2467032) Nil!66503)))))

(declare-fun b!6903914 () Bool)

(declare-fun res!2815341 () Bool)

(declare-fun e!4157408 () Bool)

(assert (=> b!6903914 (=> res!2815341 e!4157408)))

(declare-fun call!627794 () Bool)

(assert (=> b!6903914 (= res!2815341 call!627794)))

(declare-fun e!4157404 () Bool)

(assert (=> b!6903914 (= e!4157404 e!4157408)))

(declare-fun b!6903915 () Bool)

(declare-fun e!4157405 () Bool)

(assert (=> b!6903915 (= e!4157405 (matchRSpec!3933 (regTwo!34253 lt!2467032) s!14361))))

(declare-fun b!6903916 () Bool)

(declare-fun c!1282666 () Bool)

(assert (=> b!6903916 (= c!1282666 (is-Union!16870 lt!2467032))))

(declare-fun e!4157406 () Bool)

(assert (=> b!6903916 (= e!4157407 e!4157406)))

(declare-fun b!6903917 () Bool)

(declare-fun e!4157403 () Bool)

(declare-fun e!4157402 () Bool)

(assert (=> b!6903917 (= e!4157403 e!4157402)))

(declare-fun res!2815340 () Bool)

(assert (=> b!6903917 (= res!2815340 (not (is-EmptyLang!16870 lt!2467032)))))

(assert (=> b!6903917 (=> (not res!2815340) (not e!4157402))))

(declare-fun bm!627789 () Bool)

(assert (=> bm!627789 (= call!627794 (isEmpty!38736 s!14361))))

(declare-fun b!6903918 () Bool)

(declare-fun c!1282667 () Bool)

(assert (=> b!6903918 (= c!1282667 (is-ElementMatch!16870 lt!2467032))))

(assert (=> b!6903918 (= e!4157402 e!4157407)))

(declare-fun d!2162429 () Bool)

(declare-fun c!1282669 () Bool)

(assert (=> d!2162429 (= c!1282669 (is-EmptyExpr!16870 lt!2467032))))

(assert (=> d!2162429 (= (matchRSpec!3933 lt!2467032 s!14361) e!4157403)))

(declare-fun call!627795 () Bool)

(assert (=> b!6903919 (= e!4157404 call!627795)))

(declare-fun b!6903920 () Bool)

(assert (=> b!6903920 (= e!4157406 e!4157404)))

(declare-fun c!1282668 () Bool)

(assert (=> b!6903920 (= c!1282668 (is-Star!16870 lt!2467032))))

(declare-fun b!6903921 () Bool)

(assert (=> b!6903921 (= e!4157406 e!4157405)))

(declare-fun res!2815342 () Bool)

(assert (=> b!6903921 (= res!2815342 (matchRSpec!3933 (regOne!34253 lt!2467032) s!14361))))

(assert (=> b!6903921 (=> res!2815342 e!4157405)))

(declare-fun bm!627790 () Bool)

(assert (=> bm!627790 (= call!627795 (Exists!3878 (ite c!1282668 lambda!392075 lambda!392076)))))

(declare-fun b!6903922 () Bool)

(assert (=> b!6903922 (= e!4157403 call!627794)))

(assert (=> b!6903923 (= e!4157408 call!627795)))

(assert (= (and d!2162429 c!1282669) b!6903922))

(assert (= (and d!2162429 (not c!1282669)) b!6903917))

(assert (= (and b!6903917 res!2815340) b!6903918))

(assert (= (and b!6903918 c!1282667) b!6903913))

(assert (= (and b!6903918 (not c!1282667)) b!6903916))

(assert (= (and b!6903916 c!1282666) b!6903921))

(assert (= (and b!6903916 (not c!1282666)) b!6903920))

(assert (= (and b!6903921 (not res!2815342)) b!6903915))

(assert (= (and b!6903920 c!1282668) b!6903914))

(assert (= (and b!6903920 (not c!1282668)) b!6903919))

(assert (= (and b!6903914 (not res!2815341)) b!6903923))

(assert (= (or b!6903923 b!6903919) bm!627790))

(assert (= (or b!6903922 b!6903914) bm!627789))

(declare-fun m!7621286 () Bool)

(assert (=> b!6903915 m!7621286))

(assert (=> bm!627789 m!7621252))

(declare-fun m!7621288 () Bool)

(assert (=> b!6903921 m!7621288))

(declare-fun m!7621290 () Bool)

(assert (=> bm!627790 m!7621290))

(assert (=> b!6903702 d!2162429))

(declare-fun b!6903924 () Bool)

(declare-fun res!2815348 () Bool)

(declare-fun e!4157411 () Bool)

(assert (=> b!6903924 (=> res!2815348 e!4157411)))

(assert (=> b!6903924 (= res!2815348 (not (is-ElementMatch!16870 lt!2467033)))))

(declare-fun e!4157410 () Bool)

(assert (=> b!6903924 (= e!4157410 e!4157411)))

(declare-fun d!2162433 () Bool)

(declare-fun e!4157412 () Bool)

(assert (=> d!2162433 e!4157412))

(declare-fun c!1282672 () Bool)

(assert (=> d!2162433 (= c!1282672 (is-EmptyExpr!16870 lt!2467033))))

(declare-fun lt!2467084 () Bool)

(declare-fun e!4157414 () Bool)

(assert (=> d!2162433 (= lt!2467084 e!4157414)))

(declare-fun c!1282671 () Bool)

(assert (=> d!2162433 (= c!1282671 (isEmpty!38736 s!14361))))

(assert (=> d!2162433 (validRegex!8578 lt!2467033)))

(assert (=> d!2162433 (= (matchR!9015 lt!2467033 s!14361) lt!2467084)))

(declare-fun b!6903925 () Bool)

(declare-fun e!4157415 () Bool)

(assert (=> b!6903925 (= e!4157411 e!4157415)))

(declare-fun res!2815344 () Bool)

(assert (=> b!6903925 (=> (not res!2815344) (not e!4157415))))

(assert (=> b!6903925 (= res!2815344 (not lt!2467084))))

(declare-fun b!6903926 () Bool)

(declare-fun res!2815350 () Bool)

(declare-fun e!4157409 () Bool)

(assert (=> b!6903926 (=> (not res!2815350) (not e!4157409))))

(assert (=> b!6903926 (= res!2815350 (isEmpty!38736 (tail!12895 s!14361)))))

(declare-fun b!6903927 () Bool)

(declare-fun e!4157413 () Bool)

(assert (=> b!6903927 (= e!4157415 e!4157413)))

(declare-fun res!2815343 () Bool)

(assert (=> b!6903927 (=> res!2815343 e!4157413)))

(declare-fun call!627796 () Bool)

(assert (=> b!6903927 (= res!2815343 call!627796)))

(declare-fun b!6903928 () Bool)

(assert (=> b!6903928 (= e!4157412 e!4157410)))

(declare-fun c!1282670 () Bool)

(assert (=> b!6903928 (= c!1282670 (is-EmptyLang!16870 lt!2467033))))

(declare-fun b!6903929 () Bool)

(declare-fun res!2815349 () Bool)

(assert (=> b!6903929 (=> res!2815349 e!4157413)))

(assert (=> b!6903929 (= res!2815349 (not (isEmpty!38736 (tail!12895 s!14361))))))

(declare-fun b!6903930 () Bool)

(assert (=> b!6903930 (= e!4157409 (= (head!13843 s!14361) (c!1282634 lt!2467033)))))

(declare-fun b!6903931 () Bool)

(assert (=> b!6903931 (= e!4157414 (matchR!9015 (derivativeStep!5390 lt!2467033 (head!13843 s!14361)) (tail!12895 s!14361)))))

(declare-fun b!6903932 () Bool)

(declare-fun res!2815346 () Bool)

(assert (=> b!6903932 (=> res!2815346 e!4157411)))

(assert (=> b!6903932 (= res!2815346 e!4157409)))

(declare-fun res!2815345 () Bool)

(assert (=> b!6903932 (=> (not res!2815345) (not e!4157409))))

(assert (=> b!6903932 (= res!2815345 lt!2467084)))

(declare-fun b!6903933 () Bool)

(assert (=> b!6903933 (= e!4157413 (not (= (head!13843 s!14361) (c!1282634 lt!2467033))))))

(declare-fun bm!627791 () Bool)

(assert (=> bm!627791 (= call!627796 (isEmpty!38736 s!14361))))

(declare-fun b!6903934 () Bool)

(assert (=> b!6903934 (= e!4157410 (not lt!2467084))))

(declare-fun b!6903935 () Bool)

(assert (=> b!6903935 (= e!4157412 (= lt!2467084 call!627796))))

(declare-fun b!6903936 () Bool)

(declare-fun res!2815347 () Bool)

(assert (=> b!6903936 (=> (not res!2815347) (not e!4157409))))

(assert (=> b!6903936 (= res!2815347 (not call!627796))))

(declare-fun b!6903937 () Bool)

(assert (=> b!6903937 (= e!4157414 (nullable!6711 lt!2467033))))

(assert (= (and d!2162433 c!1282671) b!6903937))

(assert (= (and d!2162433 (not c!1282671)) b!6903931))

(assert (= (and d!2162433 c!1282672) b!6903935))

(assert (= (and d!2162433 (not c!1282672)) b!6903928))

(assert (= (and b!6903928 c!1282670) b!6903934))

(assert (= (and b!6903928 (not c!1282670)) b!6903924))

(assert (= (and b!6903924 (not res!2815348)) b!6903932))

(assert (= (and b!6903932 res!2815345) b!6903936))

(assert (= (and b!6903936 res!2815347) b!6903926))

(assert (= (and b!6903926 res!2815350) b!6903930))

(assert (= (and b!6903932 (not res!2815346)) b!6903925))

(assert (= (and b!6903925 res!2815344) b!6903927))

(assert (= (and b!6903927 (not res!2815343)) b!6903929))

(assert (= (and b!6903929 (not res!2815349)) b!6903933))

(assert (= (or b!6903935 b!6903927 b!6903936) bm!627791))

(declare-fun m!7621292 () Bool)

(assert (=> b!6903937 m!7621292))

(assert (=> b!6903929 m!7621246))

(assert (=> b!6903929 m!7621246))

(assert (=> b!6903929 m!7621248))

(assert (=> b!6903926 m!7621246))

(assert (=> b!6903926 m!7621246))

(assert (=> b!6903926 m!7621248))

(assert (=> b!6903930 m!7621250))

(assert (=> bm!627791 m!7621252))

(assert (=> b!6903933 m!7621250))

(assert (=> b!6903931 m!7621250))

(assert (=> b!6903931 m!7621250))

(declare-fun m!7621294 () Bool)

(assert (=> b!6903931 m!7621294))

(assert (=> b!6903931 m!7621246))

(assert (=> b!6903931 m!7621294))

(assert (=> b!6903931 m!7621246))

(declare-fun m!7621296 () Bool)

(assert (=> b!6903931 m!7621296))

(assert (=> d!2162433 m!7621252))

(assert (=> d!2162433 m!7621270))

(assert (=> b!6903702 d!2162433))

(declare-fun b!6903938 () Bool)

(declare-fun res!2815356 () Bool)

(declare-fun e!4157418 () Bool)

(assert (=> b!6903938 (=> res!2815356 e!4157418)))

(assert (=> b!6903938 (= res!2815356 (not (is-ElementMatch!16870 r3!135)))))

(declare-fun e!4157417 () Bool)

(assert (=> b!6903938 (= e!4157417 e!4157418)))

(declare-fun d!2162435 () Bool)

(declare-fun e!4157419 () Bool)

(assert (=> d!2162435 e!4157419))

(declare-fun c!1282675 () Bool)

(assert (=> d!2162435 (= c!1282675 (is-EmptyExpr!16870 r3!135))))

(declare-fun lt!2467085 () Bool)

(declare-fun e!4157421 () Bool)

(assert (=> d!2162435 (= lt!2467085 e!4157421)))

(declare-fun c!1282674 () Bool)

(assert (=> d!2162435 (= c!1282674 (isEmpty!38736 (_2!37040 lt!2467030)))))

(assert (=> d!2162435 (validRegex!8578 r3!135)))

(assert (=> d!2162435 (= (matchR!9015 r3!135 (_2!37040 lt!2467030)) lt!2467085)))

(declare-fun b!6903939 () Bool)

(declare-fun e!4157422 () Bool)

(assert (=> b!6903939 (= e!4157418 e!4157422)))

(declare-fun res!2815352 () Bool)

(assert (=> b!6903939 (=> (not res!2815352) (not e!4157422))))

(assert (=> b!6903939 (= res!2815352 (not lt!2467085))))

(declare-fun b!6903940 () Bool)

(declare-fun res!2815358 () Bool)

(declare-fun e!4157416 () Bool)

(assert (=> b!6903940 (=> (not res!2815358) (not e!4157416))))

(assert (=> b!6903940 (= res!2815358 (isEmpty!38736 (tail!12895 (_2!37040 lt!2467030))))))

(declare-fun b!6903941 () Bool)

(declare-fun e!4157420 () Bool)

(assert (=> b!6903941 (= e!4157422 e!4157420)))

(declare-fun res!2815351 () Bool)

(assert (=> b!6903941 (=> res!2815351 e!4157420)))

(declare-fun call!627797 () Bool)

(assert (=> b!6903941 (= res!2815351 call!627797)))

(declare-fun b!6903942 () Bool)

(assert (=> b!6903942 (= e!4157419 e!4157417)))

(declare-fun c!1282673 () Bool)

(assert (=> b!6903942 (= c!1282673 (is-EmptyLang!16870 r3!135))))

(declare-fun b!6903943 () Bool)

(declare-fun res!2815357 () Bool)

(assert (=> b!6903943 (=> res!2815357 e!4157420)))

(assert (=> b!6903943 (= res!2815357 (not (isEmpty!38736 (tail!12895 (_2!37040 lt!2467030)))))))

(declare-fun b!6903944 () Bool)

(assert (=> b!6903944 (= e!4157416 (= (head!13843 (_2!37040 lt!2467030)) (c!1282634 r3!135)))))

(declare-fun b!6903945 () Bool)

(assert (=> b!6903945 (= e!4157421 (matchR!9015 (derivativeStep!5390 r3!135 (head!13843 (_2!37040 lt!2467030))) (tail!12895 (_2!37040 lt!2467030))))))

(declare-fun b!6903946 () Bool)

(declare-fun res!2815354 () Bool)

(assert (=> b!6903946 (=> res!2815354 e!4157418)))

(assert (=> b!6903946 (= res!2815354 e!4157416)))

(declare-fun res!2815353 () Bool)

(assert (=> b!6903946 (=> (not res!2815353) (not e!4157416))))

(assert (=> b!6903946 (= res!2815353 lt!2467085)))

(declare-fun b!6903947 () Bool)

(assert (=> b!6903947 (= e!4157420 (not (= (head!13843 (_2!37040 lt!2467030)) (c!1282634 r3!135))))))

(declare-fun bm!627792 () Bool)

(assert (=> bm!627792 (= call!627797 (isEmpty!38736 (_2!37040 lt!2467030)))))

(declare-fun b!6903948 () Bool)

(assert (=> b!6903948 (= e!4157417 (not lt!2467085))))

(declare-fun b!6903949 () Bool)

(assert (=> b!6903949 (= e!4157419 (= lt!2467085 call!627797))))

(declare-fun b!6903950 () Bool)

(declare-fun res!2815355 () Bool)

(assert (=> b!6903950 (=> (not res!2815355) (not e!4157416))))

(assert (=> b!6903950 (= res!2815355 (not call!627797))))

(declare-fun b!6903951 () Bool)

(assert (=> b!6903951 (= e!4157421 (nullable!6711 r3!135))))

(assert (= (and d!2162435 c!1282674) b!6903951))

(assert (= (and d!2162435 (not c!1282674)) b!6903945))

(assert (= (and d!2162435 c!1282675) b!6903949))

(assert (= (and d!2162435 (not c!1282675)) b!6903942))

(assert (= (and b!6903942 c!1282673) b!6903948))

(assert (= (and b!6903942 (not c!1282673)) b!6903938))

(assert (= (and b!6903938 (not res!2815356)) b!6903946))

(assert (= (and b!6903946 res!2815353) b!6903950))

(assert (= (and b!6903950 res!2815355) b!6903940))

(assert (= (and b!6903940 res!2815358) b!6903944))

(assert (= (and b!6903946 (not res!2815354)) b!6903939))

(assert (= (and b!6903939 res!2815352) b!6903941))

(assert (= (and b!6903941 (not res!2815351)) b!6903943))

(assert (= (and b!6903943 (not res!2815357)) b!6903947))

(assert (= (or b!6903949 b!6903941 b!6903950) bm!627792))

(declare-fun m!7621298 () Bool)

(assert (=> b!6903951 m!7621298))

(declare-fun m!7621300 () Bool)

(assert (=> b!6903943 m!7621300))

(assert (=> b!6903943 m!7621300))

(declare-fun m!7621302 () Bool)

(assert (=> b!6903943 m!7621302))

(assert (=> b!6903940 m!7621300))

(assert (=> b!6903940 m!7621300))

(assert (=> b!6903940 m!7621302))

(declare-fun m!7621304 () Bool)

(assert (=> b!6903944 m!7621304))

(declare-fun m!7621306 () Bool)

(assert (=> bm!627792 m!7621306))

(assert (=> b!6903947 m!7621304))

(assert (=> b!6903945 m!7621304))

(assert (=> b!6903945 m!7621304))

(declare-fun m!7621308 () Bool)

(assert (=> b!6903945 m!7621308))

(assert (=> b!6903945 m!7621300))

(assert (=> b!6903945 m!7621308))

(assert (=> b!6903945 m!7621300))

(declare-fun m!7621310 () Bool)

(assert (=> b!6903945 m!7621310))

(assert (=> d!2162435 m!7621306))

(assert (=> d!2162435 m!7621166))

(assert (=> b!6903697 d!2162435))

(declare-fun d!2162437 () Bool)

(assert (=> d!2162437 (= (matchR!9015 lt!2467026 (_1!37040 lt!2467030)) (matchRSpec!3933 lt!2467026 (_1!37040 lt!2467030)))))

(declare-fun lt!2467086 () Unit!160476)

(assert (=> d!2162437 (= lt!2467086 (choose!51404 lt!2467026 (_1!37040 lt!2467030)))))

(assert (=> d!2162437 (validRegex!8578 lt!2467026)))

(assert (=> d!2162437 (= (mainMatchTheorem!3933 lt!2467026 (_1!37040 lt!2467030)) lt!2467086)))

(declare-fun bs!1843198 () Bool)

(assert (= bs!1843198 d!2162437))

(assert (=> bs!1843198 m!7621184))

(assert (=> bs!1843198 m!7621196))

(declare-fun m!7621312 () Bool)

(assert (=> bs!1843198 m!7621312))

(declare-fun m!7621314 () Bool)

(assert (=> bs!1843198 m!7621314))

(assert (=> b!6903708 d!2162437))

(declare-fun b!6903970 () Bool)

(declare-fun res!2815371 () Bool)

(declare-fun e!4157436 () Bool)

(assert (=> b!6903970 (=> (not res!2815371) (not e!4157436))))

(declare-fun lt!2467097 () Option!16649)

(assert (=> b!6903970 (= res!2815371 (matchR!9015 r3!135 (_2!37040 (get!23256 lt!2467097))))))

(declare-fun b!6903971 () Bool)

(declare-fun e!4157433 () Option!16649)

(declare-fun e!4157435 () Option!16649)

(assert (=> b!6903971 (= e!4157433 e!4157435)))

(declare-fun c!1282681 () Bool)

(assert (=> b!6903971 (= c!1282681 (is-Nil!66503 s!14361))))

(declare-fun b!6903972 () Bool)

(assert (=> b!6903972 (= e!4157433 (Some!16648 (tuple2!67475 Nil!66503 s!14361)))))

(declare-fun d!2162439 () Bool)

(declare-fun e!4157437 () Bool)

(assert (=> d!2162439 e!4157437))

(declare-fun res!2815373 () Bool)

(assert (=> d!2162439 (=> res!2815373 e!4157437)))

(assert (=> d!2162439 (= res!2815373 e!4157436)))

(declare-fun res!2815372 () Bool)

(assert (=> d!2162439 (=> (not res!2815372) (not e!4157436))))

(assert (=> d!2162439 (= res!2815372 (isDefined!13352 lt!2467097))))

(assert (=> d!2162439 (= lt!2467097 e!4157433)))

(declare-fun c!1282680 () Bool)

(declare-fun e!4157434 () Bool)

(assert (=> d!2162439 (= c!1282680 e!4157434)))

(declare-fun res!2815369 () Bool)

(assert (=> d!2162439 (=> (not res!2815369) (not e!4157434))))

(assert (=> d!2162439 (= res!2815369 (matchR!9015 lt!2467026 Nil!66503))))

(assert (=> d!2162439 (validRegex!8578 lt!2467026)))

(assert (=> d!2162439 (= (findConcatSeparation!3063 lt!2467026 r3!135 Nil!66503 s!14361 s!14361) lt!2467097)))

(declare-fun b!6903973 () Bool)

(assert (=> b!6903973 (= e!4157434 (matchR!9015 r3!135 s!14361))))

(declare-fun b!6903974 () Bool)

(declare-fun ++!14923 (List!66627 List!66627) List!66627)

(assert (=> b!6903974 (= e!4157436 (= (++!14923 (_1!37040 (get!23256 lt!2467097)) (_2!37040 (get!23256 lt!2467097))) s!14361))))

(declare-fun b!6903975 () Bool)

(assert (=> b!6903975 (= e!4157437 (not (isDefined!13352 lt!2467097)))))

(declare-fun b!6903976 () Bool)

(declare-fun lt!2467096 () Unit!160476)

(declare-fun lt!2467098 () Unit!160476)

(assert (=> b!6903976 (= lt!2467096 lt!2467098)))

(assert (=> b!6903976 (= (++!14923 (++!14923 Nil!66503 (Cons!66503 (h!72951 s!14361) Nil!66503)) (t!380370 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2798 (List!66627 C!34010 List!66627 List!66627) Unit!160476)

(assert (=> b!6903976 (= lt!2467098 (lemmaMoveElementToOtherListKeepsConcatEq!2798 Nil!66503 (h!72951 s!14361) (t!380370 s!14361) s!14361))))

(assert (=> b!6903976 (= e!4157435 (findConcatSeparation!3063 lt!2467026 r3!135 (++!14923 Nil!66503 (Cons!66503 (h!72951 s!14361) Nil!66503)) (t!380370 s!14361) s!14361))))

(declare-fun b!6903977 () Bool)

(declare-fun res!2815370 () Bool)

(assert (=> b!6903977 (=> (not res!2815370) (not e!4157436))))

(assert (=> b!6903977 (= res!2815370 (matchR!9015 lt!2467026 (_1!37040 (get!23256 lt!2467097))))))

(declare-fun b!6903978 () Bool)

(assert (=> b!6903978 (= e!4157435 None!16648)))

(assert (= (and d!2162439 res!2815369) b!6903973))

(assert (= (and d!2162439 c!1282680) b!6903972))

(assert (= (and d!2162439 (not c!1282680)) b!6903971))

(assert (= (and b!6903971 c!1282681) b!6903978))

(assert (= (and b!6903971 (not c!1282681)) b!6903976))

(assert (= (and d!2162439 res!2815372) b!6903977))

(assert (= (and b!6903977 res!2815370) b!6903970))

(assert (= (and b!6903970 res!2815371) b!6903974))

(assert (= (and d!2162439 (not res!2815373)) b!6903975))

(declare-fun m!7621324 () Bool)

(assert (=> b!6903977 m!7621324))

(declare-fun m!7621326 () Bool)

(assert (=> b!6903977 m!7621326))

(declare-fun m!7621328 () Bool)

(assert (=> b!6903975 m!7621328))

(declare-fun m!7621330 () Bool)

(assert (=> b!6903973 m!7621330))

(assert (=> d!2162439 m!7621328))

(declare-fun m!7621332 () Bool)

(assert (=> d!2162439 m!7621332))

(assert (=> d!2162439 m!7621314))

(assert (=> b!6903974 m!7621324))

(declare-fun m!7621334 () Bool)

(assert (=> b!6903974 m!7621334))

(declare-fun m!7621336 () Bool)

(assert (=> b!6903976 m!7621336))

(assert (=> b!6903976 m!7621336))

(declare-fun m!7621338 () Bool)

(assert (=> b!6903976 m!7621338))

(declare-fun m!7621340 () Bool)

(assert (=> b!6903976 m!7621340))

(assert (=> b!6903976 m!7621336))

(declare-fun m!7621342 () Bool)

(assert (=> b!6903976 m!7621342))

(assert (=> b!6903970 m!7621324))

(declare-fun m!7621344 () Bool)

(assert (=> b!6903970 m!7621344))

(assert (=> b!6903708 d!2162439))

(declare-fun d!2162447 () Bool)

(assert (=> d!2162447 (= (get!23256 lt!2467034) (v!52920 lt!2467034))))

(assert (=> b!6903708 d!2162447))

(declare-fun bs!1843202 () Bool)

(declare-fun d!2162449 () Bool)

(assert (= bs!1843202 (and d!2162449 b!6903708)))

(declare-fun lambda!392085 () Int)

(assert (=> bs!1843202 (= lambda!392085 lambda!392059)))

(declare-fun bs!1843203 () Bool)

(assert (= bs!1843203 (and d!2162449 b!6903919)))

(assert (=> bs!1843203 (not (= lambda!392085 lambda!392076))))

(declare-fun bs!1843204 () Bool)

(assert (= bs!1843204 (and d!2162449 b!6903923)))

(assert (=> bs!1843204 (not (= lambda!392085 lambda!392075))))

(declare-fun bs!1843205 () Bool)

(assert (= bs!1843205 (and d!2162449 b!6903894)))

(assert (=> bs!1843205 (not (= lambda!392085 lambda!392074))))

(assert (=> bs!1843202 (not (= lambda!392085 lambda!392060))))

(declare-fun bs!1843206 () Bool)

(assert (= bs!1843206 (and d!2162449 b!6903898)))

(assert (=> bs!1843206 (not (= lambda!392085 lambda!392073))))

(assert (=> d!2162449 true))

(assert (=> d!2162449 true))

(assert (=> d!2162449 true))

(declare-fun lambda!392086 () Int)

(assert (=> bs!1843202 (not (= lambda!392086 lambda!392059))))

(assert (=> bs!1843203 (= (and (= lt!2467026 (regOne!34252 lt!2467032)) (= r3!135 (regTwo!34252 lt!2467032))) (= lambda!392086 lambda!392076))))

(assert (=> bs!1843204 (not (= lambda!392086 lambda!392075))))

(assert (=> bs!1843205 (= (and (= lt!2467026 (regOne!34252 lt!2467033)) (= r3!135 (regTwo!34252 lt!2467033))) (= lambda!392086 lambda!392074))))

(assert (=> bs!1843202 (= lambda!392086 lambda!392060)))

(assert (=> bs!1843206 (not (= lambda!392086 lambda!392073))))

(declare-fun bs!1843207 () Bool)

(assert (= bs!1843207 d!2162449))

(assert (=> bs!1843207 (not (= lambda!392086 lambda!392085))))

(assert (=> d!2162449 true))

(assert (=> d!2162449 true))

(assert (=> d!2162449 true))

(assert (=> d!2162449 (= (Exists!3878 lambda!392085) (Exists!3878 lambda!392086))))

(declare-fun lt!2467101 () Unit!160476)

(declare-fun choose!51405 (Regex!16870 Regex!16870 List!66627) Unit!160476)

(assert (=> d!2162449 (= lt!2467101 (choose!51405 lt!2467026 r3!135 s!14361))))

(assert (=> d!2162449 (validRegex!8578 lt!2467026)))

(assert (=> d!2162449 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2351 lt!2467026 r3!135 s!14361) lt!2467101)))

(declare-fun m!7621346 () Bool)

(assert (=> bs!1843207 m!7621346))

(declare-fun m!7621348 () Bool)

(assert (=> bs!1843207 m!7621348))

(declare-fun m!7621350 () Bool)

(assert (=> bs!1843207 m!7621350))

(assert (=> bs!1843207 m!7621314))

(assert (=> b!6903708 d!2162449))

(declare-fun bs!1843208 () Bool)

(declare-fun b!6904029 () Bool)

(assert (= bs!1843208 (and b!6904029 b!6903708)))

(declare-fun lambda!392087 () Int)

(assert (=> bs!1843208 (not (= lambda!392087 lambda!392059))))

(declare-fun bs!1843209 () Bool)

(assert (= bs!1843209 (and b!6904029 b!6903919)))

(assert (=> bs!1843209 (not (= lambda!392087 lambda!392076))))

(declare-fun bs!1843210 () Bool)

(assert (= bs!1843210 (and b!6904029 d!2162449)))

(assert (=> bs!1843210 (not (= lambda!392087 lambda!392086))))

(declare-fun bs!1843211 () Bool)

(assert (= bs!1843211 (and b!6904029 b!6903923)))

(assert (=> bs!1843211 (= (and (= (_1!37040 lt!2467030) s!14361) (= (reg!17199 lt!2467026) (reg!17199 lt!2467032)) (= lt!2467026 lt!2467032)) (= lambda!392087 lambda!392075))))

(declare-fun bs!1843212 () Bool)

(assert (= bs!1843212 (and b!6904029 b!6903894)))

(assert (=> bs!1843212 (not (= lambda!392087 lambda!392074))))

(assert (=> bs!1843208 (not (= lambda!392087 lambda!392060))))

(declare-fun bs!1843213 () Bool)

(assert (= bs!1843213 (and b!6904029 b!6903898)))

(assert (=> bs!1843213 (= (and (= (_1!37040 lt!2467030) s!14361) (= (reg!17199 lt!2467026) (reg!17199 lt!2467033)) (= lt!2467026 lt!2467033)) (= lambda!392087 lambda!392073))))

(assert (=> bs!1843210 (not (= lambda!392087 lambda!392085))))

(assert (=> b!6904029 true))

(assert (=> b!6904029 true))

(declare-fun bs!1843214 () Bool)

(declare-fun b!6904025 () Bool)

(assert (= bs!1843214 (and b!6904025 b!6903708)))

(declare-fun lambda!392088 () Int)

(assert (=> bs!1843214 (not (= lambda!392088 lambda!392059))))

(declare-fun bs!1843215 () Bool)

(assert (= bs!1843215 (and b!6904025 b!6903919)))

(assert (=> bs!1843215 (= (and (= (_1!37040 lt!2467030) s!14361) (= (regOne!34252 lt!2467026) (regOne!34252 lt!2467032)) (= (regTwo!34252 lt!2467026) (regTwo!34252 lt!2467032))) (= lambda!392088 lambda!392076))))

(declare-fun bs!1843216 () Bool)

(assert (= bs!1843216 (and b!6904025 d!2162449)))

(assert (=> bs!1843216 (= (and (= (_1!37040 lt!2467030) s!14361) (= (regOne!34252 lt!2467026) lt!2467026) (= (regTwo!34252 lt!2467026) r3!135)) (= lambda!392088 lambda!392086))))

(declare-fun bs!1843217 () Bool)

(assert (= bs!1843217 (and b!6904025 b!6903923)))

(assert (=> bs!1843217 (not (= lambda!392088 lambda!392075))))

(declare-fun bs!1843218 () Bool)

(assert (= bs!1843218 (and b!6904025 b!6903894)))

(assert (=> bs!1843218 (= (and (= (_1!37040 lt!2467030) s!14361) (= (regOne!34252 lt!2467026) (regOne!34252 lt!2467033)) (= (regTwo!34252 lt!2467026) (regTwo!34252 lt!2467033))) (= lambda!392088 lambda!392074))))

(declare-fun bs!1843219 () Bool)

(assert (= bs!1843219 (and b!6904025 b!6904029)))

(assert (=> bs!1843219 (not (= lambda!392088 lambda!392087))))

(assert (=> bs!1843214 (= (and (= (_1!37040 lt!2467030) s!14361) (= (regOne!34252 lt!2467026) lt!2467026) (= (regTwo!34252 lt!2467026) r3!135)) (= lambda!392088 lambda!392060))))

(declare-fun bs!1843220 () Bool)

(assert (= bs!1843220 (and b!6904025 b!6903898)))

(assert (=> bs!1843220 (not (= lambda!392088 lambda!392073))))

(assert (=> bs!1843216 (not (= lambda!392088 lambda!392085))))

(assert (=> b!6904025 true))

(assert (=> b!6904025 true))

(declare-fun b!6904019 () Bool)

(declare-fun e!4157465 () Bool)

(assert (=> b!6904019 (= e!4157465 (= (_1!37040 lt!2467030) (Cons!66503 (c!1282634 lt!2467026) Nil!66503)))))

(declare-fun b!6904020 () Bool)

(declare-fun res!2815399 () Bool)

(declare-fun e!4157466 () Bool)

(assert (=> b!6904020 (=> res!2815399 e!4157466)))

(declare-fun call!627800 () Bool)

(assert (=> b!6904020 (= res!2815399 call!627800)))

(declare-fun e!4157462 () Bool)

(assert (=> b!6904020 (= e!4157462 e!4157466)))

(declare-fun b!6904021 () Bool)

(declare-fun e!4157463 () Bool)

(assert (=> b!6904021 (= e!4157463 (matchRSpec!3933 (regTwo!34253 lt!2467026) (_1!37040 lt!2467030)))))

(declare-fun b!6904022 () Bool)

(declare-fun c!1282690 () Bool)

(assert (=> b!6904022 (= c!1282690 (is-Union!16870 lt!2467026))))

(declare-fun e!4157464 () Bool)

(assert (=> b!6904022 (= e!4157465 e!4157464)))

(declare-fun b!6904023 () Bool)

(declare-fun e!4157461 () Bool)

(declare-fun e!4157460 () Bool)

(assert (=> b!6904023 (= e!4157461 e!4157460)))

(declare-fun res!2815398 () Bool)

(assert (=> b!6904023 (= res!2815398 (not (is-EmptyLang!16870 lt!2467026)))))

(assert (=> b!6904023 (=> (not res!2815398) (not e!4157460))))

(declare-fun bm!627795 () Bool)

(assert (=> bm!627795 (= call!627800 (isEmpty!38736 (_1!37040 lt!2467030)))))

(declare-fun b!6904024 () Bool)

(declare-fun c!1282691 () Bool)

(assert (=> b!6904024 (= c!1282691 (is-ElementMatch!16870 lt!2467026))))

(assert (=> b!6904024 (= e!4157460 e!4157465)))

(declare-fun d!2162451 () Bool)

(declare-fun c!1282693 () Bool)

(assert (=> d!2162451 (= c!1282693 (is-EmptyExpr!16870 lt!2467026))))

(assert (=> d!2162451 (= (matchRSpec!3933 lt!2467026 (_1!37040 lt!2467030)) e!4157461)))

(declare-fun call!627801 () Bool)

(assert (=> b!6904025 (= e!4157462 call!627801)))

(declare-fun b!6904026 () Bool)

(assert (=> b!6904026 (= e!4157464 e!4157462)))

(declare-fun c!1282692 () Bool)

(assert (=> b!6904026 (= c!1282692 (is-Star!16870 lt!2467026))))

(declare-fun b!6904027 () Bool)

(assert (=> b!6904027 (= e!4157464 e!4157463)))

(declare-fun res!2815400 () Bool)

(assert (=> b!6904027 (= res!2815400 (matchRSpec!3933 (regOne!34253 lt!2467026) (_1!37040 lt!2467030)))))

(assert (=> b!6904027 (=> res!2815400 e!4157463)))

(declare-fun bm!627796 () Bool)

(assert (=> bm!627796 (= call!627801 (Exists!3878 (ite c!1282692 lambda!392087 lambda!392088)))))

(declare-fun b!6904028 () Bool)

(assert (=> b!6904028 (= e!4157461 call!627800)))

(assert (=> b!6904029 (= e!4157466 call!627801)))

(assert (= (and d!2162451 c!1282693) b!6904028))

(assert (= (and d!2162451 (not c!1282693)) b!6904023))

(assert (= (and b!6904023 res!2815398) b!6904024))

(assert (= (and b!6904024 c!1282691) b!6904019))

(assert (= (and b!6904024 (not c!1282691)) b!6904022))

(assert (= (and b!6904022 c!1282690) b!6904027))

(assert (= (and b!6904022 (not c!1282690)) b!6904026))

(assert (= (and b!6904027 (not res!2815400)) b!6904021))

(assert (= (and b!6904026 c!1282692) b!6904020))

(assert (= (and b!6904026 (not c!1282692)) b!6904025))

(assert (= (and b!6904020 (not res!2815399)) b!6904029))

(assert (= (or b!6904029 b!6904025) bm!627796))

(assert (= (or b!6904028 b!6904020) bm!627795))

(declare-fun m!7621352 () Bool)

(assert (=> b!6904021 m!7621352))

(declare-fun m!7621354 () Bool)

(assert (=> bm!627795 m!7621354))

(declare-fun m!7621356 () Bool)

(assert (=> b!6904027 m!7621356))

(declare-fun m!7621358 () Bool)

(assert (=> bm!627796 m!7621358))

(assert (=> b!6903708 d!2162451))

(declare-fun d!2162453 () Bool)

(declare-fun choose!51406 (Int) Bool)

(assert (=> d!2162453 (= (Exists!3878 lambda!392060) (choose!51406 lambda!392060))))

(declare-fun bs!1843221 () Bool)

(assert (= bs!1843221 d!2162453))

(declare-fun m!7621360 () Bool)

(assert (=> bs!1843221 m!7621360))

(assert (=> b!6903708 d!2162453))

(declare-fun d!2162455 () Bool)

(declare-fun isEmpty!38738 (Option!16649) Bool)

(assert (=> d!2162455 (= (isDefined!13352 lt!2467034) (not (isEmpty!38738 lt!2467034)))))

(declare-fun bs!1843222 () Bool)

(assert (= bs!1843222 d!2162455))

(declare-fun m!7621362 () Bool)

(assert (=> bs!1843222 m!7621362))

(assert (=> b!6903708 d!2162455))

(declare-fun b!6904030 () Bool)

(declare-fun res!2815406 () Bool)

(declare-fun e!4157469 () Bool)

(assert (=> b!6904030 (=> res!2815406 e!4157469)))

(assert (=> b!6904030 (= res!2815406 (not (is-ElementMatch!16870 lt!2467026)))))

(declare-fun e!4157468 () Bool)

(assert (=> b!6904030 (= e!4157468 e!4157469)))

(declare-fun d!2162457 () Bool)

(declare-fun e!4157470 () Bool)

(assert (=> d!2162457 e!4157470))

(declare-fun c!1282696 () Bool)

(assert (=> d!2162457 (= c!1282696 (is-EmptyExpr!16870 lt!2467026))))

(declare-fun lt!2467102 () Bool)

(declare-fun e!4157472 () Bool)

(assert (=> d!2162457 (= lt!2467102 e!4157472)))

(declare-fun c!1282695 () Bool)

(assert (=> d!2162457 (= c!1282695 (isEmpty!38736 (_1!37040 lt!2467030)))))

(assert (=> d!2162457 (validRegex!8578 lt!2467026)))

(assert (=> d!2162457 (= (matchR!9015 lt!2467026 (_1!37040 lt!2467030)) lt!2467102)))

(declare-fun b!6904031 () Bool)

(declare-fun e!4157473 () Bool)

(assert (=> b!6904031 (= e!4157469 e!4157473)))

(declare-fun res!2815402 () Bool)

(assert (=> b!6904031 (=> (not res!2815402) (not e!4157473))))

(assert (=> b!6904031 (= res!2815402 (not lt!2467102))))

(declare-fun b!6904032 () Bool)

(declare-fun res!2815408 () Bool)

(declare-fun e!4157467 () Bool)

(assert (=> b!6904032 (=> (not res!2815408) (not e!4157467))))

(assert (=> b!6904032 (= res!2815408 (isEmpty!38736 (tail!12895 (_1!37040 lt!2467030))))))

(declare-fun b!6904033 () Bool)

(declare-fun e!4157471 () Bool)

(assert (=> b!6904033 (= e!4157473 e!4157471)))

(declare-fun res!2815401 () Bool)

(assert (=> b!6904033 (=> res!2815401 e!4157471)))

(declare-fun call!627804 () Bool)

(assert (=> b!6904033 (= res!2815401 call!627804)))

(declare-fun b!6904034 () Bool)

(assert (=> b!6904034 (= e!4157470 e!4157468)))

(declare-fun c!1282694 () Bool)

(assert (=> b!6904034 (= c!1282694 (is-EmptyLang!16870 lt!2467026))))

(declare-fun b!6904035 () Bool)

(declare-fun res!2815407 () Bool)

(assert (=> b!6904035 (=> res!2815407 e!4157471)))

(assert (=> b!6904035 (= res!2815407 (not (isEmpty!38736 (tail!12895 (_1!37040 lt!2467030)))))))

(declare-fun b!6904036 () Bool)

(assert (=> b!6904036 (= e!4157467 (= (head!13843 (_1!37040 lt!2467030)) (c!1282634 lt!2467026)))))

(declare-fun b!6904037 () Bool)

(assert (=> b!6904037 (= e!4157472 (matchR!9015 (derivativeStep!5390 lt!2467026 (head!13843 (_1!37040 lt!2467030))) (tail!12895 (_1!37040 lt!2467030))))))

(declare-fun b!6904038 () Bool)

(declare-fun res!2815404 () Bool)

(assert (=> b!6904038 (=> res!2815404 e!4157469)))

(assert (=> b!6904038 (= res!2815404 e!4157467)))

(declare-fun res!2815403 () Bool)

(assert (=> b!6904038 (=> (not res!2815403) (not e!4157467))))

(assert (=> b!6904038 (= res!2815403 lt!2467102)))

(declare-fun b!6904039 () Bool)

(assert (=> b!6904039 (= e!4157471 (not (= (head!13843 (_1!37040 lt!2467030)) (c!1282634 lt!2467026))))))

(declare-fun bm!627799 () Bool)

(assert (=> bm!627799 (= call!627804 (isEmpty!38736 (_1!37040 lt!2467030)))))

(declare-fun b!6904040 () Bool)

(assert (=> b!6904040 (= e!4157468 (not lt!2467102))))

(declare-fun b!6904041 () Bool)

(assert (=> b!6904041 (= e!4157470 (= lt!2467102 call!627804))))

(declare-fun b!6904042 () Bool)

(declare-fun res!2815405 () Bool)

(assert (=> b!6904042 (=> (not res!2815405) (not e!4157467))))

(assert (=> b!6904042 (= res!2815405 (not call!627804))))

(declare-fun b!6904043 () Bool)

(assert (=> b!6904043 (= e!4157472 (nullable!6711 lt!2467026))))

(assert (= (and d!2162457 c!1282695) b!6904043))

(assert (= (and d!2162457 (not c!1282695)) b!6904037))

(assert (= (and d!2162457 c!1282696) b!6904041))

(assert (= (and d!2162457 (not c!1282696)) b!6904034))

(assert (= (and b!6904034 c!1282694) b!6904040))

(assert (= (and b!6904034 (not c!1282694)) b!6904030))

(assert (= (and b!6904030 (not res!2815406)) b!6904038))

(assert (= (and b!6904038 res!2815403) b!6904042))

(assert (= (and b!6904042 res!2815405) b!6904032))

(assert (= (and b!6904032 res!2815408) b!6904036))

(assert (= (and b!6904038 (not res!2815404)) b!6904031))

(assert (= (and b!6904031 res!2815402) b!6904033))

(assert (= (and b!6904033 (not res!2815401)) b!6904035))

(assert (= (and b!6904035 (not res!2815407)) b!6904039))

(assert (= (or b!6904041 b!6904033 b!6904042) bm!627799))

(declare-fun m!7621364 () Bool)

(assert (=> b!6904043 m!7621364))

(declare-fun m!7621366 () Bool)

(assert (=> b!6904035 m!7621366))

(assert (=> b!6904035 m!7621366))

(declare-fun m!7621368 () Bool)

(assert (=> b!6904035 m!7621368))

(assert (=> b!6904032 m!7621366))

(assert (=> b!6904032 m!7621366))

(assert (=> b!6904032 m!7621368))

(declare-fun m!7621370 () Bool)

(assert (=> b!6904036 m!7621370))

(assert (=> bm!627799 m!7621354))

(assert (=> b!6904039 m!7621370))

(assert (=> b!6904037 m!7621370))

(assert (=> b!6904037 m!7621370))

(declare-fun m!7621372 () Bool)

(assert (=> b!6904037 m!7621372))

(assert (=> b!6904037 m!7621366))

(assert (=> b!6904037 m!7621372))

(assert (=> b!6904037 m!7621366))

(declare-fun m!7621374 () Bool)

(assert (=> b!6904037 m!7621374))

(assert (=> d!2162457 m!7621354))

(assert (=> d!2162457 m!7621314))

(assert (=> b!6903708 d!2162457))

(declare-fun bs!1843226 () Bool)

(declare-fun d!2162459 () Bool)

(assert (= bs!1843226 (and d!2162459 b!6903708)))

(declare-fun lambda!392093 () Int)

(assert (=> bs!1843226 (= lambda!392093 lambda!392059)))

(declare-fun bs!1843227 () Bool)

(assert (= bs!1843227 (and d!2162459 b!6903919)))

(assert (=> bs!1843227 (not (= lambda!392093 lambda!392076))))

(declare-fun bs!1843228 () Bool)

(assert (= bs!1843228 (and d!2162459 b!6904025)))

(assert (=> bs!1843228 (not (= lambda!392093 lambda!392088))))

(declare-fun bs!1843229 () Bool)

(assert (= bs!1843229 (and d!2162459 d!2162449)))

(assert (=> bs!1843229 (not (= lambda!392093 lambda!392086))))

(declare-fun bs!1843230 () Bool)

(assert (= bs!1843230 (and d!2162459 b!6903923)))

(assert (=> bs!1843230 (not (= lambda!392093 lambda!392075))))

(declare-fun bs!1843231 () Bool)

(assert (= bs!1843231 (and d!2162459 b!6903894)))

(assert (=> bs!1843231 (not (= lambda!392093 lambda!392074))))

(declare-fun bs!1843232 () Bool)

(assert (= bs!1843232 (and d!2162459 b!6904029)))

(assert (=> bs!1843232 (not (= lambda!392093 lambda!392087))))

(assert (=> bs!1843226 (not (= lambda!392093 lambda!392060))))

(declare-fun bs!1843233 () Bool)

(assert (= bs!1843233 (and d!2162459 b!6903898)))

(assert (=> bs!1843233 (not (= lambda!392093 lambda!392073))))

(assert (=> bs!1843229 (= lambda!392093 lambda!392085)))

(assert (=> d!2162459 true))

(assert (=> d!2162459 true))

(assert (=> d!2162459 true))

(assert (=> d!2162459 (= (isDefined!13352 (findConcatSeparation!3063 lt!2467026 r3!135 Nil!66503 s!14361 s!14361)) (Exists!3878 lambda!392093))))

(declare-fun lt!2467105 () Unit!160476)

(declare-fun choose!51409 (Regex!16870 Regex!16870 List!66627) Unit!160476)

(assert (=> d!2162459 (= lt!2467105 (choose!51409 lt!2467026 r3!135 s!14361))))

(assert (=> d!2162459 (validRegex!8578 lt!2467026)))

(assert (=> d!2162459 (= (lemmaFindConcatSeparationEquivalentToExists!2825 lt!2467026 r3!135 s!14361) lt!2467105)))

(declare-fun bs!1843234 () Bool)

(assert (= bs!1843234 d!2162459))

(assert (=> bs!1843234 m!7621314))

(declare-fun m!7621384 () Bool)

(assert (=> bs!1843234 m!7621384))

(declare-fun m!7621386 () Bool)

(assert (=> bs!1843234 m!7621386))

(assert (=> bs!1843234 m!7621202))

(assert (=> bs!1843234 m!7621202))

(declare-fun m!7621388 () Bool)

(assert (=> bs!1843234 m!7621388))

(assert (=> b!6903708 d!2162459))

(declare-fun d!2162463 () Bool)

(assert (=> d!2162463 (= (Exists!3878 lambda!392059) (choose!51406 lambda!392059))))

(declare-fun bs!1843235 () Bool)

(assert (= bs!1843235 d!2162463))

(declare-fun m!7621390 () Bool)

(assert (=> bs!1843235 m!7621390))

(assert (=> b!6903708 d!2162463))

(declare-fun b!6904077 () Bool)

(declare-fun e!4157501 () Bool)

(declare-fun call!627814 () Bool)

(assert (=> b!6904077 (= e!4157501 call!627814)))

(declare-fun b!6904078 () Bool)

(declare-fun e!4157503 () Bool)

(declare-fun e!4157497 () Bool)

(assert (=> b!6904078 (= e!4157503 e!4157497)))

(declare-fun res!2815428 () Bool)

(assert (=> b!6904078 (= res!2815428 (not (nullable!6711 (reg!17199 r3!135))))))

(assert (=> b!6904078 (=> (not res!2815428) (not e!4157497))))

(declare-fun b!6904079 () Bool)

(declare-fun res!2815429 () Bool)

(declare-fun e!4157498 () Bool)

(assert (=> b!6904079 (=> res!2815429 e!4157498)))

(assert (=> b!6904079 (= res!2815429 (not (is-Concat!25715 r3!135)))))

(declare-fun e!4157502 () Bool)

(assert (=> b!6904079 (= e!4157502 e!4157498)))

(declare-fun b!6904080 () Bool)

(declare-fun e!4157499 () Bool)

(assert (=> b!6904080 (= e!4157499 e!4157503)))

(declare-fun c!1282705 () Bool)

(assert (=> b!6904080 (= c!1282705 (is-Star!16870 r3!135))))

(declare-fun bm!627808 () Bool)

(declare-fun call!627813 () Bool)

(declare-fun call!627815 () Bool)

(assert (=> bm!627808 (= call!627813 call!627815)))

(declare-fun b!6904082 () Bool)

(assert (=> b!6904082 (= e!4157497 call!627815)))

(declare-fun b!6904083 () Bool)

(declare-fun res!2815430 () Bool)

(declare-fun e!4157500 () Bool)

(assert (=> b!6904083 (=> (not res!2815430) (not e!4157500))))

(assert (=> b!6904083 (= res!2815430 call!627814)))

(assert (=> b!6904083 (= e!4157502 e!4157500)))

(declare-fun c!1282706 () Bool)

(declare-fun bm!627809 () Bool)

(assert (=> bm!627809 (= call!627815 (validRegex!8578 (ite c!1282705 (reg!17199 r3!135) (ite c!1282706 (regTwo!34253 r3!135) (regOne!34252 r3!135)))))))

(declare-fun b!6904084 () Bool)

(assert (=> b!6904084 (= e!4157498 e!4157501)))

(declare-fun res!2815427 () Bool)

(assert (=> b!6904084 (=> (not res!2815427) (not e!4157501))))

(assert (=> b!6904084 (= res!2815427 call!627813)))

(declare-fun d!2162465 () Bool)

(declare-fun res!2815426 () Bool)

(assert (=> d!2162465 (=> res!2815426 e!4157499)))

(assert (=> d!2162465 (= res!2815426 (is-ElementMatch!16870 r3!135))))

(assert (=> d!2162465 (= (validRegex!8578 r3!135) e!4157499)))

(declare-fun b!6904081 () Bool)

(assert (=> b!6904081 (= e!4157503 e!4157502)))

(assert (=> b!6904081 (= c!1282706 (is-Union!16870 r3!135))))

(declare-fun b!6904085 () Bool)

(assert (=> b!6904085 (= e!4157500 call!627813)))

(declare-fun bm!627810 () Bool)

(assert (=> bm!627810 (= call!627814 (validRegex!8578 (ite c!1282706 (regOne!34253 r3!135) (regTwo!34252 r3!135))))))

(assert (= (and d!2162465 (not res!2815426)) b!6904080))

(assert (= (and b!6904080 c!1282705) b!6904078))

(assert (= (and b!6904080 (not c!1282705)) b!6904081))

(assert (= (and b!6904078 res!2815428) b!6904082))

(assert (= (and b!6904081 c!1282706) b!6904083))

(assert (= (and b!6904081 (not c!1282706)) b!6904079))

(assert (= (and b!6904083 res!2815430) b!6904085))

(assert (= (and b!6904079 (not res!2815429)) b!6904084))

(assert (= (and b!6904084 res!2815427) b!6904077))

(assert (= (or b!6904083 b!6904077) bm!627810))

(assert (= (or b!6904085 b!6904084) bm!627808))

(assert (= (or b!6904082 bm!627808) bm!627809))

(declare-fun m!7621392 () Bool)

(assert (=> b!6904078 m!7621392))

(declare-fun m!7621394 () Bool)

(assert (=> bm!627809 m!7621394))

(declare-fun m!7621396 () Bool)

(assert (=> bm!627810 m!7621396))

(assert (=> b!6903694 d!2162465))

(declare-fun b!6904086 () Bool)

(declare-fun e!4157508 () Bool)

(declare-fun call!627817 () Bool)

(assert (=> b!6904086 (= e!4157508 call!627817)))

(declare-fun b!6904087 () Bool)

(declare-fun e!4157510 () Bool)

(declare-fun e!4157504 () Bool)

(assert (=> b!6904087 (= e!4157510 e!4157504)))

(declare-fun res!2815433 () Bool)

(assert (=> b!6904087 (= res!2815433 (not (nullable!6711 (reg!17199 r1!6342))))))

(assert (=> b!6904087 (=> (not res!2815433) (not e!4157504))))

(declare-fun b!6904088 () Bool)

(declare-fun res!2815434 () Bool)

(declare-fun e!4157505 () Bool)

(assert (=> b!6904088 (=> res!2815434 e!4157505)))

(assert (=> b!6904088 (= res!2815434 (not (is-Concat!25715 r1!6342)))))

(declare-fun e!4157509 () Bool)

(assert (=> b!6904088 (= e!4157509 e!4157505)))

(declare-fun b!6904089 () Bool)

(declare-fun e!4157506 () Bool)

(assert (=> b!6904089 (= e!4157506 e!4157510)))

(declare-fun c!1282707 () Bool)

(assert (=> b!6904089 (= c!1282707 (is-Star!16870 r1!6342))))

(declare-fun bm!627811 () Bool)

(declare-fun call!627816 () Bool)

(declare-fun call!627818 () Bool)

(assert (=> bm!627811 (= call!627816 call!627818)))

(declare-fun b!6904091 () Bool)

(assert (=> b!6904091 (= e!4157504 call!627818)))

(declare-fun b!6904092 () Bool)

(declare-fun res!2815435 () Bool)

(declare-fun e!4157507 () Bool)

(assert (=> b!6904092 (=> (not res!2815435) (not e!4157507))))

(assert (=> b!6904092 (= res!2815435 call!627817)))

(assert (=> b!6904092 (= e!4157509 e!4157507)))

(declare-fun c!1282708 () Bool)

(declare-fun bm!627812 () Bool)

(assert (=> bm!627812 (= call!627818 (validRegex!8578 (ite c!1282707 (reg!17199 r1!6342) (ite c!1282708 (regTwo!34253 r1!6342) (regOne!34252 r1!6342)))))))

(declare-fun b!6904093 () Bool)

(assert (=> b!6904093 (= e!4157505 e!4157508)))

(declare-fun res!2815432 () Bool)

(assert (=> b!6904093 (=> (not res!2815432) (not e!4157508))))

(assert (=> b!6904093 (= res!2815432 call!627816)))

(declare-fun d!2162467 () Bool)

(declare-fun res!2815431 () Bool)

(assert (=> d!2162467 (=> res!2815431 e!4157506)))

(assert (=> d!2162467 (= res!2815431 (is-ElementMatch!16870 r1!6342))))

(assert (=> d!2162467 (= (validRegex!8578 r1!6342) e!4157506)))

(declare-fun b!6904090 () Bool)

(assert (=> b!6904090 (= e!4157510 e!4157509)))

(assert (=> b!6904090 (= c!1282708 (is-Union!16870 r1!6342))))

(declare-fun b!6904094 () Bool)

(assert (=> b!6904094 (= e!4157507 call!627816)))

(declare-fun bm!627813 () Bool)

(assert (=> bm!627813 (= call!627817 (validRegex!8578 (ite c!1282708 (regOne!34253 r1!6342) (regTwo!34252 r1!6342))))))

(assert (= (and d!2162467 (not res!2815431)) b!6904089))

(assert (= (and b!6904089 c!1282707) b!6904087))

(assert (= (and b!6904089 (not c!1282707)) b!6904090))

(assert (= (and b!6904087 res!2815433) b!6904091))

(assert (= (and b!6904090 c!1282708) b!6904092))

(assert (= (and b!6904090 (not c!1282708)) b!6904088))

(assert (= (and b!6904092 res!2815435) b!6904094))

(assert (= (and b!6904088 (not res!2815434)) b!6904093))

(assert (= (and b!6904093 res!2815432) b!6904086))

(assert (= (or b!6904092 b!6904086) bm!627813))

(assert (= (or b!6904094 b!6904093) bm!627811))

(assert (= (or b!6904091 bm!627811) bm!627812))

(declare-fun m!7621398 () Bool)

(assert (=> b!6904087 m!7621398))

(declare-fun m!7621400 () Bool)

(assert (=> bm!627812 m!7621400))

(declare-fun m!7621402 () Bool)

(assert (=> bm!627813 m!7621402))

(assert (=> start!664836 d!2162467))

(declare-fun b!6904095 () Bool)

(declare-fun e!4157515 () Bool)

(declare-fun call!627820 () Bool)

(assert (=> b!6904095 (= e!4157515 call!627820)))

(declare-fun b!6904096 () Bool)

(declare-fun e!4157517 () Bool)

(declare-fun e!4157511 () Bool)

(assert (=> b!6904096 (= e!4157517 e!4157511)))

(declare-fun res!2815438 () Bool)

(assert (=> b!6904096 (= res!2815438 (not (nullable!6711 (reg!17199 r2!6280))))))

(assert (=> b!6904096 (=> (not res!2815438) (not e!4157511))))

(declare-fun b!6904097 () Bool)

(declare-fun res!2815439 () Bool)

(declare-fun e!4157512 () Bool)

(assert (=> b!6904097 (=> res!2815439 e!4157512)))

(assert (=> b!6904097 (= res!2815439 (not (is-Concat!25715 r2!6280)))))

(declare-fun e!4157516 () Bool)

(assert (=> b!6904097 (= e!4157516 e!4157512)))

(declare-fun b!6904098 () Bool)

(declare-fun e!4157513 () Bool)

(assert (=> b!6904098 (= e!4157513 e!4157517)))

(declare-fun c!1282709 () Bool)

(assert (=> b!6904098 (= c!1282709 (is-Star!16870 r2!6280))))

(declare-fun bm!627814 () Bool)

(declare-fun call!627819 () Bool)

(declare-fun call!627821 () Bool)

(assert (=> bm!627814 (= call!627819 call!627821)))

(declare-fun b!6904100 () Bool)

(assert (=> b!6904100 (= e!4157511 call!627821)))

(declare-fun b!6904101 () Bool)

(declare-fun res!2815440 () Bool)

(declare-fun e!4157514 () Bool)

(assert (=> b!6904101 (=> (not res!2815440) (not e!4157514))))

(assert (=> b!6904101 (= res!2815440 call!627820)))

(assert (=> b!6904101 (= e!4157516 e!4157514)))

(declare-fun c!1282710 () Bool)

(declare-fun bm!627815 () Bool)

(assert (=> bm!627815 (= call!627821 (validRegex!8578 (ite c!1282709 (reg!17199 r2!6280) (ite c!1282710 (regTwo!34253 r2!6280) (regOne!34252 r2!6280)))))))

(declare-fun b!6904102 () Bool)

(assert (=> b!6904102 (= e!4157512 e!4157515)))

(declare-fun res!2815437 () Bool)

(assert (=> b!6904102 (=> (not res!2815437) (not e!4157515))))

(assert (=> b!6904102 (= res!2815437 call!627819)))

(declare-fun d!2162469 () Bool)

(declare-fun res!2815436 () Bool)

(assert (=> d!2162469 (=> res!2815436 e!4157513)))

(assert (=> d!2162469 (= res!2815436 (is-ElementMatch!16870 r2!6280))))

(assert (=> d!2162469 (= (validRegex!8578 r2!6280) e!4157513)))

(declare-fun b!6904099 () Bool)

(assert (=> b!6904099 (= e!4157517 e!4157516)))

(assert (=> b!6904099 (= c!1282710 (is-Union!16870 r2!6280))))

(declare-fun b!6904103 () Bool)

(assert (=> b!6904103 (= e!4157514 call!627819)))

(declare-fun bm!627816 () Bool)

(assert (=> bm!627816 (= call!627820 (validRegex!8578 (ite c!1282710 (regOne!34253 r2!6280) (regTwo!34252 r2!6280))))))

(assert (= (and d!2162469 (not res!2815436)) b!6904098))

(assert (= (and b!6904098 c!1282709) b!6904096))

(assert (= (and b!6904098 (not c!1282709)) b!6904099))

(assert (= (and b!6904096 res!2815438) b!6904100))

(assert (= (and b!6904099 c!1282710) b!6904101))

(assert (= (and b!6904099 (not c!1282710)) b!6904097))

(assert (= (and b!6904101 res!2815440) b!6904103))

(assert (= (and b!6904097 (not res!2815439)) b!6904102))

(assert (= (and b!6904102 res!2815437) b!6904095))

(assert (= (or b!6904101 b!6904095) bm!627816))

(assert (= (or b!6904103 b!6904102) bm!627814))

(assert (= (or b!6904100 bm!627814) bm!627815))

(declare-fun m!7621404 () Bool)

(assert (=> b!6904096 m!7621404))

(declare-fun m!7621406 () Bool)

(assert (=> bm!627815 m!7621406))

(declare-fun m!7621408 () Bool)

(assert (=> bm!627816 m!7621408))

(assert (=> b!6903705 d!2162469))

(declare-fun b!6904119 () Bool)

(declare-fun e!4157522 () Bool)

(declare-fun tp!1900869 () Bool)

(declare-fun tp!1900870 () Bool)

(assert (=> b!6904119 (= e!4157522 (and tp!1900869 tp!1900870))))

(declare-fun b!6904120 () Bool)

(declare-fun tp!1900866 () Bool)

(assert (=> b!6904120 (= e!4157522 tp!1900866)))

(declare-fun b!6904121 () Bool)

(declare-fun tp!1900867 () Bool)

(declare-fun tp!1900868 () Bool)

(assert (=> b!6904121 (= e!4157522 (and tp!1900867 tp!1900868))))

(declare-fun b!6904118 () Bool)

(assert (=> b!6904118 (= e!4157522 tp_is_empty!42965)))

(assert (=> b!6903707 (= tp!1900804 e!4157522)))

(assert (= (and b!6903707 (is-ElementMatch!16870 (reg!17199 r3!135))) b!6904118))

(assert (= (and b!6903707 (is-Concat!25715 (reg!17199 r3!135))) b!6904119))

(assert (= (and b!6903707 (is-Star!16870 (reg!17199 r3!135))) b!6904120))

(assert (= (and b!6903707 (is-Union!16870 (reg!17199 r3!135))) b!6904121))

(declare-fun b!6904123 () Bool)

(declare-fun e!4157523 () Bool)

(declare-fun tp!1900874 () Bool)

(declare-fun tp!1900875 () Bool)

(assert (=> b!6904123 (= e!4157523 (and tp!1900874 tp!1900875))))

(declare-fun b!6904124 () Bool)

(declare-fun tp!1900871 () Bool)

(assert (=> b!6904124 (= e!4157523 tp!1900871)))

(declare-fun b!6904125 () Bool)

(declare-fun tp!1900872 () Bool)

(declare-fun tp!1900873 () Bool)

(assert (=> b!6904125 (= e!4157523 (and tp!1900872 tp!1900873))))

(declare-fun b!6904122 () Bool)

(assert (=> b!6904122 (= e!4157523 tp_is_empty!42965)))

(assert (=> b!6903701 (= tp!1900797 e!4157523)))

(assert (= (and b!6903701 (is-ElementMatch!16870 (regOne!34253 r3!135))) b!6904122))

(assert (= (and b!6903701 (is-Concat!25715 (regOne!34253 r3!135))) b!6904123))

(assert (= (and b!6903701 (is-Star!16870 (regOne!34253 r3!135))) b!6904124))

(assert (= (and b!6903701 (is-Union!16870 (regOne!34253 r3!135))) b!6904125))

(declare-fun b!6904127 () Bool)

(declare-fun e!4157524 () Bool)

(declare-fun tp!1900879 () Bool)

(declare-fun tp!1900880 () Bool)

(assert (=> b!6904127 (= e!4157524 (and tp!1900879 tp!1900880))))

(declare-fun b!6904128 () Bool)

(declare-fun tp!1900876 () Bool)

(assert (=> b!6904128 (= e!4157524 tp!1900876)))

(declare-fun b!6904129 () Bool)

(declare-fun tp!1900877 () Bool)

(declare-fun tp!1900878 () Bool)

(assert (=> b!6904129 (= e!4157524 (and tp!1900877 tp!1900878))))

(declare-fun b!6904126 () Bool)

(assert (=> b!6904126 (= e!4157524 tp_is_empty!42965)))

(assert (=> b!6903701 (= tp!1900800 e!4157524)))

(assert (= (and b!6903701 (is-ElementMatch!16870 (regTwo!34253 r3!135))) b!6904126))

(assert (= (and b!6903701 (is-Concat!25715 (regTwo!34253 r3!135))) b!6904127))

(assert (= (and b!6903701 (is-Star!16870 (regTwo!34253 r3!135))) b!6904128))

(assert (= (and b!6903701 (is-Union!16870 (regTwo!34253 r3!135))) b!6904129))

(declare-fun b!6904131 () Bool)

(declare-fun e!4157525 () Bool)

(declare-fun tp!1900884 () Bool)

(declare-fun tp!1900885 () Bool)

(assert (=> b!6904131 (= e!4157525 (and tp!1900884 tp!1900885))))

(declare-fun b!6904132 () Bool)

(declare-fun tp!1900881 () Bool)

(assert (=> b!6904132 (= e!4157525 tp!1900881)))

(declare-fun b!6904133 () Bool)

(declare-fun tp!1900882 () Bool)

(declare-fun tp!1900883 () Bool)

(assert (=> b!6904133 (= e!4157525 (and tp!1900882 tp!1900883))))

(declare-fun b!6904130 () Bool)

(assert (=> b!6904130 (= e!4157525 tp_is_empty!42965)))

(assert (=> b!6903698 (= tp!1900802 e!4157525)))

(assert (= (and b!6903698 (is-ElementMatch!16870 (regOne!34252 r1!6342))) b!6904130))

(assert (= (and b!6903698 (is-Concat!25715 (regOne!34252 r1!6342))) b!6904131))

(assert (= (and b!6903698 (is-Star!16870 (regOne!34252 r1!6342))) b!6904132))

(assert (= (and b!6903698 (is-Union!16870 (regOne!34252 r1!6342))) b!6904133))

(declare-fun b!6904135 () Bool)

(declare-fun e!4157526 () Bool)

(declare-fun tp!1900889 () Bool)

(declare-fun tp!1900890 () Bool)

(assert (=> b!6904135 (= e!4157526 (and tp!1900889 tp!1900890))))

(declare-fun b!6904136 () Bool)

(declare-fun tp!1900886 () Bool)

(assert (=> b!6904136 (= e!4157526 tp!1900886)))

(declare-fun b!6904137 () Bool)

(declare-fun tp!1900887 () Bool)

(declare-fun tp!1900888 () Bool)

(assert (=> b!6904137 (= e!4157526 (and tp!1900887 tp!1900888))))

(declare-fun b!6904134 () Bool)

(assert (=> b!6904134 (= e!4157526 tp_is_empty!42965)))

(assert (=> b!6903698 (= tp!1900794 e!4157526)))

(assert (= (and b!6903698 (is-ElementMatch!16870 (regTwo!34252 r1!6342))) b!6904134))

(assert (= (and b!6903698 (is-Concat!25715 (regTwo!34252 r1!6342))) b!6904135))

(assert (= (and b!6903698 (is-Star!16870 (regTwo!34252 r1!6342))) b!6904136))

(assert (= (and b!6903698 (is-Union!16870 (regTwo!34252 r1!6342))) b!6904137))

(declare-fun b!6904139 () Bool)

(declare-fun e!4157527 () Bool)

(declare-fun tp!1900894 () Bool)

(declare-fun tp!1900895 () Bool)

(assert (=> b!6904139 (= e!4157527 (and tp!1900894 tp!1900895))))

(declare-fun b!6904140 () Bool)

(declare-fun tp!1900891 () Bool)

(assert (=> b!6904140 (= e!4157527 tp!1900891)))

(declare-fun b!6904141 () Bool)

(declare-fun tp!1900892 () Bool)

(declare-fun tp!1900893 () Bool)

(assert (=> b!6904141 (= e!4157527 (and tp!1900892 tp!1900893))))

(declare-fun b!6904138 () Bool)

(assert (=> b!6904138 (= e!4157527 tp_is_empty!42965)))

(assert (=> b!6903710 (= tp!1900799 e!4157527)))

(assert (= (and b!6903710 (is-ElementMatch!16870 (regOne!34252 r3!135))) b!6904138))

(assert (= (and b!6903710 (is-Concat!25715 (regOne!34252 r3!135))) b!6904139))

(assert (= (and b!6903710 (is-Star!16870 (regOne!34252 r3!135))) b!6904140))

(assert (= (and b!6903710 (is-Union!16870 (regOne!34252 r3!135))) b!6904141))

(declare-fun b!6904143 () Bool)

(declare-fun e!4157528 () Bool)

(declare-fun tp!1900899 () Bool)

(declare-fun tp!1900900 () Bool)

(assert (=> b!6904143 (= e!4157528 (and tp!1900899 tp!1900900))))

(declare-fun b!6904144 () Bool)

(declare-fun tp!1900896 () Bool)

(assert (=> b!6904144 (= e!4157528 tp!1900896)))

(declare-fun b!6904145 () Bool)

(declare-fun tp!1900897 () Bool)

(declare-fun tp!1900898 () Bool)

(assert (=> b!6904145 (= e!4157528 (and tp!1900897 tp!1900898))))

(declare-fun b!6904142 () Bool)

(assert (=> b!6904142 (= e!4157528 tp_is_empty!42965)))

(assert (=> b!6903710 (= tp!1900796 e!4157528)))

(assert (= (and b!6903710 (is-ElementMatch!16870 (regTwo!34252 r3!135))) b!6904142))

(assert (= (and b!6903710 (is-Concat!25715 (regTwo!34252 r3!135))) b!6904143))

(assert (= (and b!6903710 (is-Star!16870 (regTwo!34252 r3!135))) b!6904144))

(assert (= (and b!6903710 (is-Union!16870 (regTwo!34252 r3!135))) b!6904145))

(declare-fun b!6904147 () Bool)

(declare-fun e!4157529 () Bool)

(declare-fun tp!1900904 () Bool)

(declare-fun tp!1900905 () Bool)

(assert (=> b!6904147 (= e!4157529 (and tp!1900904 tp!1900905))))

(declare-fun b!6904148 () Bool)

(declare-fun tp!1900901 () Bool)

(assert (=> b!6904148 (= e!4157529 tp!1900901)))

(declare-fun b!6904149 () Bool)

(declare-fun tp!1900902 () Bool)

(declare-fun tp!1900903 () Bool)

(assert (=> b!6904149 (= e!4157529 (and tp!1900902 tp!1900903))))

(declare-fun b!6904146 () Bool)

(assert (=> b!6904146 (= e!4157529 tp_is_empty!42965)))

(assert (=> b!6903709 (= tp!1900798 e!4157529)))

(assert (= (and b!6903709 (is-ElementMatch!16870 (regOne!34253 r1!6342))) b!6904146))

(assert (= (and b!6903709 (is-Concat!25715 (regOne!34253 r1!6342))) b!6904147))

(assert (= (and b!6903709 (is-Star!16870 (regOne!34253 r1!6342))) b!6904148))

(assert (= (and b!6903709 (is-Union!16870 (regOne!34253 r1!6342))) b!6904149))

(declare-fun b!6904151 () Bool)

(declare-fun e!4157530 () Bool)

(declare-fun tp!1900909 () Bool)

(declare-fun tp!1900910 () Bool)

(assert (=> b!6904151 (= e!4157530 (and tp!1900909 tp!1900910))))

(declare-fun b!6904152 () Bool)

(declare-fun tp!1900906 () Bool)

(assert (=> b!6904152 (= e!4157530 tp!1900906)))

(declare-fun b!6904153 () Bool)

(declare-fun tp!1900907 () Bool)

(declare-fun tp!1900908 () Bool)

(assert (=> b!6904153 (= e!4157530 (and tp!1900907 tp!1900908))))

(declare-fun b!6904150 () Bool)

(assert (=> b!6904150 (= e!4157530 tp_is_empty!42965)))

(assert (=> b!6903709 (= tp!1900801 e!4157530)))

(assert (= (and b!6903709 (is-ElementMatch!16870 (regTwo!34253 r1!6342))) b!6904150))

(assert (= (and b!6903709 (is-Concat!25715 (regTwo!34253 r1!6342))) b!6904151))

(assert (= (and b!6903709 (is-Star!16870 (regTwo!34253 r1!6342))) b!6904152))

(assert (= (and b!6903709 (is-Union!16870 (regTwo!34253 r1!6342))) b!6904153))

(declare-fun b!6904155 () Bool)

(declare-fun e!4157531 () Bool)

(declare-fun tp!1900914 () Bool)

(declare-fun tp!1900915 () Bool)

(assert (=> b!6904155 (= e!4157531 (and tp!1900914 tp!1900915))))

(declare-fun b!6904156 () Bool)

(declare-fun tp!1900911 () Bool)

(assert (=> b!6904156 (= e!4157531 tp!1900911)))

(declare-fun b!6904157 () Bool)

(declare-fun tp!1900912 () Bool)

(declare-fun tp!1900913 () Bool)

(assert (=> b!6904157 (= e!4157531 (and tp!1900912 tp!1900913))))

(declare-fun b!6904154 () Bool)

(assert (=> b!6904154 (= e!4157531 tp_is_empty!42965)))

(assert (=> b!6903704 (= tp!1900805 e!4157531)))

(assert (= (and b!6903704 (is-ElementMatch!16870 (regOne!34253 r2!6280))) b!6904154))

(assert (= (and b!6903704 (is-Concat!25715 (regOne!34253 r2!6280))) b!6904155))

(assert (= (and b!6903704 (is-Star!16870 (regOne!34253 r2!6280))) b!6904156))

(assert (= (and b!6903704 (is-Union!16870 (regOne!34253 r2!6280))) b!6904157))

(declare-fun b!6904159 () Bool)

(declare-fun e!4157532 () Bool)

(declare-fun tp!1900919 () Bool)

(declare-fun tp!1900920 () Bool)

(assert (=> b!6904159 (= e!4157532 (and tp!1900919 tp!1900920))))

(declare-fun b!6904160 () Bool)

(declare-fun tp!1900916 () Bool)

(assert (=> b!6904160 (= e!4157532 tp!1900916)))

(declare-fun b!6904161 () Bool)

(declare-fun tp!1900917 () Bool)

(declare-fun tp!1900918 () Bool)

(assert (=> b!6904161 (= e!4157532 (and tp!1900917 tp!1900918))))

(declare-fun b!6904158 () Bool)

(assert (=> b!6904158 (= e!4157532 tp_is_empty!42965)))

(assert (=> b!6903704 (= tp!1900803 e!4157532)))

(assert (= (and b!6903704 (is-ElementMatch!16870 (regTwo!34253 r2!6280))) b!6904158))

(assert (= (and b!6903704 (is-Concat!25715 (regTwo!34253 r2!6280))) b!6904159))

(assert (= (and b!6903704 (is-Star!16870 (regTwo!34253 r2!6280))) b!6904160))

(assert (= (and b!6903704 (is-Union!16870 (regTwo!34253 r2!6280))) b!6904161))

(declare-fun b!6904163 () Bool)

(declare-fun e!4157533 () Bool)

(declare-fun tp!1900924 () Bool)

(declare-fun tp!1900925 () Bool)

(assert (=> b!6904163 (= e!4157533 (and tp!1900924 tp!1900925))))

(declare-fun b!6904164 () Bool)

(declare-fun tp!1900921 () Bool)

(assert (=> b!6904164 (= e!4157533 tp!1900921)))

(declare-fun b!6904165 () Bool)

(declare-fun tp!1900922 () Bool)

(declare-fun tp!1900923 () Bool)

(assert (=> b!6904165 (= e!4157533 (and tp!1900922 tp!1900923))))

(declare-fun b!6904162 () Bool)

(assert (=> b!6904162 (= e!4157533 tp_is_empty!42965)))

(assert (=> b!6903695 (= tp!1900793 e!4157533)))

(assert (= (and b!6903695 (is-ElementMatch!16870 (reg!17199 r1!6342))) b!6904162))

(assert (= (and b!6903695 (is-Concat!25715 (reg!17199 r1!6342))) b!6904163))

(assert (= (and b!6903695 (is-Star!16870 (reg!17199 r1!6342))) b!6904164))

(assert (= (and b!6903695 (is-Union!16870 (reg!17199 r1!6342))) b!6904165))

(declare-fun b!6904170 () Bool)

(declare-fun e!4157536 () Bool)

(declare-fun tp!1900928 () Bool)

(assert (=> b!6904170 (= e!4157536 (and tp_is_empty!42965 tp!1900928))))

(assert (=> b!6903711 (= tp!1900806 e!4157536)))

(assert (= (and b!6903711 (is-Cons!66503 (t!380370 s!14361))) b!6904170))

(declare-fun b!6904172 () Bool)

(declare-fun e!4157537 () Bool)

(declare-fun tp!1900932 () Bool)

(declare-fun tp!1900933 () Bool)

(assert (=> b!6904172 (= e!4157537 (and tp!1900932 tp!1900933))))

(declare-fun b!6904173 () Bool)

(declare-fun tp!1900929 () Bool)

(assert (=> b!6904173 (= e!4157537 tp!1900929)))

(declare-fun b!6904174 () Bool)

(declare-fun tp!1900930 () Bool)

(declare-fun tp!1900931 () Bool)

(assert (=> b!6904174 (= e!4157537 (and tp!1900930 tp!1900931))))

(declare-fun b!6904171 () Bool)

(assert (=> b!6904171 (= e!4157537 tp_is_empty!42965)))

(assert (=> b!6903706 (= tp!1900795 e!4157537)))

(assert (= (and b!6903706 (is-ElementMatch!16870 (regOne!34252 r2!6280))) b!6904171))

(assert (= (and b!6903706 (is-Concat!25715 (regOne!34252 r2!6280))) b!6904172))

(assert (= (and b!6903706 (is-Star!16870 (regOne!34252 r2!6280))) b!6904173))

(assert (= (and b!6903706 (is-Union!16870 (regOne!34252 r2!6280))) b!6904174))

(declare-fun b!6904176 () Bool)

(declare-fun e!4157538 () Bool)

(declare-fun tp!1900937 () Bool)

(declare-fun tp!1900938 () Bool)

(assert (=> b!6904176 (= e!4157538 (and tp!1900937 tp!1900938))))

(declare-fun b!6904177 () Bool)

(declare-fun tp!1900934 () Bool)

(assert (=> b!6904177 (= e!4157538 tp!1900934)))

(declare-fun b!6904178 () Bool)

(declare-fun tp!1900935 () Bool)

(declare-fun tp!1900936 () Bool)

(assert (=> b!6904178 (= e!4157538 (and tp!1900935 tp!1900936))))

(declare-fun b!6904175 () Bool)

(assert (=> b!6904175 (= e!4157538 tp_is_empty!42965)))

(assert (=> b!6903706 (= tp!1900807 e!4157538)))

(assert (= (and b!6903706 (is-ElementMatch!16870 (regTwo!34252 r2!6280))) b!6904175))

(assert (= (and b!6903706 (is-Concat!25715 (regTwo!34252 r2!6280))) b!6904176))

(assert (= (and b!6903706 (is-Star!16870 (regTwo!34252 r2!6280))) b!6904177))

(assert (= (and b!6903706 (is-Union!16870 (regTwo!34252 r2!6280))) b!6904178))

(declare-fun b!6904180 () Bool)

(declare-fun e!4157539 () Bool)

(declare-fun tp!1900942 () Bool)

(declare-fun tp!1900943 () Bool)

(assert (=> b!6904180 (= e!4157539 (and tp!1900942 tp!1900943))))

(declare-fun b!6904181 () Bool)

(declare-fun tp!1900939 () Bool)

(assert (=> b!6904181 (= e!4157539 tp!1900939)))

(declare-fun b!6904182 () Bool)

(declare-fun tp!1900940 () Bool)

(declare-fun tp!1900941 () Bool)

(assert (=> b!6904182 (= e!4157539 (and tp!1900940 tp!1900941))))

(declare-fun b!6904179 () Bool)

(assert (=> b!6904179 (= e!4157539 tp_is_empty!42965)))

(assert (=> b!6903700 (= tp!1900792 e!4157539)))

(assert (= (and b!6903700 (is-ElementMatch!16870 (reg!17199 r2!6280))) b!6904179))

(assert (= (and b!6903700 (is-Concat!25715 (reg!17199 r2!6280))) b!6904180))

(assert (= (and b!6903700 (is-Star!16870 (reg!17199 r2!6280))) b!6904181))

(assert (= (and b!6903700 (is-Union!16870 (reg!17199 r2!6280))) b!6904182))

(push 1)

(assert (not d!2162449))

(assert (not b!6903944))

(assert (not bm!627796))

(assert (not b!6903819))

(assert (not b!6904137))

(assert (not d!2162453))

(assert (not bm!627813))

(assert (not b!6903816))

(assert (not b!6904156))

(assert (not b!6903890))

(assert (not b!6904129))

(assert (not b!6904147))

(assert (not b!6904161))

(assert (not d!2162427))

(assert (not bm!627779))

(assert (not b!6903970))

(assert (not b!6903947))

(assert (not b!6904132))

(assert (not d!2162459))

(assert (not b!6903951))

(assert (not bm!627812))

(assert (not bm!627799))

(assert (not b!6904141))

(assert (not b!6904124))

(assert (not b!6903820))

(assert (not bm!627790))

(assert (not b!6904135))

(assert (not b!6904178))

(assert (not b!6904119))

(assert (not b!6904136))

(assert (not b!6904155))

(assert (not b!6903976))

(assert (not b!6904125))

(assert (not b!6904096))

(assert (not bm!627810))

(assert (not d!2162455))

(assert (not d!2162433))

(assert (not d!2162425))

(assert (not b!6903937))

(assert (not b!6904032))

(assert (not b!6904037))

(assert (not bm!627789))

(assert (not b!6904120))

(assert (not b!6903943))

(assert (not b!6903896))

(assert (not b!6904152))

(assert (not b!6904043))

(assert (not bm!627792))

(assert (not b!6903975))

(assert (not b!6904164))

(assert (not d!2162457))

(assert (not b!6904149))

(assert (not b!6904177))

(assert (not bm!627786))

(assert (not b!6904153))

(assert (not d!2162437))

(assert (not b!6904151))

(assert (not b!6903929))

(assert (not b!6903933))

(assert (not b!6904128))

(assert (not b!6904127))

(assert (not b!6903977))

(assert (not bm!627815))

(assert (not b!6904174))

(assert (not b!6904170))

(assert (not b!6904173))

(assert (not b!6903974))

(assert (not b!6904143))

(assert (not b!6904027))

(assert (not b!6904039))

(assert (not b!6903940))

(assert (not bm!627809))

(assert (not b!6904159))

(assert (not bm!627791))

(assert (not b!6904145))

(assert (not b!6904087))

(assert (not b!6904172))

(assert (not b!6904078))

(assert (not d!2162419))

(assert (not b!6904121))

(assert (not b!6903926))

(assert (not b!6903823))

(assert (not b!6903930))

(assert (not b!6904035))

(assert (not b!6904182))

(assert (not b!6903945))

(assert tp_is_empty!42965)

(assert (not b!6904157))

(assert (not bm!627795))

(assert (not b!6903821))

(assert (not b!6903931))

(assert (not b!6903915))

(assert (not bm!627787))

(assert (not d!2162439))

(assert (not b!6904036))

(assert (not b!6904131))

(assert (not b!6903827))

(assert (not b!6904021))

(assert (not b!6904133))

(assert (not b!6904180))

(assert (not b!6904123))

(assert (not d!2162463))

(assert (not bm!627816))

(assert (not b!6903921))

(assert (not b!6904165))

(assert (not b!6904144))

(assert (not b!6904140))

(assert (not b!6904163))

(assert (not b!6903973))

(assert (not d!2162435))

(assert (not b!6904181))

(assert (not b!6904176))

(assert (not b!6904148))

(assert (not b!6904160))

(assert (not b!6904139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

