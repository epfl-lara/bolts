; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56464 () Bool)

(assert start!56464)

(declare-fun b!597056 () Bool)

(declare-fun b_free!16909 () Bool)

(declare-fun b_next!16925 () Bool)

(assert (=> b!597056 (= b_free!16909 (not b_next!16925))))

(declare-fun tp!186130 () Bool)

(declare-fun b_and!58931 () Bool)

(assert (=> b!597056 (= tp!186130 b_and!58931)))

(declare-fun b_free!16911 () Bool)

(declare-fun b_next!16927 () Bool)

(assert (=> b!597056 (= b_free!16911 (not b_next!16927))))

(declare-fun tp!186129 () Bool)

(declare-fun b_and!58933 () Bool)

(assert (=> b!597056 (= tp!186129 b_and!58933)))

(declare-fun b!597066 () Bool)

(declare-fun b_free!16913 () Bool)

(declare-fun b_next!16929 () Bool)

(assert (=> b!597066 (= b_free!16913 (not b_next!16929))))

(declare-fun tp!186125 () Bool)

(declare-fun b_and!58935 () Bool)

(assert (=> b!597066 (= tp!186125 b_and!58935)))

(declare-fun b_free!16915 () Bool)

(declare-fun b_next!16931 () Bool)

(assert (=> b!597066 (= b_free!16915 (not b_next!16931))))

(declare-fun tp!186128 () Bool)

(declare-fun b_and!58937 () Bool)

(assert (=> b!597066 (= tp!186128 b_and!58937)))

(declare-fun res!257885 () Bool)

(declare-fun e!361450 () Bool)

(assert (=> start!56464 (=> (not res!257885) (not e!361450))))

(declare-datatypes ((LexerInterface!1063 0))(
  ( (LexerInterfaceExt!1060 (__x!4300 Int)) (Lexer!1061) )
))
(declare-fun thiss!22590 () LexerInterface!1063)

(get-info :version)

(assert (=> start!56464 (= res!257885 ((_ is Lexer!1061) thiss!22590))))

(assert (=> start!56464 e!361450))

(declare-fun e!361449 () Bool)

(assert (=> start!56464 e!361449))

(declare-fun e!361447 () Bool)

(assert (=> start!56464 e!361447))

