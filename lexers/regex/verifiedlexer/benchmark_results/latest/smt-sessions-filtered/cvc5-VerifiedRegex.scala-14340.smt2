; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749088 () Bool)

(assert start!749088)

(declare-fun e!4683411 () Bool)

(declare-fun b!7937231 () Bool)

(declare-datatypes ((B!4027 0))(
  ( (B!4028 (val!32077 Int)) )
))
(declare-datatypes ((List!74589 0))(
  ( (Nil!74465) (Cons!74465 (h!80913 B!4027) (t!390302 List!74589)) )
))
(declare-fun lt!2695531 () List!74589)

(declare-fun l1!729 () List!74589)

(declare-fun l2!718 () List!74589)

(declare-fun l3!188 () List!74589)

(declare-fun ++!18274 (List!74589 List!74589) List!74589)

(assert (=> b!7937231 (= e!4683411 (not (= (++!18274 (++!18274 l1!729 l2!718) l3!188) (++!18274 l1!729 lt!2695531))))))

(declare-fun lt!2695529 () List!74589)

(assert (=> b!7937231 (= (++!18274 lt!2695529 l3!188) (++!18274 (t!390302 l1!729) lt!2695531))))

(assert (=> b!7937231 (= lt!2695531 (++!18274 l2!718 l3!188))))

(assert (=> b!7937231 (= lt!2695529 (++!18274 (t!390302 l1!729) l2!718))))

(declare-datatypes ((Unit!169579 0))(
  ( (Unit!169580) )
))
(declare-fun lt!2695530 () Unit!169579)

(declare-fun lemmaConcatAssociativity!3169 (List!74589 List!74589 List!74589) Unit!169579)

(assert (=> b!7937231 (= lt!2695530 (lemmaConcatAssociativity!3169 (t!390302 l1!729) l2!718 l3!188))))

(declare-fun b!7937233 () Bool)

(declare-fun e!4683412 () Bool)

(declare-fun tp_is_empty!53263 () Bool)

(declare-fun tp!2359758 () Bool)

(assert (=> b!7937233 (= e!4683412 (and tp_is_empty!53263 tp!2359758))))

(declare-fun b!7937234 () Bool)

(declare-fun e!4683413 () Bool)

(declare-fun tp!2359757 () Bool)

(assert (=> b!7937234 (= e!4683413 (and tp_is_empty!53263 tp!2359757))))

(declare-fun b!7937232 () Bool)

(declare-fun e!4683414 () Bool)

(declare-fun tp!2359759 () Bool)

(assert (=> b!7937232 (= e!4683414 (and tp_is_empty!53263 tp!2359759))))

(declare-fun res!3149101 () Bool)

(assert (=> start!749088 (=> (not res!3149101) (not e!4683411))))

(assert (=> start!749088 (= res!3149101 (is-Cons!74465 l1!729))))

(assert (=> start!749088 e!4683411))

(assert (=> start!749088 e!4683414))

(assert (=> start!749088 e!4683412))

(assert (=> start!749088 e!4683413))

(assert (= (and start!749088 res!3149101) b!7937231))

(assert (= (and start!749088 (is-Cons!74465 l1!729)) b!7937232))

(assert (= (and start!749088 (is-Cons!74465 l2!718)) b!7937233))

(assert (= (and start!749088 (is-Cons!74465 l3!188)) b!7937234))

(declare-fun m!8326044 () Bool)

(assert (=> b!7937231 m!8326044))

(declare-fun m!8326046 () Bool)

(assert (=> b!7937231 m!8326046))

(declare-fun m!8326048 () Bool)

(assert (=> b!7937231 m!8326048))

(declare-fun m!8326050 () Bool)

(assert (=> b!7937231 m!8326050))

(assert (=> b!7937231 m!8326044))

(declare-fun m!8326052 () Bool)

(assert (=> b!7937231 m!8326052))

(declare-fun m!8326054 () Bool)

(assert (=> b!7937231 m!8326054))

(declare-fun m!8326056 () Bool)

(assert (=> b!7937231 m!8326056))

(declare-fun m!8326058 () Bool)

(assert (=> b!7937231 m!8326058))

(push 1)

(assert (not b!7937234))

(assert (not b!7937233))

(assert tp_is_empty!53263)

(assert (not b!7937231))

