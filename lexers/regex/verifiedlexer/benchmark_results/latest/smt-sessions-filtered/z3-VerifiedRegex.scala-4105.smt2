; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220024 () Bool)

(assert start!220024)

(declare-fun b!2254519 () Bool)

(declare-fun b_free!66205 () Bool)

(declare-fun b_next!66909 () Bool)

(assert (=> b!2254519 (= b_free!66205 (not b_next!66909))))

(declare-fun tp!712471 () Bool)

(declare-fun b_and!176801 () Bool)

(assert (=> b!2254519 (= tp!712471 b_and!176801)))

(declare-fun b_free!66207 () Bool)

(declare-fun b_next!66911 () Bool)

(assert (=> b!2254519 (= b_free!66207 (not b_next!66911))))

(declare-fun tp!712470 () Bool)

(declare-fun b_and!176803 () Bool)

(assert (=> b!2254519 (= tp!712470 b_and!176803)))

(declare-fun b!2254516 () Bool)

(declare-fun b_free!66209 () Bool)

(declare-fun b_next!66913 () Bool)

(assert (=> b!2254516 (= b_free!66209 (not b_next!66913))))

(declare-fun tp!712469 () Bool)

(declare-fun b_and!176805 () Bool)

(assert (=> b!2254516 (= tp!712469 b_and!176805)))

(declare-fun b_free!66211 () Bool)

(declare-fun b_next!66915 () Bool)

(assert (=> b!2254516 (= b_free!66211 (not b_next!66915))))

(declare-fun tp!712466 () Bool)

(declare-fun b_and!176807 () Bool)

(assert (=> b!2254516 (= tp!712466 b_and!176807)))

(declare-fun b!2254508 () Bool)

(declare-fun b_free!66213 () Bool)

(declare-fun b_next!66917 () Bool)

(assert (=> b!2254508 (= b_free!66213 (not b_next!66917))))

(declare-fun tp!712477 () Bool)

(declare-fun b_and!176809 () Bool)

(assert (=> b!2254508 (= tp!712477 b_and!176809)))

(declare-fun b_free!66215 () Bool)

(declare-fun b_next!66919 () Bool)

(assert (=> b!2254508 (= b_free!66215 (not b_next!66919))))

(declare-fun tp!712473 () Bool)

(declare-fun b_and!176811 () Bool)

(assert (=> b!2254508 (= tp!712473 b_and!176811)))

(declare-fun b!2254495 () Bool)

(declare-fun b_free!66217 () Bool)

(declare-fun b_next!66921 () Bool)

(assert (=> b!2254495 (= b_free!66217 (not b_next!66921))))

(declare-fun tp!712465 () Bool)

(declare-fun b_and!176813 () Bool)

(assert (=> b!2254495 (= tp!712465 b_and!176813)))

(declare-fun b_free!66219 () Bool)

(declare-fun b_next!66923 () Bool)

(assert (=> b!2254495 (= b_free!66219 (not b_next!66923))))

(declare-fun tp!712481 () Bool)

(declare-fun b_and!176815 () Bool)

(assert (=> b!2254495 (= tp!712481 b_and!176815)))

(declare-fun e!1442913 () Bool)

(assert (=> b!2254495 (= e!1442913 (and tp!712465 tp!712481))))

(declare-fun b!2254496 () Bool)

(declare-fun res!963488 () Bool)

(declare-fun e!1442923 () Bool)

(assert (=> b!2254496 (=> res!963488 e!1442923)))