(declare-datatypes ((C!3944 0))(
  ( (C!3945 (val!2198 Int)) )
))
(declare-datatypes ((List!5956 0))(
  ( (Nil!5946) (Cons!5946 (h!11347 (_ BitVec 16)) (t!79537 List!5956)) )
))
(declare-datatypes ((TokenValue!1201 0))(
  ( (FloatLiteralValue!2402 (text!8852 List!5956)) (TokenValueExt!1200 (__x!4301 Int)) (Broken!6005 (value!38385 List!5956)) (Object!1210) (End!1201) (Def!1201) (Underscore!1201) (Match!1201) (Else!1201) (Error!1201) (Case!1201) (If!1201) (Extends!1201) (Abstract!1201) (Class!1201) (Val!1201) (DelimiterValue!2402 (del!1261 List!5956)) (KeywordValue!1207 (value!38386 List!5956)) (CommentValue!2402 (value!38387 List!5956)) (WhitespaceValue!2402 (value!38388 List!5956)) (IndentationValue!1201 (value!38389 List!5956)) (String!7748) (Int32!1201) (Broken!6006 (value!38390 List!5956)) (Boolean!1202) (Unit!10820) (OperatorValue!1204 (op!1261 List!5956)) (IdentifierValue!2402 (value!38391 List!5956)) (IdentifierValue!2403 (value!38392 List!5956)) (WhitespaceValue!2403 (value!38393 List!5956)) (True!2402) (False!2402) (Broken!6007 (value!38394 List!5956)) (Broken!6008 (value!38395 List!5956)) (True!2403) (RightBrace!1201) (RightBracket!1201) (Colon!1201) (Null!1201) (Comma!1201) (LeftBracket!1201) (False!2403) (LeftBrace!1201) (ImaginaryLiteralValue!1201 (text!8853 List!5956)) (StringLiteralValue!3603 (value!38396 List!5956)) (EOFValue!1201 (value!38397 List!5956)) (IdentValue!1201 (value!38398 List!5956)) (DelimiterValue!2403 (value!38399 List!5956)) (DedentValue!1201 (value!38400 List!5956)) (NewLineValue!1201 (value!38401 List!5956)) (IntegerValue!3603 (value!38402 (_ BitVec 32)) (text!8854 List!5956)) (IntegerValue!3604 (value!38403 Int) (text!8855 List!5956)) (Times!1201) (Or!1201) (Equal!1201) (Minus!1201) (Broken!6009 (value!38404 List!5956)) (And!1201) (Div!1201) (LessEqual!1201) (Mod!1201) (Concat!2712) (Not!1201) (Plus!1201) (SpaceValue!1201 (value!38405 List!5956)) (IntegerValue!3605 (value!38406 Int) (text!8856 List!5956)) (StringLiteralValue!3604 (text!8857 List!5956)) (FloatLiteralValue!2403 (text!8858 List!5956)) (BytesLiteralValue!1201 (value!38407 List!5956)) (CommentValue!2403 (value!38408 List!5956)) (StringLiteralValue!3605 (value!38409 List!5956)) (ErrorTokenValue!1201 (msg!1262 List!5956)) )
))
(declare-datatypes ((Regex!1511 0))(
  ( (ElementMatch!1511 (c!111029 C!3944)) (Concat!2713 (regOne!3534 Regex!1511) (regTwo!3534 Regex!1511)) (EmptyExpr!1511) (Star!1511 (reg!1840 Regex!1511)) (EmptyLang!1511) (Union!1511 (regOne!3535 Regex!1511) (regTwo!3535 Regex!1511)) )
))
(declare-datatypes ((String!7749 0))(
  ( (String!7750 (value!38410 String)) )
))
(declare-datatypes ((List!5957 0))(
  ( (Nil!5947) (Cons!5947 (h!11348 C!3944) (t!79538 List!5957)) )
))
(declare-datatypes ((IArray!3789 0))(
  ( (IArray!3790 (innerList!1952 List!5957)) )
))
(declare-datatypes ((Conc!1894 0))(
  ( (Node!1894 (left!4795 Conc!1894) (right!5125 Conc!1894) (csize!4018 Int) (cheight!2105 Int)) (Leaf!2990 (xs!4531 IArray!3789) (csize!4019 Int)) (Empty!1894) )
))
(declare-datatypes ((BalanceConc!3796 0))(
  ( (BalanceConc!3797 (c!111030 Conc!1894)) )
))
(declare-datatypes ((TokenValueInjection!2170 0))(
  ( (TokenValueInjection!2171 (toValue!2068 Int) (toChars!1927 Int)) )
))
(declare-datatypes ((Rule!2154 0))(
  ( (Rule!2155 (regex!1177 Regex!1511) (tag!1439 String!7749) (isSeparator!1177 Bool) (transformation!1177 TokenValueInjection!2170)) )
))
(declare-datatypes ((Token!2090 0))(
  ( (Token!2091 (value!38411 TokenValue!1201) (rule!1947 Rule!2154) (size!4688 Int) (originalCharacters!1216 List!5957)) )
))
(declare-fun token!491 () Token!2090)

(declare-fun e!361446 () Bool)

(declare-fun inv!7538 (Token!2090) Bool)

(assert (=> start!56464 (and (inv!7538 token!491) e!361446)))

(assert (=> start!56464 true))

(declare-fun e!361443 () Bool)

(assert (=> start!56464 e!361443))

(declare-fun b!597043 () Bool)

(declare-fun tp_is_empty!3377 () Bool)

(declare-fun tp!186131 () Bool)

(assert (=> b!597043 (= e!361443 (and tp_is_empty!3377 tp!186131))))

(declare-fun b!597044 () Bool)

(declare-datatypes ((Unit!10821 0))(
  ( (Unit!10822) )
))
(declare-fun e!361448 () Unit!10821)

(declare-fun Unit!10823 () Unit!10821)

(assert (=> b!597044 (= e!361448 Unit!10823)))

(assert (=> b!597044 false))

(declare-fun tp!186127 () Bool)

(declare-fun b!597045 () Bool)

(declare-fun e!361439 () Bool)

(declare-datatypes ((List!5958 0))(
  ( (Nil!5948) (Cons!5948 (h!11349 Rule!2154) (t!79539 List!5958)) )
))
(declare-fun rules!3103 () List!5958)

(declare-fun e!361436 () Bool)

(declare-fun inv!7535 (String!7749) Bool)

