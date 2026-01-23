; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!373986 () Bool)

(assert start!373986)

(declare-fun b!3973828 () Bool)

(declare-fun b_free!110161 () Bool)

(declare-fun b_next!110865 () Bool)

(assert (=> b!3973828 (= b_free!110161 (not b_next!110865))))

(declare-fun tp!1211649 () Bool)

(declare-fun b_and!305479 () Bool)

(assert (=> b!3973828 (= tp!1211649 b_and!305479)))

(declare-fun b_free!110163 () Bool)

(declare-fun b_next!110867 () Bool)

(assert (=> b!3973828 (= b_free!110163 (not b_next!110867))))

(declare-fun tp!1211657 () Bool)

(declare-fun b_and!305481 () Bool)

(assert (=> b!3973828 (= tp!1211657 b_and!305481)))

(declare-fun b!3973817 () Bool)

(declare-fun b_free!110165 () Bool)

(declare-fun b_next!110869 () Bool)

(assert (=> b!3973817 (= b_free!110165 (not b_next!110869))))

(declare-fun tp!1211656 () Bool)

(declare-fun b_and!305483 () Bool)

(assert (=> b!3973817 (= tp!1211656 b_and!305483)))

(declare-fun b_free!110167 () Bool)

(declare-fun b_next!110871 () Bool)

(assert (=> b!3973817 (= b_free!110167 (not b_next!110871))))

(declare-fun tp!1211658 () Bool)

(declare-fun b_and!305485 () Bool)

(assert (=> b!3973817 (= tp!1211658 b_and!305485)))

(declare-fun e!2461892 () Bool)

(assert (=> b!3973817 (= e!2461892 (and tp!1211656 tp!1211658))))

(declare-fun b!3973818 () Bool)

(declare-fun e!2461887 () Bool)

(declare-fun e!2461895 () Bool)

(assert (=> b!3973818 (= e!2461887 e!2461895)))

(declare-fun res!1609024 () Bool)

(assert (=> b!3973818 (=> res!1609024 e!2461895)))

(declare-datatypes ((C!23362 0))(
  ( (C!23363 (val!13775 Int)) )
))
(declare-datatypes ((List!42563 0))(
  ( (Nil!42439) (Cons!42439 (h!47859 C!23362) (t!331002 List!42563)) )
))
(declare-fun lt!1392587 () List!42563)

(declare-fun lt!1392595 () List!42563)

(assert (=> b!3973818 (= res!1609024 (not (= lt!1392587 lt!1392595)))))

(declare-fun lt!1392588 () List!42563)

(declare-fun lt!1392591 () List!42563)

(declare-fun ++!11085 (List!42563 List!42563) List!42563)

(assert (=> b!3973818 (= lt!1392587 (++!11085 lt!1392588 lt!1392591))))

(declare-fun getSuffix!2201 (List!42563 List!42563) List!42563)

(assert (=> b!3973818 (= lt!1392591 (getSuffix!2201 lt!1392595 lt!1392588))))

(declare-fun e!2461897 () Bool)

(assert (=> b!3973818 e!2461897))

(declare-fun res!1609020 () Bool)

(assert (=> b!3973818 (=> (not res!1609020) (not e!2461897))))

(declare-fun isPrefix!3770 (List!42563 List!42563) Bool)

(assert (=> b!3973818 (= res!1609020 (isPrefix!3770 lt!1392595 lt!1392595))))

(declare-datatypes ((Unit!61089 0))(
  ( (Unit!61090) )
))
(declare-fun lt!1392599 () Unit!61089)

(declare-fun lemmaIsPrefixRefl!2362 (List!42563 List!42563) Unit!61089)

(assert (=> b!3973818 (= lt!1392599 (lemmaIsPrefixRefl!2362 lt!1392595 lt!1392595))))

(declare-fun b!3973819 () Bool)

(declare-fun e!2461885 () Bool)

(assert (=> b!3973819 (= e!2461885 e!2461887)))

(declare-fun res!1609031 () Bool)

(assert (=> b!3973819 (=> res!1609031 e!2461887)))

(declare-datatypes ((IArray!25793 0))(
  ( (IArray!25794 (innerList!12954 List!42563)) )
))
(declare-datatypes ((Conc!12894 0))(
  ( (Node!12894 (left!32130 Conc!12894) (right!32460 Conc!12894) (csize!26018 Int) (cheight!13105 Int)) (Leaf!19943 (xs!16200 IArray!25793) (csize!26019 Int)) (Empty!12894) )
))
(declare-datatypes ((BalanceConc!25382 0))(
  ( (BalanceConc!25383 (c!689029 Conc!12894)) )
))
(declare-datatypes ((List!42564 0))(
  ( (Nil!42440) (Cons!42440 (h!47860 (_ BitVec 16)) (t!331003 List!42564)) )
))
(declare-datatypes ((TokenValue!6913 0))(
  ( (FloatLiteralValue!13826 (text!48836 List!42564)) (TokenValueExt!6912 (__x!26043 Int)) (Broken!34565 (value!211075 List!42564)) (Object!7036) (End!6913) (Def!6913) (Underscore!6913) (Match!6913) (Else!6913) (Error!6913) (Case!6913) (If!6913) (Extends!6913) (Abstract!6913) (Class!6913) (Val!6913) (DelimiterValue!13826 (del!6973 List!42564)) (KeywordValue!6919 (value!211076 List!42564)) (CommentValue!13826 (value!211077 List!42564)) (WhitespaceValue!13826 (value!211078 List!42564)) (IndentationValue!6913 (value!211079 List!42564)) (String!48284) (Int32!6913) (Broken!34566 (value!211080 List!42564)) (Boolean!6914) (Unit!61091) (OperatorValue!6916 (op!6973 List!42564)) (IdentifierValue!13826 (value!211081 List!42564)) (IdentifierValue!13827 (value!211082 List!42564)) (WhitespaceValue!13827 (value!211083 List!42564)) (True!13826) (False!13826) (Broken!34567 (value!211084 List!42564)) (Broken!34568 (value!211085 List!42564)) (True!13827) (RightBrace!6913) (RightBracket!6913) (Colon!6913) (Null!6913) (Comma!6913) (LeftBracket!6913) (False!13827) (LeftBrace!6913) (ImaginaryLiteralValue!6913 (text!48837 List!42564)) (StringLiteralValue!20739 (value!211086 List!42564)) (EOFValue!6913 (value!211087 List!42564)) (IdentValue!6913 (value!211088 List!42564)) (DelimiterValue!13827 (value!211089 List!42564)) (DedentValue!6913 (value!211090 List!42564)) (NewLineValue!6913 (value!211091 List!42564)) (IntegerValue!20739 (value!211092 (_ BitVec 32)) (text!48838 List!42564)) (IntegerValue!20740 (value!211093 Int) (text!48839 List!42564)) (Times!6913) (Or!6913) (Equal!6913) (Minus!6913) (Broken!34569 (value!211094 List!42564)) (And!6913) (Div!6913) (LessEqual!6913) (Mod!6913) (Concat!18501) (Not!6913) (Plus!6913) (SpaceValue!6913 (value!211095 List!42564)) (IntegerValue!20741 (value!211096 Int) (text!48840 List!42564)) (StringLiteralValue!20740 (text!48841 List!42564)) (FloatLiteralValue!13827 (text!48842 List!42564)) (BytesLiteralValue!6913 (value!211097 List!42564)) (CommentValue!13827 (value!211098 List!42564)) (StringLiteralValue!20741 (value!211099 List!42564)) (ErrorTokenValue!6913 (msg!6974 List!42564)) )
))
(declare-datatypes ((Regex!11588 0))(
  ( (ElementMatch!11588 (c!689030 C!23362)) (Concat!18502 (regOne!23688 Regex!11588) (regTwo!23688 Regex!11588)) (EmptyExpr!11588) (Star!11588 (reg!11917 Regex!11588)) (EmptyLang!11588) (Union!11588 (regOne!23689 Regex!11588) (regTwo!23689 Regex!11588)) )
))
(declare-datatypes ((String!48285 0))(
  ( (String!48286 (value!211100 String)) )
))
(declare-datatypes ((TokenValueInjection!13254 0))(
  ( (TokenValueInjection!13255 (toValue!9171 Int) (toChars!9030 Int)) )
))
(declare-datatypes ((Rule!13166 0))(
  ( (Rule!13167 (regex!6683 Regex!11588) (tag!7543 String!48285) (isSeparator!6683 Bool) (transformation!6683 TokenValueInjection!13254)) )
))
(declare-datatypes ((Token!12504 0))(
  ( (Token!12505 (value!211101 TokenValue!6913) (rule!9677 Rule!13166) (size!31752 Int) (originalCharacters!7283 List!42563)) )
))
(declare-fun token!484 () Token!12504)

(declare-fun matchR!5565 (Regex!11588 List!42563) Bool)

(assert (=> b!3973819 (= res!1609031 (not (matchR!5565 (regex!6683 (rule!9677 token!484)) lt!1392588)))))

(declare-fun lt!1392593 () List!42563)

(assert (=> b!3973819 (isPrefix!3770 lt!1392588 lt!1392593)))

(declare-fun newSuffix!27 () List!42563)

(declare-fun lt!1392601 () Unit!61089)

(declare-fun prefix!494 () List!42563)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!603 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> b!3973819 (= lt!1392601 (lemmaPrefixStaysPrefixWhenAddingToSuffix!603 lt!1392588 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42563)

(declare-fun lt!1392594 () Unit!61089)

(assert (=> b!3973819 (= lt!1392594 (lemmaPrefixStaysPrefixWhenAddingToSuffix!603 lt!1392588 prefix!494 suffix!1299))))

(declare-fun b!3973820 () Bool)

(declare-fun e!2461889 () Bool)

(declare-fun tp_is_empty!20147 () Bool)

(declare-fun tp!1211655 () Bool)

(assert (=> b!3973820 (= e!2461889 (and tp_is_empty!20147 tp!1211655))))

(declare-fun e!2461903 () Bool)

(declare-fun e!2461893 () Bool)

(declare-fun tp!1211652 () Bool)

(declare-fun b!3973821 () Bool)

(declare-fun inv!21 (TokenValue!6913) Bool)

(assert (=> b!3973821 (= e!2461893 (and (inv!21 (value!211101 token!484)) e!2461903 tp!1211652))))

(declare-fun b!3973822 () Bool)

(declare-fun e!2461909 () Bool)

(declare-fun e!2461902 () Bool)

(assert (=> b!3973822 (= e!2461909 (not e!2461902))))

(declare-fun res!1609028 () Bool)

(assert (=> b!3973822 (=> res!1609028 e!2461902)))

(declare-fun lt!1392589 () List!42563)

(assert (=> b!3973822 (= res!1609028 (not (= lt!1392589 lt!1392595)))))

(declare-fun suffixResult!105 () List!42563)

(assert (=> b!3973822 (= lt!1392589 (++!11085 lt!1392588 suffixResult!105))))

(declare-fun lt!1392609 () Unit!61089)

(declare-fun lemmaInv!898 (TokenValueInjection!13254) Unit!61089)

(assert (=> b!3973822 (= lt!1392609 (lemmaInv!898 (transformation!6683 (rule!9677 token!484))))))

(declare-datatypes ((LexerInterface!6272 0))(
  ( (LexerInterfaceExt!6269 (__x!26044 Int)) (Lexer!6270) )
))
(declare-fun thiss!21717 () LexerInterface!6272)

(declare-fun ruleValid!2615 (LexerInterface!6272 Rule!13166) Bool)

(assert (=> b!3973822 (ruleValid!2615 thiss!21717 (rule!9677 token!484))))

(declare-datatypes ((List!42565 0))(
  ( (Nil!42441) (Cons!42441 (h!47861 Rule!13166) (t!331004 List!42565)) )
))
(declare-fun rules!2999 () List!42565)

(declare-fun lt!1392602 () Unit!61089)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1689 (LexerInterface!6272 Rule!13166 List!42565) Unit!61089)

(assert (=> b!3973822 (= lt!1392602 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1689 thiss!21717 (rule!9677 token!484) rules!2999))))

(declare-fun b!3973823 () Bool)

(declare-fun res!1609018 () Bool)

(assert (=> b!3973823 (=> (not res!1609018) (not e!2461897))))

(declare-fun size!31753 (List!42563) Int)

(assert (=> b!3973823 (= res!1609018 (= (size!31752 token!484) (size!31753 (originalCharacters!7283 token!484))))))

(declare-fun b!3973824 () Bool)

(declare-fun e!2461908 () Bool)

(declare-fun e!2461899 () Bool)

(assert (=> b!3973824 (= e!2461908 e!2461899)))

(declare-fun res!1609017 () Bool)

(assert (=> b!3973824 (=> (not res!1609017) (not e!2461899))))

(declare-fun lt!1392604 () Int)

(declare-fun lt!1392592 () Int)

(assert (=> b!3973824 (= res!1609017 (>= lt!1392604 lt!1392592))))

(assert (=> b!3973824 (= lt!1392592 (size!31753 lt!1392588))))

(assert (=> b!3973824 (= lt!1392604 (size!31753 prefix!494))))

(declare-fun list!15749 (BalanceConc!25382) List!42563)

(declare-fun charsOf!4499 (Token!12504) BalanceConc!25382)

(assert (=> b!3973824 (= lt!1392588 (list!15749 (charsOf!4499 token!484)))))

(declare-fun b!3973825 () Bool)

(declare-fun e!2461898 () Bool)

(assert (=> b!3973825 (= e!2461898 e!2461885)))

(declare-fun res!1609019 () Bool)

(assert (=> b!3973825 (=> res!1609019 e!2461885)))

(declare-datatypes ((tuple2!41690 0))(
  ( (tuple2!41691 (_1!23979 Token!12504) (_2!23979 List!42563)) )
))
(declare-datatypes ((Option!9097 0))(
  ( (None!9096) (Some!9096 (v!39444 tuple2!41690)) )
))
(declare-fun lt!1392584 () Option!9097)

(declare-fun lt!1392610 () Option!9097)

(assert (=> b!3973825 (= res!1609019 (not (= lt!1392584 lt!1392610)))))

(declare-fun lt!1392585 () TokenValue!6913)

(assert (=> b!3973825 (= lt!1392584 (Some!9096 (tuple2!41691 (Token!12505 lt!1392585 (rule!9677 token!484) lt!1392592 lt!1392588) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2604 (LexerInterface!6272 Rule!13166 List!42563) Option!9097)

(assert (=> b!3973825 (= lt!1392584 (maxPrefixOneRule!2604 thiss!21717 (rule!9677 token!484) lt!1392595))))

(declare-fun apply!9894 (TokenValueInjection!13254 BalanceConc!25382) TokenValue!6913)

(declare-fun seqFromList!4922 (List!42563) BalanceConc!25382)

(assert (=> b!3973825 (= lt!1392585 (apply!9894 (transformation!6683 (rule!9677 token!484)) (seqFromList!4922 lt!1392588)))))

(declare-fun lt!1392598 () Unit!61089)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1426 (LexerInterface!6272 List!42565 List!42563 List!42563 List!42563 Rule!13166) Unit!61089)

(assert (=> b!3973825 (= lt!1392598 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1426 thiss!21717 rules!2999 lt!1392588 lt!1392595 suffixResult!105 (rule!9677 token!484)))))

(declare-fun lt!1392611 () List!42563)

(assert (=> b!3973825 (= lt!1392611 suffixResult!105)))

(declare-fun lt!1392612 () Unit!61089)

(declare-fun lemmaSamePrefixThenSameSuffix!1957 (List!42563 List!42563 List!42563 List!42563 List!42563) Unit!61089)

(assert (=> b!3973825 (= lt!1392612 (lemmaSamePrefixThenSameSuffix!1957 lt!1392588 lt!1392611 lt!1392588 suffixResult!105 lt!1392595))))

(declare-fun lt!1392613 () List!42563)

(assert (=> b!3973825 (isPrefix!3770 lt!1392588 lt!1392613)))

(declare-fun lt!1392606 () Unit!61089)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2613 (List!42563 List!42563) Unit!61089)

(assert (=> b!3973825 (= lt!1392606 (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 lt!1392611))))

(declare-fun tp!1211654 () Bool)

(declare-fun e!2461910 () Bool)

(declare-fun b!3973826 () Bool)

(declare-fun inv!56704 (String!48285) Bool)

(declare-fun inv!56707 (TokenValueInjection!13254) Bool)

(assert (=> b!3973826 (= e!2461910 (and tp!1211654 (inv!56704 (tag!7543 (h!47861 rules!2999))) (inv!56707 (transformation!6683 (h!47861 rules!2999))) e!2461892))))

(declare-fun b!3973827 () Bool)

(assert (=> b!3973827 (= e!2461897 (and (= (size!31752 token!484) lt!1392592) (= (originalCharacters!7283 token!484) lt!1392588)))))

(declare-fun e!2461905 () Bool)

(assert (=> b!3973828 (= e!2461905 (and tp!1211649 tp!1211657))))

(declare-fun b!3973829 () Bool)

(declare-fun res!1609033 () Bool)

(assert (=> b!3973829 (=> (not res!1609033) (not e!2461908))))

(assert (=> b!3973829 (= res!1609033 (isPrefix!3770 newSuffix!27 suffix!1299))))

(declare-fun b!3973830 () Bool)

(declare-fun e!2461891 () Bool)

(declare-fun tp!1211653 () Bool)

(assert (=> b!3973830 (= e!2461891 (and tp_is_empty!20147 tp!1211653))))

(declare-fun b!3973831 () Bool)

(declare-fun res!1609027 () Bool)

(assert (=> b!3973831 (=> (not res!1609027) (not e!2461897))))

(assert (=> b!3973831 (= res!1609027 (= (value!211101 token!484) lt!1392585))))

(declare-fun b!3973832 () Bool)

(declare-fun e!2461904 () Bool)

(assert (=> b!3973832 (= e!2461904 e!2461898)))

(declare-fun res!1609032 () Bool)

(assert (=> b!3973832 (=> res!1609032 e!2461898)))

(declare-fun lt!1392605 () List!42563)

(assert (=> b!3973832 (= res!1609032 (or (not (= lt!1392595 lt!1392605)) (not (= lt!1392595 lt!1392613))))))

(assert (=> b!3973832 (= lt!1392605 lt!1392613)))

(assert (=> b!3973832 (= lt!1392613 (++!11085 lt!1392588 lt!1392611))))

(declare-fun lt!1392600 () List!42563)

(assert (=> b!3973832 (= lt!1392605 (++!11085 lt!1392600 suffix!1299))))

(declare-fun lt!1392590 () List!42563)

(assert (=> b!3973832 (= lt!1392611 (++!11085 lt!1392590 suffix!1299))))

(declare-fun lt!1392597 () Unit!61089)

(declare-fun lemmaConcatAssociativity!2405 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> b!3973832 (= lt!1392597 (lemmaConcatAssociativity!2405 lt!1392588 lt!1392590 suffix!1299))))

(declare-fun b!3973833 () Bool)

(declare-fun res!1609023 () Bool)

(assert (=> b!3973833 (=> (not res!1609023) (not e!2461908))))

(assert (=> b!3973833 (= res!1609023 (>= (size!31753 suffix!1299) (size!31753 newSuffix!27)))))

(declare-fun b!3973834 () Bool)

(declare-fun e!2461901 () Bool)

(assert (=> b!3973834 (= e!2461901 e!2461909)))

(declare-fun res!1609030 () Bool)

(assert (=> b!3973834 (=> (not res!1609030) (not e!2461909))))

(declare-fun maxPrefix!3570 (LexerInterface!6272 List!42565 List!42563) Option!9097)

(assert (=> b!3973834 (= res!1609030 (= (maxPrefix!3570 thiss!21717 rules!2999 lt!1392595) lt!1392610))))

