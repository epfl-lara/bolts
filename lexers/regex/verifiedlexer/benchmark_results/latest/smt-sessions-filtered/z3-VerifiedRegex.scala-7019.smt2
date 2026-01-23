; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372740 () Bool)

(assert start!372740)

(declare-fun b!3962596 () Bool)

(declare-fun b_free!109461 () Bool)

(declare-fun b_next!110165 () Bool)

(assert (=> b!3962596 (= b_free!109461 (not b_next!110165))))

(declare-fun tp!1207846 () Bool)

(declare-fun b_and!304291 () Bool)

(assert (=> b!3962596 (= tp!1207846 b_and!304291)))

(declare-fun b_free!109463 () Bool)

(declare-fun b_next!110167 () Bool)

(assert (=> b!3962596 (= b_free!109463 (not b_next!110167))))

(declare-fun tp!1207837 () Bool)

(declare-fun b_and!304293 () Bool)

(assert (=> b!3962596 (= tp!1207837 b_and!304293)))

(declare-fun b!3962580 () Bool)

(declare-fun b_free!109465 () Bool)

(declare-fun b_next!110169 () Bool)

(assert (=> b!3962580 (= b_free!109465 (not b_next!110169))))

(declare-fun tp!1207843 () Bool)

(declare-fun b_and!304295 () Bool)

(assert (=> b!3962580 (= tp!1207843 b_and!304295)))

(declare-fun b_free!109467 () Bool)

(declare-fun b_next!110171 () Bool)

(assert (=> b!3962580 (= b_free!109467 (not b_next!110171))))

(declare-fun tp!1207851 () Bool)

(declare-fun b_and!304297 () Bool)

(assert (=> b!3962580 (= tp!1207851 b_and!304297)))

(declare-fun b!3962563 () Bool)

(declare-fun b_free!109469 () Bool)

(declare-fun b_next!110173 () Bool)

(assert (=> b!3962563 (= b_free!109469 (not b_next!110173))))

(declare-fun tp!1207849 () Bool)

(declare-fun b_and!304299 () Bool)

(assert (=> b!3962563 (= tp!1207849 b_and!304299)))

(declare-fun b_free!109471 () Bool)

(declare-fun b_next!110175 () Bool)

(assert (=> b!3962563 (= b_free!109471 (not b_next!110175))))

(declare-fun tp!1207839 () Bool)

(declare-fun b_and!304301 () Bool)

(assert (=> b!3962563 (= tp!1207839 b_and!304301)))

(declare-fun b!3962554 () Bool)

(declare-fun e!2453941 () Bool)

(declare-fun e!2453950 () Bool)

(assert (=> b!3962554 (= e!2453941 e!2453950)))

(declare-fun res!1603806 () Bool)

(assert (=> b!3962554 (=> res!1603806 e!2453950)))

(declare-fun lt!1386699 () Int)

(declare-datatypes ((C!23248 0))(
  ( (C!23249 (val!13718 Int)) )
))
(declare-datatypes ((List!42355 0))(
  ( (Nil!42231) (Cons!42231 (h!47651 C!23248) (t!330018 List!42355)) )
))
(declare-fun prefix!426 () List!42355)

(declare-fun size!31618 (List!42355) Int)

(assert (=> b!3962554 (= res!1603806 (>= lt!1386699 (size!31618 prefix!426)))))

(declare-fun lt!1386686 () List!42355)

(declare-fun isPrefix!3715 (List!42355 List!42355) Bool)

(assert (=> b!3962554 (isPrefix!3715 lt!1386686 prefix!426)))

(declare-fun lt!1386689 () List!42355)

(declare-datatypes ((Unit!60794 0))(
  ( (Unit!60795) )
))
(declare-fun lt!1386685 () Unit!60794)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!311 (List!42355 List!42355 List!42355) Unit!60794)

(assert (=> b!3962554 (= lt!1386685 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!311 prefix!426 lt!1386686 lt!1386689))))

(assert (=> b!3962554 (isPrefix!3715 prefix!426 lt!1386689)))

(declare-fun lt!1386671 () Unit!60794)

(declare-fun suffix!1176 () List!42355)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2574 (List!42355 List!42355) Unit!60794)

(assert (=> b!3962554 (= lt!1386671 (lemmaConcatTwoListThenFirstIsPrefix!2574 prefix!426 suffix!1176))))

