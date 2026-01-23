; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184918 () Bool)

(assert start!184918)

(declare-fun res!831276 () Bool)

(declare-fun e!1184218 () Bool)

(assert (=> start!184918 (=> (not res!831276) (not e!1184218))))

(declare-datatypes ((T!32482 0))(
  ( (T!32483 (val!5850 Int)) )
))
(declare-datatypes ((List!20637 0))(
  ( (Nil!20559) (Cons!20559 (h!25960 T!32482) (t!172448 List!20637)) )
))
(declare-datatypes ((IArray!13609 0))(
  ( (IArray!13610 (innerList!6862 List!20637)) )
))
(declare-datatypes ((Conc!6802 0))(
  ( (Node!6802 (left!16492 Conc!6802) (right!16822 Conc!6802) (csize!13834 Int) (cheight!7013 Int)) (Leaf!9951 (xs!9678 IArray!13609) (csize!13835 Int)) (Empty!6802) )
))
(declare-datatypes ((BalanceConc!13532 0))(
  ( (BalanceConc!13533 (c!302209 Conc!6802)) )
))
(declare-fun thiss!5788 () BalanceConc!13532)

(declare-fun isEmpty!12809 (BalanceConc!13532) Bool)

(assert (=> start!184918 (= res!831276 (not (isEmpty!12809 thiss!5788)))))

(assert (=> start!184918 e!1184218))

(declare-fun e!1184217 () Bool)

(declare-fun inv!26942 (BalanceConc!13532) Bool)

(assert (=> start!184918 (and (inv!26942 thiss!5788) e!1184217)))

(declare-fun b!1852711 () Bool)

(declare-fun list!8332 (BalanceConc!13532) List!20637)

(assert (=> b!1852711 (= e!1184218 (= (list!8332 thiss!5788) Nil!20559))))

(declare-fun lt!716322 () T!32482)

(declare-fun head!4334 (Conc!6802) T!32482)

(assert (=> b!1852711 (= lt!716322 (head!4334 (c!302209 thiss!5788)))))

(declare-fun b!1852712 () Bool)

(declare-fun tp!525216 () Bool)

(declare-fun inv!26943 (Conc!6802) Bool)

(assert (=> b!1852712 (= e!1184217 (and (inv!26943 (c!302209 thiss!5788)) tp!525216))))

(assert (= (and start!184918 res!831276) b!1852711))

(assert (= start!184918 b!1852712))

(declare-fun m!2279559 () Bool)

(assert (=> start!184918 m!2279559))

(declare-fun m!2279561 () Bool)

(assert (=> start!184918 m!2279561))

(declare-fun m!2279563 () Bool)

(assert (=> b!1852711 m!2279563))

(declare-fun m!2279565 () Bool)

(assert (=> b!1852711 m!2279565))

(declare-fun m!2279567 () Bool)

(assert (=> b!1852712 m!2279567))

(check-sat (not b!1852712) (not b!1852711) (not start!184918))
(check-sat)
(get-model)

(declare-fun d!566183 () Bool)

(declare-fun c!302212 () Bool)

(get-info :version)

(assert (=> d!566183 (= c!302212 ((_ is Node!6802) (c!302209 thiss!5788)))))

(declare-fun e!1184223 () Bool)

(assert (=> d!566183 (= (inv!26943 (c!302209 thiss!5788)) e!1184223)))

(declare-fun b!1852719 () Bool)

(declare-fun inv!26944 (Conc!6802) Bool)

(assert (=> b!1852719 (= e!1184223 (inv!26944 (c!302209 thiss!5788)))))

(declare-fun b!1852720 () Bool)

(declare-fun e!1184224 () Bool)

(assert (=> b!1852720 (= e!1184223 e!1184224)))

(declare-fun res!831279 () Bool)

(assert (=> b!1852720 (= res!831279 (not ((_ is Leaf!9951) (c!302209 thiss!5788))))))

(assert (=> b!1852720 (=> res!831279 e!1184224)))

(declare-fun b!1852721 () Bool)

(declare-fun inv!26945 (Conc!6802) Bool)

