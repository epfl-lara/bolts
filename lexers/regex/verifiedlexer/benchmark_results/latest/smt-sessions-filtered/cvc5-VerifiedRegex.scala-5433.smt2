; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276170 () Bool)

(assert start!276170)

(declare-fun b!2839557 () Bool)

(declare-fun b_free!82213 () Bool)

(declare-fun b_next!82917 () Bool)

(assert (=> b!2839557 (= b_free!82213 (not b_next!82917))))

(declare-fun tp!909338 () Bool)

(declare-fun b_and!208203 () Bool)

(assert (=> b!2839557 (= tp!909338 b_and!208203)))

(declare-fun b_free!82215 () Bool)

(declare-fun b_next!82919 () Bool)

(assert (=> b!2839557 (= b_free!82215 (not b_next!82919))))

(declare-fun tp!909340 () Bool)

(declare-fun b_and!208205 () Bool)

(assert (=> b!2839557 (= tp!909340 b_and!208205)))

(declare-fun b!2839560 () Bool)

(declare-fun b_free!82217 () Bool)

(declare-fun b_next!82921 () Bool)

(assert (=> b!2839560 (= b_free!82217 (not b_next!82921))))

(declare-fun tp!909343 () Bool)

(declare-fun b_and!208207 () Bool)

(assert (=> b!2839560 (= tp!909343 b_and!208207)))

(declare-fun b_free!82219 () Bool)

(declare-fun b_next!82923 () Bool)

(assert (=> b!2839560 (= b_free!82219 (not b_next!82923))))

(declare-fun tp!909342 () Bool)

(declare-fun b_and!208209 () Bool)

(assert (=> b!2839560 (= tp!909342 b_and!208209)))

(declare-fun b!2839568 () Bool)

(declare-fun b_free!82221 () Bool)

(declare-fun b_next!82925 () Bool)

(assert (=> b!2839568 (= b_free!82221 (not b_next!82925))))

(declare-fun tp!909349 () Bool)

(declare-fun b_and!208211 () Bool)

(assert (=> b!2839568 (= tp!909349 b_and!208211)))

(declare-fun b_free!82223 () Bool)

(declare-fun b_next!82927 () Bool)

(assert (=> b!2839568 (= b_free!82223 (not b_next!82927))))

(declare-fun tp!909350 () Bool)

(declare-fun b_and!208213 () Bool)

(assert (=> b!2839568 (= tp!909350 b_and!208213)))

(declare-fun e!1798672 () Bool)

(declare-fun tp!909341 () Bool)

(declare-fun e!1798674 () Bool)

