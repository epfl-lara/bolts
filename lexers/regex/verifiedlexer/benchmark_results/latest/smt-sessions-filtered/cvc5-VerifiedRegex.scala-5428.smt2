; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276046 () Bool)

(assert start!276046)

(declare-fun b!2838158 () Bool)

(declare-fun b_free!82021 () Bool)

(declare-fun b_next!82725 () Bool)

(assert (=> b!2838158 (= b_free!82021 (not b_next!82725))))

(declare-fun tp!908536 () Bool)

(declare-fun b_and!207939 () Bool)

(assert (=> b!2838158 (= tp!908536 b_and!207939)))

(declare-fun b_free!82023 () Bool)

(declare-fun b_next!82727 () Bool)

(assert (=> b!2838158 (= b_free!82023 (not b_next!82727))))

(declare-fun tp!908535 () Bool)

(declare-fun b_and!207941 () Bool)

(assert (=> b!2838158 (= tp!908535 b_and!207941)))

(declare-fun b!2838151 () Bool)

(declare-fun b_free!82025 () Bool)

(declare-fun b_next!82729 () Bool)

(assert (=> b!2838151 (= b_free!82025 (not b_next!82729))))

(declare-fun tp!908534 () Bool)

(declare-fun b_and!207943 () Bool)

(assert (=> b!2838151 (= tp!908534 b_and!207943)))

(declare-fun b_free!82027 () Bool)

(declare-fun b_next!82731 () Bool)

(assert (=> b!2838151 (= b_free!82027 (not b_next!82731))))

(declare-fun tp!908540 () Bool)

(declare-fun b_and!207945 () Bool)

(assert (=> b!2838151 (= tp!908540 b_and!207945)))

(declare-fun b!2838152 () Bool)

(declare-fun b_free!82029 () Bool)

(declare-fun b_next!82733 () Bool)

(assert (=> b!2838152 (= b_free!82029 (not b_next!82733))))

(declare-fun tp!908529 () Bool)

(declare-fun b_and!207947 () Bool)

(assert (=> b!2838152 (= tp!908529 b_and!207947)))

(declare-fun b_free!82031 () Bool)

(declare-fun b_next!82735 () Bool)

(assert (=> b!2838152 (= b_free!82031 (not b_next!82735))))

(declare-fun tp!908528 () Bool)

(declare-fun b_and!207949 () Bool)

(assert (=> b!2838152 (= tp!908528 b_and!207949)))

(declare-fun e!1797478 () Bool)

(declare-fun b!2838149 () Bool)

(declare-fun tp!908538 () Bool)

(declare-fun e!1797484 () Bool)