(declare-fun inv!7539 (TokenValueInjection!2170) Bool)

(assert (=> b!597045 (= e!361439 (and tp!186127 (inv!7535 (tag!1439 (h!11349 rules!3103))) (inv!7539 (transformation!1177 (h!11349 rules!3103))) e!361436))))

(declare-fun e!361434 () Bool)

(declare-fun tp!186123 () Bool)

(declare-fun b!597046 () Bool)

(declare-fun inv!21 (TokenValue!1201) Bool)

(assert (=> b!597046 (= e!361446 (and (inv!21 (value!38411 token!491)) e!361434 tp!186123))))

(declare-fun b!597047 () Bool)

(declare-fun tp!186124 () Bool)

(assert (=> b!597047 (= e!361447 (and e!361439 tp!186124))))

(declare-fun b!597048 () Bool)

(declare-fun e!361441 () Bool)

(declare-fun e!361452 () Bool)

(assert (=> b!597048 (= e!361441 e!361452)))

(declare-fun res!257877 () Bool)

(assert (=> b!597048 (=> (not res!257877) (not e!361452))))

(declare-fun lt!253780 () List!5957)

(declare-fun lt!253776 () List!5957)

(assert (=> b!597048 (= res!257877 (= lt!253780 lt!253776))))

(declare-fun lt!253763 () List!5957)

(declare-fun suffix!1342 () List!5957)

(declare-fun ++!1665 (List!5957 List!5957) List!5957)

(assert (=> b!597048 (= lt!253780 (++!1665 lt!253763 suffix!1342))))

(declare-fun lt!253770 () Int)

(declare-fun b!597049 () Bool)

(declare-fun e!361451 () Bool)

(assert (=> b!597049 (= e!361451 (and (= (size!4688 token!491) lt!253770) (= (originalCharacters!1216 token!491) lt!253763)))))

(declare-fun b!597050 () Bool)

(declare-fun res!257888 () Bool)

(assert (=> b!597050 (=> (not res!257888) (not e!361451))))

(declare-fun apply!1430 (TokenValueInjection!2170 BalanceConc!3796) TokenValue!1201)

(declare-fun seqFromList!1353 (List!5957) BalanceConc!3796)

(assert (=> b!597050 (= res!257888 (= (value!38411 token!491) (apply!1430 (transformation!1177 (rule!1947 token!491)) (seqFromList!1353 lt!253763))))))

(declare-fun b!597051 () Bool)

(declare-fun e!361437 () Bool)

(assert (=> b!597051 (= e!361437 e!361441)))

(declare-fun res!257884 () Bool)

(assert (=> b!597051 (=> (not res!257884) (not e!361441))))

(declare-datatypes ((tuple2!6848 0))(
  ( (tuple2!6849 (_1!3688 Token!2090) (_2!3688 List!5957)) )
))
(declare-datatypes ((Option!1528 0))(
  ( (None!1527) (Some!1527 (v!16414 tuple2!6848)) )
))
(declare-fun lt!253768 () Option!1528)

(assert (=> b!597051 (= res!257884 ((_ is Some!1527) lt!253768))))

(declare-fun input!2705 () List!5957)

(declare-fun maxPrefix!761 (LexerInterface!1063 List!5958 List!5957) Option!1528)

(assert (=> b!597051 (= lt!253768 (maxPrefix!761 thiss!22590 rules!3103 input!2705))))

(declare-fun b!597052 () Bool)

(declare-fun tp!186126 () Bool)

(assert (=> b!597052 (= e!361449 (and tp_is_empty!3377 tp!186126))))

(declare-fun tp!186132 () Bool)

(declare-fun b!597053 () Bool)

(declare-fun e!361438 () Bool)

(assert (=> b!597053 (= e!361434 (and tp!186132 (inv!7535 (tag!1439 (rule!1947 token!491))) (inv!7539 (transformation!1177 (rule!1947 token!491))) e!361438))))

(declare-fun b!597054 () Bool)

(declare-fun res!257881 () Bool)

(declare-fun e!361433 () Bool)

(assert (=> b!597054 (=> (not res!257881) (not e!361433))))

(declare-fun size!4689 (List!5957) Int)

(assert (=> b!597054 (= res!257881 (= (size!4688 (_1!3688 (v!16414 lt!253768))) (size!4689 (originalCharacters!1216 (_1!3688 (v!16414 lt!253768))))))))

