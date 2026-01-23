; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!227928 () Bool)

(assert start!227928)

(assert (=> start!227928 true))

(declare-fun b!2311514 () Bool)

(assert (=> b!2311514 true))

(assert (=> b!2311514 true))

(declare-fun b!2311521 () Bool)

(declare-fun e!1481387 () Bool)

(declare-datatypes ((List!27612 0))(
  ( (Nil!27514) (Cons!27514 (h!32915 (_ BitVec 16)) (t!207126 List!27612)) )
))
(declare-datatypes ((IArray!17969 0))(
  ( (IArray!17970 (innerList!9042 List!27612)) )
))
(declare-datatypes ((Conc!8982 0))(
  ( (Node!8982 (left!20852 Conc!8982) (right!21182 Conc!8982) (csize!18194 Int) (cheight!9193 Int)) (Leaf!13179 (xs!11924 IArray!17969) (csize!18195 Int)) (Empty!8982) )
))
(declare-datatypes ((BalanceConc!17696 0))(
  ( (BalanceConc!17697 (c!366497 Conc!8982)) )
))
(declare-fun x!440774 () BalanceConc!17696)

(declare-fun tp!733388 () Bool)

(declare-fun inv!37193 (Conc!8982) Bool)

(assert (=> b!2311521 (= e!1481387 (and (inv!37193 (c!366497 x!440774)) tp!733388))))

(declare-fun inst!1310 () Bool)

(declare-datatypes ((IntegerValueInjection!116 0))(
  ( (IntegerValueInjection!117) )
))
(declare-fun thiss!2978 () IntegerValueInjection!116)

(declare-fun inv!37194 (BalanceConc!17696) Bool)

(declare-fun list!10884 (BalanceConc!17696) List!27612)

(declare-datatypes ((TokenValue!4578 0))(
  ( (FloatLiteralValue!9156 (text!32491 List!27612)) (TokenValueExt!4577 (__x!18214 Int)) (Broken!22890 (value!139672 List!27612)) (Object!4675) (End!4578) (Def!4578) (Underscore!4578) (Match!4578) (Else!4578) (Error!4578) (Case!4578) (If!4578) (Extends!4578) (Abstract!4578) (Class!4578) (Val!4578) (DelimiterValue!9156 (del!4638 List!27612)) (KeywordValue!4584 (value!139673 List!27612)) (CommentValue!9156 (value!139674 List!27612)) (WhitespaceValue!9156 (value!139675 List!27612)) (IndentationValue!4578 (value!139676 List!27612)) (String!30003) (Int32!4578) (Broken!22891 (value!139677 List!27612)) (Boolean!4579) (Unit!40438) (OperatorValue!4581 (op!4638 List!27612)) (IdentifierValue!9156 (value!139678 List!27612)) (IdentifierValue!9157 (value!139679 List!27612)) (WhitespaceValue!9157 (value!139680 List!27612)) (True!9156) (False!9156) (Broken!22892 (value!139681 List!27612)) (Broken!22893 (value!139682 List!27612)) (True!9157) (RightBrace!4578) (RightBracket!4578) (Colon!4578) (Null!4578) (Comma!4578) (LeftBracket!4578) (False!9157) (LeftBrace!4578) (ImaginaryLiteralValue!4578 (text!32492 List!27612)) (StringLiteralValue!13734 (value!139683 List!27612)) (EOFValue!4578 (value!139684 List!27612)) (IdentValue!4578 (value!139685 List!27612)) (DelimiterValue!9157 (value!139686 List!27612)) (DedentValue!4578 (value!139687 List!27612)) (NewLineValue!4578 (value!139688 List!27612)) (IntegerValue!13734 (value!139689 (_ BitVec 32)) (text!32493 List!27612)) (IntegerValue!13735 (value!139690 Int) (text!32494 List!27612)) (Times!4578) (Or!4578) (Equal!4578) (Minus!4578) (Broken!22894 (value!139691 List!27612)) (And!4578) (Div!4578) (LessEqual!4578) (Mod!4578) (Concat!11342) (Not!4578) (Plus!4578) (SpaceValue!4578 (value!139692 List!27612)) (IntegerValue!13736 (value!139693 Int) (text!32495 List!27612)) (StringLiteralValue!13735 (text!32496 List!27612)) (FloatLiteralValue!9157 (text!32497 List!27612)) (BytesLiteralValue!4578 (value!139694 List!27612)) (CommentValue!9157 (value!139695 List!27612)) (StringLiteralValue!13736 (value!139696 List!27612)) (ErrorTokenValue!4578 (msg!4639 List!27612)) )
))
(declare-fun toCharacters!0 (IntegerValueInjection!116 TokenValue!4578) BalanceConc!17696)