(declare-datatypes ((C!17046 0))(
  ( (C!17047 (val!10535 Int)) )
))
(declare-datatypes ((List!33674 0))(
  ( (Nil!33550) (Cons!33550 (h!38970 C!17046) (t!232155 List!33674)) )
))
(declare-datatypes ((IArray!20847 0))(
  ( (IArray!20848 (innerList!10481 List!33674)) )
))
(declare-datatypes ((Conc!10421 0))(
  ( (Node!10421 (left!25301 Conc!10421) (right!25631 Conc!10421) (csize!21072 Int) (cheight!10632 Int)) (Leaf!15850 (xs!13533 IArray!20847) (csize!21073 Int)) (Empty!10421) )
))
(declare-datatypes ((BalanceConc!20480 0))(
  ( (BalanceConc!20481 (c!458460 Conc!10421)) )
))
(declare-datatypes ((List!33675 0))(
  ( (Nil!33551) (Cons!33551 (h!38971 (_ BitVec 16)) (t!232156 List!33675)) )
))
(declare-datatypes ((Regex!8432 0))(
  ( (ElementMatch!8432 (c!458461 C!17046)) (Concat!13703 (regOne!17376 Regex!8432) (regTwo!17376 Regex!8432)) (EmptyExpr!8432) (Star!8432 (reg!8761 Regex!8432)) (EmptyLang!8432) (Union!8432 (regOne!17377 Regex!8432) (regTwo!17377 Regex!8432)) )
))
(declare-datatypes ((String!36878 0))(
  ( (String!36879 (value!162013 String)) )
))
(declare-datatypes ((TokenValue!5271 0))(
  ( (FloatLiteralValue!10542 (text!37342 List!33675)) (TokenValueExt!5270 (__x!22280 Int)) (Broken!26355 (value!162014 List!33675)) (Object!5394) (End!5271) (Def!5271) (Underscore!5271) (Match!5271) (Else!5271) (Error!5271) (Case!5271) (If!5271) (Extends!5271) (Abstract!5271) (Class!5271) (Val!5271) (DelimiterValue!10542 (del!5331 List!33675)) (KeywordValue!5277 (value!162015 List!33675)) (CommentValue!10542 (value!162016 List!33675)) (WhitespaceValue!10542 (value!162017 List!33675)) (IndentationValue!5271 (value!162018 List!33675)) (String!36880) (Int32!5271) (Broken!26356 (value!162019 List!33675)) (Boolean!5272) (Unit!47451) (OperatorValue!5274 (op!5331 List!33675)) (IdentifierValue!10542 (value!162020 List!33675)) (IdentifierValue!10543 (value!162021 List!33675)) (WhitespaceValue!10543 (value!162022 List!33675)) (True!10542) (False!10542) (Broken!26357 (value!162023 List!33675)) (Broken!26358 (value!162024 List!33675)) (True!10543) (RightBrace!5271) (RightBracket!5271) (Colon!5271) (Null!5271) (Comma!5271) (LeftBracket!5271) (False!10543) (LeftBrace!5271) (ImaginaryLiteralValue!5271 (text!37343 List!33675)) (StringLiteralValue!15813 (value!162025 List!33675)) (EOFValue!5271 (value!162026 List!33675)) (IdentValue!5271 (value!162027 List!33675)) (DelimiterValue!10543 (value!162028 List!33675)) (DedentValue!5271 (value!162029 List!33675)) (NewLineValue!5271 (value!162030 List!33675)) (IntegerValue!15813 (value!162031 (_ BitVec 32)) (text!37344 List!33675)) (IntegerValue!15814 (value!162032 Int) (text!37345 List!33675)) (Times!5271) (Or!5271) (Equal!5271) (Minus!5271) (Broken!26359 (value!162033 List!33675)) (And!5271) (Div!5271) (LessEqual!5271) (Mod!5271) (Concat!13704) (Not!5271) (Plus!5271) (SpaceValue!5271 (value!162034 List!33675)) (IntegerValue!15815 (value!162035 Int) (text!37346 List!33675)) (StringLiteralValue!15814 (text!37347 List!33675)) (FloatLiteralValue!10543 (text!37348 List!33675)) (BytesLiteralValue!5271 (value!162036 List!33675)) (CommentValue!10543 (value!162037 List!33675)) (StringLiteralValue!15815 (value!162038 List!33675)) (ErrorTokenValue!5271 (msg!5332 List!33675)) )
))
(declare-datatypes ((TokenValueInjection!9970 0))(
  ( (TokenValueInjection!9971 (toValue!7083 Int) (toChars!6942 Int)) )
))
(declare-datatypes ((Rule!9882 0))(
  ( (Rule!9883 (regex!5041 Regex!8432) (tag!5545 String!36878) (isSeparator!5041 Bool) (transformation!5041 TokenValueInjection!9970)) )
))
(declare-datatypes ((Token!9484 0))(
  ( (Token!9485 (value!162039 TokenValue!5271) (rule!7469 Rule!9882) (size!26078 Int) (originalCharacters!5773 List!33674)) )
))
(declare-datatypes ((List!33676 0))(
  ( (Nil!33552) (Cons!33552 (h!38972 Token!9484) (t!232157 List!33676)) )
))
(declare-fun tokensBis!14 () List!33676)

(declare-fun inv!45523 (Token!9484) Bool)

(assert (=> b!2838149 (= e!1797484 (and (inv!45523 (h!38972 tokensBis!14)) e!1797478 tp!908538))))

(declare-fun b!2838150 () Bool)

(declare-fun res!1180922 () Bool)

(declare-fun e!1797481 () Bool)

(assert (=> b!2838150 (=> (not res!1180922) (not e!1797481))))

(declare-datatypes ((List!33677 0))(
  ( (Nil!33553) (Cons!33553 (h!38973 Rule!9882) (t!232158 List!33677)) )
))
(declare-fun rules!4246 () List!33677)

