; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185622 () Bool)

(assert start!185622)

(assert (=> start!185622 true))

(declare-fun b!1859216 () Bool)

(declare-fun e!1187335 () Bool)

(declare-datatypes ((List!20698 0))(
  ( (Nil!20618) (Cons!20618 (h!26019 (_ BitVec 16)) (t!172573 List!20698)) )
))
(declare-datatypes ((IArray!13635 0))(
  ( (IArray!13636 (innerList!6875 List!20698)) )
))
(declare-datatypes ((Conc!6815 0))(
  ( (Node!6815 (left!16546 Conc!6815) (right!16876 Conc!6815) (csize!13860 Int) (cheight!7026 Int)) (Leaf!9991 (xs!9691 IArray!13635) (csize!13861 Int)) (Empty!6815) )
))
(declare-datatypes ((BalanceConc!13560 0))(
  ( (BalanceConc!13561 (c!302710 Conc!6815)) )
))
(declare-fun x!372508 () BalanceConc!13560)

(declare-fun tp!529963 () Bool)

(declare-fun inv!27061 (Conc!6815) Bool)

(assert (=> b!1859216 (= e!1187335 (and (inv!27061 (c!302710 x!372508)) tp!529963))))

(declare-datatypes ((WhitespaceValueInjection!116 0))(
  ( (WhitespaceValueInjection!117) )
))
(declare-fun thiss!3128 () WhitespaceValueInjection!116)

(declare-fun inst!1130 () Bool)

(declare-fun inv!27062 (BalanceConc!13560) Bool)

(declare-fun list!8356 (BalanceConc!13560) List!20698)

(declare-datatypes ((TokenValue!3799 0))(
  ( (FloatLiteralValue!7598 (text!27038 List!20698)) (TokenValueExt!3798 (__x!12988 Int)) (Broken!18995 (value!115637 List!20698)) (Object!3878) (End!3799) (Def!3799) (Underscore!3799) (Match!3799) (Else!3799) (Error!3799) (Case!3799) (If!3799) (Extends!3799) (Abstract!3799) (Class!3799) (Val!3799) (DelimiterValue!7598 (del!3859 List!20698)) (KeywordValue!3805 (value!115638 List!20698)) (CommentValue!7598 (value!115639 List!20698)) (WhitespaceValue!7598 (value!115640 List!20698)) (IndentationValue!3799 (value!115641 List!20698)) (String!23678) (Int32!3799) (Broken!18996 (value!115642 List!20698)) (Boolean!3800) (Unit!35227) (OperatorValue!3802 (op!3859 List!20698)) (IdentifierValue!7598 (value!115643 List!20698)) (IdentifierValue!7599 (value!115644 List!20698)) (WhitespaceValue!7599 (value!115645 List!20698)) (True!7598) (False!7598) (Broken!18997 (value!115646 List!20698)) (Broken!18998 (value!115647 List!20698)) (True!7599) (RightBrace!3799) (RightBracket!3799) (Colon!3799) (Null!3799) (Comma!3799) (LeftBracket!3799) (False!7599) (LeftBrace!3799) (ImaginaryLiteralValue!3799 (text!27039 List!20698)) (StringLiteralValue!11397 (value!115648 List!20698)) (EOFValue!3799 (value!115649 List!20698)) (IdentValue!3799 (value!115650 List!20698)) (DelimiterValue!7599 (value!115651 List!20698)) (DedentValue!3799 (value!115652 List!20698)) (NewLineValue!3799 (value!115653 List!20698)) (IntegerValue!11397 (value!115654 (_ BitVec 32)) (text!27040 List!20698)) (IntegerValue!11398 (value!115655 Int) (text!27041 List!20698)) (Times!3799) (Or!3799) (Equal!3799) (Minus!3799) (Broken!18999 (value!115656 List!20698)) (And!3799) (Div!3799) (LessEqual!3799) (Mod!3799) (Concat!8861) (Not!3799) (Plus!3799) (SpaceValue!3799 (value!115657 List!20698)) (IntegerValue!11399 (value!115658 Int) (text!27042 List!20698)) (StringLiteralValue!11398 (text!27043 List!20698)) (FloatLiteralValue!7599 (text!27044 List!20698)) (BytesLiteralValue!3799 (value!115659 List!20698)) (CommentValue!7599 (value!115660 List!20698)) (StringLiteralValue!11399 (value!115661 List!20698)) (ErrorTokenValue!3799 (msg!3860 List!20698)) )
))
(declare-fun toCharacters!2 (WhitespaceValueInjection!116 TokenValue!3799) BalanceConc!13560)

