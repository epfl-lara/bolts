; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737998 () Bool)

(assert start!737998)

(declare-fun b!7731850 () Bool)

(assert (=> b!7731850 true))

(assert (=> b!7731850 true))

(declare-fun b!7731844 () Bool)

(declare-fun e!4585173 () Bool)

(declare-fun tp_is_empty!51487 () Bool)

(declare-fun tp!2268786 () Bool)

(assert (=> b!7731844 (= e!4585173 (and tp_is_empty!51487 tp!2268786))))

(declare-fun b!7731845 () Bool)

(declare-fun e!4585171 () Bool)

(declare-fun tp!2268782 () Bool)

(declare-fun tp!2268787 () Bool)

(assert (=> b!7731845 (= e!4585171 (and tp!2268782 tp!2268787))))

(declare-fun b!7731846 () Bool)

(declare-fun tp!2268784 () Bool)

(assert (=> b!7731846 (= e!4585171 tp!2268784)))

(declare-fun b!7731847 () Bool)

(declare-fun tp!2268783 () Bool)

(declare-fun tp!2268785 () Bool)

(assert (=> b!7731847 (= e!4585171 (and tp!2268783 tp!2268785))))

(declare-fun res!3083915 () Bool)

(declare-fun e!4585172 () Bool)

(assert (=> start!737998 (=> (not res!3083915) (not e!4585172))))

(declare-datatypes ((C!41458 0))(
  ( (C!41459 (val!31169 Int)) )
))
(declare-datatypes ((Regex!20566 0))(
  ( (ElementMatch!20566 (c!1425571 C!41458)) (Concat!29411 (regOne!41644 Regex!20566) (regTwo!41644 Regex!20566)) (EmptyExpr!20566) (Star!20566 (reg!20895 Regex!20566)) (EmptyLang!20566) (Union!20566 (regOne!41645 Regex!20566) (regTwo!41645 Regex!20566)) )
))
(declare-fun r!14126 () Regex!20566)

(declare-fun validRegex!10984 (Regex!20566) Bool)

(assert (=> start!737998 (= res!3083915 (validRegex!10984 r!14126))))

(assert (=> start!737998 e!4585172))

(assert (=> start!737998 e!4585171))

(assert (=> start!737998 e!4585173))

(declare-fun b!7731848 () Bool)

(declare-fun e!4585170 () Bool)

(assert (=> b!7731848 (= e!4585170 (validRegex!10984 (regTwo!41644 r!14126)))))

(declare-fun b!7731849 () Bool)

(declare-fun res!3083916 () Bool)

(assert (=> b!7731849 (=> res!3083916 e!4585170)))

(declare-fun lt!2667200 () Bool)

(assert (=> b!7731849 (= res!3083916 (not lt!2667200))))

(assert (=> b!7731850 (= e!4585172 (not e!4585170))))

(declare-fun res!3083918 () Bool)

(assert (=> b!7731850 (=> res!3083918 e!4585170)))

(declare-datatypes ((List!73413 0))(
  ( (Nil!73289) (Cons!73289 (h!79737 C!41458) (t!388148 List!73413)) )
))
(declare-fun s!9605 () List!73413)

(declare-fun matchR!10058 (Regex!20566 List!73413) Bool)

(assert (=> b!7731850 (= res!3083918 (matchR!10058 r!14126 s!9605))))

(declare-fun lambda!471310 () Int)

(declare-fun Exists!4687 (Int) Bool)

(assert (=> b!7731850 (= lt!2667200 (Exists!4687 lambda!471310))))

(declare-datatypes ((tuple2!69586 0))(
  ( (tuple2!69587 (_1!38096 List!73413) (_2!38096 List!73413)) )
))
(declare-datatypes ((Option!17587 0))(
  ( (None!17586) (Some!17586 (v!54721 tuple2!69586)) )
))
(declare-fun isDefined!14203 (Option!17587) Bool)

(declare-fun findConcatSeparation!3617 (Regex!20566 Regex!20566 List!73413 List!73413 List!73413) Option!17587)

(assert (=> b!7731850 (= lt!2667200 (isDefined!14203 (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) Nil!73289 s!9605 s!9605)))))

(declare-datatypes ((Unit!168204 0))(
  ( (Unit!168205) )
))
(declare-fun lt!2667199 () Unit!168204)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3375 (Regex!20566 Regex!20566 List!73413) Unit!168204)

(assert (=> b!7731850 (= lt!2667199 (lemmaFindConcatSeparationEquivalentToExists!3375 (regOne!41644 r!14126) (regTwo!41644 r!14126) s!9605))))

(declare-fun b!7731851 () Bool)

(declare-fun res!3083917 () Bool)

(assert (=> b!7731851 (=> (not res!3083917) (not e!4585172))))

(assert (=> b!7731851 (= res!3083917 (and (not (is-EmptyExpr!20566 r!14126)) (not (is-EmptyLang!20566 r!14126)) (not (is-ElementMatch!20566 r!14126)) (not (is-Union!20566 r!14126)) (not (is-Star!20566 r!14126))))))

(declare-fun b!7731852 () Bool)

(declare-fun res!3083919 () Bool)

(assert (=> b!7731852 (=> res!3083919 e!4585170)))

(assert (=> b!7731852 (= res!3083919 (not (validRegex!10984 (regOne!41644 r!14126))))))

(declare-fun b!7731853 () Bool)

(assert (=> b!7731853 (= e!4585171 tp_is_empty!51487)))

(assert (= (and start!737998 res!3083915) b!7731851))

(assert (= (and b!7731851 res!3083917) b!7731850))

(assert (= (and b!7731850 (not res!3083918)) b!7731849))

(assert (= (and b!7731849 (not res!3083916)) b!7731852))

(assert (= (and b!7731852 (not res!3083919)) b!7731848))

