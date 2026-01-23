; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106252 () Bool)

(assert start!106252)

(declare-fun b!1194710 () Bool)

(declare-fun e!767538 () Bool)

(declare-datatypes ((T!21614 0))(
  ( (T!21615 (val!3864 Int)) )
))
(declare-datatypes ((List!12043 0))(
  ( (Nil!12019) (Cons!12019 (h!17420 T!21614) (t!112329 List!12043)) )
))
(declare-datatypes ((IArray!7909 0))(
  ( (IArray!7910 (innerList!4012 List!12043)) )
))
(declare-datatypes ((Conc!3952 0))(
  ( (Node!3952 (left!10476 Conc!3952) (right!10806 Conc!3952) (csize!8134 Int) (cheight!4163 Int)) (Leaf!6053 (xs!6659 IArray!7909) (csize!8135 Int)) (Empty!3952) )
))
(declare-fun t!4115 () Conc!3952)

(declare-fun e!767534 () Bool)

(declare-fun inv!15991 (IArray!7909) Bool)

(assert (=> b!1194710 (= e!767538 (and (inv!15991 (xs!6659 t!4115)) e!767534))))

(declare-fun b!1194711 () Bool)

(declare-fun tp!340363 () Bool)

(assert (=> b!1194711 (= e!767534 tp!340363)))

(declare-fun b!1194712 () Bool)

(declare-fun res!539257 () Bool)

(declare-fun e!767537 () Bool)

(assert (=> b!1194712 (=> (not res!539257) (not e!767537))))

(declare-fun until!31 () Int)

(declare-fun size!9522 (Conc!3952) Int)

(assert (=> b!1194712 (= res!539257 (<= until!31 (size!9522 t!4115)))))

(declare-fun b!1194713 () Bool)

(declare-fun e!767535 () Bool)

(declare-fun err!3113 () Conc!3952)

(declare-fun e!767536 () Bool)

(assert (=> b!1194713 (= e!767535 (and (inv!15991 (xs!6659 err!3113)) e!767536))))

(declare-fun b!1194714 () Bool)

(declare-fun res!539259 () Bool)

(assert (=> b!1194714 (=> (not res!539259) (not e!767537))))

(declare-fun from!553 () Int)

(get-info :version)

(assert (=> b!1194714 (= res!539259 (and (not (= from!553 until!31)) (not ((_ is Leaf!6053) t!4115)) (not ((_ is Node!3952) t!4115))))))

(declare-fun b!1194715 () Bool)

(declare-fun res!539258 () Bool)

(assert (=> b!1194715 (=> (not res!539258) (not e!767537))))

(declare-fun isBalanced!1137 (Conc!3952) Bool)

(assert (=> b!1194715 (= res!539258 (isBalanced!1137 err!3113))))

(assert (=> b!1194715 true))

(declare-fun inv!15992 (Conc!3952) Bool)

(assert (=> b!1194715 (and (inv!15992 err!3113) e!767535)))

(declare-fun tp!340358 () Bool)

(declare-fun tp!340359 () Bool)

(declare-fun b!1194716 () Bool)

(assert (=> b!1194716 (= e!767538 (and (inv!15992 (left!10476 t!4115)) tp!340359 (inv!15992 (right!10806 t!4115)) tp!340358))))

(declare-fun res!539256 () Bool)

(assert (=> start!106252 (=> (not res!539256) (not e!767537))))

