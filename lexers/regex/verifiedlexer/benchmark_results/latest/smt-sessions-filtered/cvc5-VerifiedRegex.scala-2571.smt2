; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137824 () Bool)

(assert start!137824)

(declare-fun b!1471247 () Bool)

(declare-fun b_free!37179 () Bool)

(declare-fun b_next!37883 () Bool)

(assert (=> b!1471247 (= b_free!37179 (not b_next!37883))))

(declare-fun tp!415312 () Bool)

(declare-fun b_and!100949 () Bool)

(assert (=> b!1471247 (= tp!415312 b_and!100949)))

(declare-fun b_free!37181 () Bool)

(declare-fun b_next!37885 () Bool)

(assert (=> b!1471247 (= b_free!37181 (not b_next!37885))))

(declare-fun tp!415321 () Bool)

(declare-fun b_and!100951 () Bool)

(assert (=> b!1471247 (= tp!415321 b_and!100951)))

(declare-fun b!1471256 () Bool)

(declare-fun b_free!37183 () Bool)

(declare-fun b_next!37887 () Bool)

(assert (=> b!1471256 (= b_free!37183 (not b_next!37887))))

(declare-fun tp!415314 () Bool)

(declare-fun b_and!100953 () Bool)

(assert (=> b!1471256 (= tp!415314 b_and!100953)))

(declare-fun b_free!37185 () Bool)

(declare-fun b_next!37889 () Bool)

(assert (=> b!1471256 (= b_free!37185 (not b_next!37889))))

(declare-fun tp!415311 () Bool)

(declare-fun b_and!100955 () Bool)

(assert (=> b!1471256 (= tp!415311 b_and!100955)))

(declare-fun b!1471244 () Bool)

(declare-fun b_free!37187 () Bool)

(declare-fun b_next!37891 () Bool)

(assert (=> b!1471244 (= b_free!37187 (not b_next!37891))))

(declare-fun tp!415322 () Bool)

(declare-fun b_and!100957 () Bool)

(assert (=> b!1471244 (= tp!415322 b_and!100957)))

(declare-fun b_free!37189 () Bool)

(declare-fun b_next!37893 () Bool)

(assert (=> b!1471244 (= b_free!37189 (not b_next!37893))))

(declare-fun tp!415317 () Bool)

(declare-fun b_and!100959 () Bool)

(assert (=> b!1471244 (= tp!415317 b_and!100959)))

(declare-fun b!1471242 () Bool)

(declare-fun res!665061 () Bool)

(declare-fun e!939481 () Bool)

(assert (=> b!1471242 (=> (not res!665061) (not e!939481))))

(declare-datatypes ((LexerInterface!2396 0))(
  ( (LexerInterfaceExt!2393 (__x!9450 Int)) (Lexer!2394) )
))
(declare-fun thiss!27374 () LexerInterface!2396)

