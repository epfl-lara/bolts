; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374364 () Bool)

(assert start!374364)

(declare-fun b!3977864 () Bool)

(declare-fun b_free!110385 () Bool)

(declare-fun b_next!111089 () Bool)

(assert (=> b!3977864 (= b_free!110385 (not b_next!111089))))

(declare-fun tp!1212882 () Bool)

(declare-fun b_and!305775 () Bool)

(assert (=> b!3977864 (= tp!1212882 b_and!305775)))

(declare-fun b_free!110387 () Bool)

(declare-fun b_next!111091 () Bool)

(assert (=> b!3977864 (= b_free!110387 (not b_next!111091))))

(declare-fun tp!1212883 () Bool)

(declare-fun b_and!305777 () Bool)

(assert (=> b!3977864 (= tp!1212883 b_and!305777)))

(declare-fun b!3977855 () Bool)

(declare-fun b_free!110389 () Bool)

(declare-fun b_next!111093 () Bool)

(assert (=> b!3977855 (= b_free!110389 (not b_next!111093))))

(declare-fun tp!1212889 () Bool)

(declare-fun b_and!305779 () Bool)

(assert (=> b!3977855 (= tp!1212889 b_and!305779)))

(declare-fun b_free!110391 () Bool)

(declare-fun b_next!111095 () Bool)

(assert (=> b!3977855 (= b_free!110391 (not b_next!111095))))

(declare-fun tp!1212885 () Bool)

(declare-fun b_and!305781 () Bool)

(assert (=> b!3977855 (= tp!1212885 b_and!305781)))

(declare-fun b!3977852 () Bool)

(declare-fun e!2464942 () Bool)

(declare-fun e!2464914 () Bool)

(assert (=> b!3977852 (= e!2464942 e!2464914)))

(declare-fun res!1611448 () Bool)

(assert (=> b!3977852 (=> res!1611448 e!2464914)))

(declare-datatypes ((C!23412 0))(
  ( (C!23413 (val!13800 Int)) )
))
(declare-datatypes ((List!42644 0))(
  ( (Nil!42520) (Cons!42520 (h!47940 C!23412) (t!331155 List!42644)) )
))
(declare-fun lt!1395942 () List!42644)

(declare-fun prefix!494 () List!42644)

(assert (=> b!3977852 (= res!1611448 (not (= lt!1395942 prefix!494)))))

(declare-fun lt!1395954 () List!42644)

(declare-fun lt!1395960 () List!42644)

(declare-fun ++!11110 (List!42644 List!42644) List!42644)

(assert (=> b!3977852 (= lt!1395942 (++!11110 lt!1395954 lt!1395960))))

(declare-fun getSuffix!2226 (List!42644 List!42644) List!42644)

(assert (=> b!3977852 (= lt!1395960 (getSuffix!2226 prefix!494 lt!1395954))))

(declare-fun isPrefix!3795 (List!42644 List!42644) Bool)

(assert (=> b!3977852 (isPrefix!3795 lt!1395954 prefix!494)))

(declare-fun lt!1395939 () List!42644)

(declare-datatypes ((Unit!61170 0))(
  ( (Unit!61171) )
))
(declare-fun lt!1395935 () Unit!61170)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!373 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> b!3977852 (= lt!1395935 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!373 prefix!494 lt!1395954 lt!1395939))))

(declare-fun b!3977853 () Bool)

(declare-fun e!2464930 () Bool)

(declare-fun tp_is_empty!20197 () Bool)

(declare-fun tp!1212891 () Bool)

(assert (=> b!3977853 (= e!2464930 (and tp_is_empty!20197 tp!1212891))))

(declare-fun b!3977854 () Bool)

(declare-datatypes ((IArray!25843 0))(
  ( (IArray!25844 (innerList!12979 List!42644)) )
))
(declare-datatypes ((Conc!12919 0))(
  ( (Node!12919 (left!32171 Conc!12919) (right!32501 Conc!12919) (csize!26068 Int) (cheight!13130 Int)) (Leaf!19980 (xs!16225 IArray!25843) (csize!26069 Int)) (Empty!12919) )
))
(declare-datatypes ((BalanceConc!25432 0))(
  ( (BalanceConc!25433 (c!689366 Conc!12919)) )
))
(declare-datatypes ((List!42645 0))(
  ( (Nil!42521) (Cons!42521 (h!47941 (_ BitVec 16)) (t!331156 List!42645)) )
))
(declare-datatypes ((TokenValue!6938 0))(
  ( (FloatLiteralValue!13876 (text!49011 List!42645)) (TokenValueExt!6937 (__x!26093 Int)) (Broken!34690 (value!211786 List!42645)) (Object!7061) (End!6938) (Def!6938) (Underscore!6938) (Match!6938) (Else!6938) (Error!6938) (Case!6938) (If!6938) (Extends!6938) (Abstract!6938) (Class!6938) (Val!6938) (DelimiterValue!13876 (del!6998 List!42645)) (KeywordValue!6944 (value!211787 List!42645)) (CommentValue!13876 (value!211788 List!42645)) (WhitespaceValue!13876 (value!211789 List!42645)) (IndentationValue!6938 (value!211790 List!42645)) (String!48407) (Int32!6938) (Broken!34691 (value!211791 List!42645)) (Boolean!6939) (Unit!61172) (OperatorValue!6941 (op!6998 List!42645)) (IdentifierValue!13876 (value!211792 List!42645)) (IdentifierValue!13877 (value!211793 List!42645)) (WhitespaceValue!13877 (value!211794 List!42645)) (True!13876) (False!13876) (Broken!34692 (value!211795 List!42645)) (Broken!34693 (value!211796 List!42645)) (True!13877) (RightBrace!6938) (RightBracket!6938) (Colon!6938) (Null!6938) (Comma!6938) (LeftBracket!6938) (False!13877) (LeftBrace!6938) (ImaginaryLiteralValue!6938 (text!49012 List!42645)) (StringLiteralValue!20814 (value!211797 List!42645)) (EOFValue!6938 (value!211798 List!42645)) (IdentValue!6938 (value!211799 List!42645)) (DelimiterValue!13877 (value!211800 List!42645)) (DedentValue!6938 (value!211801 List!42645)) (NewLineValue!6938 (value!211802 List!42645)) (IntegerValue!20814 (value!211803 (_ BitVec 32)) (text!49013 List!42645)) (IntegerValue!20815 (value!211804 Int) (text!49014 List!42645)) (Times!6938) (Or!6938) (Equal!6938) (Minus!6938) (Broken!34694 (value!211805 List!42645)) (And!6938) (Div!6938) (LessEqual!6938) (Mod!6938) (Concat!18551) (Not!6938) (Plus!6938) (SpaceValue!6938 (value!211806 List!42645)) (IntegerValue!20816 (value!211807 Int) (text!49015 List!42645)) (StringLiteralValue!20815 (text!49016 List!42645)) (FloatLiteralValue!13877 (text!49017 List!42645)) (BytesLiteralValue!6938 (value!211808 List!42645)) (CommentValue!13877 (value!211809 List!42645)) (StringLiteralValue!20816 (value!211810 List!42645)) (ErrorTokenValue!6938 (msg!6999 List!42645)) )
))
(declare-datatypes ((Regex!11613 0))(
  ( (ElementMatch!11613 (c!689367 C!23412)) (Concat!18552 (regOne!23738 Regex!11613) (regTwo!23738 Regex!11613)) (EmptyExpr!11613) (Star!11613 (reg!11942 Regex!11613)) (EmptyLang!11613) (Union!11613 (regOne!23739 Regex!11613) (regTwo!23739 Regex!11613)) )
))
(declare-datatypes ((String!48408 0))(
  ( (String!48409 (value!211811 String)) )
))
(declare-datatypes ((TokenValueInjection!13304 0))(
  ( (TokenValueInjection!13305 (toValue!9196 Int) (toChars!9055 Int)) )
))
(declare-datatypes ((Rule!13216 0))(
  ( (Rule!13217 (regex!6708 Regex!11613) (tag!7568 String!48408) (isSeparator!6708 Bool) (transformation!6708 TokenValueInjection!13304)) )
))
(declare-datatypes ((Token!12554 0))(
  ( (Token!12555 (value!211812 TokenValue!6938) (rule!9708 Rule!13216) (size!31808 Int) (originalCharacters!7308 List!42644)) )
))
(declare-fun token!484 () Token!12554)

(declare-fun e!2464938 () Bool)

(declare-fun e!2464933 () Bool)

(declare-fun tp!1212888 () Bool)

(declare-fun inv!21 (TokenValue!6938) Bool)

(assert (=> b!3977854 (= e!2464933 (and (inv!21 (value!211812 token!484)) e!2464938 tp!1212888))))

(declare-fun e!2464937 () Bool)

(assert (=> b!3977855 (= e!2464937 (and tp!1212889 tp!1212885))))

(declare-fun b!3977856 () Bool)

(declare-fun e!2464944 () Bool)

(assert (=> b!3977856 (= e!2464944 e!2464942)))

(declare-fun res!1611441 () Bool)

(assert (=> b!3977856 (=> res!1611441 e!2464942)))

(assert (=> b!3977856 (= res!1611441 (not (isPrefix!3795 lt!1395954 lt!1395939)))))

(assert (=> b!3977856 (isPrefix!3795 prefix!494 lt!1395939)))

(declare-fun lt!1395956 () Unit!61170)

(declare-fun suffix!1299 () List!42644)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2638 (List!42644 List!42644) Unit!61170)

(assert (=> b!3977856 (= lt!1395956 (lemmaConcatTwoListThenFirstIsPrefix!2638 prefix!494 suffix!1299))))

(declare-fun lt!1395945 () List!42644)

(assert (=> b!3977856 (isPrefix!3795 lt!1395954 lt!1395945)))

(declare-fun lt!1395951 () Unit!61170)

(declare-fun suffixResult!105 () List!42644)

(assert (=> b!3977856 (= lt!1395951 (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 suffixResult!105))))

(declare-fun b!3977857 () Bool)

(declare-fun e!2464943 () Bool)

(declare-fun e!2464920 () Bool)

(assert (=> b!3977857 (= e!2464943 e!2464920)))

(declare-fun res!1611453 () Bool)

(assert (=> b!3977857 (=> res!1611453 e!2464920)))

(declare-datatypes ((tuple2!41752 0))(
  ( (tuple2!41753 (_1!24010 Token!12554) (_2!24010 List!42644)) )
))
(declare-datatypes ((Option!9122 0))(
  ( (None!9121) (Some!9121 (v!39469 tuple2!41752)) )
))
(declare-fun lt!1395938 () Option!9122)

(get-info :version)

(assert (=> b!3977857 (= res!1611453 (not ((_ is Some!9121) lt!1395938)))))

(declare-datatypes ((LexerInterface!6297 0))(
  ( (LexerInterfaceExt!6294 (__x!26094 Int)) (Lexer!6295) )
))
(declare-fun thiss!21717 () LexerInterface!6297)

(declare-datatypes ((List!42646 0))(
  ( (Nil!42522) (Cons!42522 (h!47942 Rule!13216) (t!331157 List!42646)) )
))
(declare-fun rules!2999 () List!42646)

(declare-fun lt!1395970 () List!42644)

(declare-fun maxPrefix!3595 (LexerInterface!6297 List!42646 List!42644) Option!9122)

(assert (=> b!3977857 (= lt!1395938 (maxPrefix!3595 thiss!21717 rules!2999 lt!1395970))))

(declare-fun lt!1395934 () List!42644)

(declare-fun lt!1395967 () tuple2!41752)

(declare-fun lt!1395948 () Token!12554)

(assert (=> b!3977857 (and (= suffixResult!105 lt!1395934) (= lt!1395967 (tuple2!41753 lt!1395948 lt!1395934)))))

(declare-fun lt!1395973 () Unit!61170)

(declare-fun lemmaSamePrefixThenSameSuffix!1982 (List!42644 List!42644 List!42644 List!42644 List!42644) Unit!61170)

(assert (=> b!3977857 (= lt!1395973 (lemmaSamePrefixThenSameSuffix!1982 lt!1395954 suffixResult!105 lt!1395954 lt!1395934 lt!1395939))))

(declare-fun lt!1395959 () List!42644)

(assert (=> b!3977857 (isPrefix!3795 lt!1395954 lt!1395959)))

(declare-fun lt!1395927 () Unit!61170)

(assert (=> b!3977857 (= lt!1395927 (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 lt!1395934))))

(declare-fun b!3977858 () Bool)

(declare-fun e!2464928 () Bool)

(declare-fun tp!1212886 () Bool)

(assert (=> b!3977858 (= e!2464928 (and tp_is_empty!20197 tp!1212886))))

(declare-fun b!3977859 () Bool)

(declare-fun e!2464916 () Bool)

(assert (=> b!3977859 (= e!2464916 (not e!2464944))))

(declare-fun res!1611446 () Bool)

(assert (=> b!3977859 (=> res!1611446 e!2464944)))

(assert (=> b!3977859 (= res!1611446 (not (= lt!1395945 lt!1395939)))))

(assert (=> b!3977859 (= lt!1395945 (++!11110 lt!1395954 suffixResult!105))))

(declare-fun lt!1395968 () Unit!61170)

(declare-fun lemmaInv!923 (TokenValueInjection!13304) Unit!61170)

(assert (=> b!3977859 (= lt!1395968 (lemmaInv!923 (transformation!6708 (rule!9708 token!484))))))

(declare-fun ruleValid!2640 (LexerInterface!6297 Rule!13216) Bool)

(assert (=> b!3977859 (ruleValid!2640 thiss!21717 (rule!9708 token!484))))

(declare-fun lt!1395964 () Unit!61170)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1714 (LexerInterface!6297 Rule!13216 List!42646) Unit!61170)

(assert (=> b!3977859 (= lt!1395964 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1714 thiss!21717 (rule!9708 token!484) rules!2999))))

(declare-fun b!3977860 () Bool)

(declare-fun res!1611443 () Bool)

(declare-fun e!2464922 () Bool)

(assert (=> b!3977860 (=> (not res!1611443) (not e!2464922))))

(declare-fun isEmpty!25424 (List!42646) Bool)

(assert (=> b!3977860 (= res!1611443 (not (isEmpty!25424 rules!2999)))))

(declare-fun b!3977861 () Bool)

(declare-fun e!2464917 () Bool)

(declare-fun tp!1212880 () Bool)

(declare-fun inv!56802 (String!48408) Bool)

(declare-fun inv!56805 (TokenValueInjection!13304) Bool)

(assert (=> b!3977861 (= e!2464938 (and tp!1212880 (inv!56802 (tag!7568 (rule!9708 token!484))) (inv!56805 (transformation!6708 (rule!9708 token!484))) e!2464917))))

(declare-fun b!3977862 () Bool)

(declare-fun e!2464919 () Bool)

(declare-fun lt!1395937 () Int)

(declare-fun size!31809 (List!42644) Int)

(assert (=> b!3977862 (= e!2464919 (>= (size!31809 lt!1395970) lt!1395937))))

(declare-fun b!3977863 () Bool)

(declare-fun e!2464935 () Bool)

(declare-fun tp!1212887 () Bool)

(assert (=> b!3977863 (= e!2464935 (and tp_is_empty!20197 tp!1212887))))

(assert (=> b!3977864 (= e!2464917 (and tp!1212882 tp!1212883))))

(declare-fun b!3977865 () Bool)

(declare-fun res!1611452 () Bool)

(assert (=> b!3977865 (=> (not res!1611452) (not e!2464922))))

(declare-fun newSuffix!27 () List!42644)

(assert (=> b!3977865 (= res!1611452 (>= (size!31809 suffix!1299) (size!31809 newSuffix!27)))))

(declare-fun res!1611450 () Bool)

(assert (=> start!374364 (=> (not res!1611450) (not e!2464922))))

(assert (=> start!374364 (= res!1611450 ((_ is Lexer!6295) thiss!21717))))

(assert (=> start!374364 e!2464922))

(declare-fun e!2464934 () Bool)

(assert (=> start!374364 e!2464934))

(declare-fun inv!56806 (Token!12554) Bool)

(assert (=> start!374364 (and (inv!56806 token!484) e!2464933)))

(assert (=> start!374364 e!2464930))

(assert (=> start!374364 e!2464935))

(declare-fun e!2464915 () Bool)

(assert (=> start!374364 e!2464915))

(assert (=> start!374364 true))

(declare-fun e!2464925 () Bool)

(assert (=> start!374364 e!2464925))

(assert (=> start!374364 e!2464928))

(declare-fun e!2464929 () Bool)

(declare-fun tp!1212881 () Bool)

(declare-fun b!3977866 () Bool)

(assert (=> b!3977866 (= e!2464929 (and tp!1212881 (inv!56802 (tag!7568 (h!47942 rules!2999))) (inv!56805 (transformation!6708 (h!47942 rules!2999))) e!2464937))))

(declare-fun b!3977867 () Bool)

(declare-fun tp!1212892 () Bool)

(assert (=> b!3977867 (= e!2464925 (and e!2464929 tp!1212892))))

(declare-fun b!3977868 () Bool)

(declare-fun res!1611447 () Bool)

(declare-fun e!2464940 () Bool)

(assert (=> b!3977868 (=> (not res!1611447) (not e!2464940))))

(assert (=> b!3977868 (= res!1611447 (= (size!31808 token!484) (size!31809 (originalCharacters!7308 token!484))))))

(declare-fun b!3977869 () Bool)

(declare-fun e!2464921 () Bool)

(declare-fun e!2464939 () Bool)

(assert (=> b!3977869 (= e!2464921 e!2464939)))

(declare-fun res!1611435 () Bool)

(assert (=> b!3977869 (=> res!1611435 e!2464939)))

(declare-fun matchR!5590 (Regex!11613 List!42644) Bool)

(assert (=> b!3977869 (= res!1611435 (not (matchR!5590 (regex!6708 (rule!9708 token!484)) lt!1395954)))))

(assert (=> b!3977869 (isPrefix!3795 lt!1395954 lt!1395970)))

(declare-fun lt!1395928 () Unit!61170)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!628 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> b!3977869 (= lt!1395928 (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395954 prefix!494 newSuffix!27))))

(declare-fun lt!1395930 () Unit!61170)

(assert (=> b!3977869 (= lt!1395930 (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395954 prefix!494 suffix!1299))))

(declare-fun b!3977870 () Bool)

(declare-fun e!2464941 () Bool)

(assert (=> b!3977870 (= e!2464941 e!2464919)))

(declare-fun res!1611455 () Bool)

(assert (=> b!3977870 (=> res!1611455 e!2464919)))

(declare-fun lt!1395940 () List!42644)

(assert (=> b!3977870 (= res!1611455 (not (isPrefix!3795 lt!1395940 lt!1395939)))))

(declare-fun lt!1395931 () List!42644)

(assert (=> b!3977870 (isPrefix!3795 lt!1395940 lt!1395931)))

(declare-fun lt!1395962 () Unit!61170)

(declare-fun lt!1395974 () List!42644)

(assert (=> b!3977870 (= lt!1395962 (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395940 lt!1395970 lt!1395974))))

(declare-fun b!3977871 () Bool)

(declare-fun e!2464936 () Bool)

(assert (=> b!3977871 (= e!2464914 e!2464936)))

(declare-fun res!1611444 () Bool)

(assert (=> b!3977871 (=> res!1611444 e!2464936)))

(declare-fun lt!1395929 () List!42644)

(declare-fun lt!1395932 () List!42644)

(assert (=> b!3977871 (= res!1611444 (or (not (= lt!1395939 lt!1395932)) (not (= lt!1395939 lt!1395929))))))

(assert (=> b!3977871 (= lt!1395932 lt!1395929)))

(declare-fun lt!1395963 () List!42644)

(assert (=> b!3977871 (= lt!1395929 (++!11110 lt!1395954 lt!1395963))))

(assert (=> b!3977871 (= lt!1395932 (++!11110 lt!1395942 suffix!1299))))

(assert (=> b!3977871 (= lt!1395963 (++!11110 lt!1395960 suffix!1299))))

(declare-fun lt!1395971 () Unit!61170)

(declare-fun lemmaConcatAssociativity!2430 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> b!3977871 (= lt!1395971 (lemmaConcatAssociativity!2430 lt!1395954 lt!1395960 suffix!1299))))

(declare-fun b!3977872 () Bool)

(declare-fun e!2464931 () Bool)

(assert (=> b!3977872 (= e!2464931 e!2464916)))

(declare-fun res!1611440 () Bool)

(assert (=> b!3977872 (=> (not res!1611440) (not e!2464916))))

(declare-fun lt!1395936 () Option!9122)

(assert (=> b!3977872 (= res!1611440 (= (maxPrefix!3595 thiss!21717 rules!2999 lt!1395939) lt!1395936))))

(assert (=> b!3977872 (= lt!1395936 (Some!9121 lt!1395967))))

(assert (=> b!3977872 (= lt!1395967 (tuple2!41753 token!484 suffixResult!105))))

(assert (=> b!3977872 (= lt!1395939 (++!11110 prefix!494 suffix!1299))))

(declare-fun b!3977873 () Bool)

(declare-fun res!1611436 () Bool)

(assert (=> b!3977873 (=> (not res!1611436) (not e!2464940))))

(declare-fun lt!1395949 () TokenValue!6938)

(assert (=> b!3977873 (= res!1611436 (= (value!211812 token!484) lt!1395949))))

(declare-fun b!3977874 () Bool)

(declare-fun res!1611458 () Bool)

(assert (=> b!3977874 (=> res!1611458 e!2464919)))

(declare-fun lt!1395947 () List!42644)

(assert (=> b!3977874 (= res!1611458 (not (= lt!1395947 lt!1395970)))))

(declare-fun b!3977875 () Bool)

(declare-fun lt!1395965 () Int)

(assert (=> b!3977875 (= e!2464940 (and (= (size!31808 token!484) lt!1395965) (= (originalCharacters!7308 token!484) lt!1395954)))))

(declare-fun b!3977876 () Bool)

(declare-fun tp!1212884 () Bool)

(assert (=> b!3977876 (= e!2464934 (and tp_is_empty!20197 tp!1212884))))

(declare-fun b!3977877 () Bool)

(assert (=> b!3977877 (= e!2464936 e!2464921)))

(declare-fun res!1611451 () Bool)

(assert (=> b!3977877 (=> res!1611451 e!2464921)))

(declare-fun lt!1395955 () Option!9122)

(assert (=> b!3977877 (= res!1611451 (not (= lt!1395955 lt!1395936)))))

