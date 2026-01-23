; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374720 () Bool)

(assert start!374720)

(declare-fun b!3981116 () Bool)

(declare-fun b_free!110489 () Bool)

(declare-fun b_next!111193 () Bool)

(assert (=> b!3981116 (= b_free!110489 (not b_next!111193))))

(declare-fun tp!1213536 () Bool)

(declare-fun b_and!305999 () Bool)

(assert (=> b!3981116 (= tp!1213536 b_and!305999)))

(declare-fun b_free!110491 () Bool)

(declare-fun b_next!111195 () Bool)

(assert (=> b!3981116 (= b_free!110491 (not b_next!111195))))

(declare-fun tp!1213543 () Bool)

(declare-fun b_and!306001 () Bool)

(assert (=> b!3981116 (= tp!1213543 b_and!306001)))

(declare-fun b!3981097 () Bool)

(declare-fun b_free!110493 () Bool)

(declare-fun b_next!111197 () Bool)

(assert (=> b!3981097 (= b_free!110493 (not b_next!111197))))

(declare-fun tp!1213540 () Bool)

(declare-fun b_and!306003 () Bool)

(assert (=> b!3981097 (= tp!1213540 b_and!306003)))

(declare-fun b_free!110495 () Bool)

(declare-fun b_next!111199 () Bool)

(assert (=> b!3981097 (= b_free!110495 (not b_next!111199))))

(declare-fun tp!1213537 () Bool)

(declare-fun b_and!306005 () Bool)

(assert (=> b!3981097 (= tp!1213537 b_and!306005)))

(declare-fun b!3981092 () Bool)

(declare-fun e!2467102 () Bool)

(declare-fun e!2467084 () Bool)

(assert (=> b!3981092 (= e!2467102 e!2467084)))

(declare-fun res!1613429 () Bool)

(assert (=> b!3981092 (=> (not res!1613429) (not e!2467084))))

(declare-datatypes ((C!23432 0))(
  ( (C!23433 (val!13810 Int)) )
))
(declare-datatypes ((List!42680 0))(
  ( (Nil!42556) (Cons!42556 (h!47976 C!23432) (t!331335 List!42680)) )
))
(declare-datatypes ((IArray!25863 0))(
  ( (IArray!25864 (innerList!12989 List!42680)) )
))
(declare-datatypes ((Conc!12929 0))(
  ( (Node!12929 (left!32186 Conc!12929) (right!32516 Conc!12929) (csize!26088 Int) (cheight!13140 Int)) (Leaf!19995 (xs!16235 IArray!25863) (csize!26089 Int)) (Empty!12929) )
))
(declare-datatypes ((BalanceConc!25452 0))(
  ( (BalanceConc!25453 (c!689722 Conc!12929)) )
))
(declare-datatypes ((List!42681 0))(
  ( (Nil!42557) (Cons!42557 (h!47977 (_ BitVec 16)) (t!331336 List!42681)) )
))
(declare-datatypes ((TokenValue!6948 0))(
  ( (FloatLiteralValue!13896 (text!49081 List!42681)) (TokenValueExt!6947 (__x!26113 Int)) (Broken!34740 (value!212071 List!42681)) (Object!7071) (End!6948) (Def!6948) (Underscore!6948) (Match!6948) (Else!6948) (Error!6948) (Case!6948) (If!6948) (Extends!6948) (Abstract!6948) (Class!6948) (Val!6948) (DelimiterValue!13896 (del!7008 List!42681)) (KeywordValue!6954 (value!212072 List!42681)) (CommentValue!13896 (value!212073 List!42681)) (WhitespaceValue!13896 (value!212074 List!42681)) (IndentationValue!6948 (value!212075 List!42681)) (String!48457) (Int32!6948) (Broken!34741 (value!212076 List!42681)) (Boolean!6949) (Unit!61223) (OperatorValue!6951 (op!7008 List!42681)) (IdentifierValue!13896 (value!212077 List!42681)) (IdentifierValue!13897 (value!212078 List!42681)) (WhitespaceValue!13897 (value!212079 List!42681)) (True!13896) (False!13896) (Broken!34742 (value!212080 List!42681)) (Broken!34743 (value!212081 List!42681)) (True!13897) (RightBrace!6948) (RightBracket!6948) (Colon!6948) (Null!6948) (Comma!6948) (LeftBracket!6948) (False!13897) (LeftBrace!6948) (ImaginaryLiteralValue!6948 (text!49082 List!42681)) (StringLiteralValue!20844 (value!212082 List!42681)) (EOFValue!6948 (value!212083 List!42681)) (IdentValue!6948 (value!212084 List!42681)) (DelimiterValue!13897 (value!212085 List!42681)) (DedentValue!6948 (value!212086 List!42681)) (NewLineValue!6948 (value!212087 List!42681)) (IntegerValue!20844 (value!212088 (_ BitVec 32)) (text!49083 List!42681)) (IntegerValue!20845 (value!212089 Int) (text!49084 List!42681)) (Times!6948) (Or!6948) (Equal!6948) (Minus!6948) (Broken!34744 (value!212090 List!42681)) (And!6948) (Div!6948) (LessEqual!6948) (Mod!6948) (Concat!18571) (Not!6948) (Plus!6948) (SpaceValue!6948 (value!212091 List!42681)) (IntegerValue!20846 (value!212092 Int) (text!49085 List!42681)) (StringLiteralValue!20845 (text!49086 List!42681)) (FloatLiteralValue!13897 (text!49087 List!42681)) (BytesLiteralValue!6948 (value!212093 List!42681)) (CommentValue!13897 (value!212094 List!42681)) (StringLiteralValue!20846 (value!212095 List!42681)) (ErrorTokenValue!6948 (msg!7009 List!42681)) )
))
(declare-datatypes ((Regex!11623 0))(
  ( (ElementMatch!11623 (c!689723 C!23432)) (Concat!18572 (regOne!23758 Regex!11623) (regTwo!23758 Regex!11623)) (EmptyExpr!11623) (Star!11623 (reg!11952 Regex!11623)) (EmptyLang!11623) (Union!11623 (regOne!23759 Regex!11623) (regTwo!23759 Regex!11623)) )
))
(declare-datatypes ((String!48458 0))(
  ( (String!48459 (value!212096 String)) )
))
(declare-datatypes ((TokenValueInjection!13324 0))(
  ( (TokenValueInjection!13325 (toValue!9206 Int) (toChars!9065 Int)) )
))
(declare-datatypes ((Rule!13236 0))(
  ( (Rule!13237 (regex!6718 Regex!11623) (tag!7578 String!48458) (isSeparator!6718 Bool) (transformation!6718 TokenValueInjection!13324)) )
))
(declare-datatypes ((Token!12574 0))(
  ( (Token!12575 (value!212097 TokenValue!6948) (rule!9724 Rule!13236) (size!31834 Int) (originalCharacters!7318 List!42680)) )
))
(declare-datatypes ((tuple2!41784 0))(
  ( (tuple2!41785 (_1!24026 Token!12574) (_2!24026 List!42680)) )
))
(declare-datatypes ((Option!9132 0))(
  ( (None!9131) (Some!9131 (v!39479 tuple2!41784)) )
))
(declare-fun lt!1398288 () Option!9132)