(declare-fun toValue!9 (WhitespaceValueInjection!116 BalanceConc!13560) TokenValue!3799)

(assert (=> start!185622 (= inst!1130 (=> (and (inv!27062 x!372508) e!1187335) (= (list!8356 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508))) (list!8356 x!372508))))))

(assert (= start!185622 b!1859216))

(declare-fun m!2282633 () Bool)

(assert (=> b!1859216 m!2282633))

(declare-fun m!2282635 () Bool)

(assert (=> start!185622 m!2282635))

(declare-fun m!2282637 () Bool)

(assert (=> start!185622 m!2282637))

(declare-fun m!2282639 () Bool)

(assert (=> start!185622 m!2282639))

(declare-fun m!2282641 () Bool)

(assert (=> start!185622 m!2282641))

(assert (=> start!185622 m!2282639))

(declare-fun m!2282643 () Bool)

(assert (=> start!185622 m!2282643))

(assert (=> start!185622 m!2282637))

(declare-fun bs!410784 () Bool)

(declare-fun neg-inst!1130 () Bool)

(declare-fun s!221542 () Bool)

(assert (= bs!410784 (and neg-inst!1130 s!221542)))

(assert (=> bs!410784 (=> true (= (list!8356 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508))) (list!8356 x!372508)))))

(assert (=> m!2282637 m!2282639))

(assert (=> m!2282637 m!2282643))

(assert (=> m!2282637 m!2282641))

(assert (=> m!2282637 s!221542))

(assert (=> m!2282641 s!221542))

(declare-fun bs!410785 () Bool)

(assert (= bs!410785 (and neg-inst!1130 start!185622)))

(assert (=> bs!410785 (= true inst!1130)))

(declare-fun lambda!73379 () Int)

(declare-fun Forall!965 (Int) Bool)

(assert (=> start!185622 (= (Forall!965 lambda!73379) inst!1130)))

(assert (=> start!185622 (not (Forall!965 lambda!73379))))

(assert (=> start!185622 true))

(assert (= neg-inst!1130 inst!1130))

(declare-fun m!2282645 () Bool)

(assert (=> start!185622 m!2282645))

(assert (=> start!185622 m!2282645))

(push 1)

(assert (not start!185622))

(assert (not b!1859216))

(assert (not bs!410784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567252 () Bool)

(declare-fun list!8358 (Conc!6815) List!20698)

(assert (=> d!567252 (= (list!8356 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508))) (list!8358 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)))))))

(declare-fun bs!410788 () Bool)

(assert (= bs!410788 d!567252))

(declare-fun m!2282661 () Bool)

(assert (=> bs!410788 m!2282661))

(assert (=> bs!410784 d!567252))

(declare-fun d!567254 () Bool)

(declare-fun c!302715 () Bool)

(assert (=> d!567254 (= c!302715 (is-WhitespaceValue!7598 (toValue!9 thiss!3128 x!372508)))))

(declare-fun e!1187341 () BalanceConc!13560)

(assert (=> d!567254 (= (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)) e!1187341)))

(declare-fun b!1859226 () Bool)

(declare-fun seqFromList!2618 (List!20698) BalanceConc!13560)

(assert (=> b!1859226 (= e!1187341 (seqFromList!2618 (value!115640 (toValue!9 thiss!3128 x!372508))))))

(declare-fun b!1859227 () Bool)

(assert (=> b!1859227 (= e!1187341 (BalanceConc!13561 Empty!6815))))

(assert (= (and d!567254 c!302715) b!1859226))

(assert (= (and d!567254 (not c!302715)) b!1859227))

(declare-fun m!2282663 () Bool)

(assert (=> b!1859226 m!2282663))

(assert (=> bs!410784 d!567254))

(declare-fun d!567256 () Bool)

(declare-fun efficientList!232 (BalanceConc!13560) List!20698)

(assert (=> d!567256 (= (toValue!9 thiss!3128 x!372508) (WhitespaceValue!7598 (efficientList!232 x!372508)))))

(declare-fun bs!410789 () Bool)

(assert (= bs!410789 d!567256))

(declare-fun m!2282665 () Bool)

