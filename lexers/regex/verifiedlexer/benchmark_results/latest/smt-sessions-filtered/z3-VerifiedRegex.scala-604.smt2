; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19190 () Bool)

(assert start!19190)

(declare-fun b!177061 () Bool)

(declare-fun b_free!6769 () Bool)

(declare-fun b_next!6769 () Bool)

(assert (=> b!177061 (= b_free!6769 (not b_next!6769))))

(declare-fun tp!85401 () Bool)

(declare-fun b_and!11989 () Bool)

(assert (=> b!177061 (= tp!85401 b_and!11989)))

(declare-fun b_free!6771 () Bool)

(declare-fun b_next!6771 () Bool)

(assert (=> b!177061 (= b_free!6771 (not b_next!6771))))

(declare-fun tp!85393 () Bool)

(declare-fun b_and!11991 () Bool)

(assert (=> b!177061 (= tp!85393 b_and!11991)))

(declare-fun b!177077 () Bool)

(declare-fun b_free!6773 () Bool)

(declare-fun b_next!6773 () Bool)

(assert (=> b!177077 (= b_free!6773 (not b_next!6773))))

(declare-fun tp!85397 () Bool)

(declare-fun b_and!11993 () Bool)

(assert (=> b!177077 (= tp!85397 b_and!11993)))

(declare-fun b_free!6775 () Bool)

(declare-fun b_next!6775 () Bool)

(assert (=> b!177077 (= b_free!6775 (not b_next!6775))))

(declare-fun tp!85402 () Bool)

(declare-fun b_and!11995 () Bool)

(assert (=> b!177077 (= tp!85402 b_and!11995)))

(declare-fun b!177054 () Bool)

(declare-fun b_free!6777 () Bool)

(declare-fun b_next!6777 () Bool)

(assert (=> b!177054 (= b_free!6777 (not b_next!6777))))

(declare-fun tp!85394 () Bool)

(declare-fun b_and!11997 () Bool)

(assert (=> b!177054 (= tp!85394 b_and!11997)))

(declare-fun b_free!6779 () Bool)

(declare-fun b_next!6779 () Bool)

(assert (=> b!177054 (= b_free!6779 (not b_next!6779))))

(declare-fun tp!85400 () Bool)

(declare-fun b_and!11999 () Bool)

(assert (=> b!177054 (= tp!85400 b_and!11999)))

(declare-fun bs!17690 () Bool)

(declare-fun b!177073 () Bool)

(declare-fun b!177078 () Bool)

(assert (= bs!17690 (and b!177073 b!177078)))

(declare-fun lambda!5140 () Int)

(declare-fun lambda!5139 () Int)

(assert (=> bs!17690 (not (= lambda!5140 lambda!5139))))

(declare-fun b!177090 () Bool)

(declare-fun e!107459 () Bool)

(assert (=> b!177090 (= e!107459 true)))

(declare-fun b!177089 () Bool)

(declare-fun e!107458 () Bool)

(assert (=> b!177089 (= e!107458 e!107459)))

(declare-fun b!177088 () Bool)

(declare-fun e!107457 () Bool)

(assert (=> b!177088 (= e!107457 e!107458)))

(assert (=> b!177073 e!107457))

(assert (= b!177089 b!177090))

(assert (= b!177088 b!177089))

(declare-datatypes ((List!2963 0))(
  ( (Nil!2953) (Cons!2953 (h!8350 (_ BitVec 16)) (t!28009 List!2963)) )
))
(declare-datatypes ((TokenValue!553 0))(
  ( (FloatLiteralValue!1106 (text!4316 List!2963)) (TokenValueExt!552 (__x!2593 Int)) (Broken!2765 (value!19423 List!2963)) (Object!562) (End!553) (Def!553) (Underscore!553) (Match!553) (Else!553) (Error!553) (Case!553) (If!553) (Extends!553) (Abstract!553) (Class!553) (Val!553) (DelimiterValue!1106 (del!613 List!2963)) (KeywordValue!559 (value!19424 List!2963)) (CommentValue!1106 (value!19425 List!2963)) (WhitespaceValue!1106 (value!19426 List!2963)) (IndentationValue!553 (value!19427 List!2963)) (String!3844) (Int32!553) (Broken!2766 (value!19428 List!2963)) (Boolean!554) (Unit!2683) (OperatorValue!556 (op!613 List!2963)) (IdentifierValue!1106 (value!19429 List!2963)) (IdentifierValue!1107 (value!19430 List!2963)) (WhitespaceValue!1107 (value!19431 List!2963)) (True!1106) (False!1106) (Broken!2767 (value!19432 List!2963)) (Broken!2768 (value!19433 List!2963)) (True!1107) (RightBrace!553) (RightBracket!553) (Colon!553) (Null!553) (Comma!553) (LeftBracket!553) (False!1107) (LeftBrace!553) (ImaginaryLiteralValue!553 (text!4317 List!2963)) (StringLiteralValue!1659 (value!19434 List!2963)) (EOFValue!553 (value!19435 List!2963)) (IdentValue!553 (value!19436 List!2963)) (DelimiterValue!1107 (value!19437 List!2963)) (DedentValue!553 (value!19438 List!2963)) (NewLineValue!553 (value!19439 List!2963)) (IntegerValue!1659 (value!19440 (_ BitVec 32)) (text!4318 List!2963)) (IntegerValue!1660 (value!19441 Int) (text!4319 List!2963)) (Times!553) (Or!553) (Equal!553) (Minus!553) (Broken!2769 (value!19442 List!2963)) (And!553) (Div!553) (LessEqual!553) (Mod!553) (Concat!1308) (Not!553) (Plus!553) (SpaceValue!553 (value!19443 List!2963)) (IntegerValue!1661 (value!19444 Int) (text!4320 List!2963)) (StringLiteralValue!1660 (text!4321 List!2963)) (FloatLiteralValue!1107 (text!4322 List!2963)) (BytesLiteralValue!553 (value!19445 List!2963)) (CommentValue!1107 (value!19446 List!2963)) (StringLiteralValue!1661 (value!19447 List!2963)) (ErrorTokenValue!553 (msg!614 List!2963)) )
))
(declare-datatypes ((C!2432 0))(
  ( (C!2433 (val!1102 Int)) )
))
(declare-datatypes ((List!2964 0))(
  ( (Nil!2954) (Cons!2954 (h!8351 C!2432) (t!28010 List!2964)) )
))
(declare-datatypes ((IArray!1769 0))(
  ( (IArray!1770 (innerList!942 List!2964)) )
))
(declare-datatypes ((Conc!884 0))(
  ( (Node!884 (left!2268 Conc!884) (right!2598 Conc!884) (csize!1998 Int) (cheight!1095 Int)) (Leaf!1489 (xs!3479 IArray!1769) (csize!1999 Int)) (Empty!884) )
))
(declare-datatypes ((BalanceConc!1776 0))(
  ( (BalanceConc!1777 (c!34963 Conc!884)) )
))
(declare-datatypes ((TokenValueInjection!878 0))(
  ( (TokenValueInjection!879 (toValue!1202 Int) (toChars!1061 Int)) )
))
(declare-datatypes ((Regex!755 0))(
  ( (ElementMatch!755 (c!34964 C!2432)) (Concat!1309 (regOne!2022 Regex!755) (regTwo!2022 Regex!755)) (EmptyExpr!755) (Star!755 (reg!1084 Regex!755)) (EmptyLang!755) (Union!755 (regOne!2023 Regex!755) (regTwo!2023 Regex!755)) )
))
(declare-datatypes ((String!3845 0))(
  ( (String!3846 (value!19448 String)) )
))
(declare-datatypes ((Rule!862 0))(
  ( (Rule!863 (regex!531 Regex!755) (tag!709 String!3845) (isSeparator!531 Bool) (transformation!531 TokenValueInjection!878)) )
))
(declare-datatypes ((List!2965 0))(
  ( (Nil!2955) (Cons!2955 (h!8352 Rule!862) (t!28011 List!2965)) )
))
(declare-fun rules!1920 () List!2965)

(get-info :version)

(assert (= (and b!177073 ((_ is Cons!2955) rules!1920)) b!177088))

(declare-fun order!1661 () Int)

(declare-fun order!1663 () Int)

(declare-fun dynLambda!1151 (Int Int) Int)

(declare-fun dynLambda!1152 (Int Int) Int)

(assert (=> b!177090 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5140))))

(declare-fun order!1665 () Int)

(declare-fun dynLambda!1153 (Int Int) Int)

(assert (=> b!177090 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5140))))

(assert (=> b!177073 true))

(declare-datatypes ((Token!806 0))(
  ( (Token!807 (value!19449 TokenValue!553) (rule!1046 Rule!862) (size!2443 Int) (originalCharacters!574 List!2964)) )
))
(declare-fun separatorToken!170 () Token!806)

(declare-fun e!107450 () Bool)

(declare-fun e!107438 () Bool)

(declare-fun tp!85403 () Bool)

(declare-fun b!177048 () Bool)

(declare-fun inv!3788 (String!3845) Bool)

(declare-fun inv!3791 (TokenValueInjection!878) Bool)

(assert (=> b!177048 (= e!107438 (and tp!85403 (inv!3788 (tag!709 (rule!1046 separatorToken!170))) (inv!3791 (transformation!531 (rule!1046 separatorToken!170))) e!107450))))

(declare-fun b!177050 () Bool)

(declare-fun res!79929 () Bool)

(declare-fun e!107427 () Bool)

(assert (=> b!177050 (=> res!79929 e!107427)))

(declare-fun lt!57570 () List!2964)

(declare-datatypes ((LexerInterface!417 0))(
  ( (LexerInterfaceExt!414 (__x!2594 Int)) (Lexer!415) )
))
(declare-fun thiss!17480 () LexerInterface!417)

(declare-datatypes ((List!2966 0))(
  ( (Nil!2956) (Cons!2956 (h!8353 Token!806) (t!28012 List!2966)) )
))
(declare-datatypes ((IArray!1771 0))(
  ( (IArray!1772 (innerList!943 List!2966)) )
))
(declare-datatypes ((Conc!885 0))(
  ( (Node!885 (left!2269 Conc!885) (right!2599 Conc!885) (csize!2000 Int) (cheight!1096 Int)) (Leaf!1490 (xs!3480 IArray!1771) (csize!2001 Int)) (Empty!885) )
))
(declare-datatypes ((BalanceConc!1778 0))(
  ( (BalanceConc!1779 (c!34965 Conc!885)) )
))
(declare-fun isEmpty!1294 (BalanceConc!1778) Bool)

(declare-datatypes ((tuple2!2898 0))(
  ( (tuple2!2899 (_1!1665 BalanceConc!1778) (_2!1665 BalanceConc!1776)) )
))
(declare-fun lex!217 (LexerInterface!417 List!2965 BalanceConc!1776) tuple2!2898)

(declare-fun seqFromList!439 (List!2964) BalanceConc!1776)

(assert (=> b!177050 (= res!79929 (isEmpty!1294 (_1!1665 (lex!217 thiss!17480 rules!1920 (seqFromList!439 lt!57570)))))))

(declare-fun b!177051 () Bool)

(declare-fun e!107437 () Bool)

(declare-fun e!107442 () Bool)

(assert (=> b!177051 (= e!107437 e!107442)))

(declare-fun res!79937 () Bool)

(assert (=> b!177051 (=> (not res!79937) (not e!107442))))

(declare-fun lt!57556 () BalanceConc!1778)

(declare-fun rulesProduceEachTokenIndividually!209 (LexerInterface!417 List!2965 BalanceConc!1778) Bool)

(assert (=> b!177051 (= res!79937 (rulesProduceEachTokenIndividually!209 thiss!17480 rules!1920 lt!57556))))

(declare-fun tokens!465 () List!2966)

(declare-fun seqFromList!440 (List!2966) BalanceConc!1778)

(assert (=> b!177051 (= lt!57556 (seqFromList!440 tokens!465))))

(declare-fun e!107432 () Bool)

(declare-fun tp!85398 () Bool)

(declare-fun b!177052 () Bool)

(declare-fun e!107443 () Bool)

(assert (=> b!177052 (= e!107443 (and tp!85398 (inv!3788 (tag!709 (rule!1046 (h!8353 tokens!465)))) (inv!3791 (transformation!531 (rule!1046 (h!8353 tokens!465)))) e!107432))))

(declare-fun b!177053 () Bool)

(declare-fun res!79935 () Bool)

(declare-fun e!107429 () Bool)

(assert (=> b!177053 (=> res!79935 e!107429)))

(declare-fun rulesProduceEachTokenIndividuallyList!119 (LexerInterface!417 List!2965 List!2966) Bool)

(assert (=> b!177053 (= res!79935 (not (rulesProduceEachTokenIndividuallyList!119 thiss!17480 rules!1920 (t!28012 tokens!465))))))

(declare-fun e!107433 () Bool)

(assert (=> b!177054 (= e!107433 (and tp!85394 tp!85400))))

(declare-fun b!177055 () Bool)

(declare-fun res!79932 () Bool)

(assert (=> b!177055 (=> (not res!79932) (not e!107442))))

(assert (=> b!177055 (= res!79932 ((_ is Cons!2956) tokens!465))))

(declare-fun b!177056 () Bool)

(declare-fun e!107430 () Bool)

(declare-fun e!107446 () Bool)

(assert (=> b!177056 (= e!107430 e!107446)))

(declare-fun res!79926 () Bool)

(assert (=> b!177056 (=> res!79926 e!107446)))

(declare-fun e!107434 () Bool)

(assert (=> b!177056 (= res!79926 e!107434)))

(declare-fun res!79944 () Bool)

(assert (=> b!177056 (=> (not res!79944) (not e!107434))))

(declare-fun lt!57557 () Bool)

(assert (=> b!177056 (= res!79944 (not lt!57557))))

(declare-fun lt!57566 () List!2964)

(declare-fun lt!57567 () List!2964)

(assert (=> b!177056 (= lt!57557 (= lt!57566 lt!57567))))

(declare-fun e!107449 () Bool)

(declare-fun tp!85395 () Bool)

(declare-fun b!177057 () Bool)

(assert (=> b!177057 (= e!107449 (and tp!85395 (inv!3788 (tag!709 (h!8352 rules!1920))) (inv!3791 (transformation!531 (h!8352 rules!1920))) e!107433))))

(declare-fun b!177058 () Bool)

(declare-fun res!79928 () Bool)

(assert (=> b!177058 (=> (not res!79928) (not e!107437))))

(declare-fun isEmpty!1295 (List!2965) Bool)

(assert (=> b!177058 (= res!79928 (not (isEmpty!1295 rules!1920)))))

(declare-fun lt!57568 () List!2964)

(declare-fun b!177059 () Bool)

(declare-fun ++!690 (List!2964 List!2964) List!2964)

(assert (=> b!177059 (= e!107434 (not (= lt!57566 (++!690 lt!57570 lt!57568))))))

(declare-fun b!177060 () Bool)

(declare-fun res!79927 () Bool)

(assert (=> b!177060 (=> (not res!79927) (not e!107437))))

(declare-fun rulesInvariant!383 (LexerInterface!417 List!2965) Bool)

(assert (=> b!177060 (= res!79927 (rulesInvariant!383 thiss!17480 rules!1920))))

(assert (=> b!177061 (= e!107432 (and tp!85401 tp!85393))))

(declare-fun b!177062 () Bool)

(declare-fun e!107435 () Bool)

(assert (=> b!177062 (= e!107435 e!107429)))

(declare-fun res!79941 () Bool)

(assert (=> b!177062 (=> res!79941 e!107429)))

(assert (=> b!177062 (= res!79941 (not lt!57557))))

(declare-fun e!107445 () Bool)

(assert (=> b!177062 e!107445))

(declare-fun res!79942 () Bool)

(assert (=> b!177062 (=> (not res!79942) (not e!107445))))

(declare-datatypes ((tuple2!2900 0))(
  ( (tuple2!2901 (_1!1666 Token!806) (_2!1666 List!2964)) )
))
(declare-fun lt!57560 () tuple2!2900)

(assert (=> b!177062 (= res!79942 (= (_1!1666 lt!57560) (h!8353 tokens!465)))))

(declare-datatypes ((Option!340 0))(
  ( (None!339) (Some!339 (v!13802 tuple2!2900)) )
))
(declare-fun lt!57571 () Option!340)

(declare-fun get!821 (Option!340) tuple2!2900)

(assert (=> b!177062 (= lt!57560 (get!821 lt!57571))))

(declare-fun isDefined!191 (Option!340) Bool)

(assert (=> b!177062 (isDefined!191 lt!57571)))

(declare-fun maxPrefix!147 (LexerInterface!417 List!2965 List!2964) Option!340)

(assert (=> b!177062 (= lt!57571 (maxPrefix!147 thiss!17480 rules!1920 lt!57570))))

(declare-fun e!107428 () Bool)

(declare-fun tp!85396 () Bool)

(declare-fun b!177049 () Bool)

(declare-fun inv!21 (TokenValue!553) Bool)

(assert (=> b!177049 (= e!107428 (and (inv!21 (value!19449 (h!8353 tokens!465))) e!107443 tp!85396))))

(declare-fun res!79936 () Bool)

(assert (=> start!19190 (=> (not res!79936) (not e!107437))))

(assert (=> start!19190 (= res!79936 ((_ is Lexer!415) thiss!17480))))

(assert (=> start!19190 e!107437))

(assert (=> start!19190 true))

(declare-fun e!107448 () Bool)

(assert (=> start!19190 e!107448))

(declare-fun e!107439 () Bool)

(declare-fun inv!3792 (Token!806) Bool)

(assert (=> start!19190 (and (inv!3792 separatorToken!170) e!107439)))

(declare-fun e!107436 () Bool)

(assert (=> start!19190 e!107436))

(declare-fun b!177063 () Bool)

(declare-fun res!79933 () Bool)

(declare-fun e!107447 () Bool)

(assert (=> b!177063 (=> (not res!79933) (not e!107447))))

(declare-fun lt!57555 () List!2964)

(declare-fun list!1085 (BalanceConc!1776) List!2964)

(assert (=> b!177063 (= res!79933 (= (list!1085 (seqFromList!439 lt!57566)) lt!57555))))

(declare-fun b!177064 () Bool)

(declare-fun matchR!93 (Regex!755 List!2964) Bool)

(assert (=> b!177064 (= e!107445 (matchR!93 (regex!531 (rule!1046 (h!8353 tokens!465))) lt!57570))))

(declare-fun tp!85391 () Bool)

(declare-fun b!177065 () Bool)

(assert (=> b!177065 (= e!107436 (and (inv!3792 (h!8353 tokens!465)) e!107428 tp!85391))))

(declare-fun b!177066 () Bool)

(declare-fun res!79925 () Bool)

(assert (=> b!177066 (=> (not res!79925) (not e!107442))))

(declare-fun sepAndNonSepRulesDisjointChars!120 (List!2965 List!2965) Bool)

(assert (=> b!177066 (= res!79925 (sepAndNonSepRulesDisjointChars!120 rules!1920 rules!1920))))

(declare-fun b!177067 () Bool)

(assert (=> b!177067 (= e!107442 e!107447)))

(declare-fun res!79938 () Bool)

(assert (=> b!177067 (=> (not res!79938) (not e!107447))))

(assert (=> b!177067 (= res!79938 (= lt!57566 lt!57555))))

(declare-fun printWithSeparatorTokenWhenNeededRec!100 (LexerInterface!417 List!2965 BalanceConc!1778 Token!806 Int) BalanceConc!1776)

