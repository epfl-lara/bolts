; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665354 () Bool)

(assert start!665354)

(declare-fun b!6913867 () Bool)

(assert (=> b!6913867 true))

(assert (=> b!6913867 true))

(assert (=> b!6913867 true))

(declare-fun lambda!393014 () Int)

(declare-fun lambda!393013 () Int)

(assert (=> b!6913867 (not (= lambda!393014 lambda!393013))))

(assert (=> b!6913867 true))

(assert (=> b!6913867 true))

(assert (=> b!6913867 true))

(declare-fun bs!1845845 () Bool)

(declare-fun b!6913881 () Bool)

(assert (= bs!1845845 (and b!6913881 b!6913867)))

(declare-fun lambda!393015 () Int)

(declare-datatypes ((C!34060 0))(
  ( (C!34061 (val!26732 Int)) )
))
(declare-datatypes ((Regex!16895 0))(
  ( (ElementMatch!16895 (c!1284127 C!34060)) (Concat!25740 (regOne!34302 Regex!16895) (regTwo!34302 Regex!16895)) (EmptyExpr!16895) (Star!16895 (reg!17224 Regex!16895)) (EmptyLang!16895) (Union!16895 (regOne!34303 Regex!16895) (regTwo!34303 Regex!16895)) )
))
(declare-fun r1!6342 () Regex!16895)

(declare-datatypes ((List!66652 0))(
  ( (Nil!66528) (Cons!66528 (h!72976 C!34060) (t!380395 List!66652)) )
))
(declare-datatypes ((tuple2!67524 0))(
  ( (tuple2!67525 (_1!37065 List!66652) (_2!37065 List!66652)) )
))
(declare-fun lt!2469267 () tuple2!67524)

(declare-fun r3!135 () Regex!16895)

(declare-fun lt!2469286 () Regex!16895)

(declare-fun s!14361 () List!66652)

(declare-fun r2!6280 () Regex!16895)

(assert (=> bs!1845845 (= (and (= (_2!37065 lt!2469267) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2469286)) (= lambda!393015 lambda!393013))))

(assert (=> bs!1845845 (not (= lambda!393015 lambda!393014))))

(assert (=> b!6913881 true))

(assert (=> b!6913881 true))

(assert (=> b!6913881 true))

(declare-fun lambda!393016 () Int)

(assert (=> bs!1845845 (not (= lambda!393016 lambda!393013))))

(assert (=> bs!1845845 (= (and (= (_2!37065 lt!2469267) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2469286)) (= lambda!393016 lambda!393014))))

(assert (=> b!6913881 (not (= lambda!393016 lambda!393015))))

(assert (=> b!6913881 true))

(assert (=> b!6913881 true))

(assert (=> b!6913881 true))

(declare-fun bs!1845846 () Bool)

(declare-fun b!6913874 () Bool)

(assert (= bs!1845846 (and b!6913874 b!6913867)))

(declare-fun lt!2469282 () List!66652)

(declare-fun lambda!393017 () Int)

(assert (=> bs!1845846 (= (and (= lt!2469282 s!14361) (= r2!6280 lt!2469286)) (= lambda!393017 lambda!393013))))

(assert (=> bs!1845846 (not (= lambda!393017 lambda!393014))))

(declare-fun bs!1845847 () Bool)

(assert (= bs!1845847 (and b!6913874 b!6913881)))