(assert (= (and start!737998 (is-ElementMatch!20566 r!14126)) b!7731853))

(assert (= (and start!737998 (is-Concat!29411 r!14126)) b!7731845))

(assert (= (and start!737998 (is-Star!20566 r!14126)) b!7731846))

(assert (= (and start!737998 (is-Union!20566 r!14126)) b!7731847))

(assert (= (and start!737998 (is-Cons!73289 s!9605)) b!7731844))

(declare-fun m!8205950 () Bool)

(assert (=> start!737998 m!8205950))

(declare-fun m!8205952 () Bool)

(assert (=> b!7731848 m!8205952))

(declare-fun m!8205954 () Bool)

(assert (=> b!7731850 m!8205954))

(declare-fun m!8205956 () Bool)

(assert (=> b!7731850 m!8205956))

(declare-fun m!8205958 () Bool)

(assert (=> b!7731850 m!8205958))

(assert (=> b!7731850 m!8205956))

(declare-fun m!8205960 () Bool)

(assert (=> b!7731850 m!8205960))

(declare-fun m!8205962 () Bool)

(assert (=> b!7731850 m!8205962))

(declare-fun m!8205964 () Bool)

(assert (=> b!7731852 m!8205964))

(push 1)

(assert (not b!7731848))

(assert (not b!7731852))

(assert (not b!7731845))

(assert (not b!7731847))

(assert (not b!7731846))

(assert (not start!737998))

(assert (not b!7731850))

(assert tp_is_empty!51487)

