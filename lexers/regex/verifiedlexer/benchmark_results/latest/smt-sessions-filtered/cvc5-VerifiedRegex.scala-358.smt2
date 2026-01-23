; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11360 () Bool)

(assert start!11360)

(assert (=> start!11360 true))

(declare-fun b!110486 () Bool)

(assert (=> b!110486 true))

(assert (=> b!110486 true))

(declare-fun b!110493 () Bool)

(declare-fun e!61678 () Bool)

(declare-datatypes ((List!1788 0))(
  ( (Nil!1782) (Cons!1782 (h!7179 (_ BitVec 16)) (t!22193 List!1788)) )
))
(declare-datatypes ((IArray!1109 0))(
  ( (IArray!1110 (innerList!612 List!1788)) )
))
(declare-datatypes ((Conc!554 0))(
  ( (Node!554 (left!1504 Conc!554) (right!1834 Conc!554) (csize!1338 Int) (cheight!765 Int)) (Leaf!913 (xs!3149 IArray!1109) (csize!1339 Int)) (Empty!554) )
))
(declare-datatypes ((BalanceConc!1112 0))(
  ( (BalanceConc!1113 (c!26242 Conc!554)) )
))
(declare-fun x!31736 () BalanceConc!1112)

(declare-fun tp!59778 () Bool)

(declare-fun inv!2243 (Conc!554) Bool)

(assert (=> b!110493 (= e!61678 (and (inv!2243 (c!26242 x!31736)) tp!59778))))

(declare-fun inst!104 () Bool)

(declare-datatypes ((EOFValueInjection!8 0))(
  ( (EOFValueInjection!9) )
))
(declare-fun thiss!5344 () EOFValueInjection!8)

(declare-fun inv!2244 (BalanceConc!1112) Bool)

(declare-fun list!758 (BalanceConc!1112) List!1788)

(declare-datatypes ((TokenValue!376 0))(
  ( (FloatLiteralValue!752 (text!3077 List!1788)) (TokenValueExt!375 (__x!1835 Int)) (Broken!1880 (value!13930 List!1788)) (Object!381) (End!376) (Def!376) (Underscore!376) (Match!376) (Else!376) (Error!376) (Case!376) (If!376) (Extends!376) (Abstract!376) (Class!376) (Val!376) (DelimiterValue!752 (del!436 List!1788)) (KeywordValue!382 (value!13931 List!1788)) (CommentValue!752 (value!13932 List!1788)) (WhitespaceValue!752 (value!13933 List!1788)) (IndentationValue!376 (value!13934 List!1788)) (String!2369) (Int32!376) (Broken!1881 (value!13935 List!1788)) (Boolean!377) (Unit!1264) (OperatorValue!379 (op!436 List!1788)) (IdentifierValue!752 (value!13936 List!1788)) (IdentifierValue!753 (value!13937 List!1788)) (WhitespaceValue!753 (value!13938 List!1788)) (True!752) (False!752) (Broken!1882 (value!13939 List!1788)) (Broken!1883 (value!13940 List!1788)) (True!753) (RightBrace!376) (RightBracket!376) (Colon!376) (Null!376) (Comma!376) (LeftBracket!376) (False!753) (LeftBrace!376) (ImaginaryLiteralValue!376 (text!3078 List!1788)) (StringLiteralValue!1128 (value!13941 List!1788)) (EOFValue!376 (value!13942 List!1788)) (IdentValue!376 (value!13943 List!1788)) (DelimiterValue!753 (value!13944 List!1788)) (DedentValue!376 (value!13945 List!1788)) (NewLineValue!376 (value!13946 List!1788)) (IntegerValue!1128 (value!13947 (_ BitVec 32)) (text!3079 List!1788)) (IntegerValue!1129 (value!13948 Int) (text!3080 List!1788)) (Times!376) (Or!376) (Equal!376) (Minus!376) (Broken!1884 (value!13949 List!1788)) (And!376) (Div!376) (LessEqual!376) (Mod!376) (Concat!818) (Not!376) (Plus!376) (SpaceValue!376 (value!13950 List!1788)) (IntegerValue!1130 (value!13951 Int) (text!3081 List!1788)) (StringLiteralValue!1129 (text!3082 List!1788)) (FloatLiteralValue!753 (text!3083 List!1788)) (BytesLiteralValue!376 (value!13952 List!1788)) (CommentValue!753 (value!13953 List!1788)) (StringLiteralValue!1130 (value!13954 List!1788)) (ErrorTokenValue!376 (msg!437 List!1788)) )
))
(declare-fun toCharacters!30 (EOFValueInjection!8 TokenValue!376) BalanceConc!1112)

(declare-fun toValue!37 (EOFValueInjection!8 BalanceConc!1112) TokenValue!376)

(assert (=> start!11360 (= inst!104 (=> (and (inv!2244 x!31736) e!61678) (= (list!758 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31736))) (list!758 x!31736))))))

(assert (= start!11360 b!110493))

(declare-fun m!100768 () Bool)

(assert (=> b!110493 m!100768))

(declare-fun m!100770 () Bool)

(assert (=> start!11360 m!100770))

(declare-fun m!100772 () Bool)

(assert (=> start!11360 m!100772))

(declare-fun m!100774 () Bool)

(assert (=> start!11360 m!100774))

(assert (=> start!11360 m!100774))

(declare-fun m!100776 () Bool)

(assert (=> start!11360 m!100776))

(assert (=> start!11360 m!100776))

(declare-fun m!100778 () Bool)

(assert (=> start!11360 m!100778))

(declare-fun bs!11010 () Bool)

(declare-fun neg-inst!104 () Bool)

(declare-fun s!16511 () Bool)

(assert (= bs!11010 (and neg-inst!104 s!16511)))

(assert (=> bs!11010 (=> true (= (list!758 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31736))) (list!758 x!31736)))))

(assert (=> m!100770 m!100774))

(assert (=> m!100770 m!100776))

(assert (=> m!100770 m!100778))

(assert (=> m!100770 s!16511))

(assert (=> m!100774 s!16511))

(declare-fun bs!11011 () Bool)

(assert (= bs!11011 (and neg-inst!104 start!11360)))

(assert (=> bs!11011 (= true inst!104)))

(declare-fun res!53356 () Bool)

(declare-fun e!61677 () Bool)

(assert (=> start!11360 (=> res!53356 e!61677)))

(declare-fun lambda!2745 () Int)

(declare-fun Forall!91 (Int) Bool)

(assert (=> start!11360 (= res!53356 (not (Forall!91 lambda!2745)))))

(assert (=> start!11360 (= (Forall!91 lambda!2745) inst!104)))

(assert (=> start!11360 (not e!61677)))

(assert (=> start!11360 true))

(declare-fun lambda!2746 () Int)

(declare-fun lambda!2747 () Int)

(declare-fun semiInverseModEq!108 (Int Int) Bool)

(assert (=> b!110486 (= e!61677 (semiInverseModEq!108 lambda!2746 lambda!2747))))

(assert (=> b!110486 (= (semiInverseModEq!108 lambda!2746 lambda!2747) (Forall!91 lambda!2745))))

(assert (= neg-inst!104 inst!104))

(assert (= (and start!11360 (not res!53356)) b!110486))

(declare-fun m!100780 () Bool)

(assert (=> start!11360 m!100780))

(assert (=> start!11360 m!100780))

(declare-fun m!100782 () Bool)

(assert (=> b!110486 m!100782))

(assert (=> b!110486 m!100782))

(assert (=> b!110486 m!100780))

(push 1)

(assert (not bs!11010))

(assert (not b!110493))

(assert (not b!110486))

(assert (not start!11360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