(assert (=> b!177067 (= lt!57555 (list!1085 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 lt!57556 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!110 (LexerInterface!417 List!2965 List!2966 Token!806) List!2964)

(assert (=> b!177067 (= lt!57566 (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!177068 () Bool)

(assert (=> b!177068 (= e!107446 e!107427)))

(declare-fun res!79934 () Bool)

(assert (=> b!177068 (=> res!79934 e!107427)))

(declare-fun lt!57569 () List!2964)

(declare-fun lt!57559 () List!2964)

(assert (=> b!177068 (= res!79934 (or (not (= lt!57569 lt!57559)) (not (= lt!57559 lt!57570)) (not (= lt!57569 lt!57570))))))

(declare-fun printList!101 (LexerInterface!417 List!2966) List!2964)

(assert (=> b!177068 (= lt!57559 (printList!101 thiss!17480 (Cons!2956 (h!8353 tokens!465) Nil!2956)))))

(declare-fun lt!57561 () BalanceConc!1776)

(assert (=> b!177068 (= lt!57569 (list!1085 lt!57561))))

(declare-fun lt!57563 () BalanceConc!1778)

(declare-fun printTailRec!111 (LexerInterface!417 BalanceConc!1778 Int BalanceConc!1776) BalanceConc!1776)

(assert (=> b!177068 (= lt!57561 (printTailRec!111 thiss!17480 lt!57563 0 (BalanceConc!1777 Empty!884)))))

(declare-fun print!148 (LexerInterface!417 BalanceConc!1778) BalanceConc!1776)

(assert (=> b!177068 (= lt!57561 (print!148 thiss!17480 lt!57563))))

(declare-fun singletonSeq!83 (Token!806) BalanceConc!1778)

(assert (=> b!177068 (= lt!57563 (singletonSeq!83 (h!8353 tokens!465)))))

(declare-fun b!177069 () Bool)

(declare-fun res!79924 () Bool)

(assert (=> b!177069 (=> (not res!79924) (not e!107442))))

(declare-fun rulesProduceIndividualToken!166 (LexerInterface!417 List!2965 Token!806) Bool)

(assert (=> b!177069 (= res!79924 (rulesProduceIndividualToken!166 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!85392 () Bool)

(declare-fun b!177070 () Bool)

(assert (=> b!177070 (= e!107439 (and (inv!21 (value!19449 separatorToken!170)) e!107438 tp!85392))))

(declare-fun b!177071 () Bool)

(declare-fun res!79930 () Bool)

(assert (=> b!177071 (=> res!79930 e!107427)))

(assert (=> b!177071 (= res!79930 (not (rulesProduceIndividualToken!166 thiss!17480 rules!1920 (h!8353 tokens!465))))))

(declare-fun b!177072 () Bool)

(declare-fun tp!85399 () Bool)

(assert (=> b!177072 (= e!107448 (and e!107449 tp!85399))))

(assert (=> b!177073 (= e!107427 e!107435)))

(declare-fun res!79943 () Bool)

(assert (=> b!177073 (=> res!79943 e!107435)))

(declare-datatypes ((tuple2!2902 0))(
  ( (tuple2!2903 (_1!1667 Token!806) (_2!1667 BalanceConc!1776)) )
))
(declare-datatypes ((Option!341 0))(
  ( (None!340) (Some!340 (v!13803 tuple2!2902)) )
))
(declare-fun isDefined!192 (Option!341) Bool)

(declare-fun maxPrefixZipperSequence!110 (LexerInterface!417 List!2965 BalanceConc!1776) Option!341)

(assert (=> b!177073 (= res!79943 (not (isDefined!192 (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))

(declare-datatypes ((Unit!2684 0))(
  ( (Unit!2685) )
))
(declare-fun lt!57564 () Unit!2684)

(declare-fun forallContained!98 (List!2966 Int Token!806) Unit!2684)

(assert (=> b!177073 (= lt!57564 (forallContained!98 tokens!465 lambda!5140 (h!8353 tokens!465)))))

(assert (=> b!177073 (= lt!57570 (originalCharacters!574 (h!8353 tokens!465)))))

(declare-fun b!177074 () Bool)

(assert (=> b!177074 (= e!107447 (not e!107430))))

(declare-fun res!79940 () Bool)

(assert (=> b!177074 (=> res!79940 e!107430)))

(assert (=> b!177074 (= res!79940 (not (= lt!57568 (list!1085 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 (seqFromList!440 (t!28012 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!57562 () List!2964)

(assert (=> b!177074 (= lt!57562 lt!57567)))

(declare-fun lt!57565 () List!2964)

(assert (=> b!177074 (= lt!57567 (++!690 lt!57570 lt!57565))))

(declare-fun lt!57572 () List!2964)

(assert (=> b!177074 (= lt!57562 (++!690 (++!690 lt!57570 lt!57572) lt!57568))))

(declare-fun lt!57558 () Unit!2684)

(declare-fun lemmaConcatAssociativity!220 (List!2964 List!2964 List!2964) Unit!2684)

(assert (=> b!177074 (= lt!57558 (lemmaConcatAssociativity!220 lt!57570 lt!57572 lt!57568))))

(declare-fun charsOf!186 (Token!806) BalanceConc!1776)

(assert (=> b!177074 (= lt!57570 (list!1085 (charsOf!186 (h!8353 tokens!465))))))

(assert (=> b!177074 (= lt!57565 (++!690 lt!57572 lt!57568))))

(assert (=> b!177074 (= lt!57568 (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (t!28012 tokens!465) separatorToken!170))))

(assert (=> b!177074 (= lt!57572 (list!1085 (charsOf!186 separatorToken!170)))))

(declare-fun b!177075 () Bool)

(declare-fun res!79931 () Bool)

(assert (=> b!177075 (=> (not res!79931) (not e!107442))))

(assert (=> b!177075 (= res!79931 (isSeparator!531 (rule!1046 separatorToken!170)))))

(declare-fun b!177076 () Bool)

(declare-fun res!79923 () Bool)

(assert (=> b!177076 (=> (not res!79923) (not e!107445))))

(declare-fun isEmpty!1296 (List!2964) Bool)

(assert (=> b!177076 (= res!79923 (isEmpty!1296 (_2!1666 lt!57560)))))

(assert (=> b!177077 (= e!107450 (and tp!85397 tp!85402))))

(declare-fun res!79939 () Bool)

(assert (=> b!177078 (=> (not res!79939) (not e!107442))))

(declare-fun forall!593 (List!2966 Int) Bool)

(assert (=> b!177078 (= res!79939 (forall!593 tokens!465 lambda!5139))))

(declare-fun b!177079 () Bool)

(assert (=> b!177079 (= e!107429 (forall!593 (t!28012 tokens!465) lambda!5139))))

(assert (= (and start!19190 res!79936) b!177058))

(assert (= (and b!177058 res!79928) b!177060))

(assert (= (and b!177060 res!79927) b!177051))

(assert (= (and b!177051 res!79937) b!177069))

(assert (= (and b!177069 res!79924) b!177075))

(assert (= (and b!177075 res!79931) b!177078))

(assert (= (and b!177078 res!79939) b!177066))

(assert (= (and b!177066 res!79925) b!177055))

(assert (= (and b!177055 res!79932) b!177067))

(assert (= (and b!177067 res!79938) b!177063))

(assert (= (and b!177063 res!79933) b!177074))

(assert (= (and b!177074 (not res!79940)) b!177056))

(assert (= (and b!177056 res!79944) b!177059))

(assert (= (and b!177056 (not res!79926)) b!177068))

(assert (= (and b!177068 (not res!79934)) b!177071))

(assert (= (and b!177071 (not res!79930)) b!177050))

(assert (= (and b!177050 (not res!79929)) b!177073))

(assert (= (and b!177073 (not res!79943)) b!177062))

(assert (= (and b!177062 res!79942) b!177076))

(assert (= (and b!177076 res!79923) b!177064))

(assert (= (and b!177062 (not res!79941)) b!177053))

(assert (= (and b!177053 (not res!79935)) b!177079))

(assert (= b!177057 b!177054))

(assert (= b!177072 b!177057))

(assert (= (and start!19190 ((_ is Cons!2955) rules!1920)) b!177072))

(assert (= b!177048 b!177077))

(assert (= b!177070 b!177048))

(assert (= start!19190 b!177070))

(assert (= b!177052 b!177061))

(assert (= b!177049 b!177052))

(assert (= b!177065 b!177049))

(assert (= (and start!19190 ((_ is Cons!2956) tokens!465)) b!177065))

(declare-fun m!178599 () Bool)

(assert (=> b!177074 m!178599))

(declare-fun m!178601 () Bool)

(assert (=> b!177074 m!178601))

(declare-fun m!178603 () Bool)

(assert (=> b!177074 m!178603))

(declare-fun m!178605 () Bool)

(assert (=> b!177074 m!178605))

(declare-fun m!178607 () Bool)

(assert (=> b!177074 m!178607))

(declare-fun m!178609 () Bool)

(assert (=> b!177074 m!178609))

(declare-fun m!178611 () Bool)

(assert (=> b!177074 m!178611))

(assert (=> b!177074 m!178601))

(declare-fun m!178613 () Bool)

(assert (=> b!177074 m!178613))

(declare-fun m!178615 () Bool)

(assert (=> b!177074 m!178615))

(assert (=> b!177074 m!178609))

(assert (=> b!177074 m!178605))

(declare-fun m!178617 () Bool)

(assert (=> b!177074 m!178617))

(declare-fun m!178619 () Bool)

(assert (=> b!177074 m!178619))

(assert (=> b!177074 m!178613))

(declare-fun m!178621 () Bool)

(assert (=> b!177074 m!178621))

(assert (=> b!177074 m!178611))

(declare-fun m!178623 () Bool)

(assert (=> b!177074 m!178623))

(declare-fun m!178625 () Bool)

(assert (=> b!177058 m!178625))

(declare-fun m!178627 () Bool)

(assert (=> b!177063 m!178627))

(assert (=> b!177063 m!178627))

(declare-fun m!178629 () Bool)

(assert (=> b!177063 m!178629))

(declare-fun m!178631 () Bool)

(assert (=> b!177066 m!178631))

(declare-fun m!178633 () Bool)

(assert (=> b!177070 m!178633))

(declare-fun m!178635 () Bool)

(assert (=> b!177060 m!178635))

(declare-fun m!178637 () Bool)

(assert (=> b!177069 m!178637))

(declare-fun m!178639 () Bool)

(assert (=> b!177073 m!178639))

(assert (=> b!177073 m!178639))

(declare-fun m!178641 () Bool)

(assert (=> b!177073 m!178641))

(assert (=> b!177073 m!178641))

(declare-fun m!178643 () Bool)

(assert (=> b!177073 m!178643))

(declare-fun m!178645 () Bool)

(assert (=> b!177073 m!178645))

(declare-fun m!178647 () Bool)

(assert (=> b!177068 m!178647))

(declare-fun m!178649 () Bool)

(assert (=> b!177068 m!178649))

(declare-fun m!178651 () Bool)

(assert (=> b!177068 m!178651))

(declare-fun m!178653 () Bool)

(assert (=> b!177068 m!178653))

(declare-fun m!178655 () Bool)

(assert (=> b!177068 m!178655))

(declare-fun m!178657 () Bool)

(assert (=> b!177059 m!178657))

(declare-fun m!178659 () Bool)

(assert (=> b!177050 m!178659))

(assert (=> b!177050 m!178659))

(declare-fun m!178661 () Bool)

(assert (=> b!177050 m!178661))

(declare-fun m!178663 () Bool)

(assert (=> b!177050 m!178663))

(declare-fun m!178665 () Bool)

(assert (=> b!177079 m!178665))

(declare-fun m!178667 () Bool)

(assert (=> b!177064 m!178667))

(declare-fun m!178669 () Bool)

(assert (=> b!177062 m!178669))

(declare-fun m!178671 () Bool)

(assert (=> b!177062 m!178671))

(declare-fun m!178673 () Bool)

(assert (=> b!177062 m!178673))

(declare-fun m!178675 () Bool)

(assert (=> b!177057 m!178675))

(declare-fun m!178677 () Bool)

(assert (=> b!177057 m!178677))

(declare-fun m!178679 () Bool)

(assert (=> b!177067 m!178679))

(assert (=> b!177067 m!178679))

(declare-fun m!178681 () Bool)

(assert (=> b!177067 m!178681))

(declare-fun m!178683 () Bool)

(assert (=> b!177067 m!178683))

(declare-fun m!178685 () Bool)

(assert (=> b!177051 m!178685))

(declare-fun m!178687 () Bool)

(assert (=> b!177051 m!178687))

(declare-fun m!178689 () Bool)

(assert (=> b!177065 m!178689))

(declare-fun m!178691 () Bool)

(assert (=> b!177078 m!178691))

(declare-fun m!178693 () Bool)

(assert (=> b!177052 m!178693))

(declare-fun m!178695 () Bool)

(assert (=> b!177052 m!178695))

(declare-fun m!178697 () Bool)

(assert (=> b!177076 m!178697))

(declare-fun m!178699 () Bool)

(assert (=> b!177049 m!178699))

(declare-fun m!178701 () Bool)

(assert (=> b!177048 m!178701))

(declare-fun m!178703 () Bool)

(assert (=> b!177048 m!178703))

(declare-fun m!178705 () Bool)

(assert (=> b!177053 m!178705))

(declare-fun m!178707 () Bool)

(assert (=> b!177071 m!178707))

(declare-fun m!178709 () Bool)

(assert (=> start!19190 m!178709))

(check-sat (not b!177064) (not b_next!6769) b_and!11997 (not b_next!6771) (not b!177072) (not b!177074) (not b!177060) (not b!177070) (not b!177069) (not b!177088) (not b!177071) (not b!177063) (not b!177065) (not b!177068) b_and!11993 (not b!177057) (not b_next!6777) (not b_next!6775) (not b!177050) b_and!11989 (not b!177073) (not b!177053) b_and!11995 (not start!19190) (not b!177049) (not b!177062) (not b!177066) (not b!177067) (not b!177051) (not b!177078) (not b!177052) b_and!11991 (not b_next!6773) (not b!177079) (not b_next!6779) (not b!177059) (not b!177048) (not b!177058) b_and!11999 (not b!177076))
(check-sat (not b_next!6775) b_and!11989 b_and!11995 (not b_next!6769) b_and!11997 (not b_next!6771) (not b_next!6779) b_and!11993 b_and!11999 (not b_next!6777) b_and!11991 (not b_next!6773))
(get-model)

(declare-fun d!45233 () Bool)

(declare-fun res!79953 () Bool)

(declare-fun e!107464 () Bool)

(assert (=> d!45233 (=> res!79953 e!107464)))

(assert (=> d!45233 (= res!79953 (not ((_ is Cons!2955) rules!1920)))))

(assert (=> d!45233 (= (sepAndNonSepRulesDisjointChars!120 rules!1920 rules!1920) e!107464)))

(declare-fun b!177097 () Bool)

(declare-fun e!107465 () Bool)

(assert (=> b!177097 (= e!107464 e!107465)))

(declare-fun res!79954 () Bool)

(assert (=> b!177097 (=> (not res!79954) (not e!107465))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!43 (Rule!862 List!2965) Bool)

(assert (=> b!177097 (= res!79954 (ruleDisjointCharsFromAllFromOtherType!43 (h!8352 rules!1920) rules!1920))))

(declare-fun b!177098 () Bool)

(assert (=> b!177098 (= e!107465 (sepAndNonSepRulesDisjointChars!120 rules!1920 (t!28011 rules!1920)))))

(assert (= (and d!45233 (not res!79953)) b!177097))

(assert (= (and b!177097 res!79954) b!177098))

(declare-fun m!178711 () Bool)

(assert (=> b!177097 m!178711))

(declare-fun m!178713 () Bool)

(assert (=> b!177098 m!178713))

(assert (=> b!177066 d!45233))

(declare-fun d!45235 () Bool)

(declare-fun list!1086 (Conc!884) List!2964)

(assert (=> d!45235 (= (list!1085 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 lt!57556 separatorToken!170 0)) (list!1086 (c!34963 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 lt!57556 separatorToken!170 0))))))

(declare-fun bs!17691 () Bool)

(assert (= bs!17691 d!45235))

(declare-fun m!178715 () Bool)

(assert (=> bs!17691 m!178715))

(assert (=> b!177067 d!45235))

(declare-fun bs!17693 () Bool)

(declare-fun d!45237 () Bool)

(assert (= bs!17693 (and d!45237 b!177078)))

(declare-fun lambda!5145 () Int)

(assert (=> bs!17693 (= lambda!5145 lambda!5139)))

(declare-fun bs!17694 () Bool)

(assert (= bs!17694 (and d!45237 b!177073)))

(assert (=> bs!17694 (not (= lambda!5145 lambda!5140))))

(declare-fun bs!17695 () Bool)

(declare-fun b!177150 () Bool)

(assert (= bs!17695 (and b!177150 b!177078)))

(declare-fun lambda!5146 () Int)

(assert (=> bs!17695 (not (= lambda!5146 lambda!5139))))

(declare-fun bs!17696 () Bool)

(assert (= bs!17696 (and b!177150 b!177073)))

(assert (=> bs!17696 (= lambda!5146 lambda!5140)))

(declare-fun bs!17697 () Bool)

(assert (= bs!17697 (and b!177150 d!45237)))

(assert (=> bs!17697 (not (= lambda!5146 lambda!5145))))

(declare-fun b!177158 () Bool)

(declare-fun e!107507 () Bool)

(assert (=> b!177158 (= e!107507 true)))

(declare-fun b!177157 () Bool)

(declare-fun e!107506 () Bool)

(assert (=> b!177157 (= e!107506 e!107507)))

(declare-fun b!177156 () Bool)

(declare-fun e!107505 () Bool)

(assert (=> b!177156 (= e!107505 e!107506)))

(assert (=> b!177150 e!107505))

(assert (= b!177157 b!177158))

(assert (= b!177156 b!177157))

(assert (= (and b!177150 ((_ is Cons!2955) rules!1920)) b!177156))

(assert (=> b!177158 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5146))))

(assert (=> b!177158 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5146))))

(assert (=> b!177150 true))

(declare-fun b!177147 () Bool)

(declare-fun e!107502 () Bool)

(declare-fun size!2444 (BalanceConc!1778) Int)

(assert (=> b!177147 (= e!107502 (<= 0 (size!2444 lt!57556)))))

(declare-fun call!7936 () BalanceConc!1776)

(declare-fun call!7937 () BalanceConc!1776)

(declare-fun bm!7928 () Bool)

(declare-fun call!7933 () BalanceConc!1776)

(declare-fun lt!57623 () BalanceConc!1776)

(declare-fun c!34979 () Bool)

(declare-fun ++!691 (BalanceConc!1776 BalanceConc!1776) BalanceConc!1776)

(assert (=> bm!7928 (= call!7933 (++!691 call!7937 (ite c!34979 lt!57623 call!7936)))))

(declare-fun b!177148 () Bool)

(declare-fun e!107500 () BalanceConc!1776)

(assert (=> b!177148 (= e!107500 call!7933)))

(declare-fun b!177149 () Bool)

(declare-fun e!107503 () Bool)

(declare-fun lt!57614 () Option!341)

(declare-fun apply!435 (BalanceConc!1778 Int) Token!806)

(assert (=> b!177149 (= e!107503 (= (_1!1667 (v!13803 lt!57614)) (apply!435 lt!57556 0)))))

(declare-fun e!107504 () BalanceConc!1776)

(assert (=> b!177150 (= e!107504 e!107500)))

(declare-fun lt!57610 () List!2966)

(declare-fun list!1087 (BalanceConc!1778) List!2966)

(assert (=> b!177150 (= lt!57610 (list!1087 lt!57556))))

(declare-fun lt!57612 () Unit!2684)

(declare-fun lemmaDropApply!133 (List!2966 Int) Unit!2684)

(assert (=> b!177150 (= lt!57612 (lemmaDropApply!133 lt!57610 0))))

(declare-fun head!611 (List!2966) Token!806)

(declare-fun drop!146 (List!2966 Int) List!2966)

(declare-fun apply!436 (List!2966 Int) Token!806)

(assert (=> b!177150 (= (head!611 (drop!146 lt!57610 0)) (apply!436 lt!57610 0))))

(declare-fun lt!57613 () Unit!2684)

(assert (=> b!177150 (= lt!57613 lt!57612)))

(declare-fun lt!57615 () List!2966)

(assert (=> b!177150 (= lt!57615 (list!1087 lt!57556))))

(declare-fun lt!57611 () Unit!2684)

(declare-fun lemmaDropTail!125 (List!2966 Int) Unit!2684)

(assert (=> b!177150 (= lt!57611 (lemmaDropTail!125 lt!57615 0))))

(declare-fun tail!351 (List!2966) List!2966)

(assert (=> b!177150 (= (tail!351 (drop!146 lt!57615 0)) (drop!146 lt!57615 (+ 0 1)))))

(declare-fun lt!57619 () Unit!2684)

(assert (=> b!177150 (= lt!57619 lt!57611)))

(declare-fun lt!57620 () Unit!2684)

(assert (=> b!177150 (= lt!57620 (forallContained!98 (list!1087 lt!57556) lambda!5146 (apply!435 lt!57556 0)))))

(assert (=> b!177150 (= lt!57623 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 lt!57556 separatorToken!170 (+ 0 1)))))

(assert (=> b!177150 (= lt!57614 (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (++!691 (charsOf!186 (apply!435 lt!57556 0)) lt!57623)))))

(declare-fun res!79984 () Bool)

(assert (=> b!177150 (= res!79984 ((_ is Some!340) lt!57614))))

(assert (=> b!177150 (=> (not res!79984) (not e!107503))))

(assert (=> b!177150 (= c!34979 e!107503)))

(declare-fun bm!7929 () Bool)

(declare-fun call!7935 () Token!806)

(assert (=> bm!7929 (= call!7935 (apply!435 lt!57556 0))))

(declare-fun call!7934 () Token!806)

(declare-fun c!34978 () Bool)

(declare-fun bm!7930 () Bool)

(assert (=> bm!7930 (= call!7936 (charsOf!186 (ite c!34978 separatorToken!170 call!7934)))))

(declare-fun bm!7931 () Bool)

(assert (=> bm!7931 (= call!7937 (charsOf!186 (ite c!34979 call!7935 call!7934)))))

(declare-fun b!177151 () Bool)

(declare-fun e!107499 () Bool)

(assert (=> b!177151 (= c!34978 e!107499)))

(declare-fun res!79985 () Bool)

(assert (=> b!177151 (=> (not res!79985) (not e!107499))))

(assert (=> b!177151 (= res!79985 ((_ is Some!340) lt!57614))))

(declare-fun e!107501 () BalanceConc!1776)

(assert (=> b!177151 (= e!107500 e!107501)))

(declare-fun lt!57617 () BalanceConc!1776)

(declare-fun dropList!93 (BalanceConc!1778 Int) List!2966)

(assert (=> d!45237 (= (list!1085 lt!57617) (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (dropList!93 lt!57556 0) separatorToken!170))))

(assert (=> d!45237 (= lt!57617 e!107504)))

(declare-fun c!34980 () Bool)

(assert (=> d!45237 (= c!34980 (>= 0 (size!2444 lt!57556)))))

(declare-fun lt!57616 () Unit!2684)

(declare-fun lemmaContentSubsetPreservesForall!37 (List!2966 List!2966 Int) Unit!2684)

(assert (=> d!45237 (= lt!57616 (lemmaContentSubsetPreservesForall!37 (list!1087 lt!57556) (dropList!93 lt!57556 0) lambda!5145))))

(assert (=> d!45237 e!107502))

(declare-fun res!79983 () Bool)

(assert (=> d!45237 (=> (not res!79983) (not e!107502))))

(assert (=> d!45237 (= res!79983 (>= 0 0))))

(assert (=> d!45237 (= (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 lt!57556 separatorToken!170 0) lt!57617)))

(declare-fun b!177152 () Bool)

(assert (=> b!177152 (= e!107504 (BalanceConc!1777 Empty!884))))

(declare-fun b!177153 () Bool)

(assert (=> b!177153 (= e!107501 (++!691 call!7933 lt!57623))))

(declare-fun b!177154 () Bool)

(assert (=> b!177154 (= e!107499 (not (= (_1!1667 (v!13803 lt!57614)) call!7935)))))

(declare-fun bm!7932 () Bool)

(assert (=> bm!7932 (= call!7934 call!7935)))

(declare-fun b!177155 () Bool)

(assert (=> b!177155 (= e!107501 (BalanceConc!1777 Empty!884))))

(assert (=> b!177155 (= (print!148 thiss!17480 (singletonSeq!83 call!7934)) (printTailRec!111 thiss!17480 (singletonSeq!83 call!7934) 0 (BalanceConc!1777 Empty!884)))))

(declare-fun lt!57622 () Unit!2684)

(declare-fun Unit!2686 () Unit!2684)

(assert (=> b!177155 (= lt!57622 Unit!2686)))

(declare-fun lt!57621 () Unit!2684)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!41 (LexerInterface!417 List!2965 List!2964 List!2964) Unit!2684)

(assert (=> b!177155 (= lt!57621 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!41 thiss!17480 rules!1920 (list!1085 call!7936) (list!1085 lt!57623)))))

(assert (=> b!177155 false))

(declare-fun lt!57618 () Unit!2684)

(declare-fun Unit!2687 () Unit!2684)

(assert (=> b!177155 (= lt!57618 Unit!2687)))

(assert (= (and d!45237 res!79983) b!177147))

(assert (= (and d!45237 c!34980) b!177152))

(assert (= (and d!45237 (not c!34980)) b!177150))

(assert (= (and b!177150 res!79984) b!177149))

(assert (= (and b!177150 c!34979) b!177148))

(assert (= (and b!177150 (not c!34979)) b!177151))

(assert (= (and b!177151 res!79985) b!177154))

(assert (= (and b!177151 c!34978) b!177153))

(assert (= (and b!177151 (not c!34978)) b!177155))

(assert (= (or b!177153 b!177155) bm!7932))

(assert (= (or b!177153 b!177155) bm!7930))

(assert (= (or b!177148 b!177154 bm!7932) bm!7929))

(assert (= (or b!177148 b!177153) bm!7931))

(assert (= (or b!177148 b!177153) bm!7928))

(declare-fun m!178755 () Bool)

(assert (=> b!177150 m!178755))

(declare-fun m!178757 () Bool)

(assert (=> b!177150 m!178757))

(assert (=> b!177150 m!178755))

(declare-fun m!178759 () Bool)

(assert (=> b!177150 m!178759))

(declare-fun m!178761 () Bool)

(assert (=> b!177150 m!178761))

(declare-fun m!178763 () Bool)

(assert (=> b!177150 m!178763))

(declare-fun m!178765 () Bool)

(assert (=> b!177150 m!178765))

(declare-fun m!178767 () Bool)

(assert (=> b!177150 m!178767))

(declare-fun m!178769 () Bool)

(assert (=> b!177150 m!178769))

(assert (=> b!177150 m!178761))

(declare-fun m!178771 () Bool)

(assert (=> b!177150 m!178771))

(declare-fun m!178773 () Bool)

(assert (=> b!177150 m!178773))

(declare-fun m!178775 () Bool)

(assert (=> b!177150 m!178775))

(assert (=> b!177150 m!178773))

(assert (=> b!177150 m!178771))

(declare-fun m!178777 () Bool)

(assert (=> b!177150 m!178777))

(declare-fun m!178779 () Bool)

(assert (=> b!177150 m!178779))

(assert (=> b!177150 m!178759))

(assert (=> b!177150 m!178761))

(assert (=> b!177150 m!178777))

(declare-fun m!178781 () Bool)

(assert (=> b!177150 m!178781))

(declare-fun m!178783 () Bool)

(assert (=> b!177150 m!178783))

(declare-fun m!178785 () Bool)

(assert (=> d!45237 m!178785))

(declare-fun m!178787 () Bool)

(assert (=> d!45237 m!178787))

(declare-fun m!178789 () Bool)

(assert (=> d!45237 m!178789))

(assert (=> d!45237 m!178785))

(declare-fun m!178791 () Bool)

(assert (=> d!45237 m!178791))

(assert (=> d!45237 m!178759))

(assert (=> d!45237 m!178785))

(declare-fun m!178793 () Bool)

(assert (=> d!45237 m!178793))

(assert (=> d!45237 m!178759))

(declare-fun m!178795 () Bool)

(assert (=> b!177155 m!178795))

(declare-fun m!178797 () Bool)

(assert (=> b!177155 m!178797))

(declare-fun m!178799 () Bool)

(assert (=> b!177155 m!178799))

(assert (=> b!177155 m!178797))

(declare-fun m!178801 () Bool)

(assert (=> b!177155 m!178801))

(assert (=> b!177155 m!178797))

(declare-fun m!178803 () Bool)

(assert (=> b!177155 m!178803))

(assert (=> b!177155 m!178799))

(assert (=> b!177155 m!178795))

(declare-fun m!178805 () Bool)

(assert (=> b!177155 m!178805))

(declare-fun m!178807 () Bool)

(assert (=> bm!7928 m!178807))

(assert (=> bm!7929 m!178761))

(declare-fun m!178809 () Bool)

(assert (=> b!177153 m!178809))

(declare-fun m!178811 () Bool)

(assert (=> bm!7931 m!178811))

(assert (=> b!177147 m!178791))

(declare-fun m!178813 () Bool)

(assert (=> bm!7930 m!178813))

(assert (=> b!177149 m!178761))

(assert (=> b!177067 d!45237))

(declare-fun bs!17700 () Bool)

(declare-fun b!177219 () Bool)

(assert (= bs!17700 (and b!177219 b!177078)))

(declare-fun lambda!5149 () Int)

(assert (=> bs!17700 (not (= lambda!5149 lambda!5139))))

(declare-fun bs!17701 () Bool)

(assert (= bs!17701 (and b!177219 b!177073)))

(assert (=> bs!17701 (= lambda!5149 lambda!5140)))

(declare-fun bs!17702 () Bool)

(assert (= bs!17702 (and b!177219 d!45237)))

(assert (=> bs!17702 (not (= lambda!5149 lambda!5145))))

(declare-fun bs!17703 () Bool)

(assert (= bs!17703 (and b!177219 b!177150)))

(assert (=> bs!17703 (= lambda!5149 lambda!5146)))

(declare-fun b!177228 () Bool)

(declare-fun e!107552 () Bool)

(assert (=> b!177228 (= e!107552 true)))

(declare-fun b!177227 () Bool)

(declare-fun e!107551 () Bool)

(assert (=> b!177227 (= e!107551 e!107552)))

(declare-fun b!177226 () Bool)

(declare-fun e!107550 () Bool)

(assert (=> b!177226 (= e!107550 e!107551)))

(assert (=> b!177219 e!107550))

(assert (= b!177227 b!177228))

(assert (= b!177226 b!177227))

(assert (= (and b!177219 ((_ is Cons!2955) rules!1920)) b!177226))

(assert (=> b!177228 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5149))))

(assert (=> b!177228 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5149))))

(assert (=> b!177219 true))

(declare-fun b!177218 () Bool)

(declare-fun e!107547 () BalanceConc!1776)

(declare-fun call!7949 () BalanceConc!1776)

(assert (=> b!177218 (= e!107547 call!7949)))

(declare-fun call!7950 () List!2964)

(declare-fun call!7952 () List!2964)

(declare-fun lt!57646 () List!2964)

(declare-fun c!34997 () Bool)

(declare-fun call!7948 () List!2964)

(declare-fun bm!7943 () Bool)

(assert (=> bm!7943 (= call!7952 (++!690 call!7950 (ite c!34997 lt!57646 call!7948)))))

(declare-fun e!107548 () List!2964)

(declare-fun e!107546 () List!2964)

(assert (=> b!177219 (= e!107548 e!107546)))

(declare-fun lt!57648 () Unit!2684)

(assert (=> b!177219 (= lt!57648 (forallContained!98 tokens!465 lambda!5149 (h!8353 tokens!465)))))

(assert (=> b!177219 (= lt!57646 (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (t!28012 tokens!465) separatorToken!170))))

(declare-fun lt!57647 () Option!340)

(assert (=> b!177219 (= lt!57647 (maxPrefix!147 thiss!17480 rules!1920 (++!690 (list!1085 (charsOf!186 (h!8353 tokens!465))) lt!57646)))))

(assert (=> b!177219 (= c!34997 (and ((_ is Some!339) lt!57647) (= (_1!1666 (v!13802 lt!57647)) (h!8353 tokens!465))))))

(declare-fun bm!7944 () Bool)

(declare-fun call!7951 () BalanceConc!1776)

(assert (=> bm!7944 (= call!7951 (charsOf!186 (h!8353 tokens!465)))))

(declare-fun bm!7945 () Bool)

(assert (=> bm!7945 (= call!7949 call!7951)))

(declare-fun b!177220 () Bool)

(declare-fun c!34998 () Bool)

(assert (=> b!177220 (= c!34998 (and ((_ is Some!339) lt!57647) (not (= (_1!1666 (v!13802 lt!57647)) (h!8353 tokens!465)))))))

(declare-fun e!107549 () List!2964)

(assert (=> b!177220 (= e!107546 e!107549)))

(declare-fun b!177221 () Bool)

(assert (=> b!177221 (= e!107549 (++!690 call!7952 lt!57646))))

(declare-fun d!45253 () Bool)

(declare-fun c!34995 () Bool)

(assert (=> d!45253 (= c!34995 ((_ is Cons!2956) tokens!465))))

(assert (=> d!45253 (= (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!107548)))

(declare-fun b!177222 () Bool)

(assert (=> b!177222 (= e!107548 Nil!2954)))

(declare-fun b!177223 () Bool)

(assert (=> b!177223 (= e!107549 Nil!2954)))

(assert (=> b!177223 (= (print!148 thiss!17480 (singletonSeq!83 (h!8353 tokens!465))) (printTailRec!111 thiss!17480 (singletonSeq!83 (h!8353 tokens!465)) 0 (BalanceConc!1777 Empty!884)))))

(declare-fun lt!57649 () Unit!2684)

(declare-fun Unit!2688 () Unit!2684)

(assert (=> b!177223 (= lt!57649 Unit!2688)))

(declare-fun lt!57644 () Unit!2684)

(assert (=> b!177223 (= lt!57644 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!41 thiss!17480 rules!1920 call!7948 lt!57646))))

(assert (=> b!177223 false))

(declare-fun lt!57645 () Unit!2684)

(declare-fun Unit!2689 () Unit!2684)

(assert (=> b!177223 (= lt!57645 Unit!2689)))

(declare-fun bm!7946 () Bool)

(assert (=> bm!7946 (= call!7950 (list!1085 (ite c!34997 call!7951 call!7949)))))

(declare-fun b!177224 () Bool)

(assert (=> b!177224 (= e!107546 call!7952)))

(declare-fun b!177225 () Bool)

(assert (=> b!177225 (= e!107547 (charsOf!186 separatorToken!170))))

(declare-fun bm!7947 () Bool)

(assert (=> bm!7947 (= call!7948 (list!1085 e!107547))))

(declare-fun c!34996 () Bool)

(assert (=> bm!7947 (= c!34996 c!34998)))

(assert (= (and d!45253 c!34995) b!177219))

(assert (= (and d!45253 (not c!34995)) b!177222))

(assert (= (and b!177219 c!34997) b!177224))

(assert (= (and b!177219 (not c!34997)) b!177220))

(assert (= (and b!177220 c!34998) b!177221))

(assert (= (and b!177220 (not c!34998)) b!177223))

(assert (= (or b!177221 b!177223) bm!7945))

(assert (= (or b!177221 b!177223) bm!7947))

(assert (= (and bm!7947 c!34996) b!177225))

(assert (= (and bm!7947 (not c!34996)) b!177218))

(assert (= (or b!177224 bm!7945) bm!7944))

(assert (= (or b!177224 b!177221) bm!7946))

(assert (= (or b!177224 b!177221) bm!7943))

(declare-fun m!178879 () Bool)

(assert (=> b!177221 m!178879))

(assert (=> bm!7944 m!178613))

(assert (=> b!177223 m!178655))

(assert (=> b!177223 m!178655))

(declare-fun m!178881 () Bool)

(assert (=> b!177223 m!178881))

(assert (=> b!177223 m!178655))

(declare-fun m!178883 () Bool)

(assert (=> b!177223 m!178883))

(declare-fun m!178885 () Bool)

(assert (=> b!177223 m!178885))

(declare-fun m!178887 () Bool)

(assert (=> bm!7947 m!178887))

(assert (=> b!177219 m!178621))

(declare-fun m!178889 () Bool)

(assert (=> b!177219 m!178889))

(declare-fun m!178891 () Bool)

(assert (=> b!177219 m!178891))

(assert (=> b!177219 m!178889))

(declare-fun m!178893 () Bool)

(assert (=> b!177219 m!178893))

(assert (=> b!177219 m!178613))

(assert (=> b!177219 m!178621))

(assert (=> b!177219 m!178599))

(assert (=> b!177219 m!178613))

(assert (=> b!177225 m!178605))

(declare-fun m!178895 () Bool)

(assert (=> bm!7943 m!178895))

(declare-fun m!178897 () Bool)

(assert (=> bm!7946 m!178897))

(assert (=> b!177067 d!45253))

(declare-fun d!45275 () Bool)

(declare-fun lt!57665 () BalanceConc!1776)

(declare-fun printListTailRec!61 (LexerInterface!417 List!2966 List!2964) List!2964)

(assert (=> d!45275 (= (list!1085 lt!57665) (printListTailRec!61 thiss!17480 (dropList!93 lt!57563 0) (list!1085 (BalanceConc!1777 Empty!884))))))

(declare-fun e!107557 () BalanceConc!1776)

(assert (=> d!45275 (= lt!57665 e!107557)))

(declare-fun c!35001 () Bool)

(assert (=> d!45275 (= c!35001 (>= 0 (size!2444 lt!57563)))))

(declare-fun e!107558 () Bool)

(assert (=> d!45275 e!107558))

(declare-fun res!80019 () Bool)

(assert (=> d!45275 (=> (not res!80019) (not e!107558))))

(assert (=> d!45275 (= res!80019 (>= 0 0))))

(assert (=> d!45275 (= (printTailRec!111 thiss!17480 lt!57563 0 (BalanceConc!1777 Empty!884)) lt!57665)))

(declare-fun b!177235 () Bool)

(assert (=> b!177235 (= e!107558 (<= 0 (size!2444 lt!57563)))))

(declare-fun b!177236 () Bool)

(assert (=> b!177236 (= e!107557 (BalanceConc!1777 Empty!884))))

(declare-fun b!177237 () Bool)

(assert (=> b!177237 (= e!107557 (printTailRec!111 thiss!17480 lt!57563 (+ 0 1) (++!691 (BalanceConc!1777 Empty!884) (charsOf!186 (apply!435 lt!57563 0)))))))

(declare-fun lt!57666 () List!2966)

(assert (=> b!177237 (= lt!57666 (list!1087 lt!57563))))

(declare-fun lt!57669 () Unit!2684)

(assert (=> b!177237 (= lt!57669 (lemmaDropApply!133 lt!57666 0))))

(assert (=> b!177237 (= (head!611 (drop!146 lt!57666 0)) (apply!436 lt!57666 0))))

(declare-fun lt!57664 () Unit!2684)

(assert (=> b!177237 (= lt!57664 lt!57669)))

(declare-fun lt!57667 () List!2966)

(assert (=> b!177237 (= lt!57667 (list!1087 lt!57563))))

(declare-fun lt!57670 () Unit!2684)

(assert (=> b!177237 (= lt!57670 (lemmaDropTail!125 lt!57667 0))))

(assert (=> b!177237 (= (tail!351 (drop!146 lt!57667 0)) (drop!146 lt!57667 (+ 0 1)))))

(declare-fun lt!57668 () Unit!2684)

(assert (=> b!177237 (= lt!57668 lt!57670)))

(assert (= (and d!45275 res!80019) b!177235))

(assert (= (and d!45275 c!35001) b!177236))

(assert (= (and d!45275 (not c!35001)) b!177237))

(declare-fun m!178899 () Bool)

(assert (=> d!45275 m!178899))

(declare-fun m!178901 () Bool)

(assert (=> d!45275 m!178901))

(declare-fun m!178903 () Bool)

(assert (=> d!45275 m!178903))

(declare-fun m!178905 () Bool)

(assert (=> d!45275 m!178905))

(assert (=> d!45275 m!178901))

(declare-fun m!178907 () Bool)

(assert (=> d!45275 m!178907))

(assert (=> d!45275 m!178903))

(assert (=> b!177235 m!178899))

(declare-fun m!178909 () Bool)

(assert (=> b!177237 m!178909))

(declare-fun m!178911 () Bool)

(assert (=> b!177237 m!178911))

(declare-fun m!178913 () Bool)

(assert (=> b!177237 m!178913))

(declare-fun m!178915 () Bool)

(assert (=> b!177237 m!178915))

(declare-fun m!178917 () Bool)

(assert (=> b!177237 m!178917))

(declare-fun m!178919 () Bool)

(assert (=> b!177237 m!178919))

(declare-fun m!178921 () Bool)

(assert (=> b!177237 m!178921))

(declare-fun m!178923 () Bool)

(assert (=> b!177237 m!178923))

(declare-fun m!178925 () Bool)

(assert (=> b!177237 m!178925))

(assert (=> b!177237 m!178917))

(declare-fun m!178927 () Bool)

(assert (=> b!177237 m!178927))

(declare-fun m!178929 () Bool)

(assert (=> b!177237 m!178929))

(declare-fun m!178931 () Bool)

(assert (=> b!177237 m!178931))

(declare-fun m!178933 () Bool)

(assert (=> b!177237 m!178933))

(assert (=> b!177237 m!178921))

(assert (=> b!177237 m!178929))

(assert (=> b!177237 m!178933))

(assert (=> b!177237 m!178925))

(assert (=> b!177068 d!45275))

(declare-fun d!45277 () Bool)

(declare-fun e!107561 () Bool)

(assert (=> d!45277 e!107561))

(declare-fun res!80022 () Bool)

(assert (=> d!45277 (=> (not res!80022) (not e!107561))))

(declare-fun lt!57673 () BalanceConc!1778)

(assert (=> d!45277 (= res!80022 (= (list!1087 lt!57673) (Cons!2956 (h!8353 tokens!465) Nil!2956)))))

(declare-fun singleton!42 (Token!806) BalanceConc!1778)

(assert (=> d!45277 (= lt!57673 (singleton!42 (h!8353 tokens!465)))))

(assert (=> d!45277 (= (singletonSeq!83 (h!8353 tokens!465)) lt!57673)))

(declare-fun b!177240 () Bool)

(declare-fun isBalanced!247 (Conc!885) Bool)

(assert (=> b!177240 (= e!107561 (isBalanced!247 (c!34965 lt!57673)))))

(assert (= (and d!45277 res!80022) b!177240))

(declare-fun m!178935 () Bool)

(assert (=> d!45277 m!178935))

(declare-fun m!178937 () Bool)

(assert (=> d!45277 m!178937))

(declare-fun m!178939 () Bool)

(assert (=> b!177240 m!178939))

(assert (=> b!177068 d!45277))

(declare-fun d!45279 () Bool)

(declare-fun c!35004 () Bool)

(assert (=> d!45279 (= c!35004 ((_ is Cons!2956) (Cons!2956 (h!8353 tokens!465) Nil!2956)))))

(declare-fun e!107564 () List!2964)

(assert (=> d!45279 (= (printList!101 thiss!17480 (Cons!2956 (h!8353 tokens!465) Nil!2956)) e!107564)))

(declare-fun b!177245 () Bool)

(assert (=> b!177245 (= e!107564 (++!690 (list!1085 (charsOf!186 (h!8353 (Cons!2956 (h!8353 tokens!465) Nil!2956)))) (printList!101 thiss!17480 (t!28012 (Cons!2956 (h!8353 tokens!465) Nil!2956)))))))

(declare-fun b!177246 () Bool)

(assert (=> b!177246 (= e!107564 Nil!2954)))

(assert (= (and d!45279 c!35004) b!177245))

(assert (= (and d!45279 (not c!35004)) b!177246))

(declare-fun m!178941 () Bool)

(assert (=> b!177245 m!178941))

(assert (=> b!177245 m!178941))

(declare-fun m!178943 () Bool)

(assert (=> b!177245 m!178943))

(declare-fun m!178945 () Bool)

(assert (=> b!177245 m!178945))

(assert (=> b!177245 m!178943))

(assert (=> b!177245 m!178945))

(declare-fun m!178947 () Bool)

(assert (=> b!177245 m!178947))

(assert (=> b!177068 d!45279))

(declare-fun d!45281 () Bool)

(declare-fun lt!57676 () BalanceConc!1776)

(assert (=> d!45281 (= (list!1085 lt!57676) (printList!101 thiss!17480 (list!1087 lt!57563)))))

(assert (=> d!45281 (= lt!57676 (printTailRec!111 thiss!17480 lt!57563 0 (BalanceConc!1777 Empty!884)))))

(assert (=> d!45281 (= (print!148 thiss!17480 lt!57563) lt!57676)))

(declare-fun bs!17704 () Bool)

(assert (= bs!17704 d!45281))

(declare-fun m!178949 () Bool)

(assert (=> bs!17704 m!178949))

(assert (=> bs!17704 m!178927))

(assert (=> bs!17704 m!178927))

(declare-fun m!178951 () Bool)

(assert (=> bs!17704 m!178951))

(assert (=> bs!17704 m!178649))

(assert (=> b!177068 d!45281))

(declare-fun d!45283 () Bool)

(assert (=> d!45283 (= (list!1085 lt!57561) (list!1086 (c!34963 lt!57561)))))

(declare-fun bs!17705 () Bool)

(assert (= bs!17705 d!45283))

(declare-fun m!178953 () Bool)

(assert (=> bs!17705 m!178953))

(assert (=> b!177068 d!45283))

(declare-fun b!177275 () Bool)

(declare-fun e!107582 () Bool)

(declare-fun head!612 (List!2964) C!2432)

(assert (=> b!177275 (= e!107582 (= (head!612 lt!57570) (c!34964 (regex!531 (rule!1046 (h!8353 tokens!465))))))))

(declare-fun d!45285 () Bool)

(declare-fun e!107583 () Bool)

(assert (=> d!45285 e!107583))

(declare-fun c!35011 () Bool)

(assert (=> d!45285 (= c!35011 ((_ is EmptyExpr!755) (regex!531 (rule!1046 (h!8353 tokens!465)))))))

(declare-fun lt!57679 () Bool)

(declare-fun e!107579 () Bool)

(assert (=> d!45285 (= lt!57679 e!107579)))

(declare-fun c!35012 () Bool)

(assert (=> d!45285 (= c!35012 (isEmpty!1296 lt!57570))))

(declare-fun validRegex!184 (Regex!755) Bool)

(assert (=> d!45285 (validRegex!184 (regex!531 (rule!1046 (h!8353 tokens!465))))))

(assert (=> d!45285 (= (matchR!93 (regex!531 (rule!1046 (h!8353 tokens!465))) lt!57570) lt!57679)))

(declare-fun b!177276 () Bool)

(declare-fun res!80046 () Bool)

(assert (=> b!177276 (=> (not res!80046) (not e!107582))))

(declare-fun call!7955 () Bool)

(assert (=> b!177276 (= res!80046 (not call!7955))))

(declare-fun b!177277 () Bool)

(declare-fun res!80042 () Bool)

(declare-fun e!107585 () Bool)

(assert (=> b!177277 (=> res!80042 e!107585)))

(assert (=> b!177277 (= res!80042 e!107582)))

(declare-fun res!80041 () Bool)

(assert (=> b!177277 (=> (not res!80041) (not e!107582))))

(assert (=> b!177277 (= res!80041 lt!57679)))

(declare-fun b!177278 () Bool)

(declare-fun e!107580 () Bool)

(assert (=> b!177278 (= e!107583 e!107580)))

(declare-fun c!35013 () Bool)

(assert (=> b!177278 (= c!35013 ((_ is EmptyLang!755) (regex!531 (rule!1046 (h!8353 tokens!465)))))))

(declare-fun bm!7950 () Bool)

(assert (=> bm!7950 (= call!7955 (isEmpty!1296 lt!57570))))

(declare-fun b!177279 () Bool)

(declare-fun e!107584 () Bool)

(assert (=> b!177279 (= e!107584 (not (= (head!612 lt!57570) (c!34964 (regex!531 (rule!1046 (h!8353 tokens!465)))))))))

(declare-fun b!177280 () Bool)

(declare-fun nullable!111 (Regex!755) Bool)

(assert (=> b!177280 (= e!107579 (nullable!111 (regex!531 (rule!1046 (h!8353 tokens!465)))))))

(declare-fun b!177281 () Bool)

(declare-fun res!80045 () Bool)

(assert (=> b!177281 (=> res!80045 e!107585)))

(assert (=> b!177281 (= res!80045 (not ((_ is ElementMatch!755) (regex!531 (rule!1046 (h!8353 tokens!465))))))))

(assert (=> b!177281 (= e!107580 e!107585)))

(declare-fun b!177282 () Bool)

(assert (=> b!177282 (= e!107583 (= lt!57679 call!7955))))

(declare-fun b!177283 () Bool)

(declare-fun e!107581 () Bool)

(assert (=> b!177283 (= e!107585 e!107581)))

(declare-fun res!80043 () Bool)

(assert (=> b!177283 (=> (not res!80043) (not e!107581))))

(assert (=> b!177283 (= res!80043 (not lt!57679))))

(declare-fun b!177284 () Bool)

(declare-fun res!80044 () Bool)

(assert (=> b!177284 (=> (not res!80044) (not e!107582))))

(declare-fun tail!352 (List!2964) List!2964)

(assert (=> b!177284 (= res!80044 (isEmpty!1296 (tail!352 lt!57570)))))

(declare-fun b!177285 () Bool)

(assert (=> b!177285 (= e!107580 (not lt!57679))))

(declare-fun b!177286 () Bool)

(assert (=> b!177286 (= e!107581 e!107584)))

(declare-fun res!80039 () Bool)

(assert (=> b!177286 (=> res!80039 e!107584)))

(assert (=> b!177286 (= res!80039 call!7955)))

(declare-fun b!177287 () Bool)

(declare-fun derivativeStep!77 (Regex!755 C!2432) Regex!755)

(assert (=> b!177287 (= e!107579 (matchR!93 (derivativeStep!77 (regex!531 (rule!1046 (h!8353 tokens!465))) (head!612 lt!57570)) (tail!352 lt!57570)))))

(declare-fun b!177288 () Bool)

(declare-fun res!80040 () Bool)

(assert (=> b!177288 (=> res!80040 e!107584)))

(assert (=> b!177288 (= res!80040 (not (isEmpty!1296 (tail!352 lt!57570))))))

(assert (= (and d!45285 c!35012) b!177280))

(assert (= (and d!45285 (not c!35012)) b!177287))

(assert (= (and d!45285 c!35011) b!177282))

(assert (= (and d!45285 (not c!35011)) b!177278))

(assert (= (and b!177278 c!35013) b!177285))

(assert (= (and b!177278 (not c!35013)) b!177281))

(assert (= (and b!177281 (not res!80045)) b!177277))

(assert (= (and b!177277 res!80041) b!177276))

(assert (= (and b!177276 res!80046) b!177284))

(assert (= (and b!177284 res!80044) b!177275))

(assert (= (and b!177277 (not res!80042)) b!177283))

(assert (= (and b!177283 res!80043) b!177286))

(assert (= (and b!177286 (not res!80039)) b!177288))

(assert (= (and b!177288 (not res!80040)) b!177279))

(assert (= (or b!177282 b!177276 b!177286) bm!7950))

(declare-fun m!178955 () Bool)

(assert (=> b!177288 m!178955))

(assert (=> b!177288 m!178955))

(declare-fun m!178957 () Bool)

(assert (=> b!177288 m!178957))

(declare-fun m!178959 () Bool)

(assert (=> d!45285 m!178959))

(declare-fun m!178961 () Bool)

(assert (=> d!45285 m!178961))

(declare-fun m!178963 () Bool)

(assert (=> b!177279 m!178963))

(assert (=> b!177284 m!178955))

(assert (=> b!177284 m!178955))

(assert (=> b!177284 m!178957))

(assert (=> b!177287 m!178963))

(assert (=> b!177287 m!178963))

(declare-fun m!178965 () Bool)

(assert (=> b!177287 m!178965))

(assert (=> b!177287 m!178955))

(assert (=> b!177287 m!178965))

(assert (=> b!177287 m!178955))

(declare-fun m!178967 () Bool)

(assert (=> b!177287 m!178967))

(assert (=> bm!7950 m!178959))

(declare-fun m!178969 () Bool)

(assert (=> b!177280 m!178969))

(assert (=> b!177275 m!178963))

(assert (=> b!177064 d!45285))

(declare-fun d!45287 () Bool)

(declare-fun res!80051 () Bool)

(declare-fun e!107588 () Bool)

(assert (=> d!45287 (=> (not res!80051) (not e!107588))))

(assert (=> d!45287 (= res!80051 (not (isEmpty!1296 (originalCharacters!574 (h!8353 tokens!465)))))))

(assert (=> d!45287 (= (inv!3792 (h!8353 tokens!465)) e!107588)))

(declare-fun b!177293 () Bool)

(declare-fun res!80052 () Bool)

(assert (=> b!177293 (=> (not res!80052) (not e!107588))))

(declare-fun dynLambda!1154 (Int TokenValue!553) BalanceConc!1776)

(assert (=> b!177293 (= res!80052 (= (originalCharacters!574 (h!8353 tokens!465)) (list!1085 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (value!19449 (h!8353 tokens!465))))))))

(declare-fun b!177294 () Bool)

(declare-fun size!2448 (List!2964) Int)

(assert (=> b!177294 (= e!107588 (= (size!2443 (h!8353 tokens!465)) (size!2448 (originalCharacters!574 (h!8353 tokens!465)))))))

(assert (= (and d!45287 res!80051) b!177293))

(assert (= (and b!177293 res!80052) b!177294))

(declare-fun b_lambda!4209 () Bool)

(assert (=> (not b_lambda!4209) (not b!177293)))

(declare-fun t!28022 () Bool)

(declare-fun tb!7457 () Bool)

(assert (=> (and b!177061 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465))))) t!28022) tb!7457))

(declare-fun b!177299 () Bool)

(declare-fun e!107591 () Bool)

(declare-fun tp!85406 () Bool)

(declare-fun inv!3793 (Conc!884) Bool)

(assert (=> b!177299 (= e!107591 (and (inv!3793 (c!34963 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (value!19449 (h!8353 tokens!465))))) tp!85406))))

(declare-fun result!10216 () Bool)

(declare-fun inv!3794 (BalanceConc!1776) Bool)

(assert (=> tb!7457 (= result!10216 (and (inv!3794 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (value!19449 (h!8353 tokens!465)))) e!107591))))