(assert (not b!7731844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7731914 () Bool)

(declare-fun e!4585203 () Bool)

(declare-fun e!4585205 () Bool)

(assert (=> b!7731914 (= e!4585203 e!4585205)))

(declare-fun res!3083953 () Bool)

(declare-fun nullable!9041 (Regex!20566) Bool)

(assert (=> b!7731914 (= res!3083953 (not (nullable!9041 (reg!20895 r!14126))))))

(assert (=> b!7731914 (=> (not res!3083953) (not e!4585205))))

(declare-fun d!2339579 () Bool)

(declare-fun res!3083949 () Bool)

(declare-fun e!4585206 () Bool)

(assert (=> d!2339579 (=> res!3083949 e!4585206)))

(assert (=> d!2339579 (= res!3083949 (is-ElementMatch!20566 r!14126))))

(assert (=> d!2339579 (= (validRegex!10984 r!14126) e!4585206)))

(declare-fun b!7731915 () Bool)

(declare-fun e!4585204 () Bool)

(declare-fun e!4585208 () Bool)

(assert (=> b!7731915 (= e!4585204 e!4585208)))

(declare-fun res!3083950 () Bool)

(assert (=> b!7731915 (=> (not res!3083950) (not e!4585208))))

(declare-fun call!715583 () Bool)

(assert (=> b!7731915 (= res!3083950 call!715583)))

(declare-fun b!7731916 () Bool)

(declare-fun e!4585207 () Bool)

(assert (=> b!7731916 (= e!4585203 e!4585207)))

(declare-fun c!1425577 () Bool)

(assert (=> b!7731916 (= c!1425577 (is-Union!20566 r!14126))))

(declare-fun b!7731917 () Bool)

(declare-fun e!4585202 () Bool)

(declare-fun call!715585 () Bool)

(assert (=> b!7731917 (= e!4585202 call!715585)))

(declare-fun bm!715578 () Bool)

(assert (=> bm!715578 (= call!715583 (validRegex!10984 (ite c!1425577 (regOne!41645 r!14126) (regOne!41644 r!14126))))))

(declare-fun b!7731918 () Bool)

(declare-fun res!3083951 () Bool)

(assert (=> b!7731918 (=> (not res!3083951) (not e!4585202))))

(assert (=> b!7731918 (= res!3083951 call!715583)))

(assert (=> b!7731918 (= e!4585207 e!4585202)))

(declare-fun b!7731919 () Bool)

(declare-fun res!3083952 () Bool)

(assert (=> b!7731919 (=> res!3083952 e!4585204)))

(assert (=> b!7731919 (= res!3083952 (not (is-Concat!29411 r!14126)))))

(assert (=> b!7731919 (= e!4585207 e!4585204)))

(declare-fun b!7731920 () Bool)

(assert (=> b!7731920 (= e!4585206 e!4585203)))

(declare-fun c!1425578 () Bool)

(assert (=> b!7731920 (= c!1425578 (is-Star!20566 r!14126))))

(declare-fun call!715584 () Bool)

(declare-fun bm!715579 () Bool)

(assert (=> bm!715579 (= call!715584 (validRegex!10984 (ite c!1425578 (reg!20895 r!14126) (ite c!1425577 (regTwo!41645 r!14126) (regTwo!41644 r!14126)))))))

(declare-fun b!7731921 () Bool)

(assert (=> b!7731921 (= e!4585205 call!715584)))

(declare-fun bm!715580 () Bool)

(assert (=> bm!715580 (= call!715585 call!715584)))

(declare-fun b!7731922 () Bool)

(assert (=> b!7731922 (= e!4585208 call!715585)))

(assert (= (and d!2339579 (not res!3083949)) b!7731920))

(assert (= (and b!7731920 c!1425578) b!7731914))

(assert (= (and b!7731920 (not c!1425578)) b!7731916))

(assert (= (and b!7731914 res!3083953) b!7731921))

(assert (= (and b!7731916 c!1425577) b!7731918))

(assert (= (and b!7731916 (not c!1425577)) b!7731919))

(assert (= (and b!7731918 res!3083951) b!7731917))

(assert (= (and b!7731919 (not res!3083952)) b!7731915))

(assert (= (and b!7731915 res!3083950) b!7731922))

(assert (= (or b!7731918 b!7731915) bm!715578))

(assert (= (or b!7731917 b!7731922) bm!715580))

(assert (= (or b!7731921 bm!715580) bm!715579))

(declare-fun m!8205982 () Bool)

(assert (=> b!7731914 m!8205982))

(declare-fun m!8205984 () Bool)

(assert (=> bm!715578 m!8205984))

(declare-fun m!8205986 () Bool)

(assert (=> bm!715579 m!8205986))

(assert (=> start!737998 d!2339579))

(declare-fun b!7731951 () Bool)

(declare-fun e!4585226 () Bool)

(declare-fun lt!2667209 () Bool)

(assert (=> b!7731951 (= e!4585226 (not lt!2667209))))

(declare-fun b!7731952 () Bool)

(declare-fun res!3083970 () Bool)

(declare-fun e!4585225 () Bool)

(assert (=> b!7731952 (=> (not res!3083970) (not e!4585225))))

(declare-fun isEmpty!41966 (List!73413) Bool)

(declare-fun tail!15341 (List!73413) List!73413)

(assert (=> b!7731952 (= res!3083970 (isEmpty!41966 (tail!15341 s!9605)))))

(declare-fun b!7731953 () Bool)

(declare-fun res!3083977 () Bool)

(assert (=> b!7731953 (=> (not res!3083977) (not e!4585225))))

(declare-fun call!715588 () Bool)

(assert (=> b!7731953 (= res!3083977 (not call!715588))))

(declare-fun b!7731954 () Bool)

(declare-fun e!4585224 () Bool)

(assert (=> b!7731954 (= e!4585224 e!4585226)))

(declare-fun c!1425586 () Bool)

(assert (=> b!7731954 (= c!1425586 (is-EmptyLang!20566 r!14126))))

(declare-fun b!7731955 () Bool)

(declare-fun head!15801 (List!73413) C!41458)

(assert (=> b!7731955 (= e!4585225 (= (head!15801 s!9605) (c!1425571 r!14126)))))

(declare-fun b!7731956 () Bool)

(declare-fun e!4585223 () Bool)

(declare-fun derivativeStep!6001 (Regex!20566 C!41458) Regex!20566)

(assert (=> b!7731956 (= e!4585223 (matchR!10058 (derivativeStep!6001 r!14126 (head!15801 s!9605)) (tail!15341 s!9605)))))

(declare-fun b!7731957 () Bool)

(declare-fun res!3083973 () Bool)

(declare-fun e!4585228 () Bool)

(assert (=> b!7731957 (=> res!3083973 e!4585228)))

(assert (=> b!7731957 (= res!3083973 e!4585225)))

(declare-fun res!3083974 () Bool)

(assert (=> b!7731957 (=> (not res!3083974) (not e!4585225))))

(assert (=> b!7731957 (= res!3083974 lt!2667209)))

(declare-fun d!2339581 () Bool)

(assert (=> d!2339581 e!4585224))

(declare-fun c!1425585 () Bool)

(assert (=> d!2339581 (= c!1425585 (is-EmptyExpr!20566 r!14126))))

(assert (=> d!2339581 (= lt!2667209 e!4585223)))

(declare-fun c!1425587 () Bool)

(assert (=> d!2339581 (= c!1425587 (isEmpty!41966 s!9605))))

(assert (=> d!2339581 (validRegex!10984 r!14126)))

(assert (=> d!2339581 (= (matchR!10058 r!14126 s!9605) lt!2667209)))

(declare-fun b!7731958 () Bool)

(declare-fun res!3083976 () Bool)

(declare-fun e!4585229 () Bool)

(assert (=> b!7731958 (=> res!3083976 e!4585229)))

(assert (=> b!7731958 (= res!3083976 (not (isEmpty!41966 (tail!15341 s!9605))))))

(declare-fun b!7731959 () Bool)

(assert (=> b!7731959 (= e!4585223 (nullable!9041 r!14126))))

(declare-fun b!7731960 () Bool)

(declare-fun e!4585227 () Bool)

(assert (=> b!7731960 (= e!4585227 e!4585229)))

(declare-fun res!3083975 () Bool)

(assert (=> b!7731960 (=> res!3083975 e!4585229)))

(assert (=> b!7731960 (= res!3083975 call!715588)))

(declare-fun b!7731961 () Bool)

(assert (=> b!7731961 (= e!4585224 (= lt!2667209 call!715588))))

(declare-fun b!7731962 () Bool)

(declare-fun res!3083972 () Bool)

(assert (=> b!7731962 (=> res!3083972 e!4585228)))

(assert (=> b!7731962 (= res!3083972 (not (is-ElementMatch!20566 r!14126)))))

(assert (=> b!7731962 (= e!4585226 e!4585228)))

(declare-fun bm!715583 () Bool)

(assert (=> bm!715583 (= call!715588 (isEmpty!41966 s!9605))))

(declare-fun b!7731963 () Bool)

(assert (=> b!7731963 (= e!4585228 e!4585227)))

(declare-fun res!3083971 () Bool)

(assert (=> b!7731963 (=> (not res!3083971) (not e!4585227))))

(assert (=> b!7731963 (= res!3083971 (not lt!2667209))))

(declare-fun b!7731964 () Bool)

(assert (=> b!7731964 (= e!4585229 (not (= (head!15801 s!9605) (c!1425571 r!14126))))))

(assert (= (and d!2339581 c!1425587) b!7731959))

(assert (= (and d!2339581 (not c!1425587)) b!7731956))

(assert (= (and d!2339581 c!1425585) b!7731961))

(assert (= (and d!2339581 (not c!1425585)) b!7731954))

(assert (= (and b!7731954 c!1425586) b!7731951))

(assert (= (and b!7731954 (not c!1425586)) b!7731962))

(assert (= (and b!7731962 (not res!3083972)) b!7731957))

(assert (= (and b!7731957 res!3083974) b!7731953))

(assert (= (and b!7731953 res!3083977) b!7731952))

(assert (= (and b!7731952 res!3083970) b!7731955))

(assert (= (and b!7731957 (not res!3083973)) b!7731963))

(assert (= (and b!7731963 res!3083971) b!7731960))

(assert (= (and b!7731960 (not res!3083975)) b!7731958))

(assert (= (and b!7731958 (not res!3083976)) b!7731964))

(assert (= (or b!7731961 b!7731953 b!7731960) bm!715583))

(declare-fun m!8205988 () Bool)

(assert (=> bm!715583 m!8205988))

(declare-fun m!8205990 () Bool)

(assert (=> b!7731959 m!8205990))

(declare-fun m!8205992 () Bool)

(assert (=> b!7731952 m!8205992))

(assert (=> b!7731952 m!8205992))

(declare-fun m!8205994 () Bool)

(assert (=> b!7731952 m!8205994))

(declare-fun m!8205996 () Bool)

(assert (=> b!7731955 m!8205996))

(assert (=> b!7731958 m!8205992))

(assert (=> b!7731958 m!8205992))

(assert (=> b!7731958 m!8205994))

(assert (=> d!2339581 m!8205988))

(assert (=> d!2339581 m!8205950))

(assert (=> b!7731956 m!8205996))

(assert (=> b!7731956 m!8205996))

(declare-fun m!8205998 () Bool)

(assert (=> b!7731956 m!8205998))

(assert (=> b!7731956 m!8205992))

(assert (=> b!7731956 m!8205998))

(assert (=> b!7731956 m!8205992))

(declare-fun m!8206000 () Bool)

(assert (=> b!7731956 m!8206000))

(assert (=> b!7731964 m!8205996))

(assert (=> b!7731850 d!2339581))

(declare-fun d!2339585 () Bool)

(declare-fun isEmpty!41967 (Option!17587) Bool)

(assert (=> d!2339585 (= (isDefined!14203 (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) Nil!73289 s!9605 s!9605)) (not (isEmpty!41967 (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) Nil!73289 s!9605 s!9605))))))

