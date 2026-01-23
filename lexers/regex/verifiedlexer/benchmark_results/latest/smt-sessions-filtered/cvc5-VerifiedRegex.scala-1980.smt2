; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100788 () Bool)

(assert start!100788)

(declare-fun b!1155586 () Bool)

(declare-fun e!739036 () Bool)

(assert (=> b!1155586 (= e!739036 true)))

(declare-fun b!1155585 () Bool)

(declare-fun e!739035 () Bool)

(assert (=> b!1155585 (= e!739035 e!739036)))

(declare-fun b!1155571 () Bool)

(assert (=> b!1155571 e!739035))

(assert (= b!1155585 b!1155586))

(assert (= b!1155571 b!1155585))

(declare-fun e!739025 () Bool)

(declare-fun e!739028 () Bool)

(assert (=> b!1155571 (= e!739025 (not e!739028))))

(declare-fun res!519946 () Bool)

(assert (=> b!1155571 (=> res!519946 e!739028)))

(declare-datatypes ((List!11242 0))(
  ( (Nil!11218) (Cons!11218 (h!16619 (_ BitVec 16)) (t!108918 List!11242)) )
))
(declare-datatypes ((TokenValue!2006 0))(
  ( (FloatLiteralValue!4012 (text!14487 List!11242)) (TokenValueExt!2005 (__x!7723 Int)) (Broken!10030 (value!63262 List!11242)) (Object!2029) (End!2006) (Def!2006) (Underscore!2006) (Match!2006) (Else!2006) (Error!2006) (Case!2006) (If!2006) (Extends!2006) (Abstract!2006) (Class!2006) (Val!2006) (DelimiterValue!4012 (del!2066 List!11242)) (KeywordValue!2012 (value!63263 List!11242)) (CommentValue!4012 (value!63264 List!11242)) (WhitespaceValue!4012 (value!63265 List!11242)) (IndentationValue!2006 (value!63266 List!11242)) (String!13619) (Int32!2006) (Broken!10031 (value!63267 List!11242)) (Boolean!2007) (Unit!17252) (OperatorValue!2009 (op!2066 List!11242)) (IdentifierValue!4012 (value!63268 List!11242)) (IdentifierValue!4013 (value!63269 List!11242)) (WhitespaceValue!4013 (value!63270 List!11242)) (True!4012) (False!4012) (Broken!10032 (value!63271 List!11242)) (Broken!10033 (value!63272 List!11242)) (True!4013) (RightBrace!2006) (RightBracket!2006) (Colon!2006) (Null!2006) (Comma!2006) (LeftBracket!2006) (False!4013) (LeftBrace!2006) (ImaginaryLiteralValue!2006 (text!14488 List!11242)) (StringLiteralValue!6018 (value!63273 List!11242)) (EOFValue!2006 (value!63274 List!11242)) (IdentValue!2006 (value!63275 List!11242)) (DelimiterValue!4013 (value!63276 List!11242)) (DedentValue!2006 (value!63277 List!11242)) (NewLineValue!2006 (value!63278 List!11242)) (IntegerValue!6018 (value!63279 (_ BitVec 32)) (text!14489 List!11242)) (IntegerValue!6019 (value!63280 Int) (text!14490 List!11242)) (Times!2006) (Or!2006) (Equal!2006) (Minus!2006) (Broken!10034 (value!63281 List!11242)) (And!2006) (Div!2006) (LessEqual!2006) (Mod!2006) (Concat!5216) (Not!2006) (Plus!2006) (SpaceValue!2006 (value!63282 List!11242)) (IntegerValue!6020 (value!63283 Int) (text!14491 List!11242)) (StringLiteralValue!6019 (text!14492 List!11242)) (FloatLiteralValue!4013 (text!14493 List!11242)) (BytesLiteralValue!2006 (value!63284 List!11242)) (CommentValue!4013 (value!63285 List!11242)) (StringLiteralValue!6020 (value!63286 List!11242)) (ErrorTokenValue!2006 (msg!2067 List!11242)) )
))
(declare-datatypes ((C!6738 0))(
  ( (C!6739 (val!3625 Int)) )
))
(declare-datatypes ((Regex!3210 0))(
  ( (ElementMatch!3210 (c!194019 C!6738)) (Concat!5217 (regOne!6932 Regex!3210) (regTwo!6932 Regex!3210)) (EmptyExpr!3210) (Star!3210 (reg!3539 Regex!3210)) (EmptyLang!3210) (Union!3210 (regOne!6933 Regex!3210) (regTwo!6933 Regex!3210)) )
))
(declare-datatypes ((String!13620 0))(
  ( (String!13621 (value!63287 String)) )
))
(declare-datatypes ((List!11243 0))(
  ( (Nil!11219) (Cons!11219 (h!16620 C!6738) (t!108919 List!11243)) )
))
(declare-datatypes ((IArray!7289 0))(
  ( (IArray!7290 (innerList!3702 List!11243)) )
))
(declare-datatypes ((Conc!3642 0))(
  ( (Node!3642 (left!9776 Conc!3642) (right!10106 Conc!3642) (csize!7514 Int) (cheight!3853 Int)) (Leaf!5623 (xs!6347 IArray!7289) (csize!7515 Int)) (Empty!3642) )
))
(declare-datatypes ((BalanceConc!7306 0))(
  ( (BalanceConc!7307 (c!194020 Conc!3642)) )
))
(declare-datatypes ((TokenValueInjection!3712 0))(
  ( (TokenValueInjection!3713 (toValue!3041 Int) (toChars!2900 Int)) )
))
(declare-datatypes ((Rule!3680 0))(
  ( (Rule!3681 (regex!1940 Regex!3210) (tag!2202 String!13620) (isSeparator!1940 Bool) (transformation!1940 TokenValueInjection!3712)) )
))
(declare-datatypes ((Token!3542 0))(
  ( (Token!3543 (value!63288 TokenValue!2006) (rule!3361 Rule!3680) (size!8830 Int) (originalCharacters!2494 List!11243)) )
))
(declare-datatypes ((List!11244 0))(
  ( (Nil!11220) (Cons!11220 (h!16621 Token!3542) (t!108920 List!11244)) )
))
(declare-datatypes ((List!11245 0))(
  ( (Nil!11221) (Cons!11221 (h!16622 Rule!3680) (t!108921 List!11245)) )
))
(declare-datatypes ((IArray!7291 0))(
  ( (IArray!7292 (innerList!3703 List!11244)) )
))
(declare-datatypes ((Conc!3643 0))(
  ( (Node!3643 (left!9777 Conc!3643) (right!10107 Conc!3643) (csize!7516 Int) (cheight!3854 Int)) (Leaf!5624 (xs!6348 IArray!7291) (csize!7517 Int)) (Empty!3643) )
))
(declare-datatypes ((BalanceConc!7308 0))(
  ( (BalanceConc!7309 (c!194021 Conc!3643)) )
))
(declare-datatypes ((PrintableTokens!566 0))(
  ( (PrintableTokens!567 (rules!9413 List!11245) (tokens!1539 BalanceConc!7308)) )
))
(declare-fun thiss!10527 () PrintableTokens!566)