(assert (=> b!3973834 (= lt!1392610 (Some!9096 (tuple2!41691 token!484 suffixResult!105)))))

(assert (=> b!3973834 (= lt!1392595 (++!11085 prefix!494 suffix!1299))))

(declare-fun b!3973835 () Bool)

(declare-fun e!2461886 () Bool)

(declare-fun tp!1211647 () Bool)

(assert (=> b!3973835 (= e!2461886 (and tp_is_empty!20147 tp!1211647))))

(declare-fun b!3973836 () Bool)

(declare-fun res!1609034 () Bool)

(assert (=> b!3973836 (=> (not res!1609034) (not e!2461908))))

(declare-fun isEmpty!25385 (List!42565) Bool)

(assert (=> b!3973836 (= res!1609034 (not (isEmpty!25385 rules!2999)))))

(declare-fun b!3973837 () Bool)

(declare-fun res!1609021 () Bool)

(assert (=> b!3973837 (=> (not res!1609021) (not e!2461908))))

(declare-fun rulesInvariant!5615 (LexerInterface!6272 List!42565) Bool)

(assert (=> b!3973837 (= res!1609021 (rulesInvariant!5615 thiss!21717 rules!2999))))

(declare-fun tp!1211651 () Bool)

(declare-fun b!3973838 () Bool)

(assert (=> b!3973838 (= e!2461903 (and tp!1211651 (inv!56704 (tag!7543 (rule!9677 token!484))) (inv!56707 (transformation!6683 (rule!9677 token!484))) e!2461905))))

(declare-fun b!3973839 () Bool)

(declare-fun e!2461896 () Bool)

(assert (=> b!3973839 (= e!2461902 e!2461896)))

(declare-fun res!1609022 () Bool)

(assert (=> b!3973839 (=> res!1609022 e!2461896)))

(assert (=> b!3973839 (= res!1609022 (not (isPrefix!3770 lt!1392588 lt!1392595)))))

(assert (=> b!3973839 (isPrefix!3770 prefix!494 lt!1392595)))

(declare-fun lt!1392608 () Unit!61089)

(assert (=> b!3973839 (= lt!1392608 (lemmaConcatTwoListThenFirstIsPrefix!2613 prefix!494 suffix!1299))))

(assert (=> b!3973839 (isPrefix!3770 lt!1392588 lt!1392589)))

(declare-fun lt!1392596 () Unit!61089)

(assert (=> b!3973839 (= lt!1392596 (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 suffixResult!105))))

(declare-fun b!3973840 () Bool)

(declare-fun e!2461907 () Bool)

(declare-fun tp!1211659 () Bool)

(assert (=> b!3973840 (= e!2461907 (and tp_is_empty!20147 tp!1211659))))

(declare-fun b!3973841 () Bool)

(assert (=> b!3973841 (= e!2461899 e!2461901)))

(declare-fun res!1609026 () Bool)

(assert (=> b!3973841 (=> (not res!1609026) (not e!2461901))))

(declare-fun lt!1392586 () List!42563)

(assert (=> b!3973841 (= res!1609026 (= lt!1392586 lt!1392593))))

(assert (=> b!3973841 (= lt!1392593 (++!11085 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42563)

(assert (=> b!3973841 (= lt!1392586 (++!11085 lt!1392588 newSuffixResult!27))))

(declare-fun res!1609029 () Bool)

(assert (=> start!373986 (=> (not res!1609029) (not e!2461908))))

(assert (=> start!373986 (= res!1609029 (is-Lexer!6270 thiss!21717))))

(assert (=> start!373986 e!2461908))

(assert (=> start!373986 e!2461886))

(declare-fun inv!56708 (Token!12504) Bool)

(assert (=> start!373986 (and (inv!56708 token!484) e!2461893)))

(declare-fun e!2461888 () Bool)

(assert (=> start!373986 e!2461888))

(assert (=> start!373986 e!2461889))

(assert (=> start!373986 e!2461891))

(assert (=> start!373986 true))

(declare-fun e!2461890 () Bool)

(assert (=> start!373986 e!2461890))

(assert (=> start!373986 e!2461907))

(declare-fun b!3973842 () Bool)

(declare-fun tp!1211648 () Bool)

(assert (=> b!3973842 (= e!2461888 (and tp_is_empty!20147 tp!1211648))))

(declare-fun b!3973843 () Bool)

(declare-fun tp!1211650 () Bool)

(assert (=> b!3973843 (= e!2461890 (and e!2461910 tp!1211650))))

(declare-fun b!3973844 () Bool)

(assert (=> b!3973844 (= e!2461895 (>= (size!31753 lt!1392595) lt!1392592))))

(assert (=> b!3973844 (isPrefix!3770 lt!1392588 lt!1392587)))

(declare-fun lt!1392603 () Unit!61089)

(assert (=> b!3973844 (= lt!1392603 (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 lt!1392591))))

(declare-fun b!3973845 () Bool)

(assert (=> b!3973845 (= e!2461896 e!2461904)))

(declare-fun res!1609025 () Bool)

(assert (=> b!3973845 (=> res!1609025 e!2461904)))

(assert (=> b!3973845 (= res!1609025 (not (= lt!1392600 prefix!494)))))

(assert (=> b!3973845 (= lt!1392600 (++!11085 lt!1392588 lt!1392590))))

(assert (=> b!3973845 (= lt!1392590 (getSuffix!2201 prefix!494 lt!1392588))))

(assert (=> b!3973845 (isPrefix!3770 lt!1392588 prefix!494)))

(declare-fun lt!1392607 () Unit!61089)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!348 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> b!3973845 (= lt!1392607 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!348 prefix!494 lt!1392588 lt!1392595))))

(assert (= (and start!373986 res!1609029) b!3973836))

(assert (= (and b!3973836 res!1609034) b!3973837))

(assert (= (and b!3973837 res!1609021) b!3973833))

(assert (= (and b!3973833 res!1609023) b!3973829))

(assert (= (and b!3973829 res!1609033) b!3973824))

(assert (= (and b!3973824 res!1609017) b!3973841))

(assert (= (and b!3973841 res!1609026) b!3973834))

(assert (= (and b!3973834 res!1609030) b!3973822))

(assert (= (and b!3973822 (not res!1609028)) b!3973839))

(assert (= (and b!3973839 (not res!1609022)) b!3973845))

(assert (= (and b!3973845 (not res!1609025)) b!3973832))

(assert (= (and b!3973832 (not res!1609032)) b!3973825))

(assert (= (and b!3973825 (not res!1609019)) b!3973819))

(assert (= (and b!3973819 (not res!1609031)) b!3973818))

(assert (= (and b!3973818 res!1609020) b!3973831))

(assert (= (and b!3973831 res!1609027) b!3973823))

(assert (= (and b!3973823 res!1609018) b!3973827))

(assert (= (and b!3973818 (not res!1609024)) b!3973844))

(assert (= (and start!373986 (is-Cons!42439 prefix!494)) b!3973835))

(assert (= b!3973838 b!3973828))

(assert (= b!3973821 b!3973838))

(assert (= start!373986 b!3973821))

(assert (= (and start!373986 (is-Cons!42439 suffixResult!105)) b!3973842))

(assert (= (and start!373986 (is-Cons!42439 suffix!1299)) b!3973820))

(assert (= (and start!373986 (is-Cons!42439 newSuffix!27)) b!3973830))

(assert (= b!3973826 b!3973817))

(assert (= b!3973843 b!3973826))

(assert (= (and start!373986 (is-Cons!42441 rules!2999)) b!3973843))

(assert (= (and start!373986 (is-Cons!42439 newSuffixResult!27)) b!3973840))

(declare-fun m!4544481 () Bool)

(assert (=> b!3973826 m!4544481))

(declare-fun m!4544483 () Bool)

(assert (=> b!3973826 m!4544483))

(declare-fun m!4544485 () Bool)

(assert (=> b!3973829 m!4544485))

(declare-fun m!4544487 () Bool)

(assert (=> b!3973833 m!4544487))

(declare-fun m!4544489 () Bool)

(assert (=> b!3973833 m!4544489))

(declare-fun m!4544491 () Bool)

(assert (=> b!3973821 m!4544491))

(declare-fun m!4544493 () Bool)

(assert (=> b!3973839 m!4544493))

(declare-fun m!4544495 () Bool)

(assert (=> b!3973839 m!4544495))

(declare-fun m!4544497 () Bool)

(assert (=> b!3973839 m!4544497))

(declare-fun m!4544499 () Bool)

(assert (=> b!3973839 m!4544499))

(declare-fun m!4544501 () Bool)

(assert (=> b!3973839 m!4544501))

(declare-fun m!4544503 () Bool)

(assert (=> b!3973823 m!4544503))

(declare-fun m!4544505 () Bool)

(assert (=> b!3973845 m!4544505))

(declare-fun m!4544507 () Bool)

(assert (=> b!3973845 m!4544507))

(declare-fun m!4544509 () Bool)

(assert (=> b!3973845 m!4544509))

(declare-fun m!4544511 () Bool)

(assert (=> b!3973845 m!4544511))

(declare-fun m!4544513 () Bool)

(assert (=> b!3973832 m!4544513))

(declare-fun m!4544515 () Bool)

(assert (=> b!3973832 m!4544515))

(declare-fun m!4544517 () Bool)

(assert (=> b!3973832 m!4544517))

(declare-fun m!4544519 () Bool)

(assert (=> b!3973832 m!4544519))

(declare-fun m!4544521 () Bool)

(assert (=> b!3973837 m!4544521))

(declare-fun m!4544523 () Bool)

(assert (=> start!373986 m!4544523))

(declare-fun m!4544525 () Bool)

(assert (=> b!3973838 m!4544525))

(declare-fun m!4544527 () Bool)

(assert (=> b!3973838 m!4544527))

(declare-fun m!4544529 () Bool)

(assert (=> b!3973836 m!4544529))

(declare-fun m!4544531 () Bool)

(assert (=> b!3973824 m!4544531))

(declare-fun m!4544533 () Bool)

(assert (=> b!3973824 m!4544533))

(declare-fun m!4544535 () Bool)

(assert (=> b!3973824 m!4544535))

(assert (=> b!3973824 m!4544535))

(declare-fun m!4544537 () Bool)

(assert (=> b!3973824 m!4544537))

(declare-fun m!4544539 () Bool)

(assert (=> b!3973841 m!4544539))

(declare-fun m!4544541 () Bool)

(assert (=> b!3973841 m!4544541))

(declare-fun m!4544543 () Bool)

(assert (=> b!3973818 m!4544543))

(declare-fun m!4544545 () Bool)

(assert (=> b!3973818 m!4544545))

(declare-fun m!4544547 () Bool)

(assert (=> b!3973818 m!4544547))

(declare-fun m!4544549 () Bool)

(assert (=> b!3973818 m!4544549))

(declare-fun m!4544551 () Bool)

(assert (=> b!3973844 m!4544551))

(declare-fun m!4544553 () Bool)

(assert (=> b!3973844 m!4544553))

(declare-fun m!4544555 () Bool)

(assert (=> b!3973844 m!4544555))

(declare-fun m!4544557 () Bool)

(assert (=> b!3973819 m!4544557))

(declare-fun m!4544559 () Bool)

(assert (=> b!3973819 m!4544559))

(declare-fun m!4544561 () Bool)

(assert (=> b!3973819 m!4544561))

(declare-fun m!4544563 () Bool)

(assert (=> b!3973819 m!4544563))

(declare-fun m!4544565 () Bool)

(assert (=> b!3973834 m!4544565))

(declare-fun m!4544567 () Bool)

(assert (=> b!3973834 m!4544567))

(declare-fun m!4544569 () Bool)

(assert (=> b!3973822 m!4544569))

(declare-fun m!4544571 () Bool)

(assert (=> b!3973822 m!4544571))

(declare-fun m!4544573 () Bool)

(assert (=> b!3973822 m!4544573))

(declare-fun m!4544575 () Bool)

(assert (=> b!3973822 m!4544575))

(declare-fun m!4544577 () Bool)

(assert (=> b!3973825 m!4544577))

(declare-fun m!4544579 () Bool)

(assert (=> b!3973825 m!4544579))

(declare-fun m!4544581 () Bool)

(assert (=> b!3973825 m!4544581))

(declare-fun m!4544583 () Bool)

(assert (=> b!3973825 m!4544583))

(declare-fun m!4544585 () Bool)

(assert (=> b!3973825 m!4544585))

(declare-fun m!4544587 () Bool)

(assert (=> b!3973825 m!4544587))

(declare-fun m!4544589 () Bool)

(assert (=> b!3973825 m!4544589))

(assert (=> b!3973825 m!4544585))

(push 1)

(assert (not b!3973826))

(assert (not b!3973824))

(assert (not b_next!110871))

(assert (not b!3973833))

(assert (not b!3973843))

(assert (not b!3973820))

(assert (not b!3973819))

(assert b_and!305485)

(assert (not b!3973822))

(assert b_and!305479)

(assert (not b!3973823))

(assert (not start!373986))

(assert (not b!3973842))

(assert (not b!3973835))

(assert (not b_next!110867))

(assert (not b_next!110869))

(assert (not b!3973840))

(assert (not b!3973845))

(assert b_and!305483)

(assert (not b!3973834))

(assert (not b!3973830))

(assert (not b!3973838))

(assert (not b!3973818))

(assert (not b!3973825))

(assert (not b!3973836))

(assert (not b!3973829))

(assert b_and!305481)

(assert (not b!3973841))

(assert (not b!3973821))

(assert (not b_next!110865))

(assert (not b!3973839))

(assert (not b!3973844))

(assert (not b!3973832))

(assert tp_is_empty!20147)

(assert (not b!3973837))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!110871))

(assert b_and!305483)

(assert b_and!305481)

(assert (not b_next!110865))

(assert b_and!305485)

(assert b_and!305479)

(assert (not b_next!110867))

(assert (not b_next!110869))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3973943 () Bool)

(declare-fun e!2461996 () Bool)

(declare-fun inv!16 (TokenValue!6913) Bool)

(assert (=> b!3973943 (= e!2461996 (inv!16 (value!211101 token!484)))))

(declare-fun b!3973944 () Bool)

(declare-fun e!2461995 () Bool)

(assert (=> b!3973944 (= e!2461996 e!2461995)))

(declare-fun c!689039 () Bool)

(assert (=> b!3973944 (= c!689039 (is-IntegerValue!20740 (value!211101 token!484)))))

(declare-fun b!3973945 () Bool)

(declare-fun inv!17 (TokenValue!6913) Bool)

(assert (=> b!3973945 (= e!2461995 (inv!17 (value!211101 token!484)))))

(declare-fun b!3973947 () Bool)

(declare-fun res!1609095 () Bool)

(declare-fun e!2461997 () Bool)

(assert (=> b!3973947 (=> res!1609095 e!2461997)))

(assert (=> b!3973947 (= res!1609095 (not (is-IntegerValue!20741 (value!211101 token!484))))))

(assert (=> b!3973947 (= e!2461995 e!2461997)))

(declare-fun d!1176833 () Bool)

(declare-fun c!689038 () Bool)

(assert (=> d!1176833 (= c!689038 (is-IntegerValue!20739 (value!211101 token!484)))))

(assert (=> d!1176833 (= (inv!21 (value!211101 token!484)) e!2461996)))

(declare-fun b!3973946 () Bool)

(declare-fun inv!15 (TokenValue!6913) Bool)

(assert (=> b!3973946 (= e!2461997 (inv!15 (value!211101 token!484)))))

(assert (= (and d!1176833 c!689038) b!3973943))

(assert (= (and d!1176833 (not c!689038)) b!3973944))

(assert (= (and b!3973944 c!689039) b!3973945))

(assert (= (and b!3973944 (not c!689039)) b!3973947))

(assert (= (and b!3973947 (not res!1609095)) b!3973946))

(declare-fun m!4544701 () Bool)

(assert (=> b!3973943 m!4544701))

(declare-fun m!4544703 () Bool)

(assert (=> b!3973945 m!4544703))

(declare-fun m!4544705 () Bool)

(assert (=> b!3973946 m!4544705))

(assert (=> b!3973821 d!1176833))

(declare-fun b!3973966 () Bool)

(declare-fun res!1609104 () Bool)

(declare-fun e!2462006 () Bool)

(assert (=> b!3973966 (=> (not res!1609104) (not e!2462006))))

(declare-fun lt!1392708 () List!42563)

(assert (=> b!3973966 (= res!1609104 (= (size!31753 lt!1392708) (+ (size!31753 lt!1392588) (size!31753 lt!1392611))))))

(declare-fun b!3973964 () Bool)

(declare-fun e!2462007 () List!42563)

(assert (=> b!3973964 (= e!2462007 lt!1392611)))

(declare-fun b!3973965 () Bool)

(assert (=> b!3973965 (= e!2462007 (Cons!42439 (h!47859 lt!1392588) (++!11085 (t!331002 lt!1392588) lt!1392611)))))

(declare-fun b!3973967 () Bool)

(assert (=> b!3973967 (= e!2462006 (or (not (= lt!1392611 Nil!42439)) (= lt!1392708 lt!1392588)))))

(declare-fun d!1176837 () Bool)

(assert (=> d!1176837 e!2462006))

(declare-fun res!1609105 () Bool)

(assert (=> d!1176837 (=> (not res!1609105) (not e!2462006))))

(declare-fun content!6440 (List!42563) (Set C!23362))

(assert (=> d!1176837 (= res!1609105 (= (content!6440 lt!1392708) (set.union (content!6440 lt!1392588) (content!6440 lt!1392611))))))

(assert (=> d!1176837 (= lt!1392708 e!2462007)))

(declare-fun c!689044 () Bool)

