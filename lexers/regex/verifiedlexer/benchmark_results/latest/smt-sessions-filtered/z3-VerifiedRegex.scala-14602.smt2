; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756000 () Bool)

(assert start!756000)

(declare-fun b!8027498 () Bool)

(declare-fun res!3174654 () Bool)

(declare-fun e!4729186 () Bool)

(assert (=> b!8027498 (=> (not res!3174654) (not e!4729186))))

(declare-datatypes ((B!4405 0))(
  ( (B!4406 (val!32602 Int)) )
))
(declare-datatypes ((List!75118 0))(
  ( (Nil!74992) (Cons!74992 (h!81440 B!4405) (t!390874 List!75118)) )
))
(declare-fun s1!480 () List!75118)

(declare-fun isEmpty!43000 (List!75118) Bool)

(assert (=> b!8027498 (= res!3174654 (not (isEmpty!43000 s1!480)))))

(declare-fun b!8027499 () Bool)

(declare-fun p1!159 () List!75118)

(declare-fun ListPrimitiveSize!519 (List!75118) Int)

(assert (=> b!8027499 (= e!4729186 (< (ListPrimitiveSize!519 p1!159) 0))))

(declare-fun res!3174653 () Bool)

(assert (=> start!756000 (=> (not res!3174653) (not e!4729186))))

(declare-fun p2!159 () List!75118)

(declare-fun l!3185 () List!75118)

(declare-fun isPrefix!6867 (List!75118 List!75118) Bool)

(assert (=> start!756000 (= res!3174653 (isPrefix!6867 p2!159 l!3185))))

(assert (=> start!756000 e!4729186))

(declare-fun e!4729189 () Bool)

(assert (=> start!756000 e!4729189))

(declare-fun e!4729185 () Bool)

(assert (=> start!756000 e!4729185))

(declare-fun e!4729188 () Bool)

(assert (=> start!756000 e!4729188))

(declare-fun e!4729187 () Bool)

(assert (=> start!756000 e!4729187))

(declare-fun b!8027500 () Bool)

(declare-fun tp_is_empty!54309 () Bool)

(declare-fun tp!2402324 () Bool)

(assert (=> b!8027500 (= e!4729185 (and tp_is_empty!54309 tp!2402324))))

(declare-fun b!8027501 () Bool)

(declare-fun res!3174655 () Bool)

(assert (=> b!8027501 (=> (not res!3174655) (not e!4729186))))

(declare-fun size!43727 (List!75118) Int)

(assert (=> b!8027501 (= res!3174655 (< (size!43727 p1!159) (size!43727 p2!159)))))

(declare-fun b!8027502 () Bool)

(declare-fun tp!2402325 () Bool)

(assert (=> b!8027502 (= e!4729188 (and tp_is_empty!54309 tp!2402325))))

(declare-fun b!8027503 () Bool)

(declare-fun res!3174652 () Bool)

(assert (=> b!8027503 (=> (not res!3174652) (not e!4729186))))

(declare-fun ++!18594 (List!75118 List!75118) List!75118)

(assert (=> b!8027503 (= res!3174652 (= (++!18594 p1!159 s1!480) l!3185))))

(declare-fun b!8027504 () Bool)

(declare-fun tp!2402326 () Bool)

(assert (=> b!8027504 (= e!4729189 (and tp_is_empty!54309 tp!2402326))))

(declare-fun b!8027505 () Bool)

(declare-fun tp!2402327 () Bool)

(assert (=> b!8027505 (= e!4729187 (and tp_is_empty!54309 tp!2402327))))

(assert (= (and start!756000 res!3174653) b!8027503))

(assert (= (and b!8027503 res!3174652) b!8027498))

(assert (= (and b!8027498 res!3174654) b!8027501))

(assert (= (and b!8027501 res!3174655) b!8027499))

(get-info :version)

(assert (= (and start!756000 ((_ is Cons!74992) p2!159)) b!8027504))

(assert (= (and start!756000 ((_ is Cons!74992) l!3185)) b!8027500))

