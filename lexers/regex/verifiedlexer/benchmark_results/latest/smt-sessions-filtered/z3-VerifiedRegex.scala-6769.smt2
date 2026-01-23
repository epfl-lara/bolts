; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353152 () Bool)

(assert start!353152)

(declare-fun res!1523020 () Bool)

(declare-fun e!2326246 () Bool)

(assert (=> start!353152 (=> res!1523020 e!2326246)))

(declare-datatypes ((B!2573 0))(
  ( (B!2574 (val!13218 Int)) )
))
(declare-datatypes ((List!40233 0))(
  ( (Nil!40109) (Cons!40109 (h!45529 B!2573) (t!303882 List!40233)) )
))
(declare-fun l!3461 () List!40233)

(get-info :version)

(assert (=> start!353152 (= res!1523020 (not ((_ is Cons!40109) l!3461)))))

(declare-fun isPrefix!3301 (List!40233 List!40233) Bool)

(assert (=> start!353152 (isPrefix!3301 l!3461 l!3461)))

(declare-datatypes ((Unit!57834 0))(
  ( (Unit!57835) )
))
(declare-fun lt!1301825 () Unit!57834)

(declare-fun lemmaIsPrefixRefl!2086 (List!40233 List!40233) Unit!57834)

(assert (=> start!353152 (= lt!1301825 (lemmaIsPrefixRefl!2086 l!3461 l!3461))))

(assert (=> start!353152 (not e!2326246)))

(declare-fun e!2326245 () Bool)

(assert (=> start!353152 e!2326245))

(declare-fun b!3761177 () Bool)

(declare-fun isEmpty!23580 (List!40233) Bool)

(declare-fun getSuffix!1776 (List!40233 List!40233) List!40233)

(assert (=> b!3761177 (= e!2326246 (isEmpty!23580 (getSuffix!1776 l!3461 l!3461)))))

(assert (=> b!3761177 (isEmpty!23580 (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461)))))

(declare-fun lt!1301824 () Unit!57834)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!234 (List!40233) Unit!57834)

(assert (=> b!3761177 (= lt!1301824 (lemmaGetSuffixOnListWithItSelfIsEmpty!234 (t!303882 l!3461)))))

(declare-fun b!3761178 () Bool)

(declare-fun tp_is_empty!19117 () Bool)

(declare-fun tp!1149388 () Bool)

(assert (=> b!3761178 (= e!2326245 (and tp_is_empty!19117 tp!1149388))))

(assert (= (and start!353152 (not res!1523020)) b!3761177))

(assert (= (and start!353152 ((_ is Cons!40109) l!3461)) b!3761178))

(declare-fun m!4255199 () Bool)

(assert (=> start!353152 m!4255199))

(declare-fun m!4255201 () Bool)

(assert (=> start!353152 m!4255201))

(declare-fun m!4255203 () Bool)

(assert (=> b!3761177 m!4255203))

(declare-fun m!4255205 () Bool)

(assert (=> b!3761177 m!4255205))

(declare-fun m!4255207 () Bool)

(assert (=> b!3761177 m!4255207))

(assert (=> b!3761177 m!4255205))

(declare-fun m!4255209 () Bool)

(assert (=> b!3761177 m!4255209))

(assert (=> b!3761177 m!4255209))

(declare-fun m!4255211 () Bool)

(assert (=> b!3761177 m!4255211))

(check-sat (not b!3761177) (not start!353152) (not b!3761178) tp_is_empty!19117)
(check-sat)
(get-model)

(declare-fun d!1098610 () Bool)

(assert (=> d!1098610 (= (isEmpty!23580 (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461))) ((_ is Nil!40109) (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461))))))

(assert (=> b!3761177 d!1098610))

(declare-fun d!1098614 () Bool)

(declare-fun lt!1301831 () List!40233)

(declare-fun ++!9945 (List!40233 List!40233) List!40233)

(assert (=> d!1098614 (= (++!9945 l!3461 lt!1301831) l!3461)))

(declare-fun e!2326252 () List!40233)

(assert (=> d!1098614 (= lt!1301831 e!2326252)))

(declare-fun c!651257 () Bool)

(assert (=> d!1098614 (= c!651257 ((_ is Cons!40109) l!3461))))

(declare-fun size!30186 (List!40233) Int)

