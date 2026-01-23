; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754628 () Bool)

(assert start!754628)

(declare-fun b!8018193 () Bool)

(declare-fun res!3170257 () Bool)

(declare-fun e!4723229 () Bool)

(assert (=> b!8018193 (=> (not res!3170257) (not e!4723229))))

(declare-datatypes ((B!4073 0))(
  ( (B!4074 (val!32426 Int)) )
))
(declare-datatypes ((List!74938 0))(
  ( (Nil!74814) (Cons!74814 (h!81262 B!4073) (t!390681 List!74938)) )
))
(declare-fun p!2009 () List!74938)

(declare-fun l!3435 () List!74938)

(declare-fun size!43605 (List!74938) Int)

(assert (=> b!8018193 (= res!3170257 (< (size!43605 p!2009) (size!43605 l!3435)))))

(declare-fun b!8018195 () Bool)

(declare-fun e!4723230 () Bool)

(declare-fun tp_is_empty!53961 () Bool)

(declare-fun tp!2400030 () Bool)

(assert (=> b!8018195 (= e!4723230 (and tp_is_empty!53961 tp!2400030))))

(declare-fun b!8018196 () Bool)

(declare-fun e!4723231 () Bool)

(declare-fun tp!2400029 () Bool)

(assert (=> b!8018196 (= e!4723231 (and tp_is_empty!53961 tp!2400029))))

(declare-fun res!3170258 () Bool)

(assert (=> start!754628 (=> (not res!3170258) (not e!4723229))))

(declare-fun isPrefix!6761 (List!74938 List!74938) Bool)

(assert (=> start!754628 (= res!3170258 (isPrefix!6761 p!2009 l!3435))))

(assert (=> start!754628 e!4723229))

(assert (=> start!754628 e!4723230))

(assert (=> start!754628 e!4723231))

(declare-fun b!8018194 () Bool)

(get-info :version)

(assert (=> b!8018194 (= e!4723229 (and ((_ is Cons!74814) p!2009) (= l!3435 Nil!74814)))))

(assert (= (and start!754628 res!3170258) b!8018193))

(assert (= (and b!8018193 res!3170257) b!8018194))

(assert (= (and start!754628 ((_ is Cons!74814) p!2009)) b!8018195))

(assert (= (and start!754628 ((_ is Cons!74814) l!3435)) b!8018196))

(declare-fun m!8381192 () Bool)

(assert (=> b!8018193 m!8381192))

(declare-fun m!8381194 () Bool)

(assert (=> b!8018193 m!8381194))

(declare-fun m!8381196 () Bool)

(assert (=> start!754628 m!8381196))

(check-sat tp_is_empty!53961 (not b!8018195) (not b!8018193) (not b!8018196) (not start!754628))
(check-sat)
(get-model)

(declare-fun d!2390717 () Bool)

(declare-fun lt!2719208 () Int)

(assert (=> d!2390717 (>= lt!2719208 0)))

(declare-fun e!4723238 () Int)

(assert (=> d!2390717 (= lt!2719208 e!4723238)))

(declare-fun c!1471665 () Bool)

(assert (=> d!2390717 (= c!1471665 ((_ is Nil!74814) p!2009))))

(assert (=> d!2390717 (= (size!43605 p!2009) lt!2719208)))

(declare-fun b!8018209 () Bool)

(assert (=> b!8018209 (= e!4723238 0)))

(declare-fun b!8018210 () Bool)

(assert (=> b!8018210 (= e!4723238 (+ 1 (size!43605 (t!390681 p!2009))))))

(assert (= (and d!2390717 c!1471665) b!8018209))

(assert (= (and d!2390717 (not c!1471665)) b!8018210))

(declare-fun m!8381202 () Bool)

(assert (=> b!8018210 m!8381202))

(assert (=> b!8018193 d!2390717))

(declare-fun d!2390723 () Bool)

(declare-fun lt!2719209 () Int)

(assert (=> d!2390723 (>= lt!2719209 0)))

(declare-fun e!4723239 () Int)

(assert (=> d!2390723 (= lt!2719209 e!4723239)))

(declare-fun c!1471666 () Bool)

(assert (=> d!2390723 (= c!1471666 ((_ is Nil!74814) l!3435))))

(assert (=> d!2390723 (= (size!43605 l!3435) lt!2719209)))

(declare-fun b!8018211 () Bool)

(assert (=> b!8018211 (= e!4723239 0)))

