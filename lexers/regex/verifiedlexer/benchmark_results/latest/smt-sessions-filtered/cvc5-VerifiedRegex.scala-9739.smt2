; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510470 () Bool)

(assert start!510470)

(declare-datatypes ((T!99270 0))(
  ( (T!99271 (val!22553 Int)) )
))
(declare-datatypes ((List!56152 0))(
  ( (Nil!56028) (Cons!56028 (h!62476 T!99270) (t!364776 List!56152)) )
))
(declare-datatypes ((IArray!29287 0))(
  ( (IArray!29288 (innerList!14701 List!56152)) )
))
(declare-datatypes ((Conc!14613 0))(
  ( (Node!14613 (left!40706 Conc!14613) (right!41036 Conc!14613) (csize!29456 Int) (cheight!14824 Int)) (Leaf!24353 (xs!17923 IArray!29287) (csize!29457 Int)) (Empty!14613) )
))
(declare-fun t!4585 () Conc!14613)

(declare-fun e!3049218 () Bool)

(declare-fun b!4878771 () Bool)

(declare-fun tp!1372773 () Bool)

(declare-fun tp!1372772 () Bool)

(declare-fun inv!71999 (Conc!14613) Bool)

(assert (=> b!4878771 (= e!3049218 (and (inv!71999 (left!40706 t!4585)) tp!1372773 (inv!71999 (right!41036 t!4585)) tp!1372772))))

(declare-fun b!4878772 () Bool)

(declare-fun e!3049219 () Bool)

(declare-fun inv!72000 (IArray!29287) Bool)

(assert (=> b!4878772 (= e!3049218 (and (inv!72000 (xs!17923 t!4585)) e!3049219))))

(declare-fun res!2082589 () Bool)

(declare-fun e!3049220 () Bool)

(assert (=> start!510470 (=> (not res!2082589) (not e!3049220))))

(declare-fun isBalanced!3975 (Conc!14613) Bool)

(assert (=> start!510470 (= res!2082589 (isBalanced!3975 t!4585))))

(assert (=> start!510470 e!3049220))

(assert (=> start!510470 (and (inv!71999 t!4585) e!3049218)))

(declare-fun tp_is_empty!35689 () Bool)

(assert (=> start!510470 tp_is_empty!35689))

(declare-fun b!4878770 () Bool)

(declare-fun v!5488 () T!99270)

(declare-fun fill!233 (Int T!99270) IArray!29287)

(assert (=> b!4878770 (= e!3049220 (not (isBalanced!3975 (Leaf!24353 (fill!233 1 v!5488) 1))))))

(declare-fun b!4878773 () Bool)

(declare-fun tp!1372774 () Bool)

(assert (=> b!4878773 (= e!3049219 tp!1372774)))

(assert (= (and start!510470 res!2082589) b!4878770))

(assert (= (and start!510470 (is-Node!14613 t!4585)) b!4878771))

(assert (= b!4878772 b!4878773))

(assert (= (and start!510470 (is-Leaf!24353 t!4585)) b!4878772))

(declare-fun m!5881688 () Bool)

(assert (=> b!4878771 m!5881688))

(declare-fun m!5881690 () Bool)

(assert (=> b!4878771 m!5881690))

(declare-fun m!5881692 () Bool)

(assert (=> b!4878772 m!5881692))

(declare-fun m!5881694 () Bool)

(assert (=> start!510470 m!5881694))

(declare-fun m!5881696 () Bool)

(assert (=> start!510470 m!5881696))

(declare-fun m!5881698 () Bool)

(assert (=> b!4878770 m!5881698))

(declare-fun m!5881700 () Bool)

(assert (=> b!4878770 m!5881700))

(push 1)

(assert (not b!4878773))

(assert (not start!510470))

(assert (not b!4878771))

(assert tp_is_empty!35689)

(assert (not b!4878772))