(declare-datatypes ((List!26817 0))(
  ( (Nil!26723) (Cons!26723 (h!32124 (_ BitVec 16)) (t!201141 List!26817)) )
))
(declare-datatypes ((TokenValue!4403 0))(
  ( (FloatLiteralValue!8806 (text!31266 List!26817)) (TokenValueExt!4402 (__x!17866 Int)) (Broken!22015 (value!134662 List!26817)) (Object!4496) (End!4403) (Def!4403) (Underscore!4403) (Match!4403) (Else!4403) (Error!4403) (Case!4403) (If!4403) (Extends!4403) (Abstract!4403) (Class!4403) (Val!4403) (DelimiterValue!8806 (del!4463 List!26817)) (KeywordValue!4409 (value!134663 List!26817)) (CommentValue!8806 (value!134664 List!26817)) (WhitespaceValue!8806 (value!134665 List!26817)) (IndentationValue!4403 (value!134666 List!26817)) (String!29118) (Int32!4403) (Broken!22016 (value!134667 List!26817)) (Boolean!4404) (Unit!39649) (OperatorValue!4406 (op!4463 List!26817)) (IdentifierValue!8806 (value!134668 List!26817)) (IdentifierValue!8807 (value!134669 List!26817)) (WhitespaceValue!8807 (value!134670 List!26817)) (True!8806) (False!8806) (Broken!22017 (value!134671 List!26817)) (Broken!22018 (value!134672 List!26817)) (True!8807) (RightBrace!4403) (RightBracket!4403) (Colon!4403) (Null!4403) (Comma!4403) (LeftBracket!4403) (False!8807) (LeftBrace!4403) (ImaginaryLiteralValue!4403 (text!31267 List!26817)) (StringLiteralValue!13209 (value!134673 List!26817)) (EOFValue!4403 (value!134674 List!26817)) (IdentValue!4403 (value!134675 List!26817)) (DelimiterValue!8807 (value!134676 List!26817)) (DedentValue!4403 (value!134677 List!26817)) (NewLineValue!4403 (value!134678 List!26817)) (IntegerValue!13209 (value!134679 (_ BitVec 32)) (text!31268 List!26817)) (IntegerValue!13210 (value!134680 Int) (text!31269 List!26817)) (Times!4403) (Or!4403) (Equal!4403) (Minus!4403) (Broken!22019 (value!134681 List!26817)) (And!4403) (Div!4403) (LessEqual!4403) (Mod!4403) (Concat!10992) (Not!4403) (Plus!4403) (SpaceValue!4403 (value!134682 List!26817)) (IntegerValue!13211 (value!134683 Int) (text!31270 List!26817)) (StringLiteralValue!13210 (text!31271 List!26817)) (FloatLiteralValue!8807 (text!31272 List!26817)) (BytesLiteralValue!4403 (value!134684 List!26817)) (CommentValue!8807 (value!134685 List!26817)) (StringLiteralValue!13211 (value!134686 List!26817)) (ErrorTokenValue!4403 (msg!4464 List!26817)) )
))
(declare-datatypes ((C!13324 0))(
  ( (C!13325 (val!7710 Int)) )
))
(declare-datatypes ((List!26818 0))(
  ( (Nil!26724) (Cons!26724 (h!32125 C!13324) (t!201142 List!26818)) )
))
(declare-datatypes ((IArray!17265 0))(
  ( (IArray!17266 (innerList!8690 List!26818)) )
))
(declare-datatypes ((Conc!8630 0))(
  ( (Node!8630 (left!20299 Conc!8630) (right!20629 Conc!8630) (csize!17490 Int) (cheight!8841 Int)) (Leaf!12736 (xs!11572 IArray!17265) (csize!17491 Int)) (Empty!8630) )
))
(declare-datatypes ((BalanceConc!16988 0))(
  ( (BalanceConc!16989 (c!358428 Conc!8630)) )
))
(declare-datatypes ((Regex!6589 0))(
  ( (ElementMatch!6589 (c!358429 C!13324)) (Concat!10993 (regOne!13690 Regex!6589) (regTwo!13690 Regex!6589)) (EmptyExpr!6589) (Star!6589 (reg!6918 Regex!6589)) (EmptyLang!6589) (Union!6589 (regOne!13691 Regex!6589) (regTwo!13691 Regex!6589)) )
))
(declare-datatypes ((String!29119 0))(
  ( (String!29120 (value!134687 String)) )
))
(declare-datatypes ((TokenValueInjection!8346 0))(
  ( (TokenValueInjection!8347 (toValue!5983 Int) (toChars!5842 Int)) )
))
(declare-datatypes ((Rule!8282 0))(
  ( (Rule!8283 (regex!4241 Regex!6589) (tag!4731 String!29119) (isSeparator!4241 Bool) (transformation!4241 TokenValueInjection!8346)) )
))
(declare-fun r!2363 () Rule!8282)

(declare-fun lt!837962 () List!26818)

(declare-fun matchR!2850 (Regex!6589 List!26818) Bool)

(assert (=> b!2254496 (= res!963488 (not (matchR!2850 (regex!4241 r!2363) lt!837962)))))

(declare-fun tp!712472 () Bool)

(declare-fun b!2254497 () Bool)

(declare-fun e!1442929 () Bool)

(declare-datatypes ((List!26819 0))(
  ( (Nil!26725) (Cons!26725 (h!32126 Rule!8282) (t!201143 List!26819)) )
))
(declare-fun rules!1750 () List!26819)

