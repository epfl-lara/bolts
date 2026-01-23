; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405154 () Bool)

(assert start!405154)

(declare-fun b!4234344 () Bool)

(declare-fun e!2629149 () Bool)

(declare-fun e!2629148 () Bool)

(assert (=> b!4234344 (= e!2629149 e!2629148)))

(declare-fun res!1741553 () Bool)

(assert (=> b!4234344 (=> (not res!1741553) (not e!2629148))))

(declare-fun lt!1505526 () Int)

(declare-datatypes ((B!2765 0))(
  ( (B!2766 (val!15084 Int)) )
))
(declare-fun e2!42 () B!2765)

(declare-datatypes ((List!46881 0))(
  ( (Nil!46757) (Cons!46757 (h!52177 B!2765) (t!349584 List!46881)) )
))
(declare-fun l!3106 () List!46881)

(declare-fun getIndex!900 (List!46881 B!2765) Int)

(assert (=> b!4234344 (= res!1741553 (= lt!1505526 (getIndex!900 l!3106 e2!42)))))

(declare-fun e1!42 () B!2765)

(assert (=> b!4234344 (= lt!1505526 (getIndex!900 l!3106 e1!42))))

(declare-fun b!4234345 () Bool)

(declare-fun res!1741554 () Bool)

(assert (=> b!4234345 (=> (not res!1741554) (not e!2629149))))

(declare-fun contains!9701 (List!46881 B!2765) Bool)

(assert (=> b!4234345 (= res!1741554 (contains!9701 l!3106 e2!42))))

(declare-fun b!4234346 () Bool)

(declare-fun e!2629150 () Bool)

(declare-fun tp_is_empty!22581 () Bool)

(declare-fun tp!1296604 () Bool)

(assert (=> b!4234346 (= e!2629150 (and tp_is_empty!22581 tp!1296604))))

(declare-fun b!4234347 () Bool)

(declare-fun tail!6826 (List!46881) List!46881)

(assert (=> b!4234347 (= e!2629148 (not (contains!9701 (tail!6826 l!3106) e1!42)))))

(declare-fun b!4234348 () Bool)

(declare-fun res!1741551 () Bool)

(assert (=> b!4234348 (=> (not res!1741551) (not e!2629148))))

(assert (=> b!4234348 (= res!1741551 (not (= lt!1505526 0)))))

(declare-fun res!1741552 () Bool)

(assert (=> start!405154 (=> (not res!1741552) (not e!2629149))))

(assert (=> start!405154 (= res!1741552 (contains!9701 l!3106 e1!42))))

(assert (=> start!405154 e!2629149))

(assert (=> start!405154 e!2629150))

(assert (=> start!405154 tp_is_empty!22581))

(assert (= (and start!405154 res!1741552) b!4234345))

(assert (= (and b!4234345 res!1741554) b!4234344))

(assert (= (and b!4234344 res!1741553) b!4234348))

(assert (= (and b!4234348 res!1741551) b!4234347))

(get-info :version)

(assert (= (and start!405154 ((_ is Cons!46757) l!3106)) b!4234346))

(declare-fun m!4820475 () Bool)

(assert (=> b!4234344 m!4820475))

(declare-fun m!4820477 () Bool)

(assert (=> b!4234344 m!4820477))

(declare-fun m!4820479 () Bool)

(assert (=> b!4234345 m!4820479))

(declare-fun m!4820481 () Bool)

(assert (=> b!4234347 m!4820481))

(assert (=> b!4234347 m!4820481))

(declare-fun m!4820483 () Bool)

(assert (=> b!4234347 m!4820483))

(declare-fun m!4820485 () Bool)

(assert (=> start!405154 m!4820485))

(check-sat (not b!4234346) tp_is_empty!22581 (not start!405154) (not b!4234344) (not b!4234347) (not b!4234345))
(check-sat)
(get-model)

(declare-fun d!1245970 () Bool)

(declare-fun lt!1505532 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7355 (List!46881) (InoxSet B!2765))

(assert (=> d!1245970 (= lt!1505532 (select (content!7355 l!3106) e2!42))))

(declare-fun e!2629161 () Bool)

(assert (=> d!1245970 (= lt!1505532 e!2629161)))

(declare-fun res!1741565 () Bool)

(assert (=> d!1245970 (=> (not res!1741565) (not e!2629161))))

(assert (=> d!1245970 (= res!1741565 ((_ is Cons!46757) l!3106))))

(assert (=> d!1245970 (= (contains!9701 l!3106 e2!42) lt!1505532)))