(assert (= (and start!756000 ((_ is Cons!74992) p1!159)) b!8027502))

(assert (= (and start!756000 ((_ is Cons!74992) s1!480)) b!8027505))

(declare-fun m!8389650 () Bool)

(assert (=> b!8027498 m!8389650))

(declare-fun m!8389652 () Bool)

(assert (=> b!8027501 m!8389652))

(declare-fun m!8389654 () Bool)

(assert (=> b!8027501 m!8389654))

(declare-fun m!8389656 () Bool)

(assert (=> b!8027499 m!8389656))

(declare-fun m!8389658 () Bool)

(assert (=> b!8027503 m!8389658))

(declare-fun m!8389660 () Bool)

(assert (=> start!756000 m!8389660))

(check-sat (not b!8027505) (not b!8027502) (not b!8027503) tp_is_empty!54309 (not b!8027504) (not b!8027501) (not b!8027500) (not b!8027498) (not start!756000) (not b!8027499))
(check-sat)
(get-model)

(declare-fun d!2393741 () Bool)

(assert (=> d!2393741 (= (isEmpty!43000 s1!480) ((_ is Nil!74992) s1!480))))

(assert (=> b!8027498 d!2393741))

(declare-fun b!8027531 () Bool)

(declare-fun e!4729205 () List!75118)

(assert (=> b!8027531 (= e!4729205 (Cons!74992 (h!81440 p1!159) (++!18594 (t!390874 p1!159) s1!480)))))

(declare-fun b!8027532 () Bool)

(declare-fun res!3174669 () Bool)

(declare-fun e!4729204 () Bool)

(assert (=> b!8027532 (=> (not res!3174669) (not e!4729204))))

(declare-fun lt!2721273 () List!75118)

(assert (=> b!8027532 (= res!3174669 (= (size!43727 lt!2721273) (+ (size!43727 p1!159) (size!43727 s1!480))))))

(declare-fun b!8027533 () Bool)

(assert (=> b!8027533 (= e!4729204 (or (not (= s1!480 Nil!74992)) (= lt!2721273 p1!159)))))

(declare-fun d!2393745 () Bool)

(assert (=> d!2393745 e!4729204))

(declare-fun res!3174668 () Bool)