(assert (=> b!3977877 (= lt!1395955 (Some!9121 (tuple2!41753 lt!1395948 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2629 (LexerInterface!6297 Rule!13216 List!42644) Option!9122)

(assert (=> b!3977877 (= lt!1395955 (maxPrefixOneRule!2629 thiss!21717 (rule!9708 token!484) lt!1395939))))

(assert (=> b!3977877 (= lt!1395948 (Token!12555 lt!1395949 (rule!9708 token!484) lt!1395965 lt!1395954))))

(declare-fun apply!9919 (TokenValueInjection!13304 BalanceConc!25432) TokenValue!6938)

(declare-fun seqFromList!4947 (List!42644) BalanceConc!25432)

(assert (=> b!3977877 (= lt!1395949 (apply!9919 (transformation!6708 (rule!9708 token!484)) (seqFromList!4947 lt!1395954)))))

(declare-fun lt!1395925 () Unit!61170)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1451 (LexerInterface!6297 List!42646 List!42644 List!42644 List!42644 Rule!13216) Unit!61170)

(assert (=> b!3977877 (= lt!1395925 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1451 thiss!21717 rules!2999 lt!1395954 lt!1395939 suffixResult!105 (rule!9708 token!484)))))

(assert (=> b!3977877 (= lt!1395963 suffixResult!105)))

(declare-fun lt!1395958 () Unit!61170)

(assert (=> b!3977877 (= lt!1395958 (lemmaSamePrefixThenSameSuffix!1982 lt!1395954 lt!1395963 lt!1395954 suffixResult!105 lt!1395939))))

(assert (=> b!3977877 (isPrefix!3795 lt!1395954 lt!1395929)))

(declare-fun lt!1395933 () Unit!61170)

(assert (=> b!3977877 (= lt!1395933 (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 lt!1395963))))

(declare-fun b!3977878 () Bool)

(declare-fun e!2464927 () Bool)

(assert (=> b!3977878 (= e!2464927 e!2464941)))

(declare-fun res!1611442 () Bool)

(assert (=> b!3977878 (=> res!1611442 e!2464941)))

(assert (=> b!3977878 (= res!1611442 (not (= lt!1395931 lt!1395939)))))

(declare-fun lt!1395941 () List!42644)

(assert (=> b!3977878 (= lt!1395931 (++!11110 prefix!494 lt!1395941))))

(assert (=> b!3977878 (= lt!1395931 (++!11110 lt!1395970 lt!1395974))))

(declare-fun lt!1395944 () Unit!61170)

(assert (=> b!3977878 (= lt!1395944 (lemmaConcatAssociativity!2430 prefix!494 newSuffix!27 lt!1395974))))

(declare-fun b!3977879 () Bool)

(declare-fun e!2464932 () Bool)

(assert (=> b!3977879 (= e!2464922 e!2464932)))

(declare-fun res!1611457 () Bool)

(assert (=> b!3977879 (=> (not res!1611457) (not e!2464932))))

(declare-fun lt!1395966 () Int)

(assert (=> b!3977879 (= res!1611457 (>= lt!1395966 lt!1395965))))

(assert (=> b!3977879 (= lt!1395965 (size!31809 lt!1395954))))

(assert (=> b!3977879 (= lt!1395966 (size!31809 prefix!494))))

(declare-fun list!15780 (BalanceConc!25432) List!42644)

(declare-fun charsOf!4524 (Token!12554) BalanceConc!25432)

(assert (=> b!3977879 (= lt!1395954 (list!15780 (charsOf!4524 token!484)))))

(declare-fun b!3977880 () Bool)

(assert (=> b!3977880 (= e!2464932 e!2464931)))

(declare-fun res!1611454 () Bool)

(assert (=> b!3977880 (=> (not res!1611454) (not e!2464931))))

(declare-fun lt!1395952 () List!42644)

(assert (=> b!3977880 (= res!1611454 (= lt!1395952 lt!1395970))))

(assert (=> b!3977880 (= lt!1395970 (++!11110 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42644)

(assert (=> b!3977880 (= lt!1395952 (++!11110 lt!1395954 newSuffixResult!27))))

(declare-fun b!3977881 () Bool)

(declare-fun res!1611449 () Bool)

(assert (=> b!3977881 (=> (not res!1611449) (not e!2464922))))

(declare-fun rulesInvariant!5640 (LexerInterface!6297 List!42646) Bool)

(assert (=> b!3977881 (= res!1611449 (rulesInvariant!5640 thiss!21717 rules!2999))))

(declare-fun b!3977882 () Bool)

(declare-fun e!2464924 () Bool)

(assert (=> b!3977882 (= e!2464920 e!2464924)))

(declare-fun res!1611438 () Bool)

(assert (=> b!3977882 (=> res!1611438 e!2464924)))

(declare-fun lt!1395975 () Option!9122)

(assert (=> b!3977882 (= res!1611438 (not (= lt!1395975 (Some!9121 (v!39469 lt!1395938)))))))

(assert (=> b!3977882 (isPrefix!3795 lt!1395940 (++!11110 lt!1395940 newSuffixResult!27))))

(declare-fun lt!1395972 () Unit!61170)

(assert (=> b!3977882 (= lt!1395972 (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395940 newSuffixResult!27))))

(assert (=> b!3977882 (isPrefix!3795 lt!1395940 lt!1395947)))

(assert (=> b!3977882 (= lt!1395947 (++!11110 lt!1395940 (_2!24010 (v!39469 lt!1395938))))))

(declare-fun lt!1395969 () Unit!61170)

(assert (=> b!3977882 (= lt!1395969 (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395940 (_2!24010 (v!39469 lt!1395938))))))

(declare-fun lt!1395926 () TokenValue!6938)

(assert (=> b!3977882 (= lt!1395975 (Some!9121 (tuple2!41753 (Token!12555 lt!1395926 (rule!9708 (_1!24010 (v!39469 lt!1395938))) lt!1395937 lt!1395940) (_2!24010 (v!39469 lt!1395938)))))))

(assert (=> b!3977882 (= lt!1395975 (maxPrefixOneRule!2629 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) lt!1395970))))

(assert (=> b!3977882 (= lt!1395937 (size!31809 lt!1395940))))

(assert (=> b!3977882 (= lt!1395926 (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (seqFromList!4947 lt!1395940)))))

(declare-fun lt!1395943 () Unit!61170)

(assert (=> b!3977882 (= lt!1395943 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1451 thiss!21717 rules!2999 lt!1395940 lt!1395970 (_2!24010 (v!39469 lt!1395938)) (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))

(assert (=> b!3977882 (= lt!1395940 (list!15780 (charsOf!4524 (_1!24010 (v!39469 lt!1395938)))))))

(declare-fun lt!1395953 () Unit!61170)

(assert (=> b!3977882 (= lt!1395953 (lemmaInv!923 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))))

(assert (=> b!3977882 (ruleValid!2640 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))

(declare-fun lt!1395961 () Unit!61170)

(assert (=> b!3977882 (= lt!1395961 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1714 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) rules!2999))))

(declare-fun lt!1395957 () Unit!61170)

(declare-fun lemmaCharactersSize!1303 (Token!12554) Unit!61170)

(assert (=> b!3977882 (= lt!1395957 (lemmaCharactersSize!1303 token!484))))

(declare-fun lt!1395946 () Unit!61170)

(assert (=> b!3977882 (= lt!1395946 (lemmaCharactersSize!1303 (_1!24010 (v!39469 lt!1395938))))))

(declare-fun b!3977883 () Bool)

(declare-fun tp!1212890 () Bool)

(assert (=> b!3977883 (= e!2464915 (and tp_is_empty!20197 tp!1212890))))

(declare-fun b!3977884 () Bool)

(declare-fun res!1611439 () Bool)

(assert (=> b!3977884 (=> (not res!1611439) (not e!2464922))))

(assert (=> b!3977884 (= res!1611439 (isPrefix!3795 newSuffix!27 suffix!1299))))

(declare-fun b!3977885 () Bool)

(assert (=> b!3977885 (= e!2464924 e!2464927)))

(declare-fun res!1611445 () Bool)

(assert (=> b!3977885 (=> res!1611445 e!2464927)))

(assert (=> b!3977885 (= res!1611445 (not (= lt!1395941 suffix!1299)))))

(assert (=> b!3977885 (= lt!1395941 (++!11110 newSuffix!27 lt!1395974))))

(assert (=> b!3977885 (= lt!1395974 (getSuffix!2226 suffix!1299 newSuffix!27))))

(declare-fun b!3977886 () Bool)

(assert (=> b!3977886 (= e!2464939 e!2464943)))

(declare-fun res!1611456 () Bool)

(assert (=> b!3977886 (=> res!1611456 e!2464943)))

(assert (=> b!3977886 (= res!1611456 (not (= lt!1395959 lt!1395939)))))

(assert (=> b!3977886 (= lt!1395959 (++!11110 lt!1395954 lt!1395934))))

(assert (=> b!3977886 (= lt!1395934 (getSuffix!2226 lt!1395939 lt!1395954))))

(assert (=> b!3977886 e!2464940))

(declare-fun res!1611437 () Bool)

(assert (=> b!3977886 (=> (not res!1611437) (not e!2464940))))

(assert (=> b!3977886 (= res!1611437 (isPrefix!3795 lt!1395939 lt!1395939))))

(declare-fun lt!1395950 () Unit!61170)

(declare-fun lemmaIsPrefixRefl!2387 (List!42644 List!42644) Unit!61170)

(assert (=> b!3977886 (= lt!1395950 (lemmaIsPrefixRefl!2387 lt!1395939 lt!1395939))))

(assert (= (and start!374364 res!1611450) b!3977860))

(assert (= (and b!3977860 res!1611443) b!3977881))

(assert (= (and b!3977881 res!1611449) b!3977865))

(assert (= (and b!3977865 res!1611452) b!3977884))

(assert (= (and b!3977884 res!1611439) b!3977879))

(assert (= (and b!3977879 res!1611457) b!3977880))

(assert (= (and b!3977880 res!1611454) b!3977872))

(assert (= (and b!3977872 res!1611440) b!3977859))

(assert (= (and b!3977859 (not res!1611446)) b!3977856))

(assert (= (and b!3977856 (not res!1611441)) b!3977852))

(assert (= (and b!3977852 (not res!1611448)) b!3977871))

(assert (= (and b!3977871 (not res!1611444)) b!3977877))

(assert (= (and b!3977877 (not res!1611451)) b!3977869))

(assert (= (and b!3977869 (not res!1611435)) b!3977886))

(assert (= (and b!3977886 res!1611437) b!3977873))

(assert (= (and b!3977873 res!1611436) b!3977868))

(assert (= (and b!3977868 res!1611447) b!3977875))

(assert (= (and b!3977886 (not res!1611456)) b!3977857))

(assert (= (and b!3977857 (not res!1611453)) b!3977882))

(assert (= (and b!3977882 (not res!1611438)) b!3977885))

(assert (= (and b!3977885 (not res!1611445)) b!3977878))

(assert (= (and b!3977878 (not res!1611442)) b!3977870))

(assert (= (and b!3977870 (not res!1611455)) b!3977874))

(assert (= (and b!3977874 (not res!1611458)) b!3977862))

(assert (= (and start!374364 ((_ is Cons!42520) prefix!494)) b!3977876))

(assert (= b!3977861 b!3977864))

(assert (= b!3977854 b!3977861))

(assert (= start!374364 b!3977854))

(assert (= (and start!374364 ((_ is Cons!42520) suffixResult!105)) b!3977853))

(assert (= (and start!374364 ((_ is Cons!42520) suffix!1299)) b!3977863))

(assert (= (and start!374364 ((_ is Cons!42520) newSuffix!27)) b!3977883))

(assert (= b!3977866 b!3977855))

(assert (= b!3977867 b!3977866))

(assert (= (and start!374364 ((_ is Cons!42522) rules!2999)) b!3977867))

(assert (= (and start!374364 ((_ is Cons!42520) newSuffixResult!27)) b!3977858))

(declare-fun m!4549579 () Bool)

(assert (=> b!3977882 m!4549579))

(declare-fun m!4549581 () Bool)

(assert (=> b!3977882 m!4549581))

(declare-fun m!4549583 () Bool)

(assert (=> b!3977882 m!4549583))

(declare-fun m!4549585 () Bool)

(assert (=> b!3977882 m!4549585))

(declare-fun m!4549587 () Bool)

(assert (=> b!3977882 m!4549587))

(declare-fun m!4549589 () Bool)

(assert (=> b!3977882 m!4549589))

(declare-fun m!4549591 () Bool)

(assert (=> b!3977882 m!4549591))

(declare-fun m!4549593 () Bool)

(assert (=> b!3977882 m!4549593))

(declare-fun m!4549595 () Bool)

(assert (=> b!3977882 m!4549595))

(declare-fun m!4549597 () Bool)

(assert (=> b!3977882 m!4549597))

(assert (=> b!3977882 m!4549579))

(declare-fun m!4549599 () Bool)

(assert (=> b!3977882 m!4549599))

(declare-fun m!4549601 () Bool)

(assert (=> b!3977882 m!4549601))

(declare-fun m!4549603 () Bool)

(assert (=> b!3977882 m!4549603))

(declare-fun m!4549605 () Bool)

(assert (=> b!3977882 m!4549605))

(declare-fun m!4549607 () Bool)

(assert (=> b!3977882 m!4549607))

(declare-fun m!4549609 () Bool)

(assert (=> b!3977882 m!4549609))

(declare-fun m!4549611 () Bool)

(assert (=> b!3977882 m!4549611))

(assert (=> b!3977882 m!4549589))

(declare-fun m!4549613 () Bool)

(assert (=> b!3977882 m!4549613))

(assert (=> b!3977882 m!4549583))

(declare-fun m!4549615 () Bool)

(assert (=> b!3977852 m!4549615))

(declare-fun m!4549617 () Bool)

(assert (=> b!3977852 m!4549617))

(declare-fun m!4549619 () Bool)

(assert (=> b!3977852 m!4549619))

(declare-fun m!4549621 () Bool)

(assert (=> b!3977852 m!4549621))

(declare-fun m!4549623 () Bool)

(assert (=> b!3977886 m!4549623))

(declare-fun m!4549625 () Bool)

(assert (=> b!3977886 m!4549625))

(declare-fun m!4549627 () Bool)

(assert (=> b!3977886 m!4549627))

(declare-fun m!4549629 () Bool)

(assert (=> b!3977886 m!4549629))

(declare-fun m!4549631 () Bool)

(assert (=> b!3977885 m!4549631))

(declare-fun m!4549633 () Bool)

(assert (=> b!3977885 m!4549633))

(declare-fun m!4549635 () Bool)

(assert (=> b!3977881 m!4549635))

(declare-fun m!4549637 () Bool)

(assert (=> b!3977871 m!4549637))

(declare-fun m!4549639 () Bool)

(assert (=> b!3977871 m!4549639))

(declare-fun m!4549641 () Bool)

(assert (=> b!3977871 m!4549641))

(declare-fun m!4549643 () Bool)

(assert (=> b!3977871 m!4549643))

(declare-fun m!4549645 () Bool)

(assert (=> b!3977880 m!4549645))

(declare-fun m!4549647 () Bool)

(assert (=> b!3977880 m!4549647))

(declare-fun m!4549649 () Bool)

(assert (=> b!3977860 m!4549649))

(declare-fun m!4549651 () Bool)

(assert (=> b!3977862 m!4549651))

(declare-fun m!4549653 () Bool)

(assert (=> b!3977854 m!4549653))

(declare-fun m!4549655 () Bool)

(assert (=> b!3977869 m!4549655))

(declare-fun m!4549657 () Bool)

(assert (=> b!3977869 m!4549657))

(declare-fun m!4549659 () Bool)

(assert (=> b!3977869 m!4549659))

(declare-fun m!4549661 () Bool)

(assert (=> b!3977869 m!4549661))

(declare-fun m!4549663 () Bool)

(assert (=> b!3977857 m!4549663))

(declare-fun m!4549665 () Bool)

(assert (=> b!3977857 m!4549665))

(declare-fun m!4549667 () Bool)

(assert (=> b!3977857 m!4549667))

(declare-fun m!4549669 () Bool)

(assert (=> b!3977857 m!4549669))

(declare-fun m!4549671 () Bool)

(assert (=> start!374364 m!4549671))

(declare-fun m!4549673 () Bool)

(assert (=> b!3977861 m!4549673))

(declare-fun m!4549675 () Bool)

(assert (=> b!3977861 m!4549675))

(declare-fun m!4549677 () Bool)

(assert (=> b!3977870 m!4549677))

(declare-fun m!4549679 () Bool)

(assert (=> b!3977870 m!4549679))

(declare-fun m!4549681 () Bool)

(assert (=> b!3977870 m!4549681))

(declare-fun m!4549683 () Bool)

(assert (=> b!3977866 m!4549683))

(declare-fun m!4549685 () Bool)

(assert (=> b!3977866 m!4549685))

(declare-fun m!4549687 () Bool)

(assert (=> b!3977868 m!4549687))

(declare-fun m!4549689 () Bool)

(assert (=> b!3977865 m!4549689))

(declare-fun m!4549691 () Bool)

(assert (=> b!3977865 m!4549691))

(declare-fun m!4549693 () Bool)

(assert (=> b!3977878 m!4549693))

(declare-fun m!4549695 () Bool)

(assert (=> b!3977878 m!4549695))

(declare-fun m!4549697 () Bool)

(assert (=> b!3977878 m!4549697))

(declare-fun m!4549699 () Bool)

(assert (=> b!3977872 m!4549699))

(declare-fun m!4549701 () Bool)

(assert (=> b!3977872 m!4549701))

(declare-fun m!4549703 () Bool)

(assert (=> b!3977877 m!4549703))

(declare-fun m!4549705 () Bool)

(assert (=> b!3977877 m!4549705))

(declare-fun m!4549707 () Bool)

(assert (=> b!3977877 m!4549707))

(declare-fun m!4549709 () Bool)

(assert (=> b!3977877 m!4549709))

(declare-fun m!4549711 () Bool)

(assert (=> b!3977877 m!4549711))

(assert (=> b!3977877 m!4549707))

(declare-fun m!4549713 () Bool)

(assert (=> b!3977877 m!4549713))

(declare-fun m!4549715 () Bool)

(assert (=> b!3977877 m!4549715))

(declare-fun m!4549717 () Bool)

(assert (=> b!3977884 m!4549717))

(declare-fun m!4549719 () Bool)

(assert (=> b!3977859 m!4549719))

(declare-fun m!4549721 () Bool)

(assert (=> b!3977859 m!4549721))

(declare-fun m!4549723 () Bool)

(assert (=> b!3977859 m!4549723))

(declare-fun m!4549725 () Bool)

(assert (=> b!3977859 m!4549725))

(declare-fun m!4549727 () Bool)

(assert (=> b!3977879 m!4549727))

(declare-fun m!4549729 () Bool)

(assert (=> b!3977879 m!4549729))

(declare-fun m!4549731 () Bool)

(assert (=> b!3977879 m!4549731))

(assert (=> b!3977879 m!4549731))

(declare-fun m!4549733 () Bool)

(assert (=> b!3977879 m!4549733))

(declare-fun m!4549735 () Bool)

(assert (=> b!3977856 m!4549735))

(declare-fun m!4549737 () Bool)

(assert (=> b!3977856 m!4549737))

(declare-fun m!4549739 () Bool)

(assert (=> b!3977856 m!4549739))

(declare-fun m!4549741 () Bool)

(assert (=> b!3977856 m!4549741))

(declare-fun m!4549743 () Bool)

(assert (=> b!3977856 m!4549743))

(check-sat (not b_next!111089) (not b!3977877) (not b!3977870) (not b_next!111093) (not b!3977883) (not b!3977859) (not b!3977866) (not b!3977867) (not b!3977872) (not b!3977868) (not b_next!111095) (not b!3977858) (not b!3977857) tp_is_empty!20197 (not b!3977886) (not b!3977853) (not b!3977884) (not b!3977871) (not b!3977880) (not b!3977863) b_and!305777 (not b_next!111091) (not b!3977878) (not b!3977860) (not b!3977862) (not b!3977865) (not b!3977869) (not b!3977852) b_and!305779 (not b!3977879) (not b!3977885) b_and!305781 (not start!374364) (not b!3977882) b_and!305775 (not b!3977861) (not b!3977881) (not b!3977854) (not b!3977876) (not b!3977856))
(check-sat (not b_next!111089) (not b_next!111093) b_and!305777 (not b_next!111091) (not b_next!111095) b_and!305779 b_and!305781 b_and!305775)
(get-model)

(declare-fun d!1177513 () Bool)

(declare-fun lt!1395978 () Int)

(assert (=> d!1177513 (>= lt!1395978 0)))

(declare-fun e!2464947 () Int)

(assert (=> d!1177513 (= lt!1395978 e!2464947)))

(declare-fun c!689370 () Bool)

(assert (=> d!1177513 (= c!689370 ((_ is Nil!42520) suffix!1299))))

(assert (=> d!1177513 (= (size!31809 suffix!1299) lt!1395978)))

(declare-fun b!3977891 () Bool)

(assert (=> b!3977891 (= e!2464947 0)))

(declare-fun b!3977892 () Bool)

(assert (=> b!3977892 (= e!2464947 (+ 1 (size!31809 (t!331155 suffix!1299))))))

(assert (= (and d!1177513 c!689370) b!3977891))

(assert (= (and d!1177513 (not c!689370)) b!3977892))

(declare-fun m!4549745 () Bool)

(assert (=> b!3977892 m!4549745))

(assert (=> b!3977865 d!1177513))

(declare-fun d!1177515 () Bool)

(declare-fun lt!1395979 () Int)

(assert (=> d!1177515 (>= lt!1395979 0)))

(declare-fun e!2464948 () Int)

(assert (=> d!1177515 (= lt!1395979 e!2464948)))

(declare-fun c!689371 () Bool)

(assert (=> d!1177515 (= c!689371 ((_ is Nil!42520) newSuffix!27))))

(assert (=> d!1177515 (= (size!31809 newSuffix!27) lt!1395979)))

(declare-fun b!3977893 () Bool)

(assert (=> b!3977893 (= e!2464948 0)))

(declare-fun b!3977894 () Bool)

(assert (=> b!3977894 (= e!2464948 (+ 1 (size!31809 (t!331155 newSuffix!27))))))

(assert (= (and d!1177515 c!689371) b!3977893))

(assert (= (and d!1177515 (not c!689371)) b!3977894))

(declare-fun m!4549747 () Bool)

(assert (=> b!3977894 m!4549747))

(assert (=> b!3977865 d!1177515))

(declare-fun lt!1395982 () List!42644)

(declare-fun e!2464954 () Bool)

(declare-fun b!3977906 () Bool)

(assert (=> b!3977906 (= e!2464954 (or (not (= lt!1395934 Nil!42520)) (= lt!1395982 lt!1395954)))))

(declare-fun b!3977905 () Bool)

(declare-fun res!1611466 () Bool)

(assert (=> b!3977905 (=> (not res!1611466) (not e!2464954))))

(assert (=> b!3977905 (= res!1611466 (= (size!31809 lt!1395982) (+ (size!31809 lt!1395954) (size!31809 lt!1395934))))))

(declare-fun d!1177517 () Bool)

(assert (=> d!1177517 e!2464954))

(declare-fun res!1611465 () Bool)

(assert (=> d!1177517 (=> (not res!1611465) (not e!2464954))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6446 (List!42644) (InoxSet C!23412))

(assert (=> d!1177517 (= res!1611465 (= (content!6446 lt!1395982) ((_ map or) (content!6446 lt!1395954) (content!6446 lt!1395934))))))

(declare-fun e!2464953 () List!42644)

(assert (=> d!1177517 (= lt!1395982 e!2464953)))

(declare-fun c!689374 () Bool)

(assert (=> d!1177517 (= c!689374 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177517 (= (++!11110 lt!1395954 lt!1395934) lt!1395982)))

(declare-fun b!3977903 () Bool)

(assert (=> b!3977903 (= e!2464953 lt!1395934)))

(declare-fun b!3977904 () Bool)

(assert (=> b!3977904 (= e!2464953 (Cons!42520 (h!47940 lt!1395954) (++!11110 (t!331155 lt!1395954) lt!1395934)))))

(assert (= (and d!1177517 c!689374) b!3977903))

(assert (= (and d!1177517 (not c!689374)) b!3977904))

(assert (= (and d!1177517 res!1611465) b!3977905))

(assert (= (and b!3977905 res!1611466) b!3977906))

(declare-fun m!4549749 () Bool)

(assert (=> b!3977905 m!4549749))

(assert (=> b!3977905 m!4549727))

(declare-fun m!4549751 () Bool)

(assert (=> b!3977905 m!4549751))

(declare-fun m!4549753 () Bool)

(assert (=> d!1177517 m!4549753))

(declare-fun m!4549755 () Bool)

(assert (=> d!1177517 m!4549755))

(declare-fun m!4549757 () Bool)

(assert (=> d!1177517 m!4549757))

(declare-fun m!4549759 () Bool)

(assert (=> b!3977904 m!4549759))

(assert (=> b!3977886 d!1177517))

(declare-fun d!1177519 () Bool)

(declare-fun lt!1395985 () List!42644)

(assert (=> d!1177519 (= (++!11110 lt!1395954 lt!1395985) lt!1395939)))

(declare-fun e!2464957 () List!42644)

(assert (=> d!1177519 (= lt!1395985 e!2464957)))

(declare-fun c!689377 () Bool)

(assert (=> d!1177519 (= c!689377 ((_ is Cons!42520) lt!1395954))))

(assert (=> d!1177519 (>= (size!31809 lt!1395939) (size!31809 lt!1395954))))

(assert (=> d!1177519 (= (getSuffix!2226 lt!1395939 lt!1395954) lt!1395985)))

(declare-fun b!3977911 () Bool)

(declare-fun tail!6204 (List!42644) List!42644)

(assert (=> b!3977911 (= e!2464957 (getSuffix!2226 (tail!6204 lt!1395939) (t!331155 lt!1395954)))))

(declare-fun b!3977912 () Bool)

(assert (=> b!3977912 (= e!2464957 lt!1395939)))

(assert (= (and d!1177519 c!689377) b!3977911))

(assert (= (and d!1177519 (not c!689377)) b!3977912))

(declare-fun m!4549761 () Bool)

(assert (=> d!1177519 m!4549761))

(declare-fun m!4549763 () Bool)

(assert (=> d!1177519 m!4549763))

(assert (=> d!1177519 m!4549727))

(declare-fun m!4549765 () Bool)

(assert (=> b!3977911 m!4549765))

(assert (=> b!3977911 m!4549765))

(declare-fun m!4549767 () Bool)

(assert (=> b!3977911 m!4549767))

(assert (=> b!3977886 d!1177519))

(declare-fun b!3977921 () Bool)

(declare-fun e!2464966 () Bool)

(declare-fun e!2464964 () Bool)

(assert (=> b!3977921 (= e!2464966 e!2464964)))

(declare-fun res!1611476 () Bool)

(assert (=> b!3977921 (=> (not res!1611476) (not e!2464964))))

(assert (=> b!3977921 (= res!1611476 (not ((_ is Nil!42520) lt!1395939)))))

(declare-fun b!3977922 () Bool)

(declare-fun res!1611478 () Bool)

(assert (=> b!3977922 (=> (not res!1611478) (not e!2464964))))

(declare-fun head!8472 (List!42644) C!23412)

(assert (=> b!3977922 (= res!1611478 (= (head!8472 lt!1395939) (head!8472 lt!1395939)))))

(declare-fun b!3977923 () Bool)

(assert (=> b!3977923 (= e!2464964 (isPrefix!3795 (tail!6204 lt!1395939) (tail!6204 lt!1395939)))))

(declare-fun b!3977924 () Bool)

(declare-fun e!2464965 () Bool)

(assert (=> b!3977924 (= e!2464965 (>= (size!31809 lt!1395939) (size!31809 lt!1395939)))))

(declare-fun d!1177521 () Bool)

(assert (=> d!1177521 e!2464965))

(declare-fun res!1611477 () Bool)

(assert (=> d!1177521 (=> res!1611477 e!2464965)))

(declare-fun lt!1395988 () Bool)

(assert (=> d!1177521 (= res!1611477 (not lt!1395988))))

(assert (=> d!1177521 (= lt!1395988 e!2464966)))

(declare-fun res!1611475 () Bool)

(assert (=> d!1177521 (=> res!1611475 e!2464966)))

(assert (=> d!1177521 (= res!1611475 ((_ is Nil!42520) lt!1395939))))

(assert (=> d!1177521 (= (isPrefix!3795 lt!1395939 lt!1395939) lt!1395988)))

(assert (= (and d!1177521 (not res!1611475)) b!3977921))

(assert (= (and b!3977921 res!1611476) b!3977922))

(assert (= (and b!3977922 res!1611478) b!3977923))

(assert (= (and d!1177521 (not res!1611477)) b!3977924))

(declare-fun m!4549769 () Bool)

(assert (=> b!3977922 m!4549769))

(assert (=> b!3977922 m!4549769))

(assert (=> b!3977923 m!4549765))

(assert (=> b!3977923 m!4549765))

(assert (=> b!3977923 m!4549765))

(assert (=> b!3977923 m!4549765))

(declare-fun m!4549771 () Bool)

(assert (=> b!3977923 m!4549771))

(assert (=> b!3977924 m!4549763))

(assert (=> b!3977924 m!4549763))

(assert (=> b!3977886 d!1177521))

(declare-fun d!1177523 () Bool)

(assert (=> d!1177523 (isPrefix!3795 lt!1395939 lt!1395939)))

(declare-fun lt!1395991 () Unit!61170)

(declare-fun choose!23840 (List!42644 List!42644) Unit!61170)

(assert (=> d!1177523 (= lt!1395991 (choose!23840 lt!1395939 lt!1395939))))

(assert (=> d!1177523 (= (lemmaIsPrefixRefl!2387 lt!1395939 lt!1395939) lt!1395991)))

(declare-fun bs!587807 () Bool)

(assert (= bs!587807 d!1177523))

(assert (=> bs!587807 m!4549627))

(declare-fun m!4549773 () Bool)

(assert (=> bs!587807 m!4549773))

(assert (=> b!3977886 d!1177523))

(declare-fun d!1177525 () Bool)

(assert (=> d!1177525 (= (inv!56802 (tag!7568 (h!47942 rules!2999))) (= (mod (str.len (value!211811 (tag!7568 (h!47942 rules!2999)))) 2) 0))))

(assert (=> b!3977866 d!1177525))

(declare-fun d!1177527 () Bool)

(declare-fun res!1611481 () Bool)

(declare-fun e!2464969 () Bool)

(assert (=> d!1177527 (=> (not res!1611481) (not e!2464969))))

(declare-fun semiInverseModEq!2878 (Int Int) Bool)

(assert (=> d!1177527 (= res!1611481 (semiInverseModEq!2878 (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toValue!9196 (transformation!6708 (h!47942 rules!2999)))))))

(assert (=> d!1177527 (= (inv!56805 (transformation!6708 (h!47942 rules!2999))) e!2464969)))

(declare-fun b!3977927 () Bool)

(declare-fun equivClasses!2777 (Int Int) Bool)

(assert (=> b!3977927 (= e!2464969 (equivClasses!2777 (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toValue!9196 (transformation!6708 (h!47942 rules!2999)))))))

(assert (= (and d!1177527 res!1611481) b!3977927))

(declare-fun m!4549775 () Bool)

(assert (=> d!1177527 m!4549775))

(declare-fun m!4549777 () Bool)

(assert (=> b!3977927 m!4549777))

(assert (=> b!3977866 d!1177527))

(declare-fun d!1177529 () Bool)

(declare-fun lt!1395992 () Int)

(assert (=> d!1177529 (>= lt!1395992 0)))

(declare-fun e!2464970 () Int)

(assert (=> d!1177529 (= lt!1395992 e!2464970)))

(declare-fun c!689378 () Bool)

(assert (=> d!1177529 (= c!689378 ((_ is Nil!42520) (originalCharacters!7308 token!484)))))

(assert (=> d!1177529 (= (size!31809 (originalCharacters!7308 token!484)) lt!1395992)))

(declare-fun b!3977928 () Bool)

(assert (=> b!3977928 (= e!2464970 0)))

(declare-fun b!3977929 () Bool)

(assert (=> b!3977929 (= e!2464970 (+ 1 (size!31809 (t!331155 (originalCharacters!7308 token!484)))))))

(assert (= (and d!1177529 c!689378) b!3977928))

(assert (= (and d!1177529 (not c!689378)) b!3977929))

(declare-fun m!4549779 () Bool)

(assert (=> b!3977929 m!4549779))

(assert (=> b!3977868 d!1177529))

(declare-fun d!1177531 () Bool)

(declare-fun res!1611486 () Bool)

(declare-fun e!2464973 () Bool)

(assert (=> d!1177531 (=> (not res!1611486) (not e!2464973))))

(declare-fun isEmpty!25427 (List!42644) Bool)

(assert (=> d!1177531 (= res!1611486 (not (isEmpty!25427 (originalCharacters!7308 token!484))))))

(assert (=> d!1177531 (= (inv!56806 token!484) e!2464973)))

(declare-fun b!3977934 () Bool)

(declare-fun res!1611487 () Bool)

(assert (=> b!3977934 (=> (not res!1611487) (not e!2464973))))

(declare-fun dynLambda!18095 (Int TokenValue!6938) BalanceConc!25432)

(assert (=> b!3977934 (= res!1611487 (= (originalCharacters!7308 token!484) (list!15780 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (value!211812 token!484)))))))

(declare-fun b!3977935 () Bool)

(assert (=> b!3977935 (= e!2464973 (= (size!31808 token!484) (size!31809 (originalCharacters!7308 token!484))))))

(assert (= (and d!1177531 res!1611486) b!3977934))

(assert (= (and b!3977934 res!1611487) b!3977935))

(declare-fun b_lambda!116207 () Bool)

(assert (=> (not b_lambda!116207) (not b!3977934)))

(declare-fun t!331159 () Bool)

(declare-fun tb!239773 () Bool)

(assert (=> (and b!3977864 (= (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toChars!9055 (transformation!6708 (rule!9708 token!484)))) t!331159) tb!239773))

(declare-fun b!3977940 () Bool)

(declare-fun e!2464976 () Bool)

(declare-fun tp!1212895 () Bool)

(declare-fun inv!56807 (Conc!12919) Bool)

(assert (=> b!3977940 (= e!2464976 (and (inv!56807 (c!689366 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (value!211812 token!484)))) tp!1212895))))

(declare-fun result!290434 () Bool)

(declare-fun inv!56808 (BalanceConc!25432) Bool)

(assert (=> tb!239773 (= result!290434 (and (inv!56808 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (value!211812 token!484))) e!2464976))))

(assert (= tb!239773 b!3977940))

(declare-fun m!4549781 () Bool)

(assert (=> b!3977940 m!4549781))

(declare-fun m!4549783 () Bool)

(assert (=> tb!239773 m!4549783))

(assert (=> b!3977934 t!331159))

(declare-fun b_and!305783 () Bool)

(assert (= b_and!305777 (and (=> t!331159 result!290434) b_and!305783)))

(declare-fun tb!239775 () Bool)

(declare-fun t!331161 () Bool)

(assert (=> (and b!3977855 (= (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toChars!9055 (transformation!6708 (rule!9708 token!484)))) t!331161) tb!239775))

(declare-fun result!290438 () Bool)

(assert (= result!290438 result!290434))

(assert (=> b!3977934 t!331161))

(declare-fun b_and!305785 () Bool)

(assert (= b_and!305781 (and (=> t!331161 result!290438) b_and!305785)))

(declare-fun m!4549785 () Bool)

(assert (=> d!1177531 m!4549785))

(declare-fun m!4549787 () Bool)

(assert (=> b!3977934 m!4549787))

(assert (=> b!3977934 m!4549787))

(declare-fun m!4549789 () Bool)

(assert (=> b!3977934 m!4549789))

(assert (=> b!3977935 m!4549687))

(assert (=> start!374364 d!1177531))

(declare-fun bm!285682 () Bool)

(declare-fun call!285687 () Bool)

(assert (=> bm!285682 (= call!285687 (isEmpty!25427 lt!1395954))))

(declare-fun b!3977975 () Bool)

(declare-fun res!1611506 () Bool)

(declare-fun e!2464996 () Bool)

(assert (=> b!3977975 (=> res!1611506 e!2464996)))

(declare-fun e!2464999 () Bool)

(assert (=> b!3977975 (= res!1611506 e!2464999)))

(declare-fun res!1611513 () Bool)

(assert (=> b!3977975 (=> (not res!1611513) (not e!2464999))))

(declare-fun lt!1395998 () Bool)

(assert (=> b!3977975 (= res!1611513 lt!1395998)))

(declare-fun d!1177533 () Bool)

(declare-fun e!2464998 () Bool)

(assert (=> d!1177533 e!2464998))

(declare-fun c!689390 () Bool)

(assert (=> d!1177533 (= c!689390 ((_ is EmptyExpr!11613) (regex!6708 (rule!9708 token!484))))))

(declare-fun e!2465000 () Bool)

(assert (=> d!1177533 (= lt!1395998 e!2465000)))

(declare-fun c!689389 () Bool)

(assert (=> d!1177533 (= c!689389 (isEmpty!25427 lt!1395954))))

(declare-fun validRegex!5271 (Regex!11613) Bool)

(assert (=> d!1177533 (validRegex!5271 (regex!6708 (rule!9708 token!484)))))

(assert (=> d!1177533 (= (matchR!5590 (regex!6708 (rule!9708 token!484)) lt!1395954) lt!1395998)))

(declare-fun b!3977976 () Bool)

(declare-fun derivativeStep!3482 (Regex!11613 C!23412) Regex!11613)

(assert (=> b!3977976 (= e!2465000 (matchR!5590 (derivativeStep!3482 (regex!6708 (rule!9708 token!484)) (head!8472 lt!1395954)) (tail!6204 lt!1395954)))))

(declare-fun b!3977977 () Bool)

(declare-fun res!1611512 () Bool)

(assert (=> b!3977977 (=> res!1611512 e!2464996)))

(assert (=> b!3977977 (= res!1611512 (not ((_ is ElementMatch!11613) (regex!6708 (rule!9708 token!484)))))))

(declare-fun e!2464994 () Bool)

(assert (=> b!3977977 (= e!2464994 e!2464996)))

(declare-fun b!3977978 () Bool)

(assert (=> b!3977978 (= e!2464999 (= (head!8472 lt!1395954) (c!689367 (regex!6708 (rule!9708 token!484)))))))

(declare-fun b!3977979 () Bool)

(declare-fun res!1611510 () Bool)

(assert (=> b!3977979 (=> (not res!1611510) (not e!2464999))))

(assert (=> b!3977979 (= res!1611510 (isEmpty!25427 (tail!6204 lt!1395954)))))

(declare-fun b!3977980 () Bool)

(declare-fun e!2464995 () Bool)

(assert (=> b!3977980 (= e!2464995 (not (= (head!8472 lt!1395954) (c!689367 (regex!6708 (rule!9708 token!484))))))))

(declare-fun b!3977981 () Bool)

(declare-fun e!2464997 () Bool)

(assert (=> b!3977981 (= e!2464996 e!2464997)))

(declare-fun res!1611508 () Bool)

(assert (=> b!3977981 (=> (not res!1611508) (not e!2464997))))

(assert (=> b!3977981 (= res!1611508 (not lt!1395998))))

(declare-fun b!3977982 () Bool)

(declare-fun nullable!4071 (Regex!11613) Bool)

(assert (=> b!3977982 (= e!2465000 (nullable!4071 (regex!6708 (rule!9708 token!484))))))

(declare-fun b!3977983 () Bool)

(declare-fun res!1611509 () Bool)

(assert (=> b!3977983 (=> (not res!1611509) (not e!2464999))))

(assert (=> b!3977983 (= res!1611509 (not call!285687))))

(declare-fun b!3977984 () Bool)

(assert (=> b!3977984 (= e!2464998 e!2464994)))

(declare-fun c!689388 () Bool)

(assert (=> b!3977984 (= c!689388 ((_ is EmptyLang!11613) (regex!6708 (rule!9708 token!484))))))

(declare-fun b!3977985 () Bool)

(assert (=> b!3977985 (= e!2464994 (not lt!1395998))))

(declare-fun b!3977986 () Bool)

(assert (=> b!3977986 (= e!2464997 e!2464995)))

(declare-fun res!1611511 () Bool)

(assert (=> b!3977986 (=> res!1611511 e!2464995)))

(assert (=> b!3977986 (= res!1611511 call!285687)))

(declare-fun b!3977987 () Bool)

(declare-fun res!1611507 () Bool)

(assert (=> b!3977987 (=> res!1611507 e!2464995)))

(assert (=> b!3977987 (= res!1611507 (not (isEmpty!25427 (tail!6204 lt!1395954))))))

(declare-fun b!3977988 () Bool)

(assert (=> b!3977988 (= e!2464998 (= lt!1395998 call!285687))))

(assert (= (and d!1177533 c!689389) b!3977982))

(assert (= (and d!1177533 (not c!689389)) b!3977976))

(assert (= (and d!1177533 c!689390) b!3977988))

(assert (= (and d!1177533 (not c!689390)) b!3977984))

(assert (= (and b!3977984 c!689388) b!3977985))

(assert (= (and b!3977984 (not c!689388)) b!3977977))

(assert (= (and b!3977977 (not res!1611512)) b!3977975))

(assert (= (and b!3977975 res!1611513) b!3977983))

(assert (= (and b!3977983 res!1611509) b!3977979))

(assert (= (and b!3977979 res!1611510) b!3977978))

(assert (= (and b!3977975 (not res!1611506)) b!3977981))

(assert (= (and b!3977981 res!1611508) b!3977986))

(assert (= (and b!3977986 (not res!1611511)) b!3977987))

(assert (= (and b!3977987 (not res!1611507)) b!3977980))

(assert (= (or b!3977988 b!3977983 b!3977986) bm!285682))

(declare-fun m!4549793 () Bool)

(assert (=> b!3977982 m!4549793))

(declare-fun m!4549795 () Bool)

(assert (=> b!3977979 m!4549795))

(assert (=> b!3977979 m!4549795))

(declare-fun m!4549797 () Bool)

(assert (=> b!3977979 m!4549797))

(declare-fun m!4549799 () Bool)

(assert (=> d!1177533 m!4549799))

(declare-fun m!4549801 () Bool)

(assert (=> d!1177533 m!4549801))

(assert (=> b!3977987 m!4549795))

(assert (=> b!3977987 m!4549795))

(assert (=> b!3977987 m!4549797))

(assert (=> bm!285682 m!4549799))

(declare-fun m!4549803 () Bool)

(assert (=> b!3977978 m!4549803))

(assert (=> b!3977980 m!4549803))

(assert (=> b!3977976 m!4549803))

(assert (=> b!3977976 m!4549803))

(declare-fun m!4549805 () Bool)

(assert (=> b!3977976 m!4549805))

(assert (=> b!3977976 m!4549795))

(assert (=> b!3977976 m!4549805))

(assert (=> b!3977976 m!4549795))

(declare-fun m!4549807 () Bool)

(assert (=> b!3977976 m!4549807))

(assert (=> b!3977869 d!1177533))

(declare-fun b!3977989 () Bool)

(declare-fun e!2465003 () Bool)

(declare-fun e!2465001 () Bool)

(assert (=> b!3977989 (= e!2465003 e!2465001)))

(declare-fun res!1611515 () Bool)

(assert (=> b!3977989 (=> (not res!1611515) (not e!2465001))))

(assert (=> b!3977989 (= res!1611515 (not ((_ is Nil!42520) lt!1395970)))))

(declare-fun b!3977990 () Bool)

(declare-fun res!1611517 () Bool)

(assert (=> b!3977990 (=> (not res!1611517) (not e!2465001))))

(assert (=> b!3977990 (= res!1611517 (= (head!8472 lt!1395954) (head!8472 lt!1395970)))))

(declare-fun b!3977991 () Bool)

(assert (=> b!3977991 (= e!2465001 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 lt!1395970)))))

(declare-fun b!3977992 () Bool)

(declare-fun e!2465002 () Bool)

(assert (=> b!3977992 (= e!2465002 (>= (size!31809 lt!1395970) (size!31809 lt!1395954)))))

(declare-fun d!1177539 () Bool)

(assert (=> d!1177539 e!2465002))

(declare-fun res!1611516 () Bool)

(assert (=> d!1177539 (=> res!1611516 e!2465002)))

(declare-fun lt!1395999 () Bool)

(assert (=> d!1177539 (= res!1611516 (not lt!1395999))))

(assert (=> d!1177539 (= lt!1395999 e!2465003)))

(declare-fun res!1611514 () Bool)

(assert (=> d!1177539 (=> res!1611514 e!2465003)))

(assert (=> d!1177539 (= res!1611514 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177539 (= (isPrefix!3795 lt!1395954 lt!1395970) lt!1395999)))

(assert (= (and d!1177539 (not res!1611514)) b!3977989))

(assert (= (and b!3977989 res!1611515) b!3977990))

(assert (= (and b!3977990 res!1611517) b!3977991))

(assert (= (and d!1177539 (not res!1611516)) b!3977992))

(assert (=> b!3977990 m!4549803))

(declare-fun m!4549809 () Bool)

(assert (=> b!3977990 m!4549809))

(assert (=> b!3977991 m!4549795))

(declare-fun m!4549811 () Bool)

(assert (=> b!3977991 m!4549811))

(assert (=> b!3977991 m!4549795))

(assert (=> b!3977991 m!4549811))

(declare-fun m!4549813 () Bool)

(assert (=> b!3977991 m!4549813))

(assert (=> b!3977992 m!4549651))

(assert (=> b!3977992 m!4549727))

(assert (=> b!3977869 d!1177539))

(declare-fun d!1177541 () Bool)

(assert (=> d!1177541 (isPrefix!3795 lt!1395954 (++!11110 prefix!494 newSuffix!27))))

(declare-fun lt!1396002 () Unit!61170)

(declare-fun choose!23842 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> d!1177541 (= lt!1396002 (choose!23842 lt!1395954 prefix!494 newSuffix!27))))

(assert (=> d!1177541 (isPrefix!3795 lt!1395954 prefix!494)))

(assert (=> d!1177541 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395954 prefix!494 newSuffix!27) lt!1396002)))