(assert (=> bs!410789 m!2282665))

(assert (=> bs!410784 d!567256))

(declare-fun d!567260 () Bool)

(assert (=> d!567260 (= (list!8356 x!372508) (list!8358 (c!302710 x!372508)))))

(declare-fun bs!410790 () Bool)

(assert (= bs!410790 d!567260))

(declare-fun m!2282667 () Bool)

(assert (=> bs!410790 m!2282667))

(assert (=> bs!410784 d!567260))

(push 1)

(assert (not d!567252))

(assert (not b!1859226))

(assert (not d!567256))

(assert (not d!567260))

(assert (not start!185622))

(assert (not b!1859216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1859245 () Bool)

(declare-fun e!1187350 () List!20698)

(declare-fun ++!5562 (List!20698 List!20698) List!20698)

(assert (=> b!1859245 (= e!1187350 (++!5562 (list!8358 (left!16546 (c!302710 x!372508))) (list!8358 (right!16876 (c!302710 x!372508)))))))

(declare-fun b!1859243 () Bool)

(declare-fun e!1187349 () List!20698)

(assert (=> b!1859243 (= e!1187349 e!1187350)))

(declare-fun c!302725 () Bool)

(assert (=> b!1859243 (= c!302725 (is-Leaf!9991 (c!302710 x!372508)))))

(declare-fun d!567268 () Bool)

(declare-fun c!302724 () Bool)

(assert (=> d!567268 (= c!302724 (is-Empty!6815 (c!302710 x!372508)))))

(assert (=> d!567268 (= (list!8358 (c!302710 x!372508)) e!1187349)))

(declare-fun b!1859244 () Bool)

(declare-fun list!8360 (IArray!13635) List!20698)

(assert (=> b!1859244 (= e!1187350 (list!8360 (xs!9691 (c!302710 x!372508))))))

(declare-fun b!1859242 () Bool)

(assert (=> b!1859242 (= e!1187349 Nil!20618)))

(assert (= (and d!567268 c!302724) b!1859242))

(assert (= (and d!567268 (not c!302724)) b!1859243))

(assert (= (and b!1859243 c!302725) b!1859244))

(assert (= (and b!1859243 (not c!302725)) b!1859245))

(declare-fun m!2282677 () Bool)

(assert (=> b!1859245 m!2282677))

(declare-fun m!2282679 () Bool)

(assert (=> b!1859245 m!2282679))

(assert (=> b!1859245 m!2282677))

(assert (=> b!1859245 m!2282679))

(declare-fun m!2282681 () Bool)

(assert (=> b!1859245 m!2282681))

(declare-fun m!2282683 () Bool)

(assert (=> b!1859244 m!2282683))

(assert (=> d!567260 d!567268))

(declare-fun b!1859249 () Bool)

(declare-fun e!1187352 () List!20698)

(assert (=> b!1859249 (= e!1187352 (++!5562 (list!8358 (left!16546 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508))))) (list!8358 (right!16876 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)))))))))

(declare-fun b!1859247 () Bool)

(declare-fun e!1187351 () List!20698)

(assert (=> b!1859247 (= e!1187351 e!1187352)))

(declare-fun c!302727 () Bool)

(assert (=> b!1859247 (= c!302727 (is-Leaf!9991 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)))))))

(declare-fun d!567270 () Bool)

(declare-fun c!302726 () Bool)

(assert (=> d!567270 (= c!302726 (is-Empty!6815 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)))))))

(assert (=> d!567270 (= (list!8358 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508)))) e!1187351)))

(declare-fun b!1859248 () Bool)

(assert (=> b!1859248 (= e!1187352 (list!8360 (xs!9691 (c!302710 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372508))))))))

(declare-fun b!1859246 () Bool)

(assert (=> b!1859246 (= e!1187351 Nil!20618)))

(assert (= (and d!567270 c!302726) b!1859246))

(assert (= (and d!567270 (not c!302726)) b!1859247))

(assert (= (and b!1859247 c!302727) b!1859248))

(assert (= (and b!1859247 (not c!302727)) b!1859249))

(declare-fun m!2282685 () Bool)

(assert (=> b!1859249 m!2282685))

(declare-fun m!2282687 () Bool)

(assert (=> b!1859249 m!2282687))

(assert (=> b!1859249 m!2282685))

(assert (=> b!1859249 m!2282687))

(declare-fun m!2282689 () Bool)