(assert (= tb!7457 b!177299))

(declare-fun m!178971 () Bool)

(assert (=> b!177299 m!178971))

(declare-fun m!178973 () Bool)

(assert (=> tb!7457 m!178973))

(assert (=> b!177293 t!28022))

(declare-fun b_and!12001 () Bool)

(assert (= b_and!11991 (and (=> t!28022 result!10216) b_and!12001)))

(declare-fun tb!7459 () Bool)

(declare-fun t!28024 () Bool)

(assert (=> (and b!177077 (= (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465))))) t!28024) tb!7459))

(declare-fun result!10220 () Bool)

(assert (= result!10220 result!10216))

(assert (=> b!177293 t!28024))

(declare-fun b_and!12003 () Bool)

(assert (= b_and!11995 (and (=> t!28024 result!10220) b_and!12003)))

(declare-fun tb!7461 () Bool)

(declare-fun t!28026 () Bool)

(assert (=> (and b!177054 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465))))) t!28026) tb!7461))

(declare-fun result!10222 () Bool)

(assert (= result!10222 result!10216))

(assert (=> b!177293 t!28026))

(declare-fun b_and!12005 () Bool)

(assert (= b_and!11999 (and (=> t!28026 result!10222) b_and!12005)))

(declare-fun m!178975 () Bool)