(assert (=> d!1176837 (= c!689044 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176837 (= (++!11085 lt!1392588 lt!1392611) lt!1392708)))

(assert (= (and d!1176837 c!689044) b!3973964))

(assert (= (and d!1176837 (not c!689044)) b!3973965))

(assert (= (and d!1176837 res!1609105) b!3973966))

(assert (= (and b!3973966 res!1609104) b!3973967))

(declare-fun m!4544707 () Bool)

(assert (=> b!3973966 m!4544707))

(assert (=> b!3973966 m!4544531))

(declare-fun m!4544713 () Bool)

(assert (=> b!3973966 m!4544713))

(declare-fun m!4544717 () Bool)

(assert (=> b!3973965 m!4544717))

(declare-fun m!4544721 () Bool)

(assert (=> d!1176837 m!4544721))

(declare-fun m!4544725 () Bool)

(assert (=> d!1176837 m!4544725))

(declare-fun m!4544729 () Bool)

(assert (=> d!1176837 m!4544729))

(assert (=> b!3973832 d!1176837))

(declare-fun b!3973974 () Bool)

(declare-fun res!1609108 () Bool)

(declare-fun e!2462010 () Bool)

(assert (=> b!3973974 (=> (not res!1609108) (not e!2462010))))

(declare-fun lt!1392710 () List!42563)

(assert (=> b!3973974 (= res!1609108 (= (size!31753 lt!1392710) (+ (size!31753 lt!1392600) (size!31753 suffix!1299))))))

(declare-fun b!3973972 () Bool)

(declare-fun e!2462011 () List!42563)

(assert (=> b!3973972 (= e!2462011 suffix!1299)))

(declare-fun b!3973973 () Bool)

(assert (=> b!3973973 (= e!2462011 (Cons!42439 (h!47859 lt!1392600) (++!11085 (t!331002 lt!1392600) suffix!1299)))))

(declare-fun b!3973975 () Bool)

(assert (=> b!3973975 (= e!2462010 (or (not (= suffix!1299 Nil!42439)) (= lt!1392710 lt!1392600)))))

(declare-fun d!1176841 () Bool)

(assert (=> d!1176841 e!2462010))

(declare-fun res!1609109 () Bool)

(assert (=> d!1176841 (=> (not res!1609109) (not e!2462010))))

(assert (=> d!1176841 (= res!1609109 (= (content!6440 lt!1392710) (set.union (content!6440 lt!1392600) (content!6440 suffix!1299))))))

(assert (=> d!1176841 (= lt!1392710 e!2462011)))

(declare-fun c!689046 () Bool)

(assert (=> d!1176841 (= c!689046 (is-Nil!42439 lt!1392600))))

(assert (=> d!1176841 (= (++!11085 lt!1392600 suffix!1299) lt!1392710)))

(assert (= (and d!1176841 c!689046) b!3973972))

(assert (= (and d!1176841 (not c!689046)) b!3973973))

(assert (= (and d!1176841 res!1609109) b!3973974))

(assert (= (and b!3973974 res!1609108) b!3973975))

(declare-fun m!4544731 () Bool)

(assert (=> b!3973974 m!4544731))

(declare-fun m!4544733 () Bool)

(assert (=> b!3973974 m!4544733))

(assert (=> b!3973974 m!4544487))

(declare-fun m!4544735 () Bool)

(assert (=> b!3973973 m!4544735))

(declare-fun m!4544737 () Bool)

(assert (=> d!1176841 m!4544737))

(declare-fun m!4544739 () Bool)

(assert (=> d!1176841 m!4544739))

(declare-fun m!4544741 () Bool)

(assert (=> d!1176841 m!4544741))

(assert (=> b!3973832 d!1176841))

(declare-fun b!3973978 () Bool)

(declare-fun res!1609110 () Bool)

(declare-fun e!2462012 () Bool)

(assert (=> b!3973978 (=> (not res!1609110) (not e!2462012))))

(declare-fun lt!1392711 () List!42563)

(assert (=> b!3973978 (= res!1609110 (= (size!31753 lt!1392711) (+ (size!31753 lt!1392590) (size!31753 suffix!1299))))))

(declare-fun b!3973976 () Bool)

(declare-fun e!2462013 () List!42563)

(assert (=> b!3973976 (= e!2462013 suffix!1299)))

(declare-fun b!3973977 () Bool)

(assert (=> b!3973977 (= e!2462013 (Cons!42439 (h!47859 lt!1392590) (++!11085 (t!331002 lt!1392590) suffix!1299)))))

(declare-fun b!3973979 () Bool)

(assert (=> b!3973979 (= e!2462012 (or (not (= suffix!1299 Nil!42439)) (= lt!1392711 lt!1392590)))))

(declare-fun d!1176843 () Bool)

(assert (=> d!1176843 e!2462012))

(declare-fun res!1609111 () Bool)

(assert (=> d!1176843 (=> (not res!1609111) (not e!2462012))))

(assert (=> d!1176843 (= res!1609111 (= (content!6440 lt!1392711) (set.union (content!6440 lt!1392590) (content!6440 suffix!1299))))))

(assert (=> d!1176843 (= lt!1392711 e!2462013)))

(declare-fun c!689047 () Bool)

(assert (=> d!1176843 (= c!689047 (is-Nil!42439 lt!1392590))))

(assert (=> d!1176843 (= (++!11085 lt!1392590 suffix!1299) lt!1392711)))

(assert (= (and d!1176843 c!689047) b!3973976))

(assert (= (and d!1176843 (not c!689047)) b!3973977))

(assert (= (and d!1176843 res!1609111) b!3973978))

(assert (= (and b!3973978 res!1609110) b!3973979))

(declare-fun m!4544743 () Bool)

(assert (=> b!3973978 m!4544743))

(declare-fun m!4544745 () Bool)

(assert (=> b!3973978 m!4544745))

(assert (=> b!3973978 m!4544487))

(declare-fun m!4544747 () Bool)

(assert (=> b!3973977 m!4544747))

(declare-fun m!4544749 () Bool)

(assert (=> d!1176843 m!4544749))

(declare-fun m!4544751 () Bool)

(assert (=> d!1176843 m!4544751))

(assert (=> d!1176843 m!4544741))

(assert (=> b!3973832 d!1176843))

(declare-fun d!1176845 () Bool)

(assert (=> d!1176845 (= (++!11085 (++!11085 lt!1392588 lt!1392590) suffix!1299) (++!11085 lt!1392588 (++!11085 lt!1392590 suffix!1299)))))

(declare-fun lt!1392716 () Unit!61089)

(declare-fun choose!23790 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> d!1176845 (= lt!1392716 (choose!23790 lt!1392588 lt!1392590 suffix!1299))))

(assert (=> d!1176845 (= (lemmaConcatAssociativity!2405 lt!1392588 lt!1392590 suffix!1299) lt!1392716)))

(declare-fun bs!587695 () Bool)

(assert (= bs!587695 d!1176845))

(assert (=> bs!587695 m!4544517))

(declare-fun m!4544753 () Bool)

(assert (=> bs!587695 m!4544753))

(assert (=> bs!587695 m!4544505))

(declare-fun m!4544755 () Bool)

(assert (=> bs!587695 m!4544755))

(assert (=> bs!587695 m!4544517))

(declare-fun m!4544757 () Bool)

(assert (=> bs!587695 m!4544757))

(assert (=> bs!587695 m!4544505))

(assert (=> b!3973832 d!1176845))

(declare-fun b!3973988 () Bool)

(declare-fun res!1609112 () Bool)

(declare-fun e!2462017 () Bool)

(assert (=> b!3973988 (=> (not res!1609112) (not e!2462017))))

(declare-fun lt!1392718 () List!42563)

(assert (=> b!3973988 (= res!1609112 (= (size!31753 lt!1392718) (+ (size!31753 prefix!494) (size!31753 newSuffix!27))))))

(declare-fun b!3973986 () Bool)

(declare-fun e!2462018 () List!42563)

(assert (=> b!3973986 (= e!2462018 newSuffix!27)))

(declare-fun b!3973987 () Bool)

(assert (=> b!3973987 (= e!2462018 (Cons!42439 (h!47859 prefix!494) (++!11085 (t!331002 prefix!494) newSuffix!27)))))

(declare-fun b!3973989 () Bool)

(assert (=> b!3973989 (= e!2462017 (or (not (= newSuffix!27 Nil!42439)) (= lt!1392718 prefix!494)))))

(declare-fun d!1176847 () Bool)

(assert (=> d!1176847 e!2462017))

(declare-fun res!1609113 () Bool)

(assert (=> d!1176847 (=> (not res!1609113) (not e!2462017))))

(assert (=> d!1176847 (= res!1609113 (= (content!6440 lt!1392718) (set.union (content!6440 prefix!494) (content!6440 newSuffix!27))))))

(assert (=> d!1176847 (= lt!1392718 e!2462018)))

(declare-fun c!689051 () Bool)

(assert (=> d!1176847 (= c!689051 (is-Nil!42439 prefix!494))))

(assert (=> d!1176847 (= (++!11085 prefix!494 newSuffix!27) lt!1392718)))

(assert (= (and d!1176847 c!689051) b!3973986))

(assert (= (and d!1176847 (not c!689051)) b!3973987))

(assert (= (and d!1176847 res!1609113) b!3973988))

(assert (= (and b!3973988 res!1609112) b!3973989))

(declare-fun m!4544765 () Bool)

(assert (=> b!3973988 m!4544765))

(assert (=> b!3973988 m!4544533))

(assert (=> b!3973988 m!4544489))

(declare-fun m!4544767 () Bool)

(assert (=> b!3973987 m!4544767))

(declare-fun m!4544769 () Bool)

(assert (=> d!1176847 m!4544769))

(declare-fun m!4544771 () Bool)

(assert (=> d!1176847 m!4544771))

(declare-fun m!4544773 () Bool)

(assert (=> d!1176847 m!4544773))

(assert (=> b!3973841 d!1176847))

(declare-fun b!3973992 () Bool)

(declare-fun res!1609114 () Bool)

(declare-fun e!2462019 () Bool)

(assert (=> b!3973992 (=> (not res!1609114) (not e!2462019))))

(declare-fun lt!1392719 () List!42563)

(assert (=> b!3973992 (= res!1609114 (= (size!31753 lt!1392719) (+ (size!31753 lt!1392588) (size!31753 newSuffixResult!27))))))

(declare-fun b!3973990 () Bool)

(declare-fun e!2462020 () List!42563)

(assert (=> b!3973990 (= e!2462020 newSuffixResult!27)))

(declare-fun b!3973991 () Bool)

(assert (=> b!3973991 (= e!2462020 (Cons!42439 (h!47859 lt!1392588) (++!11085 (t!331002 lt!1392588) newSuffixResult!27)))))

(declare-fun b!3973993 () Bool)

(assert (=> b!3973993 (= e!2462019 (or (not (= newSuffixResult!27 Nil!42439)) (= lt!1392719 lt!1392588)))))

(declare-fun d!1176851 () Bool)

(assert (=> d!1176851 e!2462019))

(declare-fun res!1609115 () Bool)

(assert (=> d!1176851 (=> (not res!1609115) (not e!2462019))))

(assert (=> d!1176851 (= res!1609115 (= (content!6440 lt!1392719) (set.union (content!6440 lt!1392588) (content!6440 newSuffixResult!27))))))

(assert (=> d!1176851 (= lt!1392719 e!2462020)))

(declare-fun c!689052 () Bool)

(assert (=> d!1176851 (= c!689052 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176851 (= (++!11085 lt!1392588 newSuffixResult!27) lt!1392719)))

(assert (= (and d!1176851 c!689052) b!3973990))

(assert (= (and d!1176851 (not c!689052)) b!3973991))

(assert (= (and d!1176851 res!1609115) b!3973992))

(assert (= (and b!3973992 res!1609114) b!3973993))

(declare-fun m!4544775 () Bool)

(assert (=> b!3973992 m!4544775))

(assert (=> b!3973992 m!4544531))

(declare-fun m!4544777 () Bool)

(assert (=> b!3973992 m!4544777))

(declare-fun m!4544779 () Bool)

(assert (=> b!3973991 m!4544779))

(declare-fun m!4544781 () Bool)

(assert (=> d!1176851 m!4544781))

(assert (=> d!1176851 m!4544725))

(declare-fun m!4544783 () Bool)

(assert (=> d!1176851 m!4544783))

(assert (=> b!3973841 d!1176851))

(declare-fun b!3974015 () Bool)

(declare-fun res!1609138 () Bool)

(declare-fun e!2462036 () Bool)

(assert (=> b!3974015 (=> (not res!1609138) (not e!2462036))))

(declare-fun head!8467 (List!42563) C!23362)

(assert (=> b!3974015 (= res!1609138 (= (head!8467 newSuffix!27) (head!8467 suffix!1299)))))

(declare-fun b!3974014 () Bool)

(declare-fun e!2462038 () Bool)

(assert (=> b!3974014 (= e!2462038 e!2462036)))

(declare-fun res!1609137 () Bool)

(assert (=> b!3974014 (=> (not res!1609137) (not e!2462036))))

(assert (=> b!3974014 (= res!1609137 (not (is-Nil!42439 suffix!1299)))))

(declare-fun b!3974016 () Bool)

(declare-fun tail!6199 (List!42563) List!42563)

(assert (=> b!3974016 (= e!2462036 (isPrefix!3770 (tail!6199 newSuffix!27) (tail!6199 suffix!1299)))))

(declare-fun b!3974017 () Bool)

(declare-fun e!2462037 () Bool)

(assert (=> b!3974017 (= e!2462037 (>= (size!31753 suffix!1299) (size!31753 newSuffix!27)))))

(declare-fun d!1176853 () Bool)

(assert (=> d!1176853 e!2462037))

(declare-fun res!1609139 () Bool)

(assert (=> d!1176853 (=> res!1609139 e!2462037)))

(declare-fun lt!1392725 () Bool)

(assert (=> d!1176853 (= res!1609139 (not lt!1392725))))

(assert (=> d!1176853 (= lt!1392725 e!2462038)))

(declare-fun res!1609136 () Bool)

(assert (=> d!1176853 (=> res!1609136 e!2462038)))

(assert (=> d!1176853 (= res!1609136 (is-Nil!42439 newSuffix!27))))

(assert (=> d!1176853 (= (isPrefix!3770 newSuffix!27 suffix!1299) lt!1392725)))

(assert (= (and d!1176853 (not res!1609136)) b!3974014))

(assert (= (and b!3974014 res!1609137) b!3974015))

(assert (= (and b!3974015 res!1609138) b!3974016))

(assert (= (and d!1176853 (not res!1609139)) b!3974017))

(declare-fun m!4544793 () Bool)

(assert (=> b!3974015 m!4544793))

(declare-fun m!4544795 () Bool)

(assert (=> b!3974015 m!4544795))

(declare-fun m!4544797 () Bool)

(assert (=> b!3974016 m!4544797))

(declare-fun m!4544799 () Bool)

(assert (=> b!3974016 m!4544799))

(assert (=> b!3974016 m!4544797))

(assert (=> b!3974016 m!4544799))

(declare-fun m!4544801 () Bool)

(assert (=> b!3974016 m!4544801))

(assert (=> b!3974017 m!4544487))

(assert (=> b!3974017 m!4544489))

(assert (=> b!3973829 d!1176853))

(declare-fun b!3974020 () Bool)

(declare-fun res!1609140 () Bool)

(declare-fun e!2462039 () Bool)

(assert (=> b!3974020 (=> (not res!1609140) (not e!2462039))))

(declare-fun lt!1392726 () List!42563)

(assert (=> b!3974020 (= res!1609140 (= (size!31753 lt!1392726) (+ (size!31753 lt!1392588) (size!31753 lt!1392591))))))

(declare-fun b!3974018 () Bool)

(declare-fun e!2462040 () List!42563)

(assert (=> b!3974018 (= e!2462040 lt!1392591)))

(declare-fun b!3974019 () Bool)

(assert (=> b!3974019 (= e!2462040 (Cons!42439 (h!47859 lt!1392588) (++!11085 (t!331002 lt!1392588) lt!1392591)))))

(declare-fun b!3974021 () Bool)

(assert (=> b!3974021 (= e!2462039 (or (not (= lt!1392591 Nil!42439)) (= lt!1392726 lt!1392588)))))

(declare-fun d!1176857 () Bool)

(assert (=> d!1176857 e!2462039))

(declare-fun res!1609141 () Bool)

(assert (=> d!1176857 (=> (not res!1609141) (not e!2462039))))

(assert (=> d!1176857 (= res!1609141 (= (content!6440 lt!1392726) (set.union (content!6440 lt!1392588) (content!6440 lt!1392591))))))

(assert (=> d!1176857 (= lt!1392726 e!2462040)))

(declare-fun c!689053 () Bool)

(assert (=> d!1176857 (= c!689053 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176857 (= (++!11085 lt!1392588 lt!1392591) lt!1392726)))

(assert (= (and d!1176857 c!689053) b!3974018))

(assert (= (and d!1176857 (not c!689053)) b!3974019))

(assert (= (and d!1176857 res!1609141) b!3974020))

(assert (= (and b!3974020 res!1609140) b!3974021))

(declare-fun m!4544803 () Bool)

(assert (=> b!3974020 m!4544803))

(assert (=> b!3974020 m!4544531))

(declare-fun m!4544805 () Bool)

(assert (=> b!3974020 m!4544805))

(declare-fun m!4544807 () Bool)

(assert (=> b!3974019 m!4544807))

(declare-fun m!4544809 () Bool)

(assert (=> d!1176857 m!4544809))

(assert (=> d!1176857 m!4544725))

(declare-fun m!4544811 () Bool)

(assert (=> d!1176857 m!4544811))

(assert (=> b!3973818 d!1176857))

(declare-fun d!1176859 () Bool)

(declare-fun lt!1392732 () List!42563)

(assert (=> d!1176859 (= (++!11085 lt!1392588 lt!1392732) lt!1392595)))

(declare-fun e!2462045 () List!42563)

(assert (=> d!1176859 (= lt!1392732 e!2462045)))

(declare-fun c!689056 () Bool)

(assert (=> d!1176859 (= c!689056 (is-Cons!42439 lt!1392588))))

(assert (=> d!1176859 (>= (size!31753 lt!1392595) (size!31753 lt!1392588))))

(assert (=> d!1176859 (= (getSuffix!2201 lt!1392595 lt!1392588) lt!1392732)))

(declare-fun b!3974030 () Bool)

(assert (=> b!3974030 (= e!2462045 (getSuffix!2201 (tail!6199 lt!1392595) (t!331002 lt!1392588)))))

(declare-fun b!3974031 () Bool)

(assert (=> b!3974031 (= e!2462045 lt!1392595)))

(assert (= (and d!1176859 c!689056) b!3974030))

(assert (= (and d!1176859 (not c!689056)) b!3974031))

(declare-fun m!4544815 () Bool)

(assert (=> d!1176859 m!4544815))

(assert (=> d!1176859 m!4544551))

(assert (=> d!1176859 m!4544531))

(declare-fun m!4544817 () Bool)

(assert (=> b!3974030 m!4544817))

(assert (=> b!3974030 m!4544817))

(declare-fun m!4544819 () Bool)

(assert (=> b!3974030 m!4544819))

(assert (=> b!3973818 d!1176859))

(declare-fun b!3974033 () Bool)

(declare-fun res!1609148 () Bool)

(declare-fun e!2462046 () Bool)

(assert (=> b!3974033 (=> (not res!1609148) (not e!2462046))))

(assert (=> b!3974033 (= res!1609148 (= (head!8467 lt!1392595) (head!8467 lt!1392595)))))

(declare-fun b!3974032 () Bool)

(declare-fun e!2462048 () Bool)

(assert (=> b!3974032 (= e!2462048 e!2462046)))

(declare-fun res!1609147 () Bool)

(assert (=> b!3974032 (=> (not res!1609147) (not e!2462046))))

(assert (=> b!3974032 (= res!1609147 (not (is-Nil!42439 lt!1392595)))))

(declare-fun b!3974034 () Bool)

(assert (=> b!3974034 (= e!2462046 (isPrefix!3770 (tail!6199 lt!1392595) (tail!6199 lt!1392595)))))

(declare-fun b!3974035 () Bool)

(declare-fun e!2462047 () Bool)

(assert (=> b!3974035 (= e!2462047 (>= (size!31753 lt!1392595) (size!31753 lt!1392595)))))

(declare-fun d!1176863 () Bool)

(assert (=> d!1176863 e!2462047))

(declare-fun res!1609149 () Bool)

(assert (=> d!1176863 (=> res!1609149 e!2462047)))

(declare-fun lt!1392733 () Bool)

(assert (=> d!1176863 (= res!1609149 (not lt!1392733))))

(assert (=> d!1176863 (= lt!1392733 e!2462048)))

(declare-fun res!1609146 () Bool)

(assert (=> d!1176863 (=> res!1609146 e!2462048)))

(assert (=> d!1176863 (= res!1609146 (is-Nil!42439 lt!1392595))))

(assert (=> d!1176863 (= (isPrefix!3770 lt!1392595 lt!1392595) lt!1392733)))

(assert (= (and d!1176863 (not res!1609146)) b!3974032))

(assert (= (and b!3974032 res!1609147) b!3974033))

(assert (= (and b!3974033 res!1609148) b!3974034))

(assert (= (and d!1176863 (not res!1609149)) b!3974035))

(declare-fun m!4544821 () Bool)

(assert (=> b!3974033 m!4544821))

(assert (=> b!3974033 m!4544821))

(assert (=> b!3974034 m!4544817))

(assert (=> b!3974034 m!4544817))

(assert (=> b!3974034 m!4544817))

(assert (=> b!3974034 m!4544817))

(declare-fun m!4544823 () Bool)

(assert (=> b!3974034 m!4544823))

(assert (=> b!3974035 m!4544551))

(assert (=> b!3974035 m!4544551))

(assert (=> b!3973818 d!1176863))

(declare-fun d!1176865 () Bool)

(assert (=> d!1176865 (isPrefix!3770 lt!1392595 lt!1392595)))

(declare-fun lt!1392736 () Unit!61089)

(declare-fun choose!23792 (List!42563 List!42563) Unit!61089)

(assert (=> d!1176865 (= lt!1392736 (choose!23792 lt!1392595 lt!1392595))))

(assert (=> d!1176865 (= (lemmaIsPrefixRefl!2362 lt!1392595 lt!1392595) lt!1392736)))

(declare-fun bs!587697 () Bool)

(assert (= bs!587697 d!1176865))

(assert (=> bs!587697 m!4544547))

(declare-fun m!4544829 () Bool)

(assert (=> bs!587697 m!4544829))

(assert (=> b!3973818 d!1176865))

(declare-fun b!3974113 () Bool)

(declare-fun res!1609195 () Bool)

(declare-fun e!2462093 () Bool)

(assert (=> b!3974113 (=> res!1609195 e!2462093)))

(declare-fun isEmpty!25388 (List!42563) Bool)

(assert (=> b!3974113 (= res!1609195 (not (isEmpty!25388 (tail!6199 lt!1392588))))))

(declare-fun b!3974114 () Bool)

(declare-fun res!1609197 () Bool)

(declare-fun e!2462096 () Bool)

(assert (=> b!3974114 (=> (not res!1609197) (not e!2462096))))

(assert (=> b!3974114 (= res!1609197 (isEmpty!25388 (tail!6199 lt!1392588)))))

(declare-fun b!3974115 () Bool)

(declare-fun e!2462098 () Bool)

(declare-fun lt!1392758 () Bool)

(assert (=> b!3974115 (= e!2462098 (not lt!1392758))))

(declare-fun b!3974116 () Bool)

(declare-fun e!2462094 () Bool)

(declare-fun call!285651 () Bool)

(assert (=> b!3974116 (= e!2462094 (= lt!1392758 call!285651))))

(declare-fun b!3974117 () Bool)

(declare-fun e!2462095 () Bool)

(declare-fun derivativeStep!3476 (Regex!11588 C!23362) Regex!11588)

(assert (=> b!3974117 (= e!2462095 (matchR!5565 (derivativeStep!3476 (regex!6683 (rule!9677 token!484)) (head!8467 lt!1392588)) (tail!6199 lt!1392588)))))

(declare-fun b!3974119 () Bool)

(declare-fun e!2462097 () Bool)

(declare-fun e!2462092 () Bool)

(assert (=> b!3974119 (= e!2462097 e!2462092)))

(declare-fun res!1609200 () Bool)

(assert (=> b!3974119 (=> (not res!1609200) (not e!2462092))))

(assert (=> b!3974119 (= res!1609200 (not lt!1392758))))

(declare-fun b!3974120 () Bool)

(assert (=> b!3974120 (= e!2462092 e!2462093)))

(declare-fun res!1609198 () Bool)

(assert (=> b!3974120 (=> res!1609198 e!2462093)))

(assert (=> b!3974120 (= res!1609198 call!285651)))

(declare-fun bm!285646 () Bool)

(assert (=> bm!285646 (= call!285651 (isEmpty!25388 lt!1392588))))

(declare-fun b!3974121 () Bool)

(declare-fun res!1609194 () Bool)

(assert (=> b!3974121 (=> res!1609194 e!2462097)))

(assert (=> b!3974121 (= res!1609194 e!2462096)))

(declare-fun res!1609199 () Bool)

(assert (=> b!3974121 (=> (not res!1609199) (not e!2462096))))

(assert (=> b!3974121 (= res!1609199 lt!1392758)))

(declare-fun b!3974118 () Bool)

(declare-fun res!1609196 () Bool)

(assert (=> b!3974118 (=> (not res!1609196) (not e!2462096))))

(assert (=> b!3974118 (= res!1609196 (not call!285651))))

(declare-fun d!1176867 () Bool)

(assert (=> d!1176867 e!2462094))

(declare-fun c!689073 () Bool)

(assert (=> d!1176867 (= c!689073 (is-EmptyExpr!11588 (regex!6683 (rule!9677 token!484))))))

(assert (=> d!1176867 (= lt!1392758 e!2462095)))

(declare-fun c!689072 () Bool)

(assert (=> d!1176867 (= c!689072 (isEmpty!25388 lt!1392588))))

(declare-fun validRegex!5265 (Regex!11588) Bool)

(assert (=> d!1176867 (validRegex!5265 (regex!6683 (rule!9677 token!484)))))

(assert (=> d!1176867 (= (matchR!5565 (regex!6683 (rule!9677 token!484)) lt!1392588) lt!1392758)))

(declare-fun b!3974122 () Bool)

(declare-fun nullable!4065 (Regex!11588) Bool)

(assert (=> b!3974122 (= e!2462095 (nullable!4065 (regex!6683 (rule!9677 token!484))))))

(declare-fun b!3974123 () Bool)

(declare-fun res!1609201 () Bool)

(assert (=> b!3974123 (=> res!1609201 e!2462097)))

(assert (=> b!3974123 (= res!1609201 (not (is-ElementMatch!11588 (regex!6683 (rule!9677 token!484)))))))

(assert (=> b!3974123 (= e!2462098 e!2462097)))

(declare-fun b!3974124 () Bool)

(assert (=> b!3974124 (= e!2462093 (not (= (head!8467 lt!1392588) (c!689030 (regex!6683 (rule!9677 token!484))))))))

(declare-fun b!3974125 () Bool)

(assert (=> b!3974125 (= e!2462094 e!2462098)))

(declare-fun c!689071 () Bool)

(assert (=> b!3974125 (= c!689071 (is-EmptyLang!11588 (regex!6683 (rule!9677 token!484))))))

(declare-fun b!3974126 () Bool)

(assert (=> b!3974126 (= e!2462096 (= (head!8467 lt!1392588) (c!689030 (regex!6683 (rule!9677 token!484)))))))

(assert (= (and d!1176867 c!689072) b!3974122))

(assert (= (and d!1176867 (not c!689072)) b!3974117))

(assert (= (and d!1176867 c!689073) b!3974116))

(assert (= (and d!1176867 (not c!689073)) b!3974125))

(assert (= (and b!3974125 c!689071) b!3974115))

(assert (= (and b!3974125 (not c!689071)) b!3974123))

(assert (= (and b!3974123 (not res!1609201)) b!3974121))

(assert (= (and b!3974121 res!1609199) b!3974118))

(assert (= (and b!3974118 res!1609196) b!3974114))

(assert (= (and b!3974114 res!1609197) b!3974126))

(assert (= (and b!3974121 (not res!1609194)) b!3974119))

(assert (= (and b!3974119 res!1609200) b!3974120))

(assert (= (and b!3974120 (not res!1609198)) b!3974113))

(assert (= (and b!3974113 (not res!1609195)) b!3974124))

(assert (= (or b!3974116 b!3974118 b!3974120) bm!285646))

(declare-fun m!4544927 () Bool)

(assert (=> b!3974122 m!4544927))

(declare-fun m!4544929 () Bool)

(assert (=> bm!285646 m!4544929))

(assert (=> d!1176867 m!4544929))

(declare-fun m!4544931 () Bool)

(assert (=> d!1176867 m!4544931))

(declare-fun m!4544933 () Bool)

(assert (=> b!3974126 m!4544933))

(declare-fun m!4544935 () Bool)

(assert (=> b!3974113 m!4544935))

(assert (=> b!3974113 m!4544935))

(declare-fun m!4544937 () Bool)

(assert (=> b!3974113 m!4544937))

(assert (=> b!3974124 m!4544933))

(assert (=> b!3974114 m!4544935))

(assert (=> b!3974114 m!4544935))

(assert (=> b!3974114 m!4544937))

(assert (=> b!3974117 m!4544933))

(assert (=> b!3974117 m!4544933))

(declare-fun m!4544939 () Bool)

(assert (=> b!3974117 m!4544939))

(assert (=> b!3974117 m!4544935))

(assert (=> b!3974117 m!4544939))

(assert (=> b!3974117 m!4544935))

(declare-fun m!4544941 () Bool)

(assert (=> b!3974117 m!4544941))

(assert (=> b!3973819 d!1176867))

(declare-fun b!3974128 () Bool)

(declare-fun res!1609204 () Bool)

(declare-fun e!2462099 () Bool)

(assert (=> b!3974128 (=> (not res!1609204) (not e!2462099))))

(assert (=> b!3974128 (= res!1609204 (= (head!8467 lt!1392588) (head!8467 lt!1392593)))))

(declare-fun b!3974127 () Bool)

(declare-fun e!2462101 () Bool)

(assert (=> b!3974127 (= e!2462101 e!2462099)))

(declare-fun res!1609203 () Bool)

(assert (=> b!3974127 (=> (not res!1609203) (not e!2462099))))

(assert (=> b!3974127 (= res!1609203 (not (is-Nil!42439 lt!1392593)))))

(declare-fun b!3974129 () Bool)

(assert (=> b!3974129 (= e!2462099 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 lt!1392593)))))

