; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169398 () Bool)

(assert start!169398)

(declare-fun b!1725801 () Bool)

(declare-fun b_free!47107 () Bool)

(declare-fun b_next!47811 () Bool)

(assert (=> b!1725801 (= b_free!47107 (not b_next!47811))))

(declare-fun tp!492443 () Bool)

(declare-fun b_and!126583 () Bool)

(assert (=> b!1725801 (= tp!492443 b_and!126583)))

(declare-fun b_free!47109 () Bool)

(declare-fun b_next!47813 () Bool)

(assert (=> b!1725801 (= b_free!47109 (not b_next!47813))))

(declare-fun tp!492448 () Bool)

(declare-fun b_and!126585 () Bool)

(assert (=> b!1725801 (= tp!492448 b_and!126585)))

(declare-fun b!1725802 () Bool)

(declare-fun b_free!47111 () Bool)

(declare-fun b_next!47815 () Bool)

(assert (=> b!1725802 (= b_free!47111 (not b_next!47815))))

(declare-fun tp!492437 () Bool)

(declare-fun b_and!126587 () Bool)

(assert (=> b!1725802 (= tp!492437 b_and!126587)))

(declare-fun b_free!47113 () Bool)

(declare-fun b_next!47817 () Bool)

(assert (=> b!1725802 (= b_free!47113 (not b_next!47817))))

(declare-fun tp!492444 () Bool)

(declare-fun b_and!126589 () Bool)

(assert (=> b!1725802 (= tp!492444 b_and!126589)))

(declare-fun b!1725812 () Bool)

(declare-fun b_free!47115 () Bool)

(declare-fun b_next!47819 () Bool)

(assert (=> b!1725812 (= b_free!47115 (not b_next!47819))))

(declare-fun tp!492441 () Bool)

(declare-fun b_and!126591 () Bool)

(assert (=> b!1725812 (= tp!492441 b_and!126591)))

(declare-fun b_free!47117 () Bool)

(declare-fun b_next!47821 () Bool)

(assert (=> b!1725812 (= b_free!47117 (not b_next!47821))))

(declare-fun tp!492445 () Bool)

(declare-fun b_and!126593 () Bool)

(assert (=> b!1725812 (= tp!492445 b_and!126593)))

(declare-fun b!1725830 () Bool)

(declare-fun e!1103977 () Bool)

(assert (=> b!1725830 (= e!1103977 true)))

(declare-fun b!1725829 () Bool)

(declare-fun e!1103976 () Bool)

(assert (=> b!1725829 (= e!1103976 e!1103977)))

(declare-fun b!1725828 () Bool)

(declare-fun e!1103975 () Bool)

(assert (=> b!1725828 (= e!1103975 e!1103976)))

(declare-fun b!1725811 () Bool)

(assert (=> b!1725811 e!1103975))

(assert (= b!1725829 b!1725830))

(assert (= b!1725828 b!1725829))

(assert (= b!1725811 b!1725828))

(declare-fun lambda!69242 () Int)

(declare-fun order!11577 () Int)

(declare-fun order!11575 () Int)

(declare-datatypes ((List!18972 0))(
  ( (Nil!18902) (Cons!18902 (h!24303 (_ BitVec 16)) (t!160067 List!18972)) )
))
(declare-datatypes ((TokenValue!3441 0))(
  ( (FloatLiteralValue!6882 (text!24532 List!18972)) (TokenValueExt!3440 (__x!12184 Int)) (Broken!17205 (value!105150 List!18972)) (Object!3510) (End!3441) (Def!3441) (Underscore!3441) (Match!3441) (Else!3441) (Error!3441) (Case!3441) (If!3441) (Extends!3441) (Abstract!3441) (Class!3441) (Val!3441) (DelimiterValue!6882 (del!3501 List!18972)) (KeywordValue!3447 (value!105151 List!18972)) (CommentValue!6882 (value!105152 List!18972)) (WhitespaceValue!6882 (value!105153 List!18972)) (IndentationValue!3441 (value!105154 List!18972)) (String!21536) (Int32!3441) (Broken!17206 (value!105155 List!18972)) (Boolean!3442) (Unit!32750) (OperatorValue!3444 (op!3501 List!18972)) (IdentifierValue!6882 (value!105156 List!18972)) (IdentifierValue!6883 (value!105157 List!18972)) (WhitespaceValue!6883 (value!105158 List!18972)) (True!6882) (False!6882) (Broken!17207 (value!105159 List!18972)) (Broken!17208 (value!105160 List!18972)) (True!6883) (RightBrace!3441) (RightBracket!3441) (Colon!3441) (Null!3441) (Comma!3441) (LeftBracket!3441) (False!6883) (LeftBrace!3441) (ImaginaryLiteralValue!3441 (text!24533 List!18972)) (StringLiteralValue!10323 (value!105161 List!18972)) (EOFValue!3441 (value!105162 List!18972)) (IdentValue!3441 (value!105163 List!18972)) (DelimiterValue!6883 (value!105164 List!18972)) (DedentValue!3441 (value!105165 List!18972)) (NewLineValue!3441 (value!105166 List!18972)) (IntegerValue!10323 (value!105167 (_ BitVec 32)) (text!24534 List!18972)) (IntegerValue!10324 (value!105168 Int) (text!24535 List!18972)) (Times!3441) (Or!3441) (Equal!3441) (Minus!3441) (Broken!17209 (value!105169 List!18972)) (And!3441) (Div!3441) (LessEqual!3441) (Mod!3441) (Concat!8120) (Not!3441) (Plus!3441) (SpaceValue!3441 (value!105170 List!18972)) (IntegerValue!10325 (value!105171 Int) (text!24536 List!18972)) (StringLiteralValue!10324 (text!24537 List!18972)) (FloatLiteralValue!6883 (text!24538 List!18972)) (BytesLiteralValue!3441 (value!105172 List!18972)) (CommentValue!6883 (value!105173 List!18972)) (StringLiteralValue!10325 (value!105174 List!18972)) (ErrorTokenValue!3441 (msg!3502 List!18972)) )
))
(declare-datatypes ((C!9532 0))(
  ( (C!9533 (val!5362 Int)) )
))
(declare-datatypes ((List!18973 0))(
  ( (Nil!18903) (Cons!18903 (h!24304 C!9532) (t!160068 List!18973)) )
))
(declare-datatypes ((String!21537 0))(
  ( (String!21538 (value!105175 String)) )
))
(declare-datatypes ((Regex!4679 0))(
  ( (ElementMatch!4679 (c!282190 C!9532)) (Concat!8121 (regOne!9870 Regex!4679) (regTwo!9870 Regex!4679)) (EmptyExpr!4679) (Star!4679 (reg!5008 Regex!4679)) (EmptyLang!4679) (Union!4679 (regOne!9871 Regex!4679) (regTwo!9871 Regex!4679)) )
))
(declare-datatypes ((IArray!12579 0))(
  ( (IArray!12580 (innerList!6347 List!18973)) )
))
(declare-datatypes ((Conc!6287 0))(
  ( (Node!6287 (left!15088 Conc!6287) (right!15418 Conc!6287) (csize!12804 Int) (cheight!6498 Int)) (Leaf!9183 (xs!9163 IArray!12579) (csize!12805 Int)) (Empty!6287) )
))
(declare-datatypes ((BalanceConc!12518 0))(
  ( (BalanceConc!12519 (c!282191 Conc!6287)) )
))
(declare-datatypes ((TokenValueInjection!6542 0))(
  ( (TokenValueInjection!6543 (toValue!4858 Int) (toChars!4717 Int)) )
))
(declare-datatypes ((Rule!6502 0))(
  ( (Rule!6503 (regex!3351 Regex!4679) (tag!3669 String!21537) (isSeparator!3351 Bool) (transformation!3351 TokenValueInjection!6542)) )
))
(declare-datatypes ((Token!6268 0))(
  ( (Token!6269 (value!105176 TokenValue!3441) (rule!5313 Rule!6502) (size!15018 Int) (originalCharacters!4165 List!18973)) )
))
(declare-datatypes ((tuple2!18590 0))(
  ( (tuple2!18591 (_1!10697 Token!6268) (_2!10697 List!18973)) )
))
(declare-fun lt!660897 () tuple2!18590)

(declare-fun dynLambda!8750 (Int Int) Int)

(declare-fun dynLambda!8751 (Int Int) Int)

(assert (=> b!1725830 (< (dynLambda!8750 order!11575 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8751 order!11577 lambda!69242))))

(declare-fun order!11579 () Int)

(declare-fun dynLambda!8752 (Int Int) Int)

(assert (=> b!1725830 (< (dynLambda!8752 order!11579 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8751 order!11577 lambda!69242))))

(declare-fun b!1725790 () Bool)

(declare-fun e!1103948 () Bool)

(declare-fun e!1103954 () Bool)

(assert (=> b!1725790 (= e!1103948 e!1103954)))

(declare-fun res!774643 () Bool)

(assert (=> b!1725790 (=> res!774643 e!1103954)))

(declare-fun lt!660905 () TokenValue!3441)

(declare-fun lt!660880 () Int)

(declare-datatypes ((Option!3726 0))(
  ( (None!3725) (Some!3725 (v!25136 tuple2!18590)) )
))
(declare-fun lt!660884 () Option!3726)

(declare-fun lt!660885 () List!18973)

(assert (=> b!1725790 (= res!774643 (not (= lt!660884 (Some!3725 (tuple2!18591 (Token!6269 lt!660905 (rule!5313 (_1!10697 lt!660897)) lt!660880 lt!660885) (_2!10697 lt!660897))))))))

(declare-fun lt!660902 () BalanceConc!12518)

(declare-fun size!15019 (BalanceConc!12518) Int)

(assert (=> b!1725790 (= lt!660880 (size!15019 lt!660902))))

(declare-fun apply!5156 (TokenValueInjection!6542 BalanceConc!12518) TokenValue!3441)

(assert (=> b!1725790 (= lt!660905 (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902))))

(declare-datatypes ((Unit!32751 0))(
  ( (Unit!32752) )
))
(declare-fun lt!660892 () Unit!32751)

(declare-fun lemmaCharactersSize!423 (Token!6268) Unit!32751)

(assert (=> b!1725790 (= lt!660892 (lemmaCharactersSize!423 (_1!10697 lt!660897)))))

(declare-fun lt!660888 () Unit!32751)

(declare-fun lemmaEqSameImage!276 (TokenValueInjection!6542 BalanceConc!12518 BalanceConc!12518) Unit!32751)

(declare-fun seqFromList!2325 (List!18973) BalanceConc!12518)

(assert (=> b!1725790 (= lt!660888 (lemmaEqSameImage!276 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902 (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897)))))))

(declare-fun b!1725791 () Bool)

(declare-fun e!1103943 () Bool)

(declare-fun e!1103957 () Bool)

(assert (=> b!1725791 (= e!1103943 e!1103957)))

(declare-fun res!774635 () Bool)

(assert (=> b!1725791 (=> (not res!774635) (not e!1103957))))

(declare-fun lt!660908 () Option!3726)

(declare-fun isDefined!3069 (Option!3726) Bool)

(assert (=> b!1725791 (= res!774635 (isDefined!3069 lt!660908))))

(declare-fun lt!660900 () List!18973)

(declare-datatypes ((LexerInterface!2980 0))(
  ( (LexerInterfaceExt!2977 (__x!12185 Int)) (Lexer!2978) )
))
(declare-fun thiss!24550 () LexerInterface!2980)

(declare-datatypes ((List!18974 0))(
  ( (Nil!18904) (Cons!18904 (h!24305 Rule!6502) (t!160069 List!18974)) )
))
(declare-fun rules!3447 () List!18974)

(declare-fun maxPrefix!1534 (LexerInterface!2980 List!18974 List!18973) Option!3726)

(assert (=> b!1725791 (= lt!660908 (maxPrefix!1534 thiss!24550 rules!3447 lt!660900))))

(declare-fun lt!660898 () BalanceConc!12518)

(declare-fun list!7640 (BalanceConc!12518) List!18973)

(assert (=> b!1725791 (= lt!660900 (list!7640 lt!660898))))

(declare-fun token!523 () Token!6268)

(declare-fun charsOf!2000 (Token!6268) BalanceConc!12518)

(assert (=> b!1725791 (= lt!660898 (charsOf!2000 token!523))))

(declare-fun b!1725792 () Bool)

(declare-fun e!1103952 () Bool)

(assert (=> b!1725792 (= e!1103957 e!1103952)))

(declare-fun res!774651 () Bool)

(assert (=> b!1725792 (=> (not res!774651) (not e!1103952))))

(declare-fun lt!660887 () tuple2!18590)

(assert (=> b!1725792 (= res!774651 (= (_1!10697 lt!660887) token!523))))

(declare-fun get!5619 (Option!3726) tuple2!18590)

(assert (=> b!1725792 (= lt!660887 (get!5619 lt!660908))))

(declare-fun tp!492440 () Bool)

(declare-fun b!1725794 () Bool)

(declare-fun e!1103945 () Bool)

(declare-fun e!1103955 () Bool)

(declare-fun inv!24424 (String!21537) Bool)

(declare-fun inv!24429 (TokenValueInjection!6542) Bool)

(assert (=> b!1725794 (= e!1103955 (and tp!492440 (inv!24424 (tag!3669 (h!24305 rules!3447))) (inv!24429 (transformation!3351 (h!24305 rules!3447))) e!1103945))))

(declare-fun b!1725795 () Bool)

(declare-fun res!774649 () Bool)

(assert (=> b!1725795 (=> (not res!774649) (not e!1103952))))

(declare-fun rule!422 () Rule!6502)

(assert (=> b!1725795 (= res!774649 (= (rule!5313 token!523) rule!422))))

(declare-fun b!1725796 () Bool)

(declare-fun e!1103963 () Bool)

(declare-fun e!1103958 () Bool)

(declare-fun tp!492447 () Bool)

(assert (=> b!1725796 (= e!1103963 (and tp!492447 (inv!24424 (tag!3669 rule!422)) (inv!24429 (transformation!3351 rule!422)) e!1103958))))

(declare-fun b!1725797 () Bool)

(declare-fun res!774648 () Bool)

(assert (=> b!1725797 (=> res!774648 e!1103948)))

(declare-fun dynLambda!8753 (Int TokenValue!3441) BalanceConc!12518)

(assert (=> b!1725797 (= res!774648 (not (= lt!660902 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))))

(declare-fun e!1103960 () Bool)

(declare-fun b!1725798 () Bool)

(declare-fun tp!492439 () Bool)

(declare-fun e!1103961 () Bool)

(declare-fun inv!21 (TokenValue!3441) Bool)

(assert (=> b!1725798 (= e!1103961 (and (inv!21 (value!105176 token!523)) e!1103960 tp!492439))))

(declare-fun b!1725799 () Bool)

(declare-fun res!774642 () Bool)

(assert (=> b!1725799 (=> (not res!774642) (not e!1103952))))

(declare-fun isEmpty!11889 (List!18973) Bool)

(assert (=> b!1725799 (= res!774642 (isEmpty!11889 (_2!10697 lt!660887)))))

(declare-fun b!1725800 () Bool)

(declare-fun e!1103944 () Bool)

(assert (=> b!1725800 (= e!1103952 (not e!1103944))))

(declare-fun res!774645 () Bool)

(assert (=> b!1725800 (=> res!774645 e!1103944)))

(declare-fun matchR!2153 (Regex!4679 List!18973) Bool)

(assert (=> b!1725800 (= res!774645 (not (matchR!2153 (regex!3351 rule!422) lt!660900)))))

(declare-fun ruleValid!850 (LexerInterface!2980 Rule!6502) Bool)

(assert (=> b!1725800 (ruleValid!850 thiss!24550 rule!422)))

(declare-fun lt!660890 () Unit!32751)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!374 (LexerInterface!2980 Rule!6502 List!18974) Unit!32751)

(assert (=> b!1725800 (= lt!660890 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!374 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1725801 (= e!1103958 (and tp!492443 tp!492448))))

(declare-fun e!1103951 () Bool)

(assert (=> b!1725802 (= e!1103951 (and tp!492437 tp!492444))))

(declare-fun b!1725803 () Bool)

(declare-fun e!1103947 () Bool)

(declare-fun e!1103965 () Bool)

(assert (=> b!1725803 (= e!1103947 e!1103965)))

(declare-fun res!774639 () Bool)

(assert (=> b!1725803 (=> res!774639 e!1103965)))

(declare-fun lt!660895 () List!18973)

(declare-fun isPrefix!1592 (List!18973 List!18973) Bool)

(assert (=> b!1725803 (= res!774639 (not (isPrefix!1592 lt!660885 lt!660895)))))

(declare-fun ++!5176 (List!18973 List!18973) List!18973)

(assert (=> b!1725803 (isPrefix!1592 lt!660885 (++!5176 lt!660885 (_2!10697 lt!660897)))))

(declare-fun lt!660903 () Unit!32751)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1102 (List!18973 List!18973) Unit!32751)

(assert (=> b!1725803 (= lt!660903 (lemmaConcatTwoListThenFirstIsPrefix!1102 lt!660885 (_2!10697 lt!660897)))))

(assert (=> b!1725803 (= lt!660885 (list!7640 lt!660902))))

(assert (=> b!1725803 (= lt!660902 (charsOf!2000 (_1!10697 lt!660897)))))

(declare-fun e!1103962 () Bool)

(assert (=> b!1725803 e!1103962))

(declare-fun res!774641 () Bool)

(assert (=> b!1725803 (=> (not res!774641) (not e!1103962))))

(declare-datatypes ((Option!3727 0))(
  ( (None!3726) (Some!3726 (v!25137 Rule!6502)) )
))
(declare-fun lt!660899 () Option!3727)

(declare-fun isDefined!3070 (Option!3727) Bool)

(assert (=> b!1725803 (= res!774641 (isDefined!3070 lt!660899))))

(declare-fun getRuleFromTag!401 (LexerInterface!2980 List!18974 String!21537) Option!3727)

(assert (=> b!1725803 (= lt!660899 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun lt!660904 () Unit!32751)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!401 (LexerInterface!2980 List!18974 List!18973 Token!6268) Unit!32751)

(assert (=> b!1725803 (= lt!660904 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!401 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897)))))

(assert (=> b!1725803 (= lt!660897 (get!5619 lt!660884))))

(declare-fun suffix!1421 () List!18973)

(declare-fun lt!660896 () Unit!32751)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!504 (LexerInterface!2980 List!18974 List!18973 List!18973) Unit!32751)

(assert (=> b!1725803 (= lt!660896 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!504 thiss!24550 rules!3447 lt!660900 suffix!1421))))

(assert (=> b!1725803 (= lt!660884 (maxPrefix!1534 thiss!24550 rules!3447 lt!660895))))

(assert (=> b!1725803 (isPrefix!1592 lt!660900 lt!660895)))

(declare-fun lt!660878 () Unit!32751)

(assert (=> b!1725803 (= lt!660878 (lemmaConcatTwoListThenFirstIsPrefix!1102 lt!660900 suffix!1421))))

(assert (=> b!1725803 (= lt!660895 (++!5176 lt!660900 suffix!1421))))

(declare-fun b!1725804 () Bool)

(declare-fun res!774640 () Bool)

(assert (=> b!1725804 (=> (not res!774640) (not e!1103943))))

(declare-fun isEmpty!11890 (List!18974) Bool)

(assert (=> b!1725804 (= res!774640 (not (isEmpty!11890 rules!3447)))))

(declare-fun b!1725805 () Bool)

(declare-fun e!1103959 () Bool)

(assert (=> b!1725805 (= e!1103954 e!1103959)))

(declare-fun res!774646 () Bool)

(assert (=> b!1725805 (=> res!774646 e!1103959)))

(declare-fun lt!660893 () Option!3726)

(declare-fun lt!660883 () List!18973)

(assert (=> b!1725805 (= res!774646 (or (not (= lt!660883 (_2!10697 lt!660897))) (not (= lt!660893 (Some!3725 (tuple2!18591 (_1!10697 lt!660897) lt!660883))))))))

(assert (=> b!1725805 (= (_2!10697 lt!660897) lt!660883)))

(declare-fun lt!660894 () Unit!32751)

(declare-fun lemmaSamePrefixThenSameSuffix!736 (List!18973 List!18973 List!18973 List!18973 List!18973) Unit!32751)

(assert (=> b!1725805 (= lt!660894 (lemmaSamePrefixThenSameSuffix!736 lt!660885 (_2!10697 lt!660897) lt!660885 lt!660883 lt!660895))))

(declare-fun getSuffix!786 (List!18973 List!18973) List!18973)

(assert (=> b!1725805 (= lt!660883 (getSuffix!786 lt!660895 lt!660885))))

(declare-fun lt!660882 () TokenValue!3441)

(declare-fun lt!660906 () Int)

(assert (=> b!1725805 (= lt!660893 (Some!3725 (tuple2!18591 (Token!6269 lt!660882 (rule!5313 (_1!10697 lt!660897)) lt!660906 lt!660885) (_2!10697 lt!660897))))))

(declare-fun maxPrefixOneRule!910 (LexerInterface!2980 Rule!6502 List!18973) Option!3726)

(assert (=> b!1725805 (= lt!660893 (maxPrefixOneRule!910 thiss!24550 (rule!5313 (_1!10697 lt!660897)) lt!660895))))

(declare-fun size!15020 (List!18973) Int)

(assert (=> b!1725805 (= lt!660906 (size!15020 lt!660885))))

(assert (=> b!1725805 (= lt!660882 (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) (seqFromList!2325 lt!660885)))))

(declare-fun lt!660879 () Unit!32751)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!309 (LexerInterface!2980 List!18974 List!18973 List!18973 List!18973 Rule!6502) Unit!32751)

(assert (=> b!1725805 (= lt!660879 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!309 thiss!24550 rules!3447 lt!660885 lt!660895 (_2!10697 lt!660897) (rule!5313 (_1!10697 lt!660897))))))

(declare-fun b!1725806 () Bool)

(declare-fun res!774634 () Bool)

(assert (=> b!1725806 (=> (not res!774634) (not e!1103943))))

(declare-fun contains!3373 (List!18974 Rule!6502) Bool)

(assert (=> b!1725806 (= res!774634 (contains!3373 rules!3447 rule!422))))

(declare-fun b!1725807 () Bool)

(declare-fun e!1103956 () Bool)

(assert (=> b!1725807 (= e!1103956 e!1103948)))

(declare-fun res!774653 () Bool)

(assert (=> b!1725807 (=> res!774653 e!1103948)))

(declare-fun dynLambda!8754 (Int BalanceConc!12518) TokenValue!3441)

(assert (=> b!1725807 (= res!774653 (not (= (list!7640 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))) lt!660885)))))

(declare-fun lt!660886 () Unit!32751)

(declare-fun lemmaSemiInverse!497 (TokenValueInjection!6542 BalanceConc!12518) Unit!32751)

(assert (=> b!1725807 (= lt!660886 (lemmaSemiInverse!497 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902))))

(declare-fun b!1725808 () Bool)

(declare-fun e!1103949 () Bool)

(assert (=> b!1725808 (= e!1103959 e!1103949)))

(declare-fun res!774644 () Bool)

(assert (=> b!1725808 (=> res!774644 e!1103949)))

(assert (=> b!1725808 (= res!774644 (<= lt!660880 (size!15019 lt!660898)))))

(declare-fun lt!660901 () Regex!4679)

(assert (=> b!1725808 (matchR!2153 lt!660901 lt!660900)))

(declare-fun lt!660889 () Unit!32751)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!100 (LexerInterface!2980 List!18974 List!18973 Token!6268 Rule!6502 List!18973) Unit!32751)

(assert (=> b!1725808 (= lt!660889 (lemmaMaxPrefixThenMatchesRulesRegex!100 thiss!24550 rules!3447 lt!660900 token!523 rule!422 Nil!18903))))

(declare-fun b!1725809 () Bool)

(declare-fun res!774637 () Bool)

(assert (=> b!1725809 (=> (not res!774637) (not e!1103943))))

(declare-fun rulesInvariant!2649 (LexerInterface!2980 List!18974) Bool)

(assert (=> b!1725809 (= res!774637 (rulesInvariant!2649 thiss!24550 rules!3447))))

(declare-fun res!774654 () Bool)

(assert (=> start!169398 (=> (not res!774654) (not e!1103943))))

(get-info :version)

(assert (=> start!169398 (= res!774654 ((_ is Lexer!2978) thiss!24550))))

(assert (=> start!169398 e!1103943))

(declare-fun e!1103966 () Bool)

(assert (=> start!169398 e!1103966))

(assert (=> start!169398 e!1103963))

(assert (=> start!169398 true))

(declare-fun inv!24430 (Token!6268) Bool)

(assert (=> start!169398 (and (inv!24430 token!523) e!1103961)))

(declare-fun e!1103946 () Bool)

(assert (=> start!169398 e!1103946))

(declare-fun b!1725793 () Bool)

(assert (=> b!1725793 (= e!1103949 (>= (size!15020 lt!660895) (size!15020 lt!660900)))))

(assert (=> b!1725793 (matchR!2153 lt!660901 lt!660885)))

(declare-fun lt!660907 () Unit!32751)

(assert (=> b!1725793 (= lt!660907 (lemmaMaxPrefixThenMatchesRulesRegex!100 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897) (rule!5313 (_1!10697 lt!660897)) (_2!10697 lt!660897)))))

(declare-fun b!1725810 () Bool)

(declare-fun e!1103968 () Bool)

(assert (=> b!1725810 (= e!1103962 e!1103968)))

(declare-fun res!774652 () Bool)

(assert (=> b!1725810 (=> (not res!774652) (not e!1103968))))

(declare-fun lt!660891 () Rule!6502)

(assert (=> b!1725810 (= res!774652 (matchR!2153 (regex!3351 lt!660891) (list!7640 (charsOf!2000 (_1!10697 lt!660897)))))))

(declare-fun get!5620 (Option!3727) Rule!6502)

(assert (=> b!1725810 (= lt!660891 (get!5620 lt!660899))))

(assert (=> b!1725811 (= e!1103965 e!1103956)))

