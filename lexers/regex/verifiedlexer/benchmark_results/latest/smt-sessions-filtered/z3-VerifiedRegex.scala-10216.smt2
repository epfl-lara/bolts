; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533054 () Bool)

(assert start!533054)

(declare-fun b!5038440 () Bool)

(declare-fun res!2146715 () Bool)

(declare-fun e!3146800 () Bool)

(assert (=> b!5038440 (=> (not res!2146715) (not e!3146800))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!104138 0))(
  ( (T!104139 (val!23508 Int)) )
))
(declare-datatypes ((List!58418 0))(
  ( (Nil!58294) (Cons!58294 (h!64742 T!104138) (t!370941 List!58418)) )
))
(declare-datatypes ((IArray!31073 0))(
  ( (IArray!31074 (innerList!15594 List!58418)) )
))
(declare-datatypes ((Conc!15506 0))(
  ( (Node!15506 (left!42688 Conc!15506) (right!43018 Conc!15506) (csize!31242 Int) (cheight!15717 Int)) (Leaf!25723 (xs!18832 IArray!31073) (csize!31243 Int)) (Empty!15506) )
))
(declare-fun t!4198 () Conc!15506)

(declare-fun size!38885 (Conc!15506) Int)

(assert (=> b!5038440 (= res!2146715 (<= i!618 (size!38885 t!4198)))))

(declare-fun b!5038441 () Bool)

(declare-fun res!2146716 () Bool)

(assert (=> b!5038441 (=> (not res!2146716) (not e!3146800))))

(assert (=> b!5038441 (= res!2146716 (<= 0 i!618))))

(declare-fun res!2146714 () Bool)

(assert (=> start!533054 (=> (not res!2146714) (not e!3146800))))

(declare-fun isBalanced!4368 (Conc!15506) Bool)

(assert (=> start!533054 (= res!2146714 (isBalanced!4368 t!4198))))

(assert (=> start!533054 e!3146800))

(declare-fun e!3146799 () Bool)

(declare-fun inv!77117 (Conc!15506) Bool)

(assert (=> start!533054 (and (inv!77117 t!4198) e!3146799)))

(assert (=> start!533054 true))

(declare-fun tp!1410673 () Bool)

(declare-fun tp!1410674 () Bool)

(declare-fun b!5038442 () Bool)

(assert (=> b!5038442 (= e!3146799 (and (inv!77117 (left!42688 t!4198)) tp!1410673 (inv!77117 (right!43018 t!4198)) tp!1410674))))

(declare-fun b!5038443 () Bool)

(assert (=> b!5038443 (= e!3146800 (not (inv!77117 Empty!15506)))))

(declare-fun b!5038444 () Bool)

(declare-fun e!3146798 () Bool)

(declare-fun inv!77118 (IArray!31073) Bool)

(assert (=> b!5038444 (= e!3146799 (and (inv!77118 (xs!18832 t!4198)) e!3146798))))

(declare-fun b!5038445 () Bool)

(declare-fun tp!1410672 () Bool)

(assert (=> b!5038445 (= e!3146798 tp!1410672)))

(declare-fun b!5038446 () Bool)

(declare-fun res!2146717 () Bool)

(assert (=> b!5038446 (=> (not res!2146717) (not e!3146800))))

(get-info :version)

(assert (=> b!5038446 (= res!2146717 (and (not ((_ is Empty!15506) t!4198)) ((_ is Leaf!25723) t!4198) (<= i!618 0)))))

(assert (= (and start!533054 res!2146714) b!5038441))

(assert (= (and b!5038441 res!2146716) b!5038440))

(assert (= (and b!5038440 res!2146715) b!5038446))

(assert (= (and b!5038446 res!2146717) b!5038443))

(assert (= (and start!533054 ((_ is Node!15506) t!4198)) b!5038442))

(assert (= b!5038444 b!5038445))

(assert (= (and start!533054 ((_ is Leaf!25723) t!4198)) b!5038444))

