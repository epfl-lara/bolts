; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382312 () Bool)

(assert start!382312)

(declare-fun b!4054561 () Bool)

(declare-fun b_free!112841 () Bool)

(declare-fun b_next!113545 () Bool)

(assert (=> b!4054561 (= b_free!112841 (not b_next!113545))))

(declare-fun tp!1229164 () Bool)

(declare-fun b_and!311795 () Bool)

(assert (=> b!4054561 (= tp!1229164 b_and!311795)))

(declare-fun b_free!112843 () Bool)

(declare-fun b_next!113547 () Bool)

(assert (=> b!4054561 (= b_free!112843 (not b_next!113547))))

(declare-fun tp!1229156 () Bool)

(declare-fun b_and!311797 () Bool)

(assert (=> b!4054561 (= tp!1229156 b_and!311797)))

(declare-fun b!4054540 () Bool)

(declare-fun b_free!112845 () Bool)

(declare-fun b_next!113549 () Bool)

(assert (=> b!4054540 (= b_free!112845 (not b_next!113549))))

(declare-fun tp!1229152 () Bool)

(declare-fun b_and!311799 () Bool)

(assert (=> b!4054540 (= tp!1229152 b_and!311799)))

(declare-fun b_free!112847 () Bool)

(declare-fun b_next!113551 () Bool)

(assert (=> b!4054540 (= b_free!112847 (not b_next!113551))))

(declare-fun tp!1229159 () Bool)

(declare-fun b_and!311801 () Bool)

(assert (=> b!4054540 (= tp!1229159 b_and!311801)))

(declare-fun b!4054529 () Bool)

(declare-fun res!1652887 () Bool)

(declare-fun e!2515978 () Bool)

(assert (=> b!4054529 (=> (not res!1652887) (not e!2515978))))

(declare-datatypes ((C!23900 0))(
  ( (C!23901 (val!14044 Int)) )
))
(declare-datatypes ((List!43467 0))(
  ( (Nil!43343) (Cons!43343 (h!48763 C!23900) (t!336176 List!43467)) )
))
(declare-datatypes ((IArray!26331 0))(
  ( (IArray!26332 (innerList!13223 List!43467)) )
))
(declare-datatypes ((Conc!13163 0))(
  ( (Node!13163 (left!32629 Conc!13163) (right!32959 Conc!13163) (csize!26556 Int) (cheight!13374 Int)) (Leaf!20346 (xs!16469 IArray!26331) (csize!26557 Int)) (Empty!13163) )
))
(declare-datatypes ((BalanceConc!25920 0))(
  ( (BalanceConc!25921 (c!700318 Conc!13163)) )
))
(declare-datatypes ((List!43468 0))(
  ( (Nil!43344) (Cons!43344 (h!48764 (_ BitVec 16)) (t!336177 List!43468)) )
))
(declare-datatypes ((TokenValue!7182 0))(
  ( (FloatLiteralValue!14364 (text!50719 List!43468)) (TokenValueExt!7181 (__x!26581 Int)) (Broken!35910 (value!218740 List!43468)) (Object!7305) (End!7182) (Def!7182) (Underscore!7182) (Match!7182) (Else!7182) (Error!7182) (Case!7182) (If!7182) (Extends!7182) (Abstract!7182) (Class!7182) (Val!7182) (DelimiterValue!14364 (del!7242 List!43468)) (KeywordValue!7188 (value!218741 List!43468)) (CommentValue!14364 (value!218742 List!43468)) (WhitespaceValue!14364 (value!218743 List!43468)) (IndentationValue!7182 (value!218744 List!43468)) (String!49627) (Int32!7182) (Broken!35911 (value!218745 List!43468)) (Boolean!7183) (Unit!62676) (OperatorValue!7185 (op!7242 List!43468)) (IdentifierValue!14364 (value!218746 List!43468)) (IdentifierValue!14365 (value!218747 List!43468)) (WhitespaceValue!14365 (value!218748 List!43468)) (True!14364) (False!14364) (Broken!35912 (value!218749 List!43468)) (Broken!35913 (value!218750 List!43468)) (True!14365) (RightBrace!7182) (RightBracket!7182) (Colon!7182) (Null!7182) (Comma!7182) (LeftBracket!7182) (False!14365) (LeftBrace!7182) (ImaginaryLiteralValue!7182 (text!50720 List!43468)) (StringLiteralValue!21546 (value!218751 List!43468)) (EOFValue!7182 (value!218752 List!43468)) (IdentValue!7182 (value!218753 List!43468)) (DelimiterValue!14365 (value!218754 List!43468)) (DedentValue!7182 (value!218755 List!43468)) (NewLineValue!7182 (value!218756 List!43468)) (IntegerValue!21546 (value!218757 (_ BitVec 32)) (text!50721 List!43468)) (IntegerValue!21547 (value!218758 Int) (text!50722 List!43468)) (Times!7182) (Or!7182) (Equal!7182) (Minus!7182) (Broken!35914 (value!218759 List!43468)) (And!7182) (Div!7182) (LessEqual!7182) (Mod!7182) (Concat!19039) (Not!7182) (Plus!7182) (SpaceValue!7182 (value!218760 List!43468)) (IntegerValue!21548 (value!218761 Int) (text!50723 List!43468)) (StringLiteralValue!21547 (text!50724 List!43468)) (FloatLiteralValue!14365 (text!50725 List!43468)) (BytesLiteralValue!7182 (value!218762 List!43468)) (CommentValue!14365 (value!218763 List!43468)) (StringLiteralValue!21548 (value!218764 List!43468)) (ErrorTokenValue!7182 (msg!7243 List!43468)) )
))
(declare-datatypes ((Regex!11857 0))(
  ( (ElementMatch!11857 (c!700319 C!23900)) (Concat!19040 (regOne!24226 Regex!11857) (regTwo!24226 Regex!11857)) (EmptyExpr!11857) (Star!11857 (reg!12186 Regex!11857)) (EmptyLang!11857) (Union!11857 (regOne!24227 Regex!11857) (regTwo!24227 Regex!11857)) )
))
(declare-datatypes ((String!49628 0))(
  ( (String!49629 (value!218765 String)) )
))
(declare-datatypes ((TokenValueInjection!13792 0))(
  ( (TokenValueInjection!13793 (toValue!9508 Int) (toChars!9367 Int)) )
))
(declare-datatypes ((Rule!13704 0))(
  ( (Rule!13705 (regex!6952 Regex!11857) (tag!7812 String!49628) (isSeparator!6952 Bool) (transformation!6952 TokenValueInjection!13792)) )
))
(declare-datatypes ((Token!13042 0))(
  ( (Token!13043 (value!218766 TokenValue!7182) (rule!10036 Rule!13704) (size!32405 Int) (originalCharacters!7552 List!43467)) )
))
(declare-fun token!484 () Token!13042)

