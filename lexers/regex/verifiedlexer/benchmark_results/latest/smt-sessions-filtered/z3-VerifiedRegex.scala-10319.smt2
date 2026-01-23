; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536378 () Bool)

(assert start!536378)

(declare-fun b!5090460 () Bool)

(declare-fun res!2166684 () Bool)

(declare-fun e!3174678 () Bool)

(assert (=> b!5090460 (=> (not res!2166684) (not e!3174678))))

(declare-fun i!607 () Int)

(declare-datatypes ((T!105552 0))(
  ( (T!105553 (val!23714 Int)) )
))
(declare-datatypes ((List!58639 0))(
  ( (Nil!58515) (Cons!58515 (h!64963 T!105552) (t!371542 List!58639)) )
))
(declare-datatypes ((IArray!31321 0))(
  ( (IArray!31322 (innerList!15718 List!58639)) )
))
(declare-datatypes ((Conc!15630 0))(
  ( (Node!15630 (left!42917 Conc!15630) (right!43247 Conc!15630) (csize!31490 Int) (cheight!15841 Int)) (Leaf!25950 (xs!19012 IArray!31321) (csize!31491 Int)) (Empty!15630) )
))
(declare-fun t!3643 () Conc!15630)

(declare-fun size!39201 (Conc!15630) Int)

(assert (=> b!5090460 (= res!2166684 (< i!607 (size!39201 t!3643)))))

(declare-fun b!5090461 () Bool)

(get-info :version)

(assert (=> b!5090461 (= e!3174678 (and ((_ is Leaf!25950) t!3643) (or (< i!607 0) (>= i!607 (csize!31491 t!3643)))))))

(declare-fun res!2166683 () Bool)

(assert (=> start!536378 (=> (not res!2166683) (not e!3174678))))

(assert (=> start!536378 (= res!2166683 (<= 0 i!607))))

(assert (=> start!536378 e!3174678))

(assert (=> start!536378 true))

(declare-fun e!3174679 () Bool)

(declare-fun inv!77905 (Conc!15630) Bool)

(assert (=> start!536378 (and (inv!77905 t!3643) e!3174679)))

(declare-fun b!5090462 () Bool)

(declare-fun e!3174680 () Bool)

(declare-fun tp!1419078 () Bool)

(assert (=> b!5090462 (= e!3174680 tp!1419078)))

(declare-fun tp!1419079 () Bool)

(declare-fun tp!1419077 () Bool)

(declare-fun b!5090463 () Bool)

(assert (=> b!5090463 (= e!3174679 (and (inv!77905 (left!42917 t!3643)) tp!1419079 (inv!77905 (right!43247 t!3643)) tp!1419077))))

(declare-fun b!5090464 () Bool)

(declare-fun inv!77906 (IArray!31321) Bool)

(assert (=> b!5090464 (= e!3174679 (and (inv!77906 (xs!19012 t!3643)) e!3174680))))

(assert (= (and start!536378 res!2166683) b!5090460))

(assert (= (and b!5090460 res!2166684) b!5090461))

(assert (= (and start!536378 ((_ is Node!15630) t!3643)) b!5090463))

(assert (= b!5090464 b!5090462))

(assert (= (and start!536378 ((_ is Leaf!25950) t!3643)) b!5090464))

(declare-fun m!6148556 () Bool)

(assert (=> b!5090460 m!6148556))

(declare-fun m!6148558 () Bool)

(assert (=> start!536378 m!6148558))

(declare-fun m!6148560 () Bool)

(assert (=> b!5090463 m!6148560))

(declare-fun m!6148562 () Bool)

(assert (=> b!5090463 m!6148562))

(declare-fun m!6148564 () Bool)

(assert (=> b!5090464 m!6148564))

(check-sat (not b!5090464) (not b!5090463) (not start!536378) (not b!5090462) (not b!5090460))
(check-sat)
(get-model)

(declare-fun d!1647784 () Bool)

(declare-fun size!39203 (List!58639) Int)

(assert (=> d!1647784 (= (inv!77906 (xs!19012 t!3643)) (<= (size!39203 (innerList!15718 (xs!19012 t!3643))) 2147483647))))

(declare-fun bs!1191134 () Bool)

(assert (= bs!1191134 d!1647784))

(declare-fun m!6148566 () Bool)

(assert (=> bs!1191134 m!6148566))

(assert (=> b!5090464 d!1647784))

(declare-fun d!1647788 () Bool)

(declare-fun lt!2092390 () Int)

(declare-fun list!19092 (Conc!15630) List!58639)

(assert (=> d!1647788 (= lt!2092390 (size!39203 (list!19092 t!3643)))))

