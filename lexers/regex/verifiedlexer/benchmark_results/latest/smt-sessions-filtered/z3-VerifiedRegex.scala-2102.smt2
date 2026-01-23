; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106304 () Bool)

(assert start!106304)

(declare-fun b!1195104 () Bool)

(declare-fun e!767736 () Bool)

(declare-fun tp!340471 () Bool)

(assert (=> b!1195104 (= e!767736 tp!340471)))

(declare-fun b!1195105 () Bool)

(declare-fun res!539410 () Bool)

(declare-fun e!767738 () Bool)

(assert (=> b!1195105 (=> (not res!539410) (not e!767738))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> b!1195105 (= res!539410 (= from!553 until!31))))

(declare-fun res!539412 () Bool)

(assert (=> start!106304 (=> (not res!539412) (not e!767738))))

(assert (=> start!106304 (= res!539412 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106304 e!767738))

(assert (=> start!106304 true))

(declare-datatypes ((T!21642 0))(
  ( (T!21643 (val!3868 Int)) )
))
(declare-datatypes ((List!12047 0))(
  ( (Nil!12023) (Cons!12023 (h!17424 T!21642) (t!112343 List!12047)) )
))
(declare-datatypes ((IArray!7917 0))(
  ( (IArray!7918 (innerList!4016 List!12047)) )
))
(declare-datatypes ((Conc!3956 0))(
  ( (Node!3956 (left!10482 Conc!3956) (right!10812 Conc!3956) (csize!8142 Int) (cheight!4167 Int)) (Leaf!6059 (xs!6663 IArray!7917) (csize!8143 Int)) (Empty!3956) )
))
(declare-fun t!4115 () Conc!3956)

(declare-fun e!767737 () Bool)

(declare-fun inv!16013 (Conc!3956) Bool)

(assert (=> start!106304 (and (inv!16013 t!4115) e!767737)))

(declare-fun b!1195106 () Bool)

(declare-fun tp!340473 () Bool)

(declare-fun tp!340472 () Bool)

(assert (=> b!1195106 (= e!767737 (and (inv!16013 (left!10482 t!4115)) tp!340472 (inv!16013 (right!10812 t!4115)) tp!340473))))

(declare-fun b!1195107 () Bool)

(assert (=> b!1195107 (= e!767738 (not (inv!16013 Empty!3956)))))

(declare-fun b!1195108 () Bool)

(declare-fun res!539409 () Bool)

(assert (=> b!1195108 (=> (not res!539409) (not e!767738))))

(declare-fun isBalanced!1141 (Conc!3956) Bool)

(assert (=> b!1195108 (= res!539409 (isBalanced!1141 t!4115))))

(declare-fun b!1195109 () Bool)

(declare-fun res!539411 () Bool)

(assert (=> b!1195109 (=> (not res!539411) (not e!767738))))

(declare-fun size!9529 (Conc!3956) Int)

(assert (=> b!1195109 (= res!539411 (<= until!31 (size!9529 t!4115)))))

(declare-fun b!1195110 () Bool)

(declare-fun inv!16014 (IArray!7917) Bool)

(assert (=> b!1195110 (= e!767737 (and (inv!16014 (xs!6663 t!4115)) e!767736))))

(assert (= (and start!106304 res!539412) b!1195109))

(assert (= (and b!1195109 res!539411) b!1195108))

(assert (= (and b!1195108 res!539409) b!1195105))

(assert (= (and b!1195105 res!539410) b!1195107))

(get-info :version)

(assert (= (and start!106304 ((_ is Node!3956) t!4115)) b!1195106))

(assert (= b!1195110 b!1195104))

(assert (= (and start!106304 ((_ is Leaf!6059) t!4115)) b!1195110))

(declare-fun m!1369657 () Bool)

(assert (=> b!1195110 m!1369657))

(declare-fun m!1369659 () Bool)

(assert (=> b!1195109 m!1369659))

(declare-fun m!1369661 () Bool)

(assert (=> b!1195106 m!1369661))

(declare-fun m!1369663 () Bool)

(assert (=> b!1195106 m!1369663))

(declare-fun m!1369665 () Bool)

(assert (=> b!1195108 m!1369665))

(declare-fun m!1369667 () Bool)

(assert (=> b!1195107 m!1369667))

(declare-fun m!1369669 () Bool)

(assert (=> start!106304 m!1369669))

(check-sat (not b!1195108) (not b!1195110) (not b!1195106) (not start!106304) (not b!1195107) (not b!1195109) (not b!1195104))
(check-sat)
(get-model)

(declare-fun d!341103 () Bool)

(declare-fun c!198671 () Bool)

(assert (=> d!341103 (= c!198671 ((_ is Node!3956) t!4115))))

(declare-fun e!767743 () Bool)

(assert (=> d!341103 (= (inv!16013 t!4115) e!767743)))

(declare-fun b!1195117 () Bool)

(declare-fun inv!16015 (Conc!3956) Bool)

(assert (=> b!1195117 (= e!767743 (inv!16015 t!4115))))

(declare-fun b!1195118 () Bool)

(declare-fun e!767744 () Bool)

(assert (=> b!1195118 (= e!767743 e!767744)))

(declare-fun res!539415 () Bool)

(assert (=> b!1195118 (= res!539415 (not ((_ is Leaf!6059) t!4115)))))

(assert (=> b!1195118 (=> res!539415 e!767744)))

(declare-fun b!1195119 () Bool)

(declare-fun inv!16017 (Conc!3956) Bool)

(assert (=> b!1195119 (= e!767744 (inv!16017 t!4115))))

(assert (= (and d!341103 c!198671) b!1195117))

(assert (= (and d!341103 (not c!198671)) b!1195118))

(assert (= (and b!1195118 (not res!539415)) b!1195119))

(declare-fun m!1369675 () Bool)

(assert (=> b!1195117 m!1369675))

(declare-fun m!1369677 () Bool)

(assert (=> b!1195119 m!1369677))

(assert (=> start!106304 d!341103))

(declare-fun d!341107 () Bool)

(declare-fun c!198672 () Bool)

(assert (=> d!341107 (= c!198672 ((_ is Node!3956) Empty!3956))))

(declare-fun e!767745 () Bool)

(assert (=> d!341107 (= (inv!16013 Empty!3956) e!767745)))

(declare-fun b!1195120 () Bool)

(assert (=> b!1195120 (= e!767745 (inv!16015 Empty!3956))))

(declare-fun b!1195121 () Bool)

(declare-fun e!767746 () Bool)

(assert (=> b!1195121 (= e!767745 e!767746)))

(declare-fun res!539416 () Bool)

(assert (=> b!1195121 (= res!539416 (not ((_ is Leaf!6059) Empty!3956)))))

(assert (=> b!1195121 (=> res!539416 e!767746)))

(declare-fun b!1195122 () Bool)

(assert (=> b!1195122 (= e!767746 (inv!16017 Empty!3956))))

(assert (= (and d!341107 c!198672) b!1195120))

(assert (= (and d!341107 (not c!198672)) b!1195121))

(assert (= (and b!1195121 (not res!539416)) b!1195122))

(declare-fun m!1369679 () Bool)

(assert (=> b!1195120 m!1369679))

(declare-fun m!1369681 () Bool)

(assert (=> b!1195122 m!1369681))

(assert (=> b!1195107 d!341107))

(declare-fun d!341109 () Bool)

(declare-fun c!198675 () Bool)

(assert (=> d!341109 (= c!198675 ((_ is Node!3956) (left!10482 t!4115)))))

(declare-fun e!767749 () Bool)

(assert (=> d!341109 (= (inv!16013 (left!10482 t!4115)) e!767749)))

(declare-fun b!1195127 () Bool)

(assert (=> b!1195127 (= e!767749 (inv!16015 (left!10482 t!4115)))))

(declare-fun b!1195128 () Bool)

(declare-fun e!767750 () Bool)

(assert (=> b!1195128 (= e!767749 e!767750)))

(declare-fun res!539417 () Bool)

(assert (=> b!1195128 (= res!539417 (not ((_ is Leaf!6059) (left!10482 t!4115))))))

(assert (=> b!1195128 (=> res!539417 e!767750)))

(declare-fun b!1195129 () Bool)

(assert (=> b!1195129 (= e!767750 (inv!16017 (left!10482 t!4115)))))

(assert (= (and d!341109 c!198675) b!1195127))

(assert (= (and d!341109 (not c!198675)) b!1195128))

(assert (= (and b!1195128 (not res!539417)) b!1195129))

(declare-fun m!1369683 () Bool)

(assert (=> b!1195127 m!1369683))

(declare-fun m!1369685 () Bool)

(assert (=> b!1195129 m!1369685))

(assert (=> b!1195106 d!341109))

(declare-fun d!341111 () Bool)

(declare-fun c!198676 () Bool)

(assert (=> d!341111 (= c!198676 ((_ is Node!3956) (right!10812 t!4115)))))

(declare-fun e!767753 () Bool)

(assert (=> d!341111 (= (inv!16013 (right!10812 t!4115)) e!767753)))

(declare-fun b!1195132 () Bool)

(assert (=> b!1195132 (= e!767753 (inv!16015 (right!10812 t!4115)))))

(declare-fun b!1195133 () Bool)

(declare-fun e!767754 () Bool)

(assert (=> b!1195133 (= e!767753 e!767754)))

(declare-fun res!539420 () Bool)

(assert (=> b!1195133 (= res!539420 (not ((_ is Leaf!6059) (right!10812 t!4115))))))

(assert (=> b!1195133 (=> res!539420 e!767754)))

(declare-fun b!1195134 () Bool)

(assert (=> b!1195134 (= e!767754 (inv!16017 (right!10812 t!4115)))))

(assert (= (and d!341111 c!198676) b!1195132))

(assert (= (and d!341111 (not c!198676)) b!1195133))

(assert (= (and b!1195133 (not res!539420)) b!1195134))

(declare-fun m!1369687 () Bool)

(assert (=> b!1195132 m!1369687))

(declare-fun m!1369689 () Bool)

(assert (=> b!1195134 m!1369689))

(assert (=> b!1195106 d!341111))

(declare-fun b!1195165 () Bool)

(declare-fun e!767768 () Bool)

(declare-fun e!767767 () Bool)

(assert (=> b!1195165 (= e!767768 e!767767)))

(declare-fun res!539449 () Bool)

(assert (=> b!1195165 (=> (not res!539449) (not e!767767))))

(declare-fun height!554 (Conc!3956) Int)

(assert (=> b!1195165 (= res!539449 (<= (- 1) (- (height!554 (left!10482 t!4115)) (height!554 (right!10812 t!4115)))))))

(declare-fun b!1195166 () Bool)

(declare-fun isEmpty!7235 (Conc!3956) Bool)

(assert (=> b!1195166 (= e!767767 (not (isEmpty!7235 (right!10812 t!4115))))))

(declare-fun d!341113 () Bool)

(declare-fun res!539447 () Bool)

(assert (=> d!341113 (=> res!539447 e!767768)))

(assert (=> d!341113 (= res!539447 (not ((_ is Node!3956) t!4115)))))

(assert (=> d!341113 (= (isBalanced!1141 t!4115) e!767768)))

(declare-fun b!1195167 () Bool)

(declare-fun res!539451 () Bool)

(assert (=> b!1195167 (=> (not res!539451) (not e!767767))))

(assert (=> b!1195167 (= res!539451 (isBalanced!1141 (left!10482 t!4115)))))

(declare-fun b!1195168 () Bool)

(declare-fun res!539450 () Bool)

(assert (=> b!1195168 (=> (not res!539450) (not e!767767))))

(assert (=> b!1195168 (= res!539450 (<= (- (height!554 (left!10482 t!4115)) (height!554 (right!10812 t!4115))) 1))))

(declare-fun b!1195169 () Bool)

(declare-fun res!539452 () Bool)

(assert (=> b!1195169 (=> (not res!539452) (not e!767767))))

(assert (=> b!1195169 (= res!539452 (not (isEmpty!7235 (left!10482 t!4115))))))

(declare-fun b!1195170 () Bool)

(declare-fun res!539448 () Bool)

(assert (=> b!1195170 (=> (not res!539448) (not e!767767))))

(assert (=> b!1195170 (= res!539448 (isBalanced!1141 (right!10812 t!4115)))))

(assert (= (and d!341113 (not res!539447)) b!1195165))

(assert (= (and b!1195165 res!539449) b!1195168))

(assert (= (and b!1195168 res!539450) b!1195167))

(assert (= (and b!1195167 res!539451) b!1195170))

(assert (= (and b!1195170 res!539448) b!1195169))

(assert (= (and b!1195169 res!539452) b!1195166))

(declare-fun m!1369699 () Bool)

(assert (=> b!1195169 m!1369699))

(declare-fun m!1369701 () Bool)

(assert (=> b!1195166 m!1369701))

(declare-fun m!1369703 () Bool)

(assert (=> b!1195168 m!1369703))

(declare-fun m!1369705 () Bool)

(assert (=> b!1195168 m!1369705))

(declare-fun m!1369707 () Bool)

(assert (=> b!1195167 m!1369707))

(declare-fun m!1369709 () Bool)

(assert (=> b!1195170 m!1369709))

(assert (=> b!1195165 m!1369703))

(assert (=> b!1195165 m!1369705))

(assert (=> b!1195108 d!341113))

(declare-fun d!341119 () Bool)

(declare-fun lt!410050 () Int)

(declare-fun size!9531 (List!12047) Int)

(declare-fun list!4453 (Conc!3956) List!12047)

(assert (=> d!341119 (= lt!410050 (size!9531 (list!4453 t!4115)))))

(assert (=> d!341119 (= lt!410050 (ite ((_ is Empty!3956) t!4115) 0 (ite ((_ is Leaf!6059) t!4115) (csize!8143 t!4115) (csize!8142 t!4115))))))

(assert (=> d!341119 (= (size!9529 t!4115) lt!410050)))

(declare-fun bs!288026 () Bool)

(assert (= bs!288026 d!341119))

(declare-fun m!1369731 () Bool)

(assert (=> bs!288026 m!1369731))

(assert (=> bs!288026 m!1369731))

(declare-fun m!1369735 () Bool)

(assert (=> bs!288026 m!1369735))

(assert (=> b!1195109 d!341119))

(declare-fun d!341127 () Bool)

(assert (=> d!341127 (= (inv!16014 (xs!6663 t!4115)) (<= (size!9531 (innerList!4016 (xs!6663 t!4115))) 2147483647))))

(declare-fun bs!288028 () Bool)

(assert (= bs!288028 d!341127))

(declare-fun m!1369737 () Bool)

(assert (=> bs!288028 m!1369737))

(assert (=> b!1195110 d!341127))

(declare-fun e!767790 () Bool)

(declare-fun tp!340496 () Bool)

(declare-fun b!1195209 () Bool)

(declare-fun tp!340495 () Bool)

(assert (=> b!1195209 (= e!767790 (and (inv!16013 (left!10482 (left!10482 t!4115))) tp!340495 (inv!16013 (right!10812 (left!10482 t!4115))) tp!340496))))

(declare-fun b!1195211 () Bool)

(declare-fun e!767789 () Bool)

(declare-fun tp!340494 () Bool)

(assert (=> b!1195211 (= e!767789 tp!340494)))

(declare-fun b!1195210 () Bool)

(assert (=> b!1195210 (= e!767790 (and (inv!16014 (xs!6663 (left!10482 t!4115))) e!767789))))

(assert (=> b!1195106 (= tp!340472 (and (inv!16013 (left!10482 t!4115)) e!767790))))

(assert (= (and b!1195106 ((_ is Node!3956) (left!10482 t!4115))) b!1195209))

(assert (= b!1195210 b!1195211))

(assert (= (and b!1195106 ((_ is Leaf!6059) (left!10482 t!4115))) b!1195210))

(declare-fun m!1369751 () Bool)

(assert (=> b!1195209 m!1369751))

(declare-fun m!1369753 () Bool)

(assert (=> b!1195209 m!1369753))

(declare-fun m!1369755 () Bool)

(assert (=> b!1195210 m!1369755))

(assert (=> b!1195106 m!1369661))

(declare-fun tp!340500 () Bool)

(declare-fun tp!340499 () Bool)

(declare-fun b!1195213 () Bool)

(declare-fun e!767793 () Bool)

(assert (=> b!1195213 (= e!767793 (and (inv!16013 (left!10482 (right!10812 t!4115))) tp!340499 (inv!16013 (right!10812 (right!10812 t!4115))) tp!340500))))

(declare-fun b!1195215 () Bool)

(declare-fun e!767792 () Bool)

(declare-fun tp!340498 () Bool)

(assert (=> b!1195215 (= e!767792 tp!340498)))

(declare-fun b!1195214 () Bool)

(assert (=> b!1195214 (= e!767793 (and (inv!16014 (xs!6663 (right!10812 t!4115))) e!767792))))

(assert (=> b!1195106 (= tp!340473 (and (inv!16013 (right!10812 t!4115)) e!767793))))

(assert (= (and b!1195106 ((_ is Node!3956) (right!10812 t!4115))) b!1195213))

(assert (= b!1195214 b!1195215))

(assert (= (and b!1195106 ((_ is Leaf!6059) (right!10812 t!4115))) b!1195214))

(declare-fun m!1369757 () Bool)

(assert (=> b!1195213 m!1369757))

(declare-fun m!1369759 () Bool)

(assert (=> b!1195213 m!1369759))

(declare-fun m!1369761 () Bool)

(assert (=> b!1195214 m!1369761))

(assert (=> b!1195106 m!1369663))

(declare-fun b!1195220 () Bool)

(declare-fun e!767796 () Bool)

(declare-fun tp_is_empty!5947 () Bool)

(declare-fun tp!340503 () Bool)

(assert (=> b!1195220 (= e!767796 (and tp_is_empty!5947 tp!340503))))

(assert (=> b!1195104 (= tp!340471 e!767796)))

(assert (= (and b!1195104 ((_ is Cons!12023) (innerList!4016 (xs!6663 t!4115)))) b!1195220))

(check-sat (not b!1195120) (not b!1195169) (not b!1195220) (not b!1195119) (not b!1195132) (not b!1195117) (not b!1195166) (not b!1195210) (not b!1195167) (not b!1195209) tp_is_empty!5947 (not d!341119) (not b!1195106) (not b!1195134) (not b!1195122) (not b!1195211) (not b!1195215) (not b!1195165) (not b!1195214) (not b!1195168) (not b!1195127) (not d!341127) (not b!1195129) (not b!1195170) (not b!1195213))
(check-sat)
