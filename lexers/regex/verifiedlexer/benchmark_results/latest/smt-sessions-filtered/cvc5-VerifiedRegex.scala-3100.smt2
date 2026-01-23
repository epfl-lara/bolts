; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183892 () Bool)

(assert start!183892)

(assert (=> start!183892 true))

(declare-fun b!1844769 () Bool)

(assert (=> b!1844769 true))

(assert (=> b!1844769 true))

(declare-fun b!1844776 () Bool)

(declare-fun e!1178903 () Bool)

(declare-datatypes ((List!20415 0))(
  ( (Nil!20343) (Cons!20343 (h!25744 (_ BitVec 16)) (t!171968 List!20415)) )
))
(declare-datatypes ((IArray!13485 0))(
  ( (IArray!13486 (innerList!6800 List!20415)) )
))
(declare-datatypes ((Conc!6740 0))(
  ( (Node!6740 (left!16280 Conc!6740) (right!16610 Conc!6740) (csize!13710 Int) (cheight!6951 Int)) (Leaf!9841 (xs!9616 IArray!13485) (csize!13711 Int)) (Empty!6740) )
))
(declare-datatypes ((BalanceConc!13402 0))(
  ( (BalanceConc!13403 (c!301185 Conc!6740)) )
))
(declare-fun x!368624 () BalanceConc!13402)

(declare-fun tp!521689 () Bool)

(declare-fun inv!26639 (Conc!6740) Bool)

(assert (=> b!1844776 (= e!1178903 (and (inv!26639 (c!301185 x!368624)) tp!521689))))

(declare-fun inst!1040 () Bool)

(declare-datatypes ((IdentifierValueInjection!12 0))(
  ( (IdentifierValueInjection!13) )
))
(declare-fun thiss!4669 () IdentifierValueInjection!12)

(declare-fun inv!26640 (BalanceConc!13402) Bool)

(declare-fun list!8271 (BalanceConc!13402) List!20415)

(declare-datatypes ((TokenValue!3756 0))(
  ( (FloatLiteralValue!7512 (text!26737 List!20415)) (TokenValueExt!3755 (__x!12804 Int)) (Broken!18780 (value!114264 List!20415)) (Object!3827) (End!3756) (Def!3756) (Underscore!3756) (Match!3756) (Else!3756) (Error!3756) (Case!3756) (If!3756) (Extends!3756) (Abstract!3756) (Class!3756) (Val!3756) (DelimiterValue!7512 (del!3816 List!20415)) (KeywordValue!3762 (value!114265 List!20415)) (CommentValue!7512 (value!114266 List!20415)) (WhitespaceValue!7512 (value!114267 List!20415)) (IndentationValue!3756 (value!114268 List!20415)) (String!23293) (Int32!3756) (Broken!18781 (value!114269 List!20415)) (Boolean!3757) (Unit!35031) (OperatorValue!3759 (op!3816 List!20415)) (IdentifierValue!7512 (value!114270 List!20415)) (IdentifierValue!7513 (value!114271 List!20415)) (WhitespaceValue!7513 (value!114272 List!20415)) (True!7512) (False!7512) (Broken!18782 (value!114273 List!20415)) (Broken!18783 (value!114274 List!20415)) (True!7513) (RightBrace!3756) (RightBracket!3756) (Colon!3756) (Null!3756) (Comma!3756) (LeftBracket!3756) (False!7513) (LeftBrace!3756) (ImaginaryLiteralValue!3756 (text!26738 List!20415)) (StringLiteralValue!11268 (value!114275 List!20415)) (EOFValue!3756 (value!114276 List!20415)) (IdentValue!3756 (value!114277 List!20415)) (DelimiterValue!7513 (value!114278 List!20415)) (DedentValue!3756 (value!114279 List!20415)) (NewLineValue!3756 (value!114280 List!20415)) (IntegerValue!11268 (value!114281 (_ BitVec 32)) (text!26739 List!20415)) (IntegerValue!11269 (value!114282 Int) (text!26740 List!20415)) (Times!3756) (Or!3756) (Equal!3756) (Minus!3756) (Broken!18784 (value!114283 List!20415)) (And!3756) (Div!3756) (LessEqual!3756) (Mod!3756) (Concat!8746) (Not!3756) (Plus!3756) (SpaceValue!3756 (value!114284 List!20415)) (IntegerValue!11270 (value!114285 Int) (text!26741 List!20415)) (StringLiteralValue!11269 (text!26742 List!20415)) (FloatLiteralValue!7513 (text!26743 List!20415)) (BytesLiteralValue!3756 (value!114286 List!20415)) (CommentValue!7513 (value!114287 List!20415)) (StringLiteralValue!11270 (value!114288 List!20415)) (ErrorTokenValue!3756 (msg!3817 List!20415)) )
))
(declare-fun toCharacters!21 (IdentifierValueInjection!12 TokenValue!3756) BalanceConc!13402)

