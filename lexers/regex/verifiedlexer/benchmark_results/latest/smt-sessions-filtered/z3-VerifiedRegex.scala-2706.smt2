; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145472 () Bool)

(assert start!145472)

(declare-fun res!697527 () Bool)

(declare-fun e!1004891 () Bool)

(assert (=> start!145472 (=> (not res!697527) (not e!1004891))))

(declare-datatypes ((K!3259 0))(
  ( (K!3260 (val!4983 Int)) )
))
(declare-datatypes ((B!1437 0))(
  ( (B!1438 (val!4984 Int)) )
))
(declare-datatypes ((tuple2!16590 0))(
  ( (tuple2!16591 (_1!9697 K!3259) (_2!9697 B!1437)) )
))
(declare-datatypes ((List!17057 0))(
  ( (Nil!16987) (Cons!16987 (h!22388 tuple2!16590) (t!141684 List!17057)) )
))
(declare-datatypes ((ListMap!557 0))(
  ( (ListMap!558 (toList!863 List!17057)) )
))
(declare-fun thiss!41797 () ListMap!557)

(declare-fun isEmpty!10182 (ListMap!557) Bool)

(assert (=> start!145472 (= res!697527 (not (isEmpty!10182 thiss!41797)))))

(assert (=> start!145472 e!1004891))

(declare-fun e!1004892 () Bool)

(declare-fun inv!22334 (ListMap!557) Bool)

(assert (=> start!145472 (and (inv!22334 thiss!41797) e!1004892)))

(declare-fun b!1564670 () Bool)

(assert (=> b!1564670 (= e!1004891 (= (toList!863 thiss!41797) Nil!16987))))

(declare-fun b!1564671 () Bool)

(declare-fun tp!460772 () Bool)

(assert (=> b!1564671 (= e!1004892 tp!460772)))

(assert (= (and start!145472 res!697527) b!1564670))

(assert (= start!145472 b!1564671))

(declare-fun m!1836283 () Bool)

(assert (=> start!145472 m!1836283))

(declare-fun m!1836285 () Bool)

(assert (=> start!145472 m!1836285))

(check-sat (not start!145472) (not b!1564671))
(check-sat)
(get-model)

(declare-fun d!463507 () Bool)

(declare-fun e!1004895 () Bool)

(assert (=> d!463507 e!1004895))

(declare-fun res!697530 () Bool)

(assert (=> d!463507 (=> res!697530 e!1004895)))

(declare-fun size!13783 (List!17057) Int)

(assert (=> d!463507 (= res!697530 (>= (size!13783 (toList!863 thiss!41797)) 2147483647))))

(declare-fun lt!541779 () Bool)

(declare-fun isEmpty!10183 (List!17057) Bool)

(assert (=> d!463507 (= lt!541779 (isEmpty!10183 (toList!863 thiss!41797)))))

(assert (=> d!463507 (= (isEmpty!10182 thiss!41797) lt!541779)))

(declare-fun b!1564674 () Bool)

(declare-fun size!13784 (ListMap!557) (_ BitVec 32))

