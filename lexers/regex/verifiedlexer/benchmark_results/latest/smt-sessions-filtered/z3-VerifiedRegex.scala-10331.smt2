; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536792 () Bool)

(assert start!536792)

(declare-datatypes ((T!105712 0))(
  ( (T!105713 (val!23738 Int)) )
))
(declare-datatypes ((List!58667 0))(
  ( (Nil!58543) (Cons!58543 (h!64991 T!105712) (t!371620 List!58667)) )
))
(declare-datatypes ((IArray!31369 0))(
  ( (IArray!31370 (innerList!15742 List!58667)) )
))
(declare-datatypes ((Conc!15654 0))(
  ( (Node!15654 (left!42961 Conc!15654) (right!43291 Conc!15654) (csize!31538 Int) (cheight!15865 Int)) (Leaf!25986 (xs!19036 IArray!31369) (csize!31539 Int)) (Empty!15654) )
))
(declare-datatypes ((BalanceConc!30426 0))(
  ( (BalanceConc!30427 (c!875389 Conc!15654)) )
))
(declare-fun thiss!5769 () BalanceConc!30426)

(declare-fun isEmpty!31691 (Conc!15654) Bool)

(declare-fun isEmpty!31692 (List!58667) Bool)

(declare-fun list!19135 (BalanceConc!30426) List!58667)

(assert (=> start!536792 (not (= (isEmpty!31691 (c!875389 thiss!5769)) (isEmpty!31692 (list!19135 thiss!5769))))))

(declare-fun e!3176265 () Bool)

(declare-fun inv!78042 (BalanceConc!30426) Bool)

(assert (=> start!536792 (and (inv!78042 thiss!5769) e!3176265)))

(declare-fun b!5093190 () Bool)

(declare-fun tp!1419765 () Bool)

(declare-fun inv!78043 (Conc!15654) Bool)

(assert (=> b!5093190 (= e!3176265 (and (inv!78043 (c!875389 thiss!5769)) tp!1419765))))

(assert (= start!536792 b!5093190))

(declare-fun m!6151448 () Bool)

(assert (=> start!536792 m!6151448))

(declare-fun m!6151450 () Bool)

(assert (=> start!536792 m!6151450))

(assert (=> start!536792 m!6151450))

(declare-fun m!6151452 () Bool)

(assert (=> start!536792 m!6151452))

(declare-fun m!6151454 () Bool)

(assert (=> start!536792 m!6151454))

(declare-fun m!6151456 () Bool)

(assert (=> b!5093190 m!6151456))

(check-sat (not start!536792) (not b!5093190))
(check-sat)
(get-model)

(declare-fun d!1648646 () Bool)

(declare-fun lt!2092707 () Bool)

(declare-fun list!19136 (Conc!15654) List!58667)

(assert (=> d!1648646 (= lt!2092707 (isEmpty!31692 (list!19136 (c!875389 thiss!5769))))))

(declare-fun size!39246 (Conc!15654) Int)

(assert (=> d!1648646 (= lt!2092707 (= (size!39246 (c!875389 thiss!5769)) 0))))

(assert (=> d!1648646 (= (isEmpty!31691 (c!875389 thiss!5769)) lt!2092707)))

(declare-fun bs!1191257 () Bool)

(assert (= bs!1191257 d!1648646))

(declare-fun m!6151458 () Bool)

(assert (=> bs!1191257 m!6151458))

(assert (=> bs!1191257 m!6151458))

(declare-fun m!6151460 () Bool)

(assert (=> bs!1191257 m!6151460))

(declare-fun m!6151462 () Bool)

(assert (=> bs!1191257 m!6151462))

(assert (=> start!536792 d!1648646))

(declare-fun d!1648648 () Bool)

(get-info :version)

(assert (=> d!1648648 (= (isEmpty!31692 (list!19135 thiss!5769)) ((_ is Nil!58543) (list!19135 thiss!5769)))))

(assert (=> start!536792 d!1648648))

(declare-fun d!1648650 () Bool)

(assert (=> d!1648650 (= (list!19135 thiss!5769) (list!19136 (c!875389 thiss!5769)))))

