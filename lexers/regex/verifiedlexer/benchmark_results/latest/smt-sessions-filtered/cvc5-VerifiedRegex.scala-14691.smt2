; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757662 () Bool)

(assert start!757662)

(declare-fun b!8046399 () Bool)

(declare-fun b_free!136427 () Bool)

(declare-fun b_next!137217 () Bool)

(assert (=> b!8046399 (= b_free!136427 (not b_next!137217))))

(declare-fun tp!2412081 () Bool)

(declare-fun b_and!354863 () Bool)

(assert (=> b!8046399 (= tp!2412081 b_and!354863)))

(declare-fun b_free!136429 () Bool)

(declare-fun b_next!137219 () Bool)

(assert (=> b!8046399 (= b_free!136429 (not b_next!137219))))

(declare-fun tp!2412079 () Bool)

(declare-fun b_and!354865 () Bool)

(assert (=> b!8046399 (= tp!2412079 b_and!354865)))

(declare-fun b!8046396 () Bool)

(declare-fun e!4740454 () Bool)

(declare-datatypes ((String!85188 0))(
  ( (String!85189 (value!292700 String)) )
))
(declare-datatypes ((List!75462 0))(
  ( (Nil!75336) (Cons!75336 (h!81784 String!85188) (t!391232 List!75462)) )
))
(declare-fun acc!573 () List!75462)

(declare-fun tp!2412077 () Bool)

(declare-fun inv!97073 (String!85188) Bool)

(assert (=> b!8046396 (= e!4740454 (and (inv!97073 (h!81784 acc!573)) tp!2412077))))

(declare-fun b!8046397 () Bool)

(declare-fun e!4740455 () Bool)

(assert (=> b!8046397 (= e!4740455 (not true))))

(declare-fun newAcc!87 () List!75462)

