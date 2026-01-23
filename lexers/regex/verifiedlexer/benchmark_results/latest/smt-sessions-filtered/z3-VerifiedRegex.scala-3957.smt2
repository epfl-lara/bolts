; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216218 () Bool)

(assert start!216218)

(declare-fun res!952803 () Bool)

(declare-fun e!1416795 () Bool)

(assert (=> start!216218 (=> (not res!952803) (not e!1416795))))

(declare-datatypes ((B!1829 0))(
  ( (B!1830 (val!7440 Int)) )
))
(declare-datatypes ((List!26068 0))(
  ( (Nil!25984) (Cons!25984 (h!31385 B!1829) (t!199384 List!26068)) )
))
(declare-fun l!2924 () List!26068)

(declare-fun isEmpty!14862 (List!26068) Bool)

(assert (=> start!216218 (= res!952803 (not (isEmpty!14862 l!2924)))))

(assert (=> start!216218 e!1416795))

(declare-fun e!1416796 () Bool)

(assert (=> start!216218 e!1416796))

(declare-fun b!2218578 () Bool)

(declare-fun res!952804 () Bool)

(assert (=> b!2218578 (=> (not res!952804) (not e!1416795))))

(get-info :version)

(assert (=> b!2218578 (= res!952804 (and (or (not ((_ is Cons!25984) l!2924)) (not ((_ is Nil!25984) (t!199384 l!2924)))) ((_ is Cons!25984) l!2924)))))

(declare-fun b!2218579 () Bool)

(declare-fun ++!6468 (List!26068 List!26068) List!26068)

(declare-fun removeLast!28 (List!26068) List!26068)

(declare-fun last!366 (List!26068) B!1829)

(assert (=> b!2218579 (= e!1416795 (not (= (++!6468 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924))) (Cons!25984 (last!366 l!2924) Nil!25984)) l!2924)))))

(declare-fun b!2218580 () Bool)

(declare-fun tp_is_empty!9877 () Bool)

(declare-fun tp!691152 () Bool)

(assert (=> b!2218580 (= e!1416796 (and tp_is_empty!9877 tp!691152))))

(assert (= (and start!216218 res!952803) b!2218578))

(assert (= (and b!2218578 res!952804) b!2218579))

(assert (= (and start!216218 ((_ is Cons!25984) l!2924)) b!2218580))

(declare-fun m!2659359 () Bool)

(assert (=> start!216218 m!2659359))

(declare-fun m!2659361 () Bool)

(assert (=> b!2218579 m!2659361))

(declare-fun m!2659363 () Bool)

(assert (=> b!2218579 m!2659363))

(declare-fun m!2659365 () Bool)

(assert (=> b!2218579 m!2659365))

(check-sat (not b!2218579) (not start!216218) (not b!2218580) tp_is_empty!9877)
(check-sat)
(get-model)

(declare-fun d!663168 () Bool)

(declare-fun e!1416808 () Bool)

(assert (=> d!663168 e!1416808))

(declare-fun res!952815 () Bool)

(assert (=> d!663168 (=> (not res!952815) (not e!1416808))))

(declare-fun lt!827058 () List!26068)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3527 (List!26068) (InoxSet B!1829))

(assert (=> d!663168 (= res!952815 (= (content!3527 lt!827058) ((_ map or) (content!3527 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924)))) (content!3527 (Cons!25984 (last!366 l!2924) Nil!25984)))))))

(declare-fun e!1416807 () List!26068)

(assert (=> d!663168 (= lt!827058 e!1416807)))

(declare-fun c!354215 () Bool)

(assert (=> d!663168 (= c!354215 ((_ is Nil!25984) (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924)))))))

(assert (=> d!663168 (= (++!6468 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924))) (Cons!25984 (last!366 l!2924) Nil!25984)) lt!827058)))

(declare-fun b!2218602 () Bool)

(assert (=> b!2218602 (= e!1416807 (Cons!25984 (h!31385 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924)))) (++!6468 (t!199384 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924)))) (Cons!25984 (last!366 l!2924) Nil!25984))))))

(declare-fun b!2218603 () Bool)

(declare-fun res!952816 () Bool)

(assert (=> b!2218603 (=> (not res!952816) (not e!1416808))))

(declare-fun size!20272 (List!26068) Int)

(assert (=> b!2218603 (= res!952816 (= (size!20272 lt!827058) (+ (size!20272 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924)))) (size!20272 (Cons!25984 (last!366 l!2924) Nil!25984)))))))

(declare-fun b!2218601 () Bool)

(assert (=> b!2218601 (= e!1416807 (Cons!25984 (last!366 l!2924) Nil!25984))))

(declare-fun b!2218604 () Bool)

(assert (=> b!2218604 (= e!1416808 (or (not (= (Cons!25984 (last!366 l!2924) Nil!25984) Nil!25984)) (= lt!827058 (Cons!25984 (h!31385 l!2924) (removeLast!28 (t!199384 l!2924))))))))