(declare-fun b!8018212 () Bool)

(assert (=> b!8018212 (= e!4723239 (+ 1 (size!43605 (t!390681 l!3435))))))

(assert (= (and d!2390723 c!1471666) b!8018211))

(assert (= (and d!2390723 (not c!1471666)) b!8018212))

(declare-fun m!8381204 () Bool)

(assert (=> b!8018212 m!8381204))

(assert (=> b!8018193 d!2390723))

(declare-fun b!8018240 () Bool)

(declare-fun res!3170280 () Bool)

(declare-fun e!4723260 () Bool)

(assert (=> b!8018240 (=> (not res!3170280) (not e!4723260))))

(declare-fun head!16377 (List!74938) B!4073)

(assert (=> b!8018240 (= res!3170280 (= (head!16377 p!2009) (head!16377 l!3435)))))

(declare-fun b!8018239 () Bool)

(declare-fun e!4723261 () Bool)

(assert (=> b!8018239 (= e!4723261 e!4723260)))

(declare-fun res!3170282 () Bool)

(assert (=> b!8018239 (=> (not res!3170282) (not e!4723260))))

(assert (=> b!8018239 (= res!3170282 (not ((_ is Nil!74814) l!3435)))))

(declare-fun b!8018242 () Bool)

(declare-fun e!4723259 () Bool)

(assert (=> b!8018242 (= e!4723259 (>= (size!43605 l!3435) (size!43605 p!2009)))))

(declare-fun b!8018241 () Bool)

(declare-fun tail!15902 (List!74938) List!74938)

(assert (=> b!8018241 (= e!4723260 (isPrefix!6761 (tail!15902 p!2009) (tail!15902 l!3435)))))

(declare-fun d!2390725 () Bool)

(assert (=> d!2390725 e!4723259))

(declare-fun res!3170279 () Bool)

(assert (=> d!2390725 (=> res!3170279 e!4723259)))

(declare-fun lt!2719215 () Bool)

(assert (=> d!2390725 (= res!3170279 (not lt!2719215))))

(assert (=> d!2390725 (= lt!2719215 e!4723261)))

(declare-fun res!3170281 () Bool)

(assert (=> d!2390725 (=> res!3170281 e!4723261)))

(assert (=> d!2390725 (= res!3170281 ((_ is Nil!74814) p!2009))))

(assert (=> d!2390725 (= (isPrefix!6761 p!2009 l!3435) lt!2719215)))

(assert (= (and d!2390725 (not res!3170281)) b!8018239))

(assert (= (and b!8018239 res!3170282) b!8018240))

(assert (= (and b!8018240 res!3170280) b!8018241))

(assert (= (and d!2390725 (not res!3170279)) b!8018242))

(declare-fun m!8381216 () Bool)

(assert (=> b!8018240 m!8381216))

(declare-fun m!8381218 () Bool)

(assert (=> b!8018240 m!8381218))

(assert (=> b!8018242 m!8381194))

(assert (=> b!8018242 m!8381192))

(declare-fun m!8381220 () Bool)

(assert (=> b!8018241 m!8381220))

(declare-fun m!8381222 () Bool)

(assert (=> b!8018241 m!8381222))

(assert (=> b!8018241 m!8381220))

(assert (=> b!8018241 m!8381222))

(declare-fun m!8381224 () Bool)

(assert (=> b!8018241 m!8381224))

(assert (=> start!754628 d!2390725))

(declare-fun b!8018247 () Bool)

(declare-fun e!4723264 () Bool)

(declare-fun tp!2400037 () Bool)

(assert (=> b!8018247 (= e!4723264 (and tp_is_empty!53961 tp!2400037))))

(assert (=> b!8018195 (= tp!2400030 e!4723264)))

(assert (= (and b!8018195 ((_ is Cons!74814) (t!390681 p!2009))) b!8018247))

(declare-fun b!8018248 () Bool)

(declare-fun e!4723265 () Bool)

(declare-fun tp!2400038 () Bool)

(assert (=> b!8018248 (= e!4723265 (and tp_is_empty!53961 tp!2400038))))

(assert (=> b!8018196 (= tp!2400029 e!4723265)))

(assert (= (and b!8018196 ((_ is Cons!74814) (t!390681 l!3435))) b!8018248))

(check-sat tp_is_empty!53961 (not b!8018247) (not b!8018248) (not b!8018212) (not b!8018240) (not b!8018241) (not b!8018210) (not b!8018242))
(check-sat)