(declare-datatypes ((List!75463 0))(
  ( (Nil!75337) (Cons!75337 (h!81785 (_ BitVec 16)) (t!391233 List!75463)) )
))
(declare-datatypes ((TokenValue!9081 0))(
  ( (FloatLiteralValue!18162 (text!64012 List!75463)) (TokenValueExt!9080 (__x!35443 Int)) (Broken!45405 (value!292701 List!75463)) (Object!9206) (End!9081) (Def!9081) (Underscore!9081) (Match!9081) (Else!9081) (Error!9081) (Case!9081) (If!9081) (Extends!9081) (Abstract!9081) (Class!9081) (Val!9081) (DelimiterValue!18162 (del!9141 List!75463)) (KeywordValue!9087 (value!292702 List!75463)) (CommentValue!18162 (value!292703 List!75463)) (WhitespaceValue!18162 (value!292704 List!75463)) (IndentationValue!9081 (value!292705 List!75463)) (String!85190) (Int32!9081) (Broken!45406 (value!292706 List!75463)) (Boolean!9082) (Unit!171136) (OperatorValue!9084 (op!9141 List!75463)) (IdentifierValue!18162 (value!292707 List!75463)) (IdentifierValue!18163 (value!292708 List!75463)) (WhitespaceValue!18163 (value!292709 List!75463)) (True!18162) (False!18162) (Broken!45407 (value!292710 List!75463)) (Broken!45408 (value!292711 List!75463)) (True!18163) (RightBrace!9081) (RightBracket!9081) (Colon!9081) (Null!9081) (Comma!9081) (LeftBracket!9081) (False!18163) (LeftBrace!9081) (ImaginaryLiteralValue!9081 (text!64013 List!75463)) (StringLiteralValue!27243 (value!292712 List!75463)) (EOFValue!9081 (value!292713 List!75463)) (IdentValue!9081 (value!292714 List!75463)) (DelimiterValue!18163 (value!292715 List!75463)) (DedentValue!9081 (value!292716 List!75463)) (NewLineValue!9081 (value!292717 List!75463)) (IntegerValue!27243 (value!292718 (_ BitVec 32)) (text!64014 List!75463)) (IntegerValue!27244 (value!292719 Int) (text!64015 List!75463)) (Times!9081) (Or!9081) (Equal!9081) (Minus!9081) (Broken!45409 (value!292720 List!75463)) (And!9081) (Div!9081) (LessEqual!9081) (Mod!9081) (Concat!30913) (Not!9081) (Plus!9081) (SpaceValue!9081 (value!292721 List!75463)) (IntegerValue!27245 (value!292722 Int) (text!64016 List!75463)) (StringLiteralValue!27244 (text!64017 List!75463)) (FloatLiteralValue!18163 (text!64018 List!75463)) (BytesLiteralValue!9081 (value!292723 List!75463)) (CommentValue!18163 (value!292724 List!75463)) (StringLiteralValue!27245 (value!292725 List!75463)) (ErrorTokenValue!9081 (msg!9142 List!75463)) )
))
(declare-datatypes ((C!44002 0))(
  ( (C!44003 (val!32777 Int)) )
))
(declare-datatypes ((Regex!21832 0))(
  ( (ElementMatch!21832 (c!1475435 C!44002)) (Concat!30914 (regOne!44176 Regex!21832) (regTwo!44176 Regex!21832)) (EmptyExpr!21832) (Star!21832 (reg!22161 Regex!21832)) (EmptyLang!21832) (Union!21832 (regOne!44177 Regex!21832) (regTwo!44177 Regex!21832)) )
))
(declare-datatypes ((List!75464 0))(
  ( (Nil!75338) (Cons!75338 (h!81786 C!44002) (t!391234 List!75464)) )
))
(declare-datatypes ((IArray!32119 0))(
  ( (IArray!32120 (innerList!16117 List!75464)) )
))
(declare-datatypes ((Conc!16029 0))(
  ( (Node!16029 (left!57388 Conc!16029) (right!57718 Conc!16029) (csize!32288 Int) (cheight!16240 Int)) (Leaf!30721 (xs!19427 IArray!32119) (csize!32289 Int)) (Empty!16029) )
))
(declare-datatypes ((BalanceConc!31014 0))(
  ( (BalanceConc!31015 (c!1475436 Conc!16029)) )
))
(declare-datatypes ((TokenValueInjection!17470 0))(
  ( (TokenValueInjection!17471 (toValue!11844 Int) (toChars!11703 Int)) )
))
(declare-datatypes ((Rule!17322 0))(
  ( (Rule!17323 (regex!8761 Regex!21832) (tag!9625 String!85188) (isSeparator!8761 Bool) (transformation!8761 TokenValueInjection!17470)) )
))
(declare-datatypes ((List!75465 0))(
  ( (Nil!75339) (Cons!75339 (h!81787 Rule!17322) (t!391235 List!75465)) )
))
(declare-fun rules!4081 () List!75465)

(declare-datatypes ((Unit!171137 0))(
  ( (Unit!171138) )
))
(declare-fun lt!2722807 () Unit!171137)

(declare-fun subseqNotContains!1 (List!75462 List!75462 String!85188) Unit!171137)

(assert (=> b!8046397 (= lt!2722807 (subseqNotContains!1 newAcc!87 acc!573 (tag!9625 (h!81787 rules!4081))))))

(declare-datatypes ((LexerInterface!8351 0))(
  ( (LexerInterfaceExt!8348 (__x!35444 Int)) (Lexer!8349) )
))
(declare-fun thiss!26941 () LexerInterface!8351)

(declare-fun lt!2722805 () List!75462)

(declare-fun noDuplicateTag!3339 (LexerInterface!8351 List!75465 List!75462) Bool)

(assert (=> b!8046397 (noDuplicateTag!3339 thiss!26941 (t!391235 rules!4081) lt!2722805)))

(declare-fun lt!2722806 () Unit!171137)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!53 (LexerInterface!8351 List!75462 List!75462 List!75465) Unit!171137)

(assert (=> b!8046397 (= lt!2722806 (lemmaNoDupTagThenAlsoWithSubListAcc!53 thiss!26941 (Cons!75336 (tag!9625 (h!81787 rules!4081)) acc!573) lt!2722805 (t!391235 rules!4081)))))

(assert (=> b!8046397 (= lt!2722805 (Cons!75336 (tag!9625 (h!81787 rules!4081)) newAcc!87))))

(declare-fun b!8046398 () Bool)

(declare-fun res!3180808 () Bool)

(assert (=> b!8046398 (=> (not res!3180808) (not e!4740455))))