(assert (=> d!45287 m!178975))

(declare-fun m!178977 () Bool)

(assert (=> b!177293 m!178977))

(assert (=> b!177293 m!178977))

(declare-fun m!178979 () Bool)

(assert (=> b!177293 m!178979))

(declare-fun m!178981 () Bool)

(assert (=> b!177294 m!178981))

(assert (=> b!177065 d!45287))

(declare-fun d!45289 () Bool)

(assert (=> d!45289 (= (get!821 lt!57571) (v!13802 lt!57571))))

(assert (=> b!177062 d!45289))

(declare-fun d!45291 () Bool)

(declare-fun isEmpty!1300 (Option!340) Bool)

(assert (=> d!45291 (= (isDefined!191 lt!57571) (not (isEmpty!1300 lt!57571)))))

(declare-fun bs!17706 () Bool)

(assert (= bs!17706 d!45291))

(declare-fun m!178983 () Bool)

(assert (=> bs!17706 m!178983))

(assert (=> b!177062 d!45291))

(declare-fun d!45293 () Bool)

(declare-fun e!107604 () Bool)

(assert (=> d!45293 e!107604))

(declare-fun res!80075 () Bool)

(assert (=> d!45293 (=> res!80075 e!107604)))

(declare-fun lt!57710 () Option!340)

(assert (=> d!45293 (= res!80075 (isEmpty!1300 lt!57710))))

(declare-fun e!107602 () Option!340)

(assert (=> d!45293 (= lt!57710 e!107602)))

(declare-fun c!35018 () Bool)

(assert (=> d!45293 (= c!35018 (and ((_ is Cons!2955) rules!1920) ((_ is Nil!2955) (t!28011 rules!1920))))))

(declare-fun lt!57711 () Unit!2684)

(declare-fun lt!57712 () Unit!2684)

(assert (=> d!45293 (= lt!57711 lt!57712)))

(declare-fun isPrefix!234 (List!2964 List!2964) Bool)

(assert (=> d!45293 (isPrefix!234 lt!57570 lt!57570)))

(declare-fun lemmaIsPrefixRefl!142 (List!2964 List!2964) Unit!2684)

(assert (=> d!45293 (= lt!57712 (lemmaIsPrefixRefl!142 lt!57570 lt!57570))))

(declare-fun rulesValidInductive!127 (LexerInterface!417 List!2965) Bool)

(assert (=> d!45293 (rulesValidInductive!127 thiss!17480 rules!1920)))

(assert (=> d!45293 (= (maxPrefix!147 thiss!17480 rules!1920 lt!57570) lt!57710)))

(declare-fun b!177324 () Bool)

(declare-fun e!107603 () Bool)

(assert (=> b!177324 (= e!107604 e!107603)))

(declare-fun res!80073 () Bool)

(assert (=> b!177324 (=> (not res!80073) (not e!107603))))

(assert (=> b!177324 (= res!80073 (isDefined!191 lt!57710))))

(declare-fun b!177325 () Bool)

(declare-fun res!80070 () Bool)

(assert (=> b!177325 (=> (not res!80070) (not e!107603))))

(assert (=> b!177325 (= res!80070 (matchR!93 (regex!531 (rule!1046 (_1!1666 (get!821 lt!57710)))) (list!1085 (charsOf!186 (_1!1666 (get!821 lt!57710))))))))

(declare-fun bm!7953 () Bool)

(declare-fun call!7958 () Option!340)

(declare-fun maxPrefixOneRule!76 (LexerInterface!417 Rule!862 List!2964) Option!340)

(assert (=> bm!7953 (= call!7958 (maxPrefixOneRule!76 thiss!17480 (h!8352 rules!1920) lt!57570))))

(declare-fun b!177326 () Bool)

(declare-fun res!80074 () Bool)

(assert (=> b!177326 (=> (not res!80074) (not e!107603))))

(assert (=> b!177326 (= res!80074 (= (list!1085 (charsOf!186 (_1!1666 (get!821 lt!57710)))) (originalCharacters!574 (_1!1666 (get!821 lt!57710)))))))

(declare-fun b!177327 () Bool)

(declare-fun lt!57708 () Option!340)

(declare-fun lt!57709 () Option!340)

(assert (=> b!177327 (= e!107602 (ite (and ((_ is None!339) lt!57708) ((_ is None!339) lt!57709)) None!339 (ite ((_ is None!339) lt!57709) lt!57708 (ite ((_ is None!339) lt!57708) lt!57709 (ite (>= (size!2443 (_1!1666 (v!13802 lt!57708))) (size!2443 (_1!1666 (v!13802 lt!57709)))) lt!57708 lt!57709)))))))

(assert (=> b!177327 (= lt!57708 call!7958)))

(assert (=> b!177327 (= lt!57709 (maxPrefix!147 thiss!17480 (t!28011 rules!1920) lt!57570))))

(declare-fun b!177328 () Bool)

(declare-fun res!80069 () Bool)

(assert (=> b!177328 (=> (not res!80069) (not e!107603))))

(assert (=> b!177328 (= res!80069 (= (++!690 (list!1085 (charsOf!186 (_1!1666 (get!821 lt!57710)))) (_2!1666 (get!821 lt!57710))) lt!57570))))

(declare-fun b!177329 () Bool)

(assert (=> b!177329 (= e!107602 call!7958)))

(declare-fun b!177330 () Bool)

(declare-fun res!80071 () Bool)

(assert (=> b!177330 (=> (not res!80071) (not e!107603))))

(declare-fun apply!438 (TokenValueInjection!878 BalanceConc!1776) TokenValue!553)

(assert (=> b!177330 (= res!80071 (= (value!19449 (_1!1666 (get!821 lt!57710))) (apply!438 (transformation!531 (rule!1046 (_1!1666 (get!821 lt!57710)))) (seqFromList!439 (originalCharacters!574 (_1!1666 (get!821 lt!57710)))))))))

(declare-fun b!177331 () Bool)

(declare-fun res!80072 () Bool)

(assert (=> b!177331 (=> (not res!80072) (not e!107603))))

(assert (=> b!177331 (= res!80072 (< (size!2448 (_2!1666 (get!821 lt!57710))) (size!2448 lt!57570)))))

(declare-fun b!177332 () Bool)

(declare-fun contains!479 (List!2965 Rule!862) Bool)

(assert (=> b!177332 (= e!107603 (contains!479 rules!1920 (rule!1046 (_1!1666 (get!821 lt!57710)))))))

(assert (= (and d!45293 c!35018) b!177329))

(assert (= (and d!45293 (not c!35018)) b!177327))

(assert (= (or b!177329 b!177327) bm!7953))

(assert (= (and d!45293 (not res!80075)) b!177324))

(assert (= (and b!177324 res!80073) b!177326))

(assert (= (and b!177326 res!80074) b!177331))

(assert (= (and b!177331 res!80072) b!177328))

(assert (= (and b!177328 res!80069) b!177330))

(assert (= (and b!177330 res!80071) b!177325))

(assert (= (and b!177325 res!80070) b!177332))

(declare-fun m!178985 () Bool)

(assert (=> b!177331 m!178985))

(declare-fun m!178987 () Bool)

(assert (=> b!177331 m!178987))

(declare-fun m!178989 () Bool)

(assert (=> b!177331 m!178989))

(declare-fun m!178991 () Bool)

(assert (=> bm!7953 m!178991))

(assert (=> b!177326 m!178985))

(declare-fun m!178993 () Bool)

(assert (=> b!177326 m!178993))

(assert (=> b!177326 m!178993))

(declare-fun m!178995 () Bool)

(assert (=> b!177326 m!178995))

(declare-fun m!178997 () Bool)

(assert (=> b!177327 m!178997))

(assert (=> b!177332 m!178985))

(declare-fun m!178999 () Bool)

(assert (=> b!177332 m!178999))

(assert (=> b!177328 m!178985))

(assert (=> b!177328 m!178993))

(assert (=> b!177328 m!178993))

(assert (=> b!177328 m!178995))

(assert (=> b!177328 m!178995))

(declare-fun m!179001 () Bool)

(assert (=> b!177328 m!179001))

(declare-fun m!179003 () Bool)

(assert (=> d!45293 m!179003))

(declare-fun m!179005 () Bool)

(assert (=> d!45293 m!179005))

(declare-fun m!179007 () Bool)

(assert (=> d!45293 m!179007))

(declare-fun m!179009 () Bool)

(assert (=> d!45293 m!179009))

(assert (=> b!177325 m!178985))

(assert (=> b!177325 m!178993))

(assert (=> b!177325 m!178993))

(assert (=> b!177325 m!178995))

(assert (=> b!177325 m!178995))

(declare-fun m!179011 () Bool)

(assert (=> b!177325 m!179011))

(declare-fun m!179013 () Bool)

(assert (=> b!177324 m!179013))

(assert (=> b!177330 m!178985))

(declare-fun m!179015 () Bool)

(assert (=> b!177330 m!179015))

(assert (=> b!177330 m!179015))

(declare-fun m!179017 () Bool)

(assert (=> b!177330 m!179017))

(assert (=> b!177062 d!45293))

(declare-fun d!45295 () Bool)

(assert (=> d!45295 (= (list!1085 (seqFromList!439 lt!57566)) (list!1086 (c!34963 (seqFromList!439 lt!57566))))))

(declare-fun bs!17707 () Bool)

(assert (= bs!17707 d!45295))

(declare-fun m!179019 () Bool)

(assert (=> bs!17707 m!179019))

(assert (=> b!177063 d!45295))

(declare-fun d!45297 () Bool)

(declare-fun fromListB!175 (List!2964) BalanceConc!1776)

(assert (=> d!45297 (= (seqFromList!439 lt!57566) (fromListB!175 lt!57566))))

(declare-fun bs!17708 () Bool)

(assert (= bs!17708 d!45297))

(declare-fun m!179021 () Bool)

(assert (=> bs!17708 m!179021))

(assert (=> b!177063 d!45297))

(declare-fun d!45299 () Bool)

(assert (=> d!45299 (= (isEmpty!1295 rules!1920) ((_ is Nil!2955) rules!1920))))

(assert (=> b!177058 d!45299))

(declare-fun b!177360 () Bool)

(declare-fun e!107620 () Bool)

(declare-fun lt!57725 () List!2964)

(assert (=> b!177360 (= e!107620 (or (not (= lt!57568 Nil!2954)) (= lt!57725 lt!57570)))))

(declare-fun b!177359 () Bool)

(declare-fun res!80084 () Bool)

(assert (=> b!177359 (=> (not res!80084) (not e!107620))))

(assert (=> b!177359 (= res!80084 (= (size!2448 lt!57725) (+ (size!2448 lt!57570) (size!2448 lt!57568))))))

(declare-fun d!45301 () Bool)

(assert (=> d!45301 e!107620))

(declare-fun res!80085 () Bool)

