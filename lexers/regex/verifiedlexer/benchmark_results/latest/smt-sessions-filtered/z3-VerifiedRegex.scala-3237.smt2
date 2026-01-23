; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187562 () Bool)

(assert start!187562)

(declare-fun res!838023 () Bool)

(declare-fun e!1194542 () Bool)

(assert (=> start!187562 (=> (not res!838023) (not e!1194542))))

(declare-datatypes ((B!1641 0))(
  ( (B!1642 (val!6010 Int)) )
))
(declare-datatypes ((List!20827 0))(
  ( (Nil!20745) (Cons!20745 (h!26146 B!1641) (t!173044 List!20827)) )
))
(declare-fun l1!1293 () List!20827)

(declare-fun isEmpty!12951 (List!20827) Bool)

(assert (=> start!187562 (= res!838023 (not (isEmpty!12951 l1!1293)))))

(assert (=> start!187562 e!1194542))

(declare-fun e!1194543 () Bool)

(assert (=> start!187562 e!1194543))

(declare-fun b!1872457 () Bool)

(declare-fun ListPrimitiveSize!141 (List!20827) Int)

(assert (=> b!1872457 (= e!1194542 (< (ListPrimitiveSize!141 l1!1293) 0))))

(declare-fun b!1872458 () Bool)

(declare-fun tp_is_empty!8799 () Bool)

(declare-fun tp!532499 () Bool)

(assert (=> b!1872458 (= e!1194543 (and tp_is_empty!8799 tp!532499))))

(assert (= (and start!187562 res!838023) b!1872457))

(get-info :version)

(assert (= (and start!187562 ((_ is Cons!20745) l1!1293)) b!1872458))

(declare-fun m!2298217 () Bool)

(assert (=> start!187562 m!2298217))

(declare-fun m!2298219 () Bool)

(assert (=> b!1872457 m!2298219))

(check-sat (not b!1872457) (not start!187562) (not b!1872458) tp_is_empty!8799)
(check-sat)
(get-model)

(declare-fun d!572446 () Bool)

(declare-fun lt!719677 () Int)

(assert (=> d!572446 (>= lt!719677 0)))

(declare-fun e!1194549 () Int)

(assert (=> d!572446 (= lt!719677 e!1194549)))

(declare-fun c!305265 () Bool)

(assert (=> d!572446 (= c!305265 ((_ is Nil!20745) l1!1293))))

(assert (=> d!572446 (= (ListPrimitiveSize!141 l1!1293) lt!719677)))

(declare-fun b!1872469 () Bool)

(assert (=> b!1872469 (= e!1194549 0)))

(declare-fun b!1872470 () Bool)

(assert (=> b!1872470 (= e!1194549 (+ 1 (ListPrimitiveSize!141 (t!173044 l1!1293))))))

(assert (= (and d!572446 c!305265) b!1872469))

(assert (= (and d!572446 (not c!305265)) b!1872470))

(declare-fun m!2298223 () Bool)

(assert (=> b!1872470 m!2298223))

(assert (=> b!1872457 d!572446))

(declare-fun d!572450 () Bool)

(assert (=> d!572450 (= (isEmpty!12951 l1!1293) ((_ is Nil!20745) l1!1293))))

(assert (=> start!187562 d!572450))

(declare-fun b!1872480 () Bool)

(declare-fun e!1194555 () Bool)

(declare-fun tp!532505 () Bool)

(assert (=> b!1872480 (= e!1194555 (and tp_is_empty!8799 tp!532505))))

(assert (=> b!1872458 (= tp!532499 e!1194555)))

(assert (= (and b!1872458 ((_ is Cons!20745) (t!173044 l1!1293))) b!1872480))

(check-sat (not b!1872470) (not b!1872480) tp_is_empty!8799)
(check-sat)