(assert (=> b!1852721 (= e!1184224 (inv!26945 (c!302209 thiss!5788)))))

(assert (= (and d!566183 c!302212) b!1852719))

(assert (= (and d!566183 (not c!302212)) b!1852720))

(assert (= (and b!1852720 (not res!831279)) b!1852721))

(declare-fun m!2279571 () Bool)

(assert (=> b!1852719 m!2279571))

(declare-fun m!2279573 () Bool)

(assert (=> b!1852721 m!2279573))

(assert (=> b!1852712 d!566183))

(declare-fun d!566187 () Bool)

(declare-fun list!8334 (Conc!6802) List!20637)

(assert (=> d!566187 (= (list!8332 thiss!5788) (list!8334 (c!302209 thiss!5788)))))

(declare-fun bs!410481 () Bool)

(assert (= bs!410481 d!566187))

(declare-fun m!2279575 () Bool)

(assert (=> bs!410481 m!2279575))

(assert (=> b!1852711 d!566187))

(declare-fun d!566189 () Bool)

(declare-fun lt!716331 () T!32482)

(declare-fun head!4336 (List!20637) T!32482)

(assert (=> d!566189 (= lt!716331 (head!4336 (list!8334 (c!302209 thiss!5788))))))

(declare-fun e!1184230 () T!32482)

(assert (=> d!566189 (= lt!716331 e!1184230)))

(declare-fun c!302218 () Bool)

(assert (=> d!566189 (= c!302218 ((_ is Leaf!9951) (c!302209 thiss!5788)))))

(declare-fun isBalanced!2119 (Conc!6802) Bool)

(assert (=> d!566189 (isBalanced!2119 (c!302209 thiss!5788))))

(assert (=> d!566189 (= (head!4334 (c!302209 thiss!5788)) lt!716331)))

(declare-fun b!1852732 () Bool)

(declare-fun apply!5460 (IArray!13609 Int) T!32482)

(assert (=> b!1852732 (= e!1184230 (apply!5460 (xs!9678 (c!302209 thiss!5788)) 0))))

(declare-fun b!1852733 () Bool)

(assert (=> b!1852733 (= e!1184230 (head!4334 (left!16492 (c!302209 thiss!5788))))))

(assert (= (and d!566189 c!302218) b!1852732))

(assert (= (and d!566189 (not c!302218)) b!1852733))

(assert (=> d!566189 m!2279575))

(assert (=> d!566189 m!2279575))

(declare-fun m!2279589 () Bool)

(assert (=> d!566189 m!2279589))

(declare-fun m!2279591 () Bool)

(assert (=> d!566189 m!2279591))

(declare-fun m!2279593 () Bool)

(assert (=> b!1852732 m!2279593))

(declare-fun m!2279595 () Bool)

(assert (=> b!1852733 m!2279595))

(assert (=> b!1852711 d!566189))

(declare-fun d!566197 () Bool)

(declare-fun lt!716334 () Bool)

(declare-fun isEmpty!12812 (List!20637) Bool)

(assert (=> d!566197 (= lt!716334 (isEmpty!12812 (list!8332 thiss!5788)))))

(declare-fun isEmpty!12813 (Conc!6802) Bool)

(assert (=> d!566197 (= lt!716334 (isEmpty!12813 (c!302209 thiss!5788)))))

(assert (=> d!566197 (= (isEmpty!12809 thiss!5788) lt!716334)))

(declare-fun bs!410484 () Bool)

(assert (= bs!410484 d!566197))

(assert (=> bs!410484 m!2279563))

(assert (=> bs!410484 m!2279563))

(declare-fun m!2279597 () Bool)

(assert (=> bs!410484 m!2279597))

(declare-fun m!2279599 () Bool)

(assert (=> bs!410484 m!2279599))

(assert (=> start!184918 d!566197))

(declare-fun d!566199 () Bool)

(assert (=> d!566199 (= (inv!26942 thiss!5788) (isBalanced!2119 (c!302209 thiss!5788)))))

(declare-fun bs!410485 () Bool)

(assert (= bs!410485 d!566199))

