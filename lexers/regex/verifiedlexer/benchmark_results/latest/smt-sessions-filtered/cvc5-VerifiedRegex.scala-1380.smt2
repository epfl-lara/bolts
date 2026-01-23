; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73412 () Bool)

(assert start!73412)

(declare-datatypes ((List!8844 0))(
  ( (Nil!8828) (Cons!8828 (h!14229 (_ BitVec 16)) (t!93045 List!8844)) )
))
(declare-datatypes ((IArray!5897 0))(
  ( (IArray!5898 (innerList!3006 List!8844)) )
))
(declare-datatypes ((Conc!2946 0))(
  ( (Node!2946 (left!6556 Conc!2946) (right!6886 Conc!2946) (csize!6122 Int) (cheight!3157 Int)) (Leaf!4327 (xs!5635 IArray!5897) (csize!6123 Int)) (Empty!2946) )
))
(declare-datatypes ((BalanceConc!5906 0))(
  ( (BalanceConc!5907 (c!133117 Conc!2946)) )
))
(declare-fun v!5037 () BalanceConc!5906)

(declare-datatypes ((TokenValue!1719 0))(
  ( (FloatLiteralValue!3438 (text!12478 List!8844)) (TokenValueExt!1718 (__x!7181 Int)) (Broken!8595 (value!53707 List!8844)) (Object!1734) (End!1719) (Def!1719) (Underscore!1719) (Match!1719) (Else!1719) (Error!1719) (Case!1719) (If!1719) (Extends!1719) (Abstract!1719) (Class!1719) (Val!1719) (DelimiterValue!3438 (del!1779 List!8844)) (KeywordValue!1725 (value!53708 List!8844)) (CommentValue!3438 (value!53709 List!8844)) (WhitespaceValue!3438 (value!53710 List!8844)) (IndentationValue!1719 (value!53711 List!8844)) (String!10382) (Int32!1719) (Broken!8596 (value!53712 List!8844)) (Boolean!1720) (Unit!13349) (OperatorValue!1722 (op!1779 List!8844)) (IdentifierValue!3438 (value!53713 List!8844)) (IdentifierValue!3439 (value!53714 List!8844)) (WhitespaceValue!3439 (value!53715 List!8844)) (True!3438) (False!3438) (Broken!8597 (value!53716 List!8844)) (Broken!8598 (value!53717 List!8844)) (True!3439) (RightBrace!1719) (RightBracket!1719) (Colon!1719) (Null!1719) (Comma!1719) (LeftBracket!1719) (False!3439) (LeftBrace!1719) (ImaginaryLiteralValue!1719 (text!12479 List!8844)) (StringLiteralValue!5157 (value!53718 List!8844)) (EOFValue!1719 (value!53719 List!8844)) (IdentValue!1719 (value!53720 List!8844)) (DelimiterValue!3439 (value!53721 List!8844)) (DedentValue!1719 (value!53722 List!8844)) (NewLineValue!1719 (value!53723 List!8844)) (IntegerValue!5157 (value!53724 (_ BitVec 32)) (text!12480 List!8844)) (IntegerValue!5158 (value!53725 Int) (text!12481 List!8844)) (Times!1719) (Or!1719) (Equal!1719) (Minus!1719) (Broken!8599 (value!53726 List!8844)) (And!1719) (Div!1719) (LessEqual!1719) (Mod!1719) (Concat!3749) (Not!1719) (Plus!1719) (SpaceValue!1719 (value!53727 List!8844)) (IntegerValue!5159 (value!53728 Int) (text!12482 List!8844)) (StringLiteralValue!5158 (text!12483 List!8844)) (FloatLiteralValue!3439 (text!12484 List!8844)) (BytesLiteralValue!1719 (value!53729 List!8844)) (CommentValue!3439 (value!53730 List!8844)) (StringLiteralValue!5159 (value!53731 List!8844)) (ErrorTokenValue!1719 (msg!1780 List!8844)) )
))
(declare-fun inv!21 (TokenValue!1719) Bool)

