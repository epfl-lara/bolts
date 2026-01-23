; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236106 () Bool)

(assert start!236106)

(declare-fun b!2408947 () Bool)

(declare-fun e!1533787 () Bool)

(declare-datatypes ((C!14298 0))(
  ( (C!14299 (val!8391 Int)) )
))
(declare-datatypes ((Regex!7070 0))(
  ( (ElementMatch!7070 (c!383736 C!14298)) (Concat!11706 (regOne!14652 Regex!7070) (regTwo!14652 Regex!7070)) (EmptyExpr!7070) (Star!7070 (reg!7399 Regex!7070)) (EmptyLang!7070) (Union!7070 (regOne!14653 Regex!7070) (regTwo!14653 Regex!7070)) )
))
(declare-fun lt!873265 () Regex!7070)

(declare-datatypes ((List!28378 0))(
  ( (Nil!28280) (Cons!28280 (h!33681 C!14298) (t!208355 List!28378)) )
))
(declare-fun s!9460 () List!28378)

(declare-fun matchR!3187 (Regex!7070 List!28378) Bool)

(assert (=> b!2408947 (= e!1533787 (matchR!3187 lt!873265 s!9460))))

(declare-fun b!2408948 () Bool)

(declare-fun e!1533783 () Bool)

(declare-fun e!1533782 () Bool)

(assert (=> b!2408948 (= e!1533783 e!1533782)))

(declare-fun res!1023070 () Bool)

(assert (=> b!2408948 (=> res!1023070 e!1533782)))

(declare-datatypes ((List!28379 0))(
  ( (Nil!28281) (Cons!28281 (h!33682 Regex!7070) (t!208356 List!28379)) )
))
(declare-fun lt!873266 () List!28379)

(declare-fun isEmpty!16283 (List!28379) Bool)

(assert (=> b!2408948 (= res!1023070 (not (isEmpty!16283 lt!873266)))))

(declare-fun l!9164 () List!28379)

(declare-fun tail!3633 (List!28379) List!28379)

(assert (=> b!2408948 (= lt!873266 (tail!3633 l!9164))))

(declare-fun b!2408949 () Bool)

(declare-fun e!1533784 () Bool)

(declare-fun tp_is_empty!11553 () Bool)

(assert (=> b!2408949 (= e!1533784 tp_is_empty!11553)))

(declare-fun b!2408950 () Bool)

(declare-fun tp!766494 () Bool)

(declare-fun tp!766496 () Bool)

(assert (=> b!2408950 (= e!1533784 (and tp!766494 tp!766496))))

(declare-fun b!2408951 () Bool)

(declare-fun res!1023068 () Bool)

(declare-fun e!1533788 () Bool)

(assert (=> b!2408951 (=> (not res!1023068) (not e!1533788))))

(declare-fun r!13927 () Regex!7070)

(declare-fun generalisedConcat!171 (List!28379) Regex!7070)

(assert (=> b!2408951 (= res!1023068 (= r!13927 (generalisedConcat!171 l!9164)))))

(declare-fun b!2408952 () Bool)

(declare-fun tp!766497 () Bool)

(declare-fun tp!766498 () Bool)

(assert (=> b!2408952 (= e!1533784 (and tp!766497 tp!766498))))

(declare-fun b!2408954 () Bool)

(declare-fun e!1533786 () Bool)

(assert (=> b!2408954 (= e!1533782 e!1533786)))

(declare-fun res!1023072 () Bool)

(assert (=> b!2408954 (=> res!1023072 e!1533786)))

(declare-fun lt!873264 () Regex!7070)

(assert (=> b!2408954 (= res!1023072 (not (matchR!3187 lt!873264 s!9460)))))

(declare-fun head!5361 (List!28379) Regex!7070)

(assert (=> b!2408954 (= lt!873264 (head!5361 l!9164))))

(declare-fun b!2408955 () Bool)

(assert (=> b!2408955 (= e!1533788 (not e!1533783))))

(declare-fun res!1023067 () Bool)

(assert (=> b!2408955 (=> res!1023067 e!1533783)))

(assert (=> b!2408955 (= res!1023067 (or (is-Concat!11706 r!13927) (is-EmptyExpr!7070 r!13927)))))

(declare-fun matchRSpec!919 (Regex!7070 List!28378) Bool)

(assert (=> b!2408955 (= (matchR!3187 r!13927 s!9460) (matchRSpec!919 r!13927 s!9460))))

(declare-datatypes ((Unit!41411 0))(
  ( (Unit!41412) )
))
(declare-fun lt!873267 () Unit!41411)

(declare-fun mainMatchTheorem!919 (Regex!7070 List!28378) Unit!41411)

(assert (=> b!2408955 (= lt!873267 (mainMatchTheorem!919 r!13927 s!9460))))

(declare-fun b!2408956 () Bool)

(declare-fun tp!766492 () Bool)

(assert (=> b!2408956 (= e!1533784 tp!766492)))

(declare-fun b!2408957 () Bool)

(declare-fun res!1023065 () Bool)

(assert (=> b!2408957 (=> res!1023065 e!1533783)))

(assert (=> b!2408957 (= res!1023065 (isEmpty!16283 l!9164))))

(declare-fun b!2408958 () Bool)

(assert (=> b!2408958 (= e!1533786 (not (= l!9164 Nil!28281)))))

(assert (=> b!2408958 e!1533787))

(declare-fun res!1023066 () Bool)

(assert (=> b!2408958 (=> (not res!1023066) (not e!1533787))))

(declare-fun ++!6999 (List!28378 List!28378) List!28378)

(assert (=> b!2408958 (= res!1023066 (matchR!3187 lt!873265 (++!6999 s!9460 Nil!28280)))))

(assert (=> b!2408958 (= lt!873265 (Concat!11706 lt!873264 EmptyExpr!7070))))

(declare-fun lt!873263 () Unit!41411)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!69 (Regex!7070 Regex!7070 List!28378 List!28378) Unit!41411)

(assert (=> b!2408958 (= lt!873263 (lemmaTwoRegexMatchThenConcatMatchesConcatString!69 lt!873264 EmptyExpr!7070 s!9460 Nil!28280))))

(declare-fun b!2408959 () Bool)

(declare-fun e!1533781 () Bool)

(declare-fun tp!766493 () Bool)

(declare-fun tp!766495 () Bool)

(assert (=> b!2408959 (= e!1533781 (and tp!766493 tp!766495))))

(declare-fun b!2408960 () Bool)

(declare-fun res!1023071 () Bool)

(assert (=> b!2408960 (=> res!1023071 e!1533782)))

(assert (=> b!2408960 (= res!1023071 (not (= (generalisedConcat!171 lt!873266) EmptyExpr!7070)))))

(declare-fun res!1023069 () Bool)

(assert (=> start!236106 (=> (not res!1023069) (not e!1533788))))

(declare-fun lambda!90662 () Int)

(declare-fun forall!5704 (List!28379 Int) Bool)

(assert (=> start!236106 (= res!1023069 (forall!5704 l!9164 lambda!90662))))

(assert (=> start!236106 e!1533788))

(assert (=> start!236106 e!1533781))

(assert (=> start!236106 e!1533784))

(declare-fun e!1533785 () Bool)

(assert (=> start!236106 e!1533785))

(declare-fun b!2408953 () Bool)

(declare-fun tp!766499 () Bool)

(assert (=> b!2408953 (= e!1533785 (and tp_is_empty!11553 tp!766499))))

(assert (= (and start!236106 res!1023069) b!2408951))

(assert (= (and b!2408951 res!1023068) b!2408955))

(assert (= (and b!2408955 (not res!1023067)) b!2408957))

(assert (= (and b!2408957 (not res!1023065)) b!2408948))

(assert (= (and b!2408948 (not res!1023070)) b!2408960))

(assert (= (and b!2408960 (not res!1023071)) b!2408954))

(assert (= (and b!2408954 (not res!1023072)) b!2408958))

(assert (= (and b!2408958 res!1023066) b!2408947))

(assert (= (and start!236106 (is-Cons!28281 l!9164)) b!2408959))

(assert (= (and start!236106 (is-ElementMatch!7070 r!13927)) b!2408949))

(assert (= (and start!236106 (is-Concat!11706 r!13927)) b!2408950))

(assert (= (and start!236106 (is-Star!7070 r!13927)) b!2408956))

(assert (= (and start!236106 (is-Union!7070 r!13927)) b!2408952))

(assert (= (and start!236106 (is-Cons!28280 s!9460)) b!2408953))

(declare-fun m!2801147 () Bool)

(assert (=> b!2408948 m!2801147))

(declare-fun m!2801149 () Bool)

(assert (=> b!2408948 m!2801149))

(declare-fun m!2801151 () Bool)

(assert (=> start!236106 m!2801151))

(declare-fun m!2801153 () Bool)

(assert (=> b!2408947 m!2801153))

(declare-fun m!2801155 () Bool)

(assert (=> b!2408951 m!2801155))

(declare-fun m!2801157 () Bool)

(assert (=> b!2408958 m!2801157))