(declare-fun bs!587808 () Bool)

(assert (= bs!587808 d!1177541))

(assert (=> bs!587808 m!4549645))

(assert (=> bs!587808 m!4549645))

(declare-fun m!4549815 () Bool)

(assert (=> bs!587808 m!4549815))

(declare-fun m!4549817 () Bool)

(assert (=> bs!587808 m!4549817))

(assert (=> bs!587808 m!4549619))

(assert (=> b!3977869 d!1177541))

(declare-fun d!1177543 () Bool)

(assert (=> d!1177543 (isPrefix!3795 lt!1395954 (++!11110 prefix!494 suffix!1299))))

(declare-fun lt!1396003 () Unit!61170)

(assert (=> d!1177543 (= lt!1396003 (choose!23842 lt!1395954 prefix!494 suffix!1299))))

(assert (=> d!1177543 (isPrefix!3795 lt!1395954 prefix!494)))

(assert (=> d!1177543 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395954 prefix!494 suffix!1299) lt!1396003)))

(declare-fun bs!587809 () Bool)

(assert (= bs!587809 d!1177543))

(assert (=> bs!587809 m!4549701))

(assert (=> bs!587809 m!4549701))

(declare-fun m!4549819 () Bool)

(assert (=> bs!587809 m!4549819))

(declare-fun m!4549821 () Bool)

(assert (=> bs!587809 m!4549821))

(assert (=> bs!587809 m!4549619))

(assert (=> b!3977869 d!1177543))

(declare-fun b!3977993 () Bool)

(declare-fun e!2465006 () Bool)

(declare-fun e!2465004 () Bool)

(assert (=> b!3977993 (= e!2465006 e!2465004)))

(declare-fun res!1611519 () Bool)

(assert (=> b!3977993 (=> (not res!1611519) (not e!2465004))))

(assert (=> b!3977993 (= res!1611519 (not ((_ is Nil!42520) lt!1395939)))))

(declare-fun b!3977994 () Bool)

(declare-fun res!1611521 () Bool)

(assert (=> b!3977994 (=> (not res!1611521) (not e!2465004))))

(assert (=> b!3977994 (= res!1611521 (= (head!8472 lt!1395940) (head!8472 lt!1395939)))))

(declare-fun b!3977995 () Bool)

(assert (=> b!3977995 (= e!2465004 (isPrefix!3795 (tail!6204 lt!1395940) (tail!6204 lt!1395939)))))

(declare-fun b!3977996 () Bool)

(declare-fun e!2465005 () Bool)

(assert (=> b!3977996 (= e!2465005 (>= (size!31809 lt!1395939) (size!31809 lt!1395940)))))

(declare-fun d!1177545 () Bool)

(assert (=> d!1177545 e!2465005))

(declare-fun res!1611520 () Bool)

(assert (=> d!1177545 (=> res!1611520 e!2465005)))

(declare-fun lt!1396004 () Bool)

(assert (=> d!1177545 (= res!1611520 (not lt!1396004))))

(assert (=> d!1177545 (= lt!1396004 e!2465006)))

(declare-fun res!1611518 () Bool)

(assert (=> d!1177545 (=> res!1611518 e!2465006)))

(assert (=> d!1177545 (= res!1611518 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177545 (= (isPrefix!3795 lt!1395940 lt!1395939) lt!1396004)))

(assert (= (and d!1177545 (not res!1611518)) b!3977993))

(assert (= (and b!3977993 res!1611519) b!3977994))

(assert (= (and b!3977994 res!1611521) b!3977995))

(assert (= (and d!1177545 (not res!1611520)) b!3977996))

(declare-fun m!4549823 () Bool)

(assert (=> b!3977994 m!4549823))

(assert (=> b!3977994 m!4549769))

(declare-fun m!4549825 () Bool)

(assert (=> b!3977995 m!4549825))

(assert (=> b!3977995 m!4549765))

(assert (=> b!3977995 m!4549825))

(assert (=> b!3977995 m!4549765))

(declare-fun m!4549827 () Bool)

(assert (=> b!3977995 m!4549827))

(assert (=> b!3977996 m!4549763))

(assert (=> b!3977996 m!4549609))

(assert (=> b!3977870 d!1177545))

(declare-fun b!3977997 () Bool)

(declare-fun e!2465009 () Bool)

(declare-fun e!2465007 () Bool)

(assert (=> b!3977997 (= e!2465009 e!2465007)))

(declare-fun res!1611523 () Bool)

(assert (=> b!3977997 (=> (not res!1611523) (not e!2465007))))

(assert (=> b!3977997 (= res!1611523 (not ((_ is Nil!42520) lt!1395931)))))

(declare-fun b!3977998 () Bool)

(declare-fun res!1611525 () Bool)

(assert (=> b!3977998 (=> (not res!1611525) (not e!2465007))))

(assert (=> b!3977998 (= res!1611525 (= (head!8472 lt!1395940) (head!8472 lt!1395931)))))

(declare-fun b!3977999 () Bool)

(assert (=> b!3977999 (= e!2465007 (isPrefix!3795 (tail!6204 lt!1395940) (tail!6204 lt!1395931)))))

(declare-fun b!3978000 () Bool)

(declare-fun e!2465008 () Bool)

(assert (=> b!3978000 (= e!2465008 (>= (size!31809 lt!1395931) (size!31809 lt!1395940)))))

(declare-fun d!1177547 () Bool)

(assert (=> d!1177547 e!2465008))

(declare-fun res!1611524 () Bool)

(assert (=> d!1177547 (=> res!1611524 e!2465008)))

(declare-fun lt!1396005 () Bool)

(assert (=> d!1177547 (= res!1611524 (not lt!1396005))))

(assert (=> d!1177547 (= lt!1396005 e!2465009)))

(declare-fun res!1611522 () Bool)

(assert (=> d!1177547 (=> res!1611522 e!2465009)))

(assert (=> d!1177547 (= res!1611522 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177547 (= (isPrefix!3795 lt!1395940 lt!1395931) lt!1396005)))

(assert (= (and d!1177547 (not res!1611522)) b!3977997))

(assert (= (and b!3977997 res!1611523) b!3977998))

(assert (= (and b!3977998 res!1611525) b!3977999))

(assert (= (and d!1177547 (not res!1611524)) b!3978000))

(assert (=> b!3977998 m!4549823))

(declare-fun m!4549829 () Bool)

(assert (=> b!3977998 m!4549829))

(assert (=> b!3977999 m!4549825))

(declare-fun m!4549831 () Bool)

(assert (=> b!3977999 m!4549831))

(assert (=> b!3977999 m!4549825))

(assert (=> b!3977999 m!4549831))

(declare-fun m!4549833 () Bool)

(assert (=> b!3977999 m!4549833))

(declare-fun m!4549835 () Bool)

(assert (=> b!3978000 m!4549835))

(assert (=> b!3978000 m!4549609))

(assert (=> b!3977870 d!1177547))

(declare-fun d!1177549 () Bool)

(assert (=> d!1177549 (isPrefix!3795 lt!1395940 (++!11110 lt!1395970 lt!1395974))))

(declare-fun lt!1396006 () Unit!61170)

(assert (=> d!1177549 (= lt!1396006 (choose!23842 lt!1395940 lt!1395970 lt!1395974))))

(assert (=> d!1177549 (isPrefix!3795 lt!1395940 lt!1395970)))

(assert (=> d!1177549 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!628 lt!1395940 lt!1395970 lt!1395974) lt!1396006)))

(declare-fun bs!587810 () Bool)

(assert (= bs!587810 d!1177549))

(assert (=> bs!587810 m!4549695))

(assert (=> bs!587810 m!4549695))

(declare-fun m!4549837 () Bool)

(assert (=> bs!587810 m!4549837))

(declare-fun m!4549839 () Bool)

(assert (=> bs!587810 m!4549839))

(declare-fun m!4549841 () Bool)

(assert (=> bs!587810 m!4549841))

(assert (=> b!3977870 d!1177549))

(declare-fun b!3978004 () Bool)

(declare-fun e!2465011 () Bool)

(declare-fun lt!1396007 () List!42644)

(assert (=> b!3978004 (= e!2465011 (or (not (= lt!1395963 Nil!42520)) (= lt!1396007 lt!1395954)))))

(declare-fun b!3978003 () Bool)

(declare-fun res!1611527 () Bool)

(assert (=> b!3978003 (=> (not res!1611527) (not e!2465011))))

(assert (=> b!3978003 (= res!1611527 (= (size!31809 lt!1396007) (+ (size!31809 lt!1395954) (size!31809 lt!1395963))))))

(declare-fun d!1177551 () Bool)

(assert (=> d!1177551 e!2465011))

(declare-fun res!1611526 () Bool)

(assert (=> d!1177551 (=> (not res!1611526) (not e!2465011))))

(assert (=> d!1177551 (= res!1611526 (= (content!6446 lt!1396007) ((_ map or) (content!6446 lt!1395954) (content!6446 lt!1395963))))))

(declare-fun e!2465010 () List!42644)

(assert (=> d!1177551 (= lt!1396007 e!2465010)))

(declare-fun c!689391 () Bool)

(assert (=> d!1177551 (= c!689391 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177551 (= (++!11110 lt!1395954 lt!1395963) lt!1396007)))

(declare-fun b!3978001 () Bool)

(assert (=> b!3978001 (= e!2465010 lt!1395963)))

(declare-fun b!3978002 () Bool)

(assert (=> b!3978002 (= e!2465010 (Cons!42520 (h!47940 lt!1395954) (++!11110 (t!331155 lt!1395954) lt!1395963)))))

(assert (= (and d!1177551 c!689391) b!3978001))

(assert (= (and d!1177551 (not c!689391)) b!3978002))

(assert (= (and d!1177551 res!1611526) b!3978003))

(assert (= (and b!3978003 res!1611527) b!3978004))

(declare-fun m!4549843 () Bool)

(assert (=> b!3978003 m!4549843))

(assert (=> b!3978003 m!4549727))

(declare-fun m!4549845 () Bool)

(assert (=> b!3978003 m!4549845))

(declare-fun m!4549847 () Bool)

(assert (=> d!1177551 m!4549847))

(assert (=> d!1177551 m!4549755))

(declare-fun m!4549849 () Bool)

(assert (=> d!1177551 m!4549849))

(declare-fun m!4549851 () Bool)

(assert (=> b!3978002 m!4549851))

(assert (=> b!3977871 d!1177551))

(declare-fun b!3978008 () Bool)

(declare-fun e!2465013 () Bool)

(declare-fun lt!1396008 () List!42644)

(assert (=> b!3978008 (= e!2465013 (or (not (= suffix!1299 Nil!42520)) (= lt!1396008 lt!1395942)))))

(declare-fun b!3978007 () Bool)

(declare-fun res!1611529 () Bool)

(assert (=> b!3978007 (=> (not res!1611529) (not e!2465013))))

(assert (=> b!3978007 (= res!1611529 (= (size!31809 lt!1396008) (+ (size!31809 lt!1395942) (size!31809 suffix!1299))))))

(declare-fun d!1177553 () Bool)

(assert (=> d!1177553 e!2465013))

(declare-fun res!1611528 () Bool)

(assert (=> d!1177553 (=> (not res!1611528) (not e!2465013))))

(assert (=> d!1177553 (= res!1611528 (= (content!6446 lt!1396008) ((_ map or) (content!6446 lt!1395942) (content!6446 suffix!1299))))))

(declare-fun e!2465012 () List!42644)

(assert (=> d!1177553 (= lt!1396008 e!2465012)))

(declare-fun c!689392 () Bool)

(assert (=> d!1177553 (= c!689392 ((_ is Nil!42520) lt!1395942))))

(assert (=> d!1177553 (= (++!11110 lt!1395942 suffix!1299) lt!1396008)))

(declare-fun b!3978005 () Bool)

(assert (=> b!3978005 (= e!2465012 suffix!1299)))

(declare-fun b!3978006 () Bool)

(assert (=> b!3978006 (= e!2465012 (Cons!42520 (h!47940 lt!1395942) (++!11110 (t!331155 lt!1395942) suffix!1299)))))

(assert (= (and d!1177553 c!689392) b!3978005))

(assert (= (and d!1177553 (not c!689392)) b!3978006))

(assert (= (and d!1177553 res!1611528) b!3978007))

(assert (= (and b!3978007 res!1611529) b!3978008))

(declare-fun m!4549853 () Bool)

(assert (=> b!3978007 m!4549853))

(declare-fun m!4549855 () Bool)

(assert (=> b!3978007 m!4549855))

(assert (=> b!3978007 m!4549689))

(declare-fun m!4549857 () Bool)

(assert (=> d!1177553 m!4549857))

(declare-fun m!4549859 () Bool)

(assert (=> d!1177553 m!4549859))

(declare-fun m!4549861 () Bool)

(assert (=> d!1177553 m!4549861))

(declare-fun m!4549863 () Bool)

(assert (=> b!3978006 m!4549863))

(assert (=> b!3977871 d!1177553))

(declare-fun lt!1396009 () List!42644)

(declare-fun b!3978012 () Bool)

(declare-fun e!2465015 () Bool)

(assert (=> b!3978012 (= e!2465015 (or (not (= suffix!1299 Nil!42520)) (= lt!1396009 lt!1395960)))))

(declare-fun b!3978011 () Bool)

(declare-fun res!1611531 () Bool)

(assert (=> b!3978011 (=> (not res!1611531) (not e!2465015))))

(assert (=> b!3978011 (= res!1611531 (= (size!31809 lt!1396009) (+ (size!31809 lt!1395960) (size!31809 suffix!1299))))))

(declare-fun d!1177555 () Bool)

(assert (=> d!1177555 e!2465015))

(declare-fun res!1611530 () Bool)

(assert (=> d!1177555 (=> (not res!1611530) (not e!2465015))))

(assert (=> d!1177555 (= res!1611530 (= (content!6446 lt!1396009) ((_ map or) (content!6446 lt!1395960) (content!6446 suffix!1299))))))

(declare-fun e!2465014 () List!42644)

(assert (=> d!1177555 (= lt!1396009 e!2465014)))

(declare-fun c!689393 () Bool)

(assert (=> d!1177555 (= c!689393 ((_ is Nil!42520) lt!1395960))))

(assert (=> d!1177555 (= (++!11110 lt!1395960 suffix!1299) lt!1396009)))

(declare-fun b!3978009 () Bool)

(assert (=> b!3978009 (= e!2465014 suffix!1299)))

(declare-fun b!3978010 () Bool)

(assert (=> b!3978010 (= e!2465014 (Cons!42520 (h!47940 lt!1395960) (++!11110 (t!331155 lt!1395960) suffix!1299)))))

(assert (= (and d!1177555 c!689393) b!3978009))

(assert (= (and d!1177555 (not c!689393)) b!3978010))

(assert (= (and d!1177555 res!1611530) b!3978011))

(assert (= (and b!3978011 res!1611531) b!3978012))

(declare-fun m!4549865 () Bool)

(assert (=> b!3978011 m!4549865))

(declare-fun m!4549867 () Bool)

(assert (=> b!3978011 m!4549867))

(assert (=> b!3978011 m!4549689))

(declare-fun m!4549869 () Bool)

(assert (=> d!1177555 m!4549869))

(declare-fun m!4549871 () Bool)

(assert (=> d!1177555 m!4549871))

(assert (=> d!1177555 m!4549861))

(declare-fun m!4549873 () Bool)

(assert (=> b!3978010 m!4549873))

(assert (=> b!3977871 d!1177555))

(declare-fun d!1177557 () Bool)

(assert (=> d!1177557 (= (++!11110 (++!11110 lt!1395954 lt!1395960) suffix!1299) (++!11110 lt!1395954 (++!11110 lt!1395960 suffix!1299)))))

(declare-fun lt!1396012 () Unit!61170)

(declare-fun choose!23843 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> d!1177557 (= lt!1396012 (choose!23843 lt!1395954 lt!1395960 suffix!1299))))

