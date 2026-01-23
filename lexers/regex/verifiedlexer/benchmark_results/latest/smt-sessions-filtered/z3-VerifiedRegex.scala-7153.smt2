; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379620 () Bool)

(assert start!379620)

(declare-fun b!4029195 () Bool)

(declare-fun b_free!112217 () Bool)

(declare-fun b_next!112921 () Bool)

(assert (=> b!4029195 (= b_free!112217 (not b_next!112921))))

(declare-fun tp!1224531 () Bool)

(declare-fun b_and!309607 () Bool)

(assert (=> b!4029195 (= tp!1224531 b_and!309607)))

(declare-fun b_free!112219 () Bool)

(declare-fun b_next!112923 () Bool)

(assert (=> b!4029195 (= b_free!112219 (not b_next!112923))))

(declare-fun tp!1224532 () Bool)

(declare-fun b_and!309609 () Bool)

(assert (=> b!4029195 (= tp!1224532 b_and!309609)))

(declare-fun b!4029184 () Bool)

(declare-fun b_free!112221 () Bool)

(declare-fun b_next!112925 () Bool)

(assert (=> b!4029184 (= b_free!112221 (not b_next!112925))))

(declare-fun tp!1224522 () Bool)

(declare-fun b_and!309611 () Bool)

(assert (=> b!4029184 (= tp!1224522 b_and!309611)))

(declare-fun b_free!112223 () Bool)

(declare-fun b_next!112927 () Bool)

(assert (=> b!4029184 (= b_free!112223 (not b_next!112927))))

(declare-fun tp!1224527 () Bool)

(declare-fun b_and!309613 () Bool)

(assert (=> b!4029184 (= tp!1224527 b_and!309613)))

(declare-fun b!4029174 () Bool)

(declare-fun e!2499765 () Bool)

(declare-fun tp_is_empty!20569 () Bool)

(declare-fun tp!1224521 () Bool)

(assert (=> b!4029174 (= e!2499765 (and tp_is_empty!20569 tp!1224521))))

(declare-fun b!4029175 () Bool)

(declare-fun e!2499773 () Bool)

(declare-fun e!2499767 () Bool)

(assert (=> b!4029175 (= e!2499773 e!2499767)))

(declare-fun res!1639934 () Bool)

(assert (=> b!4029175 (=> (not res!1639934) (not e!2499767))))

(declare-fun lt!1431683 () Int)

(declare-fun lt!1431665 () Int)

(assert (=> b!4029175 (= res!1639934 (>= lt!1431683 lt!1431665))))

(declare-datatypes ((C!23784 0))(
  ( (C!23785 (val!13986 Int)) )
))
(declare-datatypes ((List!43269 0))(
  ( (Nil!43145) (Cons!43145 (h!48565 C!23784) (t!334110 List!43269)) )
))
(declare-fun lt!1431673 () List!43269)

(declare-fun size!32249 (List!43269) Int)

(assert (=> b!4029175 (= lt!1431665 (size!32249 lt!1431673))))

(declare-fun prefix!494 () List!43269)

(assert (=> b!4029175 (= lt!1431683 (size!32249 prefix!494))))

