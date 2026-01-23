; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667828 () Bool)

(assert start!667828)

(declare-fun bs!1858288 () Bool)

(declare-fun b!6960185 () Bool)

(assert (= bs!1858288 (and b!6960185 start!667828)))

(declare-fun lambda!397108 () Int)

(declare-fun lambda!397107 () Int)

(assert (=> bs!1858288 (not (= lambda!397108 lambda!397107))))

(assert (=> b!6960185 true))

(declare-fun b!6960176 () Bool)

(declare-fun e!4184885 () Bool)

(declare-fun tp_is_empty!43385 () Bool)

(assert (=> b!6960176 (= e!4184885 tp_is_empty!43385)))

(declare-fun b!6960177 () Bool)

(declare-fun e!4184883 () Bool)

(declare-datatypes ((C!34430 0))(
  ( (C!34431 (val!26917 Int)) )
))
(declare-datatypes ((Regex!17080 0))(
  ( (ElementMatch!17080 (c!1290596 C!34430)) (Concat!25925 (regOne!34672 Regex!17080) (regTwo!34672 Regex!17080)) (EmptyExpr!17080) (Star!17080 (reg!17409 Regex!17080)) (EmptyLang!17080) (Union!17080 (regOne!34673 Regex!17080) (regTwo!34673 Regex!17080)) )
))
(declare-fun r!13765 () Regex!17080)

(declare-fun validRegex!8778 (Regex!17080) Bool)

(assert (=> b!6960177 (= e!4184883 (validRegex!8778 r!13765))))

(declare-fun b!6960178 () Bool)

(declare-fun e!4184887 () Bool)

(declare-fun e!4184888 () Bool)

(assert (=> b!6960178 (= e!4184887 (not e!4184888))))

(declare-fun res!2840014 () Bool)

(assert (=> b!6960178 (=> res!2840014 e!4184888)))

(assert (=> b!6960178 (= res!2840014 (not (is-Union!17080 r!13765)))))

(declare-fun lt!2478860 () Bool)

(declare-datatypes ((List!66845 0))(
  ( (Nil!66721) (Cons!66721 (h!73169 C!34430) (t!380588 List!66845)) )
))
(declare-fun s!9351 () List!66845)

(declare-fun matchRSpec!4101 (Regex!17080 List!66845) Bool)

(assert (=> b!6960178 (= lt!2478860 (matchRSpec!4101 r!13765 s!9351))))

(declare-fun matchR!9186 (Regex!17080 List!66845) Bool)

(assert (=> b!6960178 (= lt!2478860 (matchR!9186 r!13765 s!9351))))

(declare-datatypes ((Unit!160820 0))(
  ( (Unit!160821) )
))
(declare-fun lt!2478859 () Unit!160820)

(declare-fun mainMatchTheorem!4095 (Regex!17080 List!66845) Unit!160820)

(assert (=> b!6960178 (= lt!2478859 (mainMatchTheorem!4095 r!13765 s!9351))))

(declare-fun res!2840019 () Bool)

(assert (=> start!667828 (=> (not res!2840019) (not e!4184887))))

(declare-datatypes ((List!66846 0))(
  ( (Nil!66722) (Cons!66722 (h!73170 Regex!17080) (t!380589 List!66846)) )
))
(declare-fun l!9142 () List!66846)

(declare-fun forall!15951 (List!66846 Int) Bool)

(assert (=> start!667828 (= res!2840019 (forall!15951 l!9142 lambda!397107))))

(assert (=> start!667828 e!4184887))

(declare-fun e!4184886 () Bool)

(assert (=> start!667828 e!4184886))

(assert (=> start!667828 e!4184885))

(declare-fun e!4184884 () Bool)

(assert (=> start!667828 e!4184884))

(declare-fun b!6960179 () Bool)

(assert (=> b!6960179 (= e!4184888 e!4184883)))

(declare-fun res!2840013 () Bool)

(assert (=> b!6960179 (=> res!2840013 e!4184883)))

(declare-fun lt!2478858 () List!66846)

(declare-fun isEmpty!38945 (List!66846) Bool)

(assert (=> b!6960179 (= res!2840013 (not (isEmpty!38945 lt!2478858)))))

(declare-fun tail!13026 (List!66846) List!66846)

(assert (=> b!6960179 (= lt!2478858 (tail!13026 l!9142))))

(declare-fun b!6960180 () Bool)

(declare-fun tp!1918926 () Bool)

(assert (=> b!6960180 (= e!4184885 tp!1918926)))

(declare-fun b!6960181 () Bool)

(declare-fun tp!1918924 () Bool)

(declare-fun tp!1918923 () Bool)

(assert (=> b!6960181 (= e!4184886 (and tp!1918924 tp!1918923))))

(declare-fun b!6960182 () Bool)

(declare-fun tp!1918927 () Bool)

(declare-fun tp!1918928 () Bool)

(assert (=> b!6960182 (= e!4184885 (and tp!1918927 tp!1918928))))

(declare-fun b!6960183 () Bool)

(declare-fun res!2840016 () Bool)

(assert (=> b!6960183 (=> res!2840016 e!4184883)))

(declare-fun generalisedUnion!2555 (List!66846) Regex!17080)

(assert (=> b!6960183 (= res!2840016 (not (= (generalisedUnion!2555 lt!2478858) EmptyLang!17080)))))

(declare-fun b!6960184 () Bool)

(declare-fun tp!1918925 () Bool)

(declare-fun tp!1918929 () Bool)

(assert (=> b!6960184 (= e!4184885 (and tp!1918925 tp!1918929))))

(declare-fun res!2840015 () Bool)

(assert (=> b!6960185 (=> res!2840015 e!4184883)))

(declare-fun exists!2858 (List!66846 Int) Bool)

(assert (=> b!6960185 (= res!2840015 (not (= lt!2478860 (exists!2858 l!9142 lambda!397108))))))

(declare-fun b!6960186 () Bool)

(declare-fun res!2840018 () Bool)

(assert (=> b!6960186 (=> (not res!2840018) (not e!4184887))))

(assert (=> b!6960186 (= res!2840018 (= r!13765 (generalisedUnion!2555 l!9142)))))

(declare-fun b!6960187 () Bool)

(declare-fun tp!1918922 () Bool)

(assert (=> b!6960187 (= e!4184884 (and tp_is_empty!43385 tp!1918922))))

(declare-fun b!6960188 () Bool)

(declare-fun res!2840017 () Bool)

(assert (=> b!6960188 (=> res!2840017 e!4184888)))

(assert (=> b!6960188 (= res!2840017 (isEmpty!38945 l!9142))))

