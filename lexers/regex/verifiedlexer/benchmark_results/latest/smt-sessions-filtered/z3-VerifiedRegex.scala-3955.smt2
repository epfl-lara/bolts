; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216190 () Bool)

(assert start!216190)

(declare-fun res!952768 () Bool)

(declare-fun e!1416733 () Bool)

(assert (=> start!216190 (=> (not res!952768) (not e!1416733))))

(declare-datatypes ((B!1821 0))(
  ( (B!1822 (val!7436 Int)) )
))
(declare-datatypes ((List!26064 0))(
  ( (Nil!25980) (Cons!25980 (h!31381 B!1821) (t!199380 List!26064)) )
))
(declare-fun l!2924 () List!26064)

(declare-fun isEmpty!14858 (List!26064) Bool)

(assert (=> start!216190 (= res!952768 (not (isEmpty!14858 l!2924)))))

(assert (=> start!216190 e!1416733))

(declare-fun e!1416734 () Bool)

(assert (=> start!216190 e!1416734))

(declare-fun b!2218470 () Bool)

(declare-fun res!952767 () Bool)

(assert (=> b!2218470 (=> (not res!952767) (not e!1416733))))

(get-info :version)

(assert (=> b!2218470 (= res!952767 (and ((_ is Cons!25980) l!2924) ((_ is Nil!25980) (t!199380 l!2924))))))

(declare-fun b!2218471 () Bool)

(declare-fun ++!6466 (List!26064 List!26064) List!26064)

(declare-fun last!364 (List!26064) B!1821)

(assert (=> b!2218471 (= e!1416733 (not (= (++!6466 Nil!25980 (Cons!25980 (last!364 l!2924) Nil!25980)) l!2924)))))

(declare-fun b!2218472 () Bool)

(declare-fun tp_is_empty!9869 () Bool)

(declare-fun tp!691128 () Bool)

(assert (=> b!2218472 (= e!1416734 (and tp_is_empty!9869 tp!691128))))

(assert (= (and start!216190 res!952768) b!2218470))

(assert (= (and b!2218470 res!952767) b!2218471))

(assert (= (and start!216190 ((_ is Cons!25980) l!2924)) b!2218472))

(declare-fun m!2659293 () Bool)

(assert (=> start!216190 m!2659293))

(declare-fun m!2659295 () Bool)

(assert (=> b!2218471 m!2659295))

(declare-fun m!2659297 () Bool)

(assert (=> b!2218471 m!2659297))

(check-sat (not start!216190) (not b!2218471) (not b!2218472) tp_is_empty!9869)
(check-sat)
(get-model)

(declare-fun d!663144 () Bool)

(assert (=> d!663144 (= (isEmpty!14858 l!2924) ((_ is Nil!25980) l!2924))))

(assert (=> start!216190 d!663144))

(declare-fun b!2218495 () Bool)

(declare-fun res!952780 () Bool)

(declare-fun e!1416745 () Bool)

(assert (=> b!2218495 (=> (not res!952780) (not e!1416745))))

(declare-fun lt!827038 () List!26064)

(declare-fun size!20270 (List!26064) Int)

(assert (=> b!2218495 (= res!952780 (= (size!20270 lt!827038) (+ (size!20270 Nil!25980) (size!20270 (Cons!25980 (last!364 l!2924) Nil!25980)))))))

(declare-fun b!2218494 () Bool)

(declare-fun e!1416746 () List!26064)

(assert (=> b!2218494 (= e!1416746 (Cons!25980 (h!31381 Nil!25980) (++!6466 (t!199380 Nil!25980) (Cons!25980 (last!364 l!2924) Nil!25980))))))

(declare-fun d!663146 () Bool)

(assert (=> d!663146 e!1416745))

(declare-fun res!952779 () Bool)