(assert (=> d!2393745 (=> (not res!3174668) (not e!4729204))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16002 (List!75118) (InoxSet B!4405))

(assert (=> d!2393745 (= res!3174668 (= (content!16002 lt!2721273) ((_ map or) (content!16002 p1!159) (content!16002 s1!480))))))

(assert (=> d!2393745 (= lt!2721273 e!4729205)))

(declare-fun c!1472835 () Bool)

(assert (=> d!2393745 (= c!1472835 ((_ is Nil!74992) p1!159))))

(assert (=> d!2393745 (= (++!18594 p1!159 s1!480) lt!2721273)))

(declare-fun b!8027530 () Bool)

(assert (=> b!8027530 (= e!4729205 s1!480)))

(assert (= (and d!2393745 c!1472835) b!8027530))

(assert (= (and d!2393745 (not c!1472835)) b!8027531))

(assert (= (and d!2393745 res!3174668) b!8027532))

(assert (= (and b!8027532 res!3174669) b!8027533))

(declare-fun m!8389666 () Bool)

(assert (=> b!8027531 m!8389666))

(declare-fun m!8389668 () Bool)

(assert (=> b!8027532 m!8389668))

(assert (=> b!8027532 m!8389652))

(declare-fun m!8389670 () Bool)

(assert (=> b!8027532 m!8389670))

(declare-fun m!8389672 () Bool)

(assert (=> d!2393745 m!8389672))

(declare-fun m!8389674 () Bool)

(assert (=> d!2393745 m!8389674))

(declare-fun m!8389676 () Bool)

(assert (=> d!2393745 m!8389676))

(assert (=> b!8027503 d!2393745))

(declare-fun d!2393751 () Bool)

(declare-fun lt!2721277 () Int)

(assert (=> d!2393751 (>= lt!2721277 0)))

(declare-fun e!4729211 () Int)

(assert (=> d!2393751 (= lt!2721277 e!4729211)))

(declare-fun c!1472838 () Bool)

(assert (=> d!2393751 (= c!1472838 ((_ is Nil!74992) p1!159))))

(assert (=> d!2393751 (= (size!43727 p1!159) lt!2721277)))

(declare-fun b!8027542 () Bool)

(assert (=> b!8027542 (= e!4729211 0)))

(declare-fun b!8027543 () Bool)

(assert (=> b!8027543 (= e!4729211 (+ 1 (size!43727 (t!390874 p1!159))))))

(assert (= (and d!2393751 c!1472838) b!8027542))

(assert (= (and d!2393751 (not c!1472838)) b!8027543))

(declare-fun m!8389690 () Bool)

(assert (=> b!8027543 m!8389690))

(assert (=> b!8027501 d!2393751))

(declare-fun d!2393755 () Bool)

(declare-fun lt!2721278 () Int)

(assert (=> d!2393755 (>= lt!2721278 0)))

(declare-fun e!4729212 () Int)

(assert (=> d!2393755 (= lt!2721278 e!4729212)))

(declare-fun c!1472839 () Bool)

(assert (=> d!2393755 (= c!1472839 ((_ is Nil!74992) p2!159))))

(assert (=> d!2393755 (= (size!43727 p2!159) lt!2721278)))

(declare-fun b!8027544 () Bool)

(assert (=> b!8027544 (= e!4729212 0)))

(declare-fun b!8027545 () Bool)

(assert (=> b!8027545 (= e!4729212 (+ 1 (size!43727 (t!390874 p2!159))))))

(assert (= (and d!2393755 c!1472839) b!8027544))

(assert (= (and d!2393755 (not c!1472839)) b!8027545))

(declare-fun m!8389692 () Bool)

(assert (=> b!8027545 m!8389692))

(assert (=> b!8027501 d!2393755))

(declare-fun d!2393757 () Bool)

(declare-fun lt!2721283 () Int)

(assert (=> d!2393757 (>= lt!2721283 0)))

(declare-fun e!4729219 () Int)

(assert (=> d!2393757 (= lt!2721283 e!4729219)))

(declare-fun c!1472844 () Bool)

(assert (=> d!2393757 (= c!1472844 ((_ is Nil!74992) p1!159))))

(assert (=> d!2393757 (= (ListPrimitiveSize!519 p1!159) lt!2721283)))

(declare-fun b!8027556 () Bool)

(assert (=> b!8027556 (= e!4729219 0)))

(declare-fun b!8027557 () Bool)

(assert (=> b!8027557 (= e!4729219 (+ 1 (ListPrimitiveSize!519 (t!390874 p1!159))))))

(assert (= (and d!2393757 c!1472844) b!8027556))

(assert (= (and d!2393757 (not c!1472844)) b!8027557))

(declare-fun m!8389694 () Bool)

(assert (=> b!8027557 m!8389694))

(assert (=> b!8027499 d!2393757))

(declare-fun d!2393759 () Bool)

(declare-fun e!4729233 () Bool)

(assert (=> d!2393759 e!4729233))

(declare-fun res!3174689 () Bool)

(assert (=> d!2393759 (=> res!3174689 e!4729233)))

(declare-fun lt!2721290 () Bool)

(assert (=> d!2393759 (= res!3174689 (not lt!2721290))))

(declare-fun e!4729232 () Bool)

(assert (=> d!2393759 (= lt!2721290 e!4729232)))

(declare-fun res!3174688 () Bool)

(assert (=> d!2393759 (=> res!3174688 e!4729232)))

(assert (=> d!2393759 (= res!3174688 ((_ is Nil!74992) p2!159))))

(assert (=> d!2393759 (= (isPrefix!6867 p2!159 l!3185) lt!2721290)))

(declare-fun b!8027581 () Bool)

(assert (=> b!8027581 (= e!4729233 (>= (size!43727 l!3185) (size!43727 p2!159)))))

(declare-fun b!8027580 () Bool)

(declare-fun e!4729231 () Bool)

(declare-fun tail!16025 (List!75118) List!75118)

(assert (=> b!8027580 (= e!4729231 (isPrefix!6867 (tail!16025 p2!159) (tail!16025 l!3185)))))

(declare-fun b!8027578 () Bool)

(assert (=> b!8027578 (= e!4729232 e!4729231)))

(declare-fun res!3174691 () Bool)

(assert (=> b!8027578 (=> (not res!3174691) (not e!4729231))))

(assert (=> b!8027578 (= res!3174691 (not ((_ is Nil!74992) l!3185)))))

(declare-fun b!8027579 () Bool)

(declare-fun res!3174690 () Bool)

(assert (=> b!8027579 (=> (not res!3174690) (not e!4729231))))

(declare-fun head!16482 (List!75118) B!4405)

(assert (=> b!8027579 (= res!3174690 (= (head!16482 p2!159) (head!16482 l!3185)))))

(assert (= (and d!2393759 (not res!3174688)) b!8027578))

(assert (= (and b!8027578 res!3174691) b!8027579))

(assert (= (and b!8027579 res!3174690) b!8027580))

(assert (= (and d!2393759 (not res!3174689)) b!8027581))

(declare-fun m!8389710 () Bool)

(assert (=> b!8027581 m!8389710))

(assert (=> b!8027581 m!8389654))

(declare-fun m!8389712 () Bool)

(assert (=> b!8027580 m!8389712))

(declare-fun m!8389714 () Bool)

(assert (=> b!8027580 m!8389714))

(assert (=> b!8027580 m!8389712))

(assert (=> b!8027580 m!8389714))

(declare-fun m!8389716 () Bool)

(assert (=> b!8027580 m!8389716))

(declare-fun m!8389718 () Bool)

(assert (=> b!8027579 m!8389718))

(declare-fun m!8389720 () Bool)

(assert (=> b!8027579 m!8389720))

(assert (=> start!756000 d!2393759))

(declare-fun b!8027593 () Bool)

(declare-fun e!4729241 () Bool)

(declare-fun tp!2402335 () Bool)

(assert (=> b!8027593 (= e!4729241 (and tp_is_empty!54309 tp!2402335))))

(assert (=> b!8027502 (= tp!2402325 e!4729241)))

(assert (= (and b!8027502 ((_ is Cons!74992) (t!390874 p1!159))) b!8027593))

(declare-fun b!8027595 () Bool)

(declare-fun e!4729243 () Bool)

(declare-fun tp!2402337 () Bool)

(assert (=> b!8027595 (= e!4729243 (and tp_is_empty!54309 tp!2402337))))

(assert (=> b!8027500 (= tp!2402324 e!4729243)))

(assert (= (and b!8027500 ((_ is Cons!74992) (t!390874 l!3185))) b!8027595))

(declare-fun b!8027596 () Bool)

(declare-fun e!4729244 () Bool)

(declare-fun tp!2402338 () Bool)

(assert (=> b!8027596 (= e!4729244 (and tp_is_empty!54309 tp!2402338))))

(assert (=> b!8027505 (= tp!2402327 e!4729244)))

(assert (= (and b!8027505 ((_ is Cons!74992) (t!390874 s1!480))) b!8027596))

(declare-fun b!8027597 () Bool)

(declare-fun e!4729245 () Bool)

(declare-fun tp!2402339 () Bool)

(assert (=> b!8027597 (= e!4729245 (and tp_is_empty!54309 tp!2402339))))

(assert (=> b!8027504 (= tp!2402326 e!4729245)))

(assert (= (and b!8027504 ((_ is Cons!74992) (t!390874 p2!159))) b!8027597))

(check-sat (not b!8027532) (not b!8027545) (not b!8027593) (not b!8027543) (not d!2393745) (not b!8027580) tp_is_empty!54309 (not b!8027596) (not b!8027597) (not b!8027595) (not b!8027531) (not b!8027581) (not b!8027579) (not b!8027557))
(check-sat)
