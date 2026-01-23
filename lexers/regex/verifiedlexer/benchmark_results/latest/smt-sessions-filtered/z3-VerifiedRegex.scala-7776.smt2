; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408630 () Bool)

(assert start!408630)

(declare-fun b!4264456 () Bool)

(declare-fun res!1752556 () Bool)

(declare-fun e!2647898 () Bool)

(assert (=> b!4264456 (=> (not res!1752556) (not e!2647898))))

(declare-datatypes ((B!2853 0))(
  ( (B!2854 (val!15256 Int)) )
))
(declare-datatypes ((List!47385 0))(
  ( (Nil!47261) (Cons!47261 (h!52681 B!2853) (t!353452 List!47385)) )
))
(declare-fun l1!1529 () List!47385)

(declare-fun b!25415 () B!2853)

(get-info :version)

(assert (=> b!4264456 (= res!1752556 (and (or (not ((_ is Cons!47261) l1!1529)) (not (= (h!52681 l1!1529) b!25415))) ((_ is Cons!47261) l1!1529)))))

(declare-fun b!4264457 () Bool)

(declare-fun res!1752555 () Bool)

(assert (=> b!4264457 (=> (not res!1752555) (not e!2647898))))

(declare-fun l2!1498 () List!47385)

(declare-fun contains!9782 (List!47385 B!2853) Bool)

(assert (=> b!4264457 (= res!1752555 (not (contains!9782 l2!1498 b!25415)))))

(declare-fun b!4264458 () Bool)

(assert (=> b!4264458 (= e!2647898 (contains!9782 (t!353452 l1!1529) b!25415))))

(declare-fun b!4264459 () Bool)

(declare-fun e!2647897 () Bool)

(declare-fun tp_is_empty!22921 () Bool)

(declare-fun tp!1307373 () Bool)

(assert (=> b!4264459 (= e!2647897 (and tp_is_empty!22921 tp!1307373))))

(declare-fun res!1752557 () Bool)

(assert (=> start!408630 (=> (not res!1752557) (not e!2647898))))

(assert (=> start!408630 (= res!1752557 (not (contains!9782 l1!1529 b!25415)))))

(assert (=> start!408630 e!2647898))

(assert (=> start!408630 e!2647897))

(assert (=> start!408630 tp_is_empty!22921))

(declare-fun e!2647896 () Bool)

(assert (=> start!408630 e!2647896))

(declare-fun b!4264460 () Bool)

(declare-fun tp!1307374 () Bool)

(assert (=> b!4264460 (= e!2647896 (and tp_is_empty!22921 tp!1307374))))

(assert (= (and start!408630 res!1752557) b!4264457))

(assert (= (and b!4264457 res!1752555) b!4264456))

(assert (= (and b!4264456 res!1752556) b!4264458))

(assert (= (and start!408630 ((_ is Cons!47261) l1!1529)) b!4264459))

(assert (= (and start!408630 ((_ is Cons!47261) l2!1498)) b!4264460))

(declare-fun m!4854757 () Bool)

(assert (=> b!4264457 m!4854757))

(declare-fun m!4854759 () Bool)

(assert (=> b!4264458 m!4854759))

(declare-fun m!4854761 () Bool)

(assert (=> start!408630 m!4854761))

(check-sat tp_is_empty!22921 (not b!4264458) (not b!4264457) (not b!4264460) (not start!408630) (not b!4264459))
(check-sat)
(get-model)

(declare-fun d!1256433 () Bool)

(declare-fun lt!1511407 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7461 (List!47385) (InoxSet B!2853))

(assert (=> d!1256433 (= lt!1511407 (select (content!7461 (t!353452 l1!1529)) b!25415))))

(declare-fun e!2647903 () Bool)

(assert (=> d!1256433 (= lt!1511407 e!2647903)))

(declare-fun res!1752563 () Bool)

(assert (=> d!1256433 (=> (not res!1752563) (not e!2647903))))

(assert (=> d!1256433 (= res!1752563 ((_ is Cons!47261) (t!353452 l1!1529)))))

(assert (=> d!1256433 (= (contains!9782 (t!353452 l1!1529) b!25415) lt!1511407)))

(declare-fun b!4264465 () Bool)

(declare-fun e!2647904 () Bool)

(assert (=> b!4264465 (= e!2647903 e!2647904)))

(declare-fun res!1752562 () Bool)

(assert (=> b!4264465 (=> res!1752562 e!2647904)))

(assert (=> b!4264465 (= res!1752562 (= (h!52681 (t!353452 l1!1529)) b!25415))))

(declare-fun b!4264466 () Bool)

(assert (=> b!4264466 (= e!2647904 (contains!9782 (t!353452 (t!353452 l1!1529)) b!25415))))

(assert (= (and d!1256433 res!1752563) b!4264465))