(declare-datatypes ((List!42356 0))(
  ( (Nil!42232) (Cons!42232 (h!47652 (_ BitVec 16)) (t!330019 List!42356)) )
))
(declare-datatypes ((TokenValue!6856 0))(
  ( (FloatLiteralValue!13712 (text!48437 List!42356)) (TokenValueExt!6855 (__x!25929 Int)) (Broken!34280 (value!209449 List!42356)) (Object!6979) (End!6856) (Def!6856) (Underscore!6856) (Match!6856) (Else!6856) (Error!6856) (Case!6856) (If!6856) (Extends!6856) (Abstract!6856) (Class!6856) (Val!6856) (DelimiterValue!13712 (del!6916 List!42356)) (KeywordValue!6862 (value!209450 List!42356)) (CommentValue!13712 (value!209451 List!42356)) (WhitespaceValue!13712 (value!209452 List!42356)) (IndentationValue!6856 (value!209453 List!42356)) (String!47997) (Int32!6856) (Broken!34281 (value!209454 List!42356)) (Boolean!6857) (Unit!60796) (OperatorValue!6859 (op!6916 List!42356)) (IdentifierValue!13712 (value!209455 List!42356)) (IdentifierValue!13713 (value!209456 List!42356)) (WhitespaceValue!13713 (value!209457 List!42356)) (True!13712) (False!13712) (Broken!34282 (value!209458 List!42356)) (Broken!34283 (value!209459 List!42356)) (True!13713) (RightBrace!6856) (RightBracket!6856) (Colon!6856) (Null!6856) (Comma!6856) (LeftBracket!6856) (False!13713) (LeftBrace!6856) (ImaginaryLiteralValue!6856 (text!48438 List!42356)) (StringLiteralValue!20568 (value!209460 List!42356)) (EOFValue!6856 (value!209461 List!42356)) (IdentValue!6856 (value!209462 List!42356)) (DelimiterValue!13713 (value!209463 List!42356)) (DedentValue!6856 (value!209464 List!42356)) (NewLineValue!6856 (value!209465 List!42356)) (IntegerValue!20568 (value!209466 (_ BitVec 32)) (text!48439 List!42356)) (IntegerValue!20569 (value!209467 Int) (text!48440 List!42356)) (Times!6856) (Or!6856) (Equal!6856) (Minus!6856) (Broken!34284 (value!209468 List!42356)) (And!6856) (Div!6856) (LessEqual!6856) (Mod!6856) (Concat!18387) (Not!6856) (Plus!6856) (SpaceValue!6856 (value!209469 List!42356)) (IntegerValue!20570 (value!209470 Int) (text!48441 List!42356)) (StringLiteralValue!20569 (text!48442 List!42356)) (FloatLiteralValue!13713 (text!48443 List!42356)) (BytesLiteralValue!6856 (value!209471 List!42356)) (CommentValue!13713 (value!209472 List!42356)) (StringLiteralValue!20570 (value!209473 List!42356)) (ErrorTokenValue!6856 (msg!6917 List!42356)) )
))
(declare-datatypes ((Regex!11531 0))(
  ( (ElementMatch!11531 (c!687534 C!23248)) (Concat!18388 (regOne!23574 Regex!11531) (regTwo!23574 Regex!11531)) (EmptyExpr!11531) (Star!11531 (reg!11860 Regex!11531)) (EmptyLang!11531) (Union!11531 (regOne!23575 Regex!11531) (regTwo!23575 Regex!11531)) )
))
(declare-datatypes ((String!47998 0))(
  ( (String!47999 (value!209474 String)) )
))
(declare-datatypes ((IArray!25679 0))(
  ( (IArray!25680 (innerList!12897 List!42355)) )
))
(declare-datatypes ((Conc!12837 0))(
  ( (Node!12837 (left!32032 Conc!12837) (right!32362 Conc!12837) (csize!25904 Int) (cheight!13048 Int)) (Leaf!19857 (xs!16143 IArray!25679) (csize!25905 Int)) (Empty!12837) )
))
(declare-datatypes ((BalanceConc!25268 0))(
  ( (BalanceConc!25269 (c!687535 Conc!12837)) )
))
(declare-datatypes ((TokenValueInjection!13140 0))(
  ( (TokenValueInjection!13141 (toValue!9106 Int) (toChars!8965 Int)) )
))
(declare-datatypes ((Rule!13052 0))(
  ( (Rule!13053 (regex!6626 Regex!11531) (tag!7486 String!47998) (isSeparator!6626 Bool) (transformation!6626 TokenValueInjection!13140)) )
))
(declare-datatypes ((Token!12390 0))(
  ( (Token!12391 (value!209475 TokenValue!6856) (rule!9608 Rule!13052) (size!31619 Int) (originalCharacters!7226 List!42355)) )
))
(declare-datatypes ((List!42357 0))(
  ( (Nil!42233) (Cons!42233 (h!47653 Token!12390) (t!330020 List!42357)) )
))
(declare-fun prefixTokens!80 () List!42357)

(declare-fun b!3962555 () Bool)

(declare-fun tp!1207848 () Bool)

(declare-fun e!2453922 () Bool)

(declare-fun e!2453946 () Bool)

(declare-fun inv!56459 (Token!12390) Bool)

(assert (=> b!3962555 (= e!2453946 (and (inv!56459 (h!47653 prefixTokens!80)) e!2453922 tp!1207848))))

(declare-fun tp!1207842 () Bool)

(declare-fun e!2453935 () Bool)

(declare-fun suffixTokens!72 () List!42357)

(declare-fun e!2453952 () Bool)

(declare-fun b!3962556 () Bool)

(declare-fun inv!21 (TokenValue!6856) Bool)

(assert (=> b!3962556 (= e!2453935 (and (inv!21 (value!209475 (h!47653 suffixTokens!72))) e!2453952 tp!1207842))))

(declare-fun b!3962557 () Bool)

(declare-fun e!2453944 () Unit!60794)

(declare-fun Unit!60797 () Unit!60794)

(assert (=> b!3962557 (= e!2453944 Unit!60797)))

(declare-fun b!3962558 () Bool)

(declare-fun e!2453939 () Bool)

(assert (=> b!3962558 (= e!2453939 e!2453941)))

(declare-fun res!1603798 () Bool)

(assert (=> b!3962558 (=> res!1603798 e!2453941)))

(declare-fun lt!1386684 () Int)

(declare-fun lt!1386669 () Int)

(assert (=> b!3962558 (= res!1603798 (<= lt!1386684 lt!1386669))))

(declare-fun lt!1386687 () Unit!60794)

(assert (=> b!3962558 (= lt!1386687 e!2453944)))

(declare-fun c!687532 () Bool)

(assert (=> b!3962558 (= c!687532 (= lt!1386684 lt!1386669))))

(declare-fun lt!1386695 () Unit!60794)

(declare-fun e!2453945 () Unit!60794)

(assert (=> b!3962558 (= lt!1386695 e!2453945)))

(declare-fun c!687533 () Bool)

(assert (=> b!3962558 (= c!687533 (< lt!1386684 lt!1386669))))

(assert (=> b!3962558 (= lt!1386669 (size!31618 suffix!1176))))