(declare-fun b!3974130 () Bool)

(declare-fun e!2462100 () Bool)

(assert (=> b!3974130 (= e!2462100 (>= (size!31753 lt!1392593) (size!31753 lt!1392588)))))

(declare-fun d!1176897 () Bool)

(assert (=> d!1176897 e!2462100))

(declare-fun res!1609205 () Bool)

(assert (=> d!1176897 (=> res!1609205 e!2462100)))

(declare-fun lt!1392759 () Bool)

(assert (=> d!1176897 (= res!1609205 (not lt!1392759))))

(assert (=> d!1176897 (= lt!1392759 e!2462101)))

(declare-fun res!1609202 () Bool)

(assert (=> d!1176897 (=> res!1609202 e!2462101)))

(assert (=> d!1176897 (= res!1609202 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176897 (= (isPrefix!3770 lt!1392588 lt!1392593) lt!1392759)))

(assert (= (and d!1176897 (not res!1609202)) b!3974127))

(assert (= (and b!3974127 res!1609203) b!3974128))

(assert (= (and b!3974128 res!1609204) b!3974129))

(assert (= (and d!1176897 (not res!1609205)) b!3974130))

(assert (=> b!3974128 m!4544933))

(declare-fun m!4544943 () Bool)

(assert (=> b!3974128 m!4544943))

(assert (=> b!3974129 m!4544935))

(declare-fun m!4544945 () Bool)

(assert (=> b!3974129 m!4544945))

(assert (=> b!3974129 m!4544935))

(assert (=> b!3974129 m!4544945))

(declare-fun m!4544947 () Bool)

(assert (=> b!3974129 m!4544947))

(declare-fun m!4544949 () Bool)

(assert (=> b!3974130 m!4544949))

(assert (=> b!3974130 m!4544531))

(assert (=> b!3973819 d!1176897))

(declare-fun d!1176899 () Bool)

(assert (=> d!1176899 (isPrefix!3770 lt!1392588 (++!11085 prefix!494 newSuffix!27))))

(declare-fun lt!1392762 () Unit!61089)

(declare-fun choose!23794 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> d!1176899 (= lt!1392762 (choose!23794 lt!1392588 prefix!494 newSuffix!27))))

(assert (=> d!1176899 (isPrefix!3770 lt!1392588 prefix!494)))

(assert (=> d!1176899 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!603 lt!1392588 prefix!494 newSuffix!27) lt!1392762)))

(declare-fun bs!587701 () Bool)

(assert (= bs!587701 d!1176899))

(assert (=> bs!587701 m!4544539))

(assert (=> bs!587701 m!4544539))

(declare-fun m!4544951 () Bool)

(assert (=> bs!587701 m!4544951))

(declare-fun m!4544953 () Bool)

(assert (=> bs!587701 m!4544953))

(assert (=> bs!587701 m!4544509))

(assert (=> b!3973819 d!1176899))

(declare-fun d!1176901 () Bool)

(assert (=> d!1176901 (isPrefix!3770 lt!1392588 (++!11085 prefix!494 suffix!1299))))

(declare-fun lt!1392763 () Unit!61089)

(assert (=> d!1176901 (= lt!1392763 (choose!23794 lt!1392588 prefix!494 suffix!1299))))

(assert (=> d!1176901 (isPrefix!3770 lt!1392588 prefix!494)))

(assert (=> d!1176901 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!603 lt!1392588 prefix!494 suffix!1299) lt!1392763)))

(declare-fun bs!587702 () Bool)

(assert (= bs!587702 d!1176901))

(assert (=> bs!587702 m!4544567))

(assert (=> bs!587702 m!4544567))

(declare-fun m!4544955 () Bool)

(assert (=> bs!587702 m!4544955))

(declare-fun m!4544957 () Bool)

(assert (=> bs!587702 m!4544957))

(assert (=> bs!587702 m!4544509))

(assert (=> b!3973819 d!1176901))

(declare-fun d!1176903 () Bool)

(assert (=> d!1176903 (= (inv!56704 (tag!7543 (rule!9677 token!484))) (= (mod (str.len (value!211100 (tag!7543 (rule!9677 token!484)))) 2) 0))))

(assert (=> b!3973838 d!1176903))

(declare-fun d!1176905 () Bool)

(declare-fun res!1609208 () Bool)

(declare-fun e!2462104 () Bool)

(assert (=> d!1176905 (=> (not res!1609208) (not e!2462104))))

(declare-fun semiInverseModEq!2872 (Int Int) Bool)

(assert (=> d!1176905 (= res!1609208 (semiInverseModEq!2872 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))))))

(assert (=> d!1176905 (= (inv!56707 (transformation!6683 (rule!9677 token!484))) e!2462104)))

(declare-fun b!3974133 () Bool)

(declare-fun equivClasses!2771 (Int Int) Bool)

(assert (=> b!3974133 (= e!2462104 (equivClasses!2771 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))))))

(assert (= (and d!1176905 res!1609208) b!3974133))

(declare-fun m!4544959 () Bool)

(assert (=> d!1176905 m!4544959))

(declare-fun m!4544961 () Bool)

(assert (=> b!3974133 m!4544961))

(assert (=> b!3973838 d!1176905))

(declare-fun b!3974135 () Bool)

(declare-fun res!1609211 () Bool)

(declare-fun e!2462105 () Bool)

(assert (=> b!3974135 (=> (not res!1609211) (not e!2462105))))

(assert (=> b!3974135 (= res!1609211 (= (head!8467 lt!1392588) (head!8467 lt!1392589)))))

(declare-fun b!3974134 () Bool)

(declare-fun e!2462107 () Bool)

(assert (=> b!3974134 (= e!2462107 e!2462105)))

(declare-fun res!1609210 () Bool)

(assert (=> b!3974134 (=> (not res!1609210) (not e!2462105))))

(assert (=> b!3974134 (= res!1609210 (not (is-Nil!42439 lt!1392589)))))

(declare-fun b!3974136 () Bool)

(assert (=> b!3974136 (= e!2462105 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 lt!1392589)))))

(declare-fun b!3974137 () Bool)

(declare-fun e!2462106 () Bool)

(assert (=> b!3974137 (= e!2462106 (>= (size!31753 lt!1392589) (size!31753 lt!1392588)))))

(declare-fun d!1176907 () Bool)

(assert (=> d!1176907 e!2462106))

(declare-fun res!1609212 () Bool)

(assert (=> d!1176907 (=> res!1609212 e!2462106)))

(declare-fun lt!1392764 () Bool)

(assert (=> d!1176907 (= res!1609212 (not lt!1392764))))

(assert (=> d!1176907 (= lt!1392764 e!2462107)))

(declare-fun res!1609209 () Bool)

(assert (=> d!1176907 (=> res!1609209 e!2462107)))

(assert (=> d!1176907 (= res!1609209 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176907 (= (isPrefix!3770 lt!1392588 lt!1392589) lt!1392764)))

(assert (= (and d!1176907 (not res!1609209)) b!3974134))

(assert (= (and b!3974134 res!1609210) b!3974135))

(assert (= (and b!3974135 res!1609211) b!3974136))

(assert (= (and d!1176907 (not res!1609212)) b!3974137))

(assert (=> b!3974135 m!4544933))

(declare-fun m!4544963 () Bool)

(assert (=> b!3974135 m!4544963))

(assert (=> b!3974136 m!4544935))

(declare-fun m!4544965 () Bool)

(assert (=> b!3974136 m!4544965))

(assert (=> b!3974136 m!4544935))

(assert (=> b!3974136 m!4544965))

(declare-fun m!4544967 () Bool)

(assert (=> b!3974136 m!4544967))

(declare-fun m!4544969 () Bool)

(assert (=> b!3974137 m!4544969))

(assert (=> b!3974137 m!4544531))

(assert (=> b!3973839 d!1176907))

(declare-fun b!3974139 () Bool)

(declare-fun res!1609215 () Bool)

(declare-fun e!2462108 () Bool)

(assert (=> b!3974139 (=> (not res!1609215) (not e!2462108))))

(assert (=> b!3974139 (= res!1609215 (= (head!8467 lt!1392588) (head!8467 lt!1392595)))))

(declare-fun b!3974138 () Bool)

(declare-fun e!2462110 () Bool)

(assert (=> b!3974138 (= e!2462110 e!2462108)))

(declare-fun res!1609214 () Bool)

(assert (=> b!3974138 (=> (not res!1609214) (not e!2462108))))

(assert (=> b!3974138 (= res!1609214 (not (is-Nil!42439 lt!1392595)))))

(declare-fun b!3974140 () Bool)

(assert (=> b!3974140 (= e!2462108 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 lt!1392595)))))

(declare-fun b!3974141 () Bool)

(declare-fun e!2462109 () Bool)

(assert (=> b!3974141 (= e!2462109 (>= (size!31753 lt!1392595) (size!31753 lt!1392588)))))

(declare-fun d!1176909 () Bool)

(assert (=> d!1176909 e!2462109))

(declare-fun res!1609216 () Bool)

(assert (=> d!1176909 (=> res!1609216 e!2462109)))

(declare-fun lt!1392765 () Bool)

(assert (=> d!1176909 (= res!1609216 (not lt!1392765))))

(assert (=> d!1176909 (= lt!1392765 e!2462110)))

(declare-fun res!1609213 () Bool)

(assert (=> d!1176909 (=> res!1609213 e!2462110)))