(assert (= (and b!4264465 (not res!1752562)) b!4264466))

(declare-fun m!4854763 () Bool)

(assert (=> d!1256433 m!4854763))

(declare-fun m!4854765 () Bool)

(assert (=> d!1256433 m!4854765))

(declare-fun m!4854767 () Bool)

(assert (=> b!4264466 m!4854767))

(assert (=> b!4264458 d!1256433))

(declare-fun d!1256437 () Bool)

(declare-fun lt!1511408 () Bool)

(assert (=> d!1256437 (= lt!1511408 (select (content!7461 l2!1498) b!25415))))

(declare-fun e!2647905 () Bool)

(assert (=> d!1256437 (= lt!1511408 e!2647905)))

(declare-fun res!1752565 () Bool)

(assert (=> d!1256437 (=> (not res!1752565) (not e!2647905))))

(assert (=> d!1256437 (= res!1752565 ((_ is Cons!47261) l2!1498))))

(assert (=> d!1256437 (= (contains!9782 l2!1498 b!25415) lt!1511408)))

(declare-fun b!4264467 () Bool)

(declare-fun e!2647906 () Bool)

(assert (=> b!4264467 (= e!2647905 e!2647906)))

(declare-fun res!1752564 () Bool)

(assert (=> b!4264467 (=> res!1752564 e!2647906)))

(assert (=> b!4264467 (= res!1752564 (= (h!52681 l2!1498) b!25415))))

(declare-fun b!4264468 () Bool)

(assert (=> b!4264468 (= e!2647906 (contains!9782 (t!353452 l2!1498) b!25415))))

(assert (= (and d!1256437 res!1752565) b!4264467))

(assert (= (and b!4264467 (not res!1752564)) b!4264468))

(declare-fun m!4854769 () Bool)

(assert (=> d!1256437 m!4854769))

(declare-fun m!4854771 () Bool)

(assert (=> d!1256437 m!4854771))

(declare-fun m!4854773 () Bool)

(assert (=> b!4264468 m!4854773))

(assert (=> b!4264457 d!1256437))

(declare-fun d!1256439 () Bool)

(declare-fun lt!1511411 () Bool)

(assert (=> d!1256439 (= lt!1511411 (select (content!7461 l1!1529) b!25415))))

(declare-fun e!2647909 () Bool)

(assert (=> d!1256439 (= lt!1511411 e!2647909)))

(declare-fun res!1752569 () Bool)

(assert (=> d!1256439 (=> (not res!1752569) (not e!2647909))))

(assert (=> d!1256439 (= res!1752569 ((_ is Cons!47261) l1!1529))))

(assert (=> d!1256439 (= (contains!9782 l1!1529 b!25415) lt!1511411)))

(declare-fun b!4264471 () Bool)

(declare-fun e!2647910 () Bool)

(assert (=> b!4264471 (= e!2647909 e!2647910)))

(declare-fun res!1752568 () Bool)

(assert (=> b!4264471 (=> res!1752568 e!2647910)))

(assert (=> b!4264471 (= res!1752568 (= (h!52681 l1!1529) b!25415))))

(declare-fun b!4264472 () Bool)

(assert (=> b!4264472 (= e!2647910 (contains!9782 (t!353452 l1!1529) b!25415))))

(assert (= (and d!1256439 res!1752569) b!4264471))

(assert (= (and b!4264471 (not res!1752568)) b!4264472))

(declare-fun m!4854775 () Bool)

(assert (=> d!1256439 m!4854775))

(declare-fun m!4854777 () Bool)

(assert (=> d!1256439 m!4854777))

(assert (=> b!4264472 m!4854759))

(assert (=> start!408630 d!1256439))

(declare-fun b!4264479 () Bool)

(declare-fun e!2647915 () Bool)

(declare-fun tp!1307377 () Bool)

(assert (=> b!4264479 (= e!2647915 (and tp_is_empty!22921 tp!1307377))))

(assert (=> b!4264459 (= tp!1307373 e!2647915)))

(assert (= (and b!4264459 ((_ is Cons!47261) (t!353452 l1!1529))) b!4264479))

(declare-fun b!4264480 () Bool)

(declare-fun e!2647916 () Bool)

(declare-fun tp!1307378 () Bool)

(assert (=> b!4264480 (= e!2647916 (and tp_is_empty!22921 tp!1307378))))

(assert (=> b!4264460 (= tp!1307374 e!2647916)))

(assert (= (and b!4264460 ((_ is Cons!47261) (t!353452 l2!1498))) b!4264480))

(check-sat (not d!1256439) tp_is_empty!22921 (not b!4264468) (not b!4264472) (not b!4264466) (not d!1256433) (not b!4264479) (not b!4264480) (not d!1256437))
(check-sat)