(assert (=> d!1177557 (= (lemmaConcatAssociativity!2430 lt!1395954 lt!1395960 suffix!1299) lt!1396012)))

(declare-fun bs!587811 () Bool)

(assert (= bs!587811 d!1177557))

(assert (=> bs!587811 m!4549641))

(declare-fun m!4549875 () Bool)

(assert (=> bs!587811 m!4549875))

(assert (=> bs!587811 m!4549615))

(declare-fun m!4549877 () Bool)

(assert (=> bs!587811 m!4549877))

(assert (=> bs!587811 m!4549615))

(assert (=> bs!587811 m!4549641))

(declare-fun m!4549879 () Bool)

(assert (=> bs!587811 m!4549879))

(assert (=> b!3977871 d!1177557))

(declare-fun b!3978072 () Bool)

(declare-fun res!1611585 () Bool)

(declare-fun e!2465046 () Bool)

(assert (=> b!3978072 (=> (not res!1611585) (not e!2465046))))

(declare-fun lt!1396050 () Option!9122)

(declare-fun get!14002 (Option!9122) tuple2!41752)

(assert (=> b!3978072 (= res!1611585 (= (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396050)))) (originalCharacters!7308 (_1!24010 (get!14002 lt!1396050)))))))

(declare-fun b!3978073 () Bool)

(declare-fun res!1611580 () Bool)

(assert (=> b!3978073 (=> (not res!1611580) (not e!2465046))))

(assert (=> b!3978073 (= res!1611580 (= (value!211812 (_1!24010 (get!14002 lt!1396050))) (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (get!14002 lt!1396050)))) (seqFromList!4947 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396050)))))))))

(declare-fun b!3978074 () Bool)

(declare-fun contains!8465 (List!42646 Rule!13216) Bool)

(assert (=> b!3978074 (= e!2465046 (contains!8465 rules!2999 (rule!9708 (_1!24010 (get!14002 lt!1396050)))))))

(declare-fun d!1177559 () Bool)

(declare-fun e!2465048 () Bool)

(assert (=> d!1177559 e!2465048))

(declare-fun res!1611583 () Bool)

(assert (=> d!1177559 (=> res!1611583 e!2465048)))

(declare-fun isEmpty!25428 (Option!9122) Bool)

(assert (=> d!1177559 (= res!1611583 (isEmpty!25428 lt!1396050))))

(declare-fun e!2465047 () Option!9122)

(assert (=> d!1177559 (= lt!1396050 e!2465047)))

(declare-fun c!689399 () Bool)

(assert (=> d!1177559 (= c!689399 (and ((_ is Cons!42522) rules!2999) ((_ is Nil!42522) (t!331157 rules!2999))))))

(declare-fun lt!1396052 () Unit!61170)

(declare-fun lt!1396053 () Unit!61170)

(assert (=> d!1177559 (= lt!1396052 lt!1396053)))

(assert (=> d!1177559 (isPrefix!3795 lt!1395939 lt!1395939)))

(assert (=> d!1177559 (= lt!1396053 (lemmaIsPrefixRefl!2387 lt!1395939 lt!1395939))))

(declare-fun rulesValidInductive!2435 (LexerInterface!6297 List!42646) Bool)

(assert (=> d!1177559 (rulesValidInductive!2435 thiss!21717 rules!2999)))

(assert (=> d!1177559 (= (maxPrefix!3595 thiss!21717 rules!2999 lt!1395939) lt!1396050)))

(declare-fun b!3978075 () Bool)

(declare-fun call!285690 () Option!9122)

(assert (=> b!3978075 (= e!2465047 call!285690)))

(declare-fun b!3978076 () Bool)

(declare-fun res!1611579 () Bool)

(assert (=> b!3978076 (=> (not res!1611579) (not e!2465046))))

(assert (=> b!3978076 (= res!1611579 (matchR!5590 (regex!6708 (rule!9708 (_1!24010 (get!14002 lt!1396050)))) (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396050))))))))

(declare-fun b!3978077 () Bool)

(assert (=> b!3978077 (= e!2465048 e!2465046)))

(declare-fun res!1611584 () Bool)

(assert (=> b!3978077 (=> (not res!1611584) (not e!2465046))))

(declare-fun isDefined!7024 (Option!9122) Bool)

(assert (=> b!3978077 (= res!1611584 (isDefined!7024 lt!1396050))))

(declare-fun b!3978078 () Bool)

(declare-fun lt!1396051 () Option!9122)

(declare-fun lt!1396054 () Option!9122)

(assert (=> b!3978078 (= e!2465047 (ite (and ((_ is None!9121) lt!1396051) ((_ is None!9121) lt!1396054)) None!9121 (ite ((_ is None!9121) lt!1396054) lt!1396051 (ite ((_ is None!9121) lt!1396051) lt!1396054 (ite (>= (size!31808 (_1!24010 (v!39469 lt!1396051))) (size!31808 (_1!24010 (v!39469 lt!1396054)))) lt!1396051 lt!1396054)))))))

(assert (=> b!3978078 (= lt!1396051 call!285690)))

(assert (=> b!3978078 (= lt!1396054 (maxPrefix!3595 thiss!21717 (t!331157 rules!2999) lt!1395939))))

(declare-fun b!3978079 () Bool)

(declare-fun res!1611581 () Bool)

(assert (=> b!3978079 (=> (not res!1611581) (not e!2465046))))

(assert (=> b!3978079 (= res!1611581 (< (size!31809 (_2!24010 (get!14002 lt!1396050))) (size!31809 lt!1395939)))))

(declare-fun b!3978080 () Bool)

(declare-fun res!1611582 () Bool)

(assert (=> b!3978080 (=> (not res!1611582) (not e!2465046))))

(assert (=> b!3978080 (= res!1611582 (= (++!11110 (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396050)))) (_2!24010 (get!14002 lt!1396050))) lt!1395939))))

(declare-fun bm!285685 () Bool)

(assert (=> bm!285685 (= call!285690 (maxPrefixOneRule!2629 thiss!21717 (h!47942 rules!2999) lt!1395939))))

(assert (= (and d!1177559 c!689399) b!3978075))

(assert (= (and d!1177559 (not c!689399)) b!3978078))

(assert (= (or b!3978075 b!3978078) bm!285685))

(assert (= (and d!1177559 (not res!1611583)) b!3978077))

(assert (= (and b!3978077 res!1611584) b!3978072))

(assert (= (and b!3978072 res!1611585) b!3978079))

(assert (= (and b!3978079 res!1611581) b!3978080))

(assert (= (and b!3978080 res!1611582) b!3978073))

(assert (= (and b!3978073 res!1611580) b!3978076))

(assert (= (and b!3978076 res!1611579) b!3978074))

(declare-fun m!4549951 () Bool)

(assert (=> b!3978078 m!4549951))

(declare-fun m!4549953 () Bool)

(assert (=> d!1177559 m!4549953))

(assert (=> d!1177559 m!4549627))

(assert (=> d!1177559 m!4549629))

(declare-fun m!4549955 () Bool)

(assert (=> d!1177559 m!4549955))

(declare-fun m!4549957 () Bool)

(assert (=> b!3978077 m!4549957))

(declare-fun m!4549959 () Bool)

(assert (=> b!3978076 m!4549959))

(declare-fun m!4549961 () Bool)

(assert (=> b!3978076 m!4549961))

(assert (=> b!3978076 m!4549961))

(declare-fun m!4549963 () Bool)

(assert (=> b!3978076 m!4549963))

(assert (=> b!3978076 m!4549963))

(declare-fun m!4549965 () Bool)

(assert (=> b!3978076 m!4549965))

(assert (=> b!3978073 m!4549959))

(declare-fun m!4549967 () Bool)

(assert (=> b!3978073 m!4549967))

(assert (=> b!3978073 m!4549967))

(declare-fun m!4549969 () Bool)

(assert (=> b!3978073 m!4549969))

(assert (=> b!3978079 m!4549959))

(declare-fun m!4549971 () Bool)

(assert (=> b!3978079 m!4549971))

(assert (=> b!3978079 m!4549763))

(assert (=> b!3978080 m!4549959))

(assert (=> b!3978080 m!4549961))

(assert (=> b!3978080 m!4549961))

(assert (=> b!3978080 m!4549963))

(assert (=> b!3978080 m!4549963))

(declare-fun m!4549973 () Bool)

(assert (=> b!3978080 m!4549973))

(assert (=> b!3978072 m!4549959))

(assert (=> b!3978072 m!4549961))

(assert (=> b!3978072 m!4549961))

(assert (=> b!3978072 m!4549963))

(assert (=> b!3978074 m!4549959))

(declare-fun m!4549975 () Bool)

(assert (=> b!3978074 m!4549975))

(declare-fun m!4549977 () Bool)

(assert (=> bm!285685 m!4549977))

(assert (=> b!3977872 d!1177559))

(declare-fun e!2465050 () Bool)

(declare-fun lt!1396055 () List!42644)

(declare-fun b!3978084 () Bool)

(assert (=> b!3978084 (= e!2465050 (or (not (= suffix!1299 Nil!42520)) (= lt!1396055 prefix!494)))))

(declare-fun b!3978083 () Bool)

(declare-fun res!1611587 () Bool)

(assert (=> b!3978083 (=> (not res!1611587) (not e!2465050))))

(assert (=> b!3978083 (= res!1611587 (= (size!31809 lt!1396055) (+ (size!31809 prefix!494) (size!31809 suffix!1299))))))

(declare-fun d!1177575 () Bool)

(assert (=> d!1177575 e!2465050))

(declare-fun res!1611586 () Bool)

(assert (=> d!1177575 (=> (not res!1611586) (not e!2465050))))

(assert (=> d!1177575 (= res!1611586 (= (content!6446 lt!1396055) ((_ map or) (content!6446 prefix!494) (content!6446 suffix!1299))))))

(declare-fun e!2465049 () List!42644)

(assert (=> d!1177575 (= lt!1396055 e!2465049)))

(declare-fun c!689400 () Bool)

(assert (=> d!1177575 (= c!689400 ((_ is Nil!42520) prefix!494))))

(assert (=> d!1177575 (= (++!11110 prefix!494 suffix!1299) lt!1396055)))

(declare-fun b!3978081 () Bool)

(assert (=> b!3978081 (= e!2465049 suffix!1299)))

(declare-fun b!3978082 () Bool)

(assert (=> b!3978082 (= e!2465049 (Cons!42520 (h!47940 prefix!494) (++!11110 (t!331155 prefix!494) suffix!1299)))))

(assert (= (and d!1177575 c!689400) b!3978081))

(assert (= (and d!1177575 (not c!689400)) b!3978082))

(assert (= (and d!1177575 res!1611586) b!3978083))

(assert (= (and b!3978083 res!1611587) b!3978084))

(declare-fun m!4549979 () Bool)

(assert (=> b!3978083 m!4549979))

(assert (=> b!3978083 m!4549729))

(assert (=> b!3978083 m!4549689))

(declare-fun m!4549981 () Bool)

(assert (=> d!1177575 m!4549981))

(declare-fun m!4549983 () Bool)

(assert (=> d!1177575 m!4549983))

(assert (=> d!1177575 m!4549861))

(declare-fun m!4549985 () Bool)

(assert (=> b!3978082 m!4549985))

(assert (=> b!3977872 d!1177575))

(declare-fun e!2465052 () Bool)

(declare-fun b!3978088 () Bool)

(declare-fun lt!1396056 () List!42644)

(assert (=> b!3978088 (= e!2465052 (or (not (= lt!1395960 Nil!42520)) (= lt!1396056 lt!1395954)))))

(declare-fun b!3978087 () Bool)

(declare-fun res!1611589 () Bool)

(assert (=> b!3978087 (=> (not res!1611589) (not e!2465052))))

(assert (=> b!3978087 (= res!1611589 (= (size!31809 lt!1396056) (+ (size!31809 lt!1395954) (size!31809 lt!1395960))))))

(declare-fun d!1177577 () Bool)

(assert (=> d!1177577 e!2465052))

(declare-fun res!1611588 () Bool)

(assert (=> d!1177577 (=> (not res!1611588) (not e!2465052))))

(assert (=> d!1177577 (= res!1611588 (= (content!6446 lt!1396056) ((_ map or) (content!6446 lt!1395954) (content!6446 lt!1395960))))))

(declare-fun e!2465051 () List!42644)

(assert (=> d!1177577 (= lt!1396056 e!2465051)))

(declare-fun c!689401 () Bool)

(assert (=> d!1177577 (= c!689401 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177577 (= (++!11110 lt!1395954 lt!1395960) lt!1396056)))

(declare-fun b!3978085 () Bool)

(assert (=> b!3978085 (= e!2465051 lt!1395960)))

(declare-fun b!3978086 () Bool)

(assert (=> b!3978086 (= e!2465051 (Cons!42520 (h!47940 lt!1395954) (++!11110 (t!331155 lt!1395954) lt!1395960)))))

(assert (= (and d!1177577 c!689401) b!3978085))

(assert (= (and d!1177577 (not c!689401)) b!3978086))

(assert (= (and d!1177577 res!1611588) b!3978087))

(assert (= (and b!3978087 res!1611589) b!3978088))

(declare-fun m!4549987 () Bool)

(assert (=> b!3978087 m!4549987))

(assert (=> b!3978087 m!4549727))

(assert (=> b!3978087 m!4549867))

(declare-fun m!4549989 () Bool)

(assert (=> d!1177577 m!4549989))

(assert (=> d!1177577 m!4549755))

(assert (=> d!1177577 m!4549871))

(declare-fun m!4549991 () Bool)

(assert (=> b!3978086 m!4549991))

(assert (=> b!3977852 d!1177577))

(declare-fun d!1177579 () Bool)

(declare-fun lt!1396057 () List!42644)

(assert (=> d!1177579 (= (++!11110 lt!1395954 lt!1396057) prefix!494)))

(declare-fun e!2465053 () List!42644)

(assert (=> d!1177579 (= lt!1396057 e!2465053)))

(declare-fun c!689402 () Bool)

(assert (=> d!1177579 (= c!689402 ((_ is Cons!42520) lt!1395954))))

(assert (=> d!1177579 (>= (size!31809 prefix!494) (size!31809 lt!1395954))))

(assert (=> d!1177579 (= (getSuffix!2226 prefix!494 lt!1395954) lt!1396057)))

(declare-fun b!3978089 () Bool)

(assert (=> b!3978089 (= e!2465053 (getSuffix!2226 (tail!6204 prefix!494) (t!331155 lt!1395954)))))

(declare-fun b!3978090 () Bool)

(assert (=> b!3978090 (= e!2465053 prefix!494)))

(assert (= (and d!1177579 c!689402) b!3978089))

(assert (= (and d!1177579 (not c!689402)) b!3978090))

(declare-fun m!4549993 () Bool)

(assert (=> d!1177579 m!4549993))

(assert (=> d!1177579 m!4549729))

(assert (=> d!1177579 m!4549727))

(declare-fun m!4549995 () Bool)

(assert (=> b!3978089 m!4549995))

(assert (=> b!3978089 m!4549995))

(declare-fun m!4549997 () Bool)

(assert (=> b!3978089 m!4549997))

(assert (=> b!3977852 d!1177579))

(declare-fun b!3978091 () Bool)

(declare-fun e!2465056 () Bool)

(declare-fun e!2465054 () Bool)

(assert (=> b!3978091 (= e!2465056 e!2465054)))

(declare-fun res!1611591 () Bool)

(assert (=> b!3978091 (=> (not res!1611591) (not e!2465054))))

(assert (=> b!3978091 (= res!1611591 (not ((_ is Nil!42520) prefix!494)))))

(declare-fun b!3978092 () Bool)

(declare-fun res!1611593 () Bool)

(assert (=> b!3978092 (=> (not res!1611593) (not e!2465054))))

(assert (=> b!3978092 (= res!1611593 (= (head!8472 lt!1395954) (head!8472 prefix!494)))))

(declare-fun b!3978093 () Bool)

(assert (=> b!3978093 (= e!2465054 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 prefix!494)))))

(declare-fun b!3978094 () Bool)

(declare-fun e!2465055 () Bool)

(assert (=> b!3978094 (= e!2465055 (>= (size!31809 prefix!494) (size!31809 lt!1395954)))))

(declare-fun d!1177581 () Bool)

(assert (=> d!1177581 e!2465055))

(declare-fun res!1611592 () Bool)

(assert (=> d!1177581 (=> res!1611592 e!2465055)))

(declare-fun lt!1396058 () Bool)

(assert (=> d!1177581 (= res!1611592 (not lt!1396058))))

(assert (=> d!1177581 (= lt!1396058 e!2465056)))

(declare-fun res!1611590 () Bool)

(assert (=> d!1177581 (=> res!1611590 e!2465056)))

(assert (=> d!1177581 (= res!1611590 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177581 (= (isPrefix!3795 lt!1395954 prefix!494) lt!1396058)))

(assert (= (and d!1177581 (not res!1611590)) b!3978091))

(assert (= (and b!3978091 res!1611591) b!3978092))

(assert (= (and b!3978092 res!1611593) b!3978093))

(assert (= (and d!1177581 (not res!1611592)) b!3978094))

(assert (=> b!3978092 m!4549803))

(declare-fun m!4549999 () Bool)

(assert (=> b!3978092 m!4549999))

(assert (=> b!3978093 m!4549795))

(assert (=> b!3978093 m!4549995))

(assert (=> b!3978093 m!4549795))

(assert (=> b!3978093 m!4549995))

(declare-fun m!4550001 () Bool)

(assert (=> b!3978093 m!4550001))

(assert (=> b!3978094 m!4549729))

(assert (=> b!3978094 m!4549727))

(assert (=> b!3977852 d!1177581))

(declare-fun d!1177583 () Bool)

(assert (=> d!1177583 (isPrefix!3795 lt!1395954 prefix!494)))

(declare-fun lt!1396061 () Unit!61170)

(declare-fun choose!23844 (List!42644 List!42644 List!42644) Unit!61170)

(assert (=> d!1177583 (= lt!1396061 (choose!23844 prefix!494 lt!1395954 lt!1395939))))

(assert (=> d!1177583 (isPrefix!3795 prefix!494 lt!1395939)))

(assert (=> d!1177583 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!373 prefix!494 lt!1395954 lt!1395939) lt!1396061)))

(declare-fun bs!587816 () Bool)

(assert (= bs!587816 d!1177583))

(assert (=> bs!587816 m!4549619))

(declare-fun m!4550003 () Bool)

(assert (=> bs!587816 m!4550003))

(assert (=> bs!587816 m!4549741))

(assert (=> b!3977852 d!1177583))

(declare-fun b!3978109 () Bool)

(declare-fun e!2465065 () Bool)

(declare-fun inv!15 (TokenValue!6938) Bool)

(assert (=> b!3978109 (= e!2465065 (inv!15 (value!211812 token!484)))))

(declare-fun b!3978110 () Bool)

(declare-fun e!2465067 () Bool)

(declare-fun e!2465066 () Bool)

(assert (=> b!3978110 (= e!2465067 e!2465066)))

(declare-fun c!689409 () Bool)

(assert (=> b!3978110 (= c!689409 ((_ is IntegerValue!20815) (value!211812 token!484)))))

(declare-fun b!3978112 () Bool)

(declare-fun inv!16 (TokenValue!6938) Bool)

(assert (=> b!3978112 (= e!2465067 (inv!16 (value!211812 token!484)))))

(declare-fun b!3978113 () Bool)

(declare-fun res!1611596 () Bool)

(assert (=> b!3978113 (=> res!1611596 e!2465065)))

(assert (=> b!3978113 (= res!1611596 (not ((_ is IntegerValue!20816) (value!211812 token!484))))))

(assert (=> b!3978113 (= e!2465066 e!2465065)))

(declare-fun b!3978111 () Bool)

(declare-fun inv!17 (TokenValue!6938) Bool)

(assert (=> b!3978111 (= e!2465066 (inv!17 (value!211812 token!484)))))

(declare-fun d!1177585 () Bool)

(declare-fun c!689410 () Bool)

(assert (=> d!1177585 (= c!689410 ((_ is IntegerValue!20814) (value!211812 token!484)))))

(assert (=> d!1177585 (= (inv!21 (value!211812 token!484)) e!2465067)))

(assert (= (and d!1177585 c!689410) b!3978112))

(assert (= (and d!1177585 (not c!689410)) b!3978110))

(assert (= (and b!3978110 c!689409) b!3978111))

(assert (= (and b!3978110 (not c!689409)) b!3978113))

(assert (= (and b!3978113 (not res!1611596)) b!3978109))

(declare-fun m!4550005 () Bool)

(assert (=> b!3978109 m!4550005))

(declare-fun m!4550007 () Bool)

(assert (=> b!3978112 m!4550007))

(declare-fun m!4550009 () Bool)

(assert (=> b!3978111 m!4550009))

(assert (=> b!3977854 d!1177585))

(declare-fun b!3978114 () Bool)

(declare-fun e!2465070 () Bool)

(declare-fun e!2465068 () Bool)

(assert (=> b!3978114 (= e!2465070 e!2465068)))

(declare-fun res!1611598 () Bool)

(assert (=> b!3978114 (=> (not res!1611598) (not e!2465068))))

(assert (=> b!3978114 (= res!1611598 (not ((_ is Nil!42520) lt!1395929)))))

(declare-fun b!3978115 () Bool)

(declare-fun res!1611600 () Bool)

(assert (=> b!3978115 (=> (not res!1611600) (not e!2465068))))

(assert (=> b!3978115 (= res!1611600 (= (head!8472 lt!1395954) (head!8472 lt!1395929)))))

(declare-fun b!3978116 () Bool)

(assert (=> b!3978116 (= e!2465068 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 lt!1395929)))))

(declare-fun b!3978117 () Bool)

(declare-fun e!2465069 () Bool)

(assert (=> b!3978117 (= e!2465069 (>= (size!31809 lt!1395929) (size!31809 lt!1395954)))))

(declare-fun d!1177587 () Bool)

(assert (=> d!1177587 e!2465069))

(declare-fun res!1611599 () Bool)

(assert (=> d!1177587 (=> res!1611599 e!2465069)))

(declare-fun lt!1396072 () Bool)

(assert (=> d!1177587 (= res!1611599 (not lt!1396072))))

(assert (=> d!1177587 (= lt!1396072 e!2465070)))

(declare-fun res!1611597 () Bool)

(assert (=> d!1177587 (=> res!1611597 e!2465070)))

(assert (=> d!1177587 (= res!1611597 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177587 (= (isPrefix!3795 lt!1395954 lt!1395929) lt!1396072)))

(assert (= (and d!1177587 (not res!1611597)) b!3978114))

(assert (= (and b!3978114 res!1611598) b!3978115))

(assert (= (and b!3978115 res!1611600) b!3978116))

(assert (= (and d!1177587 (not res!1611599)) b!3978117))

(assert (=> b!3978115 m!4549803))

(declare-fun m!4550011 () Bool)

(assert (=> b!3978115 m!4550011))

(assert (=> b!3978116 m!4549795))

(declare-fun m!4550013 () Bool)

(assert (=> b!3978116 m!4550013))

(assert (=> b!3978116 m!4549795))

(assert (=> b!3978116 m!4550013))

(declare-fun m!4550015 () Bool)

(assert (=> b!3978116 m!4550015))

(declare-fun m!4550017 () Bool)

(assert (=> b!3978117 m!4550017))

(assert (=> b!3978117 m!4549727))

(assert (=> b!3977877 d!1177587))

(declare-fun d!1177589 () Bool)

(declare-fun dynLambda!18097 (Int BalanceConc!25432) TokenValue!6938)

(assert (=> d!1177589 (= (apply!9919 (transformation!6708 (rule!9708 token!484)) (seqFromList!4947 lt!1395954)) (dynLambda!18097 (toValue!9196 (transformation!6708 (rule!9708 token!484))) (seqFromList!4947 lt!1395954)))))

(declare-fun b_lambda!116211 () Bool)

(assert (=> (not b_lambda!116211) (not d!1177589)))

(declare-fun t!331167 () Bool)

(declare-fun tb!239781 () Bool)

(assert (=> (and b!3977864 (= (toValue!9196 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))) t!331167) tb!239781))

(declare-fun result!290446 () Bool)

(assert (=> tb!239781 (= result!290446 (inv!21 (dynLambda!18097 (toValue!9196 (transformation!6708 (rule!9708 token!484))) (seqFromList!4947 lt!1395954))))))

(declare-fun m!4550019 () Bool)

(assert (=> tb!239781 m!4550019))

(assert (=> d!1177589 t!331167))

(declare-fun b_and!305791 () Bool)

(assert (= b_and!305775 (and (=> t!331167 result!290446) b_and!305791)))

(declare-fun t!331169 () Bool)

(declare-fun tb!239783 () Bool)

(assert (=> (and b!3977855 (= (toValue!9196 (transformation!6708 (h!47942 rules!2999))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))) t!331169) tb!239783))

(declare-fun result!290450 () Bool)

(assert (= result!290450 result!290446))

(assert (=> d!1177589 t!331169))

(declare-fun b_and!305793 () Bool)

(assert (= b_and!305779 (and (=> t!331169 result!290450) b_and!305793)))

(assert (=> d!1177589 m!4549707))

(declare-fun m!4550021 () Bool)

(assert (=> d!1177589 m!4550021))

(assert (=> b!3977877 d!1177589))

(declare-fun d!1177591 () Bool)

(assert (=> d!1177591 (= lt!1395963 suffixResult!105)))

(declare-fun lt!1396075 () Unit!61170)

(declare-fun choose!23845 (List!42644 List!42644 List!42644 List!42644 List!42644) Unit!61170)

(assert (=> d!1177591 (= lt!1396075 (choose!23845 lt!1395954 lt!1395963 lt!1395954 suffixResult!105 lt!1395939))))

(assert (=> d!1177591 (isPrefix!3795 lt!1395954 lt!1395939)))

(assert (=> d!1177591 (= (lemmaSamePrefixThenSameSuffix!1982 lt!1395954 lt!1395963 lt!1395954 suffixResult!105 lt!1395939) lt!1396075)))

(declare-fun bs!587817 () Bool)

(assert (= bs!587817 d!1177591))

(declare-fun m!4550023 () Bool)

(assert (=> bs!587817 m!4550023))

(assert (=> bs!587817 m!4549735))

(assert (=> b!3977877 d!1177591))

(declare-fun d!1177593 () Bool)

(declare-fun fromListB!2274 (List!42644) BalanceConc!25432)

(assert (=> d!1177593 (= (seqFromList!4947 lt!1395954) (fromListB!2274 lt!1395954))))

(declare-fun bs!587818 () Bool)

(assert (= bs!587818 d!1177593))

(declare-fun m!4550025 () Bool)

(assert (=> bs!587818 m!4550025))

(assert (=> b!3977877 d!1177593))

(declare-fun d!1177595 () Bool)