(declare-fun m!6072190 () Bool)

(assert (=> start!533054 m!6072190))

(declare-fun m!6072192 () Bool)

(assert (=> start!533054 m!6072192))

(declare-fun m!6072194 () Bool)

(assert (=> b!5038440 m!6072194))

(declare-fun m!6072196 () Bool)

(assert (=> b!5038443 m!6072196))

(declare-fun m!6072198 () Bool)

(assert (=> b!5038442 m!6072198))

(declare-fun m!6072200 () Bool)

(assert (=> b!5038442 m!6072200))

(declare-fun m!6072202 () Bool)

(assert (=> b!5038444 m!6072202))

(check-sat (not b!5038443) (not b!5038442) (not b!5038440) (not start!533054) (not b!5038445) (not b!5038444))
(check-sat)
(get-model)

(declare-fun d!1620571 () Bool)

(declare-fun lt!2083998 () Int)

(declare-fun size!38887 (List!58418) Int)

(declare-fun list!18901 (Conc!15506) List!58418)

(assert (=> d!1620571 (= lt!2083998 (size!38887 (list!18901 t!4198)))))

(assert (=> d!1620571 (= lt!2083998 (ite ((_ is Empty!15506) t!4198) 0 (ite ((_ is Leaf!25723) t!4198) (csize!31243 t!4198) (csize!31242 t!4198))))))

(assert (=> d!1620571 (= (size!38885 t!4198) lt!2083998)))

(declare-fun bs!1188823 () Bool)

(assert (= bs!1188823 d!1620571))

(declare-fun m!6072208 () Bool)

(assert (=> bs!1188823 m!6072208))

(assert (=> bs!1188823 m!6072208))

(declare-fun m!6072210 () Bool)

(assert (=> bs!1188823 m!6072210))

(assert (=> b!5038440 d!1620571))

(declare-fun d!1620575 () Bool)

(declare-fun c!863164 () Bool)

(assert (=> d!1620575 (= c!863164 ((_ is Node!15506) Empty!15506))))

(declare-fun e!3146813 () Bool)

(assert (=> d!1620575 (= (inv!77117 Empty!15506) e!3146813)))

(declare-fun b!5038465 () Bool)

(declare-fun inv!77121 (Conc!15506) Bool)

(assert (=> b!5038465 (= e!3146813 (inv!77121 Empty!15506))))

(declare-fun b!5038466 () Bool)

(declare-fun e!3146814 () Bool)

(assert (=> b!5038466 (= e!3146813 e!3146814)))

(declare-fun res!2146724 () Bool)

(assert (=> b!5038466 (= res!2146724 (not ((_ is Leaf!25723) Empty!15506)))))

(assert (=> b!5038466 (=> res!2146724 e!3146814)))

(declare-fun b!5038467 () Bool)

(declare-fun inv!77122 (Conc!15506) Bool)

(assert (=> b!5038467 (= e!3146814 (inv!77122 Empty!15506))))

(assert (= (and d!1620575 c!863164) b!5038465))

(assert (= (and d!1620575 (not c!863164)) b!5038466))

(assert (= (and b!5038466 (not res!2146724)) b!5038467))

(declare-fun m!6072222 () Bool)

(assert (=> b!5038465 m!6072222))

(declare-fun m!6072224 () Bool)

(assert (=> b!5038467 m!6072224))

(assert (=> b!5038443 d!1620575))

(declare-fun b!5038498 () Bool)

(declare-fun res!2146758 () Bool)

(declare-fun e!3146826 () Bool)

(assert (=> b!5038498 (=> (not res!2146758) (not e!3146826))))

(declare-fun isEmpty!31523 (Conc!15506) Bool)

(assert (=> b!5038498 (= res!2146758 (not (isEmpty!31523 (left!42688 t!4198))))))

(declare-fun d!1620583 () Bool)

(declare-fun res!2146756 () Bool)

(declare-fun e!3146825 () Bool)