(declare-fun bs!1963587 () Bool)

(assert (= bs!1963587 d!2339585))

(assert (=> bs!1963587 m!8205956))

(declare-fun m!8206002 () Bool)

(assert (=> bs!1963587 m!8206002))

(assert (=> b!7731850 d!2339585))

(declare-fun b!7732010 () Bool)

(declare-fun e!4585262 () Option!17587)

(assert (=> b!7732010 (= e!4585262 None!17586)))

(declare-fun b!7732011 () Bool)

(declare-fun lt!2667218 () Unit!168204)

(declare-fun lt!2667217 () Unit!168204)

(assert (=> b!7732011 (= lt!2667218 lt!2667217)))

(declare-fun ++!17766 (List!73413 List!73413) List!73413)

(assert (=> b!7732011 (= (++!17766 (++!17766 Nil!73289 (Cons!73289 (h!79737 s!9605) Nil!73289)) (t!388148 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3317 (List!73413 C!41458 List!73413 List!73413) Unit!168204)

(assert (=> b!7732011 (= lt!2667217 (lemmaMoveElementToOtherListKeepsConcatEq!3317 Nil!73289 (h!79737 s!9605) (t!388148 s!9605) s!9605))))

(assert (=> b!7732011 (= e!4585262 (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) (++!17766 Nil!73289 (Cons!73289 (h!79737 s!9605) Nil!73289)) (t!388148 s!9605) s!9605))))

(declare-fun b!7732012 () Bool)

(declare-fun e!4585265 () Bool)

(declare-fun lt!2667216 () Option!17587)

(assert (=> b!7732012 (= e!4585265 (not (isDefined!14203 lt!2667216)))))

(declare-fun b!7732013 () Bool)

(declare-fun e!4585264 () Bool)

(declare-fun get!26040 (Option!17587) tuple2!69586)

(assert (=> b!7732013 (= e!4585264 (= (++!17766 (_1!38096 (get!26040 lt!2667216)) (_2!38096 (get!26040 lt!2667216))) s!9605))))

(declare-fun b!7732014 () Bool)

(declare-fun e!4585263 () Option!17587)

(assert (=> b!7732014 (= e!4585263 e!4585262)))

(declare-fun c!1425599 () Bool)

(assert (=> b!7732014 (= c!1425599 (is-Nil!73289 s!9605))))

(declare-fun d!2339587 () Bool)

(assert (=> d!2339587 e!4585265))

(declare-fun res!3084004 () Bool)

(assert (=> d!2339587 (=> res!3084004 e!4585265)))

(assert (=> d!2339587 (= res!3084004 e!4585264)))

(declare-fun res!3084007 () Bool)

(assert (=> d!2339587 (=> (not res!3084007) (not e!4585264))))

(assert (=> d!2339587 (= res!3084007 (isDefined!14203 lt!2667216))))

(assert (=> d!2339587 (= lt!2667216 e!4585263)))

(declare-fun c!1425598 () Bool)

(declare-fun e!4585261 () Bool)

(assert (=> d!2339587 (= c!1425598 e!4585261)))

(declare-fun res!3084005 () Bool)

(assert (=> d!2339587 (=> (not res!3084005) (not e!4585261))))

(assert (=> d!2339587 (= res!3084005 (matchR!10058 (regOne!41644 r!14126) Nil!73289))))

(assert (=> d!2339587 (validRegex!10984 (regOne!41644 r!14126))))

(assert (=> d!2339587 (= (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) Nil!73289 s!9605 s!9605) lt!2667216)))

(declare-fun b!7732015 () Bool)

(declare-fun res!3084006 () Bool)

(assert (=> b!7732015 (=> (not res!3084006) (not e!4585264))))

(assert (=> b!7732015 (= res!3084006 (matchR!10058 (regTwo!41644 r!14126) (_2!38096 (get!26040 lt!2667216))))))

(declare-fun b!7732016 () Bool)

(assert (=> b!7732016 (= e!4585263 (Some!17586 (tuple2!69587 Nil!73289 s!9605)))))

(declare-fun b!7732017 () Bool)

(declare-fun res!3084003 () Bool)

(assert (=> b!7732017 (=> (not res!3084003) (not e!4585264))))

(assert (=> b!7732017 (= res!3084003 (matchR!10058 (regOne!41644 r!14126) (_1!38096 (get!26040 lt!2667216))))))

(declare-fun b!7732018 () Bool)

(assert (=> b!7732018 (= e!4585261 (matchR!10058 (regTwo!41644 r!14126) s!9605))))

(assert (= (and d!2339587 res!3084005) b!7732018))

(assert (= (and d!2339587 c!1425598) b!7732016))

(assert (= (and d!2339587 (not c!1425598)) b!7732014))

(assert (= (and b!7732014 c!1425599) b!7732010))

(assert (= (and b!7732014 (not c!1425599)) b!7732011))

(assert (= (and d!2339587 res!3084007) b!7732017))

(assert (= (and b!7732017 res!3084003) b!7732015))

(assert (= (and b!7732015 res!3084006) b!7732013))

(assert (= (and d!2339587 (not res!3084004)) b!7732012))

(declare-fun m!8206010 () Bool)

(assert (=> b!7732017 m!8206010))

(declare-fun m!8206012 () Bool)

(assert (=> b!7732017 m!8206012))

(declare-fun m!8206014 () Bool)

(assert (=> d!2339587 m!8206014))

(declare-fun m!8206016 () Bool)

(assert (=> d!2339587 m!8206016))

(assert (=> d!2339587 m!8205964))

(declare-fun m!8206018 () Bool)

(assert (=> b!7732018 m!8206018))

(assert (=> b!7732013 m!8206010))

(declare-fun m!8206020 () Bool)

(assert (=> b!7732013 m!8206020))

(assert (=> b!7732012 m!8206014))

(assert (=> b!7732015 m!8206010))

(declare-fun m!8206022 () Bool)

(assert (=> b!7732015 m!8206022))

(declare-fun m!8206024 () Bool)

(assert (=> b!7732011 m!8206024))

(assert (=> b!7732011 m!8206024))

(declare-fun m!8206026 () Bool)

(assert (=> b!7732011 m!8206026))

(declare-fun m!8206028 () Bool)

(assert (=> b!7732011 m!8206028))

(assert (=> b!7732011 m!8206024))

(declare-fun m!8206030 () Bool)

(assert (=> b!7732011 m!8206030))

(assert (=> b!7731850 d!2339587))

(declare-fun bs!1963588 () Bool)

(declare-fun d!2339591 () Bool)

(assert (= bs!1963588 (and d!2339591 b!7731850)))

(declare-fun lambda!471316 () Int)

(assert (=> bs!1963588 (= lambda!471316 lambda!471310)))

(assert (=> d!2339591 true))

(assert (=> d!2339591 true))

(assert (=> d!2339591 true))

(assert (=> d!2339591 (= (isDefined!14203 (findConcatSeparation!3617 (regOne!41644 r!14126) (regTwo!41644 r!14126) Nil!73289 s!9605 s!9605)) (Exists!4687 lambda!471316))))

(declare-fun lt!2667221 () Unit!168204)

(declare-fun choose!59317 (Regex!20566 Regex!20566 List!73413) Unit!168204)

(assert (=> d!2339591 (= lt!2667221 (choose!59317 (regOne!41644 r!14126) (regTwo!41644 r!14126) s!9605))))

(assert (=> d!2339591 (validRegex!10984 (regOne!41644 r!14126))))

(assert (=> d!2339591 (= (lemmaFindConcatSeparationEquivalentToExists!3375 (regOne!41644 r!14126) (regTwo!41644 r!14126) s!9605) lt!2667221)))

(declare-fun bs!1963589 () Bool)

(assert (= bs!1963589 d!2339591))

(assert (=> bs!1963589 m!8205956))

(assert (=> bs!1963589 m!8205960))

(assert (=> bs!1963589 m!8205964))

(declare-fun m!8206032 () Bool)

(assert (=> bs!1963589 m!8206032))

(declare-fun m!8206034 () Bool)

(assert (=> bs!1963589 m!8206034))

(assert (=> bs!1963589 m!8205956))

(assert (=> b!7731850 d!2339591))

(declare-fun d!2339593 () Bool)

(declare-fun choose!59318 (Int) Bool)

(assert (=> d!2339593 (= (Exists!4687 lambda!471310) (choose!59318 lambda!471310))))

(declare-fun bs!1963590 () Bool)

(assert (= bs!1963590 d!2339593))

(declare-fun m!8206036 () Bool)

(assert (=> bs!1963590 m!8206036))

(assert (=> b!7731850 d!2339593))

(declare-fun b!7732027 () Bool)

(declare-fun e!4585271 () Bool)

(declare-fun e!4585273 () Bool)

(assert (=> b!7732027 (= e!4585271 e!4585273)))

(declare-fun res!3084016 () Bool)

(assert (=> b!7732027 (= res!3084016 (not (nullable!9041 (reg!20895 (regTwo!41644 r!14126)))))))

(assert (=> b!7732027 (=> (not res!3084016) (not e!4585273))))

(declare-fun d!2339595 () Bool)

(declare-fun res!3084012 () Bool)

(declare-fun e!4585274 () Bool)

(assert (=> d!2339595 (=> res!3084012 e!4585274)))

(assert (=> d!2339595 (= res!3084012 (is-ElementMatch!20566 (regTwo!41644 r!14126)))))

(assert (=> d!2339595 (= (validRegex!10984 (regTwo!41644 r!14126)) e!4585274)))

(declare-fun b!7732028 () Bool)

(declare-fun e!4585272 () Bool)

(declare-fun e!4585276 () Bool)

(assert (=> b!7732028 (= e!4585272 e!4585276)))

(declare-fun res!3084013 () Bool)

(assert (=> b!7732028 (=> (not res!3084013) (not e!4585276))))

(declare-fun call!715598 () Bool)

(assert (=> b!7732028 (= res!3084013 call!715598)))

(declare-fun b!7732029 () Bool)

(declare-fun e!4585275 () Bool)

(assert (=> b!7732029 (= e!4585271 e!4585275)))

(declare-fun c!1425602 () Bool)

(assert (=> b!7732029 (= c!1425602 (is-Union!20566 (regTwo!41644 r!14126)))))

(declare-fun b!7732030 () Bool)

(declare-fun e!4585270 () Bool)

(declare-fun call!715600 () Bool)

(assert (=> b!7732030 (= e!4585270 call!715600)))

(declare-fun bm!715593 () Bool)

(assert (=> bm!715593 (= call!715598 (validRegex!10984 (ite c!1425602 (regOne!41645 (regTwo!41644 r!14126)) (regOne!41644 (regTwo!41644 r!14126)))))))

(declare-fun b!7732031 () Bool)

(declare-fun res!3084014 () Bool)

(assert (=> b!7732031 (=> (not res!3084014) (not e!4585270))))

(assert (=> b!7732031 (= res!3084014 call!715598)))

(assert (=> b!7732031 (= e!4585275 e!4585270)))

(declare-fun b!7732032 () Bool)

(declare-fun res!3084015 () Bool)

(assert (=> b!7732032 (=> res!3084015 e!4585272)))

(assert (=> b!7732032 (= res!3084015 (not (is-Concat!29411 (regTwo!41644 r!14126))))))

(assert (=> b!7732032 (= e!4585275 e!4585272)))

(declare-fun b!7732033 () Bool)

(assert (=> b!7732033 (= e!4585274 e!4585271)))

(declare-fun c!1425603 () Bool)

(assert (=> b!7732033 (= c!1425603 (is-Star!20566 (regTwo!41644 r!14126)))))

(declare-fun bm!715594 () Bool)

(declare-fun call!715599 () Bool)

(assert (=> bm!715594 (= call!715599 (validRegex!10984 (ite c!1425603 (reg!20895 (regTwo!41644 r!14126)) (ite c!1425602 (regTwo!41645 (regTwo!41644 r!14126)) (regTwo!41644 (regTwo!41644 r!14126))))))))

(declare-fun b!7732034 () Bool)

(assert (=> b!7732034 (= e!4585273 call!715599)))

(declare-fun bm!715595 () Bool)

(assert (=> bm!715595 (= call!715600 call!715599)))

(declare-fun b!7732035 () Bool)

(assert (=> b!7732035 (= e!4585276 call!715600)))

(assert (= (and d!2339595 (not res!3084012)) b!7732033))

(assert (= (and b!7732033 c!1425603) b!7732027))

(assert (= (and b!7732033 (not c!1425603)) b!7732029))

(assert (= (and b!7732027 res!3084016) b!7732034))

(assert (= (and b!7732029 c!1425602) b!7732031))

(assert (= (and b!7732029 (not c!1425602)) b!7732032))

(assert (= (and b!7732031 res!3084014) b!7732030))

(assert (= (and b!7732032 (not res!3084015)) b!7732028))

(assert (= (and b!7732028 res!3084013) b!7732035))

(assert (= (or b!7732031 b!7732028) bm!715593))

(assert (= (or b!7732030 b!7732035) bm!715595))

(assert (= (or b!7732034 bm!715595) bm!715594))

(declare-fun m!8206038 () Bool)

(assert (=> b!7732027 m!8206038))

(declare-fun m!8206040 () Bool)

(assert (=> bm!715593 m!8206040))

(declare-fun m!8206042 () Bool)

(assert (=> bm!715594 m!8206042))

(assert (=> b!7731848 d!2339595))

(declare-fun b!7732040 () Bool)

(declare-fun e!4585279 () Bool)

(declare-fun e!4585282 () Bool)

(assert (=> b!7732040 (= e!4585279 e!4585282)))

(declare-fun res!3084021 () Bool)

(assert (=> b!7732040 (= res!3084021 (not (nullable!9041 (reg!20895 (regOne!41644 r!14126)))))))

(assert (=> b!7732040 (=> (not res!3084021) (not e!4585282))))

(declare-fun d!2339597 () Bool)

(declare-fun res!3084017 () Bool)

(declare-fun e!4585283 () Bool)

(assert (=> d!2339597 (=> res!3084017 e!4585283)))

(assert (=> d!2339597 (= res!3084017 (is-ElementMatch!20566 (regOne!41644 r!14126)))))

(assert (=> d!2339597 (= (validRegex!10984 (regOne!41644 r!14126)) e!4585283)))

(declare-fun b!7732041 () Bool)

(declare-fun e!4585280 () Bool)

(declare-fun e!4585285 () Bool)

(assert (=> b!7732041 (= e!4585280 e!4585285)))

(declare-fun res!3084018 () Bool)

(assert (=> b!7732041 (=> (not res!3084018) (not e!4585285))))

(declare-fun call!715601 () Bool)

(assert (=> b!7732041 (= res!3084018 call!715601)))

(declare-fun b!7732042 () Bool)

(declare-fun e!4585284 () Bool)

(assert (=> b!7732042 (= e!4585279 e!4585284)))

(declare-fun c!1425605 () Bool)

(assert (=> b!7732042 (= c!1425605 (is-Union!20566 (regOne!41644 r!14126)))))

(declare-fun b!7732043 () Bool)

(declare-fun e!4585278 () Bool)

(declare-fun call!715603 () Bool)

(assert (=> b!7732043 (= e!4585278 call!715603)))

(declare-fun bm!715596 () Bool)

(assert (=> bm!715596 (= call!715601 (validRegex!10984 (ite c!1425605 (regOne!41645 (regOne!41644 r!14126)) (regOne!41644 (regOne!41644 r!14126)))))))

(declare-fun b!7732044 () Bool)

(declare-fun res!3084019 () Bool)

(assert (=> b!7732044 (=> (not res!3084019) (not e!4585278))))

(assert (=> b!7732044 (= res!3084019 call!715601)))

(assert (=> b!7732044 (= e!4585284 e!4585278)))

(declare-fun b!7732045 () Bool)

(declare-fun res!3084020 () Bool)

(assert (=> b!7732045 (=> res!3084020 e!4585280)))

(assert (=> b!7732045 (= res!3084020 (not (is-Concat!29411 (regOne!41644 r!14126))))))

(assert (=> b!7732045 (= e!4585284 e!4585280)))

(declare-fun b!7732046 () Bool)

(assert (=> b!7732046 (= e!4585283 e!4585279)))

(declare-fun c!1425607 () Bool)

(assert (=> b!7732046 (= c!1425607 (is-Star!20566 (regOne!41644 r!14126)))))

(declare-fun call!715602 () Bool)

(declare-fun bm!715597 () Bool)

(assert (=> bm!715597 (= call!715602 (validRegex!10984 (ite c!1425607 (reg!20895 (regOne!41644 r!14126)) (ite c!1425605 (regTwo!41645 (regOne!41644 r!14126)) (regTwo!41644 (regOne!41644 r!14126))))))))

(declare-fun b!7732047 () Bool)

(assert (=> b!7732047 (= e!4585282 call!715602)))

(declare-fun bm!715598 () Bool)

(assert (=> bm!715598 (= call!715603 call!715602)))

(declare-fun b!7732048 () Bool)

(assert (=> b!7732048 (= e!4585285 call!715603)))

(assert (= (and d!2339597 (not res!3084017)) b!7732046))

(assert (= (and b!7732046 c!1425607) b!7732040))

(assert (= (and b!7732046 (not c!1425607)) b!7732042))

(assert (= (and b!7732040 res!3084021) b!7732047))

(assert (= (and b!7732042 c!1425605) b!7732044))

(assert (= (and b!7732042 (not c!1425605)) b!7732045))

(assert (= (and b!7732044 res!3084019) b!7732043))

(assert (= (and b!7732045 (not res!3084020)) b!7732041))

(assert (= (and b!7732041 res!3084018) b!7732048))

(assert (= (or b!7732044 b!7732041) bm!715596))

(assert (= (or b!7732043 b!7732048) bm!715598))

(assert (= (or b!7732047 bm!715598) bm!715597))

(declare-fun m!8206044 () Bool)

(assert (=> b!7732040 m!8206044))

(declare-fun m!8206046 () Bool)

(assert (=> bm!715596 m!8206046))

(declare-fun m!8206048 () Bool)

(assert (=> bm!715597 m!8206048))

(assert (=> b!7731852 d!2339597))

(declare-fun b!7732082 () Bool)

(declare-fun e!4585298 () Bool)

(declare-fun tp!2268820 () Bool)

(declare-fun tp!2268819 () Bool)

(assert (=> b!7732082 (= e!4585298 (and tp!2268820 tp!2268819))))

(assert (=> b!7731845 (= tp!2268782 e!4585298)))

(declare-fun b!7732079 () Bool)

(assert (=> b!7732079 (= e!4585298 tp_is_empty!51487)))

(declare-fun b!7732081 () Bool)

(declare-fun tp!2268816 () Bool)

(assert (=> b!7732081 (= e!4585298 tp!2268816)))

(declare-fun b!7732080 () Bool)

(declare-fun tp!2268818 () Bool)

(declare-fun tp!2268817 () Bool)

(assert (=> b!7732080 (= e!4585298 (and tp!2268818 tp!2268817))))

(assert (= (and b!7731845 (is-ElementMatch!20566 (regOne!41644 r!14126))) b!7732079))

(assert (= (and b!7731845 (is-Concat!29411 (regOne!41644 r!14126))) b!7732080))

(assert (= (and b!7731845 (is-Star!20566 (regOne!41644 r!14126))) b!7732081))

(assert (= (and b!7731845 (is-Union!20566 (regOne!41644 r!14126))) b!7732082))

(declare-fun b!7732086 () Bool)

(declare-fun e!4585299 () Bool)

(declare-fun tp!2268825 () Bool)

(declare-fun tp!2268824 () Bool)

(assert (=> b!7732086 (= e!4585299 (and tp!2268825 tp!2268824))))

(assert (=> b!7731845 (= tp!2268787 e!4585299)))

(declare-fun b!7732083 () Bool)

(assert (=> b!7732083 (= e!4585299 tp_is_empty!51487)))

(declare-fun b!7732085 () Bool)

(declare-fun tp!2268821 () Bool)

(assert (=> b!7732085 (= e!4585299 tp!2268821)))

(declare-fun b!7732084 () Bool)

(declare-fun tp!2268823 () Bool)

(declare-fun tp!2268822 () Bool)

(assert (=> b!7732084 (= e!4585299 (and tp!2268823 tp!2268822))))

(assert (= (and b!7731845 (is-ElementMatch!20566 (regTwo!41644 r!14126))) b!7732083))

(assert (= (and b!7731845 (is-Concat!29411 (regTwo!41644 r!14126))) b!7732084))

(assert (= (and b!7731845 (is-Star!20566 (regTwo!41644 r!14126))) b!7732085))

(assert (= (and b!7731845 (is-Union!20566 (regTwo!41644 r!14126))) b!7732086))

(declare-fun b!7732091 () Bool)

(declare-fun e!4585302 () Bool)

(declare-fun tp!2268828 () Bool)

(assert (=> b!7732091 (= e!4585302 (and tp_is_empty!51487 tp!2268828))))

(assert (=> b!7731844 (= tp!2268786 e!4585302)))

(assert (= (and b!7731844 (is-Cons!73289 (t!388148 s!9605))) b!7732091))

(declare-fun b!7732095 () Bool)

(declare-fun e!4585303 () Bool)

(declare-fun tp!2268833 () Bool)

(declare-fun tp!2268832 () Bool)

(assert (=> b!7732095 (= e!4585303 (and tp!2268833 tp!2268832))))

(assert (=> b!7731847 (= tp!2268783 e!4585303)))

(declare-fun b!7732092 () Bool)

(assert (=> b!7732092 (= e!4585303 tp_is_empty!51487)))

(declare-fun b!7732094 () Bool)

(declare-fun tp!2268829 () Bool)

(assert (=> b!7732094 (= e!4585303 tp!2268829)))

(declare-fun b!7732093 () Bool)

(declare-fun tp!2268831 () Bool)

(declare-fun tp!2268830 () Bool)

(assert (=> b!7732093 (= e!4585303 (and tp!2268831 tp!2268830))))

(assert (= (and b!7731847 (is-ElementMatch!20566 (regOne!41645 r!14126))) b!7732092))

(assert (= (and b!7731847 (is-Concat!29411 (regOne!41645 r!14126))) b!7732093))

(assert (= (and b!7731847 (is-Star!20566 (regOne!41645 r!14126))) b!7732094))

(assert (= (and b!7731847 (is-Union!20566 (regOne!41645 r!14126))) b!7732095))

(declare-fun b!7732099 () Bool)

(declare-fun e!4585304 () Bool)

(declare-fun tp!2268838 () Bool)

(declare-fun tp!2268837 () Bool)

(assert (=> b!7732099 (= e!4585304 (and tp!2268838 tp!2268837))))

(assert (=> b!7731847 (= tp!2268785 e!4585304)))

(declare-fun b!7732096 () Bool)

(assert (=> b!7732096 (= e!4585304 tp_is_empty!51487)))

(declare-fun b!7732098 () Bool)

(declare-fun tp!2268834 () Bool)

(assert (=> b!7732098 (= e!4585304 tp!2268834)))

(declare-fun b!7732097 () Bool)

(declare-fun tp!2268836 () Bool)

(declare-fun tp!2268835 () Bool)

(assert (=> b!7732097 (= e!4585304 (and tp!2268836 tp!2268835))))

(assert (= (and b!7731847 (is-ElementMatch!20566 (regTwo!41645 r!14126))) b!7732096))

(assert (= (and b!7731847 (is-Concat!29411 (regTwo!41645 r!14126))) b!7732097))

(assert (= (and b!7731847 (is-Star!20566 (regTwo!41645 r!14126))) b!7732098))

(assert (= (and b!7731847 (is-Union!20566 (regTwo!41645 r!14126))) b!7732099))

(declare-fun b!7732103 () Bool)

(declare-fun e!4585305 () Bool)

(declare-fun tp!2268843 () Bool)

(declare-fun tp!2268842 () Bool)

(assert (=> b!7732103 (= e!4585305 (and tp!2268843 tp!2268842))))

(assert (=> b!7731846 (= tp!2268784 e!4585305)))

(declare-fun b!7732100 () Bool)

(assert (=> b!7732100 (= e!4585305 tp_is_empty!51487)))

(declare-fun b!7732102 () Bool)

(declare-fun tp!2268839 () Bool)

(assert (=> b!7732102 (= e!4585305 tp!2268839)))

(declare-fun b!7732101 () Bool)

(declare-fun tp!2268841 () Bool)

(declare-fun tp!2268840 () Bool)

(assert (=> b!7732101 (= e!4585305 (and tp!2268841 tp!2268840))))

(assert (= (and b!7731846 (is-ElementMatch!20566 (reg!20895 r!14126))) b!7732100))

(assert (= (and b!7731846 (is-Concat!29411 (reg!20895 r!14126))) b!7732101))

(assert (= (and b!7731846 (is-Star!20566 (reg!20895 r!14126))) b!7732102))

(assert (= (and b!7731846 (is-Union!20566 (reg!20895 r!14126))) b!7732103))

(push 1)

(assert (not b!7731959))

(assert (not b!7732080))

(assert tp_is_empty!51487)

(assert (not bm!715583))

(assert (not d!2339587))

(assert (not b!7732017))

(assert (not b!7732085))

(assert (not b!7732084))

(assert (not b!7732101))

(assert (not bm!715596))

(assert (not b!7731952))

(assert (not d!2339585))

(assert (not b!7731956))

(assert (not b!7732093))

(assert (not bm!715593))

(assert (not b!7732027))

(assert (not bm!715597))

(assert (not b!7732103))

(assert (not b!7732082))

(assert (not b!7732015))

(assert (not b!7731914))

(assert (not b!7732098))

(assert (not d!2339581))

(assert (not b!7732097))

(assert (not b!7732086))

(assert (not b!7732094))

(assert (not b!7732095))

(assert (not b!7732102))

(assert (not b!7732011))

(assert (not d!2339591))

(assert (not b!7731955))

(assert (not bm!715579))

(assert (not d!2339593))

(assert (not b!7731958))

(assert (not bm!715594))

(assert (not b!7732013))

(assert (not b!7732081))

(assert (not b!7732091))

(assert (not bm!715578))

(assert (not b!7732012))

(assert (not b!7732099))

(assert (not b!7732040))

(assert (not b!7731964))

(assert (not b!7732018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