(declare-datatypes ((tuple2!41526 0))(
  ( (tuple2!41527 (_1!23897 Token!12390) (_2!23897 List!42355)) )
))
(declare-datatypes ((Option!9046 0))(
  ( (None!9045) (Some!9045 (v!39391 tuple2!41526)) )
))
(declare-fun lt!1386703 () Option!9046)

(assert (=> b!3962558 (= lt!1386684 (size!31618 (_2!23897 (v!39391 lt!1386703))))))

(declare-fun b!3962559 () Bool)

(declare-fun res!1603807 () Bool)

(declare-fun e!2453923 () Bool)

(assert (=> b!3962559 (=> (not res!1603807) (not e!2453923))))

(declare-datatypes ((LexerInterface!6215 0))(
  ( (LexerInterfaceExt!6212 (__x!25930 Int)) (Lexer!6213) )
))
(declare-fun thiss!20629 () LexerInterface!6215)

(declare-datatypes ((List!42358 0))(
  ( (Nil!42234) (Cons!42234 (h!47654 Rule!13052) (t!330021 List!42358)) )
))
(declare-fun rules!2768 () List!42358)

(declare-fun rulesInvariant!5558 (LexerInterface!6215 List!42358) Bool)

(assert (=> b!3962559 (= res!1603807 (rulesInvariant!5558 thiss!20629 rules!2768))))

(declare-fun b!3962560 () Bool)

(declare-fun e!2453948 () Bool)

(declare-fun lt!1386696 () List!42355)

(assert (=> b!3962560 (= e!2453948 (= lt!1386696 lt!1386689))))

(declare-fun e!2453926 () Bool)

(declare-fun e!2453919 () Bool)

(declare-fun tp!1207838 () Bool)

(declare-fun b!3962561 () Bool)

(declare-fun inv!56456 (String!47998) Bool)

(declare-fun inv!56460 (TokenValueInjection!13140) Bool)

(assert (=> b!3962561 (= e!2453926 (and tp!1207838 (inv!56456 (tag!7486 (rule!9608 (h!47653 prefixTokens!80)))) (inv!56460 (transformation!6626 (rule!9608 (h!47653 prefixTokens!80)))) e!2453919))))

(declare-fun b!3962562 () Bool)

(declare-fun e!2453934 () Bool)

(declare-fun tp_is_empty!20033 () Bool)

(declare-fun tp!1207836 () Bool)

(assert (=> b!3962562 (= e!2453934 (and tp_is_empty!20033 tp!1207836))))

(declare-fun e!2453943 () Bool)

(assert (=> b!3962563 (= e!2453943 (and tp!1207849 tp!1207839))))

(declare-fun b!3962564 () Bool)

(declare-fun e!2453924 () Bool)

(declare-fun e!2453927 () Bool)

(assert (=> b!3962564 (= e!2453924 e!2453927)))

(declare-fun res!1603792 () Bool)

(assert (=> b!3962564 (=> res!1603792 e!2453927)))

(declare-fun lt!1386698 () List!42355)

(declare-fun lt!1386672 () List!42355)

(assert (=> b!3962564 (= res!1603792 (or (not (= lt!1386672 lt!1386689)) (not (= lt!1386672 lt!1386698))))))

(declare-fun lt!1386692 () List!42355)

(declare-fun ++!11009 (List!42355 List!42355) List!42355)

(assert (=> b!3962564 (= lt!1386672 (++!11009 lt!1386692 suffix!1176))))

(declare-fun b!3962565 () Bool)

(declare-fun e!2453949 () Unit!60794)

(declare-fun Unit!60798 () Unit!60794)

(assert (=> b!3962565 (= e!2453949 Unit!60798)))

(declare-fun lt!1386673 () Unit!60794)

(declare-fun lt!1386705 () tuple2!41526)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!620 (List!42355 List!42355 List!42355 List!42355) Unit!60794)

(assert (=> b!3962565 (= lt!1386673 (lemmaConcatSameAndSameSizesThenSameLists!620 lt!1386686 (_2!23897 (v!39391 lt!1386703)) lt!1386686 (_2!23897 lt!1386705)))))

(assert (=> b!3962565 (= (_2!23897 (v!39391 lt!1386703)) (_2!23897 lt!1386705))))

(declare-fun suffixResult!91 () List!42355)

(declare-fun lt!1386682 () Unit!60794)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!154 (LexerInterface!6215 List!42358 List!42355 List!42355 List!42357 List!42355) Unit!60794)