(assert (=> bs!410485 m!2279591))

(assert (=> start!184918 d!566199))

(declare-fun b!1852762 () Bool)

(declare-fun tp!525234 () Bool)

(declare-fun e!1184248 () Bool)

(declare-fun tp!525233 () Bool)

(assert (=> b!1852762 (= e!1184248 (and (inv!26943 (left!16492 (c!302209 thiss!5788))) tp!525233 (inv!26943 (right!16822 (c!302209 thiss!5788))) tp!525234))))

(declare-fun b!1852764 () Bool)

(declare-fun e!1184247 () Bool)

(declare-fun tp!525232 () Bool)

(assert (=> b!1852764 (= e!1184247 tp!525232)))

(declare-fun b!1852763 () Bool)

(declare-fun inv!26949 (IArray!13609) Bool)

(assert (=> b!1852763 (= e!1184248 (and (inv!26949 (xs!9678 (c!302209 thiss!5788))) e!1184247))))

(assert (=> b!1852712 (= tp!525216 (and (inv!26943 (c!302209 thiss!5788)) e!1184248))))

(assert (= (and b!1852712 ((_ is Node!6802) (c!302209 thiss!5788))) b!1852762))

(assert (= b!1852763 b!1852764))

(assert (= (and b!1852712 ((_ is Leaf!9951) (c!302209 thiss!5788))) b!1852763))

(declare-fun m!2279611 () Bool)

(assert (=> b!1852762 m!2279611))

(declare-fun m!2279613 () Bool)

(assert (=> b!1852762 m!2279613))

(declare-fun m!2279615 () Bool)

(assert (=> b!1852763 m!2279615))

(assert (=> b!1852712 m!2279567))

(check-sat (not b!1852721) (not d!566187) (not b!1852733) (not b!1852762) (not b!1852764) (not b!1852763) (not d!566197) (not b!1852719) (not b!1852732) (not d!566199) (not b!1852712) (not d!566189))
(check-sat)
(get-model)

(assert (=> b!1852712 d!566183))

(declare-fun d!566201 () Bool)

(declare-fun c!302226 () Bool)

(assert (=> d!566201 (= c!302226 ((_ is Empty!6802) (c!302209 thiss!5788)))))

(declare-fun e!1184253 () List!20637)

(assert (=> d!566201 (= (list!8334 (c!302209 thiss!5788)) e!1184253)))

(declare-fun b!1852776 () Bool)

(declare-fun e!1184254 () List!20637)

(declare-fun ++!5554 (List!20637 List!20637) List!20637)

(assert (=> b!1852776 (= e!1184254 (++!5554 (list!8334 (left!16492 (c!302209 thiss!5788))) (list!8334 (right!16822 (c!302209 thiss!5788)))))))

(declare-fun b!1852775 () Bool)

(declare-fun list!8335 (IArray!13609) List!20637)

(assert (=> b!1852775 (= e!1184254 (list!8335 (xs!9678 (c!302209 thiss!5788))))))

(declare-fun b!1852773 () Bool)

(assert (=> b!1852773 (= e!1184253 Nil!20559)))

(declare-fun b!1852774 () Bool)

(assert (=> b!1852774 (= e!1184253 e!1184254)))

(declare-fun c!302227 () Bool)

(assert (=> b!1852774 (= c!302227 ((_ is Leaf!9951) (c!302209 thiss!5788)))))

(assert (= (and d!566201 c!302226) b!1852773))

(assert (= (and d!566201 (not c!302226)) b!1852774))

(assert (= (and b!1852774 c!302227) b!1852775))

(assert (= (and b!1852774 (not c!302227)) b!1852776))

(declare-fun m!2279621 () Bool)

(assert (=> b!1852776 m!2279621))

(declare-fun m!2279623 () Bool)

(assert (=> b!1852776 m!2279623))

(assert (=> b!1852776 m!2279621))

(assert (=> b!1852776 m!2279623))

(declare-fun m!2279625 () Bool)

(assert (=> b!1852776 m!2279625))

(declare-fun m!2279627 () Bool)

(assert (=> b!1852775 m!2279627))

