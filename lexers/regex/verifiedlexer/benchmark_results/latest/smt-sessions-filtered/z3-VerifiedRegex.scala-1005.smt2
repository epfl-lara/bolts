; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50092 () Bool)

(assert start!50092)

(declare-fun b!542819 () Bool)

(declare-fun b_free!15033 () Bool)

(declare-fun b_next!15049 () Bool)

(assert (=> b!542819 (= b_free!15033 (not b_next!15049))))

(declare-fun tp!172710 () Bool)

(declare-fun b_and!53003 () Bool)

(assert (=> b!542819 (= tp!172710 b_and!53003)))

(declare-fun b_free!15035 () Bool)

(declare-fun b_next!15051 () Bool)

(assert (=> b!542819 (= b_free!15035 (not b_next!15051))))

(declare-fun tp!172706 () Bool)

(declare-fun b_and!53005 () Bool)

(assert (=> b!542819 (= tp!172706 b_and!53005)))

(declare-fun b!542823 () Bool)

(declare-fun b_free!15037 () Bool)

(declare-fun b_next!15053 () Bool)

(assert (=> b!542823 (= b_free!15037 (not b_next!15053))))

(declare-fun tp!172708 () Bool)

(declare-fun b_and!53007 () Bool)

(assert (=> b!542823 (= tp!172708 b_and!53007)))

(declare-fun b_free!15039 () Bool)

(declare-fun b_next!15055 () Bool)

(assert (=> b!542823 (= b_free!15039 (not b_next!15055))))

(declare-fun tp!172705 () Bool)

(declare-fun b_and!53009 () Bool)

(assert (=> b!542823 (= tp!172705 b_and!53009)))

(declare-fun e!327898 () Bool)

(declare-datatypes ((C!3584 0))(
  ( (C!3585 (val!2018 Int)) )
))
(declare-datatypes ((Regex!1331 0))(
  ( (ElementMatch!1331 (c!102580 C!3584)) (Concat!2352 (regOne!3174 Regex!1331) (regTwo!3174 Regex!1331)) (EmptyExpr!1331) (Star!1331 (reg!1660 Regex!1331)) (EmptyLang!1331) (Union!1331 (regOne!3175 Regex!1331) (regTwo!3175 Regex!1331)) )
))
(declare-datatypes ((String!6848 0))(
  ( (String!6849 (value!33255 String)) )
))
(declare-datatypes ((List!5335 0))(
  ( (Nil!5325) (Cons!5325 (h!10726 (_ BitVec 16)) (t!74492 List!5335)) )
))
(declare-datatypes ((TokenValue!1021 0))(
  ( (FloatLiteralValue!2042 (text!7592 List!5335)) (TokenValueExt!1020 (__x!3940 Int)) (Broken!5105 (value!33256 List!5335)) (Object!1030) (End!1021) (Def!1021) (Underscore!1021) (Match!1021) (Else!1021) (Error!1021) (Case!1021) (If!1021) (Extends!1021) (Abstract!1021) (Class!1021) (Val!1021) (DelimiterValue!2042 (del!1081 List!5335)) (KeywordValue!1027 (value!33257 List!5335)) (CommentValue!2042 (value!33258 List!5335)) (WhitespaceValue!2042 (value!33259 List!5335)) (IndentationValue!1021 (value!33260 List!5335)) (String!6850) (Int32!1021) (Broken!5106 (value!33261 List!5335)) (Boolean!1022) (Unit!9310) (OperatorValue!1024 (op!1081 List!5335)) (IdentifierValue!2042 (value!33262 List!5335)) (IdentifierValue!2043 (value!33263 List!5335)) (WhitespaceValue!2043 (value!33264 List!5335)) (True!2042) (False!2042) (Broken!5107 (value!33265 List!5335)) (Broken!5108 (value!33266 List!5335)) (True!2043) (RightBrace!1021) (RightBracket!1021) (Colon!1021) (Null!1021) (Comma!1021) (LeftBracket!1021) (False!2043) (LeftBrace!1021) (ImaginaryLiteralValue!1021 (text!7593 List!5335)) (StringLiteralValue!3063 (value!33267 List!5335)) (EOFValue!1021 (value!33268 List!5335)) (IdentValue!1021 (value!33269 List!5335)) (DelimiterValue!2043 (value!33270 List!5335)) (DedentValue!1021 (value!33271 List!5335)) (NewLineValue!1021 (value!33272 List!5335)) (IntegerValue!3063 (value!33273 (_ BitVec 32)) (text!7594 List!5335)) (IntegerValue!3064 (value!33274 Int) (text!7595 List!5335)) (Times!1021) (Or!1021) (Equal!1021) (Minus!1021) (Broken!5109 (value!33275 List!5335)) (And!1021) (Div!1021) (LessEqual!1021) (Mod!1021) (Concat!2353) (Not!1021) (Plus!1021) (SpaceValue!1021 (value!33276 List!5335)) (IntegerValue!3065 (value!33277 Int) (text!7596 List!5335)) (StringLiteralValue!3064 (text!7597 List!5335)) (FloatLiteralValue!2043 (text!7598 List!5335)) (BytesLiteralValue!1021 (value!33278 List!5335)) (CommentValue!2043 (value!33279 List!5335)) (StringLiteralValue!3065 (value!33280 List!5335)) (ErrorTokenValue!1021 (msg!1082 List!5335)) )
))
(declare-datatypes ((List!5336 0))(
  ( (Nil!5326) (Cons!5326 (h!10727 C!3584) (t!74493 List!5336)) )
))
(declare-datatypes ((IArray!3429 0))(
  ( (IArray!3430 (innerList!1772 List!5336)) )
))
(declare-datatypes ((Conc!1714 0))(
  ( (Node!1714 (left!4421 Conc!1714) (right!4751 Conc!1714) (csize!3658 Int) (cheight!1925 Int)) (Leaf!2720 (xs!4351 IArray!3429) (csize!3659 Int)) (Empty!1714) )
))
(declare-datatypes ((BalanceConc!3436 0))(
  ( (BalanceConc!3437 (c!102581 Conc!1714)) )
))
(declare-datatypes ((TokenValueInjection!1810 0))(
  ( (TokenValueInjection!1811 (toValue!1844 Int) (toChars!1703 Int)) )
))
(declare-datatypes ((Rule!1794 0))(
  ( (Rule!1795 (regex!997 Regex!1331) (tag!1259 String!6848) (isSeparator!997 Bool) (transformation!997 TokenValueInjection!1810)) )
))
(declare-datatypes ((List!5337 0))(
  ( (Nil!5327) (Cons!5327 (h!10728 Rule!1794) (t!74494 List!5337)) )
))
(declare-fun rules!3103 () List!5337)

