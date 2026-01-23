; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15758 () Bool)

(assert start!15758)

(declare-fun b!148120 () Bool)

(declare-fun b_free!5273 () Bool)

(declare-fun b_next!5273 () Bool)

(assert (=> b!148120 (= b_free!5273 (not b_next!5273))))

(declare-fun tp!77661 () Bool)

(declare-fun b_and!8249 () Bool)

(assert (=> b!148120 (= tp!77661 b_and!8249)))

(declare-fun b_free!5275 () Bool)

(declare-fun b_next!5275 () Bool)

(assert (=> b!148120 (= b_free!5275 (not b_next!5275))))

(declare-fun tp!77655 () Bool)

(declare-fun b_and!8251 () Bool)

(assert (=> b!148120 (= tp!77655 b_and!8251)))

(declare-fun b!148138 () Bool)

(declare-fun b_free!5277 () Bool)

(declare-fun b_next!5277 () Bool)

(assert (=> b!148138 (= b_free!5277 (not b_next!5277))))

(declare-fun tp!77662 () Bool)

(declare-fun b_and!8253 () Bool)

(assert (=> b!148138 (= tp!77662 b_and!8253)))

(declare-fun b_free!5279 () Bool)

(declare-fun b_next!5279 () Bool)

(assert (=> b!148138 (= b_free!5279 (not b_next!5279))))

(declare-fun tp!77663 () Bool)

(declare-fun b_and!8255 () Bool)

(assert (=> b!148138 (= tp!77663 b_and!8255)))

(declare-fun b!148118 () Bool)

(declare-fun b_free!5281 () Bool)

(declare-fun b_next!5281 () Bool)

(assert (=> b!148118 (= b_free!5281 (not b_next!5281))))

(declare-fun tp!77656 () Bool)

(declare-fun b_and!8257 () Bool)

(assert (=> b!148118 (= tp!77656 b_and!8257)))

(declare-fun b_free!5283 () Bool)

(declare-fun b_next!5283 () Bool)

(assert (=> b!148118 (= b_free!5283 (not b_next!5283))))

(declare-fun tp!77665 () Bool)

(declare-fun b_and!8259 () Bool)

(assert (=> b!148118 (= tp!77665 b_and!8259)))

(declare-fun b!148119 () Bool)

(declare-fun res!68072 () Bool)

(declare-fun e!88141 () Bool)

(assert (=> b!148119 (=> (not res!68072) (not e!88141))))

