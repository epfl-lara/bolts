; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379644 () Bool)

(assert start!379644)

(declare-fun b!4030223 () Bool)

(declare-fun b_free!112313 () Bool)

(declare-fun b_next!113017 () Bool)

(assert (=> b!4030223 (= b_free!112313 (not b_next!113017))))

(declare-fun tp!1224994 () Bool)

(declare-fun b_and!309703 () Bool)

(assert (=> b!4030223 (= tp!1224994 b_and!309703)))

(declare-fun b_free!112315 () Bool)

(declare-fun b_next!113019 () Bool)

(assert (=> b!4030223 (= b_free!112315 (not b_next!113019))))

(declare-fun tp!1224988 () Bool)

(declare-fun b_and!309705 () Bool)

(assert (=> b!4030223 (= tp!1224988 b_and!309705)))

(declare-fun b!4030205 () Bool)

(declare-fun b_free!112317 () Bool)

(declare-fun b_next!113021 () Bool)

(assert (=> b!4030205 (= b_free!112317 (not b_next!113021))))

(declare-fun tp!1224996 () Bool)

(declare-fun b_and!309707 () Bool)

(assert (=> b!4030205 (= tp!1224996 b_and!309707)))

(declare-fun b_free!112319 () Bool)

(declare-fun b_next!113023 () Bool)

(assert (=> b!4030205 (= b_free!112319 (not b_next!113023))))

(declare-fun tp!1224999 () Bool)

(declare-fun b_and!309709 () Bool)

(assert (=> b!4030205 (= tp!1224999 b_and!309709)))

(declare-fun b!4030203 () Bool)

(declare-fun e!2500690 () Bool)

(declare-fun e!2500699 () Bool)

(assert (=> b!4030203 (= e!2500690 (not e!2500699))))

(declare-fun res!1640568 () Bool)

(assert (=> b!4030203 (=> res!1640568 e!2500699)))

(declare-datatypes ((C!23808 0))(
  ( (C!23809 (val!13998 Int)) )
))
(declare-datatypes ((List!43305 0))(
  ( (Nil!43181) (Cons!43181 (h!48601 C!23808) (t!334146 List!43305)) )
))
(declare-fun lt!1432775 () List!43305)

(declare-fun lt!1432784 () List!43305)

(assert (=> b!4030203 (= res!1640568 (not (= lt!1432775 lt!1432784)))))

(declare-fun lt!1432790 () List!43305)

(declare-fun suffixResult!105 () List!43305)

(declare-fun ++!11308 (List!43305 List!43305) List!43305)

(assert (=> b!4030203 (= lt!1432775 (++!11308 lt!1432790 suffixResult!105))))

(declare-datatypes ((Unit!62343 0))(
  ( (Unit!62344) )
))
(declare-fun lt!1432776 () Unit!62343)