(assert (=> d!1177595 (= (maxPrefixOneRule!2629 thiss!21717 (rule!9708 token!484) lt!1395939) (Some!9121 (tuple2!41753 (Token!12555 (apply!9919 (transformation!6708 (rule!9708 token!484)) (seqFromList!4947 lt!1395954)) (rule!9708 token!484) (size!31809 lt!1395954) lt!1395954) suffixResult!105)))))

(declare-fun lt!1396091 () Unit!61170)

(declare-fun choose!23846 (LexerInterface!6297 List!42646 List!42644 List!42644 List!42644 Rule!13216) Unit!61170)

(assert (=> d!1177595 (= lt!1396091 (choose!23846 thiss!21717 rules!2999 lt!1395954 lt!1395939 suffixResult!105 (rule!9708 token!484)))))

(assert (=> d!1177595 (not (isEmpty!25424 rules!2999))))

(assert (=> d!1177595 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1451 thiss!21717 rules!2999 lt!1395954 lt!1395939 suffixResult!105 (rule!9708 token!484)) lt!1396091)))

(declare-fun bs!587820 () Bool)

(assert (= bs!587820 d!1177595))

(assert (=> bs!587820 m!4549649))

(assert (=> bs!587820 m!4549727))

(assert (=> bs!587820 m!4549707))

(assert (=> bs!587820 m!4549707))

(assert (=> bs!587820 m!4549709))

(declare-fun m!4550081 () Bool)

(assert (=> bs!587820 m!4550081))

(assert (=> bs!587820 m!4549703))

(assert (=> b!3977877 d!1177595))

(declare-fun d!1177611 () Bool)

(assert (=> d!1177611 (isPrefix!3795 lt!1395954 (++!11110 lt!1395954 lt!1395963))))

(declare-fun lt!1396099 () Unit!61170)

(declare-fun choose!23847 (List!42644 List!42644) Unit!61170)

(assert (=> d!1177611 (= lt!1396099 (choose!23847 lt!1395954 lt!1395963))))

(assert (=> d!1177611 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 lt!1395963) lt!1396099)))

(declare-fun bs!587821 () Bool)

(assert (= bs!587821 d!1177611))

(assert (=> bs!587821 m!4549637))

(assert (=> bs!587821 m!4549637))

(declare-fun m!4550115 () Bool)

(assert (=> bs!587821 m!4550115))

(declare-fun m!4550117 () Bool)

(assert (=> bs!587821 m!4550117))

(assert (=> b!3977877 d!1177611))

(declare-fun b!3978334 () Bool)

(declare-fun e!2465191 () Option!9122)

(declare-datatypes ((tuple2!41756 0))(
  ( (tuple2!41757 (_1!24012 List!42644) (_2!24012 List!42644)) )
))
(declare-fun lt!1396154 () tuple2!41756)

(declare-fun size!31811 (BalanceConc!25432) Int)

(assert (=> b!3978334 (= e!2465191 (Some!9121 (tuple2!41753 (Token!12555 (apply!9919 (transformation!6708 (rule!9708 token!484)) (seqFromList!4947 (_1!24012 lt!1396154))) (rule!9708 token!484) (size!31811 (seqFromList!4947 (_1!24012 lt!1396154))) (_1!24012 lt!1396154)) (_2!24012 lt!1396154))))))

(declare-fun lt!1396150 () Unit!61170)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1289 (Regex!11613 List!42644) Unit!61170)

(assert (=> b!3978334 (= lt!1396150 (longestMatchIsAcceptedByMatchOrIsEmpty!1289 (regex!6708 (rule!9708 token!484)) lt!1395939))))

(declare-fun res!1611735 () Bool)

(declare-fun findLongestMatchInner!1316 (Regex!11613 List!42644 Int List!42644 List!42644 Int) tuple2!41756)

(assert (=> b!3978334 (= res!1611735 (isEmpty!25427 (_1!24012 (findLongestMatchInner!1316 (regex!6708 (rule!9708 token!484)) Nil!42520 (size!31809 Nil!42520) lt!1395939 lt!1395939 (size!31809 lt!1395939)))))))

(declare-fun e!2465192 () Bool)

(assert (=> b!3978334 (=> res!1611735 e!2465192)))

(assert (=> b!3978334 e!2465192))

(declare-fun lt!1396153 () Unit!61170)

(assert (=> b!3978334 (= lt!1396153 lt!1396150)))

(declare-fun lt!1396152 () Unit!61170)

(declare-fun lemmaSemiInverse!1828 (TokenValueInjection!13304 BalanceConc!25432) Unit!61170)

(assert (=> b!3978334 (= lt!1396152 (lemmaSemiInverse!1828 (transformation!6708 (rule!9708 token!484)) (seqFromList!4947 (_1!24012 lt!1396154))))))

(declare-fun b!3978335 () Bool)

(declare-fun res!1611740 () Bool)

(declare-fun e!2465193 () Bool)

(assert (=> b!3978335 (=> (not res!1611740) (not e!2465193))))

(declare-fun lt!1396151 () Option!9122)

(assert (=> b!3978335 (= res!1611740 (= (++!11110 (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396151)))) (_2!24010 (get!14002 lt!1396151))) lt!1395939))))

(declare-fun b!3978336 () Bool)

(assert (=> b!3978336 (= e!2465192 (matchR!5590 (regex!6708 (rule!9708 token!484)) (_1!24012 (findLongestMatchInner!1316 (regex!6708 (rule!9708 token!484)) Nil!42520 (size!31809 Nil!42520) lt!1395939 lt!1395939 (size!31809 lt!1395939)))))))

(declare-fun b!3978337 () Bool)

(declare-fun e!2465190 () Bool)

(assert (=> b!3978337 (= e!2465190 e!2465193)))

(declare-fun res!1611739 () Bool)

(assert (=> b!3978337 (=> (not res!1611739) (not e!2465193))))

(assert (=> b!3978337 (= res!1611739 (matchR!5590 (regex!6708 (rule!9708 token!484)) (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396151))))))))

(declare-fun b!3978338 () Bool)

(assert (=> b!3978338 (= e!2465193 (= (size!31808 (_1!24010 (get!14002 lt!1396151))) (size!31809 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396151))))))))

(declare-fun b!3978340 () Bool)

(declare-fun res!1611741 () Bool)

(assert (=> b!3978340 (=> (not res!1611741) (not e!2465193))))

(assert (=> b!3978340 (= res!1611741 (= (rule!9708 (_1!24010 (get!14002 lt!1396151))) (rule!9708 token!484)))))

(declare-fun b!3978341 () Bool)

(assert (=> b!3978341 (= e!2465191 None!9121)))

(declare-fun b!3978342 () Bool)

(declare-fun res!1611738 () Bool)

(assert (=> b!3978342 (=> (not res!1611738) (not e!2465193))))

(assert (=> b!3978342 (= res!1611738 (< (size!31809 (_2!24010 (get!14002 lt!1396151))) (size!31809 lt!1395939)))))

(declare-fun d!1177621 () Bool)

(assert (=> d!1177621 e!2465190))

(declare-fun res!1611737 () Bool)

(assert (=> d!1177621 (=> res!1611737 e!2465190)))

(assert (=> d!1177621 (= res!1611737 (isEmpty!25428 lt!1396151))))

(assert (=> d!1177621 (= lt!1396151 e!2465191)))

(declare-fun c!689448 () Bool)

(assert (=> d!1177621 (= c!689448 (isEmpty!25427 (_1!24012 lt!1396154)))))

(declare-fun findLongestMatch!1229 (Regex!11613 List!42644) tuple2!41756)

(assert (=> d!1177621 (= lt!1396154 (findLongestMatch!1229 (regex!6708 (rule!9708 token!484)) lt!1395939))))

(assert (=> d!1177621 (ruleValid!2640 thiss!21717 (rule!9708 token!484))))

(assert (=> d!1177621 (= (maxPrefixOneRule!2629 thiss!21717 (rule!9708 token!484) lt!1395939) lt!1396151)))

(declare-fun b!3978339 () Bool)

(declare-fun res!1611736 () Bool)

(assert (=> b!3978339 (=> (not res!1611736) (not e!2465193))))

(assert (=> b!3978339 (= res!1611736 (= (value!211812 (_1!24010 (get!14002 lt!1396151))) (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (get!14002 lt!1396151)))) (seqFromList!4947 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396151)))))))))

(assert (= (and d!1177621 c!689448) b!3978341))

(assert (= (and d!1177621 (not c!689448)) b!3978334))

(assert (= (and b!3978334 (not res!1611735)) b!3978336))

(assert (= (and d!1177621 (not res!1611737)) b!3978337))

(assert (= (and b!3978337 res!1611739) b!3978335))

(assert (= (and b!3978335 res!1611740) b!3978342))

(assert (= (and b!3978342 res!1611738) b!3978340))

(assert (= (and b!3978340 res!1611741) b!3978339))

(assert (= (and b!3978339 res!1611736) b!3978338))

(declare-fun m!4550347 () Bool)

(assert (=> b!3978335 m!4550347))

(declare-fun m!4550349 () Bool)

(assert (=> b!3978335 m!4550349))

(assert (=> b!3978335 m!4550349))

(declare-fun m!4550351 () Bool)

(assert (=> b!3978335 m!4550351))

(assert (=> b!3978335 m!4550351))

(declare-fun m!4550353 () Bool)

(assert (=> b!3978335 m!4550353))

(declare-fun m!4550355 () Bool)

(assert (=> b!3978334 m!4550355))

(declare-fun m!4550357 () Bool)

(assert (=> b!3978334 m!4550357))

(declare-fun m!4550359 () Bool)

(assert (=> b!3978334 m!4550359))

(assert (=> b!3978334 m!4550357))

(declare-fun m!4550361 () Bool)

(assert (=> b!3978334 m!4550361))

(assert (=> b!3978334 m!4550357))

(assert (=> b!3978334 m!4549763))

(assert (=> b!3978334 m!4550357))

(declare-fun m!4550363 () Bool)

(assert (=> b!3978334 m!4550363))

(declare-fun m!4550365 () Bool)

(assert (=> b!3978334 m!4550365))

(assert (=> b!3978334 m!4549763))

(declare-fun m!4550367 () Bool)

(assert (=> b!3978334 m!4550367))

(declare-fun m!4550369 () Bool)

(assert (=> b!3978334 m!4550369))

(assert (=> b!3978334 m!4550365))

(declare-fun m!4550371 () Bool)

(assert (=> d!1177621 m!4550371))

(declare-fun m!4550373 () Bool)

(assert (=> d!1177621 m!4550373))

(declare-fun m!4550375 () Bool)

(assert (=> d!1177621 m!4550375))

(assert (=> d!1177621 m!4549723))

(assert (=> b!3978340 m!4550347))

(assert (=> b!3978342 m!4550347))

(declare-fun m!4550377 () Bool)

(assert (=> b!3978342 m!4550377))

(assert (=> b!3978342 m!4549763))

(assert (=> b!3978337 m!4550347))

(assert (=> b!3978337 m!4550349))

(assert (=> b!3978337 m!4550349))

(assert (=> b!3978337 m!4550351))

(assert (=> b!3978337 m!4550351))

(declare-fun m!4550379 () Bool)

(assert (=> b!3978337 m!4550379))

(assert (=> b!3978336 m!4550365))

(assert (=> b!3978336 m!4549763))

(assert (=> b!3978336 m!4550365))

(assert (=> b!3978336 m!4549763))

(assert (=> b!3978336 m!4550367))

(declare-fun m!4550381 () Bool)

(assert (=> b!3978336 m!4550381))

(assert (=> b!3978338 m!4550347))

(declare-fun m!4550383 () Bool)

(assert (=> b!3978338 m!4550383))

(assert (=> b!3978339 m!4550347))

(declare-fun m!4550385 () Bool)

(assert (=> b!3978339 m!4550385))

(assert (=> b!3978339 m!4550385))

(declare-fun m!4550387 () Bool)

(assert (=> b!3978339 m!4550387))

(assert (=> b!3977877 d!1177621))

(declare-fun b!3978343 () Bool)

(declare-fun e!2465196 () Bool)

(declare-fun e!2465194 () Bool)

(assert (=> b!3978343 (= e!2465196 e!2465194)))

(declare-fun res!1611743 () Bool)

(assert (=> b!3978343 (=> (not res!1611743) (not e!2465194))))

(assert (=> b!3978343 (= res!1611743 (not ((_ is Nil!42520) lt!1395939)))))

(declare-fun b!3978344 () Bool)

(declare-fun res!1611745 () Bool)

(assert (=> b!3978344 (=> (not res!1611745) (not e!2465194))))

(assert (=> b!3978344 (= res!1611745 (= (head!8472 prefix!494) (head!8472 lt!1395939)))))

(declare-fun b!3978345 () Bool)

(assert (=> b!3978345 (= e!2465194 (isPrefix!3795 (tail!6204 prefix!494) (tail!6204 lt!1395939)))))

(declare-fun b!3978346 () Bool)

(declare-fun e!2465195 () Bool)

(assert (=> b!3978346 (= e!2465195 (>= (size!31809 lt!1395939) (size!31809 prefix!494)))))

(declare-fun d!1177701 () Bool)

(assert (=> d!1177701 e!2465195))

(declare-fun res!1611744 () Bool)

(assert (=> d!1177701 (=> res!1611744 e!2465195)))

(declare-fun lt!1396155 () Bool)

(assert (=> d!1177701 (= res!1611744 (not lt!1396155))))

(assert (=> d!1177701 (= lt!1396155 e!2465196)))

(declare-fun res!1611742 () Bool)

(assert (=> d!1177701 (=> res!1611742 e!2465196)))

(assert (=> d!1177701 (= res!1611742 ((_ is Nil!42520) prefix!494))))

(assert (=> d!1177701 (= (isPrefix!3795 prefix!494 lt!1395939) lt!1396155)))

(assert (= (and d!1177701 (not res!1611742)) b!3978343))

(assert (= (and b!3978343 res!1611743) b!3978344))

(assert (= (and b!3978344 res!1611745) b!3978345))

(assert (= (and d!1177701 (not res!1611744)) b!3978346))

(assert (=> b!3978344 m!4549999))

(assert (=> b!3978344 m!4549769))

(assert (=> b!3978345 m!4549995))

(assert (=> b!3978345 m!4549765))

(assert (=> b!3978345 m!4549995))

(assert (=> b!3978345 m!4549765))

(declare-fun m!4550389 () Bool)

(assert (=> b!3978345 m!4550389))

(assert (=> b!3978346 m!4549763))

(assert (=> b!3978346 m!4549729))

(assert (=> b!3977856 d!1177701))

(declare-fun d!1177703 () Bool)

(assert (=> d!1177703 (isPrefix!3795 lt!1395954 (++!11110 lt!1395954 suffixResult!105))))

(declare-fun lt!1396157 () Unit!61170)

(assert (=> d!1177703 (= lt!1396157 (choose!23847 lt!1395954 suffixResult!105))))

(assert (=> d!1177703 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 suffixResult!105) lt!1396157)))

(declare-fun bs!587834 () Bool)

(assert (= bs!587834 d!1177703))

(assert (=> bs!587834 m!4549719))

(assert (=> bs!587834 m!4549719))

(declare-fun m!4550391 () Bool)

(assert (=> bs!587834 m!4550391))

(declare-fun m!4550393 () Bool)

(assert (=> bs!587834 m!4550393))

(assert (=> b!3977856 d!1177703))

(declare-fun b!3978361 () Bool)

(declare-fun e!2465206 () Bool)

(declare-fun e!2465204 () Bool)

(assert (=> b!3978361 (= e!2465206 e!2465204)))

(declare-fun res!1611755 () Bool)

(assert (=> b!3978361 (=> (not res!1611755) (not e!2465204))))

(assert (=> b!3978361 (= res!1611755 (not ((_ is Nil!42520) lt!1395939)))))

(declare-fun b!3978362 () Bool)

(declare-fun res!1611757 () Bool)

(assert (=> b!3978362 (=> (not res!1611757) (not e!2465204))))

(assert (=> b!3978362 (= res!1611757 (= (head!8472 lt!1395954) (head!8472 lt!1395939)))))

(declare-fun b!3978363 () Bool)

(assert (=> b!3978363 (= e!2465204 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 lt!1395939)))))

(declare-fun b!3978364 () Bool)

(declare-fun e!2465205 () Bool)

(assert (=> b!3978364 (= e!2465205 (>= (size!31809 lt!1395939) (size!31809 lt!1395954)))))

(declare-fun d!1177705 () Bool)

(assert (=> d!1177705 e!2465205))

(declare-fun res!1611756 () Bool)

(assert (=> d!1177705 (=> res!1611756 e!2465205)))

(declare-fun lt!1396158 () Bool)

(assert (=> d!1177705 (= res!1611756 (not lt!1396158))))

(assert (=> d!1177705 (= lt!1396158 e!2465206)))

(declare-fun res!1611754 () Bool)

(assert (=> d!1177705 (=> res!1611754 e!2465206)))

(assert (=> d!1177705 (= res!1611754 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177705 (= (isPrefix!3795 lt!1395954 lt!1395939) lt!1396158)))

(assert (= (and d!1177705 (not res!1611754)) b!3978361))

(assert (= (and b!3978361 res!1611755) b!3978362))

(assert (= (and b!3978362 res!1611757) b!3978363))

(assert (= (and d!1177705 (not res!1611756)) b!3978364))

(assert (=> b!3978362 m!4549803))

(assert (=> b!3978362 m!4549769))

(assert (=> b!3978363 m!4549795))

(assert (=> b!3978363 m!4549765))

(assert (=> b!3978363 m!4549795))

(assert (=> b!3978363 m!4549765))

(declare-fun m!4550395 () Bool)

(assert (=> b!3978363 m!4550395))

(assert (=> b!3978364 m!4549763))

(assert (=> b!3978364 m!4549727))

(assert (=> b!3977856 d!1177705))

(declare-fun d!1177707 () Bool)

(assert (=> d!1177707 (isPrefix!3795 prefix!494 (++!11110 prefix!494 suffix!1299))))

(declare-fun lt!1396159 () Unit!61170)

(assert (=> d!1177707 (= lt!1396159 (choose!23847 prefix!494 suffix!1299))))

(assert (=> d!1177707 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 prefix!494 suffix!1299) lt!1396159)))

(declare-fun bs!587835 () Bool)

(assert (= bs!587835 d!1177707))

(assert (=> bs!587835 m!4549701))

(assert (=> bs!587835 m!4549701))

(declare-fun m!4550405 () Bool)

(assert (=> bs!587835 m!4550405))

(declare-fun m!4550407 () Bool)

(assert (=> bs!587835 m!4550407))

(assert (=> b!3977856 d!1177707))

(declare-fun b!3978365 () Bool)

(declare-fun e!2465209 () Bool)

(declare-fun e!2465207 () Bool)

(assert (=> b!3978365 (= e!2465209 e!2465207)))

(declare-fun res!1611759 () Bool)

(assert (=> b!3978365 (=> (not res!1611759) (not e!2465207))))

(assert (=> b!3978365 (= res!1611759 (not ((_ is Nil!42520) lt!1395945)))))

(declare-fun b!3978366 () Bool)

(declare-fun res!1611761 () Bool)

(assert (=> b!3978366 (=> (not res!1611761) (not e!2465207))))

(assert (=> b!3978366 (= res!1611761 (= (head!8472 lt!1395954) (head!8472 lt!1395945)))))

(declare-fun b!3978367 () Bool)

(assert (=> b!3978367 (= e!2465207 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 lt!1395945)))))

(declare-fun b!3978368 () Bool)

(declare-fun e!2465208 () Bool)

(assert (=> b!3978368 (= e!2465208 (>= (size!31809 lt!1395945) (size!31809 lt!1395954)))))

(declare-fun d!1177709 () Bool)

(assert (=> d!1177709 e!2465208))

(declare-fun res!1611760 () Bool)

(assert (=> d!1177709 (=> res!1611760 e!2465208)))

(declare-fun lt!1396160 () Bool)

(assert (=> d!1177709 (= res!1611760 (not lt!1396160))))

(assert (=> d!1177709 (= lt!1396160 e!2465209)))

(declare-fun res!1611758 () Bool)

(assert (=> d!1177709 (=> res!1611758 e!2465209)))

(assert (=> d!1177709 (= res!1611758 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177709 (= (isPrefix!3795 lt!1395954 lt!1395945) lt!1396160)))

(assert (= (and d!1177709 (not res!1611758)) b!3978365))

(assert (= (and b!3978365 res!1611759) b!3978366))

(assert (= (and b!3978366 res!1611761) b!3978367))

(assert (= (and d!1177709 (not res!1611760)) b!3978368))

(assert (=> b!3978366 m!4549803))

(declare-fun m!4550413 () Bool)

(assert (=> b!3978366 m!4550413))

(assert (=> b!3978367 m!4549795))

(declare-fun m!4550415 () Bool)

(assert (=> b!3978367 m!4550415))

(assert (=> b!3978367 m!4549795))

(assert (=> b!3978367 m!4550415))

(declare-fun m!4550417 () Bool)

(assert (=> b!3978367 m!4550417))

(declare-fun m!4550419 () Bool)

(assert (=> b!3978368 m!4550419))

(assert (=> b!3978368 m!4549727))

(assert (=> b!3977856 d!1177709))

(declare-fun b!3978373 () Bool)

(declare-fun res!1611772 () Bool)

(declare-fun e!2465213 () Bool)

(assert (=> b!3978373 (=> (not res!1611772) (not e!2465213))))

(declare-fun lt!1396162 () Option!9122)

(assert (=> b!3978373 (= res!1611772 (= (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396162)))) (originalCharacters!7308 (_1!24010 (get!14002 lt!1396162)))))))

(declare-fun b!3978374 () Bool)

(declare-fun res!1611767 () Bool)

(assert (=> b!3978374 (=> (not res!1611767) (not e!2465213))))

(assert (=> b!3978374 (= res!1611767 (= (value!211812 (_1!24010 (get!14002 lt!1396162))) (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (get!14002 lt!1396162)))) (seqFromList!4947 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396162)))))))))

(declare-fun b!3978375 () Bool)

(assert (=> b!3978375 (= e!2465213 (contains!8465 rules!2999 (rule!9708 (_1!24010 (get!14002 lt!1396162)))))))

(declare-fun d!1177713 () Bool)

(declare-fun e!2465215 () Bool)

(assert (=> d!1177713 e!2465215))

(declare-fun res!1611770 () Bool)

(assert (=> d!1177713 (=> res!1611770 e!2465215)))

(assert (=> d!1177713 (= res!1611770 (isEmpty!25428 lt!1396162))))

(declare-fun e!2465214 () Option!9122)

(assert (=> d!1177713 (= lt!1396162 e!2465214)))

(declare-fun c!689452 () Bool)

(assert (=> d!1177713 (= c!689452 (and ((_ is Cons!42522) rules!2999) ((_ is Nil!42522) (t!331157 rules!2999))))))

(declare-fun lt!1396164 () Unit!61170)

(declare-fun lt!1396165 () Unit!61170)

(assert (=> d!1177713 (= lt!1396164 lt!1396165)))

(assert (=> d!1177713 (isPrefix!3795 lt!1395970 lt!1395970)))

(assert (=> d!1177713 (= lt!1396165 (lemmaIsPrefixRefl!2387 lt!1395970 lt!1395970))))

(assert (=> d!1177713 (rulesValidInductive!2435 thiss!21717 rules!2999)))

(assert (=> d!1177713 (= (maxPrefix!3595 thiss!21717 rules!2999 lt!1395970) lt!1396162)))

(declare-fun b!3978376 () Bool)

(declare-fun call!285697 () Option!9122)

(assert (=> b!3978376 (= e!2465214 call!285697)))

(declare-fun b!3978377 () Bool)

(declare-fun res!1611766 () Bool)

(assert (=> b!3978377 (=> (not res!1611766) (not e!2465213))))

(assert (=> b!3978377 (= res!1611766 (matchR!5590 (regex!6708 (rule!9708 (_1!24010 (get!14002 lt!1396162)))) (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396162))))))))

(declare-fun b!3978378 () Bool)

(assert (=> b!3978378 (= e!2465215 e!2465213)))

(declare-fun res!1611771 () Bool)

(assert (=> b!3978378 (=> (not res!1611771) (not e!2465213))))

(assert (=> b!3978378 (= res!1611771 (isDefined!7024 lt!1396162))))

(declare-fun b!3978379 () Bool)

(declare-fun lt!1396163 () Option!9122)

(declare-fun lt!1396166 () Option!9122)

(assert (=> b!3978379 (= e!2465214 (ite (and ((_ is None!9121) lt!1396163) ((_ is None!9121) lt!1396166)) None!9121 (ite ((_ is None!9121) lt!1396166) lt!1396163 (ite ((_ is None!9121) lt!1396163) lt!1396166 (ite (>= (size!31808 (_1!24010 (v!39469 lt!1396163))) (size!31808 (_1!24010 (v!39469 lt!1396166)))) lt!1396163 lt!1396166)))))))

(assert (=> b!3978379 (= lt!1396163 call!285697)))

(assert (=> b!3978379 (= lt!1396166 (maxPrefix!3595 thiss!21717 (t!331157 rules!2999) lt!1395970))))

(declare-fun b!3978380 () Bool)

(declare-fun res!1611768 () Bool)

(assert (=> b!3978380 (=> (not res!1611768) (not e!2465213))))

(assert (=> b!3978380 (= res!1611768 (< (size!31809 (_2!24010 (get!14002 lt!1396162))) (size!31809 lt!1395970)))))

(declare-fun b!3978381 () Bool)

(declare-fun res!1611769 () Bool)

(assert (=> b!3978381 (=> (not res!1611769) (not e!2465213))))

(assert (=> b!3978381 (= res!1611769 (= (++!11110 (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396162)))) (_2!24010 (get!14002 lt!1396162))) lt!1395970))))

(declare-fun bm!285692 () Bool)

(assert (=> bm!285692 (= call!285697 (maxPrefixOneRule!2629 thiss!21717 (h!47942 rules!2999) lt!1395970))))

(assert (= (and d!1177713 c!689452) b!3978376))

(assert (= (and d!1177713 (not c!689452)) b!3978379))

(assert (= (or b!3978376 b!3978379) bm!285692))

(assert (= (and d!1177713 (not res!1611770)) b!3978378))

(assert (= (and b!3978378 res!1611771) b!3978373))

(assert (= (and b!3978373 res!1611772) b!3978380))

(assert (= (and b!3978380 res!1611768) b!3978381))

(assert (= (and b!3978381 res!1611769) b!3978374))

(assert (= (and b!3978374 res!1611767) b!3978377))

(assert (= (and b!3978377 res!1611766) b!3978375))

(declare-fun m!4550427 () Bool)

(assert (=> b!3978379 m!4550427))

(declare-fun m!4550429 () Bool)

(assert (=> d!1177713 m!4550429))

(declare-fun m!4550431 () Bool)

(assert (=> d!1177713 m!4550431))

(declare-fun m!4550433 () Bool)

(assert (=> d!1177713 m!4550433))

(assert (=> d!1177713 m!4549955))

(declare-fun m!4550435 () Bool)

(assert (=> b!3978378 m!4550435))

(declare-fun m!4550437 () Bool)

(assert (=> b!3978377 m!4550437))

(declare-fun m!4550439 () Bool)

(assert (=> b!3978377 m!4550439))

(assert (=> b!3978377 m!4550439))

(declare-fun m!4550441 () Bool)

(assert (=> b!3978377 m!4550441))

(assert (=> b!3978377 m!4550441))

(declare-fun m!4550443 () Bool)

(assert (=> b!3978377 m!4550443))

(assert (=> b!3978374 m!4550437))

(declare-fun m!4550445 () Bool)

(assert (=> b!3978374 m!4550445))

(assert (=> b!3978374 m!4550445))

(declare-fun m!4550447 () Bool)

(assert (=> b!3978374 m!4550447))

