; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536058 () Bool)

(assert start!536058)

(declare-fun res!2166091 () Bool)

(declare-fun e!3173398 () Bool)

(assert (=> start!536058 (=> (not res!2166091) (not e!3173398))))

(declare-fun i!589 () Int)

(assert (=> start!536058 (= res!2166091 (<= 0 i!589))))

(assert (=> start!536058 e!3173398))

(assert (=> start!536058 true))

(declare-datatypes ((T!105398 0))(
  ( (T!105399 (val!23692 Int)) )
))
(declare-datatypes ((List!58617 0))(
  ( (Nil!58493) (Cons!58493 (h!64941 T!105398) (t!371480 List!58617)) )
))
(declare-datatypes ((IArray!31277 0))(
  ( (IArray!31278 (innerList!15696 List!58617)) )
))
(declare-datatypes ((Conc!15608 0))(
  ( (Node!15608 (left!42884 Conc!15608) (right!43214 Conc!15608) (csize!31446 Int) (cheight!15819 Int)) (Leaf!25917 (xs!18990 IArray!31277) (csize!31447 Int)) (Empty!15608) )
))
(declare-datatypes ((BalanceConc!30406 0))(
  ( (BalanceConc!30407 (c!874276 Conc!15608)) )
))
(declare-fun thiss!5775 () BalanceConc!30406)

(declare-fun e!3173397 () Bool)

(declare-fun inv!77786 (BalanceConc!30406) Bool)

(assert (=> start!536058 (and (inv!77786 thiss!5775) e!3173397)))

(declare-fun b!5088198 () Bool)

(declare-fun res!2166092 () Bool)

(assert (=> b!5088198 (=> (not res!2166092) (not e!3173398))))

(declare-fun size!39150 (BalanceConc!30406) Int)

(assert (=> b!5088198 (= res!2166092 (< i!589 (size!39150 thiss!5775)))))

(declare-fun b!5088199 () Bool)

(declare-fun size!39151 (Conc!15608) Int)

(assert (=> b!5088199 (= e!3173398 (>= i!589 (size!39151 (c!874276 thiss!5775))))))

(declare-fun b!5088200 () Bool)

(declare-fun tp!1418519 () Bool)

(declare-fun inv!77787 (Conc!15608) Bool)

(assert (=> b!5088200 (= e!3173397 (and (inv!77787 (c!874276 thiss!5775)) tp!1418519))))

(assert (= (and start!536058 res!2166091) b!5088198))

(assert (= (and b!5088198 res!2166092) b!5088199))

(assert (= start!536058 b!5088200))

(declare-fun m!6146126 () Bool)

(assert (=> start!536058 m!6146126))

(declare-fun m!6146128 () Bool)

(assert (=> b!5088198 m!6146128))

(declare-fun m!6146130 () Bool)

(assert (=> b!5088199 m!6146130))

(declare-fun m!6146132 () Bool)

(assert (=> b!5088200 m!6146132))

(check-sat (not b!5088198) (not b!5088199) (not start!536058) (not b!5088200))
(check-sat)
(get-model)

(declare-fun d!1646967 () Bool)

(declare-fun lt!2092033 () Int)

(declare-fun size!39152 (List!58617) Int)

(declare-fun list!19049 (BalanceConc!30406) List!58617)

(assert (=> d!1646967 (= lt!2092033 (size!39152 (list!19049 thiss!5775)))))

(assert (=> d!1646967 (= lt!2092033 (size!39151 (c!874276 thiss!5775)))))

(assert (=> d!1646967 (= (size!39150 thiss!5775) lt!2092033)))

(declare-fun bs!1191026 () Bool)

(assert (= bs!1191026 d!1646967))

(declare-fun m!6146134 () Bool)

(assert (=> bs!1191026 m!6146134))

(assert (=> bs!1191026 m!6146134))

(declare-fun m!6146136 () Bool)

(assert (=> bs!1191026 m!6146136))

(assert (=> bs!1191026 m!6146130))

(assert (=> b!5088198 d!1646967))

(declare-fun d!1646969 () Bool)

(declare-fun lt!2092036 () Int)

(declare-fun list!19050 (Conc!15608) List!58617)

(assert (=> d!1646969 (= lt!2092036 (size!39152 (list!19050 (c!874276 thiss!5775))))))

(get-info :version)

(assert (=> d!1646969 (= lt!2092036 (ite ((_ is Empty!15608) (c!874276 thiss!5775)) 0 (ite ((_ is Leaf!25917) (c!874276 thiss!5775)) (csize!31447 (c!874276 thiss!5775)) (csize!31446 (c!874276 thiss!5775)))))))