(declare-datatypes ((List!15483 0))(
  ( (Nil!15417) (Cons!15417 (h!20818 (_ BitVec 16)) (t!135736 List!15483)) )
))
(declare-datatypes ((C!8286 0))(
  ( (C!8287 (val!4713 Int)) )
))
(declare-datatypes ((List!15484 0))(
  ( (Nil!15418) (Cons!15418 (h!20819 C!8286) (t!135737 List!15484)) )
))
(declare-datatypes ((Regex!4054 0))(
  ( (ElementMatch!4054 (c!242278 C!8286)) (Concat!6884 (regOne!8620 Regex!4054) (regTwo!8620 Regex!4054)) (EmptyExpr!4054) (Star!4054 (reg!4383 Regex!4054)) (EmptyLang!4054) (Union!4054 (regOne!8621 Regex!4054) (regTwo!8621 Regex!4054)) )
))
(declare-datatypes ((TokenValue!2830 0))(
  ( (FloatLiteralValue!5660 (text!20255 List!15483)) (TokenValueExt!2829 (__x!9451 Int)) (Broken!14150 (value!87713 List!15483)) (Object!2895) (End!2830) (Def!2830) (Underscore!2830) (Match!2830) (Else!2830) (Error!2830) (Case!2830) (If!2830) (Extends!2830) (Abstract!2830) (Class!2830) (Val!2830) (DelimiterValue!5660 (del!2890 List!15483)) (KeywordValue!2836 (value!87714 List!15483)) (CommentValue!5660 (value!87715 List!15483)) (WhitespaceValue!5660 (value!87716 List!15483)) (IndentationValue!2830 (value!87717 List!15483)) (String!18407) (Int32!2830) (Broken!14151 (value!87718 List!15483)) (Boolean!2831) (Unit!25117) (OperatorValue!2833 (op!2890 List!15483)) (IdentifierValue!5660 (value!87719 List!15483)) (IdentifierValue!5661 (value!87720 List!15483)) (WhitespaceValue!5661 (value!87721 List!15483)) (True!5660) (False!5660) (Broken!14152 (value!87722 List!15483)) (Broken!14153 (value!87723 List!15483)) (True!5661) (RightBrace!2830) (RightBracket!2830) (Colon!2830) (Null!2830) (Comma!2830) (LeftBracket!2830) (False!5661) (LeftBrace!2830) (ImaginaryLiteralValue!2830 (text!20256 List!15483)) (StringLiteralValue!8490 (value!87724 List!15483)) (EOFValue!2830 (value!87725 List!15483)) (IdentValue!2830 (value!87726 List!15483)) (DelimiterValue!5661 (value!87727 List!15483)) (DedentValue!2830 (value!87728 List!15483)) (NewLineValue!2830 (value!87729 List!15483)) (IntegerValue!8490 (value!87730 (_ BitVec 32)) (text!20257 List!15483)) (IntegerValue!8491 (value!87731 Int) (text!20258 List!15483)) (Times!2830) (Or!2830) (Equal!2830) (Minus!2830) (Broken!14154 (value!87732 List!15483)) (And!2830) (Div!2830) (LessEqual!2830) (Mod!2830) (Concat!6885) (Not!2830) (Plus!2830) (SpaceValue!2830 (value!87733 List!15483)) (IntegerValue!8492 (value!87734 Int) (text!20259 List!15483)) (StringLiteralValue!8491 (text!20260 List!15483)) (FloatLiteralValue!5661 (text!20261 List!15483)) (BytesLiteralValue!2830 (value!87735 List!15483)) (CommentValue!5661 (value!87736 List!15483)) (StringLiteralValue!8492 (value!87737 List!15483)) (ErrorTokenValue!2830 (msg!2891 List!15483)) )
))
(declare-datatypes ((IArray!10525 0))(
  ( (IArray!10526 (innerList!5320 List!15484)) )
))
(declare-datatypes ((Conc!5260 0))(
  ( (Node!5260 (left!13053 Conc!5260) (right!13383 Conc!5260) (csize!10750 Int) (cheight!5471 Int)) (Leaf!7832 (xs!8015 IArray!10525) (csize!10751 Int)) (Empty!5260) )
))
(declare-datatypes ((BalanceConc!10460 0))(
  ( (BalanceConc!10461 (c!242279 Conc!5260)) )
))
(declare-datatypes ((TokenValueInjection!5320 0))(
  ( (TokenValueInjection!5321 (toValue!4067 Int) (toChars!3926 Int)) )
))
(declare-datatypes ((String!18408 0))(
  ( (String!18409 (value!87738 String)) )
))
(declare-datatypes ((Rule!5280 0))(
  ( (Rule!5281 (regex!2740 Regex!4054) (tag!3004 String!18408) (isSeparator!2740 Bool) (transformation!2740 TokenValueInjection!5320)) )
))
(declare-datatypes ((List!15485 0))(
  ( (Nil!15419) (Cons!15419 (h!20820 Rule!5280) (t!135738 List!15485)) )
))
(declare-fun rules!4290 () List!15485)

(declare-fun rulesInvariant!2185 (LexerInterface!2396 List!15485) Bool)

(assert (=> b!1471242 (= res!665061 (rulesInvariant!2185 thiss!27374 rules!4290))))

(declare-fun b!1471243 () Bool)

(declare-fun res!665063 () Bool)

(assert (=> b!1471243 (=> (not res!665063) (not e!939481))))

(declare-fun isEmpty!9632 (List!15485) Bool)

(assert (=> b!1471243 (= res!665063 (not (isEmpty!9632 rules!4290)))))

(declare-fun e!939476 () Bool)

(assert (=> b!1471244 (= e!939476 (and tp!415322 tp!415317))))

(declare-fun b!1471245 () Bool)

(declare-fun tp!415318 () Bool)