(declare-fun lt!1446835 () TokenValue!7182)

(assert (=> b!4054529 (= res!1652887 (= (value!218766 token!484) lt!1446835))))

(declare-fun b!4054530 () Bool)

(declare-fun res!1652896 () Bool)

(assert (=> b!4054530 (=> (not res!1652896) (not e!2515978))))

(declare-fun size!32406 (List!43467) Int)

(assert (=> b!4054530 (= res!1652896 (= (size!32405 token!484) (size!32406 (originalCharacters!7552 token!484))))))

(declare-fun b!4054531 () Bool)

(declare-fun e!2515971 () Bool)

(declare-fun tp_is_empty!20685 () Bool)

(declare-fun tp!1229163 () Bool)

(assert (=> b!4054531 (= e!2515971 (and tp_is_empty!20685 tp!1229163))))

(declare-fun b!4054532 () Bool)

(declare-fun e!2515972 () Bool)

(declare-fun e!2515956 () Bool)

(assert (=> b!4054532 (= e!2515972 e!2515956)))

(declare-fun res!1652882 () Bool)

(assert (=> b!4054532 (=> res!1652882 e!2515956)))

(declare-datatypes ((tuple2!42406 0))(
  ( (tuple2!42407 (_1!24337 Token!13042) (_2!24337 List!43467)) )
))
(declare-datatypes ((Option!9366 0))(
  ( (None!9365) (Some!9365 (v!39777 tuple2!42406)) )
))
(declare-fun lt!1446878 () Option!9366)

(declare-fun lt!1446865 () Option!9366)

(assert (=> b!4054532 (= res!1652882 (not (= lt!1446878 lt!1446865)))))

(declare-fun lt!1446845 () Token!13042)

(declare-fun suffixResult!105 () List!43467)

(assert (=> b!4054532 (= lt!1446878 (Some!9365 (tuple2!42407 lt!1446845 suffixResult!105)))))

(declare-fun lt!1446891 () List!43467)

(declare-datatypes ((LexerInterface!6541 0))(
  ( (LexerInterfaceExt!6538 (__x!26582 Int)) (Lexer!6539) )
))
(declare-fun thiss!21717 () LexerInterface!6541)

(declare-fun maxPrefixOneRule!2851 (LexerInterface!6541 Rule!13704 List!43467) Option!9366)

(assert (=> b!4054532 (= lt!1446878 (maxPrefixOneRule!2851 thiss!21717 (rule!10036 token!484) lt!1446891))))

(declare-fun lt!1446849 () List!43467)

(declare-fun lt!1446858 () Int)

(assert (=> b!4054532 (= lt!1446845 (Token!13043 lt!1446835 (rule!10036 token!484) lt!1446858 lt!1446849))))

(declare-fun apply!10141 (TokenValueInjection!13792 BalanceConc!25920) TokenValue!7182)

(declare-fun seqFromList!5169 (List!43467) BalanceConc!25920)

(assert (=> b!4054532 (= lt!1446835 (apply!10141 (transformation!6952 (rule!10036 token!484)) (seqFromList!5169 lt!1446849)))))

(declare-datatypes ((List!43469 0))(
  ( (Nil!43345) (Cons!43345 (h!48765 Rule!13704) (t!336178 List!43469)) )
))
(declare-fun rules!2999 () List!43469)

(declare-datatypes ((Unit!62677 0))(
  ( (Unit!62678) )
))
(declare-fun lt!1446853 () Unit!62677)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1657 (LexerInterface!6541 List!43469 List!43467 List!43467 List!43467 Rule!13704) Unit!62677)

(assert (=> b!4054532 (= lt!1446853 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1657 thiss!21717 rules!2999 lt!1446849 lt!1446891 suffixResult!105 (rule!10036 token!484)))))

(declare-fun lt!1446843 () List!43467)

(assert (=> b!4054532 (= lt!1446843 suffixResult!105)))

(declare-fun lt!1446872 () Unit!62677)

(declare-fun lemmaSamePrefixThenSameSuffix!2200 (List!43467 List!43467 List!43467 List!43467 List!43467) Unit!62677)

(assert (=> b!4054532 (= lt!1446872 (lemmaSamePrefixThenSameSuffix!2200 lt!1446849 lt!1446843 lt!1446849 suffixResult!105 lt!1446891))))

(declare-fun lt!1446851 () List!43467)

(declare-fun isPrefix!4039 (List!43467 List!43467) Bool)

(assert (=> b!4054532 (isPrefix!4039 lt!1446849 lt!1446851)))

(declare-fun lt!1446889 () Unit!62677)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2874 (List!43467 List!43467) Unit!62677)

(assert (=> b!4054532 (= lt!1446889 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446849 lt!1446843))))

(declare-fun b!4054533 () Bool)

(declare-fun res!1652897 () Bool)

(declare-fun e!2515982 () Bool)

(assert (=> b!4054533 (=> (not res!1652897) (not e!2515982))))

(declare-fun isEmpty!25861 (List!43469) Bool)

(assert (=> b!4054533 (= res!1652897 (not (isEmpty!25861 rules!2999)))))

(declare-fun b!4054534 () Bool)

(declare-fun e!2515980 () Unit!62677)

(declare-fun Unit!62679 () Unit!62677)

(assert (=> b!4054534 (= e!2515980 Unit!62679)))

(declare-fun b!4054535 () Bool)

(declare-fun e!2515958 () Bool)

(assert (=> b!4054535 (= e!2515956 e!2515958)))

(declare-fun res!1652905 () Bool)

(assert (=> b!4054535 (=> res!1652905 e!2515958)))

(declare-fun matchR!5810 (Regex!11857 List!43467) Bool)

(assert (=> b!4054535 (= res!1652905 (not (matchR!5810 (regex!6952 (rule!10036 token!484)) lt!1446849)))))

(declare-fun lt!1446867 () List!43467)

(assert (=> b!4054535 (isPrefix!4039 lt!1446849 lt!1446867)))

(declare-fun prefix!494 () List!43467)

(declare-fun lt!1446861 () Unit!62677)

(declare-fun newSuffix!27 () List!43467)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!832 (List!43467 List!43467 List!43467) Unit!62677)

(assert (=> b!4054535 (= lt!1446861 (lemmaPrefixStaysPrefixWhenAddingToSuffix!832 lt!1446849 prefix!494 newSuffix!27))))

(declare-fun lt!1446886 () Unit!62677)

(declare-fun suffix!1299 () List!43467)