(assert (=> start!106252 (= res!539256 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106252 e!767537))

(assert (=> start!106252 true))

(assert (=> start!106252 (and (inv!15992 t!4115) e!767538)))

(declare-fun b!1194717 () Bool)

(declare-fun tp!340361 () Bool)

(assert (=> b!1194717 (= e!767536 tp!340361)))

(declare-fun b!1194718 () Bool)

(declare-fun tp!340360 () Bool)

(declare-fun tp!340362 () Bool)

(assert (=> b!1194718 (= e!767535 (and (inv!15992 (left!10476 err!3113)) tp!340362 (inv!15992 (right!10806 err!3113)) tp!340360))))

(declare-fun b!1194719 () Bool)

(declare-fun size!9523 (List!12043) Int)

(declare-fun list!4447 (Conc!3952) List!12043)

(assert (=> b!1194719 (= e!767537 (> until!31 (size!9523 (list!4447 t!4115))))))

(declare-fun b!1194720 () Bool)

(declare-fun res!539260 () Bool)

(assert (=> b!1194720 (=> (not res!539260) (not e!767537))))

(assert (=> b!1194720 (= res!539260 (isBalanced!1137 t!4115))))

(assert (= (and start!106252 res!539256) b!1194712))

(assert (= (and b!1194712 res!539257) b!1194720))

(assert (= (and b!1194720 res!539260) b!1194714))

(assert (= (and b!1194714 res!539259) b!1194715))

(assert (= (and b!1194715 ((_ is Node!3952) err!3113)) b!1194718))

(assert (= b!1194713 b!1194717))

(assert (= (and b!1194715 ((_ is Leaf!6053) err!3113)) b!1194713))

(assert (= (and b!1194715 res!539258) b!1194719))

(assert (= (and start!106252 ((_ is Node!3952) t!4115)) b!1194716))

(assert (= b!1194710 b!1194711))

(assert (= (and start!106252 ((_ is Leaf!6053) t!4115)) b!1194710))

(declare-fun m!1369313 () Bool)

(assert (=> b!1194715 m!1369313))

(declare-fun m!1369315 () Bool)

(assert (=> b!1194715 m!1369315))

(declare-fun m!1369317 () Bool)

(assert (=> b!1194712 m!1369317))

(declare-fun m!1369319 () Bool)

(assert (=> b!1194719 m!1369319))

(assert (=> b!1194719 m!1369319))

(declare-fun m!1369321 () Bool)

(assert (=> b!1194719 m!1369321))

(declare-fun m!1369323 () Bool)

(assert (=> b!1194710 m!1369323))

(declare-fun m!1369325 () Bool)

(assert (=> b!1194720 m!1369325))

(declare-fun m!1369327 () Bool)

(assert (=> b!1194716 m!1369327))

(declare-fun m!1369329 () Bool)

(assert (=> b!1194716 m!1369329))

(declare-fun m!1369331 () Bool)

(assert (=> start!106252 m!1369331))

(declare-fun m!1369333 () Bool)

(assert (=> b!1194718 m!1369333))

(declare-fun m!1369335 () Bool)

(assert (=> b!1194718 m!1369335))

(declare-fun m!1369337 () Bool)

(assert (=> b!1194713 m!1369337))

(check-sat (not b!1194712) (not start!106252) (not b!1194718) (not b!1194716) (not b!1194713) (not b!1194717) (not b!1194719) (not b!1194720) (not b!1194710) (not b!1194715) (not b!1194711))
(check-sat)
(get-model)

(declare-fun d!341019 () Bool)

(declare-fun lt!410025 () Int)

(assert (=> d!341019 (= lt!410025 (size!9523 (list!4447 t!4115)))))

(assert (=> d!341019 (= lt!410025 (ite ((_ is Empty!3952) t!4115) 0 (ite ((_ is Leaf!6053) t!4115) (csize!8135 t!4115) (csize!8134 t!4115))))))

(assert (=> d!341019 (= (size!9522 t!4115) lt!410025)))

(declare-fun bs!288011 () Bool)

(assert (= bs!288011 d!341019))

(assert (=> bs!288011 m!1369319))

(assert (=> bs!288011 m!1369319))

(assert (=> bs!288011 m!1369321))

(assert (=> b!1194712 d!341019))

(declare-fun d!341023 () Bool)

(declare-fun lt!410029 () Int)

(assert (=> d!341023 (>= lt!410029 0)))

(declare-fun e!767544 () Int)

(assert (=> d!341023 (= lt!410029 e!767544)))

(declare-fun c!198618 () Bool)

(assert (=> d!341023 (= c!198618 ((_ is Nil!12019) (list!4447 t!4115)))))

(assert (=> d!341023 (= (size!9523 (list!4447 t!4115)) lt!410029)))

(declare-fun b!1194731 () Bool)

(assert (=> b!1194731 (= e!767544 0)))

(declare-fun b!1194732 () Bool)

(assert (=> b!1194732 (= e!767544 (+ 1 (size!9523 (t!112329 (list!4447 t!4115)))))))

(assert (= (and d!341023 c!198618) b!1194731))

(assert (= (and d!341023 (not c!198618)) b!1194732))

(declare-fun m!1369341 () Bool)

(assert (=> b!1194732 m!1369341))

(assert (=> b!1194719 d!341023))

(declare-fun b!1194755 () Bool)

(declare-fun e!767556 () List!12043)

(declare-fun list!4448 (IArray!7909) List!12043)

(assert (=> b!1194755 (= e!767556 (list!4448 (xs!6659 t!4115)))))

(declare-fun b!1194756 () Bool)

(declare-fun ++!3061 (List!12043 List!12043) List!12043)

(assert (=> b!1194756 (= e!767556 (++!3061 (list!4447 (left!10476 t!4115)) (list!4447 (right!10806 t!4115))))))

(declare-fun b!1194753 () Bool)

(declare-fun e!767555 () List!12043)

(assert (=> b!1194753 (= e!767555 Nil!12019)))

(declare-fun b!1194754 () Bool)

(assert (=> b!1194754 (= e!767555 e!767556)))

(declare-fun c!198630 () Bool)

(assert (=> b!1194754 (= c!198630 ((_ is Leaf!6053) t!4115))))

(declare-fun d!341027 () Bool)

(declare-fun c!198629 () Bool)

(assert (=> d!341027 (= c!198629 ((_ is Empty!3952) t!4115))))

(assert (=> d!341027 (= (list!4447 t!4115) e!767555)))

(assert (= (and d!341027 c!198629) b!1194753))

(assert (= (and d!341027 (not c!198629)) b!1194754))

(assert (= (and b!1194754 c!198630) b!1194755))

(assert (= (and b!1194754 (not c!198630)) b!1194756))

(declare-fun m!1369351 () Bool)

(assert (=> b!1194755 m!1369351))

(declare-fun m!1369353 () Bool)

(assert (=> b!1194756 m!1369353))

(declare-fun m!1369355 () Bool)

(assert (=> b!1194756 m!1369355))

(assert (=> b!1194756 m!1369353))

(assert (=> b!1194756 m!1369355))

(declare-fun m!1369357 () Bool)

(assert (=> b!1194756 m!1369357))

(assert (=> b!1194719 d!341027))

(declare-fun d!341031 () Bool)

(assert (=> d!341031 (= (inv!15991 (xs!6659 err!3113)) (<= (size!9523 (innerList!4012 (xs!6659 err!3113))) 2147483647))))

(declare-fun bs!288012 () Bool)

(assert (= bs!288012 d!341031))

(declare-fun m!1369359 () Bool)

(assert (=> bs!288012 m!1369359))

(assert (=> b!1194713 d!341031))

(declare-fun d!341033 () Bool)

(declare-fun c!198633 () Bool)

(assert (=> d!341033 (= c!198633 ((_ is Node!3952) (left!10476 err!3113)))))

(declare-fun e!767565 () Bool)

(assert (=> d!341033 (= (inv!15992 (left!10476 err!3113)) e!767565)))

(declare-fun b!1194775 () Bool)

(declare-fun inv!15993 (Conc!3952) Bool)

(assert (=> b!1194775 (= e!767565 (inv!15993 (left!10476 err!3113)))))

(declare-fun b!1194776 () Bool)

(declare-fun e!767566 () Bool)

(assert (=> b!1194776 (= e!767565 e!767566)))

(declare-fun res!539275 () Bool)

(assert (=> b!1194776 (= res!539275 (not ((_ is Leaf!6053) (left!10476 err!3113))))))

(assert (=> b!1194776 (=> res!539275 e!767566)))

(declare-fun b!1194777 () Bool)

(declare-fun inv!15994 (Conc!3952) Bool)

(assert (=> b!1194777 (= e!767566 (inv!15994 (left!10476 err!3113)))))

(assert (= (and d!341033 c!198633) b!1194775))

(assert (= (and d!341033 (not c!198633)) b!1194776))

(assert (= (and b!1194776 (not res!539275)) b!1194777))

(declare-fun m!1369361 () Bool)

(assert (=> b!1194775 m!1369361))

(declare-fun m!1369363 () Bool)

(assert (=> b!1194777 m!1369363))

(assert (=> b!1194718 d!341033))

(declare-fun d!341035 () Bool)

(declare-fun c!198634 () Bool)

(assert (=> d!341035 (= c!198634 ((_ is Node!3952) (right!10806 err!3113)))))

(declare-fun e!767567 () Bool)

(assert (=> d!341035 (= (inv!15992 (right!10806 err!3113)) e!767567)))

(declare-fun b!1194778 () Bool)

(assert (=> b!1194778 (= e!767567 (inv!15993 (right!10806 err!3113)))))

(declare-fun b!1194779 () Bool)

(declare-fun e!767568 () Bool)

(assert (=> b!1194779 (= e!767567 e!767568)))

(declare-fun res!539276 () Bool)

(assert (=> b!1194779 (= res!539276 (not ((_ is Leaf!6053) (right!10806 err!3113))))))

(assert (=> b!1194779 (=> res!539276 e!767568)))

(declare-fun b!1194780 () Bool)

(assert (=> b!1194780 (= e!767568 (inv!15994 (right!10806 err!3113)))))

(assert (= (and d!341035 c!198634) b!1194778))

(assert (= (and d!341035 (not c!198634)) b!1194779))

(assert (= (and b!1194779 (not res!539276)) b!1194780))

(declare-fun m!1369365 () Bool)

(assert (=> b!1194778 m!1369365))

(declare-fun m!1369367 () Bool)

(assert (=> b!1194780 m!1369367))

(assert (=> b!1194718 d!341035))

(declare-fun d!341037 () Bool)

(declare-fun res!539301 () Bool)

(declare-fun e!767578 () Bool)

(assert (=> d!341037 (=> res!539301 e!767578)))

(assert (=> d!341037 (= res!539301 (not ((_ is Node!3952) err!3113)))))

(assert (=> d!341037 (= (isBalanced!1137 err!3113) e!767578)))

(declare-fun b!1194805 () Bool)

(declare-fun res!539306 () Bool)

(declare-fun e!767577 () Bool)

(assert (=> b!1194805 (=> (not res!539306) (not e!767577))))

(declare-fun isEmpty!7231 (Conc!3952) Bool)

(assert (=> b!1194805 (= res!539306 (not (isEmpty!7231 (left!10476 err!3113))))))

(declare-fun b!1194806 () Bool)

(assert (=> b!1194806 (= e!767578 e!767577)))

(declare-fun res!539304 () Bool)

(assert (=> b!1194806 (=> (not res!539304) (not e!767577))))

(declare-fun height!550 (Conc!3952) Int)

(assert (=> b!1194806 (= res!539304 (<= (- 1) (- (height!550 (left!10476 err!3113)) (height!550 (right!10806 err!3113)))))))

(declare-fun b!1194807 () Bool)

(declare-fun res!539305 () Bool)

(assert (=> b!1194807 (=> (not res!539305) (not e!767577))))

(assert (=> b!1194807 (= res!539305 (<= (- (height!550 (left!10476 err!3113)) (height!550 (right!10806 err!3113))) 1))))

(declare-fun b!1194808 () Bool)

(declare-fun res!539303 () Bool)

(assert (=> b!1194808 (=> (not res!539303) (not e!767577))))

(assert (=> b!1194808 (= res!539303 (isBalanced!1137 (right!10806 err!3113)))))

(declare-fun b!1194809 () Bool)

(assert (=> b!1194809 (= e!767577 (not (isEmpty!7231 (right!10806 err!3113))))))

(declare-fun b!1194810 () Bool)

(declare-fun res!539302 () Bool)

(assert (=> b!1194810 (=> (not res!539302) (not e!767577))))

(assert (=> b!1194810 (= res!539302 (isBalanced!1137 (left!10476 err!3113)))))

(assert (= (and d!341037 (not res!539301)) b!1194806))

(assert (= (and b!1194806 res!539304) b!1194807))

(assert (= (and b!1194807 res!539305) b!1194810))

(assert (= (and b!1194810 res!539302) b!1194808))

(assert (= (and b!1194808 res!539303) b!1194805))

(assert (= (and b!1194805 res!539306) b!1194809))

(declare-fun m!1369395 () Bool)

(assert (=> b!1194807 m!1369395))

(declare-fun m!1369397 () Bool)

(assert (=> b!1194807 m!1369397))

(declare-fun m!1369399 () Bool)

(assert (=> b!1194809 m!1369399))

(declare-fun m!1369401 () Bool)

(assert (=> b!1194805 m!1369401))

(declare-fun m!1369403 () Bool)

(assert (=> b!1194810 m!1369403))

(assert (=> b!1194806 m!1369395))

(assert (=> b!1194806 m!1369397))

(declare-fun m!1369405 () Bool)

(assert (=> b!1194808 m!1369405))

(assert (=> b!1194715 d!341037))

(declare-fun d!341047 () Bool)

(declare-fun c!198635 () Bool)

(assert (=> d!341047 (= c!198635 ((_ is Node!3952) err!3113))))

(declare-fun e!767579 () Bool)

(assert (=> d!341047 (= (inv!15992 err!3113) e!767579)))

(declare-fun b!1194811 () Bool)

(assert (=> b!1194811 (= e!767579 (inv!15993 err!3113))))

(declare-fun b!1194812 () Bool)

(declare-fun e!767580 () Bool)

(assert (=> b!1194812 (= e!767579 e!767580)))

(declare-fun res!539307 () Bool)

(assert (=> b!1194812 (= res!539307 (not ((_ is Leaf!6053) err!3113)))))

(assert (=> b!1194812 (=> res!539307 e!767580)))

(declare-fun b!1194813 () Bool)

(assert (=> b!1194813 (= e!767580 (inv!15994 err!3113))))

(assert (= (and d!341047 c!198635) b!1194811))

(assert (= (and d!341047 (not c!198635)) b!1194812))

(assert (= (and b!1194812 (not res!539307)) b!1194813))

(declare-fun m!1369407 () Bool)

(assert (=> b!1194811 m!1369407))

(declare-fun m!1369409 () Bool)

(assert (=> b!1194813 m!1369409))

(assert (=> b!1194715 d!341047))

(declare-fun d!341049 () Bool)

(declare-fun res!539308 () Bool)

(declare-fun e!767582 () Bool)

(assert (=> d!341049 (=> res!539308 e!767582)))

(assert (=> d!341049 (= res!539308 (not ((_ is Node!3952) t!4115)))))

(assert (=> d!341049 (= (isBalanced!1137 t!4115) e!767582)))

(declare-fun b!1194814 () Bool)

(declare-fun res!539313 () Bool)

(declare-fun e!767581 () Bool)

(assert (=> b!1194814 (=> (not res!539313) (not e!767581))))

(assert (=> b!1194814 (= res!539313 (not (isEmpty!7231 (left!10476 t!4115))))))

(declare-fun b!1194815 () Bool)

(assert (=> b!1194815 (= e!767582 e!767581)))

(declare-fun res!539311 () Bool)

(assert (=> b!1194815 (=> (not res!539311) (not e!767581))))

(assert (=> b!1194815 (= res!539311 (<= (- 1) (- (height!550 (left!10476 t!4115)) (height!550 (right!10806 t!4115)))))))

(declare-fun b!1194816 () Bool)

(declare-fun res!539312 () Bool)

(assert (=> b!1194816 (=> (not res!539312) (not e!767581))))

(assert (=> b!1194816 (= res!539312 (<= (- (height!550 (left!10476 t!4115)) (height!550 (right!10806 t!4115))) 1))))

(declare-fun b!1194817 () Bool)

(declare-fun res!539310 () Bool)

(assert (=> b!1194817 (=> (not res!539310) (not e!767581))))

(assert (=> b!1194817 (= res!539310 (isBalanced!1137 (right!10806 t!4115)))))

(declare-fun b!1194818 () Bool)

(assert (=> b!1194818 (= e!767581 (not (isEmpty!7231 (right!10806 t!4115))))))

(declare-fun b!1194819 () Bool)

(declare-fun res!539309 () Bool)

(assert (=> b!1194819 (=> (not res!539309) (not e!767581))))

(assert (=> b!1194819 (= res!539309 (isBalanced!1137 (left!10476 t!4115)))))

(assert (= (and d!341049 (not res!539308)) b!1194815))

(assert (= (and b!1194815 res!539311) b!1194816))

(assert (= (and b!1194816 res!539312) b!1194819))

(assert (= (and b!1194819 res!539309) b!1194817))

(assert (= (and b!1194817 res!539310) b!1194814))

(assert (= (and b!1194814 res!539313) b!1194818))

(declare-fun m!1369411 () Bool)

(assert (=> b!1194816 m!1369411))

(declare-fun m!1369413 () Bool)

(assert (=> b!1194816 m!1369413))

(declare-fun m!1369415 () Bool)

(assert (=> b!1194818 m!1369415))

(declare-fun m!1369417 () Bool)

(assert (=> b!1194814 m!1369417))

(declare-fun m!1369419 () Bool)

(assert (=> b!1194819 m!1369419))

(assert (=> b!1194815 m!1369411))

(assert (=> b!1194815 m!1369413))

(declare-fun m!1369421 () Bool)

(assert (=> b!1194817 m!1369421))

(assert (=> b!1194720 d!341049))

(declare-fun d!341051 () Bool)

(declare-fun c!198636 () Bool)

(assert (=> d!341051 (= c!198636 ((_ is Node!3952) t!4115))))

(declare-fun e!767583 () Bool)

(assert (=> d!341051 (= (inv!15992 t!4115) e!767583)))

(declare-fun b!1194820 () Bool)

(assert (=> b!1194820 (= e!767583 (inv!15993 t!4115))))

(declare-fun b!1194821 () Bool)

(declare-fun e!767584 () Bool)

(assert (=> b!1194821 (= e!767583 e!767584)))

(declare-fun res!539314 () Bool)

(assert (=> b!1194821 (= res!539314 (not ((_ is Leaf!6053) t!4115)))))

(assert (=> b!1194821 (=> res!539314 e!767584)))

(declare-fun b!1194822 () Bool)

(assert (=> b!1194822 (= e!767584 (inv!15994 t!4115))))

(assert (= (and d!341051 c!198636) b!1194820))

(assert (= (and d!341051 (not c!198636)) b!1194821))

(assert (= (and b!1194821 (not res!539314)) b!1194822))

(declare-fun m!1369423 () Bool)

(assert (=> b!1194820 m!1369423))

(declare-fun m!1369425 () Bool)

(assert (=> b!1194822 m!1369425))

(assert (=> start!106252 d!341051))

(declare-fun d!341053 () Bool)

(declare-fun c!198637 () Bool)

(assert (=> d!341053 (= c!198637 ((_ is Node!3952) (left!10476 t!4115)))))

(declare-fun e!767585 () Bool)

(assert (=> d!341053 (= (inv!15992 (left!10476 t!4115)) e!767585)))

(declare-fun b!1194823 () Bool)

(assert (=> b!1194823 (= e!767585 (inv!15993 (left!10476 t!4115)))))

(declare-fun b!1194824 () Bool)

(declare-fun e!767586 () Bool)

(assert (=> b!1194824 (= e!767585 e!767586)))

(declare-fun res!539315 () Bool)

(assert (=> b!1194824 (= res!539315 (not ((_ is Leaf!6053) (left!10476 t!4115))))))

(assert (=> b!1194824 (=> res!539315 e!767586)))

(declare-fun b!1194825 () Bool)

(assert (=> b!1194825 (= e!767586 (inv!15994 (left!10476 t!4115)))))

(assert (= (and d!341053 c!198637) b!1194823))

(assert (= (and d!341053 (not c!198637)) b!1194824))

(assert (= (and b!1194824 (not res!539315)) b!1194825))

(declare-fun m!1369427 () Bool)

(assert (=> b!1194823 m!1369427))

(declare-fun m!1369429 () Bool)

(assert (=> b!1194825 m!1369429))

(assert (=> b!1194716 d!341053))

(declare-fun d!341055 () Bool)

(declare-fun c!198638 () Bool)

(assert (=> d!341055 (= c!198638 ((_ is Node!3952) (right!10806 t!4115)))))

(declare-fun e!767587 () Bool)

(assert (=> d!341055 (= (inv!15992 (right!10806 t!4115)) e!767587)))

(declare-fun b!1194826 () Bool)

(assert (=> b!1194826 (= e!767587 (inv!15993 (right!10806 t!4115)))))

(declare-fun b!1194827 () Bool)

(declare-fun e!767588 () Bool)

(assert (=> b!1194827 (= e!767587 e!767588)))

(declare-fun res!539316 () Bool)

(assert (=> b!1194827 (= res!539316 (not ((_ is Leaf!6053) (right!10806 t!4115))))))

(assert (=> b!1194827 (=> res!539316 e!767588)))

(declare-fun b!1194828 () Bool)

(assert (=> b!1194828 (= e!767588 (inv!15994 (right!10806 t!4115)))))

(assert (= (and d!341055 c!198638) b!1194826))

(assert (= (and d!341055 (not c!198638)) b!1194827))

(assert (= (and b!1194827 (not res!539316)) b!1194828))

(declare-fun m!1369431 () Bool)

(assert (=> b!1194826 m!1369431))

(declare-fun m!1369433 () Bool)

(assert (=> b!1194828 m!1369433))

(assert (=> b!1194716 d!341055))

(declare-fun d!341057 () Bool)

(assert (=> d!341057 (= (inv!15991 (xs!6659 t!4115)) (<= (size!9523 (innerList!4012 (xs!6659 t!4115))) 2147483647))))

(declare-fun bs!288015 () Bool)

(assert (= bs!288015 d!341057))

(declare-fun m!1369435 () Bool)

(assert (=> bs!288015 m!1369435))

(assert (=> b!1194710 d!341057))

(declare-fun b!1194833 () Bool)

(declare-fun e!767591 () Bool)

(declare-fun tp_is_empty!5937 () Bool)

(declare-fun tp!340366 () Bool)

(assert (=> b!1194833 (= e!767591 (and tp_is_empty!5937 tp!340366))))

(assert (=> b!1194717 (= tp!340361 e!767591)))

(assert (= (and b!1194717 ((_ is Cons!12019) (innerList!4012 (xs!6659 err!3113)))) b!1194833))

(declare-fun e!767601 () Bool)

(declare-fun tp!340374 () Bool)

(declare-fun tp!340373 () Bool)

(declare-fun b!1194848 () Bool)

(assert (=> b!1194848 (= e!767601 (and (inv!15992 (left!10476 (left!10476 err!3113))) tp!340374 (inv!15992 (right!10806 (left!10476 err!3113))) tp!340373))))

(declare-fun b!1194850 () Bool)

(declare-fun e!767600 () Bool)

(declare-fun tp!340375 () Bool)

(assert (=> b!1194850 (= e!767600 tp!340375)))

(declare-fun b!1194849 () Bool)

(assert (=> b!1194849 (= e!767601 (and (inv!15991 (xs!6659 (left!10476 err!3113))) e!767600))))

(assert (=> b!1194718 (= tp!340362 (and (inv!15992 (left!10476 err!3113)) e!767601))))

(assert (= (and b!1194718 ((_ is Node!3952) (left!10476 err!3113))) b!1194848))

(assert (= b!1194849 b!1194850))

(assert (= (and b!1194718 ((_ is Leaf!6053) (left!10476 err!3113))) b!1194849))

(declare-fun m!1369437 () Bool)

(assert (=> b!1194848 m!1369437))

(declare-fun m!1369439 () Bool)

(assert (=> b!1194848 m!1369439))

(declare-fun m!1369441 () Bool)

(assert (=> b!1194849 m!1369441))

(assert (=> b!1194718 m!1369333))

(declare-fun b!1194854 () Bool)

(declare-fun e!767605 () Bool)

(declare-fun tp!340376 () Bool)

(declare-fun tp!340377 () Bool)

(assert (=> b!1194854 (= e!767605 (and (inv!15992 (left!10476 (right!10806 err!3113))) tp!340377 (inv!15992 (right!10806 (right!10806 err!3113))) tp!340376))))

(declare-fun b!1194856 () Bool)

(declare-fun e!767604 () Bool)

(declare-fun tp!340378 () Bool)

(assert (=> b!1194856 (= e!767604 tp!340378)))

(declare-fun b!1194855 () Bool)

(assert (=> b!1194855 (= e!767605 (and (inv!15991 (xs!6659 (right!10806 err!3113))) e!767604))))

(assert (=> b!1194718 (= tp!340360 (and (inv!15992 (right!10806 err!3113)) e!767605))))

(assert (= (and b!1194718 ((_ is Node!3952) (right!10806 err!3113))) b!1194854))

(assert (= b!1194855 b!1194856))

(assert (= (and b!1194718 ((_ is Leaf!6053) (right!10806 err!3113))) b!1194855))

(declare-fun m!1369443 () Bool)

(assert (=> b!1194854 m!1369443))

(declare-fun m!1369447 () Bool)

(assert (=> b!1194854 m!1369447))

(declare-fun m!1369449 () Bool)

(assert (=> b!1194855 m!1369449))

(assert (=> b!1194718 m!1369335))

(declare-fun b!1194857 () Bool)

(declare-fun e!767606 () Bool)

(declare-fun tp!340379 () Bool)

(assert (=> b!1194857 (= e!767606 (and tp_is_empty!5937 tp!340379))))

(assert (=> b!1194711 (= tp!340363 e!767606)))

(assert (= (and b!1194711 ((_ is Cons!12019) (innerList!4012 (xs!6659 t!4115)))) b!1194857))

(declare-fun tp!340381 () Bool)

(declare-fun b!1194861 () Bool)

(declare-fun e!767610 () Bool)

(declare-fun tp!340380 () Bool)

(assert (=> b!1194861 (= e!767610 (and (inv!15992 (left!10476 (left!10476 t!4115))) tp!340381 (inv!15992 (right!10806 (left!10476 t!4115))) tp!340380))))

(declare-fun b!1194863 () Bool)

(declare-fun e!767609 () Bool)

(declare-fun tp!340382 () Bool)

(assert (=> b!1194863 (= e!767609 tp!340382)))

(declare-fun b!1194862 () Bool)

(assert (=> b!1194862 (= e!767610 (and (inv!15991 (xs!6659 (left!10476 t!4115))) e!767609))))

(assert (=> b!1194716 (= tp!340359 (and (inv!15992 (left!10476 t!4115)) e!767610))))

(assert (= (and b!1194716 ((_ is Node!3952) (left!10476 t!4115))) b!1194861))

(assert (= b!1194862 b!1194863))

(assert (= (and b!1194716 ((_ is Leaf!6053) (left!10476 t!4115))) b!1194862))

(declare-fun m!1369457 () Bool)

(assert (=> b!1194861 m!1369457))

(declare-fun m!1369459 () Bool)

(assert (=> b!1194861 m!1369459))

(declare-fun m!1369461 () Bool)

(assert (=> b!1194862 m!1369461))

(assert (=> b!1194716 m!1369327))

(declare-fun e!767614 () Bool)

(declare-fun tp!340383 () Bool)

(declare-fun b!1194867 () Bool)

(declare-fun tp!340384 () Bool)

(assert (=> b!1194867 (= e!767614 (and (inv!15992 (left!10476 (right!10806 t!4115))) tp!340384 (inv!15992 (right!10806 (right!10806 t!4115))) tp!340383))))

(declare-fun b!1194869 () Bool)

(declare-fun e!767613 () Bool)

(declare-fun tp!340385 () Bool)

(assert (=> b!1194869 (= e!767613 tp!340385)))

(declare-fun b!1194868 () Bool)

(assert (=> b!1194868 (= e!767614 (and (inv!15991 (xs!6659 (right!10806 t!4115))) e!767613))))

(assert (=> b!1194716 (= tp!340358 (and (inv!15992 (right!10806 t!4115)) e!767614))))

(assert (= (and b!1194716 ((_ is Node!3952) (right!10806 t!4115))) b!1194867))

(assert (= b!1194868 b!1194869))

(assert (= (and b!1194716 ((_ is Leaf!6053) (right!10806 t!4115))) b!1194868))

(declare-fun m!1369467 () Bool)

(assert (=> b!1194867 m!1369467))

(declare-fun m!1369469 () Bool)

(assert (=> b!1194867 m!1369469))

(declare-fun m!1369471 () Bool)

(assert (=> b!1194868 m!1369471))

(assert (=> b!1194716 m!1369329))

(check-sat (not b!1194809) (not b!1194807) (not b!1194867) (not d!341019) (not d!341031) (not b!1194775) (not b!1194833) (not b!1194777) (not b!1194857) tp_is_empty!5937 (not b!1194856) (not b!1194855) (not b!1194862) (not b!1194854) (not b!1194805) (not b!1194823) (not b!1194861) (not b!1194816) (not b!1194756) (not b!1194818) (not b!1194808) (not b!1194780) (not b!1194718) (not b!1194819) (not b!1194826) (not b!1194820) (not b!1194810) (not b!1194863) (not b!1194814) (not b!1194778) (not b!1194716) (not b!1194817) (not b!1194755) (not b!1194850) (not b!1194869) (not b!1194828) (not b!1194848) (not b!1194868) (not b!1194813) (not b!1194815) (not b!1194732) (not b!1194822) (not b!1194811) (not b!1194825) (not b!1194849) (not b!1194806) (not d!341057))
(check-sat)