(declare-fun b!4234359 () Bool)

(declare-fun e!2629162 () Bool)

(assert (=> b!4234359 (= e!2629161 e!2629162)))

(declare-fun res!1741566 () Bool)

(assert (=> b!4234359 (=> res!1741566 e!2629162)))

(assert (=> b!4234359 (= res!1741566 (= (h!52177 l!3106) e2!42))))

(declare-fun b!4234360 () Bool)

(assert (=> b!4234360 (= e!2629162 (contains!9701 (t!349584 l!3106) e2!42))))

(assert (= (and d!1245970 res!1741565) b!4234359))

(assert (= (and b!4234359 (not res!1741566)) b!4234360))

(declare-fun m!4820493 () Bool)

(assert (=> d!1245970 m!4820493))

(declare-fun m!4820495 () Bool)

(assert (=> d!1245970 m!4820495))

(declare-fun m!4820497 () Bool)

(assert (=> b!4234360 m!4820497))

(assert (=> b!4234345 d!1245970))

(declare-fun b!4234380 () Bool)

(declare-fun e!2629175 () Int)

(declare-fun e!2629176 () Int)

(assert (=> b!4234380 (= e!2629175 e!2629176)))

(declare-fun c!719781 () Bool)

(assert (=> b!4234380 (= c!719781 (and ((_ is Cons!46757) l!3106) (not (= (h!52177 l!3106) e2!42))))))

(declare-fun b!4234379 () Bool)

(assert (=> b!4234379 (= e!2629175 0)))

(declare-fun d!1245974 () Bool)

(declare-fun lt!1505538 () Int)

(assert (=> d!1245974 (>= lt!1505538 0)))

(assert (=> d!1245974 (= lt!1505538 e!2629175)))

(declare-fun c!719780 () Bool)

(assert (=> d!1245974 (= c!719780 (and ((_ is Cons!46757) l!3106) (= (h!52177 l!3106) e2!42)))))

(assert (=> d!1245974 (contains!9701 l!3106 e2!42)))

(assert (=> d!1245974 (= (getIndex!900 l!3106 e2!42) lt!1505538)))

(declare-fun b!4234381 () Bool)

(assert (=> b!4234381 (= e!2629176 (+ 1 (getIndex!900 (t!349584 l!3106) e2!42)))))

(declare-fun b!4234382 () Bool)

(assert (=> b!4234382 (= e!2629176 (- 1))))

(assert (= (and d!1245974 c!719780) b!4234379))

(assert (= (and d!1245974 (not c!719780)) b!4234380))

(assert (= (and b!4234380 c!719781) b!4234381))

(assert (= (and b!4234380 (not c!719781)) b!4234382))

(assert (=> d!1245974 m!4820479))

(declare-fun m!4820505 () Bool)

(assert (=> b!4234381 m!4820505))

(assert (=> b!4234344 d!1245974))

(declare-fun b!4234384 () Bool)

(declare-fun e!2629177 () Int)

(declare-fun e!2629178 () Int)

(assert (=> b!4234384 (= e!2629177 e!2629178)))

(declare-fun c!719783 () Bool)

(assert (=> b!4234384 (= c!719783 (and ((_ is Cons!46757) l!3106) (not (= (h!52177 l!3106) e1!42))))))

(declare-fun b!4234383 () Bool)

(assert (=> b!4234383 (= e!2629177 0)))

(declare-fun d!1245980 () Bool)

(declare-fun lt!1505539 () Int)

(assert (=> d!1245980 (>= lt!1505539 0)))

(assert (=> d!1245980 (= lt!1505539 e!2629177)))

(declare-fun c!719782 () Bool)

(assert (=> d!1245980 (= c!719782 (and ((_ is Cons!46757) l!3106) (= (h!52177 l!3106) e1!42)))))

(assert (=> d!1245980 (contains!9701 l!3106 e1!42)))

(assert (=> d!1245980 (= (getIndex!900 l!3106 e1!42) lt!1505539)))

(declare-fun b!4234385 () Bool)

(assert (=> b!4234385 (= e!2629178 (+ 1 (getIndex!900 (t!349584 l!3106) e1!42)))))

(declare-fun b!4234386 () Bool)

(assert (=> b!4234386 (= e!2629178 (- 1))))

(assert (= (and d!1245980 c!719782) b!4234383))

(assert (= (and d!1245980 (not c!719782)) b!4234384))

(assert (= (and b!4234384 c!719783) b!4234385))

(assert (= (and b!4234384 (not c!719783)) b!4234386))

