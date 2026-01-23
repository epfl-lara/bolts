; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534090 () Bool)

(assert start!534090)

(declare-fun res!2150599 () Bool)

(declare-fun e!3152751 () Bool)

(assert (=> start!534090 (=> (not res!2150599) (not e!3152751))))

(declare-datatypes ((T!104600 0))(
  ( (T!104601 (val!23574 Int)) )
))
(declare-datatypes ((List!58484 0))(
  ( (Nil!58360) (Cons!58360 (h!64808 T!104600) (t!371123 List!58484)) )
))
(declare-fun l!2785 () List!58484)

(get-info :version)

(assert (=> start!534090 (= res!2150599 ((_ is Nil!58360) l!2785))))

(assert (=> start!534090 e!3152751))

(declare-fun e!3152752 () Bool)

(assert (=> start!534090 e!3152752))

(declare-fun b!5049554 () Bool)

(declare-fun take!867 (List!58484 Int) List!58484)

(declare-fun size!38985 (List!58484) Int)

(assert (=> b!5049554 (= e!3152751 (not (= (take!867 l!2785 (size!38985 l!2785)) l!2785)))))

(declare-fun b!5049555 () Bool)

(declare-fun tp_is_empty!36903 () Bool)

(declare-fun tp!1412073 () Bool)

(assert (=> b!5049555 (= e!3152752 (and tp_is_empty!36903 tp!1412073))))

(assert (= (and start!534090 res!2150599) b!5049554))

(assert (= (and start!534090 ((_ is Cons!58360) l!2785)) b!5049555))

(declare-fun m!6084290 () Bool)

(assert (=> b!5049554 m!6084290))

(assert (=> b!5049554 m!6084290))

(declare-fun m!6084292 () Bool)

(assert (=> b!5049554 m!6084292))

(check-sat (not b!5049554) (not b!5049555) tp_is_empty!36903)
(check-sat)
(get-model)

(declare-fun b!5049585 () Bool)

(declare-fun e!3152772 () Int)

(assert (=> b!5049585 (= e!3152772 (size!38985 l!2785))))

(declare-fun b!5049587 () Bool)

(declare-fun e!3152770 () List!58484)

(assert (=> b!5049587 (= e!3152770 Nil!58360)))

(declare-fun b!5049589 () Bool)

(assert (=> b!5049589 (= e!3152772 (size!38985 l!2785))))

(declare-fun b!5049591 () Bool)

(declare-fun e!3152775 () Bool)

(declare-fun lt!2086376 () List!58484)

(declare-fun e!3152774 () Int)

(assert (=> b!5049591 (= e!3152775 (= (size!38985 lt!2086376) e!3152774))))

(declare-fun c!866020 () Bool)

(assert (=> b!5049591 (= c!866020 (<= (size!38985 l!2785) 0))))

(declare-fun d!1624840 () Bool)

(assert (=> d!1624840 e!3152775))

(declare-fun res!2150605 () Bool)

(assert (=> d!1624840 (=> (not res!2150605) (not e!3152775))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10381 (List!58484) (InoxSet T!104600))

(assert (=> d!1624840 (= res!2150605 (= ((_ map implies) (content!10381 lt!2086376) (content!10381 l!2785)) ((as const (InoxSet T!104600)) true)))))

(assert (=> d!1624840 (= lt!2086376 e!3152770)))

(declare-fun c!866017 () Bool)

(assert (=> d!1624840 (= c!866017 (or ((_ is Nil!58360) l!2785) (<= (size!38985 l!2785) 0)))))

(assert (=> d!1624840 (= (take!867 l!2785 (size!38985 l!2785)) lt!2086376)))

(declare-fun b!5049593 () Bool)

(assert (=> b!5049593 (= e!3152774 0)))

(declare-fun b!5049595 () Bool)

(assert (=> b!5049595 (= e!3152774 e!3152772)))

(declare-fun c!866021 () Bool)

(assert (=> b!5049595 (= c!866021 (>= (size!38985 l!2785) (size!38985 l!2785)))))

(declare-fun b!5049597 () Bool)

(assert (=> b!5049597 (= e!3152770 (Cons!58360 (h!64808 l!2785) (take!867 (t!371123 l!2785) (- (size!38985 l!2785) 1))))))

(assert (= (and d!1624840 c!866017) b!5049587))

(assert (= (and d!1624840 (not c!866017)) b!5049597))

(assert (= (and d!1624840 res!2150605) b!5049591))

(assert (= (and b!5049591 c!866020) b!5049593))

(assert (= (and b!5049591 (not c!866020)) b!5049595))

(assert (= (and b!5049595 c!866021) b!5049585))

(assert (= (and b!5049595 (not c!866021)) b!5049589))

(assert (=> b!5049595 m!6084290))

(declare-fun m!6084294 () Bool)

(assert (=> d!1624840 m!6084294))

(declare-fun m!6084296 () Bool)

(assert (=> d!1624840 m!6084296))

(assert (=> b!5049585 m!6084290))

(declare-fun m!6084302 () Bool)

(assert (=> b!5049597 m!6084302))

(declare-fun m!6084306 () Bool)

(assert (=> b!5049591 m!6084306))

(assert (=> b!5049554 d!1624840))

(declare-fun d!1624842 () Bool)

(declare-fun lt!2086383 () Int)

(assert (=> d!1624842 (>= lt!2086383 0)))

(declare-fun e!3152782 () Int)

(assert (=> d!1624842 (= lt!2086383 e!3152782)))

(declare-fun c!866027 () Bool)

(assert (=> d!1624842 (= c!866027 ((_ is Nil!58360) l!2785))))

(assert (=> d!1624842 (= (size!38985 l!2785) lt!2086383)))

(declare-fun b!5049608 () Bool)

(assert (=> b!5049608 (= e!3152782 0)))

(declare-fun b!5049609 () Bool)

(assert (=> b!5049609 (= e!3152782 (+ 1 (size!38985 (t!371123 l!2785))))))

(assert (= (and d!1624842 c!866027) b!5049608))

(assert (= (and d!1624842 (not c!866027)) b!5049609))

(declare-fun m!6084312 () Bool)

(assert (=> b!5049609 m!6084312))

(assert (=> b!5049554 d!1624842))

(declare-fun b!5049619 () Bool)

(declare-fun e!3152788 () Bool)

(declare-fun tp!1412079 () Bool)

(assert (=> b!5049619 (= e!3152788 (and tp_is_empty!36903 tp!1412079))))

(assert (=> b!5049555 (= tp!1412073 e!3152788)))

(assert (= (and b!5049555 ((_ is Cons!58360) (t!371123 l!2785))) b!5049619))

(check-sat (not b!5049585) tp_is_empty!36903 (not b!5049609) (not b!5049591) (not b!5049619) (not b!5049595) (not d!1624840) (not b!5049597))
(check-sat)