(assert (=> bs!1845847 (= (and (= lt!2469282 (_2!37065 lt!2469267)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393017 lambda!393015))))

(assert (=> bs!1845847 (not (= lambda!393017 lambda!393016))))

(assert (=> b!6913874 true))

(assert (=> b!6913874 true))

(assert (=> b!6913874 true))

(declare-fun lambda!393018 () Int)

(assert (=> bs!1845846 (not (= lambda!393018 lambda!393013))))

(assert (=> bs!1845846 (= (and (= lt!2469282 s!14361) (= r2!6280 lt!2469286)) (= lambda!393018 lambda!393014))))

(assert (=> bs!1845847 (= (and (= lt!2469282 (_2!37065 lt!2469267)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393018 lambda!393016))))

(assert (=> bs!1845847 (not (= lambda!393018 lambda!393015))))

(assert (=> b!6913874 (not (= lambda!393018 lambda!393017))))

(assert (=> b!6913874 true))

(assert (=> b!6913874 true))

(assert (=> b!6913874 true))

(declare-fun b!6913859 () Bool)

(declare-fun res!2819708 () Bool)

(declare-fun e!4162293 () Bool)

(assert (=> b!6913859 (=> res!2819708 e!4162293)))

(declare-fun matchR!9040 (Regex!16895 List!66652) Bool)

(assert (=> b!6913859 (= res!2819708 (not (matchR!9040 lt!2469286 (_2!37065 lt!2469267))))))

(declare-fun b!6913860 () Bool)

(declare-fun e!4162300 () Bool)

(declare-fun tp_is_empty!43015 () Bool)

(assert (=> b!6913860 (= e!4162300 tp_is_empty!43015)))

(declare-fun b!6913861 () Bool)

(declare-fun res!2819711 () Bool)

(declare-fun e!4162294 () Bool)

(assert (=> b!6913861 (=> res!2819711 e!4162294)))

(declare-fun lt!2469292 () tuple2!67524)

(assert (=> b!6913861 (= res!2819711 (not (matchR!9040 r3!135 (_2!37065 lt!2469292))))))

(declare-fun b!6913863 () Bool)

(declare-fun e!4162296 () Bool)

(declare-fun tp!1903936 () Bool)

(assert (=> b!6913863 (= e!4162296 (and tp_is_empty!43015 tp!1903936))))

(declare-fun b!6913864 () Bool)

(declare-fun e!4162291 () Bool)

(declare-fun tp!1903942 () Bool)

(assert (=> b!6913864 (= e!4162291 tp!1903942)))

(declare-fun b!6913865 () Bool)

(declare-fun tp!1903937 () Bool)

(assert (=> b!6913865 (= e!4162300 tp!1903937)))

(declare-fun b!6913866 () Bool)

(declare-fun e!4162297 () Bool)

(declare-fun tp!1903928 () Bool)

(declare-fun tp!1903938 () Bool)

(assert (=> b!6913866 (= e!4162297 (and tp!1903928 tp!1903938))))

(declare-fun e!4162292 () Bool)

(assert (=> b!6913867 (= e!4162292 e!4162293)))

(declare-fun res!2819715 () Bool)

(assert (=> b!6913867 (=> res!2819715 e!4162293)))

(declare-fun lt!2469291 () Bool)

(assert (=> b!6913867 (= res!2819715 (not lt!2469291))))

(declare-fun matchRSpec!3958 (Regex!16895 List!66652) Bool)

(assert (=> b!6913867 (= lt!2469291 (matchRSpec!3958 r1!6342 (_1!37065 lt!2469267)))))

(assert (=> b!6913867 (= lt!2469291 (matchR!9040 r1!6342 (_1!37065 lt!2469267)))))

(declare-datatypes ((Unit!160526 0))(
  ( (Unit!160527) )
))
(declare-fun lt!2469284 () Unit!160526)

(declare-fun mainMatchTheorem!3958 (Regex!16895 List!66652) Unit!160526)

(assert (=> b!6913867 (= lt!2469284 (mainMatchTheorem!3958 r1!6342 (_1!37065 lt!2469267)))))

(declare-datatypes ((Option!16674 0))(
  ( (None!16673) (Some!16673 (v!52945 tuple2!67524)) )
))
(declare-fun lt!2469293 () Option!16674)

(declare-fun get!23293 (Option!16674) tuple2!67524)

(assert (=> b!6913867 (= lt!2469267 (get!23293 lt!2469293))))

(declare-fun Exists!3903 (Int) Bool)

(assert (=> b!6913867 (= (Exists!3903 lambda!393013) (Exists!3903 lambda!393014))))

(declare-fun lt!2469266 () Unit!160526)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2376 (Regex!16895 Regex!16895 List!66652) Unit!160526)

(assert (=> b!6913867 (= lt!2469266 (lemmaExistCutMatchRandMatchRSpecEquivalent!2376 r1!6342 lt!2469286 s!14361))))

(assert (=> b!6913867 (Exists!3903 lambda!393013)))

(declare-fun lt!2469279 () Unit!160526)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2850 (Regex!16895 Regex!16895 List!66652) Unit!160526)

(assert (=> b!6913867 (= lt!2469279 (lemmaFindConcatSeparationEquivalentToExists!2850 r1!6342 lt!2469286 s!14361))))

(declare-fun b!6913868 () Bool)

(declare-fun res!2819710 () Bool)

(declare-fun e!4162295 () Bool)

(assert (=> b!6913868 (=> (not res!2819710) (not e!4162295))))

(declare-fun validRegex!8603 (Regex!16895) Bool)

