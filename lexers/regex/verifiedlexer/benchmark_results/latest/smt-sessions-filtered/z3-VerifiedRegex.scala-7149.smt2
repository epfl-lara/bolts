; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379380 () Bool)

(assert start!379380)

(declare-fun b!4027215 () Bool)

(declare-fun b_free!112137 () Bool)

(declare-fun b_next!112841 () Bool)

(assert (=> b!4027215 (= b_free!112137 (not b_next!112841))))

(declare-fun tp!1223967 () Bool)

(declare-fun b_and!309431 () Bool)

(assert (=> b!4027215 (= tp!1223967 b_and!309431)))

(declare-fun b_free!112139 () Bool)

(declare-fun b_next!112843 () Bool)

(assert (=> b!4027215 (= b_free!112139 (not b_next!112843))))

(declare-fun tp!1223975 () Bool)

(declare-fun b_and!309433 () Bool)

(assert (=> b!4027215 (= tp!1223975 b_and!309433)))

(declare-fun b!4027202 () Bool)

(declare-fun b_free!112141 () Bool)

(declare-fun b_next!112845 () Bool)

(assert (=> b!4027202 (= b_free!112141 (not b_next!112845))))

(declare-fun tp!1223964 () Bool)

(declare-fun b_and!309435 () Bool)

(assert (=> b!4027202 (= tp!1223964 b_and!309435)))

(declare-fun b_free!112143 () Bool)

(declare-fun b_next!112847 () Bool)

(assert (=> b!4027202 (= b_free!112143 (not b_next!112847))))

(declare-fun tp!1223966 () Bool)

(declare-fun b_and!309437 () Bool)

(assert (=> b!4027202 (= tp!1223966 b_and!309437)))

(declare-fun res!1639004 () Bool)

(declare-fun e!2498422 () Bool)

(assert (=> start!379380 (=> (not res!1639004) (not e!2498422))))

(declare-datatypes ((LexerInterface!6475 0))(
  ( (LexerInterfaceExt!6472 (__x!26449 Int)) (Lexer!6473) )
))
(declare-fun thiss!21717 () LexerInterface!6475)

(get-info :version)

(assert (=> start!379380 (= res!1639004 ((_ is Lexer!6473) thiss!21717))))

(assert (=> start!379380 e!2498422))

(declare-fun e!2498419 () Bool)

(assert (=> start!379380 e!2498419))

(declare-datatypes ((C!23768 0))(
  ( (C!23769 (val!13978 Int)) )
))
(declare-datatypes ((List!43243 0))(
  ( (Nil!43119) (Cons!43119 (h!48539 C!23768) (t!334002 List!43243)) )
))
(declare-datatypes ((IArray!26199 0))(
  ( (IArray!26200 (innerList!13157 List!43243)) )
))
(declare-datatypes ((Conc!13097 0))(
  ( (Node!13097 (left!32490 Conc!13097) (right!32820 Conc!13097) (csize!26424 Int) (cheight!13308 Int)) (Leaf!20247 (xs!16403 IArray!26199) (csize!26425 Int)) (Empty!13097) )
))
(declare-datatypes ((BalanceConc!25788 0))(
  ( (BalanceConc!25789 (c!695780 Conc!13097)) )
))
(declare-datatypes ((List!43244 0))(
  ( (Nil!43120) (Cons!43120 (h!48540 (_ BitVec 16)) (t!334003 List!43244)) )
))
(declare-datatypes ((TokenValue!7116 0))(
  ( (FloatLiteralValue!14232 (text!50257 List!43244)) (TokenValueExt!7115 (__x!26450 Int)) (Broken!35580 (value!216859 List!43244)) (Object!7239) (End!7116) (Def!7116) (Underscore!7116) (Match!7116) (Else!7116) (Error!7116) (Case!7116) (If!7116) (Extends!7116) (Abstract!7116) (Class!7116) (Val!7116) (DelimiterValue!14232 (del!7176 List!43244)) (KeywordValue!7122 (value!216860 List!43244)) (CommentValue!14232 (value!216861 List!43244)) (WhitespaceValue!14232 (value!216862 List!43244)) (IndentationValue!7116 (value!216863 List!43244)) (String!49297) (Int32!7116) (Broken!35581 (value!216864 List!43244)) (Boolean!7117) (Unit!62281) (OperatorValue!7119 (op!7176 List!43244)) (IdentifierValue!14232 (value!216865 List!43244)) (IdentifierValue!14233 (value!216866 List!43244)) (WhitespaceValue!14233 (value!216867 List!43244)) (True!14232) (False!14232) (Broken!35582 (value!216868 List!43244)) (Broken!35583 (value!216869 List!43244)) (True!14233) (RightBrace!7116) (RightBracket!7116) (Colon!7116) (Null!7116) (Comma!7116) (LeftBracket!7116) (False!14233) (LeftBrace!7116) (ImaginaryLiteralValue!7116 (text!50258 List!43244)) (StringLiteralValue!21348 (value!216870 List!43244)) (EOFValue!7116 (value!216871 List!43244)) (IdentValue!7116 (value!216872 List!43244)) (DelimiterValue!14233 (value!216873 List!43244)) (DedentValue!7116 (value!216874 List!43244)) (NewLineValue!7116 (value!216875 List!43244)) (IntegerValue!21348 (value!216876 (_ BitVec 32)) (text!50259 List!43244)) (IntegerValue!21349 (value!216877 Int) (text!50260 List!43244)) (Times!7116) (Or!7116) (Equal!7116) (Minus!7116) (Broken!35584 (value!216878 List!43244)) (And!7116) (Div!7116) (LessEqual!7116) (Mod!7116) (Concat!18907) (Not!7116) (Plus!7116) (SpaceValue!7116 (value!216879 List!43244)) (IntegerValue!21350 (value!216880 Int) (text!50261 List!43244)) (StringLiteralValue!21349 (text!50262 List!43244)) (FloatLiteralValue!14233 (text!50263 List!43244)) (BytesLiteralValue!7116 (value!216881 List!43244)) (CommentValue!14233 (value!216882 List!43244)) (StringLiteralValue!21350 (value!216883 List!43244)) (ErrorTokenValue!7116 (msg!7177 List!43244)) )
))
(declare-datatypes ((Regex!11791 0))(
  ( (ElementMatch!11791 (c!695781 C!23768)) (Concat!18908 (regOne!24094 Regex!11791) (regTwo!24094 Regex!11791)) (EmptyExpr!11791) (Star!11791 (reg!12120 Regex!11791)) (EmptyLang!11791) (Union!11791 (regOne!24095 Regex!11791) (regTwo!24095 Regex!11791)) )
))
(declare-datatypes ((String!49298 0))(
  ( (String!49299 (value!216884 String)) )
))
(declare-datatypes ((TokenValueInjection!13660 0))(
  ( (TokenValueInjection!13661 (toValue!9406 Int) (toChars!9265 Int)) )
))
(declare-datatypes ((Rule!13572 0))(
  ( (Rule!13573 (regex!6886 Regex!11791) (tag!7746 String!49298) (isSeparator!6886 Bool) (transformation!6886 TokenValueInjection!13660)) )
))
(declare-datatypes ((Token!12910 0))(
  ( (Token!12911 (value!216885 TokenValue!7116) (rule!9944 Rule!13572) (size!32231 Int) (originalCharacters!7486 List!43243)) )
))
(declare-fun token!484 () Token!12910)

(declare-fun e!2498411 () Bool)

(declare-fun inv!57605 (Token!12910) Bool)

(assert (=> start!379380 (and (inv!57605 token!484) e!2498411)))

(declare-fun e!2498423 () Bool)

(assert (=> start!379380 e!2498423))

(declare-fun e!2498417 () Bool)

(assert (=> start!379380 e!2498417))

(declare-fun e!2498420 () Bool)

(assert (=> start!379380 e!2498420))

(assert (=> start!379380 true))

(declare-fun e!2498408 () Bool)

(assert (=> start!379380 e!2498408))

(declare-fun e!2498421 () Bool)

(assert (=> start!379380 e!2498421))

(declare-fun b!4027190 () Bool)

(declare-fun e!2498407 () Bool)

(declare-fun e!2498415 () Bool)

(assert (=> b!4027190 (= e!2498407 e!2498415)))

(declare-fun res!1639001 () Bool)

(assert (=> b!4027190 (=> res!1639001 e!2498415)))

(declare-fun lt!1430705 () List!43243)

(declare-fun lt!1430712 () List!43243)

(declare-fun isPrefix!3973 (List!43243 List!43243) Bool)

(assert (=> b!4027190 (= res!1639001 (not (isPrefix!3973 lt!1430705 lt!1430712)))))

(declare-fun prefix!494 () List!43243)

(assert (=> b!4027190 (isPrefix!3973 prefix!494 lt!1430712)))

(declare-datatypes ((Unit!62282 0))(
  ( (Unit!62283) )
))
(declare-fun lt!1430710 () Unit!62282)

(declare-fun suffix!1299 () List!43243)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2808 (List!43243 List!43243) Unit!62282)

(assert (=> b!4027190 (= lt!1430710 (lemmaConcatTwoListThenFirstIsPrefix!2808 prefix!494 suffix!1299))))

(declare-fun lt!1430719 () List!43243)

(assert (=> b!4027190 (isPrefix!3973 lt!1430705 lt!1430719)))

(declare-fun lt!1430714 () Unit!62282)

(declare-fun suffixResult!105 () List!43243)

(assert (=> b!4027190 (= lt!1430714 (lemmaConcatTwoListThenFirstIsPrefix!2808 lt!1430705 suffixResult!105))))

(declare-fun b!4027191 () Bool)

(declare-fun res!1639005 () Bool)

(declare-fun e!2498405 () Bool)

(assert (=> b!4027191 (=> res!1639005 e!2498405)))

(assert (=> b!4027191 (= res!1639005 (not (= lt!1430712 lt!1430719)))))

(declare-fun b!4027192 () Bool)

(declare-fun res!1639007 () Bool)

(assert (=> b!4027192 (=> (not res!1639007) (not e!2498422))))

(declare-fun newSuffix!27 () List!43243)

(assert (=> b!4027192 (= res!1639007 (isPrefix!3973 newSuffix!27 suffix!1299))))

(declare-fun b!4027193 () Bool)

(declare-fun tp_is_empty!20553 () Bool)

(declare-fun tp!1223973 () Bool)

(assert (=> b!4027193 (= e!2498419 (and tp_is_empty!20553 tp!1223973))))

(declare-fun b!4027194 () Bool)

(declare-fun e!2498426 () Bool)

(declare-fun e!2498414 () Bool)

(assert (=> b!4027194 (= e!2498426 e!2498414)))

(declare-fun res!1639010 () Bool)

(assert (=> b!4027194 (=> (not res!1639010) (not e!2498414))))

(declare-datatypes ((tuple2!42222 0))(
  ( (tuple2!42223 (_1!24245 Token!12910) (_2!24245 List!43243)) )
))
(declare-datatypes ((Option!9300 0))(
  ( (None!9299) (Some!9299 (v!39685 tuple2!42222)) )
))
(declare-fun lt!1430703 () Option!9300)

(assert (=> b!4027194 (= res!1639010 (= lt!1430703 (Some!9299 (tuple2!42223 token!484 suffixResult!105))))))

(declare-datatypes ((List!43245 0))(
  ( (Nil!43121) (Cons!43121 (h!48541 Rule!13572) (t!334004 List!43245)) )
))
(declare-fun rules!2999 () List!43245)

(declare-fun maxPrefix!3773 (LexerInterface!6475 List!43245 List!43243) Option!9300)

(assert (=> b!4027194 (= lt!1430703 (maxPrefix!3773 thiss!21717 rules!2999 lt!1430712))))

(declare-fun ++!11288 (List!43243 List!43243) List!43243)

(assert (=> b!4027194 (= lt!1430712 (++!11288 prefix!494 suffix!1299))))

(declare-fun b!4027195 () Bool)

(declare-fun e!2498404 () Bool)

(assert (=> b!4027195 (= e!2498404 e!2498405)))

(declare-fun res!1639006 () Bool)

(assert (=> b!4027195 (=> res!1639006 e!2498405)))

(declare-fun contains!8568 (List!43245 Rule!13572) Bool)

(assert (=> b!4027195 (= res!1639006 (not (contains!8568 rules!2999 (rule!9944 token!484))))))

(declare-fun lt!1430721 () List!43243)

(assert (=> b!4027195 (= lt!1430721 suffixResult!105)))

(declare-fun lt!1430722 () Unit!62282)

(declare-fun lemmaSamePrefixThenSameSuffix!2134 (List!43243 List!43243 List!43243 List!43243 List!43243) Unit!62282)

(assert (=> b!4027195 (= lt!1430722 (lemmaSamePrefixThenSameSuffix!2134 lt!1430705 lt!1430721 lt!1430705 suffixResult!105 lt!1430712))))

(declare-fun lt!1430711 () List!43243)

(assert (=> b!4027195 (isPrefix!3973 lt!1430705 lt!1430711)))

(declare-fun lt!1430708 () Unit!62282)

(assert (=> b!4027195 (= lt!1430708 (lemmaConcatTwoListThenFirstIsPrefix!2808 lt!1430705 lt!1430721))))

(declare-fun b!4027196 () Bool)

(declare-fun tp!1223976 () Bool)

(assert (=> b!4027196 (= e!2498420 (and tp_is_empty!20553 tp!1223976))))

(declare-fun b!4027197 () Bool)

(declare-fun e!2498406 () Bool)

(assert (=> b!4027197 (= e!2498405 e!2498406)))

(declare-fun res!1639015 () Bool)

(assert (=> b!4027197 (=> res!1639015 e!2498406)))

(declare-fun lt!1430704 () BalanceConc!25788)

(declare-fun lt!1430707 () Int)

(declare-fun apply!10075 (TokenValueInjection!13660 BalanceConc!25788) TokenValue!7116)

(assert (=> b!4027197 (= res!1639015 (not (= lt!1430703 (Some!9299 (tuple2!42223 (Token!12911 (apply!10075 (transformation!6886 (rule!9944 token!484)) lt!1430704) (rule!9944 token!484) lt!1430707 lt!1430705) suffixResult!105)))))))

(declare-fun lt!1430723 () Unit!62282)

(declare-fun lemmaSemiInverse!1893 (TokenValueInjection!13660 BalanceConc!25788) Unit!62282)

(assert (=> b!4027197 (= lt!1430723 (lemmaSemiInverse!1893 (transformation!6886 (rule!9944 token!484)) lt!1430704))))

(declare-fun seqFromList!5103 (List!43243) BalanceConc!25788)

(assert (=> b!4027197 (= lt!1430704 (seqFromList!5103 lt!1430705))))

(declare-fun b!4027198 () Bool)

(declare-fun e!2498412 () Bool)

(assert (=> b!4027198 (= e!2498415 e!2498412)))

(declare-fun res!1639002 () Bool)

(assert (=> b!4027198 (=> res!1639002 e!2498412)))

(declare-fun lt!1430713 () List!43243)

(assert (=> b!4027198 (= res!1639002 (not (= lt!1430713 prefix!494)))))

(declare-fun lt!1430716 () List!43243)

(assert (=> b!4027198 (= lt!1430713 (++!11288 lt!1430705 lt!1430716))))

(declare-fun getSuffix!2390 (List!43243 List!43243) List!43243)

(assert (=> b!4027198 (= lt!1430716 (getSuffix!2390 prefix!494 lt!1430705))))

(assert (=> b!4027198 (isPrefix!3973 lt!1430705 prefix!494)))

(declare-fun lt!1430706 () Unit!62282)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!537 (List!43243 List!43243 List!43243) Unit!62282)

(assert (=> b!4027198 (= lt!1430706 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!537 prefix!494 lt!1430705 lt!1430712))))

(declare-fun b!4027199 () Bool)

(assert (=> b!4027199 (= e!2498412 e!2498404)))

(declare-fun res!1639014 () Bool)

(assert (=> b!4027199 (=> res!1639014 e!2498404)))

(declare-fun lt!1430715 () List!43243)

(assert (=> b!4027199 (= res!1639014 (or (not (= lt!1430712 lt!1430715)) (not (= lt!1430712 lt!1430711))))))

(assert (=> b!4027199 (= lt!1430715 lt!1430711)))

(assert (=> b!4027199 (= lt!1430711 (++!11288 lt!1430705 lt!1430721))))

(assert (=> b!4027199 (= lt!1430715 (++!11288 lt!1430713 suffix!1299))))

(assert (=> b!4027199 (= lt!1430721 (++!11288 lt!1430716 suffix!1299))))

(declare-fun lt!1430709 () Unit!62282)

(declare-fun lemmaConcatAssociativity!2590 (List!43243 List!43243 List!43243) Unit!62282)

(assert (=> b!4027199 (= lt!1430709 (lemmaConcatAssociativity!2590 lt!1430705 lt!1430716 suffix!1299))))

(declare-fun b!4027200 () Bool)

(declare-fun e!2498424 () Bool)

(declare-fun tp!1223970 () Bool)

(assert (=> b!4027200 (= e!2498408 (and e!2498424 tp!1223970))))

(declare-fun b!4027201 () Bool)

(declare-fun matchR!5744 (Regex!11791 List!43243) Bool)

(assert (=> b!4027201 (= e!2498406 (matchR!5744 (regex!6886 (rule!9944 token!484)) lt!1430705))))

(declare-fun e!2498425 () Bool)

(assert (=> b!4027202 (= e!2498425 (and tp!1223964 tp!1223966))))

(declare-fun e!2498413 () Bool)

(declare-fun tp!1223965 () Bool)

(declare-fun b!4027203 () Bool)

(declare-fun inv!21 (TokenValue!7116) Bool)

(assert (=> b!4027203 (= e!2498411 (and (inv!21 (value!216885 token!484)) e!2498413 tp!1223965))))

(declare-fun b!4027204 () Bool)

(declare-fun res!1639011 () Bool)

(assert (=> b!4027204 (=> (not res!1639011) (not e!2498422))))

(declare-fun rulesInvariant!5818 (LexerInterface!6475 List!43245) Bool)

(assert (=> b!4027204 (= res!1639011 (rulesInvariant!5818 thiss!21717 rules!2999))))

(declare-fun b!4027205 () Bool)

(declare-fun tp!1223968 () Bool)

(declare-fun e!2498410 () Bool)

(declare-fun inv!57602 (String!49298) Bool)

(declare-fun inv!57606 (TokenValueInjection!13660) Bool)

(assert (=> b!4027205 (= e!2498424 (and tp!1223968 (inv!57602 (tag!7746 (h!48541 rules!2999))) (inv!57606 (transformation!6886 (h!48541 rules!2999))) e!2498410))))

(declare-fun b!4027206 () Bool)

(declare-fun tp!1223971 () Bool)

(assert (=> b!4027206 (= e!2498421 (and tp_is_empty!20553 tp!1223971))))

(declare-fun b!4027207 () Bool)

(assert (=> b!4027207 (= e!2498414 (not e!2498407))))

(declare-fun res!1639009 () Bool)

(assert (=> b!4027207 (=> res!1639009 e!2498407)))

(assert (=> b!4027207 (= res!1639009 (not (= lt!1430719 lt!1430712)))))

(assert (=> b!4027207 (= lt!1430719 (++!11288 lt!1430705 suffixResult!105))))

(declare-fun lt!1430720 () Unit!62282)

(declare-fun lemmaInv!1095 (TokenValueInjection!13660) Unit!62282)

(assert (=> b!4027207 (= lt!1430720 (lemmaInv!1095 (transformation!6886 (rule!9944 token!484))))))

(declare-fun ruleValid!2816 (LexerInterface!6475 Rule!13572) Bool)

(assert (=> b!4027207 (ruleValid!2816 thiss!21717 (rule!9944 token!484))))

(declare-fun lt!1430718 () Unit!62282)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1886 (LexerInterface!6475 Rule!13572 List!43245) Unit!62282)

(assert (=> b!4027207 (= lt!1430718 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1886 thiss!21717 (rule!9944 token!484) rules!2999))))

(declare-fun b!4027208 () Bool)

(declare-fun res!1639012 () Bool)

(assert (=> b!4027208 (=> (not res!1639012) (not e!2498426))))

(declare-fun newSuffixResult!27 () List!43243)

(assert (=> b!4027208 (= res!1639012 (= (++!11288 lt!1430705 newSuffixResult!27) (++!11288 prefix!494 newSuffix!27)))))

(declare-fun b!4027209 () Bool)

(declare-fun tp!1223969 () Bool)

(assert (=> b!4027209 (= e!2498417 (and tp_is_empty!20553 tp!1223969))))

(declare-fun b!4027210 () Bool)

(declare-fun tp!1223974 () Bool)

(assert (=> b!4027210 (= e!2498423 (and tp_is_empty!20553 tp!1223974))))

(declare-fun b!4027211 () Bool)

(declare-fun res!1639008 () Bool)

(assert (=> b!4027211 (=> res!1639008 e!2498405)))

(declare-fun isEmpty!25744 (List!43243) Bool)

(assert (=> b!4027211 (= res!1639008 (isEmpty!25744 lt!1430705))))

(declare-fun tp!1223972 () Bool)

(declare-fun b!4027212 () Bool)

(assert (=> b!4027212 (= e!2498413 (and tp!1223972 (inv!57602 (tag!7746 (rule!9944 token!484))) (inv!57606 (transformation!6886 (rule!9944 token!484))) e!2498425))))

(declare-fun b!4027213 () Bool)

(assert (=> b!4027213 (= e!2498422 e!2498426)))

(declare-fun res!1639013 () Bool)

(assert (=> b!4027213 (=> (not res!1639013) (not e!2498426))))

(declare-fun lt!1430717 () Int)

(assert (=> b!4027213 (= res!1639013 (>= lt!1430717 lt!1430707))))

(declare-fun size!32232 (List!43243) Int)

(assert (=> b!4027213 (= lt!1430707 (size!32232 lt!1430705))))

(assert (=> b!4027213 (= lt!1430717 (size!32232 prefix!494))))

(declare-fun list!16040 (BalanceConc!25788) List!43243)

(declare-fun charsOf!4702 (Token!12910) BalanceConc!25788)

(assert (=> b!4027213 (= lt!1430705 (list!16040 (charsOf!4702 token!484)))))

(declare-fun b!4027214 () Bool)

(declare-fun res!1639003 () Bool)

(assert (=> b!4027214 (=> (not res!1639003) (not e!2498422))))

(assert (=> b!4027214 (= res!1639003 (>= (size!32232 suffix!1299) (size!32232 newSuffix!27)))))

(assert (=> b!4027215 (= e!2498410 (and tp!1223967 tp!1223975))))

(declare-fun b!4027216 () Bool)

(declare-fun res!1639000 () Bool)

(assert (=> b!4027216 (=> (not res!1639000) (not e!2498422))))

(declare-fun isEmpty!25745 (List!43245) Bool)

(assert (=> b!4027216 (= res!1639000 (not (isEmpty!25745 rules!2999)))))

(assert (= (and start!379380 res!1639004) b!4027216))

(assert (= (and b!4027216 res!1639000) b!4027204))

(assert (= (and b!4027204 res!1639011) b!4027214))

(assert (= (and b!4027214 res!1639003) b!4027192))

(assert (= (and b!4027192 res!1639007) b!4027213))

(assert (= (and b!4027213 res!1639013) b!4027208))

(assert (= (and b!4027208 res!1639012) b!4027194))

(assert (= (and b!4027194 res!1639010) b!4027207))

(assert (= (and b!4027207 (not res!1639009)) b!4027190))

(assert (= (and b!4027190 (not res!1639001)) b!4027198))

(assert (= (and b!4027198 (not res!1639002)) b!4027199))

(assert (= (and b!4027199 (not res!1639014)) b!4027195))

(assert (= (and b!4027195 (not res!1639006)) b!4027191))

(assert (= (and b!4027191 (not res!1639005)) b!4027211))

(assert (= (and b!4027211 (not res!1639008)) b!4027197))

(assert (= (and b!4027197 (not res!1639015)) b!4027201))

(assert (= (and start!379380 ((_ is Cons!43119) prefix!494)) b!4027193))

(assert (= b!4027212 b!4027202))

(assert (= b!4027203 b!4027212))

(assert (= start!379380 b!4027203))

(assert (= (and start!379380 ((_ is Cons!43119) suffixResult!105)) b!4027210))

(assert (= (and start!379380 ((_ is Cons!43119) suffix!1299)) b!4027209))

(assert (= (and start!379380 ((_ is Cons!43119) newSuffix!27)) b!4027196))

(assert (= b!4027205 b!4027215))

(assert (= b!4027200 b!4027205))

(assert (= (and start!379380 ((_ is Cons!43121) rules!2999)) b!4027200))

(assert (= (and start!379380 ((_ is Cons!43119) newSuffixResult!27)) b!4027206))

(declare-fun m!4618643 () Bool)

(assert (=> b!4027194 m!4618643))

(declare-fun m!4618645 () Bool)

(assert (=> b!4027194 m!4618645))

(declare-fun m!4618647 () Bool)

(assert (=> b!4027201 m!4618647))

(declare-fun m!4618649 () Bool)

(assert (=> b!4027208 m!4618649))

(declare-fun m!4618651 () Bool)

(assert (=> b!4027208 m!4618651))

(declare-fun m!4618653 () Bool)

(assert (=> b!4027195 m!4618653))

(declare-fun m!4618655 () Bool)

(assert (=> b!4027195 m!4618655))

(declare-fun m!4618657 () Bool)

(assert (=> b!4027195 m!4618657))

(declare-fun m!4618659 () Bool)

(assert (=> b!4027195 m!4618659))

(declare-fun m!4618661 () Bool)

(assert (=> b!4027198 m!4618661))

(declare-fun m!4618663 () Bool)

(assert (=> b!4027198 m!4618663))

(declare-fun m!4618665 () Bool)

(assert (=> b!4027198 m!4618665))

(declare-fun m!4618667 () Bool)

(assert (=> b!4027198 m!4618667))

(declare-fun m!4618669 () Bool)

(assert (=> b!4027211 m!4618669))

(declare-fun m!4618671 () Bool)

(assert (=> b!4027216 m!4618671))

(declare-fun m!4618673 () Bool)

(assert (=> b!4027190 m!4618673))

(declare-fun m!4618675 () Bool)

(assert (=> b!4027190 m!4618675))

(declare-fun m!4618677 () Bool)

(assert (=> b!4027190 m!4618677))

(declare-fun m!4618679 () Bool)

(assert (=> b!4027190 m!4618679))

(declare-fun m!4618681 () Bool)

(assert (=> b!4027190 m!4618681))

(declare-fun m!4618683 () Bool)

(assert (=> b!4027203 m!4618683))

(declare-fun m!4618685 () Bool)

(assert (=> b!4027212 m!4618685))

(declare-fun m!4618687 () Bool)

(assert (=> b!4027212 m!4618687))

(declare-fun m!4618689 () Bool)

(assert (=> b!4027197 m!4618689))

(declare-fun m!4618691 () Bool)

(assert (=> b!4027197 m!4618691))

(declare-fun m!4618693 () Bool)

(assert (=> b!4027197 m!4618693))

(declare-fun m!4618695 () Bool)

(assert (=> start!379380 m!4618695))

(declare-fun m!4618697 () Bool)

(assert (=> b!4027205 m!4618697))

(declare-fun m!4618699 () Bool)

(assert (=> b!4027205 m!4618699))

(declare-fun m!4618701 () Bool)

(assert (=> b!4027192 m!4618701))

(declare-fun m!4618703 () Bool)

(assert (=> b!4027214 m!4618703))

(declare-fun m!4618705 () Bool)

(assert (=> b!4027214 m!4618705))

(declare-fun m!4618707 () Bool)

(assert (=> b!4027204 m!4618707))

(declare-fun m!4618709 () Bool)

(assert (=> b!4027213 m!4618709))

(declare-fun m!4618711 () Bool)

(assert (=> b!4027213 m!4618711))

(declare-fun m!4618713 () Bool)

(assert (=> b!4027213 m!4618713))

(assert (=> b!4027213 m!4618713))

(declare-fun m!4618715 () Bool)

(assert (=> b!4027213 m!4618715))

(declare-fun m!4618717 () Bool)

(assert (=> b!4027199 m!4618717))

(declare-fun m!4618719 () Bool)

(assert (=> b!4027199 m!4618719))

(declare-fun m!4618721 () Bool)

(assert (=> b!4027199 m!4618721))

(declare-fun m!4618723 () Bool)

(assert (=> b!4027199 m!4618723))

(declare-fun m!4618725 () Bool)

(assert (=> b!4027207 m!4618725))

(declare-fun m!4618727 () Bool)

(assert (=> b!4027207 m!4618727))

(declare-fun m!4618729 () Bool)

(assert (=> b!4027207 m!4618729))

(declare-fun m!4618731 () Bool)

(assert (=> b!4027207 m!4618731))

(check-sat (not b!4027198) (not b!4027193) (not b!4027209) (not b!4027196) (not b!4027214) b_and!309433 (not b!4027204) tp_is_empty!20553 b_and!309431 (not b!4027194) (not b!4027203) (not b!4027197) (not b_next!112847) (not b!4027206) (not b!4027200) (not b!4027216) (not b!4027199) (not b!4027205) (not b_next!112843) (not b!4027207) (not b_next!112845) (not b!4027195) (not b!4027213) (not b!4027210) (not b!4027192) (not start!379380) (not b!4027190) (not b!4027212) b_and!309435 (not b!4027208) (not b!4027201) (not b_next!112841) (not b!4027211) b_and!309437)
(check-sat (not b_next!112843) b_and!309433 (not b_next!112845) b_and!309431 (not b_next!112847) b_and!309435 (not b_next!112841) b_and!309437)
(get-model)

(declare-fun d!1192770 () Bool)

(declare-fun res!1639020 () Bool)

(declare-fun e!2498429 () Bool)

(assert (=> d!1192770 (=> (not res!1639020) (not e!2498429))))

(declare-fun rulesValid!2678 (LexerInterface!6475 List!43245) Bool)

(assert (=> d!1192770 (= res!1639020 (rulesValid!2678 thiss!21717 rules!2999))))

(assert (=> d!1192770 (= (rulesInvariant!5818 thiss!21717 rules!2999) e!2498429)))

(declare-fun b!4027219 () Bool)

(declare-datatypes ((List!43247 0))(
  ( (Nil!43123) (Cons!43123 (h!48543 String!49298) (t!334042 List!43247)) )
))
(declare-fun noDuplicateTag!2679 (LexerInterface!6475 List!43245 List!43247) Bool)

(assert (=> b!4027219 (= e!2498429 (noDuplicateTag!2679 thiss!21717 rules!2999 Nil!43123))))

(assert (= (and d!1192770 res!1639020) b!4027219))

(declare-fun m!4618733 () Bool)

(assert (=> d!1192770 m!4618733))

(declare-fun m!4618735 () Bool)

(assert (=> b!4027219 m!4618735))

(assert (=> b!4027204 d!1192770))

(declare-fun b!4027322 () Bool)

(declare-fun res!1639090 () Bool)

(declare-fun e!2498484 () Bool)

(assert (=> b!4027322 (=> (not res!1639090) (not e!2498484))))

(declare-fun lt!1430752 () Option!9300)

(declare-fun get!14156 (Option!9300) tuple2!42222)

(assert (=> b!4027322 (= res!1639090 (= (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))) (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752)))))))

(declare-fun b!4027323 () Bool)

(declare-fun e!2498485 () Option!9300)

(declare-fun lt!1430755 () Option!9300)

(declare-fun lt!1430753 () Option!9300)

(assert (=> b!4027323 (= e!2498485 (ite (and ((_ is None!9299) lt!1430755) ((_ is None!9299) lt!1430753)) None!9299 (ite ((_ is None!9299) lt!1430753) lt!1430755 (ite ((_ is None!9299) lt!1430755) lt!1430753 (ite (>= (size!32231 (_1!24245 (v!39685 lt!1430755))) (size!32231 (_1!24245 (v!39685 lt!1430753)))) lt!1430755 lt!1430753)))))))

(declare-fun call!286806 () Option!9300)

(assert (=> b!4027323 (= lt!1430755 call!286806)))

(assert (=> b!4027323 (= lt!1430753 (maxPrefix!3773 thiss!21717 (t!334004 rules!2999) lt!1430712))))

(declare-fun b!4027324 () Bool)

(assert (=> b!4027324 (= e!2498485 call!286806)))

(declare-fun b!4027325 () Bool)

(declare-fun res!1639087 () Bool)

(assert (=> b!4027325 (=> (not res!1639087) (not e!2498484))))

(assert (=> b!4027325 (= res!1639087 (= (++!11288 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))) (_2!24245 (get!14156 lt!1430752))) lt!1430712))))

(declare-fun bm!286801 () Bool)

(declare-fun maxPrefixOneRule!2784 (LexerInterface!6475 Rule!13572 List!43243) Option!9300)

(assert (=> bm!286801 (= call!286806 (maxPrefixOneRule!2784 thiss!21717 (h!48541 rules!2999) lt!1430712))))

(declare-fun b!4027326 () Bool)

(declare-fun res!1639085 () Bool)

(assert (=> b!4027326 (=> (not res!1639085) (not e!2498484))))

(assert (=> b!4027326 (= res!1639085 (< (size!32232 (_2!24245 (get!14156 lt!1430752))) (size!32232 lt!1430712)))))

(declare-fun d!1192772 () Bool)

(declare-fun e!2498483 () Bool)

(assert (=> d!1192772 e!2498483))

(declare-fun res!1639089 () Bool)

(assert (=> d!1192772 (=> res!1639089 e!2498483)))

(declare-fun isEmpty!25746 (Option!9300) Bool)

(assert (=> d!1192772 (= res!1639089 (isEmpty!25746 lt!1430752))))

(assert (=> d!1192772 (= lt!1430752 e!2498485)))

(declare-fun c!695802 () Bool)

(assert (=> d!1192772 (= c!695802 (and ((_ is Cons!43121) rules!2999) ((_ is Nil!43121) (t!334004 rules!2999))))))

(declare-fun lt!1430751 () Unit!62282)

(declare-fun lt!1430754 () Unit!62282)

(assert (=> d!1192772 (= lt!1430751 lt!1430754)))

(assert (=> d!1192772 (isPrefix!3973 lt!1430712 lt!1430712)))

(declare-fun lemmaIsPrefixRefl!2539 (List!43243 List!43243) Unit!62282)

(assert (=> d!1192772 (= lt!1430754 (lemmaIsPrefixRefl!2539 lt!1430712 lt!1430712))))

(declare-fun rulesValidInductive!2510 (LexerInterface!6475 List!43245) Bool)

(assert (=> d!1192772 (rulesValidInductive!2510 thiss!21717 rules!2999)))

(assert (=> d!1192772 (= (maxPrefix!3773 thiss!21717 rules!2999 lt!1430712) lt!1430752)))

(declare-fun b!4027327 () Bool)

(declare-fun res!1639091 () Bool)

(assert (=> b!4027327 (=> (not res!1639091) (not e!2498484))))

(assert (=> b!4027327 (= res!1639091 (= (value!216885 (_1!24245 (get!14156 lt!1430752))) (apply!10075 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752)))))))))

(declare-fun b!4027328 () Bool)

(assert (=> b!4027328 (= e!2498484 (contains!8568 rules!2999 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))

(declare-fun b!4027329 () Bool)

(assert (=> b!4027329 (= e!2498483 e!2498484)))

(declare-fun res!1639088 () Bool)

(assert (=> b!4027329 (=> (not res!1639088) (not e!2498484))))

(declare-fun isDefined!7089 (Option!9300) Bool)

(assert (=> b!4027329 (= res!1639088 (isDefined!7089 lt!1430752))))

(declare-fun b!4027330 () Bool)

(declare-fun res!1639086 () Bool)

(assert (=> b!4027330 (=> (not res!1639086) (not e!2498484))))

(assert (=> b!4027330 (= res!1639086 (matchR!5744 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))

(assert (= (and d!1192772 c!695802) b!4027324))

(assert (= (and d!1192772 (not c!695802)) b!4027323))

(assert (= (or b!4027324 b!4027323) bm!286801))

(assert (= (and d!1192772 (not res!1639089)) b!4027329))

(assert (= (and b!4027329 res!1639088) b!4027322))

(assert (= (and b!4027322 res!1639090) b!4027326))

(assert (= (and b!4027326 res!1639085) b!4027325))

(assert (= (and b!4027325 res!1639087) b!4027327))

(assert (= (and b!4027327 res!1639091) b!4027330))

(assert (= (and b!4027330 res!1639086) b!4027328))

(declare-fun m!4618833 () Bool)

(assert (=> b!4027328 m!4618833))

(declare-fun m!4618835 () Bool)

(assert (=> b!4027328 m!4618835))

(declare-fun m!4618837 () Bool)

(assert (=> b!4027329 m!4618837))

(declare-fun m!4618839 () Bool)

(assert (=> d!1192772 m!4618839))

(declare-fun m!4618841 () Bool)

(assert (=> d!1192772 m!4618841))

(declare-fun m!4618843 () Bool)

(assert (=> d!1192772 m!4618843))

(declare-fun m!4618845 () Bool)

(assert (=> d!1192772 m!4618845))

(assert (=> b!4027330 m!4618833))

(declare-fun m!4618847 () Bool)

(assert (=> b!4027330 m!4618847))

(assert (=> b!4027330 m!4618847))

(declare-fun m!4618849 () Bool)

(assert (=> b!4027330 m!4618849))

(assert (=> b!4027330 m!4618849))

(declare-fun m!4618851 () Bool)

(assert (=> b!4027330 m!4618851))

(assert (=> b!4027327 m!4618833))

(declare-fun m!4618853 () Bool)

(assert (=> b!4027327 m!4618853))

(assert (=> b!4027327 m!4618853))

(declare-fun m!4618855 () Bool)

(assert (=> b!4027327 m!4618855))

(declare-fun m!4618857 () Bool)

(assert (=> bm!286801 m!4618857))

(assert (=> b!4027322 m!4618833))

(assert (=> b!4027322 m!4618847))

(assert (=> b!4027322 m!4618847))

(assert (=> b!4027322 m!4618849))

(declare-fun m!4618859 () Bool)

(assert (=> b!4027323 m!4618859))

(assert (=> b!4027325 m!4618833))

(assert (=> b!4027325 m!4618847))

(assert (=> b!4027325 m!4618847))

(assert (=> b!4027325 m!4618849))

(assert (=> b!4027325 m!4618849))

(declare-fun m!4618861 () Bool)

(assert (=> b!4027325 m!4618861))

(assert (=> b!4027326 m!4618833))

(declare-fun m!4618863 () Bool)

(assert (=> b!4027326 m!4618863))

(declare-fun m!4618865 () Bool)

(assert (=> b!4027326 m!4618865))

(assert (=> b!4027194 d!1192772))

(declare-fun d!1192808 () Bool)

(declare-fun e!2498517 () Bool)

(assert (=> d!1192808 e!2498517))

(declare-fun res!1639124 () Bool)

(assert (=> d!1192808 (=> (not res!1639124) (not e!2498517))))

(declare-fun lt!1430777 () List!43243)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6550 (List!43243) (InoxSet C!23768))

(assert (=> d!1192808 (= res!1639124 (= (content!6550 lt!1430777) ((_ map or) (content!6550 prefix!494) (content!6550 suffix!1299))))))

(declare-fun e!2498516 () List!43243)

(assert (=> d!1192808 (= lt!1430777 e!2498516)))

(declare-fun c!695807 () Bool)

(assert (=> d!1192808 (= c!695807 ((_ is Nil!43119) prefix!494))))

(assert (=> d!1192808 (= (++!11288 prefix!494 suffix!1299) lt!1430777)))

(declare-fun b!4027379 () Bool)

(assert (=> b!4027379 (= e!2498517 (or (not (= suffix!1299 Nil!43119)) (= lt!1430777 prefix!494)))))

(declare-fun b!4027378 () Bool)

(declare-fun res!1639125 () Bool)

(assert (=> b!4027378 (=> (not res!1639125) (not e!2498517))))

(assert (=> b!4027378 (= res!1639125 (= (size!32232 lt!1430777) (+ (size!32232 prefix!494) (size!32232 suffix!1299))))))

(declare-fun b!4027376 () Bool)

(assert (=> b!4027376 (= e!2498516 suffix!1299)))

(declare-fun b!4027377 () Bool)

(assert (=> b!4027377 (= e!2498516 (Cons!43119 (h!48539 prefix!494) (++!11288 (t!334002 prefix!494) suffix!1299)))))

(assert (= (and d!1192808 c!695807) b!4027376))

(assert (= (and d!1192808 (not c!695807)) b!4027377))

(assert (= (and d!1192808 res!1639124) b!4027378))

(assert (= (and b!4027378 res!1639125) b!4027379))

(declare-fun m!4618907 () Bool)

(assert (=> d!1192808 m!4618907))

(declare-fun m!4618909 () Bool)

(assert (=> d!1192808 m!4618909))

(declare-fun m!4618911 () Bool)

(assert (=> d!1192808 m!4618911))

(declare-fun m!4618913 () Bool)

(assert (=> b!4027378 m!4618913))

(assert (=> b!4027378 m!4618711))

(assert (=> b!4027378 m!4618703))

(declare-fun m!4618915 () Bool)

(assert (=> b!4027377 m!4618915))

(assert (=> b!4027194 d!1192808))

(declare-fun d!1192828 () Bool)

(declare-fun lt!1430786 () Int)

(assert (=> d!1192828 (>= lt!1430786 0)))

(declare-fun e!2498528 () Int)

(assert (=> d!1192828 (= lt!1430786 e!2498528)))

(declare-fun c!695814 () Bool)

(assert (=> d!1192828 (= c!695814 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192828 (= (size!32232 lt!1430705) lt!1430786)))

(declare-fun b!4027398 () Bool)

(assert (=> b!4027398 (= e!2498528 0)))

(declare-fun b!4027399 () Bool)

(assert (=> b!4027399 (= e!2498528 (+ 1 (size!32232 (t!334002 lt!1430705))))))

(assert (= (and d!1192828 c!695814) b!4027398))

(assert (= (and d!1192828 (not c!695814)) b!4027399))

(declare-fun m!4618929 () Bool)

(assert (=> b!4027399 m!4618929))

(assert (=> b!4027213 d!1192828))

(declare-fun d!1192836 () Bool)

(declare-fun lt!1430787 () Int)

(assert (=> d!1192836 (>= lt!1430787 0)))

(declare-fun e!2498529 () Int)

(assert (=> d!1192836 (= lt!1430787 e!2498529)))

(declare-fun c!695815 () Bool)

(assert (=> d!1192836 (= c!695815 ((_ is Nil!43119) prefix!494))))

(assert (=> d!1192836 (= (size!32232 prefix!494) lt!1430787)))

(declare-fun b!4027400 () Bool)

(assert (=> b!4027400 (= e!2498529 0)))

(declare-fun b!4027401 () Bool)

(assert (=> b!4027401 (= e!2498529 (+ 1 (size!32232 (t!334002 prefix!494))))))

(assert (= (and d!1192836 c!695815) b!4027400))

(assert (= (and d!1192836 (not c!695815)) b!4027401))

(declare-fun m!4618931 () Bool)

(assert (=> b!4027401 m!4618931))

(assert (=> b!4027213 d!1192836))

(declare-fun d!1192838 () Bool)

(declare-fun list!16041 (Conc!13097) List!43243)

(assert (=> d!1192838 (= (list!16040 (charsOf!4702 token!484)) (list!16041 (c!695780 (charsOf!4702 token!484))))))

(declare-fun bs!590116 () Bool)

(assert (= bs!590116 d!1192838))

(declare-fun m!4618955 () Bool)

(assert (=> bs!590116 m!4618955))

(assert (=> b!4027213 d!1192838))

(declare-fun d!1192846 () Bool)

(declare-fun lt!1430795 () BalanceConc!25788)

(assert (=> d!1192846 (= (list!16040 lt!1430795) (originalCharacters!7486 token!484))))

(declare-fun dynLambda!18282 (Int TokenValue!7116) BalanceConc!25788)

(assert (=> d!1192846 (= lt!1430795 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))

(assert (=> d!1192846 (= (charsOf!4702 token!484) lt!1430795)))

(declare-fun b_lambda!117503 () Bool)

(assert (=> (not b_lambda!117503) (not d!1192846)))

(declare-fun t!334010 () Bool)

(declare-fun tb!242009 () Bool)

(assert (=> (and b!4027215 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334010) tb!242009))

(declare-fun b!4027414 () Bool)

(declare-fun e!2498536 () Bool)

(declare-fun tp!1223982 () Bool)

(declare-fun inv!57609 (Conc!13097) Bool)

(assert (=> b!4027414 (= e!2498536 (and (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))) tp!1223982))))

(declare-fun result!293348 () Bool)

(declare-fun inv!57610 (BalanceConc!25788) Bool)

(assert (=> tb!242009 (= result!293348 (and (inv!57610 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))) e!2498536))))

(assert (= tb!242009 b!4027414))

(declare-fun m!4618957 () Bool)

(assert (=> b!4027414 m!4618957))

(declare-fun m!4618959 () Bool)

(assert (=> tb!242009 m!4618959))

(assert (=> d!1192846 t!334010))

(declare-fun b_and!309447 () Bool)

(assert (= b_and!309433 (and (=> t!334010 result!293348) b_and!309447)))

(declare-fun t!334012 () Bool)

(declare-fun tb!242011 () Bool)

(assert (=> (and b!4027202 (= (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334012) tb!242011))

(declare-fun result!293352 () Bool)

(assert (= result!293352 result!293348))

(assert (=> d!1192846 t!334012))

(declare-fun b_and!309449 () Bool)

(assert (= b_and!309437 (and (=> t!334012 result!293352) b_and!309449)))

(declare-fun m!4618961 () Bool)

(assert (=> d!1192846 m!4618961))

(declare-fun m!4618963 () Bool)

(assert (=> d!1192846 m!4618963))

(assert (=> b!4027213 d!1192846))

(declare-fun d!1192848 () Bool)

(declare-fun e!2498544 () Bool)

(assert (=> d!1192848 e!2498544))

(declare-fun res!1639147 () Bool)

(assert (=> d!1192848 (=> res!1639147 e!2498544)))

(declare-fun lt!1430798 () Bool)

(assert (=> d!1192848 (= res!1639147 (not lt!1430798))))

(declare-fun e!2498543 () Bool)

(assert (=> d!1192848 (= lt!1430798 e!2498543)))

(declare-fun res!1639145 () Bool)

(assert (=> d!1192848 (=> res!1639145 e!2498543)))

(assert (=> d!1192848 (= res!1639145 ((_ is Nil!43119) newSuffix!27))))

(assert (=> d!1192848 (= (isPrefix!3973 newSuffix!27 suffix!1299) lt!1430798)))

(declare-fun b!4027423 () Bool)

(declare-fun e!2498545 () Bool)

(assert (=> b!4027423 (= e!2498543 e!2498545)))

(declare-fun res!1639146 () Bool)

(assert (=> b!4027423 (=> (not res!1639146) (not e!2498545))))

(assert (=> b!4027423 (= res!1639146 (not ((_ is Nil!43119) suffix!1299)))))

(declare-fun b!4027425 () Bool)

(declare-fun tail!6271 (List!43243) List!43243)

(assert (=> b!4027425 (= e!2498545 (isPrefix!3973 (tail!6271 newSuffix!27) (tail!6271 suffix!1299)))))

(declare-fun b!4027426 () Bool)

(assert (=> b!4027426 (= e!2498544 (>= (size!32232 suffix!1299) (size!32232 newSuffix!27)))))

(declare-fun b!4027424 () Bool)

(declare-fun res!1639144 () Bool)

(assert (=> b!4027424 (=> (not res!1639144) (not e!2498545))))

(declare-fun head!8539 (List!43243) C!23768)

(assert (=> b!4027424 (= res!1639144 (= (head!8539 newSuffix!27) (head!8539 suffix!1299)))))

(assert (= (and d!1192848 (not res!1639145)) b!4027423))

(assert (= (and b!4027423 res!1639146) b!4027424))

(assert (= (and b!4027424 res!1639144) b!4027425))

(assert (= (and d!1192848 (not res!1639147)) b!4027426))

(declare-fun m!4618965 () Bool)

(assert (=> b!4027425 m!4618965))

(declare-fun m!4618967 () Bool)

(assert (=> b!4027425 m!4618967))

(assert (=> b!4027425 m!4618965))

(assert (=> b!4027425 m!4618967))

(declare-fun m!4618969 () Bool)

(assert (=> b!4027425 m!4618969))

(assert (=> b!4027426 m!4618703))

(assert (=> b!4027426 m!4618705))

(declare-fun m!4618971 () Bool)

(assert (=> b!4027424 m!4618971))

(declare-fun m!4618973 () Bool)

(assert (=> b!4027424 m!4618973))

(assert (=> b!4027192 d!1192848))

(declare-fun b!4027439 () Bool)

(declare-fun e!2498553 () Bool)

(declare-fun e!2498552 () Bool)

(assert (=> b!4027439 (= e!2498553 e!2498552)))

(declare-fun c!695822 () Bool)

(assert (=> b!4027439 (= c!695822 ((_ is IntegerValue!21349) (value!216885 token!484)))))

(declare-fun b!4027440 () Bool)

(declare-fun res!1639150 () Bool)

(declare-fun e!2498554 () Bool)

(assert (=> b!4027440 (=> res!1639150 e!2498554)))

(assert (=> b!4027440 (= res!1639150 (not ((_ is IntegerValue!21350) (value!216885 token!484))))))

(assert (=> b!4027440 (= e!2498552 e!2498554)))

(declare-fun b!4027441 () Bool)

(declare-fun inv!15 (TokenValue!7116) Bool)

(assert (=> b!4027441 (= e!2498554 (inv!15 (value!216885 token!484)))))

(declare-fun d!1192850 () Bool)

(declare-fun c!695823 () Bool)

(assert (=> d!1192850 (= c!695823 ((_ is IntegerValue!21348) (value!216885 token!484)))))

(assert (=> d!1192850 (= (inv!21 (value!216885 token!484)) e!2498553)))

(declare-fun b!4027442 () Bool)

(declare-fun inv!16 (TokenValue!7116) Bool)

(assert (=> b!4027442 (= e!2498553 (inv!16 (value!216885 token!484)))))

(declare-fun b!4027443 () Bool)

(declare-fun inv!17 (TokenValue!7116) Bool)

(assert (=> b!4027443 (= e!2498552 (inv!17 (value!216885 token!484)))))

(assert (= (and d!1192850 c!695823) b!4027442))

(assert (= (and d!1192850 (not c!695823)) b!4027439))

(assert (= (and b!4027439 c!695822) b!4027443))

(assert (= (and b!4027439 (not c!695822)) b!4027440))

(assert (= (and b!4027440 (not res!1639150)) b!4027441))

(declare-fun m!4618975 () Bool)

(assert (=> b!4027441 m!4618975))

(declare-fun m!4618977 () Bool)

(assert (=> b!4027442 m!4618977))

(declare-fun m!4618979 () Bool)

(assert (=> b!4027443 m!4618979))

(assert (=> b!4027203 d!1192850))

(declare-fun d!1192852 () Bool)

(declare-fun lt!1430809 () Int)

(assert (=> d!1192852 (>= lt!1430809 0)))

(declare-fun e!2498557 () Int)

(assert (=> d!1192852 (= lt!1430809 e!2498557)))

(declare-fun c!695826 () Bool)

(assert (=> d!1192852 (= c!695826 ((_ is Nil!43119) suffix!1299))))

(assert (=> d!1192852 (= (size!32232 suffix!1299) lt!1430809)))

(declare-fun b!4027446 () Bool)

(assert (=> b!4027446 (= e!2498557 0)))

(declare-fun b!4027447 () Bool)

(assert (=> b!4027447 (= e!2498557 (+ 1 (size!32232 (t!334002 suffix!1299))))))

(assert (= (and d!1192852 c!695826) b!4027446))

(assert (= (and d!1192852 (not c!695826)) b!4027447))

(declare-fun m!4618981 () Bool)

(assert (=> b!4027447 m!4618981))

(assert (=> b!4027214 d!1192852))

(declare-fun d!1192854 () Bool)

(declare-fun lt!1430810 () Int)

(assert (=> d!1192854 (>= lt!1430810 0)))

(declare-fun e!2498558 () Int)

(assert (=> d!1192854 (= lt!1430810 e!2498558)))

(declare-fun c!695827 () Bool)

(assert (=> d!1192854 (= c!695827 ((_ is Nil!43119) newSuffix!27))))

(assert (=> d!1192854 (= (size!32232 newSuffix!27) lt!1430810)))

(declare-fun b!4027448 () Bool)

(assert (=> b!4027448 (= e!2498558 0)))

(declare-fun b!4027449 () Bool)

(assert (=> b!4027449 (= e!2498558 (+ 1 (size!32232 (t!334002 newSuffix!27))))))

(assert (= (and d!1192854 c!695827) b!4027448))

(assert (= (and d!1192854 (not c!695827)) b!4027449))

(declare-fun m!4618983 () Bool)

(assert (=> b!4027449 m!4618983))

(assert (=> b!4027214 d!1192854))

(declare-fun d!1192856 () Bool)

(declare-fun e!2498564 () Bool)

(assert (=> d!1192856 e!2498564))

(declare-fun res!1639162 () Bool)

(assert (=> d!1192856 (=> (not res!1639162) (not e!2498564))))

(declare-fun lt!1430811 () List!43243)

(assert (=> d!1192856 (= res!1639162 (= (content!6550 lt!1430811) ((_ map or) (content!6550 lt!1430705) (content!6550 suffixResult!105))))))

(declare-fun e!2498563 () List!43243)

(assert (=> d!1192856 (= lt!1430811 e!2498563)))

(declare-fun c!695828 () Bool)

(assert (=> d!1192856 (= c!695828 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192856 (= (++!11288 lt!1430705 suffixResult!105) lt!1430811)))

(declare-fun b!4027463 () Bool)

(assert (=> b!4027463 (= e!2498564 (or (not (= suffixResult!105 Nil!43119)) (= lt!1430811 lt!1430705)))))

(declare-fun b!4027462 () Bool)

(declare-fun res!1639164 () Bool)

(assert (=> b!4027462 (=> (not res!1639164) (not e!2498564))))

(assert (=> b!4027462 (= res!1639164 (= (size!32232 lt!1430811) (+ (size!32232 lt!1430705) (size!32232 suffixResult!105))))))

(declare-fun b!4027460 () Bool)

(assert (=> b!4027460 (= e!2498563 suffixResult!105)))

(declare-fun b!4027461 () Bool)

(assert (=> b!4027461 (= e!2498563 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) suffixResult!105)))))

(assert (= (and d!1192856 c!695828) b!4027460))

(assert (= (and d!1192856 (not c!695828)) b!4027461))

(assert (= (and d!1192856 res!1639162) b!4027462))

(assert (= (and b!4027462 res!1639164) b!4027463))

(declare-fun m!4618985 () Bool)

(assert (=> d!1192856 m!4618985))

(declare-fun m!4618987 () Bool)

(assert (=> d!1192856 m!4618987))

(declare-fun m!4618989 () Bool)

(assert (=> d!1192856 m!4618989))

(declare-fun m!4618991 () Bool)

(assert (=> b!4027462 m!4618991))

(assert (=> b!4027462 m!4618709))

(declare-fun m!4618993 () Bool)

(assert (=> b!4027462 m!4618993))

(declare-fun m!4618995 () Bool)

(assert (=> b!4027461 m!4618995))

(assert (=> b!4027207 d!1192856))

(declare-fun d!1192858 () Bool)

(declare-fun e!2498570 () Bool)

(assert (=> d!1192858 e!2498570))

(declare-fun res!1639176 () Bool)

(assert (=> d!1192858 (=> (not res!1639176) (not e!2498570))))

(declare-fun semiInverseModEq!2944 (Int Int) Bool)

(assert (=> d!1192858 (= res!1639176 (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))))))

(declare-fun Unit!62284 () Unit!62282)

(assert (=> d!1192858 (= (lemmaInv!1095 (transformation!6886 (rule!9944 token!484))) Unit!62284)))

(declare-fun b!4027479 () Bool)

(declare-fun equivClasses!2843 (Int Int) Bool)

(assert (=> b!4027479 (= e!2498570 (equivClasses!2843 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))))))

(assert (= (and d!1192858 res!1639176) b!4027479))

(declare-fun m!4618997 () Bool)

(assert (=> d!1192858 m!4618997))

(declare-fun m!4618999 () Bool)

(assert (=> b!4027479 m!4618999))

(assert (=> b!4027207 d!1192858))

(declare-fun d!1192860 () Bool)

(declare-fun res!1639183 () Bool)

(declare-fun e!2498575 () Bool)

(assert (=> d!1192860 (=> (not res!1639183) (not e!2498575))))

(declare-fun validRegex!5336 (Regex!11791) Bool)

(assert (=> d!1192860 (= res!1639183 (validRegex!5336 (regex!6886 (rule!9944 token!484))))))

(assert (=> d!1192860 (= (ruleValid!2816 thiss!21717 (rule!9944 token!484)) e!2498575)))

(declare-fun b!4027488 () Bool)

(declare-fun res!1639184 () Bool)

(assert (=> b!4027488 (=> (not res!1639184) (not e!2498575))))

(declare-fun nullable!4136 (Regex!11791) Bool)

(assert (=> b!4027488 (= res!1639184 (not (nullable!4136 (regex!6886 (rule!9944 token!484)))))))

(declare-fun b!4027489 () Bool)

(assert (=> b!4027489 (= e!2498575 (not (= (tag!7746 (rule!9944 token!484)) (String!49299 ""))))))

(assert (= (and d!1192860 res!1639183) b!4027488))

(assert (= (and b!4027488 res!1639184) b!4027489))

(declare-fun m!4619039 () Bool)

(assert (=> d!1192860 m!4619039))

(declare-fun m!4619041 () Bool)

(assert (=> b!4027488 m!4619041))

(assert (=> b!4027207 d!1192860))

(declare-fun d!1192868 () Bool)

(assert (=> d!1192868 (ruleValid!2816 thiss!21717 (rule!9944 token!484))))

(declare-fun lt!1430821 () Unit!62282)

(declare-fun choose!24364 (LexerInterface!6475 Rule!13572 List!43245) Unit!62282)

(assert (=> d!1192868 (= lt!1430821 (choose!24364 thiss!21717 (rule!9944 token!484) rules!2999))))

(assert (=> d!1192868 (contains!8568 rules!2999 (rule!9944 token!484))))

(assert (=> d!1192868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1886 thiss!21717 (rule!9944 token!484) rules!2999) lt!1430821)))

(declare-fun bs!590117 () Bool)

(assert (= bs!590117 d!1192868))

(assert (=> bs!590117 m!4618729))

(declare-fun m!4619059 () Bool)

(assert (=> bs!590117 m!4619059))

(assert (=> bs!590117 m!4618653))

(assert (=> b!4027207 d!1192868))

(declare-fun d!1192874 () Bool)

(assert (=> d!1192874 (= (inv!57602 (tag!7746 (h!48541 rules!2999))) (= (mod (str.len (value!216884 (tag!7746 (h!48541 rules!2999)))) 2) 0))))

(assert (=> b!4027205 d!1192874))

(declare-fun d!1192878 () Bool)

(declare-fun res!1639201 () Bool)

(declare-fun e!2498595 () Bool)

(assert (=> d!1192878 (=> (not res!1639201) (not e!2498595))))

(assert (=> d!1192878 (= res!1639201 (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (h!48541 rules!2999)))))))

(assert (=> d!1192878 (= (inv!57606 (transformation!6886 (h!48541 rules!2999))) e!2498595)))

(declare-fun b!4027520 () Bool)

(assert (=> b!4027520 (= e!2498595 (equivClasses!2843 (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (h!48541 rules!2999)))))))

(assert (= (and d!1192878 res!1639201) b!4027520))

(declare-fun m!4619067 () Bool)

(assert (=> d!1192878 m!4619067))

(declare-fun m!4619069 () Bool)

(assert (=> b!4027520 m!4619069))

(assert (=> b!4027205 d!1192878))

(declare-fun d!1192884 () Bool)

(assert (=> d!1192884 (= (isEmpty!25745 rules!2999) ((_ is Nil!43121) rules!2999))))

(assert (=> b!4027216 d!1192884))

(declare-fun d!1192890 () Bool)

(declare-fun lt!1430830 () Bool)

(declare-fun content!6552 (List!43245) (InoxSet Rule!13572))

(assert (=> d!1192890 (= lt!1430830 (select (content!6552 rules!2999) (rule!9944 token!484)))))

(declare-fun e!2498607 () Bool)

(assert (=> d!1192890 (= lt!1430830 e!2498607)))

(declare-fun res!1639212 () Bool)

(assert (=> d!1192890 (=> (not res!1639212) (not e!2498607))))

(assert (=> d!1192890 (= res!1639212 ((_ is Cons!43121) rules!2999))))

(assert (=> d!1192890 (= (contains!8568 rules!2999 (rule!9944 token!484)) lt!1430830)))

(declare-fun b!4027532 () Bool)

(declare-fun e!2498608 () Bool)

(assert (=> b!4027532 (= e!2498607 e!2498608)))

(declare-fun res!1639211 () Bool)

(assert (=> b!4027532 (=> res!1639211 e!2498608)))

(assert (=> b!4027532 (= res!1639211 (= (h!48541 rules!2999) (rule!9944 token!484)))))

(declare-fun b!4027533 () Bool)

(assert (=> b!4027533 (= e!2498608 (contains!8568 (t!334004 rules!2999) (rule!9944 token!484)))))

(assert (= (and d!1192890 res!1639212) b!4027532))

(assert (= (and b!4027532 (not res!1639211)) b!4027533))

(declare-fun m!4619085 () Bool)

(assert (=> d!1192890 m!4619085))

(declare-fun m!4619087 () Bool)

(assert (=> d!1192890 m!4619087))

(declare-fun m!4619089 () Bool)

(assert (=> b!4027533 m!4619089))

(assert (=> b!4027195 d!1192890))

(declare-fun d!1192896 () Bool)

(assert (=> d!1192896 (= lt!1430721 suffixResult!105)))

(declare-fun lt!1430833 () Unit!62282)

(declare-fun choose!24366 (List!43243 List!43243 List!43243 List!43243 List!43243) Unit!62282)

(assert (=> d!1192896 (= lt!1430833 (choose!24366 lt!1430705 lt!1430721 lt!1430705 suffixResult!105 lt!1430712))))

(assert (=> d!1192896 (isPrefix!3973 lt!1430705 lt!1430712)))

(assert (=> d!1192896 (= (lemmaSamePrefixThenSameSuffix!2134 lt!1430705 lt!1430721 lt!1430705 suffixResult!105 lt!1430712) lt!1430833)))

(declare-fun bs!590119 () Bool)

(assert (= bs!590119 d!1192896))

(declare-fun m!4619091 () Bool)

(assert (=> bs!590119 m!4619091))

(assert (=> bs!590119 m!4618679))

(assert (=> b!4027195 d!1192896))

(declare-fun d!1192898 () Bool)

(declare-fun e!2498610 () Bool)

(assert (=> d!1192898 e!2498610))

(declare-fun res!1639216 () Bool)

(assert (=> d!1192898 (=> res!1639216 e!2498610)))

(declare-fun lt!1430834 () Bool)

(assert (=> d!1192898 (= res!1639216 (not lt!1430834))))

(declare-fun e!2498609 () Bool)

(assert (=> d!1192898 (= lt!1430834 e!2498609)))

(declare-fun res!1639214 () Bool)

(assert (=> d!1192898 (=> res!1639214 e!2498609)))

(assert (=> d!1192898 (= res!1639214 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192898 (= (isPrefix!3973 lt!1430705 lt!1430711) lt!1430834)))

(declare-fun b!4027534 () Bool)

(declare-fun e!2498611 () Bool)

(assert (=> b!4027534 (= e!2498609 e!2498611)))

(declare-fun res!1639215 () Bool)

(assert (=> b!4027534 (=> (not res!1639215) (not e!2498611))))

(assert (=> b!4027534 (= res!1639215 (not ((_ is Nil!43119) lt!1430711)))))

(declare-fun b!4027536 () Bool)

(assert (=> b!4027536 (= e!2498611 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430711)))))

(declare-fun b!4027537 () Bool)

(assert (=> b!4027537 (= e!2498610 (>= (size!32232 lt!1430711) (size!32232 lt!1430705)))))

(declare-fun b!4027535 () Bool)

(declare-fun res!1639213 () Bool)

(assert (=> b!4027535 (=> (not res!1639213) (not e!2498611))))

(assert (=> b!4027535 (= res!1639213 (= (head!8539 lt!1430705) (head!8539 lt!1430711)))))

(assert (= (and d!1192898 (not res!1639214)) b!4027534))

(assert (= (and b!4027534 res!1639215) b!4027535))

(assert (= (and b!4027535 res!1639213) b!4027536))

(assert (= (and d!1192898 (not res!1639216)) b!4027537))

(declare-fun m!4619093 () Bool)

(assert (=> b!4027536 m!4619093))

(declare-fun m!4619095 () Bool)

(assert (=> b!4027536 m!4619095))

(assert (=> b!4027536 m!4619093))

(assert (=> b!4027536 m!4619095))

(declare-fun m!4619097 () Bool)

(assert (=> b!4027536 m!4619097))

(declare-fun m!4619099 () Bool)

(assert (=> b!4027537 m!4619099))

(assert (=> b!4027537 m!4618709))

(declare-fun m!4619101 () Bool)

(assert (=> b!4027535 m!4619101))

(declare-fun m!4619103 () Bool)

(assert (=> b!4027535 m!4619103))

(assert (=> b!4027195 d!1192898))

(declare-fun d!1192900 () Bool)

(assert (=> d!1192900 (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 lt!1430721))))

(declare-fun lt!1430837 () Unit!62282)

(declare-fun choose!24367 (List!43243 List!43243) Unit!62282)

(assert (=> d!1192900 (= lt!1430837 (choose!24367 lt!1430705 lt!1430721))))

(assert (=> d!1192900 (= (lemmaConcatTwoListThenFirstIsPrefix!2808 lt!1430705 lt!1430721) lt!1430837)))

(declare-fun bs!590120 () Bool)

(assert (= bs!590120 d!1192900))

(assert (=> bs!590120 m!4618717))

(assert (=> bs!590120 m!4618717))

(declare-fun m!4619105 () Bool)

(assert (=> bs!590120 m!4619105))

(declare-fun m!4619107 () Bool)

(assert (=> bs!590120 m!4619107))

(assert (=> b!4027195 d!1192900))

(declare-fun d!1192902 () Bool)

(declare-fun e!2498613 () Bool)

(assert (=> d!1192902 e!2498613))

(declare-fun res!1639217 () Bool)

(assert (=> d!1192902 (=> (not res!1639217) (not e!2498613))))

(declare-fun lt!1430838 () List!43243)

(assert (=> d!1192902 (= res!1639217 (= (content!6550 lt!1430838) ((_ map or) (content!6550 lt!1430705) (content!6550 lt!1430721))))))

(declare-fun e!2498612 () List!43243)

(assert (=> d!1192902 (= lt!1430838 e!2498612)))

(declare-fun c!695839 () Bool)

(assert (=> d!1192902 (= c!695839 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192902 (= (++!11288 lt!1430705 lt!1430721) lt!1430838)))

(declare-fun b!4027541 () Bool)

(assert (=> b!4027541 (= e!2498613 (or (not (= lt!1430721 Nil!43119)) (= lt!1430838 lt!1430705)))))

(declare-fun b!4027540 () Bool)

(declare-fun res!1639218 () Bool)

(assert (=> b!4027540 (=> (not res!1639218) (not e!2498613))))

(assert (=> b!4027540 (= res!1639218 (= (size!32232 lt!1430838) (+ (size!32232 lt!1430705) (size!32232 lt!1430721))))))

(declare-fun b!4027538 () Bool)

(assert (=> b!4027538 (= e!2498612 lt!1430721)))

(declare-fun b!4027539 () Bool)

(assert (=> b!4027539 (= e!2498612 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) lt!1430721)))))

(assert (= (and d!1192902 c!695839) b!4027538))

(assert (= (and d!1192902 (not c!695839)) b!4027539))

(assert (= (and d!1192902 res!1639217) b!4027540))

(assert (= (and b!4027540 res!1639218) b!4027541))

(declare-fun m!4619109 () Bool)

(assert (=> d!1192902 m!4619109))

(assert (=> d!1192902 m!4618987))

(declare-fun m!4619111 () Bool)

(assert (=> d!1192902 m!4619111))

(declare-fun m!4619113 () Bool)

(assert (=> b!4027540 m!4619113))

(assert (=> b!4027540 m!4618709))

(declare-fun m!4619115 () Bool)

(assert (=> b!4027540 m!4619115))

(declare-fun m!4619117 () Bool)

(assert (=> b!4027539 m!4619117))

(assert (=> b!4027199 d!1192902))

(declare-fun d!1192904 () Bool)

(declare-fun e!2498615 () Bool)

(assert (=> d!1192904 e!2498615))

(declare-fun res!1639219 () Bool)

(assert (=> d!1192904 (=> (not res!1639219) (not e!2498615))))

(declare-fun lt!1430839 () List!43243)

(assert (=> d!1192904 (= res!1639219 (= (content!6550 lt!1430839) ((_ map or) (content!6550 lt!1430713) (content!6550 suffix!1299))))))

(declare-fun e!2498614 () List!43243)

(assert (=> d!1192904 (= lt!1430839 e!2498614)))

(declare-fun c!695840 () Bool)

(assert (=> d!1192904 (= c!695840 ((_ is Nil!43119) lt!1430713))))

(assert (=> d!1192904 (= (++!11288 lt!1430713 suffix!1299) lt!1430839)))

(declare-fun b!4027545 () Bool)

(assert (=> b!4027545 (= e!2498615 (or (not (= suffix!1299 Nil!43119)) (= lt!1430839 lt!1430713)))))

(declare-fun b!4027544 () Bool)

(declare-fun res!1639220 () Bool)

(assert (=> b!4027544 (=> (not res!1639220) (not e!2498615))))

(assert (=> b!4027544 (= res!1639220 (= (size!32232 lt!1430839) (+ (size!32232 lt!1430713) (size!32232 suffix!1299))))))

(declare-fun b!4027542 () Bool)

(assert (=> b!4027542 (= e!2498614 suffix!1299)))

(declare-fun b!4027543 () Bool)

(assert (=> b!4027543 (= e!2498614 (Cons!43119 (h!48539 lt!1430713) (++!11288 (t!334002 lt!1430713) suffix!1299)))))

(assert (= (and d!1192904 c!695840) b!4027542))

(assert (= (and d!1192904 (not c!695840)) b!4027543))

(assert (= (and d!1192904 res!1639219) b!4027544))

(assert (= (and b!4027544 res!1639220) b!4027545))

(declare-fun m!4619119 () Bool)

(assert (=> d!1192904 m!4619119))

(declare-fun m!4619121 () Bool)

(assert (=> d!1192904 m!4619121))

(assert (=> d!1192904 m!4618911))

(declare-fun m!4619123 () Bool)

(assert (=> b!4027544 m!4619123))

(declare-fun m!4619125 () Bool)

(assert (=> b!4027544 m!4619125))

(assert (=> b!4027544 m!4618703))

(declare-fun m!4619127 () Bool)

(assert (=> b!4027543 m!4619127))

(assert (=> b!4027199 d!1192904))

(declare-fun d!1192906 () Bool)

(declare-fun e!2498617 () Bool)

(assert (=> d!1192906 e!2498617))

(declare-fun res!1639221 () Bool)

(assert (=> d!1192906 (=> (not res!1639221) (not e!2498617))))

(declare-fun lt!1430840 () List!43243)

(assert (=> d!1192906 (= res!1639221 (= (content!6550 lt!1430840) ((_ map or) (content!6550 lt!1430716) (content!6550 suffix!1299))))))

(declare-fun e!2498616 () List!43243)

(assert (=> d!1192906 (= lt!1430840 e!2498616)))

(declare-fun c!695841 () Bool)

(assert (=> d!1192906 (= c!695841 ((_ is Nil!43119) lt!1430716))))

(assert (=> d!1192906 (= (++!11288 lt!1430716 suffix!1299) lt!1430840)))

(declare-fun b!4027549 () Bool)

(assert (=> b!4027549 (= e!2498617 (or (not (= suffix!1299 Nil!43119)) (= lt!1430840 lt!1430716)))))

(declare-fun b!4027548 () Bool)

(declare-fun res!1639222 () Bool)

(assert (=> b!4027548 (=> (not res!1639222) (not e!2498617))))

(assert (=> b!4027548 (= res!1639222 (= (size!32232 lt!1430840) (+ (size!32232 lt!1430716) (size!32232 suffix!1299))))))

(declare-fun b!4027546 () Bool)

(assert (=> b!4027546 (= e!2498616 suffix!1299)))

(declare-fun b!4027547 () Bool)

(assert (=> b!4027547 (= e!2498616 (Cons!43119 (h!48539 lt!1430716) (++!11288 (t!334002 lt!1430716) suffix!1299)))))

(assert (= (and d!1192906 c!695841) b!4027546))

(assert (= (and d!1192906 (not c!695841)) b!4027547))

(assert (= (and d!1192906 res!1639221) b!4027548))

(assert (= (and b!4027548 res!1639222) b!4027549))

(declare-fun m!4619129 () Bool)

(assert (=> d!1192906 m!4619129))

(declare-fun m!4619131 () Bool)

(assert (=> d!1192906 m!4619131))

(assert (=> d!1192906 m!4618911))

(declare-fun m!4619133 () Bool)

(assert (=> b!4027548 m!4619133))

(declare-fun m!4619135 () Bool)

(assert (=> b!4027548 m!4619135))

(assert (=> b!4027548 m!4618703))

(declare-fun m!4619137 () Bool)

(assert (=> b!4027547 m!4619137))

(assert (=> b!4027199 d!1192906))

(declare-fun d!1192908 () Bool)

(assert (=> d!1192908 (= (++!11288 (++!11288 lt!1430705 lt!1430716) suffix!1299) (++!11288 lt!1430705 (++!11288 lt!1430716 suffix!1299)))))

(declare-fun lt!1430843 () Unit!62282)

(declare-fun choose!24368 (List!43243 List!43243 List!43243) Unit!62282)

(assert (=> d!1192908 (= lt!1430843 (choose!24368 lt!1430705 lt!1430716 suffix!1299))))

(assert (=> d!1192908 (= (lemmaConcatAssociativity!2590 lt!1430705 lt!1430716 suffix!1299) lt!1430843)))

(declare-fun bs!590121 () Bool)

(assert (= bs!590121 d!1192908))

(assert (=> bs!590121 m!4618721))

(declare-fun m!4619139 () Bool)

(assert (=> bs!590121 m!4619139))

(assert (=> bs!590121 m!4618661))

(declare-fun m!4619141 () Bool)

(assert (=> bs!590121 m!4619141))

(assert (=> bs!590121 m!4618721))

(assert (=> bs!590121 m!4618661))

(declare-fun m!4619143 () Bool)

(assert (=> bs!590121 m!4619143))

(assert (=> b!4027199 d!1192908))

(declare-fun d!1192910 () Bool)

(declare-fun dynLambda!18283 (Int BalanceConc!25788) TokenValue!7116)

(assert (=> d!1192910 (= (apply!10075 (transformation!6886 (rule!9944 token!484)) lt!1430704) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))

(declare-fun b_lambda!117507 () Bool)

(assert (=> (not b_lambda!117507) (not d!1192910)))

(declare-fun tb!242017 () Bool)

(declare-fun t!334018 () Bool)

(assert (=> (and b!4027215 (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) t!334018) tb!242017))

(declare-fun result!293360 () Bool)

(assert (=> tb!242017 (= result!293360 (inv!21 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(declare-fun m!4619145 () Bool)

(assert (=> tb!242017 m!4619145))

(assert (=> d!1192910 t!334018))

(declare-fun b_and!309455 () Bool)

(assert (= b_and!309431 (and (=> t!334018 result!293360) b_and!309455)))

(declare-fun t!334020 () Bool)

(declare-fun tb!242019 () Bool)

(assert (=> (and b!4027202 (= (toValue!9406 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) t!334020) tb!242019))

(declare-fun result!293364 () Bool)

(assert (= result!293364 result!293360))

(assert (=> d!1192910 t!334020))

(declare-fun b_and!309457 () Bool)

(assert (= b_and!309435 (and (=> t!334020 result!293364) b_and!309457)))

(declare-fun m!4619147 () Bool)

(assert (=> d!1192910 m!4619147))

(assert (=> b!4027197 d!1192910))

(declare-fun b!4027601 () Bool)

(declare-fun e!2498651 () Bool)

(assert (=> b!4027601 (= e!2498651 true)))

(declare-fun d!1192912 () Bool)

(assert (=> d!1192912 e!2498651))

(assert (= d!1192912 b!4027601))

(declare-fun order!22565 () Int)

(declare-fun order!22567 () Int)

(declare-fun lambda!127195 () Int)

(declare-fun dynLambda!18284 (Int Int) Int)

(declare-fun dynLambda!18285 (Int Int) Int)

(assert (=> b!4027601 (< (dynLambda!18284 order!22565 (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (dynLambda!18285 order!22567 lambda!127195))))

(declare-fun order!22569 () Int)

(declare-fun dynLambda!18286 (Int Int) Int)

(assert (=> b!4027601 (< (dynLambda!18286 order!22569 (toChars!9265 (transformation!6886 (rule!9944 token!484)))) (dynLambda!18285 order!22567 lambda!127195))))

(assert (=> d!1192912 (= (list!16040 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))) (list!16040 lt!1430704))))

(declare-fun lt!1430847 () Unit!62282)

(declare-fun ForallOf!814 (Int BalanceConc!25788) Unit!62282)

(assert (=> d!1192912 (= lt!1430847 (ForallOf!814 lambda!127195 lt!1430704))))

(assert (=> d!1192912 (= (lemmaSemiInverse!1893 (transformation!6886 (rule!9944 token!484)) lt!1430704) lt!1430847)))

(declare-fun b_lambda!117523 () Bool)

(assert (=> (not b_lambda!117523) (not d!1192912)))

(declare-fun t!334032 () Bool)

(declare-fun tb!242031 () Bool)

(assert (=> (and b!4027215 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334032) tb!242031))

(declare-fun tp!1224024 () Bool)

(declare-fun e!2498652 () Bool)

(declare-fun b!4027602 () Bool)

(assert (=> b!4027602 (= e!2498652 (and (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))) tp!1224024))))

(declare-fun result!293382 () Bool)

(assert (=> tb!242031 (= result!293382 (and (inv!57610 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))) e!2498652))))

(assert (= tb!242031 b!4027602))

(declare-fun m!4619167 () Bool)

(assert (=> b!4027602 m!4619167))

(declare-fun m!4619169 () Bool)

(assert (=> tb!242031 m!4619169))

(assert (=> d!1192912 t!334032))

(declare-fun b_and!309471 () Bool)

(assert (= b_and!309447 (and (=> t!334032 result!293382) b_and!309471)))

(declare-fun t!334034 () Bool)

(declare-fun tb!242033 () Bool)

(assert (=> (and b!4027202 (= (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334034) tb!242033))

(declare-fun result!293384 () Bool)

(assert (= result!293384 result!293382))

(assert (=> d!1192912 t!334034))

(declare-fun b_and!309473 () Bool)

(assert (= b_and!309449 (and (=> t!334034 result!293384) b_and!309473)))

(declare-fun b_lambda!117525 () Bool)

(assert (=> (not b_lambda!117525) (not d!1192912)))

(assert (=> d!1192912 t!334018))

(declare-fun b_and!309475 () Bool)

(assert (= b_and!309455 (and (=> t!334018 result!293360) b_and!309475)))

(assert (=> d!1192912 t!334020))

(declare-fun b_and!309477 () Bool)

(assert (= b_and!309457 (and (=> t!334020 result!293364) b_and!309477)))

(declare-fun m!4619171 () Bool)

(assert (=> d!1192912 m!4619171))

(assert (=> d!1192912 m!4619147))

(declare-fun m!4619173 () Bool)

(assert (=> d!1192912 m!4619173))

(assert (=> d!1192912 m!4619173))

(declare-fun m!4619175 () Bool)

(assert (=> d!1192912 m!4619175))

(declare-fun m!4619177 () Bool)

(assert (=> d!1192912 m!4619177))

(assert (=> d!1192912 m!4619147))

(assert (=> b!4027197 d!1192912))

(declare-fun d!1192916 () Bool)

(declare-fun fromListB!2329 (List!43243) BalanceConc!25788)

(assert (=> d!1192916 (= (seqFromList!5103 lt!1430705) (fromListB!2329 lt!1430705))))

(declare-fun bs!590123 () Bool)

(assert (= bs!590123 d!1192916))

(declare-fun m!4619179 () Bool)

(assert (=> bs!590123 m!4619179))

(assert (=> b!4027197 d!1192916))

(declare-fun d!1192918 () Bool)

(declare-fun e!2498654 () Bool)

(assert (=> d!1192918 e!2498654))

(declare-fun res!1639223 () Bool)

(assert (=> d!1192918 (=> (not res!1639223) (not e!2498654))))

(declare-fun lt!1430848 () List!43243)

(assert (=> d!1192918 (= res!1639223 (= (content!6550 lt!1430848) ((_ map or) (content!6550 lt!1430705) (content!6550 newSuffixResult!27))))))

(declare-fun e!2498653 () List!43243)

(assert (=> d!1192918 (= lt!1430848 e!2498653)))

(declare-fun c!695843 () Bool)

(assert (=> d!1192918 (= c!695843 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192918 (= (++!11288 lt!1430705 newSuffixResult!27) lt!1430848)))

(declare-fun b!4027606 () Bool)

(assert (=> b!4027606 (= e!2498654 (or (not (= newSuffixResult!27 Nil!43119)) (= lt!1430848 lt!1430705)))))

(declare-fun b!4027605 () Bool)

(declare-fun res!1639224 () Bool)

(assert (=> b!4027605 (=> (not res!1639224) (not e!2498654))))

(assert (=> b!4027605 (= res!1639224 (= (size!32232 lt!1430848) (+ (size!32232 lt!1430705) (size!32232 newSuffixResult!27))))))

(declare-fun b!4027603 () Bool)

(assert (=> b!4027603 (= e!2498653 newSuffixResult!27)))

(declare-fun b!4027604 () Bool)

(assert (=> b!4027604 (= e!2498653 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) newSuffixResult!27)))))

(assert (= (and d!1192918 c!695843) b!4027603))

(assert (= (and d!1192918 (not c!695843)) b!4027604))

(assert (= (and d!1192918 res!1639223) b!4027605))

(assert (= (and b!4027605 res!1639224) b!4027606))

(declare-fun m!4619181 () Bool)

(assert (=> d!1192918 m!4619181))

(assert (=> d!1192918 m!4618987))

(declare-fun m!4619183 () Bool)

(assert (=> d!1192918 m!4619183))

(declare-fun m!4619185 () Bool)

(assert (=> b!4027605 m!4619185))

(assert (=> b!4027605 m!4618709))

(declare-fun m!4619187 () Bool)

(assert (=> b!4027605 m!4619187))

(declare-fun m!4619189 () Bool)

(assert (=> b!4027604 m!4619189))

(assert (=> b!4027208 d!1192918))

(declare-fun d!1192920 () Bool)

(declare-fun e!2498656 () Bool)

(assert (=> d!1192920 e!2498656))

(declare-fun res!1639225 () Bool)

(assert (=> d!1192920 (=> (not res!1639225) (not e!2498656))))

(declare-fun lt!1430849 () List!43243)

(assert (=> d!1192920 (= res!1639225 (= (content!6550 lt!1430849) ((_ map or) (content!6550 prefix!494) (content!6550 newSuffix!27))))))

(declare-fun e!2498655 () List!43243)

(assert (=> d!1192920 (= lt!1430849 e!2498655)))

(declare-fun c!695844 () Bool)

(assert (=> d!1192920 (= c!695844 ((_ is Nil!43119) prefix!494))))

(assert (=> d!1192920 (= (++!11288 prefix!494 newSuffix!27) lt!1430849)))

(declare-fun b!4027610 () Bool)

(assert (=> b!4027610 (= e!2498656 (or (not (= newSuffix!27 Nil!43119)) (= lt!1430849 prefix!494)))))

(declare-fun b!4027609 () Bool)

(declare-fun res!1639226 () Bool)

(assert (=> b!4027609 (=> (not res!1639226) (not e!2498656))))

(assert (=> b!4027609 (= res!1639226 (= (size!32232 lt!1430849) (+ (size!32232 prefix!494) (size!32232 newSuffix!27))))))

(declare-fun b!4027607 () Bool)

(assert (=> b!4027607 (= e!2498655 newSuffix!27)))

(declare-fun b!4027608 () Bool)

(assert (=> b!4027608 (= e!2498655 (Cons!43119 (h!48539 prefix!494) (++!11288 (t!334002 prefix!494) newSuffix!27)))))

(assert (= (and d!1192920 c!695844) b!4027607))

(assert (= (and d!1192920 (not c!695844)) b!4027608))

(assert (= (and d!1192920 res!1639225) b!4027609))

(assert (= (and b!4027609 res!1639226) b!4027610))

(declare-fun m!4619191 () Bool)

(assert (=> d!1192920 m!4619191))

(assert (=> d!1192920 m!4618909))

(declare-fun m!4619193 () Bool)

(assert (=> d!1192920 m!4619193))

(declare-fun m!4619195 () Bool)

(assert (=> b!4027609 m!4619195))

(assert (=> b!4027609 m!4618711))

(assert (=> b!4027609 m!4618705))

(declare-fun m!4619197 () Bool)

(assert (=> b!4027608 m!4619197))

(assert (=> b!4027208 d!1192920))

(declare-fun d!1192922 () Bool)

(declare-fun e!2498658 () Bool)

(assert (=> d!1192922 e!2498658))

(declare-fun res!1639227 () Bool)

(assert (=> d!1192922 (=> (not res!1639227) (not e!2498658))))

(declare-fun lt!1430850 () List!43243)

(assert (=> d!1192922 (= res!1639227 (= (content!6550 lt!1430850) ((_ map or) (content!6550 lt!1430705) (content!6550 lt!1430716))))))

(declare-fun e!2498657 () List!43243)

(assert (=> d!1192922 (= lt!1430850 e!2498657)))

(declare-fun c!695845 () Bool)

(assert (=> d!1192922 (= c!695845 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192922 (= (++!11288 lt!1430705 lt!1430716) lt!1430850)))

(declare-fun b!4027614 () Bool)

(assert (=> b!4027614 (= e!2498658 (or (not (= lt!1430716 Nil!43119)) (= lt!1430850 lt!1430705)))))

(declare-fun b!4027613 () Bool)

(declare-fun res!1639228 () Bool)

(assert (=> b!4027613 (=> (not res!1639228) (not e!2498658))))

(assert (=> b!4027613 (= res!1639228 (= (size!32232 lt!1430850) (+ (size!32232 lt!1430705) (size!32232 lt!1430716))))))

(declare-fun b!4027611 () Bool)

(assert (=> b!4027611 (= e!2498657 lt!1430716)))

(declare-fun b!4027612 () Bool)

(assert (=> b!4027612 (= e!2498657 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) lt!1430716)))))

(assert (= (and d!1192922 c!695845) b!4027611))

(assert (= (and d!1192922 (not c!695845)) b!4027612))

(assert (= (and d!1192922 res!1639227) b!4027613))

(assert (= (and b!4027613 res!1639228) b!4027614))

(declare-fun m!4619199 () Bool)

(assert (=> d!1192922 m!4619199))

(assert (=> d!1192922 m!4618987))

(assert (=> d!1192922 m!4619131))

(declare-fun m!4619201 () Bool)

(assert (=> b!4027613 m!4619201))

(assert (=> b!4027613 m!4618709))

(assert (=> b!4027613 m!4619135))

(declare-fun m!4619203 () Bool)

(assert (=> b!4027612 m!4619203))

(assert (=> b!4027198 d!1192922))

(declare-fun d!1192924 () Bool)

(declare-fun lt!1430853 () List!43243)

(assert (=> d!1192924 (= (++!11288 lt!1430705 lt!1430853) prefix!494)))

(declare-fun e!2498661 () List!43243)

(assert (=> d!1192924 (= lt!1430853 e!2498661)))

(declare-fun c!695848 () Bool)

(assert (=> d!1192924 (= c!695848 ((_ is Cons!43119) lt!1430705))))

(assert (=> d!1192924 (>= (size!32232 prefix!494) (size!32232 lt!1430705))))

(assert (=> d!1192924 (= (getSuffix!2390 prefix!494 lt!1430705) lt!1430853)))

(declare-fun b!4027619 () Bool)

(assert (=> b!4027619 (= e!2498661 (getSuffix!2390 (tail!6271 prefix!494) (t!334002 lt!1430705)))))

(declare-fun b!4027620 () Bool)

(assert (=> b!4027620 (= e!2498661 prefix!494)))

(assert (= (and d!1192924 c!695848) b!4027619))

(assert (= (and d!1192924 (not c!695848)) b!4027620))

(declare-fun m!4619205 () Bool)

(assert (=> d!1192924 m!4619205))

(assert (=> d!1192924 m!4618711))

(assert (=> d!1192924 m!4618709))

(declare-fun m!4619207 () Bool)

(assert (=> b!4027619 m!4619207))

(assert (=> b!4027619 m!4619207))

(declare-fun m!4619209 () Bool)

(assert (=> b!4027619 m!4619209))

(assert (=> b!4027198 d!1192924))

(declare-fun d!1192926 () Bool)

(declare-fun e!2498663 () Bool)

(assert (=> d!1192926 e!2498663))

(declare-fun res!1639232 () Bool)

(assert (=> d!1192926 (=> res!1639232 e!2498663)))

(declare-fun lt!1430854 () Bool)

(assert (=> d!1192926 (= res!1639232 (not lt!1430854))))

(declare-fun e!2498662 () Bool)

(assert (=> d!1192926 (= lt!1430854 e!2498662)))

(declare-fun res!1639230 () Bool)

(assert (=> d!1192926 (=> res!1639230 e!2498662)))

(assert (=> d!1192926 (= res!1639230 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192926 (= (isPrefix!3973 lt!1430705 prefix!494) lt!1430854)))

(declare-fun b!4027621 () Bool)

(declare-fun e!2498664 () Bool)

(assert (=> b!4027621 (= e!2498662 e!2498664)))

(declare-fun res!1639231 () Bool)

(assert (=> b!4027621 (=> (not res!1639231) (not e!2498664))))

(assert (=> b!4027621 (= res!1639231 (not ((_ is Nil!43119) prefix!494)))))

(declare-fun b!4027623 () Bool)

(assert (=> b!4027623 (= e!2498664 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 prefix!494)))))

(declare-fun b!4027624 () Bool)

(assert (=> b!4027624 (= e!2498663 (>= (size!32232 prefix!494) (size!32232 lt!1430705)))))

(declare-fun b!4027622 () Bool)

(declare-fun res!1639229 () Bool)

(assert (=> b!4027622 (=> (not res!1639229) (not e!2498664))))

(assert (=> b!4027622 (= res!1639229 (= (head!8539 lt!1430705) (head!8539 prefix!494)))))

(assert (= (and d!1192926 (not res!1639230)) b!4027621))

(assert (= (and b!4027621 res!1639231) b!4027622))

(assert (= (and b!4027622 res!1639229) b!4027623))

(assert (= (and d!1192926 (not res!1639232)) b!4027624))

(assert (=> b!4027623 m!4619093))

(assert (=> b!4027623 m!4619207))

(assert (=> b!4027623 m!4619093))

(assert (=> b!4027623 m!4619207))

(declare-fun m!4619211 () Bool)

(assert (=> b!4027623 m!4619211))

(assert (=> b!4027624 m!4618711))

(assert (=> b!4027624 m!4618709))

(assert (=> b!4027622 m!4619101))

(declare-fun m!4619213 () Bool)

(assert (=> b!4027622 m!4619213))

(assert (=> b!4027198 d!1192926))

(declare-fun d!1192928 () Bool)

(assert (=> d!1192928 (isPrefix!3973 lt!1430705 prefix!494)))

(declare-fun lt!1430857 () Unit!62282)

(declare-fun choose!24370 (List!43243 List!43243 List!43243) Unit!62282)

(assert (=> d!1192928 (= lt!1430857 (choose!24370 prefix!494 lt!1430705 lt!1430712))))

(assert (=> d!1192928 (isPrefix!3973 prefix!494 lt!1430712)))

(assert (=> d!1192928 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!537 prefix!494 lt!1430705 lt!1430712) lt!1430857)))

(declare-fun bs!590124 () Bool)

(assert (= bs!590124 d!1192928))

(assert (=> bs!590124 m!4618665))

(declare-fun m!4619215 () Bool)

(assert (=> bs!590124 m!4619215))

(assert (=> bs!590124 m!4618673))

(assert (=> b!4027198 d!1192928))

(declare-fun d!1192930 () Bool)

(declare-fun res!1639237 () Bool)

(declare-fun e!2498667 () Bool)

(assert (=> d!1192930 (=> (not res!1639237) (not e!2498667))))

(assert (=> d!1192930 (= res!1639237 (not (isEmpty!25744 (originalCharacters!7486 token!484))))))

(assert (=> d!1192930 (= (inv!57605 token!484) e!2498667)))

(declare-fun b!4027629 () Bool)

(declare-fun res!1639238 () Bool)

(assert (=> b!4027629 (=> (not res!1639238) (not e!2498667))))

(assert (=> b!4027629 (= res!1639238 (= (originalCharacters!7486 token!484) (list!16040 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(declare-fun b!4027630 () Bool)

(assert (=> b!4027630 (= e!2498667 (= (size!32231 token!484) (size!32232 (originalCharacters!7486 token!484))))))

(assert (= (and d!1192930 res!1639237) b!4027629))

(assert (= (and b!4027629 res!1639238) b!4027630))

(declare-fun b_lambda!117527 () Bool)

(assert (=> (not b_lambda!117527) (not b!4027629)))

(assert (=> b!4027629 t!334010))

(declare-fun b_and!309479 () Bool)

(assert (= b_and!309471 (and (=> t!334010 result!293348) b_and!309479)))

(assert (=> b!4027629 t!334012))

(declare-fun b_and!309481 () Bool)

(assert (= b_and!309473 (and (=> t!334012 result!293352) b_and!309481)))

(declare-fun m!4619217 () Bool)

(assert (=> d!1192930 m!4619217))

(assert (=> b!4027629 m!4618963))

(assert (=> b!4027629 m!4618963))

(declare-fun m!4619219 () Bool)

(assert (=> b!4027629 m!4619219))

(declare-fun m!4619221 () Bool)

(assert (=> b!4027630 m!4619221))

(assert (=> start!379380 d!1192930))

(declare-fun b!4027659 () Bool)

(declare-fun e!2498683 () Bool)

(declare-fun e!2498686 () Bool)

(assert (=> b!4027659 (= e!2498683 e!2498686)))

(declare-fun res!1639258 () Bool)

(assert (=> b!4027659 (=> res!1639258 e!2498686)))

(declare-fun call!286812 () Bool)

(assert (=> b!4027659 (= res!1639258 call!286812)))

(declare-fun b!4027660 () Bool)

(declare-fun res!1639259 () Bool)

(assert (=> b!4027660 (=> res!1639259 e!2498686)))

(assert (=> b!4027660 (= res!1639259 (not (isEmpty!25744 (tail!6271 lt!1430705))))))

(declare-fun b!4027661 () Bool)

(declare-fun e!2498687 () Bool)

(assert (=> b!4027661 (= e!2498687 e!2498683)))

(declare-fun res!1639256 () Bool)

(assert (=> b!4027661 (=> (not res!1639256) (not e!2498683))))

(declare-fun lt!1430860 () Bool)

(assert (=> b!4027661 (= res!1639256 (not lt!1430860))))

(declare-fun b!4027662 () Bool)

(declare-fun e!2498682 () Bool)

(declare-fun e!2498685 () Bool)

(assert (=> b!4027662 (= e!2498682 e!2498685)))

(declare-fun c!695855 () Bool)

(assert (=> b!4027662 (= c!695855 ((_ is EmptyLang!11791) (regex!6886 (rule!9944 token!484))))))

(declare-fun bm!286807 () Bool)

(assert (=> bm!286807 (= call!286812 (isEmpty!25744 lt!1430705))))

(declare-fun b!4027664 () Bool)

(assert (=> b!4027664 (= e!2498682 (= lt!1430860 call!286812))))

(declare-fun b!4027665 () Bool)

(declare-fun res!1639262 () Bool)

(assert (=> b!4027665 (=> res!1639262 e!2498687)))

(assert (=> b!4027665 (= res!1639262 (not ((_ is ElementMatch!11791) (regex!6886 (rule!9944 token!484)))))))

(assert (=> b!4027665 (= e!2498685 e!2498687)))

(declare-fun b!4027666 () Bool)

(declare-fun res!1639260 () Bool)

(declare-fun e!2498684 () Bool)

(assert (=> b!4027666 (=> (not res!1639260) (not e!2498684))))

(assert (=> b!4027666 (= res!1639260 (not call!286812))))

(declare-fun b!4027667 () Bool)

(assert (=> b!4027667 (= e!2498684 (= (head!8539 lt!1430705) (c!695781 (regex!6886 (rule!9944 token!484)))))))

(declare-fun b!4027668 () Bool)

(declare-fun res!1639257 () Bool)

(assert (=> b!4027668 (=> res!1639257 e!2498687)))

(assert (=> b!4027668 (= res!1639257 e!2498684)))

(declare-fun res!1639255 () Bool)

(assert (=> b!4027668 (=> (not res!1639255) (not e!2498684))))

(assert (=> b!4027668 (= res!1639255 lt!1430860)))

(declare-fun b!4027669 () Bool)

(declare-fun e!2498688 () Bool)

(assert (=> b!4027669 (= e!2498688 (nullable!4136 (regex!6886 (rule!9944 token!484))))))

(declare-fun b!4027663 () Bool)

(assert (=> b!4027663 (= e!2498685 (not lt!1430860))))

(declare-fun d!1192932 () Bool)

(assert (=> d!1192932 e!2498682))

(declare-fun c!695856 () Bool)

(assert (=> d!1192932 (= c!695856 ((_ is EmptyExpr!11791) (regex!6886 (rule!9944 token!484))))))

(assert (=> d!1192932 (= lt!1430860 e!2498688)))

(declare-fun c!695857 () Bool)

(assert (=> d!1192932 (= c!695857 (isEmpty!25744 lt!1430705))))

(assert (=> d!1192932 (validRegex!5336 (regex!6886 (rule!9944 token!484)))))

(assert (=> d!1192932 (= (matchR!5744 (regex!6886 (rule!9944 token!484)) lt!1430705) lt!1430860)))

(declare-fun b!4027670 () Bool)

(assert (=> b!4027670 (= e!2498686 (not (= (head!8539 lt!1430705) (c!695781 (regex!6886 (rule!9944 token!484))))))))

(declare-fun b!4027671 () Bool)

(declare-fun derivativeStep!3541 (Regex!11791 C!23768) Regex!11791)

(assert (=> b!4027671 (= e!2498688 (matchR!5744 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)) (tail!6271 lt!1430705)))))

(declare-fun b!4027672 () Bool)

(declare-fun res!1639261 () Bool)

(assert (=> b!4027672 (=> (not res!1639261) (not e!2498684))))

(assert (=> b!4027672 (= res!1639261 (isEmpty!25744 (tail!6271 lt!1430705)))))

(assert (= (and d!1192932 c!695857) b!4027669))

(assert (= (and d!1192932 (not c!695857)) b!4027671))

(assert (= (and d!1192932 c!695856) b!4027664))

(assert (= (and d!1192932 (not c!695856)) b!4027662))

(assert (= (and b!4027662 c!695855) b!4027663))

(assert (= (and b!4027662 (not c!695855)) b!4027665))

(assert (= (and b!4027665 (not res!1639262)) b!4027668))

(assert (= (and b!4027668 res!1639255) b!4027666))

(assert (= (and b!4027666 res!1639260) b!4027672))

(assert (= (and b!4027672 res!1639261) b!4027667))

(assert (= (and b!4027668 (not res!1639257)) b!4027661))

(assert (= (and b!4027661 res!1639256) b!4027659))

(assert (= (and b!4027659 (not res!1639258)) b!4027660))

(assert (= (and b!4027660 (not res!1639259)) b!4027670))

(assert (= (or b!4027664 b!4027659 b!4027666) bm!286807))

(assert (=> b!4027670 m!4619101))

(assert (=> d!1192932 m!4618669))

(assert (=> d!1192932 m!4619039))

(assert (=> b!4027672 m!4619093))

(assert (=> b!4027672 m!4619093))

(declare-fun m!4619223 () Bool)

(assert (=> b!4027672 m!4619223))

(assert (=> b!4027671 m!4619101))

(assert (=> b!4027671 m!4619101))

(declare-fun m!4619225 () Bool)

(assert (=> b!4027671 m!4619225))

(assert (=> b!4027671 m!4619093))

(assert (=> b!4027671 m!4619225))

(assert (=> b!4027671 m!4619093))

(declare-fun m!4619227 () Bool)

(assert (=> b!4027671 m!4619227))

(assert (=> bm!286807 m!4618669))

(assert (=> b!4027667 m!4619101))

(assert (=> b!4027660 m!4619093))

(assert (=> b!4027660 m!4619093))

(assert (=> b!4027660 m!4619223))

(assert (=> b!4027669 m!4619041))

(assert (=> b!4027201 d!1192932))

(declare-fun d!1192934 () Bool)

(assert (=> d!1192934 (= (inv!57602 (tag!7746 (rule!9944 token!484))) (= (mod (str.len (value!216884 (tag!7746 (rule!9944 token!484)))) 2) 0))))

(assert (=> b!4027212 d!1192934))

(declare-fun d!1192936 () Bool)

(declare-fun res!1639263 () Bool)

(declare-fun e!2498689 () Bool)

(assert (=> d!1192936 (=> (not res!1639263) (not e!2498689))))

(assert (=> d!1192936 (= res!1639263 (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))))))

(assert (=> d!1192936 (= (inv!57606 (transformation!6886 (rule!9944 token!484))) e!2498689)))

(declare-fun b!4027673 () Bool)

(assert (=> b!4027673 (= e!2498689 (equivClasses!2843 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))))))

(assert (= (and d!1192936 res!1639263) b!4027673))

(assert (=> d!1192936 m!4618997))

(assert (=> b!4027673 m!4618999))

(assert (=> b!4027212 d!1192936))

(declare-fun d!1192938 () Bool)

(assert (=> d!1192938 (= (isEmpty!25744 lt!1430705) ((_ is Nil!43119) lt!1430705))))

(assert (=> b!4027211 d!1192938))

(declare-fun d!1192940 () Bool)

(assert (=> d!1192940 (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 suffixResult!105))))

(declare-fun lt!1430861 () Unit!62282)

(assert (=> d!1192940 (= lt!1430861 (choose!24367 lt!1430705 suffixResult!105))))

(assert (=> d!1192940 (= (lemmaConcatTwoListThenFirstIsPrefix!2808 lt!1430705 suffixResult!105) lt!1430861)))

(declare-fun bs!590125 () Bool)

(assert (= bs!590125 d!1192940))

(assert (=> bs!590125 m!4618725))

(assert (=> bs!590125 m!4618725))

(declare-fun m!4619229 () Bool)

(assert (=> bs!590125 m!4619229))

(declare-fun m!4619231 () Bool)

(assert (=> bs!590125 m!4619231))

(assert (=> b!4027190 d!1192940))

(declare-fun d!1192942 () Bool)

(declare-fun e!2498691 () Bool)

(assert (=> d!1192942 e!2498691))

(declare-fun res!1639267 () Bool)

(assert (=> d!1192942 (=> res!1639267 e!2498691)))

(declare-fun lt!1430862 () Bool)

(assert (=> d!1192942 (= res!1639267 (not lt!1430862))))

(declare-fun e!2498690 () Bool)

(assert (=> d!1192942 (= lt!1430862 e!2498690)))

(declare-fun res!1639265 () Bool)

(assert (=> d!1192942 (=> res!1639265 e!2498690)))

(assert (=> d!1192942 (= res!1639265 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192942 (= (isPrefix!3973 lt!1430705 lt!1430719) lt!1430862)))

(declare-fun b!4027674 () Bool)

(declare-fun e!2498692 () Bool)

(assert (=> b!4027674 (= e!2498690 e!2498692)))

(declare-fun res!1639266 () Bool)

(assert (=> b!4027674 (=> (not res!1639266) (not e!2498692))))

(assert (=> b!4027674 (= res!1639266 (not ((_ is Nil!43119) lt!1430719)))))

(declare-fun b!4027676 () Bool)

(assert (=> b!4027676 (= e!2498692 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430719)))))

(declare-fun b!4027677 () Bool)

(assert (=> b!4027677 (= e!2498691 (>= (size!32232 lt!1430719) (size!32232 lt!1430705)))))

(declare-fun b!4027675 () Bool)

(declare-fun res!1639264 () Bool)

(assert (=> b!4027675 (=> (not res!1639264) (not e!2498692))))

(assert (=> b!4027675 (= res!1639264 (= (head!8539 lt!1430705) (head!8539 lt!1430719)))))

(assert (= (and d!1192942 (not res!1639265)) b!4027674))

(assert (= (and b!4027674 res!1639266) b!4027675))

(assert (= (and b!4027675 res!1639264) b!4027676))

(assert (= (and d!1192942 (not res!1639267)) b!4027677))

(assert (=> b!4027676 m!4619093))

(declare-fun m!4619233 () Bool)

(assert (=> b!4027676 m!4619233))

(assert (=> b!4027676 m!4619093))

(assert (=> b!4027676 m!4619233))

(declare-fun m!4619235 () Bool)

(assert (=> b!4027676 m!4619235))

(declare-fun m!4619237 () Bool)

(assert (=> b!4027677 m!4619237))

(assert (=> b!4027677 m!4618709))

(assert (=> b!4027675 m!4619101))

(declare-fun m!4619239 () Bool)

(assert (=> b!4027675 m!4619239))

(assert (=> b!4027190 d!1192942))

(declare-fun d!1192944 () Bool)

(assert (=> d!1192944 (isPrefix!3973 prefix!494 (++!11288 prefix!494 suffix!1299))))

(declare-fun lt!1430863 () Unit!62282)

(assert (=> d!1192944 (= lt!1430863 (choose!24367 prefix!494 suffix!1299))))

(assert (=> d!1192944 (= (lemmaConcatTwoListThenFirstIsPrefix!2808 prefix!494 suffix!1299) lt!1430863)))

(declare-fun bs!590126 () Bool)

(assert (= bs!590126 d!1192944))

(assert (=> bs!590126 m!4618645))

(assert (=> bs!590126 m!4618645))

(declare-fun m!4619241 () Bool)

(assert (=> bs!590126 m!4619241))

(declare-fun m!4619243 () Bool)

(assert (=> bs!590126 m!4619243))

(assert (=> b!4027190 d!1192944))

(declare-fun d!1192946 () Bool)

(declare-fun e!2498694 () Bool)

(assert (=> d!1192946 e!2498694))

(declare-fun res!1639271 () Bool)

(assert (=> d!1192946 (=> res!1639271 e!2498694)))

(declare-fun lt!1430864 () Bool)

(assert (=> d!1192946 (= res!1639271 (not lt!1430864))))

(declare-fun e!2498693 () Bool)

(assert (=> d!1192946 (= lt!1430864 e!2498693)))

(declare-fun res!1639269 () Bool)

(assert (=> d!1192946 (=> res!1639269 e!2498693)))

(assert (=> d!1192946 (= res!1639269 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1192946 (= (isPrefix!3973 lt!1430705 lt!1430712) lt!1430864)))

(declare-fun b!4027678 () Bool)

(declare-fun e!2498695 () Bool)

(assert (=> b!4027678 (= e!2498693 e!2498695)))

(declare-fun res!1639270 () Bool)

(assert (=> b!4027678 (=> (not res!1639270) (not e!2498695))))

(assert (=> b!4027678 (= res!1639270 (not ((_ is Nil!43119) lt!1430712)))))

(declare-fun b!4027680 () Bool)

(assert (=> b!4027680 (= e!2498695 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430712)))))

(declare-fun b!4027681 () Bool)

(assert (=> b!4027681 (= e!2498694 (>= (size!32232 lt!1430712) (size!32232 lt!1430705)))))

(declare-fun b!4027679 () Bool)

(declare-fun res!1639268 () Bool)

(assert (=> b!4027679 (=> (not res!1639268) (not e!2498695))))

(assert (=> b!4027679 (= res!1639268 (= (head!8539 lt!1430705) (head!8539 lt!1430712)))))

(assert (= (and d!1192946 (not res!1639269)) b!4027678))

(assert (= (and b!4027678 res!1639270) b!4027679))

(assert (= (and b!4027679 res!1639268) b!4027680))

(assert (= (and d!1192946 (not res!1639271)) b!4027681))

(assert (=> b!4027680 m!4619093))

(declare-fun m!4619245 () Bool)

(assert (=> b!4027680 m!4619245))

(assert (=> b!4027680 m!4619093))

(assert (=> b!4027680 m!4619245))

(declare-fun m!4619247 () Bool)

(assert (=> b!4027680 m!4619247))

(assert (=> b!4027681 m!4618865))

(assert (=> b!4027681 m!4618709))

(assert (=> b!4027679 m!4619101))

(declare-fun m!4619249 () Bool)

(assert (=> b!4027679 m!4619249))

(assert (=> b!4027190 d!1192946))

(declare-fun d!1192948 () Bool)

(declare-fun e!2498697 () Bool)

(assert (=> d!1192948 e!2498697))

(declare-fun res!1639275 () Bool)

(assert (=> d!1192948 (=> res!1639275 e!2498697)))

(declare-fun lt!1430865 () Bool)

(assert (=> d!1192948 (= res!1639275 (not lt!1430865))))

(declare-fun e!2498696 () Bool)

(assert (=> d!1192948 (= lt!1430865 e!2498696)))

(declare-fun res!1639273 () Bool)

(assert (=> d!1192948 (=> res!1639273 e!2498696)))

(assert (=> d!1192948 (= res!1639273 ((_ is Nil!43119) prefix!494))))

(assert (=> d!1192948 (= (isPrefix!3973 prefix!494 lt!1430712) lt!1430865)))

(declare-fun b!4027682 () Bool)

(declare-fun e!2498698 () Bool)

(assert (=> b!4027682 (= e!2498696 e!2498698)))

(declare-fun res!1639274 () Bool)

(assert (=> b!4027682 (=> (not res!1639274) (not e!2498698))))

(assert (=> b!4027682 (= res!1639274 (not ((_ is Nil!43119) lt!1430712)))))

(declare-fun b!4027684 () Bool)

(assert (=> b!4027684 (= e!2498698 (isPrefix!3973 (tail!6271 prefix!494) (tail!6271 lt!1430712)))))

(declare-fun b!4027685 () Bool)

(assert (=> b!4027685 (= e!2498697 (>= (size!32232 lt!1430712) (size!32232 prefix!494)))))

(declare-fun b!4027683 () Bool)

(declare-fun res!1639272 () Bool)

(assert (=> b!4027683 (=> (not res!1639272) (not e!2498698))))

(assert (=> b!4027683 (= res!1639272 (= (head!8539 prefix!494) (head!8539 lt!1430712)))))

(assert (= (and d!1192948 (not res!1639273)) b!4027682))

(assert (= (and b!4027682 res!1639274) b!4027683))

(assert (= (and b!4027683 res!1639272) b!4027684))

(assert (= (and d!1192948 (not res!1639275)) b!4027685))

(assert (=> b!4027684 m!4619207))

(assert (=> b!4027684 m!4619245))

(assert (=> b!4027684 m!4619207))

(assert (=> b!4027684 m!4619245))

(declare-fun m!4619251 () Bool)

(assert (=> b!4027684 m!4619251))

(assert (=> b!4027685 m!4618865))

(assert (=> b!4027685 m!4618711))

(assert (=> b!4027683 m!4619213))

(assert (=> b!4027683 m!4619249))

(assert (=> b!4027190 d!1192948))

(declare-fun b!4027690 () Bool)

(declare-fun e!2498701 () Bool)

(declare-fun tp!1224027 () Bool)

(assert (=> b!4027690 (= e!2498701 (and tp_is_empty!20553 tp!1224027))))

(assert (=> b!4027209 (= tp!1223969 e!2498701)))

(assert (= (and b!4027209 ((_ is Cons!43119) (t!334002 suffix!1299))) b!4027690))

(declare-fun b!4027691 () Bool)

(declare-fun e!2498702 () Bool)

(declare-fun tp!1224028 () Bool)

(assert (=> b!4027691 (= e!2498702 (and tp_is_empty!20553 tp!1224028))))

(assert (=> b!4027193 (= tp!1223973 e!2498702)))

(assert (= (and b!4027193 ((_ is Cons!43119) (t!334002 prefix!494))) b!4027691))

(declare-fun b!4027692 () Bool)

(declare-fun e!2498703 () Bool)

(declare-fun tp!1224029 () Bool)

(assert (=> b!4027692 (= e!2498703 (and tp_is_empty!20553 tp!1224029))))

(assert (=> b!4027210 (= tp!1223974 e!2498703)))

(assert (= (and b!4027210 ((_ is Cons!43119) (t!334002 suffixResult!105))) b!4027692))

(declare-fun b!4027693 () Bool)

(declare-fun e!2498704 () Bool)

(declare-fun tp!1224030 () Bool)

(assert (=> b!4027693 (= e!2498704 (and tp_is_empty!20553 tp!1224030))))

(assert (=> b!4027203 (= tp!1223965 e!2498704)))

(assert (= (and b!4027203 ((_ is Cons!43119) (originalCharacters!7486 token!484))) b!4027693))

(declare-fun b!4027694 () Bool)

(declare-fun e!2498705 () Bool)

(declare-fun tp!1224031 () Bool)

(assert (=> b!4027694 (= e!2498705 (and tp_is_empty!20553 tp!1224031))))

(assert (=> b!4027196 (= tp!1223976 e!2498705)))

(assert (= (and b!4027196 ((_ is Cons!43119) (t!334002 newSuffix!27))) b!4027694))

(declare-fun b!4027705 () Bool)

(declare-fun e!2498708 () Bool)

(assert (=> b!4027705 (= e!2498708 tp_is_empty!20553)))

(declare-fun b!4027706 () Bool)

(declare-fun tp!1224044 () Bool)

(declare-fun tp!1224042 () Bool)

(assert (=> b!4027706 (= e!2498708 (and tp!1224044 tp!1224042))))

(declare-fun b!4027707 () Bool)

(declare-fun tp!1224043 () Bool)

(assert (=> b!4027707 (= e!2498708 tp!1224043)))

(assert (=> b!4027212 (= tp!1223972 e!2498708)))

(declare-fun b!4027708 () Bool)

(declare-fun tp!1224046 () Bool)

(declare-fun tp!1224045 () Bool)

(assert (=> b!4027708 (= e!2498708 (and tp!1224046 tp!1224045))))

(assert (= (and b!4027212 ((_ is ElementMatch!11791) (regex!6886 (rule!9944 token!484)))) b!4027705))

(assert (= (and b!4027212 ((_ is Concat!18908) (regex!6886 (rule!9944 token!484)))) b!4027706))

(assert (= (and b!4027212 ((_ is Star!11791) (regex!6886 (rule!9944 token!484)))) b!4027707))

(assert (= (and b!4027212 ((_ is Union!11791) (regex!6886 (rule!9944 token!484)))) b!4027708))

(declare-fun b!4027709 () Bool)

(declare-fun e!2498709 () Bool)

(assert (=> b!4027709 (= e!2498709 tp_is_empty!20553)))

(declare-fun b!4027710 () Bool)

(declare-fun tp!1224049 () Bool)

(declare-fun tp!1224047 () Bool)

(assert (=> b!4027710 (= e!2498709 (and tp!1224049 tp!1224047))))

(declare-fun b!4027711 () Bool)

(declare-fun tp!1224048 () Bool)

(assert (=> b!4027711 (= e!2498709 tp!1224048)))

(assert (=> b!4027205 (= tp!1223968 e!2498709)))

(declare-fun b!4027712 () Bool)

(declare-fun tp!1224051 () Bool)

(declare-fun tp!1224050 () Bool)

(assert (=> b!4027712 (= e!2498709 (and tp!1224051 tp!1224050))))

(assert (= (and b!4027205 ((_ is ElementMatch!11791) (regex!6886 (h!48541 rules!2999)))) b!4027709))

(assert (= (and b!4027205 ((_ is Concat!18908) (regex!6886 (h!48541 rules!2999)))) b!4027710))

(assert (= (and b!4027205 ((_ is Star!11791) (regex!6886 (h!48541 rules!2999)))) b!4027711))

(assert (= (and b!4027205 ((_ is Union!11791) (regex!6886 (h!48541 rules!2999)))) b!4027712))

(declare-fun b!4027723 () Bool)

(declare-fun b_free!112149 () Bool)

(declare-fun b_next!112853 () Bool)

(assert (=> b!4027723 (= b_free!112149 (not b_next!112853))))

(declare-fun t!334037 () Bool)

(declare-fun tb!242035 () Bool)

(assert (=> (and b!4027723 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) t!334037) tb!242035))

(declare-fun result!293392 () Bool)

(assert (= result!293392 result!293360))

(assert (=> d!1192910 t!334037))

(assert (=> d!1192912 t!334037))

(declare-fun tp!1224060 () Bool)

(declare-fun b_and!309483 () Bool)

(assert (=> b!4027723 (= tp!1224060 (and (=> t!334037 result!293392) b_and!309483))))

(declare-fun b_free!112151 () Bool)

(declare-fun b_next!112855 () Bool)

(assert (=> b!4027723 (= b_free!112151 (not b_next!112855))))

(declare-fun t!334039 () Bool)

(declare-fun tb!242037 () Bool)

(assert (=> (and b!4027723 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334039) tb!242037))

(declare-fun result!293394 () Bool)

(assert (= result!293394 result!293348))

(assert (=> d!1192846 t!334039))

(declare-fun t!334041 () Bool)

(declare-fun tb!242039 () Bool)

(assert (=> (and b!4027723 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334041) tb!242039))

(declare-fun result!293396 () Bool)

(assert (= result!293396 result!293382))

(assert (=> d!1192912 t!334041))

(assert (=> b!4027629 t!334039))

(declare-fun tp!1224062 () Bool)

(declare-fun b_and!309485 () Bool)

(assert (=> b!4027723 (= tp!1224062 (and (=> t!334039 result!293394) (=> t!334041 result!293396) b_and!309485))))

(declare-fun e!2498718 () Bool)

(assert (=> b!4027723 (= e!2498718 (and tp!1224060 tp!1224062))))

(declare-fun b!4027722 () Bool)

(declare-fun tp!1224061 () Bool)

(declare-fun e!2498719 () Bool)

(assert (=> b!4027722 (= e!2498719 (and tp!1224061 (inv!57602 (tag!7746 (h!48541 (t!334004 rules!2999)))) (inv!57606 (transformation!6886 (h!48541 (t!334004 rules!2999)))) e!2498718))))

(declare-fun b!4027721 () Bool)

(declare-fun e!2498721 () Bool)

(declare-fun tp!1224063 () Bool)

(assert (=> b!4027721 (= e!2498721 (and e!2498719 tp!1224063))))

(assert (=> b!4027200 (= tp!1223970 e!2498721)))

(assert (= b!4027722 b!4027723))

(assert (= b!4027721 b!4027722))

(assert (= (and b!4027200 ((_ is Cons!43121) (t!334004 rules!2999))) b!4027721))

(declare-fun m!4619253 () Bool)

(assert (=> b!4027722 m!4619253))

(declare-fun m!4619255 () Bool)

(assert (=> b!4027722 m!4619255))

(declare-fun b!4027724 () Bool)

(declare-fun e!2498722 () Bool)

(declare-fun tp!1224064 () Bool)

(assert (=> b!4027724 (= e!2498722 (and tp_is_empty!20553 tp!1224064))))

(assert (=> b!4027206 (= tp!1223971 e!2498722)))

(assert (= (and b!4027206 ((_ is Cons!43119) (t!334002 newSuffixResult!27))) b!4027724))

(declare-fun b_lambda!117529 () Bool)

(assert (= b_lambda!117503 (or (and b!4027215 b_free!112139 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) (and b!4027202 b_free!112143) (and b!4027723 b_free!112151 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) b_lambda!117529)))

(declare-fun b_lambda!117531 () Bool)

(assert (= b_lambda!117527 (or (and b!4027215 b_free!112139 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) (and b!4027202 b_free!112143) (and b!4027723 b_free!112151 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) b_lambda!117531)))

(declare-fun b_lambda!117533 () Bool)

(assert (= b_lambda!117507 (or (and b!4027215 b_free!112137 (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) (and b!4027202 b_free!112141) (and b!4027723 b_free!112149 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) b_lambda!117533)))

(declare-fun b_lambda!117535 () Bool)

(assert (= b_lambda!117523 (or (and b!4027215 b_free!112139 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) (and b!4027202 b_free!112143) (and b!4027723 b_free!112151 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 token!484))))) b_lambda!117535)))

(declare-fun b_lambda!117537 () Bool)

(assert (= b_lambda!117525 (or (and b!4027215 b_free!112137 (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) (and b!4027202 b_free!112141) (and b!4027723 b_free!112149 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) b_lambda!117537)))

(check-sat (not d!1192860) (not b!4027535) (not d!1192868) (not b!4027608) (not b!4027630) (not b!4027604) (not b!4027330) (not b!4027399) (not d!1192920) (not b!4027520) (not b!4027609) (not b!4027441) (not b!4027683) (not b!4027624) (not d!1192944) (not b!4027669) (not b_lambda!117537) (not b!4027327) (not b!4027462) (not b!4027707) (not b!4027377) (not b!4027670) (not d!1192932) (not d!1192936) (not d!1192858) (not b!4027325) (not b!4027425) (not b_next!112843) (not b!4027692) (not b!4027322) (not b!4027679) (not b!4027691) (not b!4027602) (not b!4027706) (not b!4027677) (not b!4027660) (not d!1192770) (not tb!242009) (not b_next!112845) (not b!4027323) (not d!1192896) (not b_lambda!117533) (not b!4027685) (not b_lambda!117529) (not d!1192912) (not d!1192906) (not b!4027461) (not d!1192846) (not b!4027724) (not b!4027449) (not b!4027442) (not bm!286807) (not d!1192908) (not b!4027488) (not b!4027378) (not b!4027544) (not b!4027708) (not b!4027543) (not b!4027443) (not b!4027329) b_and!309481 (not b!4027684) tp_is_empty!20553 (not b_lambda!117531) (not b!4027536) b_and!309477 (not b!4027694) (not b!4027619) (not b!4027547) (not b!4027671) (not b!4027605) (not d!1192916) (not b!4027612) (not b!4027540) (not b!4027672) (not b!4027548) (not b!4027711) b_and!309483 (not b!4027680) (not b_lambda!117535) (not b!4027721) (not d!1192918) (not b!4027533) (not b!4027424) (not b!4027623) (not b!4027710) b_and!309485 (not b!4027722) (not b!4027613) (not d!1192856) (not d!1192928) (not d!1192904) (not b!4027629) (not b!4027667) (not b!4027426) (not d!1192838) (not b!4027414) (not b!4027690) (not b!4027622) (not b!4027328) (not d!1192772) (not d!1192924) (not b_next!112855) (not d!1192940) (not b_next!112847) (not b!4027673) (not d!1192900) (not tb!242031) (not b!4027479) (not b_next!112853) (not d!1192922) (not tb!242017) (not b_next!112841) (not b!4027401) (not b!4027712) (not b!4027675) (not bm!286801) (not d!1192930) b_and!309479 b_and!309475 (not b!4027447) (not d!1192890) (not b!4027539) (not b!4027676) (not b!4027693) (not b!4027537) (not d!1192878) (not d!1192902) (not b!4027326) (not b!4027219) (not d!1192808) (not b!4027681))
(check-sat (not b_next!112843) (not b_next!112845) b_and!309483 b_and!309485 b_and!309481 b_and!309477 (not b_next!112855) (not b_next!112847) (not b_next!112853) (not b_next!112841) b_and!309479 b_and!309475)
(get-model)

(declare-fun d!1192968 () Bool)

(assert (=> d!1192968 (= (head!8539 lt!1430705) (h!48539 lt!1430705))))

(assert (=> b!4027535 d!1192968))

(declare-fun d!1192970 () Bool)

(assert (=> d!1192970 (= (head!8539 lt!1430711) (h!48539 lt!1430711))))

(assert (=> b!4027535 d!1192970))

(declare-fun d!1192972 () Bool)

(declare-fun c!695867 () Bool)

(assert (=> d!1192972 (= c!695867 ((_ is Nil!43121) rules!2999))))

(declare-fun e!2498732 () (InoxSet Rule!13572))

(assert (=> d!1192972 (= (content!6552 rules!2999) e!2498732)))

(declare-fun b!4027747 () Bool)

(assert (=> b!4027747 (= e!2498732 ((as const (Array Rule!13572 Bool)) false))))

(declare-fun b!4027748 () Bool)

(assert (=> b!4027748 (= e!2498732 ((_ map or) (store ((as const (Array Rule!13572 Bool)) false) (h!48541 rules!2999) true) (content!6552 (t!334004 rules!2999))))))

(assert (= (and d!1192972 c!695867) b!4027747))

(assert (= (and d!1192972 (not c!695867)) b!4027748))

(declare-fun m!4619281 () Bool)

(assert (=> b!4027748 m!4619281))

(declare-fun m!4619283 () Bool)

(assert (=> b!4027748 m!4619283))

(assert (=> d!1192890 d!1192972))

(declare-fun d!1192980 () Bool)

(declare-fun c!695873 () Bool)

(assert (=> d!1192980 (= c!695873 ((_ is Nil!43119) lt!1430849))))

(declare-fun e!2498738 () (InoxSet C!23768))

(assert (=> d!1192980 (= (content!6550 lt!1430849) e!2498738)))

(declare-fun b!4027759 () Bool)

(assert (=> b!4027759 (= e!2498738 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027760 () Bool)

(assert (=> b!4027760 (= e!2498738 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430849) true) (content!6550 (t!334002 lt!1430849))))))

(assert (= (and d!1192980 c!695873) b!4027759))

(assert (= (and d!1192980 (not c!695873)) b!4027760))

(declare-fun m!4619291 () Bool)

(assert (=> b!4027760 m!4619291))

(declare-fun m!4619293 () Bool)

(assert (=> b!4027760 m!4619293))

(assert (=> d!1192920 d!1192980))

(declare-fun d!1192988 () Bool)

(declare-fun c!695874 () Bool)

(assert (=> d!1192988 (= c!695874 ((_ is Nil!43119) prefix!494))))

(declare-fun e!2498739 () (InoxSet C!23768))

(assert (=> d!1192988 (= (content!6550 prefix!494) e!2498739)))

(declare-fun b!4027761 () Bool)

(assert (=> b!4027761 (= e!2498739 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027762 () Bool)

(assert (=> b!4027762 (= e!2498739 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 prefix!494) true) (content!6550 (t!334002 prefix!494))))))

(assert (= (and d!1192988 c!695874) b!4027761))

(assert (= (and d!1192988 (not c!695874)) b!4027762))

(declare-fun m!4619295 () Bool)

(assert (=> b!4027762 m!4619295))

(declare-fun m!4619297 () Bool)

(assert (=> b!4027762 m!4619297))

(assert (=> d!1192920 d!1192988))

(declare-fun d!1192990 () Bool)

(declare-fun c!695875 () Bool)

(assert (=> d!1192990 (= c!695875 ((_ is Nil!43119) newSuffix!27))))

(declare-fun e!2498740 () (InoxSet C!23768))

(assert (=> d!1192990 (= (content!6550 newSuffix!27) e!2498740)))

(declare-fun b!4027763 () Bool)

(assert (=> b!4027763 (= e!2498740 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027764 () Bool)

(assert (=> b!4027764 (= e!2498740 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 newSuffix!27) true) (content!6550 (t!334002 newSuffix!27))))))

(assert (= (and d!1192990 c!695875) b!4027763))

(assert (= (and d!1192990 (not c!695875)) b!4027764))

(declare-fun m!4619299 () Bool)

(assert (=> b!4027764 m!4619299))

(declare-fun m!4619301 () Bool)

(assert (=> b!4027764 m!4619301))

(assert (=> d!1192920 d!1192990))

(declare-fun d!1192992 () Bool)

(assert (=> d!1192992 (= (inv!57602 (tag!7746 (h!48541 (t!334004 rules!2999)))) (= (mod (str.len (value!216884 (tag!7746 (h!48541 (t!334004 rules!2999))))) 2) 0))))

(assert (=> b!4027722 d!1192992))

(declare-fun d!1192994 () Bool)

(declare-fun res!1639276 () Bool)

(declare-fun e!2498741 () Bool)

(assert (=> d!1192994 (=> (not res!1639276) (not e!2498741))))

(assert (=> d!1192994 (= res!1639276 (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999))))))))

(assert (=> d!1192994 (= (inv!57606 (transformation!6886 (h!48541 (t!334004 rules!2999)))) e!2498741)))

(declare-fun b!4027765 () Bool)

(assert (=> b!4027765 (= e!2498741 (equivClasses!2843 (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999))))))))

(assert (= (and d!1192994 res!1639276) b!4027765))

(declare-fun m!4619303 () Bool)

(assert (=> d!1192994 m!4619303))

(declare-fun m!4619305 () Bool)

(assert (=> b!4027765 m!4619305))

(assert (=> b!4027722 d!1192994))

(declare-fun d!1192996 () Bool)

(assert (=> d!1192996 (= (isEmpty!25746 lt!1430752) (not ((_ is Some!9299) lt!1430752)))))

(assert (=> d!1192772 d!1192996))

(declare-fun d!1192998 () Bool)

(declare-fun e!2498743 () Bool)

(assert (=> d!1192998 e!2498743))

(declare-fun res!1639280 () Bool)

(assert (=> d!1192998 (=> res!1639280 e!2498743)))

(declare-fun lt!1430869 () Bool)

(assert (=> d!1192998 (= res!1639280 (not lt!1430869))))

(declare-fun e!2498742 () Bool)

(assert (=> d!1192998 (= lt!1430869 e!2498742)))

(declare-fun res!1639278 () Bool)

(assert (=> d!1192998 (=> res!1639278 e!2498742)))

(assert (=> d!1192998 (= res!1639278 ((_ is Nil!43119) lt!1430712))))

(assert (=> d!1192998 (= (isPrefix!3973 lt!1430712 lt!1430712) lt!1430869)))

(declare-fun b!4027766 () Bool)

(declare-fun e!2498744 () Bool)

(assert (=> b!4027766 (= e!2498742 e!2498744)))

(declare-fun res!1639279 () Bool)

(assert (=> b!4027766 (=> (not res!1639279) (not e!2498744))))

(assert (=> b!4027766 (= res!1639279 (not ((_ is Nil!43119) lt!1430712)))))

(declare-fun b!4027768 () Bool)

(assert (=> b!4027768 (= e!2498744 (isPrefix!3973 (tail!6271 lt!1430712) (tail!6271 lt!1430712)))))

(declare-fun b!4027769 () Bool)

(assert (=> b!4027769 (= e!2498743 (>= (size!32232 lt!1430712) (size!32232 lt!1430712)))))

(declare-fun b!4027767 () Bool)

(declare-fun res!1639277 () Bool)

(assert (=> b!4027767 (=> (not res!1639277) (not e!2498744))))

(assert (=> b!4027767 (= res!1639277 (= (head!8539 lt!1430712) (head!8539 lt!1430712)))))

(assert (= (and d!1192998 (not res!1639278)) b!4027766))

(assert (= (and b!4027766 res!1639279) b!4027767))

(assert (= (and b!4027767 res!1639277) b!4027768))

(assert (= (and d!1192998 (not res!1639280)) b!4027769))

(assert (=> b!4027768 m!4619245))

(assert (=> b!4027768 m!4619245))

(assert (=> b!4027768 m!4619245))

(assert (=> b!4027768 m!4619245))

(declare-fun m!4619307 () Bool)

(assert (=> b!4027768 m!4619307))

(assert (=> b!4027769 m!4618865))

(assert (=> b!4027769 m!4618865))

(assert (=> b!4027767 m!4619249))

(assert (=> b!4027767 m!4619249))

(assert (=> d!1192772 d!1192998))

(declare-fun d!1193000 () Bool)

(assert (=> d!1193000 (isPrefix!3973 lt!1430712 lt!1430712)))

(declare-fun lt!1430872 () Unit!62282)

(declare-fun choose!24371 (List!43243 List!43243) Unit!62282)

(assert (=> d!1193000 (= lt!1430872 (choose!24371 lt!1430712 lt!1430712))))

(assert (=> d!1193000 (= (lemmaIsPrefixRefl!2539 lt!1430712 lt!1430712) lt!1430872)))

(declare-fun bs!590130 () Bool)

(assert (= bs!590130 d!1193000))

(assert (=> bs!590130 m!4618841))

(declare-fun m!4619309 () Bool)

(assert (=> bs!590130 m!4619309))

(assert (=> d!1192772 d!1193000))

(declare-fun d!1193002 () Bool)

(assert (=> d!1193002 true))

(declare-fun lt!1430875 () Bool)

(declare-fun lambda!127204 () Int)

(declare-fun forall!8361 (List!43245 Int) Bool)

(assert (=> d!1193002 (= lt!1430875 (forall!8361 rules!2999 lambda!127204))))

(declare-fun e!2498751 () Bool)

(assert (=> d!1193002 (= lt!1430875 e!2498751)))

(declare-fun res!1639288 () Bool)

(assert (=> d!1193002 (=> res!1639288 e!2498751)))

(assert (=> d!1193002 (= res!1639288 (not ((_ is Cons!43121) rules!2999)))))

(assert (=> d!1193002 (= (rulesValidInductive!2510 thiss!21717 rules!2999) lt!1430875)))

(declare-fun b!4027778 () Bool)

(declare-fun e!2498752 () Bool)

(assert (=> b!4027778 (= e!2498751 e!2498752)))

(declare-fun res!1639287 () Bool)

(assert (=> b!4027778 (=> (not res!1639287) (not e!2498752))))

(assert (=> b!4027778 (= res!1639287 (ruleValid!2816 thiss!21717 (h!48541 rules!2999)))))

(declare-fun b!4027779 () Bool)

(assert (=> b!4027779 (= e!2498752 (rulesValidInductive!2510 thiss!21717 (t!334004 rules!2999)))))

(assert (= (and d!1193002 (not res!1639288)) b!4027778))

(assert (= (and b!4027778 res!1639287) b!4027779))

(declare-fun m!4619313 () Bool)

(assert (=> d!1193002 m!4619313))

(declare-fun m!4619315 () Bool)

(assert (=> b!4027778 m!4619315))

(declare-fun m!4619317 () Bool)

(assert (=> b!4027779 m!4619317))

(assert (=> d!1192772 d!1193002))

(declare-fun d!1193006 () Bool)

(declare-fun lt!1430877 () Int)

(assert (=> d!1193006 (>= lt!1430877 0)))

(declare-fun e!2498756 () Int)

(assert (=> d!1193006 (= lt!1430877 e!2498756)))

(declare-fun c!695876 () Bool)

(assert (=> d!1193006 (= c!695876 ((_ is Nil!43119) lt!1430811))))

(assert (=> d!1193006 (= (size!32232 lt!1430811) lt!1430877)))

(declare-fun b!4027786 () Bool)

(assert (=> b!4027786 (= e!2498756 0)))

(declare-fun b!4027787 () Bool)

(assert (=> b!4027787 (= e!2498756 (+ 1 (size!32232 (t!334002 lt!1430811))))))

(assert (= (and d!1193006 c!695876) b!4027786))

(assert (= (and d!1193006 (not c!695876)) b!4027787))

(declare-fun m!4619323 () Bool)

(assert (=> b!4027787 m!4619323))

(assert (=> b!4027462 d!1193006))

(assert (=> b!4027462 d!1192828))

(declare-fun d!1193008 () Bool)

(declare-fun lt!1430878 () Int)

(assert (=> d!1193008 (>= lt!1430878 0)))

(declare-fun e!2498757 () Int)

(assert (=> d!1193008 (= lt!1430878 e!2498757)))

(declare-fun c!695877 () Bool)

(assert (=> d!1193008 (= c!695877 ((_ is Nil!43119) suffixResult!105))))

(assert (=> d!1193008 (= (size!32232 suffixResult!105) lt!1430878)))

(declare-fun b!4027788 () Bool)

(assert (=> b!4027788 (= e!2498757 0)))

(declare-fun b!4027789 () Bool)

(assert (=> b!4027789 (= e!2498757 (+ 1 (size!32232 (t!334002 suffixResult!105))))))

(assert (= (and d!1193008 c!695877) b!4027788))

(assert (= (and d!1193008 (not c!695877)) b!4027789))

(declare-fun m!4619333 () Bool)

(assert (=> b!4027789 m!4619333))

(assert (=> b!4027462 d!1193008))

(declare-fun bs!590135 () Bool)

(declare-fun d!1193010 () Bool)

(assert (= bs!590135 (and d!1193010 d!1192912)))

(declare-fun lambda!127208 () Int)

(assert (=> bs!590135 (= lambda!127208 lambda!127195)))

(assert (=> d!1193010 true))

(assert (=> d!1193010 (< (dynLambda!18286 order!22569 (toChars!9265 (transformation!6886 (rule!9944 token!484)))) (dynLambda!18285 order!22567 lambda!127208))))

(assert (=> d!1193010 true))

(assert (=> d!1193010 (< (dynLambda!18284 order!22565 (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (dynLambda!18285 order!22567 lambda!127208))))

(declare-fun Forall!1480 (Int) Bool)

(assert (=> d!1193010 (= (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (Forall!1480 lambda!127208))))

(declare-fun bs!590136 () Bool)

(assert (= bs!590136 d!1193010))

(declare-fun m!4619345 () Bool)

(assert (=> bs!590136 m!4619345))

(assert (=> d!1192858 d!1193010))

(assert (=> d!1192908 d!1192906))

(assert (=> d!1192908 d!1192922))

(declare-fun d!1193024 () Bool)

(declare-fun e!2498764 () Bool)

(assert (=> d!1193024 e!2498764))

(declare-fun res!1639296 () Bool)

(assert (=> d!1193024 (=> (not res!1639296) (not e!2498764))))

(declare-fun lt!1430880 () List!43243)

(assert (=> d!1193024 (= res!1639296 (= (content!6550 lt!1430880) ((_ map or) (content!6550 lt!1430705) (content!6550 (++!11288 lt!1430716 suffix!1299)))))))

(declare-fun e!2498763 () List!43243)

(assert (=> d!1193024 (= lt!1430880 e!2498763)))

(declare-fun c!695881 () Bool)

(assert (=> d!1193024 (= c!695881 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1193024 (= (++!11288 lt!1430705 (++!11288 lt!1430716 suffix!1299)) lt!1430880)))

(declare-fun b!4027806 () Bool)

(assert (=> b!4027806 (= e!2498764 (or (not (= (++!11288 lt!1430716 suffix!1299) Nil!43119)) (= lt!1430880 lt!1430705)))))

(declare-fun b!4027805 () Bool)

(declare-fun res!1639297 () Bool)

(assert (=> b!4027805 (=> (not res!1639297) (not e!2498764))))

(assert (=> b!4027805 (= res!1639297 (= (size!32232 lt!1430880) (+ (size!32232 lt!1430705) (size!32232 (++!11288 lt!1430716 suffix!1299)))))))

(declare-fun b!4027803 () Bool)

(assert (=> b!4027803 (= e!2498763 (++!11288 lt!1430716 suffix!1299))))

(declare-fun b!4027804 () Bool)

(assert (=> b!4027804 (= e!2498763 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) (++!11288 lt!1430716 suffix!1299))))))

(assert (= (and d!1193024 c!695881) b!4027803))

(assert (= (and d!1193024 (not c!695881)) b!4027804))

(assert (= (and d!1193024 res!1639296) b!4027805))

(assert (= (and b!4027805 res!1639297) b!4027806))

(declare-fun m!4619347 () Bool)

(assert (=> d!1193024 m!4619347))

(assert (=> d!1193024 m!4618987))

(assert (=> d!1193024 m!4618721))

(declare-fun m!4619349 () Bool)

(assert (=> d!1193024 m!4619349))

(declare-fun m!4619351 () Bool)

(assert (=> b!4027805 m!4619351))

(assert (=> b!4027805 m!4618709))

(assert (=> b!4027805 m!4618721))

(declare-fun m!4619355 () Bool)

(assert (=> b!4027805 m!4619355))

(assert (=> b!4027804 m!4618721))

(declare-fun m!4619357 () Bool)

(assert (=> b!4027804 m!4619357))

(assert (=> d!1192908 d!1193024))

(declare-fun d!1193026 () Bool)

(assert (=> d!1193026 (= (++!11288 (++!11288 lt!1430705 lt!1430716) suffix!1299) (++!11288 lt!1430705 (++!11288 lt!1430716 suffix!1299)))))

(assert (=> d!1193026 true))

(declare-fun _$52!2283 () Unit!62282)

(assert (=> d!1193026 (= (choose!24368 lt!1430705 lt!1430716 suffix!1299) _$52!2283)))

(declare-fun bs!590137 () Bool)

(assert (= bs!590137 d!1193026))

(assert (=> bs!590137 m!4618661))

(assert (=> bs!590137 m!4618661))

(assert (=> bs!590137 m!4619141))

(assert (=> bs!590137 m!4618721))

(assert (=> bs!590137 m!4618721))

(assert (=> bs!590137 m!4619139))

(assert (=> d!1192908 d!1193026))

(declare-fun d!1193030 () Bool)

(declare-fun e!2498769 () Bool)

(assert (=> d!1193030 e!2498769))

(declare-fun res!1639305 () Bool)

(assert (=> d!1193030 (=> (not res!1639305) (not e!2498769))))

(declare-fun lt!1430886 () List!43243)

(assert (=> d!1193030 (= res!1639305 (= (content!6550 lt!1430886) ((_ map or) (content!6550 (++!11288 lt!1430705 lt!1430716)) (content!6550 suffix!1299))))))

(declare-fun e!2498768 () List!43243)

(assert (=> d!1193030 (= lt!1430886 e!2498768)))

(declare-fun c!695883 () Bool)

(assert (=> d!1193030 (= c!695883 ((_ is Nil!43119) (++!11288 lt!1430705 lt!1430716)))))

(assert (=> d!1193030 (= (++!11288 (++!11288 lt!1430705 lt!1430716) suffix!1299) lt!1430886)))

(declare-fun b!4027819 () Bool)

(assert (=> b!4027819 (= e!2498769 (or (not (= suffix!1299 Nil!43119)) (= lt!1430886 (++!11288 lt!1430705 lt!1430716))))))

(declare-fun b!4027818 () Bool)

(declare-fun res!1639306 () Bool)

(assert (=> b!4027818 (=> (not res!1639306) (not e!2498769))))

(assert (=> b!4027818 (= res!1639306 (= (size!32232 lt!1430886) (+ (size!32232 (++!11288 lt!1430705 lt!1430716)) (size!32232 suffix!1299))))))

(declare-fun b!4027816 () Bool)

(assert (=> b!4027816 (= e!2498768 suffix!1299)))

(declare-fun b!4027817 () Bool)

(assert (=> b!4027817 (= e!2498768 (Cons!43119 (h!48539 (++!11288 lt!1430705 lt!1430716)) (++!11288 (t!334002 (++!11288 lt!1430705 lt!1430716)) suffix!1299)))))

(assert (= (and d!1193030 c!695883) b!4027816))

(assert (= (and d!1193030 (not c!695883)) b!4027817))

(assert (= (and d!1193030 res!1639305) b!4027818))

(assert (= (and b!4027818 res!1639306) b!4027819))

(declare-fun m!4619363 () Bool)

(assert (=> d!1193030 m!4619363))

(assert (=> d!1193030 m!4618661))

(declare-fun m!4619365 () Bool)

(assert (=> d!1193030 m!4619365))

(assert (=> d!1193030 m!4618911))

(declare-fun m!4619367 () Bool)

(assert (=> b!4027818 m!4619367))

(assert (=> b!4027818 m!4618661))

(declare-fun m!4619369 () Bool)

(assert (=> b!4027818 m!4619369))

(assert (=> b!4027818 m!4618703))

(declare-fun m!4619371 () Bool)

(assert (=> b!4027817 m!4619371))

(assert (=> d!1192908 d!1193030))

(declare-fun d!1193032 () Bool)

(declare-fun lt!1430887 () Int)

(assert (=> d!1193032 (>= lt!1430887 0)))

(declare-fun e!2498770 () Int)

(assert (=> d!1193032 (= lt!1430887 e!2498770)))

(declare-fun c!695884 () Bool)

(assert (=> d!1193032 (= c!695884 ((_ is Nil!43119) lt!1430848))))

(assert (=> d!1193032 (= (size!32232 lt!1430848) lt!1430887)))

(declare-fun b!4027820 () Bool)

(assert (=> b!4027820 (= e!2498770 0)))

(declare-fun b!4027821 () Bool)

(assert (=> b!4027821 (= e!2498770 (+ 1 (size!32232 (t!334002 lt!1430848))))))

(assert (= (and d!1193032 c!695884) b!4027820))

(assert (= (and d!1193032 (not c!695884)) b!4027821))

(declare-fun m!4619373 () Bool)

(assert (=> b!4027821 m!4619373))

(assert (=> b!4027605 d!1193032))

(assert (=> b!4027605 d!1192828))

(declare-fun d!1193034 () Bool)

(declare-fun lt!1430888 () Int)

(assert (=> d!1193034 (>= lt!1430888 0)))

(declare-fun e!2498771 () Int)

(assert (=> d!1193034 (= lt!1430888 e!2498771)))

(declare-fun c!695885 () Bool)

(assert (=> d!1193034 (= c!695885 ((_ is Nil!43119) newSuffixResult!27))))

(assert (=> d!1193034 (= (size!32232 newSuffixResult!27) lt!1430888)))

(declare-fun b!4027822 () Bool)

(assert (=> b!4027822 (= e!2498771 0)))

(declare-fun b!4027823 () Bool)

(assert (=> b!4027823 (= e!2498771 (+ 1 (size!32232 (t!334002 newSuffixResult!27))))))

(assert (= (and d!1193034 c!695885) b!4027822))

(assert (= (and d!1193034 (not c!695885)) b!4027823))

(declare-fun m!4619375 () Bool)

(assert (=> b!4027823 m!4619375))

(assert (=> b!4027605 d!1193034))

(declare-fun d!1193036 () Bool)

(declare-fun lt!1430889 () Int)

(assert (=> d!1193036 (>= lt!1430889 0)))

(declare-fun e!2498772 () Int)

(assert (=> d!1193036 (= lt!1430889 e!2498772)))

(declare-fun c!695886 () Bool)

(assert (=> d!1193036 (= c!695886 ((_ is Nil!43119) lt!1430719))))

(assert (=> d!1193036 (= (size!32232 lt!1430719) lt!1430889)))

(declare-fun b!4027824 () Bool)

(assert (=> b!4027824 (= e!2498772 0)))

(declare-fun b!4027825 () Bool)

(assert (=> b!4027825 (= e!2498772 (+ 1 (size!32232 (t!334002 lt!1430719))))))

(assert (= (and d!1193036 c!695886) b!4027824))

(assert (= (and d!1193036 (not c!695886)) b!4027825))

(declare-fun m!4619377 () Bool)

(assert (=> b!4027825 m!4619377))

(assert (=> b!4027677 d!1193036))

(assert (=> b!4027677 d!1192828))

(declare-fun d!1193038 () Bool)

(declare-fun lt!1430890 () Int)

(assert (=> d!1193038 (>= lt!1430890 0)))

(declare-fun e!2498773 () Int)

(assert (=> d!1193038 (= lt!1430890 e!2498773)))

(declare-fun c!695887 () Bool)

(assert (=> d!1193038 (= c!695887 ((_ is Nil!43119) lt!1430850))))

(assert (=> d!1193038 (= (size!32232 lt!1430850) lt!1430890)))

(declare-fun b!4027826 () Bool)

(assert (=> b!4027826 (= e!2498773 0)))

(declare-fun b!4027827 () Bool)

(assert (=> b!4027827 (= e!2498773 (+ 1 (size!32232 (t!334002 lt!1430850))))))

(assert (= (and d!1193038 c!695887) b!4027826))

(assert (= (and d!1193038 (not c!695887)) b!4027827))

(declare-fun m!4619379 () Bool)

(assert (=> b!4027827 m!4619379))

(assert (=> b!4027613 d!1193038))

(assert (=> b!4027613 d!1192828))

(declare-fun d!1193040 () Bool)

(declare-fun lt!1430891 () Int)

(assert (=> d!1193040 (>= lt!1430891 0)))

(declare-fun e!2498774 () Int)

(assert (=> d!1193040 (= lt!1430891 e!2498774)))

(declare-fun c!695888 () Bool)

(assert (=> d!1193040 (= c!695888 ((_ is Nil!43119) lt!1430716))))

(assert (=> d!1193040 (= (size!32232 lt!1430716) lt!1430891)))

(declare-fun b!4027828 () Bool)

(assert (=> b!4027828 (= e!2498774 0)))

(declare-fun b!4027829 () Bool)

(assert (=> b!4027829 (= e!2498774 (+ 1 (size!32232 (t!334002 lt!1430716))))))

(assert (= (and d!1193040 c!695888) b!4027828))

(assert (= (and d!1193040 (not c!695888)) b!4027829))

(declare-fun m!4619381 () Bool)

(assert (=> b!4027829 m!4619381))

(assert (=> b!4027613 d!1193040))

(declare-fun d!1193042 () Bool)

(declare-fun lt!1430892 () Int)

(assert (=> d!1193042 (>= lt!1430892 0)))

(declare-fun e!2498775 () Int)

(assert (=> d!1193042 (= lt!1430892 e!2498775)))

(declare-fun c!695889 () Bool)

(assert (=> d!1193042 (= c!695889 ((_ is Nil!43119) (t!334002 prefix!494)))))

(assert (=> d!1193042 (= (size!32232 (t!334002 prefix!494)) lt!1430892)))

(declare-fun b!4027830 () Bool)

(assert (=> b!4027830 (= e!2498775 0)))

(declare-fun b!4027831 () Bool)

(assert (=> b!4027831 (= e!2498775 (+ 1 (size!32232 (t!334002 (t!334002 prefix!494)))))))

(assert (= (and d!1193042 c!695889) b!4027830))

(assert (= (and d!1193042 (not c!695889)) b!4027831))

(declare-fun m!4619383 () Bool)

(assert (=> b!4027831 m!4619383))

(assert (=> b!4027401 d!1193042))

(declare-fun d!1193044 () Bool)

(declare-fun e!2498777 () Bool)

(assert (=> d!1193044 e!2498777))

(declare-fun res!1639307 () Bool)

(assert (=> d!1193044 (=> (not res!1639307) (not e!2498777))))

(declare-fun lt!1430893 () List!43243)

(assert (=> d!1193044 (= res!1639307 (= (content!6550 lt!1430893) ((_ map or) (content!6550 (t!334002 prefix!494)) (content!6550 newSuffix!27))))))

(declare-fun e!2498776 () List!43243)

(assert (=> d!1193044 (= lt!1430893 e!2498776)))

(declare-fun c!695890 () Bool)

(assert (=> d!1193044 (= c!695890 ((_ is Nil!43119) (t!334002 prefix!494)))))

(assert (=> d!1193044 (= (++!11288 (t!334002 prefix!494) newSuffix!27) lt!1430893)))

(declare-fun b!4027835 () Bool)

(assert (=> b!4027835 (= e!2498777 (or (not (= newSuffix!27 Nil!43119)) (= lt!1430893 (t!334002 prefix!494))))))

(declare-fun b!4027834 () Bool)

(declare-fun res!1639308 () Bool)

(assert (=> b!4027834 (=> (not res!1639308) (not e!2498777))))

(assert (=> b!4027834 (= res!1639308 (= (size!32232 lt!1430893) (+ (size!32232 (t!334002 prefix!494)) (size!32232 newSuffix!27))))))

(declare-fun b!4027832 () Bool)

(assert (=> b!4027832 (= e!2498776 newSuffix!27)))

(declare-fun b!4027833 () Bool)

(assert (=> b!4027833 (= e!2498776 (Cons!43119 (h!48539 (t!334002 prefix!494)) (++!11288 (t!334002 (t!334002 prefix!494)) newSuffix!27)))))

(assert (= (and d!1193044 c!695890) b!4027832))

(assert (= (and d!1193044 (not c!695890)) b!4027833))

(assert (= (and d!1193044 res!1639307) b!4027834))

(assert (= (and b!4027834 res!1639308) b!4027835))

(declare-fun m!4619389 () Bool)

(assert (=> d!1193044 m!4619389))

(assert (=> d!1193044 m!4619297))

(assert (=> d!1193044 m!4619193))

(declare-fun m!4619393 () Bool)

(assert (=> b!4027834 m!4619393))

(assert (=> b!4027834 m!4618931))

(assert (=> b!4027834 m!4618705))

(declare-fun m!4619395 () Bool)

(assert (=> b!4027833 m!4619395))

(assert (=> b!4027608 d!1193044))

(assert (=> b!4027670 d!1192968))

(declare-fun d!1193046 () Bool)

(declare-fun c!695891 () Bool)

(assert (=> d!1193046 (= c!695891 ((_ is Nil!43119) lt!1430811))))

(declare-fun e!2498778 () (InoxSet C!23768))

(assert (=> d!1193046 (= (content!6550 lt!1430811) e!2498778)))

(declare-fun b!4027836 () Bool)

(assert (=> b!4027836 (= e!2498778 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027837 () Bool)

(assert (=> b!4027837 (= e!2498778 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430811) true) (content!6550 (t!334002 lt!1430811))))))

(assert (= (and d!1193046 c!695891) b!4027836))

(assert (= (and d!1193046 (not c!695891)) b!4027837))

(declare-fun m!4619401 () Bool)

(assert (=> b!4027837 m!4619401))

(declare-fun m!4619403 () Bool)

(assert (=> b!4027837 m!4619403))

(assert (=> d!1192856 d!1193046))

(declare-fun d!1193048 () Bool)

(declare-fun c!695892 () Bool)

(assert (=> d!1193048 (= c!695892 ((_ is Nil!43119) lt!1430705))))

(declare-fun e!2498779 () (InoxSet C!23768))

(assert (=> d!1193048 (= (content!6550 lt!1430705) e!2498779)))

(declare-fun b!4027838 () Bool)

(assert (=> b!4027838 (= e!2498779 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027839 () Bool)

(assert (=> b!4027839 (= e!2498779 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430705) true) (content!6550 (t!334002 lt!1430705))))))

(assert (= (and d!1193048 c!695892) b!4027838))

(assert (= (and d!1193048 (not c!695892)) b!4027839))

(declare-fun m!4619409 () Bool)

(assert (=> b!4027839 m!4619409))

(declare-fun m!4619411 () Bool)

(assert (=> b!4027839 m!4619411))

(assert (=> d!1192856 d!1193048))

(declare-fun d!1193050 () Bool)

(declare-fun c!695893 () Bool)

(assert (=> d!1193050 (= c!695893 ((_ is Nil!43119) suffixResult!105))))

(declare-fun e!2498780 () (InoxSet C!23768))

(assert (=> d!1193050 (= (content!6550 suffixResult!105) e!2498780)))

(declare-fun b!4027840 () Bool)

(assert (=> b!4027840 (= e!2498780 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027841 () Bool)

(assert (=> b!4027841 (= e!2498780 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 suffixResult!105) true) (content!6550 (t!334002 suffixResult!105))))))

(assert (= (and d!1193050 c!695893) b!4027840))

(assert (= (and d!1193050 (not c!695893)) b!4027841))

(declare-fun m!4619417 () Bool)

(assert (=> b!4027841 m!4619417))

(declare-fun m!4619419 () Bool)

(assert (=> b!4027841 m!4619419))

(assert (=> d!1192856 d!1193050))

(declare-fun d!1193052 () Bool)

(declare-fun e!2498782 () Bool)

(assert (=> d!1193052 e!2498782))

(declare-fun res!1639309 () Bool)

(assert (=> d!1193052 (=> (not res!1639309) (not e!2498782))))

(declare-fun lt!1430894 () List!43243)

(assert (=> d!1193052 (= res!1639309 (= (content!6550 lt!1430894) ((_ map or) (content!6550 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (content!6550 (_2!24245 (get!14156 lt!1430752))))))))

(declare-fun e!2498781 () List!43243)

(assert (=> d!1193052 (= lt!1430894 e!2498781)))

(declare-fun c!695894 () Bool)

(assert (=> d!1193052 (= c!695894 ((_ is Nil!43119) (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))

(assert (=> d!1193052 (= (++!11288 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))) (_2!24245 (get!14156 lt!1430752))) lt!1430894)))

(declare-fun b!4027845 () Bool)

(assert (=> b!4027845 (= e!2498782 (or (not (= (_2!24245 (get!14156 lt!1430752)) Nil!43119)) (= lt!1430894 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))))))))

(declare-fun b!4027844 () Bool)

(declare-fun res!1639310 () Bool)

(assert (=> b!4027844 (=> (not res!1639310) (not e!2498782))))

(assert (=> b!4027844 (= res!1639310 (= (size!32232 lt!1430894) (+ (size!32232 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (size!32232 (_2!24245 (get!14156 lt!1430752))))))))

(declare-fun b!4027842 () Bool)

(assert (=> b!4027842 (= e!2498781 (_2!24245 (get!14156 lt!1430752)))))

(declare-fun b!4027843 () Bool)

(assert (=> b!4027843 (= e!2498781 (Cons!43119 (h!48539 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (++!11288 (t!334002 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (_2!24245 (get!14156 lt!1430752)))))))

(assert (= (and d!1193052 c!695894) b!4027842))

(assert (= (and d!1193052 (not c!695894)) b!4027843))

(assert (= (and d!1193052 res!1639309) b!4027844))

(assert (= (and b!4027844 res!1639310) b!4027845))

(declare-fun m!4619425 () Bool)

(assert (=> d!1193052 m!4619425))

(assert (=> d!1193052 m!4618849))

(declare-fun m!4619427 () Bool)

(assert (=> d!1193052 m!4619427))

(declare-fun m!4619429 () Bool)

(assert (=> d!1193052 m!4619429))

(declare-fun m!4619433 () Bool)

(assert (=> b!4027844 m!4619433))

(assert (=> b!4027844 m!4618849))

(declare-fun m!4619435 () Bool)

(assert (=> b!4027844 m!4619435))

(assert (=> b!4027844 m!4618863))

(declare-fun m!4619439 () Bool)

(assert (=> b!4027843 m!4619439))

(assert (=> b!4027325 d!1193052))

(declare-fun d!1193054 () Bool)

(assert (=> d!1193054 (= (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))) (list!16041 (c!695780 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))

(declare-fun bs!590138 () Bool)

(assert (= bs!590138 d!1193054))

(declare-fun m!4619441 () Bool)

(assert (=> bs!590138 m!4619441))

(assert (=> b!4027325 d!1193054))

(declare-fun d!1193056 () Bool)

(declare-fun lt!1430895 () BalanceConc!25788)

(assert (=> d!1193056 (= (list!16040 lt!1430895) (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752))))))

(assert (=> d!1193056 (= lt!1430895 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))) (value!216885 (_1!24245 (get!14156 lt!1430752)))))))

(assert (=> d!1193056 (= (charsOf!4702 (_1!24245 (get!14156 lt!1430752))) lt!1430895)))

(declare-fun b_lambda!117539 () Bool)

(assert (=> (not b_lambda!117539) (not d!1193056)))

(declare-fun t!334044 () Bool)

(declare-fun tb!242041 () Bool)

(assert (=> (and b!4027215 (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334044) tb!242041))

(declare-fun b!4027848 () Bool)

(declare-fun e!2498784 () Bool)

(declare-fun tp!1224065 () Bool)

(assert (=> b!4027848 (= e!2498784 (and (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))) (value!216885 (_1!24245 (get!14156 lt!1430752)))))) tp!1224065))))

(declare-fun result!293398 () Bool)

(assert (=> tb!242041 (= result!293398 (and (inv!57610 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))) (value!216885 (_1!24245 (get!14156 lt!1430752))))) e!2498784))))

(assert (= tb!242041 b!4027848))

(declare-fun m!4619447 () Bool)

(assert (=> b!4027848 m!4619447))

(declare-fun m!4619449 () Bool)

(assert (=> tb!242041 m!4619449))

(assert (=> d!1193056 t!334044))

(declare-fun b_and!309487 () Bool)

(assert (= b_and!309479 (and (=> t!334044 result!293398) b_and!309487)))

(declare-fun tb!242043 () Bool)

(declare-fun t!334046 () Bool)

(assert (=> (and b!4027202 (= (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334046) tb!242043))

(declare-fun result!293400 () Bool)

(assert (= result!293400 result!293398))

(assert (=> d!1193056 t!334046))

(declare-fun b_and!309489 () Bool)

(assert (= b_and!309481 (and (=> t!334046 result!293400) b_and!309489)))

(declare-fun t!334048 () Bool)

(declare-fun tb!242045 () Bool)

(assert (=> (and b!4027723 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334048) tb!242045))

(declare-fun result!293402 () Bool)

(assert (= result!293402 result!293398))

(assert (=> d!1193056 t!334048))

(declare-fun b_and!309491 () Bool)

(assert (= b_and!309485 (and (=> t!334048 result!293402) b_and!309491)))

(declare-fun m!4619451 () Bool)

(assert (=> d!1193056 m!4619451))

(declare-fun m!4619453 () Bool)

(assert (=> d!1193056 m!4619453))

(assert (=> b!4027325 d!1193056))

(declare-fun d!1193062 () Bool)

(assert (=> d!1193062 (= (get!14156 lt!1430752) (v!39685 lt!1430752))))

(assert (=> b!4027325 d!1193062))

(declare-fun d!1193064 () Bool)

(declare-fun charsToInt!0 (List!43244) (_ BitVec 32))

(assert (=> d!1193064 (= (inv!16 (value!216885 token!484)) (= (charsToInt!0 (text!50259 (value!216885 token!484))) (value!216876 (value!216885 token!484))))))

(declare-fun bs!590139 () Bool)

(assert (= bs!590139 d!1193064))

(declare-fun m!4619455 () Bool)

(assert (=> bs!590139 m!4619455))

(assert (=> b!4027442 d!1193064))

(declare-fun d!1193066 () Bool)

(declare-fun e!2498794 () Bool)

(assert (=> d!1193066 e!2498794))

(declare-fun res!1639315 () Bool)

(assert (=> d!1193066 (=> (not res!1639315) (not e!2498794))))

(declare-fun lt!1430902 () BalanceConc!25788)

(assert (=> d!1193066 (= res!1639315 (= (list!16040 lt!1430902) lt!1430705))))

(declare-fun fromList!850 (List!43243) Conc!13097)

(assert (=> d!1193066 (= lt!1430902 (BalanceConc!25789 (fromList!850 lt!1430705)))))

(assert (=> d!1193066 (= (fromListB!2329 lt!1430705) lt!1430902)))

(declare-fun b!4027863 () Bool)

(declare-fun isBalanced!3670 (Conc!13097) Bool)

(assert (=> b!4027863 (= e!2498794 (isBalanced!3670 (fromList!850 lt!1430705)))))

(assert (= (and d!1193066 res!1639315) b!4027863))

(declare-fun m!4619469 () Bool)

(assert (=> d!1193066 m!4619469))

(declare-fun m!4619473 () Bool)

(assert (=> d!1193066 m!4619473))

(assert (=> b!4027863 m!4619473))

(assert (=> b!4027863 m!4619473))

(declare-fun m!4619475 () Bool)

(assert (=> b!4027863 m!4619475))

(assert (=> d!1192916 d!1193066))

(declare-fun b!4027892 () Bool)

(declare-fun e!2498809 () List!43243)

(declare-fun list!16043 (IArray!26199) List!43243)

(assert (=> b!4027892 (= e!2498809 (list!16043 (xs!16403 (c!695780 (charsOf!4702 token!484)))))))

(declare-fun b!4027890 () Bool)

(declare-fun e!2498808 () List!43243)

(assert (=> b!4027890 (= e!2498808 Nil!43119)))

(declare-fun d!1193078 () Bool)

(declare-fun c!695910 () Bool)

(assert (=> d!1193078 (= c!695910 ((_ is Empty!13097) (c!695780 (charsOf!4702 token!484))))))

(assert (=> d!1193078 (= (list!16041 (c!695780 (charsOf!4702 token!484))) e!2498808)))

(declare-fun b!4027891 () Bool)

(assert (=> b!4027891 (= e!2498808 e!2498809)))

(declare-fun c!695911 () Bool)

(assert (=> b!4027891 (= c!695911 ((_ is Leaf!20247) (c!695780 (charsOf!4702 token!484))))))

(declare-fun b!4027893 () Bool)

(assert (=> b!4027893 (= e!2498809 (++!11288 (list!16041 (left!32490 (c!695780 (charsOf!4702 token!484)))) (list!16041 (right!32820 (c!695780 (charsOf!4702 token!484))))))))

(assert (= (and d!1193078 c!695910) b!4027890))

(assert (= (and d!1193078 (not c!695910)) b!4027891))

(assert (= (and b!4027891 c!695911) b!4027892))

(assert (= (and b!4027891 (not c!695911)) b!4027893))

(declare-fun m!4619487 () Bool)

(assert (=> b!4027892 m!4619487))

(declare-fun m!4619489 () Bool)

(assert (=> b!4027893 m!4619489))

(declare-fun m!4619491 () Bool)

(assert (=> b!4027893 m!4619491))

(assert (=> b!4027893 m!4619489))

(assert (=> b!4027893 m!4619491))

(declare-fun m!4619495 () Bool)

(assert (=> b!4027893 m!4619495))

(assert (=> d!1192838 d!1193078))

(declare-fun d!1193082 () Bool)

(declare-fun e!2498811 () Bool)

(assert (=> d!1193082 e!2498811))

(declare-fun res!1639329 () Bool)

(assert (=> d!1193082 (=> res!1639329 e!2498811)))

(declare-fun lt!1430905 () Bool)

(assert (=> d!1193082 (= res!1639329 (not lt!1430905))))

(declare-fun e!2498810 () Bool)

(assert (=> d!1193082 (= lt!1430905 e!2498810)))

(declare-fun res!1639327 () Bool)

(assert (=> d!1193082 (=> res!1639327 e!2498810)))

(assert (=> d!1193082 (= res!1639327 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1193082 (= (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 lt!1430721)) lt!1430905)))

(declare-fun b!4027894 () Bool)

(declare-fun e!2498812 () Bool)

(assert (=> b!4027894 (= e!2498810 e!2498812)))

(declare-fun res!1639328 () Bool)

(assert (=> b!4027894 (=> (not res!1639328) (not e!2498812))))

(assert (=> b!4027894 (= res!1639328 (not ((_ is Nil!43119) (++!11288 lt!1430705 lt!1430721))))))

(declare-fun b!4027896 () Bool)

(assert (=> b!4027896 (= e!2498812 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 (++!11288 lt!1430705 lt!1430721))))))

(declare-fun b!4027897 () Bool)

(assert (=> b!4027897 (= e!2498811 (>= (size!32232 (++!11288 lt!1430705 lt!1430721)) (size!32232 lt!1430705)))))

(declare-fun b!4027895 () Bool)

(declare-fun res!1639326 () Bool)

(assert (=> b!4027895 (=> (not res!1639326) (not e!2498812))))

(assert (=> b!4027895 (= res!1639326 (= (head!8539 lt!1430705) (head!8539 (++!11288 lt!1430705 lt!1430721))))))

(assert (= (and d!1193082 (not res!1639327)) b!4027894))

(assert (= (and b!4027894 res!1639328) b!4027895))

(assert (= (and b!4027895 res!1639326) b!4027896))

(assert (= (and d!1193082 (not res!1639329)) b!4027897))

(assert (=> b!4027896 m!4619093))

(assert (=> b!4027896 m!4618717))

(declare-fun m!4619505 () Bool)

(assert (=> b!4027896 m!4619505))

(assert (=> b!4027896 m!4619093))

(assert (=> b!4027896 m!4619505))

(declare-fun m!4619507 () Bool)

(assert (=> b!4027896 m!4619507))

(assert (=> b!4027897 m!4618717))

(declare-fun m!4619509 () Bool)

(assert (=> b!4027897 m!4619509))

(assert (=> b!4027897 m!4618709))

(assert (=> b!4027895 m!4619101))

(assert (=> b!4027895 m!4618717))

(declare-fun m!4619513 () Bool)

(assert (=> b!4027895 m!4619513))

(assert (=> d!1192900 d!1193082))

(assert (=> d!1192900 d!1192902))

(declare-fun d!1193084 () Bool)

(assert (=> d!1193084 (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 lt!1430721))))

(assert (=> d!1193084 true))

(declare-fun _$46!1704 () Unit!62282)

(assert (=> d!1193084 (= (choose!24367 lt!1430705 lt!1430721) _$46!1704)))

(declare-fun bs!590141 () Bool)

(assert (= bs!590141 d!1193084))

(assert (=> bs!590141 m!4618717))

(assert (=> bs!590141 m!4618717))

(assert (=> bs!590141 m!4619105))

(assert (=> d!1192900 d!1193084))

(declare-fun d!1193088 () Bool)

(declare-fun lt!1430906 () Int)

(assert (=> d!1193088 (>= lt!1430906 0)))

(declare-fun e!2498813 () Int)

(assert (=> d!1193088 (= lt!1430906 e!2498813)))

(declare-fun c!695912 () Bool)

(assert (=> d!1193088 (= c!695912 ((_ is Nil!43119) lt!1430840))))

(assert (=> d!1193088 (= (size!32232 lt!1430840) lt!1430906)))

(declare-fun b!4027898 () Bool)

(assert (=> b!4027898 (= e!2498813 0)))

(declare-fun b!4027899 () Bool)

(assert (=> b!4027899 (= e!2498813 (+ 1 (size!32232 (t!334002 lt!1430840))))))

(assert (= (and d!1193088 c!695912) b!4027898))

(assert (= (and d!1193088 (not c!695912)) b!4027899))

(declare-fun m!4619517 () Bool)

(assert (=> b!4027899 m!4619517))

(assert (=> b!4027548 d!1193088))

(assert (=> b!4027548 d!1193040))

(assert (=> b!4027548 d!1192852))

(declare-fun d!1193092 () Bool)

(declare-fun lt!1430907 () Bool)

(assert (=> d!1193092 (= lt!1430907 (select (content!6552 rules!2999) (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))

(declare-fun e!2498814 () Bool)

(assert (=> d!1193092 (= lt!1430907 e!2498814)))

(declare-fun res!1639331 () Bool)

(assert (=> d!1193092 (=> (not res!1639331) (not e!2498814))))

(assert (=> d!1193092 (= res!1639331 ((_ is Cons!43121) rules!2999))))

(assert (=> d!1193092 (= (contains!8568 rules!2999 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) lt!1430907)))

(declare-fun b!4027900 () Bool)

(declare-fun e!2498815 () Bool)

(assert (=> b!4027900 (= e!2498814 e!2498815)))

(declare-fun res!1639330 () Bool)

(assert (=> b!4027900 (=> res!1639330 e!2498815)))

(assert (=> b!4027900 (= res!1639330 (= (h!48541 rules!2999) (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))

(declare-fun b!4027901 () Bool)

(assert (=> b!4027901 (= e!2498815 (contains!8568 (t!334004 rules!2999) (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))

(assert (= (and d!1193092 res!1639331) b!4027900))

(assert (= (and b!4027900 (not res!1639330)) b!4027901))

(assert (=> d!1193092 m!4619085))

(declare-fun m!4619521 () Bool)

(assert (=> d!1193092 m!4619521))

(declare-fun m!4619523 () Bool)

(assert (=> b!4027901 m!4619523))

(assert (=> b!4027328 d!1193092))

(assert (=> b!4027328 d!1193062))

(declare-fun d!1193096 () Bool)

(assert (=> d!1193096 (= (list!16040 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))) (list!16041 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(declare-fun bs!590143 () Bool)

(assert (= bs!590143 d!1193096))

(declare-fun m!4619525 () Bool)

(assert (=> bs!590143 m!4619525))

(assert (=> b!4027629 d!1193096))

(declare-fun d!1193098 () Bool)

(declare-fun e!2498817 () Bool)

(assert (=> d!1193098 e!2498817))

(declare-fun res!1639335 () Bool)

(assert (=> d!1193098 (=> res!1639335 e!2498817)))

(declare-fun lt!1430909 () Bool)

(assert (=> d!1193098 (= res!1639335 (not lt!1430909))))

(declare-fun e!2498816 () Bool)

(assert (=> d!1193098 (= lt!1430909 e!2498816)))

(declare-fun res!1639333 () Bool)

(assert (=> d!1193098 (=> res!1639333 e!2498816)))

(assert (=> d!1193098 (= res!1639333 ((_ is Nil!43119) (tail!6271 lt!1430705)))))

(assert (=> d!1193098 (= (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430712)) lt!1430909)))

(declare-fun b!4027902 () Bool)

(declare-fun e!2498818 () Bool)

(assert (=> b!4027902 (= e!2498816 e!2498818)))

(declare-fun res!1639334 () Bool)

(assert (=> b!4027902 (=> (not res!1639334) (not e!2498818))))

(assert (=> b!4027902 (= res!1639334 (not ((_ is Nil!43119) (tail!6271 lt!1430712))))))

(declare-fun b!4027904 () Bool)

(assert (=> b!4027904 (= e!2498818 (isPrefix!3973 (tail!6271 (tail!6271 lt!1430705)) (tail!6271 (tail!6271 lt!1430712))))))

(declare-fun b!4027905 () Bool)

(assert (=> b!4027905 (= e!2498817 (>= (size!32232 (tail!6271 lt!1430712)) (size!32232 (tail!6271 lt!1430705))))))

(declare-fun b!4027903 () Bool)

(declare-fun res!1639332 () Bool)

(assert (=> b!4027903 (=> (not res!1639332) (not e!2498818))))

(assert (=> b!4027903 (= res!1639332 (= (head!8539 (tail!6271 lt!1430705)) (head!8539 (tail!6271 lt!1430712))))))

(assert (= (and d!1193098 (not res!1639333)) b!4027902))

(assert (= (and b!4027902 res!1639334) b!4027903))

(assert (= (and b!4027903 res!1639332) b!4027904))

(assert (= (and d!1193098 (not res!1639335)) b!4027905))

(assert (=> b!4027904 m!4619093))

(declare-fun m!4619527 () Bool)

(assert (=> b!4027904 m!4619527))

(assert (=> b!4027904 m!4619245))

(declare-fun m!4619529 () Bool)

(assert (=> b!4027904 m!4619529))

(assert (=> b!4027904 m!4619527))

(assert (=> b!4027904 m!4619529))

(declare-fun m!4619531 () Bool)

(assert (=> b!4027904 m!4619531))

(assert (=> b!4027905 m!4619245))

(declare-fun m!4619533 () Bool)

(assert (=> b!4027905 m!4619533))

(assert (=> b!4027905 m!4619093))

(declare-fun m!4619535 () Bool)

(assert (=> b!4027905 m!4619535))

(assert (=> b!4027903 m!4619093))

(declare-fun m!4619537 () Bool)

(assert (=> b!4027903 m!4619537))

(assert (=> b!4027903 m!4619245))

(declare-fun m!4619539 () Bool)

(assert (=> b!4027903 m!4619539))

(assert (=> b!4027680 d!1193098))

(declare-fun d!1193100 () Bool)

(assert (=> d!1193100 (= (tail!6271 lt!1430705) (t!334002 lt!1430705))))

(assert (=> b!4027680 d!1193100))

(declare-fun d!1193102 () Bool)

(assert (=> d!1193102 (= (tail!6271 lt!1430712) (t!334002 lt!1430712))))

(assert (=> b!4027680 d!1193102))

(declare-fun d!1193104 () Bool)

(declare-fun lt!1430910 () Int)

(assert (=> d!1193104 (>= lt!1430910 0)))

(declare-fun e!2498820 () Int)

(assert (=> d!1193104 (= lt!1430910 e!2498820)))

(declare-fun c!695913 () Bool)

(assert (=> d!1193104 (= c!695913 ((_ is Nil!43119) lt!1430712))))

(assert (=> d!1193104 (= (size!32232 lt!1430712) lt!1430910)))

(declare-fun b!4027907 () Bool)

(assert (=> b!4027907 (= e!2498820 0)))

(declare-fun b!4027908 () Bool)

(assert (=> b!4027908 (= e!2498820 (+ 1 (size!32232 (t!334002 lt!1430712))))))

(assert (= (and d!1193104 c!695913) b!4027907))

(assert (= (and d!1193104 (not c!695913)) b!4027908))

(declare-fun m!4619549 () Bool)

(assert (=> b!4027908 m!4619549))

(assert (=> b!4027685 d!1193104))

(assert (=> b!4027685 d!1192836))

(declare-fun d!1193108 () Bool)

(assert (=> d!1193108 (= (list!16040 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))) (list!16041 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))))

(declare-fun bs!590144 () Bool)

(assert (= bs!590144 d!1193108))

(declare-fun m!4619551 () Bool)

(assert (=> bs!590144 m!4619551))

(assert (=> d!1192912 d!1193108))

(declare-fun d!1193110 () Bool)

(assert (=> d!1193110 (= (list!16040 lt!1430704) (list!16041 (c!695780 lt!1430704)))))

(declare-fun bs!590145 () Bool)

(assert (= bs!590145 d!1193110))

(declare-fun m!4619553 () Bool)

(assert (=> bs!590145 m!4619553))

(assert (=> d!1192912 d!1193110))

(declare-fun d!1193112 () Bool)

(declare-fun dynLambda!18292 (Int BalanceConc!25788) Bool)

(assert (=> d!1193112 (dynLambda!18292 lambda!127195 lt!1430704)))

(declare-fun lt!1430913 () Unit!62282)

(declare-fun choose!24372 (Int BalanceConc!25788) Unit!62282)

(assert (=> d!1193112 (= lt!1430913 (choose!24372 lambda!127195 lt!1430704))))

(assert (=> d!1193112 (Forall!1480 lambda!127195)))

(assert (=> d!1193112 (= (ForallOf!814 lambda!127195 lt!1430704) lt!1430913)))

(declare-fun b_lambda!117543 () Bool)

(assert (=> (not b_lambda!117543) (not d!1193112)))

(declare-fun bs!590147 () Bool)

(assert (= bs!590147 d!1193112))

(declare-fun m!4619557 () Bool)

(assert (=> bs!590147 m!4619557))

(declare-fun m!4619559 () Bool)

(assert (=> bs!590147 m!4619559))

(declare-fun m!4619561 () Bool)

(assert (=> bs!590147 m!4619561))

(assert (=> d!1192912 d!1193112))

(declare-fun d!1193116 () Bool)

(declare-fun c!695915 () Bool)

(assert (=> d!1193116 (= c!695915 ((_ is Nil!43119) lt!1430848))))

(declare-fun e!2498822 () (InoxSet C!23768))

(assert (=> d!1193116 (= (content!6550 lt!1430848) e!2498822)))

(declare-fun b!4027911 () Bool)

(assert (=> b!4027911 (= e!2498822 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027912 () Bool)

(assert (=> b!4027912 (= e!2498822 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430848) true) (content!6550 (t!334002 lt!1430848))))))

(assert (= (and d!1193116 c!695915) b!4027911))

(assert (= (and d!1193116 (not c!695915)) b!4027912))

(declare-fun m!4619565 () Bool)

(assert (=> b!4027912 m!4619565))

(declare-fun m!4619567 () Bool)

(assert (=> b!4027912 m!4619567))

(assert (=> d!1192918 d!1193116))

(assert (=> d!1192918 d!1193048))

(declare-fun d!1193118 () Bool)

(declare-fun c!695916 () Bool)

(assert (=> d!1193118 (= c!695916 ((_ is Nil!43119) newSuffixResult!27))))

(declare-fun e!2498823 () (InoxSet C!23768))

(assert (=> d!1193118 (= (content!6550 newSuffixResult!27) e!2498823)))

(declare-fun b!4027913 () Bool)

(assert (=> b!4027913 (= e!2498823 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027914 () Bool)

(assert (=> b!4027914 (= e!2498823 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 newSuffixResult!27) true) (content!6550 (t!334002 newSuffixResult!27))))))

(assert (= (and d!1193118 c!695916) b!4027913))

(assert (= (and d!1193118 (not c!695916)) b!4027914))

(declare-fun m!4619571 () Bool)

(assert (=> b!4027914 m!4619571))

(declare-fun m!4619573 () Bool)

(assert (=> b!4027914 m!4619573))

(assert (=> d!1192918 d!1193118))

(declare-fun d!1193122 () Bool)

(declare-fun lt!1430914 () Int)

(assert (=> d!1193122 (>= lt!1430914 0)))

(declare-fun e!2498825 () Int)

(assert (=> d!1193122 (= lt!1430914 e!2498825)))

(declare-fun c!695918 () Bool)

(assert (=> d!1193122 (= c!695918 ((_ is Nil!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193122 (= (size!32232 (t!334002 lt!1430705)) lt!1430914)))

(declare-fun b!4027917 () Bool)

(assert (=> b!4027917 (= e!2498825 0)))

(declare-fun b!4027918 () Bool)

(assert (=> b!4027918 (= e!2498825 (+ 1 (size!32232 (t!334002 (t!334002 lt!1430705)))))))

(assert (= (and d!1193122 c!695918) b!4027917))

(assert (= (and d!1193122 (not c!695918)) b!4027918))

(declare-fun m!4619577 () Bool)

(assert (=> b!4027918 m!4619577))

(assert (=> b!4027399 d!1193122))

(declare-fun d!1193126 () Bool)

(declare-fun c!695920 () Bool)

(assert (=> d!1193126 (= c!695920 ((_ is Nil!43119) lt!1430850))))

(declare-fun e!2498827 () (InoxSet C!23768))

(assert (=> d!1193126 (= (content!6550 lt!1430850) e!2498827)))

(declare-fun b!4027921 () Bool)

(assert (=> b!4027921 (= e!2498827 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027922 () Bool)

(assert (=> b!4027922 (= e!2498827 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430850) true) (content!6550 (t!334002 lt!1430850))))))

(assert (= (and d!1193126 c!695920) b!4027921))

(assert (= (and d!1193126 (not c!695920)) b!4027922))

(declare-fun m!4619579 () Bool)

(assert (=> b!4027922 m!4619579))

(declare-fun m!4619581 () Bool)

(assert (=> b!4027922 m!4619581))

(assert (=> d!1192922 d!1193126))

(assert (=> d!1192922 d!1193048))

(declare-fun d!1193128 () Bool)

(declare-fun c!695921 () Bool)

(assert (=> d!1193128 (= c!695921 ((_ is Nil!43119) lt!1430716))))

(declare-fun e!2498828 () (InoxSet C!23768))

(assert (=> d!1193128 (= (content!6550 lt!1430716) e!2498828)))

(declare-fun b!4027923 () Bool)

(assert (=> b!4027923 (= e!2498828 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027924 () Bool)

(assert (=> b!4027924 (= e!2498828 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430716) true) (content!6550 (t!334002 lt!1430716))))))

(assert (= (and d!1193128 c!695921) b!4027923))

(assert (= (and d!1193128 (not c!695921)) b!4027924))

(declare-fun m!4619587 () Bool)

(assert (=> b!4027924 m!4619587))

(declare-fun m!4619589 () Bool)

(assert (=> b!4027924 m!4619589))

(assert (=> d!1192922 d!1193128))

(assert (=> d!1192936 d!1193010))

(declare-fun d!1193132 () Bool)

(declare-fun e!2498830 () Bool)

(assert (=> d!1193132 e!2498830))

(declare-fun res!1639336 () Bool)

(assert (=> d!1193132 (=> (not res!1639336) (not e!2498830))))

(declare-fun lt!1430915 () List!43243)

(assert (=> d!1193132 (= res!1639336 (= (content!6550 lt!1430915) ((_ map or) (content!6550 (t!334002 lt!1430705)) (content!6550 suffixResult!105))))))

(declare-fun e!2498829 () List!43243)

(assert (=> d!1193132 (= lt!1430915 e!2498829)))

(declare-fun c!695922 () Bool)

(assert (=> d!1193132 (= c!695922 ((_ is Nil!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193132 (= (++!11288 (t!334002 lt!1430705) suffixResult!105) lt!1430915)))

(declare-fun b!4027928 () Bool)

(assert (=> b!4027928 (= e!2498830 (or (not (= suffixResult!105 Nil!43119)) (= lt!1430915 (t!334002 lt!1430705))))))

(declare-fun b!4027927 () Bool)

(declare-fun res!1639337 () Bool)

(assert (=> b!4027927 (=> (not res!1639337) (not e!2498830))))

(assert (=> b!4027927 (= res!1639337 (= (size!32232 lt!1430915) (+ (size!32232 (t!334002 lt!1430705)) (size!32232 suffixResult!105))))))

(declare-fun b!4027925 () Bool)

(assert (=> b!4027925 (= e!2498829 suffixResult!105)))

(declare-fun b!4027926 () Bool)

(assert (=> b!4027926 (= e!2498829 (Cons!43119 (h!48539 (t!334002 lt!1430705)) (++!11288 (t!334002 (t!334002 lt!1430705)) suffixResult!105)))))

(assert (= (and d!1193132 c!695922) b!4027925))

(assert (= (and d!1193132 (not c!695922)) b!4027926))

(assert (= (and d!1193132 res!1639336) b!4027927))

(assert (= (and b!4027927 res!1639337) b!4027928))

(declare-fun m!4619591 () Bool)

(assert (=> d!1193132 m!4619591))

(assert (=> d!1193132 m!4619411))

(assert (=> d!1193132 m!4618989))

(declare-fun m!4619593 () Bool)

(assert (=> b!4027927 m!4619593))

(assert (=> b!4027927 m!4618929))

(assert (=> b!4027927 m!4618993))

(declare-fun m!4619595 () Bool)

(assert (=> b!4027926 m!4619595))

(assert (=> b!4027461 d!1193132))

(assert (=> d!1192868 d!1192860))

(declare-fun d!1193134 () Bool)

(assert (=> d!1193134 (ruleValid!2816 thiss!21717 (rule!9944 token!484))))

(assert (=> d!1193134 true))

(declare-fun _$65!1467 () Unit!62282)

(assert (=> d!1193134 (= (choose!24364 thiss!21717 (rule!9944 token!484) rules!2999) _$65!1467)))

(declare-fun bs!590150 () Bool)

(assert (= bs!590150 d!1193134))

(assert (=> bs!590150 m!4618729))

(assert (=> d!1192868 d!1193134))

(assert (=> d!1192868 d!1192890))

(declare-fun d!1193138 () Bool)

(declare-fun lt!1430916 () Int)

(assert (=> d!1193138 (>= lt!1430916 0)))

(declare-fun e!2498831 () Int)

(assert (=> d!1193138 (= lt!1430916 e!2498831)))

(declare-fun c!695923 () Bool)

(assert (=> d!1193138 (= c!695923 ((_ is Nil!43119) lt!1430777))))

(assert (=> d!1193138 (= (size!32232 lt!1430777) lt!1430916)))

(declare-fun b!4027929 () Bool)

(assert (=> b!4027929 (= e!2498831 0)))

(declare-fun b!4027930 () Bool)

(assert (=> b!4027930 (= e!2498831 (+ 1 (size!32232 (t!334002 lt!1430777))))))

(assert (= (and d!1193138 c!695923) b!4027929))

(assert (= (and d!1193138 (not c!695923)) b!4027930))

(declare-fun m!4619599 () Bool)

(assert (=> b!4027930 m!4619599))

(assert (=> b!4027378 d!1193138))

(assert (=> b!4027378 d!1192836))

(assert (=> b!4027378 d!1192852))

(declare-fun d!1193140 () Bool)

(declare-fun c!695930 () Bool)

(assert (=> d!1193140 (= c!695930 ((_ is Node!13097) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))))

(declare-fun e!2498843 () Bool)

(assert (=> d!1193140 (= (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))) e!2498843)))

(declare-fun b!4027950 () Bool)

(declare-fun inv!57611 (Conc!13097) Bool)

(assert (=> b!4027950 (= e!2498843 (inv!57611 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))))

(declare-fun b!4027951 () Bool)

(declare-fun e!2498844 () Bool)

(assert (=> b!4027951 (= e!2498843 e!2498844)))

(declare-fun res!1639345 () Bool)

(assert (=> b!4027951 (= res!1639345 (not ((_ is Leaf!20247) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))))))

(assert (=> b!4027951 (=> res!1639345 e!2498844)))

(declare-fun b!4027952 () Bool)

(declare-fun inv!57612 (Conc!13097) Bool)

(assert (=> b!4027952 (= e!2498844 (inv!57612 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))))

(assert (= (and d!1193140 c!695930) b!4027950))

(assert (= (and d!1193140 (not c!695930)) b!4027951))

(assert (= (and b!4027951 (not res!1639345)) b!4027952))

(declare-fun m!4619621 () Bool)

(assert (=> b!4027950 m!4619621))

(declare-fun m!4619625 () Bool)

(assert (=> b!4027952 m!4619625))

(assert (=> b!4027602 d!1193140))

(declare-fun d!1193154 () Bool)

(declare-fun c!695931 () Bool)

(assert (=> d!1193154 (= c!695931 ((_ is Nil!43119) lt!1430840))))

(declare-fun e!2498845 () (InoxSet C!23768))

(assert (=> d!1193154 (= (content!6550 lt!1430840) e!2498845)))

(declare-fun b!4027953 () Bool)

(assert (=> b!4027953 (= e!2498845 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027954 () Bool)

(assert (=> b!4027954 (= e!2498845 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430840) true) (content!6550 (t!334002 lt!1430840))))))

(assert (= (and d!1193154 c!695931) b!4027953))

(assert (= (and d!1193154 (not c!695931)) b!4027954))

(declare-fun m!4619629 () Bool)

(assert (=> b!4027954 m!4619629))

(declare-fun m!4619631 () Bool)

(assert (=> b!4027954 m!4619631))

(assert (=> d!1192906 d!1193154))

(assert (=> d!1192906 d!1193128))

(declare-fun d!1193158 () Bool)

(declare-fun c!695933 () Bool)

(assert (=> d!1193158 (= c!695933 ((_ is Nil!43119) suffix!1299))))

(declare-fun e!2498847 () (InoxSet C!23768))

(assert (=> d!1193158 (= (content!6550 suffix!1299) e!2498847)))

(declare-fun b!4027957 () Bool)

(assert (=> b!4027957 (= e!2498847 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4027958 () Bool)

(assert (=> b!4027958 (= e!2498847 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 suffix!1299) true) (content!6550 (t!334002 suffix!1299))))))

(assert (= (and d!1193158 c!695933) b!4027957))

(assert (= (and d!1193158 (not c!695933)) b!4027958))

(declare-fun m!4619635 () Bool)

(assert (=> b!4027958 m!4619635))

(declare-fun m!4619637 () Bool)

(assert (=> b!4027958 m!4619637))

(assert (=> d!1192906 d!1193158))

(declare-fun bm!286816 () Bool)

(declare-fun call!286821 () Bool)

(declare-fun c!695942 () Bool)

(assert (=> bm!286816 (= call!286821 (validRegex!5336 (ite c!695942 (regTwo!24095 (regex!6886 (rule!9944 token!484))) (regTwo!24094 (regex!6886 (rule!9944 token!484))))))))

(declare-fun d!1193162 () Bool)

(declare-fun res!1639367 () Bool)

(declare-fun e!2498879 () Bool)

(assert (=> d!1193162 (=> res!1639367 e!2498879)))

(assert (=> d!1193162 (= res!1639367 ((_ is ElementMatch!11791) (regex!6886 (rule!9944 token!484))))))

(assert (=> d!1193162 (= (validRegex!5336 (regex!6886 (rule!9944 token!484))) e!2498879)))

(declare-fun b!4027995 () Bool)

(declare-fun res!1639370 () Bool)

(declare-fun e!2498874 () Bool)

(assert (=> b!4027995 (=> (not res!1639370) (not e!2498874))))

(declare-fun call!286822 () Bool)

(assert (=> b!4027995 (= res!1639370 call!286822)))

(declare-fun e!2498878 () Bool)

(assert (=> b!4027995 (= e!2498878 e!2498874)))

(declare-fun b!4027996 () Bool)

(declare-fun e!2498877 () Bool)

(declare-fun e!2498876 () Bool)

(assert (=> b!4027996 (= e!2498877 e!2498876)))

(declare-fun res!1639369 () Bool)

(assert (=> b!4027996 (=> (not res!1639369) (not e!2498876))))

(assert (=> b!4027996 (= res!1639369 call!286822)))

(declare-fun b!4027997 () Bool)

(declare-fun res!1639366 () Bool)

(assert (=> b!4027997 (=> res!1639366 e!2498877)))

(assert (=> b!4027997 (= res!1639366 (not ((_ is Concat!18908) (regex!6886 (rule!9944 token!484)))))))

(assert (=> b!4027997 (= e!2498878 e!2498877)))

(declare-fun b!4027998 () Bool)

(declare-fun e!2498873 () Bool)

(declare-fun e!2498875 () Bool)

(assert (=> b!4027998 (= e!2498873 e!2498875)))

(declare-fun res!1639368 () Bool)

(assert (=> b!4027998 (= res!1639368 (not (nullable!4136 (reg!12120 (regex!6886 (rule!9944 token!484))))))))

(assert (=> b!4027998 (=> (not res!1639368) (not e!2498875))))

(declare-fun b!4027999 () Bool)

(assert (=> b!4027999 (= e!2498874 call!286821)))

(declare-fun b!4028000 () Bool)

(declare-fun call!286823 () Bool)

(assert (=> b!4028000 (= e!2498875 call!286823)))

(declare-fun b!4028001 () Bool)

(assert (=> b!4028001 (= e!2498876 call!286821)))

(declare-fun b!4028002 () Bool)

(assert (=> b!4028002 (= e!2498879 e!2498873)))

(declare-fun c!695943 () Bool)

(assert (=> b!4028002 (= c!695943 ((_ is Star!11791) (regex!6886 (rule!9944 token!484))))))

(declare-fun bm!286817 () Bool)

(assert (=> bm!286817 (= call!286823 (validRegex!5336 (ite c!695943 (reg!12120 (regex!6886 (rule!9944 token!484))) (ite c!695942 (regOne!24095 (regex!6886 (rule!9944 token!484))) (regOne!24094 (regex!6886 (rule!9944 token!484)))))))))

(declare-fun bm!286818 () Bool)

(assert (=> bm!286818 (= call!286822 call!286823)))

(declare-fun b!4028003 () Bool)

(assert (=> b!4028003 (= e!2498873 e!2498878)))

(assert (=> b!4028003 (= c!695942 ((_ is Union!11791) (regex!6886 (rule!9944 token!484))))))

(assert (= (and d!1193162 (not res!1639367)) b!4028002))

(assert (= (and b!4028002 c!695943) b!4027998))

(assert (= (and b!4028002 (not c!695943)) b!4028003))

(assert (= (and b!4027998 res!1639368) b!4028000))

(assert (= (and b!4028003 c!695942) b!4027995))

(assert (= (and b!4028003 (not c!695942)) b!4027997))

(assert (= (and b!4027995 res!1639370) b!4027999))

(assert (= (and b!4027997 (not res!1639366)) b!4027996))

(assert (= (and b!4027996 res!1639369) b!4028001))

(assert (= (or b!4027999 b!4028001) bm!286816))

(assert (= (or b!4027995 b!4027996) bm!286818))

(assert (= (or b!4028000 bm!286818) bm!286817))

(declare-fun m!4619675 () Bool)

(assert (=> bm!286816 m!4619675))

(declare-fun m!4619679 () Bool)

(assert (=> b!4027998 m!4619679))

(declare-fun m!4619681 () Bool)

(assert (=> bm!286817 m!4619681))

(assert (=> d!1192860 d!1193162))

(declare-fun d!1193180 () Bool)

(declare-fun c!695944 () Bool)

(assert (=> d!1193180 (= c!695944 ((_ is Nil!43119) lt!1430777))))

(declare-fun e!2498880 () (InoxSet C!23768))

(assert (=> d!1193180 (= (content!6550 lt!1430777) e!2498880)))

(declare-fun b!4028004 () Bool)

(assert (=> b!4028004 (= e!2498880 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4028005 () Bool)

(assert (=> b!4028005 (= e!2498880 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430777) true) (content!6550 (t!334002 lt!1430777))))))

(assert (= (and d!1193180 c!695944) b!4028004))

(assert (= (and d!1193180 (not c!695944)) b!4028005))

(declare-fun m!4619683 () Bool)

(assert (=> b!4028005 m!4619683))

(declare-fun m!4619685 () Bool)

(assert (=> b!4028005 m!4619685))

(assert (=> d!1192808 d!1193180))

(assert (=> d!1192808 d!1192988))

(assert (=> d!1192808 d!1193158))

(declare-fun d!1193186 () Bool)

(declare-fun e!2498882 () Bool)

(assert (=> d!1193186 e!2498882))

(declare-fun res!1639374 () Bool)

(assert (=> d!1193186 (=> res!1639374 e!2498882)))

(declare-fun lt!1430926 () Bool)

(assert (=> d!1193186 (= res!1639374 (not lt!1430926))))

(declare-fun e!2498881 () Bool)

(assert (=> d!1193186 (= lt!1430926 e!2498881)))

(declare-fun res!1639372 () Bool)

(assert (=> d!1193186 (=> res!1639372 e!2498881)))

(assert (=> d!1193186 (= res!1639372 ((_ is Nil!43119) (tail!6271 lt!1430705)))))

(assert (=> d!1193186 (= (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430719)) lt!1430926)))

(declare-fun b!4028006 () Bool)

(declare-fun e!2498883 () Bool)

(assert (=> b!4028006 (= e!2498881 e!2498883)))

(declare-fun res!1639373 () Bool)

(assert (=> b!4028006 (=> (not res!1639373) (not e!2498883))))

(assert (=> b!4028006 (= res!1639373 (not ((_ is Nil!43119) (tail!6271 lt!1430719))))))

(declare-fun b!4028008 () Bool)

(assert (=> b!4028008 (= e!2498883 (isPrefix!3973 (tail!6271 (tail!6271 lt!1430705)) (tail!6271 (tail!6271 lt!1430719))))))

(declare-fun b!4028009 () Bool)

(assert (=> b!4028009 (= e!2498882 (>= (size!32232 (tail!6271 lt!1430719)) (size!32232 (tail!6271 lt!1430705))))))

(declare-fun b!4028007 () Bool)

(declare-fun res!1639371 () Bool)

(assert (=> b!4028007 (=> (not res!1639371) (not e!2498883))))

(assert (=> b!4028007 (= res!1639371 (= (head!8539 (tail!6271 lt!1430705)) (head!8539 (tail!6271 lt!1430719))))))

(assert (= (and d!1193186 (not res!1639372)) b!4028006))

(assert (= (and b!4028006 res!1639373) b!4028007))

(assert (= (and b!4028007 res!1639371) b!4028008))

(assert (= (and d!1193186 (not res!1639374)) b!4028009))

(assert (=> b!4028008 m!4619093))

(assert (=> b!4028008 m!4619527))

(assert (=> b!4028008 m!4619233))

(declare-fun m!4619687 () Bool)

(assert (=> b!4028008 m!4619687))

(assert (=> b!4028008 m!4619527))

(assert (=> b!4028008 m!4619687))

(declare-fun m!4619689 () Bool)

(assert (=> b!4028008 m!4619689))

(assert (=> b!4028009 m!4619233))

(declare-fun m!4619691 () Bool)

(assert (=> b!4028009 m!4619691))

(assert (=> b!4028009 m!4619093))

(assert (=> b!4028009 m!4619535))

(assert (=> b!4028007 m!4619093))

(assert (=> b!4028007 m!4619537))

(assert (=> b!4028007 m!4619233))

(declare-fun m!4619693 () Bool)

(assert (=> b!4028007 m!4619693))

(assert (=> b!4027676 d!1193186))

(assert (=> b!4027676 d!1193100))

(declare-fun d!1193188 () Bool)

(assert (=> d!1193188 (= (tail!6271 lt!1430719) (t!334002 lt!1430719))))

(assert (=> b!4027676 d!1193188))

(declare-fun d!1193190 () Bool)

(declare-fun e!2498885 () Bool)

(assert (=> d!1193190 e!2498885))

(declare-fun res!1639375 () Bool)

(assert (=> d!1193190 (=> (not res!1639375) (not e!2498885))))

(declare-fun lt!1430927 () List!43243)

(assert (=> d!1193190 (= res!1639375 (= (content!6550 lt!1430927) ((_ map or) (content!6550 (t!334002 lt!1430705)) (content!6550 newSuffixResult!27))))))

(declare-fun e!2498884 () List!43243)

(assert (=> d!1193190 (= lt!1430927 e!2498884)))

(declare-fun c!695945 () Bool)

(assert (=> d!1193190 (= c!695945 ((_ is Nil!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193190 (= (++!11288 (t!334002 lt!1430705) newSuffixResult!27) lt!1430927)))

(declare-fun b!4028013 () Bool)

(assert (=> b!4028013 (= e!2498885 (or (not (= newSuffixResult!27 Nil!43119)) (= lt!1430927 (t!334002 lt!1430705))))))

(declare-fun b!4028012 () Bool)

(declare-fun res!1639376 () Bool)

(assert (=> b!4028012 (=> (not res!1639376) (not e!2498885))))

(assert (=> b!4028012 (= res!1639376 (= (size!32232 lt!1430927) (+ (size!32232 (t!334002 lt!1430705)) (size!32232 newSuffixResult!27))))))

(declare-fun b!4028010 () Bool)

(assert (=> b!4028010 (= e!2498884 newSuffixResult!27)))

(declare-fun b!4028011 () Bool)

(assert (=> b!4028011 (= e!2498884 (Cons!43119 (h!48539 (t!334002 lt!1430705)) (++!11288 (t!334002 (t!334002 lt!1430705)) newSuffixResult!27)))))

(assert (= (and d!1193190 c!695945) b!4028010))

(assert (= (and d!1193190 (not c!695945)) b!4028011))

(assert (= (and d!1193190 res!1639375) b!4028012))

(assert (= (and b!4028012 res!1639376) b!4028013))

(declare-fun m!4619697 () Bool)

(assert (=> d!1193190 m!4619697))

(assert (=> d!1193190 m!4619411))

(assert (=> d!1193190 m!4619183))

(declare-fun m!4619699 () Bool)

(assert (=> b!4028012 m!4619699))

(assert (=> b!4028012 m!4618929))

(assert (=> b!4028012 m!4619187))

(declare-fun m!4619701 () Bool)

(assert (=> b!4028011 m!4619701))

(assert (=> b!4027604 d!1193190))

(declare-fun d!1193192 () Bool)

(declare-fun nullableFct!1156 (Regex!11791) Bool)

(assert (=> d!1193192 (= (nullable!4136 (regex!6886 (rule!9944 token!484))) (nullableFct!1156 (regex!6886 (rule!9944 token!484))))))

(declare-fun bs!590152 () Bool)

(assert (= bs!590152 d!1193192))

(declare-fun m!4619703 () Bool)

(assert (=> bs!590152 m!4619703))

(assert (=> b!4027669 d!1193192))

(declare-fun d!1193194 () Bool)

(declare-fun e!2498888 () Bool)

(assert (=> d!1193194 e!2498888))

(declare-fun res!1639377 () Bool)

(assert (=> d!1193194 (=> (not res!1639377) (not e!2498888))))

(declare-fun lt!1430928 () List!43243)

(assert (=> d!1193194 (= res!1639377 (= (content!6550 lt!1430928) ((_ map or) (content!6550 (t!334002 lt!1430705)) (content!6550 lt!1430716))))))

(declare-fun e!2498887 () List!43243)

(assert (=> d!1193194 (= lt!1430928 e!2498887)))

(declare-fun c!695946 () Bool)

(assert (=> d!1193194 (= c!695946 ((_ is Nil!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193194 (= (++!11288 (t!334002 lt!1430705) lt!1430716) lt!1430928)))

(declare-fun b!4028017 () Bool)

(assert (=> b!4028017 (= e!2498888 (or (not (= lt!1430716 Nil!43119)) (= lt!1430928 (t!334002 lt!1430705))))))

(declare-fun b!4028016 () Bool)

(declare-fun res!1639378 () Bool)

(assert (=> b!4028016 (=> (not res!1639378) (not e!2498888))))

(assert (=> b!4028016 (= res!1639378 (= (size!32232 lt!1430928) (+ (size!32232 (t!334002 lt!1430705)) (size!32232 lt!1430716))))))

(declare-fun b!4028014 () Bool)

(assert (=> b!4028014 (= e!2498887 lt!1430716)))

(declare-fun b!4028015 () Bool)

(assert (=> b!4028015 (= e!2498887 (Cons!43119 (h!48539 (t!334002 lt!1430705)) (++!11288 (t!334002 (t!334002 lt!1430705)) lt!1430716)))))

(assert (= (and d!1193194 c!695946) b!4028014))

(assert (= (and d!1193194 (not c!695946)) b!4028015))

(assert (= (and d!1193194 res!1639377) b!4028016))

(assert (= (and b!4028016 res!1639378) b!4028017))

(declare-fun m!4619709 () Bool)

(assert (=> d!1193194 m!4619709))

(assert (=> d!1193194 m!4619411))

(assert (=> d!1193194 m!4619131))

(declare-fun m!4619711 () Bool)

(assert (=> b!4028016 m!4619711))

(assert (=> b!4028016 m!4618929))

(assert (=> b!4028016 m!4619135))

(declare-fun m!4619713 () Bool)

(assert (=> b!4028015 m!4619713))

(assert (=> b!4027612 d!1193194))

(declare-fun d!1193200 () Bool)

(declare-fun charsToBigInt!0 (List!43244 Int) Int)

(assert (=> d!1193200 (= (inv!15 (value!216885 token!484)) (= (charsToBigInt!0 (text!50261 (value!216885 token!484)) 0) (value!216880 (value!216885 token!484))))))

(declare-fun bs!590154 () Bool)

(assert (= bs!590154 d!1193200))

(declare-fun m!4619721 () Bool)

(assert (=> bs!590154 m!4619721))

(assert (=> b!4027441 d!1193200))

(declare-fun d!1193204 () Bool)

(declare-fun lt!1430930 () Int)

(assert (=> d!1193204 (>= lt!1430930 0)))

(declare-fun e!2498891 () Int)

(assert (=> d!1193204 (= lt!1430930 e!2498891)))

(declare-fun c!695948 () Bool)

(assert (=> d!1193204 (= c!695948 ((_ is Nil!43119) (t!334002 newSuffix!27)))))

(assert (=> d!1193204 (= (size!32232 (t!334002 newSuffix!27)) lt!1430930)))

(declare-fun b!4028022 () Bool)

(assert (=> b!4028022 (= e!2498891 0)))

(declare-fun b!4028023 () Bool)

(assert (=> b!4028023 (= e!2498891 (+ 1 (size!32232 (t!334002 (t!334002 newSuffix!27)))))))

(assert (= (and d!1193204 c!695948) b!4028022))

(assert (= (and d!1193204 (not c!695948)) b!4028023))

(declare-fun m!4619723 () Bool)

(assert (=> b!4028023 m!4619723))

(assert (=> b!4027449 d!1193204))

(assert (=> b!4027327 d!1193062))

(declare-fun d!1193206 () Bool)

(assert (=> d!1193206 (= (apply!10075 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752))))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752))))))))

(declare-fun b_lambda!117547 () Bool)

(assert (=> (not b_lambda!117547) (not d!1193206)))

(declare-fun tb!242059 () Bool)

(declare-fun t!334063 () Bool)

(assert (=> (and b!4027215 (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334063) tb!242059))

(declare-fun result!293416 () Bool)

(assert (=> tb!242059 (= result!293416 (inv!21 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752)))))))))

(declare-fun m!4619725 () Bool)

(assert (=> tb!242059 m!4619725))

(assert (=> d!1193206 t!334063))

(declare-fun b_and!309505 () Bool)

(assert (= b_and!309475 (and (=> t!334063 result!293416) b_and!309505)))

(declare-fun tb!242061 () Bool)

(declare-fun t!334065 () Bool)

(assert (=> (and b!4027202 (= (toValue!9406 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334065) tb!242061))

(declare-fun result!293418 () Bool)

(assert (= result!293418 result!293416))

(assert (=> d!1193206 t!334065))

(declare-fun b_and!309507 () Bool)

(assert (= b_and!309477 (and (=> t!334065 result!293418) b_and!309507)))

(declare-fun tb!242063 () Bool)

(declare-fun t!334067 () Bool)

(assert (=> (and b!4027723 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 rules!2999)))) (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334067) tb!242063))

(declare-fun result!293420 () Bool)

(assert (= result!293420 result!293416))

(assert (=> d!1193206 t!334067))

(declare-fun b_and!309509 () Bool)

(assert (= b_and!309483 (and (=> t!334067 result!293420) b_and!309509)))

(assert (=> d!1193206 m!4618853))

(declare-fun m!4619727 () Bool)

(assert (=> d!1193206 m!4619727))

(assert (=> b!4027327 d!1193206))

(declare-fun d!1193208 () Bool)

(assert (=> d!1193208 (= (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752)))) (fromListB!2329 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430752)))))))

(declare-fun bs!590155 () Bool)

(assert (= bs!590155 d!1193208))

(declare-fun m!4619729 () Bool)

(assert (=> bs!590155 m!4619729))

(assert (=> b!4027327 d!1193208))

(declare-fun d!1193210 () Bool)

(declare-fun e!2498898 () Bool)

(assert (=> d!1193210 e!2498898))

(declare-fun res!1639385 () Bool)

(assert (=> d!1193210 (=> (not res!1639385) (not e!2498898))))

(declare-fun lt!1430931 () List!43243)

(assert (=> d!1193210 (= res!1639385 (= (content!6550 lt!1430931) ((_ map or) (content!6550 (t!334002 lt!1430716)) (content!6550 suffix!1299))))))

(declare-fun e!2498897 () List!43243)

(assert (=> d!1193210 (= lt!1430931 e!2498897)))

(declare-fun c!695949 () Bool)

(assert (=> d!1193210 (= c!695949 ((_ is Nil!43119) (t!334002 lt!1430716)))))

(assert (=> d!1193210 (= (++!11288 (t!334002 lt!1430716) suffix!1299) lt!1430931)))

(declare-fun b!4028031 () Bool)

(assert (=> b!4028031 (= e!2498898 (or (not (= suffix!1299 Nil!43119)) (= lt!1430931 (t!334002 lt!1430716))))))

(declare-fun b!4028030 () Bool)

(declare-fun res!1639386 () Bool)

(assert (=> b!4028030 (=> (not res!1639386) (not e!2498898))))

(assert (=> b!4028030 (= res!1639386 (= (size!32232 lt!1430931) (+ (size!32232 (t!334002 lt!1430716)) (size!32232 suffix!1299))))))

(declare-fun b!4028028 () Bool)

(assert (=> b!4028028 (= e!2498897 suffix!1299)))

(declare-fun b!4028029 () Bool)

(assert (=> b!4028029 (= e!2498897 (Cons!43119 (h!48539 (t!334002 lt!1430716)) (++!11288 (t!334002 (t!334002 lt!1430716)) suffix!1299)))))

(assert (= (and d!1193210 c!695949) b!4028028))

(assert (= (and d!1193210 (not c!695949)) b!4028029))

(assert (= (and d!1193210 res!1639385) b!4028030))

(assert (= (and b!4028030 res!1639386) b!4028031))

(declare-fun m!4619731 () Bool)

(assert (=> d!1193210 m!4619731))

(assert (=> d!1193210 m!4619589))

(assert (=> d!1193210 m!4618911))

(declare-fun m!4619733 () Bool)

(assert (=> b!4028030 m!4619733))

(assert (=> b!4028030 m!4619381))

(assert (=> b!4028030 m!4618703))

(declare-fun m!4619735 () Bool)

(assert (=> b!4028029 m!4619735))

(assert (=> b!4027547 d!1193210))

(assert (=> b!4027624 d!1192836))

(assert (=> b!4027624 d!1192828))

(declare-fun d!1193212 () Bool)

(declare-fun e!2498900 () Bool)

(assert (=> d!1193212 e!2498900))

(declare-fun res!1639390 () Bool)

(assert (=> d!1193212 (=> res!1639390 e!2498900)))

(declare-fun lt!1430932 () Bool)

(assert (=> d!1193212 (= res!1639390 (not lt!1430932))))

(declare-fun e!2498899 () Bool)

(assert (=> d!1193212 (= lt!1430932 e!2498899)))

(declare-fun res!1639388 () Bool)

(assert (=> d!1193212 (=> res!1639388 e!2498899)))

(assert (=> d!1193212 (= res!1639388 ((_ is Nil!43119) (tail!6271 prefix!494)))))

(assert (=> d!1193212 (= (isPrefix!3973 (tail!6271 prefix!494) (tail!6271 lt!1430712)) lt!1430932)))

(declare-fun b!4028032 () Bool)

(declare-fun e!2498901 () Bool)

(assert (=> b!4028032 (= e!2498899 e!2498901)))

(declare-fun res!1639389 () Bool)

(assert (=> b!4028032 (=> (not res!1639389) (not e!2498901))))

(assert (=> b!4028032 (= res!1639389 (not ((_ is Nil!43119) (tail!6271 lt!1430712))))))

(declare-fun b!4028034 () Bool)

(assert (=> b!4028034 (= e!2498901 (isPrefix!3973 (tail!6271 (tail!6271 prefix!494)) (tail!6271 (tail!6271 lt!1430712))))))

(declare-fun b!4028035 () Bool)

(assert (=> b!4028035 (= e!2498900 (>= (size!32232 (tail!6271 lt!1430712)) (size!32232 (tail!6271 prefix!494))))))

(declare-fun b!4028033 () Bool)

(declare-fun res!1639387 () Bool)

(assert (=> b!4028033 (=> (not res!1639387) (not e!2498901))))

(assert (=> b!4028033 (= res!1639387 (= (head!8539 (tail!6271 prefix!494)) (head!8539 (tail!6271 lt!1430712))))))

(assert (= (and d!1193212 (not res!1639388)) b!4028032))

(assert (= (and b!4028032 res!1639389) b!4028033))

(assert (= (and b!4028033 res!1639387) b!4028034))

(assert (= (and d!1193212 (not res!1639390)) b!4028035))

(assert (=> b!4028034 m!4619207))

(declare-fun m!4619737 () Bool)

(assert (=> b!4028034 m!4619737))

(assert (=> b!4028034 m!4619245))

(assert (=> b!4028034 m!4619529))

(assert (=> b!4028034 m!4619737))

(assert (=> b!4028034 m!4619529))

(declare-fun m!4619739 () Bool)

(assert (=> b!4028034 m!4619739))

(assert (=> b!4028035 m!4619245))

(assert (=> b!4028035 m!4619533))

(assert (=> b!4028035 m!4619207))

(declare-fun m!4619741 () Bool)

(assert (=> b!4028035 m!4619741))

(assert (=> b!4028033 m!4619207))

(declare-fun m!4619743 () Bool)

(assert (=> b!4028033 m!4619743))

(assert (=> b!4028033 m!4619245))

(assert (=> b!4028033 m!4619539))

(assert (=> b!4027684 d!1193212))

(declare-fun d!1193214 () Bool)

(assert (=> d!1193214 (= (tail!6271 prefix!494) (t!334002 prefix!494))))

(assert (=> b!4027684 d!1193214))

(assert (=> b!4027684 d!1193102))

(assert (=> b!4027679 d!1192968))

(declare-fun d!1193216 () Bool)

(assert (=> d!1193216 (= (head!8539 lt!1430712) (h!48539 lt!1430712))))

(assert (=> b!4027679 d!1193216))

(declare-fun d!1193218 () Bool)

(declare-fun lt!1430933 () Int)

(assert (=> d!1193218 (>= lt!1430933 0)))

(declare-fun e!2498902 () Int)

(assert (=> d!1193218 (= lt!1430933 e!2498902)))

(declare-fun c!695950 () Bool)

(assert (=> d!1193218 (= c!695950 ((_ is Nil!43119) lt!1430839))))

(assert (=> d!1193218 (= (size!32232 lt!1430839) lt!1430933)))

(declare-fun b!4028036 () Bool)

(assert (=> b!4028036 (= e!2498902 0)))

(declare-fun b!4028037 () Bool)

(assert (=> b!4028037 (= e!2498902 (+ 1 (size!32232 (t!334002 lt!1430839))))))

(assert (= (and d!1193218 c!695950) b!4028036))

(assert (= (and d!1193218 (not c!695950)) b!4028037))

(declare-fun m!4619745 () Bool)

(assert (=> b!4028037 m!4619745))

(assert (=> b!4027544 d!1193218))

(declare-fun d!1193220 () Bool)

(declare-fun lt!1430934 () Int)

(assert (=> d!1193220 (>= lt!1430934 0)))

(declare-fun e!2498903 () Int)

(assert (=> d!1193220 (= lt!1430934 e!2498903)))

(declare-fun c!695951 () Bool)

(assert (=> d!1193220 (= c!695951 ((_ is Nil!43119) lt!1430713))))

(assert (=> d!1193220 (= (size!32232 lt!1430713) lt!1430934)))

(declare-fun b!4028038 () Bool)

(assert (=> b!4028038 (= e!2498903 0)))

(declare-fun b!4028039 () Bool)

(assert (=> b!4028039 (= e!2498903 (+ 1 (size!32232 (t!334002 lt!1430713))))))

(assert (= (and d!1193220 c!695951) b!4028038))

(assert (= (and d!1193220 (not c!695951)) b!4028039))

(declare-fun m!4619747 () Bool)

(assert (=> b!4028039 m!4619747))

(assert (=> b!4027544 d!1193220))

(assert (=> b!4027544 d!1192852))

(declare-fun d!1193222 () Bool)

(declare-fun lt!1430935 () List!43243)

(assert (=> d!1193222 (= (++!11288 (t!334002 lt!1430705) lt!1430935) (tail!6271 prefix!494))))

(declare-fun e!2498904 () List!43243)

(assert (=> d!1193222 (= lt!1430935 e!2498904)))

(declare-fun c!695952 () Bool)

(assert (=> d!1193222 (= c!695952 ((_ is Cons!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193222 (>= (size!32232 (tail!6271 prefix!494)) (size!32232 (t!334002 lt!1430705)))))

(assert (=> d!1193222 (= (getSuffix!2390 (tail!6271 prefix!494) (t!334002 lt!1430705)) lt!1430935)))

(declare-fun b!4028040 () Bool)

(assert (=> b!4028040 (= e!2498904 (getSuffix!2390 (tail!6271 (tail!6271 prefix!494)) (t!334002 (t!334002 lt!1430705))))))

(declare-fun b!4028041 () Bool)

(assert (=> b!4028041 (= e!2498904 (tail!6271 prefix!494))))

(assert (= (and d!1193222 c!695952) b!4028040))

(assert (= (and d!1193222 (not c!695952)) b!4028041))

(declare-fun m!4619749 () Bool)

(assert (=> d!1193222 m!4619749))

(assert (=> d!1193222 m!4619207))

(assert (=> d!1193222 m!4619741))

(assert (=> d!1193222 m!4618929))

(assert (=> b!4028040 m!4619207))

(assert (=> b!4028040 m!4619737))

(assert (=> b!4028040 m!4619737))

(declare-fun m!4619751 () Bool)

(assert (=> b!4028040 m!4619751))

(assert (=> b!4027619 d!1193222))

(assert (=> b!4027619 d!1193214))

(declare-fun d!1193224 () Bool)

(declare-fun res!1639397 () Bool)

(declare-fun e!2498911 () Bool)

(assert (=> d!1193224 (=> res!1639397 e!2498911)))

(assert (=> d!1193224 (= res!1639397 ((_ is Nil!43121) rules!2999))))

(assert (=> d!1193224 (= (noDuplicateTag!2679 thiss!21717 rules!2999 Nil!43123) e!2498911)))

(declare-fun b!4028048 () Bool)

(declare-fun e!2498912 () Bool)

(assert (=> b!4028048 (= e!2498911 e!2498912)))

(declare-fun res!1639398 () Bool)

(assert (=> b!4028048 (=> (not res!1639398) (not e!2498912))))

(declare-fun contains!8570 (List!43247 String!49298) Bool)

(assert (=> b!4028048 (= res!1639398 (not (contains!8570 Nil!43123 (tag!7746 (h!48541 rules!2999)))))))

(declare-fun b!4028049 () Bool)

(assert (=> b!4028049 (= e!2498912 (noDuplicateTag!2679 thiss!21717 (t!334004 rules!2999) (Cons!43123 (tag!7746 (h!48541 rules!2999)) Nil!43123)))))

(assert (= (and d!1193224 (not res!1639397)) b!4028048))

(assert (= (and b!4028048 res!1639398) b!4028049))

(declare-fun m!4619757 () Bool)

(assert (=> b!4028048 m!4619757))

(declare-fun m!4619759 () Bool)

(assert (=> b!4028049 m!4619759))

(assert (=> b!4027219 d!1193224))

(assert (=> b!4027426 d!1192852))

(assert (=> b!4027426 d!1192854))

(assert (=> b!4027488 d!1193192))

(declare-fun d!1193228 () Bool)

(assert (=> d!1193228 (= (isEmpty!25744 (originalCharacters!7486 token!484)) ((_ is Nil!43119) (originalCharacters!7486 token!484)))))

(assert (=> d!1192930 d!1193228))

(declare-fun d!1193230 () Bool)

(declare-fun lt!1430936 () Int)

(assert (=> d!1193230 (>= lt!1430936 0)))

(declare-fun e!2498913 () Int)

(assert (=> d!1193230 (= lt!1430936 e!2498913)))

(declare-fun c!695953 () Bool)

(assert (=> d!1193230 (= c!695953 ((_ is Nil!43119) (t!334002 suffix!1299)))))

(assert (=> d!1193230 (= (size!32232 (t!334002 suffix!1299)) lt!1430936)))

(declare-fun b!4028050 () Bool)

(assert (=> b!4028050 (= e!2498913 0)))

(declare-fun b!4028051 () Bool)

(assert (=> b!4028051 (= e!2498913 (+ 1 (size!32232 (t!334002 (t!334002 suffix!1299)))))))

(assert (= (and d!1193230 c!695953) b!4028050))

(assert (= (and d!1193230 (not c!695953)) b!4028051))

(declare-fun m!4619761 () Bool)

(assert (=> b!4028051 m!4619761))

(assert (=> b!4027447 d!1193230))

(declare-fun d!1193232 () Bool)

(declare-fun lt!1430937 () Int)

(assert (=> d!1193232 (>= lt!1430937 0)))

(declare-fun e!2498914 () Int)

(assert (=> d!1193232 (= lt!1430937 e!2498914)))

(declare-fun c!695954 () Bool)

(assert (=> d!1193232 (= c!695954 ((_ is Nil!43119) lt!1430711))))

(assert (=> d!1193232 (= (size!32232 lt!1430711) lt!1430937)))

(declare-fun b!4028052 () Bool)

(assert (=> b!4028052 (= e!2498914 0)))

(declare-fun b!4028053 () Bool)

(assert (=> b!4028053 (= e!2498914 (+ 1 (size!32232 (t!334002 lt!1430711))))))

(assert (= (and d!1193232 c!695954) b!4028052))

(assert (= (and d!1193232 (not c!695954)) b!4028053))

(declare-fun m!4619763 () Bool)

(assert (=> b!4028053 m!4619763))

(assert (=> b!4027537 d!1193232))

(assert (=> b!4027537 d!1192828))

(declare-fun bs!590156 () Bool)

(declare-fun d!1193234 () Bool)

(assert (= bs!590156 (and d!1193234 d!1192912)))

(declare-fun lambda!127210 () Int)

(assert (=> bs!590156 (= (and (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) (= lambda!127210 lambda!127195))))

(declare-fun bs!590157 () Bool)

(assert (= bs!590157 (and d!1193234 d!1193010)))

(assert (=> bs!590157 (= (and (= (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484))))) (= lambda!127210 lambda!127208))))

(assert (=> d!1193234 true))

(assert (=> d!1193234 (< (dynLambda!18286 order!22569 (toChars!9265 (transformation!6886 (h!48541 rules!2999)))) (dynLambda!18285 order!22567 lambda!127210))))

(assert (=> d!1193234 true))

(assert (=> d!1193234 (< (dynLambda!18284 order!22565 (toValue!9406 (transformation!6886 (h!48541 rules!2999)))) (dynLambda!18285 order!22567 lambda!127210))))

(assert (=> d!1193234 (= (semiInverseModEq!2944 (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (h!48541 rules!2999)))) (Forall!1480 lambda!127210))))

(declare-fun bs!590158 () Bool)

(assert (= bs!590158 d!1193234))

(declare-fun m!4619765 () Bool)

(assert (=> bs!590158 m!4619765))

(assert (=> d!1192878 d!1193234))

(declare-fun d!1193236 () Bool)

(assert (=> d!1193236 (= (inv!57610 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))) (isBalanced!3670 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))))

(declare-fun bs!590159 () Bool)

(assert (= bs!590159 d!1193236))

(declare-fun m!4619767 () Bool)

(assert (=> bs!590159 m!4619767))

(assert (=> tb!242031 d!1193236))

(declare-fun d!1193238 () Bool)

(assert (=> d!1193238 true))

(declare-fun order!22573 () Int)

(declare-fun lambda!127213 () Int)

(declare-fun dynLambda!18293 (Int Int) Int)

(assert (=> d!1193238 (< (dynLambda!18284 order!22565 (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (dynLambda!18293 order!22573 lambda!127213))))

(declare-fun Forall2!1081 (Int) Bool)

(assert (=> d!1193238 (= (equivClasses!2843 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (Forall2!1081 lambda!127213))))

(declare-fun bs!590160 () Bool)

(assert (= bs!590160 d!1193238))

(declare-fun m!4619769 () Bool)

(assert (=> bs!590160 m!4619769))

(assert (=> b!4027673 d!1193238))

(declare-fun d!1193240 () Bool)

(declare-fun e!2498918 () Bool)

(assert (=> d!1193240 e!2498918))

(declare-fun res!1639401 () Bool)

(assert (=> d!1193240 (=> (not res!1639401) (not e!2498918))))

(declare-fun lt!1430938 () List!43243)

(assert (=> d!1193240 (= res!1639401 (= (content!6550 lt!1430938) ((_ map or) (content!6550 (t!334002 prefix!494)) (content!6550 suffix!1299))))))

(declare-fun e!2498917 () List!43243)

(assert (=> d!1193240 (= lt!1430938 e!2498917)))

(declare-fun c!695955 () Bool)

(assert (=> d!1193240 (= c!695955 ((_ is Nil!43119) (t!334002 prefix!494)))))

(assert (=> d!1193240 (= (++!11288 (t!334002 prefix!494) suffix!1299) lt!1430938)))

(declare-fun b!4028061 () Bool)

(assert (=> b!4028061 (= e!2498918 (or (not (= suffix!1299 Nil!43119)) (= lt!1430938 (t!334002 prefix!494))))))

(declare-fun b!4028060 () Bool)

(declare-fun res!1639402 () Bool)

(assert (=> b!4028060 (=> (not res!1639402) (not e!2498918))))

(assert (=> b!4028060 (= res!1639402 (= (size!32232 lt!1430938) (+ (size!32232 (t!334002 prefix!494)) (size!32232 suffix!1299))))))

(declare-fun b!4028058 () Bool)

(assert (=> b!4028058 (= e!2498917 suffix!1299)))

(declare-fun b!4028059 () Bool)

(assert (=> b!4028059 (= e!2498917 (Cons!43119 (h!48539 (t!334002 prefix!494)) (++!11288 (t!334002 (t!334002 prefix!494)) suffix!1299)))))

(assert (= (and d!1193240 c!695955) b!4028058))

(assert (= (and d!1193240 (not c!695955)) b!4028059))

(assert (= (and d!1193240 res!1639401) b!4028060))

(assert (= (and b!4028060 res!1639402) b!4028061))

(declare-fun m!4619771 () Bool)

(assert (=> d!1193240 m!4619771))

(assert (=> d!1193240 m!4619297))

(assert (=> d!1193240 m!4618911))

(declare-fun m!4619773 () Bool)

(assert (=> b!4028060 m!4619773))

(assert (=> b!4028060 m!4618931))

(assert (=> b!4028060 m!4618703))

(declare-fun m!4619775 () Bool)

(assert (=> b!4028059 m!4619775))

(assert (=> b!4027377 d!1193240))

(assert (=> d!1192928 d!1192926))

(declare-fun d!1193242 () Bool)

(assert (=> d!1193242 (isPrefix!3973 lt!1430705 prefix!494)))

(assert (=> d!1193242 true))

(declare-fun _$69!259 () Unit!62282)

(assert (=> d!1193242 (= (choose!24370 prefix!494 lt!1430705 lt!1430712) _$69!259)))

(declare-fun bs!590161 () Bool)

(assert (= bs!590161 d!1193242))

(assert (=> bs!590161 m!4618665))

(assert (=> d!1192928 d!1193242))

(assert (=> d!1192928 d!1192948))

(declare-fun bs!590162 () Bool)

(declare-fun d!1193244 () Bool)

(assert (= bs!590162 (and d!1193244 d!1193002)))

(declare-fun lambda!127216 () Int)

(assert (=> bs!590162 (= lambda!127216 lambda!127204)))

(assert (=> d!1193244 true))

(declare-fun lt!1430941 () Bool)

(assert (=> d!1193244 (= lt!1430941 (rulesValidInductive!2510 thiss!21717 rules!2999))))

(assert (=> d!1193244 (= lt!1430941 (forall!8361 rules!2999 lambda!127216))))

(assert (=> d!1193244 (= (rulesValid!2678 thiss!21717 rules!2999) lt!1430941)))

(declare-fun bs!590163 () Bool)

(assert (= bs!590163 d!1193244))

(assert (=> bs!590163 m!4618845))

(declare-fun m!4619777 () Bool)

(assert (=> bs!590163 m!4619777))

(assert (=> d!1192770 d!1193244))

(declare-fun d!1193246 () Bool)

(declare-fun c!695956 () Bool)

(assert (=> d!1193246 (= c!695956 ((_ is Nil!43119) lt!1430839))))

(declare-fun e!2498919 () (InoxSet C!23768))

(assert (=> d!1193246 (= (content!6550 lt!1430839) e!2498919)))

(declare-fun b!4028062 () Bool)

(assert (=> b!4028062 (= e!2498919 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4028063 () Bool)

(assert (=> b!4028063 (= e!2498919 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430839) true) (content!6550 (t!334002 lt!1430839))))))

(assert (= (and d!1193246 c!695956) b!4028062))

(assert (= (and d!1193246 (not c!695956)) b!4028063))

(declare-fun m!4619779 () Bool)

(assert (=> b!4028063 m!4619779))

(declare-fun m!4619781 () Bool)

(assert (=> b!4028063 m!4619781))

(assert (=> d!1192904 d!1193246))

(declare-fun d!1193248 () Bool)

(declare-fun c!695957 () Bool)

(assert (=> d!1193248 (= c!695957 ((_ is Nil!43119) lt!1430713))))

(declare-fun e!2498920 () (InoxSet C!23768))

(assert (=> d!1193248 (= (content!6550 lt!1430713) e!2498920)))

(declare-fun b!4028064 () Bool)

(assert (=> b!4028064 (= e!2498920 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4028065 () Bool)

(assert (=> b!4028065 (= e!2498920 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430713) true) (content!6550 (t!334002 lt!1430713))))))

(assert (= (and d!1193248 c!695957) b!4028064))

(assert (= (and d!1193248 (not c!695957)) b!4028065))

(declare-fun m!4619783 () Bool)

(assert (=> b!4028065 m!4619783))

(declare-fun m!4619785 () Bool)

(assert (=> b!4028065 m!4619785))

(assert (=> d!1192904 d!1193248))

(assert (=> d!1192904 d!1193158))

(assert (=> b!4027675 d!1192968))

(declare-fun d!1193250 () Bool)

(assert (=> d!1193250 (= (head!8539 lt!1430719) (h!48539 lt!1430719))))

(assert (=> b!4027675 d!1193250))

(declare-fun b!4028066 () Bool)

(declare-fun res!1639408 () Bool)

(declare-fun e!2498922 () Bool)

(assert (=> b!4028066 (=> (not res!1639408) (not e!2498922))))

(declare-fun lt!1430943 () Option!9300)

(assert (=> b!4028066 (= res!1639408 (= (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430943)))) (originalCharacters!7486 (_1!24245 (get!14156 lt!1430943)))))))

(declare-fun b!4028067 () Bool)

(declare-fun e!2498923 () Option!9300)

(declare-fun lt!1430946 () Option!9300)

(declare-fun lt!1430944 () Option!9300)

(assert (=> b!4028067 (= e!2498923 (ite (and ((_ is None!9299) lt!1430946) ((_ is None!9299) lt!1430944)) None!9299 (ite ((_ is None!9299) lt!1430944) lt!1430946 (ite ((_ is None!9299) lt!1430946) lt!1430944 (ite (>= (size!32231 (_1!24245 (v!39685 lt!1430946))) (size!32231 (_1!24245 (v!39685 lt!1430944)))) lt!1430946 lt!1430944)))))))

(declare-fun call!286824 () Option!9300)

(assert (=> b!4028067 (= lt!1430946 call!286824)))

(assert (=> b!4028067 (= lt!1430944 (maxPrefix!3773 thiss!21717 (t!334004 (t!334004 rules!2999)) lt!1430712))))

(declare-fun b!4028068 () Bool)

(assert (=> b!4028068 (= e!2498923 call!286824)))

(declare-fun b!4028069 () Bool)

(declare-fun res!1639405 () Bool)

(assert (=> b!4028069 (=> (not res!1639405) (not e!2498922))))

(assert (=> b!4028069 (= res!1639405 (= (++!11288 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430943)))) (_2!24245 (get!14156 lt!1430943))) lt!1430712))))

(declare-fun bm!286819 () Bool)

(assert (=> bm!286819 (= call!286824 (maxPrefixOneRule!2784 thiss!21717 (h!48541 (t!334004 rules!2999)) lt!1430712))))

(declare-fun b!4028070 () Bool)

(declare-fun res!1639403 () Bool)

(assert (=> b!4028070 (=> (not res!1639403) (not e!2498922))))

(assert (=> b!4028070 (= res!1639403 (< (size!32232 (_2!24245 (get!14156 lt!1430943))) (size!32232 lt!1430712)))))

(declare-fun d!1193252 () Bool)

(declare-fun e!2498921 () Bool)

(assert (=> d!1193252 e!2498921))

(declare-fun res!1639407 () Bool)

(assert (=> d!1193252 (=> res!1639407 e!2498921)))

(assert (=> d!1193252 (= res!1639407 (isEmpty!25746 lt!1430943))))

(assert (=> d!1193252 (= lt!1430943 e!2498923)))

(declare-fun c!695958 () Bool)

(assert (=> d!1193252 (= c!695958 (and ((_ is Cons!43121) (t!334004 rules!2999)) ((_ is Nil!43121) (t!334004 (t!334004 rules!2999)))))))

(declare-fun lt!1430942 () Unit!62282)

(declare-fun lt!1430945 () Unit!62282)

(assert (=> d!1193252 (= lt!1430942 lt!1430945)))

(assert (=> d!1193252 (isPrefix!3973 lt!1430712 lt!1430712)))

(assert (=> d!1193252 (= lt!1430945 (lemmaIsPrefixRefl!2539 lt!1430712 lt!1430712))))

(assert (=> d!1193252 (rulesValidInductive!2510 thiss!21717 (t!334004 rules!2999))))

(assert (=> d!1193252 (= (maxPrefix!3773 thiss!21717 (t!334004 rules!2999) lt!1430712) lt!1430943)))

(declare-fun b!4028071 () Bool)

(declare-fun res!1639409 () Bool)

(assert (=> b!4028071 (=> (not res!1639409) (not e!2498922))))

(assert (=> b!4028071 (= res!1639409 (= (value!216885 (_1!24245 (get!14156 lt!1430943))) (apply!10075 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430943)))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1430943)))))))))

(declare-fun b!4028072 () Bool)

(assert (=> b!4028072 (= e!2498922 (contains!8568 (t!334004 rules!2999) (rule!9944 (_1!24245 (get!14156 lt!1430943)))))))

(declare-fun b!4028073 () Bool)

(assert (=> b!4028073 (= e!2498921 e!2498922)))

(declare-fun res!1639406 () Bool)

(assert (=> b!4028073 (=> (not res!1639406) (not e!2498922))))

(assert (=> b!4028073 (= res!1639406 (isDefined!7089 lt!1430943))))

(declare-fun b!4028074 () Bool)

(declare-fun res!1639404 () Bool)

(assert (=> b!4028074 (=> (not res!1639404) (not e!2498922))))

(assert (=> b!4028074 (= res!1639404 (matchR!5744 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430943)))) (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430943))))))))

(assert (= (and d!1193252 c!695958) b!4028068))

(assert (= (and d!1193252 (not c!695958)) b!4028067))

(assert (= (or b!4028068 b!4028067) bm!286819))

(assert (= (and d!1193252 (not res!1639407)) b!4028073))

(assert (= (and b!4028073 res!1639406) b!4028066))

(assert (= (and b!4028066 res!1639408) b!4028070))

(assert (= (and b!4028070 res!1639403) b!4028069))

(assert (= (and b!4028069 res!1639405) b!4028071))

(assert (= (and b!4028071 res!1639409) b!4028074))

(assert (= (and b!4028074 res!1639404) b!4028072))

(declare-fun m!4619787 () Bool)

(assert (=> b!4028072 m!4619787))

(declare-fun m!4619789 () Bool)

(assert (=> b!4028072 m!4619789))

(declare-fun m!4619791 () Bool)

(assert (=> b!4028073 m!4619791))

(declare-fun m!4619793 () Bool)

(assert (=> d!1193252 m!4619793))

(assert (=> d!1193252 m!4618841))

(assert (=> d!1193252 m!4618843))

(assert (=> d!1193252 m!4619317))

(assert (=> b!4028074 m!4619787))

(declare-fun m!4619795 () Bool)

(assert (=> b!4028074 m!4619795))

(assert (=> b!4028074 m!4619795))

(declare-fun m!4619797 () Bool)

(assert (=> b!4028074 m!4619797))

(assert (=> b!4028074 m!4619797))

(declare-fun m!4619799 () Bool)

(assert (=> b!4028074 m!4619799))

(assert (=> b!4028071 m!4619787))

(declare-fun m!4619801 () Bool)

(assert (=> b!4028071 m!4619801))

(assert (=> b!4028071 m!4619801))

(declare-fun m!4619803 () Bool)

(assert (=> b!4028071 m!4619803))

(declare-fun m!4619805 () Bool)

(assert (=> bm!286819 m!4619805))

(assert (=> b!4028066 m!4619787))

(assert (=> b!4028066 m!4619795))

(assert (=> b!4028066 m!4619795))

(assert (=> b!4028066 m!4619797))

(declare-fun m!4619807 () Bool)

(assert (=> b!4028067 m!4619807))

(assert (=> b!4028069 m!4619787))

(assert (=> b!4028069 m!4619795))

(assert (=> b!4028069 m!4619795))

(assert (=> b!4028069 m!4619797))

(assert (=> b!4028069 m!4619797))

(declare-fun m!4619809 () Bool)

(assert (=> b!4028069 m!4619809))

(assert (=> b!4028070 m!4619787))

(declare-fun m!4619811 () Bool)

(assert (=> b!4028070 m!4619811))

(assert (=> b!4028070 m!4618865))

(assert (=> b!4027323 d!1193252))

(assert (=> d!1192932 d!1192938))

(assert (=> d!1192932 d!1193162))

(declare-fun d!1193254 () Bool)

(assert (=> d!1193254 (= (isEmpty!25744 (tail!6271 lt!1430705)) ((_ is Nil!43119) (tail!6271 lt!1430705)))))

(assert (=> b!4027672 d!1193254))

(assert (=> b!4027672 d!1193100))

(declare-fun d!1193256 () Bool)

(declare-fun lt!1430947 () Int)

(assert (=> d!1193256 (>= lt!1430947 0)))

(declare-fun e!2498924 () Int)

(assert (=> d!1193256 (= lt!1430947 e!2498924)))

(declare-fun c!695959 () Bool)

(assert (=> d!1193256 (= c!695959 ((_ is Nil!43119) (_2!24245 (get!14156 lt!1430752))))))

(assert (=> d!1193256 (= (size!32232 (_2!24245 (get!14156 lt!1430752))) lt!1430947)))

(declare-fun b!4028075 () Bool)

(assert (=> b!4028075 (= e!2498924 0)))

(declare-fun b!4028076 () Bool)

(assert (=> b!4028076 (= e!2498924 (+ 1 (size!32232 (t!334002 (_2!24245 (get!14156 lt!1430752))))))))

(assert (= (and d!1193256 c!695959) b!4028075))

(assert (= (and d!1193256 (not c!695959)) b!4028076))

(declare-fun m!4619813 () Bool)

(assert (=> b!4028076 m!4619813))

(assert (=> b!4027326 d!1193256))

(assert (=> b!4027326 d!1193062))

(assert (=> b!4027326 d!1193104))

(declare-fun d!1193258 () Bool)

(assert (=> d!1193258 (= (list!16040 lt!1430795) (list!16041 (c!695780 lt!1430795)))))

(declare-fun bs!590164 () Bool)

(assert (= bs!590164 d!1193258))

(declare-fun m!4619815 () Bool)

(assert (=> bs!590164 m!4619815))

(assert (=> d!1192846 d!1193258))

(declare-fun b!4028077 () Bool)

(declare-fun e!2498926 () Bool)

(declare-fun e!2498925 () Bool)

(assert (=> b!4028077 (= e!2498926 e!2498925)))

(declare-fun c!695960 () Bool)

(assert (=> b!4028077 (= c!695960 ((_ is IntegerValue!21349) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(declare-fun b!4028078 () Bool)

(declare-fun res!1639410 () Bool)

(declare-fun e!2498927 () Bool)

(assert (=> b!4028078 (=> res!1639410 e!2498927)))

(assert (=> b!4028078 (= res!1639410 (not ((_ is IntegerValue!21350) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))))

(assert (=> b!4028078 (= e!2498925 e!2498927)))

(declare-fun b!4028079 () Bool)

(assert (=> b!4028079 (= e!2498927 (inv!15 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(declare-fun d!1193260 () Bool)

(declare-fun c!695961 () Bool)

(assert (=> d!1193260 (= c!695961 ((_ is IntegerValue!21348) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(assert (=> d!1193260 (= (inv!21 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)) e!2498926)))

(declare-fun b!4028080 () Bool)

(assert (=> b!4028080 (= e!2498926 (inv!16 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(declare-fun b!4028081 () Bool)

(assert (=> b!4028081 (= e!2498925 (inv!17 (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))))

(assert (= (and d!1193260 c!695961) b!4028080))

(assert (= (and d!1193260 (not c!695961)) b!4028077))

(assert (= (and b!4028077 c!695960) b!4028081))

(assert (= (and b!4028077 (not c!695960)) b!4028078))

(assert (= (and b!4028078 (not res!1639410)) b!4028079))

(declare-fun m!4619817 () Bool)

(assert (=> b!4028079 m!4619817))

(declare-fun m!4619819 () Bool)

(assert (=> b!4028080 m!4619819))

(declare-fun m!4619821 () Bool)

(assert (=> b!4028081 m!4619821))

(assert (=> tb!242017 d!1193260))

(declare-fun d!1193262 () Bool)

(declare-fun lt!1430948 () Int)

(assert (=> d!1193262 (>= lt!1430948 0)))

(declare-fun e!2498928 () Int)

(assert (=> d!1193262 (= lt!1430948 e!2498928)))

(declare-fun c!695962 () Bool)

(assert (=> d!1193262 (= c!695962 ((_ is Nil!43119) lt!1430838))))

(assert (=> d!1193262 (= (size!32232 lt!1430838) lt!1430948)))

(declare-fun b!4028082 () Bool)

(assert (=> b!4028082 (= e!2498928 0)))

(declare-fun b!4028083 () Bool)

(assert (=> b!4028083 (= e!2498928 (+ 1 (size!32232 (t!334002 lt!1430838))))))

(assert (= (and d!1193262 c!695962) b!4028082))

(assert (= (and d!1193262 (not c!695962)) b!4028083))

(declare-fun m!4619823 () Bool)

(assert (=> b!4028083 m!4619823))

(assert (=> b!4027540 d!1193262))

(assert (=> b!4027540 d!1192828))

(declare-fun d!1193264 () Bool)

(declare-fun lt!1430949 () Int)

(assert (=> d!1193264 (>= lt!1430949 0)))

(declare-fun e!2498929 () Int)

(assert (=> d!1193264 (= lt!1430949 e!2498929)))

(declare-fun c!695963 () Bool)

(assert (=> d!1193264 (= c!695963 ((_ is Nil!43119) lt!1430721))))

(assert (=> d!1193264 (= (size!32232 lt!1430721) lt!1430949)))

(declare-fun b!4028084 () Bool)

(assert (=> b!4028084 (= e!2498929 0)))

(declare-fun b!4028085 () Bool)

(assert (=> b!4028085 (= e!2498929 (+ 1 (size!32232 (t!334002 lt!1430721))))))

(assert (= (and d!1193264 c!695963) b!4028084))

(assert (= (and d!1193264 (not c!695963)) b!4028085))

(declare-fun m!4619825 () Bool)

(assert (=> b!4028085 m!4619825))

(assert (=> b!4027540 d!1193264))

(declare-fun d!1193266 () Bool)

(assert (=> d!1193266 (= (head!8539 prefix!494) (h!48539 prefix!494))))

(assert (=> b!4027683 d!1193266))

(assert (=> b!4027683 d!1193216))

(declare-fun d!1193268 () Bool)

(declare-fun e!2498931 () Bool)

(assert (=> d!1193268 e!2498931))

(declare-fun res!1639414 () Bool)

(assert (=> d!1193268 (=> res!1639414 e!2498931)))

(declare-fun lt!1430950 () Bool)

(assert (=> d!1193268 (= res!1639414 (not lt!1430950))))

(declare-fun e!2498930 () Bool)

(assert (=> d!1193268 (= lt!1430950 e!2498930)))

(declare-fun res!1639412 () Bool)

(assert (=> d!1193268 (=> res!1639412 e!2498930)))

(assert (=> d!1193268 (= res!1639412 ((_ is Nil!43119) (tail!6271 lt!1430705)))))

(assert (=> d!1193268 (= (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 prefix!494)) lt!1430950)))

(declare-fun b!4028086 () Bool)

(declare-fun e!2498932 () Bool)

(assert (=> b!4028086 (= e!2498930 e!2498932)))

(declare-fun res!1639413 () Bool)

(assert (=> b!4028086 (=> (not res!1639413) (not e!2498932))))

(assert (=> b!4028086 (= res!1639413 (not ((_ is Nil!43119) (tail!6271 prefix!494))))))

(declare-fun b!4028088 () Bool)

(assert (=> b!4028088 (= e!2498932 (isPrefix!3973 (tail!6271 (tail!6271 lt!1430705)) (tail!6271 (tail!6271 prefix!494))))))

(declare-fun b!4028089 () Bool)

(assert (=> b!4028089 (= e!2498931 (>= (size!32232 (tail!6271 prefix!494)) (size!32232 (tail!6271 lt!1430705))))))

(declare-fun b!4028087 () Bool)

(declare-fun res!1639411 () Bool)

(assert (=> b!4028087 (=> (not res!1639411) (not e!2498932))))

(assert (=> b!4028087 (= res!1639411 (= (head!8539 (tail!6271 lt!1430705)) (head!8539 (tail!6271 prefix!494))))))

(assert (= (and d!1193268 (not res!1639412)) b!4028086))

(assert (= (and b!4028086 res!1639413) b!4028087))

(assert (= (and b!4028087 res!1639411) b!4028088))

(assert (= (and d!1193268 (not res!1639414)) b!4028089))

(assert (=> b!4028088 m!4619093))

(assert (=> b!4028088 m!4619527))

(assert (=> b!4028088 m!4619207))

(assert (=> b!4028088 m!4619737))

(assert (=> b!4028088 m!4619527))

(assert (=> b!4028088 m!4619737))

(declare-fun m!4619827 () Bool)

(assert (=> b!4028088 m!4619827))

(assert (=> b!4028089 m!4619207))

(assert (=> b!4028089 m!4619741))

(assert (=> b!4028089 m!4619093))

(assert (=> b!4028089 m!4619535))

(assert (=> b!4028087 m!4619093))

(assert (=> b!4028087 m!4619537))

(assert (=> b!4028087 m!4619207))

(assert (=> b!4028087 m!4619743))

(assert (=> b!4027623 d!1193268))

(assert (=> b!4027623 d!1193100))

(assert (=> b!4027623 d!1193214))

(declare-fun d!1193270 () Bool)

(declare-fun e!2498934 () Bool)

(assert (=> d!1193270 e!2498934))

(declare-fun res!1639415 () Bool)

(assert (=> d!1193270 (=> (not res!1639415) (not e!2498934))))

(declare-fun lt!1430951 () List!43243)

(assert (=> d!1193270 (= res!1639415 (= (content!6550 lt!1430951) ((_ map or) (content!6550 (t!334002 lt!1430713)) (content!6550 suffix!1299))))))

(declare-fun e!2498933 () List!43243)

(assert (=> d!1193270 (= lt!1430951 e!2498933)))

(declare-fun c!695964 () Bool)

(assert (=> d!1193270 (= c!695964 ((_ is Nil!43119) (t!334002 lt!1430713)))))

(assert (=> d!1193270 (= (++!11288 (t!334002 lt!1430713) suffix!1299) lt!1430951)))

(declare-fun b!4028093 () Bool)

(assert (=> b!4028093 (= e!2498934 (or (not (= suffix!1299 Nil!43119)) (= lt!1430951 (t!334002 lt!1430713))))))

(declare-fun b!4028092 () Bool)

(declare-fun res!1639416 () Bool)

(assert (=> b!4028092 (=> (not res!1639416) (not e!2498934))))

(assert (=> b!4028092 (= res!1639416 (= (size!32232 lt!1430951) (+ (size!32232 (t!334002 lt!1430713)) (size!32232 suffix!1299))))))

(declare-fun b!4028090 () Bool)

(assert (=> b!4028090 (= e!2498933 suffix!1299)))

(declare-fun b!4028091 () Bool)

(assert (=> b!4028091 (= e!2498933 (Cons!43119 (h!48539 (t!334002 lt!1430713)) (++!11288 (t!334002 (t!334002 lt!1430713)) suffix!1299)))))

(assert (= (and d!1193270 c!695964) b!4028090))

(assert (= (and d!1193270 (not c!695964)) b!4028091))

(assert (= (and d!1193270 res!1639415) b!4028092))

(assert (= (and b!4028092 res!1639416) b!4028093))

(declare-fun m!4619829 () Bool)

(assert (=> d!1193270 m!4619829))

(assert (=> d!1193270 m!4619785))

(assert (=> d!1193270 m!4618911))

(declare-fun m!4619831 () Bool)

(assert (=> b!4028092 m!4619831))

(assert (=> b!4028092 m!4619747))

(assert (=> b!4028092 m!4618703))

(declare-fun m!4619833 () Bool)

(assert (=> b!4028091 m!4619833))

(assert (=> b!4027543 d!1193270))

(declare-fun d!1193272 () Bool)

(declare-fun e!2498936 () Bool)

(assert (=> d!1193272 e!2498936))

(declare-fun res!1639420 () Bool)

(assert (=> d!1193272 (=> res!1639420 e!2498936)))

(declare-fun lt!1430952 () Bool)

(assert (=> d!1193272 (= res!1639420 (not lt!1430952))))

(declare-fun e!2498935 () Bool)

(assert (=> d!1193272 (= lt!1430952 e!2498935)))

(declare-fun res!1639418 () Bool)

(assert (=> d!1193272 (=> res!1639418 e!2498935)))

(assert (=> d!1193272 (= res!1639418 ((_ is Nil!43119) (tail!6271 newSuffix!27)))))

(assert (=> d!1193272 (= (isPrefix!3973 (tail!6271 newSuffix!27) (tail!6271 suffix!1299)) lt!1430952)))

(declare-fun b!4028094 () Bool)

(declare-fun e!2498937 () Bool)

(assert (=> b!4028094 (= e!2498935 e!2498937)))

(declare-fun res!1639419 () Bool)

(assert (=> b!4028094 (=> (not res!1639419) (not e!2498937))))

(assert (=> b!4028094 (= res!1639419 (not ((_ is Nil!43119) (tail!6271 suffix!1299))))))

(declare-fun b!4028096 () Bool)

(assert (=> b!4028096 (= e!2498937 (isPrefix!3973 (tail!6271 (tail!6271 newSuffix!27)) (tail!6271 (tail!6271 suffix!1299))))))

(declare-fun b!4028097 () Bool)

(assert (=> b!4028097 (= e!2498936 (>= (size!32232 (tail!6271 suffix!1299)) (size!32232 (tail!6271 newSuffix!27))))))

(declare-fun b!4028095 () Bool)

(declare-fun res!1639417 () Bool)

(assert (=> b!4028095 (=> (not res!1639417) (not e!2498937))))

(assert (=> b!4028095 (= res!1639417 (= (head!8539 (tail!6271 newSuffix!27)) (head!8539 (tail!6271 suffix!1299))))))

(assert (= (and d!1193272 (not res!1639418)) b!4028094))

(assert (= (and b!4028094 res!1639419) b!4028095))

(assert (= (and b!4028095 res!1639417) b!4028096))

(assert (= (and d!1193272 (not res!1639420)) b!4028097))

(assert (=> b!4028096 m!4618965))

(declare-fun m!4619835 () Bool)

(assert (=> b!4028096 m!4619835))

(assert (=> b!4028096 m!4618967))

(declare-fun m!4619837 () Bool)

(assert (=> b!4028096 m!4619837))

(assert (=> b!4028096 m!4619835))

(assert (=> b!4028096 m!4619837))

(declare-fun m!4619839 () Bool)

(assert (=> b!4028096 m!4619839))

(assert (=> b!4028097 m!4618967))

(declare-fun m!4619841 () Bool)

(assert (=> b!4028097 m!4619841))

(assert (=> b!4028097 m!4618965))

(declare-fun m!4619843 () Bool)

(assert (=> b!4028097 m!4619843))

(assert (=> b!4028095 m!4618965))

(declare-fun m!4619845 () Bool)

(assert (=> b!4028095 m!4619845))

(assert (=> b!4028095 m!4618967))

(declare-fun m!4619847 () Bool)

(assert (=> b!4028095 m!4619847))

(assert (=> b!4027425 d!1193272))

(declare-fun d!1193274 () Bool)

(assert (=> d!1193274 (= (tail!6271 newSuffix!27) (t!334002 newSuffix!27))))

(assert (=> b!4027425 d!1193274))

(declare-fun d!1193276 () Bool)

(assert (=> d!1193276 (= (tail!6271 suffix!1299) (t!334002 suffix!1299))))

(assert (=> b!4027425 d!1193276))

(declare-fun b!4028098 () Bool)

(declare-fun e!2498939 () Bool)

(declare-fun e!2498942 () Bool)

(assert (=> b!4028098 (= e!2498939 e!2498942)))

(declare-fun res!1639424 () Bool)

(assert (=> b!4028098 (=> res!1639424 e!2498942)))

(declare-fun call!286825 () Bool)

(assert (=> b!4028098 (= res!1639424 call!286825)))

(declare-fun b!4028099 () Bool)

(declare-fun res!1639425 () Bool)

(assert (=> b!4028099 (=> res!1639425 e!2498942)))

(assert (=> b!4028099 (= res!1639425 (not (isEmpty!25744 (tail!6271 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))))

(declare-fun b!4028100 () Bool)

(declare-fun e!2498943 () Bool)

(assert (=> b!4028100 (= e!2498943 e!2498939)))

(declare-fun res!1639422 () Bool)

(assert (=> b!4028100 (=> (not res!1639422) (not e!2498939))))

(declare-fun lt!1430953 () Bool)

(assert (=> b!4028100 (= res!1639422 (not lt!1430953))))

(declare-fun b!4028101 () Bool)

(declare-fun e!2498938 () Bool)

(declare-fun e!2498941 () Bool)

(assert (=> b!4028101 (= e!2498938 e!2498941)))

(declare-fun c!695965 () Bool)

(assert (=> b!4028101 (= c!695965 ((_ is EmptyLang!11791) (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))))))

(declare-fun bm!286820 () Bool)

(assert (=> bm!286820 (= call!286825 (isEmpty!25744 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))

(declare-fun b!4028103 () Bool)

(assert (=> b!4028103 (= e!2498938 (= lt!1430953 call!286825))))

(declare-fun b!4028104 () Bool)

(declare-fun res!1639428 () Bool)

(assert (=> b!4028104 (=> res!1639428 e!2498943)))

(assert (=> b!4028104 (= res!1639428 (not ((_ is ElementMatch!11791) (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))))

(assert (=> b!4028104 (= e!2498941 e!2498943)))

(declare-fun b!4028105 () Bool)

(declare-fun res!1639426 () Bool)

(declare-fun e!2498940 () Bool)

(assert (=> b!4028105 (=> (not res!1639426) (not e!2498940))))

(assert (=> b!4028105 (= res!1639426 (not call!286825))))

(declare-fun b!4028106 () Bool)

(assert (=> b!4028106 (= e!2498940 (= (head!8539 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (c!695781 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))))

(declare-fun b!4028107 () Bool)

(declare-fun res!1639423 () Bool)

(assert (=> b!4028107 (=> res!1639423 e!2498943)))

(assert (=> b!4028107 (= res!1639423 e!2498940)))

(declare-fun res!1639421 () Bool)

(assert (=> b!4028107 (=> (not res!1639421) (not e!2498940))))

(assert (=> b!4028107 (= res!1639421 lt!1430953)))

(declare-fun b!4028108 () Bool)

(declare-fun e!2498944 () Bool)

(assert (=> b!4028108 (= e!2498944 (nullable!4136 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))))))

(declare-fun b!4028102 () Bool)

(assert (=> b!4028102 (= e!2498941 (not lt!1430953))))

(declare-fun d!1193278 () Bool)

(assert (=> d!1193278 e!2498938))

(declare-fun c!695966 () Bool)

(assert (=> d!1193278 (= c!695966 ((_ is EmptyExpr!11791) (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))))))

(assert (=> d!1193278 (= lt!1430953 e!2498944)))

(declare-fun c!695967 () Bool)

(assert (=> d!1193278 (= c!695967 (isEmpty!25744 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))))))

(assert (=> d!1193278 (validRegex!5336 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))))

(assert (=> d!1193278 (= (matchR!5744 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) lt!1430953)))

(declare-fun b!4028109 () Bool)

(assert (=> b!4028109 (= e!2498942 (not (= (head!8539 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752))))) (c!695781 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752))))))))))

(declare-fun b!4028110 () Bool)

(assert (=> b!4028110 (= e!2498944 (matchR!5744 (derivativeStep!3541 (regex!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))) (head!8539 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))))) (tail!6271 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))))))))

(declare-fun b!4028111 () Bool)

(declare-fun res!1639427 () Bool)

(assert (=> b!4028111 (=> (not res!1639427) (not e!2498940))))

(assert (=> b!4028111 (= res!1639427 (isEmpty!25744 (tail!6271 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1430752)))))))))

(assert (= (and d!1193278 c!695967) b!4028108))

(assert (= (and d!1193278 (not c!695967)) b!4028110))

(assert (= (and d!1193278 c!695966) b!4028103))

(assert (= (and d!1193278 (not c!695966)) b!4028101))

(assert (= (and b!4028101 c!695965) b!4028102))

(assert (= (and b!4028101 (not c!695965)) b!4028104))

(assert (= (and b!4028104 (not res!1639428)) b!4028107))

(assert (= (and b!4028107 res!1639421) b!4028105))

(assert (= (and b!4028105 res!1639426) b!4028111))

(assert (= (and b!4028111 res!1639427) b!4028106))

(assert (= (and b!4028107 (not res!1639423)) b!4028100))

(assert (= (and b!4028100 res!1639422) b!4028098))

(assert (= (and b!4028098 (not res!1639424)) b!4028099))

(assert (= (and b!4028099 (not res!1639425)) b!4028109))

(assert (= (or b!4028103 b!4028098 b!4028105) bm!286820))

(assert (=> b!4028109 m!4618849))

(declare-fun m!4619849 () Bool)

(assert (=> b!4028109 m!4619849))

(assert (=> d!1193278 m!4618849))

(declare-fun m!4619851 () Bool)

(assert (=> d!1193278 m!4619851))

(declare-fun m!4619853 () Bool)

(assert (=> d!1193278 m!4619853))

(assert (=> b!4028111 m!4618849))

(declare-fun m!4619855 () Bool)

(assert (=> b!4028111 m!4619855))

(assert (=> b!4028111 m!4619855))

(declare-fun m!4619857 () Bool)

(assert (=> b!4028111 m!4619857))

(assert (=> b!4028110 m!4618849))

(assert (=> b!4028110 m!4619849))

(assert (=> b!4028110 m!4619849))

(declare-fun m!4619859 () Bool)

(assert (=> b!4028110 m!4619859))

(assert (=> b!4028110 m!4618849))

(assert (=> b!4028110 m!4619855))

(assert (=> b!4028110 m!4619859))

(assert (=> b!4028110 m!4619855))

(declare-fun m!4619861 () Bool)

(assert (=> b!4028110 m!4619861))

(assert (=> bm!286820 m!4618849))

(assert (=> bm!286820 m!4619851))

(assert (=> b!4028106 m!4618849))

(assert (=> b!4028106 m!4619849))

(assert (=> b!4028099 m!4618849))

(assert (=> b!4028099 m!4619855))

(assert (=> b!4028099 m!4619855))

(assert (=> b!4028099 m!4619857))

(declare-fun m!4619863 () Bool)

(assert (=> b!4028108 m!4619863))

(assert (=> b!4027330 d!1193278))

(assert (=> b!4027330 d!1193062))

(assert (=> b!4027330 d!1193054))

(assert (=> b!4027330 d!1193056))

(declare-fun d!1193280 () Bool)

(declare-fun e!2498946 () Bool)

(assert (=> d!1193280 e!2498946))

(declare-fun res!1639432 () Bool)

(assert (=> d!1193280 (=> res!1639432 e!2498946)))

(declare-fun lt!1430954 () Bool)

(assert (=> d!1193280 (= res!1639432 (not lt!1430954))))

(declare-fun e!2498945 () Bool)

(assert (=> d!1193280 (= lt!1430954 e!2498945)))

(declare-fun res!1639430 () Bool)

(assert (=> d!1193280 (=> res!1639430 e!2498945)))

(assert (=> d!1193280 (= res!1639430 ((_ is Nil!43119) prefix!494))))

(assert (=> d!1193280 (= (isPrefix!3973 prefix!494 (++!11288 prefix!494 suffix!1299)) lt!1430954)))

(declare-fun b!4028112 () Bool)

(declare-fun e!2498947 () Bool)

(assert (=> b!4028112 (= e!2498945 e!2498947)))

(declare-fun res!1639431 () Bool)

(assert (=> b!4028112 (=> (not res!1639431) (not e!2498947))))

(assert (=> b!4028112 (= res!1639431 (not ((_ is Nil!43119) (++!11288 prefix!494 suffix!1299))))))

(declare-fun b!4028114 () Bool)

(assert (=> b!4028114 (= e!2498947 (isPrefix!3973 (tail!6271 prefix!494) (tail!6271 (++!11288 prefix!494 suffix!1299))))))

(declare-fun b!4028115 () Bool)

(assert (=> b!4028115 (= e!2498946 (>= (size!32232 (++!11288 prefix!494 suffix!1299)) (size!32232 prefix!494)))))

(declare-fun b!4028113 () Bool)

(declare-fun res!1639429 () Bool)

(assert (=> b!4028113 (=> (not res!1639429) (not e!2498947))))

(assert (=> b!4028113 (= res!1639429 (= (head!8539 prefix!494) (head!8539 (++!11288 prefix!494 suffix!1299))))))

(assert (= (and d!1193280 (not res!1639430)) b!4028112))

(assert (= (and b!4028112 res!1639431) b!4028113))

(assert (= (and b!4028113 res!1639429) b!4028114))

(assert (= (and d!1193280 (not res!1639432)) b!4028115))

(assert (=> b!4028114 m!4619207))

(assert (=> b!4028114 m!4618645))

(declare-fun m!4619865 () Bool)

(assert (=> b!4028114 m!4619865))

(assert (=> b!4028114 m!4619207))

(assert (=> b!4028114 m!4619865))

(declare-fun m!4619867 () Bool)

(assert (=> b!4028114 m!4619867))

(assert (=> b!4028115 m!4618645))

(declare-fun m!4619869 () Bool)

(assert (=> b!4028115 m!4619869))

(assert (=> b!4028115 m!4618711))

(assert (=> b!4028113 m!4619213))

(assert (=> b!4028113 m!4618645))

(declare-fun m!4619871 () Bool)

(assert (=> b!4028113 m!4619871))

(assert (=> d!1192944 d!1193280))

(assert (=> d!1192944 d!1192808))

(declare-fun d!1193282 () Bool)

(assert (=> d!1193282 (isPrefix!3973 prefix!494 (++!11288 prefix!494 suffix!1299))))

(assert (=> d!1193282 true))

(declare-fun _$46!1708 () Unit!62282)

(assert (=> d!1193282 (= (choose!24367 prefix!494 suffix!1299) _$46!1708)))

(declare-fun bs!590165 () Bool)

(assert (= bs!590165 d!1193282))

(assert (=> bs!590165 m!4618645))

(assert (=> bs!590165 m!4618645))

(assert (=> bs!590165 m!4619241))

(assert (=> d!1192944 d!1193282))

(assert (=> b!4027660 d!1193254))

(assert (=> b!4027660 d!1193100))

(declare-fun d!1193284 () Bool)

(declare-fun e!2498949 () Bool)

(assert (=> d!1193284 e!2498949))

(declare-fun res!1639436 () Bool)

(assert (=> d!1193284 (=> res!1639436 e!2498949)))

(declare-fun lt!1430955 () Bool)

(assert (=> d!1193284 (= res!1639436 (not lt!1430955))))

(declare-fun e!2498948 () Bool)

(assert (=> d!1193284 (= lt!1430955 e!2498948)))

(declare-fun res!1639434 () Bool)

(assert (=> d!1193284 (=> res!1639434 e!2498948)))

(assert (=> d!1193284 (= res!1639434 ((_ is Nil!43119) (tail!6271 lt!1430705)))))

(assert (=> d!1193284 (= (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 lt!1430711)) lt!1430955)))

(declare-fun b!4028116 () Bool)

(declare-fun e!2498950 () Bool)

(assert (=> b!4028116 (= e!2498948 e!2498950)))

(declare-fun res!1639435 () Bool)

(assert (=> b!4028116 (=> (not res!1639435) (not e!2498950))))

(assert (=> b!4028116 (= res!1639435 (not ((_ is Nil!43119) (tail!6271 lt!1430711))))))

(declare-fun b!4028118 () Bool)

(assert (=> b!4028118 (= e!2498950 (isPrefix!3973 (tail!6271 (tail!6271 lt!1430705)) (tail!6271 (tail!6271 lt!1430711))))))

(declare-fun b!4028119 () Bool)

(assert (=> b!4028119 (= e!2498949 (>= (size!32232 (tail!6271 lt!1430711)) (size!32232 (tail!6271 lt!1430705))))))

(declare-fun b!4028117 () Bool)

(declare-fun res!1639433 () Bool)

(assert (=> b!4028117 (=> (not res!1639433) (not e!2498950))))

(assert (=> b!4028117 (= res!1639433 (= (head!8539 (tail!6271 lt!1430705)) (head!8539 (tail!6271 lt!1430711))))))

(assert (= (and d!1193284 (not res!1639434)) b!4028116))

(assert (= (and b!4028116 res!1639435) b!4028117))

(assert (= (and b!4028117 res!1639433) b!4028118))

(assert (= (and d!1193284 (not res!1639436)) b!4028119))

(assert (=> b!4028118 m!4619093))

(assert (=> b!4028118 m!4619527))

(assert (=> b!4028118 m!4619095))

(declare-fun m!4619873 () Bool)

(assert (=> b!4028118 m!4619873))

(assert (=> b!4028118 m!4619527))

(assert (=> b!4028118 m!4619873))

(declare-fun m!4619875 () Bool)

(assert (=> b!4028118 m!4619875))

(assert (=> b!4028119 m!4619095))

(declare-fun m!4619877 () Bool)

(assert (=> b!4028119 m!4619877))

(assert (=> b!4028119 m!4619093))

(assert (=> b!4028119 m!4619535))

(assert (=> b!4028117 m!4619093))

(assert (=> b!4028117 m!4619537))

(assert (=> b!4028117 m!4619095))

(declare-fun m!4619879 () Bool)

(assert (=> b!4028117 m!4619879))

(assert (=> b!4027536 d!1193284))

(assert (=> b!4027536 d!1193100))

(declare-fun d!1193286 () Bool)

(assert (=> d!1193286 (= (tail!6271 lt!1430711) (t!334002 lt!1430711))))

(assert (=> b!4027536 d!1193286))

(assert (=> b!4027479 d!1193238))

(declare-fun d!1193288 () Bool)

(declare-fun c!695968 () Bool)

(assert (=> d!1193288 (= c!695968 ((_ is Node!13097) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(declare-fun e!2498951 () Bool)

(assert (=> d!1193288 (= (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))) e!2498951)))

(declare-fun b!4028120 () Bool)

(assert (=> b!4028120 (= e!2498951 (inv!57611 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(declare-fun b!4028121 () Bool)

(declare-fun e!2498952 () Bool)

(assert (=> b!4028121 (= e!2498951 e!2498952)))

(declare-fun res!1639437 () Bool)

(assert (=> b!4028121 (= res!1639437 (not ((_ is Leaf!20247) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))))))

(assert (=> b!4028121 (=> res!1639437 e!2498952)))

(declare-fun b!4028122 () Bool)

(assert (=> b!4028122 (= e!2498952 (inv!57612 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(assert (= (and d!1193288 c!695968) b!4028120))

(assert (= (and d!1193288 (not c!695968)) b!4028121))

(assert (= (and b!4028121 (not res!1639437)) b!4028122))

(declare-fun m!4619881 () Bool)

(assert (=> b!4028120 m!4619881))

(declare-fun m!4619883 () Bool)

(assert (=> b!4028122 m!4619883))

(assert (=> b!4027414 d!1193288))

(assert (=> bm!286807 d!1192938))

(declare-fun d!1193290 () Bool)

(assert (=> d!1193290 (= (inv!57610 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))) (isBalanced!3670 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))))))

(declare-fun bs!590166 () Bool)

(assert (= bs!590166 d!1193290))

(declare-fun m!4619885 () Bool)

(assert (=> bs!590166 m!4619885))

(assert (=> tb!242009 d!1193290))

(declare-fun d!1193292 () Bool)

(declare-fun c!695969 () Bool)

(assert (=> d!1193292 (= c!695969 ((_ is Nil!43119) lt!1430838))))

(declare-fun e!2498953 () (InoxSet C!23768))

(assert (=> d!1193292 (= (content!6550 lt!1430838) e!2498953)))

(declare-fun b!4028123 () Bool)

(assert (=> b!4028123 (= e!2498953 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4028124 () Bool)

(assert (=> b!4028124 (= e!2498953 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430838) true) (content!6550 (t!334002 lt!1430838))))))

(assert (= (and d!1193292 c!695969) b!4028123))

(assert (= (and d!1193292 (not c!695969)) b!4028124))

(declare-fun m!4619887 () Bool)

(assert (=> b!4028124 m!4619887))

(declare-fun m!4619889 () Bool)

(assert (=> b!4028124 m!4619889))

(assert (=> d!1192902 d!1193292))

(assert (=> d!1192902 d!1193048))

(declare-fun d!1193294 () Bool)

(declare-fun c!695970 () Bool)

(assert (=> d!1193294 (= c!695970 ((_ is Nil!43119) lt!1430721))))

(declare-fun e!2498954 () (InoxSet C!23768))

(assert (=> d!1193294 (= (content!6550 lt!1430721) e!2498954)))

(declare-fun b!4028125 () Bool)

(assert (=> b!4028125 (= e!2498954 ((as const (Array C!23768 Bool)) false))))

(declare-fun b!4028126 () Bool)

(assert (=> b!4028126 (= e!2498954 ((_ map or) (store ((as const (Array C!23768 Bool)) false) (h!48539 lt!1430721) true) (content!6550 (t!334002 lt!1430721))))))

(assert (= (and d!1193294 c!695970) b!4028125))

(assert (= (and d!1193294 (not c!695970)) b!4028126))

(declare-fun m!4619891 () Bool)

(assert (=> b!4028126 m!4619891))

(declare-fun m!4619893 () Bool)

(assert (=> b!4028126 m!4619893))

(assert (=> d!1192902 d!1193294))

(declare-fun d!1193296 () Bool)

(declare-fun lt!1430956 () Bool)

(assert (=> d!1193296 (= lt!1430956 (select (content!6552 (t!334004 rules!2999)) (rule!9944 token!484)))))

(declare-fun e!2498955 () Bool)

(assert (=> d!1193296 (= lt!1430956 e!2498955)))

(declare-fun res!1639439 () Bool)

(assert (=> d!1193296 (=> (not res!1639439) (not e!2498955))))

(assert (=> d!1193296 (= res!1639439 ((_ is Cons!43121) (t!334004 rules!2999)))))

(assert (=> d!1193296 (= (contains!8568 (t!334004 rules!2999) (rule!9944 token!484)) lt!1430956)))

(declare-fun b!4028127 () Bool)

(declare-fun e!2498956 () Bool)

(assert (=> b!4028127 (= e!2498955 e!2498956)))

(declare-fun res!1639438 () Bool)

(assert (=> b!4028127 (=> res!1639438 e!2498956)))

(assert (=> b!4028127 (= res!1639438 (= (h!48541 (t!334004 rules!2999)) (rule!9944 token!484)))))

(declare-fun b!4028128 () Bool)

(assert (=> b!4028128 (= e!2498956 (contains!8568 (t!334004 (t!334004 rules!2999)) (rule!9944 token!484)))))

(assert (= (and d!1193296 res!1639439) b!4028127))

(assert (= (and b!4028127 (not res!1639438)) b!4028128))

(assert (=> d!1193296 m!4619283))

(declare-fun m!4619895 () Bool)

(assert (=> d!1193296 m!4619895))

(declare-fun m!4619897 () Bool)

(assert (=> b!4028128 m!4619897))

(assert (=> b!4027533 d!1193296))

(assert (=> b!4027667 d!1192968))

(assert (=> b!4027322 d!1193054))

(assert (=> b!4027322 d!1193056))

(assert (=> b!4027322 d!1193062))

(declare-fun b!4028129 () Bool)

(declare-fun e!2498958 () Bool)

(declare-fun e!2498961 () Bool)

(assert (=> b!4028129 (= e!2498958 e!2498961)))

(declare-fun res!1639443 () Bool)

(assert (=> b!4028129 (=> res!1639443 e!2498961)))

(declare-fun call!286826 () Bool)

(assert (=> b!4028129 (= res!1639443 call!286826)))

(declare-fun b!4028130 () Bool)

(declare-fun res!1639444 () Bool)

(assert (=> b!4028130 (=> res!1639444 e!2498961)))

(assert (=> b!4028130 (= res!1639444 (not (isEmpty!25744 (tail!6271 (tail!6271 lt!1430705)))))))

(declare-fun b!4028131 () Bool)

(declare-fun e!2498962 () Bool)

(assert (=> b!4028131 (= e!2498962 e!2498958)))

(declare-fun res!1639441 () Bool)

(assert (=> b!4028131 (=> (not res!1639441) (not e!2498958))))

(declare-fun lt!1430957 () Bool)

(assert (=> b!4028131 (= res!1639441 (not lt!1430957))))

(declare-fun b!4028132 () Bool)

(declare-fun e!2498957 () Bool)

(declare-fun e!2498960 () Bool)

(assert (=> b!4028132 (= e!2498957 e!2498960)))

(declare-fun c!695971 () Bool)

(assert (=> b!4028132 (= c!695971 ((_ is EmptyLang!11791) (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705))))))

(declare-fun bm!286821 () Bool)

(assert (=> bm!286821 (= call!286826 (isEmpty!25744 (tail!6271 lt!1430705)))))

(declare-fun b!4028134 () Bool)

(assert (=> b!4028134 (= e!2498957 (= lt!1430957 call!286826))))

(declare-fun b!4028135 () Bool)

(declare-fun res!1639447 () Bool)

(assert (=> b!4028135 (=> res!1639447 e!2498962)))

(assert (=> b!4028135 (= res!1639447 (not ((_ is ElementMatch!11791) (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)))))))

(assert (=> b!4028135 (= e!2498960 e!2498962)))

(declare-fun b!4028136 () Bool)

(declare-fun res!1639445 () Bool)

(declare-fun e!2498959 () Bool)

(assert (=> b!4028136 (=> (not res!1639445) (not e!2498959))))

(assert (=> b!4028136 (= res!1639445 (not call!286826))))

(declare-fun b!4028137 () Bool)

(assert (=> b!4028137 (= e!2498959 (= (head!8539 (tail!6271 lt!1430705)) (c!695781 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)))))))

(declare-fun b!4028138 () Bool)

(declare-fun res!1639442 () Bool)

(assert (=> b!4028138 (=> res!1639442 e!2498962)))

(assert (=> b!4028138 (= res!1639442 e!2498959)))

(declare-fun res!1639440 () Bool)

(assert (=> b!4028138 (=> (not res!1639440) (not e!2498959))))

(assert (=> b!4028138 (= res!1639440 lt!1430957)))

(declare-fun b!4028139 () Bool)

(declare-fun e!2498963 () Bool)

(assert (=> b!4028139 (= e!2498963 (nullable!4136 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705))))))

(declare-fun b!4028133 () Bool)

(assert (=> b!4028133 (= e!2498960 (not lt!1430957))))

(declare-fun d!1193298 () Bool)

(assert (=> d!1193298 e!2498957))

(declare-fun c!695972 () Bool)

(assert (=> d!1193298 (= c!695972 ((_ is EmptyExpr!11791) (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705))))))

(assert (=> d!1193298 (= lt!1430957 e!2498963)))

(declare-fun c!695973 () Bool)

(assert (=> d!1193298 (= c!695973 (isEmpty!25744 (tail!6271 lt!1430705)))))

(assert (=> d!1193298 (validRegex!5336 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)))))

(assert (=> d!1193298 (= (matchR!5744 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)) (tail!6271 lt!1430705)) lt!1430957)))

(declare-fun b!4028140 () Bool)

(assert (=> b!4028140 (= e!2498961 (not (= (head!8539 (tail!6271 lt!1430705)) (c!695781 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705))))))))

(declare-fun b!4028141 () Bool)

(assert (=> b!4028141 (= e!2498963 (matchR!5744 (derivativeStep!3541 (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)) (head!8539 (tail!6271 lt!1430705))) (tail!6271 (tail!6271 lt!1430705))))))

(declare-fun b!4028142 () Bool)

(declare-fun res!1639446 () Bool)

(assert (=> b!4028142 (=> (not res!1639446) (not e!2498959))))

(assert (=> b!4028142 (= res!1639446 (isEmpty!25744 (tail!6271 (tail!6271 lt!1430705))))))

(assert (= (and d!1193298 c!695973) b!4028139))

(assert (= (and d!1193298 (not c!695973)) b!4028141))

(assert (= (and d!1193298 c!695972) b!4028134))

(assert (= (and d!1193298 (not c!695972)) b!4028132))

(assert (= (and b!4028132 c!695971) b!4028133))

(assert (= (and b!4028132 (not c!695971)) b!4028135))

(assert (= (and b!4028135 (not res!1639447)) b!4028138))

(assert (= (and b!4028138 res!1639440) b!4028136))

(assert (= (and b!4028136 res!1639445) b!4028142))

(assert (= (and b!4028142 res!1639446) b!4028137))

(assert (= (and b!4028138 (not res!1639442)) b!4028131))

(assert (= (and b!4028131 res!1639441) b!4028129))

(assert (= (and b!4028129 (not res!1639443)) b!4028130))

(assert (= (and b!4028130 (not res!1639444)) b!4028140))

(assert (= (or b!4028134 b!4028129 b!4028136) bm!286821))

(assert (=> b!4028140 m!4619093))

(assert (=> b!4028140 m!4619537))

(assert (=> d!1193298 m!4619093))

(assert (=> d!1193298 m!4619223))

(assert (=> d!1193298 m!4619225))

(declare-fun m!4619899 () Bool)

(assert (=> d!1193298 m!4619899))

(assert (=> b!4028142 m!4619093))

(assert (=> b!4028142 m!4619527))

(assert (=> b!4028142 m!4619527))

(declare-fun m!4619901 () Bool)

(assert (=> b!4028142 m!4619901))

(assert (=> b!4028141 m!4619093))

(assert (=> b!4028141 m!4619537))

(assert (=> b!4028141 m!4619225))

(assert (=> b!4028141 m!4619537))

(declare-fun m!4619903 () Bool)

(assert (=> b!4028141 m!4619903))

(assert (=> b!4028141 m!4619093))

(assert (=> b!4028141 m!4619527))

(assert (=> b!4028141 m!4619903))

(assert (=> b!4028141 m!4619527))

(declare-fun m!4619905 () Bool)

(assert (=> b!4028141 m!4619905))

(assert (=> bm!286821 m!4619093))

(assert (=> bm!286821 m!4619223))

(assert (=> b!4028137 m!4619093))

(assert (=> b!4028137 m!4619537))

(assert (=> b!4028130 m!4619093))

(assert (=> b!4028130 m!4619527))

(assert (=> b!4028130 m!4619527))

(assert (=> b!4028130 m!4619901))

(assert (=> b!4028139 m!4619225))

(declare-fun m!4619907 () Bool)

(assert (=> b!4028139 m!4619907))

(assert (=> b!4027671 d!1193298))

(declare-fun b!4028163 () Bool)

(declare-fun e!2498976 () Regex!11791)

(declare-fun e!2498978 () Regex!11791)

(assert (=> b!4028163 (= e!2498976 e!2498978)))

(declare-fun c!695987 () Bool)

(assert (=> b!4028163 (= c!695987 ((_ is Star!11791) (regex!6886 (rule!9944 token!484))))))

(declare-fun b!4028164 () Bool)

(declare-fun e!2498977 () Regex!11791)

(assert (=> b!4028164 (= e!2498977 (ite (= (head!8539 lt!1430705) (c!695781 (regex!6886 (rule!9944 token!484)))) EmptyExpr!11791 EmptyLang!11791))))

(declare-fun bm!286830 () Bool)

(declare-fun call!286838 () Regex!11791)

(declare-fun call!286835 () Regex!11791)

(assert (=> bm!286830 (= call!286838 call!286835)))

(declare-fun c!695986 () Bool)

(declare-fun call!286837 () Regex!11791)

(declare-fun bm!286831 () Bool)

(assert (=> bm!286831 (= call!286837 (derivativeStep!3541 (ite c!695986 (regTwo!24095 (regex!6886 (rule!9944 token!484))) (ite c!695987 (reg!12120 (regex!6886 (rule!9944 token!484))) (regOne!24094 (regex!6886 (rule!9944 token!484))))) (head!8539 lt!1430705)))))

(declare-fun b!4028165 () Bool)

(declare-fun call!286836 () Regex!11791)

(assert (=> b!4028165 (= e!2498976 (Union!11791 call!286836 call!286837))))

(declare-fun b!4028166 () Bool)

(declare-fun e!2498974 () Regex!11791)

(assert (=> b!4028166 (= e!2498974 (Union!11791 (Concat!18908 call!286838 (regTwo!24094 (regex!6886 (rule!9944 token!484)))) call!286836))))

(declare-fun bm!286832 () Bool)

(assert (=> bm!286832 (= call!286835 call!286837)))

(declare-fun d!1193300 () Bool)

(declare-fun lt!1430960 () Regex!11791)

(assert (=> d!1193300 (validRegex!5336 lt!1430960)))

(declare-fun e!2498975 () Regex!11791)

(assert (=> d!1193300 (= lt!1430960 e!2498975)))

(declare-fun c!695985 () Bool)

(assert (=> d!1193300 (= c!695985 (or ((_ is EmptyExpr!11791) (regex!6886 (rule!9944 token!484))) ((_ is EmptyLang!11791) (regex!6886 (rule!9944 token!484)))))))

(assert (=> d!1193300 (validRegex!5336 (regex!6886 (rule!9944 token!484)))))

(assert (=> d!1193300 (= (derivativeStep!3541 (regex!6886 (rule!9944 token!484)) (head!8539 lt!1430705)) lt!1430960)))

(declare-fun b!4028167 () Bool)

(assert (=> b!4028167 (= e!2498975 EmptyLang!11791)))

(declare-fun b!4028168 () Bool)

(assert (=> b!4028168 (= c!695986 ((_ is Union!11791) (regex!6886 (rule!9944 token!484))))))

(assert (=> b!4028168 (= e!2498977 e!2498976)))

(declare-fun b!4028169 () Bool)

(assert (=> b!4028169 (= e!2498978 (Concat!18908 call!286835 (regex!6886 (rule!9944 token!484))))))

(declare-fun b!4028170 () Bool)

(declare-fun c!695988 () Bool)

(assert (=> b!4028170 (= c!695988 (nullable!4136 (regOne!24094 (regex!6886 (rule!9944 token!484)))))))

(assert (=> b!4028170 (= e!2498978 e!2498974)))

(declare-fun b!4028171 () Bool)

(assert (=> b!4028171 (= e!2498975 e!2498977)))

(declare-fun c!695984 () Bool)

(assert (=> b!4028171 (= c!695984 ((_ is ElementMatch!11791) (regex!6886 (rule!9944 token!484))))))

(declare-fun bm!286833 () Bool)

(assert (=> bm!286833 (= call!286836 (derivativeStep!3541 (ite c!695986 (regOne!24095 (regex!6886 (rule!9944 token!484))) (regTwo!24094 (regex!6886 (rule!9944 token!484)))) (head!8539 lt!1430705)))))

(declare-fun b!4028172 () Bool)

(assert (=> b!4028172 (= e!2498974 (Union!11791 (Concat!18908 call!286838 (regTwo!24094 (regex!6886 (rule!9944 token!484)))) EmptyLang!11791))))

(assert (= (and d!1193300 c!695985) b!4028167))

(assert (= (and d!1193300 (not c!695985)) b!4028171))

(assert (= (and b!4028171 c!695984) b!4028164))

(assert (= (and b!4028171 (not c!695984)) b!4028168))

(assert (= (and b!4028168 c!695986) b!4028165))

(assert (= (and b!4028168 (not c!695986)) b!4028163))

(assert (= (and b!4028163 c!695987) b!4028169))

(assert (= (and b!4028163 (not c!695987)) b!4028170))

(assert (= (and b!4028170 c!695988) b!4028166))

(assert (= (and b!4028170 (not c!695988)) b!4028172))

(assert (= (or b!4028166 b!4028172) bm!286830))

(assert (= (or b!4028169 bm!286830) bm!286832))

(assert (= (or b!4028165 b!4028166) bm!286833))

(assert (= (or b!4028165 bm!286832) bm!286831))

(assert (=> bm!286831 m!4619101))

(declare-fun m!4619909 () Bool)

(assert (=> bm!286831 m!4619909))

(declare-fun m!4619911 () Bool)

(assert (=> d!1193300 m!4619911))

(assert (=> d!1193300 m!4619039))

(declare-fun m!4619913 () Bool)

(assert (=> b!4028170 m!4619913))

(assert (=> bm!286833 m!4619101))

(declare-fun m!4619915 () Bool)

(assert (=> bm!286833 m!4619915))

(assert (=> b!4027671 d!1193300))

(assert (=> b!4027671 d!1192968))

(assert (=> b!4027671 d!1193100))

(declare-fun d!1193302 () Bool)

(declare-fun e!2498980 () Bool)

(assert (=> d!1193302 e!2498980))

(declare-fun res!1639451 () Bool)

(assert (=> d!1193302 (=> res!1639451 e!2498980)))

(declare-fun lt!1430961 () Bool)

(assert (=> d!1193302 (= res!1639451 (not lt!1430961))))

(declare-fun e!2498979 () Bool)

(assert (=> d!1193302 (= lt!1430961 e!2498979)))

(declare-fun res!1639449 () Bool)

(assert (=> d!1193302 (=> res!1639449 e!2498979)))

(assert (=> d!1193302 (= res!1639449 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1193302 (= (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 suffixResult!105)) lt!1430961)))

(declare-fun b!4028173 () Bool)

(declare-fun e!2498981 () Bool)

(assert (=> b!4028173 (= e!2498979 e!2498981)))

(declare-fun res!1639450 () Bool)

(assert (=> b!4028173 (=> (not res!1639450) (not e!2498981))))

(assert (=> b!4028173 (= res!1639450 (not ((_ is Nil!43119) (++!11288 lt!1430705 suffixResult!105))))))

(declare-fun b!4028175 () Bool)

(assert (=> b!4028175 (= e!2498981 (isPrefix!3973 (tail!6271 lt!1430705) (tail!6271 (++!11288 lt!1430705 suffixResult!105))))))

(declare-fun b!4028176 () Bool)

(assert (=> b!4028176 (= e!2498980 (>= (size!32232 (++!11288 lt!1430705 suffixResult!105)) (size!32232 lt!1430705)))))

(declare-fun b!4028174 () Bool)

(declare-fun res!1639448 () Bool)

(assert (=> b!4028174 (=> (not res!1639448) (not e!2498981))))

(assert (=> b!4028174 (= res!1639448 (= (head!8539 lt!1430705) (head!8539 (++!11288 lt!1430705 suffixResult!105))))))

(assert (= (and d!1193302 (not res!1639449)) b!4028173))

(assert (= (and b!4028173 res!1639450) b!4028174))

(assert (= (and b!4028174 res!1639448) b!4028175))

(assert (= (and d!1193302 (not res!1639451)) b!4028176))

(assert (=> b!4028175 m!4619093))

(assert (=> b!4028175 m!4618725))

(declare-fun m!4619917 () Bool)

(assert (=> b!4028175 m!4619917))

(assert (=> b!4028175 m!4619093))

(assert (=> b!4028175 m!4619917))

(declare-fun m!4619919 () Bool)

(assert (=> b!4028175 m!4619919))

(assert (=> b!4028176 m!4618725))

(declare-fun m!4619921 () Bool)

(assert (=> b!4028176 m!4619921))

(assert (=> b!4028176 m!4618709))

(assert (=> b!4028174 m!4619101))

(assert (=> b!4028174 m!4618725))

(declare-fun m!4619923 () Bool)

(assert (=> b!4028174 m!4619923))

(assert (=> d!1192940 d!1193302))

(assert (=> d!1192940 d!1192856))

(declare-fun d!1193304 () Bool)

(assert (=> d!1193304 (isPrefix!3973 lt!1430705 (++!11288 lt!1430705 suffixResult!105))))

(assert (=> d!1193304 true))

(declare-fun _$46!1709 () Unit!62282)

(assert (=> d!1193304 (= (choose!24367 lt!1430705 suffixResult!105) _$46!1709)))

(declare-fun bs!590167 () Bool)

(assert (= bs!590167 d!1193304))

(assert (=> bs!590167 m!4618725))

(assert (=> bs!590167 m!4618725))

(assert (=> bs!590167 m!4619229))

(assert (=> d!1192940 d!1193304))

(declare-fun d!1193306 () Bool)

(declare-fun lt!1430962 () Int)

(assert (=> d!1193306 (>= lt!1430962 0)))

(declare-fun e!2498982 () Int)

(assert (=> d!1193306 (= lt!1430962 e!2498982)))

(declare-fun c!695989 () Bool)

(assert (=> d!1193306 (= c!695989 ((_ is Nil!43119) lt!1430849))))

(assert (=> d!1193306 (= (size!32232 lt!1430849) lt!1430962)))

(declare-fun b!4028177 () Bool)

(assert (=> b!4028177 (= e!2498982 0)))

(declare-fun b!4028178 () Bool)

(assert (=> b!4028178 (= e!2498982 (+ 1 (size!32232 (t!334002 lt!1430849))))))

(assert (= (and d!1193306 c!695989) b!4028177))

(assert (= (and d!1193306 (not c!695989)) b!4028178))

(declare-fun m!4619925 () Bool)

(assert (=> b!4028178 m!4619925))

(assert (=> b!4027609 d!1193306))

(assert (=> b!4027609 d!1192836))

(assert (=> b!4027609 d!1192854))

(declare-fun d!1193308 () Bool)

(declare-fun e!2498984 () Bool)

(assert (=> d!1193308 e!2498984))

(declare-fun res!1639452 () Bool)

(assert (=> d!1193308 (=> (not res!1639452) (not e!2498984))))

(declare-fun lt!1430963 () List!43243)

(assert (=> d!1193308 (= res!1639452 (= (content!6550 lt!1430963) ((_ map or) (content!6550 (t!334002 lt!1430705)) (content!6550 lt!1430721))))))

(declare-fun e!2498983 () List!43243)

(assert (=> d!1193308 (= lt!1430963 e!2498983)))

(declare-fun c!695990 () Bool)

(assert (=> d!1193308 (= c!695990 ((_ is Nil!43119) (t!334002 lt!1430705)))))

(assert (=> d!1193308 (= (++!11288 (t!334002 lt!1430705) lt!1430721) lt!1430963)))

(declare-fun b!4028182 () Bool)

(assert (=> b!4028182 (= e!2498984 (or (not (= lt!1430721 Nil!43119)) (= lt!1430963 (t!334002 lt!1430705))))))

(declare-fun b!4028181 () Bool)

(declare-fun res!1639453 () Bool)

(assert (=> b!4028181 (=> (not res!1639453) (not e!2498984))))

(assert (=> b!4028181 (= res!1639453 (= (size!32232 lt!1430963) (+ (size!32232 (t!334002 lt!1430705)) (size!32232 lt!1430721))))))

(declare-fun b!4028179 () Bool)

(assert (=> b!4028179 (= e!2498983 lt!1430721)))

(declare-fun b!4028180 () Bool)

(assert (=> b!4028180 (= e!2498983 (Cons!43119 (h!48539 (t!334002 lt!1430705)) (++!11288 (t!334002 (t!334002 lt!1430705)) lt!1430721)))))

(assert (= (and d!1193308 c!695990) b!4028179))

(assert (= (and d!1193308 (not c!695990)) b!4028180))

(assert (= (and d!1193308 res!1639452) b!4028181))

(assert (= (and b!4028181 res!1639453) b!4028182))

(declare-fun m!4619927 () Bool)

(assert (=> d!1193308 m!4619927))

(assert (=> d!1193308 m!4619411))

(assert (=> d!1193308 m!4619111))

(declare-fun m!4619929 () Bool)

(assert (=> b!4028181 m!4619929))

(assert (=> b!4028181 m!4618929))

(assert (=> b!4028181 m!4619115))

(declare-fun m!4619931 () Bool)

(assert (=> b!4028180 m!4619931))

(assert (=> b!4027539 d!1193308))

(declare-fun b!4028335 () Bool)

(declare-fun res!1639518 () Bool)

(declare-fun e!2499062 () Bool)

(assert (=> b!4028335 (=> (not res!1639518) (not e!2499062))))

(declare-fun lt!1431012 () Option!9300)

(assert (=> b!4028335 (= res!1639518 (= (rule!9944 (_1!24245 (get!14156 lt!1431012))) (h!48541 rules!2999)))))

(declare-fun b!4028336 () Bool)

(declare-fun res!1639521 () Bool)

(assert (=> b!4028336 (=> (not res!1639521) (not e!2499062))))

(assert (=> b!4028336 (= res!1639521 (< (size!32232 (_2!24245 (get!14156 lt!1431012))) (size!32232 lt!1430712)))))

(declare-fun b!4028337 () Bool)

(declare-fun res!1639520 () Bool)

(assert (=> b!4028337 (=> (not res!1639520) (not e!2499062))))

(assert (=> b!4028337 (= res!1639520 (= (value!216885 (_1!24245 (get!14156 lt!1431012))) (apply!10075 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1431012)))) (seqFromList!5103 (originalCharacters!7486 (_1!24245 (get!14156 lt!1431012)))))))))

(declare-fun d!1193310 () Bool)

(declare-fun e!2499063 () Bool)

(assert (=> d!1193310 e!2499063))

(declare-fun res!1639519 () Bool)

(assert (=> d!1193310 (=> res!1639519 e!2499063)))

(assert (=> d!1193310 (= res!1639519 (isEmpty!25746 lt!1431012))))

(declare-fun e!2499061 () Option!9300)

(assert (=> d!1193310 (= lt!1431012 e!2499061)))

(declare-fun c!696036 () Bool)

(declare-datatypes ((tuple2!42226 0))(
  ( (tuple2!42227 (_1!24247 List!43243) (_2!24247 List!43243)) )
))
(declare-fun lt!1431010 () tuple2!42226)

(assert (=> d!1193310 (= c!696036 (isEmpty!25744 (_1!24247 lt!1431010)))))

(declare-fun findLongestMatch!1286 (Regex!11791 List!43243) tuple2!42226)

(assert (=> d!1193310 (= lt!1431010 (findLongestMatch!1286 (regex!6886 (h!48541 rules!2999)) lt!1430712))))

(assert (=> d!1193310 (ruleValid!2816 thiss!21717 (h!48541 rules!2999))))

(assert (=> d!1193310 (= (maxPrefixOneRule!2784 thiss!21717 (h!48541 rules!2999) lt!1430712) lt!1431012)))

(declare-fun b!4028338 () Bool)

(assert (=> b!4028338 (= e!2499061 None!9299)))

(declare-fun b!4028339 () Bool)

(declare-fun e!2499064 () Bool)

(declare-fun findLongestMatchInner!1373 (Regex!11791 List!43243 Int List!43243 List!43243 Int) tuple2!42226)

(assert (=> b!4028339 (= e!2499064 (matchR!5744 (regex!6886 (h!48541 rules!2999)) (_1!24247 (findLongestMatchInner!1373 (regex!6886 (h!48541 rules!2999)) Nil!43119 (size!32232 Nil!43119) lt!1430712 lt!1430712 (size!32232 lt!1430712)))))))

(declare-fun b!4028340 () Bool)

(declare-fun size!32234 (BalanceConc!25788) Int)

(assert (=> b!4028340 (= e!2499061 (Some!9299 (tuple2!42223 (Token!12911 (apply!10075 (transformation!6886 (h!48541 rules!2999)) (seqFromList!5103 (_1!24247 lt!1431010))) (h!48541 rules!2999) (size!32234 (seqFromList!5103 (_1!24247 lt!1431010))) (_1!24247 lt!1431010)) (_2!24247 lt!1431010))))))

(declare-fun lt!1431013 () Unit!62282)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1346 (Regex!11791 List!43243) Unit!62282)

(assert (=> b!4028340 (= lt!1431013 (longestMatchIsAcceptedByMatchOrIsEmpty!1346 (regex!6886 (h!48541 rules!2999)) lt!1430712))))

(declare-fun res!1639517 () Bool)

(assert (=> b!4028340 (= res!1639517 (isEmpty!25744 (_1!24247 (findLongestMatchInner!1373 (regex!6886 (h!48541 rules!2999)) Nil!43119 (size!32232 Nil!43119) lt!1430712 lt!1430712 (size!32232 lt!1430712)))))))

(assert (=> b!4028340 (=> res!1639517 e!2499064)))

(assert (=> b!4028340 e!2499064))

(declare-fun lt!1431011 () Unit!62282)

(assert (=> b!4028340 (= lt!1431011 lt!1431013)))

(declare-fun lt!1431009 () Unit!62282)

(assert (=> b!4028340 (= lt!1431009 (lemmaSemiInverse!1893 (transformation!6886 (h!48541 rules!2999)) (seqFromList!5103 (_1!24247 lt!1431010))))))

(declare-fun b!4028341 () Bool)

(assert (=> b!4028341 (= e!2499063 e!2499062)))

(declare-fun res!1639516 () Bool)

(assert (=> b!4028341 (=> (not res!1639516) (not e!2499062))))

(assert (=> b!4028341 (= res!1639516 (matchR!5744 (regex!6886 (h!48541 rules!2999)) (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1431012))))))))

(declare-fun b!4028342 () Bool)

(assert (=> b!4028342 (= e!2499062 (= (size!32231 (_1!24245 (get!14156 lt!1431012))) (size!32232 (originalCharacters!7486 (_1!24245 (get!14156 lt!1431012))))))))

(declare-fun b!4028343 () Bool)

(declare-fun res!1639522 () Bool)

(assert (=> b!4028343 (=> (not res!1639522) (not e!2499062))))

(assert (=> b!4028343 (= res!1639522 (= (++!11288 (list!16040 (charsOf!4702 (_1!24245 (get!14156 lt!1431012)))) (_2!24245 (get!14156 lt!1431012))) lt!1430712))))

(assert (= (and d!1193310 c!696036) b!4028338))

(assert (= (and d!1193310 (not c!696036)) b!4028340))

(assert (= (and b!4028340 (not res!1639517)) b!4028339))

(assert (= (and d!1193310 (not res!1639519)) b!4028341))

(assert (= (and b!4028341 res!1639516) b!4028343))

(assert (= (and b!4028343 res!1639522) b!4028336))

(assert (= (and b!4028336 res!1639521) b!4028335))

(assert (= (and b!4028335 res!1639518) b!4028337))

(assert (= (and b!4028337 res!1639520) b!4028342))

(declare-fun m!4620091 () Bool)

(assert (=> b!4028337 m!4620091))

(declare-fun m!4620095 () Bool)

(assert (=> b!4028337 m!4620095))

(assert (=> b!4028337 m!4620095))

(declare-fun m!4620099 () Bool)

(assert (=> b!4028337 m!4620099))

(assert (=> b!4028343 m!4620091))

(declare-fun m!4620101 () Bool)

(assert (=> b!4028343 m!4620101))

(assert (=> b!4028343 m!4620101))

(declare-fun m!4620103 () Bool)

(assert (=> b!4028343 m!4620103))

(assert (=> b!4028343 m!4620103))

(declare-fun m!4620109 () Bool)

(assert (=> b!4028343 m!4620109))

(assert (=> b!4028342 m!4620091))

(declare-fun m!4620111 () Bool)

(assert (=> b!4028342 m!4620111))

(assert (=> b!4028336 m!4620091))

(declare-fun m!4620113 () Bool)

(assert (=> b!4028336 m!4620113))

(assert (=> b!4028336 m!4618865))

(declare-fun m!4620115 () Bool)

(assert (=> b!4028340 m!4620115))

(declare-fun m!4620117 () Bool)

(assert (=> b!4028340 m!4620117))

(declare-fun m!4620119 () Bool)

(assert (=> b!4028340 m!4620119))

(declare-fun m!4620121 () Bool)

(assert (=> b!4028340 m!4620121))

(assert (=> b!4028340 m!4620119))

(assert (=> b!4028340 m!4618865))

(declare-fun m!4620123 () Bool)

(assert (=> b!4028340 m!4620123))

(assert (=> b!4028340 m!4618865))

(declare-fun m!4620125 () Bool)

(assert (=> b!4028340 m!4620125))

(assert (=> b!4028340 m!4620119))

(declare-fun m!4620127 () Bool)

(assert (=> b!4028340 m!4620127))

(assert (=> b!4028340 m!4620119))

(declare-fun m!4620129 () Bool)

(assert (=> b!4028340 m!4620129))

(assert (=> b!4028340 m!4620123))

(assert (=> b!4028341 m!4620091))

(assert (=> b!4028341 m!4620101))

(assert (=> b!4028341 m!4620101))

(assert (=> b!4028341 m!4620103))

(assert (=> b!4028341 m!4620103))

(declare-fun m!4620131 () Bool)

(assert (=> b!4028341 m!4620131))

(assert (=> b!4028339 m!4620123))

(assert (=> b!4028339 m!4618865))

(assert (=> b!4028339 m!4620123))

(assert (=> b!4028339 m!4618865))

(assert (=> b!4028339 m!4620125))

(declare-fun m!4620133 () Bool)

(assert (=> b!4028339 m!4620133))

(declare-fun m!4620135 () Bool)

(assert (=> d!1193310 m!4620135))

(declare-fun m!4620137 () Bool)

(assert (=> d!1193310 m!4620137))

(declare-fun m!4620139 () Bool)

(assert (=> d!1193310 m!4620139))

(assert (=> d!1193310 m!4619315))

(assert (=> b!4028335 m!4620091))

(assert (=> bm!286801 d!1193310))

(assert (=> b!4027622 d!1192968))

(assert (=> b!4027622 d!1193266))

(declare-fun d!1193378 () Bool)

(assert (=> d!1193378 (= lt!1430721 suffixResult!105)))

(assert (=> d!1193378 true))

(declare-fun _$63!1077 () Unit!62282)

(assert (=> d!1193378 (= (choose!24366 lt!1430705 lt!1430721 lt!1430705 suffixResult!105 lt!1430712) _$63!1077)))

(assert (=> d!1192896 d!1193378))

(assert (=> d!1192896 d!1192946))

(declare-fun d!1193382 () Bool)

(declare-fun charsToBigInt!1 (List!43244) Int)

(assert (=> d!1193382 (= (inv!17 (value!216885 token!484)) (= (charsToBigInt!1 (text!50260 (value!216885 token!484))) (value!216877 (value!216885 token!484))))))

(declare-fun bs!590178 () Bool)

(assert (= bs!590178 d!1193382))

(declare-fun m!4620147 () Bool)

(assert (=> bs!590178 m!4620147))

(assert (=> b!4027443 d!1193382))

(declare-fun d!1193384 () Bool)

(declare-fun lt!1431020 () Int)

(assert (=> d!1193384 (>= lt!1431020 0)))

(declare-fun e!2499070 () Int)

(assert (=> d!1193384 (= lt!1431020 e!2499070)))

(declare-fun c!696041 () Bool)

(assert (=> d!1193384 (= c!696041 ((_ is Nil!43119) (originalCharacters!7486 token!484)))))

(assert (=> d!1193384 (= (size!32232 (originalCharacters!7486 token!484)) lt!1431020)))

(declare-fun b!4028353 () Bool)

(assert (=> b!4028353 (= e!2499070 0)))

(declare-fun b!4028354 () Bool)

(assert (=> b!4028354 (= e!2499070 (+ 1 (size!32232 (t!334002 (originalCharacters!7486 token!484)))))))

(assert (= (and d!1193384 c!696041) b!4028353))

(assert (= (and d!1193384 (not c!696041)) b!4028354))

(declare-fun m!4620149 () Bool)

(assert (=> b!4028354 m!4620149))

(assert (=> b!4027630 d!1193384))

(declare-fun d!1193386 () Bool)

(assert (=> d!1193386 (= (head!8539 newSuffix!27) (h!48539 newSuffix!27))))

(assert (=> b!4027424 d!1193386))

(declare-fun d!1193388 () Bool)

(assert (=> d!1193388 (= (head!8539 suffix!1299) (h!48539 suffix!1299))))

(assert (=> b!4027424 d!1193388))

(declare-fun d!1193390 () Bool)

(declare-fun e!2499072 () Bool)

(assert (=> d!1193390 e!2499072))

(declare-fun res!1639524 () Bool)

(assert (=> d!1193390 (=> (not res!1639524) (not e!2499072))))

(declare-fun lt!1431021 () List!43243)

(assert (=> d!1193390 (= res!1639524 (= (content!6550 lt!1431021) ((_ map or) (content!6550 lt!1430705) (content!6550 lt!1430853))))))

(declare-fun e!2499071 () List!43243)

(assert (=> d!1193390 (= lt!1431021 e!2499071)))

(declare-fun c!696042 () Bool)

(assert (=> d!1193390 (= c!696042 ((_ is Nil!43119) lt!1430705))))

(assert (=> d!1193390 (= (++!11288 lt!1430705 lt!1430853) lt!1431021)))

(declare-fun b!4028358 () Bool)

(assert (=> b!4028358 (= e!2499072 (or (not (= lt!1430853 Nil!43119)) (= lt!1431021 lt!1430705)))))

(declare-fun b!4028357 () Bool)

(declare-fun res!1639525 () Bool)

(assert (=> b!4028357 (=> (not res!1639525) (not e!2499072))))

(assert (=> b!4028357 (= res!1639525 (= (size!32232 lt!1431021) (+ (size!32232 lt!1430705) (size!32232 lt!1430853))))))

(declare-fun b!4028355 () Bool)

(assert (=> b!4028355 (= e!2499071 lt!1430853)))

(declare-fun b!4028356 () Bool)

(assert (=> b!4028356 (= e!2499071 (Cons!43119 (h!48539 lt!1430705) (++!11288 (t!334002 lt!1430705) lt!1430853)))))

(assert (= (and d!1193390 c!696042) b!4028355))

(assert (= (and d!1193390 (not c!696042)) b!4028356))

(assert (= (and d!1193390 res!1639524) b!4028357))

(assert (= (and b!4028357 res!1639525) b!4028358))

(declare-fun m!4620153 () Bool)

(assert (=> d!1193390 m!4620153))

(assert (=> d!1193390 m!4618987))

(declare-fun m!4620155 () Bool)

(assert (=> d!1193390 m!4620155))

(declare-fun m!4620157 () Bool)

(assert (=> b!4028357 m!4620157))

(assert (=> b!4028357 m!4618709))

(declare-fun m!4620159 () Bool)

(assert (=> b!4028357 m!4620159))

(declare-fun m!4620161 () Bool)

(assert (=> b!4028356 m!4620161))

(assert (=> d!1192924 d!1193390))

(assert (=> d!1192924 d!1192836))

(assert (=> d!1192924 d!1192828))

(declare-fun bs!590180 () Bool)

(declare-fun d!1193394 () Bool)

(assert (= bs!590180 (and d!1193394 d!1193238)))

(declare-fun lambda!127220 () Int)

(assert (=> bs!590180 (= (= (toValue!9406 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) (= lambda!127220 lambda!127213))))

(assert (=> d!1193394 true))

(assert (=> d!1193394 (< (dynLambda!18284 order!22565 (toValue!9406 (transformation!6886 (h!48541 rules!2999)))) (dynLambda!18293 order!22573 lambda!127220))))

(assert (=> d!1193394 (= (equivClasses!2843 (toChars!9265 (transformation!6886 (h!48541 rules!2999))) (toValue!9406 (transformation!6886 (h!48541 rules!2999)))) (Forall2!1081 lambda!127220))))

(declare-fun bs!590181 () Bool)

(assert (= bs!590181 d!1193394))

(declare-fun m!4620167 () Bool)

(assert (=> bs!590181 m!4620167))

(assert (=> b!4027520 d!1193394))

(declare-fun d!1193398 () Bool)

(assert (=> d!1193398 (= (isDefined!7089 lt!1430752) (not (isEmpty!25746 lt!1430752)))))

(declare-fun bs!590183 () Bool)

(assert (= bs!590183 d!1193398))

(assert (=> bs!590183 m!4618839))

(assert (=> b!4027329 d!1193398))

(assert (=> b!4027681 d!1193104))

(assert (=> b!4027681 d!1192828))

(declare-fun b!4028365 () Bool)

(declare-fun e!2499078 () Bool)

(assert (=> b!4028365 (= e!2499078 tp_is_empty!20553)))

(declare-fun b!4028366 () Bool)

(declare-fun tp!1224069 () Bool)

(declare-fun tp!1224067 () Bool)

(assert (=> b!4028366 (= e!2499078 (and tp!1224069 tp!1224067))))

(declare-fun b!4028367 () Bool)

(declare-fun tp!1224068 () Bool)

(assert (=> b!4028367 (= e!2499078 tp!1224068)))

(assert (=> b!4027708 (= tp!1224046 e!2499078)))

(declare-fun b!4028368 () Bool)

(declare-fun tp!1224071 () Bool)

(declare-fun tp!1224070 () Bool)

(assert (=> b!4028368 (= e!2499078 (and tp!1224071 tp!1224070))))

(assert (= (and b!4027708 ((_ is ElementMatch!11791) (regOne!24095 (regex!6886 (rule!9944 token!484))))) b!4028365))

(assert (= (and b!4027708 ((_ is Concat!18908) (regOne!24095 (regex!6886 (rule!9944 token!484))))) b!4028366))

(assert (= (and b!4027708 ((_ is Star!11791) (regOne!24095 (regex!6886 (rule!9944 token!484))))) b!4028367))

(assert (= (and b!4027708 ((_ is Union!11791) (regOne!24095 (regex!6886 (rule!9944 token!484))))) b!4028368))

(declare-fun b!4028369 () Bool)

(declare-fun e!2499079 () Bool)

(assert (=> b!4028369 (= e!2499079 tp_is_empty!20553)))

(declare-fun b!4028370 () Bool)

(declare-fun tp!1224074 () Bool)

(declare-fun tp!1224072 () Bool)

(assert (=> b!4028370 (= e!2499079 (and tp!1224074 tp!1224072))))

(declare-fun b!4028371 () Bool)

(declare-fun tp!1224073 () Bool)

(assert (=> b!4028371 (= e!2499079 tp!1224073)))

(assert (=> b!4027708 (= tp!1224045 e!2499079)))

(declare-fun b!4028372 () Bool)

(declare-fun tp!1224076 () Bool)

(declare-fun tp!1224075 () Bool)

(assert (=> b!4028372 (= e!2499079 (and tp!1224076 tp!1224075))))

(assert (= (and b!4027708 ((_ is ElementMatch!11791) (regTwo!24095 (regex!6886 (rule!9944 token!484))))) b!4028369))

(assert (= (and b!4027708 ((_ is Concat!18908) (regTwo!24095 (regex!6886 (rule!9944 token!484))))) b!4028370))

(assert (= (and b!4027708 ((_ is Star!11791) (regTwo!24095 (regex!6886 (rule!9944 token!484))))) b!4028371))

(assert (= (and b!4027708 ((_ is Union!11791) (regTwo!24095 (regex!6886 (rule!9944 token!484))))) b!4028372))

(declare-fun b!4028373 () Bool)

(declare-fun e!2499080 () Bool)

(declare-fun tp!1224077 () Bool)

(assert (=> b!4028373 (= e!2499080 (and tp_is_empty!20553 tp!1224077))))

(assert (=> b!4027692 (= tp!1224029 e!2499080)))

(assert (= (and b!4027692 ((_ is Cons!43119) (t!334002 (t!334002 suffixResult!105)))) b!4028373))

(declare-fun b!4028374 () Bool)

(declare-fun e!2499081 () Bool)

(declare-fun tp!1224078 () Bool)

(assert (=> b!4028374 (= e!2499081 (and tp_is_empty!20553 tp!1224078))))

(assert (=> b!4027724 (= tp!1224064 e!2499081)))

(assert (= (and b!4027724 ((_ is Cons!43119) (t!334002 (t!334002 newSuffixResult!27)))) b!4028374))

(declare-fun e!2499100 () Bool)

(declare-fun tp!1224086 () Bool)

(declare-fun tp!1224085 () Bool)

(declare-fun b!4028401 () Bool)

(assert (=> b!4028401 (= e!2499100 (and (inv!57609 (left!32490 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))) tp!1224085 (inv!57609 (right!32820 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))) tp!1224086))))

(declare-fun b!4028403 () Bool)

(declare-fun e!2499101 () Bool)

(declare-fun tp!1224087 () Bool)

(assert (=> b!4028403 (= e!2499101 tp!1224087)))

(declare-fun b!4028402 () Bool)

(declare-fun inv!57616 (IArray!26199) Bool)

(assert (=> b!4028402 (= e!2499100 (and (inv!57616 (xs!16403 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))) e!2499101))))

(assert (=> b!4027414 (= tp!1223982 (and (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484)))) e!2499100))))

(assert (= (and b!4027414 ((_ is Node!13097) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))) b!4028401))

(assert (= b!4028402 b!4028403))

(assert (= (and b!4027414 ((_ is Leaf!20247) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (value!216885 token!484))))) b!4028402))

(declare-fun m!4620177 () Bool)

(assert (=> b!4028401 m!4620177))

(declare-fun m!4620179 () Bool)

(assert (=> b!4028401 m!4620179))

(declare-fun m!4620181 () Bool)

(assert (=> b!4028402 m!4620181))

(assert (=> b!4027414 m!4618957))

(declare-fun b!4028404 () Bool)

(declare-fun e!2499102 () Bool)

(declare-fun tp!1224088 () Bool)

(assert (=> b!4028404 (= e!2499102 (and tp_is_empty!20553 tp!1224088))))

(assert (=> b!4027693 (= tp!1224030 e!2499102)))

(assert (= (and b!4027693 ((_ is Cons!43119) (t!334002 (originalCharacters!7486 token!484)))) b!4028404))

(declare-fun b!4028407 () Bool)

(declare-fun b_free!112153 () Bool)

(declare-fun b_next!112857 () Bool)

(assert (=> b!4028407 (= b_free!112153 (not b_next!112857))))

(declare-fun tb!242065 () Bool)

(declare-fun t!334070 () Bool)

(assert (=> (and b!4028407 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) (toValue!9406 (transformation!6886 (rule!9944 token!484)))) t!334070) tb!242065))

(declare-fun result!293424 () Bool)

(assert (= result!293424 result!293360))

(assert (=> d!1192910 t!334070))

(assert (=> d!1192912 t!334070))

(declare-fun tb!242067 () Bool)

(declare-fun t!334072 () Bool)

(assert (=> (and b!4028407 (= (toValue!9406 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) (toValue!9406 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334072) tb!242067))

(declare-fun result!293426 () Bool)

(assert (= result!293426 result!293416))

(assert (=> d!1193206 t!334072))

(declare-fun b_and!309511 () Bool)

(declare-fun tp!1224089 () Bool)

(assert (=> b!4028407 (= tp!1224089 (and (=> t!334070 result!293424) (=> t!334072 result!293426) b_and!309511))))

(declare-fun b_free!112155 () Bool)

(declare-fun b_next!112859 () Bool)

(assert (=> b!4028407 (= b_free!112155 (not b_next!112859))))

(declare-fun t!334074 () Bool)

(declare-fun tb!242069 () Bool)

(assert (=> (and b!4028407 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334074) tb!242069))

(declare-fun result!293428 () Bool)

(assert (= result!293428 result!293348))

(assert (=> d!1192846 t!334074))

(declare-fun t!334076 () Bool)

(declare-fun tb!242071 () Bool)

(assert (=> (and b!4028407 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) (toChars!9265 (transformation!6886 (rule!9944 token!484)))) t!334076) tb!242071))

(declare-fun result!293430 () Bool)

(assert (= result!293430 result!293382))

(assert (=> d!1192912 t!334076))

(assert (=> b!4027629 t!334074))

(declare-fun t!334078 () Bool)

(declare-fun tb!242073 () Bool)

(assert (=> (and b!4028407 (= (toChars!9265 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) (toChars!9265 (transformation!6886 (rule!9944 (_1!24245 (get!14156 lt!1430752)))))) t!334078) tb!242073))

(declare-fun result!293432 () Bool)

(assert (= result!293432 result!293398))

(assert (=> d!1193056 t!334078))

(declare-fun tp!1224091 () Bool)

(declare-fun b_and!309513 () Bool)

(assert (=> b!4028407 (= tp!1224091 (and (=> t!334074 result!293428) (=> t!334076 result!293430) (=> t!334078 result!293432) b_and!309513))))

(declare-fun e!2499103 () Bool)

(assert (=> b!4028407 (= e!2499103 (and tp!1224089 tp!1224091))))

(declare-fun b!4028406 () Bool)

(declare-fun e!2499104 () Bool)

(declare-fun tp!1224090 () Bool)

(assert (=> b!4028406 (= e!2499104 (and tp!1224090 (inv!57602 (tag!7746 (h!48541 (t!334004 (t!334004 rules!2999))))) (inv!57606 (transformation!6886 (h!48541 (t!334004 (t!334004 rules!2999))))) e!2499103))))

(declare-fun b!4028405 () Bool)

(declare-fun e!2499106 () Bool)

(declare-fun tp!1224092 () Bool)

(assert (=> b!4028405 (= e!2499106 (and e!2499104 tp!1224092))))

(assert (=> b!4027721 (= tp!1224063 e!2499106)))

(assert (= b!4028406 b!4028407))

(assert (= b!4028405 b!4028406))

(assert (= (and b!4027721 ((_ is Cons!43121) (t!334004 (t!334004 rules!2999)))) b!4028405))

(declare-fun m!4620183 () Bool)

(assert (=> b!4028406 m!4620183))

(declare-fun m!4620185 () Bool)

(assert (=> b!4028406 m!4620185))

(declare-fun b!4028408 () Bool)

(declare-fun e!2499107 () Bool)

(assert (=> b!4028408 (= e!2499107 tp_is_empty!20553)))

(declare-fun b!4028409 () Bool)

(declare-fun tp!1224095 () Bool)

(declare-fun tp!1224093 () Bool)

(assert (=> b!4028409 (= e!2499107 (and tp!1224095 tp!1224093))))

(declare-fun b!4028410 () Bool)

(declare-fun tp!1224094 () Bool)

(assert (=> b!4028410 (= e!2499107 tp!1224094)))

(assert (=> b!4027722 (= tp!1224061 e!2499107)))

(declare-fun b!4028411 () Bool)

(declare-fun tp!1224097 () Bool)

(declare-fun tp!1224096 () Bool)

(assert (=> b!4028411 (= e!2499107 (and tp!1224097 tp!1224096))))

(assert (= (and b!4027722 ((_ is ElementMatch!11791) (regex!6886 (h!48541 (t!334004 rules!2999))))) b!4028408))

(assert (= (and b!4027722 ((_ is Concat!18908) (regex!6886 (h!48541 (t!334004 rules!2999))))) b!4028409))

(assert (= (and b!4027722 ((_ is Star!11791) (regex!6886 (h!48541 (t!334004 rules!2999))))) b!4028410))

(assert (= (and b!4027722 ((_ is Union!11791) (regex!6886 (h!48541 (t!334004 rules!2999))))) b!4028411))

(declare-fun b!4028412 () Bool)

(declare-fun e!2499108 () Bool)

(declare-fun tp!1224098 () Bool)

(assert (=> b!4028412 (= e!2499108 (and tp_is_empty!20553 tp!1224098))))

(assert (=> b!4027690 (= tp!1224027 e!2499108)))

(assert (= (and b!4027690 ((_ is Cons!43119) (t!334002 (t!334002 suffix!1299)))) b!4028412))

(declare-fun b!4028413 () Bool)

(declare-fun e!2499109 () Bool)

(declare-fun tp!1224099 () Bool)

(assert (=> b!4028413 (= e!2499109 (and tp_is_empty!20553 tp!1224099))))

(assert (=> b!4027694 (= tp!1224031 e!2499109)))

(assert (= (and b!4027694 ((_ is Cons!43119) (t!334002 (t!334002 newSuffix!27)))) b!4028413))

(declare-fun b!4028414 () Bool)

(declare-fun e!2499110 () Bool)

(declare-fun tp!1224100 () Bool)

(assert (=> b!4028414 (= e!2499110 (and tp_is_empty!20553 tp!1224100))))

(assert (=> b!4027691 (= tp!1224028 e!2499110)))

(assert (= (and b!4027691 ((_ is Cons!43119) (t!334002 (t!334002 prefix!494)))) b!4028414))

(declare-fun b!4028415 () Bool)

(declare-fun e!2499111 () Bool)

(assert (=> b!4028415 (= e!2499111 tp_is_empty!20553)))

(declare-fun b!4028416 () Bool)

(declare-fun tp!1224103 () Bool)

(declare-fun tp!1224101 () Bool)

(assert (=> b!4028416 (= e!2499111 (and tp!1224103 tp!1224101))))

(declare-fun b!4028417 () Bool)

(declare-fun tp!1224102 () Bool)

(assert (=> b!4028417 (= e!2499111 tp!1224102)))

(assert (=> b!4027710 (= tp!1224049 e!2499111)))

(declare-fun b!4028418 () Bool)

(declare-fun tp!1224105 () Bool)

(declare-fun tp!1224104 () Bool)

(assert (=> b!4028418 (= e!2499111 (and tp!1224105 tp!1224104))))

(assert (= (and b!4027710 ((_ is ElementMatch!11791) (regOne!24094 (regex!6886 (h!48541 rules!2999))))) b!4028415))

(assert (= (and b!4027710 ((_ is Concat!18908) (regOne!24094 (regex!6886 (h!48541 rules!2999))))) b!4028416))

(assert (= (and b!4027710 ((_ is Star!11791) (regOne!24094 (regex!6886 (h!48541 rules!2999))))) b!4028417))

(assert (= (and b!4027710 ((_ is Union!11791) (regOne!24094 (regex!6886 (h!48541 rules!2999))))) b!4028418))

(declare-fun b!4028419 () Bool)

(declare-fun e!2499112 () Bool)

(assert (=> b!4028419 (= e!2499112 tp_is_empty!20553)))

(declare-fun b!4028420 () Bool)

(declare-fun tp!1224108 () Bool)

(declare-fun tp!1224106 () Bool)

(assert (=> b!4028420 (= e!2499112 (and tp!1224108 tp!1224106))))

(declare-fun b!4028421 () Bool)

(declare-fun tp!1224107 () Bool)

(assert (=> b!4028421 (= e!2499112 tp!1224107)))

(assert (=> b!4027710 (= tp!1224047 e!2499112)))

(declare-fun b!4028422 () Bool)

(declare-fun tp!1224110 () Bool)

(declare-fun tp!1224109 () Bool)

(assert (=> b!4028422 (= e!2499112 (and tp!1224110 tp!1224109))))

(assert (= (and b!4027710 ((_ is ElementMatch!11791) (regTwo!24094 (regex!6886 (h!48541 rules!2999))))) b!4028419))

(assert (= (and b!4027710 ((_ is Concat!18908) (regTwo!24094 (regex!6886 (h!48541 rules!2999))))) b!4028420))

(assert (= (and b!4027710 ((_ is Star!11791) (regTwo!24094 (regex!6886 (h!48541 rules!2999))))) b!4028421))

(assert (= (and b!4027710 ((_ is Union!11791) (regTwo!24094 (regex!6886 (h!48541 rules!2999))))) b!4028422))

(declare-fun b!4028423 () Bool)

(declare-fun e!2499113 () Bool)

(assert (=> b!4028423 (= e!2499113 tp_is_empty!20553)))

(declare-fun b!4028424 () Bool)

(declare-fun tp!1224113 () Bool)

(declare-fun tp!1224111 () Bool)

(assert (=> b!4028424 (= e!2499113 (and tp!1224113 tp!1224111))))

(declare-fun b!4028425 () Bool)

(declare-fun tp!1224112 () Bool)

(assert (=> b!4028425 (= e!2499113 tp!1224112)))

(assert (=> b!4027711 (= tp!1224048 e!2499113)))

(declare-fun b!4028426 () Bool)

(declare-fun tp!1224115 () Bool)

(declare-fun tp!1224114 () Bool)

(assert (=> b!4028426 (= e!2499113 (and tp!1224115 tp!1224114))))

(assert (= (and b!4027711 ((_ is ElementMatch!11791) (reg!12120 (regex!6886 (h!48541 rules!2999))))) b!4028423))

(assert (= (and b!4027711 ((_ is Concat!18908) (reg!12120 (regex!6886 (h!48541 rules!2999))))) b!4028424))

(assert (= (and b!4027711 ((_ is Star!11791) (reg!12120 (regex!6886 (h!48541 rules!2999))))) b!4028425))

(assert (= (and b!4027711 ((_ is Union!11791) (reg!12120 (regex!6886 (h!48541 rules!2999))))) b!4028426))

(declare-fun e!2499114 () Bool)

(declare-fun tp!1224116 () Bool)

(declare-fun tp!1224117 () Bool)

(declare-fun b!4028427 () Bool)

(assert (=> b!4028427 (= e!2499114 (and (inv!57609 (left!32490 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))) tp!1224116 (inv!57609 (right!32820 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))) tp!1224117))))

(declare-fun b!4028429 () Bool)

(declare-fun e!2499115 () Bool)

(declare-fun tp!1224118 () Bool)

(assert (=> b!4028429 (= e!2499115 tp!1224118)))

(declare-fun b!4028428 () Bool)

(assert (=> b!4028428 (= e!2499114 (and (inv!57616 (xs!16403 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))) e!2499115))))

(assert (=> b!4027602 (= tp!1224024 (and (inv!57609 (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704)))) e!2499114))))

(assert (= (and b!4027602 ((_ is Node!13097) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))) b!4028427))

(assert (= b!4028428 b!4028429))

(assert (= (and b!4027602 ((_ is Leaf!20247) (c!695780 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))))) b!4028428))

(declare-fun m!4620187 () Bool)

(assert (=> b!4028427 m!4620187))

(declare-fun m!4620189 () Bool)

(assert (=> b!4028427 m!4620189))

(declare-fun m!4620191 () Bool)

(assert (=> b!4028428 m!4620191))

(assert (=> b!4027602 m!4619167))

(declare-fun b!4028430 () Bool)

(declare-fun e!2499121 () Bool)

(assert (=> b!4028430 (= e!2499121 tp_is_empty!20553)))

(declare-fun b!4028431 () Bool)

(declare-fun tp!1224121 () Bool)

(declare-fun tp!1224119 () Bool)

(assert (=> b!4028431 (= e!2499121 (and tp!1224121 tp!1224119))))

(declare-fun b!4028432 () Bool)

(declare-fun tp!1224120 () Bool)

(assert (=> b!4028432 (= e!2499121 tp!1224120)))

(assert (=> b!4027706 (= tp!1224044 e!2499121)))

(declare-fun b!4028434 () Bool)

(declare-fun tp!1224123 () Bool)

(declare-fun tp!1224122 () Bool)

(assert (=> b!4028434 (= e!2499121 (and tp!1224123 tp!1224122))))

(assert (= (and b!4027706 ((_ is ElementMatch!11791) (regOne!24094 (regex!6886 (rule!9944 token!484))))) b!4028430))

(assert (= (and b!4027706 ((_ is Concat!18908) (regOne!24094 (regex!6886 (rule!9944 token!484))))) b!4028431))

(assert (= (and b!4027706 ((_ is Star!11791) (regOne!24094 (regex!6886 (rule!9944 token!484))))) b!4028432))

(assert (= (and b!4027706 ((_ is Union!11791) (regOne!24094 (regex!6886 (rule!9944 token!484))))) b!4028434))

(declare-fun b!4028443 () Bool)

(declare-fun e!2499124 () Bool)

(assert (=> b!4028443 (= e!2499124 tp_is_empty!20553)))

(declare-fun b!4028444 () Bool)

(declare-fun tp!1224126 () Bool)

(declare-fun tp!1224124 () Bool)

(assert (=> b!4028444 (= e!2499124 (and tp!1224126 tp!1224124))))

(declare-fun b!4028445 () Bool)

(declare-fun tp!1224125 () Bool)

(assert (=> b!4028445 (= e!2499124 tp!1224125)))

(assert (=> b!4027706 (= tp!1224042 e!2499124)))

(declare-fun b!4028446 () Bool)

(declare-fun tp!1224128 () Bool)

(declare-fun tp!1224127 () Bool)

(assert (=> b!4028446 (= e!2499124 (and tp!1224128 tp!1224127))))

(assert (= (and b!4027706 ((_ is ElementMatch!11791) (regTwo!24094 (regex!6886 (rule!9944 token!484))))) b!4028443))

(assert (= (and b!4027706 ((_ is Concat!18908) (regTwo!24094 (regex!6886 (rule!9944 token!484))))) b!4028444))

(assert (= (and b!4027706 ((_ is Star!11791) (regTwo!24094 (regex!6886 (rule!9944 token!484))))) b!4028445))

(assert (= (and b!4027706 ((_ is Union!11791) (regTwo!24094 (regex!6886 (rule!9944 token!484))))) b!4028446))

(declare-fun b!4028447 () Bool)

(declare-fun e!2499125 () Bool)

(assert (=> b!4028447 (= e!2499125 tp_is_empty!20553)))

(declare-fun b!4028448 () Bool)

(declare-fun tp!1224131 () Bool)

(declare-fun tp!1224129 () Bool)

(assert (=> b!4028448 (= e!2499125 (and tp!1224131 tp!1224129))))

(declare-fun b!4028449 () Bool)

(declare-fun tp!1224130 () Bool)

(assert (=> b!4028449 (= e!2499125 tp!1224130)))

(assert (=> b!4027707 (= tp!1224043 e!2499125)))

(declare-fun b!4028450 () Bool)

(declare-fun tp!1224133 () Bool)

(declare-fun tp!1224132 () Bool)

(assert (=> b!4028450 (= e!2499125 (and tp!1224133 tp!1224132))))

(assert (= (and b!4027707 ((_ is ElementMatch!11791) (reg!12120 (regex!6886 (rule!9944 token!484))))) b!4028447))

(assert (= (and b!4027707 ((_ is Concat!18908) (reg!12120 (regex!6886 (rule!9944 token!484))))) b!4028448))

(assert (= (and b!4027707 ((_ is Star!11791) (reg!12120 (regex!6886 (rule!9944 token!484))))) b!4028449))

(assert (= (and b!4027707 ((_ is Union!11791) (reg!12120 (regex!6886 (rule!9944 token!484))))) b!4028450))

(declare-fun b!4028451 () Bool)

(declare-fun e!2499126 () Bool)

(assert (=> b!4028451 (= e!2499126 tp_is_empty!20553)))

(declare-fun b!4028452 () Bool)

(declare-fun tp!1224136 () Bool)

(declare-fun tp!1224134 () Bool)

(assert (=> b!4028452 (= e!2499126 (and tp!1224136 tp!1224134))))

(declare-fun b!4028453 () Bool)

(declare-fun tp!1224135 () Bool)

(assert (=> b!4028453 (= e!2499126 tp!1224135)))

(assert (=> b!4027712 (= tp!1224051 e!2499126)))

(declare-fun b!4028454 () Bool)

(declare-fun tp!1224138 () Bool)

(declare-fun tp!1224137 () Bool)

(assert (=> b!4028454 (= e!2499126 (and tp!1224138 tp!1224137))))

(assert (= (and b!4027712 ((_ is ElementMatch!11791) (regOne!24095 (regex!6886 (h!48541 rules!2999))))) b!4028451))

(assert (= (and b!4027712 ((_ is Concat!18908) (regOne!24095 (regex!6886 (h!48541 rules!2999))))) b!4028452))

(assert (= (and b!4027712 ((_ is Star!11791) (regOne!24095 (regex!6886 (h!48541 rules!2999))))) b!4028453))

(assert (= (and b!4027712 ((_ is Union!11791) (regOne!24095 (regex!6886 (h!48541 rules!2999))))) b!4028454))

(declare-fun b!4028455 () Bool)

(declare-fun e!2499127 () Bool)

(assert (=> b!4028455 (= e!2499127 tp_is_empty!20553)))

(declare-fun b!4028456 () Bool)

(declare-fun tp!1224141 () Bool)

(declare-fun tp!1224139 () Bool)

(assert (=> b!4028456 (= e!2499127 (and tp!1224141 tp!1224139))))

(declare-fun b!4028457 () Bool)

(declare-fun tp!1224140 () Bool)

(assert (=> b!4028457 (= e!2499127 tp!1224140)))

(assert (=> b!4027712 (= tp!1224050 e!2499127)))

(declare-fun b!4028458 () Bool)

(declare-fun tp!1224143 () Bool)

(declare-fun tp!1224142 () Bool)

(assert (=> b!4028458 (= e!2499127 (and tp!1224143 tp!1224142))))

(assert (= (and b!4027712 ((_ is ElementMatch!11791) (regTwo!24095 (regex!6886 (h!48541 rules!2999))))) b!4028455))

(assert (= (and b!4027712 ((_ is Concat!18908) (regTwo!24095 (regex!6886 (h!48541 rules!2999))))) b!4028456))

(assert (= (and b!4027712 ((_ is Star!11791) (regTwo!24095 (regex!6886 (h!48541 rules!2999))))) b!4028457))

(assert (= (and b!4027712 ((_ is Union!11791) (regTwo!24095 (regex!6886 (h!48541 rules!2999))))) b!4028458))

(declare-fun b_lambda!117551 () Bool)

(assert (= b_lambda!117543 (or d!1192912 b_lambda!117551)))

(declare-fun bs!590184 () Bool)

(declare-fun d!1193410 () Bool)

(assert (= bs!590184 (and d!1193410 d!1192912)))

(assert (=> bs!590184 (= (dynLambda!18292 lambda!127195 lt!1430704) (= (list!16040 (dynLambda!18282 (toChars!9265 (transformation!6886 (rule!9944 token!484))) (dynLambda!18283 (toValue!9406 (transformation!6886 (rule!9944 token!484))) lt!1430704))) (list!16040 lt!1430704)))))

(declare-fun b_lambda!117553 () Bool)

(assert (=> (not b_lambda!117553) (not bs!590184)))

(assert (=> bs!590184 t!334032))

(declare-fun b_and!309515 () Bool)

(assert (= b_and!309487 (and (=> t!334032 result!293382) b_and!309515)))

(assert (=> bs!590184 t!334034))

(declare-fun b_and!309517 () Bool)

(assert (= b_and!309489 (and (=> t!334034 result!293384) b_and!309517)))

(assert (=> bs!590184 t!334041))

(declare-fun b_and!309519 () Bool)

(assert (= b_and!309491 (and (=> t!334041 result!293396) b_and!309519)))

(assert (=> bs!590184 t!334076))

(declare-fun b_and!309521 () Bool)

(assert (= b_and!309513 (and (=> t!334076 result!293430) b_and!309521)))

(declare-fun b_lambda!117555 () Bool)

(assert (=> (not b_lambda!117555) (not bs!590184)))

(assert (=> bs!590184 t!334018))

(declare-fun b_and!309523 () Bool)

(assert (= b_and!309505 (and (=> t!334018 result!293360) b_and!309523)))

(assert (=> bs!590184 t!334020))

(declare-fun b_and!309525 () Bool)

(assert (= b_and!309507 (and (=> t!334020 result!293364) b_and!309525)))

(assert (=> bs!590184 t!334037))

(declare-fun b_and!309527 () Bool)

(assert (= b_and!309509 (and (=> t!334037 result!293392) b_and!309527)))

(assert (=> bs!590184 t!334070))

(declare-fun b_and!309529 () Bool)

(assert (= b_and!309511 (and (=> t!334070 result!293424) b_and!309529)))

(assert (=> bs!590184 m!4619147))

(assert (=> bs!590184 m!4619173))

(assert (=> bs!590184 m!4619177))

(assert (=> bs!590184 m!4619147))

(assert (=> bs!590184 m!4619173))

(assert (=> bs!590184 m!4619175))

(assert (=> d!1193112 d!1193410))

(check-sat (not d!1193026) (not b!4028405) (not b!4028174) (not b!4028339) (not b!4027805) (not b!4028035) (not b!4028008) (not b!4027764) (not b!4028091) (not b_next!112859) (not b!4028371) (not b!4028066) (not b!4028417) (not d!1193030) (not d!1193278) (not b!4027821) (not b!4027899) (not d!1193398) (not b!4028452) (not b!4028181) (not b!4028059) b_and!309519 (not b!4028113) (not b!4027837) (not d!1193304) (not d!1193194) (not b!4028431) (not b_lambda!117537) (not d!1193382) (not b!4028137) (not d!1193132) (not b!4028403) (not b!4028420) (not b!4028374) (not d!1193052) (not b!4028370) (not d!1193134) (not b!4028034) (not b!4027833) (not b!4028449) (not d!1193010) (not b!4028444) (not d!1193200) (not b!4028016) (not b!4028099) (not b!4028048) (not b!4028367) (not b!4028110) (not b!4027892) (not b!4028124) (not b!4027954) (not b!4027863) (not b!4027897) (not b!4028456) (not bm!286833) (not b!4028175) (not d!1193024) (not b!4028402) (not b!4028115) (not b_next!112843) (not b!4028080) (not d!1193108) (not b!4028432) (not b!4028109) (not b!4028411) (not b!4027914) (not b!4028070) (not b!4027818) (not b!4027765) (not b!4027748) (not b!4028141) (not b!4028012) (not b!4027602) (not d!1193236) (not b!4028051) (not d!1192994) (not b!4027817) (not b_lambda!117555) (not b!4028076) (not b_lambda!117529) (not b!4027823) (not bm!286820) (not b_next!112845) (not b!4028342) (not b!4028434) (not b!4028089) (not b!4027844) (not b!4027804) (not bm!286817) (not b_lambda!117533) (not d!1193064) (not d!1193044) (not b!4028037) (not b!4028429) (not b!4028114) (not d!1193066) (not b!4028426) (not b!4028357) (not b!4028337) (not bm!286821) (not b!4028096) (not b_next!112857) (not b!4027778) (not b!4028111) b_and!309529 (not b!4028446) (not b!4028412) (not d!1193252) (not b!4028081) (not b!4028170) (not b!4028029) (not b!4028401) (not b!4027829) b_and!309517 (not d!1193192) (not b!4028120) (not b!4027896) tp_is_empty!20553 b_and!309527 (not b!4027769) (not b_lambda!117531) (not d!1193270) (not b!4028372) (not b!4028422) (not b!4028341) (not b!4028067) (not b!4027904) (not b!4028428) (not b!4028060) (not b!4027762) (not b!4027839) (not d!1193238) (not b!4028354) (not d!1193208) (not b_lambda!117547) (not b!4027952) (not d!1193242) b_and!309515 (not tb!242041) (not b!4028416) (not b!4028404) (not b!4027927) (not d!1193210) (not b!4028340) (not b_lambda!117539) (not d!1193234) (not b!4028368) (not b!4028118) (not b!4027779) (not b!4028015) (not b!4028030) (not d!1193244) (not b!4028079) (not b_lambda!117535) (not d!1193084) (not b!4028409) (not d!1193310) (not b!4027998) (not d!1193258) (not b!4028053) (not b!4027918) (not d!1193296) (not bm!286831) (not b!4028073) (not b!4028072) (not b!4027843) (not b!4027926) (not d!1193000) (not d!1193054) (not b!4028424) (not d!1193282) (not b!4028106) (not b!4027760) (not b!4028454) (not b!4027787) (not b!4028063) (not b!4027848) (not d!1193390) (not b!4027950) (not b!4027901) (not d!1193112) (not b!4027903) (not b!4028366) (not b!4027825) (not d!1193190) (not b!4027768) (not d!1193300) (not b!4027912) (not b!4027414) (not b!4028088) (not d!1193298) (not b!4028039) b_and!309521 (not b!4028095) (not b!4027930) (not bs!590184) (not b!4028071) (not b!4028007) (not d!1193096) (not b!4028457) (not b!4027834) (not b!4028122) (not b!4028458) (not b!4028092) (not b!4028336) (not bm!286819) (not b!4027827) (not b!4028083) (not b!4028085) (not b!4028009) (not b!4028418) (not b_next!112855) (not d!1193056) b_and!309523 (not b_next!112847) (not b!4027895) (not d!1193308) (not b!4028178) (not d!1193394) (not b!4028005) (not d!1193240) (not b!4027908) (not b!4028406) (not b!4028108) (not b!4028453) (not b!4028074) (not b!4028097) (not b!4028335) (not tb!242059) (not b!4028373) (not d!1193290) (not b!4028356) (not d!1193002) (not b!4027841) (not b!4028033) (not b_lambda!117553) (not d!1193110) (not b!4028180) (not b!4027789) (not b_lambda!117551) (not b!4028142) (not b_next!112841) (not b!4028023) (not b!4028450) (not b_next!112853) (not b!4028413) (not b!4028117) (not b!4027922) (not b!4028176) (not b!4028049) (not b!4028445) (not b!4028140) (not b!4027831) (not b!4028069) (not d!1193222) (not b!4028065) (not b!4028343) (not b!4028414) (not b!4027958) (not b!4028119) b_and!309525 (not b!4028448) (not b!4027924) (not b!4028126) (not bm!286816) (not b!4028427) (not b!4028130) (not b!4028139) (not d!1193092) (not b!4028087) (not b!4027893) (not b!4028410) (not b!4027767) (not b!4028421) (not b!4028128) (not b!4027905) (not b!4028425) (not b!4028040) (not b!4028011))
(check-sat (not b_next!112859) b_and!309519 (not b_next!112843) (not b_next!112845) b_and!309515 b_and!309521 b_and!309525 (not b_next!112857) b_and!309529 b_and!309527 b_and!309517 (not b_next!112855) b_and!309523 (not b_next!112847) (not b_next!112853) (not b_next!112841))