(assert (=> d!1647788 (= lt!2092390 (ite ((_ is Empty!15630) t!3643) 0 (ite ((_ is Leaf!25950) t!3643) (csize!31491 t!3643) (csize!31490 t!3643))))))

(assert (=> d!1647788 (= (size!39201 t!3643) lt!2092390)))

(declare-fun bs!1191136 () Bool)

(assert (= bs!1191136 d!1647788))

(declare-fun m!6148572 () Bool)

(assert (=> bs!1191136 m!6148572))

(assert (=> bs!1191136 m!6148572))

(declare-fun m!6148574 () Bool)

(assert (=> bs!1191136 m!6148574))

(assert (=> b!5090460 d!1647788))

(declare-fun d!1647792 () Bool)

(declare-fun c!874809 () Bool)

(assert (=> d!1647792 (= c!874809 ((_ is Node!15630) (left!42917 t!3643)))))

(declare-fun e!3174693 () Bool)

(assert (=> d!1647792 (= (inv!77905 (left!42917 t!3643)) e!3174693)))

(declare-fun b!5090483 () Bool)

(declare-fun inv!77908 (Conc!15630) Bool)

(assert (=> b!5090483 (= e!3174693 (inv!77908 (left!42917 t!3643)))))

(declare-fun b!5090484 () Bool)

(declare-fun e!3174694 () Bool)

(assert (=> b!5090484 (= e!3174693 e!3174694)))

(declare-fun res!2166691 () Bool)

(assert (=> b!5090484 (= res!2166691 (not ((_ is Leaf!25950) (left!42917 t!3643))))))

(assert (=> b!5090484 (=> res!2166691 e!3174694)))

(declare-fun b!5090485 () Bool)

(declare-fun inv!77910 (Conc!15630) Bool)

(assert (=> b!5090485 (= e!3174694 (inv!77910 (left!42917 t!3643)))))

(assert (= (and d!1647792 c!874809) b!5090483))

(assert (= (and d!1647792 (not c!874809)) b!5090484))

(assert (= (and b!5090484 (not res!2166691)) b!5090485))

(declare-fun m!6148584 () Bool)

(assert (=> b!5090483 m!6148584))

(declare-fun m!6148586 () Bool)

(assert (=> b!5090485 m!6148586))

(assert (=> b!5090463 d!1647792))

(declare-fun d!1647798 () Bool)

(declare-fun c!874810 () Bool)

(assert (=> d!1647798 (= c!874810 ((_ is Node!15630) (right!43247 t!3643)))))

(declare-fun e!3174695 () Bool)

(assert (=> d!1647798 (= (inv!77905 (right!43247 t!3643)) e!3174695)))

(declare-fun b!5090486 () Bool)

(assert (=> b!5090486 (= e!3174695 (inv!77908 (right!43247 t!3643)))))

(declare-fun b!5090487 () Bool)

(declare-fun e!3174696 () Bool)

(assert (=> b!5090487 (= e!3174695 e!3174696)))

(declare-fun res!2166692 () Bool)

(assert (=> b!5090487 (= res!2166692 (not ((_ is Leaf!25950) (right!43247 t!3643))))))

(assert (=> b!5090487 (=> res!2166692 e!3174696)))

(declare-fun b!5090488 () Bool)

(assert (=> b!5090488 (= e!3174696 (inv!77910 (right!43247 t!3643)))))

(assert (= (and d!1647798 c!874810) b!5090486))

(assert (= (and d!1647798 (not c!874810)) b!5090487))

(assert (= (and b!5090487 (not res!2166692)) b!5090488))

(declare-fun m!6148590 () Bool)

(assert (=> b!5090486 m!6148590))

(declare-fun m!6148594 () Bool)

(assert (=> b!5090488 m!6148594))

(assert (=> b!5090463 d!1647798))

(declare-fun d!1647802 () Bool)

(declare-fun c!874812 () Bool)

(assert (=> d!1647802 (= c!874812 ((_ is Node!15630) t!3643))))

(declare-fun e!3174699 () Bool)

(assert (=> d!1647802 (= (inv!77905 t!3643) e!3174699)))

(declare-fun b!5090492 () Bool)

(assert (=> b!5090492 (= e!3174699 (inv!77908 t!3643))))

(declare-fun b!5090493 () Bool)

(declare-fun e!3174700 () Bool)

(assert (=> b!5090493 (= e!3174699 e!3174700)))

(declare-fun res!2166694 () Bool)

(assert (=> b!5090493 (= res!2166694 (not ((_ is Leaf!25950) t!3643)))))