(declare-fun lambda!46590 () Int)

(declare-fun forall!2865 (BalanceConc!7308 Int) Bool)

(assert (=> b!1155571 (= res!519946 (not (forall!2865 (tokens!1539 thiss!10527) lambda!46590)))))

(declare-fun lt!392878 () List!11244)

(declare-fun e!739030 () Bool)

(declare-datatypes ((LexerInterface!1635 0))(
  ( (LexerInterfaceExt!1632 (__x!7724 Int)) (Lexer!1633) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!503 (LexerInterface!1635 List!11245 List!11244) Bool)

(assert (=> b!1155571 (= (rulesProduceEachTokenIndividuallyList!503 Lexer!1633 (rules!9413 thiss!10527) lt!392878) e!739030)))

(declare-fun res!519944 () Bool)

(assert (=> b!1155571 (=> res!519944 e!739030)))

(assert (=> b!1155571 (= res!519944 (not (is-Cons!11220 lt!392878)))))

(declare-fun list!4136 (BalanceConc!7308) List!11244)

(assert (=> b!1155571 (= lt!392878 (list!4136 (tokens!1539 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!674 (LexerInterface!1635 List!11245 BalanceConc!7308) Bool)

(assert (=> b!1155571 (= (rulesProduceEachTokenIndividually!674 Lexer!1633 (rules!9413 thiss!10527) (tokens!1539 thiss!10527)) (forall!2865 (tokens!1539 thiss!10527) lambda!46590))))

(declare-fun b!1155572 () Bool)

(declare-fun res!519949 () Bool)

(declare-fun e!739024 () Bool)

(assert (=> b!1155572 (=> (not res!519949) (not e!739024))))

(declare-fun to!267 () Int)

(declare-fun size!8831 (BalanceConc!7308) Int)

(assert (=> b!1155572 (= res!519949 (<= to!267 (size!8831 (tokens!1539 thiss!10527))))))

(declare-fun b!1155573 () Bool)

(declare-fun e!739027 () Bool)

(declare-fun tp!333083 () Bool)

(declare-fun e!739029 () Bool)

(declare-fun inv!14733 (BalanceConc!7308) Bool)

(assert (=> b!1155573 (= e!739027 (and tp!333083 (inv!14733 (tokens!1539 thiss!10527)) e!739029))))

(declare-fun res!519948 () Bool)

(assert (=> start!100788 (=> (not res!519948) (not e!739024))))

(declare-fun from!787 () Int)

(assert (=> start!100788 (= res!519948 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100788 e!739024))

(assert (=> start!100788 true))

(declare-fun inv!14734 (PrintableTokens!566) Bool)

(assert (=> start!100788 (and (inv!14734 thiss!10527) e!739027)))

(declare-fun b!1155574 () Bool)

(assert (=> b!1155574 (= e!739024 e!739025)))

(declare-fun res!519945 () Bool)

(assert (=> b!1155574 (=> (not res!519945) (not e!739025))))

(declare-fun rulesInvariant!1509 (LexerInterface!1635 List!11245) Bool)

(assert (=> b!1155574 (= res!519945 (rulesInvariant!1509 Lexer!1633 (rules!9413 thiss!10527)))))

(declare-datatypes ((Unit!17253 0))(
  ( (Unit!17254) )
))
(declare-fun lt!392879 () Unit!17253)

(declare-fun lemmaInvariant!127 (PrintableTokens!566) Unit!17253)

(assert (=> b!1155574 (= lt!392879 (lemmaInvariant!127 thiss!10527))))

(declare-fun b!1155575 () Bool)

(declare-fun e!739026 () Bool)

(assert (=> b!1155575 (= e!739030 e!739026)))

(declare-fun res!519947 () Bool)

(assert (=> b!1155575 (=> (not res!519947) (not e!739026))))

(declare-fun rulesProduceIndividualToken!672 (LexerInterface!1635 List!11245 Token!3542) Bool)

(assert (=> b!1155575 (= res!519947 (rulesProduceIndividualToken!672 Lexer!1633 (rules!9413 thiss!10527) (h!16621 lt!392878)))))

(declare-fun b!1155576 () Bool)

(assert (=> b!1155576 (= e!739028 true)))

(declare-fun lt!392877 () List!11244)

(declare-fun forall!2866 (List!11244 Int) Bool)

(assert (=> b!1155576 (forall!2866 lt!392877 lambda!46590)))

(declare-fun lt!392880 () Unit!17253)

(declare-fun lemmaForallSubseq!88 (List!11244 List!11244 Int) Unit!17253)

(assert (=> b!1155576 (= lt!392880 (lemmaForallSubseq!88 lt!392877 lt!392878 lambda!46590))))

(declare-fun slice!159 (BalanceConc!7308 Int Int) BalanceConc!7308)

(assert (=> b!1155576 (= lt!392877 (list!4136 (slice!159 (tokens!1539 thiss!10527) from!787 to!267)))))

(declare-fun subseq!196 (List!11244 List!11244) Bool)

(declare-fun slice!160 (List!11244 Int Int) List!11244)

(assert (=> b!1155576 (subseq!196 (slice!160 lt!392878 from!787 to!267) lt!392878)))

(declare-fun lt!392881 () Unit!17253)

(declare-fun lemmaSliceSubseq!37 (List!11244 Int Int) Unit!17253)

(assert (=> b!1155576 (= lt!392881 (lemmaSliceSubseq!37 lt!392878 from!787 to!267))))

(declare-fun b!1155577 () Bool)

(assert (=> b!1155577 (= e!739026 (rulesProduceEachTokenIndividuallyList!503 Lexer!1633 (rules!9413 thiss!10527) (t!108920 lt!392878)))))

(declare-fun b!1155578 () Bool)

(declare-fun tp!333084 () Bool)

(declare-fun inv!14735 (Conc!3643) Bool)

(assert (=> b!1155578 (= e!739029 (and (inv!14735 (c!194021 (tokens!1539 thiss!10527))) tp!333084))))

(assert (= (and start!100788 res!519948) b!1155572))

(assert (= (and b!1155572 res!519949) b!1155574))

(assert (= (and b!1155574 res!519945) b!1155571))

(assert (= (and b!1155571 (not res!519944)) b!1155575))

(assert (= (and b!1155575 res!519947) b!1155577))

(assert (= (and b!1155571 (not res!519946)) b!1155576))

(assert (= b!1155573 b!1155578))

(assert (= start!100788 b!1155573))

(declare-fun m!1322463 () Bool)

(assert (=> b!1155575 m!1322463))

(declare-fun m!1322465 () Bool)

(assert (=> b!1155576 m!1322465))

(declare-fun m!1322467 () Bool)

(assert (=> b!1155576 m!1322467))

(declare-fun m!1322469 () Bool)

(assert (=> b!1155576 m!1322469))

(declare-fun m!1322471 () Bool)

(assert (=> b!1155576 m!1322471))

(assert (=> b!1155576 m!1322469))

(declare-fun m!1322473 () Bool)

(assert (=> b!1155576 m!1322473))

(declare-fun m!1322475 () Bool)

(assert (=> b!1155576 m!1322475))

(assert (=> b!1155576 m!1322465))

(declare-fun m!1322477 () Bool)

(assert (=> b!1155576 m!1322477))

(declare-fun m!1322479 () Bool)

(assert (=> b!1155578 m!1322479))

(declare-fun m!1322481 () Bool)

(assert (=> start!100788 m!1322481))

(declare-fun m!1322483 () Bool)

(assert (=> b!1155572 m!1322483))

(declare-fun m!1322485 () Bool)

(assert (=> b!1155577 m!1322485))

(declare-fun m!1322487 () Bool)

(assert (=> b!1155571 m!1322487))

(declare-fun m!1322489 () Bool)

(assert (=> b!1155571 m!1322489))

(declare-fun m!1322491 () Bool)

(assert (=> b!1155571 m!1322491))

(declare-fun m!1322493 () Bool)

(assert (=> b!1155571 m!1322493))

(assert (=> b!1155571 m!1322491))

(declare-fun m!1322495 () Bool)

(assert (=> b!1155573 m!1322495))

(declare-fun m!1322497 () Bool)

(assert (=> b!1155574 m!1322497))

(declare-fun m!1322499 () Bool)

(assert (=> b!1155574 m!1322499))

(push 1)

(assert (not b!1155571))

(assert (not b!1155572))

(assert (not b!1155573))

(assert (not b!1155586))

(assert (not b!1155577))

(assert (not start!100788))

(assert (not b!1155576))

(assert (not b!1155578))

(assert (not b!1155585))

(assert (not b!1155574))

(assert (not b!1155575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

