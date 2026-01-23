; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353136 () Bool)

(assert start!353136)

(declare-fun res!1522990 () Bool)

(declare-fun e!2326201 () Bool)

(assert (=> start!353136 (=> res!1522990 e!2326201)))

(declare-datatypes ((B!2569 0))(
  ( (B!2570 (val!13216 Int)) )
))
(declare-datatypes ((List!40231 0))(
  ( (Nil!40107) (Cons!40107 (h!45527 B!2569) (t!303880 List!40231)) )
))
(declare-fun l!3461 () List!40231)

(get-info :version)

(assert (=> start!353136 (= res!1522990 (not ((_ is Cons!40107) l!3461)))))

(declare-fun isPrefix!3299 (List!40231 List!40231) Bool)

(assert (=> start!353136 (isPrefix!3299 l!3461 l!3461)))

(declare-datatypes ((Unit!57830 0))(
  ( (Unit!57831) )
))
(declare-fun lt!1301793 () Unit!57830)

(declare-fun lemmaIsPrefixRefl!2084 (List!40231 List!40231) Unit!57830)

(assert (=> start!353136 (= lt!1301793 (lemmaIsPrefixRefl!2084 l!3461 l!3461))))

(assert (=> start!353136 (not e!2326201)))

(declare-fun e!2326202 () Bool)

(assert (=> start!353136 e!2326202))

(declare-fun b!3761115 () Bool)

(declare-fun size!30184 (List!40231) Int)

(assert (=> b!3761115 (= e!2326201 (< (size!30184 (t!303880 l!3461)) (size!30184 l!3461)))))

(declare-fun b!3761116 () Bool)

(declare-fun tp_is_empty!19113 () Bool)

(declare-fun tp!1149376 () Bool)

(assert (=> b!3761116 (= e!2326202 (and tp_is_empty!19113 tp!1149376))))

(assert (= (and start!353136 (not res!1522990)) b!3761115))

(assert (= (and start!353136 ((_ is Cons!40107) l!3461)) b!3761116))

(declare-fun m!4255157 () Bool)

(assert (=> start!353136 m!4255157))

(declare-fun m!4255159 () Bool)

(assert (=> start!353136 m!4255159))

(declare-fun m!4255161 () Bool)

(assert (=> b!3761115 m!4255161))

(declare-fun m!4255163 () Bool)

(assert (=> b!3761115 m!4255163))

(check-sat (not b!3761115) (not start!353136) (not b!3761116) tp_is_empty!19113)
(check-sat)
(get-model)

(declare-fun d!1098593 () Bool)

(declare-fun lt!1301798 () Int)

(assert (=> d!1098593 (>= lt!1301798 0)))

(declare-fun e!2326211 () Int)

(assert (=> d!1098593 (= lt!1301798 e!2326211)))

(declare-fun c!651246 () Bool)

(assert (=> d!1098593 (= c!651246 ((_ is Nil!40107) (t!303880 l!3461)))))

(assert (=> d!1098593 (= (size!30184 (t!303880 l!3461)) lt!1301798)))

(declare-fun b!3761129 () Bool)

(assert (=> b!3761129 (= e!2326211 0)))

(declare-fun b!3761130 () Bool)

(assert (=> b!3761130 (= e!2326211 (+ 1 (size!30184 (t!303880 (t!303880 l!3461)))))))

(assert (= (and d!1098593 c!651246) b!3761129))

(assert (= (and d!1098593 (not c!651246)) b!3761130))

(declare-fun m!4255165 () Bool)

(assert (=> b!3761130 m!4255165))

(assert (=> b!3761115 d!1098593))

(declare-fun d!1098595 () Bool)

(declare-fun lt!1301799 () Int)

(assert (=> d!1098595 (>= lt!1301799 0)))

(declare-fun e!2326212 () Int)

(assert (=> d!1098595 (= lt!1301799 e!2326212)))

(declare-fun c!651247 () Bool)

(assert (=> d!1098595 (= c!651247 ((_ is Nil!40107) l!3461))))

(assert (=> d!1098595 (= (size!30184 l!3461) lt!1301799)))

(declare-fun b!3761131 () Bool)

(assert (=> b!3761131 (= e!2326212 0)))

(declare-fun b!3761132 () Bool)

(assert (=> b!3761132 (= e!2326212 (+ 1 (size!30184 (t!303880 l!3461))))))

(assert (= (and d!1098595 c!651247) b!3761131))