(declare-fun b!597055 () Bool)

(declare-fun e!361445 () Bool)

(assert (=> b!597055 (= e!361452 (not e!361445))))

(declare-fun res!257883 () Bool)

(assert (=> b!597055 (=> res!257883 e!361445)))

(declare-fun isPrefix!805 (List!5957 List!5957) Bool)

(assert (=> b!597055 (= res!257883 (not (isPrefix!805 input!2705 lt!253780)))))

(assert (=> b!597055 (isPrefix!805 lt!253763 lt!253780)))

(declare-fun lt!253766 () Unit!10821)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!650 (List!5957 List!5957) Unit!10821)

(assert (=> b!597055 (= lt!253766 (lemmaConcatTwoListThenFirstIsPrefix!650 lt!253763 suffix!1342))))

(assert (=> b!597055 (isPrefix!805 input!2705 lt!253776)))

(declare-fun lt!253779 () Unit!10821)

(assert (=> b!597055 (= lt!253779 (lemmaConcatTwoListThenFirstIsPrefix!650 input!2705 suffix!1342))))

(assert (=> b!597055 e!361433))

(declare-fun res!257880 () Bool)

(assert (=> b!597055 (=> (not res!257880) (not e!361433))))

(declare-fun lt!253769 () TokenValue!1201)

(assert (=> b!597055 (= res!257880 (= (value!38411 (_1!3688 (v!16414 lt!253768))) lt!253769))))

(declare-fun lt!253784 () List!5957)

(assert (=> b!597055 (= lt!253769 (apply!1430 (transformation!1177 (rule!1947 (_1!3688 (v!16414 lt!253768)))) (seqFromList!1353 lt!253784)))))

(declare-fun lt!253783 () Unit!10821)

(declare-fun lemmaInv!285 (TokenValueInjection!2170) Unit!10821)

(assert (=> b!597055 (= lt!253783 (lemmaInv!285 (transformation!1177 (rule!1947 token!491))))))

(declare-fun lt!253778 () Unit!10821)

(assert (=> b!597055 (= lt!253778 (lemmaInv!285 (transformation!1177 (rule!1947 (_1!3688 (v!16414 lt!253768))))))))

(declare-fun ruleValid!375 (LexerInterface!1063 Rule!2154) Bool)

(assert (=> b!597055 (ruleValid!375 thiss!22590 (rule!1947 token!491))))

(declare-fun lt!253786 () Unit!10821)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!222 (LexerInterface!1063 Rule!2154 List!5958) Unit!10821)

(assert (=> b!597055 (= lt!253786 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!222 thiss!22590 (rule!1947 token!491) rules!3103))))

(assert (=> b!597055 (ruleValid!375 thiss!22590 (rule!1947 (_1!3688 (v!16414 lt!253768))))))

(declare-fun lt!253774 () Unit!10821)

(assert (=> b!597055 (= lt!253774 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!222 thiss!22590 (rule!1947 (_1!3688 (v!16414 lt!253768))) rules!3103))))

(assert (=> b!597055 (isPrefix!805 input!2705 input!2705)))

(declare-fun lt!253782 () Unit!10821)

(declare-fun lemmaIsPrefixRefl!541 (List!5957 List!5957) Unit!10821)

(assert (=> b!597055 (= lt!253782 (lemmaIsPrefixRefl!541 input!2705 input!2705))))

(declare-fun lt!253771 () List!5957)

(assert (=> b!597055 (= (_2!3688 (v!16414 lt!253768)) lt!253771)))

(declare-fun lt!253767 () Unit!10821)

(declare-fun lemmaSamePrefixThenSameSuffix!518 (List!5957 List!5957 List!5957 List!5957 List!5957) Unit!10821)

(assert (=> b!597055 (= lt!253767 (lemmaSamePrefixThenSameSuffix!518 lt!253784 (_2!3688 (v!16414 lt!253768)) lt!253784 lt!253771 input!2705))))

(declare-fun getSuffix!322 (List!5957 List!5957) List!5957)

(assert (=> b!597055 (= lt!253771 (getSuffix!322 input!2705 lt!253784))))

(assert (=> b!597055 (isPrefix!805 lt!253784 (++!1665 lt!253784 (_2!3688 (v!16414 lt!253768))))))

(declare-fun lt!253785 () Unit!10821)