(declare-fun b!542799 () Bool)

(declare-fun e!327905 () Bool)

(declare-fun tp!172707 () Bool)

(declare-fun inv!6678 (String!6848) Bool)

(declare-fun inv!6681 (TokenValueInjection!1810) Bool)

(assert (=> b!542799 (= e!327898 (and tp!172707 (inv!6678 (tag!1259 (h!10728 rules!3103))) (inv!6681 (transformation!997 (h!10728 rules!3103))) e!327905))))

(declare-fun b!542800 () Bool)

(declare-fun res!231258 () Bool)

(declare-fun e!327909 () Bool)

(assert (=> b!542800 (=> (not res!231258) (not e!327909))))

(declare-datatypes ((LexerInterface!883 0))(
  ( (LexerInterfaceExt!880 (__x!3941 Int)) (Lexer!881) )
))
(declare-fun thiss!22590 () LexerInterface!883)

(declare-fun rulesInvariant!846 (LexerInterface!883 List!5337) Bool)

(assert (=> b!542800 (= res!231258 (rulesInvariant!846 thiss!22590 rules!3103))))

(declare-fun b!542801 () Bool)

(declare-fun e!327901 () Bool)

(assert (=> b!542801 (= e!327909 e!327901)))

(declare-fun res!231274 () Bool)

(assert (=> b!542801 (=> (not res!231274) (not e!327901))))

(declare-fun lt!226594 () List!5336)

(declare-fun input!2705 () List!5336)

(assert (=> b!542801 (= res!231274 (= lt!226594 input!2705))))

(declare-datatypes ((Token!1730 0))(
  ( (Token!1731 (value!33281 TokenValue!1021) (rule!1709 Rule!1794) (size!4274 Int) (originalCharacters!1036 List!5336)) )
))
(declare-fun token!491 () Token!1730)

(declare-fun list!2209 (BalanceConc!3436) List!5336)

(declare-fun charsOf!626 (Token!1730) BalanceConc!3436)

(assert (=> b!542801 (= lt!226594 (list!2209 (charsOf!626 token!491)))))

(declare-fun b!542802 () Bool)

(declare-fun res!231267 () Bool)

(declare-fun e!327908 () Bool)

(assert (=> b!542802 (=> (not res!231267) (not e!327908))))

(declare-datatypes ((tuple2!6372 0))(
  ( (tuple2!6373 (_1!3450 Token!1730) (_2!3450 List!5336)) )
))
(declare-datatypes ((Option!1347 0))(
  ( (None!1346) (Some!1346 (v!16159 tuple2!6372)) )
))
(declare-fun lt!226613 () Option!1347)