(assert (=> d!1245980 m!4820485))

(declare-fun m!4820507 () Bool)

(assert (=> b!4234385 m!4820507))

(assert (=> b!4234344 d!1245980))

(declare-fun d!1245982 () Bool)

(declare-fun lt!1505541 () Bool)

(assert (=> d!1245982 (= lt!1505541 (select (content!7355 (tail!6826 l!3106)) e1!42))))

(declare-fun e!2629181 () Bool)

(assert (=> d!1245982 (= lt!1505541 e!2629181)))

(declare-fun res!1741569 () Bool)

(assert (=> d!1245982 (=> (not res!1741569) (not e!2629181))))

(assert (=> d!1245982 (= res!1741569 ((_ is Cons!46757) (tail!6826 l!3106)))))

(assert (=> d!1245982 (= (contains!9701 (tail!6826 l!3106) e1!42) lt!1505541)))

(declare-fun b!4234391 () Bool)

(declare-fun e!2629182 () Bool)

(assert (=> b!4234391 (= e!2629181 e!2629182)))

(declare-fun res!1741570 () Bool)

(assert (=> b!4234391 (=> res!1741570 e!2629182)))

(assert (=> b!4234391 (= res!1741570 (= (h!52177 (tail!6826 l!3106)) e1!42))))

(declare-fun b!4234392 () Bool)

(assert (=> b!4234392 (= e!2629182 (contains!9701 (t!349584 (tail!6826 l!3106)) e1!42))))

(assert (= (and d!1245982 res!1741569) b!4234391))

(assert (= (and b!4234391 (not res!1741570)) b!4234392))

(assert (=> d!1245982 m!4820481))

(declare-fun m!4820511 () Bool)

(assert (=> d!1245982 m!4820511))

(declare-fun m!4820513 () Bool)

(assert (=> d!1245982 m!4820513))

(declare-fun m!4820515 () Bool)

(assert (=> b!4234392 m!4820515))

(assert (=> b!4234347 d!1245982))

(declare-fun d!1245986 () Bool)

(assert (=> d!1245986 (= (tail!6826 l!3106) (t!349584 l!3106))))

(assert (=> b!4234347 d!1245986))

(declare-fun d!1245990 () Bool)

(declare-fun lt!1505544 () Bool)

(assert (=> d!1245990 (= lt!1505544 (select (content!7355 l!3106) e1!42))))

(declare-fun e!2629189 () Bool)

(assert (=> d!1245990 (= lt!1505544 e!2629189)))

(declare-fun res!1741573 () Bool)

(assert (=> d!1245990 (=> (not res!1741573) (not e!2629189))))

(assert (=> d!1245990 (= res!1741573 ((_ is Cons!46757) l!3106))))

(assert (=> d!1245990 (= (contains!9701 l!3106 e1!42) lt!1505544)))

(declare-fun b!4234403 () Bool)

(declare-fun e!2629190 () Bool)

(assert (=> b!4234403 (= e!2629189 e!2629190)))

(declare-fun res!1741574 () Bool)

(assert (=> b!4234403 (=> res!1741574 e!2629190)))

(assert (=> b!4234403 (= res!1741574 (= (h!52177 l!3106) e1!42))))

(declare-fun b!4234404 () Bool)

(assert (=> b!4234404 (= e!2629190 (contains!9701 (t!349584 l!3106) e1!42))))

(assert (= (and d!1245990 res!1741573) b!4234403))

(assert (= (and b!4234403 (not res!1741574)) b!4234404))

(assert (=> d!1245990 m!4820493))

(declare-fun m!4820523 () Bool)

(assert (=> d!1245990 m!4820523))

(declare-fun m!4820525 () Bool)

(assert (=> b!4234404 m!4820525))

(assert (=> start!405154 d!1245990))

(declare-fun b!4234410 () Bool)

(declare-fun e!2629194 () Bool)

(declare-fun tp!1296610 () Bool)

(assert (=> b!4234410 (= e!2629194 (and tp_is_empty!22581 tp!1296610))))

(assert (=> b!4234346 (= tp!1296604 e!2629194)))

(assert (= (and b!4234346 ((_ is Cons!46757) (t!349584 l!3106))) b!4234410))

(check-sat (not d!1245990) tp_is_empty!22581 (not d!1245982) (not b!4234381) (not d!1245970) (not b!4234360) (not b!4234385) (not d!1245980) (not b!4234392) (not b!4234410) (not b!4234404) (not d!1245974))
(check-sat)