(declare-datatypes ((Token!5142 0))(
  ( (Token!5143 (value!87739 TokenValue!2830) (rule!4517 Rule!5280) (size!12535 Int) (originalCharacters!3602 List!15484)) )
))
(declare-datatypes ((List!15486 0))(
  ( (Nil!15420) (Cons!15420 (h!20821 Token!5142) (t!135739 List!15486)) )
))
(declare-fun l2!3105 () List!15486)

(declare-fun e!939486 () Bool)

(declare-fun e!939484 () Bool)

(declare-fun inv!21 (TokenValue!2830) Bool)

(assert (=> b!1471245 (= e!939484 (and (inv!21 (value!87739 (h!20821 l2!3105))) e!939486 tp!415318))))

(declare-fun e!939483 () Bool)

(declare-fun b!1471246 () Bool)

(declare-fun tp!415319 () Bool)

(declare-fun inv!20630 (Token!5142) Bool)

(assert (=> b!1471246 (= e!939483 (and (inv!20630 (h!20821 l2!3105)) e!939484 tp!415319))))

(declare-fun b!1471248 () Bool)

(declare-fun e!939485 () Bool)

(declare-fun tp!415316 () Bool)

(declare-fun l1!3136 () List!15486)

(declare-fun e!939477 () Bool)

(assert (=> b!1471248 (= e!939485 (and (inv!20630 (h!20821 l1!3136)) e!939477 tp!415316))))

(declare-fun b!1471249 () Bool)

(declare-fun e!939479 () Bool)

(declare-fun tp!415323 () Bool)

(declare-fun inv!20627 (String!18408) Bool)

(declare-fun inv!20631 (TokenValueInjection!5320) Bool)

(assert (=> b!1471249 (= e!939486 (and tp!415323 (inv!20627 (tag!3004 (rule!4517 (h!20821 l2!3105)))) (inv!20631 (transformation!2740 (rule!4517 (h!20821 l2!3105)))) e!939479))))

(declare-fun b!1471250 () Bool)

(assert (=> b!1471250 (= e!939481 false)))

(declare-fun lt!511458 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!256 (LexerInterface!2396 List!15486 List!15485) Bool)

(assert (=> b!1471250 (= lt!511458 (tokensListTwoByTwoPredicateSeparableList!256 thiss!27374 l2!3105 rules!4290))))

(declare-fun tp!415315 () Bool)

(declare-fun e!939487 () Bool)

(declare-fun b!1471251 () Bool)

(assert (=> b!1471251 (= e!939477 (and (inv!21 (value!87739 (h!20821 l1!3136))) e!939487 tp!415315))))

(declare-fun b!1471252 () Bool)

(declare-fun tp!415320 () Bool)

(assert (=> b!1471252 (= e!939487 (and tp!415320 (inv!20627 (tag!3004 (rule!4517 (h!20821 l1!3136)))) (inv!20631 (transformation!2740 (rule!4517 (h!20821 l1!3136)))) e!939476))))

(declare-fun b!1471253 () Bool)

(declare-fun res!665058 () Bool)

(assert (=> b!1471253 (=> (not res!665058) (not e!939481))))

(declare-fun rulesProduceEachTokenIndividuallyList!763 (LexerInterface!2396 List!15485 List!15486) Bool)

(assert (=> b!1471253 (= res!665058 (rulesProduceEachTokenIndividuallyList!763 thiss!27374 rules!4290 l2!3105))))

(declare-fun tp!415324 () Bool)

(declare-fun b!1471254 () Bool)

(declare-fun e!939488 () Bool)

(declare-fun e!939475 () Bool)

(assert (=> b!1471254 (= e!939488 (and tp!415324 (inv!20627 (tag!3004 (h!20820 rules!4290))) (inv!20631 (transformation!2740 (h!20820 rules!4290))) e!939475))))

(declare-fun b!1471255 () Bool)

(declare-fun res!665060 () Bool)

(assert (=> b!1471255 (=> (not res!665060) (not e!939481))))

(assert (=> b!1471255 (= res!665060 (rulesProduceEachTokenIndividuallyList!763 thiss!27374 rules!4290 l1!3136))))

(assert (=> b!1471256 (= e!939475 (and tp!415314 tp!415311))))

(declare-fun res!665062 () Bool)

(assert (=> start!137824 (=> (not res!665062) (not e!939481))))

(assert (=> start!137824 (= res!665062 (is-Lexer!2394 thiss!27374))))

(assert (=> start!137824 e!939481))

(assert (=> start!137824 true))

(declare-fun e!939490 () Bool)