(assert (=> b!4054535 (= lt!1446886 (lemmaPrefixStaysPrefixWhenAddingToSuffix!832 lt!1446849 prefix!494 suffix!1299))))

(declare-fun b!4054536 () Bool)

(declare-fun e!2515964 () Bool)

(declare-fun tp!1229158 () Bool)

(assert (=> b!4054536 (= e!2515964 (and tp_is_empty!20685 tp!1229158))))

(declare-fun b!4054537 () Bool)

(declare-fun e!2515970 () Bool)

(declare-fun e!2515968 () Bool)

(assert (=> b!4054537 (= e!2515970 e!2515968)))

(declare-fun res!1652909 () Bool)

(assert (=> b!4054537 (=> (not res!1652909) (not e!2515968))))

(declare-fun maxPrefix!3839 (LexerInterface!6541 List!43469 List!43467) Option!9366)

(assert (=> b!4054537 (= res!1652909 (= (maxPrefix!3839 thiss!21717 rules!2999 lt!1446891) lt!1446865))))

(declare-fun lt!1446869 () tuple2!42406)

(assert (=> b!4054537 (= lt!1446865 (Some!9365 lt!1446869))))

(assert (=> b!4054537 (= lt!1446869 (tuple2!42407 token!484 suffixResult!105))))

(declare-fun ++!11354 (List!43467 List!43467) List!43467)

(assert (=> b!4054537 (= lt!1446891 (++!11354 prefix!494 suffix!1299))))

(declare-fun b!4054538 () Bool)

(declare-fun e!2515969 () Bool)

(declare-fun tp!1229154 () Bool)

(assert (=> b!4054538 (= e!2515969 (and tp_is_empty!20685 tp!1229154))))

(declare-fun b!4054539 () Bool)

(declare-fun res!1652886 () Bool)

(declare-fun e!2515963 () Bool)

(assert (=> b!4054539 (=> res!1652886 e!2515963)))

(declare-fun lt!1446834 () List!43467)

(assert (=> b!4054539 (= res!1652886 (not (isPrefix!4039 lt!1446834 lt!1446867)))))

(declare-fun e!2515961 () Bool)

(assert (=> b!4054540 (= e!2515961 (and tp!1229152 tp!1229159))))

(declare-fun b!4054541 () Bool)

(declare-fun e!2515962 () Unit!62677)

(declare-fun Unit!62680 () Unit!62677)

(assert (=> b!4054541 (= e!2515962 Unit!62680)))

(declare-fun res!1652890 () Bool)

(assert (=> start!382312 (=> (not res!1652890) (not e!2515982))))

(get-info :version)

(assert (=> start!382312 (= res!1652890 ((_ is Lexer!6539) thiss!21717))))

(assert (=> start!382312 e!2515982))

(assert (=> start!382312 e!2515971))

(declare-fun e!2515955 () Bool)

(declare-fun inv!57941 (Token!13042) Bool)

(assert (=> start!382312 (and (inv!57941 token!484) e!2515955)))

(declare-fun e!2515988 () Bool)

(assert (=> start!382312 e!2515988))

(declare-fun e!2515957 () Bool)

(assert (=> start!382312 e!2515957))

(assert (=> start!382312 e!2515964))

(assert (=> start!382312 true))

(declare-fun e!2515960 () Bool)

(assert (=> start!382312 e!2515960))

(assert (=> start!382312 e!2515969))

(declare-fun e!2515965 () Bool)

(declare-fun b!4054542 () Bool)

(declare-fun tp!1229160 () Bool)

(declare-fun inv!21 (TokenValue!7182) Bool)

(assert (=> b!4054542 (= e!2515955 (and (inv!21 (value!218766 token!484)) e!2515965 tp!1229160))))

(declare-fun b!4054543 () Bool)

(declare-fun e!2515984 () Bool)

(declare-fun e!2515985 () Bool)

(assert (=> b!4054543 (= e!2515984 e!2515985)))

(declare-fun res!1652893 () Bool)

(assert (=> b!4054543 (=> res!1652893 e!2515985)))

(declare-fun lt!1446842 () List!43467)

(assert (=> b!4054543 (= res!1652893 (not (= lt!1446842 lt!1446891)))))

(declare-fun lt!1446871 () List!43467)

(assert (=> b!4054543 (= lt!1446842 (++!11354 prefix!494 lt!1446871))))

(declare-fun lt!1446874 () List!43467)

(assert (=> b!4054543 (= lt!1446842 (++!11354 lt!1446867 lt!1446874))))

(declare-fun lt!1446860 () Unit!62677)

(declare-fun lemmaConcatAssociativity!2656 (List!43467 List!43467 List!43467) Unit!62677)

(assert (=> b!4054543 (= lt!1446860 (lemmaConcatAssociativity!2656 prefix!494 newSuffix!27 lt!1446874))))

(declare-fun b!4054544 () Bool)

(declare-fun e!2515986 () Bool)

(assert (=> b!4054544 (= e!2515982 e!2515986)))

(declare-fun res!1652907 () Bool)

(assert (=> b!4054544 (=> (not res!1652907) (not e!2515986))))

(declare-fun lt!1446850 () Int)

(assert (=> b!4054544 (= res!1652907 (>= lt!1446850 lt!1446858))))

(assert (=> b!4054544 (= lt!1446858 (size!32406 lt!1446849))))

(assert (=> b!4054544 (= lt!1446850 (size!32406 prefix!494))))

(declare-fun list!16150 (BalanceConc!25920) List!43467)

(declare-fun charsOf!4768 (Token!13042) BalanceConc!25920)

(assert (=> b!4054544 (= lt!1446849 (list!16150 (charsOf!4768 token!484)))))

(declare-fun b!4054545 () Bool)

(declare-fun res!1652885 () Bool)

(assert (=> b!4054545 (=> (not res!1652885) (not e!2515982))))

(assert (=> b!4054545 (= res!1652885 (isPrefix!4039 newSuffix!27 suffix!1299))))

(declare-fun b!4054546 () Bool)

(assert (=> b!4054546 (= e!2515986 e!2515970)))

(declare-fun res!1652898 () Bool)

(assert (=> b!4054546 (=> (not res!1652898) (not e!2515970))))

(declare-fun lt!1446885 () List!43467)

(assert (=> b!4054546 (= res!1652898 (= lt!1446885 lt!1446867))))