(assert (= (and d!1098595 (not c!651247)) b!3761132))

(assert (=> b!3761132 m!4255161))

(assert (=> b!3761115 d!1098595))

(declare-fun b!3761152 () Bool)

(declare-fun res!1523012 () Bool)

(declare-fun e!2326225 () Bool)

(assert (=> b!3761152 (=> (not res!1523012) (not e!2326225))))

(declare-fun head!8037 (List!40231) B!2569)

(assert (=> b!3761152 (= res!1523012 (= (head!8037 l!3461) (head!8037 l!3461)))))

(declare-fun b!3761154 () Bool)

(declare-fun e!2326226 () Bool)

(assert (=> b!3761154 (= e!2326226 (>= (size!30184 l!3461) (size!30184 l!3461)))))

(declare-fun b!3761153 () Bool)

(declare-fun tail!5764 (List!40231) List!40231)

(assert (=> b!3761153 (= e!2326225 (isPrefix!3299 (tail!5764 l!3461) (tail!5764 l!3461)))))

(declare-fun b!3761151 () Bool)

(declare-fun e!2326227 () Bool)

(assert (=> b!3761151 (= e!2326227 e!2326225)))

(declare-fun res!1523014 () Bool)

(assert (=> b!3761151 (=> (not res!1523014) (not e!2326225))))

(assert (=> b!3761151 (= res!1523014 (not ((_ is Nil!40107) l!3461)))))

(declare-fun d!1098597 () Bool)

(assert (=> d!1098597 e!2326226))

(declare-fun res!1523011 () Bool)

(assert (=> d!1098597 (=> res!1523011 e!2326226)))

(declare-fun lt!1301809 () Bool)

(assert (=> d!1098597 (= res!1523011 (not lt!1301809))))

(assert (=> d!1098597 (= lt!1301809 e!2326227)))

(declare-fun res!1523013 () Bool)

(assert (=> d!1098597 (=> res!1523013 e!2326227)))

(assert (=> d!1098597 (= res!1523013 ((_ is Nil!40107) l!3461))))

(assert (=> d!1098597 (= (isPrefix!3299 l!3461 l!3461) lt!1301809)))

(assert (= (and d!1098597 (not res!1523013)) b!3761151))

(assert (= (and b!3761151 res!1523014) b!3761152))

(assert (= (and b!3761152 res!1523012) b!3761153))

(assert (= (and d!1098597 (not res!1523011)) b!3761154))

(declare-fun m!4255177 () Bool)

(assert (=> b!3761152 m!4255177))

(assert (=> b!3761152 m!4255177))

(assert (=> b!3761154 m!4255163))

(assert (=> b!3761154 m!4255163))

(declare-fun m!4255179 () Bool)

(assert (=> b!3761153 m!4255179))

(assert (=> b!3761153 m!4255179))

(assert (=> b!3761153 m!4255179))

(assert (=> b!3761153 m!4255179))

(declare-fun m!4255181 () Bool)

(assert (=> b!3761153 m!4255181))

(assert (=> start!353136 d!1098597))

(declare-fun d!1098605 () Bool)

(assert (=> d!1098605 (isPrefix!3299 l!3461 l!3461)))

(declare-fun lt!1301813 () Unit!57830)

(declare-fun choose!22280 (List!40231 List!40231) Unit!57830)

(assert (=> d!1098605 (= lt!1301813 (choose!22280 l!3461 l!3461))))

(assert (=> d!1098605 (= (lemmaIsPrefixRefl!2084 l!3461 l!3461) lt!1301813)))

(declare-fun bs!575776 () Bool)

(assert (= bs!575776 d!1098605))

(assert (=> bs!575776 m!4255157))

(declare-fun m!4255183 () Bool)

(assert (=> bs!575776 m!4255183))

(assert (=> start!353136 d!1098605))

(declare-fun b!3761166 () Bool)

(declare-fun e!2326234 () Bool)

(declare-fun tp!1149382 () Bool)

(assert (=> b!3761166 (= e!2326234 (and tp_is_empty!19113 tp!1149382))))

(assert (=> b!3761116 (= tp!1149376 e!2326234)))

(assert (= (and b!3761116 ((_ is Cons!40107) (t!303880 l!3461))) b!3761166))

(check-sat (not b!3761130) (not b!3761154) (not d!1098605) (not b!3761153) (not b!3761152) (not b!3761132) tp_is_empty!19113 (not b!3761166))
(check-sat)
