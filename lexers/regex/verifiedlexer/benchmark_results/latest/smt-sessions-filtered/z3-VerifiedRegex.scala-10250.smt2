; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534102 () Bool)

(assert start!534102)

(declare-fun res!2150611 () Bool)

(declare-fun e!3152799 () Bool)

(assert (=> start!534102 (=> (not res!2150611) (not e!3152799))))

(declare-datatypes ((T!104614 0))(
  ( (T!104615 (val!23576 Int)) )
))
(declare-datatypes ((List!58486 0))(
  ( (Nil!58362) (Cons!58362 (h!64810 T!104614) (t!371125 List!58486)) )
))
(declare-fun l!2785 () List!58486)

(get-info :version)

(assert (=> start!534102 (= res!2150611 (not ((_ is Nil!58362) l!2785)))))

(assert (=> start!534102 e!3152799))

(declare-fun e!3152800 () Bool)

(assert (=> start!534102 e!3152800))

(declare-fun b!5049630 () Bool)

(declare-fun ListPrimitiveSize!389 (List!58486) Int)

(assert (=> b!5049630 (= e!3152799 (>= (ListPrimitiveSize!389 (t!371125 l!2785)) (ListPrimitiveSize!389 l!2785)))))

(declare-fun b!5049631 () Bool)

(declare-fun tp_is_empty!36907 () Bool)

(declare-fun tp!1412085 () Bool)

(assert (=> b!5049631 (= e!3152800 (and tp_is_empty!36907 tp!1412085))))

(assert (= (and start!534102 res!2150611) b!5049630))

(assert (= (and start!534102 ((_ is Cons!58362) l!2785)) b!5049631))

(declare-fun m!6084318 () Bool)

(assert (=> b!5049630 m!6084318))

(declare-fun m!6084320 () Bool)

(assert (=> b!5049630 m!6084320))

(check-sat (not b!5049630) (not b!5049631) tp_is_empty!36907)
(check-sat)
(get-model)

(declare-fun d!1624847 () Bool)

(declare-fun lt!2086390 () Int)

(assert (=> d!1624847 (>= lt!2086390 0)))

(declare-fun e!3152807 () Int)

(assert (=> d!1624847 (= lt!2086390 e!3152807)))

(declare-fun c!866034 () Bool)

(assert (=> d!1624847 (= c!866034 ((_ is Nil!58362) (t!371125 l!2785)))))

(assert (=> d!1624847 (= (ListPrimitiveSize!389 (t!371125 l!2785)) lt!2086390)))

(declare-fun b!5049644 () Bool)

(assert (=> b!5049644 (= e!3152807 0)))

(declare-fun b!5049645 () Bool)

(assert (=> b!5049645 (= e!3152807 (+ 1 (ListPrimitiveSize!389 (t!371125 (t!371125 l!2785)))))))

(assert (= (and d!1624847 c!866034) b!5049644))

(assert (= (and d!1624847 (not c!866034)) b!5049645))

(declare-fun m!6084324 () Bool)

(assert (=> b!5049645 m!6084324))

(assert (=> b!5049630 d!1624847))

(declare-fun d!1624853 () Bool)

(declare-fun lt!2086391 () Int)

(assert (=> d!1624853 (>= lt!2086391 0)))

(declare-fun e!3152810 () Int)

(assert (=> d!1624853 (= lt!2086391 e!3152810)))

(declare-fun c!866035 () Bool)

(assert (=> d!1624853 (= c!866035 ((_ is Nil!58362) l!2785))))

(assert (=> d!1624853 (= (ListPrimitiveSize!389 l!2785) lt!2086391)))

(declare-fun b!5049650 () Bool)

(assert (=> b!5049650 (= e!3152810 0)))

(declare-fun b!5049651 () Bool)

(assert (=> b!5049651 (= e!3152810 (+ 1 (ListPrimitiveSize!389 (t!371125 l!2785))))))

(assert (= (and d!1624853 c!866035) b!5049650))

(assert (= (and d!1624853 (not c!866035)) b!5049651))

(assert (=> b!5049651 m!6084318))

(assert (=> b!5049630 d!1624853))

(declare-fun b!5049657 () Bool)

(declare-fun e!3152814 () Bool)

(declare-fun tp!1412091 () Bool)

(assert (=> b!5049657 (= e!3152814 (and tp_is_empty!36907 tp!1412091))))

(assert (=> b!5049631 (= tp!1412085 e!3152814)))

(assert (= (and b!5049631 ((_ is Cons!58362) (t!371125 l!2785))) b!5049657))

(check-sat (not b!5049651) (not b!5049645) (not b!5049657) tp_is_empty!36907)
(check-sat)
