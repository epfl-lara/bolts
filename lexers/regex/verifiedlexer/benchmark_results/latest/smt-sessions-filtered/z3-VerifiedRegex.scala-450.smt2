; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13206 () Bool)

(assert start!13206)

(declare-fun b!128230 () Bool)

(declare-fun e!73693 () Bool)

(declare-fun e!73691 () Bool)

(assert (=> b!128230 (= e!73693 e!73691)))

(declare-fun res!59146 () Bool)

(assert (=> b!128230 (=> (not res!59146) (not e!73691))))

(declare-datatypes ((B!657 0))(
  ( (B!658 (val!792 Int)) )
))
(declare-datatypes ((List!2123 0))(
  ( (Nil!2117) (Cons!2117 (h!7514 B!657) (t!22699 List!2123)) )
))
(declare-fun s!1511 () List!2123)

(declare-fun p!1997 () List!2123)

(declare-fun lt!38364 () List!2123)

(declare-fun ++!414 (List!2123 List!2123) List!2123)

(assert (=> b!128230 (= res!59146 (= (++!414 (t!22699 p!1997) s!1511) lt!38364))))

(declare-fun l!3367 () List!2123)

(declare-fun tail!262 (List!2123) List!2123)

(assert (=> b!128230 (= lt!38364 (tail!262 l!3367))))

(declare-fun b!128231 () Bool)

(declare-fun res!59147 () Bool)

(assert (=> b!128231 (=> (not res!59147) (not e!73693))))

(declare-fun isEmpty!847 (List!2123) Bool)

(assert (=> b!128231 (= res!59147 (not (isEmpty!847 s!1511)))))

(declare-fun b!128233 () Bool)

(declare-fun e!73689 () Bool)

(declare-fun tp_is_empty!1265 () Bool)

(declare-fun tp!69869 () Bool)

(assert (=> b!128233 (= e!73689 (and tp_is_empty!1265 tp!69869))))

(declare-fun b!128234 () Bool)

(declare-fun lt!38363 () List!2123)

(declare-fun removeLast!6 (List!2123) List!2123)

(assert (=> b!128234 (= e!73691 (not (= (++!414 p!1997 lt!38363) (removeLast!6 l!3367))))))

(assert (=> b!128234 (= (++!414 (t!22699 p!1997) lt!38363) (removeLast!6 lt!38364))))

(assert (=> b!128234 (= lt!38363 (removeLast!6 s!1511))))

(declare-datatypes ((Unit!1649 0))(
  ( (Unit!1650) )
))
(declare-fun lt!38365 () Unit!1649)

(declare-fun lemmaRemoveLastFromBothSidePreservesEq!6 (List!2123 List!2123 List!2123) Unit!1649)

(assert (=> b!128234 (= lt!38365 (lemmaRemoveLastFromBothSidePreservesEq!6 (t!22699 p!1997) s!1511 lt!38364))))

(declare-fun b!128235 () Bool)

(declare-fun res!59148 () Bool)

(assert (=> b!128235 (=> (not res!59148) (not e!73693))))

(get-info :version)

(assert (=> b!128235 (= res!59148 ((_ is Cons!2117) p!1997))))

(declare-fun b!128236 () Bool)

(declare-fun e!73690 () Bool)

(declare-fun tp!69871 () Bool)

(assert (=> b!128236 (= e!73690 (and tp_is_empty!1265 tp!69871))))

(declare-fun res!59145 () Bool)

(assert (=> start!13206 (=> (not res!59145) (not e!73693))))

(assert (=> start!13206 (= res!59145 (= (++!414 p!1997 s!1511) l!3367))))

(assert (=> start!13206 e!73693))

(declare-fun e!73692 () Bool)

(assert (=> start!13206 e!73692))

(assert (=> start!13206 e!73690))

(assert (=> start!13206 e!73689))

(declare-fun b!128232 () Bool)

(declare-fun tp!69870 () Bool)

(assert (=> b!128232 (= e!73692 (and tp_is_empty!1265 tp!69870))))

(assert (= (and start!13206 res!59145) b!128231))

(assert (= (and b!128231 res!59147) b!128235))

(assert (= (and b!128235 res!59148) b!128230))

(assert (= (and b!128230 res!59146) b!128234))

(assert (= (and start!13206 ((_ is Cons!2117) p!1997)) b!128232))

(assert (= (and start!13206 ((_ is Cons!2117) s!1511)) b!128236))

(assert (= (and start!13206 ((_ is Cons!2117) l!3367)) b!128233))

(declare-fun m!112889 () Bool)

(assert (=> b!128230 m!112889))

(declare-fun m!112891 () Bool)