(assert (=> b!2408958 m!2801157))

(declare-fun m!2801159 () Bool)

(assert (=> b!2408958 m!2801159))

(declare-fun m!2801161 () Bool)

(assert (=> b!2408958 m!2801161))

(declare-fun m!2801163 () Bool)

(assert (=> b!2408955 m!2801163))

(declare-fun m!2801165 () Bool)

(assert (=> b!2408955 m!2801165))

(declare-fun m!2801167 () Bool)

(assert (=> b!2408955 m!2801167))

(declare-fun m!2801169 () Bool)

(assert (=> b!2408957 m!2801169))

(declare-fun m!2801171 () Bool)

(assert (=> b!2408954 m!2801171))

(declare-fun m!2801173 () Bool)

(assert (=> b!2408954 m!2801173))

(declare-fun m!2801175 () Bool)

(assert (=> b!2408960 m!2801175))

(push 1)

(assert (not start!236106))

(assert (not b!2408958))

(assert (not b!2408959))

(assert (not b!2408951))

(assert (not b!2408960))

(assert tp_is_empty!11553)

(assert (not b!2408956))

(assert (not b!2408947))

(assert (not b!2408948))

(assert (not b!2408954))

(assert (not b!2408955))

(assert (not b!2408952))

(assert (not b!2408950))

(assert (not b!2408957))

(assert (not b!2408953))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2409035 () Bool)

(declare-fun e!1533829 () Bool)

(declare-fun e!1533830 () Bool)

(assert (=> b!2409035 (= e!1533829 e!1533830)))

(declare-fun res!1023115 () Bool)

(assert (=> b!2409035 (=> res!1023115 e!1533830)))

(declare-fun call!147147 () Bool)

(assert (=> b!2409035 (= res!1023115 call!147147)))

(declare-fun b!2409036 () Bool)

(declare-fun e!1533832 () Bool)

(declare-fun lt!873287 () Bool)

(assert (=> b!2409036 (= e!1533832 (= lt!873287 call!147147))))

(declare-fun b!2409037 () Bool)

(declare-fun e!1533835 () Bool)

(declare-fun derivativeStep!1771 (Regex!7070 C!14298) Regex!7070)

(declare-fun head!5363 (List!28378) C!14298)

(declare-fun tail!3635 (List!28378) List!28378)

(assert (=> b!2409037 (= e!1533835 (matchR!3187 (derivativeStep!1771 lt!873265 (head!5363 (++!6999 s!9460 Nil!28280))) (tail!3635 (++!6999 s!9460 Nil!28280))))))

(declare-fun b!2409038 () Bool)

(declare-fun res!1023120 () Bool)

(declare-fun e!1533831 () Bool)

(assert (=> b!2409038 (=> (not res!1023120) (not e!1533831))))

(assert (=> b!2409038 (= res!1023120 (not call!147147))))

(declare-fun b!2409039 () Bool)

(declare-fun res!1023113 () Bool)

(declare-fun e!1533833 () Bool)

(assert (=> b!2409039 (=> res!1023113 e!1533833)))

(assert (=> b!2409039 (= res!1023113 e!1533831)))

(declare-fun res!1023118 () Bool)

(assert (=> b!2409039 (=> (not res!1023118) (not e!1533831))))

(assert (=> b!2409039 (= res!1023118 lt!873287)))

(declare-fun b!2409040 () Bool)

(assert (=> b!2409040 (= e!1533833 e!1533829)))

(declare-fun res!1023119 () Bool)

(assert (=> b!2409040 (=> (not res!1023119) (not e!1533829))))

(assert (=> b!2409040 (= res!1023119 (not lt!873287))))

(declare-fun b!2409041 () Bool)

(declare-fun res!1023117 () Bool)

(assert (=> b!2409041 (=> res!1023117 e!1533830)))

(declare-fun isEmpty!16285 (List!28378) Bool)

(assert (=> b!2409041 (= res!1023117 (not (isEmpty!16285 (tail!3635 (++!6999 s!9460 Nil!28280)))))))

(declare-fun b!2409042 () Bool)

(declare-fun e!1533834 () Bool)

(assert (=> b!2409042 (= e!1533834 (not lt!873287))))

(declare-fun b!2409043 () Bool)

(assert (=> b!2409043 (= e!1533831 (= (head!5363 (++!6999 s!9460 Nil!28280)) (c!383736 lt!873265)))))

(declare-fun b!2409045 () Bool)

(assert (=> b!2409045 (= e!1533832 e!1533834)))

(declare-fun c!383747 () Bool)

(assert (=> b!2409045 (= c!383747 (is-EmptyLang!7070 lt!873265))))

(declare-fun b!2409046 () Bool)

(declare-fun nullable!2114 (Regex!7070) Bool)

(assert (=> b!2409046 (= e!1533835 (nullable!2114 lt!873265))))

(declare-fun b!2409047 () Bool)

(declare-fun res!1023114 () Bool)

(assert (=> b!2409047 (=> res!1023114 e!1533833)))

(assert (=> b!2409047 (= res!1023114 (not (is-ElementMatch!7070 lt!873265)))))

(assert (=> b!2409047 (= e!1533834 e!1533833)))

(declare-fun bm!147142 () Bool)

(assert (=> bm!147142 (= call!147147 (isEmpty!16285 (++!6999 s!9460 Nil!28280)))))

(declare-fun b!2409048 () Bool)

(declare-fun res!1023116 () Bool)

(assert (=> b!2409048 (=> (not res!1023116) (not e!1533831))))

(assert (=> b!2409048 (= res!1023116 (isEmpty!16285 (tail!3635 (++!6999 s!9460 Nil!28280))))))

(declare-fun b!2409044 () Bool)

(assert (=> b!2409044 (= e!1533830 (not (= (head!5363 (++!6999 s!9460 Nil!28280)) (c!383736 lt!873265))))))

(declare-fun d!700386 () Bool)

(assert (=> d!700386 e!1533832))

(declare-fun c!383746 () Bool)

(assert (=> d!700386 (= c!383746 (is-EmptyExpr!7070 lt!873265))))

(assert (=> d!700386 (= lt!873287 e!1533835)))

(declare-fun c!383748 () Bool)

(assert (=> d!700386 (= c!383748 (isEmpty!16285 (++!6999 s!9460 Nil!28280)))))

(declare-fun validRegex!2794 (Regex!7070) Bool)

(assert (=> d!700386 (validRegex!2794 lt!873265)))

(assert (=> d!700386 (= (matchR!3187 lt!873265 (++!6999 s!9460 Nil!28280)) lt!873287)))

(assert (= (and d!700386 c!383748) b!2409046))

(assert (= (and d!700386 (not c!383748)) b!2409037))

(assert (= (and d!700386 c!383746) b!2409036))

(assert (= (and d!700386 (not c!383746)) b!2409045))

(assert (= (and b!2409045 c!383747) b!2409042))

(assert (= (and b!2409045 (not c!383747)) b!2409047))

(assert (= (and b!2409047 (not res!1023114)) b!2409039))

(assert (= (and b!2409039 res!1023118) b!2409038))

(assert (= (and b!2409038 res!1023120) b!2409048))

(assert (= (and b!2409048 res!1023116) b!2409043))

(assert (= (and b!2409039 (not res!1023113)) b!2409040))

(assert (= (and b!2409040 res!1023119) b!2409035))

(assert (= (and b!2409035 (not res!1023115)) b!2409041))

(assert (= (and b!2409041 (not res!1023117)) b!2409044))

(assert (= (or b!2409036 b!2409035 b!2409038) bm!147142))

(assert (=> b!2409048 m!2801157))

(declare-fun m!2801207 () Bool)

(assert (=> b!2409048 m!2801207))

(assert (=> b!2409048 m!2801207))

(declare-fun m!2801209 () Bool)

(assert (=> b!2409048 m!2801209))

(assert (=> b!2409044 m!2801157))

(declare-fun m!2801211 () Bool)

(assert (=> b!2409044 m!2801211))

(assert (=> b!2409037 m!2801157))

(assert (=> b!2409037 m!2801211))

(assert (=> b!2409037 m!2801211))

(declare-fun m!2801213 () Bool)

(assert (=> b!2409037 m!2801213))

(assert (=> b!2409037 m!2801157))

(assert (=> b!2409037 m!2801207))

(assert (=> b!2409037 m!2801213))

(assert (=> b!2409037 m!2801207))

(declare-fun m!2801215 () Bool)

(assert (=> b!2409037 m!2801215))

(assert (=> b!2409043 m!2801157))

(assert (=> b!2409043 m!2801211))

(assert (=> b!2409041 m!2801157))

(assert (=> b!2409041 m!2801207))

(assert (=> b!2409041 m!2801207))

(assert (=> b!2409041 m!2801209))

(assert (=> d!700386 m!2801157))

(declare-fun m!2801217 () Bool)

(assert (=> d!700386 m!2801217))

(declare-fun m!2801219 () Bool)

(assert (=> d!700386 m!2801219))

(assert (=> bm!147142 m!2801157))