(declare-fun res!774636 () Bool)

(assert (=> b!1725811 (=> res!774636 e!1103956)))

(declare-fun Forall!726 (Int) Bool)

(assert (=> b!1725811 (= res!774636 (not (Forall!726 lambda!69242)))))

(declare-fun lt!660881 () Unit!32751)

(declare-fun lemmaInv!558 (TokenValueInjection!6542) Unit!32751)

(assert (=> b!1725811 (= lt!660881 (lemmaInv!558 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))))

(assert (=> b!1725812 (= e!1103945 (and tp!492441 tp!492445))))

(declare-fun b!1725813 () Bool)

(declare-fun res!774638 () Bool)

(assert (=> b!1725813 (=> res!774638 e!1103944)))

(assert (=> b!1725813 (= res!774638 (isEmpty!11889 suffix!1421))))

(declare-fun b!1725814 () Bool)

(declare-fun tp!492446 () Bool)

(assert (=> b!1725814 (= e!1103946 (and e!1103955 tp!492446))))

(declare-fun b!1725815 () Bool)

(assert (=> b!1725815 (= e!1103944 e!1103947)))

(declare-fun res!774650 () Bool)

(assert (=> b!1725815 (=> res!774650 e!1103947)))

(declare-fun prefixMatch!564 (Regex!4679 List!18973) Bool)

(declare-fun head!3912 (List!18973) C!9532)

(assert (=> b!1725815 (= res!774650 (prefixMatch!564 lt!660901 (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903))))))

(declare-fun rulesRegex!709 (LexerInterface!2980 List!18974) Regex!4679)

(assert (=> b!1725815 (= lt!660901 (rulesRegex!709 thiss!24550 rules!3447))))

(declare-fun b!1725816 () Bool)

(declare-fun tp_is_empty!7601 () Bool)

(declare-fun tp!492438 () Bool)

(assert (=> b!1725816 (= e!1103966 (and tp_is_empty!7601 tp!492438))))

(declare-fun b!1725817 () Bool)

(assert (=> b!1725817 (= e!1103968 (= (rule!5313 (_1!10697 lt!660897)) lt!660891))))

(declare-fun b!1725818 () Bool)

(declare-fun res!774647 () Bool)

(assert (=> b!1725818 (=> res!774647 e!1103965)))

(assert (=> b!1725818 (= res!774647 (not (matchR!2153 (regex!3351 (rule!5313 (_1!10697 lt!660897))) lt!660885)))))

(declare-fun b!1725819 () Bool)

(declare-fun tp!492442 () Bool)

(assert (=> b!1725819 (= e!1103960 (and tp!492442 (inv!24424 (tag!3669 (rule!5313 token!523))) (inv!24429 (transformation!3351 (rule!5313 token!523))) e!1103951))))

(assert (= (and start!169398 res!774654) b!1725804))

(assert (= (and b!1725804 res!774640) b!1725809))

(assert (= (and b!1725809 res!774637) b!1725806))

(assert (= (and b!1725806 res!774634) b!1725791))

(assert (= (and b!1725791 res!774635) b!1725792))

(assert (= (and b!1725792 res!774651) b!1725799))

(assert (= (and b!1725799 res!774642) b!1725795))

(assert (= (and b!1725795 res!774649) b!1725800))

(assert (= (and b!1725800 (not res!774645)) b!1725813))

(assert (= (and b!1725813 (not res!774638)) b!1725815))

(assert (= (and b!1725815 (not res!774650)) b!1725803))

(assert (= (and b!1725803 res!774641) b!1725810))

(assert (= (and b!1725810 res!774652) b!1725817))

(assert (= (and b!1725803 (not res!774639)) b!1725818))

(assert (= (and b!1725818 (not res!774647)) b!1725811))

(assert (= (and b!1725811 (not res!774636)) b!1725807))

(assert (= (and b!1725807 (not res!774653)) b!1725797))

(assert (= (and b!1725797 (not res!774648)) b!1725790))

(assert (= (and b!1725790 (not res!774643)) b!1725805))

(assert (= (and b!1725805 (not res!774646)) b!1725808))

(assert (= (and b!1725808 (not res!774644)) b!1725793))

(assert (= (and start!169398 ((_ is Cons!18903) suffix!1421)) b!1725816))

(assert (= b!1725796 b!1725801))

(assert (= start!169398 b!1725796))

(assert (= b!1725819 b!1725802))

(assert (= b!1725798 b!1725819))

(assert (= start!169398 b!1725798))

(assert (= b!1725794 b!1725812))

(assert (= b!1725814 b!1725794))

(assert (= (and start!169398 ((_ is Cons!18904) rules!3447)) b!1725814))

(declare-fun b_lambda!54887 () Bool)

(assert (=> (not b_lambda!54887) (not b!1725797)))

(declare-fun t!160050 () Bool)

(declare-fun tb!102513 () Bool)

(assert (=> (and b!1725801 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160050) tb!102513))

(declare-fun b!1725835 () Bool)

(declare-fun e!1103980 () Bool)

(declare-fun tp!492451 () Bool)

(declare-fun inv!24431 (Conc!6287) Bool)

(assert (=> b!1725835 (= e!1103980 (and (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))) tp!492451))))

(declare-fun result!123236 () Bool)

(declare-fun inv!24432 (BalanceConc!12518) Bool)

(assert (=> tb!102513 (= result!123236 (and (inv!24432 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))) e!1103980))))

(assert (= tb!102513 b!1725835))

(declare-fun m!2132463 () Bool)

(assert (=> b!1725835 m!2132463))

(declare-fun m!2132465 () Bool)

(assert (=> tb!102513 m!2132465))

(assert (=> b!1725797 t!160050))

(declare-fun b_and!126595 () Bool)

(assert (= b_and!126585 (and (=> t!160050 result!123236) b_and!126595)))

(declare-fun tb!102515 () Bool)

(declare-fun t!160052 () Bool)

(assert (=> (and b!1725802 (= (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160052) tb!102515))

(declare-fun result!123240 () Bool)

(assert (= result!123240 result!123236))

(assert (=> b!1725797 t!160052))

(declare-fun b_and!126597 () Bool)

(assert (= b_and!126589 (and (=> t!160052 result!123240) b_and!126597)))

(declare-fun tb!102517 () Bool)

(declare-fun t!160054 () Bool)

(assert (=> (and b!1725812 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160054) tb!102517))

(declare-fun result!123242 () Bool)

(assert (= result!123242 result!123236))

(assert (=> b!1725797 t!160054))

(declare-fun b_and!126599 () Bool)

(assert (= b_and!126593 (and (=> t!160054 result!123242) b_and!126599)))

(declare-fun b_lambda!54889 () Bool)

(assert (=> (not b_lambda!54889) (not b!1725807)))

(declare-fun tb!102519 () Bool)

(declare-fun t!160056 () Bool)

(assert (=> (and b!1725801 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160056) tb!102519))

(declare-fun b!1725836 () Bool)

(declare-fun tp!492452 () Bool)

(declare-fun e!1103981 () Bool)

(assert (=> b!1725836 (= e!1103981 (and (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))) tp!492452))))

(declare-fun result!123244 () Bool)

(assert (=> tb!102519 (= result!123244 (and (inv!24432 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))) e!1103981))))

(assert (= tb!102519 b!1725836))

(declare-fun m!2132467 () Bool)

(assert (=> b!1725836 m!2132467))

(declare-fun m!2132469 () Bool)

(assert (=> tb!102519 m!2132469))

(assert (=> b!1725807 t!160056))

(declare-fun b_and!126601 () Bool)

(assert (= b_and!126595 (and (=> t!160056 result!123244) b_and!126601)))

(declare-fun tb!102521 () Bool)

(declare-fun t!160058 () Bool)

(assert (=> (and b!1725802 (= (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160058) tb!102521))

(declare-fun result!123246 () Bool)

(assert (= result!123246 result!123244))

(assert (=> b!1725807 t!160058))

(declare-fun b_and!126603 () Bool)

(assert (= b_and!126597 (and (=> t!160058 result!123246) b_and!126603)))

(declare-fun tb!102523 () Bool)

(declare-fun t!160060 () Bool)

(assert (=> (and b!1725812 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160060) tb!102523))

(declare-fun result!123248 () Bool)

(assert (= result!123248 result!123244))

(assert (=> b!1725807 t!160060))

(declare-fun b_and!126605 () Bool)

(assert (= b_and!126599 (and (=> t!160060 result!123248) b_and!126605)))

(declare-fun b_lambda!54891 () Bool)

(assert (=> (not b_lambda!54891) (not b!1725807)))

(declare-fun t!160062 () Bool)

(declare-fun tb!102525 () Bool)

(assert (=> (and b!1725801 (= (toValue!4858 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160062) tb!102525))

(declare-fun result!123250 () Bool)

(assert (=> tb!102525 (= result!123250 (inv!21 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(declare-fun m!2132471 () Bool)

(assert (=> tb!102525 m!2132471))

(assert (=> b!1725807 t!160062))

(declare-fun b_and!126607 () Bool)

(assert (= b_and!126583 (and (=> t!160062 result!123250) b_and!126607)))

(declare-fun tb!102527 () Bool)

(declare-fun t!160064 () Bool)

(assert (=> (and b!1725802 (= (toValue!4858 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160064) tb!102527))

(declare-fun result!123254 () Bool)

(assert (= result!123254 result!123250))

(assert (=> b!1725807 t!160064))

(declare-fun b_and!126609 () Bool)

(assert (= b_and!126587 (and (=> t!160064 result!123254) b_and!126609)))

(declare-fun tb!102529 () Bool)

(declare-fun t!160066 () Bool)

(assert (=> (and b!1725812 (= (toValue!4858 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160066) tb!102529))

(declare-fun result!123256 () Bool)

(assert (= result!123256 result!123250))

(assert (=> b!1725807 t!160066))

(declare-fun b_and!126611 () Bool)

(assert (= b_and!126591 (and (=> t!160066 result!123256) b_and!126611)))

(declare-fun m!2132473 () Bool)

(assert (=> b!1725815 m!2132473))

(declare-fun m!2132475 () Bool)

(assert (=> b!1725815 m!2132475))

(assert (=> b!1725815 m!2132475))

(declare-fun m!2132477 () Bool)

(assert (=> b!1725815 m!2132477))

(declare-fun m!2132479 () Bool)

(assert (=> b!1725815 m!2132479))

(declare-fun m!2132481 () Bool)

(assert (=> b!1725803 m!2132481))

(declare-fun m!2132483 () Bool)

(assert (=> b!1725803 m!2132483))

(declare-fun m!2132485 () Bool)

(assert (=> b!1725803 m!2132485))

(declare-fun m!2132487 () Bool)

(assert (=> b!1725803 m!2132487))

(declare-fun m!2132489 () Bool)

(assert (=> b!1725803 m!2132489))

(declare-fun m!2132491 () Bool)

(assert (=> b!1725803 m!2132491))

(declare-fun m!2132493 () Bool)

(assert (=> b!1725803 m!2132493))

(assert (=> b!1725803 m!2132483))

(declare-fun m!2132495 () Bool)

(assert (=> b!1725803 m!2132495))

(declare-fun m!2132497 () Bool)

(assert (=> b!1725803 m!2132497))

(declare-fun m!2132499 () Bool)

(assert (=> b!1725803 m!2132499))

(declare-fun m!2132501 () Bool)

(assert (=> b!1725803 m!2132501))

(declare-fun m!2132503 () Bool)

(assert (=> b!1725803 m!2132503))

(declare-fun m!2132505 () Bool)

(assert (=> b!1725803 m!2132505))

(declare-fun m!2132507 () Bool)

(assert (=> b!1725803 m!2132507))

(declare-fun m!2132509 () Bool)

(assert (=> b!1725803 m!2132509))

(declare-fun m!2132511 () Bool)

(assert (=> b!1725793 m!2132511))

(declare-fun m!2132513 () Bool)

(assert (=> b!1725793 m!2132513))

(declare-fun m!2132515 () Bool)

(assert (=> b!1725793 m!2132515))

(declare-fun m!2132517 () Bool)

(assert (=> b!1725793 m!2132517))

(declare-fun m!2132519 () Bool)

(assert (=> b!1725791 m!2132519))

(declare-fun m!2132521 () Bool)

(assert (=> b!1725791 m!2132521))

(declare-fun m!2132523 () Bool)

(assert (=> b!1725791 m!2132523))

(declare-fun m!2132525 () Bool)

(assert (=> b!1725791 m!2132525))

(declare-fun m!2132527 () Bool)

(assert (=> start!169398 m!2132527))

(declare-fun m!2132529 () Bool)

(assert (=> b!1725805 m!2132529))

(declare-fun m!2132531 () Bool)

(assert (=> b!1725805 m!2132531))

(declare-fun m!2132533 () Bool)

(assert (=> b!1725805 m!2132533))

(declare-fun m!2132535 () Bool)

(assert (=> b!1725805 m!2132535))

(assert (=> b!1725805 m!2132533))

(declare-fun m!2132537 () Bool)

(assert (=> b!1725805 m!2132537))

(declare-fun m!2132539 () Bool)

(assert (=> b!1725805 m!2132539))

(declare-fun m!2132541 () Bool)

(assert (=> b!1725805 m!2132541))

(declare-fun m!2132543 () Bool)

(assert (=> b!1725799 m!2132543))

(declare-fun m!2132545 () Bool)

(assert (=> b!1725797 m!2132545))

(declare-fun m!2132547 () Bool)

(assert (=> b!1725807 m!2132547))

(assert (=> b!1725807 m!2132547))

(declare-fun m!2132549 () Bool)

(assert (=> b!1725807 m!2132549))

(assert (=> b!1725807 m!2132549))

(declare-fun m!2132551 () Bool)

(assert (=> b!1725807 m!2132551))

(declare-fun m!2132553 () Bool)

(assert (=> b!1725807 m!2132553))

(declare-fun m!2132555 () Bool)

(assert (=> b!1725790 m!2132555))

(declare-fun m!2132557 () Bool)

(assert (=> b!1725790 m!2132557))

(declare-fun m!2132559 () Bool)

(assert (=> b!1725790 m!2132559))

(declare-fun m!2132561 () Bool)

(assert (=> b!1725790 m!2132561))

(assert (=> b!1725790 m!2132557))

(declare-fun m!2132563 () Bool)

(assert (=> b!1725790 m!2132563))

(declare-fun m!2132565 () Bool)

(assert (=> b!1725796 m!2132565))

(declare-fun m!2132567 () Bool)

(assert (=> b!1725796 m!2132567))

(declare-fun m!2132569 () Bool)

(assert (=> b!1725794 m!2132569))

(declare-fun m!2132571 () Bool)

(assert (=> b!1725794 m!2132571))

(declare-fun m!2132573 () Bool)

(assert (=> b!1725813 m!2132573))

(declare-fun m!2132575 () Bool)

(assert (=> b!1725808 m!2132575))

(declare-fun m!2132577 () Bool)

(assert (=> b!1725808 m!2132577))

(declare-fun m!2132579 () Bool)

(assert (=> b!1725808 m!2132579))

(declare-fun m!2132581 () Bool)

(assert (=> b!1725798 m!2132581))

(declare-fun m!2132583 () Bool)

(assert (=> b!1725819 m!2132583))

(declare-fun m!2132585 () Bool)

(assert (=> b!1725819 m!2132585))

(declare-fun m!2132587 () Bool)

(assert (=> b!1725804 m!2132587))

(declare-fun m!2132589 () Bool)

(assert (=> b!1725818 m!2132589))

(assert (=> b!1725810 m!2132481))

(assert (=> b!1725810 m!2132481))

(declare-fun m!2132591 () Bool)

(assert (=> b!1725810 m!2132591))

(assert (=> b!1725810 m!2132591))

(declare-fun m!2132593 () Bool)

(assert (=> b!1725810 m!2132593))

(declare-fun m!2132595 () Bool)

(assert (=> b!1725810 m!2132595))

(declare-fun m!2132597 () Bool)

(assert (=> b!1725792 m!2132597))

(declare-fun m!2132599 () Bool)

(assert (=> b!1725811 m!2132599))

(declare-fun m!2132601 () Bool)

(assert (=> b!1725811 m!2132601))

(declare-fun m!2132603 () Bool)

(assert (=> b!1725800 m!2132603))

(declare-fun m!2132605 () Bool)

(assert (=> b!1725800 m!2132605))

(declare-fun m!2132607 () Bool)

(assert (=> b!1725800 m!2132607))

(declare-fun m!2132609 () Bool)

(assert (=> b!1725809 m!2132609))

(declare-fun m!2132611 () Bool)

(assert (=> b!1725806 m!2132611))

(check-sat (not tb!102525) (not b_next!47821) (not b_next!47811) (not b!1725798) (not b!1725813) (not b!1725793) (not b!1725803) (not tb!102519) (not b!1725835) (not b!1725814) (not b!1725816) (not b!1725836) (not b_lambda!54891) (not b!1725799) (not b_lambda!54889) (not b!1725809) (not b!1725819) (not b!1725794) b_and!126607 (not b!1725791) (not b_next!47815) (not b!1725810) (not tb!102513) (not b!1725790) (not b_next!47813) (not b!1725792) b_and!126601 (not b!1725800) (not b!1725805) (not b!1725815) (not b!1725806) (not b!1725818) b_and!126611 (not b!1725804) b_and!126609 b_and!126605 (not b_next!47819) (not b!1725796) (not b_lambda!54887) (not start!169398) b_and!126603 (not b!1725807) tp_is_empty!7601 (not b!1725811) (not b_next!47817) (not b!1725808))
(check-sat (not b_next!47821) b_and!126607 (not b_next!47811) (not b_next!47815) b_and!126603 (not b_next!47817) (not b_next!47813) b_and!126601 b_and!126611 b_and!126609 b_and!126605 (not b_next!47819))
(get-model)

(declare-fun d!528708 () Bool)

(declare-fun lt!660917 () Int)

(assert (=> d!528708 (>= lt!660917 0)))

(declare-fun e!1104012 () Int)

(assert (=> d!528708 (= lt!660917 e!1104012)))

(declare-fun c!282205 () Bool)

(assert (=> d!528708 (= c!282205 ((_ is Nil!18903) lt!660885))))

(assert (=> d!528708 (= (size!15020 lt!660885) lt!660917)))

(declare-fun b!1725891 () Bool)

(assert (=> b!1725891 (= e!1104012 0)))

(declare-fun b!1725892 () Bool)

(assert (=> b!1725892 (= e!1104012 (+ 1 (size!15020 (t!160068 lt!660885))))))

(assert (= (and d!528708 c!282205) b!1725891))

(assert (= (and d!528708 (not c!282205)) b!1725892))

(declare-fun m!2132633 () Bool)

(assert (=> b!1725892 m!2132633))

(assert (=> b!1725805 d!528708))

(declare-fun d!528714 () Bool)

(assert (=> d!528714 (= (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) (seqFromList!2325 lt!660885)) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (seqFromList!2325 lt!660885)))))

(declare-fun b_lambda!54895 () Bool)

(assert (=> (not b_lambda!54895) (not d!528714)))

(declare-fun tb!102531 () Bool)

(declare-fun t!160071 () Bool)

(assert (=> (and b!1725801 (= (toValue!4858 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160071) tb!102531))

(declare-fun result!123258 () Bool)

(assert (=> tb!102531 (= result!123258 (inv!21 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (seqFromList!2325 lt!660885))))))

(declare-fun m!2132639 () Bool)

(assert (=> tb!102531 m!2132639))

(assert (=> d!528714 t!160071))

(declare-fun b_and!126619 () Bool)

(assert (= b_and!126607 (and (=> t!160071 result!123258) b_and!126619)))

(declare-fun t!160073 () Bool)

(declare-fun tb!102533 () Bool)

(assert (=> (and b!1725802 (= (toValue!4858 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160073) tb!102533))

(declare-fun result!123260 () Bool)

(assert (= result!123260 result!123258))

(assert (=> d!528714 t!160073))

(declare-fun b_and!126621 () Bool)

(assert (= b_and!126609 (and (=> t!160073 result!123260) b_and!126621)))

(declare-fun tb!102535 () Bool)

(declare-fun t!160075 () Bool)

(assert (=> (and b!1725812 (= (toValue!4858 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160075) tb!102535))

(declare-fun result!123262 () Bool)

(assert (= result!123262 result!123258))

(assert (=> d!528714 t!160075))

(declare-fun b_and!126623 () Bool)

(assert (= b_and!126611 (and (=> t!160075 result!123262) b_and!126623)))

(assert (=> d!528714 m!2132533))

(declare-fun m!2132641 () Bool)

(assert (=> d!528714 m!2132641))

(assert (=> b!1725805 d!528714))

(declare-fun d!528718 () Bool)

(assert (=> d!528718 (= (maxPrefixOneRule!910 thiss!24550 (rule!5313 (_1!10697 lt!660897)) lt!660895) (Some!3725 (tuple2!18591 (Token!6269 (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) (seqFromList!2325 lt!660885)) (rule!5313 (_1!10697 lt!660897)) (size!15020 lt!660885) lt!660885) (_2!10697 lt!660897))))))

(declare-fun lt!660938 () Unit!32751)

(declare-fun choose!10521 (LexerInterface!2980 List!18974 List!18973 List!18973 List!18973 Rule!6502) Unit!32751)

(assert (=> d!528718 (= lt!660938 (choose!10521 thiss!24550 rules!3447 lt!660885 lt!660895 (_2!10697 lt!660897) (rule!5313 (_1!10697 lt!660897))))))

(assert (=> d!528718 (not (isEmpty!11890 rules!3447))))

(assert (=> d!528718 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!309 thiss!24550 rules!3447 lt!660885 lt!660895 (_2!10697 lt!660897) (rule!5313 (_1!10697 lt!660897))) lt!660938)))

(declare-fun bs!402408 () Bool)

(assert (= bs!402408 d!528718))

(assert (=> bs!402408 m!2132533))

(assert (=> bs!402408 m!2132531))

(assert (=> bs!402408 m!2132533))

(assert (=> bs!402408 m!2132535))

(declare-fun m!2132721 () Bool)

(assert (=> bs!402408 m!2132721))

(assert (=> bs!402408 m!2132529))

(assert (=> bs!402408 m!2132587))

(assert (=> b!1725805 d!528718))

(declare-fun d!528746 () Bool)

(assert (=> d!528746 (= (_2!10697 lt!660897) lt!660883)))

(declare-fun lt!660941 () Unit!32751)

(declare-fun choose!10522 (List!18973 List!18973 List!18973 List!18973 List!18973) Unit!32751)

(assert (=> d!528746 (= lt!660941 (choose!10522 lt!660885 (_2!10697 lt!660897) lt!660885 lt!660883 lt!660895))))

(assert (=> d!528746 (isPrefix!1592 lt!660885 lt!660895)))

(assert (=> d!528746 (= (lemmaSamePrefixThenSameSuffix!736 lt!660885 (_2!10697 lt!660897) lt!660885 lt!660883 lt!660895) lt!660941)))

(declare-fun bs!402409 () Bool)

(assert (= bs!402409 d!528746))

(declare-fun m!2132727 () Bool)

(assert (=> bs!402409 m!2132727))

(assert (=> bs!402409 m!2132487))

(assert (=> b!1725805 d!528746))

(declare-fun d!528750 () Bool)

(declare-fun fromListB!1067 (List!18973) BalanceConc!12518)

(assert (=> d!528750 (= (seqFromList!2325 lt!660885) (fromListB!1067 lt!660885))))

(declare-fun bs!402410 () Bool)

(assert (= bs!402410 d!528750))

(declare-fun m!2132745 () Bool)

(assert (=> bs!402410 m!2132745))

(assert (=> b!1725805 d!528750))

(declare-fun b!1726090 () Bool)

(declare-fun res!774793 () Bool)

(declare-fun e!1104121 () Bool)

(assert (=> b!1726090 (=> (not res!774793) (not e!1104121))))

(declare-fun lt!660993 () Option!3726)

(assert (=> b!1726090 (= res!774793 (= (rule!5313 (_1!10697 (get!5619 lt!660993))) (rule!5313 (_1!10697 lt!660897))))))

(declare-fun b!1726091 () Bool)

(declare-fun e!1104120 () Bool)

(declare-datatypes ((tuple2!18592 0))(
  ( (tuple2!18593 (_1!10698 List!18973) (_2!10698 List!18973)) )
))
(declare-fun findLongestMatchInner!404 (Regex!4679 List!18973 Int List!18973 List!18973 Int) tuple2!18592)

(assert (=> b!1726091 (= e!1104120 (matchR!2153 (regex!3351 (rule!5313 (_1!10697 lt!660897))) (_1!10698 (findLongestMatchInner!404 (regex!3351 (rule!5313 (_1!10697 lt!660897))) Nil!18903 (size!15020 Nil!18903) lt!660895 lt!660895 (size!15020 lt!660895)))))))

(declare-fun b!1726092 () Bool)

(assert (=> b!1726092 (= e!1104121 (= (size!15018 (_1!10697 (get!5619 lt!660993))) (size!15020 (originalCharacters!4165 (_1!10697 (get!5619 lt!660993))))))))

(declare-fun b!1726093 () Bool)

(declare-fun res!774787 () Bool)

(assert (=> b!1726093 (=> (not res!774787) (not e!1104121))))

(assert (=> b!1726093 (= res!774787 (= (++!5176 (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!660993)))) (_2!10697 (get!5619 lt!660993))) lt!660895))))

(declare-fun b!1726094 () Bool)

(declare-fun e!1104122 () Option!3726)

(assert (=> b!1726094 (= e!1104122 None!3725)))

(declare-fun b!1726095 () Bool)

(declare-fun lt!660990 () tuple2!18592)

(assert (=> b!1726095 (= e!1104122 (Some!3725 (tuple2!18591 (Token!6269 (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) (seqFromList!2325 (_1!10698 lt!660990))) (rule!5313 (_1!10697 lt!660897)) (size!15019 (seqFromList!2325 (_1!10698 lt!660990))) (_1!10698 lt!660990)) (_2!10698 lt!660990))))))

(declare-fun lt!660994 () Unit!32751)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!388 (Regex!4679 List!18973) Unit!32751)

(assert (=> b!1726095 (= lt!660994 (longestMatchIsAcceptedByMatchOrIsEmpty!388 (regex!3351 (rule!5313 (_1!10697 lt!660897))) lt!660895))))

(declare-fun res!774790 () Bool)

(assert (=> b!1726095 (= res!774790 (isEmpty!11889 (_1!10698 (findLongestMatchInner!404 (regex!3351 (rule!5313 (_1!10697 lt!660897))) Nil!18903 (size!15020 Nil!18903) lt!660895 lt!660895 (size!15020 lt!660895)))))))

(assert (=> b!1726095 (=> res!774790 e!1104120)))

(assert (=> b!1726095 e!1104120))

(declare-fun lt!660992 () Unit!32751)

(assert (=> b!1726095 (= lt!660992 lt!660994)))

(declare-fun lt!660991 () Unit!32751)

(assert (=> b!1726095 (= lt!660991 (lemmaSemiInverse!497 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) (seqFromList!2325 (_1!10698 lt!660990))))))

(declare-fun b!1726096 () Bool)

(declare-fun res!774792 () Bool)

(assert (=> b!1726096 (=> (not res!774792) (not e!1104121))))

(assert (=> b!1726096 (= res!774792 (< (size!15020 (_2!10697 (get!5619 lt!660993))) (size!15020 lt!660895)))))

(declare-fun b!1726097 () Bool)

(declare-fun e!1104123 () Bool)

(assert (=> b!1726097 (= e!1104123 e!1104121)))

(declare-fun res!774788 () Bool)

(assert (=> b!1726097 (=> (not res!774788) (not e!1104121))))

(assert (=> b!1726097 (= res!774788 (matchR!2153 (regex!3351 (rule!5313 (_1!10697 lt!660897))) (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!660993))))))))

(declare-fun b!1726098 () Bool)

(declare-fun res!774791 () Bool)

(assert (=> b!1726098 (=> (not res!774791) (not e!1104121))))

(assert (=> b!1726098 (= res!774791 (= (value!105176 (_1!10697 (get!5619 lt!660993))) (apply!5156 (transformation!3351 (rule!5313 (_1!10697 (get!5619 lt!660993)))) (seqFromList!2325 (originalCharacters!4165 (_1!10697 (get!5619 lt!660993)))))))))

(declare-fun d!528758 () Bool)

(assert (=> d!528758 e!1104123))

(declare-fun res!774789 () Bool)

(assert (=> d!528758 (=> res!774789 e!1104123)))

(declare-fun isEmpty!11891 (Option!3726) Bool)

(assert (=> d!528758 (= res!774789 (isEmpty!11891 lt!660993))))

(assert (=> d!528758 (= lt!660993 e!1104122)))

(declare-fun c!282247 () Bool)

(assert (=> d!528758 (= c!282247 (isEmpty!11889 (_1!10698 lt!660990)))))

(declare-fun findLongestMatch!331 (Regex!4679 List!18973) tuple2!18592)

(assert (=> d!528758 (= lt!660990 (findLongestMatch!331 (regex!3351 (rule!5313 (_1!10697 lt!660897))) lt!660895))))

(assert (=> d!528758 (ruleValid!850 thiss!24550 (rule!5313 (_1!10697 lt!660897)))))

(assert (=> d!528758 (= (maxPrefixOneRule!910 thiss!24550 (rule!5313 (_1!10697 lt!660897)) lt!660895) lt!660993)))

(assert (= (and d!528758 c!282247) b!1726094))

(assert (= (and d!528758 (not c!282247)) b!1726095))

(assert (= (and b!1726095 (not res!774790)) b!1726091))

(assert (= (and d!528758 (not res!774789)) b!1726097))

(assert (= (and b!1726097 res!774788) b!1726093))

(assert (= (and b!1726093 res!774787) b!1726096))

(assert (= (and b!1726096 res!774792) b!1726090))

(assert (= (and b!1726090 res!774793) b!1726098))

(assert (= (and b!1726098 res!774791) b!1726092))

(declare-fun m!2132865 () Bool)

(assert (=> d!528758 m!2132865))

(declare-fun m!2132867 () Bool)

(assert (=> d!528758 m!2132867))

(declare-fun m!2132869 () Bool)

(assert (=> d!528758 m!2132869))

(declare-fun m!2132871 () Bool)

(assert (=> d!528758 m!2132871))

(declare-fun m!2132873 () Bool)

(assert (=> b!1726091 m!2132873))

(assert (=> b!1726091 m!2132511))

(assert (=> b!1726091 m!2132873))

(assert (=> b!1726091 m!2132511))

(declare-fun m!2132875 () Bool)

(assert (=> b!1726091 m!2132875))

(declare-fun m!2132877 () Bool)

(assert (=> b!1726091 m!2132877))

(declare-fun m!2132879 () Bool)

(assert (=> b!1726096 m!2132879))

(declare-fun m!2132881 () Bool)

(assert (=> b!1726096 m!2132881))

(assert (=> b!1726096 m!2132511))

(assert (=> b!1726097 m!2132879))

(declare-fun m!2132883 () Bool)

(assert (=> b!1726097 m!2132883))

(assert (=> b!1726097 m!2132883))

(declare-fun m!2132885 () Bool)

(assert (=> b!1726097 m!2132885))

(assert (=> b!1726097 m!2132885))

(declare-fun m!2132887 () Bool)

(assert (=> b!1726097 m!2132887))

(assert (=> b!1726093 m!2132879))

(assert (=> b!1726093 m!2132883))

(assert (=> b!1726093 m!2132883))

(assert (=> b!1726093 m!2132885))

(assert (=> b!1726093 m!2132885))

(declare-fun m!2132889 () Bool)

(assert (=> b!1726093 m!2132889))

(assert (=> b!1726090 m!2132879))

(assert (=> b!1726095 m!2132873))

(declare-fun m!2132891 () Bool)

(assert (=> b!1726095 m!2132891))

(declare-fun m!2132893 () Bool)

(assert (=> b!1726095 m!2132893))

(assert (=> b!1726095 m!2132891))

(assert (=> b!1726095 m!2132873))

(assert (=> b!1726095 m!2132511))

(assert (=> b!1726095 m!2132875))

(declare-fun m!2132895 () Bool)

(assert (=> b!1726095 m!2132895))

(assert (=> b!1726095 m!2132891))

(declare-fun m!2132897 () Bool)

(assert (=> b!1726095 m!2132897))

(assert (=> b!1726095 m!2132891))

(declare-fun m!2132899 () Bool)

(assert (=> b!1726095 m!2132899))

(declare-fun m!2132901 () Bool)

(assert (=> b!1726095 m!2132901))

(assert (=> b!1726095 m!2132511))

(assert (=> b!1726098 m!2132879))

(declare-fun m!2132903 () Bool)

(assert (=> b!1726098 m!2132903))

(assert (=> b!1726098 m!2132903))

(declare-fun m!2132905 () Bool)

(assert (=> b!1726098 m!2132905))

(assert (=> b!1726092 m!2132879))

(declare-fun m!2132907 () Bool)

(assert (=> b!1726092 m!2132907))

(assert (=> b!1725805 d!528758))

(declare-fun d!528814 () Bool)

(declare-fun lt!660998 () List!18973)

(assert (=> d!528814 (= (++!5176 lt!660885 lt!660998) lt!660895)))

(declare-fun e!1104128 () List!18973)

(assert (=> d!528814 (= lt!660998 e!1104128)))

(declare-fun c!282251 () Bool)

(assert (=> d!528814 (= c!282251 ((_ is Cons!18903) lt!660885))))

(assert (=> d!528814 (>= (size!15020 lt!660895) (size!15020 lt!660885))))

(assert (=> d!528814 (= (getSuffix!786 lt!660895 lt!660885) lt!660998)))

(declare-fun b!1726105 () Bool)

(declare-fun tail!2579 (List!18973) List!18973)

(assert (=> b!1726105 (= e!1104128 (getSuffix!786 (tail!2579 lt!660895) (t!160068 lt!660885)))))

(declare-fun b!1726106 () Bool)

(assert (=> b!1726106 (= e!1104128 lt!660895)))

(assert (= (and d!528814 c!282251) b!1726105))

(assert (= (and d!528814 (not c!282251)) b!1726106))

(declare-fun m!2132909 () Bool)

(assert (=> d!528814 m!2132909))

(assert (=> d!528814 m!2132511))

(assert (=> d!528814 m!2132531))

(declare-fun m!2132911 () Bool)

(assert (=> b!1726105 m!2132911))

(assert (=> b!1726105 m!2132911))

(declare-fun m!2132913 () Bool)

(assert (=> b!1726105 m!2132913))

(assert (=> b!1725805 d!528814))

(declare-fun d!528816 () Bool)

(assert (=> d!528816 (= (isEmpty!11890 rules!3447) ((_ is Nil!18904) rules!3447))))

(assert (=> b!1725804 d!528816))

(declare-fun d!528818 () Bool)

(declare-fun c!282254 () Bool)

(assert (=> d!528818 (= c!282254 ((_ is Node!6287) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))))

(declare-fun e!1104133 () Bool)

(assert (=> d!528818 (= (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))) e!1104133)))

(declare-fun b!1726113 () Bool)

(declare-fun inv!24435 (Conc!6287) Bool)

(assert (=> b!1726113 (= e!1104133 (inv!24435 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))))

(declare-fun b!1726114 () Bool)

(declare-fun e!1104134 () Bool)

(assert (=> b!1726114 (= e!1104133 e!1104134)))

(declare-fun res!774796 () Bool)

(assert (=> b!1726114 (= res!774796 (not ((_ is Leaf!9183) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))))))