(assert (=> d!566187 d!566201))

(declare-fun d!566209 () Bool)

(declare-fun c!302228 () Bool)

(assert (=> d!566209 (= c!302228 ((_ is Node!6802) (left!16492 (c!302209 thiss!5788))))))

(declare-fun e!1184255 () Bool)

(assert (=> d!566209 (= (inv!26943 (left!16492 (c!302209 thiss!5788))) e!1184255)))

(declare-fun b!1852777 () Bool)

(assert (=> b!1852777 (= e!1184255 (inv!26944 (left!16492 (c!302209 thiss!5788))))))

(declare-fun b!1852778 () Bool)

(declare-fun e!1184256 () Bool)

(assert (=> b!1852778 (= e!1184255 e!1184256)))

(declare-fun res!831283 () Bool)

(assert (=> b!1852778 (= res!831283 (not ((_ is Leaf!9951) (left!16492 (c!302209 thiss!5788)))))))

(assert (=> b!1852778 (=> res!831283 e!1184256)))

(declare-fun b!1852779 () Bool)

(assert (=> b!1852779 (= e!1184256 (inv!26945 (left!16492 (c!302209 thiss!5788))))))

(assert (= (and d!566209 c!302228) b!1852777))

(assert (= (and d!566209 (not c!302228)) b!1852778))

(assert (= (and b!1852778 (not res!831283)) b!1852779))

(declare-fun m!2279629 () Bool)

(assert (=> b!1852777 m!2279629))

(declare-fun m!2279631 () Bool)

(assert (=> b!1852779 m!2279631))

(assert (=> b!1852762 d!566209))

(declare-fun d!566211 () Bool)

(declare-fun c!302229 () Bool)

(assert (=> d!566211 (= c!302229 ((_ is Node!6802) (right!16822 (c!302209 thiss!5788))))))

(declare-fun e!1184257 () Bool)

(assert (=> d!566211 (= (inv!26943 (right!16822 (c!302209 thiss!5788))) e!1184257)))

(declare-fun b!1852780 () Bool)

(assert (=> b!1852780 (= e!1184257 (inv!26944 (right!16822 (c!302209 thiss!5788))))))

(declare-fun b!1852781 () Bool)

(declare-fun e!1184258 () Bool)

(assert (=> b!1852781 (= e!1184257 e!1184258)))

(declare-fun res!831284 () Bool)

(assert (=> b!1852781 (= res!831284 (not ((_ is Leaf!9951) (right!16822 (c!302209 thiss!5788)))))))

(assert (=> b!1852781 (=> res!831284 e!1184258)))

(declare-fun b!1852782 () Bool)

(assert (=> b!1852782 (= e!1184258 (inv!26945 (right!16822 (c!302209 thiss!5788))))))

(assert (= (and d!566211 c!302229) b!1852780))

(assert (= (and d!566211 (not c!302229)) b!1852781))

(assert (= (and b!1852781 (not res!831284)) b!1852782))

(declare-fun m!2279633 () Bool)

(assert (=> b!1852780 m!2279633))

(declare-fun m!2279635 () Bool)

(assert (=> b!1852782 m!2279635))

(assert (=> b!1852762 d!566211))

(declare-fun d!566213 () Bool)

(declare-fun res!831301 () Bool)

(declare-fun e!1184265 () Bool)

(assert (=> d!566213 (=> (not res!831301) (not e!1184265))))

(declare-fun size!16238 (List!20637) Int)

(assert (=> d!566213 (= res!831301 (<= (size!16238 (list!8335 (xs!9678 (c!302209 thiss!5788)))) 512))))

(assert (=> d!566213 (= (inv!26945 (c!302209 thiss!5788)) e!1184265)))

(declare-fun b!1852799 () Bool)

(declare-fun res!831302 () Bool)

(assert (=> b!1852799 (=> (not res!831302) (not e!1184265))))

(assert (=> b!1852799 (= res!831302 (= (csize!13835 (c!302209 thiss!5788)) (size!16238 (list!8335 (xs!9678 (c!302209 thiss!5788))))))))

(declare-fun b!1852800 () Bool)