(assert (=> b!6913868 (= res!2819710 (validRegex!8603 r3!135))))

(declare-fun b!6913869 () Bool)

(declare-fun tp!1903941 () Bool)

(declare-fun tp!1903931 () Bool)

(assert (=> b!6913869 (= e!4162291 (and tp!1903941 tp!1903931))))

(declare-fun b!6913870 () Bool)

(assert (=> b!6913870 (= e!4162297 tp_is_empty!43015)))

(declare-fun b!6913871 () Bool)

(declare-fun tp!1903933 () Bool)

(assert (=> b!6913871 (= e!4162297 tp!1903933)))

(declare-fun b!6913872 () Bool)

(declare-fun res!2819714 () Bool)

(assert (=> b!6913872 (=> (not res!2819714) (not e!4162295))))

(assert (=> b!6913872 (= res!2819714 (validRegex!8603 r2!6280))))

(declare-fun b!6913873 () Bool)

(declare-fun tp!1903935 () Bool)

(declare-fun tp!1903930 () Bool)

(assert (=> b!6913873 (= e!4162300 (and tp!1903935 tp!1903930))))

(declare-fun lt!2469281 () Bool)

(declare-fun e!4162298 () Bool)

(declare-fun lt!2469290 () List!66652)

(assert (=> b!6913874 (= e!4162298 (or (not lt!2469281) (= lt!2469290 s!14361)))))

(declare-fun lt!2469268 () Bool)

(assert (=> b!6913874 lt!2469268))

(declare-fun lt!2469275 () Unit!160526)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!76 (Regex!16895 Regex!16895 List!66652 List!66652 List!66652 List!66652 List!66652) Unit!160526)

(assert (=> b!6913874 (= lt!2469275 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!76 r1!6342 r2!6280 (_1!37065 lt!2469267) (_1!37065 lt!2469292) lt!2469282 Nil!66528 lt!2469282))))

(assert (=> b!6913874 (= (Exists!3903 lambda!393017) (Exists!3903 lambda!393018))))

(declare-fun lt!2469280 () Unit!160526)

(assert (=> b!6913874 (= lt!2469280 (lemmaExistCutMatchRandMatchRSpecEquivalent!2376 r1!6342 r2!6280 lt!2469282))))

(assert (=> b!6913874 (= lt!2469268 (Exists!3903 lambda!393017))))

(declare-fun isDefined!13377 (Option!16674) Bool)

(declare-fun findConcatSeparation!3088 (Regex!16895 Regex!16895 List!66652 List!66652 List!66652) Option!16674)

(assert (=> b!6913874 (= lt!2469268 (isDefined!13377 (findConcatSeparation!3088 r1!6342 r2!6280 Nil!66528 lt!2469282 lt!2469282)))))

(declare-fun lt!2469269 () Unit!160526)

(assert (=> b!6913874 (= lt!2469269 (lemmaFindConcatSeparationEquivalentToExists!2850 r1!6342 r2!6280 lt!2469282))))

(declare-fun lt!2469285 () Regex!16895)

(assert (=> b!6913874 (= lt!2469281 (matchRSpec!3958 lt!2469285 lt!2469282))))

(assert (=> b!6913874 (= lt!2469281 (matchR!9040 lt!2469285 lt!2469282))))

(declare-fun lt!2469265 () Unit!160526)

(assert (=> b!6913874 (= lt!2469265 (mainMatchTheorem!3958 lt!2469285 lt!2469282))))

(declare-fun lt!2469288 () List!66652)

(assert (=> b!6913874 (= lt!2469290 lt!2469288)))

(declare-fun ++!14948 (List!66652 List!66652) List!66652)

(assert (=> b!6913874 (= lt!2469290 (++!14948 lt!2469282 (_2!37065 lt!2469292)))))

(assert (=> b!6913874 (= lt!2469282 (++!14948 (_1!37065 lt!2469267) (_1!37065 lt!2469292)))))

(declare-fun lt!2469272 () Unit!160526)

(declare-fun lemmaConcatAssociativity!3006 (List!66652 List!66652 List!66652) Unit!160526)

(assert (=> b!6913874 (= lt!2469272 (lemmaConcatAssociativity!3006 (_1!37065 lt!2469267) (_1!37065 lt!2469292) (_2!37065 lt!2469292)))))

(declare-fun b!6913875 () Bool)

(assert (=> b!6913875 (= e!4162294 e!4162298)))

(declare-fun res!2819716 () Bool)

(assert (=> b!6913875 (=> res!2819716 e!4162298)))