(assert (=> b!1726114 (=> res!774796 e!1104134)))

(declare-fun b!1726115 () Bool)

(declare-fun inv!24436 (Conc!6287) Bool)

(assert (=> b!1726115 (= e!1104134 (inv!24436 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))))

(assert (= (and d!528818 c!282254) b!1726113))

(assert (= (and d!528818 (not c!282254)) b!1726114))

(assert (= (and b!1726114 (not res!774796)) b!1726115))

(declare-fun m!2132915 () Bool)

(assert (=> b!1726113 m!2132915))

(declare-fun m!2132917 () Bool)

(assert (=> b!1726115 m!2132917))

(assert (=> b!1725836 d!528818))

(declare-fun b!1726127 () Bool)

(declare-fun e!1104142 () Bool)

(assert (=> b!1726127 (= e!1104142 (>= (size!15020 (++!5176 lt!660885 (_2!10697 lt!660897))) (size!15020 lt!660885)))))

(declare-fun b!1726124 () Bool)

(declare-fun e!1104143 () Bool)

(declare-fun e!1104141 () Bool)

(assert (=> b!1726124 (= e!1104143 e!1104141)))

(declare-fun res!774806 () Bool)

(assert (=> b!1726124 (=> (not res!774806) (not e!1104141))))

(assert (=> b!1726124 (= res!774806 (not ((_ is Nil!18903) (++!5176 lt!660885 (_2!10697 lt!660897)))))))

(declare-fun d!528820 () Bool)

(assert (=> d!528820 e!1104142))

(declare-fun res!774808 () Bool)

(assert (=> d!528820 (=> res!774808 e!1104142)))

(declare-fun lt!661001 () Bool)

(assert (=> d!528820 (= res!774808 (not lt!661001))))

(assert (=> d!528820 (= lt!661001 e!1104143)))

(declare-fun res!774807 () Bool)

(assert (=> d!528820 (=> res!774807 e!1104143)))

(assert (=> d!528820 (= res!774807 ((_ is Nil!18903) lt!660885))))

(assert (=> d!528820 (= (isPrefix!1592 lt!660885 (++!5176 lt!660885 (_2!10697 lt!660897))) lt!661001)))

(declare-fun b!1726126 () Bool)

(assert (=> b!1726126 (= e!1104141 (isPrefix!1592 (tail!2579 lt!660885) (tail!2579 (++!5176 lt!660885 (_2!10697 lt!660897)))))))

(declare-fun b!1726125 () Bool)

(declare-fun res!774805 () Bool)

(assert (=> b!1726125 (=> (not res!774805) (not e!1104141))))

(assert (=> b!1726125 (= res!774805 (= (head!3912 lt!660885) (head!3912 (++!5176 lt!660885 (_2!10697 lt!660897)))))))

(assert (= (and d!528820 (not res!774807)) b!1726124))

(assert (= (and b!1726124 res!774806) b!1726125))

(assert (= (and b!1726125 res!774805) b!1726126))

(assert (= (and d!528820 (not res!774808)) b!1726127))

(assert (=> b!1726127 m!2132483))

(declare-fun m!2132919 () Bool)

(assert (=> b!1726127 m!2132919))

(assert (=> b!1726127 m!2132531))

(declare-fun m!2132921 () Bool)

(assert (=> b!1726126 m!2132921))

(assert (=> b!1726126 m!2132483))

(declare-fun m!2132923 () Bool)

(assert (=> b!1726126 m!2132923))

(assert (=> b!1726126 m!2132921))

(assert (=> b!1726126 m!2132923))

(declare-fun m!2132925 () Bool)

(assert (=> b!1726126 m!2132925))

(declare-fun m!2132927 () Bool)

(assert (=> b!1726125 m!2132927))

(assert (=> b!1726125 m!2132483))

(declare-fun m!2132929 () Bool)

(assert (=> b!1726125 m!2132929))

(assert (=> b!1725803 d!528820))

(declare-fun d!528822 () Bool)

(assert (=> d!528822 (isDefined!3069 (maxPrefix!1534 thiss!24550 rules!3447 (++!5176 lt!660900 suffix!1421)))))

(declare-fun lt!661064 () Unit!32751)

(declare-fun e!1104172 () Unit!32751)

(assert (=> d!528822 (= lt!661064 e!1104172)))

(declare-fun c!282261 () Bool)

(assert (=> d!528822 (= c!282261 (isEmpty!11891 (maxPrefix!1534 thiss!24550 rules!3447 (++!5176 lt!660900 suffix!1421))))))

(declare-fun lt!661068 () Unit!32751)

(declare-fun lt!661073 () Unit!32751)

(assert (=> d!528822 (= lt!661068 lt!661073)))

(declare-fun e!1104173 () Bool)

(assert (=> d!528822 e!1104173))

(declare-fun res!774849 () Bool)

(assert (=> d!528822 (=> (not res!774849) (not e!1104173))))

(declare-fun lt!661063 () Token!6268)

(assert (=> d!528822 (= res!774849 (isDefined!3070 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 lt!661063)))))))

(assert (=> d!528822 (= lt!661073 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!401 thiss!24550 rules!3447 lt!660900 lt!661063))))

(declare-fun lt!661062 () Unit!32751)

(declare-fun lt!661072 () Unit!32751)

(assert (=> d!528822 (= lt!661062 lt!661072)))

(declare-fun lt!661069 () List!18973)

(assert (=> d!528822 (isPrefix!1592 lt!661069 (++!5176 lt!660900 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!262 (List!18973 List!18973 List!18973) Unit!32751)

(assert (=> d!528822 (= lt!661072 (lemmaPrefixStaysPrefixWhenAddingToSuffix!262 lt!661069 lt!660900 suffix!1421))))

(assert (=> d!528822 (= lt!661069 (list!7640 (charsOf!2000 lt!661063)))))

(declare-fun lt!661061 () Unit!32751)

(declare-fun lt!661066 () Unit!32751)

(assert (=> d!528822 (= lt!661061 lt!661066)))

(declare-fun lt!661058 () List!18973)

(declare-fun lt!661071 () List!18973)

(assert (=> d!528822 (isPrefix!1592 lt!661058 (++!5176 lt!661058 lt!661071))))

(assert (=> d!528822 (= lt!661066 (lemmaConcatTwoListThenFirstIsPrefix!1102 lt!661058 lt!661071))))

(assert (=> d!528822 (= lt!661071 (_2!10697 (get!5619 (maxPrefix!1534 thiss!24550 rules!3447 lt!660900))))))

(assert (=> d!528822 (= lt!661058 (list!7640 (charsOf!2000 lt!661063)))))

(declare-datatypes ((List!18976 0))(
  ( (Nil!18906) (Cons!18906 (h!24307 Token!6268) (t!160131 List!18976)) )
))
(declare-fun head!3913 (List!18976) Token!6268)

(declare-datatypes ((IArray!12581 0))(
  ( (IArray!12582 (innerList!6348 List!18976)) )
))
(declare-datatypes ((Conc!6288 0))(
  ( (Node!6288 (left!15089 Conc!6288) (right!15419 Conc!6288) (csize!12806 Int) (cheight!6499 Int)) (Leaf!9184 (xs!9164 IArray!12581) (csize!12807 Int)) (Empty!6288) )
))
(declare-datatypes ((BalanceConc!12520 0))(
  ( (BalanceConc!12521 (c!282324 Conc!6288)) )
))
(declare-fun list!7642 (BalanceConc!12520) List!18976)

(declare-datatypes ((tuple2!18594 0))(
  ( (tuple2!18595 (_1!10699 BalanceConc!12520) (_2!10699 BalanceConc!12518)) )
))
(declare-fun lex!1401 (LexerInterface!2980 List!18974 BalanceConc!12518) tuple2!18594)

(assert (=> d!528822 (= lt!661063 (head!3913 (list!7642 (_1!10699 (lex!1401 thiss!24550 rules!3447 (seqFromList!2325 lt!660900))))))))

(assert (=> d!528822 (not (isEmpty!11890 rules!3447))))

(assert (=> d!528822 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!504 thiss!24550 rules!3447 lt!660900 suffix!1421) lt!661064)))

(declare-fun b!1726182 () Bool)

(declare-fun Unit!32753 () Unit!32751)

(assert (=> b!1726182 (= e!1104172 Unit!32753)))

(declare-fun lt!661059 () List!18973)

(assert (=> b!1726182 (= lt!661059 (++!5176 lt!660900 suffix!1421))))

(declare-fun lt!661074 () Unit!32751)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!270 (LexerInterface!2980 Rule!6502 List!18974 List!18973) Unit!32751)

(assert (=> b!1726182 (= lt!661074 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!270 thiss!24550 (rule!5313 lt!661063) rules!3447 lt!661059))))

(assert (=> b!1726182 (isEmpty!11891 (maxPrefixOneRule!910 thiss!24550 (rule!5313 lt!661063) lt!661059))))

(declare-fun lt!661065 () Unit!32751)

(assert (=> b!1726182 (= lt!661065 lt!661074)))

(declare-fun lt!661067 () List!18973)

(assert (=> b!1726182 (= lt!661067 (list!7640 (charsOf!2000 lt!661063)))))

(declare-fun lt!661060 () Unit!32751)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!266 (LexerInterface!2980 Rule!6502 List!18973 List!18973) Unit!32751)

(assert (=> b!1726182 (= lt!661060 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!266 thiss!24550 (rule!5313 lt!661063) lt!661067 (++!5176 lt!660900 suffix!1421)))))

(assert (=> b!1726182 (not (matchR!2153 (regex!3351 (rule!5313 lt!661063)) lt!661067))))

(declare-fun lt!661070 () Unit!32751)

(assert (=> b!1726182 (= lt!661070 lt!661060)))

(assert (=> b!1726182 false))

(declare-fun b!1726180 () Bool)

(declare-fun res!774850 () Bool)

(assert (=> b!1726180 (=> (not res!774850) (not e!1104173))))

(assert (=> b!1726180 (= res!774850 (matchR!2153 (regex!3351 (get!5620 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 lt!661063))))) (list!7640 (charsOf!2000 lt!661063))))))

(declare-fun b!1726181 () Bool)

(assert (=> b!1726181 (= e!1104173 (= (rule!5313 lt!661063) (get!5620 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 lt!661063))))))))

(declare-fun b!1726183 () Bool)

(declare-fun Unit!32754 () Unit!32751)

(assert (=> b!1726183 (= e!1104172 Unit!32754)))

(assert (= (and d!528822 res!774849) b!1726180))

(assert (= (and b!1726180 res!774850) b!1726181))

(assert (= (and d!528822 c!282261) b!1726182))

(assert (= (and d!528822 (not c!282261)) b!1726183))

(declare-fun m!2132999 () Bool)

(assert (=> d!528822 m!2132999))

(declare-fun m!2133001 () Bool)

(assert (=> d!528822 m!2133001))

(declare-fun m!2133003 () Bool)

(assert (=> d!528822 m!2133003))

(assert (=> d!528822 m!2132503))

(declare-fun m!2133005 () Bool)

(assert (=> d!528822 m!2133005))

(declare-fun m!2133007 () Bool)

(assert (=> d!528822 m!2133007))

(declare-fun m!2133009 () Bool)

(assert (=> d!528822 m!2133009))

(assert (=> d!528822 m!2132503))

(assert (=> d!528822 m!2133001))

(declare-fun m!2133011 () Bool)

(assert (=> d!528822 m!2133011))

(assert (=> d!528822 m!2132503))

(declare-fun m!2133013 () Bool)

(assert (=> d!528822 m!2133013))

(declare-fun m!2133015 () Bool)

(assert (=> d!528822 m!2133015))

(declare-fun m!2133017 () Bool)

(assert (=> d!528822 m!2133017))

(assert (=> d!528822 m!2133013))

(declare-fun m!2133019 () Bool)

(assert (=> d!528822 m!2133019))

(assert (=> d!528822 m!2133011))

(declare-fun m!2133021 () Bool)

(assert (=> d!528822 m!2133021))

(assert (=> d!528822 m!2132587))

(assert (=> d!528822 m!2133001))

(declare-fun m!2133023 () Bool)

(assert (=> d!528822 m!2133023))

(declare-fun m!2133025 () Bool)

(assert (=> d!528822 m!2133025))

(assert (=> d!528822 m!2133025))

(declare-fun m!2133027 () Bool)

(assert (=> d!528822 m!2133027))

(assert (=> d!528822 m!2132521))

(declare-fun m!2133029 () Bool)

(assert (=> d!528822 m!2133029))

(declare-fun m!2133031 () Bool)

(assert (=> d!528822 m!2133031))

(assert (=> d!528822 m!2133007))

(assert (=> d!528822 m!2132521))

(assert (=> d!528822 m!2133031))

(declare-fun m!2133033 () Bool)

(assert (=> d!528822 m!2133033))

(assert (=> b!1726182 m!2133025))

(assert (=> b!1726182 m!2133025))

(assert (=> b!1726182 m!2133027))

(declare-fun m!2133035 () Bool)

(assert (=> b!1726182 m!2133035))

(declare-fun m!2133037 () Bool)

(assert (=> b!1726182 m!2133037))

(assert (=> b!1726182 m!2132503))

(declare-fun m!2133039 () Bool)

(assert (=> b!1726182 m!2133039))

(assert (=> b!1726182 m!2133037))

(declare-fun m!2133041 () Bool)

(assert (=> b!1726182 m!2133041))

(declare-fun m!2133043 () Bool)

(assert (=> b!1726182 m!2133043))

(assert (=> b!1726182 m!2132503))

(assert (=> b!1726180 m!2133025))

(assert (=> b!1726180 m!2133025))

(assert (=> b!1726180 m!2133027))

(assert (=> b!1726180 m!2133007))

(declare-fun m!2133045 () Bool)

(assert (=> b!1726180 m!2133045))

(assert (=> b!1726180 m!2133027))

(declare-fun m!2133047 () Bool)

(assert (=> b!1726180 m!2133047))

(assert (=> b!1726180 m!2133007))

(assert (=> b!1726181 m!2133007))

(assert (=> b!1726181 m!2133007))

(assert (=> b!1726181 m!2133045))

(assert (=> b!1725803 d!528822))

(declare-fun d!528840 () Bool)

(declare-fun list!7643 (Conc!6287) List!18973)

(assert (=> d!528840 (= (list!7640 lt!660902) (list!7643 (c!282191 lt!660902)))))

(declare-fun bs!402425 () Bool)

(assert (= bs!402425 d!528840))

(declare-fun m!2133049 () Bool)

(assert (=> bs!402425 m!2133049))

(assert (=> b!1725803 d!528840))

(declare-fun lt!661077 () List!18973)

(declare-fun b!1726195 () Bool)

(declare-fun e!1104178 () Bool)

(assert (=> b!1726195 (= e!1104178 (or (not (= suffix!1421 Nil!18903)) (= lt!661077 lt!660900)))))

(declare-fun b!1726193 () Bool)

(declare-fun e!1104179 () List!18973)

(assert (=> b!1726193 (= e!1104179 (Cons!18903 (h!24304 lt!660900) (++!5176 (t!160068 lt!660900) suffix!1421)))))

(declare-fun d!528842 () Bool)

(assert (=> d!528842 e!1104178))

(declare-fun res!774855 () Bool)