(declare-datatypes ((IArray!26239 0))(
  ( (IArray!26240 (innerList!13177 List!43305)) )
))
(declare-datatypes ((Conc!13117 0))(
  ( (Node!13117 (left!32524 Conc!13117) (right!32854 Conc!13117) (csize!26464 Int) (cheight!13328 Int)) (Leaf!20277 (xs!16423 IArray!26239) (csize!26465 Int)) (Empty!13117) )
))
(declare-datatypes ((BalanceConc!25828 0))(
  ( (BalanceConc!25829 (c!696118 Conc!13117)) )
))
(declare-datatypes ((List!43306 0))(
  ( (Nil!43182) (Cons!43182 (h!48602 (_ BitVec 16)) (t!334147 List!43306)) )
))
(declare-datatypes ((TokenValue!7136 0))(
  ( (FloatLiteralValue!14272 (text!50397 List!43306)) (TokenValueExt!7135 (__x!26489 Int)) (Broken!35680 (value!217429 List!43306)) (Object!7259) (End!7136) (Def!7136) (Underscore!7136) (Match!7136) (Else!7136) (Error!7136) (Case!7136) (If!7136) (Extends!7136) (Abstract!7136) (Class!7136) (Val!7136) (DelimiterValue!14272 (del!7196 List!43306)) (KeywordValue!7142 (value!217430 List!43306)) (CommentValue!14272 (value!217431 List!43306)) (WhitespaceValue!14272 (value!217432 List!43306)) (IndentationValue!7136 (value!217433 List!43306)) (String!49397) (Int32!7136) (Broken!35681 (value!217434 List!43306)) (Boolean!7137) (Unit!62345) (OperatorValue!7139 (op!7196 List!43306)) (IdentifierValue!14272 (value!217435 List!43306)) (IdentifierValue!14273 (value!217436 List!43306)) (WhitespaceValue!14273 (value!217437 List!43306)) (True!14272) (False!14272) (Broken!35682 (value!217438 List!43306)) (Broken!35683 (value!217439 List!43306)) (True!14273) (RightBrace!7136) (RightBracket!7136) (Colon!7136) (Null!7136) (Comma!7136) (LeftBracket!7136) (False!14273) (LeftBrace!7136) (ImaginaryLiteralValue!7136 (text!50398 List!43306)) (StringLiteralValue!21408 (value!217440 List!43306)) (EOFValue!7136 (value!217441 List!43306)) (IdentValue!7136 (value!217442 List!43306)) (DelimiterValue!14273 (value!217443 List!43306)) (DedentValue!7136 (value!217444 List!43306)) (NewLineValue!7136 (value!217445 List!43306)) (IntegerValue!21408 (value!217446 (_ BitVec 32)) (text!50399 List!43306)) (IntegerValue!21409 (value!217447 Int) (text!50400 List!43306)) (Times!7136) (Or!7136) (Equal!7136) (Minus!7136) (Broken!35684 (value!217448 List!43306)) (And!7136) (Div!7136) (LessEqual!7136) (Mod!7136) (Concat!18947) (Not!7136) (Plus!7136) (SpaceValue!7136 (value!217449 List!43306)) (IntegerValue!21410 (value!217450 Int) (text!50401 List!43306)) (StringLiteralValue!21409 (text!50402 List!43306)) (FloatLiteralValue!14273 (text!50403 List!43306)) (BytesLiteralValue!7136 (value!217451 List!43306)) (CommentValue!14273 (value!217452 List!43306)) (StringLiteralValue!21410 (value!217453 List!43306)) (ErrorTokenValue!7136 (msg!7197 List!43306)) )
))
(declare-datatypes ((Regex!11811 0))(
  ( (ElementMatch!11811 (c!696119 C!23808)) (Concat!18948 (regOne!24134 Regex!11811) (regTwo!24134 Regex!11811)) (EmptyExpr!11811) (Star!11811 (reg!12140 Regex!11811)) (EmptyLang!11811) (Union!11811 (regOne!24135 Regex!11811) (regTwo!24135 Regex!11811)) )
))
(declare-datatypes ((String!49398 0))(
  ( (String!49399 (value!217454 String)) )
))
(declare-datatypes ((TokenValueInjection!13700 0))(
  ( (TokenValueInjection!13701 (toValue!9430 Int) (toChars!9289 Int)) )
))
(declare-datatypes ((Rule!13612 0))(
  ( (Rule!13613 (regex!6906 Regex!11811) (tag!7766 String!49398) (isSeparator!6906 Bool) (transformation!6906 TokenValueInjection!13700)) )
))
(declare-datatypes ((Token!12950 0))(
  ( (Token!12951 (value!217455 TokenValue!7136) (rule!9966 Rule!13612) (size!32273 Int) (originalCharacters!7506 List!43305)) )
))
(declare-fun token!484 () Token!12950)

(declare-fun lemmaInv!1115 (TokenValueInjection!13700) Unit!62343)

(assert (=> b!4030203 (= lt!1432776 (lemmaInv!1115 (transformation!6906 (rule!9966 token!484))))))

(declare-datatypes ((LexerInterface!6495 0))(
  ( (LexerInterfaceExt!6492 (__x!26490 Int)) (Lexer!6493) )
))
(declare-fun thiss!21717 () LexerInterface!6495)

(declare-fun ruleValid!2836 (LexerInterface!6495 Rule!13612) Bool)

(assert (=> b!4030203 (ruleValid!2836 thiss!21717 (rule!9966 token!484))))

(declare-fun lt!1432778 () Unit!62343)

(declare-datatypes ((List!43307 0))(
  ( (Nil!43183) (Cons!43183 (h!48603 Rule!13612) (t!334148 List!43307)) )
))
(declare-fun rules!2999 () List!43307)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1906 (LexerInterface!6495 Rule!13612 List!43307) Unit!62343)

(assert (=> b!4030203 (= lt!1432778 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1906 thiss!21717 (rule!9966 token!484) rules!2999))))

(declare-fun e!2500694 () Bool)

(declare-fun e!2500710 () Bool)

(declare-fun tp!1224993 () Bool)

(declare-fun b!4030204 () Bool)

(declare-fun inv!21 (TokenValue!7136) Bool)

(assert (=> b!4030204 (= e!2500694 (and (inv!21 (value!217455 token!484)) e!2500710 tp!1224993))))