(assert (=> b!8046398 (= res!3180808 (noDuplicateTag!3339 thiss!26941 rules!4081 acc!573))))

(declare-fun e!4740458 () Bool)

(assert (=> b!8046399 (= e!4740458 (and tp!2412081 tp!2412079))))

(declare-fun b!8046401 () Bool)

(declare-fun e!4740461 () Bool)

(declare-fun tp!2412078 () Bool)

(declare-fun inv!97076 (TokenValueInjection!17470) Bool)

(assert (=> b!8046401 (= e!4740461 (and tp!2412078 (inv!97073 (tag!9625 (h!81787 rules!4081))) (inv!97076 (transformation!8761 (h!81787 rules!4081))) e!4740458))))

(declare-fun b!8046402 () Bool)

(declare-fun res!3180810 () Bool)

(assert (=> b!8046402 (=> (not res!3180810) (not e!4740455))))

(assert (=> b!8046402 (= res!3180810 (is-Cons!75339 rules!4081))))

(declare-fun b!8046403 () Bool)

(declare-fun res!3180811 () Bool)

(assert (=> b!8046403 (=> (not res!3180811) (not e!4740455))))

(declare-fun subseq!912 (List!75462 List!75462) Bool)

(assert (=> b!8046403 (= res!3180811 (subseq!912 newAcc!87 acc!573))))

(declare-fun b!8046404 () Bool)

(declare-fun e!4740462 () Bool)

(declare-fun tp!2412080 () Bool)

(assert (=> b!8046404 (= e!4740462 (and e!4740461 tp!2412080))))

(declare-fun res!3180809 () Bool)

(assert (=> start!757662 (=> (not res!3180809) (not e!4740455))))

(assert (=> start!757662 (= res!3180809 (is-Lexer!8349 thiss!26941))))

(assert (=> start!757662 e!4740455))

(assert (=> start!757662 true))

(declare-fun e!4740459 () Bool)

(assert (=> start!757662 e!4740459))

(assert (=> start!757662 e!4740454))

(assert (=> start!757662 e!4740462))

(declare-fun b!8046400 () Bool)

(declare-fun tp!2412076 () Bool)

(assert (=> b!8046400 (= e!4740459 (and (inv!97073 (h!81784 newAcc!87)) tp!2412076))))

(assert (= (and start!757662 res!3180809) b!8046403))

(assert (= (and b!8046403 res!3180811) b!8046398))

(assert (= (and b!8046398 res!3180808) b!8046402))

(assert (= (and b!8046402 res!3180810) b!8046397))

(assert (= (and start!757662 (is-Cons!75336 newAcc!87)) b!8046400))

(assert (= (and start!757662 (is-Cons!75336 acc!573)) b!8046396))

(assert (= b!8046401 b!8046399))

(assert (= b!8046404 b!8046401))

(assert (= (and start!757662 (is-Cons!75339 rules!4081)) b!8046404))

(declare-fun m!8398562 () Bool)

(assert (=> b!8046397 m!8398562))

(declare-fun m!8398564 () Bool)

(assert (=> b!8046397 m!8398564))

(declare-fun m!8398566 () Bool)

(assert (=> b!8046397 m!8398566))

(declare-fun m!8398568 () Bool)

(assert (=> b!8046403 m!8398568))

(declare-fun m!8398570 () Bool)

(assert (=> b!8046396 m!8398570))

(declare-fun m!8398572 () Bool)

(assert (=> b!8046398 m!8398572))

(declare-fun m!8398574 () Bool)

(assert (=> b!8046401 m!8398574))

(declare-fun m!8398576 () Bool)

(assert (=> b!8046401 m!8398576))

(declare-fun m!8398578 () Bool)

(assert (=> b!8046400 m!8398578))

(push 1)

(assert (not b!8046401))

(assert (not b_next!137219))

(assert b_and!354863)

(assert b_and!354865)

(assert (not b!8046396))

(assert (not b!8046400))

(assert (not b!8046404))

(assert (not b!8046397))

(assert (not b_next!137217))

(assert (not b!8046403))

(assert (not b!8046398))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354865)

(assert b_and!354863)

(assert (not b_next!137219))

(assert (not b_next!137217))

(check-sat)

(pop 1)