(assert (=> d!528842 (=> (not res!774855) (not e!1104178))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2704 (List!18973) (InoxSet C!9532))

(assert (=> d!528842 (= res!774855 (= (content!2704 lt!661077) ((_ map or) (content!2704 lt!660900) (content!2704 suffix!1421))))))

(assert (=> d!528842 (= lt!661077 e!1104179)))

(declare-fun c!282264 () Bool)

(assert (=> d!528842 (= c!282264 ((_ is Nil!18903) lt!660900))))

(assert (=> d!528842 (= (++!5176 lt!660900 suffix!1421) lt!661077)))

(declare-fun b!1726194 () Bool)

(declare-fun res!774856 () Bool)

(assert (=> b!1726194 (=> (not res!774856) (not e!1104178))))

(assert (=> b!1726194 (= res!774856 (= (size!15020 lt!661077) (+ (size!15020 lt!660900) (size!15020 suffix!1421))))))

(declare-fun b!1726192 () Bool)

(assert (=> b!1726192 (= e!1104179 suffix!1421)))

(assert (= (and d!528842 c!282264) b!1726192))

(assert (= (and d!528842 (not c!282264)) b!1726193))

(assert (= (and d!528842 res!774855) b!1726194))

(assert (= (and b!1726194 res!774856) b!1726195))

(declare-fun m!2133051 () Bool)

(assert (=> b!1726193 m!2133051))

(declare-fun m!2133053 () Bool)

(assert (=> d!528842 m!2133053))

(declare-fun m!2133055 () Bool)

(assert (=> d!528842 m!2133055))

(declare-fun m!2133057 () Bool)

(assert (=> d!528842 m!2133057))

(declare-fun m!2133059 () Bool)

(assert (=> b!1726194 m!2133059))

(assert (=> b!1726194 m!2132513))

(declare-fun m!2133061 () Bool)

(assert (=> b!1726194 m!2133061))

(assert (=> b!1725803 d!528842))

(declare-fun b!1726199 () Bool)

(declare-fun e!1104181 () Bool)

(assert (=> b!1726199 (= e!1104181 (>= (size!15020 lt!660895) (size!15020 lt!660885)))))

(declare-fun b!1726196 () Bool)

(declare-fun e!1104182 () Bool)

(declare-fun e!1104180 () Bool)

(assert (=> b!1726196 (= e!1104182 e!1104180)))

(declare-fun res!774858 () Bool)

(assert (=> b!1726196 (=> (not res!774858) (not e!1104180))))

(assert (=> b!1726196 (= res!774858 (not ((_ is Nil!18903) lt!660895)))))

(declare-fun d!528844 () Bool)

(assert (=> d!528844 e!1104181))

(declare-fun res!774860 () Bool)

(assert (=> d!528844 (=> res!774860 e!1104181)))

(declare-fun lt!661078 () Bool)

(assert (=> d!528844 (= res!774860 (not lt!661078))))

(assert (=> d!528844 (= lt!661078 e!1104182)))

(declare-fun res!774859 () Bool)

(assert (=> d!528844 (=> res!774859 e!1104182)))

(assert (=> d!528844 (= res!774859 ((_ is Nil!18903) lt!660885))))

(assert (=> d!528844 (= (isPrefix!1592 lt!660885 lt!660895) lt!661078)))

(declare-fun b!1726198 () Bool)

(assert (=> b!1726198 (= e!1104180 (isPrefix!1592 (tail!2579 lt!660885) (tail!2579 lt!660895)))))

(declare-fun b!1726197 () Bool)

(declare-fun res!774857 () Bool)

(assert (=> b!1726197 (=> (not res!774857) (not e!1104180))))

(assert (=> b!1726197 (= res!774857 (= (head!3912 lt!660885) (head!3912 lt!660895)))))

(assert (= (and d!528844 (not res!774859)) b!1726196))

(assert (= (and b!1726196 res!774858) b!1726197))

(assert (= (and b!1726197 res!774857) b!1726198))

(assert (= (and d!528844 (not res!774860)) b!1726199))

(assert (=> b!1726199 m!2132511))

(assert (=> b!1726199 m!2132531))

(assert (=> b!1726198 m!2132921))

(assert (=> b!1726198 m!2132911))

(assert (=> b!1726198 m!2132921))

(assert (=> b!1726198 m!2132911))

(declare-fun m!2133063 () Bool)

(assert (=> b!1726198 m!2133063))

(assert (=> b!1726197 m!2132927))

(declare-fun m!2133065 () Bool)

(assert (=> b!1726197 m!2133065))

(assert (=> b!1725803 d!528844))

(declare-fun d!528846 () Bool)

(assert (=> d!528846 (isPrefix!1592 lt!660900 (++!5176 lt!660900 suffix!1421))))

(declare-fun lt!661081 () Unit!32751)

(declare-fun choose!10524 (List!18973 List!18973) Unit!32751)

(assert (=> d!528846 (= lt!661081 (choose!10524 lt!660900 suffix!1421))))

(assert (=> d!528846 (= (lemmaConcatTwoListThenFirstIsPrefix!1102 lt!660900 suffix!1421) lt!661081)))

(declare-fun bs!402426 () Bool)

(assert (= bs!402426 d!528846))

(assert (=> bs!402426 m!2132503))

(assert (=> bs!402426 m!2132503))

(declare-fun m!2133067 () Bool)

(assert (=> bs!402426 m!2133067))

(declare-fun m!2133069 () Bool)

(assert (=> bs!402426 m!2133069))

(assert (=> b!1725803 d!528846))

(declare-fun d!528848 () Bool)

(declare-fun e!1104193 () Bool)

(assert (=> d!528848 e!1104193))

(declare-fun res!774865 () Bool)

(assert (=> d!528848 (=> res!774865 e!1104193)))

(declare-fun lt!661089 () Option!3727)

(declare-fun isEmpty!11892 (Option!3727) Bool)

(assert (=> d!528848 (= res!774865 (isEmpty!11892 lt!661089))))

(declare-fun e!1104192 () Option!3727)

(assert (=> d!528848 (= lt!661089 e!1104192)))

(declare-fun c!282270 () Bool)

(assert (=> d!528848 (= c!282270 (and ((_ is Cons!18904) rules!3447) (= (tag!3669 (h!24305 rules!3447)) (tag!3669 (rule!5313 (_1!10697 lt!660897))))))))

(assert (=> d!528848 (rulesInvariant!2649 thiss!24550 rules!3447)))

(assert (=> d!528848 (= (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 (_1!10697 lt!660897)))) lt!661089)))

(declare-fun b!1726212 () Bool)

(declare-fun e!1104194 () Option!3727)

(assert (=> b!1726212 (= e!1104192 e!1104194)))

(declare-fun c!282269 () Bool)

(assert (=> b!1726212 (= c!282269 (and ((_ is Cons!18904) rules!3447) (not (= (tag!3669 (h!24305 rules!3447)) (tag!3669 (rule!5313 (_1!10697 lt!660897)))))))))

(declare-fun b!1726213 () Bool)

(declare-fun lt!661088 () Unit!32751)

(declare-fun lt!661090 () Unit!32751)

(assert (=> b!1726213 (= lt!661088 lt!661090)))

(assert (=> b!1726213 (rulesInvariant!2649 thiss!24550 (t!160069 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!141 (LexerInterface!2980 Rule!6502 List!18974) Unit!32751)

(assert (=> b!1726213 (= lt!661090 (lemmaInvariantOnRulesThenOnTail!141 thiss!24550 (h!24305 rules!3447) (t!160069 rules!3447)))))

(assert (=> b!1726213 (= e!1104194 (getRuleFromTag!401 thiss!24550 (t!160069 rules!3447) (tag!3669 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun b!1726214 () Bool)

(assert (=> b!1726214 (= e!1104194 None!3726)))

(declare-fun b!1726215 () Bool)

(declare-fun e!1104191 () Bool)

(assert (=> b!1726215 (= e!1104191 (= (tag!3669 (get!5620 lt!661089)) (tag!3669 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun b!1726216 () Bool)

(assert (=> b!1726216 (= e!1104193 e!1104191)))

(declare-fun res!774866 () Bool)

(assert (=> b!1726216 (=> (not res!774866) (not e!1104191))))

(assert (=> b!1726216 (= res!774866 (contains!3373 rules!3447 (get!5620 lt!661089)))))

(declare-fun b!1726217 () Bool)

(assert (=> b!1726217 (= e!1104192 (Some!3726 (h!24305 rules!3447)))))

(assert (= (and d!528848 c!282270) b!1726217))

(assert (= (and d!528848 (not c!282270)) b!1726212))

(assert (= (and b!1726212 c!282269) b!1726213))

(assert (= (and b!1726212 (not c!282269)) b!1726214))

(assert (= (and d!528848 (not res!774865)) b!1726216))

(assert (= (and b!1726216 res!774866) b!1726215))

(declare-fun m!2133071 () Bool)

(assert (=> d!528848 m!2133071))

(assert (=> d!528848 m!2132609))

(declare-fun m!2133073 () Bool)

(assert (=> b!1726213 m!2133073))

(declare-fun m!2133075 () Bool)

(assert (=> b!1726213 m!2133075))

(declare-fun m!2133077 () Bool)

(assert (=> b!1726213 m!2133077))

(declare-fun m!2133079 () Bool)

(assert (=> b!1726215 m!2133079))

(assert (=> b!1726216 m!2133079))

(assert (=> b!1726216 m!2133079))

(declare-fun m!2133081 () Bool)

(assert (=> b!1726216 m!2133081))

(assert (=> b!1725803 d!528848))

(declare-fun d!528850 () Bool)

(assert (=> d!528850 (= (get!5619 lt!660884) (v!25136 lt!660884))))

(assert (=> b!1725803 d!528850))

(declare-fun b!1726221 () Bool)

(declare-fun e!1104196 () Bool)

(assert (=> b!1726221 (= e!1104196 (>= (size!15020 lt!660895) (size!15020 lt!660900)))))

(declare-fun b!1726218 () Bool)

(declare-fun e!1104197 () Bool)

(declare-fun e!1104195 () Bool)

(assert (=> b!1726218 (= e!1104197 e!1104195)))

(declare-fun res!774868 () Bool)

(assert (=> b!1726218 (=> (not res!774868) (not e!1104195))))

(assert (=> b!1726218 (= res!774868 (not ((_ is Nil!18903) lt!660895)))))

(declare-fun d!528852 () Bool)

(assert (=> d!528852 e!1104196))

(declare-fun res!774870 () Bool)

(assert (=> d!528852 (=> res!774870 e!1104196)))

(declare-fun lt!661091 () Bool)

(assert (=> d!528852 (= res!774870 (not lt!661091))))

(assert (=> d!528852 (= lt!661091 e!1104197)))

(declare-fun res!774869 () Bool)

(assert (=> d!528852 (=> res!774869 e!1104197)))

(assert (=> d!528852 (= res!774869 ((_ is Nil!18903) lt!660900))))

(assert (=> d!528852 (= (isPrefix!1592 lt!660900 lt!660895) lt!661091)))

(declare-fun b!1726220 () Bool)

(assert (=> b!1726220 (= e!1104195 (isPrefix!1592 (tail!2579 lt!660900) (tail!2579 lt!660895)))))

(declare-fun b!1726219 () Bool)

(declare-fun res!774867 () Bool)

(assert (=> b!1726219 (=> (not res!774867) (not e!1104195))))

(assert (=> b!1726219 (= res!774867 (= (head!3912 lt!660900) (head!3912 lt!660895)))))

(assert (= (and d!528852 (not res!774869)) b!1726218))

(assert (= (and b!1726218 res!774868) b!1726219))

(assert (= (and b!1726219 res!774867) b!1726220))

(assert (= (and d!528852 (not res!774870)) b!1726221))

(assert (=> b!1726221 m!2132511))

(assert (=> b!1726221 m!2132513))

(declare-fun m!2133083 () Bool)

(assert (=> b!1726220 m!2133083))

(assert (=> b!1726220 m!2132911))

(assert (=> b!1726220 m!2133083))

(assert (=> b!1726220 m!2132911))

(declare-fun m!2133085 () Bool)

(assert (=> b!1726220 m!2133085))

(declare-fun m!2133087 () Bool)

(assert (=> b!1726219 m!2133087))

(assert (=> b!1726219 m!2133065))

(assert (=> b!1725803 d!528852))

(declare-fun d!528854 () Bool)

(declare-fun e!1104200 () Bool)

(assert (=> d!528854 e!1104200))

(declare-fun res!774875 () Bool)

(assert (=> d!528854 (=> (not res!774875) (not e!1104200))))

(assert (=> d!528854 (= res!774875 (isDefined!3070 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 (_1!10697 lt!660897))))))))

(declare-fun lt!661094 () Unit!32751)

(declare-fun choose!10525 (LexerInterface!2980 List!18974 List!18973 Token!6268) Unit!32751)

(assert (=> d!528854 (= lt!661094 (choose!10525 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897)))))

(assert (=> d!528854 (rulesInvariant!2649 thiss!24550 rules!3447)))

(assert (=> d!528854 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!401 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897)) lt!661094)))

(declare-fun b!1726226 () Bool)

(declare-fun res!774876 () Bool)

(assert (=> b!1726226 (=> (not res!774876) (not e!1104200))))

(assert (=> b!1726226 (= res!774876 (matchR!2153 (regex!3351 (get!5620 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 (_1!10697 lt!660897)))))) (list!7640 (charsOf!2000 (_1!10697 lt!660897)))))))

(declare-fun b!1726227 () Bool)

(assert (=> b!1726227 (= e!1104200 (= (rule!5313 (_1!10697 lt!660897)) (get!5620 (getRuleFromTag!401 thiss!24550 rules!3447 (tag!3669 (rule!5313 (_1!10697 lt!660897)))))))))

(assert (= (and d!528854 res!774875) b!1726226))

(assert (= (and b!1726226 res!774876) b!1726227))

(assert (=> d!528854 m!2132499))

(assert (=> d!528854 m!2132499))

(declare-fun m!2133089 () Bool)

(assert (=> d!528854 m!2133089))

(declare-fun m!2133091 () Bool)

(assert (=> d!528854 m!2133091))

(assert (=> d!528854 m!2132609))

(assert (=> b!1726226 m!2132499))

(assert (=> b!1726226 m!2132481))

(assert (=> b!1726226 m!2132499))

(declare-fun m!2133093 () Bool)

(assert (=> b!1726226 m!2133093))

(assert (=> b!1726226 m!2132481))

(assert (=> b!1726226 m!2132591))

(assert (=> b!1726226 m!2132591))

(declare-fun m!2133095 () Bool)

(assert (=> b!1726226 m!2133095))

(assert (=> b!1726227 m!2132499))

(assert (=> b!1726227 m!2132499))

(assert (=> b!1726227 m!2133093))

(assert (=> b!1725803 d!528854))

(declare-fun d!528856 () Bool)

(declare-fun lt!661097 () BalanceConc!12518)

(assert (=> d!528856 (= (list!7640 lt!661097) (originalCharacters!4165 (_1!10697 lt!660897)))))

(assert (=> d!528856 (= lt!661097 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))

(assert (=> d!528856 (= (charsOf!2000 (_1!10697 lt!660897)) lt!661097)))

(declare-fun b_lambda!54913 () Bool)

(assert (=> (not b_lambda!54913) (not d!528856)))

(assert (=> d!528856 t!160050))

(declare-fun b_and!126673 () Bool)

(assert (= b_and!126601 (and (=> t!160050 result!123236) b_and!126673)))

(assert (=> d!528856 t!160052))

(declare-fun b_and!126675 () Bool)

(assert (= b_and!126603 (and (=> t!160052 result!123240) b_and!126675)))

(assert (=> d!528856 t!160054))

(declare-fun b_and!126677 () Bool)

(assert (= b_and!126605 (and (=> t!160054 result!123242) b_and!126677)))

(declare-fun m!2133097 () Bool)

(assert (=> d!528856 m!2133097))

(assert (=> d!528856 m!2132545))

(assert (=> b!1725803 d!528856))

(declare-fun e!1104201 () Bool)

(declare-fun lt!661098 () List!18973)

(declare-fun b!1726231 () Bool)

(assert (=> b!1726231 (= e!1104201 (or (not (= (_2!10697 lt!660897) Nil!18903)) (= lt!661098 lt!660885)))))

(declare-fun b!1726229 () Bool)

(declare-fun e!1104202 () List!18973)

(assert (=> b!1726229 (= e!1104202 (Cons!18903 (h!24304 lt!660885) (++!5176 (t!160068 lt!660885) (_2!10697 lt!660897))))))

(declare-fun d!528858 () Bool)

(assert (=> d!528858 e!1104201))

(declare-fun res!774877 () Bool)

(assert (=> d!528858 (=> (not res!774877) (not e!1104201))))

(assert (=> d!528858 (= res!774877 (= (content!2704 lt!661098) ((_ map or) (content!2704 lt!660885) (content!2704 (_2!10697 lt!660897)))))))

(assert (=> d!528858 (= lt!661098 e!1104202)))

(declare-fun c!282271 () Bool)

(assert (=> d!528858 (= c!282271 ((_ is Nil!18903) lt!660885))))

(assert (=> d!528858 (= (++!5176 lt!660885 (_2!10697 lt!660897)) lt!661098)))

(declare-fun b!1726230 () Bool)

(declare-fun res!774878 () Bool)

(assert (=> b!1726230 (=> (not res!774878) (not e!1104201))))

(assert (=> b!1726230 (= res!774878 (= (size!15020 lt!661098) (+ (size!15020 lt!660885) (size!15020 (_2!10697 lt!660897)))))))

(declare-fun b!1726228 () Bool)

(assert (=> b!1726228 (= e!1104202 (_2!10697 lt!660897))))

(assert (= (and d!528858 c!282271) b!1726228))

(assert (= (and d!528858 (not c!282271)) b!1726229))

(assert (= (and d!528858 res!774877) b!1726230))

(assert (= (and b!1726230 res!774878) b!1726231))

(declare-fun m!2133099 () Bool)

(assert (=> b!1726229 m!2133099))

(declare-fun m!2133101 () Bool)

(assert (=> d!528858 m!2133101))

(declare-fun m!2133103 () Bool)

(assert (=> d!528858 m!2133103))

(declare-fun m!2133105 () Bool)

(assert (=> d!528858 m!2133105))

(declare-fun m!2133107 () Bool)

(assert (=> b!1726230 m!2133107))

(assert (=> b!1726230 m!2132531))

(declare-fun m!2133109 () Bool)

(assert (=> b!1726230 m!2133109))

(assert (=> b!1725803 d!528858))

(declare-fun d!528860 () Bool)

(assert (=> d!528860 (isPrefix!1592 lt!660885 (++!5176 lt!660885 (_2!10697 lt!660897)))))

(declare-fun lt!661099 () Unit!32751)

(assert (=> d!528860 (= lt!661099 (choose!10524 lt!660885 (_2!10697 lt!660897)))))

(assert (=> d!528860 (= (lemmaConcatTwoListThenFirstIsPrefix!1102 lt!660885 (_2!10697 lt!660897)) lt!661099)))

(declare-fun bs!402427 () Bool)

(assert (= bs!402427 d!528860))

(assert (=> bs!402427 m!2132483))

(assert (=> bs!402427 m!2132483))

(assert (=> bs!402427 m!2132495))

(declare-fun m!2133111 () Bool)

(assert (=> bs!402427 m!2133111))

(assert (=> b!1725803 d!528860))

(declare-fun d!528862 () Bool)

(assert (=> d!528862 (= (isDefined!3070 lt!660899) (not (isEmpty!11892 lt!660899)))))

(declare-fun bs!402428 () Bool)

(assert (= bs!402428 d!528862))

(declare-fun m!2133113 () Bool)

(assert (=> bs!402428 m!2133113))

(assert (=> b!1725803 d!528862))

(declare-fun b!1726268 () Bool)

(declare-fun e!1104219 () Bool)

(declare-fun e!1104220 () Bool)

(assert (=> b!1726268 (= e!1104219 e!1104220)))

(declare-fun res!774908 () Bool)

(assert (=> b!1726268 (=> (not res!774908) (not e!1104220))))

(declare-fun lt!661171 () Option!3726)

(assert (=> b!1726268 (= res!774908 (isDefined!3069 lt!661171))))

(declare-fun b!1726269 () Bool)

(assert (=> b!1726269 (= e!1104220 (contains!3373 rules!3447 (rule!5313 (_1!10697 (get!5619 lt!661171)))))))

(declare-fun b!1726270 () Bool)

(declare-fun res!774906 () Bool)

(assert (=> b!1726270 (=> (not res!774906) (not e!1104220))))

(assert (=> b!1726270 (= res!774906 (matchR!2153 (regex!3351 (rule!5313 (_1!10697 (get!5619 lt!661171)))) (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661171))))))))

(declare-fun b!1726271 () Bool)

(declare-fun res!774905 () Bool)

(assert (=> b!1726271 (=> (not res!774905) (not e!1104220))))

(assert (=> b!1726271 (= res!774905 (< (size!15020 (_2!10697 (get!5619 lt!661171))) (size!15020 lt!660895)))))

(declare-fun b!1726272 () Bool)

(declare-fun res!774911 () Bool)

(assert (=> b!1726272 (=> (not res!774911) (not e!1104220))))

(assert (=> b!1726272 (= res!774911 (= (++!5176 (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661171)))) (_2!10697 (get!5619 lt!661171))) lt!660895))))

(declare-fun call!109847 () Option!3726)

(declare-fun bm!109842 () Bool)

(assert (=> bm!109842 (= call!109847 (maxPrefixOneRule!910 thiss!24550 (h!24305 rules!3447) lt!660895))))

(declare-fun b!1726273 () Bool)

(declare-fun e!1104218 () Option!3726)

(assert (=> b!1726273 (= e!1104218 call!109847)))

(declare-fun d!528864 () Bool)

(assert (=> d!528864 e!1104219))

(declare-fun res!774910 () Bool)

(assert (=> d!528864 (=> res!774910 e!1104219)))

(assert (=> d!528864 (= res!774910 (isEmpty!11891 lt!661171))))

(assert (=> d!528864 (= lt!661171 e!1104218)))

(declare-fun c!282277 () Bool)

(assert (=> d!528864 (= c!282277 (and ((_ is Cons!18904) rules!3447) ((_ is Nil!18904) (t!160069 rules!3447))))))

(declare-fun lt!661167 () Unit!32751)

(declare-fun lt!661170 () Unit!32751)

(assert (=> d!528864 (= lt!661167 lt!661170)))

(assert (=> d!528864 (isPrefix!1592 lt!660895 lt!660895)))

(declare-fun lemmaIsPrefixRefl!1076 (List!18973 List!18973) Unit!32751)

(assert (=> d!528864 (= lt!661170 (lemmaIsPrefixRefl!1076 lt!660895 lt!660895))))

(declare-fun rulesValidInductive!1113 (LexerInterface!2980 List!18974) Bool)

(assert (=> d!528864 (rulesValidInductive!1113 thiss!24550 rules!3447)))

(assert (=> d!528864 (= (maxPrefix!1534 thiss!24550 rules!3447 lt!660895) lt!661171)))

(declare-fun b!1726274 () Bool)

(declare-fun res!774909 () Bool)

(assert (=> b!1726274 (=> (not res!774909) (not e!1104220))))

(assert (=> b!1726274 (= res!774909 (= (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661171)))) (originalCharacters!4165 (_1!10697 (get!5619 lt!661171)))))))

(declare-fun b!1726275 () Bool)

(declare-fun res!774907 () Bool)

(assert (=> b!1726275 (=> (not res!774907) (not e!1104220))))

(assert (=> b!1726275 (= res!774907 (= (value!105176 (_1!10697 (get!5619 lt!661171))) (apply!5156 (transformation!3351 (rule!5313 (_1!10697 (get!5619 lt!661171)))) (seqFromList!2325 (originalCharacters!4165 (_1!10697 (get!5619 lt!661171)))))))))

(declare-fun b!1726276 () Bool)

(declare-fun lt!661168 () Option!3726)

(declare-fun lt!661169 () Option!3726)

(assert (=> b!1726276 (= e!1104218 (ite (and ((_ is None!3725) lt!661168) ((_ is None!3725) lt!661169)) None!3725 (ite ((_ is None!3725) lt!661169) lt!661168 (ite ((_ is None!3725) lt!661168) lt!661169 (ite (>= (size!15018 (_1!10697 (v!25136 lt!661168))) (size!15018 (_1!10697 (v!25136 lt!661169)))) lt!661168 lt!661169)))))))

(assert (=> b!1726276 (= lt!661168 call!109847)))

(assert (=> b!1726276 (= lt!661169 (maxPrefix!1534 thiss!24550 (t!160069 rules!3447) lt!660895))))

(assert (= (and d!528864 c!282277) b!1726273))

(assert (= (and d!528864 (not c!282277)) b!1726276))

(assert (= (or b!1726273 b!1726276) bm!109842))

(assert (= (and d!528864 (not res!774910)) b!1726268))

(assert (= (and b!1726268 res!774908) b!1726274))

(assert (= (and b!1726274 res!774909) b!1726271))

(assert (= (and b!1726271 res!774905) b!1726272))

(assert (= (and b!1726272 res!774911) b!1726275))

(assert (= (and b!1726275 res!774907) b!1726270))

(assert (= (and b!1726270 res!774906) b!1726269))

(declare-fun m!2133179 () Bool)

(assert (=> b!1726270 m!2133179))

(declare-fun m!2133181 () Bool)

(assert (=> b!1726270 m!2133181))

(assert (=> b!1726270 m!2133181))

(declare-fun m!2133183 () Bool)

(assert (=> b!1726270 m!2133183))

(assert (=> b!1726270 m!2133183))

(declare-fun m!2133185 () Bool)

(assert (=> b!1726270 m!2133185))

(declare-fun m!2133187 () Bool)

(assert (=> b!1726276 m!2133187))

(declare-fun m!2133189 () Bool)

(assert (=> b!1726268 m!2133189))

(assert (=> b!1726271 m!2133179))

(declare-fun m!2133191 () Bool)

(assert (=> b!1726271 m!2133191))

(assert (=> b!1726271 m!2132511))

(declare-fun m!2133193 () Bool)

(assert (=> bm!109842 m!2133193))

(assert (=> b!1726269 m!2133179))

(declare-fun m!2133195 () Bool)

(assert (=> b!1726269 m!2133195))

(declare-fun m!2133197 () Bool)

(assert (=> d!528864 m!2133197))

(declare-fun m!2133199 () Bool)

(assert (=> d!528864 m!2133199))

(declare-fun m!2133201 () Bool)

(assert (=> d!528864 m!2133201))

(declare-fun m!2133203 () Bool)

(assert (=> d!528864 m!2133203))

(assert (=> b!1726272 m!2133179))

(assert (=> b!1726272 m!2133181))

(assert (=> b!1726272 m!2133181))

(assert (=> b!1726272 m!2133183))

(assert (=> b!1726272 m!2133183))

(declare-fun m!2133205 () Bool)

(assert (=> b!1726272 m!2133205))

(assert (=> b!1726275 m!2133179))

(declare-fun m!2133207 () Bool)

(assert (=> b!1726275 m!2133207))

(assert (=> b!1726275 m!2133207))

(declare-fun m!2133209 () Bool)

(assert (=> b!1726275 m!2133209))