(declare-fun size!4275 (List!5336) Int)

(assert (=> b!542802 (= res!231267 (= (size!4274 (_1!3450 (v!16159 lt!226613))) (size!4275 (originalCharacters!1036 (_1!3450 (v!16159 lt!226613))))))))

(declare-fun b!542803 () Bool)

(declare-datatypes ((Unit!9311 0))(
  ( (Unit!9312) )
))
(declare-fun e!327920 () Unit!9311)

(declare-fun Unit!9313 () Unit!9311)

(assert (=> b!542803 (= e!327920 Unit!9313)))

(declare-fun b!542804 () Bool)

(declare-fun res!231264 () Bool)

(declare-fun e!327906 () Bool)

(assert (=> b!542804 (=> (not res!231264) (not e!327906))))

(declare-fun get!2010 (Option!1347) tuple2!6372)

(assert (=> b!542804 (= res!231264 (= (_1!3450 (get!2010 lt!226613)) (_1!3450 (v!16159 lt!226613))))))

(declare-fun b!542806 () Bool)

(declare-fun e!327919 () Bool)

(assert (=> b!542806 (= e!327901 e!327919)))

(declare-fun res!231270 () Bool)

(assert (=> b!542806 (=> (not res!231270) (not e!327919))))

(declare-fun lt!226612 () Option!1347)

(declare-fun isDefined!1159 (Option!1347) Bool)

(assert (=> b!542806 (= res!231270 (isDefined!1159 lt!226612))))

(declare-fun lt!226628 () List!5336)

(declare-fun maxPrefix!581 (LexerInterface!883 List!5337 List!5336) Option!1347)

(assert (=> b!542806 (= lt!226612 (maxPrefix!581 thiss!22590 rules!3103 lt!226628))))

(declare-fun suffix!1342 () List!5336)

(declare-fun ++!1485 (List!5336 List!5336) List!5336)

(assert (=> b!542806 (= lt!226628 (++!1485 input!2705 suffix!1342))))

(declare-fun b!542807 () Bool)

(declare-fun Unit!9314 () Unit!9311)

(assert (=> b!542807 (= e!327920 Unit!9314)))

(assert (=> b!542807 false))

(declare-fun b!542808 () Bool)

(declare-fun e!327911 () Bool)

(assert (=> b!542808 (= e!327911 e!327906)))

(declare-fun res!231262 () Bool)

(assert (=> b!542808 (=> (not res!231262) (not e!327906))))

(assert (=> b!542808 (= res!231262 (isDefined!1159 lt!226613))))

(declare-fun b!542809 () Bool)

(declare-fun e!327910 () Bool)

(assert (=> b!542809 (= e!327910 true)))

(declare-fun lt!226610 () Unit!9311)

(declare-fun lt!226623 () BalanceConc!3436)

(declare-fun lemmaSemiInverse!126 (TokenValueInjection!1810 BalanceConc!3436) Unit!9311)

(assert (=> b!542809 (= lt!226610 (lemmaSemiInverse!126 (transformation!997 (rule!1709 token!491)) lt!226623))))

(declare-fun lt!226627 () Unit!9311)

(declare-fun lt!226597 () BalanceConc!3436)

(assert (=> b!542809 (= lt!226627 (lemmaSemiInverse!126 (transformation!997 (rule!1709 (_1!3450 (v!16159 lt!226613)))) lt!226597))))

(declare-fun lt!226609 () Unit!9311)

(declare-fun e!327896 () Unit!9311)

(assert (=> b!542809 (= lt!226609 e!327896)))

(declare-fun c!102578 () Bool)

(declare-fun lt!226601 () Int)

(declare-fun lt!226605 () Int)

(assert (=> b!542809 (= c!102578 (< lt!226601 lt!226605))))

(declare-fun e!327904 () Bool)

(assert (=> b!542809 e!327904))

(declare-fun res!231269 () Bool)

(assert (=> b!542809 (=> (not res!231269) (not e!327904))))

(declare-fun lt!226607 () TokenValue!1021)

(declare-fun maxPrefixOneRule!296 (LexerInterface!883 Rule!1794 List!5336) Option!1347)

(assert (=> b!542809 (= res!231269 (= (maxPrefixOneRule!296 thiss!22590 (rule!1709 token!491) lt!226628) (Some!1346 (tuple2!6373 (Token!1731 lt!226607 (rule!1709 token!491) lt!226605 lt!226594) suffix!1342))))))

(declare-fun lt!226595 () Unit!9311)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!48 (LexerInterface!883 List!5337 List!5336 List!5336 List!5336 Rule!1794) Unit!9311)

(assert (=> b!542809 (= lt!226595 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!48 thiss!22590 rules!3103 lt!226594 lt!226628 suffix!1342 (rule!1709 token!491)))))