(assert (=> bm!147142 m!2801217))

(declare-fun m!2801221 () Bool)

(assert (=> b!2409046 m!2801221))

(assert (=> b!2408958 d!700386))

(declare-fun b!2409084 () Bool)

(declare-fun e!1533853 () Bool)

(declare-fun lt!873290 () List!28378)

(assert (=> b!2409084 (= e!1533853 (or (not (= Nil!28280 Nil!28280)) (= lt!873290 s!9460)))))

(declare-fun b!2409083 () Bool)

(declare-fun res!1023142 () Bool)

(assert (=> b!2409083 (=> (not res!1023142) (not e!1533853))))

(declare-fun size!22210 (List!28378) Int)

(assert (=> b!2409083 (= res!1023142 (= (size!22210 lt!873290) (+ (size!22210 s!9460) (size!22210 Nil!28280))))))

(declare-fun b!2409081 () Bool)

(declare-fun e!1533852 () List!28378)

(assert (=> b!2409081 (= e!1533852 Nil!28280)))

(declare-fun b!2409082 () Bool)

(assert (=> b!2409082 (= e!1533852 (Cons!28280 (h!33681 s!9460) (++!6999 (t!208355 s!9460) Nil!28280)))))

(declare-fun d!700388 () Bool)

(assert (=> d!700388 e!1533853))

(declare-fun res!1023141 () Bool)

(assert (=> d!700388 (=> (not res!1023141) (not e!1533853))))

(declare-fun content!3872 (List!28378) (Set C!14298))

(assert (=> d!700388 (= res!1023141 (= (content!3872 lt!873290) (set.union (content!3872 s!9460) (content!3872 Nil!28280))))))

(assert (=> d!700388 (= lt!873290 e!1533852)))

(declare-fun c!383755 () Bool)

(assert (=> d!700388 (= c!383755 (is-Nil!28280 s!9460))))

(assert (=> d!700388 (= (++!6999 s!9460 Nil!28280) lt!873290)))

(assert (= (and d!700388 c!383755) b!2409081))

(assert (= (and d!700388 (not c!383755)) b!2409082))

(assert (= (and d!700388 res!1023141) b!2409083))

(assert (= (and b!2409083 res!1023142) b!2409084))

(declare-fun m!2801223 () Bool)

(assert (=> b!2409083 m!2801223))

(declare-fun m!2801225 () Bool)

(assert (=> b!2409083 m!2801225))

(declare-fun m!2801227 () Bool)

(assert (=> b!2409083 m!2801227))

(declare-fun m!2801229 () Bool)

(assert (=> b!2409082 m!2801229))

(declare-fun m!2801231 () Bool)

(assert (=> d!700388 m!2801231))

(declare-fun m!2801233 () Bool)

(assert (=> d!700388 m!2801233))

(declare-fun m!2801235 () Bool)

(assert (=> d!700388 m!2801235))

(assert (=> b!2408958 d!700388))

(declare-fun d!700390 () Bool)

(assert (=> d!700390 (matchR!3187 (Concat!11706 lt!873264 EmptyExpr!7070) (++!6999 s!9460 Nil!28280))))

(declare-fun lt!873293 () Unit!41411)

(declare-fun choose!14243 (Regex!7070 Regex!7070 List!28378 List!28378) Unit!41411)

(assert (=> d!700390 (= lt!873293 (choose!14243 lt!873264 EmptyExpr!7070 s!9460 Nil!28280))))

(declare-fun e!1533856 () Bool)

(assert (=> d!700390 e!1533856))

(declare-fun res!1023145 () Bool)

(assert (=> d!700390 (=> (not res!1023145) (not e!1533856))))

(assert (=> d!700390 (= res!1023145 (validRegex!2794 lt!873264))))

(assert (=> d!700390 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!69 lt!873264 EmptyExpr!7070 s!9460 Nil!28280) lt!873293)))

(declare-fun b!2409087 () Bool)

(assert (=> b!2409087 (= e!1533856 (validRegex!2794 EmptyExpr!7070))))

(assert (= (and d!700390 res!1023145) b!2409087))

(assert (=> d!700390 m!2801157))

(assert (=> d!700390 m!2801157))

(declare-fun m!2801237 () Bool)

(assert (=> d!700390 m!2801237))

(declare-fun m!2801239 () Bool)

(assert (=> d!700390 m!2801239))

(declare-fun m!2801241 () Bool)

(assert (=> d!700390 m!2801241))

(declare-fun m!2801243 () Bool)

(assert (=> b!2409087 m!2801243))

(assert (=> b!2408958 d!700390))

(declare-fun b!2409088 () Bool)

(declare-fun e!1533857 () Bool)

(declare-fun e!1533858 () Bool)

(assert (=> b!2409088 (= e!1533857 e!1533858)))

(declare-fun res!1023148 () Bool)

(assert (=> b!2409088 (=> res!1023148 e!1533858)))

(declare-fun call!147150 () Bool)

(assert (=> b!2409088 (= res!1023148 call!147150)))

(declare-fun b!2409089 () Bool)

(declare-fun e!1533860 () Bool)

(declare-fun lt!873294 () Bool)

(assert (=> b!2409089 (= e!1533860 (= lt!873294 call!147150))))

(declare-fun b!2409090 () Bool)

(declare-fun e!1533863 () Bool)

(assert (=> b!2409090 (= e!1533863 (matchR!3187 (derivativeStep!1771 lt!873265 (head!5363 s!9460)) (tail!3635 s!9460)))))

(declare-fun b!2409091 () Bool)

(declare-fun res!1023153 () Bool)

(declare-fun e!1533859 () Bool)

(assert (=> b!2409091 (=> (not res!1023153) (not e!1533859))))

(assert (=> b!2409091 (= res!1023153 (not call!147150))))

(declare-fun b!2409092 () Bool)

(declare-fun res!1023146 () Bool)

(declare-fun e!1533861 () Bool)

(assert (=> b!2409092 (=> res!1023146 e!1533861)))

(assert (=> b!2409092 (= res!1023146 e!1533859)))

(declare-fun res!1023151 () Bool)

(assert (=> b!2409092 (=> (not res!1023151) (not e!1533859))))

(assert (=> b!2409092 (= res!1023151 lt!873294)))

(declare-fun b!2409093 () Bool)

(assert (=> b!2409093 (= e!1533861 e!1533857)))

(declare-fun res!1023152 () Bool)

(assert (=> b!2409093 (=> (not res!1023152) (not e!1533857))))

(assert (=> b!2409093 (= res!1023152 (not lt!873294))))

(declare-fun b!2409094 () Bool)

(declare-fun res!1023150 () Bool)

(assert (=> b!2409094 (=> res!1023150 e!1533858)))

(assert (=> b!2409094 (= res!1023150 (not (isEmpty!16285 (tail!3635 s!9460))))))

(declare-fun b!2409095 () Bool)

(declare-fun e!1533862 () Bool)

(assert (=> b!2409095 (= e!1533862 (not lt!873294))))

(declare-fun b!2409096 () Bool)

(assert (=> b!2409096 (= e!1533859 (= (head!5363 s!9460) (c!383736 lt!873265)))))

(declare-fun b!2409098 () Bool)

(assert (=> b!2409098 (= e!1533860 e!1533862)))

(declare-fun c!383757 () Bool)

(assert (=> b!2409098 (= c!383757 (is-EmptyLang!7070 lt!873265))))

(declare-fun b!2409099 () Bool)

(assert (=> b!2409099 (= e!1533863 (nullable!2114 lt!873265))))

(declare-fun b!2409100 () Bool)

(declare-fun res!1023147 () Bool)

(assert (=> b!2409100 (=> res!1023147 e!1533861)))

(assert (=> b!2409100 (= res!1023147 (not (is-ElementMatch!7070 lt!873265)))))

(assert (=> b!2409100 (= e!1533862 e!1533861)))

(declare-fun bm!147145 () Bool)

(assert (=> bm!147145 (= call!147150 (isEmpty!16285 s!9460))))

(declare-fun b!2409101 () Bool)

(declare-fun res!1023149 () Bool)

(assert (=> b!2409101 (=> (not res!1023149) (not e!1533859))))

(assert (=> b!2409101 (= res!1023149 (isEmpty!16285 (tail!3635 s!9460)))))

(declare-fun b!2409097 () Bool)

(assert (=> b!2409097 (= e!1533858 (not (= (head!5363 s!9460) (c!383736 lt!873265))))))

(declare-fun d!700392 () Bool)

(assert (=> d!700392 e!1533860))

(declare-fun c!383756 () Bool)

(assert (=> d!700392 (= c!383756 (is-EmptyExpr!7070 lt!873265))))

(assert (=> d!700392 (= lt!873294 e!1533863)))

(declare-fun c!383758 () Bool)

(assert (=> d!700392 (= c!383758 (isEmpty!16285 s!9460))))

(assert (=> d!700392 (validRegex!2794 lt!873265)))

(assert (=> d!700392 (= (matchR!3187 lt!873265 s!9460) lt!873294)))