(assert (= (and d!663168 c!354215) b!2218601))

(assert (= (and d!663168 (not c!354215)) b!2218602))

(assert (= (and d!663168 res!952815) b!2218603))

(assert (= (and b!2218603 res!952816) b!2218604))

(declare-fun m!2659369 () Bool)

(assert (=> d!663168 m!2659369))

(declare-fun m!2659373 () Bool)

(assert (=> d!663168 m!2659373))

(declare-fun m!2659377 () Bool)

(assert (=> d!663168 m!2659377))

(declare-fun m!2659379 () Bool)

(assert (=> b!2218602 m!2659379))

(declare-fun m!2659383 () Bool)

(assert (=> b!2218603 m!2659383))

(declare-fun m!2659387 () Bool)

(assert (=> b!2218603 m!2659387))

(declare-fun m!2659391 () Bool)

(assert (=> b!2218603 m!2659391))

(assert (=> b!2218579 d!663168))

(declare-fun d!663174 () Bool)

(declare-fun lt!827064 () List!26068)

(assert (=> d!663174 (= (++!6468 lt!827064 (Cons!25984 (last!366 (t!199384 l!2924)) Nil!25984)) (t!199384 l!2924))))

(declare-fun e!1416814 () List!26068)

(assert (=> d!663174 (= lt!827064 e!1416814)))

(declare-fun c!354221 () Bool)

(assert (=> d!663174 (= c!354221 (and ((_ is Cons!25984) (t!199384 l!2924)) ((_ is Nil!25984) (t!199384 (t!199384 l!2924)))))))

(assert (=> d!663174 (not (isEmpty!14862 (t!199384 l!2924)))))

(assert (=> d!663174 (= (removeLast!28 (t!199384 l!2924)) lt!827064)))

(declare-fun b!2218615 () Bool)

(assert (=> b!2218615 (= e!1416814 Nil!25984)))

(declare-fun b!2218616 () Bool)

(assert (=> b!2218616 (= e!1416814 (Cons!25984 (h!31385 (t!199384 l!2924)) (removeLast!28 (t!199384 (t!199384 l!2924)))))))

(assert (= (and d!663174 c!354221) b!2218615))

(assert (= (and d!663174 (not c!354221)) b!2218616))

(declare-fun m!2659397 () Bool)

(assert (=> d!663174 m!2659397))

(declare-fun m!2659405 () Bool)

(assert (=> d!663174 m!2659405))

(declare-fun m!2659407 () Bool)

(assert (=> d!663174 m!2659407))

(declare-fun m!2659409 () Bool)

(assert (=> b!2218616 m!2659409))

(assert (=> b!2218579 d!663174))

(declare-fun d!663178 () Bool)

(declare-fun lt!827070 () B!1829)

(declare-fun contains!4312 (List!26068 B!1829) Bool)

(assert (=> d!663178 (contains!4312 l!2924 lt!827070)))

(declare-fun e!1416820 () B!1829)

(assert (=> d!663178 (= lt!827070 e!1416820)))

(declare-fun c!354227 () Bool)

(assert (=> d!663178 (= c!354227 (and ((_ is Cons!25984) l!2924) ((_ is Nil!25984) (t!199384 l!2924))))))

(assert (=> d!663178 (not (isEmpty!14862 l!2924))))

(assert (=> d!663178 (= (last!366 l!2924) lt!827070)))

(declare-fun b!2218627 () Bool)

(assert (=> b!2218627 (= e!1416820 (h!31385 l!2924))))

(declare-fun b!2218628 () Bool)

(assert (=> b!2218628 (= e!1416820 (last!366 (t!199384 l!2924)))))

(assert (= (and d!663178 c!354227) b!2218627))

(assert (= (and d!663178 (not c!354227)) b!2218628))

(declare-fun m!2659413 () Bool)

(assert (=> d!663178 m!2659413))

(assert (=> d!663178 m!2659359))

(assert (=> b!2218628 m!2659397))

(assert (=> b!2218579 d!663178))

(declare-fun d!663182 () Bool)

(assert (=> d!663182 (= (isEmpty!14862 l!2924) ((_ is Nil!25984) l!2924))))

(assert (=> start!216218 d!663182))

(declare-fun b!2218638 () Bool)

(declare-fun e!1416826 () Bool)

(declare-fun tp!691158 () Bool)

(assert (=> b!2218638 (= e!1416826 (and tp_is_empty!9877 tp!691158))))

(assert (=> b!2218580 (= tp!691152 e!1416826)))

(assert (= (and b!2218580 ((_ is Cons!25984) (t!199384 l!2924))) b!2218638))

(check-sat (not b!2218616) (not b!2218602) (not d!663178) tp_is_empty!9877 (not d!663168) (not d!663174) (not b!2218603) (not b!2218628) (not b!2218638))
(check-sat)