(assert (=> d!1176909 (= res!1609213 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176909 (= (isPrefix!3770 lt!1392588 lt!1392595) lt!1392765)))

(assert (= (and d!1176909 (not res!1609213)) b!3974138))

(assert (= (and b!3974138 res!1609214) b!3974139))

(assert (= (and b!3974139 res!1609215) b!3974140))

(assert (= (and d!1176909 (not res!1609216)) b!3974141))

(assert (=> b!3974139 m!4544933))

(assert (=> b!3974139 m!4544821))

(assert (=> b!3974140 m!4544935))

(assert (=> b!3974140 m!4544817))

(assert (=> b!3974140 m!4544935))

(assert (=> b!3974140 m!4544817))

(declare-fun m!4544971 () Bool)

(assert (=> b!3974140 m!4544971))

(assert (=> b!3974141 m!4544551))

(assert (=> b!3974141 m!4544531))

(assert (=> b!3973839 d!1176909))

(declare-fun d!1176911 () Bool)

(assert (=> d!1176911 (isPrefix!3770 lt!1392588 (++!11085 lt!1392588 suffixResult!105))))

(declare-fun lt!1392768 () Unit!61089)

(declare-fun choose!23796 (List!42563 List!42563) Unit!61089)

(assert (=> d!1176911 (= lt!1392768 (choose!23796 lt!1392588 suffixResult!105))))

(assert (=> d!1176911 (= (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 suffixResult!105) lt!1392768)))

(declare-fun bs!587703 () Bool)

(assert (= bs!587703 d!1176911))

(assert (=> bs!587703 m!4544569))

(assert (=> bs!587703 m!4544569))

(declare-fun m!4544973 () Bool)

(assert (=> bs!587703 m!4544973))

(declare-fun m!4544975 () Bool)

(assert (=> bs!587703 m!4544975))

(assert (=> b!3973839 d!1176911))

(declare-fun b!3974143 () Bool)

(declare-fun res!1609219 () Bool)

(declare-fun e!2462111 () Bool)

(assert (=> b!3974143 (=> (not res!1609219) (not e!2462111))))

(assert (=> b!3974143 (= res!1609219 (= (head!8467 prefix!494) (head!8467 lt!1392595)))))

(declare-fun b!3974142 () Bool)

(declare-fun e!2462113 () Bool)

(assert (=> b!3974142 (= e!2462113 e!2462111)))

(declare-fun res!1609218 () Bool)

(assert (=> b!3974142 (=> (not res!1609218) (not e!2462111))))

(assert (=> b!3974142 (= res!1609218 (not (is-Nil!42439 lt!1392595)))))

(declare-fun b!3974144 () Bool)

(assert (=> b!3974144 (= e!2462111 (isPrefix!3770 (tail!6199 prefix!494) (tail!6199 lt!1392595)))))

(declare-fun b!3974145 () Bool)

(declare-fun e!2462112 () Bool)

(assert (=> b!3974145 (= e!2462112 (>= (size!31753 lt!1392595) (size!31753 prefix!494)))))

(declare-fun d!1176913 () Bool)

(assert (=> d!1176913 e!2462112))

(declare-fun res!1609220 () Bool)

(assert (=> d!1176913 (=> res!1609220 e!2462112)))

(declare-fun lt!1392769 () Bool)

(assert (=> d!1176913 (= res!1609220 (not lt!1392769))))

(assert (=> d!1176913 (= lt!1392769 e!2462113)))

(declare-fun res!1609217 () Bool)

(assert (=> d!1176913 (=> res!1609217 e!2462113)))

(assert (=> d!1176913 (= res!1609217 (is-Nil!42439 prefix!494))))

(assert (=> d!1176913 (= (isPrefix!3770 prefix!494 lt!1392595) lt!1392769)))

(assert (= (and d!1176913 (not res!1609217)) b!3974142))

(assert (= (and b!3974142 res!1609218) b!3974143))

(assert (= (and b!3974143 res!1609219) b!3974144))

(assert (= (and d!1176913 (not res!1609220)) b!3974145))

(declare-fun m!4544977 () Bool)

(assert (=> b!3974143 m!4544977))

(assert (=> b!3974143 m!4544821))

(declare-fun m!4544979 () Bool)

(assert (=> b!3974144 m!4544979))

(assert (=> b!3974144 m!4544817))

(assert (=> b!3974144 m!4544979))

(assert (=> b!3974144 m!4544817))

(declare-fun m!4544981 () Bool)

(assert (=> b!3974144 m!4544981))

(assert (=> b!3974145 m!4544551))

(assert (=> b!3974145 m!4544533))

(assert (=> b!3973839 d!1176913))

(declare-fun d!1176915 () Bool)

(assert (=> d!1176915 (isPrefix!3770 prefix!494 (++!11085 prefix!494 suffix!1299))))

(declare-fun lt!1392770 () Unit!61089)

(assert (=> d!1176915 (= lt!1392770 (choose!23796 prefix!494 suffix!1299))))

(assert (=> d!1176915 (= (lemmaConcatTwoListThenFirstIsPrefix!2613 prefix!494 suffix!1299) lt!1392770)))

(declare-fun bs!587704 () Bool)

(assert (= bs!587704 d!1176915))

(assert (=> bs!587704 m!4544567))

(assert (=> bs!587704 m!4544567))

(declare-fun m!4544983 () Bool)

(assert (=> bs!587704 m!4544983))

(declare-fun m!4544985 () Bool)

(assert (=> bs!587704 m!4544985))

(assert (=> b!3973839 d!1176915))

(declare-fun d!1176917 () Bool)

(declare-fun res!1609223 () Bool)

(declare-fun e!2462116 () Bool)

(assert (=> d!1176917 (=> (not res!1609223) (not e!2462116))))

(declare-fun rulesValid!2606 (LexerInterface!6272 List!42565) Bool)

(assert (=> d!1176917 (= res!1609223 (rulesValid!2606 thiss!21717 rules!2999))))

(assert (=> d!1176917 (= (rulesInvariant!5615 thiss!21717 rules!2999) e!2462116)))

(declare-fun b!3974148 () Bool)

(declare-datatypes ((List!42569 0))(
  ( (Nil!42445) (Cons!42445 (h!47865 String!48285) (t!331032 List!42569)) )
))
(declare-fun noDuplicateTag!2607 (LexerInterface!6272 List!42565 List!42569) Bool)

(assert (=> b!3974148 (= e!2462116 (noDuplicateTag!2607 thiss!21717 rules!2999 Nil!42445))))

(assert (= (and d!1176917 res!1609223) b!3974148))

(declare-fun m!4544989 () Bool)

(assert (=> d!1176917 m!4544989))

(declare-fun m!4544991 () Bool)

(assert (=> b!3974148 m!4544991))

(assert (=> b!3973837 d!1176917))

(declare-fun d!1176921 () Bool)

(assert (=> d!1176921 (= (inv!56704 (tag!7543 (h!47861 rules!2999))) (= (mod (str.len (value!211100 (tag!7543 (h!47861 rules!2999)))) 2) 0))))

(assert (=> b!3973826 d!1176921))

(declare-fun d!1176923 () Bool)

(declare-fun res!1609224 () Bool)

(declare-fun e!2462117 () Bool)

(assert (=> d!1176923 (=> (not res!1609224) (not e!2462117))))

(assert (=> d!1176923 (= res!1609224 (semiInverseModEq!2872 (toChars!9030 (transformation!6683 (h!47861 rules!2999))) (toValue!9171 (transformation!6683 (h!47861 rules!2999)))))))

(assert (=> d!1176923 (= (inv!56707 (transformation!6683 (h!47861 rules!2999))) e!2462117)))

(declare-fun b!3974149 () Bool)

(assert (=> b!3974149 (= e!2462117 (equivClasses!2771 (toChars!9030 (transformation!6683 (h!47861 rules!2999))) (toValue!9171 (transformation!6683 (h!47861 rules!2999)))))))

(assert (= (and d!1176923 res!1609224) b!3974149))

(declare-fun m!4544993 () Bool)

(assert (=> d!1176923 m!4544993))

(declare-fun m!4544995 () Bool)

(assert (=> b!3974149 m!4544995))

(assert (=> b!3973826 d!1176923))

(declare-fun d!1176925 () Bool)

(declare-fun fromListB!2267 (List!42563) BalanceConc!25382)

(assert (=> d!1176925 (= (seqFromList!4922 lt!1392588) (fromListB!2267 lt!1392588))))

(declare-fun bs!587707 () Bool)

(assert (= bs!587707 d!1176925))

(declare-fun m!4545005 () Bool)

(assert (=> bs!587707 m!4545005))

(assert (=> b!3973825 d!1176925))

(declare-fun d!1176931 () Bool)

(assert (=> d!1176931 (isPrefix!3770 lt!1392588 (++!11085 lt!1392588 lt!1392611))))

(declare-fun lt!1392776 () Unit!61089)

(assert (=> d!1176931 (= lt!1392776 (choose!23796 lt!1392588 lt!1392611))))

(assert (=> d!1176931 (= (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 lt!1392611) lt!1392776)))

(declare-fun bs!587708 () Bool)

(assert (= bs!587708 d!1176931))

(assert (=> bs!587708 m!4544513))

(assert (=> bs!587708 m!4544513))

(declare-fun m!4545011 () Bool)

(assert (=> bs!587708 m!4545011))

(declare-fun m!4545013 () Bool)

(assert (=> bs!587708 m!4545013))

(assert (=> b!3973825 d!1176931))

(declare-fun b!3974157 () Bool)

(declare-fun res!1609231 () Bool)

(declare-fun e!2462124 () Bool)

(assert (=> b!3974157 (=> (not res!1609231) (not e!2462124))))

(assert (=> b!3974157 (= res!1609231 (= (head!8467 lt!1392588) (head!8467 lt!1392613)))))

(declare-fun b!3974156 () Bool)

(declare-fun e!2462126 () Bool)

(assert (=> b!3974156 (= e!2462126 e!2462124)))

(declare-fun res!1609230 () Bool)

(assert (=> b!3974156 (=> (not res!1609230) (not e!2462124))))

(assert (=> b!3974156 (= res!1609230 (not (is-Nil!42439 lt!1392613)))))

(declare-fun b!3974158 () Bool)

(assert (=> b!3974158 (= e!2462124 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 lt!1392613)))))

(declare-fun b!3974159 () Bool)

(declare-fun e!2462125 () Bool)

(assert (=> b!3974159 (= e!2462125 (>= (size!31753 lt!1392613) (size!31753 lt!1392588)))))

(declare-fun d!1176933 () Bool)

(assert (=> d!1176933 e!2462125))

(declare-fun res!1609232 () Bool)

(assert (=> d!1176933 (=> res!1609232 e!2462125)))

(declare-fun lt!1392777 () Bool)

(assert (=> d!1176933 (= res!1609232 (not lt!1392777))))

(assert (=> d!1176933 (= lt!1392777 e!2462126)))

(declare-fun res!1609229 () Bool)

(assert (=> d!1176933 (=> res!1609229 e!2462126)))

(assert (=> d!1176933 (= res!1609229 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176933 (= (isPrefix!3770 lt!1392588 lt!1392613) lt!1392777)))

(assert (= (and d!1176933 (not res!1609229)) b!3974156))

(assert (= (and b!3974156 res!1609230) b!3974157))

(assert (= (and b!3974157 res!1609231) b!3974158))

(assert (= (and d!1176933 (not res!1609232)) b!3974159))

(assert (=> b!3974157 m!4544933))

(declare-fun m!4545019 () Bool)

(assert (=> b!3974157 m!4545019))

(assert (=> b!3974158 m!4544935))

(declare-fun m!4545021 () Bool)

(assert (=> b!3974158 m!4545021))

(assert (=> b!3974158 m!4544935))

(assert (=> b!3974158 m!4545021))

(declare-fun m!4545023 () Bool)

(assert (=> b!3974158 m!4545023))

(declare-fun m!4545025 () Bool)

(assert (=> b!3974159 m!4545025))

(assert (=> b!3974159 m!4544531))

(assert (=> b!3973825 d!1176933))

(declare-fun d!1176937 () Bool)

(assert (=> d!1176937 (= (maxPrefixOneRule!2604 thiss!21717 (rule!9677 token!484) lt!1392595) (Some!9096 (tuple2!41691 (Token!12505 (apply!9894 (transformation!6683 (rule!9677 token!484)) (seqFromList!4922 lt!1392588)) (rule!9677 token!484) (size!31753 lt!1392588) lt!1392588) suffixResult!105)))))

(declare-fun lt!1392780 () Unit!61089)

(declare-fun choose!23797 (LexerInterface!6272 List!42565 List!42563 List!42563 List!42563 Rule!13166) Unit!61089)

(assert (=> d!1176937 (= lt!1392780 (choose!23797 thiss!21717 rules!2999 lt!1392588 lt!1392595 suffixResult!105 (rule!9677 token!484)))))

(assert (=> d!1176937 (not (isEmpty!25385 rules!2999))))

(assert (=> d!1176937 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1426 thiss!21717 rules!2999 lt!1392588 lt!1392595 suffixResult!105 (rule!9677 token!484)) lt!1392780)))

(declare-fun bs!587710 () Bool)

(assert (= bs!587710 d!1176937))

(declare-fun m!4545029 () Bool)

(assert (=> bs!587710 m!4545029))

(assert (=> bs!587710 m!4544531))

(assert (=> bs!587710 m!4544579))

(assert (=> bs!587710 m!4544529))

(assert (=> bs!587710 m!4544585))

(assert (=> bs!587710 m!4544587))

(assert (=> bs!587710 m!4544585))

(assert (=> b!3973825 d!1176937))

(declare-fun d!1176941 () Bool)

(declare-fun dynLambda!18083 (Int BalanceConc!25382) TokenValue!6913)

(assert (=> d!1176941 (= (apply!9894 (transformation!6683 (rule!9677 token!484)) (seqFromList!4922 lt!1392588)) (dynLambda!18083 (toValue!9171 (transformation!6683 (rule!9677 token!484))) (seqFromList!4922 lt!1392588)))))

(declare-fun b_lambda!116139 () Bool)

(assert (=> (not b_lambda!116139) (not d!1176941)))

(declare-fun t!331017 () Bool)

(declare-fun tb!239709 () Bool)

(assert (=> (and b!3973828 (= (toValue!9171 (transformation!6683 (rule!9677 token!484))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))) t!331017) tb!239709))

(declare-fun result!290314 () Bool)

(assert (=> tb!239709 (= result!290314 (inv!21 (dynLambda!18083 (toValue!9171 (transformation!6683 (rule!9677 token!484))) (seqFromList!4922 lt!1392588))))))

(declare-fun m!4545031 () Bool)

(assert (=> tb!239709 m!4545031))

(assert (=> d!1176941 t!331017))

(declare-fun b_and!305503 () Bool)

(assert (= b_and!305479 (and (=> t!331017 result!290314) b_and!305503)))

(declare-fun t!331019 () Bool)

(declare-fun tb!239711 () Bool)

(assert (=> (and b!3973817 (= (toValue!9171 (transformation!6683 (h!47861 rules!2999))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))) t!331019) tb!239711))

(declare-fun result!290318 () Bool)

(assert (= result!290318 result!290314))

(assert (=> d!1176941 t!331019))

(declare-fun b_and!305505 () Bool)

(assert (= b_and!305483 (and (=> t!331019 result!290318) b_and!305505)))

(assert (=> d!1176941 m!4544585))

(declare-fun m!4545033 () Bool)

(assert (=> d!1176941 m!4545033))

(assert (=> b!3973825 d!1176941))

(declare-fun d!1176943 () Bool)

(assert (=> d!1176943 (= lt!1392611 suffixResult!105)))

(declare-fun lt!1392783 () Unit!61089)

(declare-fun choose!23798 (List!42563 List!42563 List!42563 List!42563 List!42563) Unit!61089)

(assert (=> d!1176943 (= lt!1392783 (choose!23798 lt!1392588 lt!1392611 lt!1392588 suffixResult!105 lt!1392595))))

(assert (=> d!1176943 (isPrefix!3770 lt!1392588 lt!1392595)))

(assert (=> d!1176943 (= (lemmaSamePrefixThenSameSuffix!1957 lt!1392588 lt!1392611 lt!1392588 suffixResult!105 lt!1392595) lt!1392783)))

(declare-fun bs!587711 () Bool)

(assert (= bs!587711 d!1176943))

(declare-fun m!4545035 () Bool)

(assert (=> bs!587711 m!4545035))

(assert (=> bs!587711 m!4544501))

(assert (=> b!3973825 d!1176943))

(declare-fun b!3974239 () Bool)

(declare-fun res!1609284 () Bool)

(declare-fun e!2462172 () Bool)

(assert (=> b!3974239 (=> (not res!1609284) (not e!2462172))))

(declare-fun lt!1392824 () Option!9097)

(declare-fun get!13983 (Option!9097) tuple2!41690)

(assert (=> b!3974239 (= res!1609284 (= (++!11085 (list!15749 (charsOf!4499 (_1!23979 (get!13983 lt!1392824)))) (_2!23979 (get!13983 lt!1392824))) lt!1392595))))

(declare-fun b!3974240 () Bool)

(declare-fun res!1609285 () Bool)

(assert (=> b!3974240 (=> (not res!1609285) (not e!2462172))))

(assert (=> b!3974240 (= res!1609285 (< (size!31753 (_2!23979 (get!13983 lt!1392824))) (size!31753 lt!1392595)))))

(declare-fun b!3974241 () Bool)

(declare-fun e!2462170 () Option!9097)

(assert (=> b!3974241 (= e!2462170 None!9096)))

(declare-fun d!1176945 () Bool)

(declare-fun e!2462173 () Bool)

(assert (=> d!1176945 e!2462173))

(declare-fun res!1609280 () Bool)

(assert (=> d!1176945 (=> res!1609280 e!2462173)))

(declare-fun isEmpty!25389 (Option!9097) Bool)

(assert (=> d!1176945 (= res!1609280 (isEmpty!25389 lt!1392824))))

(assert (=> d!1176945 (= lt!1392824 e!2462170)))

(declare-fun c!689089 () Bool)

(declare-datatypes ((tuple2!41694 0))(
  ( (tuple2!41695 (_1!23981 List!42563) (_2!23981 List!42563)) )
))
(declare-fun lt!1392823 () tuple2!41694)

(assert (=> d!1176945 (= c!689089 (isEmpty!25388 (_1!23981 lt!1392823)))))

(declare-fun findLongestMatch!1222 (Regex!11588 List!42563) tuple2!41694)

(assert (=> d!1176945 (= lt!1392823 (findLongestMatch!1222 (regex!6683 (rule!9677 token!484)) lt!1392595))))

(assert (=> d!1176945 (ruleValid!2615 thiss!21717 (rule!9677 token!484))))

(assert (=> d!1176945 (= (maxPrefixOneRule!2604 thiss!21717 (rule!9677 token!484) lt!1392595) lt!1392824)))

(declare-fun b!3974242 () Bool)

(declare-fun e!2462171 () Bool)

(declare-fun findLongestMatchInner!1309 (Regex!11588 List!42563 Int List!42563 List!42563 Int) tuple2!41694)

(assert (=> b!3974242 (= e!2462171 (matchR!5565 (regex!6683 (rule!9677 token!484)) (_1!23981 (findLongestMatchInner!1309 (regex!6683 (rule!9677 token!484)) Nil!42439 (size!31753 Nil!42439) lt!1392595 lt!1392595 (size!31753 lt!1392595)))))))

(declare-fun b!3974243 () Bool)

(assert (=> b!3974243 (= e!2462173 e!2462172)))

(declare-fun res!1609286 () Bool)

(assert (=> b!3974243 (=> (not res!1609286) (not e!2462172))))

(assert (=> b!3974243 (= res!1609286 (matchR!5565 (regex!6683 (rule!9677 token!484)) (list!15749 (charsOf!4499 (_1!23979 (get!13983 lt!1392824))))))))

(declare-fun b!3974244 () Bool)

(declare-fun size!31756 (BalanceConc!25382) Int)

(assert (=> b!3974244 (= e!2462170 (Some!9096 (tuple2!41691 (Token!12505 (apply!9894 (transformation!6683 (rule!9677 token!484)) (seqFromList!4922 (_1!23981 lt!1392823))) (rule!9677 token!484) (size!31756 (seqFromList!4922 (_1!23981 lt!1392823))) (_1!23981 lt!1392823)) (_2!23981 lt!1392823))))))

(declare-fun lt!1392821 () Unit!61089)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1282 (Regex!11588 List!42563) Unit!61089)

(assert (=> b!3974244 (= lt!1392821 (longestMatchIsAcceptedByMatchOrIsEmpty!1282 (regex!6683 (rule!9677 token!484)) lt!1392595))))

(declare-fun res!1609282 () Bool)