(assert (not b!7937232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7937256 () Bool)

(declare-fun e!4683432 () List!74589)

(assert (=> b!7937256 (= e!4683432 (Cons!74465 (h!80913 (t!390302 l1!729)) (++!18274 (t!390302 (t!390302 l1!729)) lt!2695531)))))

(declare-fun d!2373915 () Bool)

(declare-fun e!4683431 () Bool)

(assert (=> d!2373915 e!4683431))

(declare-fun res!3149110 () Bool)

(assert (=> d!2373915 (=> (not res!3149110) (not e!4683431))))

(declare-fun lt!2695543 () List!74589)

(declare-fun content!15798 (List!74589) (Set B!4027))

(assert (=> d!2373915 (= res!3149110 (= (content!15798 lt!2695543) (set.union (content!15798 (t!390302 l1!729)) (content!15798 lt!2695531))))))

(assert (=> d!2373915 (= lt!2695543 e!4683432)))

(declare-fun c!1458257 () Bool)

(assert (=> d!2373915 (= c!1458257 (is-Nil!74465 (t!390302 l1!729)))))

(assert (=> d!2373915 (= (++!18274 (t!390302 l1!729) lt!2695531) lt!2695543)))

(declare-fun b!7937255 () Bool)

(assert (=> b!7937255 (= e!4683432 lt!2695531)))

(declare-fun b!7937258 () Bool)

(assert (=> b!7937258 (= e!4683431 (or (not (= lt!2695531 Nil!74465)) (= lt!2695543 (t!390302 l1!729))))))

(declare-fun b!7937257 () Bool)

(declare-fun res!3149109 () Bool)

(assert (=> b!7937257 (=> (not res!3149109) (not e!4683431))))

(declare-fun size!43289 (List!74589) Int)

(assert (=> b!7937257 (= res!3149109 (= (size!43289 lt!2695543) (+ (size!43289 (t!390302 l1!729)) (size!43289 lt!2695531))))))

(assert (= (and d!2373915 c!1458257) b!7937255))

(assert (= (and d!2373915 (not c!1458257)) b!7937256))

(assert (= (and d!2373915 res!3149110) b!7937257))

(assert (= (and b!7937257 res!3149109) b!7937258))

(declare-fun m!8326076 () Bool)

(assert (=> b!7937256 m!8326076))

(declare-fun m!8326078 () Bool)

(assert (=> d!2373915 m!8326078))

(declare-fun m!8326080 () Bool)

(assert (=> d!2373915 m!8326080))

(declare-fun m!8326082 () Bool)

(assert (=> d!2373915 m!8326082))

(declare-fun m!8326084 () Bool)

(assert (=> b!7937257 m!8326084))

(declare-fun m!8326086 () Bool)

(assert (=> b!7937257 m!8326086))

(declare-fun m!8326088 () Bool)

(assert (=> b!7937257 m!8326088))

(assert (=> b!7937231 d!2373915))

(declare-fun e!4683434 () List!74589)

(declare-fun b!7937260 () Bool)

(assert (=> b!7937260 (= e!4683434 (Cons!74465 (h!80913 (++!18274 l1!729 l2!718)) (++!18274 (t!390302 (++!18274 l1!729 l2!718)) l3!188)))))

(declare-fun d!2373919 () Bool)

(declare-fun e!4683433 () Bool)

(assert (=> d!2373919 e!4683433))

(declare-fun res!3149112 () Bool)

(assert (=> d!2373919 (=> (not res!3149112) (not e!4683433))))

(declare-fun lt!2695544 () List!74589)

(assert (=> d!2373919 (= res!3149112 (= (content!15798 lt!2695544) (set.union (content!15798 (++!18274 l1!729 l2!718)) (content!15798 l3!188))))))

(assert (=> d!2373919 (= lt!2695544 e!4683434)))

(declare-fun c!1458258 () Bool)

(assert (=> d!2373919 (= c!1458258 (is-Nil!74465 (++!18274 l1!729 l2!718)))))

(assert (=> d!2373919 (= (++!18274 (++!18274 l1!729 l2!718) l3!188) lt!2695544)))

(declare-fun b!7937259 () Bool)

(assert (=> b!7937259 (= e!4683434 l3!188)))

(declare-fun b!7937262 () Bool)

(assert (=> b!7937262 (= e!4683433 (or (not (= l3!188 Nil!74465)) (= lt!2695544 (++!18274 l1!729 l2!718))))))

(declare-fun b!7937261 () Bool)

(declare-fun res!3149111 () Bool)

(assert (=> b!7937261 (=> (not res!3149111) (not e!4683433))))

(assert (=> b!7937261 (= res!3149111 (= (size!43289 lt!2695544) (+ (size!43289 (++!18274 l1!729 l2!718)) (size!43289 l3!188))))))

(assert (= (and d!2373919 c!1458258) b!7937259))

(assert (= (and d!2373919 (not c!1458258)) b!7937260))

(assert (= (and d!2373919 res!3149112) b!7937261))

(assert (= (and b!7937261 res!3149111) b!7937262))

(declare-fun m!8326090 () Bool)

(assert (=> b!7937260 m!8326090))

(declare-fun m!8326092 () Bool)

(assert (=> d!2373919 m!8326092))

(assert (=> d!2373919 m!8326044))

(declare-fun m!8326094 () Bool)

(assert (=> d!2373919 m!8326094))

(declare-fun m!8326096 () Bool)

(assert (=> d!2373919 m!8326096))

(declare-fun m!8326098 () Bool)

(assert (=> b!7937261 m!8326098))

(assert (=> b!7937261 m!8326044))

(declare-fun m!8326100 () Bool)

(assert (=> b!7937261 m!8326100))

(declare-fun m!8326102 () Bool)

(assert (=> b!7937261 m!8326102))

(assert (=> b!7937231 d!2373919))

(declare-fun d!2373921 () Bool)

(assert (=> d!2373921 (= (++!18274 (++!18274 (t!390302 l1!729) l2!718) l3!188) (++!18274 (t!390302 l1!729) (++!18274 l2!718 l3!188)))))

(declare-fun lt!2695547 () Unit!169579)

(declare-fun choose!59864 (List!74589 List!74589 List!74589) Unit!169579)

(assert (=> d!2373921 (= lt!2695547 (choose!59864 (t!390302 l1!729) l2!718 l3!188))))

(assert (=> d!2373921 (= (lemmaConcatAssociativity!3169 (t!390302 l1!729) l2!718 l3!188) lt!2695547)))

(declare-fun bs!1969263 () Bool)

(assert (= bs!1969263 d!2373921))

(declare-fun m!8326104 () Bool)

(assert (=> bs!1969263 m!8326104))

(assert (=> bs!1969263 m!8326058))

(assert (=> bs!1969263 m!8326048))

(assert (=> bs!1969263 m!8326058))

(declare-fun m!8326106 () Bool)

(assert (=> bs!1969263 m!8326106))

(assert (=> bs!1969263 m!8326048))

(declare-fun m!8326108 () Bool)

(assert (=> bs!1969263 m!8326108))

(assert (=> b!7937231 d!2373921))

(declare-fun b!7937268 () Bool)

(declare-fun e!4683438 () List!74589)

(assert (=> b!7937268 (= e!4683438 (Cons!74465 (h!80913 lt!2695529) (++!18274 (t!390302 lt!2695529) l3!188)))))

(declare-fun d!2373923 () Bool)

(declare-fun e!4683437 () Bool)

(assert (=> d!2373923 e!4683437))

(declare-fun res!3149114 () Bool)

(assert (=> d!2373923 (=> (not res!3149114) (not e!4683437))))

(declare-fun lt!2695550 () List!74589)

(assert (=> d!2373923 (= res!3149114 (= (content!15798 lt!2695550) (set.union (content!15798 lt!2695529) (content!15798 l3!188))))))

(assert (=> d!2373923 (= lt!2695550 e!4683438)))

(declare-fun c!1458261 () Bool)

(assert (=> d!2373923 (= c!1458261 (is-Nil!74465 lt!2695529))))

(assert (=> d!2373923 (= (++!18274 lt!2695529 l3!188) lt!2695550)))

(declare-fun b!7937267 () Bool)

(assert (=> b!7937267 (= e!4683438 l3!188)))

(declare-fun b!7937270 () Bool)

(assert (=> b!7937270 (= e!4683437 (or (not (= l3!188 Nil!74465)) (= lt!2695550 lt!2695529)))))

(declare-fun b!7937269 () Bool)

(declare-fun res!3149113 () Bool)

(assert (=> b!7937269 (=> (not res!3149113) (not e!4683437))))

(assert (=> b!7937269 (= res!3149113 (= (size!43289 lt!2695550) (+ (size!43289 lt!2695529) (size!43289 l3!188))))))

(assert (= (and d!2373923 c!1458261) b!7937267))

(assert (= (and d!2373923 (not c!1458261)) b!7937268))

(assert (= (and d!2373923 res!3149114) b!7937269))

(assert (= (and b!7937269 res!3149113) b!7937270))

(declare-fun m!8326110 () Bool)

(assert (=> b!7937268 m!8326110))

(declare-fun m!8326112 () Bool)

(assert (=> d!2373923 m!8326112))

(declare-fun m!8326114 () Bool)

(assert (=> d!2373923 m!8326114))

(assert (=> d!2373923 m!8326096))

(declare-fun m!8326116 () Bool)

(assert (=> b!7937269 m!8326116))

(declare-fun m!8326118 () Bool)

(assert (=> b!7937269 m!8326118))

(assert (=> b!7937269 m!8326102))

(assert (=> b!7937231 d!2373923))

(declare-fun b!7937274 () Bool)

(declare-fun e!4683442 () List!74589)

(assert (=> b!7937274 (= e!4683442 (Cons!74465 (h!80913 l2!718) (++!18274 (t!390302 l2!718) l3!188)))))

(declare-fun d!2373925 () Bool)

(declare-fun e!4683441 () Bool)

(assert (=> d!2373925 e!4683441))

(declare-fun res!3149118 () Bool)

(assert (=> d!2373925 (=> (not res!3149118) (not e!4683441))))

(declare-fun lt!2695551 () List!74589)

(assert (=> d!2373925 (= res!3149118 (= (content!15798 lt!2695551) (set.union (content!15798 l2!718) (content!15798 l3!188))))))

(assert (=> d!2373925 (= lt!2695551 e!4683442)))

(declare-fun c!1458262 () Bool)

(assert (=> d!2373925 (= c!1458262 (is-Nil!74465 l2!718))))

(assert (=> d!2373925 (= (++!18274 l2!718 l3!188) lt!2695551)))

(declare-fun b!7937273 () Bool)

(assert (=> b!7937273 (= e!4683442 l3!188)))

(declare-fun b!7937276 () Bool)

(assert (=> b!7937276 (= e!4683441 (or (not (= l3!188 Nil!74465)) (= lt!2695551 l2!718)))))

(declare-fun b!7937275 () Bool)

(declare-fun res!3149117 () Bool)

(assert (=> b!7937275 (=> (not res!3149117) (not e!4683441))))

(assert (=> b!7937275 (= res!3149117 (= (size!43289 lt!2695551) (+ (size!43289 l2!718) (size!43289 l3!188))))))

(assert (= (and d!2373925 c!1458262) b!7937273))

(assert (= (and d!2373925 (not c!1458262)) b!7937274))

(assert (= (and d!2373925 res!3149118) b!7937275))

(assert (= (and b!7937275 res!3149117) b!7937276))

(declare-fun m!8326120 () Bool)

(assert (=> b!7937274 m!8326120))

(declare-fun m!8326122 () Bool)

(assert (=> d!2373925 m!8326122))

(declare-fun m!8326124 () Bool)

(assert (=> d!2373925 m!8326124))

(assert (=> d!2373925 m!8326096))

(declare-fun m!8326126 () Bool)

(assert (=> b!7937275 m!8326126))

(declare-fun m!8326128 () Bool)

(assert (=> b!7937275 m!8326128))

(assert (=> b!7937275 m!8326102))

(assert (=> b!7937231 d!2373925))

(declare-fun b!7937280 () Bool)

(declare-fun e!4683444 () List!74589)

(assert (=> b!7937280 (= e!4683444 (Cons!74465 (h!80913 (t!390302 l1!729)) (++!18274 (t!390302 (t!390302 l1!729)) l2!718)))))

(declare-fun d!2373927 () Bool)

(declare-fun e!4683443 () Bool)

(assert (=> d!2373927 e!4683443))

(declare-fun res!3149122 () Bool)

(assert (=> d!2373927 (=> (not res!3149122) (not e!4683443))))

(declare-fun lt!2695552 () List!74589)

(assert (=> d!2373927 (= res!3149122 (= (content!15798 lt!2695552) (set.union (content!15798 (t!390302 l1!729)) (content!15798 l2!718))))))

(assert (=> d!2373927 (= lt!2695552 e!4683444)))

(declare-fun c!1458263 () Bool)

(assert (=> d!2373927 (= c!1458263 (is-Nil!74465 (t!390302 l1!729)))))

(assert (=> d!2373927 (= (++!18274 (t!390302 l1!729) l2!718) lt!2695552)))

(declare-fun b!7937279 () Bool)

(assert (=> b!7937279 (= e!4683444 l2!718)))

(declare-fun b!7937282 () Bool)

(assert (=> b!7937282 (= e!4683443 (or (not (= l2!718 Nil!74465)) (= lt!2695552 (t!390302 l1!729))))))

(declare-fun b!7937281 () Bool)

(declare-fun res!3149121 () Bool)

(assert (=> b!7937281 (=> (not res!3149121) (not e!4683443))))

(assert (=> b!7937281 (= res!3149121 (= (size!43289 lt!2695552) (+ (size!43289 (t!390302 l1!729)) (size!43289 l2!718))))))

(assert (= (and d!2373927 c!1458263) b!7937279))

(assert (= (and d!2373927 (not c!1458263)) b!7937280))

(assert (= (and d!2373927 res!3149122) b!7937281))

(assert (= (and b!7937281 res!3149121) b!7937282))

(declare-fun m!8326130 () Bool)

(assert (=> b!7937280 m!8326130))

(declare-fun m!8326132 () Bool)

(assert (=> d!2373927 m!8326132))

(assert (=> d!2373927 m!8326080))

(assert (=> d!2373927 m!8326124))

(declare-fun m!8326134 () Bool)

(assert (=> b!7937281 m!8326134))

(assert (=> b!7937281 m!8326086))

(assert (=> b!7937281 m!8326128))

(assert (=> b!7937231 d!2373927))

(declare-fun b!7937284 () Bool)

(declare-fun e!4683446 () List!74589)

(assert (=> b!7937284 (= e!4683446 (Cons!74465 (h!80913 l1!729) (++!18274 (t!390302 l1!729) l2!718)))))

(declare-fun d!2373929 () Bool)

(declare-fun e!4683445 () Bool)

(assert (=> d!2373929 e!4683445))

(declare-fun res!3149124 () Bool)

(assert (=> d!2373929 (=> (not res!3149124) (not e!4683445))))

(declare-fun lt!2695553 () List!74589)

(assert (=> d!2373929 (= res!3149124 (= (content!15798 lt!2695553) (set.union (content!15798 l1!729) (content!15798 l2!718))))))

(assert (=> d!2373929 (= lt!2695553 e!4683446)))

(declare-fun c!1458264 () Bool)

(assert (=> d!2373929 (= c!1458264 (is-Nil!74465 l1!729))))

(assert (=> d!2373929 (= (++!18274 l1!729 l2!718) lt!2695553)))

(declare-fun b!7937283 () Bool)

(assert (=> b!7937283 (= e!4683446 l2!718)))

(declare-fun b!7937286 () Bool)

(assert (=> b!7937286 (= e!4683445 (or (not (= l2!718 Nil!74465)) (= lt!2695553 l1!729)))))

(declare-fun b!7937285 () Bool)

(declare-fun res!3149123 () Bool)

(assert (=> b!7937285 (=> (not res!3149123) (not e!4683445))))

(assert (=> b!7937285 (= res!3149123 (= (size!43289 lt!2695553) (+ (size!43289 l1!729) (size!43289 l2!718))))))

(assert (= (and d!2373929 c!1458264) b!7937283))

(assert (= (and d!2373929 (not c!1458264)) b!7937284))

(assert (= (and d!2373929 res!3149124) b!7937285))

(assert (= (and b!7937285 res!3149123) b!7937286))

(assert (=> b!7937284 m!8326058))

(declare-fun m!8326136 () Bool)

(assert (=> d!2373929 m!8326136))

(declare-fun m!8326138 () Bool)

(assert (=> d!2373929 m!8326138))

(assert (=> d!2373929 m!8326124))

(declare-fun m!8326140 () Bool)

(assert (=> b!7937285 m!8326140))

(declare-fun m!8326142 () Bool)

(assert (=> b!7937285 m!8326142))

(assert (=> b!7937285 m!8326128))

(assert (=> b!7937231 d!2373929))

(declare-fun b!7937288 () Bool)

(declare-fun e!4683448 () List!74589)

(assert (=> b!7937288 (= e!4683448 (Cons!74465 (h!80913 l1!729) (++!18274 (t!390302 l1!729) lt!2695531)))))

(declare-fun d!2373931 () Bool)

(declare-fun e!4683447 () Bool)

(assert (=> d!2373931 e!4683447))

(declare-fun res!3149126 () Bool)

(assert (=> d!2373931 (=> (not res!3149126) (not e!4683447))))

(declare-fun lt!2695554 () List!74589)

(assert (=> d!2373931 (= res!3149126 (= (content!15798 lt!2695554) (set.union (content!15798 l1!729) (content!15798 lt!2695531))))))

(assert (=> d!2373931 (= lt!2695554 e!4683448)))

(declare-fun c!1458265 () Bool)

(assert (=> d!2373931 (= c!1458265 (is-Nil!74465 l1!729))))

(assert (=> d!2373931 (= (++!18274 l1!729 lt!2695531) lt!2695554)))

(declare-fun b!7937287 () Bool)

(assert (=> b!7937287 (= e!4683448 lt!2695531)))

(declare-fun b!7937290 () Bool)

(assert (=> b!7937290 (= e!4683447 (or (not (= lt!2695531 Nil!74465)) (= lt!2695554 l1!729)))))

(declare-fun b!7937289 () Bool)

(declare-fun res!3149125 () Bool)

(assert (=> b!7937289 (=> (not res!3149125) (not e!4683447))))

(assert (=> b!7937289 (= res!3149125 (= (size!43289 lt!2695554) (+ (size!43289 l1!729) (size!43289 lt!2695531))))))

(assert (= (and d!2373931 c!1458265) b!7937287))

(assert (= (and d!2373931 (not c!1458265)) b!7937288))

(assert (= (and d!2373931 res!3149126) b!7937289))

(assert (= (and b!7937289 res!3149125) b!7937290))

(assert (=> b!7937288 m!8326050))

(declare-fun m!8326144 () Bool)

(assert (=> d!2373931 m!8326144))

(assert (=> d!2373931 m!8326138))

(assert (=> d!2373931 m!8326082))

(declare-fun m!8326146 () Bool)

(assert (=> b!7937289 m!8326146))

(assert (=> b!7937289 m!8326142))

(assert (=> b!7937289 m!8326088))

(assert (=> b!7937231 d!2373931))

(declare-fun b!7937295 () Bool)

(declare-fun e!4683451 () Bool)

(declare-fun tp!2359771 () Bool)

(assert (=> b!7937295 (= e!4683451 (and tp_is_empty!53263 tp!2359771))))

(assert (=> b!7937234 (= tp!2359757 e!4683451)))

(assert (= (and b!7937234 (is-Cons!74465 (t!390302 l3!188))) b!7937295))

(declare-fun b!7937296 () Bool)

(declare-fun e!4683452 () Bool)

(declare-fun tp!2359772 () Bool)

(assert (=> b!7937296 (= e!4683452 (and tp_is_empty!53263 tp!2359772))))

(assert (=> b!7937232 (= tp!2359759 e!4683452)))

(assert (= (and b!7937232 (is-Cons!74465 (t!390302 l1!729))) b!7937296))

(declare-fun b!7937297 () Bool)

(declare-fun e!4683453 () Bool)

(declare-fun tp!2359773 () Bool)

(assert (=> b!7937297 (= e!4683453 (and tp_is_empty!53263 tp!2359773))))

(assert (=> b!7937233 (= tp!2359758 e!4683453)))

(assert (= (and b!7937233 (is-Cons!74465 (t!390302 l2!718))) b!7937297))

(push 1)

(assert (not b!7937257))

(assert (not d!2373929))

(assert (not d!2373919))

(assert (not d!2373923))

(assert (not b!7937297))

(assert (not b!7937269))

(assert (not b!7937281))

(assert (not b!7937289))

(assert (not d!2373927))

(assert (not b!7937288))

(assert (not b!7937274))

(assert (not b!7937260))

(assert (not b!7937268))

(assert (not b!7937256))

(assert (not b!7937284))

(assert (not b!7937285))

(assert (not b!7937296))

(assert (not b!7937295))

(assert (not d!2373921))

(assert tp_is_empty!53263)

(assert (not b!7937280))

(assert (not d!2373931))

(assert (not d!2373925))

(assert (not b!7937261))

(assert (not b!7937275))

(assert (not d!2373915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