(declare-fun e!2500698 () Bool)

(assert (=> b!4030205 (= e!2500698 (and tp!1224996 tp!1224999))))

(declare-fun b!4030206 () Bool)

(declare-fun tp!1225000 () Bool)

(declare-fun e!2500704 () Bool)

(declare-fun inv!57682 (String!49398) Bool)

(declare-fun inv!57685 (TokenValueInjection!13700) Bool)

(assert (=> b!4030206 (= e!2500710 (and tp!1225000 (inv!57682 (tag!7766 (rule!9966 token!484))) (inv!57685 (transformation!6906 (rule!9966 token!484))) e!2500704))))

(declare-fun res!1640570 () Bool)

(declare-fun e!2500701 () Bool)

(assert (=> start!379644 (=> (not res!1640570) (not e!2500701))))

(get-info :version)

(assert (=> start!379644 (= res!1640570 ((_ is Lexer!6493) thiss!21717))))

(assert (=> start!379644 e!2500701))

(declare-fun e!2500714 () Bool)

(assert (=> start!379644 e!2500714))

(declare-fun inv!57686 (Token!12950) Bool)

(assert (=> start!379644 (and (inv!57686 token!484) e!2500694)))

(declare-fun e!2500711 () Bool)

(assert (=> start!379644 e!2500711))

(declare-fun e!2500703 () Bool)

(assert (=> start!379644 e!2500703))

(declare-fun e!2500702 () Bool)

(assert (=> start!379644 e!2500702))

(assert (=> start!379644 true))

(declare-fun e!2500706 () Bool)

(assert (=> start!379644 e!2500706))

(declare-fun e!2500691 () Bool)

(assert (=> start!379644 e!2500691))

(declare-fun b!4030207 () Bool)

(declare-fun res!1640554 () Bool)

(assert (=> b!4030207 (=> (not res!1640554) (not e!2500701))))

(declare-fun rulesInvariant!5838 (LexerInterface!6495 List!43307) Bool)

(assert (=> b!4030207 (= res!1640554 (rulesInvariant!5838 thiss!21717 rules!2999))))

(declare-fun b!4030208 () Bool)

(declare-fun e!2500712 () Bool)

(declare-fun e!2500688 () Bool)

(assert (=> b!4030208 (= e!2500712 e!2500688)))

(declare-fun res!1640556 () Bool)

(assert (=> b!4030208 (=> res!1640556 e!2500688)))

(declare-fun lt!1432781 () List!43305)

(assert (=> b!4030208 (= res!1640556 (not (= lt!1432781 lt!1432784)))))

(declare-fun lt!1432770 () List!43305)

(assert (=> b!4030208 (= lt!1432781 (++!11308 lt!1432790 lt!1432770))))

(declare-fun getSuffix!2410 (List!43305 List!43305) List!43305)

(assert (=> b!4030208 (= lt!1432770 (getSuffix!2410 lt!1432784 lt!1432790))))

(declare-fun e!2500707 () Bool)

(assert (=> b!4030208 e!2500707))

(declare-fun res!1640571 () Bool)

(assert (=> b!4030208 (=> (not res!1640571) (not e!2500707))))

(declare-fun isPrefix!3993 (List!43305 List!43305) Bool)

(assert (=> b!4030208 (= res!1640571 (isPrefix!3993 lt!1432784 lt!1432784))))

(declare-fun lt!1432789 () Unit!62343)

(declare-fun lemmaIsPrefixRefl!2560 (List!43305 List!43305) Unit!62343)

(assert (=> b!4030208 (= lt!1432789 (lemmaIsPrefixRefl!2560 lt!1432784 lt!1432784))))

(declare-fun b!4030209 () Bool)

(declare-fun res!1640569 () Bool)

(assert (=> b!4030209 (=> (not res!1640569) (not e!2500707))))

(declare-fun size!32274 (List!43305) Int)

(assert (=> b!4030209 (= res!1640569 (= (size!32273 token!484) (size!32274 (originalCharacters!7506 token!484))))))

(declare-fun b!4030210 () Bool)

(declare-fun tp_is_empty!20593 () Bool)

(declare-fun tp!1224992 () Bool)

(assert (=> b!4030210 (= e!2500714 (and tp_is_empty!20593 tp!1224992))))

(declare-fun b!4030211 () Bool)

(declare-fun e!2500700 () Bool)

(assert (=> b!4030211 (= e!2500700 true)))

(declare-fun lt!1432793 () Unit!62343)

(declare-fun lemmaCharactersSize!1425 (Token!12950) Unit!62343)

(assert (=> b!4030211 (= lt!1432793 (lemmaCharactersSize!1425 token!484))))