(assert (=> b!4054546 (= lt!1446867 (++!11354 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43467)

(assert (=> b!4054546 (= lt!1446885 (++!11354 lt!1446849 newSuffixResult!27))))

(declare-fun b!4054547 () Bool)

(declare-fun tp!1229157 () Bool)

(assert (=> b!4054547 (= e!2515957 (and tp_is_empty!20685 tp!1229157))))

(declare-fun b!4054548 () Bool)

(declare-fun Unit!62681 () Unit!62677)

(assert (=> b!4054548 (= e!2515962 Unit!62681)))

(declare-fun lt!1446862 () Unit!62677)

(declare-fun lt!1446855 () Option!9366)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!478 (LexerInterface!6541 List!43469 Rule!13704 List!43467 List!43467 List!43467 Rule!13704) Unit!62677)

(assert (=> b!4054548 (= lt!1446862 (lemmaMaxPrefixOutputsMaxPrefix!478 thiss!21717 rules!2999 (rule!10036 (_1!24337 (v!39777 lt!1446855))) lt!1446834 lt!1446867 lt!1446849 (rule!10036 token!484)))))

(assert (=> b!4054548 false))

(declare-fun b!4054549 () Bool)

(declare-fun e!2515979 () Bool)

(declare-fun e!2515954 () Bool)

(assert (=> b!4054549 (= e!2515979 e!2515954)))

(declare-fun res!1652895 () Bool)

(assert (=> b!4054549 (=> res!1652895 e!2515954)))

(assert (=> b!4054549 (= res!1652895 (not (isPrefix!4039 lt!1446849 lt!1446891)))))

(assert (=> b!4054549 (isPrefix!4039 prefix!494 lt!1446891)))

(declare-fun lt!1446868 () Unit!62677)

(assert (=> b!4054549 (= lt!1446868 (lemmaConcatTwoListThenFirstIsPrefix!2874 prefix!494 suffix!1299))))

(declare-fun lt!1446873 () List!43467)

(assert (=> b!4054549 (isPrefix!4039 lt!1446849 lt!1446873)))

(declare-fun lt!1446877 () Unit!62677)

(assert (=> b!4054549 (= lt!1446877 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446849 suffixResult!105))))

(declare-fun b!4054550 () Bool)

(declare-fun e!2515959 () Bool)

(assert (=> b!4054550 (= e!2515985 e!2515959)))

(declare-fun res!1652903 () Bool)

(assert (=> b!4054550 (=> res!1652903 e!2515959)))

(assert (=> b!4054550 (= res!1652903 (not (isPrefix!4039 lt!1446834 lt!1446891)))))

(assert (=> b!4054550 (isPrefix!4039 lt!1446834 lt!1446842)))

(declare-fun lt!1446866 () Unit!62677)

(assert (=> b!4054550 (= lt!1446866 (lemmaPrefixStaysPrefixWhenAddingToSuffix!832 lt!1446834 lt!1446867 lt!1446874))))

(declare-fun b!4054551 () Bool)

(declare-fun e!2515987 () Bool)

(declare-fun e!2515981 () Bool)

(assert (=> b!4054551 (= e!2515987 e!2515981)))

(declare-fun res!1652883 () Bool)

(assert (=> b!4054551 (=> res!1652883 e!2515981)))

(declare-fun lt!1446856 () Option!9366)

(assert (=> b!4054551 (= res!1652883 (not (= lt!1446856 (Some!9365 (v!39777 lt!1446855)))))))

(assert (=> b!4054551 (isPrefix!4039 lt!1446834 (++!11354 lt!1446834 newSuffixResult!27))))

(declare-fun lt!1446882 () Unit!62677)

(assert (=> b!4054551 (= lt!1446882 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446834 newSuffixResult!27))))

(declare-fun lt!1446838 () List!43467)

(assert (=> b!4054551 (isPrefix!4039 lt!1446834 lt!1446838)))

(assert (=> b!4054551 (= lt!1446838 (++!11354 lt!1446834 (_2!24337 (v!39777 lt!1446855))))))

(declare-fun lt!1446890 () Unit!62677)

(assert (=> b!4054551 (= lt!1446890 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446834 (_2!24337 (v!39777 lt!1446855))))))

(declare-fun lt!1446880 () TokenValue!7182)

(declare-fun lt!1446888 () Int)

(assert (=> b!4054551 (= lt!1446856 (Some!9365 (tuple2!42407 (Token!13043 lt!1446880 (rule!10036 (_1!24337 (v!39777 lt!1446855))) lt!1446888 lt!1446834) (_2!24337 (v!39777 lt!1446855)))))))

(assert (=> b!4054551 (= lt!1446856 (maxPrefixOneRule!2851 thiss!21717 (rule!10036 (_1!24337 (v!39777 lt!1446855))) lt!1446867))))

(assert (=> b!4054551 (= lt!1446888 (size!32406 lt!1446834))))

(assert (=> b!4054551 (= lt!1446880 (apply!10141 (transformation!6952 (rule!10036 (_1!24337 (v!39777 lt!1446855)))) (seqFromList!5169 lt!1446834)))))

(declare-fun lt!1446881 () Unit!62677)

(assert (=> b!4054551 (= lt!1446881 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1657 thiss!21717 rules!2999 lt!1446834 lt!1446867 (_2!24337 (v!39777 lt!1446855)) (rule!10036 (_1!24337 (v!39777 lt!1446855)))))))

(assert (=> b!4054551 (= lt!1446834 (list!16150 (charsOf!4768 (_1!24337 (v!39777 lt!1446855)))))))

(declare-fun lt!1446864 () Unit!62677)

(declare-fun lemmaInv!1161 (TokenValueInjection!13792) Unit!62677)

(assert (=> b!4054551 (= lt!1446864 (lemmaInv!1161 (transformation!6952 (rule!10036 (_1!24337 (v!39777 lt!1446855))))))))

(declare-fun ruleValid!2882 (LexerInterface!6541 Rule!13704) Bool)

(assert (=> b!4054551 (ruleValid!2882 thiss!21717 (rule!10036 (_1!24337 (v!39777 lt!1446855))))))

(declare-fun lt!1446833 () Unit!62677)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1952 (LexerInterface!6541 Rule!13704 List!43469) Unit!62677)

(assert (=> b!4054551 (= lt!1446833 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1952 thiss!21717 (rule!10036 (_1!24337 (v!39777 lt!1446855))) rules!2999))))

(declare-fun lt!1446844 () Unit!62677)

(declare-fun lemmaCharactersSize!1471 (Token!13042) Unit!62677)

(assert (=> b!4054551 (= lt!1446844 (lemmaCharactersSize!1471 token!484))))

(declare-fun lt!1446857 () Unit!62677)

(assert (=> b!4054551 (= lt!1446857 (lemmaCharactersSize!1471 (_1!24337 (v!39777 lt!1446855))))))

(declare-fun b!4054552 () Bool)

(declare-fun e!2515983 () Bool)