(assert (not b!4878770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567530 () Bool)

(declare-fun size!36955 (List!56152) Int)

(assert (=> d!1567530 (= (inv!72000 (xs!17923 t!4585)) (<= (size!36955 (innerList!14701 (xs!17923 t!4585))) 2147483647))))

(declare-fun bs!1175277 () Bool)

(assert (= bs!1175277 d!1567530))

(declare-fun m!5881716 () Bool)

(assert (=> bs!1175277 m!5881716))

(assert (=> b!4878772 d!1567530))

(declare-fun d!1567534 () Bool)

(declare-fun c!829773 () Bool)

(assert (=> d!1567534 (= c!829773 (is-Node!14613 (left!40706 t!4585)))))

(declare-fun e!3049234 () Bool)

(assert (=> d!1567534 (= (inv!71999 (left!40706 t!4585)) e!3049234)))

(declare-fun b!4878792 () Bool)

(declare-fun inv!72003 (Conc!14613) Bool)

(assert (=> b!4878792 (= e!3049234 (inv!72003 (left!40706 t!4585)))))

(declare-fun b!4878793 () Bool)

(declare-fun e!3049235 () Bool)

(assert (=> b!4878793 (= e!3049234 e!3049235)))

(declare-fun res!2082595 () Bool)

(assert (=> b!4878793 (= res!2082595 (not (is-Leaf!24353 (left!40706 t!4585))))))

(assert (=> b!4878793 (=> res!2082595 e!3049235)))

(declare-fun b!4878794 () Bool)

(declare-fun inv!72004 (Conc!14613) Bool)

(assert (=> b!4878794 (= e!3049235 (inv!72004 (left!40706 t!4585)))))

(assert (= (and d!1567534 c!829773) b!4878792))

(assert (= (and d!1567534 (not c!829773)) b!4878793))

(assert (= (and b!4878793 (not res!2082595)) b!4878794))

(declare-fun m!5881718 () Bool)

(assert (=> b!4878792 m!5881718))

(declare-fun m!5881720 () Bool)

(assert (=> b!4878794 m!5881720))

(assert (=> b!4878771 d!1567534))

(declare-fun d!1567536 () Bool)

(declare-fun c!829776 () Bool)

(assert (=> d!1567536 (= c!829776 (is-Node!14613 (right!41036 t!4585)))))

(declare-fun e!3049238 () Bool)

(assert (=> d!1567536 (= (inv!71999 (right!41036 t!4585)) e!3049238)))

(declare-fun b!4878799 () Bool)

(assert (=> b!4878799 (= e!3049238 (inv!72003 (right!41036 t!4585)))))

(declare-fun b!4878800 () Bool)

(declare-fun e!3049239 () Bool)

(assert (=> b!4878800 (= e!3049238 e!3049239)))

(declare-fun res!2082596 () Bool)

(assert (=> b!4878800 (= res!2082596 (not (is-Leaf!24353 (right!41036 t!4585))))))

(assert (=> b!4878800 (=> res!2082596 e!3049239)))

(declare-fun b!4878801 () Bool)

(assert (=> b!4878801 (= e!3049239 (inv!72004 (right!41036 t!4585)))))

(assert (= (and d!1567536 c!829776) b!4878799))

(assert (= (and d!1567536 (not c!829776)) b!4878800))

(assert (= (and b!4878800 (not res!2082596)) b!4878801))

(declare-fun m!5881722 () Bool)

(assert (=> b!4878799 m!5881722))

(declare-fun m!5881724 () Bool)

(assert (=> b!4878801 m!5881724))

(assert (=> b!4878771 d!1567536))

(declare-fun b!4878822 () Bool)

(declare-fun res!2082614 () Bool)

(declare-fun e!3049250 () Bool)

(assert (=> b!4878822 (=> (not res!2082614) (not e!3049250))))

(assert (=> b!4878822 (= res!2082614 (isBalanced!3975 (right!41036 (Leaf!24353 (fill!233 1 v!5488) 1))))))

(declare-fun b!4878823 () Bool)

(declare-fun res!2082615 () Bool)

(assert (=> b!4878823 (=> (not res!2082615) (not e!3049250))))

(declare-fun height!1946 (Conc!14613) Int)

(assert (=> b!4878823 (= res!2082615 (<= (- (height!1946 (left!40706 (Leaf!24353 (fill!233 1 v!5488) 1))) (height!1946 (right!41036 (Leaf!24353 (fill!233 1 v!5488) 1)))) 1))))

(declare-fun d!1567538 () Bool)

(declare-fun res!2082616 () Bool)

(declare-fun e!3049251 () Bool)

(assert (=> d!1567538 (=> res!2082616 e!3049251)))

(assert (=> d!1567538 (= res!2082616 (not (is-Node!14613 (Leaf!24353 (fill!233 1 v!5488) 1))))))

(assert (=> d!1567538 (= (isBalanced!3975 (Leaf!24353 (fill!233 1 v!5488) 1)) e!3049251)))

(declare-fun b!4878824 () Bool)

(assert (=> b!4878824 (= e!3049251 e!3049250)))

(declare-fun res!2082617 () Bool)

(assert (=> b!4878824 (=> (not res!2082617) (not e!3049250))))

(assert (=> b!4878824 (= res!2082617 (<= (- 1) (- (height!1946 (left!40706 (Leaf!24353 (fill!233 1 v!5488) 1))) (height!1946 (right!41036 (Leaf!24353 (fill!233 1 v!5488) 1))))))))

(declare-fun b!4878825 () Bool)

(declare-fun res!2082618 () Bool)

(assert (=> b!4878825 (=> (not res!2082618) (not e!3049250))))

(declare-fun isEmpty!30024 (Conc!14613) Bool)

(assert (=> b!4878825 (= res!2082618 (not (isEmpty!30024 (left!40706 (Leaf!24353 (fill!233 1 v!5488) 1)))))))

(declare-fun b!4878826 () Bool)

(assert (=> b!4878826 (= e!3049250 (not (isEmpty!30024 (right!41036 (Leaf!24353 (fill!233 1 v!5488) 1)))))))

(declare-fun b!4878827 () Bool)

(declare-fun res!2082613 () Bool)

(assert (=> b!4878827 (=> (not res!2082613) (not e!3049250))))

(assert (=> b!4878827 (= res!2082613 (isBalanced!3975 (left!40706 (Leaf!24353 (fill!233 1 v!5488) 1))))))

(assert (= (and d!1567538 (not res!2082616)) b!4878824))

(assert (= (and b!4878824 res!2082617) b!4878823))

(assert (= (and b!4878823 res!2082615) b!4878827))

(assert (= (and b!4878827 res!2082613) b!4878822))

(assert (= (and b!4878822 res!2082614) b!4878825))

(assert (= (and b!4878825 res!2082618) b!4878826))

(declare-fun m!5881734 () Bool)

(assert (=> b!4878822 m!5881734))

(declare-fun m!5881736 () Bool)

(assert (=> b!4878823 m!5881736))

(declare-fun m!5881738 () Bool)

(assert (=> b!4878823 m!5881738))

(assert (=> b!4878824 m!5881736))

(assert (=> b!4878824 m!5881738))

(declare-fun m!5881740 () Bool)

(assert (=> b!4878826 m!5881740))

(declare-fun m!5881742 () Bool)

(assert (=> b!4878827 m!5881742))

(declare-fun m!5881744 () Bool)

(assert (=> b!4878825 m!5881744))

(assert (=> b!4878770 d!1567538))

(declare-fun d!1567544 () Bool)

(declare-fun lt!1999071 () IArray!29287)

(declare-fun fill!235 (Int T!99270) List!56152)

(assert (=> d!1567544 (= lt!1999071 (IArray!29288 (fill!235 1 v!5488)))))

(declare-fun choose!35657 (Int T!99270) IArray!29287)

(assert (=> d!1567544 (= lt!1999071 (choose!35657 1 v!5488))))

(assert (=> d!1567544 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1567544 (= (fill!233 1 v!5488) lt!1999071)))

(declare-fun bs!1175278 () Bool)

(assert (= bs!1175278 d!1567544))

(declare-fun m!5881746 () Bool)

(assert (=> bs!1175278 m!5881746))

(declare-fun m!5881748 () Bool)

(assert (=> bs!1175278 m!5881748))

(assert (=> b!4878770 d!1567544))

(declare-fun b!4878836 () Bool)

(declare-fun res!2082628 () Bool)

(declare-fun e!3049256 () Bool)

(assert (=> b!4878836 (=> (not res!2082628) (not e!3049256))))

(assert (=> b!4878836 (= res!2082628 (isBalanced!3975 (right!41036 t!4585)))))

(declare-fun b!4878837 () Bool)

(declare-fun res!2082629 () Bool)

(assert (=> b!4878837 (=> (not res!2082629) (not e!3049256))))

(assert (=> b!4878837 (= res!2082629 (<= (- (height!1946 (left!40706 t!4585)) (height!1946 (right!41036 t!4585))) 1))))

(declare-fun d!1567546 () Bool)

(declare-fun res!2082630 () Bool)

(declare-fun e!3049257 () Bool)

(assert (=> d!1567546 (=> res!2082630 e!3049257)))

(assert (=> d!1567546 (= res!2082630 (not (is-Node!14613 t!4585)))))

(assert (=> d!1567546 (= (isBalanced!3975 t!4585) e!3049257)))

(declare-fun b!4878838 () Bool)

(assert (=> b!4878838 (= e!3049257 e!3049256)))

(declare-fun res!2082631 () Bool)

(assert (=> b!4878838 (=> (not res!2082631) (not e!3049256))))

(assert (=> b!4878838 (= res!2082631 (<= (- 1) (- (height!1946 (left!40706 t!4585)) (height!1946 (right!41036 t!4585)))))))

(declare-fun b!4878839 () Bool)

(declare-fun res!2082632 () Bool)

(assert (=> b!4878839 (=> (not res!2082632) (not e!3049256))))

(assert (=> b!4878839 (= res!2082632 (not (isEmpty!30024 (left!40706 t!4585))))))

(declare-fun b!4878840 () Bool)

(assert (=> b!4878840 (= e!3049256 (not (isEmpty!30024 (right!41036 t!4585))))))

(declare-fun b!4878841 () Bool)

(declare-fun res!2082627 () Bool)

(assert (=> b!4878841 (=> (not res!2082627) (not e!3049256))))

(assert (=> b!4878841 (= res!2082627 (isBalanced!3975 (left!40706 t!4585)))))

(assert (= (and d!1567546 (not res!2082630)) b!4878838))

(assert (= (and b!4878838 res!2082631) b!4878837))

(assert (= (and b!4878837 res!2082629) b!4878841))

(assert (= (and b!4878841 res!2082627) b!4878836))

(assert (= (and b!4878836 res!2082628) b!4878839))

(assert (= (and b!4878839 res!2082632) b!4878840))

(declare-fun m!5881750 () Bool)

(assert (=> b!4878836 m!5881750))

(declare-fun m!5881752 () Bool)

(assert (=> b!4878837 m!5881752))

(declare-fun m!5881754 () Bool)

(assert (=> b!4878837 m!5881754))

(assert (=> b!4878838 m!5881752))

(assert (=> b!4878838 m!5881754))

(declare-fun m!5881756 () Bool)

(assert (=> b!4878840 m!5881756))

(declare-fun m!5881758 () Bool)

(assert (=> b!4878841 m!5881758))

(declare-fun m!5881760 () Bool)

(assert (=> b!4878839 m!5881760))

(assert (=> start!510470 d!1567546))

(declare-fun d!1567548 () Bool)

(declare-fun c!829779 () Bool)

(assert (=> d!1567548 (= c!829779 (is-Node!14613 t!4585))))

(declare-fun e!3049258 () Bool)

(assert (=> d!1567548 (= (inv!71999 t!4585) e!3049258)))

(declare-fun b!4878846 () Bool)

(assert (=> b!4878846 (= e!3049258 (inv!72003 t!4585))))

(declare-fun b!4878847 () Bool)

(declare-fun e!3049259 () Bool)

(assert (=> b!4878847 (= e!3049258 e!3049259)))

(declare-fun res!2082637 () Bool)

(assert (=> b!4878847 (= res!2082637 (not (is-Leaf!24353 t!4585)))))

(assert (=> b!4878847 (=> res!2082637 e!3049259)))

(declare-fun b!4878848 () Bool)

(assert (=> b!4878848 (= e!3049259 (inv!72004 t!4585))))

(assert (= (and d!1567548 c!829779) b!4878846))

(assert (= (and d!1567548 (not c!829779)) b!4878847))

(assert (= (and b!4878847 (not res!2082637)) b!4878848))

(declare-fun m!5881762 () Bool)

(assert (=> b!4878846 m!5881762))

(declare-fun m!5881764 () Bool)

(assert (=> b!4878848 m!5881764))

(assert (=> start!510470 d!1567548))

(declare-fun b!4878853 () Bool)

(declare-fun e!3049262 () Bool)

(declare-fun tp!1372786 () Bool)

(assert (=> b!4878853 (= e!3049262 (and tp_is_empty!35689 tp!1372786))))

(assert (=> b!4878773 (= tp!1372774 e!3049262)))

(assert (= (and b!4878773 (is-Cons!56028 (innerList!14701 (xs!17923 t!4585)))) b!4878853))

(declare-fun tp!1372793 () Bool)

(declare-fun tp!1372794 () Bool)

(declare-fun b!4878862 () Bool)

(declare-fun e!3049267 () Bool)

(assert (=> b!4878862 (= e!3049267 (and (inv!71999 (left!40706 (left!40706 t!4585))) tp!1372794 (inv!71999 (right!41036 (left!40706 t!4585))) tp!1372793))))

(declare-fun b!4878864 () Bool)

(declare-fun e!3049268 () Bool)

(declare-fun tp!1372795 () Bool)

(assert (=> b!4878864 (= e!3049268 tp!1372795)))

(declare-fun b!4878863 () Bool)

(assert (=> b!4878863 (= e!3049267 (and (inv!72000 (xs!17923 (left!40706 t!4585))) e!3049268))))

(assert (=> b!4878771 (= tp!1372773 (and (inv!71999 (left!40706 t!4585)) e!3049267))))

(assert (= (and b!4878771 (is-Node!14613 (left!40706 t!4585))) b!4878862))

(assert (= b!4878863 b!4878864))

(assert (= (and b!4878771 (is-Leaf!24353 (left!40706 t!4585))) b!4878863))

(declare-fun m!5881766 () Bool)

(assert (=> b!4878862 m!5881766))

(declare-fun m!5881768 () Bool)

(assert (=> b!4878862 m!5881768))

(declare-fun m!5881770 () Bool)

(assert (=> b!4878863 m!5881770))

(assert (=> b!4878771 m!5881688))

(declare-fun tp!1372796 () Bool)

(declare-fun e!3049269 () Bool)

(declare-fun b!4878865 () Bool)

(declare-fun tp!1372797 () Bool)

(assert (=> b!4878865 (= e!3049269 (and (inv!71999 (left!40706 (right!41036 t!4585))) tp!1372797 (inv!71999 (right!41036 (right!41036 t!4585))) tp!1372796))))

(declare-fun b!4878867 () Bool)

(declare-fun e!3049270 () Bool)

(declare-fun tp!1372798 () Bool)

(assert (=> b!4878867 (= e!3049270 tp!1372798)))

(declare-fun b!4878866 () Bool)

(assert (=> b!4878866 (= e!3049269 (and (inv!72000 (xs!17923 (right!41036 t!4585))) e!3049270))))

(assert (=> b!4878771 (= tp!1372772 (and (inv!71999 (right!41036 t!4585)) e!3049269))))

(assert (= (and b!4878771 (is-Node!14613 (right!41036 t!4585))) b!4878865))

(assert (= b!4878866 b!4878867))

(assert (= (and b!4878771 (is-Leaf!24353 (right!41036 t!4585))) b!4878866))

(declare-fun m!5881772 () Bool)

(assert (=> b!4878865 m!5881772))

(declare-fun m!5881774 () Bool)

(assert (=> b!4878865 m!5881774))

(declare-fun m!5881776 () Bool)

(assert (=> b!4878866 m!5881776))

(assert (=> b!4878771 m!5881690))

(push 1)

(assert (not b!4878864))

(assert (not b!4878841))

(assert (not b!4878801))

(assert (not b!4878863))

(assert tp_is_empty!35689)

(assert (not b!4878827))

(assert (not b!4878867))

(assert (not b!4878840))

(assert (not d!1567544))

(assert (not b!4878826))

(assert (not b!4878838))

(assert (not b!4878865))

(assert (not b!4878825))

(assert (not b!4878866))

(assert (not b!4878792))

(assert (not b!4878837))

(assert (not b!4878823))

(assert (not b!4878836))

(assert (not b!4878771))

(assert (not b!4878824))

(assert (not b!4878853))

(assert (not b!4878848))

(assert (not b!4878799))

(assert (not d!1567530))

(assert (not b!4878839))

(assert (not b!4878822))

(assert (not b!4878794))

(assert (not b!4878862))

(assert (not b!4878846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