(assert (=> b!3978380 m!4550437))

(declare-fun m!4550449 () Bool)

(assert (=> b!3978380 m!4550449))

(assert (=> b!3978380 m!4549651))

(assert (=> b!3978381 m!4550437))

(assert (=> b!3978381 m!4550439))

(assert (=> b!3978381 m!4550439))

(assert (=> b!3978381 m!4550441))

(assert (=> b!3978381 m!4550441))

(declare-fun m!4550451 () Bool)

(assert (=> b!3978381 m!4550451))

(assert (=> b!3978373 m!4550437))

(assert (=> b!3978373 m!4550439))

(assert (=> b!3978373 m!4550439))

(assert (=> b!3978373 m!4550441))

(assert (=> b!3978375 m!4550437))

(declare-fun m!4550455 () Bool)

(assert (=> b!3978375 m!4550455))

(declare-fun m!4550459 () Bool)

(assert (=> bm!285692 m!4550459))

(assert (=> b!3977857 d!1177713))

(declare-fun d!1177717 () Bool)

(assert (=> d!1177717 (= suffixResult!105 lt!1395934)))

(declare-fun lt!1396171 () Unit!61170)

(assert (=> d!1177717 (= lt!1396171 (choose!23845 lt!1395954 suffixResult!105 lt!1395954 lt!1395934 lt!1395939))))

(assert (=> d!1177717 (isPrefix!3795 lt!1395954 lt!1395939)))

(assert (=> d!1177717 (= (lemmaSamePrefixThenSameSuffix!1982 lt!1395954 suffixResult!105 lt!1395954 lt!1395934 lt!1395939) lt!1396171)))

(declare-fun bs!587838 () Bool)

(assert (= bs!587838 d!1177717))

(declare-fun m!4550461 () Bool)

(assert (=> bs!587838 m!4550461))

(assert (=> bs!587838 m!4549735))

(assert (=> b!3977857 d!1177717))

(declare-fun b!3978382 () Bool)

(declare-fun e!2465218 () Bool)

(declare-fun e!2465216 () Bool)

(assert (=> b!3978382 (= e!2465218 e!2465216)))

(declare-fun res!1611774 () Bool)

(assert (=> b!3978382 (=> (not res!1611774) (not e!2465216))))

(assert (=> b!3978382 (= res!1611774 (not ((_ is Nil!42520) lt!1395959)))))

(declare-fun b!3978383 () Bool)

(declare-fun res!1611776 () Bool)

(assert (=> b!3978383 (=> (not res!1611776) (not e!2465216))))

(assert (=> b!3978383 (= res!1611776 (= (head!8472 lt!1395954) (head!8472 lt!1395959)))))

(declare-fun b!3978384 () Bool)

(assert (=> b!3978384 (= e!2465216 (isPrefix!3795 (tail!6204 lt!1395954) (tail!6204 lt!1395959)))))

(declare-fun b!3978385 () Bool)

(declare-fun e!2465217 () Bool)

(assert (=> b!3978385 (= e!2465217 (>= (size!31809 lt!1395959) (size!31809 lt!1395954)))))

(declare-fun d!1177721 () Bool)

(assert (=> d!1177721 e!2465217))

(declare-fun res!1611775 () Bool)

(assert (=> d!1177721 (=> res!1611775 e!2465217)))

(declare-fun lt!1396172 () Bool)

(assert (=> d!1177721 (= res!1611775 (not lt!1396172))))

(assert (=> d!1177721 (= lt!1396172 e!2465218)))

(declare-fun res!1611773 () Bool)

(assert (=> d!1177721 (=> res!1611773 e!2465218)))

(assert (=> d!1177721 (= res!1611773 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177721 (= (isPrefix!3795 lt!1395954 lt!1395959) lt!1396172)))

(assert (= (and d!1177721 (not res!1611773)) b!3978382))

(assert (= (and b!3978382 res!1611774) b!3978383))

(assert (= (and b!3978383 res!1611776) b!3978384))

(assert (= (and d!1177721 (not res!1611775)) b!3978385))

(assert (=> b!3978383 m!4549803))

(declare-fun m!4550469 () Bool)

(assert (=> b!3978383 m!4550469))

(assert (=> b!3978384 m!4549795))

(declare-fun m!4550473 () Bool)

(assert (=> b!3978384 m!4550473))

(assert (=> b!3978384 m!4549795))

(assert (=> b!3978384 m!4550473))

(declare-fun m!4550475 () Bool)

(assert (=> b!3978384 m!4550475))

(declare-fun m!4550477 () Bool)

(assert (=> b!3978385 m!4550477))

(assert (=> b!3978385 m!4549727))

(assert (=> b!3977857 d!1177721))

(declare-fun d!1177729 () Bool)

(assert (=> d!1177729 (isPrefix!3795 lt!1395954 (++!11110 lt!1395954 lt!1395934))))

(declare-fun lt!1396178 () Unit!61170)

(assert (=> d!1177729 (= lt!1396178 (choose!23847 lt!1395954 lt!1395934))))

(assert (=> d!1177729 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395954 lt!1395934) lt!1396178)))

(declare-fun bs!587839 () Bool)

(assert (= bs!587839 d!1177729))

(assert (=> bs!587839 m!4549623))

(assert (=> bs!587839 m!4549623))

(declare-fun m!4550479 () Bool)

(assert (=> bs!587839 m!4550479))

(declare-fun m!4550481 () Bool)

(assert (=> bs!587839 m!4550481))

(assert (=> b!3977857 d!1177729))

(declare-fun lt!1396179 () List!42644)

(declare-fun b!3978399 () Bool)

(declare-fun e!2465224 () Bool)

(assert (=> b!3978399 (= e!2465224 (or (not (= lt!1395941 Nil!42520)) (= lt!1396179 prefix!494)))))

(declare-fun b!3978398 () Bool)

(declare-fun res!1611786 () Bool)

(assert (=> b!3978398 (=> (not res!1611786) (not e!2465224))))

(assert (=> b!3978398 (= res!1611786 (= (size!31809 lt!1396179) (+ (size!31809 prefix!494) (size!31809 lt!1395941))))))

(declare-fun d!1177731 () Bool)

(assert (=> d!1177731 e!2465224))

(declare-fun res!1611785 () Bool)

(assert (=> d!1177731 (=> (not res!1611785) (not e!2465224))))

(assert (=> d!1177731 (= res!1611785 (= (content!6446 lt!1396179) ((_ map or) (content!6446 prefix!494) (content!6446 lt!1395941))))))

(declare-fun e!2465223 () List!42644)

(assert (=> d!1177731 (= lt!1396179 e!2465223)))

(declare-fun c!689454 () Bool)

(assert (=> d!1177731 (= c!689454 ((_ is Nil!42520) prefix!494))))

(assert (=> d!1177731 (= (++!11110 prefix!494 lt!1395941) lt!1396179)))

(declare-fun b!3978396 () Bool)

(assert (=> b!3978396 (= e!2465223 lt!1395941)))

(declare-fun b!3978397 () Bool)

(assert (=> b!3978397 (= e!2465223 (Cons!42520 (h!47940 prefix!494) (++!11110 (t!331155 prefix!494) lt!1395941)))))

(assert (= (and d!1177731 c!689454) b!3978396))

(assert (= (and d!1177731 (not c!689454)) b!3978397))

(assert (= (and d!1177731 res!1611785) b!3978398))

(assert (= (and b!3978398 res!1611786) b!3978399))

(declare-fun m!4550483 () Bool)

(assert (=> b!3978398 m!4550483))

(assert (=> b!3978398 m!4549729))

(declare-fun m!4550485 () Bool)

(assert (=> b!3978398 m!4550485))

(declare-fun m!4550487 () Bool)

(assert (=> d!1177731 m!4550487))

(assert (=> d!1177731 m!4549983))

(declare-fun m!4550489 () Bool)

(assert (=> d!1177731 m!4550489))

(declare-fun m!4550491 () Bool)

(assert (=> b!3978397 m!4550491))

(assert (=> b!3977878 d!1177731))

(declare-fun e!2465226 () Bool)

(declare-fun b!3978403 () Bool)

(declare-fun lt!1396180 () List!42644)

(assert (=> b!3978403 (= e!2465226 (or (not (= lt!1395974 Nil!42520)) (= lt!1396180 lt!1395970)))))

(declare-fun b!3978402 () Bool)

(declare-fun res!1611788 () Bool)

(assert (=> b!3978402 (=> (not res!1611788) (not e!2465226))))

(assert (=> b!3978402 (= res!1611788 (= (size!31809 lt!1396180) (+ (size!31809 lt!1395970) (size!31809 lt!1395974))))))

(declare-fun d!1177733 () Bool)

(assert (=> d!1177733 e!2465226))

(declare-fun res!1611787 () Bool)

(assert (=> d!1177733 (=> (not res!1611787) (not e!2465226))))

(assert (=> d!1177733 (= res!1611787 (= (content!6446 lt!1396180) ((_ map or) (content!6446 lt!1395970) (content!6446 lt!1395974))))))

(declare-fun e!2465225 () List!42644)

(assert (=> d!1177733 (= lt!1396180 e!2465225)))

(declare-fun c!689455 () Bool)

(assert (=> d!1177733 (= c!689455 ((_ is Nil!42520) lt!1395970))))

(assert (=> d!1177733 (= (++!11110 lt!1395970 lt!1395974) lt!1396180)))

(declare-fun b!3978400 () Bool)

(assert (=> b!3978400 (= e!2465225 lt!1395974)))

(declare-fun b!3978401 () Bool)

(assert (=> b!3978401 (= e!2465225 (Cons!42520 (h!47940 lt!1395970) (++!11110 (t!331155 lt!1395970) lt!1395974)))))

(assert (= (and d!1177733 c!689455) b!3978400))

(assert (= (and d!1177733 (not c!689455)) b!3978401))

(assert (= (and d!1177733 res!1611787) b!3978402))

(assert (= (and b!3978402 res!1611788) b!3978403))

(declare-fun m!4550493 () Bool)

(assert (=> b!3978402 m!4550493))

(assert (=> b!3978402 m!4549651))

(declare-fun m!4550495 () Bool)

(assert (=> b!3978402 m!4550495))

(declare-fun m!4550497 () Bool)

(assert (=> d!1177733 m!4550497))

(declare-fun m!4550499 () Bool)

(assert (=> d!1177733 m!4550499))

(declare-fun m!4550501 () Bool)

(assert (=> d!1177733 m!4550501))

(declare-fun m!4550503 () Bool)

(assert (=> b!3978401 m!4550503))

(assert (=> b!3977878 d!1177733))

(declare-fun d!1177735 () Bool)

(assert (=> d!1177735 (= (++!11110 (++!11110 prefix!494 newSuffix!27) lt!1395974) (++!11110 prefix!494 (++!11110 newSuffix!27 lt!1395974)))))

(declare-fun lt!1396181 () Unit!61170)

(assert (=> d!1177735 (= lt!1396181 (choose!23843 prefix!494 newSuffix!27 lt!1395974))))

(assert (=> d!1177735 (= (lemmaConcatAssociativity!2430 prefix!494 newSuffix!27 lt!1395974) lt!1396181)))

(declare-fun bs!587840 () Bool)

(assert (= bs!587840 d!1177735))

(assert (=> bs!587840 m!4549631))

(declare-fun m!4550505 () Bool)

(assert (=> bs!587840 m!4550505))

(assert (=> bs!587840 m!4549645))

(declare-fun m!4550507 () Bool)

(assert (=> bs!587840 m!4550507))

(assert (=> bs!587840 m!4549645))

(assert (=> bs!587840 m!4549631))

(declare-fun m!4550509 () Bool)

(assert (=> bs!587840 m!4550509))

(assert (=> b!3977878 d!1177735))

(declare-fun d!1177737 () Bool)

(declare-fun lt!1396182 () Int)

(assert (=> d!1177737 (>= lt!1396182 0)))

(declare-fun e!2465227 () Int)

(assert (=> d!1177737 (= lt!1396182 e!2465227)))

(declare-fun c!689456 () Bool)

(assert (=> d!1177737 (= c!689456 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177737 (= (size!31809 lt!1395954) lt!1396182)))

(declare-fun b!3978404 () Bool)

(assert (=> b!3978404 (= e!2465227 0)))

(declare-fun b!3978405 () Bool)

(assert (=> b!3978405 (= e!2465227 (+ 1 (size!31809 (t!331155 lt!1395954))))))

(assert (= (and d!1177737 c!689456) b!3978404))

(assert (= (and d!1177737 (not c!689456)) b!3978405))

(declare-fun m!4550511 () Bool)

(assert (=> b!3978405 m!4550511))

(assert (=> b!3977879 d!1177737))

(declare-fun d!1177739 () Bool)

(declare-fun lt!1396183 () Int)

(assert (=> d!1177739 (>= lt!1396183 0)))

(declare-fun e!2465228 () Int)

(assert (=> d!1177739 (= lt!1396183 e!2465228)))

(declare-fun c!689457 () Bool)

(assert (=> d!1177739 (= c!689457 ((_ is Nil!42520) prefix!494))))

(assert (=> d!1177739 (= (size!31809 prefix!494) lt!1396183)))

(declare-fun b!3978406 () Bool)

(assert (=> b!3978406 (= e!2465228 0)))

(declare-fun b!3978407 () Bool)

(assert (=> b!3978407 (= e!2465228 (+ 1 (size!31809 (t!331155 prefix!494))))))

(assert (= (and d!1177739 c!689457) b!3978406))

(assert (= (and d!1177739 (not c!689457)) b!3978407))

(declare-fun m!4550519 () Bool)

(assert (=> b!3978407 m!4550519))

(assert (=> b!3977879 d!1177739))

(declare-fun d!1177741 () Bool)

(declare-fun list!15782 (Conc!12919) List!42644)

(assert (=> d!1177741 (= (list!15780 (charsOf!4524 token!484)) (list!15782 (c!689366 (charsOf!4524 token!484))))))

(declare-fun bs!587841 () Bool)

(assert (= bs!587841 d!1177741))

(declare-fun m!4550545 () Bool)

(assert (=> bs!587841 m!4550545))

(assert (=> b!3977879 d!1177741))

(declare-fun d!1177745 () Bool)

(declare-fun lt!1396190 () BalanceConc!25432)

(assert (=> d!1177745 (= (list!15780 lt!1396190) (originalCharacters!7308 token!484))))

(assert (=> d!1177745 (= lt!1396190 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (value!211812 token!484)))))

(assert (=> d!1177745 (= (charsOf!4524 token!484) lt!1396190)))

(declare-fun b_lambda!116221 () Bool)

(assert (=> (not b_lambda!116221) (not d!1177745)))

(assert (=> d!1177745 t!331159))

(declare-fun b_and!305811 () Bool)

(assert (= b_and!305783 (and (=> t!331159 result!290434) b_and!305811)))

(assert (=> d!1177745 t!331161))

(declare-fun b_and!305813 () Bool)

(assert (= b_and!305785 (and (=> t!331161 result!290438) b_and!305813)))

(declare-fun m!4550571 () Bool)

(assert (=> d!1177745 m!4550571))

(assert (=> d!1177745 m!4549787))

(assert (=> b!3977879 d!1177745))

(declare-fun e!2465239 () Bool)

(declare-fun b!3978426 () Bool)

(declare-fun lt!1396193 () List!42644)

(assert (=> b!3978426 (= e!2465239 (or (not (= suffixResult!105 Nil!42520)) (= lt!1396193 lt!1395954)))))

(declare-fun b!3978425 () Bool)

(declare-fun res!1611801 () Bool)

(assert (=> b!3978425 (=> (not res!1611801) (not e!2465239))))

(assert (=> b!3978425 (= res!1611801 (= (size!31809 lt!1396193) (+ (size!31809 lt!1395954) (size!31809 suffixResult!105))))))

(declare-fun d!1177761 () Bool)

(assert (=> d!1177761 e!2465239))

(declare-fun res!1611800 () Bool)

(assert (=> d!1177761 (=> (not res!1611800) (not e!2465239))))

(assert (=> d!1177761 (= res!1611800 (= (content!6446 lt!1396193) ((_ map or) (content!6446 lt!1395954) (content!6446 suffixResult!105))))))

(declare-fun e!2465238 () List!42644)

(assert (=> d!1177761 (= lt!1396193 e!2465238)))

(declare-fun c!689460 () Bool)

(assert (=> d!1177761 (= c!689460 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177761 (= (++!11110 lt!1395954 suffixResult!105) lt!1396193)))

(declare-fun b!3978423 () Bool)

(assert (=> b!3978423 (= e!2465238 suffixResult!105)))

(declare-fun b!3978424 () Bool)

(assert (=> b!3978424 (= e!2465238 (Cons!42520 (h!47940 lt!1395954) (++!11110 (t!331155 lt!1395954) suffixResult!105)))))

(assert (= (and d!1177761 c!689460) b!3978423))

(assert (= (and d!1177761 (not c!689460)) b!3978424))

(assert (= (and d!1177761 res!1611800) b!3978425))

(assert (= (and b!3978425 res!1611801) b!3978426))

(declare-fun m!4550585 () Bool)

(assert (=> b!3978425 m!4550585))

(assert (=> b!3978425 m!4549727))

(declare-fun m!4550589 () Bool)

(assert (=> b!3978425 m!4550589))

(declare-fun m!4550591 () Bool)

(assert (=> d!1177761 m!4550591))

(assert (=> d!1177761 m!4549755))

(declare-fun m!4550593 () Bool)

(assert (=> d!1177761 m!4550593))

(declare-fun m!4550595 () Bool)

(assert (=> b!3978424 m!4550595))

(assert (=> b!3977859 d!1177761))

(declare-fun d!1177765 () Bool)

(declare-fun e!2465250 () Bool)

(assert (=> d!1177765 e!2465250))

(declare-fun res!1611812 () Bool)

(assert (=> d!1177765 (=> (not res!1611812) (not e!2465250))))

(assert (=> d!1177765 (= res!1611812 (semiInverseModEq!2878 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))))))

(declare-fun Unit!61173 () Unit!61170)

(assert (=> d!1177765 (= (lemmaInv!923 (transformation!6708 (rule!9708 token!484))) Unit!61173)))

(declare-fun b!3978443 () Bool)

(assert (=> b!3978443 (= e!2465250 (equivClasses!2777 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))))))

(assert (= (and d!1177765 res!1611812) b!3978443))

(declare-fun m!4550627 () Bool)

(assert (=> d!1177765 m!4550627))

(declare-fun m!4550629 () Bool)

(assert (=> b!3978443 m!4550629))

(assert (=> b!3977859 d!1177765))

(declare-fun d!1177777 () Bool)

(declare-fun res!1611825 () Bool)

(declare-fun e!2465259 () Bool)

(assert (=> d!1177777 (=> (not res!1611825) (not e!2465259))))

(assert (=> d!1177777 (= res!1611825 (validRegex!5271 (regex!6708 (rule!9708 token!484))))))

(assert (=> d!1177777 (= (ruleValid!2640 thiss!21717 (rule!9708 token!484)) e!2465259)))

(declare-fun b!3978456 () Bool)

(declare-fun res!1611826 () Bool)

(assert (=> b!3978456 (=> (not res!1611826) (not e!2465259))))

(assert (=> b!3978456 (= res!1611826 (not (nullable!4071 (regex!6708 (rule!9708 token!484)))))))

(declare-fun b!3978457 () Bool)

(assert (=> b!3978457 (= e!2465259 (not (= (tag!7568 (rule!9708 token!484)) (String!48409 ""))))))

(assert (= (and d!1177777 res!1611825) b!3978456))

(assert (= (and b!3978456 res!1611826) b!3978457))

(assert (=> d!1177777 m!4549801))

(assert (=> b!3978456 m!4549793))

(assert (=> b!3977859 d!1177777))

(declare-fun d!1177787 () Bool)

(assert (=> d!1177787 (ruleValid!2640 thiss!21717 (rule!9708 token!484))))

(declare-fun lt!1396208 () Unit!61170)

(declare-fun choose!23849 (LexerInterface!6297 Rule!13216 List!42646) Unit!61170)

(assert (=> d!1177787 (= lt!1396208 (choose!23849 thiss!21717 (rule!9708 token!484) rules!2999))))

(assert (=> d!1177787 (contains!8465 rules!2999 (rule!9708 token!484))))

(assert (=> d!1177787 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1714 thiss!21717 (rule!9708 token!484) rules!2999) lt!1396208)))

(declare-fun bs!587848 () Bool)

(assert (= bs!587848 d!1177787))

(assert (=> bs!587848 m!4549723))

(declare-fun m!4550651 () Bool)

(assert (=> bs!587848 m!4550651))

(declare-fun m!4550653 () Bool)

(assert (=> bs!587848 m!4550653))

(assert (=> b!3977859 d!1177787))

(declare-fun e!2465272 () Bool)

(declare-fun b!3978489 () Bool)

(declare-fun lt!1396209 () List!42644)

(assert (=> b!3978489 (= e!2465272 (or (not (= newSuffix!27 Nil!42520)) (= lt!1396209 prefix!494)))))

(declare-fun b!3978488 () Bool)

(declare-fun res!1611828 () Bool)

(assert (=> b!3978488 (=> (not res!1611828) (not e!2465272))))

(assert (=> b!3978488 (= res!1611828 (= (size!31809 lt!1396209) (+ (size!31809 prefix!494) (size!31809 newSuffix!27))))))

(declare-fun d!1177789 () Bool)

(assert (=> d!1177789 e!2465272))

(declare-fun res!1611827 () Bool)

(assert (=> d!1177789 (=> (not res!1611827) (not e!2465272))))

(assert (=> d!1177789 (= res!1611827 (= (content!6446 lt!1396209) ((_ map or) (content!6446 prefix!494) (content!6446 newSuffix!27))))))

(declare-fun e!2465271 () List!42644)

(assert (=> d!1177789 (= lt!1396209 e!2465271)))

(declare-fun c!689465 () Bool)

(assert (=> d!1177789 (= c!689465 ((_ is Nil!42520) prefix!494))))

(assert (=> d!1177789 (= (++!11110 prefix!494 newSuffix!27) lt!1396209)))

(declare-fun b!3978486 () Bool)

(assert (=> b!3978486 (= e!2465271 newSuffix!27)))

(declare-fun b!3978487 () Bool)

(assert (=> b!3978487 (= e!2465271 (Cons!42520 (h!47940 prefix!494) (++!11110 (t!331155 prefix!494) newSuffix!27)))))

(assert (= (and d!1177789 c!689465) b!3978486))

(assert (= (and d!1177789 (not c!689465)) b!3978487))

(assert (= (and d!1177789 res!1611827) b!3978488))

(assert (= (and b!3978488 res!1611828) b!3978489))

(declare-fun m!4550655 () Bool)

(assert (=> b!3978488 m!4550655))

(assert (=> b!3978488 m!4549729))

(assert (=> b!3978488 m!4549691))

(declare-fun m!4550657 () Bool)

(assert (=> d!1177789 m!4550657))

(assert (=> d!1177789 m!4549983))

(declare-fun m!4550659 () Bool)

(assert (=> d!1177789 m!4550659))

(declare-fun m!4550661 () Bool)

(assert (=> b!3978487 m!4550661))

(assert (=> b!3977880 d!1177789))

(declare-fun b!3978499 () Bool)

(declare-fun lt!1396210 () List!42644)

(declare-fun e!2465278 () Bool)

(assert (=> b!3978499 (= e!2465278 (or (not (= newSuffixResult!27 Nil!42520)) (= lt!1396210 lt!1395954)))))

(declare-fun b!3978498 () Bool)

(declare-fun res!1611830 () Bool)

(assert (=> b!3978498 (=> (not res!1611830) (not e!2465278))))

(assert (=> b!3978498 (= res!1611830 (= (size!31809 lt!1396210) (+ (size!31809 lt!1395954) (size!31809 newSuffixResult!27))))))

(declare-fun d!1177791 () Bool)

(assert (=> d!1177791 e!2465278))

(declare-fun res!1611829 () Bool)

(assert (=> d!1177791 (=> (not res!1611829) (not e!2465278))))

(assert (=> d!1177791 (= res!1611829 (= (content!6446 lt!1396210) ((_ map or) (content!6446 lt!1395954) (content!6446 newSuffixResult!27))))))

(declare-fun e!2465277 () List!42644)

(assert (=> d!1177791 (= lt!1396210 e!2465277)))

(declare-fun c!689466 () Bool)

(assert (=> d!1177791 (= c!689466 ((_ is Nil!42520) lt!1395954))))

(assert (=> d!1177791 (= (++!11110 lt!1395954 newSuffixResult!27) lt!1396210)))

(declare-fun b!3978496 () Bool)

(assert (=> b!3978496 (= e!2465277 newSuffixResult!27)))

(declare-fun b!3978497 () Bool)

(assert (=> b!3978497 (= e!2465277 (Cons!42520 (h!47940 lt!1395954) (++!11110 (t!331155 lt!1395954) newSuffixResult!27)))))

(assert (= (and d!1177791 c!689466) b!3978496))

(assert (= (and d!1177791 (not c!689466)) b!3978497))

(assert (= (and d!1177791 res!1611829) b!3978498))

(assert (= (and b!3978498 res!1611830) b!3978499))

(declare-fun m!4550663 () Bool)

(assert (=> b!3978498 m!4550663))

(assert (=> b!3978498 m!4549727))

(declare-fun m!4550665 () Bool)

(assert (=> b!3978498 m!4550665))

(declare-fun m!4550667 () Bool)

(assert (=> d!1177791 m!4550667))

(assert (=> d!1177791 m!4549755))

(declare-fun m!4550669 () Bool)

(assert (=> d!1177791 m!4550669))

(declare-fun m!4550671 () Bool)

(assert (=> b!3978497 m!4550671))

(assert (=> b!3977880 d!1177791))

(declare-fun d!1177793 () Bool)

(declare-fun res!1611833 () Bool)

(declare-fun e!2465291 () Bool)

(assert (=> d!1177793 (=> (not res!1611833) (not e!2465291))))

(declare-fun rulesValid!2612 (LexerInterface!6297 List!42646) Bool)

(assert (=> d!1177793 (= res!1611833 (rulesValid!2612 thiss!21717 rules!2999))))

(assert (=> d!1177793 (= (rulesInvariant!5640 thiss!21717 rules!2999) e!2465291)))

(declare-fun b!3978509 () Bool)

(declare-datatypes ((List!42647 0))(
  ( (Nil!42523) (Cons!42523 (h!47943 String!48408) (t!331206 List!42647)) )
))
(declare-fun noDuplicateTag!2613 (LexerInterface!6297 List!42646 List!42647) Bool)

(assert (=> b!3978509 (= e!2465291 (noDuplicateTag!2613 thiss!21717 rules!2999 Nil!42523))))

(assert (= (and d!1177793 res!1611833) b!3978509))

(declare-fun m!4550677 () Bool)

(assert (=> d!1177793 m!4550677))

(declare-fun m!4550679 () Bool)

(assert (=> b!3978509 m!4550679))

(assert (=> b!3977881 d!1177793))

(declare-fun d!1177795 () Bool)

(assert (=> d!1177795 (= (isEmpty!25424 rules!2999) ((_ is Nil!42522) rules!2999))))

(assert (=> b!3977860 d!1177795))

(declare-fun d!1177797 () Bool)

(assert (=> d!1177797 (= (inv!56802 (tag!7568 (rule!9708 token!484))) (= (mod (str.len (value!211811 (tag!7568 (rule!9708 token!484)))) 2) 0))))

(assert (=> b!3977861 d!1177797))

(declare-fun d!1177799 () Bool)

(declare-fun res!1611834 () Bool)

(declare-fun e!2465292 () Bool)

(assert (=> d!1177799 (=> (not res!1611834) (not e!2465292))))

(assert (=> d!1177799 (= res!1611834 (semiInverseModEq!2878 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))))))

(assert (=> d!1177799 (= (inv!56805 (transformation!6708 (rule!9708 token!484))) e!2465292)))