(declare-fun lt!1432782 () Unit!62343)

(declare-datatypes ((tuple2!42266 0))(
  ( (tuple2!42267 (_1!24267 Token!12950) (_2!24267 List!43305)) )
))
(declare-datatypes ((Option!9320 0))(
  ( (None!9319) (Some!9319 (v!39707 tuple2!42266)) )
))
(declare-fun lt!1432803 () Option!9320)

(assert (=> b!4030211 (= lt!1432782 (lemmaCharactersSize!1425 (_1!24267 (v!39707 lt!1432803))))))

(declare-fun b!4030212 () Bool)

(declare-fun res!1640564 () Bool)

(assert (=> b!4030212 (=> (not res!1640564) (not e!2500707))))

(declare-fun lt!1432772 () TokenValue!7136)

(assert (=> b!4030212 (= res!1640564 (= (value!217455 token!484) lt!1432772))))

(declare-fun b!4030213 () Bool)

(declare-fun tp!1224989 () Bool)

(assert (=> b!4030213 (= e!2500703 (and tp_is_empty!20593 tp!1224989))))

(declare-fun b!4030214 () Bool)

(declare-fun e!2500696 () Bool)

(assert (=> b!4030214 (= e!2500696 e!2500690)))

(declare-fun res!1640560 () Bool)

(assert (=> b!4030214 (=> (not res!1640560) (not e!2500690))))

(declare-fun lt!1432801 () Option!9320)

(declare-fun maxPrefix!3793 (LexerInterface!6495 List!43307 List!43305) Option!9320)

(assert (=> b!4030214 (= res!1640560 (= (maxPrefix!3793 thiss!21717 rules!2999 lt!1432784) lt!1432801))))

(declare-fun lt!1432798 () tuple2!42266)

(assert (=> b!4030214 (= lt!1432801 (Some!9319 lt!1432798))))

(assert (=> b!4030214 (= lt!1432798 (tuple2!42267 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43305)

(declare-fun suffix!1299 () List!43305)

(assert (=> b!4030214 (= lt!1432784 (++!11308 prefix!494 suffix!1299))))

(declare-fun b!4030215 () Bool)

(declare-fun e!2500692 () Bool)

(declare-fun e!2500708 () Bool)

(assert (=> b!4030215 (= e!2500692 e!2500708)))

(declare-fun res!1640567 () Bool)

(assert (=> b!4030215 (=> res!1640567 e!2500708)))

(declare-fun lt!1432786 () List!43305)

(assert (=> b!4030215 (= res!1640567 (not (= lt!1432786 prefix!494)))))

(declare-fun lt!1432777 () List!43305)

(assert (=> b!4030215 (= lt!1432786 (++!11308 lt!1432790 lt!1432777))))

(assert (=> b!4030215 (= lt!1432777 (getSuffix!2410 prefix!494 lt!1432790))))

(assert (=> b!4030215 (isPrefix!3993 lt!1432790 prefix!494)))

(declare-fun lt!1432797 () Unit!62343)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!557 (List!43305 List!43305 List!43305) Unit!62343)

(assert (=> b!4030215 (= lt!1432797 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!557 prefix!494 lt!1432790 lt!1432784))))

(declare-fun b!4030216 () Bool)

(declare-fun res!1640553 () Bool)

(assert (=> b!4030216 (=> (not res!1640553) (not e!2500701))))

(declare-fun newSuffix!27 () List!43305)

(assert (=> b!4030216 (= res!1640553 (>= (size!32274 suffix!1299) (size!32274 newSuffix!27)))))

(declare-fun b!4030217 () Bool)

(declare-fun e!2500693 () Bool)

(declare-fun tp!1224998 () Bool)

(assert (=> b!4030217 (= e!2500706 (and e!2500693 tp!1224998))))

(declare-fun b!4030218 () Bool)

(declare-fun tp!1224997 () Bool)

(assert (=> b!4030218 (= e!2500693 (and tp!1224997 (inv!57682 (tag!7766 (h!48603 rules!2999))) (inv!57685 (transformation!6906 (h!48603 rules!2999))) e!2500698))))

(declare-fun b!4030219 () Bool)

(declare-fun tp!1224995 () Bool)

(assert (=> b!4030219 (= e!2500702 (and tp_is_empty!20593 tp!1224995))))

(declare-fun b!4030220 () Bool)

(assert (=> b!4030220 (= e!2500699 e!2500692)))

(declare-fun res!1640561 () Bool)

(assert (=> b!4030220 (=> res!1640561 e!2500692)))

(assert (=> b!4030220 (= res!1640561 (not (isPrefix!3993 lt!1432790 lt!1432784)))))

(assert (=> b!4030220 (isPrefix!3993 prefix!494 lt!1432784)))

(declare-fun lt!1432794 () Unit!62343)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2828 (List!43305 List!43305) Unit!62343)