(assert (=> b!3974244 (= res!1609282 (isEmpty!25388 (_1!23981 (findLongestMatchInner!1309 (regex!6683 (rule!9677 token!484)) Nil!42439 (size!31753 Nil!42439) lt!1392595 lt!1392595 (size!31753 lt!1392595)))))))

(assert (=> b!3974244 (=> res!1609282 e!2462171)))

(assert (=> b!3974244 e!2462171))

(declare-fun lt!1392822 () Unit!61089)

(assert (=> b!3974244 (= lt!1392822 lt!1392821)))

(declare-fun lt!1392820 () Unit!61089)

(declare-fun lemmaSemiInverse!1819 (TokenValueInjection!13254 BalanceConc!25382) Unit!61089)

(assert (=> b!3974244 (= lt!1392820 (lemmaSemiInverse!1819 (transformation!6683 (rule!9677 token!484)) (seqFromList!4922 (_1!23981 lt!1392823))))))

(declare-fun b!3974245 () Bool)

(declare-fun res!1609283 () Bool)

(assert (=> b!3974245 (=> (not res!1609283) (not e!2462172))))

(assert (=> b!3974245 (= res!1609283 (= (value!211101 (_1!23979 (get!13983 lt!1392824))) (apply!9894 (transformation!6683 (rule!9677 (_1!23979 (get!13983 lt!1392824)))) (seqFromList!4922 (originalCharacters!7283 (_1!23979 (get!13983 lt!1392824)))))))))

(declare-fun b!3974246 () Bool)

(assert (=> b!3974246 (= e!2462172 (= (size!31752 (_1!23979 (get!13983 lt!1392824))) (size!31753 (originalCharacters!7283 (_1!23979 (get!13983 lt!1392824))))))))

(declare-fun b!3974247 () Bool)

(declare-fun res!1609281 () Bool)

(assert (=> b!3974247 (=> (not res!1609281) (not e!2462172))))

(assert (=> b!3974247 (= res!1609281 (= (rule!9677 (_1!23979 (get!13983 lt!1392824))) (rule!9677 token!484)))))

(assert (= (and d!1176945 c!689089) b!3974241))

(assert (= (and d!1176945 (not c!689089)) b!3974244))

(assert (= (and b!3974244 (not res!1609282)) b!3974242))

(assert (= (and d!1176945 (not res!1609280)) b!3974243))

(assert (= (and b!3974243 res!1609286) b!3974239))

(assert (= (and b!3974239 res!1609284) b!3974240))

(assert (= (and b!3974240 res!1609285) b!3974247))

(assert (= (and b!3974247 res!1609281) b!3974245))

(assert (= (and b!3974245 res!1609283) b!3974246))

(declare-fun m!4545115 () Bool)

(assert (=> b!3974242 m!4545115))

(assert (=> b!3974242 m!4544551))

(assert (=> b!3974242 m!4545115))

(assert (=> b!3974242 m!4544551))

(declare-fun m!4545117 () Bool)

(assert (=> b!3974242 m!4545117))

(declare-fun m!4545119 () Bool)

(assert (=> b!3974242 m!4545119))

(declare-fun m!4545121 () Bool)

(assert (=> b!3974246 m!4545121))

(declare-fun m!4545123 () Bool)

(assert (=> b!3974246 m!4545123))

(declare-fun m!4545125 () Bool)

(assert (=> b!3974244 m!4545125))

(declare-fun m!4545127 () Bool)

(assert (=> b!3974244 m!4545127))

(declare-fun m!4545129 () Bool)

(assert (=> b!3974244 m!4545129))

(assert (=> b!3974244 m!4545127))

(assert (=> b!3974244 m!4545127))

(declare-fun m!4545131 () Bool)

(assert (=> b!3974244 m!4545131))

(assert (=> b!3974244 m!4545115))

(assert (=> b!3974244 m!4544551))

(assert (=> b!3974244 m!4545117))

(declare-fun m!4545133 () Bool)

(assert (=> b!3974244 m!4545133))

(assert (=> b!3974244 m!4545127))

(declare-fun m!4545135 () Bool)

(assert (=> b!3974244 m!4545135))

(assert (=> b!3974244 m!4544551))

(assert (=> b!3974244 m!4545115))

(assert (=> b!3974245 m!4545121))

(declare-fun m!4545137 () Bool)

(assert (=> b!3974245 m!4545137))

(assert (=> b!3974245 m!4545137))

(declare-fun m!4545139 () Bool)

(assert (=> b!3974245 m!4545139))

(declare-fun m!4545141 () Bool)

(assert (=> d!1176945 m!4545141))

(declare-fun m!4545143 () Bool)

(assert (=> d!1176945 m!4545143))

(declare-fun m!4545145 () Bool)

(assert (=> d!1176945 m!4545145))

(assert (=> d!1176945 m!4544573))

(assert (=> b!3974243 m!4545121))

(declare-fun m!4545147 () Bool)

(assert (=> b!3974243 m!4545147))

(assert (=> b!3974243 m!4545147))

(declare-fun m!4545149 () Bool)

(assert (=> b!3974243 m!4545149))

(assert (=> b!3974243 m!4545149))

(declare-fun m!4545151 () Bool)

(assert (=> b!3974243 m!4545151))

(assert (=> b!3974240 m!4545121))

(declare-fun m!4545153 () Bool)

(assert (=> b!3974240 m!4545153))

(assert (=> b!3974240 m!4544551))

(assert (=> b!3974247 m!4545121))

(assert (=> b!3974239 m!4545121))

(assert (=> b!3974239 m!4545147))

(assert (=> b!3974239 m!4545147))

(assert (=> b!3974239 m!4545149))

(assert (=> b!3974239 m!4545149))

(declare-fun m!4545157 () Bool)

(assert (=> b!3974239 m!4545157))

(assert (=> b!3973825 d!1176945))

(declare-fun d!1176977 () Bool)

(declare-fun res!1609296 () Bool)

(declare-fun e!2462181 () Bool)

(assert (=> d!1176977 (=> (not res!1609296) (not e!2462181))))

(assert (=> d!1176977 (= res!1609296 (not (isEmpty!25388 (originalCharacters!7283 token!484))))))

(assert (=> d!1176977 (= (inv!56708 token!484) e!2462181)))

(declare-fun b!3974259 () Bool)

(declare-fun res!1609297 () Bool)

(assert (=> b!3974259 (=> (not res!1609297) (not e!2462181))))

(declare-fun dynLambda!18085 (Int TokenValue!6913) BalanceConc!25382)

(assert (=> b!3974259 (= res!1609297 (= (originalCharacters!7283 token!484) (list!15749 (dynLambda!18085 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (value!211101 token!484)))))))

(declare-fun b!3974260 () Bool)

(assert (=> b!3974260 (= e!2462181 (= (size!31752 token!484) (size!31753 (originalCharacters!7283 token!484))))))

(assert (= (and d!1176977 res!1609296) b!3974259))

(assert (= (and b!3974259 res!1609297) b!3974260))

(declare-fun b_lambda!116143 () Bool)

(assert (=> (not b_lambda!116143) (not b!3974259)))

(declare-fun t!331021 () Bool)

(declare-fun tb!239713 () Bool)

(assert (=> (and b!3973828 (= (toChars!9030 (transformation!6683 (rule!9677 token!484))) (toChars!9030 (transformation!6683 (rule!9677 token!484)))) t!331021) tb!239713))

(declare-fun b!3974266 () Bool)

(declare-fun e!2462185 () Bool)

(declare-fun tp!1211704 () Bool)

(declare-fun inv!56713 (Conc!12894) Bool)

(assert (=> b!3974266 (= e!2462185 (and (inv!56713 (c!689029 (dynLambda!18085 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (value!211101 token!484)))) tp!1211704))))

(declare-fun result!290320 () Bool)

(declare-fun inv!56714 (BalanceConc!25382) Bool)

(assert (=> tb!239713 (= result!290320 (and (inv!56714 (dynLambda!18085 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (value!211101 token!484))) e!2462185))))

(assert (= tb!239713 b!3974266))

(declare-fun m!4545173 () Bool)

(assert (=> b!3974266 m!4545173))

(declare-fun m!4545175 () Bool)

(assert (=> tb!239713 m!4545175))

(assert (=> b!3974259 t!331021))

(declare-fun b_and!305511 () Bool)

(assert (= b_and!305481 (and (=> t!331021 result!290320) b_and!305511)))

(declare-fun tb!239715 () Bool)

(declare-fun t!331023 () Bool)

(assert (=> (and b!3973817 (= (toChars!9030 (transformation!6683 (h!47861 rules!2999))) (toChars!9030 (transformation!6683 (rule!9677 token!484)))) t!331023) tb!239715))

(declare-fun result!290324 () Bool)

(assert (= result!290324 result!290320))

(assert (=> b!3974259 t!331023))

(declare-fun b_and!305513 () Bool)

(assert (= b_and!305485 (and (=> t!331023 result!290324) b_and!305513)))

(declare-fun m!4545177 () Bool)

(assert (=> d!1176977 m!4545177))

(declare-fun m!4545179 () Bool)

(assert (=> b!3974259 m!4545179))

(assert (=> b!3974259 m!4545179))

(declare-fun m!4545181 () Bool)

(assert (=> b!3974259 m!4545181))

(assert (=> b!3974260 m!4544503))

(assert (=> start!373986 d!1176977))

(declare-fun d!1176985 () Bool)

(assert (=> d!1176985 (= (isEmpty!25385 rules!2999) (is-Nil!42441 rules!2999))))

(assert (=> b!3973836 d!1176985))

(declare-fun b!3974273 () Bool)

(declare-fun res!1609303 () Bool)

(declare-fun e!2462188 () Bool)

(assert (=> b!3974273 (=> (not res!1609303) (not e!2462188))))

(declare-fun lt!1392829 () List!42563)

(assert (=> b!3974273 (= res!1609303 (= (size!31753 lt!1392829) (+ (size!31753 lt!1392588) (size!31753 lt!1392590))))))

(declare-fun b!3974271 () Bool)

(declare-fun e!2462189 () List!42563)

(assert (=> b!3974271 (= e!2462189 lt!1392590)))

(declare-fun b!3974272 () Bool)

(assert (=> b!3974272 (= e!2462189 (Cons!42439 (h!47859 lt!1392588) (++!11085 (t!331002 lt!1392588) lt!1392590)))))

(declare-fun b!3974274 () Bool)

(assert (=> b!3974274 (= e!2462188 (or (not (= lt!1392590 Nil!42439)) (= lt!1392829 lt!1392588)))))

(declare-fun d!1176987 () Bool)

(assert (=> d!1176987 e!2462188))

(declare-fun res!1609304 () Bool)

(assert (=> d!1176987 (=> (not res!1609304) (not e!2462188))))

(assert (=> d!1176987 (= res!1609304 (= (content!6440 lt!1392829) (set.union (content!6440 lt!1392588) (content!6440 lt!1392590))))))

(assert (=> d!1176987 (= lt!1392829 e!2462189)))

(declare-fun c!689091 () Bool)

(assert (=> d!1176987 (= c!689091 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176987 (= (++!11085 lt!1392588 lt!1392590) lt!1392829)))

(assert (= (and d!1176987 c!689091) b!3974271))

(assert (= (and d!1176987 (not c!689091)) b!3974272))

(assert (= (and d!1176987 res!1609304) b!3974273))

(assert (= (and b!3974273 res!1609303) b!3974274))

(declare-fun m!4545183 () Bool)

(assert (=> b!3974273 m!4545183))

(assert (=> b!3974273 m!4544531))

(assert (=> b!3974273 m!4544745))

(declare-fun m!4545185 () Bool)

(assert (=> b!3974272 m!4545185))

(declare-fun m!4545187 () Bool)

(assert (=> d!1176987 m!4545187))

(assert (=> d!1176987 m!4544725))

(assert (=> d!1176987 m!4544751))

(assert (=> b!3973845 d!1176987))

(declare-fun d!1176989 () Bool)

(declare-fun lt!1392830 () List!42563)

(assert (=> d!1176989 (= (++!11085 lt!1392588 lt!1392830) prefix!494)))

(declare-fun e!2462191 () List!42563)

(assert (=> d!1176989 (= lt!1392830 e!2462191)))

(declare-fun c!689092 () Bool)

(assert (=> d!1176989 (= c!689092 (is-Cons!42439 lt!1392588))))

(assert (=> d!1176989 (>= (size!31753 prefix!494) (size!31753 lt!1392588))))

(assert (=> d!1176989 (= (getSuffix!2201 prefix!494 lt!1392588) lt!1392830)))

(declare-fun b!3974277 () Bool)

(assert (=> b!3974277 (= e!2462191 (getSuffix!2201 (tail!6199 prefix!494) (t!331002 lt!1392588)))))

(declare-fun b!3974278 () Bool)

(assert (=> b!3974278 (= e!2462191 prefix!494)))

(assert (= (and d!1176989 c!689092) b!3974277))

(assert (= (and d!1176989 (not c!689092)) b!3974278))

(declare-fun m!4545193 () Bool)

(assert (=> d!1176989 m!4545193))

(assert (=> d!1176989 m!4544533))

(assert (=> d!1176989 m!4544531))

(assert (=> b!3974277 m!4544979))

(assert (=> b!3974277 m!4544979))

(declare-fun m!4545195 () Bool)

(assert (=> b!3974277 m!4545195))

(assert (=> b!3973845 d!1176989))

(declare-fun b!3974280 () Bool)

(declare-fun res!1609309 () Bool)

(declare-fun e!2462192 () Bool)

(assert (=> b!3974280 (=> (not res!1609309) (not e!2462192))))

(assert (=> b!3974280 (= res!1609309 (= (head!8467 lt!1392588) (head!8467 prefix!494)))))

(declare-fun b!3974279 () Bool)

(declare-fun e!2462194 () Bool)

(assert (=> b!3974279 (= e!2462194 e!2462192)))

(declare-fun res!1609308 () Bool)

(assert (=> b!3974279 (=> (not res!1609308) (not e!2462192))))

(assert (=> b!3974279 (= res!1609308 (not (is-Nil!42439 prefix!494)))))

(declare-fun b!3974281 () Bool)

(assert (=> b!3974281 (= e!2462192 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 prefix!494)))))

(declare-fun b!3974282 () Bool)

(declare-fun e!2462193 () Bool)

(assert (=> b!3974282 (= e!2462193 (>= (size!31753 prefix!494) (size!31753 lt!1392588)))))

(declare-fun d!1176993 () Bool)

(assert (=> d!1176993 e!2462193))

(declare-fun res!1609310 () Bool)

(assert (=> d!1176993 (=> res!1609310 e!2462193)))

(declare-fun lt!1392831 () Bool)

(assert (=> d!1176993 (= res!1609310 (not lt!1392831))))

(assert (=> d!1176993 (= lt!1392831 e!2462194)))

(declare-fun res!1609307 () Bool)

(assert (=> d!1176993 (=> res!1609307 e!2462194)))

(assert (=> d!1176993 (= res!1609307 (is-Nil!42439 lt!1392588))))

(assert (=> d!1176993 (= (isPrefix!3770 lt!1392588 prefix!494) lt!1392831)))

(assert (= (and d!1176993 (not res!1609307)) b!3974279))

(assert (= (and b!3974279 res!1609308) b!3974280))

(assert (= (and b!3974280 res!1609309) b!3974281))

(assert (= (and d!1176993 (not res!1609310)) b!3974282))

(assert (=> b!3974280 m!4544933))

(assert (=> b!3974280 m!4544977))

(assert (=> b!3974281 m!4544935))

(assert (=> b!3974281 m!4544979))

(assert (=> b!3974281 m!4544935))

(assert (=> b!3974281 m!4544979))

(declare-fun m!4545197 () Bool)

(assert (=> b!3974281 m!4545197))

(assert (=> b!3974282 m!4544533))

(assert (=> b!3974282 m!4544531))

(assert (=> b!3973845 d!1176993))

(declare-fun d!1176995 () Bool)

(assert (=> d!1176995 (isPrefix!3770 lt!1392588 prefix!494)))

(declare-fun lt!1392837 () Unit!61089)

(declare-fun choose!23800 (List!42563 List!42563 List!42563) Unit!61089)

(assert (=> d!1176995 (= lt!1392837 (choose!23800 prefix!494 lt!1392588 lt!1392595))))

(assert (=> d!1176995 (isPrefix!3770 prefix!494 lt!1392595)))

(assert (=> d!1176995 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!348 prefix!494 lt!1392588 lt!1392595) lt!1392837)))

(declare-fun bs!587716 () Bool)

(assert (= bs!587716 d!1176995))

(assert (=> bs!587716 m!4544509))

(declare-fun m!4545203 () Bool)

(assert (=> bs!587716 m!4545203))

(assert (=> bs!587716 m!4544493))

(assert (=> b!3973845 d!1176995))

(declare-fun b!3974301 () Bool)

(declare-fun res!1609329 () Bool)

(declare-fun e!2462202 () Bool)

(assert (=> b!3974301 (=> (not res!1609329) (not e!2462202))))

(declare-fun lt!1392851 () Option!9097)

(assert (=> b!3974301 (= res!1609329 (= (list!15749 (charsOf!4499 (_1!23979 (get!13983 lt!1392851)))) (originalCharacters!7283 (_1!23979 (get!13983 lt!1392851)))))))

(declare-fun b!3974302 () Bool)

(declare-fun contains!8454 (List!42565 Rule!13166) Bool)

(assert (=> b!3974302 (= e!2462202 (contains!8454 rules!2999 (rule!9677 (_1!23979 (get!13983 lt!1392851)))))))

(declare-fun b!3974303 () Bool)

(declare-fun res!1609330 () Bool)

(assert (=> b!3974303 (=> (not res!1609330) (not e!2462202))))

(assert (=> b!3974303 (= res!1609330 (= (value!211101 (_1!23979 (get!13983 lt!1392851))) (apply!9894 (transformation!6683 (rule!9677 (_1!23979 (get!13983 lt!1392851)))) (seqFromList!4922 (originalCharacters!7283 (_1!23979 (get!13983 lt!1392851)))))))))

(declare-fun b!3974304 () Bool)

(declare-fun res!1609327 () Bool)

(assert (=> b!3974304 (=> (not res!1609327) (not e!2462202))))

(assert (=> b!3974304 (= res!1609327 (< (size!31753 (_2!23979 (get!13983 lt!1392851))) (size!31753 lt!1392595)))))

(declare-fun call!285654 () Option!9097)

(declare-fun bm!285649 () Bool)

(assert (=> bm!285649 (= call!285654 (maxPrefixOneRule!2604 thiss!21717 (h!47861 rules!2999) lt!1392595))))

(declare-fun b!3974306 () Bool)

(declare-fun e!2462203 () Option!9097)

(declare-fun lt!1392852 () Option!9097)

(declare-fun lt!1392848 () Option!9097)

(assert (=> b!3974306 (= e!2462203 (ite (and (is-None!9096 lt!1392852) (is-None!9096 lt!1392848)) None!9096 (ite (is-None!9096 lt!1392848) lt!1392852 (ite (is-None!9096 lt!1392852) lt!1392848 (ite (>= (size!31752 (_1!23979 (v!39444 lt!1392852))) (size!31752 (_1!23979 (v!39444 lt!1392848)))) lt!1392852 lt!1392848)))))))

(assert (=> b!3974306 (= lt!1392852 call!285654)))

(assert (=> b!3974306 (= lt!1392848 (maxPrefix!3570 thiss!21717 (t!331004 rules!2999) lt!1392595))))

(declare-fun b!3974307 () Bool)

(declare-fun res!1609325 () Bool)

(assert (=> b!3974307 (=> (not res!1609325) (not e!2462202))))