(assert (=> b!3962565 (= lt!1386682 (lemmaLexWithSmallerInputCannotProduceSameResults!154 thiss!20629 rules!2768 suffix!1176 (_2!23897 lt!1386705) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603797 () Bool)

(declare-datatypes ((tuple2!41528 0))(
  ( (tuple2!41529 (_1!23898 List!42357) (_2!23898 List!42355)) )
))
(declare-fun call!285442 () tuple2!41528)

(declare-fun lt!1386683 () tuple2!41528)

(assert (=> b!3962565 (= res!1603797 (not (= call!285442 lt!1386683)))))

(declare-fun e!2453930 () Bool)

(assert (=> b!3962565 (=> (not res!1603797) (not e!2453930))))

(assert (=> b!3962565 e!2453930))

(declare-fun b!3962566 () Bool)

(declare-fun Unit!60799 () Unit!60794)

(assert (=> b!3962566 (= e!2453945 Unit!60799)))

(declare-fun lt!1386704 () Int)

(assert (=> b!3962566 (= lt!1386704 (size!31618 lt!1386689))))

(declare-fun lt!1386670 () Unit!60794)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1395 (LexerInterface!6215 List!42358 List!42355 List!42355 List!42355 Rule!13052) Unit!60794)

(assert (=> b!3962566 (= lt!1386670 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1395 thiss!20629 rules!2768 lt!1386686 lt!1386689 (_2!23897 (v!39391 lt!1386703)) (rule!9608 (_1!23897 (v!39391 lt!1386703)))))))

(declare-fun lt!1386702 () TokenValue!6856)

(declare-fun maxPrefixOneRule!2569 (LexerInterface!6215 Rule!13052 List!42355) Option!9046)

(assert (=> b!3962566 (= (maxPrefixOneRule!2569 thiss!20629 (rule!9608 (_1!23897 (v!39391 lt!1386703))) lt!1386689) (Some!9045 (tuple2!41527 (Token!12391 lt!1386702 (rule!9608 (_1!23897 (v!39391 lt!1386703))) lt!1386699 lt!1386686) (_2!23897 (v!39391 lt!1386703)))))))

(declare-fun get!13929 (Option!9046) tuple2!41526)

(assert (=> b!3962566 (= lt!1386705 (get!13929 lt!1386703))))

(declare-fun c!687530 () Bool)

(assert (=> b!3962566 (= c!687530 (< (size!31618 (_2!23897 lt!1386705)) lt!1386669))))

(declare-fun lt!1386678 () Unit!60794)

(declare-fun e!2453920 () Unit!60794)

(assert (=> b!3962566 (= lt!1386678 e!2453920)))

(assert (=> b!3962566 false))

(declare-fun b!3962567 () Bool)

(declare-fun e!2453947 () Bool)

(declare-fun e!2453936 () Bool)

(assert (=> b!3962567 (= e!2453947 e!2453936)))

(declare-fun res!1603795 () Bool)

(assert (=> b!3962567 (=> (not res!1603795) (not e!2453936))))

(declare-fun lexList!1983 (LexerInterface!6215 List!42358 List!42355) tuple2!41528)

(assert (=> b!3962567 (= res!1603795 (= (lexList!1983 thiss!20629 rules!2768 suffix!1176) lt!1386683))))

(assert (=> b!3962567 (= lt!1386683 (tuple2!41529 suffixTokens!72 suffixResult!91))))

(declare-fun b!3962568 () Bool)

(declare-fun tp!1207840 () Bool)

(assert (=> b!3962568 (= e!2453952 (and tp!1207840 (inv!56456 (tag!7486 (rule!9608 (h!47653 suffixTokens!72)))) (inv!56460 (transformation!6626 (rule!9608 (h!47653 suffixTokens!72)))) e!2453943))))

(declare-fun b!3962569 () Bool)

(declare-fun res!1603804 () Bool)

(assert (=> b!3962569 (=> (not res!1603804) (not e!2453923))))

(declare-fun isEmpty!25262 (List!42355) Bool)

(assert (=> b!3962569 (= res!1603804 (not (isEmpty!25262 prefix!426)))))

(declare-fun b!3962570 () Bool)

(declare-fun e!2453938 () Bool)

(declare-fun tp!1207845 () Bool)

(assert (=> b!3962570 (= e!2453938 (and tp_is_empty!20033 tp!1207845))))

(declare-fun b!3962571 () Bool)

(declare-fun Unit!60800 () Unit!60794)

(assert (=> b!3962571 (= e!2453949 Unit!60800)))

(declare-fun lt!1386675 () List!42357)

(declare-fun lt!1386691 () Unit!60794)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!154 (LexerInterface!6215 List!42358 List!42355 List!42355 List!42357 List!42355 List!42357) Unit!60794)

(assert (=> b!3962571 (= lt!1386691 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!154 thiss!20629 rules!2768 suffix!1176 (_2!23897 lt!1386705) suffixTokens!72 suffixResult!91 lt!1386675))))

(declare-fun res!1603809 () Bool)

(declare-fun ++!11010 (List!42357 List!42357) List!42357)