(declare-datatypes ((C!17066 0))(
  ( (C!17067 (val!10545 Int)) )
))
(declare-datatypes ((List!33720 0))(
  ( (Nil!33596) (Cons!33596 (h!39016 C!17066) (t!232357 List!33720)) )
))
(declare-datatypes ((IArray!20867 0))(
  ( (IArray!20868 (innerList!10491 List!33720)) )
))
(declare-datatypes ((Conc!10431 0))(
  ( (Node!10431 (left!25328 Conc!10431) (right!25658 Conc!10431) (csize!21092 Int) (cheight!10642 Int)) (Leaf!15865 (xs!13543 IArray!20867) (csize!21093 Int)) (Empty!10431) )
))
(declare-datatypes ((BalanceConc!20500 0))(
  ( (BalanceConc!20501 (c!458536 Conc!10431)) )
))
(declare-datatypes ((List!33721 0))(
  ( (Nil!33597) (Cons!33597 (h!39017 (_ BitVec 16)) (t!232358 List!33721)) )
))
(declare-datatypes ((String!36928 0))(
  ( (String!36929 (value!162298 String)) )
))
(declare-datatypes ((Regex!8442 0))(
  ( (ElementMatch!8442 (c!458537 C!17066)) (Concat!13723 (regOne!17396 Regex!8442) (regTwo!17396 Regex!8442)) (EmptyExpr!8442) (Star!8442 (reg!8771 Regex!8442)) (EmptyLang!8442) (Union!8442 (regOne!17397 Regex!8442) (regTwo!17397 Regex!8442)) )
))
(declare-datatypes ((TokenValue!5281 0))(
  ( (FloatLiteralValue!10562 (text!37412 List!33721)) (TokenValueExt!5280 (__x!22300 Int)) (Broken!26405 (value!162299 List!33721)) (Object!5404) (End!5281) (Def!5281) (Underscore!5281) (Match!5281) (Else!5281) (Error!5281) (Case!5281) (If!5281) (Extends!5281) (Abstract!5281) (Class!5281) (Val!5281) (DelimiterValue!10562 (del!5341 List!33721)) (KeywordValue!5287 (value!162300 List!33721)) (CommentValue!10562 (value!162301 List!33721)) (WhitespaceValue!10562 (value!162302 List!33721)) (IndentationValue!5281 (value!162303 List!33721)) (String!36930) (Int32!5281) (Broken!26406 (value!162304 List!33721)) (Boolean!5282) (Unit!47465) (OperatorValue!5284 (op!5341 List!33721)) (IdentifierValue!10562 (value!162305 List!33721)) (IdentifierValue!10563 (value!162306 List!33721)) (WhitespaceValue!10563 (value!162307 List!33721)) (True!10562) (False!10562) (Broken!26407 (value!162308 List!33721)) (Broken!26408 (value!162309 List!33721)) (True!10563) (RightBrace!5281) (RightBracket!5281) (Colon!5281) (Null!5281) (Comma!5281) (LeftBracket!5281) (False!10563) (LeftBrace!5281) (ImaginaryLiteralValue!5281 (text!37413 List!33721)) (StringLiteralValue!15843 (value!162310 List!33721)) (EOFValue!5281 (value!162311 List!33721)) (IdentValue!5281 (value!162312 List!33721)) (DelimiterValue!10563 (value!162313 List!33721)) (DedentValue!5281 (value!162314 List!33721)) (NewLineValue!5281 (value!162315 List!33721)) (IntegerValue!15843 (value!162316 (_ BitVec 32)) (text!37414 List!33721)) (IntegerValue!15844 (value!162317 Int) (text!37415 List!33721)) (Times!5281) (Or!5281) (Equal!5281) (Minus!5281) (Broken!26409 (value!162318 List!33721)) (And!5281) (Div!5281) (LessEqual!5281) (Mod!5281) (Concat!13724) (Not!5281) (Plus!5281) (SpaceValue!5281 (value!162319 List!33721)) (IntegerValue!15845 (value!162320 Int) (text!37416 List!33721)) (StringLiteralValue!15844 (text!37417 List!33721)) (FloatLiteralValue!10563 (text!37418 List!33721)) (BytesLiteralValue!5281 (value!162321 List!33721)) (CommentValue!10563 (value!162322 List!33721)) (StringLiteralValue!15845 (value!162323 List!33721)) (ErrorTokenValue!5281 (msg!5342 List!33721)) )
))
(declare-datatypes ((TokenValueInjection!9990 0))(
  ( (TokenValueInjection!9991 (toValue!7093 Int) (toChars!6952 Int)) )
))
(declare-datatypes ((Rule!9902 0))(
  ( (Rule!9903 (regex!5051 Regex!8442) (tag!5555 String!36928) (isSeparator!5051 Bool) (transformation!5051 TokenValueInjection!9990)) )
))
(declare-datatypes ((Token!9504 0))(
  ( (Token!9505 (value!162324 TokenValue!5281) (rule!7479 Rule!9902) (size!26094 Int) (originalCharacters!5783 List!33720)) )
))
(declare-datatypes ((List!33722 0))(
  ( (Nil!33598) (Cons!33598 (h!39018 Token!9504) (t!232359 List!33722)) )
))
(declare-fun tokensBis!14 () List!33722)

(declare-fun b!2839553 () Bool)

(declare-fun inv!45570 (Token!9504) Bool)

(assert (=> b!2839553 (= e!1798672 (and (inv!45570 (h!39018 tokensBis!14)) e!1798674 tp!909341))))

(declare-fun b!2839554 () Bool)

(declare-fun res!1181418 () Bool)

(declare-fun e!1798661 () Bool)

(assert (=> b!2839554 (=> (not res!1181418) (not e!1798661))))

(declare-datatypes ((List!33723 0))(
  ( (Nil!33599) (Cons!33599 (h!39019 Rule!9902) (t!232360 List!33723)) )
))
(declare-fun rules!4246 () List!33723)