(declare-fun toValue!7 (IntegerValueInjection!116 BalanceConc!17696) TokenValue!4578)

(assert (=> start!227928 (= inst!1310 (=> (and (inv!37194 x!440774) e!1481387) (= (list!10884 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440774))) (list!10884 x!440774))))))

(assert (= start!227928 b!2311521))

(declare-fun m!2738847 () Bool)

(assert (=> b!2311521 m!2738847))

(declare-fun m!2738849 () Bool)

(assert (=> start!227928 m!2738849))

(declare-fun m!2738851 () Bool)

(assert (=> start!227928 m!2738851))

(declare-fun m!2738853 () Bool)

(assert (=> start!227928 m!2738853))

(declare-fun m!2738855 () Bool)

(assert (=> start!227928 m!2738855))

(assert (=> start!227928 m!2738849))

(declare-fun m!2738857 () Bool)

(assert (=> start!227928 m!2738857))

(assert (=> start!227928 m!2738855))

(declare-fun bs!458314 () Bool)

(declare-fun neg-inst!1310 () Bool)

(declare-fun s!224729 () Bool)

(assert (= bs!458314 (and neg-inst!1310 s!224729)))

(assert (=> bs!458314 (=> true (= (list!10884 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440774))) (list!10884 x!440774)))))

(assert (=> m!2738855 m!2738849))

(assert (=> m!2738855 m!2738851))

(assert (=> m!2738855 m!2738857))

(assert (=> m!2738855 s!224729))

(assert (=> m!2738857 s!224729))

(declare-fun bs!458315 () Bool)

(assert (= bs!458315 (and neg-inst!1310 start!227928)))

(assert (=> bs!458315 (= true inst!1310)))

(declare-fun res!988165 () Bool)

(declare-fun e!1481386 () Bool)

(assert (=> start!227928 (=> res!988165 e!1481386)))

(declare-fun lambda!86104 () Int)

(declare-fun Forall!1108 (Int) Bool)

(assert (=> start!227928 (= res!988165 (not (Forall!1108 lambda!86104)))))

(assert (=> start!227928 (= (Forall!1108 lambda!86104) inst!1310)))

(assert (=> start!227928 (not e!1481386)))

(assert (=> start!227928 true))

(declare-fun lambda!86105 () Int)

(declare-fun lambda!86106 () Int)

(declare-fun semiInverseModEq!1799 (Int Int) Bool)

(assert (=> b!2311514 (= e!1481386 (semiInverseModEq!1799 lambda!86105 lambda!86106))))

(assert (=> b!2311514 (= (semiInverseModEq!1799 lambda!86105 lambda!86106) (Forall!1108 lambda!86104))))

(assert (= neg-inst!1310 inst!1310))

(assert (= (and start!227928 (not res!988165)) b!2311514))

(declare-fun m!2738859 () Bool)

(assert (=> start!227928 m!2738859))

(assert (=> start!227928 m!2738859))

(declare-fun m!2738861 () Bool)

(assert (=> b!2311514 m!2738861))

(assert (=> b!2311514 m!2738861))

(assert (=> b!2311514 m!2738859))

(push 1)

(assert (not b!2311521))

(assert (not bs!458314))

(assert (not start!227928))

(assert (not b!2311514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