(declare-fun lt!226614 () TokenValue!1021)

(declare-fun lt!226617 () List!5336)

(assert (=> b!542809 (= (maxPrefixOneRule!296 thiss!22590 (rule!1709 (_1!3450 (v!16159 lt!226613))) input!2705) (Some!1346 (tuple2!6373 (Token!1731 lt!226614 (rule!1709 (_1!3450 (v!16159 lt!226613))) lt!226601 lt!226617) (_2!3450 (v!16159 lt!226613)))))))

(declare-fun lt!226604 () Unit!9311)

(assert (=> b!542809 (= lt!226604 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!48 thiss!22590 rules!3103 lt!226617 input!2705 (_2!3450 (v!16159 lt!226613)) (rule!1709 (_1!3450 (v!16159 lt!226613)))))))

(declare-fun e!327917 () Bool)

(assert (=> b!542809 e!327917))

(declare-fun res!231272 () Bool)

(assert (=> b!542809 (=> (not res!231272) (not e!327917))))

(assert (=> b!542809 (= res!231272 (= (value!33281 token!491) lt!226607))))

(declare-fun apply!1272 (TokenValueInjection!1810 BalanceConc!3436) TokenValue!1021)

(assert (=> b!542809 (= lt!226607 (apply!1272 (transformation!997 (rule!1709 token!491)) lt!226623))))

(declare-fun seqFromList!1195 (List!5336) BalanceConc!3436)

(assert (=> b!542809 (= lt!226623 (seqFromList!1195 lt!226594))))

(declare-fun lt!226620 () List!5336)

(assert (=> b!542809 (= suffix!1342 lt!226620)))

(declare-fun lt!226603 () Unit!9311)

(declare-fun lemmaSamePrefixThenSameSuffix!366 (List!5336 List!5336 List!5336 List!5336 List!5336) Unit!9311)

(assert (=> b!542809 (= lt!226603 (lemmaSamePrefixThenSameSuffix!366 lt!226594 suffix!1342 lt!226594 lt!226620 lt!226628))))

(declare-fun getSuffix!162 (List!5336 List!5336) List!5336)

(assert (=> b!542809 (= lt!226620 (getSuffix!162 lt!226628 lt!226594))))

(declare-fun b!542810 () Bool)

(declare-fun e!327914 () Bool)

(assert (=> b!542810 (= e!327914 false)))

(declare-fun tp!172704 () Bool)

(declare-fun b!542811 () Bool)

(declare-fun e!327903 () Bool)

(declare-fun e!327895 () Bool)

(declare-fun inv!21 (TokenValue!1021) Bool)

(assert (=> b!542811 (= e!327903 (and (inv!21 (value!33281 token!491)) e!327895 tp!172704))))

(declare-fun b!542812 () Bool)

(declare-fun e!327915 () Bool)

(assert (=> b!542812 (= e!327915 (not e!327910))))

(declare-fun res!231263 () Bool)

(assert (=> b!542812 (=> res!231263 e!327910)))

(declare-fun lt!226626 () List!5336)

(declare-fun isPrefix!639 (List!5336 List!5336) Bool)

(assert (=> b!542812 (= res!231263 (not (isPrefix!639 input!2705 lt!226626)))))

(assert (=> b!542812 (isPrefix!639 lt!226594 lt!226626)))

(declare-fun lt!226618 () Unit!9311)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!490 (List!5336 List!5336) Unit!9311)

(assert (=> b!542812 (= lt!226618 (lemmaConcatTwoListThenFirstIsPrefix!490 lt!226594 suffix!1342))))

(assert (=> b!542812 (isPrefix!639 input!2705 lt!226628)))

(declare-fun lt!226593 () Unit!9311)

(assert (=> b!542812 (= lt!226593 (lemmaConcatTwoListThenFirstIsPrefix!490 input!2705 suffix!1342))))

(assert (=> b!542812 e!327908))

(declare-fun res!231259 () Bool)

(assert (=> b!542812 (=> (not res!231259) (not e!327908))))

(assert (=> b!542812 (= res!231259 (= (value!33281 (_1!3450 (v!16159 lt!226613))) lt!226614))))

(assert (=> b!542812 (= lt!226614 (apply!1272 (transformation!997 (rule!1709 (_1!3450 (v!16159 lt!226613)))) lt!226597))))

(assert (=> b!542812 (= lt!226597 (seqFromList!1195 lt!226617))))

(declare-fun lt!226602 () Unit!9311)

(declare-fun lemmaInv!145 (TokenValueInjection!1810) Unit!9311)

(assert (=> b!542812 (= lt!226602 (lemmaInv!145 (transformation!997 (rule!1709 token!491))))))