(declare-datatypes ((List!42682 0))(
  ( (Nil!42558) (Cons!42558 (h!47978 Rule!13236) (t!331337 List!42682)) )
))
(declare-fun rules!2999 () List!42682)

(declare-datatypes ((LexerInterface!6307 0))(
  ( (LexerInterfaceExt!6304 (__x!26114 Int)) (Lexer!6305) )
))
(declare-fun thiss!21717 () LexerInterface!6307)

(declare-fun lt!1398281 () List!42680)

(declare-fun maxPrefix!3605 (LexerInterface!6307 List!42682 List!42680) Option!9132)

(assert (=> b!3981092 (= res!1613429 (= (maxPrefix!3605 thiss!21717 rules!2999 lt!1398281) lt!1398288))))

(declare-fun lt!1398268 () tuple2!41784)

(assert (=> b!3981092 (= lt!1398288 (Some!9131 lt!1398268))))

(declare-fun token!484 () Token!12574)

(declare-fun suffixResult!105 () List!42680)

(assert (=> b!3981092 (= lt!1398268 (tuple2!41785 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!42680)

(declare-fun suffix!1299 () List!42680)

(declare-fun ++!11120 (List!42680 List!42680) List!42680)

(assert (=> b!3981092 (= lt!1398281 (++!11120 prefix!494 suffix!1299))))

(declare-fun b!3981093 () Bool)

(declare-fun e!2467090 () Bool)

(declare-fun tp_is_empty!20217 () Bool)

(declare-fun tp!1213538 () Bool)

(assert (=> b!3981093 (= e!2467090 (and tp_is_empty!20217 tp!1213538))))

(declare-fun b!3981094 () Bool)

(declare-fun res!1613446 () Bool)

(declare-fun e!2467093 () Bool)

(assert (=> b!3981094 (=> (not res!1613446) (not e!2467093))))

(declare-fun newSuffix!27 () List!42680)

(declare-fun isPrefix!3805 (List!42680 List!42680) Bool)

(assert (=> b!3981094 (= res!1613446 (isPrefix!3805 newSuffix!27 suffix!1299))))

(declare-fun b!3981095 () Bool)

(declare-fun e!2467100 () Bool)

(declare-fun e!2467089 () Bool)

(assert (=> b!3981095 (= e!2467100 e!2467089)))

(declare-fun res!1613444 () Bool)

(assert (=> b!3981095 (=> res!1613444 e!2467089)))

(declare-fun lt!1398275 () List!42680)

(declare-fun lt!1398296 () List!42680)

(assert (=> b!3981095 (= res!1613444 (or (not (= lt!1398281 lt!1398275)) (not (= lt!1398281 lt!1398296))))))

(assert (=> b!3981095 (= lt!1398275 lt!1398296)))

(declare-fun lt!1398315 () List!42680)

(declare-fun lt!1398286 () List!42680)

(assert (=> b!3981095 (= lt!1398296 (++!11120 lt!1398315 lt!1398286))))

(declare-fun lt!1398293 () List!42680)

(assert (=> b!3981095 (= lt!1398275 (++!11120 lt!1398293 suffix!1299))))

(declare-fun lt!1398287 () List!42680)

(assert (=> b!3981095 (= lt!1398286 (++!11120 lt!1398287 suffix!1299))))

(declare-datatypes ((Unit!61224 0))(
  ( (Unit!61225) )
))
(declare-fun lt!1398269 () Unit!61224)

(declare-fun lemmaConcatAssociativity!2440 (List!42680 List!42680 List!42680) Unit!61224)

(assert (=> b!3981095 (= lt!1398269 (lemmaConcatAssociativity!2440 lt!1398315 lt!1398287 suffix!1299))))

(declare-fun b!3981096 () Bool)

(declare-fun e!2467086 () Bool)

(assert (=> b!3981096 (= e!2467089 e!2467086)))

(declare-fun res!1613433 () Bool)

(assert (=> b!3981096 (=> res!1613433 e!2467086)))

(declare-fun lt!1398305 () Option!9132)

(assert (=> b!3981096 (= res!1613433 (not (= lt!1398305 lt!1398288)))))

(declare-fun lt!1398311 () Token!12574)

(assert (=> b!3981096 (= lt!1398305 (Some!9131 (tuple2!41785 lt!1398311 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2639 (LexerInterface!6307 Rule!13236 List!42680) Option!9132)

(assert (=> b!3981096 (= lt!1398305 (maxPrefixOneRule!2639 thiss!21717 (rule!9724 token!484) lt!1398281))))

(declare-fun lt!1398265 () Int)

(declare-fun lt!1398264 () TokenValue!6948)

(assert (=> b!3981096 (= lt!1398311 (Token!12575 lt!1398264 (rule!9724 token!484) lt!1398265 lt!1398315))))

(declare-fun apply!9929 (TokenValueInjection!13324 BalanceConc!25452) TokenValue!6948)

(declare-fun seqFromList!4957 (List!42680) BalanceConc!25452)

(assert (=> b!3981096 (= lt!1398264 (apply!9929 (transformation!6718 (rule!9724 token!484)) (seqFromList!4957 lt!1398315)))))

(declare-fun lt!1398262 () Unit!61224)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1461 (LexerInterface!6307 List!42682 List!42680 List!42680 List!42680 Rule!13236) Unit!61224)

(assert (=> b!3981096 (= lt!1398262 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1461 thiss!21717 rules!2999 lt!1398315 lt!1398281 suffixResult!105 (rule!9724 token!484)))))

(assert (=> b!3981096 (= lt!1398286 suffixResult!105)))

(declare-fun lt!1398279 () Unit!61224)

(declare-fun lemmaSamePrefixThenSameSuffix!1992 (List!42680 List!42680 List!42680 List!42680 List!42680) Unit!61224)

(assert (=> b!3981096 (= lt!1398279 (lemmaSamePrefixThenSameSuffix!1992 lt!1398315 lt!1398286 lt!1398315 suffixResult!105 lt!1398281))))

(assert (=> b!3981096 (isPrefix!3805 lt!1398315 lt!1398296)))

(declare-fun lt!1398301 () Unit!61224)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2648 (List!42680 List!42680) Unit!61224)

(assert (=> b!3981096 (= lt!1398301 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398315 lt!1398286))))

(declare-fun e!2467082 () Bool)

(assert (=> b!3981097 (= e!2467082 (and tp!1213540 tp!1213537))))

(declare-fun b!3981098 () Bool)

(declare-fun e!2467077 () Bool)

(declare-fun e!2467085 () Bool)

(assert (=> b!3981098 (= e!2467077 e!2467085)))

(declare-fun res!1613448 () Bool)

(assert (=> b!3981098 (=> res!1613448 e!2467085)))

(declare-fun lt!1398280 () List!42680)

(assert (=> b!3981098 (= res!1613448 (not (= lt!1398280 lt!1398281)))))

(declare-fun lt!1398314 () List!42680)

(assert (=> b!3981098 (= lt!1398280 (++!11120 lt!1398315 lt!1398314))))

(declare-fun getSuffix!2236 (List!42680 List!42680) List!42680)

(assert (=> b!3981098 (= lt!1398314 (getSuffix!2236 lt!1398281 lt!1398315))))

(declare-fun e!2467081 () Bool)

(assert (=> b!3981098 e!2467081))

(declare-fun res!1613437 () Bool)

(assert (=> b!3981098 (=> (not res!1613437) (not e!2467081))))

(assert (=> b!3981098 (= res!1613437 (isPrefix!3805 lt!1398281 lt!1398281))))

(declare-fun lt!1398304 () Unit!61224)

(declare-fun lemmaIsPrefixRefl!2397 (List!42680 List!42680) Unit!61224)

(assert (=> b!3981098 (= lt!1398304 (lemmaIsPrefixRefl!2397 lt!1398281 lt!1398281))))

(declare-fun b!3981099 () Bool)

(declare-fun e!2467072 () Bool)

(declare-fun e!2467080 () Bool)

(declare-fun tp!1213539 () Bool)

(declare-fun inv!56849 (String!48458) Bool)

(declare-fun inv!56852 (TokenValueInjection!13324) Bool)

(assert (=> b!3981099 (= e!2467080 (and tp!1213539 (inv!56849 (tag!7578 (h!47978 rules!2999))) (inv!56852 (transformation!6718 (h!47978 rules!2999))) e!2467072))))

(declare-fun b!3981100 () Bool)

(assert (=> b!3981100 (= e!2467086 e!2467077)))

(declare-fun res!1613425 () Bool)

(assert (=> b!3981100 (=> res!1613425 e!2467077)))

(declare-fun matchR!5600 (Regex!11623 List!42680) Bool)

(assert (=> b!3981100 (= res!1613425 (not (matchR!5600 (regex!6718 (rule!9724 token!484)) lt!1398315)))))

(declare-fun lt!1398297 () List!42680)

(assert (=> b!3981100 (isPrefix!3805 lt!1398315 lt!1398297)))

(declare-fun lt!1398302 () Unit!61224)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!638 (List!42680 List!42680 List!42680) Unit!61224)

(assert (=> b!3981100 (= lt!1398302 (lemmaPrefixStaysPrefixWhenAddingToSuffix!638 lt!1398315 prefix!494 newSuffix!27))))

(declare-fun lt!1398310 () Unit!61224)

(assert (=> b!3981100 (= lt!1398310 (lemmaPrefixStaysPrefixWhenAddingToSuffix!638 lt!1398315 prefix!494 suffix!1299))))

(declare-fun b!3981101 () Bool)

(declare-fun res!1613432 () Bool)

(assert (=> b!3981101 (=> (not res!1613432) (not e!2467093))))

(declare-fun isEmpty!25446 (List!42682) Bool)

(assert (=> b!3981101 (= res!1613432 (not (isEmpty!25446 rules!2999)))))

(declare-fun b!3981102 () Bool)

(declare-fun e!2467075 () Bool)

(declare-fun tp!1213535 () Bool)

(assert (=> b!3981102 (= e!2467075 (and tp_is_empty!20217 tp!1213535))))

(declare-fun b!3981103 () Bool)

(declare-fun e!2467094 () Bool)

(declare-fun lt!1398284 () List!42680)

(assert (=> b!3981103 (= e!2467094 (isPrefix!3805 lt!1398284 lt!1398297))))

(declare-fun b!3981104 () Bool)

(declare-fun res!1613431 () Bool)

(assert (=> b!3981104 (=> (not res!1613431) (not e!2467081))))

(declare-fun size!31835 (List!42680) Int)

(assert (=> b!3981104 (= res!1613431 (= (size!31834 token!484) (size!31835 (originalCharacters!7318 token!484))))))

(declare-fun b!3981105 () Bool)

(declare-fun res!1613427 () Bool)

(assert (=> b!3981105 (=> (not res!1613427) (not e!2467093))))

(assert (=> b!3981105 (= res!1613427 (>= (size!31835 suffix!1299) (size!31835 newSuffix!27)))))

(declare-fun b!3981106 () Bool)

(declare-fun e!2467101 () Bool)

(declare-fun tp!1213546 () Bool)

(assert (=> b!3981106 (= e!2467101 (and tp_is_empty!20217 tp!1213546))))

(declare-fun b!3981107 () Bool)

(declare-fun res!1613438 () Bool)

(assert (=> b!3981107 (=> (not res!1613438) (not e!2467081))))

(assert (=> b!3981107 (= res!1613438 (= (value!212097 token!484) lt!1398264))))

(declare-fun b!3981108 () Bool)

(assert (=> b!3981108 (= e!2467081 (and (= (size!31834 token!484) lt!1398265) (= (originalCharacters!7318 token!484) lt!1398315)))))

(declare-fun b!3981109 () Bool)

(declare-fun e!2467097 () Bool)

(assert (=> b!3981109 (= e!2467097 e!2467102)))

(declare-fun res!1613423 () Bool)

(assert (=> b!3981109 (=> (not res!1613423) (not e!2467102))))

(declare-fun lt!1398306 () List!42680)

(assert (=> b!3981109 (= res!1613423 (= lt!1398306 lt!1398297))))

(assert (=> b!3981109 (= lt!1398297 (++!11120 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42680)

(assert (=> b!3981109 (= lt!1398306 (++!11120 lt!1398315 newSuffixResult!27))))

(declare-fun b!3981110 () Bool)

(declare-fun e!2467076 () Bool)

(declare-fun e!2467104 () Bool)

(assert (=> b!3981110 (= e!2467076 e!2467104)))

(declare-fun res!1613430 () Bool)

(assert (=> b!3981110 (=> res!1613430 e!2467104)))

(declare-fun lt!1398278 () List!42680)

(assert (=> b!3981110 (= res!1613430 (not (= lt!1398278 lt!1398281)))))

(declare-fun lt!1398290 () List!42680)

(assert (=> b!3981110 (= lt!1398278 (++!11120 prefix!494 lt!1398290))))

(declare-fun lt!1398303 () List!42680)

(assert (=> b!3981110 (= lt!1398278 (++!11120 lt!1398297 lt!1398303))))

(declare-fun lt!1398300 () Unit!61224)

(assert (=> b!3981110 (= lt!1398300 (lemmaConcatAssociativity!2440 prefix!494 newSuffix!27 lt!1398303))))

(declare-fun b!3981111 () Bool)

(declare-fun e!2467074 () Bool)

(declare-fun tp!1213541 () Bool)

(assert (=> b!3981111 (= e!2467074 (and tp_is_empty!20217 tp!1213541))))

(declare-fun tp!1213545 () Bool)

(declare-fun b!3981112 () Bool)

(declare-fun e!2467092 () Bool)

(assert (=> b!3981112 (= e!2467092 (and tp!1213545 (inv!56849 (tag!7578 (rule!9724 token!484))) (inv!56852 (transformation!6718 (rule!9724 token!484))) e!2467082))))

(declare-fun b!3981113 () Bool)

(declare-fun e!2467083 () Bool)

(declare-fun tp!1213534 () Bool)

(assert (=> b!3981113 (= e!2467083 (and e!2467080 tp!1213534))))

(declare-fun b!3981114 () Bool)

(declare-fun e!2467103 () Bool)

(assert (=> b!3981114 (= e!2467103 e!2467094)))

(declare-fun res!1613440 () Bool)

(assert (=> b!3981114 (=> res!1613440 e!2467094)))

(declare-fun lt!1398263 () Int)

(assert (=> b!3981114 (= res!1613440 (< (size!31835 lt!1398297) lt!1398263))))

(declare-fun lt!1398298 () List!42680)

(assert (=> b!3981114 (isPrefix!3805 lt!1398284 lt!1398298)))

(declare-fun lt!1398292 () Unit!61224)

(declare-fun lt!1398308 () List!42680)

(assert (=> b!3981114 (= lt!1398292 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398284 lt!1398308))))

(declare-fun b!3981115 () Bool)

(declare-fun res!1613424 () Bool)

(assert (=> b!3981115 (=> (not res!1613424) (not e!2467093))))

(declare-fun rulesInvariant!5650 (LexerInterface!6307 List!42682) Bool)

(assert (=> b!3981115 (= res!1613424 (rulesInvariant!5650 thiss!21717 rules!2999))))

(assert (=> b!3981116 (= e!2467072 (and tp!1213536 tp!1213543))))

(declare-fun b!3981117 () Bool)

(declare-fun e!2467078 () Bool)

(declare-fun e!2467087 () Bool)

(assert (=> b!3981117 (= e!2467078 e!2467087)))

(declare-fun res!1613441 () Bool)

(assert (=> b!3981117 (=> res!1613441 e!2467087)))

(declare-fun lt!1398266 () Option!9132)

(declare-fun lt!1398307 () Option!9132)

(assert (=> b!3981117 (= res!1613441 (not (= lt!1398266 (Some!9131 (v!39479 lt!1398307)))))))

(assert (=> b!3981117 (isPrefix!3805 lt!1398284 (++!11120 lt!1398284 newSuffixResult!27))))

(declare-fun lt!1398272 () Unit!61224)

(assert (=> b!3981117 (= lt!1398272 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398284 newSuffixResult!27))))

(declare-fun lt!1398270 () List!42680)

(assert (=> b!3981117 (isPrefix!3805 lt!1398284 lt!1398270)))

(assert (=> b!3981117 (= lt!1398270 (++!11120 lt!1398284 (_2!24026 (v!39479 lt!1398307))))))

(declare-fun lt!1398271 () Unit!61224)

(assert (=> b!3981117 (= lt!1398271 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398284 (_2!24026 (v!39479 lt!1398307))))))

(declare-fun lt!1398282 () TokenValue!6948)

(assert (=> b!3981117 (= lt!1398266 (Some!9131 (tuple2!41785 (Token!12575 lt!1398282 (rule!9724 (_1!24026 (v!39479 lt!1398307))) lt!1398263 lt!1398284) (_2!24026 (v!39479 lt!1398307)))))))

(assert (=> b!3981117 (= lt!1398266 (maxPrefixOneRule!2639 thiss!21717 (rule!9724 (_1!24026 (v!39479 lt!1398307))) lt!1398297))))

(assert (=> b!3981117 (= lt!1398263 (size!31835 lt!1398284))))

(assert (=> b!3981117 (= lt!1398282 (apply!9929 (transformation!6718 (rule!9724 (_1!24026 (v!39479 lt!1398307)))) (seqFromList!4957 lt!1398284)))))

(declare-fun lt!1398273 () Unit!61224)

(assert (=> b!3981117 (= lt!1398273 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1461 thiss!21717 rules!2999 lt!1398284 lt!1398297 (_2!24026 (v!39479 lt!1398307)) (rule!9724 (_1!24026 (v!39479 lt!1398307)))))))

(declare-fun list!15796 (BalanceConc!25452) List!42680)

(declare-fun charsOf!4534 (Token!12574) BalanceConc!25452)

(assert (=> b!3981117 (= lt!1398284 (list!15796 (charsOf!4534 (_1!24026 (v!39479 lt!1398307)))))))

(declare-fun lt!1398283 () Unit!61224)

(declare-fun lemmaInv!933 (TokenValueInjection!13324) Unit!61224)

(assert (=> b!3981117 (= lt!1398283 (lemmaInv!933 (transformation!6718 (rule!9724 (_1!24026 (v!39479 lt!1398307))))))))

(declare-fun ruleValid!2650 (LexerInterface!6307 Rule!13236) Bool)

(assert (=> b!3981117 (ruleValid!2650 thiss!21717 (rule!9724 (_1!24026 (v!39479 lt!1398307))))))

(declare-fun lt!1398299 () Unit!61224)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1724 (LexerInterface!6307 Rule!13236 List!42682) Unit!61224)