(assert (= (and d!700392 c!383758) b!2409099))

(assert (= (and d!700392 (not c!383758)) b!2409090))

(assert (= (and d!700392 c!383756) b!2409089))

(assert (= (and d!700392 (not c!383756)) b!2409098))

(assert (= (and b!2409098 c!383757) b!2409095))

(assert (= (and b!2409098 (not c!383757)) b!2409100))

(assert (= (and b!2409100 (not res!1023147)) b!2409092))

(assert (= (and b!2409092 res!1023151) b!2409091))

(assert (= (and b!2409091 res!1023153) b!2409101))

(assert (= (and b!2409101 res!1023149) b!2409096))

(assert (= (and b!2409092 (not res!1023146)) b!2409093))

(assert (= (and b!2409093 res!1023152) b!2409088))

(assert (= (and b!2409088 (not res!1023148)) b!2409094))

(assert (= (and b!2409094 (not res!1023150)) b!2409097))

(assert (= (or b!2409089 b!2409088 b!2409091) bm!147145))

(declare-fun m!2801245 () Bool)

(assert (=> b!2409101 m!2801245))

(assert (=> b!2409101 m!2801245))

(declare-fun m!2801247 () Bool)

(assert (=> b!2409101 m!2801247))

(declare-fun m!2801249 () Bool)

(assert (=> b!2409097 m!2801249))

(assert (=> b!2409090 m!2801249))

(assert (=> b!2409090 m!2801249))

(declare-fun m!2801251 () Bool)

(assert (=> b!2409090 m!2801251))

(assert (=> b!2409090 m!2801245))

(assert (=> b!2409090 m!2801251))

(assert (=> b!2409090 m!2801245))

(declare-fun m!2801253 () Bool)

(assert (=> b!2409090 m!2801253))

(assert (=> b!2409096 m!2801249))

(assert (=> b!2409094 m!2801245))

(assert (=> b!2409094 m!2801245))

(assert (=> b!2409094 m!2801247))

(declare-fun m!2801255 () Bool)

(assert (=> d!700392 m!2801255))

(assert (=> d!700392 m!2801219))

(assert (=> bm!147145 m!2801255))

(assert (=> b!2409099 m!2801221))

(assert (=> b!2408947 d!700392))

(declare-fun d!700394 () Bool)

(declare-fun res!1023166 () Bool)

(declare-fun e!1533875 () Bool)

(assert (=> d!700394 (=> res!1023166 e!1533875)))

(assert (=> d!700394 (= res!1023166 (is-Nil!28281 l!9164))))

(assert (=> d!700394 (= (forall!5704 l!9164 lambda!90662) e!1533875)))

(declare-fun b!2409120 () Bool)

(declare-fun e!1533876 () Bool)

(assert (=> b!2409120 (= e!1533875 e!1533876)))

(declare-fun res!1023167 () Bool)

(assert (=> b!2409120 (=> (not res!1023167) (not e!1533876))))

(declare-fun dynLambda!12177 (Int Regex!7070) Bool)

(assert (=> b!2409120 (= res!1023167 (dynLambda!12177 lambda!90662 (h!33682 l!9164)))))

(declare-fun b!2409121 () Bool)

(assert (=> b!2409121 (= e!1533876 (forall!5704 (t!208356 l!9164) lambda!90662))))

(assert (= (and d!700394 (not res!1023166)) b!2409120))

(assert (= (and b!2409120 res!1023167) b!2409121))

(declare-fun b_lambda!74467 () Bool)

(assert (=> (not b_lambda!74467) (not b!2409120)))

(declare-fun m!2801257 () Bool)

(assert (=> b!2409120 m!2801257))

(declare-fun m!2801259 () Bool)

(assert (=> b!2409121 m!2801259))

(assert (=> start!236106 d!700394))

(declare-fun b!2409122 () Bool)

(declare-fun e!1533877 () Bool)

(declare-fun e!1533878 () Bool)

(assert (=> b!2409122 (= e!1533877 e!1533878)))

(declare-fun res!1023170 () Bool)

(assert (=> b!2409122 (=> res!1023170 e!1533878)))

(declare-fun call!147152 () Bool)

(assert (=> b!2409122 (= res!1023170 call!147152)))

(declare-fun b!2409123 () Bool)

(declare-fun e!1533880 () Bool)

(declare-fun lt!873296 () Bool)

(assert (=> b!2409123 (= e!1533880 (= lt!873296 call!147152))))

(declare-fun b!2409124 () Bool)

(declare-fun e!1533883 () Bool)

(assert (=> b!2409124 (= e!1533883 (matchR!3187 (derivativeStep!1771 lt!873264 (head!5363 s!9460)) (tail!3635 s!9460)))))

(declare-fun b!2409125 () Bool)

(declare-fun res!1023175 () Bool)

(declare-fun e!1533879 () Bool)

(assert (=> b!2409125 (=> (not res!1023175) (not e!1533879))))

(assert (=> b!2409125 (= res!1023175 (not call!147152))))

(declare-fun b!2409126 () Bool)

(declare-fun res!1023168 () Bool)

(declare-fun e!1533881 () Bool)

(assert (=> b!2409126 (=> res!1023168 e!1533881)))

(assert (=> b!2409126 (= res!1023168 e!1533879)))

(declare-fun res!1023173 () Bool)

(assert (=> b!2409126 (=> (not res!1023173) (not e!1533879))))

(assert (=> b!2409126 (= res!1023173 lt!873296)))

(declare-fun b!2409127 () Bool)

(assert (=> b!2409127 (= e!1533881 e!1533877)))

(declare-fun res!1023174 () Bool)

(assert (=> b!2409127 (=> (not res!1023174) (not e!1533877))))

(assert (=> b!2409127 (= res!1023174 (not lt!873296))))

(declare-fun b!2409128 () Bool)

(declare-fun res!1023172 () Bool)

(assert (=> b!2409128 (=> res!1023172 e!1533878)))

(assert (=> b!2409128 (= res!1023172 (not (isEmpty!16285 (tail!3635 s!9460))))))

(declare-fun b!2409129 () Bool)

(declare-fun e!1533882 () Bool)

(assert (=> b!2409129 (= e!1533882 (not lt!873296))))

(declare-fun b!2409130 () Bool)

(assert (=> b!2409130 (= e!1533879 (= (head!5363 s!9460) (c!383736 lt!873264)))))

(declare-fun b!2409132 () Bool)

(assert (=> b!2409132 (= e!1533880 e!1533882)))

(declare-fun c!383763 () Bool)

(assert (=> b!2409132 (= c!383763 (is-EmptyLang!7070 lt!873264))))

(declare-fun b!2409133 () Bool)

(assert (=> b!2409133 (= e!1533883 (nullable!2114 lt!873264))))

(declare-fun b!2409134 () Bool)

(declare-fun res!1023169 () Bool)

(assert (=> b!2409134 (=> res!1023169 e!1533881)))

(assert (=> b!2409134 (= res!1023169 (not (is-ElementMatch!7070 lt!873264)))))

(assert (=> b!2409134 (= e!1533882 e!1533881)))

(declare-fun bm!147147 () Bool)

(assert (=> bm!147147 (= call!147152 (isEmpty!16285 s!9460))))

(declare-fun b!2409135 () Bool)

(declare-fun res!1023171 () Bool)

(assert (=> b!2409135 (=> (not res!1023171) (not e!1533879))))

(assert (=> b!2409135 (= res!1023171 (isEmpty!16285 (tail!3635 s!9460)))))

(declare-fun b!2409131 () Bool)

(assert (=> b!2409131 (= e!1533878 (not (= (head!5363 s!9460) (c!383736 lt!873264))))))

(declare-fun d!700396 () Bool)

(assert (=> d!700396 e!1533880))

(declare-fun c!383762 () Bool)

(assert (=> d!700396 (= c!383762 (is-EmptyExpr!7070 lt!873264))))

(assert (=> d!700396 (= lt!873296 e!1533883)))

(declare-fun c!383764 () Bool)

(assert (=> d!700396 (= c!383764 (isEmpty!16285 s!9460))))

(assert (=> d!700396 (validRegex!2794 lt!873264)))

(assert (=> d!700396 (= (matchR!3187 lt!873264 s!9460) lt!873296)))

(assert (= (and d!700396 c!383764) b!2409133))

(assert (= (and d!700396 (not c!383764)) b!2409124))

(assert (= (and d!700396 c!383762) b!2409123))

(assert (= (and d!700396 (not c!383762)) b!2409132))

(assert (= (and b!2409132 c!383763) b!2409129))

(assert (= (and b!2409132 (not c!383763)) b!2409134))

(assert (= (and b!2409134 (not res!1023169)) b!2409126))

(assert (= (and b!2409126 res!1023173) b!2409125))

(assert (= (and b!2409125 res!1023175) b!2409135))

(assert (= (and b!2409135 res!1023171) b!2409130))

(assert (= (and b!2409126 (not res!1023168)) b!2409127))

(assert (= (and b!2409127 res!1023174) b!2409122))

(assert (= (and b!2409122 (not res!1023170)) b!2409128))