(assert (=> b!3974307 (= res!1609325 (matchR!5565 (regex!6683 (rule!9677 (_1!23979 (get!13983 lt!1392851)))) (list!15749 (charsOf!4499 (_1!23979 (get!13983 lt!1392851))))))))

(declare-fun b!3974308 () Bool)

(assert (=> b!3974308 (= e!2462203 call!285654)))

(declare-fun b!3974309 () Bool)

(declare-fun e!2462201 () Bool)

(assert (=> b!3974309 (= e!2462201 e!2462202)))

(declare-fun res!1609328 () Bool)

(assert (=> b!3974309 (=> (not res!1609328) (not e!2462202))))

(declare-fun isDefined!7017 (Option!9097) Bool)

(assert (=> b!3974309 (= res!1609328 (isDefined!7017 lt!1392851))))

(declare-fun d!1176999 () Bool)

(assert (=> d!1176999 e!2462201))

(declare-fun res!1609331 () Bool)

(assert (=> d!1176999 (=> res!1609331 e!2462201)))

(assert (=> d!1176999 (= res!1609331 (isEmpty!25389 lt!1392851))))

(assert (=> d!1176999 (= lt!1392851 e!2462203)))

(declare-fun c!689095 () Bool)

(assert (=> d!1176999 (= c!689095 (and (is-Cons!42441 rules!2999) (is-Nil!42441 (t!331004 rules!2999))))))

(declare-fun lt!1392849 () Unit!61089)

(declare-fun lt!1392850 () Unit!61089)

(assert (=> d!1176999 (= lt!1392849 lt!1392850)))

(assert (=> d!1176999 (isPrefix!3770 lt!1392595 lt!1392595)))

(assert (=> d!1176999 (= lt!1392850 (lemmaIsPrefixRefl!2362 lt!1392595 lt!1392595))))

(declare-fun rulesValidInductive!2424 (LexerInterface!6272 List!42565) Bool)

(assert (=> d!1176999 (rulesValidInductive!2424 thiss!21717 rules!2999)))

(assert (=> d!1176999 (= (maxPrefix!3570 thiss!21717 rules!2999 lt!1392595) lt!1392851)))

(declare-fun b!3974305 () Bool)

(declare-fun res!1609326 () Bool)

(assert (=> b!3974305 (=> (not res!1609326) (not e!2462202))))

(assert (=> b!3974305 (= res!1609326 (= (++!11085 (list!15749 (charsOf!4499 (_1!23979 (get!13983 lt!1392851)))) (_2!23979 (get!13983 lt!1392851))) lt!1392595))))

(assert (= (and d!1176999 c!689095) b!3974308))

(assert (= (and d!1176999 (not c!689095)) b!3974306))

(assert (= (or b!3974308 b!3974306) bm!285649))

(assert (= (and d!1176999 (not res!1609331)) b!3974309))

(assert (= (and b!3974309 res!1609328) b!3974301))

(assert (= (and b!3974301 res!1609329) b!3974304))

(assert (= (and b!3974304 res!1609327) b!3974305))

(assert (= (and b!3974305 res!1609326) b!3974303))

(assert (= (and b!3974303 res!1609330) b!3974307))

(assert (= (and b!3974307 res!1609325) b!3974302))

(declare-fun m!4545205 () Bool)

(assert (=> b!3974301 m!4545205))

(declare-fun m!4545207 () Bool)

(assert (=> b!3974301 m!4545207))

(assert (=> b!3974301 m!4545207))

(declare-fun m!4545209 () Bool)

(assert (=> b!3974301 m!4545209))

(declare-fun m!4545211 () Bool)

(assert (=> b!3974309 m!4545211))

(assert (=> b!3974305 m!4545205))

(assert (=> b!3974305 m!4545207))

(assert (=> b!3974305 m!4545207))

(assert (=> b!3974305 m!4545209))

(assert (=> b!3974305 m!4545209))

(declare-fun m!4545213 () Bool)

(assert (=> b!3974305 m!4545213))

(declare-fun m!4545215 () Bool)

(assert (=> b!3974306 m!4545215))

(assert (=> b!3974303 m!4545205))

(declare-fun m!4545217 () Bool)

(assert (=> b!3974303 m!4545217))

(assert (=> b!3974303 m!4545217))

(declare-fun m!4545219 () Bool)

(assert (=> b!3974303 m!4545219))

(assert (=> b!3974307 m!4545205))

(assert (=> b!3974307 m!4545207))

(assert (=> b!3974307 m!4545207))

(assert (=> b!3974307 m!4545209))

(assert (=> b!3974307 m!4545209))

(declare-fun m!4545221 () Bool)

(assert (=> b!3974307 m!4545221))

(assert (=> b!3974304 m!4545205))

(declare-fun m!4545223 () Bool)

(assert (=> b!3974304 m!4545223))

(assert (=> b!3974304 m!4544551))

(assert (=> b!3974302 m!4545205))

(declare-fun m!4545225 () Bool)

(assert (=> b!3974302 m!4545225))

(declare-fun m!4545227 () Bool)

(assert (=> d!1176999 m!4545227))

(assert (=> d!1176999 m!4544547))

(assert (=> d!1176999 m!4544549))

(declare-fun m!4545229 () Bool)

(assert (=> d!1176999 m!4545229))

(declare-fun m!4545231 () Bool)

(assert (=> bm!285649 m!4545231))

(assert (=> b!3973834 d!1176999))

(declare-fun b!3974330 () Bool)

(declare-fun res!1609346 () Bool)

(declare-fun e!2462210 () Bool)

(assert (=> b!3974330 (=> (not res!1609346) (not e!2462210))))

(declare-fun lt!1392863 () List!42563)

(assert (=> b!3974330 (= res!1609346 (= (size!31753 lt!1392863) (+ (size!31753 prefix!494) (size!31753 suffix!1299))))))

(declare-fun b!3974328 () Bool)

(declare-fun e!2462211 () List!42563)

(assert (=> b!3974328 (= e!2462211 suffix!1299)))

(declare-fun b!3974329 () Bool)

(assert (=> b!3974329 (= e!2462211 (Cons!42439 (h!47859 prefix!494) (++!11085 (t!331002 prefix!494) suffix!1299)))))

(declare-fun b!3974331 () Bool)

(assert (=> b!3974331 (= e!2462210 (or (not (= suffix!1299 Nil!42439)) (= lt!1392863 prefix!494)))))

(declare-fun d!1177001 () Bool)

(assert (=> d!1177001 e!2462210))

(declare-fun res!1609347 () Bool)

(assert (=> d!1177001 (=> (not res!1609347) (not e!2462210))))

(assert (=> d!1177001 (= res!1609347 (= (content!6440 lt!1392863) (set.union (content!6440 prefix!494) (content!6440 suffix!1299))))))

(assert (=> d!1177001 (= lt!1392863 e!2462211)))

(declare-fun c!689098 () Bool)

(assert (=> d!1177001 (= c!689098 (is-Nil!42439 prefix!494))))

(assert (=> d!1177001 (= (++!11085 prefix!494 suffix!1299) lt!1392863)))

(assert (= (and d!1177001 c!689098) b!3974328))

(assert (= (and d!1177001 (not c!689098)) b!3974329))

(assert (= (and d!1177001 res!1609347) b!3974330))

(assert (= (and b!3974330 res!1609346) b!3974331))

(declare-fun m!4545233 () Bool)

(assert (=> b!3974330 m!4545233))

(assert (=> b!3974330 m!4544533))

(assert (=> b!3974330 m!4544487))

(declare-fun m!4545235 () Bool)

(assert (=> b!3974329 m!4545235))

(declare-fun m!4545237 () Bool)

(assert (=> d!1177001 m!4545237))

(assert (=> d!1177001 m!4544771))

(assert (=> d!1177001 m!4544741))

(assert (=> b!3973834 d!1177001))

(declare-fun d!1177003 () Bool)

(declare-fun lt!1392866 () Int)

(assert (=> d!1177003 (>= lt!1392866 0)))

(declare-fun e!2462214 () Int)

(assert (=> d!1177003 (= lt!1392866 e!2462214)))

(declare-fun c!689101 () Bool)

(assert (=> d!1177003 (= c!689101 (is-Nil!42439 lt!1392588))))

(assert (=> d!1177003 (= (size!31753 lt!1392588) lt!1392866)))

(declare-fun b!3974336 () Bool)

(assert (=> b!3974336 (= e!2462214 0)))

(declare-fun b!3974337 () Bool)

(assert (=> b!3974337 (= e!2462214 (+ 1 (size!31753 (t!331002 lt!1392588))))))

(assert (= (and d!1177003 c!689101) b!3974336))

(assert (= (and d!1177003 (not c!689101)) b!3974337))

(declare-fun m!4545239 () Bool)

(assert (=> b!3974337 m!4545239))

(assert (=> b!3973824 d!1177003))

(declare-fun d!1177005 () Bool)

(declare-fun lt!1392867 () Int)

(assert (=> d!1177005 (>= lt!1392867 0)))

(declare-fun e!2462215 () Int)

(assert (=> d!1177005 (= lt!1392867 e!2462215)))

(declare-fun c!689102 () Bool)

(assert (=> d!1177005 (= c!689102 (is-Nil!42439 prefix!494))))

(assert (=> d!1177005 (= (size!31753 prefix!494) lt!1392867)))

(declare-fun b!3974338 () Bool)

(assert (=> b!3974338 (= e!2462215 0)))

(declare-fun b!3974339 () Bool)

(assert (=> b!3974339 (= e!2462215 (+ 1 (size!31753 (t!331002 prefix!494))))))

(assert (= (and d!1177005 c!689102) b!3974338))

(assert (= (and d!1177005 (not c!689102)) b!3974339))

(declare-fun m!4545241 () Bool)

(assert (=> b!3974339 m!4545241))

(assert (=> b!3973824 d!1177005))

(declare-fun d!1177007 () Bool)

(declare-fun list!15751 (Conc!12894) List!42563)

(assert (=> d!1177007 (= (list!15749 (charsOf!4499 token!484)) (list!15751 (c!689029 (charsOf!4499 token!484))))))

(declare-fun bs!587717 () Bool)

(assert (= bs!587717 d!1177007))

(declare-fun m!4545243 () Bool)

(assert (=> bs!587717 m!4545243))

(assert (=> b!3973824 d!1177007))

(declare-fun d!1177009 () Bool)

(declare-fun lt!1392875 () BalanceConc!25382)

(assert (=> d!1177009 (= (list!15749 lt!1392875) (originalCharacters!7283 token!484))))

(assert (=> d!1177009 (= lt!1392875 (dynLambda!18085 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (value!211101 token!484)))))

(assert (=> d!1177009 (= (charsOf!4499 token!484) lt!1392875)))

(declare-fun b_lambda!116145 () Bool)

(assert (=> (not b_lambda!116145) (not d!1177009)))

(assert (=> d!1177009 t!331021))

(declare-fun b_and!305515 () Bool)

(assert (= b_and!305511 (and (=> t!331021 result!290320) b_and!305515)))

(assert (=> d!1177009 t!331023))

(declare-fun b_and!305517 () Bool)

(assert (= b_and!305513 (and (=> t!331023 result!290324) b_and!305517)))

(declare-fun m!4545245 () Bool)

(assert (=> d!1177009 m!4545245))

(assert (=> d!1177009 m!4545179))

(assert (=> b!3973824 d!1177009))

(declare-fun d!1177011 () Bool)

(declare-fun lt!1392876 () Int)

(assert (=> d!1177011 (>= lt!1392876 0)))

(declare-fun e!2462219 () Int)

(assert (=> d!1177011 (= lt!1392876 e!2462219)))

(declare-fun c!689104 () Bool)

(assert (=> d!1177011 (= c!689104 (is-Nil!42439 suffix!1299))))

(assert (=> d!1177011 (= (size!31753 suffix!1299) lt!1392876)))

(declare-fun b!3974349 () Bool)

(assert (=> b!3974349 (= e!2462219 0)))

(declare-fun b!3974350 () Bool)

(assert (=> b!3974350 (= e!2462219 (+ 1 (size!31753 (t!331002 suffix!1299))))))

(assert (= (and d!1177011 c!689104) b!3974349))

(assert (= (and d!1177011 (not c!689104)) b!3974350))

(declare-fun m!4545247 () Bool)

(assert (=> b!3974350 m!4545247))

(assert (=> b!3973833 d!1177011))

(declare-fun d!1177013 () Bool)

(declare-fun lt!1392877 () Int)

(assert (=> d!1177013 (>= lt!1392877 0)))

(declare-fun e!2462220 () Int)

(assert (=> d!1177013 (= lt!1392877 e!2462220)))

(declare-fun c!689105 () Bool)

(assert (=> d!1177013 (= c!689105 (is-Nil!42439 newSuffix!27))))

(assert (=> d!1177013 (= (size!31753 newSuffix!27) lt!1392877)))

(declare-fun b!3974351 () Bool)

(assert (=> b!3974351 (= e!2462220 0)))

(declare-fun b!3974352 () Bool)

(assert (=> b!3974352 (= e!2462220 (+ 1 (size!31753 (t!331002 newSuffix!27))))))

(assert (= (and d!1177013 c!689105) b!3974351))

(assert (= (and d!1177013 (not c!689105)) b!3974352))

(declare-fun m!4545253 () Bool)

(assert (=> b!3974352 m!4545253))

(assert (=> b!3973833 d!1177013))

(declare-fun b!3974355 () Bool)

(declare-fun res!1609355 () Bool)

(declare-fun e!2462221 () Bool)

(assert (=> b!3974355 (=> (not res!1609355) (not e!2462221))))

(declare-fun lt!1392878 () List!42563)

(assert (=> b!3974355 (= res!1609355 (= (size!31753 lt!1392878) (+ (size!31753 lt!1392588) (size!31753 suffixResult!105))))))

(declare-fun b!3974353 () Bool)

(declare-fun e!2462222 () List!42563)

(assert (=> b!3974353 (= e!2462222 suffixResult!105)))

(declare-fun b!3974354 () Bool)

(assert (=> b!3974354 (= e!2462222 (Cons!42439 (h!47859 lt!1392588) (++!11085 (t!331002 lt!1392588) suffixResult!105)))))

(declare-fun b!3974356 () Bool)

(assert (=> b!3974356 (= e!2462221 (or (not (= suffixResult!105 Nil!42439)) (= lt!1392878 lt!1392588)))))

(declare-fun d!1177015 () Bool)

(assert (=> d!1177015 e!2462221))

(declare-fun res!1609356 () Bool)

(assert (=> d!1177015 (=> (not res!1609356) (not e!2462221))))

(assert (=> d!1177015 (= res!1609356 (= (content!6440 lt!1392878) (set.union (content!6440 lt!1392588) (content!6440 suffixResult!105))))))

(assert (=> d!1177015 (= lt!1392878 e!2462222)))

(declare-fun c!689106 () Bool)

(assert (=> d!1177015 (= c!689106 (is-Nil!42439 lt!1392588))))

(assert (=> d!1177015 (= (++!11085 lt!1392588 suffixResult!105) lt!1392878)))

(assert (= (and d!1177015 c!689106) b!3974353))

(assert (= (and d!1177015 (not c!689106)) b!3974354))

(assert (= (and d!1177015 res!1609356) b!3974355))

(assert (= (and b!3974355 res!1609355) b!3974356))

(declare-fun m!4545265 () Bool)

(assert (=> b!3974355 m!4545265))

(assert (=> b!3974355 m!4544531))

(declare-fun m!4545269 () Bool)

(assert (=> b!3974355 m!4545269))

(declare-fun m!4545271 () Bool)

(assert (=> b!3974354 m!4545271))

(declare-fun m!4545275 () Bool)

(assert (=> d!1177015 m!4545275))

(assert (=> d!1177015 m!4544725))

(declare-fun m!4545277 () Bool)

(assert (=> d!1177015 m!4545277))

(assert (=> b!3973822 d!1177015))

(declare-fun d!1177017 () Bool)

(declare-fun e!2462233 () Bool)

(assert (=> d!1177017 e!2462233))

(declare-fun res!1609365 () Bool)

(assert (=> d!1177017 (=> (not res!1609365) (not e!2462233))))

(assert (=> d!1177017 (= res!1609365 (semiInverseModEq!2872 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))))))

(declare-fun Unit!61095 () Unit!61089)

(assert (=> d!1177017 (= (lemmaInv!898 (transformation!6683 (rule!9677 token!484))) Unit!61095)))

(declare-fun b!3974373 () Bool)

(assert (=> b!3974373 (= e!2462233 (equivClasses!2771 (toChars!9030 (transformation!6683 (rule!9677 token!484))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))))))

(assert (= (and d!1177017 res!1609365) b!3974373))

(assert (=> d!1177017 m!4544959))

(assert (=> b!3974373 m!4544961))

(assert (=> b!3973822 d!1177017))

(declare-fun d!1177033 () Bool)

(declare-fun res!1609372 () Bool)

(declare-fun e!2462238 () Bool)

(assert (=> d!1177033 (=> (not res!1609372) (not e!2462238))))

(assert (=> d!1177033 (= res!1609372 (validRegex!5265 (regex!6683 (rule!9677 token!484))))))

(assert (=> d!1177033 (= (ruleValid!2615 thiss!21717 (rule!9677 token!484)) e!2462238)))

(declare-fun b!3974380 () Bool)

(declare-fun res!1609373 () Bool)

(assert (=> b!3974380 (=> (not res!1609373) (not e!2462238))))

(assert (=> b!3974380 (= res!1609373 (not (nullable!4065 (regex!6683 (rule!9677 token!484)))))))

(declare-fun b!3974381 () Bool)

(assert (=> b!3974381 (= e!2462238 (not (= (tag!7543 (rule!9677 token!484)) (String!48286 ""))))))

(assert (= (and d!1177033 res!1609372) b!3974380))

(assert (= (and b!3974380 res!1609373) b!3974381))

(assert (=> d!1177033 m!4544931))

(assert (=> b!3974380 m!4544927))

(assert (=> b!3973822 d!1177033))

(declare-fun d!1177036 () Bool)

(assert (=> d!1177036 (ruleValid!2615 thiss!21717 (rule!9677 token!484))))

(declare-fun lt!1392887 () Unit!61089)

(declare-fun choose!23803 (LexerInterface!6272 Rule!13166 List!42565) Unit!61089)

(assert (=> d!1177036 (= lt!1392887 (choose!23803 thiss!21717 (rule!9677 token!484) rules!2999))))

(assert (=> d!1177036 (contains!8454 rules!2999 (rule!9677 token!484))))

(assert (=> d!1177036 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1689 thiss!21717 (rule!9677 token!484) rules!2999) lt!1392887)))

(declare-fun bs!587719 () Bool)

(assert (= bs!587719 d!1177036))

(assert (=> bs!587719 m!4544573))

(declare-fun m!4545317 () Bool)

(assert (=> bs!587719 m!4545317))

(declare-fun m!4545319 () Bool)

(assert (=> bs!587719 m!4545319))

(assert (=> b!3973822 d!1177036))

(declare-fun d!1177039 () Bool)

(declare-fun lt!1392888 () Int)

(assert (=> d!1177039 (>= lt!1392888 0)))

(declare-fun e!2462240 () Int)

(assert (=> d!1177039 (= lt!1392888 e!2462240)))

(declare-fun c!689111 () Bool)

(assert (=> d!1177039 (= c!689111 (is-Nil!42439 (originalCharacters!7283 token!484)))))

(assert (=> d!1177039 (= (size!31753 (originalCharacters!7283 token!484)) lt!1392888)))

(declare-fun b!3974383 () Bool)

(assert (=> b!3974383 (= e!2462240 0)))

(declare-fun b!3974384 () Bool)