(assert (=> b!3981117 (= lt!1398299 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1724 thiss!21717 (rule!9724 (_1!24026 (v!39479 lt!1398307))) rules!2999))))

(declare-fun lt!1398277 () Unit!61224)

(declare-fun lemmaCharactersSize!1313 (Token!12574) Unit!61224)

(assert (=> b!3981117 (= lt!1398277 (lemmaCharactersSize!1313 token!484))))

(declare-fun lt!1398285 () Unit!61224)

(assert (=> b!3981117 (= lt!1398285 (lemmaCharactersSize!1313 (_1!24026 (v!39479 lt!1398307))))))

(declare-fun b!3981118 () Bool)

(declare-fun res!1613443 () Bool)

(declare-fun e!2467073 () Bool)

(assert (=> b!3981118 (=> res!1613443 e!2467073)))

(assert (=> b!3981118 (= res!1613443 (not (= lt!1398270 lt!1398297)))))

(declare-fun tp!1213544 () Bool)

(declare-fun b!3981119 () Bool)

(declare-fun e!2467098 () Bool)

(declare-fun inv!21 (TokenValue!6948) Bool)

(assert (=> b!3981119 (= e!2467098 (and (inv!21 (value!212097 token!484)) e!2467092 tp!1213544))))

(declare-fun b!3981120 () Bool)