(assert (=> b!4054552 (= e!2515963 e!2515983)))

(declare-fun res!1652908 () Bool)

(assert (=> b!4054552 (=> res!1652908 e!2515983)))

(declare-fun getIndex!564 (List!43469 Rule!13704) Int)

(assert (=> b!4054552 (= res!1652908 (>= (getIndex!564 rules!2999 (rule!10036 (_1!24337 (v!39777 lt!1446855)))) (getIndex!564 rules!2999 (rule!10036 token!484))))))

(assert (=> b!4054552 (= (_2!24337 (v!39777 lt!1446855)) newSuffixResult!27)))

(declare-fun lt!1446840 () Unit!62677)

(assert (=> b!4054552 (= lt!1446840 (lemmaSamePrefixThenSameSuffix!2200 lt!1446834 (_2!24337 (v!39777 lt!1446855)) lt!1446849 newSuffixResult!27 lt!1446867))))

(assert (=> b!4054552 (= lt!1446834 lt!1446849)))

(declare-fun lt!1446848 () Unit!62677)

(declare-fun lemmaIsPrefixSameLengthThenSameList!929 (List!43467 List!43467 List!43467) Unit!62677)

(assert (=> b!4054552 (= lt!1446848 (lemmaIsPrefixSameLengthThenSameList!929 lt!1446834 lt!1446849 lt!1446867))))

(declare-fun b!4054553 () Bool)

(declare-fun e!2515990 () Bool)

(assert (=> b!4054553 (= e!2515959 e!2515990)))

(declare-fun res!1652906 () Bool)

(assert (=> b!4054553 (=> res!1652906 e!2515990)))

(declare-fun lt!1446887 () List!43467)

(assert (=> b!4054553 (= res!1652906 (not (= lt!1446887 lt!1446867)))))

(declare-fun lt!1446852 () List!43467)

(assert (=> b!4054553 (= lt!1446887 (++!11354 lt!1446834 lt!1446852))))

(declare-fun getSuffix!2456 (List!43467 List!43467) List!43467)

(assert (=> b!4054553 (= lt!1446852 (getSuffix!2456 lt!1446867 lt!1446834))))

(declare-fun b!4054554 () Bool)

(declare-fun Unit!62682 () Unit!62677)

(assert (=> b!4054554 (= e!2515980 Unit!62682)))

(declare-fun lt!1446884 () Unit!62677)

(assert (=> b!4054554 (= lt!1446884 (lemmaMaxPrefixOutputsMaxPrefix!478 thiss!21717 rules!2999 (rule!10036 token!484) lt!1446849 lt!1446891 lt!1446834 (rule!10036 (_1!24337 (v!39777 lt!1446855)))))))

(declare-fun res!1652892 () Bool)

(assert (=> b!4054554 (= res!1652892 (not (matchR!5810 (regex!6952 (rule!10036 (_1!24337 (v!39777 lt!1446855)))) lt!1446834)))))

(declare-fun e!2515966 () Bool)

(assert (=> b!4054554 (=> (not res!1652892) (not e!2515966))))

(assert (=> b!4054554 e!2515966))

(declare-fun tp!1229153 () Bool)

(declare-fun b!4054555 () Bool)

(declare-fun inv!57938 (String!49628) Bool)

(declare-fun inv!57942 (TokenValueInjection!13792) Bool)

(assert (=> b!4054555 (= e!2515965 (and tp!1229153 (inv!57938 (tag!7812 (rule!10036 token!484))) (inv!57942 (transformation!6952 (rule!10036 token!484))) e!2515961))))

(declare-fun b!4054556 () Bool)

(declare-fun res!1652881 () Bool)

(assert (=> b!4054556 (=> (not res!1652881) (not e!2515982))))

(assert (=> b!4054556 (= res!1652881 (>= (size!32406 suffix!1299) (size!32406 newSuffix!27)))))

(declare-fun b!4054557 () Bool)

(assert (=> b!4054557 (= e!2515978 (and (= (size!32405 token!484) lt!1446858) (= (originalCharacters!7552 token!484) lt!1446849)))))

(declare-fun b!4054558 () Bool)

(declare-fun e!2515989 () Bool)

(assert (=> b!4054558 (= e!2515954 e!2515989)))

(declare-fun res!1652891 () Bool)

(assert (=> b!4054558 (=> res!1652891 e!2515989)))

(declare-fun lt!1446876 () List!43467)

(assert (=> b!4054558 (= res!1652891 (not (= lt!1446876 prefix!494)))))

(declare-fun lt!1446847 () List!43467)

(assert (=> b!4054558 (= lt!1446876 (++!11354 lt!1446849 lt!1446847))))

(assert (=> b!4054558 (= lt!1446847 (getSuffix!2456 prefix!494 lt!1446849))))

(assert (=> b!4054558 (isPrefix!4039 lt!1446849 prefix!494)))

(declare-fun lt!1446892 () Unit!62677)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!603 (List!43467 List!43467 List!43467) Unit!62677)

(assert (=> b!4054558 (= lt!1446892 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!603 prefix!494 lt!1446849 lt!1446891))))

(declare-fun b!4054559 () Bool)

(assert (=> b!4054559 (= e!2515983 (inv!57941 lt!1446845))))

(declare-fun b!4054560 () Bool)

(declare-fun e!2515967 () Bool)

(assert (=> b!4054560 (= e!2515967 e!2515987)))

(declare-fun res!1652904 () Bool)

(assert (=> b!4054560 (=> res!1652904 e!2515987)))

(assert (=> b!4054560 (= res!1652904 (not ((_ is Some!9365) lt!1446855)))))

(assert (=> b!4054560 (= lt!1446855 (maxPrefix!3839 thiss!21717 rules!2999 lt!1446867))))

(declare-fun lt!1446846 () List!43467)

(assert (=> b!4054560 (and (= suffixResult!105 lt!1446846) (= lt!1446869 (tuple2!42407 lt!1446845 lt!1446846)))))

(declare-fun lt!1446854 () Unit!62677)

(assert (=> b!4054560 (= lt!1446854 (lemmaSamePrefixThenSameSuffix!2200 lt!1446849 suffixResult!105 lt!1446849 lt!1446846 lt!1446891))))

(declare-fun lt!1446875 () List!43467)

(assert (=> b!4054560 (isPrefix!4039 lt!1446849 lt!1446875)))

(declare-fun lt!1446879 () Unit!62677)

(assert (=> b!4054560 (= lt!1446879 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446849 lt!1446846))))

(declare-fun e!2515973 () Bool)

(assert (=> b!4054561 (= e!2515973 (and tp!1229164 tp!1229156))))

(declare-fun b!4054562 () Bool)