(assert (=> d!1098614 (>= (size!30186 l!3461) (size!30186 l!3461))))

(assert (=> d!1098614 (= (getSuffix!1776 l!3461 l!3461) lt!1301831)))

(declare-fun b!3761189 () Bool)

(declare-fun tail!5766 (List!40233) List!40233)

(assert (=> b!3761189 (= e!2326252 (getSuffix!1776 (tail!5766 l!3461) (t!303882 l!3461)))))

(declare-fun b!3761190 () Bool)

(assert (=> b!3761190 (= e!2326252 l!3461)))

(assert (= (and d!1098614 c!651257) b!3761189))

(assert (= (and d!1098614 (not c!651257)) b!3761190))

(declare-fun m!4255221 () Bool)

(assert (=> d!1098614 m!4255221))

(declare-fun m!4255223 () Bool)

(assert (=> d!1098614 m!4255223))

(assert (=> d!1098614 m!4255223))

(declare-fun m!4255225 () Bool)

(assert (=> b!3761189 m!4255225))

(assert (=> b!3761189 m!4255225))

(declare-fun m!4255227 () Bool)

(assert (=> b!3761189 m!4255227))

(assert (=> b!3761177 d!1098614))

(declare-fun d!1098618 () Bool)

(assert (=> d!1098618 (isEmpty!23580 (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461)))))

(declare-fun lt!1301838 () Unit!57834)

(declare-fun choose!22282 (List!40233) Unit!57834)

(assert (=> d!1098618 (= lt!1301838 (choose!22282 (t!303882 l!3461)))))

(assert (=> d!1098618 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!234 (t!303882 l!3461)) lt!1301838)))

(declare-fun bs!575780 () Bool)

(assert (= bs!575780 d!1098618))

(assert (=> bs!575780 m!4255205))

(assert (=> bs!575780 m!4255205))

(assert (=> bs!575780 m!4255207))

(declare-fun m!4255231 () Bool)

(assert (=> bs!575780 m!4255231))

(assert (=> b!3761177 d!1098618))

(declare-fun d!1098624 () Bool)

(assert (=> d!1098624 (= (isEmpty!23580 (getSuffix!1776 l!3461 l!3461)) ((_ is Nil!40109) (getSuffix!1776 l!3461 l!3461)))))

(assert (=> b!3761177 d!1098624))

(declare-fun d!1098626 () Bool)

(declare-fun lt!1301839 () List!40233)

(assert (=> d!1098626 (= (++!9945 (t!303882 l!3461) lt!1301839) (t!303882 l!3461))))

(declare-fun e!2326254 () List!40233)

(assert (=> d!1098626 (= lt!1301839 e!2326254)))

(declare-fun c!651259 () Bool)

(assert (=> d!1098626 (= c!651259 ((_ is Cons!40109) (t!303882 l!3461)))))

(assert (=> d!1098626 (>= (size!30186 (t!303882 l!3461)) (size!30186 (t!303882 l!3461)))))

(assert (=> d!1098626 (= (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461)) lt!1301839)))

(declare-fun b!3761193 () Bool)

(assert (=> b!3761193 (= e!2326254 (getSuffix!1776 (tail!5766 (t!303882 l!3461)) (t!303882 (t!303882 l!3461))))))

(declare-fun b!3761194 () Bool)

(assert (=> b!3761194 (= e!2326254 (t!303882 l!3461))))

(assert (= (and d!1098626 c!651259) b!3761193))

(assert (= (and d!1098626 (not c!651259)) b!3761194))

(declare-fun m!4255241 () Bool)

(assert (=> d!1098626 m!4255241))

(declare-fun m!4255243 () Bool)

(assert (=> d!1098626 m!4255243))

(assert (=> d!1098626 m!4255243))

(declare-fun m!4255245 () Bool)

(assert (=> b!3761193 m!4255245))

(assert (=> b!3761193 m!4255245))

(declare-fun m!4255247 () Bool)

(assert (=> b!3761193 m!4255247))

(assert (=> b!3761177 d!1098626))

(declare-fun b!3761218 () Bool)

(declare-fun e!2326270 () Bool)

(assert (=> b!3761218 (= e!2326270 (>= (size!30186 l!3461) (size!30186 l!3461)))))

(declare-fun b!3761215 () Bool)

(declare-fun e!2326272 () Bool)