(declare-fun inv!36257 (String!29119) Bool)

(declare-fun inv!36260 (TokenValueInjection!8346) Bool)

(assert (=> b!2254497 (= e!1442929 (and tp!712472 (inv!36257 (tag!4731 (h!32126 rules!1750))) (inv!36260 (transformation!4241 (h!32126 rules!1750))) e!1442913))))

(declare-fun res!963493 () Bool)

(declare-fun e!1442914 () Bool)

(assert (=> start!220024 (=> (not res!963493) (not e!1442914))))

(declare-datatypes ((LexerInterface!3838 0))(
  ( (LexerInterfaceExt!3835 (__x!17867 Int)) (Lexer!3836) )
))
(declare-fun thiss!16613 () LexerInterface!3838)

(get-info :version)

(assert (=> start!220024 (= res!963493 ((_ is Lexer!3836) thiss!16613))))

(assert (=> start!220024 e!1442914))

(assert (=> start!220024 true))

(declare-fun e!1442930 () Bool)

(assert (=> start!220024 e!1442930))

(declare-fun e!1442934 () Bool)

(assert (=> start!220024 e!1442934))

(declare-fun e!1442933 () Bool)

(assert (=> start!220024 e!1442933))

(declare-fun e!1442912 () Bool)

(assert (=> start!220024 e!1442912))

(declare-fun e!1442927 () Bool)

(assert (=> start!220024 e!1442927))

(declare-fun e!1442909 () Bool)

(assert (=> start!220024 e!1442909))

(declare-fun e!1442922 () Bool)

(assert (=> start!220024 e!1442922))

(declare-fun b!2254498 () Bool)

(declare-fun res!963492 () Bool)

(assert (=> b!2254498 (=> (not res!963492) (not e!1442914))))

(declare-fun contains!4593 (List!26819 Rule!8282) Bool)

(assert (=> b!2254498 (= res!963492 (contains!4593 rules!1750 r!2363))))

(declare-fun b!2254499 () Bool)

(declare-fun res!963482 () Bool)

(declare-fun e!1442935 () Bool)

(assert (=> b!2254499 (=> (not res!963482) (not e!1442935))))

(declare-fun e!1442915 () Bool)

(assert (=> b!2254499 (= res!963482 e!1442915)))

(declare-fun res!963497 () Bool)

(assert (=> b!2254499 (=> res!963497 e!1442915)))

(declare-fun lt!837965 () Bool)

(assert (=> b!2254499 (= res!963497 lt!837965)))

(declare-fun b!2254500 () Bool)

(declare-fun tp_is_empty!10399 () Bool)

(declare-fun tp!712464 () Bool)

(assert (=> b!2254500 (= e!1442933 (and tp_is_empty!10399 tp!712464))))

(declare-fun b!2254501 () Bool)

(declare-fun e!1442924 () Bool)

(assert (=> b!2254501 (= e!1442914 e!1442924)))

(declare-fun res!963494 () Bool)

(assert (=> b!2254501 (=> (not res!963494) (not e!1442924))))

(declare-fun suffix!886 () List!26818)

(declare-datatypes ((Token!7960 0))(
  ( (Token!7961 (value!134688 TokenValue!4403) (rule!6545 Rule!8282) (size!20920 Int) (originalCharacters!5011 List!26818)) )
))
(declare-datatypes ((List!26820 0))(
  ( (Nil!26726) (Cons!26726 (h!32127 Token!7960) (t!201144 List!26820)) )
))
(declare-datatypes ((IArray!17267 0))(
  ( (IArray!17268 (innerList!8691 List!26820)) )
))
(declare-datatypes ((Conc!8631 0))(
  ( (Node!8631 (left!20300 Conc!8631) (right!20630 Conc!8631) (csize!17492 Int) (cheight!8842 Int)) (Leaf!12737 (xs!11573 IArray!17267) (csize!17493 Int)) (Empty!8631) )
))
(declare-datatypes ((BalanceConc!16990 0))(
  ( (BalanceConc!16991 (c!358430 Conc!8631)) )
))
(declare-datatypes ((tuple2!26254 0))(
  ( (tuple2!26255 (_1!15637 BalanceConc!16990) (_2!15637 BalanceConc!16988)) )
))
(declare-fun lt!837967 () tuple2!26254)

(declare-fun tokens!456 () List!26820)

(declare-datatypes ((tuple2!26256 0))(
  ( (tuple2!26257 (_1!15638 List!26820) (_2!15638 List!26818)) )
))
(declare-fun list!10273 (BalanceConc!16990) List!26820)