(assert (=> b!1859249 m!2282689))

(declare-fun m!2282691 () Bool)

(assert (=> b!1859248 m!2282691))

(assert (=> d!567252 d!567270))

(declare-fun d!567272 () Bool)

(declare-fun lt!717503 () List!20698)

(assert (=> d!567272 (= lt!717503 (list!8356 x!372508))))

(declare-fun efficientList!234 (Conc!6815 List!20698) List!20698)

(declare-fun efficientList$default$2!79 (Conc!6815) List!20698)

(assert (=> d!567272 (= lt!717503 (efficientList!234 (c!302710 x!372508) (efficientList$default$2!79 (c!302710 x!372508))))))

(assert (=> d!567272 (= (efficientList!232 x!372508) lt!717503)))

(declare-fun bs!410794 () Bool)

(assert (= bs!410794 d!567272))

(assert (=> bs!410794 m!2282641))

(declare-fun m!2282693 () Bool)

(assert (=> bs!410794 m!2282693))

(assert (=> bs!410794 m!2282693))

(declare-fun m!2282695 () Bool)

(assert (=> bs!410794 m!2282695))

(assert (=> d!567256 d!567272))

(push 1)

(assert (not b!1859244))

(assert (not b!1859226))

(assert (not d!567272))

(assert (not b!1859245))

(assert (not b!1859249))

(assert (not start!185622))

(assert (not b!1859216))

(assert (not b!1859248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!185622 d!567256))

(assert (=> start!185622 d!567252))

(assert (=> start!185622 d!567260))

(declare-fun d!567280 () Bool)

(declare-fun choose!11695 (Int) Bool)

(assert (=> d!567280 (= (Forall!965 lambda!73379) (choose!11695 lambda!73379))))

(declare-fun bs!410795 () Bool)

(assert (= bs!410795 d!567280))

(declare-fun m!2282713 () Bool)

(assert (=> bs!410795 m!2282713))

(assert (=> start!185622 d!567280))

(assert (=> start!185622 d!567254))

(declare-fun d!567282 () Bool)

(declare-fun isBalanced!2123 (Conc!6815) Bool)

(assert (=> d!567282 (= (inv!27062 x!372508) (isBalanced!2123 (c!302710 x!372508)))))

(declare-fun bs!410797 () Bool)

(assert (= bs!410797 d!567282))

(declare-fun m!2282719 () Bool)

(assert (=> bs!410797 m!2282719))

(assert (=> start!185622 d!567282))

(declare-fun d!567284 () Bool)

(declare-fun c!302738 () Bool)

(assert (=> d!567284 (= c!302738 (is-Node!6815 (c!302710 x!372508)))))

(declare-fun e!1187365 () Bool)

(assert (=> d!567284 (= (inv!27061 (c!302710 x!372508)) e!1187365)))

(declare-fun b!1859272 () Bool)

(declare-fun inv!27065 (Conc!6815) Bool)

(assert (=> b!1859272 (= e!1187365 (inv!27065 (c!302710 x!372508)))))

(declare-fun b!1859273 () Bool)

(declare-fun e!1187366 () Bool)

(assert (=> b!1859273 (= e!1187365 e!1187366)))

(declare-fun res!832712 () Bool)

(assert (=> b!1859273 (= res!832712 (not (is-Leaf!9991 (c!302710 x!372508))))))

(assert (=> b!1859273 (=> res!832712 e!1187366)))

(declare-fun b!1859274 () Bool)

(declare-fun inv!27066 (Conc!6815) Bool)

(assert (=> b!1859274 (= e!1187366 (inv!27066 (c!302710 x!372508)))))

(assert (= (and d!567284 c!302738) b!1859272))

(assert (= (and d!567284 (not c!302738)) b!1859273))

(assert (= (and b!1859273 (not res!832712)) b!1859274))

(declare-fun m!2282721 () Bool)

(assert (=> b!1859272 m!2282721))

(declare-fun m!2282723 () Bool)

(assert (=> b!1859274 m!2282723))

(assert (=> b!1859216 d!567284))

(declare-fun d!567286 () Bool)

(declare-fun fromListB!1201 (List!20698) BalanceConc!13560)

(assert (=> d!567286 (= (seqFromList!2618 (value!115640 (toValue!9 thiss!3128 x!372508))) (fromListB!1201 (value!115640 (toValue!9 thiss!3128 x!372508))))))