(declare-fun toValue!28 (IdentifierValueInjection!12 BalanceConc!13402) TokenValue!3756)

(assert (=> start!183892 (= inst!1040 (=> (and (inv!26640 x!368624) e!1178903) (= (list!8271 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368624))) (list!8271 x!368624))))))

(assert (= start!183892 b!1844776))

(declare-fun m!2273063 () Bool)

(assert (=> b!1844776 m!2273063))

(declare-fun m!2273065 () Bool)

(assert (=> start!183892 m!2273065))

(declare-fun m!2273067 () Bool)

(assert (=> start!183892 m!2273067))

(declare-fun m!2273069 () Bool)

(assert (=> start!183892 m!2273069))

(assert (=> start!183892 m!2273065))

(assert (=> start!183892 m!2273067))

(declare-fun m!2273071 () Bool)

(assert (=> start!183892 m!2273071))

(declare-fun m!2273073 () Bool)

(assert (=> start!183892 m!2273073))

(declare-fun bs!408882 () Bool)

(declare-fun neg-inst!1040 () Bool)

(declare-fun s!220800 () Bool)

(assert (= bs!408882 (and neg-inst!1040 s!220800)))

(assert (=> bs!408882 (=> true (= (list!8271 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368624))) (list!8271 x!368624)))))

(assert (=> m!2273065 m!2273067))

(assert (=> m!2273065 m!2273069))

(assert (=> m!2273065 m!2273071))

(assert (=> m!2273065 s!220800))

(assert (=> m!2273071 s!220800))

(declare-fun bs!408883 () Bool)

(assert (= bs!408883 (and neg-inst!1040 start!183892)))

(assert (=> bs!408883 (= true inst!1040)))

(declare-fun res!828497 () Bool)

(declare-fun e!1178902 () Bool)

(assert (=> start!183892 (=> res!828497 e!1178902)))

(declare-fun lambda!72447 () Int)

(declare-fun Forall!941 (Int) Bool)

(assert (=> start!183892 (= res!828497 (not (Forall!941 lambda!72447)))))

(assert (=> start!183892 (= (Forall!941 lambda!72447) inst!1040)))

(assert (=> start!183892 (not e!1178902)))

(assert (=> start!183892 true))

(declare-fun lambda!72448 () Int)

(declare-fun lambda!72449 () Int)

(declare-fun semiInverseModEq!1473 (Int Int) Bool)

(assert (=> b!1844769 (= e!1178902 (semiInverseModEq!1473 lambda!72448 lambda!72449))))

(assert (=> b!1844769 (= (semiInverseModEq!1473 lambda!72448 lambda!72449) (Forall!941 lambda!72447))))

(assert (= neg-inst!1040 inst!1040))

(assert (= (and start!183892 (not res!828497)) b!1844769))

(declare-fun m!2273075 () Bool)

(assert (=> start!183892 m!2273075))

(assert (=> start!183892 m!2273075))

(declare-fun m!2273077 () Bool)

(assert (=> b!1844769 m!2273077))

(assert (=> b!1844769 m!2273077))

(assert (=> b!1844769 m!2273075))

(push 1)

(assert (not start!183892))

(assert (not b!1844769))

(assert (not bs!408882))

(assert (not b!1844776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