(declare-fun bs!1191258 () Bool)

(assert (= bs!1191258 d!1648650))

(assert (=> bs!1191258 m!6151458))

(assert (=> start!536792 d!1648650))

(declare-fun d!1648652 () Bool)

(declare-fun isBalanced!4463 (Conc!15654) Bool)

(assert (=> d!1648652 (= (inv!78042 thiss!5769) (isBalanced!4463 (c!875389 thiss!5769)))))

(declare-fun bs!1191259 () Bool)

(assert (= bs!1191259 d!1648652))

(declare-fun m!6151468 () Bool)

(assert (=> bs!1191259 m!6151468))

(assert (=> start!536792 d!1648652))

(declare-fun d!1648656 () Bool)

(declare-fun c!875395 () Bool)

(assert (=> d!1648656 (= c!875395 ((_ is Node!15654) (c!875389 thiss!5769)))))

(declare-fun e!3176276 () Bool)

(assert (=> d!1648656 (= (inv!78043 (c!875389 thiss!5769)) e!3176276)))

(declare-fun b!5093208 () Bool)

(declare-fun inv!78046 (Conc!15654) Bool)

(assert (=> b!5093208 (= e!3176276 (inv!78046 (c!875389 thiss!5769)))))

(declare-fun b!5093209 () Bool)

(declare-fun e!3176277 () Bool)

(assert (=> b!5093209 (= e!3176276 e!3176277)))

(declare-fun res!2167468 () Bool)

(assert (=> b!5093209 (= res!2167468 (not ((_ is Leaf!25986) (c!875389 thiss!5769))))))

(assert (=> b!5093209 (=> res!2167468 e!3176277)))

(declare-fun b!5093210 () Bool)

(declare-fun inv!78047 (Conc!15654) Bool)

(assert (=> b!5093210 (= e!3176277 (inv!78047 (c!875389 thiss!5769)))))

(assert (= (and d!1648656 c!875395) b!5093208))

(assert (= (and d!1648656 (not c!875395)) b!5093209))

(assert (= (and b!5093209 (not res!2167468)) b!5093210))

(declare-fun m!6151478 () Bool)

(assert (=> b!5093208 m!6151478))

(declare-fun m!6151480 () Bool)

(assert (=> b!5093210 m!6151480))

(assert (=> b!5093190 d!1648656))

(declare-fun e!3176289 () Bool)

(declare-fun b!5093228 () Bool)

(declare-fun tp!1419783 () Bool)

(declare-fun tp!1419782 () Bool)

(assert (=> b!5093228 (= e!3176289 (and (inv!78043 (left!42961 (c!875389 thiss!5769))) tp!1419783 (inv!78043 (right!43291 (c!875389 thiss!5769))) tp!1419782))))

(declare-fun b!5093230 () Bool)

(declare-fun e!3176288 () Bool)

(declare-fun tp!1419781 () Bool)

(assert (=> b!5093230 (= e!3176288 tp!1419781)))

(declare-fun b!5093229 () Bool)

(declare-fun inv!78048 (IArray!31369) Bool)

(assert (=> b!5093229 (= e!3176289 (and (inv!78048 (xs!19036 (c!875389 thiss!5769))) e!3176288))))

(assert (=> b!5093190 (= tp!1419765 (and (inv!78043 (c!875389 thiss!5769)) e!3176289))))

(assert (= (and b!5093190 ((_ is Node!15654) (c!875389 thiss!5769))) b!5093228))

(assert (= b!5093229 b!5093230))

(assert (= (and b!5093190 ((_ is Leaf!25986) (c!875389 thiss!5769))) b!5093229))

(declare-fun m!6151488 () Bool)

(assert (=> b!5093228 m!6151488))

(declare-fun m!6151490 () Bool)

(assert (=> b!5093228 m!6151490))

(declare-fun m!6151492 () Bool)

(assert (=> b!5093229 m!6151492))

(assert (=> b!5093190 m!6151456))

(check-sat (not b!5093228) (not d!1648650) (not d!1648652) (not b!5093229) (not b!5093210) (not b!5093230) (not b!5093208) (not b!5093190) (not d!1648646))
(check-sat)