(declare-fun b!3978510 () Bool)

(assert (=> b!3978510 (= e!2465292 (equivClasses!2777 (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))))))

(assert (= (and d!1177799 res!1611834) b!3978510))

(assert (=> d!1177799 m!4550627))

(assert (=> b!3978510 m!4550629))

(assert (=> b!3977861 d!1177799))

(declare-fun d!1177801 () Bool)

(declare-fun lt!1396211 () BalanceConc!25432)

(assert (=> d!1177801 (= (list!15780 lt!1396211) (originalCharacters!7308 (_1!24010 (v!39469 lt!1395938))))))

(assert (=> d!1177801 (= lt!1396211 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (value!211812 (_1!24010 (v!39469 lt!1395938)))))))

(assert (=> d!1177801 (= (charsOf!4524 (_1!24010 (v!39469 lt!1395938))) lt!1396211)))

(declare-fun b_lambda!116229 () Bool)

(assert (=> (not b_lambda!116229) (not d!1177801)))

(declare-fun t!331191 () Bool)

(declare-fun tb!239805 () Bool)

(assert (=> (and b!3977864 (= (toChars!9055 (transformation!6708 (rule!9708 token!484))) (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331191) tb!239805))

(declare-fun b!3978511 () Bool)

(declare-fun e!2465293 () Bool)

(declare-fun tp!1212940 () Bool)

(assert (=> b!3978511 (= e!2465293 (and (inv!56807 (c!689366 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (value!211812 (_1!24010 (v!39469 lt!1395938)))))) tp!1212940))))

(declare-fun result!290480 () Bool)

(assert (=> tb!239805 (= result!290480 (and (inv!56808 (dynLambda!18095 (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (value!211812 (_1!24010 (v!39469 lt!1395938))))) e!2465293))))

(assert (= tb!239805 b!3978511))

(declare-fun m!4550681 () Bool)

(assert (=> b!3978511 m!4550681))

(declare-fun m!4550683 () Bool)

(assert (=> tb!239805 m!4550683))

(assert (=> d!1177801 t!331191))

(declare-fun b_and!305819 () Bool)

(assert (= b_and!305811 (and (=> t!331191 result!290480) b_and!305819)))

(declare-fun tb!239807 () Bool)

(declare-fun t!331193 () Bool)

(assert (=> (and b!3977855 (= (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331193) tb!239807))

(declare-fun result!290482 () Bool)

(assert (= result!290482 result!290480))

(assert (=> d!1177801 t!331193))

(declare-fun b_and!305821 () Bool)

(assert (= b_and!305813 (and (=> t!331193 result!290482) b_and!305821)))

(declare-fun m!4550685 () Bool)

(assert (=> d!1177801 m!4550685))

(declare-fun m!4550687 () Bool)

(assert (=> d!1177801 m!4550687))

(assert (=> b!3977882 d!1177801))

(declare-fun d!1177803 () Bool)

(assert (=> d!1177803 (= (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (seqFromList!4947 lt!1395940)) (dynLambda!18097 (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (seqFromList!4947 lt!1395940)))))

(declare-fun b_lambda!116231 () Bool)

(assert (=> (not b_lambda!116231) (not d!1177803)))

(declare-fun tb!239809 () Bool)

(declare-fun t!331195 () Bool)

(assert (=> (and b!3977864 (= (toValue!9196 (transformation!6708 (rule!9708 token!484))) (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331195) tb!239809))

(declare-fun result!290484 () Bool)

(assert (=> tb!239809 (= result!290484 (inv!21 (dynLambda!18097 (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (seqFromList!4947 lt!1395940))))))

(declare-fun m!4550689 () Bool)

(assert (=> tb!239809 m!4550689))

(assert (=> d!1177803 t!331195))

(declare-fun b_and!305823 () Bool)

(assert (= b_and!305791 (and (=> t!331195 result!290484) b_and!305823)))

(declare-fun t!331197 () Bool)

(declare-fun tb!239811 () Bool)

(assert (=> (and b!3977855 (= (toValue!9196 (transformation!6708 (h!47942 rules!2999))) (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331197) tb!239811))

(declare-fun result!290486 () Bool)

(assert (= result!290486 result!290484))

(assert (=> d!1177803 t!331197))

(declare-fun b_and!305825 () Bool)

(assert (= b_and!305793 (and (=> t!331197 result!290486) b_and!305825)))

(assert (=> d!1177803 m!4549589))

(declare-fun m!4550691 () Bool)

(assert (=> d!1177803 m!4550691))

(assert (=> b!3977882 d!1177803))

(declare-fun d!1177805 () Bool)

(declare-fun e!2465295 () Bool)

(assert (=> d!1177805 e!2465295))

(declare-fun res!1611835 () Bool)

(assert (=> d!1177805 (=> (not res!1611835) (not e!2465295))))

(assert (=> d!1177805 (= res!1611835 (semiInverseModEq!2878 (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))))

(declare-fun Unit!61174 () Unit!61170)

(assert (=> d!1177805 (= (lemmaInv!923 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) Unit!61174)))

(declare-fun b!3978512 () Bool)

(assert (=> b!3978512 (= e!2465295 (equivClasses!2777 (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))) (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))))

(assert (= (and d!1177805 res!1611835) b!3978512))

(declare-fun m!4550693 () Bool)

(assert (=> d!1177805 m!4550693))

(declare-fun m!4550695 () Bool)

(assert (=> b!3978512 m!4550695))

(assert (=> b!3977882 d!1177805))

(declare-fun d!1177807 () Bool)

(assert (=> d!1177807 (= (size!31808 (_1!24010 (v!39469 lt!1395938))) (size!31809 (originalCharacters!7308 (_1!24010 (v!39469 lt!1395938)))))))

(declare-fun Unit!61175 () Unit!61170)

(assert (=> d!1177807 (= (lemmaCharactersSize!1303 (_1!24010 (v!39469 lt!1395938))) Unit!61175)))

(declare-fun bs!587849 () Bool)

(assert (= bs!587849 d!1177807))

(declare-fun m!4550697 () Bool)

(assert (=> bs!587849 m!4550697))

(assert (=> b!3977882 d!1177807))

(declare-fun d!1177809 () Bool)

(assert (=> d!1177809 (= (list!15780 (charsOf!4524 (_1!24010 (v!39469 lt!1395938)))) (list!15782 (c!689366 (charsOf!4524 (_1!24010 (v!39469 lt!1395938))))))))

(declare-fun bs!587850 () Bool)

(assert (= bs!587850 d!1177809))

(declare-fun m!4550699 () Bool)

(assert (=> bs!587850 m!4550699))

(assert (=> b!3977882 d!1177809))

(declare-fun b!3978513 () Bool)

(declare-fun e!2465298 () Bool)

(declare-fun e!2465296 () Bool)

(assert (=> b!3978513 (= e!2465298 e!2465296)))

(declare-fun res!1611837 () Bool)

(assert (=> b!3978513 (=> (not res!1611837) (not e!2465296))))

(assert (=> b!3978513 (= res!1611837 (not ((_ is Nil!42520) (++!11110 lt!1395940 newSuffixResult!27))))))

(declare-fun b!3978514 () Bool)

(declare-fun res!1611839 () Bool)

(assert (=> b!3978514 (=> (not res!1611839) (not e!2465296))))

(assert (=> b!3978514 (= res!1611839 (= (head!8472 lt!1395940) (head!8472 (++!11110 lt!1395940 newSuffixResult!27))))))

(declare-fun b!3978515 () Bool)

(assert (=> b!3978515 (= e!2465296 (isPrefix!3795 (tail!6204 lt!1395940) (tail!6204 (++!11110 lt!1395940 newSuffixResult!27))))))

(declare-fun b!3978516 () Bool)

(declare-fun e!2465297 () Bool)

(assert (=> b!3978516 (= e!2465297 (>= (size!31809 (++!11110 lt!1395940 newSuffixResult!27)) (size!31809 lt!1395940)))))

(declare-fun d!1177811 () Bool)

(assert (=> d!1177811 e!2465297))

(declare-fun res!1611838 () Bool)

(assert (=> d!1177811 (=> res!1611838 e!2465297)))

(declare-fun lt!1396212 () Bool)

(assert (=> d!1177811 (= res!1611838 (not lt!1396212))))

(assert (=> d!1177811 (= lt!1396212 e!2465298)))

(declare-fun res!1611836 () Bool)

(assert (=> d!1177811 (=> res!1611836 e!2465298)))

(assert (=> d!1177811 (= res!1611836 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177811 (= (isPrefix!3795 lt!1395940 (++!11110 lt!1395940 newSuffixResult!27)) lt!1396212)))

(assert (= (and d!1177811 (not res!1611836)) b!3978513))

(assert (= (and b!3978513 res!1611837) b!3978514))

(assert (= (and b!3978514 res!1611839) b!3978515))

(assert (= (and d!1177811 (not res!1611838)) b!3978516))

(assert (=> b!3978514 m!4549823))

(assert (=> b!3978514 m!4549583))

(declare-fun m!4550701 () Bool)

(assert (=> b!3978514 m!4550701))

(assert (=> b!3978515 m!4549825))

(assert (=> b!3978515 m!4549583))

(declare-fun m!4550703 () Bool)

(assert (=> b!3978515 m!4550703))

(assert (=> b!3978515 m!4549825))

(assert (=> b!3978515 m!4550703))

(declare-fun m!4550705 () Bool)

(assert (=> b!3978515 m!4550705))

(assert (=> b!3978516 m!4549583))

(declare-fun m!4550707 () Bool)

(assert (=> b!3978516 m!4550707))

(assert (=> b!3978516 m!4549609))

(assert (=> b!3977882 d!1177811))

(declare-fun e!2465300 () Bool)

(declare-fun b!3978520 () Bool)

(declare-fun lt!1396213 () List!42644)

(assert (=> b!3978520 (= e!2465300 (or (not (= (_2!24010 (v!39469 lt!1395938)) Nil!42520)) (= lt!1396213 lt!1395940)))))

(declare-fun b!3978519 () Bool)

(declare-fun res!1611841 () Bool)

(assert (=> b!3978519 (=> (not res!1611841) (not e!2465300))))

(assert (=> b!3978519 (= res!1611841 (= (size!31809 lt!1396213) (+ (size!31809 lt!1395940) (size!31809 (_2!24010 (v!39469 lt!1395938))))))))

(declare-fun d!1177813 () Bool)

(assert (=> d!1177813 e!2465300))

(declare-fun res!1611840 () Bool)

(assert (=> d!1177813 (=> (not res!1611840) (not e!2465300))))

(assert (=> d!1177813 (= res!1611840 (= (content!6446 lt!1396213) ((_ map or) (content!6446 lt!1395940) (content!6446 (_2!24010 (v!39469 lt!1395938))))))))

(declare-fun e!2465299 () List!42644)

(assert (=> d!1177813 (= lt!1396213 e!2465299)))

(declare-fun c!689467 () Bool)

(assert (=> d!1177813 (= c!689467 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177813 (= (++!11110 lt!1395940 (_2!24010 (v!39469 lt!1395938))) lt!1396213)))

(declare-fun b!3978517 () Bool)

(assert (=> b!3978517 (= e!2465299 (_2!24010 (v!39469 lt!1395938)))))

(declare-fun b!3978518 () Bool)

(assert (=> b!3978518 (= e!2465299 (Cons!42520 (h!47940 lt!1395940) (++!11110 (t!331155 lt!1395940) (_2!24010 (v!39469 lt!1395938)))))))

(assert (= (and d!1177813 c!689467) b!3978517))

(assert (= (and d!1177813 (not c!689467)) b!3978518))

(assert (= (and d!1177813 res!1611840) b!3978519))

(assert (= (and b!3978519 res!1611841) b!3978520))

(declare-fun m!4550709 () Bool)

(assert (=> b!3978519 m!4550709))

(assert (=> b!3978519 m!4549609))

(declare-fun m!4550711 () Bool)

(assert (=> b!3978519 m!4550711))

(declare-fun m!4550713 () Bool)

(assert (=> d!1177813 m!4550713))

(declare-fun m!4550715 () Bool)

(assert (=> d!1177813 m!4550715))

(declare-fun m!4550717 () Bool)

(assert (=> d!1177813 m!4550717))

(declare-fun m!4550719 () Bool)

(assert (=> b!3978518 m!4550719))

(assert (=> b!3977882 d!1177813))

(declare-fun d!1177815 () Bool)

(assert (=> d!1177815 (isPrefix!3795 lt!1395940 (++!11110 lt!1395940 (_2!24010 (v!39469 lt!1395938))))))

(declare-fun lt!1396214 () Unit!61170)

(assert (=> d!1177815 (= lt!1396214 (choose!23847 lt!1395940 (_2!24010 (v!39469 lt!1395938))))))

(assert (=> d!1177815 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395940 (_2!24010 (v!39469 lt!1395938))) lt!1396214)))

(declare-fun bs!587851 () Bool)

(assert (= bs!587851 d!1177815))

(assert (=> bs!587851 m!4549595))

(assert (=> bs!587851 m!4549595))

(declare-fun m!4550721 () Bool)

(assert (=> bs!587851 m!4550721))

(declare-fun m!4550723 () Bool)

(assert (=> bs!587851 m!4550723))

(assert (=> b!3977882 d!1177815))

(declare-fun d!1177817 () Bool)

(declare-fun lt!1396215 () Int)

(assert (=> d!1177817 (>= lt!1396215 0)))

(declare-fun e!2465301 () Int)

(assert (=> d!1177817 (= lt!1396215 e!2465301)))

(declare-fun c!689468 () Bool)

(assert (=> d!1177817 (= c!689468 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177817 (= (size!31809 lt!1395940) lt!1396215)))

(declare-fun b!3978521 () Bool)

(assert (=> b!3978521 (= e!2465301 0)))

(declare-fun b!3978522 () Bool)

(assert (=> b!3978522 (= e!2465301 (+ 1 (size!31809 (t!331155 lt!1395940))))))

(assert (= (and d!1177817 c!689468) b!3978521))

(assert (= (and d!1177817 (not c!689468)) b!3978522))

(declare-fun m!4550725 () Bool)

(assert (=> b!3978522 m!4550725))

(assert (=> b!3977882 d!1177817))

(declare-fun b!3978523 () Bool)

(declare-fun e!2465304 () Bool)

(declare-fun e!2465302 () Bool)

(assert (=> b!3978523 (= e!2465304 e!2465302)))

(declare-fun res!1611843 () Bool)

(assert (=> b!3978523 (=> (not res!1611843) (not e!2465302))))

(assert (=> b!3978523 (= res!1611843 (not ((_ is Nil!42520) lt!1395947)))))

(declare-fun b!3978524 () Bool)

(declare-fun res!1611845 () Bool)

(assert (=> b!3978524 (=> (not res!1611845) (not e!2465302))))

(assert (=> b!3978524 (= res!1611845 (= (head!8472 lt!1395940) (head!8472 lt!1395947)))))

(declare-fun b!3978525 () Bool)

(assert (=> b!3978525 (= e!2465302 (isPrefix!3795 (tail!6204 lt!1395940) (tail!6204 lt!1395947)))))

(declare-fun b!3978526 () Bool)

(declare-fun e!2465303 () Bool)

(assert (=> b!3978526 (= e!2465303 (>= (size!31809 lt!1395947) (size!31809 lt!1395940)))))

(declare-fun d!1177819 () Bool)

(assert (=> d!1177819 e!2465303))

(declare-fun res!1611844 () Bool)

(assert (=> d!1177819 (=> res!1611844 e!2465303)))

(declare-fun lt!1396216 () Bool)

(assert (=> d!1177819 (= res!1611844 (not lt!1396216))))

(assert (=> d!1177819 (= lt!1396216 e!2465304)))

(declare-fun res!1611842 () Bool)

(assert (=> d!1177819 (=> res!1611842 e!2465304)))

(assert (=> d!1177819 (= res!1611842 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177819 (= (isPrefix!3795 lt!1395940 lt!1395947) lt!1396216)))

(assert (= (and d!1177819 (not res!1611842)) b!3978523))

(assert (= (and b!3978523 res!1611843) b!3978524))

(assert (= (and b!3978524 res!1611845) b!3978525))

(assert (= (and d!1177819 (not res!1611844)) b!3978526))

(assert (=> b!3978524 m!4549823))

(declare-fun m!4550727 () Bool)

(assert (=> b!3978524 m!4550727))

(assert (=> b!3978525 m!4549825))

(declare-fun m!4550729 () Bool)

(assert (=> b!3978525 m!4550729))

(assert (=> b!3978525 m!4549825))

(assert (=> b!3978525 m!4550729))

(declare-fun m!4550731 () Bool)

(assert (=> b!3978525 m!4550731))

(declare-fun m!4550733 () Bool)

(assert (=> b!3978526 m!4550733))

(assert (=> b!3978526 m!4549609))

(assert (=> b!3977882 d!1177819))

(declare-fun d!1177821 () Bool)

(assert (=> d!1177821 (ruleValid!2640 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))

(declare-fun lt!1396217 () Unit!61170)

(assert (=> d!1177821 (= lt!1396217 (choose!23849 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) rules!2999))))

(assert (=> d!1177821 (contains!8465 rules!2999 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))

(assert (=> d!1177821 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1714 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) rules!2999) lt!1396217)))

(declare-fun bs!587852 () Bool)

(assert (= bs!587852 d!1177821))

(assert (=> bs!587852 m!4549599))

(declare-fun m!4550735 () Bool)

(assert (=> bs!587852 m!4550735))

(declare-fun m!4550737 () Bool)

(assert (=> bs!587852 m!4550737))

(assert (=> b!3977882 d!1177821))

(declare-fun d!1177823 () Bool)

(assert (=> d!1177823 (= (size!31808 token!484) (size!31809 (originalCharacters!7308 token!484)))))

(declare-fun Unit!61179 () Unit!61170)

(assert (=> d!1177823 (= (lemmaCharactersSize!1303 token!484) Unit!61179)))

(declare-fun bs!587853 () Bool)

(assert (= bs!587853 d!1177823))

(assert (=> bs!587853 m!4549687))

(assert (=> b!3977882 d!1177823))

(declare-fun d!1177825 () Bool)

(declare-fun res!1611846 () Bool)

(declare-fun e!2465305 () Bool)

(assert (=> d!1177825 (=> (not res!1611846) (not e!2465305))))

(assert (=> d!1177825 (= res!1611846 (validRegex!5271 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))))

(assert (=> d!1177825 (= (ruleValid!2640 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) e!2465305)))

(declare-fun b!3978527 () Bool)

(declare-fun res!1611847 () Bool)

(assert (=> b!3978527 (=> (not res!1611847) (not e!2465305))))

(assert (=> b!3978527 (= res!1611847 (not (nullable!4071 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))))

(declare-fun b!3978528 () Bool)

(assert (=> b!3978528 (= e!2465305 (not (= (tag!7568 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (String!48409 ""))))))

(assert (= (and d!1177825 res!1611846) b!3978527))

(assert (= (and b!3978527 res!1611847) b!3978528))

(declare-fun m!4550739 () Bool)

(assert (=> d!1177825 m!4550739))

(declare-fun m!4550741 () Bool)

(assert (=> b!3978527 m!4550741))

(assert (=> b!3977882 d!1177825))

(declare-fun d!1177827 () Bool)

(assert (=> d!1177827 (isPrefix!3795 lt!1395940 (++!11110 lt!1395940 newSuffixResult!27))))

(declare-fun lt!1396218 () Unit!61170)

(assert (=> d!1177827 (= lt!1396218 (choose!23847 lt!1395940 newSuffixResult!27))))

(assert (=> d!1177827 (= (lemmaConcatTwoListThenFirstIsPrefix!2638 lt!1395940 newSuffixResult!27) lt!1396218)))

(declare-fun bs!587854 () Bool)

(assert (= bs!587854 d!1177827))

(assert (=> bs!587854 m!4549583))

(assert (=> bs!587854 m!4549583))

(assert (=> bs!587854 m!4549585))

(declare-fun m!4550743 () Bool)

(assert (=> bs!587854 m!4550743))

(assert (=> b!3977882 d!1177827))

(declare-fun b!3978529 () Bool)

(declare-fun e!2465307 () Option!9122)

(declare-fun lt!1396223 () tuple2!41756)

(assert (=> b!3978529 (= e!2465307 (Some!9121 (tuple2!41753 (Token!12555 (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (seqFromList!4947 (_1!24012 lt!1396223))) (rule!9708 (_1!24010 (v!39469 lt!1395938))) (size!31811 (seqFromList!4947 (_1!24012 lt!1396223))) (_1!24012 lt!1396223)) (_2!24012 lt!1396223))))))

(declare-fun lt!1396219 () Unit!61170)

(assert (=> b!3978529 (= lt!1396219 (longestMatchIsAcceptedByMatchOrIsEmpty!1289 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) lt!1395970))))

(declare-fun res!1611848 () Bool)

(assert (=> b!3978529 (= res!1611848 (isEmpty!25427 (_1!24012 (findLongestMatchInner!1316 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) Nil!42520 (size!31809 Nil!42520) lt!1395970 lt!1395970 (size!31809 lt!1395970)))))))

(declare-fun e!2465308 () Bool)

(assert (=> b!3978529 (=> res!1611848 e!2465308)))

(assert (=> b!3978529 e!2465308))

(declare-fun lt!1396222 () Unit!61170)

(assert (=> b!3978529 (= lt!1396222 lt!1396219)))

(declare-fun lt!1396221 () Unit!61170)

(assert (=> b!3978529 (= lt!1396221 (lemmaSemiInverse!1828 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (seqFromList!4947 (_1!24012 lt!1396223))))))

(declare-fun b!3978530 () Bool)

(declare-fun res!1611853 () Bool)

(declare-fun e!2465309 () Bool)

(assert (=> b!3978530 (=> (not res!1611853) (not e!2465309))))

(declare-fun lt!1396220 () Option!9122)

(assert (=> b!3978530 (= res!1611853 (= (++!11110 (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396220)))) (_2!24010 (get!14002 lt!1396220))) lt!1395970))))

(declare-fun b!3978531 () Bool)

(assert (=> b!3978531 (= e!2465308 (matchR!5590 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (_1!24012 (findLongestMatchInner!1316 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) Nil!42520 (size!31809 Nil!42520) lt!1395970 lt!1395970 (size!31809 lt!1395970)))))))

(declare-fun b!3978532 () Bool)

(declare-fun e!2465306 () Bool)

(assert (=> b!3978532 (= e!2465306 e!2465309)))

(declare-fun res!1611852 () Bool)

(assert (=> b!3978532 (=> (not res!1611852) (not e!2465309))))

(assert (=> b!3978532 (= res!1611852 (matchR!5590 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (list!15780 (charsOf!4524 (_1!24010 (get!14002 lt!1396220))))))))

(declare-fun b!3978533 () Bool)

(assert (=> b!3978533 (= e!2465309 (= (size!31808 (_1!24010 (get!14002 lt!1396220))) (size!31809 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396220))))))))

(declare-fun b!3978535 () Bool)

(declare-fun res!1611854 () Bool)

(assert (=> b!3978535 (=> (not res!1611854) (not e!2465309))))

(assert (=> b!3978535 (= res!1611854 (= (rule!9708 (_1!24010 (get!14002 lt!1396220))) (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))

(declare-fun b!3978536 () Bool)

(assert (=> b!3978536 (= e!2465307 None!9121)))

(declare-fun b!3978537 () Bool)

(declare-fun res!1611851 () Bool)

(assert (=> b!3978537 (=> (not res!1611851) (not e!2465309))))

(assert (=> b!3978537 (= res!1611851 (< (size!31809 (_2!24010 (get!14002 lt!1396220))) (size!31809 lt!1395970)))))

(declare-fun d!1177829 () Bool)

(assert (=> d!1177829 e!2465306))

(declare-fun res!1611850 () Bool)

(assert (=> d!1177829 (=> res!1611850 e!2465306)))

(assert (=> d!1177829 (= res!1611850 (isEmpty!25428 lt!1396220))))

(assert (=> d!1177829 (= lt!1396220 e!2465307)))

(declare-fun c!689469 () Bool)

(assert (=> d!1177829 (= c!689469 (isEmpty!25427 (_1!24012 lt!1396223)))))

(assert (=> d!1177829 (= lt!1396223 (findLongestMatch!1229 (regex!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) lt!1395970))))

(assert (=> d!1177829 (ruleValid!2640 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))))))

(assert (=> d!1177829 (= (maxPrefixOneRule!2629 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) lt!1395970) lt!1396220)))

(declare-fun b!3978534 () Bool)

(declare-fun res!1611849 () Bool)

(assert (=> b!3978534 (=> (not res!1611849) (not e!2465309))))

(assert (=> b!3978534 (= res!1611849 (= (value!211812 (_1!24010 (get!14002 lt!1396220))) (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (get!14002 lt!1396220)))) (seqFromList!4947 (originalCharacters!7308 (_1!24010 (get!14002 lt!1396220)))))))))

(assert (= (and d!1177829 c!689469) b!3978536))

(assert (= (and d!1177829 (not c!689469)) b!3978529))

(assert (= (and b!3978529 (not res!1611848)) b!3978531))

(assert (= (and d!1177829 (not res!1611850)) b!3978532))

(assert (= (and b!3978532 res!1611852) b!3978530))

(assert (= (and b!3978530 res!1611853) b!3978537))

(assert (= (and b!3978537 res!1611851) b!3978535))

(assert (= (and b!3978535 res!1611854) b!3978534))

(assert (= (and b!3978534 res!1611849) b!3978533))

(declare-fun m!4550745 () Bool)

(assert (=> b!3978530 m!4550745))

(declare-fun m!4550747 () Bool)

(assert (=> b!3978530 m!4550747))

(assert (=> b!3978530 m!4550747))

(declare-fun m!4550749 () Bool)

(assert (=> b!3978530 m!4550749))

(assert (=> b!3978530 m!4550749))

(declare-fun m!4550751 () Bool)

(assert (=> b!3978530 m!4550751))

(declare-fun m!4550753 () Bool)

(assert (=> b!3978529 m!4550753))

(declare-fun m!4550755 () Bool)

(assert (=> b!3978529 m!4550755))

(declare-fun m!4550757 () Bool)

(assert (=> b!3978529 m!4550757))

(assert (=> b!3978529 m!4550755))

(declare-fun m!4550759 () Bool)

(assert (=> b!3978529 m!4550759))

(assert (=> b!3978529 m!4550755))

(assert (=> b!3978529 m!4549651))

(assert (=> b!3978529 m!4550755))

(declare-fun m!4550761 () Bool)

(assert (=> b!3978529 m!4550761))

(assert (=> b!3978529 m!4550365))

(assert (=> b!3978529 m!4549651))

(declare-fun m!4550763 () Bool)

(assert (=> b!3978529 m!4550763))

(declare-fun m!4550765 () Bool)

(assert (=> b!3978529 m!4550765))

(assert (=> b!3978529 m!4550365))

(declare-fun m!4550767 () Bool)

(assert (=> d!1177829 m!4550767))

(declare-fun m!4550769 () Bool)

(assert (=> d!1177829 m!4550769))

(declare-fun m!4550771 () Bool)

(assert (=> d!1177829 m!4550771))

(assert (=> d!1177829 m!4549599))

(assert (=> b!3978535 m!4550745))

(assert (=> b!3978537 m!4550745))

(declare-fun m!4550773 () Bool)

(assert (=> b!3978537 m!4550773))

(assert (=> b!3978537 m!4549651))

(assert (=> b!3978532 m!4550745))

(assert (=> b!3978532 m!4550747))

(assert (=> b!3978532 m!4550747))

(assert (=> b!3978532 m!4550749))

(assert (=> b!3978532 m!4550749))

(declare-fun m!4550775 () Bool)

(assert (=> b!3978532 m!4550775))

(assert (=> b!3978531 m!4550365))

(assert (=> b!3978531 m!4549651))

