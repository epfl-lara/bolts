; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104106 () Bool)

(assert start!104106)

(declare-fun res!532518 () Bool)

(declare-fun e!755764 () Bool)

(assert (=> start!104106 (=> (not res!532518) (not e!755764))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!104106 (= res!532518 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104106 e!755764))

(assert (=> start!104106 true))

(declare-fun e!755765 () Bool)

(assert (=> start!104106 e!755765))

(declare-fun b!1177735 () Bool)

(declare-fun res!532520 () Bool)

(assert (=> b!1177735 (=> (not res!532520) (not e!755764))))

(declare-datatypes ((B!1269 0))(
  ( (B!1270 (val!3744 Int)) )
))
(declare-datatypes ((List!11691 0))(
  ( (Nil!11667) (Cons!11667 (h!17068 B!1269) (t!111183 List!11691)) )
))
(declare-fun l!2952 () List!11691)

(declare-fun size!9231 (List!11691) Int)

(assert (=> b!1177735 (= res!532520 (<= j!89 (size!9231 l!2952)))))

(declare-fun b!1177736 () Bool)

(declare-fun tp_is_empty!5791 () Bool)

(declare-fun tp!335222 () Bool)

(assert (=> b!1177736 (= e!755765 (and tp_is_empty!5791 tp!335222))))

(declare-fun b!1177737 () Bool)

(declare-fun res!532521 () Bool)

(assert (=> b!1177737 (=> (not res!532521) (not e!755764))))

(get-info :version)

(assert (=> b!1177737 (= res!532521 (and (not ((_ is Nil!11667) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (<= i!757 0) (>= (- j!89 1) i!757)))))

(declare-fun b!1177738 () Bool)

(declare-fun res!532519 () Bool)

(assert (=> b!1177738 (=> (not res!532519) (not e!755764))))

(assert (=> b!1177738 (= res!532519 (<= (- j!89 1) (size!9231 (t!111183 l!2952))))))

(declare-fun b!1177739 () Bool)

(declare-fun ListPrimitiveSize!68 (List!11691) Int)

(assert (=> b!1177739 (= e!755764 (>= (ListPrimitiveSize!68 (t!111183 l!2952)) (ListPrimitiveSize!68 l!2952)))))

(assert (= (and start!104106 res!532518) b!1177735))

(assert (= (and b!1177735 res!532520) b!1177737))

(assert (= (and b!1177737 res!532521) b!1177738))

(assert (= (and b!1177738 res!532519) b!1177739))

(assert (= (and start!104106 ((_ is Cons!11667) l!2952)) b!1177736))

(declare-fun m!1354681 () Bool)

(assert (=> b!1177735 m!1354681))

(declare-fun m!1354683 () Bool)

(assert (=> b!1177738 m!1354683))

(declare-fun m!1354685 () Bool)

(assert (=> b!1177739 m!1354685))

(declare-fun m!1354687 () Bool)

(assert (=> b!1177739 m!1354687))

(check-sat tp_is_empty!5791 (not b!1177739) (not b!1177736) (not b!1177735) (not b!1177738))
(check-sat)
(get-model)

(declare-fun d!337358 () Bool)

(declare-fun lt!406107 () Int)

(assert (=> d!337358 (>= lt!406107 0)))

(declare-fun e!755770 () Int)

(assert (=> d!337358 (= lt!406107 e!755770)))

(declare-fun c!196320 () Bool)

(assert (=> d!337358 (= c!196320 ((_ is Nil!11667) (t!111183 l!2952)))))

(assert (=> d!337358 (= (size!9231 (t!111183 l!2952)) lt!406107)))

(declare-fun b!1177748 () Bool)

(assert (=> b!1177748 (= e!755770 0)))

(declare-fun b!1177749 () Bool)

(assert (=> b!1177749 (= e!755770 (+ 1 (size!9231 (t!111183 (t!111183 l!2952)))))))

(assert (= (and d!337358 c!196320) b!1177748))

(assert (= (and d!337358 (not c!196320)) b!1177749))

(declare-fun m!1354689 () Bool)

(assert (=> b!1177749 m!1354689))

(assert (=> b!1177738 d!337358))

(declare-fun d!337362 () Bool)

(declare-fun lt!406108 () Int)

(assert (=> d!337362 (>= lt!406108 0)))

(declare-fun e!755771 () Int)

(assert (=> d!337362 (= lt!406108 e!755771)))

(declare-fun c!196321 () Bool)

(assert (=> d!337362 (= c!196321 ((_ is Nil!11667) l!2952))))

(assert (=> d!337362 (= (size!9231 l!2952) lt!406108)))

(declare-fun b!1177750 () Bool)

(assert (=> b!1177750 (= e!755771 0)))

(declare-fun b!1177751 () Bool)

(assert (=> b!1177751 (= e!755771 (+ 1 (size!9231 (t!111183 l!2952))))))

(assert (= (and d!337362 c!196321) b!1177750))

(assert (= (and d!337362 (not c!196321)) b!1177751))

(assert (=> b!1177751 m!1354683))

(assert (=> b!1177735 d!337362))

(declare-fun d!337364 () Bool)

(declare-fun lt!406114 () Int)

(assert (=> d!337364 (>= lt!406114 0)))

(declare-fun e!755777 () Int)

(assert (=> d!337364 (= lt!406114 e!755777)))

(declare-fun c!196327 () Bool)

(assert (=> d!337364 (= c!196327 ((_ is Nil!11667) (t!111183 l!2952)))))

(assert (=> d!337364 (= (ListPrimitiveSize!68 (t!111183 l!2952)) lt!406114)))

(declare-fun b!1177762 () Bool)

(assert (=> b!1177762 (= e!755777 0)))

(declare-fun b!1177763 () Bool)

(assert (=> b!1177763 (= e!755777 (+ 1 (ListPrimitiveSize!68 (t!111183 (t!111183 l!2952)))))))

(assert (= (and d!337364 c!196327) b!1177762))

(assert (= (and d!337364 (not c!196327)) b!1177763))

(declare-fun m!1354691 () Bool)

(assert (=> b!1177763 m!1354691))

(assert (=> b!1177739 d!337364))

(declare-fun d!337368 () Bool)

(declare-fun lt!406115 () Int)

(assert (=> d!337368 (>= lt!406115 0)))

(declare-fun e!755778 () Int)

(assert (=> d!337368 (= lt!406115 e!755778)))

(declare-fun c!196328 () Bool)

(assert (=> d!337368 (= c!196328 ((_ is Nil!11667) l!2952))))

(assert (=> d!337368 (= (ListPrimitiveSize!68 l!2952) lt!406115)))

(declare-fun b!1177764 () Bool)

(assert (=> b!1177764 (= e!755778 0)))

(declare-fun b!1177765 () Bool)

(assert (=> b!1177765 (= e!755778 (+ 1 (ListPrimitiveSize!68 (t!111183 l!2952))))))

(assert (= (and d!337368 c!196328) b!1177764))

(assert (= (and d!337368 (not c!196328)) b!1177765))

(assert (=> b!1177765 m!1354685))

(assert (=> b!1177739 d!337368))

(declare-fun b!1177774 () Bool)

(declare-fun e!755783 () Bool)

(declare-fun tp!335225 () Bool)

(assert (=> b!1177774 (= e!755783 (and tp_is_empty!5791 tp!335225))))

(assert (=> b!1177736 (= tp!335222 e!755783)))

(assert (= (and b!1177736 ((_ is Cons!11667) (t!111183 l!2952))) b!1177774))

(check-sat tp_is_empty!5791 (not b!1177763) (not b!1177774) (not b!1177751) (not b!1177749) (not b!1177765))
(check-sat)