(declare-fun efficientList!133 (BalanceConc!5906) List!8844)

(assert (=> start!73412 (not (inv!21 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(declare-fun e!542715 () Bool)

(declare-fun inv!11224 (BalanceConc!5906) Bool)

(assert (=> start!73412 (and (inv!11224 v!5037) e!542715)))

(declare-fun b!821403 () Bool)

(declare-fun tp!256721 () Bool)

(declare-fun inv!11225 (Conc!2946) Bool)

(assert (=> b!821403 (= e!542715 (and (inv!11225 (c!133117 v!5037)) tp!256721))))

(assert (= start!73412 b!821403))

(declare-fun m!1062497 () Bool)

(assert (=> start!73412 m!1062497))

(declare-fun m!1062499 () Bool)

(assert (=> start!73412 m!1062499))

(declare-fun m!1062501 () Bool)

(assert (=> start!73412 m!1062501))

(declare-fun m!1062503 () Bool)

(assert (=> b!821403 m!1062503))

(push 1)

(assert (not b!821403))

(assert (not start!73412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258693 () Bool)

(declare-fun c!133121 () Bool)

(assert (=> d!258693 (= c!133121 (is-Node!2946 (c!133117 v!5037)))))

(declare-fun e!542723 () Bool)

(assert (=> d!258693 (= (inv!11225 (c!133117 v!5037)) e!542723)))

(declare-fun b!821413 () Bool)

(declare-fun inv!11228 (Conc!2946) Bool)

(assert (=> b!821413 (= e!542723 (inv!11228 (c!133117 v!5037)))))

(declare-fun b!821414 () Bool)

(declare-fun e!542724 () Bool)

(assert (=> b!821414 (= e!542723 e!542724)))

(declare-fun res!379097 () Bool)

(assert (=> b!821414 (= res!379097 (not (is-Leaf!4327 (c!133117 v!5037))))))

(assert (=> b!821414 (=> res!379097 e!542724)))

(declare-fun b!821415 () Bool)

(declare-fun inv!11229 (Conc!2946) Bool)

(assert (=> b!821415 (= e!542724 (inv!11229 (c!133117 v!5037)))))

(assert (= (and d!258693 c!133121) b!821413))

(assert (= (and d!258693 (not c!133121)) b!821414))

(assert (= (and b!821414 (not res!379097)) b!821415))

(declare-fun m!1062513 () Bool)

(assert (=> b!821413 m!1062513))

(declare-fun m!1062515 () Bool)

(assert (=> b!821415 m!1062515))

(assert (=> b!821403 d!258693))

(declare-fun b!821437 () Bool)

(declare-fun e!542738 () Bool)

(declare-fun inv!17 (TokenValue!1719) Bool)

(assert (=> b!821437 (= e!542738 (inv!17 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(declare-fun b!821438 () Bool)

(declare-fun e!542737 () Bool)

(declare-fun inv!16 (TokenValue!1719) Bool)

(assert (=> b!821438 (= e!542737 (inv!16 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(declare-fun b!821439 () Bool)

(declare-fun e!542739 () Bool)

(declare-fun inv!15 (TokenValue!1719) Bool)

(assert (=> b!821439 (= e!542739 (inv!15 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(declare-fun b!821440 () Bool)

(declare-fun res!379103 () Bool)

(assert (=> b!821440 (=> res!379103 e!542739)))

(assert (=> b!821440 (= res!379103 (not (is-IntegerValue!5159 (BytesLiteralValue!1719 (efficientList!133 v!5037)))))))

(assert (=> b!821440 (= e!542738 e!542739)))

(declare-fun b!821441 () Bool)

(assert (=> b!821441 (= e!542737 e!542738)))

(declare-fun c!133129 () Bool)

(assert (=> b!821441 (= c!133129 (is-IntegerValue!5158 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(declare-fun d!258697 () Bool)

(declare-fun c!133130 () Bool)

(assert (=> d!258697 (= c!133130 (is-IntegerValue!5157 (BytesLiteralValue!1719 (efficientList!133 v!5037))))))

(assert (=> d!258697 (= (inv!21 (BytesLiteralValue!1719 (efficientList!133 v!5037))) e!542737)))

(assert (= (and d!258697 c!133130) b!821438))

(assert (= (and d!258697 (not c!133130)) b!821441))

(assert (= (and b!821441 c!133129) b!821437))

(assert (= (and b!821441 (not c!133129)) b!821440))

(assert (= (and b!821440 (not res!379103)) b!821439))

(declare-fun m!1062521 () Bool)

(assert (=> b!821437 m!1062521))

(declare-fun m!1062523 () Bool)

(assert (=> b!821438 m!1062523))

(declare-fun m!1062525 () Bool)

(assert (=> b!821439 m!1062525))

(assert (=> start!73412 d!258697))

(declare-fun d!258701 () Bool)

(declare-fun lt!317228 () List!8844)

(declare-fun list!3508 (BalanceConc!5906) List!8844)

(assert (=> d!258701 (= lt!317228 (list!3508 v!5037))))

(declare-fun efficientList!135 (Conc!2946 List!8844) List!8844)

(declare-fun efficientList$default$2!45 (Conc!2946) List!8844)

(assert (=> d!258701 (= lt!317228 (efficientList!135 (c!133117 v!5037) (efficientList$default$2!45 (c!133117 v!5037))))))

(assert (=> d!258701 (= (efficientList!133 v!5037) lt!317228)))

(declare-fun bs!229154 () Bool)

(assert (= bs!229154 d!258701))

(declare-fun m!1062533 () Bool)

(assert (=> bs!229154 m!1062533))

(declare-fun m!1062535 () Bool)

(assert (=> bs!229154 m!1062535))

(assert (=> bs!229154 m!1062535))

(declare-fun m!1062537 () Bool)

(assert (=> bs!229154 m!1062537))

(assert (=> start!73412 d!258701))

(declare-fun d!258705 () Bool)

(declare-fun isBalanced!803 (Conc!2946) Bool)

(assert (=> d!258705 (= (inv!11224 v!5037) (isBalanced!803 (c!133117 v!5037)))))

(declare-fun bs!229156 () Bool)

(assert (= bs!229156 d!258705))

(declare-fun m!1062543 () Bool)

(assert (=> bs!229156 m!1062543))

(assert (=> start!73412 d!258705))

(declare-fun b!821461 () Bool)

(declare-fun tp!256730 () Bool)

(declare-fun tp!256729 () Bool)

(declare-fun e!542753 () Bool)

(assert (=> b!821461 (= e!542753 (and (inv!11225 (left!6556 (c!133117 v!5037))) tp!256729 (inv!11225 (right!6886 (c!133117 v!5037))) tp!256730))))

(declare-fun b!821462 () Bool)

(declare-fun inv!11232 (IArray!5897) Bool)

(assert (=> b!821462 (= e!542753 (inv!11232 (xs!5635 (c!133117 v!5037))))))

(assert (=> b!821403 (= tp!256721 (and (inv!11225 (c!133117 v!5037)) e!542753))))

(assert (= (and b!821403 (is-Node!2946 (c!133117 v!5037))) b!821461))

(assert (= (and b!821403 (is-Leaf!4327 (c!133117 v!5037))) b!821462))

(declare-fun m!1062547 () Bool)

(assert (=> b!821461 m!1062547))

(declare-fun m!1062549 () Bool)

(assert (=> b!821461 m!1062549))

(declare-fun m!1062551 () Bool)

(assert (=> b!821462 m!1062551))

(assert (=> b!821403 m!1062503))

(push 1)

(assert (not b!821413))

(assert (not b!821462))

(assert (not b!821461))

(assert (not d!258701))

(assert (not b!821415))

(assert (not d!258705))

(assert (not b!821437))

(assert (not b!821438))

(assert (not b!821403))

(assert (not b!821439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