(declare-fun e!2467079 () Bool)

(declare-fun tp!1213542 () Bool)

(assert (=> b!3981120 (= e!2467079 (and tp_is_empty!20217 tp!1213542))))

(declare-fun b!3981121 () Bool)

(declare-fun e!2467096 () Bool)

(assert (=> b!3981121 (= e!2467084 (not e!2467096))))

(declare-fun res!1613445 () Bool)

(assert (=> b!3981121 (=> res!1613445 e!2467096)))

(declare-fun lt!1398312 () List!42680)

(assert (=> b!3981121 (= res!1613445 (not (= lt!1398312 lt!1398281)))))

(assert (=> b!3981121 (= lt!1398312 (++!11120 lt!1398315 suffixResult!105))))

(declare-fun lt!1398309 () Unit!61224)

(assert (=> b!3981121 (= lt!1398309 (lemmaInv!933 (transformation!6718 (rule!9724 token!484))))))

(assert (=> b!3981121 (ruleValid!2650 thiss!21717 (rule!9724 token!484))))

(declare-fun lt!1398313 () Unit!61224)

(assert (=> b!3981121 (= lt!1398313 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1724 thiss!21717 (rule!9724 token!484) rules!2999))))

(declare-fun b!3981122 () Bool)

(declare-fun e!2467088 () Bool)