(declare-datatypes ((IArray!26215 0))(
  ( (IArray!26216 (innerList!13165 List!43269)) )
))
(declare-datatypes ((Conc!13105 0))(
  ( (Node!13105 (left!32506 Conc!13105) (right!32836 Conc!13105) (csize!26440 Int) (cheight!13316 Int)) (Leaf!20259 (xs!16411 IArray!26215) (csize!26441 Int)) (Empty!13105) )
))
(declare-datatypes ((BalanceConc!25804 0))(
  ( (BalanceConc!25805 (c!696082 Conc!13105)) )
))
(declare-datatypes ((List!43270 0))(
  ( (Nil!43146) (Cons!43146 (h!48566 (_ BitVec 16)) (t!334111 List!43270)) )
))
(declare-datatypes ((TokenValue!7124 0))(
  ( (FloatLiteralValue!14248 (text!50313 List!43270)) (TokenValueExt!7123 (__x!26465 Int)) (Broken!35620 (value!217087 List!43270)) (Object!7247) (End!7124) (Def!7124) (Underscore!7124) (Match!7124) (Else!7124) (Error!7124) (Case!7124) (If!7124) (Extends!7124) (Abstract!7124) (Class!7124) (Val!7124) (DelimiterValue!14248 (del!7184 List!43270)) (KeywordValue!7130 (value!217088 List!43270)) (CommentValue!14248 (value!217089 List!43270)) (WhitespaceValue!14248 (value!217090 List!43270)) (IndentationValue!7124 (value!217091 List!43270)) (String!49337) (Int32!7124) (Broken!35621 (value!217092 List!43270)) (Boolean!7125) (Unit!62307) (OperatorValue!7127 (op!7184 List!43270)) (IdentifierValue!14248 (value!217093 List!43270)) (IdentifierValue!14249 (value!217094 List!43270)) (WhitespaceValue!14249 (value!217095 List!43270)) (True!14248) (False!14248) (Broken!35622 (value!217096 List!43270)) (Broken!35623 (value!217097 List!43270)) (True!14249) (RightBrace!7124) (RightBracket!7124) (Colon!7124) (Null!7124) (Comma!7124) (LeftBracket!7124) (False!14249) (LeftBrace!7124) (ImaginaryLiteralValue!7124 (text!50314 List!43270)) (StringLiteralValue!21372 (value!217098 List!43270)) (EOFValue!7124 (value!217099 List!43270)) (IdentValue!7124 (value!217100 List!43270)) (DelimiterValue!14249 (value!217101 List!43270)) (DedentValue!7124 (value!217102 List!43270)) (NewLineValue!7124 (value!217103 List!43270)) (IntegerValue!21372 (value!217104 (_ BitVec 32)) (text!50315 List!43270)) (IntegerValue!21373 (value!217105 Int) (text!50316 List!43270)) (Times!7124) (Or!7124) (Equal!7124) (Minus!7124) (Broken!35624 (value!217106 List!43270)) (And!7124) (Div!7124) (LessEqual!7124) (Mod!7124) (Concat!18923) (Not!7124) (Plus!7124) (SpaceValue!7124 (value!217107 List!43270)) (IntegerValue!21374 (value!217108 Int) (text!50317 List!43270)) (StringLiteralValue!21373 (text!50318 List!43270)) (FloatLiteralValue!14249 (text!50319 List!43270)) (BytesLiteralValue!7124 (value!217109 List!43270)) (CommentValue!14249 (value!217110 List!43270)) (StringLiteralValue!21374 (value!217111 List!43270)) (ErrorTokenValue!7124 (msg!7185 List!43270)) )
))
(declare-datatypes ((Regex!11799 0))(
  ( (ElementMatch!11799 (c!696083 C!23784)) (Concat!18924 (regOne!24110 Regex!11799) (regTwo!24110 Regex!11799)) (EmptyExpr!11799) (Star!11799 (reg!12128 Regex!11799)) (EmptyLang!11799) (Union!11799 (regOne!24111 Regex!11799) (regTwo!24111 Regex!11799)) )
))
(declare-datatypes ((String!49338 0))(
  ( (String!49339 (value!217112 String)) )
))
(declare-datatypes ((TokenValueInjection!13676 0))(
  ( (TokenValueInjection!13677 (toValue!9418 Int) (toChars!9277 Int)) )
))
(declare-datatypes ((Rule!13588 0))(
  ( (Rule!13589 (regex!6894 Regex!11799) (tag!7754 String!49338) (isSeparator!6894 Bool) (transformation!6894 TokenValueInjection!13676)) )
))
(declare-datatypes ((Token!12926 0))(
  ( (Token!12927 (value!217113 TokenValue!7124) (rule!9954 Rule!13588) (size!32250 Int) (originalCharacters!7494 List!43269)) )
))
(declare-fun token!484 () Token!12926)

(declare-fun list!16052 (BalanceConc!25804) List!43269)

(declare-fun charsOf!4710 (Token!12926) BalanceConc!25804)

(assert (=> b!4029175 (= lt!1431673 (list!16052 (charsOf!4710 token!484)))))