(declare-fun list!10274 (BalanceConc!16988) List!26818)

(assert (=> b!2254501 (= res!963494 (= (tuple2!26257 (list!10273 (_1!15637 lt!837967)) (list!10274 (_2!15637 lt!837967))) (tuple2!26257 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26818)

(declare-fun lex!1677 (LexerInterface!3838 List!26819 BalanceConc!16988) tuple2!26254)

(declare-fun seqFromList!2945 (List!26818) BalanceConc!16988)

(assert (=> b!2254501 (= lt!837967 (lex!1677 thiss!16613 rules!1750 (seqFromList!2945 input!1722)))))

(declare-fun b!2254502 () Bool)

(declare-fun res!963499 () Bool)

(assert (=> b!2254502 (=> (not res!963499) (not e!1442914))))

(declare-fun rulesInvariant!3340 (LexerInterface!3838 List!26819) Bool)

(assert (=> b!2254502 (= res!963499 (rulesInvariant!3340 thiss!16613 rules!1750))))

(declare-fun b!2254503 () Bool)

(declare-fun tp!712479 () Bool)

(assert (=> b!2254503 (= e!1442930 (and tp_is_empty!10399 tp!712479))))

(declare-fun e!1442916 () Bool)

(declare-fun tp!712468 () Bool)

(declare-fun b!2254504 () Bool)

(declare-fun e!1442925 () Bool)

(assert (=> b!2254504 (= e!1442925 (and tp!712468 (inv!36257 (tag!4731 (rule!6545 (h!32127 tokens!456)))) (inv!36260 (transformation!4241 (rule!6545 (h!32127 tokens!456)))) e!1442916))))

(declare-fun b!2254505 () Bool)

(declare-fun e!1442932 () Bool)

(declare-fun tp!712467 () Bool)

(declare-fun inv!21 (TokenValue!4403) Bool)

(assert (=> b!2254505 (= e!1442932 (and (inv!21 (value!134688 (h!32127 tokens!456))) e!1442925 tp!712467))))

(declare-fun b!2254506 () Bool)

(declare-fun res!963486 () Bool)

(assert (=> b!2254506 (=> (not res!963486) (not e!1442914))))

(declare-fun isEmpty!15083 (List!26819) Bool)

(assert (=> b!2254506 (= res!963486 (not (isEmpty!15083 rules!1750)))))

(declare-fun b!2254507 () Bool)

(declare-fun e!1442921 () Bool)

(declare-fun charsOf!2629 (Token!7960) BalanceConc!16988)

(declare-fun head!4812 (List!26820) Token!7960)

(assert (=> b!2254507 (= e!1442921 (not (matchR!2850 (regex!4241 r!2363) (list!10274 (charsOf!2629 (head!4812 tokens!456))))))))

(declare-fun e!1442928 () Bool)

(assert (=> b!2254508 (= e!1442928 (and tp!712477 tp!712473))))

(declare-fun b!2254509 () Bool)

(declare-fun tp!712474 () Bool)

(assert (=> b!2254509 (= e!1442927 (and e!1442929 tp!712474))))

(declare-fun b!2254510 () Bool)

(declare-fun res!963490 () Bool)

(assert (=> b!2254510 (=> (not res!963490) (not e!1442935))))

(declare-fun otherR!12 () Rule!8282)

(assert (=> b!2254510 (= res!963490 (not (= r!2363 otherR!12)))))

(declare-fun b!2254511 () Bool)

(declare-fun res!963496 () Bool)

(declare-fun e!1442908 () Bool)

(assert (=> b!2254511 (=> res!963496 e!1442908)))

(assert (=> b!2254511 (= res!963496 ((_ is Nil!26726) tokens!456))))

(declare-fun b!2254512 () Bool)

(declare-fun e!1442910 () Bool)

(assert (=> b!2254512 (= e!1442935 (not e!1442910))))

(declare-fun res!963483 () Bool)

(assert (=> b!2254512 (=> res!963483 e!1442910)))

(assert (=> b!2254512 (= res!963483 e!1442921)))

(declare-fun res!963495 () Bool)

(assert (=> b!2254512 (=> (not res!963495) (not e!1442921))))

(assert (=> b!2254512 (= res!963495 (not lt!837965))))

(declare-fun ruleValid!1333 (LexerInterface!3838 Rule!8282) Bool)

(assert (=> b!2254512 (ruleValid!1333 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39650 0))(
  ( (Unit!39651) )
))
(declare-fun lt!837960 () Unit!39650)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!740 (LexerInterface!3838 Rule!8282 List!26819) Unit!39650)

(assert (=> b!2254512 (= lt!837960 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!740 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!712476 () Bool)

(declare-fun b!2254513 () Bool)

(assert (=> b!2254513 (= e!1442909 (and tp!712476 (inv!36257 (tag!4731 r!2363)) (inv!36260 (transformation!4241 r!2363)) e!1442928))))

(declare-fun b!2254514 () Bool)

(declare-fun e!1442907 () Bool)

(assert (=> b!2254514 (= e!1442908 e!1442907)))

(declare-fun res!963485 () Bool)

(assert (=> b!2254514 (=> res!963485 e!1442907)))

(declare-datatypes ((tuple2!26258 0))(
  ( (tuple2!26259 (_1!15639 Token!7960) (_2!15639 List!26818)) )
))
(declare-fun lt!837964 () tuple2!26258)

(assert (=> b!2254514 (= res!963485 (not (= (h!32127 tokens!456) (_1!15639 lt!837964))))))

(declare-datatypes ((Option!5217 0))(
  ( (None!5216) (Some!5216 (v!30240 tuple2!26258)) )
))
(declare-fun get!8069 (Option!5217) tuple2!26258)

(declare-fun maxPrefix!2126 (LexerInterface!3838 List!26819 List!26818) Option!5217)

(assert (=> b!2254514 (= lt!837964 (get!8069 (maxPrefix!2126 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2254515 () Bool)

(assert (=> b!2254515 (= e!1442915 (= (rule!6545 (head!4812 tokens!456)) r!2363))))

(declare-fun e!1442918 () Bool)

(assert (=> b!2254516 (= e!1442918 (and tp!712469 tp!712466))))

(declare-fun b!2254517 () Bool)

(assert (=> b!2254517 (= e!1442924 e!1442935)))

(declare-fun res!963484 () Bool)

(assert (=> b!2254517 (=> (not res!963484) (not e!1442935))))

(declare-fun e!1442926 () Bool)

(assert (=> b!2254517 (= res!963484 e!1442926)))

(declare-fun res!963500 () Bool)

(assert (=> b!2254517 (=> res!963500 e!1442926)))

(assert (=> b!2254517 (= res!963500 lt!837965)))

(declare-fun isEmpty!15084 (List!26820) Bool)

(assert (=> b!2254517 (= lt!837965 (isEmpty!15084 tokens!456))))

(declare-fun b!2254518 () Bool)

(assert (=> b!2254518 (= e!1442923 true)))

(declare-fun isPrefix!2231 (List!26818 List!26818) Bool)

(assert (=> b!2254518 (isPrefix!2231 input!1722 input!1722)))

(declare-fun lt!837971 () Unit!39650)

(declare-fun lemmaIsPrefixRefl!1437 (List!26818 List!26818) Unit!39650)

(assert (=> b!2254518 (= lt!837971 (lemmaIsPrefixRefl!1437 input!1722 input!1722))))

(declare-fun lt!837973 () Unit!39650)

(declare-fun lt!837970 () BalanceConc!16988)

(declare-fun lemmaSemiInverse!1006 (TokenValueInjection!8346 BalanceConc!16988) Unit!39650)

(assert (=> b!2254518 (= lt!837973 (lemmaSemiInverse!1006 (transformation!4241 r!2363) lt!837970))))

(assert (=> b!2254519 (= e!1442916 (and tp!712471 tp!712470))))

(declare-fun b!2254520 () Bool)

(declare-fun tp!712478 () Bool)

(declare-fun inv!36261 (Token!7960) Bool)

(assert (=> b!2254520 (= e!1442922 (and (inv!36261 (h!32127 tokens!456)) e!1442932 tp!712478))))

(declare-fun b!2254521 () Bool)

(assert (=> b!2254521 (= e!1442910 e!1442908)))

(declare-fun res!963501 () Bool)

(assert (=> b!2254521 (=> res!963501 e!1442908)))

(declare-fun getIndex!262 (List!26819 Rule!8282) Int)

(assert (=> b!2254521 (= res!963501 (<= (getIndex!262 rules!1750 r!2363) (getIndex!262 rules!1750 otherR!12)))))

(assert (=> b!2254521 (ruleValid!1333 thiss!16613 otherR!12)))

(declare-fun lt!837974 () Unit!39650)

(assert (=> b!2254521 (= lt!837974 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!740 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2254522 () Bool)

(declare-fun otherP!12 () List!26818)

(declare-fun size!20921 (BalanceConc!16988) Int)

(declare-fun size!20922 (List!26818) Int)

(assert (=> b!2254522 (= e!1442926 (<= (size!20921 (charsOf!2629 (head!4812 tokens!456))) (size!20922 otherP!12)))))

(declare-fun b!2254523 () Bool)

(declare-fun tp!712480 () Bool)

(assert (=> b!2254523 (= e!1442934 (and tp!712480 (inv!36257 (tag!4731 otherR!12)) (inv!36260 (transformation!4241 otherR!12)) e!1442918))))

(declare-fun b!2254524 () Bool)

(declare-fun tp!712475 () Bool)

(assert (=> b!2254524 (= e!1442912 (and tp_is_empty!10399 tp!712475))))

(declare-fun b!2254525 () Bool)

(declare-fun res!963491 () Bool)

(assert (=> b!2254525 (=> (not res!963491) (not e!1442935))))

(assert (=> b!2254525 (= res!963491 (isPrefix!2231 otherP!12 input!1722))))

(declare-fun b!2254526 () Bool)

(declare-fun e!1442931 () Bool)

(assert (=> b!2254526 (= e!1442907 e!1442931)))

(declare-fun res!963498 () Bool)

(assert (=> b!2254526 (=> res!963498 e!1442931)))

(declare-fun lt!837961 () Int)

(declare-fun lt!837972 () Int)

(assert (=> b!2254526 (= res!963498 (= lt!837961 lt!837972))))

(assert (=> b!2254526 (= lt!837972 (size!20922 lt!837962))))

(assert (=> b!2254526 (= lt!837961 (size!20922 otherP!12))))

(declare-fun lt!837966 () List!26818)

(assert (=> b!2254526 (= (_2!15639 lt!837964) lt!837966)))

(declare-fun lt!837963 () Unit!39650)

(declare-fun lemmaSamePrefixThenSameSuffix!986 (List!26818 List!26818 List!26818 List!26818 List!26818) Unit!39650)

(assert (=> b!2254526 (= lt!837963 (lemmaSamePrefixThenSameSuffix!986 lt!837962 (_2!15639 lt!837964) lt!837962 lt!837966 input!1722))))

(declare-fun getSuffix!1066 (List!26818 List!26818) List!26818)

(assert (=> b!2254526 (= lt!837966 (getSuffix!1066 input!1722 lt!837962))))

(declare-fun ++!6513 (List!26818 List!26818) List!26818)

(assert (=> b!2254526 (isPrefix!2231 lt!837962 (++!6513 lt!837962 (_2!15639 lt!837964)))))

(declare-fun lt!837968 () Unit!39650)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1476 (List!26818 List!26818) Unit!39650)

(assert (=> b!2254526 (= lt!837968 (lemmaConcatTwoListThenFirstIsPrefix!1476 lt!837962 (_2!15639 lt!837964)))))

(assert (=> b!2254526 (= lt!837962 (list!10274 (charsOf!2629 (h!32127 tokens!456))))))

(declare-fun b!2254527 () Bool)

(assert (=> b!2254527 (= e!1442931 e!1442923)))

(declare-fun res!963489 () Bool)

(assert (=> b!2254527 (=> res!963489 e!1442923)))

(assert (=> b!2254527 (= res!963489 (not (isPrefix!2231 lt!837962 input!1722)))))

(declare-fun maxPrefixOneRule!1318 (LexerInterface!3838 Rule!8282 List!26818) Option!5217)

(declare-fun apply!6561 (TokenValueInjection!8346 BalanceConc!16988) TokenValue!4403)

(assert (=> b!2254527 (= (maxPrefixOneRule!1318 thiss!16613 r!2363 input!1722) (Some!5216 (tuple2!26259 (Token!7961 (apply!6561 (transformation!4241 r!2363) lt!837970) r!2363 lt!837972 lt!837962) (_2!15639 lt!837964))))))

(assert (=> b!2254527 (= lt!837970 (seqFromList!2945 lt!837962))))

(declare-fun lt!837969 () Unit!39650)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!559 (LexerInterface!3838 List!26819 List!26818 List!26818 List!26818 Rule!8282) Unit!39650)

(assert (=> b!2254527 (= lt!837969 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!559 thiss!16613 rules!1750 lt!837962 input!1722 (_2!15639 lt!837964) r!2363))))

(declare-fun b!2254528 () Bool)

(declare-fun res!963487 () Bool)

(assert (=> b!2254528 (=> (not res!963487) (not e!1442914))))

(assert (=> b!2254528 (= res!963487 (contains!4593 rules!1750 otherR!12))))

(assert (= (and start!220024 res!963493) b!2254506))

(assert (= (and b!2254506 res!963486) b!2254502))

(assert (= (and b!2254502 res!963499) b!2254498))

(assert (= (and b!2254498 res!963492) b!2254528))

(assert (= (and b!2254528 res!963487) b!2254501))

(assert (= (and b!2254501 res!963494) b!2254517))

(assert (= (and b!2254517 (not res!963500)) b!2254522))

(assert (= (and b!2254517 res!963484) b!2254499))

(assert (= (and b!2254499 (not res!963497)) b!2254515))

(assert (= (and b!2254499 res!963482) b!2254525))

(assert (= (and b!2254525 res!963491) b!2254510))

(assert (= (and b!2254510 res!963490) b!2254512))

(assert (= (and b!2254512 res!963495) b!2254507))

(assert (= (and b!2254512 (not res!963483)) b!2254521))

(assert (= (and b!2254521 (not res!963501)) b!2254511))

(assert (= (and b!2254511 (not res!963496)) b!2254514))

(assert (= (and b!2254514 (not res!963485)) b!2254526))

(assert (= (and b!2254526 (not res!963498)) b!2254527))

(assert (= (and b!2254527 (not res!963489)) b!2254496))

(assert (= (and b!2254496 (not res!963488)) b!2254518))

(assert (= (and start!220024 ((_ is Cons!26724) input!1722)) b!2254503))

(assert (= b!2254523 b!2254516))

(assert (= start!220024 b!2254523))

(assert (= (and start!220024 ((_ is Cons!26724) suffix!886)) b!2254500))

(assert (= (and start!220024 ((_ is Cons!26724) otherP!12)) b!2254524))

(assert (= b!2254497 b!2254495))

(assert (= b!2254509 b!2254497))

(assert (= (and start!220024 ((_ is Cons!26725) rules!1750)) b!2254509))

(assert (= b!2254513 b!2254508))

(assert (= start!220024 b!2254513))

(assert (= b!2254504 b!2254519))

(assert (= b!2254505 b!2254504))

(assert (= b!2254520 b!2254505))

(assert (= (and start!220024 ((_ is Cons!26726) tokens!456)) b!2254520))

(declare-fun m!2685061 () Bool)

(assert (=> b!2254497 m!2685061))

(declare-fun m!2685063 () Bool)

(assert (=> b!2254497 m!2685063))

(declare-fun m!2685065 () Bool)

(assert (=> b!2254496 m!2685065))

(declare-fun m!2685067 () Bool)

(assert (=> b!2254501 m!2685067))

(declare-fun m!2685069 () Bool)

(assert (=> b!2254501 m!2685069))

(declare-fun m!2685071 () Bool)

(assert (=> b!2254501 m!2685071))

(assert (=> b!2254501 m!2685071))

(declare-fun m!2685073 () Bool)

(assert (=> b!2254501 m!2685073))

(declare-fun m!2685075 () Bool)

(assert (=> b!2254522 m!2685075))

(assert (=> b!2254522 m!2685075))

(declare-fun m!2685077 () Bool)

(assert (=> b!2254522 m!2685077))

(assert (=> b!2254522 m!2685077))

(declare-fun m!2685079 () Bool)

(assert (=> b!2254522 m!2685079))

(declare-fun m!2685081 () Bool)

(assert (=> b!2254522 m!2685081))

(declare-fun m!2685083 () Bool)

(assert (=> b!2254521 m!2685083))

(declare-fun m!2685085 () Bool)

(assert (=> b!2254521 m!2685085))

(declare-fun m!2685087 () Bool)

(assert (=> b!2254521 m!2685087))

(declare-fun m!2685089 () Bool)

(assert (=> b!2254521 m!2685089))

(declare-fun m!2685091 () Bool)

(assert (=> b!2254512 m!2685091))

(declare-fun m!2685093 () Bool)

(assert (=> b!2254512 m!2685093))

(declare-fun m!2685095 () Bool)

(assert (=> b!2254498 m!2685095))

(declare-fun m!2685097 () Bool)

(assert (=> b!2254513 m!2685097))

(declare-fun m!2685099 () Bool)

(assert (=> b!2254513 m!2685099))

(declare-fun m!2685101 () Bool)

(assert (=> b!2254518 m!2685101))

(declare-fun m!2685103 () Bool)

(assert (=> b!2254518 m!2685103))

(declare-fun m!2685105 () Bool)

(assert (=> b!2254518 m!2685105))

(declare-fun m!2685107 () Bool)

(assert (=> b!2254527 m!2685107))

(declare-fun m!2685109 () Bool)

(assert (=> b!2254527 m!2685109))

(declare-fun m!2685111 () Bool)

(assert (=> b!2254527 m!2685111))

(declare-fun m!2685113 () Bool)

(assert (=> b!2254527 m!2685113))

(declare-fun m!2685115 () Bool)

(assert (=> b!2254527 m!2685115))

(assert (=> b!2254515 m!2685075))

(declare-fun m!2685117 () Bool)

(assert (=> b!2254526 m!2685117))

(declare-fun m!2685119 () Bool)

(assert (=> b!2254526 m!2685119))

(declare-fun m!2685121 () Bool)

(assert (=> b!2254526 m!2685121))

(assert (=> b!2254526 m!2685119))

(assert (=> b!2254526 m!2685081))

(declare-fun m!2685123 () Bool)

(assert (=> b!2254526 m!2685123))

(declare-fun m!2685125 () Bool)

(assert (=> b!2254526 m!2685125))

(declare-fun m!2685127 () Bool)

(assert (=> b!2254526 m!2685127))

(declare-fun m!2685129 () Bool)

(assert (=> b!2254526 m!2685129))

(declare-fun m!2685131 () Bool)

(assert (=> b!2254526 m!2685131))

(assert (=> b!2254526 m!2685129))

(declare-fun m!2685133 () Bool)

(assert (=> b!2254523 m!2685133))

(declare-fun m!2685135 () Bool)

(assert (=> b!2254523 m!2685135))

(declare-fun m!2685137 () Bool)

(assert (=> b!2254514 m!2685137))

(assert (=> b!2254514 m!2685137))

(declare-fun m!2685139 () Bool)

(assert (=> b!2254514 m!2685139))

(declare-fun m!2685141 () Bool)

(assert (=> b!2254528 m!2685141))

(declare-fun m!2685143 () Bool)

(assert (=> b!2254506 m!2685143))

(declare-fun m!2685145 () Bool)

(assert (=> b!2254505 m!2685145))

(declare-fun m!2685147 () Bool)

(assert (=> b!2254520 m!2685147))

(declare-fun m!2685149 () Bool)

(assert (=> b!2254502 m!2685149))

(declare-fun m!2685151 () Bool)

(assert (=> b!2254525 m!2685151))

(declare-fun m!2685153 () Bool)

(assert (=> b!2254504 m!2685153))

(declare-fun m!2685155 () Bool)

(assert (=> b!2254504 m!2685155))

(declare-fun m!2685157 () Bool)

(assert (=> b!2254517 m!2685157))

(assert (=> b!2254507 m!2685075))

(assert (=> b!2254507 m!2685075))

(assert (=> b!2254507 m!2685077))

(assert (=> b!2254507 m!2685077))

(declare-fun m!2685159 () Bool)

(assert (=> b!2254507 m!2685159))

(assert (=> b!2254507 m!2685159))

(declare-fun m!2685161 () Bool)

(assert (=> b!2254507 m!2685161))

(check-sat (not b!2254497) (not b!2254506) (not b!2254515) (not b!2254522) b_and!176813 (not b_next!66911) b_and!176803 (not b!2254524) b_and!176801 (not b!2254498) (not b_next!66909) (not b!2254518) b_and!176807 (not b!2254502) (not b!2254500) (not b!2254514) (not b!2254512) b_and!176809 tp_is_empty!10399 b_and!176805 (not b!2254507) (not b_next!66917) (not b_next!66913) (not b_next!66915) (not b!2254521) (not b!2254505) (not b!2254520) b_and!176815 (not b!2254526) (not b!2254501) (not b!2254503) (not b!2254504) (not b!2254513) (not b_next!66919) (not b!2254525) (not b!2254528) b_and!176811 (not b!2254517) (not b_next!66921) (not b!2254527) (not b!2254509) (not b!2254496) (not b_next!66923) (not b!2254523))
(check-sat b_and!176809 b_and!176813 (not b_next!66911) b_and!176805 b_and!176803 (not b_next!66915) b_and!176815 b_and!176801 (not b_next!66919) (not b_next!66909) b_and!176807 (not b_next!66923) (not b_next!66917) (not b_next!66913) b_and!176811 (not b_next!66921))