(declare-fun e!2326271 () Bool)

(assert (=> b!3761215 (= e!2326272 e!2326271)))

(declare-fun res!1523044 () Bool)

(assert (=> b!3761215 (=> (not res!1523044) (not e!2326271))))

(assert (=> b!3761215 (= res!1523044 (not ((_ is Nil!40109) l!3461)))))

(declare-fun d!1098630 () Bool)

(assert (=> d!1098630 e!2326270))

(declare-fun res!1523043 () Bool)

(assert (=> d!1098630 (=> res!1523043 e!2326270)))

(declare-fun lt!1301845 () Bool)

(assert (=> d!1098630 (= res!1523043 (not lt!1301845))))

(assert (=> d!1098630 (= lt!1301845 e!2326272)))

(declare-fun res!1523041 () Bool)

(assert (=> d!1098630 (=> res!1523041 e!2326272)))

(assert (=> d!1098630 (= res!1523041 ((_ is Nil!40109) l!3461))))

(assert (=> d!1098630 (= (isPrefix!3301 l!3461 l!3461) lt!1301845)))

(declare-fun b!3761216 () Bool)

(declare-fun res!1523042 () Bool)

(assert (=> b!3761216 (=> (not res!1523042) (not e!2326271))))

(declare-fun head!8039 (List!40233) B!2573)

(assert (=> b!3761216 (= res!1523042 (= (head!8039 l!3461) (head!8039 l!3461)))))

(declare-fun b!3761217 () Bool)

(assert (=> b!3761217 (= e!2326271 (isPrefix!3301 (tail!5766 l!3461) (tail!5766 l!3461)))))

(assert (= (and d!1098630 (not res!1523041)) b!3761215))

(assert (= (and b!3761215 res!1523044) b!3761216))

(assert (= (and b!3761216 res!1523042) b!3761217))

(assert (= (and d!1098630 (not res!1523043)) b!3761218))

(assert (=> b!3761218 m!4255223))

(assert (=> b!3761218 m!4255223))

(declare-fun m!4255253 () Bool)

(assert (=> b!3761216 m!4255253))

(assert (=> b!3761216 m!4255253))

(assert (=> b!3761217 m!4255225))

(assert (=> b!3761217 m!4255225))

(assert (=> b!3761217 m!4255225))

(assert (=> b!3761217 m!4255225))

(declare-fun m!4255255 () Bool)

(assert (=> b!3761217 m!4255255))

(assert (=> start!353152 d!1098630))

(declare-fun d!1098634 () Bool)

(assert (=> d!1098634 (isPrefix!3301 l!3461 l!3461)))

(declare-fun lt!1301851 () Unit!57834)

(declare-fun choose!22284 (List!40233 List!40233) Unit!57834)

(assert (=> d!1098634 (= lt!1301851 (choose!22284 l!3461 l!3461))))

(assert (=> d!1098634 (= (lemmaIsPrefixRefl!2086 l!3461 l!3461) lt!1301851)))

(declare-fun bs!575782 () Bool)

(assert (= bs!575782 d!1098634))

(assert (=> bs!575782 m!4255199))

(declare-fun m!4255259 () Bool)

(assert (=> bs!575782 m!4255259))

(assert (=> start!353152 d!1098634))

(declare-fun b!3761228 () Bool)

(declare-fun e!2326278 () Bool)

(declare-fun tp!1149394 () Bool)

(assert (=> b!3761228 (= e!2326278 (and tp_is_empty!19117 tp!1149394))))

(assert (=> b!3761178 (= tp!1149388 e!2326278)))

(assert (= (and b!3761178 ((_ is Cons!40109) (t!303882 l!3461))) b!3761228))

(check-sat (not b!3761228) (not b!3761193) (not d!1098634) (not b!3761218) (not d!1098626) (not b!3761216) (not d!1098618) tp_is_empty!19117 (not b!3761217) (not d!1098614) (not b!3761189))
(check-sat)
(get-model)

(declare-fun d!1098636 () Bool)

(declare-fun lt!1301852 () List!40233)

(assert (=> d!1098636 (= (++!9945 (t!303882 l!3461) lt!1301852) (tail!5766 l!3461))))

(declare-fun e!2326279 () List!40233)

(assert (=> d!1098636 (= lt!1301852 e!2326279)))

