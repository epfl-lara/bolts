; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409592 () Bool)

(assert start!409592)

(declare-fun res!1754351 () Bool)

(declare-fun e!2651514 () Bool)

(assert (=> start!409592 (=> (not res!1754351) (not e!2651514))))

(declare-datatypes ((List!47423 0))(
  ( (Nil!47299) (Cons!47299 (h!52719 (_ BitVec 16)) (t!353689 List!47423)) )
))
(declare-fun lt!1512687 () List!47423)

(declare-fun lt!1512688 () List!47423)

(assert (=> start!409592 (= res!1754351 (and (not (= lt!1512687 (Cons!47299 #x0074 (Cons!47299 #x0072 (Cons!47299 #x0075 lt!1512688))))) (not (= lt!1512687 (Cons!47299 #x0066 (Cons!47299 #x0061 (Cons!47299 #x006C (Cons!47299 #x0073 lt!1512688))))))))))

(assert (=> start!409592 (= lt!1512688 (Cons!47299 #x0065 Nil!47299))))

(declare-datatypes ((IArray!28567 0))(
  ( (IArray!28568 (innerList!14341 List!47423)) )
))
(declare-datatypes ((Conc!14281 0))(
  ( (Node!14281 (left!35132 Conc!14281) (right!35462 Conc!14281) (csize!28792 Int) (cheight!14492 Int)) (Leaf!22077 (xs!17587 IArray!28567) (csize!28793 Int)) (Empty!14281) )
))
(declare-datatypes ((BalanceConc!28072 0))(
  ( (BalanceConc!28073 (c!726552 Conc!14281)) )
))
(declare-fun v!3921 () BalanceConc!28072)

(declare-fun efficientList!487 (BalanceConc!28072) List!47423)

(assert (=> start!409592 (= lt!1512687 (efficientList!487 v!3921))))

(assert (=> start!409592 e!2651514))

(declare-fun e!2651513 () Bool)

(declare-fun inv!62378 (BalanceConc!28072) Bool)

(assert (=> start!409592 (and (inv!62378 v!3921) e!2651513)))

(declare-fun b!4270635 () Bool)

(declare-datatypes ((TokenValue!8254 0))(
  ( (FloatLiteralValue!16508 (text!58223 List!47423)) (TokenValueExt!8253 (__x!28700 Int)) (Broken!41270 (value!249207 List!47423)) (Object!8377) (End!8254) (Def!8254) (Underscore!8254) (Match!8254) (Else!8254) (Error!8254) (Case!8254) (If!8254) (Extends!8254) (Abstract!8254) (Class!8254) (Val!8254) (DelimiterValue!16508 (del!8314 List!47423)) (KeywordValue!8260 (value!249208 List!47423)) (CommentValue!16508 (value!249209 List!47423)) (WhitespaceValue!16508 (value!249210 List!47423)) (IndentationValue!8254 (value!249211 List!47423)) (String!55237) (Int32!8254) (Broken!41271 (value!249212 List!47423)) (Boolean!8255) (Unit!66212) (OperatorValue!8257 (op!8314 List!47423)) (IdentifierValue!16508 (value!249213 List!47423)) (IdentifierValue!16509 (value!249214 List!47423)) (WhitespaceValue!16509 (value!249215 List!47423)) (True!16508) (False!16508) (Broken!41272 (value!249216 List!47423)) (Broken!41273 (value!249217 List!47423)) (True!16509) (RightBrace!8254) (RightBracket!8254) (Colon!8254) (Null!8254) (Comma!8254) (LeftBracket!8254) (False!16509) (LeftBrace!8254) (ImaginaryLiteralValue!8254 (text!58224 List!47423)) (StringLiteralValue!24762 (value!249218 List!47423)) (EOFValue!8254 (value!249219 List!47423)) (IdentValue!8254 (value!249220 List!47423)) (DelimiterValue!16509 (value!249221 List!47423)) (DedentValue!8254 (value!249222 List!47423)) (NewLineValue!8254 (value!249223 List!47423)) (IntegerValue!24762 (value!249224 (_ BitVec 32)) (text!58225 List!47423)) (IntegerValue!24763 (value!249225 Int) (text!58226 List!47423)) (Times!8254) (Or!8254) (Equal!8254) (Minus!8254) (Broken!41274 (value!249226 List!47423)) (And!8254) (Div!8254) (LessEqual!8254) (Mod!8254) (Concat!21152) (Not!8254) (Plus!8254) (SpaceValue!8254 (value!249227 List!47423)) (IntegerValue!24764 (value!249228 Int) (text!58227 List!47423)) (StringLiteralValue!24763 (text!58228 List!47423)) (FloatLiteralValue!16509 (text!58229 List!47423)) (BytesLiteralValue!8254 (value!249229 List!47423)) (CommentValue!16509 (value!249230 List!47423)) (StringLiteralValue!24764 (value!249231 List!47423)) (ErrorTokenValue!8254 (msg!8315 List!47423)) )
))
(declare-fun inv!21 (TokenValue!8254) Bool)

(assert (=> b!4270635 (= e!2651514 (not (inv!21 (Broken!41272 lt!1512687))))))

(declare-fun b!4270636 () Bool)

(declare-fun tp!1307962 () Bool)

(declare-fun inv!62379 (Conc!14281) Bool)

(assert (=> b!4270636 (= e!2651513 (and (inv!62379 (c!726552 v!3921)) tp!1307962))))

(assert (= (and start!409592 res!1754351) b!4270635))

(assert (= start!409592 b!4270636))

(declare-fun m!4863969 () Bool)

(assert (=> start!409592 m!4863969))

(declare-fun m!4863971 () Bool)

(assert (=> start!409592 m!4863971))

(declare-fun m!4863973 () Bool)

(assert (=> b!4270635 m!4863973))

(declare-fun m!4863975 () Bool)

(assert (=> b!4270636 m!4863975))

(check-sat (not b!4270636) (not b!4270635) (not start!409592))
(check-sat)
(get-model)

(declare-fun d!1259574 () Bool)

(declare-fun c!726555 () Bool)

(get-info :version)

(assert (=> d!1259574 (= c!726555 ((_ is Node!14281) (c!726552 v!3921)))))

(declare-fun e!2651519 () Bool)

(assert (=> d!1259574 (= (inv!62379 (c!726552 v!3921)) e!2651519)))

(declare-fun b!4270643 () Bool)

(declare-fun inv!62380 (Conc!14281) Bool)

(assert (=> b!4270643 (= e!2651519 (inv!62380 (c!726552 v!3921)))))

(declare-fun b!4270644 () Bool)

(declare-fun e!2651520 () Bool)

(assert (=> b!4270644 (= e!2651519 e!2651520)))

(declare-fun res!1754354 () Bool)

(assert (=> b!4270644 (= res!1754354 (not ((_ is Leaf!22077) (c!726552 v!3921))))))

(assert (=> b!4270644 (=> res!1754354 e!2651520)))

(declare-fun b!4270645 () Bool)

(declare-fun inv!62382 (Conc!14281) Bool)

(assert (=> b!4270645 (= e!2651520 (inv!62382 (c!726552 v!3921)))))

(assert (= (and d!1259574 c!726555) b!4270643))

(assert (= (and d!1259574 (not c!726555)) b!4270644))

(assert (= (and b!4270644 (not res!1754354)) b!4270645))

(declare-fun m!4863977 () Bool)

(assert (=> b!4270643 m!4863977))

(declare-fun m!4863979 () Bool)

(assert (=> b!4270645 m!4863979))

(assert (=> b!4270636 d!1259574))

(declare-fun b!4270656 () Bool)

(declare-fun res!1754357 () Bool)

(declare-fun e!2651527 () Bool)

(assert (=> b!4270656 (=> res!1754357 e!2651527)))

(assert (=> b!4270656 (= res!1754357 (not ((_ is IntegerValue!24764) (Broken!41272 lt!1512687))))))

(declare-fun e!2651529 () Bool)

(assert (=> b!4270656 (= e!2651529 e!2651527)))

(declare-fun b!4270657 () Bool)

(declare-fun e!2651528 () Bool)

(assert (=> b!4270657 (= e!2651528 e!2651529)))

(declare-fun c!726561 () Bool)

(assert (=> b!4270657 (= c!726561 ((_ is IntegerValue!24763) (Broken!41272 lt!1512687)))))

(declare-fun b!4270658 () Bool)

(declare-fun inv!15 (TokenValue!8254) Bool)

(assert (=> b!4270658 (= e!2651527 (inv!15 (Broken!41272 lt!1512687)))))

(declare-fun d!1259578 () Bool)

(declare-fun c!726560 () Bool)

(assert (=> d!1259578 (= c!726560 ((_ is IntegerValue!24762) (Broken!41272 lt!1512687)))))

(assert (=> d!1259578 (= (inv!21 (Broken!41272 lt!1512687)) e!2651528)))

(declare-fun b!4270659 () Bool)

(declare-fun inv!16 (TokenValue!8254) Bool)

(assert (=> b!4270659 (= e!2651528 (inv!16 (Broken!41272 lt!1512687)))))

(declare-fun b!4270660 () Bool)

(declare-fun inv!17 (TokenValue!8254) Bool)

(assert (=> b!4270660 (= e!2651529 (inv!17 (Broken!41272 lt!1512687)))))

(assert (= (and d!1259578 c!726560) b!4270659))

(assert (= (and d!1259578 (not c!726560)) b!4270657))

(assert (= (and b!4270657 c!726561) b!4270660))

(assert (= (and b!4270657 (not c!726561)) b!4270656))

(assert (= (and b!4270656 (not res!1754357)) b!4270658))

(declare-fun m!4863989 () Bool)

(assert (=> b!4270658 m!4863989))

(declare-fun m!4863991 () Bool)

(assert (=> b!4270659 m!4863991))

(declare-fun m!4863993 () Bool)

(assert (=> b!4270660 m!4863993))

(assert (=> b!4270635 d!1259578))

(declare-fun d!1259584 () Bool)

(declare-fun lt!1512694 () List!47423)

(declare-fun list!17144 (BalanceConc!28072) List!47423)

(assert (=> d!1259584 (= lt!1512694 (list!17144 v!3921))))

(declare-fun efficientList!489 (Conc!14281 List!47423) List!47423)

(declare-fun efficientList$default$2!169 (Conc!14281) List!47423)

(assert (=> d!1259584 (= lt!1512694 (efficientList!489 (c!726552 v!3921) (efficientList$default$2!169 (c!726552 v!3921))))))

(assert (=> d!1259584 (= (efficientList!487 v!3921) lt!1512694)))

(declare-fun bs!600605 () Bool)

(assert (= bs!600605 d!1259584))

(declare-fun m!4863999 () Bool)

(assert (=> bs!600605 m!4863999))

(declare-fun m!4864001 () Bool)

(assert (=> bs!600605 m!4864001))

(assert (=> bs!600605 m!4864001))

(declare-fun m!4864003 () Bool)

(assert (=> bs!600605 m!4864003))

(assert (=> start!409592 d!1259584))

(declare-fun d!1259588 () Bool)

(declare-fun isBalanced!3835 (Conc!14281) Bool)

(assert (=> d!1259588 (= (inv!62378 v!3921) (isBalanced!3835 (c!726552 v!3921)))))

(declare-fun bs!600606 () Bool)

(assert (= bs!600606 d!1259588))

(declare-fun m!4864017 () Bool)

(assert (=> bs!600606 m!4864017))

(assert (=> start!409592 d!1259588))

(declare-fun b!4270699 () Bool)

(declare-fun tp!1307974 () Bool)

(declare-fun tp!1307973 () Bool)

(declare-fun e!2651555 () Bool)

(assert (=> b!4270699 (= e!2651555 (and (inv!62379 (left!35132 (c!726552 v!3921))) tp!1307973 (inv!62379 (right!35462 (c!726552 v!3921))) tp!1307974))))

(declare-fun b!4270700 () Bool)

(declare-fun inv!62385 (IArray!28567) Bool)

(assert (=> b!4270700 (= e!2651555 (inv!62385 (xs!17587 (c!726552 v!3921))))))

(assert (=> b!4270636 (= tp!1307962 (and (inv!62379 (c!726552 v!3921)) e!2651555))))

(assert (= (and b!4270636 ((_ is Node!14281) (c!726552 v!3921))) b!4270699))

(assert (= (and b!4270636 ((_ is Leaf!22077) (c!726552 v!3921))) b!4270700))

(declare-fun m!4864019 () Bool)

(assert (=> b!4270699 m!4864019))

(declare-fun m!4864021 () Bool)

(assert (=> b!4270699 m!4864021))

(declare-fun m!4864023 () Bool)

(assert (=> b!4270700 m!4864023))

(assert (=> b!4270636 m!4863975))

(check-sat (not b!4270699) (not b!4270636) (not b!4270658) (not b!4270645) (not b!4270659) (not b!4270660) (not d!1259588) (not b!4270700) (not d!1259584) (not b!4270643))
(check-sat)
