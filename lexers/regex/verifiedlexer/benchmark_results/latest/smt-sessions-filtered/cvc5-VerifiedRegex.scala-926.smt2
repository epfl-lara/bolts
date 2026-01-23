; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47514 () Bool)

(assert start!47514)

(declare-datatypes ((List!4801 0))(
  ( (Nil!4791) (Cons!4791 (h!10192 (_ BitVec 16)) (t!73391 List!4801)) )
))
(declare-datatypes ((IArray!3157 0))(
  ( (IArray!3158 (innerList!1636 List!4801)) )
))
(declare-datatypes ((Conc!1578 0))(
  ( (Node!1578 (left!4154 Conc!1578) (right!4484 Conc!1578) (csize!3386 Int) (cheight!1789 Int)) (Leaf!2505 (xs!4213 IArray!3157) (csize!3387 Int)) (Empty!1578) )
))
(declare-datatypes ((BalanceConc!3164 0))(
  ( (BalanceConc!3165 (c!100544 Conc!1578)) )
))
(declare-fun v!5200 () BalanceConc!3164)

(declare-datatypes ((TokenValue!900 0))(
  ( (FloatLiteralValue!1800 (text!6745 List!4801)) (TokenValueExt!899 (__x!3493 Int)) (Broken!4500 (value!29759 List!4801)) (Object!909) (End!900) (Def!900) (Underscore!900) (Match!900) (Else!900) (Error!900) (Case!900) (If!900) (Extends!900) (Abstract!900) (Class!900) (Val!900) (DelimiterValue!1800 (del!960 List!4801)) (KeywordValue!906 (value!29760 List!4801)) (CommentValue!1800 (value!29761 List!4801)) (WhitespaceValue!1800 (value!29762 List!4801)) (IndentationValue!900 (value!29763 List!4801)) (String!6173) (Int32!900) (Broken!4501 (value!29764 List!4801)) (Boolean!901) (Unit!8774) (OperatorValue!903 (op!960 List!4801)) (IdentifierValue!1800 (value!29765 List!4801)) (IdentifierValue!1801 (value!29766 List!4801)) (WhitespaceValue!1801 (value!29767 List!4801)) (True!1800) (False!1800) (Broken!4502 (value!29768 List!4801)) (Broken!4503 (value!29769 List!4801)) (True!1801) (RightBrace!900) (RightBracket!900) (Colon!900) (Null!900) (Comma!900) (LeftBracket!900) (False!1801) (LeftBrace!900) (ImaginaryLiteralValue!900 (text!6746 List!4801)) (StringLiteralValue!2700 (value!29770 List!4801)) (EOFValue!900 (value!29771 List!4801)) (IdentValue!900 (value!29772 List!4801)) (DelimiterValue!1801 (value!29773 List!4801)) (DedentValue!900 (value!29774 List!4801)) (NewLineValue!900 (value!29775 List!4801)) (IntegerValue!2700 (value!29776 (_ BitVec 32)) (text!6747 List!4801)) (IntegerValue!2701 (value!29777 Int) (text!6748 List!4801)) (Times!900) (Or!900) (Equal!900) (Minus!900) (Broken!4504 (value!29778 List!4801)) (And!900) (Div!900) (LessEqual!900) (Mod!900) (Concat!2094) (Not!900) (Plus!900) (SpaceValue!900 (value!29779 List!4801)) (IntegerValue!2702 (value!29780 Int) (text!6749 List!4801)) (StringLiteralValue!2701 (text!6750 List!4801)) (FloatLiteralValue!1801 (text!6751 List!4801)) (BytesLiteralValue!900 (value!29781 List!4801)) (CommentValue!1801 (value!29782 List!4801)) (StringLiteralValue!2702 (value!29783 List!4801)) (ErrorTokenValue!900 (msg!961 List!4801)) )
))
(declare-fun inv!21 (TokenValue!900) Bool)

(declare-fun efficientList!67 (BalanceConc!3164) List!4801)