(assert (=> b!597055 (= lt!253785 (lemmaConcatTwoListThenFirstIsPrefix!650 lt!253784 (_2!3688 (v!16414 lt!253768))))))

(declare-fun lt!253775 () Unit!10821)

(declare-fun lemmaCharactersSize!236 (Token!2090) Unit!10821)

(assert (=> b!597055 (= lt!253775 (lemmaCharactersSize!236 token!491))))

(declare-fun lt!253781 () Unit!10821)

(assert (=> b!597055 (= lt!253781 (lemmaCharactersSize!236 (_1!3688 (v!16414 lt!253768))))))

(declare-fun lt!253777 () Unit!10821)

(assert (=> b!597055 (= lt!253777 e!361448)))

(declare-fun c!111028 () Bool)

(declare-fun lt!253765 () Int)

(assert (=> b!597055 (= c!111028 (> lt!253765 lt!253770))))

(assert (=> b!597055 (= lt!253770 (size!4689 lt!253763))))

(assert (=> b!597055 (= lt!253765 (size!4689 lt!253784))))

(declare-fun list!2492 (BalanceConc!3796) List!5957)

(declare-fun charsOf!806 (Token!2090) BalanceConc!3796)

(assert (=> b!597055 (= lt!253784 (list!2492 (charsOf!806 (_1!3688 (v!16414 lt!253768)))))))

(assert (=> b!597055 (= lt!253768 (Some!1527 (v!16414 lt!253768)))))

(declare-fun lt!253773 () Unit!10821)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!250 (List!5957 List!5957 List!5957 List!5957) Unit!10821)