(assert (=> d!1646969 (= (size!39151 (c!874276 thiss!5775)) lt!2092036)))

(declare-fun bs!1191027 () Bool)

(assert (= bs!1191027 d!1646969))

(declare-fun m!6146142 () Bool)

(assert (=> bs!1191027 m!6146142))

(assert (=> bs!1191027 m!6146142))

(declare-fun m!6146144 () Bool)

(assert (=> bs!1191027 m!6146144))

(assert (=> b!5088199 d!1646969))

(declare-fun d!1646973 () Bool)

(declare-fun isBalanced!4454 (Conc!15608) Bool)

(assert (=> d!1646973 (= (inv!77786 thiss!5775) (isBalanced!4454 (c!874276 thiss!5775)))))

(declare-fun bs!1191029 () Bool)

(assert (= bs!1191029 d!1646973))

(declare-fun m!6146150 () Bool)

(assert (=> bs!1191029 m!6146150))

(assert (=> start!536058 d!1646973))

(declare-fun d!1646977 () Bool)

(declare-fun c!874282 () Bool)

(assert (=> d!1646977 (= c!874282 ((_ is Node!15608) (c!874276 thiss!5775)))))

(declare-fun e!3173413 () Bool)

(assert (=> d!1646977 (= (inv!77787 (c!874276 thiss!5775)) e!3173413)))

(declare-fun b!5088224 () Bool)

(declare-fun inv!77790 (Conc!15608) Bool)

(assert (=> b!5088224 (= e!3173413 (inv!77790 (c!874276 thiss!5775)))))

(declare-fun b!5088225 () Bool)

(declare-fun e!3173414 () Bool)

(assert (=> b!5088225 (= e!3173413 e!3173414)))

(declare-fun res!2166098 () Bool)

(assert (=> b!5088225 (= res!2166098 (not ((_ is Leaf!25917) (c!874276 thiss!5775))))))

(assert (=> b!5088225 (=> res!2166098 e!3173414)))

(declare-fun b!5088226 () Bool)

(declare-fun inv!77791 (Conc!15608) Bool)

(assert (=> b!5088226 (= e!3173414 (inv!77791 (c!874276 thiss!5775)))))

(assert (= (and d!1646977 c!874282) b!5088224))

(assert (= (and d!1646977 (not c!874282)) b!5088225))

(assert (= (and b!5088225 (not res!2166098)) b!5088226))

(declare-fun m!6146158 () Bool)

(assert (=> b!5088224 m!6146158))

(declare-fun m!6146160 () Bool)

(assert (=> b!5088226 m!6146160))

(assert (=> b!5088200 d!1646977))

(declare-fun tp!1418535 () Bool)

(declare-fun e!3173421 () Bool)

(declare-fun tp!1418537 () Bool)

(declare-fun b!5088238 () Bool)

(assert (=> b!5088238 (= e!3173421 (and (inv!77787 (left!42884 (c!874276 thiss!5775))) tp!1418535 (inv!77787 (right!43214 (c!874276 thiss!5775))) tp!1418537))))

(declare-fun b!5088240 () Bool)

(declare-fun e!3173422 () Bool)

(declare-fun tp!1418536 () Bool)

(assert (=> b!5088240 (= e!3173422 tp!1418536)))

(declare-fun b!5088239 () Bool)

(declare-fun inv!77792 (IArray!31277) Bool)

(assert (=> b!5088239 (= e!3173421 (and (inv!77792 (xs!18990 (c!874276 thiss!5775))) e!3173422))))

(assert (=> b!5088200 (= tp!1418519 (and (inv!77787 (c!874276 thiss!5775)) e!3173421))))

(assert (= (and b!5088200 ((_ is Node!15608) (c!874276 thiss!5775))) b!5088238))

(assert (= b!5088239 b!5088240))

(assert (= (and b!5088200 ((_ is Leaf!25917) (c!874276 thiss!5775))) b!5088239))

(declare-fun m!6146168 () Bool)

(assert (=> b!5088238 m!6146168))

(declare-fun m!6146170 () Bool)

(assert (=> b!5088238 m!6146170))

(declare-fun m!6146172 () Bool)

(assert (=> b!5088239 m!6146172))

(assert (=> b!5088200 m!6146132))

(check-sat (not d!1646969) (not b!5088240) (not b!5088224) (not d!1646973) (not b!5088200) (not d!1646967) (not b!5088239) (not b!5088226) (not b!5088238))
(check-sat)