(assert (=> d!1620583 (=> res!2146756 e!3146825)))

(assert (=> d!1620583 (= res!2146756 (not ((_ is Node!15506) t!4198)))))

(assert (=> d!1620583 (= (isBalanced!4368 t!4198) e!3146825)))

(declare-fun b!5038499 () Bool)

(declare-fun res!2146760 () Bool)

(assert (=> b!5038499 (=> (not res!2146760) (not e!3146826))))

(assert (=> b!5038499 (= res!2146760 (isBalanced!4368 (right!43018 t!4198)))))

(declare-fun b!5038500 () Bool)

(declare-fun res!2146759 () Bool)

(assert (=> b!5038500 (=> (not res!2146759) (not e!3146826))))

(declare-fun height!2085 (Conc!15506) Int)

(assert (=> b!5038500 (= res!2146759 (<= (- (height!2085 (left!42688 t!4198)) (height!2085 (right!43018 t!4198))) 1))))

(declare-fun b!5038501 () Bool)

(assert (=> b!5038501 (= e!3146826 (not (isEmpty!31523 (right!43018 t!4198))))))

(declare-fun b!5038502 () Bool)

(declare-fun res!2146755 () Bool)

(assert (=> b!5038502 (=> (not res!2146755) (not e!3146826))))

(assert (=> b!5038502 (= res!2146755 (isBalanced!4368 (left!42688 t!4198)))))

(declare-fun b!5038503 () Bool)

(assert (=> b!5038503 (= e!3146825 e!3146826)))

(declare-fun res!2146757 () Bool)

(assert (=> b!5038503 (=> (not res!2146757) (not e!3146826))))

(assert (=> b!5038503 (= res!2146757 (<= (- 1) (- (height!2085 (left!42688 t!4198)) (height!2085 (right!43018 t!4198)))))))

(assert (= (and d!1620583 (not res!2146756)) b!5038503))

(assert (= (and b!5038503 res!2146757) b!5038500))

(assert (= (and b!5038500 res!2146759) b!5038502))

(assert (= (and b!5038502 res!2146755) b!5038499))

(assert (= (and b!5038499 res!2146760) b!5038498))

(assert (= (and b!5038498 res!2146758) b!5038501))

(declare-fun m!6072230 () Bool)

(assert (=> b!5038501 m!6072230))

(declare-fun m!6072232 () Bool)

(assert (=> b!5038498 m!6072232))

(declare-fun m!6072236 () Bool)

(assert (=> b!5038499 m!6072236))

(declare-fun m!6072240 () Bool)

(assert (=> b!5038500 m!6072240))

(declare-fun m!6072244 () Bool)

(assert (=> b!5038500 m!6072244))

(declare-fun m!6072248 () Bool)

(assert (=> b!5038502 m!6072248))

(assert (=> b!5038503 m!6072240))

(assert (=> b!5038503 m!6072244))

(assert (=> start!533054 d!1620583))

(declare-fun d!1620587 () Bool)

(declare-fun c!863166 () Bool)

(assert (=> d!1620587 (= c!863166 ((_ is Node!15506) t!4198))))

(declare-fun e!3146829 () Bool)

(assert (=> d!1620587 (= (inv!77117 t!4198) e!3146829)))

(declare-fun b!5038507 () Bool)

(assert (=> b!5038507 (= e!3146829 (inv!77121 t!4198))))

(declare-fun b!5038508 () Bool)

(declare-fun e!3146830 () Bool)

(assert (=> b!5038508 (= e!3146829 e!3146830)))

(declare-fun res!2146762 () Bool)

(assert (=> b!5038508 (= res!2146762 (not ((_ is Leaf!25723) t!4198)))))

(assert (=> b!5038508 (=> res!2146762 e!3146830)))

(declare-fun b!5038509 () Bool)

(assert (=> b!5038509 (= e!3146830 (inv!77122 t!4198))))

(assert (= (and d!1620587 c!863166) b!5038507))