(assert (=> b!3981122 (= e!2467096 e!2467088)))

(declare-fun res!1613435 () Bool)

(assert (=> b!3981122 (=> res!1613435 e!2467088)))

(assert (=> b!3981122 (= res!1613435 (not (isPrefix!3805 lt!1398315 lt!1398281)))))

(assert (=> b!3981122 (isPrefix!3805 prefix!494 lt!1398281)))

(declare-fun lt!1398291 () Unit!61224)

(assert (=> b!3981122 (= lt!1398291 (lemmaConcatTwoListThenFirstIsPrefix!2648 prefix!494 suffix!1299))))

(assert (=> b!3981122 (isPrefix!3805 lt!1398315 lt!1398312)))

(declare-fun lt!1398294 () Unit!61224)

(assert (=> b!3981122 (= lt!1398294 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398315 suffixResult!105))))

(declare-fun res!1613439 () Bool)

(assert (=> start!374720 (=> (not res!1613439) (not e!2467093))))

(get-info :version)

(assert (=> start!374720 (= res!1613439 ((_ is Lexer!6305) thiss!21717))))

(assert (=> start!374720 e!2467093))

(assert (=> start!374720 e!2467090))

(declare-fun inv!56853 (Token!12574) Bool)

(assert (=> start!374720 (and (inv!56853 token!484) e!2467098)))