(assert (=> b!597055 (= lt!253773 (lemmaConcatSameAndSameSizesThenSameLists!250 lt!253763 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!597056 (= e!361438 (and tp!186130 tp!186129))))

(declare-fun b!597057 () Bool)

(declare-fun res!257876 () Bool)

(assert (=> b!597057 (=> (not res!257876) (not e!361450))))

(declare-fun rulesInvariant!1026 (LexerInterface!1063 List!5958) Bool)

(assert (=> b!597057 (= res!257876 (rulesInvariant!1026 thiss!22590 rules!3103))))

(declare-fun b!597058 () Bool)

(declare-fun e!361444 () Bool)

(assert (=> b!597058 (= e!361450 e!361444)))

(declare-fun res!257882 () Bool)

(assert (=> b!597058 (=> (not res!257882) (not e!361444))))

(assert (=> b!597058 (= res!257882 (= lt!253763 input!2705))))

(assert (=> b!597058 (= lt!253763 (list!2492 (charsOf!806 token!491)))))

(declare-fun b!597059 () Bool)

(declare-fun e!361435 () Bool)

(assert (=> b!597059 (= e!361435 e!361437)))

(declare-fun res!257886 () Bool)

(assert (=> b!597059 (=> (not res!257886) (not e!361437))))

(declare-fun lt!253764 () tuple2!6848)

(assert (=> b!597059 (= res!257886 (and (= (_1!3688 lt!253764) token!491) (= (_2!3688 lt!253764) suffix!1342)))))

(declare-fun lt!253761 () Option!1528)

(declare-fun get!2280 (Option!1528) tuple2!6848)

(assert (=> b!597059 (= lt!253764 (get!2280 lt!253761))))

(declare-fun b!597060 () Bool)

(assert (=> b!597060 (= e!361445 true)))

(assert (=> b!597060 e!361451))

(declare-fun res!257889 () Bool)

(assert (=> b!597060 (=> (not res!257889) (not e!361451))))

(declare-fun lt!253772 () List!5957)

(assert (=> b!597060 (= res!257889 (= suffix!1342 lt!253772))))

(declare-fun lt!253762 () Unit!10821)

(assert (=> b!597060 (= lt!253762 (lemmaSamePrefixThenSameSuffix!518 lt!253763 suffix!1342 lt!253763 lt!253772 lt!253776))))

(assert (=> b!597060 (= lt!253772 (getSuffix!322 lt!253776 lt!253763))))

(declare-fun b!597061 () Bool)

(declare-fun res!257890 () Bool)

(assert (=> b!597061 (=> (not res!257890) (not e!361450))))

(declare-fun isEmpty!4293 (List!5957) Bool)

(assert (=> b!597061 (= res!257890 (not (isEmpty!4293 input!2705)))))

(declare-fun b!597062 () Bool)

(declare-fun res!257878 () Bool)

(assert (=> b!597062 (=> (not res!257878) (not e!361450))))

(declare-fun isEmpty!4294 (List!5958) Bool)

(assert (=> b!597062 (= res!257878 (not (isEmpty!4294 rules!3103)))))

(declare-fun b!597063 () Bool)

(assert (=> b!597063 (= e!361444 e!361435)))

(declare-fun res!257887 () Bool)

(assert (=> b!597063 (=> (not res!257887) (not e!361435))))

(declare-fun isDefined!1339 (Option!1528) Bool)

(assert (=> b!597063 (= res!257887 (isDefined!1339 lt!253761))))

(assert (=> b!597063 (= lt!253761 (maxPrefix!761 thiss!22590 rules!3103 lt!253776))))

(assert (=> b!597063 (= lt!253776 (++!1665 input!2705 suffix!1342))))

(declare-fun b!597064 () Bool)

(declare-fun res!257879 () Bool)

(assert (=> b!597064 (=> (not res!257879) (not e!361451))))

(assert (=> b!597064 (= res!257879 (= (size!4688 token!491) (size!4689 (originalCharacters!1216 token!491))))))

(declare-fun b!597065 () Bool)

(assert (=> b!597065 (= e!361433 (and (= (size!4688 (_1!3688 (v!16414 lt!253768))) lt!253765) (= (originalCharacters!1216 (_1!3688 (v!16414 lt!253768))) lt!253784) (= (v!16414 lt!253768) (tuple2!6849 (Token!2091 lt!253769 (rule!1947 (_1!3688 (v!16414 lt!253768))) lt!253765 lt!253784) lt!253771))))))

(assert (=> b!597066 (= e!361436 (and tp!186125 tp!186128))))

(declare-fun b!597067 () Bool)

(declare-fun Unit!10824 () Unit!10821)

(assert (=> b!597067 (= e!361448 Unit!10824)))

(assert (= (and start!56464 res!257885) b!597062))

(assert (= (and b!597062 res!257878) b!597057))

(assert (= (and b!597057 res!257876) b!597061))

(assert (= (and b!597061 res!257890) b!597058))

(assert (= (and b!597058 res!257882) b!597063))

(assert (= (and b!597063 res!257887) b!597059))

(assert (= (and b!597059 res!257886) b!597051))

(assert (= (and b!597051 res!257884) b!597048))

(assert (= (and b!597048 res!257877) b!597055))

(assert (= (and b!597055 c!111028) b!597044))

(assert (= (and b!597055 (not c!111028)) b!597067))

(assert (= (and b!597055 res!257880) b!597054))

(assert (= (and b!597054 res!257881) b!597065))

(assert (= (and b!597055 (not res!257883)) b!597060))

(assert (= (and b!597060 res!257889) b!597050))

(assert (= (and b!597050 res!257888) b!597064))

(assert (= (and b!597064 res!257879) b!597049))

(assert (= (and start!56464 ((_ is Cons!5947) suffix!1342)) b!597052))

(assert (= b!597045 b!597066))

(assert (= b!597047 b!597045))

(assert (= (and start!56464 ((_ is Cons!5948) rules!3103)) b!597047))

(assert (= b!597053 b!597056))

(assert (= b!597046 b!597053))

(assert (= start!56464 b!597046))

(assert (= (and start!56464 ((_ is Cons!5947) input!2705)) b!597043))

(declare-fun m!860097 () Bool)

(assert (=> b!597063 m!860097))

(declare-fun m!860099 () Bool)

(assert (=> b!597063 m!860099))

(declare-fun m!860101 () Bool)

(assert (=> b!597063 m!860101))

(declare-fun m!860103 () Bool)

(assert (=> b!597054 m!860103))

(declare-fun m!860105 () Bool)

(assert (=> b!597053 m!860105))

(declare-fun m!860107 () Bool)

(assert (=> b!597053 m!860107))

(declare-fun m!860109 () Bool)

(assert (=> b!597050 m!860109))

(assert (=> b!597050 m!860109))

(declare-fun m!860111 () Bool)

(assert (=> b!597050 m!860111))

(declare-fun m!860113 () Bool)

(assert (=> b!597055 m!860113))

(declare-fun m!860115 () Bool)

(assert (=> b!597055 m!860115))

(declare-fun m!860117 () Bool)

(assert (=> b!597055 m!860117))

(declare-fun m!860119 () Bool)

(assert (=> b!597055 m!860119))

(declare-fun m!860121 () Bool)

(assert (=> b!597055 m!860121))

(declare-fun m!860123 () Bool)

(assert (=> b!597055 m!860123))

(declare-fun m!860125 () Bool)

(assert (=> b!597055 m!860125))

(declare-fun m!860127 () Bool)

(assert (=> b!597055 m!860127))

(assert (=> b!597055 m!860113))

(declare-fun m!860129 () Bool)

(assert (=> b!597055 m!860129))

(declare-fun m!860131 () Bool)

(assert (=> b!597055 m!860131))

(declare-fun m!860133 () Bool)

(assert (=> b!597055 m!860133))

(declare-fun m!860135 () Bool)

(assert (=> b!597055 m!860135))

(declare-fun m!860137 () Bool)

(assert (=> b!597055 m!860137))

(declare-fun m!860139 () Bool)

(assert (=> b!597055 m!860139))

(declare-fun m!860141 () Bool)

(assert (=> b!597055 m!860141))

(declare-fun m!860143 () Bool)

(assert (=> b!597055 m!860143))

(declare-fun m!860145 () Bool)

(assert (=> b!597055 m!860145))

(declare-fun m!860147 () Bool)

(assert (=> b!597055 m!860147))

(declare-fun m!860149 () Bool)

(assert (=> b!597055 m!860149))

(declare-fun m!860151 () Bool)

(assert (=> b!597055 m!860151))

(declare-fun m!860153 () Bool)

(assert (=> b!597055 m!860153))

(declare-fun m!860155 () Bool)

(assert (=> b!597055 m!860155))

(assert (=> b!597055 m!860121))

(declare-fun m!860157 () Bool)

(assert (=> b!597055 m!860157))

(assert (=> b!597055 m!860119))

(declare-fun m!860159 () Bool)

(assert (=> b!597055 m!860159))

(declare-fun m!860161 () Bool)

(assert (=> b!597055 m!860161))

(declare-fun m!860163 () Bool)

(assert (=> b!597055 m!860163))

(declare-fun m!860165 () Bool)

(assert (=> b!597055 m!860165))

(declare-fun m!860167 () Bool)

(assert (=> b!597046 m!860167))

(declare-fun m!860169 () Bool)

(assert (=> b!597060 m!860169))

(declare-fun m!860171 () Bool)

(assert (=> b!597060 m!860171))

(declare-fun m!860173 () Bool)

(assert (=> b!597062 m!860173))

(declare-fun m!860175 () Bool)

(assert (=> b!597064 m!860175))

(declare-fun m!860177 () Bool)

(assert (=> b!597061 m!860177))

(declare-fun m!860179 () Bool)

(assert (=> b!597045 m!860179))

(declare-fun m!860181 () Bool)

(assert (=> b!597045 m!860181))

(declare-fun m!860183 () Bool)

(assert (=> b!597059 m!860183))

(declare-fun m!860185 () Bool)

(assert (=> b!597048 m!860185))

(declare-fun m!860187 () Bool)

(assert (=> b!597057 m!860187))

(declare-fun m!860189 () Bool)

(assert (=> start!56464 m!860189))

(declare-fun m!860191 () Bool)

(assert (=> b!597058 m!860191))

(assert (=> b!597058 m!860191))

(declare-fun m!860193 () Bool)

(assert (=> b!597058 m!860193))

(declare-fun m!860195 () Bool)

(assert (=> b!597051 m!860195))

(check-sat (not b!597050) (not b_next!16925) (not b!597057) (not b!597052) (not b!597064) (not b!597062) b_and!58931 (not start!56464) (not b!597053) (not b!597043) (not b!597054) (not b_next!16927) (not b!597048) (not b_next!16931) (not b!597051) (not b!597046) (not b!597045) (not b!597047) (not b!597055) tp_is_empty!3377 (not b!597059) (not b!597058) (not b!597063) (not b!597060) (not b!597061) (not b_next!16929) b_and!58935 b_and!58937 b_and!58933)
(check-sat (not b_next!16927) (not b_next!16931) (not b_next!16925) b_and!58931 (not b_next!16929) b_and!58935 b_and!58937 b_and!58933)
