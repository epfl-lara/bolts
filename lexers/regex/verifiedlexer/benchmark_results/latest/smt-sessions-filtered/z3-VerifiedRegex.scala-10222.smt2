; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533370 () Bool)

(assert start!533370)

(declare-fun b!5042064 () Bool)

(declare-fun e!3148711 () Bool)

(declare-fun tp!1411246 () Bool)

(assert (=> b!5042064 (= e!3148711 tp!1411246)))

(declare-fun tp!1411247 () Bool)

(declare-datatypes ((T!104222 0))(
  ( (T!104223 (val!23520 Int)) )
))
(declare-datatypes ((List!58430 0))(
  ( (Nil!58306) (Cons!58306 (h!64754 T!104222) (t!370997 List!58430)) )
))
(declare-datatypes ((IArray!31097 0))(
  ( (IArray!31098 (innerList!15606 List!58430)) )
))
(declare-datatypes ((Conc!15518 0))(
  ( (Node!15518 (left!42706 Conc!15518) (right!43036 Conc!15518) (csize!31266 Int) (cheight!15729 Int)) (Leaf!25741 (xs!18844 IArray!31097) (csize!31267 Int)) (Empty!15518) )
))
(declare-fun t!4198 () Conc!15518)

(declare-fun b!5042065 () Bool)

(declare-fun tp!1411245 () Bool)

(declare-fun e!3148709 () Bool)

(declare-fun inv!77183 (Conc!15518) Bool)

(assert (=> b!5042065 (= e!3148709 (and (inv!77183 (left!42706 t!4198)) tp!1411247 (inv!77183 (right!43036 t!4198)) tp!1411245))))

(declare-fun b!5042066 () Bool)

(declare-fun e!3148712 () Bool)

(declare-fun e!3148713 () Bool)

(assert (=> b!5042066 (= e!3148712 (not e!3148713))))

(declare-fun res!2148036 () Bool)

(assert (=> b!5042066 (=> res!2148036 e!3148713)))

(declare-fun i!618 () Int)

(declare-datatypes ((tuple2!63246 0))(
  ( (tuple2!63247 (_1!34926 List!58430) (_2!34926 List!58430)) )
))
(declare-fun lt!2084543 () tuple2!63246)

(declare-fun lt!2084545 () List!58430)

(declare-fun slice!856 (List!58430 Int Int) List!58430)

(assert (=> b!5042066 (= res!2148036 (not (= (_1!34926 lt!2084543) (slice!856 lt!2084545 0 i!618))))))

(declare-fun lt!2084542 () List!58430)

(declare-fun size!38912 (List!58430) Int)

(assert (=> b!5042066 (= lt!2084542 (slice!856 lt!2084545 i!618 (size!38912 lt!2084545)))))

(declare-datatypes ((Unit!149495 0))(
  ( (Unit!149496) )
))
(declare-fun lt!2084544 () Unit!149495)

(declare-fun dropLemma!74 (List!58430 Int) Unit!149495)

(assert (=> b!5042066 (= lt!2084544 (dropLemma!74 lt!2084545 i!618))))

(declare-fun b!5042067 () Bool)

(declare-fun res!2148039 () Bool)

(declare-fun e!3148714 () Bool)

(assert (=> b!5042067 (=> (not res!2148039) (not e!3148714))))

(assert (=> b!5042067 (= res!2148039 (<= 0 i!618))))

(declare-fun b!5042068 () Bool)

(declare-fun e!3148710 () Bool)

(assert (=> b!5042068 (= e!3148710 e!3148712)))

(declare-fun res!2148035 () Bool)

(assert (=> b!5042068 (=> (not res!2148035) (not e!3148712))))

(assert (=> b!5042068 (= res!2148035 (= (_2!34926 lt!2084543) lt!2084542))))

(declare-fun drop!2636 (List!58430 Int) List!58430)

(assert (=> b!5042068 (= lt!2084542 (drop!2636 lt!2084545 i!618))))

(declare-fun res!2148033 () Bool)

(assert (=> start!533370 (=> (not res!2148033) (not e!3148714))))

(declare-fun isBalanced!4380 (Conc!15518) Bool)

(assert (=> start!533370 (= res!2148033 (isBalanced!4380 t!4198))))

(assert (=> start!533370 e!3148714))

(assert (=> start!533370 (and (inv!77183 t!4198) e!3148709)))

(assert (=> start!533370 true))

(declare-fun b!5042069 () Bool)

(declare-fun res!2148034 () Bool)

(assert (=> b!5042069 (=> (not res!2148034) (not e!3148714))))

(get-info :version)

(assert (=> b!5042069 (= res!2148034 (and (not ((_ is Empty!15518) t!4198)) ((_ is Leaf!25741) t!4198) (> i!618 0) (not (= i!618 (csize!31267 t!4198)))))))

(declare-fun b!5042070 () Bool)

(declare-fun inv!77184 (IArray!31097) Bool)

(assert (=> b!5042070 (= e!3148709 (and (inv!77184 (xs!18844 t!4198)) e!3148711))))

(declare-fun b!5042071 () Bool)

(assert (=> b!5042071 (= e!3148714 e!3148710)))

(declare-fun res!2148037 () Bool)

(assert (=> b!5042071 (=> (not res!2148037) (not e!3148710))))

(declare-fun take!829 (List!58430 Int) List!58430)

(assert (=> b!5042071 (= res!2148037 (= (_1!34926 lt!2084543) (take!829 lt!2084545 i!618)))))

(declare-fun splitAtIndex!213 (List!58430 Int) tuple2!63246)

(assert (=> b!5042071 (= lt!2084543 (splitAtIndex!213 lt!2084545 i!618))))

(declare-fun list!18921 (IArray!31097) List!58430)

(assert (=> b!5042071 (= lt!2084545 (list!18921 (xs!18844 t!4198)))))

(declare-fun b!5042072 () Bool)

(declare-fun slice!857 (IArray!31097 Int Int) IArray!31097)