(assert (=> b!3978531 m!4550365))

(assert (=> b!3978531 m!4549651))

(assert (=> b!3978531 m!4550763))

(declare-fun m!4550777 () Bool)

(assert (=> b!3978531 m!4550777))

(assert (=> b!3978533 m!4550745))

(declare-fun m!4550779 () Bool)

(assert (=> b!3978533 m!4550779))

(assert (=> b!3978534 m!4550745))

(declare-fun m!4550781 () Bool)

(assert (=> b!3978534 m!4550781))

(assert (=> b!3978534 m!4550781))

(declare-fun m!4550783 () Bool)

(assert (=> b!3978534 m!4550783))

(assert (=> b!3977882 d!1177829))

(declare-fun d!1177831 () Bool)

(assert (=> d!1177831 (= (seqFromList!4947 lt!1395940) (fromListB!2274 lt!1395940))))

(declare-fun bs!587855 () Bool)

(assert (= bs!587855 d!1177831))

(declare-fun m!4550785 () Bool)

(assert (=> bs!587855 m!4550785))

(assert (=> b!3977882 d!1177831))

(declare-fun e!2465311 () Bool)

(declare-fun lt!1396224 () List!42644)

(declare-fun b!3978541 () Bool)

(assert (=> b!3978541 (= e!2465311 (or (not (= newSuffixResult!27 Nil!42520)) (= lt!1396224 lt!1395940)))))

(declare-fun b!3978540 () Bool)

(declare-fun res!1611856 () Bool)

(assert (=> b!3978540 (=> (not res!1611856) (not e!2465311))))

(assert (=> b!3978540 (= res!1611856 (= (size!31809 lt!1396224) (+ (size!31809 lt!1395940) (size!31809 newSuffixResult!27))))))

(declare-fun d!1177833 () Bool)

(assert (=> d!1177833 e!2465311))

(declare-fun res!1611855 () Bool)

(assert (=> d!1177833 (=> (not res!1611855) (not e!2465311))))

(assert (=> d!1177833 (= res!1611855 (= (content!6446 lt!1396224) ((_ map or) (content!6446 lt!1395940) (content!6446 newSuffixResult!27))))))

(declare-fun e!2465310 () List!42644)

(assert (=> d!1177833 (= lt!1396224 e!2465310)))

(declare-fun c!689470 () Bool)

(assert (=> d!1177833 (= c!689470 ((_ is Nil!42520) lt!1395940))))

(assert (=> d!1177833 (= (++!11110 lt!1395940 newSuffixResult!27) lt!1396224)))

(declare-fun b!3978538 () Bool)

(assert (=> b!3978538 (= e!2465310 newSuffixResult!27)))

(declare-fun b!3978539 () Bool)

(assert (=> b!3978539 (= e!2465310 (Cons!42520 (h!47940 lt!1395940) (++!11110 (t!331155 lt!1395940) newSuffixResult!27)))))

(assert (= (and d!1177833 c!689470) b!3978538))

(assert (= (and d!1177833 (not c!689470)) b!3978539))

(assert (= (and d!1177833 res!1611855) b!3978540))

(assert (= (and b!3978540 res!1611856) b!3978541))

(declare-fun m!4550787 () Bool)

(assert (=> b!3978540 m!4550787))

(assert (=> b!3978540 m!4549609))

(assert (=> b!3978540 m!4550665))

(declare-fun m!4550789 () Bool)

(assert (=> d!1177833 m!4550789))

(assert (=> d!1177833 m!4550715))

(assert (=> d!1177833 m!4550669))

(declare-fun m!4550791 () Bool)

(assert (=> b!3978539 m!4550791))

(assert (=> b!3977882 d!1177833))

(declare-fun d!1177835 () Bool)

(assert (=> d!1177835 (= (maxPrefixOneRule!2629 thiss!21717 (rule!9708 (_1!24010 (v!39469 lt!1395938))) lt!1395970) (Some!9121 (tuple2!41753 (Token!12555 (apply!9919 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))) (seqFromList!4947 lt!1395940)) (rule!9708 (_1!24010 (v!39469 lt!1395938))) (size!31809 lt!1395940) lt!1395940) (_2!24010 (v!39469 lt!1395938)))))))

(declare-fun lt!1396225 () Unit!61170)

(assert (=> d!1177835 (= lt!1396225 (choose!23846 thiss!21717 rules!2999 lt!1395940 lt!1395970 (_2!24010 (v!39469 lt!1395938)) (rule!9708 (_1!24010 (v!39469 lt!1395938)))))))

(assert (=> d!1177835 (not (isEmpty!25424 rules!2999))))

(assert (=> d!1177835 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1451 thiss!21717 rules!2999 lt!1395940 lt!1395970 (_2!24010 (v!39469 lt!1395938)) (rule!9708 (_1!24010 (v!39469 lt!1395938)))) lt!1396225)))

(declare-fun bs!587856 () Bool)

(assert (= bs!587856 d!1177835))

(assert (=> bs!587856 m!4549649))

(assert (=> bs!587856 m!4549609))

(assert (=> bs!587856 m!4549589))

(assert (=> bs!587856 m!4549589))

(assert (=> bs!587856 m!4549613))

(declare-fun m!4550793 () Bool)

(assert (=> bs!587856 m!4550793))

(assert (=> bs!587856 m!4549587))

(assert (=> b!3977882 d!1177835))

(declare-fun d!1177837 () Bool)

(declare-fun lt!1396226 () Int)

(assert (=> d!1177837 (>= lt!1396226 0)))

(declare-fun e!2465312 () Int)

(assert (=> d!1177837 (= lt!1396226 e!2465312)))

(declare-fun c!689471 () Bool)

(assert (=> d!1177837 (= c!689471 ((_ is Nil!42520) lt!1395970))))

(assert (=> d!1177837 (= (size!31809 lt!1395970) lt!1396226)))

(declare-fun b!3978542 () Bool)

(assert (=> b!3978542 (= e!2465312 0)))

(declare-fun b!3978543 () Bool)

(assert (=> b!3978543 (= e!2465312 (+ 1 (size!31809 (t!331155 lt!1395970))))))

(assert (= (and d!1177837 c!689471) b!3978542))

(assert (= (and d!1177837 (not c!689471)) b!3978543))

(declare-fun m!4550795 () Bool)

(assert (=> b!3978543 m!4550795))

(assert (=> b!3977862 d!1177837))

(declare-fun b!3978544 () Bool)

(declare-fun e!2465315 () Bool)

(declare-fun e!2465313 () Bool)

(assert (=> b!3978544 (= e!2465315 e!2465313)))

(declare-fun res!1611858 () Bool)

(assert (=> b!3978544 (=> (not res!1611858) (not e!2465313))))

(assert (=> b!3978544 (= res!1611858 (not ((_ is Nil!42520) suffix!1299)))))

(declare-fun b!3978545 () Bool)

(declare-fun res!1611860 () Bool)

(assert (=> b!3978545 (=> (not res!1611860) (not e!2465313))))

(assert (=> b!3978545 (= res!1611860 (= (head!8472 newSuffix!27) (head!8472 suffix!1299)))))

(declare-fun b!3978546 () Bool)

(assert (=> b!3978546 (= e!2465313 (isPrefix!3795 (tail!6204 newSuffix!27) (tail!6204 suffix!1299)))))

(declare-fun b!3978547 () Bool)

(declare-fun e!2465314 () Bool)

(assert (=> b!3978547 (= e!2465314 (>= (size!31809 suffix!1299) (size!31809 newSuffix!27)))))

(declare-fun d!1177839 () Bool)

(assert (=> d!1177839 e!2465314))

(declare-fun res!1611859 () Bool)

(assert (=> d!1177839 (=> res!1611859 e!2465314)))

(declare-fun lt!1396227 () Bool)

(assert (=> d!1177839 (= res!1611859 (not lt!1396227))))

(assert (=> d!1177839 (= lt!1396227 e!2465315)))

(declare-fun res!1611857 () Bool)

(assert (=> d!1177839 (=> res!1611857 e!2465315)))

(assert (=> d!1177839 (= res!1611857 ((_ is Nil!42520) newSuffix!27))))

(assert (=> d!1177839 (= (isPrefix!3795 newSuffix!27 suffix!1299) lt!1396227)))

(assert (= (and d!1177839 (not res!1611857)) b!3978544))

(assert (= (and b!3978544 res!1611858) b!3978545))

(assert (= (and b!3978545 res!1611860) b!3978546))

(assert (= (and d!1177839 (not res!1611859)) b!3978547))

(declare-fun m!4550797 () Bool)

(assert (=> b!3978545 m!4550797))

(declare-fun m!4550799 () Bool)

(assert (=> b!3978545 m!4550799))

(declare-fun m!4550801 () Bool)

(assert (=> b!3978546 m!4550801))

(declare-fun m!4550803 () Bool)

(assert (=> b!3978546 m!4550803))

(assert (=> b!3978546 m!4550801))

(assert (=> b!3978546 m!4550803))

(declare-fun m!4550805 () Bool)

(assert (=> b!3978546 m!4550805))

(assert (=> b!3978547 m!4549689))

(assert (=> b!3978547 m!4549691))

(assert (=> b!3977884 d!1177839))

(declare-fun b!3978551 () Bool)

(declare-fun lt!1396228 () List!42644)

(declare-fun e!2465317 () Bool)

(assert (=> b!3978551 (= e!2465317 (or (not (= lt!1395974 Nil!42520)) (= lt!1396228 newSuffix!27)))))

(declare-fun b!3978550 () Bool)

(declare-fun res!1611862 () Bool)

(assert (=> b!3978550 (=> (not res!1611862) (not e!2465317))))

(assert (=> b!3978550 (= res!1611862 (= (size!31809 lt!1396228) (+ (size!31809 newSuffix!27) (size!31809 lt!1395974))))))

(declare-fun d!1177841 () Bool)

(assert (=> d!1177841 e!2465317))

(declare-fun res!1611861 () Bool)

(assert (=> d!1177841 (=> (not res!1611861) (not e!2465317))))

(assert (=> d!1177841 (= res!1611861 (= (content!6446 lt!1396228) ((_ map or) (content!6446 newSuffix!27) (content!6446 lt!1395974))))))

(declare-fun e!2465316 () List!42644)

(assert (=> d!1177841 (= lt!1396228 e!2465316)))

(declare-fun c!689472 () Bool)

(assert (=> d!1177841 (= c!689472 ((_ is Nil!42520) newSuffix!27))))

(assert (=> d!1177841 (= (++!11110 newSuffix!27 lt!1395974) lt!1396228)))

(declare-fun b!3978548 () Bool)

(assert (=> b!3978548 (= e!2465316 lt!1395974)))

(declare-fun b!3978549 () Bool)

(assert (=> b!3978549 (= e!2465316 (Cons!42520 (h!47940 newSuffix!27) (++!11110 (t!331155 newSuffix!27) lt!1395974)))))

(assert (= (and d!1177841 c!689472) b!3978548))

(assert (= (and d!1177841 (not c!689472)) b!3978549))

(assert (= (and d!1177841 res!1611861) b!3978550))

(assert (= (and b!3978550 res!1611862) b!3978551))

(declare-fun m!4550807 () Bool)

(assert (=> b!3978550 m!4550807))

(assert (=> b!3978550 m!4549691))

(assert (=> b!3978550 m!4550495))

(declare-fun m!4550809 () Bool)

(assert (=> d!1177841 m!4550809))

(assert (=> d!1177841 m!4550659))

(assert (=> d!1177841 m!4550501))

(declare-fun m!4550811 () Bool)

(assert (=> b!3978549 m!4550811))

(assert (=> b!3977885 d!1177841))

(declare-fun d!1177843 () Bool)

(declare-fun lt!1396229 () List!42644)

(assert (=> d!1177843 (= (++!11110 newSuffix!27 lt!1396229) suffix!1299)))

(declare-fun e!2465318 () List!42644)

(assert (=> d!1177843 (= lt!1396229 e!2465318)))

(declare-fun c!689473 () Bool)

(assert (=> d!1177843 (= c!689473 ((_ is Cons!42520) newSuffix!27))))

(assert (=> d!1177843 (>= (size!31809 suffix!1299) (size!31809 newSuffix!27))))

(assert (=> d!1177843 (= (getSuffix!2226 suffix!1299 newSuffix!27) lt!1396229)))

(declare-fun b!3978552 () Bool)

(assert (=> b!3978552 (= e!2465318 (getSuffix!2226 (tail!6204 suffix!1299) (t!331155 newSuffix!27)))))

(declare-fun b!3978553 () Bool)

(assert (=> b!3978553 (= e!2465318 suffix!1299)))

(assert (= (and d!1177843 c!689473) b!3978552))

(assert (= (and d!1177843 (not c!689473)) b!3978553))

(declare-fun m!4550813 () Bool)

(assert (=> d!1177843 m!4550813))

(assert (=> d!1177843 m!4549689))

(assert (=> d!1177843 m!4549691))

(assert (=> b!3978552 m!4550803))

(assert (=> b!3978552 m!4550803))

(declare-fun m!4550815 () Bool)

(assert (=> b!3978552 m!4550815))

(assert (=> b!3977885 d!1177843))

(declare-fun b!3978558 () Bool)

(declare-fun e!2465321 () Bool)

(declare-fun tp!1212943 () Bool)

(assert (=> b!3978558 (= e!2465321 (and tp_is_empty!20197 tp!1212943))))

(assert (=> b!3977854 (= tp!1212888 e!2465321)))

(assert (= (and b!3977854 ((_ is Cons!42520) (originalCharacters!7308 token!484))) b!3978558))

(declare-fun b!3978559 () Bool)

(declare-fun e!2465322 () Bool)

(declare-fun tp!1212944 () Bool)

(assert (=> b!3978559 (= e!2465322 (and tp_is_empty!20197 tp!1212944))))

(assert (=> b!3977876 (= tp!1212884 e!2465322)))

(assert (= (and b!3977876 ((_ is Cons!42520) (t!331155 prefix!494))) b!3978559))

(declare-fun b!3978572 () Bool)

(declare-fun e!2465325 () Bool)

(declare-fun tp!1212955 () Bool)

(assert (=> b!3978572 (= e!2465325 tp!1212955)))

(declare-fun b!3978573 () Bool)

(declare-fun tp!1212959 () Bool)

(declare-fun tp!1212957 () Bool)

(assert (=> b!3978573 (= e!2465325 (and tp!1212959 tp!1212957))))

(assert (=> b!3977861 (= tp!1212880 e!2465325)))

(declare-fun b!3978571 () Bool)

(declare-fun tp!1212958 () Bool)

(declare-fun tp!1212956 () Bool)

(assert (=> b!3978571 (= e!2465325 (and tp!1212958 tp!1212956))))

(declare-fun b!3978570 () Bool)

(assert (=> b!3978570 (= e!2465325 tp_is_empty!20197)))

(assert (= (and b!3977861 ((_ is ElementMatch!11613) (regex!6708 (rule!9708 token!484)))) b!3978570))

(assert (= (and b!3977861 ((_ is Concat!18552) (regex!6708 (rule!9708 token!484)))) b!3978571))

(assert (= (and b!3977861 ((_ is Star!11613) (regex!6708 (rule!9708 token!484)))) b!3978572))

(assert (= (and b!3977861 ((_ is Union!11613) (regex!6708 (rule!9708 token!484)))) b!3978573))

(declare-fun b!3978576 () Bool)

(declare-fun e!2465326 () Bool)

(declare-fun tp!1212960 () Bool)

(assert (=> b!3978576 (= e!2465326 tp!1212960)))

(declare-fun b!3978577 () Bool)

(declare-fun tp!1212964 () Bool)

(declare-fun tp!1212962 () Bool)

(assert (=> b!3978577 (= e!2465326 (and tp!1212964 tp!1212962))))

(assert (=> b!3977866 (= tp!1212881 e!2465326)))

(declare-fun b!3978575 () Bool)

(declare-fun tp!1212963 () Bool)

(declare-fun tp!1212961 () Bool)

(assert (=> b!3978575 (= e!2465326 (and tp!1212963 tp!1212961))))

(declare-fun b!3978574 () Bool)

(assert (=> b!3978574 (= e!2465326 tp_is_empty!20197)))

(assert (= (and b!3977866 ((_ is ElementMatch!11613) (regex!6708 (h!47942 rules!2999)))) b!3978574))

(assert (= (and b!3977866 ((_ is Concat!18552) (regex!6708 (h!47942 rules!2999)))) b!3978575))

(assert (= (and b!3977866 ((_ is Star!11613) (regex!6708 (h!47942 rules!2999)))) b!3978576))

(assert (= (and b!3977866 ((_ is Union!11613) (regex!6708 (h!47942 rules!2999)))) b!3978577))

(declare-fun b!3978578 () Bool)

(declare-fun e!2465327 () Bool)

(declare-fun tp!1212965 () Bool)

(assert (=> b!3978578 (= e!2465327 (and tp_is_empty!20197 tp!1212965))))

(assert (=> b!3977883 (= tp!1212890 e!2465327)))

(assert (= (and b!3977883 ((_ is Cons!42520) (t!331155 newSuffix!27))) b!3978578))

(declare-fun b!3978589 () Bool)

(declare-fun b_free!110397 () Bool)

(declare-fun b_next!111101 () Bool)

(assert (=> b!3978589 (= b_free!110397 (not b_next!111101))))

(declare-fun t!331199 () Bool)

(declare-fun tb!239813 () Bool)

(assert (=> (and b!3978589 (= (toValue!9196 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toValue!9196 (transformation!6708 (rule!9708 token!484)))) t!331199) tb!239813))

(declare-fun result!290494 () Bool)

(assert (= result!290494 result!290446))

(assert (=> d!1177589 t!331199))

(declare-fun t!331201 () Bool)

(declare-fun tb!239815 () Bool)

(assert (=> (and b!3978589 (= (toValue!9196 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toValue!9196 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331201) tb!239815))

(declare-fun result!290496 () Bool)

(assert (= result!290496 result!290484))

(assert (=> d!1177803 t!331201))

(declare-fun tp!1212974 () Bool)

(declare-fun b_and!305827 () Bool)

(assert (=> b!3978589 (= tp!1212974 (and (=> t!331199 result!290494) (=> t!331201 result!290496) b_and!305827))))

(declare-fun b_free!110399 () Bool)

(declare-fun b_next!111103 () Bool)

(assert (=> b!3978589 (= b_free!110399 (not b_next!111103))))

(declare-fun tb!239817 () Bool)

(declare-fun t!331203 () Bool)

(assert (=> (and b!3978589 (= (toChars!9055 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toChars!9055 (transformation!6708 (rule!9708 token!484)))) t!331203) tb!239817))

(declare-fun result!290498 () Bool)

(assert (= result!290498 result!290434))

(assert (=> b!3977934 t!331203))

(assert (=> d!1177745 t!331203))

(declare-fun t!331205 () Bool)

(declare-fun tb!239819 () Bool)

(assert (=> (and b!3978589 (= (toChars!9055 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toChars!9055 (transformation!6708 (rule!9708 (_1!24010 (v!39469 lt!1395938)))))) t!331205) tb!239819))

(declare-fun result!290500 () Bool)

(assert (= result!290500 result!290480))

(assert (=> d!1177801 t!331205))

(declare-fun tp!1212976 () Bool)

(declare-fun b_and!305829 () Bool)

(assert (=> b!3978589 (= tp!1212976 (and (=> t!331203 result!290498) (=> t!331205 result!290500) b_and!305829))))

(declare-fun e!2465339 () Bool)

(assert (=> b!3978589 (= e!2465339 (and tp!1212974 tp!1212976))))

(declare-fun tp!1212975 () Bool)

(declare-fun b!3978588 () Bool)

(declare-fun e!2465338 () Bool)

(assert (=> b!3978588 (= e!2465338 (and tp!1212975 (inv!56802 (tag!7568 (h!47942 (t!331157 rules!2999)))) (inv!56805 (transformation!6708 (h!47942 (t!331157 rules!2999)))) e!2465339))))

(declare-fun b!3978587 () Bool)

(declare-fun e!2465336 () Bool)

(declare-fun tp!1212977 () Bool)

(assert (=> b!3978587 (= e!2465336 (and e!2465338 tp!1212977))))

(assert (=> b!3977867 (= tp!1212892 e!2465336)))

(assert (= b!3978588 b!3978589))

(assert (= b!3978587 b!3978588))

(assert (= (and b!3977867 ((_ is Cons!42522) (t!331157 rules!2999))) b!3978587))

(declare-fun m!4550817 () Bool)

(assert (=> b!3978588 m!4550817))

(declare-fun m!4550819 () Bool)

(assert (=> b!3978588 m!4550819))

(declare-fun b!3978590 () Bool)

(declare-fun e!2465340 () Bool)

(declare-fun tp!1212978 () Bool)

(assert (=> b!3978590 (= e!2465340 (and tp_is_empty!20197 tp!1212978))))

(assert (=> b!3977863 (= tp!1212887 e!2465340)))

(assert (= (and b!3977863 ((_ is Cons!42520) (t!331155 suffix!1299))) b!3978590))

(declare-fun b!3978591 () Bool)

(declare-fun e!2465341 () Bool)

(declare-fun tp!1212979 () Bool)

(assert (=> b!3978591 (= e!2465341 (and tp_is_empty!20197 tp!1212979))))

(assert (=> b!3977853 (= tp!1212891 e!2465341)))

(assert (= (and b!3977853 ((_ is Cons!42520) (t!331155 suffixResult!105))) b!3978591))

(declare-fun b!3978592 () Bool)

(declare-fun e!2465342 () Bool)

(declare-fun tp!1212980 () Bool)

(assert (=> b!3978592 (= e!2465342 (and tp_is_empty!20197 tp!1212980))))

(assert (=> b!3977858 (= tp!1212886 e!2465342)))

(assert (= (and b!3977858 ((_ is Cons!42520) (t!331155 newSuffixResult!27))) b!3978592))

(declare-fun b_lambda!116233 () Bool)

(assert (= b_lambda!116211 (or (and b!3977864 b_free!110385) (and b!3977855 b_free!110389 (= (toValue!9196 (transformation!6708 (h!47942 rules!2999))) (toValue!9196 (transformation!6708 (rule!9708 token!484))))) (and b!3978589 b_free!110397 (= (toValue!9196 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toValue!9196 (transformation!6708 (rule!9708 token!484))))) b_lambda!116233)))

(declare-fun b_lambda!116235 () Bool)

(assert (= b_lambda!116221 (or (and b!3977864 b_free!110387) (and b!3977855 b_free!110391 (= (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toChars!9055 (transformation!6708 (rule!9708 token!484))))) (and b!3978589 b_free!110399 (= (toChars!9055 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toChars!9055 (transformation!6708 (rule!9708 token!484))))) b_lambda!116235)))

(declare-fun b_lambda!116237 () Bool)

(assert (= b_lambda!116207 (or (and b!3977864 b_free!110387) (and b!3977855 b_free!110391 (= (toChars!9055 (transformation!6708 (h!47942 rules!2999))) (toChars!9055 (transformation!6708 (rule!9708 token!484))))) (and b!3978589 b_free!110399 (= (toChars!9055 (transformation!6708 (h!47942 (t!331157 rules!2999)))) (toChars!9055 (transformation!6708 (rule!9708 token!484))))) b_lambda!116237)))

(check-sat (not b!3977979) (not b!3978074) (not b!3978094) (not b!3978345) tp_is_empty!20197 (not b!3977999) (not d!1177713) (not d!1177583) (not d!1177611) (not b!3978488) (not b!3978522) (not b!3978077) (not b_next!111089) (not b!3978518) b_and!305819 (not b!3978487) (not b!3978338) (not b!3978335) (not b_lambda!116231) (not b!3978342) (not b!3978010) (not b!3978002) (not d!1177791) (not d!1177717) (not b!3978373) (not b!3978384) (not d!1177553) (not d!1177825) (not b!3978588) b_and!305821 (not b!3978591) (not b!3978575) (not b!3978362) (not d!1177801) (not d!1177541) (not b!3978112) (not b!3978336) (not d!1177703) (not d!1177543) (not b!3978078) (not d!1177829) (not b!3978117) (not b!3978083) (not b!3978550) (not b_lambda!116229) (not b!3978346) (not b!3977978) (not b!3977940) (not b!3978519) (not d!1177835) (not d!1177577) (not d!1177735) (not b!3978000) (not b!3978381) (not b!3978425) (not d!1177761) (not b!3977987) (not b!3978364) (not d!1177707) (not b!3978526) (not tb!239809) (not b!3978572) (not b!3977990) (not b!3978443) (not b!3978093) (not b_next!111093) (not b!3978007) (not b!3978514) (not b!3978378) (not d!1177799) (not b!3977980) (not b!3977991) (not d!1177555) (not b!3978533) (not b!3977927) (not b!3978498) (not b!3978397) (not b!3978527) (not b!3978072) (not b!3978080) (not b!3978367) (not b!3978401) (not b!3978344) (not b!3978577) (not b!3978407) (not d!1177831) (not b!3978398) (not d!1177621) (not d!1177557) (not b!3978089) (not b!3978383) (not b!3978546) (not b!3977982) (not b!3978109) (not b!3978340) (not b!3978525) (not d!1177533) (not tb!239781) (not b!3977904) (not b!3978592) (not d!1177579) (not b!3978405) (not b!3978549) (not b_next!111091) (not b!3978456) (not b!3978537) (not b!3978552) (not b!3977924) (not b!3977894) (not d!1177595) (not d!1177787) (not d!1177809) (not b!3978559) (not bm!285682) (not b!3978509) (not d!1177731) (not b!3978543) (not d!1177517) (not b!3978079) (not b!3978082) (not b!3978530) (not b_lambda!116235) (not b!3978545) (not d!1177815) (not b!3977929) (not b!3977911) (not b!3978515) (not d!1177551) (not tb!239805) (not d!1177591) (not b!3978076) (not d!1177821) (not d!1177805) (not b!3978558) (not d!1177733) (not b!3978578) (not b!3978534) (not b!3977995) (not b!3977922) (not d!1177527) (not b_lambda!116237) (not b!3978590) (not b!3978573) (not b!3977996) (not b!3978516) (not b!3978540) (not b!3978529) (not b!3978366) (not d!1177789) (not d!1177813) (not b!3977923) (not b!3978337) (not b!3978116) (not b!3977905) (not b!3978576) (not d!1177807) (not b!3978424) (not b!3978334) (not b!3978510) (not b!3977998) (not b!3978379) (not b!3978587) (not b!3977992) (not d!1177765) (not b!3978511) (not b!3978535) (not b!3978547) b_and!305823 (not b!3978380) (not b!3978087) (not d!1177549) (not b!3978532) (not b_next!111095) (not b!3978531) (not bm!285685) (not b!3978497) (not b!3978512) (not b!3978374) b_and!305829 (not b!3977994) (not b!3977935) (not b!3978011) (not b_next!111103) (not b!3978006) (not b!3978086) (not b!3978092) (not bm!285692) (not d!1177559) (not b!3978363) (not d!1177827) (not b_next!111101) (not b_lambda!116233) (not d!1177843) (not d!1177823) (not b!3978571) (not b!3978115) (not b!3977934) (not b!3978377) (not b!3978375) (not d!1177519) (not b!3978539) (not d!1177745) (not d!1177777) b_and!305825 (not d!1177575) (not d!1177593) (not b!3978339) b_and!305827 (not d!1177841) (not b!3977976) (not b!3978368) (not b!3978524) (not b!3978003) (not d!1177741) (not b!3978402) (not tb!239773) (not b!3978385) (not b!3978111) (not d!1177793) (not d!1177729) (not d!1177833) (not b!3978073) (not d!1177523) (not b!3977892) (not d!1177531))
(check-sat b_and!305821 (not b_next!111093) (not b_next!111091) (not b_next!111101) b_and!305819 (not b_next!111089) b_and!305823 (not b_next!111095) (not b_next!111103) b_and!305829 b_and!305825 b_and!305827)