(assert (=> start!137824 e!939490))

(assert (=> start!137824 e!939485))

(assert (=> start!137824 e!939483))

(assert (=> b!1471247 (= e!939479 (and tp!415312 tp!415321))))

(declare-fun b!1471257 () Bool)

(declare-fun tp!415313 () Bool)

(assert (=> b!1471257 (= e!939490 (and e!939488 tp!415313))))

(declare-fun b!1471258 () Bool)

(declare-fun res!665059 () Bool)

(assert (=> b!1471258 (=> (not res!665059) (not e!939481))))

(assert (=> b!1471258 (= res!665059 (tokensListTwoByTwoPredicateSeparableList!256 thiss!27374 l1!3136 rules!4290))))

(assert (= (and start!137824 res!665062) b!1471243))

(assert (= (and b!1471243 res!665063) b!1471242))

(assert (= (and b!1471242 res!665061) b!1471255))

(assert (= (and b!1471255 res!665060) b!1471253))

(assert (= (and b!1471253 res!665058) b!1471258))

(assert (= (and b!1471258 res!665059) b!1471250))

(assert (= b!1471254 b!1471256))

(assert (= b!1471257 b!1471254))

(assert (= (and start!137824 (is-Cons!15419 rules!4290)) b!1471257))

(assert (= b!1471252 b!1471244))

(assert (= b!1471251 b!1471252))

(assert (= b!1471248 b!1471251))

(assert (= (and start!137824 (is-Cons!15420 l1!3136)) b!1471248))

(assert (= b!1471249 b!1471247))

(assert (= b!1471245 b!1471249))

(assert (= b!1471246 b!1471245))

(assert (= (and start!137824 (is-Cons!15420 l2!3105)) b!1471246))

(declare-fun m!1715457 () Bool)

(assert (=> b!1471246 m!1715457))

(declare-fun m!1715459 () Bool)

(assert (=> b!1471245 m!1715459))

(declare-fun m!1715461 () Bool)

(assert (=> b!1471253 m!1715461))

(declare-fun m!1715463 () Bool)

(assert (=> b!1471258 m!1715463))

(declare-fun m!1715465 () Bool)

(assert (=> b!1471250 m!1715465))

(declare-fun m!1715467 () Bool)

(assert (=> b!1471254 m!1715467))

(declare-fun m!1715469 () Bool)

(assert (=> b!1471254 m!1715469))

(declare-fun m!1715471 () Bool)

(assert (=> b!1471242 m!1715471))

(declare-fun m!1715473 () Bool)

(assert (=> b!1471249 m!1715473))

(declare-fun m!1715475 () Bool)

(assert (=> b!1471249 m!1715475))

(declare-fun m!1715477 () Bool)

(assert (=> b!1471252 m!1715477))

(declare-fun m!1715479 () Bool)

(assert (=> b!1471252 m!1715479))

(declare-fun m!1715481 () Bool)

(assert (=> b!1471251 m!1715481))

(declare-fun m!1715483 () Bool)

(assert (=> b!1471248 m!1715483))

(declare-fun m!1715485 () Bool)

(assert (=> b!1471255 m!1715485))

(declare-fun m!1715487 () Bool)

(assert (=> b!1471243 m!1715487))

(push 1)

(assert (not b!1471248))

(assert (not b!1471251))

(assert (not b_next!37883))

(assert (not b_next!37893))

(assert (not b!1471257))

(assert b_and!100949)

(assert (not b!1471246))

(assert (not b!1471255))

(assert (not b_next!37887))

(assert (not b!1471245))

(assert (not b!1471253))

(assert (not b_next!37889))

(assert (not b!1471254))

(assert b_and!100959)

(assert (not b_next!37891))

(assert (not b_next!37885))

(assert (not b!1471249))

(assert (not b!1471243))

(assert (not b!1471252))

(assert b_and!100953)

(assert b_and!100951)

(assert b_and!100957)

(assert (not b!1471242))

(assert b_and!100955)

(assert (not b!1471250))

(assert (not b!1471258))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37883))

(assert (not b_next!37893))

(assert b_and!100953)

(assert b_and!100949)

(assert (not b_next!37887))

(assert (not b_next!37889))

(assert b_and!100959)

(assert (not b_next!37891))

(assert b_and!100955)

(assert (not b_next!37885))

(assert b_and!100951)

(assert b_and!100957)

(check-sat)

(pop 1)

