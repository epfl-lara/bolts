; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757938 () Bool)

(assert start!757938)

(declare-fun res!3181534 () Bool)

(declare-fun e!4742150 () Bool)

(assert (=> start!757938 (=> (not res!3181534) (not e!4742150))))

(declare-datatypes ((K!22678 0))(
  ( (K!22679 (val!32815 Int)) )
))
(declare-datatypes ((List!75592 0))(
  ( (Nil!75466) (Cons!75466 (h!81914 K!22678) (t!391364 List!75592)) )
))
(declare-fun keys!184 () List!75592)

(get-info :version)

(assert (=> start!757938 (= res!3181534 (not ((_ is Nil!75466) keys!184)))))

(assert (=> start!757938 e!4742150))

(declare-fun e!4742148 () Bool)

(assert (=> start!757938 e!4742148))

(declare-datatypes ((B!4473 0))(
  ( (B!4474 (val!32816 Int)) )
))
(declare-datatypes ((tuple2!70780 0))(
  ( (tuple2!70781 (_1!38693 K!22678) (_2!38693 B!4473)) )
))
(declare-datatypes ((List!75593 0))(
  ( (Nil!75467) (Cons!75467 (h!81915 tuple2!70780) (t!391365 List!75593)) )
))
(declare-datatypes ((ListMap!7183 0))(
  ( (ListMap!7184 (toList!11866 List!75593)) )
))
(declare-fun thiss!41885 () ListMap!7183)

(declare-fun e!4742149 () Bool)

(declare-fun inv!97167 (ListMap!7183) Bool)

(assert (=> start!757938 (and (inv!97167 thiss!41885) e!4742149)))

(declare-fun b!8048292 () Bool)

(declare-fun ListPrimitiveSize!546 (List!75592) Int)

(assert (=> b!8048292 (= e!4742150 (>= (ListPrimitiveSize!546 (t!391364 keys!184)) (ListPrimitiveSize!546 keys!184)))))

(declare-fun lt!2722942 () ListMap!7183)

(declare-fun -!762 (ListMap!7183 K!22678) ListMap!7183)

(assert (=> b!8048292 (= lt!2722942 (-!762 thiss!41885 (h!81914 keys!184)))))

(declare-fun b!8048293 () Bool)

(declare-fun tp_is_empty!54681 () Bool)

(declare-fun tp!2413317 () Bool)

(assert (=> b!8048293 (= e!4742148 (and tp_is_empty!54681 tp!2413317))))

(declare-fun b!8048294 () Bool)

(declare-fun tp!2413316 () Bool)

(assert (=> b!8048294 (= e!4742149 tp!2413316)))

(assert (= (and start!757938 res!3181534) b!8048292))

(assert (= (and start!757938 ((_ is Cons!75466) keys!184)) b!8048293))

(assert (= start!757938 b!8048294))

(declare-fun m!8399486 () Bool)

(assert (=> start!757938 m!8399486))

(declare-fun m!8399488 () Bool)

(assert (=> b!8048292 m!8399488))

(declare-fun m!8399490 () Bool)

(assert (=> b!8048292 m!8399490))

(declare-fun m!8399492 () Bool)

(assert (=> b!8048292 m!8399492))

(check-sat (not b!8048292) (not b!8048294) (not start!757938) (not b!8048293) tp_is_empty!54681)
(check-sat)
(get-model)

(declare-fun d!2396924 () Bool)

(declare-fun invariantList!1907 (List!75593) Bool)

(assert (=> d!2396924 (= (inv!97167 thiss!41885) (invariantList!1907 (toList!11866 thiss!41885)))))

(declare-fun bs!1971801 () Bool)

(assert (= bs!1971801 d!2396924))

(declare-fun m!8399496 () Bool)

(assert (=> bs!1971801 m!8399496))

(assert (=> start!757938 d!2396924))

(declare-fun d!2396930 () Bool)

(declare-fun lt!2722949 () Int)

(assert (=> d!2396930 (>= lt!2722949 0)))

(declare-fun e!4742157 () Int)

(assert (=> d!2396930 (= lt!2722949 e!4742157)))

(declare-fun c!1475549 () Bool)

(assert (=> d!2396930 (= c!1475549 ((_ is Nil!75466) (t!391364 keys!184)))))

(assert (=> d!2396930 (= (ListPrimitiveSize!546 (t!391364 keys!184)) lt!2722949)))

(declare-fun b!8048307 () Bool)

(assert (=> b!8048307 (= e!4742157 0)))

(declare-fun b!8048308 () Bool)

(assert (=> b!8048308 (= e!4742157 (+ 1 (ListPrimitiveSize!546 (t!391364 (t!391364 keys!184)))))))