(assert (= (and start!667828 res!2840019) b!6960186))

(assert (= (and b!6960186 res!2840018) b!6960178))

(assert (= (and b!6960178 (not res!2840014)) b!6960188))

(assert (= (and b!6960188 (not res!2840017)) b!6960179))

(assert (= (and b!6960179 (not res!2840013)) b!6960183))

(assert (= (and b!6960183 (not res!2840016)) b!6960185))

(assert (= (and b!6960185 (not res!2840015)) b!6960177))

(assert (= (and start!667828 (is-Cons!66722 l!9142)) b!6960181))

(assert (= (and start!667828 (is-ElementMatch!17080 r!13765)) b!6960176))

(assert (= (and start!667828 (is-Concat!25925 r!13765)) b!6960184))

(assert (= (and start!667828 (is-Star!17080 r!13765)) b!6960180))

(assert (= (and start!667828 (is-Union!17080 r!13765)) b!6960182))

(assert (= (and start!667828 (is-Cons!66721 s!9351)) b!6960187))

(declare-fun m!7655832 () Bool)

(assert (=> b!6960186 m!7655832))

(declare-fun m!7655834 () Bool)

(assert (=> b!6960177 m!7655834))

(declare-fun m!7655836 () Bool)

(assert (=> b!6960188 m!7655836))

(declare-fun m!7655838 () Bool)

(assert (=> b!6960179 m!7655838))

(declare-fun m!7655840 () Bool)

(assert (=> b!6960179 m!7655840))

(declare-fun m!7655842 () Bool)

(assert (=> b!6960185 m!7655842))

(declare-fun m!7655844 () Bool)

(assert (=> b!6960178 m!7655844))

(declare-fun m!7655846 () Bool)

(assert (=> b!6960178 m!7655846))

(declare-fun m!7655848 () Bool)

(assert (=> b!6960178 m!7655848))

(declare-fun m!7655850 () Bool)

(assert (=> b!6960183 m!7655850))

(declare-fun m!7655852 () Bool)

(assert (=> start!667828 m!7655852))

(push 1)

(assert (not b!6960188))

(assert (not b!6960181))

(assert (not b!6960184))

(assert (not b!6960185))

(assert (not b!6960180))

(assert (not b!6960187))

(assert (not b!6960183))

(assert (not start!667828))

(assert (not b!6960178))

(assert (not b!6960182))

(assert (not b!6960186))

(assert tp_is_empty!43385)

(assert (not b!6960177))