(assert (=> b!1852800 (= e!1184265 (and (> (csize!13835 (c!302209 thiss!5788)) 0) (<= (csize!13835 (c!302209 thiss!5788)) 512)))))

(assert (= (and d!566213 res!831301) b!1852799))

(assert (= (and b!1852799 res!831302) b!1852800))

(assert (=> d!566213 m!2279627))

(assert (=> d!566213 m!2279627))

(declare-fun m!2279637 () Bool)

(assert (=> d!566213 m!2279637))

(assert (=> b!1852799 m!2279627))

(assert (=> b!1852799 m!2279627))

(assert (=> b!1852799 m!2279637))

(assert (=> b!1852721 d!566213))

(declare-fun d!566215 () Bool)

(declare-fun lt!716340 () T!32482)

(declare-fun apply!5462 (List!20637 Int) T!32482)

(assert (=> d!566215 (= lt!716340 (apply!5462 (list!8335 (xs!9678 (c!302209 thiss!5788))) 0))))

(declare-fun choose!11658 (IArray!13609 Int) T!32482)

(assert (=> d!566215 (= lt!716340 (choose!11658 (xs!9678 (c!302209 thiss!5788)) 0))))

(declare-fun e!1184270 () Bool)

(assert (=> d!566215 e!1184270))

(declare-fun res!831311 () Bool)

(assert (=> d!566215 (=> (not res!831311) (not e!1184270))))

(assert (=> d!566215 (= res!831311 (<= 0 0))))

(assert (=> d!566215 (= (apply!5460 (xs!9678 (c!302209 thiss!5788)) 0) lt!716340)))

(declare-fun b!1852809 () Bool)

(declare-fun size!16240 (IArray!13609) Int)

(assert (=> b!1852809 (= e!1184270 (< 0 (size!16240 (xs!9678 (c!302209 thiss!5788)))))))

(assert (= (and d!566215 res!831311) b!1852809))

(assert (=> d!566215 m!2279627))

(assert (=> d!566215 m!2279627))

(declare-fun m!2279651 () Bool)

(assert (=> d!566215 m!2279651))

(declare-fun m!2279653 () Bool)

(assert (=> d!566215 m!2279653))

(declare-fun m!2279655 () Bool)

(assert (=> b!1852809 m!2279655))

(assert (=> b!1852732 d!566215))

(declare-fun d!566219 () Bool)

(assert (=> d!566219 (= (head!4336 (list!8334 (c!302209 thiss!5788))) (h!25960 (list!8334 (c!302209 thiss!5788))))))

(assert (=> d!566189 d!566219))

(assert (=> d!566189 d!566201))

(declare-fun b!1852833 () Bool)

(declare-fun e!1184281 () Bool)

(assert (=> b!1852833 (= e!1184281 (not (isEmpty!12813 (right!16822 (c!302209 thiss!5788)))))))

(declare-fun b!1852834 () Bool)

(declare-fun res!831338 () Bool)

(assert (=> b!1852834 (=> (not res!831338) (not e!1184281))))

(declare-fun height!1031 (Conc!6802) Int)

(assert (=> b!1852834 (= res!831338 (<= (- (height!1031 (left!16492 (c!302209 thiss!5788))) (height!1031 (right!16822 (c!302209 thiss!5788)))) 1))))

(declare-fun b!1852835 () Bool)

(declare-fun res!831334 () Bool)

(assert (=> b!1852835 (=> (not res!831334) (not e!1184281))))

(assert (=> b!1852835 (= res!831334 (isBalanced!2119 (right!16822 (c!302209 thiss!5788))))))

(declare-fun b!1852836 () Bool)

(declare-fun res!831337 () Bool)

(assert (=> b!1852836 (=> (not res!831337) (not e!1184281))))

(assert (=> b!1852836 (= res!831337 (isBalanced!2119 (left!16492 (c!302209 thiss!5788))))))

(declare-fun d!566221 () Bool)

(declare-fun res!831336 () Bool)

(declare-fun e!1184282 () Bool)

(assert (=> d!566221 (=> res!831336 e!1184282)))

