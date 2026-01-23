; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!770 () Bool)

(assert start!770)

(declare-datatypes ((List!100 0))(
  ( (Nil!98) (Cons!98 (h!5494 (_ BitVec 16)) (t!14579 List!100)) )
))
(declare-datatypes ((TokenValue!56 0))(
  ( (FloatLiteralValue!112 (text!837 List!100)) (TokenValueExt!55 (__x!349 Int)) (Broken!280 (value!4629 List!100)) (Object!57) (End!56) (Def!56) (Underscore!56) (Match!56) (Else!56) (Error!56) (Case!56) (If!56) (Extends!56) (Abstract!56) (Class!56) (Val!56) (DelimiterValue!112 (del!116 List!100)) (KeywordValue!62 (value!4630 List!100)) (CommentValue!112 (value!4631 List!100)) (WhitespaceValue!112 (value!4632 List!100)) (IndentationValue!56 (value!4633 List!100)) (String!477) (Int32!56) (Broken!281 (value!4634 List!100)) (Boolean!57) (Unit!57) (OperatorValue!59 (op!116 List!100)) (IdentifierValue!112 (value!4635 List!100)) (IdentifierValue!113 (value!4636 List!100)) (WhitespaceValue!113 (value!4637 List!100)) (True!112) (False!112) (Broken!282 (value!4638 List!100)) (Broken!283 (value!4639 List!100)) (True!113) (RightBrace!56) (RightBracket!56) (Colon!56) (Null!56) (Comma!56) (LeftBracket!56) (False!113) (LeftBrace!56) (ImaginaryLiteralValue!56 (text!838 List!100)) (StringLiteralValue!168 (value!4640 List!100)) (EOFValue!56 (value!4641 List!100)) (IdentValue!56 (value!4642 List!100)) (DelimiterValue!113 (value!4643 List!100)) (DedentValue!56 (value!4644 List!100)) (NewLineValue!56 (value!4645 List!100)) (IntegerValue!168 (value!4646 (_ BitVec 32)) (text!839 List!100)) (IntegerValue!169 (value!4647 Int) (text!840 List!100)) (Times!56) (Or!56) (Equal!56) (Minus!56) (Broken!284 (value!4648 List!100)) (And!56) (Div!56) (LessEqual!56) (Mod!56) (Concat!176) (Not!56) (Plus!56) (SpaceValue!56 (value!4649 List!100)) (IntegerValue!170 (value!4650 Int) (text!841 List!100)) (StringLiteralValue!169 (text!842 List!100)) (FloatLiteralValue!113 (text!843 List!100)) (BytesLiteralValue!56 (value!4651 List!100)) (CommentValue!113 (value!4652 List!100)) (StringLiteralValue!170 (value!4653 List!100)) (ErrorTokenValue!56 (msg!117 List!100)) )
))
(declare-fun inv!21 (TokenValue!56) Bool)

(assert (=> start!770 (not (inv!21 Object!57))))

(declare-fun bs!336 () Bool)

(assert (= bs!336 start!770))

(declare-fun m!3971 () Bool)

(assert (=> bs!336 m!3971))

(push 1)

(assert (not start!770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27003 () Bool)

(declare-fun e!10671 () Bool)

(declare-fun inv!16 (TokenValue!56) Bool)

(assert (=> b!27003 (= e!10671 (inv!16 Object!57))))

(declare-fun b!27004 () Bool)

(declare-fun e!10672 () Bool)

(declare-fun inv!17 (TokenValue!56) Bool)

(assert (=> b!27004 (= e!10672 (inv!17 Object!57))))

(declare-fun d!1775 () Bool)

(declare-fun c!14608 () Bool)

(assert (=> d!1775 (= c!14608 (is-IntegerValue!168 Object!57))))

(assert (=> d!1775 (= (inv!21 Object!57) e!10671)))

(declare-fun b!27005 () Bool)

(declare-fun res!25561 () Bool)

(declare-fun e!10670 () Bool)

(assert (=> b!27005 (=> res!25561 e!10670)))

(assert (=> b!27005 (= res!25561 (not (is-IntegerValue!170 Object!57)))))

(assert (=> b!27005 (= e!10672 e!10670)))

(declare-fun b!27006 () Bool)

(assert (=> b!27006 (= e!10671 e!10672)))

(declare-fun c!14607 () Bool)

(assert (=> b!27006 (= c!14607 (is-IntegerValue!169 Object!57))))

(declare-fun b!27007 () Bool)

(declare-fun inv!15 (TokenValue!56) Bool)

(assert (=> b!27007 (= e!10670 (inv!15 Object!57))))

(assert (= (and d!1775 c!14608) b!27003))

(assert (= (and d!1775 (not c!14608)) b!27006))

(assert (= (and b!27006 c!14607) b!27004))

(assert (= (and b!27006 (not c!14607)) b!27005))

(assert (= (and b!27005 (not res!25561)) b!27007))

(declare-fun m!3975 () Bool)

(assert (=> b!27003 m!3975))

(declare-fun m!3977 () Bool)

(assert (=> b!27004 m!3977))

(declare-fun m!3979 () Bool)

(assert (=> b!27007 m!3979))

(assert (=> start!770 d!1775))

(push 1)

(assert (not b!27007))

(assert (not b!27003))

(assert (not b!27004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