(assert (=> d!45301 (=> (not res!80085) (not e!107620))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!413 (List!2964) (InoxSet C!2432))

(assert (=> d!45301 (= res!80085 (= (content!413 lt!57725) ((_ map or) (content!413 lt!57570) (content!413 lt!57568))))))

(declare-fun e!107619 () List!2964)

(assert (=> d!45301 (= lt!57725 e!107619)))

(declare-fun c!35027 () Bool)

(assert (=> d!45301 (= c!35027 ((_ is Nil!2954) lt!57570))))

(assert (=> d!45301 (= (++!690 lt!57570 lt!57568) lt!57725)))

(declare-fun b!177357 () Bool)

(assert (=> b!177357 (= e!107619 lt!57568)))

(declare-fun b!177358 () Bool)

(assert (=> b!177358 (= e!107619 (Cons!2954 (h!8351 lt!57570) (++!690 (t!28010 lt!57570) lt!57568)))))

(assert (= (and d!45301 c!35027) b!177357))

(assert (= (and d!45301 (not c!35027)) b!177358))

(assert (= (and d!45301 res!80085) b!177359))

(assert (= (and b!177359 res!80084) b!177360))

(declare-fun m!179023 () Bool)

(assert (=> b!177359 m!179023))

(assert (=> b!177359 m!178989))

(declare-fun m!179025 () Bool)

(assert (=> b!177359 m!179025))

(declare-fun m!179027 () Bool)

(assert (=> d!45301 m!179027))

(declare-fun m!179029 () Bool)

(assert (=> d!45301 m!179029))

(declare-fun m!179031 () Bool)

(assert (=> d!45301 m!179031))

(declare-fun m!179033 () Bool)

(assert (=> b!177358 m!179033))

(assert (=> b!177059 d!45301))

(declare-fun d!45303 () Bool)

(declare-fun res!80088 () Bool)

(declare-fun e!107623 () Bool)

(assert (=> d!45303 (=> (not res!80088) (not e!107623))))

(declare-fun rulesValid!151 (LexerInterface!417 List!2965) Bool)

(assert (=> d!45303 (= res!80088 (rulesValid!151 thiss!17480 rules!1920))))

(assert (=> d!45303 (= (rulesInvariant!383 thiss!17480 rules!1920) e!107623)))

(declare-fun b!177363 () Bool)

(declare-datatypes ((List!2968 0))(
  ( (Nil!2958) (Cons!2958 (h!8355 String!3845) (t!28082 List!2968)) )
))
(declare-fun noDuplicateTag!151 (LexerInterface!417 List!2965 List!2968) Bool)

(assert (=> b!177363 (= e!107623 (noDuplicateTag!151 thiss!17480 rules!1920 Nil!2958))))

(assert (= (and d!45303 res!80088) b!177363))

(declare-fun m!179035 () Bool)

(assert (=> d!45303 m!179035))

(declare-fun m!179037 () Bool)

(assert (=> b!177363 m!179037))

(assert (=> b!177060 d!45303))

(declare-fun d!45305 () Bool)

(declare-fun res!80096 () Bool)

(declare-fun e!107638 () Bool)

(assert (=> d!45305 (=> res!80096 e!107638)))

(assert (=> d!45305 (= res!80096 ((_ is Nil!2956) tokens!465))))

(assert (=> d!45305 (= (forall!593 tokens!465 lambda!5139) e!107638)))

(declare-fun b!177382 () Bool)

(declare-fun e!107639 () Bool)

(assert (=> b!177382 (= e!107638 e!107639)))

(declare-fun res!80097 () Bool)

(assert (=> b!177382 (=> (not res!80097) (not e!107639))))

(declare-fun dynLambda!1156 (Int Token!806) Bool)

(assert (=> b!177382 (= res!80097 (dynLambda!1156 lambda!5139 (h!8353 tokens!465)))))

(declare-fun b!177383 () Bool)

(assert (=> b!177383 (= e!107639 (forall!593 (t!28012 tokens!465) lambda!5139))))

(assert (= (and d!45305 (not res!80096)) b!177382))

(assert (= (and b!177382 res!80097) b!177383))

(declare-fun b_lambda!4211 () Bool)

(assert (=> (not b_lambda!4211) (not b!177382)))

(declare-fun m!179039 () Bool)

(assert (=> b!177382 m!179039))

(assert (=> b!177383 m!178665))

(assert (=> b!177078 d!45305))

(declare-fun d!45307 () Bool)

(assert (=> d!45307 (= (inv!3788 (tag!709 (h!8352 rules!1920))) (= (mod (str.len (value!19448 (tag!709 (h!8352 rules!1920)))) 2) 0))))

(assert (=> b!177057 d!45307))

(declare-fun d!45309 () Bool)

(declare-fun res!80100 () Bool)

(declare-fun e!107642 () Bool)

(assert (=> d!45309 (=> (not res!80100) (not e!107642))))

(declare-fun semiInverseModEq!185 (Int Int) Bool)

(assert (=> d!45309 (= res!80100 (semiInverseModEq!185 (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toValue!1202 (transformation!531 (h!8352 rules!1920)))))))

(assert (=> d!45309 (= (inv!3791 (transformation!531 (h!8352 rules!1920))) e!107642)))

(declare-fun b!177386 () Bool)

(declare-fun equivClasses!168 (Int Int) Bool)

(assert (=> b!177386 (= e!107642 (equivClasses!168 (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toValue!1202 (transformation!531 (h!8352 rules!1920)))))))

(assert (= (and d!45309 res!80100) b!177386))

(declare-fun m!179101 () Bool)

(assert (=> d!45309 m!179101))

(declare-fun m!179103 () Bool)

(assert (=> b!177386 m!179103))

(assert (=> b!177057 d!45309))

(declare-fun d!45313 () Bool)

(declare-fun res!80101 () Bool)

(declare-fun e!107643 () Bool)

(assert (=> d!45313 (=> res!80101 e!107643)))

(assert (=> d!45313 (= res!80101 ((_ is Nil!2956) (t!28012 tokens!465)))))

(assert (=> d!45313 (= (forall!593 (t!28012 tokens!465) lambda!5139) e!107643)))

(declare-fun b!177387 () Bool)

(declare-fun e!107644 () Bool)

(assert (=> b!177387 (= e!107643 e!107644)))

(declare-fun res!80102 () Bool)

(assert (=> b!177387 (=> (not res!80102) (not e!107644))))

(assert (=> b!177387 (= res!80102 (dynLambda!1156 lambda!5139 (h!8353 (t!28012 tokens!465))))))

(declare-fun b!177388 () Bool)

(assert (=> b!177388 (= e!107644 (forall!593 (t!28012 (t!28012 tokens!465)) lambda!5139))))

(assert (= (and d!45313 (not res!80101)) b!177387))

(assert (= (and b!177387 res!80102) b!177388))

(declare-fun b_lambda!4213 () Bool)

(assert (=> (not b_lambda!4213) (not b!177387)))

(declare-fun m!179105 () Bool)

(assert (=> b!177387 m!179105))

(declare-fun m!179107 () Bool)

(assert (=> b!177388 m!179107))

(assert (=> b!177079 d!45313))

(declare-fun lt!57740 () List!2964)

(declare-fun e!107646 () Bool)

(declare-fun b!177392 () Bool)

(assert (=> b!177392 (= e!107646 (or (not (= lt!57572 Nil!2954)) (= lt!57740 lt!57570)))))

(declare-fun b!177391 () Bool)

(declare-fun res!80103 () Bool)

(assert (=> b!177391 (=> (not res!80103) (not e!107646))))

(assert (=> b!177391 (= res!80103 (= (size!2448 lt!57740) (+ (size!2448 lt!57570) (size!2448 lt!57572))))))

(declare-fun d!45315 () Bool)

(assert (=> d!45315 e!107646))

(declare-fun res!80104 () Bool)

(assert (=> d!45315 (=> (not res!80104) (not e!107646))))

(assert (=> d!45315 (= res!80104 (= (content!413 lt!57740) ((_ map or) (content!413 lt!57570) (content!413 lt!57572))))))

(declare-fun e!107645 () List!2964)

(assert (=> d!45315 (= lt!57740 e!107645)))

(declare-fun c!35032 () Bool)

(assert (=> d!45315 (= c!35032 ((_ is Nil!2954) lt!57570))))

(assert (=> d!45315 (= (++!690 lt!57570 lt!57572) lt!57740)))

(declare-fun b!177389 () Bool)

(assert (=> b!177389 (= e!107645 lt!57572)))

(declare-fun b!177390 () Bool)

(assert (=> b!177390 (= e!107645 (Cons!2954 (h!8351 lt!57570) (++!690 (t!28010 lt!57570) lt!57572)))))

(assert (= (and d!45315 c!35032) b!177389))

(assert (= (and d!45315 (not c!35032)) b!177390))

(assert (= (and d!45315 res!80104) b!177391))

(assert (= (and b!177391 res!80103) b!177392))

(declare-fun m!179109 () Bool)

(assert (=> b!177391 m!179109))

(assert (=> b!177391 m!178989))

(declare-fun m!179111 () Bool)

(assert (=> b!177391 m!179111))

(declare-fun m!179113 () Bool)

(assert (=> d!45315 m!179113))

(assert (=> d!45315 m!179029))

(declare-fun m!179115 () Bool)

(assert (=> d!45315 m!179115))

(declare-fun m!179117 () Bool)

(assert (=> b!177390 m!179117))

(assert (=> b!177074 d!45315))

(declare-fun d!45317 () Bool)

(declare-fun fromListB!176 (List!2966) BalanceConc!1778)

(assert (=> d!45317 (= (seqFromList!440 (t!28012 tokens!465)) (fromListB!176 (t!28012 tokens!465)))))

(declare-fun bs!17714 () Bool)

(assert (= bs!17714 d!45317))

(declare-fun m!179119 () Bool)

(assert (=> bs!17714 m!179119))

(assert (=> b!177074 d!45317))

(declare-fun lt!57741 () List!2964)

(declare-fun e!107648 () Bool)

(declare-fun b!177396 () Bool)

(assert (=> b!177396 (= e!107648 (or (not (= lt!57565 Nil!2954)) (= lt!57741 lt!57570)))))

(declare-fun b!177395 () Bool)

(declare-fun res!80105 () Bool)

(assert (=> b!177395 (=> (not res!80105) (not e!107648))))

(assert (=> b!177395 (= res!80105 (= (size!2448 lt!57741) (+ (size!2448 lt!57570) (size!2448 lt!57565))))))

(declare-fun d!45319 () Bool)

(assert (=> d!45319 e!107648))

(declare-fun res!80106 () Bool)

(assert (=> d!45319 (=> (not res!80106) (not e!107648))))

(assert (=> d!45319 (= res!80106 (= (content!413 lt!57741) ((_ map or) (content!413 lt!57570) (content!413 lt!57565))))))

(declare-fun e!107647 () List!2964)

(assert (=> d!45319 (= lt!57741 e!107647)))

(declare-fun c!35033 () Bool)

(assert (=> d!45319 (= c!35033 ((_ is Nil!2954) lt!57570))))

(assert (=> d!45319 (= (++!690 lt!57570 lt!57565) lt!57741)))

(declare-fun b!177393 () Bool)

(assert (=> b!177393 (= e!107647 lt!57565)))

(declare-fun b!177394 () Bool)

(assert (=> b!177394 (= e!107647 (Cons!2954 (h!8351 lt!57570) (++!690 (t!28010 lt!57570) lt!57565)))))

(assert (= (and d!45319 c!35033) b!177393))

(assert (= (and d!45319 (not c!35033)) b!177394))

(assert (= (and d!45319 res!80106) b!177395))

(assert (= (and b!177395 res!80105) b!177396))

(declare-fun m!179121 () Bool)

(assert (=> b!177395 m!179121))

(assert (=> b!177395 m!178989))

(declare-fun m!179123 () Bool)

(assert (=> b!177395 m!179123))

(declare-fun m!179125 () Bool)

(assert (=> d!45319 m!179125))

(assert (=> d!45319 m!179029))

(declare-fun m!179127 () Bool)

(assert (=> d!45319 m!179127))

(declare-fun m!179129 () Bool)

(assert (=> b!177394 m!179129))

(assert (=> b!177074 d!45319))

(declare-fun d!45321 () Bool)

(assert (=> d!45321 (= (list!1085 (charsOf!186 separatorToken!170)) (list!1086 (c!34963 (charsOf!186 separatorToken!170))))))

(declare-fun bs!17715 () Bool)

(assert (= bs!17715 d!45321))

(declare-fun m!179131 () Bool)

(assert (=> bs!17715 m!179131))

(assert (=> b!177074 d!45321))

(declare-fun d!45323 () Bool)

(assert (=> d!45323 (= (list!1085 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 (seqFromList!440 (t!28012 tokens!465)) separatorToken!170 0)) (list!1086 (c!34963 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 (seqFromList!440 (t!28012 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!17716 () Bool)

(assert (= bs!17716 d!45323))

(declare-fun m!179133 () Bool)

(assert (=> bs!17716 m!179133))

(assert (=> b!177074 d!45323))

(declare-fun bs!17717 () Bool)

(declare-fun b!177398 () Bool)

(assert (= bs!17717 (and b!177398 b!177150)))

(declare-fun lambda!5156 () Int)

(assert (=> bs!17717 (= lambda!5156 lambda!5146)))

(declare-fun bs!17718 () Bool)

(assert (= bs!17718 (and b!177398 b!177073)))

(assert (=> bs!17718 (= lambda!5156 lambda!5140)))

(declare-fun bs!17719 () Bool)

(assert (= bs!17719 (and b!177398 b!177078)))

(assert (=> bs!17719 (not (= lambda!5156 lambda!5139))))

(declare-fun bs!17720 () Bool)

(assert (= bs!17720 (and b!177398 b!177219)))

(assert (=> bs!17720 (= lambda!5156 lambda!5149)))

(declare-fun bs!17721 () Bool)

(assert (= bs!17721 (and b!177398 d!45237)))

(assert (=> bs!17721 (not (= lambda!5156 lambda!5145))))

(declare-fun b!177407 () Bool)

(declare-fun e!107655 () Bool)

(assert (=> b!177407 (= e!107655 true)))

(declare-fun b!177406 () Bool)

(declare-fun e!107654 () Bool)

(assert (=> b!177406 (= e!107654 e!107655)))

(declare-fun b!177405 () Bool)

(declare-fun e!107653 () Bool)

(assert (=> b!177405 (= e!107653 e!107654)))

(assert (=> b!177398 e!107653))

(assert (= b!177406 b!177407))

(assert (= b!177405 b!177406))

(assert (= (and b!177398 ((_ is Cons!2955) rules!1920)) b!177405))

(assert (=> b!177407 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5156))))

(assert (=> b!177407 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5156))))

(assert (=> b!177398 true))

(declare-fun b!177397 () Bool)

(declare-fun e!107650 () BalanceConc!1776)

(declare-fun call!7975 () BalanceConc!1776)

(assert (=> b!177397 (= e!107650 call!7975)))

(declare-fun bm!7969 () Bool)

(declare-fun call!7976 () List!2964)

(declare-fun lt!57744 () List!2964)

(declare-fun call!7978 () List!2964)

(declare-fun call!7974 () List!2964)

(declare-fun c!35036 () Bool)

(assert (=> bm!7969 (= call!7978 (++!690 call!7976 (ite c!35036 lt!57744 call!7974)))))

(declare-fun e!107651 () List!2964)

(declare-fun e!107649 () List!2964)

(assert (=> b!177398 (= e!107651 e!107649)))

(declare-fun lt!57746 () Unit!2684)

(assert (=> b!177398 (= lt!57746 (forallContained!98 (t!28012 tokens!465) lambda!5156 (h!8353 (t!28012 tokens!465))))))

(assert (=> b!177398 (= lt!57744 (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (t!28012 (t!28012 tokens!465)) separatorToken!170))))

(declare-fun lt!57745 () Option!340)

(assert (=> b!177398 (= lt!57745 (maxPrefix!147 thiss!17480 rules!1920 (++!690 (list!1085 (charsOf!186 (h!8353 (t!28012 tokens!465)))) lt!57744)))))

(assert (=> b!177398 (= c!35036 (and ((_ is Some!339) lt!57745) (= (_1!1666 (v!13802 lt!57745)) (h!8353 (t!28012 tokens!465)))))))

(declare-fun bm!7970 () Bool)

(declare-fun call!7977 () BalanceConc!1776)

(assert (=> bm!7970 (= call!7977 (charsOf!186 (h!8353 (t!28012 tokens!465))))))

(declare-fun bm!7971 () Bool)

(assert (=> bm!7971 (= call!7975 call!7977)))

(declare-fun b!177399 () Bool)

(declare-fun c!35037 () Bool)

(assert (=> b!177399 (= c!35037 (and ((_ is Some!339) lt!57745) (not (= (_1!1666 (v!13802 lt!57745)) (h!8353 (t!28012 tokens!465))))))))

(declare-fun e!107652 () List!2964)

(assert (=> b!177399 (= e!107649 e!107652)))

(declare-fun b!177400 () Bool)

(assert (=> b!177400 (= e!107652 (++!690 call!7978 lt!57744))))

(declare-fun d!45325 () Bool)

(declare-fun c!35034 () Bool)

(assert (=> d!45325 (= c!35034 ((_ is Cons!2956) (t!28012 tokens!465)))))

(assert (=> d!45325 (= (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (t!28012 tokens!465) separatorToken!170) e!107651)))

(declare-fun b!177401 () Bool)

(assert (=> b!177401 (= e!107651 Nil!2954)))

(declare-fun b!177402 () Bool)

(assert (=> b!177402 (= e!107652 Nil!2954)))

(assert (=> b!177402 (= (print!148 thiss!17480 (singletonSeq!83 (h!8353 (t!28012 tokens!465)))) (printTailRec!111 thiss!17480 (singletonSeq!83 (h!8353 (t!28012 tokens!465))) 0 (BalanceConc!1777 Empty!884)))))

(declare-fun lt!57747 () Unit!2684)

(declare-fun Unit!2694 () Unit!2684)

(assert (=> b!177402 (= lt!57747 Unit!2694)))

(declare-fun lt!57742 () Unit!2684)

(assert (=> b!177402 (= lt!57742 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!41 thiss!17480 rules!1920 call!7974 lt!57744))))

(assert (=> b!177402 false))

(declare-fun lt!57743 () Unit!2684)

(declare-fun Unit!2695 () Unit!2684)

(assert (=> b!177402 (= lt!57743 Unit!2695)))

(declare-fun bm!7972 () Bool)

(assert (=> bm!7972 (= call!7976 (list!1085 (ite c!35036 call!7977 call!7975)))))

(declare-fun b!177403 () Bool)

(assert (=> b!177403 (= e!107649 call!7978)))

(declare-fun b!177404 () Bool)

(assert (=> b!177404 (= e!107650 (charsOf!186 separatorToken!170))))

(declare-fun bm!7973 () Bool)

(assert (=> bm!7973 (= call!7974 (list!1085 e!107650))))

(declare-fun c!35035 () Bool)

(assert (=> bm!7973 (= c!35035 c!35037)))

(assert (= (and d!45325 c!35034) b!177398))

(assert (= (and d!45325 (not c!35034)) b!177401))

(assert (= (and b!177398 c!35036) b!177403))

(assert (= (and b!177398 (not c!35036)) b!177399))

(assert (= (and b!177399 c!35037) b!177400))

(assert (= (and b!177399 (not c!35037)) b!177402))

(assert (= (or b!177400 b!177402) bm!7971))

(assert (= (or b!177400 b!177402) bm!7973))

(assert (= (and bm!7973 c!35035) b!177404))

(assert (= (and bm!7973 (not c!35035)) b!177397))

(assert (= (or b!177403 bm!7971) bm!7970))

(assert (= (or b!177403 b!177400) bm!7972))

(assert (= (or b!177403 b!177400) bm!7969))

(declare-fun m!179135 () Bool)

(assert (=> b!177400 m!179135))

(declare-fun m!179137 () Bool)

(assert (=> bm!7970 m!179137))

(declare-fun m!179139 () Bool)

(assert (=> b!177402 m!179139))

(assert (=> b!177402 m!179139))

(declare-fun m!179141 () Bool)

(assert (=> b!177402 m!179141))

(assert (=> b!177402 m!179139))

(declare-fun m!179143 () Bool)

(assert (=> b!177402 m!179143))

(declare-fun m!179145 () Bool)

(assert (=> b!177402 m!179145))

(declare-fun m!179147 () Bool)

(assert (=> bm!7973 m!179147))

(declare-fun m!179149 () Bool)

(assert (=> b!177398 m!179149))

(declare-fun m!179151 () Bool)

(assert (=> b!177398 m!179151))

(declare-fun m!179153 () Bool)

(assert (=> b!177398 m!179153))

(assert (=> b!177398 m!179151))

(declare-fun m!179155 () Bool)

(assert (=> b!177398 m!179155))

(assert (=> b!177398 m!179137))

(assert (=> b!177398 m!179149))

(declare-fun m!179157 () Bool)

(assert (=> b!177398 m!179157))

(assert (=> b!177398 m!179137))

(assert (=> b!177404 m!178605))

(declare-fun m!179159 () Bool)

(assert (=> bm!7969 m!179159))

(declare-fun m!179161 () Bool)

(assert (=> bm!7972 m!179161))

(assert (=> b!177074 d!45325))

(declare-fun b!177411 () Bool)

(declare-fun lt!57748 () List!2964)

(declare-fun e!107657 () Bool)

(assert (=> b!177411 (= e!107657 (or (not (= lt!57568 Nil!2954)) (= lt!57748 lt!57572)))))

(declare-fun b!177410 () Bool)

(declare-fun res!80107 () Bool)

(assert (=> b!177410 (=> (not res!80107) (not e!107657))))

(assert (=> b!177410 (= res!80107 (= (size!2448 lt!57748) (+ (size!2448 lt!57572) (size!2448 lt!57568))))))

(declare-fun d!45327 () Bool)

(assert (=> d!45327 e!107657))

(declare-fun res!80108 () Bool)

(assert (=> d!45327 (=> (not res!80108) (not e!107657))))

(assert (=> d!45327 (= res!80108 (= (content!413 lt!57748) ((_ map or) (content!413 lt!57572) (content!413 lt!57568))))))

(declare-fun e!107656 () List!2964)

(assert (=> d!45327 (= lt!57748 e!107656)))

(declare-fun c!35038 () Bool)

(assert (=> d!45327 (= c!35038 ((_ is Nil!2954) lt!57572))))

(assert (=> d!45327 (= (++!690 lt!57572 lt!57568) lt!57748)))

(declare-fun b!177408 () Bool)

(assert (=> b!177408 (= e!107656 lt!57568)))

(declare-fun b!177409 () Bool)

(assert (=> b!177409 (= e!107656 (Cons!2954 (h!8351 lt!57572) (++!690 (t!28010 lt!57572) lt!57568)))))

(assert (= (and d!45327 c!35038) b!177408))

(assert (= (and d!45327 (not c!35038)) b!177409))

(assert (= (and d!45327 res!80108) b!177410))

(assert (= (and b!177410 res!80107) b!177411))

(declare-fun m!179163 () Bool)

(assert (=> b!177410 m!179163))

(assert (=> b!177410 m!179111))

(assert (=> b!177410 m!179025))

(declare-fun m!179165 () Bool)

(assert (=> d!45327 m!179165))

(assert (=> d!45327 m!179115))

(assert (=> d!45327 m!179031))

(declare-fun m!179167 () Bool)

(assert (=> b!177409 m!179167))

(assert (=> b!177074 d!45327))

(declare-fun d!45329 () Bool)

(assert (=> d!45329 (= (++!690 (++!690 lt!57570 lt!57572) lt!57568) (++!690 lt!57570 (++!690 lt!57572 lt!57568)))))

(declare-fun lt!57751 () Unit!2684)

(declare-fun choose!1860 (List!2964 List!2964 List!2964) Unit!2684)

(assert (=> d!45329 (= lt!57751 (choose!1860 lt!57570 lt!57572 lt!57568))))

(assert (=> d!45329 (= (lemmaConcatAssociativity!220 lt!57570 lt!57572 lt!57568) lt!57751)))

(declare-fun bs!17722 () Bool)

(assert (= bs!17722 d!45329))

(assert (=> bs!17722 m!178607))

(assert (=> bs!17722 m!178601))

(assert (=> bs!17722 m!178607))

(declare-fun m!179169 () Bool)

(assert (=> bs!17722 m!179169))

(declare-fun m!179171 () Bool)

(assert (=> bs!17722 m!179171))

(assert (=> bs!17722 m!178601))

(assert (=> bs!17722 m!178603))

(assert (=> b!177074 d!45329))

(declare-fun bs!17723 () Bool)

(declare-fun d!45331 () Bool)

(assert (= bs!17723 (and d!45331 b!177150)))

(declare-fun lambda!5157 () Int)

(assert (=> bs!17723 (not (= lambda!5157 lambda!5146))))

(declare-fun bs!17724 () Bool)

(assert (= bs!17724 (and d!45331 b!177398)))

(assert (=> bs!17724 (not (= lambda!5157 lambda!5156))))

(declare-fun bs!17725 () Bool)

(assert (= bs!17725 (and d!45331 b!177073)))

(assert (=> bs!17725 (not (= lambda!5157 lambda!5140))))

(declare-fun bs!17726 () Bool)

(assert (= bs!17726 (and d!45331 b!177078)))

(assert (=> bs!17726 (= lambda!5157 lambda!5139)))

(declare-fun bs!17727 () Bool)

(assert (= bs!17727 (and d!45331 b!177219)))

(assert (=> bs!17727 (not (= lambda!5157 lambda!5149))))

(declare-fun bs!17728 () Bool)

(assert (= bs!17728 (and d!45331 d!45237)))

(assert (=> bs!17728 (= lambda!5157 lambda!5145)))

(declare-fun bs!17729 () Bool)

(declare-fun b!177415 () Bool)

(assert (= bs!17729 (and b!177415 b!177150)))

(declare-fun lambda!5158 () Int)

(assert (=> bs!17729 (= lambda!5158 lambda!5146)))

(declare-fun bs!17730 () Bool)

(assert (= bs!17730 (and b!177415 b!177398)))

(assert (=> bs!17730 (= lambda!5158 lambda!5156)))

(declare-fun bs!17731 () Bool)

(assert (= bs!17731 (and b!177415 b!177073)))

(assert (=> bs!17731 (= lambda!5158 lambda!5140)))

(declare-fun bs!17732 () Bool)

(assert (= bs!17732 (and b!177415 b!177078)))

(assert (=> bs!17732 (not (= lambda!5158 lambda!5139))))

(declare-fun bs!17733 () Bool)

(assert (= bs!17733 (and b!177415 d!45331)))

(assert (=> bs!17733 (not (= lambda!5158 lambda!5157))))

(declare-fun bs!17734 () Bool)

(assert (= bs!17734 (and b!177415 b!177219)))

(assert (=> bs!17734 (= lambda!5158 lambda!5149)))

(declare-fun bs!17735 () Bool)

(assert (= bs!17735 (and b!177415 d!45237)))

(assert (=> bs!17735 (not (= lambda!5158 lambda!5145))))

(declare-fun b!177423 () Bool)

(declare-fun e!107666 () Bool)

(assert (=> b!177423 (= e!107666 true)))

(declare-fun b!177422 () Bool)

(declare-fun e!107665 () Bool)

(assert (=> b!177422 (= e!107665 e!107666)))

(declare-fun b!177421 () Bool)

(declare-fun e!107664 () Bool)

(assert (=> b!177421 (= e!107664 e!107665)))

(assert (=> b!177415 e!107664))

(assert (= b!177422 b!177423))

(assert (= b!177421 b!177422))

(assert (= (and b!177415 ((_ is Cons!2955) rules!1920)) b!177421))

(assert (=> b!177423 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5158))))

(assert (=> b!177423 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5158))))

(assert (=> b!177415 true))

(declare-fun b!177412 () Bool)

(declare-fun e!107661 () Bool)

(assert (=> b!177412 (= e!107661 (<= 0 (size!2444 (seqFromList!440 (t!28012 tokens!465)))))))

(declare-fun call!7979 () BalanceConc!1776)

(declare-fun call!7982 () BalanceConc!1776)

(declare-fun call!7983 () BalanceConc!1776)

(declare-fun bm!7974 () Bool)

(declare-fun lt!57765 () BalanceConc!1776)

(declare-fun c!35040 () Bool)

(assert (=> bm!7974 (= call!7979 (++!691 call!7983 (ite c!35040 lt!57765 call!7982)))))

(declare-fun b!177413 () Bool)

(declare-fun e!107659 () BalanceConc!1776)

(assert (=> b!177413 (= e!107659 call!7979)))

(declare-fun b!177414 () Bool)

(declare-fun e!107662 () Bool)

(declare-fun lt!57756 () Option!341)

(assert (=> b!177414 (= e!107662 (= (_1!1667 (v!13803 lt!57756)) (apply!435 (seqFromList!440 (t!28012 tokens!465)) 0)))))

(declare-fun e!107663 () BalanceConc!1776)

(assert (=> b!177415 (= e!107663 e!107659)))

(declare-fun lt!57752 () List!2966)

(assert (=> b!177415 (= lt!57752 (list!1087 (seqFromList!440 (t!28012 tokens!465))))))

(declare-fun lt!57754 () Unit!2684)

(assert (=> b!177415 (= lt!57754 (lemmaDropApply!133 lt!57752 0))))

(assert (=> b!177415 (= (head!611 (drop!146 lt!57752 0)) (apply!436 lt!57752 0))))

(declare-fun lt!57755 () Unit!2684)

(assert (=> b!177415 (= lt!57755 lt!57754)))

(declare-fun lt!57757 () List!2966)

(assert (=> b!177415 (= lt!57757 (list!1087 (seqFromList!440 (t!28012 tokens!465))))))

(declare-fun lt!57753 () Unit!2684)

(assert (=> b!177415 (= lt!57753 (lemmaDropTail!125 lt!57757 0))))

(assert (=> b!177415 (= (tail!351 (drop!146 lt!57757 0)) (drop!146 lt!57757 (+ 0 1)))))

(declare-fun lt!57761 () Unit!2684)

(assert (=> b!177415 (= lt!57761 lt!57753)))

(declare-fun lt!57762 () Unit!2684)

(assert (=> b!177415 (= lt!57762 (forallContained!98 (list!1087 (seqFromList!440 (t!28012 tokens!465))) lambda!5158 (apply!435 (seqFromList!440 (t!28012 tokens!465)) 0)))))

