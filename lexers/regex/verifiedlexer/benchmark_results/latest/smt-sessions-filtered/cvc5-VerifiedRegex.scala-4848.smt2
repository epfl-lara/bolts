; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248924 () Bool)

(assert start!248924)

(assert (=> start!248924 true))

(declare-fun b!2576406 () Bool)

(assert (=> b!2576406 true))

(assert (=> b!2576406 true))

(declare-fun b!2576413 () Bool)

(declare-fun e!1625681 () Bool)

(declare-datatypes ((List!29735 0))(
  ( (Nil!29635) (Cons!29635 (h!35055 (_ BitVec 16)) (t!211451 List!29735)) )
))
(declare-datatypes ((IArray!18473 0))(
  ( (IArray!18474 (innerList!9294 List!29735)) )
))
(declare-datatypes ((Conc!9234 0))(
  ( (Node!9234 (left!22520 Conc!9234) (right!22850 Conc!9234) (csize!18698 Int) (cheight!9445 Int)) (Leaf!14083 (xs!12218 IArray!18473) (csize!18699 Int)) (Empty!9234) )
))
(declare-datatypes ((BalanceConc!18082 0))(
  ( (BalanceConc!18083 (c!414974 Conc!9234)) )
))
(declare-fun x!462568 () BalanceConc!18082)

(declare-fun tp!818931 () Bool)

(declare-fun inv!39881 (Conc!9234) Bool)

(assert (=> b!2576413 (= e!1625681 (and (inv!39881 (c!414974 x!462568)) tp!818931))))

(declare-datatypes ((NewLineValueInjection!8 0))(
  ( (NewLineValueInjection!9) )
))
(declare-fun thiss!4369 () NewLineValueInjection!8)

(declare-fun inst!1406 () Bool)

(declare-fun inv!39882 (BalanceConc!18082) Bool)

(declare-fun list!11168 (BalanceConc!18082) List!29735)

(declare-datatypes ((TokenValue!4698 0))(
  ( (FloatLiteralValue!9396 (text!33331 List!29735)) (TokenValueExt!4697 (__x!19217 Int)) (Broken!23490 (value!144824 List!29735)) (Object!4797) (End!4698) (Def!4698) (Underscore!4698) (Match!4698) (Else!4698) (Error!4698) (Case!4698) (If!4698) (Extends!4698) (Abstract!4698) (Class!4698) (Val!4698) (DelimiterValue!9396 (del!4758 List!29735)) (KeywordValue!4704 (value!144825 List!29735)) (CommentValue!9396 (value!144826 List!29735)) (WhitespaceValue!9396 (value!144827 List!29735)) (IndentationValue!4698 (value!144828 List!29735)) (String!32923) (Int32!4698) (Broken!23491 (value!144829 List!29735)) (Boolean!4699) (Unit!43481) (OperatorValue!4701 (op!4758 List!29735)) (IdentifierValue!9396 (value!144830 List!29735)) (IdentifierValue!9397 (value!144831 List!29735)) (WhitespaceValue!9397 (value!144832 List!29735)) (True!9396) (False!9396) (Broken!23492 (value!144833 List!29735)) (Broken!23493 (value!144834 List!29735)) (True!9397) (RightBrace!4698) (RightBracket!4698) (Colon!4698) (Null!4698) (Comma!4698) (LeftBracket!4698) (False!9397) (LeftBrace!4698) (ImaginaryLiteralValue!4698 (text!33332 List!29735)) (StringLiteralValue!14094 (value!144835 List!29735)) (EOFValue!4698 (value!144836 List!29735)) (IdentValue!4698 (value!144837 List!29735)) (DelimiterValue!9397 (value!144838 List!29735)) (DedentValue!4698 (value!144839 List!29735)) (NewLineValue!4698 (value!144840 List!29735)) (IntegerValue!14094 (value!144841 (_ BitVec 32)) (text!33333 List!29735)) (IntegerValue!14095 (value!144842 Int) (text!33334 List!29735)) (Times!4698) (Or!4698) (Equal!4698) (Minus!4698) (Broken!23494 (value!144843 List!29735)) (And!4698) (Div!4698) (LessEqual!4698) (Mod!4698) (Concat!12342) (Not!4698) (Plus!4698) (SpaceValue!4698 (value!144844 List!29735)) (IntegerValue!14096 (value!144845 Int) (text!33335 List!29735)) (StringLiteralValue!14095 (text!33336 List!29735)) (FloatLiteralValue!9397 (text!33337 List!29735)) (BytesLiteralValue!4698 (value!144846 List!29735)) (CommentValue!9397 (value!144847 List!29735)) (StringLiteralValue!14096 (value!144848 List!29735)) (ErrorTokenValue!4698 (msg!4759 List!29735)) )
))
(declare-fun toCharacters!17 (NewLineValueInjection!8 TokenValue!4698) BalanceConc!18082)