(assert (=> b!6913875 (= res!2819716 (not (= lt!2469288 s!14361)))))

(assert (=> b!6913875 (= lt!2469288 (++!14948 (_1!37065 lt!2469267) (++!14948 (_1!37065 lt!2469292) (_2!37065 lt!2469292))))))

(assert (=> b!6913875 (matchRSpec!3958 r3!135 (_2!37065 lt!2469292))))

(declare-fun lt!2469274 () Unit!160526)

(assert (=> b!6913875 (= lt!2469274 (mainMatchTheorem!3958 r3!135 (_2!37065 lt!2469292)))))

(assert (=> b!6913875 (matchRSpec!3958 r2!6280 (_1!37065 lt!2469292))))

(declare-fun lt!2469270 () Unit!160526)

(assert (=> b!6913875 (= lt!2469270 (mainMatchTheorem!3958 r2!6280 (_1!37065 lt!2469292)))))

(declare-fun b!6913862 () Bool)

(declare-fun tp!1903943 () Bool)

(declare-fun tp!1903932 () Bool)

(assert (=> b!6913862 (= e!4162297 (and tp!1903943 tp!1903932))))

(declare-fun res!2819709 () Bool)

(assert (=> start!665354 (=> (not res!2819709) (not e!4162295))))

(assert (=> start!665354 (= res!2819709 (validRegex!8603 r1!6342))))

(assert (=> start!665354 e!4162295))

(assert (=> start!665354 e!4162297))

(assert (=> start!665354 e!4162300))

(assert (=> start!665354 e!4162291))

(assert (=> start!665354 e!4162296))

(declare-fun b!6913876 () Bool)

(declare-fun tp!1903939 () Bool)

(declare-fun tp!1903929 () Bool)

(assert (=> b!6913876 (= e!4162300 (and tp!1903939 tp!1903929))))

(declare-fun b!6913877 () Bool)

(declare-fun e!4162299 () Bool)

(assert (=> b!6913877 (= e!4162295 (not e!4162299))))

(declare-fun res!2819712 () Bool)

(assert (=> b!6913877 (=> res!2819712 e!4162299)))

(declare-fun lt!2469264 () Bool)

(assert (=> b!6913877 (= res!2819712 lt!2469264)))

(declare-fun lt!2469273 () Regex!16895)

(assert (=> b!6913877 (= (matchR!9040 lt!2469273 s!14361) (matchRSpec!3958 lt!2469273 s!14361))))

(declare-fun lt!2469287 () Unit!160526)

(assert (=> b!6913877 (= lt!2469287 (mainMatchTheorem!3958 lt!2469273 s!14361))))

(declare-fun lt!2469276 () Regex!16895)

(assert (=> b!6913877 (= lt!2469264 (matchRSpec!3958 lt!2469276 s!14361))))

(assert (=> b!6913877 (= lt!2469264 (matchR!9040 lt!2469276 s!14361))))

(declare-fun lt!2469271 () Unit!160526)

(assert (=> b!6913877 (= lt!2469271 (mainMatchTheorem!3958 lt!2469276 s!14361))))

(assert (=> b!6913877 (= lt!2469273 (Concat!25740 r1!6342 lt!2469286))))

(assert (=> b!6913877 (= lt!2469286 (Concat!25740 r2!6280 r3!135))))

(assert (=> b!6913877 (= lt!2469276 (Concat!25740 lt!2469285 r3!135))))

(assert (=> b!6913877 (= lt!2469285 (Concat!25740 r1!6342 r2!6280))))

(declare-fun b!6913878 () Bool)

(declare-fun tp!1903934 () Bool)

(declare-fun tp!1903940 () Bool)

(assert (=> b!6913878 (= e!4162291 (and tp!1903934 tp!1903940))))

(declare-fun b!6913879 () Bool)

(assert (=> b!6913879 (= e!4162299 e!4162292)))

(declare-fun res!2819707 () Bool)

(assert (=> b!6913879 (=> res!2819707 e!4162292)))

(assert (=> b!6913879 (= res!2819707 (not (isDefined!13377 lt!2469293)))))

(assert (=> b!6913879 (= lt!2469293 (findConcatSeparation!3088 r1!6342 lt!2469286 Nil!66528 s!14361 s!14361))))

(declare-fun b!6913880 () Bool)

(assert (=> b!6913880 (= e!4162291 tp_is_empty!43015)))

(assert (=> b!6913881 (= e!4162293 e!4162294)))

