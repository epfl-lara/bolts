; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47758 () Bool)

(assert start!47758)

(declare-fun b!521213 () Bool)

(declare-fun e!312430 () Bool)

(declare-fun tp_is_empty!2777 () Bool)

(declare-fun tp!162069 () Bool)

(assert (=> b!521213 (= e!312430 (and tp_is_empty!2777 tp!162069))))

(declare-fun b!521214 () Bool)

(declare-fun res!221403 () Bool)

(declare-fun e!312429 () Bool)

(assert (=> b!521214 (=> (not res!221403) (not e!312429))))

(declare-fun e!312432 () Bool)

(assert (=> b!521214 (= res!221403 e!312432)))

(declare-fun res!221405 () Bool)

(assert (=> b!521214 (=> res!221405 e!312432)))

(declare-datatypes ((B!1181 0))(
  ( (B!1182 (val!1880 Int)) )
))
(declare-datatypes ((List!4828 0))(
  ( (Nil!4818) (Cons!4818 (h!10219 B!1181) (t!73418 List!4828)) )
))
(declare-fun list!41 () List!4828)

(get-info :version)

(assert (=> b!521214 (= res!221405 (not ((_ is Cons!4818) list!41)))))

(declare-fun b!521215 () Bool)

(declare-fun e!312431 () Bool)

(declare-fun tp!162068 () Bool)

(assert (=> b!521215 (= e!312431 (and tp_is_empty!2777 tp!162068))))

(declare-fun b!521216 () Bool)

(declare-fun acc!308 () List!4828)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!881 (List!4828) (InoxSet B!1181))

(declare-fun ++!1363 (List!4828 List!4828) List!4828)

(assert (=> b!521216 (= e!312429 (not (= (content!881 acc!308) (content!881 (++!1363 list!41 acc!308)))))))

(declare-fun b!521217 () Bool)

(declare-fun contains!1166 (List!4828 B!1181) Bool)

(assert (=> b!521217 (= e!312432 (not (contains!1166 acc!308 (h!10219 list!41))))))

(declare-fun b!521218 () Bool)

(declare-fun res!221402 () Bool)

(assert (=> b!521218 (=> (not res!221402) (not e!312429))))

(assert (=> b!521218 (= res!221402 (not ((_ is Cons!4818) list!41)))))

(declare-fun res!221404 () Bool)

(assert (=> start!47758 (=> (not res!221404) (not e!312429))))

(declare-fun noDuplicate!169 (List!4828) Bool)

(assert (=> start!47758 (= res!221404 (noDuplicate!169 acc!308))))

(assert (=> start!47758 e!312429))

(assert (=> start!47758 e!312431))

(assert (=> start!47758 e!312430))

(assert (= (and start!47758 res!221404) b!521214))

(assert (= (and b!521214 (not res!221405)) b!521217))

(assert (= (and b!521214 res!221403) b!521218))

(assert (= (and b!521218 res!221402) b!521216))

(assert (= (and start!47758 ((_ is Cons!4818) acc!308)) b!521215))

(assert (= (and start!47758 ((_ is Cons!4818) list!41)) b!521213))

(declare-fun m!767795 () Bool)

(assert (=> b!521216 m!767795))

(declare-fun m!767797 () Bool)

(assert (=> b!521216 m!767797))

(assert (=> b!521216 m!767797))

(declare-fun m!767799 () Bool)

(assert (=> b!521216 m!767799))

(declare-fun m!767801 () Bool)

(assert (=> b!521217 m!767801))

(declare-fun m!767803 () Bool)

(assert (=> start!47758 m!767803))

(check-sat (not start!47758) tp_is_empty!2777 (not b!521217) (not b!521215) (not b!521213) (not b!521216))
(check-sat)
(get-model)

(declare-fun d!186117 () Bool)

(declare-fun c!100705 () Bool)

(assert (=> d!186117 (= c!100705 ((_ is Nil!4818) acc!308))))

(declare-fun e!312435 () (InoxSet B!1181))

(assert (=> d!186117 (= (content!881 acc!308) e!312435)))