(assert (=> d!566221 (= res!831336 (not ((_ is Node!6802) (c!302209 thiss!5788))))))

(assert (=> d!566221 (= (isBalanced!2119 (c!302209 thiss!5788)) e!1184282)))

(declare-fun b!1852837 () Bool)

(assert (=> b!1852837 (= e!1184282 e!1184281)))

(declare-fun res!831335 () Bool)

(assert (=> b!1852837 (=> (not res!831335) (not e!1184281))))

(assert (=> b!1852837 (= res!831335 (<= (- 1) (- (height!1031 (left!16492 (c!302209 thiss!5788))) (height!1031 (right!16822 (c!302209 thiss!5788))))))))

(declare-fun b!1852838 () Bool)

(declare-fun res!831333 () Bool)

(assert (=> b!1852838 (=> (not res!831333) (not e!1184281))))

(assert (=> b!1852838 (= res!831333 (not (isEmpty!12813 (left!16492 (c!302209 thiss!5788)))))))

(assert (= (and d!566221 (not res!831336)) b!1852837))

(assert (= (and b!1852837 res!831335) b!1852834))

(assert (= (and b!1852834 res!831338) b!1852836))

(assert (= (and b!1852836 res!831337) b!1852835))

(assert (= (and b!1852835 res!831334) b!1852838))

(assert (= (and b!1852838 res!831333) b!1852833))

(declare-fun m!2279673 () Bool)

(assert (=> b!1852838 m!2279673))

(declare-fun m!2279675 () Bool)

(assert (=> b!1852833 m!2279675))

(declare-fun m!2279677 () Bool)

(assert (=> b!1852837 m!2279677))

(declare-fun m!2279679 () Bool)

(assert (=> b!1852837 m!2279679))

(declare-fun m!2279682 () Bool)

(assert (=> b!1852836 m!2279682))

(assert (=> b!1852834 m!2279677))

(assert (=> b!1852834 m!2279679))

(declare-fun m!2279687 () Bool)

(assert (=> b!1852835 m!2279687))

(assert (=> d!566189 d!566221))

(declare-fun d!566227 () Bool)

(declare-fun lt!716345 () T!32482)

(assert (=> d!566227 (= lt!716345 (head!4336 (list!8334 (left!16492 (c!302209 thiss!5788)))))))

(declare-fun e!1184284 () T!32482)

(assert (=> d!566227 (= lt!716345 e!1184284)))

(declare-fun c!302231 () Bool)

(assert (=> d!566227 (= c!302231 ((_ is Leaf!9951) (left!16492 (c!302209 thiss!5788))))))

(assert (=> d!566227 (isBalanced!2119 (left!16492 (c!302209 thiss!5788)))))

(assert (=> d!566227 (= (head!4334 (left!16492 (c!302209 thiss!5788))) lt!716345)))

(declare-fun b!1852842 () Bool)

(assert (=> b!1852842 (= e!1184284 (apply!5460 (xs!9678 (left!16492 (c!302209 thiss!5788))) 0))))

(declare-fun b!1852843 () Bool)

(assert (=> b!1852843 (= e!1184284 (head!4334 (left!16492 (left!16492 (c!302209 thiss!5788)))))))

(assert (= (and d!566227 c!302231) b!1852842))

(assert (= (and d!566227 (not c!302231)) b!1852843))

(assert (=> d!566227 m!2279621))

(assert (=> d!566227 m!2279621))

(declare-fun m!2279691 () Bool)

(assert (=> d!566227 m!2279691))

(assert (=> d!566227 m!2279682))

(declare-fun m!2279693 () Bool)

(assert (=> b!1852842 m!2279693))

(declare-fun m!2279695 () Bool)

(assert (=> b!1852843 m!2279695))

(assert (=> b!1852733 d!566227))

(declare-fun d!566231 () Bool)

(assert (=> d!566231 (= (inv!26949 (xs!9678 (c!302209 thiss!5788))) (<= (size!16238 (innerList!6862 (xs!9678 (c!302209 thiss!5788)))) 2147483647))))

(declare-fun bs!410487 () Bool)