(declare-fun res!2819713 () Bool)

(assert (=> b!6913881 (=> res!2819713 e!4162294)))

(assert (=> b!6913881 (= res!2819713 (not (matchR!9040 r2!6280 (_1!37065 lt!2469292))))))

(declare-fun lt!2469289 () Option!16674)

(assert (=> b!6913881 (= lt!2469292 (get!23293 lt!2469289))))

(assert (=> b!6913881 (= (Exists!3903 lambda!393015) (Exists!3903 lambda!393016))))

(declare-fun lt!2469277 () Unit!160526)

(assert (=> b!6913881 (= lt!2469277 (lemmaExistCutMatchRandMatchRSpecEquivalent!2376 r2!6280 r3!135 (_2!37065 lt!2469267)))))

(assert (=> b!6913881 (= (isDefined!13377 lt!2469289) (Exists!3903 lambda!393015))))

(assert (=> b!6913881 (= lt!2469289 (findConcatSeparation!3088 r2!6280 r3!135 Nil!66528 (_2!37065 lt!2469267) (_2!37065 lt!2469267)))))

(declare-fun lt!2469278 () Unit!160526)

(assert (=> b!6913881 (= lt!2469278 (lemmaFindConcatSeparationEquivalentToExists!2850 r2!6280 r3!135 (_2!37065 lt!2469267)))))

(assert (=> b!6913881 (matchRSpec!3958 lt!2469286 (_2!37065 lt!2469267))))

(declare-fun lt!2469283 () Unit!160526)

(assert (=> b!6913881 (= lt!2469283 (mainMatchTheorem!3958 lt!2469286 (_2!37065 lt!2469267)))))

(assert (= (and start!665354 res!2819709) b!6913872))

(assert (= (and b!6913872 res!2819714) b!6913868))

(assert (= (and b!6913868 res!2819710) b!6913877))

(assert (= (and b!6913877 (not res!2819712)) b!6913879))

(assert (= (and b!6913879 (not res!2819707)) b!6913867))

(assert (= (and b!6913867 (not res!2819715)) b!6913859))

(assert (= (and b!6913859 (not res!2819708)) b!6913881))

(assert (= (and b!6913881 (not res!2819713)) b!6913861))

(assert (= (and b!6913861 (not res!2819711)) b!6913875))

(assert (= (and b!6913875 (not res!2819716)) b!6913874))

(get-info :version)

(assert (= (and start!665354 ((_ is ElementMatch!16895) r1!6342)) b!6913870))

(assert (= (and start!665354 ((_ is Concat!25740) r1!6342)) b!6913866))

(assert (= (and start!665354 ((_ is Star!16895) r1!6342)) b!6913871))

(assert (= (and start!665354 ((_ is Union!16895) r1!6342)) b!6913862))

(assert (= (and start!665354 ((_ is ElementMatch!16895) r2!6280)) b!6913860))

(assert (= (and start!665354 ((_ is Concat!25740) r2!6280)) b!6913873))

(assert (= (and start!665354 ((_ is Star!16895) r2!6280)) b!6913865))

(assert (= (and start!665354 ((_ is Union!16895) r2!6280)) b!6913876))

(assert (= (and start!665354 ((_ is ElementMatch!16895) r3!135)) b!6913880))

(assert (= (and start!665354 ((_ is Concat!25740) r3!135)) b!6913869))

(assert (= (and start!665354 ((_ is Star!16895) r3!135)) b!6913864))

(assert (= (and start!665354 ((_ is Union!16895) r3!135)) b!6913878))

(assert (= (and start!665354 ((_ is Cons!66528) s!14361)) b!6913863))

(declare-fun m!7627548 () Bool)

(assert (=> b!6913872 m!7627548))

(declare-fun m!7627550 () Bool)

(assert (=> b!6913877 m!7627550))

(declare-fun m!7627552 () Bool)

(assert (=> b!6913877 m!7627552))

(declare-fun m!7627554 () Bool)

(assert (=> b!6913877 m!7627554))

(declare-fun m!7627556 () Bool)

(assert (=> b!6913877 m!7627556))

(declare-fun m!7627558 () Bool)

(assert (=> b!6913877 m!7627558))

(declare-fun m!7627560 () Bool)

(assert (=> b!6913877 m!7627560))

(declare-fun m!7627562 () Bool)

(assert (=> b!6913859 m!7627562))

(declare-fun m!7627564 () Bool)

(assert (=> b!6913875 m!7627564))

(declare-fun m!7627566 () Bool)