(assert (=> start!374720 e!2467079))

(assert (=> start!374720 e!2467075))

(assert (=> start!374720 e!2467074))

(assert (=> start!374720 true))

(assert (=> start!374720 e!2467083))

(assert (=> start!374720 e!2467101))

(declare-fun b!3981123 () Bool)

(assert (=> b!3981123 (= e!2467073 e!2467103)))

(declare-fun res!1613442 () Bool)

(assert (=> b!3981123 (=> res!1613442 e!2467103)))

(assert (=> b!3981123 (= res!1613442 (not (= lt!1398298 lt!1398297)))))

(assert (=> b!3981123 (= lt!1398298 (++!11120 lt!1398284 lt!1398308))))

(assert (=> b!3981123 (= lt!1398308 (getSuffix!2236 lt!1398297 lt!1398284))))

(declare-fun b!3981124 () Bool)

(assert (=> b!3981124 (= e!2467104 e!2467073)))

(declare-fun res!1613428 () Bool)

(assert (=> b!3981124 (=> res!1613428 e!2467073)))

(assert (=> b!3981124 (= res!1613428 (not (isPrefix!3805 lt!1398284 lt!1398281)))))

(assert (=> b!3981124 (isPrefix!3805 lt!1398284 lt!1398278)))

(declare-fun lt!1398289 () Unit!61224)

(assert (=> b!3981124 (= lt!1398289 (lemmaPrefixStaysPrefixWhenAddingToSuffix!638 lt!1398284 lt!1398297 lt!1398303))))

(declare-fun b!3981125 () Bool)

(assert (=> b!3981125 (= e!2467085 e!2467078)))

(declare-fun res!1613426 () Bool)

(assert (=> b!3981125 (=> res!1613426 e!2467078)))

(assert (=> b!3981125 (= res!1613426 (not ((_ is Some!9131) lt!1398307)))))

(assert (=> b!3981125 (= lt!1398307 (maxPrefix!3605 thiss!21717 rules!2999 lt!1398297))))

(assert (=> b!3981125 (and (= suffixResult!105 lt!1398314) (= lt!1398268 (tuple2!41785 lt!1398311 lt!1398314)))))

(declare-fun lt!1398274 () Unit!61224)

(assert (=> b!3981125 (= lt!1398274 (lemmaSamePrefixThenSameSuffix!1992 lt!1398315 suffixResult!105 lt!1398315 lt!1398314 lt!1398281))))

(assert (=> b!3981125 (isPrefix!3805 lt!1398315 lt!1398280)))

(declare-fun lt!1398267 () Unit!61224)

(assert (=> b!3981125 (= lt!1398267 (lemmaConcatTwoListThenFirstIsPrefix!2648 lt!1398315 lt!1398314))))

(declare-fun b!3981126 () Bool)

(assert (=> b!3981126 (= e!2467087 e!2467076)))

(declare-fun res!1613436 () Bool)

(assert (=> b!3981126 (=> res!1613436 e!2467076)))

(assert (=> b!3981126 (= res!1613436 (not (= lt!1398290 suffix!1299)))))

(assert (=> b!3981126 (= lt!1398290 (++!11120 newSuffix!27 lt!1398303))))

(assert (=> b!3981126 (= lt!1398303 (getSuffix!2236 suffix!1299 newSuffix!27))))

(declare-fun b!3981127 () Bool)

(assert (=> b!3981127 (= e!2467093 e!2467097)))

(declare-fun res!1613447 () Bool)

(assert (=> b!3981127 (=> (not res!1613447) (not e!2467097))))

(declare-fun lt!1398295 () Int)

(assert (=> b!3981127 (= res!1613447 (>= lt!1398295 lt!1398265))))

(assert (=> b!3981127 (= lt!1398265 (size!31835 lt!1398315))))

(assert (=> b!3981127 (= lt!1398295 (size!31835 prefix!494))))

(assert (=> b!3981127 (= lt!1398315 (list!15796 (charsOf!4534 token!484)))))

(declare-fun b!3981128 () Bool)

(assert (=> b!3981128 (= e!2467088 e!2467100)))

(declare-fun res!1613434 () Bool)

(assert (=> b!3981128 (=> res!1613434 e!2467100)))

(assert (=> b!3981128 (= res!1613434 (not (= lt!1398293 prefix!494)))))

(assert (=> b!3981128 (= lt!1398293 (++!11120 lt!1398315 lt!1398287))))

(assert (=> b!3981128 (= lt!1398287 (getSuffix!2236 prefix!494 lt!1398315))))

(assert (=> b!3981128 (isPrefix!3805 lt!1398315 prefix!494)))

(declare-fun lt!1398276 () Unit!61224)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!383 (List!42680 List!42680 List!42680) Unit!61224)

(assert (=> b!3981128 (= lt!1398276 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!383 prefix!494 lt!1398315 lt!1398281))))

(assert (= (and start!374720 res!1613439) b!3981101))

(assert (= (and b!3981101 res!1613432) b!3981115))

(assert (= (and b!3981115 res!1613424) b!3981105))

(assert (= (and b!3981105 res!1613427) b!3981094))