(assert (= bs!410487 d!566231))

(declare-fun m!2279697 () Bool)

(assert (=> bs!410487 m!2279697))

(assert (=> b!1852763 d!566231))

(assert (=> d!566199 d!566221))

(declare-fun d!566233 () Bool)

(declare-fun res!831348 () Bool)

(declare-fun e!1184293 () Bool)

(assert (=> d!566233 (=> (not res!831348) (not e!1184293))))

(declare-fun size!16241 (Conc!6802) Int)

(assert (=> d!566233 (= res!831348 (= (csize!13834 (c!302209 thiss!5788)) (+ (size!16241 (left!16492 (c!302209 thiss!5788))) (size!16241 (right!16822 (c!302209 thiss!5788))))))))

(assert (=> d!566233 (= (inv!26944 (c!302209 thiss!5788)) e!1184293)))

(declare-fun b!1852862 () Bool)

(declare-fun res!831349 () Bool)

(assert (=> b!1852862 (=> (not res!831349) (not e!1184293))))

(assert (=> b!1852862 (= res!831349 (and (not (= (left!16492 (c!302209 thiss!5788)) Empty!6802)) (not (= (right!16822 (c!302209 thiss!5788)) Empty!6802))))))

(declare-fun b!1852863 () Bool)

(declare-fun res!831350 () Bool)

(assert (=> b!1852863 (=> (not res!831350) (not e!1184293))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1852863 (= res!831350 (= (cheight!7013 (c!302209 thiss!5788)) (+ (max!0 (height!1031 (left!16492 (c!302209 thiss!5788))) (height!1031 (right!16822 (c!302209 thiss!5788)))) 1)))))

(declare-fun b!1852864 () Bool)

(assert (=> b!1852864 (= e!1184293 (<= 0 (cheight!7013 (c!302209 thiss!5788))))))

(assert (= (and d!566233 res!831348) b!1852862))

(assert (= (and b!1852862 res!831349) b!1852863))

(assert (= (and b!1852863 res!831350) b!1852864))

(declare-fun m!2279703 () Bool)

(assert (=> d!566233 m!2279703))

(declare-fun m!2279705 () Bool)

(assert (=> d!566233 m!2279705))

(assert (=> b!1852863 m!2279677))

(assert (=> b!1852863 m!2279679))

(assert (=> b!1852863 m!2279677))

(assert (=> b!1852863 m!2279679))

(declare-fun m!2279707 () Bool)

(assert (=> b!1852863 m!2279707))

(assert (=> b!1852719 d!566233))

(declare-fun d!566237 () Bool)

(assert (=> d!566237 (= (isEmpty!12812 (list!8332 thiss!5788)) ((_ is Nil!20559) (list!8332 thiss!5788)))))

(assert (=> d!566197 d!566237))

(assert (=> d!566197 d!566187))

(declare-fun d!566239 () Bool)

(declare-fun lt!716348 () Bool)

(assert (=> d!566239 (= lt!716348 (isEmpty!12812 (list!8334 (c!302209 thiss!5788))))))

(assert (=> d!566239 (= lt!716348 (= (size!16241 (c!302209 thiss!5788)) 0))))

(assert (=> d!566239 (= (isEmpty!12813 (c!302209 thiss!5788)) lt!716348)))

(declare-fun bs!410489 () Bool)

(assert (= bs!410489 d!566239))

(assert (=> bs!410489 m!2279575))

(assert (=> bs!410489 m!2279575))

(declare-fun m!2279713 () Bool)

(assert (=> bs!410489 m!2279713))

(declare-fun m!2279715 () Bool)

(assert (=> bs!410489 m!2279715))

(assert (=> d!566197 d!566239))

(declare-fun tp!525237 () Bool)

(declare-fun tp!525236 () Bool)

(declare-fun e!1184298 () Bool)

(declare-fun b!1852871 () Bool)

(assert (=> b!1852871 (= e!1184298 (and (inv!26943 (left!16492 (left!16492 (c!302209 thiss!5788)))) tp!525236 (inv!26943 (right!16822 (left!16492 (c!302209 thiss!5788)))) tp!525237))))