(assert (=> b!4054562 (= e!2515990 e!2515963)))

(declare-fun res!1652894 () Bool)

(assert (=> b!4054562 (=> res!1652894 e!2515963)))

(assert (=> b!4054562 (= res!1652894 (not (= lt!1446858 lt!1446888)))))

(declare-fun lt!1446836 () Unit!62677)

(assert (=> b!4054562 (= lt!1446836 e!2515962)))

(declare-fun c!700317 () Bool)

(assert (=> b!4054562 (= c!700317 (< lt!1446888 lt!1446858))))

(declare-fun lt!1446837 () Unit!62677)

(assert (=> b!4054562 (= lt!1446837 e!2515980)))

(declare-fun c!700316 () Bool)

(assert (=> b!4054562 (= c!700316 (> lt!1446888 lt!1446858))))

(assert (=> b!4054562 (= (_2!24337 (v!39777 lt!1446855)) lt!1446852)))

(declare-fun lt!1446859 () Unit!62677)

(assert (=> b!4054562 (= lt!1446859 (lemmaSamePrefixThenSameSuffix!2200 lt!1446834 (_2!24337 (v!39777 lt!1446855)) lt!1446834 lt!1446852 lt!1446867))))

(assert (=> b!4054562 (isPrefix!4039 lt!1446834 lt!1446887)))

(declare-fun lt!1446863 () Unit!62677)

(assert (=> b!4054562 (= lt!1446863 (lemmaConcatTwoListThenFirstIsPrefix!2874 lt!1446834 lt!1446852))))

(declare-fun tp!1229155 () Bool)

(declare-fun b!4054563 () Bool)

(declare-fun e!2515976 () Bool)

(assert (=> b!4054563 (= e!2515976 (and tp!1229155 (inv!57938 (tag!7812 (h!48765 rules!2999))) (inv!57942 (transformation!6952 (h!48765 rules!2999))) e!2515973))))

(declare-fun b!4054564 () Bool)

(declare-fun res!1652889 () Bool)

(assert (=> b!4054564 (=> res!1652889 e!2515959)))

(assert (=> b!4054564 (= res!1652889 (not (= lt!1446838 lt!1446867)))))

(declare-fun b!4054565 () Bool)

(assert (=> b!4054565 (= e!2515958 e!2515967)))

(declare-fun res!1652884 () Bool)

(assert (=> b!4054565 (=> res!1652884 e!2515967)))

(assert (=> b!4054565 (= res!1652884 (not (= lt!1446875 lt!1446891)))))

(assert (=> b!4054565 (= lt!1446875 (++!11354 lt!1446849 lt!1446846))))

(assert (=> b!4054565 (= lt!1446846 (getSuffix!2456 lt!1446891 lt!1446849))))

(assert (=> b!4054565 e!2515978))

(declare-fun res!1652888 () Bool)

(assert (=> b!4054565 (=> (not res!1652888) (not e!2515978))))

(assert (=> b!4054565 (= res!1652888 (isPrefix!4039 lt!1446891 lt!1446891))))

(declare-fun lt!1446883 () Unit!62677)

(declare-fun lemmaIsPrefixRefl!2606 (List!43467 List!43467) Unit!62677)

(assert (=> b!4054565 (= lt!1446883 (lemmaIsPrefixRefl!2606 lt!1446891 lt!1446891))))

(declare-fun b!4054566 () Bool)

(assert (=> b!4054566 (= e!2515989 e!2515972)))

(declare-fun res!1652900 () Bool)

(assert (=> b!4054566 (=> res!1652900 e!2515972)))

(declare-fun lt!1446870 () List!43467)

(assert (=> b!4054566 (= res!1652900 (or (not (= lt!1446891 lt!1446870)) (not (= lt!1446891 lt!1446851))))))

(assert (=> b!4054566 (= lt!1446870 lt!1446851)))

(assert (=> b!4054566 (= lt!1446851 (++!11354 lt!1446849 lt!1446843))))

(assert (=> b!4054566 (= lt!1446870 (++!11354 lt!1446876 suffix!1299))))

(assert (=> b!4054566 (= lt!1446843 (++!11354 lt!1446847 suffix!1299))))

(declare-fun lt!1446841 () Unit!62677)

(assert (=> b!4054566 (= lt!1446841 (lemmaConcatAssociativity!2656 lt!1446849 lt!1446847 suffix!1299))))

(declare-fun b!4054567 () Bool)

(declare-fun res!1652902 () Bool)

(assert (=> b!4054567 (=> (not res!1652902) (not e!2515982))))

(declare-fun rulesInvariant!5884 (LexerInterface!6541 List!43469) Bool)

(assert (=> b!4054567 (= res!1652902 (rulesInvariant!5884 thiss!21717 rules!2999))))

(declare-fun b!4054568 () Bool)

(declare-fun tp!1229162 () Bool)

(assert (=> b!4054568 (= e!2515960 (and e!2515976 tp!1229162))))

(declare-fun b!4054569 () Bool)

(assert (=> b!4054569 (= e!2515981 e!2515984)))

(declare-fun res!1652899 () Bool)

(assert (=> b!4054569 (=> res!1652899 e!2515984)))

(assert (=> b!4054569 (= res!1652899 (not (= lt!1446871 suffix!1299)))))

(assert (=> b!4054569 (= lt!1446871 (++!11354 newSuffix!27 lt!1446874))))

(assert (=> b!4054569 (= lt!1446874 (getSuffix!2456 suffix!1299 newSuffix!27))))

(declare-fun b!4054570 () Bool)

(assert (=> b!4054570 (= e!2515966 false)))

(declare-fun b!4054571 () Bool)

(declare-fun tp!1229161 () Bool)

(assert (=> b!4054571 (= e!2515988 (and tp_is_empty!20685 tp!1229161))))

(declare-fun b!4054572 () Bool)

(assert (=> b!4054572 (= e!2515968 (not e!2515979))))

(declare-fun res!1652901 () Bool)

(assert (=> b!4054572 (=> res!1652901 e!2515979)))

(assert (=> b!4054572 (= res!1652901 (not (= lt!1446873 lt!1446891)))))

(assert (=> b!4054572 (= lt!1446873 (++!11354 lt!1446849 suffixResult!105))))

(declare-fun lt!1446839 () Unit!62677)

(assert (=> b!4054572 (= lt!1446839 (lemmaInv!1161 (transformation!6952 (rule!10036 token!484))))))

(assert (=> b!4054572 (ruleValid!2882 thiss!21717 (rule!10036 token!484))))

(declare-fun lt!1446893 () Unit!62677)

(assert (=> b!4054572 (= lt!1446893 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1952 thiss!21717 (rule!10036 token!484) rules!2999))))