(declare-fun lt!226606 () Unit!9311)

(assert (=> b!542812 (= lt!226606 (lemmaInv!145 (transformation!997 (rule!1709 (_1!3450 (v!16159 lt!226613))))))))

(declare-fun ruleValid!217 (LexerInterface!883 Rule!1794) Bool)

(assert (=> b!542812 (ruleValid!217 thiss!22590 (rule!1709 token!491))))

(declare-fun lt!226598 () Unit!9311)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!76 (LexerInterface!883 Rule!1794 List!5337) Unit!9311)

(assert (=> b!542812 (= lt!226598 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!76 thiss!22590 (rule!1709 token!491) rules!3103))))

(assert (=> b!542812 (ruleValid!217 thiss!22590 (rule!1709 (_1!3450 (v!16159 lt!226613))))))

(declare-fun lt!226596 () Unit!9311)

(assert (=> b!542812 (= lt!226596 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!76 thiss!22590 (rule!1709 (_1!3450 (v!16159 lt!226613))) rules!3103))))

(assert (=> b!542812 (isPrefix!639 input!2705 input!2705)))

(declare-fun lt!226622 () Unit!9311)

(declare-fun lemmaIsPrefixRefl!379 (List!5336 List!5336) Unit!9311)

(assert (=> b!542812 (= lt!226622 (lemmaIsPrefixRefl!379 input!2705 input!2705))))

(declare-fun lt!226621 () List!5336)

(assert (=> b!542812 (= (_2!3450 (v!16159 lt!226613)) lt!226621)))

(declare-fun lt!226608 () Unit!9311)

(assert (=> b!542812 (= lt!226608 (lemmaSamePrefixThenSameSuffix!366 lt!226617 (_2!3450 (v!16159 lt!226613)) lt!226617 lt!226621 input!2705))))

(assert (=> b!542812 (= lt!226621 (getSuffix!162 input!2705 lt!226617))))

(assert (=> b!542812 (isPrefix!639 lt!226617 (++!1485 lt!226617 (_2!3450 (v!16159 lt!226613))))))

(declare-fun lt!226624 () Unit!9311)

(assert (=> b!542812 (= lt!226624 (lemmaConcatTwoListThenFirstIsPrefix!490 lt!226617 (_2!3450 (v!16159 lt!226613))))))

(declare-fun lt!226619 () Unit!9311)

(declare-fun lemmaCharactersSize!76 (Token!1730) Unit!9311)

(assert (=> b!542812 (= lt!226619 (lemmaCharactersSize!76 token!491))))

(declare-fun lt!226615 () Unit!9311)

(assert (=> b!542812 (= lt!226615 (lemmaCharactersSize!76 (_1!3450 (v!16159 lt!226613))))))

(declare-fun lt!226599 () Unit!9311)

(assert (=> b!542812 (= lt!226599 e!327920)))

(declare-fun c!102579 () Bool)

(assert (=> b!542812 (= c!102579 (> lt!226601 lt!226605))))

(assert (=> b!542812 (= lt!226605 (size!4275 lt!226594))))

(assert (=> b!542812 (= lt!226601 (size!4275 lt!226617))))

(assert (=> b!542812 (= lt!226617 (list!2209 (charsOf!626 (_1!3450 (v!16159 lt!226613)))))))

(declare-fun lt!226629 () tuple2!6372)

(assert (=> b!542812 (= lt!226613 (Some!1346 lt!226629))))

(assert (=> b!542812 (= lt!226629 (tuple2!6373 (_1!3450 (v!16159 lt!226613)) (_2!3450 (v!16159 lt!226613))))))

(declare-fun lt!226600 () Unit!9311)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!82 (List!5336 List!5336 List!5336 List!5336) Unit!9311)