(declare-fun b!4029176 () Bool)

(declare-fun e!2499760 () Bool)

(declare-fun e!2499779 () Bool)

(assert (=> b!4029176 (= e!2499760 (not e!2499779))))

(declare-fun res!1639932 () Bool)

(assert (=> b!4029176 (=> res!1639932 e!2499779)))

(declare-fun lt!1431687 () List!43269)

(declare-fun lt!1431677 () List!43269)

(assert (=> b!4029176 (= res!1639932 (not (= lt!1431687 lt!1431677)))))

(declare-fun suffixResult!105 () List!43269)

(declare-fun ++!11296 (List!43269 List!43269) List!43269)

(assert (=> b!4029176 (= lt!1431687 (++!11296 lt!1431673 suffixResult!105))))

(declare-datatypes ((Unit!62308 0))(
  ( (Unit!62309) )
))
(declare-fun lt!1431663 () Unit!62308)

(declare-fun lemmaInv!1103 (TokenValueInjection!13676) Unit!62308)

(assert (=> b!4029176 (= lt!1431663 (lemmaInv!1103 (transformation!6894 (rule!9954 token!484))))))

(declare-datatypes ((LexerInterface!6483 0))(
  ( (LexerInterfaceExt!6480 (__x!26466 Int)) (Lexer!6481) )
))
(declare-fun thiss!21717 () LexerInterface!6483)

(declare-fun ruleValid!2824 (LexerInterface!6483 Rule!13588) Bool)

(assert (=> b!4029176 (ruleValid!2824 thiss!21717 (rule!9954 token!484))))

(declare-datatypes ((List!43271 0))(
  ( (Nil!43147) (Cons!43147 (h!48567 Rule!13588) (t!334112 List!43271)) )
))
(declare-fun rules!2999 () List!43271)

(declare-fun lt!1431681 () Unit!62308)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1894 (LexerInterface!6483 Rule!13588 List!43271) Unit!62308)

(assert (=> b!4029176 (= lt!1431681 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1894 thiss!21717 (rule!9954 token!484) rules!2999))))

(declare-fun tp!1224529 () Bool)

(declare-fun e!2499766 () Bool)

(declare-fun e!2499769 () Bool)

(declare-fun b!4029177 () Bool)

(declare-fun inv!21 (TokenValue!7124) Bool)

(assert (=> b!4029177 (= e!2499766 (and (inv!21 (value!217113 token!484)) e!2499769 tp!1224529))))

(declare-fun b!4029178 () Bool)

(declare-fun e!2499782 () Bool)

(assert (=> b!4029178 (= e!2499779 e!2499782)))

(declare-fun res!1639920 () Bool)

(assert (=> b!4029178 (=> res!1639920 e!2499782)))

(declare-fun isPrefix!3981 (List!43269 List!43269) Bool)

(assert (=> b!4029178 (= res!1639920 (not (isPrefix!3981 lt!1431673 lt!1431677)))))

(assert (=> b!4029178 (isPrefix!3981 prefix!494 lt!1431677)))

(declare-fun lt!1431672 () Unit!62308)

(declare-fun suffix!1299 () List!43269)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2816 (List!43269 List!43269) Unit!62308)

(assert (=> b!4029178 (= lt!1431672 (lemmaConcatTwoListThenFirstIsPrefix!2816 prefix!494 suffix!1299))))

(assert (=> b!4029178 (isPrefix!3981 lt!1431673 lt!1431687)))

(declare-fun lt!1431685 () Unit!62308)

(assert (=> b!4029178 (= lt!1431685 (lemmaConcatTwoListThenFirstIsPrefix!2816 lt!1431673 suffixResult!105))))

(declare-fun b!4029179 () Bool)

(declare-fun e!2499781 () Bool)

(declare-fun tp!1224520 () Bool)

(declare-fun inv!57640 (String!49338) Bool)

(declare-fun inv!57643 (TokenValueInjection!13676) Bool)

(assert (=> b!4029179 (= e!2499769 (and tp!1224520 (inv!57640 (tag!7754 (rule!9954 token!484))) (inv!57643 (transformation!6894 (rule!9954 token!484))) e!2499781))))