(declare-fun bs!410798 () Bool)

(assert (= bs!410798 d!567286))

(declare-fun m!2282725 () Bool)

(assert (=> bs!410798 m!2282725))

(assert (=> b!1859226 d!567286))

(assert (=> d!567272 d!567260))

(declare-fun b!1859287 () Bool)

(declare-datatypes ((Unit!35229 0))(
  ( (Unit!35230) )
))
(declare-fun lt!717517 () Unit!35229)

(declare-fun lt!717521 () Unit!35229)

(assert (=> b!1859287 (= lt!717517 lt!717521)))

(declare-fun lt!717518 () List!20698)

(declare-fun call!115657 () List!20698)

(declare-fun lt!717520 () List!20698)

(assert (=> b!1859287 (= (++!5562 (++!5562 lt!717518 lt!717520) (efficientList$default$2!79 (c!302710 x!372508))) (++!5562 lt!717518 call!115657))))

(declare-fun lemmaConcatAssociativity!1095 (List!20698 List!20698 List!20698) Unit!35229)

(assert (=> b!1859287 (= lt!717521 (lemmaConcatAssociativity!1095 lt!717518 lt!717520 (efficientList$default$2!79 (c!302710 x!372508))))))

(assert (=> b!1859287 (= lt!717520 (list!8358 (right!16876 (c!302710 x!372508))))))

(assert (=> b!1859287 (= lt!717518 (list!8358 (left!16546 (c!302710 x!372508))))))

(declare-fun e!1187375 () List!20698)

(assert (=> b!1859287 (= e!1187375 (efficientList!234 (left!16546 (c!302710 x!372508)) (efficientList!234 (right!16876 (c!302710 x!372508)) (efficientList$default$2!79 (c!302710 x!372508)))))))

(declare-fun b!1859288 () Bool)

(declare-fun e!1187374 () List!20698)

(assert (=> b!1859288 (= e!1187374 e!1187375)))

(declare-fun c!302747 () Bool)

(assert (=> b!1859288 (= c!302747 (is-Leaf!9991 (c!302710 x!372508)))))

(declare-fun b!1859289 () Bool)

(assert (=> b!1859289 (= e!1187374 (efficientList$default$2!79 (c!302710 x!372508)))))

(declare-fun b!1859290 () Bool)

(assert (=> b!1859290 (= e!1187375 call!115657)))

(declare-fun d!567288 () Bool)

(declare-fun lt!717519 () List!20698)

(assert (=> d!567288 (= lt!717519 (++!5562 (list!8358 (c!302710 x!372508)) (efficientList$default$2!79 (c!302710 x!372508))))))

(assert (=> d!567288 (= lt!717519 e!1187374)))

(declare-fun c!302745 () Bool)

(assert (=> d!567288 (= c!302745 (is-Empty!6815 (c!302710 x!372508)))))

(assert (=> d!567288 (= (efficientList!234 (c!302710 x!372508) (efficientList$default$2!79 (c!302710 x!372508))) lt!717519)))

(declare-fun b!1859291 () Bool)

(declare-fun e!1187373 () List!20698)

(declare-fun efficientList!236 (IArray!13635) List!20698)

(assert (=> b!1859291 (= e!1187373 (efficientList!236 (xs!9691 (c!302710 x!372508))))))

(declare-fun b!1859292 () Bool)

(assert (=> b!1859292 (= e!1187373 lt!717520)))

(declare-fun bm!115652 () Bool)

(declare-fun c!302746 () Bool)

(assert (=> bm!115652 (= c!302746 c!302747)))

(assert (=> bm!115652 (= call!115657 (++!5562 e!1187373 (efficientList$default$2!79 (c!302710 x!372508))))))

(assert (= (and d!567288 c!302745) b!1859289))

(assert (= (and d!567288 (not c!302745)) b!1859288))

(assert (= (and b!1859288 c!302747) b!1859290))

(assert (= (and b!1859288 (not c!302747)) b!1859287))

(assert (= (or b!1859290 b!1859287) bm!115652))

(assert (= (and bm!115652 c!302746) b!1859291))

(assert (= (and bm!115652 (not c!302746)) b!1859292))

(declare-fun m!2282727 () Bool)

(assert (=> b!1859287 m!2282727))

(assert (=> b!1859287 m!2282693))

(declare-fun m!2282729 () Bool)