(declare-fun isEmpty!18490 (List!33677) Bool)

(assert (=> b!2838150 (= res!1180922 (not (isEmpty!18490 rules!4246)))))

(declare-fun e!1797468 () Bool)

(assert (=> b!2838151 (= e!1797468 (and tp!908534 tp!908540))))

(declare-fun e!1797483 () Bool)

(assert (=> b!2838152 (= e!1797483 (and tp!908529 tp!908528))))

(declare-fun b!2838153 () Bool)

(declare-fun res!1180921 () Bool)

(assert (=> b!2838153 (=> (not res!1180921) (not e!1797481))))

(declare-fun tokens!612 () List!33676)

(declare-datatypes ((LexerInterface!4631 0))(
  ( (LexerInterfaceExt!4628 (__x!22281 Int)) (Lexer!4629) )
))
(declare-fun thiss!27264 () LexerInterface!4631)

(declare-fun rulesProduceEachTokenIndividuallyList!1672 (LexerInterface!4631 List!33677 List!33676) Bool)

(assert (=> b!2838153 (= res!1180921 (rulesProduceEachTokenIndividuallyList!1672 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2838155 () Bool)

(assert (=> b!2838155 (= e!1797481 false)))

(declare-fun tp!908537 () Bool)

(declare-fun b!2838156 () Bool)

(declare-fun e!1797474 () Bool)

(declare-fun e!1797470 () Bool)

(declare-fun inv!45520 (String!36878) Bool)

(declare-fun inv!45524 (TokenValueInjection!9970) Bool)

(assert (=> b!2838156 (= e!1797470 (and tp!908537 (inv!45520 (tag!5545 (h!38973 rules!4246))) (inv!45524 (transformation!5041 (h!38973 rules!4246))) e!1797474))))

(declare-fun e!1797475 () Bool)

(declare-fun b!2838157 () Bool)

(declare-fun tp!908530 () Bool)

(assert (=> b!2838157 (= e!1797475 (and tp!908530 (inv!45520 (tag!5545 (rule!7469 (h!38972 tokensBis!14)))) (inv!45524 (transformation!5041 (rule!7469 (h!38972 tokensBis!14)))) e!1797483))))

(assert (=> b!2838158 (= e!1797474 (and tp!908536 tp!908535))))

(declare-fun b!2838159 () Bool)

(declare-fun res!1180924 () Bool)

(assert (=> b!2838159 (=> (not res!1180924) (not e!1797481))))

(declare-fun subseq!507 (List!33676 List!33676) Bool)

(assert (=> b!2838159 (= res!1180924 (subseq!507 tokensBis!14 tokens!612))))

(declare-fun e!1797471 () Bool)

(declare-fun b!2838160 () Bool)

(declare-fun tp!908539 () Bool)

(assert (=> b!2838160 (= e!1797471 (and tp!908539 (inv!45520 (tag!5545 (rule!7469 (h!38972 tokens!612)))) (inv!45524 (transformation!5041 (rule!7469 (h!38972 tokens!612)))) e!1797468))))

(declare-fun e!1797479 () Bool)

(declare-fun tp!908533 () Bool)

(declare-fun b!2838161 () Bool)

(declare-fun inv!21 (TokenValue!5271) Bool)

(assert (=> b!2838161 (= e!1797479 (and (inv!21 (value!162039 (h!38972 tokens!612))) e!1797471 tp!908533))))

(declare-fun b!2838154 () Bool)

(declare-fun res!1180923 () Bool)

(assert (=> b!2838154 (=> (not res!1180923) (not e!1797481))))

(declare-fun rulesInvariant!4047 (LexerInterface!4631 List!33677) Bool)

(assert (=> b!2838154 (= res!1180923 (rulesInvariant!4047 thiss!27264 rules!4246))))

(declare-fun res!1180925 () Bool)

(assert (=> start!276046 (=> (not res!1180925) (not e!1797481))))

(assert (=> start!276046 (= res!1180925 (is-Lexer!4629 thiss!27264))))

(assert (=> start!276046 e!1797481))

(assert (=> start!276046 true))

(declare-fun e!1797476 () Bool)

(assert (=> start!276046 e!1797476))

(assert (=> start!276046 e!1797484))

(declare-fun e!1797482 () Bool)

(assert (=> start!276046 e!1797482))

(declare-fun tp!908531 () Bool)

(declare-fun b!2838162 () Bool)

(assert (=> b!2838162 (= e!1797478 (and (inv!21 (value!162039 (h!38972 tokensBis!14))) e!1797475 tp!908531))))

(declare-fun tp!908532 () Bool)

(declare-fun b!2838163 () Bool)

(assert (=> b!2838163 (= e!1797482 (and (inv!45523 (h!38972 tokens!612)) e!1797479 tp!908532))))

(declare-fun b!2838164 () Bool)

(declare-fun tp!908527 () Bool)

(assert (=> b!2838164 (= e!1797476 (and e!1797470 tp!908527))))

(assert (= (and start!276046 res!1180925) b!2838150))

(assert (= (and b!2838150 res!1180922) b!2838154))

(assert (= (and b!2838154 res!1180923) b!2838159))

(assert (= (and b!2838159 res!1180924) b!2838153))

(assert (= (and b!2838153 res!1180921) b!2838155))

(assert (= b!2838156 b!2838158))

(assert (= b!2838164 b!2838156))

(assert (= (and start!276046 (is-Cons!33553 rules!4246)) b!2838164))

(assert (= b!2838157 b!2838152))

(assert (= b!2838162 b!2838157))

(assert (= b!2838149 b!2838162))

(assert (= (and start!276046 (is-Cons!33552 tokensBis!14)) b!2838149))

(assert (= b!2838160 b!2838151))

(assert (= b!2838161 b!2838160))

(assert (= b!2838163 b!2838161))

(assert (= (and start!276046 (is-Cons!33552 tokens!612)) b!2838163))

(declare-fun m!3267447 () Bool)

(assert (=> b!2838153 m!3267447))

(declare-fun m!3267449 () Bool)

(assert (=> b!2838156 m!3267449))

(declare-fun m!3267451 () Bool)

(assert (=> b!2838156 m!3267451))

(declare-fun m!3267453 () Bool)

(assert (=> b!2838150 m!3267453))

(declare-fun m!3267455 () Bool)

(assert (=> b!2838159 m!3267455))

(declare-fun m!3267457 () Bool)

(assert (=> b!2838154 m!3267457))

(declare-fun m!3267459 () Bool)

(assert (=> b!2838160 m!3267459))

(declare-fun m!3267461 () Bool)

(assert (=> b!2838160 m!3267461))

(declare-fun m!3267463 () Bool)

(assert (=> b!2838157 m!3267463))

(declare-fun m!3267465 () Bool)

(assert (=> b!2838157 m!3267465))

(declare-fun m!3267467 () Bool)

(assert (=> b!2838162 m!3267467))

(declare-fun m!3267469 () Bool)

(assert (=> b!2838163 m!3267469))

(declare-fun m!3267471 () Bool)

(assert (=> b!2838149 m!3267471))

(declare-fun m!3267473 () Bool)

(assert (=> b!2838161 m!3267473))

(push 1)

(assert (not b_next!82727))

(assert (not b!2838161))

(assert b_and!207945)

(assert (not b!2838157))

(assert (not b!2838160))

(assert (not b!2838164))

(assert (not b!2838153))

(assert (not b!2838162))

(assert (not b!2838159))

(assert (not b_next!82729))

(assert b_and!207949)

(assert (not b_next!82731))

(assert (not b_next!82725))

(assert b_and!207947)

(assert b_and!207941)

(assert b_and!207939)

(assert (not b!2838150))

(assert (not b!2838156))

(assert (not b_next!82735))

(assert (not b!2838154))

(assert (not b_next!82733))

(assert (not b!2838149))

(assert b_and!207943)

(assert (not b!2838163))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82727))

(assert b_and!207945)

(assert (not b_next!82729))

(assert (not b_next!82735))

(assert (not b_next!82733))

(assert b_and!207943)

(assert b_and!207949)

(assert (not b_next!82731))

(assert (not b_next!82725))

(assert b_and!207947)

(assert b_and!207941)

(assert b_and!207939)

(check-sat)

(pop 1)