(assert (=> b!3962571 (= res!1603809 (not (= call!285442 (tuple2!41529 (++!11010 lt!1386675 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2453933 () Bool)

(assert (=> b!3962571 (=> (not res!1603809) (not e!2453933))))

(assert (=> b!3962571 e!2453933))

(declare-fun b!3962572 () Bool)

(declare-fun e!2453928 () Bool)

(declare-fun tp!1207852 () Bool)

(assert (=> b!3962572 (= e!2453928 (and tp_is_empty!20033 tp!1207852))))

(declare-fun b!3962573 () Bool)

(assert (=> b!3962573 (= e!2453930 false)))

(declare-fun b!3962574 () Bool)

(declare-fun e!2453951 () Bool)

(assert (=> b!3962574 (= e!2453951 e!2453948)))

(declare-fun res!1603808 () Bool)

(assert (=> b!3962574 (=> res!1603808 e!2453948)))

(assert (=> b!3962574 (= res!1603808 (not (isPrefix!3715 lt!1386686 lt!1386689)))))

(assert (=> b!3962574 (isPrefix!3715 lt!1386686 lt!1386696)))

(declare-fun lt!1386668 () Unit!60794)

(declare-fun lt!1386681 () List!42355)

(assert (=> b!3962574 (= lt!1386668 (lemmaConcatTwoListThenFirstIsPrefix!2574 lt!1386686 lt!1386681))))

(declare-fun b!3962575 () Bool)

(assert (=> b!3962575 (= e!2453927 e!2453951)))

(declare-fun res!1603796 () Bool)

(assert (=> b!3962575 (=> res!1603796 e!2453951)))

(assert (=> b!3962575 (= res!1603796 (or (not (= lt!1386689 lt!1386672)) (not (= lt!1386689 lt!1386696)) (not (= lt!1386698 lt!1386696))))))

(assert (=> b!3962575 (= lt!1386672 lt!1386696)))

(assert (=> b!3962575 (= lt!1386696 (++!11009 lt!1386686 lt!1386681))))

(declare-fun lt!1386679 () List!42355)

(assert (=> b!3962575 (= lt!1386681 (++!11009 lt!1386679 suffix!1176))))

(declare-fun lt!1386674 () Unit!60794)

(declare-fun lemmaConcatAssociativity!2360 (List!42355 List!42355 List!42355) Unit!60794)

(assert (=> b!3962575 (= lt!1386674 (lemmaConcatAssociativity!2360 lt!1386686 lt!1386679 suffix!1176))))

(declare-fun b!3962576 () Bool)

(declare-fun e!2453932 () Bool)

(assert (=> b!3962576 (= e!2453936 e!2453932)))

(declare-fun res!1603805 () Bool)

(assert (=> b!3962576 (=> (not res!1603805) (not e!2453932))))

(get-info :version)

(assert (=> b!3962576 (= res!1603805 ((_ is Some!9045) lt!1386703))))

(declare-fun maxPrefix!3519 (LexerInterface!6215 List!42358 List!42355) Option!9046)

(assert (=> b!3962576 (= lt!1386703 (maxPrefix!3519 thiss!20629 rules!2768 lt!1386689))))

(declare-fun b!3962578 () Bool)

(declare-fun c!687531 () Bool)

(declare-fun isEmpty!25263 (List!42357) Bool)

(assert (=> b!3962578 (= c!687531 (isEmpty!25263 lt!1386675))))

(declare-fun tail!6167 (List!42357) List!42357)

(assert (=> b!3962578 (= lt!1386675 (tail!6167 prefixTokens!80))))

(assert (=> b!3962578 (= e!2453920 e!2453949)))

(declare-fun b!3962579 () Bool)

(declare-fun Unit!60801 () Unit!60794)

(assert (=> b!3962579 (= e!2453945 Unit!60801)))

(declare-fun b!3962577 () Bool)

(declare-fun res!1603800 () Bool)

(assert (=> b!3962577 (=> res!1603800 e!2453939)))

(declare-fun lt!1386694 () tuple2!41528)

(assert (=> b!3962577 (= res!1603800 (or (not (= lt!1386694 (tuple2!41529 (_1!23898 lt!1386694) (_2!23898 lt!1386694)))) (= (_2!23897 (v!39391 lt!1386703)) suffix!1176)))))

(declare-fun res!1603799 () Bool)

(assert (=> start!372740 (=> (not res!1603799) (not e!2453923))))

(assert (=> start!372740 (= res!1603799 ((_ is Lexer!6213) thiss!20629))))

(assert (=> start!372740 e!2453923))

(assert (=> start!372740 e!2453928))

(assert (=> start!372740 true))

(assert (=> start!372740 e!2453934))

(declare-fun e!2453918 () Bool)

(assert (=> start!372740 e!2453918))

(assert (=> start!372740 e!2453946))

(declare-fun e!2453937 () Bool)

(assert (=> start!372740 e!2453937))

(assert (=> start!372740 e!2453938))

(declare-fun e!2453954 () Bool)

(assert (=> b!3962580 (= e!2453954 (and tp!1207843 tp!1207851))))

(declare-fun b!3962581 () Bool)

(declare-fun res!1603790 () Bool)

(assert (=> b!3962581 (=> (not res!1603790) (not e!2453923))))

(assert (=> b!3962581 (= res!1603790 (not (isEmpty!25263 prefixTokens!80)))))

(declare-fun e!2453929 () Bool)

(declare-fun tp!1207847 () Bool)

(declare-fun b!3962582 () Bool)

(assert (=> b!3962582 (= e!2453929 (and tp!1207847 (inv!56456 (tag!7486 (h!47654 rules!2768))) (inv!56460 (transformation!6626 (h!47654 rules!2768))) e!2453954))))

(declare-fun b!3962583 () Bool)

(declare-fun tp!1207850 () Bool)

(assert (=> b!3962583 (= e!2453937 (and (inv!56459 (h!47653 suffixTokens!72)) e!2453935 tp!1207850))))

(declare-fun b!3962584 () Bool)

(declare-fun res!1603803 () Bool)

(assert (=> b!3962584 (=> res!1603803 e!2453941)))

(declare-fun head!8435 (List!42357) Token!12390)

(assert (=> b!3962584 (= res!1603803 (not (= (head!8435 prefixTokens!80) (_1!23897 (v!39391 lt!1386703)))))))

(declare-fun b!3962585 () Bool)

(assert (=> b!3962585 (= e!2453933 false)))

(declare-fun b!3962586 () Bool)

(declare-fun res!1603802 () Bool)

(assert (=> b!3962586 (=> (not res!1603802) (not e!2453923))))

(declare-fun isEmpty!25264 (List!42358) Bool)

(assert (=> b!3962586 (= res!1603802 (not (isEmpty!25264 rules!2768)))))

(declare-fun b!3962587 () Bool)

(declare-fun e!2453940 () Bool)

(assert (=> b!3962587 (= e!2453940 (= (size!31619 (_1!23897 (v!39391 lt!1386703))) (size!31618 (originalCharacters!7226 (_1!23897 (v!39391 lt!1386703))))))))

(declare-fun b!3962588 () Bool)

(declare-fun Unit!60802 () Unit!60794)

(assert (=> b!3962588 (= e!2453944 Unit!60802)))

(declare-fun lt!1386676 () Unit!60794)

(assert (=> b!3962588 (= lt!1386676 (lemmaConcatTwoListThenFirstIsPrefix!2574 prefix!426 suffix!1176))))

(assert (=> b!3962588 (isPrefix!3715 prefix!426 lt!1386689)))

(declare-fun lt!1386680 () Unit!60794)

(declare-fun lemmaIsPrefixSameLengthThenSameList!837 (List!42355 List!42355 List!42355) Unit!60794)

(assert (=> b!3962588 (= lt!1386680 (lemmaIsPrefixSameLengthThenSameList!837 lt!1386686 prefix!426 lt!1386689))))

(assert (=> b!3962588 (= lt!1386686 prefix!426)))

(declare-fun lt!1386688 () Unit!60794)

(declare-fun lemmaSamePrefixThenSameSuffix!1924 (List!42355 List!42355 List!42355 List!42355 List!42355) Unit!60794)

(assert (=> b!3962588 (= lt!1386688 (lemmaSamePrefixThenSameSuffix!1924 lt!1386686 (_2!23897 (v!39391 lt!1386703)) prefix!426 suffix!1176 lt!1386689))))

(assert (=> b!3962588 false))

(declare-fun b!3962589 () Bool)

(declare-fun res!1603810 () Bool)

(assert (=> b!3962589 (=> res!1603810 e!2453939)))

(declare-fun lt!1386690 () tuple2!41528)

(assert (=> b!3962589 (= res!1603810 (not (= lt!1386690 (tuple2!41529 (++!11010 (Cons!42233 (_1!23897 (v!39391 lt!1386703)) Nil!42233) (_1!23898 lt!1386694)) (_2!23898 lt!1386694)))))))

(declare-fun b!3962590 () Bool)

(assert (=> b!3962590 (= e!2453932 (not e!2453939))))

(declare-fun res!1603801 () Bool)

(assert (=> b!3962590 (=> res!1603801 e!2453939)))

(assert (=> b!3962590 (= res!1603801 (not (= lt!1386698 lt!1386689)))))

(assert (=> b!3962590 (= lt!1386694 (lexList!1983 thiss!20629 rules!2768 (_2!23897 (v!39391 lt!1386703))))))

(declare-fun lt!1386700 () List!42355)

(assert (=> b!3962590 (and (= (size!31619 (_1!23897 (v!39391 lt!1386703))) lt!1386699) (= (originalCharacters!7226 (_1!23897 (v!39391 lt!1386703))) lt!1386686) (= (v!39391 lt!1386703) (tuple2!41527 (Token!12391 lt!1386702 (rule!9608 (_1!23897 (v!39391 lt!1386703))) lt!1386699 lt!1386686) lt!1386700)))))

(assert (=> b!3962590 (= lt!1386699 (size!31618 lt!1386686))))

(assert (=> b!3962590 e!2453940))

(declare-fun res!1603791 () Bool)

(assert (=> b!3962590 (=> (not res!1603791) (not e!2453940))))

(assert (=> b!3962590 (= res!1603791 (= (value!209475 (_1!23897 (v!39391 lt!1386703))) lt!1386702))))

(declare-fun apply!9857 (TokenValueInjection!13140 BalanceConc!25268) TokenValue!6856)

(declare-fun seqFromList!4885 (List!42355) BalanceConc!25268)

(assert (=> b!3962590 (= lt!1386702 (apply!9857 (transformation!6626 (rule!9608 (_1!23897 (v!39391 lt!1386703)))) (seqFromList!4885 lt!1386686)))))

(assert (=> b!3962590 (= (_2!23897 (v!39391 lt!1386703)) lt!1386700)))

(declare-fun lt!1386677 () Unit!60794)

(assert (=> b!3962590 (= lt!1386677 (lemmaSamePrefixThenSameSuffix!1924 lt!1386686 (_2!23897 (v!39391 lt!1386703)) lt!1386686 lt!1386700 lt!1386689))))

(declare-fun getSuffix!2166 (List!42355 List!42355) List!42355)

(assert (=> b!3962590 (= lt!1386700 (getSuffix!2166 lt!1386689 lt!1386686))))

(assert (=> b!3962590 (isPrefix!3715 lt!1386686 lt!1386698)))

(assert (=> b!3962590 (= lt!1386698 (++!11009 lt!1386686 (_2!23897 (v!39391 lt!1386703))))))

(declare-fun lt!1386667 () Unit!60794)

(assert (=> b!3962590 (= lt!1386667 (lemmaConcatTwoListThenFirstIsPrefix!2574 lt!1386686 (_2!23897 (v!39391 lt!1386703))))))

(declare-fun list!15674 (BalanceConc!25268) List!42355)

(declare-fun charsOf!4444 (Token!12390) BalanceConc!25268)

(assert (=> b!3962590 (= lt!1386686 (list!15674 (charsOf!4444 (_1!23897 (v!39391 lt!1386703)))))))

(declare-fun ruleValid!2568 (LexerInterface!6215 Rule!13052) Bool)

(assert (=> b!3962590 (ruleValid!2568 thiss!20629 (rule!9608 (_1!23897 (v!39391 lt!1386703))))))

(declare-fun lt!1386693 () Unit!60794)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1644 (LexerInterface!6215 Rule!13052 List!42358) Unit!60794)

(assert (=> b!3962590 (= lt!1386693 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1644 thiss!20629 (rule!9608 (_1!23897 (v!39391 lt!1386703))) rules!2768))))

(declare-fun lt!1386697 () Unit!60794)

(declare-fun lemmaCharactersSize!1279 (Token!12390) Unit!60794)

(assert (=> b!3962590 (= lt!1386697 (lemmaCharactersSize!1279 (_1!23897 (v!39391 lt!1386703))))))

(declare-fun b!3962591 () Bool)

(declare-fun Unit!60803 () Unit!60794)

(assert (=> b!3962591 (= e!2453920 Unit!60803)))

(declare-fun b!3962592 () Bool)

(declare-fun tp!1207841 () Bool)

(assert (=> b!3962592 (= e!2453918 (and e!2453929 tp!1207841))))

(declare-fun bm!285437 () Bool)

(assert (=> bm!285437 (= call!285442 (lexList!1983 thiss!20629 rules!2768 (_2!23897 lt!1386705)))))

(declare-fun b!3962593 () Bool)

(assert (=> b!3962593 (= e!2453923 e!2453947)))

(declare-fun res!1603793 () Bool)

(assert (=> b!3962593 (=> (not res!1603793) (not e!2453947))))

(declare-fun lt!1386701 () List!42357)

(assert (=> b!3962593 (= res!1603793 (= lt!1386690 (tuple2!41529 lt!1386701 suffixResult!91)))))

(assert (=> b!3962593 (= lt!1386690 (lexList!1983 thiss!20629 rules!2768 lt!1386689))))

(assert (=> b!3962593 (= lt!1386701 (++!11010 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3962593 (= lt!1386689 (++!11009 prefix!426 suffix!1176))))

(declare-fun b!3962594 () Bool)

(assert (=> b!3962594 (= e!2453950 e!2453924)))

(declare-fun res!1603794 () Bool)

(assert (=> b!3962594 (=> res!1603794 e!2453924)))

(assert (=> b!3962594 (= res!1603794 (not (= lt!1386692 prefix!426)))))

(assert (=> b!3962594 (= lt!1386692 (++!11009 lt!1386686 lt!1386679))))

(assert (=> b!3962594 (= lt!1386679 (getSuffix!2166 prefix!426 lt!1386686))))

(declare-fun b!3962595 () Bool)

(declare-fun tp!1207844 () Bool)

(assert (=> b!3962595 (= e!2453922 (and (inv!21 (value!209475 (h!47653 prefixTokens!80))) e!2453926 tp!1207844))))

(assert (=> b!3962596 (= e!2453919 (and tp!1207846 tp!1207837))))

(assert (= (and start!372740 res!1603799) b!3962586))

(assert (= (and b!3962586 res!1603802) b!3962559))

(assert (= (and b!3962559 res!1603807) b!3962581))

(assert (= (and b!3962581 res!1603790) b!3962569))

(assert (= (and b!3962569 res!1603804) b!3962593))

(assert (= (and b!3962593 res!1603793) b!3962567))

(assert (= (and b!3962567 res!1603795) b!3962576))

(assert (= (and b!3962576 res!1603805) b!3962590))

(assert (= (and b!3962590 res!1603791) b!3962587))

(assert (= (and b!3962590 (not res!1603801)) b!3962589))

(assert (= (and b!3962589 (not res!1603810)) b!3962577))

(assert (= (and b!3962577 (not res!1603800)) b!3962558))

(assert (= (and b!3962558 c!687533) b!3962566))

(assert (= (and b!3962558 (not c!687533)) b!3962579))

(assert (= (and b!3962566 c!687530) b!3962578))

(assert (= (and b!3962566 (not c!687530)) b!3962591))

(assert (= (and b!3962578 c!687531) b!3962565))

(assert (= (and b!3962578 (not c!687531)) b!3962571))

(assert (= (and b!3962565 res!1603797) b!3962573))

(assert (= (and b!3962571 res!1603809) b!3962585))

(assert (= (or b!3962565 b!3962571) bm!285437))

(assert (= (and b!3962558 c!687532) b!3962588))

(assert (= (and b!3962558 (not c!687532)) b!3962557))

(assert (= (and b!3962558 (not res!1603798)) b!3962584))

(assert (= (and b!3962584 (not res!1603803)) b!3962554))

(assert (= (and b!3962554 (not res!1603806)) b!3962594))

(assert (= (and b!3962594 (not res!1603794)) b!3962564))

(assert (= (and b!3962564 (not res!1603792)) b!3962575))

(assert (= (and b!3962575 (not res!1603796)) b!3962574))

(assert (= (and b!3962574 (not res!1603808)) b!3962560))

(assert (= (and start!372740 ((_ is Cons!42231) suffixResult!91)) b!3962572))

(assert (= (and start!372740 ((_ is Cons!42231) suffix!1176)) b!3962562))

(assert (= b!3962582 b!3962580))

(assert (= b!3962592 b!3962582))

(assert (= (and start!372740 ((_ is Cons!42234) rules!2768)) b!3962592))

(assert (= b!3962561 b!3962596))

(assert (= b!3962595 b!3962561))

(assert (= b!3962555 b!3962595))

(assert (= (and start!372740 ((_ is Cons!42233) prefixTokens!80)) b!3962555))

(assert (= b!3962568 b!3962563))

(assert (= b!3962556 b!3962568))

(assert (= b!3962583 b!3962556))

(assert (= (and start!372740 ((_ is Cons!42233) suffixTokens!72)) b!3962583))

(assert (= (and start!372740 ((_ is Cons!42231) prefix!426)) b!3962570))

(declare-fun m!4531609 () Bool)

(assert (=> b!3962581 m!4531609))

(declare-fun m!4531611 () Bool)

(assert (=> b!3962565 m!4531611))

(declare-fun m!4531613 () Bool)

(assert (=> b!3962565 m!4531613))

(declare-fun m!4531615 () Bool)

(assert (=> b!3962587 m!4531615))

(declare-fun m!4531617 () Bool)

(assert (=> b!3962593 m!4531617))

(declare-fun m!4531619 () Bool)

(assert (=> b!3962593 m!4531619))

(declare-fun m!4531621 () Bool)

(assert (=> b!3962593 m!4531621))

(declare-fun m!4531623 () Bool)

(assert (=> b!3962595 m!4531623))

(declare-fun m!4531625 () Bool)

(assert (=> b!3962578 m!4531625))

(declare-fun m!4531627 () Bool)

(assert (=> b!3962578 m!4531627))

(declare-fun m!4531629 () Bool)

(assert (=> b!3962590 m!4531629))

(declare-fun m!4531631 () Bool)

(assert (=> b!3962590 m!4531631))

(declare-fun m!4531633 () Bool)

(assert (=> b!3962590 m!4531633))

(declare-fun m!4531635 () Bool)

(assert (=> b!3962590 m!4531635))

(declare-fun m!4531637 () Bool)

(assert (=> b!3962590 m!4531637))

(declare-fun m!4531639 () Bool)

(assert (=> b!3962590 m!4531639))

(declare-fun m!4531641 () Bool)

(assert (=> b!3962590 m!4531641))

(declare-fun m!4531643 () Bool)

(assert (=> b!3962590 m!4531643))

(declare-fun m!4531645 () Bool)

(assert (=> b!3962590 m!4531645))

(declare-fun m!4531647 () Bool)

(assert (=> b!3962590 m!4531647))

(assert (=> b!3962590 m!4531643))

(declare-fun m!4531649 () Bool)

(assert (=> b!3962590 m!4531649))

(declare-fun m!4531651 () Bool)

(assert (=> b!3962590 m!4531651))

(declare-fun m!4531653 () Bool)

(assert (=> b!3962590 m!4531653))

(assert (=> b!3962590 m!4531629))

(declare-fun m!4531655 () Bool)

(assert (=> b!3962590 m!4531655))

(declare-fun m!4531657 () Bool)

(assert (=> b!3962554 m!4531657))

(declare-fun m!4531659 () Bool)

(assert (=> b!3962554 m!4531659))

(declare-fun m!4531661 () Bool)

(assert (=> b!3962554 m!4531661))

(declare-fun m!4531663 () Bool)

(assert (=> b!3962554 m!4531663))

(declare-fun m!4531665 () Bool)

(assert (=> b!3962554 m!4531665))

(declare-fun m!4531667 () Bool)

(assert (=> b!3962558 m!4531667))

(declare-fun m!4531669 () Bool)

(assert (=> b!3962558 m!4531669))

(declare-fun m!4531671 () Bool)

(assert (=> b!3962559 m!4531671))

(assert (=> b!3962588 m!4531659))

(assert (=> b!3962588 m!4531663))

(declare-fun m!4531673 () Bool)

(assert (=> b!3962588 m!4531673))

(declare-fun m!4531675 () Bool)

(assert (=> b!3962588 m!4531675))

(declare-fun m!4531677 () Bool)

(assert (=> b!3962569 m!4531677))

(declare-fun m!4531679 () Bool)

(assert (=> b!3962586 m!4531679))

(declare-fun m!4531681 () Bool)

(assert (=> b!3962561 m!4531681))

(declare-fun m!4531683 () Bool)

(assert (=> b!3962561 m!4531683))

(declare-fun m!4531685 () Bool)

(assert (=> b!3962583 m!4531685))

(declare-fun m!4531687 () Bool)

(assert (=> b!3962575 m!4531687))

(declare-fun m!4531689 () Bool)

(assert (=> b!3962575 m!4531689))

(declare-fun m!4531691 () Bool)

(assert (=> b!3962575 m!4531691))

(declare-fun m!4531693 () Bool)

(assert (=> b!3962584 m!4531693))

(declare-fun m!4531695 () Bool)

(assert (=> b!3962576 m!4531695))

(declare-fun m!4531697 () Bool)

(assert (=> b!3962589 m!4531697))

(declare-fun m!4531699 () Bool)

(assert (=> b!3962574 m!4531699))

(declare-fun m!4531701 () Bool)

(assert (=> b!3962574 m!4531701))

(declare-fun m!4531703 () Bool)

(assert (=> b!3962574 m!4531703))

(declare-fun m!4531705 () Bool)

(assert (=> b!3962555 m!4531705))

(declare-fun m!4531707 () Bool)

(assert (=> b!3962582 m!4531707))

(declare-fun m!4531709 () Bool)

(assert (=> b!3962582 m!4531709))

(declare-fun m!4531711 () Bool)

(assert (=> b!3962594 m!4531711))

(declare-fun m!4531713 () Bool)

(assert (=> b!3962594 m!4531713))

(declare-fun m!4531715 () Bool)

(assert (=> bm!285437 m!4531715))

(declare-fun m!4531717 () Bool)

(assert (=> b!3962556 m!4531717))

(declare-fun m!4531719 () Bool)

(assert (=> b!3962564 m!4531719))

(declare-fun m!4531721 () Bool)

(assert (=> b!3962568 m!4531721))

(declare-fun m!4531723 () Bool)

(assert (=> b!3962568 m!4531723))

(declare-fun m!4531725 () Bool)

(assert (=> b!3962571 m!4531725))

(declare-fun m!4531727 () Bool)

(assert (=> b!3962571 m!4531727))

(declare-fun m!4531729 () Bool)

(assert (=> b!3962567 m!4531729))

(declare-fun m!4531731 () Bool)

(assert (=> b!3962566 m!4531731))

(declare-fun m!4531733 () Bool)

(assert (=> b!3962566 m!4531733))

(declare-fun m!4531735 () Bool)

(assert (=> b!3962566 m!4531735))

(declare-fun m!4531737 () Bool)

(assert (=> b!3962566 m!4531737))

(declare-fun m!4531739 () Bool)

(assert (=> b!3962566 m!4531739))

(check-sat (not b!3962568) (not b_next!110165) (not b!3962582) (not b_next!110173) (not b!3962583) (not b!3962558) (not b!3962562) (not b!3962570) (not b_next!110169) b_and!304297 (not b_next!110167) (not b!3962565) (not b_next!110175) (not b!3962586) (not b!3962592) (not b!3962571) (not b!3962556) (not bm!285437) (not b!3962569) b_and!304291 (not b!3962566) (not b!3962595) b_and!304301 tp_is_empty!20033 (not b!3962567) (not b!3962574) b_and!304299 b_and!304295 (not b!3962587) (not b!3962593) (not b!3962576) (not b!3962572) (not b_next!110171) b_and!304293 (not b!3962584) (not b!3962581) (not b!3962590) (not b!3962578) (not b!3962554) (not b!3962559) (not b!3962555) (not b!3962575) (not b!3962594) (not b!3962589) (not b!3962564) (not b!3962588) (not b!3962561))
(check-sat (not b_next!110165) b_and!304291 b_and!304301 (not b_next!110171) (not b_next!110173) b_and!304293 (not b_next!110169) b_and!304297 (not b_next!110167) (not b_next!110175) b_and!304299 b_and!304295)