(assert (=> b!6913875 m!7627566))

(declare-fun m!7627568 () Bool)

(assert (=> b!6913875 m!7627568))

(declare-fun m!7627570 () Bool)

(assert (=> b!6913875 m!7627570))

(declare-fun m!7627572 () Bool)

(assert (=> b!6913875 m!7627572))

(declare-fun m!7627574 () Bool)

(assert (=> b!6913875 m!7627574))

(assert (=> b!6913875 m!7627570))

(declare-fun m!7627576 () Bool)

(assert (=> b!6913879 m!7627576))

(declare-fun m!7627578 () Bool)

(assert (=> b!6913879 m!7627578))

(declare-fun m!7627580 () Bool)

(assert (=> b!6913874 m!7627580))

(declare-fun m!7627582 () Bool)

(assert (=> b!6913874 m!7627582))

(declare-fun m!7627584 () Bool)

(assert (=> b!6913874 m!7627584))

(declare-fun m!7627586 () Bool)

(assert (=> b!6913874 m!7627586))

(declare-fun m!7627588 () Bool)

(assert (=> b!6913874 m!7627588))

(assert (=> b!6913874 m!7627580))

(declare-fun m!7627590 () Bool)

(assert (=> b!6913874 m!7627590))

(declare-fun m!7627592 () Bool)

(assert (=> b!6913874 m!7627592))

(declare-fun m!7627594 () Bool)

(assert (=> b!6913874 m!7627594))

(declare-fun m!7627596 () Bool)

(assert (=> b!6913874 m!7627596))

(declare-fun m!7627598 () Bool)

(assert (=> b!6913874 m!7627598))

(assert (=> b!6913874 m!7627586))

(declare-fun m!7627600 () Bool)

(assert (=> b!6913874 m!7627600))

(declare-fun m!7627602 () Bool)

(assert (=> b!6913874 m!7627602))

(declare-fun m!7627604 () Bool)

(assert (=> b!6913874 m!7627604))

(declare-fun m!7627606 () Bool)

(assert (=> b!6913868 m!7627606))

(declare-fun m!7627608 () Bool)

(assert (=> start!665354 m!7627608))

(declare-fun m!7627610 () Bool)

(assert (=> b!6913861 m!7627610))

(declare-fun m!7627612 () Bool)

(assert (=> b!6913881 m!7627612))

(declare-fun m!7627614 () Bool)

(assert (=> b!6913881 m!7627614))

(assert (=> b!6913881 m!7627614))

(declare-fun m!7627616 () Bool)

(assert (=> b!6913881 m!7627616))

(declare-fun m!7627618 () Bool)

(assert (=> b!6913881 m!7627618))

(declare-fun m!7627620 () Bool)

(assert (=> b!6913881 m!7627620))

(declare-fun m!7627622 () Bool)

(assert (=> b!6913881 m!7627622))

(declare-fun m!7627624 () Bool)

(assert (=> b!6913881 m!7627624))

(declare-fun m!7627626 () Bool)

(assert (=> b!6913881 m!7627626))

(declare-fun m!7627628 () Bool)

(assert (=> b!6913881 m!7627628))

(declare-fun m!7627630 () Bool)

(assert (=> b!6913881 m!7627630))

(declare-fun m!7627632 () Bool)

(assert (=> b!6913867 m!7627632))

(declare-fun m!7627634 () Bool)

(assert (=> b!6913867 m!7627634))

(declare-fun m!7627636 () Bool)

(assert (=> b!6913867 m!7627636))

(declare-fun m!7627638 () Bool)

(assert (=> b!6913867 m!7627638))

(declare-fun m!7627640 () Bool)

(assert (=> b!6913867 m!7627640))

(declare-fun m!7627642 () Bool)

(assert (=> b!6913867 m!7627642))

(declare-fun m!7627644 () Bool)

(assert (=> b!6913867 m!7627644))

(declare-fun m!7627646 () Bool)

(assert (=> b!6913867 m!7627646))

(assert (=> b!6913867 m!7627640))

(check-sat (not start!665354) (not b!6913865) (not b!6913879) (not b!6913867) tp_is_empty!43015 (not b!6913876) (not b!6913866) (not b!6913881) (not b!6913869) (not b!6913878) (not b!6913862) (not b!6913874) (not b!6913875) (not b!6913859) (not b!6913864) (not b!6913863) (not b!6913873) (not b!6913868) (not b!6913861) (not b!6913872) (not b!6913877) (not b!6913871))
(check-sat)