(assert (=> b!3974384 (= e!2462240 (+ 1 (size!31753 (t!331002 (originalCharacters!7283 token!484)))))))

(assert (= (and d!1177039 c!689111) b!3974383))

(assert (= (and d!1177039 (not c!689111)) b!3974384))

(declare-fun m!4545321 () Bool)

(assert (=> b!3974384 m!4545321))

(assert (=> b!3973823 d!1177039))

(declare-fun d!1177041 () Bool)

(declare-fun lt!1392889 () Int)

(assert (=> d!1177041 (>= lt!1392889 0)))

(declare-fun e!2462241 () Int)

(assert (=> d!1177041 (= lt!1392889 e!2462241)))

(declare-fun c!689112 () Bool)

(assert (=> d!1177041 (= c!689112 (is-Nil!42439 lt!1392595))))

(assert (=> d!1177041 (= (size!31753 lt!1392595) lt!1392889)))

(declare-fun b!3974385 () Bool)

(assert (=> b!3974385 (= e!2462241 0)))

(declare-fun b!3974386 () Bool)

(assert (=> b!3974386 (= e!2462241 (+ 1 (size!31753 (t!331002 lt!1392595))))))

(assert (= (and d!1177041 c!689112) b!3974385))

(assert (= (and d!1177041 (not c!689112)) b!3974386))

(declare-fun m!4545323 () Bool)

(assert (=> b!3974386 m!4545323))

(assert (=> b!3973844 d!1177041))

(declare-fun b!3974388 () Bool)

(declare-fun res!1609377 () Bool)

(declare-fun e!2462242 () Bool)

(assert (=> b!3974388 (=> (not res!1609377) (not e!2462242))))

(assert (=> b!3974388 (= res!1609377 (= (head!8467 lt!1392588) (head!8467 lt!1392587)))))

(declare-fun b!3974387 () Bool)

(declare-fun e!2462244 () Bool)

(assert (=> b!3974387 (= e!2462244 e!2462242)))

(declare-fun res!1609376 () Bool)

(assert (=> b!3974387 (=> (not res!1609376) (not e!2462242))))

(assert (=> b!3974387 (= res!1609376 (not (is-Nil!42439 lt!1392587)))))

(declare-fun b!3974389 () Bool)

(assert (=> b!3974389 (= e!2462242 (isPrefix!3770 (tail!6199 lt!1392588) (tail!6199 lt!1392587)))))

(declare-fun b!3974390 () Bool)

(declare-fun e!2462243 () Bool)

(assert (=> b!3974390 (= e!2462243 (>= (size!31753 lt!1392587) (size!31753 lt!1392588)))))

(declare-fun d!1177043 () Bool)

(assert (=> d!1177043 e!2462243))

(declare-fun res!1609378 () Bool)

(assert (=> d!1177043 (=> res!1609378 e!2462243)))

(declare-fun lt!1392890 () Bool)

(assert (=> d!1177043 (= res!1609378 (not lt!1392890))))

(assert (=> d!1177043 (= lt!1392890 e!2462244)))

(declare-fun res!1609375 () Bool)

(assert (=> d!1177043 (=> res!1609375 e!2462244)))

(assert (=> d!1177043 (= res!1609375 (is-Nil!42439 lt!1392588))))

(assert (=> d!1177043 (= (isPrefix!3770 lt!1392588 lt!1392587) lt!1392890)))

(assert (= (and d!1177043 (not res!1609375)) b!3974387))

(assert (= (and b!3974387 res!1609376) b!3974388))

(assert (= (and b!3974388 res!1609377) b!3974389))

(assert (= (and d!1177043 (not res!1609378)) b!3974390))

(assert (=> b!3974388 m!4544933))

(declare-fun m!4545325 () Bool)

(assert (=> b!3974388 m!4545325))

(assert (=> b!3974389 m!4544935))

(declare-fun m!4545327 () Bool)

(assert (=> b!3974389 m!4545327))

(assert (=> b!3974389 m!4544935))

(assert (=> b!3974389 m!4545327))

(declare-fun m!4545329 () Bool)

(assert (=> b!3974389 m!4545329))

(declare-fun m!4545331 () Bool)

(assert (=> b!3974390 m!4545331))

(assert (=> b!3974390 m!4544531))

(assert (=> b!3973844 d!1177043))

(declare-fun d!1177045 () Bool)

(assert (=> d!1177045 (isPrefix!3770 lt!1392588 (++!11085 lt!1392588 lt!1392591))))

(declare-fun lt!1392891 () Unit!61089)

(assert (=> d!1177045 (= lt!1392891 (choose!23796 lt!1392588 lt!1392591))))

(assert (=> d!1177045 (= (lemmaConcatTwoListThenFirstIsPrefix!2613 lt!1392588 lt!1392591) lt!1392891)))

(declare-fun bs!587720 () Bool)

(assert (= bs!587720 d!1177045))

(assert (=> bs!587720 m!4544543))

(assert (=> bs!587720 m!4544543))

(declare-fun m!4545333 () Bool)

(assert (=> bs!587720 m!4545333))

(declare-fun m!4545335 () Bool)

(assert (=> bs!587720 m!4545335))

(assert (=> b!3973844 d!1177045))

(declare-fun b!3974395 () Bool)

(declare-fun e!2462247 () Bool)

(declare-fun tp!1211707 () Bool)

(assert (=> b!3974395 (= e!2462247 (and tp_is_empty!20147 tp!1211707))))

(assert (=> b!3973821 (= tp!1211652 e!2462247)))

(assert (= (and b!3973821 (is-Cons!42439 (originalCharacters!7283 token!484))) b!3974395))

(declare-fun b!3974396 () Bool)

(declare-fun e!2462248 () Bool)

(declare-fun tp!1211708 () Bool)

(assert (=> b!3974396 (= e!2462248 (and tp_is_empty!20147 tp!1211708))))

(assert (=> b!3973842 (= tp!1211648 e!2462248)))

(assert (= (and b!3973842 (is-Cons!42439 (t!331002 suffixResult!105))) b!3974396))

(declare-fun b!3974414 () Bool)

(declare-fun e!2462253 () Bool)

(declare-fun tp!1211723 () Bool)

(declare-fun tp!1211719 () Bool)

(assert (=> b!3974414 (= e!2462253 (and tp!1211723 tp!1211719))))

(declare-fun b!3974412 () Bool)

(declare-fun tp!1211722 () Bool)

(declare-fun tp!1211721 () Bool)

(assert (=> b!3974412 (= e!2462253 (and tp!1211722 tp!1211721))))

(declare-fun b!3974413 () Bool)

(declare-fun tp!1211720 () Bool)

(assert (=> b!3974413 (= e!2462253 tp!1211720)))

(assert (=> b!3973826 (= tp!1211654 e!2462253)))

(declare-fun b!3974411 () Bool)

(assert (=> b!3974411 (= e!2462253 tp_is_empty!20147)))

(assert (= (and b!3973826 (is-ElementMatch!11588 (regex!6683 (h!47861 rules!2999)))) b!3974411))

(assert (= (and b!3973826 (is-Concat!18502 (regex!6683 (h!47861 rules!2999)))) b!3974412))

(assert (= (and b!3973826 (is-Star!11588 (regex!6683 (h!47861 rules!2999)))) b!3974413))

(assert (= (and b!3973826 (is-Union!11588 (regex!6683 (h!47861 rules!2999)))) b!3974414))

(declare-fun b!3974449 () Bool)

(declare-fun b_free!110177 () Bool)

(declare-fun b_next!110881 () Bool)

(assert (=> b!3974449 (= b_free!110177 (not b_next!110881))))

(declare-fun tb!239717 () Bool)

(declare-fun t!331025 () Bool)

(assert (=> (and b!3974449 (= (toValue!9171 (transformation!6683 (h!47861 (t!331004 rules!2999)))) (toValue!9171 (transformation!6683 (rule!9677 token!484)))) t!331025) tb!239717))

(declare-fun result!290332 () Bool)

(assert (= result!290332 result!290314))

(assert (=> d!1176941 t!331025))

(declare-fun tp!1211735 () Bool)

(declare-fun b_and!305519 () Bool)

(assert (=> b!3974449 (= tp!1211735 (and (=> t!331025 result!290332) b_and!305519))))

(declare-fun b_free!110179 () Bool)

(declare-fun b_next!110883 () Bool)

(assert (=> b!3974449 (= b_free!110179 (not b_next!110883))))

(declare-fun t!331027 () Bool)

(declare-fun tb!239719 () Bool)

(assert (=> (and b!3974449 (= (toChars!9030 (transformation!6683 (h!47861 (t!331004 rules!2999)))) (toChars!9030 (transformation!6683 (rule!9677 token!484)))) t!331027) tb!239719))

(declare-fun result!290334 () Bool)

(assert (= result!290334 result!290320))

(assert (=> b!3974259 t!331027))

(assert (=> d!1177009 t!331027))

(declare-fun b_and!305521 () Bool)

(declare-fun tp!1211734 () Bool)

(assert (=> b!3974449 (= tp!1211734 (and (=> t!331027 result!290334) b_and!305521))))

(declare-fun e!2462275 () Bool)

(assert (=> b!3974449 (= e!2462275 (and tp!1211735 tp!1211734))))

(declare-fun e!2462276 () Bool)

(declare-fun b!3974448 () Bool)

(declare-fun tp!1211732 () Bool)

(assert (=> b!3974448 (= e!2462276 (and tp!1211732 (inv!56704 (tag!7543 (h!47861 (t!331004 rules!2999)))) (inv!56707 (transformation!6683 (h!47861 (t!331004 rules!2999)))) e!2462275))))

(declare-fun b!3974447 () Bool)

(declare-fun e!2462277 () Bool)

(declare-fun tp!1211733 () Bool)

(assert (=> b!3974447 (= e!2462277 (and e!2462276 tp!1211733))))

(assert (=> b!3973843 (= tp!1211650 e!2462277)))

(assert (= b!3974448 b!3974449))

(assert (= b!3974447 b!3974448))

(assert (= (and b!3973843 (is-Cons!42441 (t!331004 rules!2999))) b!3974447))

(declare-fun m!4545337 () Bool)

(assert (=> b!3974448 m!4545337))

(declare-fun m!4545339 () Bool)

(assert (=> b!3974448 m!4545339))

(declare-fun b!3974450 () Bool)

(declare-fun e!2462278 () Bool)

(declare-fun tp!1211736 () Bool)

(assert (=> b!3974450 (= e!2462278 (and tp_is_empty!20147 tp!1211736))))

(assert (=> b!3973830 (= tp!1211653 e!2462278)))

(assert (= (and b!3973830 (is-Cons!42439 (t!331002 newSuffix!27))) b!3974450))

(declare-fun b!3974451 () Bool)

(declare-fun e!2462279 () Bool)

(declare-fun tp!1211737 () Bool)

(assert (=> b!3974451 (= e!2462279 (and tp_is_empty!20147 tp!1211737))))

(assert (=> b!3973820 (= tp!1211655 e!2462279)))

(assert (= (and b!3973820 (is-Cons!42439 (t!331002 suffix!1299))) b!3974451))

(declare-fun b!3974452 () Bool)

(declare-fun e!2462280 () Bool)

(declare-fun tp!1211738 () Bool)

(assert (=> b!3974452 (= e!2462280 (and tp_is_empty!20147 tp!1211738))))

(assert (=> b!3973835 (= tp!1211647 e!2462280)))

(assert (= (and b!3973835 (is-Cons!42439 (t!331002 prefix!494))) b!3974452))

(declare-fun b!3974453 () Bool)

(declare-fun e!2462281 () Bool)

(declare-fun tp!1211739 () Bool)

(assert (=> b!3974453 (= e!2462281 (and tp_is_empty!20147 tp!1211739))))

(assert (=> b!3973840 (= tp!1211659 e!2462281)))

(assert (= (and b!3973840 (is-Cons!42439 (t!331002 newSuffixResult!27))) b!3974453))

(declare-fun b!3974457 () Bool)

(declare-fun e!2462282 () Bool)

(declare-fun tp!1211744 () Bool)

(declare-fun tp!1211740 () Bool)

(assert (=> b!3974457 (= e!2462282 (and tp!1211744 tp!1211740))))

(declare-fun b!3974455 () Bool)

(declare-fun tp!1211743 () Bool)

(declare-fun tp!1211742 () Bool)

(assert (=> b!3974455 (= e!2462282 (and tp!1211743 tp!1211742))))

(declare-fun b!3974456 () Bool)

(declare-fun tp!1211741 () Bool)

(assert (=> b!3974456 (= e!2462282 tp!1211741)))

(assert (=> b!3973838 (= tp!1211651 e!2462282)))

(declare-fun b!3974454 () Bool)

(assert (=> b!3974454 (= e!2462282 tp_is_empty!20147)))

(assert (= (and b!3973838 (is-ElementMatch!11588 (regex!6683 (rule!9677 token!484)))) b!3974454))

(assert (= (and b!3973838 (is-Concat!18502 (regex!6683 (rule!9677 token!484)))) b!3974455))

(assert (= (and b!3973838 (is-Star!11588 (regex!6683 (rule!9677 token!484)))) b!3974456))

(assert (= (and b!3973838 (is-Union!11588 (regex!6683 (rule!9677 token!484)))) b!3974457))

(declare-fun b_lambda!116147 () Bool)

(assert (= b_lambda!116143 (or (and b!3973828 b_free!110163) (and b!3973817 b_free!110167 (= (toChars!9030 (transformation!6683 (h!47861 rules!2999))) (toChars!9030 (transformation!6683 (rule!9677 token!484))))) (and b!3974449 b_free!110179 (= (toChars!9030 (transformation!6683 (h!47861 (t!331004 rules!2999)))) (toChars!9030 (transformation!6683 (rule!9677 token!484))))) b_lambda!116147)))

(declare-fun b_lambda!116149 () Bool)

(assert (= b_lambda!116139 (or (and b!3973828 b_free!110161) (and b!3973817 b_free!110165 (= (toValue!9171 (transformation!6683 (h!47861 rules!2999))) (toValue!9171 (transformation!6683 (rule!9677 token!484))))) (and b!3974449 b_free!110177 (= (toValue!9171 (transformation!6683 (h!47861 (t!331004 rules!2999)))) (toValue!9171 (transformation!6683 (rule!9677 token!484))))) b_lambda!116149)))

(declare-fun b_lambda!116151 () Bool)

(assert (= b_lambda!116145 (or (and b!3973828 b_free!110163) (and b!3973817 b_free!110167 (= (toChars!9030 (transformation!6683 (h!47861 rules!2999))) (toChars!9030 (transformation!6683 (rule!9677 token!484))))) (and b!3974449 b_free!110179 (= (toChars!9030 (transformation!6683 (h!47861 (t!331004 rules!2999)))) (toChars!9030 (transformation!6683 (rule!9677 token!484))))) b_lambda!116151)))

(push 1)

(assert (not b!3974157))

(assert (not b!3974266))

(assert (not b_next!110883))

(assert (not d!1177033))

(assert (not b!3974380))

(assert (not d!1176847))

(assert (not b!3974373))

(assert (not b!3974015))

(assert (not b!3974240))

(assert (not d!1176989))

(assert (not d!1176867))

(assert (not b!3973945))

(assert (not d!1176925))

(assert (not d!1177001))

(assert (not b!3974035))

(assert (not b!3974447))

(assert (not d!1176931))

(assert (not b!3973965))

(assert (not bm!285649))

(assert b_and!305521)

(assert (not d!1176851))

(assert (not bm!285646))

(assert (not b_next!110871))

(assert (not b!3974247))

(assert (not b!3974384))

(assert (not b!3974159))

(assert (not d!1177045))

(assert (not d!1176917))

(assert (not d!1177015))

(assert (not b!3974304))

(assert (not b_next!110869))

(assert (not b!3974452))

(assert (not b_next!110867))

(assert b_and!305505)

(assert (not d!1176843))

(assert (not b!3974242))

(assert (not d!1176995))

(assert (not d!1176859))

(assert (not d!1176999))

(assert (not d!1176899))

(assert (not b_lambda!116151))

(assert (not d!1176841))

(assert (not b!3974282))

(assert (not b!3974017))

(assert b_and!305503)

(assert (not b!3974020))

(assert b_and!305515)

(assert (not b_next!110881))

(assert (not d!1176937))

(assert (not d!1176943))

(assert (not b!3973987))

(assert (not b!3974158))

(assert (not b!3974033))

(assert (not b!3974306))

(assert (not b!3974388))

(assert (not d!1176987))

(assert (not b!3974450))

(assert (not b!3974307))

(assert (not b!3974457))

(assert (not b!3974122))

(assert (not b!3974144))

(assert (not b!3974303))

(assert (not d!1176865))

(assert (not b!3974139))

(assert (not b!3974030))

(assert (not b!3974386))

(assert (not b!3974016))

(assert (not b!3974136))

(assert (not d!1177017))

(assert (not b!3974034))

(assert (not d!1176923))

(assert (not d!1176905))

(assert (not b!3974243))

(assert (not b!3974149))

(assert (not b!3974305))

(assert (not b!3974456))

(assert (not tb!239713))

(assert (not b!3974355))

(assert (not d!1176911))

(assert (not b!3974448))

(assert (not b!3974330))

(assert (not b!3974244))

(assert (not d!1176901))

(assert (not b!3974412))

(assert (not b!3974301))

(assert (not b!3974124))

(assert (not b!3974246))

(assert (not b!3974239))

(assert (not b!3974148))

(assert (not b!3974117))

(assert (not b!3973978))

(assert (not b!3974129))

(assert (not b!3974339))

(assert (not b!3973946))

(assert (not b!3974133))

(assert (not b!3974451))

(assert (not b!3974309))

(assert (not b!3974114))

(assert (not b!3974280))

(assert (not d!1176977))

(assert (not b!3974453))

(assert (not b!3974126))

(assert (not b!3974113))

(assert b_and!305517)

(assert (not b!3973973))

(assert (not b!3974455))

(assert (not b!3974281))

(assert (not b!3974413))

(assert (not d!1176915))

(assert (not b!3974354))

(assert (not b!3974019))

(assert (not b!3974273))

(assert (not b!3974130))

(assert (not tb!239709))

(assert (not b!3974395))

(assert (not b_next!110865))

(assert (not b!3974352))

(assert (not b!3974272))

(assert (not b!3974350))

(assert (not b!3973966))

(assert (not d!1176857))

(assert (not b!3973991))

(assert (not b!3973992))

(assert (not b!3973943))

(assert (not b!3974141))

(assert (not b!3973988))

(assert (not b!3974302))

(assert b_and!305519)

(assert (not b!3974390))

(assert (not b!3974414))

(assert (not d!1176845))

(assert (not b!3974259))

(assert (not b!3974143))

(assert tp_is_empty!20147)

(assert (not b!3974260))

(assert (not d!1176837))

(assert (not b!3974277))

(assert (not b_lambda!116147))

(assert (not b!3974337))

(assert (not d!1176945))

(assert (not b!3974329))

(assert (not b!3974128))

(assert (not d!1177036))

(assert (not b!3974145))

(assert (not b!3974389))

(assert (not b!3974396))

(assert (not b!3973977))

(assert (not b!3973974))

(assert (not b!3974140))

(assert (not b!3974135))

(assert (not b!3974137))

(assert (not d!1177007))

(assert (not d!1177009))

(assert (not b!3974245))

(assert (not b_lambda!116149))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!110883))

(assert b_and!305521)

(assert (not b_next!110871))

(assert b_and!305503)

(assert b_and!305517)

(assert (not b_next!110865))

(assert b_and!305519)

(assert (not b_next!110869))

(assert (not b_next!110867))

(assert b_and!305505)

(assert b_and!305515)

(assert (not b_next!110881))

(check-sat)

(pop 1)