(assert (= (and b!2409128 (not res!1023172)) b!2409131))

(assert (= (or b!2409123 b!2409122 b!2409125) bm!147147))

(assert (=> b!2409135 m!2801245))

(assert (=> b!2409135 m!2801245))

(assert (=> b!2409135 m!2801247))

(assert (=> b!2409131 m!2801249))

(assert (=> b!2409124 m!2801249))

(assert (=> b!2409124 m!2801249))

(declare-fun m!2801269 () Bool)

(assert (=> b!2409124 m!2801269))

(assert (=> b!2409124 m!2801245))

(assert (=> b!2409124 m!2801269))

(assert (=> b!2409124 m!2801245))

(declare-fun m!2801273 () Bool)

(assert (=> b!2409124 m!2801273))

(assert (=> b!2409130 m!2801249))

(assert (=> b!2409128 m!2801245))

(assert (=> b!2409128 m!2801245))

(assert (=> b!2409128 m!2801247))

(assert (=> d!700396 m!2801255))

(assert (=> d!700396 m!2801241))

(assert (=> bm!147147 m!2801255))

(declare-fun m!2801275 () Bool)

(assert (=> b!2409133 m!2801275))

(assert (=> b!2408954 d!700396))

(declare-fun d!700398 () Bool)

(assert (=> d!700398 (= (head!5361 l!9164) (h!33682 l!9164))))

(assert (=> b!2408954 d!700398))

(declare-fun d!700402 () Bool)

(assert (=> d!700402 (= (isEmpty!16283 lt!873266) (is-Nil!28281 lt!873266))))

(assert (=> b!2408948 d!700402))

(declare-fun d!700404 () Bool)

(assert (=> d!700404 (= (tail!3633 l!9164) (t!208356 l!9164))))

(assert (=> b!2408948 d!700404))

(declare-fun b!2409136 () Bool)

(declare-fun e!1533884 () Bool)

(declare-fun e!1533885 () Bool)

(assert (=> b!2409136 (= e!1533884 e!1533885)))

(declare-fun res!1023178 () Bool)

(assert (=> b!2409136 (=> res!1023178 e!1533885)))

(declare-fun call!147153 () Bool)

(assert (=> b!2409136 (= res!1023178 call!147153)))

(declare-fun b!2409137 () Bool)

(declare-fun e!1533887 () Bool)

(declare-fun lt!873297 () Bool)

(assert (=> b!2409137 (= e!1533887 (= lt!873297 call!147153))))

(declare-fun b!2409138 () Bool)

(declare-fun e!1533890 () Bool)

(assert (=> b!2409138 (= e!1533890 (matchR!3187 (derivativeStep!1771 r!13927 (head!5363 s!9460)) (tail!3635 s!9460)))))

(declare-fun b!2409139 () Bool)

(declare-fun res!1023183 () Bool)

(declare-fun e!1533886 () Bool)

(assert (=> b!2409139 (=> (not res!1023183) (not e!1533886))))

(assert (=> b!2409139 (= res!1023183 (not call!147153))))

(declare-fun b!2409140 () Bool)

(declare-fun res!1023176 () Bool)

(declare-fun e!1533888 () Bool)

(assert (=> b!2409140 (=> res!1023176 e!1533888)))

(assert (=> b!2409140 (= res!1023176 e!1533886)))

(declare-fun res!1023181 () Bool)

(assert (=> b!2409140 (=> (not res!1023181) (not e!1533886))))

(assert (=> b!2409140 (= res!1023181 lt!873297)))

(declare-fun b!2409141 () Bool)

(assert (=> b!2409141 (= e!1533888 e!1533884)))

(declare-fun res!1023182 () Bool)

(assert (=> b!2409141 (=> (not res!1023182) (not e!1533884))))

(assert (=> b!2409141 (= res!1023182 (not lt!873297))))

(declare-fun b!2409142 () Bool)

(declare-fun res!1023180 () Bool)

(assert (=> b!2409142 (=> res!1023180 e!1533885)))

(assert (=> b!2409142 (= res!1023180 (not (isEmpty!16285 (tail!3635 s!9460))))))

(declare-fun b!2409143 () Bool)

(declare-fun e!1533889 () Bool)

(assert (=> b!2409143 (= e!1533889 (not lt!873297))))

(declare-fun b!2409144 () Bool)

(assert (=> b!2409144 (= e!1533886 (= (head!5363 s!9460) (c!383736 r!13927)))))

(declare-fun b!2409146 () Bool)

(assert (=> b!2409146 (= e!1533887 e!1533889)))

(declare-fun c!383766 () Bool)

(assert (=> b!2409146 (= c!383766 (is-EmptyLang!7070 r!13927))))

(declare-fun b!2409147 () Bool)

(assert (=> b!2409147 (= e!1533890 (nullable!2114 r!13927))))

(declare-fun b!2409148 () Bool)

(declare-fun res!1023177 () Bool)

(assert (=> b!2409148 (=> res!1023177 e!1533888)))

(assert (=> b!2409148 (= res!1023177 (not (is-ElementMatch!7070 r!13927)))))

(assert (=> b!2409148 (= e!1533889 e!1533888)))

(declare-fun bm!147148 () Bool)

(assert (=> bm!147148 (= call!147153 (isEmpty!16285 s!9460))))

(declare-fun b!2409149 () Bool)

(declare-fun res!1023179 () Bool)

(assert (=> b!2409149 (=> (not res!1023179) (not e!1533886))))

(assert (=> b!2409149 (= res!1023179 (isEmpty!16285 (tail!3635 s!9460)))))

(declare-fun b!2409145 () Bool)

(assert (=> b!2409145 (= e!1533885 (not (= (head!5363 s!9460) (c!383736 r!13927))))))

(declare-fun d!700406 () Bool)

(assert (=> d!700406 e!1533887))

(declare-fun c!383765 () Bool)

(assert (=> d!700406 (= c!383765 (is-EmptyExpr!7070 r!13927))))

(assert (=> d!700406 (= lt!873297 e!1533890)))

(declare-fun c!383767 () Bool)

(assert (=> d!700406 (= c!383767 (isEmpty!16285 s!9460))))

(assert (=> d!700406 (validRegex!2794 r!13927)))

(assert (=> d!700406 (= (matchR!3187 r!13927 s!9460) lt!873297)))

(assert (= (and d!700406 c!383767) b!2409147))

(assert (= (and d!700406 (not c!383767)) b!2409138))

(assert (= (and d!700406 c!383765) b!2409137))

(assert (= (and d!700406 (not c!383765)) b!2409146))

(assert (= (and b!2409146 c!383766) b!2409143))

(assert (= (and b!2409146 (not c!383766)) b!2409148))

(assert (= (and b!2409148 (not res!1023177)) b!2409140))

(assert (= (and b!2409140 res!1023181) b!2409139))

(assert (= (and b!2409139 res!1023183) b!2409149))

(assert (= (and b!2409149 res!1023179) b!2409144))

(assert (= (and b!2409140 (not res!1023176)) b!2409141))

(assert (= (and b!2409141 res!1023182) b!2409136))

(assert (= (and b!2409136 (not res!1023178)) b!2409142))

(assert (= (and b!2409142 (not res!1023180)) b!2409145))

(assert (= (or b!2409137 b!2409136 b!2409139) bm!147148))

(assert (=> b!2409149 m!2801245))

(assert (=> b!2409149 m!2801245))

(assert (=> b!2409149 m!2801247))

(assert (=> b!2409145 m!2801249))

(assert (=> b!2409138 m!2801249))

(assert (=> b!2409138 m!2801249))

(declare-fun m!2801283 () Bool)

(assert (=> b!2409138 m!2801283))

(assert (=> b!2409138 m!2801245))

(assert (=> b!2409138 m!2801283))

(assert (=> b!2409138 m!2801245))

(declare-fun m!2801285 () Bool)

(assert (=> b!2409138 m!2801285))

(assert (=> b!2409144 m!2801249))

(assert (=> b!2409142 m!2801245))

(assert (=> b!2409142 m!2801245))

(assert (=> b!2409142 m!2801247))

(assert (=> d!700406 m!2801255))

(declare-fun m!2801287 () Bool)

(assert (=> d!700406 m!2801287))

(assert (=> bm!147148 m!2801255))

(declare-fun m!2801289 () Bool)

(assert (=> b!2409147 m!2801289))

(assert (=> b!2408955 d!700406))

(declare-fun b!2409212 () Bool)

(assert (=> b!2409212 true))

(assert (=> b!2409212 true))

(declare-fun bs!463375 () Bool)

(declare-fun b!2409211 () Bool)

(assert (= bs!463375 (and b!2409211 b!2409212)))

(declare-fun lambda!90673 () Int)

(declare-fun lambda!90672 () Int)

(assert (=> bs!463375 (not (= lambda!90673 lambda!90672))))

(assert (=> b!2409211 true))

(assert (=> b!2409211 true))

(declare-fun b!2409210 () Bool)

(declare-fun e!1533930 () Bool)