(declare-fun b!521223 () Bool)

(assert (=> b!521223 (= e!312435 ((as const (Array B!1181 Bool)) false))))

(declare-fun b!521224 () Bool)

(assert (=> b!521224 (= e!312435 ((_ map or) (store ((as const (Array B!1181 Bool)) false) (h!10219 acc!308) true) (content!881 (t!73418 acc!308))))))

(assert (= (and d!186117 c!100705) b!521223))

(assert (= (and d!186117 (not c!100705)) b!521224))

(declare-fun m!767805 () Bool)

(assert (=> b!521224 m!767805))

(declare-fun m!767807 () Bool)

(assert (=> b!521224 m!767807))

(assert (=> b!521216 d!186117))

(declare-fun d!186121 () Bool)

(declare-fun c!100706 () Bool)

(assert (=> d!186121 (= c!100706 ((_ is Nil!4818) (++!1363 list!41 acc!308)))))

(declare-fun e!312440 () (InoxSet B!1181))

(assert (=> d!186121 (= (content!881 (++!1363 list!41 acc!308)) e!312440)))

(declare-fun b!521227 () Bool)

(assert (=> b!521227 (= e!312440 ((as const (Array B!1181 Bool)) false))))

(declare-fun b!521228 () Bool)

(assert (=> b!521228 (= e!312440 ((_ map or) (store ((as const (Array B!1181 Bool)) false) (h!10219 (++!1363 list!41 acc!308)) true) (content!881 (t!73418 (++!1363 list!41 acc!308)))))))

(assert (= (and d!186121 c!100706) b!521227))

(assert (= (and d!186121 (not c!100706)) b!521228))

(declare-fun m!767809 () Bool)

(assert (=> b!521228 m!767809))

(declare-fun m!767811 () Bool)

(assert (=> b!521228 m!767811))

(assert (=> b!521216 d!186121))

(declare-fun d!186123 () Bool)

(declare-fun e!312448 () Bool)

(assert (=> d!186123 e!312448))

(declare-fun res!221416 () Bool)

(assert (=> d!186123 (=> (not res!221416) (not e!312448))))

(declare-fun lt!217106 () List!4828)

(assert (=> d!186123 (= res!221416 (= (content!881 lt!217106) ((_ map or) (content!881 list!41) (content!881 acc!308))))))

(declare-fun e!312447 () List!4828)

(assert (=> d!186123 (= lt!217106 e!312447)))

(declare-fun c!100709 () Bool)

(assert (=> d!186123 (= c!100709 ((_ is Nil!4818) list!41))))

(assert (=> d!186123 (= (++!1363 list!41 acc!308) lt!217106)))

(declare-fun b!521244 () Bool)

(assert (=> b!521244 (= e!312448 (or (not (= acc!308 Nil!4818)) (= lt!217106 list!41)))))

(declare-fun b!521243 () Bool)

(declare-fun res!221417 () Bool)

(assert (=> b!521243 (=> (not res!221417) (not e!312448))))

(declare-fun size!3931 (List!4828) Int)

(assert (=> b!521243 (= res!221417 (= (size!3931 lt!217106) (+ (size!3931 list!41) (size!3931 acc!308))))))

(declare-fun b!521242 () Bool)

(assert (=> b!521242 (= e!312447 (Cons!4818 (h!10219 list!41) (++!1363 (t!73418 list!41) acc!308)))))

(declare-fun b!521241 () Bool)

(assert (=> b!521241 (= e!312447 acc!308)))

(assert (= (and d!186123 c!100709) b!521241))

(assert (= (and d!186123 (not c!100709)) b!521242))

(assert (= (and d!186123 res!221416) b!521243))

(assert (= (and b!521243 res!221417) b!521244))

(declare-fun m!767817 () Bool)

(assert (=> d!186123 m!767817))

(declare-fun m!767819 () Bool)

(assert (=> d!186123 m!767819))

(assert (=> d!186123 m!767795))

(declare-fun m!767821 () Bool)

(assert (=> b!521243 m!767821))

(declare-fun m!767823 () Bool)

(assert (=> b!521243 m!767823))