(assert (= (and d!1620587 (not c!863166)) b!5038508))

(assert (= (and b!5038508 (not res!2146762)) b!5038509))

(declare-fun m!6072254 () Bool)

(assert (=> b!5038507 m!6072254))

(declare-fun m!6072256 () Bool)

(assert (=> b!5038509 m!6072256))

(assert (=> start!533054 d!1620587))

(declare-fun d!1620591 () Bool)

(assert (=> d!1620591 (= (inv!77118 (xs!18832 t!4198)) (<= (size!38887 (innerList!15594 (xs!18832 t!4198))) 2147483647))))

(declare-fun bs!1188825 () Bool)

(assert (= bs!1188825 d!1620591))

(declare-fun m!6072262 () Bool)

(assert (=> bs!1188825 m!6072262))

(assert (=> b!5038444 d!1620591))

(declare-fun d!1620593 () Bool)

(declare-fun c!863168 () Bool)

(assert (=> d!1620593 (= c!863168 ((_ is Node!15506) (left!42688 t!4198)))))

(declare-fun e!3146837 () Bool)

(assert (=> d!1620593 (= (inv!77117 (left!42688 t!4198)) e!3146837)))

(declare-fun b!5038521 () Bool)

(assert (=> b!5038521 (= e!3146837 (inv!77121 (left!42688 t!4198)))))

(declare-fun b!5038522 () Bool)

(declare-fun e!3146838 () Bool)

(assert (=> b!5038522 (= e!3146837 e!3146838)))

(declare-fun res!2146764 () Bool)

(assert (=> b!5038522 (= res!2146764 (not ((_ is Leaf!25723) (left!42688 t!4198))))))

(assert (=> b!5038522 (=> res!2146764 e!3146838)))

(declare-fun b!5038523 () Bool)

(assert (=> b!5038523 (= e!3146838 (inv!77122 (left!42688 t!4198)))))

(assert (= (and d!1620593 c!863168) b!5038521))

(assert (= (and d!1620593 (not c!863168)) b!5038522))

(assert (= (and b!5038522 (not res!2146764)) b!5038523))

(declare-fun m!6072264 () Bool)

(assert (=> b!5038521 m!6072264))

(declare-fun m!6072266 () Bool)

(assert (=> b!5038523 m!6072266))

(assert (=> b!5038442 d!1620593))

(declare-fun d!1620595 () Bool)

(declare-fun c!863169 () Bool)

(assert (=> d!1620595 (= c!863169 ((_ is Node!15506) (right!43018 t!4198)))))

(declare-fun e!3146839 () Bool)

(assert (=> d!1620595 (= (inv!77117 (right!43018 t!4198)) e!3146839)))

(declare-fun b!5038524 () Bool)

(assert (=> b!5038524 (= e!3146839 (inv!77121 (right!43018 t!4198)))))

(declare-fun b!5038525 () Bool)

(declare-fun e!3146840 () Bool)

(assert (=> b!5038525 (= e!3146839 e!3146840)))

(declare-fun res!2146765 () Bool)

(assert (=> b!5038525 (= res!2146765 (not ((_ is Leaf!25723) (right!43018 t!4198))))))

(assert (=> b!5038525 (=> res!2146765 e!3146840)))

(declare-fun b!5038526 () Bool)

(assert (=> b!5038526 (= e!3146840 (inv!77122 (right!43018 t!4198)))))

(assert (= (and d!1620595 c!863169) b!5038524))

(assert (= (and d!1620595 (not c!863169)) b!5038525))

(assert (= (and b!5038525 (not res!2146765)) b!5038526))

(declare-fun m!6072268 () Bool)

(assert (=> b!5038524 m!6072268))

(declare-fun m!6072270 () Bool)

(assert (=> b!5038526 m!6072270))

(assert (=> b!5038442 d!1620595))

(declare-fun b!5038531 () Bool)

(declare-fun e!3146843 () Bool)

(declare-fun tp_is_empty!36773 () Bool)