(assert (=> b!1726274 m!2133179))

(assert (=> b!1726274 m!2133181))

(assert (=> b!1726274 m!2133181))

(assert (=> b!1726274 m!2133183))

(assert (=> b!1725803 d!528864))

(declare-fun b!1726349 () Bool)

(declare-fun e!1104262 () Bool)

(declare-fun e!1104265 () Bool)

(assert (=> b!1726349 (= e!1104262 e!1104265)))

(declare-fun c!282293 () Bool)

(assert (=> b!1726349 (= c!282293 ((_ is EmptyLang!4679) (regex!3351 rule!422)))))

(declare-fun b!1726350 () Bool)

(declare-fun e!1104267 () Bool)

(declare-fun e!1104263 () Bool)

(assert (=> b!1726350 (= e!1104267 e!1104263)))

(declare-fun res!774957 () Bool)

(assert (=> b!1726350 (=> res!774957 e!1104263)))

(declare-fun call!109851 () Bool)

(assert (=> b!1726350 (= res!774957 call!109851)))

(declare-fun b!1726351 () Bool)

(assert (=> b!1726351 (= e!1104263 (not (= (head!3912 lt!660900) (c!282190 (regex!3351 rule!422)))))))

(declare-fun b!1726352 () Bool)

(declare-fun lt!661192 () Bool)

(assert (=> b!1726352 (= e!1104265 (not lt!661192))))

(declare-fun d!528874 () Bool)

(assert (=> d!528874 e!1104262))

(declare-fun c!282294 () Bool)

(assert (=> d!528874 (= c!282294 ((_ is EmptyExpr!4679) (regex!3351 rule!422)))))

(declare-fun e!1104264 () Bool)

(assert (=> d!528874 (= lt!661192 e!1104264)))

(declare-fun c!282292 () Bool)

(assert (=> d!528874 (= c!282292 (isEmpty!11889 lt!660900))))

(declare-fun validRegex!1888 (Regex!4679) Bool)

(assert (=> d!528874 (validRegex!1888 (regex!3351 rule!422))))

(assert (=> d!528874 (= (matchR!2153 (regex!3351 rule!422) lt!660900) lt!661192)))

(declare-fun b!1726353 () Bool)

(declare-fun derivativeStep!1182 (Regex!4679 C!9532) Regex!4679)

(assert (=> b!1726353 (= e!1104264 (matchR!2153 (derivativeStep!1182 (regex!3351 rule!422) (head!3912 lt!660900)) (tail!2579 lt!660900)))))

(declare-fun bm!109846 () Bool)

(assert (=> bm!109846 (= call!109851 (isEmpty!11889 lt!660900))))

(declare-fun b!1726354 () Bool)

(assert (=> b!1726354 (= e!1104262 (= lt!661192 call!109851))))

(declare-fun b!1726357 () Bool)

(declare-fun res!774959 () Bool)

(declare-fun e!1104266 () Bool)

(assert (=> b!1726357 (=> res!774959 e!1104266)))

(assert (=> b!1726357 (= res!774959 (not ((_ is ElementMatch!4679) (regex!3351 rule!422))))))

(assert (=> b!1726357 (= e!1104265 e!1104266)))

(declare-fun b!1726358 () Bool)

(declare-fun e!1104261 () Bool)

(assert (=> b!1726358 (= e!1104261 (= (head!3912 lt!660900) (c!282190 (regex!3351 rule!422))))))

(declare-fun b!1726359 () Bool)

(declare-fun res!774954 () Bool)

(assert (=> b!1726359 (=> (not res!774954) (not e!1104261))))

(assert (=> b!1726359 (= res!774954 (isEmpty!11889 (tail!2579 lt!660900)))))

(declare-fun b!1726360 () Bool)

(declare-fun res!774955 () Bool)

(assert (=> b!1726360 (=> res!774955 e!1104266)))

(assert (=> b!1726360 (= res!774955 e!1104261)))

(declare-fun res!774956 () Bool)

(assert (=> b!1726360 (=> (not res!774956) (not e!1104261))))

(assert (=> b!1726360 (= res!774956 lt!661192)))

(declare-fun b!1726361 () Bool)

(assert (=> b!1726361 (= e!1104266 e!1104267)))

(declare-fun res!774961 () Bool)

(assert (=> b!1726361 (=> (not res!774961) (not e!1104267))))

(assert (=> b!1726361 (= res!774961 (not lt!661192))))

(declare-fun b!1726362 () Bool)

(declare-fun nullable!1414 (Regex!4679) Bool)

(assert (=> b!1726362 (= e!1104264 (nullable!1414 (regex!3351 rule!422)))))

(declare-fun b!1726363 () Bool)

(declare-fun res!774958 () Bool)

(assert (=> b!1726363 (=> res!774958 e!1104263)))

(assert (=> b!1726363 (= res!774958 (not (isEmpty!11889 (tail!2579 lt!660900))))))

(declare-fun b!1726364 () Bool)

(declare-fun res!774960 () Bool)

(assert (=> b!1726364 (=> (not res!774960) (not e!1104261))))

(assert (=> b!1726364 (= res!774960 (not call!109851))))

(assert (= (and d!528874 c!282292) b!1726362))

(assert (= (and d!528874 (not c!282292)) b!1726353))

(assert (= (and d!528874 c!282294) b!1726354))

(assert (= (and d!528874 (not c!282294)) b!1726349))

(assert (= (and b!1726349 c!282293) b!1726352))

(assert (= (and b!1726349 (not c!282293)) b!1726357))

(assert (= (and b!1726357 (not res!774959)) b!1726360))

(assert (= (and b!1726360 res!774956) b!1726364))

(assert (= (and b!1726364 res!774960) b!1726359))

(assert (= (and b!1726359 res!774954) b!1726358))

(assert (= (and b!1726360 (not res!774955)) b!1726361))

(assert (= (and b!1726361 res!774961) b!1726350))

(assert (= (and b!1726350 (not res!774957)) b!1726363))

(assert (= (and b!1726363 (not res!774958)) b!1726351))

(assert (= (or b!1726354 b!1726350 b!1726364) bm!109846))

(assert (=> b!1726353 m!2133087))

(assert (=> b!1726353 m!2133087))

(declare-fun m!2133283 () Bool)

(assert (=> b!1726353 m!2133283))

(assert (=> b!1726353 m!2133083))

(assert (=> b!1726353 m!2133283))

(assert (=> b!1726353 m!2133083))

(declare-fun m!2133285 () Bool)

(assert (=> b!1726353 m!2133285))

(assert (=> b!1726358 m!2133087))

(assert (=> b!1726351 m!2133087))

(assert (=> b!1726363 m!2133083))

(assert (=> b!1726363 m!2133083))

(declare-fun m!2133287 () Bool)

(assert (=> b!1726363 m!2133287))

(declare-fun m!2133289 () Bool)

(assert (=> bm!109846 m!2133289))

(assert (=> b!1726359 m!2133083))

(assert (=> b!1726359 m!2133083))

(assert (=> b!1726359 m!2133287))

(assert (=> d!528874 m!2133289))

(declare-fun m!2133291 () Bool)

(assert (=> d!528874 m!2133291))

(declare-fun m!2133293 () Bool)

(assert (=> b!1726362 m!2133293))

(assert (=> b!1725800 d!528874))

(declare-fun d!528896 () Bool)

(declare-fun res!774966 () Bool)

(declare-fun e!1104283 () Bool)

(assert (=> d!528896 (=> (not res!774966) (not e!1104283))))

(assert (=> d!528896 (= res!774966 (validRegex!1888 (regex!3351 rule!422)))))

(assert (=> d!528896 (= (ruleValid!850 thiss!24550 rule!422) e!1104283)))

(declare-fun b!1726394 () Bool)

(declare-fun res!774967 () Bool)

(assert (=> b!1726394 (=> (not res!774967) (not e!1104283))))

(assert (=> b!1726394 (= res!774967 (not (nullable!1414 (regex!3351 rule!422))))))

(declare-fun b!1726395 () Bool)

(assert (=> b!1726395 (= e!1104283 (not (= (tag!3669 rule!422) (String!21538 ""))))))

(assert (= (and d!528896 res!774966) b!1726394))

(assert (= (and b!1726394 res!774967) b!1726395))

(assert (=> d!528896 m!2133291))

(assert (=> b!1726394 m!2133293))

(assert (=> b!1725800 d!528896))

(declare-fun d!528898 () Bool)

(assert (=> d!528898 (ruleValid!850 thiss!24550 rule!422)))

(declare-fun lt!661195 () Unit!32751)

(declare-fun choose!10528 (LexerInterface!2980 Rule!6502 List!18974) Unit!32751)

(assert (=> d!528898 (= lt!661195 (choose!10528 thiss!24550 rule!422 rules!3447))))

(assert (=> d!528898 (contains!3373 rules!3447 rule!422)))

(assert (=> d!528898 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!374 thiss!24550 rule!422 rules!3447) lt!661195)))

(declare-fun bs!402434 () Bool)

(assert (= bs!402434 d!528898))

(assert (=> bs!402434 m!2132605))

(declare-fun m!2133307 () Bool)

(assert (=> bs!402434 m!2133307))

(assert (=> bs!402434 m!2132611))

(assert (=> b!1725800 d!528898))

(declare-fun d!528900 () Bool)

(assert (=> d!528900 (= (isEmpty!11889 (_2!10697 lt!660887)) ((_ is Nil!18903) (_2!10697 lt!660887)))))

(assert (=> b!1725799 d!528900))

(declare-fun b!1726430 () Bool)

(declare-fun e!1104308 () Bool)

(declare-fun e!1104307 () Bool)

(assert (=> b!1726430 (= e!1104308 e!1104307)))

(declare-fun c!282299 () Bool)

(assert (=> b!1726430 (= c!282299 ((_ is IntegerValue!10324) (value!105176 token!523)))))

(declare-fun d!528902 () Bool)

(declare-fun c!282300 () Bool)

(assert (=> d!528902 (= c!282300 ((_ is IntegerValue!10323) (value!105176 token!523)))))

(assert (=> d!528902 (= (inv!21 (value!105176 token!523)) e!1104308)))

(declare-fun b!1726431 () Bool)

(declare-fun inv!17 (TokenValue!3441) Bool)

(assert (=> b!1726431 (= e!1104307 (inv!17 (value!105176 token!523)))))

(declare-fun b!1726432 () Bool)

(declare-fun inv!16 (TokenValue!3441) Bool)

(assert (=> b!1726432 (= e!1104308 (inv!16 (value!105176 token!523)))))

(declare-fun b!1726433 () Bool)

(declare-fun e!1104306 () Bool)

(declare-fun inv!15 (TokenValue!3441) Bool)

(assert (=> b!1726433 (= e!1104306 (inv!15 (value!105176 token!523)))))

(declare-fun b!1726434 () Bool)

(declare-fun res!774970 () Bool)

(assert (=> b!1726434 (=> res!774970 e!1104306)))

(assert (=> b!1726434 (= res!774970 (not ((_ is IntegerValue!10325) (value!105176 token!523))))))

(assert (=> b!1726434 (= e!1104307 e!1104306)))

(assert (= (and d!528902 c!282300) b!1726432))

(assert (= (and d!528902 (not c!282300)) b!1726430))

(assert (= (and b!1726430 c!282299) b!1726431))

(assert (= (and b!1726430 (not c!282299)) b!1726434))

(assert (= (and b!1726434 (not res!774970)) b!1726433))

(declare-fun m!2133313 () Bool)

(assert (=> b!1726431 m!2133313))

(declare-fun m!2133315 () Bool)

(assert (=> b!1726432 m!2133315))

(declare-fun m!2133317 () Bool)

(assert (=> b!1726433 m!2133317))

(assert (=> b!1725798 d!528902))

(declare-fun d!528904 () Bool)

(assert (=> d!528904 (= (inv!24424 (tag!3669 (rule!5313 token!523))) (= (mod (str.len (value!105175 (tag!3669 (rule!5313 token!523)))) 2) 0))))

(assert (=> b!1725819 d!528904))

(declare-fun d!528906 () Bool)

(declare-fun res!774973 () Bool)

(declare-fun e!1104311 () Bool)

(assert (=> d!528906 (=> (not res!774973) (not e!1104311))))

(declare-fun semiInverseModEq!1327 (Int Int) Bool)

(assert (=> d!528906 (= res!774973 (semiInverseModEq!1327 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 token!523)))))))

(assert (=> d!528906 (= (inv!24429 (transformation!3351 (rule!5313 token!523))) e!1104311)))

(declare-fun b!1726437 () Bool)

(declare-fun equivClasses!1268 (Int Int) Bool)

(assert (=> b!1726437 (= e!1104311 (equivClasses!1268 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 token!523)))))))

(assert (= (and d!528906 res!774973) b!1726437))

(declare-fun m!2133319 () Bool)

(assert (=> d!528906 m!2133319))

(declare-fun m!2133321 () Bool)

(assert (=> b!1726437 m!2133321))

(assert (=> b!1725819 d!528906))

(declare-fun d!528908 () Bool)

(declare-fun isBalanced!1967 (Conc!6287) Bool)

(assert (=> d!528908 (= (inv!24432 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))) (isBalanced!1967 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))))

(declare-fun bs!402435 () Bool)

(assert (= bs!402435 d!528908))

(declare-fun m!2133323 () Bool)

(assert (=> bs!402435 m!2133323))

(assert (=> tb!102519 d!528908))

(declare-fun b!1726438 () Bool)

(declare-fun e!1104313 () Bool)

(declare-fun e!1104316 () Bool)

(assert (=> b!1726438 (= e!1104313 e!1104316)))

(declare-fun c!282302 () Bool)

(assert (=> b!1726438 (= c!282302 ((_ is EmptyLang!4679) (regex!3351 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun b!1726439 () Bool)

(declare-fun e!1104318 () Bool)

(declare-fun e!1104314 () Bool)

(assert (=> b!1726439 (= e!1104318 e!1104314)))

(declare-fun res!774977 () Bool)

(assert (=> b!1726439 (=> res!774977 e!1104314)))

(declare-fun call!109852 () Bool)

(assert (=> b!1726439 (= res!774977 call!109852)))

(declare-fun b!1726440 () Bool)

(assert (=> b!1726440 (= e!1104314 (not (= (head!3912 lt!660885) (c!282190 (regex!3351 (rule!5313 (_1!10697 lt!660897)))))))))

(declare-fun b!1726441 () Bool)

(declare-fun lt!661196 () Bool)

(assert (=> b!1726441 (= e!1104316 (not lt!661196))))

(declare-fun d!528910 () Bool)

(assert (=> d!528910 e!1104313))

(declare-fun c!282303 () Bool)

(assert (=> d!528910 (= c!282303 ((_ is EmptyExpr!4679) (regex!3351 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun e!1104315 () Bool)

(assert (=> d!528910 (= lt!661196 e!1104315)))

(declare-fun c!282301 () Bool)

(assert (=> d!528910 (= c!282301 (isEmpty!11889 lt!660885))))

(assert (=> d!528910 (validRegex!1888 (regex!3351 (rule!5313 (_1!10697 lt!660897))))))

(assert (=> d!528910 (= (matchR!2153 (regex!3351 (rule!5313 (_1!10697 lt!660897))) lt!660885) lt!661196)))

(declare-fun b!1726442 () Bool)

(assert (=> b!1726442 (= e!1104315 (matchR!2153 (derivativeStep!1182 (regex!3351 (rule!5313 (_1!10697 lt!660897))) (head!3912 lt!660885)) (tail!2579 lt!660885)))))

(declare-fun bm!109847 () Bool)

(assert (=> bm!109847 (= call!109852 (isEmpty!11889 lt!660885))))

(declare-fun b!1726443 () Bool)

(assert (=> b!1726443 (= e!1104313 (= lt!661196 call!109852))))

(declare-fun b!1726444 () Bool)

(declare-fun res!774979 () Bool)

(declare-fun e!1104317 () Bool)

(assert (=> b!1726444 (=> res!774979 e!1104317)))

(assert (=> b!1726444 (= res!774979 (not ((_ is ElementMatch!4679) (regex!3351 (rule!5313 (_1!10697 lt!660897))))))))

(assert (=> b!1726444 (= e!1104316 e!1104317)))

(declare-fun b!1726445 () Bool)

(declare-fun e!1104312 () Bool)

(assert (=> b!1726445 (= e!1104312 (= (head!3912 lt!660885) (c!282190 (regex!3351 (rule!5313 (_1!10697 lt!660897))))))))

(declare-fun b!1726446 () Bool)

(declare-fun res!774974 () Bool)

(assert (=> b!1726446 (=> (not res!774974) (not e!1104312))))

(assert (=> b!1726446 (= res!774974 (isEmpty!11889 (tail!2579 lt!660885)))))

(declare-fun b!1726447 () Bool)

(declare-fun res!774975 () Bool)

(assert (=> b!1726447 (=> res!774975 e!1104317)))

(assert (=> b!1726447 (= res!774975 e!1104312)))

(declare-fun res!774976 () Bool)

(assert (=> b!1726447 (=> (not res!774976) (not e!1104312))))

(assert (=> b!1726447 (= res!774976 lt!661196)))

(declare-fun b!1726448 () Bool)

(assert (=> b!1726448 (= e!1104317 e!1104318)))

(declare-fun res!774981 () Bool)

(assert (=> b!1726448 (=> (not res!774981) (not e!1104318))))

(assert (=> b!1726448 (= res!774981 (not lt!661196))))

(declare-fun b!1726449 () Bool)

(assert (=> b!1726449 (= e!1104315 (nullable!1414 (regex!3351 (rule!5313 (_1!10697 lt!660897)))))))

(declare-fun b!1726450 () Bool)

(declare-fun res!774978 () Bool)

(assert (=> b!1726450 (=> res!774978 e!1104314)))

(assert (=> b!1726450 (= res!774978 (not (isEmpty!11889 (tail!2579 lt!660885))))))

(declare-fun b!1726451 () Bool)

(declare-fun res!774980 () Bool)

(assert (=> b!1726451 (=> (not res!774980) (not e!1104312))))

(assert (=> b!1726451 (= res!774980 (not call!109852))))

(assert (= (and d!528910 c!282301) b!1726449))

(assert (= (and d!528910 (not c!282301)) b!1726442))

(assert (= (and d!528910 c!282303) b!1726443))

(assert (= (and d!528910 (not c!282303)) b!1726438))

(assert (= (and b!1726438 c!282302) b!1726441))

(assert (= (and b!1726438 (not c!282302)) b!1726444))

(assert (= (and b!1726444 (not res!774979)) b!1726447))

(assert (= (and b!1726447 res!774976) b!1726451))

(assert (= (and b!1726451 res!774980) b!1726446))

(assert (= (and b!1726446 res!774974) b!1726445))

(assert (= (and b!1726447 (not res!774975)) b!1726448))

(assert (= (and b!1726448 res!774981) b!1726439))

(assert (= (and b!1726439 (not res!774977)) b!1726450))

(assert (= (and b!1726450 (not res!774978)) b!1726440))

(assert (= (or b!1726443 b!1726439 b!1726451) bm!109847))

(assert (=> b!1726442 m!2132927))

(assert (=> b!1726442 m!2132927))

(declare-fun m!2133325 () Bool)

(assert (=> b!1726442 m!2133325))

(assert (=> b!1726442 m!2132921))

(assert (=> b!1726442 m!2133325))

(assert (=> b!1726442 m!2132921))

(declare-fun m!2133327 () Bool)

(assert (=> b!1726442 m!2133327))

(assert (=> b!1726445 m!2132927))

(assert (=> b!1726440 m!2132927))

(assert (=> b!1726450 m!2132921))

(assert (=> b!1726450 m!2132921))

(declare-fun m!2133329 () Bool)

(assert (=> b!1726450 m!2133329))

(declare-fun m!2133331 () Bool)

(assert (=> bm!109847 m!2133331))

(assert (=> b!1726446 m!2132921))

(assert (=> b!1726446 m!2132921))

(assert (=> b!1726446 m!2133329))

(assert (=> d!528910 m!2133331))

(declare-fun m!2133333 () Bool)

(assert (=> d!528910 m!2133333))

(declare-fun m!2133335 () Bool)

(assert (=> b!1726449 m!2133335))

(assert (=> b!1725818 d!528910))

(declare-fun d!528912 () Bool)

(assert (=> d!528912 (= (inv!24424 (tag!3669 rule!422)) (= (mod (str.len (value!105175 (tag!3669 rule!422))) 2) 0))))

(assert (=> b!1725796 d!528912))

(declare-fun d!528914 () Bool)

(declare-fun res!774982 () Bool)

(declare-fun e!1104319 () Bool)

(assert (=> d!528914 (=> (not res!774982) (not e!1104319))))

(assert (=> d!528914 (= res!774982 (semiInverseModEq!1327 (toChars!4717 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 rule!422))))))

(assert (=> d!528914 (= (inv!24429 (transformation!3351 rule!422)) e!1104319)))

(declare-fun b!1726452 () Bool)

(assert (=> b!1726452 (= e!1104319 (equivClasses!1268 (toChars!4717 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 rule!422))))))

(assert (= (and d!528914 res!774982) b!1726452))

(declare-fun m!2133337 () Bool)

(assert (=> d!528914 m!2133337))

(declare-fun m!2133339 () Bool)

(assert (=> b!1726452 m!2133339))

(assert (=> b!1725796 d!528914))

(declare-fun d!528916 () Bool)

(assert (=> d!528916 (= (inv!24432 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))) (isBalanced!1967 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))))

(declare-fun bs!402436 () Bool)

(assert (= bs!402436 d!528916))

(declare-fun m!2133341 () Bool)

(assert (=> bs!402436 m!2133341))

(assert (=> tb!102513 d!528916))

(declare-fun d!528918 () Bool)

(assert (=> d!528918 (= (inv!24424 (tag!3669 (h!24305 rules!3447))) (= (mod (str.len (value!105175 (tag!3669 (h!24305 rules!3447)))) 2) 0))))

(assert (=> b!1725794 d!528918))

(declare-fun d!528920 () Bool)

(declare-fun res!774983 () Bool)

(declare-fun e!1104320 () Bool)

(assert (=> d!528920 (=> (not res!774983) (not e!1104320))))

(assert (=> d!528920 (= res!774983 (semiInverseModEq!1327 (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (h!24305 rules!3447)))))))

(assert (=> d!528920 (= (inv!24429 (transformation!3351 (h!24305 rules!3447))) e!1104320)))

(declare-fun b!1726453 () Bool)

(assert (=> b!1726453 (= e!1104320 (equivClasses!1268 (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (h!24305 rules!3447)))))))

(assert (= (and d!528920 res!774983) b!1726453))

(declare-fun m!2133343 () Bool)

(assert (=> d!528920 m!2133343))

(declare-fun m!2133345 () Bool)

(assert (=> b!1726453 m!2133345))

(assert (=> b!1725794 d!528920))

(declare-fun d!528922 () Bool)

(declare-fun c!282306 () Bool)

(assert (=> d!528922 (= c!282306 (isEmpty!11889 (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903))))))

(declare-fun e!1104323 () Bool)

(assert (=> d!528922 (= (prefixMatch!564 lt!660901 (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903))) e!1104323)))

(declare-fun b!1726458 () Bool)

(declare-fun lostCause!524 (Regex!4679) Bool)

(assert (=> b!1726458 (= e!1104323 (not (lostCause!524 lt!660901)))))

(declare-fun b!1726459 () Bool)

(assert (=> b!1726459 (= e!1104323 (prefixMatch!564 (derivativeStep!1182 lt!660901 (head!3912 (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903)))) (tail!2579 (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903)))))))

(assert (= (and d!528922 c!282306) b!1726458))

(assert (= (and d!528922 (not c!282306)) b!1726459))

(assert (=> d!528922 m!2132475))

(declare-fun m!2133347 () Bool)

(assert (=> d!528922 m!2133347))

(declare-fun m!2133349 () Bool)

(assert (=> b!1726458 m!2133349))

(assert (=> b!1726459 m!2132475))

(declare-fun m!2133351 () Bool)

(assert (=> b!1726459 m!2133351))

(assert (=> b!1726459 m!2133351))

(declare-fun m!2133353 () Bool)

(assert (=> b!1726459 m!2133353))

(assert (=> b!1726459 m!2132475))

(declare-fun m!2133355 () Bool)

(assert (=> b!1726459 m!2133355))

(assert (=> b!1726459 m!2133353))

(assert (=> b!1726459 m!2133355))

(declare-fun m!2133357 () Bool)

(assert (=> b!1726459 m!2133357))

(assert (=> b!1725815 d!528922))

(declare-fun lt!661197 () List!18973)

(declare-fun e!1104324 () Bool)

(declare-fun b!1726463 () Bool)

(assert (=> b!1726463 (= e!1104324 (or (not (= (Cons!18903 (head!3912 suffix!1421) Nil!18903) Nil!18903)) (= lt!661197 lt!660900)))))

(declare-fun b!1726461 () Bool)

(declare-fun e!1104325 () List!18973)

(assert (=> b!1726461 (= e!1104325 (Cons!18903 (h!24304 lt!660900) (++!5176 (t!160068 lt!660900) (Cons!18903 (head!3912 suffix!1421) Nil!18903))))))

(declare-fun d!528924 () Bool)

(assert (=> d!528924 e!1104324))

(declare-fun res!774984 () Bool)

(assert (=> d!528924 (=> (not res!774984) (not e!1104324))))

(assert (=> d!528924 (= res!774984 (= (content!2704 lt!661197) ((_ map or) (content!2704 lt!660900) (content!2704 (Cons!18903 (head!3912 suffix!1421) Nil!18903)))))))

(assert (=> d!528924 (= lt!661197 e!1104325)))

(declare-fun c!282307 () Bool)

(assert (=> d!528924 (= c!282307 ((_ is Nil!18903) lt!660900))))

(assert (=> d!528924 (= (++!5176 lt!660900 (Cons!18903 (head!3912 suffix!1421) Nil!18903)) lt!661197)))

(declare-fun b!1726462 () Bool)

(declare-fun res!774985 () Bool)