(assert (= (and d!2396930 c!1475549) b!8048307))

(assert (= (and d!2396930 (not c!1475549)) b!8048308))

(declare-fun m!8399498 () Bool)

(assert (=> b!8048308 m!8399498))

(assert (=> b!8048292 d!2396930))

(declare-fun d!2396932 () Bool)

(declare-fun lt!2722950 () Int)

(assert (=> d!2396932 (>= lt!2722950 0)))

(declare-fun e!4742158 () Int)

(assert (=> d!2396932 (= lt!2722950 e!4742158)))

(declare-fun c!1475550 () Bool)

(assert (=> d!2396932 (= c!1475550 ((_ is Nil!75466) keys!184))))

(assert (=> d!2396932 (= (ListPrimitiveSize!546 keys!184) lt!2722950)))

(declare-fun b!8048309 () Bool)

(assert (=> b!8048309 (= e!4742158 0)))

(declare-fun b!8048310 () Bool)

(assert (=> b!8048310 (= e!4742158 (+ 1 (ListPrimitiveSize!546 (t!391364 keys!184))))))

(assert (= (and d!2396932 c!1475550) b!8048309))

(assert (= (and d!2396932 (not c!1475550)) b!8048310))

(assert (=> b!8048310 m!8399488))

(assert (=> b!8048292 d!2396932))

(declare-fun d!2396934 () Bool)

(declare-fun e!4742170 () Bool)

(assert (=> d!2396934 e!4742170))

(declare-fun res!3181540 () Bool)

(assert (=> d!2396934 (=> (not res!3181540) (not e!4742170))))

(declare-fun lt!2722956 () ListMap!7183)

(declare-fun contains!21081 (ListMap!7183 K!22678) Bool)

(assert (=> d!2396934 (= res!3181540 (not (contains!21081 lt!2722956 (h!81914 keys!184))))))

(declare-fun removePresrvNoDuplicatedKeys!407 (List!75593 K!22678) List!75593)

(assert (=> d!2396934 (= lt!2722956 (ListMap!7184 (removePresrvNoDuplicatedKeys!407 (toList!11866 thiss!41885) (h!81914 keys!184))))))

(assert (=> d!2396934 (= (-!762 thiss!41885 (h!81914 keys!184)) lt!2722956)))

(declare-fun b!8048326 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16077 (List!75592) (InoxSet K!22678))

(declare-fun keys!30759 (ListMap!7183) List!75592)

(assert (=> b!8048326 (= e!4742170 (= ((_ map and) (content!16077 (keys!30759 thiss!41885)) ((_ map not) (store ((as const (Array K!22678 Bool)) false) (h!81914 keys!184) true))) (content!16077 (keys!30759 lt!2722956))))))

(assert (= (and d!2396934 res!3181540) b!8048326))

(declare-fun m!8399516 () Bool)

(assert (=> d!2396934 m!8399516))

(declare-fun m!8399518 () Bool)

(assert (=> d!2396934 m!8399518))

(declare-fun m!8399520 () Bool)

(assert (=> b!8048326 m!8399520))

(declare-fun m!8399522 () Bool)

(assert (=> b!8048326 m!8399522))

(declare-fun m!8399524 () Bool)

(assert (=> b!8048326 m!8399524))

(declare-fun m!8399526 () Bool)

(assert (=> b!8048326 m!8399526))

(assert (=> b!8048326 m!8399520))

(declare-fun m!8399528 () Bool)

(assert (=> b!8048326 m!8399528))

(assert (=> b!8048326 m!8399524))

(assert (=> b!8048292 d!2396934))

(declare-fun b!8048331 () Bool)

(declare-fun tp_is_empty!54685 () Bool)

(declare-fun tp!2413326 () Bool)

(declare-fun e!4742173 () Bool)

(assert (=> b!8048331 (= e!4742173 (and tp_is_empty!54681 tp_is_empty!54685 tp!2413326))))

(assert (=> b!8048294 (= tp!2413316 e!4742173)))

(assert (= (and b!8048294 ((_ is Cons!75467) (toList!11866 thiss!41885))) b!8048331))

(declare-fun b!8048336 () Bool)

(declare-fun e!4742176 () Bool)

(declare-fun tp!2413329 () Bool)

(assert (=> b!8048336 (= e!4742176 (and tp_is_empty!54681 tp!2413329))))

(assert (=> b!8048293 (= tp!2413317 e!4742176)))

(assert (= (and b!8048293 ((_ is Cons!75466) (t!391364 keys!184))) b!8048336))

(check-sat (not d!2396934) (not d!2396924) (not b!8048308) tp_is_empty!54685 (not b!8048331) (not b!8048326) tp_is_empty!54681 (not b!8048310) (not b!8048336))
(check-sat)