(assert (=> b!2409210 (= e!1533930 (= s!9460 (Cons!28280 (c!383736 r!13927) Nil!28280)))))

(declare-fun e!1533927 () Bool)

(declare-fun call!147158 () Bool)

(assert (=> b!2409211 (= e!1533927 call!147158)))

(declare-fun e!1533925 () Bool)

(assert (=> b!2409212 (= e!1533925 call!147158)))

(declare-fun b!2409213 () Bool)

(declare-fun e!1533926 () Bool)

(assert (=> b!2409213 (= e!1533926 e!1533927)))

(declare-fun c!383786 () Bool)

(assert (=> b!2409213 (= c!383786 (is-Star!7070 r!13927))))

(declare-fun b!2409214 () Bool)

(declare-fun e!1533929 () Bool)

(declare-fun call!147159 () Bool)

(assert (=> b!2409214 (= e!1533929 call!147159)))

(declare-fun b!2409215 () Bool)

(declare-fun c!383787 () Bool)

(assert (=> b!2409215 (= c!383787 (is-ElementMatch!7070 r!13927))))

(declare-fun e!1533931 () Bool)

(assert (=> b!2409215 (= e!1533931 e!1533930)))

(declare-fun b!2409216 () Bool)

(declare-fun res!1023214 () Bool)

(assert (=> b!2409216 (=> res!1023214 e!1533925)))

(assert (=> b!2409216 (= res!1023214 call!147159)))

(assert (=> b!2409216 (= e!1533927 e!1533925)))

(declare-fun b!2409217 () Bool)

(declare-fun e!1533928 () Bool)

(assert (=> b!2409217 (= e!1533928 (matchRSpec!919 (regTwo!14653 r!13927) s!9460))))

(declare-fun b!2409218 () Bool)

(assert (=> b!2409218 (= e!1533929 e!1533931)))

(declare-fun res!1023213 () Bool)

(assert (=> b!2409218 (= res!1023213 (not (is-EmptyLang!7070 r!13927)))))

(assert (=> b!2409218 (=> (not res!1023213) (not e!1533931))))

(declare-fun d!700408 () Bool)

(declare-fun c!383784 () Bool)

(assert (=> d!700408 (= c!383784 (is-EmptyExpr!7070 r!13927))))

(assert (=> d!700408 (= (matchRSpec!919 r!13927 s!9460) e!1533929)))

(declare-fun b!2409219 () Bool)

(declare-fun c!383785 () Bool)

(assert (=> b!2409219 (= c!383785 (is-Union!7070 r!13927))))

(assert (=> b!2409219 (= e!1533930 e!1533926)))

(declare-fun bm!147153 () Bool)

(declare-fun Exists!1123 (Int) Bool)

(assert (=> bm!147153 (= call!147158 (Exists!1123 (ite c!383786 lambda!90672 lambda!90673)))))

(declare-fun bm!147154 () Bool)

(assert (=> bm!147154 (= call!147159 (isEmpty!16285 s!9460))))

(declare-fun b!2409220 () Bool)

(assert (=> b!2409220 (= e!1533926 e!1533928)))

(declare-fun res!1023212 () Bool)

(assert (=> b!2409220 (= res!1023212 (matchRSpec!919 (regOne!14653 r!13927) s!9460))))

(assert (=> b!2409220 (=> res!1023212 e!1533928)))

(assert (= (and d!700408 c!383784) b!2409214))

(assert (= (and d!700408 (not c!383784)) b!2409218))

(assert (= (and b!2409218 res!1023213) b!2409215))

(assert (= (and b!2409215 c!383787) b!2409210))

(assert (= (and b!2409215 (not c!383787)) b!2409219))

(assert (= (and b!2409219 c!383785) b!2409220))

(assert (= (and b!2409219 (not c!383785)) b!2409213))

(assert (= (and b!2409220 (not res!1023212)) b!2409217))

(assert (= (and b!2409213 c!383786) b!2409216))

(assert (= (and b!2409213 (not c!383786)) b!2409211))

(assert (= (and b!2409216 (not res!1023214)) b!2409212))

(assert (= (or b!2409212 b!2409211) bm!147153))

(assert (= (or b!2409214 b!2409216) bm!147154))

(declare-fun m!2801291 () Bool)

(assert (=> b!2409217 m!2801291))

(declare-fun m!2801293 () Bool)

(assert (=> bm!147153 m!2801293))

(assert (=> bm!147154 m!2801255))

(declare-fun m!2801295 () Bool)

(assert (=> b!2409220 m!2801295))

(assert (=> b!2408955 d!700408))

(declare-fun d!700410 () Bool)

(assert (=> d!700410 (= (matchR!3187 r!13927 s!9460) (matchRSpec!919 r!13927 s!9460))))

(declare-fun lt!873300 () Unit!41411)

(declare-fun choose!14244 (Regex!7070 List!28378) Unit!41411)

(assert (=> d!700410 (= lt!873300 (choose!14244 r!13927 s!9460))))

(assert (=> d!700410 (validRegex!2794 r!13927)))

(assert (=> d!700410 (= (mainMatchTheorem!919 r!13927 s!9460) lt!873300)))

(declare-fun bs!463376 () Bool)

(assert (= bs!463376 d!700410))

(assert (=> bs!463376 m!2801163))

(assert (=> bs!463376 m!2801165))

(declare-fun m!2801297 () Bool)

(assert (=> bs!463376 m!2801297))

(assert (=> bs!463376 m!2801287))

(assert (=> b!2408955 d!700410))

(declare-fun bs!463377 () Bool)

(declare-fun d!700412 () Bool)

(assert (= bs!463377 (and d!700412 start!236106)))

(declare-fun lambda!90678 () Int)

(assert (=> bs!463377 (= lambda!90678 lambda!90662)))

(declare-fun b!2409250 () Bool)

(declare-fun e!1533947 () Bool)

(declare-fun lt!873303 () Regex!7070)

(declare-fun isConcat!133 (Regex!7070) Bool)

(assert (=> b!2409250 (= e!1533947 (isConcat!133 lt!873303))))

(declare-fun b!2409251 () Bool)

(declare-fun e!1533948 () Bool)

(declare-fun isEmptyExpr!133 (Regex!7070) Bool)

(assert (=> b!2409251 (= e!1533948 (isEmptyExpr!133 lt!873303))))

(declare-fun b!2409252 () Bool)

(declare-fun e!1533946 () Regex!7070)

(declare-fun e!1533951 () Regex!7070)

(assert (=> b!2409252 (= e!1533946 e!1533951)))

(declare-fun c!383798 () Bool)

(assert (=> b!2409252 (= c!383798 (is-Cons!28281 lt!873266))))

(declare-fun b!2409253 () Bool)

(assert (=> b!2409253 (= e!1533946 (h!33682 lt!873266))))

(declare-fun b!2409254 () Bool)

(assert (=> b!2409254 (= e!1533951 (Concat!11706 (h!33682 lt!873266) (generalisedConcat!171 (t!208356 lt!873266))))))

(declare-fun b!2409255 () Bool)

(declare-fun e!1533950 () Bool)

(assert (=> b!2409255 (= e!1533950 e!1533948)))

(declare-fun c!383797 () Bool)

(assert (=> b!2409255 (= c!383797 (isEmpty!16283 lt!873266))))

(declare-fun b!2409256 () Bool)

(declare-fun e!1533949 () Bool)

(assert (=> b!2409256 (= e!1533949 (isEmpty!16283 (t!208356 lt!873266)))))

(declare-fun b!2409257 () Bool)

(assert (=> b!2409257 (= e!1533951 EmptyExpr!7070)))

(declare-fun b!2409258 () Bool)

(assert (=> b!2409258 (= e!1533947 (= lt!873303 (head!5361 lt!873266)))))

(assert (=> d!700412 e!1533950))

(declare-fun res!1023224 () Bool)

(assert (=> d!700412 (=> (not res!1023224) (not e!1533950))))

(assert (=> d!700412 (= res!1023224 (validRegex!2794 lt!873303))))

(assert (=> d!700412 (= lt!873303 e!1533946)))

(declare-fun c!383799 () Bool)

(assert (=> d!700412 (= c!383799 e!1533949)))

(declare-fun res!1023223 () Bool)

(assert (=> d!700412 (=> (not res!1023223) (not e!1533949))))

(assert (=> d!700412 (= res!1023223 (is-Cons!28281 lt!873266))))

(assert (=> d!700412 (forall!5704 lt!873266 lambda!90678)))

(assert (=> d!700412 (= (generalisedConcat!171 lt!873266) lt!873303)))

(declare-fun b!2409249 () Bool)

(assert (=> b!2409249 (= e!1533948 e!1533947)))

(declare-fun c!383796 () Bool)

(assert (=> b!2409249 (= c!383796 (isEmpty!16283 (tail!3633 lt!873266)))))

(assert (= (and d!700412 res!1023223) b!2409256))

(assert (= (and d!700412 c!383799) b!2409253))

(assert (= (and d!700412 (not c!383799)) b!2409252))