(assert (=> b!177415 (= lt!57765 (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 (seqFromList!440 (t!28012 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!177415 (= lt!57756 (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (++!691 (charsOf!186 (apply!435 (seqFromList!440 (t!28012 tokens!465)) 0)) lt!57765)))))

(declare-fun res!80110 () Bool)

(assert (=> b!177415 (= res!80110 ((_ is Some!340) lt!57756))))

(assert (=> b!177415 (=> (not res!80110) (not e!107662))))

(assert (=> b!177415 (= c!35040 e!107662)))

(declare-fun bm!7975 () Bool)

(declare-fun call!7981 () Token!806)

(assert (=> bm!7975 (= call!7981 (apply!435 (seqFromList!440 (t!28012 tokens!465)) 0))))

(declare-fun call!7980 () Token!806)

(declare-fun bm!7976 () Bool)

(declare-fun c!35039 () Bool)

(assert (=> bm!7976 (= call!7982 (charsOf!186 (ite c!35039 separatorToken!170 call!7980)))))

(declare-fun bm!7977 () Bool)

(assert (=> bm!7977 (= call!7983 (charsOf!186 (ite c!35040 call!7981 call!7980)))))

(declare-fun b!177416 () Bool)

(declare-fun e!107658 () Bool)

(assert (=> b!177416 (= c!35039 e!107658)))

(declare-fun res!80111 () Bool)

(assert (=> b!177416 (=> (not res!80111) (not e!107658))))

(assert (=> b!177416 (= res!80111 ((_ is Some!340) lt!57756))))

(declare-fun e!107660 () BalanceConc!1776)

(assert (=> b!177416 (= e!107659 e!107660)))

(declare-fun lt!57759 () BalanceConc!1776)

(assert (=> d!45331 (= (list!1085 lt!57759) (printWithSeparatorTokenWhenNeededList!110 thiss!17480 rules!1920 (dropList!93 (seqFromList!440 (t!28012 tokens!465)) 0) separatorToken!170))))

(assert (=> d!45331 (= lt!57759 e!107663)))

(declare-fun c!35041 () Bool)

(assert (=> d!45331 (= c!35041 (>= 0 (size!2444 (seqFromList!440 (t!28012 tokens!465)))))))

(declare-fun lt!57758 () Unit!2684)

(assert (=> d!45331 (= lt!57758 (lemmaContentSubsetPreservesForall!37 (list!1087 (seqFromList!440 (t!28012 tokens!465))) (dropList!93 (seqFromList!440 (t!28012 tokens!465)) 0) lambda!5157))))

(assert (=> d!45331 e!107661))

(declare-fun res!80109 () Bool)

(assert (=> d!45331 (=> (not res!80109) (not e!107661))))

(assert (=> d!45331 (= res!80109 (>= 0 0))))

(assert (=> d!45331 (= (printWithSeparatorTokenWhenNeededRec!100 thiss!17480 rules!1920 (seqFromList!440 (t!28012 tokens!465)) separatorToken!170 0) lt!57759)))

(declare-fun b!177417 () Bool)

(assert (=> b!177417 (= e!107663 (BalanceConc!1777 Empty!884))))

(declare-fun b!177418 () Bool)

(assert (=> b!177418 (= e!107660 (++!691 call!7979 lt!57765))))

(declare-fun b!177419 () Bool)

(assert (=> b!177419 (= e!107658 (not (= (_1!1667 (v!13803 lt!57756)) call!7981)))))

(declare-fun bm!7978 () Bool)

(assert (=> bm!7978 (= call!7980 call!7981)))

(declare-fun b!177420 () Bool)

(assert (=> b!177420 (= e!107660 (BalanceConc!1777 Empty!884))))

(assert (=> b!177420 (= (print!148 thiss!17480 (singletonSeq!83 call!7980)) (printTailRec!111 thiss!17480 (singletonSeq!83 call!7980) 0 (BalanceConc!1777 Empty!884)))))

(declare-fun lt!57764 () Unit!2684)

(declare-fun Unit!2698 () Unit!2684)

(assert (=> b!177420 (= lt!57764 Unit!2698)))

(declare-fun lt!57763 () Unit!2684)

(assert (=> b!177420 (= lt!57763 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!41 thiss!17480 rules!1920 (list!1085 call!7982) (list!1085 lt!57765)))))

(assert (=> b!177420 false))

(declare-fun lt!57760 () Unit!2684)

(declare-fun Unit!2699 () Unit!2684)

(assert (=> b!177420 (= lt!57760 Unit!2699)))

(assert (= (and d!45331 res!80109) b!177412))

(assert (= (and d!45331 c!35041) b!177417))

(assert (= (and d!45331 (not c!35041)) b!177415))

(assert (= (and b!177415 res!80110) b!177414))

(assert (= (and b!177415 c!35040) b!177413))

(assert (= (and b!177415 (not c!35040)) b!177416))

(assert (= (and b!177416 res!80111) b!177419))

(assert (= (and b!177416 c!35039) b!177418))

(assert (= (and b!177416 (not c!35039)) b!177420))

(assert (= (or b!177418 b!177420) bm!7978))

(assert (= (or b!177418 b!177420) bm!7976))

(assert (= (or b!177413 b!177419 bm!7978) bm!7975))

(assert (= (or b!177413 b!177418) bm!7977))

(assert (= (or b!177413 b!177418) bm!7974))

(declare-fun m!179173 () Bool)

(assert (=> b!177415 m!179173))

(declare-fun m!179175 () Bool)

(assert (=> b!177415 m!179175))

(assert (=> b!177415 m!179173))

(declare-fun m!179177 () Bool)

(assert (=> b!177415 m!179177))

(declare-fun m!179179 () Bool)

(assert (=> b!177415 m!179179))

(declare-fun m!179181 () Bool)

(assert (=> b!177415 m!179181))

(declare-fun m!179183 () Bool)

(assert (=> b!177415 m!179183))

(declare-fun m!179185 () Bool)

(assert (=> b!177415 m!179185))

(assert (=> b!177415 m!178609))

(declare-fun m!179187 () Bool)

(assert (=> b!177415 m!179187))

(assert (=> b!177415 m!179179))

(declare-fun m!179189 () Bool)

(assert (=> b!177415 m!179189))

(declare-fun m!179191 () Bool)

(assert (=> b!177415 m!179191))

(declare-fun m!179193 () Bool)

(assert (=> b!177415 m!179193))

(assert (=> b!177415 m!179191))

(assert (=> b!177415 m!179189))

(declare-fun m!179195 () Bool)

(assert (=> b!177415 m!179195))

(declare-fun m!179197 () Bool)

(assert (=> b!177415 m!179197))

(assert (=> b!177415 m!178609))

(assert (=> b!177415 m!179177))

(assert (=> b!177415 m!178609))

(assert (=> b!177415 m!179179))

(assert (=> b!177415 m!179195))

(declare-fun m!179199 () Bool)

(assert (=> b!177415 m!179199))

(declare-fun m!179201 () Bool)

(assert (=> b!177415 m!179201))

(declare-fun m!179203 () Bool)

(assert (=> d!45331 m!179203))

(declare-fun m!179205 () Bool)

(assert (=> d!45331 m!179205))

(declare-fun m!179207 () Bool)

(assert (=> d!45331 m!179207))

(assert (=> d!45331 m!178609))

(assert (=> d!45331 m!179203))

(assert (=> d!45331 m!178609))

(declare-fun m!179209 () Bool)

(assert (=> d!45331 m!179209))

(assert (=> d!45331 m!179177))

(assert (=> d!45331 m!179203))

(declare-fun m!179211 () Bool)

(assert (=> d!45331 m!179211))

(assert (=> d!45331 m!178609))

(assert (=> d!45331 m!179177))

(declare-fun m!179213 () Bool)

(assert (=> b!177420 m!179213))

(declare-fun m!179215 () Bool)

(assert (=> b!177420 m!179215))

(declare-fun m!179217 () Bool)

(assert (=> b!177420 m!179217))

(assert (=> b!177420 m!179215))

(declare-fun m!179219 () Bool)

(assert (=> b!177420 m!179219))

(assert (=> b!177420 m!179215))

(declare-fun m!179221 () Bool)

(assert (=> b!177420 m!179221))

(assert (=> b!177420 m!179217))

(assert (=> b!177420 m!179213))

(declare-fun m!179223 () Bool)

(assert (=> b!177420 m!179223))

(declare-fun m!179225 () Bool)

(assert (=> bm!7974 m!179225))

(assert (=> bm!7975 m!178609))

(assert (=> bm!7975 m!179179))

(declare-fun m!179227 () Bool)

(assert (=> b!177418 m!179227))

(declare-fun m!179229 () Bool)

(assert (=> bm!7977 m!179229))

(assert (=> b!177412 m!178609))

(assert (=> b!177412 m!179209))

(declare-fun m!179231 () Bool)

(assert (=> bm!7976 m!179231))

(assert (=> b!177414 m!178609))

(assert (=> b!177414 m!179179))

(assert (=> b!177074 d!45331))

(declare-fun d!45333 () Bool)

(declare-fun lt!57768 () BalanceConc!1776)

(assert (=> d!45333 (= (list!1085 lt!57768) (originalCharacters!574 separatorToken!170))))

(assert (=> d!45333 (= lt!57768 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (value!19449 separatorToken!170)))))

(assert (=> d!45333 (= (charsOf!186 separatorToken!170) lt!57768)))

(declare-fun b_lambda!4215 () Bool)

(assert (=> (not b_lambda!4215) (not d!45333)))

(declare-fun tb!7463 () Bool)

(declare-fun t!28032 () Bool)

(assert (=> (and b!177061 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170)))) t!28032) tb!7463))

(declare-fun b!177424 () Bool)

(declare-fun e!107667 () Bool)

(declare-fun tp!85407 () Bool)

(assert (=> b!177424 (= e!107667 (and (inv!3793 (c!34963 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (value!19449 separatorToken!170)))) tp!85407))))

(declare-fun result!10224 () Bool)

(assert (=> tb!7463 (= result!10224 (and (inv!3794 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (value!19449 separatorToken!170))) e!107667))))

(assert (= tb!7463 b!177424))

(declare-fun m!179233 () Bool)

(assert (=> b!177424 m!179233))

(declare-fun m!179235 () Bool)

(assert (=> tb!7463 m!179235))

(assert (=> d!45333 t!28032))

(declare-fun b_and!12007 () Bool)

(assert (= b_and!12001 (and (=> t!28032 result!10224) b_and!12007)))

(declare-fun t!28034 () Bool)

(declare-fun tb!7465 () Bool)

(assert (=> (and b!177077 (= (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170)))) t!28034) tb!7465))

(declare-fun result!10226 () Bool)

(assert (= result!10226 result!10224))

(assert (=> d!45333 t!28034))

(declare-fun b_and!12009 () Bool)

(assert (= b_and!12003 (and (=> t!28034 result!10226) b_and!12009)))

(declare-fun tb!7467 () Bool)

(declare-fun t!28036 () Bool)

(assert (=> (and b!177054 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170)))) t!28036) tb!7467))

(declare-fun result!10228 () Bool)

(assert (= result!10228 result!10224))

(assert (=> d!45333 t!28036))

(declare-fun b_and!12011 () Bool)

(assert (= b_and!12005 (and (=> t!28036 result!10228) b_and!12011)))

(declare-fun m!179237 () Bool)

(assert (=> d!45333 m!179237))

(declare-fun m!179239 () Bool)

(assert (=> d!45333 m!179239))

(assert (=> b!177074 d!45333))

(declare-fun lt!57769 () List!2964)

(declare-fun e!107669 () Bool)

(declare-fun b!177428 () Bool)

(assert (=> b!177428 (= e!107669 (or (not (= lt!57568 Nil!2954)) (= lt!57769 (++!690 lt!57570 lt!57572))))))

(declare-fun b!177427 () Bool)

(declare-fun res!80112 () Bool)

(assert (=> b!177427 (=> (not res!80112) (not e!107669))))

(assert (=> b!177427 (= res!80112 (= (size!2448 lt!57769) (+ (size!2448 (++!690 lt!57570 lt!57572)) (size!2448 lt!57568))))))

(declare-fun d!45335 () Bool)

(assert (=> d!45335 e!107669))

(declare-fun res!80113 () Bool)

(assert (=> d!45335 (=> (not res!80113) (not e!107669))))

(assert (=> d!45335 (= res!80113 (= (content!413 lt!57769) ((_ map or) (content!413 (++!690 lt!57570 lt!57572)) (content!413 lt!57568))))))

(declare-fun e!107668 () List!2964)

(assert (=> d!45335 (= lt!57769 e!107668)))

(declare-fun c!35042 () Bool)

(assert (=> d!45335 (= c!35042 ((_ is Nil!2954) (++!690 lt!57570 lt!57572)))))

(assert (=> d!45335 (= (++!690 (++!690 lt!57570 lt!57572) lt!57568) lt!57769)))

(declare-fun b!177425 () Bool)

(assert (=> b!177425 (= e!107668 lt!57568)))

(declare-fun b!177426 () Bool)

(assert (=> b!177426 (= e!107668 (Cons!2954 (h!8351 (++!690 lt!57570 lt!57572)) (++!690 (t!28010 (++!690 lt!57570 lt!57572)) lt!57568)))))

(assert (= (and d!45335 c!35042) b!177425))

(assert (= (and d!45335 (not c!35042)) b!177426))

(assert (= (and d!45335 res!80113) b!177427))

(assert (= (and b!177427 res!80112) b!177428))

(declare-fun m!179241 () Bool)

(assert (=> b!177427 m!179241))

(assert (=> b!177427 m!178601))

(declare-fun m!179243 () Bool)

(assert (=> b!177427 m!179243))

(assert (=> b!177427 m!179025))

(declare-fun m!179245 () Bool)

(assert (=> d!45335 m!179245))

(assert (=> d!45335 m!178601))

(declare-fun m!179247 () Bool)

(assert (=> d!45335 m!179247))

(assert (=> d!45335 m!179031))

(declare-fun m!179249 () Bool)

(assert (=> b!177426 m!179249))

(assert (=> b!177074 d!45335))

(declare-fun d!45337 () Bool)

(assert (=> d!45337 (= (list!1085 (charsOf!186 (h!8353 tokens!465))) (list!1086 (c!34963 (charsOf!186 (h!8353 tokens!465)))))))

(declare-fun bs!17736 () Bool)

(assert (= bs!17736 d!45337))

(declare-fun m!179251 () Bool)

(assert (=> bs!17736 m!179251))

(assert (=> b!177074 d!45337))

(declare-fun d!45339 () Bool)

(declare-fun lt!57770 () BalanceConc!1776)

(assert (=> d!45339 (= (list!1085 lt!57770) (originalCharacters!574 (h!8353 tokens!465)))))

(assert (=> d!45339 (= lt!57770 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (value!19449 (h!8353 tokens!465))))))

(assert (=> d!45339 (= (charsOf!186 (h!8353 tokens!465)) lt!57770)))

(declare-fun b_lambda!4217 () Bool)

(assert (=> (not b_lambda!4217) (not d!45339)))

(assert (=> d!45339 t!28022))

(declare-fun b_and!12013 () Bool)

(assert (= b_and!12007 (and (=> t!28022 result!10216) b_and!12013)))

(assert (=> d!45339 t!28024))

(declare-fun b_and!12015 () Bool)

(assert (= b_and!12009 (and (=> t!28024 result!10220) b_and!12015)))

(assert (=> d!45339 t!28026))

(declare-fun b_and!12017 () Bool)

(assert (= b_and!12011 (and (=> t!28026 result!10222) b_and!12017)))

(declare-fun m!179253 () Bool)

(assert (=> d!45339 m!179253))

(assert (=> d!45339 m!178977))

(assert (=> b!177074 d!45339))

(declare-fun bs!17737 () Bool)

(declare-fun d!45341 () Bool)

(assert (= bs!17737 (and d!45341 b!177150)))

(declare-fun lambda!5163 () Int)

(assert (=> bs!17737 (= lambda!5163 lambda!5146)))

(declare-fun bs!17738 () Bool)

(assert (= bs!17738 (and d!45341 b!177398)))

(assert (=> bs!17738 (= lambda!5163 lambda!5156)))

(declare-fun bs!17739 () Bool)

(assert (= bs!17739 (and d!45341 b!177415)))

(assert (=> bs!17739 (= lambda!5163 lambda!5158)))

(declare-fun bs!17740 () Bool)

(assert (= bs!17740 (and d!45341 b!177073)))

(assert (=> bs!17740 (= lambda!5163 lambda!5140)))

(declare-fun bs!17741 () Bool)

(assert (= bs!17741 (and d!45341 b!177078)))

(assert (=> bs!17741 (not (= lambda!5163 lambda!5139))))

(declare-fun bs!17742 () Bool)

(assert (= bs!17742 (and d!45341 d!45331)))

(assert (=> bs!17742 (not (= lambda!5163 lambda!5157))))

(declare-fun bs!17743 () Bool)

(assert (= bs!17743 (and d!45341 b!177219)))

(assert (=> bs!17743 (= lambda!5163 lambda!5149)))

(declare-fun bs!17744 () Bool)

(assert (= bs!17744 (and d!45341 d!45237)))

(assert (=> bs!17744 (not (= lambda!5163 lambda!5145))))

(declare-fun b!177453 () Bool)

(declare-fun e!107686 () Bool)

(assert (=> b!177453 (= e!107686 true)))

(declare-fun b!177452 () Bool)

(declare-fun e!107685 () Bool)

(assert (=> b!177452 (= e!107685 e!107686)))

(declare-fun b!177451 () Bool)

(declare-fun e!107684 () Bool)

(assert (=> b!177451 (= e!107684 e!107685)))

(assert (=> d!45341 e!107684))

(assert (= b!177452 b!177453))

(assert (= b!177451 b!177452))

(assert (= (and d!45341 ((_ is Cons!2955) rules!1920)) b!177451))

(assert (=> b!177453 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5163))))

(assert (=> b!177453 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5163))))

(assert (=> d!45341 true))

(declare-fun lt!57785 () Bool)

(assert (=> d!45341 (= lt!57785 (forall!593 (t!28012 tokens!465) lambda!5163))))

(declare-fun e!107682 () Bool)

(assert (=> d!45341 (= lt!57785 e!107682)))

(declare-fun res!80119 () Bool)

(assert (=> d!45341 (=> res!80119 e!107682)))

(assert (=> d!45341 (= res!80119 (not ((_ is Cons!2956) (t!28012 tokens!465))))))

(assert (=> d!45341 (not (isEmpty!1295 rules!1920))))

(assert (=> d!45341 (= (rulesProduceEachTokenIndividuallyList!119 thiss!17480 rules!1920 (t!28012 tokens!465)) lt!57785)))

(declare-fun b!177449 () Bool)

(declare-fun e!107683 () Bool)

(assert (=> b!177449 (= e!107682 e!107683)))

(declare-fun res!80118 () Bool)

(assert (=> b!177449 (=> (not res!80118) (not e!107683))))

(assert (=> b!177449 (= res!80118 (rulesProduceIndividualToken!166 thiss!17480 rules!1920 (h!8353 (t!28012 tokens!465))))))

(declare-fun b!177450 () Bool)

(assert (=> b!177450 (= e!107683 (rulesProduceEachTokenIndividuallyList!119 thiss!17480 rules!1920 (t!28012 (t!28012 tokens!465))))))

(assert (= (and d!45341 (not res!80119)) b!177449))

(assert (= (and b!177449 res!80118) b!177450))

(declare-fun m!179255 () Bool)

(assert (=> d!45341 m!179255))

(assert (=> d!45341 m!178625))

(declare-fun m!179257 () Bool)

(assert (=> b!177449 m!179257))

(declare-fun m!179259 () Bool)

(assert (=> b!177450 m!179259))

(assert (=> b!177053 d!45341))

(declare-fun d!45343 () Bool)

(assert (=> d!45343 (= (isEmpty!1296 (_2!1666 lt!57560)) ((_ is Nil!2954) (_2!1666 lt!57560)))))

(assert (=> b!177076 d!45343))

(declare-fun lt!57788 () Bool)

(declare-fun d!45345 () Bool)

(declare-fun isEmpty!1301 (List!2966) Bool)

(assert (=> d!45345 (= lt!57788 (isEmpty!1301 (list!1087 (_1!1665 (lex!217 thiss!17480 rules!1920 (seqFromList!439 lt!57570))))))))

(declare-fun isEmpty!1302 (Conc!885) Bool)

(assert (=> d!45345 (= lt!57788 (isEmpty!1302 (c!34965 (_1!1665 (lex!217 thiss!17480 rules!1920 (seqFromList!439 lt!57570))))))))

(assert (=> d!45345 (= (isEmpty!1294 (_1!1665 (lex!217 thiss!17480 rules!1920 (seqFromList!439 lt!57570)))) lt!57788)))

(declare-fun bs!17745 () Bool)

(assert (= bs!17745 d!45345))

(declare-fun m!179261 () Bool)

(assert (=> bs!17745 m!179261))

(assert (=> bs!17745 m!179261))

(declare-fun m!179263 () Bool)

(assert (=> bs!17745 m!179263))

(declare-fun m!179265 () Bool)

(assert (=> bs!17745 m!179265))

(assert (=> b!177050 d!45345))

(declare-fun d!45347 () Bool)

(declare-fun e!107731 () Bool)

(assert (=> d!45347 e!107731))

(declare-fun res!80139 () Bool)

(assert (=> d!45347 (=> (not res!80139) (not e!107731))))

(declare-fun e!107732 () Bool)

(assert (=> d!45347 (= res!80139 e!107732)))

(declare-fun c!35069 () Bool)

(declare-fun lt!57828 () tuple2!2898)

(assert (=> d!45347 (= c!35069 (> (size!2444 (_1!1665 lt!57828)) 0))))

(declare-fun lexTailRecV2!106 (LexerInterface!417 List!2965 BalanceConc!1776 BalanceConc!1776 BalanceConc!1776 BalanceConc!1778) tuple2!2898)

(assert (=> d!45347 (= lt!57828 (lexTailRecV2!106 thiss!17480 rules!1920 (seqFromList!439 lt!57570) (BalanceConc!1777 Empty!884) (seqFromList!439 lt!57570) (BalanceConc!1779 Empty!885)))))

(assert (=> d!45347 (= (lex!217 thiss!17480 rules!1920 (seqFromList!439 lt!57570)) lt!57828)))

(declare-fun b!177523 () Bool)

(declare-fun res!80138 () Bool)

(assert (=> b!177523 (=> (not res!80138) (not e!107731))))

(declare-datatypes ((tuple2!2906 0))(
  ( (tuple2!2907 (_1!1669 List!2966) (_2!1669 List!2964)) )
))
(declare-fun lexList!119 (LexerInterface!417 List!2965 List!2964) tuple2!2906)

(assert (=> b!177523 (= res!80138 (= (list!1087 (_1!1665 lt!57828)) (_1!1669 (lexList!119 thiss!17480 rules!1920 (list!1085 (seqFromList!439 lt!57570))))))))

(declare-fun b!177524 () Bool)

(assert (=> b!177524 (= e!107732 (= (_2!1665 lt!57828) (seqFromList!439 lt!57570)))))

(declare-fun b!177525 () Bool)

(declare-fun e!107730 () Bool)

(assert (=> b!177525 (= e!107730 (not (isEmpty!1294 (_1!1665 lt!57828))))))

(declare-fun b!177526 () Bool)

(assert (=> b!177526 (= e!107731 (= (list!1085 (_2!1665 lt!57828)) (_2!1669 (lexList!119 thiss!17480 rules!1920 (list!1085 (seqFromList!439 lt!57570))))))))

(declare-fun b!177527 () Bool)

(assert (=> b!177527 (= e!107732 e!107730)))

(declare-fun res!80140 () Bool)

(declare-fun size!2449 (BalanceConc!1776) Int)

(assert (=> b!177527 (= res!80140 (< (size!2449 (_2!1665 lt!57828)) (size!2449 (seqFromList!439 lt!57570))))))

(assert (=> b!177527 (=> (not res!80140) (not e!107730))))

(assert (= (and d!45347 c!35069) b!177527))

(assert (= (and d!45347 (not c!35069)) b!177524))

(assert (= (and b!177527 res!80140) b!177525))

(assert (= (and d!45347 res!80139) b!177523))

(assert (= (and b!177523 res!80138) b!177526))

(declare-fun m!179443 () Bool)

(assert (=> b!177525 m!179443))

(declare-fun m!179445 () Bool)

(assert (=> b!177523 m!179445))

(assert (=> b!177523 m!178659))

(declare-fun m!179447 () Bool)

(assert (=> b!177523 m!179447))

(assert (=> b!177523 m!179447))

(declare-fun m!179449 () Bool)

(assert (=> b!177523 m!179449))

(declare-fun m!179451 () Bool)

(assert (=> d!45347 m!179451))

(assert (=> d!45347 m!178659))

(assert (=> d!45347 m!178659))

(declare-fun m!179453 () Bool)

(assert (=> d!45347 m!179453))

(declare-fun m!179455 () Bool)

(assert (=> b!177527 m!179455))

(assert (=> b!177527 m!178659))

(declare-fun m!179457 () Bool)

(assert (=> b!177527 m!179457))

(declare-fun m!179459 () Bool)

(assert (=> b!177526 m!179459))

(assert (=> b!177526 m!178659))

(assert (=> b!177526 m!179447))

(assert (=> b!177526 m!179447))

(assert (=> b!177526 m!179449))

(assert (=> b!177050 d!45347))

(declare-fun d!45383 () Bool)

(assert (=> d!45383 (= (seqFromList!439 lt!57570) (fromListB!175 lt!57570))))

(declare-fun bs!17774 () Bool)

(assert (= bs!17774 d!45383))

(declare-fun m!179461 () Bool)

(assert (=> bs!17774 m!179461))

(assert (=> b!177050 d!45383))

(declare-fun bs!17776 () Bool)

(declare-fun d!45385 () Bool)

(assert (= bs!17776 (and d!45385 b!177150)))

(declare-fun lambda!5172 () Int)

(assert (=> bs!17776 (= lambda!5172 lambda!5146)))

(declare-fun bs!17777 () Bool)

(assert (= bs!17777 (and d!45385 b!177398)))

(assert (=> bs!17777 (= lambda!5172 lambda!5156)))

(declare-fun bs!17778 () Bool)

(assert (= bs!17778 (and d!45385 b!177415)))

(assert (=> bs!17778 (= lambda!5172 lambda!5158)))

(declare-fun bs!17779 () Bool)

(assert (= bs!17779 (and d!45385 b!177073)))

(assert (=> bs!17779 (= lambda!5172 lambda!5140)))