(assert (=> b!1564674 (= e!1004895 (= lt!541779 (= (size!13784 thiss!41797) #b00000000000000000000000000000000)))))

(assert (= (and d!463507 (not res!697530)) b!1564674))

(declare-fun m!1836287 () Bool)

(assert (=> d!463507 m!1836287))

(declare-fun m!1836289 () Bool)

(assert (=> d!463507 m!1836289))

(declare-fun m!1836291 () Bool)

(assert (=> b!1564674 m!1836291))

(assert (=> start!145472 d!463507))

(declare-fun d!463511 () Bool)

(declare-fun invariantList!253 (List!17057) Bool)

(assert (=> d!463511 (= (inv!22334 thiss!41797) (invariantList!253 (toList!863 thiss!41797)))))

(declare-fun bs!389538 () Bool)

(assert (= bs!389538 d!463511))

(declare-fun m!1836293 () Bool)

(assert (=> bs!389538 m!1836293))

(assert (=> start!145472 d!463511))

(declare-fun tp_is_empty!7133 () Bool)

(declare-fun tp!460775 () Bool)

(declare-fun tp_is_empty!7131 () Bool)

(declare-fun e!1004900 () Bool)

(declare-fun b!1564681 () Bool)

(assert (=> b!1564681 (= e!1004900 (and tp_is_empty!7131 tp_is_empty!7133 tp!460775))))

(assert (=> b!1564671 (= tp!460772 e!1004900)))

(get-info :version)

(assert (= (and b!1564671 ((_ is Cons!16987) (toList!863 thiss!41797))) b!1564681))

(check-sat (not b!1564674) tp_is_empty!7133 (not d!463507) tp_is_empty!7131 (not d!463511) (not b!1564681))
(check-sat)
(get-model)

(declare-fun d!463515 () Bool)

(declare-fun noDuplicatedKeys!65 (List!17057) Bool)

(assert (=> d!463515 (= (invariantList!253 (toList!863 thiss!41797)) (noDuplicatedKeys!65 (toList!863 thiss!41797)))))

(declare-fun bs!389540 () Bool)

(assert (= bs!389540 d!463515))

(declare-fun m!1836303 () Bool)

(assert (=> bs!389540 m!1836303))

(assert (=> d!463511 d!463515))

(declare-fun d!463517 () Bool)

(declare-fun lt!541785 () Int)

(assert (=> d!463517 (>= lt!541785 0)))

(declare-fun e!1004907 () Int)

(assert (=> d!463517 (= lt!541785 e!1004907)))

(declare-fun c!253561 () Bool)

(assert (=> d!463517 (= c!253561 ((_ is Nil!16987) (toList!863 thiss!41797)))))

(assert (=> d!463517 (= (size!13783 (toList!863 thiss!41797)) lt!541785)))

(declare-fun b!1564692 () Bool)

(assert (=> b!1564692 (= e!1004907 0)))

(declare-fun b!1564693 () Bool)

(assert (=> b!1564693 (= e!1004907 (+ 1 (size!13783 (t!141684 (toList!863 thiss!41797)))))))

(assert (= (and d!463517 c!253561) b!1564692))

(assert (= (and d!463517 (not c!253561)) b!1564693))

(declare-fun m!1836305 () Bool)

(assert (=> b!1564693 m!1836305))

(assert (=> d!463507 d!463517))

(declare-fun d!463519 () Bool)

(assert (=> d!463519 (= (isEmpty!10183 (toList!863 thiss!41797)) ((_ is Nil!16987) (toList!863 thiss!41797)))))

(assert (=> d!463507 d!463519))

(declare-fun d!463521 () Bool)

(declare-fun intSize!2 (List!17057) (_ BitVec 32))

(assert (=> d!463521 (= (size!13784 thiss!41797) (intSize!2 (toList!863 thiss!41797)))))

(declare-fun bs!389541 () Bool)

(assert (= bs!389541 d!463521))

(declare-fun m!1836307 () Bool)

(assert (=> bs!389541 m!1836307))

(assert (=> b!1564674 d!463521))

(declare-fun tp!460779 () Bool)

(declare-fun e!1004908 () Bool)

(declare-fun b!1564694 () Bool)

(assert (=> b!1564694 (= e!1004908 (and tp_is_empty!7131 tp_is_empty!7133 tp!460779))))

(assert (=> b!1564681 (= tp!460775 e!1004908)))

(assert (= (and b!1564681 ((_ is Cons!16987) (t!141684 (toList!863 thiss!41797)))) b!1564694))

(check-sat (not b!1564693) (not d!463521) tp_is_empty!7133 (not d!463515) (not b!1564694) tp_is_empty!7131)
(check-sat)