(assert (= (and start!382312 res!1652890) b!4054533))

(assert (= (and b!4054533 res!1652897) b!4054567))

(assert (= (and b!4054567 res!1652902) b!4054556))

(assert (= (and b!4054556 res!1652881) b!4054545))

(assert (= (and b!4054545 res!1652885) b!4054544))

(assert (= (and b!4054544 res!1652907) b!4054546))

(assert (= (and b!4054546 res!1652898) b!4054537))

(assert (= (and b!4054537 res!1652909) b!4054572))

(assert (= (and b!4054572 (not res!1652901)) b!4054549))

(assert (= (and b!4054549 (not res!1652895)) b!4054558))

(assert (= (and b!4054558 (not res!1652891)) b!4054566))

(assert (= (and b!4054566 (not res!1652900)) b!4054532))

(assert (= (and b!4054532 (not res!1652882)) b!4054535))

(assert (= (and b!4054535 (not res!1652905)) b!4054565))

(assert (= (and b!4054565 res!1652888) b!4054529))

(assert (= (and b!4054529 res!1652887) b!4054530))

(assert (= (and b!4054530 res!1652896) b!4054557))

(assert (= (and b!4054565 (not res!1652884)) b!4054560))

(assert (= (and b!4054560 (not res!1652904)) b!4054551))

(assert (= (and b!4054551 (not res!1652883)) b!4054569))

(assert (= (and b!4054569 (not res!1652899)) b!4054543))

(assert (= (and b!4054543 (not res!1652893)) b!4054550))

(assert (= (and b!4054550 (not res!1652903)) b!4054564))

(assert (= (and b!4054564 (not res!1652889)) b!4054553))

(assert (= (and b!4054553 (not res!1652906)) b!4054562))

(assert (= (and b!4054562 c!700316) b!4054554))

(assert (= (and b!4054562 (not c!700316)) b!4054534))

(assert (= (and b!4054554 res!1652892) b!4054570))

(assert (= (and b!4054562 c!700317) b!4054548))

(assert (= (and b!4054562 (not c!700317)) b!4054541))

(assert (= (and b!4054562 (not res!1652894)) b!4054539))

(assert (= (and b!4054539 (not res!1652886)) b!4054552))

(assert (= (and b!4054552 (not res!1652908)) b!4054559))

(assert (= (and start!382312 ((_ is Cons!43343) prefix!494)) b!4054531))

(assert (= b!4054555 b!4054540))

(assert (= b!4054542 b!4054555))

(assert (= start!382312 b!4054542))

(assert (= (and start!382312 ((_ is Cons!43343) suffixResult!105)) b!4054571))

(assert (= (and start!382312 ((_ is Cons!43343) suffix!1299)) b!4054547))

(assert (= (and start!382312 ((_ is Cons!43343) newSuffix!27)) b!4054536))

(assert (= b!4054563 b!4054561))

(assert (= b!4054568 b!4054563))

(assert (= (and start!382312 ((_ is Cons!43345) rules!2999)) b!4054568))

(assert (= (and start!382312 ((_ is Cons!43343) newSuffixResult!27)) b!4054538))

(declare-fun m!4657333 () Bool)

(assert (=> b!4054544 m!4657333))

(declare-fun m!4657335 () Bool)

(assert (=> b!4054544 m!4657335))

(declare-fun m!4657337 () Bool)

(assert (=> b!4054544 m!4657337))

(assert (=> b!4054544 m!4657337))

(declare-fun m!4657339 () Bool)

(assert (=> b!4054544 m!4657339))

(declare-fun m!4657341 () Bool)

(assert (=> b!4054542 m!4657341))

(declare-fun m!4657343 () Bool)

(assert (=> b!4054552 m!4657343))

(declare-fun m!4657345 () Bool)

(assert (=> b!4054552 m!4657345))

(declare-fun m!4657347 () Bool)

(assert (=> b!4054552 m!4657347))

(declare-fun m!4657349 () Bool)

(assert (=> b!4054552 m!4657349))

(declare-fun m!4657351 () Bool)

(assert (=> start!382312 m!4657351))

(declare-fun m!4657353 () Bool)

(assert (=> b!4054543 m!4657353))

(declare-fun m!4657355 () Bool)

(assert (=> b!4054543 m!4657355))

(declare-fun m!4657357 () Bool)

(assert (=> b!4054543 m!4657357))

(declare-fun m!4657359 () Bool)

(assert (=> b!4054535 m!4657359))

(declare-fun m!4657361 () Bool)

(assert (=> b!4054535 m!4657361))

(declare-fun m!4657363 () Bool)

(assert (=> b!4054535 m!4657363))

(declare-fun m!4657365 () Bool)

(assert (=> b!4054535 m!4657365))

(declare-fun m!4657367 () Bool)

(assert (=> b!4054548 m!4657367))

(declare-fun m!4657369 () Bool)

(assert (=> b!4054554 m!4657369))

(declare-fun m!4657371 () Bool)

(assert (=> b!4054554 m!4657371))

(declare-fun m!4657373 () Bool)

(assert (=> b!4054532 m!4657373))

(declare-fun m!4657375 () Bool)

(assert (=> b!4054532 m!4657375))

(declare-fun m!4657377 () Bool)

(assert (=> b!4054532 m!4657377))

(declare-fun m!4657379 () Bool)

(assert (=> b!4054532 m!4657379))

(assert (=> b!4054532 m!4657377))

(declare-fun m!4657381 () Bool)

(assert (=> b!4054532 m!4657381))

(declare-fun m!4657383 () Bool)

(assert (=> b!4054532 m!4657383))

(declare-fun m!4657385 () Bool)

(assert (=> b!4054532 m!4657385))

(declare-fun m!4657387 () Bool)

(assert (=> b!4054550 m!4657387))

(declare-fun m!4657389 () Bool)

(assert (=> b!4054550 m!4657389))

(declare-fun m!4657391 () Bool)

(assert (=> b!4054550 m!4657391))

(declare-fun m!4657393 () Bool)

(assert (=> b!4054572 m!4657393))

(declare-fun m!4657395 () Bool)

(assert (=> b!4054572 m!4657395))

(declare-fun m!4657397 () Bool)

(assert (=> b!4054572 m!4657397))

(declare-fun m!4657399 () Bool)

(assert (=> b!4054572 m!4657399))

(declare-fun m!4657401 () Bool)

(assert (=> b!4054530 m!4657401))

(declare-fun m!4657403 () Bool)

(assert (=> b!4054562 m!4657403))

(declare-fun m!4657405 () Bool)

(assert (=> b!4054562 m!4657405))

(declare-fun m!4657407 () Bool)