(declare-fun bs!17780 () Bool)

(assert (= bs!17780 (and d!45385 d!45341)))

(assert (=> bs!17780 (= lambda!5172 lambda!5163)))

(declare-fun bs!17781 () Bool)

(assert (= bs!17781 (and d!45385 b!177078)))

(assert (=> bs!17781 (not (= lambda!5172 lambda!5139))))

(declare-fun bs!17782 () Bool)

(assert (= bs!17782 (and d!45385 d!45331)))

(assert (=> bs!17782 (not (= lambda!5172 lambda!5157))))

(declare-fun bs!17783 () Bool)

(assert (= bs!17783 (and d!45385 b!177219)))

(assert (=> bs!17783 (= lambda!5172 lambda!5149)))

(declare-fun bs!17784 () Bool)

(assert (= bs!17784 (and d!45385 d!45237)))

(assert (=> bs!17784 (not (= lambda!5172 lambda!5145))))

(declare-fun b!177566 () Bool)

(declare-fun e!107762 () Bool)

(assert (=> b!177566 (= e!107762 true)))

(declare-fun b!177565 () Bool)

(declare-fun e!107761 () Bool)

(assert (=> b!177565 (= e!107761 e!107762)))

(declare-fun b!177564 () Bool)

(declare-fun e!107760 () Bool)

(assert (=> b!177564 (= e!107760 e!107761)))

(assert (=> d!45385 e!107760))

(assert (= b!177565 b!177566))

(assert (= b!177564 b!177565))

(assert (= (and d!45385 ((_ is Cons!2955) rules!1920)) b!177564))

(assert (=> b!177566 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5172))))

(assert (=> b!177566 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 rules!1920)))) (dynLambda!1152 order!1663 lambda!5172))))

(assert (=> d!45385 true))

(declare-fun e!107759 () Bool)

(assert (=> d!45385 e!107759))

(declare-fun res!80170 () Bool)

(assert (=> d!45385 (=> (not res!80170) (not e!107759))))

(declare-fun lt!57855 () Bool)

(assert (=> d!45385 (= res!80170 (= lt!57855 (forall!593 (list!1087 lt!57556) lambda!5172)))))

(declare-fun forall!594 (BalanceConc!1778 Int) Bool)

(assert (=> d!45385 (= lt!57855 (forall!594 lt!57556 lambda!5172))))

(assert (=> d!45385 (not (isEmpty!1295 rules!1920))))

(assert (=> d!45385 (= (rulesProduceEachTokenIndividually!209 thiss!17480 rules!1920 lt!57556) lt!57855)))

(declare-fun b!177563 () Bool)

(assert (=> b!177563 (= e!107759 (= lt!57855 (rulesProduceEachTokenIndividuallyList!119 thiss!17480 rules!1920 (list!1087 lt!57556))))))

(assert (= (and d!45385 res!80170) b!177563))

(assert (=> d!45385 m!178759))

(assert (=> d!45385 m!178759))

(declare-fun m!179507 () Bool)

(assert (=> d!45385 m!179507))

(declare-fun m!179509 () Bool)

(assert (=> d!45385 m!179509))

(assert (=> d!45385 m!178625))

(assert (=> b!177563 m!178759))

(assert (=> b!177563 m!178759))

(declare-fun m!179511 () Bool)

(assert (=> b!177563 m!179511))

(assert (=> b!177051 d!45385))

(declare-fun d!45395 () Bool)

(assert (=> d!45395 (= (seqFromList!440 tokens!465) (fromListB!176 tokens!465))))

(declare-fun bs!17785 () Bool)

(assert (= bs!17785 d!45395))

(declare-fun m!179513 () Bool)

(assert (=> bs!17785 m!179513))

(assert (=> b!177051 d!45395))

(declare-fun d!45397 () Bool)

(declare-fun isEmpty!1303 (Option!341) Bool)

(assert (=> d!45397 (= (isDefined!192 (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465))))) (not (isEmpty!1303 (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))

(declare-fun bs!17786 () Bool)

(assert (= bs!17786 d!45397))

(assert (=> bs!17786 m!178641))

(declare-fun m!179515 () Bool)

(assert (=> bs!17786 m!179515))

(assert (=> b!177073 d!45397))

(declare-fun b!177603 () Bool)

(declare-fun e!107794 () Bool)

(declare-fun e!107796 () Bool)

(assert (=> b!177603 (= e!107794 e!107796)))

(declare-fun res!80198 () Bool)

(assert (=> b!177603 (=> (not res!80198) (not e!107796))))

(declare-fun lt!57903 () Option!341)

(declare-fun get!822 (Option!341) tuple2!2902)

(assert (=> b!177603 (= res!80198 (= (_1!1667 (get!822 lt!57903)) (_1!1666 (get!821 (maxPrefix!147 thiss!17480 rules!1920 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))))

(declare-fun b!177605 () Bool)

(declare-fun e!107795 () Option!341)

(declare-fun lt!57906 () Option!341)

(declare-fun lt!57905 () Option!341)

(assert (=> b!177605 (= e!107795 (ite (and ((_ is None!340) lt!57906) ((_ is None!340) lt!57905)) None!340 (ite ((_ is None!340) lt!57905) lt!57906 (ite ((_ is None!340) lt!57906) lt!57905 (ite (>= (size!2443 (_1!1667 (v!13803 lt!57906))) (size!2443 (_1!1667 (v!13803 lt!57905)))) lt!57906 lt!57905)))))))

(declare-fun call!8014 () Option!341)

(assert (=> b!177605 (= lt!57906 call!8014)))

(assert (=> b!177605 (= lt!57905 (maxPrefixZipperSequence!110 thiss!17480 (t!28011 rules!1920) (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))

(declare-fun b!177606 () Bool)

(declare-fun res!80196 () Bool)

(declare-fun e!107791 () Bool)

(assert (=> b!177606 (=> (not res!80196) (not e!107791))))

(declare-fun e!107792 () Bool)

(assert (=> b!177606 (= res!80196 e!107792)))

(declare-fun res!80194 () Bool)

(assert (=> b!177606 (=> res!80194 e!107792)))

(assert (=> b!177606 (= res!80194 (not (isDefined!192 lt!57903)))))

(declare-fun b!177607 () Bool)

(declare-fun e!107793 () Bool)

(assert (=> b!177607 (= e!107792 e!107793)))

(declare-fun res!80195 () Bool)

(assert (=> b!177607 (=> (not res!80195) (not e!107793))))

(declare-fun maxPrefixZipper!46 (LexerInterface!417 List!2965 List!2964) Option!340)

(assert (=> b!177607 (= res!80195 (= (_1!1667 (get!822 lt!57903)) (_1!1666 (get!821 (maxPrefixZipper!46 thiss!17480 rules!1920 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))))

(declare-fun b!177608 () Bool)

(assert (=> b!177608 (= e!107793 (= (list!1085 (_2!1667 (get!822 lt!57903))) (_2!1666 (get!821 (maxPrefixZipper!46 thiss!17480 rules!1920 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))))

(declare-fun bm!8009 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!47 (LexerInterface!417 Rule!862 BalanceConc!1776) Option!341)

(assert (=> bm!8009 (= call!8014 (maxPrefixOneRuleZipperSequence!47 thiss!17480 (h!8352 rules!1920) (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))

(declare-fun d!45399 () Bool)

(assert (=> d!45399 e!107791))

(declare-fun res!80199 () Bool)

(assert (=> d!45399 (=> (not res!80199) (not e!107791))))

(assert (=> d!45399 (= res!80199 (= (isDefined!192 lt!57903) (isDefined!191 (maxPrefixZipper!46 thiss!17480 rules!1920 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465))))))))))

(assert (=> d!45399 (= lt!57903 e!107795)))

(declare-fun c!35078 () Bool)

(assert (=> d!45399 (= c!35078 (and ((_ is Cons!2955) rules!1920) ((_ is Nil!2955) (t!28011 rules!1920))))))

(declare-fun lt!57902 () Unit!2684)

(declare-fun lt!57900 () Unit!2684)

(assert (=> d!45399 (= lt!57902 lt!57900)))

(declare-fun lt!57901 () List!2964)

(declare-fun lt!57904 () List!2964)

(assert (=> d!45399 (isPrefix!234 lt!57901 lt!57904)))

(assert (=> d!45399 (= lt!57900 (lemmaIsPrefixRefl!142 lt!57901 lt!57904))))

(assert (=> d!45399 (= lt!57904 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))

(assert (=> d!45399 (= lt!57901 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))

(assert (=> d!45399 (rulesValidInductive!127 thiss!17480 rules!1920)))

(assert (=> d!45399 (= (maxPrefixZipperSequence!110 thiss!17480 rules!1920 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))) lt!57903)))

(declare-fun b!177604 () Bool)

(assert (=> b!177604 (= e!107796 (= (list!1085 (_2!1667 (get!822 lt!57903))) (_2!1666 (get!821 (maxPrefix!147 thiss!17480 rules!1920 (list!1085 (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465)))))))))))

(declare-fun b!177609 () Bool)

(assert (=> b!177609 (= e!107791 e!107794)))

(declare-fun res!80197 () Bool)

(assert (=> b!177609 (=> res!80197 e!107794)))

(assert (=> b!177609 (= res!80197 (not (isDefined!192 lt!57903)))))

(declare-fun b!177610 () Bool)

(assert (=> b!177610 (= e!107795 call!8014)))

(assert (= (and d!45399 c!35078) b!177610))

(assert (= (and d!45399 (not c!35078)) b!177605))

(assert (= (or b!177610 b!177605) bm!8009))

(assert (= (and d!45399 res!80199) b!177606))

(assert (= (and b!177606 (not res!80194)) b!177607))

(assert (= (and b!177607 res!80195) b!177608))

(assert (= (and b!177606 res!80196) b!177609))

(assert (= (and b!177609 (not res!80197)) b!177603))

(assert (= (and b!177603 res!80198) b!177604))

(assert (=> b!177604 m!178639))

(declare-fun m!179579 () Bool)

(assert (=> b!177604 m!179579))

(assert (=> b!177604 m!179579))

(declare-fun m!179581 () Bool)

(assert (=> b!177604 m!179581))

(declare-fun m!179583 () Bool)

(assert (=> b!177604 m!179583))

(assert (=> b!177604 m!179581))

(declare-fun m!179585 () Bool)

(assert (=> b!177604 m!179585))

(declare-fun m!179587 () Bool)

(assert (=> b!177604 m!179587))

(declare-fun m!179589 () Bool)

(assert (=> b!177606 m!179589))

(assert (=> bm!8009 m!178639))

(declare-fun m!179591 () Bool)

(assert (=> bm!8009 m!179591))

(assert (=> b!177603 m!179583))

(assert (=> b!177603 m!178639))

(assert (=> b!177603 m!179579))

(assert (=> b!177603 m!179579))

(assert (=> b!177603 m!179581))

(assert (=> b!177603 m!179581))

(assert (=> b!177603 m!179585))

(assert (=> b!177607 m!179583))

(assert (=> b!177607 m!178639))

(assert (=> b!177607 m!179579))

(assert (=> b!177607 m!179579))

(declare-fun m!179593 () Bool)

(assert (=> b!177607 m!179593))

(assert (=> b!177607 m!179593))

(declare-fun m!179595 () Bool)

(assert (=> b!177607 m!179595))

(assert (=> b!177608 m!178639))

(assert (=> b!177608 m!179579))

(assert (=> b!177608 m!179579))

(assert (=> b!177608 m!179593))

(assert (=> b!177608 m!179593))

(assert (=> b!177608 m!179595))

(assert (=> b!177608 m!179583))

(assert (=> b!177608 m!179587))

(assert (=> b!177609 m!179589))

(assert (=> d!45399 m!178639))

(assert (=> d!45399 m!179579))

(declare-fun m!179601 () Bool)

(assert (=> d!45399 m!179601))

(assert (=> d!45399 m!179589))

(assert (=> d!45399 m!179593))

(declare-fun m!179605 () Bool)

(assert (=> d!45399 m!179605))

(assert (=> d!45399 m!179009))

(declare-fun m!179609 () Bool)

(assert (=> d!45399 m!179609))

(assert (=> d!45399 m!179579))

(assert (=> d!45399 m!179593))

(assert (=> b!177605 m!178639))

(declare-fun m!179611 () Bool)

(assert (=> b!177605 m!179611))

(assert (=> b!177073 d!45399))

(declare-fun d!45419 () Bool)

(assert (=> d!45419 (= (seqFromList!439 (originalCharacters!574 (h!8353 tokens!465))) (fromListB!175 (originalCharacters!574 (h!8353 tokens!465))))))

(declare-fun bs!17798 () Bool)

(assert (= bs!17798 d!45419))

(declare-fun m!179613 () Bool)

(assert (=> bs!17798 m!179613))

(assert (=> b!177073 d!45419))

(declare-fun d!45421 () Bool)

(assert (=> d!45421 (dynLambda!1156 lambda!5140 (h!8353 tokens!465))))

(declare-fun lt!57909 () Unit!2684)

(declare-fun choose!1861 (List!2966 Int Token!806) Unit!2684)

(assert (=> d!45421 (= lt!57909 (choose!1861 tokens!465 lambda!5140 (h!8353 tokens!465)))))

(declare-fun e!107807 () Bool)

(assert (=> d!45421 e!107807))

(declare-fun res!80205 () Bool)

(assert (=> d!45421 (=> (not res!80205) (not e!107807))))

(assert (=> d!45421 (= res!80205 (forall!593 tokens!465 lambda!5140))))

(assert (=> d!45421 (= (forallContained!98 tokens!465 lambda!5140 (h!8353 tokens!465)) lt!57909)))

(declare-fun b!177626 () Bool)

(declare-fun contains!480 (List!2966 Token!806) Bool)

(assert (=> b!177626 (= e!107807 (contains!480 tokens!465 (h!8353 tokens!465)))))

(assert (= (and d!45421 res!80205) b!177626))

(declare-fun b_lambda!4231 () Bool)

(assert (=> (not b_lambda!4231) (not d!45421)))

(declare-fun m!179627 () Bool)

(assert (=> d!45421 m!179627))

(declare-fun m!179629 () Bool)

(assert (=> d!45421 m!179629))

(declare-fun m!179631 () Bool)

(assert (=> d!45421 m!179631))

(declare-fun m!179633 () Bool)

(assert (=> b!177626 m!179633))

(assert (=> b!177073 d!45421))

(declare-fun d!45431 () Bool)

(assert (=> d!45431 (= (inv!3788 (tag!709 (rule!1046 (h!8353 tokens!465)))) (= (mod (str.len (value!19448 (tag!709 (rule!1046 (h!8353 tokens!465))))) 2) 0))))

(assert (=> b!177052 d!45431))

(declare-fun d!45433 () Bool)

(declare-fun res!80206 () Bool)

(declare-fun e!107808 () Bool)

(assert (=> d!45433 (=> (not res!80206) (not e!107808))))

(assert (=> d!45433 (= res!80206 (semiInverseModEq!185 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toValue!1202 (transformation!531 (rule!1046 (h!8353 tokens!465))))))))

(assert (=> d!45433 (= (inv!3791 (transformation!531 (rule!1046 (h!8353 tokens!465)))) e!107808)))

(declare-fun b!177627 () Bool)

(assert (=> b!177627 (= e!107808 (equivClasses!168 (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toValue!1202 (transformation!531 (rule!1046 (h!8353 tokens!465))))))))

(assert (= (and d!45433 res!80206) b!177627))

(declare-fun m!179635 () Bool)

(assert (=> d!45433 m!179635))

(declare-fun m!179637 () Bool)

(assert (=> b!177627 m!179637))

(assert (=> b!177052 d!45433))

(declare-fun d!45435 () Bool)

(declare-fun lt!57933 () Bool)

(declare-fun e!107843 () Bool)

(assert (=> d!45435 (= lt!57933 e!107843)))

(declare-fun res!80259 () Bool)

(assert (=> d!45435 (=> (not res!80259) (not e!107843))))

(assert (=> d!45435 (= res!80259 (= (list!1087 (_1!1665 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 separatorToken!170))))) (list!1087 (singletonSeq!83 separatorToken!170))))))

(declare-fun e!107844 () Bool)

(assert (=> d!45435 (= lt!57933 e!107844)))

(declare-fun res!80260 () Bool)

(assert (=> d!45435 (=> (not res!80260) (not e!107844))))

(declare-fun lt!57932 () tuple2!2898)

(assert (=> d!45435 (= res!80260 (= (size!2444 (_1!1665 lt!57932)) 1))))

(assert (=> d!45435 (= lt!57932 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 separatorToken!170))))))

(assert (=> d!45435 (not (isEmpty!1295 rules!1920))))

(assert (=> d!45435 (= (rulesProduceIndividualToken!166 thiss!17480 rules!1920 separatorToken!170) lt!57933)))

(declare-fun b!177703 () Bool)

(declare-fun res!80258 () Bool)

(assert (=> b!177703 (=> (not res!80258) (not e!107844))))

(assert (=> b!177703 (= res!80258 (= (apply!435 (_1!1665 lt!57932) 0) separatorToken!170))))

(declare-fun b!177704 () Bool)

(declare-fun isEmpty!1305 (BalanceConc!1776) Bool)

(assert (=> b!177704 (= e!107844 (isEmpty!1305 (_2!1665 lt!57932)))))

(declare-fun b!177705 () Bool)

(assert (=> b!177705 (= e!107843 (isEmpty!1305 (_2!1665 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 separatorToken!170))))))))

(assert (= (and d!45435 res!80260) b!177703))

(assert (= (and b!177703 res!80258) b!177704))

(assert (= (and d!45435 res!80259) b!177705))

(assert (=> d!45435 m!178625))

(declare-fun m!179687 () Bool)

(assert (=> d!45435 m!179687))

(declare-fun m!179689 () Bool)

(assert (=> d!45435 m!179689))

(assert (=> d!45435 m!179689))

(declare-fun m!179691 () Bool)

(assert (=> d!45435 m!179691))

(assert (=> d!45435 m!179687))

(declare-fun m!179693 () Bool)

(assert (=> d!45435 m!179693))

(declare-fun m!179695 () Bool)

(assert (=> d!45435 m!179695))

(declare-fun m!179697 () Bool)

(assert (=> d!45435 m!179697))

(assert (=> d!45435 m!179687))

(declare-fun m!179699 () Bool)

(assert (=> b!177703 m!179699))

(declare-fun m!179701 () Bool)

(assert (=> b!177704 m!179701))

(assert (=> b!177705 m!179687))

(assert (=> b!177705 m!179687))

(assert (=> b!177705 m!179689))

(assert (=> b!177705 m!179689))

(assert (=> b!177705 m!179691))

(declare-fun m!179703 () Bool)

(assert (=> b!177705 m!179703))

(assert (=> b!177069 d!45435))

(declare-fun d!45445 () Bool)

(assert (=> d!45445 (= (inv!3788 (tag!709 (rule!1046 separatorToken!170))) (= (mod (str.len (value!19448 (tag!709 (rule!1046 separatorToken!170)))) 2) 0))))

(assert (=> b!177048 d!45445))

(declare-fun d!45447 () Bool)

(declare-fun res!80261 () Bool)

(declare-fun e!107845 () Bool)

(assert (=> d!45447 (=> (not res!80261) (not e!107845))))

(assert (=> d!45447 (= res!80261 (semiInverseModEq!185 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toValue!1202 (transformation!531 (rule!1046 separatorToken!170)))))))

(assert (=> d!45447 (= (inv!3791 (transformation!531 (rule!1046 separatorToken!170))) e!107845)))

(declare-fun b!177706 () Bool)

(assert (=> b!177706 (= e!107845 (equivClasses!168 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toValue!1202 (transformation!531 (rule!1046 separatorToken!170)))))))

(assert (= (and d!45447 res!80261) b!177706))

(declare-fun m!179705 () Bool)

(assert (=> d!45447 m!179705))

(declare-fun m!179707 () Bool)

(assert (=> b!177706 m!179707))

(assert (=> b!177048 d!45447))

(declare-fun d!45449 () Bool)

(declare-fun res!80262 () Bool)

(declare-fun e!107846 () Bool)

(assert (=> d!45449 (=> (not res!80262) (not e!107846))))

(assert (=> d!45449 (= res!80262 (not (isEmpty!1296 (originalCharacters!574 separatorToken!170))))))

(assert (=> d!45449 (= (inv!3792 separatorToken!170) e!107846)))

(declare-fun b!177707 () Bool)

(declare-fun res!80263 () Bool)

(assert (=> b!177707 (=> (not res!80263) (not e!107846))))

(assert (=> b!177707 (= res!80263 (= (originalCharacters!574 separatorToken!170) (list!1085 (dynLambda!1154 (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (value!19449 separatorToken!170)))))))

(declare-fun b!177708 () Bool)

(assert (=> b!177708 (= e!107846 (= (size!2443 separatorToken!170) (size!2448 (originalCharacters!574 separatorToken!170))))))

(assert (= (and d!45449 res!80262) b!177707))

(assert (= (and b!177707 res!80263) b!177708))

(declare-fun b_lambda!4233 () Bool)

(assert (=> (not b_lambda!4233) (not b!177707)))

(assert (=> b!177707 t!28032))

(declare-fun b_and!12043 () Bool)

(assert (= b_and!12013 (and (=> t!28032 result!10224) b_and!12043)))

(assert (=> b!177707 t!28034))

(declare-fun b_and!12045 () Bool)

(assert (= b_and!12015 (and (=> t!28034 result!10226) b_and!12045)))

(assert (=> b!177707 t!28036))

(declare-fun b_and!12047 () Bool)

(assert (= b_and!12017 (and (=> t!28036 result!10228) b_and!12047)))

(declare-fun m!179709 () Bool)

(assert (=> d!45449 m!179709))

(assert (=> b!177707 m!179239))

(assert (=> b!177707 m!179239))

(declare-fun m!179711 () Bool)

(assert (=> b!177707 m!179711))

(declare-fun m!179713 () Bool)

(assert (=> b!177708 m!179713))

(assert (=> start!19190 d!45449))

(declare-fun d!45451 () Bool)

(declare-fun c!35100 () Bool)

(assert (=> d!45451 (= c!35100 ((_ is IntegerValue!1659) (value!19449 separatorToken!170)))))

(declare-fun e!107853 () Bool)

(assert (=> d!45451 (= (inv!21 (value!19449 separatorToken!170)) e!107853)))

(declare-fun b!177719 () Bool)

(declare-fun inv!16 (TokenValue!553) Bool)

(assert (=> b!177719 (= e!107853 (inv!16 (value!19449 separatorToken!170)))))

(declare-fun b!177720 () Bool)

(declare-fun e!107855 () Bool)

(declare-fun inv!17 (TokenValue!553) Bool)

(assert (=> b!177720 (= e!107855 (inv!17 (value!19449 separatorToken!170)))))

(declare-fun b!177721 () Bool)

(assert (=> b!177721 (= e!107853 e!107855)))

(declare-fun c!35101 () Bool)

(assert (=> b!177721 (= c!35101 ((_ is IntegerValue!1660) (value!19449 separatorToken!170)))))

(declare-fun b!177722 () Bool)

(declare-fun res!80266 () Bool)

(declare-fun e!107854 () Bool)

(assert (=> b!177722 (=> res!80266 e!107854)))

(assert (=> b!177722 (= res!80266 (not ((_ is IntegerValue!1661) (value!19449 separatorToken!170))))))

(assert (=> b!177722 (= e!107855 e!107854)))

(declare-fun b!177723 () Bool)

(declare-fun inv!15 (TokenValue!553) Bool)

(assert (=> b!177723 (= e!107854 (inv!15 (value!19449 separatorToken!170)))))

(assert (= (and d!45451 c!35100) b!177719))

(assert (= (and d!45451 (not c!35100)) b!177721))

(assert (= (and b!177721 c!35101) b!177720))

(assert (= (and b!177721 (not c!35101)) b!177722))

(assert (= (and b!177722 (not res!80266)) b!177723))

(declare-fun m!179715 () Bool)

(assert (=> b!177719 m!179715))

(declare-fun m!179717 () Bool)

(assert (=> b!177720 m!179717))

(declare-fun m!179719 () Bool)

(assert (=> b!177723 m!179719))

(assert (=> b!177070 d!45451))

(declare-fun d!45453 () Bool)

(declare-fun c!35102 () Bool)

(assert (=> d!45453 (= c!35102 ((_ is IntegerValue!1659) (value!19449 (h!8353 tokens!465))))))

(declare-fun e!107856 () Bool)

(assert (=> d!45453 (= (inv!21 (value!19449 (h!8353 tokens!465))) e!107856)))

(declare-fun b!177724 () Bool)

(assert (=> b!177724 (= e!107856 (inv!16 (value!19449 (h!8353 tokens!465))))))

(declare-fun b!177725 () Bool)

(declare-fun e!107858 () Bool)

(assert (=> b!177725 (= e!107858 (inv!17 (value!19449 (h!8353 tokens!465))))))

(declare-fun b!177726 () Bool)

(assert (=> b!177726 (= e!107856 e!107858)))

(declare-fun c!35103 () Bool)

(assert (=> b!177726 (= c!35103 ((_ is IntegerValue!1660) (value!19449 (h!8353 tokens!465))))))

(declare-fun b!177727 () Bool)

(declare-fun res!80267 () Bool)

(declare-fun e!107857 () Bool)

(assert (=> b!177727 (=> res!80267 e!107857)))

(assert (=> b!177727 (= res!80267 (not ((_ is IntegerValue!1661) (value!19449 (h!8353 tokens!465)))))))

(assert (=> b!177727 (= e!107858 e!107857)))

(declare-fun b!177728 () Bool)

(assert (=> b!177728 (= e!107857 (inv!15 (value!19449 (h!8353 tokens!465))))))

(assert (= (and d!45453 c!35102) b!177724))

(assert (= (and d!45453 (not c!35102)) b!177726))

(assert (= (and b!177726 c!35103) b!177725))

(assert (= (and b!177726 (not c!35103)) b!177727))

(assert (= (and b!177727 (not res!80267)) b!177728))

(declare-fun m!179721 () Bool)

(assert (=> b!177724 m!179721))

(declare-fun m!179723 () Bool)

(assert (=> b!177725 m!179723))

(declare-fun m!179725 () Bool)

(assert (=> b!177728 m!179725))

(assert (=> b!177049 d!45453))

(declare-fun d!45455 () Bool)

(declare-fun lt!57935 () Bool)

(declare-fun e!107859 () Bool)

(assert (=> d!45455 (= lt!57935 e!107859)))

(declare-fun res!80269 () Bool)

(assert (=> d!45455 (=> (not res!80269) (not e!107859))))

(assert (=> d!45455 (= res!80269 (= (list!1087 (_1!1665 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 (h!8353 tokens!465)))))) (list!1087 (singletonSeq!83 (h!8353 tokens!465)))))))