(declare-fun b!4029180 () Bool)

(declare-fun e!2499764 () Bool)

(assert (=> b!4029180 (= e!2499764 e!2499760)))

(declare-fun res!1639924 () Bool)

(assert (=> b!4029180 (=> (not res!1639924) (not e!2499760))))

(declare-datatypes ((tuple2!42242 0))(
  ( (tuple2!42243 (_1!24255 Token!12926) (_2!24255 List!43269)) )
))
(declare-datatypes ((Option!9308 0))(
  ( (None!9307) (Some!9307 (v!39695 tuple2!42242)) )
))
(declare-fun lt!1431664 () Option!9308)

(declare-fun maxPrefix!3781 (LexerInterface!6483 List!43271 List!43269) Option!9308)

(assert (=> b!4029180 (= res!1639924 (= (maxPrefix!3781 thiss!21717 rules!2999 lt!1431677) lt!1431664))))

(assert (=> b!4029180 (= lt!1431664 (Some!9307 (tuple2!42243 token!484 suffixResult!105)))))

(assert (=> b!4029180 (= lt!1431677 (++!11296 prefix!494 suffix!1299))))

(declare-fun b!4029181 () Bool)

(declare-fun res!1639922 () Bool)

(assert (=> b!4029181 (=> (not res!1639922) (not e!2499773))))

(declare-fun rulesInvariant!5826 (LexerInterface!6483 List!43271) Bool)

(assert (=> b!4029181 (= res!1639922 (rulesInvariant!5826 thiss!21717 rules!2999))))

(declare-fun b!4029182 () Bool)

(declare-fun e!2499777 () Bool)

(assert (=> b!4029182 (= e!2499777 true)))

(declare-fun e!2499772 () Bool)

(assert (=> b!4029182 e!2499772))

(declare-fun res!1639931 () Bool)

(assert (=> b!4029182 (=> (not res!1639931) (not e!2499772))))

(assert (=> b!4029182 (= res!1639931 (isPrefix!3981 lt!1431677 lt!1431677))))

(declare-fun lt!1431668 () Unit!62308)

(declare-fun lemmaIsPrefixRefl!2548 (List!43269 List!43269) Unit!62308)

(assert (=> b!4029182 (= lt!1431668 (lemmaIsPrefixRefl!2548 lt!1431677 lt!1431677))))

(declare-fun res!1639935 () Bool)

(assert (=> start!379620 (=> (not res!1639935) (not e!2499773))))

(get-info :version)

(assert (=> start!379620 (= res!1639935 ((_ is Lexer!6481) thiss!21717))))

(assert (=> start!379620 e!2499773))

(assert (=> start!379620 e!2499765))

(declare-fun inv!57644 (Token!12926) Bool)

(assert (=> start!379620 (and (inv!57644 token!484) e!2499766)))

(declare-fun e!2499762 () Bool)

(assert (=> start!379620 e!2499762))

(declare-fun e!2499783 () Bool)

(assert (=> start!379620 e!2499783))

(declare-fun e!2499784 () Bool)

(assert (=> start!379620 e!2499784))

(assert (=> start!379620 true))

(declare-fun e!2499763 () Bool)

(assert (=> start!379620 e!2499763))

(declare-fun e!2499768 () Bool)

(assert (=> start!379620 e!2499768))

(declare-fun b!4029183 () Bool)

(declare-fun res!1639928 () Bool)

(assert (=> b!4029183 (=> (not res!1639928) (not e!2499773))))

(declare-fun isEmpty!25755 (List!43271) Bool)

(assert (=> b!4029183 (= res!1639928 (not (isEmpty!25755 rules!2999)))))

(assert (=> b!4029184 (= e!2499781 (and tp!1224522 tp!1224527))))

(declare-fun b!4029185 () Bool)

(declare-fun res!1639929 () Bool)

(assert (=> b!4029185 (=> (not res!1639929) (not e!2499773))))

(declare-fun newSuffix!27 () List!43269)

(assert (=> b!4029185 (= res!1639929 (>= (size!32249 suffix!1299) (size!32249 newSuffix!27)))))