(declare-datatypes ((List!2571 0))(
  ( (Nil!2561) (Cons!2561 (h!7958 (_ BitVec 16)) (t!24443 List!2571)) )
))
(declare-datatypes ((TokenValue!463 0))(
  ( (FloatLiteralValue!926 (text!3686 List!2571)) (TokenValueExt!462 (__x!2413 Int)) (Broken!2315 (value!16858 List!2571)) (Object!472) (End!463) (Def!463) (Underscore!463) (Match!463) (Else!463) (Error!463) (Case!463) (If!463) (Extends!463) (Abstract!463) (Class!463) (Val!463) (DelimiterValue!926 (del!523 List!2571)) (KeywordValue!469 (value!16859 List!2571)) (CommentValue!926 (value!16860 List!2571)) (WhitespaceValue!926 (value!16861 List!2571)) (IndentationValue!463 (value!16862 List!2571)) (String!3394) (Int32!463) (Broken!2316 (value!16863 List!2571)) (Boolean!464) (Unit!1927) (OperatorValue!466 (op!523 List!2571)) (IdentifierValue!926 (value!16864 List!2571)) (IdentifierValue!927 (value!16865 List!2571)) (WhitespaceValue!927 (value!16866 List!2571)) (True!926) (False!926) (Broken!2317 (value!16867 List!2571)) (Broken!2318 (value!16868 List!2571)) (True!927) (RightBrace!463) (RightBracket!463) (Colon!463) (Null!463) (Comma!463) (LeftBracket!463) (False!927) (LeftBrace!463) (ImaginaryLiteralValue!463 (text!3687 List!2571)) (StringLiteralValue!1389 (value!16869 List!2571)) (EOFValue!463 (value!16870 List!2571)) (IdentValue!463 (value!16871 List!2571)) (DelimiterValue!927 (value!16872 List!2571)) (DedentValue!463 (value!16873 List!2571)) (NewLineValue!463 (value!16874 List!2571)) (IntegerValue!1389 (value!16875 (_ BitVec 32)) (text!3688 List!2571)) (IntegerValue!1390 (value!16876 Int) (text!3689 List!2571)) (Times!463) (Or!463) (Equal!463) (Minus!463) (Broken!2319 (value!16877 List!2571)) (And!463) (Div!463) (LessEqual!463) (Mod!463) (Concat!1128) (Not!463) (Plus!463) (SpaceValue!463 (value!16878 List!2571)) (IntegerValue!1391 (value!16879 Int) (text!3690 List!2571)) (StringLiteralValue!1390 (text!3691 List!2571)) (FloatLiteralValue!927 (text!3692 List!2571)) (BytesLiteralValue!463 (value!16880 List!2571)) (CommentValue!927 (value!16881 List!2571)) (StringLiteralValue!1391 (value!16882 List!2571)) (ErrorTokenValue!463 (msg!524 List!2571)) )
))
(declare-datatypes ((C!2252 0))(
  ( (C!2253 (val!1012 Int)) )
))
(declare-datatypes ((List!2572 0))(
  ( (Nil!2562) (Cons!2562 (h!7959 C!2252) (t!24444 List!2572)) )
))
(declare-datatypes ((IArray!1409 0))(
  ( (IArray!1410 (innerList!762 List!2572)) )
))
(declare-datatypes ((Conc!704 0))(
  ( (Node!704 (left!1935 Conc!704) (right!2265 Conc!704) (csize!1638 Int) (cheight!915 Int)) (Leaf!1264 (xs!3299 IArray!1409) (csize!1639 Int)) (Empty!704) )
))
(declare-datatypes ((BalanceConc!1416 0))(
  ( (BalanceConc!1417 (c!30133 Conc!704)) )
))
(declare-datatypes ((TokenValueInjection!698 0))(
  ( (TokenValueInjection!699 (toValue!1072 Int) (toChars!931 Int)) )
))
(declare-datatypes ((String!3395 0))(
  ( (String!3396 (value!16883 String)) )
))
(declare-datatypes ((Regex!665 0))(
  ( (ElementMatch!665 (c!30134 C!2252)) (Concat!1129 (regOne!1842 Regex!665) (regTwo!1842 Regex!665)) (EmptyExpr!665) (Star!665 (reg!994 Regex!665)) (EmptyLang!665) (Union!665 (regOne!1843 Regex!665) (regTwo!1843 Regex!665)) )
))
(declare-datatypes ((Rule!682 0))(
  ( (Rule!683 (regex!441 Regex!665) (tag!619 String!3395) (isSeparator!441 Bool) (transformation!441 TokenValueInjection!698)) )
))
(declare-datatypes ((Token!626 0))(
  ( (Token!627 (value!16884 TokenValue!463) (rule!948 Rule!682) (size!2208 Int) (originalCharacters!484 List!2572)) )
))
(declare-fun separatorToken!170 () Token!626)

(assert (=> b!148119 (= res!68072 (isSeparator!441 (rule!948 separatorToken!170)))))

(declare-fun e!88135 () Bool)

(assert (=> b!148120 (= e!88135 (and tp!77661 tp!77655))))

(declare-fun b!148121 () Bool)

(declare-fun res!68074 () Bool)

(assert (=> b!148121 (=> (not res!68074) (not e!88141))))

(declare-datatypes ((List!2573 0))(
  ( (Nil!2563) (Cons!2563 (h!7960 Rule!682) (t!24445 List!2573)) )
))
(declare-fun rules!1920 () List!2573)

(declare-datatypes ((LexerInterface!327 0))(
  ( (LexerInterfaceExt!324 (__x!2414 Int)) (Lexer!325) )
))
(declare-fun thiss!17480 () LexerInterface!327)

