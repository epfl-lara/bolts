; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249614 () Bool)

(assert start!249614)

(assert (=> start!249614 true))

(declare-fun b!2579253 () Bool)

(declare-fun e!1627672 () Bool)

(declare-datatypes ((List!29808 0))(
  ( (Nil!29708) (Cons!29708 (h!35128 (_ BitVec 16)) (t!211695 List!29808)) )
))
(declare-datatypes ((IArray!18541 0))(
  ( (IArray!18542 (innerList!9328 List!29808)) )
))
(declare-datatypes ((Conc!9268 0))(
  ( (Node!9268 (left!22632 Conc!9268) (right!22962 Conc!9268) (csize!18766 Int) (cheight!9479 Int)) (Leaf!14139 (xs!12252 IArray!18541) (csize!18767 Int)) (Empty!9268) )
))
(declare-datatypes ((BalanceConc!18150 0))(
  ( (BalanceConc!18151 (c!415433 Conc!9268)) )
))
(declare-fun x!464697 () BalanceConc!18150)

(declare-fun tp!819367 () Bool)

(declare-fun inv!40081 (Conc!9268) Bool)

(assert (=> b!2579253 (= e!1627672 (and (inv!40081 (c!415433 x!464697)) tp!819367))))

(declare-datatypes ((KeywordValueInjection!176 0))(
  ( (KeywordValueInjection!177) )
))
(declare-fun thiss!3262 () KeywordValueInjection!176)

(declare-fun inst!1496 () Bool)

(declare-fun inv!40082 (BalanceConc!18150) Bool)

(declare-fun list!11215 (BalanceConc!18150) List!29808)

(declare-datatypes ((TokenValue!4724 0))(
  ( (FloatLiteralValue!9448 (text!33513 List!29808)) (TokenValueExt!4723 (__x!19289 Int)) (Broken!23620 (value!145540 List!29808)) (Object!4823) (End!4724) (Def!4724) (Underscore!4724) (Match!4724) (Else!4724) (Error!4724) (Case!4724) (If!4724) (Extends!4724) (Abstract!4724) (Class!4724) (Val!4724) (DelimiterValue!9448 (del!4784 List!29808)) (KeywordValue!4730 (value!145541 List!29808)) (CommentValue!9448 (value!145542 List!29808)) (WhitespaceValue!9448 (value!145543 List!29808)) (IndentationValue!4724 (value!145544 List!29808)) (String!33037) (Int32!4724) (Broken!23621 (value!145545 List!29808)) (Boolean!4725) (Unit!43540) (OperatorValue!4727 (op!4784 List!29808)) (IdentifierValue!9448 (value!145546 List!29808)) (IdentifierValue!9449 (value!145547 List!29808)) (WhitespaceValue!9449 (value!145548 List!29808)) (True!9448) (False!9448) (Broken!23622 (value!145549 List!29808)) (Broken!23623 (value!145550 List!29808)) (True!9449) (RightBrace!4724) (RightBracket!4724) (Colon!4724) (Null!4724) (Comma!4724) (LeftBracket!4724) (False!9449) (LeftBrace!4724) (ImaginaryLiteralValue!4724 (text!33514 List!29808)) (StringLiteralValue!14172 (value!145551 List!29808)) (EOFValue!4724 (value!145552 List!29808)) (IdentValue!4724 (value!145553 List!29808)) (DelimiterValue!9449 (value!145554 List!29808)) (DedentValue!4724 (value!145555 List!29808)) (NewLineValue!4724 (value!145556 List!29808)) (IntegerValue!14172 (value!145557 (_ BitVec 32)) (text!33515 List!29808)) (IntegerValue!14173 (value!145558 Int) (text!33516 List!29808)) (Times!4724) (Or!4724) (Equal!4724) (Minus!4724) (Broken!23624 (value!145559 List!29808)) (And!4724) (Div!4724) (LessEqual!4724) (Mod!4724) (Concat!12378) (Not!4724) (Plus!4724) (SpaceValue!4724 (value!145560 List!29808)) (IntegerValue!14174 (value!145561 Int) (text!33517 List!29808)) (StringLiteralValue!14173 (text!33518 List!29808)) (FloatLiteralValue!9449 (text!33519 List!29808)) (BytesLiteralValue!4724 (value!145562 List!29808)) (CommentValue!9449 (value!145563 List!29808)) (StringLiteralValue!14174 (value!145564 List!29808)) (ErrorTokenValue!4724 (msg!4785 List!29808)) )
))
(declare-fun toCharacters!4 (KeywordValueInjection!176 TokenValue!4724) BalanceConc!18150)

(declare-fun toValue!11 (KeywordValueInjection!176 BalanceConc!18150) TokenValue!4724)

(assert (=> start!249614 (= inst!1496 (=> (and (inv!40082 x!464697) e!1627672) (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (list!11215 x!464697))))))

(assert (= start!249614 b!2579253))

(declare-fun m!2914225 () Bool)

(assert (=> b!2579253 m!2914225))

(declare-fun m!2914227 () Bool)

(assert (=> start!249614 m!2914227))

(declare-fun m!2914229 () Bool)

(assert (=> start!249614 m!2914229))

(assert (=> start!249614 m!2914227))

(declare-fun m!2914231 () Bool)

(assert (=> start!249614 m!2914231))

(declare-fun m!2914233 () Bool)

(assert (=> start!249614 m!2914233))

(assert (=> start!249614 m!2914229))

(declare-fun m!2914235 () Bool)

(assert (=> start!249614 m!2914235))

(declare-fun bs!471110 () Bool)

(declare-fun neg-inst!1496 () Bool)

(declare-fun s!228576 () Bool)

(assert (= bs!471110 (and neg-inst!1496 s!228576)))

(assert (=> bs!471110 (=> true (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (list!11215 x!464697)))))

(assert (=> m!2914227 m!2914229))

(assert (=> m!2914227 m!2914235))

(assert (=> m!2914227 m!2914233))

(assert (=> m!2914227 s!228576))

(assert (=> m!2914233 s!228576))

(declare-fun bs!471111 () Bool)

(assert (= bs!471111 (and neg-inst!1496 start!249614)))

(assert (=> bs!471111 (= true inst!1496)))

(declare-fun lambda!95577 () Int)

(declare-fun Forall!1159 (Int) Bool)

(assert (=> start!249614 (= (Forall!1159 lambda!95577) inst!1496)))

(assert (=> start!249614 (not (Forall!1159 lambda!95577))))

(assert (=> start!249614 true))

(assert (= neg-inst!1496 inst!1496))

(declare-fun m!2914237 () Bool)

(assert (=> start!249614 m!2914237))

(assert (=> start!249614 m!2914237))

(push 1)

(assert (not bs!471110))

(assert (not start!249614))

(assert (not b!2579253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729771 () Bool)

(declare-fun list!11217 (Conc!9268) List!29808)

(assert (=> d!729771 (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun bs!471114 () Bool)

(assert (= bs!471114 d!729771))

(declare-fun m!2914253 () Bool)

(assert (=> bs!471114 m!2914253))

(assert (=> bs!471110 d!729771))

(declare-fun b!2579299 () Bool)

(declare-fun c!415465 () Bool)

(assert (=> b!2579299 (= c!415465 (is-Comma!4724 (toValue!11 thiss!3262 x!464697)))))

(declare-fun e!1627703 () BalanceConc!18150)

(declare-fun e!1627704 () BalanceConc!18150)

(assert (=> b!2579299 (= e!1627703 e!1627704)))

(declare-fun b!2579300 () Bool)

(declare-fun c!415462 () Bool)

(assert (=> b!2579300 (= c!415462 (is-False!9449 (toValue!11 thiss!3262 x!464697)))))

(declare-fun e!1627700 () BalanceConc!18150)

(declare-fun e!1627701 () BalanceConc!18150)

(assert (=> b!2579300 (= e!1627700 e!1627701)))

(declare-fun b!2579301 () Bool)

(declare-fun commaStringConc!0 () BalanceConc!18150)

(assert (=> b!2579301 (= e!1627704 commaStringConc!0)))

(declare-fun b!2579302 () Bool)

(declare-fun e!1627696 () BalanceConc!18150)

(assert (=> b!2579302 (= e!1627696 (BalanceConc!18151 Empty!9268))))

(declare-fun b!2579303 () Bool)

(declare-fun e!1627697 () BalanceConc!18150)

(declare-fun rightBracketStringConc!0 () BalanceConc!18150)

(assert (=> b!2579303 (= e!1627697 rightBracketStringConc!0)))

(declare-fun d!729773 () Bool)

(declare-fun c!415456 () Bool)

(assert (=> d!729773 (= c!415456 (is-Null!4724 (toValue!11 thiss!3262 x!464697)))))

(declare-fun e!1627699 () BalanceConc!18150)

(assert (=> d!729773 (= (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)) e!1627699)))

(declare-fun b!2579304 () Bool)

(declare-fun e!1627705 () BalanceConc!18150)

(declare-fun rightBraceStringConc!0 () BalanceConc!18150)

(assert (=> b!2579304 (= e!1627705 rightBraceStringConc!0)))

(declare-fun b!2579305 () Bool)

(declare-fun e!1627698 () BalanceConc!18150)

(assert (=> b!2579305 (= e!1627705 e!1627698)))

(declare-fun c!415457 () Bool)

(assert (=> b!2579305 (= c!415457 (is-LeftBracket!4724 (toValue!11 thiss!3262 x!464697)))))

(declare-fun b!2579306 () Bool)

(declare-fun nullStringConc!0 () BalanceConc!18150)

(assert (=> b!2579306 (= e!1627699 nullStringConc!0)))

(declare-fun b!2579307 () Bool)

(declare-fun c!415463 () Bool)

(assert (=> b!2579307 (= c!415463 (is-RightBracket!4724 (toValue!11 thiss!3262 x!464697)))))

(assert (=> b!2579307 (= e!1627698 e!1627697)))

(declare-fun b!2579308 () Bool)

(declare-fun e!1627702 () BalanceConc!18150)

(assert (=> b!2579308 (= e!1627704 e!1627702)))

(declare-fun c!415464 () Bool)

(assert (=> b!2579308 (= c!415464 (is-LeftBrace!4724 (toValue!11 thiss!3262 x!464697)))))

(declare-fun b!2579309 () Bool)

(assert (=> b!2579309 (= e!1627697 e!1627696)))

(declare-fun c!415459 () Bool)

(assert (=> b!2579309 (= c!415459 (is-Broken!23623 (toValue!11 thiss!3262 x!464697)))))

(declare-fun b!2579310 () Bool)

(declare-fun colonStringConc!0 () BalanceConc!18150)

(assert (=> b!2579310 (= e!1627703 colonStringConc!0)))

(declare-fun b!2579311 () Bool)

(assert (=> b!2579311 (= e!1627699 e!1627700)))

(declare-fun c!415460 () Bool)

(assert (=> b!2579311 (= c!415460 (is-True!9449 (toValue!11 thiss!3262 x!464697)))))

(declare-fun b!2579312 () Bool)

(declare-fun c!415461 () Bool)

(assert (=> b!2579312 (= c!415461 (is-RightBrace!4724 (toValue!11 thiss!3262 x!464697)))))

(assert (=> b!2579312 (= e!1627702 e!1627705)))

(declare-fun b!2579313 () Bool)

(declare-fun falseStringConc!0 () BalanceConc!18150)

(assert (=> b!2579313 (= e!1627701 falseStringConc!0)))

(declare-fun b!2579314 () Bool)

(declare-fun trueStringConc!0 () BalanceConc!18150)

(assert (=> b!2579314 (= e!1627700 trueStringConc!0)))

(declare-fun b!2579315 () Bool)

(declare-fun seqFromList!3146 (List!29808) BalanceConc!18150)

(assert (=> b!2579315 (= e!1627696 (seqFromList!3146 (value!145550 (toValue!11 thiss!3262 x!464697))))))

(declare-fun b!2579316 () Bool)

(assert (=> b!2579316 (= e!1627701 e!1627703)))

(declare-fun c!415458 () Bool)

(assert (=> b!2579316 (= c!415458 (is-Colon!4724 (toValue!11 thiss!3262 x!464697)))))

(declare-fun b!2579317 () Bool)

(declare-fun leftBraceStringConc!0 () BalanceConc!18150)

(assert (=> b!2579317 (= e!1627702 leftBraceStringConc!0)))

(declare-fun b!2579318 () Bool)

(declare-fun leftBracketStringConc!0 () BalanceConc!18150)

(assert (=> b!2579318 (= e!1627698 leftBracketStringConc!0)))

(assert (= (and d!729773 c!415456) b!2579306))

(assert (= (and d!729773 (not c!415456)) b!2579311))

(assert (= (and b!2579311 c!415460) b!2579314))

(assert (= (and b!2579311 (not c!415460)) b!2579300))

(assert (= (and b!2579300 c!415462) b!2579313))

(assert (= (and b!2579300 (not c!415462)) b!2579316))

(assert (= (and b!2579316 c!415458) b!2579310))

(assert (= (and b!2579316 (not c!415458)) b!2579299))

(assert (= (and b!2579299 c!415465) b!2579301))

(assert (= (and b!2579299 (not c!415465)) b!2579308))

(assert (= (and b!2579308 c!415464) b!2579317))

(assert (= (and b!2579308 (not c!415464)) b!2579312))

(assert (= (and b!2579312 c!415461) b!2579304))

(assert (= (and b!2579312 (not c!415461)) b!2579305))

(assert (= (and b!2579305 c!415457) b!2579318))

(assert (= (and b!2579305 (not c!415457)) b!2579307))

(assert (= (and b!2579307 c!415463) b!2579303))

(assert (= (and b!2579307 (not c!415463)) b!2579309))

(assert (= (and b!2579309 c!415459) b!2579315))

(assert (= (and b!2579309 (not c!415459)) b!2579302))

(declare-fun m!2914257 () Bool)

(assert (=> b!2579314 m!2914257))

(declare-fun m!2914259 () Bool)

(assert (=> b!2579315 m!2914259))

(declare-fun m!2914261 () Bool)

(assert (=> b!2579317 m!2914261))

(declare-fun m!2914263 () Bool)

(assert (=> b!2579318 m!2914263))

(declare-fun m!2914265 () Bool)

(assert (=> b!2579304 m!2914265))

(declare-fun m!2914267 () Bool)

(assert (=> b!2579301 m!2914267))

(declare-fun m!2914269 () Bool)

(assert (=> b!2579310 m!2914269))

(declare-fun m!2914271 () Bool)

(assert (=> b!2579303 m!2914271))

(declare-fun m!2914273 () Bool)

(assert (=> b!2579306 m!2914273))

(declare-fun m!2914275 () Bool)

(assert (=> b!2579313 m!2914275))

(assert (=> bs!471110 d!729773))

(declare-fun d!729779 () Bool)

(declare-fun lt!907604 () List!29808)

(declare-fun efficientList!385 (BalanceConc!18150) List!29808)

(assert (=> d!729779 (= lt!907604 (efficientList!385 x!464697))))

(assert (=> d!729779 (= (toValue!11 thiss!3262 x!464697) (ite (= lt!907604 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) Null!4724 (ite (= lt!907604 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) True!9449 (ite (= lt!907604 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) False!9449 (ite (= lt!907604 (Cons!29708 #x003A Nil!29708)) Colon!4724 (ite (= lt!907604 (Cons!29708 #x002C Nil!29708)) Comma!4724 (ite (= lt!907604 (Cons!29708 #x007B Nil!29708)) LeftBrace!4724 (ite (= lt!907604 (Cons!29708 #x007D Nil!29708)) RightBrace!4724 (ite (= lt!907604 (Cons!29708 #x005B Nil!29708)) LeftBracket!4724 (ite (= lt!907604 (Cons!29708 #x005D Nil!29708)) RightBracket!4724 (Broken!23623 lt!907604)))))))))))))

(declare-fun bs!471116 () Bool)

(assert (= bs!471116 d!729779))

(declare-fun m!2914277 () Bool)

(assert (=> bs!471116 m!2914277))

(assert (=> bs!471110 d!729779))

(declare-fun d!729781 () Bool)

(assert (=> d!729781 (= (list!11215 x!464697) (list!11217 (c!415433 x!464697)))))

(declare-fun bs!471117 () Bool)

(assert (= bs!471117 d!729781))

(declare-fun m!2914279 () Bool)

(assert (=> bs!471117 m!2914279))

(assert (=> bs!471110 d!729781))

(push 1)

(assert (not start!249614))

(assert (not d!729771))

(assert (not b!2579313))

(assert (not b!2579301))

(assert (not b!2579315))

(assert (not b!2579310))

(assert (not b!2579317))

(assert (not b!2579304))

(assert (not d!729779))

(assert (not d!729781))

(assert (not b!2579318))

(assert (not b!2579303))

(assert (not b!2579253))

(assert (not b!2579306))

(assert (not b!2579314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2579390 () Bool)

(declare-fun e!1627741 () List!29808)

(declare-fun ++!7292 (List!29808 List!29808) List!29808)

(assert (=> b!2579390 (= e!1627741 (++!7292 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun d!729787 () Bool)

(declare-fun c!415503 () Bool)

(assert (=> d!729787 (= c!415503 (is-Empty!9268 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun e!1627740 () List!29808)

(assert (=> d!729787 (= (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) e!1627740)))

(declare-fun b!2579389 () Bool)

(declare-fun list!11219 (IArray!18541) List!29808)

(assert (=> b!2579389 (= e!1627741 (list!11219 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579388 () Bool)

(assert (=> b!2579388 (= e!1627740 e!1627741)))

(declare-fun c!415504 () Bool)

(assert (=> b!2579388 (= c!415504 (is-Leaf!14139 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579387 () Bool)

(assert (=> b!2579387 (= e!1627740 Nil!29708)))

(assert (= (and d!729787 c!415503) b!2579387))

(assert (= (and d!729787 (not c!415503)) b!2579388))

(assert (= (and b!2579388 c!415504) b!2579389))

(assert (= (and b!2579388 (not c!415504)) b!2579390))

(declare-fun m!2914305 () Bool)

(assert (=> b!2579390 m!2914305))

(declare-fun m!2914307 () Bool)

(assert (=> b!2579390 m!2914307))

(assert (=> b!2579390 m!2914305))

(assert (=> b!2579390 m!2914307))

(declare-fun m!2914309 () Bool)

(assert (=> b!2579390 m!2914309))

(declare-fun m!2914311 () Bool)

(assert (=> b!2579389 m!2914311))

(assert (=> d!729771 d!729787))

(declare-fun b!2579394 () Bool)

(declare-fun e!1627743 () List!29808)

(assert (=> b!2579394 (= e!1627743 (++!7292 (list!11217 (left!22632 (c!415433 x!464697))) (list!11217 (right!22962 (c!415433 x!464697)))))))

(declare-fun d!729789 () Bool)

(declare-fun c!415505 () Bool)

(assert (=> d!729789 (= c!415505 (is-Empty!9268 (c!415433 x!464697)))))

(declare-fun e!1627742 () List!29808)

(assert (=> d!729789 (= (list!11217 (c!415433 x!464697)) e!1627742)))

(declare-fun b!2579393 () Bool)

(assert (=> b!2579393 (= e!1627743 (list!11219 (xs!12252 (c!415433 x!464697))))))

(declare-fun b!2579392 () Bool)

(assert (=> b!2579392 (= e!1627742 e!1627743)))

(declare-fun c!415506 () Bool)

(assert (=> b!2579392 (= c!415506 (is-Leaf!14139 (c!415433 x!464697)))))

(declare-fun b!2579391 () Bool)

(assert (=> b!2579391 (= e!1627742 Nil!29708)))

(assert (= (and d!729789 c!415505) b!2579391))

(assert (= (and d!729789 (not c!415505)) b!2579392))

(assert (= (and b!2579392 c!415506) b!2579393))

(assert (= (and b!2579392 (not c!415506)) b!2579394))

(declare-fun m!2914313 () Bool)

(assert (=> b!2579394 m!2914313))

(declare-fun m!2914315 () Bool)

(assert (=> b!2579394 m!2914315))

(assert (=> b!2579394 m!2914313))

(assert (=> b!2579394 m!2914315))

(declare-fun m!2914317 () Bool)

(assert (=> b!2579394 m!2914317))

(declare-fun m!2914319 () Bool)

(assert (=> b!2579393 m!2914319))

(assert (=> d!729781 d!729789))

(declare-fun d!729791 () Bool)

(declare-fun lt!907610 () List!29808)

(assert (=> d!729791 (= lt!907610 (list!11215 x!464697))))

(declare-fun efficientList!387 (Conc!9268 List!29808) List!29808)

(declare-fun efficientList$default$2!135 (Conc!9268) List!29808)

(assert (=> d!729791 (= lt!907610 (efficientList!387 (c!415433 x!464697) (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!729791 (= (efficientList!385 x!464697) lt!907610)))

(declare-fun bs!471120 () Bool)

(assert (= bs!471120 d!729791))

(assert (=> bs!471120 m!2914233))

(declare-fun m!2914321 () Bool)

(assert (=> bs!471120 m!2914321))

(assert (=> bs!471120 m!2914321))

(declare-fun m!2914323 () Bool)

(assert (=> bs!471120 m!2914323))

(assert (=> d!729779 d!729791))

(push 1)

(assert (not start!249614))

(assert (not d!729791))

(assert (not b!2579390))

(assert (not b!2579313))

(assert (not b!2579301))

(assert (not b!2579315))

(assert (not b!2579310))

(assert (not b!2579317))

(assert (not b!2579304))

(assert (not b!2579389))

(assert (not b!2579253))

(assert (not b!2579306))

(assert (not b!2579314))

(assert (not b!2579318))

(assert (not b!2579393))

(assert (not b!2579303))

(assert (not b!2579394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!729791 d!729781))

(declare-fun b!2579423 () Bool)

(declare-fun e!1627758 () List!29808)

(declare-fun lt!907622 () List!29808)

(assert (=> b!2579423 (= e!1627758 lt!907622)))

(declare-fun b!2579424 () Bool)

(declare-fun e!1627759 () List!29808)

(assert (=> b!2579424 (= e!1627759 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579425 () Bool)

(declare-fun e!1627760 () List!29808)

(declare-fun call!166727 () List!29808)

(assert (=> b!2579425 (= e!1627760 call!166727)))

(declare-fun b!2579426 () Bool)

(declare-fun efficientList!388 (IArray!18541) List!29808)

(assert (=> b!2579426 (= e!1627758 (efficientList!388 (xs!12252 (c!415433 x!464697))))))

(declare-fun b!2579427 () Bool)

(declare-datatypes ((Unit!43542 0))(
  ( (Unit!43543) )
))
(declare-fun lt!907625 () Unit!43542)

(declare-fun lt!907621 () Unit!43542)

(assert (=> b!2579427 (= lt!907625 lt!907621)))

(declare-fun lt!907623 () List!29808)

(assert (=> b!2579427 (= (++!7292 (++!7292 lt!907623 lt!907622) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907623 call!166727))))

(declare-fun lemmaConcatAssociativity!1474 (List!29808 List!29808 List!29808) Unit!43542)

(assert (=> b!2579427 (= lt!907621 (lemmaConcatAssociativity!1474 lt!907623 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> b!2579427 (= lt!907622 (list!11217 (right!22962 (c!415433 x!464697))))))

(assert (=> b!2579427 (= lt!907623 (list!11217 (left!22632 (c!415433 x!464697))))))

(assert (=> b!2579427 (= e!1627760 (efficientList!387 (left!22632 (c!415433 x!464697)) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun d!729795 () Bool)

(declare-fun lt!907624 () List!29808)

(assert (=> d!729795 (= lt!907624 (++!7292 (list!11217 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!729795 (= lt!907624 e!1627759)))

(declare-fun c!415523 () Bool)

(assert (=> d!729795 (= c!415523 (is-Empty!9268 (c!415433 x!464697)))))

(assert (=> d!729795 (= (efficientList!387 (c!415433 x!464697) (efficientList$default$2!135 (c!415433 x!464697))) lt!907624)))

(declare-fun b!2579428 () Bool)

(assert (=> b!2579428 (= e!1627759 e!1627760)))

(declare-fun c!415522 () Bool)

(assert (=> b!2579428 (= c!415522 (is-Leaf!14139 (c!415433 x!464697)))))

(declare-fun bm!166722 () Bool)

(declare-fun c!415521 () Bool)

(assert (=> bm!166722 (= c!415521 c!415522)))

(assert (=> bm!166722 (= call!166727 (++!7292 e!1627758 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (= (and d!729795 c!415523) b!2579424))

(assert (= (and d!729795 (not c!415523)) b!2579428))

(assert (= (and b!2579428 c!415522) b!2579425))

(assert (= (and b!2579428 (not c!415522)) b!2579427))

(assert (= (or b!2579425 b!2579427) bm!166722))

(assert (= (and bm!166722 c!415521) b!2579426))

(assert (= (and bm!166722 (not c!415521)) b!2579423))

(declare-fun m!2914341 () Bool)

(assert (=> b!2579426 m!2914341))

(assert (=> b!2579427 m!2914321))

(declare-fun m!2914343 () Bool)

(assert (=> b!2579427 m!2914343))

(declare-fun m!2914345 () Bool)

(assert (=> b!2579427 m!2914345))

(declare-fun m!2914347 () Bool)

(assert (=> b!2579427 m!2914347))

(assert (=> b!2579427 m!2914347))

(assert (=> b!2579427 m!2914321))

(declare-fun m!2914349 () Bool)

(assert (=> b!2579427 m!2914349))

(assert (=> b!2579427 m!2914321))

(declare-fun m!2914351 () Bool)

(assert (=> b!2579427 m!2914351))

(assert (=> b!2579427 m!2914313))

(assert (=> b!2579427 m!2914351))

(declare-fun m!2914353 () Bool)

(assert (=> b!2579427 m!2914353))

(assert (=> b!2579427 m!2914315))

(assert (=> d!729795 m!2914279))

(assert (=> d!729795 m!2914279))

(assert (=> d!729795 m!2914321))

(declare-fun m!2914355 () Bool)

(assert (=> d!729795 m!2914355))

(assert (=> bm!166722 m!2914321))

(declare-fun m!2914357 () Bool)

(assert (=> bm!166722 m!2914357))

(assert (=> d!729791 d!729795))

(declare-fun d!729801 () Bool)

(assert (=> d!729801 (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)))

(assert (=> d!729791 d!729801))

(declare-fun d!729803 () Bool)

(assert (=> d!729803 (= nullStringConc!0 (seqFromList!3146 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(declare-fun bs!471122 () Bool)

(assert (= bs!471122 d!729803))

(declare-fun m!2914363 () Bool)

(assert (=> bs!471122 m!2914363))

(assert (=> b!2579306 d!729803))

(assert (=> start!249614 d!729779))

(assert (=> start!249614 d!729773))

(declare-fun d!729805 () Bool)

(declare-fun isBalanced!2825 (Conc!9268) Bool)

(assert (=> d!729805 (= (inv!40082 x!464697) (isBalanced!2825 (c!415433 x!464697)))))

(declare-fun bs!471123 () Bool)

(assert (= bs!471123 d!729805))

(declare-fun m!2914365 () Bool)

(assert (=> bs!471123 m!2914365))

(assert (=> start!249614 d!729805))

(declare-fun d!729807 () Bool)

(declare-fun choose!15205 (Int) Bool)

(assert (=> d!729807 (= (Forall!1159 lambda!95577) (choose!15205 lambda!95577))))

(declare-fun bs!471124 () Bool)

(assert (= bs!471124 d!729807))

(declare-fun m!2914367 () Bool)

(assert (=> bs!471124 m!2914367))

(assert (=> start!249614 d!729807))

(assert (=> start!249614 d!729781))

(assert (=> start!249614 d!729771))

(declare-fun d!729809 () Bool)

(declare-fun c!415526 () Bool)

(assert (=> d!729809 (= c!415526 (is-Node!9268 (c!415433 x!464697)))))

(declare-fun e!1627765 () Bool)

(assert (=> d!729809 (= (inv!40081 (c!415433 x!464697)) e!1627765)))

(declare-fun b!2579435 () Bool)

(declare-fun inv!40085 (Conc!9268) Bool)

(assert (=> b!2579435 (= e!1627765 (inv!40085 (c!415433 x!464697)))))

(declare-fun b!2579436 () Bool)

(declare-fun e!1627766 () Bool)

(assert (=> b!2579436 (= e!1627765 e!1627766)))

(declare-fun res!1085029 () Bool)

(assert (=> b!2579436 (= res!1085029 (not (is-Leaf!14139 (c!415433 x!464697))))))

(assert (=> b!2579436 (=> res!1085029 e!1627766)))

(declare-fun b!2579437 () Bool)

(declare-fun inv!40086 (Conc!9268) Bool)

(assert (=> b!2579437 (= e!1627766 (inv!40086 (c!415433 x!464697)))))

(assert (= (and d!729809 c!415526) b!2579435))

(assert (= (and d!729809 (not c!415526)) b!2579436))

(assert (= (and b!2579436 (not res!1085029)) b!2579437))

(declare-fun m!2914369 () Bool)

(assert (=> b!2579435 m!2914369))

(declare-fun m!2914371 () Bool)

(assert (=> b!2579437 m!2914371))

(assert (=> b!2579253 d!729809))

(declare-fun tp!819375 () Bool)

(declare-fun b!2579444 () Bool)

(declare-fun tp!819376 () Bool)

(declare-fun e!1627771 () Bool)

(assert (=> b!2579444 (= e!1627771 (and (inv!40081 (left!22632 (c!415433 x!464697))) tp!819375 (inv!40081 (right!22962 (c!415433 x!464697))) tp!819376))))

(declare-fun b!2579445 () Bool)

(declare-fun inv!40087 (IArray!18541) Bool)

(assert (=> b!2579445 (= e!1627771 (inv!40087 (xs!12252 (c!415433 x!464697))))))

(assert (=> b!2579253 (= tp!819367 (and (inv!40081 (c!415433 x!464697)) e!1627771))))

(assert (= (and b!2579253 (is-Node!9268 (c!415433 x!464697))) b!2579444))

(assert (= (and b!2579253 (is-Leaf!14139 (c!415433 x!464697))) b!2579445))

(declare-fun m!2914373 () Bool)

(assert (=> b!2579444 m!2914373))

(declare-fun m!2914375 () Bool)

(assert (=> b!2579444 m!2914375))

(declare-fun m!2914377 () Bool)

(assert (=> b!2579445 m!2914377))

(assert (=> b!2579253 m!2914225))

(push 1)

(assert (not b!2579390))

(assert (not d!729805))

(assert (not b!2579426))

(assert (not b!2579313))

(assert (not b!2579301))

(assert (not b!2579315))

(assert (not d!729807))

(assert (not b!2579310))

(assert (not b!2579304))

(assert (not b!2579437))

(assert (not b!2579444))

(assert (not b!2579389))

(assert (not b!2579253))

(assert (not d!729795))

(assert (not b!2579314))

(assert (not bm!166722))

(assert (not b!2579427))

(assert (not b!2579317))

(assert (not d!729803))

(assert (not b!2579435))

(assert (not b!2579318))

(assert (not b!2579393))

(assert (not b!2579445))

(assert (not b!2579303))

(assert (not b!2579394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729821 () Bool)

(declare-fun e!1627784 () Bool)

(assert (=> d!729821 e!1627784))

(declare-fun res!1085037 () Bool)

(assert (=> d!729821 (=> (not res!1085037) (not e!1627784))))

(declare-fun lt!907631 () List!29808)

(declare-fun content!4091 (List!29808) (Set (_ BitVec 16)))

(assert (=> d!729821 (= res!1085037 (= (content!4091 lt!907631) (set.union (content!4091 (list!11217 (c!415433 x!464697))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1627783 () List!29808)

(assert (=> d!729821 (= lt!907631 e!1627783)))

(declare-fun c!415532 () Bool)

(assert (=> d!729821 (= c!415532 (is-Nil!29708 (list!11217 (c!415433 x!464697))))))

(assert (=> d!729821 (= (++!7292 (list!11217 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) lt!907631)))

(declare-fun b!2579463 () Bool)

(assert (=> b!2579463 (= e!1627783 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579466 () Bool)

(assert (=> b!2579466 (= e!1627784 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907631 (list!11217 (c!415433 x!464697)))))))

(declare-fun b!2579464 () Bool)

(assert (=> b!2579464 (= e!1627783 (Cons!29708 (h!35128 (list!11217 (c!415433 x!464697))) (++!7292 (t!211695 (list!11217 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579465 () Bool)

(declare-fun res!1085038 () Bool)

(assert (=> b!2579465 (=> (not res!1085038) (not e!1627784))))

(declare-fun size!23031 (List!29808) Int)

(assert (=> b!2579465 (= res!1085038 (= (size!23031 lt!907631) (+ (size!23031 (list!11217 (c!415433 x!464697))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729821 c!415532) b!2579463))

(assert (= (and d!729821 (not c!415532)) b!2579464))

(assert (= (and d!729821 res!1085037) b!2579465))

(assert (= (and b!2579465 res!1085038) b!2579466))

(declare-fun m!2914389 () Bool)

(assert (=> d!729821 m!2914389))

(assert (=> d!729821 m!2914279))

(declare-fun m!2914391 () Bool)

(assert (=> d!729821 m!2914391))

(assert (=> d!729821 m!2914321))

(declare-fun m!2914393 () Bool)

(assert (=> d!729821 m!2914393))

(assert (=> b!2579464 m!2914321))

(declare-fun m!2914395 () Bool)

(assert (=> b!2579464 m!2914395))

(declare-fun m!2914397 () Bool)

(assert (=> b!2579465 m!2914397))

(assert (=> b!2579465 m!2914279))

(declare-fun m!2914399 () Bool)

(assert (=> b!2579465 m!2914399))

(assert (=> b!2579465 m!2914321))

(declare-fun m!2914401 () Bool)

(assert (=> b!2579465 m!2914401))

(assert (=> d!729795 d!729821))

(assert (=> d!729795 d!729789))

(declare-fun d!729823 () Bool)

(declare-fun fromListB!1421 (List!29808) BalanceConc!18150)

(assert (=> d!729823 (= (seqFromList!3146 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) (fromListB!1421 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(declare-fun bs!471128 () Bool)

(assert (= bs!471128 d!729823))

(declare-fun m!2914403 () Bool)

(assert (=> bs!471128 m!2914403))

(assert (=> d!729803 d!729823))

(declare-fun d!729825 () Bool)

(assert (=> d!729825 (= (seqFromList!3146 (value!145550 (toValue!11 thiss!3262 x!464697))) (fromListB!1421 (value!145550 (toValue!11 thiss!3262 x!464697))))))

(declare-fun bs!471129 () Bool)

(assert (= bs!471129 d!729825))

(declare-fun m!2914405 () Bool)

(assert (=> bs!471129 m!2914405))

(assert (=> b!2579315 d!729825))

(declare-fun d!729827 () Bool)

(assert (=> d!729827 (= trueStringConc!0 (seqFromList!3146 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(declare-fun bs!471130 () Bool)

(assert (= bs!471130 d!729827))

(declare-fun m!2914407 () Bool)

(assert (=> bs!471130 m!2914407))

(assert (=> b!2579314 d!729827))

(declare-fun d!729829 () Bool)

(assert (=> d!729829 (= falseStringConc!0 (seqFromList!3146 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(declare-fun bs!471131 () Bool)

(assert (= bs!471131 d!729829))

(declare-fun m!2914409 () Bool)

(assert (=> bs!471131 m!2914409))

(assert (=> b!2579313 d!729829))

(declare-fun d!729831 () Bool)

(assert (=> d!729831 (= colonStringConc!0 (seqFromList!3146 (Cons!29708 #x003A Nil!29708)))))

(declare-fun bs!471132 () Bool)

(assert (= bs!471132 d!729831))

(declare-fun m!2914411 () Bool)

(assert (=> bs!471132 m!2914411))

(assert (=> b!2579310 d!729831))

(declare-fun d!729833 () Bool)

(assert (=> d!729833 (= commaStringConc!0 (seqFromList!3146 (Cons!29708 #x002C Nil!29708)))))

(declare-fun bs!471133 () Bool)

(assert (= bs!471133 d!729833))

(declare-fun m!2914413 () Bool)

(assert (=> bs!471133 m!2914413))

(assert (=> b!2579301 d!729833))

(declare-fun d!729835 () Bool)

(assert (=> d!729835 (= rightBraceStringConc!0 (seqFromList!3146 (Cons!29708 #x007D Nil!29708)))))

(declare-fun bs!471134 () Bool)

(assert (= bs!471134 d!729835))

(declare-fun m!2914415 () Bool)

(assert (=> bs!471134 m!2914415))

(assert (=> b!2579304 d!729835))

(declare-fun d!729837 () Bool)

(assert (=> d!729837 (= rightBracketStringConc!0 (seqFromList!3146 (Cons!29708 #x005D Nil!29708)))))

(declare-fun bs!471135 () Bool)

(assert (= bs!471135 d!729837))

(declare-fun m!2914417 () Bool)

(assert (=> bs!471135 m!2914417))

(assert (=> b!2579303 d!729837))

(declare-fun d!729839 () Bool)

(assert (=> d!729839 (= leftBracketStringConc!0 (seqFromList!3146 (Cons!29708 #x005B Nil!29708)))))

(declare-fun bs!471136 () Bool)

(assert (= bs!471136 d!729839))

(declare-fun m!2914419 () Bool)

(assert (=> bs!471136 m!2914419))

(assert (=> b!2579318 d!729839))

(declare-fun d!729841 () Bool)

(assert (=> d!729841 (= leftBraceStringConc!0 (seqFromList!3146 (Cons!29708 #x007B Nil!29708)))))

(declare-fun bs!471137 () Bool)

(assert (= bs!471137 d!729841))

(declare-fun m!2914421 () Bool)

(assert (=> bs!471137 m!2914421))

(assert (=> b!2579317 d!729841))

(push 1)

(assert (not b!2579390))

(assert (not d!729805))

(assert (not d!729837))

(assert (not d!729829))

(assert (not d!729831))

(assert (not d!729807))

(assert (not d!729821))

(assert (not d!729825))

(assert (not b!2579437))

(assert (not b!2579253))

(assert (not b!2579426))

(assert (not b!2579464))

(assert (not b!2579465))

(assert (not d!729839))

(assert (not bm!166722))

(assert (not d!729833))

(assert (not b!2579427))

(assert (not b!2579444))

(assert (not d!729835))

(assert (not d!729841))

(assert (not b!2579435))

(assert (not b!2579393))

(assert (not b!2579445))

(assert (not d!729827))

(assert (not b!2579394))

(assert (not b!2579389))

(assert (not d!729823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729845 () Bool)

(assert (=> d!729845 (= (list!11219 (xs!12252 (c!415433 x!464697))) (innerList!9328 (xs!12252 (c!415433 x!464697))))))

(assert (=> b!2579393 d!729845))

(declare-fun d!729847 () Bool)

(declare-fun c!415544 () Bool)

(assert (=> d!729847 (= c!415544 (is-Nil!29708 lt!907631))))

(declare-fun e!1627802 () (Set (_ BitVec 16)))

(assert (=> d!729847 (= (content!4091 lt!907631) e!1627802)))

(declare-fun b!2579497 () Bool)

(assert (=> b!2579497 (= e!1627802 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579498 () Bool)

(assert (=> b!2579498 (= e!1627802 (set.union (set.insert (h!35128 lt!907631) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907631))))))

(assert (= (and d!729847 c!415544) b!2579497))

(assert (= (and d!729847 (not c!415544)) b!2579498))

(declare-fun m!2914447 () Bool)

(assert (=> b!2579498 m!2914447))

(declare-fun m!2914449 () Bool)

(assert (=> b!2579498 m!2914449))

(assert (=> d!729821 d!729847))

(declare-fun d!729849 () Bool)

(declare-fun c!415545 () Bool)

(assert (=> d!729849 (= c!415545 (is-Nil!29708 (list!11217 (c!415433 x!464697))))))

(declare-fun e!1627803 () (Set (_ BitVec 16)))

(assert (=> d!729849 (= (content!4091 (list!11217 (c!415433 x!464697))) e!1627803)))

(declare-fun b!2579499 () Bool)

(assert (=> b!2579499 (= e!1627803 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579500 () Bool)

(assert (=> b!2579500 (= e!1627803 (set.union (set.insert (h!35128 (list!11217 (c!415433 x!464697))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (c!415433 x!464697))))))))

(assert (= (and d!729849 c!415545) b!2579499))

(assert (= (and d!729849 (not c!415545)) b!2579500))

(declare-fun m!2914451 () Bool)

(assert (=> b!2579500 m!2914451))

(declare-fun m!2914453 () Bool)

(assert (=> b!2579500 m!2914453))

(assert (=> d!729821 d!729849))

(declare-fun d!729851 () Bool)

(declare-fun c!415546 () Bool)

(assert (=> d!729851 (= c!415546 (is-Nil!29708 (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun e!1627804 () (Set (_ BitVec 16)))

(assert (=> d!729851 (= (content!4091 (efficientList$default$2!135 (c!415433 x!464697))) e!1627804)))

(declare-fun b!2579501 () Bool)

(assert (=> b!2579501 (= e!1627804 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579502 () Bool)

(assert (=> b!2579502 (= e!1627804 (set.union (set.insert (h!35128 (efficientList$default$2!135 (c!415433 x!464697))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729851 c!415546) b!2579501))

(assert (= (and d!729851 (not c!415546)) b!2579502))

(declare-fun m!2914455 () Bool)

(assert (=> b!2579502 m!2914455))

(declare-fun m!2914457 () Bool)

(assert (=> b!2579502 m!2914457))

(assert (=> d!729821 d!729851))

(declare-fun d!729853 () Bool)

(assert (=> d!729853 (= (seqFromList!3146 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) (fromListB!1421 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(declare-fun bs!471138 () Bool)

(assert (= bs!471138 d!729853))

(declare-fun m!2914459 () Bool)

(assert (=> bs!471138 m!2914459))

(assert (=> d!729827 d!729853))

(declare-fun d!729855 () Bool)

(assert (=> d!729855 (= (list!11219 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (innerList!9328 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> b!2579389 d!729855))

(declare-fun d!729857 () Bool)

(declare-fun e!1627807 () Bool)

(assert (=> d!729857 e!1627807))

(declare-fun res!1085041 () Bool)

(assert (=> d!729857 (=> (not res!1085041) (not e!1627807))))

(declare-fun lt!907649 () BalanceConc!18150)

(assert (=> d!729857 (= res!1085041 (= (list!11215 lt!907649) (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(declare-fun fromList!557 (List!29808) Conc!9268)

(assert (=> d!729857 (= lt!907649 (BalanceConc!18151 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))

(assert (=> d!729857 (= (fromListB!1421 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) lt!907649)))

(declare-fun b!2579505 () Bool)

(assert (=> b!2579505 (= e!1627807 (isBalanced!2825 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))

(assert (= (and d!729857 res!1085041) b!2579505))

(declare-fun m!2914461 () Bool)

(assert (=> d!729857 m!2914461))

(declare-fun m!2914463 () Bool)

(assert (=> d!729857 m!2914463))

(assert (=> b!2579505 m!2914463))

(assert (=> b!2579505 m!2914463))

(declare-fun m!2914465 () Bool)

(assert (=> b!2579505 m!2914465))

(assert (=> d!729823 d!729857))

(declare-fun d!729859 () Bool)

(declare-fun e!1627809 () Bool)

(assert (=> d!729859 e!1627809))

(declare-fun res!1085042 () Bool)

(assert (=> d!729859 (=> (not res!1085042) (not e!1627809))))

(declare-fun lt!907650 () List!29808)

(assert (=> d!729859 (= res!1085042 (= (content!4091 lt!907650) (set.union (content!4091 (list!11217 (left!22632 (c!415433 x!464697)))) (content!4091 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(declare-fun e!1627808 () List!29808)

(assert (=> d!729859 (= lt!907650 e!1627808)))

(declare-fun c!415548 () Bool)

(assert (=> d!729859 (= c!415548 (is-Nil!29708 (list!11217 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!729859 (= (++!7292 (list!11217 (left!22632 (c!415433 x!464697))) (list!11217 (right!22962 (c!415433 x!464697)))) lt!907650)))

(declare-fun b!2579506 () Bool)

(assert (=> b!2579506 (= e!1627808 (list!11217 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2579509 () Bool)

(assert (=> b!2579509 (= e!1627809 (or (not (= (list!11217 (right!22962 (c!415433 x!464697))) Nil!29708)) (= lt!907650 (list!11217 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2579507 () Bool)

(assert (=> b!2579507 (= e!1627808 (Cons!29708 (h!35128 (list!11217 (left!22632 (c!415433 x!464697)))) (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))) (list!11217 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2579508 () Bool)

(declare-fun res!1085043 () Bool)

(assert (=> b!2579508 (=> (not res!1085043) (not e!1627809))))

(assert (=> b!2579508 (= res!1085043 (= (size!23031 lt!907650) (+ (size!23031 (list!11217 (left!22632 (c!415433 x!464697)))) (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(assert (= (and d!729859 c!415548) b!2579506))

(assert (= (and d!729859 (not c!415548)) b!2579507))

(assert (= (and d!729859 res!1085042) b!2579508))

(assert (= (and b!2579508 res!1085043) b!2579509))

(declare-fun m!2914467 () Bool)

(assert (=> d!729859 m!2914467))

(assert (=> d!729859 m!2914313))

(declare-fun m!2914469 () Bool)

(assert (=> d!729859 m!2914469))

(assert (=> d!729859 m!2914315))

(declare-fun m!2914471 () Bool)

(assert (=> d!729859 m!2914471))

(assert (=> b!2579507 m!2914315))

(declare-fun m!2914473 () Bool)

(assert (=> b!2579507 m!2914473))

(declare-fun m!2914475 () Bool)

(assert (=> b!2579508 m!2914475))

(assert (=> b!2579508 m!2914313))

(declare-fun m!2914477 () Bool)

(assert (=> b!2579508 m!2914477))

(assert (=> b!2579508 m!2914315))

(declare-fun m!2914479 () Bool)

(assert (=> b!2579508 m!2914479))

(assert (=> b!2579394 d!729859))

(declare-fun b!2579513 () Bool)

(declare-fun e!1627811 () List!29808)

(assert (=> b!2579513 (= e!1627811 (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))) (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))))))

(declare-fun d!729861 () Bool)

(declare-fun c!415549 () Bool)

(assert (=> d!729861 (= c!415549 (is-Empty!9268 (left!22632 (c!415433 x!464697))))))

(declare-fun e!1627810 () List!29808)

(assert (=> d!729861 (= (list!11217 (left!22632 (c!415433 x!464697))) e!1627810)))

(declare-fun b!2579512 () Bool)

(assert (=> b!2579512 (= e!1627811 (list!11219 (xs!12252 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2579511 () Bool)

(assert (=> b!2579511 (= e!1627810 e!1627811)))

(declare-fun c!415550 () Bool)

(assert (=> b!2579511 (= c!415550 (is-Leaf!14139 (left!22632 (c!415433 x!464697))))))

(declare-fun b!2579510 () Bool)

(assert (=> b!2579510 (= e!1627810 Nil!29708)))

(assert (= (and d!729861 c!415549) b!2579510))

(assert (= (and d!729861 (not c!415549)) b!2579511))

(assert (= (and b!2579511 c!415550) b!2579512))

(assert (= (and b!2579511 (not c!415550)) b!2579513))

(declare-fun m!2914481 () Bool)

(assert (=> b!2579513 m!2914481))

(declare-fun m!2914483 () Bool)

(assert (=> b!2579513 m!2914483))

(assert (=> b!2579513 m!2914481))

(assert (=> b!2579513 m!2914483))

(declare-fun m!2914485 () Bool)

(assert (=> b!2579513 m!2914485))

(declare-fun m!2914487 () Bool)

(assert (=> b!2579512 m!2914487))

(assert (=> b!2579394 d!729861))

(declare-fun b!2579517 () Bool)

(declare-fun e!1627813 () List!29808)

(assert (=> b!2579517 (= e!1627813 (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))) (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))))))

(declare-fun d!729863 () Bool)

(declare-fun c!415551 () Bool)

(assert (=> d!729863 (= c!415551 (is-Empty!9268 (right!22962 (c!415433 x!464697))))))

(declare-fun e!1627812 () List!29808)

(assert (=> d!729863 (= (list!11217 (right!22962 (c!415433 x!464697))) e!1627812)))

(declare-fun b!2579516 () Bool)

(assert (=> b!2579516 (= e!1627813 (list!11219 (xs!12252 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2579515 () Bool)

(assert (=> b!2579515 (= e!1627812 e!1627813)))

(declare-fun c!415552 () Bool)

(assert (=> b!2579515 (= c!415552 (is-Leaf!14139 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2579514 () Bool)

(assert (=> b!2579514 (= e!1627812 Nil!29708)))

(assert (= (and d!729863 c!415551) b!2579514))

(assert (= (and d!729863 (not c!415551)) b!2579515))

(assert (= (and b!2579515 c!415552) b!2579516))

(assert (= (and b!2579515 (not c!415552)) b!2579517))

(declare-fun m!2914489 () Bool)

(assert (=> b!2579517 m!2914489))

(declare-fun m!2914491 () Bool)

(assert (=> b!2579517 m!2914491))

(assert (=> b!2579517 m!2914489))

(assert (=> b!2579517 m!2914491))

(declare-fun m!2914493 () Bool)

(assert (=> b!2579517 m!2914493))

(declare-fun m!2914495 () Bool)

(assert (=> b!2579516 m!2914495))

(assert (=> b!2579394 d!729863))

(declare-fun d!729865 () Bool)

(declare-fun e!1627815 () Bool)

(assert (=> d!729865 e!1627815))

(declare-fun res!1085044 () Bool)

(assert (=> d!729865 (=> (not res!1085044) (not e!1627815))))

(declare-fun lt!907651 () List!29808)

(assert (=> d!729865 (= res!1085044 (= (content!4091 lt!907651) (set.union (content!4091 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (content!4091 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun e!1627814 () List!29808)

(assert (=> d!729865 (= lt!907651 e!1627814)))

(declare-fun c!415553 () Bool)

(assert (=> d!729865 (= c!415553 (is-Nil!29708 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(assert (=> d!729865 (= (++!7292 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) lt!907651)))

(declare-fun b!2579518 () Bool)

(assert (=> b!2579518 (= e!1627814 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579521 () Bool)

(assert (=> b!2579521 (= e!1627815 (or (not (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) Nil!29708)) (= lt!907651 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2579519 () Bool)

(assert (=> b!2579519 (= e!1627814 (Cons!29708 (h!35128 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2579520 () Bool)

(declare-fun res!1085045 () Bool)

(assert (=> b!2579520 (=> (not res!1085045) (not e!1627815))))

(assert (=> b!2579520 (= res!1085045 (= (size!23031 lt!907651) (+ (size!23031 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (size!23031 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!729865 c!415553) b!2579518))

(assert (= (and d!729865 (not c!415553)) b!2579519))

(assert (= (and d!729865 res!1085044) b!2579520))

(assert (= (and b!2579520 res!1085045) b!2579521))

(declare-fun m!2914497 () Bool)

(assert (=> d!729865 m!2914497))

(assert (=> d!729865 m!2914305))

(declare-fun m!2914499 () Bool)

(assert (=> d!729865 m!2914499))

(assert (=> d!729865 m!2914307))

(declare-fun m!2914501 () Bool)

(assert (=> d!729865 m!2914501))

(assert (=> b!2579519 m!2914307))

(declare-fun m!2914503 () Bool)

(assert (=> b!2579519 m!2914503))

(declare-fun m!2914505 () Bool)

(assert (=> b!2579520 m!2914505))

(assert (=> b!2579520 m!2914305))

(declare-fun m!2914507 () Bool)

(assert (=> b!2579520 m!2914507))

(assert (=> b!2579520 m!2914307))

(declare-fun m!2914509 () Bool)

(assert (=> b!2579520 m!2914509))

(assert (=> b!2579390 d!729865))

(declare-fun b!2579525 () Bool)

(declare-fun e!1627817 () List!29808)

(assert (=> b!2579525 (= e!1627817 (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun d!729867 () Bool)

(declare-fun c!415554 () Bool)

(assert (=> d!729867 (= c!415554 (is-Empty!9268 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun e!1627816 () List!29808)

(assert (=> d!729867 (= (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) e!1627816)))

(declare-fun b!2579524 () Bool)

(assert (=> b!2579524 (= e!1627817 (list!11219 (xs!12252 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2579523 () Bool)

(assert (=> b!2579523 (= e!1627816 e!1627817)))

(declare-fun c!415555 () Bool)

(assert (=> b!2579523 (= c!415555 (is-Leaf!14139 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579522 () Bool)

(assert (=> b!2579522 (= e!1627816 Nil!29708)))

(assert (= (and d!729867 c!415554) b!2579522))

(assert (= (and d!729867 (not c!415554)) b!2579523))

(assert (= (and b!2579523 c!415555) b!2579524))

(assert (= (and b!2579523 (not c!415555)) b!2579525))

(declare-fun m!2914511 () Bool)

(assert (=> b!2579525 m!2914511))

(declare-fun m!2914513 () Bool)

(assert (=> b!2579525 m!2914513))

(assert (=> b!2579525 m!2914511))

(assert (=> b!2579525 m!2914513))

(declare-fun m!2914515 () Bool)

(assert (=> b!2579525 m!2914515))

(declare-fun m!2914517 () Bool)

(assert (=> b!2579524 m!2914517))

(assert (=> b!2579390 d!729867))

(declare-fun b!2579529 () Bool)

(declare-fun e!1627819 () List!29808)

(assert (=> b!2579529 (= e!1627819 (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun d!729869 () Bool)

(declare-fun c!415556 () Bool)

(assert (=> d!729869 (= c!415556 (is-Empty!9268 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun e!1627818 () List!29808)

(assert (=> d!729869 (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) e!1627818)))

(declare-fun b!2579528 () Bool)

(assert (=> b!2579528 (= e!1627819 (list!11219 (xs!12252 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2579527 () Bool)

(assert (=> b!2579527 (= e!1627818 e!1627819)))

(declare-fun c!415557 () Bool)

(assert (=> b!2579527 (= c!415557 (is-Leaf!14139 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579526 () Bool)

(assert (=> b!2579526 (= e!1627818 Nil!29708)))

(assert (= (and d!729869 c!415556) b!2579526))

(assert (= (and d!729869 (not c!415556)) b!2579527))

(assert (= (and b!2579527 c!415557) b!2579528))

(assert (= (and b!2579527 (not c!415557)) b!2579529))

(declare-fun m!2914519 () Bool)

(assert (=> b!2579529 m!2914519))

(declare-fun m!2914521 () Bool)

(assert (=> b!2579529 m!2914521))

(assert (=> b!2579529 m!2914519))

(assert (=> b!2579529 m!2914521))

(declare-fun m!2914523 () Bool)

(assert (=> b!2579529 m!2914523))

(declare-fun m!2914525 () Bool)

(assert (=> b!2579528 m!2914525))

(assert (=> b!2579390 d!729869))

(declare-fun bs!471139 () Bool)

(declare-fun s!228580 () Bool)

(assert (= bs!471139 (and neg-inst!1496 s!228580)))

(assert (=> bs!471139 (=> true (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun m!2914527 () Bool)

(assert (=> m!2914235 m!2914527))

(declare-fun m!2914529 () Bool)

(assert (=> m!2914235 m!2914529))

(declare-fun m!2914531 () Bool)

(assert (=> m!2914235 m!2914531))

(assert (=> m!2914235 s!228580))

(push 1)

(assert (not b!2579528))

(assert (not d!729831))

(assert (not d!729807))

(assert (not b!2579507))

(assert (not b!2579524))

(assert (not b!2579525))

(assert (not b!2579516))

(assert (not b!2579435))

(assert (not b!2579519))

(assert (not b!2579505))

(assert (not b!2579253))

(assert (not d!729857))

(assert (not b!2579498))

(assert (not d!729805))

(assert (not bs!471139))

(assert (not b!2579502))

(assert (not b!2579426))

(assert (not d!729853))

(assert (not b!2579464))

(assert (not d!729859))

(assert (not d!729837))

(assert (not b!2579465))

(assert (not d!729839))

(assert (not b!2579512))

(assert (not b!2579508))

(assert (not d!729829))

(assert (not b!2579520))

(assert (not bm!166722))

(assert (not d!729833))

(assert (not b!2579427))

(assert (not b!2579513))

(assert (not d!729825))

(assert (not b!2579437))

(assert (not b!2579500))

(assert (not b!2579444))

(assert (not d!729835))

(assert (not b!2579529))

(assert (not d!729841))

(assert (not b!2579445))

(assert (not d!729865))

(assert (not b!2579517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729919 () Bool)

(assert (=> d!729919 true))

(assert (=> d!729919 true))

(declare-fun res!1085061 () Bool)

(assert (=> d!729919 (= (choose!15205 lambda!95577) res!1085061)))

(assert (=> d!729807 d!729919))

(declare-fun d!729921 () Bool)

(declare-fun c!415577 () Bool)

(assert (=> d!729921 (= c!415577 (is-Nil!29708 lt!907651))))

(declare-fun e!1627846 () (Set (_ BitVec 16)))

(assert (=> d!729921 (= (content!4091 lt!907651) e!1627846)))

(declare-fun b!2579579 () Bool)

(assert (=> b!2579579 (= e!1627846 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579580 () Bool)

(assert (=> b!2579580 (= e!1627846 (set.union (set.insert (h!35128 lt!907651) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907651))))))

(assert (= (and d!729921 c!415577) b!2579579))

(assert (= (and d!729921 (not c!415577)) b!2579580))

(declare-fun m!2914653 () Bool)

(assert (=> b!2579580 m!2914653))

(declare-fun m!2914655 () Bool)

(assert (=> b!2579580 m!2914655))

(assert (=> d!729865 d!729921))

(declare-fun d!729923 () Bool)

(declare-fun c!415578 () Bool)

(assert (=> d!729923 (= c!415578 (is-Nil!29708 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1627847 () (Set (_ BitVec 16)))

(assert (=> d!729923 (= (content!4091 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1627847)))

(declare-fun b!2579581 () Bool)

(assert (=> b!2579581 (= e!1627847 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579582 () Bool)

(assert (=> b!2579582 (= e!1627847 (set.union (set.insert (h!35128 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!729923 c!415578) b!2579581))

(assert (= (and d!729923 (not c!415578)) b!2579582))

(declare-fun m!2914657 () Bool)

(assert (=> b!2579582 m!2914657))

(declare-fun m!2914659 () Bool)

(assert (=> b!2579582 m!2914659))

(assert (=> d!729865 d!729923))

(declare-fun d!729925 () Bool)

(declare-fun c!415579 () Bool)

(assert (=> d!729925 (= c!415579 (is-Nil!29708 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1627848 () (Set (_ BitVec 16)))

(assert (=> d!729925 (= (content!4091 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1627848)))

(declare-fun b!2579583 () Bool)

(assert (=> b!2579583 (= e!1627848 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579584 () Bool)

(assert (=> b!2579584 (= e!1627848 (set.union (set.insert (h!35128 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!729925 c!415579) b!2579583))

(assert (= (and d!729925 (not c!415579)) b!2579584))

(declare-fun m!2914661 () Bool)

(assert (=> b!2579584 m!2914661))

(declare-fun m!2914663 () Bool)

(assert (=> b!2579584 m!2914663))

(assert (=> d!729865 d!729925))

(declare-fun d!729927 () Bool)

(assert (=> d!729927 (= (list!11215 lt!907649) (list!11217 (c!415433 lt!907649)))))

(declare-fun bs!471152 () Bool)

(assert (= bs!471152 d!729927))

(declare-fun m!2914665 () Bool)

(assert (=> bs!471152 m!2914665))

(assert (=> d!729857 d!729927))

(declare-fun d!729929 () Bool)

(declare-fun e!1627851 () Bool)

(assert (=> d!729929 e!1627851))

(declare-fun res!1085064 () Bool)

(assert (=> d!729929 (=> (not res!1085064) (not e!1627851))))

(declare-fun lt!907662 () Conc!9268)

(assert (=> d!729929 (= res!1085064 (= (list!11217 lt!907662) (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(declare-fun choose!15207 (List!29808) Conc!9268)

(assert (=> d!729929 (= lt!907662 (choose!15207 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(assert (=> d!729929 (= (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) lt!907662)))

(declare-fun b!2579587 () Bool)

(assert (=> b!2579587 (= e!1627851 (isBalanced!2825 lt!907662))))

(assert (= (and d!729929 res!1085064) b!2579587))

(declare-fun m!2914667 () Bool)

(assert (=> d!729929 m!2914667))

(declare-fun m!2914669 () Bool)

(assert (=> d!729929 m!2914669))

(declare-fun m!2914671 () Bool)

(assert (=> b!2579587 m!2914671))

(assert (=> d!729857 d!729929))

(declare-fun d!729931 () Bool)

(declare-fun e!1627852 () Bool)

(assert (=> d!729931 e!1627852))

(declare-fun res!1085065 () Bool)

(assert (=> d!729931 (=> (not res!1085065) (not e!1627852))))

(declare-fun lt!907663 () BalanceConc!18150)

(assert (=> d!729931 (= res!1085065 (= (list!11215 lt!907663) (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(assert (=> d!729931 (= lt!907663 (BalanceConc!18151 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))))))

(assert (=> d!729931 (= (fromListB!1421 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) lt!907663)))

(declare-fun b!2579588 () Bool)

(assert (=> b!2579588 (= e!1627852 (isBalanced!2825 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))))))

(assert (= (and d!729931 res!1085065) b!2579588))

(declare-fun m!2914673 () Bool)

(assert (=> d!729931 m!2914673))

(declare-fun m!2914675 () Bool)

(assert (=> d!729931 m!2914675))

(assert (=> b!2579588 m!2914675))

(assert (=> b!2579588 m!2914675))

(declare-fun m!2914677 () Bool)

(assert (=> b!2579588 m!2914677))

(assert (=> d!729853 d!729931))

(declare-fun d!729933 () Bool)

(assert (=> d!729933 (= (inv!40087 (xs!12252 (c!415433 x!464697))) (<= (size!23031 (innerList!9328 (xs!12252 (c!415433 x!464697)))) 2147483647))))

(declare-fun bs!471153 () Bool)

(assert (= bs!471153 d!729933))

(declare-fun m!2914679 () Bool)

(assert (=> bs!471153 m!2914679))

(assert (=> b!2579445 d!729933))

(declare-fun d!729935 () Bool)

(declare-fun c!415580 () Bool)

(assert (=> d!729935 (= c!415580 (is-Node!9268 (left!22632 (c!415433 x!464697))))))

(declare-fun e!1627853 () Bool)

(assert (=> d!729935 (= (inv!40081 (left!22632 (c!415433 x!464697))) e!1627853)))

(declare-fun b!2579589 () Bool)

(assert (=> b!2579589 (= e!1627853 (inv!40085 (left!22632 (c!415433 x!464697))))))

(declare-fun b!2579590 () Bool)

(declare-fun e!1627854 () Bool)

(assert (=> b!2579590 (= e!1627853 e!1627854)))

(declare-fun res!1085066 () Bool)

(assert (=> b!2579590 (= res!1085066 (not (is-Leaf!14139 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579590 (=> res!1085066 e!1627854)))

(declare-fun b!2579591 () Bool)

(assert (=> b!2579591 (= e!1627854 (inv!40086 (left!22632 (c!415433 x!464697))))))

(assert (= (and d!729935 c!415580) b!2579589))

(assert (= (and d!729935 (not c!415580)) b!2579590))

(assert (= (and b!2579590 (not res!1085066)) b!2579591))

(declare-fun m!2914681 () Bool)

(assert (=> b!2579589 m!2914681))

(declare-fun m!2914683 () Bool)

(assert (=> b!2579591 m!2914683))

(assert (=> b!2579444 d!729935))

(declare-fun d!729937 () Bool)

(declare-fun c!415581 () Bool)

(assert (=> d!729937 (= c!415581 (is-Node!9268 (right!22962 (c!415433 x!464697))))))

(declare-fun e!1627855 () Bool)

(assert (=> d!729937 (= (inv!40081 (right!22962 (c!415433 x!464697))) e!1627855)))

(declare-fun b!2579592 () Bool)

(assert (=> b!2579592 (= e!1627855 (inv!40085 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2579593 () Bool)

(declare-fun e!1627856 () Bool)

(assert (=> b!2579593 (= e!1627855 e!1627856)))

(declare-fun res!1085067 () Bool)

(assert (=> b!2579593 (= res!1085067 (not (is-Leaf!14139 (right!22962 (c!415433 x!464697)))))))

(assert (=> b!2579593 (=> res!1085067 e!1627856)))

(declare-fun b!2579594 () Bool)

(assert (=> b!2579594 (= e!1627856 (inv!40086 (right!22962 (c!415433 x!464697))))))

(assert (= (and d!729937 c!415581) b!2579592))

(assert (= (and d!729937 (not c!415581)) b!2579593))

(assert (= (and b!2579593 (not res!1085067)) b!2579594))

(declare-fun m!2914685 () Bool)

(assert (=> b!2579592 m!2914685))

(declare-fun m!2914687 () Bool)

(assert (=> b!2579594 m!2914687))

(assert (=> b!2579444 d!729937))

(assert (=> b!2579253 d!729809))

(declare-fun d!729939 () Bool)

(declare-fun e!1627858 () Bool)

(assert (=> d!729939 e!1627858))

(declare-fun res!1085068 () Bool)

(assert (=> d!729939 (=> (not res!1085068) (not e!1627858))))

(declare-fun lt!907664 () List!29808)

(assert (=> d!729939 (= res!1085068 (= (content!4091 lt!907664) (set.union (content!4091 (++!7292 lt!907623 lt!907622)) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1627857 () List!29808)

(assert (=> d!729939 (= lt!907664 e!1627857)))

(declare-fun c!415582 () Bool)

(assert (=> d!729939 (= c!415582 (is-Nil!29708 (++!7292 lt!907623 lt!907622)))))

(assert (=> d!729939 (= (++!7292 (++!7292 lt!907623 lt!907622) (efficientList$default$2!135 (c!415433 x!464697))) lt!907664)))

(declare-fun b!2579595 () Bool)

(assert (=> b!2579595 (= e!1627857 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579598 () Bool)

(assert (=> b!2579598 (= e!1627858 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907664 (++!7292 lt!907623 lt!907622))))))

(declare-fun b!2579596 () Bool)

(assert (=> b!2579596 (= e!1627857 (Cons!29708 (h!35128 (++!7292 lt!907623 lt!907622)) (++!7292 (t!211695 (++!7292 lt!907623 lt!907622)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579597 () Bool)

(declare-fun res!1085069 () Bool)

(assert (=> b!2579597 (=> (not res!1085069) (not e!1627858))))

(assert (=> b!2579597 (= res!1085069 (= (size!23031 lt!907664) (+ (size!23031 (++!7292 lt!907623 lt!907622)) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729939 c!415582) b!2579595))

(assert (= (and d!729939 (not c!415582)) b!2579596))

(assert (= (and d!729939 res!1085068) b!2579597))

(assert (= (and b!2579597 res!1085069) b!2579598))

(declare-fun m!2914689 () Bool)

(assert (=> d!729939 m!2914689))

(assert (=> d!729939 m!2914347))

(declare-fun m!2914691 () Bool)

(assert (=> d!729939 m!2914691))

(assert (=> d!729939 m!2914321))

(assert (=> d!729939 m!2914393))

(assert (=> b!2579596 m!2914321))

(declare-fun m!2914693 () Bool)

(assert (=> b!2579596 m!2914693))

(declare-fun m!2914695 () Bool)

(assert (=> b!2579597 m!2914695))

(assert (=> b!2579597 m!2914347))

(declare-fun m!2914697 () Bool)

(assert (=> b!2579597 m!2914697))

(assert (=> b!2579597 m!2914321))

(assert (=> b!2579597 m!2914401))

(assert (=> b!2579427 d!729939))

(declare-fun b!2579599 () Bool)

(declare-fun e!1627859 () List!29808)

(declare-fun lt!907666 () List!29808)

(assert (=> b!2579599 (= e!1627859 lt!907666)))

(declare-fun b!2579600 () Bool)

(declare-fun e!1627860 () List!29808)

(assert (=> b!2579600 (= e!1627860 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579601 () Bool)

(declare-fun e!1627861 () List!29808)

(declare-fun call!166731 () List!29808)

(assert (=> b!2579601 (= e!1627861 call!166731)))

(declare-fun b!2579602 () Bool)

(assert (=> b!2579602 (= e!1627859 (efficientList!388 (xs!12252 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2579603 () Bool)

(declare-fun lt!907669 () Unit!43542)

(declare-fun lt!907665 () Unit!43542)

(assert (=> b!2579603 (= lt!907669 lt!907665)))

(declare-fun lt!907667 () List!29808)

(assert (=> b!2579603 (= (++!7292 (++!7292 lt!907667 lt!907666) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907667 call!166731))))

(assert (=> b!2579603 (= lt!907665 (lemmaConcatAssociativity!1474 lt!907667 lt!907666 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> b!2579603 (= lt!907666 (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))))))

(assert (=> b!2579603 (= lt!907667 (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))))))

(assert (=> b!2579603 (= e!1627861 (efficientList!387 (left!22632 (right!22962 (c!415433 x!464697))) (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun d!729941 () Bool)

(declare-fun lt!907668 () List!29808)

(assert (=> d!729941 (= lt!907668 (++!7292 (list!11217 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!729941 (= lt!907668 e!1627860)))

(declare-fun c!415585 () Bool)

(assert (=> d!729941 (= c!415585 (is-Empty!9268 (right!22962 (c!415433 x!464697))))))

(assert (=> d!729941 (= (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) lt!907668)))

(declare-fun b!2579604 () Bool)

(assert (=> b!2579604 (= e!1627860 e!1627861)))

(declare-fun c!415584 () Bool)

(assert (=> b!2579604 (= c!415584 (is-Leaf!14139 (right!22962 (c!415433 x!464697))))))

(declare-fun bm!166726 () Bool)

(declare-fun c!415583 () Bool)

(assert (=> bm!166726 (= c!415583 c!415584)))

(assert (=> bm!166726 (= call!166731 (++!7292 e!1627859 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (= (and d!729941 c!415585) b!2579600))

(assert (= (and d!729941 (not c!415585)) b!2579604))

(assert (= (and b!2579604 c!415584) b!2579601))

(assert (= (and b!2579604 (not c!415584)) b!2579603))

(assert (= (or b!2579601 b!2579603) bm!166726))

(assert (= (and bm!166726 c!415583) b!2579602))

(assert (= (and bm!166726 (not c!415583)) b!2579599))

(declare-fun m!2914699 () Bool)

(assert (=> b!2579602 m!2914699))

(assert (=> b!2579603 m!2914321))

(declare-fun m!2914701 () Bool)

(assert (=> b!2579603 m!2914701))

(declare-fun m!2914703 () Bool)

(assert (=> b!2579603 m!2914703))

(declare-fun m!2914705 () Bool)

(assert (=> b!2579603 m!2914705))

(assert (=> b!2579603 m!2914705))

(assert (=> b!2579603 m!2914321))

(declare-fun m!2914707 () Bool)

(assert (=> b!2579603 m!2914707))

(assert (=> b!2579603 m!2914321))

(declare-fun m!2914709 () Bool)

(assert (=> b!2579603 m!2914709))

(assert (=> b!2579603 m!2914489))

(assert (=> b!2579603 m!2914709))

(declare-fun m!2914711 () Bool)

(assert (=> b!2579603 m!2914711))

(assert (=> b!2579603 m!2914491))

(assert (=> d!729941 m!2914315))

(assert (=> d!729941 m!2914315))

(assert (=> d!729941 m!2914321))

(declare-fun m!2914713 () Bool)

(assert (=> d!729941 m!2914713))

(assert (=> bm!166726 m!2914321))

(declare-fun m!2914715 () Bool)

(assert (=> bm!166726 m!2914715))

(assert (=> b!2579427 d!729941))

(declare-fun d!729943 () Bool)

(assert (=> d!729943 (= (++!7292 (++!7292 lt!907623 lt!907622) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907623 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun lt!907672 () Unit!43542)

(declare-fun choose!15208 (List!29808 List!29808 List!29808) Unit!43542)

(assert (=> d!729943 (= lt!907672 (choose!15208 lt!907623 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!729943 (= (lemmaConcatAssociativity!1474 lt!907623 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))) lt!907672)))

(declare-fun bs!471154 () Bool)

(assert (= bs!471154 d!729943))

(assert (=> bs!471154 m!2914321))

(declare-fun m!2914717 () Bool)

(assert (=> bs!471154 m!2914717))

(assert (=> bs!471154 m!2914347))

(assert (=> bs!471154 m!2914347))

(assert (=> bs!471154 m!2914321))

(assert (=> bs!471154 m!2914349))

(assert (=> bs!471154 m!2914321))

(declare-fun m!2914719 () Bool)

(assert (=> bs!471154 m!2914719))

(assert (=> bs!471154 m!2914717))

(declare-fun m!2914721 () Bool)

(assert (=> bs!471154 m!2914721))

(assert (=> b!2579427 d!729943))

(declare-fun b!2579605 () Bool)

(declare-fun e!1627862 () List!29808)

(declare-fun lt!907674 () List!29808)

(assert (=> b!2579605 (= e!1627862 lt!907674)))

(declare-fun b!2579606 () Bool)

(declare-fun e!1627863 () List!29808)

(assert (=> b!2579606 (= e!1627863 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2579607 () Bool)

(declare-fun e!1627864 () List!29808)

(declare-fun call!166732 () List!29808)

(assert (=> b!2579607 (= e!1627864 call!166732)))

(declare-fun b!2579608 () Bool)

(assert (=> b!2579608 (= e!1627862 (efficientList!388 (xs!12252 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2579609 () Bool)

(declare-fun lt!907677 () Unit!43542)

(declare-fun lt!907673 () Unit!43542)

(assert (=> b!2579609 (= lt!907677 lt!907673)))

(declare-fun lt!907675 () List!29808)

(assert (=> b!2579609 (= (++!7292 (++!7292 lt!907675 lt!907674) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) (++!7292 lt!907675 call!166732))))

(assert (=> b!2579609 (= lt!907673 (lemmaConcatAssociativity!1474 lt!907675 lt!907674 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> b!2579609 (= lt!907674 (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579609 (= lt!907675 (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579609 (= e!1627864 (efficientList!387 (left!22632 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun d!729945 () Bool)

(declare-fun lt!907676 () List!29808)

(assert (=> d!729945 (= lt!907676 (++!7292 (list!11217 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!729945 (= lt!907676 e!1627863)))

(declare-fun c!415588 () Bool)

(assert (=> d!729945 (= c!415588 (is-Empty!9268 (left!22632 (c!415433 x!464697))))))

(assert (=> d!729945 (= (efficientList!387 (left!22632 (c!415433 x!464697)) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907676)))

(declare-fun b!2579610 () Bool)

(assert (=> b!2579610 (= e!1627863 e!1627864)))

(declare-fun c!415587 () Bool)

(assert (=> b!2579610 (= c!415587 (is-Leaf!14139 (left!22632 (c!415433 x!464697))))))

(declare-fun bm!166727 () Bool)

(declare-fun c!415586 () Bool)

(assert (=> bm!166727 (= c!415586 c!415587)))

(assert (=> bm!166727 (= call!166732 (++!7292 e!1627862 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (= (and d!729945 c!415588) b!2579606))

(assert (= (and d!729945 (not c!415588)) b!2579610))

(assert (= (and b!2579610 c!415587) b!2579607))

(assert (= (and b!2579610 (not c!415587)) b!2579609))

(assert (= (or b!2579607 b!2579609) bm!166727))

(assert (= (and bm!166727 c!415586) b!2579608))

(assert (= (and bm!166727 (not c!415586)) b!2579605))

(declare-fun m!2914723 () Bool)

(assert (=> b!2579608 m!2914723))

(assert (=> b!2579609 m!2914351))

(declare-fun m!2914725 () Bool)

(assert (=> b!2579609 m!2914725))

(declare-fun m!2914727 () Bool)

(assert (=> b!2579609 m!2914727))

(declare-fun m!2914729 () Bool)

(assert (=> b!2579609 m!2914729))

(assert (=> b!2579609 m!2914729))

(assert (=> b!2579609 m!2914351))

(declare-fun m!2914731 () Bool)

(assert (=> b!2579609 m!2914731))

(assert (=> b!2579609 m!2914351))

(declare-fun m!2914733 () Bool)

(assert (=> b!2579609 m!2914733))

(assert (=> b!2579609 m!2914481))

(assert (=> b!2579609 m!2914733))

(declare-fun m!2914735 () Bool)

(assert (=> b!2579609 m!2914735))

(assert (=> b!2579609 m!2914483))

(assert (=> d!729945 m!2914313))

(assert (=> d!729945 m!2914313))

(assert (=> d!729945 m!2914351))

(declare-fun m!2914737 () Bool)

(assert (=> d!729945 m!2914737))

(assert (=> bm!166727 m!2914351))

(declare-fun m!2914739 () Bool)

(assert (=> bm!166727 m!2914739))

(assert (=> b!2579427 d!729945))

(declare-fun d!729947 () Bool)

(declare-fun e!1627866 () Bool)

(assert (=> d!729947 e!1627866))

(declare-fun res!1085070 () Bool)

(assert (=> d!729947 (=> (not res!1085070) (not e!1627866))))

(declare-fun lt!907678 () List!29808)

(assert (=> d!729947 (= res!1085070 (= (content!4091 lt!907678) (set.union (content!4091 lt!907623) (content!4091 lt!907622))))))

(declare-fun e!1627865 () List!29808)

(assert (=> d!729947 (= lt!907678 e!1627865)))

(declare-fun c!415589 () Bool)

(assert (=> d!729947 (= c!415589 (is-Nil!29708 lt!907623))))

(assert (=> d!729947 (= (++!7292 lt!907623 lt!907622) lt!907678)))

(declare-fun b!2579611 () Bool)

(assert (=> b!2579611 (= e!1627865 lt!907622)))

(declare-fun b!2579614 () Bool)

(assert (=> b!2579614 (= e!1627866 (or (not (= lt!907622 Nil!29708)) (= lt!907678 lt!907623)))))

(declare-fun b!2579612 () Bool)

(assert (=> b!2579612 (= e!1627865 (Cons!29708 (h!35128 lt!907623) (++!7292 (t!211695 lt!907623) lt!907622)))))

(declare-fun b!2579613 () Bool)

(declare-fun res!1085071 () Bool)

(assert (=> b!2579613 (=> (not res!1085071) (not e!1627866))))

(assert (=> b!2579613 (= res!1085071 (= (size!23031 lt!907678) (+ (size!23031 lt!907623) (size!23031 lt!907622))))))

(assert (= (and d!729947 c!415589) b!2579611))

(assert (= (and d!729947 (not c!415589)) b!2579612))

(assert (= (and d!729947 res!1085070) b!2579613))

(assert (= (and b!2579613 res!1085071) b!2579614))

(declare-fun m!2914741 () Bool)

(assert (=> d!729947 m!2914741))

(declare-fun m!2914743 () Bool)

(assert (=> d!729947 m!2914743))

(declare-fun m!2914745 () Bool)

(assert (=> d!729947 m!2914745))

(declare-fun m!2914747 () Bool)

(assert (=> b!2579612 m!2914747))

(declare-fun m!2914749 () Bool)

(assert (=> b!2579613 m!2914749))

(declare-fun m!2914751 () Bool)

(assert (=> b!2579613 m!2914751))

(declare-fun m!2914753 () Bool)

(assert (=> b!2579613 m!2914753))

(assert (=> b!2579427 d!729947))

(assert (=> b!2579427 d!729863))

(declare-fun d!729949 () Bool)

(declare-fun e!1627868 () Bool)

(assert (=> d!729949 e!1627868))

(declare-fun res!1085072 () Bool)

(assert (=> d!729949 (=> (not res!1085072) (not e!1627868))))

(declare-fun lt!907679 () List!29808)

(assert (=> d!729949 (= res!1085072 (= (content!4091 lt!907679) (set.union (content!4091 lt!907623) (content!4091 call!166727))))))

(declare-fun e!1627867 () List!29808)

(assert (=> d!729949 (= lt!907679 e!1627867)))

(declare-fun c!415590 () Bool)

(assert (=> d!729949 (= c!415590 (is-Nil!29708 lt!907623))))

(assert (=> d!729949 (= (++!7292 lt!907623 call!166727) lt!907679)))

(declare-fun b!2579615 () Bool)

(assert (=> b!2579615 (= e!1627867 call!166727)))

(declare-fun b!2579618 () Bool)

(assert (=> b!2579618 (= e!1627868 (or (not (= call!166727 Nil!29708)) (= lt!907679 lt!907623)))))

(declare-fun b!2579616 () Bool)

(assert (=> b!2579616 (= e!1627867 (Cons!29708 (h!35128 lt!907623) (++!7292 (t!211695 lt!907623) call!166727)))))

(declare-fun b!2579617 () Bool)

(declare-fun res!1085073 () Bool)

(assert (=> b!2579617 (=> (not res!1085073) (not e!1627868))))

(assert (=> b!2579617 (= res!1085073 (= (size!23031 lt!907679) (+ (size!23031 lt!907623) (size!23031 call!166727))))))

(assert (= (and d!729949 c!415590) b!2579615))

(assert (= (and d!729949 (not c!415590)) b!2579616))

(assert (= (and d!729949 res!1085072) b!2579617))

(assert (= (and b!2579617 res!1085073) b!2579618))

(declare-fun m!2914755 () Bool)

(assert (=> d!729949 m!2914755))

(assert (=> d!729949 m!2914743))

(declare-fun m!2914757 () Bool)

(assert (=> d!729949 m!2914757))

(declare-fun m!2914759 () Bool)

(assert (=> b!2579616 m!2914759))

(declare-fun m!2914761 () Bool)

(assert (=> b!2579617 m!2914761))

(assert (=> b!2579617 m!2914751))

(declare-fun m!2914763 () Bool)

(assert (=> b!2579617 m!2914763))

(assert (=> b!2579427 d!729949))

(assert (=> b!2579427 d!729861))

(declare-fun d!729951 () Bool)

(declare-fun lt!907682 () Int)

(assert (=> d!729951 (>= lt!907682 0)))

(declare-fun e!1627871 () Int)

(assert (=> d!729951 (= lt!907682 e!1627871)))

(declare-fun c!415593 () Bool)

(assert (=> d!729951 (= c!415593 (is-Nil!29708 lt!907631))))

(assert (=> d!729951 (= (size!23031 lt!907631) lt!907682)))

(declare-fun b!2579623 () Bool)

(assert (=> b!2579623 (= e!1627871 0)))

(declare-fun b!2579624 () Bool)

(assert (=> b!2579624 (= e!1627871 (+ 1 (size!23031 (t!211695 lt!907631))))))

(assert (= (and d!729951 c!415593) b!2579623))

(assert (= (and d!729951 (not c!415593)) b!2579624))

(declare-fun m!2914765 () Bool)

(assert (=> b!2579624 m!2914765))

(assert (=> b!2579465 d!729951))

(declare-fun d!729953 () Bool)

(declare-fun lt!907683 () Int)

(assert (=> d!729953 (>= lt!907683 0)))

(declare-fun e!1627872 () Int)

(assert (=> d!729953 (= lt!907683 e!1627872)))

(declare-fun c!415594 () Bool)

(assert (=> d!729953 (= c!415594 (is-Nil!29708 (list!11217 (c!415433 x!464697))))))

(assert (=> d!729953 (= (size!23031 (list!11217 (c!415433 x!464697))) lt!907683)))

(declare-fun b!2579625 () Bool)

(assert (=> b!2579625 (= e!1627872 0)))

(declare-fun b!2579626 () Bool)

(assert (=> b!2579626 (= e!1627872 (+ 1 (size!23031 (t!211695 (list!11217 (c!415433 x!464697))))))))

(assert (= (and d!729953 c!415594) b!2579625))

(assert (= (and d!729953 (not c!415594)) b!2579626))

(declare-fun m!2914767 () Bool)

(assert (=> b!2579626 m!2914767))

(assert (=> b!2579465 d!729953))

(declare-fun d!729955 () Bool)

(declare-fun lt!907684 () Int)

(assert (=> d!729955 (>= lt!907684 0)))

(declare-fun e!1627873 () Int)

(assert (=> d!729955 (= lt!907684 e!1627873)))

(declare-fun c!415595 () Bool)

(assert (=> d!729955 (= c!415595 (is-Nil!29708 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!729955 (= (size!23031 (efficientList$default$2!135 (c!415433 x!464697))) lt!907684)))

(declare-fun b!2579627 () Bool)

(assert (=> b!2579627 (= e!1627873 0)))

(declare-fun b!2579628 () Bool)

(assert (=> b!2579628 (= e!1627873 (+ 1 (size!23031 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729955 c!415595) b!2579627))

(assert (= (and d!729955 (not c!415595)) b!2579628))

(declare-fun m!2914769 () Bool)

(assert (=> b!2579628 m!2914769))

(assert (=> b!2579465 d!729955))

(declare-fun d!729957 () Bool)

(declare-fun res!1085080 () Bool)

(declare-fun e!1627876 () Bool)

(assert (=> d!729957 (=> (not res!1085080) (not e!1627876))))

(declare-fun size!23033 (Conc!9268) Int)

(assert (=> d!729957 (= res!1085080 (= (csize!18766 (c!415433 x!464697)) (+ (size!23033 (left!22632 (c!415433 x!464697))) (size!23033 (right!22962 (c!415433 x!464697))))))))

(assert (=> d!729957 (= (inv!40085 (c!415433 x!464697)) e!1627876)))

(declare-fun b!2579635 () Bool)

(declare-fun res!1085081 () Bool)

(assert (=> b!2579635 (=> (not res!1085081) (not e!1627876))))

(assert (=> b!2579635 (= res!1085081 (and (not (= (left!22632 (c!415433 x!464697)) Empty!9268)) (not (= (right!22962 (c!415433 x!464697)) Empty!9268))))))

(declare-fun b!2579636 () Bool)

(declare-fun res!1085082 () Bool)

(assert (=> b!2579636 (=> (not res!1085082) (not e!1627876))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1345 (Conc!9268) Int)

(assert (=> b!2579636 (= res!1085082 (= (cheight!9479 (c!415433 x!464697)) (+ (max!0 (height!1345 (left!22632 (c!415433 x!464697))) (height!1345 (right!22962 (c!415433 x!464697)))) 1)))))

(declare-fun b!2579637 () Bool)

(assert (=> b!2579637 (= e!1627876 (<= 0 (cheight!9479 (c!415433 x!464697))))))

(assert (= (and d!729957 res!1085080) b!2579635))

(assert (= (and b!2579635 res!1085081) b!2579636))

(assert (= (and b!2579636 res!1085082) b!2579637))

(declare-fun m!2914771 () Bool)

(assert (=> d!729957 m!2914771))

(declare-fun m!2914773 () Bool)

(assert (=> d!729957 m!2914773))

(declare-fun m!2914775 () Bool)

(assert (=> b!2579636 m!2914775))

(declare-fun m!2914777 () Bool)

(assert (=> b!2579636 m!2914777))

(assert (=> b!2579636 m!2914775))

(assert (=> b!2579636 m!2914777))

(declare-fun m!2914779 () Bool)

(assert (=> b!2579636 m!2914779))

(assert (=> b!2579435 d!729957))

(declare-fun d!729959 () Bool)

(declare-fun lt!907687 () List!29808)

(assert (=> d!729959 (= lt!907687 (list!11219 (xs!12252 (c!415433 x!464697))))))

(declare-fun rec!14 (IArray!18541 Int List!29808) List!29808)

(declare-fun size!23034 (IArray!18541) Int)

(assert (=> d!729959 (= lt!907687 (rec!14 (xs!12252 (c!415433 x!464697)) (size!23034 (xs!12252 (c!415433 x!464697))) Nil!29708))))

(assert (=> d!729959 (= (efficientList!388 (xs!12252 (c!415433 x!464697))) lt!907687)))

(declare-fun bs!471155 () Bool)

(assert (= bs!471155 d!729959))

(assert (=> bs!471155 m!2914319))

(declare-fun m!2914781 () Bool)

(assert (=> bs!471155 m!2914781))

(assert (=> bs!471155 m!2914781))

(declare-fun m!2914783 () Bool)

(assert (=> bs!471155 m!2914783))

(assert (=> b!2579426 d!729959))

(declare-fun d!729961 () Bool)

(declare-fun e!1627878 () Bool)

(assert (=> d!729961 e!1627878))

(declare-fun res!1085083 () Bool)

(assert (=> d!729961 (=> (not res!1085083) (not e!1627878))))

(declare-fun lt!907688 () List!29808)

(assert (=> d!729961 (= res!1085083 (= (content!4091 lt!907688) (set.union (content!4091 e!1627758) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1627877 () List!29808)

(assert (=> d!729961 (= lt!907688 e!1627877)))

(declare-fun c!415596 () Bool)

(assert (=> d!729961 (= c!415596 (is-Nil!29708 e!1627758))))

(assert (=> d!729961 (= (++!7292 e!1627758 (efficientList$default$2!135 (c!415433 x!464697))) lt!907688)))

(declare-fun b!2579638 () Bool)

(assert (=> b!2579638 (= e!1627877 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579641 () Bool)

(assert (=> b!2579641 (= e!1627878 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907688 e!1627758)))))

(declare-fun b!2579639 () Bool)

(assert (=> b!2579639 (= e!1627877 (Cons!29708 (h!35128 e!1627758) (++!7292 (t!211695 e!1627758) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579640 () Bool)

(declare-fun res!1085084 () Bool)

(assert (=> b!2579640 (=> (not res!1085084) (not e!1627878))))

(assert (=> b!2579640 (= res!1085084 (= (size!23031 lt!907688) (+ (size!23031 e!1627758) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729961 c!415596) b!2579638))

(assert (= (and d!729961 (not c!415596)) b!2579639))

(assert (= (and d!729961 res!1085083) b!2579640))

(assert (= (and b!2579640 res!1085084) b!2579641))

(declare-fun m!2914785 () Bool)

(assert (=> d!729961 m!2914785))

(declare-fun m!2914787 () Bool)

(assert (=> d!729961 m!2914787))

(assert (=> d!729961 m!2914321))

(assert (=> d!729961 m!2914393))

(assert (=> b!2579639 m!2914321))

(declare-fun m!2914789 () Bool)

(assert (=> b!2579639 m!2914789))

(declare-fun m!2914791 () Bool)

(assert (=> b!2579640 m!2914791))

(declare-fun m!2914793 () Bool)

(assert (=> b!2579640 m!2914793))

(assert (=> b!2579640 m!2914321))

(assert (=> b!2579640 m!2914401))

(assert (=> bm!166722 d!729961))

(declare-fun b!2579654 () Bool)

(declare-fun e!1627883 () Bool)

(declare-fun e!1627884 () Bool)

(assert (=> b!2579654 (= e!1627883 e!1627884)))

(declare-fun res!1085101 () Bool)

(assert (=> b!2579654 (=> (not res!1085101) (not e!1627884))))

(assert (=> b!2579654 (= res!1085101 (<= (- 1) (- (height!1345 (left!22632 (c!415433 x!464697))) (height!1345 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2579655 () Bool)

(declare-fun isEmpty!17078 (Conc!9268) Bool)

(assert (=> b!2579655 (= e!1627884 (not (isEmpty!17078 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2579656 () Bool)

(declare-fun res!1085097 () Bool)

(assert (=> b!2579656 (=> (not res!1085097) (not e!1627884))))

(assert (=> b!2579656 (= res!1085097 (isBalanced!2825 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2579657 () Bool)

(declare-fun res!1085099 () Bool)

(assert (=> b!2579657 (=> (not res!1085099) (not e!1627884))))

(assert (=> b!2579657 (= res!1085099 (<= (- (height!1345 (left!22632 (c!415433 x!464697))) (height!1345 (right!22962 (c!415433 x!464697)))) 1))))

(declare-fun b!2579658 () Bool)

(declare-fun res!1085100 () Bool)

(assert (=> b!2579658 (=> (not res!1085100) (not e!1627884))))

(assert (=> b!2579658 (= res!1085100 (not (isEmpty!17078 (left!22632 (c!415433 x!464697)))))))

(declare-fun d!729963 () Bool)

(declare-fun res!1085102 () Bool)

(assert (=> d!729963 (=> res!1085102 e!1627883)))

(assert (=> d!729963 (= res!1085102 (not (is-Node!9268 (c!415433 x!464697))))))

(assert (=> d!729963 (= (isBalanced!2825 (c!415433 x!464697)) e!1627883)))

(declare-fun b!2579659 () Bool)

(declare-fun res!1085098 () Bool)

(assert (=> b!2579659 (=> (not res!1085098) (not e!1627884))))

(assert (=> b!2579659 (= res!1085098 (isBalanced!2825 (left!22632 (c!415433 x!464697))))))

(assert (= (and d!729963 (not res!1085102)) b!2579654))

(assert (= (and b!2579654 res!1085101) b!2579657))

(assert (= (and b!2579657 res!1085099) b!2579659))

(assert (= (and b!2579659 res!1085098) b!2579656))

(assert (= (and b!2579656 res!1085097) b!2579658))

(assert (= (and b!2579658 res!1085100) b!2579655))

(assert (=> b!2579657 m!2914775))

(assert (=> b!2579657 m!2914777))

(declare-fun m!2914795 () Bool)

(assert (=> b!2579655 m!2914795))

(assert (=> b!2579654 m!2914775))

(assert (=> b!2579654 m!2914777))

(declare-fun m!2914797 () Bool)

(assert (=> b!2579659 m!2914797))

(declare-fun m!2914799 () Bool)

(assert (=> b!2579658 m!2914799))

(declare-fun m!2914801 () Bool)

(assert (=> b!2579656 m!2914801))

(assert (=> d!729805 d!729963))

(declare-fun d!729965 () Bool)

(declare-fun res!1085107 () Bool)

(declare-fun e!1627887 () Bool)

(assert (=> d!729965 (=> (not res!1085107) (not e!1627887))))

(assert (=> d!729965 (= res!1085107 (<= (size!23031 (list!11219 (xs!12252 (c!415433 x!464697)))) 512))))

(assert (=> d!729965 (= (inv!40086 (c!415433 x!464697)) e!1627887)))

(declare-fun b!2579664 () Bool)

(declare-fun res!1085108 () Bool)

(assert (=> b!2579664 (=> (not res!1085108) (not e!1627887))))

(assert (=> b!2579664 (= res!1085108 (= (csize!18767 (c!415433 x!464697)) (size!23031 (list!11219 (xs!12252 (c!415433 x!464697))))))))

(declare-fun b!2579665 () Bool)

(assert (=> b!2579665 (= e!1627887 (and (> (csize!18767 (c!415433 x!464697)) 0) (<= (csize!18767 (c!415433 x!464697)) 512)))))

(assert (= (and d!729965 res!1085107) b!2579664))

(assert (= (and b!2579664 res!1085108) b!2579665))

(assert (=> d!729965 m!2914319))

(assert (=> d!729965 m!2914319))

(declare-fun m!2914803 () Bool)

(assert (=> d!729965 m!2914803))

(assert (=> b!2579664 m!2914319))

(assert (=> b!2579664 m!2914319))

(assert (=> b!2579664 m!2914803))

(assert (=> b!2579437 d!729965))

(declare-fun d!729967 () Bool)

(assert (=> d!729967 (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun bs!471156 () Bool)

(assert (= bs!471156 d!729967))

(declare-fun m!2914805 () Bool)

(assert (=> bs!471156 m!2914805))

(assert (=> bs!471139 d!729967))

(declare-fun b!2579666 () Bool)

(declare-fun c!415606 () Bool)

(assert (=> b!2579666 (= c!415606 (is-Comma!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun e!1627895 () BalanceConc!18150)

(declare-fun e!1627896 () BalanceConc!18150)

(assert (=> b!2579666 (= e!1627895 e!1627896)))

(declare-fun b!2579667 () Bool)

(declare-fun c!415603 () Bool)

(assert (=> b!2579667 (= c!415603 (is-False!9449 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun e!1627892 () BalanceConc!18150)

(declare-fun e!1627893 () BalanceConc!18150)

(assert (=> b!2579667 (= e!1627892 e!1627893)))

(declare-fun b!2579668 () Bool)

(assert (=> b!2579668 (= e!1627896 commaStringConc!0)))

(declare-fun b!2579669 () Bool)

(declare-fun e!1627888 () BalanceConc!18150)

(assert (=> b!2579669 (= e!1627888 (BalanceConc!18151 Empty!9268))))

(declare-fun b!2579670 () Bool)

(declare-fun e!1627889 () BalanceConc!18150)

(assert (=> b!2579670 (= e!1627889 rightBracketStringConc!0)))

(declare-fun d!729969 () Bool)

(declare-fun c!415597 () Bool)

(assert (=> d!729969 (= c!415597 (is-Null!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun e!1627891 () BalanceConc!18150)

(assert (=> d!729969 (= (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) e!1627891)))

(declare-fun b!2579671 () Bool)

(declare-fun e!1627897 () BalanceConc!18150)

(assert (=> b!2579671 (= e!1627897 rightBraceStringConc!0)))

(declare-fun b!2579672 () Bool)

(declare-fun e!1627890 () BalanceConc!18150)

(assert (=> b!2579672 (= e!1627897 e!1627890)))

(declare-fun c!415598 () Bool)

(assert (=> b!2579672 (= c!415598 (is-LeftBracket!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579673 () Bool)

(assert (=> b!2579673 (= e!1627891 nullStringConc!0)))

(declare-fun b!2579674 () Bool)

(declare-fun c!415604 () Bool)

(assert (=> b!2579674 (= c!415604 (is-RightBracket!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(assert (=> b!2579674 (= e!1627890 e!1627889)))

(declare-fun b!2579675 () Bool)

(declare-fun e!1627894 () BalanceConc!18150)

(assert (=> b!2579675 (= e!1627896 e!1627894)))

(declare-fun c!415605 () Bool)

(assert (=> b!2579675 (= c!415605 (is-LeftBrace!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579676 () Bool)

(assert (=> b!2579676 (= e!1627889 e!1627888)))

(declare-fun c!415600 () Bool)

(assert (=> b!2579676 (= c!415600 (is-Broken!23623 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579677 () Bool)

(assert (=> b!2579677 (= e!1627895 colonStringConc!0)))

(declare-fun b!2579678 () Bool)

(assert (=> b!2579678 (= e!1627891 e!1627892)))

(declare-fun c!415601 () Bool)

(assert (=> b!2579678 (= c!415601 (is-True!9449 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579679 () Bool)

(declare-fun c!415602 () Bool)

(assert (=> b!2579679 (= c!415602 (is-RightBrace!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(assert (=> b!2579679 (= e!1627894 e!1627897)))

(declare-fun b!2579680 () Bool)

(assert (=> b!2579680 (= e!1627893 falseStringConc!0)))

(declare-fun b!2579681 () Bool)

(assert (=> b!2579681 (= e!1627892 trueStringConc!0)))

(declare-fun b!2579682 () Bool)

(assert (=> b!2579682 (= e!1627888 (seqFromList!3146 (value!145550 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579683 () Bool)

(assert (=> b!2579683 (= e!1627893 e!1627895)))

(declare-fun c!415599 () Bool)

(assert (=> b!2579683 (= c!415599 (is-Colon!4724 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2579684 () Bool)

(assert (=> b!2579684 (= e!1627894 leftBraceStringConc!0)))

(declare-fun b!2579685 () Bool)

(assert (=> b!2579685 (= e!1627890 leftBracketStringConc!0)))

(assert (= (and d!729969 c!415597) b!2579673))

(assert (= (and d!729969 (not c!415597)) b!2579678))

(assert (= (and b!2579678 c!415601) b!2579681))

(assert (= (and b!2579678 (not c!415601)) b!2579667))

(assert (= (and b!2579667 c!415603) b!2579680))

(assert (= (and b!2579667 (not c!415603)) b!2579683))

(assert (= (and b!2579683 c!415599) b!2579677))

(assert (= (and b!2579683 (not c!415599)) b!2579666))

(assert (= (and b!2579666 c!415606) b!2579668))

(assert (= (and b!2579666 (not c!415606)) b!2579675))

(assert (= (and b!2579675 c!415605) b!2579684))

(assert (= (and b!2579675 (not c!415605)) b!2579679))

(assert (= (and b!2579679 c!415602) b!2579671))

(assert (= (and b!2579679 (not c!415602)) b!2579672))

(assert (= (and b!2579672 c!415598) b!2579685))

(assert (= (and b!2579672 (not c!415598)) b!2579674))

(assert (= (and b!2579674 c!415604) b!2579670))

(assert (= (and b!2579674 (not c!415604)) b!2579676))

(assert (= (and b!2579676 c!415600) b!2579682))

(assert (= (and b!2579676 (not c!415600)) b!2579669))

(assert (=> b!2579681 m!2914257))

(declare-fun m!2914807 () Bool)

(assert (=> b!2579682 m!2914807))

(assert (=> b!2579684 m!2914261))

(assert (=> b!2579685 m!2914263))

(assert (=> b!2579671 m!2914265))

(assert (=> b!2579668 m!2914267))

(assert (=> b!2579677 m!2914269))

(assert (=> b!2579670 m!2914271))

(assert (=> b!2579673 m!2914273))

(assert (=> b!2579680 m!2914275))

(assert (=> bs!471139 d!729969))

(declare-fun d!729971 () Bool)

(declare-fun lt!907689 () List!29808)

(assert (=> d!729971 (= lt!907689 (efficientList!385 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))

(assert (=> d!729971 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (ite (= lt!907689 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) Null!4724 (ite (= lt!907689 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) True!9449 (ite (= lt!907689 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) False!9449 (ite (= lt!907689 (Cons!29708 #x003A Nil!29708)) Colon!4724 (ite (= lt!907689 (Cons!29708 #x002C Nil!29708)) Comma!4724 (ite (= lt!907689 (Cons!29708 #x007B Nil!29708)) LeftBrace!4724 (ite (= lt!907689 (Cons!29708 #x007D Nil!29708)) RightBrace!4724 (ite (= lt!907689 (Cons!29708 #x005B Nil!29708)) LeftBracket!4724 (ite (= lt!907689 (Cons!29708 #x005D Nil!29708)) RightBracket!4724 (Broken!23623 lt!907689)))))))))))))

(declare-fun bs!471157 () Bool)

(assert (= bs!471157 d!729971))

(assert (=> bs!471157 m!2914229))

(declare-fun m!2914809 () Bool)

(assert (=> bs!471157 m!2914809))

(assert (=> bs!471139 d!729971))

(assert (=> bs!471139 d!729771))

(declare-fun d!729973 () Bool)

(assert (=> d!729973 (= (seqFromList!3146 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) (fromListB!1421 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(declare-fun bs!471158 () Bool)

(assert (= bs!471158 d!729973))

(declare-fun m!2914811 () Bool)

(assert (=> bs!471158 m!2914811))

(assert (=> d!729829 d!729973))

(declare-fun d!729975 () Bool)

(declare-fun c!415607 () Bool)

(assert (=> d!729975 (= c!415607 (is-Nil!29708 lt!907650))))

(declare-fun e!1627898 () (Set (_ BitVec 16)))

(assert (=> d!729975 (= (content!4091 lt!907650) e!1627898)))

(declare-fun b!2579686 () Bool)

(assert (=> b!2579686 (= e!1627898 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579687 () Bool)

(assert (=> b!2579687 (= e!1627898 (set.union (set.insert (h!35128 lt!907650) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907650))))))

(assert (= (and d!729975 c!415607) b!2579686))

(assert (= (and d!729975 (not c!415607)) b!2579687))

(declare-fun m!2914813 () Bool)

(assert (=> b!2579687 m!2914813))

(declare-fun m!2914815 () Bool)

(assert (=> b!2579687 m!2914815))

(assert (=> d!729859 d!729975))

(declare-fun d!729977 () Bool)

(declare-fun c!415608 () Bool)

(assert (=> d!729977 (= c!415608 (is-Nil!29708 (list!11217 (left!22632 (c!415433 x!464697)))))))

(declare-fun e!1627899 () (Set (_ BitVec 16)))

(assert (=> d!729977 (= (content!4091 (list!11217 (left!22632 (c!415433 x!464697)))) e!1627899)))

(declare-fun b!2579688 () Bool)

(assert (=> b!2579688 (= e!1627899 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579689 () Bool)

(assert (=> b!2579689 (= e!1627899 (set.union (set.insert (h!35128 (list!11217 (left!22632 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))))))

(assert (= (and d!729977 c!415608) b!2579688))

(assert (= (and d!729977 (not c!415608)) b!2579689))

(declare-fun m!2914817 () Bool)

(assert (=> b!2579689 m!2914817))

(declare-fun m!2914819 () Bool)

(assert (=> b!2579689 m!2914819))

(assert (=> d!729859 d!729977))

(declare-fun d!729979 () Bool)

(declare-fun c!415609 () Bool)

(assert (=> d!729979 (= c!415609 (is-Nil!29708 (list!11217 (right!22962 (c!415433 x!464697)))))))

(declare-fun e!1627900 () (Set (_ BitVec 16)))

(assert (=> d!729979 (= (content!4091 (list!11217 (right!22962 (c!415433 x!464697)))) e!1627900)))

(declare-fun b!2579690 () Bool)

(assert (=> b!2579690 (= e!1627900 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579691 () Bool)

(assert (=> b!2579691 (= e!1627900 (set.union (set.insert (h!35128 (list!11217 (right!22962 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(assert (= (and d!729979 c!415609) b!2579690))

(assert (= (and d!729979 (not c!415609)) b!2579691))

(declare-fun m!2914821 () Bool)

(assert (=> b!2579691 m!2914821))

(declare-fun m!2914823 () Bool)

(assert (=> b!2579691 m!2914823))

(assert (=> d!729859 d!729979))

(declare-fun d!729981 () Bool)

(declare-fun e!1627902 () Bool)

(assert (=> d!729981 e!1627902))

(declare-fun res!1085109 () Bool)

(assert (=> d!729981 (=> (not res!1085109) (not e!1627902))))

(declare-fun lt!907690 () List!29808)

(assert (=> d!729981 (= res!1085109 (= (content!4091 lt!907690) (set.union (content!4091 (t!211695 (list!11217 (c!415433 x!464697)))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1627901 () List!29808)

(assert (=> d!729981 (= lt!907690 e!1627901)))

(declare-fun c!415610 () Bool)

(assert (=> d!729981 (= c!415610 (is-Nil!29708 (t!211695 (list!11217 (c!415433 x!464697)))))))

(assert (=> d!729981 (= (++!7292 (t!211695 (list!11217 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))) lt!907690)))

(declare-fun b!2579692 () Bool)

(assert (=> b!2579692 (= e!1627901 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579695 () Bool)

(assert (=> b!2579695 (= e!1627902 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907690 (t!211695 (list!11217 (c!415433 x!464697))))))))

(declare-fun b!2579693 () Bool)

(assert (=> b!2579693 (= e!1627901 (Cons!29708 (h!35128 (t!211695 (list!11217 (c!415433 x!464697)))) (++!7292 (t!211695 (t!211695 (list!11217 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579694 () Bool)

(declare-fun res!1085110 () Bool)

(assert (=> b!2579694 (=> (not res!1085110) (not e!1627902))))

(assert (=> b!2579694 (= res!1085110 (= (size!23031 lt!907690) (+ (size!23031 (t!211695 (list!11217 (c!415433 x!464697)))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!729981 c!415610) b!2579692))

(assert (= (and d!729981 (not c!415610)) b!2579693))

(assert (= (and d!729981 res!1085109) b!2579694))

(assert (= (and b!2579694 res!1085110) b!2579695))

(declare-fun m!2914825 () Bool)

(assert (=> d!729981 m!2914825))

(assert (=> d!729981 m!2914453))

(assert (=> d!729981 m!2914321))

(assert (=> d!729981 m!2914393))

(assert (=> b!2579693 m!2914321))

(declare-fun m!2914827 () Bool)

(assert (=> b!2579693 m!2914827))

(declare-fun m!2914829 () Bool)

(assert (=> b!2579694 m!2914829))

(assert (=> b!2579694 m!2914767))

(assert (=> b!2579694 m!2914321))

(assert (=> b!2579694 m!2914401))

(assert (=> b!2579464 d!729981))

(declare-fun tp!819383 () Bool)

(declare-fun e!1627903 () Bool)

(declare-fun b!2579696 () Bool)

(declare-fun tp!819384 () Bool)

(assert (=> b!2579696 (= e!1627903 (and (inv!40081 (left!22632 (left!22632 (c!415433 x!464697)))) tp!819383 (inv!40081 (right!22962 (left!22632 (c!415433 x!464697)))) tp!819384))))

(declare-fun b!2579697 () Bool)

(assert (=> b!2579697 (= e!1627903 (inv!40087 (xs!12252 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579444 (= tp!819375 (and (inv!40081 (left!22632 (c!415433 x!464697))) e!1627903))))

(assert (= (and b!2579444 (is-Node!9268 (left!22632 (c!415433 x!464697)))) b!2579696))

(assert (= (and b!2579444 (is-Leaf!14139 (left!22632 (c!415433 x!464697)))) b!2579697))

(declare-fun m!2914831 () Bool)

(assert (=> b!2579696 m!2914831))

(declare-fun m!2914833 () Bool)

(assert (=> b!2579696 m!2914833))

(declare-fun m!2914835 () Bool)

(assert (=> b!2579697 m!2914835))

(assert (=> b!2579444 m!2914373))

(declare-fun tp!819385 () Bool)

(declare-fun b!2579698 () Bool)

(declare-fun e!1627905 () Bool)

(declare-fun tp!819386 () Bool)

(assert (=> b!2579698 (= e!1627905 (and (inv!40081 (left!22632 (right!22962 (c!415433 x!464697)))) tp!819385 (inv!40081 (right!22962 (right!22962 (c!415433 x!464697)))) tp!819386))))

(declare-fun b!2579699 () Bool)

(assert (=> b!2579699 (= e!1627905 (inv!40087 (xs!12252 (right!22962 (c!415433 x!464697)))))))

(assert (=> b!2579444 (= tp!819376 (and (inv!40081 (right!22962 (c!415433 x!464697))) e!1627905))))

(assert (= (and b!2579444 (is-Node!9268 (right!22962 (c!415433 x!464697)))) b!2579698))

(assert (= (and b!2579444 (is-Leaf!14139 (right!22962 (c!415433 x!464697)))) b!2579699))

(declare-fun m!2914837 () Bool)

(assert (=> b!2579698 m!2914837))

(declare-fun m!2914839 () Bool)

(assert (=> b!2579698 m!2914839))

(declare-fun m!2914841 () Bool)

(assert (=> b!2579699 m!2914841))

(assert (=> b!2579444 m!2914375))

(push 1)

(assert (not b!2579655))

(assert (not b!2579658))

(assert (not b!2579500))

(assert (not b!2579594))

(assert (not b!2579519))

(assert (not d!729929))

(assert (not b!2579608))

(assert (not b!2579602))

(assert (not d!729967))

(assert (not b!2579684))

(assert (not b!2579609))

(assert (not b!2579498))

(assert (not d!729947))

(assert (not d!729927))

(assert (not b!2579502))

(assert (not d!729949))

(assert (not b!2579670))

(assert (not d!729837))

(assert (not b!2579673))

(assert (not b!2579603))

(assert (not b!2579698))

(assert (not b!2579626))

(assert (not d!729839))

(assert (not b!2579671))

(assert (not b!2579512))

(assert (not b!2579656))

(assert (not b!2579639))

(assert (not b!2579664))

(assert (not b!2579636))

(assert (not d!729981))

(assert (not b!2579508))

(assert (not b!2579580))

(assert (not b!2579520))

(assert (not b!2579596))

(assert (not b!2579617))

(assert (not b!2579528))

(assert (not d!729939))

(assert (not b!2579584))

(assert (not b!2579699))

(assert (not b!2579582))

(assert (not d!729831))

(assert (not b!2579613))

(assert (not d!729833))

(assert (not b!2579691))

(assert (not d!729941))

(assert (not b!2579624))

(assert (not b!2579693))

(assert (not d!729943))

(assert (not d!729973))

(assert (not b!2579697))

(assert (not d!729945))

(assert (not b!2579687))

(assert (not b!2579589))

(assert (not d!729933))

(assert (not b!2579681))

(assert (not b!2579654))

(assert (not d!729957))

(assert (not d!729965))

(assert (not b!2579588))

(assert (not b!2579507))

(assert (not b!2579677))

(assert (not b!2579513))

(assert (not d!729825))

(assert (not d!729959))

(assert (not b!2579524))

(assert (not b!2579694))

(assert (not d!729971))

(assert (not b!2579444))

(assert (not b!2579591))

(assert (not d!729835))

(assert (not b!2579529))

(assert (not d!729841))

(assert (not d!729931))

(assert (not b!2579525))

(assert (not b!2579616))

(assert (not b!2579657))

(assert (not b!2579592))

(assert (not b!2579680))

(assert (not b!2579516))

(assert (not b!2579612))

(assert (not b!2579682))

(assert (not bm!166727))

(assert (not b!2579628))

(assert (not b!2579685))

(assert (not b!2579696))

(assert (not b!2579668))

(assert (not b!2579597))

(assert (not b!2579517))

(assert (not b!2579689))

(assert (not b!2579640))

(assert (not d!729961))

(assert (not b!2579505))

(assert (not bm!166726))

(assert (not b!2579587))

(assert (not b!2579659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730047 () Bool)

(declare-fun c!415645 () Bool)

(assert (=> d!730047 (= c!415645 (is-Nil!29708 lt!907679))))

(declare-fun e!1627968 () (Set (_ BitVec 16)))

(assert (=> d!730047 (= (content!4091 lt!907679) e!1627968)))

(declare-fun b!2579821 () Bool)

(assert (=> b!2579821 (= e!1627968 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579822 () Bool)

(assert (=> b!2579822 (= e!1627968 (set.union (set.insert (h!35128 lt!907679) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907679))))))

(assert (= (and d!730047 c!415645) b!2579821))

(assert (= (and d!730047 (not c!415645)) b!2579822))

(declare-fun m!2915033 () Bool)

(assert (=> b!2579822 m!2915033))

(declare-fun m!2915035 () Bool)

(assert (=> b!2579822 m!2915035))

(assert (=> d!729949 d!730047))

(declare-fun d!730049 () Bool)

(declare-fun c!415646 () Bool)

(assert (=> d!730049 (= c!415646 (is-Nil!29708 lt!907623))))

(declare-fun e!1627969 () (Set (_ BitVec 16)))

(assert (=> d!730049 (= (content!4091 lt!907623) e!1627969)))

(declare-fun b!2579823 () Bool)

(assert (=> b!2579823 (= e!1627969 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579824 () Bool)

(assert (=> b!2579824 (= e!1627969 (set.union (set.insert (h!35128 lt!907623) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907623))))))

(assert (= (and d!730049 c!415646) b!2579823))

(assert (= (and d!730049 (not c!415646)) b!2579824))

(declare-fun m!2915037 () Bool)

(assert (=> b!2579824 m!2915037))

(declare-fun m!2915039 () Bool)

(assert (=> b!2579824 m!2915039))

(assert (=> d!729949 d!730049))

(declare-fun d!730051 () Bool)

(declare-fun c!415647 () Bool)

(assert (=> d!730051 (= c!415647 (is-Nil!29708 call!166727))))

(declare-fun e!1627970 () (Set (_ BitVec 16)))

(assert (=> d!730051 (= (content!4091 call!166727) e!1627970)))

(declare-fun b!2579825 () Bool)

(assert (=> b!2579825 (= e!1627970 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579826 () Bool)

(assert (=> b!2579826 (= e!1627970 (set.union (set.insert (h!35128 call!166727) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 call!166727))))))

(assert (= (and d!730051 c!415647) b!2579825))

(assert (= (and d!730051 (not c!415647)) b!2579826))

(declare-fun m!2915041 () Bool)

(assert (=> b!2579826 m!2915041))

(declare-fun m!2915043 () Bool)

(assert (=> b!2579826 m!2915043))

(assert (=> d!729949 d!730051))

(declare-fun d!730053 () Bool)

(declare-fun lt!907722 () List!29808)

(assert (=> d!730053 (= lt!907722 (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))

(assert (=> d!730053 (= lt!907722 (efficientList!387 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> d!730053 (= (efficientList!385 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) lt!907722)))

(declare-fun bs!471166 () Bool)

(assert (= bs!471166 d!730053))

(assert (=> bs!471166 m!2914229))

(assert (=> bs!471166 m!2914235))

(declare-fun m!2915045 () Bool)

(assert (=> bs!471166 m!2915045))

(assert (=> bs!471166 m!2915045))

(declare-fun m!2915047 () Bool)

(assert (=> bs!471166 m!2915047))

(assert (=> d!729971 d!730053))

(declare-fun d!730055 () Bool)

(assert (=> d!730055 (= (list!11215 lt!907663) (list!11217 (c!415433 lt!907663)))))

(declare-fun bs!471167 () Bool)

(assert (= bs!471167 d!730055))

(declare-fun m!2915049 () Bool)

(assert (=> bs!471167 m!2915049))

(assert (=> d!729931 d!730055))

(declare-fun d!730057 () Bool)

(declare-fun e!1627971 () Bool)

(assert (=> d!730057 e!1627971))

(declare-fun res!1085163 () Bool)

(assert (=> d!730057 (=> (not res!1085163) (not e!1627971))))

(declare-fun lt!907723 () Conc!9268)

(assert (=> d!730057 (= res!1085163 (= (list!11217 lt!907723) (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(assert (=> d!730057 (= lt!907723 (choose!15207 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(assert (=> d!730057 (= (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) lt!907723)))

(declare-fun b!2579827 () Bool)

(assert (=> b!2579827 (= e!1627971 (isBalanced!2825 lt!907723))))

(assert (= (and d!730057 res!1085163) b!2579827))

(declare-fun m!2915051 () Bool)

(assert (=> d!730057 m!2915051))

(declare-fun m!2915053 () Bool)

(assert (=> d!730057 m!2915053))

(declare-fun m!2915055 () Bool)

(assert (=> b!2579827 m!2915055))

(assert (=> d!729931 d!730057))

(declare-fun d!730059 () Bool)

(declare-fun c!415648 () Bool)

(assert (=> d!730059 (= c!415648 (is-Nil!29708 (t!211695 lt!907631)))))

(declare-fun e!1627972 () (Set (_ BitVec 16)))

(assert (=> d!730059 (= (content!4091 (t!211695 lt!907631)) e!1627972)))

(declare-fun b!2579828 () Bool)

(assert (=> b!2579828 (= e!1627972 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579829 () Bool)

(assert (=> b!2579829 (= e!1627972 (set.union (set.insert (h!35128 (t!211695 lt!907631)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907631)))))))

(assert (= (and d!730059 c!415648) b!2579828))

(assert (= (and d!730059 (not c!415648)) b!2579829))

(declare-fun m!2915057 () Bool)

(assert (=> b!2579829 m!2915057))

(declare-fun m!2915059 () Bool)

(assert (=> b!2579829 m!2915059))

(assert (=> b!2579498 d!730059))

(declare-fun d!730061 () Bool)

(declare-fun c!415649 () Bool)

(assert (=> d!730061 (= c!415649 (is-Nil!29708 lt!907664))))

(declare-fun e!1627973 () (Set (_ BitVec 16)))

(assert (=> d!730061 (= (content!4091 lt!907664) e!1627973)))

(declare-fun b!2579830 () Bool)

(assert (=> b!2579830 (= e!1627973 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579831 () Bool)

(assert (=> b!2579831 (= e!1627973 (set.union (set.insert (h!35128 lt!907664) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907664))))))

(assert (= (and d!730061 c!415649) b!2579830))

(assert (= (and d!730061 (not c!415649)) b!2579831))

(declare-fun m!2915061 () Bool)

(assert (=> b!2579831 m!2915061))

(declare-fun m!2915063 () Bool)

(assert (=> b!2579831 m!2915063))

(assert (=> d!729939 d!730061))

(declare-fun d!730063 () Bool)

(declare-fun c!415650 () Bool)

(assert (=> d!730063 (= c!415650 (is-Nil!29708 (++!7292 lt!907623 lt!907622)))))

(declare-fun e!1627974 () (Set (_ BitVec 16)))

(assert (=> d!730063 (= (content!4091 (++!7292 lt!907623 lt!907622)) e!1627974)))

(declare-fun b!2579832 () Bool)

(assert (=> b!2579832 (= e!1627974 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579833 () Bool)

(assert (=> b!2579833 (= e!1627974 (set.union (set.insert (h!35128 (++!7292 lt!907623 lt!907622)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (++!7292 lt!907623 lt!907622)))))))

(assert (= (and d!730063 c!415650) b!2579832))

(assert (= (and d!730063 (not c!415650)) b!2579833))

(declare-fun m!2915065 () Bool)

(assert (=> b!2579833 m!2915065))

(declare-fun m!2915067 () Bool)

(assert (=> b!2579833 m!2915067))

(assert (=> d!729939 d!730063))

(assert (=> d!729939 d!729851))

(declare-fun d!730065 () Bool)

(declare-fun c!415651 () Bool)

(assert (=> d!730065 (= c!415651 (is-Nil!29708 lt!907690))))

(declare-fun e!1627975 () (Set (_ BitVec 16)))

(assert (=> d!730065 (= (content!4091 lt!907690) e!1627975)))

(declare-fun b!2579834 () Bool)

(assert (=> b!2579834 (= e!1627975 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579835 () Bool)

(assert (=> b!2579835 (= e!1627975 (set.union (set.insert (h!35128 lt!907690) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907690))))))

(assert (= (and d!730065 c!415651) b!2579834))

(assert (= (and d!730065 (not c!415651)) b!2579835))

(declare-fun m!2915069 () Bool)

(assert (=> b!2579835 m!2915069))

(declare-fun m!2915071 () Bool)

(assert (=> b!2579835 m!2915071))

(assert (=> d!729981 d!730065))

(declare-fun d!730067 () Bool)

(declare-fun c!415652 () Bool)

(assert (=> d!730067 (= c!415652 (is-Nil!29708 (t!211695 (list!11217 (c!415433 x!464697)))))))

(declare-fun e!1627976 () (Set (_ BitVec 16)))

(assert (=> d!730067 (= (content!4091 (t!211695 (list!11217 (c!415433 x!464697)))) e!1627976)))

(declare-fun b!2579836 () Bool)

(assert (=> b!2579836 (= e!1627976 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579837 () Bool)

(assert (=> b!2579837 (= e!1627976 (set.union (set.insert (h!35128 (t!211695 (list!11217 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (list!11217 (c!415433 x!464697)))))))))

(assert (= (and d!730067 c!415652) b!2579836))

(assert (= (and d!730067 (not c!415652)) b!2579837))

(declare-fun m!2915073 () Bool)

(assert (=> b!2579837 m!2915073))

(declare-fun m!2915075 () Bool)

(assert (=> b!2579837 m!2915075))

(assert (=> d!729981 d!730067))

(assert (=> d!729981 d!729851))

(declare-fun d!730069 () Bool)

(declare-fun c!415653 () Bool)

(assert (=> d!730069 (= c!415653 (is-Nil!29708 lt!907678))))

(declare-fun e!1627977 () (Set (_ BitVec 16)))

(assert (=> d!730069 (= (content!4091 lt!907678) e!1627977)))

(declare-fun b!2579838 () Bool)

(assert (=> b!2579838 (= e!1627977 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579839 () Bool)

(assert (=> b!2579839 (= e!1627977 (set.union (set.insert (h!35128 lt!907678) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907678))))))

(assert (= (and d!730069 c!415653) b!2579838))

(assert (= (and d!730069 (not c!415653)) b!2579839))

(declare-fun m!2915077 () Bool)

(assert (=> b!2579839 m!2915077))

(declare-fun m!2915079 () Bool)

(assert (=> b!2579839 m!2915079))

(assert (=> d!729947 d!730069))

(assert (=> d!729947 d!730049))

(declare-fun d!730071 () Bool)

(declare-fun c!415654 () Bool)

(assert (=> d!730071 (= c!415654 (is-Nil!29708 lt!907622))))

(declare-fun e!1627978 () (Set (_ BitVec 16)))

(assert (=> d!730071 (= (content!4091 lt!907622) e!1627978)))

(declare-fun b!2579840 () Bool)

(assert (=> b!2579840 (= e!1627978 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579841 () Bool)

(assert (=> b!2579841 (= e!1627978 (set.union (set.insert (h!35128 lt!907622) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907622))))))

(assert (= (and d!730071 c!415654) b!2579840))

(assert (= (and d!730071 (not c!415654)) b!2579841))

(declare-fun m!2915081 () Bool)

(assert (=> b!2579841 m!2915081))

(declare-fun m!2915083 () Bool)

(assert (=> b!2579841 m!2915083))

(assert (=> d!729947 d!730071))

(declare-fun d!730073 () Bool)

(assert (=> d!730073 (= (seqFromList!3146 (Cons!29708 #x005B Nil!29708)) (fromListB!1421 (Cons!29708 #x005B Nil!29708)))))

(declare-fun bs!471168 () Bool)

(assert (= bs!471168 d!730073))

(declare-fun m!2915085 () Bool)

(assert (=> bs!471168 m!2915085))

(assert (=> d!729839 d!730073))

(declare-fun d!730075 () Bool)

(assert (=> d!730075 (= (seqFromList!3146 (Cons!29708 #x002C Nil!29708)) (fromListB!1421 (Cons!29708 #x002C Nil!29708)))))

(declare-fun bs!471169 () Bool)

(assert (= bs!471169 d!730075))

(declare-fun m!2915087 () Bool)

(assert (=> bs!471169 m!2915087))

(assert (=> d!729833 d!730075))

(declare-fun d!730077 () Bool)

(declare-fun c!415655 () Bool)

(assert (=> d!730077 (= c!415655 (is-Nil!29708 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun e!1627979 () (Set (_ BitVec 16)))

(assert (=> d!730077 (= (content!4091 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))) e!1627979)))

(declare-fun b!2579842 () Bool)

(assert (=> b!2579842 (= e!1627979 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2579843 () Bool)

(assert (=> b!2579843 (= e!1627979 (set.union (set.insert (h!35128 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730077 c!415655) b!2579842))

(assert (= (and d!730077 (not c!415655)) b!2579843))

(declare-fun m!2915089 () Bool)

(assert (=> b!2579843 m!2915089))

(declare-fun m!2915091 () Bool)

(assert (=> b!2579843 m!2915091))

(assert (=> b!2579502 d!730077))

(declare-fun d!730079 () Bool)

(declare-fun lt!907724 () Int)

(assert (=> d!730079 (>= lt!907724 0)))

(declare-fun e!1627980 () Int)

(assert (=> d!730079 (= lt!907724 e!1627980)))

(declare-fun c!415656 () Bool)

(assert (=> d!730079 (= c!415656 (is-Nil!29708 lt!907650))))

(assert (=> d!730079 (= (size!23031 lt!907650) lt!907724)))

(declare-fun b!2579844 () Bool)

(assert (=> b!2579844 (= e!1627980 0)))

(declare-fun b!2579845 () Bool)

(assert (=> b!2579845 (= e!1627980 (+ 1 (size!23031 (t!211695 lt!907650))))))

(assert (= (and d!730079 c!415656) b!2579844))

(assert (= (and d!730079 (not c!415656)) b!2579845))

(declare-fun m!2915093 () Bool)

(assert (=> b!2579845 m!2915093))

(assert (=> b!2579508 d!730079))

(declare-fun d!730081 () Bool)

(declare-fun lt!907725 () Int)

(assert (=> d!730081 (>= lt!907725 0)))

(declare-fun e!1627981 () Int)

(assert (=> d!730081 (= lt!907725 e!1627981)))

(declare-fun c!415657 () Bool)

(assert (=> d!730081 (= c!415657 (is-Nil!29708 (list!11217 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730081 (= (size!23031 (list!11217 (left!22632 (c!415433 x!464697)))) lt!907725)))

(declare-fun b!2579846 () Bool)

(assert (=> b!2579846 (= e!1627981 0)))

(declare-fun b!2579847 () Bool)

(assert (=> b!2579847 (= e!1627981 (+ 1 (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))))))

(assert (= (and d!730081 c!415657) b!2579846))

(assert (= (and d!730081 (not c!415657)) b!2579847))

(declare-fun m!2915095 () Bool)

(assert (=> b!2579847 m!2915095))

(assert (=> b!2579508 d!730081))

(declare-fun d!730083 () Bool)

(declare-fun lt!907726 () Int)

(assert (=> d!730083 (>= lt!907726 0)))

(declare-fun e!1627982 () Int)

(assert (=> d!730083 (= lt!907726 e!1627982)))

(declare-fun c!415658 () Bool)

(assert (=> d!730083 (= c!415658 (is-Nil!29708 (list!11217 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730083 (= (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))) lt!907726)))

(declare-fun b!2579848 () Bool)

(assert (=> b!2579848 (= e!1627982 0)))

(declare-fun b!2579849 () Bool)

(assert (=> b!2579849 (= e!1627982 (+ 1 (size!23031 (t!211695 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(assert (= (and d!730083 c!415658) b!2579848))

(assert (= (and d!730083 (not c!415658)) b!2579849))

(declare-fun m!2915097 () Bool)

(assert (=> b!2579849 m!2915097))

(assert (=> b!2579508 d!730083))

(declare-fun d!730085 () Bool)

(declare-fun e!1627983 () Bool)

(assert (=> d!730085 e!1627983))

(declare-fun res!1085164 () Bool)

(assert (=> d!730085 (=> (not res!1085164) (not e!1627983))))

(declare-fun lt!907727 () BalanceConc!18150)

(assert (=> d!730085 (= res!1085164 (= (list!11215 lt!907727) (value!145550 (toValue!11 thiss!3262 x!464697))))))

(assert (=> d!730085 (= lt!907727 (BalanceConc!18151 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))))))

(assert (=> d!730085 (= (fromListB!1421 (value!145550 (toValue!11 thiss!3262 x!464697))) lt!907727)))

(declare-fun b!2579850 () Bool)

(assert (=> b!2579850 (= e!1627983 (isBalanced!2825 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))))))

(assert (= (and d!730085 res!1085164) b!2579850))

(declare-fun m!2915099 () Bool)

(assert (=> d!730085 m!2915099))

(declare-fun m!2915101 () Bool)

(assert (=> d!730085 m!2915101))

(assert (=> b!2579850 m!2915101))

(assert (=> b!2579850 m!2915101))

(declare-fun m!2915103 () Bool)

(assert (=> b!2579850 m!2915103))

(assert (=> d!729825 d!730085))

(declare-fun b!2579854 () Bool)

(declare-fun e!1627985 () List!29808)

(assert (=> b!2579854 (= e!1627985 (++!7292 (list!11217 (left!22632 lt!907662)) (list!11217 (right!22962 lt!907662))))))

(declare-fun d!730087 () Bool)

(declare-fun c!415659 () Bool)

(assert (=> d!730087 (= c!415659 (is-Empty!9268 lt!907662))))

(declare-fun e!1627984 () List!29808)

(assert (=> d!730087 (= (list!11217 lt!907662) e!1627984)))

(declare-fun b!2579853 () Bool)

(assert (=> b!2579853 (= e!1627985 (list!11219 (xs!12252 lt!907662)))))

(declare-fun b!2579852 () Bool)

(assert (=> b!2579852 (= e!1627984 e!1627985)))

(declare-fun c!415660 () Bool)

(assert (=> b!2579852 (= c!415660 (is-Leaf!14139 lt!907662))))

(declare-fun b!2579851 () Bool)

(assert (=> b!2579851 (= e!1627984 Nil!29708)))

(assert (= (and d!730087 c!415659) b!2579851))

(assert (= (and d!730087 (not c!415659)) b!2579852))

(assert (= (and b!2579852 c!415660) b!2579853))

(assert (= (and b!2579852 (not c!415660)) b!2579854))

(declare-fun m!2915105 () Bool)

(assert (=> b!2579854 m!2915105))

(declare-fun m!2915107 () Bool)

(assert (=> b!2579854 m!2915107))

(assert (=> b!2579854 m!2915105))

(assert (=> b!2579854 m!2915107))

(declare-fun m!2915109 () Bool)

(assert (=> b!2579854 m!2915109))

(declare-fun m!2915111 () Bool)

(assert (=> b!2579853 m!2915111))

(assert (=> d!729929 d!730087))

(declare-fun d!730089 () Bool)

(declare-fun e!1627993 () Bool)

(assert (=> d!730089 e!1627993))

(declare-fun res!1085170 () Bool)

(assert (=> d!730089 (=> (not res!1085170) (not e!1627993))))

(declare-fun res!1085169 () Conc!9268)

(assert (=> d!730089 (= res!1085170 (= (list!11217 res!1085169) (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))

(declare-fun e!1627992 () Bool)

(assert (=> d!730089 (and (inv!40081 res!1085169) e!1627992)))

(assert (=> d!730089 (= (choose!15207 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))) res!1085169)))

(declare-fun tp!819395 () Bool)

(declare-fun b!2579861 () Bool)

(declare-fun tp!819396 () Bool)

(assert (=> b!2579861 (= e!1627992 (and (inv!40081 (left!22632 res!1085169)) tp!819396 (inv!40081 (right!22962 res!1085169)) tp!819395))))

(declare-fun b!2579862 () Bool)

(assert (=> b!2579862 (= e!1627992 (inv!40087 (xs!12252 res!1085169)))))

(declare-fun b!2579863 () Bool)

(assert (=> b!2579863 (= e!1627993 (isBalanced!2825 res!1085169))))

(assert (= (and d!730089 (is-Node!9268 res!1085169)) b!2579861))

(assert (= (and d!730089 (is-Leaf!14139 res!1085169)) b!2579862))

(assert (= (and d!730089 res!1085170) b!2579863))

(declare-fun m!2915113 () Bool)

(assert (=> d!730089 m!2915113))

(declare-fun m!2915115 () Bool)

(assert (=> d!730089 m!2915115))

(declare-fun m!2915117 () Bool)

(assert (=> b!2579861 m!2915117))

(declare-fun m!2915119 () Bool)

(assert (=> b!2579861 m!2915119))

(declare-fun m!2915121 () Bool)

(assert (=> b!2579862 m!2915121))

(declare-fun m!2915123 () Bool)

(assert (=> b!2579863 m!2915123))

(assert (=> d!729929 d!730089))

(declare-fun d!730091 () Bool)

(assert (=> d!730091 (= (seqFromList!3146 (Cons!29708 #x007D Nil!29708)) (fromListB!1421 (Cons!29708 #x007D Nil!29708)))))

(declare-fun bs!471170 () Bool)

(assert (= bs!471170 d!730091))

(declare-fun m!2915125 () Bool)

(assert (=> bs!471170 m!2915125))

(assert (=> d!729835 d!730091))

(declare-fun d!730093 () Bool)

(assert (=> d!730093 (= (seqFromList!3146 (Cons!29708 #x007B Nil!29708)) (fromListB!1421 (Cons!29708 #x007B Nil!29708)))))

(declare-fun bs!471171 () Bool)

(assert (= bs!471171 d!730093))

(declare-fun m!2915127 () Bool)

(assert (=> bs!471171 m!2915127))

(assert (=> d!729841 d!730093))

(assert (=> d!729943 d!729939))

(assert (=> d!729943 d!729947))

(declare-fun d!730095 () Bool)

(assert (=> d!730095 (= (++!7292 (++!7292 lt!907623 lt!907622) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907623 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730095 true))

(declare-fun _$15!494 () Unit!43542)

(assert (=> d!730095 (= (choose!15208 lt!907623 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))) _$15!494)))

(declare-fun bs!471172 () Bool)

(assert (= bs!471172 d!730095))

(assert (=> bs!471172 m!2914347))

(assert (=> bs!471172 m!2914347))

(assert (=> bs!471172 m!2914321))

(assert (=> bs!471172 m!2914349))

(assert (=> bs!471172 m!2914321))

(assert (=> bs!471172 m!2914717))

(assert (=> bs!471172 m!2914717))

(assert (=> bs!471172 m!2914721))

(assert (=> d!729943 d!730095))

(declare-fun d!730097 () Bool)

(declare-fun e!1627996 () Bool)

(assert (=> d!730097 e!1627996))

(declare-fun res!1085171 () Bool)

(assert (=> d!730097 (=> (not res!1085171) (not e!1627996))))

(declare-fun lt!907728 () List!29808)

(assert (=> d!730097 (= res!1085171 (= (content!4091 lt!907728) (set.union (content!4091 lt!907623) (content!4091 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1627995 () List!29808)

(assert (=> d!730097 (= lt!907728 e!1627995)))

(declare-fun c!415661 () Bool)

(assert (=> d!730097 (= c!415661 (is-Nil!29708 lt!907623))))

(assert (=> d!730097 (= (++!7292 lt!907623 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))) lt!907728)))

(declare-fun b!2579864 () Bool)

(assert (=> b!2579864 (= e!1627995 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2579867 () Bool)

(assert (=> b!2579867 (= e!1627996 (or (not (= (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907728 lt!907623)))))

(declare-fun b!2579865 () Bool)

(assert (=> b!2579865 (= e!1627995 (Cons!29708 (h!35128 lt!907623) (++!7292 (t!211695 lt!907623) (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2579866 () Bool)

(declare-fun res!1085172 () Bool)

(assert (=> b!2579866 (=> (not res!1085172) (not e!1627996))))

(assert (=> b!2579866 (= res!1085172 (= (size!23031 lt!907728) (+ (size!23031 lt!907623) (size!23031 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730097 c!415661) b!2579864))

(assert (= (and d!730097 (not c!415661)) b!2579865))

(assert (= (and d!730097 res!1085171) b!2579866))

(assert (= (and b!2579866 res!1085172) b!2579867))

(declare-fun m!2915129 () Bool)

(assert (=> d!730097 m!2915129))

(assert (=> d!730097 m!2914743))

(assert (=> d!730097 m!2914717))

(declare-fun m!2915131 () Bool)

(assert (=> d!730097 m!2915131))

(assert (=> b!2579865 m!2914717))

(declare-fun m!2915133 () Bool)

(assert (=> b!2579865 m!2915133))

(declare-fun m!2915135 () Bool)

(assert (=> b!2579866 m!2915135))

(assert (=> b!2579866 m!2914751))

(assert (=> b!2579866 m!2914717))

(declare-fun m!2915137 () Bool)

(assert (=> b!2579866 m!2915137))

(assert (=> d!729943 d!730097))

(declare-fun d!730099 () Bool)

(declare-fun e!1627998 () Bool)

(assert (=> d!730099 e!1627998))

(declare-fun res!1085173 () Bool)

(assert (=> d!730099 (=> (not res!1085173) (not e!1627998))))

(declare-fun lt!907729 () List!29808)

(assert (=> d!730099 (= res!1085173 (= (content!4091 lt!907729) (set.union (content!4091 lt!907622) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1627997 () List!29808)

(assert (=> d!730099 (= lt!907729 e!1627997)))

(declare-fun c!415662 () Bool)

(assert (=> d!730099 (= c!415662 (is-Nil!29708 lt!907622))))

(assert (=> d!730099 (= (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))) lt!907729)))

(declare-fun b!2579868 () Bool)

(assert (=> b!2579868 (= e!1627997 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579871 () Bool)

(assert (=> b!2579871 (= e!1627998 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907729 lt!907622)))))

(declare-fun b!2579869 () Bool)

(assert (=> b!2579869 (= e!1627997 (Cons!29708 (h!35128 lt!907622) (++!7292 (t!211695 lt!907622) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579870 () Bool)

(declare-fun res!1085174 () Bool)

(assert (=> b!2579870 (=> (not res!1085174) (not e!1627998))))

(assert (=> b!2579870 (= res!1085174 (= (size!23031 lt!907729) (+ (size!23031 lt!907622) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730099 c!415662) b!2579868))

(assert (= (and d!730099 (not c!415662)) b!2579869))

(assert (= (and d!730099 res!1085173) b!2579870))

(assert (= (and b!2579870 res!1085174) b!2579871))

(declare-fun m!2915139 () Bool)

(assert (=> d!730099 m!2915139))

(assert (=> d!730099 m!2914745))

(assert (=> d!730099 m!2914321))

(assert (=> d!730099 m!2914393))

(assert (=> b!2579869 m!2914321))

(declare-fun m!2915141 () Bool)

(assert (=> b!2579869 m!2915141))

(declare-fun m!2915143 () Bool)

(assert (=> b!2579870 m!2915143))

(assert (=> b!2579870 m!2914753))

(assert (=> b!2579870 m!2914321))

(assert (=> b!2579870 m!2914401))

(assert (=> d!729943 d!730099))

(declare-fun d!730101 () Bool)

(declare-fun e!1628000 () Bool)

(assert (=> d!730101 e!1628000))

(declare-fun res!1085175 () Bool)

(assert (=> d!730101 (=> (not res!1085175) (not e!1628000))))

(declare-fun lt!907730 () List!29808)

(assert (=> d!730101 (= res!1085175 (= (content!4091 lt!907730) (set.union (content!4091 (list!11217 (left!22632 (c!415433 x!464697)))) (content!4091 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1627999 () List!29808)

(assert (=> d!730101 (= lt!907730 e!1627999)))

(declare-fun c!415663 () Bool)

(assert (=> d!730101 (= c!415663 (is-Nil!29708 (list!11217 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730101 (= (++!7292 (list!11217 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907730)))

(declare-fun b!2579872 () Bool)

(assert (=> b!2579872 (= e!1627999 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2579875 () Bool)

(assert (=> b!2579875 (= e!1628000 (or (not (= (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907730 (list!11217 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2579873 () Bool)

(assert (=> b!2579873 (= e!1627999 (Cons!29708 (h!35128 (list!11217 (left!22632 (c!415433 x!464697)))) (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2579874 () Bool)

(declare-fun res!1085176 () Bool)

(assert (=> b!2579874 (=> (not res!1085176) (not e!1628000))))

(assert (=> b!2579874 (= res!1085176 (= (size!23031 lt!907730) (+ (size!23031 (list!11217 (left!22632 (c!415433 x!464697)))) (size!23031 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730101 c!415663) b!2579872))

(assert (= (and d!730101 (not c!415663)) b!2579873))

(assert (= (and d!730101 res!1085175) b!2579874))

(assert (= (and b!2579874 res!1085176) b!2579875))

(declare-fun m!2915145 () Bool)

(assert (=> d!730101 m!2915145))

(assert (=> d!730101 m!2914313))

(assert (=> d!730101 m!2914469))

(assert (=> d!730101 m!2914351))

(declare-fun m!2915147 () Bool)

(assert (=> d!730101 m!2915147))

(assert (=> b!2579873 m!2914351))

(declare-fun m!2915149 () Bool)

(assert (=> b!2579873 m!2915149))

(declare-fun m!2915151 () Bool)

(assert (=> b!2579874 m!2915151))

(assert (=> b!2579874 m!2914313))

(assert (=> b!2579874 m!2914477))

(assert (=> b!2579874 m!2914351))

(declare-fun m!2915153 () Bool)

(assert (=> b!2579874 m!2915153))

(assert (=> d!729945 d!730101))

(assert (=> d!729945 d!729861))

(declare-fun b!2579876 () Bool)

(declare-fun e!1628001 () Bool)

(declare-fun e!1628002 () Bool)

(assert (=> b!2579876 (= e!1628001 e!1628002)))

(declare-fun res!1085181 () Bool)

(assert (=> b!2579876 (=> (not res!1085181) (not e!1628002))))

(assert (=> b!2579876 (= res!1085181 (<= (- 1) (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(declare-fun b!2579877 () Bool)

(assert (=> b!2579877 (= e!1628002 (not (isEmpty!17078 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(declare-fun b!2579878 () Bool)

(declare-fun res!1085177 () Bool)

(assert (=> b!2579878 (=> (not res!1085177) (not e!1628002))))

(assert (=> b!2579878 (= res!1085177 (isBalanced!2825 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))

(declare-fun b!2579879 () Bool)

(declare-fun res!1085179 () Bool)

(assert (=> b!2579879 (=> (not res!1085179) (not e!1628002))))

(assert (=> b!2579879 (= res!1085179 (<= (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))) 1))))

(declare-fun b!2579880 () Bool)

(declare-fun res!1085180 () Bool)

(assert (=> b!2579880 (=> (not res!1085180) (not e!1628002))))

(assert (=> b!2579880 (= res!1085180 (not (isEmpty!17078 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(declare-fun d!730103 () Bool)

(declare-fun res!1085182 () Bool)

(assert (=> d!730103 (=> res!1085182 e!1628001)))

(assert (=> d!730103 (= res!1085182 (not (is-Node!9268 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))

(assert (=> d!730103 (= (isBalanced!2825 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))) e!1628001)))

(declare-fun b!2579881 () Bool)

(declare-fun res!1085178 () Bool)

(assert (=> b!2579881 (=> (not res!1085178) (not e!1628002))))

(assert (=> b!2579881 (= res!1085178 (isBalanced!2825 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))

(assert (= (and d!730103 (not res!1085182)) b!2579876))

(assert (= (and b!2579876 res!1085181) b!2579879))

(assert (= (and b!2579879 res!1085179) b!2579881))

(assert (= (and b!2579881 res!1085178) b!2579878))

(assert (= (and b!2579878 res!1085177) b!2579880))

(assert (= (and b!2579880 res!1085180) b!2579877))

(declare-fun m!2915155 () Bool)

(assert (=> b!2579879 m!2915155))

(declare-fun m!2915157 () Bool)

(assert (=> b!2579879 m!2915157))

(declare-fun m!2915159 () Bool)

(assert (=> b!2579877 m!2915159))

(assert (=> b!2579876 m!2915155))

(assert (=> b!2579876 m!2915157))

(declare-fun m!2915161 () Bool)

(assert (=> b!2579881 m!2915161))

(declare-fun m!2915163 () Bool)

(assert (=> b!2579880 m!2915163))

(declare-fun m!2915165 () Bool)

(assert (=> b!2579878 m!2915165))

(assert (=> b!2579505 d!730103))

(assert (=> b!2579505 d!729929))

(declare-fun d!730105 () Bool)

(declare-fun lt!907731 () Int)

(assert (=> d!730105 (>= lt!907731 0)))

(declare-fun e!1628003 () Int)

(assert (=> d!730105 (= lt!907731 e!1628003)))

(declare-fun c!415664 () Bool)

(assert (=> d!730105 (= c!415664 (is-Nil!29708 lt!907651))))

(assert (=> d!730105 (= (size!23031 lt!907651) lt!907731)))

(declare-fun b!2579882 () Bool)

(assert (=> b!2579882 (= e!1628003 0)))

(declare-fun b!2579883 () Bool)

(assert (=> b!2579883 (= e!1628003 (+ 1 (size!23031 (t!211695 lt!907651))))))

(assert (= (and d!730105 c!415664) b!2579882))

(assert (= (and d!730105 (not c!415664)) b!2579883))

(declare-fun m!2915167 () Bool)

(assert (=> b!2579883 m!2915167))

(assert (=> b!2579520 d!730105))

(declare-fun d!730107 () Bool)

(declare-fun lt!907732 () Int)

(assert (=> d!730107 (>= lt!907732 0)))

(declare-fun e!1628004 () Int)

(assert (=> d!730107 (= lt!907732 e!1628004)))

(declare-fun c!415665 () Bool)

(assert (=> d!730107 (= c!415665 (is-Nil!29708 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(assert (=> d!730107 (= (size!23031 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) lt!907732)))

(declare-fun b!2579884 () Bool)

(assert (=> b!2579884 (= e!1628004 0)))

(declare-fun b!2579885 () Bool)

(assert (=> b!2579885 (= e!1628004 (+ 1 (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!730107 c!415665) b!2579884))

(assert (= (and d!730107 (not c!415665)) b!2579885))

(declare-fun m!2915169 () Bool)

(assert (=> b!2579885 m!2915169))

(assert (=> b!2579520 d!730107))

(declare-fun d!730109 () Bool)

(declare-fun lt!907733 () Int)

(assert (=> d!730109 (>= lt!907733 0)))

(declare-fun e!1628005 () Int)

(assert (=> d!730109 (= lt!907733 e!1628005)))

(declare-fun c!415666 () Bool)

(assert (=> d!730109 (= c!415666 (is-Nil!29708 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(assert (=> d!730109 (= (size!23031 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) lt!907733)))

(declare-fun b!2579886 () Bool)

(assert (=> b!2579886 (= e!1628005 0)))

(declare-fun b!2579887 () Bool)

(assert (=> b!2579887 (= e!1628005 (+ 1 (size!23031 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!730109 c!415666) b!2579886))

(assert (= (and d!730109 (not c!415666)) b!2579887))

(declare-fun m!2915171 () Bool)

(assert (=> b!2579887 m!2915171))

(assert (=> b!2579520 d!730109))

(declare-fun d!730111 () Bool)

(declare-fun e!1628007 () Bool)

(assert (=> d!730111 e!1628007))

(declare-fun res!1085183 () Bool)

(assert (=> d!730111 (=> (not res!1085183) (not e!1628007))))

(declare-fun lt!907734 () List!29808)

(assert (=> d!730111 (= res!1085183 (= (content!4091 lt!907734) (set.union (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (content!4091 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(declare-fun e!1628006 () List!29808)

(assert (=> d!730111 (= lt!907734 e!1628006)))

(declare-fun c!415667 () Bool)

(assert (=> d!730111 (= c!415667 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))

(assert (=> d!730111 (= (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))) (list!11217 (right!22962 (c!415433 x!464697)))) lt!907734)))

(declare-fun b!2579888 () Bool)

(assert (=> b!2579888 (= e!1628006 (list!11217 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2579891 () Bool)

(assert (=> b!2579891 (= e!1628007 (or (not (= (list!11217 (right!22962 (c!415433 x!464697))) Nil!29708)) (= lt!907734 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2579889 () Bool)

(assert (=> b!2579889 (= e!1628006 (Cons!29708 (h!35128 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (++!7292 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (list!11217 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2579890 () Bool)

(declare-fun res!1085184 () Bool)

(assert (=> b!2579890 (=> (not res!1085184) (not e!1628007))))

(assert (=> b!2579890 (= res!1085184 (= (size!23031 lt!907734) (+ (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(assert (= (and d!730111 c!415667) b!2579888))

(assert (= (and d!730111 (not c!415667)) b!2579889))

(assert (= (and d!730111 res!1085183) b!2579890))

(assert (= (and b!2579890 res!1085184) b!2579891))

(declare-fun m!2915173 () Bool)

(assert (=> d!730111 m!2915173))

(assert (=> d!730111 m!2914819))

(assert (=> d!730111 m!2914315))

(assert (=> d!730111 m!2914471))

(assert (=> b!2579889 m!2914315))

(declare-fun m!2915175 () Bool)

(assert (=> b!2579889 m!2915175))

(declare-fun m!2915177 () Bool)

(assert (=> b!2579890 m!2915177))

(assert (=> b!2579890 m!2915095))

(assert (=> b!2579890 m!2914315))

(assert (=> b!2579890 m!2914479))

(assert (=> b!2579507 d!730111))

(declare-fun d!730113 () Bool)

(assert (=> d!730113 (= (seqFromList!3146 (Cons!29708 #x003A Nil!29708)) (fromListB!1421 (Cons!29708 #x003A Nil!29708)))))

(declare-fun bs!471173 () Bool)

(assert (= bs!471173 d!730113))

(declare-fun m!2915179 () Bool)

(assert (=> bs!471173 m!2915179))

(assert (=> d!729831 d!730113))

(declare-fun d!730115 () Bool)

(declare-fun e!1628008 () Bool)

(assert (=> d!730115 e!1628008))

(declare-fun res!1085185 () Bool)

(assert (=> d!730115 (=> (not res!1085185) (not e!1628008))))

(declare-fun lt!907735 () BalanceConc!18150)

(assert (=> d!730115 (= res!1085185 (= (list!11215 lt!907735) (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(assert (=> d!730115 (= lt!907735 (BalanceConc!18151 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))))))

(assert (=> d!730115 (= (fromListB!1421 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) lt!907735)))

(declare-fun b!2579892 () Bool)

(assert (=> b!2579892 (= e!1628008 (isBalanced!2825 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))))))

(assert (= (and d!730115 res!1085185) b!2579892))

(declare-fun m!2915181 () Bool)

(assert (=> d!730115 m!2915181))

(declare-fun m!2915183 () Bool)

(assert (=> d!730115 m!2915183))

(assert (=> b!2579892 m!2915183))

(assert (=> b!2579892 m!2915183))

(declare-fun m!2915185 () Bool)

(assert (=> b!2579892 m!2915185))

(assert (=> d!729973 d!730115))

(assert (=> b!2579500 d!730067))

(declare-fun b!2579896 () Bool)

(declare-fun e!1628010 () List!29808)

(assert (=> b!2579896 (= e!1628010 (++!7292 (list!11217 (left!22632 (c!415433 lt!907649))) (list!11217 (right!22962 (c!415433 lt!907649)))))))

(declare-fun d!730117 () Bool)

(declare-fun c!415668 () Bool)

(assert (=> d!730117 (= c!415668 (is-Empty!9268 (c!415433 lt!907649)))))

(declare-fun e!1628009 () List!29808)

(assert (=> d!730117 (= (list!11217 (c!415433 lt!907649)) e!1628009)))

(declare-fun b!2579895 () Bool)

(assert (=> b!2579895 (= e!1628010 (list!11219 (xs!12252 (c!415433 lt!907649))))))

(declare-fun b!2579894 () Bool)

(assert (=> b!2579894 (= e!1628009 e!1628010)))

(declare-fun c!415669 () Bool)

(assert (=> b!2579894 (= c!415669 (is-Leaf!14139 (c!415433 lt!907649)))))

(declare-fun b!2579893 () Bool)

(assert (=> b!2579893 (= e!1628009 Nil!29708)))

(assert (= (and d!730117 c!415668) b!2579893))

(assert (= (and d!730117 (not c!415668)) b!2579894))

(assert (= (and b!2579894 c!415669) b!2579895))

(assert (= (and b!2579894 (not c!415669)) b!2579896))

(declare-fun m!2915187 () Bool)

(assert (=> b!2579896 m!2915187))

(declare-fun m!2915189 () Bool)

(assert (=> b!2579896 m!2915189))

(assert (=> b!2579896 m!2915187))

(assert (=> b!2579896 m!2915189))

(declare-fun m!2915191 () Bool)

(assert (=> b!2579896 m!2915191))

(declare-fun m!2915193 () Bool)

(assert (=> b!2579895 m!2915193))

(assert (=> d!729927 d!730117))

(declare-fun b!2579900 () Bool)

(declare-fun e!1628012 () List!29808)

(assert (=> b!2579900 (= e!1628012 (++!7292 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun d!730119 () Bool)

(declare-fun c!415670 () Bool)

(assert (=> d!730119 (= c!415670 (is-Empty!9268 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1628011 () List!29808)

(assert (=> d!730119 (= (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1628011)))

(declare-fun b!2579899 () Bool)

(assert (=> b!2579899 (= e!1628012 (list!11219 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2579898 () Bool)

(assert (=> b!2579898 (= e!1628011 e!1628012)))

(declare-fun c!415671 () Bool)

(assert (=> b!2579898 (= c!415671 (is-Leaf!14139 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2579897 () Bool)

(assert (=> b!2579897 (= e!1628011 Nil!29708)))

(assert (= (and d!730119 c!415670) b!2579897))

(assert (= (and d!730119 (not c!415670)) b!2579898))

(assert (= (and b!2579898 c!415671) b!2579899))

(assert (= (and b!2579898 (not c!415671)) b!2579900))

(declare-fun m!2915195 () Bool)

(assert (=> b!2579900 m!2915195))

(declare-fun m!2915197 () Bool)

(assert (=> b!2579900 m!2915197))

(assert (=> b!2579900 m!2915195))

(assert (=> b!2579900 m!2915197))

(declare-fun m!2915199 () Bool)

(assert (=> b!2579900 m!2915199))

(declare-fun m!2915201 () Bool)

(assert (=> b!2579899 m!2915201))

(assert (=> d!729967 d!730119))

(declare-fun d!730121 () Bool)

(assert (=> d!730121 (= (seqFromList!3146 (Cons!29708 #x005D Nil!29708)) (fromListB!1421 (Cons!29708 #x005D Nil!29708)))))

(declare-fun bs!471174 () Bool)

(assert (= bs!471174 d!730121))

(declare-fun m!2915203 () Bool)

(assert (=> bs!471174 m!2915203))

(assert (=> d!729837 d!730121))

(declare-fun d!730123 () Bool)

(declare-fun e!1628014 () Bool)

(assert (=> d!730123 e!1628014))

(declare-fun res!1085186 () Bool)

(assert (=> d!730123 (=> (not res!1085186) (not e!1628014))))

(declare-fun lt!907736 () List!29808)

(assert (=> d!730123 (= res!1085186 (= (content!4091 lt!907736) (set.union (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (content!4091 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun e!1628013 () List!29808)

(assert (=> d!730123 (= lt!907736 e!1628013)))

(declare-fun c!415672 () Bool)

(assert (=> d!730123 (= c!415672 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> d!730123 (= (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) lt!907736)))

(declare-fun b!2579901 () Bool)

(assert (=> b!2579901 (= e!1628013 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2579904 () Bool)

(assert (=> b!2579904 (= e!1628014 (or (not (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) Nil!29708)) (= lt!907736 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2579902 () Bool)

(assert (=> b!2579902 (= e!1628013 (Cons!29708 (h!35128 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (++!7292 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2579903 () Bool)

(declare-fun res!1085187 () Bool)

(assert (=> b!2579903 (=> (not res!1085187) (not e!1628014))))

(assert (=> b!2579903 (= res!1085187 (= (size!23031 lt!907736) (+ (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (size!23031 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!730123 c!415672) b!2579901))

(assert (= (and d!730123 (not c!415672)) b!2579902))

(assert (= (and d!730123 res!1085186) b!2579903))

(assert (= (and b!2579903 res!1085187) b!2579904))

(declare-fun m!2915205 () Bool)

(assert (=> d!730123 m!2915205))

(assert (=> d!730123 m!2914659))

(assert (=> d!730123 m!2914307))

(assert (=> d!730123 m!2914501))

(assert (=> b!2579902 m!2914307))

(declare-fun m!2915207 () Bool)

(assert (=> b!2579902 m!2915207))

(declare-fun m!2915209 () Bool)

(assert (=> b!2579903 m!2915209))

(assert (=> b!2579903 m!2915169))

(assert (=> b!2579903 m!2914307))

(assert (=> b!2579903 m!2914509))

(assert (=> b!2579519 d!730123))

(declare-fun d!730125 () Bool)

(declare-fun e!1628016 () Bool)

(assert (=> d!730125 e!1628016))

(declare-fun res!1085188 () Bool)

(assert (=> d!730125 (=> (not res!1085188) (not e!1628016))))

(declare-fun lt!907737 () List!29808)

(assert (=> d!730125 (= res!1085188 (= (content!4091 lt!907737) (set.union (content!4091 (list!11217 (right!22962 (c!415433 x!464697)))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628015 () List!29808)

(assert (=> d!730125 (= lt!907737 e!1628015)))

(declare-fun c!415673 () Bool)

(assert (=> d!730125 (= c!415673 (is-Nil!29708 (list!11217 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730125 (= (++!7292 (list!11217 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))) lt!907737)))

(declare-fun b!2579905 () Bool)

(assert (=> b!2579905 (= e!1628015 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2579908 () Bool)

(assert (=> b!2579908 (= e!1628016 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907737 (list!11217 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2579906 () Bool)

(assert (=> b!2579906 (= e!1628015 (Cons!29708 (h!35128 (list!11217 (right!22962 (c!415433 x!464697)))) (++!7292 (t!211695 (list!11217 (right!22962 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2579907 () Bool)

(declare-fun res!1085189 () Bool)

(assert (=> b!2579907 (=> (not res!1085189) (not e!1628016))))

(assert (=> b!2579907 (= res!1085189 (= (size!23031 lt!907737) (+ (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730125 c!415673) b!2579905))

(assert (= (and d!730125 (not c!415673)) b!2579906))

(assert (= (and d!730125 res!1085188) b!2579907))

(assert (= (and b!2579907 res!1085189) b!2579908))

(declare-fun m!2915211 () Bool)

(assert (=> d!730125 m!2915211))

(assert (=> d!730125 m!2914315))

(assert (=> d!730125 m!2914471))

(assert (=> d!730125 m!2914321))

(assert (=> d!730125 m!2914393))

(assert (=> b!2579906 m!2914321))

(declare-fun m!2915213 () Bool)

(assert (=> b!2579906 m!2915213))

(declare-fun m!2915215 () Bool)

(assert (=> b!2579907 m!2915215))

(assert (=> b!2579907 m!2914315))

(assert (=> b!2579907 m!2914479))

(assert (=> b!2579907 m!2914321))

(assert (=> b!2579907 m!2914401))

(assert (=> d!729941 d!730125))

(assert (=> d!729941 d!729863))

(push 1)

(assert (not b!2579862))

(assert (not b!2579658))

(assert (not b!2579691))

(assert (not b!2579863))

(assert (not b!2579608))

(assert (not b!2579826))

(assert (not b!2579602))

(assert (not b!2579876))

(assert (not b!2579684))

(assert (not b!2579847))

(assert (not b!2579609))

(assert (not d!730095))

(assert (not b!2579896))

(assert (not d!730099))

(assert (not b!2579839))

(assert (not d!730073))

(assert (not b!2579903))

(assert (not b!2579899))

(assert (not b!2579670))

(assert (not b!2579655))

(assert (not b!2579845))

(assert (not d!730075))

(assert (not b!2579878))

(assert (not b!2579883))

(assert (not b!2579673))

(assert (not b!2579603))

(assert (not b!2579698))

(assert (not b!2579906))

(assert (not b!2579626))

(assert (not b!2579671))

(assert (not b!2579512))

(assert (not b!2579656))

(assert (not b!2579639))

(assert (not b!2579822))

(assert (not b!2579664))

(assert (not b!2579854))

(assert (not d!730055))

(assert (not b!2579636))

(assert (not b!2579580))

(assert (not b!2579890))

(assert (not b!2579596))

(assert (not b!2579617))

(assert (not b!2579528))

(assert (not d!730057))

(assert (not d!730085))

(assert (not b!2579584))

(assert (not b!2579699))

(assert (not b!2579582))

(assert (not b!2579613))

(assert (not b!2579624))

(assert (not b!2579885))

(assert (not b!2579693))

(assert (not b!2579697))

(assert (not b!2579687))

(assert (not b!2579589))

(assert (not b!2579892))

(assert (not b!2579843))

(assert (not d!729933))

(assert (not b!2579681))

(assert (not b!2579654))

(assert (not d!729957))

(assert (not b!2579831))

(assert (not b!2579907))

(assert (not d!729965))

(assert (not b!2579588))

(assert (not b!2579677))

(assert (not b!2579513))

(assert (not d!729959))

(assert (not b!2579524))

(assert (not d!730101))

(assert (not b!2579694))

(assert (not b!2579902))

(assert (not d!730091))

(assert (not b!2579879))

(assert (not b!2579889))

(assert (not b!2579866))

(assert (not d!730111))

(assert (not b!2579444))

(assert (not b!2579591))

(assert (not b!2579835))

(assert (not d!730125))

(assert (not b!2579529))

(assert (not b!2579881))

(assert (not d!730115))

(assert (not b!2579827))

(assert (not b!2579877))

(assert (not b!2579525))

(assert (not b!2579616))

(assert (not b!2579657))

(assert (not d!730113))

(assert (not b!2579869))

(assert (not b!2579592))

(assert (not b!2579849))

(assert (not b!2579516))

(assert (not b!2579870))

(assert (not b!2579612))

(assert (not b!2579874))

(assert (not b!2579680))

(assert (not b!2579887))

(assert (not b!2579682))

(assert (not bm!166727))

(assert (not b!2579850))

(assert (not b!2579628))

(assert (not b!2579853))

(assert (not b!2579685))

(assert (not b!2579696))

(assert (not b!2579668))

(assert (not b!2579597))

(assert (not b!2579517))

(assert (not b!2579880))

(assert (not d!730053))

(assert (not b!2579689))

(assert (not b!2579873))

(assert (not d!730097))

(assert (not b!2579594))

(assert (not b!2579861))

(assert (not d!730089))

(assert (not b!2579837))

(assert (not b!2579841))

(assert (not b!2579865))

(assert (not d!730123))

(assert (not b!2579829))

(assert (not b!2579895))

(assert (not d!730093))

(assert (not b!2579900))

(assert (not b!2579640))

(assert (not b!2579824))

(assert (not d!729961))

(assert (not bm!166726))

(assert (not b!2579587))

(assert (not b!2579659))

(assert (not d!730121))

(assert (not b!2579833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730207 () Bool)

(declare-fun lt!907754 () Int)

(assert (=> d!730207 (>= lt!907754 0)))

(declare-fun e!1628066 () Int)

(assert (=> d!730207 (= lt!907754 e!1628066)))

(declare-fun c!415703 () Bool)

(assert (=> d!730207 (= c!415703 (is-Nil!29708 lt!907678))))

(assert (=> d!730207 (= (size!23031 lt!907678) lt!907754)))

(declare-fun b!2579997 () Bool)

(assert (=> b!2579997 (= e!1628066 0)))

(declare-fun b!2579998 () Bool)

(assert (=> b!2579998 (= e!1628066 (+ 1 (size!23031 (t!211695 lt!907678))))))

(assert (= (and d!730207 c!415703) b!2579997))

(assert (= (and d!730207 (not c!415703)) b!2579998))

(declare-fun m!2915401 () Bool)

(assert (=> b!2579998 m!2915401))

(assert (=> b!2579613 d!730207))

(declare-fun d!730209 () Bool)

(declare-fun lt!907755 () Int)

(assert (=> d!730209 (>= lt!907755 0)))

(declare-fun e!1628067 () Int)

(assert (=> d!730209 (= lt!907755 e!1628067)))

(declare-fun c!415704 () Bool)

(assert (=> d!730209 (= c!415704 (is-Nil!29708 lt!907623))))

(assert (=> d!730209 (= (size!23031 lt!907623) lt!907755)))

(declare-fun b!2579999 () Bool)

(assert (=> b!2579999 (= e!1628067 0)))

(declare-fun b!2580000 () Bool)

(assert (=> b!2580000 (= e!1628067 (+ 1 (size!23031 (t!211695 lt!907623))))))

(assert (= (and d!730209 c!415704) b!2579999))

(assert (= (and d!730209 (not c!415704)) b!2580000))

(declare-fun m!2915403 () Bool)

(assert (=> b!2580000 m!2915403))

(assert (=> b!2579613 d!730209))

(declare-fun d!730211 () Bool)

(declare-fun lt!907756 () Int)

(assert (=> d!730211 (>= lt!907756 0)))

(declare-fun e!1628068 () Int)

(assert (=> d!730211 (= lt!907756 e!1628068)))

(declare-fun c!415705 () Bool)

(assert (=> d!730211 (= c!415705 (is-Nil!29708 lt!907622))))

(assert (=> d!730211 (= (size!23031 lt!907622) lt!907756)))

(declare-fun b!2580001 () Bool)

(assert (=> b!2580001 (= e!1628068 0)))

(declare-fun b!2580002 () Bool)

(assert (=> b!2580002 (= e!1628068 (+ 1 (size!23031 (t!211695 lt!907622))))))

(assert (= (and d!730211 c!415705) b!2580001))

(assert (= (and d!730211 (not c!415705)) b!2580002))

(declare-fun m!2915405 () Bool)

(assert (=> b!2580002 m!2915405))

(assert (=> b!2579613 d!730211))

(declare-fun d!730213 () Bool)

(declare-fun c!415706 () Bool)

(assert (=> d!730213 (= c!415706 (is-Nil!29708 lt!907730))))

(declare-fun e!1628069 () (Set (_ BitVec 16)))

(assert (=> d!730213 (= (content!4091 lt!907730) e!1628069)))

(declare-fun b!2580003 () Bool)

(assert (=> b!2580003 (= e!1628069 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580004 () Bool)

(assert (=> b!2580004 (= e!1628069 (set.union (set.insert (h!35128 lt!907730) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907730))))))

(assert (= (and d!730213 c!415706) b!2580003))

(assert (= (and d!730213 (not c!415706)) b!2580004))

(declare-fun m!2915407 () Bool)

(assert (=> b!2580004 m!2915407))

(declare-fun m!2915409 () Bool)

(assert (=> b!2580004 m!2915409))

(assert (=> d!730101 d!730213))

(assert (=> d!730101 d!729977))

(declare-fun d!730215 () Bool)

(declare-fun c!415707 () Bool)

(assert (=> d!730215 (= c!415707 (is-Nil!29708 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun e!1628070 () (Set (_ BitVec 16)))

(assert (=> d!730215 (= (content!4091 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) e!1628070)))

(declare-fun b!2580005 () Bool)

(assert (=> b!2580005 (= e!1628070 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580006 () Bool)

(assert (=> b!2580006 (= e!1628070 (set.union (set.insert (h!35128 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730215 c!415707) b!2580005))

(assert (= (and d!730215 (not c!415707)) b!2580006))

(declare-fun m!2915411 () Bool)

(assert (=> b!2580006 m!2915411))

(declare-fun m!2915413 () Bool)

(assert (=> b!2580006 m!2915413))

(assert (=> d!730101 d!730215))

(declare-fun b!2580007 () Bool)

(declare-fun e!1628071 () Bool)

(declare-fun e!1628072 () Bool)

(assert (=> b!2580007 (= e!1628071 e!1628072)))

(declare-fun res!1085221 () Bool)

(assert (=> b!2580007 (=> (not res!1085221) (not e!1628072))))

(assert (=> b!2580007 (= res!1085221 (<= (- 1) (- (height!1345 (left!22632 lt!907662)) (height!1345 (right!22962 lt!907662)))))))

(declare-fun b!2580008 () Bool)

(assert (=> b!2580008 (= e!1628072 (not (isEmpty!17078 (right!22962 lt!907662))))))

(declare-fun b!2580009 () Bool)

(declare-fun res!1085217 () Bool)

(assert (=> b!2580009 (=> (not res!1085217) (not e!1628072))))

(assert (=> b!2580009 (= res!1085217 (isBalanced!2825 (right!22962 lt!907662)))))

(declare-fun b!2580010 () Bool)

(declare-fun res!1085219 () Bool)

(assert (=> b!2580010 (=> (not res!1085219) (not e!1628072))))

(assert (=> b!2580010 (= res!1085219 (<= (- (height!1345 (left!22632 lt!907662)) (height!1345 (right!22962 lt!907662))) 1))))

(declare-fun b!2580011 () Bool)

(declare-fun res!1085220 () Bool)

(assert (=> b!2580011 (=> (not res!1085220) (not e!1628072))))

(assert (=> b!2580011 (= res!1085220 (not (isEmpty!17078 (left!22632 lt!907662))))))

(declare-fun d!730217 () Bool)

(declare-fun res!1085222 () Bool)

(assert (=> d!730217 (=> res!1085222 e!1628071)))

(assert (=> d!730217 (= res!1085222 (not (is-Node!9268 lt!907662)))))

(assert (=> d!730217 (= (isBalanced!2825 lt!907662) e!1628071)))

(declare-fun b!2580012 () Bool)

(declare-fun res!1085218 () Bool)

(assert (=> b!2580012 (=> (not res!1085218) (not e!1628072))))

(assert (=> b!2580012 (= res!1085218 (isBalanced!2825 (left!22632 lt!907662)))))

(assert (= (and d!730217 (not res!1085222)) b!2580007))

(assert (= (and b!2580007 res!1085221) b!2580010))

(assert (= (and b!2580010 res!1085219) b!2580012))

(assert (= (and b!2580012 res!1085218) b!2580009))

(assert (= (and b!2580009 res!1085217) b!2580011))

(assert (= (and b!2580011 res!1085220) b!2580008))

(declare-fun m!2915415 () Bool)

(assert (=> b!2580010 m!2915415))

(declare-fun m!2915417 () Bool)

(assert (=> b!2580010 m!2915417))

(declare-fun m!2915419 () Bool)

(assert (=> b!2580008 m!2915419))

(assert (=> b!2580007 m!2915415))

(assert (=> b!2580007 m!2915417))

(declare-fun m!2915421 () Bool)

(assert (=> b!2580012 m!2915421))

(declare-fun m!2915423 () Bool)

(assert (=> b!2580011 m!2915423))

(declare-fun m!2915425 () Bool)

(assert (=> b!2580009 m!2915425))

(assert (=> b!2579587 d!730217))

(declare-fun d!730219 () Bool)

(assert (=> d!730219 (= (list!11215 lt!907735) (list!11217 (c!415433 lt!907735)))))

(declare-fun bs!471184 () Bool)

(assert (= bs!471184 d!730219))

(declare-fun m!2915427 () Bool)

(assert (=> bs!471184 m!2915427))

(assert (=> d!730115 d!730219))

(declare-fun d!730221 () Bool)

(declare-fun e!1628073 () Bool)

(assert (=> d!730221 e!1628073))

(declare-fun res!1085223 () Bool)

(assert (=> d!730221 (=> (not res!1085223) (not e!1628073))))

(declare-fun lt!907757 () Conc!9268)

(assert (=> d!730221 (= res!1085223 (= (list!11217 lt!907757) (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(assert (=> d!730221 (= lt!907757 (choose!15207 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(assert (=> d!730221 (= (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) lt!907757)))

(declare-fun b!2580013 () Bool)

(assert (=> b!2580013 (= e!1628073 (isBalanced!2825 lt!907757))))

(assert (= (and d!730221 res!1085223) b!2580013))

(declare-fun m!2915429 () Bool)

(assert (=> d!730221 m!2915429))

(declare-fun m!2915431 () Bool)

(assert (=> d!730221 m!2915431))

(declare-fun m!2915433 () Bool)

(assert (=> b!2580013 m!2915433))

(assert (=> d!730115 d!730221))

(declare-fun d!730223 () Bool)

(declare-fun c!415708 () Bool)

(assert (=> d!730223 (= c!415708 (is-Nil!29708 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628074 () (Set (_ BitVec 16)))

(assert (=> d!730223 (= (content!4091 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628074)))

(declare-fun b!2580014 () Bool)

(assert (=> b!2580014 (= e!1628074 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580015 () Bool)

(assert (=> b!2580015 (= e!1628074 (set.union (set.insert (h!35128 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730223 c!415708) b!2580014))

(assert (= (and d!730223 (not c!415708)) b!2580015))

(declare-fun m!2915435 () Bool)

(assert (=> b!2580015 m!2915435))

(declare-fun m!2915437 () Bool)

(assert (=> b!2580015 m!2915437))

(assert (=> b!2579584 d!730223))

(declare-fun d!730225 () Bool)

(declare-fun lt!907758 () Int)

(assert (=> d!730225 (>= lt!907758 0)))

(declare-fun e!1628075 () Int)

(assert (=> d!730225 (= lt!907758 e!1628075)))

(declare-fun c!415709 () Bool)

(assert (=> d!730225 (= c!415709 (is-Nil!29708 lt!907690))))

(assert (=> d!730225 (= (size!23031 lt!907690) lt!907758)))

(declare-fun b!2580016 () Bool)

(assert (=> b!2580016 (= e!1628075 0)))

(declare-fun b!2580017 () Bool)

(assert (=> b!2580017 (= e!1628075 (+ 1 (size!23031 (t!211695 lt!907690))))))

(assert (= (and d!730225 c!415709) b!2580016))

(assert (= (and d!730225 (not c!415709)) b!2580017))

(declare-fun m!2915439 () Bool)

(assert (=> b!2580017 m!2915439))

(assert (=> b!2579694 d!730225))

(declare-fun d!730227 () Bool)

(declare-fun lt!907759 () Int)

(assert (=> d!730227 (>= lt!907759 0)))

(declare-fun e!1628076 () Int)

(assert (=> d!730227 (= lt!907759 e!1628076)))

(declare-fun c!415710 () Bool)

(assert (=> d!730227 (= c!415710 (is-Nil!29708 (t!211695 (list!11217 (c!415433 x!464697)))))))

(assert (=> d!730227 (= (size!23031 (t!211695 (list!11217 (c!415433 x!464697)))) lt!907759)))

(declare-fun b!2580018 () Bool)

(assert (=> b!2580018 (= e!1628076 0)))

(declare-fun b!2580019 () Bool)

(assert (=> b!2580019 (= e!1628076 (+ 1 (size!23031 (t!211695 (t!211695 (list!11217 (c!415433 x!464697)))))))))

(assert (= (and d!730227 c!415710) b!2580018))

(assert (= (and d!730227 (not c!415710)) b!2580019))

(declare-fun m!2915441 () Bool)

(assert (=> b!2580019 m!2915441))

(assert (=> b!2579694 d!730227))

(assert (=> b!2579694 d!729955))

(declare-fun d!730229 () Bool)

(declare-fun e!1628078 () Bool)

(assert (=> d!730229 e!1628078))

(declare-fun res!1085224 () Bool)

(assert (=> d!730229 (=> (not res!1085224) (not e!1628078))))

(declare-fun lt!907760 () List!29808)

(assert (=> d!730229 (= res!1085224 (= (content!4091 lt!907760) (set.union (content!4091 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) (content!4091 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))))))))

(declare-fun e!1628077 () List!29808)

(assert (=> d!730229 (= lt!907760 e!1628077)))

(declare-fun c!415711 () Bool)

(assert (=> d!730229 (= c!415711 (is-Nil!29708 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))))))

(assert (=> d!730229 (= (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))) (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))) lt!907760)))

(declare-fun b!2580020 () Bool)

(assert (=> b!2580020 (= e!1628077 (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580023 () Bool)

(assert (=> b!2580023 (= e!1628078 (or (not (= (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))) Nil!29708)) (= lt!907760 (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))))))))

(declare-fun b!2580021 () Bool)

(assert (=> b!2580021 (= e!1628077 (Cons!29708 (h!35128 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) (++!7292 (t!211695 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))))))))

(declare-fun b!2580022 () Bool)

(declare-fun res!1085225 () Bool)

(assert (=> b!2580022 (=> (not res!1085225) (not e!1628078))))

(assert (=> b!2580022 (= res!1085225 (= (size!23031 lt!907760) (+ (size!23031 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) (size!23031 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))))))))

(assert (= (and d!730229 c!415711) b!2580020))

(assert (= (and d!730229 (not c!415711)) b!2580021))

(assert (= (and d!730229 res!1085224) b!2580022))

(assert (= (and b!2580022 res!1085225) b!2580023))

(declare-fun m!2915443 () Bool)

(assert (=> d!730229 m!2915443))

(assert (=> d!730229 m!2914489))

(declare-fun m!2915445 () Bool)

(assert (=> d!730229 m!2915445))

(assert (=> d!730229 m!2914491))

(declare-fun m!2915447 () Bool)

(assert (=> d!730229 m!2915447))

(assert (=> b!2580021 m!2914491))

(declare-fun m!2915449 () Bool)

(assert (=> b!2580021 m!2915449))

(declare-fun m!2915451 () Bool)

(assert (=> b!2580022 m!2915451))

(assert (=> b!2580022 m!2914489))

(declare-fun m!2915453 () Bool)

(assert (=> b!2580022 m!2915453))

(assert (=> b!2580022 m!2914491))

(declare-fun m!2915455 () Bool)

(assert (=> b!2580022 m!2915455))

(assert (=> b!2579517 d!730229))

(declare-fun b!2580027 () Bool)

(declare-fun e!1628080 () List!29808)

(assert (=> b!2580027 (= e!1628080 (++!7292 (list!11217 (left!22632 (left!22632 (right!22962 (c!415433 x!464697))))) (list!11217 (right!22962 (left!22632 (right!22962 (c!415433 x!464697)))))))))

(declare-fun d!730231 () Bool)

(declare-fun c!415712 () Bool)

(assert (=> d!730231 (= c!415712 (is-Empty!9268 (left!22632 (right!22962 (c!415433 x!464697)))))))

(declare-fun e!1628079 () List!29808)

(assert (=> d!730231 (= (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))) e!1628079)))

(declare-fun b!2580026 () Bool)

(assert (=> b!2580026 (= e!1628080 (list!11219 (xs!12252 (left!22632 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580025 () Bool)

(assert (=> b!2580025 (= e!1628079 e!1628080)))

(declare-fun c!415713 () Bool)

(assert (=> b!2580025 (= c!415713 (is-Leaf!14139 (left!22632 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580024 () Bool)

(assert (=> b!2580024 (= e!1628079 Nil!29708)))

(assert (= (and d!730231 c!415712) b!2580024))

(assert (= (and d!730231 (not c!415712)) b!2580025))

(assert (= (and b!2580025 c!415713) b!2580026))

(assert (= (and b!2580025 (not c!415713)) b!2580027))

(declare-fun m!2915457 () Bool)

(assert (=> b!2580027 m!2915457))

(declare-fun m!2915459 () Bool)

(assert (=> b!2580027 m!2915459))

(assert (=> b!2580027 m!2915457))

(assert (=> b!2580027 m!2915459))

(declare-fun m!2915461 () Bool)

(assert (=> b!2580027 m!2915461))

(declare-fun m!2915463 () Bool)

(assert (=> b!2580026 m!2915463))

(assert (=> b!2579517 d!730231))

(declare-fun b!2580031 () Bool)

(declare-fun e!1628082 () List!29808)

(assert (=> b!2580031 (= e!1628082 (++!7292 (list!11217 (left!22632 (right!22962 (right!22962 (c!415433 x!464697))))) (list!11217 (right!22962 (right!22962 (right!22962 (c!415433 x!464697)))))))))

(declare-fun d!730233 () Bool)

(declare-fun c!415714 () Bool)

(assert (=> d!730233 (= c!415714 (is-Empty!9268 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun e!1628081 () List!29808)

(assert (=> d!730233 (= (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))) e!1628081)))

(declare-fun b!2580030 () Bool)

(assert (=> b!2580030 (= e!1628082 (list!11219 (xs!12252 (right!22962 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580029 () Bool)

(assert (=> b!2580029 (= e!1628081 e!1628082)))

(declare-fun c!415715 () Bool)

(assert (=> b!2580029 (= c!415715 (is-Leaf!14139 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580028 () Bool)

(assert (=> b!2580028 (= e!1628081 Nil!29708)))

(assert (= (and d!730233 c!415714) b!2580028))

(assert (= (and d!730233 (not c!415714)) b!2580029))

(assert (= (and b!2580029 c!415715) b!2580030))

(assert (= (and b!2580029 (not c!415715)) b!2580031))

(declare-fun m!2915465 () Bool)

(assert (=> b!2580031 m!2915465))

(declare-fun m!2915467 () Bool)

(assert (=> b!2580031 m!2915467))

(assert (=> b!2580031 m!2915465))

(assert (=> b!2580031 m!2915467))

(declare-fun m!2915469 () Bool)

(assert (=> b!2580031 m!2915469))

(declare-fun m!2915471 () Bool)

(assert (=> b!2580030 m!2915471))

(assert (=> b!2579517 d!730233))

(declare-fun d!730235 () Bool)

(declare-fun lt!907761 () Int)

(assert (=> d!730235 (>= lt!907761 0)))

(declare-fun e!1628083 () Int)

(assert (=> d!730235 (= lt!907761 e!1628083)))

(declare-fun c!415716 () Bool)

(assert (=> d!730235 (= c!415716 (is-Nil!29708 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730235 (= (size!23031 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))) lt!907761)))

(declare-fun b!2580032 () Bool)

(assert (=> b!2580032 (= e!1628083 0)))

(declare-fun b!2580033 () Bool)

(assert (=> b!2580033 (= e!1628083 (+ 1 (size!23031 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730235 c!415716) b!2580032))

(assert (= (and d!730235 (not c!415716)) b!2580033))

(declare-fun m!2915473 () Bool)

(assert (=> b!2580033 m!2915473))

(assert (=> b!2579628 d!730235))

(declare-fun d!730237 () Bool)

(declare-fun e!1628085 () Bool)

(assert (=> d!730237 e!1628085))

(declare-fun res!1085226 () Bool)

(assert (=> d!730237 (=> (not res!1085226) (not e!1628085))))

(declare-fun lt!907762 () List!29808)

(assert (=> d!730237 (= res!1085226 (= (content!4091 lt!907762) (set.union (content!4091 (t!211695 (++!7292 lt!907623 lt!907622))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628084 () List!29808)

(assert (=> d!730237 (= lt!907762 e!1628084)))

(declare-fun c!415717 () Bool)

(assert (=> d!730237 (= c!415717 (is-Nil!29708 (t!211695 (++!7292 lt!907623 lt!907622))))))

(assert (=> d!730237 (= (++!7292 (t!211695 (++!7292 lt!907623 lt!907622)) (efficientList$default$2!135 (c!415433 x!464697))) lt!907762)))

(declare-fun b!2580034 () Bool)

(assert (=> b!2580034 (= e!1628084 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580037 () Bool)

(assert (=> b!2580037 (= e!1628085 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907762 (t!211695 (++!7292 lt!907623 lt!907622)))))))

(declare-fun b!2580035 () Bool)

(assert (=> b!2580035 (= e!1628084 (Cons!29708 (h!35128 (t!211695 (++!7292 lt!907623 lt!907622))) (++!7292 (t!211695 (t!211695 (++!7292 lt!907623 lt!907622))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580036 () Bool)

(declare-fun res!1085227 () Bool)

(assert (=> b!2580036 (=> (not res!1085227) (not e!1628085))))

(assert (=> b!2580036 (= res!1085227 (= (size!23031 lt!907762) (+ (size!23031 (t!211695 (++!7292 lt!907623 lt!907622))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730237 c!415717) b!2580034))

(assert (= (and d!730237 (not c!415717)) b!2580035))

(assert (= (and d!730237 res!1085226) b!2580036))

(assert (= (and b!2580036 res!1085227) b!2580037))

(declare-fun m!2915475 () Bool)

(assert (=> d!730237 m!2915475))

(assert (=> d!730237 m!2915067))

(assert (=> d!730237 m!2914321))

(assert (=> d!730237 m!2914393))

(assert (=> b!2580035 m!2914321))

(declare-fun m!2915477 () Bool)

(assert (=> b!2580035 m!2915477))

(declare-fun m!2915479 () Bool)

(assert (=> b!2580036 m!2915479))

(declare-fun m!2915481 () Bool)

(assert (=> b!2580036 m!2915481))

(assert (=> b!2580036 m!2914321))

(assert (=> b!2580036 m!2914401))

(assert (=> b!2579596 d!730237))

(declare-fun b!2580038 () Bool)

(declare-fun e!1628086 () Bool)

(declare-fun e!1628087 () Bool)

(assert (=> b!2580038 (= e!1628086 e!1628087)))

(declare-fun res!1085232 () Bool)

(assert (=> b!2580038 (=> (not res!1085232) (not e!1628087))))

(assert (=> b!2580038 (= res!1085232 (<= (- 1) (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))))))

(declare-fun b!2580039 () Bool)

(assert (=> b!2580039 (= e!1628087 (not (isEmpty!17078 (right!22962 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))))))))

(declare-fun b!2580040 () Bool)

(declare-fun res!1085228 () Bool)

(assert (=> b!2580040 (=> (not res!1085228) (not e!1628087))))

(assert (=> b!2580040 (= res!1085228 (isBalanced!2825 (right!22962 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))))

(declare-fun b!2580041 () Bool)

(declare-fun res!1085230 () Bool)

(assert (=> b!2580041 (=> (not res!1085230) (not e!1628087))))

(assert (=> b!2580041 (= res!1085230 (<= (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))))) 1))))

(declare-fun b!2580042 () Bool)

(declare-fun res!1085231 () Bool)

(assert (=> b!2580042 (=> (not res!1085231) (not e!1628087))))

(assert (=> b!2580042 (= res!1085231 (not (isEmpty!17078 (left!22632 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))))))))

(declare-fun d!730239 () Bool)

(declare-fun res!1085233 () Bool)

(assert (=> d!730239 (=> res!1085233 e!1628086)))

(assert (=> d!730239 (= res!1085233 (not (is-Node!9268 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))))

(assert (=> d!730239 (= (isBalanced!2825 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708)))))) e!1628086)))

(declare-fun b!2580043 () Bool)

(declare-fun res!1085229 () Bool)

(assert (=> b!2580043 (=> (not res!1085229) (not e!1628087))))

(assert (=> b!2580043 (= res!1085229 (isBalanced!2825 (left!22632 (fromList!557 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))))

(assert (= (and d!730239 (not res!1085233)) b!2580038))

(assert (= (and b!2580038 res!1085232) b!2580041))

(assert (= (and b!2580041 res!1085230) b!2580043))

(assert (= (and b!2580043 res!1085229) b!2580040))

(assert (= (and b!2580040 res!1085228) b!2580042))

(assert (= (and b!2580042 res!1085231) b!2580039))

(declare-fun m!2915483 () Bool)

(assert (=> b!2580041 m!2915483))

(declare-fun m!2915485 () Bool)

(assert (=> b!2580041 m!2915485))

(declare-fun m!2915487 () Bool)

(assert (=> b!2580039 m!2915487))

(assert (=> b!2580038 m!2915483))

(assert (=> b!2580038 m!2915485))

(declare-fun m!2915489 () Bool)

(assert (=> b!2580043 m!2915489))

(declare-fun m!2915491 () Bool)

(assert (=> b!2580042 m!2915491))

(declare-fun m!2915493 () Bool)

(assert (=> b!2580040 m!2915493))

(assert (=> b!2579588 d!730239))

(assert (=> b!2579588 d!730057))

(declare-fun d!730241 () Bool)

(declare-fun c!415718 () Bool)

(assert (=> d!730241 (= c!415718 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))

(declare-fun e!1628088 () (Set (_ BitVec 16)))

(assert (=> d!730241 (= (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) e!1628088)))

(declare-fun b!2580044 () Bool)

(assert (=> b!2580044 (= e!1628088 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580045 () Bool)

(assert (=> b!2580045 (= e!1628088 (set.union (set.insert (h!35128 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))))

(assert (= (and d!730241 c!415718) b!2580044))

(assert (= (and d!730241 (not c!415718)) b!2580045))

(declare-fun m!2915495 () Bool)

(assert (=> b!2580045 m!2915495))

(declare-fun m!2915497 () Bool)

(assert (=> b!2580045 m!2915497))

(assert (=> b!2579689 d!730241))

(declare-fun d!730243 () Bool)

(declare-fun e!1628090 () Bool)

(assert (=> d!730243 e!1628090))

(declare-fun res!1085234 () Bool)

(assert (=> d!730243 (=> (not res!1085234) (not e!1628090))))

(declare-fun lt!907763 () List!29808)

(assert (=> d!730243 (= res!1085234 (= (content!4091 lt!907763) (set.union (content!4091 (t!211695 lt!907623)) (content!4091 call!166727))))))

(declare-fun e!1628089 () List!29808)

(assert (=> d!730243 (= lt!907763 e!1628089)))

(declare-fun c!415719 () Bool)

(assert (=> d!730243 (= c!415719 (is-Nil!29708 (t!211695 lt!907623)))))

(assert (=> d!730243 (= (++!7292 (t!211695 lt!907623) call!166727) lt!907763)))

(declare-fun b!2580046 () Bool)

(assert (=> b!2580046 (= e!1628089 call!166727)))

(declare-fun b!2580049 () Bool)

(assert (=> b!2580049 (= e!1628090 (or (not (= call!166727 Nil!29708)) (= lt!907763 (t!211695 lt!907623))))))

(declare-fun b!2580047 () Bool)

(assert (=> b!2580047 (= e!1628089 (Cons!29708 (h!35128 (t!211695 lt!907623)) (++!7292 (t!211695 (t!211695 lt!907623)) call!166727)))))

(declare-fun b!2580048 () Bool)

(declare-fun res!1085235 () Bool)

(assert (=> b!2580048 (=> (not res!1085235) (not e!1628090))))

(assert (=> b!2580048 (= res!1085235 (= (size!23031 lt!907763) (+ (size!23031 (t!211695 lt!907623)) (size!23031 call!166727))))))

(assert (= (and d!730243 c!415719) b!2580046))

(assert (= (and d!730243 (not c!415719)) b!2580047))

(assert (= (and d!730243 res!1085234) b!2580048))

(assert (= (and b!2580048 res!1085235) b!2580049))

(declare-fun m!2915499 () Bool)

(assert (=> d!730243 m!2915499))

(assert (=> d!730243 m!2915039))

(assert (=> d!730243 m!2914757))

(declare-fun m!2915501 () Bool)

(assert (=> b!2580047 m!2915501))

(declare-fun m!2915503 () Bool)

(assert (=> b!2580048 m!2915503))

(assert (=> b!2580048 m!2915403))

(assert (=> b!2580048 m!2914763))

(assert (=> b!2579616 d!730243))

(assert (=> d!730095 d!729939))

(assert (=> d!730095 d!729947))

(assert (=> d!730095 d!730097))

(assert (=> d!730095 d!730099))

(declare-fun d!730245 () Bool)

(declare-fun e!1628092 () Bool)

(assert (=> d!730245 e!1628092))

(declare-fun res!1085236 () Bool)

(assert (=> d!730245 (=> (not res!1085236) (not e!1628092))))

(declare-fun lt!907764 () List!29808)

(assert (=> d!730245 (= res!1085236 (= (content!4091 lt!907764) (set.union (content!4091 (t!211695 lt!907623)) (content!4091 lt!907622))))))

(declare-fun e!1628091 () List!29808)

(assert (=> d!730245 (= lt!907764 e!1628091)))

(declare-fun c!415720 () Bool)

(assert (=> d!730245 (= c!415720 (is-Nil!29708 (t!211695 lt!907623)))))

(assert (=> d!730245 (= (++!7292 (t!211695 lt!907623) lt!907622) lt!907764)))

(declare-fun b!2580050 () Bool)

(assert (=> b!2580050 (= e!1628091 lt!907622)))

(declare-fun b!2580053 () Bool)

(assert (=> b!2580053 (= e!1628092 (or (not (= lt!907622 Nil!29708)) (= lt!907764 (t!211695 lt!907623))))))

(declare-fun b!2580051 () Bool)

(assert (=> b!2580051 (= e!1628091 (Cons!29708 (h!35128 (t!211695 lt!907623)) (++!7292 (t!211695 (t!211695 lt!907623)) lt!907622)))))

(declare-fun b!2580052 () Bool)

(declare-fun res!1085237 () Bool)

(assert (=> b!2580052 (=> (not res!1085237) (not e!1628092))))

(assert (=> b!2580052 (= res!1085237 (= (size!23031 lt!907764) (+ (size!23031 (t!211695 lt!907623)) (size!23031 lt!907622))))))

(assert (= (and d!730245 c!415720) b!2580050))

(assert (= (and d!730245 (not c!415720)) b!2580051))

(assert (= (and d!730245 res!1085236) b!2580052))

(assert (= (and b!2580052 res!1085237) b!2580053))

(declare-fun m!2915505 () Bool)

(assert (=> d!730245 m!2915505))

(assert (=> d!730245 m!2915039))

(assert (=> d!730245 m!2914745))

(declare-fun m!2915507 () Bool)

(assert (=> b!2580051 m!2915507))

(declare-fun m!2915509 () Bool)

(assert (=> b!2580052 m!2915509))

(assert (=> b!2580052 m!2915403))

(assert (=> b!2580052 m!2914753))

(assert (=> b!2579612 d!730245))

(declare-fun d!730247 () Bool)

(declare-fun c!415721 () Bool)

(assert (=> d!730247 (= c!415721 (is-Nil!29708 lt!907737))))

(declare-fun e!1628093 () (Set (_ BitVec 16)))

(assert (=> d!730247 (= (content!4091 lt!907737) e!1628093)))

(declare-fun b!2580054 () Bool)

(assert (=> b!2580054 (= e!1628093 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580055 () Bool)

(assert (=> b!2580055 (= e!1628093 (set.union (set.insert (h!35128 lt!907737) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907737))))))

(assert (= (and d!730247 c!415721) b!2580054))

(assert (= (and d!730247 (not c!415721)) b!2580055))

(declare-fun m!2915511 () Bool)

(assert (=> b!2580055 m!2915511))

(declare-fun m!2915513 () Bool)

(assert (=> b!2580055 m!2915513))

(assert (=> d!730125 d!730247))

(assert (=> d!730125 d!729979))

(assert (=> d!730125 d!729851))

(declare-fun d!730249 () Bool)

(declare-fun c!415722 () Bool)

(assert (=> d!730249 (= c!415722 (is-Nil!29708 lt!907729))))

(declare-fun e!1628094 () (Set (_ BitVec 16)))

(assert (=> d!730249 (= (content!4091 lt!907729) e!1628094)))

(declare-fun b!2580056 () Bool)

(assert (=> b!2580056 (= e!1628094 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580057 () Bool)

(assert (=> b!2580057 (= e!1628094 (set.union (set.insert (h!35128 lt!907729) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907729))))))

(assert (= (and d!730249 c!415722) b!2580056))

(assert (= (and d!730249 (not c!415722)) b!2580057))

(declare-fun m!2915515 () Bool)

(assert (=> b!2580057 m!2915515))

(declare-fun m!2915517 () Bool)

(assert (=> b!2580057 m!2915517))

(assert (=> d!730099 d!730249))

(assert (=> d!730099 d!730071))

(assert (=> d!730099 d!729851))

(declare-fun d!730251 () Bool)

(declare-fun e!1628096 () Bool)

(assert (=> d!730251 e!1628096))

(declare-fun res!1085238 () Bool)

(assert (=> d!730251 (=> (not res!1085238) (not e!1628096))))

(declare-fun lt!907765 () List!29808)

(assert (=> d!730251 (= res!1085238 (= (content!4091 lt!907765) (set.union (content!4091 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (content!4091 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun e!1628095 () List!29808)

(assert (=> d!730251 (= lt!907765 e!1628095)))

(declare-fun c!415723 () Bool)

(assert (=> d!730251 (= c!415723 (is-Nil!29708 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> d!730251 (= (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) lt!907765)))

(declare-fun b!2580058 () Bool)

(assert (=> b!2580058 (= e!1628095 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580061 () Bool)

(assert (=> b!2580061 (= e!1628096 (or (not (= (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) Nil!29708)) (= lt!907765 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580059 () Bool)

(assert (=> b!2580059 (= e!1628095 (Cons!29708 (h!35128 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (++!7292 (t!211695 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580060 () Bool)

(declare-fun res!1085239 () Bool)

(assert (=> b!2580060 (=> (not res!1085239) (not e!1628096))))

(assert (=> b!2580060 (= res!1085239 (= (size!23031 lt!907765) (+ (size!23031 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (size!23031 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730251 c!415723) b!2580058))

(assert (= (and d!730251 (not c!415723)) b!2580059))

(assert (= (and d!730251 res!1085238) b!2580060))

(assert (= (and b!2580060 res!1085239) b!2580061))

(declare-fun m!2915519 () Bool)

(assert (=> d!730251 m!2915519))

(assert (=> d!730251 m!2914519))

(declare-fun m!2915521 () Bool)

(assert (=> d!730251 m!2915521))

(assert (=> d!730251 m!2914521))

(declare-fun m!2915523 () Bool)

(assert (=> d!730251 m!2915523))

(assert (=> b!2580059 m!2914521))

(declare-fun m!2915525 () Bool)

(assert (=> b!2580059 m!2915525))

(declare-fun m!2915527 () Bool)

(assert (=> b!2580060 m!2915527))

(assert (=> b!2580060 m!2914519))

(declare-fun m!2915529 () Bool)

(assert (=> b!2580060 m!2915529))

(assert (=> b!2580060 m!2914521))

(declare-fun m!2915531 () Bool)

(assert (=> b!2580060 m!2915531))

(assert (=> b!2579529 d!730251))

(declare-fun b!2580065 () Bool)

(declare-fun e!1628098 () List!29808)

(assert (=> b!2580065 (= e!1628098 (++!7292 (list!11217 (left!22632 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun d!730253 () Bool)

(declare-fun c!415724 () Bool)

(assert (=> d!730253 (= c!415724 (is-Empty!9268 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1628097 () List!29808)

(assert (=> d!730253 (= (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1628097)))

(declare-fun b!2580064 () Bool)

(assert (=> b!2580064 (= e!1628098 (list!11219 (xs!12252 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580063 () Bool)

(assert (=> b!2580063 (= e!1628097 e!1628098)))

(declare-fun c!415725 () Bool)

(assert (=> b!2580063 (= c!415725 (is-Leaf!14139 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580062 () Bool)

(assert (=> b!2580062 (= e!1628097 Nil!29708)))

(assert (= (and d!730253 c!415724) b!2580062))

(assert (= (and d!730253 (not c!415724)) b!2580063))

(assert (= (and b!2580063 c!415725) b!2580064))

(assert (= (and b!2580063 (not c!415725)) b!2580065))

(declare-fun m!2915533 () Bool)

(assert (=> b!2580065 m!2915533))

(declare-fun m!2915535 () Bool)

(assert (=> b!2580065 m!2915535))

(assert (=> b!2580065 m!2915533))

(assert (=> b!2580065 m!2915535))

(declare-fun m!2915537 () Bool)

(assert (=> b!2580065 m!2915537))

(declare-fun m!2915539 () Bool)

(assert (=> b!2580064 m!2915539))

(assert (=> b!2579529 d!730253))

(declare-fun b!2580069 () Bool)

(declare-fun e!1628100 () List!29808)

(assert (=> b!2580069 (= e!1628100 (++!7292 (list!11217 (left!22632 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun d!730255 () Bool)

(declare-fun c!415726 () Bool)

(assert (=> d!730255 (= c!415726 (is-Empty!9268 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1628099 () List!29808)

(assert (=> d!730255 (= (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1628099)))

(declare-fun b!2580068 () Bool)

(assert (=> b!2580068 (= e!1628100 (list!11219 (xs!12252 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580067 () Bool)

(assert (=> b!2580067 (= e!1628099 e!1628100)))

(declare-fun c!415727 () Bool)

(assert (=> b!2580067 (= c!415727 (is-Leaf!14139 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580066 () Bool)

(assert (=> b!2580066 (= e!1628099 Nil!29708)))

(assert (= (and d!730255 c!415726) b!2580066))

(assert (= (and d!730255 (not c!415726)) b!2580067))

(assert (= (and b!2580067 c!415727) b!2580068))

(assert (= (and b!2580067 (not c!415727)) b!2580069))

(declare-fun m!2915541 () Bool)

(assert (=> b!2580069 m!2915541))

(declare-fun m!2915543 () Bool)

(assert (=> b!2580069 m!2915543))

(assert (=> b!2580069 m!2915541))

(assert (=> b!2580069 m!2915543))

(declare-fun m!2915545 () Bool)

(assert (=> b!2580069 m!2915545))

(declare-fun m!2915547 () Bool)

(assert (=> b!2580068 m!2915547))

(assert (=> b!2579529 d!730255))

(declare-fun d!730257 () Bool)

(assert (=> d!730257 (= (list!11219 (xs!12252 (right!22962 (c!415433 x!464697)))) (innerList!9328 (xs!12252 (right!22962 (c!415433 x!464697)))))))

(assert (=> b!2579516 d!730257))

(declare-fun d!730259 () Bool)

(declare-fun c!415728 () Bool)

(assert (=> d!730259 (= c!415728 (is-Nil!29708 lt!907688))))

(declare-fun e!1628101 () (Set (_ BitVec 16)))

(assert (=> d!730259 (= (content!4091 lt!907688) e!1628101)))

(declare-fun b!2580070 () Bool)

(assert (=> b!2580070 (= e!1628101 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580071 () Bool)

(assert (=> b!2580071 (= e!1628101 (set.union (set.insert (h!35128 lt!907688) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907688))))))

(assert (= (and d!730259 c!415728) b!2580070))

(assert (= (and d!730259 (not c!415728)) b!2580071))

(declare-fun m!2915549 () Bool)

(assert (=> b!2580071 m!2915549))

(declare-fun m!2915551 () Bool)

(assert (=> b!2580071 m!2915551))

(assert (=> d!729961 d!730259))

(declare-fun d!730261 () Bool)

(declare-fun c!415729 () Bool)

(assert (=> d!730261 (= c!415729 (is-Nil!29708 e!1627758))))

(declare-fun e!1628102 () (Set (_ BitVec 16)))

(assert (=> d!730261 (= (content!4091 e!1627758) e!1628102)))

(declare-fun b!2580072 () Bool)

(assert (=> b!2580072 (= e!1628102 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580073 () Bool)

(assert (=> b!2580073 (= e!1628102 (set.union (set.insert (h!35128 e!1627758) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 e!1627758))))))

(assert (= (and d!730261 c!415729) b!2580072))

(assert (= (and d!730261 (not c!415729)) b!2580073))

(declare-fun m!2915553 () Bool)

(assert (=> b!2580073 m!2915553))

(declare-fun m!2915555 () Bool)

(assert (=> b!2580073 m!2915555))

(assert (=> d!729961 d!730261))

(assert (=> d!729961 d!729851))

(declare-fun d!730263 () Bool)

(declare-fun e!1628103 () Bool)

(assert (=> d!730263 e!1628103))

(declare-fun res!1085240 () Bool)

(assert (=> d!730263 (=> (not res!1085240) (not e!1628103))))

(declare-fun lt!907766 () BalanceConc!18150)

(assert (=> d!730263 (= res!1085240 (= (list!11215 lt!907766) (Cons!29708 #x003A Nil!29708)))))

(assert (=> d!730263 (= lt!907766 (BalanceConc!18151 (fromList!557 (Cons!29708 #x003A Nil!29708))))))

(assert (=> d!730263 (= (fromListB!1421 (Cons!29708 #x003A Nil!29708)) lt!907766)))

(declare-fun b!2580074 () Bool)

(assert (=> b!2580074 (= e!1628103 (isBalanced!2825 (fromList!557 (Cons!29708 #x003A Nil!29708))))))

(assert (= (and d!730263 res!1085240) b!2580074))

(declare-fun m!2915557 () Bool)

(assert (=> d!730263 m!2915557))

(declare-fun m!2915559 () Bool)

(assert (=> d!730263 m!2915559))

(assert (=> b!2580074 m!2915559))

(assert (=> b!2580074 m!2915559))

(declare-fun m!2915561 () Bool)

(assert (=> b!2580074 m!2915561))

(assert (=> d!730113 d!730263))

(assert (=> b!2579626 d!730227))

(declare-fun d!730265 () Bool)

(declare-fun e!1628105 () Bool)

(assert (=> d!730265 e!1628105))

(declare-fun res!1085241 () Bool)

(assert (=> d!730265 (=> (not res!1085241) (not e!1628105))))

(declare-fun lt!907767 () List!29808)

(assert (=> d!730265 (= res!1085241 (= (content!4091 lt!907767) (set.union (content!4091 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628104 () List!29808)

(assert (=> d!730265 (= lt!907767 e!1628104)))

(declare-fun c!415730 () Bool)

(assert (=> d!730265 (= c!415730 (is-Nil!29708 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))))))

(assert (=> d!730265 (= (++!7292 (t!211695 (t!211695 (list!11217 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697))) lt!907767)))

(declare-fun b!2580075 () Bool)

(assert (=> b!2580075 (= e!1628104 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580078 () Bool)

(assert (=> b!2580078 (= e!1628105 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907767 (t!211695 (t!211695 (list!11217 (c!415433 x!464697)))))))))

(declare-fun b!2580076 () Bool)

(assert (=> b!2580076 (= e!1628104 (Cons!29708 (h!35128 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) (++!7292 (t!211695 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580077 () Bool)

(declare-fun res!1085242 () Bool)

(assert (=> b!2580077 (=> (not res!1085242) (not e!1628105))))

(assert (=> b!2580077 (= res!1085242 (= (size!23031 lt!907767) (+ (size!23031 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730265 c!415730) b!2580075))

(assert (= (and d!730265 (not c!415730)) b!2580076))

(assert (= (and d!730265 res!1085241) b!2580077))

(assert (= (and b!2580077 res!1085242) b!2580078))

(declare-fun m!2915563 () Bool)

(assert (=> d!730265 m!2915563))

(assert (=> d!730265 m!2915075))

(assert (=> d!730265 m!2914321))

(assert (=> d!730265 m!2914393))

(assert (=> b!2580076 m!2914321))

(declare-fun m!2915565 () Bool)

(assert (=> b!2580076 m!2915565))

(declare-fun m!2915567 () Bool)

(assert (=> b!2580077 m!2915567))

(assert (=> b!2580077 m!2915441))

(assert (=> b!2580077 m!2914321))

(assert (=> b!2580077 m!2914401))

(assert (=> b!2579693 d!730265))

(declare-fun d!730267 () Bool)

(declare-fun c!415731 () Bool)

(assert (=> d!730267 (= c!415731 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628106 () (Set (_ BitVec 16)))

(assert (=> d!730267 (= (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628106)))

(declare-fun b!2580079 () Bool)

(assert (=> b!2580079 (= e!1628106 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580080 () Bool)

(assert (=> b!2580080 (= e!1628106 (set.union (set.insert (h!35128 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730267 c!415731) b!2580079))

(assert (= (and d!730267 (not c!415731)) b!2580080))

(declare-fun m!2915569 () Bool)

(assert (=> b!2580080 m!2915569))

(declare-fun m!2915571 () Bool)

(assert (=> b!2580080 m!2915571))

(assert (=> b!2579582 d!730267))

(declare-fun d!730269 () Bool)

(declare-fun e!1628108 () Bool)

(assert (=> d!730269 e!1628108))

(declare-fun res!1085243 () Bool)

(assert (=> d!730269 (=> (not res!1085243) (not e!1628108))))

(declare-fun lt!907768 () List!29808)

(assert (=> d!730269 (= res!1085243 (= (content!4091 lt!907768) (set.union (content!4091 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) (content!4091 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))))))))

(declare-fun e!1628107 () List!29808)

(assert (=> d!730269 (= lt!907768 e!1628107)))

(declare-fun c!415732 () Bool)

(assert (=> d!730269 (= c!415732 (is-Nil!29708 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))))))

(assert (=> d!730269 (= (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))) (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))) lt!907768)))

(declare-fun b!2580081 () Bool)

(assert (=> b!2580081 (= e!1628107 (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580084 () Bool)

(assert (=> b!2580084 (= e!1628108 (or (not (= (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))) Nil!29708)) (= lt!907768 (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2580082 () Bool)

(assert (=> b!2580082 (= e!1628107 (Cons!29708 (h!35128 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) (++!7292 (t!211695 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2580083 () Bool)

(declare-fun res!1085244 () Bool)

(assert (=> b!2580083 (=> (not res!1085244) (not e!1628108))))

(assert (=> b!2580083 (= res!1085244 (= (size!23031 lt!907768) (+ (size!23031 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) (size!23031 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))))))))

(assert (= (and d!730269 c!415732) b!2580081))

(assert (= (and d!730269 (not c!415732)) b!2580082))

(assert (= (and d!730269 res!1085243) b!2580083))

(assert (= (and b!2580083 res!1085244) b!2580084))

(declare-fun m!2915573 () Bool)

(assert (=> d!730269 m!2915573))

(assert (=> d!730269 m!2914481))

(declare-fun m!2915575 () Bool)

(assert (=> d!730269 m!2915575))

(assert (=> d!730269 m!2914483))

(declare-fun m!2915577 () Bool)

(assert (=> d!730269 m!2915577))

(assert (=> b!2580082 m!2914483))

(declare-fun m!2915579 () Bool)

(assert (=> b!2580082 m!2915579))

(declare-fun m!2915581 () Bool)

(assert (=> b!2580083 m!2915581))

(assert (=> b!2580083 m!2914481))

(declare-fun m!2915583 () Bool)

(assert (=> b!2580083 m!2915583))

(assert (=> b!2580083 m!2914483))

(declare-fun m!2915585 () Bool)

(assert (=> b!2580083 m!2915585))

(assert (=> b!2579513 d!730269))

(declare-fun b!2580088 () Bool)

(declare-fun e!1628110 () List!29808)

(assert (=> b!2580088 (= e!1628110 (++!7292 (list!11217 (left!22632 (left!22632 (left!22632 (c!415433 x!464697))))) (list!11217 (right!22962 (left!22632 (left!22632 (c!415433 x!464697)))))))))

(declare-fun d!730271 () Bool)

(declare-fun c!415733 () Bool)

(assert (=> d!730271 (= c!415733 (is-Empty!9268 (left!22632 (left!22632 (c!415433 x!464697)))))))

(declare-fun e!1628109 () List!29808)

(assert (=> d!730271 (= (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))) e!1628109)))

(declare-fun b!2580087 () Bool)

(assert (=> b!2580087 (= e!1628110 (list!11219 (xs!12252 (left!22632 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2580086 () Bool)

(assert (=> b!2580086 (= e!1628109 e!1628110)))

(declare-fun c!415734 () Bool)

(assert (=> b!2580086 (= c!415734 (is-Leaf!14139 (left!22632 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580085 () Bool)

(assert (=> b!2580085 (= e!1628109 Nil!29708)))

(assert (= (and d!730271 c!415733) b!2580085))

(assert (= (and d!730271 (not c!415733)) b!2580086))

(assert (= (and b!2580086 c!415734) b!2580087))

(assert (= (and b!2580086 (not c!415734)) b!2580088))

(declare-fun m!2915587 () Bool)

(assert (=> b!2580088 m!2915587))

(declare-fun m!2915589 () Bool)

(assert (=> b!2580088 m!2915589))

(assert (=> b!2580088 m!2915587))

(assert (=> b!2580088 m!2915589))

(declare-fun m!2915591 () Bool)

(assert (=> b!2580088 m!2915591))

(declare-fun m!2915593 () Bool)

(assert (=> b!2580087 m!2915593))

(assert (=> b!2579513 d!730271))

(declare-fun b!2580092 () Bool)

(declare-fun e!1628112 () List!29808)

(assert (=> b!2580092 (= e!1628112 (++!7292 (list!11217 (left!22632 (right!22962 (left!22632 (c!415433 x!464697))))) (list!11217 (right!22962 (right!22962 (left!22632 (c!415433 x!464697)))))))))

(declare-fun d!730273 () Bool)

(declare-fun c!415735 () Bool)

(assert (=> d!730273 (= c!415735 (is-Empty!9268 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun e!1628111 () List!29808)

(assert (=> d!730273 (= (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))) e!1628111)))

(declare-fun b!2580091 () Bool)

(assert (=> b!2580091 (= e!1628112 (list!11219 (xs!12252 (right!22962 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2580090 () Bool)

(assert (=> b!2580090 (= e!1628111 e!1628112)))

(declare-fun c!415736 () Bool)

(assert (=> b!2580090 (= c!415736 (is-Leaf!14139 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580089 () Bool)

(assert (=> b!2580089 (= e!1628111 Nil!29708)))

(assert (= (and d!730273 c!415735) b!2580089))

(assert (= (and d!730273 (not c!415735)) b!2580090))

(assert (= (and b!2580090 c!415736) b!2580091))

(assert (= (and b!2580090 (not c!415736)) b!2580092))

(declare-fun m!2915595 () Bool)

(assert (=> b!2580092 m!2915595))

(declare-fun m!2915597 () Bool)

(assert (=> b!2580092 m!2915597))

(assert (=> b!2580092 m!2915595))

(assert (=> b!2580092 m!2915597))

(declare-fun m!2915599 () Bool)

(assert (=> b!2580092 m!2915599))

(declare-fun m!2915601 () Bool)

(assert (=> b!2580091 m!2915601))

(assert (=> b!2579513 d!730273))

(declare-fun d!730275 () Bool)

(declare-fun c!415737 () Bool)

(assert (=> d!730275 (= c!415737 (is-Nil!29708 lt!907728))))

(declare-fun e!1628113 () (Set (_ BitVec 16)))

(assert (=> d!730275 (= (content!4091 lt!907728) e!1628113)))

(declare-fun b!2580093 () Bool)

(assert (=> b!2580093 (= e!1628113 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580094 () Bool)

(assert (=> b!2580094 (= e!1628113 (set.union (set.insert (h!35128 lt!907728) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907728))))))

(assert (= (and d!730275 c!415737) b!2580093))

(assert (= (and d!730275 (not c!415737)) b!2580094))

(declare-fun m!2915603 () Bool)

(assert (=> b!2580094 m!2915603))

(declare-fun m!2915605 () Bool)

(assert (=> b!2580094 m!2915605))

(assert (=> d!730097 d!730275))

(assert (=> d!730097 d!730049))

(declare-fun d!730277 () Bool)

(declare-fun c!415738 () Bool)

(assert (=> d!730277 (= c!415738 (is-Nil!29708 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun e!1628114 () (Set (_ BitVec 16)))

(assert (=> d!730277 (= (content!4091 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))) e!1628114)))

(declare-fun b!2580095 () Bool)

(assert (=> b!2580095 (= e!1628114 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580096 () Bool)

(assert (=> b!2580096 (= e!1628114 (set.union (set.insert (h!35128 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730277 c!415738) b!2580095))

(assert (= (and d!730277 (not c!415738)) b!2580096))

(declare-fun m!2915607 () Bool)

(assert (=> b!2580096 m!2915607))

(declare-fun m!2915609 () Bool)

(assert (=> b!2580096 m!2915609))

(assert (=> d!730097 d!730277))

(declare-fun d!730279 () Bool)

(declare-fun c!415739 () Bool)

(assert (=> d!730279 (= c!415739 (is-Nil!29708 lt!907736))))

(declare-fun e!1628115 () (Set (_ BitVec 16)))

(assert (=> d!730279 (= (content!4091 lt!907736) e!1628115)))

(declare-fun b!2580097 () Bool)

(assert (=> b!2580097 (= e!1628115 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580098 () Bool)

(assert (=> b!2580098 (= e!1628115 (set.union (set.insert (h!35128 lt!907736) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907736))))))

(assert (= (and d!730279 c!415739) b!2580097))

(assert (= (and d!730279 (not c!415739)) b!2580098))

(declare-fun m!2915611 () Bool)

(assert (=> b!2580098 m!2915611))

(declare-fun m!2915613 () Bool)

(assert (=> b!2580098 m!2915613))

(assert (=> d!730123 d!730279))

(assert (=> d!730123 d!730267))

(assert (=> d!730123 d!729925))

(declare-fun d!730281 () Bool)

(declare-fun c!415740 () Bool)

(assert (=> d!730281 (= c!415740 (is-Nil!29708 (t!211695 lt!907650)))))

(declare-fun e!1628116 () (Set (_ BitVec 16)))

(assert (=> d!730281 (= (content!4091 (t!211695 lt!907650)) e!1628116)))

(declare-fun b!2580099 () Bool)

(assert (=> b!2580099 (= e!1628116 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580100 () Bool)

(assert (=> b!2580100 (= e!1628116 (set.union (set.insert (h!35128 (t!211695 lt!907650)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907650)))))))

(assert (= (and d!730281 c!415740) b!2580099))

(assert (= (and d!730281 (not c!415740)) b!2580100))

(declare-fun m!2915615 () Bool)

(assert (=> b!2580100 m!2915615))

(declare-fun m!2915617 () Bool)

(assert (=> b!2580100 m!2915617))

(assert (=> b!2579687 d!730281))

(declare-fun d!730283 () Bool)

(declare-fun lt!907769 () Int)

(assert (=> d!730283 (>= lt!907769 0)))

(declare-fun e!1628117 () Int)

(assert (=> d!730283 (= lt!907769 e!1628117)))

(declare-fun c!415741 () Bool)

(assert (=> d!730283 (= c!415741 (is-Nil!29708 (t!211695 lt!907631)))))

(assert (=> d!730283 (= (size!23031 (t!211695 lt!907631)) lt!907769)))

(declare-fun b!2580101 () Bool)

(assert (=> b!2580101 (= e!1628117 0)))

(declare-fun b!2580102 () Bool)

(assert (=> b!2580102 (= e!1628117 (+ 1 (size!23031 (t!211695 (t!211695 lt!907631)))))))

(assert (= (and d!730283 c!415741) b!2580101))

(assert (= (and d!730283 (not c!415741)) b!2580102))

(declare-fun m!2915619 () Bool)

(assert (=> b!2580102 m!2915619))

(assert (=> b!2579624 d!730283))

(declare-fun d!730285 () Bool)

(assert (=> d!730285 (= (list!11219 (xs!12252 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (innerList!9328 (xs!12252 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(assert (=> b!2579528 d!730285))

(assert (=> d!730053 d!729771))

(declare-fun b!2580103 () Bool)

(declare-fun e!1628118 () List!29808)

(declare-fun lt!907771 () List!29808)

(assert (=> b!2580103 (= e!1628118 lt!907771)))

(declare-fun b!2580104 () Bool)

(declare-fun e!1628119 () List!29808)

(assert (=> b!2580104 (= e!1628119 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2580105 () Bool)

(declare-fun e!1628120 () List!29808)

(declare-fun call!166735 () List!29808)

(assert (=> b!2580105 (= e!1628120 call!166735)))

(declare-fun b!2580106 () Bool)

(assert (=> b!2580106 (= e!1628118 (efficientList!388 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2580107 () Bool)

(declare-fun lt!907774 () Unit!43542)

(declare-fun lt!907770 () Unit!43542)

(assert (=> b!2580107 (= lt!907774 lt!907770)))

(declare-fun lt!907772 () List!29808)

(assert (=> b!2580107 (= (++!7292 (++!7292 lt!907772 lt!907771) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (++!7292 lt!907772 call!166735))))

(assert (=> b!2580107 (= lt!907770 (lemmaConcatAssociativity!1474 lt!907772 lt!907771 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> b!2580107 (= lt!907771 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> b!2580107 (= lt!907772 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> b!2580107 (= e!1628120 (efficientList!387 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) (efficientList!387 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun d!730287 () Bool)

(declare-fun lt!907773 () List!29808)

(assert (=> d!730287 (= lt!907773 (++!7292 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> d!730287 (= lt!907773 e!1628119)))

(declare-fun c!415744 () Bool)

(assert (=> d!730287 (= c!415744 (is-Empty!9268 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(assert (=> d!730287 (= (efficientList!387 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) lt!907773)))

(declare-fun b!2580108 () Bool)

(assert (=> b!2580108 (= e!1628119 e!1628120)))

(declare-fun c!415743 () Bool)

(assert (=> b!2580108 (= c!415743 (is-Leaf!14139 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun bm!166730 () Bool)

(declare-fun c!415742 () Bool)

(assert (=> bm!166730 (= c!415742 c!415743)))

(assert (=> bm!166730 (= call!166735 (++!7292 e!1628118 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (= (and d!730287 c!415744) b!2580104))

(assert (= (and d!730287 (not c!415744)) b!2580108))

(assert (= (and b!2580108 c!415743) b!2580105))

(assert (= (and b!2580108 (not c!415743)) b!2580107))

(assert (= (or b!2580105 b!2580107) bm!166730))

(assert (= (and bm!166730 c!415742) b!2580106))

(assert (= (and bm!166730 (not c!415742)) b!2580103))

(declare-fun m!2915621 () Bool)

(assert (=> b!2580106 m!2915621))

(assert (=> b!2580107 m!2915045))

(declare-fun m!2915623 () Bool)

(assert (=> b!2580107 m!2915623))

(declare-fun m!2915625 () Bool)

(assert (=> b!2580107 m!2915625))

(declare-fun m!2915627 () Bool)

(assert (=> b!2580107 m!2915627))

(assert (=> b!2580107 m!2915627))

(assert (=> b!2580107 m!2915045))

(declare-fun m!2915629 () Bool)

(assert (=> b!2580107 m!2915629))

(assert (=> b!2580107 m!2915045))

(declare-fun m!2915631 () Bool)

(assert (=> b!2580107 m!2915631))

(assert (=> b!2580107 m!2914305))

(assert (=> b!2580107 m!2915631))

(declare-fun m!2915633 () Bool)

(assert (=> b!2580107 m!2915633))

(assert (=> b!2580107 m!2914307))

(assert (=> d!730287 m!2914253))

(assert (=> d!730287 m!2914253))

(assert (=> d!730287 m!2915045))

(declare-fun m!2915635 () Bool)

(assert (=> d!730287 m!2915635))

(assert (=> bm!166730 m!2915045))

(declare-fun m!2915637 () Bool)

(assert (=> bm!166730 m!2915637))

(assert (=> d!730053 d!730287))

(declare-fun d!730289 () Bool)

(assert (=> d!730289 (= (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) Nil!29708)))

(assert (=> d!730053 d!730289))

(declare-fun b!2580112 () Bool)

(declare-fun e!1628122 () List!29808)

(assert (=> b!2580112 (= e!1628122 (++!7292 (list!11217 (left!22632 lt!907723)) (list!11217 (right!22962 lt!907723))))))

(declare-fun d!730291 () Bool)

(declare-fun c!415745 () Bool)

(assert (=> d!730291 (= c!415745 (is-Empty!9268 lt!907723))))

(declare-fun e!1628121 () List!29808)

(assert (=> d!730291 (= (list!11217 lt!907723) e!1628121)))

(declare-fun b!2580111 () Bool)

(assert (=> b!2580111 (= e!1628122 (list!11219 (xs!12252 lt!907723)))))

(declare-fun b!2580110 () Bool)

(assert (=> b!2580110 (= e!1628121 e!1628122)))

(declare-fun c!415746 () Bool)

(assert (=> b!2580110 (= c!415746 (is-Leaf!14139 lt!907723))))

(declare-fun b!2580109 () Bool)

(assert (=> b!2580109 (= e!1628121 Nil!29708)))

(assert (= (and d!730291 c!415745) b!2580109))

(assert (= (and d!730291 (not c!415745)) b!2580110))

(assert (= (and b!2580110 c!415746) b!2580111))

(assert (= (and b!2580110 (not c!415746)) b!2580112))

(declare-fun m!2915639 () Bool)

(assert (=> b!2580112 m!2915639))

(declare-fun m!2915641 () Bool)

(assert (=> b!2580112 m!2915641))

(assert (=> b!2580112 m!2915639))

(assert (=> b!2580112 m!2915641))

(declare-fun m!2915643 () Bool)

(assert (=> b!2580112 m!2915643))

(declare-fun m!2915645 () Bool)

(assert (=> b!2580111 m!2915645))

(assert (=> d!730057 d!730291))

(declare-fun d!730293 () Bool)

(declare-fun e!1628124 () Bool)

(assert (=> d!730293 e!1628124))

(declare-fun res!1085246 () Bool)

(assert (=> d!730293 (=> (not res!1085246) (not e!1628124))))

(declare-fun res!1085245 () Conc!9268)

(assert (=> d!730293 (= res!1085246 (= (list!11217 res!1085245) (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))))))

(declare-fun e!1628123 () Bool)

(assert (=> d!730293 (and (inv!40081 res!1085245) e!1628123)))

(assert (=> d!730293 (= (choose!15207 (Cons!29708 #x0074 (Cons!29708 #x0072 (Cons!29708 #x0075 (Cons!29708 #x0065 Nil!29708))))) res!1085245)))

(declare-fun tp!819403 () Bool)

(declare-fun tp!819404 () Bool)

(declare-fun b!2580113 () Bool)

(assert (=> b!2580113 (= e!1628123 (and (inv!40081 (left!22632 res!1085245)) tp!819404 (inv!40081 (right!22962 res!1085245)) tp!819403))))

(declare-fun b!2580114 () Bool)

(assert (=> b!2580114 (= e!1628123 (inv!40087 (xs!12252 res!1085245)))))

(declare-fun b!2580115 () Bool)

(assert (=> b!2580115 (= e!1628124 (isBalanced!2825 res!1085245))))

(assert (= (and d!730293 (is-Node!9268 res!1085245)) b!2580113))

(assert (= (and d!730293 (is-Leaf!14139 res!1085245)) b!2580114))

(assert (= (and d!730293 res!1085246) b!2580115))

(declare-fun m!2915647 () Bool)

(assert (=> d!730293 m!2915647))

(declare-fun m!2915649 () Bool)

(assert (=> d!730293 m!2915649))

(declare-fun m!2915651 () Bool)

(assert (=> b!2580113 m!2915651))

(declare-fun m!2915653 () Bool)

(assert (=> b!2580113 m!2915653))

(declare-fun m!2915655 () Bool)

(assert (=> b!2580114 m!2915655))

(declare-fun m!2915657 () Bool)

(assert (=> b!2580115 m!2915657))

(assert (=> d!730057 d!730293))

(declare-fun d!730295 () Bool)

(declare-fun c!415747 () Bool)

(assert (=> d!730295 (= c!415747 (is-Nil!29708 lt!907734))))

(declare-fun e!1628126 () (Set (_ BitVec 16)))

(assert (=> d!730295 (= (content!4091 lt!907734) e!1628126)))

(declare-fun b!2580116 () Bool)

(assert (=> b!2580116 (= e!1628126 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580117 () Bool)

(assert (=> b!2580117 (= e!1628126 (set.union (set.insert (h!35128 lt!907734) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907734))))))

(assert (= (and d!730295 c!415747) b!2580116))

(assert (= (and d!730295 (not c!415747)) b!2580117))

(declare-fun m!2915659 () Bool)

(assert (=> b!2580117 m!2915659))

(declare-fun m!2915661 () Bool)

(assert (=> b!2580117 m!2915661))

(assert (=> d!730111 d!730295))

(assert (=> d!730111 d!730241))

(assert (=> d!730111 d!729979))

(declare-fun b!2580121 () Bool)

(declare-fun e!1628128 () List!29808)

(assert (=> b!2580121 (= e!1628128 (++!7292 (list!11217 (left!22632 (c!415433 lt!907663))) (list!11217 (right!22962 (c!415433 lt!907663)))))))

(declare-fun d!730297 () Bool)

(declare-fun c!415748 () Bool)

(assert (=> d!730297 (= c!415748 (is-Empty!9268 (c!415433 lt!907663)))))

(declare-fun e!1628127 () List!29808)

(assert (=> d!730297 (= (list!11217 (c!415433 lt!907663)) e!1628127)))

(declare-fun b!2580120 () Bool)

(assert (=> b!2580120 (= e!1628128 (list!11219 (xs!12252 (c!415433 lt!907663))))))

(declare-fun b!2580119 () Bool)

(assert (=> b!2580119 (= e!1628127 e!1628128)))

(declare-fun c!415749 () Bool)

(assert (=> b!2580119 (= c!415749 (is-Leaf!14139 (c!415433 lt!907663)))))

(declare-fun b!2580118 () Bool)

(assert (=> b!2580118 (= e!1628127 Nil!29708)))

(assert (= (and d!730297 c!415748) b!2580118))

(assert (= (and d!730297 (not c!415748)) b!2580119))

(assert (= (and b!2580119 c!415749) b!2580120))

(assert (= (and b!2580119 (not c!415749)) b!2580121))

(declare-fun m!2915663 () Bool)

(assert (=> b!2580121 m!2915663))

(declare-fun m!2915665 () Bool)

(assert (=> b!2580121 m!2915665))

(assert (=> b!2580121 m!2915663))

(assert (=> b!2580121 m!2915665))

(declare-fun m!2915667 () Bool)

(assert (=> b!2580121 m!2915667))

(declare-fun m!2915669 () Bool)

(assert (=> b!2580120 m!2915669))

(assert (=> d!730055 d!730297))

(declare-fun d!730299 () Bool)

(declare-fun c!415750 () Bool)

(assert (=> d!730299 (= c!415750 (is-Nil!29708 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))))))

(declare-fun e!1628129 () (Set (_ BitVec 16)))

(assert (=> d!730299 (= (content!4091 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) e!1628129)))

(declare-fun b!2580122 () Bool)

(assert (=> b!2580122 (= e!1628129 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580123 () Bool)

(assert (=> b!2580123 (= e!1628129 (set.union (set.insert (h!35128 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))))))))

(assert (= (and d!730299 c!415750) b!2580122))

(assert (= (and d!730299 (not c!415750)) b!2580123))

(declare-fun m!2915671 () Bool)

(assert (=> b!2580123 m!2915671))

(declare-fun m!2915673 () Bool)

(assert (=> b!2580123 m!2915673))

(assert (=> b!2579691 d!730299))

(declare-fun d!730301 () Bool)

(assert (=> d!730301 (= (list!11219 (xs!12252 (left!22632 (c!415433 x!464697)))) (innerList!9328 (xs!12252 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579512 d!730301))

(declare-fun b!2580127 () Bool)

(declare-fun e!1628131 () List!29808)

(assert (=> b!2580127 (= e!1628131 (++!7292 (list!11217 (left!22632 res!1085169)) (list!11217 (right!22962 res!1085169))))))

(declare-fun d!730303 () Bool)

(declare-fun c!415751 () Bool)

(assert (=> d!730303 (= c!415751 (is-Empty!9268 res!1085169))))

(declare-fun e!1628130 () List!29808)

(assert (=> d!730303 (= (list!11217 res!1085169) e!1628130)))

(declare-fun b!2580126 () Bool)

(assert (=> b!2580126 (= e!1628131 (list!11219 (xs!12252 res!1085169)))))

(declare-fun b!2580125 () Bool)

(assert (=> b!2580125 (= e!1628130 e!1628131)))

(declare-fun c!415752 () Bool)

(assert (=> b!2580125 (= c!415752 (is-Leaf!14139 res!1085169))))

(declare-fun b!2580124 () Bool)

(assert (=> b!2580124 (= e!1628130 Nil!29708)))

(assert (= (and d!730303 c!415751) b!2580124))

(assert (= (and d!730303 (not c!415751)) b!2580125))

(assert (= (and b!2580125 c!415752) b!2580126))

(assert (= (and b!2580125 (not c!415752)) b!2580127))

(declare-fun m!2915675 () Bool)

(assert (=> b!2580127 m!2915675))

(declare-fun m!2915677 () Bool)

(assert (=> b!2580127 m!2915677))

(assert (=> b!2580127 m!2915675))

(assert (=> b!2580127 m!2915677))

(declare-fun m!2915679 () Bool)

(assert (=> b!2580127 m!2915679))

(declare-fun m!2915681 () Bool)

(assert (=> b!2580126 m!2915681))

(assert (=> d!730089 d!730303))

(declare-fun d!730305 () Bool)

(declare-fun c!415753 () Bool)

(assert (=> d!730305 (= c!415753 (is-Node!9268 res!1085169))))

(declare-fun e!1628132 () Bool)

(assert (=> d!730305 (= (inv!40081 res!1085169) e!1628132)))

(declare-fun b!2580128 () Bool)

(assert (=> b!2580128 (= e!1628132 (inv!40085 res!1085169))))

(declare-fun b!2580129 () Bool)

(declare-fun e!1628133 () Bool)

(assert (=> b!2580129 (= e!1628132 e!1628133)))

(declare-fun res!1085247 () Bool)

(assert (=> b!2580129 (= res!1085247 (not (is-Leaf!14139 res!1085169)))))

(assert (=> b!2580129 (=> res!1085247 e!1628133)))

(declare-fun b!2580130 () Bool)

(assert (=> b!2580130 (= e!1628133 (inv!40086 res!1085169))))

(assert (= (and d!730305 c!415753) b!2580128))

(assert (= (and d!730305 (not c!415753)) b!2580129))

(assert (= (and b!2580129 (not res!1085247)) b!2580130))

(declare-fun m!2915683 () Bool)

(assert (=> b!2580128 m!2915683))

(declare-fun m!2915685 () Bool)

(assert (=> b!2580130 m!2915685))

(assert (=> d!730089 d!730305))

(declare-fun d!730307 () Bool)

(declare-fun e!1628135 () Bool)

(assert (=> d!730307 e!1628135))

(declare-fun res!1085248 () Bool)

(assert (=> d!730307 (=> (not res!1085248) (not e!1628135))))

(declare-fun lt!907775 () List!29808)

(assert (=> d!730307 (= res!1085248 (= (content!4091 lt!907775) (set.union (content!4091 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (content!4091 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun e!1628134 () List!29808)

(assert (=> d!730307 (= lt!907775 e!1628134)))

(declare-fun c!415754 () Bool)

(assert (=> d!730307 (= c!415754 (is-Nil!29708 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> d!730307 (= (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) lt!907775)))

(declare-fun b!2580131 () Bool)

(assert (=> b!2580131 (= e!1628134 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580134 () Bool)

(assert (=> b!2580134 (= e!1628135 (or (not (= (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) Nil!29708)) (= lt!907775 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580132 () Bool)

(assert (=> b!2580132 (= e!1628134 (Cons!29708 (h!35128 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (++!7292 (t!211695 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580133 () Bool)

(declare-fun res!1085249 () Bool)

(assert (=> b!2580133 (=> (not res!1085249) (not e!1628135))))

(assert (=> b!2580133 (= res!1085249 (= (size!23031 lt!907775) (+ (size!23031 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (size!23031 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730307 c!415754) b!2580131))

(assert (= (and d!730307 (not c!415754)) b!2580132))

(assert (= (and d!730307 res!1085248) b!2580133))

(assert (= (and b!2580133 res!1085249) b!2580134))

(declare-fun m!2915687 () Bool)

(assert (=> d!730307 m!2915687))

(assert (=> d!730307 m!2914511))

(declare-fun m!2915689 () Bool)

(assert (=> d!730307 m!2915689))

(assert (=> d!730307 m!2914513))

(declare-fun m!2915691 () Bool)

(assert (=> d!730307 m!2915691))

(assert (=> b!2580132 m!2914513))

(declare-fun m!2915693 () Bool)

(assert (=> b!2580132 m!2915693))

(declare-fun m!2915695 () Bool)

(assert (=> b!2580133 m!2915695))

(assert (=> b!2580133 m!2914511))

(declare-fun m!2915697 () Bool)

(assert (=> b!2580133 m!2915697))

(assert (=> b!2580133 m!2914513))

(declare-fun m!2915699 () Bool)

(assert (=> b!2580133 m!2915699))

(assert (=> b!2579525 d!730307))

(declare-fun b!2580138 () Bool)

(declare-fun e!1628137 () List!29808)

(assert (=> b!2580138 (= e!1628137 (++!7292 (list!11217 (left!22632 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun d!730309 () Bool)

(declare-fun c!415755 () Bool)

(assert (=> d!730309 (= c!415755 (is-Empty!9268 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1628136 () List!29808)

(assert (=> d!730309 (= (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1628136)))

(declare-fun b!2580137 () Bool)

(assert (=> b!2580137 (= e!1628137 (list!11219 (xs!12252 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580136 () Bool)

(assert (=> b!2580136 (= e!1628136 e!1628137)))

(declare-fun c!415756 () Bool)

(assert (=> b!2580136 (= c!415756 (is-Leaf!14139 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580135 () Bool)

(assert (=> b!2580135 (= e!1628136 Nil!29708)))

(assert (= (and d!730309 c!415755) b!2580135))

(assert (= (and d!730309 (not c!415755)) b!2580136))

(assert (= (and b!2580136 c!415756) b!2580137))

(assert (= (and b!2580136 (not c!415756)) b!2580138))

(declare-fun m!2915701 () Bool)

(assert (=> b!2580138 m!2915701))

(declare-fun m!2915703 () Bool)

(assert (=> b!2580138 m!2915703))

(assert (=> b!2580138 m!2915701))

(assert (=> b!2580138 m!2915703))

(declare-fun m!2915705 () Bool)

(assert (=> b!2580138 m!2915705))

(declare-fun m!2915707 () Bool)

(assert (=> b!2580137 m!2915707))

(assert (=> b!2579525 d!730309))

(declare-fun b!2580142 () Bool)

(declare-fun e!1628139 () List!29808)

(assert (=> b!2580142 (= e!1628139 (++!7292 (list!11217 (left!22632 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun d!730311 () Bool)

(declare-fun c!415757 () Bool)

(assert (=> d!730311 (= c!415757 (is-Empty!9268 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun e!1628138 () List!29808)

(assert (=> d!730311 (= (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) e!1628138)))

(declare-fun b!2580141 () Bool)

(assert (=> b!2580141 (= e!1628139 (list!11219 (xs!12252 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580140 () Bool)

(assert (=> b!2580140 (= e!1628138 e!1628139)))

(declare-fun c!415758 () Bool)

(assert (=> b!2580140 (= c!415758 (is-Leaf!14139 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580139 () Bool)

(assert (=> b!2580139 (= e!1628138 Nil!29708)))

(assert (= (and d!730311 c!415757) b!2580139))

(assert (= (and d!730311 (not c!415757)) b!2580140))

(assert (= (and b!2580140 c!415758) b!2580141))

(assert (= (and b!2580140 (not c!415758)) b!2580142))

(declare-fun m!2915709 () Bool)

(assert (=> b!2580142 m!2915709))

(declare-fun m!2915711 () Bool)

(assert (=> b!2580142 m!2915711))

(assert (=> b!2580142 m!2915709))

(assert (=> b!2580142 m!2915711))

(declare-fun m!2915713 () Bool)

(assert (=> b!2580142 m!2915713))

(declare-fun m!2915715 () Bool)

(assert (=> b!2580141 m!2915715))

(assert (=> b!2579525 d!730311))

(declare-fun d!730313 () Bool)

(declare-fun c!415759 () Bool)

(assert (=> d!730313 (= c!415759 (is-Nil!29708 (t!211695 lt!907651)))))

(declare-fun e!1628140 () (Set (_ BitVec 16)))

(assert (=> d!730313 (= (content!4091 (t!211695 lt!907651)) e!1628140)))

(declare-fun b!2580143 () Bool)

(assert (=> b!2580143 (= e!1628140 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580144 () Bool)

(assert (=> b!2580144 (= e!1628140 (set.union (set.insert (h!35128 (t!211695 lt!907651)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907651)))))))

(assert (= (and d!730313 c!415759) b!2580143))

(assert (= (and d!730313 (not c!415759)) b!2580144))

(declare-fun m!2915717 () Bool)

(assert (=> b!2580144 m!2915717))

(declare-fun m!2915719 () Bool)

(assert (=> b!2580144 m!2915719))

(assert (=> b!2579580 d!730313))

(declare-fun d!730315 () Bool)

(assert (=> d!730315 (= (list!11219 (xs!12252 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) (innerList!9328 (xs!12252 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(assert (=> b!2579524 d!730315))

(declare-fun d!730317 () Bool)

(declare-fun lt!907776 () Int)

(assert (=> d!730317 (>= lt!907776 0)))

(declare-fun e!1628141 () Int)

(assert (=> d!730317 (= lt!907776 e!1628141)))

(declare-fun c!415760 () Bool)

(assert (=> d!730317 (= c!415760 (is-Nil!29708 lt!907664))))

(assert (=> d!730317 (= (size!23031 lt!907664) lt!907776)))

(declare-fun b!2580145 () Bool)

(assert (=> b!2580145 (= e!1628141 0)))

(declare-fun b!2580146 () Bool)

(assert (=> b!2580146 (= e!1628141 (+ 1 (size!23031 (t!211695 lt!907664))))))

(assert (= (and d!730317 c!415760) b!2580145))

(assert (= (and d!730317 (not c!415760)) b!2580146))

(declare-fun m!2915721 () Bool)

(assert (=> b!2580146 m!2915721))

(assert (=> b!2579597 d!730317))

(declare-fun d!730319 () Bool)

(declare-fun lt!907777 () Int)

(assert (=> d!730319 (>= lt!907777 0)))

(declare-fun e!1628142 () Int)

(assert (=> d!730319 (= lt!907777 e!1628142)))

(declare-fun c!415761 () Bool)

(assert (=> d!730319 (= c!415761 (is-Nil!29708 (++!7292 lt!907623 lt!907622)))))

(assert (=> d!730319 (= (size!23031 (++!7292 lt!907623 lt!907622)) lt!907777)))

(declare-fun b!2580147 () Bool)

(assert (=> b!2580147 (= e!1628142 0)))

(declare-fun b!2580148 () Bool)

(assert (=> b!2580148 (= e!1628142 (+ 1 (size!23031 (t!211695 (++!7292 lt!907623 lt!907622)))))))

(assert (= (and d!730319 c!415761) b!2580147))

(assert (= (and d!730319 (not c!415761)) b!2580148))

(assert (=> b!2580148 m!2915481))

(assert (=> b!2579597 d!730319))

(assert (=> b!2579597 d!729955))

(assert (=> b!2579673 d!729803))

(declare-fun d!730321 () Bool)

(declare-fun lt!907778 () Int)

(assert (=> d!730321 (>= lt!907778 0)))

(declare-fun e!1628143 () Int)

(assert (=> d!730321 (= lt!907778 e!1628143)))

(declare-fun c!415762 () Bool)

(assert (=> d!730321 (= c!415762 (is-Nil!29708 lt!907679))))

(assert (=> d!730321 (= (size!23031 lt!907679) lt!907778)))

(declare-fun b!2580149 () Bool)

(assert (=> b!2580149 (= e!1628143 0)))

(declare-fun b!2580150 () Bool)

(assert (=> b!2580150 (= e!1628143 (+ 1 (size!23031 (t!211695 lt!907679))))))

(assert (= (and d!730321 c!415762) b!2580149))

(assert (= (and d!730321 (not c!415762)) b!2580150))

(declare-fun m!2915723 () Bool)

(assert (=> b!2580150 m!2915723))

(assert (=> b!2579617 d!730321))

(assert (=> b!2579617 d!730209))

(declare-fun d!730323 () Bool)

(declare-fun lt!907779 () Int)

(assert (=> d!730323 (>= lt!907779 0)))

(declare-fun e!1628144 () Int)

(assert (=> d!730323 (= lt!907779 e!1628144)))

(declare-fun c!415763 () Bool)

(assert (=> d!730323 (= c!415763 (is-Nil!29708 call!166727))))

(assert (=> d!730323 (= (size!23031 call!166727) lt!907779)))

(declare-fun b!2580151 () Bool)

(assert (=> b!2580151 (= e!1628144 0)))

(declare-fun b!2580152 () Bool)

(assert (=> b!2580152 (= e!1628144 (+ 1 (size!23031 (t!211695 call!166727))))))

(assert (= (and d!730323 c!415763) b!2580151))

(assert (= (and d!730323 (not c!415763)) b!2580152))

(declare-fun m!2915725 () Bool)

(assert (=> b!2580152 m!2915725))

(assert (=> b!2579617 d!730323))

(push 1)

(assert (not b!2579902))

(assert (not b!2579826))

(assert (not b!2579602))

(assert (not b!2579863))

(assert (not b!2580083))

(assert (not bm!166730))

(assert (not b!2579608))

(assert (not d!730265))

(assert (not b!2579876))

(assert (not b!2580106))

(assert (not d!730269))

(assert (not b!2580100))

(assert (not b!2580055))

(assert (not b!2579847))

(assert (not b!2580112))

(assert (not b!2579609))

(assert (not b!2579684))

(assert (not b!2580146))

(assert (not b!2580144))

(assert (not b!2580060))

(assert (not d!730245))

(assert (not d!730229))

(assert (not b!2579839))

(assert (not d!730073))

(assert (not d!730219))

(assert (not b!2579896))

(assert (not b!2580031))

(assert (not d!730293))

(assert (not b!2579862))

(assert (not b!2580114))

(assert (not b!2579903))

(assert (not b!2579899))

(assert (not b!2580071))

(assert (not b!2579670))

(assert (not b!2579655))

(assert (not b!2579845))

(assert (not b!2580057))

(assert (not b!2580123))

(assert (not b!2579603))

(assert (not b!2580138))

(assert (not b!2579883))

(assert (not b!2580068))

(assert (not b!2580113))

(assert (not d!730075))

(assert (not b!2579878))

(assert (not b!2580010))

(assert (not b!2580022))

(assert (not b!2580126))

(assert (not b!2580152))

(assert (not b!2579698))

(assert (not b!2579906))

(assert (not d!730307))

(assert (not b!2580007))

(assert (not b!2580012))

(assert (not b!2579671))

(assert (not b!2580033))

(assert (not b!2579656))

(assert (not b!2579639))

(assert (not b!2580076))

(assert (not b!2579664))

(assert (not b!2579854))

(assert (not b!2580009))

(assert (not b!2579636))

(assert (not b!2580091))

(assert (not b!2579822))

(assert (not b!2580087))

(assert (not b!2580011))

(assert (not b!2579890))

(assert (not b!2580015))

(assert (not b!2580102))

(assert (not b!2580064))

(assert (not d!730085))

(assert (not b!2580128))

(assert (not b!2580120))

(assert (not d!730243))

(assert (not b!2579699))

(assert (not b!2580107))

(assert (not b!2580130))

(assert (not b!2580092))

(assert (not b!2580082))

(assert (not b!2579658))

(assert (not b!2580069))

(assert (not b!2580002))

(assert (not b!2580150))

(assert (not b!2580141))

(assert (not b!2579885))

(assert (not b!2580043))

(assert (not b!2579697))

(assert (not b!2580042))

(assert (not b!2580000))

(assert (not b!2580017))

(assert (not b!2580142))

(assert (not b!2579589))

(assert (not b!2579892))

(assert (not b!2579843))

(assert (not d!729933))

(assert (not b!2579681))

(assert (not b!2579654))

(assert (not b!2580137))

(assert (not d!729957))

(assert (not b!2579831))

(assert (not b!2580026))

(assert (not b!2579907))

(assert (not d!729965))

(assert (not b!2579677))

(assert (not b!2580041))

(assert (not b!2580132))

(assert (not d!729959))

(assert (not b!2580013))

(assert (not b!2579879))

(assert (not b!2580111))

(assert (not b!2580052))

(assert (not b!2580030))

(assert (not b!2580038))

(assert (not b!2580036))

(assert (not b!2579889))

(assert (not b!2580148))

(assert (not d!730091))

(assert (not b!2580121))

(assert (not b!2580008))

(assert (not b!2579866))

(assert (not b!2580074))

(assert (not b!2579444))

(assert (not b!2579591))

(assert (not b!2580040))

(assert (not d!730263))

(assert (not b!2579835))

(assert (not b!2580098))

(assert (not b!2580039))

(assert (not b!2579881))

(assert (not b!2579827))

(assert (not b!2579877))

(assert (not b!2580048))

(assert (not b!2580045))

(assert (not d!730221))

(assert (not b!2579657))

(assert (not b!2579869))

(assert (not b!2579592))

(assert (not b!2580115))

(assert (not b!2579874))

(assert (not b!2579680))

(assert (not b!2579887))

(assert (not d!730237))

(assert (not b!2579849))

(assert (not b!2580035))

(assert (not b!2579870))

(assert (not b!2580019))

(assert (not b!2579682))

(assert (not bm!166727))

(assert (not b!2579850))

(assert (not b!2580073))

(assert (not b!2579880))

(assert (not b!2579853))

(assert (not b!2579685))

(assert (not b!2579696))

(assert (not b!2579668))

(assert (not b!2579873))

(assert (not b!2580051))

(assert (not b!2580065))

(assert (not b!2580096))

(assert (not b!2579594))

(assert (not b!2579998))

(assert (not b!2579861))

(assert (not b!2579837))

(assert (not b!2580080))

(assert (not b!2579841))

(assert (not b!2579865))

(assert (not b!2580117))

(assert (not b!2580133))

(assert (not b!2580059))

(assert (not b!2580088))

(assert (not b!2579829))

(assert (not d!730093))

(assert (not b!2580021))

(assert (not b!2579900))

(assert (not b!2579640))

(assert (not b!2579824))

(assert (not b!2579895))

(assert (not b!2580047))

(assert (not b!2580027))

(assert (not b!2580004))

(assert (not bm!166726))

(assert (not b!2580006))

(assert (not b!2579659))

(assert (not d!730121))

(assert (not b!2580127))

(assert (not b!2580094))

(assert (not b!2580077))

(assert (not d!730251))

(assert (not d!730287))

(assert (not b!2579833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730443 () Bool)

(declare-fun e!1628225 () Bool)

(assert (=> d!730443 e!1628225))

(declare-fun res!1085283 () Bool)

(assert (=> d!730443 (=> (not res!1085283) (not e!1628225))))

(declare-fun lt!907806 () List!29808)

(assert (=> d!730443 (= res!1085283 (= (content!4091 lt!907806) (set.union (content!4091 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (content!4091 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628224 () List!29808)

(assert (=> d!730443 (= lt!907806 e!1628224)))

(declare-fun c!415825 () Bool)

(assert (=> d!730443 (= c!415825 (is-Nil!29708 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> d!730443 (= (++!7292 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) lt!907806)))

(declare-fun b!2580309 () Bool)

(assert (=> b!2580309 (= e!1628224 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))

(declare-fun b!2580312 () Bool)

(assert (=> b!2580312 (= e!1628225 (or (not (= (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))) Nil!29708)) (= lt!907806 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580310 () Bool)

(assert (=> b!2580310 (= e!1628224 (Cons!29708 (h!35128 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (++!7292 (t!211695 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580311 () Bool)

(declare-fun res!1085284 () Bool)

(assert (=> b!2580311 (=> (not res!1085284) (not e!1628225))))

(assert (=> b!2580311 (= res!1085284 (= (size!23031 lt!907806) (+ (size!23031 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (size!23031 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (= (and d!730443 c!415825) b!2580309))

(assert (= (and d!730443 (not c!415825)) b!2580310))

(assert (= (and d!730443 res!1085283) b!2580311))

(assert (= (and b!2580311 res!1085284) b!2580312))

(declare-fun m!2916053 () Bool)

(assert (=> d!730443 m!2916053))

(assert (=> d!730443 m!2914253))

(declare-fun m!2916055 () Bool)

(assert (=> d!730443 m!2916055))

(assert (=> d!730443 m!2915045))

(declare-fun m!2916057 () Bool)

(assert (=> d!730443 m!2916057))

(assert (=> b!2580310 m!2915045))

(declare-fun m!2916059 () Bool)

(assert (=> b!2580310 m!2916059))

(declare-fun m!2916061 () Bool)

(assert (=> b!2580311 m!2916061))

(assert (=> b!2580311 m!2914253))

(declare-fun m!2916063 () Bool)

(assert (=> b!2580311 m!2916063))

(assert (=> b!2580311 m!2915045))

(declare-fun m!2916065 () Bool)

(assert (=> b!2580311 m!2916065))

(assert (=> d!730287 d!730443))

(assert (=> d!730287 d!729787))

(declare-fun d!730445 () Bool)

(declare-fun e!1628227 () Bool)

(assert (=> d!730445 e!1628227))

(declare-fun res!1085285 () Bool)

(assert (=> d!730445 (=> (not res!1085285) (not e!1628227))))

(declare-fun lt!907807 () List!29808)

(assert (=> d!730445 (= res!1085285 (= (content!4091 lt!907807) (set.union (content!4091 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (content!4091 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1628226 () List!29808)

(assert (=> d!730445 (= lt!907807 e!1628226)))

(declare-fun c!415826 () Bool)

(assert (=> d!730445 (= c!415826 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))

(assert (=> d!730445 (= (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907807)))

(declare-fun b!2580313 () Bool)

(assert (=> b!2580313 (= e!1628226 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580316 () Bool)

(assert (=> b!2580316 (= e!1628227 (or (not (= (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907807 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2580314 () Bool)

(assert (=> b!2580314 (= e!1628226 (Cons!29708 (h!35128 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (++!7292 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2580315 () Bool)

(declare-fun res!1085286 () Bool)

(assert (=> b!2580315 (=> (not res!1085286) (not e!1628227))))

(assert (=> b!2580315 (= res!1085286 (= (size!23031 lt!907807) (+ (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (size!23031 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730445 c!415826) b!2580313))

(assert (= (and d!730445 (not c!415826)) b!2580314))

(assert (= (and d!730445 res!1085285) b!2580315))

(assert (= (and b!2580315 res!1085286) b!2580316))

(declare-fun m!2916067 () Bool)

(assert (=> d!730445 m!2916067))

(assert (=> d!730445 m!2914819))

(assert (=> d!730445 m!2914351))

(assert (=> d!730445 m!2915147))

(assert (=> b!2580314 m!2914351))

(declare-fun m!2916069 () Bool)

(assert (=> b!2580314 m!2916069))

(declare-fun m!2916071 () Bool)

(assert (=> b!2580315 m!2916071))

(assert (=> b!2580315 m!2915095))

(assert (=> b!2580315 m!2914351))

(assert (=> b!2580315 m!2915153))

(assert (=> b!2579873 d!730445))

(declare-fun b!2580320 () Bool)

(declare-fun e!1628229 () List!29808)

(assert (=> b!2580320 (= e!1628229 (++!7292 (list!11217 (left!22632 res!1085245)) (list!11217 (right!22962 res!1085245))))))

(declare-fun d!730447 () Bool)

(declare-fun c!415827 () Bool)

(assert (=> d!730447 (= c!415827 (is-Empty!9268 res!1085245))))

(declare-fun e!1628228 () List!29808)

(assert (=> d!730447 (= (list!11217 res!1085245) e!1628228)))

(declare-fun b!2580319 () Bool)

(assert (=> b!2580319 (= e!1628229 (list!11219 (xs!12252 res!1085245)))))

(declare-fun b!2580318 () Bool)

(assert (=> b!2580318 (= e!1628228 e!1628229)))

(declare-fun c!415828 () Bool)

(assert (=> b!2580318 (= c!415828 (is-Leaf!14139 res!1085245))))

(declare-fun b!2580317 () Bool)

(assert (=> b!2580317 (= e!1628228 Nil!29708)))

(assert (= (and d!730447 c!415827) b!2580317))

(assert (= (and d!730447 (not c!415827)) b!2580318))

(assert (= (and b!2580318 c!415828) b!2580319))

(assert (= (and b!2580318 (not c!415828)) b!2580320))

(declare-fun m!2916073 () Bool)

(assert (=> b!2580320 m!2916073))

(declare-fun m!2916075 () Bool)

(assert (=> b!2580320 m!2916075))

(assert (=> b!2580320 m!2916073))

(assert (=> b!2580320 m!2916075))

(declare-fun m!2916077 () Bool)

(assert (=> b!2580320 m!2916077))

(declare-fun m!2916079 () Bool)

(assert (=> b!2580319 m!2916079))

(assert (=> d!730293 d!730447))

(declare-fun d!730449 () Bool)

(declare-fun c!415829 () Bool)

(assert (=> d!730449 (= c!415829 (is-Node!9268 res!1085245))))

(declare-fun e!1628230 () Bool)

(assert (=> d!730449 (= (inv!40081 res!1085245) e!1628230)))

(declare-fun b!2580321 () Bool)

(assert (=> b!2580321 (= e!1628230 (inv!40085 res!1085245))))

(declare-fun b!2580322 () Bool)

(declare-fun e!1628231 () Bool)

(assert (=> b!2580322 (= e!1628230 e!1628231)))

(declare-fun res!1085287 () Bool)

(assert (=> b!2580322 (= res!1085287 (not (is-Leaf!14139 res!1085245)))))

(assert (=> b!2580322 (=> res!1085287 e!1628231)))

(declare-fun b!2580323 () Bool)

(assert (=> b!2580323 (= e!1628231 (inv!40086 res!1085245))))

(assert (= (and d!730449 c!415829) b!2580321))

(assert (= (and d!730449 (not c!415829)) b!2580322))

(assert (= (and b!2580322 (not res!1085287)) b!2580323))

(declare-fun m!2916081 () Bool)

(assert (=> b!2580321 m!2916081))

(declare-fun m!2916083 () Bool)

(assert (=> b!2580323 m!2916083))

(assert (=> d!730293 d!730449))

(assert (=> b!2579681 d!729827))

(declare-fun d!730451 () Bool)

(declare-fun res!1085288 () Bool)

(declare-fun e!1628232 () Bool)

(assert (=> d!730451 (=> (not res!1085288) (not e!1628232))))

(assert (=> d!730451 (= res!1085288 (= (csize!18766 (right!22962 (c!415433 x!464697))) (+ (size!23033 (left!22632 (right!22962 (c!415433 x!464697)))) (size!23033 (right!22962 (right!22962 (c!415433 x!464697)))))))))

(assert (=> d!730451 (= (inv!40085 (right!22962 (c!415433 x!464697))) e!1628232)))

(declare-fun b!2580324 () Bool)

(declare-fun res!1085289 () Bool)

(assert (=> b!2580324 (=> (not res!1085289) (not e!1628232))))

(assert (=> b!2580324 (= res!1085289 (and (not (= (left!22632 (right!22962 (c!415433 x!464697))) Empty!9268)) (not (= (right!22962 (right!22962 (c!415433 x!464697))) Empty!9268))))))

(declare-fun b!2580325 () Bool)

(declare-fun res!1085290 () Bool)

(assert (=> b!2580325 (=> (not res!1085290) (not e!1628232))))

(assert (=> b!2580325 (= res!1085290 (= (cheight!9479 (right!22962 (c!415433 x!464697))) (+ (max!0 (height!1345 (left!22632 (right!22962 (c!415433 x!464697)))) (height!1345 (right!22962 (right!22962 (c!415433 x!464697))))) 1)))))

(declare-fun b!2580326 () Bool)

(assert (=> b!2580326 (= e!1628232 (<= 0 (cheight!9479 (right!22962 (c!415433 x!464697)))))))

(assert (= (and d!730451 res!1085288) b!2580324))

(assert (= (and b!2580324 res!1085289) b!2580325))

(assert (= (and b!2580325 res!1085290) b!2580326))

(declare-fun m!2916085 () Bool)

(assert (=> d!730451 m!2916085))

(declare-fun m!2916087 () Bool)

(assert (=> d!730451 m!2916087))

(declare-fun m!2916089 () Bool)

(assert (=> b!2580325 m!2916089))

(declare-fun m!2916091 () Bool)

(assert (=> b!2580325 m!2916091))

(assert (=> b!2580325 m!2916089))

(assert (=> b!2580325 m!2916091))

(declare-fun m!2916093 () Bool)

(assert (=> b!2580325 m!2916093))

(assert (=> b!2579592 d!730451))

(declare-fun d!730453 () Bool)

(declare-fun lt!907808 () Int)

(assert (=> d!730453 (>= lt!907808 0)))

(declare-fun e!1628233 () Int)

(assert (=> d!730453 (= lt!907808 e!1628233)))

(declare-fun c!415830 () Bool)

(assert (=> d!730453 (= c!415830 (is-Nil!29708 (innerList!9328 (xs!12252 (c!415433 x!464697)))))))

(assert (=> d!730453 (= (size!23031 (innerList!9328 (xs!12252 (c!415433 x!464697)))) lt!907808)))

(declare-fun b!2580327 () Bool)

(assert (=> b!2580327 (= e!1628233 0)))

(declare-fun b!2580328 () Bool)

(assert (=> b!2580328 (= e!1628233 (+ 1 (size!23031 (t!211695 (innerList!9328 (xs!12252 (c!415433 x!464697)))))))))

(assert (= (and d!730453 c!415830) b!2580327))

(assert (= (and d!730453 (not c!415830)) b!2580328))

(declare-fun m!2916095 () Bool)

(assert (=> b!2580328 m!2916095))

(assert (=> d!729933 d!730453))

(declare-fun d!730455 () Bool)

(assert (=> d!730455 (= (inv!40087 (xs!12252 (right!22962 (c!415433 x!464697)))) (<= (size!23031 (innerList!9328 (xs!12252 (right!22962 (c!415433 x!464697))))) 2147483647))))

(declare-fun bs!471186 () Bool)

(assert (= bs!471186 d!730455))

(declare-fun m!2916097 () Bool)

(assert (=> bs!471186 m!2916097))

(assert (=> b!2579699 d!730455))

(declare-fun d!730457 () Bool)

(declare-fun lt!907809 () Int)

(assert (=> d!730457 (>= lt!907809 0)))

(declare-fun e!1628234 () Int)

(assert (=> d!730457 (= lt!907809 e!1628234)))

(declare-fun c!415831 () Bool)

(assert (=> d!730457 (= c!415831 (is-Nil!29708 (t!211695 lt!907650)))))

(assert (=> d!730457 (= (size!23031 (t!211695 lt!907650)) lt!907809)))

(declare-fun b!2580329 () Bool)

(assert (=> b!2580329 (= e!1628234 0)))

(declare-fun b!2580330 () Bool)

(assert (=> b!2580330 (= e!1628234 (+ 1 (size!23031 (t!211695 (t!211695 lt!907650)))))))

(assert (= (and d!730457 c!415831) b!2580329))

(assert (= (and d!730457 (not c!415831)) b!2580330))

(declare-fun m!2916099 () Bool)

(assert (=> b!2580330 m!2916099))

(assert (=> b!2579845 d!730457))

(declare-fun d!730459 () Bool)

(assert (=> d!730459 (= (inv!40087 (xs!12252 res!1085169)) (<= (size!23031 (innerList!9328 (xs!12252 res!1085169))) 2147483647))))

(declare-fun bs!471187 () Bool)

(assert (= bs!471187 d!730459))

(declare-fun m!2916101 () Bool)

(assert (=> bs!471187 m!2916101))

(assert (=> b!2579862 d!730459))

(declare-fun b!2580331 () Bool)

(declare-fun e!1628235 () Bool)

(declare-fun e!1628236 () Bool)

(assert (=> b!2580331 (= e!1628235 e!1628236)))

(declare-fun res!1085295 () Bool)

(assert (=> b!2580331 (=> (not res!1085295) (not e!1628236))))

(assert (=> b!2580331 (= res!1085295 (<= (- 1) (- (height!1345 (left!22632 (right!22962 (c!415433 x!464697)))) (height!1345 (right!22962 (right!22962 (c!415433 x!464697)))))))))

(declare-fun b!2580332 () Bool)

(assert (=> b!2580332 (= e!1628236 (not (isEmpty!17078 (right!22962 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580333 () Bool)

(declare-fun res!1085291 () Bool)

(assert (=> b!2580333 (=> (not res!1085291) (not e!1628236))))

(assert (=> b!2580333 (= res!1085291 (isBalanced!2825 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580334 () Bool)

(declare-fun res!1085293 () Bool)

(assert (=> b!2580334 (=> (not res!1085293) (not e!1628236))))

(assert (=> b!2580334 (= res!1085293 (<= (- (height!1345 (left!22632 (right!22962 (c!415433 x!464697)))) (height!1345 (right!22962 (right!22962 (c!415433 x!464697))))) 1))))

(declare-fun b!2580335 () Bool)

(declare-fun res!1085294 () Bool)

(assert (=> b!2580335 (=> (not res!1085294) (not e!1628236))))

(assert (=> b!2580335 (= res!1085294 (not (isEmpty!17078 (left!22632 (right!22962 (c!415433 x!464697))))))))

(declare-fun d!730461 () Bool)

(declare-fun res!1085296 () Bool)

(assert (=> d!730461 (=> res!1085296 e!1628235)))

(assert (=> d!730461 (= res!1085296 (not (is-Node!9268 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730461 (= (isBalanced!2825 (right!22962 (c!415433 x!464697))) e!1628235)))

(declare-fun b!2580336 () Bool)

(declare-fun res!1085292 () Bool)

(assert (=> b!2580336 (=> (not res!1085292) (not e!1628236))))

(assert (=> b!2580336 (= res!1085292 (isBalanced!2825 (left!22632 (right!22962 (c!415433 x!464697)))))))

(assert (= (and d!730461 (not res!1085296)) b!2580331))

(assert (= (and b!2580331 res!1085295) b!2580334))

(assert (= (and b!2580334 res!1085293) b!2580336))

(assert (= (and b!2580336 res!1085292) b!2580333))

(assert (= (and b!2580333 res!1085291) b!2580335))

(assert (= (and b!2580335 res!1085294) b!2580332))

(assert (=> b!2580334 m!2916089))

(assert (=> b!2580334 m!2916091))

(declare-fun m!2916103 () Bool)

(assert (=> b!2580332 m!2916103))

(assert (=> b!2580331 m!2916089))

(assert (=> b!2580331 m!2916091))

(declare-fun m!2916105 () Bool)

(assert (=> b!2580336 m!2916105))

(declare-fun m!2916107 () Bool)

(assert (=> b!2580335 m!2916107))

(declare-fun m!2916109 () Bool)

(assert (=> b!2580333 m!2916109))

(assert (=> b!2579656 d!730461))

(declare-fun b!2580340 () Bool)

(declare-fun e!1628238 () List!29808)

(assert (=> b!2580340 (= e!1628238 (++!7292 (list!11217 (left!22632 lt!907757)) (list!11217 (right!22962 lt!907757))))))

(declare-fun d!730463 () Bool)

(declare-fun c!415832 () Bool)

(assert (=> d!730463 (= c!415832 (is-Empty!9268 lt!907757))))

(declare-fun e!1628237 () List!29808)

(assert (=> d!730463 (= (list!11217 lt!907757) e!1628237)))

(declare-fun b!2580339 () Bool)

(assert (=> b!2580339 (= e!1628238 (list!11219 (xs!12252 lt!907757)))))

(declare-fun b!2580338 () Bool)

(assert (=> b!2580338 (= e!1628237 e!1628238)))

(declare-fun c!415833 () Bool)

(assert (=> b!2580338 (= c!415833 (is-Leaf!14139 lt!907757))))

(declare-fun b!2580337 () Bool)

(assert (=> b!2580337 (= e!1628237 Nil!29708)))

(assert (= (and d!730463 c!415832) b!2580337))

(assert (= (and d!730463 (not c!415832)) b!2580338))

(assert (= (and b!2580338 c!415833) b!2580339))

(assert (= (and b!2580338 (not c!415833)) b!2580340))

(declare-fun m!2916111 () Bool)

(assert (=> b!2580340 m!2916111))

(declare-fun m!2916113 () Bool)

(assert (=> b!2580340 m!2916113))

(assert (=> b!2580340 m!2916111))

(assert (=> b!2580340 m!2916113))

(declare-fun m!2916115 () Bool)

(assert (=> b!2580340 m!2916115))

(declare-fun m!2916117 () Bool)

(assert (=> b!2580339 m!2916117))

(assert (=> d!730221 d!730463))

(declare-fun d!730465 () Bool)

(declare-fun e!1628240 () Bool)

(assert (=> d!730465 e!1628240))

(declare-fun res!1085298 () Bool)

(assert (=> d!730465 (=> (not res!1085298) (not e!1628240))))

(declare-fun res!1085297 () Conc!9268)

(assert (=> d!730465 (= res!1085298 (= (list!11217 res!1085297) (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))

(declare-fun e!1628239 () Bool)

(assert (=> d!730465 (and (inv!40081 res!1085297) e!1628239)))

(assert (=> d!730465 (= (choose!15207 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))) res!1085297)))

(declare-fun b!2580341 () Bool)

(declare-fun tp!819407 () Bool)

(declare-fun tp!819408 () Bool)

(assert (=> b!2580341 (= e!1628239 (and (inv!40081 (left!22632 res!1085297)) tp!819408 (inv!40081 (right!22962 res!1085297)) tp!819407))))

(declare-fun b!2580342 () Bool)

(assert (=> b!2580342 (= e!1628239 (inv!40087 (xs!12252 res!1085297)))))

(declare-fun b!2580343 () Bool)

(assert (=> b!2580343 (= e!1628240 (isBalanced!2825 res!1085297))))

(assert (= (and d!730465 (is-Node!9268 res!1085297)) b!2580341))

(assert (= (and d!730465 (is-Leaf!14139 res!1085297)) b!2580342))

(assert (= (and d!730465 res!1085298) b!2580343))

(declare-fun m!2916119 () Bool)

(assert (=> d!730465 m!2916119))

(declare-fun m!2916121 () Bool)

(assert (=> d!730465 m!2916121))

(declare-fun m!2916123 () Bool)

(assert (=> b!2580341 m!2916123))

(declare-fun m!2916125 () Bool)

(assert (=> b!2580341 m!2916125))

(declare-fun m!2916127 () Bool)

(assert (=> b!2580342 m!2916127))

(declare-fun m!2916129 () Bool)

(assert (=> b!2580343 m!2916129))

(assert (=> d!730221 d!730465))

(declare-fun d!730467 () Bool)

(declare-fun lt!907810 () Int)

(assert (=> d!730467 (>= lt!907810 0)))

(declare-fun e!1628242 () Int)

(assert (=> d!730467 (= lt!907810 e!1628242)))

(declare-fun c!415834 () Bool)

(assert (=> d!730467 (= c!415834 (is-Nil!29708 lt!907729))))

(assert (=> d!730467 (= (size!23031 lt!907729) lt!907810)))

(declare-fun b!2580344 () Bool)

(assert (=> b!2580344 (= e!1628242 0)))

(declare-fun b!2580345 () Bool)

(assert (=> b!2580345 (= e!1628242 (+ 1 (size!23031 (t!211695 lt!907729))))))

(assert (= (and d!730467 c!415834) b!2580344))

(assert (= (and d!730467 (not c!415834)) b!2580345))

(declare-fun m!2916131 () Bool)

(assert (=> b!2580345 m!2916131))

(assert (=> b!2579870 d!730467))

(assert (=> b!2579870 d!730211))

(assert (=> b!2579870 d!729955))

(declare-fun d!730469 () Bool)

(declare-fun c!415835 () Bool)

(assert (=> d!730469 (= c!415835 (is-Nil!29708 (t!211695 call!166727)))))

(declare-fun e!1628243 () (Set (_ BitVec 16)))

(assert (=> d!730469 (= (content!4091 (t!211695 call!166727)) e!1628243)))

(declare-fun b!2580346 () Bool)

(assert (=> b!2580346 (= e!1628243 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580347 () Bool)

(assert (=> b!2580347 (= e!1628243 (set.union (set.insert (h!35128 (t!211695 call!166727)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 call!166727)))))))

(assert (= (and d!730469 c!415835) b!2580346))

(assert (= (and d!730469 (not c!415835)) b!2580347))

(declare-fun m!2916133 () Bool)

(assert (=> b!2580347 m!2916133))

(declare-fun m!2916135 () Bool)

(assert (=> b!2580347 m!2916135))

(assert (=> b!2579826 d!730469))

(declare-fun d!730471 () Bool)

(declare-fun lt!907813 () Bool)

(declare-fun isEmpty!17080 (List!29808) Bool)

(assert (=> d!730471 (= lt!907813 (isEmpty!17080 (list!11217 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730471 (= lt!907813 (= (size!23033 (right!22962 (c!415433 x!464697))) 0))))

(assert (=> d!730471 (= (isEmpty!17078 (right!22962 (c!415433 x!464697))) lt!907813)))

(declare-fun bs!471188 () Bool)

(assert (= bs!471188 d!730471))

(assert (=> bs!471188 m!2914315))

(assert (=> bs!471188 m!2914315))

(declare-fun m!2916137 () Bool)

(assert (=> bs!471188 m!2916137))

(assert (=> bs!471188 m!2914773))

(assert (=> b!2579655 d!730471))

(declare-fun d!730473 () Bool)

(declare-fun c!415836 () Bool)

(assert (=> d!730473 (= c!415836 (is-Node!9268 (left!22632 res!1085169)))))

(declare-fun e!1628244 () Bool)

(assert (=> d!730473 (= (inv!40081 (left!22632 res!1085169)) e!1628244)))

(declare-fun b!2580348 () Bool)

(assert (=> b!2580348 (= e!1628244 (inv!40085 (left!22632 res!1085169)))))

(declare-fun b!2580349 () Bool)

(declare-fun e!1628245 () Bool)

(assert (=> b!2580349 (= e!1628244 e!1628245)))

(declare-fun res!1085299 () Bool)

(assert (=> b!2580349 (= res!1085299 (not (is-Leaf!14139 (left!22632 res!1085169))))))

(assert (=> b!2580349 (=> res!1085299 e!1628245)))

(declare-fun b!2580350 () Bool)

(assert (=> b!2580350 (= e!1628245 (inv!40086 (left!22632 res!1085169)))))

(assert (= (and d!730473 c!415836) b!2580348))

(assert (= (and d!730473 (not c!415836)) b!2580349))

(assert (= (and b!2580349 (not res!1085299)) b!2580350))

(declare-fun m!2916139 () Bool)

(assert (=> b!2580348 m!2916139))

(declare-fun m!2916141 () Bool)

(assert (=> b!2580350 m!2916141))

(assert (=> b!2579861 d!730473))

(declare-fun d!730475 () Bool)

(declare-fun c!415837 () Bool)

(assert (=> d!730475 (= c!415837 (is-Node!9268 (right!22962 res!1085169)))))

(declare-fun e!1628246 () Bool)

(assert (=> d!730475 (= (inv!40081 (right!22962 res!1085169)) e!1628246)))

(declare-fun b!2580351 () Bool)

(assert (=> b!2580351 (= e!1628246 (inv!40085 (right!22962 res!1085169)))))

(declare-fun b!2580352 () Bool)

(declare-fun e!1628247 () Bool)

(assert (=> b!2580352 (= e!1628246 e!1628247)))

(declare-fun res!1085300 () Bool)

(assert (=> b!2580352 (= res!1085300 (not (is-Leaf!14139 (right!22962 res!1085169))))))

(assert (=> b!2580352 (=> res!1085300 e!1628247)))

(declare-fun b!2580353 () Bool)

(assert (=> b!2580353 (= e!1628247 (inv!40086 (right!22962 res!1085169)))))

(assert (= (and d!730475 c!415837) b!2580351))

(assert (= (and d!730475 (not c!415837)) b!2580352))

(assert (= (and b!2580352 (not res!1085300)) b!2580353))

(declare-fun m!2916143 () Bool)

(assert (=> b!2580351 m!2916143))

(declare-fun m!2916145 () Bool)

(assert (=> b!2580353 m!2916145))

(assert (=> b!2579861 d!730475))

(declare-fun d!730477 () Bool)

(declare-fun e!1628249 () Bool)

(assert (=> d!730477 e!1628249))

(declare-fun res!1085301 () Bool)

(assert (=> d!730477 (=> (not res!1085301) (not e!1628249))))

(declare-fun lt!907814 () List!29808)

(assert (=> d!730477 (= res!1085301 (= (content!4091 lt!907814) (set.union (content!4091 e!1627859) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628248 () List!29808)

(assert (=> d!730477 (= lt!907814 e!1628248)))

(declare-fun c!415838 () Bool)

(assert (=> d!730477 (= c!415838 (is-Nil!29708 e!1627859))))

(assert (=> d!730477 (= (++!7292 e!1627859 (efficientList$default$2!135 (c!415433 x!464697))) lt!907814)))

(declare-fun b!2580354 () Bool)

(assert (=> b!2580354 (= e!1628248 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580357 () Bool)

(assert (=> b!2580357 (= e!1628249 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907814 e!1627859)))))

(declare-fun b!2580355 () Bool)

(assert (=> b!2580355 (= e!1628248 (Cons!29708 (h!35128 e!1627859) (++!7292 (t!211695 e!1627859) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580356 () Bool)

(declare-fun res!1085302 () Bool)

(assert (=> b!2580356 (=> (not res!1085302) (not e!1628249))))

(assert (=> b!2580356 (= res!1085302 (= (size!23031 lt!907814) (+ (size!23031 e!1627859) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730477 c!415838) b!2580354))

(assert (= (and d!730477 (not c!415838)) b!2580355))

(assert (= (and d!730477 res!1085301) b!2580356))

(assert (= (and b!2580356 res!1085302) b!2580357))

(declare-fun m!2916147 () Bool)

(assert (=> d!730477 m!2916147))

(declare-fun m!2916149 () Bool)

(assert (=> d!730477 m!2916149))

(assert (=> d!730477 m!2914321))

(assert (=> d!730477 m!2914393))

(assert (=> b!2580355 m!2914321))

(declare-fun m!2916151 () Bool)

(assert (=> b!2580355 m!2916151))

(declare-fun m!2916153 () Bool)

(assert (=> b!2580356 m!2916153))

(declare-fun m!2916155 () Bool)

(assert (=> b!2580356 m!2916155))

(assert (=> b!2580356 m!2914321))

(assert (=> b!2580356 m!2914401))

(assert (=> bm!166726 d!730477))

(assert (=> b!2579680 d!729829))

(declare-fun d!730479 () Bool)

(declare-fun c!415839 () Bool)

(assert (=> d!730479 (= c!415839 (is-Nil!29708 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))))))

(declare-fun e!1628250 () (Set (_ BitVec 16)))

(assert (=> d!730479 (= (content!4091 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) e!1628250)))

(declare-fun b!2580358 () Bool)

(assert (=> b!2580358 (= e!1628250 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580359 () Bool)

(assert (=> b!2580359 (= e!1628250 (set.union (set.insert (h!35128 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (t!211695 (list!11217 (c!415433 x!464697))))))))))

(assert (= (and d!730479 c!415839) b!2580358))

(assert (= (and d!730479 (not c!415839)) b!2580359))

(declare-fun m!2916157 () Bool)

(assert (=> b!2580359 m!2916157))

(declare-fun m!2916159 () Bool)

(assert (=> b!2580359 m!2916159))

(assert (=> b!2579837 d!730479))

(assert (=> d!729959 d!729845))

(declare-fun d!730481 () Bool)

(declare-fun lt!907844 () List!29808)

(assert (=> d!730481 (= lt!907844 (list!11219 (xs!12252 (c!415433 x!464697))))))

(declare-fun e!1628282 () List!29808)

(assert (=> d!730481 (= lt!907844 e!1628282)))

(declare-fun c!415858 () Bool)

(assert (=> d!730481 (= c!415858 (<= (size!23034 (xs!12252 (c!415433 x!464697))) 0))))

(declare-fun e!1628283 () Bool)

(assert (=> d!730481 e!1628283))

(declare-fun res!1085330 () Bool)

(assert (=> d!730481 (=> (not res!1085330) (not e!1628283))))

(assert (=> d!730481 (= res!1085330 (<= 0 (size!23034 (xs!12252 (c!415433 x!464697)))))))

(assert (=> d!730481 (= (rec!14 (xs!12252 (c!415433 x!464697)) (size!23034 (xs!12252 (c!415433 x!464697))) Nil!29708) lt!907844)))

(declare-fun b!2580424 () Bool)

(assert (=> b!2580424 (= e!1628283 (<= (size!23034 (xs!12252 (c!415433 x!464697))) (size!23034 (xs!12252 (c!415433 x!464697)))))))

(declare-fun b!2580425 () Bool)

(assert (=> b!2580425 (= e!1628282 Nil!29708)))

(declare-fun b!2580426 () Bool)

(declare-fun $colon$colon!539 (List!29808 (_ BitVec 16)) List!29808)

(declare-fun apply!7011 (IArray!18541 Int) (_ BitVec 16))

(assert (=> b!2580426 (= e!1628282 (rec!14 (xs!12252 (c!415433 x!464697)) (- (size!23034 (xs!12252 (c!415433 x!464697))) 1) ($colon$colon!539 Nil!29708 (apply!7011 (xs!12252 (c!415433 x!464697)) (- (size!23034 (xs!12252 (c!415433 x!464697))) 1)))))))

(declare-fun lt!907837 () List!29808)

(assert (=> b!2580426 (= lt!907837 (list!11219 (xs!12252 (c!415433 x!464697))))))

(declare-fun lt!907845 () Int)

(assert (=> b!2580426 (= lt!907845 (- (size!23034 (xs!12252 (c!415433 x!464697))) 1))))

(declare-fun lt!907840 () Unit!43542)

(declare-fun lemmaDropApply!749 (List!29808 Int) Unit!43542)

(assert (=> b!2580426 (= lt!907840 (lemmaDropApply!749 lt!907837 lt!907845))))

(declare-fun head!5851 (List!29808) (_ BitVec 16))

(declare-fun drop!1527 (List!29808 Int) List!29808)

(declare-fun apply!7012 (List!29808 Int) (_ BitVec 16))

(assert (=> b!2580426 (= (head!5851 (drop!1527 lt!907837 lt!907845)) (apply!7012 lt!907837 lt!907845))))

(declare-fun lt!907842 () Unit!43542)

(assert (=> b!2580426 (= lt!907842 lt!907840)))

(declare-fun lt!907843 () List!29808)

(assert (=> b!2580426 (= lt!907843 (list!11219 (xs!12252 (c!415433 x!464697))))))

(declare-fun lt!907841 () Int)

(assert (=> b!2580426 (= lt!907841 (- (size!23034 (xs!12252 (c!415433 x!464697))) 1))))

(declare-fun lt!907839 () Unit!43542)

(declare-fun lemmaDropTail!725 (List!29808 Int) Unit!43542)

(assert (=> b!2580426 (= lt!907839 (lemmaDropTail!725 lt!907843 lt!907841))))

(declare-fun tail!4124 (List!29808) List!29808)

(assert (=> b!2580426 (= (tail!4124 (drop!1527 lt!907843 lt!907841)) (drop!1527 lt!907843 (+ lt!907841 1)))))

(declare-fun lt!907838 () Unit!43542)

(assert (=> b!2580426 (= lt!907838 lt!907839)))

(assert (= (and d!730481 res!1085330) b!2580424))

(assert (= (and d!730481 c!415858) b!2580425))

(assert (= (and d!730481 (not c!415858)) b!2580426))

(assert (=> d!730481 m!2914319))

(assert (=> b!2580424 m!2914781))

(declare-fun m!2916289 () Bool)

(assert (=> b!2580426 m!2916289))

(declare-fun m!2916291 () Bool)

(assert (=> b!2580426 m!2916291))

(declare-fun m!2916293 () Bool)

(assert (=> b!2580426 m!2916293))

(declare-fun m!2916295 () Bool)

(assert (=> b!2580426 m!2916295))

(assert (=> b!2580426 m!2916291))

(declare-fun m!2916297 () Bool)

(assert (=> b!2580426 m!2916297))

(assert (=> b!2580426 m!2914319))

(declare-fun m!2916299 () Bool)

(assert (=> b!2580426 m!2916299))

(declare-fun m!2916301 () Bool)

(assert (=> b!2580426 m!2916301))

(assert (=> b!2580426 m!2916299))

(declare-fun m!2916303 () Bool)

(assert (=> b!2580426 m!2916303))

(declare-fun m!2916307 () Bool)

(assert (=> b!2580426 m!2916307))

(assert (=> b!2580426 m!2916293))

(declare-fun m!2916309 () Bool)

(assert (=> b!2580426 m!2916309))

(assert (=> b!2580426 m!2916289))

(declare-fun m!2916311 () Bool)

(assert (=> b!2580426 m!2916311))

(assert (=> d!729959 d!730481))

(declare-fun d!730533 () Bool)

(declare-fun lt!907856 () Int)

(assert (=> d!730533 (= lt!907856 (size!23031 (list!11219 (xs!12252 (c!415433 x!464697)))))))

(declare-fun choose!15211 (IArray!18541) Int)

(assert (=> d!730533 (= lt!907856 (choose!15211 (xs!12252 (c!415433 x!464697))))))

(assert (=> d!730533 (= (size!23034 (xs!12252 (c!415433 x!464697))) lt!907856)))

(declare-fun bs!471189 () Bool)

(assert (= bs!471189 d!730533))

(assert (=> bs!471189 m!2914319))

(assert (=> bs!471189 m!2914319))

(assert (=> bs!471189 m!2914803))

(declare-fun m!2916343 () Bool)

(assert (=> bs!471189 m!2916343))

(assert (=> d!729959 d!730533))

(declare-fun d!730537 () Bool)

(declare-fun c!415865 () Bool)

(assert (=> d!730537 (= c!415865 (is-Node!9268 (left!22632 (right!22962 (c!415433 x!464697)))))))

(declare-fun e!1628292 () Bool)

(assert (=> d!730537 (= (inv!40081 (left!22632 (right!22962 (c!415433 x!464697)))) e!1628292)))

(declare-fun b!2580443 () Bool)

(assert (=> b!2580443 (= e!1628292 (inv!40085 (left!22632 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580444 () Bool)

(declare-fun e!1628293 () Bool)

(assert (=> b!2580444 (= e!1628292 e!1628293)))

(declare-fun res!1085335 () Bool)

(assert (=> b!2580444 (= res!1085335 (not (is-Leaf!14139 (left!22632 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580444 (=> res!1085335 e!1628293)))

(declare-fun b!2580445 () Bool)

(assert (=> b!2580445 (= e!1628293 (inv!40086 (left!22632 (right!22962 (c!415433 x!464697)))))))

(assert (= (and d!730537 c!415865) b!2580443))

(assert (= (and d!730537 (not c!415865)) b!2580444))

(assert (= (and b!2580444 (not res!1085335)) b!2580445))

(declare-fun m!2916347 () Bool)

(assert (=> b!2580443 m!2916347))

(declare-fun m!2916349 () Bool)

(assert (=> b!2580445 m!2916349))

(assert (=> b!2579698 d!730537))

(declare-fun d!730541 () Bool)

(declare-fun c!415869 () Bool)

(assert (=> d!730541 (= c!415869 (is-Node!9268 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun e!1628297 () Bool)

(assert (=> d!730541 (= (inv!40081 (right!22962 (right!22962 (c!415433 x!464697)))) e!1628297)))

(declare-fun b!2580452 () Bool)

(assert (=> b!2580452 (= e!1628297 (inv!40085 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun b!2580453 () Bool)

(declare-fun e!1628298 () Bool)

(assert (=> b!2580453 (= e!1628297 e!1628298)))

(declare-fun res!1085336 () Bool)

(assert (=> b!2580453 (= res!1085336 (not (is-Leaf!14139 (right!22962 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580453 (=> res!1085336 e!1628298)))

(declare-fun b!2580454 () Bool)

(assert (=> b!2580454 (= e!1628298 (inv!40086 (right!22962 (right!22962 (c!415433 x!464697)))))))

(assert (= (and d!730541 c!415869) b!2580452))

(assert (= (and d!730541 (not c!415869)) b!2580453))

(assert (= (and b!2580453 (not res!1085336)) b!2580454))

(declare-fun m!2916351 () Bool)

(assert (=> b!2580452 m!2916351))

(declare-fun m!2916353 () Bool)

(assert (=> b!2580454 m!2916353))

(assert (=> b!2579698 d!730541))

(declare-fun d!730543 () Bool)

(declare-fun e!1628300 () Bool)

(assert (=> d!730543 e!1628300))

(declare-fun res!1085337 () Bool)

(assert (=> d!730543 (=> (not res!1085337) (not e!1628300))))

(declare-fun lt!907862 () List!29808)

(assert (=> d!730543 (= res!1085337 (= (content!4091 lt!907862) (set.union (content!4091 (t!211695 lt!907622)) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628299 () List!29808)

(assert (=> d!730543 (= lt!907862 e!1628299)))

(declare-fun c!415870 () Bool)

(assert (=> d!730543 (= c!415870 (is-Nil!29708 (t!211695 lt!907622)))))

(assert (=> d!730543 (= (++!7292 (t!211695 lt!907622) (efficientList$default$2!135 (c!415433 x!464697))) lt!907862)))

(declare-fun b!2580455 () Bool)

(assert (=> b!2580455 (= e!1628299 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580458 () Bool)

(assert (=> b!2580458 (= e!1628300 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907862 (t!211695 lt!907622))))))

(declare-fun b!2580456 () Bool)

(assert (=> b!2580456 (= e!1628299 (Cons!29708 (h!35128 (t!211695 lt!907622)) (++!7292 (t!211695 (t!211695 lt!907622)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580457 () Bool)

(declare-fun res!1085338 () Bool)

(assert (=> b!2580457 (=> (not res!1085338) (not e!1628300))))

(assert (=> b!2580457 (= res!1085338 (= (size!23031 lt!907862) (+ (size!23031 (t!211695 lt!907622)) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730543 c!415870) b!2580455))

(assert (= (and d!730543 (not c!415870)) b!2580456))

(assert (= (and d!730543 res!1085337) b!2580457))

(assert (= (and b!2580457 res!1085338) b!2580458))

(declare-fun m!2916369 () Bool)

(assert (=> d!730543 m!2916369))

(assert (=> d!730543 m!2915083))

(assert (=> d!730543 m!2914321))

(assert (=> d!730543 m!2914393))

(assert (=> b!2580456 m!2914321))

(declare-fun m!2916375 () Bool)

(assert (=> b!2580456 m!2916375))

(declare-fun m!2916377 () Bool)

(assert (=> b!2580457 m!2916377))

(assert (=> b!2580457 m!2915405))

(assert (=> b!2580457 m!2914321))

(assert (=> b!2580457 m!2914401))

(assert (=> b!2579869 d!730543))

(assert (=> b!2579671 d!729835))

(declare-fun d!730547 () Bool)

(declare-fun lt!907864 () Int)

(assert (=> d!730547 (>= lt!907864 0)))

(declare-fun e!1628301 () Int)

(assert (=> d!730547 (= lt!907864 e!1628301)))

(declare-fun c!415871 () Bool)

(assert (=> d!730547 (= c!415871 (is-Nil!29708 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> d!730547 (= (size!23031 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) lt!907864)))

(declare-fun b!2580459 () Bool)

(assert (=> b!2580459 (= e!1628301 0)))

(declare-fun b!2580460 () Bool)

(assert (=> b!2580460 (= e!1628301 (+ 1 (size!23031 (t!211695 (t!211695 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730547 c!415871) b!2580459))

(assert (= (and d!730547 (not c!415871)) b!2580460))

(declare-fun m!2916381 () Bool)

(assert (=> b!2580460 m!2916381))

(assert (=> b!2579887 d!730547))

(declare-fun d!730549 () Bool)

(assert (=> d!730549 (= (height!1345 (left!22632 (c!415433 x!464697))) (ite (is-Empty!9268 (left!22632 (c!415433 x!464697))) 0 (ite (is-Leaf!14139 (left!22632 (c!415433 x!464697))) 1 (cheight!9479 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2579654 d!730549))

(declare-fun d!730555 () Bool)

(assert (=> d!730555 (= (height!1345 (right!22962 (c!415433 x!464697))) (ite (is-Empty!9268 (right!22962 (c!415433 x!464697))) 0 (ite (is-Leaf!14139 (right!22962 (c!415433 x!464697))) 1 (cheight!9479 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2579654 d!730555))

(declare-fun d!730557 () Bool)

(assert (=> d!730557 (= (list!11215 lt!907766) (list!11217 (c!415433 lt!907766)))))

(declare-fun bs!471191 () Bool)

(assert (= bs!471191 d!730557))

(declare-fun m!2916397 () Bool)

(assert (=> bs!471191 m!2916397))

(assert (=> d!730263 d!730557))

(declare-fun d!730559 () Bool)

(declare-fun e!1628306 () Bool)

(assert (=> d!730559 e!1628306))

(declare-fun res!1085343 () Bool)

(assert (=> d!730559 (=> (not res!1085343) (not e!1628306))))

(declare-fun lt!907867 () Conc!9268)

(assert (=> d!730559 (= res!1085343 (= (list!11217 lt!907867) (Cons!29708 #x003A Nil!29708)))))

(assert (=> d!730559 (= lt!907867 (choose!15207 (Cons!29708 #x003A Nil!29708)))))

(assert (=> d!730559 (= (fromList!557 (Cons!29708 #x003A Nil!29708)) lt!907867)))

(declare-fun b!2580469 () Bool)

(assert (=> b!2580469 (= e!1628306 (isBalanced!2825 lt!907867))))

(assert (= (and d!730559 res!1085343) b!2580469))

(declare-fun m!2916409 () Bool)

(assert (=> d!730559 m!2916409))

(declare-fun m!2916411 () Bool)

(assert (=> d!730559 m!2916411))

(declare-fun m!2916413 () Bool)

(assert (=> b!2580469 m!2916413))

(assert (=> d!730263 d!730559))

(declare-fun d!730563 () Bool)

(declare-fun c!415874 () Bool)

(assert (=> d!730563 (= c!415874 (is-Nil!29708 (t!211695 lt!907623)))))

(declare-fun e!1628307 () (Set (_ BitVec 16)))

(assert (=> d!730563 (= (content!4091 (t!211695 lt!907623)) e!1628307)))

(declare-fun b!2580470 () Bool)

(assert (=> b!2580470 (= e!1628307 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580471 () Bool)

(assert (=> b!2580471 (= e!1628307 (set.union (set.insert (h!35128 (t!211695 lt!907623)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907623)))))))

(assert (= (and d!730563 c!415874) b!2580470))

(assert (= (and d!730563 (not c!415874)) b!2580471))

(declare-fun m!2916417 () Bool)

(assert (=> b!2580471 m!2916417))

(declare-fun m!2916419 () Bool)

(assert (=> b!2580471 m!2916419))

(assert (=> b!2579824 d!730563))

(declare-fun d!730567 () Bool)

(declare-fun c!415876 () Bool)

(assert (=> d!730567 (= c!415876 (is-Nil!29708 lt!907765))))

(declare-fun e!1628309 () (Set (_ BitVec 16)))

(assert (=> d!730567 (= (content!4091 lt!907765) e!1628309)))

(declare-fun b!2580474 () Bool)

(assert (=> b!2580474 (= e!1628309 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580475 () Bool)

(assert (=> b!2580475 (= e!1628309 (set.union (set.insert (h!35128 lt!907765) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907765))))))

(assert (= (and d!730567 c!415876) b!2580474))

(assert (= (and d!730567 (not c!415876)) b!2580475))

(declare-fun m!2916425 () Bool)

(assert (=> b!2580475 m!2916425))

(declare-fun m!2916427 () Bool)

(assert (=> b!2580475 m!2916427))

(assert (=> d!730251 d!730567))

(declare-fun d!730571 () Bool)

(declare-fun c!415879 () Bool)

(assert (=> d!730571 (= c!415879 (is-Nil!29708 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628312 () (Set (_ BitVec 16)))

(assert (=> d!730571 (= (content!4091 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628312)))

(declare-fun b!2580480 () Bool)

(assert (=> b!2580480 (= e!1628312 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580481 () Bool)

(assert (=> b!2580481 (= e!1628312 (set.union (set.insert (h!35128 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730571 c!415879) b!2580480))

(assert (= (and d!730571 (not c!415879)) b!2580481))

(declare-fun m!2916433 () Bool)

(assert (=> b!2580481 m!2916433))

(declare-fun m!2916437 () Bool)

(assert (=> b!2580481 m!2916437))

(assert (=> d!730251 d!730571))

(declare-fun d!730573 () Bool)

(declare-fun c!415881 () Bool)

(assert (=> d!730573 (= c!415881 (is-Nil!29708 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628315 () (Set (_ BitVec 16)))

(assert (=> d!730573 (= (content!4091 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628315)))

(declare-fun b!2580485 () Bool)

(assert (=> b!2580485 (= e!1628315 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580486 () Bool)

(assert (=> b!2580486 (= e!1628315 (set.union (set.insert (h!35128 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730573 c!415881) b!2580485))

(assert (= (and d!730573 (not c!415881)) b!2580486))

(declare-fun m!2916443 () Bool)

(assert (=> b!2580486 m!2916443))

(declare-fun m!2916447 () Bool)

(assert (=> b!2580486 m!2916447))

(assert (=> d!730251 d!730573))

(declare-fun d!730579 () Bool)

(declare-fun c!415882 () Bool)

(assert (=> d!730579 (= c!415882 (is-Nil!29708 lt!907760))))

(declare-fun e!1628316 () (Set (_ BitVec 16)))

(assert (=> d!730579 (= (content!4091 lt!907760) e!1628316)))

(declare-fun b!2580487 () Bool)

(assert (=> b!2580487 (= e!1628316 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580488 () Bool)

(assert (=> b!2580488 (= e!1628316 (set.union (set.insert (h!35128 lt!907760) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907760))))))

(assert (= (and d!730579 c!415882) b!2580487))

(assert (= (and d!730579 (not c!415882)) b!2580488))

(declare-fun m!2916449 () Bool)

(assert (=> b!2580488 m!2916449))

(declare-fun m!2916451 () Bool)

(assert (=> b!2580488 m!2916451))

(assert (=> d!730229 d!730579))

(declare-fun d!730581 () Bool)

(declare-fun c!415883 () Bool)

(assert (=> d!730581 (= c!415883 (is-Nil!29708 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))))))

(declare-fun e!1628317 () (Set (_ BitVec 16)))

(assert (=> d!730581 (= (content!4091 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) e!1628317)))

(declare-fun b!2580489 () Bool)

(assert (=> b!2580489 (= e!1628317 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580490 () Bool)

(assert (=> b!2580490 (= e!1628317 (set.union (set.insert (h!35128 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (right!22962 (c!415433 x!464697))))))))))

(assert (= (and d!730581 c!415883) b!2580489))

(assert (= (and d!730581 (not c!415883)) b!2580490))

(declare-fun m!2916453 () Bool)

(assert (=> b!2580490 m!2916453))

(declare-fun m!2916455 () Bool)

(assert (=> b!2580490 m!2916455))

(assert (=> d!730229 d!730581))

(declare-fun d!730583 () Bool)

(declare-fun c!415884 () Bool)

(assert (=> d!730583 (= c!415884 (is-Nil!29708 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))))))

(declare-fun e!1628318 () (Set (_ BitVec 16)))

(assert (=> d!730583 (= (content!4091 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))) e!1628318)))

(declare-fun b!2580491 () Bool)

(assert (=> b!2580491 (= e!1628318 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580492 () Bool)

(assert (=> b!2580492 (= e!1628318 (set.union (set.insert (h!35128 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (right!22962 (c!415433 x!464697))))))))))

(assert (= (and d!730583 c!415884) b!2580491))

(assert (= (and d!730583 (not c!415884)) b!2580492))

(declare-fun m!2916457 () Bool)

(assert (=> b!2580492 m!2916457))

(declare-fun m!2916459 () Bool)

(assert (=> b!2580492 m!2916459))

(assert (=> d!730229 d!730583))

(declare-fun d!730585 () Bool)

(assert (=> d!730585 (= (height!1345 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) (ite (is-Empty!9268 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 0 (ite (is-Leaf!14139 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 1 (cheight!9479 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(assert (=> b!2579876 d!730585))

(declare-fun d!730587 () Bool)

(assert (=> d!730587 (= (height!1345 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) (ite (is-Empty!9268 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 0 (ite (is-Leaf!14139 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 1 (cheight!9479 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(assert (=> b!2579876 d!730587))

(assert (=> b!2579670 d!729837))

(declare-fun d!730593 () Bool)

(declare-fun c!415886 () Bool)

(assert (=> d!730593 (= c!415886 (is-Nil!29708 (t!211695 lt!907690)))))

(declare-fun e!1628321 () (Set (_ BitVec 16)))

(assert (=> d!730593 (= (content!4091 (t!211695 lt!907690)) e!1628321)))

(declare-fun b!2580497 () Bool)

(assert (=> b!2580497 (= e!1628321 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580498 () Bool)

(assert (=> b!2580498 (= e!1628321 (set.union (set.insert (h!35128 (t!211695 lt!907690)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907690)))))))

(assert (= (and d!730593 c!415886) b!2580497))

(assert (= (and d!730593 (not c!415886)) b!2580498))

(declare-fun m!2916461 () Bool)

(assert (=> b!2580498 m!2916461))

(declare-fun m!2916463 () Bool)

(assert (=> b!2580498 m!2916463))

(assert (=> b!2579835 d!730593))

(declare-fun b!2580499 () Bool)

(declare-fun e!1628322 () Bool)

(declare-fun e!1628323 () Bool)

(assert (=> b!2580499 (= e!1628322 e!1628323)))

(declare-fun res!1085351 () Bool)

(assert (=> b!2580499 (=> (not res!1085351) (not e!1628323))))

(assert (=> b!2580499 (= res!1085351 (<= (- 1) (- (height!1345 (left!22632 lt!907723)) (height!1345 (right!22962 lt!907723)))))))

(declare-fun b!2580500 () Bool)

(assert (=> b!2580500 (= e!1628323 (not (isEmpty!17078 (right!22962 lt!907723))))))

(declare-fun b!2580501 () Bool)

(declare-fun res!1085347 () Bool)

(assert (=> b!2580501 (=> (not res!1085347) (not e!1628323))))

(assert (=> b!2580501 (= res!1085347 (isBalanced!2825 (right!22962 lt!907723)))))

(declare-fun b!2580502 () Bool)

(declare-fun res!1085349 () Bool)

(assert (=> b!2580502 (=> (not res!1085349) (not e!1628323))))

(assert (=> b!2580502 (= res!1085349 (<= (- (height!1345 (left!22632 lt!907723)) (height!1345 (right!22962 lt!907723))) 1))))

(declare-fun b!2580503 () Bool)

(declare-fun res!1085350 () Bool)

(assert (=> b!2580503 (=> (not res!1085350) (not e!1628323))))

(assert (=> b!2580503 (= res!1085350 (not (isEmpty!17078 (left!22632 lt!907723))))))

(declare-fun d!730595 () Bool)

(declare-fun res!1085352 () Bool)

(assert (=> d!730595 (=> res!1085352 e!1628322)))

(assert (=> d!730595 (= res!1085352 (not (is-Node!9268 lt!907723)))))

(assert (=> d!730595 (= (isBalanced!2825 lt!907723) e!1628322)))

(declare-fun b!2580504 () Bool)

(declare-fun res!1085348 () Bool)

(assert (=> b!2580504 (=> (not res!1085348) (not e!1628323))))

(assert (=> b!2580504 (= res!1085348 (isBalanced!2825 (left!22632 lt!907723)))))

(assert (= (and d!730595 (not res!1085352)) b!2580499))

(assert (= (and b!2580499 res!1085351) b!2580502))

(assert (= (and b!2580502 res!1085349) b!2580504))

(assert (= (and b!2580504 res!1085348) b!2580501))

(assert (= (and b!2580501 res!1085347) b!2580503))

(assert (= (and b!2580503 res!1085350) b!2580500))

(declare-fun m!2916479 () Bool)

(assert (=> b!2580502 m!2916479))

(declare-fun m!2916481 () Bool)

(assert (=> b!2580502 m!2916481))

(declare-fun m!2916485 () Bool)

(assert (=> b!2580500 m!2916485))

(assert (=> b!2580499 m!2916479))

(assert (=> b!2580499 m!2916481))

(declare-fun m!2916489 () Bool)

(assert (=> b!2580504 m!2916489))

(declare-fun m!2916491 () Bool)

(assert (=> b!2580503 m!2916491))

(declare-fun m!2916493 () Bool)

(assert (=> b!2580501 m!2916493))

(assert (=> b!2579827 d!730595))

(declare-fun d!730601 () Bool)

(declare-fun res!1085353 () Bool)

(declare-fun e!1628325 () Bool)

(assert (=> d!730601 (=> (not res!1085353) (not e!1628325))))

(assert (=> d!730601 (= res!1085353 (<= (size!23031 (list!11219 (xs!12252 (left!22632 (c!415433 x!464697))))) 512))))

(assert (=> d!730601 (= (inv!40086 (left!22632 (c!415433 x!464697))) e!1628325)))

(declare-fun b!2580507 () Bool)

(declare-fun res!1085354 () Bool)

(assert (=> b!2580507 (=> (not res!1085354) (not e!1628325))))

(assert (=> b!2580507 (= res!1085354 (= (csize!18767 (left!22632 (c!415433 x!464697))) (size!23031 (list!11219 (xs!12252 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2580508 () Bool)

(assert (=> b!2580508 (= e!1628325 (and (> (csize!18767 (left!22632 (c!415433 x!464697))) 0) (<= (csize!18767 (left!22632 (c!415433 x!464697))) 512)))))

(assert (= (and d!730601 res!1085353) b!2580507))

(assert (= (and b!2580507 res!1085354) b!2580508))

(assert (=> d!730601 m!2914487))

(assert (=> d!730601 m!2914487))

(declare-fun m!2916503 () Bool)

(assert (=> d!730601 m!2916503))

(assert (=> b!2580507 m!2914487))

(assert (=> b!2580507 m!2914487))

(assert (=> b!2580507 m!2916503))

(assert (=> b!2579591 d!730601))

(declare-fun d!730607 () Bool)

(declare-fun e!1628331 () Bool)

(assert (=> d!730607 e!1628331))

(declare-fun res!1085357 () Bool)

(assert (=> d!730607 (=> (not res!1085357) (not e!1628331))))

(declare-fun lt!907874 () List!29808)

(assert (=> d!730607 (= res!1085357 (= (content!4091 lt!907874) (set.union (content!4091 lt!907667) (content!4091 call!166731))))))

(declare-fun e!1628330 () List!29808)

(assert (=> d!730607 (= lt!907874 e!1628330)))

(declare-fun c!415890 () Bool)

(assert (=> d!730607 (= c!415890 (is-Nil!29708 lt!907667))))

(assert (=> d!730607 (= (++!7292 lt!907667 call!166731) lt!907874)))

(declare-fun b!2580515 () Bool)

(assert (=> b!2580515 (= e!1628330 call!166731)))

(declare-fun b!2580518 () Bool)

(assert (=> b!2580518 (= e!1628331 (or (not (= call!166731 Nil!29708)) (= lt!907874 lt!907667)))))

(declare-fun b!2580516 () Bool)

(assert (=> b!2580516 (= e!1628330 (Cons!29708 (h!35128 lt!907667) (++!7292 (t!211695 lt!907667) call!166731)))))

(declare-fun b!2580517 () Bool)

(declare-fun res!1085358 () Bool)

(assert (=> b!2580517 (=> (not res!1085358) (not e!1628331))))

(assert (=> b!2580517 (= res!1085358 (= (size!23031 lt!907874) (+ (size!23031 lt!907667) (size!23031 call!166731))))))

(assert (= (and d!730607 c!415890) b!2580515))

(assert (= (and d!730607 (not c!415890)) b!2580516))

(assert (= (and d!730607 res!1085357) b!2580517))

(assert (= (and b!2580517 res!1085358) b!2580518))

(declare-fun m!2916511 () Bool)

(assert (=> d!730607 m!2916511))

(declare-fun m!2916513 () Bool)

(assert (=> d!730607 m!2916513))

(declare-fun m!2916515 () Bool)

(assert (=> d!730607 m!2916515))

(declare-fun m!2916517 () Bool)

(assert (=> b!2580516 m!2916517))

(declare-fun m!2916519 () Bool)

(assert (=> b!2580517 m!2916519))

(declare-fun m!2916521 () Bool)

(assert (=> b!2580517 m!2916521))

(declare-fun m!2916523 () Bool)

(assert (=> b!2580517 m!2916523))

(assert (=> b!2579603 d!730607))

(declare-fun d!730613 () Bool)

(declare-fun e!1628335 () Bool)

(assert (=> d!730613 e!1628335))

(declare-fun res!1085359 () Bool)

(assert (=> d!730613 (=> (not res!1085359) (not e!1628335))))

(declare-fun lt!907877 () List!29808)

(assert (=> d!730613 (= res!1085359 (= (content!4091 lt!907877) (set.union (content!4091 lt!907667) (content!4091 lt!907666))))))

(declare-fun e!1628334 () List!29808)

(assert (=> d!730613 (= lt!907877 e!1628334)))

(declare-fun c!415893 () Bool)

(assert (=> d!730613 (= c!415893 (is-Nil!29708 lt!907667))))

(assert (=> d!730613 (= (++!7292 lt!907667 lt!907666) lt!907877)))

(declare-fun b!2580523 () Bool)

(assert (=> b!2580523 (= e!1628334 lt!907666)))

(declare-fun b!2580526 () Bool)

(assert (=> b!2580526 (= e!1628335 (or (not (= lt!907666 Nil!29708)) (= lt!907877 lt!907667)))))

(declare-fun b!2580524 () Bool)

(assert (=> b!2580524 (= e!1628334 (Cons!29708 (h!35128 lt!907667) (++!7292 (t!211695 lt!907667) lt!907666)))))

(declare-fun b!2580525 () Bool)

(declare-fun res!1085360 () Bool)

(assert (=> b!2580525 (=> (not res!1085360) (not e!1628335))))

(assert (=> b!2580525 (= res!1085360 (= (size!23031 lt!907877) (+ (size!23031 lt!907667) (size!23031 lt!907666))))))

(assert (= (and d!730613 c!415893) b!2580523))

(assert (= (and d!730613 (not c!415893)) b!2580524))

(assert (= (and d!730613 res!1085359) b!2580525))

(assert (= (and b!2580525 res!1085360) b!2580526))

(declare-fun m!2916529 () Bool)

(assert (=> d!730613 m!2916529))

(assert (=> d!730613 m!2916513))

(declare-fun m!2916531 () Bool)

(assert (=> d!730613 m!2916531))

(declare-fun m!2916533 () Bool)

(assert (=> b!2580524 m!2916533))

(declare-fun m!2916535 () Bool)

(assert (=> b!2580525 m!2916535))

(assert (=> b!2580525 m!2916521))

(declare-fun m!2916539 () Bool)

(assert (=> b!2580525 m!2916539))

(assert (=> b!2579603 d!730613))

(declare-fun b!2580533 () Bool)

(declare-fun e!1628339 () List!29808)

(declare-fun lt!907881 () List!29808)

(assert (=> b!2580533 (= e!1628339 lt!907881)))

(declare-fun b!2580534 () Bool)

(declare-fun e!1628340 () List!29808)

(assert (=> b!2580534 (= e!1628340 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580535 () Bool)

(declare-fun e!1628341 () List!29808)

(declare-fun call!166739 () List!29808)

(assert (=> b!2580535 (= e!1628341 call!166739)))

(declare-fun b!2580536 () Bool)

(assert (=> b!2580536 (= e!1628339 (efficientList!388 (xs!12252 (right!22962 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580537 () Bool)

(declare-fun lt!907884 () Unit!43542)

(declare-fun lt!907880 () Unit!43542)

(assert (=> b!2580537 (= lt!907884 lt!907880)))

(declare-fun lt!907882 () List!29808)

(assert (=> b!2580537 (= (++!7292 (++!7292 lt!907882 lt!907881) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907882 call!166739))))

(assert (=> b!2580537 (= lt!907880 (lemmaConcatAssociativity!1474 lt!907882 lt!907881 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> b!2580537 (= lt!907881 (list!11217 (right!22962 (right!22962 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580537 (= lt!907882 (list!11217 (left!22632 (right!22962 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580537 (= e!1628341 (efficientList!387 (left!22632 (right!22962 (right!22962 (c!415433 x!464697)))) (efficientList!387 (right!22962 (right!22962 (right!22962 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun d!730621 () Bool)

(declare-fun lt!907883 () List!29808)

(assert (=> d!730621 (= lt!907883 (++!7292 (list!11217 (right!22962 (right!22962 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!730621 (= lt!907883 e!1628340)))

(declare-fun c!415899 () Bool)

(assert (=> d!730621 (= c!415899 (is-Empty!9268 (right!22962 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730621 (= (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))) lt!907883)))

(declare-fun b!2580538 () Bool)

(assert (=> b!2580538 (= e!1628340 e!1628341)))

(declare-fun c!415898 () Bool)

(assert (=> b!2580538 (= c!415898 (is-Leaf!14139 (right!22962 (right!22962 (c!415433 x!464697)))))))

(declare-fun bm!166734 () Bool)

(declare-fun c!415897 () Bool)

(assert (=> bm!166734 (= c!415897 c!415898)))

(assert (=> bm!166734 (= call!166739 (++!7292 e!1628339 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (= (and d!730621 c!415899) b!2580534))

(assert (= (and d!730621 (not c!415899)) b!2580538))

(assert (= (and b!2580538 c!415898) b!2580535))

(assert (= (and b!2580538 (not c!415898)) b!2580537))

(assert (= (or b!2580535 b!2580537) bm!166734))

(assert (= (and bm!166734 c!415897) b!2580536))

(assert (= (and bm!166734 (not c!415897)) b!2580533))

(declare-fun m!2916553 () Bool)

(assert (=> b!2580536 m!2916553))

(assert (=> b!2580537 m!2914321))

(declare-fun m!2916555 () Bool)

(assert (=> b!2580537 m!2916555))

(declare-fun m!2916557 () Bool)

(assert (=> b!2580537 m!2916557))

(declare-fun m!2916559 () Bool)

(assert (=> b!2580537 m!2916559))

(assert (=> b!2580537 m!2916559))

(assert (=> b!2580537 m!2914321))

(declare-fun m!2916561 () Bool)

(assert (=> b!2580537 m!2916561))

(assert (=> b!2580537 m!2914321))

(declare-fun m!2916563 () Bool)

(assert (=> b!2580537 m!2916563))

(assert (=> b!2580537 m!2915465))

(assert (=> b!2580537 m!2916563))

(declare-fun m!2916565 () Bool)

(assert (=> b!2580537 m!2916565))

(assert (=> b!2580537 m!2915467))

(assert (=> d!730621 m!2914491))

(assert (=> d!730621 m!2914491))

(assert (=> d!730621 m!2914321))

(declare-fun m!2916567 () Bool)

(assert (=> d!730621 m!2916567))

(assert (=> bm!166734 m!2914321))

(declare-fun m!2916569 () Bool)

(assert (=> bm!166734 m!2916569))

(assert (=> b!2579603 d!730621))

(assert (=> b!2579603 d!730231))

(assert (=> b!2579603 d!730233))

(declare-fun d!730629 () Bool)

(declare-fun e!1628346 () Bool)

(assert (=> d!730629 e!1628346))

(declare-fun res!1085362 () Bool)

(assert (=> d!730629 (=> (not res!1085362) (not e!1628346))))

(declare-fun lt!907886 () List!29808)

(assert (=> d!730629 (= res!1085362 (= (content!4091 lt!907886) (set.union (content!4091 (++!7292 lt!907667 lt!907666)) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628345 () List!29808)

(assert (=> d!730629 (= lt!907886 e!1628345)))

(declare-fun c!415902 () Bool)

(assert (=> d!730629 (= c!415902 (is-Nil!29708 (++!7292 lt!907667 lt!907666)))))

(assert (=> d!730629 (= (++!7292 (++!7292 lt!907667 lt!907666) (efficientList$default$2!135 (c!415433 x!464697))) lt!907886)))

(declare-fun b!2580544 () Bool)

(assert (=> b!2580544 (= e!1628345 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580547 () Bool)

(assert (=> b!2580547 (= e!1628346 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907886 (++!7292 lt!907667 lt!907666))))))

(declare-fun b!2580545 () Bool)

(assert (=> b!2580545 (= e!1628345 (Cons!29708 (h!35128 (++!7292 lt!907667 lt!907666)) (++!7292 (t!211695 (++!7292 lt!907667 lt!907666)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580546 () Bool)

(declare-fun res!1085363 () Bool)

(assert (=> b!2580546 (=> (not res!1085363) (not e!1628346))))

(assert (=> b!2580546 (= res!1085363 (= (size!23031 lt!907886) (+ (size!23031 (++!7292 lt!907667 lt!907666)) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730629 c!415902) b!2580544))

(assert (= (and d!730629 (not c!415902)) b!2580545))

(assert (= (and d!730629 res!1085362) b!2580546))

(assert (= (and b!2580546 res!1085363) b!2580547))

(declare-fun m!2916577 () Bool)

(assert (=> d!730629 m!2916577))

(assert (=> d!730629 m!2914705))

(declare-fun m!2916579 () Bool)

(assert (=> d!730629 m!2916579))

(assert (=> d!730629 m!2914321))

(assert (=> d!730629 m!2914393))

(assert (=> b!2580545 m!2914321))

(declare-fun m!2916581 () Bool)

(assert (=> b!2580545 m!2916581))

(declare-fun m!2916583 () Bool)

(assert (=> b!2580546 m!2916583))

(assert (=> b!2580546 m!2914705))

(declare-fun m!2916585 () Bool)

(assert (=> b!2580546 m!2916585))

(assert (=> b!2580546 m!2914321))

(assert (=> b!2580546 m!2914401))

(assert (=> b!2579603 d!730629))

(declare-fun b!2580552 () Bool)

(declare-fun e!1628349 () List!29808)

(declare-fun lt!907889 () List!29808)

(assert (=> b!2580552 (= e!1628349 lt!907889)))

(declare-fun b!2580553 () Bool)

(declare-fun e!1628350 () List!29808)

(assert (=> b!2580553 (= e!1628350 (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580554 () Bool)

(declare-fun e!1628351 () List!29808)

(declare-fun call!166740 () List!29808)

(assert (=> b!2580554 (= e!1628351 call!166740)))

(declare-fun b!2580555 () Bool)

(assert (=> b!2580555 (= e!1628349 (efficientList!388 (xs!12252 (left!22632 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580556 () Bool)

(declare-fun lt!907892 () Unit!43542)

(declare-fun lt!907888 () Unit!43542)

(assert (=> b!2580556 (= lt!907892 lt!907888)))

(declare-fun lt!907890 () List!29808)

(assert (=> b!2580556 (= (++!7292 (++!7292 lt!907890 lt!907889) (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))) (++!7292 lt!907890 call!166740))))

(assert (=> b!2580556 (= lt!907888 (lemmaConcatAssociativity!1474 lt!907890 lt!907889 (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> b!2580556 (= lt!907889 (list!11217 (right!22962 (left!22632 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580556 (= lt!907890 (list!11217 (left!22632 (left!22632 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2580556 (= e!1628351 (efficientList!387 (left!22632 (left!22632 (right!22962 (c!415433 x!464697)))) (efficientList!387 (right!22962 (left!22632 (right!22962 (c!415433 x!464697)))) (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun d!730633 () Bool)

(declare-fun lt!907891 () List!29808)

(assert (=> d!730633 (= lt!907891 (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 x!464697)))) (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730633 (= lt!907891 e!1628350)))

(declare-fun c!415906 () Bool)

(assert (=> d!730633 (= c!415906 (is-Empty!9268 (left!22632 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730633 (= (efficientList!387 (left!22632 (right!22962 (c!415433 x!464697))) (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907891)))

(declare-fun b!2580557 () Bool)

(assert (=> b!2580557 (= e!1628350 e!1628351)))

(declare-fun c!415905 () Bool)

(assert (=> b!2580557 (= c!415905 (is-Leaf!14139 (left!22632 (right!22962 (c!415433 x!464697)))))))

(declare-fun bm!166735 () Bool)

(declare-fun c!415904 () Bool)

(assert (=> bm!166735 (= c!415904 c!415905)))

(assert (=> bm!166735 (= call!166740 (++!7292 e!1628349 (efficientList!387 (right!22962 (right!22962 (c!415433 x!464697))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (= (and d!730633 c!415906) b!2580553))

(assert (= (and d!730633 (not c!415906)) b!2580557))

(assert (= (and b!2580557 c!415905) b!2580554))

(assert (= (and b!2580557 (not c!415905)) b!2580556))

(assert (= (or b!2580554 b!2580556) bm!166735))

(assert (= (and bm!166735 c!415904) b!2580555))

(assert (= (and bm!166735 (not c!415904)) b!2580552))

(declare-fun m!2916597 () Bool)

(assert (=> b!2580555 m!2916597))

(assert (=> b!2580556 m!2914709))

(declare-fun m!2916599 () Bool)

(assert (=> b!2580556 m!2916599))

(declare-fun m!2916601 () Bool)

(assert (=> b!2580556 m!2916601))

(declare-fun m!2916603 () Bool)

(assert (=> b!2580556 m!2916603))

(assert (=> b!2580556 m!2916603))

(assert (=> b!2580556 m!2914709))

(declare-fun m!2916605 () Bool)

(assert (=> b!2580556 m!2916605))

(assert (=> b!2580556 m!2914709))

(declare-fun m!2916607 () Bool)

(assert (=> b!2580556 m!2916607))

(assert (=> b!2580556 m!2915457))

(assert (=> b!2580556 m!2916607))

(declare-fun m!2916609 () Bool)

(assert (=> b!2580556 m!2916609))

(assert (=> b!2580556 m!2915459))

(assert (=> d!730633 m!2914489))

(assert (=> d!730633 m!2914489))

(assert (=> d!730633 m!2914709))

(declare-fun m!2916611 () Bool)

(assert (=> d!730633 m!2916611))

(assert (=> bm!166735 m!2914709))

(declare-fun m!2916613 () Bool)

(assert (=> bm!166735 m!2916613))

(assert (=> b!2579603 d!730633))

(declare-fun d!730641 () Bool)

(assert (=> d!730641 (= (++!7292 (++!7292 lt!907667 lt!907666) (efficientList$default$2!135 (c!415433 x!464697))) (++!7292 lt!907667 (++!7292 lt!907666 (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun lt!907895 () Unit!43542)

(assert (=> d!730641 (= lt!907895 (choose!15208 lt!907667 lt!907666 (efficientList$default$2!135 (c!415433 x!464697))))))

(assert (=> d!730641 (= (lemmaConcatAssociativity!1474 lt!907667 lt!907666 (efficientList$default$2!135 (c!415433 x!464697))) lt!907895)))

(declare-fun bs!471196 () Bool)

(assert (= bs!471196 d!730641))

(assert (=> bs!471196 m!2914321))

(declare-fun m!2916615 () Bool)

(assert (=> bs!471196 m!2916615))

(assert (=> bs!471196 m!2914705))

(assert (=> bs!471196 m!2914705))

(assert (=> bs!471196 m!2914321))

(assert (=> bs!471196 m!2914707))

(assert (=> bs!471196 m!2914321))

(declare-fun m!2916617 () Bool)

(assert (=> bs!471196 m!2916617))

(assert (=> bs!471196 m!2916615))

(declare-fun m!2916619 () Bool)

(assert (=> bs!471196 m!2916619))

(assert (=> b!2579603 d!730641))

(declare-fun d!730643 () Bool)

(declare-fun lt!907899 () Int)

(assert (=> d!730643 (>= lt!907899 0)))

(declare-fun e!1628354 () Int)

(assert (=> d!730643 (= lt!907899 e!1628354)))

(declare-fun c!415909 () Bool)

(assert (=> d!730643 (= c!415909 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> d!730643 (= (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) lt!907899)))

(declare-fun b!2580562 () Bool)

(assert (=> b!2580562 (= e!1628354 0)))

(declare-fun b!2580564 () Bool)

(assert (=> b!2580564 (= e!1628354 (+ 1 (size!23031 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730643 c!415909) b!2580562))

(assert (= (and d!730643 (not c!415909)) b!2580564))

(declare-fun m!2916627 () Bool)

(assert (=> b!2580564 m!2916627))

(assert (=> b!2579885 d!730643))

(declare-fun d!730649 () Bool)

(declare-fun c!415912 () Bool)

(assert (=> d!730649 (= c!415912 (is-Nil!29708 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628357 () (Set (_ BitVec 16)))

(assert (=> d!730649 (= (content!4091 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))) e!1628357)))

(declare-fun b!2580568 () Bool)

(assert (=> b!2580568 (= e!1628357 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580569 () Bool)

(assert (=> b!2580569 (= e!1628357 (set.union (set.insert (h!35128 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (t!211695 (efficientList$default$2!135 (c!415433 x!464697))))))))))

(assert (= (and d!730649 c!415912) b!2580568))

(assert (= (and d!730649 (not c!415912)) b!2580569))

(declare-fun m!2916631 () Bool)

(assert (=> b!2580569 m!2916631))

(declare-fun m!2916633 () Bool)

(assert (=> b!2580569 m!2916633))

(assert (=> b!2579843 d!730649))

(declare-fun d!730653 () Bool)

(declare-fun c!415914 () Bool)

(assert (=> d!730653 (= c!415914 (is-Nil!29708 lt!907768))))

(declare-fun e!1628360 () (Set (_ BitVec 16)))

(assert (=> d!730653 (= (content!4091 lt!907768) e!1628360)))

(declare-fun b!2580574 () Bool)

(assert (=> b!2580574 (= e!1628360 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580575 () Bool)

(assert (=> b!2580575 (= e!1628360 (set.union (set.insert (h!35128 lt!907768) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907768))))))

(assert (= (and d!730653 c!415914) b!2580574))

(assert (= (and d!730653 (not c!415914)) b!2580575))

(declare-fun m!2916641 () Bool)

(assert (=> b!2580575 m!2916641))

(declare-fun m!2916643 () Bool)

(assert (=> b!2580575 m!2916643))

(assert (=> d!730269 d!730653))

(declare-fun d!730657 () Bool)

(declare-fun c!415916 () Bool)

(assert (=> d!730657 (= c!415916 (is-Nil!29708 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))))))

(declare-fun e!1628363 () (Set (_ BitVec 16)))

(assert (=> d!730657 (= (content!4091 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) e!1628363)))

(declare-fun b!2580580 () Bool)

(assert (=> b!2580580 (= e!1628363 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580581 () Bool)

(assert (=> b!2580581 (= e!1628363 (set.union (set.insert (h!35128 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (left!22632 (c!415433 x!464697))))))))))

(assert (= (and d!730657 c!415916) b!2580580))

(assert (= (and d!730657 (not c!415916)) b!2580581))

(declare-fun m!2916649 () Bool)

(assert (=> b!2580581 m!2916649))

(declare-fun m!2916653 () Bool)

(assert (=> b!2580581 m!2916653))

(assert (=> d!730269 d!730657))

(declare-fun d!730661 () Bool)

(declare-fun c!415918 () Bool)

(assert (=> d!730661 (= c!415918 (is-Nil!29708 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))))))

(declare-fun e!1628365 () (Set (_ BitVec 16)))

(assert (=> d!730661 (= (content!4091 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))) e!1628365)))

(declare-fun b!2580584 () Bool)

(assert (=> b!2580584 (= e!1628365 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580585 () Bool)

(assert (=> b!2580585 (= e!1628365 (set.union (set.insert (h!35128 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (left!22632 (c!415433 x!464697))))))))))

(assert (= (and d!730661 c!415918) b!2580584))

(assert (= (and d!730661 (not c!415918)) b!2580585))

(declare-fun m!2916657 () Bool)

(assert (=> b!2580585 m!2916657))

(declare-fun m!2916659 () Bool)

(assert (=> b!2580585 m!2916659))

(assert (=> d!730269 d!730661))

(assert (=> b!2579677 d!729831))

(declare-fun d!730665 () Bool)

(declare-fun lt!907905 () Int)

(assert (=> d!730665 (>= lt!907905 0)))

(declare-fun e!1628368 () Int)

(assert (=> d!730665 (= lt!907905 e!1628368)))

(declare-fun c!415921 () Bool)

(assert (=> d!730665 (= c!415921 (is-Nil!29708 (list!11219 (xs!12252 (c!415433 x!464697)))))))

(assert (=> d!730665 (= (size!23031 (list!11219 (xs!12252 (c!415433 x!464697)))) lt!907905)))

(declare-fun b!2580590 () Bool)

(assert (=> b!2580590 (= e!1628368 0)))

(declare-fun b!2580591 () Bool)

(assert (=> b!2580591 (= e!1628368 (+ 1 (size!23031 (t!211695 (list!11219 (xs!12252 (c!415433 x!464697)))))))))

(assert (= (and d!730665 c!415921) b!2580590))

(assert (= (and d!730665 (not c!415921)) b!2580591))

(declare-fun m!2916667 () Bool)

(assert (=> b!2580591 m!2916667))

(assert (=> b!2579664 d!730665))

(assert (=> b!2579664 d!729845))

(declare-fun d!730671 () Bool)

(declare-fun c!415923 () Bool)

(assert (=> d!730671 (= c!415923 (is-Nil!29708 (t!211695 lt!907679)))))

(declare-fun e!1628371 () (Set (_ BitVec 16)))

(assert (=> d!730671 (= (content!4091 (t!211695 lt!907679)) e!1628371)))

(declare-fun b!2580596 () Bool)

(assert (=> b!2580596 (= e!1628371 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580597 () Bool)

(assert (=> b!2580597 (= e!1628371 (set.union (set.insert (h!35128 (t!211695 lt!907679)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907679)))))))

(assert (= (and d!730671 c!415923) b!2580596))

(assert (= (and d!730671 (not c!415923)) b!2580597))

(declare-fun m!2916673 () Bool)

(assert (=> b!2580597 m!2916673))

(declare-fun m!2916677 () Bool)

(assert (=> b!2580597 m!2916677))

(assert (=> b!2579822 d!730671))

(declare-fun d!730675 () Bool)

(declare-fun e!1628374 () Bool)

(assert (=> d!730675 e!1628374))

(declare-fun res!1085374 () Bool)

(assert (=> d!730675 (=> (not res!1085374) (not e!1628374))))

(declare-fun lt!907907 () BalanceConc!18150)

(assert (=> d!730675 (= res!1085374 (= (list!11215 lt!907907) (Cons!29708 #x002C Nil!29708)))))

(assert (=> d!730675 (= lt!907907 (BalanceConc!18151 (fromList!557 (Cons!29708 #x002C Nil!29708))))))

(assert (=> d!730675 (= (fromListB!1421 (Cons!29708 #x002C Nil!29708)) lt!907907)))

(declare-fun b!2580602 () Bool)

(assert (=> b!2580602 (= e!1628374 (isBalanced!2825 (fromList!557 (Cons!29708 #x002C Nil!29708))))))

(assert (= (and d!730675 res!1085374) b!2580602))

(declare-fun m!2916689 () Bool)

(assert (=> d!730675 m!2916689))

(declare-fun m!2916695 () Bool)

(assert (=> d!730675 m!2916695))

(assert (=> b!2580602 m!2916695))

(assert (=> b!2580602 m!2916695))

(declare-fun m!2916697 () Bool)

(assert (=> b!2580602 m!2916697))

(assert (=> d!730075 d!730675))

(declare-fun d!730683 () Bool)

(declare-fun lt!907908 () Int)

(assert (=> d!730683 (>= lt!907908 0)))

(declare-fun e!1628376 () Int)

(assert (=> d!730683 (= lt!907908 e!1628376)))

(declare-fun c!415926 () Bool)

(assert (=> d!730683 (= c!415926 (is-Nil!29708 (t!211695 lt!907651)))))

(assert (=> d!730683 (= (size!23031 (t!211695 lt!907651)) lt!907908)))

(declare-fun b!2580605 () Bool)

(assert (=> b!2580605 (= e!1628376 0)))

(declare-fun b!2580606 () Bool)

(assert (=> b!2580606 (= e!1628376 (+ 1 (size!23031 (t!211695 (t!211695 lt!907651)))))))

(assert (= (and d!730683 c!415926) b!2580605))

(assert (= (and d!730683 (not c!415926)) b!2580606))

(declare-fun m!2916699 () Bool)

(assert (=> b!2580606 m!2916699))

(assert (=> b!2579883 d!730683))

(declare-fun d!730685 () Bool)

(declare-fun lt!907909 () List!29808)

(assert (=> d!730685 (= lt!907909 (list!11219 (xs!12252 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730685 (= lt!907909 (rec!14 (xs!12252 (right!22962 (c!415433 x!464697))) (size!23034 (xs!12252 (right!22962 (c!415433 x!464697)))) Nil!29708))))

(assert (=> d!730685 (= (efficientList!388 (xs!12252 (right!22962 (c!415433 x!464697)))) lt!907909)))

(declare-fun bs!471198 () Bool)

(assert (= bs!471198 d!730685))

(assert (=> bs!471198 m!2914495))

(declare-fun m!2916701 () Bool)

(assert (=> bs!471198 m!2916701))

(assert (=> bs!471198 m!2916701))

(declare-fun m!2916703 () Bool)

(assert (=> bs!471198 m!2916703))

(assert (=> b!2579602 d!730685))

(assert (=> b!2579685 d!729839))

(assert (=> b!2579668 d!729833))

(declare-fun d!730689 () Bool)

(assert (=> d!730689 (= (inv!40087 (xs!12252 (left!22632 (c!415433 x!464697)))) (<= (size!23031 (innerList!9328 (xs!12252 (left!22632 (c!415433 x!464697))))) 2147483647))))

(declare-fun bs!471199 () Bool)

(assert (= bs!471199 d!730689))

(declare-fun m!2916705 () Bool)

(assert (=> bs!471199 m!2916705))

(assert (=> b!2579697 d!730689))

(assert (=> d!729965 d!730665))

(assert (=> d!729965 d!729845))

(declare-fun d!730691 () Bool)

(declare-fun e!1628378 () Bool)

(assert (=> d!730691 e!1628378))

(declare-fun res!1085375 () Bool)

(assert (=> d!730691 (=> (not res!1085375) (not e!1628378))))

(declare-fun lt!907910 () List!29808)

(assert (=> d!730691 (= res!1085375 (= (content!4091 lt!907910) (set.union (content!4091 e!1627862) (content!4091 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1628377 () List!29808)

(assert (=> d!730691 (= lt!907910 e!1628377)))

(declare-fun c!415927 () Bool)

(assert (=> d!730691 (= c!415927 (is-Nil!29708 e!1627862))))

(assert (=> d!730691 (= (++!7292 e!1627862 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907910)))

(declare-fun b!2580607 () Bool)

(assert (=> b!2580607 (= e!1628377 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580610 () Bool)

(assert (=> b!2580610 (= e!1628378 (or (not (= (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907910 e!1627862)))))

(declare-fun b!2580608 () Bool)

(assert (=> b!2580608 (= e!1628377 (Cons!29708 (h!35128 e!1627862) (++!7292 (t!211695 e!1627862) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2580609 () Bool)

(declare-fun res!1085376 () Bool)

(assert (=> b!2580609 (=> (not res!1085376) (not e!1628378))))

(assert (=> b!2580609 (= res!1085376 (= (size!23031 lt!907910) (+ (size!23031 e!1627862) (size!23031 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730691 c!415927) b!2580607))

(assert (= (and d!730691 (not c!415927)) b!2580608))

(assert (= (and d!730691 res!1085375) b!2580609))

(assert (= (and b!2580609 res!1085376) b!2580610))

(declare-fun m!2916707 () Bool)

(assert (=> d!730691 m!2916707))

(declare-fun m!2916709 () Bool)

(assert (=> d!730691 m!2916709))

(assert (=> d!730691 m!2914351))

(assert (=> d!730691 m!2915147))

(assert (=> b!2580608 m!2914351))

(declare-fun m!2916711 () Bool)

(assert (=> b!2580608 m!2916711))

(declare-fun m!2916715 () Bool)

(assert (=> b!2580609 m!2916715))

(declare-fun m!2916719 () Bool)

(assert (=> b!2580609 m!2916719))

(assert (=> b!2580609 m!2914351))

(assert (=> b!2580609 m!2915153))

(assert (=> bm!166727 d!730691))

(declare-fun d!730695 () Bool)

(declare-fun c!415928 () Bool)

(assert (=> d!730695 (= c!415928 (is-Nil!29708 (t!211695 (++!7292 lt!907623 lt!907622))))))

(declare-fun e!1628381 () (Set (_ BitVec 16)))

(assert (=> d!730695 (= (content!4091 (t!211695 (++!7292 lt!907623 lt!907622))) e!1628381)))

(declare-fun b!2580617 () Bool)

(assert (=> b!2580617 (= e!1628381 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580618 () Bool)

(assert (=> b!2580618 (= e!1628381 (set.union (set.insert (h!35128 (t!211695 (++!7292 lt!907623 lt!907622))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (++!7292 lt!907623 lt!907622))))))))

(assert (= (and d!730695 c!415928) b!2580617))

(assert (= (and d!730695 (not c!415928)) b!2580618))

(declare-fun m!2916729 () Bool)

(assert (=> b!2580618 m!2916729))

(declare-fun m!2916731 () Bool)

(assert (=> b!2580618 m!2916731))

(assert (=> b!2579833 d!730695))

(assert (=> b!2579444 d!729935))

(assert (=> b!2579444 d!729937))

(declare-fun b!2580619 () Bool)

(declare-fun e!1628382 () Bool)

(declare-fun e!1628383 () Bool)

(assert (=> b!2580619 (= e!1628382 e!1628383)))

(declare-fun res!1085387 () Bool)

(assert (=> b!2580619 (=> (not res!1085387) (not e!1628383))))

(assert (=> b!2580619 (= res!1085387 (<= (- 1) (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))))))

(declare-fun b!2580620 () Bool)

(assert (=> b!2580620 (= e!1628383 (not (isEmpty!17078 (right!22962 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))))))))

(declare-fun b!2580621 () Bool)

(declare-fun res!1085383 () Bool)

(assert (=> b!2580621 (=> (not res!1085383) (not e!1628383))))

(assert (=> b!2580621 (= res!1085383 (isBalanced!2825 (right!22962 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))))

(declare-fun b!2580622 () Bool)

(declare-fun res!1085385 () Bool)

(assert (=> b!2580622 (=> (not res!1085385) (not e!1628383))))

(assert (=> b!2580622 (= res!1085385 (<= (- (height!1345 (left!22632 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))) (height!1345 (right!22962 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))))) 1))))

(declare-fun b!2580623 () Bool)

(declare-fun res!1085386 () Bool)

(assert (=> b!2580623 (=> (not res!1085386) (not e!1628383))))

(assert (=> b!2580623 (= res!1085386 (not (isEmpty!17078 (left!22632 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))))))))

(declare-fun d!730699 () Bool)

(declare-fun res!1085388 () Bool)

(assert (=> d!730699 (=> res!1085388 e!1628382)))

(assert (=> d!730699 (= res!1085388 (not (is-Node!9268 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))))

(assert (=> d!730699 (= (isBalanced!2825 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708))))))) e!1628382)))

(declare-fun b!2580624 () Bool)

(declare-fun res!1085384 () Bool)

(assert (=> b!2580624 (=> (not res!1085384) (not e!1628383))))

(assert (=> b!2580624 (= res!1085384 (isBalanced!2825 (left!22632 (fromList!557 (Cons!29708 #x0066 (Cons!29708 #x0061 (Cons!29708 #x006C (Cons!29708 #x0073 (Cons!29708 #x0065 Nil!29708)))))))))))

(assert (= (and d!730699 (not res!1085388)) b!2580619))

(assert (= (and b!2580619 res!1085387) b!2580622))

(assert (= (and b!2580622 res!1085385) b!2580624))

(assert (= (and b!2580624 res!1085384) b!2580621))

(assert (= (and b!2580621 res!1085383) b!2580623))

(assert (= (and b!2580623 res!1085386) b!2580620))

(declare-fun m!2916735 () Bool)

(assert (=> b!2580622 m!2916735))

(declare-fun m!2916737 () Bool)

(assert (=> b!2580622 m!2916737))

(declare-fun m!2916739 () Bool)

(assert (=> b!2580620 m!2916739))

(assert (=> b!2580619 m!2916735))

(assert (=> b!2580619 m!2916737))

(declare-fun m!2916741 () Bool)

(assert (=> b!2580624 m!2916741))

(declare-fun m!2916743 () Bool)

(assert (=> b!2580623 m!2916743))

(declare-fun m!2916745 () Bool)

(assert (=> b!2580621 m!2916745))

(assert (=> b!2579892 d!730699))

(assert (=> b!2579892 d!730221))

(declare-fun d!730705 () Bool)

(declare-fun lt!907912 () Int)

(assert (=> d!730705 (>= lt!907912 0)))

(declare-fun e!1628384 () Int)

(assert (=> d!730705 (= lt!907912 e!1628384)))

(declare-fun c!415929 () Bool)

(assert (=> d!730705 (= c!415929 (is-Nil!29708 lt!907688))))

(assert (=> d!730705 (= (size!23031 lt!907688) lt!907912)))

(declare-fun b!2580625 () Bool)

(assert (=> b!2580625 (= e!1628384 0)))

(declare-fun b!2580626 () Bool)

(assert (=> b!2580626 (= e!1628384 (+ 1 (size!23031 (t!211695 lt!907688))))))

(assert (= (and d!730705 c!415929) b!2580625))

(assert (= (and d!730705 (not c!415929)) b!2580626))

(declare-fun m!2916747 () Bool)

(assert (=> b!2580626 m!2916747))

(assert (=> b!2579640 d!730705))

(declare-fun d!730707 () Bool)

(declare-fun lt!907913 () Int)

(assert (=> d!730707 (>= lt!907913 0)))

(declare-fun e!1628385 () Int)

(assert (=> d!730707 (= lt!907913 e!1628385)))

(declare-fun c!415930 () Bool)

(assert (=> d!730707 (= c!415930 (is-Nil!29708 e!1627758))))

(assert (=> d!730707 (= (size!23031 e!1627758) lt!907913)))

(declare-fun b!2580627 () Bool)

(assert (=> b!2580627 (= e!1628385 0)))

(declare-fun b!2580628 () Bool)

(assert (=> b!2580628 (= e!1628385 (+ 1 (size!23031 (t!211695 e!1627758))))))

(assert (= (and d!730707 c!415930) b!2580627))

(assert (= (and d!730707 (not c!415930)) b!2580628))

(declare-fun m!2916749 () Bool)

(assert (=> b!2580628 m!2916749))

(assert (=> b!2579640 d!730707))

(assert (=> b!2579640 d!729955))

(declare-fun d!730709 () Bool)

(declare-fun res!1085389 () Bool)

(declare-fun e!1628386 () Bool)

(assert (=> d!730709 (=> (not res!1085389) (not e!1628386))))

(assert (=> d!730709 (= res!1085389 (= (csize!18766 (left!22632 (c!415433 x!464697))) (+ (size!23033 (left!22632 (left!22632 (c!415433 x!464697)))) (size!23033 (right!22962 (left!22632 (c!415433 x!464697)))))))))

(assert (=> d!730709 (= (inv!40085 (left!22632 (c!415433 x!464697))) e!1628386)))

(declare-fun b!2580629 () Bool)

(declare-fun res!1085390 () Bool)

(assert (=> b!2580629 (=> (not res!1085390) (not e!1628386))))

(assert (=> b!2580629 (= res!1085390 (and (not (= (left!22632 (left!22632 (c!415433 x!464697))) Empty!9268)) (not (= (right!22962 (left!22632 (c!415433 x!464697))) Empty!9268))))))

(declare-fun b!2580630 () Bool)

(declare-fun res!1085391 () Bool)

(assert (=> b!2580630 (=> (not res!1085391) (not e!1628386))))

(assert (=> b!2580630 (= res!1085391 (= (cheight!9479 (left!22632 (c!415433 x!464697))) (+ (max!0 (height!1345 (left!22632 (left!22632 (c!415433 x!464697)))) (height!1345 (right!22962 (left!22632 (c!415433 x!464697))))) 1)))))

(declare-fun b!2580631 () Bool)

(assert (=> b!2580631 (= e!1628386 (<= 0 (cheight!9479 (left!22632 (c!415433 x!464697)))))))

(assert (= (and d!730709 res!1085389) b!2580629))

(assert (= (and b!2580629 res!1085390) b!2580630))

(assert (= (and b!2580630 res!1085391) b!2580631))

(declare-fun m!2916751 () Bool)

(assert (=> d!730709 m!2916751))

(declare-fun m!2916753 () Bool)

(assert (=> d!730709 m!2916753))

(declare-fun m!2916755 () Bool)

(assert (=> b!2580630 m!2916755))

(declare-fun m!2916757 () Bool)

(assert (=> b!2580630 m!2916757))

(assert (=> b!2580630 m!2916755))

(assert (=> b!2580630 m!2916757))

(declare-fun m!2916759 () Bool)

(assert (=> b!2580630 m!2916759))

(assert (=> b!2579589 d!730709))

(declare-fun d!730711 () Bool)

(declare-fun lt!907914 () Int)

(assert (=> d!730711 (>= lt!907914 0)))

(declare-fun e!1628387 () Int)

(assert (=> d!730711 (= lt!907914 e!1628387)))

(declare-fun c!415931 () Bool)

(assert (=> d!730711 (= c!415931 (is-Nil!29708 lt!907737))))

(assert (=> d!730711 (= (size!23031 lt!907737) lt!907914)))

(declare-fun b!2580632 () Bool)

(assert (=> b!2580632 (= e!1628387 0)))

(declare-fun b!2580633 () Bool)

(assert (=> b!2580633 (= e!1628387 (+ 1 (size!23031 (t!211695 lt!907737))))))

(assert (= (and d!730711 c!415931) b!2580632))

(assert (= (and d!730711 (not c!415931)) b!2580633))

(declare-fun m!2916761 () Bool)

(assert (=> b!2580633 m!2916761))

(assert (=> b!2579907 d!730711))

(assert (=> b!2579907 d!730083))

(assert (=> b!2579907 d!729955))

(declare-fun d!730713 () Bool)

(declare-fun c!415932 () Bool)

(assert (=> d!730713 (= c!415932 (is-Node!9268 (left!22632 (left!22632 (c!415433 x!464697)))))))

(declare-fun e!1628388 () Bool)

(assert (=> d!730713 (= (inv!40081 (left!22632 (left!22632 (c!415433 x!464697)))) e!1628388)))

(declare-fun b!2580634 () Bool)

(assert (=> b!2580634 (= e!1628388 (inv!40085 (left!22632 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580635 () Bool)

(declare-fun e!1628389 () Bool)

(assert (=> b!2580635 (= e!1628388 e!1628389)))

(declare-fun res!1085392 () Bool)

(assert (=> b!2580635 (= res!1085392 (not (is-Leaf!14139 (left!22632 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580635 (=> res!1085392 e!1628389)))

(declare-fun b!2580636 () Bool)

(assert (=> b!2580636 (= e!1628389 (inv!40086 (left!22632 (left!22632 (c!415433 x!464697)))))))

(assert (= (and d!730713 c!415932) b!2580634))

(assert (= (and d!730713 (not c!415932)) b!2580635))

(assert (= (and b!2580635 (not res!1085392)) b!2580636))

(declare-fun m!2916763 () Bool)

(assert (=> b!2580634 m!2916763))

(declare-fun m!2916765 () Bool)

(assert (=> b!2580636 m!2916765))

(assert (=> b!2579696 d!730713))

(declare-fun d!730715 () Bool)

(declare-fun c!415933 () Bool)

(assert (=> d!730715 (= c!415933 (is-Node!9268 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun e!1628390 () Bool)

(assert (=> d!730715 (= (inv!40081 (right!22962 (left!22632 (c!415433 x!464697)))) e!1628390)))

(declare-fun b!2580637 () Bool)

(assert (=> b!2580637 (= e!1628390 (inv!40085 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580638 () Bool)

(declare-fun e!1628391 () Bool)

(assert (=> b!2580638 (= e!1628390 e!1628391)))

(declare-fun res!1085393 () Bool)

(assert (=> b!2580638 (= res!1085393 (not (is-Leaf!14139 (right!22962 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580638 (=> res!1085393 e!1628391)))

(declare-fun b!2580639 () Bool)

(assert (=> b!2580639 (= e!1628391 (inv!40086 (right!22962 (left!22632 (c!415433 x!464697)))))))

(assert (= (and d!730715 c!415933) b!2580637))

(assert (= (and d!730715 (not c!415933)) b!2580638))

(assert (= (and b!2580638 (not res!1085393)) b!2580639))

(declare-fun m!2916767 () Bool)

(assert (=> b!2580637 m!2916767))

(declare-fun m!2916769 () Bool)

(assert (=> b!2580639 m!2916769))

(assert (=> b!2579696 d!730715))

(declare-fun d!730717 () Bool)

(declare-fun e!1628393 () Bool)

(assert (=> d!730717 e!1628393))

(declare-fun res!1085394 () Bool)

(assert (=> d!730717 (=> (not res!1085394) (not e!1628393))))

(declare-fun lt!907915 () List!29808)

(assert (=> d!730717 (= res!1085394 (= (content!4091 lt!907915) (set.union (content!4091 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628392 () List!29808)

(assert (=> d!730717 (= lt!907915 e!1628392)))

(declare-fun c!415934 () Bool)

(assert (=> d!730717 (= c!415934 (is-Nil!29708 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))))))

(assert (=> d!730717 (= (++!7292 (t!211695 (list!11217 (right!22962 (c!415433 x!464697)))) (efficientList$default$2!135 (c!415433 x!464697))) lt!907915)))

(declare-fun b!2580640 () Bool)

(assert (=> b!2580640 (= e!1628392 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580643 () Bool)

(assert (=> b!2580643 (= e!1628393 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907915 (t!211695 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(declare-fun b!2580641 () Bool)

(assert (=> b!2580641 (= e!1628392 (Cons!29708 (h!35128 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) (++!7292 (t!211695 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580642 () Bool)

(declare-fun res!1085395 () Bool)

(assert (=> b!2580642 (=> (not res!1085395) (not e!1628393))))

(assert (=> b!2580642 (= res!1085395 (= (size!23031 lt!907915) (+ (size!23031 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730717 c!415934) b!2580640))

(assert (= (and d!730717 (not c!415934)) b!2580641))

(assert (= (and d!730717 res!1085394) b!2580642))

(assert (= (and b!2580642 res!1085395) b!2580643))

(declare-fun m!2916771 () Bool)

(assert (=> d!730717 m!2916771))

(assert (=> d!730717 m!2914823))

(assert (=> d!730717 m!2914321))

(assert (=> d!730717 m!2914393))

(assert (=> b!2580641 m!2914321))

(declare-fun m!2916773 () Bool)

(assert (=> b!2580641 m!2916773))

(declare-fun m!2916775 () Bool)

(assert (=> b!2580642 m!2916775))

(assert (=> b!2580642 m!2915097))

(assert (=> b!2580642 m!2914321))

(assert (=> b!2580642 m!2914401))

(assert (=> b!2579906 d!730717))

(declare-fun b!2580647 () Bool)

(declare-fun e!1628395 () List!29808)

(assert (=> b!2580647 (= e!1628395 (++!7292 (list!11217 (left!22632 (c!415433 lt!907735))) (list!11217 (right!22962 (c!415433 lt!907735)))))))

(declare-fun d!730719 () Bool)

(declare-fun c!415935 () Bool)

(assert (=> d!730719 (= c!415935 (is-Empty!9268 (c!415433 lt!907735)))))

(declare-fun e!1628394 () List!29808)

(assert (=> d!730719 (= (list!11217 (c!415433 lt!907735)) e!1628394)))

(declare-fun b!2580646 () Bool)

(assert (=> b!2580646 (= e!1628395 (list!11219 (xs!12252 (c!415433 lt!907735))))))

(declare-fun b!2580645 () Bool)

(assert (=> b!2580645 (= e!1628394 e!1628395)))

(declare-fun c!415936 () Bool)

(assert (=> b!2580645 (= c!415936 (is-Leaf!14139 (c!415433 lt!907735)))))

(declare-fun b!2580644 () Bool)

(assert (=> b!2580644 (= e!1628394 Nil!29708)))

(assert (= (and d!730719 c!415935) b!2580644))

(assert (= (and d!730719 (not c!415935)) b!2580645))

(assert (= (and b!2580645 c!415936) b!2580646))

(assert (= (and b!2580645 (not c!415936)) b!2580647))

(declare-fun m!2916777 () Bool)

(assert (=> b!2580647 m!2916777))

(declare-fun m!2916779 () Bool)

(assert (=> b!2580647 m!2916779))

(assert (=> b!2580647 m!2916777))

(assert (=> b!2580647 m!2916779))

(declare-fun m!2916781 () Bool)

(assert (=> b!2580647 m!2916781))

(declare-fun m!2916783 () Bool)

(assert (=> b!2580646 m!2916783))

(assert (=> d!730219 d!730719))

(assert (=> b!2579684 d!729841))

(declare-fun d!730721 () Bool)

(declare-fun lt!907920 () Int)

(assert (=> d!730721 (= lt!907920 (size!23031 (list!11217 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730721 (= lt!907920 (ite (is-Empty!9268 (left!22632 (c!415433 x!464697))) 0 (ite (is-Leaf!14139 (left!22632 (c!415433 x!464697))) (csize!18767 (left!22632 (c!415433 x!464697))) (csize!18766 (left!22632 (c!415433 x!464697))))))))

(assert (=> d!730721 (= (size!23033 (left!22632 (c!415433 x!464697))) lt!907920)))

(declare-fun bs!471201 () Bool)

(assert (= bs!471201 d!730721))

(assert (=> bs!471201 m!2914313))

(assert (=> bs!471201 m!2914313))

(assert (=> bs!471201 m!2914477))

(assert (=> d!729957 d!730721))

(declare-fun d!730723 () Bool)

(declare-fun lt!907937 () Int)

(assert (=> d!730723 (= lt!907937 (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))))))

(assert (=> d!730723 (= lt!907937 (ite (is-Empty!9268 (right!22962 (c!415433 x!464697))) 0 (ite (is-Leaf!14139 (right!22962 (c!415433 x!464697))) (csize!18767 (right!22962 (c!415433 x!464697))) (csize!18766 (right!22962 (c!415433 x!464697))))))))

(assert (=> d!730723 (= (size!23033 (right!22962 (c!415433 x!464697))) lt!907937)))

(declare-fun bs!471202 () Bool)

(assert (= bs!471202 d!730723))

(assert (=> bs!471202 m!2914315))

(assert (=> bs!471202 m!2914315))

(assert (=> bs!471202 m!2914479))

(assert (=> d!729957 d!730723))

(declare-fun d!730725 () Bool)

(declare-fun c!415939 () Bool)

(assert (=> d!730725 (= c!415939 (is-Nil!29708 (t!211695 lt!907664)))))

(declare-fun e!1628400 () (Set (_ BitVec 16)))

(assert (=> d!730725 (= (content!4091 (t!211695 lt!907664)) e!1628400)))

(declare-fun b!2580654 () Bool)

(assert (=> b!2580654 (= e!1628400 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580655 () Bool)

(assert (=> b!2580655 (= e!1628400 (set.union (set.insert (h!35128 (t!211695 lt!907664)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907664)))))))

(assert (= (and d!730725 c!415939) b!2580654))

(assert (= (and d!730725 (not c!415939)) b!2580655))

(declare-fun m!2916785 () Bool)

(assert (=> b!2580655 m!2916785))

(declare-fun m!2916787 () Bool)

(assert (=> b!2580655 m!2916787))

(assert (=> b!2579831 d!730725))

(declare-fun d!730727 () Bool)

(declare-fun e!1628402 () Bool)

(assert (=> d!730727 e!1628402))

(declare-fun res!1085398 () Bool)

(assert (=> d!730727 (=> (not res!1085398) (not e!1628402))))

(declare-fun lt!907938 () List!29808)

(assert (=> d!730727 (= res!1085398 (= (content!4091 lt!907938) (set.union (content!4091 (t!211695 e!1627758)) (content!4091 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun e!1628401 () List!29808)

(assert (=> d!730727 (= lt!907938 e!1628401)))

(declare-fun c!415940 () Bool)

(assert (=> d!730727 (= c!415940 (is-Nil!29708 (t!211695 e!1627758)))))

(assert (=> d!730727 (= (++!7292 (t!211695 e!1627758) (efficientList$default$2!135 (c!415433 x!464697))) lt!907938)))

(declare-fun b!2580656 () Bool)

(assert (=> b!2580656 (= e!1628401 (efficientList$default$2!135 (c!415433 x!464697)))))

(declare-fun b!2580659 () Bool)

(assert (=> b!2580659 (= e!1628402 (or (not (= (efficientList$default$2!135 (c!415433 x!464697)) Nil!29708)) (= lt!907938 (t!211695 e!1627758))))))

(declare-fun b!2580657 () Bool)

(assert (=> b!2580657 (= e!1628401 (Cons!29708 (h!35128 (t!211695 e!1627758)) (++!7292 (t!211695 (t!211695 e!1627758)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580658 () Bool)

(declare-fun res!1085399 () Bool)

(assert (=> b!2580658 (=> (not res!1085399) (not e!1628402))))

(assert (=> b!2580658 (= res!1085399 (= (size!23031 lt!907938) (+ (size!23031 (t!211695 e!1627758)) (size!23031 (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730727 c!415940) b!2580656))

(assert (= (and d!730727 (not c!415940)) b!2580657))

(assert (= (and d!730727 res!1085398) b!2580658))

(assert (= (and b!2580658 res!1085399) b!2580659))

(declare-fun m!2916789 () Bool)

(assert (=> d!730727 m!2916789))

(assert (=> d!730727 m!2915555))

(assert (=> d!730727 m!2914321))

(assert (=> d!730727 m!2914393))

(assert (=> b!2580657 m!2914321))

(declare-fun m!2916791 () Bool)

(assert (=> b!2580657 m!2916791))

(declare-fun m!2916793 () Bool)

(assert (=> b!2580658 m!2916793))

(assert (=> b!2580658 m!2916749))

(assert (=> b!2580658 m!2914321))

(assert (=> b!2580658 m!2914401))

(assert (=> b!2579639 d!730727))

(declare-fun d!730729 () Bool)

(declare-fun lt!907939 () Int)

(assert (=> d!730729 (>= lt!907939 0)))

(declare-fun e!1628403 () Int)

(assert (=> d!730729 (= lt!907939 e!1628403)))

(declare-fun c!415941 () Bool)

(assert (=> d!730729 (= c!415941 (is-Nil!29708 lt!907728))))

(assert (=> d!730729 (= (size!23031 lt!907728) lt!907939)))

(declare-fun b!2580660 () Bool)

(assert (=> b!2580660 (= e!1628403 0)))

(declare-fun b!2580661 () Bool)

(assert (=> b!2580661 (= e!1628403 (+ 1 (size!23031 (t!211695 lt!907728))))))

(assert (= (and d!730729 c!415941) b!2580660))

(assert (= (and d!730729 (not c!415941)) b!2580661))

(declare-fun m!2916795 () Bool)

(assert (=> b!2580661 m!2916795))

(assert (=> b!2579866 d!730729))

(assert (=> b!2579866 d!730209))

(declare-fun d!730731 () Bool)

(declare-fun lt!907940 () Int)

(assert (=> d!730731 (>= lt!907940 0)))

(declare-fun e!1628404 () Int)

(assert (=> d!730731 (= lt!907940 e!1628404)))

(declare-fun c!415942 () Bool)

(assert (=> d!730731 (= c!415942 (is-Nil!29708 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730731 (= (size!23031 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))) lt!907940)))

(declare-fun b!2580662 () Bool)

(assert (=> b!2580662 (= e!1628404 0)))

(declare-fun b!2580663 () Bool)

(assert (=> b!2580663 (= e!1628404 (+ 1 (size!23031 (t!211695 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730731 c!415942) b!2580662))

(assert (= (and d!730731 (not c!415942)) b!2580663))

(declare-fun m!2916797 () Bool)

(assert (=> b!2580663 m!2916797))

(assert (=> b!2579866 d!730731))

(declare-fun d!730733 () Bool)

(declare-fun c!415944 () Bool)

(assert (=> d!730733 (= c!415944 (is-Nil!29708 lt!907775))))

(declare-fun e!1628407 () (Set (_ BitVec 16)))

(assert (=> d!730733 (= (content!4091 lt!907775) e!1628407)))

(declare-fun b!2580667 () Bool)

(assert (=> b!2580667 (= e!1628407 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580668 () Bool)

(assert (=> b!2580668 (= e!1628407 (set.union (set.insert (h!35128 lt!907775) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907775))))))

(assert (= (and d!730733 c!415944) b!2580667))

(assert (= (and d!730733 (not c!415944)) b!2580668))

(declare-fun m!2916799 () Bool)

(assert (=> b!2580668 m!2916799))

(declare-fun m!2916801 () Bool)

(assert (=> b!2580668 m!2916801))

(assert (=> d!730307 d!730733))

(declare-fun d!730735 () Bool)

(declare-fun c!415945 () Bool)

(assert (=> d!730735 (= c!415945 (is-Nil!29708 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628408 () (Set (_ BitVec 16)))

(assert (=> d!730735 (= (content!4091 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628408)))

(declare-fun b!2580669 () Bool)

(assert (=> b!2580669 (= e!1628408 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580670 () Bool)

(assert (=> b!2580670 (= e!1628408 (set.union (set.insert (h!35128 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730735 c!415945) b!2580669))

(assert (= (and d!730735 (not c!415945)) b!2580670))

(declare-fun m!2916823 () Bool)

(assert (=> b!2580670 m!2916823))

(declare-fun m!2916825 () Bool)

(assert (=> b!2580670 m!2916825))

(assert (=> d!730307 d!730735))

(declare-fun d!730739 () Bool)

(declare-fun c!415946 () Bool)

(assert (=> d!730739 (= c!415946 (is-Nil!29708 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628409 () (Set (_ BitVec 16)))

(assert (=> d!730739 (= (content!4091 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628409)))

(declare-fun b!2580671 () Bool)

(assert (=> b!2580671 (= e!1628409 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580672 () Bool)

(assert (=> b!2580672 (= e!1628409 (set.union (set.insert (h!35128 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(assert (= (and d!730739 c!415946) b!2580671))

(assert (= (and d!730739 (not c!415946)) b!2580672))

(declare-fun m!2916829 () Bool)

(assert (=> b!2580672 m!2916829))

(declare-fun m!2916831 () Bool)

(assert (=> b!2580672 m!2916831))

(assert (=> d!730307 d!730739))

(declare-fun b!2580673 () Bool)

(declare-fun e!1628410 () Bool)

(declare-fun e!1628411 () Bool)

(assert (=> b!2580673 (= e!1628410 e!1628411)))

(declare-fun res!1085405 () Bool)

(assert (=> b!2580673 (=> (not res!1085405) (not e!1628411))))

(assert (=> b!2580673 (= res!1085405 (<= (- 1) (- (height!1345 (left!22632 (left!22632 (c!415433 x!464697)))) (height!1345 (right!22962 (left!22632 (c!415433 x!464697)))))))))

(declare-fun b!2580674 () Bool)

(assert (=> b!2580674 (= e!1628411 (not (isEmpty!17078 (right!22962 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2580675 () Bool)

(declare-fun res!1085401 () Bool)

(assert (=> b!2580675 (=> (not res!1085401) (not e!1628411))))

(assert (=> b!2580675 (= res!1085401 (isBalanced!2825 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun b!2580676 () Bool)

(declare-fun res!1085403 () Bool)

(assert (=> b!2580676 (=> (not res!1085403) (not e!1628411))))

(assert (=> b!2580676 (= res!1085403 (<= (- (height!1345 (left!22632 (left!22632 (c!415433 x!464697)))) (height!1345 (right!22962 (left!22632 (c!415433 x!464697))))) 1))))

(declare-fun b!2580677 () Bool)

(declare-fun res!1085404 () Bool)

(assert (=> b!2580677 (=> (not res!1085404) (not e!1628411))))

(assert (=> b!2580677 (= res!1085404 (not (isEmpty!17078 (left!22632 (left!22632 (c!415433 x!464697))))))))

(declare-fun d!730741 () Bool)

(declare-fun res!1085406 () Bool)

(assert (=> d!730741 (=> res!1085406 e!1628410)))

(assert (=> d!730741 (= res!1085406 (not (is-Node!9268 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730741 (= (isBalanced!2825 (left!22632 (c!415433 x!464697))) e!1628410)))

(declare-fun b!2580678 () Bool)

(declare-fun res!1085402 () Bool)

(assert (=> b!2580678 (=> (not res!1085402) (not e!1628411))))

(assert (=> b!2580678 (= res!1085402 (isBalanced!2825 (left!22632 (left!22632 (c!415433 x!464697)))))))

(assert (= (and d!730741 (not res!1085406)) b!2580673))

(assert (= (and b!2580673 res!1085405) b!2580676))

(assert (= (and b!2580676 res!1085403) b!2580678))

(assert (= (and b!2580678 res!1085402) b!2580675))

(assert (= (and b!2580675 res!1085401) b!2580677))

(assert (= (and b!2580677 res!1085404) b!2580674))

(assert (=> b!2580676 m!2916755))

(assert (=> b!2580676 m!2916757))

(declare-fun m!2916835 () Bool)

(assert (=> b!2580674 m!2916835))

(assert (=> b!2580673 m!2916755))

(assert (=> b!2580673 m!2916757))

(declare-fun m!2916837 () Bool)

(assert (=> b!2580678 m!2916837))

(declare-fun m!2916839 () Bool)

(assert (=> b!2580677 m!2916839))

(declare-fun m!2916841 () Bool)

(assert (=> b!2580675 m!2916841))

(assert (=> b!2579659 d!730741))

(declare-fun d!730745 () Bool)

(declare-fun lt!907954 () Int)

(assert (=> d!730745 (>= lt!907954 0)))

(declare-fun e!1628414 () Int)

(assert (=> d!730745 (= lt!907954 e!1628414)))

(declare-fun c!415948 () Bool)

(assert (=> d!730745 (= c!415948 (is-Nil!29708 lt!907736))))

(assert (=> d!730745 (= (size!23031 lt!907736) lt!907954)))

(declare-fun b!2580683 () Bool)

(assert (=> b!2580683 (= e!1628414 0)))

(declare-fun b!2580684 () Bool)

(assert (=> b!2580684 (= e!1628414 (+ 1 (size!23031 (t!211695 lt!907736))))))

(assert (= (and d!730745 c!415948) b!2580683))

(assert (= (and d!730745 (not c!415948)) b!2580684))

(declare-fun m!2916843 () Bool)

(assert (=> b!2580684 m!2916843))

(assert (=> b!2579903 d!730745))

(assert (=> b!2579903 d!730643))

(assert (=> b!2579903 d!730109))

(declare-fun d!730747 () Bool)

(declare-fun res!1085409 () Bool)

(declare-fun e!1628415 () Bool)

(assert (=> d!730747 (=> (not res!1085409) (not e!1628415))))

(assert (=> d!730747 (= res!1085409 (<= (size!23031 (list!11219 (xs!12252 (right!22962 (c!415433 x!464697))))) 512))))

(assert (=> d!730747 (= (inv!40086 (right!22962 (c!415433 x!464697))) e!1628415)))

(declare-fun b!2580685 () Bool)

(declare-fun res!1085410 () Bool)

(assert (=> b!2580685 (=> (not res!1085410) (not e!1628415))))

(assert (=> b!2580685 (= res!1085410 (= (csize!18767 (right!22962 (c!415433 x!464697))) (size!23031 (list!11219 (xs!12252 (right!22962 (c!415433 x!464697)))))))))

(declare-fun b!2580686 () Bool)

(assert (=> b!2580686 (= e!1628415 (and (> (csize!18767 (right!22962 (c!415433 x!464697))) 0) (<= (csize!18767 (right!22962 (c!415433 x!464697))) 512)))))

(assert (= (and d!730747 res!1085409) b!2580685))

(assert (= (and b!2580685 res!1085410) b!2580686))

(assert (=> d!730747 m!2914495))

(assert (=> d!730747 m!2914495))

(declare-fun m!2916853 () Bool)

(assert (=> d!730747 m!2916853))

(assert (=> b!2580685 m!2914495))

(assert (=> b!2580685 m!2914495))

(assert (=> b!2580685 m!2916853))

(assert (=> b!2579594 d!730747))

(declare-fun d!730755 () Bool)

(assert (=> d!730755 (= (max!0 (height!1345 (left!22632 (c!415433 x!464697))) (height!1345 (right!22962 (c!415433 x!464697)))) (ite (< (height!1345 (left!22632 (c!415433 x!464697))) (height!1345 (right!22962 (c!415433 x!464697)))) (height!1345 (right!22962 (c!415433 x!464697))) (height!1345 (left!22632 (c!415433 x!464697)))))))

(assert (=> b!2579636 d!730755))

(assert (=> b!2579636 d!730549))

(assert (=> b!2579636 d!730555))

(declare-fun d!730763 () Bool)

(declare-fun c!415955 () Bool)

(assert (=> d!730763 (= c!415955 (is-Nil!29708 lt!907764))))

(declare-fun e!1628423 () (Set (_ BitVec 16)))

(assert (=> d!730763 (= (content!4091 lt!907764) e!1628423)))

(declare-fun b!2580701 () Bool)

(assert (=> b!2580701 (= e!1628423 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580702 () Bool)

(assert (=> b!2580702 (= e!1628423 (set.union (set.insert (h!35128 lt!907764) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907764))))))

(assert (= (and d!730763 c!415955) b!2580701))

(assert (= (and d!730763 (not c!415955)) b!2580702))

(declare-fun m!2916881 () Bool)

(assert (=> b!2580702 m!2916881))

(declare-fun m!2916885 () Bool)

(assert (=> b!2580702 m!2916885))

(assert (=> d!730245 d!730763))

(assert (=> d!730245 d!730563))

(assert (=> d!730245 d!730071))

(declare-fun d!730765 () Bool)

(declare-fun lt!907962 () Int)

(assert (=> d!730765 (>= lt!907962 0)))

(declare-fun e!1628424 () Int)

(assert (=> d!730765 (= lt!907962 e!1628424)))

(declare-fun c!415956 () Bool)

(assert (=> d!730765 (= c!415956 (is-Nil!29708 lt!907734))))

(assert (=> d!730765 (= (size!23031 lt!907734) lt!907962)))

(declare-fun b!2580703 () Bool)

(assert (=> b!2580703 (= e!1628424 0)))

(declare-fun b!2580704 () Bool)

(assert (=> b!2580704 (= e!1628424 (+ 1 (size!23031 (t!211695 lt!907734))))))

(assert (= (and d!730765 c!415956) b!2580703))

(assert (= (and d!730765 (not c!415956)) b!2580704))

(declare-fun m!2916897 () Bool)

(assert (=> b!2580704 m!2916897))

(assert (=> b!2579890 d!730765))

(declare-fun d!730769 () Bool)

(declare-fun lt!907964 () Int)

(assert (=> d!730769 (>= lt!907964 0)))

(declare-fun e!1628425 () Int)

(assert (=> d!730769 (= lt!907964 e!1628425)))

(declare-fun c!415957 () Bool)

(assert (=> d!730769 (= c!415957 (is-Nil!29708 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))

(assert (=> d!730769 (= (size!23031 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) lt!907964)))

(declare-fun b!2580705 () Bool)

(assert (=> b!2580705 (= e!1628425 0)))

(declare-fun b!2580706 () Bool)

(assert (=> b!2580706 (= e!1628425 (+ 1 (size!23031 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))))

(assert (= (and d!730769 c!415957) b!2580705))

(assert (= (and d!730769 (not c!415957)) b!2580706))

(declare-fun m!2916903 () Bool)

(assert (=> b!2580706 m!2916903))

(assert (=> b!2579890 d!730769))

(assert (=> b!2579890 d!730083))

(declare-fun d!730773 () Bool)

(declare-fun c!415961 () Bool)

(assert (=> d!730773 (= c!415961 (is-Nil!29708 (t!211695 lt!907622)))))

(declare-fun e!1628429 () (Set (_ BitVec 16)))

(assert (=> d!730773 (= (content!4091 (t!211695 lt!907622)) e!1628429)))

(declare-fun b!2580713 () Bool)

(assert (=> b!2580713 (= e!1628429 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580714 () Bool)

(assert (=> b!2580714 (= e!1628429 (set.union (set.insert (h!35128 (t!211695 lt!907622)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907622)))))))

(assert (= (and d!730773 c!415961) b!2580713))

(assert (= (and d!730773 (not c!415961)) b!2580714))

(declare-fun m!2916905 () Bool)

(assert (=> b!2580714 m!2916905))

(declare-fun m!2916909 () Bool)

(assert (=> b!2580714 m!2916909))

(assert (=> b!2579841 d!730773))

(declare-fun d!730775 () Bool)

(declare-fun e!1628431 () Bool)

(assert (=> d!730775 e!1628431))

(declare-fun res!1085413 () Bool)

(assert (=> d!730775 (=> (not res!1085413) (not e!1628431))))

(declare-fun lt!907970 () List!29808)

(assert (=> d!730775 (= res!1085413 (= (content!4091 lt!907970) (set.union (content!4091 lt!907675) (content!4091 call!166732))))))

(declare-fun e!1628430 () List!29808)

(assert (=> d!730775 (= lt!907970 e!1628430)))

(declare-fun c!415962 () Bool)

(assert (=> d!730775 (= c!415962 (is-Nil!29708 lt!907675))))

(assert (=> d!730775 (= (++!7292 lt!907675 call!166732) lt!907970)))

(declare-fun b!2580715 () Bool)

(assert (=> b!2580715 (= e!1628430 call!166732)))

(declare-fun b!2580718 () Bool)

(assert (=> b!2580718 (= e!1628431 (or (not (= call!166732 Nil!29708)) (= lt!907970 lt!907675)))))

(declare-fun b!2580716 () Bool)

(assert (=> b!2580716 (= e!1628430 (Cons!29708 (h!35128 lt!907675) (++!7292 (t!211695 lt!907675) call!166732)))))

(declare-fun b!2580717 () Bool)

(declare-fun res!1085414 () Bool)

(assert (=> b!2580717 (=> (not res!1085414) (not e!1628431))))

(assert (=> b!2580717 (= res!1085414 (= (size!23031 lt!907970) (+ (size!23031 lt!907675) (size!23031 call!166732))))))

(assert (= (and d!730775 c!415962) b!2580715))

(assert (= (and d!730775 (not c!415962)) b!2580716))

(assert (= (and d!730775 res!1085413) b!2580717))

(assert (= (and b!2580717 res!1085414) b!2580718))

(declare-fun m!2916927 () Bool)

(assert (=> d!730775 m!2916927))

(declare-fun m!2916931 () Bool)

(assert (=> d!730775 m!2916931))

(declare-fun m!2916937 () Bool)

(assert (=> d!730775 m!2916937))

(declare-fun m!2916945 () Bool)

(assert (=> b!2580716 m!2916945))

(declare-fun m!2916949 () Bool)

(assert (=> b!2580717 m!2916949))

(declare-fun m!2916951 () Bool)

(assert (=> b!2580717 m!2916951))

(declare-fun m!2916953 () Bool)

(assert (=> b!2580717 m!2916953))

(assert (=> b!2579609 d!730775))

(declare-fun d!730781 () Bool)

(assert (=> d!730781 (= (++!7292 (++!7292 lt!907675 lt!907674) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) (++!7292 lt!907675 (++!7292 lt!907674 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun lt!907973 () Unit!43542)

(assert (=> d!730781 (= lt!907973 (choose!15208 lt!907675 lt!907674 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730781 (= (lemmaConcatAssociativity!1474 lt!907675 lt!907674 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907973)))

(declare-fun bs!471207 () Bool)

(assert (= bs!471207 d!730781))

(assert (=> bs!471207 m!2914351))

(declare-fun m!2916967 () Bool)

(assert (=> bs!471207 m!2916967))

(assert (=> bs!471207 m!2914729))

(assert (=> bs!471207 m!2914729))

(assert (=> bs!471207 m!2914351))

(assert (=> bs!471207 m!2914731))

(assert (=> bs!471207 m!2914351))

(declare-fun m!2916971 () Bool)

(assert (=> bs!471207 m!2916971))

(assert (=> bs!471207 m!2916967))

(declare-fun m!2916977 () Bool)

(assert (=> bs!471207 m!2916977))

(assert (=> b!2579609 d!730781))

(declare-fun d!730789 () Bool)

(declare-fun e!1628441 () Bool)

(assert (=> d!730789 e!1628441))

(declare-fun res!1085419 () Bool)

(assert (=> d!730789 (=> (not res!1085419) (not e!1628441))))

(declare-fun lt!907974 () List!29808)

(assert (=> d!730789 (= res!1085419 (= (content!4091 lt!907974) (set.union (content!4091 lt!907675) (content!4091 lt!907674))))))

(declare-fun e!1628440 () List!29808)

(assert (=> d!730789 (= lt!907974 e!1628440)))

(declare-fun c!415969 () Bool)

(assert (=> d!730789 (= c!415969 (is-Nil!29708 lt!907675))))

(assert (=> d!730789 (= (++!7292 lt!907675 lt!907674) lt!907974)))

(declare-fun b!2580735 () Bool)

(assert (=> b!2580735 (= e!1628440 lt!907674)))

(declare-fun b!2580738 () Bool)

(assert (=> b!2580738 (= e!1628441 (or (not (= lt!907674 Nil!29708)) (= lt!907974 lt!907675)))))

(declare-fun b!2580736 () Bool)

(assert (=> b!2580736 (= e!1628440 (Cons!29708 (h!35128 lt!907675) (++!7292 (t!211695 lt!907675) lt!907674)))))

(declare-fun b!2580737 () Bool)

(declare-fun res!1085420 () Bool)

(assert (=> b!2580737 (=> (not res!1085420) (not e!1628441))))

(assert (=> b!2580737 (= res!1085420 (= (size!23031 lt!907974) (+ (size!23031 lt!907675) (size!23031 lt!907674))))))

(assert (= (and d!730789 c!415969) b!2580735))

(assert (= (and d!730789 (not c!415969)) b!2580736))

(assert (= (and d!730789 res!1085419) b!2580737))

(assert (= (and b!2580737 res!1085420) b!2580738))

(declare-fun m!2916991 () Bool)

(assert (=> d!730789 m!2916991))

(assert (=> d!730789 m!2916931))

(declare-fun m!2916993 () Bool)

(assert (=> d!730789 m!2916993))

(declare-fun m!2916995 () Bool)

(assert (=> b!2580736 m!2916995))

(declare-fun m!2916997 () Bool)

(assert (=> b!2580737 m!2916997))

(assert (=> b!2580737 m!2916951))

(declare-fun m!2916999 () Bool)

(assert (=> b!2580737 m!2916999))

(assert (=> b!2579609 d!730789))

(declare-fun d!730797 () Bool)

(declare-fun e!1628446 () Bool)

(assert (=> d!730797 e!1628446))

(declare-fun res!1085424 () Bool)

(assert (=> d!730797 (=> (not res!1085424) (not e!1628446))))

(declare-fun lt!907977 () List!29808)

(assert (=> d!730797 (= res!1085424 (= (content!4091 lt!907977) (set.union (content!4091 (++!7292 lt!907675 lt!907674)) (content!4091 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1628445 () List!29808)

(assert (=> d!730797 (= lt!907977 e!1628445)))

(declare-fun c!415972 () Bool)

(assert (=> d!730797 (= c!415972 (is-Nil!29708 (++!7292 lt!907675 lt!907674)))))

(assert (=> d!730797 (= (++!7292 (++!7292 lt!907675 lt!907674) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907977)))

(declare-fun b!2580746 () Bool)

(assert (=> b!2580746 (= e!1628445 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580749 () Bool)

(assert (=> b!2580749 (= e!1628446 (or (not (= (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907977 (++!7292 lt!907675 lt!907674))))))

(declare-fun b!2580747 () Bool)

(assert (=> b!2580747 (= e!1628445 (Cons!29708 (h!35128 (++!7292 lt!907675 lt!907674)) (++!7292 (t!211695 (++!7292 lt!907675 lt!907674)) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2580748 () Bool)

(declare-fun res!1085425 () Bool)

(assert (=> b!2580748 (=> (not res!1085425) (not e!1628446))))

(assert (=> b!2580748 (= res!1085425 (= (size!23031 lt!907977) (+ (size!23031 (++!7292 lt!907675 lt!907674)) (size!23031 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730797 c!415972) b!2580746))

(assert (= (and d!730797 (not c!415972)) b!2580747))

(assert (= (and d!730797 res!1085424) b!2580748))

(assert (= (and b!2580748 res!1085425) b!2580749))

(declare-fun m!2917015 () Bool)

(assert (=> d!730797 m!2917015))

(assert (=> d!730797 m!2914729))

(declare-fun m!2917017 () Bool)

(assert (=> d!730797 m!2917017))

(assert (=> d!730797 m!2914351))

(assert (=> d!730797 m!2915147))

(assert (=> b!2580747 m!2914351))

(declare-fun m!2917021 () Bool)

(assert (=> b!2580747 m!2917021))

(declare-fun m!2917025 () Bool)

(assert (=> b!2580748 m!2917025))

(assert (=> b!2580748 m!2914729))

(declare-fun m!2917027 () Bool)

(assert (=> b!2580748 m!2917027))

(assert (=> b!2580748 m!2914351))

(assert (=> b!2580748 m!2915153))

(assert (=> b!2579609 d!730797))

(declare-fun b!2580762 () Bool)

(declare-fun e!1628455 () List!29808)

(declare-fun lt!907979 () List!29808)

(assert (=> b!2580762 (= e!1628455 lt!907979)))

(declare-fun b!2580763 () Bool)

(declare-fun e!1628456 () List!29808)

(assert (=> b!2580763 (= e!1628456 (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(declare-fun b!2580764 () Bool)

(declare-fun e!1628457 () List!29808)

(declare-fun call!166743 () List!29808)

(assert (=> b!2580764 (= e!1628457 call!166743)))

(declare-fun b!2580765 () Bool)

(assert (=> b!2580765 (= e!1628455 (efficientList!388 (xs!12252 (left!22632 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2580766 () Bool)

(declare-fun lt!907982 () Unit!43542)

(declare-fun lt!907978 () Unit!43542)

(assert (=> b!2580766 (= lt!907982 lt!907978)))

(declare-fun lt!907980 () List!29808)

(assert (=> b!2580766 (= (++!7292 (++!7292 lt!907980 lt!907979) (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))) (++!7292 lt!907980 call!166743))))

(assert (=> b!2580766 (= lt!907978 (lemmaConcatAssociativity!1474 lt!907980 lt!907979 (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (=> b!2580766 (= lt!907979 (list!11217 (right!22962 (left!22632 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580766 (= lt!907980 (list!11217 (left!22632 (left!22632 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580766 (= e!1628457 (efficientList!387 (left!22632 (left!22632 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (left!22632 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun d!730807 () Bool)

(declare-fun lt!907981 () List!29808)

(assert (=> d!730807 (= lt!907981 (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (=> d!730807 (= lt!907981 e!1628456)))

(declare-fun c!415979 () Bool)

(assert (=> d!730807 (= c!415979 (is-Empty!9268 (left!22632 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730807 (= (efficientList!387 (left!22632 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))) lt!907981)))

(declare-fun b!2580767 () Bool)

(assert (=> b!2580767 (= e!1628456 e!1628457)))

(declare-fun c!415978 () Bool)

(assert (=> b!2580767 (= c!415978 (is-Leaf!14139 (left!22632 (left!22632 (c!415433 x!464697)))))))

(declare-fun bm!166738 () Bool)

(declare-fun c!415977 () Bool)

(assert (=> bm!166738 (= c!415977 c!415978)))

(assert (=> bm!166738 (= call!166743 (++!7292 e!1628455 (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(assert (= (and d!730807 c!415979) b!2580763))

(assert (= (and d!730807 (not c!415979)) b!2580767))

(assert (= (and b!2580767 c!415978) b!2580764))

(assert (= (and b!2580767 (not c!415978)) b!2580766))

(assert (= (or b!2580764 b!2580766) bm!166738))

(assert (= (and bm!166738 c!415977) b!2580765))

(assert (= (and bm!166738 (not c!415977)) b!2580762))

(declare-fun m!2917037 () Bool)

(assert (=> b!2580765 m!2917037))

(assert (=> b!2580766 m!2914733))

(declare-fun m!2917039 () Bool)

(assert (=> b!2580766 m!2917039))

(declare-fun m!2917041 () Bool)

(assert (=> b!2580766 m!2917041))

(declare-fun m!2917043 () Bool)

(assert (=> b!2580766 m!2917043))

(assert (=> b!2580766 m!2917043))

(assert (=> b!2580766 m!2914733))

(declare-fun m!2917049 () Bool)

(assert (=> b!2580766 m!2917049))

(assert (=> b!2580766 m!2914733))

(declare-fun m!2917053 () Bool)

(assert (=> b!2580766 m!2917053))

(assert (=> b!2580766 m!2915587))

(assert (=> b!2580766 m!2917053))

(declare-fun m!2917055 () Bool)

(assert (=> b!2580766 m!2917055))

(assert (=> b!2580766 m!2915589))

(assert (=> d!730807 m!2914481))

(assert (=> d!730807 m!2914481))

(assert (=> d!730807 m!2914733))

(declare-fun m!2917061 () Bool)

(assert (=> d!730807 m!2917061))

(assert (=> bm!166738 m!2914733))

(declare-fun m!2917063 () Bool)

(assert (=> bm!166738 m!2917063))

(assert (=> b!2579609 d!730807))

(assert (=> b!2579609 d!730271))

(declare-fun b!2580773 () Bool)

(declare-fun e!1628461 () List!29808)

(declare-fun lt!907987 () List!29808)

(assert (=> b!2580773 (= e!1628461 lt!907987)))

(declare-fun b!2580774 () Bool)

(declare-fun e!1628462 () List!29808)

(assert (=> b!2580774 (= e!1628462 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580775 () Bool)

(declare-fun e!1628463 () List!29808)

(declare-fun call!166744 () List!29808)

(assert (=> b!2580775 (= e!1628463 call!166744)))

(declare-fun b!2580776 () Bool)

(assert (=> b!2580776 (= e!1628461 (efficientList!388 (xs!12252 (right!22962 (left!22632 (c!415433 x!464697))))))))

(declare-fun b!2580777 () Bool)

(declare-fun lt!907990 () Unit!43542)

(declare-fun lt!907986 () Unit!43542)

(assert (=> b!2580777 (= lt!907990 lt!907986)))

(declare-fun lt!907988 () List!29808)

(assert (=> b!2580777 (= (++!7292 (++!7292 lt!907988 lt!907987) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) (++!7292 lt!907988 call!166744))))

(assert (=> b!2580777 (= lt!907986 (lemmaConcatAssociativity!1474 lt!907988 lt!907987 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> b!2580777 (= lt!907987 (list!11217 (right!22962 (right!22962 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580777 (= lt!907988 (list!11217 (left!22632 (right!22962 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2580777 (= e!1628463 (efficientList!387 (left!22632 (right!22962 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (right!22962 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun d!730819 () Bool)

(declare-fun lt!907989 () List!29808)

(assert (=> d!730819 (= lt!907989 (++!7292 (list!11217 (right!22962 (left!22632 (c!415433 x!464697)))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730819 (= lt!907989 e!1628462)))

(declare-fun c!415984 () Bool)

(assert (=> d!730819 (= c!415984 (is-Empty!9268 (right!22962 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730819 (= (efficientList!387 (right!22962 (left!22632 (c!415433 x!464697))) (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907989)))

(declare-fun b!2580778 () Bool)

(assert (=> b!2580778 (= e!1628462 e!1628463)))

(declare-fun c!415983 () Bool)

(assert (=> b!2580778 (= c!415983 (is-Leaf!14139 (right!22962 (left!22632 (c!415433 x!464697)))))))

(declare-fun bm!166739 () Bool)

(declare-fun c!415982 () Bool)

(assert (=> bm!166739 (= c!415982 c!415983)))

(assert (=> bm!166739 (= call!166744 (++!7292 e!1628461 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (= (and d!730819 c!415984) b!2580774))

(assert (= (and d!730819 (not c!415984)) b!2580778))

(assert (= (and b!2580778 c!415983) b!2580775))

(assert (= (and b!2580778 (not c!415983)) b!2580777))

(assert (= (or b!2580775 b!2580777) bm!166739))

(assert (= (and bm!166739 c!415982) b!2580776))

(assert (= (and bm!166739 (not c!415982)) b!2580773))

(declare-fun m!2917069 () Bool)

(assert (=> b!2580776 m!2917069))

(assert (=> b!2580777 m!2914351))

(declare-fun m!2917071 () Bool)

(assert (=> b!2580777 m!2917071))

(declare-fun m!2917073 () Bool)

(assert (=> b!2580777 m!2917073))

(declare-fun m!2917077 () Bool)

(assert (=> b!2580777 m!2917077))

(assert (=> b!2580777 m!2917077))

(assert (=> b!2580777 m!2914351))

(declare-fun m!2917083 () Bool)

(assert (=> b!2580777 m!2917083))

(assert (=> b!2580777 m!2914351))

(declare-fun m!2917085 () Bool)

(assert (=> b!2580777 m!2917085))

(assert (=> b!2580777 m!2915595))

(assert (=> b!2580777 m!2917085))

(declare-fun m!2917089 () Bool)

(assert (=> b!2580777 m!2917089))

(assert (=> b!2580777 m!2915597))

(assert (=> d!730819 m!2914483))

(assert (=> d!730819 m!2914483))

(assert (=> d!730819 m!2914351))

(declare-fun m!2917091 () Bool)

(assert (=> d!730819 m!2917091))

(assert (=> bm!166739 m!2914351))

(declare-fun m!2917093 () Bool)

(assert (=> bm!166739 m!2917093))

(assert (=> b!2579609 d!730819))

(assert (=> b!2579609 d!730273))

(declare-fun d!730825 () Bool)

(declare-fun c!415986 () Bool)

(assert (=> d!730825 (= c!415986 (is-Nil!29708 lt!907762))))

(declare-fun e!1628467 () (Set (_ BitVec 16)))

(assert (=> d!730825 (= (content!4091 lt!907762) e!1628467)))

(declare-fun b!2580787 () Bool)

(assert (=> b!2580787 (= e!1628467 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580788 () Bool)

(assert (=> b!2580788 (= e!1628467 (set.union (set.insert (h!35128 lt!907762) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907762))))))

(assert (= (and d!730825 c!415986) b!2580787))

(assert (= (and d!730825 (not c!415986)) b!2580788))

(declare-fun m!2917099 () Bool)

(assert (=> b!2580788 m!2917099))

(declare-fun m!2917101 () Bool)

(assert (=> b!2580788 m!2917101))

(assert (=> d!730237 d!730825))

(assert (=> d!730237 d!730695))

(assert (=> d!730237 d!729851))

(declare-fun d!730829 () Bool)

(declare-fun lt!907992 () List!29808)

(assert (=> d!730829 (= lt!907992 (list!11219 (xs!12252 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730829 (= lt!907992 (rec!14 (xs!12252 (left!22632 (c!415433 x!464697))) (size!23034 (xs!12252 (left!22632 (c!415433 x!464697)))) Nil!29708))))

(assert (=> d!730829 (= (efficientList!388 (xs!12252 (left!22632 (c!415433 x!464697)))) lt!907992)))

(declare-fun bs!471210 () Bool)

(assert (= bs!471210 d!730829))

(assert (=> bs!471210 m!2914487))

(declare-fun m!2917105 () Bool)

(assert (=> bs!471210 m!2917105))

(assert (=> bs!471210 m!2917105))

(declare-fun m!2917109 () Bool)

(assert (=> bs!471210 m!2917109))

(assert (=> b!2579608 d!730829))

(declare-fun d!730831 () Bool)

(declare-fun e!1628471 () Bool)

(assert (=> d!730831 e!1628471))

(declare-fun res!1085439 () Bool)

(assert (=> d!730831 (=> (not res!1085439) (not e!1628471))))

(declare-fun lt!907993 () List!29808)

(assert (=> d!730831 (= res!1085439 (= (content!4091 lt!907993) (set.union (content!4091 (t!211695 lt!907623)) (content!4091 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(declare-fun e!1628470 () List!29808)

(assert (=> d!730831 (= lt!907993 e!1628470)))

(declare-fun c!415988 () Bool)

(assert (=> d!730831 (= c!415988 (is-Nil!29708 (t!211695 lt!907623)))))

(assert (=> d!730831 (= (++!7292 (t!211695 lt!907623) (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))) lt!907993)))

(declare-fun b!2580793 () Bool)

(assert (=> b!2580793 (= e!1628470 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))

(declare-fun b!2580796 () Bool)

(assert (=> b!2580796 (= e!1628471 (or (not (= (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))) Nil!29708)) (= lt!907993 (t!211695 lt!907623))))))

(declare-fun b!2580794 () Bool)

(assert (=> b!2580794 (= e!1628470 (Cons!29708 (h!35128 (t!211695 lt!907623)) (++!7292 (t!211695 (t!211695 lt!907623)) (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697))))))))

(declare-fun b!2580795 () Bool)

(declare-fun res!1085440 () Bool)

(assert (=> b!2580795 (=> (not res!1085440) (not e!1628471))))

(assert (=> b!2580795 (= res!1085440 (= (size!23031 lt!907993) (+ (size!23031 (t!211695 lt!907623)) (size!23031 (++!7292 lt!907622 (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730831 c!415988) b!2580793))

(assert (= (and d!730831 (not c!415988)) b!2580794))

(assert (= (and d!730831 res!1085439) b!2580795))

(assert (= (and b!2580795 res!1085440) b!2580796))

(declare-fun m!2917115 () Bool)

(assert (=> d!730831 m!2917115))

(assert (=> d!730831 m!2915039))

(assert (=> d!730831 m!2914717))

(assert (=> d!730831 m!2915131))

(assert (=> b!2580794 m!2914717))

(declare-fun m!2917117 () Bool)

(assert (=> b!2580794 m!2917117))

(declare-fun m!2917119 () Bool)

(assert (=> b!2580795 m!2917119))

(assert (=> b!2580795 m!2915403))

(assert (=> b!2580795 m!2914717))

(assert (=> b!2580795 m!2915137))

(assert (=> b!2579865 d!730831))

(declare-fun d!730837 () Bool)

(declare-fun lt!907995 () Bool)

(assert (=> d!730837 (= lt!907995 (isEmpty!17080 (list!11217 (left!22632 (c!415433 x!464697)))))))

(assert (=> d!730837 (= lt!907995 (= (size!23033 (left!22632 (c!415433 x!464697))) 0))))

(assert (=> d!730837 (= (isEmpty!17078 (left!22632 (c!415433 x!464697))) lt!907995)))

(declare-fun bs!471212 () Bool)

(assert (= bs!471212 d!730837))

(assert (=> bs!471212 m!2914313))

(assert (=> bs!471212 m!2914313))

(declare-fun m!2917125 () Bool)

(assert (=> bs!471212 m!2917125))

(assert (=> bs!471212 m!2914771))

(assert (=> b!2579658 d!730837))

(declare-fun d!730839 () Bool)

(declare-fun e!1628475 () Bool)

(assert (=> d!730839 e!1628475))

(declare-fun res!1085443 () Bool)

(assert (=> d!730839 (=> (not res!1085443) (not e!1628475))))

(declare-fun lt!907996 () List!29808)

(assert (=> d!730839 (= res!1085443 (= (content!4091 lt!907996) (set.union (content!4091 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (content!4091 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun e!1628474 () List!29808)

(assert (=> d!730839 (= lt!907996 e!1628474)))

(declare-fun c!415990 () Bool)

(assert (=> d!730839 (= c!415990 (is-Nil!29708 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (=> d!730839 (= (++!7292 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))) lt!907996)))

(declare-fun b!2580801 () Bool)

(assert (=> b!2580801 (= e!1628474 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2580806 () Bool)

(assert (=> b!2580806 (= e!1628475 (or (not (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) Nil!29708)) (= lt!907996 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun b!2580802 () Bool)

(assert (=> b!2580802 (= e!1628474 (Cons!29708 (h!35128 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (++!7292 (t!211695 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580804 () Bool)

(declare-fun res!1085444 () Bool)

(assert (=> b!2580804 (=> (not res!1085444) (not e!1628475))))

(assert (=> b!2580804 (= res!1085444 (= (size!23031 lt!907996) (+ (size!23031 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (size!23031 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (= (and d!730839 c!415990) b!2580801))

(assert (= (and d!730839 (not c!415990)) b!2580802))

(assert (= (and d!730839 res!1085443) b!2580804))

(assert (= (and b!2580804 res!1085444) b!2580806))

(declare-fun m!2917131 () Bool)

(assert (=> d!730839 m!2917131))

(assert (=> d!730839 m!2915571))

(assert (=> d!730839 m!2914307))

(assert (=> d!730839 m!2914501))

(assert (=> b!2580802 m!2914307))

(declare-fun m!2917135 () Bool)

(assert (=> b!2580802 m!2917135))

(declare-fun m!2917137 () Bool)

(assert (=> b!2580804 m!2917137))

(assert (=> b!2580804 m!2916627))

(assert (=> b!2580804 m!2914307))

(assert (=> b!2580804 m!2914509))

(assert (=> b!2579902 d!730839))

(declare-fun d!730847 () Bool)

(declare-fun c!415993 () Bool)

(assert (=> d!730847 (= c!415993 (is-Nil!29708 lt!907767))))

(declare-fun e!1628479 () (Set (_ BitVec 16)))

(assert (=> d!730847 (= (content!4091 lt!907767) e!1628479)))

(declare-fun b!2580811 () Bool)

(assert (=> b!2580811 (= e!1628479 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580812 () Bool)

(assert (=> b!2580812 (= e!1628479 (set.union (set.insert (h!35128 lt!907767) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907767))))))

(assert (= (and d!730847 c!415993) b!2580811))

(assert (= (and d!730847 (not c!415993)) b!2580812))

(declare-fun m!2917143 () Bool)

(assert (=> b!2580812 m!2917143))

(declare-fun m!2917145 () Bool)

(assert (=> b!2580812 m!2917145))

(assert (=> d!730265 d!730847))

(assert (=> d!730265 d!730479))

(assert (=> d!730265 d!729851))

(declare-fun d!730851 () Bool)

(declare-fun c!415995 () Bool)

(assert (=> d!730851 (= c!415995 (is-Nil!29708 (t!211695 (t!211695 lt!907631))))))

(declare-fun e!1628481 () (Set (_ BitVec 16)))

(assert (=> d!730851 (= (content!4091 (t!211695 (t!211695 lt!907631))) e!1628481)))

(declare-fun b!2580815 () Bool)

(assert (=> b!2580815 (= e!1628481 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580816 () Bool)

(assert (=> b!2580816 (= e!1628481 (set.union (set.insert (h!35128 (t!211695 (t!211695 lt!907631))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 (t!211695 lt!907631))))))))

(assert (= (and d!730851 c!415995) b!2580815))

(assert (= (and d!730851 (not c!415995)) b!2580816))

(declare-fun m!2917149 () Bool)

(assert (=> b!2580816 m!2917149))

(declare-fun m!2917153 () Bool)

(assert (=> b!2580816 m!2917153))

(assert (=> b!2579829 d!730851))

(declare-fun d!730853 () Bool)

(declare-fun lt!907998 () Int)

(assert (=> d!730853 (>= lt!907998 0)))

(declare-fun e!1628482 () Int)

(assert (=> d!730853 (= lt!907998 e!1628482)))

(declare-fun c!415996 () Bool)

(assert (=> d!730853 (= c!415996 (is-Nil!29708 lt!907730))))

(assert (=> d!730853 (= (size!23031 lt!907730) lt!907998)))

(declare-fun b!2580817 () Bool)

(assert (=> b!2580817 (= e!1628482 0)))

(declare-fun b!2580818 () Bool)

(assert (=> b!2580818 (= e!1628482 (+ 1 (size!23031 (t!211695 lt!907730))))))

(assert (= (and d!730853 c!415996) b!2580817))

(assert (= (and d!730853 (not c!415996)) b!2580818))

(declare-fun m!2917155 () Bool)

(assert (=> b!2580818 m!2917155))

(assert (=> b!2579874 d!730853))

(assert (=> b!2579874 d!730081))

(declare-fun d!730857 () Bool)

(declare-fun lt!907999 () Int)

(assert (=> d!730857 (>= lt!907999 0)))

(declare-fun e!1628484 () Int)

(assert (=> d!730857 (= lt!907999 e!1628484)))

(declare-fun c!415998 () Bool)

(assert (=> d!730857 (= c!415998 (is-Nil!29708 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))

(assert (=> d!730857 (= (size!23031 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))) lt!907999)))

(declare-fun b!2580821 () Bool)

(assert (=> b!2580821 (= e!1628484 0)))

(declare-fun b!2580822 () Bool)

(assert (=> b!2580822 (= e!1628484 (+ 1 (size!23031 (t!211695 (efficientList!387 (right!22962 (c!415433 x!464697)) (efficientList$default$2!135 (c!415433 x!464697)))))))))

(assert (= (and d!730857 c!415998) b!2580821))

(assert (= (and d!730857 (not c!415998)) b!2580822))

(declare-fun m!2917161 () Bool)

(assert (=> b!2580822 m!2917161))

(assert (=> b!2579874 d!730857))

(declare-fun d!730859 () Bool)

(declare-fun lt!908000 () Int)

(assert (=> d!730859 (>= lt!908000 0)))

(declare-fun e!1628485 () Int)

(assert (=> d!730859 (= lt!908000 e!1628485)))

(declare-fun c!415999 () Bool)

(assert (=> d!730859 (= c!415999 (is-Nil!29708 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))))))

(assert (=> d!730859 (= (size!23031 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))) lt!908000)))

(declare-fun b!2580823 () Bool)

(assert (=> b!2580823 (= e!1628485 0)))

(declare-fun b!2580824 () Bool)

(assert (=> b!2580824 (= e!1628485 (+ 1 (size!23031 (t!211695 (t!211695 (list!11217 (right!22962 (c!415433 x!464697))))))))))

(assert (= (and d!730859 c!415999) b!2580823))

(assert (= (and d!730859 (not c!415999)) b!2580824))

(declare-fun m!2917163 () Bool)

(assert (=> b!2580824 m!2917163))

(assert (=> b!2579849 d!730859))

(declare-fun d!730861 () Bool)

(assert (=> d!730861 (= (seqFromList!3146 (value!145550 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (fromListB!1421 (value!145550 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun bs!471213 () Bool)

(assert (= bs!471213 d!730861))

(declare-fun m!2917169 () Bool)

(assert (=> bs!471213 m!2917169))

(assert (=> b!2579682 d!730861))

(declare-fun d!730863 () Bool)

(declare-fun e!1628491 () Bool)

(assert (=> d!730863 e!1628491))

(declare-fun res!1085447 () Bool)

(assert (=> d!730863 (=> (not res!1085447) (not e!1628491))))

(declare-fun lt!908001 () List!29808)

(assert (=> d!730863 (= res!1085447 (= (content!4091 lt!908001) (set.union (content!4091 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))) (content!4091 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(declare-fun e!1628490 () List!29808)

(assert (=> d!730863 (= lt!908001 e!1628490)))

(declare-fun c!416000 () Bool)

(assert (=> d!730863 (= c!416000 (is-Nil!29708 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))))))

(assert (=> d!730863 (= (++!7292 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))) (list!11217 (right!22962 (c!415433 x!464697)))) lt!908001)))

(declare-fun b!2580829 () Bool)

(assert (=> b!2580829 (= e!1628490 (list!11217 (right!22962 (c!415433 x!464697))))))

(declare-fun b!2580832 () Bool)

(assert (=> b!2580832 (= e!1628491 (or (not (= (list!11217 (right!22962 (c!415433 x!464697))) Nil!29708)) (= lt!908001 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697))))))))))

(declare-fun b!2580830 () Bool)

(assert (=> b!2580830 (= e!1628490 (Cons!29708 (h!35128 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))) (++!7292 (t!211695 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))) (list!11217 (right!22962 (c!415433 x!464697))))))))

(declare-fun b!2580831 () Bool)

(declare-fun res!1085448 () Bool)

(assert (=> b!2580831 (=> (not res!1085448) (not e!1628491))))

(assert (=> b!2580831 (= res!1085448 (= (size!23031 lt!908001) (+ (size!23031 (t!211695 (t!211695 (list!11217 (left!22632 (c!415433 x!464697)))))) (size!23031 (list!11217 (right!22962 (c!415433 x!464697)))))))))

(assert (= (and d!730863 c!416000) b!2580829))

(assert (= (and d!730863 (not c!416000)) b!2580830))

(assert (= (and d!730863 res!1085447) b!2580831))

(assert (= (and b!2580831 res!1085448) b!2580832))

(declare-fun m!2917179 () Bool)

(assert (=> d!730863 m!2917179))

(assert (=> d!730863 m!2915497))

(assert (=> d!730863 m!2914315))

(assert (=> d!730863 m!2914471))

(assert (=> b!2580830 m!2914315))

(declare-fun m!2917187 () Bool)

(assert (=> b!2580830 m!2917187))

(declare-fun m!2917189 () Bool)

(assert (=> b!2580831 m!2917189))

(assert (=> b!2580831 m!2916903))

(assert (=> b!2580831 m!2914315))

(assert (=> b!2580831 m!2914479))

(assert (=> b!2579889 d!730863))

(assert (=> b!2579847 d!730769))

(declare-fun d!730865 () Bool)

(declare-fun c!416001 () Bool)

(assert (=> d!730865 (= c!416001 (is-Nil!29708 lt!907763))))

(declare-fun e!1628496 () (Set (_ BitVec 16)))

(assert (=> d!730865 (= (content!4091 lt!907763) e!1628496)))

(declare-fun b!2580837 () Bool)

(assert (=> b!2580837 (= e!1628496 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580838 () Bool)

(assert (=> b!2580838 (= e!1628496 (set.union (set.insert (h!35128 lt!907763) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907763))))))

(assert (= (and d!730865 c!416001) b!2580837))

(assert (= (and d!730865 (not c!416001)) b!2580838))

(declare-fun m!2917197 () Bool)

(assert (=> b!2580838 m!2917197))

(declare-fun m!2917199 () Bool)

(assert (=> b!2580838 m!2917199))

(assert (=> d!730243 d!730865))

(assert (=> d!730243 d!730563))

(assert (=> d!730243 d!730051))

(assert (=> b!2579657 d!730549))

(assert (=> b!2579657 d!730555))

(declare-fun b!2580843 () Bool)

(declare-fun e!1628500 () Bool)

(declare-fun e!1628502 () Bool)

(assert (=> b!2580843 (= e!1628500 e!1628502)))

(declare-fun res!1085453 () Bool)

(assert (=> b!2580843 (=> (not res!1085453) (not e!1628502))))

(assert (=> b!2580843 (= res!1085453 (<= (- 1) (- (height!1345 (left!22632 res!1085169)) (height!1345 (right!22962 res!1085169)))))))

(declare-fun b!2580844 () Bool)

(assert (=> b!2580844 (= e!1628502 (not (isEmpty!17078 (right!22962 res!1085169))))))

(declare-fun b!2580845 () Bool)

(declare-fun res!1085449 () Bool)

(assert (=> b!2580845 (=> (not res!1085449) (not e!1628502))))

(assert (=> b!2580845 (= res!1085449 (isBalanced!2825 (right!22962 res!1085169)))))

(declare-fun b!2580846 () Bool)

(declare-fun res!1085451 () Bool)

(assert (=> b!2580846 (=> (not res!1085451) (not e!1628502))))

(assert (=> b!2580846 (= res!1085451 (<= (- (height!1345 (left!22632 res!1085169)) (height!1345 (right!22962 res!1085169))) 1))))

(declare-fun b!2580847 () Bool)

(declare-fun res!1085452 () Bool)

(assert (=> b!2580847 (=> (not res!1085452) (not e!1628502))))

(assert (=> b!2580847 (= res!1085452 (not (isEmpty!17078 (left!22632 res!1085169))))))

(declare-fun d!730867 () Bool)

(declare-fun res!1085454 () Bool)

(assert (=> d!730867 (=> res!1085454 e!1628500)))

(assert (=> d!730867 (= res!1085454 (not (is-Node!9268 res!1085169)))))

(assert (=> d!730867 (= (isBalanced!2825 res!1085169) e!1628500)))

(declare-fun b!2580848 () Bool)

(declare-fun res!1085450 () Bool)

(assert (=> b!2580848 (=> (not res!1085450) (not e!1628502))))

(assert (=> b!2580848 (= res!1085450 (isBalanced!2825 (left!22632 res!1085169)))))

(assert (= (and d!730867 (not res!1085454)) b!2580843))

(assert (= (and b!2580843 res!1085453) b!2580846))

(assert (= (and b!2580846 res!1085451) b!2580848))

(assert (= (and b!2580848 res!1085450) b!2580845))

(assert (= (and b!2580845 res!1085449) b!2580847))

(assert (= (and b!2580847 res!1085452) b!2580844))

(declare-fun m!2917213 () Bool)

(assert (=> b!2580846 m!2917213))

(declare-fun m!2917215 () Bool)

(assert (=> b!2580846 m!2917215))

(declare-fun m!2917217 () Bool)

(assert (=> b!2580844 m!2917217))

(assert (=> b!2580843 m!2917213))

(assert (=> b!2580843 m!2917215))

(declare-fun m!2917219 () Bool)

(assert (=> b!2580848 m!2917219))

(declare-fun m!2917221 () Bool)

(assert (=> b!2580847 m!2917221))

(declare-fun m!2917223 () Bool)

(assert (=> b!2580845 m!2917223))

(assert (=> b!2579863 d!730867))

(declare-fun d!730869 () Bool)

(declare-fun c!416002 () Bool)

(assert (=> d!730869 (= c!416002 (is-Nil!29708 (t!211695 lt!907678)))))

(declare-fun e!1628503 () (Set (_ BitVec 16)))

(assert (=> d!730869 (= (content!4091 (t!211695 lt!907678)) e!1628503)))

(declare-fun b!2580849 () Bool)

(assert (=> b!2580849 (= e!1628503 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580850 () Bool)

(assert (=> b!2580850 (= e!1628503 (set.union (set.insert (h!35128 (t!211695 lt!907678)) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (t!211695 lt!907678)))))))

(assert (= (and d!730869 c!416002) b!2580849))

(assert (= (and d!730869 (not c!416002)) b!2580850))

(declare-fun m!2917225 () Bool)

(assert (=> b!2580850 m!2917225))

(declare-fun m!2917227 () Bool)

(assert (=> b!2580850 m!2917227))

(assert (=> b!2579839 d!730869))

(declare-fun tp!819423 () Bool)

(declare-fun tp!819424 () Bool)

(declare-fun b!2580851 () Bool)

(declare-fun e!1628504 () Bool)

(assert (=> b!2580851 (= e!1628504 (and (inv!40081 (left!22632 (left!22632 (left!22632 (c!415433 x!464697))))) tp!819423 (inv!40081 (right!22962 (left!22632 (left!22632 (c!415433 x!464697))))) tp!819424))))

(declare-fun b!2580852 () Bool)

(assert (=> b!2580852 (= e!1628504 (inv!40087 (xs!12252 (left!22632 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2579696 (= tp!819383 (and (inv!40081 (left!22632 (left!22632 (c!415433 x!464697)))) e!1628504))))

(assert (= (and b!2579696 (is-Node!9268 (left!22632 (left!22632 (c!415433 x!464697))))) b!2580851))

(assert (= (and b!2579696 (is-Leaf!14139 (left!22632 (left!22632 (c!415433 x!464697))))) b!2580852))

(declare-fun m!2917229 () Bool)

(assert (=> b!2580851 m!2917229))

(declare-fun m!2917231 () Bool)

(assert (=> b!2580851 m!2917231))

(declare-fun m!2917233 () Bool)

(assert (=> b!2580852 m!2917233))

(assert (=> b!2579696 m!2914831))

(declare-fun e!1628506 () Bool)

(declare-fun b!2580853 () Bool)

(declare-fun tp!819426 () Bool)

(declare-fun tp!819425 () Bool)

(assert (=> b!2580853 (= e!1628506 (and (inv!40081 (left!22632 (right!22962 (left!22632 (c!415433 x!464697))))) tp!819425 (inv!40081 (right!22962 (right!22962 (left!22632 (c!415433 x!464697))))) tp!819426))))

(declare-fun b!2580854 () Bool)

(assert (=> b!2580854 (= e!1628506 (inv!40087 (xs!12252 (right!22962 (left!22632 (c!415433 x!464697))))))))

(assert (=> b!2579696 (= tp!819384 (and (inv!40081 (right!22962 (left!22632 (c!415433 x!464697)))) e!1628506))))

(assert (= (and b!2579696 (is-Node!9268 (right!22962 (left!22632 (c!415433 x!464697))))) b!2580853))

(assert (= (and b!2579696 (is-Leaf!14139 (right!22962 (left!22632 (c!415433 x!464697))))) b!2580854))

(declare-fun m!2917235 () Bool)

(assert (=> b!2580853 m!2917235))

(declare-fun m!2917237 () Bool)

(assert (=> b!2580853 m!2917237))

(declare-fun m!2917239 () Bool)

(assert (=> b!2580854 m!2917239))

(assert (=> b!2579696 m!2914833))

(declare-fun b!2580855 () Bool)

(declare-fun tp!819428 () Bool)

(declare-fun e!1628508 () Bool)

(declare-fun tp!819427 () Bool)

(assert (=> b!2580855 (= e!1628508 (and (inv!40081 (left!22632 (left!22632 res!1085169))) tp!819427 (inv!40081 (right!22962 (left!22632 res!1085169))) tp!819428))))

(declare-fun b!2580856 () Bool)

(assert (=> b!2580856 (= e!1628508 (inv!40087 (xs!12252 (left!22632 res!1085169))))))

(assert (=> b!2579861 (= tp!819396 (and (inv!40081 (left!22632 res!1085169)) e!1628508))))

(assert (= (and b!2579861 (is-Node!9268 (left!22632 res!1085169))) b!2580855))

(assert (= (and b!2579861 (is-Leaf!14139 (left!22632 res!1085169))) b!2580856))

(declare-fun m!2917241 () Bool)

(assert (=> b!2580855 m!2917241))

(declare-fun m!2917243 () Bool)

(assert (=> b!2580855 m!2917243))

(declare-fun m!2917245 () Bool)

(assert (=> b!2580856 m!2917245))

(assert (=> b!2579861 m!2915117))

(declare-fun tp!819430 () Bool)

(declare-fun b!2580857 () Bool)

(declare-fun tp!819429 () Bool)

(declare-fun e!1628510 () Bool)

(assert (=> b!2580857 (= e!1628510 (and (inv!40081 (left!22632 (right!22962 res!1085169))) tp!819429 (inv!40081 (right!22962 (right!22962 res!1085169))) tp!819430))))

(declare-fun b!2580858 () Bool)

(assert (=> b!2580858 (= e!1628510 (inv!40087 (xs!12252 (right!22962 res!1085169))))))

(assert (=> b!2579861 (= tp!819395 (and (inv!40081 (right!22962 res!1085169)) e!1628510))))

(assert (= (and b!2579861 (is-Node!9268 (right!22962 res!1085169))) b!2580857))

(assert (= (and b!2579861 (is-Leaf!14139 (right!22962 res!1085169))) b!2580858))

(declare-fun m!2917247 () Bool)

(assert (=> b!2580857 m!2917247))

(declare-fun m!2917249 () Bool)

(assert (=> b!2580857 m!2917249))

(declare-fun m!2917251 () Bool)

(assert (=> b!2580858 m!2917251))

(assert (=> b!2579861 m!2915119))

(declare-fun b!2580859 () Bool)

(declare-fun tp!819432 () Bool)

(declare-fun e!1628512 () Bool)

(declare-fun tp!819431 () Bool)

(assert (=> b!2580859 (= e!1628512 (and (inv!40081 (left!22632 (left!22632 (right!22962 (c!415433 x!464697))))) tp!819431 (inv!40081 (right!22962 (left!22632 (right!22962 (c!415433 x!464697))))) tp!819432))))

(declare-fun b!2580860 () Bool)

(assert (=> b!2580860 (= e!1628512 (inv!40087 (xs!12252 (left!22632 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2579698 (= tp!819385 (and (inv!40081 (left!22632 (right!22962 (c!415433 x!464697)))) e!1628512))))

(assert (= (and b!2579698 (is-Node!9268 (left!22632 (right!22962 (c!415433 x!464697))))) b!2580859))

(assert (= (and b!2579698 (is-Leaf!14139 (left!22632 (right!22962 (c!415433 x!464697))))) b!2580860))

(declare-fun m!2917253 () Bool)

(assert (=> b!2580859 m!2917253))

(declare-fun m!2917255 () Bool)

(assert (=> b!2580859 m!2917255))

(declare-fun m!2917257 () Bool)

(assert (=> b!2580860 m!2917257))

(assert (=> b!2579698 m!2914837))

(declare-fun b!2580861 () Bool)

(declare-fun tp!819433 () Bool)

(declare-fun e!1628514 () Bool)

(declare-fun tp!819434 () Bool)

(assert (=> b!2580861 (= e!1628514 (and (inv!40081 (left!22632 (right!22962 (right!22962 (c!415433 x!464697))))) tp!819433 (inv!40081 (right!22962 (right!22962 (right!22962 (c!415433 x!464697))))) tp!819434))))

(declare-fun b!2580862 () Bool)

(assert (=> b!2580862 (= e!1628514 (inv!40087 (xs!12252 (right!22962 (right!22962 (c!415433 x!464697))))))))

(assert (=> b!2579698 (= tp!819386 (and (inv!40081 (right!22962 (right!22962 (c!415433 x!464697)))) e!1628514))))

(assert (= (and b!2579698 (is-Node!9268 (right!22962 (right!22962 (c!415433 x!464697))))) b!2580861))

(assert (= (and b!2579698 (is-Leaf!14139 (right!22962 (right!22962 (c!415433 x!464697))))) b!2580862))

(declare-fun m!2917259 () Bool)

(assert (=> b!2580861 m!2917259))

(declare-fun m!2917261 () Bool)

(assert (=> b!2580861 m!2917261))

(declare-fun m!2917263 () Bool)

(assert (=> b!2580862 m!2917263))

(assert (=> b!2579698 m!2914839))

(push 1)

(assert (not b!2580083))

(assert (not b!2580321))

(assert (not b!2580788))

(assert (not b!2580795))

(assert (not b!2580343))

(assert (not d!730709))

(assert (not bm!166730))

(assert (not b!2580106))

(assert (not b!2580100))

(assert (not b!2580824))

(assert (not b!2580668))

(assert (not b!2580146))

(assert (not b!2580055))

(assert (not b!2580112))

(assert (not d!730451))

(assert (not b!2580860))

(assert (not b!2580776))

(assert (not d!730721))

(assert (not b!2580488))

(assert (not b!2580620))

(assert (not b!2580850))

(assert (not d!730837))

(assert (not b!2579896))

(assert (not b!2580060))

(assert (not b!2580844))

(assert (not b!2580858))

(assert (not d!730073))

(assert (not b!2580144))

(assert (not b!2580481))

(assert (not b!2580031))

(assert (not d!730831))

(assert (not b!2580623))

(assert (not d!730557))

(assert (not b!2580319))

(assert (not b!2580460))

(assert (not b!2580843))

(assert (not b!2580114))

(assert (not b!2580848))

(assert (not b!2580499))

(assert (not b!2579899))

(assert (not b!2580071))

(assert (not b!2580606))

(assert (not b!2580525))

(assert (not b!2580334))

(assert (not b!2580706))

(assert (not b!2580469))

(assert (not b!2580855))

(assert (not d!730543))

(assert (not b!2580486))

(assert (not b!2580057))

(assert (not b!2580123))

(assert (not b!2580475))

(assert (not b!2580622))

(assert (not b!2580347))

(assert (not b!2580113))

(assert (not d!730775))

(assert (not b!2580314))

(assert (not b!2580320))

(assert (not b!2580674))

(assert (not b!2580068))

(assert (not b!2580545))

(assert (not b!2580331))

(assert (not d!730723))

(assert (not b!2580138))

(assert (not b!2579878))

(assert (not b!2580010))

(assert (not b!2580022))

(assert (not b!2580492))

(assert (not b!2580126))

(assert (not b!2580152))

(assert (not b!2579698))

(assert (not d!730689))

(assert (not b!2580457))

(assert (not b!2580007))

(assert (not b!2580504))

(assert (not b!2580012))

(assert (not d!730781))

(assert (not b!2580854))

(assert (not b!2580424))

(assert (not b!2580672))

(assert (not b!2580033))

(assert (not d!730675))

(assert (not b!2580076))

(assert (not b!2580443))

(assert (not b!2580748))

(assert (not b!2579854))

(assert (not b!2580009))

(assert (not b!2580087))

(assert (not d!730839))

(assert (not b!2580091))

(assert (not b!2580647))

(assert (not b!2580804))

(assert (not b!2580011))

(assert (not d!730641))

(assert (not b!2580685))

(assert (not b!2580524))

(assert (not b!2580015))

(assert (not b!2580675))

(assert (not b!2580102))

(assert (not d!730621))

(assert (not b!2580350))

(assert (not b!2580677))

(assert (not b!2580064))

(assert (not d!730443))

(assert (not b!2580642))

(assert (not b!2580802))

(assert (not d!730829))

(assert (not b!2580128))

(assert (not b!2580120))

(assert (not d!730085))

(assert (not b!2580325))

(assert (not d!730789))

(assert (not b!2580107))

(assert (not b!2580332))

(assert (not b!2580130))

(assert (not b!2580092))

(assert (not b!2580658))

(assert (not b!2580852))

(assert (not b!2580716))

(assert (not b!2580657))

(assert (not b!2580847))

(assert (not b!2580082))

(assert (not b!2580794))

(assert (not b!2580311))

(assert (not b!2580853))

(assert (not b!2580069))

(assert (not b!2580002))

(assert (not b!2580684))

(assert (not b!2580150))

(assert (not b!2580445))

(assert (not b!2580556))

(assert (not b!2580490))

(assert (not b!2580348))

(assert (not b!2580141))

(assert (not d!730559))

(assert (not b!2580502))

(assert (not b!2580812))

(assert (not d!730861))

(assert (not d!730477))

(assert (not b!2580042))

(assert (not d!730797))

(assert (not d!730863))

(assert (not b!2580546))

(assert (not b!2580043))

(assert (not b!2580591))

(assert (not d!730471))

(assert (not b!2580000))

(assert (not b!2580330))

(assert (not b!2580702))

(assert (not b!2580315))

(assert (not b!2580831))

(assert (not b!2580856))

(assert (not b!2580017))

(assert (not b!2580142))

(assert (not b!2580137))

(assert (not b!2580859))

(assert (not b!2580737))

(assert (not b!2580026))

(assert (not b!2580602))

(assert (not d!730445))

(assert (not d!730747))

(assert (not d!730685))

(assert (not b!2580323))

(assert (not b!2580564))

(assert (not b!2580501))

(assert (not b!2580857))

(assert (not b!2580498))

(assert (not b!2580471))

(assert (not b!2580452))

(assert (not b!2580634))

(assert (not b!2580846))

(assert (not b!2580041))

(assert (not b!2580132))

(assert (not b!2580621))

(assert (not b!2580608))

(assert (not bm!166738))

(assert (not b!2580641))

(assert (not b!2580736))

(assert (not b!2580630))

(assert (not b!2580830))

(assert (not b!2580335))

(assert (not b!2579879))

(assert (not b!2580052))

(assert (not b!2580030))

(assert (not b!2580038))

(assert (not b!2580036))

(assert (not d!730465))

(assert (not b!2580013))

(assert (not b!2580569))

(assert (not b!2580148))

(assert (not d!730091))

(assert (not b!2580426))

(assert (not b!2580111))

(assert (not b!2580575))

(assert (not b!2580339))

(assert (not b!2580845))

(assert (not bm!166734))

(assert (not b!2580777))

(assert (not b!2580121))

(assert (not b!2580008))

(assert (not b!2580838))

(assert (not b!2580537))

(assert (not b!2580503))

(assert (not b!2580074))

(assert (not b!2580040))

(assert (not b!2580555))

(assert (not bm!166735))

(assert (not b!2580098))

(assert (not b!2580039))

(assert (not d!730819))

(assert (not b!2580342))

(assert (not b!2580310))

(assert (not b!2579881))

(assert (not b!2580619))

(assert (not b!2579877))

(assert (not d!730633))

(assert (not b!2580048))

(assert (not d!730807))

(assert (not b!2580359))

(assert (not b!2580045))

(assert (not d!730727))

(assert (not b!2580341))

(assert (not b!2580353))

(assert (not b!2580351))

(assert (not b!2580536))

(assert (not b!2580626))

(assert (not b!2580637))

(assert (not b!2580516))

(assert (not b!2580507))

(assert (not b!2580585))

(assert (not b!2580500))

(assert (not b!2580636))

(assert (not b!2580356))

(assert (not b!2580035))

(assert (not b!2580862))

(assert (not b!2580115))

(assert (not b!2580766))

(assert (not b!2580454))

(assert (not bm!166739))

(assert (not b!2580628))

(assert (not b!2580019))

(assert (not b!2580633))

(assert (not d!730607))

(assert (not d!730613))

(assert (not b!2579850))

(assert (not b!2580073))

(assert (not b!2580624))

(assert (not b!2579880))

(assert (not b!2579853))

(assert (not b!2579696))

(assert (not b!2580747))

(assert (not b!2580818))

(assert (not b!2580678))

(assert (not d!730481))

(assert (not b!2580051))

(assert (not b!2580065))

(assert (not b!2580646))

(assert (not b!2580704))

(assert (not b!2580655))

(assert (not b!2580096))

(assert (not b!2580618))

(assert (not b!2579998))

(assert (not b!2580714))

(assert (not b!2580670))

(assert (not d!730691))

(assert (not b!2579861))

(assert (not b!2580581))

(assert (not b!2580609))

(assert (not b!2580080))

(assert (not d!730459))

(assert (not b!2580861))

(assert (not b!2580117))

(assert (not b!2580133))

(assert (not b!2580059))

(assert (not b!2580661))

(assert (not d!730717))

(assert (not b!2580333))

(assert (not b!2580088))

(assert (not b!2580517))

(assert (not d!730093))

(assert (not b!2580021))

(assert (not b!2579900))

(assert (not d!730601))

(assert (not b!2580822))

(assert (not b!2579895))

(assert (not b!2580047))

(assert (not b!2580456))

(assert (not b!2580765))

(assert (not b!2580851))

(assert (not b!2580717))

(assert (not b!2580004))

(assert (not b!2580673))

(assert (not d!730455))

(assert (not b!2580340))

(assert (not b!2580006))

(assert (not b!2580816))

(assert (not d!730533))

(assert (not b!2580027))

(assert (not b!2580355))

(assert (not d!730121))

(assert (not d!730629))

(assert (not b!2580094))

(assert (not b!2580676))

(assert (not b!2580639))

(assert (not b!2580345))

(assert (not b!2580127))

(assert (not b!2580336))

(assert (not b!2580597))

(assert (not b!2580328))

(assert (not b!2580077))

(assert (not b!2580663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730871 () Bool)

(declare-fun e!1628516 () Bool)

(assert (=> d!730871 e!1628516))

(declare-fun res!1085455 () Bool)

(assert (=> d!730871 (=> (not res!1085455) (not e!1628516))))

(declare-fun lt!908002 () BalanceConc!18150)

(assert (=> d!730871 (= res!1085455 (= (list!11215 lt!908002) (Cons!29708 #x005B Nil!29708)))))

(assert (=> d!730871 (= lt!908002 (BalanceConc!18151 (fromList!557 (Cons!29708 #x005B Nil!29708))))))

(assert (=> d!730871 (= (fromListB!1421 (Cons!29708 #x005B Nil!29708)) lt!908002)))

(declare-fun b!2580863 () Bool)

(assert (=> b!2580863 (= e!1628516 (isBalanced!2825 (fromList!557 (Cons!29708 #x005B Nil!29708))))))

(assert (= (and d!730871 res!1085455) b!2580863))

(declare-fun m!2917265 () Bool)

(assert (=> d!730871 m!2917265))

(declare-fun m!2917267 () Bool)

(assert (=> d!730871 m!2917267))

(assert (=> b!2580863 m!2917267))

(assert (=> b!2580863 m!2917267))

(declare-fun m!2917269 () Bool)

(assert (=> b!2580863 m!2917269))

(assert (=> d!730073 d!730871))

(declare-fun b!2580864 () Bool)

(declare-fun e!1628517 () Bool)

(declare-fun e!1628518 () Bool)

(assert (=> b!2580864 (= e!1628517 e!1628518)))

(declare-fun res!1085460 () Bool)

(assert (=> b!2580864 (=> (not res!1085460) (not e!1628518))))

(assert (=> b!2580864 (= res!1085460 (<= (- 1) (- (height!1345 (left!22632 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))) (height!1345 (right!22962 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))))

(declare-fun b!2580865 () Bool)

(assert (=> b!2580865 (= e!1628518 (not (isEmpty!17078 (right!22962 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(declare-fun b!2580866 () Bool)

(declare-fun res!1085456 () Bool)

(assert (=> b!2580866 (=> (not res!1085456) (not e!1628518))))

(assert (=> b!2580866 (= res!1085456 (isBalanced!2825 (right!22962 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(declare-fun b!2580867 () Bool)

(declare-fun res!1085458 () Bool)

(assert (=> b!2580867 (=> (not res!1085458) (not e!1628518))))

(assert (=> b!2580867 (= res!1085458 (<= (- (height!1345 (left!22632 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))) (height!1345 (right!22962 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))) 1))))

(declare-fun b!2580868 () Bool)

(declare-fun res!1085459 () Bool)

(assert (=> b!2580868 (=> (not res!1085459) (not e!1628518))))

(assert (=> b!2580868 (= res!1085459 (not (isEmpty!17078 (left!22632 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(declare-fun d!730873 () Bool)

(declare-fun res!1085461 () Bool)

(assert (=> d!730873 (=> res!1085461 e!1628517)))

(assert (=> d!730873 (= res!1085461 (not (is-Node!9268 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (=> d!730873 (= (isBalanced!2825 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) e!1628517)))

(declare-fun b!2580869 () Bool)

(declare-fun res!1085457 () Bool)

(assert (=> b!2580869 (=> (not res!1085457) (not e!1628518))))

(assert (=> b!2580869 (= res!1085457 (isBalanced!2825 (left!22632 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (= (and d!730873 (not res!1085461)) b!2580864))

(assert (= (and b!2580864 res!1085460) b!2580867))

(assert (= (and b!2580867 res!1085458) b!2580869))

(assert (= (and b!2580869 res!1085457) b!2580866))

(assert (= (and b!2580866 res!1085456) b!2580868))

(assert (= (and b!2580868 res!1085459) b!2580865))

(declare-fun m!2917271 () Bool)

(assert (=> b!2580867 m!2917271))

(declare-fun m!2917273 () Bool)

(assert (=> b!2580867 m!2917273))

(declare-fun m!2917275 () Bool)

(assert (=> b!2580865 m!2917275))

(assert (=> b!2580864 m!2917271))

(assert (=> b!2580864 m!2917273))

(declare-fun m!2917277 () Bool)

(assert (=> b!2580869 m!2917277))

(declare-fun m!2917279 () Bool)

(assert (=> b!2580868 m!2917279))

(declare-fun m!2917281 () Bool)

(assert (=> b!2580866 m!2917281))

(assert (=> b!2579878 d!730873))

(declare-fun d!730875 () Bool)

(declare-fun e!1628520 () Bool)

(assert (=> d!730875 e!1628520))

(declare-fun res!1085462 () Bool)

(assert (=> d!730875 (=> (not res!1085462) (not e!1628520))))

(declare-fun lt!908003 () List!29808)

(assert (=> d!730875 (= res!1085462 (= (content!4091 lt!908003) (set.union (content!4091 (list!11217 (left!22632 lt!907662))) (content!4091 (list!11217 (right!22962 lt!907662))))))))

(declare-fun e!1628519 () List!29808)

(assert (=> d!730875 (= lt!908003 e!1628519)))

(declare-fun c!416003 () Bool)

(assert (=> d!730875 (= c!416003 (is-Nil!29708 (list!11217 (left!22632 lt!907662))))))

(assert (=> d!730875 (= (++!7292 (list!11217 (left!22632 lt!907662)) (list!11217 (right!22962 lt!907662))) lt!908003)))

(declare-fun b!2580870 () Bool)

(assert (=> b!2580870 (= e!1628519 (list!11217 (right!22962 lt!907662)))))

(declare-fun b!2580873 () Bool)

(assert (=> b!2580873 (= e!1628520 (or (not (= (list!11217 (right!22962 lt!907662)) Nil!29708)) (= lt!908003 (list!11217 (left!22632 lt!907662)))))))

(declare-fun b!2580871 () Bool)

(assert (=> b!2580871 (= e!1628519 (Cons!29708 (h!35128 (list!11217 (left!22632 lt!907662))) (++!7292 (t!211695 (list!11217 (left!22632 lt!907662))) (list!11217 (right!22962 lt!907662)))))))

(declare-fun b!2580872 () Bool)

(declare-fun res!1085463 () Bool)

(assert (=> b!2580872 (=> (not res!1085463) (not e!1628520))))

(assert (=> b!2580872 (= res!1085463 (= (size!23031 lt!908003) (+ (size!23031 (list!11217 (left!22632 lt!907662))) (size!23031 (list!11217 (right!22962 lt!907662))))))))

(assert (= (and d!730875 c!416003) b!2580870))

(assert (= (and d!730875 (not c!416003)) b!2580871))

(assert (= (and d!730875 res!1085462) b!2580872))

(assert (= (and b!2580872 res!1085463) b!2580873))

(declare-fun m!2917283 () Bool)

(assert (=> d!730875 m!2917283))

(assert (=> d!730875 m!2915105))

(declare-fun m!2917285 () Bool)

(assert (=> d!730875 m!2917285))

(assert (=> d!730875 m!2915107))

(declare-fun m!2917287 () Bool)

(assert (=> d!730875 m!2917287))

(assert (=> b!2580871 m!2915107))

(declare-fun m!2917289 () Bool)

(assert (=> b!2580871 m!2917289))

(declare-fun m!2917291 () Bool)

(assert (=> b!2580872 m!2917291))

(assert (=> b!2580872 m!2915105))

(declare-fun m!2917293 () Bool)

(assert (=> b!2580872 m!2917293))

(assert (=> b!2580872 m!2915107))

(declare-fun m!2917295 () Bool)

(assert (=> b!2580872 m!2917295))

(assert (=> b!2579854 d!730875))

(declare-fun b!2580877 () Bool)

(declare-fun e!1628522 () List!29808)

(assert (=> b!2580877 (= e!1628522 (++!7292 (list!11217 (left!22632 (left!22632 lt!907662))) (list!11217 (right!22962 (left!22632 lt!907662)))))))

(declare-fun d!730877 () Bool)

(declare-fun c!416004 () Bool)

(assert (=> d!730877 (= c!416004 (is-Empty!9268 (left!22632 lt!907662)))))

(declare-fun e!1628521 () List!29808)

(assert (=> d!730877 (= (list!11217 (left!22632 lt!907662)) e!1628521)))

(declare-fun b!2580876 () Bool)

(assert (=> b!2580876 (= e!1628522 (list!11219 (xs!12252 (left!22632 lt!907662))))))

(declare-fun b!2580875 () Bool)

(assert (=> b!2580875 (= e!1628521 e!1628522)))

(declare-fun c!416005 () Bool)

(assert (=> b!2580875 (= c!416005 (is-Leaf!14139 (left!22632 lt!907662)))))

(declare-fun b!2580874 () Bool)

(assert (=> b!2580874 (= e!1628521 Nil!29708)))

(assert (= (and d!730877 c!416004) b!2580874))

(assert (= (and d!730877 (not c!416004)) b!2580875))

(assert (= (and b!2580875 c!416005) b!2580876))

(assert (= (and b!2580875 (not c!416005)) b!2580877))

(declare-fun m!2917297 () Bool)

(assert (=> b!2580877 m!2917297))

(declare-fun m!2917299 () Bool)

(assert (=> b!2580877 m!2917299))

(assert (=> b!2580877 m!2917297))

(assert (=> b!2580877 m!2917299))

(declare-fun m!2917301 () Bool)

(assert (=> b!2580877 m!2917301))

(declare-fun m!2917303 () Bool)

(assert (=> b!2580876 m!2917303))

(assert (=> b!2579854 d!730877))

(declare-fun b!2580881 () Bool)

(declare-fun e!1628524 () List!29808)

(assert (=> b!2580881 (= e!1628524 (++!7292 (list!11217 (left!22632 (right!22962 lt!907662))) (list!11217 (right!22962 (right!22962 lt!907662)))))))

(declare-fun d!730879 () Bool)

(declare-fun c!416006 () Bool)

(assert (=> d!730879 (= c!416006 (is-Empty!9268 (right!22962 lt!907662)))))

(declare-fun e!1628523 () List!29808)

(assert (=> d!730879 (= (list!11217 (right!22962 lt!907662)) e!1628523)))

(declare-fun b!2580880 () Bool)

(assert (=> b!2580880 (= e!1628524 (list!11219 (xs!12252 (right!22962 lt!907662))))))

(declare-fun b!2580879 () Bool)

(assert (=> b!2580879 (= e!1628523 e!1628524)))

(declare-fun c!416007 () Bool)

(assert (=> b!2580879 (= c!416007 (is-Leaf!14139 (right!22962 lt!907662)))))

(declare-fun b!2580878 () Bool)

(assert (=> b!2580878 (= e!1628523 Nil!29708)))

(assert (= (and d!730879 c!416006) b!2580878))

(assert (= (and d!730879 (not c!416006)) b!2580879))

(assert (= (and b!2580879 c!416007) b!2580880))

(assert (= (and b!2580879 (not c!416007)) b!2580881))

(declare-fun m!2917305 () Bool)

(assert (=> b!2580881 m!2917305))

(declare-fun m!2917307 () Bool)

(assert (=> b!2580881 m!2917307))

(assert (=> b!2580881 m!2917305))

(assert (=> b!2580881 m!2917307))

(declare-fun m!2917309 () Bool)

(assert (=> b!2580881 m!2917309))

(declare-fun m!2917311 () Bool)

(assert (=> b!2580880 m!2917311))

(assert (=> b!2579854 d!730879))

(assert (=> b!2579861 d!730473))

(assert (=> b!2579861 d!730475))

(declare-fun d!730881 () Bool)

(assert (=> d!730881 (= (list!11219 (xs!12252 lt!907662)) (innerList!9328 (xs!12252 lt!907662)))))

(assert (=> b!2579853 d!730881))

(declare-fun d!730883 () Bool)

(declare-fun c!416008 () Bool)

(assert (=> d!730883 (= c!416008 (is-Nil!29708 lt!907806))))

(declare-fun e!1628525 () (Set (_ BitVec 16)))

(assert (=> d!730883 (= (content!4091 lt!907806) e!1628525)))

(declare-fun b!2580882 () Bool)

(assert (=> b!2580882 (= e!1628525 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580883 () Bool)

(assert (=> b!2580883 (= e!1628525 (set.union (set.insert (h!35128 lt!907806) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 lt!907806))))))

(assert (= (and d!730883 c!416008) b!2580882))

(assert (= (and d!730883 (not c!416008)) b!2580883))

(declare-fun m!2917313 () Bool)

(assert (=> b!2580883 m!2917313))

(declare-fun m!2917315 () Bool)

(assert (=> b!2580883 m!2917315))

(assert (=> d!730443 d!730883))

(declare-fun d!730885 () Bool)

(declare-fun c!416009 () Bool)

(assert (=> d!730885 (= c!416009 (is-Nil!29708 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun e!1628526 () (Set (_ BitVec 16)))

(assert (=> d!730885 (= (content!4091 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) e!1628526)))

(declare-fun b!2580884 () Bool)

(assert (=> b!2580884 (= e!1628526 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580885 () Bool)

(assert (=> b!2580885 (= e!1628526 (set.union (set.insert (h!35128 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (list!11217 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (= (and d!730885 c!416009) b!2580884))

(assert (= (and d!730885 (not c!416009)) b!2580885))

(declare-fun m!2917317 () Bool)

(assert (=> b!2580885 m!2917317))

(declare-fun m!2917319 () Bool)

(assert (=> b!2580885 m!2917319))

(assert (=> d!730443 d!730885))

(declare-fun d!730887 () Bool)

(declare-fun c!416010 () Bool)

(assert (=> d!730887 (= c!416010 (is-Nil!29708 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun e!1628527 () (Set (_ BitVec 16)))

(assert (=> d!730887 (= (content!4091 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) e!1628527)))

(declare-fun b!2580886 () Bool)

(assert (=> b!2580886 (= e!1628527 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!2580887 () Bool)

(assert (=> b!2580887 (= e!1628527 (set.union (set.insert (h!35128 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))) (as set.empty (Set (_ BitVec 16)))) (content!4091 (t!211695 (efficientList$default$2!135 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (= (and d!730887 c!416010) b!2580886))

(assert (= (and d!730887 (not c!416010)) b!2580887))

(declare-fun m!2917321 () Bool)

(assert (=> b!2580887 m!2917321))

(declare-fun m!2917323 () Bool)

(assert (=> b!2580887 m!2917323))

(assert (=> d!730443 d!730887))

(declare-fun d!730889 () Bool)

(declare-fun lt!908004 () Bool)

(assert (=> d!730889 (= lt!908004 (isEmpty!17080 (list!11217 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (=> d!730889 (= lt!908004 (= (size!23033 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 0))))

(assert (=> d!730889 (= (isEmpty!17078 (right!22962 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) lt!908004)))

(declare-fun bs!471214 () Bool)

(assert (= bs!471214 d!730889))

(declare-fun m!2917325 () Bool)

(assert (=> bs!471214 m!2917325))

(assert (=> bs!471214 m!2917325))

(declare-fun m!2917327 () Bool)

(assert (=> bs!471214 m!2917327))

(declare-fun m!2917329 () Bool)

(assert (=> bs!471214 m!2917329))

(assert (=> b!2579877 d!730889))

(declare-fun d!730891 () Bool)

(declare-fun e!1628528 () Bool)

(assert (=> d!730891 e!1628528))

(declare-fun res!1085464 () Bool)

(assert (=> d!730891 (=> (not res!1085464) (not e!1628528))))

(declare-fun lt!908005 () BalanceConc!18150)

(assert (=> d!730891 (= res!1085464 (= (list!11215 lt!908005) (Cons!29708 #x007D Nil!29708)))))

(assert (=> d!730891 (= lt!908005 (BalanceConc!18151 (fromList!557 (Cons!29708 #x007D Nil!29708))))))

(assert (=> d!730891 (= (fromListB!1421 (Cons!29708 #x007D Nil!29708)) lt!908005)))

(declare-fun b!2580888 () Bool)

(assert (=> b!2580888 (= e!1628528 (isBalanced!2825 (fromList!557 (Cons!29708 #x007D Nil!29708))))))

(assert (= (and d!730891 res!1085464) b!2580888))

(declare-fun m!2917331 () Bool)

(assert (=> d!730891 m!2917331))

(declare-fun m!2917333 () Bool)

(assert (=> d!730891 m!2917333))

(assert (=> b!2580888 m!2917333))

(assert (=> b!2580888 m!2917333))

(declare-fun m!2917335 () Bool)

(assert (=> b!2580888 m!2917335))

(assert (=> d!730091 d!730891))

(declare-fun d!730893 () Bool)

(declare-fun e!1628529 () Bool)

(assert (=> d!730893 e!1628529))

(declare-fun res!1085465 () Bool)

(assert (=> d!730893 (=> (not res!1085465) (not e!1628529))))

(declare-fun lt!908006 () BalanceConc!18150)

(assert (=> d!730893 (= res!1085465 (= (list!11215 lt!908006) (Cons!29708 #x005D Nil!29708)))))

(assert (=> d!730893 (= lt!908006 (BalanceConc!18151 (fromList!557 (Cons!29708 #x005D Nil!29708))))))

(assert (=> d!730893 (= (fromListB!1421 (Cons!29708 #x005D Nil!29708)) lt!908006)))

(declare-fun b!2580889 () Bool)

(assert (=> b!2580889 (= e!1628529 (isBalanced!2825 (fromList!557 (Cons!29708 #x005D Nil!29708))))))

(assert (= (and d!730893 res!1085465) b!2580889))

(declare-fun m!2917337 () Bool)

(assert (=> d!730893 m!2917337))

(declare-fun m!2917339 () Bool)

(assert (=> d!730893 m!2917339))

(assert (=> b!2580889 m!2917339))

(assert (=> b!2580889 m!2917339))

(declare-fun m!2917341 () Bool)

(assert (=> b!2580889 m!2917341))

(assert (=> d!730121 d!730893))

(declare-fun d!730895 () Bool)

(assert (=> d!730895 (= (list!11215 lt!907727) (list!11217 (c!415433 lt!907727)))))

(declare-fun bs!471215 () Bool)

(assert (= bs!471215 d!730895))

(declare-fun m!2917343 () Bool)

(assert (=> bs!471215 m!2917343))

(assert (=> d!730085 d!730895))

(declare-fun d!730897 () Bool)

(declare-fun e!1628530 () Bool)

(assert (=> d!730897 e!1628530))

(declare-fun res!1085466 () Bool)

(assert (=> d!730897 (=> (not res!1085466) (not e!1628530))))

(declare-fun lt!908007 () Conc!9268)

(assert (=> d!730897 (= res!1085466 (= (list!11217 lt!908007) (value!145550 (toValue!11 thiss!3262 x!464697))))))

(assert (=> d!730897 (= lt!908007 (choose!15207 (value!145550 (toValue!11 thiss!3262 x!464697))))))

(assert (=> d!730897 (= (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))) lt!908007)))

(declare-fun b!2580890 () Bool)

(assert (=> b!2580890 (= e!1628530 (isBalanced!2825 lt!908007))))

(assert (= (and d!730897 res!1085466) b!2580890))

(declare-fun m!2917345 () Bool)

(assert (=> d!730897 m!2917345))

(declare-fun m!2917347 () Bool)

(assert (=> d!730897 m!2917347))

(declare-fun m!2917349 () Bool)

(assert (=> b!2580890 m!2917349))

(assert (=> d!730085 d!730897))

(declare-fun d!730899 () Bool)

(declare-fun e!1628532 () Bool)

(assert (=> d!730899 e!1628532))

(declare-fun res!1085467 () Bool)

(assert (=> d!730899 (=> (not res!1085467) (not e!1628532))))

(declare-fun lt!908008 () List!29808)

(assert (=> d!730899 (= res!1085467 (= (content!4091 lt!908008) (set.union (content!4091 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (content!4091 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))))

(declare-fun e!1628531 () List!29808)

(assert (=> d!730899 (= lt!908008 e!1628531)))

(declare-fun c!416011 () Bool)

(assert (=> d!730899 (= c!416011 (is-Nil!29708 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(assert (=> d!730899 (= (++!7292 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) lt!908008)))

(declare-fun b!2580891 () Bool)

(assert (=> b!2580891 (= e!1628531 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580894 () Bool)

(assert (=> b!2580894 (= e!1628532 (or (not (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) Nil!29708)) (= lt!908008 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun b!2580892 () Bool)

(assert (=> b!2580892 (= e!1628531 (Cons!29708 (h!35128 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun b!2580893 () Bool)

(declare-fun res!1085468 () Bool)

(assert (=> b!2580893 (=> (not res!1085468) (not e!1628532))))

(assert (=> b!2580893 (= res!1085468 (= (size!23031 lt!908008) (+ (size!23031 (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (size!23031 (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))))

(assert (= (and d!730899 c!416011) b!2580891))

(assert (= (and d!730899 (not c!416011)) b!2580892))

(assert (= (and d!730899 res!1085467) b!2580893))

(assert (= (and b!2580893 res!1085468) b!2580894))

(declare-fun m!2917351 () Bool)

(assert (=> d!730899 m!2917351))

(assert (=> d!730899 m!2915195))

(declare-fun m!2917353 () Bool)

(assert (=> d!730899 m!2917353))

(assert (=> d!730899 m!2915197))

(declare-fun m!2917355 () Bool)

(assert (=> d!730899 m!2917355))

(assert (=> b!2580892 m!2915197))

(declare-fun m!2917357 () Bool)

(assert (=> b!2580892 m!2917357))

(declare-fun m!2917359 () Bool)

(assert (=> b!2580893 m!2917359))

(assert (=> b!2580893 m!2915195))

(declare-fun m!2917361 () Bool)

(assert (=> b!2580893 m!2917361))

(assert (=> b!2580893 m!2915197))

(declare-fun m!2917363 () Bool)

(assert (=> b!2580893 m!2917363))

(assert (=> b!2579900 d!730899))

(declare-fun b!2580898 () Bool)

(declare-fun e!1628534 () List!29808)

(assert (=> b!2580898 (= e!1628534 (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (list!11217 (right!22962 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun d!730901 () Bool)

(declare-fun c!416012 () Bool)

(assert (=> d!730901 (= c!416012 (is-Empty!9268 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628533 () List!29808)

(assert (=> d!730901 (= (list!11217 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628533)))

(declare-fun b!2580897 () Bool)

(assert (=> b!2580897 (= e!1628534 (list!11219 (xs!12252 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580896 () Bool)

(assert (=> b!2580896 (= e!1628533 e!1628534)))

(declare-fun c!416013 () Bool)

(assert (=> b!2580896 (= c!416013 (is-Leaf!14139 (left!22632 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580895 () Bool)

(assert (=> b!2580895 (= e!1628533 Nil!29708)))

(assert (= (and d!730901 c!416012) b!2580895))

(assert (= (and d!730901 (not c!416012)) b!2580896))

(assert (= (and b!2580896 c!416013) b!2580897))

(assert (= (and b!2580896 (not c!416013)) b!2580898))

(declare-fun m!2917365 () Bool)

(assert (=> b!2580898 m!2917365))

(declare-fun m!2917367 () Bool)

(assert (=> b!2580898 m!2917367))

(assert (=> b!2580898 m!2917365))

(assert (=> b!2580898 m!2917367))

(declare-fun m!2917369 () Bool)

(assert (=> b!2580898 m!2917369))

(declare-fun m!2917371 () Bool)

(assert (=> b!2580897 m!2917371))

(assert (=> b!2579900 d!730901))

(declare-fun b!2580902 () Bool)

(declare-fun e!1628536 () List!29808)

(assert (=> b!2580902 (= e!1628536 (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))) (list!11217 (right!22962 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))))

(declare-fun d!730903 () Bool)

(declare-fun c!416014 () Bool)

(assert (=> d!730903 (= c!416014 (is-Empty!9268 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun e!1628535 () List!29808)

(assert (=> d!730903 (= (list!11217 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) e!1628535)))

(declare-fun b!2580901 () Bool)

(assert (=> b!2580901 (= e!1628536 (list!11219 (xs!12252 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697)))))))))))

(declare-fun b!2580900 () Bool)

(assert (=> b!2580900 (= e!1628535 e!1628536)))

(declare-fun c!416015 () Bool)

(assert (=> b!2580900 (= c!416015 (is-Leaf!14139 (right!22962 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580899 () Bool)

(assert (=> b!2580899 (= e!1628535 Nil!29708)))

(assert (= (and d!730903 c!416014) b!2580899))

(assert (= (and d!730903 (not c!416014)) b!2580900))

(assert (= (and b!2580900 c!416015) b!2580901))

(assert (= (and b!2580900 (not c!416015)) b!2580902))

(declare-fun m!2917373 () Bool)

(assert (=> b!2580902 m!2917373))

(declare-fun m!2917375 () Bool)

(assert (=> b!2580902 m!2917375))

(assert (=> b!2580902 m!2917373))

(assert (=> b!2580902 m!2917375))

(declare-fun m!2917377 () Bool)

(assert (=> b!2580902 m!2917377))

(declare-fun m!2917379 () Bool)

(assert (=> b!2580901 m!2917379))

(assert (=> b!2579900 d!730903))

(declare-fun d!730905 () Bool)

(declare-fun e!1628537 () Bool)

(assert (=> d!730905 e!1628537))

(declare-fun res!1085469 () Bool)

(assert (=> d!730905 (=> (not res!1085469) (not e!1628537))))

(declare-fun lt!908009 () BalanceConc!18150)

(assert (=> d!730905 (= res!1085469 (= (list!11215 lt!908009) (Cons!29708 #x007B Nil!29708)))))

(assert (=> d!730905 (= lt!908009 (BalanceConc!18151 (fromList!557 (Cons!29708 #x007B Nil!29708))))))

(assert (=> d!730905 (= (fromListB!1421 (Cons!29708 #x007B Nil!29708)) lt!908009)))

(declare-fun b!2580903 () Bool)

(assert (=> b!2580903 (= e!1628537 (isBalanced!2825 (fromList!557 (Cons!29708 #x007B Nil!29708))))))

(assert (= (and d!730905 res!1085469) b!2580903))

(declare-fun m!2917381 () Bool)

(assert (=> d!730905 m!2917381))

(declare-fun m!2917383 () Bool)

(assert (=> d!730905 m!2917383))

(assert (=> b!2580903 m!2917383))

(assert (=> b!2580903 m!2917383))

(declare-fun m!2917385 () Bool)

(assert (=> b!2580903 m!2917385))

(assert (=> d!730093 d!730905))

(declare-fun d!730907 () Bool)

(assert (=> d!730907 (= (list!11219 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))) (innerList!9328 (xs!12252 (c!415433 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464697))))))))))

(assert (=> b!2579899 d!730907))

(declare-fun b!2580904 () Bool)

(declare-fun e!1628538 () Bool)

(declare-fun e!1628539 () Bool)

(assert (=> b!2580904 (= e!1628538 e!1628539)))

(declare-fun res!1085474 () Bool)

(assert (=> b!2580904 (=> (not res!1085474) (not e!1628539))))

(assert (=> b!2580904 (= res!1085474 (<= (- 1) (- (height!1345 (left!22632 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))) (height!1345 (right!22962 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))))

(declare-fun b!2580905 () Bool)

(assert (=> b!2580905 (= e!1628539 (not (isEmpty!17078 (right!22962 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(declare-fun b!2580906 () Bool)

(declare-fun res!1085470 () Bool)

(assert (=> b!2580906 (=> (not res!1085470) (not e!1628539))))

(assert (=> b!2580906 (= res!1085470 (isBalanced!2825 (right!22962 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(declare-fun b!2580907 () Bool)

(declare-fun res!1085472 () Bool)

(assert (=> b!2580907 (=> (not res!1085472) (not e!1628539))))

(assert (=> b!2580907 (= res!1085472 (<= (- (height!1345 (left!22632 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))) (height!1345 (right!22962 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))) 1))))

(declare-fun b!2580908 () Bool)

(declare-fun res!1085473 () Bool)

(assert (=> b!2580908 (=> (not res!1085473) (not e!1628539))))

(assert (=> b!2580908 (= res!1085473 (not (isEmpty!17078 (left!22632 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))))))))

(declare-fun d!730909 () Bool)

(declare-fun res!1085475 () Bool)

(assert (=> d!730909 (=> res!1085475 e!1628538)))

(assert (=> d!730909 (= res!1085475 (not (is-Node!9268 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (=> d!730909 (= (isBalanced!2825 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) e!1628538)))

(declare-fun b!2580909 () Bool)

(declare-fun res!1085471 () Bool)

(assert (=> b!2580909 (=> (not res!1085471) (not e!1628539))))

(assert (=> b!2580909 (= res!1085471 (isBalanced!2825 (left!22632 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (= (and d!730909 (not res!1085475)) b!2580904))

(assert (= (and b!2580904 res!1085474) b!2580907))

(assert (= (and b!2580907 res!1085472) b!2580909))

(assert (= (and b!2580909 res!1085471) b!2580906))

(assert (= (and b!2580906 res!1085470) b!2580908))

(assert (= (and b!2580908 res!1085473) b!2580905))

(declare-fun m!2917387 () Bool)

(assert (=> b!2580907 m!2917387))

(declare-fun m!2917389 () Bool)

(assert (=> b!2580907 m!2917389))

(declare-fun m!2917391 () Bool)

(assert (=> b!2580905 m!2917391))

(assert (=> b!2580904 m!2917387))

(assert (=> b!2580904 m!2917389))

(declare-fun m!2917393 () Bool)

(assert (=> b!2580909 m!2917393))

(declare-fun m!2917395 () Bool)

(assert (=> b!2580908 m!2917395))

(declare-fun m!2917397 () Bool)

(assert (=> b!2580906 m!2917397))

(assert (=> b!2579881 d!730909))

(declare-fun d!730911 () Bool)

(declare-fun e!1628541 () Bool)

(assert (=> d!730911 e!1628541))

(declare-fun res!1085476 () Bool)

(assert (=> d!730911 (=> (not res!1085476) (not e!1628541))))

(declare-fun lt!908010 () List!29808)

(assert (=> d!730911 (= res!1085476 (= (content!4091 lt!908010) (set.union (content!4091 (list!11217 (left!22632 (c!415433 lt!907649)))) (content!4091 (list!11217 (right!22962 (c!415433 lt!907649)))))))))

(declare-fun e!1628540 () List!29808)

(assert (=> d!730911 (= lt!908010 e!1628540)))

(declare-fun c!416016 () Bool)

(assert (=> d!730911 (= c!416016 (is-Nil!29708 (list!11217 (left!22632 (c!415433 lt!907649)))))))

(assert (=> d!730911 (= (++!7292 (list!11217 (left!22632 (c!415433 lt!907649))) (list!11217 (right!22962 (c!415433 lt!907649)))) lt!908010)))

(declare-fun b!2580910 () Bool)

(assert (=> b!2580910 (= e!1628540 (list!11217 (right!22962 (c!415433 lt!907649))))))

(declare-fun b!2580913 () Bool)

(assert (=> b!2580913 (= e!1628541 (or (not (= (list!11217 (right!22962 (c!415433 lt!907649))) Nil!29708)) (= lt!908010 (list!11217 (left!22632 (c!415433 lt!907649))))))))

(declare-fun b!2580911 () Bool)

(assert (=> b!2580911 (= e!1628540 (Cons!29708 (h!35128 (list!11217 (left!22632 (c!415433 lt!907649)))) (++!7292 (t!211695 (list!11217 (left!22632 (c!415433 lt!907649)))) (list!11217 (right!22962 (c!415433 lt!907649))))))))

(declare-fun b!2580912 () Bool)

(declare-fun res!1085477 () Bool)

(assert (=> b!2580912 (=> (not res!1085477) (not e!1628541))))

(assert (=> b!2580912 (= res!1085477 (= (size!23031 lt!908010) (+ (size!23031 (list!11217 (left!22632 (c!415433 lt!907649)))) (size!23031 (list!11217 (right!22962 (c!415433 lt!907649)))))))))

(assert (= (and d!730911 c!416016) b!2580910))

(assert (= (and d!730911 (not c!416016)) b!2580911))

(assert (= (and d!730911 res!1085476) b!2580912))

(assert (= (and b!2580912 res!1085477) b!2580913))

(declare-fun m!2917399 () Bool)

(assert (=> d!730911 m!2917399))

(assert (=> d!730911 m!2915187))

(declare-fun m!2917401 () Bool)

(assert (=> d!730911 m!2917401))

(assert (=> d!730911 m!2915189))

(declare-fun m!2917403 () Bool)

(assert (=> d!730911 m!2917403))

(assert (=> b!2580911 m!2915189))

(declare-fun m!2917405 () Bool)

(assert (=> b!2580911 m!2917405))

(declare-fun m!2917407 () Bool)

(assert (=> b!2580912 m!2917407))

(assert (=> b!2580912 m!2915187))

(declare-fun m!2917409 () Bool)

(assert (=> b!2580912 m!2917409))

(assert (=> b!2580912 m!2915189))

(declare-fun m!2917411 () Bool)

(assert (=> b!2580912 m!2917411))

(assert (=> b!2579896 d!730911))

(declare-fun b!2580917 () Bool)

(declare-fun e!1628543 () List!29808)

(assert (=> b!2580917 (= e!1628543 (++!7292 (list!11217 (left!22632 (left!22632 (c!415433 lt!907649)))) (list!11217 (right!22962 (left!22632 (c!415433 lt!907649))))))))

(declare-fun d!730913 () Bool)

(declare-fun c!416017 () Bool)

(assert (=> d!730913 (= c!416017 (is-Empty!9268 (left!22632 (c!415433 lt!907649))))))

(declare-fun e!1628542 () List!29808)

(assert (=> d!730913 (= (list!11217 (left!22632 (c!415433 lt!907649))) e!1628542)))

(declare-fun b!2580916 () Bool)

(assert (=> b!2580916 (= e!1628543 (list!11219 (xs!12252 (left!22632 (c!415433 lt!907649)))))))

(declare-fun b!2580915 () Bool)

(assert (=> b!2580915 (= e!1628542 e!1628543)))

(declare-fun c!416018 () Bool)

(assert (=> b!2580915 (= c!416018 (is-Leaf!14139 (left!22632 (c!415433 lt!907649))))))

(declare-fun b!2580914 () Bool)

(assert (=> b!2580914 (= e!1628542 Nil!29708)))

(assert (= (and d!730913 c!416017) b!2580914))

(assert (= (and d!730913 (not c!416017)) b!2580915))

(assert (= (and b!2580915 c!416018) b!2580916))

(assert (= (and b!2580915 (not c!416018)) b!2580917))

(declare-fun m!2917413 () Bool)

(assert (=> b!2580917 m!2917413))

(declare-fun m!2917415 () Bool)

(assert (=> b!2580917 m!2917415))

(assert (=> b!2580917 m!2917413))

(assert (=> b!2580917 m!2917415))

(declare-fun m!2917417 () Bool)

(assert (=> b!2580917 m!2917417))

(declare-fun m!2917419 () Bool)

(assert (=> b!2580916 m!2917419))

(assert (=> b!2579896 d!730913))

(declare-fun b!2580921 () Bool)

(declare-fun e!1628545 () List!29808)

(assert (=> b!2580921 (= e!1628545 (++!7292 (list!11217 (left!22632 (right!22962 (c!415433 lt!907649)))) (list!11217 (right!22962 (right!22962 (c!415433 lt!907649))))))))

(declare-fun d!730915 () Bool)

(declare-fun c!416019 () Bool)

(assert (=> d!730915 (= c!416019 (is-Empty!9268 (right!22962 (c!415433 lt!907649))))))

(declare-fun e!1628544 () List!29808)

(assert (=> d!730915 (= (list!11217 (right!22962 (c!415433 lt!907649))) e!1628544)))

(declare-fun b!2580920 () Bool)

(assert (=> b!2580920 (= e!1628545 (list!11219 (xs!12252 (right!22962 (c!415433 lt!907649)))))))

(declare-fun b!2580919 () Bool)

(assert (=> b!2580919 (= e!1628544 e!1628545)))

(declare-fun c!416020 () Bool)

(assert (=> b!2580919 (= c!416020 (is-Leaf!14139 (right!22962 (c!415433 lt!907649))))))

(declare-fun b!2580918 () Bool)

(assert (=> b!2580918 (= e!1628544 Nil!29708)))

(assert (= (and d!730915 c!416019) b!2580918))

(assert (= (and d!730915 (not c!416019)) b!2580919))

(assert (= (and b!2580919 c!416020) b!2580920))

(assert (= (and b!2580919 (not c!416020)) b!2580921))

(declare-fun m!2917421 () Bool)

(assert (=> b!2580921 m!2917421))

(declare-fun m!2917423 () Bool)

(assert (=> b!2580921 m!2917423))

(assert (=> b!2580921 m!2917421))

(assert (=> b!2580921 m!2917423))

(declare-fun m!2917425 () Bool)

(assert (=> b!2580921 m!2917425))

(declare-fun m!2917427 () Bool)

(assert (=> b!2580920 m!2917427))

(assert (=> b!2579896 d!730915))

(declare-fun d!730917 () Bool)

(declare-fun lt!908011 () Bool)

(assert (=> d!730917 (= lt!908011 (isEmpty!17080 (list!11217 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708)))))))))))

(assert (=> d!730917 (= lt!908011 (= (size!23033 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) 0))))

(assert (=> d!730917 (= (isEmpty!17078 (left!22632 (fromList!557 (Cons!29708 #x006E (Cons!29708 #x0075 (Cons!29708 #x006C (Cons!29708 #x006C Nil!29708))))))) lt!908011)))

(declare-fun bs!471216 () Bool)

(assert (= bs!471216 d!730917))

(declare-fun m!2917429 () Bool)

(assert (=> bs!471216 m!2917429))

(assert (=> bs!471216 m!2917429))

(declare-fun m!2917431 () Bool)

(assert (=> bs!471216 m!2917431))

(declare-fun m!2917433 () Bool)

(assert (=> bs!471216 m!2917433))

(assert (=> b!2579880 d!730917))

(declare-fun d!730919 () Bool)

(assert (=> d!730919 (= (list!11219 (xs!12252 (c!415433 lt!907649))) (innerList!9328 (xs!12252 (c!415433 lt!907649))))))

(assert (=> b!2579895 d!730919))

(declare-fun b!2580922 () Bool)

(declare-fun e!1628546 () Bool)

(declare-fun e!1628547 () Bool)

(assert (=> b!2580922 (= e!1628546 e!1628547)))

(declare-fun res!1085482 () Bool)

(assert (=> b!2580922 (=> (not res!1085482) (not e!1628547))))

(assert (=> b!2580922 (= res!1085482 (<= (- 1) (- (height!1345 (left!22632 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))) (height!1345 (right!22962 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))))))))

(declare-fun b!2580923 () Bool)

(assert (=> b!2580923 (= e!1628547 (not (isEmpty!17078 (right!22962 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun b!2580924 () Bool)

(declare-fun res!1085478 () Bool)

(assert (=> b!2580924 (=> (not res!1085478) (not e!1628547))))

(assert (=> b!2580924 (= res!1085478 (isBalanced!2825 (right!22962 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))))))

(declare-fun b!2580925 () Bool)

(declare-fun res!1085480 () Bool)

(assert (=> b!2580925 (=> (not res!1085480) (not e!1628547))))

(assert (=> b!2580925 (= res!1085480 (<= (- (height!1345 (left!22632 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))) (height!1345 (right!22962 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))))) 1))))

(declare-fun b!2580926 () Bool)

(declare-fun res!1085481 () Bool)

(assert (=> b!2580926 (=> (not res!1085481) (not e!1628547))))

(assert (=> b!2580926 (= res!1085481 (not (isEmpty!17078 (left!22632 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))))))))

(declare-fun d!730921 () Bool)

(declare-fun res!1085483 () Bool)

(assert (=> d!730921 (=> res!1085483 e!1628546)))

(assert (=> d!730921 (= res!1085483 (not (is-Node!9268 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))))))

(assert (=> d!730921 (= (isBalanced!2825 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697)))) e!1628546)))

(declare-fun b!2580927 () Bool)

(declare-fun res!1085479 () Bool)

(assert (=> b!2580927 (=> (not res!1085479) (not e!1628547))))

(assert (=> b!2580927 (= res!1085479 (isBalanced!2825 (left!22632 (fromList!557 (value!145550 (toValue!11 thiss!3262 x!464697))))))))

(assert (= (and d!730921 (not res!1085483)) b!2580922))

(assert (= (and b!2580922 res!1085482) b!2580925))

(assert (= (and b!2580925 res!1085480) b!2580927))

(assert (= (and b!2580927 res!1085479) b!2580924))

(assert (= (and b!2580924 res!1085478) b!2580926))

(assert (= (and b!2580926 res!1085481) b!2580923))

(declare-fun m!2917435 () Bool)

(assert (=> b!2580925 m!2917435))

(declare-fun m!2917437 () Bool)

(assert (=> b!2580925 m!2917437))

(declare-fun m!2917439 () Bool)

(assert (=> b!2580923 m!2917439))

(assert (=> b!2580922 m!2917435))

(assert (=> b!2580922 m!2917437))

(declare-fun m!2917441 () Bool)

(assert (=> b!2580927 m!2917441))

(declare-fun m!2917443 () Bool)

(assert (=> b!2580926 m!2917443))

(declare-fun m!2917445 () Bool)

(assert (=> b!2580924 m!2917445))

(assert (=> b!2579850 d!730921))

(assert (=> b!2579850 d!730897))

(assert (=> b!2579879 d!730585))

(assert (=> b!2579879 d!730587))

(declare-fun bs!471217 () Bool)

(declare-fun s!228584 () Bool)

(assert (= bs!471217 (and neg-inst!1496 s!228584)))

(assert (=> bs!471217 (=> true (= (list!11215 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 lt!907649))) (list!11215 lt!907649)))))

(declare-fun m!2917447 () Bool)

(assert (=> m!2914461 m!2917447))

(declare-fun m!2917449 () Bool)

(assert (=> m!2914461 m!2917449))

(declare-fun m!2917451 () Bool)

(assert (=> m!2914461 m!2917451))

(assert (=> m!2914461 s!228584))

(push 1)

(assert (not b!2580083))

(assert (not b!2580872))

(assert (not b!2580788))

(assert (not b!2580795))

(assert (not b!2580343))

(assert (not b!2580901))

(assert (not b!2580863))

(assert (not d!730709))

(assert (not bm!166730))

(assert (not b!2580921))

(assert (not b!2580321))

(assert (not b!2580869))

(assert (not b!2580106))

(assert (not b!2580100))

(assert (not b!2580824))

(assert (not b!2580668))

(assert (not b!2580146))

(assert (not b!2580055))

(assert (not d!730451))

(assert (not b!2580860))

(assert (not b!2580776))

(assert (not d!730721))

(assert (not b!2580488))

(assert (not d!730897))

(assert (not b!2580620))

(assert (not b!2580850))

(assert (not b!2580112))

(assert (not b!2580892))

(assert (not d!730837))

(assert (not b!2580060))

(assert (not b!2580858))

(assert (not b!2580144))

(assert (not b!2580481))

(assert (not b!2580889))

(assert (not b!2580844))

(assert (not b!2580031))

(assert (not d!730875))

(assert (not d!730831))

(assert (not d!730889))

(assert (not b!2580623))

(assert (not d!730557))

(assert (not b!2580319))

(assert (not b!2580460))

(assert (not b!2580843))

(assert (not b!2580114))

(assert (not b!2580848))

(assert (not b!2580499))

(assert (not b!2580071))

(assert (not b!2580606))

(assert (not b!2580525))

(assert (not b!2580334))

(assert (not b!2580706))

(assert (not b!2580469))

(assert (not b!2580855))

(assert (not d!730543))

(assert (not b!2580923))

(assert (not b!2580486))

(assert (not b!2580057))

(assert (not b!2580123))

(assert (not b!2580475))

(assert (not b!2580622))

(assert (not b!2580347))

(assert (not b!2580925))

(assert (not b!2580113))

(assert (not b!2580314))

(assert (not b!2580320))

(assert (not b!2580674))

(assert (not b!2580010))

(assert (not b!2580068))

(assert (not b!2580545))

(assert (not b!2580331))

(assert (not d!730775))

(assert (not b!2580902))

(assert (not d!730723))

(assert (not b!2580138))

(assert (not b!2580022))

(assert (not b!2580492))

(assert (not b!2580126))

(assert (not b!2580152))

(assert (not b!2579698))

(assert (not d!730689))

(assert (not b!2580457))

(assert (not b!2580504))

(assert (not b!2580012))

(assert (not d!730781))

(assert (not b!2580854))

(assert (not b!2580424))

(assert (not d!730899))

(assert (not b!2580007))

(assert (not b!2580672))

(assert (not b!2580033))

(assert (not d!730675))

(assert (not b!2580076))

(assert (not b!2580443))

(assert (not b!2580748))

(assert (not b!2580009))

(assert (not b!2580864))

(assert (not b!2580087))

(assert (not d!730839))

(assert (not b!2580920))

(assert (not b!2580880))

(assert (not b!2580091))

(assert (not b!2580647))

(assert (not b!2580924))

(assert (not b!2580804))

(assert (not b!2580011))

(assert (not d!730641))

(assert (not b!2580685))

(assert (not b!2580524))

(assert (not b!2580675))

(assert (not b!2580102))

(assert (not d!730911))

(assert (not b!2580350))

(assert (not b!2580677))

(assert (not b!2580064))

(assert (not b!2580642))

(assert (not b!2580802))

(assert (not b!2580325))

(assert (not d!730829))

(assert (not b!2580128))

(assert (not b!2580120))

(assert (not b!2580015))

(assert (not b!2580867))

(assert (not b!2580916))

(assert (not d!730621))

(assert (not d!730789))

(assert (not b!2580107))

(assert (not b!2580332))

(assert (not d!730871))

(assert (not b!2580130))

(assert (not b!2580092))

(assert (not b!2580658))

(assert (not b!2580852))

(assert (not b!2580716))

(assert (not b!2580657))

(assert (not b!2580904))

(assert (not b!2580847))

(assert (not b!2580082))

(assert (not b!2580794))

(assert (not b!2580311))

(assert (not b!2580853))

(assert (not b!2580866))

(assert (not b!2580069))

(assert (not b!2580002))

(assert (not b!2580684))

(assert (not b!2580150))

(assert (not b!2580445))

(assert (not b!2580556))

(assert (not b!2580881))

(assert (not b!2580911))

(assert (not b!2580490))

(assert (not b!2580348))

(assert (not b!2580141))

(assert (not d!730559))

(assert (not b!2580502))

(assert (not b!2580812))

(assert (not b!2580909))

(assert (not b!2580922))

(assert (not d!730861))

(assert (not d!730477))

(assert (not b!2580042))

(assert (not d!730797))

(assert (not d!730863))

(assert (not b!2580546))

(assert (not b!2580043))

(assert (not b!2580591))

(assert (not d!730471))

(assert (not b!2580926))

(assert (not b!2580000))

(assert (not b!2580330))

(assert (not b!2580702))

(assert (not b!2580903))

(assert (not b!2580315))

(assert (not b!2580831))

(assert (not b!2580856))

(assert (not b!2580017))

(assert (not b!2580142))

(assert (not b!2580137))

(assert (not b!2580859))

(assert (not b!2580737))

(assert (not b!2580026))

(assert (not b!2580883))

(assert (not b!2580602))

(assert (not d!730445))

(assert (not d!730747))

(assert (not d!730685))

(assert (not d!730891))

(assert (not b!2580323))

(assert (not b!2580564))

(assert (not b!2580501))

(assert (not b!2580857))

(assert (not b!2580498))

(assert (not b!2580471))

(assert (not b!2580452))

(assert (not b!2580634))

(assert (not b!2580877))

(assert (not b!2580846))

(assert (not b!2580041))

(assert (not b!2580132))

(assert (not b!2580621))

(assert (not b!2580608))

(assert (not b!2580885))

(assert (not bm!166738))

(assert (not b!2580641))

(assert (not b!2580736))

(assert (not b!2580630))

(assert (not b!2580830))

(assert (not b!2580335))

(assert (not b!2580148))

(assert (not b!2580052))

(assert (not b!2580030))

(assert (not b!2580038))

(assert (not b!2580036))

(assert (not d!730917))

(assert (not d!730465))

(assert (not b!2580013))

(assert (not b!2580569))

(assert (not b!2580426))

(assert (not b!2580111))

(assert (not b!2580575))

(assert (not b!2580339))

(assert (not b!2580845))

(assert (not bm!166734))

(assert (not b!2580777))

(assert (not b!2580121))

(assert (not b!2580008))

(assert (not b!2580838))

(assert (not b!2580537))

(assert (not b!2580503))

(assert (not b!2580074))

(assert (not b!2580917))

(assert (not b!2580040))

(assert (not b!2580555))

(assert (not bm!166735))

(assert (not b!2580098))

(assert (not b!2580897))

(assert (not bs!471217))

(assert (not b!2580039))

(assert (not d!730819))

(assert (not b!2580342))

(assert (not b!2580310))

(assert (not d!730895))

(assert (not b!2580906))

(assert (not b!2580619))

(assert (not d!730633))

(assert (not b!2580890))

(assert (not b!2580048))

(assert (not d!730807))

(assert (not b!2580359))

(assert (not b!2580045))

(assert (not d!730727))

(assert (not b!2580341))

(assert (not b!2580353))

(assert (not b!2580351))

(assert (not b!2580536))

(assert (not b!2580626))

(assert (not b!2580637))

(assert (not b!2580516))

(assert (not b!2580507))

(assert (not b!2580585))

(assert (not b!2580898))

(assert (not b!2580500))

(assert (not b!2580356))

(assert (not b!2580862))

(assert (not d!730893))

(assert (not b!2580115))

(assert (not b!2580454))

(assert (not bm!166739))

(assert (not b!2580628))

(assert (not b!2580912))

(assert (not b!2580636))

(assert (not b!2580035))

(assert (not b!2580908))

(assert (not b!2580766))

(assert (not d!730905))

(assert (not b!2580019))

(assert (not b!2580633))

(assert (not d!730607))

(assert (not d!730613))

(assert (not b!2580073))

(assert (not b!2580624))

(assert (not b!2579696))

(assert (not b!2580747))

(assert (not b!2580818))

(assert (not b!2580927))

(assert (not b!2580678))

(assert (not b!2580887))

(assert (not d!730481))

(assert (not b!2580051))

(assert (not b!2580065))

(assert (not b!2580646))

(assert (not b!2580704))

(assert (not b!2580655))

(assert (not b!2580096))

(assert (not b!2580618))

(assert (not b!2580714))

(assert (not b!2580670))

(assert (not d!730691))

(assert (not b!2580868))

(assert (not b!2580581))

(assert (not b!2580609))

(assert (not b!2580080))

(assert (not b!2580871))

(assert (not b!2579998))

(assert (not b!2580865))

(assert (not d!730459))

(assert (not b!2580861))

(assert (not b!2580117))

(assert (not b!2580133))

(assert (not b!2580059))

(assert (not b!2580661))

(assert (not d!730717))

(assert (not b!2580333))

(assert (not b!2580088))

(assert (not b!2580517))

(assert (not b!2580047))

(assert (not b!2580021))

(assert (not b!2580876))

(assert (not d!730601))

(assert (not b!2580822))

(assert (not b!2580888))

(assert (not b!2580456))

(assert (not b!2580765))

(assert (not b!2580851))

(assert (not b!2580717))

(assert (not b!2580907))

(assert (not b!2580004))

(assert (not b!2580673))

(assert (not b!2580340))

(assert (not b!2580006))

(assert (not b!2580816))

(assert (not d!730533))

(assert (not b!2580027))

(assert (not b!2580355))

(assert (not b!2580893))

(assert (not d!730455))

(assert (not d!730629))

(assert (not b!2580676))

(assert (not b!2580639))

(assert (not b!2580345))

(assert (not b!2580127))

(assert (not b!2580336))

(assert (not b!2580597))

(assert (not b!2580328))

(assert (not b!2580094))

(assert (not b!2580905))

(assert (not b!2580077))

(assert (not b!2580663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