(declare-fun toValue!24 (NewLineValueInjection!8 BalanceConc!18082) TokenValue!4698)

(assert (=> start!248924 (= inst!1406 (=> (and (inv!39882 x!462568) e!1625681) (= (list!11168 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462568))) (list!11168 x!462568))))))

(assert (= start!248924 b!2576413))

(declare-fun m!2910963 () Bool)

(assert (=> b!2576413 m!2910963))

(declare-fun m!2910965 () Bool)

(assert (=> start!248924 m!2910965))

(declare-fun m!2910967 () Bool)

(assert (=> start!248924 m!2910967))

(assert (=> start!248924 m!2910967))

(declare-fun m!2910969 () Bool)

(assert (=> start!248924 m!2910969))

(declare-fun m!2910971 () Bool)

(assert (=> start!248924 m!2910971))

(assert (=> start!248924 m!2910969))

(declare-fun m!2910973 () Bool)

(assert (=> start!248924 m!2910973))

(declare-fun bs!470182 () Bool)

(declare-fun neg-inst!1406 () Bool)

(declare-fun s!228112 () Bool)

(assert (= bs!470182 (and neg-inst!1406 s!228112)))

(assert (=> bs!470182 (=> true (= (list!11168 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462568))) (list!11168 x!462568)))))

(assert (=> m!2910971 m!2910967))

(assert (=> m!2910971 m!2910969))

(assert (=> m!2910971 m!2910973))

(assert (=> m!2910971 s!228112))

(assert (=> m!2910967 s!228112))

(declare-fun bs!470183 () Bool)

(assert (= bs!470183 (and neg-inst!1406 start!248924)))

(assert (=> bs!470183 (= true inst!1406)))

(declare-fun res!1083702 () Bool)

(declare-fun e!1625680 () Bool)

(assert (=> start!248924 (=> res!1083702 e!1625680)))

(declare-fun lambda!94854 () Int)

(declare-fun Forall!1141 (Int) Bool)

(assert (=> start!248924 (= res!1083702 (not (Forall!1141 lambda!94854)))))

(assert (=> start!248924 (= (Forall!1141 lambda!94854) inst!1406)))

(assert (=> start!248924 (not e!1625680)))

(assert (=> start!248924 true))

(declare-fun lambda!94855 () Int)

(declare-fun lambda!94856 () Int)

(declare-fun semiInverseModEq!1861 (Int Int) Bool)

(assert (=> b!2576406 (= e!1625680 (semiInverseModEq!1861 lambda!94855 lambda!94856))))

(assert (=> b!2576406 (= (semiInverseModEq!1861 lambda!94855 lambda!94856) (Forall!1141 lambda!94854))))

(assert (= neg-inst!1406 inst!1406))

(assert (= (and start!248924 (not res!1083702)) b!2576406))

(declare-fun m!2910975 () Bool)

(assert (=> start!248924 m!2910975))

(assert (=> start!248924 m!2910975))

(declare-fun m!2910977 () Bool)

(assert (=> b!2576406 m!2910977))

(assert (=> b!2576406 m!2910977))

(assert (=> b!2576406 m!2910975))

(push 1)

(assert (not b!2576406))

(assert (not start!248924))

(assert (not bs!470182))

(assert (not b!2576413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