(declare-fun b!4029186 () Bool)

(declare-fun e!2499778 () Bool)

(declare-fun e!2499761 () Bool)

(assert (=> b!4029186 (= e!2499778 e!2499761)))

(declare-fun res!1639926 () Bool)

(assert (=> b!4029186 (=> res!1639926 e!2499761)))

(declare-fun lt!1431674 () List!43269)

(declare-fun lt!1431670 () List!43269)

(assert (=> b!4029186 (= res!1639926 (or (not (= lt!1431677 lt!1431674)) (not (= lt!1431677 lt!1431670))))))

(assert (=> b!4029186 (= lt!1431674 lt!1431670)))

(declare-fun lt!1431689 () List!43269)

(assert (=> b!4029186 (= lt!1431670 (++!11296 lt!1431673 lt!1431689))))

(declare-fun lt!1431682 () List!43269)

(assert (=> b!4029186 (= lt!1431674 (++!11296 lt!1431682 suffix!1299))))

(declare-fun lt!1431671 () List!43269)

(assert (=> b!4029186 (= lt!1431689 (++!11296 lt!1431671 suffix!1299))))

(declare-fun lt!1431676 () Unit!62308)

(declare-fun lemmaConcatAssociativity!2598 (List!43269 List!43269 List!43269) Unit!62308)

(assert (=> b!4029186 (= lt!1431676 (lemmaConcatAssociativity!2598 lt!1431673 lt!1431671 suffix!1299))))

(declare-fun b!4029187 () Bool)

(declare-fun res!1639925 () Bool)

(assert (=> b!4029187 (=> (not res!1639925) (not e!2499772))))

(declare-fun lt!1431684 () TokenValue!7124)

(assert (=> b!4029187 (= res!1639925 (= (value!217113 token!484) lt!1431684))))

(declare-fun b!4029188 () Bool)

(declare-fun e!2499776 () Bool)

(declare-fun tp!1224523 () Bool)

(assert (=> b!4029188 (= e!2499763 (and e!2499776 tp!1224523))))

(declare-fun b!4029189 () Bool)

(declare-fun res!1639933 () Bool)

(assert (=> b!4029189 (=> (not res!1639933) (not e!2499773))))

(assert (=> b!4029189 (= res!1639933 (isPrefix!3981 newSuffix!27 suffix!1299))))

(declare-fun b!4029190 () Bool)

(assert (=> b!4029190 (= e!2499782 e!2499778)))

(declare-fun res!1639923 () Bool)

(assert (=> b!4029190 (=> res!1639923 e!2499778)))

(assert (=> b!4029190 (= res!1639923 (not (= lt!1431682 prefix!494)))))

(assert (=> b!4029190 (= lt!1431682 (++!11296 lt!1431673 lt!1431671))))

(declare-fun getSuffix!2398 (List!43269 List!43269) List!43269)

(assert (=> b!4029190 (= lt!1431671 (getSuffix!2398 prefix!494 lt!1431673))))

(assert (=> b!4029190 (isPrefix!3981 lt!1431673 prefix!494)))

(declare-fun lt!1431669 () Unit!62308)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!545 (List!43269 List!43269 List!43269) Unit!62308)

(assert (=> b!4029190 (= lt!1431669 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!545 prefix!494 lt!1431673 lt!1431677))))

(declare-fun b!4029191 () Bool)

(declare-fun tp!1224526 () Bool)

(assert (=> b!4029191 (= e!2499768 (and tp_is_empty!20569 tp!1224526))))

(declare-fun b!4029192 () Bool)

(assert (=> b!4029192 (= e!2499772 (= (size!32250 token!484) (size!32249 (originalCharacters!7494 token!484))))))

(declare-fun b!4029193 () Bool)

(declare-fun e!2499770 () Bool)

(assert (=> b!4029193 (= e!2499770 e!2499777)))

(declare-fun res!1639927 () Bool)

(assert (=> b!4029193 (=> res!1639927 e!2499777)))

(declare-fun matchR!5752 (Regex!11799 List!43269) Bool)