(declare-fun c!651260 () Bool)

(assert (=> d!1098636 (= c!651260 ((_ is Cons!40109) (t!303882 l!3461)))))

(assert (=> d!1098636 (>= (size!30186 (tail!5766 l!3461)) (size!30186 (t!303882 l!3461)))))

(assert (=> d!1098636 (= (getSuffix!1776 (tail!5766 l!3461) (t!303882 l!3461)) lt!1301852)))

(declare-fun b!3761229 () Bool)

(assert (=> b!3761229 (= e!2326279 (getSuffix!1776 (tail!5766 (tail!5766 l!3461)) (t!303882 (t!303882 l!3461))))))

(declare-fun b!3761230 () Bool)

(assert (=> b!3761230 (= e!2326279 (tail!5766 l!3461))))

(assert (= (and d!1098636 c!651260) b!3761229))

(assert (= (and d!1098636 (not c!651260)) b!3761230))

(declare-fun m!4255261 () Bool)

(assert (=> d!1098636 m!4255261))

(assert (=> d!1098636 m!4255225))

(declare-fun m!4255263 () Bool)

(assert (=> d!1098636 m!4255263))

(assert (=> d!1098636 m!4255243))

(assert (=> b!3761229 m!4255225))

(declare-fun m!4255265 () Bool)

(assert (=> b!3761229 m!4255265))

(assert (=> b!3761229 m!4255265))

(declare-fun m!4255267 () Bool)

(assert (=> b!3761229 m!4255267))

(assert (=> b!3761189 d!1098636))

(declare-fun d!1098638 () Bool)

(assert (=> d!1098638 (= (tail!5766 l!3461) (t!303882 l!3461))))

(assert (=> b!3761189 d!1098638))

(assert (=> d!1098634 d!1098630))

(declare-fun d!1098640 () Bool)

(assert (=> d!1098640 (isPrefix!3301 l!3461 l!3461)))

(assert (=> d!1098640 true))

(declare-fun _$45!1832 () Unit!57834)

(assert (=> d!1098640 (= (choose!22284 l!3461 l!3461) _$45!1832)))

(declare-fun bs!575783 () Bool)

(assert (= bs!575783 d!1098640))

(assert (=> bs!575783 m!4255199))

(assert (=> d!1098634 d!1098640))

(declare-fun b!3761249 () Bool)

(declare-fun res!1523053 () Bool)

(declare-fun e!2326288 () Bool)

(assert (=> b!3761249 (=> (not res!1523053) (not e!2326288))))

(declare-fun lt!1301857 () List!40233)

(assert (=> b!3761249 (= res!1523053 (= (size!30186 lt!1301857) (+ (size!30186 (t!303882 l!3461)) (size!30186 lt!1301839))))))

(declare-fun b!3761250 () Bool)

(assert (=> b!3761250 (= e!2326288 (or (not (= lt!1301839 Nil!40109)) (= lt!1301857 (t!303882 l!3461))))))

(declare-fun b!3761248 () Bool)

(declare-fun e!2326289 () List!40233)

(assert (=> b!3761248 (= e!2326289 (Cons!40109 (h!45529 (t!303882 l!3461)) (++!9945 (t!303882 (t!303882 l!3461)) lt!1301839)))))

(declare-fun d!1098644 () Bool)

(assert (=> d!1098644 e!2326288))

(declare-fun res!1523054 () Bool)