(assert (=> start!47514 (not (inv!21 (EOFValue!900 (efficientList!67 v!5200))))))

(declare-fun e!311607 () Bool)

(declare-fun inv!6049 (BalanceConc!3164) Bool)

(assert (=> start!47514 (and (inv!6049 v!5200) e!311607)))

(declare-fun b!520056 () Bool)

(declare-fun tp!161888 () Bool)

(declare-fun inv!6050 (Conc!1578) Bool)

(assert (=> b!520056 (= e!311607 (and (inv!6050 (c!100544 v!5200)) tp!161888))))

(assert (= start!47514 b!520056))

(declare-fun m!766733 () Bool)

(assert (=> start!47514 m!766733))

(declare-fun m!766735 () Bool)

(assert (=> start!47514 m!766735))

(declare-fun m!766737 () Bool)

(assert (=> start!47514 m!766737))

(declare-fun m!766739 () Bool)

(assert (=> b!520056 m!766739))

(push 1)

(assert (not b!520056))

(assert (not start!47514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185701 () Bool)

(declare-fun c!100548 () Bool)

(assert (=> d!185701 (= c!100548 (is-Node!1578 (c!100544 v!5200)))))

(declare-fun e!311615 () Bool)

(assert (=> d!185701 (= (inv!6050 (c!100544 v!5200)) e!311615)))

(declare-fun b!520066 () Bool)

(declare-fun inv!6053 (Conc!1578) Bool)

(assert (=> b!520066 (= e!311615 (inv!6053 (c!100544 v!5200)))))

(declare-fun b!520067 () Bool)

(declare-fun e!311616 () Bool)

(assert (=> b!520067 (= e!311615 e!311616)))

(declare-fun res!220779 () Bool)

(assert (=> b!520067 (= res!220779 (not (is-Leaf!2505 (c!100544 v!5200))))))

(assert (=> b!520067 (=> res!220779 e!311616)))

(declare-fun b!520068 () Bool)

(declare-fun inv!6054 (Conc!1578) Bool)

(assert (=> b!520068 (= e!311616 (inv!6054 (c!100544 v!5200)))))

(assert (= (and d!185701 c!100548) b!520066))

(assert (= (and d!185701 (not c!100548)) b!520067))

(assert (= (and b!520067 (not res!220779)) b!520068))

(declare-fun m!766749 () Bool)

(assert (=> b!520066 m!766749))

(declare-fun m!766751 () Bool)

(assert (=> b!520068 m!766751))

(assert (=> b!520056 d!185701))

(declare-fun b!520079 () Bool)

(declare-fun res!220782 () Bool)

(declare-fun e!311623 () Bool)

(assert (=> b!520079 (=> res!220782 e!311623)))

(assert (=> b!520079 (= res!220782 (not (is-IntegerValue!2702 (EOFValue!900 (efficientList!67 v!5200)))))))

(declare-fun e!311624 () Bool)

(assert (=> b!520079 (= e!311624 e!311623)))

(declare-fun b!520080 () Bool)

(declare-fun inv!15 (TokenValue!900) Bool)

(assert (=> b!520080 (= e!311623 (inv!15 (EOFValue!900 (efficientList!67 v!5200))))))

(declare-fun b!520081 () Bool)

(declare-fun inv!17 (TokenValue!900) Bool)

(assert (=> b!520081 (= e!311624 (inv!17 (EOFValue!900 (efficientList!67 v!5200))))))

(declare-fun b!520082 () Bool)

(declare-fun e!311625 () Bool)

(declare-fun inv!16 (TokenValue!900) Bool)

(assert (=> b!520082 (= e!311625 (inv!16 (EOFValue!900 (efficientList!67 v!5200))))))

(declare-fun b!520083 () Bool)

(assert (=> b!520083 (= e!311625 e!311624)))

(declare-fun c!100554 () Bool)

(assert (=> b!520083 (= c!100554 (is-IntegerValue!2701 (EOFValue!900 (efficientList!67 v!5200))))))

(declare-fun d!185705 () Bool)

(declare-fun c!100553 () Bool)

(assert (=> d!185705 (= c!100553 (is-IntegerValue!2700 (EOFValue!900 (efficientList!67 v!5200))))))

(assert (=> d!185705 (= (inv!21 (EOFValue!900 (efficientList!67 v!5200))) e!311625)))

(assert (= (and d!185705 c!100553) b!520082))

(assert (= (and d!185705 (not c!100553)) b!520083))

(assert (= (and b!520083 c!100554) b!520081))

(assert (= (and b!520083 (not c!100554)) b!520079))

(assert (= (and b!520079 (not res!220782)) b!520080))

(declare-fun m!766753 () Bool)

(assert (=> b!520080 m!766753))

(declare-fun m!766755 () Bool)

(assert (=> b!520081 m!766755))

(declare-fun m!766757 () Bool)

(assert (=> b!520082 m!766757))

(assert (=> start!47514 d!185705))

(declare-fun d!185707 () Bool)

(declare-fun lt!216740 () List!4801)

(declare-fun list!2026 (BalanceConc!3164) List!4801)

(assert (=> d!185707 (= lt!216740 (list!2026 v!5200))))

(declare-fun efficientList!69 (Conc!1578 List!4801) List!4801)

(declare-fun efficientList$default$2!23 (Conc!1578) List!4801)

(assert (=> d!185707 (= lt!216740 (efficientList!69 (c!100544 v!5200) (efficientList$default$2!23 (c!100544 v!5200))))))

(assert (=> d!185707 (= (efficientList!67 v!5200) lt!216740)))

(declare-fun bs!60493 () Bool)

(assert (= bs!60493 d!185707))

(declare-fun m!766759 () Bool)

(assert (=> bs!60493 m!766759))

(declare-fun m!766761 () Bool)

(assert (=> bs!60493 m!766761))

(assert (=> bs!60493 m!766761))

(declare-fun m!766763 () Bool)

(assert (=> bs!60493 m!766763))

(assert (=> start!47514 d!185707))

(declare-fun d!185709 () Bool)

(declare-fun isBalanced!488 (Conc!1578) Bool)

(assert (=> d!185709 (= (inv!6049 v!5200) (isBalanced!488 (c!100544 v!5200)))))

(declare-fun bs!60494 () Bool)

(assert (= bs!60494 d!185709))

(declare-fun m!766771 () Bool)

(assert (=> bs!60494 m!766771))

(assert (=> start!47514 d!185709))

(declare-fun b!520105 () Bool)

(declare-fun tp!161897 () Bool)

(declare-fun e!311639 () Bool)

(declare-fun tp!161896 () Bool)

(assert (=> b!520105 (= e!311639 (and (inv!6050 (left!4154 (c!100544 v!5200))) tp!161896 (inv!6050 (right!4484 (c!100544 v!5200))) tp!161897))))

(declare-fun b!520106 () Bool)

(declare-fun inv!6055 (IArray!3157) Bool)

(assert (=> b!520106 (= e!311639 (inv!6055 (xs!4213 (c!100544 v!5200))))))

(assert (=> b!520056 (= tp!161888 (and (inv!6050 (c!100544 v!5200)) e!311639))))

(assert (= (and b!520056 (is-Node!1578 (c!100544 v!5200))) b!520105))

(assert (= (and b!520056 (is-Leaf!2505 (c!100544 v!5200))) b!520106))

(declare-fun m!766773 () Bool)

(assert (=> b!520105 m!766773))

(declare-fun m!766775 () Bool)

(assert (=> b!520105 m!766775))

(declare-fun m!766777 () Bool)

(assert (=> b!520106 m!766777))

(assert (=> b!520056 m!766739))

(push 1)

(assert (not b!520056))

(assert (not b!520066))

(assert (not b!520106))

(assert (not b!520082))

(assert (not b!520068))

(assert (not b!520080))

(assert (not b!520081))

(assert (not b!520105))

(assert (not d!185707))

(assert (not d!185709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