(assert (=> b!1726462 (=> (not res!774985) (not e!1104324))))

(assert (=> b!1726462 (= res!774985 (= (size!15020 lt!661197) (+ (size!15020 lt!660900) (size!15020 (Cons!18903 (head!3912 suffix!1421) Nil!18903)))))))

(declare-fun b!1726460 () Bool)

(assert (=> b!1726460 (= e!1104325 (Cons!18903 (head!3912 suffix!1421) Nil!18903))))

(assert (= (and d!528924 c!282307) b!1726460))

(assert (= (and d!528924 (not c!282307)) b!1726461))

(assert (= (and d!528924 res!774984) b!1726462))

(assert (= (and b!1726462 res!774985) b!1726463))

(declare-fun m!2133359 () Bool)

(assert (=> b!1726461 m!2133359))

(declare-fun m!2133361 () Bool)

(assert (=> d!528924 m!2133361))

(assert (=> d!528924 m!2133055))

(declare-fun m!2133363 () Bool)

(assert (=> d!528924 m!2133363))

(declare-fun m!2133365 () Bool)

(assert (=> b!1726462 m!2133365))

(assert (=> b!1726462 m!2132513))

(declare-fun m!2133367 () Bool)

(assert (=> b!1726462 m!2133367))

(assert (=> b!1725815 d!528924))

(declare-fun d!528926 () Bool)

(assert (=> d!528926 (= (head!3912 suffix!1421) (h!24304 suffix!1421))))

(assert (=> b!1725815 d!528926))

(declare-fun d!528928 () Bool)

(declare-fun lt!661200 () Unit!32751)

(declare-fun lemma!338 (List!18974 LexerInterface!2980 List!18974) Unit!32751)

(assert (=> d!528928 (= lt!661200 (lemma!338 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69254 () Int)

(declare-datatypes ((List!18977 0))(
  ( (Nil!18907) (Cons!18907 (h!24308 Regex!4679) (t!160132 List!18977)) )
))
(declare-fun generalisedUnion!346 (List!18977) Regex!4679)

(declare-fun map!3893 (List!18974 Int) List!18977)

(assert (=> d!528928 (= (rulesRegex!709 thiss!24550 rules!3447) (generalisedUnion!346 (map!3893 rules!3447 lambda!69254)))))

(declare-fun bs!402437 () Bool)

(assert (= bs!402437 d!528928))

(declare-fun m!2133369 () Bool)

(assert (=> bs!402437 m!2133369))

(declare-fun m!2133371 () Bool)

(assert (=> bs!402437 m!2133371))

(assert (=> bs!402437 m!2133371))

(declare-fun m!2133373 () Bool)

(assert (=> bs!402437 m!2133373))

(assert (=> b!1725815 d!528928))

(declare-fun d!528930 () Bool)

(declare-fun lt!661201 () Int)

(assert (=> d!528930 (>= lt!661201 0)))

(declare-fun e!1104326 () Int)

(assert (=> d!528930 (= lt!661201 e!1104326)))

(declare-fun c!282308 () Bool)

(assert (=> d!528930 (= c!282308 ((_ is Nil!18903) lt!660895))))

(assert (=> d!528930 (= (size!15020 lt!660895) lt!661201)))

(declare-fun b!1726464 () Bool)

(assert (=> b!1726464 (= e!1104326 0)))

(declare-fun b!1726465 () Bool)

(assert (=> b!1726465 (= e!1104326 (+ 1 (size!15020 (t!160068 lt!660895))))))

(assert (= (and d!528930 c!282308) b!1726464))

(assert (= (and d!528930 (not c!282308)) b!1726465))

(declare-fun m!2133375 () Bool)

(assert (=> b!1726465 m!2133375))

(assert (=> b!1725793 d!528930))

(declare-fun d!528932 () Bool)

(declare-fun lt!661202 () Int)

(assert (=> d!528932 (>= lt!661202 0)))

(declare-fun e!1104327 () Int)

(assert (=> d!528932 (= lt!661202 e!1104327)))

(declare-fun c!282309 () Bool)

(assert (=> d!528932 (= c!282309 ((_ is Nil!18903) lt!660900))))

(assert (=> d!528932 (= (size!15020 lt!660900) lt!661202)))

(declare-fun b!1726466 () Bool)

(assert (=> b!1726466 (= e!1104327 0)))

(declare-fun b!1726467 () Bool)

(assert (=> b!1726467 (= e!1104327 (+ 1 (size!15020 (t!160068 lt!660900))))))

(assert (= (and d!528932 c!282309) b!1726466))

(assert (= (and d!528932 (not c!282309)) b!1726467))

(declare-fun m!2133377 () Bool)

(assert (=> b!1726467 m!2133377))

(assert (=> b!1725793 d!528932))

(declare-fun b!1726468 () Bool)

(declare-fun e!1104329 () Bool)

(declare-fun e!1104332 () Bool)

(assert (=> b!1726468 (= e!1104329 e!1104332)))

(declare-fun c!282311 () Bool)

(assert (=> b!1726468 (= c!282311 ((_ is EmptyLang!4679) lt!660901))))

(declare-fun b!1726469 () Bool)

(declare-fun e!1104334 () Bool)

(declare-fun e!1104330 () Bool)

(assert (=> b!1726469 (= e!1104334 e!1104330)))

(declare-fun res!774989 () Bool)

(assert (=> b!1726469 (=> res!774989 e!1104330)))

(declare-fun call!109853 () Bool)

(assert (=> b!1726469 (= res!774989 call!109853)))

(declare-fun b!1726470 () Bool)

(assert (=> b!1726470 (= e!1104330 (not (= (head!3912 lt!660885) (c!282190 lt!660901))))))

(declare-fun b!1726471 () Bool)

(declare-fun lt!661203 () Bool)

(assert (=> b!1726471 (= e!1104332 (not lt!661203))))

(declare-fun d!528934 () Bool)

(assert (=> d!528934 e!1104329))

(declare-fun c!282312 () Bool)

(assert (=> d!528934 (= c!282312 ((_ is EmptyExpr!4679) lt!660901))))

(declare-fun e!1104331 () Bool)

(assert (=> d!528934 (= lt!661203 e!1104331)))

(declare-fun c!282310 () Bool)

(assert (=> d!528934 (= c!282310 (isEmpty!11889 lt!660885))))

(assert (=> d!528934 (validRegex!1888 lt!660901)))

(assert (=> d!528934 (= (matchR!2153 lt!660901 lt!660885) lt!661203)))

(declare-fun b!1726472 () Bool)

(assert (=> b!1726472 (= e!1104331 (matchR!2153 (derivativeStep!1182 lt!660901 (head!3912 lt!660885)) (tail!2579 lt!660885)))))

(declare-fun bm!109848 () Bool)

(assert (=> bm!109848 (= call!109853 (isEmpty!11889 lt!660885))))

(declare-fun b!1726473 () Bool)

(assert (=> b!1726473 (= e!1104329 (= lt!661203 call!109853))))

(declare-fun b!1726474 () Bool)

(declare-fun res!774991 () Bool)

(declare-fun e!1104333 () Bool)

(assert (=> b!1726474 (=> res!774991 e!1104333)))

(assert (=> b!1726474 (= res!774991 (not ((_ is ElementMatch!4679) lt!660901)))))

(assert (=> b!1726474 (= e!1104332 e!1104333)))

(declare-fun b!1726475 () Bool)

(declare-fun e!1104328 () Bool)

(assert (=> b!1726475 (= e!1104328 (= (head!3912 lt!660885) (c!282190 lt!660901)))))

(declare-fun b!1726476 () Bool)

(declare-fun res!774986 () Bool)

(assert (=> b!1726476 (=> (not res!774986) (not e!1104328))))

(assert (=> b!1726476 (= res!774986 (isEmpty!11889 (tail!2579 lt!660885)))))

(declare-fun b!1726477 () Bool)

(declare-fun res!774987 () Bool)

(assert (=> b!1726477 (=> res!774987 e!1104333)))

(assert (=> b!1726477 (= res!774987 e!1104328)))

(declare-fun res!774988 () Bool)

(assert (=> b!1726477 (=> (not res!774988) (not e!1104328))))

(assert (=> b!1726477 (= res!774988 lt!661203)))

(declare-fun b!1726478 () Bool)

(assert (=> b!1726478 (= e!1104333 e!1104334)))

(declare-fun res!774993 () Bool)

(assert (=> b!1726478 (=> (not res!774993) (not e!1104334))))

(assert (=> b!1726478 (= res!774993 (not lt!661203))))

(declare-fun b!1726479 () Bool)

(assert (=> b!1726479 (= e!1104331 (nullable!1414 lt!660901))))

(declare-fun b!1726480 () Bool)

(declare-fun res!774990 () Bool)

(assert (=> b!1726480 (=> res!774990 e!1104330)))

(assert (=> b!1726480 (= res!774990 (not (isEmpty!11889 (tail!2579 lt!660885))))))

(declare-fun b!1726481 () Bool)

(declare-fun res!774992 () Bool)

(assert (=> b!1726481 (=> (not res!774992) (not e!1104328))))

(assert (=> b!1726481 (= res!774992 (not call!109853))))

(assert (= (and d!528934 c!282310) b!1726479))

(assert (= (and d!528934 (not c!282310)) b!1726472))

(assert (= (and d!528934 c!282312) b!1726473))

(assert (= (and d!528934 (not c!282312)) b!1726468))

(assert (= (and b!1726468 c!282311) b!1726471))

(assert (= (and b!1726468 (not c!282311)) b!1726474))

(assert (= (and b!1726474 (not res!774991)) b!1726477))

(assert (= (and b!1726477 res!774988) b!1726481))

(assert (= (and b!1726481 res!774992) b!1726476))

(assert (= (and b!1726476 res!774986) b!1726475))

(assert (= (and b!1726477 (not res!774987)) b!1726478))

(assert (= (and b!1726478 res!774993) b!1726469))

(assert (= (and b!1726469 (not res!774989)) b!1726480))

(assert (= (and b!1726480 (not res!774990)) b!1726470))

(assert (= (or b!1726473 b!1726469 b!1726481) bm!109848))

(assert (=> b!1726472 m!2132927))

(assert (=> b!1726472 m!2132927))

(declare-fun m!2133379 () Bool)

(assert (=> b!1726472 m!2133379))

(assert (=> b!1726472 m!2132921))

(assert (=> b!1726472 m!2133379))

(assert (=> b!1726472 m!2132921))

(declare-fun m!2133381 () Bool)

(assert (=> b!1726472 m!2133381))

(assert (=> b!1726475 m!2132927))

(assert (=> b!1726470 m!2132927))

(assert (=> b!1726480 m!2132921))

(assert (=> b!1726480 m!2132921))

(assert (=> b!1726480 m!2133329))

(assert (=> bm!109848 m!2133331))

(assert (=> b!1726476 m!2132921))

(assert (=> b!1726476 m!2132921))

(assert (=> b!1726476 m!2133329))

(assert (=> d!528934 m!2133331))

(declare-fun m!2133383 () Bool)

(assert (=> d!528934 m!2133383))

(declare-fun m!2133385 () Bool)

(assert (=> b!1726479 m!2133385))

(assert (=> b!1725793 d!528934))

(declare-fun d!528936 () Bool)

(assert (=> d!528936 (matchR!2153 (rulesRegex!709 thiss!24550 rules!3447) (list!7640 (charsOf!2000 (_1!10697 lt!660897))))))

(declare-fun lt!661206 () Unit!32751)

(declare-fun choose!10530 (LexerInterface!2980 List!18974 List!18973 Token!6268 Rule!6502 List!18973) Unit!32751)

(assert (=> d!528936 (= lt!661206 (choose!10530 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897) (rule!5313 (_1!10697 lt!660897)) (_2!10697 lt!660897)))))

(assert (=> d!528936 (not (isEmpty!11890 rules!3447))))

(assert (=> d!528936 (= (lemmaMaxPrefixThenMatchesRulesRegex!100 thiss!24550 rules!3447 lt!660895 (_1!10697 lt!660897) (rule!5313 (_1!10697 lt!660897)) (_2!10697 lt!660897)) lt!661206)))

(declare-fun bs!402438 () Bool)

(assert (= bs!402438 d!528936))

(declare-fun m!2133387 () Bool)

(assert (=> bs!402438 m!2133387))

(assert (=> bs!402438 m!2132481))

(assert (=> bs!402438 m!2132481))

(assert (=> bs!402438 m!2132591))

(assert (=> bs!402438 m!2132587))

(assert (=> bs!402438 m!2132479))

(assert (=> bs!402438 m!2132591))

(declare-fun m!2133389 () Bool)

(assert (=> bs!402438 m!2133389))

(assert (=> bs!402438 m!2132479))

(assert (=> b!1725793 d!528936))

(declare-fun d!528938 () Bool)

(assert (=> d!528938 (= (get!5619 lt!660908) (v!25136 lt!660908))))

(assert (=> b!1725792 d!528938))

(declare-fun d!528940 () Bool)

(assert (=> d!528940 (= (isEmpty!11889 suffix!1421) ((_ is Nil!18903) suffix!1421))))

(assert (=> b!1725813 d!528940))

(declare-fun d!528942 () Bool)

(assert (=> d!528942 (= (isDefined!3069 lt!660908) (not (isEmpty!11891 lt!660908)))))

(declare-fun bs!402439 () Bool)

(assert (= bs!402439 d!528942))

(declare-fun m!2133391 () Bool)

(assert (=> bs!402439 m!2133391))

(assert (=> b!1725791 d!528942))

(declare-fun b!1726482 () Bool)

(declare-fun e!1104336 () Bool)

(declare-fun e!1104337 () Bool)

(assert (=> b!1726482 (= e!1104336 e!1104337)))

(declare-fun res!774997 () Bool)

(assert (=> b!1726482 (=> (not res!774997) (not e!1104337))))

(declare-fun lt!661211 () Option!3726)

(assert (=> b!1726482 (= res!774997 (isDefined!3069 lt!661211))))

(declare-fun b!1726483 () Bool)

(assert (=> b!1726483 (= e!1104337 (contains!3373 rules!3447 (rule!5313 (_1!10697 (get!5619 lt!661211)))))))

(declare-fun b!1726484 () Bool)

(declare-fun res!774995 () Bool)

(assert (=> b!1726484 (=> (not res!774995) (not e!1104337))))

(assert (=> b!1726484 (= res!774995 (matchR!2153 (regex!3351 (rule!5313 (_1!10697 (get!5619 lt!661211)))) (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661211))))))))

(declare-fun b!1726485 () Bool)

(declare-fun res!774994 () Bool)

(assert (=> b!1726485 (=> (not res!774994) (not e!1104337))))

(assert (=> b!1726485 (= res!774994 (< (size!15020 (_2!10697 (get!5619 lt!661211))) (size!15020 lt!660900)))))

(declare-fun b!1726486 () Bool)

(declare-fun res!775000 () Bool)

(assert (=> b!1726486 (=> (not res!775000) (not e!1104337))))

(assert (=> b!1726486 (= res!775000 (= (++!5176 (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661211)))) (_2!10697 (get!5619 lt!661211))) lt!660900))))

(declare-fun call!109854 () Option!3726)

(declare-fun bm!109849 () Bool)

(assert (=> bm!109849 (= call!109854 (maxPrefixOneRule!910 thiss!24550 (h!24305 rules!3447) lt!660900))))

(declare-fun b!1726487 () Bool)

(declare-fun e!1104335 () Option!3726)

(assert (=> b!1726487 (= e!1104335 call!109854)))

(declare-fun d!528944 () Bool)

(assert (=> d!528944 e!1104336))

(declare-fun res!774999 () Bool)

(assert (=> d!528944 (=> res!774999 e!1104336)))

(assert (=> d!528944 (= res!774999 (isEmpty!11891 lt!661211))))

(assert (=> d!528944 (= lt!661211 e!1104335)))

(declare-fun c!282313 () Bool)

(assert (=> d!528944 (= c!282313 (and ((_ is Cons!18904) rules!3447) ((_ is Nil!18904) (t!160069 rules!3447))))))

(declare-fun lt!661207 () Unit!32751)

(declare-fun lt!661210 () Unit!32751)

(assert (=> d!528944 (= lt!661207 lt!661210)))

(assert (=> d!528944 (isPrefix!1592 lt!660900 lt!660900)))

(assert (=> d!528944 (= lt!661210 (lemmaIsPrefixRefl!1076 lt!660900 lt!660900))))

(assert (=> d!528944 (rulesValidInductive!1113 thiss!24550 rules!3447)))

(assert (=> d!528944 (= (maxPrefix!1534 thiss!24550 rules!3447 lt!660900) lt!661211)))

(declare-fun b!1726488 () Bool)

(declare-fun res!774998 () Bool)

(assert (=> b!1726488 (=> (not res!774998) (not e!1104337))))

(assert (=> b!1726488 (= res!774998 (= (list!7640 (charsOf!2000 (_1!10697 (get!5619 lt!661211)))) (originalCharacters!4165 (_1!10697 (get!5619 lt!661211)))))))

(declare-fun b!1726489 () Bool)

(declare-fun res!774996 () Bool)

(assert (=> b!1726489 (=> (not res!774996) (not e!1104337))))

(assert (=> b!1726489 (= res!774996 (= (value!105176 (_1!10697 (get!5619 lt!661211))) (apply!5156 (transformation!3351 (rule!5313 (_1!10697 (get!5619 lt!661211)))) (seqFromList!2325 (originalCharacters!4165 (_1!10697 (get!5619 lt!661211)))))))))

(declare-fun b!1726490 () Bool)

(declare-fun lt!661208 () Option!3726)

(declare-fun lt!661209 () Option!3726)

(assert (=> b!1726490 (= e!1104335 (ite (and ((_ is None!3725) lt!661208) ((_ is None!3725) lt!661209)) None!3725 (ite ((_ is None!3725) lt!661209) lt!661208 (ite ((_ is None!3725) lt!661208) lt!661209 (ite (>= (size!15018 (_1!10697 (v!25136 lt!661208))) (size!15018 (_1!10697 (v!25136 lt!661209)))) lt!661208 lt!661209)))))))

(assert (=> b!1726490 (= lt!661208 call!109854)))

(assert (=> b!1726490 (= lt!661209 (maxPrefix!1534 thiss!24550 (t!160069 rules!3447) lt!660900))))

(assert (= (and d!528944 c!282313) b!1726487))

(assert (= (and d!528944 (not c!282313)) b!1726490))

(assert (= (or b!1726487 b!1726490) bm!109849))

(assert (= (and d!528944 (not res!774999)) b!1726482))

(assert (= (and b!1726482 res!774997) b!1726488))

(assert (= (and b!1726488 res!774998) b!1726485))

(assert (= (and b!1726485 res!774994) b!1726486))

(assert (= (and b!1726486 res!775000) b!1726489))

(assert (= (and b!1726489 res!774996) b!1726484))

(assert (= (and b!1726484 res!774995) b!1726483))

(declare-fun m!2133393 () Bool)

(assert (=> b!1726484 m!2133393))

(declare-fun m!2133395 () Bool)

(assert (=> b!1726484 m!2133395))

(assert (=> b!1726484 m!2133395))

(declare-fun m!2133397 () Bool)

(assert (=> b!1726484 m!2133397))

(assert (=> b!1726484 m!2133397))

(declare-fun m!2133399 () Bool)

(assert (=> b!1726484 m!2133399))

(declare-fun m!2133401 () Bool)

(assert (=> b!1726490 m!2133401))

(declare-fun m!2133403 () Bool)

(assert (=> b!1726482 m!2133403))

(assert (=> b!1726485 m!2133393))

(declare-fun m!2133405 () Bool)

(assert (=> b!1726485 m!2133405))

(assert (=> b!1726485 m!2132513))

(declare-fun m!2133407 () Bool)

(assert (=> bm!109849 m!2133407))

(assert (=> b!1726483 m!2133393))

(declare-fun m!2133409 () Bool)

(assert (=> b!1726483 m!2133409))

(declare-fun m!2133411 () Bool)

(assert (=> d!528944 m!2133411))

(declare-fun m!2133413 () Bool)

(assert (=> d!528944 m!2133413))

(declare-fun m!2133415 () Bool)

(assert (=> d!528944 m!2133415))

(assert (=> d!528944 m!2133203))

(assert (=> b!1726486 m!2133393))

(assert (=> b!1726486 m!2133395))

(assert (=> b!1726486 m!2133395))

(assert (=> b!1726486 m!2133397))

(assert (=> b!1726486 m!2133397))

(declare-fun m!2133417 () Bool)

(assert (=> b!1726486 m!2133417))

(assert (=> b!1726489 m!2133393))

(declare-fun m!2133419 () Bool)

(assert (=> b!1726489 m!2133419))

(assert (=> b!1726489 m!2133419))

(declare-fun m!2133421 () Bool)

(assert (=> b!1726489 m!2133421))

(assert (=> b!1726488 m!2133393))

(assert (=> b!1726488 m!2133395))

(assert (=> b!1726488 m!2133395))

(assert (=> b!1726488 m!2133397))

(assert (=> b!1725791 d!528944))

(declare-fun d!528946 () Bool)

(assert (=> d!528946 (= (list!7640 lt!660898) (list!7643 (c!282191 lt!660898)))))

(declare-fun bs!402440 () Bool)

(assert (= bs!402440 d!528946))

(declare-fun m!2133423 () Bool)

(assert (=> bs!402440 m!2133423))

(assert (=> b!1725791 d!528946))

(declare-fun d!528948 () Bool)

(declare-fun lt!661212 () BalanceConc!12518)

(assert (=> d!528948 (= (list!7640 lt!661212) (originalCharacters!4165 token!523))))

(assert (=> d!528948 (= lt!661212 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (value!105176 token!523)))))

(assert (=> d!528948 (= (charsOf!2000 token!523) lt!661212)))

(declare-fun b_lambda!54925 () Bool)

(assert (=> (not b_lambda!54925) (not d!528948)))

(declare-fun tb!102567 () Bool)

(declare-fun t!160107 () Bool)

(assert (=> (and b!1725801 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 token!523)))) t!160107) tb!102567))

(declare-fun b!1726491 () Bool)

(declare-fun e!1104338 () Bool)

(declare-fun tp!492507 () Bool)

(assert (=> b!1726491 (= e!1104338 (and (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (value!105176 token!523)))) tp!492507))))

(declare-fun result!123302 () Bool)

(assert (=> tb!102567 (= result!123302 (and (inv!24432 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (value!105176 token!523))) e!1104338))))

(assert (= tb!102567 b!1726491))

(declare-fun m!2133425 () Bool)

(assert (=> b!1726491 m!2133425))

(declare-fun m!2133427 () Bool)

(assert (=> tb!102567 m!2133427))

(assert (=> d!528948 t!160107))

(declare-fun b_and!126683 () Bool)

(assert (= b_and!126673 (and (=> t!160107 result!123302) b_and!126683)))

(declare-fun t!160109 () Bool)

(declare-fun tb!102569 () Bool)

(assert (=> (and b!1725802 (= (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toChars!4717 (transformation!3351 (rule!5313 token!523)))) t!160109) tb!102569))

(declare-fun result!123304 () Bool)

(assert (= result!123304 result!123302))

(assert (=> d!528948 t!160109))

(declare-fun b_and!126685 () Bool)

(assert (= b_and!126675 (and (=> t!160109 result!123304) b_and!126685)))

(declare-fun tb!102571 () Bool)

(declare-fun t!160111 () Bool)

(assert (=> (and b!1725812 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 token!523)))) t!160111) tb!102571))

(declare-fun result!123306 () Bool)

(assert (= result!123306 result!123302))

(assert (=> d!528948 t!160111))

(declare-fun b_and!126687 () Bool)

(assert (= b_and!126677 (and (=> t!160111 result!123306) b_and!126687)))

(declare-fun m!2133429 () Bool)

(assert (=> d!528948 m!2133429))

(declare-fun m!2133431 () Bool)

(assert (=> d!528948 m!2133431))

(assert (=> b!1725791 d!528948))

(declare-fun d!528950 () Bool)

(declare-fun c!282314 () Bool)

(assert (=> d!528950 (= c!282314 ((_ is Node!6287) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))))

(declare-fun e!1104339 () Bool)

(assert (=> d!528950 (= (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))) e!1104339)))

(declare-fun b!1726492 () Bool)

(assert (=> b!1726492 (= e!1104339 (inv!24435 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))))

(declare-fun b!1726493 () Bool)

(declare-fun e!1104340 () Bool)

(assert (=> b!1726493 (= e!1104339 e!1104340)))

(declare-fun res!775001 () Bool)

(assert (=> b!1726493 (= res!775001 (not ((_ is Leaf!9183) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))))))

(assert (=> b!1726493 (=> res!775001 e!1104340)))

(declare-fun b!1726494 () Bool)

(assert (=> b!1726494 (= e!1104340 (inv!24436 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))))))

(assert (= (and d!528950 c!282314) b!1726492))

(assert (= (and d!528950 (not c!282314)) b!1726493))

(assert (= (and b!1726493 (not res!775001)) b!1726494))

(declare-fun m!2133433 () Bool)

(assert (=> b!1726492 m!2133433))

(declare-fun m!2133435 () Bool)

(assert (=> b!1726494 m!2133435))

(assert (=> b!1725835 d!528950))

(declare-fun d!528952 () Bool)

(assert (=> d!528952 (= (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897))) (fromListB!1067 (originalCharacters!4165 (_1!10697 lt!660897))))))

(declare-fun bs!402441 () Bool)

(assert (= bs!402441 d!528952))

(declare-fun m!2133437 () Bool)

(assert (=> bs!402441 m!2133437))

(assert (=> b!1725790 d!528952))

(declare-fun d!528954 () Bool)

(declare-fun lt!661215 () Int)

(assert (=> d!528954 (= lt!661215 (size!15020 (list!7640 lt!660902)))))

(declare-fun size!15022 (Conc!6287) Int)

(assert (=> d!528954 (= lt!661215 (size!15022 (c!282191 lt!660902)))))

(assert (=> d!528954 (= (size!15019 lt!660902) lt!661215)))