(assert (= (and b!2409252 c!383798) b!2409254))

(assert (= (and b!2409252 (not c!383798)) b!2409257))

(assert (= (and d!700412 res!1023224) b!2409255))

(assert (= (and b!2409255 c!383797) b!2409251))

(assert (= (and b!2409255 (not c!383797)) b!2409249))

(assert (= (and b!2409249 c!383796) b!2409258))

(assert (= (and b!2409249 (not c!383796)) b!2409250))

(declare-fun m!2801299 () Bool)

(assert (=> b!2409251 m!2801299))

(declare-fun m!2801301 () Bool)

(assert (=> b!2409254 m!2801301))

(declare-fun m!2801303 () Bool)

(assert (=> d!700412 m!2801303))

(declare-fun m!2801305 () Bool)

(assert (=> d!700412 m!2801305))

(declare-fun m!2801307 () Bool)

(assert (=> b!2409256 m!2801307))

(declare-fun m!2801309 () Bool)

(assert (=> b!2409258 m!2801309))

(declare-fun m!2801311 () Bool)

(assert (=> b!2409250 m!2801311))

(declare-fun m!2801313 () Bool)

(assert (=> b!2409249 m!2801313))

(assert (=> b!2409249 m!2801313))

(declare-fun m!2801315 () Bool)

(assert (=> b!2409249 m!2801315))

(assert (=> b!2409255 m!2801147))

(assert (=> b!2408960 d!700412))

(declare-fun d!700414 () Bool)

(assert (=> d!700414 (= (isEmpty!16283 l!9164) (is-Nil!28281 l!9164))))

(assert (=> b!2408957 d!700414))

(declare-fun bs!463378 () Bool)

(declare-fun d!700416 () Bool)

(assert (= bs!463378 (and d!700416 start!236106)))

(declare-fun lambda!90679 () Int)

(assert (=> bs!463378 (= lambda!90679 lambda!90662)))

(declare-fun bs!463379 () Bool)

(assert (= bs!463379 (and d!700416 d!700412)))

(assert (=> bs!463379 (= lambda!90679 lambda!90678)))

(declare-fun b!2409260 () Bool)

(declare-fun e!1533953 () Bool)

(declare-fun lt!873304 () Regex!7070)

(assert (=> b!2409260 (= e!1533953 (isConcat!133 lt!873304))))

(declare-fun b!2409261 () Bool)

(declare-fun e!1533954 () Bool)

(assert (=> b!2409261 (= e!1533954 (isEmptyExpr!133 lt!873304))))

(declare-fun b!2409262 () Bool)

(declare-fun e!1533952 () Regex!7070)

(declare-fun e!1533957 () Regex!7070)

(assert (=> b!2409262 (= e!1533952 e!1533957)))

(declare-fun c!383802 () Bool)

(assert (=> b!2409262 (= c!383802 (is-Cons!28281 l!9164))))

(declare-fun b!2409263 () Bool)

(assert (=> b!2409263 (= e!1533952 (h!33682 l!9164))))

(declare-fun b!2409264 () Bool)

(assert (=> b!2409264 (= e!1533957 (Concat!11706 (h!33682 l!9164) (generalisedConcat!171 (t!208356 l!9164))))))

(declare-fun b!2409265 () Bool)

(declare-fun e!1533956 () Bool)

(assert (=> b!2409265 (= e!1533956 e!1533954)))

(declare-fun c!383801 () Bool)

(assert (=> b!2409265 (= c!383801 (isEmpty!16283 l!9164))))

(declare-fun b!2409266 () Bool)

(declare-fun e!1533955 () Bool)

(assert (=> b!2409266 (= e!1533955 (isEmpty!16283 (t!208356 l!9164)))))

(declare-fun b!2409267 () Bool)

(assert (=> b!2409267 (= e!1533957 EmptyExpr!7070)))

(declare-fun b!2409268 () Bool)

(assert (=> b!2409268 (= e!1533953 (= lt!873304 (head!5361 l!9164)))))

(assert (=> d!700416 e!1533956))

(declare-fun res!1023226 () Bool)

(assert (=> d!700416 (=> (not res!1023226) (not e!1533956))))

(assert (=> d!700416 (= res!1023226 (validRegex!2794 lt!873304))))

(assert (=> d!700416 (= lt!873304 e!1533952)))

(declare-fun c!383803 () Bool)

(assert (=> d!700416 (= c!383803 e!1533955)))

(declare-fun res!1023225 () Bool)

(assert (=> d!700416 (=> (not res!1023225) (not e!1533955))))

(assert (=> d!700416 (= res!1023225 (is-Cons!28281 l!9164))))

(assert (=> d!700416 (forall!5704 l!9164 lambda!90679)))

(assert (=> d!700416 (= (generalisedConcat!171 l!9164) lt!873304)))

(declare-fun b!2409259 () Bool)

(assert (=> b!2409259 (= e!1533954 e!1533953)))

(declare-fun c!383800 () Bool)

(assert (=> b!2409259 (= c!383800 (isEmpty!16283 (tail!3633 l!9164)))))

(assert (= (and d!700416 res!1023225) b!2409266))

(assert (= (and d!700416 c!383803) b!2409263))

(assert (= (and d!700416 (not c!383803)) b!2409262))

(assert (= (and b!2409262 c!383802) b!2409264))

(assert (= (and b!2409262 (not c!383802)) b!2409267))

(assert (= (and d!700416 res!1023226) b!2409265))

(assert (= (and b!2409265 c!383801) b!2409261))

(assert (= (and b!2409265 (not c!383801)) b!2409259))

(assert (= (and b!2409259 c!383800) b!2409268))

(assert (= (and b!2409259 (not c!383800)) b!2409260))

(declare-fun m!2801317 () Bool)

(assert (=> b!2409261 m!2801317))

(declare-fun m!2801319 () Bool)

(assert (=> b!2409264 m!2801319))

(declare-fun m!2801321 () Bool)

(assert (=> d!700416 m!2801321))

(declare-fun m!2801323 () Bool)

(assert (=> d!700416 m!2801323))

(declare-fun m!2801325 () Bool)

(assert (=> b!2409266 m!2801325))

(assert (=> b!2409268 m!2801173))

(declare-fun m!2801327 () Bool)

(assert (=> b!2409260 m!2801327))

(assert (=> b!2409259 m!2801149))

(assert (=> b!2409259 m!2801149))

(declare-fun m!2801329 () Bool)

(assert (=> b!2409259 m!2801329))

(assert (=> b!2409265 m!2801169))

(assert (=> b!2408951 d!700416))

(declare-fun b!2409273 () Bool)

(declare-fun e!1533960 () Bool)

(declare-fun tp!766526 () Bool)

(assert (=> b!2409273 (= e!1533960 (and tp_is_empty!11553 tp!766526))))

(assert (=> b!2408953 (= tp!766499 e!1533960)))

(assert (= (and b!2408953 (is-Cons!28280 (t!208355 s!9460))) b!2409273))

(declare-fun b!2409287 () Bool)

(declare-fun e!1533963 () Bool)

(declare-fun tp!766541 () Bool)

(declare-fun tp!766538 () Bool)

(assert (=> b!2409287 (= e!1533963 (and tp!766541 tp!766538))))

(declare-fun b!2409284 () Bool)

(assert (=> b!2409284 (= e!1533963 tp_is_empty!11553)))

(declare-fun b!2409285 () Bool)

(declare-fun tp!766537 () Bool)

(declare-fun tp!766540 () Bool)

(assert (=> b!2409285 (= e!1533963 (and tp!766537 tp!766540))))

(declare-fun b!2409286 () Bool)

(declare-fun tp!766539 () Bool)

(assert (=> b!2409286 (= e!1533963 tp!766539)))

(assert (=> b!2408952 (= tp!766497 e!1533963)))

(assert (= (and b!2408952 (is-ElementMatch!7070 (regOne!14653 r!13927))) b!2409284))

(assert (= (and b!2408952 (is-Concat!11706 (regOne!14653 r!13927))) b!2409285))

(assert (= (and b!2408952 (is-Star!7070 (regOne!14653 r!13927))) b!2409286))

(assert (= (and b!2408952 (is-Union!7070 (regOne!14653 r!13927))) b!2409287))

(declare-fun b!2409302 () Bool)

(declare-fun e!1533971 () Bool)

(declare-fun tp!766546 () Bool)

(declare-fun tp!766543 () Bool)

(assert (=> b!2409302 (= e!1533971 (and tp!766546 tp!766543))))

(declare-fun b!2409299 () Bool)

(assert (=> b!2409299 (= e!1533971 tp_is_empty!11553)))

(declare-fun b!2409300 () Bool)

(declare-fun tp!766542 () Bool)

(declare-fun tp!766545 () Bool)

(assert (=> b!2409300 (= e!1533971 (and tp!766542 tp!766545))))

(declare-fun b!2409301 () Bool)

(declare-fun tp!766544 () Bool)

(assert (=> b!2409301 (= e!1533971 tp!766544)))

(assert (=> b!2408952 (= tp!766498 e!1533971)))