(declare-fun m!767825 () Bool)

(assert (=> b!521243 m!767825))

(declare-fun m!767827 () Bool)

(assert (=> b!521242 m!767827))

(assert (=> b!521216 d!186123))

(declare-fun d!186127 () Bool)

(declare-fun res!221426 () Bool)

(declare-fun e!312457 () Bool)

(assert (=> d!186127 (=> res!221426 e!312457)))

(assert (=> d!186127 (= res!221426 ((_ is Nil!4818) acc!308))))

(assert (=> d!186127 (= (noDuplicate!169 acc!308) e!312457)))

(declare-fun b!521253 () Bool)

(declare-fun e!312458 () Bool)

(assert (=> b!521253 (= e!312457 e!312458)))

(declare-fun res!221427 () Bool)

(assert (=> b!521253 (=> (not res!221427) (not e!312458))))

(assert (=> b!521253 (= res!221427 (not (contains!1166 (t!73418 acc!308) (h!10219 acc!308))))))

(declare-fun b!521254 () Bool)

(assert (=> b!521254 (= e!312458 (noDuplicate!169 (t!73418 acc!308)))))

(assert (= (and d!186127 (not res!221426)) b!521253))

(assert (= (and b!521253 res!221427) b!521254))

(declare-fun m!767829 () Bool)

(assert (=> b!521253 m!767829))

(declare-fun m!767831 () Bool)

(assert (=> b!521254 m!767831))

(assert (=> start!47758 d!186127))

(declare-fun d!186129 () Bool)

(declare-fun lt!217112 () Bool)

(assert (=> d!186129 (= lt!217112 (select (content!881 acc!308) (h!10219 list!41)))))

(declare-fun e!312465 () Bool)

(assert (=> d!186129 (= lt!217112 e!312465)))

(declare-fun res!221434 () Bool)

(assert (=> d!186129 (=> (not res!221434) (not e!312465))))

(assert (=> d!186129 (= res!221434 ((_ is Cons!4818) acc!308))))

(assert (=> d!186129 (= (contains!1166 acc!308 (h!10219 list!41)) lt!217112)))

(declare-fun b!521261 () Bool)

(declare-fun e!312466 () Bool)

(assert (=> b!521261 (= e!312465 e!312466)))

(declare-fun res!221435 () Bool)

(assert (=> b!521261 (=> res!221435 e!312466)))

(assert (=> b!521261 (= res!221435 (= (h!10219 acc!308) (h!10219 list!41)))))

(declare-fun b!521262 () Bool)

(assert (=> b!521262 (= e!312466 (contains!1166 (t!73418 acc!308) (h!10219 list!41)))))

(assert (= (and d!186129 res!221434) b!521261))

(assert (= (and b!521261 (not res!221435)) b!521262))

(assert (=> d!186129 m!767795))

(declare-fun m!767837 () Bool)

(assert (=> d!186129 m!767837))

(declare-fun m!767839 () Bool)

(assert (=> b!521262 m!767839))

(assert (=> b!521217 d!186129))

(declare-fun b!521271 () Bool)

(declare-fun e!312471 () Bool)

(declare-fun tp!162072 () Bool)

(assert (=> b!521271 (= e!312471 (and tp_is_empty!2777 tp!162072))))

(assert (=> b!521215 (= tp!162068 e!312471)))

(assert (= (and b!521215 ((_ is Cons!4818) (t!73418 acc!308))) b!521271))

(declare-fun b!521272 () Bool)

(declare-fun e!312472 () Bool)

(declare-fun tp!162073 () Bool)

(assert (=> b!521272 (= e!312472 (and tp_is_empty!2777 tp!162073))))

(assert (=> b!521213 (= tp!162069 e!312472)))

(assert (= (and b!521213 ((_ is Cons!4818) (t!73418 list!41))) b!521272))

(check-sat (not b!521253) tp_is_empty!2777 (not b!521228) (not b!521271) (not b!521243) (not d!186123) (not b!521242) (not b!521224) (not d!186129) (not b!521254) (not b!521272) (not b!521262))
(check-sat)