(assert (=> b!4030220 (= lt!1432794 (lemmaConcatTwoListThenFirstIsPrefix!2828 prefix!494 suffix!1299))))

(assert (=> b!4030220 (isPrefix!3993 lt!1432790 lt!1432775)))

(declare-fun lt!1432779 () Unit!62343)

(assert (=> b!4030220 (= lt!1432779 (lemmaConcatTwoListThenFirstIsPrefix!2828 lt!1432790 suffixResult!105))))

(declare-fun b!4030221 () Bool)

(declare-fun res!1640559 () Bool)

(assert (=> b!4030221 (=> (not res!1640559) (not e!2500701))))

(declare-fun isEmpty!25767 (List!43307) Bool)

(assert (=> b!4030221 (= res!1640559 (not (isEmpty!25767 rules!2999)))))

(declare-fun b!4030222 () Bool)

(declare-fun e!2500705 () Bool)

(assert (=> b!4030222 (= e!2500705 e!2500696)))

(declare-fun res!1640565 () Bool)

(assert (=> b!4030222 (=> (not res!1640565) (not e!2500696))))

(declare-fun lt!1432771 () List!43305)

(declare-fun lt!1432785 () List!43305)

(assert (=> b!4030222 (= res!1640565 (= lt!1432771 lt!1432785))))