(declare-fun rulesProduceIndividualToken!76 (LexerInterface!327 List!2573 Token!626) Bool)

(assert (=> b!148121 (= res!68074 (rulesProduceIndividualToken!76 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!148122 () Bool)

(declare-datatypes ((List!2574 0))(
  ( (Nil!2564) (Cons!2564 (h!7961 Token!626) (t!24446 List!2574)) )
))
(declare-fun tokens!465 () List!2574)

(declare-fun e!88136 () Bool)

(declare-fun tp!77667 () Bool)

(declare-fun e!88137 () Bool)

(declare-fun inv!3349 (String!3395) Bool)

(declare-fun inv!3352 (TokenValueInjection!698) Bool)

(assert (=> b!148122 (= e!88137 (and tp!77667 (inv!3349 (tag!619 (rule!948 (h!7961 tokens!465)))) (inv!3352 (transformation!441 (rule!948 (h!7961 tokens!465)))) e!88136))))

(declare-fun e!88146 () Bool)

(declare-fun b!148123 () Bool)

(declare-fun tp!77659 () Bool)

(assert (=> b!148123 (= e!88146 (and tp!77659 (inv!3349 (tag!619 (rule!948 separatorToken!170))) (inv!3352 (transformation!441 (rule!948 separatorToken!170))) e!88135))))

(declare-fun b!148124 () Bool)

(declare-fun res!68080 () Bool)

(assert (=> b!148124 (=> (not res!68080) (not e!88141))))

(get-info :version)

(assert (=> b!148124 (= res!68080 ((_ is Cons!2564) tokens!465))))

(declare-fun b!148125 () Bool)

(declare-fun res!68078 () Bool)

(assert (=> b!148125 (=> (not res!68078) (not e!88141))))

(declare-datatypes ((IArray!1411 0))(
  ( (IArray!1412 (innerList!763 List!2574)) )
))
(declare-datatypes ((Conc!705 0))(
  ( (Node!705 (left!1936 Conc!705) (right!2266 Conc!705) (csize!1640 Int) (cheight!916 Int)) (Leaf!1265 (xs!3300 IArray!1411) (csize!1641 Int)) (Empty!705) )
))
(declare-datatypes ((BalanceConc!1418 0))(
  ( (BalanceConc!1419 (c!30135 Conc!705)) )
))
(declare-fun lt!42960 () BalanceConc!1418)

(declare-fun size!2209 (BalanceConc!1418) Int)

(assert (=> b!148125 (= res!68078 (<= 0 (size!2209 lt!42960)))))

(declare-fun e!88142 () Bool)

(declare-fun b!148126 () Bool)

(declare-fun tp!77658 () Bool)

(declare-fun inv!21 (TokenValue!463) Bool)

(assert (=> b!148126 (= e!88142 (and (inv!21 (value!16884 separatorToken!170)) e!88146 tp!77658))))

(declare-fun b!148127 () Bool)

(declare-fun e!88139 () Bool)

(declare-fun e!88138 () Bool)

(declare-fun tp!77660 () Bool)

(assert (=> b!148127 (= e!88139 (and e!88138 tp!77660))))

(declare-fun b!148128 () Bool)

(declare-fun res!68082 () Bool)

(assert (=> b!148128 (=> (not res!68082) (not e!88141))))

(declare-fun printWithSeparatorTokenWhenNeededList!20 (LexerInterface!327 List!2573 List!2574 Token!626) List!2572)

(declare-fun list!891 (BalanceConc!1416) List!2572)

(declare-fun printWithSeparatorTokenWhenNeededRec!10 (LexerInterface!327 List!2573 BalanceConc!1418 Token!626 Int) BalanceConc!1416)

(assert (=> b!148128 (= res!68082 (= (printWithSeparatorTokenWhenNeededList!20 thiss!17480 rules!1920 tokens!465 separatorToken!170) (list!891 (printWithSeparatorTokenWhenNeededRec!10 thiss!17480 rules!1920 lt!42960 separatorToken!170 0))))))

(declare-fun tp!77666 () Bool)

(declare-fun b!148129 () Bool)

(declare-fun e!88147 () Bool)

(declare-fun e!88151 () Bool)

(declare-fun inv!3353 (Token!626) Bool)

(assert (=> b!148129 (= e!88151 (and (inv!3353 (h!7961 tokens!465)) e!88147 tp!77666))))

(declare-fun b!148130 () Bool)

(declare-fun res!68075 () Bool)

(assert (=> b!148130 (=> (not res!68075) (not e!88141))))

(declare-fun lambda!3710 () Int)

(declare-fun forall!420 (List!2574 Int) Bool)

(assert (=> b!148130 (= res!68075 (forall!420 tokens!465 lambda!3710))))

(declare-fun b!148131 () Bool)

(declare-fun res!68081 () Bool)

(assert (=> b!148131 (=> (not res!68081) (not e!88141))))

(declare-fun sepAndNonSepRulesDisjointChars!30 (List!2573 List!2573) Bool)

(assert (=> b!148131 (= res!68081 (sepAndNonSepRulesDisjointChars!30 rules!1920 rules!1920))))

(declare-fun e!88150 () Bool)

(declare-fun tp!77664 () Bool)

(declare-fun b!148132 () Bool)

(assert (=> b!148132 (= e!88138 (and tp!77664 (inv!3349 (tag!619 (h!7960 rules!1920))) (inv!3352 (transformation!441 (h!7960 rules!1920))) e!88150))))

(declare-fun b!148133 () Bool)

(declare-fun e!88149 () Bool)

(assert (=> b!148133 (= e!88149 e!88141)))

(declare-fun res!68079 () Bool)

(assert (=> b!148133 (=> (not res!68079) (not e!88141))))

(declare-fun rulesProduceEachTokenIndividually!119 (LexerInterface!327 List!2573 BalanceConc!1418) Bool)

(assert (=> b!148133 (= res!68079 (rulesProduceEachTokenIndividually!119 thiss!17480 rules!1920 lt!42960))))

(declare-fun seqFromList!260 (List!2574) BalanceConc!1418)

(assert (=> b!148133 (= lt!42960 (seqFromList!260 tokens!465))))

(declare-fun b!148134 () Bool)

(declare-fun res!68073 () Bool)

(assert (=> b!148134 (=> (not res!68073) (not e!88149))))

(declare-fun rulesInvariant!293 (LexerInterface!327 List!2573) Bool)

(assert (=> b!148134 (= res!68073 (rulesInvariant!293 thiss!17480 rules!1920))))

(declare-fun res!68077 () Bool)

(assert (=> start!15758 (=> (not res!68077) (not e!88149))))

(assert (=> start!15758 (= res!68077 ((_ is Lexer!325) thiss!17480))))

(assert (=> start!15758 e!88149))

(assert (=> start!15758 true))

(assert (=> start!15758 e!88139))

(assert (=> start!15758 (and (inv!3353 separatorToken!170) e!88142)))

(assert (=> start!15758 e!88151))

(assert (=> b!148118 (= e!88136 (and tp!77656 tp!77665))))

(declare-fun b!148135 () Bool)

(declare-fun res!68076 () Bool)

(assert (=> b!148135 (=> (not res!68076) (not e!88149))))

(declare-fun isEmpty!1004 (List!2573) Bool)

(assert (=> b!148135 (= res!68076 (not (isEmpty!1004 rules!1920)))))

(declare-fun b!148136 () Bool)

(assert (=> b!148136 (= e!88141 false)))

(declare-fun lt!42959 () Bool)

(declare-fun forall!421 (BalanceConc!1418 Int) Bool)

(assert (=> b!148136 (= lt!42959 (forall!421 lt!42960 lambda!3710))))

(declare-fun b!148137 () Bool)

(declare-fun tp!77657 () Bool)

(assert (=> b!148137 (= e!88147 (and (inv!21 (value!16884 (h!7961 tokens!465))) e!88137 tp!77657))))

(assert (=> b!148138 (= e!88150 (and tp!77662 tp!77663))))

(assert (= (and start!15758 res!68077) b!148135))

(assert (= (and b!148135 res!68076) b!148134))

(assert (= (and b!148134 res!68073) b!148133))

(assert (= (and b!148133 res!68079) b!148121))

(assert (= (and b!148121 res!68074) b!148119))

(assert (= (and b!148119 res!68072) b!148130))

(assert (= (and b!148130 res!68075) b!148131))

(assert (= (and b!148131 res!68081) b!148124))

(assert (= (and b!148124 res!68080) b!148128))

(assert (= (and b!148128 res!68082) b!148125))

(assert (= (and b!148125 res!68078) b!148136))

(assert (= b!148132 b!148138))

(assert (= b!148127 b!148132))

(assert (= (and start!15758 ((_ is Cons!2563) rules!1920)) b!148127))

(assert (= b!148123 b!148120))

(assert (= b!148126 b!148123))

(assert (= start!15758 b!148126))

(assert (= b!148122 b!148118))

(assert (= b!148137 b!148122))

(assert (= b!148129 b!148137))

(assert (= (and start!15758 ((_ is Cons!2564) tokens!465)) b!148129))

(declare-fun m!131431 () Bool)

(assert (=> b!148133 m!131431))

(declare-fun m!131433 () Bool)

(assert (=> b!148133 m!131433))

(declare-fun m!131435 () Bool)

(assert (=> b!148129 m!131435))

(declare-fun m!131437 () Bool)

(assert (=> b!148137 m!131437))

(declare-fun m!131439 () Bool)

(assert (=> b!148121 m!131439))

(declare-fun m!131441 () Bool)

(assert (=> b!148130 m!131441))

(declare-fun m!131443 () Bool)

(assert (=> b!148136 m!131443))

(declare-fun m!131445 () Bool)

(assert (=> b!148123 m!131445))

(declare-fun m!131447 () Bool)

(assert (=> b!148123 m!131447))

(declare-fun m!131449 () Bool)

(assert (=> b!148132 m!131449))

(declare-fun m!131451 () Bool)

(assert (=> b!148132 m!131451))

(declare-fun m!131453 () Bool)

(assert (=> b!148134 m!131453))

(declare-fun m!131455 () Bool)

(assert (=> b!148128 m!131455))

(declare-fun m!131457 () Bool)

(assert (=> b!148128 m!131457))

(assert (=> b!148128 m!131457))

(declare-fun m!131459 () Bool)

(assert (=> b!148128 m!131459))

(declare-fun m!131461 () Bool)

(assert (=> b!148135 m!131461))

(declare-fun m!131463 () Bool)

(assert (=> b!148125 m!131463))

(declare-fun m!131465 () Bool)

(assert (=> b!148122 m!131465))

(declare-fun m!131467 () Bool)

(assert (=> b!148122 m!131467))

(declare-fun m!131469 () Bool)

(assert (=> b!148126 m!131469))

(declare-fun m!131471 () Bool)

(assert (=> b!148131 m!131471))

(declare-fun m!131473 () Bool)

(assert (=> start!15758 m!131473))

(check-sat (not b!148125) (not b!148123) b_and!8249 (not start!15758) (not b_next!5279) (not b_next!5275) (not b!148131) (not b!148133) (not b!148130) (not b!148128) (not b!148137) b_and!8253 (not b!148135) (not b_next!5281) b_and!8259 (not b!148122) b_and!8255 b_and!8251 (not b_next!5283) (not b!148126) (not b!148127) (not b!148121) (not b!148132) (not b!148129) (not b!148134) b_and!8257 (not b_next!5273) (not b!148136) (not b_next!5277))
(check-sat (not b_next!5281) b_and!8259 b_and!8249 (not b_next!5279) (not b_next!5275) b_and!8253 (not b_next!5277) b_and!8255 b_and!8251 (not b_next!5283) b_and!8257 (not b_next!5273))