(assert (=> b!5042072 (= e!3148713 (inv!77183 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))

(declare-fun b!5042073 () Bool)

(declare-fun res!2148038 () Bool)

(assert (=> b!5042073 (=> (not res!2148038) (not e!3148714))))

(declare-fun size!38913 (Conc!15518) Int)

(assert (=> b!5042073 (= res!2148038 (<= i!618 (size!38913 t!4198)))))

(assert (= (and start!533370 res!2148033) b!5042067))

(assert (= (and b!5042067 res!2148039) b!5042073))

(assert (= (and b!5042073 res!2148038) b!5042069))

(assert (= (and b!5042069 res!2148034) b!5042071))

(assert (= (and b!5042071 res!2148037) b!5042068))

(assert (= (and b!5042068 res!2148035) b!5042066))

(assert (= (and b!5042066 (not res!2148036)) b!5042072))

(assert (= (and start!533370 ((_ is Node!15518) t!4198)) b!5042065))

(assert (= b!5042070 b!5042064))

(assert (= (and start!533370 ((_ is Leaf!25741) t!4198)) b!5042070))

(declare-fun m!6076454 () Bool)

(assert (=> start!533370 m!6076454))

(declare-fun m!6076456 () Bool)

(assert (=> start!533370 m!6076456))

(declare-fun m!6076458 () Bool)

(assert (=> b!5042070 m!6076458))

(declare-fun m!6076460 () Bool)

(assert (=> b!5042073 m!6076460))

(declare-fun m!6076462 () Bool)

(assert (=> b!5042071 m!6076462))

(declare-fun m!6076464 () Bool)

(assert (=> b!5042071 m!6076464))

(declare-fun m!6076466 () Bool)

(assert (=> b!5042071 m!6076466))

(declare-fun m!6076468 () Bool)

(assert (=> b!5042066 m!6076468))

(declare-fun m!6076470 () Bool)

(assert (=> b!5042066 m!6076470))

(assert (=> b!5042066 m!6076470))

(declare-fun m!6076472 () Bool)

(assert (=> b!5042066 m!6076472))

(declare-fun m!6076474 () Bool)

(assert (=> b!5042066 m!6076474))

(declare-fun m!6076476 () Bool)

(assert (=> b!5042065 m!6076476))

(declare-fun m!6076478 () Bool)

(assert (=> b!5042065 m!6076478))

(declare-fun m!6076480 () Bool)

(assert (=> b!5042068 m!6076480))

(declare-fun m!6076482 () Bool)

(assert (=> b!5042072 m!6076482))

(declare-fun m!6076484 () Bool)

(assert (=> b!5042072 m!6076484))

(check-sat (not b!5042073) (not start!533370) (not b!5042071) (not b!5042070) (not b!5042072) (not b!5042068) (not b!5042066) (not b!5042064) (not b!5042065))
(check-sat)
(get-model)

(declare-fun d!1622311 () Bool)

(declare-fun lt!2084548 () Int)

(declare-fun list!18922 (Conc!15518) List!58430)

(assert (=> d!1622311 (= lt!2084548 (size!38912 (list!18922 t!4198)))))

(assert (=> d!1622311 (= lt!2084548 (ite ((_ is Empty!15518) t!4198) 0 (ite ((_ is Leaf!25741) t!4198) (csize!31267 t!4198) (csize!31266 t!4198))))))

(assert (=> d!1622311 (= (size!38913 t!4198) lt!2084548)))

(declare-fun bs!1188980 () Bool)

(assert (= bs!1188980 d!1622311))

(declare-fun m!6076486 () Bool)

(assert (=> bs!1188980 m!6076486))

(assert (=> bs!1188980 m!6076486))

(declare-fun m!6076488 () Bool)

(assert (=> bs!1188980 m!6076488))

(assert (=> b!5042073 d!1622311))

(declare-fun b!5042116 () Bool)

(declare-fun res!2148063 () Bool)

(declare-fun e!3148738 () Bool)

(assert (=> b!5042116 (=> (not res!2148063) (not e!3148738))))

(assert (=> b!5042116 (= res!2148063 (isBalanced!4380 (left!42706 t!4198)))))

(declare-fun b!5042117 () Bool)

(declare-fun e!3148737 () Bool)

(assert (=> b!5042117 (= e!3148737 e!3148738)))

(declare-fun res!2148059 () Bool)

(assert (=> b!5042117 (=> (not res!2148059) (not e!3148738))))

(declare-fun height!2096 (Conc!15518) Int)

(assert (=> b!5042117 (= res!2148059 (<= (- 1) (- (height!2096 (left!42706 t!4198)) (height!2096 (right!43036 t!4198)))))))

(declare-fun d!1622315 () Bool)

(declare-fun res!2148058 () Bool)

(assert (=> d!1622315 (=> res!2148058 e!3148737)))

(assert (=> d!1622315 (= res!2148058 (not ((_ is Node!15518) t!4198)))))

(assert (=> d!1622315 (= (isBalanced!4380 t!4198) e!3148737)))

(declare-fun b!5042118 () Bool)

(declare-fun res!2148062 () Bool)

(assert (=> b!5042118 (=> (not res!2148062) (not e!3148738))))

(assert (=> b!5042118 (= res!2148062 (isBalanced!4380 (right!43036 t!4198)))))

(declare-fun b!5042119 () Bool)

(declare-fun res!2148061 () Bool)

(assert (=> b!5042119 (=> (not res!2148061) (not e!3148738))))

(assert (=> b!5042119 (= res!2148061 (<= (- (height!2096 (left!42706 t!4198)) (height!2096 (right!43036 t!4198))) 1))))

(declare-fun b!5042120 () Bool)

(declare-fun isEmpty!31541 (Conc!15518) Bool)

(assert (=> b!5042120 (= e!3148738 (not (isEmpty!31541 (right!43036 t!4198))))))

(declare-fun b!5042121 () Bool)

(declare-fun res!2148060 () Bool)

(assert (=> b!5042121 (=> (not res!2148060) (not e!3148738))))

(assert (=> b!5042121 (= res!2148060 (not (isEmpty!31541 (left!42706 t!4198))))))

(assert (= (and d!1622315 (not res!2148058)) b!5042117))

(assert (= (and b!5042117 res!2148059) b!5042119))

(assert (= (and b!5042119 res!2148061) b!5042116))

(assert (= (and b!5042116 res!2148063) b!5042118))

(assert (= (and b!5042118 res!2148062) b!5042121))

(assert (= (and b!5042121 res!2148060) b!5042120))

(declare-fun m!6076498 () Bool)

(assert (=> b!5042116 m!6076498))

(declare-fun m!6076500 () Bool)

(assert (=> b!5042120 m!6076500))

(declare-fun m!6076502 () Bool)

(assert (=> b!5042118 m!6076502))

(declare-fun m!6076504 () Bool)

(assert (=> b!5042119 m!6076504))

(declare-fun m!6076506 () Bool)

(assert (=> b!5042119 m!6076506))

(assert (=> b!5042117 m!6076504))

(assert (=> b!5042117 m!6076506))

(declare-fun m!6076508 () Bool)

(assert (=> b!5042121 m!6076508))

(assert (=> start!533370 d!1622315))

(declare-fun d!1622321 () Bool)

(declare-fun c!864018 () Bool)

(assert (=> d!1622321 (= c!864018 ((_ is Node!15518) t!4198))))

(declare-fun e!3148748 () Bool)

(assert (=> d!1622321 (= (inv!77183 t!4198) e!3148748)))

(declare-fun b!5042137 () Bool)

(declare-fun inv!77187 (Conc!15518) Bool)

(assert (=> b!5042137 (= e!3148748 (inv!77187 t!4198))))

(declare-fun b!5042138 () Bool)

(declare-fun e!3148749 () Bool)

(assert (=> b!5042138 (= e!3148748 e!3148749)))

(declare-fun res!2148067 () Bool)

(assert (=> b!5042138 (= res!2148067 (not ((_ is Leaf!25741) t!4198)))))

(assert (=> b!5042138 (=> res!2148067 e!3148749)))

(declare-fun b!5042139 () Bool)

(declare-fun inv!77188 (Conc!15518) Bool)

(assert (=> b!5042139 (= e!3148749 (inv!77188 t!4198))))

(assert (= (and d!1622321 c!864018) b!5042137))

(assert (= (and d!1622321 (not c!864018)) b!5042138))

(assert (= (and b!5042138 (not res!2148067)) b!5042139))

(declare-fun m!6076518 () Bool)

(assert (=> b!5042137 m!6076518))

(declare-fun m!6076520 () Bool)

(assert (=> b!5042139 m!6076520))

(assert (=> start!533370 d!1622321))

(declare-fun b!5042179 () Bool)

(declare-fun e!3148772 () List!58430)

(assert (=> b!5042179 (= e!3148772 lt!2084545)))

(declare-fun b!5042180 () Bool)

(declare-fun e!3148773 () Int)

(declare-fun e!3148776 () Int)

(assert (=> b!5042180 (= e!3148773 e!3148776)))

(declare-fun c!864037 () Bool)

(declare-fun call!351429 () Int)

(assert (=> b!5042180 (= c!864037 (>= i!618 call!351429))))

(declare-fun b!5042181 () Bool)

(declare-fun e!3148775 () List!58430)

(assert (=> b!5042181 (= e!3148775 e!3148772)))

(declare-fun c!864038 () Bool)

(assert (=> b!5042181 (= c!864038 (<= i!618 0))))

(declare-fun bm!351424 () Bool)

(assert (=> bm!351424 (= call!351429 (size!38912 lt!2084545))))

(declare-fun b!5042182 () Bool)

(assert (=> b!5042182 (= e!3148775 Nil!58306)))

(declare-fun b!5042183 () Bool)

(assert (=> b!5042183 (= e!3148772 (drop!2636 (t!370997 lt!2084545) (- i!618 1)))))

(declare-fun d!1622325 () Bool)

(declare-fun e!3148774 () Bool)

(assert (=> d!1622325 e!3148774))

(declare-fun res!2148073 () Bool)

(assert (=> d!1622325 (=> (not res!2148073) (not e!3148774))))

(declare-fun lt!2084557 () List!58430)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10359 (List!58430) (InoxSet T!104222))

(assert (=> d!1622325 (= res!2148073 (= ((_ map implies) (content!10359 lt!2084557) (content!10359 lt!2084545)) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622325 (= lt!2084557 e!3148775)))

(declare-fun c!864039 () Bool)

(assert (=> d!1622325 (= c!864039 ((_ is Nil!58306) lt!2084545))))

(assert (=> d!1622325 (= (drop!2636 lt!2084545 i!618) lt!2084557)))

(declare-fun b!5042184 () Bool)

(assert (=> b!5042184 (= e!3148774 (= (size!38912 lt!2084557) e!3148773))))

(declare-fun c!864036 () Bool)

(assert (=> b!5042184 (= c!864036 (<= i!618 0))))

(declare-fun b!5042185 () Bool)

(assert (=> b!5042185 (= e!3148773 call!351429)))

(declare-fun b!5042186 () Bool)

(assert (=> b!5042186 (= e!3148776 0)))

(declare-fun b!5042187 () Bool)

(assert (=> b!5042187 (= e!3148776 (- call!351429 i!618))))

(assert (= (and d!1622325 c!864039) b!5042182))

(assert (= (and d!1622325 (not c!864039)) b!5042181))

(assert (= (and b!5042181 c!864038) b!5042179))

(assert (= (and b!5042181 (not c!864038)) b!5042183))

(assert (= (and d!1622325 res!2148073) b!5042184))

(assert (= (and b!5042184 c!864036) b!5042185))

(assert (= (and b!5042184 (not c!864036)) b!5042180))

(assert (= (and b!5042180 c!864037) b!5042186))

(assert (= (and b!5042180 (not c!864037)) b!5042187))

(assert (= (or b!5042185 b!5042180 b!5042187) bm!351424))

(assert (=> bm!351424 m!6076470))

(declare-fun m!6076528 () Bool)

(assert (=> b!5042183 m!6076528))

(declare-fun m!6076530 () Bool)

(assert (=> d!1622325 m!6076530))

(declare-fun m!6076532 () Bool)

(assert (=> d!1622325 m!6076532))

(declare-fun m!6076534 () Bool)

(assert (=> b!5042184 m!6076534))

(assert (=> b!5042068 d!1622325))

(declare-fun d!1622329 () Bool)

(assert (=> d!1622329 (= (slice!856 lt!2084545 0 i!618) (take!829 (drop!2636 lt!2084545 0) (- i!618 0)))))

(declare-fun bs!1188981 () Bool)

(assert (= bs!1188981 d!1622329))

(declare-fun m!6076536 () Bool)

(assert (=> bs!1188981 m!6076536))

(assert (=> bs!1188981 m!6076536))

(declare-fun m!6076538 () Bool)

(assert (=> bs!1188981 m!6076538))

(assert (=> b!5042066 d!1622329))

(declare-fun d!1622331 () Bool)

(assert (=> d!1622331 (= (slice!856 lt!2084545 i!618 (size!38912 lt!2084545)) (take!829 (drop!2636 lt!2084545 i!618) (- (size!38912 lt!2084545) i!618)))))

(declare-fun bs!1188982 () Bool)

(assert (= bs!1188982 d!1622331))

(assert (=> bs!1188982 m!6076480))

(assert (=> bs!1188982 m!6076480))

(declare-fun m!6076540 () Bool)

(assert (=> bs!1188982 m!6076540))

(assert (=> b!5042066 d!1622331))

(declare-fun d!1622333 () Bool)

(declare-fun lt!2084566 () Int)

(assert (=> d!1622333 (>= lt!2084566 0)))

(declare-fun e!3148788 () Int)

(assert (=> d!1622333 (= lt!2084566 e!3148788)))

(declare-fun c!864048 () Bool)

(assert (=> d!1622333 (= c!864048 ((_ is Nil!58306) lt!2084545))))

(assert (=> d!1622333 (= (size!38912 lt!2084545) lt!2084566)))

(declare-fun b!5042210 () Bool)

(assert (=> b!5042210 (= e!3148788 0)))

(declare-fun b!5042211 () Bool)

(assert (=> b!5042211 (= e!3148788 (+ 1 (size!38912 (t!370997 lt!2084545))))))

(assert (= (and d!1622333 c!864048) b!5042210))

(assert (= (and d!1622333 (not c!864048)) b!5042211))

(declare-fun m!6076546 () Bool)

(assert (=> b!5042211 m!6076546))

(assert (=> b!5042066 d!1622333))

(declare-fun d!1622339 () Bool)

(assert (=> d!1622339 (= (drop!2636 lt!2084545 i!618) (slice!856 lt!2084545 i!618 (size!38912 lt!2084545)))))

(declare-fun lt!2084572 () Unit!149495)

(declare-fun choose!37259 (List!58430 Int) Unit!149495)

(assert (=> d!1622339 (= lt!2084572 (choose!37259 lt!2084545 i!618))))

(declare-fun e!3148791 () Bool)

(assert (=> d!1622339 e!3148791))

(declare-fun res!2148082 () Bool)

(assert (=> d!1622339 (=> (not res!2148082) (not e!3148791))))

(assert (=> d!1622339 (= res!2148082 (<= 0 i!618))))

(assert (=> d!1622339 (= (dropLemma!74 lt!2084545 i!618) lt!2084572)))

(declare-fun b!5042214 () Bool)

(assert (=> b!5042214 (= e!3148791 (<= i!618 (size!38912 lt!2084545)))))

(assert (= (and d!1622339 res!2148082) b!5042214))

(assert (=> d!1622339 m!6076480))

(assert (=> d!1622339 m!6076470))

(assert (=> d!1622339 m!6076470))

(assert (=> d!1622339 m!6076472))

(declare-fun m!6076552 () Bool)

(assert (=> d!1622339 m!6076552))

(assert (=> b!5042214 m!6076470))

(assert (=> b!5042066 d!1622339))

(declare-fun d!1622343 () Bool)

(declare-fun c!864049 () Bool)

(assert (=> d!1622343 (= c!864049 ((_ is Node!15518) (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))

(declare-fun e!3148796 () Bool)

(assert (=> d!1622343 (= (inv!77183 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) e!3148796)))

(declare-fun b!5042227 () Bool)

(assert (=> b!5042227 (= e!3148796 (inv!77187 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))

(declare-fun b!5042228 () Bool)

(declare-fun e!3148797 () Bool)

(assert (=> b!5042228 (= e!3148796 e!3148797)))

(declare-fun res!2148095 () Bool)

(assert (=> b!5042228 (= res!2148095 (not ((_ is Leaf!25741) (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))

(assert (=> b!5042228 (=> res!2148095 e!3148797)))

(declare-fun b!5042229 () Bool)

(assert (=> b!5042229 (= e!3148797 (inv!77188 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))

(assert (= (and d!1622343 c!864049) b!5042227))

(assert (= (and d!1622343 (not c!864049)) b!5042228))

(assert (= (and b!5042228 (not res!2148095)) b!5042229))

(declare-fun m!6076554 () Bool)

(assert (=> b!5042227 m!6076554))

(declare-fun m!6076556 () Bool)

(assert (=> b!5042229 m!6076556))

(assert (=> b!5042072 d!1622343))

(declare-fun d!1622345 () Bool)

(declare-fun lt!2084575 () IArray!31097)

(assert (=> d!1622345 (= lt!2084575 (IArray!31098 (slice!856 (list!18921 (xs!18844 t!4198)) i!618 (csize!31267 t!4198))))))

(declare-fun choose!37261 (IArray!31097 Int Int) IArray!31097)

(assert (=> d!1622345 (= lt!2084575 (choose!37261 (xs!18844 t!4198) i!618 (csize!31267 t!4198)))))

(declare-fun e!3148804 () Bool)

(assert (=> d!1622345 e!3148804))

(declare-fun res!2148105 () Bool)

(assert (=> d!1622345 (=> (not res!2148105) (not e!3148804))))

(assert (=> d!1622345 (= res!2148105 (and (<= 0 i!618) (<= i!618 (csize!31267 t!4198))))))

(assert (=> d!1622345 (= (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) lt!2084575)))

(declare-fun b!5042241 () Bool)

(declare-fun size!38914 (IArray!31097) Int)

(assert (=> b!5042241 (= e!3148804 (<= (csize!31267 t!4198) (size!38914 (xs!18844 t!4198))))))

(assert (= (and d!1622345 res!2148105) b!5042241))

(assert (=> d!1622345 m!6076466))

(assert (=> d!1622345 m!6076466))

(declare-fun m!6076580 () Bool)

(assert (=> d!1622345 m!6076580))

(declare-fun m!6076582 () Bool)

(assert (=> d!1622345 m!6076582))

(declare-fun m!6076584 () Bool)

(assert (=> b!5042241 m!6076584))

(assert (=> b!5042072 d!1622345))

(declare-fun d!1622355 () Bool)

(declare-fun c!864051 () Bool)

(assert (=> d!1622355 (= c!864051 ((_ is Node!15518) (left!42706 t!4198)))))

(declare-fun e!3148805 () Bool)

(assert (=> d!1622355 (= (inv!77183 (left!42706 t!4198)) e!3148805)))

(declare-fun b!5042242 () Bool)

(assert (=> b!5042242 (= e!3148805 (inv!77187 (left!42706 t!4198)))))

(declare-fun b!5042243 () Bool)

(declare-fun e!3148806 () Bool)

(assert (=> b!5042243 (= e!3148805 e!3148806)))

(declare-fun res!2148106 () Bool)

(assert (=> b!5042243 (= res!2148106 (not ((_ is Leaf!25741) (left!42706 t!4198))))))

(assert (=> b!5042243 (=> res!2148106 e!3148806)))

(declare-fun b!5042244 () Bool)

(assert (=> b!5042244 (= e!3148806 (inv!77188 (left!42706 t!4198)))))

(assert (= (and d!1622355 c!864051) b!5042242))

(assert (= (and d!1622355 (not c!864051)) b!5042243))

(assert (= (and b!5042243 (not res!2148106)) b!5042244))

(declare-fun m!6076586 () Bool)

(assert (=> b!5042242 m!6076586))

(declare-fun m!6076588 () Bool)

(assert (=> b!5042244 m!6076588))

(assert (=> b!5042065 d!1622355))

(declare-fun d!1622357 () Bool)

(declare-fun c!864054 () Bool)

(assert (=> d!1622357 (= c!864054 ((_ is Node!15518) (right!43036 t!4198)))))

(declare-fun e!3148809 () Bool)

(assert (=> d!1622357 (= (inv!77183 (right!43036 t!4198)) e!3148809)))

(declare-fun b!5042249 () Bool)

(assert (=> b!5042249 (= e!3148809 (inv!77187 (right!43036 t!4198)))))

(declare-fun b!5042250 () Bool)

(declare-fun e!3148810 () Bool)

(assert (=> b!5042250 (= e!3148809 e!3148810)))

(declare-fun res!2148107 () Bool)

(assert (=> b!5042250 (= res!2148107 (not ((_ is Leaf!25741) (right!43036 t!4198))))))

(assert (=> b!5042250 (=> res!2148107 e!3148810)))

(declare-fun b!5042251 () Bool)

(assert (=> b!5042251 (= e!3148810 (inv!77188 (right!43036 t!4198)))))

(assert (= (and d!1622357 c!864054) b!5042249))

(assert (= (and d!1622357 (not c!864054)) b!5042250))

(assert (= (and b!5042250 (not res!2148107)) b!5042251))

(declare-fun m!6076590 () Bool)

(assert (=> b!5042249 m!6076590))

(declare-fun m!6076592 () Bool)

(assert (=> b!5042251 m!6076592))

(assert (=> b!5042065 d!1622357))

(declare-fun d!1622359 () Bool)

(assert (=> d!1622359 (= (inv!77184 (xs!18844 t!4198)) (<= (size!38912 (innerList!15606 (xs!18844 t!4198))) 2147483647))))

(declare-fun bs!1188986 () Bool)

(assert (= bs!1188986 d!1622359))

(declare-fun m!6076596 () Bool)

(assert (=> bs!1188986 m!6076596))

(assert (=> b!5042070 d!1622359))

(declare-fun d!1622363 () Bool)

(declare-fun e!3148829 () Bool)

(assert (=> d!1622363 e!3148829))

(declare-fun res!2148117 () Bool)

(assert (=> d!1622363 (=> (not res!2148117) (not e!3148829))))

(declare-fun lt!2084587 () List!58430)

(assert (=> d!1622363 (= res!2148117 (= ((_ map implies) (content!10359 lt!2084587) (content!10359 lt!2084545)) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3148830 () List!58430)

(assert (=> d!1622363 (= lt!2084587 e!3148830)))

(declare-fun c!864064 () Bool)

(assert (=> d!1622363 (= c!864064 (or ((_ is Nil!58306) lt!2084545) (<= i!618 0)))))

(assert (=> d!1622363 (= (take!829 lt!2084545 i!618) lt!2084587)))

(declare-fun b!5042277 () Bool)

(assert (=> b!5042277 (= e!3148830 (Cons!58306 (h!64754 lt!2084545) (take!829 (t!370997 lt!2084545) (- i!618 1))))))

(declare-fun b!5042278 () Bool)

(assert (=> b!5042278 (= e!3148830 Nil!58306)))

(declare-fun b!5042279 () Bool)

(declare-fun e!3148831 () Int)

(assert (=> b!5042279 (= e!3148829 (= (size!38912 lt!2084587) e!3148831))))

(declare-fun c!864065 () Bool)

(assert (=> b!5042279 (= c!864065 (<= i!618 0))))

(declare-fun b!5042280 () Bool)

(declare-fun e!3148828 () Int)

(assert (=> b!5042280 (= e!3148828 (size!38912 lt!2084545))))

(declare-fun b!5042281 () Bool)

(assert (=> b!5042281 (= e!3148831 e!3148828)))

(declare-fun c!864063 () Bool)

(assert (=> b!5042281 (= c!864063 (>= i!618 (size!38912 lt!2084545)))))

(declare-fun b!5042282 () Bool)

(assert (=> b!5042282 (= e!3148828 i!618)))

(declare-fun b!5042283 () Bool)

(assert (=> b!5042283 (= e!3148831 0)))

(assert (= (and d!1622363 c!864064) b!5042278))

(assert (= (and d!1622363 (not c!864064)) b!5042277))

(assert (= (and d!1622363 res!2148117) b!5042279))

(assert (= (and b!5042279 c!864065) b!5042283))

(assert (= (and b!5042279 (not c!864065)) b!5042281))

(assert (= (and b!5042281 c!864063) b!5042280))

(assert (= (and b!5042281 (not c!864063)) b!5042282))

(assert (=> b!5042281 m!6076470))

(declare-fun m!6076610 () Bool)

(assert (=> d!1622363 m!6076610))

(assert (=> d!1622363 m!6076532))

(declare-fun m!6076612 () Bool)

(assert (=> b!5042277 m!6076612))

(assert (=> b!5042280 m!6076470))

(declare-fun m!6076614 () Bool)

(assert (=> b!5042279 m!6076614))

(assert (=> b!5042071 d!1622363))

(declare-fun b!5042315 () Bool)

(declare-fun res!2148123 () Bool)

(declare-fun e!3148851 () Bool)

(assert (=> b!5042315 (=> (not res!2148123) (not e!3148851))))

(declare-fun lt!2084592 () tuple2!63246)

(assert (=> b!5042315 (= res!2148123 (= (_1!34926 lt!2084592) (take!829 lt!2084545 i!618)))))

(declare-fun b!5042316 () Bool)

(declare-fun e!3148850 () tuple2!63246)

(assert (=> b!5042316 (= e!3148850 (tuple2!63247 Nil!58306 Nil!58306))))

(declare-fun b!5042317 () Bool)

(declare-fun e!3148849 () tuple2!63246)

(assert (=> b!5042317 (= e!3148849 (tuple2!63247 Nil!58306 lt!2084545))))

(declare-fun b!5042318 () Bool)

(assert (=> b!5042318 (= e!3148851 (= (_2!34926 lt!2084592) (drop!2636 lt!2084545 i!618)))))

(declare-fun b!5042319 () Bool)

(assert (=> b!5042319 (= e!3148850 e!3148849)))

(declare-fun c!864070 () Bool)

(assert (=> b!5042319 (= c!864070 (<= i!618 0))))

(declare-fun b!5042320 () Bool)

(declare-fun lt!2084593 () tuple2!63246)

(assert (=> b!5042320 (= lt!2084593 (splitAtIndex!213 (t!370997 lt!2084545) (- i!618 1)))))

(assert (=> b!5042320 (= e!3148849 (tuple2!63247 (Cons!58306 (h!64754 lt!2084545) (_1!34926 lt!2084593)) (_2!34926 lt!2084593)))))

(declare-fun d!1622371 () Bool)

(assert (=> d!1622371 e!3148851))

(declare-fun res!2148122 () Bool)

(assert (=> d!1622371 (=> (not res!2148122) (not e!3148851))))

(declare-fun ++!12731 (List!58430 List!58430) List!58430)

(assert (=> d!1622371 (= res!2148122 (= (++!12731 (_1!34926 lt!2084592) (_2!34926 lt!2084592)) lt!2084545))))

(assert (=> d!1622371 (= lt!2084592 e!3148850)))

(declare-fun c!864071 () Bool)

(assert (=> d!1622371 (= c!864071 ((_ is Nil!58306) lt!2084545))))

(assert (=> d!1622371 (= (splitAtIndex!213 lt!2084545 i!618) lt!2084592)))

(assert (= (and d!1622371 c!864071) b!5042316))

(assert (= (and d!1622371 (not c!864071)) b!5042319))

(assert (= (and b!5042319 c!864070) b!5042317))

(assert (= (and b!5042319 (not c!864070)) b!5042320))

(assert (= (and d!1622371 res!2148122) b!5042315))

(assert (= (and b!5042315 res!2148123) b!5042318))

(assert (=> b!5042315 m!6076462))

(assert (=> b!5042318 m!6076480))

(declare-fun m!6076630 () Bool)

(assert (=> b!5042320 m!6076630))

(declare-fun m!6076632 () Bool)

(assert (=> d!1622371 m!6076632))

(assert (=> b!5042071 d!1622371))

(declare-fun d!1622373 () Bool)

(assert (=> d!1622373 (= (list!18921 (xs!18844 t!4198)) (innerList!15606 (xs!18844 t!4198)))))

(assert (=> b!5042071 d!1622373))

(declare-fun b!5042329 () Bool)

(declare-fun e!3148857 () Bool)

(declare-fun tp!1411271 () Bool)

(declare-fun tp!1411270 () Bool)

(assert (=> b!5042329 (= e!3148857 (and (inv!77183 (left!42706 (left!42706 t!4198))) tp!1411271 (inv!77183 (right!43036 (left!42706 t!4198))) tp!1411270))))

(declare-fun b!5042331 () Bool)

(declare-fun e!3148856 () Bool)

(declare-fun tp!1411269 () Bool)

(assert (=> b!5042331 (= e!3148856 tp!1411269)))

(declare-fun b!5042330 () Bool)

(assert (=> b!5042330 (= e!3148857 (and (inv!77184 (xs!18844 (left!42706 t!4198))) e!3148856))))

(assert (=> b!5042065 (= tp!1411247 (and (inv!77183 (left!42706 t!4198)) e!3148857))))

(assert (= (and b!5042065 ((_ is Node!15518) (left!42706 t!4198))) b!5042329))

(assert (= b!5042330 b!5042331))

(assert (= (and b!5042065 ((_ is Leaf!25741) (left!42706 t!4198))) b!5042330))

(declare-fun m!6076634 () Bool)

(assert (=> b!5042329 m!6076634))

(declare-fun m!6076636 () Bool)

(assert (=> b!5042329 m!6076636))

(declare-fun m!6076638 () Bool)

(assert (=> b!5042330 m!6076638))

(assert (=> b!5042065 m!6076476))

(declare-fun b!5042332 () Bool)

(declare-fun tp!1411274 () Bool)

(declare-fun tp!1411273 () Bool)

(declare-fun e!3148859 () Bool)

(assert (=> b!5042332 (= e!3148859 (and (inv!77183 (left!42706 (right!43036 t!4198))) tp!1411274 (inv!77183 (right!43036 (right!43036 t!4198))) tp!1411273))))

(declare-fun b!5042334 () Bool)

(declare-fun e!3148858 () Bool)

(declare-fun tp!1411272 () Bool)

(assert (=> b!5042334 (= e!3148858 tp!1411272)))

(declare-fun b!5042333 () Bool)

(assert (=> b!5042333 (= e!3148859 (and (inv!77184 (xs!18844 (right!43036 t!4198))) e!3148858))))

(assert (=> b!5042065 (= tp!1411245 (and (inv!77183 (right!43036 t!4198)) e!3148859))))

(assert (= (and b!5042065 ((_ is Node!15518) (right!43036 t!4198))) b!5042332))

(assert (= b!5042333 b!5042334))

(assert (= (and b!5042065 ((_ is Leaf!25741) (right!43036 t!4198))) b!5042333))

(declare-fun m!6076640 () Bool)

(assert (=> b!5042332 m!6076640))

(declare-fun m!6076642 () Bool)

(assert (=> b!5042332 m!6076642))

(declare-fun m!6076644 () Bool)

(assert (=> b!5042333 m!6076644))

(assert (=> b!5042065 m!6076478))

(declare-fun b!5042339 () Bool)

(declare-fun e!3148862 () Bool)

(declare-fun tp_is_empty!36799 () Bool)

(declare-fun tp!1411277 () Bool)

(assert (=> b!5042339 (= e!3148862 (and tp_is_empty!36799 tp!1411277))))

(assert (=> b!5042064 (= tp!1411246 e!3148862)))

(assert (= (and b!5042064 ((_ is Cons!58306) (innerList!15606 (xs!18844 t!4198)))) b!5042339))

(check-sat (not b!5042214) (not b!5042116) (not b!5042333) (not b!5042211) (not d!1622363) (not b!5042281) (not d!1622339) (not b!5042244) (not b!5042332) (not b!5042242) (not b!5042184) (not b!5042318) (not b!5042118) (not d!1622331) (not b!5042137) (not b!5042280) (not b!5042183) (not b!5042329) (not b!5042277) (not d!1622311) (not b!5042331) (not b!5042227) tp_is_empty!36799 (not d!1622325) (not b!5042251) (not b!5042120) (not d!1622345) (not b!5042229) (not b!5042119) (not b!5042330) (not d!1622359) (not d!1622371) (not d!1622329) (not b!5042279) (not b!5042334) (not b!5042139) (not b!5042320) (not b!5042339) (not b!5042241) (not b!5042315) (not b!5042249) (not b!5042117) (not b!5042121) (not bm!351424) (not b!5042065))
(check-sat)
(get-model)

(declare-fun d!1622375 () Bool)

(declare-fun e!3148864 () Bool)

(assert (=> d!1622375 e!3148864))

(declare-fun res!2148124 () Bool)

(assert (=> d!1622375 (=> (not res!2148124) (not e!3148864))))

(declare-fun lt!2084594 () List!58430)

(assert (=> d!1622375 (= res!2148124 (= ((_ map implies) (content!10359 lt!2084594) (content!10359 (drop!2636 lt!2084545 0))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3148865 () List!58430)

(assert (=> d!1622375 (= lt!2084594 e!3148865)))

(declare-fun c!864073 () Bool)

(assert (=> d!1622375 (= c!864073 (or ((_ is Nil!58306) (drop!2636 lt!2084545 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1622375 (= (take!829 (drop!2636 lt!2084545 0) (- i!618 0)) lt!2084594)))

(declare-fun b!5042340 () Bool)

(assert (=> b!5042340 (= e!3148865 (Cons!58306 (h!64754 (drop!2636 lt!2084545 0)) (take!829 (t!370997 (drop!2636 lt!2084545 0)) (- (- i!618 0) 1))))))

(declare-fun b!5042341 () Bool)

(assert (=> b!5042341 (= e!3148865 Nil!58306)))

(declare-fun b!5042342 () Bool)

(declare-fun e!3148866 () Int)

(assert (=> b!5042342 (= e!3148864 (= (size!38912 lt!2084594) e!3148866))))

(declare-fun c!864074 () Bool)

(assert (=> b!5042342 (= c!864074 (<= (- i!618 0) 0))))

(declare-fun b!5042343 () Bool)

(declare-fun e!3148863 () Int)

(assert (=> b!5042343 (= e!3148863 (size!38912 (drop!2636 lt!2084545 0)))))

(declare-fun b!5042344 () Bool)

(assert (=> b!5042344 (= e!3148866 e!3148863)))

(declare-fun c!864072 () Bool)

(assert (=> b!5042344 (= c!864072 (>= (- i!618 0) (size!38912 (drop!2636 lt!2084545 0))))))

(declare-fun b!5042345 () Bool)

(assert (=> b!5042345 (= e!3148863 (- i!618 0))))

(declare-fun b!5042346 () Bool)

(assert (=> b!5042346 (= e!3148866 0)))

(assert (= (and d!1622375 c!864073) b!5042341))

(assert (= (and d!1622375 (not c!864073)) b!5042340))

(assert (= (and d!1622375 res!2148124) b!5042342))

(assert (= (and b!5042342 c!864074) b!5042346))

(assert (= (and b!5042342 (not c!864074)) b!5042344))

(assert (= (and b!5042344 c!864072) b!5042343))

(assert (= (and b!5042344 (not c!864072)) b!5042345))

(assert (=> b!5042344 m!6076536))

(declare-fun m!6076646 () Bool)

(assert (=> b!5042344 m!6076646))

(declare-fun m!6076648 () Bool)

(assert (=> d!1622375 m!6076648))

(assert (=> d!1622375 m!6076536))

(declare-fun m!6076650 () Bool)

(assert (=> d!1622375 m!6076650))

(declare-fun m!6076652 () Bool)

(assert (=> b!5042340 m!6076652))

(assert (=> b!5042343 m!6076536))

(assert (=> b!5042343 m!6076646))

(declare-fun m!6076654 () Bool)

(assert (=> b!5042342 m!6076654))

(assert (=> d!1622329 d!1622375))

(declare-fun b!5042347 () Bool)

(declare-fun e!3148867 () List!58430)

(assert (=> b!5042347 (= e!3148867 lt!2084545)))

(declare-fun b!5042348 () Bool)

(declare-fun e!3148868 () Int)

(declare-fun e!3148871 () Int)

(assert (=> b!5042348 (= e!3148868 e!3148871)))

(declare-fun c!864076 () Bool)

(declare-fun call!351430 () Int)

(assert (=> b!5042348 (= c!864076 (>= 0 call!351430))))

(declare-fun b!5042349 () Bool)

(declare-fun e!3148870 () List!58430)

(assert (=> b!5042349 (= e!3148870 e!3148867)))

(declare-fun c!864077 () Bool)

(assert (=> b!5042349 (= c!864077 (<= 0 0))))

(declare-fun bm!351425 () Bool)

(assert (=> bm!351425 (= call!351430 (size!38912 lt!2084545))))

(declare-fun b!5042350 () Bool)

(assert (=> b!5042350 (= e!3148870 Nil!58306)))

(declare-fun b!5042351 () Bool)

(assert (=> b!5042351 (= e!3148867 (drop!2636 (t!370997 lt!2084545) (- 0 1)))))

(declare-fun d!1622377 () Bool)

(declare-fun e!3148869 () Bool)

(assert (=> d!1622377 e!3148869))

(declare-fun res!2148125 () Bool)

(assert (=> d!1622377 (=> (not res!2148125) (not e!3148869))))

(declare-fun lt!2084595 () List!58430)

(assert (=> d!1622377 (= res!2148125 (= ((_ map implies) (content!10359 lt!2084595) (content!10359 lt!2084545)) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622377 (= lt!2084595 e!3148870)))

(declare-fun c!864078 () Bool)

(assert (=> d!1622377 (= c!864078 ((_ is Nil!58306) lt!2084545))))

(assert (=> d!1622377 (= (drop!2636 lt!2084545 0) lt!2084595)))

(declare-fun b!5042352 () Bool)

(assert (=> b!5042352 (= e!3148869 (= (size!38912 lt!2084595) e!3148868))))

(declare-fun c!864075 () Bool)

(assert (=> b!5042352 (= c!864075 (<= 0 0))))

(declare-fun b!5042353 () Bool)

(assert (=> b!5042353 (= e!3148868 call!351430)))

(declare-fun b!5042354 () Bool)

(assert (=> b!5042354 (= e!3148871 0)))

(declare-fun b!5042355 () Bool)

(assert (=> b!5042355 (= e!3148871 (- call!351430 0))))

(assert (= (and d!1622377 c!864078) b!5042350))

(assert (= (and d!1622377 (not c!864078)) b!5042349))

(assert (= (and b!5042349 c!864077) b!5042347))

(assert (= (and b!5042349 (not c!864077)) b!5042351))

(assert (= (and d!1622377 res!2148125) b!5042352))

(assert (= (and b!5042352 c!864075) b!5042353))

(assert (= (and b!5042352 (not c!864075)) b!5042348))

(assert (= (and b!5042348 c!864076) b!5042354))

(assert (= (and b!5042348 (not c!864076)) b!5042355))

(assert (= (or b!5042353 b!5042348 b!5042355) bm!351425))

(assert (=> bm!351425 m!6076470))

(declare-fun m!6076656 () Bool)

(assert (=> b!5042351 m!6076656))

(declare-fun m!6076658 () Bool)

(assert (=> d!1622377 m!6076658))

(assert (=> d!1622377 m!6076532))

(declare-fun m!6076660 () Bool)

(assert (=> b!5042352 m!6076660))

(assert (=> d!1622329 d!1622377))

(declare-fun b!5042356 () Bool)

(declare-fun res!2148127 () Bool)

(declare-fun e!3148874 () Bool)

(assert (=> b!5042356 (=> (not res!2148127) (not e!3148874))))

(declare-fun lt!2084596 () tuple2!63246)

(assert (=> b!5042356 (= res!2148127 (= (_1!34926 lt!2084596) (take!829 (t!370997 lt!2084545) (- i!618 1))))))

(declare-fun b!5042357 () Bool)

(declare-fun e!3148873 () tuple2!63246)

(assert (=> b!5042357 (= e!3148873 (tuple2!63247 Nil!58306 Nil!58306))))

(declare-fun b!5042358 () Bool)

(declare-fun e!3148872 () tuple2!63246)

(assert (=> b!5042358 (= e!3148872 (tuple2!63247 Nil!58306 (t!370997 lt!2084545)))))

(declare-fun b!5042359 () Bool)

(assert (=> b!5042359 (= e!3148874 (= (_2!34926 lt!2084596) (drop!2636 (t!370997 lt!2084545) (- i!618 1))))))

(declare-fun b!5042360 () Bool)

(assert (=> b!5042360 (= e!3148873 e!3148872)))

(declare-fun c!864079 () Bool)

(assert (=> b!5042360 (= c!864079 (<= (- i!618 1) 0))))

(declare-fun b!5042361 () Bool)

(declare-fun lt!2084597 () tuple2!63246)

(assert (=> b!5042361 (= lt!2084597 (splitAtIndex!213 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1)))))

(assert (=> b!5042361 (= e!3148872 (tuple2!63247 (Cons!58306 (h!64754 (t!370997 lt!2084545)) (_1!34926 lt!2084597)) (_2!34926 lt!2084597)))))

(declare-fun d!1622379 () Bool)

(assert (=> d!1622379 e!3148874))

(declare-fun res!2148126 () Bool)

(assert (=> d!1622379 (=> (not res!2148126) (not e!3148874))))

(assert (=> d!1622379 (= res!2148126 (= (++!12731 (_1!34926 lt!2084596) (_2!34926 lt!2084596)) (t!370997 lt!2084545)))))

(assert (=> d!1622379 (= lt!2084596 e!3148873)))

(declare-fun c!864080 () Bool)

(assert (=> d!1622379 (= c!864080 ((_ is Nil!58306) (t!370997 lt!2084545)))))

(assert (=> d!1622379 (= (splitAtIndex!213 (t!370997 lt!2084545) (- i!618 1)) lt!2084596)))

(assert (= (and d!1622379 c!864080) b!5042357))

(assert (= (and d!1622379 (not c!864080)) b!5042360))

(assert (= (and b!5042360 c!864079) b!5042358))

(assert (= (and b!5042360 (not c!864079)) b!5042361))

(assert (= (and d!1622379 res!2148126) b!5042356))

(assert (= (and b!5042356 res!2148127) b!5042359))

(assert (=> b!5042356 m!6076612))

(assert (=> b!5042359 m!6076528))

(declare-fun m!6076662 () Bool)

(assert (=> b!5042361 m!6076662))

(declare-fun m!6076664 () Bool)

(assert (=> d!1622379 m!6076664))

(assert (=> b!5042320 d!1622379))

(declare-fun d!1622381 () Bool)

(declare-fun res!2148132 () Bool)

(declare-fun e!3148877 () Bool)

(assert (=> d!1622381 (=> (not res!2148132) (not e!3148877))))

(assert (=> d!1622381 (= res!2148132 (<= (size!38912 (list!18921 (xs!18844 t!4198))) 512))))

(assert (=> d!1622381 (= (inv!77188 t!4198) e!3148877)))

(declare-fun b!5042366 () Bool)

(declare-fun res!2148133 () Bool)

(assert (=> b!5042366 (=> (not res!2148133) (not e!3148877))))

(assert (=> b!5042366 (= res!2148133 (= (csize!31267 t!4198) (size!38912 (list!18921 (xs!18844 t!4198)))))))

(declare-fun b!5042367 () Bool)

(assert (=> b!5042367 (= e!3148877 (and (> (csize!31267 t!4198) 0) (<= (csize!31267 t!4198) 512)))))

(assert (= (and d!1622381 res!2148132) b!5042366))

(assert (= (and b!5042366 res!2148133) b!5042367))

(assert (=> d!1622381 m!6076466))

(assert (=> d!1622381 m!6076466))

(declare-fun m!6076666 () Bool)

(assert (=> d!1622381 m!6076666))

(assert (=> b!5042366 m!6076466))

(assert (=> b!5042366 m!6076466))

(assert (=> b!5042366 m!6076666))

(assert (=> b!5042139 d!1622381))

(declare-fun d!1622383 () Bool)

(declare-fun e!3148879 () Bool)

(assert (=> d!1622383 e!3148879))

(declare-fun res!2148134 () Bool)

(assert (=> d!1622383 (=> (not res!2148134) (not e!3148879))))

(declare-fun lt!2084598 () List!58430)

(assert (=> d!1622383 (= res!2148134 (= ((_ map implies) (content!10359 lt!2084598) (content!10359 (drop!2636 lt!2084545 i!618))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3148880 () List!58430)

(assert (=> d!1622383 (= lt!2084598 e!3148880)))

(declare-fun c!864082 () Bool)

(assert (=> d!1622383 (= c!864082 (or ((_ is Nil!58306) (drop!2636 lt!2084545 i!618)) (<= (- (size!38912 lt!2084545) i!618) 0)))))

(assert (=> d!1622383 (= (take!829 (drop!2636 lt!2084545 i!618) (- (size!38912 lt!2084545) i!618)) lt!2084598)))

(declare-fun b!5042368 () Bool)

(assert (=> b!5042368 (= e!3148880 (Cons!58306 (h!64754 (drop!2636 lt!2084545 i!618)) (take!829 (t!370997 (drop!2636 lt!2084545 i!618)) (- (- (size!38912 lt!2084545) i!618) 1))))))

(declare-fun b!5042369 () Bool)

(assert (=> b!5042369 (= e!3148880 Nil!58306)))

(declare-fun b!5042370 () Bool)

(declare-fun e!3148881 () Int)

(assert (=> b!5042370 (= e!3148879 (= (size!38912 lt!2084598) e!3148881))))

(declare-fun c!864083 () Bool)

(assert (=> b!5042370 (= c!864083 (<= (- (size!38912 lt!2084545) i!618) 0))))

(declare-fun b!5042371 () Bool)

(declare-fun e!3148878 () Int)

(assert (=> b!5042371 (= e!3148878 (size!38912 (drop!2636 lt!2084545 i!618)))))

(declare-fun b!5042372 () Bool)

(assert (=> b!5042372 (= e!3148881 e!3148878)))

(declare-fun c!864081 () Bool)

(assert (=> b!5042372 (= c!864081 (>= (- (size!38912 lt!2084545) i!618) (size!38912 (drop!2636 lt!2084545 i!618))))))

(declare-fun b!5042373 () Bool)

(assert (=> b!5042373 (= e!3148878 (- (size!38912 lt!2084545) i!618))))

(declare-fun b!5042374 () Bool)

(assert (=> b!5042374 (= e!3148881 0)))

(assert (= (and d!1622383 c!864082) b!5042369))

(assert (= (and d!1622383 (not c!864082)) b!5042368))

(assert (= (and d!1622383 res!2148134) b!5042370))

(assert (= (and b!5042370 c!864083) b!5042374))

(assert (= (and b!5042370 (not c!864083)) b!5042372))

(assert (= (and b!5042372 c!864081) b!5042371))

(assert (= (and b!5042372 (not c!864081)) b!5042373))

(assert (=> b!5042372 m!6076480))

(declare-fun m!6076668 () Bool)

(assert (=> b!5042372 m!6076668))

(declare-fun m!6076670 () Bool)

(assert (=> d!1622383 m!6076670))

(assert (=> d!1622383 m!6076480))

(declare-fun m!6076672 () Bool)

(assert (=> d!1622383 m!6076672))

(declare-fun m!6076674 () Bool)

(assert (=> b!5042368 m!6076674))

(assert (=> b!5042371 m!6076480))

(assert (=> b!5042371 m!6076668))

(declare-fun m!6076676 () Bool)

(assert (=> b!5042370 m!6076676))

(assert (=> d!1622331 d!1622383))

(assert (=> d!1622331 d!1622325))

(declare-fun d!1622385 () Bool)

(declare-fun res!2148141 () Bool)

(declare-fun e!3148884 () Bool)

(assert (=> d!1622385 (=> (not res!2148141) (not e!3148884))))

(assert (=> d!1622385 (= res!2148141 (= (csize!31266 t!4198) (+ (size!38913 (left!42706 t!4198)) (size!38913 (right!43036 t!4198)))))))

(assert (=> d!1622385 (= (inv!77187 t!4198) e!3148884)))

(declare-fun b!5042381 () Bool)

(declare-fun res!2148142 () Bool)

(assert (=> b!5042381 (=> (not res!2148142) (not e!3148884))))

(assert (=> b!5042381 (= res!2148142 (and (not (= (left!42706 t!4198) Empty!15518)) (not (= (right!43036 t!4198) Empty!15518))))))

(declare-fun b!5042382 () Bool)

(declare-fun res!2148143 () Bool)

(assert (=> b!5042382 (=> (not res!2148143) (not e!3148884))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5042382 (= res!2148143 (= (cheight!15729 t!4198) (+ (max!0 (height!2096 (left!42706 t!4198)) (height!2096 (right!43036 t!4198))) 1)))))

(declare-fun b!5042383 () Bool)

(assert (=> b!5042383 (= e!3148884 (<= 0 (cheight!15729 t!4198)))))

(assert (= (and d!1622385 res!2148141) b!5042381))

(assert (= (and b!5042381 res!2148142) b!5042382))

(assert (= (and b!5042382 res!2148143) b!5042383))

(declare-fun m!6076678 () Bool)

(assert (=> d!1622385 m!6076678))

(declare-fun m!6076680 () Bool)

(assert (=> d!1622385 m!6076680))

(assert (=> b!5042382 m!6076504))

(assert (=> b!5042382 m!6076506))

(assert (=> b!5042382 m!6076504))

(assert (=> b!5042382 m!6076506))

(declare-fun m!6076682 () Bool)

(assert (=> b!5042382 m!6076682))

(assert (=> b!5042137 d!1622385))

(assert (=> b!5042065 d!1622355))

(assert (=> b!5042065 d!1622357))

(assert (=> b!5042214 d!1622333))

(assert (=> b!5042318 d!1622325))

(declare-fun d!1622389 () Bool)

(assert (=> d!1622389 (= (inv!77184 (xs!18844 (left!42706 t!4198))) (<= (size!38912 (innerList!15606 (xs!18844 (left!42706 t!4198)))) 2147483647))))

(declare-fun bs!1188988 () Bool)

(assert (= bs!1188988 d!1622389))

(declare-fun m!6076684 () Bool)

(assert (=> bs!1188988 m!6076684))

(assert (=> b!5042330 d!1622389))

(declare-fun d!1622391 () Bool)

(declare-fun lt!2084599 () Int)

(assert (=> d!1622391 (>= lt!2084599 0)))

(declare-fun e!3148885 () Int)

(assert (=> d!1622391 (= lt!2084599 e!3148885)))

(declare-fun c!864084 () Bool)

(assert (=> d!1622391 (= c!864084 ((_ is Nil!58306) (innerList!15606 (xs!18844 t!4198))))))

(assert (=> d!1622391 (= (size!38912 (innerList!15606 (xs!18844 t!4198))) lt!2084599)))

(declare-fun b!5042384 () Bool)

(assert (=> b!5042384 (= e!3148885 0)))

(declare-fun b!5042385 () Bool)

(assert (=> b!5042385 (= e!3148885 (+ 1 (size!38912 (t!370997 (innerList!15606 (xs!18844 t!4198))))))))

(assert (= (and d!1622391 c!864084) b!5042384))

(assert (= (and d!1622391 (not c!864084)) b!5042385))

(declare-fun m!6076686 () Bool)

(assert (=> b!5042385 m!6076686))

(assert (=> d!1622359 d!1622391))

(declare-fun d!1622393 () Bool)

(declare-fun res!2148144 () Bool)

(declare-fun e!3148886 () Bool)

(assert (=> d!1622393 (=> (not res!2148144) (not e!3148886))))

(assert (=> d!1622393 (= res!2148144 (<= (size!38912 (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))) 512))))

(assert (=> d!1622393 (= (inv!77188 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) e!3148886)))

(declare-fun b!5042386 () Bool)

(declare-fun res!2148145 () Bool)

(assert (=> b!5042386 (=> (not res!2148145) (not e!3148886))))

(assert (=> b!5042386 (= res!2148145 (= (csize!31267 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) (size!38912 (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(declare-fun b!5042387 () Bool)

(assert (=> b!5042387 (= e!3148886 (and (> (csize!31267 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) 0) (<= (csize!31267 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) 512)))))

(assert (= (and d!1622393 res!2148144) b!5042386))

(assert (= (and b!5042386 res!2148145) b!5042387))

(declare-fun m!6076688 () Bool)

(assert (=> d!1622393 m!6076688))

(assert (=> d!1622393 m!6076688))

(declare-fun m!6076690 () Bool)

(assert (=> d!1622393 m!6076690))

(assert (=> b!5042386 m!6076688))

(assert (=> b!5042386 m!6076688))

(assert (=> b!5042386 m!6076690))

(assert (=> b!5042229 d!1622393))

(declare-fun d!1622395 () Bool)

(declare-fun res!2148146 () Bool)

(declare-fun e!3148887 () Bool)

(assert (=> d!1622395 (=> (not res!2148146) (not e!3148887))))

(assert (=> d!1622395 (= res!2148146 (= (csize!31266 (left!42706 t!4198)) (+ (size!38913 (left!42706 (left!42706 t!4198))) (size!38913 (right!43036 (left!42706 t!4198))))))))

(assert (=> d!1622395 (= (inv!77187 (left!42706 t!4198)) e!3148887)))

(declare-fun b!5042388 () Bool)

(declare-fun res!2148147 () Bool)

(assert (=> b!5042388 (=> (not res!2148147) (not e!3148887))))

(assert (=> b!5042388 (= res!2148147 (and (not (= (left!42706 (left!42706 t!4198)) Empty!15518)) (not (= (right!43036 (left!42706 t!4198)) Empty!15518))))))

(declare-fun b!5042389 () Bool)

(declare-fun res!2148148 () Bool)

(assert (=> b!5042389 (=> (not res!2148148) (not e!3148887))))

(assert (=> b!5042389 (= res!2148148 (= (cheight!15729 (left!42706 t!4198)) (+ (max!0 (height!2096 (left!42706 (left!42706 t!4198))) (height!2096 (right!43036 (left!42706 t!4198)))) 1)))))

(declare-fun b!5042390 () Bool)

(assert (=> b!5042390 (= e!3148887 (<= 0 (cheight!15729 (left!42706 t!4198))))))

(assert (= (and d!1622395 res!2148146) b!5042388))

(assert (= (and b!5042388 res!2148147) b!5042389))

(assert (= (and b!5042389 res!2148148) b!5042390))

(declare-fun m!6076692 () Bool)

(assert (=> d!1622395 m!6076692))

(declare-fun m!6076694 () Bool)

(assert (=> d!1622395 m!6076694))

(declare-fun m!6076696 () Bool)

(assert (=> b!5042389 m!6076696))

(declare-fun m!6076698 () Bool)

(assert (=> b!5042389 m!6076698))

(assert (=> b!5042389 m!6076696))

(assert (=> b!5042389 m!6076698))

(declare-fun m!6076700 () Bool)

(assert (=> b!5042389 m!6076700))

(assert (=> b!5042242 d!1622395))

(declare-fun d!1622397 () Bool)

(declare-fun lt!2084600 () Int)

(assert (=> d!1622397 (>= lt!2084600 0)))

(declare-fun e!3148890 () Int)

(assert (=> d!1622397 (= lt!2084600 e!3148890)))

(declare-fun c!864085 () Bool)

(assert (=> d!1622397 (= c!864085 ((_ is Nil!58306) lt!2084587))))

(assert (=> d!1622397 (= (size!38912 lt!2084587) lt!2084600)))

(declare-fun b!5042397 () Bool)

(assert (=> b!5042397 (= e!3148890 0)))

(declare-fun b!5042398 () Bool)

(assert (=> b!5042398 (= e!3148890 (+ 1 (size!38912 (t!370997 lt!2084587))))))

(assert (= (and d!1622397 c!864085) b!5042397))

(assert (= (and d!1622397 (not c!864085)) b!5042398))

(declare-fun m!6076702 () Bool)

(assert (=> b!5042398 m!6076702))

(assert (=> b!5042279 d!1622397))

(assert (=> b!5042280 d!1622333))

(declare-fun d!1622399 () Bool)

(declare-fun lt!2084601 () Int)

(assert (=> d!1622399 (>= lt!2084601 0)))

(declare-fun e!3148891 () Int)

(assert (=> d!1622399 (= lt!2084601 e!3148891)))

(declare-fun c!864086 () Bool)

(assert (=> d!1622399 (= c!864086 ((_ is Nil!58306) lt!2084557))))

(assert (=> d!1622399 (= (size!38912 lt!2084557) lt!2084601)))

(declare-fun b!5042399 () Bool)

(assert (=> b!5042399 (= e!3148891 0)))

(declare-fun b!5042400 () Bool)

(assert (=> b!5042400 (= e!3148891 (+ 1 (size!38912 (t!370997 lt!2084557))))))

(assert (= (and d!1622399 c!864086) b!5042399))

(assert (= (and d!1622399 (not c!864086)) b!5042400))

(declare-fun m!6076704 () Bool)

(assert (=> b!5042400 m!6076704))

(assert (=> b!5042184 d!1622399))

(declare-fun b!5042401 () Bool)

(declare-fun e!3148892 () List!58430)

(assert (=> b!5042401 (= e!3148892 (t!370997 lt!2084545))))

(declare-fun b!5042402 () Bool)

(declare-fun e!3148893 () Int)

(declare-fun e!3148896 () Int)

(assert (=> b!5042402 (= e!3148893 e!3148896)))

(declare-fun c!864088 () Bool)

(declare-fun call!351431 () Int)

(assert (=> b!5042402 (= c!864088 (>= (- i!618 1) call!351431))))

(declare-fun b!5042403 () Bool)

(declare-fun e!3148895 () List!58430)

(assert (=> b!5042403 (= e!3148895 e!3148892)))

(declare-fun c!864089 () Bool)

(assert (=> b!5042403 (= c!864089 (<= (- i!618 1) 0))))

(declare-fun bm!351426 () Bool)

(assert (=> bm!351426 (= call!351431 (size!38912 (t!370997 lt!2084545)))))

(declare-fun b!5042404 () Bool)

(assert (=> b!5042404 (= e!3148895 Nil!58306)))

(declare-fun b!5042405 () Bool)

(assert (=> b!5042405 (= e!3148892 (drop!2636 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1)))))

(declare-fun d!1622401 () Bool)

(declare-fun e!3148894 () Bool)

(assert (=> d!1622401 e!3148894))

(declare-fun res!2148155 () Bool)

(assert (=> d!1622401 (=> (not res!2148155) (not e!3148894))))

(declare-fun lt!2084602 () List!58430)

(assert (=> d!1622401 (= res!2148155 (= ((_ map implies) (content!10359 lt!2084602) (content!10359 (t!370997 lt!2084545))) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622401 (= lt!2084602 e!3148895)))

(declare-fun c!864090 () Bool)

(assert (=> d!1622401 (= c!864090 ((_ is Nil!58306) (t!370997 lt!2084545)))))

(assert (=> d!1622401 (= (drop!2636 (t!370997 lt!2084545) (- i!618 1)) lt!2084602)))

(declare-fun b!5042406 () Bool)

(assert (=> b!5042406 (= e!3148894 (= (size!38912 lt!2084602) e!3148893))))

(declare-fun c!864087 () Bool)

(assert (=> b!5042406 (= c!864087 (<= (- i!618 1) 0))))

(declare-fun b!5042407 () Bool)

(assert (=> b!5042407 (= e!3148893 call!351431)))

(declare-fun b!5042408 () Bool)

(assert (=> b!5042408 (= e!3148896 0)))

(declare-fun b!5042409 () Bool)

(assert (=> b!5042409 (= e!3148896 (- call!351431 (- i!618 1)))))

(assert (= (and d!1622401 c!864090) b!5042404))

(assert (= (and d!1622401 (not c!864090)) b!5042403))

(assert (= (and b!5042403 c!864089) b!5042401))

(assert (= (and b!5042403 (not c!864089)) b!5042405))

(assert (= (and d!1622401 res!2148155) b!5042406))

(assert (= (and b!5042406 c!864087) b!5042407))

(assert (= (and b!5042406 (not c!864087)) b!5042402))

(assert (= (and b!5042402 c!864088) b!5042408))

(assert (= (and b!5042402 (not c!864088)) b!5042409))

(assert (= (or b!5042407 b!5042402 b!5042409) bm!351426))

(assert (=> bm!351426 m!6076546))

(declare-fun m!6076706 () Bool)

(assert (=> b!5042405 m!6076706))

(declare-fun m!6076708 () Bool)

(assert (=> d!1622401 m!6076708))

(declare-fun m!6076710 () Bool)

(assert (=> d!1622401 m!6076710))

(declare-fun m!6076712 () Bool)

(assert (=> b!5042406 m!6076712))

(assert (=> b!5042183 d!1622401))

(declare-fun d!1622403 () Bool)

(assert (=> d!1622403 (= (slice!856 (list!18921 (xs!18844 t!4198)) i!618 (csize!31267 t!4198)) (take!829 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618) (- (csize!31267 t!4198) i!618)))))

(declare-fun bs!1188989 () Bool)

(assert (= bs!1188989 d!1622403))

(assert (=> bs!1188989 m!6076466))

(declare-fun m!6076714 () Bool)

(assert (=> bs!1188989 m!6076714))

(assert (=> bs!1188989 m!6076714))

(declare-fun m!6076716 () Bool)

(assert (=> bs!1188989 m!6076716))

(assert (=> d!1622345 d!1622403))

(assert (=> d!1622345 d!1622373))

(declare-fun d!1622405 () Bool)

(declare-fun _$4!1205 () IArray!31097)

(assert (=> d!1622405 (= _$4!1205 (IArray!31098 (slice!856 (list!18921 (xs!18844 t!4198)) i!618 (csize!31267 t!4198))))))

(declare-fun e!3148903 () Bool)

(assert (=> d!1622405 (and (inv!77184 _$4!1205) e!3148903)))

(assert (=> d!1622405 (= (choose!37261 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) _$4!1205)))

(declare-fun b!5042421 () Bool)

(declare-fun tp!1411280 () Bool)

(assert (=> b!5042421 (= e!3148903 tp!1411280)))

(assert (= d!1622405 b!5042421))

(assert (=> d!1622405 m!6076466))

(assert (=> d!1622405 m!6076466))

(assert (=> d!1622405 m!6076580))

(declare-fun m!6076732 () Bool)

(assert (=> d!1622405 m!6076732))

(assert (=> d!1622345 d!1622405))

(assert (=> bm!351424 d!1622333))

(declare-fun d!1622411 () Bool)

(declare-fun e!3148905 () Bool)

(assert (=> d!1622411 e!3148905))

(declare-fun res!2148161 () Bool)

(assert (=> d!1622411 (=> (not res!2148161) (not e!3148905))))

(declare-fun lt!2084605 () List!58430)

(assert (=> d!1622411 (= res!2148161 (= ((_ map implies) (content!10359 lt!2084605) (content!10359 (t!370997 lt!2084545))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3148906 () List!58430)

(assert (=> d!1622411 (= lt!2084605 e!3148906)))

(declare-fun c!864094 () Bool)

(assert (=> d!1622411 (= c!864094 (or ((_ is Nil!58306) (t!370997 lt!2084545)) (<= (- i!618 1) 0)))))

(assert (=> d!1622411 (= (take!829 (t!370997 lt!2084545) (- i!618 1)) lt!2084605)))

(declare-fun b!5042422 () Bool)

(assert (=> b!5042422 (= e!3148906 (Cons!58306 (h!64754 (t!370997 lt!2084545)) (take!829 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1))))))

(declare-fun b!5042423 () Bool)

(assert (=> b!5042423 (= e!3148906 Nil!58306)))

(declare-fun b!5042424 () Bool)

(declare-fun e!3148907 () Int)

(assert (=> b!5042424 (= e!3148905 (= (size!38912 lt!2084605) e!3148907))))

(declare-fun c!864095 () Bool)

(assert (=> b!5042424 (= c!864095 (<= (- i!618 1) 0))))

(declare-fun b!5042425 () Bool)

(declare-fun e!3148904 () Int)

(assert (=> b!5042425 (= e!3148904 (size!38912 (t!370997 lt!2084545)))))

(declare-fun b!5042426 () Bool)

(assert (=> b!5042426 (= e!3148907 e!3148904)))

(declare-fun c!864093 () Bool)

(assert (=> b!5042426 (= c!864093 (>= (- i!618 1) (size!38912 (t!370997 lt!2084545))))))

(declare-fun b!5042427 () Bool)

(assert (=> b!5042427 (= e!3148904 (- i!618 1))))

(declare-fun b!5042428 () Bool)

(assert (=> b!5042428 (= e!3148907 0)))

(assert (= (and d!1622411 c!864094) b!5042423))

(assert (= (and d!1622411 (not c!864094)) b!5042422))

(assert (= (and d!1622411 res!2148161) b!5042424))

(assert (= (and b!5042424 c!864095) b!5042428))

(assert (= (and b!5042424 (not c!864095)) b!5042426))

(assert (= (and b!5042426 c!864093) b!5042425))

(assert (= (and b!5042426 (not c!864093)) b!5042427))

(assert (=> b!5042426 m!6076546))

(declare-fun m!6076734 () Bool)

(assert (=> d!1622411 m!6076734))

(assert (=> d!1622411 m!6076710))

(declare-fun m!6076736 () Bool)

(assert (=> b!5042422 m!6076736))

(assert (=> b!5042425 m!6076546))

(declare-fun m!6076738 () Bool)

(assert (=> b!5042424 m!6076738))

(assert (=> b!5042277 d!1622411))

(declare-fun d!1622413 () Bool)

(declare-fun lt!2084608 () Bool)

(declare-fun isEmpty!31543 (List!58430) Bool)

(assert (=> d!1622413 (= lt!2084608 (isEmpty!31543 (list!18922 (right!43036 t!4198))))))

(assert (=> d!1622413 (= lt!2084608 (= (size!38913 (right!43036 t!4198)) 0))))

(assert (=> d!1622413 (= (isEmpty!31541 (right!43036 t!4198)) lt!2084608)))

(declare-fun bs!1188991 () Bool)

(assert (= bs!1188991 d!1622413))

(declare-fun m!6076756 () Bool)

(assert (=> bs!1188991 m!6076756))

(assert (=> bs!1188991 m!6076756))

(declare-fun m!6076758 () Bool)

(assert (=> bs!1188991 m!6076758))

(assert (=> bs!1188991 m!6076680))

(assert (=> b!5042120 d!1622413))

(assert (=> d!1622339 d!1622325))

(assert (=> d!1622339 d!1622331))

(assert (=> d!1622339 d!1622333))

(declare-fun d!1622421 () Bool)

(assert (=> d!1622421 (= (drop!2636 lt!2084545 i!618) (slice!856 lt!2084545 i!618 (size!38912 lt!2084545)))))

(assert (=> d!1622421 true))

(declare-fun _$10!212 () Unit!149495)

(assert (=> d!1622421 (= (choose!37259 lt!2084545 i!618) _$10!212)))

(declare-fun bs!1188992 () Bool)

(assert (= bs!1188992 d!1622421))

(assert (=> bs!1188992 m!6076480))

(assert (=> bs!1188992 m!6076470))

(assert (=> bs!1188992 m!6076470))

(assert (=> bs!1188992 m!6076472))

(assert (=> d!1622339 d!1622421))

(declare-fun d!1622423 () Bool)

(declare-fun c!864096 () Bool)

(assert (=> d!1622423 (= c!864096 ((_ is Node!15518) (left!42706 (right!43036 t!4198))))))

(declare-fun e!3148912 () Bool)

(assert (=> d!1622423 (= (inv!77183 (left!42706 (right!43036 t!4198))) e!3148912)))

(declare-fun b!5042438 () Bool)

(assert (=> b!5042438 (= e!3148912 (inv!77187 (left!42706 (right!43036 t!4198))))))

(declare-fun b!5042439 () Bool)

(declare-fun e!3148913 () Bool)

(assert (=> b!5042439 (= e!3148912 e!3148913)))

(declare-fun res!2148171 () Bool)

(assert (=> b!5042439 (= res!2148171 (not ((_ is Leaf!25741) (left!42706 (right!43036 t!4198)))))))

(assert (=> b!5042439 (=> res!2148171 e!3148913)))

(declare-fun b!5042440 () Bool)

(assert (=> b!5042440 (= e!3148913 (inv!77188 (left!42706 (right!43036 t!4198))))))

(assert (= (and d!1622423 c!864096) b!5042438))

(assert (= (and d!1622423 (not c!864096)) b!5042439))

(assert (= (and b!5042439 (not res!2148171)) b!5042440))

(declare-fun m!6076760 () Bool)

(assert (=> b!5042438 m!6076760))

(declare-fun m!6076762 () Bool)

(assert (=> b!5042440 m!6076762))

(assert (=> b!5042332 d!1622423))

(declare-fun d!1622425 () Bool)

(declare-fun c!864097 () Bool)

(assert (=> d!1622425 (= c!864097 ((_ is Node!15518) (right!43036 (right!43036 t!4198))))))

(declare-fun e!3148914 () Bool)

(assert (=> d!1622425 (= (inv!77183 (right!43036 (right!43036 t!4198))) e!3148914)))

(declare-fun b!5042441 () Bool)

(assert (=> b!5042441 (= e!3148914 (inv!77187 (right!43036 (right!43036 t!4198))))))

(declare-fun b!5042442 () Bool)

(declare-fun e!3148915 () Bool)

(assert (=> b!5042442 (= e!3148914 e!3148915)))

(declare-fun res!2148172 () Bool)

(assert (=> b!5042442 (= res!2148172 (not ((_ is Leaf!25741) (right!43036 (right!43036 t!4198)))))))

(assert (=> b!5042442 (=> res!2148172 e!3148915)))

(declare-fun b!5042443 () Bool)

(assert (=> b!5042443 (= e!3148915 (inv!77188 (right!43036 (right!43036 t!4198))))))

(assert (= (and d!1622425 c!864097) b!5042441))

(assert (= (and d!1622425 (not c!864097)) b!5042442))

(assert (= (and b!5042442 (not res!2148172)) b!5042443))

(declare-fun m!6076764 () Bool)

(assert (=> b!5042441 m!6076764))

(declare-fun m!6076766 () Bool)

(assert (=> b!5042443 m!6076766))

(assert (=> b!5042332 d!1622425))

(declare-fun b!5042444 () Bool)

(declare-fun res!2148178 () Bool)

(declare-fun e!3148917 () Bool)

(assert (=> b!5042444 (=> (not res!2148178) (not e!3148917))))

(assert (=> b!5042444 (= res!2148178 (isBalanced!4380 (left!42706 (right!43036 t!4198))))))

(declare-fun b!5042445 () Bool)

(declare-fun e!3148916 () Bool)

(assert (=> b!5042445 (= e!3148916 e!3148917)))

(declare-fun res!2148174 () Bool)

(assert (=> b!5042445 (=> (not res!2148174) (not e!3148917))))

(assert (=> b!5042445 (= res!2148174 (<= (- 1) (- (height!2096 (left!42706 (right!43036 t!4198))) (height!2096 (right!43036 (right!43036 t!4198))))))))

(declare-fun d!1622427 () Bool)

(declare-fun res!2148173 () Bool)

(assert (=> d!1622427 (=> res!2148173 e!3148916)))

(assert (=> d!1622427 (= res!2148173 (not ((_ is Node!15518) (right!43036 t!4198))))))

(assert (=> d!1622427 (= (isBalanced!4380 (right!43036 t!4198)) e!3148916)))

(declare-fun b!5042446 () Bool)

(declare-fun res!2148177 () Bool)

(assert (=> b!5042446 (=> (not res!2148177) (not e!3148917))))

(assert (=> b!5042446 (= res!2148177 (isBalanced!4380 (right!43036 (right!43036 t!4198))))))

(declare-fun b!5042447 () Bool)

(declare-fun res!2148176 () Bool)

(assert (=> b!5042447 (=> (not res!2148176) (not e!3148917))))

(assert (=> b!5042447 (= res!2148176 (<= (- (height!2096 (left!42706 (right!43036 t!4198))) (height!2096 (right!43036 (right!43036 t!4198)))) 1))))

(declare-fun b!5042448 () Bool)

(assert (=> b!5042448 (= e!3148917 (not (isEmpty!31541 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042450 () Bool)

(declare-fun res!2148175 () Bool)

(assert (=> b!5042450 (=> (not res!2148175) (not e!3148917))))

(assert (=> b!5042450 (= res!2148175 (not (isEmpty!31541 (left!42706 (right!43036 t!4198)))))))

(assert (= (and d!1622427 (not res!2148173)) b!5042445))

(assert (= (and b!5042445 res!2148174) b!5042447))

(assert (= (and b!5042447 res!2148176) b!5042444))

(assert (= (and b!5042444 res!2148178) b!5042446))

(assert (= (and b!5042446 res!2148177) b!5042450))

(assert (= (and b!5042450 res!2148175) b!5042448))

(declare-fun m!6076768 () Bool)

(assert (=> b!5042444 m!6076768))

(declare-fun m!6076770 () Bool)

(assert (=> b!5042448 m!6076770))

(declare-fun m!6076772 () Bool)

(assert (=> b!5042446 m!6076772))

(declare-fun m!6076774 () Bool)

(assert (=> b!5042447 m!6076774))

(declare-fun m!6076776 () Bool)

(assert (=> b!5042447 m!6076776))

(assert (=> b!5042445 m!6076774))

(assert (=> b!5042445 m!6076776))

(declare-fun m!6076778 () Bool)

(assert (=> b!5042450 m!6076778))

(assert (=> b!5042118 d!1622427))

(declare-fun d!1622429 () Bool)

(assert (=> d!1622429 (= (height!2096 (left!42706 t!4198)) (ite ((_ is Empty!15518) (left!42706 t!4198)) 0 (ite ((_ is Leaf!25741) (left!42706 t!4198)) 1 (cheight!15729 (left!42706 t!4198)))))))

(assert (=> b!5042119 d!1622429))

(declare-fun d!1622431 () Bool)

(assert (=> d!1622431 (= (height!2096 (right!43036 t!4198)) (ite ((_ is Empty!15518) (right!43036 t!4198)) 0 (ite ((_ is Leaf!25741) (right!43036 t!4198)) 1 (cheight!15729 (right!43036 t!4198)))))))

(assert (=> b!5042119 d!1622431))

(declare-fun d!1622433 () Bool)

(declare-fun res!2148183 () Bool)

(declare-fun e!3148922 () Bool)

(assert (=> d!1622433 (=> (not res!2148183) (not e!3148922))))

(assert (=> d!1622433 (= res!2148183 (= (csize!31266 (right!43036 t!4198)) (+ (size!38913 (left!42706 (right!43036 t!4198))) (size!38913 (right!43036 (right!43036 t!4198))))))))

(assert (=> d!1622433 (= (inv!77187 (right!43036 t!4198)) e!3148922)))

(declare-fun b!5042458 () Bool)

(declare-fun res!2148184 () Bool)

(assert (=> b!5042458 (=> (not res!2148184) (not e!3148922))))

(assert (=> b!5042458 (= res!2148184 (and (not (= (left!42706 (right!43036 t!4198)) Empty!15518)) (not (= (right!43036 (right!43036 t!4198)) Empty!15518))))))

(declare-fun b!5042459 () Bool)

(declare-fun res!2148185 () Bool)

(assert (=> b!5042459 (=> (not res!2148185) (not e!3148922))))

(assert (=> b!5042459 (= res!2148185 (= (cheight!15729 (right!43036 t!4198)) (+ (max!0 (height!2096 (left!42706 (right!43036 t!4198))) (height!2096 (right!43036 (right!43036 t!4198)))) 1)))))

(declare-fun b!5042460 () Bool)

(assert (=> b!5042460 (= e!3148922 (<= 0 (cheight!15729 (right!43036 t!4198))))))

(assert (= (and d!1622433 res!2148183) b!5042458))

(assert (= (and b!5042458 res!2148184) b!5042459))

(assert (= (and b!5042459 res!2148185) b!5042460))

(declare-fun m!6076780 () Bool)

(assert (=> d!1622433 m!6076780))

(declare-fun m!6076782 () Bool)

(assert (=> d!1622433 m!6076782))

(assert (=> b!5042459 m!6076774))

(assert (=> b!5042459 m!6076776))

(assert (=> b!5042459 m!6076774))

(assert (=> b!5042459 m!6076776))

(declare-fun m!6076784 () Bool)

(assert (=> b!5042459 m!6076784))

(assert (=> b!5042249 d!1622433))

(declare-fun d!1622435 () Bool)

(assert (=> d!1622435 (= (inv!77184 (xs!18844 (right!43036 t!4198))) (<= (size!38912 (innerList!15606 (xs!18844 (right!43036 t!4198)))) 2147483647))))

(declare-fun bs!1188993 () Bool)

(assert (= bs!1188993 d!1622435))

(declare-fun m!6076786 () Bool)

(assert (=> bs!1188993 m!6076786))

(assert (=> b!5042333 d!1622435))

(assert (=> b!5042117 d!1622429))

(assert (=> b!5042117 d!1622431))

(declare-fun d!1622437 () Bool)

(declare-fun c!864104 () Bool)

(assert (=> d!1622437 (= c!864104 ((_ is Nil!58306) lt!2084557))))

(declare-fun e!3148928 () (InoxSet T!104222))

(assert (=> d!1622437 (= (content!10359 lt!2084557) e!3148928)))

(declare-fun b!5042471 () Bool)

(assert (=> b!5042471 (= e!3148928 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042472 () Bool)

(assert (=> b!5042472 (= e!3148928 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084557) true) (content!10359 (t!370997 lt!2084557))))))

(assert (= (and d!1622437 c!864104) b!5042471))

(assert (= (and d!1622437 (not c!864104)) b!5042472))

(declare-fun m!6076808 () Bool)

(assert (=> b!5042472 m!6076808))

(declare-fun m!6076810 () Bool)

(assert (=> b!5042472 m!6076810))

(assert (=> d!1622325 d!1622437))

(declare-fun d!1622445 () Bool)

(declare-fun c!864105 () Bool)

(assert (=> d!1622445 (= c!864105 ((_ is Nil!58306) lt!2084545))))

(declare-fun e!3148929 () (InoxSet T!104222))

(assert (=> d!1622445 (= (content!10359 lt!2084545) e!3148929)))

(declare-fun b!5042473 () Bool)

(assert (=> b!5042473 (= e!3148929 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042474 () Bool)

(assert (=> b!5042474 (= e!3148929 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084545) true) (content!10359 (t!370997 lt!2084545))))))

(assert (= (and d!1622445 c!864105) b!5042473))

(assert (= (and d!1622445 (not c!864105)) b!5042474))

(declare-fun m!6076812 () Bool)

(assert (=> b!5042474 m!6076812))

(assert (=> b!5042474 m!6076710))

(assert (=> d!1622325 d!1622445))

(declare-fun b!5042518 () Bool)

(declare-fun e!3148953 () Bool)

(declare-fun lt!2084620 () List!58430)

(assert (=> b!5042518 (= e!3148953 (or (not (= (_2!34926 lt!2084592) Nil!58306)) (= lt!2084620 (_1!34926 lt!2084592))))))

(declare-fun b!5042516 () Bool)

(declare-fun e!3148954 () List!58430)

(assert (=> b!5042516 (= e!3148954 (Cons!58306 (h!64754 (_1!34926 lt!2084592)) (++!12731 (t!370997 (_1!34926 lt!2084592)) (_2!34926 lt!2084592))))))

(declare-fun b!5042515 () Bool)

(assert (=> b!5042515 (= e!3148954 (_2!34926 lt!2084592))))

(declare-fun b!5042517 () Bool)

(declare-fun res!2148197 () Bool)

(assert (=> b!5042517 (=> (not res!2148197) (not e!3148953))))

(assert (=> b!5042517 (= res!2148197 (= (size!38912 lt!2084620) (+ (size!38912 (_1!34926 lt!2084592)) (size!38912 (_2!34926 lt!2084592)))))))

(declare-fun d!1622447 () Bool)

(assert (=> d!1622447 e!3148953))

(declare-fun res!2148198 () Bool)

(assert (=> d!1622447 (=> (not res!2148198) (not e!3148953))))

(assert (=> d!1622447 (= res!2148198 (= (content!10359 lt!2084620) ((_ map or) (content!10359 (_1!34926 lt!2084592)) (content!10359 (_2!34926 lt!2084592)))))))

(assert (=> d!1622447 (= lt!2084620 e!3148954)))

(declare-fun c!864120 () Bool)

(assert (=> d!1622447 (= c!864120 ((_ is Nil!58306) (_1!34926 lt!2084592)))))

(assert (=> d!1622447 (= (++!12731 (_1!34926 lt!2084592) (_2!34926 lt!2084592)) lt!2084620)))

(assert (= (and d!1622447 c!864120) b!5042515))

(assert (= (and d!1622447 (not c!864120)) b!5042516))

(assert (= (and d!1622447 res!2148198) b!5042517))

(assert (= (and b!5042517 res!2148197) b!5042518))

(declare-fun m!6076850 () Bool)

(assert (=> b!5042516 m!6076850))

(declare-fun m!6076852 () Bool)

(assert (=> b!5042517 m!6076852))

(declare-fun m!6076854 () Bool)

(assert (=> b!5042517 m!6076854))

(declare-fun m!6076856 () Bool)

(assert (=> b!5042517 m!6076856))

(declare-fun m!6076858 () Bool)

(assert (=> d!1622447 m!6076858))

(declare-fun m!6076860 () Bool)

(assert (=> d!1622447 m!6076860))

(declare-fun m!6076862 () Bool)

(assert (=> d!1622447 m!6076862))

(assert (=> d!1622371 d!1622447))

(declare-fun d!1622463 () Bool)

(declare-fun res!2148199 () Bool)

(declare-fun e!3148955 () Bool)

(assert (=> d!1622463 (=> (not res!2148199) (not e!3148955))))

(assert (=> d!1622463 (= res!2148199 (<= (size!38912 (list!18921 (xs!18844 (left!42706 t!4198)))) 512))))

(assert (=> d!1622463 (= (inv!77188 (left!42706 t!4198)) e!3148955)))

(declare-fun b!5042519 () Bool)

(declare-fun res!2148200 () Bool)

(assert (=> b!5042519 (=> (not res!2148200) (not e!3148955))))

(assert (=> b!5042519 (= res!2148200 (= (csize!31267 (left!42706 t!4198)) (size!38912 (list!18921 (xs!18844 (left!42706 t!4198))))))))

(declare-fun b!5042520 () Bool)

(assert (=> b!5042520 (= e!3148955 (and (> (csize!31267 (left!42706 t!4198)) 0) (<= (csize!31267 (left!42706 t!4198)) 512)))))

(assert (= (and d!1622463 res!2148199) b!5042519))

(assert (= (and b!5042519 res!2148200) b!5042520))

(declare-fun m!6076864 () Bool)

(assert (=> d!1622463 m!6076864))

(assert (=> d!1622463 m!6076864))

(declare-fun m!6076866 () Bool)

(assert (=> d!1622463 m!6076866))

(assert (=> b!5042519 m!6076864))

(assert (=> b!5042519 m!6076864))

(assert (=> b!5042519 m!6076866))

(assert (=> b!5042244 d!1622463))

(declare-fun b!5042529 () Bool)

(declare-fun res!2148206 () Bool)

(declare-fun e!3148961 () Bool)

(assert (=> b!5042529 (=> (not res!2148206) (not e!3148961))))

(assert (=> b!5042529 (= res!2148206 (isBalanced!4380 (left!42706 (left!42706 t!4198))))))

(declare-fun b!5042530 () Bool)

(declare-fun e!3148960 () Bool)

(assert (=> b!5042530 (= e!3148960 e!3148961)))

(declare-fun res!2148202 () Bool)

(assert (=> b!5042530 (=> (not res!2148202) (not e!3148961))))

(assert (=> b!5042530 (= res!2148202 (<= (- 1) (- (height!2096 (left!42706 (left!42706 t!4198))) (height!2096 (right!43036 (left!42706 t!4198))))))))

(declare-fun d!1622465 () Bool)

(declare-fun res!2148201 () Bool)

(assert (=> d!1622465 (=> res!2148201 e!3148960)))

(assert (=> d!1622465 (= res!2148201 (not ((_ is Node!15518) (left!42706 t!4198))))))

(assert (=> d!1622465 (= (isBalanced!4380 (left!42706 t!4198)) e!3148960)))

(declare-fun b!5042531 () Bool)

(declare-fun res!2148205 () Bool)

(assert (=> b!5042531 (=> (not res!2148205) (not e!3148961))))

(assert (=> b!5042531 (= res!2148205 (isBalanced!4380 (right!43036 (left!42706 t!4198))))))

(declare-fun b!5042532 () Bool)

(declare-fun res!2148204 () Bool)

(assert (=> b!5042532 (=> (not res!2148204) (not e!3148961))))

(assert (=> b!5042532 (= res!2148204 (<= (- (height!2096 (left!42706 (left!42706 t!4198))) (height!2096 (right!43036 (left!42706 t!4198)))) 1))))

(declare-fun b!5042533 () Bool)

(assert (=> b!5042533 (= e!3148961 (not (isEmpty!31541 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042534 () Bool)

(declare-fun res!2148203 () Bool)

(assert (=> b!5042534 (=> (not res!2148203) (not e!3148961))))

(assert (=> b!5042534 (= res!2148203 (not (isEmpty!31541 (left!42706 (left!42706 t!4198)))))))

(assert (= (and d!1622465 (not res!2148201)) b!5042530))

(assert (= (and b!5042530 res!2148202) b!5042532))

(assert (= (and b!5042532 res!2148204) b!5042529))

(assert (= (and b!5042529 res!2148206) b!5042531))

(assert (= (and b!5042531 res!2148205) b!5042534))

(assert (= (and b!5042534 res!2148203) b!5042533))

(declare-fun m!6076868 () Bool)

(assert (=> b!5042529 m!6076868))

(declare-fun m!6076870 () Bool)

(assert (=> b!5042533 m!6076870))

(declare-fun m!6076872 () Bool)

(assert (=> b!5042531 m!6076872))

(assert (=> b!5042532 m!6076696))

(assert (=> b!5042532 m!6076698))

(assert (=> b!5042530 m!6076696))

(assert (=> b!5042530 m!6076698))

(declare-fun m!6076874 () Bool)

(assert (=> b!5042534 m!6076874))

(assert (=> b!5042116 d!1622465))

(assert (=> b!5042281 d!1622333))

(declare-fun d!1622467 () Bool)

(declare-fun lt!2084621 () Int)

(assert (=> d!1622467 (>= lt!2084621 0)))

(declare-fun e!3148962 () Int)

(assert (=> d!1622467 (= lt!2084621 e!3148962)))

(declare-fun c!864125 () Bool)

(assert (=> d!1622467 (= c!864125 ((_ is Nil!58306) (t!370997 lt!2084545)))))

(assert (=> d!1622467 (= (size!38912 (t!370997 lt!2084545)) lt!2084621)))

(declare-fun b!5042535 () Bool)

(assert (=> b!5042535 (= e!3148962 0)))

(declare-fun b!5042536 () Bool)

(assert (=> b!5042536 (= e!3148962 (+ 1 (size!38912 (t!370997 (t!370997 lt!2084545)))))))

(assert (= (and d!1622467 c!864125) b!5042535))

(assert (= (and d!1622467 (not c!864125)) b!5042536))

(declare-fun m!6076876 () Bool)

(assert (=> b!5042536 m!6076876))

(assert (=> b!5042211 d!1622467))

(declare-fun d!1622469 () Bool)

(declare-fun res!2148207 () Bool)

(declare-fun e!3148963 () Bool)

(assert (=> d!1622469 (=> (not res!2148207) (not e!3148963))))

(assert (=> d!1622469 (= res!2148207 (= (csize!31266 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) (+ (size!38913 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (size!38913 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(assert (=> d!1622469 (= (inv!77187 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) e!3148963)))

(declare-fun b!5042537 () Bool)

(declare-fun res!2148208 () Bool)

(assert (=> b!5042537 (=> (not res!2148208) (not e!3148963))))

(assert (=> b!5042537 (= res!2148208 (and (not (= (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) Empty!15518)) (not (= (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) Empty!15518))))))

(declare-fun b!5042538 () Bool)

(declare-fun res!2148209 () Bool)

(assert (=> b!5042538 (=> (not res!2148209) (not e!3148963))))

(assert (=> b!5042538 (= res!2148209 (= (cheight!15729 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))) (+ (max!0 (height!2096 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (height!2096 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))) 1)))))

(declare-fun b!5042539 () Bool)

(assert (=> b!5042539 (= e!3148963 (<= 0 (cheight!15729 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))

(assert (= (and d!1622469 res!2148207) b!5042537))

(assert (= (and b!5042537 res!2148208) b!5042538))

(assert (= (and b!5042538 res!2148209) b!5042539))

(declare-fun m!6076878 () Bool)

(assert (=> d!1622469 m!6076878))

(declare-fun m!6076880 () Bool)

(assert (=> d!1622469 m!6076880))

(declare-fun m!6076882 () Bool)

(assert (=> b!5042538 m!6076882))

(declare-fun m!6076884 () Bool)

(assert (=> b!5042538 m!6076884))

(assert (=> b!5042538 m!6076882))

(assert (=> b!5042538 m!6076884))

(declare-fun m!6076886 () Bool)

(assert (=> b!5042538 m!6076886))

(assert (=> b!5042227 d!1622469))

(assert (=> b!5042315 d!1622363))

(declare-fun d!1622471 () Bool)

(declare-fun c!864128 () Bool)

(assert (=> d!1622471 (= c!864128 ((_ is Node!15518) (left!42706 (left!42706 t!4198))))))

(declare-fun e!3148966 () Bool)

(assert (=> d!1622471 (= (inv!77183 (left!42706 (left!42706 t!4198))) e!3148966)))

(declare-fun b!5042544 () Bool)

(assert (=> b!5042544 (= e!3148966 (inv!77187 (left!42706 (left!42706 t!4198))))))

(declare-fun b!5042545 () Bool)

(declare-fun e!3148967 () Bool)

(assert (=> b!5042545 (= e!3148966 e!3148967)))

(declare-fun res!2148210 () Bool)

(assert (=> b!5042545 (= res!2148210 (not ((_ is Leaf!25741) (left!42706 (left!42706 t!4198)))))))

(assert (=> b!5042545 (=> res!2148210 e!3148967)))

(declare-fun b!5042546 () Bool)

(assert (=> b!5042546 (= e!3148967 (inv!77188 (left!42706 (left!42706 t!4198))))))

(assert (= (and d!1622471 c!864128) b!5042544))

(assert (= (and d!1622471 (not c!864128)) b!5042545))

(assert (= (and b!5042545 (not res!2148210)) b!5042546))

(declare-fun m!6076888 () Bool)

(assert (=> b!5042544 m!6076888))

(declare-fun m!6076890 () Bool)

(assert (=> b!5042546 m!6076890))

(assert (=> b!5042329 d!1622471))

(declare-fun d!1622473 () Bool)

(declare-fun c!864129 () Bool)

(assert (=> d!1622473 (= c!864129 ((_ is Node!15518) (right!43036 (left!42706 t!4198))))))

(declare-fun e!3148968 () Bool)

(assert (=> d!1622473 (= (inv!77183 (right!43036 (left!42706 t!4198))) e!3148968)))

(declare-fun b!5042547 () Bool)

(assert (=> b!5042547 (= e!3148968 (inv!77187 (right!43036 (left!42706 t!4198))))))

(declare-fun b!5042548 () Bool)

(declare-fun e!3148969 () Bool)

(assert (=> b!5042548 (= e!3148968 e!3148969)))

(declare-fun res!2148211 () Bool)

(assert (=> b!5042548 (= res!2148211 (not ((_ is Leaf!25741) (right!43036 (left!42706 t!4198)))))))

(assert (=> b!5042548 (=> res!2148211 e!3148969)))

(declare-fun b!5042549 () Bool)

(assert (=> b!5042549 (= e!3148969 (inv!77188 (right!43036 (left!42706 t!4198))))))

(assert (= (and d!1622473 c!864129) b!5042547))

(assert (= (and d!1622473 (not c!864129)) b!5042548))

(assert (= (and b!5042548 (not res!2148211)) b!5042549))

(declare-fun m!6076898 () Bool)

(assert (=> b!5042547 m!6076898))

(declare-fun m!6076900 () Bool)

(assert (=> b!5042549 m!6076900))

(assert (=> b!5042329 d!1622473))

(declare-fun d!1622475 () Bool)

(declare-fun lt!2084622 () Int)

(assert (=> d!1622475 (>= lt!2084622 0)))

(declare-fun e!3148970 () Int)

(assert (=> d!1622475 (= lt!2084622 e!3148970)))

(declare-fun c!864130 () Bool)

(assert (=> d!1622475 (= c!864130 ((_ is Nil!58306) (list!18922 t!4198)))))

(assert (=> d!1622475 (= (size!38912 (list!18922 t!4198)) lt!2084622)))

(declare-fun b!5042550 () Bool)

(assert (=> b!5042550 (= e!3148970 0)))

(declare-fun b!5042551 () Bool)

(assert (=> b!5042551 (= e!3148970 (+ 1 (size!38912 (t!370997 (list!18922 t!4198)))))))

(assert (= (and d!1622475 c!864130) b!5042550))

(assert (= (and d!1622475 (not c!864130)) b!5042551))

(declare-fun m!6076902 () Bool)

(assert (=> b!5042551 m!6076902))

(assert (=> d!1622311 d!1622475))

(declare-fun d!1622479 () Bool)

(declare-fun c!864137 () Bool)

(assert (=> d!1622479 (= c!864137 ((_ is Empty!15518) t!4198))))

(declare-fun e!3148981 () List!58430)

(assert (=> d!1622479 (= (list!18922 t!4198) e!3148981)))

(declare-fun b!5042572 () Bool)

(declare-fun e!3148982 () List!58430)

(assert (=> b!5042572 (= e!3148981 e!3148982)))

(declare-fun c!864138 () Bool)

(assert (=> b!5042572 (= c!864138 ((_ is Leaf!25741) t!4198))))

(declare-fun b!5042573 () Bool)

(assert (=> b!5042573 (= e!3148982 (list!18921 (xs!18844 t!4198)))))

(declare-fun b!5042574 () Bool)

(assert (=> b!5042574 (= e!3148982 (++!12731 (list!18922 (left!42706 t!4198)) (list!18922 (right!43036 t!4198))))))

(declare-fun b!5042571 () Bool)

(assert (=> b!5042571 (= e!3148981 Nil!58306)))

(assert (= (and d!1622479 c!864137) b!5042571))

(assert (= (and d!1622479 (not c!864137)) b!5042572))

(assert (= (and b!5042572 c!864138) b!5042573))

(assert (= (and b!5042572 (not c!864138)) b!5042574))

(assert (=> b!5042573 m!6076466))

(declare-fun m!6076928 () Bool)

(assert (=> b!5042574 m!6076928))

(assert (=> b!5042574 m!6076756))

(assert (=> b!5042574 m!6076928))

(assert (=> b!5042574 m!6076756))

(declare-fun m!6076930 () Bool)

(assert (=> b!5042574 m!6076930))

(assert (=> d!1622311 d!1622479))

(declare-fun d!1622493 () Bool)

(declare-fun lt!2084625 () Int)

(assert (=> d!1622493 (= lt!2084625 (size!38912 (list!18921 (xs!18844 t!4198))))))

(declare-fun choose!37264 (IArray!31097) Int)

(assert (=> d!1622493 (= lt!2084625 (choose!37264 (xs!18844 t!4198)))))

(assert (=> d!1622493 (= (size!38914 (xs!18844 t!4198)) lt!2084625)))

(declare-fun bs!1188997 () Bool)

(assert (= bs!1188997 d!1622493))

(assert (=> bs!1188997 m!6076466))

(assert (=> bs!1188997 m!6076466))

(assert (=> bs!1188997 m!6076666))

(declare-fun m!6076934 () Bool)

(assert (=> bs!1188997 m!6076934))

(assert (=> b!5042241 d!1622493))

(declare-fun d!1622495 () Bool)

(declare-fun c!864142 () Bool)

(assert (=> d!1622495 (= c!864142 ((_ is Nil!58306) lt!2084587))))

(declare-fun e!3148986 () (InoxSet T!104222))

(assert (=> d!1622495 (= (content!10359 lt!2084587) e!3148986)))

(declare-fun b!5042581 () Bool)

(assert (=> b!5042581 (= e!3148986 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042582 () Bool)

(assert (=> b!5042582 (= e!3148986 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084587) true) (content!10359 (t!370997 lt!2084587))))))

(assert (= (and d!1622495 c!864142) b!5042581))

(assert (= (and d!1622495 (not c!864142)) b!5042582))

(declare-fun m!6076942 () Bool)

(assert (=> b!5042582 m!6076942))

(declare-fun m!6076944 () Bool)

(assert (=> b!5042582 m!6076944))

(assert (=> d!1622363 d!1622495))

(assert (=> d!1622363 d!1622445))

(declare-fun d!1622501 () Bool)

(declare-fun lt!2084626 () Bool)

(assert (=> d!1622501 (= lt!2084626 (isEmpty!31543 (list!18922 (left!42706 t!4198))))))

(assert (=> d!1622501 (= lt!2084626 (= (size!38913 (left!42706 t!4198)) 0))))

(assert (=> d!1622501 (= (isEmpty!31541 (left!42706 t!4198)) lt!2084626)))

(declare-fun bs!1188998 () Bool)

(assert (= bs!1188998 d!1622501))

(assert (=> bs!1188998 m!6076928))

(assert (=> bs!1188998 m!6076928))

(declare-fun m!6076946 () Bool)

(assert (=> bs!1188998 m!6076946))

(assert (=> bs!1188998 m!6076678))

(assert (=> b!5042121 d!1622501))

(declare-fun d!1622503 () Bool)

(declare-fun res!2148220 () Bool)

(declare-fun e!3148993 () Bool)

(assert (=> d!1622503 (=> (not res!2148220) (not e!3148993))))

(assert (=> d!1622503 (= res!2148220 (<= (size!38912 (list!18921 (xs!18844 (right!43036 t!4198)))) 512))))

(assert (=> d!1622503 (= (inv!77188 (right!43036 t!4198)) e!3148993)))

(declare-fun b!5042594 () Bool)

(declare-fun res!2148221 () Bool)

(assert (=> b!5042594 (=> (not res!2148221) (not e!3148993))))

(assert (=> b!5042594 (= res!2148221 (= (csize!31267 (right!43036 t!4198)) (size!38912 (list!18921 (xs!18844 (right!43036 t!4198))))))))

(declare-fun b!5042595 () Bool)

(assert (=> b!5042595 (= e!3148993 (and (> (csize!31267 (right!43036 t!4198)) 0) (<= (csize!31267 (right!43036 t!4198)) 512)))))

(assert (= (and d!1622503 res!2148220) b!5042594))

(assert (= (and b!5042594 res!2148221) b!5042595))

(declare-fun m!6076948 () Bool)

(assert (=> d!1622503 m!6076948))

(assert (=> d!1622503 m!6076948))

(declare-fun m!6076950 () Bool)

(assert (=> d!1622503 m!6076950))

(assert (=> b!5042594 m!6076948))

(assert (=> b!5042594 m!6076948))

(assert (=> b!5042594 m!6076950))

(assert (=> b!5042251 d!1622503))

(declare-fun e!3148995 () Bool)

(declare-fun tp!1411286 () Bool)

(declare-fun tp!1411285 () Bool)

(declare-fun b!5042596 () Bool)

(assert (=> b!5042596 (= e!3148995 (and (inv!77183 (left!42706 (left!42706 (left!42706 t!4198)))) tp!1411286 (inv!77183 (right!43036 (left!42706 (left!42706 t!4198)))) tp!1411285))))

(declare-fun b!5042598 () Bool)

(declare-fun e!3148994 () Bool)

(declare-fun tp!1411284 () Bool)

(assert (=> b!5042598 (= e!3148994 tp!1411284)))

(declare-fun b!5042597 () Bool)

(assert (=> b!5042597 (= e!3148995 (and (inv!77184 (xs!18844 (left!42706 (left!42706 t!4198)))) e!3148994))))

(assert (=> b!5042329 (= tp!1411271 (and (inv!77183 (left!42706 (left!42706 t!4198))) e!3148995))))

(assert (= (and b!5042329 ((_ is Node!15518) (left!42706 (left!42706 t!4198)))) b!5042596))

(assert (= b!5042597 b!5042598))

(assert (= (and b!5042329 ((_ is Leaf!25741) (left!42706 (left!42706 t!4198)))) b!5042597))

(declare-fun m!6076960 () Bool)

(assert (=> b!5042596 m!6076960))

(declare-fun m!6076962 () Bool)

(assert (=> b!5042596 m!6076962))

(declare-fun m!6076964 () Bool)

(assert (=> b!5042597 m!6076964))

(assert (=> b!5042329 m!6076634))

(declare-fun tp!1411289 () Bool)

(declare-fun b!5042601 () Bool)

(declare-fun e!3148998 () Bool)

(declare-fun tp!1411288 () Bool)

(assert (=> b!5042601 (= e!3148998 (and (inv!77183 (left!42706 (right!43036 (left!42706 t!4198)))) tp!1411289 (inv!77183 (right!43036 (right!43036 (left!42706 t!4198)))) tp!1411288))))

(declare-fun b!5042603 () Bool)

(declare-fun e!3148997 () Bool)

(declare-fun tp!1411287 () Bool)

(assert (=> b!5042603 (= e!3148997 tp!1411287)))

(declare-fun b!5042602 () Bool)

(assert (=> b!5042602 (= e!3148998 (and (inv!77184 (xs!18844 (right!43036 (left!42706 t!4198)))) e!3148997))))

(assert (=> b!5042329 (= tp!1411270 (and (inv!77183 (right!43036 (left!42706 t!4198))) e!3148998))))

(assert (= (and b!5042329 ((_ is Node!15518) (right!43036 (left!42706 t!4198)))) b!5042601))

(assert (= b!5042602 b!5042603))

(assert (= (and b!5042329 ((_ is Leaf!25741) (right!43036 (left!42706 t!4198)))) b!5042602))

(declare-fun m!6076966 () Bool)

(assert (=> b!5042601 m!6076966))

(declare-fun m!6076968 () Bool)

(assert (=> b!5042601 m!6076968))

(declare-fun m!6076970 () Bool)

(assert (=> b!5042602 m!6076970))

(assert (=> b!5042329 m!6076636))

(declare-fun b!5042604 () Bool)

(declare-fun e!3148999 () Bool)

(declare-fun tp!1411290 () Bool)

(assert (=> b!5042604 (= e!3148999 (and tp_is_empty!36799 tp!1411290))))

(assert (=> b!5042334 (= tp!1411272 e!3148999)))

(assert (= (and b!5042334 ((_ is Cons!58306) (innerList!15606 (xs!18844 (right!43036 t!4198))))) b!5042604))

(declare-fun tp!1411293 () Bool)

(declare-fun e!3149001 () Bool)

(declare-fun tp!1411292 () Bool)

(declare-fun b!5042605 () Bool)

(assert (=> b!5042605 (= e!3149001 (and (inv!77183 (left!42706 (left!42706 (right!43036 t!4198)))) tp!1411293 (inv!77183 (right!43036 (left!42706 (right!43036 t!4198)))) tp!1411292))))

(declare-fun b!5042607 () Bool)

(declare-fun e!3149000 () Bool)

(declare-fun tp!1411291 () Bool)

(assert (=> b!5042607 (= e!3149000 tp!1411291)))

(declare-fun b!5042606 () Bool)

(assert (=> b!5042606 (= e!3149001 (and (inv!77184 (xs!18844 (left!42706 (right!43036 t!4198)))) e!3149000))))

(assert (=> b!5042332 (= tp!1411274 (and (inv!77183 (left!42706 (right!43036 t!4198))) e!3149001))))

(assert (= (and b!5042332 ((_ is Node!15518) (left!42706 (right!43036 t!4198)))) b!5042605))

(assert (= b!5042606 b!5042607))

(assert (= (and b!5042332 ((_ is Leaf!25741) (left!42706 (right!43036 t!4198)))) b!5042606))

(declare-fun m!6076972 () Bool)

(assert (=> b!5042605 m!6076972))

(declare-fun m!6076974 () Bool)

(assert (=> b!5042605 m!6076974))

(declare-fun m!6076976 () Bool)

(assert (=> b!5042606 m!6076976))

(assert (=> b!5042332 m!6076640))

(declare-fun b!5042608 () Bool)

(declare-fun tp!1411295 () Bool)

(declare-fun e!3149003 () Bool)

(declare-fun tp!1411296 () Bool)

(assert (=> b!5042608 (= e!3149003 (and (inv!77183 (left!42706 (right!43036 (right!43036 t!4198)))) tp!1411296 (inv!77183 (right!43036 (right!43036 (right!43036 t!4198)))) tp!1411295))))

(declare-fun b!5042610 () Bool)

(declare-fun e!3149002 () Bool)

(declare-fun tp!1411294 () Bool)

(assert (=> b!5042610 (= e!3149002 tp!1411294)))

(declare-fun b!5042609 () Bool)

(assert (=> b!5042609 (= e!3149003 (and (inv!77184 (xs!18844 (right!43036 (right!43036 t!4198)))) e!3149002))))

(assert (=> b!5042332 (= tp!1411273 (and (inv!77183 (right!43036 (right!43036 t!4198))) e!3149003))))

(assert (= (and b!5042332 ((_ is Node!15518) (right!43036 (right!43036 t!4198)))) b!5042608))

(assert (= b!5042609 b!5042610))

(assert (= (and b!5042332 ((_ is Leaf!25741) (right!43036 (right!43036 t!4198)))) b!5042609))

(declare-fun m!6076978 () Bool)

(assert (=> b!5042608 m!6076978))

(declare-fun m!6076980 () Bool)

(assert (=> b!5042608 m!6076980))

(declare-fun m!6076982 () Bool)

(assert (=> b!5042609 m!6076982))

(assert (=> b!5042332 m!6076642))

(declare-fun b!5042617 () Bool)

(declare-fun e!3149006 () Bool)

(declare-fun tp!1411297 () Bool)

(assert (=> b!5042617 (= e!3149006 (and tp_is_empty!36799 tp!1411297))))

(assert (=> b!5042331 (= tp!1411269 e!3149006)))

(assert (= (and b!5042331 ((_ is Cons!58306) (innerList!15606 (xs!18844 (left!42706 t!4198))))) b!5042617))

(declare-fun b!5042618 () Bool)

(declare-fun e!3149007 () Bool)

(declare-fun tp!1411298 () Bool)

(assert (=> b!5042618 (= e!3149007 (and tp_is_empty!36799 tp!1411298))))

(assert (=> b!5042339 (= tp!1411277 e!3149007)))

(assert (= (and b!5042339 ((_ is Cons!58306) (t!370997 (innerList!15606 (xs!18844 t!4198))))) b!5042618))

(check-sat (not b!5042340) (not b!5042618) (not b!5042608) (not b!5042405) (not b!5042617) (not b!5042332) (not b!5042424) (not b!5042425) (not b!5042359) (not b!5042532) (not b!5042574) (not b!5042351) (not b!5042547) (not d!1622395) (not d!1622381) (not bm!351425) (not d!1622493) (not b!5042474) (not b!5042606) (not b!5042361) (not b!5042598) (not b!5042609) (not b!5042459) (not b!5042329) (not b!5042530) (not b!5042389) (not b!5042371) (not d!1622503) (not b!5042531) (not d!1622447) (not b!5042446) (not b!5042582) (not b!5042536) (not d!1622403) (not d!1622413) (not b!5042438) (not b!5042610) (not b!5042551) (not d!1622421) (not d!1622385) tp_is_empty!36799 (not b!5042444) (not b!5042605) (not b!5042342) (not b!5042519) (not b!5042440) (not b!5042447) (not b!5042516) (not b!5042602) (not b!5042356) (not b!5042372) (not bm!351426) (not b!5042443) (not b!5042597) (not b!5042366) (not b!5042533) (not b!5042398) (not d!1622463) (not b!5042343) (not d!1622389) (not b!5042607) (not d!1622377) (not b!5042441) (not b!5042400) (not b!5042603) (not b!5042604) (not b!5042382) (not b!5042573) (not b!5042538) (not b!5042448) (not d!1622379) (not b!5042385) (not b!5042601) (not b!5042472) (not b!5042368) (not b!5042352) (not b!5042386) (not b!5042344) (not d!1622401) (not b!5042426) (not b!5042546) (not b!5042549) (not d!1622411) (not d!1622501) (not d!1622435) (not b!5042594) (not b!5042445) (not b!5042422) (not b!5042450) (not d!1622433) (not d!1622375) (not b!5042544) (not b!5042529) (not b!5042370) (not b!5042406) (not d!1622469) (not b!5042534) (not d!1622393) (not b!5042517) (not d!1622405) (not b!5042421) (not d!1622383) (not b!5042596))
(check-sat)
(get-model)

(declare-fun d!1622535 () Bool)

(declare-fun res!2148242 () Bool)

(declare-fun e!3149033 () Bool)

(assert (=> d!1622535 (=> (not res!2148242) (not e!3149033))))

(assert (=> d!1622535 (= res!2148242 (= (csize!31266 (right!43036 (left!42706 t!4198))) (+ (size!38913 (left!42706 (right!43036 (left!42706 t!4198)))) (size!38913 (right!43036 (right!43036 (left!42706 t!4198)))))))))

(assert (=> d!1622535 (= (inv!77187 (right!43036 (left!42706 t!4198))) e!3149033)))

(declare-fun b!5042662 () Bool)

(declare-fun res!2148243 () Bool)

(assert (=> b!5042662 (=> (not res!2148243) (not e!3149033))))

(assert (=> b!5042662 (= res!2148243 (and (not (= (left!42706 (right!43036 (left!42706 t!4198))) Empty!15518)) (not (= (right!43036 (right!43036 (left!42706 t!4198))) Empty!15518))))))

(declare-fun b!5042663 () Bool)

(declare-fun res!2148244 () Bool)

(assert (=> b!5042663 (=> (not res!2148244) (not e!3149033))))

(assert (=> b!5042663 (= res!2148244 (= (cheight!15729 (right!43036 (left!42706 t!4198))) (+ (max!0 (height!2096 (left!42706 (right!43036 (left!42706 t!4198)))) (height!2096 (right!43036 (right!43036 (left!42706 t!4198))))) 1)))))

(declare-fun b!5042664 () Bool)

(assert (=> b!5042664 (= e!3149033 (<= 0 (cheight!15729 (right!43036 (left!42706 t!4198)))))))

(assert (= (and d!1622535 res!2148242) b!5042662))

(assert (= (and b!5042662 res!2148243) b!5042663))

(assert (= (and b!5042663 res!2148244) b!5042664))

(declare-fun m!6077058 () Bool)

(assert (=> d!1622535 m!6077058))

(declare-fun m!6077060 () Bool)

(assert (=> d!1622535 m!6077060))

(declare-fun m!6077062 () Bool)

(assert (=> b!5042663 m!6077062))

(declare-fun m!6077064 () Bool)

(assert (=> b!5042663 m!6077064))

(assert (=> b!5042663 m!6077062))

(assert (=> b!5042663 m!6077064))

(declare-fun m!6077066 () Bool)

(assert (=> b!5042663 m!6077066))

(assert (=> b!5042547 d!1622535))

(declare-fun d!1622537 () Bool)

(declare-fun c!864156 () Bool)

(assert (=> d!1622537 (= c!864156 ((_ is Nil!58306) (t!370997 lt!2084545)))))

(declare-fun e!3149034 () (InoxSet T!104222))

(assert (=> d!1622537 (= (content!10359 (t!370997 lt!2084545)) e!3149034)))

(declare-fun b!5042665 () Bool)

(assert (=> b!5042665 (= e!3149034 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042666 () Bool)

(assert (=> b!5042666 (= e!3149034 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (t!370997 lt!2084545)) true) (content!10359 (t!370997 (t!370997 lt!2084545)))))))

(assert (= (and d!1622537 c!864156) b!5042665))

(assert (= (and d!1622537 (not c!864156)) b!5042666))

(declare-fun m!6077068 () Bool)

(assert (=> b!5042666 m!6077068))

(declare-fun m!6077070 () Bool)

(assert (=> b!5042666 m!6077070))

(assert (=> b!5042474 d!1622537))

(declare-fun d!1622539 () Bool)

(assert (=> d!1622539 (= (height!2096 (left!42706 (right!43036 t!4198))) (ite ((_ is Empty!15518) (left!42706 (right!43036 t!4198))) 0 (ite ((_ is Leaf!25741) (left!42706 (right!43036 t!4198))) 1 (cheight!15729 (left!42706 (right!43036 t!4198))))))))

(assert (=> b!5042447 d!1622539))

(declare-fun d!1622541 () Bool)

(assert (=> d!1622541 (= (height!2096 (right!43036 (right!43036 t!4198))) (ite ((_ is Empty!15518) (right!43036 (right!43036 t!4198))) 0 (ite ((_ is Leaf!25741) (right!43036 (right!43036 t!4198))) 1 (cheight!15729 (right!43036 (right!43036 t!4198))))))))

(assert (=> b!5042447 d!1622541))

(declare-fun d!1622543 () Bool)

(assert (=> d!1622543 (= (inv!77184 (xs!18844 (left!42706 (left!42706 t!4198)))) (<= (size!38912 (innerList!15606 (xs!18844 (left!42706 (left!42706 t!4198))))) 2147483647))))

(declare-fun bs!1189002 () Bool)

(assert (= bs!1189002 d!1622543))

(declare-fun m!6077072 () Bool)

(assert (=> bs!1189002 m!6077072))

(assert (=> b!5042597 d!1622543))

(assert (=> b!5042445 d!1622539))

(assert (=> b!5042445 d!1622541))

(declare-fun d!1622545 () Bool)

(declare-fun lt!2084638 () Bool)

(assert (=> d!1622545 (= lt!2084638 (isEmpty!31543 (list!18922 (right!43036 (left!42706 t!4198)))))))

(assert (=> d!1622545 (= lt!2084638 (= (size!38913 (right!43036 (left!42706 t!4198))) 0))))

(assert (=> d!1622545 (= (isEmpty!31541 (right!43036 (left!42706 t!4198))) lt!2084638)))

(declare-fun bs!1189003 () Bool)

(assert (= bs!1189003 d!1622545))

(declare-fun m!6077074 () Bool)

(assert (=> bs!1189003 m!6077074))

(assert (=> bs!1189003 m!6077074))

(declare-fun m!6077076 () Bool)

(assert (=> bs!1189003 m!6077076))

(assert (=> bs!1189003 m!6076694))

(assert (=> b!5042533 d!1622545))

(declare-fun d!1622547 () Bool)

(assert (=> d!1622547 (= (inv!77184 (xs!18844 (right!43036 (left!42706 t!4198)))) (<= (size!38912 (innerList!15606 (xs!18844 (right!43036 (left!42706 t!4198))))) 2147483647))))

(declare-fun bs!1189004 () Bool)

(assert (= bs!1189004 d!1622547))

(declare-fun m!6077078 () Bool)

(assert (=> bs!1189004 m!6077078))

(assert (=> b!5042602 d!1622547))

(declare-fun d!1622549 () Bool)

(declare-fun lt!2084639 () Int)

(assert (=> d!1622549 (>= lt!2084639 0)))

(declare-fun e!3149035 () Int)

(assert (=> d!1622549 (= lt!2084639 e!3149035)))

(declare-fun c!864157 () Bool)

(assert (=> d!1622549 (= c!864157 ((_ is Nil!58306) (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))))

(assert (=> d!1622549 (= (size!38912 (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))) lt!2084639)))

(declare-fun b!5042667 () Bool)

(assert (=> b!5042667 (= e!3149035 0)))

(declare-fun b!5042668 () Bool)

(assert (=> b!5042668 (= e!3149035 (+ 1 (size!38912 (t!370997 (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))))))

(assert (= (and d!1622549 c!864157) b!5042667))

(assert (= (and d!1622549 (not c!864157)) b!5042668))

(declare-fun m!6077080 () Bool)

(assert (=> b!5042668 m!6077080))

(assert (=> b!5042386 d!1622549))

(declare-fun d!1622551 () Bool)

(assert (=> d!1622551 (= (list!18921 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (innerList!15606 (xs!18844 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))

(assert (=> b!5042386 d!1622551))

(declare-fun b!5042669 () Bool)

(declare-fun res!2148250 () Bool)

(declare-fun e!3149037 () Bool)

(assert (=> b!5042669 (=> (not res!2148250) (not e!3149037))))

(assert (=> b!5042669 (= res!2148250 (isBalanced!4380 (left!42706 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042670 () Bool)

(declare-fun e!3149036 () Bool)

(assert (=> b!5042670 (= e!3149036 e!3149037)))

(declare-fun res!2148246 () Bool)

(assert (=> b!5042670 (=> (not res!2148246) (not e!3149037))))

(assert (=> b!5042670 (= res!2148246 (<= (- 1) (- (height!2096 (left!42706 (right!43036 (left!42706 t!4198)))) (height!2096 (right!43036 (right!43036 (left!42706 t!4198)))))))))

(declare-fun d!1622553 () Bool)

(declare-fun res!2148245 () Bool)

(assert (=> d!1622553 (=> res!2148245 e!3149036)))

(assert (=> d!1622553 (= res!2148245 (not ((_ is Node!15518) (right!43036 (left!42706 t!4198)))))))

(assert (=> d!1622553 (= (isBalanced!4380 (right!43036 (left!42706 t!4198))) e!3149036)))

(declare-fun b!5042671 () Bool)

(declare-fun res!2148249 () Bool)

(assert (=> b!5042671 (=> (not res!2148249) (not e!3149037))))

(assert (=> b!5042671 (= res!2148249 (isBalanced!4380 (right!43036 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042672 () Bool)

(declare-fun res!2148248 () Bool)

(assert (=> b!5042672 (=> (not res!2148248) (not e!3149037))))

(assert (=> b!5042672 (= res!2148248 (<= (- (height!2096 (left!42706 (right!43036 (left!42706 t!4198)))) (height!2096 (right!43036 (right!43036 (left!42706 t!4198))))) 1))))

(declare-fun b!5042673 () Bool)

(assert (=> b!5042673 (= e!3149037 (not (isEmpty!31541 (right!43036 (right!43036 (left!42706 t!4198))))))))

(declare-fun b!5042674 () Bool)

(declare-fun res!2148247 () Bool)

(assert (=> b!5042674 (=> (not res!2148247) (not e!3149037))))

(assert (=> b!5042674 (= res!2148247 (not (isEmpty!31541 (left!42706 (right!43036 (left!42706 t!4198))))))))

(assert (= (and d!1622553 (not res!2148245)) b!5042670))

(assert (= (and b!5042670 res!2148246) b!5042672))

(assert (= (and b!5042672 res!2148248) b!5042669))

(assert (= (and b!5042669 res!2148250) b!5042671))

(assert (= (and b!5042671 res!2148249) b!5042674))

(assert (= (and b!5042674 res!2148247) b!5042673))

(declare-fun m!6077082 () Bool)

(assert (=> b!5042669 m!6077082))

(declare-fun m!6077084 () Bool)

(assert (=> b!5042673 m!6077084))

(declare-fun m!6077086 () Bool)

(assert (=> b!5042671 m!6077086))

(assert (=> b!5042672 m!6077062))

(assert (=> b!5042672 m!6077064))

(assert (=> b!5042670 m!6077062))

(assert (=> b!5042670 m!6077064))

(declare-fun m!6077088 () Bool)

(assert (=> b!5042674 m!6077088))

(assert (=> b!5042531 d!1622553))

(declare-fun d!1622555 () Bool)

(declare-fun c!864158 () Bool)

(assert (=> d!1622555 (= c!864158 ((_ is Nil!58306) lt!2084595))))

(declare-fun e!3149038 () (InoxSet T!104222))

(assert (=> d!1622555 (= (content!10359 lt!2084595) e!3149038)))

(declare-fun b!5042675 () Bool)

(assert (=> b!5042675 (= e!3149038 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042676 () Bool)

(assert (=> b!5042676 (= e!3149038 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084595) true) (content!10359 (t!370997 lt!2084595))))))

(assert (= (and d!1622555 c!864158) b!5042675))

(assert (= (and d!1622555 (not c!864158)) b!5042676))

(declare-fun m!6077090 () Bool)

(assert (=> b!5042676 m!6077090))

(declare-fun m!6077092 () Bool)

(assert (=> b!5042676 m!6077092))

(assert (=> d!1622377 d!1622555))

(assert (=> d!1622377 d!1622445))

(declare-fun d!1622557 () Bool)

(declare-fun c!864159 () Bool)

(assert (=> d!1622557 (= c!864159 ((_ is Node!15518) (left!42706 (left!42706 (right!43036 t!4198)))))))

(declare-fun e!3149039 () Bool)

(assert (=> d!1622557 (= (inv!77183 (left!42706 (left!42706 (right!43036 t!4198)))) e!3149039)))

(declare-fun b!5042677 () Bool)

(assert (=> b!5042677 (= e!3149039 (inv!77187 (left!42706 (left!42706 (right!43036 t!4198)))))))

(declare-fun b!5042678 () Bool)

(declare-fun e!3149040 () Bool)

(assert (=> b!5042678 (= e!3149039 e!3149040)))

(declare-fun res!2148251 () Bool)

(assert (=> b!5042678 (= res!2148251 (not ((_ is Leaf!25741) (left!42706 (left!42706 (right!43036 t!4198))))))))

(assert (=> b!5042678 (=> res!2148251 e!3149040)))

(declare-fun b!5042679 () Bool)

(assert (=> b!5042679 (= e!3149040 (inv!77188 (left!42706 (left!42706 (right!43036 t!4198)))))))

(assert (= (and d!1622557 c!864159) b!5042677))

(assert (= (and d!1622557 (not c!864159)) b!5042678))

(assert (= (and b!5042678 (not res!2148251)) b!5042679))

(declare-fun m!6077094 () Bool)

(assert (=> b!5042677 m!6077094))

(declare-fun m!6077096 () Bool)

(assert (=> b!5042679 m!6077096))

(assert (=> b!5042605 d!1622557))

(declare-fun d!1622559 () Bool)

(declare-fun c!864160 () Bool)

(assert (=> d!1622559 (= c!864160 ((_ is Node!15518) (right!43036 (left!42706 (right!43036 t!4198)))))))

(declare-fun e!3149041 () Bool)

(assert (=> d!1622559 (= (inv!77183 (right!43036 (left!42706 (right!43036 t!4198)))) e!3149041)))

(declare-fun b!5042680 () Bool)

(assert (=> b!5042680 (= e!3149041 (inv!77187 (right!43036 (left!42706 (right!43036 t!4198)))))))

(declare-fun b!5042681 () Bool)

(declare-fun e!3149042 () Bool)

(assert (=> b!5042681 (= e!3149041 e!3149042)))

(declare-fun res!2148252 () Bool)

(assert (=> b!5042681 (= res!2148252 (not ((_ is Leaf!25741) (right!43036 (left!42706 (right!43036 t!4198))))))))

(assert (=> b!5042681 (=> res!2148252 e!3149042)))

(declare-fun b!5042682 () Bool)

(assert (=> b!5042682 (= e!3149042 (inv!77188 (right!43036 (left!42706 (right!43036 t!4198)))))))

(assert (= (and d!1622559 c!864160) b!5042680))

(assert (= (and d!1622559 (not c!864160)) b!5042681))

(assert (= (and b!5042681 (not res!2148252)) b!5042682))

(declare-fun m!6077098 () Bool)

(assert (=> b!5042680 m!6077098))

(declare-fun m!6077100 () Bool)

(assert (=> b!5042682 m!6077100))

(assert (=> b!5042605 d!1622559))

(declare-fun d!1622561 () Bool)

(declare-fun c!864161 () Bool)

(assert (=> d!1622561 (= c!864161 ((_ is Nil!58306) lt!2084602))))

(declare-fun e!3149043 () (InoxSet T!104222))

(assert (=> d!1622561 (= (content!10359 lt!2084602) e!3149043)))

(declare-fun b!5042683 () Bool)

(assert (=> b!5042683 (= e!3149043 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042684 () Bool)

(assert (=> b!5042684 (= e!3149043 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084602) true) (content!10359 (t!370997 lt!2084602))))))

(assert (= (and d!1622561 c!864161) b!5042683))

(assert (= (and d!1622561 (not c!864161)) b!5042684))

(declare-fun m!6077102 () Bool)

(assert (=> b!5042684 m!6077102))

(declare-fun m!6077104 () Bool)

(assert (=> b!5042684 m!6077104))

(assert (=> d!1622401 d!1622561))

(assert (=> d!1622401 d!1622537))

(declare-fun d!1622563 () Bool)

(declare-fun lt!2084640 () Int)

(assert (=> d!1622563 (>= lt!2084640 0)))

(declare-fun e!3149044 () Int)

(assert (=> d!1622563 (= lt!2084640 e!3149044)))

(declare-fun c!864162 () Bool)

(assert (=> d!1622563 (= c!864162 ((_ is Nil!58306) (drop!2636 lt!2084545 i!618)))))

(assert (=> d!1622563 (= (size!38912 (drop!2636 lt!2084545 i!618)) lt!2084640)))

(declare-fun b!5042685 () Bool)

(assert (=> b!5042685 (= e!3149044 0)))

(declare-fun b!5042686 () Bool)

(assert (=> b!5042686 (= e!3149044 (+ 1 (size!38912 (t!370997 (drop!2636 lt!2084545 i!618)))))))

(assert (= (and d!1622563 c!864162) b!5042685))

(assert (= (and d!1622563 (not c!864162)) b!5042686))

(declare-fun m!6077106 () Bool)

(assert (=> b!5042686 m!6077106))

(assert (=> b!5042371 d!1622563))

(declare-fun d!1622565 () Bool)

(declare-fun lt!2084641 () Int)

(assert (=> d!1622565 (>= lt!2084641 0)))

(declare-fun e!3149045 () Int)

(assert (=> d!1622565 (= lt!2084641 e!3149045)))

(declare-fun c!864163 () Bool)

(assert (=> d!1622565 (= c!864163 ((_ is Nil!58306) (t!370997 lt!2084587)))))

(assert (=> d!1622565 (= (size!38912 (t!370997 lt!2084587)) lt!2084641)))

(declare-fun b!5042687 () Bool)

(assert (=> b!5042687 (= e!3149045 0)))

(declare-fun b!5042688 () Bool)

(assert (=> b!5042688 (= e!3149045 (+ 1 (size!38912 (t!370997 (t!370997 lt!2084587)))))))

(assert (= (and d!1622565 c!864163) b!5042687))

(assert (= (and d!1622565 (not c!864163)) b!5042688))

(declare-fun m!6077108 () Bool)

(assert (=> b!5042688 m!6077108))

(assert (=> b!5042398 d!1622565))

(declare-fun d!1622567 () Bool)

(declare-fun c!864164 () Bool)

(assert (=> d!1622567 (= c!864164 ((_ is Nil!58306) lt!2084598))))

(declare-fun e!3149046 () (InoxSet T!104222))

(assert (=> d!1622567 (= (content!10359 lt!2084598) e!3149046)))

(declare-fun b!5042689 () Bool)

(assert (=> b!5042689 (= e!3149046 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042690 () Bool)

(assert (=> b!5042690 (= e!3149046 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084598) true) (content!10359 (t!370997 lt!2084598))))))

(assert (= (and d!1622567 c!864164) b!5042689))

(assert (= (and d!1622567 (not c!864164)) b!5042690))

(declare-fun m!6077110 () Bool)

(assert (=> b!5042690 m!6077110))

(declare-fun m!6077112 () Bool)

(assert (=> b!5042690 m!6077112))

(assert (=> d!1622383 d!1622567))

(declare-fun d!1622569 () Bool)

(declare-fun c!864165 () Bool)

(assert (=> d!1622569 (= c!864165 ((_ is Nil!58306) (drop!2636 lt!2084545 i!618)))))

(declare-fun e!3149047 () (InoxSet T!104222))

(assert (=> d!1622569 (= (content!10359 (drop!2636 lt!2084545 i!618)) e!3149047)))

(declare-fun b!5042691 () Bool)

(assert (=> b!5042691 (= e!3149047 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042692 () Bool)

(assert (=> b!5042692 (= e!3149047 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (drop!2636 lt!2084545 i!618)) true) (content!10359 (t!370997 (drop!2636 lt!2084545 i!618)))))))

(assert (= (and d!1622569 c!864165) b!5042691))

(assert (= (and d!1622569 (not c!864165)) b!5042692))

(declare-fun m!6077114 () Bool)

(assert (=> b!5042692 m!6077114))

(declare-fun m!6077116 () Bool)

(assert (=> b!5042692 m!6077116))

(assert (=> d!1622383 d!1622569))

(assert (=> b!5042425 d!1622467))

(declare-fun d!1622571 () Bool)

(declare-fun lt!2084642 () Int)

(assert (=> d!1622571 (>= lt!2084642 0)))

(declare-fun e!3149048 () Int)

(assert (=> d!1622571 (= lt!2084642 e!3149048)))

(declare-fun c!864166 () Bool)

(assert (=> d!1622571 (= c!864166 ((_ is Nil!58306) (t!370997 (list!18922 t!4198))))))

(assert (=> d!1622571 (= (size!38912 (t!370997 (list!18922 t!4198))) lt!2084642)))

(declare-fun b!5042693 () Bool)

(assert (=> b!5042693 (= e!3149048 0)))

(declare-fun b!5042694 () Bool)

(assert (=> b!5042694 (= e!3149048 (+ 1 (size!38912 (t!370997 (t!370997 (list!18922 t!4198))))))))

(assert (= (and d!1622571 c!864166) b!5042693))

(assert (= (and d!1622571 (not c!864166)) b!5042694))

(declare-fun m!6077118 () Bool)

(assert (=> b!5042694 m!6077118))

(assert (=> b!5042551 d!1622571))

(declare-fun d!1622573 () Bool)

(declare-fun lt!2084643 () Int)

(assert (=> d!1622573 (>= lt!2084643 0)))

(declare-fun e!3149049 () Int)

(assert (=> d!1622573 (= lt!2084643 e!3149049)))

(declare-fun c!864167 () Bool)

(assert (=> d!1622573 (= c!864167 ((_ is Nil!58306) (drop!2636 lt!2084545 0)))))

(assert (=> d!1622573 (= (size!38912 (drop!2636 lt!2084545 0)) lt!2084643)))

(declare-fun b!5042695 () Bool)

(assert (=> b!5042695 (= e!3149049 0)))

(declare-fun b!5042696 () Bool)

(assert (=> b!5042696 (= e!3149049 (+ 1 (size!38912 (t!370997 (drop!2636 lt!2084545 0)))))))

(assert (= (and d!1622573 c!864167) b!5042695))

(assert (= (and d!1622573 (not c!864167)) b!5042696))

(declare-fun m!6077120 () Bool)

(assert (=> b!5042696 m!6077120))

(assert (=> b!5042343 d!1622573))

(declare-fun b!5042700 () Bool)

(declare-fun e!3149050 () Bool)

(declare-fun lt!2084644 () List!58430)

(assert (=> b!5042700 (= e!3149050 (or (not (= (_2!34926 lt!2084592) Nil!58306)) (= lt!2084644 (t!370997 (_1!34926 lt!2084592)))))))

(declare-fun b!5042698 () Bool)

(declare-fun e!3149051 () List!58430)

(assert (=> b!5042698 (= e!3149051 (Cons!58306 (h!64754 (t!370997 (_1!34926 lt!2084592))) (++!12731 (t!370997 (t!370997 (_1!34926 lt!2084592))) (_2!34926 lt!2084592))))))

(declare-fun b!5042697 () Bool)

(assert (=> b!5042697 (= e!3149051 (_2!34926 lt!2084592))))

(declare-fun b!5042699 () Bool)

(declare-fun res!2148253 () Bool)

(assert (=> b!5042699 (=> (not res!2148253) (not e!3149050))))

(assert (=> b!5042699 (= res!2148253 (= (size!38912 lt!2084644) (+ (size!38912 (t!370997 (_1!34926 lt!2084592))) (size!38912 (_2!34926 lt!2084592)))))))

(declare-fun d!1622575 () Bool)

(assert (=> d!1622575 e!3149050))

(declare-fun res!2148254 () Bool)

(assert (=> d!1622575 (=> (not res!2148254) (not e!3149050))))

(assert (=> d!1622575 (= res!2148254 (= (content!10359 lt!2084644) ((_ map or) (content!10359 (t!370997 (_1!34926 lt!2084592))) (content!10359 (_2!34926 lt!2084592)))))))

(assert (=> d!1622575 (= lt!2084644 e!3149051)))

(declare-fun c!864168 () Bool)

(assert (=> d!1622575 (= c!864168 ((_ is Nil!58306) (t!370997 (_1!34926 lt!2084592))))))

(assert (=> d!1622575 (= (++!12731 (t!370997 (_1!34926 lt!2084592)) (_2!34926 lt!2084592)) lt!2084644)))

(assert (= (and d!1622575 c!864168) b!5042697))

(assert (= (and d!1622575 (not c!864168)) b!5042698))

(assert (= (and d!1622575 res!2148254) b!5042699))

(assert (= (and b!5042699 res!2148253) b!5042700))

(declare-fun m!6077122 () Bool)

(assert (=> b!5042698 m!6077122))

(declare-fun m!6077124 () Bool)

(assert (=> b!5042699 m!6077124))

(declare-fun m!6077126 () Bool)

(assert (=> b!5042699 m!6077126))

(assert (=> b!5042699 m!6076856))

(declare-fun m!6077128 () Bool)

(assert (=> d!1622575 m!6077128))

(declare-fun m!6077130 () Bool)

(assert (=> d!1622575 m!6077130))

(assert (=> d!1622575 m!6076862))

(assert (=> b!5042516 d!1622575))

(declare-fun d!1622577 () Bool)

(declare-fun res!2148255 () Bool)

(declare-fun e!3149052 () Bool)

(assert (=> d!1622577 (=> (not res!2148255) (not e!3149052))))

(assert (=> d!1622577 (= res!2148255 (<= (size!38912 (list!18921 (xs!18844 (right!43036 (left!42706 t!4198))))) 512))))

(assert (=> d!1622577 (= (inv!77188 (right!43036 (left!42706 t!4198))) e!3149052)))

(declare-fun b!5042701 () Bool)

(declare-fun res!2148256 () Bool)

(assert (=> b!5042701 (=> (not res!2148256) (not e!3149052))))

(assert (=> b!5042701 (= res!2148256 (= (csize!31267 (right!43036 (left!42706 t!4198))) (size!38912 (list!18921 (xs!18844 (right!43036 (left!42706 t!4198)))))))))

(declare-fun b!5042702 () Bool)

(assert (=> b!5042702 (= e!3149052 (and (> (csize!31267 (right!43036 (left!42706 t!4198))) 0) (<= (csize!31267 (right!43036 (left!42706 t!4198))) 512)))))

(assert (= (and d!1622577 res!2148255) b!5042701))

(assert (= (and b!5042701 res!2148256) b!5042702))

(declare-fun m!6077132 () Bool)

(assert (=> d!1622577 m!6077132))

(assert (=> d!1622577 m!6077132))

(declare-fun m!6077134 () Bool)

(assert (=> d!1622577 m!6077134))

(assert (=> b!5042701 m!6077132))

(assert (=> b!5042701 m!6077132))

(assert (=> b!5042701 m!6077134))

(assert (=> b!5042549 d!1622577))

(assert (=> d!1622421 d!1622325))

(assert (=> d!1622421 d!1622331))

(assert (=> d!1622421 d!1622333))

(declare-fun d!1622579 () Bool)

(declare-fun lt!2084645 () Int)

(assert (=> d!1622579 (= lt!2084645 (size!38912 (list!18922 (left!42706 t!4198))))))

(assert (=> d!1622579 (= lt!2084645 (ite ((_ is Empty!15518) (left!42706 t!4198)) 0 (ite ((_ is Leaf!25741) (left!42706 t!4198)) (csize!31267 (left!42706 t!4198)) (csize!31266 (left!42706 t!4198)))))))

(assert (=> d!1622579 (= (size!38913 (left!42706 t!4198)) lt!2084645)))

(declare-fun bs!1189005 () Bool)

(assert (= bs!1189005 d!1622579))

(assert (=> bs!1189005 m!6076928))

(assert (=> bs!1189005 m!6076928))

(declare-fun m!6077136 () Bool)

(assert (=> bs!1189005 m!6077136))

(assert (=> d!1622385 d!1622579))

(declare-fun d!1622581 () Bool)

(declare-fun lt!2084646 () Int)

(assert (=> d!1622581 (= lt!2084646 (size!38912 (list!18922 (right!43036 t!4198))))))

(assert (=> d!1622581 (= lt!2084646 (ite ((_ is Empty!15518) (right!43036 t!4198)) 0 (ite ((_ is Leaf!25741) (right!43036 t!4198)) (csize!31267 (right!43036 t!4198)) (csize!31266 (right!43036 t!4198)))))))

(assert (=> d!1622581 (= (size!38913 (right!43036 t!4198)) lt!2084646)))

(declare-fun bs!1189006 () Bool)

(assert (= bs!1189006 d!1622581))

(assert (=> bs!1189006 m!6076756))

(assert (=> bs!1189006 m!6076756))

(declare-fun m!6077138 () Bool)

(assert (=> bs!1189006 m!6077138))

(assert (=> d!1622385 d!1622581))

(declare-fun d!1622583 () Bool)

(assert (=> d!1622583 (= (isEmpty!31543 (list!18922 (left!42706 t!4198))) ((_ is Nil!58306) (list!18922 (left!42706 t!4198))))))

(assert (=> d!1622501 d!1622583))

(declare-fun d!1622585 () Bool)

(declare-fun c!864169 () Bool)

(assert (=> d!1622585 (= c!864169 ((_ is Empty!15518) (left!42706 t!4198)))))

(declare-fun e!3149053 () List!58430)

(assert (=> d!1622585 (= (list!18922 (left!42706 t!4198)) e!3149053)))

(declare-fun b!5042704 () Bool)

(declare-fun e!3149054 () List!58430)

(assert (=> b!5042704 (= e!3149053 e!3149054)))

(declare-fun c!864170 () Bool)

(assert (=> b!5042704 (= c!864170 ((_ is Leaf!25741) (left!42706 t!4198)))))

(declare-fun b!5042705 () Bool)

(assert (=> b!5042705 (= e!3149054 (list!18921 (xs!18844 (left!42706 t!4198))))))

(declare-fun b!5042706 () Bool)

(assert (=> b!5042706 (= e!3149054 (++!12731 (list!18922 (left!42706 (left!42706 t!4198))) (list!18922 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042703 () Bool)

(assert (=> b!5042703 (= e!3149053 Nil!58306)))

(assert (= (and d!1622585 c!864169) b!5042703))

(assert (= (and d!1622585 (not c!864169)) b!5042704))

(assert (= (and b!5042704 c!864170) b!5042705))

(assert (= (and b!5042704 (not c!864170)) b!5042706))

(assert (=> b!5042705 m!6076864))

(declare-fun m!6077140 () Bool)

(assert (=> b!5042706 m!6077140))

(assert (=> b!5042706 m!6077074))

(assert (=> b!5042706 m!6077140))

(assert (=> b!5042706 m!6077074))

(declare-fun m!6077142 () Bool)

(assert (=> b!5042706 m!6077142))

(assert (=> d!1622501 d!1622585))

(assert (=> d!1622501 d!1622579))

(declare-fun d!1622587 () Bool)

(declare-fun res!2148257 () Bool)

(declare-fun e!3149055 () Bool)

(assert (=> d!1622587 (=> (not res!2148257) (not e!3149055))))

(assert (=> d!1622587 (= res!2148257 (<= (size!38912 (list!18921 (xs!18844 (left!42706 (right!43036 t!4198))))) 512))))

(assert (=> d!1622587 (= (inv!77188 (left!42706 (right!43036 t!4198))) e!3149055)))

(declare-fun b!5042707 () Bool)

(declare-fun res!2148258 () Bool)

(assert (=> b!5042707 (=> (not res!2148258) (not e!3149055))))

(assert (=> b!5042707 (= res!2148258 (= (csize!31267 (left!42706 (right!43036 t!4198))) (size!38912 (list!18921 (xs!18844 (left!42706 (right!43036 t!4198)))))))))

(declare-fun b!5042708 () Bool)

(assert (=> b!5042708 (= e!3149055 (and (> (csize!31267 (left!42706 (right!43036 t!4198))) 0) (<= (csize!31267 (left!42706 (right!43036 t!4198))) 512)))))

(assert (= (and d!1622587 res!2148257) b!5042707))

(assert (= (and b!5042707 res!2148258) b!5042708))

(declare-fun m!6077144 () Bool)

(assert (=> d!1622587 m!6077144))

(assert (=> d!1622587 m!6077144))

(declare-fun m!6077146 () Bool)

(assert (=> d!1622587 m!6077146))

(assert (=> b!5042707 m!6077144))

(assert (=> b!5042707 m!6077144))

(assert (=> b!5042707 m!6077146))

(assert (=> b!5042440 d!1622587))

(declare-fun d!1622589 () Bool)

(declare-fun e!3149057 () Bool)

(assert (=> d!1622589 e!3149057))

(declare-fun res!2148259 () Bool)

(assert (=> d!1622589 (=> (not res!2148259) (not e!3149057))))

(declare-fun lt!2084647 () List!58430)

(assert (=> d!1622589 (= res!2148259 (= ((_ map implies) (content!10359 lt!2084647) (content!10359 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3149058 () List!58430)

(assert (=> d!1622589 (= lt!2084647 e!3149058)))

(declare-fun c!864172 () Bool)

(assert (=> d!1622589 (= c!864172 (or ((_ is Nil!58306) (drop!2636 (list!18921 (xs!18844 t!4198)) i!618)) (<= (- (csize!31267 t!4198) i!618) 0)))))

(assert (=> d!1622589 (= (take!829 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618) (- (csize!31267 t!4198) i!618)) lt!2084647)))

(declare-fun b!5042709 () Bool)

(assert (=> b!5042709 (= e!3149058 (Cons!58306 (h!64754 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618)) (take!829 (t!370997 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618)) (- (- (csize!31267 t!4198) i!618) 1))))))

(declare-fun b!5042710 () Bool)

(assert (=> b!5042710 (= e!3149058 Nil!58306)))

(declare-fun b!5042711 () Bool)

(declare-fun e!3149059 () Int)

(assert (=> b!5042711 (= e!3149057 (= (size!38912 lt!2084647) e!3149059))))

(declare-fun c!864173 () Bool)

(assert (=> b!5042711 (= c!864173 (<= (- (csize!31267 t!4198) i!618) 0))))

(declare-fun b!5042712 () Bool)

(declare-fun e!3149056 () Int)

(assert (=> b!5042712 (= e!3149056 (size!38912 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618)))))

(declare-fun b!5042713 () Bool)

(assert (=> b!5042713 (= e!3149059 e!3149056)))

(declare-fun c!864171 () Bool)

(assert (=> b!5042713 (= c!864171 (>= (- (csize!31267 t!4198) i!618) (size!38912 (drop!2636 (list!18921 (xs!18844 t!4198)) i!618))))))

(declare-fun b!5042714 () Bool)

(assert (=> b!5042714 (= e!3149056 (- (csize!31267 t!4198) i!618))))

(declare-fun b!5042715 () Bool)

(assert (=> b!5042715 (= e!3149059 0)))

(assert (= (and d!1622589 c!864172) b!5042710))

(assert (= (and d!1622589 (not c!864172)) b!5042709))

(assert (= (and d!1622589 res!2148259) b!5042711))

(assert (= (and b!5042711 c!864173) b!5042715))

(assert (= (and b!5042711 (not c!864173)) b!5042713))

(assert (= (and b!5042713 c!864171) b!5042712))

(assert (= (and b!5042713 (not c!864171)) b!5042714))

(assert (=> b!5042713 m!6076714))

(declare-fun m!6077148 () Bool)

(assert (=> b!5042713 m!6077148))

(declare-fun m!6077150 () Bool)

(assert (=> d!1622589 m!6077150))

(assert (=> d!1622589 m!6076714))

(declare-fun m!6077152 () Bool)

(assert (=> d!1622589 m!6077152))

(declare-fun m!6077154 () Bool)

(assert (=> b!5042709 m!6077154))

(assert (=> b!5042712 m!6076714))

(assert (=> b!5042712 m!6077148))

(declare-fun m!6077156 () Bool)

(assert (=> b!5042711 m!6077156))

(assert (=> d!1622403 d!1622589))

(declare-fun b!5042716 () Bool)

(declare-fun e!3149060 () List!58430)

(assert (=> b!5042716 (= e!3149060 (list!18921 (xs!18844 t!4198)))))

(declare-fun b!5042717 () Bool)

(declare-fun e!3149061 () Int)

(declare-fun e!3149064 () Int)

(assert (=> b!5042717 (= e!3149061 e!3149064)))

(declare-fun c!864175 () Bool)

(declare-fun call!351434 () Int)

(assert (=> b!5042717 (= c!864175 (>= i!618 call!351434))))

(declare-fun b!5042718 () Bool)

(declare-fun e!3149063 () List!58430)

(assert (=> b!5042718 (= e!3149063 e!3149060)))

(declare-fun c!864176 () Bool)

(assert (=> b!5042718 (= c!864176 (<= i!618 0))))

(declare-fun bm!351429 () Bool)

(assert (=> bm!351429 (= call!351434 (size!38912 (list!18921 (xs!18844 t!4198))))))

(declare-fun b!5042719 () Bool)

(assert (=> b!5042719 (= e!3149063 Nil!58306)))

(declare-fun b!5042720 () Bool)

(assert (=> b!5042720 (= e!3149060 (drop!2636 (t!370997 (list!18921 (xs!18844 t!4198))) (- i!618 1)))))

(declare-fun d!1622591 () Bool)

(declare-fun e!3149062 () Bool)

(assert (=> d!1622591 e!3149062))

(declare-fun res!2148260 () Bool)

(assert (=> d!1622591 (=> (not res!2148260) (not e!3149062))))

(declare-fun lt!2084648 () List!58430)

(assert (=> d!1622591 (= res!2148260 (= ((_ map implies) (content!10359 lt!2084648) (content!10359 (list!18921 (xs!18844 t!4198)))) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622591 (= lt!2084648 e!3149063)))

(declare-fun c!864177 () Bool)

(assert (=> d!1622591 (= c!864177 ((_ is Nil!58306) (list!18921 (xs!18844 t!4198))))))

(assert (=> d!1622591 (= (drop!2636 (list!18921 (xs!18844 t!4198)) i!618) lt!2084648)))

(declare-fun b!5042721 () Bool)

(assert (=> b!5042721 (= e!3149062 (= (size!38912 lt!2084648) e!3149061))))

(declare-fun c!864174 () Bool)

(assert (=> b!5042721 (= c!864174 (<= i!618 0))))

(declare-fun b!5042722 () Bool)

(assert (=> b!5042722 (= e!3149061 call!351434)))

(declare-fun b!5042723 () Bool)

(assert (=> b!5042723 (= e!3149064 0)))

(declare-fun b!5042724 () Bool)

(assert (=> b!5042724 (= e!3149064 (- call!351434 i!618))))

(assert (= (and d!1622591 c!864177) b!5042719))

(assert (= (and d!1622591 (not c!864177)) b!5042718))

(assert (= (and b!5042718 c!864176) b!5042716))

(assert (= (and b!5042718 (not c!864176)) b!5042720))

(assert (= (and d!1622591 res!2148260) b!5042721))

(assert (= (and b!5042721 c!864174) b!5042722))

(assert (= (and b!5042721 (not c!864174)) b!5042717))

(assert (= (and b!5042717 c!864175) b!5042723))

(assert (= (and b!5042717 (not c!864175)) b!5042724))

(assert (= (or b!5042722 b!5042717 b!5042724) bm!351429))

(assert (=> bm!351429 m!6076466))

(assert (=> bm!351429 m!6076666))

(declare-fun m!6077158 () Bool)

(assert (=> b!5042720 m!6077158))

(declare-fun m!6077160 () Bool)

(assert (=> d!1622591 m!6077160))

(assert (=> d!1622591 m!6076466))

(declare-fun m!6077162 () Bool)

(assert (=> d!1622591 m!6077162))

(declare-fun m!6077164 () Bool)

(assert (=> b!5042721 m!6077164))

(assert (=> d!1622403 d!1622591))

(assert (=> b!5042329 d!1622471))

(assert (=> b!5042329 d!1622473))

(declare-fun b!5042725 () Bool)

(declare-fun res!2148266 () Bool)

(declare-fun e!3149066 () Bool)

(assert (=> b!5042725 (=> (not res!2148266) (not e!3149066))))

(assert (=> b!5042725 (= res!2148266 (isBalanced!4380 (left!42706 (left!42706 (left!42706 t!4198)))))))

(declare-fun b!5042726 () Bool)

(declare-fun e!3149065 () Bool)

(assert (=> b!5042726 (= e!3149065 e!3149066)))

(declare-fun res!2148262 () Bool)

(assert (=> b!5042726 (=> (not res!2148262) (not e!3149066))))

(assert (=> b!5042726 (= res!2148262 (<= (- 1) (- (height!2096 (left!42706 (left!42706 (left!42706 t!4198)))) (height!2096 (right!43036 (left!42706 (left!42706 t!4198)))))))))

(declare-fun d!1622593 () Bool)

(declare-fun res!2148261 () Bool)

(assert (=> d!1622593 (=> res!2148261 e!3149065)))

(assert (=> d!1622593 (= res!2148261 (not ((_ is Node!15518) (left!42706 (left!42706 t!4198)))))))

(assert (=> d!1622593 (= (isBalanced!4380 (left!42706 (left!42706 t!4198))) e!3149065)))

(declare-fun b!5042727 () Bool)

(declare-fun res!2148265 () Bool)

(assert (=> b!5042727 (=> (not res!2148265) (not e!3149066))))

(assert (=> b!5042727 (= res!2148265 (isBalanced!4380 (right!43036 (left!42706 (left!42706 t!4198)))))))

(declare-fun b!5042728 () Bool)

(declare-fun res!2148264 () Bool)

(assert (=> b!5042728 (=> (not res!2148264) (not e!3149066))))

(assert (=> b!5042728 (= res!2148264 (<= (- (height!2096 (left!42706 (left!42706 (left!42706 t!4198)))) (height!2096 (right!43036 (left!42706 (left!42706 t!4198))))) 1))))

(declare-fun b!5042729 () Bool)

(assert (=> b!5042729 (= e!3149066 (not (isEmpty!31541 (right!43036 (left!42706 (left!42706 t!4198))))))))

(declare-fun b!5042730 () Bool)

(declare-fun res!2148263 () Bool)

(assert (=> b!5042730 (=> (not res!2148263) (not e!3149066))))

(assert (=> b!5042730 (= res!2148263 (not (isEmpty!31541 (left!42706 (left!42706 (left!42706 t!4198))))))))

(assert (= (and d!1622593 (not res!2148261)) b!5042726))

(assert (= (and b!5042726 res!2148262) b!5042728))

(assert (= (and b!5042728 res!2148264) b!5042725))

(assert (= (and b!5042725 res!2148266) b!5042727))

(assert (= (and b!5042727 res!2148265) b!5042730))

(assert (= (and b!5042730 res!2148263) b!5042729))

(declare-fun m!6077166 () Bool)

(assert (=> b!5042725 m!6077166))

(declare-fun m!6077168 () Bool)

(assert (=> b!5042729 m!6077168))

(declare-fun m!6077170 () Bool)

(assert (=> b!5042727 m!6077170))

(declare-fun m!6077172 () Bool)

(assert (=> b!5042728 m!6077172))

(declare-fun m!6077174 () Bool)

(assert (=> b!5042728 m!6077174))

(assert (=> b!5042726 m!6077172))

(assert (=> b!5042726 m!6077174))

(declare-fun m!6077176 () Bool)

(assert (=> b!5042730 m!6077176))

(assert (=> b!5042529 d!1622593))

(assert (=> d!1622393 d!1622549))

(assert (=> d!1622393 d!1622551))

(assert (=> b!5042356 d!1622411))

(declare-fun d!1622595 () Bool)

(assert (=> d!1622595 (= (inv!77184 (xs!18844 (right!43036 (right!43036 t!4198)))) (<= (size!38912 (innerList!15606 (xs!18844 (right!43036 (right!43036 t!4198))))) 2147483647))))

(declare-fun bs!1189007 () Bool)

(assert (= bs!1189007 d!1622595))

(declare-fun m!6077178 () Bool)

(assert (=> bs!1189007 m!6077178))

(assert (=> b!5042609 d!1622595))

(declare-fun d!1622597 () Bool)

(declare-fun lt!2084649 () Int)

(assert (=> d!1622597 (>= lt!2084649 0)))

(declare-fun e!3149067 () Int)

(assert (=> d!1622597 (= lt!2084649 e!3149067)))

(declare-fun c!864178 () Bool)

(assert (=> d!1622597 (= c!864178 ((_ is Nil!58306) lt!2084595))))

(assert (=> d!1622597 (= (size!38912 lt!2084595) lt!2084649)))

(declare-fun b!5042731 () Bool)

(assert (=> b!5042731 (= e!3149067 0)))

(declare-fun b!5042732 () Bool)

(assert (=> b!5042732 (= e!3149067 (+ 1 (size!38912 (t!370997 lt!2084595))))))

(assert (= (and d!1622597 c!864178) b!5042731))

(assert (= (and d!1622597 (not c!864178)) b!5042732))

(declare-fun m!6077180 () Bool)

(assert (=> b!5042732 m!6077180))

(assert (=> b!5042352 d!1622597))

(declare-fun d!1622599 () Bool)

(assert (=> d!1622599 (= (max!0 (height!2096 (left!42706 t!4198)) (height!2096 (right!43036 t!4198))) (ite (< (height!2096 (left!42706 t!4198)) (height!2096 (right!43036 t!4198))) (height!2096 (right!43036 t!4198)) (height!2096 (left!42706 t!4198))))))

(assert (=> b!5042382 d!1622599))

(assert (=> b!5042382 d!1622429))

(assert (=> b!5042382 d!1622431))

(declare-fun d!1622601 () Bool)

(declare-fun lt!2084650 () Int)

(assert (=> d!1622601 (>= lt!2084650 0)))

(declare-fun e!3149068 () Int)

(assert (=> d!1622601 (= lt!2084650 e!3149068)))

(declare-fun c!864179 () Bool)

(assert (=> d!1622601 (= c!864179 ((_ is Nil!58306) lt!2084602))))

(assert (=> d!1622601 (= (size!38912 lt!2084602) lt!2084650)))

(declare-fun b!5042733 () Bool)

(assert (=> b!5042733 (= e!3149068 0)))

(declare-fun b!5042734 () Bool)

(assert (=> b!5042734 (= e!3149068 (+ 1 (size!38912 (t!370997 lt!2084602))))))

(assert (= (and d!1622601 c!864179) b!5042733))

(assert (= (and d!1622601 (not c!864179)) b!5042734))

(declare-fun m!6077182 () Bool)

(assert (=> b!5042734 m!6077182))

(assert (=> b!5042406 d!1622601))

(declare-fun d!1622603 () Bool)

(declare-fun lt!2084651 () Int)

(assert (=> d!1622603 (>= lt!2084651 0)))

(declare-fun e!3149069 () Int)

(assert (=> d!1622603 (= lt!2084651 e!3149069)))

(declare-fun c!864180 () Bool)

(assert (=> d!1622603 (= c!864180 ((_ is Nil!58306) (t!370997 lt!2084557)))))

(assert (=> d!1622603 (= (size!38912 (t!370997 lt!2084557)) lt!2084651)))

(declare-fun b!5042735 () Bool)

(assert (=> b!5042735 (= e!3149069 0)))

(declare-fun b!5042736 () Bool)

(assert (=> b!5042736 (= e!3149069 (+ 1 (size!38912 (t!370997 (t!370997 lt!2084557)))))))

(assert (= (and d!1622603 c!864180) b!5042735))

(assert (= (and d!1622603 (not c!864180)) b!5042736))

(declare-fun m!6077184 () Bool)

(assert (=> b!5042736 m!6077184))

(assert (=> b!5042400 d!1622603))

(declare-fun d!1622605 () Bool)

(declare-fun c!864181 () Bool)

(assert (=> d!1622605 (= c!864181 ((_ is Nil!58306) lt!2084620))))

(declare-fun e!3149070 () (InoxSet T!104222))

(assert (=> d!1622605 (= (content!10359 lt!2084620) e!3149070)))

(declare-fun b!5042737 () Bool)

(assert (=> b!5042737 (= e!3149070 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042738 () Bool)

(assert (=> b!5042738 (= e!3149070 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084620) true) (content!10359 (t!370997 lt!2084620))))))

(assert (= (and d!1622605 c!864181) b!5042737))

(assert (= (and d!1622605 (not c!864181)) b!5042738))

(declare-fun m!6077186 () Bool)

(assert (=> b!5042738 m!6077186))

(declare-fun m!6077188 () Bool)

(assert (=> b!5042738 m!6077188))

(assert (=> d!1622447 d!1622605))

(declare-fun d!1622607 () Bool)

(declare-fun c!864182 () Bool)

(assert (=> d!1622607 (= c!864182 ((_ is Nil!58306) (_1!34926 lt!2084592)))))

(declare-fun e!3149071 () (InoxSet T!104222))

(assert (=> d!1622607 (= (content!10359 (_1!34926 lt!2084592)) e!3149071)))

(declare-fun b!5042739 () Bool)

(assert (=> b!5042739 (= e!3149071 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042740 () Bool)

(assert (=> b!5042740 (= e!3149071 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (_1!34926 lt!2084592)) true) (content!10359 (t!370997 (_1!34926 lt!2084592)))))))

(assert (= (and d!1622607 c!864182) b!5042739))

(assert (= (and d!1622607 (not c!864182)) b!5042740))

(declare-fun m!6077190 () Bool)

(assert (=> b!5042740 m!6077190))

(assert (=> b!5042740 m!6077130))

(assert (=> d!1622447 d!1622607))

(declare-fun d!1622609 () Bool)

(declare-fun c!864183 () Bool)

(assert (=> d!1622609 (= c!864183 ((_ is Nil!58306) (_2!34926 lt!2084592)))))

(declare-fun e!3149072 () (InoxSet T!104222))

(assert (=> d!1622609 (= (content!10359 (_2!34926 lt!2084592)) e!3149072)))

(declare-fun b!5042741 () Bool)

(assert (=> b!5042741 (= e!3149072 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042742 () Bool)

(assert (=> b!5042742 (= e!3149072 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (_2!34926 lt!2084592)) true) (content!10359 (t!370997 (_2!34926 lt!2084592)))))))

(assert (= (and d!1622609 c!864183) b!5042741))

(assert (= (and d!1622609 (not c!864183)) b!5042742))

(declare-fun m!6077192 () Bool)

(assert (=> b!5042742 m!6077192))

(declare-fun m!6077194 () Bool)

(assert (=> b!5042742 m!6077194))

(assert (=> d!1622447 d!1622609))

(declare-fun d!1622611 () Bool)

(declare-fun c!864184 () Bool)

(assert (=> d!1622611 (= c!864184 ((_ is Nil!58306) (t!370997 lt!2084557)))))

(declare-fun e!3149073 () (InoxSet T!104222))

(assert (=> d!1622611 (= (content!10359 (t!370997 lt!2084557)) e!3149073)))

(declare-fun b!5042743 () Bool)

(assert (=> b!5042743 (= e!3149073 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042744 () Bool)

(assert (=> b!5042744 (= e!3149073 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (t!370997 lt!2084557)) true) (content!10359 (t!370997 (t!370997 lt!2084557)))))))

(assert (= (and d!1622611 c!864184) b!5042743))

(assert (= (and d!1622611 (not c!864184)) b!5042744))

(declare-fun m!6077196 () Bool)

(assert (=> b!5042744 m!6077196))

(declare-fun m!6077198 () Bool)

(assert (=> b!5042744 m!6077198))

(assert (=> b!5042472 d!1622611))

(declare-fun b!5042748 () Bool)

(declare-fun e!3149074 () Bool)

(declare-fun lt!2084652 () List!58430)

(assert (=> b!5042748 (= e!3149074 (or (not (= (list!18922 (right!43036 t!4198)) Nil!58306)) (= lt!2084652 (list!18922 (left!42706 t!4198)))))))

(declare-fun b!5042746 () Bool)

(declare-fun e!3149075 () List!58430)

(assert (=> b!5042746 (= e!3149075 (Cons!58306 (h!64754 (list!18922 (left!42706 t!4198))) (++!12731 (t!370997 (list!18922 (left!42706 t!4198))) (list!18922 (right!43036 t!4198)))))))

(declare-fun b!5042745 () Bool)

(assert (=> b!5042745 (= e!3149075 (list!18922 (right!43036 t!4198)))))

(declare-fun b!5042747 () Bool)

(declare-fun res!2148267 () Bool)

(assert (=> b!5042747 (=> (not res!2148267) (not e!3149074))))

(assert (=> b!5042747 (= res!2148267 (= (size!38912 lt!2084652) (+ (size!38912 (list!18922 (left!42706 t!4198))) (size!38912 (list!18922 (right!43036 t!4198))))))))

(declare-fun d!1622613 () Bool)

(assert (=> d!1622613 e!3149074))

(declare-fun res!2148268 () Bool)

(assert (=> d!1622613 (=> (not res!2148268) (not e!3149074))))

(assert (=> d!1622613 (= res!2148268 (= (content!10359 lt!2084652) ((_ map or) (content!10359 (list!18922 (left!42706 t!4198))) (content!10359 (list!18922 (right!43036 t!4198))))))))

(assert (=> d!1622613 (= lt!2084652 e!3149075)))

(declare-fun c!864185 () Bool)

(assert (=> d!1622613 (= c!864185 ((_ is Nil!58306) (list!18922 (left!42706 t!4198))))))

(assert (=> d!1622613 (= (++!12731 (list!18922 (left!42706 t!4198)) (list!18922 (right!43036 t!4198))) lt!2084652)))

(assert (= (and d!1622613 c!864185) b!5042745))

(assert (= (and d!1622613 (not c!864185)) b!5042746))

(assert (= (and d!1622613 res!2148268) b!5042747))

(assert (= (and b!5042747 res!2148267) b!5042748))

(assert (=> b!5042746 m!6076756))

(declare-fun m!6077200 () Bool)

(assert (=> b!5042746 m!6077200))

(declare-fun m!6077202 () Bool)

(assert (=> b!5042747 m!6077202))

(assert (=> b!5042747 m!6076928))

(assert (=> b!5042747 m!6077136))

(assert (=> b!5042747 m!6076756))

(assert (=> b!5042747 m!6077138))

(declare-fun m!6077204 () Bool)

(assert (=> d!1622613 m!6077204))

(assert (=> d!1622613 m!6076928))

(declare-fun m!6077206 () Bool)

(assert (=> d!1622613 m!6077206))

(assert (=> d!1622613 m!6076756))

(declare-fun m!6077208 () Bool)

(assert (=> d!1622613 m!6077208))

(assert (=> b!5042574 d!1622613))

(assert (=> b!5042574 d!1622585))

(declare-fun d!1622615 () Bool)

(declare-fun c!864186 () Bool)

(assert (=> d!1622615 (= c!864186 ((_ is Empty!15518) (right!43036 t!4198)))))

(declare-fun e!3149076 () List!58430)

(assert (=> d!1622615 (= (list!18922 (right!43036 t!4198)) e!3149076)))

(declare-fun b!5042750 () Bool)

(declare-fun e!3149077 () List!58430)

(assert (=> b!5042750 (= e!3149076 e!3149077)))

(declare-fun c!864187 () Bool)

(assert (=> b!5042750 (= c!864187 ((_ is Leaf!25741) (right!43036 t!4198)))))

(declare-fun b!5042751 () Bool)

(assert (=> b!5042751 (= e!3149077 (list!18921 (xs!18844 (right!43036 t!4198))))))

(declare-fun b!5042752 () Bool)

(assert (=> b!5042752 (= e!3149077 (++!12731 (list!18922 (left!42706 (right!43036 t!4198))) (list!18922 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042749 () Bool)

(assert (=> b!5042749 (= e!3149076 Nil!58306)))

(assert (= (and d!1622615 c!864186) b!5042749))

(assert (= (and d!1622615 (not c!864186)) b!5042750))

(assert (= (and b!5042750 c!864187) b!5042751))

(assert (= (and b!5042750 (not c!864187)) b!5042752))

(assert (=> b!5042751 m!6076948))

(declare-fun m!6077210 () Bool)

(assert (=> b!5042752 m!6077210))

(declare-fun m!6077212 () Bool)

(assert (=> b!5042752 m!6077212))

(assert (=> b!5042752 m!6077210))

(assert (=> b!5042752 m!6077212))

(declare-fun m!6077214 () Bool)

(assert (=> b!5042752 m!6077214))

(assert (=> b!5042574 d!1622615))

(declare-fun d!1622617 () Bool)

(declare-fun lt!2084653 () Int)

(assert (=> d!1622617 (>= lt!2084653 0)))

(declare-fun e!3149078 () Int)

(assert (=> d!1622617 (= lt!2084653 e!3149078)))

(declare-fun c!864188 () Bool)

(assert (=> d!1622617 (= c!864188 ((_ is Nil!58306) (t!370997 (innerList!15606 (xs!18844 t!4198)))))))

(assert (=> d!1622617 (= (size!38912 (t!370997 (innerList!15606 (xs!18844 t!4198)))) lt!2084653)))

(declare-fun b!5042753 () Bool)

(assert (=> b!5042753 (= e!3149078 0)))

(declare-fun b!5042754 () Bool)

(assert (=> b!5042754 (= e!3149078 (+ 1 (size!38912 (t!370997 (t!370997 (innerList!15606 (xs!18844 t!4198)))))))))

(assert (= (and d!1622617 c!864188) b!5042753))

(assert (= (and d!1622617 (not c!864188)) b!5042754))

(declare-fun m!6077216 () Bool)

(assert (=> b!5042754 m!6077216))

(assert (=> b!5042385 d!1622617))

(declare-fun d!1622619 () Bool)

(declare-fun e!3149080 () Bool)

(assert (=> d!1622619 e!3149080))

(declare-fun res!2148269 () Bool)

(assert (=> d!1622619 (=> (not res!2148269) (not e!3149080))))

(declare-fun lt!2084654 () List!58430)

(assert (=> d!1622619 (= res!2148269 (= ((_ map implies) (content!10359 lt!2084654) (content!10359 (t!370997 (t!370997 lt!2084545)))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3149081 () List!58430)

(assert (=> d!1622619 (= lt!2084654 e!3149081)))

(declare-fun c!864190 () Bool)

(assert (=> d!1622619 (= c!864190 (or ((_ is Nil!58306) (t!370997 (t!370997 lt!2084545))) (<= (- (- i!618 1) 1) 0)))))

(assert (=> d!1622619 (= (take!829 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1)) lt!2084654)))

(declare-fun b!5042755 () Bool)

(assert (=> b!5042755 (= e!3149081 (Cons!58306 (h!64754 (t!370997 (t!370997 lt!2084545))) (take!829 (t!370997 (t!370997 (t!370997 lt!2084545))) (- (- (- i!618 1) 1) 1))))))

(declare-fun b!5042756 () Bool)

(assert (=> b!5042756 (= e!3149081 Nil!58306)))

(declare-fun b!5042757 () Bool)

(declare-fun e!3149082 () Int)

(assert (=> b!5042757 (= e!3149080 (= (size!38912 lt!2084654) e!3149082))))

(declare-fun c!864191 () Bool)

(assert (=> b!5042757 (= c!864191 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5042758 () Bool)

(declare-fun e!3149079 () Int)

(assert (=> b!5042758 (= e!3149079 (size!38912 (t!370997 (t!370997 lt!2084545))))))

(declare-fun b!5042759 () Bool)

(assert (=> b!5042759 (= e!3149082 e!3149079)))

(declare-fun c!864189 () Bool)

(assert (=> b!5042759 (= c!864189 (>= (- (- i!618 1) 1) (size!38912 (t!370997 (t!370997 lt!2084545)))))))

(declare-fun b!5042760 () Bool)

(assert (=> b!5042760 (= e!3149079 (- (- i!618 1) 1))))

(declare-fun b!5042761 () Bool)

(assert (=> b!5042761 (= e!3149082 0)))

(assert (= (and d!1622619 c!864190) b!5042756))

(assert (= (and d!1622619 (not c!864190)) b!5042755))

(assert (= (and d!1622619 res!2148269) b!5042757))

(assert (= (and b!5042757 c!864191) b!5042761))

(assert (= (and b!5042757 (not c!864191)) b!5042759))

(assert (= (and b!5042759 c!864189) b!5042758))

(assert (= (and b!5042759 (not c!864189)) b!5042760))

(assert (=> b!5042759 m!6076876))

(declare-fun m!6077218 () Bool)

(assert (=> d!1622619 m!6077218))

(assert (=> d!1622619 m!6077070))

(declare-fun m!6077220 () Bool)

(assert (=> b!5042755 m!6077220))

(assert (=> b!5042758 m!6076876))

(declare-fun m!6077222 () Bool)

(assert (=> b!5042757 m!6077222))

(assert (=> b!5042422 d!1622619))

(declare-fun d!1622621 () Bool)

(declare-fun lt!2084655 () Int)

(assert (=> d!1622621 (>= lt!2084655 0)))

(declare-fun e!3149083 () Int)

(assert (=> d!1622621 (= lt!2084655 e!3149083)))

(declare-fun c!864192 () Bool)

(assert (=> d!1622621 (= c!864192 ((_ is Nil!58306) (list!18921 (xs!18844 t!4198))))))

(assert (=> d!1622621 (= (size!38912 (list!18921 (xs!18844 t!4198))) lt!2084655)))

(declare-fun b!5042762 () Bool)

(assert (=> b!5042762 (= e!3149083 0)))

(declare-fun b!5042763 () Bool)

(assert (=> b!5042763 (= e!3149083 (+ 1 (size!38912 (t!370997 (list!18921 (xs!18844 t!4198))))))))

(assert (= (and d!1622621 c!864192) b!5042762))

(assert (= (and d!1622621 (not c!864192)) b!5042763))

(declare-fun m!6077224 () Bool)

(assert (=> b!5042763 m!6077224))

(assert (=> b!5042366 d!1622621))

(assert (=> b!5042366 d!1622373))

(declare-fun b!5042764 () Bool)

(declare-fun res!2148275 () Bool)

(declare-fun e!3149085 () Bool)

(assert (=> b!5042764 (=> (not res!2148275) (not e!3149085))))

(assert (=> b!5042764 (= res!2148275 (isBalanced!4380 (left!42706 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042765 () Bool)

(declare-fun e!3149084 () Bool)

(assert (=> b!5042765 (= e!3149084 e!3149085)))

(declare-fun res!2148271 () Bool)

(assert (=> b!5042765 (=> (not res!2148271) (not e!3149085))))

(assert (=> b!5042765 (= res!2148271 (<= (- 1) (- (height!2096 (left!42706 (right!43036 (right!43036 t!4198)))) (height!2096 (right!43036 (right!43036 (right!43036 t!4198)))))))))

(declare-fun d!1622623 () Bool)

(declare-fun res!2148270 () Bool)

(assert (=> d!1622623 (=> res!2148270 e!3149084)))

(assert (=> d!1622623 (= res!2148270 (not ((_ is Node!15518) (right!43036 (right!43036 t!4198)))))))

(assert (=> d!1622623 (= (isBalanced!4380 (right!43036 (right!43036 t!4198))) e!3149084)))

(declare-fun b!5042766 () Bool)

(declare-fun res!2148274 () Bool)

(assert (=> b!5042766 (=> (not res!2148274) (not e!3149085))))

(assert (=> b!5042766 (= res!2148274 (isBalanced!4380 (right!43036 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042767 () Bool)

(declare-fun res!2148273 () Bool)

(assert (=> b!5042767 (=> (not res!2148273) (not e!3149085))))

(assert (=> b!5042767 (= res!2148273 (<= (- (height!2096 (left!42706 (right!43036 (right!43036 t!4198)))) (height!2096 (right!43036 (right!43036 (right!43036 t!4198))))) 1))))

(declare-fun b!5042768 () Bool)

(assert (=> b!5042768 (= e!3149085 (not (isEmpty!31541 (right!43036 (right!43036 (right!43036 t!4198))))))))

(declare-fun b!5042769 () Bool)

(declare-fun res!2148272 () Bool)

(assert (=> b!5042769 (=> (not res!2148272) (not e!3149085))))

(assert (=> b!5042769 (= res!2148272 (not (isEmpty!31541 (left!42706 (right!43036 (right!43036 t!4198))))))))

(assert (= (and d!1622623 (not res!2148270)) b!5042765))

(assert (= (and b!5042765 res!2148271) b!5042767))

(assert (= (and b!5042767 res!2148273) b!5042764))

(assert (= (and b!5042764 res!2148275) b!5042766))

(assert (= (and b!5042766 res!2148274) b!5042769))

(assert (= (and b!5042769 res!2148272) b!5042768))

(declare-fun m!6077226 () Bool)

(assert (=> b!5042764 m!6077226))

(declare-fun m!6077228 () Bool)

(assert (=> b!5042768 m!6077228))

(declare-fun m!6077230 () Bool)

(assert (=> b!5042766 m!6077230))

(declare-fun m!6077232 () Bool)

(assert (=> b!5042767 m!6077232))

(declare-fun m!6077234 () Bool)

(assert (=> b!5042767 m!6077234))

(assert (=> b!5042765 m!6077232))

(assert (=> b!5042765 m!6077234))

(declare-fun m!6077236 () Bool)

(assert (=> b!5042769 m!6077236))

(assert (=> b!5042446 d!1622623))

(declare-fun d!1622625 () Bool)

(declare-fun lt!2084656 () Bool)

(assert (=> d!1622625 (= lt!2084656 (isEmpty!31543 (list!18922 (left!42706 (left!42706 t!4198)))))))

(assert (=> d!1622625 (= lt!2084656 (= (size!38913 (left!42706 (left!42706 t!4198))) 0))))

(assert (=> d!1622625 (= (isEmpty!31541 (left!42706 (left!42706 t!4198))) lt!2084656)))

(declare-fun bs!1189008 () Bool)

(assert (= bs!1189008 d!1622625))

(assert (=> bs!1189008 m!6077140))

(assert (=> bs!1189008 m!6077140))

(declare-fun m!6077238 () Bool)

(assert (=> bs!1189008 m!6077238))

(assert (=> bs!1189008 m!6076692))

(assert (=> b!5042534 d!1622625))

(declare-fun d!1622627 () Bool)

(declare-fun c!864193 () Bool)

(assert (=> d!1622627 (= c!864193 ((_ is Node!15518) (left!42706 (right!43036 (left!42706 t!4198)))))))

(declare-fun e!3149086 () Bool)

(assert (=> d!1622627 (= (inv!77183 (left!42706 (right!43036 (left!42706 t!4198)))) e!3149086)))

(declare-fun b!5042770 () Bool)

(assert (=> b!5042770 (= e!3149086 (inv!77187 (left!42706 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042771 () Bool)

(declare-fun e!3149087 () Bool)

(assert (=> b!5042771 (= e!3149086 e!3149087)))

(declare-fun res!2148276 () Bool)

(assert (=> b!5042771 (= res!2148276 (not ((_ is Leaf!25741) (left!42706 (right!43036 (left!42706 t!4198))))))))

(assert (=> b!5042771 (=> res!2148276 e!3149087)))

(declare-fun b!5042772 () Bool)

(assert (=> b!5042772 (= e!3149087 (inv!77188 (left!42706 (right!43036 (left!42706 t!4198)))))))

(assert (= (and d!1622627 c!864193) b!5042770))

(assert (= (and d!1622627 (not c!864193)) b!5042771))

(assert (= (and b!5042771 (not res!2148276)) b!5042772))

(declare-fun m!6077240 () Bool)

(assert (=> b!5042770 m!6077240))

(declare-fun m!6077242 () Bool)

(assert (=> b!5042772 m!6077242))

(assert (=> b!5042601 d!1622627))

(declare-fun d!1622629 () Bool)

(declare-fun c!864194 () Bool)

(assert (=> d!1622629 (= c!864194 ((_ is Node!15518) (right!43036 (right!43036 (left!42706 t!4198)))))))

(declare-fun e!3149088 () Bool)

(assert (=> d!1622629 (= (inv!77183 (right!43036 (right!43036 (left!42706 t!4198)))) e!3149088)))

(declare-fun b!5042773 () Bool)

(assert (=> b!5042773 (= e!3149088 (inv!77187 (right!43036 (right!43036 (left!42706 t!4198)))))))

(declare-fun b!5042774 () Bool)

(declare-fun e!3149089 () Bool)

(assert (=> b!5042774 (= e!3149088 e!3149089)))

(declare-fun res!2148277 () Bool)

(assert (=> b!5042774 (= res!2148277 (not ((_ is Leaf!25741) (right!43036 (right!43036 (left!42706 t!4198))))))))

(assert (=> b!5042774 (=> res!2148277 e!3149089)))

(declare-fun b!5042775 () Bool)

(assert (=> b!5042775 (= e!3149089 (inv!77188 (right!43036 (right!43036 (left!42706 t!4198)))))))

(assert (= (and d!1622629 c!864194) b!5042773))

(assert (= (and d!1622629 (not c!864194)) b!5042774))

(assert (= (and b!5042774 (not res!2148277)) b!5042775))

(declare-fun m!6077244 () Bool)

(assert (=> b!5042773 m!6077244))

(declare-fun m!6077246 () Bool)

(assert (=> b!5042775 m!6077246))

(assert (=> b!5042601 d!1622629))

(declare-fun d!1622631 () Bool)

(assert (=> d!1622631 (= (inv!77184 (xs!18844 (left!42706 (right!43036 t!4198)))) (<= (size!38912 (innerList!15606 (xs!18844 (left!42706 (right!43036 t!4198))))) 2147483647))))

(declare-fun bs!1189009 () Bool)

(assert (= bs!1189009 d!1622631))

(declare-fun m!6077248 () Bool)

(assert (=> bs!1189009 m!6077248))

(assert (=> b!5042606 d!1622631))

(declare-fun d!1622633 () Bool)

(declare-fun lt!2084657 () Int)

(assert (=> d!1622633 (>= lt!2084657 0)))

(declare-fun e!3149090 () Int)

(assert (=> d!1622633 (= lt!2084657 e!3149090)))

(declare-fun c!864195 () Bool)

(assert (=> d!1622633 (= c!864195 ((_ is Nil!58306) (list!18921 (xs!18844 (left!42706 t!4198)))))))

(assert (=> d!1622633 (= (size!38912 (list!18921 (xs!18844 (left!42706 t!4198)))) lt!2084657)))

(declare-fun b!5042776 () Bool)

(assert (=> b!5042776 (= e!3149090 0)))

(declare-fun b!5042777 () Bool)

(assert (=> b!5042777 (= e!3149090 (+ 1 (size!38912 (t!370997 (list!18921 (xs!18844 (left!42706 t!4198)))))))))

(assert (= (and d!1622633 c!864195) b!5042776))

(assert (= (and d!1622633 (not c!864195)) b!5042777))

(declare-fun m!6077250 () Bool)

(assert (=> b!5042777 m!6077250))

(assert (=> d!1622463 d!1622633))

(declare-fun d!1622635 () Bool)

(assert (=> d!1622635 (= (list!18921 (xs!18844 (left!42706 t!4198))) (innerList!15606 (xs!18844 (left!42706 t!4198))))))

(assert (=> d!1622463 d!1622635))

(declare-fun d!1622637 () Bool)

(declare-fun e!3149092 () Bool)

(assert (=> d!1622637 e!3149092))

(declare-fun res!2148278 () Bool)

(assert (=> d!1622637 (=> (not res!2148278) (not e!3149092))))

(declare-fun lt!2084658 () List!58430)

(assert (=> d!1622637 (= res!2148278 (= ((_ map implies) (content!10359 lt!2084658) (content!10359 (t!370997 (drop!2636 lt!2084545 0)))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3149093 () List!58430)

(assert (=> d!1622637 (= lt!2084658 e!3149093)))

(declare-fun c!864197 () Bool)

(assert (=> d!1622637 (= c!864197 (or ((_ is Nil!58306) (t!370997 (drop!2636 lt!2084545 0))) (<= (- (- i!618 0) 1) 0)))))

(assert (=> d!1622637 (= (take!829 (t!370997 (drop!2636 lt!2084545 0)) (- (- i!618 0) 1)) lt!2084658)))

(declare-fun b!5042778 () Bool)

(assert (=> b!5042778 (= e!3149093 (Cons!58306 (h!64754 (t!370997 (drop!2636 lt!2084545 0))) (take!829 (t!370997 (t!370997 (drop!2636 lt!2084545 0))) (- (- (- i!618 0) 1) 1))))))

(declare-fun b!5042779 () Bool)

(assert (=> b!5042779 (= e!3149093 Nil!58306)))

(declare-fun b!5042780 () Bool)

(declare-fun e!3149094 () Int)

(assert (=> b!5042780 (= e!3149092 (= (size!38912 lt!2084658) e!3149094))))

(declare-fun c!864198 () Bool)

(assert (=> b!5042780 (= c!864198 (<= (- (- i!618 0) 1) 0))))

(declare-fun b!5042781 () Bool)

(declare-fun e!3149091 () Int)

(assert (=> b!5042781 (= e!3149091 (size!38912 (t!370997 (drop!2636 lt!2084545 0))))))

(declare-fun b!5042782 () Bool)

(assert (=> b!5042782 (= e!3149094 e!3149091)))

(declare-fun c!864196 () Bool)

(assert (=> b!5042782 (= c!864196 (>= (- (- i!618 0) 1) (size!38912 (t!370997 (drop!2636 lt!2084545 0)))))))

(declare-fun b!5042783 () Bool)

(assert (=> b!5042783 (= e!3149091 (- (- i!618 0) 1))))

(declare-fun b!5042784 () Bool)

(assert (=> b!5042784 (= e!3149094 0)))

(assert (= (and d!1622637 c!864197) b!5042779))

(assert (= (and d!1622637 (not c!864197)) b!5042778))

(assert (= (and d!1622637 res!2148278) b!5042780))

(assert (= (and b!5042780 c!864198) b!5042784))

(assert (= (and b!5042780 (not c!864198)) b!5042782))

(assert (= (and b!5042782 c!864196) b!5042781))

(assert (= (and b!5042782 (not c!864196)) b!5042783))

(assert (=> b!5042782 m!6077120))

(declare-fun m!6077252 () Bool)

(assert (=> d!1622637 m!6077252))

(declare-fun m!6077254 () Bool)

(assert (=> d!1622637 m!6077254))

(declare-fun m!6077256 () Bool)

(assert (=> b!5042778 m!6077256))

(assert (=> b!5042781 m!6077120))

(declare-fun m!6077258 () Bool)

(assert (=> b!5042780 m!6077258))

(assert (=> b!5042340 d!1622637))

(declare-fun d!1622639 () Bool)

(declare-fun lt!2084659 () Int)

(assert (=> d!1622639 (= lt!2084659 (size!38912 (list!18922 (left!42706 (right!43036 t!4198)))))))

(assert (=> d!1622639 (= lt!2084659 (ite ((_ is Empty!15518) (left!42706 (right!43036 t!4198))) 0 (ite ((_ is Leaf!25741) (left!42706 (right!43036 t!4198))) (csize!31267 (left!42706 (right!43036 t!4198))) (csize!31266 (left!42706 (right!43036 t!4198))))))))

(assert (=> d!1622639 (= (size!38913 (left!42706 (right!43036 t!4198))) lt!2084659)))

(declare-fun bs!1189010 () Bool)

(assert (= bs!1189010 d!1622639))

(assert (=> bs!1189010 m!6077210))

(assert (=> bs!1189010 m!6077210))

(declare-fun m!6077260 () Bool)

(assert (=> bs!1189010 m!6077260))

(assert (=> d!1622433 d!1622639))

(declare-fun d!1622641 () Bool)

(declare-fun lt!2084660 () Int)

(assert (=> d!1622641 (= lt!2084660 (size!38912 (list!18922 (right!43036 (right!43036 t!4198)))))))

(assert (=> d!1622641 (= lt!2084660 (ite ((_ is Empty!15518) (right!43036 (right!43036 t!4198))) 0 (ite ((_ is Leaf!25741) (right!43036 (right!43036 t!4198))) (csize!31267 (right!43036 (right!43036 t!4198))) (csize!31266 (right!43036 (right!43036 t!4198))))))))

(assert (=> d!1622641 (= (size!38913 (right!43036 (right!43036 t!4198))) lt!2084660)))

(declare-fun bs!1189011 () Bool)

(assert (= bs!1189011 d!1622641))

(assert (=> bs!1189011 m!6077212))

(assert (=> bs!1189011 m!6077212))

(declare-fun m!6077262 () Bool)

(assert (=> bs!1189011 m!6077262))

(assert (=> d!1622433 d!1622641))

(declare-fun d!1622643 () Bool)

(declare-fun lt!2084661 () Int)

(assert (=> d!1622643 (>= lt!2084661 0)))

(declare-fun e!3149095 () Int)

(assert (=> d!1622643 (= lt!2084661 e!3149095)))

(declare-fun c!864199 () Bool)

(assert (=> d!1622643 (= c!864199 ((_ is Nil!58306) (list!18921 (xs!18844 (right!43036 t!4198)))))))

(assert (=> d!1622643 (= (size!38912 (list!18921 (xs!18844 (right!43036 t!4198)))) lt!2084661)))

(declare-fun b!5042785 () Bool)

(assert (=> b!5042785 (= e!3149095 0)))

(declare-fun b!5042786 () Bool)

(assert (=> b!5042786 (= e!3149095 (+ 1 (size!38912 (t!370997 (list!18921 (xs!18844 (right!43036 t!4198)))))))))

(assert (= (and d!1622643 c!864199) b!5042785))

(assert (= (and d!1622643 (not c!864199)) b!5042786))

(declare-fun m!6077264 () Bool)

(assert (=> b!5042786 m!6077264))

(assert (=> b!5042594 d!1622643))

(declare-fun d!1622645 () Bool)

(assert (=> d!1622645 (= (list!18921 (xs!18844 (right!43036 t!4198))) (innerList!15606 (xs!18844 (right!43036 t!4198))))))

(assert (=> b!5042594 d!1622645))

(assert (=> b!5042372 d!1622563))

(declare-fun d!1622647 () Bool)

(declare-fun lt!2084662 () Int)

(assert (=> d!1622647 (= lt!2084662 (size!38912 (list!18922 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))))

(assert (=> d!1622647 (= lt!2084662 (ite ((_ is Empty!15518) (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 0 (ite ((_ is Leaf!25741) (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (csize!31267 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (csize!31266 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(assert (=> d!1622647 (= (size!38913 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) lt!2084662)))

(declare-fun bs!1189012 () Bool)

(assert (= bs!1189012 d!1622647))

(declare-fun m!6077266 () Bool)

(assert (=> bs!1189012 m!6077266))

(assert (=> bs!1189012 m!6077266))

(declare-fun m!6077268 () Bool)

(assert (=> bs!1189012 m!6077268))

(assert (=> d!1622469 d!1622647))

(declare-fun d!1622649 () Bool)

(declare-fun lt!2084663 () Int)

(assert (=> d!1622649 (= lt!2084663 (size!38912 (list!18922 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))))

(assert (=> d!1622649 (= lt!2084663 (ite ((_ is Empty!15518) (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 0 (ite ((_ is Leaf!25741) (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (csize!31267 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (csize!31266 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(assert (=> d!1622649 (= (size!38913 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) lt!2084663)))

(declare-fun bs!1189013 () Bool)

(assert (= bs!1189013 d!1622649))

(declare-fun m!6077270 () Bool)

(assert (=> bs!1189013 m!6077270))

(assert (=> bs!1189013 m!6077270))

(declare-fun m!6077272 () Bool)

(assert (=> bs!1189013 m!6077272))

(assert (=> d!1622469 d!1622649))

(declare-fun b!5042787 () Bool)

(declare-fun res!2148284 () Bool)

(declare-fun e!3149097 () Bool)

(assert (=> b!5042787 (=> (not res!2148284) (not e!3149097))))

(assert (=> b!5042787 (= res!2148284 (isBalanced!4380 (left!42706 (left!42706 (right!43036 t!4198)))))))

(declare-fun b!5042788 () Bool)

(declare-fun e!3149096 () Bool)

(assert (=> b!5042788 (= e!3149096 e!3149097)))

(declare-fun res!2148280 () Bool)

(assert (=> b!5042788 (=> (not res!2148280) (not e!3149097))))

(assert (=> b!5042788 (= res!2148280 (<= (- 1) (- (height!2096 (left!42706 (left!42706 (right!43036 t!4198)))) (height!2096 (right!43036 (left!42706 (right!43036 t!4198)))))))))

(declare-fun d!1622651 () Bool)

(declare-fun res!2148279 () Bool)

(assert (=> d!1622651 (=> res!2148279 e!3149096)))

(assert (=> d!1622651 (= res!2148279 (not ((_ is Node!15518) (left!42706 (right!43036 t!4198)))))))

(assert (=> d!1622651 (= (isBalanced!4380 (left!42706 (right!43036 t!4198))) e!3149096)))

(declare-fun b!5042789 () Bool)

(declare-fun res!2148283 () Bool)

(assert (=> b!5042789 (=> (not res!2148283) (not e!3149097))))

(assert (=> b!5042789 (= res!2148283 (isBalanced!4380 (right!43036 (left!42706 (right!43036 t!4198)))))))

(declare-fun b!5042790 () Bool)

(declare-fun res!2148282 () Bool)

(assert (=> b!5042790 (=> (not res!2148282) (not e!3149097))))

(assert (=> b!5042790 (= res!2148282 (<= (- (height!2096 (left!42706 (left!42706 (right!43036 t!4198)))) (height!2096 (right!43036 (left!42706 (right!43036 t!4198))))) 1))))

(declare-fun b!5042791 () Bool)

(assert (=> b!5042791 (= e!3149097 (not (isEmpty!31541 (right!43036 (left!42706 (right!43036 t!4198))))))))

(declare-fun b!5042792 () Bool)

(declare-fun res!2148281 () Bool)

(assert (=> b!5042792 (=> (not res!2148281) (not e!3149097))))

(assert (=> b!5042792 (= res!2148281 (not (isEmpty!31541 (left!42706 (left!42706 (right!43036 t!4198))))))))

(assert (= (and d!1622651 (not res!2148279)) b!5042788))

(assert (= (and b!5042788 res!2148280) b!5042790))

(assert (= (and b!5042790 res!2148282) b!5042787))

(assert (= (and b!5042787 res!2148284) b!5042789))

(assert (= (and b!5042789 res!2148283) b!5042792))

(assert (= (and b!5042792 res!2148281) b!5042791))

(declare-fun m!6077274 () Bool)

(assert (=> b!5042787 m!6077274))

(declare-fun m!6077276 () Bool)

(assert (=> b!5042791 m!6077276))

(declare-fun m!6077278 () Bool)

(assert (=> b!5042789 m!6077278))

(declare-fun m!6077280 () Bool)

(assert (=> b!5042790 m!6077280))

(declare-fun m!6077282 () Bool)

(assert (=> b!5042790 m!6077282))

(assert (=> b!5042788 m!6077280))

(assert (=> b!5042788 m!6077282))

(declare-fun m!6077284 () Bool)

(assert (=> b!5042792 m!6077284))

(assert (=> b!5042444 d!1622651))

(declare-fun b!5042793 () Bool)

(declare-fun res!2148286 () Bool)

(declare-fun e!3149100 () Bool)

(assert (=> b!5042793 (=> (not res!2148286) (not e!3149100))))

(declare-fun lt!2084664 () tuple2!63246)

(assert (=> b!5042793 (= res!2148286 (= (_1!34926 lt!2084664) (take!829 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1))))))

(declare-fun b!5042794 () Bool)

(declare-fun e!3149099 () tuple2!63246)

(assert (=> b!5042794 (= e!3149099 (tuple2!63247 Nil!58306 Nil!58306))))

(declare-fun b!5042795 () Bool)

(declare-fun e!3149098 () tuple2!63246)

(assert (=> b!5042795 (= e!3149098 (tuple2!63247 Nil!58306 (t!370997 (t!370997 lt!2084545))))))

(declare-fun b!5042796 () Bool)

(assert (=> b!5042796 (= e!3149100 (= (_2!34926 lt!2084664) (drop!2636 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1))))))

(declare-fun b!5042797 () Bool)

(assert (=> b!5042797 (= e!3149099 e!3149098)))

(declare-fun c!864200 () Bool)

(assert (=> b!5042797 (= c!864200 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5042798 () Bool)

(declare-fun lt!2084665 () tuple2!63246)

(assert (=> b!5042798 (= lt!2084665 (splitAtIndex!213 (t!370997 (t!370997 (t!370997 lt!2084545))) (- (- (- i!618 1) 1) 1)))))

(assert (=> b!5042798 (= e!3149098 (tuple2!63247 (Cons!58306 (h!64754 (t!370997 (t!370997 lt!2084545))) (_1!34926 lt!2084665)) (_2!34926 lt!2084665)))))

(declare-fun d!1622653 () Bool)

(assert (=> d!1622653 e!3149100))

(declare-fun res!2148285 () Bool)

(assert (=> d!1622653 (=> (not res!2148285) (not e!3149100))))

(assert (=> d!1622653 (= res!2148285 (= (++!12731 (_1!34926 lt!2084664) (_2!34926 lt!2084664)) (t!370997 (t!370997 lt!2084545))))))

(assert (=> d!1622653 (= lt!2084664 e!3149099)))

(declare-fun c!864201 () Bool)

(assert (=> d!1622653 (= c!864201 ((_ is Nil!58306) (t!370997 (t!370997 lt!2084545))))))

(assert (=> d!1622653 (= (splitAtIndex!213 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1)) lt!2084664)))

(assert (= (and d!1622653 c!864201) b!5042794))

(assert (= (and d!1622653 (not c!864201)) b!5042797))

(assert (= (and b!5042797 c!864200) b!5042795))

(assert (= (and b!5042797 (not c!864200)) b!5042798))

(assert (= (and d!1622653 res!2148285) b!5042793))

(assert (= (and b!5042793 res!2148286) b!5042796))

(assert (=> b!5042793 m!6076736))

(assert (=> b!5042796 m!6076706))

(declare-fun m!6077286 () Bool)

(assert (=> b!5042798 m!6077286))

(declare-fun m!6077288 () Bool)

(assert (=> d!1622653 m!6077288))

(assert (=> b!5042361 d!1622653))

(declare-fun d!1622655 () Bool)

(assert (=> d!1622655 (= (height!2096 (left!42706 (left!42706 t!4198))) (ite ((_ is Empty!15518) (left!42706 (left!42706 t!4198))) 0 (ite ((_ is Leaf!25741) (left!42706 (left!42706 t!4198))) 1 (cheight!15729 (left!42706 (left!42706 t!4198))))))))

(assert (=> b!5042532 d!1622655))

(declare-fun d!1622657 () Bool)

(assert (=> d!1622657 (= (height!2096 (right!43036 (left!42706 t!4198))) (ite ((_ is Empty!15518) (right!43036 (left!42706 t!4198))) 0 (ite ((_ is Leaf!25741) (right!43036 (left!42706 t!4198))) 1 (cheight!15729 (right!43036 (left!42706 t!4198))))))))

(assert (=> b!5042532 d!1622657))

(declare-fun d!1622659 () Bool)

(declare-fun res!2148287 () Bool)

(declare-fun e!3149101 () Bool)

(assert (=> d!1622659 (=> (not res!2148287) (not e!3149101))))

(assert (=> d!1622659 (= res!2148287 (<= (size!38912 (list!18921 (xs!18844 (right!43036 (right!43036 t!4198))))) 512))))

(assert (=> d!1622659 (= (inv!77188 (right!43036 (right!43036 t!4198))) e!3149101)))

(declare-fun b!5042799 () Bool)

(declare-fun res!2148288 () Bool)

(assert (=> b!5042799 (=> (not res!2148288) (not e!3149101))))

(assert (=> b!5042799 (= res!2148288 (= (csize!31267 (right!43036 (right!43036 t!4198))) (size!38912 (list!18921 (xs!18844 (right!43036 (right!43036 t!4198)))))))))

(declare-fun b!5042800 () Bool)

(assert (=> b!5042800 (= e!3149101 (and (> (csize!31267 (right!43036 (right!43036 t!4198))) 0) (<= (csize!31267 (right!43036 (right!43036 t!4198))) 512)))))

(assert (= (and d!1622659 res!2148287) b!5042799))

(assert (= (and b!5042799 res!2148288) b!5042800))

(declare-fun m!6077290 () Bool)

(assert (=> d!1622659 m!6077290))

(assert (=> d!1622659 m!6077290))

(declare-fun m!6077292 () Bool)

(assert (=> d!1622659 m!6077292))

(assert (=> b!5042799 m!6077290))

(assert (=> b!5042799 m!6077290))

(assert (=> b!5042799 m!6077292))

(assert (=> b!5042443 d!1622659))

(assert (=> d!1622503 d!1622643))

(assert (=> d!1622503 d!1622645))

(assert (=> b!5042359 d!1622401))

(assert (=> b!5042530 d!1622655))

(assert (=> b!5042530 d!1622657))

(declare-fun d!1622661 () Bool)

(declare-fun res!2148289 () Bool)

(declare-fun e!3149102 () Bool)

(assert (=> d!1622661 (=> (not res!2148289) (not e!3149102))))

(assert (=> d!1622661 (= res!2148289 (= (csize!31266 (right!43036 (right!43036 t!4198))) (+ (size!38913 (left!42706 (right!43036 (right!43036 t!4198)))) (size!38913 (right!43036 (right!43036 (right!43036 t!4198)))))))))

(assert (=> d!1622661 (= (inv!77187 (right!43036 (right!43036 t!4198))) e!3149102)))

(declare-fun b!5042801 () Bool)

(declare-fun res!2148290 () Bool)

(assert (=> b!5042801 (=> (not res!2148290) (not e!3149102))))

(assert (=> b!5042801 (= res!2148290 (and (not (= (left!42706 (right!43036 (right!43036 t!4198))) Empty!15518)) (not (= (right!43036 (right!43036 (right!43036 t!4198))) Empty!15518))))))

(declare-fun b!5042802 () Bool)

(declare-fun res!2148291 () Bool)

(assert (=> b!5042802 (=> (not res!2148291) (not e!3149102))))

(assert (=> b!5042802 (= res!2148291 (= (cheight!15729 (right!43036 (right!43036 t!4198))) (+ (max!0 (height!2096 (left!42706 (right!43036 (right!43036 t!4198)))) (height!2096 (right!43036 (right!43036 (right!43036 t!4198))))) 1)))))

(declare-fun b!5042803 () Bool)

(assert (=> b!5042803 (= e!3149102 (<= 0 (cheight!15729 (right!43036 (right!43036 t!4198)))))))

(assert (= (and d!1622661 res!2148289) b!5042801))

(assert (= (and b!5042801 res!2148290) b!5042802))

(assert (= (and b!5042802 res!2148291) b!5042803))

(declare-fun m!6077294 () Bool)

(assert (=> d!1622661 m!6077294))

(declare-fun m!6077296 () Bool)

(assert (=> d!1622661 m!6077296))

(assert (=> b!5042802 m!6077232))

(assert (=> b!5042802 m!6077234))

(assert (=> b!5042802 m!6077232))

(assert (=> b!5042802 m!6077234))

(declare-fun m!6077298 () Bool)

(assert (=> b!5042802 m!6077298))

(assert (=> b!5042441 d!1622661))

(declare-fun d!1622663 () Bool)

(declare-fun c!864202 () Bool)

(assert (=> d!1622663 (= c!864202 ((_ is Node!15518) (left!42706 (left!42706 (left!42706 t!4198)))))))

(declare-fun e!3149103 () Bool)

(assert (=> d!1622663 (= (inv!77183 (left!42706 (left!42706 (left!42706 t!4198)))) e!3149103)))

(declare-fun b!5042804 () Bool)

(assert (=> b!5042804 (= e!3149103 (inv!77187 (left!42706 (left!42706 (left!42706 t!4198)))))))

(declare-fun b!5042805 () Bool)

(declare-fun e!3149104 () Bool)

(assert (=> b!5042805 (= e!3149103 e!3149104)))

(declare-fun res!2148292 () Bool)

(assert (=> b!5042805 (= res!2148292 (not ((_ is Leaf!25741) (left!42706 (left!42706 (left!42706 t!4198))))))))

(assert (=> b!5042805 (=> res!2148292 e!3149104)))

(declare-fun b!5042806 () Bool)

(assert (=> b!5042806 (= e!3149104 (inv!77188 (left!42706 (left!42706 (left!42706 t!4198)))))))

(assert (= (and d!1622663 c!864202) b!5042804))

(assert (= (and d!1622663 (not c!864202)) b!5042805))

(assert (= (and b!5042805 (not res!2148292)) b!5042806))

(declare-fun m!6077300 () Bool)

(assert (=> b!5042804 m!6077300))

(declare-fun m!6077302 () Bool)

(assert (=> b!5042806 m!6077302))

(assert (=> b!5042596 d!1622663))

(declare-fun d!1622665 () Bool)

(declare-fun c!864203 () Bool)

(assert (=> d!1622665 (= c!864203 ((_ is Node!15518) (right!43036 (left!42706 (left!42706 t!4198)))))))

(declare-fun e!3149105 () Bool)

(assert (=> d!1622665 (= (inv!77183 (right!43036 (left!42706 (left!42706 t!4198)))) e!3149105)))

(declare-fun b!5042807 () Bool)

(assert (=> b!5042807 (= e!3149105 (inv!77187 (right!43036 (left!42706 (left!42706 t!4198)))))))

(declare-fun b!5042808 () Bool)

(declare-fun e!3149106 () Bool)

(assert (=> b!5042808 (= e!3149105 e!3149106)))

(declare-fun res!2148293 () Bool)

(assert (=> b!5042808 (= res!2148293 (not ((_ is Leaf!25741) (right!43036 (left!42706 (left!42706 t!4198))))))))

(assert (=> b!5042808 (=> res!2148293 e!3149106)))

(declare-fun b!5042809 () Bool)

(assert (=> b!5042809 (= e!3149106 (inv!77188 (right!43036 (left!42706 (left!42706 t!4198)))))))

(assert (= (and d!1622665 c!864203) b!5042807))

(assert (= (and d!1622665 (not c!864203)) b!5042808))

(assert (= (and b!5042808 (not res!2148293)) b!5042809))

(declare-fun m!6077304 () Bool)

(assert (=> b!5042807 m!6077304))

(declare-fun m!6077306 () Bool)

(assert (=> b!5042809 m!6077306))

(assert (=> b!5042596 d!1622665))

(assert (=> d!1622405 d!1622403))

(assert (=> d!1622405 d!1622373))

(declare-fun d!1622667 () Bool)

(assert (=> d!1622667 (= (inv!77184 _$4!1205) (<= (size!38912 (innerList!15606 _$4!1205)) 2147483647))))

(declare-fun bs!1189014 () Bool)

(assert (= bs!1189014 d!1622667))

(declare-fun m!6077308 () Bool)

(assert (=> bs!1189014 m!6077308))

(assert (=> d!1622405 d!1622667))

(declare-fun d!1622669 () Bool)

(assert (=> d!1622669 (= (max!0 (height!2096 (left!42706 (right!43036 t!4198))) (height!2096 (right!43036 (right!43036 t!4198)))) (ite (< (height!2096 (left!42706 (right!43036 t!4198))) (height!2096 (right!43036 (right!43036 t!4198)))) (height!2096 (right!43036 (right!43036 t!4198))) (height!2096 (left!42706 (right!43036 t!4198)))))))

(assert (=> b!5042459 d!1622669))

(assert (=> b!5042459 d!1622539))

(assert (=> b!5042459 d!1622541))

(declare-fun d!1622671 () Bool)

(assert (=> d!1622671 (= (isEmpty!31543 (list!18922 (right!43036 t!4198))) ((_ is Nil!58306) (list!18922 (right!43036 t!4198))))))

(assert (=> d!1622413 d!1622671))

(assert (=> d!1622413 d!1622615))

(assert (=> d!1622413 d!1622581))

(assert (=> b!5042426 d!1622467))

(declare-fun d!1622673 () Bool)

(assert (=> d!1622673 (= (max!0 (height!2096 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (height!2096 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))) (ite (< (height!2096 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (height!2096 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))) (height!2096 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (height!2096 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618))))))))

(assert (=> b!5042538 d!1622673))

(declare-fun d!1622675 () Bool)

(assert (=> d!1622675 (= (height!2096 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (ite ((_ is Empty!15518) (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 0 (ite ((_ is Leaf!25741) (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 1 (cheight!15729 (left!42706 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(assert (=> b!5042538 d!1622675))

(declare-fun d!1622677 () Bool)

(assert (=> d!1622677 (= (height!2096 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) (ite ((_ is Empty!15518) (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 0 (ite ((_ is Leaf!25741) (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))) 1 (cheight!15729 (right!43036 (Leaf!25741 (slice!857 (xs!18844 t!4198) i!618 (csize!31267 t!4198)) (- (csize!31267 t!4198) i!618)))))))))

(assert (=> b!5042538 d!1622677))

(declare-fun d!1622679 () Bool)

(declare-fun lt!2084666 () Bool)

(assert (=> d!1622679 (= lt!2084666 (isEmpty!31543 (list!18922 (left!42706 (right!43036 t!4198)))))))

(assert (=> d!1622679 (= lt!2084666 (= (size!38913 (left!42706 (right!43036 t!4198))) 0))))

(assert (=> d!1622679 (= (isEmpty!31541 (left!42706 (right!43036 t!4198))) lt!2084666)))

(declare-fun bs!1189015 () Bool)

(assert (= bs!1189015 d!1622679))

(assert (=> bs!1189015 m!6077210))

(assert (=> bs!1189015 m!6077210))

(declare-fun m!6077310 () Bool)

(assert (=> bs!1189015 m!6077310))

(assert (=> bs!1189015 m!6076780))

(assert (=> b!5042450 d!1622679))

(assert (=> d!1622381 d!1622621))

(assert (=> d!1622381 d!1622373))

(declare-fun b!5042813 () Bool)

(declare-fun e!3149107 () Bool)

(declare-fun lt!2084667 () List!58430)

(assert (=> b!5042813 (= e!3149107 (or (not (= (_2!34926 lt!2084596) Nil!58306)) (= lt!2084667 (_1!34926 lt!2084596))))))

(declare-fun b!5042811 () Bool)

(declare-fun e!3149108 () List!58430)

(assert (=> b!5042811 (= e!3149108 (Cons!58306 (h!64754 (_1!34926 lt!2084596)) (++!12731 (t!370997 (_1!34926 lt!2084596)) (_2!34926 lt!2084596))))))

(declare-fun b!5042810 () Bool)

(assert (=> b!5042810 (= e!3149108 (_2!34926 lt!2084596))))

(declare-fun b!5042812 () Bool)

(declare-fun res!2148294 () Bool)

(assert (=> b!5042812 (=> (not res!2148294) (not e!3149107))))

(assert (=> b!5042812 (= res!2148294 (= (size!38912 lt!2084667) (+ (size!38912 (_1!34926 lt!2084596)) (size!38912 (_2!34926 lt!2084596)))))))

(declare-fun d!1622681 () Bool)

(assert (=> d!1622681 e!3149107))

(declare-fun res!2148295 () Bool)

(assert (=> d!1622681 (=> (not res!2148295) (not e!3149107))))

(assert (=> d!1622681 (= res!2148295 (= (content!10359 lt!2084667) ((_ map or) (content!10359 (_1!34926 lt!2084596)) (content!10359 (_2!34926 lt!2084596)))))))

(assert (=> d!1622681 (= lt!2084667 e!3149108)))

(declare-fun c!864204 () Bool)

(assert (=> d!1622681 (= c!864204 ((_ is Nil!58306) (_1!34926 lt!2084596)))))

(assert (=> d!1622681 (= (++!12731 (_1!34926 lt!2084596) (_2!34926 lt!2084596)) lt!2084667)))

(assert (= (and d!1622681 c!864204) b!5042810))

(assert (= (and d!1622681 (not c!864204)) b!5042811))

(assert (= (and d!1622681 res!2148295) b!5042812))

(assert (= (and b!5042812 res!2148294) b!5042813))

(declare-fun m!6077312 () Bool)

(assert (=> b!5042811 m!6077312))

(declare-fun m!6077314 () Bool)

(assert (=> b!5042812 m!6077314))

(declare-fun m!6077316 () Bool)

(assert (=> b!5042812 m!6077316))

(declare-fun m!6077318 () Bool)

(assert (=> b!5042812 m!6077318))

(declare-fun m!6077320 () Bool)

(assert (=> d!1622681 m!6077320))

(declare-fun m!6077322 () Bool)

(assert (=> d!1622681 m!6077322))

(declare-fun m!6077324 () Bool)

(assert (=> d!1622681 m!6077324))

(assert (=> d!1622379 d!1622681))

(declare-fun d!1622683 () Bool)

(declare-fun res!2148296 () Bool)

(declare-fun e!3149109 () Bool)

(assert (=> d!1622683 (=> (not res!2148296) (not e!3149109))))

(assert (=> d!1622683 (= res!2148296 (= (csize!31266 (left!42706 (right!43036 t!4198))) (+ (size!38913 (left!42706 (left!42706 (right!43036 t!4198)))) (size!38913 (right!43036 (left!42706 (right!43036 t!4198)))))))))

(assert (=> d!1622683 (= (inv!77187 (left!42706 (right!43036 t!4198))) e!3149109)))

(declare-fun b!5042814 () Bool)

(declare-fun res!2148297 () Bool)

(assert (=> b!5042814 (=> (not res!2148297) (not e!3149109))))

(assert (=> b!5042814 (= res!2148297 (and (not (= (left!42706 (left!42706 (right!43036 t!4198))) Empty!15518)) (not (= (right!43036 (left!42706 (right!43036 t!4198))) Empty!15518))))))

(declare-fun b!5042815 () Bool)

(declare-fun res!2148298 () Bool)

(assert (=> b!5042815 (=> (not res!2148298) (not e!3149109))))

(assert (=> b!5042815 (= res!2148298 (= (cheight!15729 (left!42706 (right!43036 t!4198))) (+ (max!0 (height!2096 (left!42706 (left!42706 (right!43036 t!4198)))) (height!2096 (right!43036 (left!42706 (right!43036 t!4198))))) 1)))))

(declare-fun b!5042816 () Bool)

(assert (=> b!5042816 (= e!3149109 (<= 0 (cheight!15729 (left!42706 (right!43036 t!4198)))))))

(assert (= (and d!1622683 res!2148296) b!5042814))

(assert (= (and b!5042814 res!2148297) b!5042815))

(assert (= (and b!5042815 res!2148298) b!5042816))

(declare-fun m!6077326 () Bool)

(assert (=> d!1622683 m!6077326))

(declare-fun m!6077328 () Bool)

(assert (=> d!1622683 m!6077328))

(assert (=> b!5042815 m!6077280))

(assert (=> b!5042815 m!6077282))

(assert (=> b!5042815 m!6077280))

(assert (=> b!5042815 m!6077282))

(declare-fun m!6077330 () Bool)

(assert (=> b!5042815 m!6077330))

(assert (=> b!5042438 d!1622683))

(declare-fun d!1622685 () Bool)

(declare-fun lt!2084668 () Int)

(assert (=> d!1622685 (>= lt!2084668 0)))

(declare-fun e!3149110 () Int)

(assert (=> d!1622685 (= lt!2084668 e!3149110)))

(declare-fun c!864205 () Bool)

(assert (=> d!1622685 (= c!864205 ((_ is Nil!58306) (innerList!15606 (xs!18844 (left!42706 t!4198)))))))

(assert (=> d!1622685 (= (size!38912 (innerList!15606 (xs!18844 (left!42706 t!4198)))) lt!2084668)))

(declare-fun b!5042817 () Bool)

(assert (=> b!5042817 (= e!3149110 0)))

(declare-fun b!5042818 () Bool)

(assert (=> b!5042818 (= e!3149110 (+ 1 (size!38912 (t!370997 (innerList!15606 (xs!18844 (left!42706 t!4198)))))))))

(assert (= (and d!1622685 c!864205) b!5042817))

(assert (= (and d!1622685 (not c!864205)) b!5042818))

(declare-fun m!6077332 () Bool)

(assert (=> b!5042818 m!6077332))

(assert (=> d!1622389 d!1622685))

(assert (=> b!5042519 d!1622633))

(assert (=> b!5042519 d!1622635))

(assert (=> b!5042344 d!1622573))

(declare-fun d!1622687 () Bool)

(declare-fun lt!2084669 () Int)

(assert (=> d!1622687 (>= lt!2084669 0)))

(declare-fun e!3149111 () Int)

(assert (=> d!1622687 (= lt!2084669 e!3149111)))

(declare-fun c!864206 () Bool)

(assert (=> d!1622687 (= c!864206 ((_ is Nil!58306) lt!2084620))))

(assert (=> d!1622687 (= (size!38912 lt!2084620) lt!2084669)))

(declare-fun b!5042819 () Bool)

(assert (=> b!5042819 (= e!3149111 0)))

(declare-fun b!5042820 () Bool)

(assert (=> b!5042820 (= e!3149111 (+ 1 (size!38912 (t!370997 lt!2084620))))))

(assert (= (and d!1622687 c!864206) b!5042819))

(assert (= (and d!1622687 (not c!864206)) b!5042820))

(declare-fun m!6077334 () Bool)

(assert (=> b!5042820 m!6077334))

(assert (=> b!5042517 d!1622687))

(declare-fun d!1622689 () Bool)

(declare-fun lt!2084670 () Int)

(assert (=> d!1622689 (>= lt!2084670 0)))

(declare-fun e!3149112 () Int)

(assert (=> d!1622689 (= lt!2084670 e!3149112)))

(declare-fun c!864207 () Bool)

(assert (=> d!1622689 (= c!864207 ((_ is Nil!58306) (_1!34926 lt!2084592)))))

(assert (=> d!1622689 (= (size!38912 (_1!34926 lt!2084592)) lt!2084670)))

(declare-fun b!5042821 () Bool)

(assert (=> b!5042821 (= e!3149112 0)))

(declare-fun b!5042822 () Bool)

(assert (=> b!5042822 (= e!3149112 (+ 1 (size!38912 (t!370997 (_1!34926 lt!2084592)))))))

(assert (= (and d!1622689 c!864207) b!5042821))

(assert (= (and d!1622689 (not c!864207)) b!5042822))

(assert (=> b!5042822 m!6077126))

(assert (=> b!5042517 d!1622689))

(declare-fun d!1622691 () Bool)

(declare-fun lt!2084671 () Int)

(assert (=> d!1622691 (>= lt!2084671 0)))

(declare-fun e!3149113 () Int)

(assert (=> d!1622691 (= lt!2084671 e!3149113)))

(declare-fun c!864208 () Bool)

(assert (=> d!1622691 (= c!864208 ((_ is Nil!58306) (_2!34926 lt!2084592)))))

(assert (=> d!1622691 (= (size!38912 (_2!34926 lt!2084592)) lt!2084671)))

(declare-fun b!5042823 () Bool)

(assert (=> b!5042823 (= e!3149113 0)))

(declare-fun b!5042824 () Bool)

(assert (=> b!5042824 (= e!3149113 (+ 1 (size!38912 (t!370997 (_2!34926 lt!2084592)))))))

(assert (= (and d!1622691 c!864208) b!5042823))

(assert (= (and d!1622691 (not c!864208)) b!5042824))

(declare-fun m!6077336 () Bool)

(assert (=> b!5042824 m!6077336))

(assert (=> b!5042517 d!1622691))

(assert (=> d!1622493 d!1622621))

(assert (=> d!1622493 d!1622373))

(declare-fun d!1622693 () Bool)

(declare-fun _$1!11289 () Int)

(assert (=> d!1622693 (= _$1!11289 (size!38912 (list!18921 (xs!18844 t!4198))))))

(assert (=> d!1622693 true))

(assert (=> d!1622693 (= (choose!37264 (xs!18844 t!4198)) _$1!11289)))

(declare-fun bs!1189016 () Bool)

(assert (= bs!1189016 d!1622693))

(assert (=> bs!1189016 m!6076466))

(assert (=> bs!1189016 m!6076466))

(assert (=> bs!1189016 m!6076666))

(assert (=> d!1622493 d!1622693))

(declare-fun d!1622695 () Bool)

(declare-fun lt!2084672 () Int)

(assert (=> d!1622695 (>= lt!2084672 0)))

(declare-fun e!3149114 () Int)

(assert (=> d!1622695 (= lt!2084672 e!3149114)))

(declare-fun c!864209 () Bool)

(assert (=> d!1622695 (= c!864209 ((_ is Nil!58306) lt!2084594))))

(assert (=> d!1622695 (= (size!38912 lt!2084594) lt!2084672)))

(declare-fun b!5042825 () Bool)

(assert (=> b!5042825 (= e!3149114 0)))

(declare-fun b!5042826 () Bool)

(assert (=> b!5042826 (= e!3149114 (+ 1 (size!38912 (t!370997 lt!2084594))))))

(assert (= (and d!1622695 c!864209) b!5042825))

(assert (= (and d!1622695 (not c!864209)) b!5042826))

(declare-fun m!6077338 () Bool)

(assert (=> b!5042826 m!6077338))

(assert (=> b!5042342 d!1622695))

(declare-fun d!1622697 () Bool)

(declare-fun lt!2084673 () Int)

(assert (=> d!1622697 (>= lt!2084673 0)))

(declare-fun e!3149115 () Int)

(assert (=> d!1622697 (= lt!2084673 e!3149115)))

(declare-fun c!864210 () Bool)

(assert (=> d!1622697 (= c!864210 ((_ is Nil!58306) lt!2084605))))

(assert (=> d!1622697 (= (size!38912 lt!2084605) lt!2084673)))

(declare-fun b!5042827 () Bool)

(assert (=> b!5042827 (= e!3149115 0)))

(declare-fun b!5042828 () Bool)

(assert (=> b!5042828 (= e!3149115 (+ 1 (size!38912 (t!370997 lt!2084605))))))

(assert (= (and d!1622697 c!864210) b!5042827))

(assert (= (and d!1622697 (not c!864210)) b!5042828))

(declare-fun m!6077340 () Bool)

(assert (=> b!5042828 m!6077340))

(assert (=> b!5042424 d!1622697))

(declare-fun d!1622699 () Bool)

(declare-fun lt!2084674 () Bool)

(assert (=> d!1622699 (= lt!2084674 (isEmpty!31543 (list!18922 (right!43036 (right!43036 t!4198)))))))

(assert (=> d!1622699 (= lt!2084674 (= (size!38913 (right!43036 (right!43036 t!4198))) 0))))

(assert (=> d!1622699 (= (isEmpty!31541 (right!43036 (right!43036 t!4198))) lt!2084674)))

(declare-fun bs!1189017 () Bool)

(assert (= bs!1189017 d!1622699))

(assert (=> bs!1189017 m!6077212))

(assert (=> bs!1189017 m!6077212))

(declare-fun m!6077342 () Bool)

(assert (=> bs!1189017 m!6077342))

(assert (=> bs!1189017 m!6076782))

(assert (=> b!5042448 d!1622699))

(declare-fun d!1622701 () Bool)

(declare-fun c!864211 () Bool)

(assert (=> d!1622701 (= c!864211 ((_ is Nil!58306) lt!2084594))))

(declare-fun e!3149116 () (InoxSet T!104222))

(assert (=> d!1622701 (= (content!10359 lt!2084594) e!3149116)))

(declare-fun b!5042829 () Bool)

(assert (=> b!5042829 (= e!3149116 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042830 () Bool)

(assert (=> b!5042830 (= e!3149116 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084594) true) (content!10359 (t!370997 lt!2084594))))))

(assert (= (and d!1622701 c!864211) b!5042829))

(assert (= (and d!1622701 (not c!864211)) b!5042830))

(declare-fun m!6077344 () Bool)

(assert (=> b!5042830 m!6077344))

(declare-fun m!6077346 () Bool)

(assert (=> b!5042830 m!6077346))

(assert (=> d!1622375 d!1622701))

(declare-fun d!1622703 () Bool)

(declare-fun c!864212 () Bool)

(assert (=> d!1622703 (= c!864212 ((_ is Nil!58306) (drop!2636 lt!2084545 0)))))

(declare-fun e!3149117 () (InoxSet T!104222))

(assert (=> d!1622703 (= (content!10359 (drop!2636 lt!2084545 0)) e!3149117)))

(declare-fun b!5042831 () Bool)

(assert (=> b!5042831 (= e!3149117 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042832 () Bool)

(assert (=> b!5042832 (= e!3149117 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (drop!2636 lt!2084545 0)) true) (content!10359 (t!370997 (drop!2636 lt!2084545 0)))))))

(assert (= (and d!1622703 c!864212) b!5042831))

(assert (= (and d!1622703 (not c!864212)) b!5042832))

(declare-fun m!6077348 () Bool)

(assert (=> b!5042832 m!6077348))

(assert (=> b!5042832 m!6077254))

(assert (=> d!1622375 d!1622703))

(declare-fun d!1622705 () Bool)

(declare-fun res!2148299 () Bool)

(declare-fun e!3149118 () Bool)

(assert (=> d!1622705 (=> (not res!2148299) (not e!3149118))))

(assert (=> d!1622705 (= res!2148299 (<= (size!38912 (list!18921 (xs!18844 (left!42706 (left!42706 t!4198))))) 512))))

(assert (=> d!1622705 (= (inv!77188 (left!42706 (left!42706 t!4198))) e!3149118)))

(declare-fun b!5042833 () Bool)

(declare-fun res!2148300 () Bool)

(assert (=> b!5042833 (=> (not res!2148300) (not e!3149118))))

(assert (=> b!5042833 (= res!2148300 (= (csize!31267 (left!42706 (left!42706 t!4198))) (size!38912 (list!18921 (xs!18844 (left!42706 (left!42706 t!4198)))))))))

(declare-fun b!5042834 () Bool)

(assert (=> b!5042834 (= e!3149118 (and (> (csize!31267 (left!42706 (left!42706 t!4198))) 0) (<= (csize!31267 (left!42706 (left!42706 t!4198))) 512)))))

(assert (= (and d!1622705 res!2148299) b!5042833))

(assert (= (and b!5042833 res!2148300) b!5042834))

(declare-fun m!6077350 () Bool)

(assert (=> d!1622705 m!6077350))

(assert (=> d!1622705 m!6077350))

(declare-fun m!6077352 () Bool)

(assert (=> d!1622705 m!6077352))

(assert (=> b!5042833 m!6077350))

(assert (=> b!5042833 m!6077350))

(assert (=> b!5042833 m!6077352))

(assert (=> b!5042546 d!1622705))

(declare-fun d!1622707 () Bool)

(declare-fun c!864213 () Bool)

(assert (=> d!1622707 (= c!864213 ((_ is Nil!58306) lt!2084605))))

(declare-fun e!3149119 () (InoxSet T!104222))

(assert (=> d!1622707 (= (content!10359 lt!2084605) e!3149119)))

(declare-fun b!5042835 () Bool)

(assert (=> b!5042835 (= e!3149119 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042836 () Bool)

(assert (=> b!5042836 (= e!3149119 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 lt!2084605) true) (content!10359 (t!370997 lt!2084605))))))

(assert (= (and d!1622707 c!864213) b!5042835))

(assert (= (and d!1622707 (not c!864213)) b!5042836))

(declare-fun m!6077354 () Bool)

(assert (=> b!5042836 m!6077354))

(declare-fun m!6077356 () Bool)

(assert (=> b!5042836 m!6077356))

(assert (=> d!1622411 d!1622707))

(assert (=> d!1622411 d!1622537))

(assert (=> b!5042332 d!1622423))

(assert (=> b!5042332 d!1622425))

(declare-fun d!1622709 () Bool)

(declare-fun lt!2084675 () Int)

(assert (=> d!1622709 (= lt!2084675 (size!38912 (list!18922 (left!42706 (left!42706 t!4198)))))))

(assert (=> d!1622709 (= lt!2084675 (ite ((_ is Empty!15518) (left!42706 (left!42706 t!4198))) 0 (ite ((_ is Leaf!25741) (left!42706 (left!42706 t!4198))) (csize!31267 (left!42706 (left!42706 t!4198))) (csize!31266 (left!42706 (left!42706 t!4198))))))))

(assert (=> d!1622709 (= (size!38913 (left!42706 (left!42706 t!4198))) lt!2084675)))

(declare-fun bs!1189018 () Bool)

(assert (= bs!1189018 d!1622709))

(assert (=> bs!1189018 m!6077140))

(assert (=> bs!1189018 m!6077140))

(declare-fun m!6077358 () Bool)

(assert (=> bs!1189018 m!6077358))

(assert (=> d!1622395 d!1622709))

(declare-fun d!1622711 () Bool)

(declare-fun lt!2084676 () Int)

(assert (=> d!1622711 (= lt!2084676 (size!38912 (list!18922 (right!43036 (left!42706 t!4198)))))))

(assert (=> d!1622711 (= lt!2084676 (ite ((_ is Empty!15518) (right!43036 (left!42706 t!4198))) 0 (ite ((_ is Leaf!25741) (right!43036 (left!42706 t!4198))) (csize!31267 (right!43036 (left!42706 t!4198))) (csize!31266 (right!43036 (left!42706 t!4198))))))))

(assert (=> d!1622711 (= (size!38913 (right!43036 (left!42706 t!4198))) lt!2084676)))

(declare-fun bs!1189019 () Bool)

(assert (= bs!1189019 d!1622711))

(assert (=> bs!1189019 m!6077074))

(assert (=> bs!1189019 m!6077074))

(declare-fun m!6077360 () Bool)

(assert (=> bs!1189019 m!6077360))

(assert (=> d!1622395 d!1622711))

(declare-fun d!1622713 () Bool)

(declare-fun res!2148301 () Bool)

(declare-fun e!3149120 () Bool)

(assert (=> d!1622713 (=> (not res!2148301) (not e!3149120))))

(assert (=> d!1622713 (= res!2148301 (= (csize!31266 (left!42706 (left!42706 t!4198))) (+ (size!38913 (left!42706 (left!42706 (left!42706 t!4198)))) (size!38913 (right!43036 (left!42706 (left!42706 t!4198)))))))))

(assert (=> d!1622713 (= (inv!77187 (left!42706 (left!42706 t!4198))) e!3149120)))

(declare-fun b!5042837 () Bool)

(declare-fun res!2148302 () Bool)

(assert (=> b!5042837 (=> (not res!2148302) (not e!3149120))))

(assert (=> b!5042837 (= res!2148302 (and (not (= (left!42706 (left!42706 (left!42706 t!4198))) Empty!15518)) (not (= (right!43036 (left!42706 (left!42706 t!4198))) Empty!15518))))))

(declare-fun b!5042838 () Bool)

(declare-fun res!2148303 () Bool)

(assert (=> b!5042838 (=> (not res!2148303) (not e!3149120))))

(assert (=> b!5042838 (= res!2148303 (= (cheight!15729 (left!42706 (left!42706 t!4198))) (+ (max!0 (height!2096 (left!42706 (left!42706 (left!42706 t!4198)))) (height!2096 (right!43036 (left!42706 (left!42706 t!4198))))) 1)))))

(declare-fun b!5042839 () Bool)

(assert (=> b!5042839 (= e!3149120 (<= 0 (cheight!15729 (left!42706 (left!42706 t!4198)))))))

(assert (= (and d!1622713 res!2148301) b!5042837))

(assert (= (and b!5042837 res!2148302) b!5042838))

(assert (= (and b!5042838 res!2148303) b!5042839))

(declare-fun m!6077362 () Bool)

(assert (=> d!1622713 m!6077362))

(declare-fun m!6077364 () Bool)

(assert (=> d!1622713 m!6077364))

(assert (=> b!5042838 m!6077172))

(assert (=> b!5042838 m!6077174))

(assert (=> b!5042838 m!6077172))

(assert (=> b!5042838 m!6077174))

(declare-fun m!6077366 () Bool)

(assert (=> b!5042838 m!6077366))

(assert (=> b!5042544 d!1622713))

(declare-fun d!1622715 () Bool)

(declare-fun lt!2084677 () Int)

(assert (=> d!1622715 (>= lt!2084677 0)))

(declare-fun e!3149121 () Int)

(assert (=> d!1622715 (= lt!2084677 e!3149121)))

(declare-fun c!864214 () Bool)

(assert (=> d!1622715 (= c!864214 ((_ is Nil!58306) lt!2084598))))

(assert (=> d!1622715 (= (size!38912 lt!2084598) lt!2084677)))

(declare-fun b!5042840 () Bool)

(assert (=> b!5042840 (= e!3149121 0)))

(declare-fun b!5042841 () Bool)

(assert (=> b!5042841 (= e!3149121 (+ 1 (size!38912 (t!370997 lt!2084598))))))

(assert (= (and d!1622715 c!864214) b!5042840))

(assert (= (and d!1622715 (not c!864214)) b!5042841))

(declare-fun m!6077368 () Bool)

(assert (=> b!5042841 m!6077368))

(assert (=> b!5042370 d!1622715))

(declare-fun b!5042842 () Bool)

(declare-fun e!3149122 () List!58430)

(assert (=> b!5042842 (= e!3149122 (t!370997 (t!370997 lt!2084545)))))

(declare-fun b!5042843 () Bool)

(declare-fun e!3149123 () Int)

(declare-fun e!3149126 () Int)

(assert (=> b!5042843 (= e!3149123 e!3149126)))

(declare-fun c!864216 () Bool)

(declare-fun call!351435 () Int)

(assert (=> b!5042843 (= c!864216 (>= (- (- i!618 1) 1) call!351435))))

(declare-fun b!5042844 () Bool)

(declare-fun e!3149125 () List!58430)

(assert (=> b!5042844 (= e!3149125 e!3149122)))

(declare-fun c!864217 () Bool)

(assert (=> b!5042844 (= c!864217 (<= (- (- i!618 1) 1) 0))))

(declare-fun bm!351430 () Bool)

(assert (=> bm!351430 (= call!351435 (size!38912 (t!370997 (t!370997 lt!2084545))))))

(declare-fun b!5042845 () Bool)

(assert (=> b!5042845 (= e!3149125 Nil!58306)))

(declare-fun b!5042846 () Bool)

(assert (=> b!5042846 (= e!3149122 (drop!2636 (t!370997 (t!370997 (t!370997 lt!2084545))) (- (- (- i!618 1) 1) 1)))))

(declare-fun d!1622717 () Bool)

(declare-fun e!3149124 () Bool)

(assert (=> d!1622717 e!3149124))

(declare-fun res!2148304 () Bool)

(assert (=> d!1622717 (=> (not res!2148304) (not e!3149124))))

(declare-fun lt!2084678 () List!58430)

(assert (=> d!1622717 (= res!2148304 (= ((_ map implies) (content!10359 lt!2084678) (content!10359 (t!370997 (t!370997 lt!2084545)))) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622717 (= lt!2084678 e!3149125)))

(declare-fun c!864218 () Bool)

(assert (=> d!1622717 (= c!864218 ((_ is Nil!58306) (t!370997 (t!370997 lt!2084545))))))

(assert (=> d!1622717 (= (drop!2636 (t!370997 (t!370997 lt!2084545)) (- (- i!618 1) 1)) lt!2084678)))

(declare-fun b!5042847 () Bool)

(assert (=> b!5042847 (= e!3149124 (= (size!38912 lt!2084678) e!3149123))))

(declare-fun c!864215 () Bool)

(assert (=> b!5042847 (= c!864215 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5042848 () Bool)

(assert (=> b!5042848 (= e!3149123 call!351435)))

(declare-fun b!5042849 () Bool)

(assert (=> b!5042849 (= e!3149126 0)))

(declare-fun b!5042850 () Bool)

(assert (=> b!5042850 (= e!3149126 (- call!351435 (- (- i!618 1) 1)))))

(assert (= (and d!1622717 c!864218) b!5042845))

(assert (= (and d!1622717 (not c!864218)) b!5042844))

(assert (= (and b!5042844 c!864217) b!5042842))

(assert (= (and b!5042844 (not c!864217)) b!5042846))

(assert (= (and d!1622717 res!2148304) b!5042847))

(assert (= (and b!5042847 c!864215) b!5042848))

(assert (= (and b!5042847 (not c!864215)) b!5042843))

(assert (= (and b!5042843 c!864216) b!5042849))

(assert (= (and b!5042843 (not c!864216)) b!5042850))

(assert (= (or b!5042848 b!5042843 b!5042850) bm!351430))

(assert (=> bm!351430 m!6076876))

(declare-fun m!6077370 () Bool)

(assert (=> b!5042846 m!6077370))

(declare-fun m!6077372 () Bool)

(assert (=> d!1622717 m!6077372))

(assert (=> d!1622717 m!6077070))

(declare-fun m!6077374 () Bool)

(assert (=> b!5042847 m!6077374))

(assert (=> b!5042405 d!1622717))

(declare-fun d!1622719 () Bool)

(declare-fun e!3149128 () Bool)

(assert (=> d!1622719 e!3149128))

(declare-fun res!2148305 () Bool)

(assert (=> d!1622719 (=> (not res!2148305) (not e!3149128))))

(declare-fun lt!2084679 () List!58430)

(assert (=> d!1622719 (= res!2148305 (= ((_ map implies) (content!10359 lt!2084679) (content!10359 (t!370997 (drop!2636 lt!2084545 i!618)))) ((as const (InoxSet T!104222)) true)))))

(declare-fun e!3149129 () List!58430)

(assert (=> d!1622719 (= lt!2084679 e!3149129)))

(declare-fun c!864220 () Bool)

(assert (=> d!1622719 (= c!864220 (or ((_ is Nil!58306) (t!370997 (drop!2636 lt!2084545 i!618))) (<= (- (- (size!38912 lt!2084545) i!618) 1) 0)))))

(assert (=> d!1622719 (= (take!829 (t!370997 (drop!2636 lt!2084545 i!618)) (- (- (size!38912 lt!2084545) i!618) 1)) lt!2084679)))

(declare-fun b!5042851 () Bool)

(assert (=> b!5042851 (= e!3149129 (Cons!58306 (h!64754 (t!370997 (drop!2636 lt!2084545 i!618))) (take!829 (t!370997 (t!370997 (drop!2636 lt!2084545 i!618))) (- (- (- (size!38912 lt!2084545) i!618) 1) 1))))))

(declare-fun b!5042852 () Bool)

(assert (=> b!5042852 (= e!3149129 Nil!58306)))

(declare-fun b!5042853 () Bool)

(declare-fun e!3149130 () Int)

(assert (=> b!5042853 (= e!3149128 (= (size!38912 lt!2084679) e!3149130))))

(declare-fun c!864221 () Bool)

(assert (=> b!5042853 (= c!864221 (<= (- (- (size!38912 lt!2084545) i!618) 1) 0))))

(declare-fun b!5042854 () Bool)

(declare-fun e!3149127 () Int)

(assert (=> b!5042854 (= e!3149127 (size!38912 (t!370997 (drop!2636 lt!2084545 i!618))))))

(declare-fun b!5042855 () Bool)

(assert (=> b!5042855 (= e!3149130 e!3149127)))

(declare-fun c!864219 () Bool)

(assert (=> b!5042855 (= c!864219 (>= (- (- (size!38912 lt!2084545) i!618) 1) (size!38912 (t!370997 (drop!2636 lt!2084545 i!618)))))))

(declare-fun b!5042856 () Bool)

(assert (=> b!5042856 (= e!3149127 (- (- (size!38912 lt!2084545) i!618) 1))))

(declare-fun b!5042857 () Bool)

(assert (=> b!5042857 (= e!3149130 0)))

(assert (= (and d!1622719 c!864220) b!5042852))

(assert (= (and d!1622719 (not c!864220)) b!5042851))

(assert (= (and d!1622719 res!2148305) b!5042853))

(assert (= (and b!5042853 c!864221) b!5042857))

(assert (= (and b!5042853 (not c!864221)) b!5042855))

(assert (= (and b!5042855 c!864219) b!5042854))

(assert (= (and b!5042855 (not c!864219)) b!5042856))

(assert (=> b!5042855 m!6077106))

(declare-fun m!6077376 () Bool)

(assert (=> d!1622719 m!6077376))

(assert (=> d!1622719 m!6077116))

(declare-fun m!6077378 () Bool)

(assert (=> b!5042851 m!6077378))

(assert (=> b!5042854 m!6077106))

(declare-fun m!6077380 () Bool)

(assert (=> b!5042853 m!6077380))

(assert (=> b!5042368 d!1622719))

(declare-fun d!1622721 () Bool)

(declare-fun lt!2084680 () Int)

(assert (=> d!1622721 (>= lt!2084680 0)))

(declare-fun e!3149131 () Int)

(assert (=> d!1622721 (= lt!2084680 e!3149131)))

(declare-fun c!864222 () Bool)

(assert (=> d!1622721 (= c!864222 ((_ is Nil!58306) (t!370997 (t!370997 lt!2084545))))))

(assert (=> d!1622721 (= (size!38912 (t!370997 (t!370997 lt!2084545))) lt!2084680)))

(declare-fun b!5042858 () Bool)

(assert (=> b!5042858 (= e!3149131 0)))

(declare-fun b!5042859 () Bool)

(assert (=> b!5042859 (= e!3149131 (+ 1 (size!38912 (t!370997 (t!370997 (t!370997 lt!2084545))))))))

(assert (= (and d!1622721 c!864222) b!5042858))

(assert (= (and d!1622721 (not c!864222)) b!5042859))

(declare-fun m!6077382 () Bool)

(assert (=> b!5042859 m!6077382))

(assert (=> b!5042536 d!1622721))

(declare-fun d!1622723 () Bool)

(assert (=> d!1622723 (= (max!0 (height!2096 (left!42706 (left!42706 t!4198))) (height!2096 (right!43036 (left!42706 t!4198)))) (ite (< (height!2096 (left!42706 (left!42706 t!4198))) (height!2096 (right!43036 (left!42706 t!4198)))) (height!2096 (right!43036 (left!42706 t!4198))) (height!2096 (left!42706 (left!42706 t!4198)))))))

(assert (=> b!5042389 d!1622723))

(assert (=> b!5042389 d!1622655))

(assert (=> b!5042389 d!1622657))

(declare-fun d!1622725 () Bool)

(declare-fun c!864223 () Bool)

(assert (=> d!1622725 (= c!864223 ((_ is Node!15518) (left!42706 (right!43036 (right!43036 t!4198)))))))

(declare-fun e!3149132 () Bool)

(assert (=> d!1622725 (= (inv!77183 (left!42706 (right!43036 (right!43036 t!4198)))) e!3149132)))

(declare-fun b!5042860 () Bool)

(assert (=> b!5042860 (= e!3149132 (inv!77187 (left!42706 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042861 () Bool)

(declare-fun e!3149133 () Bool)

(assert (=> b!5042861 (= e!3149132 e!3149133)))

(declare-fun res!2148306 () Bool)

(assert (=> b!5042861 (= res!2148306 (not ((_ is Leaf!25741) (left!42706 (right!43036 (right!43036 t!4198))))))))

(assert (=> b!5042861 (=> res!2148306 e!3149133)))

(declare-fun b!5042862 () Bool)

(assert (=> b!5042862 (= e!3149133 (inv!77188 (left!42706 (right!43036 (right!43036 t!4198)))))))

(assert (= (and d!1622725 c!864223) b!5042860))

(assert (= (and d!1622725 (not c!864223)) b!5042861))

(assert (= (and b!5042861 (not res!2148306)) b!5042862))

(declare-fun m!6077384 () Bool)

(assert (=> b!5042860 m!6077384))

(declare-fun m!6077386 () Bool)

(assert (=> b!5042862 m!6077386))

(assert (=> b!5042608 d!1622725))

(declare-fun d!1622727 () Bool)

(declare-fun c!864224 () Bool)

(assert (=> d!1622727 (= c!864224 ((_ is Node!15518) (right!43036 (right!43036 (right!43036 t!4198)))))))

(declare-fun e!3149134 () Bool)

(assert (=> d!1622727 (= (inv!77183 (right!43036 (right!43036 (right!43036 t!4198)))) e!3149134)))

(declare-fun b!5042863 () Bool)

(assert (=> b!5042863 (= e!3149134 (inv!77187 (right!43036 (right!43036 (right!43036 t!4198)))))))

(declare-fun b!5042864 () Bool)

(declare-fun e!3149135 () Bool)

(assert (=> b!5042864 (= e!3149134 e!3149135)))

(declare-fun res!2148307 () Bool)

(assert (=> b!5042864 (= res!2148307 (not ((_ is Leaf!25741) (right!43036 (right!43036 (right!43036 t!4198))))))))

(assert (=> b!5042864 (=> res!2148307 e!3149135)))

(declare-fun b!5042865 () Bool)

(assert (=> b!5042865 (= e!3149135 (inv!77188 (right!43036 (right!43036 (right!43036 t!4198)))))))

(assert (= (and d!1622727 c!864224) b!5042863))

(assert (= (and d!1622727 (not c!864224)) b!5042864))

(assert (= (and b!5042864 (not res!2148307)) b!5042865))

(declare-fun m!6077388 () Bool)

(assert (=> b!5042863 m!6077388))

(declare-fun m!6077390 () Bool)

(assert (=> b!5042865 m!6077390))

(assert (=> b!5042608 d!1622727))

(declare-fun d!1622729 () Bool)

(declare-fun c!864225 () Bool)

(assert (=> d!1622729 (= c!864225 ((_ is Nil!58306) (t!370997 lt!2084587)))))

(declare-fun e!3149136 () (InoxSet T!104222))

(assert (=> d!1622729 (= (content!10359 (t!370997 lt!2084587)) e!3149136)))

(declare-fun b!5042866 () Bool)

(assert (=> b!5042866 (= e!3149136 ((as const (Array T!104222 Bool)) false))))

(declare-fun b!5042867 () Bool)

(assert (=> b!5042867 (= e!3149136 ((_ map or) (store ((as const (Array T!104222 Bool)) false) (h!64754 (t!370997 lt!2084587)) true) (content!10359 (t!370997 (t!370997 lt!2084587)))))))

(assert (= (and d!1622729 c!864225) b!5042866))

(assert (= (and d!1622729 (not c!864225)) b!5042867))

(declare-fun m!6077392 () Bool)

(assert (=> b!5042867 m!6077392))

(declare-fun m!6077394 () Bool)

(assert (=> b!5042867 m!6077394))

(assert (=> b!5042582 d!1622729))

(assert (=> b!5042573 d!1622373))

(declare-fun b!5042868 () Bool)

(declare-fun e!3149137 () List!58430)

(assert (=> b!5042868 (= e!3149137 (t!370997 lt!2084545))))

(declare-fun b!5042869 () Bool)

(declare-fun e!3149138 () Int)

(declare-fun e!3149141 () Int)

(assert (=> b!5042869 (= e!3149138 e!3149141)))

(declare-fun c!864227 () Bool)

(declare-fun call!351436 () Int)

(assert (=> b!5042869 (= c!864227 (>= (- 0 1) call!351436))))

(declare-fun b!5042870 () Bool)

(declare-fun e!3149140 () List!58430)

(assert (=> b!5042870 (= e!3149140 e!3149137)))

(declare-fun c!864228 () Bool)

(assert (=> b!5042870 (= c!864228 (<= (- 0 1) 0))))

(declare-fun bm!351431 () Bool)

(assert (=> bm!351431 (= call!351436 (size!38912 (t!370997 lt!2084545)))))

(declare-fun b!5042871 () Bool)

(assert (=> b!5042871 (= e!3149140 Nil!58306)))

(declare-fun b!5042872 () Bool)

(assert (=> b!5042872 (= e!3149137 (drop!2636 (t!370997 (t!370997 lt!2084545)) (- (- 0 1) 1)))))

(declare-fun d!1622731 () Bool)

(declare-fun e!3149139 () Bool)

(assert (=> d!1622731 e!3149139))

(declare-fun res!2148308 () Bool)

(assert (=> d!1622731 (=> (not res!2148308) (not e!3149139))))

(declare-fun lt!2084681 () List!58430)

(assert (=> d!1622731 (= res!2148308 (= ((_ map implies) (content!10359 lt!2084681) (content!10359 (t!370997 lt!2084545))) ((as const (InoxSet T!104222)) true)))))

(assert (=> d!1622731 (= lt!2084681 e!3149140)))

(declare-fun c!864229 () Bool)

(assert (=> d!1622731 (= c!864229 ((_ is Nil!58306) (t!370997 lt!2084545)))))

(assert (=> d!1622731 (= (drop!2636 (t!370997 lt!2084545) (- 0 1)) lt!2084681)))

(declare-fun b!5042873 () Bool)

(assert (=> b!5042873 (= e!3149139 (= (size!38912 lt!2084681) e!3149138))))

(declare-fun c!864226 () Bool)

(assert (=> b!5042873 (= c!864226 (<= (- 0 1) 0))))

(declare-fun b!5042874 () Bool)

(assert (=> b!5042874 (= e!3149138 call!351436)))

(declare-fun b!5042875 () Bool)

(assert (=> b!5042875 (= e!3149141 0)))

(declare-fun b!5042876 () Bool)

(assert (=> b!5042876 (= e!3149141 (- call!351436 (- 0 1)))))

(assert (= (and d!1622731 c!864229) b!5042871))

(assert (= (and d!1622731 (not c!864229)) b!5042870))

(assert (= (and b!5042870 c!864228) b!5042868))

(assert (= (and b!5042870 (not c!864228)) b!5042872))

(assert (= (and d!1622731 res!2148308) b!5042873))

(assert (= (and b!5042873 c!864226) b!5042874))

(assert (= (and b!5042873 (not c!864226)) b!5042869))

(assert (= (and b!5042869 c!864227) b!5042875))

(assert (= (and b!5042869 (not c!864227)) b!5042876))

(assert (= (or b!5042874 b!5042869 b!5042876) bm!351431))

(assert (=> bm!351431 m!6076546))

(declare-fun m!6077396 () Bool)

(assert (=> b!5042872 m!6077396))

(declare-fun m!6077398 () Bool)

(assert (=> d!1622731 m!6077398))

(assert (=> d!1622731 m!6076710))

(declare-fun m!6077400 () Bool)

(assert (=> b!5042873 m!6077400))

(assert (=> b!5042351 d!1622731))

(declare-fun d!1622733 () Bool)

(declare-fun lt!2084682 () Int)

(assert (=> d!1622733 (>= lt!2084682 0)))

(declare-fun e!3149142 () Int)

(assert (=> d!1622733 (= lt!2084682 e!3149142)))

(declare-fun c!864230 () Bool)

(assert (=> d!1622733 (= c!864230 ((_ is Nil!58306) (innerList!15606 (xs!18844 (right!43036 t!4198)))))))

(assert (=> d!1622733 (= (size!38912 (innerList!15606 (xs!18844 (right!43036 t!4198)))) lt!2084682)))

(declare-fun b!5042877 () Bool)

(assert (=> b!5042877 (= e!3149142 0)))

(declare-fun b!5042878 () Bool)

(assert (=> b!5042878 (= e!3149142 (+ 1 (size!38912 (t!370997 (innerList!15606 (xs!18844 (right!43036 t!4198)))))))))

(assert (= (and d!1622733 c!864230) b!5042877))

(assert (= (and d!1622733 (not c!864230)) b!5042878))

(declare-fun m!6077402 () Bool)

(assert (=> b!5042878 m!6077402))

(assert (=> d!1622435 d!1622733))

(assert (=> bm!351425 d!1622333))

(assert (=> bm!351426 d!1622467))

(declare-fun b!5042879 () Bool)

(declare-fun e!3149143 () Bool)

(declare-fun tp!1411314 () Bool)

(assert (=> b!5042879 (= e!3149143 (and tp_is_empty!36799 tp!1411314))))

(assert (=> b!5042598 (= tp!1411284 e!3149143)))

(assert (= (and b!5042598 ((_ is Cons!58306) (innerList!15606 (xs!18844 (left!42706 (left!42706 t!4198)))))) b!5042879))

(declare-fun e!3149145 () Bool)

(declare-fun b!5042880 () Bool)

(declare-fun tp!1411316 () Bool)

(declare-fun tp!1411317 () Bool)

(assert (=> b!5042880 (= e!3149145 (and (inv!77183 (left!42706 (left!42706 (right!43036 (left!42706 t!4198))))) tp!1411317 (inv!77183 (right!43036 (left!42706 (right!43036 (left!42706 t!4198))))) tp!1411316))))

(declare-fun b!5042882 () Bool)

(declare-fun e!3149144 () Bool)

(declare-fun tp!1411315 () Bool)

(assert (=> b!5042882 (= e!3149144 tp!1411315)))

(declare-fun b!5042881 () Bool)

(assert (=> b!5042881 (= e!3149145 (and (inv!77184 (xs!18844 (left!42706 (right!43036 (left!42706 t!4198))))) e!3149144))))

(assert (=> b!5042601 (= tp!1411289 (and (inv!77183 (left!42706 (right!43036 (left!42706 t!4198)))) e!3149145))))

(assert (= (and b!5042601 ((_ is Node!15518) (left!42706 (right!43036 (left!42706 t!4198))))) b!5042880))

(assert (= b!5042881 b!5042882))

(assert (= (and b!5042601 ((_ is Leaf!25741) (left!42706 (right!43036 (left!42706 t!4198))))) b!5042881))

(declare-fun m!6077404 () Bool)

(assert (=> b!5042880 m!6077404))

(declare-fun m!6077406 () Bool)

(assert (=> b!5042880 m!6077406))

(declare-fun m!6077408 () Bool)

(assert (=> b!5042881 m!6077408))

(assert (=> b!5042601 m!6076966))

(declare-fun e!3149147 () Bool)

(declare-fun tp!1411320 () Bool)

(declare-fun tp!1411319 () Bool)

(declare-fun b!5042883 () Bool)

(assert (=> b!5042883 (= e!3149147 (and (inv!77183 (left!42706 (right!43036 (right!43036 (left!42706 t!4198))))) tp!1411320 (inv!77183 (right!43036 (right!43036 (right!43036 (left!42706 t!4198))))) tp!1411319))))

(declare-fun b!5042885 () Bool)

(declare-fun e!3149146 () Bool)

(declare-fun tp!1411318 () Bool)

(assert (=> b!5042885 (= e!3149146 tp!1411318)))

(declare-fun b!5042884 () Bool)

(assert (=> b!5042884 (= e!3149147 (and (inv!77184 (xs!18844 (right!43036 (right!43036 (left!42706 t!4198))))) e!3149146))))

(assert (=> b!5042601 (= tp!1411288 (and (inv!77183 (right!43036 (right!43036 (left!42706 t!4198)))) e!3149147))))

(assert (= (and b!5042601 ((_ is Node!15518) (right!43036 (right!43036 (left!42706 t!4198))))) b!5042883))

(assert (= b!5042884 b!5042885))

(assert (= (and b!5042601 ((_ is Leaf!25741) (right!43036 (right!43036 (left!42706 t!4198))))) b!5042884))

(declare-fun m!6077410 () Bool)

(assert (=> b!5042883 m!6077410))

(declare-fun m!6077412 () Bool)

(assert (=> b!5042883 m!6077412))

(declare-fun m!6077414 () Bool)

(assert (=> b!5042884 m!6077414))

(assert (=> b!5042601 m!6076968))

(declare-fun b!5042886 () Bool)

(declare-fun e!3149148 () Bool)

(declare-fun tp!1411321 () Bool)

(assert (=> b!5042886 (= e!3149148 (and tp_is_empty!36799 tp!1411321))))

(assert (=> b!5042607 (= tp!1411291 e!3149148)))

(assert (= (and b!5042607 ((_ is Cons!58306) (innerList!15606 (xs!18844 (left!42706 (right!43036 t!4198)))))) b!5042886))

(declare-fun b!5042887 () Bool)

(declare-fun e!3149149 () Bool)

(declare-fun tp!1411322 () Bool)

(assert (=> b!5042887 (= e!3149149 (and tp_is_empty!36799 tp!1411322))))

(assert (=> b!5042610 (= tp!1411294 e!3149149)))

(assert (= (and b!5042610 ((_ is Cons!58306) (innerList!15606 (xs!18844 (right!43036 (right!43036 t!4198)))))) b!5042887))

(declare-fun b!5042888 () Bool)

(declare-fun e!3149150 () Bool)

(declare-fun tp!1411323 () Bool)

(assert (=> b!5042888 (= e!3149150 (and tp_is_empty!36799 tp!1411323))))

(assert (=> b!5042617 (= tp!1411297 e!3149150)))

(assert (= (and b!5042617 ((_ is Cons!58306) (t!370997 (innerList!15606 (xs!18844 (left!42706 t!4198)))))) b!5042888))

(declare-fun tp!1411326 () Bool)

(declare-fun tp!1411325 () Bool)

(declare-fun e!3149152 () Bool)

(declare-fun b!5042889 () Bool)

(assert (=> b!5042889 (= e!3149152 (and (inv!77183 (left!42706 (left!42706 (left!42706 (right!43036 t!4198))))) tp!1411326 (inv!77183 (right!43036 (left!42706 (left!42706 (right!43036 t!4198))))) tp!1411325))))

(declare-fun b!5042891 () Bool)

(declare-fun e!3149151 () Bool)

(declare-fun tp!1411324 () Bool)

(assert (=> b!5042891 (= e!3149151 tp!1411324)))

(declare-fun b!5042890 () Bool)

(assert (=> b!5042890 (= e!3149152 (and (inv!77184 (xs!18844 (left!42706 (left!42706 (right!43036 t!4198))))) e!3149151))))

(assert (=> b!5042605 (= tp!1411293 (and (inv!77183 (left!42706 (left!42706 (right!43036 t!4198)))) e!3149152))))

(assert (= (and b!5042605 ((_ is Node!15518) (left!42706 (left!42706 (right!43036 t!4198))))) b!5042889))

(assert (= b!5042890 b!5042891))

(assert (= (and b!5042605 ((_ is Leaf!25741) (left!42706 (left!42706 (right!43036 t!4198))))) b!5042890))

(declare-fun m!6077416 () Bool)

(assert (=> b!5042889 m!6077416))

(declare-fun m!6077418 () Bool)

(assert (=> b!5042889 m!6077418))

(declare-fun m!6077420 () Bool)

(assert (=> b!5042890 m!6077420))

(assert (=> b!5042605 m!6076972))

(declare-fun tp!1411328 () Bool)

(declare-fun tp!1411329 () Bool)

(declare-fun e!3149154 () Bool)

(declare-fun b!5042892 () Bool)

(assert (=> b!5042892 (= e!3149154 (and (inv!77183 (left!42706 (right!43036 (left!42706 (right!43036 t!4198))))) tp!1411329 (inv!77183 (right!43036 (right!43036 (left!42706 (right!43036 t!4198))))) tp!1411328))))

(declare-fun b!5042894 () Bool)

(declare-fun e!3149153 () Bool)

(declare-fun tp!1411327 () Bool)

(assert (=> b!5042894 (= e!3149153 tp!1411327)))

(declare-fun b!5042893 () Bool)

(assert (=> b!5042893 (= e!3149154 (and (inv!77184 (xs!18844 (right!43036 (left!42706 (right!43036 t!4198))))) e!3149153))))

(assert (=> b!5042605 (= tp!1411292 (and (inv!77183 (right!43036 (left!42706 (right!43036 t!4198)))) e!3149154))))

(assert (= (and b!5042605 ((_ is Node!15518) (right!43036 (left!42706 (right!43036 t!4198))))) b!5042892))

(assert (= b!5042893 b!5042894))

(assert (= (and b!5042605 ((_ is Leaf!25741) (right!43036 (left!42706 (right!43036 t!4198))))) b!5042893))

(declare-fun m!6077422 () Bool)

(assert (=> b!5042892 m!6077422))

(declare-fun m!6077424 () Bool)

(assert (=> b!5042892 m!6077424))

(declare-fun m!6077426 () Bool)

(assert (=> b!5042893 m!6077426))

(assert (=> b!5042605 m!6076974))

(declare-fun b!5042895 () Bool)

(declare-fun e!3149155 () Bool)

(declare-fun tp!1411330 () Bool)

(assert (=> b!5042895 (= e!3149155 (and tp_is_empty!36799 tp!1411330))))

(assert (=> b!5042421 (= tp!1411280 e!3149155)))

(assert (= (and b!5042421 ((_ is Cons!58306) (innerList!15606 _$4!1205))) b!5042895))

(declare-fun tp!1411333 () Bool)

(declare-fun tp!1411332 () Bool)

(declare-fun e!3149157 () Bool)

(declare-fun b!5042896 () Bool)

(assert (=> b!5042896 (= e!3149157 (and (inv!77183 (left!42706 (left!42706 (left!42706 (left!42706 t!4198))))) tp!1411333 (inv!77183 (right!43036 (left!42706 (left!42706 (left!42706 t!4198))))) tp!1411332))))

(declare-fun b!5042898 () Bool)

(declare-fun e!3149156 () Bool)

(declare-fun tp!1411331 () Bool)

(assert (=> b!5042898 (= e!3149156 tp!1411331)))

(declare-fun b!5042897 () Bool)

(assert (=> b!5042897 (= e!3149157 (and (inv!77184 (xs!18844 (left!42706 (left!42706 (left!42706 t!4198))))) e!3149156))))

(assert (=> b!5042596 (= tp!1411286 (and (inv!77183 (left!42706 (left!42706 (left!42706 t!4198)))) e!3149157))))

(assert (= (and b!5042596 ((_ is Node!15518) (left!42706 (left!42706 (left!42706 t!4198))))) b!5042896))

(assert (= b!5042897 b!5042898))

(assert (= (and b!5042596 ((_ is Leaf!25741) (left!42706 (left!42706 (left!42706 t!4198))))) b!5042897))

(declare-fun m!6077428 () Bool)

(assert (=> b!5042896 m!6077428))

(declare-fun m!6077430 () Bool)

(assert (=> b!5042896 m!6077430))

(declare-fun m!6077432 () Bool)

(assert (=> b!5042897 m!6077432))

(assert (=> b!5042596 m!6076960))

(declare-fun tp!1411335 () Bool)

(declare-fun b!5042899 () Bool)

(declare-fun e!3149159 () Bool)

(declare-fun tp!1411336 () Bool)

(assert (=> b!5042899 (= e!3149159 (and (inv!77183 (left!42706 (right!43036 (left!42706 (left!42706 t!4198))))) tp!1411336 (inv!77183 (right!43036 (right!43036 (left!42706 (left!42706 t!4198))))) tp!1411335))))

(declare-fun b!5042901 () Bool)

(declare-fun e!3149158 () Bool)

(declare-fun tp!1411334 () Bool)

(assert (=> b!5042901 (= e!3149158 tp!1411334)))

(declare-fun b!5042900 () Bool)

(assert (=> b!5042900 (= e!3149159 (and (inv!77184 (xs!18844 (right!43036 (left!42706 (left!42706 t!4198))))) e!3149158))))

(assert (=> b!5042596 (= tp!1411285 (and (inv!77183 (right!43036 (left!42706 (left!42706 t!4198)))) e!3149159))))

(assert (= (and b!5042596 ((_ is Node!15518) (right!43036 (left!42706 (left!42706 t!4198))))) b!5042899))

(assert (= b!5042900 b!5042901))

(assert (= (and b!5042596 ((_ is Leaf!25741) (right!43036 (left!42706 (left!42706 t!4198))))) b!5042900))

(declare-fun m!6077434 () Bool)

(assert (=> b!5042899 m!6077434))

(declare-fun m!6077436 () Bool)

(assert (=> b!5042899 m!6077436))

(declare-fun m!6077438 () Bool)

(assert (=> b!5042900 m!6077438))

(assert (=> b!5042596 m!6076962))

(declare-fun tp!1411338 () Bool)

(declare-fun b!5042902 () Bool)

(declare-fun e!3149161 () Bool)

(declare-fun tp!1411339 () Bool)

(assert (=> b!5042902 (= e!3149161 (and (inv!77183 (left!42706 (left!42706 (right!43036 (right!43036 t!4198))))) tp!1411339 (inv!77183 (right!43036 (left!42706 (right!43036 (right!43036 t!4198))))) tp!1411338))))

(declare-fun b!5042904 () Bool)

(declare-fun e!3149160 () Bool)

(declare-fun tp!1411337 () Bool)

(assert (=> b!5042904 (= e!3149160 tp!1411337)))

(declare-fun b!5042903 () Bool)

(assert (=> b!5042903 (= e!3149161 (and (inv!77184 (xs!18844 (left!42706 (right!43036 (right!43036 t!4198))))) e!3149160))))

(assert (=> b!5042608 (= tp!1411296 (and (inv!77183 (left!42706 (right!43036 (right!43036 t!4198)))) e!3149161))))

(assert (= (and b!5042608 ((_ is Node!15518) (left!42706 (right!43036 (right!43036 t!4198))))) b!5042902))

(assert (= b!5042903 b!5042904))

(assert (= (and b!5042608 ((_ is Leaf!25741) (left!42706 (right!43036 (right!43036 t!4198))))) b!5042903))

(declare-fun m!6077440 () Bool)

(assert (=> b!5042902 m!6077440))

(declare-fun m!6077442 () Bool)

(assert (=> b!5042902 m!6077442))

(declare-fun m!6077444 () Bool)

(assert (=> b!5042903 m!6077444))

(assert (=> b!5042608 m!6076978))

(declare-fun tp!1411341 () Bool)

(declare-fun e!3149163 () Bool)

(declare-fun b!5042905 () Bool)

(declare-fun tp!1411342 () Bool)

(assert (=> b!5042905 (= e!3149163 (and (inv!77183 (left!42706 (right!43036 (right!43036 (right!43036 t!4198))))) tp!1411342 (inv!77183 (right!43036 (right!43036 (right!43036 (right!43036 t!4198))))) tp!1411341))))

(declare-fun b!5042907 () Bool)

(declare-fun e!3149162 () Bool)

(declare-fun tp!1411340 () Bool)

(assert (=> b!5042907 (= e!3149162 tp!1411340)))

(declare-fun b!5042906 () Bool)

(assert (=> b!5042906 (= e!3149163 (and (inv!77184 (xs!18844 (right!43036 (right!43036 (right!43036 t!4198))))) e!3149162))))

(assert (=> b!5042608 (= tp!1411295 (and (inv!77183 (right!43036 (right!43036 (right!43036 t!4198)))) e!3149163))))

(assert (= (and b!5042608 ((_ is Node!15518) (right!43036 (right!43036 (right!43036 t!4198))))) b!5042905))

(assert (= b!5042906 b!5042907))

(assert (= (and b!5042608 ((_ is Leaf!25741) (right!43036 (right!43036 (right!43036 t!4198))))) b!5042906))

(declare-fun m!6077446 () Bool)

(assert (=> b!5042905 m!6077446))

(declare-fun m!6077448 () Bool)

(assert (=> b!5042905 m!6077448))

(declare-fun m!6077450 () Bool)

(assert (=> b!5042906 m!6077450))

(assert (=> b!5042608 m!6076980))

(declare-fun b!5042908 () Bool)

(declare-fun e!3149164 () Bool)

(declare-fun tp!1411343 () Bool)

(assert (=> b!5042908 (= e!3149164 (and tp_is_empty!36799 tp!1411343))))

(assert (=> b!5042618 (= tp!1411298 e!3149164)))

(assert (= (and b!5042618 ((_ is Cons!58306) (t!370997 (t!370997 (innerList!15606 (xs!18844 t!4198)))))) b!5042908))

(declare-fun b!5042909 () Bool)

(declare-fun e!3149165 () Bool)

(declare-fun tp!1411344 () Bool)

(assert (=> b!5042909 (= e!3149165 (and tp_is_empty!36799 tp!1411344))))

(assert (=> b!5042603 (= tp!1411287 e!3149165)))

(assert (= (and b!5042603 ((_ is Cons!58306) (innerList!15606 (xs!18844 (right!43036 (left!42706 t!4198)))))) b!5042909))

(declare-fun b!5042910 () Bool)

(declare-fun e!3149166 () Bool)

(declare-fun tp!1411345 () Bool)

(assert (=> b!5042910 (= e!3149166 (and tp_is_empty!36799 tp!1411345))))

(assert (=> b!5042604 (= tp!1411290 e!3149166)))

(assert (= (and b!5042604 ((_ is Cons!58306) (t!370997 (innerList!15606 (xs!18844 (right!43036 t!4198)))))) b!5042910))

(check-sat (not b!5042878) (not d!1622649) (not b!5042782) (not b!5042824) (not b!5042701) (not d!1622653) (not d!1622619) (not d!1622719) (not b!5042663) (not b!5042770) (not b!5042838) (not d!1622661) (not b!5042706) (not b!5042670) (not b!5042905) (not b!5042772) (not b!5042815) (not b!5042832) (not b!5042904) (not b!5042679) (not d!1622637) (not b!5042763) (not b!5042778) (not b!5042734) (not b!5042728) (not b!5042747) (not b!5042863) (not b!5042879) (not b!5042846) (not b!5042906) (not b!5042888) (not b!5042690) (not d!1622613) (not b!5042796) (not b!5042742) (not b!5042802) (not b!5042688) (not b!5042740) (not b!5042883) (not b!5042809) (not d!1622579) (not b!5042682) (not b!5042900) (not b!5042676) (not b!5042872) (not b!5042886) (not b!5042901) (not d!1622581) (not b!5042907) (not b!5042841) (not b!5042732) (not b!5042804) (not d!1622699) (not bm!351431) (not d!1622639) (not b!5042798) (not b!5042859) (not b!5042910) (not b!5042818) (not bm!351430) (not b!5042769) (not b!5042899) (not b!5042754) (not b!5042898) (not b!5042751) (not b!5042696) (not b!5042833) (not b!5042726) (not d!1622681) (not b!5042727) (not b!5042787) (not b!5042894) (not b!5042851) tp_is_empty!36799 (not b!5042880) (not b!5042605) (not b!5042828) (not b!5042830) (not b!5042698) (not b!5042768) (not b!5042680) (not d!1622587) (not d!1622713) (not b!5042668) (not b!5042738) (not b!5042674) (not d!1622577) (not b!5042799) (not b!5042713) (not b!5042725) (not b!5042669) (not d!1622667) (not b!5042773) (not b!5042892) (not b!5042673) (not b!5042790) (not d!1622535) (not b!5042666) (not b!5042836) (not b!5042730) (not b!5042694) (not b!5042752) (not b!5042684) (not b!5042744) (not b!5042867) (not d!1622683) (not b!5042775) (not d!1622547) (not b!5042806) (not b!5042767) (not b!5042820) (not b!5042692) (not b!5042788) (not b!5042780) (not b!5042686) (not b!5042792) (not b!5042895) (not b!5042608) (not d!1622595) (not b!5042766) (not d!1622709) (not bm!351429) (not b!5042909) (not b!5042712) (not b!5042711) (not d!1622705) (not b!5042884) (not b!5042893) (not b!5042729) (not b!5042601) (not b!5042755) (not b!5042707) (not b!5042736) (not b!5042786) (not d!1622591) (not b!5042903) (not b!5042826) (not b!5042720) (not b!5042789) (not b!5042890) (not b!5042885) (not d!1622711) (not b!5042881) (not b!5042777) (not d!1622693) (not b!5042873) (not b!5042902) (not b!5042882) (not d!1622631) (not b!5042854) (not b!5042812) (not b!5042758) (not b!5042862) (not d!1622679) (not d!1622659) (not b!5042822) (not d!1622647) (not b!5042887) (not b!5042891) (not b!5042811) (not d!1622641) (not d!1622589) (not b!5042759) (not b!5042757) (not b!5042793) (not b!5042860) (not b!5042677) (not b!5042781) (not b!5042853) (not d!1622543) (not b!5042672) (not d!1622625) (not d!1622545) (not b!5042889) (not b!5042746) (not b!5042671) (not b!5042765) (not b!5042764) (not b!5042705) (not b!5042908) (not d!1622731) (not b!5042709) (not b!5042847) (not b!5042699) (not b!5042865) (not b!5042791) (not b!5042807) (not b!5042896) (not b!5042855) (not d!1622575) (not d!1622717) (not b!5042596) (not b!5042721) (not b!5042897))
(check-sat)