(assert (= (and b!3981094 res!1613446) b!3981127))

(assert (= (and b!3981127 res!1613447) b!3981109))

(assert (= (and b!3981109 res!1613423) b!3981092))

(assert (= (and b!3981092 res!1613429) b!3981121))

(assert (= (and b!3981121 (not res!1613445)) b!3981122))

(assert (= (and b!3981122 (not res!1613435)) b!3981128))

(assert (= (and b!3981128 (not res!1613434)) b!3981095))

(assert (= (and b!3981095 (not res!1613444)) b!3981096))

(assert (= (and b!3981096 (not res!1613433)) b!3981100))

(assert (= (and b!3981100 (not res!1613425)) b!3981098))

(assert (= (and b!3981098 res!1613437) b!3981107))

(assert (= (and b!3981107 res!1613438) b!3981104))

(assert (= (and b!3981104 res!1613431) b!3981108))

(assert (= (and b!3981098 (not res!1613448)) b!3981125))

(assert (= (and b!3981125 (not res!1613426)) b!3981117))

(assert (= (and b!3981117 (not res!1613441)) b!3981126))

(assert (= (and b!3981126 (not res!1613436)) b!3981110))

(assert (= (and b!3981110 (not res!1613430)) b!3981124))

(assert (= (and b!3981124 (not res!1613428)) b!3981118))

(assert (= (and b!3981118 (not res!1613443)) b!3981123))

(assert (= (and b!3981123 (not res!1613442)) b!3981114))

(assert (= (and b!3981114 (not res!1613440)) b!3981103))

(assert (= (and start!374720 ((_ is Cons!42556) prefix!494)) b!3981093))

(assert (= b!3981112 b!3981097))

(assert (= b!3981119 b!3981112))

(assert (= start!374720 b!3981119))

(assert (= (and start!374720 ((_ is Cons!42556) suffixResult!105)) b!3981120))

(assert (= (and start!374720 ((_ is Cons!42556) suffix!1299)) b!3981102))

(assert (= (and start!374720 ((_ is Cons!42556) newSuffix!27)) b!3981111))

(assert (= b!3981099 b!3981116))

(assert (= b!3981113 b!3981099))

(assert (= (and start!374720 ((_ is Cons!42558) rules!2999)) b!3981113))

(assert (= (and start!374720 ((_ is Cons!42556) newSuffixResult!27)) b!3981106))

(declare-fun m!4554597 () Bool)

(assert (=> b!3981122 m!4554597))

(declare-fun m!4554599 () Bool)

(assert (=> b!3981122 m!4554599))

(declare-fun m!4554601 () Bool)

(assert (=> b!3981122 m!4554601))

(declare-fun m!4554603 () Bool)

(assert (=> b!3981122 m!4554603))

(declare-fun m!4554605 () Bool)

(assert (=> b!3981122 m!4554605))

(declare-fun m!4554607 () Bool)

(assert (=> b!3981104 m!4554607))

(declare-fun m!4554609 () Bool)

(assert (=> b!3981128 m!4554609))

(declare-fun m!4554611 () Bool)

(assert (=> b!3981128 m!4554611))

(declare-fun m!4554613 () Bool)

(assert (=> b!3981128 m!4554613))

(declare-fun m!4554615 () Bool)

(assert (=> b!3981128 m!4554615))

(declare-fun m!4554617 () Bool)

(assert (=> b!3981125 m!4554617))

(declare-fun m!4554619 () Bool)

(assert (=> b!3981125 m!4554619))

(declare-fun m!4554621 () Bool)

(assert (=> b!3981125 m!4554621))

(declare-fun m!4554623 () Bool)

(assert (=> b!3981125 m!4554623))

(declare-fun m!4554625 () Bool)

(assert (=> b!3981105 m!4554625))

(declare-fun m!4554627 () Bool)

(assert (=> b!3981105 m!4554627))

(declare-fun m!4554629 () Bool)

(assert (=> b!3981092 m!4554629))

(declare-fun m!4554631 () Bool)

(assert (=> b!3981092 m!4554631))

(declare-fun m!4554633 () Bool)

(assert (=> b!3981109 m!4554633))

(declare-fun m!4554635 () Bool)

(assert (=> b!3981109 m!4554635))

(declare-fun m!4554637 () Bool)

(assert (=> b!3981127 m!4554637))

(declare-fun m!4554639 () Bool)

(assert (=> b!3981127 m!4554639))

(declare-fun m!4554641 () Bool)

(assert (=> b!3981127 m!4554641))

(assert (=> b!3981127 m!4554641))

(declare-fun m!4554643 () Bool)

(assert (=> b!3981127 m!4554643))

(declare-fun m!4554645 () Bool)

(assert (=> b!3981115 m!4554645))

(declare-fun m!4554647 () Bool)

(assert (=> b!3981095 m!4554647))

(declare-fun m!4554649 () Bool)

(assert (=> b!3981095 m!4554649))

(declare-fun m!4554651 () Bool)

(assert (=> b!3981095 m!4554651))

(declare-fun m!4554653 () Bool)

(assert (=> b!3981095 m!4554653))

(declare-fun m!4554655 () Bool)

(assert (=> b!3981114 m!4554655))

(declare-fun m!4554657 () Bool)

(assert (=> b!3981114 m!4554657))

(declare-fun m!4554659 () Bool)

(assert (=> b!3981114 m!4554659))

(declare-fun m!4554661 () Bool)

(assert (=> b!3981117 m!4554661))

(declare-fun m!4554663 () Bool)

(assert (=> b!3981117 m!4554663))

(declare-fun m!4554665 () Bool)

(assert (=> b!3981117 m!4554665))

(declare-fun m!4554667 () Bool)

(assert (=> b!3981117 m!4554667))

(declare-fun m!4554669 () Bool)

(assert (=> b!3981117 m!4554669))

(declare-fun m!4554671 () Bool)

