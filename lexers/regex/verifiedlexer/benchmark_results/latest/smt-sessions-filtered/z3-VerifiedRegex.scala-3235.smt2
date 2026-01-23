; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187542 () Bool)

(assert start!187542)

(declare-fun b!1872372 () Bool)

(declare-fun e!1194485 () Bool)

(declare-datatypes ((B!1633 0))(
  ( (B!1634 (val!6006 Int)) )
))
(declare-datatypes ((List!20823 0))(
  ( (Nil!20741) (Cons!20741 (h!26142 B!1633) (t!173040 List!20823)) )
))
(declare-fun l1!1293 () List!20823)

(declare-fun isEmpty!12947 (List!20823) Bool)

(assert (=> b!1872372 (= e!1194485 (isEmpty!12947 (t!173040 l1!1293)))))

(declare-fun b!1872373 () Bool)

(declare-fun res!837987 () Bool)

(declare-fun e!1194487 () Bool)

(assert (=> b!1872373 (=> (not res!837987) (not e!1194487))))

(assert (=> b!1872373 (= res!837987 e!1194485)))

(declare-fun res!837985 () Bool)

(assert (=> b!1872373 (=> res!837985 e!1194485)))

(get-info :version)

(assert (=> b!1872373 (= res!837985 (not ((_ is Cons!20741) l1!1293)))))

(declare-fun b!1872374 () Bool)

(declare-fun l2!1262 () List!20823)

(declare-fun ++!5630 (List!20823 List!20823) List!20823)

(assert (=> b!1872374 (= e!1194487 (= (++!5630 l1!1293 l2!1262) Nil!20741))))

(declare-fun b!1872375 () Bool)

(declare-fun e!1194486 () Bool)

(declare-fun tp_is_empty!8791 () Bool)

(declare-fun tp!532472 () Bool)

(assert (=> b!1872375 (= e!1194486 (and tp_is_empty!8791 tp!532472))))

(declare-fun b!1872376 () Bool)

(declare-fun e!1194484 () Bool)

(declare-fun tp!532473 () Bool)

(assert (=> b!1872376 (= e!1194484 (and tp_is_empty!8791 tp!532473))))

(declare-fun res!837986 () Bool)

(assert (=> start!187542 (=> (not res!837986) (not e!1194487))))

(assert (=> start!187542 (= res!837986 (not (isEmpty!12947 l1!1293)))))

(assert (=> start!187542 e!1194487))

(assert (=> start!187542 e!1194484))

(assert (=> start!187542 e!1194486))

(assert (= (and start!187542 res!837986) b!1872373))

(assert (= (and b!1872373 (not res!837985)) b!1872372))

(assert (= (and b!1872373 res!837987) b!1872374))

(assert (= (and start!187542 ((_ is Cons!20741) l1!1293)) b!1872376))

(assert (= (and start!187542 ((_ is Cons!20741) l2!1262)) b!1872375))

(declare-fun m!2298171 () Bool)

(assert (=> b!1872372 m!2298171))

(declare-fun m!2298173 () Bool)

(assert (=> b!1872374 m!2298173))

(declare-fun m!2298175 () Bool)

(assert (=> start!187542 m!2298175))

(check-sat (not b!1872374) (not b!1872376) tp_is_empty!8791 (not start!187542) (not b!1872375) (not b!1872372))
(check-sat)
(get-model)

(declare-fun d!572422 () Bool)

(declare-fun e!1194496 () Bool)

(assert (=> d!572422 e!1194496))

(declare-fun res!837996 () Bool)

(assert (=> d!572422 (=> (not res!837996) (not e!1194496))))

(declare-fun lt!719670 () List!20823)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3096 (List!20823) (InoxSet B!1633))

(assert (=> d!572422 (= res!837996 (= (content!3096 lt!719670) ((_ map or) (content!3096 l1!1293) (content!3096 l2!1262))))))

(declare-fun e!1194497 () List!20823)

(assert (=> d!572422 (= lt!719670 e!1194497)))

(declare-fun c!305258 () Bool)

(assert (=> d!572422 (= c!305258 ((_ is Nil!20741) l1!1293))))

(assert (=> d!572422 (= (++!5630 l1!1293 l2!1262) lt!719670)))

(declare-fun b!1872393 () Bool)

(assert (=> b!1872393 (= e!1194497 l2!1262)))

(declare-fun b!1872396 () Bool)

(assert (=> b!1872396 (= e!1194496 (or (not (= l2!1262 Nil!20741)) (= lt!719670 l1!1293)))))

(declare-fun b!1872394 () Bool)

(assert (=> b!1872394 (= e!1194497 (Cons!20741 (h!26142 l1!1293) (++!5630 (t!173040 l1!1293) l2!1262)))))

(declare-fun b!1872395 () Bool)

(declare-fun res!837997 () Bool)

(assert (=> b!1872395 (=> (not res!837997) (not e!1194496))))

(declare-fun size!16471 (List!20823) Int)

(assert (=> b!1872395 (= res!837997 (= (size!16471 lt!719670) (+ (size!16471 l1!1293) (size!16471 l2!1262))))))

(assert (= (and d!572422 c!305258) b!1872393))

(assert (= (and d!572422 (not c!305258)) b!1872394))

(assert (= (and d!572422 res!837996) b!1872395))

(assert (= (and b!1872395 res!837997) b!1872396))

(declare-fun m!2298177 () Bool)

(assert (=> d!572422 m!2298177))

(declare-fun m!2298179 () Bool)

(assert (=> d!572422 m!2298179))

(declare-fun m!2298181 () Bool)

(assert (=> d!572422 m!2298181))

(declare-fun m!2298183 () Bool)

(assert (=> b!1872394 m!2298183))

(declare-fun m!2298185 () Bool)

(assert (=> b!1872395 m!2298185))

(declare-fun m!2298187 () Bool)

(assert (=> b!1872395 m!2298187))

(declare-fun m!2298189 () Bool)

(assert (=> b!1872395 m!2298189))

(assert (=> b!1872374 d!572422))

(declare-fun d!572426 () Bool)

(assert (=> d!572426 (= (isEmpty!12947 l1!1293) ((_ is Nil!20741) l1!1293))))

(assert (=> start!187542 d!572426))

(declare-fun d!572428 () Bool)

(assert (=> d!572428 (= (isEmpty!12947 (t!173040 l1!1293)) ((_ is Nil!20741) (t!173040 l1!1293)))))

(assert (=> b!1872372 d!572428))

(declare-fun b!1872405 () Bool)

(declare-fun e!1194502 () Bool)

(declare-fun tp!532476 () Bool)

(assert (=> b!1872405 (= e!1194502 (and tp_is_empty!8791 tp!532476))))

(assert (=> b!1872375 (= tp!532472 e!1194502)))

(assert (= (and b!1872375 ((_ is Cons!20741) (t!173040 l2!1262))) b!1872405))

(declare-fun b!1872406 () Bool)

(declare-fun e!1194503 () Bool)

(declare-fun tp!532477 () Bool)

(assert (=> b!1872406 (= e!1194503 (and tp_is_empty!8791 tp!532477))))

(assert (=> b!1872376 (= tp!532473 e!1194503)))

(assert (= (and b!1872376 ((_ is Cons!20741) (t!173040 l1!1293))) b!1872406))

(check-sat (not b!1872405) (not d!572422) (not b!1872395) (not b!1872406) tp_is_empty!8791 (not b!1872394))
(check-sat)