(assert (=> b!542812 (= lt!226600 (lemmaConcatSameAndSameSizesThenSameLists!82 lt!226594 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!542813 () Bool)

(declare-fun e!327913 () Bool)

(assert (=> b!542813 (= e!327919 e!327913)))

(declare-fun res!231261 () Bool)

(assert (=> b!542813 (=> (not res!231261) (not e!327913))))

(declare-fun lt!226611 () tuple2!6372)

(assert (=> b!542813 (= res!231261 (and (= (_1!3450 lt!226611) token!491) (= (_2!3450 lt!226611) suffix!1342)))))

(assert (=> b!542813 (= lt!226611 (get!2010 lt!226612))))

(declare-fun b!542814 () Bool)

(assert (=> b!542814 (= e!327906 (= lt!226621 (_2!3450 (v!16159 lt!226613))))))

(declare-fun b!542815 () Bool)

(assert (=> b!542815 (= e!327908 (and (= (size!4274 (_1!3450 (v!16159 lt!226613))) lt!226601) (= (originalCharacters!1036 (_1!3450 (v!16159 lt!226613))) lt!226617) (= lt!226629 (tuple2!6373 (Token!1731 lt!226614 (rule!1709 (_1!3450 (v!16159 lt!226613))) lt!226601 lt!226617) lt!226621))))))

(declare-fun b!542816 () Bool)

(declare-fun res!231276 () Bool)

(assert (=> b!542816 (=> (not res!231276) (not e!327909))))

(declare-fun isEmpty!3846 (List!5336) Bool)

(assert (=> b!542816 (= res!231276 (not (isEmpty!3846 input!2705)))))

(declare-fun b!542817 () Bool)

(assert (=> b!542817 (= e!327904 e!327911)))

(declare-fun res!231266 () Bool)

(assert (=> b!542817 (=> res!231266 e!327911)))

(assert (=> b!542817 (= res!231266 (>= lt!226601 lt!226605))))

(declare-fun b!542818 () Bool)

(declare-fun e!327918 () Bool)

(assert (=> b!542818 (= e!327913 e!327918)))

(declare-fun res!231268 () Bool)

(assert (=> b!542818 (=> (not res!231268) (not e!327918))))

(get-info :version)

(assert (=> b!542818 (= res!231268 ((_ is Some!1346) lt!226613))))

(assert (=> b!542818 (= lt!226613 (maxPrefix!581 thiss!22590 rules!3103 input!2705))))

(declare-fun e!327907 () Bool)

(assert (=> b!542819 (= e!327907 (and tp!172710 tp!172706))))

(declare-fun b!542820 () Bool)

(declare-fun res!231273 () Bool)

(assert (=> b!542820 (=> (not res!231273) (not e!327917))))

(assert (=> b!542820 (= res!231273 (= (size!4274 token!491) (size!4275 (originalCharacters!1036 token!491))))))

(declare-fun b!542821 () Bool)

(declare-fun e!327902 () Bool)

(declare-fun tp!172709 () Bool)

(assert (=> b!542821 (= e!327902 (and e!327898 tp!172709))))

(declare-fun b!542822 () Bool)

(assert (=> b!542822 (= e!327918 e!327915)))

(declare-fun res!231265 () Bool)

(assert (=> b!542822 (=> (not res!231265) (not e!327915))))

(assert (=> b!542822 (= res!231265 (= lt!226626 lt!226628))))

(assert (=> b!542822 (= lt!226626 (++!1485 lt!226594 suffix!1342))))

(declare-fun res!231275 () Bool)

(assert (=> start!50092 (=> (not res!231275) (not e!327909))))

(assert (=> start!50092 (= res!231275 ((_ is Lexer!881) thiss!22590))))

(assert (=> start!50092 e!327909))

(declare-fun e!327897 () Bool)

(assert (=> start!50092 e!327897))

(assert (=> start!50092 e!327902))

(declare-fun inv!6682 (Token!1730) Bool)

(assert (=> start!50092 (and (inv!6682 token!491) e!327903)))

(assert (=> start!50092 true))

(declare-fun e!327912 () Bool)

(assert (=> start!50092 e!327912))

(declare-fun b!542805 () Bool)

(declare-fun tp!172702 () Bool)

(assert (=> b!542805 (= e!327895 (and tp!172702 (inv!6678 (tag!1259 (rule!1709 token!491))) (inv!6681 (transformation!997 (rule!1709 token!491))) e!327907))))

(assert (=> b!542823 (= e!327905 (and tp!172708 tp!172705))))

(declare-fun b!542824 () Bool)

(assert (=> b!542824 (= e!327917 (and (= (size!4274 token!491) lt!226605) (= (originalCharacters!1036 token!491) lt!226594) (= (tuple2!6373 token!491 suffix!1342) (tuple2!6373 (Token!1731 lt!226607 (rule!1709 token!491) lt!226605 lt!226594) lt!226620))))))

(declare-fun b!542825 () Bool)

(declare-fun tp_is_empty!3017 () Bool)

(declare-fun tp!172703 () Bool)

(assert (=> b!542825 (= e!327912 (and tp_is_empty!3017 tp!172703))))

(declare-fun b!542826 () Bool)

(declare-fun res!231271 () Bool)

(assert (=> b!542826 (=> (not res!231271) (not e!327909))))

(declare-fun isEmpty!3847 (List!5337) Bool)

(assert (=> b!542826 (= res!231271 (not (isEmpty!3847 rules!3103)))))

(declare-fun b!542827 () Bool)

(declare-fun Unit!9315 () Unit!9311)

(assert (=> b!542827 (= e!327896 Unit!9315)))

(declare-fun lt!226625 () Unit!9311)

(assert (=> b!542827 (= lt!226625 (lemmaSemiInverse!126 (transformation!997 (rule!1709 (_1!3450 (v!16159 lt!226613)))) lt!226597))))

(declare-fun lt!226616 () Unit!9311)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!2 (LexerInterface!883 List!5337 Rule!1794 List!5336 List!5336 List!5336 Rule!1794) Unit!9311)

(assert (=> b!542827 (= lt!226616 (lemmaMaxPrefixOutputsMaxPrefix!2 thiss!22590 rules!3103 (rule!1709 (_1!3450 (v!16159 lt!226613))) lt!226617 input!2705 input!2705 (rule!1709 token!491)))))

(declare-fun res!231260 () Bool)

(declare-fun matchR!490 (Regex!1331 List!5336) Bool)

(assert (=> b!542827 (= res!231260 (not (matchR!490 (regex!997 (rule!1709 token!491)) input!2705)))))

(assert (=> b!542827 (=> (not res!231260) (not e!327914))))

(assert (=> b!542827 e!327914))

(declare-fun b!542828 () Bool)

(declare-fun Unit!9316 () Unit!9311)

(assert (=> b!542828 (= e!327896 Unit!9316)))

(declare-fun b!542829 () Bool)

(declare-fun tp!172701 () Bool)

(assert (=> b!542829 (= e!327897 (and tp_is_empty!3017 tp!172701))))

(assert (= (and start!50092 res!231275) b!542826))

(assert (= (and b!542826 res!231271) b!542800))

(assert (= (and b!542800 res!231258) b!542816))

(assert (= (and b!542816 res!231276) b!542801))

(assert (= (and b!542801 res!231274) b!542806))

(assert (= (and b!542806 res!231270) b!542813))

(assert (= (and b!542813 res!231261) b!542818))

(assert (= (and b!542818 res!231268) b!542822))

(assert (= (and b!542822 res!231265) b!542812))

(assert (= (and b!542812 c!102579) b!542807))

(assert (= (and b!542812 (not c!102579)) b!542803))

(assert (= (and b!542812 res!231259) b!542802))

(assert (= (and b!542802 res!231267) b!542815))

(assert (= (and b!542812 (not res!231263)) b!542809))

(assert (= (and b!542809 res!231272) b!542820))

(assert (= (and b!542820 res!231273) b!542824))

(assert (= (and b!542809 res!231269) b!542817))

(assert (= (and b!542817 (not res!231266)) b!542808))

(assert (= (and b!542808 res!231262) b!542804))

(assert (= (and b!542804 res!231264) b!542814))

(assert (= (and b!542809 c!102578) b!542827))

(assert (= (and b!542809 (not c!102578)) b!542828))

(assert (= (and b!542827 res!231260) b!542810))

(assert (= (and start!50092 ((_ is Cons!5326) suffix!1342)) b!542829))

(assert (= b!542799 b!542823))

(assert (= b!542821 b!542799))

(assert (= (and start!50092 ((_ is Cons!5327) rules!3103)) b!542821))

(assert (= b!542805 b!542819))

(assert (= b!542811 b!542805))

(assert (= start!50092 b!542811))

(assert (= (and start!50092 ((_ is Cons!5326) input!2705)) b!542825))

(declare-fun m!790787 () Bool)

(assert (=> b!542826 m!790787))

(declare-fun m!790789 () Bool)

(assert (=> b!542805 m!790789))

(declare-fun m!790791 () Bool)

(assert (=> b!542805 m!790791))

(declare-fun m!790793 () Bool)

(assert (=> b!542818 m!790793))

(declare-fun m!790795 () Bool)

(assert (=> b!542806 m!790795))

(declare-fun m!790797 () Bool)

(assert (=> b!542806 m!790797))

(declare-fun m!790799 () Bool)

(assert (=> b!542806 m!790799))

(declare-fun m!790801 () Bool)

(assert (=> b!542799 m!790801))

(declare-fun m!790803 () Bool)

(assert (=> b!542799 m!790803))

(declare-fun m!790805 () Bool)

(assert (=> b!542813 m!790805))

(declare-fun m!790807 () Bool)

(assert (=> b!542808 m!790807))

(declare-fun m!790809 () Bool)

(assert (=> b!542822 m!790809))

(declare-fun m!790811 () Bool)

(assert (=> b!542800 m!790811))

(declare-fun m!790813 () Bool)

(assert (=> b!542801 m!790813))

(assert (=> b!542801 m!790813))

(declare-fun m!790815 () Bool)

(assert (=> b!542801 m!790815))

(declare-fun m!790817 () Bool)

(assert (=> b!542812 m!790817))

(declare-fun m!790819 () Bool)

(assert (=> b!542812 m!790819))

(declare-fun m!790821 () Bool)

(assert (=> b!542812 m!790821))

(declare-fun m!790823 () Bool)

(assert (=> b!542812 m!790823))

(declare-fun m!790825 () Bool)

(assert (=> b!542812 m!790825))

(declare-fun m!790827 () Bool)

(assert (=> b!542812 m!790827))

(declare-fun m!790829 () Bool)

(assert (=> b!542812 m!790829))

(declare-fun m!790831 () Bool)

(assert (=> b!542812 m!790831))

(declare-fun m!790833 () Bool)

(assert (=> b!542812 m!790833))

(declare-fun m!790835 () Bool)

(assert (=> b!542812 m!790835))

(declare-fun m!790837 () Bool)

(assert (=> b!542812 m!790837))

(declare-fun m!790839 () Bool)

(assert (=> b!542812 m!790839))

(declare-fun m!790841 () Bool)

(assert (=> b!542812 m!790841))

(declare-fun m!790843 () Bool)

(assert (=> b!542812 m!790843))

(declare-fun m!790845 () Bool)

(assert (=> b!542812 m!790845))

(declare-fun m!790847 () Bool)

(assert (=> b!542812 m!790847))

(declare-fun m!790849 () Bool)

(assert (=> b!542812 m!790849))

(assert (=> b!542812 m!790827))

(declare-fun m!790851 () Bool)

(assert (=> b!542812 m!790851))

(declare-fun m!790853 () Bool)

(assert (=> b!542812 m!790853))

(declare-fun m!790855 () Bool)

(assert (=> b!542812 m!790855))

(declare-fun m!790857 () Bool)

(assert (=> b!542812 m!790857))

(declare-fun m!790859 () Bool)

(assert (=> b!542812 m!790859))

(declare-fun m!790861 () Bool)

(assert (=> b!542812 m!790861))

(declare-fun m!790863 () Bool)

(assert (=> b!542812 m!790863))

(declare-fun m!790865 () Bool)

(assert (=> b!542812 m!790865))

(assert (=> b!542812 m!790859))

(declare-fun m!790867 () Bool)

(assert (=> b!542812 m!790867))

(declare-fun m!790869 () Bool)

(assert (=> b!542812 m!790869))

(declare-fun m!790871 () Bool)

(assert (=> b!542820 m!790871))

(declare-fun m!790873 () Bool)

(assert (=> b!542809 m!790873))

(declare-fun m!790875 () Bool)

(assert (=> b!542809 m!790875))

(declare-fun m!790877 () Bool)

(assert (=> b!542809 m!790877))

(declare-fun m!790879 () Bool)

(assert (=> b!542809 m!790879))

(declare-fun m!790881 () Bool)

(assert (=> b!542809 m!790881))

(declare-fun m!790883 () Bool)

(assert (=> b!542809 m!790883))

(declare-fun m!790885 () Bool)

(assert (=> b!542809 m!790885))

(declare-fun m!790887 () Bool)

(assert (=> b!542809 m!790887))

(declare-fun m!790889 () Bool)

(assert (=> b!542809 m!790889))

(declare-fun m!790891 () Bool)

(assert (=> b!542809 m!790891))

(declare-fun m!790893 () Bool)

(assert (=> b!542811 m!790893))

(declare-fun m!790895 () Bool)

(assert (=> b!542802 m!790895))

(declare-fun m!790897 () Bool)

(assert (=> start!50092 m!790897))

(assert (=> b!542827 m!790879))

(declare-fun m!790899 () Bool)

(assert (=> b!542827 m!790899))

(declare-fun m!790901 () Bool)

(assert (=> b!542827 m!790901))

(declare-fun m!790903 () Bool)

(assert (=> b!542816 m!790903))

(declare-fun m!790905 () Bool)

(assert (=> b!542804 m!790905))

(check-sat tp_is_empty!3017 (not b!542813) (not b!542806) (not b!542826) (not b_next!15053) (not b!542821) (not b!542805) (not b!542808) (not b!542822) (not b!542829) b_and!53003 (not b!542799) b_and!53009 (not b_next!15051) (not start!50092) (not b_next!15055) (not b!542816) (not b!542804) (not b!542800) (not b!542827) (not b!542812) (not b!542825) (not b!542801) (not b!542802) (not b!542820) (not b_next!15049) b_and!53007 (not b!542809) (not b!542818) (not b!542811) b_and!53005)
(check-sat (not b_next!15055) (not b_next!15053) b_and!53005 b_and!53003 b_and!53009 (not b_next!15051) (not b_next!15049) b_and!53007)