(declare-fun tokens!612 () List!33722)

(declare-datatypes ((LexerInterface!4641 0))(
  ( (LexerInterfaceExt!4638 (__x!22301 Int)) (Lexer!4639) )
))
(declare-fun thiss!27264 () LexerInterface!4641)

(declare-fun rulesProduceEachTokenIndividuallyList!1682 (LexerInterface!4641 List!33723 List!33722) Bool)

(assert (=> b!2839554 (= res!1181418 (rulesProduceEachTokenIndividuallyList!1682 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2839555 () Bool)

(assert (=> b!2839555 (= e!1798661 false)))

(declare-fun b!2839556 () Bool)

(declare-fun tp!909345 () Bool)

(declare-fun e!1798667 () Bool)

(declare-fun e!1798664 () Bool)

(declare-fun inv!45567 (String!36928) Bool)

(declare-fun inv!45571 (TokenValueInjection!9990) Bool)

(assert (=> b!2839556 (= e!1798667 (and tp!909345 (inv!45567 (tag!5555 (rule!7479 (h!39018 tokensBis!14)))) (inv!45571 (transformation!5051 (rule!7479 (h!39018 tokensBis!14)))) e!1798664))))

(declare-fun e!1798662 () Bool)

(assert (=> b!2839557 (= e!1798662 (and tp!909338 tp!909340))))

(declare-fun res!1181417 () Bool)

(assert (=> start!276170 (=> (not res!1181417) (not e!1798661))))

(assert (=> start!276170 (= res!1181417 (is-Lexer!4639 thiss!27264))))

(assert (=> start!276170 e!1798661))

(assert (=> start!276170 true))

(declare-fun e!1798660 () Bool)

(assert (=> start!276170 e!1798660))

(assert (=> start!276170 e!1798672))

(declare-fun e!1798675 () Bool)

(assert (=> start!276170 e!1798675))

(declare-fun e!1798670 () Bool)

(declare-fun tp!909346 () Bool)

(declare-fun b!2839558 () Bool)

(assert (=> b!2839558 (= e!1798675 (and (inv!45570 (h!39018 tokens!612)) e!1798670 tp!909346))))

(declare-fun b!2839559 () Bool)

(declare-fun e!1798668 () Bool)

(declare-fun tp!909339 () Bool)

(assert (=> b!2839559 (= e!1798660 (and e!1798668 tp!909339))))

(declare-fun e!1798669 () Bool)

(assert (=> b!2839560 (= e!1798669 (and tp!909343 tp!909342))))

(declare-fun b!2839561 () Bool)

(declare-fun res!1181414 () Bool)

(assert (=> b!2839561 (=> (not res!1181414) (not e!1798661))))

(declare-fun rulesInvariant!4057 (LexerInterface!4641 List!33723) Bool)

(assert (=> b!2839561 (= res!1181414 (rulesInvariant!4057 thiss!27264 rules!4246))))

(declare-fun b!2839562 () Bool)

(declare-fun tp!909337 () Bool)

(assert (=> b!2839562 (= e!1798668 (and tp!909337 (inv!45567 (tag!5555 (h!39019 rules!4246))) (inv!45571 (transformation!5051 (h!39019 rules!4246))) e!1798662))))

(declare-fun b!2839563 () Bool)

(declare-fun tp!909347 () Bool)

(declare-fun e!1798663 () Bool)

(declare-fun inv!21 (TokenValue!5281) Bool)

(assert (=> b!2839563 (= e!1798670 (and (inv!21 (value!162324 (h!39018 tokens!612))) e!1798663 tp!909347))))

(declare-fun b!2839564 () Bool)

(declare-fun res!1181416 () Bool)

(assert (=> b!2839564 (=> (not res!1181416) (not e!1798661))))

(declare-fun isEmpty!18506 (List!33723) Bool)

(assert (=> b!2839564 (= res!1181416 (not (isEmpty!18506 rules!4246)))))

(declare-fun b!2839565 () Bool)

(declare-fun res!1181415 () Bool)

(assert (=> b!2839565 (=> (not res!1181415) (not e!1798661))))

(declare-fun subseq!517 (List!33722 List!33722) Bool)

(assert (=> b!2839565 (= res!1181415 (subseq!517 tokensBis!14 tokens!612))))

(declare-fun b!2839566 () Bool)

(declare-fun tp!909344 () Bool)

(assert (=> b!2839566 (= e!1798674 (and (inv!21 (value!162324 (h!39018 tokensBis!14))) e!1798667 tp!909344))))

(declare-fun tp!909348 () Bool)

(declare-fun b!2839567 () Bool)

(assert (=> b!2839567 (= e!1798663 (and tp!909348 (inv!45567 (tag!5555 (rule!7479 (h!39018 tokens!612)))) (inv!45571 (transformation!5051 (rule!7479 (h!39018 tokens!612)))) e!1798669))))

(assert (=> b!2839568 (= e!1798664 (and tp!909349 tp!909350))))

(assert (= (and start!276170 res!1181417) b!2839564))

(assert (= (and b!2839564 res!1181416) b!2839561))

(assert (= (and b!2839561 res!1181414) b!2839565))

(assert (= (and b!2839565 res!1181415) b!2839554))

(assert (= (and b!2839554 res!1181418) b!2839555))

(assert (= b!2839562 b!2839557))

(assert (= b!2839559 b!2839562))

(assert (= (and start!276170 (is-Cons!33599 rules!4246)) b!2839559))

(assert (= b!2839556 b!2839568))

(assert (= b!2839566 b!2839556))

(assert (= b!2839553 b!2839566))

(assert (= (and start!276170 (is-Cons!33598 tokensBis!14)) b!2839553))

(assert (= b!2839567 b!2839560))

(assert (= b!2839563 b!2839567))

(assert (= b!2839558 b!2839563))

(assert (= (and start!276170 (is-Cons!33598 tokens!612)) b!2839558))

(declare-fun m!3268331 () Bool)

(assert (=> b!2839564 m!3268331))

(declare-fun m!3268333 () Bool)

(assert (=> b!2839566 m!3268333))

(declare-fun m!3268335 () Bool)

(assert (=> b!2839565 m!3268335))

(declare-fun m!3268337 () Bool)

(assert (=> b!2839561 m!3268337))

(declare-fun m!3268339 () Bool)

(assert (=> b!2839558 m!3268339))

(declare-fun m!3268341 () Bool)

(assert (=> b!2839567 m!3268341))

(declare-fun m!3268343 () Bool)

(assert (=> b!2839567 m!3268343))

(declare-fun m!3268345 () Bool)

(assert (=> b!2839553 m!3268345))

(declare-fun m!3268347 () Bool)

(assert (=> b!2839554 m!3268347))

(declare-fun m!3268349 () Bool)

(assert (=> b!2839556 m!3268349))

(declare-fun m!3268351 () Bool)

(assert (=> b!2839556 m!3268351))

(declare-fun m!3268353 () Bool)

(assert (=> b!2839562 m!3268353))

(declare-fun m!3268355 () Bool)

(assert (=> b!2839562 m!3268355))

(declare-fun m!3268357 () Bool)

(assert (=> b!2839563 m!3268357))

(push 1)

(assert b_and!208211)

(assert (not b_next!82925))

(assert (not b!2839553))

(assert (not b!2839554))

(assert (not b!2839559))

(assert (not b!2839565))

(assert b_and!208207)

(assert (not b_next!82923))

(assert b_and!208203)

(assert b_and!208209)

(assert (not b_next!82927))

(assert (not b!2839556))

(assert b_and!208213)

(assert b_and!208205)

(assert (not b!2839566))

(assert (not b!2839562))

(assert (not b!2839558))

(assert (not b!2839563))

(assert (not b_next!82919))

(assert (not b_next!82921))

(assert (not b!2839567))

(assert (not b!2839561))

(assert (not b_next!82917))

(assert (not b!2839564))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208205)

(assert b_and!208211)

(assert (not b_next!82925))

(assert (not b_next!82917))

(assert b_and!208207)

(assert (not b_next!82923))

(assert b_and!208203)

(assert b_and!208209)

(assert (not b_next!82927))

(assert b_and!208213)

(assert (not b_next!82919))

(assert (not b_next!82921))

(check-sat)

(pop 1)