(assert (=> d!1098644 (=> (not res!1523054) (not e!2326288))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5890 (List!40233) (InoxSet B!2573))

(assert (=> d!1098644 (= res!1523054 (= (content!5890 lt!1301857) ((_ map or) (content!5890 (t!303882 l!3461)) (content!5890 lt!1301839))))))

(assert (=> d!1098644 (= lt!1301857 e!2326289)))

(declare-fun c!651265 () Bool)

(assert (=> d!1098644 (= c!651265 ((_ is Nil!40109) (t!303882 l!3461)))))

(assert (=> d!1098644 (= (++!9945 (t!303882 l!3461) lt!1301839) lt!1301857)))

(declare-fun b!3761247 () Bool)

(assert (=> b!3761247 (= e!2326289 lt!1301839)))

(assert (= (and d!1098644 c!651265) b!3761247))

(assert (= (and d!1098644 (not c!651265)) b!3761248))

(assert (= (and d!1098644 res!1523054) b!3761249))

(assert (= (and b!3761249 res!1523053) b!3761250))

(declare-fun m!4255269 () Bool)

(assert (=> b!3761249 m!4255269))

(assert (=> b!3761249 m!4255243))

(declare-fun m!4255271 () Bool)

(assert (=> b!3761249 m!4255271))

(declare-fun m!4255273 () Bool)

(assert (=> b!3761248 m!4255273))

(declare-fun m!4255275 () Bool)

(assert (=> d!1098644 m!4255275))

(declare-fun m!4255277 () Bool)

(assert (=> d!1098644 m!4255277))

(declare-fun m!4255279 () Bool)

(assert (=> d!1098644 m!4255279))

(assert (=> d!1098626 d!1098644))

(declare-fun d!1098650 () Bool)

(declare-fun lt!1301863 () Int)

(assert (=> d!1098650 (>= lt!1301863 0)))

(declare-fun e!2326296 () Int)

(assert (=> d!1098650 (= lt!1301863 e!2326296)))

(declare-fun c!651271 () Bool)

(assert (=> d!1098650 (= c!651271 ((_ is Nil!40109) (t!303882 l!3461)))))

(assert (=> d!1098650 (= (size!30186 (t!303882 l!3461)) lt!1301863)))

(declare-fun b!3761263 () Bool)

(assert (=> b!3761263 (= e!2326296 0)))

(declare-fun b!3761264 () Bool)

(assert (=> b!3761264 (= e!2326296 (+ 1 (size!30186 (t!303882 (t!303882 l!3461)))))))

(assert (= (and d!1098650 c!651271) b!3761263))

(assert (= (and d!1098650 (not c!651271)) b!3761264))

(declare-fun m!4255293 () Bool)

(assert (=> b!3761264 m!4255293))

(assert (=> d!1098626 d!1098650))

(assert (=> d!1098618 d!1098610))

(assert (=> d!1098618 d!1098626))

(declare-fun d!1098654 () Bool)

(assert (=> d!1098654 (isEmpty!23580 (getSuffix!1776 (t!303882 l!3461) (t!303882 l!3461)))))

(assert (=> d!1098654 true))

(declare-fun _$66!557 () Unit!57834)

(assert (=> d!1098654 (= (choose!22282 (t!303882 l!3461)) _$66!557)))

(declare-fun bs!575785 () Bool)

(assert (= bs!575785 d!1098654))

(assert (=> bs!575785 m!4255205))

(assert (=> bs!575785 m!4255205))

(assert (=> bs!575785 m!4255207))

(assert (=> d!1098618 d!1098654))

(declare-fun d!1098658 () Bool)

(assert (=> d!1098658 (= (head!8039 l!3461) (h!45529 l!3461))))

(assert (=> b!3761216 d!1098658))

(declare-fun b!3761273 () Bool)

(declare-fun res!1523061 () Bool)

(declare-fun e!2326301 () Bool)

(assert (=> b!3761273 (=> (not res!1523061) (not e!2326301))))

(declare-fun lt!1301866 () List!40233)

(assert (=> b!3761273 (= res!1523061 (= (size!30186 lt!1301866) (+ (size!30186 l!3461) (size!30186 lt!1301831))))))

(declare-fun b!3761274 () Bool)

(assert (=> b!3761274 (= e!2326301 (or (not (= lt!1301831 Nil!40109)) (= lt!1301866 l!3461)))))

(declare-fun b!3761272 () Bool)

(declare-fun e!2326302 () List!40233)

(assert (=> b!3761272 (= e!2326302 (Cons!40109 (h!45529 l!3461) (++!9945 (t!303882 l!3461) lt!1301831)))))

(declare-fun d!1098662 () Bool)

(assert (=> d!1098662 e!2326301))

(declare-fun res!1523062 () Bool)

(assert (=> d!1098662 (=> (not res!1523062) (not e!2326301))))

(assert (=> d!1098662 (= res!1523062 (= (content!5890 lt!1301866) ((_ map or) (content!5890 l!3461) (content!5890 lt!1301831))))))

(assert (=> d!1098662 (= lt!1301866 e!2326302)))

(declare-fun c!651273 () Bool)

(assert (=> d!1098662 (= c!651273 ((_ is Nil!40109) l!3461))))

(assert (=> d!1098662 (= (++!9945 l!3461 lt!1301831) lt!1301866)))

(declare-fun b!3761271 () Bool)

(assert (=> b!3761271 (= e!2326302 lt!1301831)))

(assert (= (and d!1098662 c!651273) b!3761271))

(assert (= (and d!1098662 (not c!651273)) b!3761272))

(assert (= (and d!1098662 res!1523062) b!3761273))

(assert (= (and b!3761273 res!1523061) b!3761274))

(declare-fun m!4255307 () Bool)

(assert (=> b!3761273 m!4255307))

(assert (=> b!3761273 m!4255223))

(declare-fun m!4255309 () Bool)

(assert (=> b!3761273 m!4255309))

(declare-fun m!4255311 () Bool)

(assert (=> b!3761272 m!4255311))

(declare-fun m!4255313 () Bool)

(assert (=> d!1098662 m!4255313))

(declare-fun m!4255315 () Bool)

(assert (=> d!1098662 m!4255315))

(declare-fun m!4255317 () Bool)

(assert (=> d!1098662 m!4255317))

(assert (=> d!1098614 d!1098662))

(declare-fun d!1098668 () Bool)

(declare-fun lt!1301868 () Int)

(assert (=> d!1098668 (>= lt!1301868 0)))

(declare-fun e!2326304 () Int)

(assert (=> d!1098668 (= lt!1301868 e!2326304)))

(declare-fun c!651275 () Bool)

(assert (=> d!1098668 (= c!651275 ((_ is Nil!40109) l!3461))))

(assert (=> d!1098668 (= (size!30186 l!3461) lt!1301868)))

(declare-fun b!3761277 () Bool)

(assert (=> b!3761277 (= e!2326304 0)))

(declare-fun b!3761278 () Bool)

(assert (=> b!3761278 (= e!2326304 (+ 1 (size!30186 (t!303882 l!3461))))))

(assert (= (and d!1098668 c!651275) b!3761277))

(assert (= (and d!1098668 (not c!651275)) b!3761278))

(assert (=> b!3761278 m!4255243))

(assert (=> d!1098614 d!1098668))

(declare-fun d!1098670 () Bool)

(declare-fun lt!1301869 () List!40233)

(assert (=> d!1098670 (= (++!9945 (t!303882 (t!303882 l!3461)) lt!1301869) (tail!5766 (t!303882 l!3461)))))

(declare-fun e!2326305 () List!40233)

(assert (=> d!1098670 (= lt!1301869 e!2326305)))

(declare-fun c!651276 () Bool)

(assert (=> d!1098670 (= c!651276 ((_ is Cons!40109) (t!303882 (t!303882 l!3461))))))

(assert (=> d!1098670 (>= (size!30186 (tail!5766 (t!303882 l!3461))) (size!30186 (t!303882 (t!303882 l!3461))))))

(assert (=> d!1098670 (= (getSuffix!1776 (tail!5766 (t!303882 l!3461)) (t!303882 (t!303882 l!3461))) lt!1301869)))

(declare-fun b!3761279 () Bool)

(assert (=> b!3761279 (= e!2326305 (getSuffix!1776 (tail!5766 (tail!5766 (t!303882 l!3461))) (t!303882 (t!303882 (t!303882 l!3461)))))))

(declare-fun b!3761280 () Bool)

(assert (=> b!3761280 (= e!2326305 (tail!5766 (t!303882 l!3461)))))

(assert (= (and d!1098670 c!651276) b!3761279))

(assert (= (and d!1098670 (not c!651276)) b!3761280))

(declare-fun m!4255319 () Bool)

(assert (=> d!1098670 m!4255319))

(assert (=> d!1098670 m!4255245))

(declare-fun m!4255321 () Bool)

(assert (=> d!1098670 m!4255321))

(assert (=> d!1098670 m!4255293))

(assert (=> b!3761279 m!4255245))

(declare-fun m!4255323 () Bool)

(assert (=> b!3761279 m!4255323))

(assert (=> b!3761279 m!4255323))

(declare-fun m!4255325 () Bool)

(assert (=> b!3761279 m!4255325))

(assert (=> b!3761193 d!1098670))

(declare-fun d!1098672 () Bool)

(assert (=> d!1098672 (= (tail!5766 (t!303882 l!3461)) (t!303882 (t!303882 l!3461)))))

(assert (=> b!3761193 d!1098672))

(declare-fun b!3761284 () Bool)

(declare-fun e!2326306 () Bool)

(assert (=> b!3761284 (= e!2326306 (>= (size!30186 (tail!5766 l!3461)) (size!30186 (tail!5766 l!3461))))))

(declare-fun b!3761281 () Bool)

(declare-fun e!2326308 () Bool)

(declare-fun e!2326307 () Bool)

(assert (=> b!3761281 (= e!2326308 e!2326307)))

(declare-fun res!1523066 () Bool)

(assert (=> b!3761281 (=> (not res!1523066) (not e!2326307))))

(assert (=> b!3761281 (= res!1523066 (not ((_ is Nil!40109) (tail!5766 l!3461))))))

(declare-fun d!1098674 () Bool)

(assert (=> d!1098674 e!2326306))

(declare-fun res!1523065 () Bool)

(assert (=> d!1098674 (=> res!1523065 e!2326306)))

(declare-fun lt!1301870 () Bool)

(assert (=> d!1098674 (= res!1523065 (not lt!1301870))))

(assert (=> d!1098674 (= lt!1301870 e!2326308)))

(declare-fun res!1523063 () Bool)

(assert (=> d!1098674 (=> res!1523063 e!2326308)))

(assert (=> d!1098674 (= res!1523063 ((_ is Nil!40109) (tail!5766 l!3461)))))

(assert (=> d!1098674 (= (isPrefix!3301 (tail!5766 l!3461) (tail!5766 l!3461)) lt!1301870)))

(declare-fun b!3761282 () Bool)

(declare-fun res!1523064 () Bool)

(assert (=> b!3761282 (=> (not res!1523064) (not e!2326307))))

(assert (=> b!3761282 (= res!1523064 (= (head!8039 (tail!5766 l!3461)) (head!8039 (tail!5766 l!3461))))))

(declare-fun b!3761283 () Bool)

(assert (=> b!3761283 (= e!2326307 (isPrefix!3301 (tail!5766 (tail!5766 l!3461)) (tail!5766 (tail!5766 l!3461))))))

(assert (= (and d!1098674 (not res!1523063)) b!3761281))

(assert (= (and b!3761281 res!1523066) b!3761282))

(assert (= (and b!3761282 res!1523064) b!3761283))

(assert (= (and d!1098674 (not res!1523065)) b!3761284))

(assert (=> b!3761284 m!4255225))

(assert (=> b!3761284 m!4255263))

(assert (=> b!3761284 m!4255225))

(assert (=> b!3761284 m!4255263))

(assert (=> b!3761282 m!4255225))

(declare-fun m!4255327 () Bool)

(assert (=> b!3761282 m!4255327))

(assert (=> b!3761282 m!4255225))

(assert (=> b!3761282 m!4255327))

(assert (=> b!3761283 m!4255225))

(assert (=> b!3761283 m!4255265))

(assert (=> b!3761283 m!4255225))

(assert (=> b!3761283 m!4255265))

(assert (=> b!3761283 m!4255265))

(assert (=> b!3761283 m!4255265))

(declare-fun m!4255329 () Bool)

(assert (=> b!3761283 m!4255329))

(assert (=> b!3761217 d!1098674))

(assert (=> b!3761217 d!1098638))

(assert (=> b!3761218 d!1098668))

(declare-fun b!3761287 () Bool)

(declare-fun e!2326310 () Bool)

(declare-fun tp!1149395 () Bool)

(assert (=> b!3761287 (= e!2326310 (and tp_is_empty!19117 tp!1149395))))

(assert (=> b!3761228 (= tp!1149394 e!2326310)))

(assert (= (and b!3761228 ((_ is Cons!40109) (t!303882 (t!303882 l!3461)))) b!3761287))

(check-sat (not b!3761283) (not b!3761272) (not b!3761279) (not d!1098640) (not b!3761273) (not d!1098670) (not b!3761284) (not b!3761248) (not b!3761249) (not d!1098644) (not b!3761229) (not b!3761287) (not b!3761282) (not b!3761278) (not d!1098654) (not b!3761264) (not d!1098662) (not d!1098636) tp_is_empty!19117)
(check-sat)