(assert (=> b!3981117 m!4554671))

(declare-fun m!4554673 () Bool)

(assert (=> b!3981117 m!4554673))

(declare-fun m!4554675 () Bool)

(assert (=> b!3981117 m!4554675))

(declare-fun m!4554677 () Bool)

(assert (=> b!3981117 m!4554677))

(declare-fun m!4554679 () Bool)

(assert (=> b!3981117 m!4554679))

(declare-fun m!4554681 () Bool)

(assert (=> b!3981117 m!4554681))

(assert (=> b!3981117 m!4554671))

(declare-fun m!4554683 () Bool)

(assert (=> b!3981117 m!4554683))

(assert (=> b!3981117 m!4554673))

(declare-fun m!4554685 () Bool)

(assert (=> b!3981117 m!4554685))

(declare-fun m!4554687 () Bool)

(assert (=> b!3981117 m!4554687))

(declare-fun m!4554689 () Bool)

(assert (=> b!3981117 m!4554689))

(declare-fun m!4554691 () Bool)

(assert (=> b!3981117 m!4554691))

(declare-fun m!4554693 () Bool)

(assert (=> b!3981117 m!4554693))

(declare-fun m!4554695 () Bool)

(assert (=> b!3981117 m!4554695))

(assert (=> b!3981117 m!4554687))

(declare-fun m!4554697 () Bool)

(assert (=> b!3981112 m!4554697))

(declare-fun m!4554699 () Bool)

(assert (=> b!3981112 m!4554699))

(declare-fun m!4554701 () Bool)

(assert (=> b!3981110 m!4554701))

(declare-fun m!4554703 () Bool)

(assert (=> b!3981110 m!4554703))

(declare-fun m!4554705 () Bool)

(assert (=> b!3981110 m!4554705))

(declare-fun m!4554707 () Bool)

(assert (=> b!3981099 m!4554707))

(declare-fun m!4554709 () Bool)

(assert (=> b!3981099 m!4554709))

(declare-fun m!4554711 () Bool)

(assert (=> b!3981124 m!4554711))

(declare-fun m!4554713 () Bool)

(assert (=> b!3981124 m!4554713))

(declare-fun m!4554715 () Bool)

(assert (=> b!3981124 m!4554715))

(declare-fun m!4554717 () Bool)

(assert (=> b!3981121 m!4554717))

(declare-fun m!4554719 () Bool)

(assert (=> b!3981121 m!4554719))

(declare-fun m!4554721 () Bool)

(assert (=> b!3981121 m!4554721))

(declare-fun m!4554723 () Bool)

(assert (=> b!3981121 m!4554723))

(declare-fun m!4554725 () Bool)

(assert (=> b!3981096 m!4554725))

(declare-fun m!4554727 () Bool)

(assert (=> b!3981096 m!4554727))

(declare-fun m!4554729 () Bool)

(assert (=> b!3981096 m!4554729))

(declare-fun m!4554731 () Bool)

(assert (=> b!3981096 m!4554731))

(declare-fun m!4554733 () Bool)

(assert (=> b!3981096 m!4554733))

(assert (=> b!3981096 m!4554731))

(declare-fun m!4554735 () Bool)

(assert (=> b!3981096 m!4554735))

(declare-fun m!4554737 () Bool)

(assert (=> b!3981096 m!4554737))

(declare-fun m!4554739 () Bool)

(assert (=> b!3981119 m!4554739))

(declare-fun m!4554741 () Bool)

(assert (=> b!3981101 m!4554741))

(declare-fun m!4554743 () Bool)

(assert (=> b!3981098 m!4554743))

(declare-fun m!4554745 () Bool)

(assert (=> b!3981098 m!4554745))

(declare-fun m!4554747 () Bool)

(assert (=> b!3981098 m!4554747))

(declare-fun m!4554749 () Bool)

(assert (=> b!3981098 m!4554749))

(declare-fun m!4554751 () Bool)

(assert (=> b!3981123 m!4554751))

(declare-fun m!4554753 () Bool)

(assert (=> b!3981123 m!4554753))

(declare-fun m!4554755 () Bool)

(assert (=> b!3981094 m!4554755))

(declare-fun m!4554757 () Bool)

(assert (=> b!3981126 m!4554757))

(declare-fun m!4554759 () Bool)

(assert (=> b!3981126 m!4554759))

(declare-fun m!4554761 () Bool)

(assert (=> b!3981100 m!4554761))

(declare-fun m!4554763 () Bool)

(assert (=> b!3981100 m!4554763))

(declare-fun m!4554765 () Bool)

(assert (=> b!3981100 m!4554765))

(declare-fun m!4554767 () Bool)

(assert (=> b!3981100 m!4554767))

(declare-fun m!4554769 () Bool)

(assert (=> start!374720 m!4554769))

(declare-fun m!4554771 () Bool)

(assert (=> b!3981103 m!4554771))

(check-sat (not b!3981128) (not b!3981126) (not b!3981100) (not b!3981106) tp_is_empty!20217 b_and!306001 (not b!3981110) b_and!306003 (not b!3981120) (not b!3981095) (not b!3981105) (not b!3981112) b_and!306005 (not b_next!111195) (not start!374720) (not b!3981093) (not b!3981111) (not b!3981109) (not b!3981125) (not b!3981123) (not b!3981117) (not b!3981104) (not b!3981127) (not b!3981099) (not b!3981094) (not b!3981096) (not b!3981121) (not b!3981102) (not b!3981115) (not b_next!111197) (not b!3981114) (not b!3981103) b_and!305999 (not b!3981122) (not b!3981113) (not b!3981119) (not b!3981124) (not b_next!111193) (not b!3981098) (not b_next!111199) (not b!3981092) (not b!3981101))
(check-sat (not b_next!111197) b_and!306001 b_and!305999 (not b_next!111193) b_and!306003 (not b_next!111199) b_and!306005 (not b_next!111195))