(declare-fun e!107860 () Bool)

(assert (=> d!45455 (= lt!57935 e!107860)))

(declare-fun res!80270 () Bool)

(assert (=> d!45455 (=> (not res!80270) (not e!107860))))

(declare-fun lt!57934 () tuple2!2898)

(assert (=> d!45455 (= res!80270 (= (size!2444 (_1!1665 lt!57934)) 1))))

(assert (=> d!45455 (= lt!57934 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 (h!8353 tokens!465)))))))

(assert (=> d!45455 (not (isEmpty!1295 rules!1920))))

(assert (=> d!45455 (= (rulesProduceIndividualToken!166 thiss!17480 rules!1920 (h!8353 tokens!465)) lt!57935)))

(declare-fun b!177729 () Bool)

(declare-fun res!80268 () Bool)

(assert (=> b!177729 (=> (not res!80268) (not e!107860))))

(assert (=> b!177729 (= res!80268 (= (apply!435 (_1!1665 lt!57934) 0) (h!8353 tokens!465)))))

(declare-fun b!177730 () Bool)

(assert (=> b!177730 (= e!107860 (isEmpty!1305 (_2!1665 lt!57934)))))

(declare-fun b!177731 () Bool)

(assert (=> b!177731 (= e!107859 (isEmpty!1305 (_2!1665 (lex!217 thiss!17480 rules!1920 (print!148 thiss!17480 (singletonSeq!83 (h!8353 tokens!465)))))))))

(assert (= (and d!45455 res!80270) b!177729))

(assert (= (and b!177729 res!80268) b!177730))

(assert (= (and d!45455 res!80269) b!177731))

(assert (=> d!45455 m!178625))

(assert (=> d!45455 m!178655))

(assert (=> d!45455 m!178881))

(assert (=> d!45455 m!178881))

(declare-fun m!179727 () Bool)

(assert (=> d!45455 m!179727))

(assert (=> d!45455 m!178655))

(declare-fun m!179729 () Bool)

(assert (=> d!45455 m!179729))

(declare-fun m!179731 () Bool)

(assert (=> d!45455 m!179731))

(declare-fun m!179733 () Bool)

(assert (=> d!45455 m!179733))

(assert (=> d!45455 m!178655))

(declare-fun m!179735 () Bool)

(assert (=> b!177729 m!179735))

(declare-fun m!179737 () Bool)

(assert (=> b!177730 m!179737))

(assert (=> b!177731 m!178655))

(assert (=> b!177731 m!178655))

(assert (=> b!177731 m!178881))

(assert (=> b!177731 m!178881))

(assert (=> b!177731 m!179727))

(declare-fun m!179739 () Bool)

(assert (=> b!177731 m!179739))

(assert (=> b!177071 d!45455))

(declare-fun b!177742 () Bool)

(declare-fun e!107863 () Bool)

(declare-fun tp_is_empty!1665 () Bool)

(assert (=> b!177742 (= e!107863 tp_is_empty!1665)))

(declare-fun b!177743 () Bool)

(declare-fun tp!85426 () Bool)

(declare-fun tp!85422 () Bool)

(assert (=> b!177743 (= e!107863 (and tp!85426 tp!85422))))

(declare-fun b!177745 () Bool)

(declare-fun tp!85423 () Bool)

(declare-fun tp!85425 () Bool)

(assert (=> b!177745 (= e!107863 (and tp!85423 tp!85425))))

(assert (=> b!177057 (= tp!85395 e!107863)))

(declare-fun b!177744 () Bool)

(declare-fun tp!85424 () Bool)

(assert (=> b!177744 (= e!107863 tp!85424)))

(assert (= (and b!177057 ((_ is ElementMatch!755) (regex!531 (h!8352 rules!1920)))) b!177742))

(assert (= (and b!177057 ((_ is Concat!1309) (regex!531 (h!8352 rules!1920)))) b!177743))

(assert (= (and b!177057 ((_ is Star!755) (regex!531 (h!8352 rules!1920)))) b!177744))

(assert (= (and b!177057 ((_ is Union!755) (regex!531 (h!8352 rules!1920)))) b!177745))

(declare-fun b!177759 () Bool)

(declare-fun b_free!6781 () Bool)

(declare-fun b_next!6781 () Bool)

(assert (=> b!177759 (= b_free!6781 (not b_next!6781))))

(declare-fun tp!85440 () Bool)

(declare-fun b_and!12049 () Bool)

(assert (=> b!177759 (= tp!85440 b_and!12049)))

(declare-fun b_free!6783 () Bool)

(declare-fun b_next!6783 () Bool)

(assert (=> b!177759 (= b_free!6783 (not b_next!6783))))

(declare-fun t!28064 () Bool)

(declare-fun tb!7481 () Bool)

(assert (=> (and b!177759 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465))))) t!28064) tb!7481))

(declare-fun result!10248 () Bool)

(assert (= result!10248 result!10216))

(assert (=> b!177293 t!28064))

(declare-fun t!28066 () Bool)

(declare-fun tb!7483 () Bool)

(assert (=> (and b!177759 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170)))) t!28066) tb!7483))

(declare-fun result!10250 () Bool)

(assert (= result!10250 result!10224))

(assert (=> d!45333 t!28066))

(assert (=> d!45339 t!28064))

(assert (=> b!177707 t!28066))

(declare-fun b_and!12051 () Bool)

(declare-fun tp!85439 () Bool)

(assert (=> b!177759 (= tp!85439 (and (=> t!28064 result!10248) (=> t!28066 result!10250) b_and!12051))))

(declare-fun e!107880 () Bool)

(declare-fun tp!85437 () Bool)

(declare-fun e!107878 () Bool)

(declare-fun b!177757 () Bool)

(assert (=> b!177757 (= e!107880 (and (inv!21 (value!19449 (h!8353 (t!28012 tokens!465)))) e!107878 tp!85437))))

(declare-fun tp!85438 () Bool)

(declare-fun b!177758 () Bool)

(declare-fun e!107879 () Bool)

(assert (=> b!177758 (= e!107878 (and tp!85438 (inv!3788 (tag!709 (rule!1046 (h!8353 (t!28012 tokens!465))))) (inv!3791 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) e!107879))))

(declare-fun e!107881 () Bool)

(declare-fun b!177756 () Bool)

(declare-fun tp!85441 () Bool)

(assert (=> b!177756 (= e!107881 (and (inv!3792 (h!8353 (t!28012 tokens!465))) e!107880 tp!85441))))

(assert (=> b!177065 (= tp!85391 e!107881)))

(assert (=> b!177759 (= e!107879 (and tp!85440 tp!85439))))

(assert (= b!177758 b!177759))

(assert (= b!177757 b!177758))

(assert (= b!177756 b!177757))

(assert (= (and b!177065 ((_ is Cons!2956) (t!28012 tokens!465))) b!177756))

(declare-fun m!179741 () Bool)

(assert (=> b!177757 m!179741))

(declare-fun m!179743 () Bool)

(assert (=> b!177758 m!179743))

(declare-fun m!179745 () Bool)

(assert (=> b!177758 m!179745))

(declare-fun m!179747 () Bool)

(assert (=> b!177756 m!179747))

(declare-fun b!177770 () Bool)

(declare-fun b_free!6785 () Bool)

(declare-fun b_next!6785 () Bool)

(assert (=> b!177770 (= b_free!6785 (not b_next!6785))))

(declare-fun tp!85450 () Bool)

(declare-fun b_and!12053 () Bool)

(assert (=> b!177770 (= tp!85450 b_and!12053)))

(declare-fun b_free!6787 () Bool)

(declare-fun b_next!6787 () Bool)

(assert (=> b!177770 (= b_free!6787 (not b_next!6787))))

(declare-fun tb!7485 () Bool)

(declare-fun t!28068 () Bool)

(assert (=> (and b!177770 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465))))) t!28068) tb!7485))

(declare-fun result!10254 () Bool)

(assert (= result!10254 result!10216))

(assert (=> b!177293 t!28068))

(declare-fun t!28070 () Bool)

(declare-fun tb!7487 () Bool)

(assert (=> (and b!177770 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170)))) t!28070) tb!7487))

(declare-fun result!10256 () Bool)

(assert (= result!10256 result!10224))

(assert (=> d!45333 t!28070))

(assert (=> d!45339 t!28068))

(assert (=> b!177707 t!28070))

(declare-fun b_and!12055 () Bool)

(declare-fun tp!85453 () Bool)

(assert (=> b!177770 (= tp!85453 (and (=> t!28068 result!10254) (=> t!28070 result!10256) b_and!12055))))

(declare-fun e!107891 () Bool)

(assert (=> b!177770 (= e!107891 (and tp!85450 tp!85453))))

(declare-fun e!107893 () Bool)

(declare-fun b!177769 () Bool)

(declare-fun tp!85451 () Bool)

(assert (=> b!177769 (= e!107893 (and tp!85451 (inv!3788 (tag!709 (h!8352 (t!28011 rules!1920)))) (inv!3791 (transformation!531 (h!8352 (t!28011 rules!1920)))) e!107891))))

(declare-fun b!177768 () Bool)

(declare-fun e!107892 () Bool)

(declare-fun tp!85452 () Bool)

(assert (=> b!177768 (= e!107892 (and e!107893 tp!85452))))

(assert (=> b!177072 (= tp!85399 e!107892)))

(assert (= b!177769 b!177770))

(assert (= b!177768 b!177769))

(assert (= (and b!177072 ((_ is Cons!2955) (t!28011 rules!1920))) b!177768))

(declare-fun m!179749 () Bool)

(assert (=> b!177769 m!179749))

(declare-fun m!179751 () Bool)

(assert (=> b!177769 m!179751))

(declare-fun b!177771 () Bool)

(declare-fun e!107894 () Bool)

(assert (=> b!177771 (= e!107894 tp_is_empty!1665)))

(declare-fun b!177772 () Bool)

(declare-fun tp!85458 () Bool)

(declare-fun tp!85454 () Bool)

(assert (=> b!177772 (= e!107894 (and tp!85458 tp!85454))))

(declare-fun b!177774 () Bool)

(declare-fun tp!85455 () Bool)

(declare-fun tp!85457 () Bool)

(assert (=> b!177774 (= e!107894 (and tp!85455 tp!85457))))

(assert (=> b!177052 (= tp!85398 e!107894)))

(declare-fun b!177773 () Bool)

(declare-fun tp!85456 () Bool)

(assert (=> b!177773 (= e!107894 tp!85456)))

(assert (= (and b!177052 ((_ is ElementMatch!755) (regex!531 (rule!1046 (h!8353 tokens!465))))) b!177771))

(assert (= (and b!177052 ((_ is Concat!1309) (regex!531 (rule!1046 (h!8353 tokens!465))))) b!177772))

(assert (= (and b!177052 ((_ is Star!755) (regex!531 (rule!1046 (h!8353 tokens!465))))) b!177773))

(assert (= (and b!177052 ((_ is Union!755) (regex!531 (rule!1046 (h!8353 tokens!465))))) b!177774))

(declare-fun b!177775 () Bool)

(declare-fun e!107895 () Bool)

(assert (=> b!177775 (= e!107895 tp_is_empty!1665)))

(declare-fun b!177776 () Bool)

(declare-fun tp!85463 () Bool)

(declare-fun tp!85459 () Bool)

(assert (=> b!177776 (= e!107895 (and tp!85463 tp!85459))))

(declare-fun b!177778 () Bool)

(declare-fun tp!85460 () Bool)

(declare-fun tp!85462 () Bool)

(assert (=> b!177778 (= e!107895 (and tp!85460 tp!85462))))

(assert (=> b!177048 (= tp!85403 e!107895)))

(declare-fun b!177777 () Bool)

(declare-fun tp!85461 () Bool)

(assert (=> b!177777 (= e!107895 tp!85461)))

(assert (= (and b!177048 ((_ is ElementMatch!755) (regex!531 (rule!1046 separatorToken!170)))) b!177775))

(assert (= (and b!177048 ((_ is Concat!1309) (regex!531 (rule!1046 separatorToken!170)))) b!177776))

(assert (= (and b!177048 ((_ is Star!755) (regex!531 (rule!1046 separatorToken!170)))) b!177777))

(assert (= (and b!177048 ((_ is Union!755) (regex!531 (rule!1046 separatorToken!170)))) b!177778))

(declare-fun b!177781 () Bool)

(declare-fun e!107898 () Bool)

(assert (=> b!177781 (= e!107898 true)))

(declare-fun b!177780 () Bool)

(declare-fun e!107897 () Bool)

(assert (=> b!177780 (= e!107897 e!107898)))

(declare-fun b!177779 () Bool)

(declare-fun e!107896 () Bool)

(assert (=> b!177779 (= e!107896 e!107897)))

(assert (=> b!177088 e!107896))

(assert (= b!177780 b!177781))

(assert (= b!177779 b!177780))

(assert (= (and b!177088 ((_ is Cons!2955) (t!28011 rules!1920))) b!177779))

(assert (=> b!177781 (< (dynLambda!1151 order!1661 (toValue!1202 (transformation!531 (h!8352 (t!28011 rules!1920))))) (dynLambda!1152 order!1663 lambda!5140))))

(assert (=> b!177781 (< (dynLambda!1153 order!1665 (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920))))) (dynLambda!1152 order!1663 lambda!5140))))

(declare-fun b!177786 () Bool)

(declare-fun e!107901 () Bool)

(declare-fun tp!85466 () Bool)

(assert (=> b!177786 (= e!107901 (and tp_is_empty!1665 tp!85466))))

(assert (=> b!177070 (= tp!85392 e!107901)))

(assert (= (and b!177070 ((_ is Cons!2954) (originalCharacters!574 separatorToken!170))) b!177786))

(declare-fun b!177787 () Bool)

(declare-fun e!107902 () Bool)

(declare-fun tp!85467 () Bool)

(assert (=> b!177787 (= e!107902 (and tp_is_empty!1665 tp!85467))))

(assert (=> b!177049 (= tp!85396 e!107902)))

(assert (= (and b!177049 ((_ is Cons!2954) (originalCharacters!574 (h!8353 tokens!465)))) b!177787))

(declare-fun b_lambda!4235 () Bool)

(assert (= b_lambda!4231 (or b!177073 b_lambda!4235)))

(declare-fun bs!17802 () Bool)

(declare-fun d!45457 () Bool)

(assert (= bs!17802 (and d!45457 b!177073)))

(assert (=> bs!17802 (= (dynLambda!1156 lambda!5140 (h!8353 tokens!465)) (rulesProduceIndividualToken!166 thiss!17480 rules!1920 (h!8353 tokens!465)))))

(assert (=> bs!17802 m!178707))

(assert (=> d!45421 d!45457))

(declare-fun b_lambda!4237 () Bool)

(assert (= b_lambda!4213 (or b!177078 b_lambda!4237)))

(declare-fun bs!17803 () Bool)

(declare-fun d!45459 () Bool)

(assert (= bs!17803 (and d!45459 b!177078)))

(assert (=> bs!17803 (= (dynLambda!1156 lambda!5139 (h!8353 (t!28012 tokens!465))) (not (isSeparator!531 (rule!1046 (h!8353 (t!28012 tokens!465))))))))

(assert (=> b!177387 d!45459))

(declare-fun b_lambda!4239 () Bool)

(assert (= b_lambda!4233 (or (and b!177759 b_free!6783 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177770 b_free!6787 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177061 b_free!6771 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177054 b_free!6779 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177077 b_free!6775) b_lambda!4239)))

(declare-fun b_lambda!4241 () Bool)

(assert (= b_lambda!4217 (or (and b!177054 b_free!6779 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177061 b_free!6771) (and b!177077 b_free!6775 (= (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177759 b_free!6783 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177770 b_free!6787 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) b_lambda!4241)))

(declare-fun b_lambda!4243 () Bool)

(assert (= b_lambda!4209 (or (and b!177054 b_free!6779 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177061 b_free!6771) (and b!177077 b_free!6775 (= (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177759 b_free!6783 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) (and b!177770 b_free!6787 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))))) b_lambda!4243)))

(declare-fun b_lambda!4245 () Bool)

(assert (= b_lambda!4211 (or b!177078 b_lambda!4245)))

(declare-fun bs!17804 () Bool)

(declare-fun d!45461 () Bool)

(assert (= bs!17804 (and d!45461 b!177078)))

(assert (=> bs!17804 (= (dynLambda!1156 lambda!5139 (h!8353 tokens!465)) (not (isSeparator!531 (rule!1046 (h!8353 tokens!465)))))))

(assert (=> b!177382 d!45461))

(declare-fun b_lambda!4247 () Bool)

(assert (= b_lambda!4215 (or (and b!177759 b_free!6783 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 (t!28012 tokens!465))))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177770 b_free!6787 (= (toChars!1061 (transformation!531 (h!8352 (t!28011 rules!1920)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177061 b_free!6771 (= (toChars!1061 (transformation!531 (rule!1046 (h!8353 tokens!465)))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177054 b_free!6779 (= (toChars!1061 (transformation!531 (h!8352 rules!1920))) (toChars!1061 (transformation!531 (rule!1046 separatorToken!170))))) (and b!177077 b_free!6775) b_lambda!4247)))

(check-sat (not d!45319) (not b!177235) tp_is_empty!1665 (not b_lambda!4243) (not b!177769) (not bm!7947) (not b!177774) b_and!12043 (not d!45339) (not bm!7974) (not b!177326) (not b_next!6775) (not b!177394) (not d!45275) (not b_lambda!4247) (not b!177405) (not b!177358) (not bm!7975) (not b!177526) (not d!45303) (not b!177743) (not d!45433) (not d!45395) b_and!11989 (not bm!7946) (not b!177391) (not b!177421) (not b!177451) (not b_next!6769) (not d!45321) (not d!45341) (not b!177327) (not b!177412) (not b!177719) (not d!45345) (not bm!7972) (not b!177414) (not d!45385) b_and!11997 (not b!177424) (not b!177330) (not b!177223) (not b!177778) (not b!177098) (not b!177279) (not d!45397) (not bm!7950) (not b!177563) (not bm!7970) (not bs!17802) (not b!177772) (not d!45347) (not b!177225) (not d!45297) (not b!177288) (not b!177237) (not bm!7976) (not b!177280) (not d!45455) (not b!177705) (not b!177564) (not b!177786) (not d!45317) (not b!177609) (not d!45421) (not b!177756) (not b!177527) (not b!177729) (not b_lambda!4237) (not b!177155) (not b_lambda!4245) (not bm!8009) (not b_next!6771) (not b!177603) b_and!12053 (not b!177730) (not b!177383) (not b!177779) (not d!45333) (not b!177150) (not b!177359) b_and!12047 (not d!45295) (not bm!7944) (not b!177723) (not b!177450) (not b!177153) (not b!177149) (not b!177744) (not d!45285) (not b_lambda!4239) (not d!45315) (not bm!7977) (not d!45283) (not b!177398) (not b!177427) (not b!177707) (not bm!7929) (not b!177221) (not b!177388) (not b!177708) b_and!12055 (not b!177787) (not b!177332) (not b!177704) (not b!177284) (not b!177728) (not b!177409) (not b_lambda!4241) (not b!177395) (not bm!7953) (not b!177363) (not d!45327) (not d!45301) (not b!177386) (not b_next!6781) (not b!177777) (not b!177605) (not d!45293) (not b_lambda!4235) b_and!12049 (not b!177525) (not d!45281) (not d!45335) (not b!177725) (not b!177328) (not b_next!6787) (not d!45235) (not b!177607) (not d!45323) (not b!177420) (not tb!7463) (not d!45287) (not b!177426) (not b!177294) (not b!177608) (not b!177147) b_and!12045 (not b!177523) (not bm!7943) (not d!45237) (not b_next!6773) (not b!177240) (not b!177757) (not b!177606) (not bm!7928) (not b!177720) (not d!45337) (not bm!7930) (not d!45329) (not b!177410) (not d!45447) (not d!45399) (not b_next!6779) (not b!177703) (not d!45419) b_and!12051 (not b!177768) (not b!177287) (not d!45383) (not b!177331) (not b!177156) (not b!177745) (not b!177324) (not b!177758) (not b!177325) (not b!177390) (not b!177627) (not b!177299) (not b!177275) (not d!45291) (not d!45449) (not bm!7973) (not b!177245) (not bm!7969) (not b!177097) (not d!45435) (not b!177415) (not b!177706) (not b!177226) b_and!11993 (not d!45331) (not b!177604) (not b!177404) (not b_next!6783) (not b!177400) (not b!177402) (not b!177776) (not b!177449) (not b!177293) (not bm!7931) (not b!177731) (not b!177219) (not b!177418) (not d!45309) (not b!177626) (not b!177724) (not b_next!6777) (not tb!7457) (not d!45277) (not b!177773) (not b_next!6785))
(check-sat b_and!11989 (not b_next!6769) b_and!11997 b_and!12047 b_and!12055 (not b_next!6781) b_and!12049 (not b_next!6787) (not b_next!6779) b_and!12051 b_and!12043 (not b_next!6775) (not b_next!6771) b_and!12053 b_and!12045 (not b_next!6773) b_and!11993 (not b_next!6783) (not b_next!6785) (not b_next!6777))