(declare-fun bs!402442 () Bool)

(assert (= bs!402442 d!528954))

(assert (=> bs!402442 m!2132501))

(assert (=> bs!402442 m!2132501))

(declare-fun m!2133439 () Bool)

(assert (=> bs!402442 m!2133439))

(declare-fun m!2133441 () Bool)

(assert (=> bs!402442 m!2133441))

(assert (=> b!1725790 d!528954))

(declare-fun d!528956 () Bool)

(assert (=> d!528956 (= (apply!5156 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))

(declare-fun b_lambda!54927 () Bool)

(assert (=> (not b_lambda!54927) (not d!528956)))

(assert (=> d!528956 t!160062))

(declare-fun b_and!126689 () Bool)

(assert (= b_and!126619 (and (=> t!160062 result!123250) b_and!126689)))

(assert (=> d!528956 t!160064))

(declare-fun b_and!126691 () Bool)

(assert (= b_and!126621 (and (=> t!160064 result!123254) b_and!126691)))

(assert (=> d!528956 t!160066))

(declare-fun b_and!126693 () Bool)

(assert (= b_and!126623 (and (=> t!160066 result!123256) b_and!126693)))

(assert (=> d!528956 m!2132547))

(assert (=> b!1725790 d!528956))

(declare-fun b!1726501 () Bool)

(declare-fun e!1104345 () Bool)

(assert (=> b!1726501 (= e!1104345 true)))

(declare-fun d!528958 () Bool)

(assert (=> d!528958 e!1104345))

(assert (= d!528958 b!1726501))

(declare-fun order!11583 () Int)

(declare-fun lambda!69257 () Int)

(declare-fun dynLambda!8756 (Int Int) Int)

(assert (=> b!1726501 (< (dynLambda!8750 order!11575 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8756 order!11583 lambda!69257))))

(assert (=> b!1726501 (< (dynLambda!8752 order!11579 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8756 order!11583 lambda!69257))))

(assert (=> d!528958 (= (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897)))))))

(declare-fun lt!661218 () Unit!32751)

(declare-fun Forall2of!83 (Int BalanceConc!12518 BalanceConc!12518) Unit!32751)

(assert (=> d!528958 (= lt!661218 (Forall2of!83 lambda!69257 lt!660902 (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897)))))))

(assert (=> d!528958 (= (list!7640 lt!660902) (list!7640 (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897)))))))

(assert (=> d!528958 (= (lemmaEqSameImage!276 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902 (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897)))) lt!661218)))

(declare-fun b_lambda!54929 () Bool)

(assert (=> (not b_lambda!54929) (not d!528958)))

(assert (=> d!528958 t!160062))

(declare-fun b_and!126695 () Bool)

(assert (= b_and!126689 (and (=> t!160062 result!123250) b_and!126695)))

(assert (=> d!528958 t!160064))

(declare-fun b_and!126697 () Bool)

(assert (= b_and!126691 (and (=> t!160064 result!123254) b_and!126697)))

(assert (=> d!528958 t!160066))

(declare-fun b_and!126699 () Bool)

(assert (= b_and!126693 (and (=> t!160066 result!123256) b_and!126699)))

(declare-fun b_lambda!54931 () Bool)

(assert (=> (not b_lambda!54931) (not d!528958)))

(declare-fun tb!102573 () Bool)

(declare-fun t!160113 () Bool)

(assert (=> (and b!1725801 (= (toValue!4858 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160113) tb!102573))

(declare-fun result!123308 () Bool)

(assert (=> tb!102573 (= result!123308 (inv!21 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (seqFromList!2325 (originalCharacters!4165 (_1!10697 lt!660897))))))))

(declare-fun m!2133443 () Bool)

(assert (=> tb!102573 m!2133443))

(assert (=> d!528958 t!160113))

(declare-fun b_and!126701 () Bool)

(assert (= b_and!126695 (and (=> t!160113 result!123308) b_and!126701)))

(declare-fun tb!102575 () Bool)

(declare-fun t!160115 () Bool)

(assert (=> (and b!1725802 (= (toValue!4858 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160115) tb!102575))

(declare-fun result!123310 () Bool)

(assert (= result!123310 result!123308))

(assert (=> d!528958 t!160115))

(declare-fun b_and!126703 () Bool)

(assert (= b_and!126697 (and (=> t!160115 result!123310) b_and!126703)))

(declare-fun tb!102577 () Bool)

(declare-fun t!160117 () Bool)

(assert (=> (and b!1725812 (= (toValue!4858 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160117) tb!102577))

(declare-fun result!123312 () Bool)

(assert (= result!123312 result!123308))

(assert (=> d!528958 t!160117))

(declare-fun b_and!126705 () Bool)

(assert (= b_and!126699 (and (=> t!160117 result!123312) b_and!126705)))

(assert (=> d!528958 m!2132557))

(declare-fun m!2133445 () Bool)

(assert (=> d!528958 m!2133445))

(assert (=> d!528958 m!2132557))

(declare-fun m!2133447 () Bool)

(assert (=> d!528958 m!2133447))

(assert (=> d!528958 m!2132547))

(assert (=> d!528958 m!2132501))

(assert (=> d!528958 m!2132557))

(declare-fun m!2133449 () Bool)

(assert (=> d!528958 m!2133449))

(assert (=> b!1725790 d!528958))

(declare-fun d!528960 () Bool)

(assert (=> d!528960 (= (size!15018 (_1!10697 lt!660897)) (size!15020 (originalCharacters!4165 (_1!10697 lt!660897))))))

(declare-fun Unit!32759 () Unit!32751)

(assert (=> d!528960 (= (lemmaCharactersSize!423 (_1!10697 lt!660897)) Unit!32759)))

(declare-fun bs!402443 () Bool)

(assert (= bs!402443 d!528960))

(declare-fun m!2133451 () Bool)

(assert (=> bs!402443 m!2133451))

(assert (=> b!1725790 d!528960))

(declare-fun d!528962 () Bool)

(declare-fun choose!10533 (Int) Bool)

(assert (=> d!528962 (= (Forall!726 lambda!69242) (choose!10533 lambda!69242))))

(declare-fun bs!402444 () Bool)

(assert (= bs!402444 d!528962))

(declare-fun m!2133453 () Bool)

(assert (=> bs!402444 m!2133453))

(assert (=> b!1725811 d!528962))

(declare-fun d!528964 () Bool)

(declare-fun e!1104349 () Bool)

(assert (=> d!528964 e!1104349))

(declare-fun res!775006 () Bool)

(assert (=> d!528964 (=> (not res!775006) (not e!1104349))))

(assert (=> d!528964 (= res!775006 (semiInverseModEq!1327 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))))))

(declare-fun Unit!32760 () Unit!32751)

(assert (=> d!528964 (= (lemmaInv!558 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) Unit!32760)))

(declare-fun b!1726504 () Bool)

(assert (=> b!1726504 (= e!1104349 (equivClasses!1268 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))))))

(assert (= (and d!528964 res!775006) b!1726504))

(declare-fun m!2133455 () Bool)

(assert (=> d!528964 m!2133455))

(declare-fun m!2133457 () Bool)

(assert (=> b!1726504 m!2133457))

(assert (=> b!1725811 d!528964))

(declare-fun b!1726505 () Bool)

(declare-fun e!1104351 () Bool)

(declare-fun e!1104354 () Bool)

(assert (=> b!1726505 (= e!1104351 e!1104354)))

(declare-fun c!282316 () Bool)

(assert (=> b!1726505 (= c!282316 ((_ is EmptyLang!4679) (regex!3351 lt!660891)))))

(declare-fun b!1726506 () Bool)

(declare-fun e!1104356 () Bool)

(declare-fun e!1104352 () Bool)

(assert (=> b!1726506 (= e!1104356 e!1104352)))

(declare-fun res!775010 () Bool)

(assert (=> b!1726506 (=> res!775010 e!1104352)))

(declare-fun call!109855 () Bool)

(assert (=> b!1726506 (= res!775010 call!109855)))

(declare-fun b!1726507 () Bool)

(assert (=> b!1726507 (= e!1104352 (not (= (head!3912 (list!7640 (charsOf!2000 (_1!10697 lt!660897)))) (c!282190 (regex!3351 lt!660891)))))))

(declare-fun b!1726508 () Bool)

(declare-fun lt!661219 () Bool)

(assert (=> b!1726508 (= e!1104354 (not lt!661219))))

(declare-fun d!528966 () Bool)

(assert (=> d!528966 e!1104351))

(declare-fun c!282317 () Bool)

(assert (=> d!528966 (= c!282317 ((_ is EmptyExpr!4679) (regex!3351 lt!660891)))))

(declare-fun e!1104353 () Bool)

(assert (=> d!528966 (= lt!661219 e!1104353)))

(declare-fun c!282315 () Bool)

(assert (=> d!528966 (= c!282315 (isEmpty!11889 (list!7640 (charsOf!2000 (_1!10697 lt!660897)))))))

(assert (=> d!528966 (validRegex!1888 (regex!3351 lt!660891))))

(assert (=> d!528966 (= (matchR!2153 (regex!3351 lt!660891) (list!7640 (charsOf!2000 (_1!10697 lt!660897)))) lt!661219)))

(declare-fun b!1726509 () Bool)

(assert (=> b!1726509 (= e!1104353 (matchR!2153 (derivativeStep!1182 (regex!3351 lt!660891) (head!3912 (list!7640 (charsOf!2000 (_1!10697 lt!660897))))) (tail!2579 (list!7640 (charsOf!2000 (_1!10697 lt!660897))))))))

(declare-fun bm!109850 () Bool)

(assert (=> bm!109850 (= call!109855 (isEmpty!11889 (list!7640 (charsOf!2000 (_1!10697 lt!660897)))))))

(declare-fun b!1726510 () Bool)

(assert (=> b!1726510 (= e!1104351 (= lt!661219 call!109855))))

(declare-fun b!1726511 () Bool)

(declare-fun res!775012 () Bool)

(declare-fun e!1104355 () Bool)

(assert (=> b!1726511 (=> res!775012 e!1104355)))

(assert (=> b!1726511 (= res!775012 (not ((_ is ElementMatch!4679) (regex!3351 lt!660891))))))

(assert (=> b!1726511 (= e!1104354 e!1104355)))

(declare-fun b!1726512 () Bool)

(declare-fun e!1104350 () Bool)

(assert (=> b!1726512 (= e!1104350 (= (head!3912 (list!7640 (charsOf!2000 (_1!10697 lt!660897)))) (c!282190 (regex!3351 lt!660891))))))

(declare-fun b!1726513 () Bool)

(declare-fun res!775007 () Bool)

(assert (=> b!1726513 (=> (not res!775007) (not e!1104350))))

(assert (=> b!1726513 (= res!775007 (isEmpty!11889 (tail!2579 (list!7640 (charsOf!2000 (_1!10697 lt!660897))))))))

(declare-fun b!1726514 () Bool)

(declare-fun res!775008 () Bool)

(assert (=> b!1726514 (=> res!775008 e!1104355)))

(assert (=> b!1726514 (= res!775008 e!1104350)))

(declare-fun res!775009 () Bool)

(assert (=> b!1726514 (=> (not res!775009) (not e!1104350))))

(assert (=> b!1726514 (= res!775009 lt!661219)))

(declare-fun b!1726515 () Bool)

(assert (=> b!1726515 (= e!1104355 e!1104356)))

(declare-fun res!775014 () Bool)

(assert (=> b!1726515 (=> (not res!775014) (not e!1104356))))

(assert (=> b!1726515 (= res!775014 (not lt!661219))))

(declare-fun b!1726516 () Bool)

(assert (=> b!1726516 (= e!1104353 (nullable!1414 (regex!3351 lt!660891)))))

(declare-fun b!1726517 () Bool)

(declare-fun res!775011 () Bool)

(assert (=> b!1726517 (=> res!775011 e!1104352)))

(assert (=> b!1726517 (= res!775011 (not (isEmpty!11889 (tail!2579 (list!7640 (charsOf!2000 (_1!10697 lt!660897)))))))))

(declare-fun b!1726518 () Bool)

(declare-fun res!775013 () Bool)

(assert (=> b!1726518 (=> (not res!775013) (not e!1104350))))

(assert (=> b!1726518 (= res!775013 (not call!109855))))

(assert (= (and d!528966 c!282315) b!1726516))

(assert (= (and d!528966 (not c!282315)) b!1726509))

(assert (= (and d!528966 c!282317) b!1726510))

(assert (= (and d!528966 (not c!282317)) b!1726505))

(assert (= (and b!1726505 c!282316) b!1726508))

(assert (= (and b!1726505 (not c!282316)) b!1726511))

(assert (= (and b!1726511 (not res!775012)) b!1726514))

(assert (= (and b!1726514 res!775009) b!1726518))

(assert (= (and b!1726518 res!775013) b!1726513))

(assert (= (and b!1726513 res!775007) b!1726512))

(assert (= (and b!1726514 (not res!775008)) b!1726515))

(assert (= (and b!1726515 res!775014) b!1726506))

(assert (= (and b!1726506 (not res!775010)) b!1726517))

(assert (= (and b!1726517 (not res!775011)) b!1726507))

(assert (= (or b!1726510 b!1726506 b!1726518) bm!109850))

(assert (=> b!1726509 m!2132591))

(declare-fun m!2133459 () Bool)

(assert (=> b!1726509 m!2133459))

(assert (=> b!1726509 m!2133459))

(declare-fun m!2133461 () Bool)

(assert (=> b!1726509 m!2133461))

(assert (=> b!1726509 m!2132591))

(declare-fun m!2133463 () Bool)

(assert (=> b!1726509 m!2133463))

(assert (=> b!1726509 m!2133461))

(assert (=> b!1726509 m!2133463))

(declare-fun m!2133465 () Bool)

(assert (=> b!1726509 m!2133465))

(assert (=> b!1726512 m!2132591))

(assert (=> b!1726512 m!2133459))

(assert (=> b!1726507 m!2132591))

(assert (=> b!1726507 m!2133459))

(assert (=> b!1726517 m!2132591))

(assert (=> b!1726517 m!2133463))

(assert (=> b!1726517 m!2133463))

(declare-fun m!2133467 () Bool)

(assert (=> b!1726517 m!2133467))

(assert (=> bm!109850 m!2132591))

(declare-fun m!2133469 () Bool)

(assert (=> bm!109850 m!2133469))

(assert (=> b!1726513 m!2132591))

(assert (=> b!1726513 m!2133463))

(assert (=> b!1726513 m!2133463))

(assert (=> b!1726513 m!2133467))

(assert (=> d!528966 m!2132591))

(assert (=> d!528966 m!2133469))

(declare-fun m!2133471 () Bool)

(assert (=> d!528966 m!2133471))

(declare-fun m!2133473 () Bool)

(assert (=> b!1726516 m!2133473))

(assert (=> b!1725810 d!528966))

(declare-fun d!528968 () Bool)

(assert (=> d!528968 (= (list!7640 (charsOf!2000 (_1!10697 lt!660897))) (list!7643 (c!282191 (charsOf!2000 (_1!10697 lt!660897)))))))

(declare-fun bs!402445 () Bool)

(assert (= bs!402445 d!528968))

(declare-fun m!2133475 () Bool)

(assert (=> bs!402445 m!2133475))

(assert (=> b!1725810 d!528968))

(assert (=> b!1725810 d!528856))

(declare-fun d!528970 () Bool)

(assert (=> d!528970 (= (get!5620 lt!660899) (v!25137 lt!660899))))

(assert (=> b!1725810 d!528970))

(declare-fun b!1726519 () Bool)

(declare-fun e!1104359 () Bool)

(declare-fun e!1104358 () Bool)

(assert (=> b!1726519 (= e!1104359 e!1104358)))

(declare-fun c!282318 () Bool)

(assert (=> b!1726519 (= c!282318 ((_ is IntegerValue!10324) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(declare-fun d!528972 () Bool)

(declare-fun c!282319 () Bool)

(assert (=> d!528972 (= c!282319 ((_ is IntegerValue!10323) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(assert (=> d!528972 (= (inv!21 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)) e!1104359)))

(declare-fun b!1726520 () Bool)

(assert (=> b!1726520 (= e!1104358 (inv!17 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(declare-fun b!1726521 () Bool)

(assert (=> b!1726521 (= e!1104359 (inv!16 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(declare-fun b!1726522 () Bool)

(declare-fun e!1104357 () Bool)

(assert (=> b!1726522 (= e!1104357 (inv!15 (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))

(declare-fun b!1726523 () Bool)

(declare-fun res!775015 () Bool)

(assert (=> b!1726523 (=> res!775015 e!1104357)))

(assert (=> b!1726523 (= res!775015 (not ((_ is IntegerValue!10325) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))))

(assert (=> b!1726523 (= e!1104358 e!1104357)))

(assert (= (and d!528972 c!282319) b!1726521))

(assert (= (and d!528972 (not c!282319)) b!1726519))

(assert (= (and b!1726519 c!282318) b!1726520))

(assert (= (and b!1726519 (not c!282318)) b!1726523))

(assert (= (and b!1726523 (not res!775015)) b!1726522))

(declare-fun m!2133477 () Bool)

(assert (=> b!1726520 m!2133477))

(declare-fun m!2133479 () Bool)

(assert (=> b!1726521 m!2133479))

(declare-fun m!2133481 () Bool)

(assert (=> b!1726522 m!2133481))

(assert (=> tb!102525 d!528972))

(declare-fun d!528974 () Bool)

(declare-fun res!775020 () Bool)

(declare-fun e!1104362 () Bool)

(assert (=> d!528974 (=> (not res!775020) (not e!1104362))))

(assert (=> d!528974 (= res!775020 (not (isEmpty!11889 (originalCharacters!4165 token!523))))))

(assert (=> d!528974 (= (inv!24430 token!523) e!1104362)))

(declare-fun b!1726528 () Bool)

(declare-fun res!775021 () Bool)

(assert (=> b!1726528 (=> (not res!775021) (not e!1104362))))

(assert (=> b!1726528 (= res!775021 (= (originalCharacters!4165 token!523) (list!7640 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 token!523))) (value!105176 token!523)))))))

(declare-fun b!1726529 () Bool)

(assert (=> b!1726529 (= e!1104362 (= (size!15018 token!523) (size!15020 (originalCharacters!4165 token!523))))))

(assert (= (and d!528974 res!775020) b!1726528))

(assert (= (and b!1726528 res!775021) b!1726529))

(declare-fun b_lambda!54933 () Bool)

(assert (=> (not b_lambda!54933) (not b!1726528)))

(assert (=> b!1726528 t!160107))

(declare-fun b_and!126707 () Bool)

(assert (= b_and!126683 (and (=> t!160107 result!123302) b_and!126707)))

(assert (=> b!1726528 t!160109))

(declare-fun b_and!126709 () Bool)

(assert (= b_and!126685 (and (=> t!160109 result!123304) b_and!126709)))

(assert (=> b!1726528 t!160111))

(declare-fun b_and!126711 () Bool)

(assert (= b_and!126687 (and (=> t!160111 result!123306) b_and!126711)))

(declare-fun m!2133483 () Bool)

(assert (=> d!528974 m!2133483))

(assert (=> b!1726528 m!2133431))

(assert (=> b!1726528 m!2133431))

(declare-fun m!2133485 () Bool)

(assert (=> b!1726528 m!2133485))

(declare-fun m!2133487 () Bool)

(assert (=> b!1726529 m!2133487))

(assert (=> start!169398 d!528974))

(declare-fun d!528976 () Bool)

(declare-fun res!775024 () Bool)

(declare-fun e!1104365 () Bool)

(assert (=> d!528976 (=> (not res!775024) (not e!1104365))))

(declare-fun rulesValid!1254 (LexerInterface!2980 List!18974) Bool)

(assert (=> d!528976 (= res!775024 (rulesValid!1254 thiss!24550 rules!3447))))

(assert (=> d!528976 (= (rulesInvariant!2649 thiss!24550 rules!3447) e!1104365)))

(declare-fun b!1726532 () Bool)

(declare-datatypes ((List!18980 0))(
  ( (Nil!18910) (Cons!18910 (h!24311 String!21537) (t!160135 List!18980)) )
))
(declare-fun noDuplicateTag!1254 (LexerInterface!2980 List!18974 List!18980) Bool)

(assert (=> b!1726532 (= e!1104365 (noDuplicateTag!1254 thiss!24550 rules!3447 Nil!18910))))

(assert (= (and d!528976 res!775024) b!1726532))

(declare-fun m!2133489 () Bool)

(assert (=> d!528976 m!2133489))

(declare-fun m!2133491 () Bool)

(assert (=> b!1726532 m!2133491))

(assert (=> b!1725809 d!528976))

(declare-fun d!528978 () Bool)

(declare-fun lt!661220 () Int)

(assert (=> d!528978 (= lt!661220 (size!15020 (list!7640 lt!660898)))))

(assert (=> d!528978 (= lt!661220 (size!15022 (c!282191 lt!660898)))))

(assert (=> d!528978 (= (size!15019 lt!660898) lt!661220)))

(declare-fun bs!402446 () Bool)

(assert (= bs!402446 d!528978))

(assert (=> bs!402446 m!2132523))

(assert (=> bs!402446 m!2132523))

(declare-fun m!2133493 () Bool)

(assert (=> bs!402446 m!2133493))

(declare-fun m!2133495 () Bool)

(assert (=> bs!402446 m!2133495))

(assert (=> b!1725808 d!528978))

(declare-fun b!1726533 () Bool)

(declare-fun e!1104367 () Bool)

(declare-fun e!1104370 () Bool)

(assert (=> b!1726533 (= e!1104367 e!1104370)))

(declare-fun c!282321 () Bool)

(assert (=> b!1726533 (= c!282321 ((_ is EmptyLang!4679) lt!660901))))

(declare-fun b!1726534 () Bool)

(declare-fun e!1104372 () Bool)

(declare-fun e!1104368 () Bool)

(assert (=> b!1726534 (= e!1104372 e!1104368)))

(declare-fun res!775028 () Bool)

(assert (=> b!1726534 (=> res!775028 e!1104368)))

(declare-fun call!109856 () Bool)

(assert (=> b!1726534 (= res!775028 call!109856)))

(declare-fun b!1726535 () Bool)

(assert (=> b!1726535 (= e!1104368 (not (= (head!3912 lt!660900) (c!282190 lt!660901))))))

(declare-fun b!1726536 () Bool)

(declare-fun lt!661221 () Bool)

(assert (=> b!1726536 (= e!1104370 (not lt!661221))))

(declare-fun d!528980 () Bool)

(assert (=> d!528980 e!1104367))

(declare-fun c!282322 () Bool)

(assert (=> d!528980 (= c!282322 ((_ is EmptyExpr!4679) lt!660901))))

(declare-fun e!1104369 () Bool)

(assert (=> d!528980 (= lt!661221 e!1104369)))

(declare-fun c!282320 () Bool)

(assert (=> d!528980 (= c!282320 (isEmpty!11889 lt!660900))))

(assert (=> d!528980 (validRegex!1888 lt!660901)))

(assert (=> d!528980 (= (matchR!2153 lt!660901 lt!660900) lt!661221)))

(declare-fun b!1726537 () Bool)

(assert (=> b!1726537 (= e!1104369 (matchR!2153 (derivativeStep!1182 lt!660901 (head!3912 lt!660900)) (tail!2579 lt!660900)))))

(declare-fun bm!109851 () Bool)

(assert (=> bm!109851 (= call!109856 (isEmpty!11889 lt!660900))))

(declare-fun b!1726538 () Bool)

(assert (=> b!1726538 (= e!1104367 (= lt!661221 call!109856))))

(declare-fun b!1726539 () Bool)

(declare-fun res!775030 () Bool)

(declare-fun e!1104371 () Bool)

(assert (=> b!1726539 (=> res!775030 e!1104371)))

(assert (=> b!1726539 (= res!775030 (not ((_ is ElementMatch!4679) lt!660901)))))

(assert (=> b!1726539 (= e!1104370 e!1104371)))

(declare-fun b!1726540 () Bool)

(declare-fun e!1104366 () Bool)

(assert (=> b!1726540 (= e!1104366 (= (head!3912 lt!660900) (c!282190 lt!660901)))))

(declare-fun b!1726541 () Bool)

(declare-fun res!775025 () Bool)

(assert (=> b!1726541 (=> (not res!775025) (not e!1104366))))

(assert (=> b!1726541 (= res!775025 (isEmpty!11889 (tail!2579 lt!660900)))))

(declare-fun b!1726542 () Bool)

(declare-fun res!775026 () Bool)

(assert (=> b!1726542 (=> res!775026 e!1104371)))

(assert (=> b!1726542 (= res!775026 e!1104366)))

(declare-fun res!775027 () Bool)

(assert (=> b!1726542 (=> (not res!775027) (not e!1104366))))

(assert (=> b!1726542 (= res!775027 lt!661221)))

(declare-fun b!1726543 () Bool)

(assert (=> b!1726543 (= e!1104371 e!1104372)))

(declare-fun res!775032 () Bool)

(assert (=> b!1726543 (=> (not res!775032) (not e!1104372))))

(assert (=> b!1726543 (= res!775032 (not lt!661221))))

(declare-fun b!1726544 () Bool)

(assert (=> b!1726544 (= e!1104369 (nullable!1414 lt!660901))))

(declare-fun b!1726545 () Bool)

(declare-fun res!775029 () Bool)

(assert (=> b!1726545 (=> res!775029 e!1104368)))

(assert (=> b!1726545 (= res!775029 (not (isEmpty!11889 (tail!2579 lt!660900))))))

(declare-fun b!1726546 () Bool)

(declare-fun res!775031 () Bool)

(assert (=> b!1726546 (=> (not res!775031) (not e!1104366))))

(assert (=> b!1726546 (= res!775031 (not call!109856))))

(assert (= (and d!528980 c!282320) b!1726544))

(assert (= (and d!528980 (not c!282320)) b!1726537))

(assert (= (and d!528980 c!282322) b!1726538))

(assert (= (and d!528980 (not c!282322)) b!1726533))

(assert (= (and b!1726533 c!282321) b!1726536))

(assert (= (and b!1726533 (not c!282321)) b!1726539))

(assert (= (and b!1726539 (not res!775030)) b!1726542))

(assert (= (and b!1726542 res!775027) b!1726546))

(assert (= (and b!1726546 res!775031) b!1726541))

(assert (= (and b!1726541 res!775025) b!1726540))

(assert (= (and b!1726542 (not res!775026)) b!1726543))

(assert (= (and b!1726543 res!775032) b!1726534))

(assert (= (and b!1726534 (not res!775028)) b!1726545))

(assert (= (and b!1726545 (not res!775029)) b!1726535))

(assert (= (or b!1726538 b!1726534 b!1726546) bm!109851))

(assert (=> b!1726537 m!2133087))

(assert (=> b!1726537 m!2133087))

(declare-fun m!2133497 () Bool)

(assert (=> b!1726537 m!2133497))

(assert (=> b!1726537 m!2133083))

(assert (=> b!1726537 m!2133497))

(assert (=> b!1726537 m!2133083))

(declare-fun m!2133499 () Bool)

(assert (=> b!1726537 m!2133499))

(assert (=> b!1726540 m!2133087))

(assert (=> b!1726535 m!2133087))

(assert (=> b!1726545 m!2133083))

(assert (=> b!1726545 m!2133083))

(assert (=> b!1726545 m!2133287))

(assert (=> bm!109851 m!2133289))

(assert (=> b!1726541 m!2133083))

(assert (=> b!1726541 m!2133083))

(assert (=> b!1726541 m!2133287))

(assert (=> d!528980 m!2133289))

(assert (=> d!528980 m!2133383))

(assert (=> b!1726544 m!2133385))

(assert (=> b!1725808 d!528980))

(declare-fun d!528982 () Bool)

(assert (=> d!528982 (matchR!2153 (rulesRegex!709 thiss!24550 rules!3447) (list!7640 (charsOf!2000 token!523)))))

(declare-fun lt!661222 () Unit!32751)

(assert (=> d!528982 (= lt!661222 (choose!10530 thiss!24550 rules!3447 lt!660900 token!523 rule!422 Nil!18903))))

(assert (=> d!528982 (not (isEmpty!11890 rules!3447))))

(assert (=> d!528982 (= (lemmaMaxPrefixThenMatchesRulesRegex!100 thiss!24550 rules!3447 lt!660900 token!523 rule!422 Nil!18903) lt!661222)))

(declare-fun bs!402447 () Bool)

(assert (= bs!402447 d!528982))

(declare-fun m!2133501 () Bool)

(assert (=> bs!402447 m!2133501))

(assert (=> bs!402447 m!2132525))

(assert (=> bs!402447 m!2132525))

(declare-fun m!2133503 () Bool)

(assert (=> bs!402447 m!2133503))

(assert (=> bs!402447 m!2132587))

(assert (=> bs!402447 m!2132479))

(assert (=> bs!402447 m!2133503))

(declare-fun m!2133505 () Bool)

(assert (=> bs!402447 m!2133505))

(assert (=> bs!402447 m!2132479))

(assert (=> b!1725808 d!528982))

(declare-fun d!528984 () Bool)

(assert (=> d!528984 (= (list!7640 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))) (list!7643 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))))))

(declare-fun bs!402448 () Bool)

(assert (= bs!402448 d!528984))

(declare-fun m!2133507 () Bool)

(assert (=> bs!402448 m!2133507))

(assert (=> b!1725807 d!528984))

(declare-fun bs!402449 () Bool)

(declare-fun d!528986 () Bool)

(assert (= bs!402449 (and d!528986 b!1725811)))

(declare-fun lambda!69260 () Int)

(assert (=> bs!402449 (= lambda!69260 lambda!69242)))

(declare-fun b!1726551 () Bool)

(declare-fun e!1104375 () Bool)

(assert (=> b!1726551 (= e!1104375 true)))

(assert (=> d!528986 e!1104375))

(assert (= d!528986 b!1726551))

(assert (=> b!1726551 (< (dynLambda!8750 order!11575 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8751 order!11577 lambda!69260))))

(assert (=> b!1726551 (< (dynLambda!8752 order!11579 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) (dynLambda!8751 order!11577 lambda!69260))))

(assert (=> d!528986 (= (list!7640 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))) (list!7640 lt!660902))))

(declare-fun lt!661225 () Unit!32751)

(declare-fun ForallOf!270 (Int BalanceConc!12518) Unit!32751)

(assert (=> d!528986 (= lt!661225 (ForallOf!270 lambda!69260 lt!660902))))

(assert (=> d!528986 (= (lemmaSemiInverse!497 (transformation!3351 (rule!5313 (_1!10697 lt!660897))) lt!660902) lt!661225)))

(declare-fun b_lambda!54935 () Bool)

(assert (=> (not b_lambda!54935) (not d!528986)))

(assert (=> d!528986 t!160056))

(declare-fun b_and!126713 () Bool)

(assert (= b_and!126707 (and (=> t!160056 result!123244) b_and!126713)))

(assert (=> d!528986 t!160058))

(declare-fun b_and!126715 () Bool)

(assert (= b_and!126709 (and (=> t!160058 result!123246) b_and!126715)))

(assert (=> d!528986 t!160060))

(declare-fun b_and!126717 () Bool)

(assert (= b_and!126711 (and (=> t!160060 result!123248) b_and!126717)))

(declare-fun b_lambda!54937 () Bool)

(assert (=> (not b_lambda!54937) (not d!528986)))

(assert (=> d!528986 t!160062))

(declare-fun b_and!126719 () Bool)

(assert (= b_and!126701 (and (=> t!160062 result!123250) b_and!126719)))

(assert (=> d!528986 t!160064))

(declare-fun b_and!126721 () Bool)

(assert (= b_and!126703 (and (=> t!160064 result!123254) b_and!126721)))

(assert (=> d!528986 t!160066))

(declare-fun b_and!126723 () Bool)

(assert (= b_and!126705 (and (=> t!160066 result!123256) b_and!126723)))

(assert (=> d!528986 m!2132501))

(assert (=> d!528986 m!2132547))

(assert (=> d!528986 m!2132549))

(assert (=> d!528986 m!2132547))

(assert (=> d!528986 m!2132549))

(assert (=> d!528986 m!2132551))

(declare-fun m!2133509 () Bool)

(assert (=> d!528986 m!2133509))

(assert (=> b!1725807 d!528986))

(declare-fun d!528988 () Bool)

(declare-fun lt!661228 () Bool)

(declare-fun content!2705 (List!18974) (InoxSet Rule!6502))

(assert (=> d!528988 (= lt!661228 (select (content!2705 rules!3447) rule!422))))

(declare-fun e!1104380 () Bool)

(assert (=> d!528988 (= lt!661228 e!1104380)))

(declare-fun res!775038 () Bool)

(assert (=> d!528988 (=> (not res!775038) (not e!1104380))))

(assert (=> d!528988 (= res!775038 ((_ is Cons!18904) rules!3447))))

(assert (=> d!528988 (= (contains!3373 rules!3447 rule!422) lt!661228)))

(declare-fun b!1726556 () Bool)

(declare-fun e!1104381 () Bool)

(assert (=> b!1726556 (= e!1104380 e!1104381)))

(declare-fun res!775037 () Bool)

(assert (=> b!1726556 (=> res!775037 e!1104381)))

(assert (=> b!1726556 (= res!775037 (= (h!24305 rules!3447) rule!422))))

(declare-fun b!1726557 () Bool)

(assert (=> b!1726557 (= e!1104381 (contains!3373 (t!160069 rules!3447) rule!422))))

(assert (= (and d!528988 res!775038) b!1726556))

(assert (= (and b!1726556 (not res!775037)) b!1726557))

(declare-fun m!2133511 () Bool)

(assert (=> d!528988 m!2133511))

(declare-fun m!2133513 () Bool)

(assert (=> d!528988 m!2133513))

(declare-fun m!2133515 () Bool)

(assert (=> b!1726557 m!2133515))

(assert (=> b!1725806 d!528988))

(declare-fun b!1726562 () Bool)

(declare-fun e!1104384 () Bool)

(declare-fun tp!492510 () Bool)

(assert (=> b!1726562 (= e!1104384 (and tp_is_empty!7601 tp!492510))))

(assert (=> b!1725816 (= tp!492438 e!1104384)))

(assert (= (and b!1725816 ((_ is Cons!18903) (t!160068 suffix!1421))) b!1726562))

(declare-fun e!1104387 () Bool)

(assert (=> b!1725794 (= tp!492440 e!1104387)))

(declare-fun b!1726573 () Bool)

(assert (=> b!1726573 (= e!1104387 tp_is_empty!7601)))

(declare-fun b!1726576 () Bool)

(declare-fun tp!492521 () Bool)

(declare-fun tp!492523 () Bool)

(assert (=> b!1726576 (= e!1104387 (and tp!492521 tp!492523))))

(declare-fun b!1726574 () Bool)

(declare-fun tp!492522 () Bool)

(declare-fun tp!492525 () Bool)

(assert (=> b!1726574 (= e!1104387 (and tp!492522 tp!492525))))

(declare-fun b!1726575 () Bool)

(declare-fun tp!492524 () Bool)

(assert (=> b!1726575 (= e!1104387 tp!492524)))

(assert (= (and b!1725794 ((_ is ElementMatch!4679) (regex!3351 (h!24305 rules!3447)))) b!1726573))

(assert (= (and b!1725794 ((_ is Concat!8121) (regex!3351 (h!24305 rules!3447)))) b!1726574))

(assert (= (and b!1725794 ((_ is Star!4679) (regex!3351 (h!24305 rules!3447)))) b!1726575))

(assert (= (and b!1725794 ((_ is Union!4679) (regex!3351 (h!24305 rules!3447)))) b!1726576))

(declare-fun b!1726587 () Bool)

(declare-fun b_free!47123 () Bool)

(declare-fun b_next!47827 () Bool)

(assert (=> b!1726587 (= b_free!47123 (not b_next!47827))))

(declare-fun t!160119 () Bool)

(declare-fun tb!102579 () Bool)

(assert (=> (and b!1726587 (= (toValue!4858 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160119) tb!102579))

(declare-fun result!123320 () Bool)

(assert (= result!123320 result!123308))

(assert (=> d!528958 t!160119))

(declare-fun t!160121 () Bool)

(declare-fun tb!102581 () Bool)

(assert (=> (and b!1726587 (= (toValue!4858 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160121) tb!102581))

(declare-fun result!123322 () Bool)

(assert (= result!123322 result!123258))

(assert (=> d!528714 t!160121))

(declare-fun tb!102583 () Bool)

(declare-fun t!160123 () Bool)

(assert (=> (and b!1726587 (= (toValue!4858 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160123) tb!102583))

(declare-fun result!123324 () Bool)

(assert (= result!123324 result!123250))

(assert (=> d!528956 t!160123))

(assert (=> d!528958 t!160123))

(assert (=> b!1725807 t!160123))

(assert (=> d!528986 t!160123))

(declare-fun tp!492536 () Bool)

(declare-fun b_and!126725 () Bool)

(assert (=> b!1726587 (= tp!492536 (and (=> t!160119 result!123320) (=> t!160123 result!123324) (=> t!160121 result!123322) b_and!126725))))

(declare-fun b_free!47125 () Bool)

(declare-fun b_next!47829 () Bool)

(assert (=> b!1726587 (= b_free!47125 (not b_next!47829))))

(declare-fun t!160125 () Bool)

(declare-fun tb!102585 () Bool)

(assert (=> (and b!1726587 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160125) tb!102585))

(declare-fun result!123326 () Bool)

(assert (= result!123326 result!123236))

(assert (=> d!528856 t!160125))

(declare-fun t!160127 () Bool)

(declare-fun tb!102587 () Bool)

(assert (=> (and b!1726587 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897))))) t!160127) tb!102587))

(declare-fun result!123328 () Bool)

(assert (= result!123328 result!123244))

(assert (=> b!1725807 t!160127))

(assert (=> b!1725797 t!160125))

(assert (=> d!528986 t!160127))

(declare-fun tb!102589 () Bool)

(declare-fun t!160129 () Bool)

(assert (=> (and b!1726587 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 token!523)))) t!160129) tb!102589))

(declare-fun result!123330 () Bool)

(assert (= result!123330 result!123302))

(assert (=> b!1726528 t!160129))

(assert (=> d!528948 t!160129))

(declare-fun tp!492534 () Bool)

(declare-fun b_and!126727 () Bool)

(assert (=> b!1726587 (= tp!492534 (and (=> t!160129 result!123330) (=> t!160127 result!123328) (=> t!160125 result!123326) b_and!126727))))

(declare-fun e!1104397 () Bool)

(assert (=> b!1726587 (= e!1104397 (and tp!492536 tp!492534))))

(declare-fun b!1726586 () Bool)

(declare-fun e!1104399 () Bool)

(declare-fun tp!492535 () Bool)

(assert (=> b!1726586 (= e!1104399 (and tp!492535 (inv!24424 (tag!3669 (h!24305 (t!160069 rules!3447)))) (inv!24429 (transformation!3351 (h!24305 (t!160069 rules!3447)))) e!1104397))))

(declare-fun b!1726585 () Bool)

(declare-fun e!1104398 () Bool)

(declare-fun tp!492537 () Bool)

(assert (=> b!1726585 (= e!1104398 (and e!1104399 tp!492537))))

(assert (=> b!1725814 (= tp!492446 e!1104398)))

(assert (= b!1726586 b!1726587))

(assert (= b!1726585 b!1726586))

(assert (= (and b!1725814 ((_ is Cons!18904) (t!160069 rules!3447))) b!1726585))

(declare-fun m!2133517 () Bool)

(assert (=> b!1726586 m!2133517))

(declare-fun m!2133519 () Bool)

(assert (=> b!1726586 m!2133519))

(declare-fun b!1726588 () Bool)

(declare-fun e!1104400 () Bool)

(declare-fun tp!492538 () Bool)

(assert (=> b!1726588 (= e!1104400 (and tp_is_empty!7601 tp!492538))))

(assert (=> b!1725798 (= tp!492439 e!1104400)))

(assert (= (and b!1725798 ((_ is Cons!18903) (originalCharacters!4165 token!523))) b!1726588))

(declare-fun b!1726597 () Bool)

(declare-fun e!1104405 () Bool)

(declare-fun tp!492546 () Bool)

(declare-fun tp!492547 () Bool)

(assert (=> b!1726597 (= e!1104405 (and (inv!24431 (left!15088 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))) tp!492546 (inv!24431 (right!15418 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))) tp!492547))))

(declare-fun b!1726599 () Bool)

(declare-fun e!1104406 () Bool)

(declare-fun tp!492545 () Bool)

(assert (=> b!1726599 (= e!1104406 tp!492545)))

(declare-fun b!1726598 () Bool)

(declare-fun inv!24438 (IArray!12579) Bool)

(assert (=> b!1726598 (= e!1104405 (and (inv!24438 (xs!9163 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))) e!1104406))))

(assert (=> b!1725836 (= tp!492452 (and (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902)))) e!1104405))))

(assert (= (and b!1725836 ((_ is Node!6287) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))) b!1726597))