(assert (=> b!1859287 m!2282729))

(assert (=> b!1859287 m!2282677))

(assert (=> b!1859287 m!2282679))

(assert (=> b!1859287 m!2282693))

(declare-fun m!2282731 () Bool)

(assert (=> b!1859287 m!2282731))

(declare-fun m!2282733 () Bool)

(assert (=> b!1859287 m!2282733))

(declare-fun m!2282735 () Bool)

(assert (=> b!1859287 m!2282735))

(declare-fun m!2282737 () Bool)

(assert (=> b!1859287 m!2282737))

(assert (=> b!1859287 m!2282727))

(assert (=> b!1859287 m!2282693))

(assert (=> b!1859287 m!2282735))

(assert (=> d!567288 m!2282667))

(assert (=> d!567288 m!2282667))

(assert (=> d!567288 m!2282693))

(declare-fun m!2282739 () Bool)

(assert (=> d!567288 m!2282739))

(declare-fun m!2282741 () Bool)

(assert (=> b!1859291 m!2282741))

(assert (=> bm!115652 m!2282693))

(declare-fun m!2282743 () Bool)

(assert (=> bm!115652 m!2282743))

(assert (=> d!567272 d!567288))

(declare-fun d!567290 () Bool)

(assert (=> d!567290 (= (efficientList$default$2!79 (c!302710 x!372508)) Nil!20618)))

(assert (=> d!567272 d!567290))

(declare-fun tp!529972 () Bool)

(declare-fun e!1187380 () Bool)

(declare-fun tp!529971 () Bool)

(declare-fun b!1859299 () Bool)

(assert (=> b!1859299 (= e!1187380 (and (inv!27061 (left!16546 (c!302710 x!372508))) tp!529971 (inv!27061 (right!16876 (c!302710 x!372508))) tp!529972))))

(declare-fun b!1859300 () Bool)

(declare-fun inv!27067 (IArray!13635) Bool)

(assert (=> b!1859300 (= e!1187380 (inv!27067 (xs!9691 (c!302710 x!372508))))))

(assert (=> b!1859216 (= tp!529963 (and (inv!27061 (c!302710 x!372508)) e!1187380))))

(assert (= (and b!1859216 (is-Node!6815 (c!302710 x!372508))) b!1859299))

(assert (= (and b!1859216 (is-Leaf!9991 (c!302710 x!372508))) b!1859300))

(declare-fun m!2282745 () Bool)

(assert (=> b!1859299 m!2282745))

(declare-fun m!2282747 () Bool)

(assert (=> b!1859299 m!2282747))

(declare-fun m!2282749 () Bool)

(assert (=> b!1859300 m!2282749))

(assert (=> b!1859216 m!2282633))

(push 1)

(assert (not b!1859299))

(assert (not b!1859272))

(assert (not b!1859274))

(assert (not b!1859245))

(assert (not b!1859300))

(assert (not b!1859249))

(assert (not b!1859244))

(assert (not d!567282))

(assert (not d!567286))

(assert (not b!1859287))

(assert (not d!567288))

(assert (not b!1859216))

(assert (not b!1859248))

(assert (not d!567280))

(assert (not b!1859291))

