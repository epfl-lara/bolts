; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107974 () Bool)

(assert start!107974)

(declare-fun res!544577 () Bool)

(declare-fun e!776723 () Bool)

(assert (=> start!107974 (=> (not res!544577) (not e!776723))))

(declare-datatypes ((B!1365 0))(
  ( (B!1366 (val!4040 Int)) )
))
(declare-datatypes ((List!12287 0))(
  ( (Nil!12229) (Cons!12229 (h!17630 B!1365) (t!112671 List!12287)) )
))
(declare-fun l!3821 () List!12287)

(declare-fun e!9491 () B!1365)

(declare-fun contains!2046 (List!12287 B!1365) Bool)

(assert (=> start!107974 (= res!544577 (contains!2046 l!3821 e!9491))))

(assert (=> start!107974 e!776723))

(declare-fun e!776724 () Bool)

(assert (=> start!107974 e!776724))

(declare-fun tp_is_empty!6223 () Bool)

(assert (=> start!107974 tp_is_empty!6223))

(declare-fun b!1210722 () Bool)

(declare-fun ListPrimitiveSize!90 (List!12287) Int)

(assert (=> b!1210722 (= e!776723 (< (ListPrimitiveSize!90 l!3821) 0))))

(declare-fun b!1210723 () Bool)

(declare-fun tp!342915 () Bool)

(assert (=> b!1210723 (= e!776724 (and tp_is_empty!6223 tp!342915))))

(assert (= (and start!107974 res!544577) b!1210722))

(get-info :version)

(assert (= (and start!107974 ((_ is Cons!12229) l!3821)) b!1210723))

(declare-fun m!1386583 () Bool)

(assert (=> start!107974 m!1386583))

(declare-fun m!1386585 () Bool)

(assert (=> b!1210722 m!1386585))

(check-sat (not start!107974) (not b!1210722) (not b!1210723) tp_is_empty!6223)
(check-sat)
(get-model)

(declare-fun d!346377 () Bool)

(declare-fun lt!414409 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1742 (List!12287) (InoxSet B!1365))

(assert (=> d!346377 (= lt!414409 (select (content!1742 l!3821) e!9491))))

(declare-fun e!776733 () Bool)

(assert (=> d!346377 (= lt!414409 e!776733)))

(declare-fun res!544582 () Bool)

(assert (=> d!346377 (=> (not res!544582) (not e!776733))))

(assert (=> d!346377 (= res!544582 ((_ is Cons!12229) l!3821))))

(assert (=> d!346377 (= (contains!2046 l!3821 e!9491) lt!414409)))

(declare-fun b!1210734 () Bool)

(declare-fun e!776732 () Bool)

(assert (=> b!1210734 (= e!776733 e!776732)))

(declare-fun res!544583 () Bool)

(assert (=> b!1210734 (=> res!544583 e!776732)))

(assert (=> b!1210734 (= res!544583 (= (h!17630 l!3821) e!9491))))

(declare-fun b!1210735 () Bool)

(assert (=> b!1210735 (= e!776732 (contains!2046 (t!112671 l!3821) e!9491))))

(assert (= (and d!346377 res!544582) b!1210734))

(assert (= (and b!1210734 (not res!544583)) b!1210735))

(declare-fun m!1386589 () Bool)

(assert (=> d!346377 m!1386589))

(declare-fun m!1386591 () Bool)

(assert (=> d!346377 m!1386591))

(declare-fun m!1386593 () Bool)

(assert (=> b!1210735 m!1386593))

(assert (=> start!107974 d!346377))

(declare-fun d!346381 () Bool)

(declare-fun lt!414415 () Int)

(assert (=> d!346381 (>= lt!414415 0)))

(declare-fun e!776742 () Int)

(assert (=> d!346381 (= lt!414415 e!776742)))

(declare-fun c!202781 () Bool)

(assert (=> d!346381 (= c!202781 ((_ is Nil!12229) l!3821))))

(assert (=> d!346381 (= (ListPrimitiveSize!90 l!3821) lt!414415)))

(declare-fun b!1210746 () Bool)

(assert (=> b!1210746 (= e!776742 0)))

(declare-fun b!1210747 () Bool)

(assert (=> b!1210747 (= e!776742 (+ 1 (ListPrimitiveSize!90 (t!112671 l!3821))))))

(assert (= (and d!346381 c!202781) b!1210746))

(assert (= (and d!346381 (not c!202781)) b!1210747))

(declare-fun m!1386601 () Bool)

(assert (=> b!1210747 m!1386601))

(assert (=> b!1210722 d!346381))

(declare-fun b!1210757 () Bool)

(declare-fun e!776748 () Bool)

(declare-fun tp!342921 () Bool)

(assert (=> b!1210757 (= e!776748 (and tp_is_empty!6223 tp!342921))))

(assert (=> b!1210723 (= tp!342915 e!776748)))

(assert (= (and b!1210723 ((_ is Cons!12229) (t!112671 l!3821))) b!1210757))

(check-sat (not b!1210735) (not d!346377) (not b!1210747) (not b!1210757) tp_is_empty!6223)
(check-sat)