(assert (=> b!5090493 (=> res!2166694 e!3174700)))

(declare-fun b!5090494 () Bool)

(assert (=> b!5090494 (= e!3174700 (inv!77910 t!3643))))

(assert (= (and d!1647802 c!874812) b!5090492))

(assert (= (and d!1647802 (not c!874812)) b!5090493))

(assert (= (and b!5090493 (not res!2166694)) b!5090494))

(declare-fun m!6148598 () Bool)

(assert (=> b!5090492 m!6148598))

(declare-fun m!6148600 () Bool)

(assert (=> b!5090494 m!6148600))

(assert (=> start!536378 d!1647802))

(declare-fun b!5090507 () Bool)

(declare-fun e!3174707 () Bool)

(declare-fun tp_is_empty!37137 () Bool)

(declare-fun tp!1419088 () Bool)

(assert (=> b!5090507 (= e!3174707 (and tp_is_empty!37137 tp!1419088))))

(assert (=> b!5090462 (= tp!1419078 e!3174707)))

(assert (= (and b!5090462 ((_ is Cons!58515) (innerList!15718 (xs!19012 t!3643)))) b!5090507))

(declare-fun e!3174718 () Bool)

(declare-fun b!5090526 () Bool)

(declare-fun tp!1419101 () Bool)

(declare-fun tp!1419103 () Bool)

(assert (=> b!5090526 (= e!3174718 (and (inv!77905 (left!42917 (left!42917 t!3643))) tp!1419101 (inv!77905 (right!43247 (left!42917 t!3643))) tp!1419103))))

(declare-fun b!5090528 () Bool)

(declare-fun e!3174719 () Bool)

(declare-fun tp!1419102 () Bool)

(assert (=> b!5090528 (= e!3174719 tp!1419102)))

(declare-fun b!5090527 () Bool)

(assert (=> b!5090527 (= e!3174718 (and (inv!77906 (xs!19012 (left!42917 t!3643))) e!3174719))))

(assert (=> b!5090463 (= tp!1419079 (and (inv!77905 (left!42917 t!3643)) e!3174718))))

(assert (= (and b!5090463 ((_ is Node!15630) (left!42917 t!3643))) b!5090526))

(assert (= b!5090527 b!5090528))

(assert (= (and b!5090463 ((_ is Leaf!25950) (left!42917 t!3643))) b!5090527))

(declare-fun m!6148614 () Bool)

(assert (=> b!5090526 m!6148614))

(declare-fun m!6148616 () Bool)

(assert (=> b!5090526 m!6148616))

(declare-fun m!6148618 () Bool)

(assert (=> b!5090527 m!6148618))

(assert (=> b!5090463 m!6148560))

(declare-fun tp!1419107 () Bool)

(declare-fun b!5090530 () Bool)

(declare-fun tp!1419109 () Bool)

(declare-fun e!3174721 () Bool)

(assert (=> b!5090530 (= e!3174721 (and (inv!77905 (left!42917 (right!43247 t!3643))) tp!1419107 (inv!77905 (right!43247 (right!43247 t!3643))) tp!1419109))))

(declare-fun b!5090532 () Bool)

(declare-fun e!3174722 () Bool)

(declare-fun tp!1419108 () Bool)

(assert (=> b!5090532 (= e!3174722 tp!1419108)))

(declare-fun b!5090531 () Bool)

(assert (=> b!5090531 (= e!3174721 (and (inv!77906 (xs!19012 (right!43247 t!3643))) e!3174722))))

(assert (=> b!5090463 (= tp!1419077 (and (inv!77905 (right!43247 t!3643)) e!3174721))))

(assert (= (and b!5090463 ((_ is Node!15630) (right!43247 t!3643))) b!5090530))

(assert (= b!5090531 b!5090532))

(assert (= (and b!5090463 ((_ is Leaf!25950) (right!43247 t!3643))) b!5090531))

(declare-fun m!6148620 () Bool)

(assert (=> b!5090530 m!6148620))

(declare-fun m!6148622 () Bool)

(assert (=> b!5090530 m!6148622))

(declare-fun m!6148624 () Bool)

(assert (=> b!5090531 m!6148624))

(assert (=> b!5090463 m!6148562))

(check-sat (not b!5090507) (not b!5090532) (not d!1647784) tp_is_empty!37137 (not b!5090463) (not b!5090483) (not b!5090488) (not d!1647788) (not b!5090485) (not b!5090527) (not b!5090531) (not b!5090492) (not b!5090494) (not b!5090526) (not b!5090530) (not b!5090486) (not b!5090528))
(check-sat)