(assert (=> b!128230 m!112891))

(declare-fun m!112893 () Bool)

(assert (=> b!128231 m!112893))

(declare-fun m!112895 () Bool)

(assert (=> b!128234 m!112895))

(declare-fun m!112897 () Bool)

(assert (=> b!128234 m!112897))

(declare-fun m!112899 () Bool)

(assert (=> b!128234 m!112899))

(declare-fun m!112901 () Bool)

(assert (=> b!128234 m!112901))

(declare-fun m!112903 () Bool)

(assert (=> b!128234 m!112903))

(declare-fun m!112905 () Bool)

(assert (=> b!128234 m!112905))

(declare-fun m!112907 () Bool)

(assert (=> start!13206 m!112907))

(check-sat (not b!128233) (not b!128230) (not b!128231) (not b!128232) tp_is_empty!1265 (not b!128234) (not b!128236) (not start!13206))
(check-sat)
(get-model)

(declare-fun lt!38368 () List!2123)

(declare-fun e!73698 () Bool)

(declare-fun b!128248 () Bool)

(assert (=> b!128248 (= e!73698 (or (not (= s!1511 Nil!2117)) (= lt!38368 (t!22699 p!1997))))))

(declare-fun b!128247 () Bool)

(declare-fun res!59154 () Bool)

(assert (=> b!128247 (=> (not res!59154) (not e!73698))))

(declare-fun size!1934 (List!2123) Int)

(assert (=> b!128247 (= res!59154 (= (size!1934 lt!38368) (+ (size!1934 (t!22699 p!1997)) (size!1934 s!1511))))))

(declare-fun b!128246 () Bool)

(declare-fun e!73699 () List!2123)

(assert (=> b!128246 (= e!73699 (Cons!2117 (h!7514 (t!22699 p!1997)) (++!414 (t!22699 (t!22699 p!1997)) s!1511)))))

(declare-fun b!128245 () Bool)

(assert (=> b!128245 (= e!73699 s!1511)))

(declare-fun d!30253 () Bool)

(assert (=> d!30253 e!73698))

(declare-fun res!59153 () Bool)