(assert (not b!6960179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6960276 () Bool)

(assert (=> b!6960276 true))

(assert (=> b!6960276 true))

(declare-fun bs!1858290 () Bool)

(declare-fun b!6960273 () Bool)

(assert (= bs!1858290 (and b!6960273 b!6960276)))

(declare-fun lambda!397122 () Int)

(declare-fun lambda!397121 () Int)

(assert (=> bs!1858290 (not (= lambda!397122 lambda!397121))))

(assert (=> b!6960273 true))

(assert (=> b!6960273 true))

(declare-fun b!6960272 () Bool)

(declare-fun e!4184938 () Bool)

(declare-fun call!631987 () Bool)

(assert (=> b!6960272 (= e!4184938 call!631987)))

(declare-fun e!4184935 () Bool)

(declare-fun call!631986 () Bool)

(assert (=> b!6960273 (= e!4184935 call!631986)))

(declare-fun b!6960274 () Bool)

(declare-fun e!4184936 () Bool)

(assert (=> b!6960274 (= e!4184938 e!4184936)))

(declare-fun res!2840065 () Bool)

(assert (=> b!6960274 (= res!2840065 (not (is-EmptyLang!17080 r!13765)))))

(assert (=> b!6960274 (=> (not res!2840065) (not e!4184936))))

(declare-fun b!6960275 () Bool)

(declare-fun e!4184934 () Bool)

(declare-fun e!4184937 () Bool)

(assert (=> b!6960275 (= e!4184934 e!4184937)))

(declare-fun res!2840067 () Bool)

(assert (=> b!6960275 (= res!2840067 (matchRSpec!4101 (regOne!34673 r!13765) s!9351))))

(assert (=> b!6960275 (=> res!2840067 e!4184937)))

(declare-fun bm!631981 () Bool)

(declare-fun isEmpty!38947 (List!66845) Bool)

(assert (=> bm!631981 (= call!631987 (isEmpty!38947 s!9351))))

(declare-fun d!2169952 () Bool)

(declare-fun c!1290608 () Bool)

(assert (=> d!2169952 (= c!1290608 (is-EmptyExpr!17080 r!13765))))

(assert (=> d!2169952 (= (matchRSpec!4101 r!13765 s!9351) e!4184938)))

(declare-fun e!4184933 () Bool)

(assert (=> b!6960276 (= e!4184933 call!631986)))

(declare-fun b!6960277 () Bool)

(declare-fun c!1290609 () Bool)

(assert (=> b!6960277 (= c!1290609 (is-Union!17080 r!13765))))

(declare-fun e!4184939 () Bool)

(assert (=> b!6960277 (= e!4184939 e!4184934)))

(declare-fun b!6960278 () Bool)

(declare-fun c!1290607 () Bool)

(assert (=> b!6960278 (= c!1290607 (is-ElementMatch!17080 r!13765))))

(assert (=> b!6960278 (= e!4184936 e!4184939)))

(declare-fun b!6960279 () Bool)

(declare-fun res!2840066 () Bool)

(assert (=> b!6960279 (=> res!2840066 e!4184933)))

(assert (=> b!6960279 (= res!2840066 call!631987)))

(assert (=> b!6960279 (= e!4184935 e!4184933)))

(declare-fun b!6960280 () Bool)

(assert (=> b!6960280 (= e!4184939 (= s!9351 (Cons!66721 (c!1290596 r!13765) Nil!66721)))))

(declare-fun b!6960281 () Bool)

(assert (=> b!6960281 (= e!4184937 (matchRSpec!4101 (regTwo!34673 r!13765) s!9351))))

(declare-fun bm!631982 () Bool)

(declare-fun c!1290606 () Bool)

(declare-fun Exists!4067 (Int) Bool)

(assert (=> bm!631982 (= call!631986 (Exists!4067 (ite c!1290606 lambda!397121 lambda!397122)))))

(declare-fun b!6960282 () Bool)

(assert (=> b!6960282 (= e!4184934 e!4184935)))

(assert (=> b!6960282 (= c!1290606 (is-Star!17080 r!13765))))

(assert (= (and d!2169952 c!1290608) b!6960272))

(assert (= (and d!2169952 (not c!1290608)) b!6960274))

(assert (= (and b!6960274 res!2840065) b!6960278))

(assert (= (and b!6960278 c!1290607) b!6960280))

(assert (= (and b!6960278 (not c!1290607)) b!6960277))

(assert (= (and b!6960277 c!1290609) b!6960275))

(assert (= (and b!6960277 (not c!1290609)) b!6960282))

(assert (= (and b!6960275 (not res!2840067)) b!6960281))

(assert (= (and b!6960282 c!1290606) b!6960279))

(assert (= (and b!6960282 (not c!1290606)) b!6960273))

(assert (= (and b!6960279 (not res!2840066)) b!6960276))

(assert (= (or b!6960276 b!6960273) bm!631982))

(assert (= (or b!6960272 b!6960279) bm!631981))

(declare-fun m!7655880 () Bool)

(assert (=> b!6960275 m!7655880))

(declare-fun m!7655882 () Bool)

(assert (=> bm!631981 m!7655882))

(declare-fun m!7655884 () Bool)

(assert (=> b!6960281 m!7655884))

(declare-fun m!7655886 () Bool)

(assert (=> bm!631982 m!7655886))

(assert (=> b!6960178 d!2169952))

(declare-fun b!6960345 () Bool)

(declare-fun e!4184976 () Bool)

(declare-fun derivativeStep!5511 (Regex!17080 C!34430) Regex!17080)

(declare-fun head!13970 (List!66845) C!34430)

(declare-fun tail!13028 (List!66845) List!66845)

(assert (=> b!6960345 (= e!4184976 (matchR!9186 (derivativeStep!5511 r!13765 (head!13970 s!9351)) (tail!13028 s!9351)))))

(declare-fun b!6960346 () Bool)

(declare-fun e!4184972 () Bool)

(declare-fun lt!2478875 () Bool)

(declare-fun call!631990 () Bool)

(assert (=> b!6960346 (= e!4184972 (= lt!2478875 call!631990))))

(declare-fun b!6960347 () Bool)

(declare-fun res!2840093 () Bool)

(declare-fun e!4184974 () Bool)

(assert (=> b!6960347 (=> res!2840093 e!4184974)))

(declare-fun e!4184975 () Bool)

(assert (=> b!6960347 (= res!2840093 e!4184975)))

(declare-fun res!2840097 () Bool)

(assert (=> b!6960347 (=> (not res!2840097) (not e!4184975))))

(assert (=> b!6960347 (= res!2840097 lt!2478875)))

(declare-fun b!6960348 () Bool)

(assert (=> b!6960348 (= e!4184975 (= (head!13970 s!9351) (c!1290596 r!13765)))))

(declare-fun b!6960349 () Bool)

(declare-fun res!2840091 () Bool)

(assert (=> b!6960349 (=> (not res!2840091) (not e!4184975))))

(assert (=> b!6960349 (= res!2840091 (isEmpty!38947 (tail!13028 s!9351)))))

(declare-fun b!6960350 () Bool)

(declare-fun nullable!6885 (Regex!17080) Bool)

(assert (=> b!6960350 (= e!4184976 (nullable!6885 r!13765))))

(declare-fun b!6960352 () Bool)

(declare-fun e!4184977 () Bool)

(assert (=> b!6960352 (= e!4184972 e!4184977)))

(declare-fun c!1290628 () Bool)

(assert (=> b!6960352 (= c!1290628 (is-EmptyLang!17080 r!13765))))

(declare-fun b!6960353 () Bool)

(declare-fun e!4184973 () Bool)

(assert (=> b!6960353 (= e!4184973 (not (= (head!13970 s!9351) (c!1290596 r!13765))))))

(declare-fun b!6960354 () Bool)

(declare-fun res!2840094 () Bool)

(assert (=> b!6960354 (=> res!2840094 e!4184973)))

(assert (=> b!6960354 (= res!2840094 (not (isEmpty!38947 (tail!13028 s!9351))))))

(declare-fun bm!631985 () Bool)

(assert (=> bm!631985 (= call!631990 (isEmpty!38947 s!9351))))

(declare-fun b!6960355 () Bool)

(declare-fun e!4184978 () Bool)

(assert (=> b!6960355 (= e!4184974 e!4184978)))

(declare-fun res!2840090 () Bool)

(assert (=> b!6960355 (=> (not res!2840090) (not e!4184978))))

(assert (=> b!6960355 (= res!2840090 (not lt!2478875))))

(declare-fun b!6960356 () Bool)

(declare-fun res!2840095 () Bool)

(assert (=> b!6960356 (=> (not res!2840095) (not e!4184975))))

(assert (=> b!6960356 (= res!2840095 (not call!631990))))

(declare-fun b!6960357 () Bool)

(assert (=> b!6960357 (= e!4184977 (not lt!2478875))))

(declare-fun b!6960358 () Bool)

(assert (=> b!6960358 (= e!4184978 e!4184973)))

(declare-fun res!2840092 () Bool)

(assert (=> b!6960358 (=> res!2840092 e!4184973)))

(assert (=> b!6960358 (= res!2840092 call!631990)))

(declare-fun d!2169956 () Bool)

(assert (=> d!2169956 e!4184972))

(declare-fun c!1290629 () Bool)

(assert (=> d!2169956 (= c!1290629 (is-EmptyExpr!17080 r!13765))))

(assert (=> d!2169956 (= lt!2478875 e!4184976)))

(declare-fun c!1290630 () Bool)

(assert (=> d!2169956 (= c!1290630 (isEmpty!38947 s!9351))))

(assert (=> d!2169956 (validRegex!8778 r!13765)))

(assert (=> d!2169956 (= (matchR!9186 r!13765 s!9351) lt!2478875)))

(declare-fun b!6960351 () Bool)

(declare-fun res!2840096 () Bool)

(assert (=> b!6960351 (=> res!2840096 e!4184974)))

(assert (=> b!6960351 (= res!2840096 (not (is-ElementMatch!17080 r!13765)))))

(assert (=> b!6960351 (= e!4184977 e!4184974)))

(assert (= (and d!2169956 c!1290630) b!6960350))

(assert (= (and d!2169956 (not c!1290630)) b!6960345))

(assert (= (and d!2169956 c!1290629) b!6960346))

(assert (= (and d!2169956 (not c!1290629)) b!6960352))

(assert (= (and b!6960352 c!1290628) b!6960357))

(assert (= (and b!6960352 (not c!1290628)) b!6960351))

(assert (= (and b!6960351 (not res!2840096)) b!6960347))

(assert (= (and b!6960347 res!2840097) b!6960356))

(assert (= (and b!6960356 res!2840095) b!6960349))

(assert (= (and b!6960349 res!2840091) b!6960348))

(assert (= (and b!6960347 (not res!2840093)) b!6960355))

(assert (= (and b!6960355 res!2840090) b!6960358))

(assert (= (and b!6960358 (not res!2840092)) b!6960354))

(assert (= (and b!6960354 (not res!2840094)) b!6960353))

(assert (= (or b!6960346 b!6960356 b!6960358) bm!631985))

(declare-fun m!7655906 () Bool)

(assert (=> b!6960353 m!7655906))

(assert (=> b!6960345 m!7655906))

(assert (=> b!6960345 m!7655906))

(declare-fun m!7655908 () Bool)

(assert (=> b!6960345 m!7655908))

(declare-fun m!7655910 () Bool)

(assert (=> b!6960345 m!7655910))

(assert (=> b!6960345 m!7655908))

(assert (=> b!6960345 m!7655910))

(declare-fun m!7655912 () Bool)

(assert (=> b!6960345 m!7655912))

(assert (=> d!2169956 m!7655882))

(assert (=> d!2169956 m!7655834))

(declare-fun m!7655914 () Bool)

(assert (=> b!6960350 m!7655914))

(assert (=> bm!631985 m!7655882))

(assert (=> b!6960349 m!7655910))

(assert (=> b!6960349 m!7655910))

(declare-fun m!7655916 () Bool)

(assert (=> b!6960349 m!7655916))

(assert (=> b!6960354 m!7655910))

(assert (=> b!6960354 m!7655910))

(assert (=> b!6960354 m!7655916))

(assert (=> b!6960348 m!7655906))

(assert (=> b!6960178 d!2169956))

(declare-fun d!2169960 () Bool)

(assert (=> d!2169960 (= (matchR!9186 r!13765 s!9351) (matchRSpec!4101 r!13765 s!9351))))

(declare-fun lt!2478878 () Unit!160820)

(declare-fun choose!51878 (Regex!17080 List!66845) Unit!160820)

(assert (=> d!2169960 (= lt!2478878 (choose!51878 r!13765 s!9351))))

(assert (=> d!2169960 (validRegex!8778 r!13765)))

(assert (=> d!2169960 (= (mainMatchTheorem!4095 r!13765 s!9351) lt!2478878)))

(declare-fun bs!1858293 () Bool)

(assert (= bs!1858293 d!2169960))

(assert (=> bs!1858293 m!7655846))

(assert (=> bs!1858293 m!7655844))

(declare-fun m!7655918 () Bool)

(assert (=> bs!1858293 m!7655918))

(assert (=> bs!1858293 m!7655834))

(assert (=> b!6960178 d!2169960))

(declare-fun bs!1858294 () Bool)

(declare-fun d!2169962 () Bool)

(assert (= bs!1858294 (and d!2169962 start!667828)))

(declare-fun lambda!397126 () Int)

(assert (=> bs!1858294 (= lambda!397126 lambda!397107)))

(declare-fun bs!1858295 () Bool)

(assert (= bs!1858295 (and d!2169962 b!6960185)))

(assert (=> bs!1858295 (not (= lambda!397126 lambda!397108))))

(declare-fun b!6960383 () Bool)

(declare-fun e!4184998 () Regex!17080)

(assert (=> b!6960383 (= e!4184998 EmptyLang!17080)))

(declare-fun b!6960384 () Bool)

(declare-fun e!4184995 () Regex!17080)

(assert (=> b!6960384 (= e!4184995 e!4184998)))

(declare-fun c!1290641 () Bool)

(assert (=> b!6960384 (= c!1290641 (is-Cons!66722 lt!2478858))))

(declare-fun b!6960385 () Bool)

(declare-fun e!4184994 () Bool)

(declare-fun lt!2478881 () Regex!17080)

(declare-fun isUnion!1465 (Regex!17080) Bool)

(assert (=> b!6960385 (= e!4184994 (isUnion!1465 lt!2478881))))

(declare-fun e!4184996 () Bool)

(assert (=> d!2169962 e!4184996))

(declare-fun res!2840103 () Bool)

(assert (=> d!2169962 (=> (not res!2840103) (not e!4184996))))

(assert (=> d!2169962 (= res!2840103 (validRegex!8778 lt!2478881))))

(assert (=> d!2169962 (= lt!2478881 e!4184995)))

(declare-fun c!1290643 () Bool)

(declare-fun e!4184997 () Bool)

(assert (=> d!2169962 (= c!1290643 e!4184997)))

(declare-fun res!2840102 () Bool)

(assert (=> d!2169962 (=> (not res!2840102) (not e!4184997))))

(assert (=> d!2169962 (= res!2840102 (is-Cons!66722 lt!2478858))))

(assert (=> d!2169962 (forall!15951 lt!2478858 lambda!397126)))

(assert (=> d!2169962 (= (generalisedUnion!2555 lt!2478858) lt!2478881)))

(declare-fun b!6960386 () Bool)

(declare-fun e!4184993 () Bool)

(assert (=> b!6960386 (= e!4184993 e!4184994)))

(declare-fun c!1290644 () Bool)

(assert (=> b!6960386 (= c!1290644 (isEmpty!38945 (tail!13026 lt!2478858)))))

(declare-fun b!6960387 () Bool)

(assert (=> b!6960387 (= e!4184996 e!4184993)))

(declare-fun c!1290642 () Bool)

(assert (=> b!6960387 (= c!1290642 (isEmpty!38945 lt!2478858))))

(declare-fun b!6960388 () Bool)

(declare-fun head!13971 (List!66846) Regex!17080)

(assert (=> b!6960388 (= e!4184994 (= lt!2478881 (head!13971 lt!2478858)))))

(declare-fun b!6960389 () Bool)

(assert (=> b!6960389 (= e!4184998 (Union!17080 (h!73170 lt!2478858) (generalisedUnion!2555 (t!380589 lt!2478858))))))

(declare-fun b!6960390 () Bool)

(declare-fun isEmptyLang!2037 (Regex!17080) Bool)

(assert (=> b!6960390 (= e!4184993 (isEmptyLang!2037 lt!2478881))))

(declare-fun b!6960391 () Bool)

(assert (=> b!6960391 (= e!4184997 (isEmpty!38945 (t!380589 lt!2478858)))))

(declare-fun b!6960392 () Bool)

(assert (=> b!6960392 (= e!4184995 (h!73170 lt!2478858))))

(assert (= (and d!2169962 res!2840102) b!6960391))

(assert (= (and d!2169962 c!1290643) b!6960392))

(assert (= (and d!2169962 (not c!1290643)) b!6960384))

(assert (= (and b!6960384 c!1290641) b!6960389))

(assert (= (and b!6960384 (not c!1290641)) b!6960383))

(assert (= (and d!2169962 res!2840103) b!6960387))

(assert (= (and b!6960387 c!1290642) b!6960390))

(assert (= (and b!6960387 (not c!1290642)) b!6960386))

(assert (= (and b!6960386 c!1290644) b!6960388))

(assert (= (and b!6960386 (not c!1290644)) b!6960385))

(assert (=> b!6960387 m!7655838))

(declare-fun m!7655920 () Bool)

(assert (=> d!2169962 m!7655920))

(declare-fun m!7655922 () Bool)

(assert (=> d!2169962 m!7655922))

(declare-fun m!7655924 () Bool)

(assert (=> b!6960389 m!7655924))

(declare-fun m!7655926 () Bool)

(assert (=> b!6960388 m!7655926))

(declare-fun m!7655928 () Bool)

(assert (=> b!6960385 m!7655928))

(declare-fun m!7655930 () Bool)

(assert (=> b!6960386 m!7655930))

(assert (=> b!6960386 m!7655930))

(declare-fun m!7655932 () Bool)

(assert (=> b!6960386 m!7655932))

(declare-fun m!7655934 () Bool)

(assert (=> b!6960391 m!7655934))

(declare-fun m!7655936 () Bool)

(assert (=> b!6960390 m!7655936))

(assert (=> b!6960183 d!2169962))

(declare-fun d!2169964 () Bool)

(assert (=> d!2169964 (= (isEmpty!38945 l!9142) (is-Nil!66722 l!9142))))

(assert (=> b!6960188 d!2169964))

(declare-fun b!6960435 () Bool)

(declare-fun e!4185033 () Bool)

(declare-fun call!631997 () Bool)

(assert (=> b!6960435 (= e!4185033 call!631997)))

(declare-fun c!1290655 () Bool)

(declare-fun c!1290656 () Bool)

(declare-fun bm!631992 () Bool)

(assert (=> bm!631992 (= call!631997 (validRegex!8778 (ite c!1290655 (reg!17409 r!13765) (ite c!1290656 (regTwo!34673 r!13765) (regTwo!34672 r!13765)))))))

(declare-fun b!6960436 () Bool)

(declare-fun e!4185031 () Bool)

(declare-fun e!4185028 () Bool)

(assert (=> b!6960436 (= e!4185031 e!4185028)))

(declare-fun res!2840130 () Bool)

(assert (=> b!6960436 (=> (not res!2840130) (not e!4185028))))

(declare-fun call!631999 () Bool)

(assert (=> b!6960436 (= res!2840130 call!631999)))

(declare-fun bm!631993 () Bool)

(assert (=> bm!631993 (= call!631999 (validRegex!8778 (ite c!1290656 (regOne!34673 r!13765) (regOne!34672 r!13765))))))

(declare-fun b!6960437 () Bool)

(declare-fun e!4185029 () Bool)

(declare-fun e!4185030 () Bool)

(assert (=> b!6960437 (= e!4185029 e!4185030)))

(assert (=> b!6960437 (= c!1290655 (is-Star!17080 r!13765))))

(declare-fun b!6960438 () Bool)

(declare-fun res!2840129 () Bool)

(declare-fun e!4185032 () Bool)

(assert (=> b!6960438 (=> (not res!2840129) (not e!4185032))))

(assert (=> b!6960438 (= res!2840129 call!631999)))

(declare-fun e!4185027 () Bool)

(assert (=> b!6960438 (= e!4185027 e!4185032)))

(declare-fun b!6960439 () Bool)

(declare-fun res!2840126 () Bool)

(assert (=> b!6960439 (=> res!2840126 e!4185031)))

(assert (=> b!6960439 (= res!2840126 (not (is-Concat!25925 r!13765)))))

(assert (=> b!6960439 (= e!4185027 e!4185031)))

(declare-fun b!6960440 () Bool)

(assert (=> b!6960440 (= e!4185030 e!4185027)))

(assert (=> b!6960440 (= c!1290656 (is-Union!17080 r!13765))))

(declare-fun d!2169966 () Bool)

(declare-fun res!2840128 () Bool)

(assert (=> d!2169966 (=> res!2840128 e!4185029)))

(assert (=> d!2169966 (= res!2840128 (is-ElementMatch!17080 r!13765))))

(assert (=> d!2169966 (= (validRegex!8778 r!13765) e!4185029)))

(declare-fun b!6960441 () Bool)

(declare-fun call!631998 () Bool)

(assert (=> b!6960441 (= e!4185032 call!631998)))

(declare-fun b!6960442 () Bool)

(assert (=> b!6960442 (= e!4185030 e!4185033)))

(declare-fun res!2840127 () Bool)

(assert (=> b!6960442 (= res!2840127 (not (nullable!6885 (reg!17409 r!13765))))))

(assert (=> b!6960442 (=> (not res!2840127) (not e!4185033))))

(declare-fun bm!631994 () Bool)

(assert (=> bm!631994 (= call!631998 call!631997)))

(declare-fun b!6960443 () Bool)

(assert (=> b!6960443 (= e!4185028 call!631998)))

(assert (= (and d!2169966 (not res!2840128)) b!6960437))

(assert (= (and b!6960437 c!1290655) b!6960442))

(assert (= (and b!6960437 (not c!1290655)) b!6960440))

(assert (= (and b!6960442 res!2840127) b!6960435))

(assert (= (and b!6960440 c!1290656) b!6960438))

(assert (= (and b!6960440 (not c!1290656)) b!6960439))

(assert (= (and b!6960438 res!2840129) b!6960441))

(assert (= (and b!6960439 (not res!2840126)) b!6960436))

(assert (= (and b!6960436 res!2840130) b!6960443))

(assert (= (or b!6960438 b!6960436) bm!631993))

(assert (= (or b!6960441 b!6960443) bm!631994))

(assert (= (or b!6960435 bm!631994) bm!631992))

(declare-fun m!7655938 () Bool)

(assert (=> bm!631992 m!7655938))

(declare-fun m!7655940 () Bool)

(assert (=> bm!631993 m!7655940))

(declare-fun m!7655942 () Bool)

(assert (=> b!6960442 m!7655942))

(assert (=> b!6960177 d!2169966))

(declare-fun d!2169968 () Bool)

(assert (=> d!2169968 (= (isEmpty!38945 lt!2478858) (is-Nil!66722 lt!2478858))))

(assert (=> b!6960179 d!2169968))

(declare-fun d!2169970 () Bool)

(assert (=> d!2169970 (= (tail!13026 l!9142) (t!380589 l!9142))))

(assert (=> b!6960179 d!2169970))

(declare-fun bs!1858296 () Bool)

(declare-fun d!2169972 () Bool)

(assert (= bs!1858296 (and d!2169972 start!667828)))

(declare-fun lambda!397129 () Int)

(assert (=> bs!1858296 (= lambda!397129 lambda!397107)))

(declare-fun bs!1858297 () Bool)

(assert (= bs!1858297 (and d!2169972 b!6960185)))

(assert (=> bs!1858297 (not (= lambda!397129 lambda!397108))))

(declare-fun bs!1858298 () Bool)

(assert (= bs!1858298 (and d!2169972 d!2169962)))

(assert (=> bs!1858298 (= lambda!397129 lambda!397126)))

(declare-fun b!6960444 () Bool)

(declare-fun e!4185039 () Regex!17080)

(assert (=> b!6960444 (= e!4185039 EmptyLang!17080)))

(declare-fun b!6960445 () Bool)

(declare-fun e!4185036 () Regex!17080)

(assert (=> b!6960445 (= e!4185036 e!4185039)))

(declare-fun c!1290657 () Bool)

(assert (=> b!6960445 (= c!1290657 (is-Cons!66722 l!9142))))

(declare-fun b!6960446 () Bool)

(declare-fun e!4185035 () Bool)

(declare-fun lt!2478882 () Regex!17080)

(assert (=> b!6960446 (= e!4185035 (isUnion!1465 lt!2478882))))

(declare-fun e!4185037 () Bool)

(assert (=> d!2169972 e!4185037))

(declare-fun res!2840132 () Bool)

(assert (=> d!2169972 (=> (not res!2840132) (not e!4185037))))

(assert (=> d!2169972 (= res!2840132 (validRegex!8778 lt!2478882))))

(assert (=> d!2169972 (= lt!2478882 e!4185036)))

(declare-fun c!1290659 () Bool)

(declare-fun e!4185038 () Bool)

(assert (=> d!2169972 (= c!1290659 e!4185038)))

(declare-fun res!2840131 () Bool)

(assert (=> d!2169972 (=> (not res!2840131) (not e!4185038))))

(assert (=> d!2169972 (= res!2840131 (is-Cons!66722 l!9142))))

(assert (=> d!2169972 (forall!15951 l!9142 lambda!397129)))

(assert (=> d!2169972 (= (generalisedUnion!2555 l!9142) lt!2478882)))

(declare-fun b!6960447 () Bool)

(declare-fun e!4185034 () Bool)

(assert (=> b!6960447 (= e!4185034 e!4185035)))

(declare-fun c!1290660 () Bool)

(assert (=> b!6960447 (= c!1290660 (isEmpty!38945 (tail!13026 l!9142)))))

(declare-fun b!6960448 () Bool)

(assert (=> b!6960448 (= e!4185037 e!4185034)))

(declare-fun c!1290658 () Bool)

(assert (=> b!6960448 (= c!1290658 (isEmpty!38945 l!9142))))

(declare-fun b!6960449 () Bool)

(assert (=> b!6960449 (= e!4185035 (= lt!2478882 (head!13971 l!9142)))))

(declare-fun b!6960450 () Bool)

(assert (=> b!6960450 (= e!4185039 (Union!17080 (h!73170 l!9142) (generalisedUnion!2555 (t!380589 l!9142))))))

(declare-fun b!6960451 () Bool)

(assert (=> b!6960451 (= e!4185034 (isEmptyLang!2037 lt!2478882))))

(declare-fun b!6960452 () Bool)

(assert (=> b!6960452 (= e!4185038 (isEmpty!38945 (t!380589 l!9142)))))

(declare-fun b!6960453 () Bool)

(assert (=> b!6960453 (= e!4185036 (h!73170 l!9142))))

(assert (= (and d!2169972 res!2840131) b!6960452))

(assert (= (and d!2169972 c!1290659) b!6960453))

(assert (= (and d!2169972 (not c!1290659)) b!6960445))

(assert (= (and b!6960445 c!1290657) b!6960450))

(assert (= (and b!6960445 (not c!1290657)) b!6960444))

(assert (= (and d!2169972 res!2840132) b!6960448))

(assert (= (and b!6960448 c!1290658) b!6960451))

(assert (= (and b!6960448 (not c!1290658)) b!6960447))

(assert (= (and b!6960447 c!1290660) b!6960449))

(assert (= (and b!6960447 (not c!1290660)) b!6960446))

(assert (=> b!6960448 m!7655836))

(declare-fun m!7655944 () Bool)

(assert (=> d!2169972 m!7655944))

(declare-fun m!7655946 () Bool)

(assert (=> d!2169972 m!7655946))

(declare-fun m!7655948 () Bool)

(assert (=> b!6960450 m!7655948))

(declare-fun m!7655950 () Bool)

(assert (=> b!6960449 m!7655950))

(declare-fun m!7655952 () Bool)

(assert (=> b!6960446 m!7655952))

(assert (=> b!6960447 m!7655840))

(assert (=> b!6960447 m!7655840))

(declare-fun m!7655954 () Bool)

(assert (=> b!6960447 m!7655954))

(declare-fun m!7655956 () Bool)

(assert (=> b!6960452 m!7655956))

(declare-fun m!7655958 () Bool)

(assert (=> b!6960451 m!7655958))

(assert (=> b!6960186 d!2169972))

(declare-fun d!2169974 () Bool)

(declare-fun res!2840141 () Bool)

(declare-fun e!4185046 () Bool)

(assert (=> d!2169974 (=> res!2840141 e!4185046)))

(assert (=> d!2169974 (= res!2840141 (is-Nil!66722 l!9142))))

(assert (=> d!2169974 (= (forall!15951 l!9142 lambda!397107) e!4185046)))

(declare-fun b!6960462 () Bool)

(declare-fun e!4185047 () Bool)

(assert (=> b!6960462 (= e!4185046 e!4185047)))

(declare-fun res!2840142 () Bool)

(assert (=> b!6960462 (=> (not res!2840142) (not e!4185047))))

(declare-fun dynLambda!26608 (Int Regex!17080) Bool)

(assert (=> b!6960462 (= res!2840142 (dynLambda!26608 lambda!397107 (h!73170 l!9142)))))

(declare-fun b!6960463 () Bool)

(assert (=> b!6960463 (= e!4185047 (forall!15951 (t!380589 l!9142) lambda!397107))))

(assert (= (and d!2169974 (not res!2840141)) b!6960462))

(assert (= (and b!6960462 res!2840142) b!6960463))

(declare-fun b_lambda!260547 () Bool)

(assert (=> (not b_lambda!260547) (not b!6960462)))

(declare-fun m!7655960 () Bool)

(assert (=> b!6960462 m!7655960))

(declare-fun m!7655962 () Bool)

(assert (=> b!6960463 m!7655962))

(assert (=> start!667828 d!2169974))

(declare-fun bs!1858299 () Bool)

(declare-fun d!2169976 () Bool)

(assert (= bs!1858299 (and d!2169976 start!667828)))

(declare-fun lambda!397134 () Int)

(assert (=> bs!1858299 (not (= lambda!397134 lambda!397107))))

(declare-fun bs!1858300 () Bool)

(assert (= bs!1858300 (and d!2169976 b!6960185)))

(assert (=> bs!1858300 (not (= lambda!397134 lambda!397108))))

(declare-fun bs!1858301 () Bool)

(assert (= bs!1858301 (and d!2169976 d!2169962)))

(assert (=> bs!1858301 (not (= lambda!397134 lambda!397126))))

(declare-fun bs!1858302 () Bool)

(assert (= bs!1858302 (and d!2169976 d!2169972)))

(assert (=> bs!1858302 (not (= lambda!397134 lambda!397129))))

(assert (=> d!2169976 true))

(declare-fun order!27761 () Int)

(declare-fun dynLambda!26609 (Int Int) Int)

(assert (=> d!2169976 (< (dynLambda!26609 order!27761 lambda!397108) (dynLambda!26609 order!27761 lambda!397134))))

(assert (=> d!2169976 (= (exists!2858 l!9142 lambda!397108) (not (forall!15951 l!9142 lambda!397134)))))

(declare-fun bs!1858303 () Bool)

(assert (= bs!1858303 d!2169976))

(declare-fun m!7655964 () Bool)

(assert (=> bs!1858303 m!7655964))

(assert (=> b!6960185 d!2169976))

(declare-fun b!6960476 () Bool)

(declare-fun e!4185050 () Bool)

(assert (=> b!6960476 (= e!4185050 tp_is_empty!43385)))

(declare-fun b!6960478 () Bool)

(declare-fun tp!1918967 () Bool)

(assert (=> b!6960478 (= e!4185050 tp!1918967)))

(declare-fun b!6960477 () Bool)

(declare-fun tp!1918964 () Bool)

(declare-fun tp!1918968 () Bool)

(assert (=> b!6960477 (= e!4185050 (and tp!1918964 tp!1918968))))

(assert (=> b!6960182 (= tp!1918927 e!4185050)))

(declare-fun b!6960479 () Bool)

(declare-fun tp!1918965 () Bool)

(declare-fun tp!1918966 () Bool)

(assert (=> b!6960479 (= e!4185050 (and tp!1918965 tp!1918966))))

(assert (= (and b!6960182 (is-ElementMatch!17080 (regOne!34673 r!13765))) b!6960476))

(assert (= (and b!6960182 (is-Concat!25925 (regOne!34673 r!13765))) b!6960477))

(assert (= (and b!6960182 (is-Star!17080 (regOne!34673 r!13765))) b!6960478))

(assert (= (and b!6960182 (is-Union!17080 (regOne!34673 r!13765))) b!6960479))

(declare-fun b!6960480 () Bool)

(declare-fun e!4185051 () Bool)

(assert (=> b!6960480 (= e!4185051 tp_is_empty!43385)))

(declare-fun b!6960482 () Bool)

(declare-fun tp!1918972 () Bool)

(assert (=> b!6960482 (= e!4185051 tp!1918972)))

(declare-fun b!6960481 () Bool)

(declare-fun tp!1918969 () Bool)

(declare-fun tp!1918973 () Bool)

(assert (=> b!6960481 (= e!4185051 (and tp!1918969 tp!1918973))))

(assert (=> b!6960182 (= tp!1918928 e!4185051)))

(declare-fun b!6960483 () Bool)

(declare-fun tp!1918970 () Bool)

(declare-fun tp!1918971 () Bool)

(assert (=> b!6960483 (= e!4185051 (and tp!1918970 tp!1918971))))

(assert (= (and b!6960182 (is-ElementMatch!17080 (regTwo!34673 r!13765))) b!6960480))

(assert (= (and b!6960182 (is-Concat!25925 (regTwo!34673 r!13765))) b!6960481))

(assert (= (and b!6960182 (is-Star!17080 (regTwo!34673 r!13765))) b!6960482))

(assert (= (and b!6960182 (is-Union!17080 (regTwo!34673 r!13765))) b!6960483))

(declare-fun b!6960488 () Bool)

(declare-fun e!4185054 () Bool)

(declare-fun tp!1918976 () Bool)

(assert (=> b!6960488 (= e!4185054 (and tp_is_empty!43385 tp!1918976))))

(assert (=> b!6960187 (= tp!1918922 e!4185054)))

(assert (= (and b!6960187 (is-Cons!66721 (t!380588 s!9351))) b!6960488))

(declare-fun b!6960489 () Bool)

(declare-fun e!4185055 () Bool)

(assert (=> b!6960489 (= e!4185055 tp_is_empty!43385)))

(declare-fun b!6960491 () Bool)

(declare-fun tp!1918980 () Bool)

(assert (=> b!6960491 (= e!4185055 tp!1918980)))

(declare-fun b!6960490 () Bool)

(declare-fun tp!1918977 () Bool)

(declare-fun tp!1918981 () Bool)

(assert (=> b!6960490 (= e!4185055 (and tp!1918977 tp!1918981))))

(assert (=> b!6960181 (= tp!1918924 e!4185055)))

(declare-fun b!6960492 () Bool)

(declare-fun tp!1918978 () Bool)

(declare-fun tp!1918979 () Bool)

(assert (=> b!6960492 (= e!4185055 (and tp!1918978 tp!1918979))))

(assert (= (and b!6960181 (is-ElementMatch!17080 (h!73170 l!9142))) b!6960489))

(assert (= (and b!6960181 (is-Concat!25925 (h!73170 l!9142))) b!6960490))

(assert (= (and b!6960181 (is-Star!17080 (h!73170 l!9142))) b!6960491))

(assert (= (and b!6960181 (is-Union!17080 (h!73170 l!9142))) b!6960492))

(declare-fun b!6960497 () Bool)

(declare-fun e!4185058 () Bool)

(declare-fun tp!1918986 () Bool)

(declare-fun tp!1918987 () Bool)

(assert (=> b!6960497 (= e!4185058 (and tp!1918986 tp!1918987))))

(assert (=> b!6960181 (= tp!1918923 e!4185058)))

(assert (= (and b!6960181 (is-Cons!66722 (t!380589 l!9142))) b!6960497))

(declare-fun b!6960498 () Bool)

(declare-fun e!4185059 () Bool)

(assert (=> b!6960498 (= e!4185059 tp_is_empty!43385)))

(declare-fun b!6960500 () Bool)

(declare-fun tp!1918991 () Bool)

(assert (=> b!6960500 (= e!4185059 tp!1918991)))

(declare-fun b!6960499 () Bool)

(declare-fun tp!1918988 () Bool)

(declare-fun tp!1918992 () Bool)

(assert (=> b!6960499 (= e!4185059 (and tp!1918988 tp!1918992))))

(assert (=> b!6960184 (= tp!1918925 e!4185059)))

(declare-fun b!6960501 () Bool)

(declare-fun tp!1918989 () Bool)

(declare-fun tp!1918990 () Bool)

(assert (=> b!6960501 (= e!4185059 (and tp!1918989 tp!1918990))))

(assert (= (and b!6960184 (is-ElementMatch!17080 (regOne!34672 r!13765))) b!6960498))

(assert (= (and b!6960184 (is-Concat!25925 (regOne!34672 r!13765))) b!6960499))

(assert (= (and b!6960184 (is-Star!17080 (regOne!34672 r!13765))) b!6960500))

(assert (= (and b!6960184 (is-Union!17080 (regOne!34672 r!13765))) b!6960501))

(declare-fun b!6960502 () Bool)

(declare-fun e!4185060 () Bool)

(assert (=> b!6960502 (= e!4185060 tp_is_empty!43385)))

(declare-fun b!6960504 () Bool)

(declare-fun tp!1918996 () Bool)

(assert (=> b!6960504 (= e!4185060 tp!1918996)))

(declare-fun b!6960503 () Bool)

(declare-fun tp!1918993 () Bool)

(declare-fun tp!1918997 () Bool)

(assert (=> b!6960503 (= e!4185060 (and tp!1918993 tp!1918997))))

(assert (=> b!6960184 (= tp!1918929 e!4185060)))

(declare-fun b!6960505 () Bool)

(declare-fun tp!1918994 () Bool)

(declare-fun tp!1918995 () Bool)

(assert (=> b!6960505 (= e!4185060 (and tp!1918994 tp!1918995))))

(assert (= (and b!6960184 (is-ElementMatch!17080 (regTwo!34672 r!13765))) b!6960502))

(assert (= (and b!6960184 (is-Concat!25925 (regTwo!34672 r!13765))) b!6960503))

(assert (= (and b!6960184 (is-Star!17080 (regTwo!34672 r!13765))) b!6960504))

(assert (= (and b!6960184 (is-Union!17080 (regTwo!34672 r!13765))) b!6960505))

(declare-fun b!6960506 () Bool)

(declare-fun e!4185061 () Bool)

(assert (=> b!6960506 (= e!4185061 tp_is_empty!43385)))

(declare-fun b!6960508 () Bool)

(declare-fun tp!1919001 () Bool)

(assert (=> b!6960508 (= e!4185061 tp!1919001)))

(declare-fun b!6960507 () Bool)

(declare-fun tp!1918998 () Bool)

(declare-fun tp!1919002 () Bool)

(assert (=> b!6960507 (= e!4185061 (and tp!1918998 tp!1919002))))

(assert (=> b!6960180 (= tp!1918926 e!4185061)))

(declare-fun b!6960509 () Bool)

(declare-fun tp!1918999 () Bool)

(declare-fun tp!1919000 () Bool)

(assert (=> b!6960509 (= e!4185061 (and tp!1918999 tp!1919000))))

(assert (= (and b!6960180 (is-ElementMatch!17080 (reg!17409 r!13765))) b!6960506))

(assert (= (and b!6960180 (is-Concat!25925 (reg!17409 r!13765))) b!6960507))

(assert (= (and b!6960180 (is-Star!17080 (reg!17409 r!13765))) b!6960508))

(assert (= (and b!6960180 (is-Union!17080 (reg!17409 r!13765))) b!6960509))

(declare-fun b_lambda!260549 () Bool)

(assert (= b_lambda!260547 (or start!667828 b_lambda!260549)))

(declare-fun bs!1858304 () Bool)

(declare-fun d!2169978 () Bool)

(assert (= bs!1858304 (and d!2169978 start!667828)))

(assert (=> bs!1858304 (= (dynLambda!26608 lambda!397107 (h!73170 l!9142)) (validRegex!8778 (h!73170 l!9142)))))

(declare-fun m!7655966 () Bool)

(assert (=> bs!1858304 m!7655966))

(assert (=> b!6960462 d!2169978))

(push 1)

(assert (not b!6960509))

(assert (not b!6960497))

(assert (not b!6960499))

(assert (not b!6960448))

(assert (not b!6960354))

(assert (not b!6960479))

(assert (not b!6960500))

(assert (not b!6960447))

(assert (not b!6960451))

(assert (not bs!1858304))

(assert (not b!6960505))

(assert (not d!2169962))

(assert (not b!6960386))

(assert (not bm!631982))

(assert (not d!2169956))

(assert (not b!6960388))

(assert (not b!6960501))

(assert (not d!2169972))

(assert (not b!6960488))

(assert (not b!6960490))

(assert (not b!6960503))

(assert (not b!6960385))

(assert (not b!6960350))

(assert (not b!6960492))

(assert (not b!6960481))

(assert (not b!6960391))

(assert (not bm!631993))

(assert (not b!6960483))

(assert (not b!6960442))

(assert (not b!6960349))

(assert (not b!6960452))

(assert (not b!6960348))

(assert tp_is_empty!43385)

(assert (not b!6960281))

(assert (not b!6960504))

(assert (not b!6960450))

(assert (not b!6960491))

(assert (not b_lambda!260549))

(assert (not d!2169960))

(assert (not d!2169976))

(assert (not bm!631985))

(assert (not b!6960508))

(assert (not bm!631992))

(assert (not b!6960463))

(assert (not b!6960482))

(assert (not b!6960449))

(assert (not b!6960507))

(assert (not b!6960353))

(assert (not b!6960477))

(assert (not b!6960275))

(assert (not b!6960345))

(assert (not b!6960446))

(assert (not bm!631981))

(assert (not b!6960389))

(assert (not b!6960387))

(assert (not b!6960478))

(assert (not b!6960390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