(assert (= b!1726598 b!1726599))

(assert (= (and b!1725836 ((_ is Leaf!9183) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (dynLambda!8754 (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) lt!660902))))) b!1726598))

(declare-fun m!2133521 () Bool)

(assert (=> b!1726597 m!2133521))

(declare-fun m!2133523 () Bool)

(assert (=> b!1726597 m!2133523))

(declare-fun m!2133525 () Bool)

(assert (=> b!1726598 m!2133525))

(assert (=> b!1725836 m!2132467))

(declare-fun e!1104407 () Bool)

(assert (=> b!1725819 (= tp!492442 e!1104407)))

(declare-fun b!1726600 () Bool)

(assert (=> b!1726600 (= e!1104407 tp_is_empty!7601)))

(declare-fun b!1726603 () Bool)

(declare-fun tp!492548 () Bool)

(declare-fun tp!492550 () Bool)

(assert (=> b!1726603 (= e!1104407 (and tp!492548 tp!492550))))

(declare-fun b!1726601 () Bool)

(declare-fun tp!492549 () Bool)

(declare-fun tp!492552 () Bool)

(assert (=> b!1726601 (= e!1104407 (and tp!492549 tp!492552))))

(declare-fun b!1726602 () Bool)

(declare-fun tp!492551 () Bool)

(assert (=> b!1726602 (= e!1104407 tp!492551)))

(assert (= (and b!1725819 ((_ is ElementMatch!4679) (regex!3351 (rule!5313 token!523)))) b!1726600))

(assert (= (and b!1725819 ((_ is Concat!8121) (regex!3351 (rule!5313 token!523)))) b!1726601))

(assert (= (and b!1725819 ((_ is Star!4679) (regex!3351 (rule!5313 token!523)))) b!1726602))

(assert (= (and b!1725819 ((_ is Union!4679) (regex!3351 (rule!5313 token!523)))) b!1726603))

(declare-fun e!1104408 () Bool)

(assert (=> b!1725796 (= tp!492447 e!1104408)))

(declare-fun b!1726604 () Bool)

(assert (=> b!1726604 (= e!1104408 tp_is_empty!7601)))

(declare-fun b!1726607 () Bool)

(declare-fun tp!492553 () Bool)

(declare-fun tp!492555 () Bool)

(assert (=> b!1726607 (= e!1104408 (and tp!492553 tp!492555))))

(declare-fun b!1726605 () Bool)

(declare-fun tp!492554 () Bool)

(declare-fun tp!492557 () Bool)

(assert (=> b!1726605 (= e!1104408 (and tp!492554 tp!492557))))

(declare-fun b!1726606 () Bool)

(declare-fun tp!492556 () Bool)

(assert (=> b!1726606 (= e!1104408 tp!492556)))

(assert (= (and b!1725796 ((_ is ElementMatch!4679) (regex!3351 rule!422))) b!1726604))

(assert (= (and b!1725796 ((_ is Concat!8121) (regex!3351 rule!422))) b!1726605))

(assert (= (and b!1725796 ((_ is Star!4679) (regex!3351 rule!422))) b!1726606))

(assert (= (and b!1725796 ((_ is Union!4679) (regex!3351 rule!422))) b!1726607))

(declare-fun b!1726608 () Bool)

(declare-fun e!1104409 () Bool)

(declare-fun tp!492560 () Bool)

(declare-fun tp!492559 () Bool)

(assert (=> b!1726608 (= e!1104409 (and (inv!24431 (left!15088 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))) tp!492559 (inv!24431 (right!15418 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))) tp!492560))))

(declare-fun b!1726610 () Bool)

(declare-fun e!1104410 () Bool)

(declare-fun tp!492558 () Bool)

(assert (=> b!1726610 (= e!1104410 tp!492558)))

(declare-fun b!1726609 () Bool)

(assert (=> b!1726609 (= e!1104409 (and (inv!24438 (xs!9163 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))) e!1104410))))

(assert (=> b!1725835 (= tp!492451 (and (inv!24431 (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897))))) e!1104409))))

(assert (= (and b!1725835 ((_ is Node!6287) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))) b!1726608))

(assert (= b!1726609 b!1726610))

(assert (= (and b!1725835 ((_ is Leaf!9183) (c!282191 (dynLambda!8753 (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))) (value!105176 (_1!10697 lt!660897)))))) b!1726609))

(declare-fun m!2133527 () Bool)

(assert (=> b!1726608 m!2133527))

(declare-fun m!2133529 () Bool)

(assert (=> b!1726608 m!2133529))

(declare-fun m!2133531 () Bool)

(assert (=> b!1726609 m!2133531))

(assert (=> b!1725835 m!2132463))

(declare-fun b_lambda!54939 () Bool)

(assert (= b_lambda!54925 (or (and b!1725801 b_free!47109 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) (and b!1725802 b_free!47113) (and b!1725812 b_free!47117 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) (and b!1726587 b_free!47125 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) b_lambda!54939)))

(declare-fun b_lambda!54941 () Bool)

(assert (= b_lambda!54891 (or (and b!1725801 b_free!47107 (= (toValue!4858 (transformation!3351 rule!422)) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725802 b_free!47111 (= (toValue!4858 (transformation!3351 (rule!5313 token!523))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725812 b_free!47115 (= (toValue!4858 (transformation!3351 (h!24305 rules!3447))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1726587 b_free!47123 (= (toValue!4858 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toValue!4858 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) b_lambda!54941)))

(declare-fun b_lambda!54943 () Bool)

(assert (= b_lambda!54933 (or (and b!1725801 b_free!47109 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) (and b!1725802 b_free!47113) (and b!1725812 b_free!47117 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) (and b!1726587 b_free!47125 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 token!523))))) b_lambda!54943)))

(declare-fun b_lambda!54945 () Bool)

(assert (= b_lambda!54889 (or (and b!1725801 b_free!47109 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725802 b_free!47113 (= (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725812 b_free!47117 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1726587 b_free!47125 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) b_lambda!54945)))

(declare-fun b_lambda!54947 () Bool)

(assert (= b_lambda!54887 (or (and b!1725801 b_free!47109 (= (toChars!4717 (transformation!3351 rule!422)) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725802 b_free!47113 (= (toChars!4717 (transformation!3351 (rule!5313 token!523))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1725812 b_free!47117 (= (toChars!4717 (transformation!3351 (h!24305 rules!3447))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) (and b!1726587 b_free!47125 (= (toChars!4717 (transformation!3351 (h!24305 (t!160069 rules!3447)))) (toChars!4717 (transformation!3351 (rule!5313 (_1!10697 lt!660897)))))) b_lambda!54947)))

(check-sat (not b!1726459) (not b!1726480) (not d!528944) (not b!1726476) (not d!528822) (not b!1726475) (not b!1726575) b_and!126721 (not d!528962) (not b_next!47821) (not b!1726522) (not b!1726229) (not b!1726602) (not tb!102531) (not d!528920) (not d!528964) (not d!528966) (not b!1726608) (not b!1726092) (not d!528914) (not b!1726540) (not bm!109851) (not b!1726529) (not tb!102567) (not b!1726197) (not b!1726489) (not b_next!47811) (not d!528718) (not b!1726535) (not b!1726609) (not bm!109846) (not b!1726528) (not b!1726220) (not b!1726597) (not b!1726545) (not d!528934) (not b!1726537) (not d!528946) (not d!528758) (not b!1726598) (not b!1726492) (not b!1726483) (not b!1726269) (not b!1726268) (not b!1726126) (not d!528980) (not b_lambda!54929) (not b_lambda!54927) (not b!1726359) (not b_next!47815) (not b!1726521) (not b!1726504) (not b!1726605) (not b!1726479) (not tb!102573) (not bm!109848) (not b!1726494) (not b!1726445) (not b!1726520) (not d!528942) (not b!1726465) (not b!1726272) (not d!528954) (not d!528976) (not b!1726453) b_and!126723 (not b!1726470) (not b_lambda!54947) (not b!1726274) (not bm!109850) (not b!1726353) (not b_next!47813) (not b!1726097) (not d!528746) (not d!528952) (not d!528898) (not b!1726532) (not b!1726219) (not b!1726394) (not b!1725835) (not d!528842) (not d!528864) (not b!1726601) b_and!126713 (not b!1726270) (not d!528960) (not b!1726512) (not d!528948) (not d!528958) (not d!528814) (not b!1726450) (not d!528856) (not b!1726437) (not b!1726607) (not b!1726472) (not b!1726093) (not b!1726606) (not b!1726442) (not d!528858) (not d!528840) (not b!1726486) (not b!1726127) (not d!528916) (not b!1726562) (not b!1726431) (not b!1726227) (not b!1726115) (not b!1726574) (not b!1726488) (not b!1726461) b_and!126717 (not b!1726585) (not b_lambda!54943) (not b!1726603) (not b!1726433) (not b_lambda!54941) (not b!1725836) (not d!528908) (not d!528982) (not b!1726125) (not b_lambda!54895) (not b!1726541) (not b!1726509) (not b_next!47829) (not b_next!47819) (not b!1726091) (not b!1726113) (not b!1726610) (not b!1726517) (not b!1726181) (not d!528924) (not d!528922) (not b!1726194) (not b!1726446) (not d!528988) (not b!1726096) (not b!1726351) (not b!1726098) (not b!1726275) (not b!1726462) (not b!1726516) (not d!528854) (not b!1726440) (not d!528936) (not b_next!47827) (not b!1726221) b_and!126727 (not b!1726599) (not b!1726485) (not d!528968) (not b!1726215) (not b!1726213) (not b!1726180) (not d!528910) (not d!528984) (not b!1726216) (not d!528846) (not b!1726193) (not d!528750) (not b!1726490) (not d!528874) (not b!1726432) (not bm!109847) (not d!528848) (not d!528986) (not b!1726557) (not b_lambda!54937) (not d!528974) (not b!1726513) (not b!1726482) (not b!1726507) (not d!528896) tp_is_empty!7601 (not b!1726588) (not b!1726363) (not b_lambda!54935) (not b!1726358) (not b!1726544) b_and!126725 (not b!1726230) (not b_lambda!54945) b_and!126715 (not b!1725892) (not b!1726199) (not d!528862) (not b!1726276) (not b!1726198) (not b!1726271) (not b!1726458) (not b!1726576) (not b_lambda!54931) (not b!1726226) (not b!1726095) (not d!528860) (not b_lambda!54939) (not b!1726586) (not b!1726449) b_and!126719 (not b!1726484) (not d!528928) (not d!528906) (not bm!109849) (not b!1726105) (not b_next!47817) (not bm!109842) (not b!1726090) (not b!1726491) (not b!1726182) (not b_lambda!54913) (not b!1726362) (not b!1726467) (not d!528978) (not b!1726452))
(check-sat (not b_next!47811) (not b_next!47815) b_and!126723 (not b_next!47813) b_and!126713 b_and!126717 b_and!126725 b_and!126715 b_and!126719 (not b_next!47817) b_and!126721 (not b_next!47821) (not b_next!47829) (not b_next!47819) (not b_next!47827) b_and!126727)