(assert (= (and b!2408952 (is-ElementMatch!7070 (regTwo!14653 r!13927))) b!2409299))

(assert (= (and b!2408952 (is-Concat!11706 (regTwo!14653 r!13927))) b!2409300))

(assert (= (and b!2408952 (is-Star!7070 (regTwo!14653 r!13927))) b!2409301))

(assert (= (and b!2408952 (is-Union!7070 (regTwo!14653 r!13927))) b!2409302))

(declare-fun b!2409306 () Bool)

(declare-fun e!1533972 () Bool)

(declare-fun tp!766551 () Bool)

(declare-fun tp!766548 () Bool)

(assert (=> b!2409306 (= e!1533972 (and tp!766551 tp!766548))))

(declare-fun b!2409303 () Bool)

(assert (=> b!2409303 (= e!1533972 tp_is_empty!11553)))

(declare-fun b!2409304 () Bool)

(declare-fun tp!766547 () Bool)

(declare-fun tp!766550 () Bool)

(assert (=> b!2409304 (= e!1533972 (and tp!766547 tp!766550))))

(declare-fun b!2409305 () Bool)

(declare-fun tp!766549 () Bool)

(assert (=> b!2409305 (= e!1533972 tp!766549)))

(assert (=> b!2408959 (= tp!766493 e!1533972)))

(assert (= (and b!2408959 (is-ElementMatch!7070 (h!33682 l!9164))) b!2409303))

(assert (= (and b!2408959 (is-Concat!11706 (h!33682 l!9164))) b!2409304))

(assert (= (and b!2408959 (is-Star!7070 (h!33682 l!9164))) b!2409305))

(assert (= (and b!2408959 (is-Union!7070 (h!33682 l!9164))) b!2409306))

(declare-fun b!2409311 () Bool)

(declare-fun e!1533975 () Bool)

(declare-fun tp!766556 () Bool)

(declare-fun tp!766557 () Bool)

(assert (=> b!2409311 (= e!1533975 (and tp!766556 tp!766557))))

(assert (=> b!2408959 (= tp!766495 e!1533975)))

(assert (= (and b!2408959 (is-Cons!28281 (t!208356 l!9164))) b!2409311))

(declare-fun b!2409315 () Bool)

(declare-fun e!1533976 () Bool)

(declare-fun tp!766562 () Bool)

(declare-fun tp!766559 () Bool)

(assert (=> b!2409315 (= e!1533976 (and tp!766562 tp!766559))))

(declare-fun b!2409312 () Bool)

(assert (=> b!2409312 (= e!1533976 tp_is_empty!11553)))

(declare-fun b!2409313 () Bool)

(declare-fun tp!766558 () Bool)

(declare-fun tp!766561 () Bool)

(assert (=> b!2409313 (= e!1533976 (and tp!766558 tp!766561))))

(declare-fun b!2409314 () Bool)

(declare-fun tp!766560 () Bool)

(assert (=> b!2409314 (= e!1533976 tp!766560)))

(assert (=> b!2408950 (= tp!766494 e!1533976)))

(assert (= (and b!2408950 (is-ElementMatch!7070 (regOne!14652 r!13927))) b!2409312))

(assert (= (and b!2408950 (is-Concat!11706 (regOne!14652 r!13927))) b!2409313))

(assert (= (and b!2408950 (is-Star!7070 (regOne!14652 r!13927))) b!2409314))

(assert (= (and b!2408950 (is-Union!7070 (regOne!14652 r!13927))) b!2409315))

(declare-fun b!2409319 () Bool)

(declare-fun e!1533977 () Bool)

(declare-fun tp!766567 () Bool)

(declare-fun tp!766564 () Bool)

(assert (=> b!2409319 (= e!1533977 (and tp!766567 tp!766564))))

(declare-fun b!2409316 () Bool)

(assert (=> b!2409316 (= e!1533977 tp_is_empty!11553)))

(declare-fun b!2409317 () Bool)

(declare-fun tp!766563 () Bool)

(declare-fun tp!766566 () Bool)

(assert (=> b!2409317 (= e!1533977 (and tp!766563 tp!766566))))

(declare-fun b!2409318 () Bool)

(declare-fun tp!766565 () Bool)

(assert (=> b!2409318 (= e!1533977 tp!766565)))

(assert (=> b!2408950 (= tp!766496 e!1533977)))

(assert (= (and b!2408950 (is-ElementMatch!7070 (regTwo!14652 r!13927))) b!2409316))

(assert (= (and b!2408950 (is-Concat!11706 (regTwo!14652 r!13927))) b!2409317))

(assert (= (and b!2408950 (is-Star!7070 (regTwo!14652 r!13927))) b!2409318))

(assert (= (and b!2408950 (is-Union!7070 (regTwo!14652 r!13927))) b!2409319))

(declare-fun b!2409323 () Bool)

(declare-fun e!1533978 () Bool)

(declare-fun tp!766572 () Bool)

(declare-fun tp!766569 () Bool)

(assert (=> b!2409323 (= e!1533978 (and tp!766572 tp!766569))))

(declare-fun b!2409320 () Bool)

(assert (=> b!2409320 (= e!1533978 tp_is_empty!11553)))

(declare-fun b!2409321 () Bool)

(declare-fun tp!766568 () Bool)

(declare-fun tp!766571 () Bool)

(assert (=> b!2409321 (= e!1533978 (and tp!766568 tp!766571))))

(declare-fun b!2409322 () Bool)

(declare-fun tp!766570 () Bool)

(assert (=> b!2409322 (= e!1533978 tp!766570)))

(assert (=> b!2408956 (= tp!766492 e!1533978)))

(assert (= (and b!2408956 (is-ElementMatch!7070 (reg!7399 r!13927))) b!2409320))

(assert (= (and b!2408956 (is-Concat!11706 (reg!7399 r!13927))) b!2409321))

(assert (= (and b!2408956 (is-Star!7070 (reg!7399 r!13927))) b!2409322))

(assert (= (and b!2408956 (is-Union!7070 (reg!7399 r!13927))) b!2409323))

(declare-fun b_lambda!74469 () Bool)

(assert (= b_lambda!74467 (or start!236106 b_lambda!74469)))

(declare-fun bs!463380 () Bool)

(declare-fun d!700418 () Bool)

(assert (= bs!463380 (and d!700418 start!236106)))

(assert (=> bs!463380 (= (dynLambda!12177 lambda!90662 (h!33682 l!9164)) (validRegex!2794 (h!33682 l!9164)))))

(declare-fun m!2801331 () Bool)

(assert (=> bs!463380 m!2801331))

(assert (=> b!2409120 d!700418))

(push 1)

(assert (not b!2409261))

(assert (not b!2409048))

(assert (not b!2409264))

(assert (not b!2409044))

(assert (not d!700410))

(assert (not b!2409260))

(assert (not b!2409314))

(assert (not d!700392))

(assert (not b!2409083))

(assert (not b!2409302))

(assert (not b!2409286))

(assert tp_is_empty!11553)

(assert (not b!2409321))

(assert (not b!2409147))

(assert (not bm!147147))

(assert (not bm!147145))

(assert (not b!2409149))

(assert (not bm!147154))

(assert (not b!2409301))

(assert (not b!2409315))

(assert (not b!2409082))

(assert (not b!2409249))

(assert (not b!2409144))

(assert (not b!2409254))

(assert (not b!2409145))

(assert (not d!700390))

(assert (not b!2409317))

(assert (not b!2409087))

(assert (not b!2409142))

(assert (not bm!147142))

(assert (not b!2409311))

(assert (not b!2409318))

(assert (not d!700386))

(assert (not b!2409131))

(assert (not b!2409323))

(assert (not b!2409266))

(assert (not b!2409096))

(assert (not b!2409319))

(assert (not b!2409306))

(assert (not b!2409097))

(assert (not bm!147153))

(assert (not bs!463380))

(assert (not d!700416))

(assert (not b!2409099))

(assert (not b!2409135))

(assert (not b_lambda!74469))

(assert (not d!700396))

(assert (not b!2409273))

(assert (not b!2409300))

(assert (not b!2409256))

(assert (not d!700406))

(assert (not b!2409304))

(assert (not b!2409265))

(assert (not b!2409043))

(assert (not bm!147148))

(assert (not b!2409037))

(assert (not b!2409101))

(assert (not b!2409121))

(assert (not b!2409250))

(assert (not b!2409217))

(assert (not b!2409133))

(assert (not b!2409268))

(assert (not b!2409130))

(assert (not b!2409090))

(assert (not b!2409128))

(assert (not b!2409251))

(assert (not d!700412))

(assert (not b!2409124))

(assert (not b!2409285))

(assert (not b!2409220))

(assert (not b!2409305))

(assert (not d!700388))

(assert (not b!2409046))

(assert (not b!2409313))

(assert (not b!2409258))

(assert (not b!2409255))

(assert (not b!2409322))

(assert (not b!2409259))

(assert (not b!2409138))

(assert (not b!2409287))

(assert (not b!2409041))

(assert (not b!2409094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