(assert (=> d!663146 (=> (not res!952779) (not e!1416745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3525 (List!26064) (InoxSet B!1821))

(assert (=> d!663146 (= res!952779 (= (content!3525 lt!827038) ((_ map or) (content!3525 Nil!25980) (content!3525 (Cons!25980 (last!364 l!2924) Nil!25980)))))))

(assert (=> d!663146 (= lt!827038 e!1416746)))

(declare-fun c!354195 () Bool)

(assert (=> d!663146 (= c!354195 ((_ is Nil!25980) Nil!25980))))

(assert (=> d!663146 (= (++!6466 Nil!25980 (Cons!25980 (last!364 l!2924) Nil!25980)) lt!827038)))

(declare-fun b!2218496 () Bool)

(assert (=> b!2218496 (= e!1416745 (or (not (= (Cons!25980 (last!364 l!2924) Nil!25980) Nil!25980)) (= lt!827038 Nil!25980)))))

(declare-fun b!2218493 () Bool)

(assert (=> b!2218493 (= e!1416746 (Cons!25980 (last!364 l!2924) Nil!25980))))

(assert (= (and d!663146 c!354195) b!2218493))

(assert (= (and d!663146 (not c!354195)) b!2218494))

(assert (= (and d!663146 res!952779) b!2218495))

(assert (= (and b!2218495 res!952780) b!2218496))

(declare-fun m!2659313 () Bool)

(assert (=> b!2218495 m!2659313))

(declare-fun m!2659315 () Bool)

(assert (=> b!2218495 m!2659315))

(declare-fun m!2659317 () Bool)

(assert (=> b!2218495 m!2659317))

(declare-fun m!2659319 () Bool)

(assert (=> b!2218494 m!2659319))

(declare-fun m!2659321 () Bool)

(assert (=> d!663146 m!2659321))

(declare-fun m!2659323 () Bool)

(assert (=> d!663146 m!2659323))

(declare-fun m!2659325 () Bool)

(assert (=> d!663146 m!2659325))

(assert (=> b!2218471 d!663146))

(declare-fun d!663150 () Bool)

(declare-fun lt!827044 () B!1821)

(declare-fun contains!4311 (List!26064 B!1821) Bool)

(assert (=> d!663150 (contains!4311 l!2924 lt!827044)))

(declare-fun e!1416752 () B!1821)

(assert (=> d!663150 (= lt!827044 e!1416752)))

(declare-fun c!354201 () Bool)

(assert (=> d!663150 (= c!354201 (and ((_ is Cons!25980) l!2924) ((_ is Nil!25980) (t!199380 l!2924))))))

(assert (=> d!663150 (not (isEmpty!14858 l!2924))))

(assert (=> d!663150 (= (last!364 l!2924) lt!827044)))

(declare-fun b!2218507 () Bool)

(assert (=> b!2218507 (= e!1416752 (h!31381 l!2924))))

(declare-fun b!2218508 () Bool)

(assert (=> b!2218508 (= e!1416752 (last!364 (t!199380 l!2924)))))

(assert (= (and d!663150 c!354201) b!2218507))

(assert (= (and d!663150 (not c!354201)) b!2218508))

(declare-fun m!2659331 () Bool)

(assert (=> d!663150 m!2659331))

(assert (=> d!663150 m!2659293))

(declare-fun m!2659333 () Bool)

(assert (=> b!2218508 m!2659333))

(assert (=> b!2218471 d!663150))

(declare-fun b!2218517 () Bool)

(declare-fun e!1416758 () Bool)

(declare-fun tp!691133 () Bool)

(assert (=> b!2218517 (= e!1416758 (and tp_is_empty!9869 tp!691133))))

(assert (=> b!2218472 (= tp!691128 e!1416758)))

(assert (= (and b!2218472 ((_ is Cons!25980) (t!199380 l!2924))) b!2218517))

(check-sat (not d!663146) (not b!2218494) (not b!2218508) (not b!2218517) (not d!663150) (not b!2218495) tp_is_empty!9869)
(check-sat)