(assert (=> b!4054562 m!4657407))

(declare-fun m!4657409 () Bool)

(assert (=> b!4054566 m!4657409))

(declare-fun m!4657411 () Bool)

(assert (=> b!4054566 m!4657411))

(declare-fun m!4657413 () Bool)

(assert (=> b!4054566 m!4657413))

(declare-fun m!4657415 () Bool)

(assert (=> b!4054566 m!4657415))

(declare-fun m!4657417 () Bool)

(assert (=> b!4054533 m!4657417))

(declare-fun m!4657419 () Bool)

(assert (=> b!4054546 m!4657419))

(declare-fun m!4657421 () Bool)

(assert (=> b!4054546 m!4657421))

(declare-fun m!4657423 () Bool)

(assert (=> b!4054549 m!4657423))

(declare-fun m!4657425 () Bool)

(assert (=> b!4054549 m!4657425))

(declare-fun m!4657427 () Bool)

(assert (=> b!4054549 m!4657427))

(declare-fun m!4657429 () Bool)

(assert (=> b!4054549 m!4657429))

(declare-fun m!4657431 () Bool)

(assert (=> b!4054549 m!4657431))

(declare-fun m!4657433 () Bool)

(assert (=> b!4054551 m!4657433))

(declare-fun m!4657435 () Bool)

(assert (=> b!4054551 m!4657435))

(declare-fun m!4657437 () Bool)

(assert (=> b!4054551 m!4657437))

(declare-fun m!4657439 () Bool)

(assert (=> b!4054551 m!4657439))

(declare-fun m!4657441 () Bool)

(assert (=> b!4054551 m!4657441))

(declare-fun m!4657443 () Bool)

(assert (=> b!4054551 m!4657443))

(declare-fun m!4657445 () Bool)

(assert (=> b!4054551 m!4657445))

(declare-fun m!4657447 () Bool)

(assert (=> b!4054551 m!4657447))

(assert (=> b!4054551 m!4657437))

(declare-fun m!4657449 () Bool)

(assert (=> b!4054551 m!4657449))

(declare-fun m!4657451 () Bool)

(assert (=> b!4054551 m!4657451))

(declare-fun m!4657453 () Bool)

(assert (=> b!4054551 m!4657453))

(assert (=> b!4054551 m!4657443))

(declare-fun m!4657455 () Bool)

(assert (=> b!4054551 m!4657455))

(declare-fun m!4657457 () Bool)

(assert (=> b!4054551 m!4657457))

(declare-fun m!4657459 () Bool)

(assert (=> b!4054551 m!4657459))

(assert (=> b!4054551 m!4657451))

(declare-fun m!4657461 () Bool)

(assert (=> b!4054551 m!4657461))

(declare-fun m!4657463 () Bool)

(assert (=> b!4054551 m!4657463))

(declare-fun m!4657465 () Bool)

(assert (=> b!4054551 m!4657465))

(declare-fun m!4657467 () Bool)

(assert (=> b!4054551 m!4657467))

(declare-fun m!4657469 () Bool)

(assert (=> b!4054537 m!4657469))

(declare-fun m!4657471 () Bool)

(assert (=> b!4054537 m!4657471))

(declare-fun m!4657473 () Bool)

(assert (=> b!4054545 m!4657473))

(declare-fun m!4657475 () Bool)

(assert (=> b!4054565 m!4657475))

(declare-fun m!4657477 () Bool)

(assert (=> b!4054565 m!4657477))

(declare-fun m!4657479 () Bool)

(assert (=> b!4054565 m!4657479))

(declare-fun m!4657481 () Bool)

(assert (=> b!4054565 m!4657481))

(declare-fun m!4657483 () Bool)

(assert (=> b!4054563 m!4657483))

(declare-fun m!4657485 () Bool)

(assert (=> b!4054563 m!4657485))

(declare-fun m!4657487 () Bool)

(assert (=> b!4054539 m!4657487))

(declare-fun m!4657489 () Bool)

(assert (=> b!4054559 m!4657489))

(declare-fun m!4657491 () Bool)

(assert (=> b!4054553 m!4657491))

(declare-fun m!4657493 () Bool)

(assert (=> b!4054553 m!4657493))

(declare-fun m!4657495 () Bool)

(assert (=> b!4054556 m!4657495))

(declare-fun m!4657497 () Bool)

(assert (=> b!4054556 m!4657497))

(declare-fun m!4657499 () Bool)

(assert (=> b!4054558 m!4657499))

(declare-fun m!4657501 () Bool)

(assert (=> b!4054558 m!4657501))

(declare-fun m!4657503 () Bool)

(assert (=> b!4054558 m!4657503))

(declare-fun m!4657505 () Bool)

(assert (=> b!4054558 m!4657505))

(declare-fun m!4657507 () Bool)

(assert (=> b!4054555 m!4657507))

(declare-fun m!4657509 () Bool)

(assert (=> b!4054555 m!4657509))

(declare-fun m!4657511 () Bool)

(assert (=> b!4054569 m!4657511))

(declare-fun m!4657513 () Bool)

(assert (=> b!4054569 m!4657513))

(declare-fun m!4657515 () Bool)

(assert (=> b!4054560 m!4657515))

(declare-fun m!4657517 () Bool)

(assert (=> b!4054560 m!4657517))

(declare-fun m!4657519 () Bool)

(assert (=> b!4054560 m!4657519))

(declare-fun m!4657521 () Bool)

(assert (=> b!4054560 m!4657521))

(declare-fun m!4657523 () Bool)

(assert (=> b!4054567 m!4657523))

(check-sat (not b!4054545) (not b!4054543) (not b!4054565) (not b!4054533) (not b!4054571) (not b!4054555) (not b!4054562) (not b!4054546) (not b!4054558) (not b!4054531) (not b!4054549) (not b!4054554) (not b!4054572) (not b_next!113545) (not b!4054559) (not b!4054556) (not b!4054560) (not b_next!113549) (not b!4054569) b_and!311795 (not b!4054550) (not b!4054535) (not b!4054551) (not b!4054568) (not b!4054532) (not b!4054538) (not b!4054566) (not b!4054552) (not b!4054548) (not b!4054553) b_and!311797 (not b!4054536) (not b_next!113551) (not b!4054539) (not b!4054537) (not b!4054547) b_and!311799 (not b!4054530) (not b!4054542) (not b_next!113547) tp_is_empty!20685 (not b!4054563) (not b!4054544) (not start!382312) (not b!4054567) b_and!311801)
(check-sat (not b_next!113545) (not b_next!113549) b_and!311795 b_and!311799 (not b_next!113547) b_and!311801 b_and!311797 (not b_next!113551))