(assert (not bm!115652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1859331 () Bool)

(declare-fun e!1187399 () List!20698)

(assert (=> b!1859331 (= e!1187399 (Cons!20618 (h!26019 (list!8358 (c!302710 x!372508))) (++!5562 (t!172573 (list!8358 (c!302710 x!372508))) (efficientList$default$2!79 (c!302710 x!372508)))))))

(declare-fun b!1859330 () Bool)

(assert (=> b!1859330 (= e!1187399 (efficientList$default$2!79 (c!302710 x!372508)))))

(declare-fun b!1859333 () Bool)

(declare-fun e!1187398 () Bool)

(declare-fun lt!717534 () List!20698)

(assert (=> b!1859333 (= e!1187398 (or (not (= (efficientList$default$2!79 (c!302710 x!372508)) Nil!20618)) (= lt!717534 (list!8358 (c!302710 x!372508)))))))

(declare-fun b!1859332 () Bool)

(declare-fun res!832721 () Bool)

(assert (=> b!1859332 (=> (not res!832721) (not e!1187398))))

(declare-fun size!16321 (List!20698) Int)

(assert (=> b!1859332 (= res!832721 (= (size!16321 lt!717534) (+ (size!16321 (list!8358 (c!302710 x!372508))) (size!16321 (efficientList$default$2!79 (c!302710 x!372508))))))))

(declare-fun d!567300 () Bool)

(assert (=> d!567300 e!1187398))

(declare-fun res!832720 () Bool)

(assert (=> d!567300 (=> (not res!832720) (not e!1187398))))

(declare-fun content!3058 (List!20698) (Set (_ BitVec 16)))

(assert (=> d!567300 (= res!832720 (= (content!3058 lt!717534) (set.union (content!3058 (list!8358 (c!302710 x!372508))) (content!3058 (efficientList$default$2!79 (c!302710 x!372508))))))))

(assert (=> d!567300 (= lt!717534 e!1187399)))

(declare-fun c!302759 () Bool)

(assert (=> d!567300 (= c!302759 (is-Nil!20618 (list!8358 (c!302710 x!372508))))))

(assert (=> d!567300 (= (++!5562 (list!8358 (c!302710 x!372508)) (efficientList$default$2!79 (c!302710 x!372508))) lt!717534)))

(assert (= (and d!567300 c!302759) b!1859330))

(assert (= (and d!567300 (not c!302759)) b!1859331))

(assert (= (and d!567300 res!832720) b!1859332))

(assert (= (and b!1859332 res!832721) b!1859333))

(assert (=> b!1859331 m!2282693))

(declare-fun m!2282759 () Bool)

(assert (=> b!1859331 m!2282759))

(declare-fun m!2282761 () Bool)

(assert (=> b!1859332 m!2282761))

(assert (=> b!1859332 m!2282667))

(declare-fun m!2282763 () Bool)

(assert (=> b!1859332 m!2282763))

(assert (=> b!1859332 m!2282693))

(declare-fun m!2282765 () Bool)

(assert (=> b!1859332 m!2282765))

(declare-fun m!2282767 () Bool)

(assert (=> d!567300 m!2282767))

(assert (=> d!567300 m!2282667))

(declare-fun m!2282769 () Bool)

(assert (=> d!567300 m!2282769))

(assert (=> d!567300 m!2282693))

(declare-fun m!2282771 () Bool)

(assert (=> d!567300 m!2282771))

(assert (=> d!567288 d!567300))

(assert (=> d!567288 d!567268))

(declare-fun d!567302 () Bool)

(declare-fun e!1187402 () Bool)

(assert (=> d!567302 e!1187402))

(declare-fun res!832724 () Bool)

(assert (=> d!567302 (=> (not res!832724) (not e!1187402))))

(declare-fun lt!717537 () BalanceConc!13560)

(assert (=> d!567302 (= res!832724 (= (list!8356 lt!717537) (value!115640 (toValue!9 thiss!3128 x!372508))))))

(declare-fun fromList!465 (List!20698) Conc!6815)

(assert (=> d!567302 (= lt!717537 (BalanceConc!13561 (fromList!465 (value!115640 (toValue!9 thiss!3128 x!372508)))))))

(assert (=> d!567302 (= (fromListB!1201 (value!115640 (toValue!9 thiss!3128 x!372508))) lt!717537)))

(declare-fun b!1859336 () Bool)

(assert (=> b!1859336 (= e!1187402 (isBalanced!2123 (fromList!465 (value!115640 (toValue!9 thiss!3128 x!372508)))))))

(assert (= (and d!567302 res!832724) b!1859336))

(declare-fun m!2282773 () Bool)

(assert (=> d!567302 m!2282773))

(declare-fun m!2282775 () Bool)

(assert (=> d!567302 m!2282775))

(assert (=> b!1859336 m!2282775))

(assert (=> b!1859336 m!2282775))

(declare-fun m!2282777 () Bool)

(assert (=> b!1859336 m!2282777))

(assert (=> d!567286 d!567302))

(push 1)

(assert (not b!1859299))

(assert (not b!1859287))

(assert (not b!1859272))

(assert (not b!1859331))

(assert (not b!1859274))

(assert (not b!1859245))

(assert (not b!1859300))

(assert (not b!1859336))

(assert (not d!567302))

(assert (not d!567300))

(assert (not b!1859249))

(assert (not b!1859332))

(assert (not b!1859244))

(assert (not d!567282))

(assert (not b!1859216))

(assert (not b!1859248))

(assert (not d!567280))

(assert (not b!1859291))

(assert (not bm!115652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