(declare-fun b!1852873 () Bool)

(declare-fun e!1184297 () Bool)

(declare-fun tp!525235 () Bool)

(assert (=> b!1852873 (= e!1184297 tp!525235)))

(declare-fun b!1852872 () Bool)

(assert (=> b!1852872 (= e!1184298 (and (inv!26949 (xs!9678 (left!16492 (c!302209 thiss!5788)))) e!1184297))))

(assert (=> b!1852762 (= tp!525233 (and (inv!26943 (left!16492 (c!302209 thiss!5788))) e!1184298))))

(assert (= (and b!1852762 ((_ is Node!6802) (left!16492 (c!302209 thiss!5788)))) b!1852871))

(assert (= b!1852872 b!1852873))

(assert (= (and b!1852762 ((_ is Leaf!9951) (left!16492 (c!302209 thiss!5788)))) b!1852872))

(declare-fun m!2279717 () Bool)

(assert (=> b!1852871 m!2279717))

(declare-fun m!2279719 () Bool)

(assert (=> b!1852871 m!2279719))

(declare-fun m!2279723 () Bool)

(assert (=> b!1852872 m!2279723))

(assert (=> b!1852762 m!2279611))

(declare-fun b!1852877 () Bool)

(declare-fun e!1184302 () Bool)

(declare-fun tp!525239 () Bool)

(declare-fun tp!525240 () Bool)

(assert (=> b!1852877 (= e!1184302 (and (inv!26943 (left!16492 (right!16822 (c!302209 thiss!5788)))) tp!525239 (inv!26943 (right!16822 (right!16822 (c!302209 thiss!5788)))) tp!525240))))

(declare-fun b!1852879 () Bool)

(declare-fun e!1184301 () Bool)

(declare-fun tp!525238 () Bool)

(assert (=> b!1852879 (= e!1184301 tp!525238)))

(declare-fun b!1852878 () Bool)

(assert (=> b!1852878 (= e!1184302 (and (inv!26949 (xs!9678 (right!16822 (c!302209 thiss!5788)))) e!1184301))))

(assert (=> b!1852762 (= tp!525234 (and (inv!26943 (right!16822 (c!302209 thiss!5788))) e!1184302))))

(assert (= (and b!1852762 ((_ is Node!6802) (right!16822 (c!302209 thiss!5788)))) b!1852877))

(assert (= b!1852878 b!1852879))

(assert (= (and b!1852762 ((_ is Leaf!9951) (right!16822 (c!302209 thiss!5788)))) b!1852878))

(declare-fun m!2279731 () Bool)

(assert (=> b!1852877 m!2279731))

(declare-fun m!2279733 () Bool)

(assert (=> b!1852877 m!2279733))

(declare-fun m!2279735 () Bool)

(assert (=> b!1852878 m!2279735))

(assert (=> b!1852762 m!2279613))

(declare-fun b!1852892 () Bool)

(declare-fun e!1184310 () Bool)

(declare-fun tp_is_empty!8503 () Bool)

(declare-fun tp!525246 () Bool)

(assert (=> b!1852892 (= e!1184310 (and tp_is_empty!8503 tp!525246))))

(assert (=> b!1852764 (= tp!525232 e!1184310)))

(assert (= (and b!1852764 ((_ is Cons!20559) (innerList!6862 (xs!9678 (c!302209 thiss!5788))))) b!1852892))

(check-sat (not b!1852879) (not b!1852799) (not b!1852762) (not b!1852780) (not b!1852833) (not d!566213) (not b!1852776) (not b!1852837) (not b!1852878) (not b!1852842) tp_is_empty!8503 (not b!1852779) (not b!1852834) (not b!1852782) (not b!1852872) (not d!566239) (not d!566233) (not b!1852777) (not d!566227) (not b!1852809) (not b!1852843) (not d!566215) (not b!1852871) (not b!1852873) (not b!1852838) (not b!1852863) (not d!566231) (not b!1852835) (not b!1852775) (not b!1852892) (not b!1852877) (not b!1852836))
(check-sat)