(assert (=> b!4029193 (= res!1639927 (not (matchR!5752 (regex!6894 (rule!9954 token!484)) lt!1431673)))))

(declare-fun lt!1431667 () List!43269)

(assert (=> b!4029193 (isPrefix!3981 lt!1431673 lt!1431667)))

(declare-fun lt!1431680 () Unit!62308)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!774 (List!43269 List!43269 List!43269) Unit!62308)

(assert (=> b!4029193 (= lt!1431680 (lemmaPrefixStaysPrefixWhenAddingToSuffix!774 lt!1431673 prefix!494 newSuffix!27))))

(declare-fun lt!1431678 () Unit!62308)

(assert (=> b!4029193 (= lt!1431678 (lemmaPrefixStaysPrefixWhenAddingToSuffix!774 lt!1431673 prefix!494 suffix!1299))))

(declare-fun b!4029194 () Bool)

(assert (=> b!4029194 (= e!2499767 e!2499764)))

(declare-fun res!1639921 () Bool)

(assert (=> b!4029194 (=> (not res!1639921) (not e!2499764))))

(declare-fun lt!1431666 () List!43269)

(assert (=> b!4029194 (= res!1639921 (= lt!1431666 lt!1431667))))

(assert (=> b!4029194 (= lt!1431667 (++!11296 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43269)

(assert (=> b!4029194 (= lt!1431666 (++!11296 lt!1431673 newSuffixResult!27))))

(declare-fun e!2499775 () Bool)

(assert (=> b!4029195 (= e!2499775 (and tp!1224531 tp!1224532))))

(declare-fun b!4029196 () Bool)

(declare-fun tp!1224524 () Bool)

(assert (=> b!4029196 (= e!2499784 (and tp_is_empty!20569 tp!1224524))))

(declare-fun b!4029197 () Bool)

(assert (=> b!4029197 (= e!2499761 e!2499770)))

(declare-fun res!1639930 () Bool)

(assert (=> b!4029197 (=> res!1639930 e!2499770)))

(declare-fun lt!1431679 () Option!9308)

(assert (=> b!4029197 (= res!1639930 (not (= lt!1431679 lt!1431664)))))

(assert (=> b!4029197 (= lt!1431679 (Some!9307 (tuple2!42243 (Token!12927 lt!1431684 (rule!9954 token!484) lt!1431665 lt!1431673) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2793 (LexerInterface!6483 Rule!13588 List!43269) Option!9308)

(assert (=> b!4029197 (= lt!1431679 (maxPrefixOneRule!2793 thiss!21717 (rule!9954 token!484) lt!1431677))))

(declare-fun apply!10083 (TokenValueInjection!13676 BalanceConc!25804) TokenValue!7124)

(declare-fun seqFromList!5111 (List!43269) BalanceConc!25804)

(assert (=> b!4029197 (= lt!1431684 (apply!10083 (transformation!6894 (rule!9954 token!484)) (seqFromList!5111 lt!1431673)))))

(declare-fun lt!1431686 () Unit!62308)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1599 (LexerInterface!6483 List!43271 List!43269 List!43269 List!43269 Rule!13588) Unit!62308)

(assert (=> b!4029197 (= lt!1431686 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1599 thiss!21717 rules!2999 lt!1431673 lt!1431677 suffixResult!105 (rule!9954 token!484)))))

(assert (=> b!4029197 (= lt!1431689 suffixResult!105)))

(declare-fun lt!1431675 () Unit!62308)

(declare-fun lemmaSamePrefixThenSameSuffix!2142 (List!43269 List!43269 List!43269 List!43269 List!43269) Unit!62308)

(assert (=> b!4029197 (= lt!1431675 (lemmaSamePrefixThenSameSuffix!2142 lt!1431673 lt!1431689 lt!1431673 suffixResult!105 lt!1431677))))

(assert (=> b!4029197 (isPrefix!3981 lt!1431673 lt!1431670)))

(declare-fun lt!1431688 () Unit!62308)

(assert (=> b!4029197 (= lt!1431688 (lemmaConcatTwoListThenFirstIsPrefix!2816 lt!1431673 lt!1431689))))

(declare-fun b!4029198 () Bool)

(declare-fun tp!1224528 () Bool)

(assert (=> b!4029198 (= e!2499762 (and tp_is_empty!20569 tp!1224528))))

(declare-fun b!4029199 () Bool)

(declare-fun tp!1224530 () Bool)

(assert (=> b!4029199 (= e!2499783 (and tp_is_empty!20569 tp!1224530))))

(declare-fun b!4029200 () Bool)

(declare-fun tp!1224525 () Bool)

(assert (=> b!4029200 (= e!2499776 (and tp!1224525 (inv!57640 (tag!7754 (h!48567 rules!2999))) (inv!57643 (transformation!6894 (h!48567 rules!2999))) e!2499775))))

(assert (= (and start!379620 res!1639935) b!4029183))

(assert (= (and b!4029183 res!1639928) b!4029181))

(assert (= (and b!4029181 res!1639922) b!4029185))

(assert (= (and b!4029185 res!1639929) b!4029189))

(assert (= (and b!4029189 res!1639933) b!4029175))

(assert (= (and b!4029175 res!1639934) b!4029194))

(assert (= (and b!4029194 res!1639921) b!4029180))

(assert (= (and b!4029180 res!1639924) b!4029176))

(assert (= (and b!4029176 (not res!1639932)) b!4029178))

(assert (= (and b!4029178 (not res!1639920)) b!4029190))

(assert (= (and b!4029190 (not res!1639923)) b!4029186))

(assert (= (and b!4029186 (not res!1639926)) b!4029197))

(assert (= (and b!4029197 (not res!1639930)) b!4029193))

(assert (= (and b!4029193 (not res!1639927)) b!4029182))

(assert (= (and b!4029182 res!1639931) b!4029187))

(assert (= (and b!4029187 res!1639925) b!4029192))

(assert (= (and start!379620 ((_ is Cons!43145) prefix!494)) b!4029174))

(assert (= b!4029179 b!4029184))

(assert (= b!4029177 b!4029179))

(assert (= start!379620 b!4029177))

(assert (= (and start!379620 ((_ is Cons!43145) suffixResult!105)) b!4029198))

(assert (= (and start!379620 ((_ is Cons!43145) suffix!1299)) b!4029199))

(assert (= (and start!379620 ((_ is Cons!43145) newSuffix!27)) b!4029196))

(assert (= b!4029200 b!4029195))

(assert (= b!4029188 b!4029200))

(assert (= (and start!379620 ((_ is Cons!43147) rules!2999)) b!4029188))

(assert (= (and start!379620 ((_ is Cons!43145) newSuffixResult!27)) b!4029191))

(declare-fun m!4620985 () Bool)

(assert (=> b!4029178 m!4620985))

(declare-fun m!4620987 () Bool)

(assert (=> b!4029178 m!4620987))

(declare-fun m!4620989 () Bool)

(assert (=> b!4029178 m!4620989))

(declare-fun m!4620991 () Bool)

(assert (=> b!4029178 m!4620991))

(declare-fun m!4620993 () Bool)

(assert (=> b!4029178 m!4620993))

(declare-fun m!4620995 () Bool)

(assert (=> b!4029194 m!4620995))

(declare-fun m!4620997 () Bool)

(assert (=> b!4029194 m!4620997))

(declare-fun m!4620999 () Bool)

(assert (=> b!4029190 m!4620999))

(declare-fun m!4621001 () Bool)

(assert (=> b!4029190 m!4621001))

(declare-fun m!4621003 () Bool)

(assert (=> b!4029190 m!4621003))

(declare-fun m!4621005 () Bool)

(assert (=> b!4029190 m!4621005))

(declare-fun m!4621007 () Bool)

(assert (=> b!4029186 m!4621007))

(declare-fun m!4621009 () Bool)

(assert (=> b!4029186 m!4621009))

(declare-fun m!4621011 () Bool)

(assert (=> b!4029186 m!4621011))

(declare-fun m!4621013 () Bool)

(assert (=> b!4029186 m!4621013))

(declare-fun m!4621015 () Bool)

(assert (=> b!4029192 m!4621015))

(declare-fun m!4621017 () Bool)

(assert (=> b!4029180 m!4621017))

(declare-fun m!4621019 () Bool)

(assert (=> b!4029180 m!4621019))

(declare-fun m!4621021 () Bool)

(assert (=> b!4029197 m!4621021))

(declare-fun m!4621023 () Bool)

(assert (=> b!4029197 m!4621023))

(declare-fun m!4621025 () Bool)

(assert (=> b!4029197 m!4621025))

(declare-fun m!4621027 () Bool)

(assert (=> b!4029197 m!4621027))

(declare-fun m!4621029 () Bool)

(assert (=> b!4029197 m!4621029))

(assert (=> b!4029197 m!4621025))

(declare-fun m!4621031 () Bool)

(assert (=> b!4029197 m!4621031))

(declare-fun m!4621033 () Bool)

(assert (=> b!4029197 m!4621033))

(declare-fun m!4621035 () Bool)

(assert (=> b!4029177 m!4621035))

(declare-fun m!4621037 () Bool)

(assert (=> start!379620 m!4621037))

(declare-fun m!4621039 () Bool)

(assert (=> b!4029183 m!4621039))

(declare-fun m!4621041 () Bool)

(assert (=> b!4029182 m!4621041))

(declare-fun m!4621043 () Bool)

(assert (=> b!4029182 m!4621043))

(declare-fun m!4621045 () Bool)

(assert (=> b!4029185 m!4621045))

(declare-fun m!4621047 () Bool)

(assert (=> b!4029185 m!4621047))

(declare-fun m!4621049 () Bool)

(assert (=> b!4029176 m!4621049))

(declare-fun m!4621051 () Bool)

(assert (=> b!4029176 m!4621051))

(declare-fun m!4621053 () Bool)

(assert (=> b!4029176 m!4621053))

(declare-fun m!4621055 () Bool)

(assert (=> b!4029176 m!4621055))

(declare-fun m!4621057 () Bool)

(assert (=> b!4029179 m!4621057))

(declare-fun m!4621059 () Bool)

(assert (=> b!4029179 m!4621059))

(declare-fun m!4621061 () Bool)

(assert (=> b!4029189 m!4621061))

(declare-fun m!4621063 () Bool)

(assert (=> b!4029200 m!4621063))

(declare-fun m!4621065 () Bool)

(assert (=> b!4029200 m!4621065))

(declare-fun m!4621067 () Bool)

(assert (=> b!4029193 m!4621067))

(declare-fun m!4621069 () Bool)

(assert (=> b!4029193 m!4621069))

(declare-fun m!4621071 () Bool)

(assert (=> b!4029193 m!4621071))

(declare-fun m!4621073 () Bool)

(assert (=> b!4029193 m!4621073))

(declare-fun m!4621075 () Bool)

(assert (=> b!4029175 m!4621075))

(declare-fun m!4621077 () Bool)

(assert (=> b!4029175 m!4621077))

(declare-fun m!4621079 () Bool)

(assert (=> b!4029175 m!4621079))

(assert (=> b!4029175 m!4621079))

(declare-fun m!4621081 () Bool)

(assert (=> b!4029175 m!4621081))

(declare-fun m!4621083 () Bool)

(assert (=> b!4029181 m!4621083))

(check-sat (not b!4029180) (not b!4029176) (not b!4029174) (not b!4029194) (not b!4029190) (not b_next!112925) b_and!309607 (not b!4029179) (not b_next!112921) (not b!4029183) (not b!4029175) (not b!4029191) (not b!4029196) (not b!4029193) (not b!4029178) b_and!309611 (not b!4029177) (not b!4029188) (not b!4029186) tp_is_empty!20569 (not b!4029182) (not b_next!112923) (not b!4029198) (not b!4029199) (not b!4029181) (not b_next!112927) (not b!4029200) (not b!4029197) b_and!309613 (not start!379620) (not b!4029192) (not b!4029189) b_and!309609 (not b!4029185))
(check-sat b_and!309611 (not b_next!112923) (not b_next!112925) b_and!309607 (not b_next!112927) b_and!309613 (not b_next!112921) b_and!309609)