(assert (=> b!4030222 (= lt!1432785 (++!11308 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43305)

(assert (=> b!4030222 (= lt!1432771 (++!11308 lt!1432790 newSuffixResult!27))))

(assert (=> b!4030223 (= e!2500704 (and tp!1224994 tp!1224988))))

(declare-fun b!4030224 () Bool)

(declare-fun e!2500709 () Bool)

(assert (=> b!4030224 (= e!2500708 e!2500709)))

(declare-fun res!1640557 () Bool)

(assert (=> b!4030224 (=> res!1640557 e!2500709)))

(declare-fun lt!1432796 () List!43305)

(declare-fun lt!1432787 () List!43305)

(assert (=> b!4030224 (= res!1640557 (or (not (= lt!1432784 lt!1432796)) (not (= lt!1432784 lt!1432787))))))

(assert (=> b!4030224 (= lt!1432796 lt!1432787)))

(declare-fun lt!1432780 () List!43305)

(assert (=> b!4030224 (= lt!1432787 (++!11308 lt!1432790 lt!1432780))))

(assert (=> b!4030224 (= lt!1432796 (++!11308 lt!1432786 suffix!1299))))

(assert (=> b!4030224 (= lt!1432780 (++!11308 lt!1432777 suffix!1299))))

(declare-fun lt!1432774 () Unit!62343)

(declare-fun lemmaConcatAssociativity!2610 (List!43305 List!43305 List!43305) Unit!62343)

(assert (=> b!4030224 (= lt!1432774 (lemmaConcatAssociativity!2610 lt!1432790 lt!1432777 suffix!1299))))

(declare-fun b!4030225 () Bool)

(assert (=> b!4030225 (= e!2500701 e!2500705)))

(declare-fun res!1640558 () Bool)

(assert (=> b!4030225 (=> (not res!1640558) (not e!2500705))))

(declare-fun lt!1432805 () Int)

(declare-fun lt!1432804 () Int)

(assert (=> b!4030225 (= res!1640558 (>= lt!1432805 lt!1432804))))

(assert (=> b!4030225 (= lt!1432804 (size!32274 lt!1432790))))

(assert (=> b!4030225 (= lt!1432805 (size!32274 prefix!494))))

(declare-fun list!16064 (BalanceConc!25828) List!43305)

(declare-fun charsOf!4722 (Token!12950) BalanceConc!25828)

(assert (=> b!4030225 (= lt!1432790 (list!16064 (charsOf!4722 token!484)))))

(declare-fun b!4030226 () Bool)

(assert (=> b!4030226 (= e!2500688 e!2500700)))

(declare-fun res!1640555 () Bool)

(assert (=> b!4030226 (=> res!1640555 e!2500700)))

(assert (=> b!4030226 (= res!1640555 (not ((_ is Some!9319) lt!1432803)))))

(assert (=> b!4030226 (= lt!1432803 (maxPrefix!3793 thiss!21717 rules!2999 lt!1432785))))

(declare-fun lt!1432792 () Token!12950)

(assert (=> b!4030226 (and (= suffixResult!105 lt!1432770) (= lt!1432798 (tuple2!42267 lt!1432792 lt!1432770)))))

(declare-fun lt!1432800 () Unit!62343)

(declare-fun lemmaSamePrefixThenSameSuffix!2154 (List!43305 List!43305 List!43305 List!43305 List!43305) Unit!62343)

(assert (=> b!4030226 (= lt!1432800 (lemmaSamePrefixThenSameSuffix!2154 lt!1432790 suffixResult!105 lt!1432790 lt!1432770 lt!1432784))))

(assert (=> b!4030226 (isPrefix!3993 lt!1432790 lt!1432781)))

(declare-fun lt!1432802 () Unit!62343)

(assert (=> b!4030226 (= lt!1432802 (lemmaConcatTwoListThenFirstIsPrefix!2828 lt!1432790 lt!1432770))))

(declare-fun b!4030227 () Bool)

(declare-fun e!2500689 () Bool)

(assert (=> b!4030227 (= e!2500689 e!2500712)))

(declare-fun res!1640562 () Bool)

(assert (=> b!4030227 (=> res!1640562 e!2500712)))

(declare-fun matchR!5764 (Regex!11811 List!43305) Bool)

(assert (=> b!4030227 (= res!1640562 (not (matchR!5764 (regex!6906 (rule!9966 token!484)) lt!1432790)))))

(assert (=> b!4030227 (isPrefix!3993 lt!1432790 lt!1432785)))

(declare-fun lt!1432773 () Unit!62343)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!786 (List!43305 List!43305 List!43305) Unit!62343)

(assert (=> b!4030227 (= lt!1432773 (lemmaPrefixStaysPrefixWhenAddingToSuffix!786 lt!1432790 prefix!494 newSuffix!27))))

(declare-fun lt!1432795 () Unit!62343)

(assert (=> b!4030227 (= lt!1432795 (lemmaPrefixStaysPrefixWhenAddingToSuffix!786 lt!1432790 prefix!494 suffix!1299))))

(declare-fun b!4030228 () Bool)

(declare-fun tp!1224991 () Bool)

(assert (=> b!4030228 (= e!2500691 (and tp_is_empty!20593 tp!1224991))))

(declare-fun b!4030229 () Bool)

(assert (=> b!4030229 (= e!2500709 e!2500689)))

(declare-fun res!1640563 () Bool)

(assert (=> b!4030229 (=> res!1640563 e!2500689)))

(declare-fun lt!1432799 () Option!9320)

(assert (=> b!4030229 (= res!1640563 (not (= lt!1432799 lt!1432801)))))

(assert (=> b!4030229 (= lt!1432799 (Some!9319 (tuple2!42267 lt!1432792 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2805 (LexerInterface!6495 Rule!13612 List!43305) Option!9320)

(assert (=> b!4030229 (= lt!1432799 (maxPrefixOneRule!2805 thiss!21717 (rule!9966 token!484) lt!1432784))))

(assert (=> b!4030229 (= lt!1432792 (Token!12951 lt!1432772 (rule!9966 token!484) lt!1432804 lt!1432790))))

(declare-fun apply!10095 (TokenValueInjection!13700 BalanceConc!25828) TokenValue!7136)

(declare-fun seqFromList!5123 (List!43305) BalanceConc!25828)

(assert (=> b!4030229 (= lt!1432772 (apply!10095 (transformation!6906 (rule!9966 token!484)) (seqFromList!5123 lt!1432790)))))

(declare-fun lt!1432791 () Unit!62343)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1611 (LexerInterface!6495 List!43307 List!43305 List!43305 List!43305 Rule!13612) Unit!62343)

(assert (=> b!4030229 (= lt!1432791 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1611 thiss!21717 rules!2999 lt!1432790 lt!1432784 suffixResult!105 (rule!9966 token!484)))))

(assert (=> b!4030229 (= lt!1432780 suffixResult!105)))

(declare-fun lt!1432788 () Unit!62343)

(assert (=> b!4030229 (= lt!1432788 (lemmaSamePrefixThenSameSuffix!2154 lt!1432790 lt!1432780 lt!1432790 suffixResult!105 lt!1432784))))

(assert (=> b!4030229 (isPrefix!3993 lt!1432790 lt!1432787)))

(declare-fun lt!1432783 () Unit!62343)

(assert (=> b!4030229 (= lt!1432783 (lemmaConcatTwoListThenFirstIsPrefix!2828 lt!1432790 lt!1432780))))

(declare-fun b!4030230 () Bool)

(declare-fun tp!1224990 () Bool)

(assert (=> b!4030230 (= e!2500711 (and tp_is_empty!20593 tp!1224990))))

(declare-fun b!4030231 () Bool)

(declare-fun res!1640566 () Bool)

(assert (=> b!4030231 (=> (not res!1640566) (not e!2500701))))

(assert (=> b!4030231 (= res!1640566 (isPrefix!3993 newSuffix!27 suffix!1299))))

(declare-fun b!4030232 () Bool)

(assert (=> b!4030232 (= e!2500707 (and (= (size!32273 token!484) lt!1432804) (= (originalCharacters!7506 token!484) lt!1432790)))))

(assert (= (and start!379644 res!1640570) b!4030221))

(assert (= (and b!4030221 res!1640559) b!4030207))

(assert (= (and b!4030207 res!1640554) b!4030216))

(assert (= (and b!4030216 res!1640553) b!4030231))

(assert (= (and b!4030231 res!1640566) b!4030225))

(assert (= (and b!4030225 res!1640558) b!4030222))

(assert (= (and b!4030222 res!1640565) b!4030214))

(assert (= (and b!4030214 res!1640560) b!4030203))

(assert (= (and b!4030203 (not res!1640568)) b!4030220))

(assert (= (and b!4030220 (not res!1640561)) b!4030215))

(assert (= (and b!4030215 (not res!1640567)) b!4030224))

(assert (= (and b!4030224 (not res!1640557)) b!4030229))

(assert (= (and b!4030229 (not res!1640563)) b!4030227))

(assert (= (and b!4030227 (not res!1640562)) b!4030208))

(assert (= (and b!4030208 res!1640571) b!4030212))

(assert (= (and b!4030212 res!1640564) b!4030209))

(assert (= (and b!4030209 res!1640569) b!4030232))

(assert (= (and b!4030208 (not res!1640556)) b!4030226))

(assert (= (and b!4030226 (not res!1640555)) b!4030211))

(assert (= (and start!379644 ((_ is Cons!43181) prefix!494)) b!4030210))

(assert (= b!4030206 b!4030223))

(assert (= b!4030204 b!4030206))

(assert (= start!379644 b!4030204))

(assert (= (and start!379644 ((_ is Cons!43181) suffixResult!105)) b!4030230))

(assert (= (and start!379644 ((_ is Cons!43181) suffix!1299)) b!4030213))

(assert (= (and start!379644 ((_ is Cons!43181) newSuffix!27)) b!4030219))

(assert (= b!4030218 b!4030205))

(assert (= b!4030217 b!4030218))

(assert (= (and start!379644 ((_ is Cons!43183) rules!2999)) b!4030217))

(assert (= (and start!379644 ((_ is Cons!43181) newSuffixResult!27)) b!4030228))

(declare-fun m!4622265 () Bool)

(assert (=> b!4030203 m!4622265))

(declare-fun m!4622267 () Bool)

(assert (=> b!4030203 m!4622267))

(declare-fun m!4622269 () Bool)

(assert (=> b!4030203 m!4622269))

(declare-fun m!4622271 () Bool)

(assert (=> b!4030203 m!4622271))

(declare-fun m!4622273 () Bool)

(assert (=> b!4030204 m!4622273))

(declare-fun m!4622275 () Bool)

(assert (=> b!4030229 m!4622275))

(declare-fun m!4622277 () Bool)

(assert (=> b!4030229 m!4622277))

(declare-fun m!4622279 () Bool)

(assert (=> b!4030229 m!4622279))

(declare-fun m!4622281 () Bool)

(assert (=> b!4030229 m!4622281))

(declare-fun m!4622283 () Bool)

(assert (=> b!4030229 m!4622283))

(assert (=> b!4030229 m!4622275))

(declare-fun m!4622285 () Bool)

(assert (=> b!4030229 m!4622285))

(declare-fun m!4622287 () Bool)

(assert (=> b!4030229 m!4622287))

(declare-fun m!4622289 () Bool)

(assert (=> b!4030215 m!4622289))

(declare-fun m!4622291 () Bool)

(assert (=> b!4030215 m!4622291))

(declare-fun m!4622293 () Bool)

(assert (=> b!4030215 m!4622293))

(declare-fun m!4622295 () Bool)

(assert (=> b!4030215 m!4622295))

(declare-fun m!4622297 () Bool)

(assert (=> b!4030227 m!4622297))

(declare-fun m!4622299 () Bool)

(assert (=> b!4030227 m!4622299))

(declare-fun m!4622301 () Bool)

(assert (=> b!4030227 m!4622301))

(declare-fun m!4622303 () Bool)

(assert (=> b!4030227 m!4622303))

(declare-fun m!4622305 () Bool)

(assert (=> b!4030209 m!4622305))

(declare-fun m!4622307 () Bool)

(assert (=> b!4030216 m!4622307))

(declare-fun m!4622309 () Bool)

(assert (=> b!4030216 m!4622309))

(declare-fun m!4622311 () Bool)

(assert (=> b!4030222 m!4622311))

(declare-fun m!4622313 () Bool)

(assert (=> b!4030222 m!4622313))

(declare-fun m!4622315 () Bool)

(assert (=> b!4030231 m!4622315))

(declare-fun m!4622317 () Bool)

(assert (=> b!4030207 m!4622317))

(declare-fun m!4622319 () Bool)

(assert (=> b!4030208 m!4622319))

(declare-fun m!4622321 () Bool)

(assert (=> b!4030208 m!4622321))

(declare-fun m!4622323 () Bool)

(assert (=> b!4030208 m!4622323))

(declare-fun m!4622325 () Bool)

(assert (=> b!4030208 m!4622325))

(declare-fun m!4622327 () Bool)

(assert (=> b!4030226 m!4622327))

(declare-fun m!4622329 () Bool)

(assert (=> b!4030226 m!4622329))

(declare-fun m!4622331 () Bool)

(assert (=> b!4030226 m!4622331))

(declare-fun m!4622333 () Bool)

(assert (=> b!4030226 m!4622333))

(declare-fun m!4622335 () Bool)

(assert (=> b!4030211 m!4622335))

(declare-fun m!4622337 () Bool)

(assert (=> b!4030211 m!4622337))

(declare-fun m!4622339 () Bool)

(assert (=> b!4030220 m!4622339))

(declare-fun m!4622341 () Bool)

(assert (=> b!4030220 m!4622341))

(declare-fun m!4622343 () Bool)

(assert (=> b!4030220 m!4622343))

(declare-fun m!4622345 () Bool)

(assert (=> b!4030220 m!4622345))

(declare-fun m!4622347 () Bool)

(assert (=> b!4030220 m!4622347))

(declare-fun m!4622349 () Bool)

(assert (=> b!4030225 m!4622349))

(declare-fun m!4622351 () Bool)

(assert (=> b!4030225 m!4622351))

(declare-fun m!4622353 () Bool)

(assert (=> b!4030225 m!4622353))

(assert (=> b!4030225 m!4622353))

(declare-fun m!4622355 () Bool)

(assert (=> b!4030225 m!4622355))

(declare-fun m!4622357 () Bool)

(assert (=> b!4030206 m!4622357))

(declare-fun m!4622359 () Bool)

(assert (=> b!4030206 m!4622359))

(declare-fun m!4622361 () Bool)

(assert (=> start!379644 m!4622361))

(declare-fun m!4622363 () Bool)

(assert (=> b!4030224 m!4622363))

(declare-fun m!4622365 () Bool)

(assert (=> b!4030224 m!4622365))

(declare-fun m!4622367 () Bool)

(assert (=> b!4030224 m!4622367))

(declare-fun m!4622369 () Bool)

(assert (=> b!4030224 m!4622369))

(declare-fun m!4622371 () Bool)

(assert (=> b!4030218 m!4622371))

(declare-fun m!4622373 () Bool)

(assert (=> b!4030218 m!4622373))

(declare-fun m!4622375 () Bool)

(assert (=> b!4030221 m!4622375))

(declare-fun m!4622377 () Bool)

(assert (=> b!4030214 m!4622377))

(declare-fun m!4622379 () Bool)

(assert (=> b!4030214 m!4622379))

(check-sat (not b!4030209) (not b!4030227) (not b!4030230) (not b!4030215) (not b_next!113017) (not b!4030203) (not b!4030226) (not b!4030206) (not b_next!113021) (not start!379644) b_and!309703 (not b!4030225) (not b!4030222) (not b!4030214) (not b!4030204) (not b!4030228) (not b!4030218) (not b!4030229) (not b!4030213) (not b!4030208) b_and!309707 b_and!309709 (not b_next!113023) (not b!4030224) b_and!309705 (not b!4030219) (not b!4030221) (not b!4030216) (not b!4030211) (not b_next!113019) (not b!4030231) (not b!4030210) tp_is_empty!20593 (not b!4030217) (not b!4030220) (not b!4030207))
(check-sat (not b_next!113017) b_and!309705 (not b_next!113021) (not b_next!113019) b_and!309703 b_and!309707 b_and!309709 (not b_next!113023))