(assert (=> d!30253 (=> (not res!59153) (not e!73698))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!252 (List!2123) (InoxSet B!657))

(assert (=> d!30253 (= res!59153 (= (content!252 lt!38368) ((_ map or) (content!252 (t!22699 p!1997)) (content!252 s!1511))))))

(assert (=> d!30253 (= lt!38368 e!73699)))

(declare-fun c!28011 () Bool)

(assert (=> d!30253 (= c!28011 ((_ is Nil!2117) (t!22699 p!1997)))))

(assert (=> d!30253 (= (++!414 (t!22699 p!1997) s!1511) lt!38368)))

(assert (= (and d!30253 c!28011) b!128245))

(assert (= (and d!30253 (not c!28011)) b!128246))

(assert (= (and d!30253 res!59153) b!128247))

(assert (= (and b!128247 res!59154) b!128248))

(declare-fun m!112909 () Bool)

(assert (=> b!128247 m!112909))

(declare-fun m!112911 () Bool)

(assert (=> b!128247 m!112911))

(declare-fun m!112913 () Bool)

(assert (=> b!128247 m!112913))

(declare-fun m!112915 () Bool)

(assert (=> b!128246 m!112915))

(declare-fun m!112917 () Bool)

(assert (=> d!30253 m!112917))

(declare-fun m!112919 () Bool)

(assert (=> d!30253 m!112919))

(declare-fun m!112921 () Bool)

(assert (=> d!30253 m!112921))

(assert (=> b!128230 d!30253))

(declare-fun d!30259 () Bool)

(assert (=> d!30259 (= (tail!262 l!3367) (t!22699 l!3367))))

(assert (=> b!128230 d!30259))

(declare-fun d!30261 () Bool)

(assert (=> d!30261 (= (isEmpty!847 s!1511) ((_ is Nil!2117) s!1511))))

(assert (=> b!128231 d!30261))

(declare-fun e!73704 () Bool)

(declare-fun b!128260 () Bool)

(declare-fun lt!38371 () List!2123)

(assert (=> b!128260 (= e!73704 (or (not (= s!1511 Nil!2117)) (= lt!38371 p!1997)))))

(declare-fun b!128259 () Bool)

(declare-fun res!59160 () Bool)

(assert (=> b!128259 (=> (not res!59160) (not e!73704))))

(assert (=> b!128259 (= res!59160 (= (size!1934 lt!38371) (+ (size!1934 p!1997) (size!1934 s!1511))))))

(declare-fun b!128258 () Bool)

(declare-fun e!73705 () List!2123)

(assert (=> b!128258 (= e!73705 (Cons!2117 (h!7514 p!1997) (++!414 (t!22699 p!1997) s!1511)))))

(declare-fun b!128257 () Bool)

(assert (=> b!128257 (= e!73705 s!1511)))

(declare-fun d!30263 () Bool)

(assert (=> d!30263 e!73704))

(declare-fun res!59159 () Bool)

(assert (=> d!30263 (=> (not res!59159) (not e!73704))))

(assert (=> d!30263 (= res!59159 (= (content!252 lt!38371) ((_ map or) (content!252 p!1997) (content!252 s!1511))))))

(assert (=> d!30263 (= lt!38371 e!73705)))

(declare-fun c!28014 () Bool)

(assert (=> d!30263 (= c!28014 ((_ is Nil!2117) p!1997))))

(assert (=> d!30263 (= (++!414 p!1997 s!1511) lt!38371)))

(assert (= (and d!30263 c!28014) b!128257))

(assert (= (and d!30263 (not c!28014)) b!128258))

(assert (= (and d!30263 res!59159) b!128259))

(assert (= (and b!128259 res!59160) b!128260))

(declare-fun m!112923 () Bool)

(assert (=> b!128259 m!112923))

(declare-fun m!112925 () Bool)

(assert (=> b!128259 m!112925))

(assert (=> b!128259 m!112913))

(assert (=> b!128258 m!112889))

(declare-fun m!112927 () Bool)

(assert (=> d!30263 m!112927))

(declare-fun m!112929 () Bool)

(assert (=> d!30263 m!112929))

(assert (=> d!30263 m!112921))

(assert (=> start!13206 d!30263))

(declare-fun lt!38372 () List!2123)

(declare-fun e!73706 () Bool)

(declare-fun b!128264 () Bool)

(assert (=> b!128264 (= e!73706 (or (not (= lt!38363 Nil!2117)) (= lt!38372 p!1997)))))

(declare-fun b!128263 () Bool)

(declare-fun res!59162 () Bool)

(assert (=> b!128263 (=> (not res!59162) (not e!73706))))

(assert (=> b!128263 (= res!59162 (= (size!1934 lt!38372) (+ (size!1934 p!1997) (size!1934 lt!38363))))))

(declare-fun b!128262 () Bool)

(declare-fun e!73707 () List!2123)

(assert (=> b!128262 (= e!73707 (Cons!2117 (h!7514 p!1997) (++!414 (t!22699 p!1997) lt!38363)))))

(declare-fun b!128261 () Bool)

(assert (=> b!128261 (= e!73707 lt!38363)))

(declare-fun d!30265 () Bool)

(assert (=> d!30265 e!73706))

(declare-fun res!59161 () Bool)

(assert (=> d!30265 (=> (not res!59161) (not e!73706))))

(assert (=> d!30265 (= res!59161 (= (content!252 lt!38372) ((_ map or) (content!252 p!1997) (content!252 lt!38363))))))

(assert (=> d!30265 (= lt!38372 e!73707)))

(declare-fun c!28015 () Bool)

(assert (=> d!30265 (= c!28015 ((_ is Nil!2117) p!1997))))

(assert (=> d!30265 (= (++!414 p!1997 lt!38363) lt!38372)))

(assert (= (and d!30265 c!28015) b!128261))

(assert (= (and d!30265 (not c!28015)) b!128262))

(assert (= (and d!30265 res!59161) b!128263))

(assert (= (and b!128263 res!59162) b!128264))

(declare-fun m!112931 () Bool)

(assert (=> b!128263 m!112931))

(assert (=> b!128263 m!112925))

(declare-fun m!112933 () Bool)

(assert (=> b!128263 m!112933))

(assert (=> b!128262 m!112895))

(declare-fun m!112935 () Bool)

(assert (=> d!30265 m!112935))

(assert (=> d!30265 m!112929))

(declare-fun m!112937 () Bool)

(assert (=> d!30265 m!112937))

(assert (=> b!128234 d!30265))

(declare-fun d!30267 () Bool)

(assert (=> d!30267 (= (++!414 (t!22699 p!1997) (removeLast!6 s!1511)) (removeLast!6 lt!38364))))

(declare-fun lt!38377 () Unit!1649)

(declare-fun choose!1643 (List!2123 List!2123 List!2123) Unit!1649)

(assert (=> d!30267 (= lt!38377 (choose!1643 (t!22699 p!1997) s!1511 lt!38364))))

(assert (=> d!30267 (= (++!414 (t!22699 p!1997) s!1511) lt!38364)))

(assert (=> d!30267 (= (lemmaRemoveLastFromBothSidePreservesEq!6 (t!22699 p!1997) s!1511 lt!38364) lt!38377)))

(declare-fun bs!12526 () Bool)

(assert (= bs!12526 d!30267))

(assert (=> bs!12526 m!112889))

(declare-fun m!112963 () Bool)

(assert (=> bs!12526 m!112963))

(assert (=> bs!12526 m!112901))

(assert (=> bs!12526 m!112899))

(assert (=> bs!12526 m!112901))

(declare-fun m!112965 () Bool)

(assert (=> bs!12526 m!112965))

(assert (=> b!128234 d!30267))

(declare-fun d!30275 () Bool)

(declare-fun lt!38384 () List!2123)

(declare-fun last!11 (List!2123) B!657)

(assert (=> d!30275 (= (++!414 lt!38384 (Cons!2117 (last!11 l!3367) Nil!2117)) l!3367)))

(declare-fun e!73718 () List!2123)

(assert (=> d!30275 (= lt!38384 e!73718)))

(declare-fun c!28024 () Bool)

(assert (=> d!30275 (= c!28024 (and ((_ is Cons!2117) l!3367) ((_ is Nil!2117) (t!22699 l!3367))))))

(assert (=> d!30275 (not (isEmpty!847 l!3367))))

(assert (=> d!30275 (= (removeLast!6 l!3367) lt!38384)))

(declare-fun b!128285 () Bool)

(assert (=> b!128285 (= e!73718 Nil!2117)))

(declare-fun b!128286 () Bool)

(assert (=> b!128286 (= e!73718 (Cons!2117 (h!7514 l!3367) (removeLast!6 (t!22699 l!3367))))))

(assert (= (and d!30275 c!28024) b!128285))

(assert (= (and d!30275 (not c!28024)) b!128286))

(declare-fun m!112981 () Bool)

(assert (=> d!30275 m!112981))

(declare-fun m!112983 () Bool)

(assert (=> d!30275 m!112983))

(declare-fun m!112985 () Bool)

(assert (=> d!30275 m!112985))

(declare-fun m!112987 () Bool)

(assert (=> b!128286 m!112987))

(assert (=> b!128234 d!30275))

(declare-fun d!30281 () Bool)

(declare-fun lt!38385 () List!2123)

(assert (=> d!30281 (= (++!414 lt!38385 (Cons!2117 (last!11 s!1511) Nil!2117)) s!1511)))

(declare-fun e!73719 () List!2123)

(assert (=> d!30281 (= lt!38385 e!73719)))

(declare-fun c!28025 () Bool)

(assert (=> d!30281 (= c!28025 (and ((_ is Cons!2117) s!1511) ((_ is Nil!2117) (t!22699 s!1511))))))

(assert (=> d!30281 (not (isEmpty!847 s!1511))))

(assert (=> d!30281 (= (removeLast!6 s!1511) lt!38385)))

(declare-fun b!128287 () Bool)

(assert (=> b!128287 (= e!73719 Nil!2117)))

(declare-fun b!128288 () Bool)

(assert (=> b!128288 (= e!73719 (Cons!2117 (h!7514 s!1511) (removeLast!6 (t!22699 s!1511))))))

(assert (= (and d!30281 c!28025) b!128287))

(assert (= (and d!30281 (not c!28025)) b!128288))

(declare-fun m!112989 () Bool)

(assert (=> d!30281 m!112989))

(declare-fun m!112991 () Bool)

(assert (=> d!30281 m!112991))

(assert (=> d!30281 m!112893))

(declare-fun m!112993 () Bool)

(assert (=> b!128288 m!112993))

(assert (=> b!128234 d!30281))

(declare-fun d!30283 () Bool)

(declare-fun lt!38386 () List!2123)

(assert (=> d!30283 (= (++!414 lt!38386 (Cons!2117 (last!11 lt!38364) Nil!2117)) lt!38364)))

(declare-fun e!73720 () List!2123)

(assert (=> d!30283 (= lt!38386 e!73720)))

(declare-fun c!28026 () Bool)

(assert (=> d!30283 (= c!28026 (and ((_ is Cons!2117) lt!38364) ((_ is Nil!2117) (t!22699 lt!38364))))))

(assert (=> d!30283 (not (isEmpty!847 lt!38364))))

(assert (=> d!30283 (= (removeLast!6 lt!38364) lt!38386)))

(declare-fun b!128289 () Bool)

(assert (=> b!128289 (= e!73720 Nil!2117)))

(declare-fun b!128290 () Bool)

(assert (=> b!128290 (= e!73720 (Cons!2117 (h!7514 lt!38364) (removeLast!6 (t!22699 lt!38364))))))

(assert (= (and d!30283 c!28026) b!128289))

(assert (= (and d!30283 (not c!28026)) b!128290))

(declare-fun m!112995 () Bool)

(assert (=> d!30283 m!112995))

(declare-fun m!112997 () Bool)

(assert (=> d!30283 m!112997))

(declare-fun m!112999 () Bool)

(assert (=> d!30283 m!112999))

(declare-fun m!113001 () Bool)

(assert (=> b!128290 m!113001))

(assert (=> b!128234 d!30283))

(declare-fun lt!38389 () List!2123)

(declare-fun b!128294 () Bool)

(declare-fun e!73721 () Bool)

(assert (=> b!128294 (= e!73721 (or (not (= lt!38363 Nil!2117)) (= lt!38389 (t!22699 p!1997))))))

(declare-fun b!128293 () Bool)

(declare-fun res!59168 () Bool)

(assert (=> b!128293 (=> (not res!59168) (not e!73721))))

(assert (=> b!128293 (= res!59168 (= (size!1934 lt!38389) (+ (size!1934 (t!22699 p!1997)) (size!1934 lt!38363))))))

(declare-fun b!128292 () Bool)

(declare-fun e!73722 () List!2123)

(assert (=> b!128292 (= e!73722 (Cons!2117 (h!7514 (t!22699 p!1997)) (++!414 (t!22699 (t!22699 p!1997)) lt!38363)))))

(declare-fun b!128291 () Bool)

(assert (=> b!128291 (= e!73722 lt!38363)))

(declare-fun d!30285 () Bool)

(assert (=> d!30285 e!73721))

(declare-fun res!59167 () Bool)

(assert (=> d!30285 (=> (not res!59167) (not e!73721))))

(assert (=> d!30285 (= res!59167 (= (content!252 lt!38389) ((_ map or) (content!252 (t!22699 p!1997)) (content!252 lt!38363))))))

(assert (=> d!30285 (= lt!38389 e!73722)))

(declare-fun c!28027 () Bool)

(assert (=> d!30285 (= c!28027 ((_ is Nil!2117) (t!22699 p!1997)))))

(assert (=> d!30285 (= (++!414 (t!22699 p!1997) lt!38363) lt!38389)))

(assert (= (and d!30285 c!28027) b!128291))

(assert (= (and d!30285 (not c!28027)) b!128292))

(assert (= (and d!30285 res!59167) b!128293))

(assert (= (and b!128293 res!59168) b!128294))

(declare-fun m!113003 () Bool)

(assert (=> b!128293 m!113003))

(assert (=> b!128293 m!112911))

(assert (=> b!128293 m!112933))

(declare-fun m!113005 () Bool)

(assert (=> b!128292 m!113005))

(declare-fun m!113007 () Bool)

(assert (=> d!30285 m!113007))

(assert (=> d!30285 m!112919))

(assert (=> d!30285 m!112937))

(assert (=> b!128234 d!30285))

(declare-fun b!128301 () Bool)

(declare-fun e!73726 () Bool)

(declare-fun tp!69874 () Bool)

(assert (=> b!128301 (= e!73726 (and tp_is_empty!1265 tp!69874))))

(assert (=> b!128236 (= tp!69871 e!73726)))

(assert (= (and b!128236 ((_ is Cons!2117) (t!22699 s!1511))) b!128301))

(declare-fun b!128302 () Bool)

(declare-fun e!73727 () Bool)

(declare-fun tp!69875 () Bool)

(assert (=> b!128302 (= e!73727 (and tp_is_empty!1265 tp!69875))))

(assert (=> b!128232 (= tp!69870 e!73727)))

(assert (= (and b!128232 ((_ is Cons!2117) (t!22699 p!1997))) b!128302))

(declare-fun b!128307 () Bool)

(declare-fun e!73730 () Bool)

(declare-fun tp!69876 () Bool)

(assert (=> b!128307 (= e!73730 (and tp_is_empty!1265 tp!69876))))

(assert (=> b!128233 (= tp!69869 e!73730)))

(assert (= (and b!128233 ((_ is Cons!2117) (t!22699 l!3367))) b!128307))

(check-sat (not d!30283) (not d!30263) (not b!128262) (not b!128286) (not d!30265) (not d!30267) (not b!128247) (not b!128290) (not b!128302) (not d!30275) (not b!128263) (not b!128288) (not d!30281) (not b!128292) (not b!128259) (not b!128258) (not b!128246) (not b!128301) tp_is_empty!1265 (not d!30253) (not b!128307) (not d!30285) (not b!128293))
(check-sat)