(declare-fun tp!1410683 () Bool)

(assert (=> b!5038531 (= e!3146843 (and tp_is_empty!36773 tp!1410683))))

(assert (=> b!5038445 (= tp!1410672 e!3146843)))

(assert (= (and b!5038445 ((_ is Cons!58294) (innerList!15594 (xs!18832 t!4198)))) b!5038531))

(declare-fun tp!1410701 () Bool)

(declare-fun e!3146855 () Bool)

(declare-fun tp!1410699 () Bool)

(declare-fun b!5038551 () Bool)

(assert (=> b!5038551 (= e!3146855 (and (inv!77117 (left!42688 (left!42688 t!4198))) tp!1410699 (inv!77117 (right!43018 (left!42688 t!4198))) tp!1410701))))

(declare-fun b!5038553 () Bool)

(declare-fun e!3146856 () Bool)

(declare-fun tp!1410700 () Bool)

(assert (=> b!5038553 (= e!3146856 tp!1410700)))

(declare-fun b!5038552 () Bool)

(assert (=> b!5038552 (= e!3146855 (and (inv!77118 (xs!18832 (left!42688 t!4198))) e!3146856))))

(assert (=> b!5038442 (= tp!1410673 (and (inv!77117 (left!42688 t!4198)) e!3146855))))

(assert (= (and b!5038442 ((_ is Node!15506) (left!42688 t!4198))) b!5038551))

(assert (= b!5038552 b!5038553))

(assert (= (and b!5038442 ((_ is Leaf!25723) (left!42688 t!4198))) b!5038552))

(declare-fun m!6072284 () Bool)

(assert (=> b!5038551 m!6072284))

(declare-fun m!6072286 () Bool)

(assert (=> b!5038551 m!6072286))

(declare-fun m!6072288 () Bool)

(assert (=> b!5038552 m!6072288))

(assert (=> b!5038442 m!6072198))

(declare-fun b!5038554 () Bool)

(declare-fun tp!1410702 () Bool)

(declare-fun e!3146857 () Bool)

(declare-fun tp!1410704 () Bool)

(assert (=> b!5038554 (= e!3146857 (and (inv!77117 (left!42688 (right!43018 t!4198))) tp!1410702 (inv!77117 (right!43018 (right!43018 t!4198))) tp!1410704))))

(declare-fun b!5038556 () Bool)

(declare-fun e!3146858 () Bool)

(declare-fun tp!1410703 () Bool)

(assert (=> b!5038556 (= e!3146858 tp!1410703)))

(declare-fun b!5038555 () Bool)

(assert (=> b!5038555 (= e!3146857 (and (inv!77118 (xs!18832 (right!43018 t!4198))) e!3146858))))

(assert (=> b!5038442 (= tp!1410674 (and (inv!77117 (right!43018 t!4198)) e!3146857))))

(assert (= (and b!5038442 ((_ is Node!15506) (right!43018 t!4198))) b!5038554))

(assert (= b!5038555 b!5038556))

(assert (= (and b!5038442 ((_ is Leaf!25723) (right!43018 t!4198))) b!5038555))

(declare-fun m!6072290 () Bool)

(assert (=> b!5038554 m!6072290))

(declare-fun m!6072292 () Bool)

(assert (=> b!5038554 m!6072292))

(declare-fun m!6072294 () Bool)

(assert (=> b!5038555 m!6072294))

(assert (=> b!5038442 m!6072200))

(check-sat (not b!5038523) (not b!5038467) (not b!5038526) (not b!5038465) (not b!5038442) (not b!5038531) (not b!5038553) (not b!5038556) (not b!5038502) (not b!5038498) (not b!5038555) (not b!5038524) (not b!5038503) (not b!5038507) (not b!5038500) (not b!5038554) (not b!5038501) (not b!5038551) tp_is_empty!36773 (not b!5038521) (not b!5038499) (not b!5038552) (not b!5038509) (not d!1620591) (not d!1620571))
(check-sat)
