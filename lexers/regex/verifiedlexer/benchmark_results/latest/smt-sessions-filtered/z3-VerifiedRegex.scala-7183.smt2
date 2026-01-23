; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382316 () Bool)

(assert start!382316)

(declare-fun b!4054811 () Bool)

(declare-fun b_free!112857 () Bool)

(declare-fun b_next!113561 () Bool)

(assert (=> b!4054811 (= b_free!112857 (not b_next!113561))))

(declare-fun tp!1229240 () Bool)

(declare-fun b_and!311811 () Bool)

(assert (=> b!4054811 (= tp!1229240 b_and!311811)))

(declare-fun b_free!112859 () Bool)

(declare-fun b_next!113563 () Bool)

(assert (=> b!4054811 (= b_free!112859 (not b_next!113563))))

(declare-fun tp!1229242 () Bool)

(declare-fun b_and!311813 () Bool)

(assert (=> b!4054811 (= tp!1229242 b_and!311813)))

(declare-fun b!4054825 () Bool)

(declare-fun b_free!112861 () Bool)

(declare-fun b_next!113565 () Bool)

(assert (=> b!4054825 (= b_free!112861 (not b_next!113565))))

(declare-fun tp!1229235 () Bool)

(declare-fun b_and!311815 () Bool)

(assert (=> b!4054825 (= tp!1229235 b_and!311815)))

(declare-fun b_free!112863 () Bool)

(declare-fun b_next!113567 () Bool)

(assert (=> b!4054825 (= b_free!112863 (not b_next!113567))))

(declare-fun tp!1229231 () Bool)

(declare-fun b_and!311817 () Bool)

(assert (=> b!4054825 (= tp!1229231 b_and!311817)))

(declare-fun b!4054798 () Bool)

(declare-fun e!2516195 () Bool)

(declare-fun tp_is_empty!20689 () Bool)

(declare-fun tp!1229232 () Bool)

(assert (=> b!4054798 (= e!2516195 (and tp_is_empty!20689 tp!1229232))))

(declare-fun b!4054799 () Bool)

(declare-fun e!2516204 () Bool)

(declare-fun e!2516207 () Bool)

(assert (=> b!4054799 (= e!2516204 e!2516207)))

(declare-fun res!1653074 () Bool)

(assert (=> b!4054799 (=> res!1653074 e!2516207)))

(declare-datatypes ((C!23904 0))(
  ( (C!23905 (val!14046 Int)) )
))
(declare-datatypes ((List!43473 0))(
  ( (Nil!43349) (Cons!43349 (h!48769 C!23904) (t!336182 List!43473)) )
))
(declare-fun lt!1447249 () List!43473)

(declare-fun lt!1447224 () List!43473)

(assert (=> b!4054799 (= res!1653074 (not (= lt!1447249 lt!1447224)))))

(declare-fun lt!1447241 () List!43473)

(declare-fun lt!1447222 () List!43473)

(declare-fun ++!11356 (List!43473 List!43473) List!43473)

(assert (=> b!4054799 (= lt!1447249 (++!11356 lt!1447241 lt!1447222))))

(declare-fun getSuffix!2458 (List!43473 List!43473) List!43473)

(assert (=> b!4054799 (= lt!1447222 (getSuffix!2458 lt!1447224 lt!1447241))))

(declare-fun e!2516209 () Bool)

(assert (=> b!4054799 e!2516209))

(declare-fun res!1653083 () Bool)

(assert (=> b!4054799 (=> (not res!1653083) (not e!2516209))))

(declare-fun isPrefix!4041 (List!43473 List!43473) Bool)

(assert (=> b!4054799 (= res!1653083 (isPrefix!4041 lt!1447224 lt!1447224))))

(declare-datatypes ((Unit!62690 0))(
  ( (Unit!62691) )
))
(declare-fun lt!1447233 () Unit!62690)

(declare-fun lemmaIsPrefixRefl!2608 (List!43473 List!43473) Unit!62690)

(assert (=> b!4054799 (= lt!1447233 (lemmaIsPrefixRefl!2608 lt!1447224 lt!1447224))))

(declare-datatypes ((IArray!26335 0))(
  ( (IArray!26336 (innerList!13225 List!43473)) )
))
(declare-datatypes ((Conc!13165 0))(
  ( (Node!13165 (left!32632 Conc!13165) (right!32962 Conc!13165) (csize!26560 Int) (cheight!13376 Int)) (Leaf!20349 (xs!16471 IArray!26335) (csize!26561 Int)) (Empty!13165) )
))
(declare-datatypes ((BalanceConc!25924 0))(
  ( (BalanceConc!25925 (c!700336 Conc!13165)) )
))
(declare-datatypes ((List!43474 0))(
  ( (Nil!43350) (Cons!43350 (h!48770 (_ BitVec 16)) (t!336183 List!43474)) )
))
(declare-datatypes ((TokenValue!7184 0))(
  ( (FloatLiteralValue!14368 (text!50733 List!43474)) (TokenValueExt!7183 (__x!26585 Int)) (Broken!35920 (value!218797 List!43474)) (Object!7307) (End!7184) (Def!7184) (Underscore!7184) (Match!7184) (Else!7184) (Error!7184) (Case!7184) (If!7184) (Extends!7184) (Abstract!7184) (Class!7184) (Val!7184) (DelimiterValue!14368 (del!7244 List!43474)) (KeywordValue!7190 (value!218798 List!43474)) (CommentValue!14368 (value!218799 List!43474)) (WhitespaceValue!14368 (value!218800 List!43474)) (IndentationValue!7184 (value!218801 List!43474)) (String!49637) (Int32!7184) (Broken!35921 (value!218802 List!43474)) (Boolean!7185) (Unit!62692) (OperatorValue!7187 (op!7244 List!43474)) (IdentifierValue!14368 (value!218803 List!43474)) (IdentifierValue!14369 (value!218804 List!43474)) (WhitespaceValue!14369 (value!218805 List!43474)) (True!14368) (False!14368) (Broken!35922 (value!218806 List!43474)) (Broken!35923 (value!218807 List!43474)) (True!14369) (RightBrace!7184) (RightBracket!7184) (Colon!7184) (Null!7184) (Comma!7184) (LeftBracket!7184) (False!14369) (LeftBrace!7184) (ImaginaryLiteralValue!7184 (text!50734 List!43474)) (StringLiteralValue!21552 (value!218808 List!43474)) (EOFValue!7184 (value!218809 List!43474)) (IdentValue!7184 (value!218810 List!43474)) (DelimiterValue!14369 (value!218811 List!43474)) (DedentValue!7184 (value!218812 List!43474)) (NewLineValue!7184 (value!218813 List!43474)) (IntegerValue!21552 (value!218814 (_ BitVec 32)) (text!50735 List!43474)) (IntegerValue!21553 (value!218815 Int) (text!50736 List!43474)) (Times!7184) (Or!7184) (Equal!7184) (Minus!7184) (Broken!35924 (value!218816 List!43474)) (And!7184) (Div!7184) (LessEqual!7184) (Mod!7184) (Concat!19043) (Not!7184) (Plus!7184) (SpaceValue!7184 (value!218817 List!43474)) (IntegerValue!21554 (value!218818 Int) (text!50737 List!43474)) (StringLiteralValue!21553 (text!50738 List!43474)) (FloatLiteralValue!14369 (text!50739 List!43474)) (BytesLiteralValue!7184 (value!218819 List!43474)) (CommentValue!14369 (value!218820 List!43474)) (StringLiteralValue!21554 (value!218821 List!43474)) (ErrorTokenValue!7184 (msg!7245 List!43474)) )
))
(declare-datatypes ((Regex!11859 0))(
  ( (ElementMatch!11859 (c!700337 C!23904)) (Concat!19044 (regOne!24230 Regex!11859) (regTwo!24230 Regex!11859)) (EmptyExpr!11859) (Star!11859 (reg!12188 Regex!11859)) (EmptyLang!11859) (Union!11859 (regOne!24231 Regex!11859) (regTwo!24231 Regex!11859)) )
))
(declare-datatypes ((String!49638 0))(
  ( (String!49639 (value!218822 String)) )
))
(declare-datatypes ((TokenValueInjection!13796 0))(
  ( (TokenValueInjection!13797 (toValue!9510 Int) (toChars!9369 Int)) )
))
(declare-datatypes ((Rule!13708 0))(
  ( (Rule!13709 (regex!6954 Regex!11859) (tag!7814 String!49638) (isSeparator!6954 Bool) (transformation!6954 TokenValueInjection!13796)) )
))
(declare-datatypes ((Token!13046 0))(
  ( (Token!13047 (value!218823 TokenValue!7184) (rule!10038 Rule!13708) (size!32409 Int) (originalCharacters!7554 List!43473)) )
))
(declare-fun token!484 () Token!13046)

(declare-fun e!2516193 () Bool)

(declare-fun b!4054800 () Bool)

(declare-fun e!2516210 () Bool)

(declare-fun tp!1229241 () Bool)

(declare-fun inv!21 (TokenValue!7184) Bool)

(assert (=> b!4054800 (= e!2516210 (and (inv!21 (value!218823 token!484)) e!2516193 tp!1229241))))

(declare-fun res!1653084 () Bool)

(declare-fun e!2516194 () Bool)

(assert (=> start!382316 (=> (not res!1653084) (not e!2516194))))

(declare-datatypes ((LexerInterface!6543 0))(
  ( (LexerInterfaceExt!6540 (__x!26586 Int)) (Lexer!6541) )
))
(declare-fun thiss!21717 () LexerInterface!6543)

(get-info :version)

(assert (=> start!382316 (= res!1653084 ((_ is Lexer!6541) thiss!21717))))

(assert (=> start!382316 e!2516194))

(declare-fun e!2516184 () Bool)

(assert (=> start!382316 e!2516184))

(declare-fun inv!57948 (Token!13046) Bool)

(assert (=> start!382316 (and (inv!57948 token!484) e!2516210)))

(declare-fun e!2516181 () Bool)

(assert (=> start!382316 e!2516181))

(assert (=> start!382316 e!2516195))

(declare-fun e!2516203 () Bool)

(assert (=> start!382316 e!2516203))

(assert (=> start!382316 true))

(declare-fun e!2516186 () Bool)

(assert (=> start!382316 e!2516186))

(declare-fun e!2516178 () Bool)

(assert (=> start!382316 e!2516178))

(declare-fun b!4054801 () Bool)

(declare-fun e!2516202 () Unit!62690)

(declare-fun Unit!62693 () Unit!62690)

(assert (=> b!4054801 (= e!2516202 Unit!62693)))

(declare-fun b!4054802 () Bool)

(declare-fun e!2516180 () Bool)

(assert (=> b!4054802 (= e!2516207 e!2516180)))

(declare-fun res!1653070 () Bool)

(assert (=> b!4054802 (=> res!1653070 e!2516180)))

(declare-datatypes ((tuple2!42410 0))(
  ( (tuple2!42411 (_1!24339 Token!13046) (_2!24339 List!43473)) )
))
(declare-datatypes ((Option!9368 0))(
  ( (None!9367) (Some!9367 (v!39779 tuple2!42410)) )
))
(declare-fun lt!1447260 () Option!9368)

(assert (=> b!4054802 (= res!1653070 (not ((_ is Some!9367) lt!1447260)))))

(declare-fun lt!1447230 () List!43473)

(declare-datatypes ((List!43475 0))(
  ( (Nil!43351) (Cons!43351 (h!48771 Rule!13708) (t!336184 List!43475)) )
))
(declare-fun rules!2999 () List!43475)

(declare-fun maxPrefix!3841 (LexerInterface!6543 List!43475 List!43473) Option!9368)

(assert (=> b!4054802 (= lt!1447260 (maxPrefix!3841 thiss!21717 rules!2999 lt!1447230))))

(declare-fun suffixResult!105 () List!43473)

(declare-fun lt!1447242 () tuple2!42410)

(declare-fun lt!1447207 () Token!13046)

(assert (=> b!4054802 (and (= suffixResult!105 lt!1447222) (= lt!1447242 (tuple2!42411 lt!1447207 lt!1447222)))))

(declare-fun lt!1447216 () Unit!62690)

(declare-fun lemmaSamePrefixThenSameSuffix!2202 (List!43473 List!43473 List!43473 List!43473 List!43473) Unit!62690)

(assert (=> b!4054802 (= lt!1447216 (lemmaSamePrefixThenSameSuffix!2202 lt!1447241 suffixResult!105 lt!1447241 lt!1447222 lt!1447224))))

(assert (=> b!4054802 (isPrefix!4041 lt!1447241 lt!1447249)))

(declare-fun lt!1447206 () Unit!62690)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2876 (List!43473 List!43473) Unit!62690)

(assert (=> b!4054802 (= lt!1447206 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 lt!1447222))))

(declare-fun b!4054803 () Bool)

(declare-fun res!1653087 () Bool)

(declare-fun e!2516187 () Bool)

(assert (=> b!4054803 (=> res!1653087 e!2516187)))

(declare-fun lt!1447244 () Option!9368)

(assert (=> b!4054803 (= res!1653087 (not (= lt!1447244 (Some!9367 (tuple2!42411 lt!1447207 lt!1447222)))))))

(declare-fun b!4054804 () Bool)

(declare-fun e!2516198 () Bool)

(declare-fun e!2516200 () Bool)

(assert (=> b!4054804 (= e!2516198 e!2516200)))

(declare-fun res!1653076 () Bool)

(assert (=> b!4054804 (=> res!1653076 e!2516200)))

(declare-fun lt!1447255 () List!43473)

(assert (=> b!4054804 (= res!1653076 (not (= lt!1447255 lt!1447224)))))

(declare-fun prefix!494 () List!43473)

(declare-fun lt!1447212 () List!43473)

(assert (=> b!4054804 (= lt!1447255 (++!11356 prefix!494 lt!1447212))))

(declare-fun lt!1447232 () List!43473)

(assert (=> b!4054804 (= lt!1447255 (++!11356 lt!1447230 lt!1447232))))

(declare-fun lt!1447240 () Unit!62690)

(declare-fun newSuffix!27 () List!43473)

(declare-fun lemmaConcatAssociativity!2658 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> b!4054804 (= lt!1447240 (lemmaConcatAssociativity!2658 prefix!494 newSuffix!27 lt!1447232))))

(declare-fun b!4054805 () Bool)

(declare-fun e!2516196 () Bool)

(declare-fun e!2516190 () Bool)

(assert (=> b!4054805 (= e!2516196 e!2516190)))

(declare-fun res!1653085 () Bool)

(assert (=> b!4054805 (=> res!1653085 e!2516190)))

(declare-fun lt!1447218 () Int)

(declare-fun lt!1447225 () Int)

(assert (=> b!4054805 (= res!1653085 (not (= lt!1447218 lt!1447225)))))

(declare-fun lt!1447237 () Unit!62690)

(declare-fun e!2516182 () Unit!62690)

(assert (=> b!4054805 (= lt!1447237 e!2516182)))

(declare-fun c!700335 () Bool)

(assert (=> b!4054805 (= c!700335 (< lt!1447225 lt!1447218))))

(declare-fun lt!1447262 () Unit!62690)

(assert (=> b!4054805 (= lt!1447262 e!2516202)))

(declare-fun c!700334 () Bool)

(assert (=> b!4054805 (= c!700334 (> lt!1447225 lt!1447218))))

(declare-fun lt!1447234 () List!43473)

(assert (=> b!4054805 (= (_2!24339 (v!39779 lt!1447260)) lt!1447234)))

(declare-fun lt!1447238 () List!43473)

(declare-fun lt!1447219 () Unit!62690)

(assert (=> b!4054805 (= lt!1447219 (lemmaSamePrefixThenSameSuffix!2202 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447238 lt!1447234 lt!1447230))))

(declare-fun lt!1447217 () List!43473)

(assert (=> b!4054805 (isPrefix!4041 lt!1447238 lt!1447217)))

(declare-fun lt!1447209 () Unit!62690)

(assert (=> b!4054805 (= lt!1447209 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 lt!1447234))))

(declare-fun b!4054806 () Bool)

(assert (=> b!4054806 (= e!2516209 (and (= (size!32409 token!484) lt!1447218) (= (originalCharacters!7554 token!484) lt!1447241)))))

(declare-fun b!4054807 () Bool)

(declare-fun e!2516212 () Bool)

(declare-fun e!2516183 () Bool)

(assert (=> b!4054807 (= e!2516212 e!2516183)))

(declare-fun res!1653068 () Bool)

(assert (=> b!4054807 (=> res!1653068 e!2516183)))

(declare-fun lt!1447213 () List!43473)

(declare-fun lt!1447254 () List!43473)

(assert (=> b!4054807 (= res!1653068 (or (not (= lt!1447224 lt!1447254)) (not (= lt!1447224 lt!1447213))))))

(assert (=> b!4054807 (= lt!1447254 lt!1447213)))

(declare-fun lt!1447258 () List!43473)

(assert (=> b!4054807 (= lt!1447213 (++!11356 lt!1447241 lt!1447258))))

(declare-fun lt!1447205 () List!43473)

(declare-fun suffix!1299 () List!43473)

(assert (=> b!4054807 (= lt!1447254 (++!11356 lt!1447205 suffix!1299))))

(declare-fun lt!1447210 () List!43473)

(assert (=> b!4054807 (= lt!1447258 (++!11356 lt!1447210 suffix!1299))))

(declare-fun lt!1447208 () Unit!62690)

(assert (=> b!4054807 (= lt!1447208 (lemmaConcatAssociativity!2658 lt!1447241 lt!1447210 suffix!1299))))

(declare-fun e!2516189 () Bool)

(declare-fun b!4054808 () Bool)

(declare-fun tp!1229237 () Bool)

(declare-fun inv!57945 (String!49638) Bool)

(declare-fun inv!57949 (TokenValueInjection!13796) Bool)

(assert (=> b!4054808 (= e!2516193 (and tp!1229237 (inv!57945 (tag!7814 (rule!10038 token!484))) (inv!57949 (transformation!6954 (rule!10038 token!484))) e!2516189))))

(declare-fun b!4054809 () Bool)

(declare-fun res!1653065 () Bool)

(assert (=> b!4054809 (=> (not res!1653065) (not e!2516194))))

(declare-fun rulesInvariant!5886 (LexerInterface!6543 List!43475) Bool)

(assert (=> b!4054809 (= res!1653065 (rulesInvariant!5886 thiss!21717 rules!2999))))

(declare-fun b!4054810 () Bool)

(declare-fun res!1653077 () Bool)

(declare-fun e!2516206 () Bool)

(assert (=> b!4054810 (=> res!1653077 e!2516206)))

(declare-fun lt!1447221 () List!43473)

(assert (=> b!4054810 (= res!1653077 (not (= lt!1447221 lt!1447230)))))

(declare-fun e!2516205 () Bool)

(assert (=> b!4054811 (= e!2516205 (and tp!1229240 tp!1229242))))

(declare-fun b!4054812 () Bool)

(declare-fun e!2516177 () Bool)

(assert (=> b!4054812 (= e!2516183 e!2516177)))

(declare-fun res!1653071 () Bool)

(assert (=> b!4054812 (=> res!1653071 e!2516177)))

(declare-fun lt!1447264 () Option!9368)

(declare-fun lt!1447248 () Option!9368)

(assert (=> b!4054812 (= res!1653071 (not (= lt!1447264 lt!1447248)))))

(assert (=> b!4054812 (= lt!1447264 (Some!9367 (tuple2!42411 lt!1447207 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2853 (LexerInterface!6543 Rule!13708 List!43473) Option!9368)

(assert (=> b!4054812 (= lt!1447264 (maxPrefixOneRule!2853 thiss!21717 (rule!10038 token!484) lt!1447224))))

(declare-fun lt!1447243 () TokenValue!7184)

(assert (=> b!4054812 (= lt!1447207 (Token!13047 lt!1447243 (rule!10038 token!484) lt!1447218 lt!1447241))))

(declare-fun apply!10143 (TokenValueInjection!13796 BalanceConc!25924) TokenValue!7184)

(declare-fun seqFromList!5171 (List!43473) BalanceConc!25924)

(assert (=> b!4054812 (= lt!1447243 (apply!10143 (transformation!6954 (rule!10038 token!484)) (seqFromList!5171 lt!1447241)))))

(declare-fun lt!1447235 () Unit!62690)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1659 (LexerInterface!6543 List!43475 List!43473 List!43473 List!43473 Rule!13708) Unit!62690)

(assert (=> b!4054812 (= lt!1447235 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1659 thiss!21717 rules!2999 lt!1447241 lt!1447224 suffixResult!105 (rule!10038 token!484)))))

(assert (=> b!4054812 (= lt!1447258 suffixResult!105)))

(declare-fun lt!1447231 () Unit!62690)

(assert (=> b!4054812 (= lt!1447231 (lemmaSamePrefixThenSameSuffix!2202 lt!1447241 lt!1447258 lt!1447241 suffixResult!105 lt!1447224))))

(assert (=> b!4054812 (isPrefix!4041 lt!1447241 lt!1447213)))

(declare-fun lt!1447261 () Unit!62690)

(assert (=> b!4054812 (= lt!1447261 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 lt!1447258))))

(declare-fun b!4054813 () Bool)

(declare-fun res!1653067 () Bool)

(assert (=> b!4054813 (=> res!1653067 e!2516190)))

(assert (=> b!4054813 (= res!1653067 (not (isPrefix!4041 lt!1447238 lt!1447230)))))

(declare-fun b!4054814 () Bool)

(declare-fun e!2516176 () Bool)

(declare-fun e!2516211 () Bool)

(assert (=> b!4054814 (= e!2516176 (not e!2516211))))

(declare-fun res!1653072 () Bool)

(assert (=> b!4054814 (=> res!1653072 e!2516211)))

(declare-fun lt!1447252 () List!43473)

(assert (=> b!4054814 (= res!1653072 (not (= lt!1447252 lt!1447224)))))

(assert (=> b!4054814 (= lt!1447252 (++!11356 lt!1447241 suffixResult!105))))

(declare-fun lt!1447229 () Unit!62690)

(declare-fun lemmaInv!1163 (TokenValueInjection!13796) Unit!62690)

(assert (=> b!4054814 (= lt!1447229 (lemmaInv!1163 (transformation!6954 (rule!10038 token!484))))))

(declare-fun ruleValid!2884 (LexerInterface!6543 Rule!13708) Bool)

(assert (=> b!4054814 (ruleValid!2884 thiss!21717 (rule!10038 token!484))))

(declare-fun lt!1447250 () Unit!62690)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1954 (LexerInterface!6543 Rule!13708 List!43475) Unit!62690)

(assert (=> b!4054814 (= lt!1447250 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1954 thiss!21717 (rule!10038 token!484) rules!2999))))

(declare-fun b!4054815 () Bool)

(declare-fun e!2516208 () Bool)

(assert (=> b!4054815 (= e!2516208 e!2516176)))

(declare-fun res!1653073 () Bool)

(assert (=> b!4054815 (=> (not res!1653073) (not e!2516176))))

(assert (=> b!4054815 (= res!1653073 (= lt!1447244 lt!1447248))))

(assert (=> b!4054815 (= lt!1447248 (Some!9367 lt!1447242))))

(assert (=> b!4054815 (= lt!1447244 (maxPrefix!3841 thiss!21717 rules!2999 lt!1447224))))

(assert (=> b!4054815 (= lt!1447242 (tuple2!42411 token!484 suffixResult!105))))

(assert (=> b!4054815 (= lt!1447224 (++!11356 prefix!494 suffix!1299))))

(declare-fun b!4054816 () Bool)

(declare-fun contains!8622 (List!43475 Rule!13708) Bool)

(assert (=> b!4054816 (= e!2516187 (contains!8622 rules!2999 (rule!10038 token!484)))))

(declare-fun b!4054817 () Bool)

(declare-fun e!2516185 () Bool)

(assert (=> b!4054817 (= e!2516185 e!2516198)))

(declare-fun res!1653064 () Bool)

(assert (=> b!4054817 (=> res!1653064 e!2516198)))

(assert (=> b!4054817 (= res!1653064 (not (= lt!1447212 suffix!1299)))))

(assert (=> b!4054817 (= lt!1447212 (++!11356 newSuffix!27 lt!1447232))))

(assert (=> b!4054817 (= lt!1447232 (getSuffix!2458 suffix!1299 newSuffix!27))))

(declare-fun b!4054818 () Bool)

(declare-fun Unit!62694 () Unit!62690)

(assert (=> b!4054818 (= e!2516182 Unit!62694)))

(declare-fun lt!1447214 () Unit!62690)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!480 (LexerInterface!6543 List!43475 Rule!13708 List!43473 List!43473 List!43473 Rule!13708) Unit!62690)

(assert (=> b!4054818 (= lt!1447214 (lemmaMaxPrefixOutputsMaxPrefix!480 thiss!21717 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447238 lt!1447230 lt!1447241 (rule!10038 token!484)))))

(assert (=> b!4054818 false))

(declare-fun b!4054819 () Bool)

(declare-fun e!2516191 () Bool)

(assert (=> b!4054819 (= e!2516211 e!2516191)))

(declare-fun res!1653081 () Bool)

(assert (=> b!4054819 (=> res!1653081 e!2516191)))

(assert (=> b!4054819 (= res!1653081 (not (isPrefix!4041 lt!1447241 lt!1447224)))))

(assert (=> b!4054819 (isPrefix!4041 prefix!494 lt!1447224)))

(declare-fun lt!1447265 () Unit!62690)

(assert (=> b!4054819 (= lt!1447265 (lemmaConcatTwoListThenFirstIsPrefix!2876 prefix!494 suffix!1299))))

(assert (=> b!4054819 (isPrefix!4041 lt!1447241 lt!1447252)))

(declare-fun lt!1447211 () Unit!62690)

(assert (=> b!4054819 (= lt!1447211 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 suffixResult!105))))

(declare-fun b!4054820 () Bool)

(declare-fun res!1653078 () Bool)

(assert (=> b!4054820 (=> (not res!1653078) (not e!2516209))))

(declare-fun size!32410 (List!43473) Int)

(assert (=> b!4054820 (= res!1653078 (= (size!32409 token!484) (size!32410 (originalCharacters!7554 token!484))))))

(declare-fun b!4054821 () Bool)

(declare-fun e!2516179 () Bool)

(assert (=> b!4054821 (= e!2516179 e!2516208)))

(declare-fun res!1653063 () Bool)

(assert (=> b!4054821 (=> (not res!1653063) (not e!2516208))))

(declare-fun lt!1447256 () List!43473)

(assert (=> b!4054821 (= res!1653063 (= lt!1447256 lt!1447230))))

(assert (=> b!4054821 (= lt!1447230 (++!11356 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43473)

(assert (=> b!4054821 (= lt!1447256 (++!11356 lt!1447241 newSuffixResult!27))))

(declare-fun b!4054822 () Bool)

(declare-fun tp!1229233 () Bool)

(assert (=> b!4054822 (= e!2516181 (and tp_is_empty!20689 tp!1229233))))

(declare-fun b!4054823 () Bool)

(declare-fun Unit!62695 () Unit!62690)

(assert (=> b!4054823 (= e!2516182 Unit!62695)))

(declare-fun b!4054824 () Bool)

(declare-fun tp!1229238 () Bool)

(assert (=> b!4054824 (= e!2516178 (and tp_is_empty!20689 tp!1229238))))

(assert (=> b!4054825 (= e!2516189 (and tp!1229235 tp!1229231))))

(declare-fun b!4054826 () Bool)

(assert (=> b!4054826 (= e!2516180 e!2516185)))

(declare-fun res!1653066 () Bool)

(assert (=> b!4054826 (=> res!1653066 e!2516185)))

(declare-fun lt!1447239 () Option!9368)

(assert (=> b!4054826 (= res!1653066 (not (= lt!1447239 (Some!9367 (v!39779 lt!1447260)))))))

(assert (=> b!4054826 (isPrefix!4041 lt!1447238 (++!11356 lt!1447238 newSuffixResult!27))))

(declare-fun lt!1447226 () Unit!62690)

(assert (=> b!4054826 (= lt!1447226 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 newSuffixResult!27))))

(assert (=> b!4054826 (isPrefix!4041 lt!1447238 lt!1447221)))

(assert (=> b!4054826 (= lt!1447221 (++!11356 lt!1447238 (_2!24339 (v!39779 lt!1447260))))))

(declare-fun lt!1447228 () Unit!62690)

(assert (=> b!4054826 (= lt!1447228 (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 (_2!24339 (v!39779 lt!1447260))))))

(declare-fun lt!1447263 () TokenValue!7184)

(assert (=> b!4054826 (= lt!1447239 (Some!9367 (tuple2!42411 (Token!13047 lt!1447263 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447225 lt!1447238) (_2!24339 (v!39779 lt!1447260)))))))

(assert (=> b!4054826 (= lt!1447239 (maxPrefixOneRule!2853 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447230))))

(assert (=> b!4054826 (= lt!1447225 (size!32410 lt!1447238))))

(assert (=> b!4054826 (= lt!1447263 (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (seqFromList!5171 lt!1447238)))))

(declare-fun lt!1447251 () Unit!62690)

(assert (=> b!4054826 (= lt!1447251 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1659 thiss!21717 rules!2999 lt!1447238 lt!1447230 (_2!24339 (v!39779 lt!1447260)) (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(declare-fun list!16152 (BalanceConc!25924) List!43473)

(declare-fun charsOf!4770 (Token!13046) BalanceConc!25924)

(assert (=> b!4054826 (= lt!1447238 (list!16152 (charsOf!4770 (_1!24339 (v!39779 lt!1447260)))))))

(declare-fun lt!1447220 () Unit!62690)

(assert (=> b!4054826 (= lt!1447220 (lemmaInv!1163 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(assert (=> b!4054826 (ruleValid!2884 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))

(declare-fun lt!1447204 () Unit!62690)

(assert (=> b!4054826 (= lt!1447204 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1954 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) rules!2999))))

(declare-fun lt!1447253 () Unit!62690)

(declare-fun lemmaCharactersSize!1473 (Token!13046) Unit!62690)

(assert (=> b!4054826 (= lt!1447253 (lemmaCharactersSize!1473 token!484))))

(declare-fun lt!1447246 () Unit!62690)

(assert (=> b!4054826 (= lt!1447246 (lemmaCharactersSize!1473 (_1!24339 (v!39779 lt!1447260))))))

(declare-fun b!4054827 () Bool)

(declare-fun res!1653089 () Bool)

(assert (=> b!4054827 (=> (not res!1653089) (not e!2516194))))

(assert (=> b!4054827 (= res!1653089 (isPrefix!4041 newSuffix!27 suffix!1299))))

(declare-fun b!4054828 () Bool)

(declare-fun tp!1229239 () Bool)

(assert (=> b!4054828 (= e!2516184 (and tp_is_empty!20689 tp!1229239))))

(declare-fun b!4054829 () Bool)

(declare-fun res!1653082 () Bool)

(assert (=> b!4054829 (=> (not res!1653082) (not e!2516194))))

(assert (=> b!4054829 (= res!1653082 (>= (size!32410 suffix!1299) (size!32410 newSuffix!27)))))

(declare-fun b!4054830 () Bool)

(declare-fun tp!1229236 () Bool)

(assert (=> b!4054830 (= e!2516203 (and tp_is_empty!20689 tp!1229236))))

(declare-fun b!4054831 () Bool)

(declare-fun Unit!62696 () Unit!62690)

(assert (=> b!4054831 (= e!2516202 Unit!62696)))

(declare-fun lt!1447227 () Unit!62690)

(assert (=> b!4054831 (= lt!1447227 (lemmaMaxPrefixOutputsMaxPrefix!480 thiss!21717 rules!2999 (rule!10038 token!484) lt!1447241 lt!1447224 lt!1447238 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(declare-fun res!1653062 () Bool)

(declare-fun matchR!5812 (Regex!11859 List!43473) Bool)

(assert (=> b!4054831 (= res!1653062 (not (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447238)))))

(declare-fun e!2516188 () Bool)

(assert (=> b!4054831 (=> (not res!1653062) (not e!2516188))))

(assert (=> b!4054831 e!2516188))

(declare-fun b!4054832 () Bool)

(declare-fun e!2516199 () Bool)

(declare-fun tp!1229234 () Bool)

(assert (=> b!4054832 (= e!2516199 (and tp!1229234 (inv!57945 (tag!7814 (h!48771 rules!2999))) (inv!57949 (transformation!6954 (h!48771 rules!2999))) e!2516205))))

(declare-fun b!4054833 () Bool)

(declare-fun res!1653079 () Bool)

(assert (=> b!4054833 (=> (not res!1653079) (not e!2516194))))

(declare-fun isEmpty!25863 (List!43475) Bool)

(assert (=> b!4054833 (= res!1653079 (not (isEmpty!25863 rules!2999)))))

(declare-fun b!4054834 () Bool)

(assert (=> b!4054834 (= e!2516177 e!2516204)))

(declare-fun res!1653069 () Bool)

(assert (=> b!4054834 (=> res!1653069 e!2516204)))

(assert (=> b!4054834 (= res!1653069 (not (matchR!5812 (regex!6954 (rule!10038 token!484)) lt!1447241)))))

(assert (=> b!4054834 (isPrefix!4041 lt!1447241 lt!1447230)))

(declare-fun lt!1447215 () Unit!62690)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!834 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> b!4054834 (= lt!1447215 (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447241 prefix!494 newSuffix!27))))

(declare-fun lt!1447236 () Unit!62690)

(assert (=> b!4054834 (= lt!1447236 (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447241 prefix!494 suffix!1299))))

(declare-fun b!4054835 () Bool)

(assert (=> b!4054835 (= e!2516206 e!2516196)))

(declare-fun res!1653080 () Bool)

(assert (=> b!4054835 (=> res!1653080 e!2516196)))

(assert (=> b!4054835 (= res!1653080 (not (= lt!1447217 lt!1447230)))))

(assert (=> b!4054835 (= lt!1447217 (++!11356 lt!1447238 lt!1447234))))

(assert (=> b!4054835 (= lt!1447234 (getSuffix!2458 lt!1447230 lt!1447238))))

(declare-fun b!4054836 () Bool)

(assert (=> b!4054836 (= e!2516191 e!2516212)))

(declare-fun res!1653075 () Bool)

(assert (=> b!4054836 (=> res!1653075 e!2516212)))

(assert (=> b!4054836 (= res!1653075 (not (= lt!1447205 prefix!494)))))

(assert (=> b!4054836 (= lt!1447205 (++!11356 lt!1447241 lt!1447210))))

(assert (=> b!4054836 (= lt!1447210 (getSuffix!2458 prefix!494 lt!1447241))))

(assert (=> b!4054836 (isPrefix!4041 lt!1447241 prefix!494)))

(declare-fun lt!1447223 () Unit!62690)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!605 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> b!4054836 (= lt!1447223 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!605 prefix!494 lt!1447241 lt!1447224))))

(declare-fun b!4054837 () Bool)

(declare-fun res!1653061 () Bool)

(assert (=> b!4054837 (=> (not res!1653061) (not e!2516209))))

(assert (=> b!4054837 (= res!1653061 (= (value!218823 token!484) lt!1447243))))

(declare-fun b!4054838 () Bool)

(assert (=> b!4054838 (= e!2516190 e!2516187)))

(declare-fun res!1653086 () Bool)

(assert (=> b!4054838 (=> res!1653086 e!2516187)))

(declare-fun getIndex!566 (List!43475 Rule!13708) Int)

(assert (=> b!4054838 (= res!1653086 (>= (getIndex!566 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (getIndex!566 rules!2999 (rule!10038 token!484))))))

(assert (=> b!4054838 (= (_2!24339 (v!39779 lt!1447260)) newSuffixResult!27)))

(declare-fun lt!1447245 () Unit!62690)

(assert (=> b!4054838 (= lt!1447245 (lemmaSamePrefixThenSameSuffix!2202 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447241 newSuffixResult!27 lt!1447230))))

(assert (=> b!4054838 (= lt!1447238 lt!1447241)))

(declare-fun lt!1447257 () Unit!62690)

(declare-fun lemmaIsPrefixSameLengthThenSameList!931 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> b!4054838 (= lt!1447257 (lemmaIsPrefixSameLengthThenSameList!931 lt!1447238 lt!1447241 lt!1447230))))

(declare-fun b!4054839 () Bool)

(assert (=> b!4054839 (= e!2516194 e!2516179)))

(declare-fun res!1653060 () Bool)

(assert (=> b!4054839 (=> (not res!1653060) (not e!2516179))))

(declare-fun lt!1447247 () Int)

(assert (=> b!4054839 (= res!1653060 (>= lt!1447247 lt!1447218))))

(assert (=> b!4054839 (= lt!1447218 (size!32410 lt!1447241))))

(assert (=> b!4054839 (= lt!1447247 (size!32410 prefix!494))))

(assert (=> b!4054839 (= lt!1447241 (list!16152 (charsOf!4770 token!484)))))

(declare-fun b!4054840 () Bool)

(assert (=> b!4054840 (= e!2516188 false)))

(declare-fun b!4054841 () Bool)

(assert (=> b!4054841 (= e!2516200 e!2516206)))

(declare-fun res!1653088 () Bool)

(assert (=> b!4054841 (=> res!1653088 e!2516206)))

(assert (=> b!4054841 (= res!1653088 (not (isPrefix!4041 lt!1447238 lt!1447224)))))

(assert (=> b!4054841 (isPrefix!4041 lt!1447238 lt!1447255)))

(declare-fun lt!1447259 () Unit!62690)

(assert (=> b!4054841 (= lt!1447259 (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447238 lt!1447230 lt!1447232))))

(declare-fun b!4054842 () Bool)

(declare-fun tp!1229230 () Bool)

(assert (=> b!4054842 (= e!2516186 (and e!2516199 tp!1229230))))

(assert (= (and start!382316 res!1653084) b!4054833))

(assert (= (and b!4054833 res!1653079) b!4054809))

(assert (= (and b!4054809 res!1653065) b!4054829))

(assert (= (and b!4054829 res!1653082) b!4054827))

(assert (= (and b!4054827 res!1653089) b!4054839))

(assert (= (and b!4054839 res!1653060) b!4054821))

(assert (= (and b!4054821 res!1653063) b!4054815))

(assert (= (and b!4054815 res!1653073) b!4054814))

(assert (= (and b!4054814 (not res!1653072)) b!4054819))

(assert (= (and b!4054819 (not res!1653081)) b!4054836))

(assert (= (and b!4054836 (not res!1653075)) b!4054807))

(assert (= (and b!4054807 (not res!1653068)) b!4054812))

(assert (= (and b!4054812 (not res!1653071)) b!4054834))

(assert (= (and b!4054834 (not res!1653069)) b!4054799))

(assert (= (and b!4054799 res!1653083) b!4054837))

(assert (= (and b!4054837 res!1653061) b!4054820))

(assert (= (and b!4054820 res!1653078) b!4054806))

(assert (= (and b!4054799 (not res!1653074)) b!4054802))

(assert (= (and b!4054802 (not res!1653070)) b!4054826))

(assert (= (and b!4054826 (not res!1653066)) b!4054817))

(assert (= (and b!4054817 (not res!1653064)) b!4054804))

(assert (= (and b!4054804 (not res!1653076)) b!4054841))

(assert (= (and b!4054841 (not res!1653088)) b!4054810))

(assert (= (and b!4054810 (not res!1653077)) b!4054835))

(assert (= (and b!4054835 (not res!1653080)) b!4054805))

(assert (= (and b!4054805 c!700334) b!4054831))

(assert (= (and b!4054805 (not c!700334)) b!4054801))

(assert (= (and b!4054831 res!1653062) b!4054840))

(assert (= (and b!4054805 c!700335) b!4054818))

(assert (= (and b!4054805 (not c!700335)) b!4054823))

(assert (= (and b!4054805 (not res!1653085)) b!4054813))

(assert (= (and b!4054813 (not res!1653067)) b!4054838))

(assert (= (and b!4054838 (not res!1653086)) b!4054803))

(assert (= (and b!4054803 (not res!1653087)) b!4054816))

(assert (= (and start!382316 ((_ is Cons!43349) prefix!494)) b!4054828))

(assert (= b!4054808 b!4054825))

(assert (= b!4054800 b!4054808))

(assert (= start!382316 b!4054800))

(assert (= (and start!382316 ((_ is Cons!43349) suffixResult!105)) b!4054822))

(assert (= (and start!382316 ((_ is Cons!43349) suffix!1299)) b!4054798))

(assert (= (and start!382316 ((_ is Cons!43349) newSuffix!27)) b!4054830))

(assert (= b!4054832 b!4054811))

(assert (= b!4054842 b!4054832))

(assert (= (and start!382316 ((_ is Cons!43351) rules!2999)) b!4054842))

(assert (= (and start!382316 ((_ is Cons!43349) newSuffixResult!27)) b!4054824))

(declare-fun m!4657717 () Bool)

(assert (=> b!4054826 m!4657717))

(declare-fun m!4657719 () Bool)

(assert (=> b!4054826 m!4657719))

(declare-fun m!4657721 () Bool)

(assert (=> b!4054826 m!4657721))

(declare-fun m!4657723 () Bool)

(assert (=> b!4054826 m!4657723))

(declare-fun m!4657725 () Bool)

(assert (=> b!4054826 m!4657725))

(declare-fun m!4657727 () Bool)

(assert (=> b!4054826 m!4657727))

(declare-fun m!4657729 () Bool)

(assert (=> b!4054826 m!4657729))

(declare-fun m!4657731 () Bool)

(assert (=> b!4054826 m!4657731))

(declare-fun m!4657733 () Bool)

(assert (=> b!4054826 m!4657733))

(declare-fun m!4657735 () Bool)

(assert (=> b!4054826 m!4657735))

(declare-fun m!4657737 () Bool)

(assert (=> b!4054826 m!4657737))

(declare-fun m!4657739 () Bool)

(assert (=> b!4054826 m!4657739))

(assert (=> b!4054826 m!4657725))

(assert (=> b!4054826 m!4657731))

(declare-fun m!4657741 () Bool)

(assert (=> b!4054826 m!4657741))

(declare-fun m!4657743 () Bool)

(assert (=> b!4054826 m!4657743))

(declare-fun m!4657745 () Bool)

(assert (=> b!4054826 m!4657745))

(declare-fun m!4657747 () Bool)

(assert (=> b!4054826 m!4657747))

(declare-fun m!4657749 () Bool)

(assert (=> b!4054826 m!4657749))

(assert (=> b!4054826 m!4657723))

(declare-fun m!4657751 () Bool)

(assert (=> b!4054826 m!4657751))

(declare-fun m!4657753 () Bool)

(assert (=> b!4054805 m!4657753))

(declare-fun m!4657755 () Bool)

(assert (=> b!4054805 m!4657755))

(declare-fun m!4657757 () Bool)

(assert (=> b!4054805 m!4657757))

(declare-fun m!4657759 () Bool)

(assert (=> b!4054827 m!4657759))

(declare-fun m!4657761 () Bool)

(assert (=> b!4054841 m!4657761))

(declare-fun m!4657763 () Bool)

(assert (=> b!4054841 m!4657763))

(declare-fun m!4657765 () Bool)

(assert (=> b!4054841 m!4657765))

(declare-fun m!4657767 () Bool)

(assert (=> b!4054814 m!4657767))

(declare-fun m!4657769 () Bool)

(assert (=> b!4054814 m!4657769))

(declare-fun m!4657771 () Bool)

(assert (=> b!4054814 m!4657771))

(declare-fun m!4657773 () Bool)

(assert (=> b!4054814 m!4657773))

(declare-fun m!4657775 () Bool)

(assert (=> b!4054816 m!4657775))

(declare-fun m!4657777 () Bool)

(assert (=> b!4054800 m!4657777))

(declare-fun m!4657779 () Bool)

(assert (=> b!4054813 m!4657779))

(declare-fun m!4657781 () Bool)

(assert (=> b!4054831 m!4657781))

(declare-fun m!4657783 () Bool)

(assert (=> b!4054831 m!4657783))

(declare-fun m!4657785 () Bool)

(assert (=> b!4054839 m!4657785))

(declare-fun m!4657787 () Bool)

(assert (=> b!4054839 m!4657787))

(declare-fun m!4657789 () Bool)

(assert (=> b!4054839 m!4657789))

(assert (=> b!4054839 m!4657789))

(declare-fun m!4657791 () Bool)

(assert (=> b!4054839 m!4657791))

(declare-fun m!4657793 () Bool)

(assert (=> b!4054834 m!4657793))

(declare-fun m!4657795 () Bool)

(assert (=> b!4054834 m!4657795))

(declare-fun m!4657797 () Bool)

(assert (=> b!4054834 m!4657797))

(declare-fun m!4657799 () Bool)

(assert (=> b!4054834 m!4657799))

(declare-fun m!4657801 () Bool)

(assert (=> b!4054835 m!4657801))

(declare-fun m!4657803 () Bool)

(assert (=> b!4054835 m!4657803))

(declare-fun m!4657805 () Bool)

(assert (=> b!4054812 m!4657805))

(declare-fun m!4657807 () Bool)

(assert (=> b!4054812 m!4657807))

(declare-fun m!4657809 () Bool)

(assert (=> b!4054812 m!4657809))

(declare-fun m!4657811 () Bool)

(assert (=> b!4054812 m!4657811))

(declare-fun m!4657813 () Bool)

(assert (=> b!4054812 m!4657813))

(assert (=> b!4054812 m!4657807))

(declare-fun m!4657815 () Bool)

(assert (=> b!4054812 m!4657815))

(declare-fun m!4657817 () Bool)

(assert (=> b!4054812 m!4657817))

(declare-fun m!4657819 () Bool)

(assert (=> b!4054819 m!4657819))

(declare-fun m!4657821 () Bool)

(assert (=> b!4054819 m!4657821))

(declare-fun m!4657823 () Bool)

(assert (=> b!4054819 m!4657823))

(declare-fun m!4657825 () Bool)

(assert (=> b!4054819 m!4657825))

(declare-fun m!4657827 () Bool)

(assert (=> b!4054819 m!4657827))

(declare-fun m!4657829 () Bool)

(assert (=> b!4054815 m!4657829))

(declare-fun m!4657831 () Bool)

(assert (=> b!4054815 m!4657831))

(declare-fun m!4657833 () Bool)

(assert (=> b!4054804 m!4657833))

(declare-fun m!4657835 () Bool)

(assert (=> b!4054804 m!4657835))

(declare-fun m!4657837 () Bool)

(assert (=> b!4054804 m!4657837))

(declare-fun m!4657839 () Bool)

(assert (=> b!4054820 m!4657839))

(declare-fun m!4657841 () Bool)

(assert (=> b!4054807 m!4657841))

(declare-fun m!4657843 () Bool)

(assert (=> b!4054807 m!4657843))

(declare-fun m!4657845 () Bool)

(assert (=> b!4054807 m!4657845))

(declare-fun m!4657847 () Bool)

(assert (=> b!4054807 m!4657847))

(declare-fun m!4657849 () Bool)

(assert (=> b!4054809 m!4657849))

(declare-fun m!4657851 () Bool)

(assert (=> b!4054836 m!4657851))

(declare-fun m!4657853 () Bool)

(assert (=> b!4054836 m!4657853))

(declare-fun m!4657855 () Bool)

(assert (=> b!4054836 m!4657855))

(declare-fun m!4657857 () Bool)

(assert (=> b!4054836 m!4657857))

(declare-fun m!4657859 () Bool)

(assert (=> b!4054832 m!4657859))

(declare-fun m!4657861 () Bool)

(assert (=> b!4054832 m!4657861))

(declare-fun m!4657863 () Bool)

(assert (=> b!4054818 m!4657863))

(declare-fun m!4657865 () Bool)

(assert (=> b!4054821 m!4657865))

(declare-fun m!4657867 () Bool)

(assert (=> b!4054821 m!4657867))

(declare-fun m!4657869 () Bool)

(assert (=> b!4054817 m!4657869))

(declare-fun m!4657871 () Bool)

(assert (=> b!4054817 m!4657871))

(declare-fun m!4657873 () Bool)

(assert (=> b!4054808 m!4657873))

(declare-fun m!4657875 () Bool)

(assert (=> b!4054808 m!4657875))

(declare-fun m!4657877 () Bool)

(assert (=> b!4054833 m!4657877))

(declare-fun m!4657879 () Bool)

(assert (=> b!4054829 m!4657879))

(declare-fun m!4657881 () Bool)

(assert (=> b!4054829 m!4657881))

(declare-fun m!4657883 () Bool)

(assert (=> b!4054838 m!4657883))

(declare-fun m!4657885 () Bool)

(assert (=> b!4054838 m!4657885))

(declare-fun m!4657887 () Bool)

(assert (=> b!4054838 m!4657887))

(declare-fun m!4657889 () Bool)

(assert (=> b!4054838 m!4657889))

(declare-fun m!4657891 () Bool)

(assert (=> start!382316 m!4657891))

(declare-fun m!4657893 () Bool)

(assert (=> b!4054802 m!4657893))

(declare-fun m!4657895 () Bool)

(assert (=> b!4054802 m!4657895))

(declare-fun m!4657897 () Bool)

(assert (=> b!4054802 m!4657897))

(declare-fun m!4657899 () Bool)

(assert (=> b!4054802 m!4657899))

(declare-fun m!4657901 () Bool)

(assert (=> b!4054799 m!4657901))

(declare-fun m!4657903 () Bool)

(assert (=> b!4054799 m!4657903))

(declare-fun m!4657905 () Bool)

(assert (=> b!4054799 m!4657905))

(declare-fun m!4657907 () Bool)

(assert (=> b!4054799 m!4657907))

(check-sat (not b!4054800) (not b!4054838) (not b!4054841) b_and!311813 (not start!382316) (not b!4054815) (not b!4054809) (not b!4054818) (not b_next!113561) (not b!4054830) (not b!4054808) (not b!4054826) (not b!4054813) (not b!4054816) (not b!4054835) (not b!4054827) (not b!4054819) (not b!4054829) (not b!4054807) (not b!4054842) (not b!4054814) (not b!4054836) (not b_next!113567) (not b!4054820) (not b!4054821) (not b!4054822) (not b!4054805) b_and!311815 tp_is_empty!20689 (not b!4054798) (not b!4054839) (not b!4054833) (not b!4054804) (not b!4054824) (not b!4054802) (not b!4054812) b_and!311811 (not b!4054834) (not b!4054799) (not b!4054828) b_and!311817 (not b!4054832) (not b!4054817) (not b!4054831) (not b_next!113563) (not b_next!113565))
(check-sat b_and!311813 (not b_next!113561) (not b_next!113567) b_and!311815 b_and!311811 b_and!311817 (not b_next!113563) (not b_next!113565))
(get-model)

(declare-fun d!1204432 () Bool)

(assert (=> d!1204432 (= (_2!24339 (v!39779 lt!1447260)) lt!1447234)))

(declare-fun lt!1447268 () Unit!62690)

(declare-fun choose!24594 (List!43473 List!43473 List!43473 List!43473 List!43473) Unit!62690)

(assert (=> d!1204432 (= lt!1447268 (choose!24594 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447238 lt!1447234 lt!1447230))))

(assert (=> d!1204432 (isPrefix!4041 lt!1447238 lt!1447230)))

(assert (=> d!1204432 (= (lemmaSamePrefixThenSameSuffix!2202 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447238 lt!1447234 lt!1447230) lt!1447268)))

(declare-fun bs!591713 () Bool)

(assert (= bs!591713 d!1204432))

(declare-fun m!4657909 () Bool)

(assert (=> bs!591713 m!4657909))

(assert (=> bs!591713 m!4657779))

(assert (=> b!4054805 d!1204432))

(declare-fun b!4054854 () Bool)

(declare-fun e!2516221 () Bool)

(assert (=> b!4054854 (= e!2516221 (>= (size!32410 lt!1447217) (size!32410 lt!1447238)))))

(declare-fun b!4054851 () Bool)

(declare-fun e!2516220 () Bool)

(declare-fun e!2516219 () Bool)

(assert (=> b!4054851 (= e!2516220 e!2516219)))

(declare-fun res!1653104 () Bool)

(assert (=> b!4054851 (=> (not res!1653104) (not e!2516219))))

(assert (=> b!4054851 (= res!1653104 (not ((_ is Nil!43349) lt!1447217)))))

(declare-fun b!4054852 () Bool)

(declare-fun res!1653103 () Bool)

(assert (=> b!4054852 (=> (not res!1653103) (not e!2516219))))

(declare-fun head!8565 (List!43473) C!23904)

(assert (=> b!4054852 (= res!1653103 (= (head!8565 lt!1447238) (head!8565 lt!1447217)))))

(declare-fun d!1204434 () Bool)

(assert (=> d!1204434 e!2516221))

(declare-fun res!1653105 () Bool)

(assert (=> d!1204434 (=> res!1653105 e!2516221)))

(declare-fun lt!1447271 () Bool)

(assert (=> d!1204434 (= res!1653105 (not lt!1447271))))

(assert (=> d!1204434 (= lt!1447271 e!2516220)))

(declare-fun res!1653102 () Bool)

(assert (=> d!1204434 (=> res!1653102 e!2516220)))

(assert (=> d!1204434 (= res!1653102 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204434 (= (isPrefix!4041 lt!1447238 lt!1447217) lt!1447271)))

(declare-fun b!4054853 () Bool)

(declare-fun tail!6297 (List!43473) List!43473)

(assert (=> b!4054853 (= e!2516219 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 lt!1447217)))))

(assert (= (and d!1204434 (not res!1653102)) b!4054851))

(assert (= (and b!4054851 res!1653104) b!4054852))

(assert (= (and b!4054852 res!1653103) b!4054853))

(assert (= (and d!1204434 (not res!1653105)) b!4054854))

(declare-fun m!4657911 () Bool)

(assert (=> b!4054854 m!4657911))

(assert (=> b!4054854 m!4657743))

(declare-fun m!4657913 () Bool)

(assert (=> b!4054852 m!4657913))

(declare-fun m!4657915 () Bool)

(assert (=> b!4054852 m!4657915))

(declare-fun m!4657917 () Bool)

(assert (=> b!4054853 m!4657917))

(declare-fun m!4657919 () Bool)

(assert (=> b!4054853 m!4657919))

(assert (=> b!4054853 m!4657917))

(assert (=> b!4054853 m!4657919))

(declare-fun m!4657921 () Bool)

(assert (=> b!4054853 m!4657921))

(assert (=> b!4054805 d!1204434))

(declare-fun d!1204436 () Bool)

(assert (=> d!1204436 (isPrefix!4041 lt!1447238 (++!11356 lt!1447238 lt!1447234))))

(declare-fun lt!1447274 () Unit!62690)

(declare-fun choose!24595 (List!43473 List!43473) Unit!62690)

(assert (=> d!1204436 (= lt!1447274 (choose!24595 lt!1447238 lt!1447234))))

(assert (=> d!1204436 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 lt!1447234) lt!1447274)))

(declare-fun bs!591714 () Bool)

(assert (= bs!591714 d!1204436))

(assert (=> bs!591714 m!4657801))

(assert (=> bs!591714 m!4657801))

(declare-fun m!4657923 () Bool)

(assert (=> bs!591714 m!4657923))

(declare-fun m!4657925 () Bool)

(assert (=> bs!591714 m!4657925))

(assert (=> b!4054805 d!1204436))

(declare-fun lt!1447277 () List!43473)

(declare-fun e!2516227 () Bool)

(declare-fun b!4054866 () Bool)

(assert (=> b!4054866 (= e!2516227 (or (not (= (_2!24339 (v!39779 lt!1447260)) Nil!43349)) (= lt!1447277 lt!1447238)))))

(declare-fun b!4054865 () Bool)

(declare-fun res!1653110 () Bool)

(assert (=> b!4054865 (=> (not res!1653110) (not e!2516227))))

(assert (=> b!4054865 (= res!1653110 (= (size!32410 lt!1447277) (+ (size!32410 lt!1447238) (size!32410 (_2!24339 (v!39779 lt!1447260))))))))

(declare-fun b!4054864 () Bool)

(declare-fun e!2516226 () List!43473)

(assert (=> b!4054864 (= e!2516226 (Cons!43349 (h!48769 lt!1447238) (++!11356 (t!336182 lt!1447238) (_2!24339 (v!39779 lt!1447260)))))))

(declare-fun d!1204438 () Bool)

(assert (=> d!1204438 e!2516227))

(declare-fun res!1653111 () Bool)

(assert (=> d!1204438 (=> (not res!1653111) (not e!2516227))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6600 (List!43473) (InoxSet C!23904))

(assert (=> d!1204438 (= res!1653111 (= (content!6600 lt!1447277) ((_ map or) (content!6600 lt!1447238) (content!6600 (_2!24339 (v!39779 lt!1447260))))))))

(assert (=> d!1204438 (= lt!1447277 e!2516226)))

(declare-fun c!700340 () Bool)

(assert (=> d!1204438 (= c!700340 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204438 (= (++!11356 lt!1447238 (_2!24339 (v!39779 lt!1447260))) lt!1447277)))

(declare-fun b!4054863 () Bool)

(assert (=> b!4054863 (= e!2516226 (_2!24339 (v!39779 lt!1447260)))))

(assert (= (and d!1204438 c!700340) b!4054863))

(assert (= (and d!1204438 (not c!700340)) b!4054864))

(assert (= (and d!1204438 res!1653111) b!4054865))

(assert (= (and b!4054865 res!1653110) b!4054866))

(declare-fun m!4657927 () Bool)

(assert (=> b!4054865 m!4657927))

(assert (=> b!4054865 m!4657743))

(declare-fun m!4657929 () Bool)

(assert (=> b!4054865 m!4657929))

(declare-fun m!4657931 () Bool)

(assert (=> b!4054864 m!4657931))

(declare-fun m!4657933 () Bool)

(assert (=> d!1204438 m!4657933))

(declare-fun m!4657935 () Bool)

(assert (=> d!1204438 m!4657935))

(declare-fun m!4657937 () Bool)

(assert (=> d!1204438 m!4657937))

(assert (=> b!4054826 d!1204438))

(declare-fun b!4055009 () Bool)

(declare-fun e!2516302 () Bool)

(declare-fun e!2516300 () Bool)

(assert (=> b!4055009 (= e!2516302 e!2516300)))

(declare-fun res!1653215 () Bool)

(assert (=> b!4055009 (=> (not res!1653215) (not e!2516300))))

(declare-fun lt!1447330 () Option!9368)

(declare-fun get!14217 (Option!9368) tuple2!42410)

(assert (=> b!4055009 (= res!1653215 (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447330))))))))

(declare-fun d!1204440 () Bool)

(assert (=> d!1204440 e!2516302))

(declare-fun res!1653212 () Bool)

(assert (=> d!1204440 (=> res!1653212 e!2516302)))

(declare-fun isEmpty!25865 (Option!9368) Bool)

(assert (=> d!1204440 (= res!1653212 (isEmpty!25865 lt!1447330))))

(declare-fun e!2516299 () Option!9368)

(assert (=> d!1204440 (= lt!1447330 e!2516299)))

(declare-fun c!700364 () Bool)

(declare-datatypes ((tuple2!42412 0))(
  ( (tuple2!42413 (_1!24340 List!43473) (_2!24340 List!43473)) )
))
(declare-fun lt!1447332 () tuple2!42412)

(declare-fun isEmpty!25866 (List!43473) Bool)

(assert (=> d!1204440 (= c!700364 (isEmpty!25866 (_1!24340 lt!1447332)))))

(declare-fun findLongestMatch!1311 (Regex!11859 List!43473) tuple2!42412)

(assert (=> d!1204440 (= lt!1447332 (findLongestMatch!1311 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447230))))

(assert (=> d!1204440 (ruleValid!2884 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))

(assert (=> d!1204440 (= (maxPrefixOneRule!2853 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447230) lt!1447330)))

(declare-fun b!4055010 () Bool)

(declare-fun res!1653218 () Bool)

(assert (=> b!4055010 (=> (not res!1653218) (not e!2516300))))

(assert (=> b!4055010 (= res!1653218 (= (++!11356 (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447330)))) (_2!24339 (get!14217 lt!1447330))) lt!1447230))))

(declare-fun b!4055011 () Bool)

(declare-fun res!1653216 () Bool)

(assert (=> b!4055011 (=> (not res!1653216) (not e!2516300))))

(assert (=> b!4055011 (= res!1653216 (= (rule!10038 (_1!24339 (get!14217 lt!1447330))) (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(declare-fun b!4055012 () Bool)

(assert (=> b!4055012 (= e!2516299 None!9367)))

(declare-fun b!4055013 () Bool)

(declare-fun size!32411 (BalanceConc!25924) Int)

(assert (=> b!4055013 (= e!2516299 (Some!9367 (tuple2!42411 (Token!13047 (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (seqFromList!5171 (_1!24340 lt!1447332))) (rule!10038 (_1!24339 (v!39779 lt!1447260))) (size!32411 (seqFromList!5171 (_1!24340 lt!1447332))) (_1!24340 lt!1447332)) (_2!24340 lt!1447332))))))

(declare-fun lt!1447331 () Unit!62690)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1371 (Regex!11859 List!43473) Unit!62690)

(assert (=> b!4055013 (= lt!1447331 (longestMatchIsAcceptedByMatchOrIsEmpty!1371 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447230))))

(declare-fun res!1653214 () Bool)

(declare-fun findLongestMatchInner!1398 (Regex!11859 List!43473 Int List!43473 List!43473 Int) tuple2!42412)

(assert (=> b!4055013 (= res!1653214 (isEmpty!25866 (_1!24340 (findLongestMatchInner!1398 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) Nil!43349 (size!32410 Nil!43349) lt!1447230 lt!1447230 (size!32410 lt!1447230)))))))

(declare-fun e!2516301 () Bool)

(assert (=> b!4055013 (=> res!1653214 e!2516301)))

(assert (=> b!4055013 e!2516301))

(declare-fun lt!1447328 () Unit!62690)

(assert (=> b!4055013 (= lt!1447328 lt!1447331)))

(declare-fun lt!1447329 () Unit!62690)

(declare-fun lemmaSemiInverse!1926 (TokenValueInjection!13796 BalanceConc!25924) Unit!62690)

(assert (=> b!4055013 (= lt!1447329 (lemmaSemiInverse!1926 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (seqFromList!5171 (_1!24340 lt!1447332))))))

(declare-fun b!4055014 () Bool)

(declare-fun res!1653217 () Bool)

(assert (=> b!4055014 (=> (not res!1653217) (not e!2516300))))

(assert (=> b!4055014 (= res!1653217 (= (value!218823 (_1!24339 (get!14217 lt!1447330))) (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (get!14217 lt!1447330)))) (seqFromList!5171 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447330)))))))))

(declare-fun b!4055015 () Bool)

(assert (=> b!4055015 (= e!2516300 (= (size!32409 (_1!24339 (get!14217 lt!1447330))) (size!32410 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447330))))))))

(declare-fun b!4055016 () Bool)

(declare-fun res!1653213 () Bool)

(assert (=> b!4055016 (=> (not res!1653213) (not e!2516300))))

(assert (=> b!4055016 (= res!1653213 (< (size!32410 (_2!24339 (get!14217 lt!1447330))) (size!32410 lt!1447230)))))

(declare-fun b!4055017 () Bool)

(assert (=> b!4055017 (= e!2516301 (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (_1!24340 (findLongestMatchInner!1398 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) Nil!43349 (size!32410 Nil!43349) lt!1447230 lt!1447230 (size!32410 lt!1447230)))))))

(assert (= (and d!1204440 c!700364) b!4055012))

(assert (= (and d!1204440 (not c!700364)) b!4055013))

(assert (= (and b!4055013 (not res!1653214)) b!4055017))

(assert (= (and d!1204440 (not res!1653212)) b!4055009))

(assert (= (and b!4055009 res!1653215) b!4055010))

(assert (= (and b!4055010 res!1653218) b!4055016))

(assert (= (and b!4055016 res!1653213) b!4055011))

(assert (= (and b!4055011 res!1653216) b!4055014))

(assert (= (and b!4055014 res!1653217) b!4055015))

(declare-fun m!4658075 () Bool)

(assert (=> b!4055015 m!4658075))

(declare-fun m!4658077 () Bool)

(assert (=> b!4055015 m!4658077))

(assert (=> b!4055011 m!4658075))

(declare-fun m!4658079 () Bool)

(assert (=> b!4055017 m!4658079))

(declare-fun m!4658081 () Bool)

(assert (=> b!4055017 m!4658081))

(assert (=> b!4055017 m!4658079))

(assert (=> b!4055017 m!4658081))

(declare-fun m!4658083 () Bool)

(assert (=> b!4055017 m!4658083))

(declare-fun m!4658085 () Bool)

(assert (=> b!4055017 m!4658085))

(declare-fun m!4658087 () Bool)

(assert (=> d!1204440 m!4658087))

(declare-fun m!4658089 () Bool)

(assert (=> d!1204440 m!4658089))

(declare-fun m!4658091 () Bool)

(assert (=> d!1204440 m!4658091))

(assert (=> d!1204440 m!4657737))

(assert (=> b!4055010 m!4658075))

(declare-fun m!4658095 () Bool)

(assert (=> b!4055010 m!4658095))

(assert (=> b!4055010 m!4658095))

(declare-fun m!4658099 () Bool)

(assert (=> b!4055010 m!4658099))

(assert (=> b!4055010 m!4658099))

(declare-fun m!4658101 () Bool)

(assert (=> b!4055010 m!4658101))

(assert (=> b!4055016 m!4658075))

(declare-fun m!4658103 () Bool)

(assert (=> b!4055016 m!4658103))

(assert (=> b!4055016 m!4658081))

(assert (=> b!4055013 m!4658079))

(assert (=> b!4055013 m!4658081))

(assert (=> b!4055013 m!4658083))

(declare-fun m!4658115 () Bool)

(assert (=> b!4055013 m!4658115))

(declare-fun m!4658117 () Bool)

(assert (=> b!4055013 m!4658117))

(declare-fun m!4658119 () Bool)

(assert (=> b!4055013 m!4658119))

(assert (=> b!4055013 m!4658115))

(declare-fun m!4658121 () Bool)

(assert (=> b!4055013 m!4658121))

(assert (=> b!4055013 m!4658115))

(assert (=> b!4055013 m!4658115))

(declare-fun m!4658127 () Bool)

(assert (=> b!4055013 m!4658127))

(assert (=> b!4055013 m!4658079))

(declare-fun m!4658135 () Bool)

(assert (=> b!4055013 m!4658135))

(assert (=> b!4055013 m!4658081))

(assert (=> b!4055009 m!4658075))

(assert (=> b!4055009 m!4658095))

(assert (=> b!4055009 m!4658095))

(assert (=> b!4055009 m!4658099))

(assert (=> b!4055009 m!4658099))

(declare-fun m!4658147 () Bool)

(assert (=> b!4055009 m!4658147))

(assert (=> b!4055014 m!4658075))

(declare-fun m!4658149 () Bool)

(assert (=> b!4055014 m!4658149))

(assert (=> b!4055014 m!4658149))

(declare-fun m!4658151 () Bool)

(assert (=> b!4055014 m!4658151))

(assert (=> b!4054826 d!1204440))

(declare-fun d!1204488 () Bool)

(declare-fun lt!1447355 () Int)

(assert (=> d!1204488 (>= lt!1447355 0)))

(declare-fun e!2516322 () Int)

(assert (=> d!1204488 (= lt!1447355 e!2516322)))

(declare-fun c!700376 () Bool)

(assert (=> d!1204488 (= c!700376 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204488 (= (size!32410 lt!1447238) lt!1447355)))

(declare-fun b!4055057 () Bool)

(assert (=> b!4055057 (= e!2516322 0)))

(declare-fun b!4055058 () Bool)

(assert (=> b!4055058 (= e!2516322 (+ 1 (size!32410 (t!336182 lt!1447238))))))

(assert (= (and d!1204488 c!700376) b!4055057))

(assert (= (and d!1204488 (not c!700376)) b!4055058))

(declare-fun m!4658175 () Bool)

(assert (=> b!4055058 m!4658175))

(assert (=> b!4054826 d!1204488))

(declare-fun lt!1447356 () List!43473)

(declare-fun b!4055062 () Bool)

(declare-fun e!2516324 () Bool)

(assert (=> b!4055062 (= e!2516324 (or (not (= newSuffixResult!27 Nil!43349)) (= lt!1447356 lt!1447238)))))

(declare-fun b!4055061 () Bool)

(declare-fun res!1653236 () Bool)

(assert (=> b!4055061 (=> (not res!1653236) (not e!2516324))))

(assert (=> b!4055061 (= res!1653236 (= (size!32410 lt!1447356) (+ (size!32410 lt!1447238) (size!32410 newSuffixResult!27))))))

(declare-fun b!4055060 () Bool)

(declare-fun e!2516323 () List!43473)

(assert (=> b!4055060 (= e!2516323 (Cons!43349 (h!48769 lt!1447238) (++!11356 (t!336182 lt!1447238) newSuffixResult!27)))))

(declare-fun d!1204492 () Bool)

(assert (=> d!1204492 e!2516324))

(declare-fun res!1653237 () Bool)

(assert (=> d!1204492 (=> (not res!1653237) (not e!2516324))))

(assert (=> d!1204492 (= res!1653237 (= (content!6600 lt!1447356) ((_ map or) (content!6600 lt!1447238) (content!6600 newSuffixResult!27))))))

(assert (=> d!1204492 (= lt!1447356 e!2516323)))

(declare-fun c!700377 () Bool)

(assert (=> d!1204492 (= c!700377 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204492 (= (++!11356 lt!1447238 newSuffixResult!27) lt!1447356)))

(declare-fun b!4055059 () Bool)

(assert (=> b!4055059 (= e!2516323 newSuffixResult!27)))

(assert (= (and d!1204492 c!700377) b!4055059))

(assert (= (and d!1204492 (not c!700377)) b!4055060))

(assert (= (and d!1204492 res!1653237) b!4055061))

(assert (= (and b!4055061 res!1653236) b!4055062))

(declare-fun m!4658191 () Bool)

(assert (=> b!4055061 m!4658191))

(assert (=> b!4055061 m!4657743))

(declare-fun m!4658193 () Bool)

(assert (=> b!4055061 m!4658193))

(declare-fun m!4658195 () Bool)

(assert (=> b!4055060 m!4658195))

(declare-fun m!4658197 () Bool)

(assert (=> d!1204492 m!4658197))

(assert (=> d!1204492 m!4657935))

(declare-fun m!4658199 () Bool)

(assert (=> d!1204492 m!4658199))

(assert (=> b!4054826 d!1204492))

(declare-fun d!1204496 () Bool)

(assert (=> d!1204496 (= (size!32409 token!484) (size!32410 (originalCharacters!7554 token!484)))))

(declare-fun Unit!62697 () Unit!62690)

(assert (=> d!1204496 (= (lemmaCharactersSize!1473 token!484) Unit!62697)))

(declare-fun bs!591721 () Bool)

(assert (= bs!591721 d!1204496))

(assert (=> bs!591721 m!4657839))

(assert (=> b!4054826 d!1204496))

(declare-fun d!1204500 () Bool)

(declare-fun fromListB!2355 (List!43473) BalanceConc!25924)

(assert (=> d!1204500 (= (seqFromList!5171 lt!1447238) (fromListB!2355 lt!1447238))))

(declare-fun bs!591723 () Bool)

(assert (= bs!591723 d!1204500))

(declare-fun m!4658221 () Bool)

(assert (=> bs!591723 m!4658221))

(assert (=> b!4054826 d!1204500))

(declare-fun b!4055072 () Bool)

(declare-fun e!2516331 () Bool)

(assert (=> b!4055072 (= e!2516331 (>= (size!32410 lt!1447221) (size!32410 lt!1447238)))))

(declare-fun b!4055069 () Bool)

(declare-fun e!2516330 () Bool)

(declare-fun e!2516329 () Bool)

(assert (=> b!4055069 (= e!2516330 e!2516329)))

(declare-fun res!1653244 () Bool)

(assert (=> b!4055069 (=> (not res!1653244) (not e!2516329))))

(assert (=> b!4055069 (= res!1653244 (not ((_ is Nil!43349) lt!1447221)))))

(declare-fun b!4055070 () Bool)

(declare-fun res!1653243 () Bool)

(assert (=> b!4055070 (=> (not res!1653243) (not e!2516329))))

(assert (=> b!4055070 (= res!1653243 (= (head!8565 lt!1447238) (head!8565 lt!1447221)))))

(declare-fun d!1204508 () Bool)

(assert (=> d!1204508 e!2516331))

(declare-fun res!1653245 () Bool)

(assert (=> d!1204508 (=> res!1653245 e!2516331)))

(declare-fun lt!1447365 () Bool)

(assert (=> d!1204508 (= res!1653245 (not lt!1447365))))

(assert (=> d!1204508 (= lt!1447365 e!2516330)))

(declare-fun res!1653242 () Bool)

(assert (=> d!1204508 (=> res!1653242 e!2516330)))

(assert (=> d!1204508 (= res!1653242 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204508 (= (isPrefix!4041 lt!1447238 lt!1447221) lt!1447365)))

(declare-fun b!4055071 () Bool)

(assert (=> b!4055071 (= e!2516329 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 lt!1447221)))))

(assert (= (and d!1204508 (not res!1653242)) b!4055069))

(assert (= (and b!4055069 res!1653244) b!4055070))

(assert (= (and b!4055070 res!1653243) b!4055071))

(assert (= (and d!1204508 (not res!1653245)) b!4055072))

(declare-fun m!4658223 () Bool)

(assert (=> b!4055072 m!4658223))

(assert (=> b!4055072 m!4657743))

(assert (=> b!4055070 m!4657913))

(declare-fun m!4658225 () Bool)

(assert (=> b!4055070 m!4658225))

(assert (=> b!4055071 m!4657917))

(declare-fun m!4658227 () Bool)

(assert (=> b!4055071 m!4658227))

(assert (=> b!4055071 m!4657917))

(assert (=> b!4055071 m!4658227))

(declare-fun m!4658229 () Bool)

(assert (=> b!4055071 m!4658229))

(assert (=> b!4054826 d!1204508))

(declare-fun d!1204512 () Bool)

(assert (=> d!1204512 (isPrefix!4041 lt!1447238 (++!11356 lt!1447238 newSuffixResult!27))))

(declare-fun lt!1447366 () Unit!62690)

(assert (=> d!1204512 (= lt!1447366 (choose!24595 lt!1447238 newSuffixResult!27))))

(assert (=> d!1204512 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 newSuffixResult!27) lt!1447366)))

(declare-fun bs!591724 () Bool)

(assert (= bs!591724 d!1204512))

(assert (=> bs!591724 m!4657723))

(assert (=> bs!591724 m!4657723))

(assert (=> bs!591724 m!4657751))

(declare-fun m!4658231 () Bool)

(assert (=> bs!591724 m!4658231))

(assert (=> b!4054826 d!1204512))

(declare-fun d!1204514 () Bool)

(assert (=> d!1204514 (ruleValid!2884 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))

(declare-fun lt!1447369 () Unit!62690)

(declare-fun choose!24597 (LexerInterface!6543 Rule!13708 List!43475) Unit!62690)

(assert (=> d!1204514 (= lt!1447369 (choose!24597 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) rules!2999))))

(assert (=> d!1204514 (contains!8622 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))

(assert (=> d!1204514 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1954 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) rules!2999) lt!1447369)))

(declare-fun bs!591725 () Bool)

(assert (= bs!591725 d!1204514))

(assert (=> bs!591725 m!4657737))

(declare-fun m!4658237 () Bool)

(assert (=> bs!591725 m!4658237))

(declare-fun m!4658239 () Bool)

(assert (=> bs!591725 m!4658239))

(assert (=> b!4054826 d!1204514))

(declare-fun d!1204518 () Bool)

(assert (=> d!1204518 (= (maxPrefixOneRule!2853 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447230) (Some!9367 (tuple2!42411 (Token!13047 (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (seqFromList!5171 lt!1447238)) (rule!10038 (_1!24339 (v!39779 lt!1447260))) (size!32410 lt!1447238) lt!1447238) (_2!24339 (v!39779 lt!1447260)))))))

(declare-fun lt!1447378 () Unit!62690)

(declare-fun choose!24598 (LexerInterface!6543 List!43475 List!43473 List!43473 List!43473 Rule!13708) Unit!62690)

(assert (=> d!1204518 (= lt!1447378 (choose!24598 thiss!21717 rules!2999 lt!1447238 lt!1447230 (_2!24339 (v!39779 lt!1447260)) (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(assert (=> d!1204518 (not (isEmpty!25863 rules!2999))))

(assert (=> d!1204518 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1659 thiss!21717 rules!2999 lt!1447238 lt!1447230 (_2!24339 (v!39779 lt!1447260)) (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447378)))

(declare-fun bs!591730 () Bool)

(assert (= bs!591730 d!1204518))

(assert (=> bs!591730 m!4657725))

(assert (=> bs!591730 m!4657725))

(assert (=> bs!591730 m!4657727))

(assert (=> bs!591730 m!4657743))

(declare-fun m!4658261 () Bool)

(assert (=> bs!591730 m!4658261))

(assert (=> bs!591730 m!4657877))

(assert (=> bs!591730 m!4657739))

(assert (=> b!4054826 d!1204518))

(declare-fun b!4055084 () Bool)

(declare-fun e!2516340 () Bool)

(assert (=> b!4055084 (= e!2516340 (>= (size!32410 (++!11356 lt!1447238 newSuffixResult!27)) (size!32410 lt!1447238)))))

(declare-fun b!4055081 () Bool)

(declare-fun e!2516339 () Bool)

(declare-fun e!2516338 () Bool)

(assert (=> b!4055081 (= e!2516339 e!2516338)))

(declare-fun res!1653251 () Bool)

(assert (=> b!4055081 (=> (not res!1653251) (not e!2516338))))

(assert (=> b!4055081 (= res!1653251 (not ((_ is Nil!43349) (++!11356 lt!1447238 newSuffixResult!27))))))

(declare-fun b!4055082 () Bool)

(declare-fun res!1653250 () Bool)

(assert (=> b!4055082 (=> (not res!1653250) (not e!2516338))))

(assert (=> b!4055082 (= res!1653250 (= (head!8565 lt!1447238) (head!8565 (++!11356 lt!1447238 newSuffixResult!27))))))

(declare-fun d!1204530 () Bool)

(assert (=> d!1204530 e!2516340))

(declare-fun res!1653252 () Bool)

(assert (=> d!1204530 (=> res!1653252 e!2516340)))

(declare-fun lt!1447379 () Bool)

(assert (=> d!1204530 (= res!1653252 (not lt!1447379))))

(assert (=> d!1204530 (= lt!1447379 e!2516339)))

(declare-fun res!1653249 () Bool)

(assert (=> d!1204530 (=> res!1653249 e!2516339)))

(assert (=> d!1204530 (= res!1653249 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204530 (= (isPrefix!4041 lt!1447238 (++!11356 lt!1447238 newSuffixResult!27)) lt!1447379)))

(declare-fun b!4055083 () Bool)

(assert (=> b!4055083 (= e!2516338 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 (++!11356 lt!1447238 newSuffixResult!27))))))

(assert (= (and d!1204530 (not res!1653249)) b!4055081))

(assert (= (and b!4055081 res!1653251) b!4055082))

(assert (= (and b!4055082 res!1653250) b!4055083))

(assert (= (and d!1204530 (not res!1653252)) b!4055084))

(assert (=> b!4055084 m!4657723))

(declare-fun m!4658263 () Bool)

(assert (=> b!4055084 m!4658263))

(assert (=> b!4055084 m!4657743))

(assert (=> b!4055082 m!4657913))

(assert (=> b!4055082 m!4657723))

(declare-fun m!4658265 () Bool)

(assert (=> b!4055082 m!4658265))

(assert (=> b!4055083 m!4657917))

(assert (=> b!4055083 m!4657723))

(declare-fun m!4658267 () Bool)

(assert (=> b!4055083 m!4658267))

(assert (=> b!4055083 m!4657917))

(assert (=> b!4055083 m!4658267))

(declare-fun m!4658269 () Bool)

(assert (=> b!4055083 m!4658269))

(assert (=> b!4054826 d!1204530))

(declare-fun d!1204532 () Bool)

(assert (=> d!1204532 (= (size!32409 (_1!24339 (v!39779 lt!1447260))) (size!32410 (originalCharacters!7554 (_1!24339 (v!39779 lt!1447260)))))))

(declare-fun Unit!62699 () Unit!62690)

(assert (=> d!1204532 (= (lemmaCharactersSize!1473 (_1!24339 (v!39779 lt!1447260))) Unit!62699)))

(declare-fun bs!591731 () Bool)

(assert (= bs!591731 d!1204532))

(declare-fun m!4658271 () Bool)

(assert (=> bs!591731 m!4658271))

(assert (=> b!4054826 d!1204532))

(declare-fun d!1204534 () Bool)

(declare-fun dynLambda!18411 (Int BalanceConc!25924) TokenValue!7184)

(assert (=> d!1204534 (= (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (seqFromList!5171 lt!1447238)) (dynLambda!18411 (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (seqFromList!5171 lt!1447238)))))

(declare-fun b_lambda!118477 () Bool)

(assert (=> (not b_lambda!118477) (not d!1204534)))

(declare-fun t!336190 () Bool)

(declare-fun tb!243941 () Bool)

(assert (=> (and b!4054811 (= (toValue!9510 (transformation!6954 (h!48771 rules!2999))) (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336190) tb!243941))

(declare-fun result!295576 () Bool)

(assert (=> tb!243941 (= result!295576 (inv!21 (dynLambda!18411 (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (seqFromList!5171 lt!1447238))))))

(declare-fun m!4658273 () Bool)

(assert (=> tb!243941 m!4658273))

(assert (=> d!1204534 t!336190))

(declare-fun b_and!311823 () Bool)

(assert (= b_and!311811 (and (=> t!336190 result!295576) b_and!311823)))

(declare-fun t!336192 () Bool)

(declare-fun tb!243943 () Bool)

(assert (=> (and b!4054825 (= (toValue!9510 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336192) tb!243943))

(declare-fun result!295580 () Bool)

(assert (= result!295580 result!295576))

(assert (=> d!1204534 t!336192))

(declare-fun b_and!311825 () Bool)

(assert (= b_and!311815 (and (=> t!336192 result!295580) b_and!311825)))

(assert (=> d!1204534 m!4657725))

(declare-fun m!4658275 () Bool)

(assert (=> d!1204534 m!4658275))

(assert (=> b!4054826 d!1204534))

(declare-fun d!1204536 () Bool)

(declare-fun lt!1447384 () BalanceConc!25924)

(assert (=> d!1204536 (= (list!16152 lt!1447384) (originalCharacters!7554 (_1!24339 (v!39779 lt!1447260))))))

(declare-fun dynLambda!18412 (Int TokenValue!7184) BalanceConc!25924)

(assert (=> d!1204536 (= lt!1447384 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (value!218823 (_1!24339 (v!39779 lt!1447260)))))))

(assert (=> d!1204536 (= (charsOf!4770 (_1!24339 (v!39779 lt!1447260))) lt!1447384)))

(declare-fun b_lambda!118479 () Bool)

(assert (=> (not b_lambda!118479) (not d!1204536)))

(declare-fun t!336194 () Bool)

(declare-fun tb!243945 () Bool)

(assert (=> (and b!4054811 (= (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336194) tb!243945))

(declare-fun b!4055095 () Bool)

(declare-fun e!2516348 () Bool)

(declare-fun tp!1229248 () Bool)

(declare-fun inv!57950 (Conc!13165) Bool)

(assert (=> b!4055095 (= e!2516348 (and (inv!57950 (c!700336 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (value!218823 (_1!24339 (v!39779 lt!1447260)))))) tp!1229248))))

(declare-fun result!295582 () Bool)

(declare-fun inv!57951 (BalanceConc!25924) Bool)

(assert (=> tb!243945 (= result!295582 (and (inv!57951 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (value!218823 (_1!24339 (v!39779 lt!1447260))))) e!2516348))))

(assert (= tb!243945 b!4055095))

(declare-fun m!4658289 () Bool)

(assert (=> b!4055095 m!4658289))

(declare-fun m!4658291 () Bool)

(assert (=> tb!243945 m!4658291))

(assert (=> d!1204536 t!336194))

(declare-fun b_and!311827 () Bool)

(assert (= b_and!311813 (and (=> t!336194 result!295582) b_and!311827)))

(declare-fun t!336196 () Bool)

(declare-fun tb!243947 () Bool)

(assert (=> (and b!4054825 (= (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336196) tb!243947))

(declare-fun result!295586 () Bool)

(assert (= result!295586 result!295582))

(assert (=> d!1204536 t!336196))

(declare-fun b_and!311829 () Bool)

(assert (= b_and!311817 (and (=> t!336196 result!295586) b_and!311829)))

(declare-fun m!4658293 () Bool)

(assert (=> d!1204536 m!4658293))

(declare-fun m!4658297 () Bool)

(assert (=> d!1204536 m!4658297))

(assert (=> b!4054826 d!1204536))

(declare-fun d!1204544 () Bool)

(declare-fun e!2516352 () Bool)

(assert (=> d!1204544 e!2516352))

(declare-fun res!1653258 () Bool)

(assert (=> d!1204544 (=> (not res!1653258) (not e!2516352))))

(declare-fun semiInverseModEq!2970 (Int Int) Bool)

(assert (=> d!1204544 (= res!1653258 (semiInverseModEq!2970 (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(declare-fun Unit!62700 () Unit!62690)

(assert (=> d!1204544 (= (lemmaInv!1163 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) Unit!62700)))

(declare-fun b!4055099 () Bool)

(declare-fun equivClasses!2869 (Int Int) Bool)

(assert (=> b!4055099 (= e!2516352 (equivClasses!2869 (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))) (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(assert (= (and d!1204544 res!1653258) b!4055099))

(declare-fun m!4658301 () Bool)

(assert (=> d!1204544 m!4658301))

(declare-fun m!4658303 () Bool)

(assert (=> b!4055099 m!4658303))

(assert (=> b!4054826 d!1204544))

(declare-fun d!1204546 () Bool)

(declare-fun list!16153 (Conc!13165) List!43473)

(assert (=> d!1204546 (= (list!16152 (charsOf!4770 (_1!24339 (v!39779 lt!1447260)))) (list!16153 (c!700336 (charsOf!4770 (_1!24339 (v!39779 lt!1447260))))))))

(declare-fun bs!591733 () Bool)

(assert (= bs!591733 d!1204546))

(declare-fun m!4658305 () Bool)

(assert (=> bs!591733 m!4658305))

(assert (=> b!4054826 d!1204546))

(declare-fun d!1204548 () Bool)

(assert (=> d!1204548 (isPrefix!4041 lt!1447238 (++!11356 lt!1447238 (_2!24339 (v!39779 lt!1447260))))))

(declare-fun lt!1447387 () Unit!62690)

(assert (=> d!1204548 (= lt!1447387 (choose!24595 lt!1447238 (_2!24339 (v!39779 lt!1447260))))))

(assert (=> d!1204548 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447238 (_2!24339 (v!39779 lt!1447260))) lt!1447387)))

(declare-fun bs!591734 () Bool)

(assert (= bs!591734 d!1204548))

(assert (=> bs!591734 m!4657745))

(assert (=> bs!591734 m!4657745))

(declare-fun m!4658307 () Bool)

(assert (=> bs!591734 m!4658307))

(declare-fun m!4658309 () Bool)

(assert (=> bs!591734 m!4658309))

(assert (=> b!4054826 d!1204548))

(declare-fun d!1204550 () Bool)

(declare-fun res!1653263 () Bool)

(declare-fun e!2516355 () Bool)

(assert (=> d!1204550 (=> (not res!1653263) (not e!2516355))))

(declare-fun validRegex!5362 (Regex!11859) Bool)

(assert (=> d!1204550 (= res!1653263 (validRegex!5362 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(assert (=> d!1204550 (= (ruleValid!2884 thiss!21717 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) e!2516355)))

(declare-fun b!4055104 () Bool)

(declare-fun res!1653264 () Bool)

(assert (=> b!4055104 (=> (not res!1653264) (not e!2516355))))

(declare-fun nullable!4162 (Regex!11859) Bool)

(assert (=> b!4055104 (= res!1653264 (not (nullable!4162 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(declare-fun b!4055105 () Bool)

(assert (=> b!4055105 (= e!2516355 (not (= (tag!7814 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (String!49639 ""))))))

(assert (= (and d!1204550 res!1653263) b!4055104))

(assert (= (and b!4055104 res!1653264) b!4055105))

(declare-fun m!4658311 () Bool)

(assert (=> d!1204550 m!4658311))

(declare-fun m!4658313 () Bool)

(assert (=> b!4055104 m!4658313))

(assert (=> b!4054826 d!1204550))

(declare-fun lt!1447388 () List!43473)

(declare-fun e!2516357 () Bool)

(declare-fun b!4055109 () Bool)

(assert (=> b!4055109 (= e!2516357 (or (not (= lt!1447212 Nil!43349)) (= lt!1447388 prefix!494)))))

(declare-fun b!4055108 () Bool)

(declare-fun res!1653265 () Bool)

(assert (=> b!4055108 (=> (not res!1653265) (not e!2516357))))

(assert (=> b!4055108 (= res!1653265 (= (size!32410 lt!1447388) (+ (size!32410 prefix!494) (size!32410 lt!1447212))))))

(declare-fun b!4055107 () Bool)

(declare-fun e!2516356 () List!43473)

(assert (=> b!4055107 (= e!2516356 (Cons!43349 (h!48769 prefix!494) (++!11356 (t!336182 prefix!494) lt!1447212)))))

(declare-fun d!1204552 () Bool)

(assert (=> d!1204552 e!2516357))

(declare-fun res!1653266 () Bool)

(assert (=> d!1204552 (=> (not res!1653266) (not e!2516357))))

(assert (=> d!1204552 (= res!1653266 (= (content!6600 lt!1447388) ((_ map or) (content!6600 prefix!494) (content!6600 lt!1447212))))))

(assert (=> d!1204552 (= lt!1447388 e!2516356)))

(declare-fun c!700380 () Bool)

(assert (=> d!1204552 (= c!700380 ((_ is Nil!43349) prefix!494))))

(assert (=> d!1204552 (= (++!11356 prefix!494 lt!1447212) lt!1447388)))

(declare-fun b!4055106 () Bool)

(assert (=> b!4055106 (= e!2516356 lt!1447212)))

(assert (= (and d!1204552 c!700380) b!4055106))

(assert (= (and d!1204552 (not c!700380)) b!4055107))

(assert (= (and d!1204552 res!1653266) b!4055108))

(assert (= (and b!4055108 res!1653265) b!4055109))

(declare-fun m!4658315 () Bool)

(assert (=> b!4055108 m!4658315))

(assert (=> b!4055108 m!4657787))

(declare-fun m!4658317 () Bool)

(assert (=> b!4055108 m!4658317))

(declare-fun m!4658319 () Bool)

(assert (=> b!4055107 m!4658319))

(declare-fun m!4658321 () Bool)

(assert (=> d!1204552 m!4658321))

(declare-fun m!4658323 () Bool)

(assert (=> d!1204552 m!4658323))

(declare-fun m!4658325 () Bool)

(assert (=> d!1204552 m!4658325))

(assert (=> b!4054804 d!1204552))

(declare-fun e!2516359 () Bool)

(declare-fun b!4055113 () Bool)

(declare-fun lt!1447389 () List!43473)

(assert (=> b!4055113 (= e!2516359 (or (not (= lt!1447232 Nil!43349)) (= lt!1447389 lt!1447230)))))

(declare-fun b!4055112 () Bool)

(declare-fun res!1653267 () Bool)

(assert (=> b!4055112 (=> (not res!1653267) (not e!2516359))))

(assert (=> b!4055112 (= res!1653267 (= (size!32410 lt!1447389) (+ (size!32410 lt!1447230) (size!32410 lt!1447232))))))

(declare-fun b!4055111 () Bool)

(declare-fun e!2516358 () List!43473)

(assert (=> b!4055111 (= e!2516358 (Cons!43349 (h!48769 lt!1447230) (++!11356 (t!336182 lt!1447230) lt!1447232)))))

(declare-fun d!1204554 () Bool)

(assert (=> d!1204554 e!2516359))

(declare-fun res!1653268 () Bool)

(assert (=> d!1204554 (=> (not res!1653268) (not e!2516359))))

(assert (=> d!1204554 (= res!1653268 (= (content!6600 lt!1447389) ((_ map or) (content!6600 lt!1447230) (content!6600 lt!1447232))))))

(assert (=> d!1204554 (= lt!1447389 e!2516358)))

(declare-fun c!700381 () Bool)

(assert (=> d!1204554 (= c!700381 ((_ is Nil!43349) lt!1447230))))

(assert (=> d!1204554 (= (++!11356 lt!1447230 lt!1447232) lt!1447389)))

(declare-fun b!4055110 () Bool)

(assert (=> b!4055110 (= e!2516358 lt!1447232)))

(assert (= (and d!1204554 c!700381) b!4055110))

(assert (= (and d!1204554 (not c!700381)) b!4055111))

(assert (= (and d!1204554 res!1653268) b!4055112))

(assert (= (and b!4055112 res!1653267) b!4055113))

(declare-fun m!4658327 () Bool)

(assert (=> b!4055112 m!4658327))

(assert (=> b!4055112 m!4658081))

(declare-fun m!4658329 () Bool)

(assert (=> b!4055112 m!4658329))

(declare-fun m!4658331 () Bool)

(assert (=> b!4055111 m!4658331))

(declare-fun m!4658333 () Bool)

(assert (=> d!1204554 m!4658333))

(declare-fun m!4658335 () Bool)

(assert (=> d!1204554 m!4658335))

(declare-fun m!4658337 () Bool)

(assert (=> d!1204554 m!4658337))

(assert (=> b!4054804 d!1204554))

(declare-fun d!1204556 () Bool)

(assert (=> d!1204556 (= (++!11356 (++!11356 prefix!494 newSuffix!27) lt!1447232) (++!11356 prefix!494 (++!11356 newSuffix!27 lt!1447232)))))

(declare-fun lt!1447392 () Unit!62690)

(declare-fun choose!24601 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> d!1204556 (= lt!1447392 (choose!24601 prefix!494 newSuffix!27 lt!1447232))))

(assert (=> d!1204556 (= (lemmaConcatAssociativity!2658 prefix!494 newSuffix!27 lt!1447232) lt!1447392)))

(declare-fun bs!591735 () Bool)

(assert (= bs!591735 d!1204556))

(assert (=> bs!591735 m!4657869))

(declare-fun m!4658339 () Bool)

(assert (=> bs!591735 m!4658339))

(assert (=> bs!591735 m!4657865))

(assert (=> bs!591735 m!4657869))

(declare-fun m!4658341 () Bool)

(assert (=> bs!591735 m!4658341))

(assert (=> bs!591735 m!4657865))

(declare-fun m!4658343 () Bool)

(assert (=> bs!591735 m!4658343))

(assert (=> b!4054804 d!1204556))

(declare-fun d!1204558 () Bool)

(assert (=> d!1204558 (= (inv!57945 (tag!7814 (rule!10038 token!484))) (= (mod (str.len (value!218822 (tag!7814 (rule!10038 token!484)))) 2) 0))))

(assert (=> b!4054808 d!1204558))

(declare-fun d!1204560 () Bool)

(declare-fun res!1653271 () Bool)

(declare-fun e!2516362 () Bool)

(assert (=> d!1204560 (=> (not res!1653271) (not e!2516362))))

(assert (=> d!1204560 (= res!1653271 (semiInverseModEq!2970 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))))))

(assert (=> d!1204560 (= (inv!57949 (transformation!6954 (rule!10038 token!484))) e!2516362)))

(declare-fun b!4055116 () Bool)

(assert (=> b!4055116 (= e!2516362 (equivClasses!2869 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))))))

(assert (= (and d!1204560 res!1653271) b!4055116))

(declare-fun m!4658345 () Bool)

(assert (=> d!1204560 m!4658345))

(declare-fun m!4658347 () Bool)

(assert (=> b!4055116 m!4658347))

(assert (=> b!4054808 d!1204560))

(declare-fun d!1204562 () Bool)

(declare-fun lt!1447393 () Int)

(assert (=> d!1204562 (>= lt!1447393 0)))

(declare-fun e!2516363 () Int)

(assert (=> d!1204562 (= lt!1447393 e!2516363)))

(declare-fun c!700382 () Bool)

(assert (=> d!1204562 (= c!700382 ((_ is Nil!43349) suffix!1299))))

(assert (=> d!1204562 (= (size!32410 suffix!1299) lt!1447393)))

(declare-fun b!4055117 () Bool)

(assert (=> b!4055117 (= e!2516363 0)))

(declare-fun b!4055118 () Bool)

(assert (=> b!4055118 (= e!2516363 (+ 1 (size!32410 (t!336182 suffix!1299))))))

(assert (= (and d!1204562 c!700382) b!4055117))

(assert (= (and d!1204562 (not c!700382)) b!4055118))

(declare-fun m!4658349 () Bool)

(assert (=> b!4055118 m!4658349))

(assert (=> b!4054829 d!1204562))

(declare-fun d!1204564 () Bool)

(declare-fun lt!1447394 () Int)

(assert (=> d!1204564 (>= lt!1447394 0)))

(declare-fun e!2516364 () Int)

(assert (=> d!1204564 (= lt!1447394 e!2516364)))

(declare-fun c!700383 () Bool)

(assert (=> d!1204564 (= c!700383 ((_ is Nil!43349) newSuffix!27))))

(assert (=> d!1204564 (= (size!32410 newSuffix!27) lt!1447394)))

(declare-fun b!4055119 () Bool)

(assert (=> b!4055119 (= e!2516364 0)))

(declare-fun b!4055120 () Bool)

(assert (=> b!4055120 (= e!2516364 (+ 1 (size!32410 (t!336182 newSuffix!27))))))

(assert (= (and d!1204564 c!700383) b!4055119))

(assert (= (and d!1204564 (not c!700383)) b!4055120))

(declare-fun m!4658351 () Bool)

(assert (=> b!4055120 m!4658351))

(assert (=> b!4054829 d!1204564))

(declare-fun b!4055124 () Bool)

(declare-fun e!2516366 () Bool)

(declare-fun lt!1447395 () List!43473)

(assert (=> b!4055124 (= e!2516366 (or (not (= lt!1447258 Nil!43349)) (= lt!1447395 lt!1447241)))))

(declare-fun b!4055123 () Bool)

(declare-fun res!1653272 () Bool)

(assert (=> b!4055123 (=> (not res!1653272) (not e!2516366))))

(assert (=> b!4055123 (= res!1653272 (= (size!32410 lt!1447395) (+ (size!32410 lt!1447241) (size!32410 lt!1447258))))))

(declare-fun b!4055122 () Bool)

(declare-fun e!2516365 () List!43473)

(assert (=> b!4055122 (= e!2516365 (Cons!43349 (h!48769 lt!1447241) (++!11356 (t!336182 lt!1447241) lt!1447258)))))

(declare-fun d!1204566 () Bool)

(assert (=> d!1204566 e!2516366))

(declare-fun res!1653273 () Bool)

(assert (=> d!1204566 (=> (not res!1653273) (not e!2516366))))

(assert (=> d!1204566 (= res!1653273 (= (content!6600 lt!1447395) ((_ map or) (content!6600 lt!1447241) (content!6600 lt!1447258))))))

(assert (=> d!1204566 (= lt!1447395 e!2516365)))

(declare-fun c!700384 () Bool)

(assert (=> d!1204566 (= c!700384 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204566 (= (++!11356 lt!1447241 lt!1447258) lt!1447395)))

(declare-fun b!4055121 () Bool)

(assert (=> b!4055121 (= e!2516365 lt!1447258)))

(assert (= (and d!1204566 c!700384) b!4055121))

(assert (= (and d!1204566 (not c!700384)) b!4055122))

(assert (= (and d!1204566 res!1653273) b!4055123))

(assert (= (and b!4055123 res!1653272) b!4055124))

(declare-fun m!4658353 () Bool)

(assert (=> b!4055123 m!4658353))

(assert (=> b!4055123 m!4657785))

(declare-fun m!4658355 () Bool)

(assert (=> b!4055123 m!4658355))

(declare-fun m!4658357 () Bool)

(assert (=> b!4055122 m!4658357))

(declare-fun m!4658359 () Bool)

(assert (=> d!1204566 m!4658359))

(declare-fun m!4658361 () Bool)

(assert (=> d!1204566 m!4658361))

(declare-fun m!4658363 () Bool)

(assert (=> d!1204566 m!4658363))

(assert (=> b!4054807 d!1204566))

(declare-fun lt!1447396 () List!43473)

(declare-fun e!2516368 () Bool)

(declare-fun b!4055128 () Bool)

(assert (=> b!4055128 (= e!2516368 (or (not (= suffix!1299 Nil!43349)) (= lt!1447396 lt!1447205)))))

(declare-fun b!4055127 () Bool)

(declare-fun res!1653274 () Bool)

(assert (=> b!4055127 (=> (not res!1653274) (not e!2516368))))

(assert (=> b!4055127 (= res!1653274 (= (size!32410 lt!1447396) (+ (size!32410 lt!1447205) (size!32410 suffix!1299))))))

(declare-fun b!4055126 () Bool)

(declare-fun e!2516367 () List!43473)

(assert (=> b!4055126 (= e!2516367 (Cons!43349 (h!48769 lt!1447205) (++!11356 (t!336182 lt!1447205) suffix!1299)))))

(declare-fun d!1204568 () Bool)

(assert (=> d!1204568 e!2516368))

(declare-fun res!1653275 () Bool)

(assert (=> d!1204568 (=> (not res!1653275) (not e!2516368))))

(assert (=> d!1204568 (= res!1653275 (= (content!6600 lt!1447396) ((_ map or) (content!6600 lt!1447205) (content!6600 suffix!1299))))))

(assert (=> d!1204568 (= lt!1447396 e!2516367)))

(declare-fun c!700385 () Bool)

(assert (=> d!1204568 (= c!700385 ((_ is Nil!43349) lt!1447205))))

(assert (=> d!1204568 (= (++!11356 lt!1447205 suffix!1299) lt!1447396)))

(declare-fun b!4055125 () Bool)

(assert (=> b!4055125 (= e!2516367 suffix!1299)))

(assert (= (and d!1204568 c!700385) b!4055125))

(assert (= (and d!1204568 (not c!700385)) b!4055126))

(assert (= (and d!1204568 res!1653275) b!4055127))

(assert (= (and b!4055127 res!1653274) b!4055128))

(declare-fun m!4658365 () Bool)

(assert (=> b!4055127 m!4658365))

(declare-fun m!4658367 () Bool)

(assert (=> b!4055127 m!4658367))

(assert (=> b!4055127 m!4657879))

(declare-fun m!4658369 () Bool)

(assert (=> b!4055126 m!4658369))

(declare-fun m!4658371 () Bool)

(assert (=> d!1204568 m!4658371))

(declare-fun m!4658373 () Bool)

(assert (=> d!1204568 m!4658373))

(declare-fun m!4658375 () Bool)

(assert (=> d!1204568 m!4658375))

(assert (=> b!4054807 d!1204568))

(declare-fun b!4055132 () Bool)

(declare-fun lt!1447397 () List!43473)

(declare-fun e!2516370 () Bool)

(assert (=> b!4055132 (= e!2516370 (or (not (= suffix!1299 Nil!43349)) (= lt!1447397 lt!1447210)))))

(declare-fun b!4055131 () Bool)

(declare-fun res!1653276 () Bool)

(assert (=> b!4055131 (=> (not res!1653276) (not e!2516370))))

(assert (=> b!4055131 (= res!1653276 (= (size!32410 lt!1447397) (+ (size!32410 lt!1447210) (size!32410 suffix!1299))))))

(declare-fun b!4055130 () Bool)

(declare-fun e!2516369 () List!43473)

(assert (=> b!4055130 (= e!2516369 (Cons!43349 (h!48769 lt!1447210) (++!11356 (t!336182 lt!1447210) suffix!1299)))))

(declare-fun d!1204570 () Bool)

(assert (=> d!1204570 e!2516370))

(declare-fun res!1653277 () Bool)

(assert (=> d!1204570 (=> (not res!1653277) (not e!2516370))))

(assert (=> d!1204570 (= res!1653277 (= (content!6600 lt!1447397) ((_ map or) (content!6600 lt!1447210) (content!6600 suffix!1299))))))

(assert (=> d!1204570 (= lt!1447397 e!2516369)))

(declare-fun c!700386 () Bool)

(assert (=> d!1204570 (= c!700386 ((_ is Nil!43349) lt!1447210))))

(assert (=> d!1204570 (= (++!11356 lt!1447210 suffix!1299) lt!1447397)))

(declare-fun b!4055129 () Bool)

(assert (=> b!4055129 (= e!2516369 suffix!1299)))

(assert (= (and d!1204570 c!700386) b!4055129))

(assert (= (and d!1204570 (not c!700386)) b!4055130))

(assert (= (and d!1204570 res!1653277) b!4055131))

(assert (= (and b!4055131 res!1653276) b!4055132))

(declare-fun m!4658377 () Bool)

(assert (=> b!4055131 m!4658377))

(declare-fun m!4658379 () Bool)

(assert (=> b!4055131 m!4658379))

(assert (=> b!4055131 m!4657879))

(declare-fun m!4658381 () Bool)

(assert (=> b!4055130 m!4658381))

(declare-fun m!4658383 () Bool)

(assert (=> d!1204570 m!4658383))

(declare-fun m!4658385 () Bool)

(assert (=> d!1204570 m!4658385))

(assert (=> d!1204570 m!4658375))

(assert (=> b!4054807 d!1204570))

(declare-fun d!1204572 () Bool)

(assert (=> d!1204572 (= (++!11356 (++!11356 lt!1447241 lt!1447210) suffix!1299) (++!11356 lt!1447241 (++!11356 lt!1447210 suffix!1299)))))

(declare-fun lt!1447398 () Unit!62690)

(assert (=> d!1204572 (= lt!1447398 (choose!24601 lt!1447241 lt!1447210 suffix!1299))))

(assert (=> d!1204572 (= (lemmaConcatAssociativity!2658 lt!1447241 lt!1447210 suffix!1299) lt!1447398)))

(declare-fun bs!591736 () Bool)

(assert (= bs!591736 d!1204572))

(assert (=> bs!591736 m!4657845))

(declare-fun m!4658387 () Bool)

(assert (=> bs!591736 m!4658387))

(assert (=> bs!591736 m!4657851))

(assert (=> bs!591736 m!4657845))

(declare-fun m!4658389 () Bool)

(assert (=> bs!591736 m!4658389))

(assert (=> bs!591736 m!4657851))

(declare-fun m!4658391 () Bool)

(assert (=> bs!591736 m!4658391))

(assert (=> b!4054807 d!1204572))

(declare-fun d!1204574 () Bool)

(declare-fun res!1653282 () Bool)

(declare-fun e!2516373 () Bool)

(assert (=> d!1204574 (=> (not res!1653282) (not e!2516373))))

(assert (=> d!1204574 (= res!1653282 (not (isEmpty!25866 (originalCharacters!7554 token!484))))))

(assert (=> d!1204574 (= (inv!57948 token!484) e!2516373)))

(declare-fun b!4055137 () Bool)

(declare-fun res!1653283 () Bool)

(assert (=> b!4055137 (=> (not res!1653283) (not e!2516373))))

(assert (=> b!4055137 (= res!1653283 (= (originalCharacters!7554 token!484) (list!16152 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (value!218823 token!484)))))))

(declare-fun b!4055138 () Bool)

(assert (=> b!4055138 (= e!2516373 (= (size!32409 token!484) (size!32410 (originalCharacters!7554 token!484))))))

(assert (= (and d!1204574 res!1653282) b!4055137))

(assert (= (and b!4055137 res!1653283) b!4055138))

(declare-fun b_lambda!118481 () Bool)

(assert (=> (not b_lambda!118481) (not b!4055137)))

(declare-fun t!336198 () Bool)

(declare-fun tb!243949 () Bool)

(assert (=> (and b!4054811 (= (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toChars!9369 (transformation!6954 (rule!10038 token!484)))) t!336198) tb!243949))

(declare-fun b!4055139 () Bool)

(declare-fun e!2516374 () Bool)

(declare-fun tp!1229249 () Bool)

(assert (=> b!4055139 (= e!2516374 (and (inv!57950 (c!700336 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (value!218823 token!484)))) tp!1229249))))

(declare-fun result!295588 () Bool)

(assert (=> tb!243949 (= result!295588 (and (inv!57951 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (value!218823 token!484))) e!2516374))))

(assert (= tb!243949 b!4055139))

(declare-fun m!4658393 () Bool)

(assert (=> b!4055139 m!4658393))

(declare-fun m!4658395 () Bool)

(assert (=> tb!243949 m!4658395))

(assert (=> b!4055137 t!336198))

(declare-fun b_and!311831 () Bool)

(assert (= b_and!311827 (and (=> t!336198 result!295588) b_and!311831)))

(declare-fun t!336200 () Bool)

(declare-fun tb!243951 () Bool)

(assert (=> (and b!4054825 (= (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toChars!9369 (transformation!6954 (rule!10038 token!484)))) t!336200) tb!243951))

(declare-fun result!295590 () Bool)

(assert (= result!295590 result!295588))

(assert (=> b!4055137 t!336200))

(declare-fun b_and!311833 () Bool)

(assert (= b_and!311829 (and (=> t!336200 result!295590) b_and!311833)))

(declare-fun m!4658397 () Bool)

(assert (=> d!1204574 m!4658397))

(declare-fun m!4658399 () Bool)

(assert (=> b!4055137 m!4658399))

(assert (=> b!4055137 m!4658399))

(declare-fun m!4658401 () Bool)

(assert (=> b!4055137 m!4658401))

(assert (=> b!4055138 m!4657839))

(assert (=> start!382316 d!1204574))

(declare-fun b!4055143 () Bool)

(declare-fun e!2516377 () Bool)

(assert (=> b!4055143 (= e!2516377 (>= (size!32410 suffix!1299) (size!32410 newSuffix!27)))))

(declare-fun b!4055140 () Bool)

(declare-fun e!2516376 () Bool)

(declare-fun e!2516375 () Bool)

(assert (=> b!4055140 (= e!2516376 e!2516375)))

(declare-fun res!1653286 () Bool)

(assert (=> b!4055140 (=> (not res!1653286) (not e!2516375))))

(assert (=> b!4055140 (= res!1653286 (not ((_ is Nil!43349) suffix!1299)))))

(declare-fun b!4055141 () Bool)

(declare-fun res!1653285 () Bool)

(assert (=> b!4055141 (=> (not res!1653285) (not e!2516375))))

(assert (=> b!4055141 (= res!1653285 (= (head!8565 newSuffix!27) (head!8565 suffix!1299)))))

(declare-fun d!1204576 () Bool)

(assert (=> d!1204576 e!2516377))

(declare-fun res!1653287 () Bool)

(assert (=> d!1204576 (=> res!1653287 e!2516377)))

(declare-fun lt!1447399 () Bool)

(assert (=> d!1204576 (= res!1653287 (not lt!1447399))))

(assert (=> d!1204576 (= lt!1447399 e!2516376)))

(declare-fun res!1653284 () Bool)

(assert (=> d!1204576 (=> res!1653284 e!2516376)))

(assert (=> d!1204576 (= res!1653284 ((_ is Nil!43349) newSuffix!27))))

(assert (=> d!1204576 (= (isPrefix!4041 newSuffix!27 suffix!1299) lt!1447399)))

(declare-fun b!4055142 () Bool)

(assert (=> b!4055142 (= e!2516375 (isPrefix!4041 (tail!6297 newSuffix!27) (tail!6297 suffix!1299)))))

(assert (= (and d!1204576 (not res!1653284)) b!4055140))

(assert (= (and b!4055140 res!1653286) b!4055141))

(assert (= (and b!4055141 res!1653285) b!4055142))

(assert (= (and d!1204576 (not res!1653287)) b!4055143))

(assert (=> b!4055143 m!4657879))

(assert (=> b!4055143 m!4657881))

(declare-fun m!4658403 () Bool)

(assert (=> b!4055141 m!4658403))

(declare-fun m!4658405 () Bool)

(assert (=> b!4055141 m!4658405))

(declare-fun m!4658407 () Bool)

(assert (=> b!4055142 m!4658407))

(declare-fun m!4658409 () Bool)

(assert (=> b!4055142 m!4658409))

(assert (=> b!4055142 m!4658407))

(assert (=> b!4055142 m!4658409))

(declare-fun m!4658411 () Bool)

(assert (=> b!4055142 m!4658411))

(assert (=> b!4054827 d!1204576))

(declare-fun b!4055155 () Bool)

(declare-fun e!2516386 () Bool)

(declare-fun e!2516385 () Bool)

(assert (=> b!4055155 (= e!2516386 e!2516385)))

(declare-fun c!700391 () Bool)

(assert (=> b!4055155 (= c!700391 ((_ is IntegerValue!21553) (value!218823 token!484)))))

(declare-fun b!4055156 () Bool)

(declare-fun e!2516384 () Bool)

(declare-fun inv!15 (TokenValue!7184) Bool)

(assert (=> b!4055156 (= e!2516384 (inv!15 (value!218823 token!484)))))

(declare-fun b!4055157 () Bool)

(declare-fun res!1653290 () Bool)

(assert (=> b!4055157 (=> res!1653290 e!2516384)))

(assert (=> b!4055157 (= res!1653290 (not ((_ is IntegerValue!21554) (value!218823 token!484))))))

(assert (=> b!4055157 (= e!2516385 e!2516384)))

(declare-fun b!4055158 () Bool)

(declare-fun inv!16 (TokenValue!7184) Bool)

(assert (=> b!4055158 (= e!2516386 (inv!16 (value!218823 token!484)))))

(declare-fun d!1204578 () Bool)

(declare-fun c!700392 () Bool)

(assert (=> d!1204578 (= c!700392 ((_ is IntegerValue!21552) (value!218823 token!484)))))

(assert (=> d!1204578 (= (inv!21 (value!218823 token!484)) e!2516386)))

(declare-fun b!4055154 () Bool)

(declare-fun inv!17 (TokenValue!7184) Bool)

(assert (=> b!4055154 (= e!2516385 (inv!17 (value!218823 token!484)))))

(assert (= (and d!1204578 c!700392) b!4055158))

(assert (= (and d!1204578 (not c!700392)) b!4055155))

(assert (= (and b!4055155 c!700391) b!4055154))

(assert (= (and b!4055155 (not c!700391)) b!4055157))

(assert (= (and b!4055157 (not res!1653290)) b!4055156))

(declare-fun m!4658413 () Bool)

(assert (=> b!4055156 m!4658413))

(declare-fun m!4658415 () Bool)

(assert (=> b!4055158 m!4658415))

(declare-fun m!4658417 () Bool)

(assert (=> b!4055154 m!4658417))

(assert (=> b!4054800 d!1204578))

(declare-fun lt!1447400 () List!43473)

(declare-fun e!2516388 () Bool)

(declare-fun b!4055162 () Bool)

(assert (=> b!4055162 (= e!2516388 (or (not (= newSuffix!27 Nil!43349)) (= lt!1447400 prefix!494)))))

(declare-fun b!4055161 () Bool)

(declare-fun res!1653291 () Bool)

(assert (=> b!4055161 (=> (not res!1653291) (not e!2516388))))

(assert (=> b!4055161 (= res!1653291 (= (size!32410 lt!1447400) (+ (size!32410 prefix!494) (size!32410 newSuffix!27))))))

(declare-fun b!4055160 () Bool)

(declare-fun e!2516387 () List!43473)

(assert (=> b!4055160 (= e!2516387 (Cons!43349 (h!48769 prefix!494) (++!11356 (t!336182 prefix!494) newSuffix!27)))))

(declare-fun d!1204580 () Bool)

(assert (=> d!1204580 e!2516388))

(declare-fun res!1653292 () Bool)

(assert (=> d!1204580 (=> (not res!1653292) (not e!2516388))))

(assert (=> d!1204580 (= res!1653292 (= (content!6600 lt!1447400) ((_ map or) (content!6600 prefix!494) (content!6600 newSuffix!27))))))

(assert (=> d!1204580 (= lt!1447400 e!2516387)))

(declare-fun c!700393 () Bool)

(assert (=> d!1204580 (= c!700393 ((_ is Nil!43349) prefix!494))))

(assert (=> d!1204580 (= (++!11356 prefix!494 newSuffix!27) lt!1447400)))

(declare-fun b!4055159 () Bool)

(assert (=> b!4055159 (= e!2516387 newSuffix!27)))

(assert (= (and d!1204580 c!700393) b!4055159))

(assert (= (and d!1204580 (not c!700393)) b!4055160))

(assert (= (and d!1204580 res!1653292) b!4055161))

(assert (= (and b!4055161 res!1653291) b!4055162))

(declare-fun m!4658419 () Bool)

(assert (=> b!4055161 m!4658419))

(assert (=> b!4055161 m!4657787))

(assert (=> b!4055161 m!4657881))

(declare-fun m!4658421 () Bool)

(assert (=> b!4055160 m!4658421))

(declare-fun m!4658423 () Bool)

(assert (=> d!1204580 m!4658423))

(assert (=> d!1204580 m!4658323))

(declare-fun m!4658425 () Bool)

(assert (=> d!1204580 m!4658425))

(assert (=> b!4054821 d!1204580))

(declare-fun b!4055166 () Bool)

(declare-fun e!2516390 () Bool)

(declare-fun lt!1447401 () List!43473)

(assert (=> b!4055166 (= e!2516390 (or (not (= newSuffixResult!27 Nil!43349)) (= lt!1447401 lt!1447241)))))

(declare-fun b!4055165 () Bool)

(declare-fun res!1653293 () Bool)

(assert (=> b!4055165 (=> (not res!1653293) (not e!2516390))))

(assert (=> b!4055165 (= res!1653293 (= (size!32410 lt!1447401) (+ (size!32410 lt!1447241) (size!32410 newSuffixResult!27))))))

(declare-fun b!4055164 () Bool)

(declare-fun e!2516389 () List!43473)

(assert (=> b!4055164 (= e!2516389 (Cons!43349 (h!48769 lt!1447241) (++!11356 (t!336182 lt!1447241) newSuffixResult!27)))))

(declare-fun d!1204582 () Bool)

(assert (=> d!1204582 e!2516390))

(declare-fun res!1653294 () Bool)

(assert (=> d!1204582 (=> (not res!1653294) (not e!2516390))))

(assert (=> d!1204582 (= res!1653294 (= (content!6600 lt!1447401) ((_ map or) (content!6600 lt!1447241) (content!6600 newSuffixResult!27))))))

(assert (=> d!1204582 (= lt!1447401 e!2516389)))

(declare-fun c!700394 () Bool)

(assert (=> d!1204582 (= c!700394 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204582 (= (++!11356 lt!1447241 newSuffixResult!27) lt!1447401)))

(declare-fun b!4055163 () Bool)

(assert (=> b!4055163 (= e!2516389 newSuffixResult!27)))

(assert (= (and d!1204582 c!700394) b!4055163))

(assert (= (and d!1204582 (not c!700394)) b!4055164))

(assert (= (and d!1204582 res!1653294) b!4055165))

(assert (= (and b!4055165 res!1653293) b!4055166))

(declare-fun m!4658427 () Bool)

(assert (=> b!4055165 m!4658427))

(assert (=> b!4055165 m!4657785))

(assert (=> b!4055165 m!4658193))

(declare-fun m!4658429 () Bool)

(assert (=> b!4055164 m!4658429))

(declare-fun m!4658431 () Bool)

(assert (=> d!1204582 m!4658431))

(assert (=> d!1204582 m!4658361))

(assert (=> d!1204582 m!4658199))

(assert (=> b!4054821 d!1204582))

(declare-fun lt!1447402 () List!43473)

(declare-fun e!2516392 () Bool)

(declare-fun b!4055170 () Bool)

(assert (=> b!4055170 (= e!2516392 (or (not (= lt!1447222 Nil!43349)) (= lt!1447402 lt!1447241)))))

(declare-fun b!4055169 () Bool)

(declare-fun res!1653295 () Bool)

(assert (=> b!4055169 (=> (not res!1653295) (not e!2516392))))

(assert (=> b!4055169 (= res!1653295 (= (size!32410 lt!1447402) (+ (size!32410 lt!1447241) (size!32410 lt!1447222))))))

(declare-fun b!4055168 () Bool)

(declare-fun e!2516391 () List!43473)

(assert (=> b!4055168 (= e!2516391 (Cons!43349 (h!48769 lt!1447241) (++!11356 (t!336182 lt!1447241) lt!1447222)))))

(declare-fun d!1204584 () Bool)

(assert (=> d!1204584 e!2516392))

(declare-fun res!1653296 () Bool)

(assert (=> d!1204584 (=> (not res!1653296) (not e!2516392))))

(assert (=> d!1204584 (= res!1653296 (= (content!6600 lt!1447402) ((_ map or) (content!6600 lt!1447241) (content!6600 lt!1447222))))))

(assert (=> d!1204584 (= lt!1447402 e!2516391)))

(declare-fun c!700395 () Bool)

(assert (=> d!1204584 (= c!700395 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204584 (= (++!11356 lt!1447241 lt!1447222) lt!1447402)))

(declare-fun b!4055167 () Bool)

(assert (=> b!4055167 (= e!2516391 lt!1447222)))

(assert (= (and d!1204584 c!700395) b!4055167))

(assert (= (and d!1204584 (not c!700395)) b!4055168))

(assert (= (and d!1204584 res!1653296) b!4055169))

(assert (= (and b!4055169 res!1653295) b!4055170))

(declare-fun m!4658433 () Bool)

(assert (=> b!4055169 m!4658433))

(assert (=> b!4055169 m!4657785))

(declare-fun m!4658435 () Bool)

(assert (=> b!4055169 m!4658435))

(declare-fun m!4658437 () Bool)

(assert (=> b!4055168 m!4658437))

(declare-fun m!4658439 () Bool)

(assert (=> d!1204584 m!4658439))

(assert (=> d!1204584 m!4658361))

(declare-fun m!4658441 () Bool)

(assert (=> d!1204584 m!4658441))

(assert (=> b!4054799 d!1204584))

(declare-fun d!1204586 () Bool)

(declare-fun lt!1447405 () List!43473)

(assert (=> d!1204586 (= (++!11356 lt!1447241 lt!1447405) lt!1447224)))

(declare-fun e!2516395 () List!43473)

(assert (=> d!1204586 (= lt!1447405 e!2516395)))

(declare-fun c!700398 () Bool)

(assert (=> d!1204586 (= c!700398 ((_ is Cons!43349) lt!1447241))))

(assert (=> d!1204586 (>= (size!32410 lt!1447224) (size!32410 lt!1447241))))

(assert (=> d!1204586 (= (getSuffix!2458 lt!1447224 lt!1447241) lt!1447405)))

(declare-fun b!4055175 () Bool)

(assert (=> b!4055175 (= e!2516395 (getSuffix!2458 (tail!6297 lt!1447224) (t!336182 lt!1447241)))))

(declare-fun b!4055176 () Bool)

(assert (=> b!4055176 (= e!2516395 lt!1447224)))

(assert (= (and d!1204586 c!700398) b!4055175))

(assert (= (and d!1204586 (not c!700398)) b!4055176))

(declare-fun m!4658443 () Bool)

(assert (=> d!1204586 m!4658443))

(declare-fun m!4658445 () Bool)

(assert (=> d!1204586 m!4658445))

(assert (=> d!1204586 m!4657785))

(declare-fun m!4658447 () Bool)

(assert (=> b!4055175 m!4658447))

(assert (=> b!4055175 m!4658447))

(declare-fun m!4658449 () Bool)

(assert (=> b!4055175 m!4658449))

(assert (=> b!4054799 d!1204586))

(declare-fun b!4055180 () Bool)

(declare-fun e!2516398 () Bool)

(assert (=> b!4055180 (= e!2516398 (>= (size!32410 lt!1447224) (size!32410 lt!1447224)))))

(declare-fun b!4055177 () Bool)

(declare-fun e!2516397 () Bool)

(declare-fun e!2516396 () Bool)

(assert (=> b!4055177 (= e!2516397 e!2516396)))

(declare-fun res!1653299 () Bool)

(assert (=> b!4055177 (=> (not res!1653299) (not e!2516396))))

(assert (=> b!4055177 (= res!1653299 (not ((_ is Nil!43349) lt!1447224)))))

(declare-fun b!4055178 () Bool)

(declare-fun res!1653298 () Bool)

(assert (=> b!4055178 (=> (not res!1653298) (not e!2516396))))

(assert (=> b!4055178 (= res!1653298 (= (head!8565 lt!1447224) (head!8565 lt!1447224)))))

(declare-fun d!1204588 () Bool)

(assert (=> d!1204588 e!2516398))

(declare-fun res!1653300 () Bool)

(assert (=> d!1204588 (=> res!1653300 e!2516398)))

(declare-fun lt!1447406 () Bool)

(assert (=> d!1204588 (= res!1653300 (not lt!1447406))))

(assert (=> d!1204588 (= lt!1447406 e!2516397)))

(declare-fun res!1653297 () Bool)

(assert (=> d!1204588 (=> res!1653297 e!2516397)))

(assert (=> d!1204588 (= res!1653297 ((_ is Nil!43349) lt!1447224))))

(assert (=> d!1204588 (= (isPrefix!4041 lt!1447224 lt!1447224) lt!1447406)))

(declare-fun b!4055179 () Bool)

(assert (=> b!4055179 (= e!2516396 (isPrefix!4041 (tail!6297 lt!1447224) (tail!6297 lt!1447224)))))

(assert (= (and d!1204588 (not res!1653297)) b!4055177))

(assert (= (and b!4055177 res!1653299) b!4055178))

(assert (= (and b!4055178 res!1653298) b!4055179))

(assert (= (and d!1204588 (not res!1653300)) b!4055180))

(assert (=> b!4055180 m!4658445))

(assert (=> b!4055180 m!4658445))

(declare-fun m!4658451 () Bool)

(assert (=> b!4055178 m!4658451))

(assert (=> b!4055178 m!4658451))

(assert (=> b!4055179 m!4658447))

(assert (=> b!4055179 m!4658447))

(assert (=> b!4055179 m!4658447))

(assert (=> b!4055179 m!4658447))

(declare-fun m!4658453 () Bool)

(assert (=> b!4055179 m!4658453))

(assert (=> b!4054799 d!1204588))

(declare-fun d!1204590 () Bool)

(assert (=> d!1204590 (isPrefix!4041 lt!1447224 lt!1447224)))

(declare-fun lt!1447409 () Unit!62690)

(declare-fun choose!24606 (List!43473 List!43473) Unit!62690)

(assert (=> d!1204590 (= lt!1447409 (choose!24606 lt!1447224 lt!1447224))))

(assert (=> d!1204590 (= (lemmaIsPrefixRefl!2608 lt!1447224 lt!1447224) lt!1447409)))

(declare-fun bs!591737 () Bool)

(assert (= bs!591737 d!1204590))

(assert (=> bs!591737 m!4657905))

(declare-fun m!4658455 () Bool)

(assert (=> bs!591737 m!4658455))

(assert (=> b!4054799 d!1204590))

(declare-fun d!1204592 () Bool)

(declare-fun lt!1447410 () Int)

(assert (=> d!1204592 (>= lt!1447410 0)))

(declare-fun e!2516399 () Int)

(assert (=> d!1204592 (= lt!1447410 e!2516399)))

(declare-fun c!700399 () Bool)

(assert (=> d!1204592 (= c!700399 ((_ is Nil!43349) (originalCharacters!7554 token!484)))))

(assert (=> d!1204592 (= (size!32410 (originalCharacters!7554 token!484)) lt!1447410)))

(declare-fun b!4055181 () Bool)

(assert (=> b!4055181 (= e!2516399 0)))

(declare-fun b!4055182 () Bool)

(assert (=> b!4055182 (= e!2516399 (+ 1 (size!32410 (t!336182 (originalCharacters!7554 token!484)))))))

(assert (= (and d!1204592 c!700399) b!4055181))

(assert (= (and d!1204592 (not c!700399)) b!4055182))

(declare-fun m!4658457 () Bool)

(assert (=> b!4055182 m!4658457))

(assert (=> b!4054820 d!1204592))

(declare-fun b!4055186 () Bool)

(declare-fun e!2516402 () Bool)

(assert (=> b!4055186 (= e!2516402 (>= (size!32410 lt!1447224) (size!32410 lt!1447238)))))

(declare-fun b!4055183 () Bool)

(declare-fun e!2516401 () Bool)

(declare-fun e!2516400 () Bool)

(assert (=> b!4055183 (= e!2516401 e!2516400)))

(declare-fun res!1653303 () Bool)

(assert (=> b!4055183 (=> (not res!1653303) (not e!2516400))))

(assert (=> b!4055183 (= res!1653303 (not ((_ is Nil!43349) lt!1447224)))))

(declare-fun b!4055184 () Bool)

(declare-fun res!1653302 () Bool)

(assert (=> b!4055184 (=> (not res!1653302) (not e!2516400))))

(assert (=> b!4055184 (= res!1653302 (= (head!8565 lt!1447238) (head!8565 lt!1447224)))))

(declare-fun d!1204594 () Bool)

(assert (=> d!1204594 e!2516402))

(declare-fun res!1653304 () Bool)

(assert (=> d!1204594 (=> res!1653304 e!2516402)))

(declare-fun lt!1447411 () Bool)

(assert (=> d!1204594 (= res!1653304 (not lt!1447411))))

(assert (=> d!1204594 (= lt!1447411 e!2516401)))

(declare-fun res!1653301 () Bool)

(assert (=> d!1204594 (=> res!1653301 e!2516401)))

(assert (=> d!1204594 (= res!1653301 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204594 (= (isPrefix!4041 lt!1447238 lt!1447224) lt!1447411)))

(declare-fun b!4055185 () Bool)

(assert (=> b!4055185 (= e!2516400 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 lt!1447224)))))

(assert (= (and d!1204594 (not res!1653301)) b!4055183))

(assert (= (and b!4055183 res!1653303) b!4055184))

(assert (= (and b!4055184 res!1653302) b!4055185))

(assert (= (and d!1204594 (not res!1653304)) b!4055186))

(assert (=> b!4055186 m!4658445))

(assert (=> b!4055186 m!4657743))

(assert (=> b!4055184 m!4657913))

(assert (=> b!4055184 m!4658451))

(assert (=> b!4055185 m!4657917))

(assert (=> b!4055185 m!4658447))

(assert (=> b!4055185 m!4657917))

(assert (=> b!4055185 m!4658447))

(declare-fun m!4658459 () Bool)

(assert (=> b!4055185 m!4658459))

(assert (=> b!4054841 d!1204594))

(declare-fun b!4055190 () Bool)

(declare-fun e!2516405 () Bool)

(assert (=> b!4055190 (= e!2516405 (>= (size!32410 lt!1447255) (size!32410 lt!1447238)))))

(declare-fun b!4055187 () Bool)

(declare-fun e!2516404 () Bool)

(declare-fun e!2516403 () Bool)

(assert (=> b!4055187 (= e!2516404 e!2516403)))

(declare-fun res!1653307 () Bool)

(assert (=> b!4055187 (=> (not res!1653307) (not e!2516403))))

(assert (=> b!4055187 (= res!1653307 (not ((_ is Nil!43349) lt!1447255)))))

(declare-fun b!4055188 () Bool)

(declare-fun res!1653306 () Bool)

(assert (=> b!4055188 (=> (not res!1653306) (not e!2516403))))

(assert (=> b!4055188 (= res!1653306 (= (head!8565 lt!1447238) (head!8565 lt!1447255)))))

(declare-fun d!1204596 () Bool)

(assert (=> d!1204596 e!2516405))

(declare-fun res!1653308 () Bool)

(assert (=> d!1204596 (=> res!1653308 e!2516405)))

(declare-fun lt!1447412 () Bool)

(assert (=> d!1204596 (= res!1653308 (not lt!1447412))))

(assert (=> d!1204596 (= lt!1447412 e!2516404)))

(declare-fun res!1653305 () Bool)

(assert (=> d!1204596 (=> res!1653305 e!2516404)))

(assert (=> d!1204596 (= res!1653305 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204596 (= (isPrefix!4041 lt!1447238 lt!1447255) lt!1447412)))

(declare-fun b!4055189 () Bool)

(assert (=> b!4055189 (= e!2516403 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 lt!1447255)))))

(assert (= (and d!1204596 (not res!1653305)) b!4055187))

(assert (= (and b!4055187 res!1653307) b!4055188))

(assert (= (and b!4055188 res!1653306) b!4055189))

(assert (= (and d!1204596 (not res!1653308)) b!4055190))

(declare-fun m!4658461 () Bool)

(assert (=> b!4055190 m!4658461))

(assert (=> b!4055190 m!4657743))

(assert (=> b!4055188 m!4657913))

(declare-fun m!4658463 () Bool)

(assert (=> b!4055188 m!4658463))

(assert (=> b!4055189 m!4657917))

(declare-fun m!4658465 () Bool)

(assert (=> b!4055189 m!4658465))

(assert (=> b!4055189 m!4657917))

(assert (=> b!4055189 m!4658465))

(declare-fun m!4658467 () Bool)

(assert (=> b!4055189 m!4658467))

(assert (=> b!4054841 d!1204596))

(declare-fun d!1204598 () Bool)

(assert (=> d!1204598 (isPrefix!4041 lt!1447238 (++!11356 lt!1447230 lt!1447232))))

(declare-fun lt!1447415 () Unit!62690)

(declare-fun choose!24607 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> d!1204598 (= lt!1447415 (choose!24607 lt!1447238 lt!1447230 lt!1447232))))

(assert (=> d!1204598 (isPrefix!4041 lt!1447238 lt!1447230)))

(assert (=> d!1204598 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447238 lt!1447230 lt!1447232) lt!1447415)))

(declare-fun bs!591738 () Bool)

(assert (= bs!591738 d!1204598))

(assert (=> bs!591738 m!4657835))

(assert (=> bs!591738 m!4657835))

(declare-fun m!4658469 () Bool)

(assert (=> bs!591738 m!4658469))

(declare-fun m!4658471 () Bool)

(assert (=> bs!591738 m!4658471))

(assert (=> bs!591738 m!4657779))

(assert (=> b!4054841 d!1204598))

(declare-fun b!4055194 () Bool)

(declare-fun e!2516408 () Bool)

(assert (=> b!4055194 (= e!2516408 (>= (size!32410 lt!1447252) (size!32410 lt!1447241)))))

(declare-fun b!4055191 () Bool)

(declare-fun e!2516407 () Bool)

(declare-fun e!2516406 () Bool)

(assert (=> b!4055191 (= e!2516407 e!2516406)))

(declare-fun res!1653311 () Bool)

(assert (=> b!4055191 (=> (not res!1653311) (not e!2516406))))

(assert (=> b!4055191 (= res!1653311 (not ((_ is Nil!43349) lt!1447252)))))

(declare-fun b!4055192 () Bool)

(declare-fun res!1653310 () Bool)

(assert (=> b!4055192 (=> (not res!1653310) (not e!2516406))))

(assert (=> b!4055192 (= res!1653310 (= (head!8565 lt!1447241) (head!8565 lt!1447252)))))

(declare-fun d!1204600 () Bool)

(assert (=> d!1204600 e!2516408))

(declare-fun res!1653312 () Bool)

(assert (=> d!1204600 (=> res!1653312 e!2516408)))

(declare-fun lt!1447416 () Bool)

(assert (=> d!1204600 (= res!1653312 (not lt!1447416))))

(assert (=> d!1204600 (= lt!1447416 e!2516407)))

(declare-fun res!1653309 () Bool)

(assert (=> d!1204600 (=> res!1653309 e!2516407)))

(assert (=> d!1204600 (= res!1653309 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204600 (= (isPrefix!4041 lt!1447241 lt!1447252) lt!1447416)))

(declare-fun b!4055193 () Bool)

(assert (=> b!4055193 (= e!2516406 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 lt!1447252)))))

(assert (= (and d!1204600 (not res!1653309)) b!4055191))

(assert (= (and b!4055191 res!1653311) b!4055192))

(assert (= (and b!4055192 res!1653310) b!4055193))

(assert (= (and d!1204600 (not res!1653312)) b!4055194))

(declare-fun m!4658473 () Bool)

(assert (=> b!4055194 m!4658473))

(assert (=> b!4055194 m!4657785))

(declare-fun m!4658475 () Bool)

(assert (=> b!4055192 m!4658475))

(declare-fun m!4658477 () Bool)

(assert (=> b!4055192 m!4658477))

(declare-fun m!4658479 () Bool)

(assert (=> b!4055193 m!4658479))

(declare-fun m!4658481 () Bool)

(assert (=> b!4055193 m!4658481))

(assert (=> b!4055193 m!4658479))

(assert (=> b!4055193 m!4658481))

(declare-fun m!4658483 () Bool)

(assert (=> b!4055193 m!4658483))

(assert (=> b!4054819 d!1204600))

(declare-fun d!1204602 () Bool)

(assert (=> d!1204602 (isPrefix!4041 lt!1447241 (++!11356 lt!1447241 suffixResult!105))))

(declare-fun lt!1447417 () Unit!62690)

(assert (=> d!1204602 (= lt!1447417 (choose!24595 lt!1447241 suffixResult!105))))

(assert (=> d!1204602 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 suffixResult!105) lt!1447417)))

(declare-fun bs!591739 () Bool)

(assert (= bs!591739 d!1204602))

(assert (=> bs!591739 m!4657767))

(assert (=> bs!591739 m!4657767))

(declare-fun m!4658485 () Bool)

(assert (=> bs!591739 m!4658485))

(declare-fun m!4658487 () Bool)

(assert (=> bs!591739 m!4658487))

(assert (=> b!4054819 d!1204602))

(declare-fun b!4055198 () Bool)

(declare-fun e!2516411 () Bool)

(assert (=> b!4055198 (= e!2516411 (>= (size!32410 lt!1447224) (size!32410 prefix!494)))))

(declare-fun b!4055195 () Bool)

(declare-fun e!2516410 () Bool)

(declare-fun e!2516409 () Bool)

(assert (=> b!4055195 (= e!2516410 e!2516409)))

(declare-fun res!1653315 () Bool)

(assert (=> b!4055195 (=> (not res!1653315) (not e!2516409))))

(assert (=> b!4055195 (= res!1653315 (not ((_ is Nil!43349) lt!1447224)))))

(declare-fun b!4055196 () Bool)

(declare-fun res!1653314 () Bool)

(assert (=> b!4055196 (=> (not res!1653314) (not e!2516409))))

(assert (=> b!4055196 (= res!1653314 (= (head!8565 prefix!494) (head!8565 lt!1447224)))))

(declare-fun d!1204604 () Bool)

(assert (=> d!1204604 e!2516411))

(declare-fun res!1653316 () Bool)

(assert (=> d!1204604 (=> res!1653316 e!2516411)))

(declare-fun lt!1447418 () Bool)

(assert (=> d!1204604 (= res!1653316 (not lt!1447418))))

(assert (=> d!1204604 (= lt!1447418 e!2516410)))

(declare-fun res!1653313 () Bool)

(assert (=> d!1204604 (=> res!1653313 e!2516410)))

(assert (=> d!1204604 (= res!1653313 ((_ is Nil!43349) prefix!494))))

(assert (=> d!1204604 (= (isPrefix!4041 prefix!494 lt!1447224) lt!1447418)))

(declare-fun b!4055197 () Bool)

(assert (=> b!4055197 (= e!2516409 (isPrefix!4041 (tail!6297 prefix!494) (tail!6297 lt!1447224)))))

(assert (= (and d!1204604 (not res!1653313)) b!4055195))

(assert (= (and b!4055195 res!1653315) b!4055196))

(assert (= (and b!4055196 res!1653314) b!4055197))

(assert (= (and d!1204604 (not res!1653316)) b!4055198))

(assert (=> b!4055198 m!4658445))

(assert (=> b!4055198 m!4657787))

(declare-fun m!4658489 () Bool)

(assert (=> b!4055196 m!4658489))

(assert (=> b!4055196 m!4658451))

(declare-fun m!4658491 () Bool)

(assert (=> b!4055197 m!4658491))

(assert (=> b!4055197 m!4658447))

(assert (=> b!4055197 m!4658491))

(assert (=> b!4055197 m!4658447))

(declare-fun m!4658493 () Bool)

(assert (=> b!4055197 m!4658493))

(assert (=> b!4054819 d!1204604))

(declare-fun b!4055202 () Bool)

(declare-fun e!2516414 () Bool)

(assert (=> b!4055202 (= e!2516414 (>= (size!32410 lt!1447224) (size!32410 lt!1447241)))))

(declare-fun b!4055199 () Bool)

(declare-fun e!2516413 () Bool)

(declare-fun e!2516412 () Bool)

(assert (=> b!4055199 (= e!2516413 e!2516412)))

(declare-fun res!1653319 () Bool)

(assert (=> b!4055199 (=> (not res!1653319) (not e!2516412))))

(assert (=> b!4055199 (= res!1653319 (not ((_ is Nil!43349) lt!1447224)))))

(declare-fun b!4055200 () Bool)

(declare-fun res!1653318 () Bool)

(assert (=> b!4055200 (=> (not res!1653318) (not e!2516412))))

(assert (=> b!4055200 (= res!1653318 (= (head!8565 lt!1447241) (head!8565 lt!1447224)))))

(declare-fun d!1204606 () Bool)

(assert (=> d!1204606 e!2516414))

(declare-fun res!1653320 () Bool)

(assert (=> d!1204606 (=> res!1653320 e!2516414)))

(declare-fun lt!1447419 () Bool)

(assert (=> d!1204606 (= res!1653320 (not lt!1447419))))

(assert (=> d!1204606 (= lt!1447419 e!2516413)))

(declare-fun res!1653317 () Bool)

(assert (=> d!1204606 (=> res!1653317 e!2516413)))

(assert (=> d!1204606 (= res!1653317 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204606 (= (isPrefix!4041 lt!1447241 lt!1447224) lt!1447419)))

(declare-fun b!4055201 () Bool)

(assert (=> b!4055201 (= e!2516412 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 lt!1447224)))))

(assert (= (and d!1204606 (not res!1653317)) b!4055199))

(assert (= (and b!4055199 res!1653319) b!4055200))

(assert (= (and b!4055200 res!1653318) b!4055201))

(assert (= (and d!1204606 (not res!1653320)) b!4055202))

(assert (=> b!4055202 m!4658445))

(assert (=> b!4055202 m!4657785))

(assert (=> b!4055200 m!4658475))

(assert (=> b!4055200 m!4658451))

(assert (=> b!4055201 m!4658479))

(assert (=> b!4055201 m!4658447))

(assert (=> b!4055201 m!4658479))

(assert (=> b!4055201 m!4658447))

(declare-fun m!4658495 () Bool)

(assert (=> b!4055201 m!4658495))

(assert (=> b!4054819 d!1204606))

(declare-fun d!1204608 () Bool)

(assert (=> d!1204608 (isPrefix!4041 prefix!494 (++!11356 prefix!494 suffix!1299))))

(declare-fun lt!1447420 () Unit!62690)

(assert (=> d!1204608 (= lt!1447420 (choose!24595 prefix!494 suffix!1299))))

(assert (=> d!1204608 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 prefix!494 suffix!1299) lt!1447420)))

(declare-fun bs!591740 () Bool)

(assert (= bs!591740 d!1204608))

(assert (=> bs!591740 m!4657831))

(assert (=> bs!591740 m!4657831))

(declare-fun m!4658497 () Bool)

(assert (=> bs!591740 m!4658497))

(declare-fun m!4658499 () Bool)

(assert (=> bs!591740 m!4658499))

(assert (=> b!4054819 d!1204608))

(declare-fun b!4055286 () Bool)

(declare-fun res!1653381 () Bool)

(declare-fun e!2516459 () Bool)

(assert (=> b!4055286 (=> (not res!1653381) (not e!2516459))))

(declare-fun lt!1447458 () Option!9368)

(assert (=> b!4055286 (= res!1653381 (= (value!218823 (_1!24339 (get!14217 lt!1447458))) (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (get!14217 lt!1447458)))) (seqFromList!5171 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447458)))))))))

(declare-fun b!4055287 () Bool)

(declare-fun e!2516460 () Bool)

(assert (=> b!4055287 (= e!2516460 e!2516459)))

(declare-fun res!1653380 () Bool)

(assert (=> b!4055287 (=> (not res!1653380) (not e!2516459))))

(declare-fun isDefined!7116 (Option!9368) Bool)

(assert (=> b!4055287 (= res!1653380 (isDefined!7116 lt!1447458))))

(declare-fun b!4055288 () Bool)

(declare-fun res!1653382 () Bool)

(assert (=> b!4055288 (=> (not res!1653382) (not e!2516459))))

(assert (=> b!4055288 (= res!1653382 (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (get!14217 lt!1447458)))) (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447458))))))))

(declare-fun b!4055289 () Bool)

(assert (=> b!4055289 (= e!2516459 (contains!8622 rules!2999 (rule!10038 (_1!24339 (get!14217 lt!1447458)))))))

(declare-fun b!4055290 () Bool)

(declare-fun res!1653384 () Bool)

(assert (=> b!4055290 (=> (not res!1653384) (not e!2516459))))

(assert (=> b!4055290 (= res!1653384 (< (size!32410 (_2!24339 (get!14217 lt!1447458))) (size!32410 lt!1447230)))))

(declare-fun call!288012 () Option!9368)

(declare-fun bm!288007 () Bool)

(assert (=> bm!288007 (= call!288012 (maxPrefixOneRule!2853 thiss!21717 (h!48771 rules!2999) lt!1447230))))

(declare-fun d!1204610 () Bool)

(assert (=> d!1204610 e!2516460))

(declare-fun res!1653379 () Bool)

(assert (=> d!1204610 (=> res!1653379 e!2516460)))

(assert (=> d!1204610 (= res!1653379 (isEmpty!25865 lt!1447458))))

(declare-fun e!2516458 () Option!9368)

(assert (=> d!1204610 (= lt!1447458 e!2516458)))

(declare-fun c!700411 () Bool)

(assert (=> d!1204610 (= c!700411 (and ((_ is Cons!43351) rules!2999) ((_ is Nil!43351) (t!336184 rules!2999))))))

(declare-fun lt!1447459 () Unit!62690)

(declare-fun lt!1447457 () Unit!62690)

(assert (=> d!1204610 (= lt!1447459 lt!1447457)))

(assert (=> d!1204610 (isPrefix!4041 lt!1447230 lt!1447230)))

(assert (=> d!1204610 (= lt!1447457 (lemmaIsPrefixRefl!2608 lt!1447230 lt!1447230))))

(declare-fun rulesValidInductive!2537 (LexerInterface!6543 List!43475) Bool)

(assert (=> d!1204610 (rulesValidInductive!2537 thiss!21717 rules!2999)))

(assert (=> d!1204610 (= (maxPrefix!3841 thiss!21717 rules!2999 lt!1447230) lt!1447458)))

(declare-fun b!4055291 () Bool)

(declare-fun lt!1447456 () Option!9368)

(declare-fun lt!1447460 () Option!9368)

(assert (=> b!4055291 (= e!2516458 (ite (and ((_ is None!9367) lt!1447456) ((_ is None!9367) lt!1447460)) None!9367 (ite ((_ is None!9367) lt!1447460) lt!1447456 (ite ((_ is None!9367) lt!1447456) lt!1447460 (ite (>= (size!32409 (_1!24339 (v!39779 lt!1447456))) (size!32409 (_1!24339 (v!39779 lt!1447460)))) lt!1447456 lt!1447460)))))))

(assert (=> b!4055291 (= lt!1447456 call!288012)))

(assert (=> b!4055291 (= lt!1447460 (maxPrefix!3841 thiss!21717 (t!336184 rules!2999) lt!1447230))))

(declare-fun b!4055292 () Bool)

(declare-fun res!1653383 () Bool)

(assert (=> b!4055292 (=> (not res!1653383) (not e!2516459))))

(assert (=> b!4055292 (= res!1653383 (= (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447458)))) (originalCharacters!7554 (_1!24339 (get!14217 lt!1447458)))))))

(declare-fun b!4055293 () Bool)

(assert (=> b!4055293 (= e!2516458 call!288012)))

(declare-fun b!4055294 () Bool)

(declare-fun res!1653385 () Bool)

(assert (=> b!4055294 (=> (not res!1653385) (not e!2516459))))

(assert (=> b!4055294 (= res!1653385 (= (++!11356 (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447458)))) (_2!24339 (get!14217 lt!1447458))) lt!1447230))))

(assert (= (and d!1204610 c!700411) b!4055293))

(assert (= (and d!1204610 (not c!700411)) b!4055291))

(assert (= (or b!4055293 b!4055291) bm!288007))

(assert (= (and d!1204610 (not res!1653379)) b!4055287))

(assert (= (and b!4055287 res!1653380) b!4055292))

(assert (= (and b!4055292 res!1653383) b!4055290))

(assert (= (and b!4055290 res!1653384) b!4055294))

(assert (= (and b!4055294 res!1653385) b!4055286))

(assert (= (and b!4055286 res!1653381) b!4055288))

(assert (= (and b!4055288 res!1653382) b!4055289))

(declare-fun m!4658619 () Bool)

(assert (=> b!4055288 m!4658619))

(declare-fun m!4658621 () Bool)

(assert (=> b!4055288 m!4658621))

(assert (=> b!4055288 m!4658621))

(declare-fun m!4658623 () Bool)

(assert (=> b!4055288 m!4658623))

(assert (=> b!4055288 m!4658623))

(declare-fun m!4658625 () Bool)

(assert (=> b!4055288 m!4658625))

(assert (=> b!4055290 m!4658619))

(declare-fun m!4658627 () Bool)

(assert (=> b!4055290 m!4658627))

(assert (=> b!4055290 m!4658081))

(assert (=> b!4055289 m!4658619))

(declare-fun m!4658629 () Bool)

(assert (=> b!4055289 m!4658629))

(assert (=> b!4055286 m!4658619))

(declare-fun m!4658631 () Bool)

(assert (=> b!4055286 m!4658631))

(assert (=> b!4055286 m!4658631))

(declare-fun m!4658633 () Bool)

(assert (=> b!4055286 m!4658633))

(assert (=> b!4055292 m!4658619))

(assert (=> b!4055292 m!4658621))

(assert (=> b!4055292 m!4658621))

(assert (=> b!4055292 m!4658623))

(assert (=> b!4055294 m!4658619))

(assert (=> b!4055294 m!4658621))

(assert (=> b!4055294 m!4658621))

(assert (=> b!4055294 m!4658623))

(assert (=> b!4055294 m!4658623))

(declare-fun m!4658635 () Bool)

(assert (=> b!4055294 m!4658635))

(declare-fun m!4658637 () Bool)

(assert (=> d!1204610 m!4658637))

(declare-fun m!4658639 () Bool)

(assert (=> d!1204610 m!4658639))

(declare-fun m!4658641 () Bool)

(assert (=> d!1204610 m!4658641))

(declare-fun m!4658643 () Bool)

(assert (=> d!1204610 m!4658643))

(declare-fun m!4658645 () Bool)

(assert (=> b!4055291 m!4658645))

(declare-fun m!4658647 () Bool)

(assert (=> bm!288007 m!4658647))

(declare-fun m!4658649 () Bool)

(assert (=> b!4055287 m!4658649))

(assert (=> b!4054802 d!1204610))

(declare-fun d!1204652 () Bool)

(assert (=> d!1204652 (= suffixResult!105 lt!1447222)))

(declare-fun lt!1447463 () Unit!62690)

(assert (=> d!1204652 (= lt!1447463 (choose!24594 lt!1447241 suffixResult!105 lt!1447241 lt!1447222 lt!1447224))))

(assert (=> d!1204652 (isPrefix!4041 lt!1447241 lt!1447224)))

(assert (=> d!1204652 (= (lemmaSamePrefixThenSameSuffix!2202 lt!1447241 suffixResult!105 lt!1447241 lt!1447222 lt!1447224) lt!1447463)))

(declare-fun bs!591745 () Bool)

(assert (= bs!591745 d!1204652))

(declare-fun m!4658651 () Bool)

(assert (=> bs!591745 m!4658651))

(assert (=> bs!591745 m!4657821))

(assert (=> b!4054802 d!1204652))

(declare-fun b!4055304 () Bool)

(declare-fun e!2516468 () Bool)

(assert (=> b!4055304 (= e!2516468 (>= (size!32410 lt!1447249) (size!32410 lt!1447241)))))

(declare-fun b!4055301 () Bool)

(declare-fun e!2516467 () Bool)

(declare-fun e!2516466 () Bool)

(assert (=> b!4055301 (= e!2516467 e!2516466)))

(declare-fun res!1653394 () Bool)

(assert (=> b!4055301 (=> (not res!1653394) (not e!2516466))))

(assert (=> b!4055301 (= res!1653394 (not ((_ is Nil!43349) lt!1447249)))))

(declare-fun b!4055302 () Bool)

(declare-fun res!1653393 () Bool)

(assert (=> b!4055302 (=> (not res!1653393) (not e!2516466))))

(assert (=> b!4055302 (= res!1653393 (= (head!8565 lt!1447241) (head!8565 lt!1447249)))))

(declare-fun d!1204654 () Bool)

(assert (=> d!1204654 e!2516468))

(declare-fun res!1653395 () Bool)

(assert (=> d!1204654 (=> res!1653395 e!2516468)))

(declare-fun lt!1447464 () Bool)

(assert (=> d!1204654 (= res!1653395 (not lt!1447464))))

(assert (=> d!1204654 (= lt!1447464 e!2516467)))

(declare-fun res!1653392 () Bool)

(assert (=> d!1204654 (=> res!1653392 e!2516467)))

(assert (=> d!1204654 (= res!1653392 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204654 (= (isPrefix!4041 lt!1447241 lt!1447249) lt!1447464)))

(declare-fun b!4055303 () Bool)

(assert (=> b!4055303 (= e!2516466 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 lt!1447249)))))

(assert (= (and d!1204654 (not res!1653392)) b!4055301))

(assert (= (and b!4055301 res!1653394) b!4055302))

(assert (= (and b!4055302 res!1653393) b!4055303))

(assert (= (and d!1204654 (not res!1653395)) b!4055304))

(declare-fun m!4658653 () Bool)

(assert (=> b!4055304 m!4658653))

(assert (=> b!4055304 m!4657785))

(assert (=> b!4055302 m!4658475))

(declare-fun m!4658655 () Bool)

(assert (=> b!4055302 m!4658655))

(assert (=> b!4055303 m!4658479))

(declare-fun m!4658657 () Bool)

(assert (=> b!4055303 m!4658657))

(assert (=> b!4055303 m!4658479))

(assert (=> b!4055303 m!4658657))

(declare-fun m!4658659 () Bool)

(assert (=> b!4055303 m!4658659))

(assert (=> b!4054802 d!1204654))

(declare-fun d!1204656 () Bool)

(assert (=> d!1204656 (isPrefix!4041 lt!1447241 (++!11356 lt!1447241 lt!1447222))))

(declare-fun lt!1447466 () Unit!62690)

(assert (=> d!1204656 (= lt!1447466 (choose!24595 lt!1447241 lt!1447222))))

(assert (=> d!1204656 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 lt!1447222) lt!1447466)))

(declare-fun bs!591746 () Bool)

(assert (= bs!591746 d!1204656))

(assert (=> bs!591746 m!4657901))

(assert (=> bs!591746 m!4657901))

(declare-fun m!4658665 () Bool)

(assert (=> bs!591746 m!4658665))

(declare-fun m!4658669 () Bool)

(assert (=> bs!591746 m!4658669))

(assert (=> b!4054802 d!1204656))

(declare-fun d!1204658 () Bool)

(declare-fun lt!1447477 () Bool)

(declare-fun content!6602 (List!43475) (InoxSet Rule!13708))

(assert (=> d!1204658 (= lt!1447477 (select (content!6602 rules!2999) (rule!10038 token!484)))))

(declare-fun e!2516484 () Bool)

(assert (=> d!1204658 (= lt!1447477 e!2516484)))

(declare-fun res!1653413 () Bool)

(assert (=> d!1204658 (=> (not res!1653413) (not e!2516484))))

(assert (=> d!1204658 (= res!1653413 ((_ is Cons!43351) rules!2999))))

(assert (=> d!1204658 (= (contains!8622 rules!2999 (rule!10038 token!484)) lt!1447477)))

(declare-fun b!4055324 () Bool)

(declare-fun e!2516483 () Bool)

(assert (=> b!4055324 (= e!2516484 e!2516483)))

(declare-fun res!1653414 () Bool)

(assert (=> b!4055324 (=> res!1653414 e!2516483)))

(assert (=> b!4055324 (= res!1653414 (= (h!48771 rules!2999) (rule!10038 token!484)))))

(declare-fun b!4055325 () Bool)

(assert (=> b!4055325 (= e!2516483 (contains!8622 (t!336184 rules!2999) (rule!10038 token!484)))))

(assert (= (and d!1204658 res!1653413) b!4055324))

(assert (= (and b!4055324 (not res!1653414)) b!4055325))

(declare-fun m!4658691 () Bool)

(assert (=> d!1204658 m!4658691))

(declare-fun m!4658693 () Bool)

(assert (=> d!1204658 m!4658693))

(declare-fun m!4658695 () Bool)

(assert (=> b!4055325 m!4658695))

(assert (=> b!4054816 d!1204658))

(declare-fun b!4055326 () Bool)

(declare-fun res!1653417 () Bool)

(declare-fun e!2516486 () Bool)

(assert (=> b!4055326 (=> (not res!1653417) (not e!2516486))))

(declare-fun lt!1447480 () Option!9368)

(assert (=> b!4055326 (= res!1653417 (= (value!218823 (_1!24339 (get!14217 lt!1447480))) (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (get!14217 lt!1447480)))) (seqFromList!5171 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447480)))))))))

(declare-fun b!4055327 () Bool)

(declare-fun e!2516487 () Bool)

(assert (=> b!4055327 (= e!2516487 e!2516486)))

(declare-fun res!1653416 () Bool)

(assert (=> b!4055327 (=> (not res!1653416) (not e!2516486))))

(assert (=> b!4055327 (= res!1653416 (isDefined!7116 lt!1447480))))

(declare-fun b!4055328 () Bool)

(declare-fun res!1653418 () Bool)

(assert (=> b!4055328 (=> (not res!1653418) (not e!2516486))))

(assert (=> b!4055328 (= res!1653418 (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (get!14217 lt!1447480)))) (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447480))))))))

(declare-fun b!4055329 () Bool)

(assert (=> b!4055329 (= e!2516486 (contains!8622 rules!2999 (rule!10038 (_1!24339 (get!14217 lt!1447480)))))))

(declare-fun b!4055330 () Bool)

(declare-fun res!1653420 () Bool)

(assert (=> b!4055330 (=> (not res!1653420) (not e!2516486))))

(assert (=> b!4055330 (= res!1653420 (< (size!32410 (_2!24339 (get!14217 lt!1447480))) (size!32410 lt!1447224)))))

(declare-fun bm!288008 () Bool)

(declare-fun call!288013 () Option!9368)

(assert (=> bm!288008 (= call!288013 (maxPrefixOneRule!2853 thiss!21717 (h!48771 rules!2999) lt!1447224))))

(declare-fun d!1204672 () Bool)

(assert (=> d!1204672 e!2516487))

(declare-fun res!1653415 () Bool)

(assert (=> d!1204672 (=> res!1653415 e!2516487)))

(assert (=> d!1204672 (= res!1653415 (isEmpty!25865 lt!1447480))))

(declare-fun e!2516485 () Option!9368)

(assert (=> d!1204672 (= lt!1447480 e!2516485)))

(declare-fun c!700413 () Bool)

(assert (=> d!1204672 (= c!700413 (and ((_ is Cons!43351) rules!2999) ((_ is Nil!43351) (t!336184 rules!2999))))))

(declare-fun lt!1447481 () Unit!62690)

(declare-fun lt!1447479 () Unit!62690)

(assert (=> d!1204672 (= lt!1447481 lt!1447479)))

(assert (=> d!1204672 (isPrefix!4041 lt!1447224 lt!1447224)))

(assert (=> d!1204672 (= lt!1447479 (lemmaIsPrefixRefl!2608 lt!1447224 lt!1447224))))

(assert (=> d!1204672 (rulesValidInductive!2537 thiss!21717 rules!2999)))

(assert (=> d!1204672 (= (maxPrefix!3841 thiss!21717 rules!2999 lt!1447224) lt!1447480)))

(declare-fun b!4055331 () Bool)

(declare-fun lt!1447478 () Option!9368)

(declare-fun lt!1447482 () Option!9368)

(assert (=> b!4055331 (= e!2516485 (ite (and ((_ is None!9367) lt!1447478) ((_ is None!9367) lt!1447482)) None!9367 (ite ((_ is None!9367) lt!1447482) lt!1447478 (ite ((_ is None!9367) lt!1447478) lt!1447482 (ite (>= (size!32409 (_1!24339 (v!39779 lt!1447478))) (size!32409 (_1!24339 (v!39779 lt!1447482)))) lt!1447478 lt!1447482)))))))

(assert (=> b!4055331 (= lt!1447478 call!288013)))

(assert (=> b!4055331 (= lt!1447482 (maxPrefix!3841 thiss!21717 (t!336184 rules!2999) lt!1447224))))

(declare-fun b!4055332 () Bool)

(declare-fun res!1653419 () Bool)

(assert (=> b!4055332 (=> (not res!1653419) (not e!2516486))))

(assert (=> b!4055332 (= res!1653419 (= (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447480)))) (originalCharacters!7554 (_1!24339 (get!14217 lt!1447480)))))))

(declare-fun b!4055333 () Bool)

(assert (=> b!4055333 (= e!2516485 call!288013)))

(declare-fun b!4055334 () Bool)

(declare-fun res!1653421 () Bool)

(assert (=> b!4055334 (=> (not res!1653421) (not e!2516486))))

(assert (=> b!4055334 (= res!1653421 (= (++!11356 (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447480)))) (_2!24339 (get!14217 lt!1447480))) lt!1447224))))

(assert (= (and d!1204672 c!700413) b!4055333))

(assert (= (and d!1204672 (not c!700413)) b!4055331))

(assert (= (or b!4055333 b!4055331) bm!288008))

(assert (= (and d!1204672 (not res!1653415)) b!4055327))

(assert (= (and b!4055327 res!1653416) b!4055332))

(assert (= (and b!4055332 res!1653419) b!4055330))

(assert (= (and b!4055330 res!1653420) b!4055334))

(assert (= (and b!4055334 res!1653421) b!4055326))

(assert (= (and b!4055326 res!1653417) b!4055328))

(assert (= (and b!4055328 res!1653418) b!4055329))

(declare-fun m!4658719 () Bool)

(assert (=> b!4055328 m!4658719))

(declare-fun m!4658723 () Bool)

(assert (=> b!4055328 m!4658723))

(assert (=> b!4055328 m!4658723))

(declare-fun m!4658727 () Bool)

(assert (=> b!4055328 m!4658727))

(assert (=> b!4055328 m!4658727))

(declare-fun m!4658731 () Bool)

(assert (=> b!4055328 m!4658731))

(assert (=> b!4055330 m!4658719))

(declare-fun m!4658735 () Bool)

(assert (=> b!4055330 m!4658735))

(assert (=> b!4055330 m!4658445))

(assert (=> b!4055329 m!4658719))

(declare-fun m!4658737 () Bool)

(assert (=> b!4055329 m!4658737))

(assert (=> b!4055326 m!4658719))

(declare-fun m!4658741 () Bool)

(assert (=> b!4055326 m!4658741))

(assert (=> b!4055326 m!4658741))

(declare-fun m!4658749 () Bool)

(assert (=> b!4055326 m!4658749))

(assert (=> b!4055332 m!4658719))

(assert (=> b!4055332 m!4658723))

(assert (=> b!4055332 m!4658723))

(assert (=> b!4055332 m!4658727))

(assert (=> b!4055334 m!4658719))

(assert (=> b!4055334 m!4658723))

(assert (=> b!4055334 m!4658723))

(assert (=> b!4055334 m!4658727))

(assert (=> b!4055334 m!4658727))

(declare-fun m!4658753 () Bool)

(assert (=> b!4055334 m!4658753))

(declare-fun m!4658755 () Bool)

(assert (=> d!1204672 m!4658755))

(assert (=> d!1204672 m!4657905))

(assert (=> d!1204672 m!4657907))

(assert (=> d!1204672 m!4658643))

(declare-fun m!4658759 () Bool)

(assert (=> b!4055331 m!4658759))

(declare-fun m!4658761 () Bool)

(assert (=> bm!288008 m!4658761))

(declare-fun m!4658763 () Bool)

(assert (=> b!4055327 m!4658763))

(assert (=> b!4054815 d!1204672))

(declare-fun lt!1447484 () List!43473)

(declare-fun b!4055338 () Bool)

(declare-fun e!2516489 () Bool)

(assert (=> b!4055338 (= e!2516489 (or (not (= suffix!1299 Nil!43349)) (= lt!1447484 prefix!494)))))

(declare-fun b!4055337 () Bool)

(declare-fun res!1653422 () Bool)

(assert (=> b!4055337 (=> (not res!1653422) (not e!2516489))))

(assert (=> b!4055337 (= res!1653422 (= (size!32410 lt!1447484) (+ (size!32410 prefix!494) (size!32410 suffix!1299))))))

(declare-fun b!4055336 () Bool)

(declare-fun e!2516488 () List!43473)

(assert (=> b!4055336 (= e!2516488 (Cons!43349 (h!48769 prefix!494) (++!11356 (t!336182 prefix!494) suffix!1299)))))

(declare-fun d!1204678 () Bool)

(assert (=> d!1204678 e!2516489))

(declare-fun res!1653423 () Bool)

(assert (=> d!1204678 (=> (not res!1653423) (not e!2516489))))

(assert (=> d!1204678 (= res!1653423 (= (content!6600 lt!1447484) ((_ map or) (content!6600 prefix!494) (content!6600 suffix!1299))))))

(assert (=> d!1204678 (= lt!1447484 e!2516488)))

(declare-fun c!700414 () Bool)

(assert (=> d!1204678 (= c!700414 ((_ is Nil!43349) prefix!494))))

(assert (=> d!1204678 (= (++!11356 prefix!494 suffix!1299) lt!1447484)))

(declare-fun b!4055335 () Bool)

(assert (=> b!4055335 (= e!2516488 suffix!1299)))

(assert (= (and d!1204678 c!700414) b!4055335))

(assert (= (and d!1204678 (not c!700414)) b!4055336))

(assert (= (and d!1204678 res!1653423) b!4055337))

(assert (= (and b!4055337 res!1653422) b!4055338))

(declare-fun m!4658767 () Bool)

(assert (=> b!4055337 m!4658767))

(assert (=> b!4055337 m!4657787))

(assert (=> b!4055337 m!4657879))

(declare-fun m!4658769 () Bool)

(assert (=> b!4055336 m!4658769))

(declare-fun m!4658771 () Bool)

(assert (=> d!1204678 m!4658771))

(assert (=> d!1204678 m!4658323))

(assert (=> d!1204678 m!4658375))

(assert (=> b!4054815 d!1204678))

(declare-fun e!2516493 () Bool)

(declare-fun lt!1447487 () List!43473)

(declare-fun b!4055346 () Bool)

(assert (=> b!4055346 (= e!2516493 (or (not (= lt!1447210 Nil!43349)) (= lt!1447487 lt!1447241)))))

(declare-fun b!4055345 () Bool)

(declare-fun res!1653426 () Bool)

(assert (=> b!4055345 (=> (not res!1653426) (not e!2516493))))

(assert (=> b!4055345 (= res!1653426 (= (size!32410 lt!1447487) (+ (size!32410 lt!1447241) (size!32410 lt!1447210))))))

(declare-fun b!4055344 () Bool)

(declare-fun e!2516492 () List!43473)

(assert (=> b!4055344 (= e!2516492 (Cons!43349 (h!48769 lt!1447241) (++!11356 (t!336182 lt!1447241) lt!1447210)))))

(declare-fun d!1204682 () Bool)

(assert (=> d!1204682 e!2516493))

(declare-fun res!1653427 () Bool)

(assert (=> d!1204682 (=> (not res!1653427) (not e!2516493))))

(assert (=> d!1204682 (= res!1653427 (= (content!6600 lt!1447487) ((_ map or) (content!6600 lt!1447241) (content!6600 lt!1447210))))))

(assert (=> d!1204682 (= lt!1447487 e!2516492)))

(declare-fun c!700416 () Bool)

(assert (=> d!1204682 (= c!700416 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204682 (= (++!11356 lt!1447241 lt!1447210) lt!1447487)))

(declare-fun b!4055343 () Bool)

(assert (=> b!4055343 (= e!2516492 lt!1447210)))

(assert (= (and d!1204682 c!700416) b!4055343))

(assert (= (and d!1204682 (not c!700416)) b!4055344))

(assert (= (and d!1204682 res!1653427) b!4055345))

(assert (= (and b!4055345 res!1653426) b!4055346))

(declare-fun m!4658783 () Bool)

(assert (=> b!4055345 m!4658783))

(assert (=> b!4055345 m!4657785))

(assert (=> b!4055345 m!4658379))

(declare-fun m!4658785 () Bool)

(assert (=> b!4055344 m!4658785))

(declare-fun m!4658787 () Bool)

(assert (=> d!1204682 m!4658787))

(assert (=> d!1204682 m!4658361))

(assert (=> d!1204682 m!4658385))

(assert (=> b!4054836 d!1204682))

(declare-fun d!1204686 () Bool)

(declare-fun lt!1447489 () List!43473)

(assert (=> d!1204686 (= (++!11356 lt!1447241 lt!1447489) prefix!494)))

(declare-fun e!2516496 () List!43473)

(assert (=> d!1204686 (= lt!1447489 e!2516496)))

(declare-fun c!700418 () Bool)

(assert (=> d!1204686 (= c!700418 ((_ is Cons!43349) lt!1447241))))

(assert (=> d!1204686 (>= (size!32410 prefix!494) (size!32410 lt!1447241))))

(assert (=> d!1204686 (= (getSuffix!2458 prefix!494 lt!1447241) lt!1447489)))

(declare-fun b!4055351 () Bool)

(assert (=> b!4055351 (= e!2516496 (getSuffix!2458 (tail!6297 prefix!494) (t!336182 lt!1447241)))))

(declare-fun b!4055352 () Bool)

(assert (=> b!4055352 (= e!2516496 prefix!494)))

(assert (= (and d!1204686 c!700418) b!4055351))

(assert (= (and d!1204686 (not c!700418)) b!4055352))

(declare-fun m!4658795 () Bool)

(assert (=> d!1204686 m!4658795))

(assert (=> d!1204686 m!4657787))

(assert (=> d!1204686 m!4657785))

(assert (=> b!4055351 m!4658491))

(assert (=> b!4055351 m!4658491))

(declare-fun m!4658799 () Bool)

(assert (=> b!4055351 m!4658799))

(assert (=> b!4054836 d!1204686))

(declare-fun b!4055356 () Bool)

(declare-fun e!2516499 () Bool)

(assert (=> b!4055356 (= e!2516499 (>= (size!32410 prefix!494) (size!32410 lt!1447241)))))

(declare-fun b!4055353 () Bool)

(declare-fun e!2516498 () Bool)

(declare-fun e!2516497 () Bool)

(assert (=> b!4055353 (= e!2516498 e!2516497)))

(declare-fun res!1653432 () Bool)

(assert (=> b!4055353 (=> (not res!1653432) (not e!2516497))))

(assert (=> b!4055353 (= res!1653432 (not ((_ is Nil!43349) prefix!494)))))

(declare-fun b!4055354 () Bool)

(declare-fun res!1653431 () Bool)

(assert (=> b!4055354 (=> (not res!1653431) (not e!2516497))))

(assert (=> b!4055354 (= res!1653431 (= (head!8565 lt!1447241) (head!8565 prefix!494)))))

(declare-fun d!1204690 () Bool)

(assert (=> d!1204690 e!2516499))

(declare-fun res!1653433 () Bool)

(assert (=> d!1204690 (=> res!1653433 e!2516499)))

(declare-fun lt!1447491 () Bool)

(assert (=> d!1204690 (= res!1653433 (not lt!1447491))))

(assert (=> d!1204690 (= lt!1447491 e!2516498)))

(declare-fun res!1653430 () Bool)

(assert (=> d!1204690 (=> res!1653430 e!2516498)))

(assert (=> d!1204690 (= res!1653430 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204690 (= (isPrefix!4041 lt!1447241 prefix!494) lt!1447491)))

(declare-fun b!4055355 () Bool)

(assert (=> b!4055355 (= e!2516497 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 prefix!494)))))

(assert (= (and d!1204690 (not res!1653430)) b!4055353))

(assert (= (and b!4055353 res!1653432) b!4055354))

(assert (= (and b!4055354 res!1653431) b!4055355))

(assert (= (and d!1204690 (not res!1653433)) b!4055356))

(assert (=> b!4055356 m!4657787))

(assert (=> b!4055356 m!4657785))

(assert (=> b!4055354 m!4658475))

(assert (=> b!4055354 m!4658489))

(assert (=> b!4055355 m!4658479))

(assert (=> b!4055355 m!4658491))

(assert (=> b!4055355 m!4658479))

(assert (=> b!4055355 m!4658491))

(declare-fun m!4658807 () Bool)

(assert (=> b!4055355 m!4658807))

(assert (=> b!4054836 d!1204690))

(declare-fun d!1204694 () Bool)

(assert (=> d!1204694 (isPrefix!4041 lt!1447241 prefix!494)))

(declare-fun lt!1447497 () Unit!62690)

(declare-fun choose!24608 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> d!1204694 (= lt!1447497 (choose!24608 prefix!494 lt!1447241 lt!1447224))))

(assert (=> d!1204694 (isPrefix!4041 prefix!494 lt!1447224)))

(assert (=> d!1204694 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!605 prefix!494 lt!1447241 lt!1447224) lt!1447497)))

(declare-fun bs!591753 () Bool)

(assert (= bs!591753 d!1204694))

(assert (=> bs!591753 m!4657855))

(declare-fun m!4658825 () Bool)

(assert (=> bs!591753 m!4658825))

(assert (=> bs!591753 m!4657823))

(assert (=> b!4054836 d!1204694))

(declare-fun b!4055370 () Bool)

(declare-fun e!2516507 () Bool)

(declare-fun lt!1447498 () List!43473)

(assert (=> b!4055370 (= e!2516507 (or (not (= suffixResult!105 Nil!43349)) (= lt!1447498 lt!1447241)))))

(declare-fun b!4055369 () Bool)

(declare-fun res!1653440 () Bool)

(assert (=> b!4055369 (=> (not res!1653440) (not e!2516507))))

(assert (=> b!4055369 (= res!1653440 (= (size!32410 lt!1447498) (+ (size!32410 lt!1447241) (size!32410 suffixResult!105))))))

(declare-fun b!4055368 () Bool)

(declare-fun e!2516506 () List!43473)

(assert (=> b!4055368 (= e!2516506 (Cons!43349 (h!48769 lt!1447241) (++!11356 (t!336182 lt!1447241) suffixResult!105)))))

(declare-fun d!1204702 () Bool)

(assert (=> d!1204702 e!2516507))

(declare-fun res!1653441 () Bool)

(assert (=> d!1204702 (=> (not res!1653441) (not e!2516507))))

(assert (=> d!1204702 (= res!1653441 (= (content!6600 lt!1447498) ((_ map or) (content!6600 lt!1447241) (content!6600 suffixResult!105))))))

(assert (=> d!1204702 (= lt!1447498 e!2516506)))

(declare-fun c!700421 () Bool)

(assert (=> d!1204702 (= c!700421 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204702 (= (++!11356 lt!1447241 suffixResult!105) lt!1447498)))

(declare-fun b!4055367 () Bool)

(assert (=> b!4055367 (= e!2516506 suffixResult!105)))

(assert (= (and d!1204702 c!700421) b!4055367))

(assert (= (and d!1204702 (not c!700421)) b!4055368))

(assert (= (and d!1204702 res!1653441) b!4055369))

(assert (= (and b!4055369 res!1653440) b!4055370))

(declare-fun m!4658827 () Bool)

(assert (=> b!4055369 m!4658827))

(assert (=> b!4055369 m!4657785))

(declare-fun m!4658829 () Bool)

(assert (=> b!4055369 m!4658829))

(declare-fun m!4658831 () Bool)

(assert (=> b!4055368 m!4658831))

(declare-fun m!4658833 () Bool)

(assert (=> d!1204702 m!4658833))

(assert (=> d!1204702 m!4658361))

(declare-fun m!4658835 () Bool)

(assert (=> d!1204702 m!4658835))

(assert (=> b!4054814 d!1204702))

(declare-fun d!1204704 () Bool)

(declare-fun e!2516508 () Bool)

(assert (=> d!1204704 e!2516508))

(declare-fun res!1653442 () Bool)

(assert (=> d!1204704 (=> (not res!1653442) (not e!2516508))))

(assert (=> d!1204704 (= res!1653442 (semiInverseModEq!2970 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))))))

(declare-fun Unit!62704 () Unit!62690)

(assert (=> d!1204704 (= (lemmaInv!1163 (transformation!6954 (rule!10038 token!484))) Unit!62704)))

(declare-fun b!4055371 () Bool)

(assert (=> b!4055371 (= e!2516508 (equivClasses!2869 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))))))

(assert (= (and d!1204704 res!1653442) b!4055371))

(assert (=> d!1204704 m!4658345))

(assert (=> b!4055371 m!4658347))

(assert (=> b!4054814 d!1204704))

(declare-fun d!1204706 () Bool)

(declare-fun res!1653443 () Bool)

(declare-fun e!2516509 () Bool)

(assert (=> d!1204706 (=> (not res!1653443) (not e!2516509))))

(assert (=> d!1204706 (= res!1653443 (validRegex!5362 (regex!6954 (rule!10038 token!484))))))

(assert (=> d!1204706 (= (ruleValid!2884 thiss!21717 (rule!10038 token!484)) e!2516509)))

(declare-fun b!4055372 () Bool)

(declare-fun res!1653444 () Bool)

(assert (=> b!4055372 (=> (not res!1653444) (not e!2516509))))

(assert (=> b!4055372 (= res!1653444 (not (nullable!4162 (regex!6954 (rule!10038 token!484)))))))

(declare-fun b!4055373 () Bool)

(assert (=> b!4055373 (= e!2516509 (not (= (tag!7814 (rule!10038 token!484)) (String!49639 ""))))))

(assert (= (and d!1204706 res!1653443) b!4055372))

(assert (= (and b!4055372 res!1653444) b!4055373))

(declare-fun m!4658839 () Bool)

(assert (=> d!1204706 m!4658839))

(declare-fun m!4658841 () Bool)

(assert (=> b!4055372 m!4658841))

(assert (=> b!4054814 d!1204706))

(declare-fun d!1204710 () Bool)

(assert (=> d!1204710 (ruleValid!2884 thiss!21717 (rule!10038 token!484))))

(declare-fun lt!1447502 () Unit!62690)

(assert (=> d!1204710 (= lt!1447502 (choose!24597 thiss!21717 (rule!10038 token!484) rules!2999))))

(assert (=> d!1204710 (contains!8622 rules!2999 (rule!10038 token!484))))

(assert (=> d!1204710 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1954 thiss!21717 (rule!10038 token!484) rules!2999) lt!1447502)))

(declare-fun bs!591755 () Bool)

(assert (= bs!591755 d!1204710))

(assert (=> bs!591755 m!4657771))

(declare-fun m!4658843 () Bool)

(assert (=> bs!591755 m!4658843))

(assert (=> bs!591755 m!4657775))

(assert (=> b!4054814 d!1204710))

(declare-fun b!4055377 () Bool)

(declare-fun lt!1447503 () List!43473)

(declare-fun e!2516511 () Bool)

(assert (=> b!4055377 (= e!2516511 (or (not (= lt!1447234 Nil!43349)) (= lt!1447503 lt!1447238)))))

(declare-fun b!4055376 () Bool)

(declare-fun res!1653445 () Bool)

(assert (=> b!4055376 (=> (not res!1653445) (not e!2516511))))

(assert (=> b!4055376 (= res!1653445 (= (size!32410 lt!1447503) (+ (size!32410 lt!1447238) (size!32410 lt!1447234))))))

(declare-fun b!4055375 () Bool)

(declare-fun e!2516510 () List!43473)

(assert (=> b!4055375 (= e!2516510 (Cons!43349 (h!48769 lt!1447238) (++!11356 (t!336182 lt!1447238) lt!1447234)))))

(declare-fun d!1204712 () Bool)

(assert (=> d!1204712 e!2516511))

(declare-fun res!1653446 () Bool)

(assert (=> d!1204712 (=> (not res!1653446) (not e!2516511))))

(assert (=> d!1204712 (= res!1653446 (= (content!6600 lt!1447503) ((_ map or) (content!6600 lt!1447238) (content!6600 lt!1447234))))))

(assert (=> d!1204712 (= lt!1447503 e!2516510)))

(declare-fun c!700422 () Bool)

(assert (=> d!1204712 (= c!700422 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204712 (= (++!11356 lt!1447238 lt!1447234) lt!1447503)))

(declare-fun b!4055374 () Bool)

(assert (=> b!4055374 (= e!2516510 lt!1447234)))

(assert (= (and d!1204712 c!700422) b!4055374))

(assert (= (and d!1204712 (not c!700422)) b!4055375))

(assert (= (and d!1204712 res!1653446) b!4055376))

(assert (= (and b!4055376 res!1653445) b!4055377))

(declare-fun m!4658845 () Bool)

(assert (=> b!4055376 m!4658845))

(assert (=> b!4055376 m!4657743))

(declare-fun m!4658847 () Bool)

(assert (=> b!4055376 m!4658847))

(declare-fun m!4658849 () Bool)

(assert (=> b!4055375 m!4658849))

(declare-fun m!4658851 () Bool)

(assert (=> d!1204712 m!4658851))

(assert (=> d!1204712 m!4657935))

(declare-fun m!4658853 () Bool)

(assert (=> d!1204712 m!4658853))

(assert (=> b!4054835 d!1204712))

(declare-fun d!1204714 () Bool)

(declare-fun lt!1447504 () List!43473)

(assert (=> d!1204714 (= (++!11356 lt!1447238 lt!1447504) lt!1447230)))

(declare-fun e!2516512 () List!43473)

(assert (=> d!1204714 (= lt!1447504 e!2516512)))

(declare-fun c!700423 () Bool)

(assert (=> d!1204714 (= c!700423 ((_ is Cons!43349) lt!1447238))))

(assert (=> d!1204714 (>= (size!32410 lt!1447230) (size!32410 lt!1447238))))

(assert (=> d!1204714 (= (getSuffix!2458 lt!1447230 lt!1447238) lt!1447504)))

(declare-fun b!4055378 () Bool)

(assert (=> b!4055378 (= e!2516512 (getSuffix!2458 (tail!6297 lt!1447230) (t!336182 lt!1447238)))))

(declare-fun b!4055379 () Bool)

(assert (=> b!4055379 (= e!2516512 lt!1447230)))

(assert (= (and d!1204714 c!700423) b!4055378))

(assert (= (and d!1204714 (not c!700423)) b!4055379))

(declare-fun m!4658855 () Bool)

(assert (=> d!1204714 m!4658855))

(assert (=> d!1204714 m!4658081))

(assert (=> d!1204714 m!4657743))

(declare-fun m!4658857 () Bool)

(assert (=> b!4055378 m!4658857))

(assert (=> b!4055378 m!4658857))

(declare-fun m!4658859 () Bool)

(assert (=> b!4055378 m!4658859))

(assert (=> b!4054835 d!1204714))

(declare-fun d!1204716 () Bool)

(assert (=> d!1204716 (not (matchR!5812 (regex!6954 (rule!10038 token!484)) lt!1447241))))

(declare-fun lt!1447509 () Unit!62690)

(declare-fun choose!24609 (LexerInterface!6543 List!43475 Rule!13708 List!43473 List!43473 List!43473 Rule!13708) Unit!62690)

(assert (=> d!1204716 (= lt!1447509 (choose!24609 thiss!21717 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447238 lt!1447230 lt!1447241 (rule!10038 token!484)))))

(assert (=> d!1204716 (isPrefix!4041 lt!1447238 lt!1447230)))

(assert (=> d!1204716 (= (lemmaMaxPrefixOutputsMaxPrefix!480 thiss!21717 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260))) lt!1447238 lt!1447230 lt!1447241 (rule!10038 token!484)) lt!1447509)))

(declare-fun bs!591756 () Bool)

(assert (= bs!591756 d!1204716))

(assert (=> bs!591756 m!4657793))

(declare-fun m!4658879 () Bool)

(assert (=> bs!591756 m!4658879))

(assert (=> bs!591756 m!4657779))

(assert (=> b!4054818 d!1204716))

(declare-fun d!1204724 () Bool)

(declare-fun lt!1447510 () Int)

(assert (=> d!1204724 (>= lt!1447510 0)))

(declare-fun e!2516526 () Int)

(assert (=> d!1204724 (= lt!1447510 e!2516526)))

(declare-fun c!700432 () Bool)

(assert (=> d!1204724 (= c!700432 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204724 (= (size!32410 lt!1447241) lt!1447510)))

(declare-fun b!4055403 () Bool)

(assert (=> b!4055403 (= e!2516526 0)))

(declare-fun b!4055404 () Bool)

(assert (=> b!4055404 (= e!2516526 (+ 1 (size!32410 (t!336182 lt!1447241))))))

(assert (= (and d!1204724 c!700432) b!4055403))

(assert (= (and d!1204724 (not c!700432)) b!4055404))

(declare-fun m!4658881 () Bool)

(assert (=> b!4055404 m!4658881))

(assert (=> b!4054839 d!1204724))

(declare-fun d!1204726 () Bool)

(declare-fun lt!1447511 () Int)

(assert (=> d!1204726 (>= lt!1447511 0)))

(declare-fun e!2516527 () Int)

(assert (=> d!1204726 (= lt!1447511 e!2516527)))

(declare-fun c!700433 () Bool)

(assert (=> d!1204726 (= c!700433 ((_ is Nil!43349) prefix!494))))

(assert (=> d!1204726 (= (size!32410 prefix!494) lt!1447511)))

(declare-fun b!4055405 () Bool)

(assert (=> b!4055405 (= e!2516527 0)))

(declare-fun b!4055406 () Bool)

(assert (=> b!4055406 (= e!2516527 (+ 1 (size!32410 (t!336182 prefix!494))))))

(assert (= (and d!1204726 c!700433) b!4055405))

(assert (= (and d!1204726 (not c!700433)) b!4055406))

(declare-fun m!4658883 () Bool)

(assert (=> b!4055406 m!4658883))

(assert (=> b!4054839 d!1204726))

(declare-fun d!1204728 () Bool)

(assert (=> d!1204728 (= (list!16152 (charsOf!4770 token!484)) (list!16153 (c!700336 (charsOf!4770 token!484))))))

(declare-fun bs!591757 () Bool)

(assert (= bs!591757 d!1204728))

(declare-fun m!4658885 () Bool)

(assert (=> bs!591757 m!4658885))

(assert (=> b!4054839 d!1204728))

(declare-fun d!1204730 () Bool)

(declare-fun lt!1447512 () BalanceConc!25924)

(assert (=> d!1204730 (= (list!16152 lt!1447512) (originalCharacters!7554 token!484))))

(assert (=> d!1204730 (= lt!1447512 (dynLambda!18412 (toChars!9369 (transformation!6954 (rule!10038 token!484))) (value!218823 token!484)))))

(assert (=> d!1204730 (= (charsOf!4770 token!484) lt!1447512)))

(declare-fun b_lambda!118491 () Bool)

(assert (=> (not b_lambda!118491) (not d!1204730)))

(assert (=> d!1204730 t!336198))

(declare-fun b_and!311851 () Bool)

(assert (= b_and!311831 (and (=> t!336198 result!295588) b_and!311851)))

(assert (=> d!1204730 t!336200))

(declare-fun b_and!311853 () Bool)

(assert (= b_and!311833 (and (=> t!336200 result!295590) b_and!311853)))

(declare-fun m!4658887 () Bool)

(assert (=> d!1204730 m!4658887))

(assert (=> d!1204730 m!4658399))

(assert (=> b!4054839 d!1204730))

(declare-fun e!2516529 () Bool)

(declare-fun lt!1447513 () List!43473)

(declare-fun b!4055410 () Bool)

(assert (=> b!4055410 (= e!2516529 (or (not (= lt!1447232 Nil!43349)) (= lt!1447513 newSuffix!27)))))

(declare-fun b!4055409 () Bool)

(declare-fun res!1653454 () Bool)

(assert (=> b!4055409 (=> (not res!1653454) (not e!2516529))))

(assert (=> b!4055409 (= res!1653454 (= (size!32410 lt!1447513) (+ (size!32410 newSuffix!27) (size!32410 lt!1447232))))))

(declare-fun b!4055408 () Bool)

(declare-fun e!2516528 () List!43473)

(assert (=> b!4055408 (= e!2516528 (Cons!43349 (h!48769 newSuffix!27) (++!11356 (t!336182 newSuffix!27) lt!1447232)))))

(declare-fun d!1204732 () Bool)

(assert (=> d!1204732 e!2516529))

(declare-fun res!1653455 () Bool)

(assert (=> d!1204732 (=> (not res!1653455) (not e!2516529))))

(assert (=> d!1204732 (= res!1653455 (= (content!6600 lt!1447513) ((_ map or) (content!6600 newSuffix!27) (content!6600 lt!1447232))))))

(assert (=> d!1204732 (= lt!1447513 e!2516528)))

(declare-fun c!700434 () Bool)

(assert (=> d!1204732 (= c!700434 ((_ is Nil!43349) newSuffix!27))))

(assert (=> d!1204732 (= (++!11356 newSuffix!27 lt!1447232) lt!1447513)))

(declare-fun b!4055407 () Bool)

(assert (=> b!4055407 (= e!2516528 lt!1447232)))

(assert (= (and d!1204732 c!700434) b!4055407))

(assert (= (and d!1204732 (not c!700434)) b!4055408))

(assert (= (and d!1204732 res!1653455) b!4055409))

(assert (= (and b!4055409 res!1653454) b!4055410))

(declare-fun m!4658889 () Bool)

(assert (=> b!4055409 m!4658889))

(assert (=> b!4055409 m!4657881))

(assert (=> b!4055409 m!4658329))

(declare-fun m!4658891 () Bool)

(assert (=> b!4055408 m!4658891))

(declare-fun m!4658893 () Bool)

(assert (=> d!1204732 m!4658893))

(assert (=> d!1204732 m!4658425))

(assert (=> d!1204732 m!4658337))

(assert (=> b!4054817 d!1204732))

(declare-fun d!1204734 () Bool)

(declare-fun lt!1447514 () List!43473)

(assert (=> d!1204734 (= (++!11356 newSuffix!27 lt!1447514) suffix!1299)))

(declare-fun e!2516530 () List!43473)

(assert (=> d!1204734 (= lt!1447514 e!2516530)))

(declare-fun c!700435 () Bool)

(assert (=> d!1204734 (= c!700435 ((_ is Cons!43349) newSuffix!27))))

(assert (=> d!1204734 (>= (size!32410 suffix!1299) (size!32410 newSuffix!27))))

(assert (=> d!1204734 (= (getSuffix!2458 suffix!1299 newSuffix!27) lt!1447514)))

(declare-fun b!4055411 () Bool)

(assert (=> b!4055411 (= e!2516530 (getSuffix!2458 (tail!6297 suffix!1299) (t!336182 newSuffix!27)))))

(declare-fun b!4055412 () Bool)

(assert (=> b!4055412 (= e!2516530 suffix!1299)))

(assert (= (and d!1204734 c!700435) b!4055411))

(assert (= (and d!1204734 (not c!700435)) b!4055412))

(declare-fun m!4658895 () Bool)

(assert (=> d!1204734 m!4658895))

(assert (=> d!1204734 m!4657879))

(assert (=> d!1204734 m!4657881))

(assert (=> b!4055411 m!4658409))

(assert (=> b!4055411 m!4658409))

(declare-fun m!4658897 () Bool)

(assert (=> b!4055411 m!4658897))

(assert (=> b!4054817 d!1204734))

(declare-fun d!1204736 () Bool)

(declare-fun lt!1447522 () Int)

(assert (=> d!1204736 (>= lt!1447522 0)))

(declare-fun e!2516546 () Int)

(assert (=> d!1204736 (= lt!1447522 e!2516546)))

(declare-fun c!700449 () Bool)

(assert (=> d!1204736 (= c!700449 (and ((_ is Cons!43351) rules!2999) (= (h!48771 rules!2999) (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(assert (=> d!1204736 (contains!8622 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))

(assert (=> d!1204736 (= (getIndex!566 rules!2999 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447522)))

(declare-fun b!4055437 () Bool)

(assert (=> b!4055437 (= e!2516546 0)))

(declare-fun b!4055438 () Bool)

(declare-fun e!2516545 () Int)

(assert (=> b!4055438 (= e!2516546 e!2516545)))

(declare-fun c!700448 () Bool)

(assert (=> b!4055438 (= c!700448 (and ((_ is Cons!43351) rules!2999) (not (= (h!48771 rules!2999) (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(declare-fun b!4055439 () Bool)

(assert (=> b!4055439 (= e!2516545 (+ 1 (getIndex!566 (t!336184 rules!2999) (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(declare-fun b!4055440 () Bool)

(assert (=> b!4055440 (= e!2516545 (- 1))))

(assert (= (and d!1204736 c!700449) b!4055437))

(assert (= (and d!1204736 (not c!700449)) b!4055438))

(assert (= (and b!4055438 c!700448) b!4055439))

(assert (= (and b!4055438 (not c!700448)) b!4055440))

(assert (=> d!1204736 m!4658239))

(declare-fun m!4658905 () Bool)

(assert (=> b!4055439 m!4658905))

(assert (=> b!4054838 d!1204736))

(declare-fun d!1204744 () Bool)

(declare-fun lt!1447525 () Int)

(assert (=> d!1204744 (>= lt!1447525 0)))

(declare-fun e!2516548 () Int)

(assert (=> d!1204744 (= lt!1447525 e!2516548)))

(declare-fun c!700451 () Bool)

(assert (=> d!1204744 (= c!700451 (and ((_ is Cons!43351) rules!2999) (= (h!48771 rules!2999) (rule!10038 token!484))))))

(assert (=> d!1204744 (contains!8622 rules!2999 (rule!10038 token!484))))

(assert (=> d!1204744 (= (getIndex!566 rules!2999 (rule!10038 token!484)) lt!1447525)))

(declare-fun b!4055441 () Bool)

(assert (=> b!4055441 (= e!2516548 0)))

(declare-fun b!4055442 () Bool)

(declare-fun e!2516547 () Int)

(assert (=> b!4055442 (= e!2516548 e!2516547)))

(declare-fun c!700450 () Bool)

(assert (=> b!4055442 (= c!700450 (and ((_ is Cons!43351) rules!2999) (not (= (h!48771 rules!2999) (rule!10038 token!484)))))))

(declare-fun b!4055443 () Bool)

(assert (=> b!4055443 (= e!2516547 (+ 1 (getIndex!566 (t!336184 rules!2999) (rule!10038 token!484))))))

(declare-fun b!4055444 () Bool)

(assert (=> b!4055444 (= e!2516547 (- 1))))

(assert (= (and d!1204744 c!700451) b!4055441))

(assert (= (and d!1204744 (not c!700451)) b!4055442))

(assert (= (and b!4055442 c!700450) b!4055443))

(assert (= (and b!4055442 (not c!700450)) b!4055444))

(assert (=> d!1204744 m!4657775))

(declare-fun m!4658907 () Bool)

(assert (=> b!4055443 m!4658907))

(assert (=> b!4054838 d!1204744))

(declare-fun d!1204746 () Bool)

(assert (=> d!1204746 (= (_2!24339 (v!39779 lt!1447260)) newSuffixResult!27)))

(declare-fun lt!1447526 () Unit!62690)

(assert (=> d!1204746 (= lt!1447526 (choose!24594 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447241 newSuffixResult!27 lt!1447230))))

(assert (=> d!1204746 (isPrefix!4041 lt!1447238 lt!1447230)))

(assert (=> d!1204746 (= (lemmaSamePrefixThenSameSuffix!2202 lt!1447238 (_2!24339 (v!39779 lt!1447260)) lt!1447241 newSuffixResult!27 lt!1447230) lt!1447526)))

(declare-fun bs!591759 () Bool)

(assert (= bs!591759 d!1204746))

(declare-fun m!4658909 () Bool)

(assert (=> bs!591759 m!4658909))

(assert (=> bs!591759 m!4657779))

(assert (=> b!4054838 d!1204746))

(declare-fun d!1204748 () Bool)

(assert (=> d!1204748 (= lt!1447238 lt!1447241)))

(declare-fun lt!1447534 () Unit!62690)

(declare-fun choose!24610 (List!43473 List!43473 List!43473) Unit!62690)

(assert (=> d!1204748 (= lt!1447534 (choose!24610 lt!1447238 lt!1447241 lt!1447230))))

(assert (=> d!1204748 (isPrefix!4041 lt!1447238 lt!1447230)))

(assert (=> d!1204748 (= (lemmaIsPrefixSameLengthThenSameList!931 lt!1447238 lt!1447241 lt!1447230) lt!1447534)))

(declare-fun bs!591763 () Bool)

(assert (= bs!591763 d!1204748))

(declare-fun m!4658935 () Bool)

(assert (=> bs!591763 m!4658935))

(assert (=> bs!591763 m!4657779))

(assert (=> b!4054838 d!1204748))

(declare-fun d!1204762 () Bool)

(assert (=> d!1204762 (= (inv!57945 (tag!7814 (h!48771 rules!2999))) (= (mod (str.len (value!218822 (tag!7814 (h!48771 rules!2999)))) 2) 0))))

(assert (=> b!4054832 d!1204762))

(declare-fun d!1204764 () Bool)

(declare-fun res!1653468 () Bool)

(declare-fun e!2516558 () Bool)

(assert (=> d!1204764 (=> (not res!1653468) (not e!2516558))))

(assert (=> d!1204764 (= res!1653468 (semiInverseModEq!2970 (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toValue!9510 (transformation!6954 (h!48771 rules!2999)))))))

(assert (=> d!1204764 (= (inv!57949 (transformation!6954 (h!48771 rules!2999))) e!2516558)))

(declare-fun b!4055457 () Bool)

(assert (=> b!4055457 (= e!2516558 (equivClasses!2869 (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toValue!9510 (transformation!6954 (h!48771 rules!2999)))))))

(assert (= (and d!1204764 res!1653468) b!4055457))

(declare-fun m!4658937 () Bool)

(assert (=> d!1204764 m!4658937))

(declare-fun m!4658939 () Bool)

(assert (=> b!4055457 m!4658939))

(assert (=> b!4054832 d!1204764))

(declare-fun d!1204766 () Bool)

(assert (=> d!1204766 (not (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447238))))

(declare-fun lt!1447536 () Unit!62690)

(assert (=> d!1204766 (= lt!1447536 (choose!24609 thiss!21717 rules!2999 (rule!10038 token!484) lt!1447241 lt!1447224 lt!1447238 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(assert (=> d!1204766 (isPrefix!4041 lt!1447241 lt!1447224)))

(assert (=> d!1204766 (= (lemmaMaxPrefixOutputsMaxPrefix!480 thiss!21717 rules!2999 (rule!10038 token!484) lt!1447241 lt!1447224 lt!1447238 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447536)))

(declare-fun bs!591764 () Bool)

(assert (= bs!591764 d!1204766))

(assert (=> bs!591764 m!4657783))

(declare-fun m!4658943 () Bool)

(assert (=> bs!591764 m!4658943))

(assert (=> bs!591764 m!4657821))

(assert (=> b!4054831 d!1204766))

(declare-fun b!4055554 () Bool)

(declare-fun res!1653514 () Bool)

(declare-fun e!2516620 () Bool)

(assert (=> b!4055554 (=> res!1653514 e!2516620)))

(assert (=> b!4055554 (= res!1653514 (not ((_ is ElementMatch!11859) (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(declare-fun e!2516617 () Bool)

(assert (=> b!4055554 (= e!2516617 e!2516620)))

(declare-fun d!1204770 () Bool)

(declare-fun e!2516618 () Bool)

(assert (=> d!1204770 e!2516618))

(declare-fun c!700461 () Bool)

(assert (=> d!1204770 (= c!700461 ((_ is EmptyExpr!11859) (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(declare-fun lt!1447547 () Bool)

(declare-fun e!2516621 () Bool)

(assert (=> d!1204770 (= lt!1447547 e!2516621)))

(declare-fun c!700463 () Bool)

(assert (=> d!1204770 (= c!700463 (isEmpty!25866 lt!1447238))))

(assert (=> d!1204770 (validRegex!5362 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))

(assert (=> d!1204770 (= (matchR!5812 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) lt!1447238) lt!1447547)))

(declare-fun b!4055555 () Bool)

(declare-fun res!1653508 () Bool)

(assert (=> b!4055555 (=> res!1653508 e!2516620)))

(declare-fun e!2516619 () Bool)

(assert (=> b!4055555 (= res!1653508 e!2516619)))

(declare-fun res!1653509 () Bool)

(assert (=> b!4055555 (=> (not res!1653509) (not e!2516619))))

(assert (=> b!4055555 (= res!1653509 lt!1447547)))

(declare-fun b!4055556 () Bool)

(assert (=> b!4055556 (= e!2516619 (= (head!8565 lt!1447238) (c!700337 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))))))

(declare-fun b!4055557 () Bool)

(declare-fun res!1653511 () Bool)

(declare-fun e!2516616 () Bool)

(assert (=> b!4055557 (=> res!1653511 e!2516616)))

(assert (=> b!4055557 (= res!1653511 (not (isEmpty!25866 (tail!6297 lt!1447238))))))

(declare-fun b!4055558 () Bool)

(declare-fun call!288017 () Bool)

(assert (=> b!4055558 (= e!2516618 (= lt!1447547 call!288017))))

(declare-fun bm!288012 () Bool)

(assert (=> bm!288012 (= call!288017 (isEmpty!25866 lt!1447238))))

(declare-fun b!4055559 () Bool)

(assert (=> b!4055559 (= e!2516618 e!2516617)))

(declare-fun c!700462 () Bool)

(assert (=> b!4055559 (= c!700462 ((_ is EmptyLang!11859) (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(declare-fun b!4055560 () Bool)

(declare-fun e!2516622 () Bool)

(assert (=> b!4055560 (= e!2516620 e!2516622)))

(declare-fun res!1653515 () Bool)

(assert (=> b!4055560 (=> (not res!1653515) (not e!2516622))))

(assert (=> b!4055560 (= res!1653515 (not lt!1447547))))

(declare-fun b!4055561 () Bool)

(assert (=> b!4055561 (= e!2516622 e!2516616)))

(declare-fun res!1653513 () Bool)

(assert (=> b!4055561 (=> res!1653513 e!2516616)))

(assert (=> b!4055561 (= res!1653513 call!288017)))

(declare-fun b!4055562 () Bool)

(declare-fun derivativeStep!3567 (Regex!11859 C!23904) Regex!11859)

(assert (=> b!4055562 (= e!2516621 (matchR!5812 (derivativeStep!3567 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))) (head!8565 lt!1447238)) (tail!6297 lt!1447238)))))

(declare-fun b!4055563 () Bool)

(assert (=> b!4055563 (= e!2516617 (not lt!1447547))))

(declare-fun b!4055564 () Bool)

(declare-fun res!1653512 () Bool)

(assert (=> b!4055564 (=> (not res!1653512) (not e!2516619))))

(assert (=> b!4055564 (= res!1653512 (not call!288017))))

(declare-fun b!4055565 () Bool)

(declare-fun res!1653510 () Bool)

(assert (=> b!4055565 (=> (not res!1653510) (not e!2516619))))

(assert (=> b!4055565 (= res!1653510 (isEmpty!25866 (tail!6297 lt!1447238)))))

(declare-fun b!4055566 () Bool)

(assert (=> b!4055566 (= e!2516616 (not (= (head!8565 lt!1447238) (c!700337 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))))

(declare-fun b!4055567 () Bool)

(assert (=> b!4055567 (= e!2516621 (nullable!4162 (regex!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260))))))))

(assert (= (and d!1204770 c!700463) b!4055567))

(assert (= (and d!1204770 (not c!700463)) b!4055562))

(assert (= (and d!1204770 c!700461) b!4055558))

(assert (= (and d!1204770 (not c!700461)) b!4055559))

(assert (= (and b!4055559 c!700462) b!4055563))

(assert (= (and b!4055559 (not c!700462)) b!4055554))

(assert (= (and b!4055554 (not res!1653514)) b!4055555))

(assert (= (and b!4055555 res!1653509) b!4055564))

(assert (= (and b!4055564 res!1653512) b!4055565))

(assert (= (and b!4055565 res!1653510) b!4055556))

(assert (= (and b!4055555 (not res!1653508)) b!4055560))

(assert (= (and b!4055560 res!1653515) b!4055561))

(assert (= (and b!4055561 (not res!1653513)) b!4055557))

(assert (= (and b!4055557 (not res!1653511)) b!4055566))

(assert (= (or b!4055558 b!4055561 b!4055564) bm!288012))

(declare-fun m!4658989 () Bool)

(assert (=> bm!288012 m!4658989))

(assert (=> d!1204770 m!4658989))

(assert (=> d!1204770 m!4658311))

(assert (=> b!4055562 m!4657913))

(assert (=> b!4055562 m!4657913))

(declare-fun m!4658991 () Bool)

(assert (=> b!4055562 m!4658991))

(assert (=> b!4055562 m!4657917))

(assert (=> b!4055562 m!4658991))

(assert (=> b!4055562 m!4657917))

(declare-fun m!4658993 () Bool)

(assert (=> b!4055562 m!4658993))

(assert (=> b!4055566 m!4657913))

(assert (=> b!4055556 m!4657913))

(assert (=> b!4055567 m!4658313))

(assert (=> b!4055557 m!4657917))

(assert (=> b!4055557 m!4657917))

(declare-fun m!4658995 () Bool)

(assert (=> b!4055557 m!4658995))

(assert (=> b!4055565 m!4657917))

(assert (=> b!4055565 m!4657917))

(assert (=> b!4055565 m!4658995))

(assert (=> b!4054831 d!1204770))

(declare-fun d!1204788 () Bool)

(declare-fun res!1653518 () Bool)

(declare-fun e!2516625 () Bool)

(assert (=> d!1204788 (=> (not res!1653518) (not e!2516625))))

(declare-fun rulesValid!2703 (LexerInterface!6543 List!43475) Bool)

(assert (=> d!1204788 (= res!1653518 (rulesValid!2703 thiss!21717 rules!2999))))

(assert (=> d!1204788 (= (rulesInvariant!5886 thiss!21717 rules!2999) e!2516625)))

(declare-fun b!4055570 () Bool)

(declare-datatypes ((List!43476 0))(
  ( (Nil!43352) (Cons!43352 (h!48772 String!49638) (t!336233 List!43476)) )
))
(declare-fun noDuplicateTag!2704 (LexerInterface!6543 List!43475 List!43476) Bool)

(assert (=> b!4055570 (= e!2516625 (noDuplicateTag!2704 thiss!21717 rules!2999 Nil!43352))))

(assert (= (and d!1204788 res!1653518) b!4055570))

(declare-fun m!4658997 () Bool)

(assert (=> d!1204788 m!4658997))

(declare-fun m!4658999 () Bool)

(assert (=> b!4055570 m!4658999))

(assert (=> b!4054809 d!1204788))

(declare-fun b!4055574 () Bool)

(declare-fun e!2516628 () Bool)

(assert (=> b!4055574 (= e!2516628 (>= (size!32410 lt!1447230) (size!32410 lt!1447238)))))

(declare-fun b!4055571 () Bool)

(declare-fun e!2516627 () Bool)

(declare-fun e!2516626 () Bool)

(assert (=> b!4055571 (= e!2516627 e!2516626)))

(declare-fun res!1653521 () Bool)

(assert (=> b!4055571 (=> (not res!1653521) (not e!2516626))))

(assert (=> b!4055571 (= res!1653521 (not ((_ is Nil!43349) lt!1447230)))))

(declare-fun b!4055572 () Bool)

(declare-fun res!1653520 () Bool)

(assert (=> b!4055572 (=> (not res!1653520) (not e!2516626))))

(assert (=> b!4055572 (= res!1653520 (= (head!8565 lt!1447238) (head!8565 lt!1447230)))))

(declare-fun d!1204790 () Bool)

(assert (=> d!1204790 e!2516628))

(declare-fun res!1653522 () Bool)

(assert (=> d!1204790 (=> res!1653522 e!2516628)))

(declare-fun lt!1447548 () Bool)

(assert (=> d!1204790 (= res!1653522 (not lt!1447548))))

(assert (=> d!1204790 (= lt!1447548 e!2516627)))

(declare-fun res!1653519 () Bool)

(assert (=> d!1204790 (=> res!1653519 e!2516627)))

(assert (=> d!1204790 (= res!1653519 ((_ is Nil!43349) lt!1447238))))

(assert (=> d!1204790 (= (isPrefix!4041 lt!1447238 lt!1447230) lt!1447548)))

(declare-fun b!4055573 () Bool)

(assert (=> b!4055573 (= e!2516626 (isPrefix!4041 (tail!6297 lt!1447238) (tail!6297 lt!1447230)))))

(assert (= (and d!1204790 (not res!1653519)) b!4055571))

(assert (= (and b!4055571 res!1653521) b!4055572))

(assert (= (and b!4055572 res!1653520) b!4055573))

(assert (= (and d!1204790 (not res!1653522)) b!4055574))

(assert (=> b!4055574 m!4658081))

(assert (=> b!4055574 m!4657743))

(assert (=> b!4055572 m!4657913))

(declare-fun m!4659001 () Bool)

(assert (=> b!4055572 m!4659001))

(assert (=> b!4055573 m!4657917))

(assert (=> b!4055573 m!4658857))

(assert (=> b!4055573 m!4657917))

(assert (=> b!4055573 m!4658857))

(declare-fun m!4659003 () Bool)

(assert (=> b!4055573 m!4659003))

(assert (=> b!4054813 d!1204790))

(declare-fun b!4055575 () Bool)

(declare-fun res!1653529 () Bool)

(declare-fun e!2516633 () Bool)

(assert (=> b!4055575 (=> res!1653529 e!2516633)))

(assert (=> b!4055575 (= res!1653529 (not ((_ is ElementMatch!11859) (regex!6954 (rule!10038 token!484)))))))

(declare-fun e!2516630 () Bool)

(assert (=> b!4055575 (= e!2516630 e!2516633)))

(declare-fun d!1204792 () Bool)

(declare-fun e!2516631 () Bool)

(assert (=> d!1204792 e!2516631))

(declare-fun c!700464 () Bool)

(assert (=> d!1204792 (= c!700464 ((_ is EmptyExpr!11859) (regex!6954 (rule!10038 token!484))))))

(declare-fun lt!1447549 () Bool)

(declare-fun e!2516634 () Bool)

(assert (=> d!1204792 (= lt!1447549 e!2516634)))

(declare-fun c!700466 () Bool)

(assert (=> d!1204792 (= c!700466 (isEmpty!25866 lt!1447241))))

(assert (=> d!1204792 (validRegex!5362 (regex!6954 (rule!10038 token!484)))))

(assert (=> d!1204792 (= (matchR!5812 (regex!6954 (rule!10038 token!484)) lt!1447241) lt!1447549)))

(declare-fun b!4055576 () Bool)

(declare-fun res!1653523 () Bool)

(assert (=> b!4055576 (=> res!1653523 e!2516633)))

(declare-fun e!2516632 () Bool)

(assert (=> b!4055576 (= res!1653523 e!2516632)))

(declare-fun res!1653524 () Bool)

(assert (=> b!4055576 (=> (not res!1653524) (not e!2516632))))

(assert (=> b!4055576 (= res!1653524 lt!1447549)))

(declare-fun b!4055577 () Bool)

(assert (=> b!4055577 (= e!2516632 (= (head!8565 lt!1447241) (c!700337 (regex!6954 (rule!10038 token!484)))))))

(declare-fun b!4055578 () Bool)

(declare-fun res!1653526 () Bool)

(declare-fun e!2516629 () Bool)

(assert (=> b!4055578 (=> res!1653526 e!2516629)))

(assert (=> b!4055578 (= res!1653526 (not (isEmpty!25866 (tail!6297 lt!1447241))))))

(declare-fun b!4055579 () Bool)

(declare-fun call!288018 () Bool)

(assert (=> b!4055579 (= e!2516631 (= lt!1447549 call!288018))))

(declare-fun bm!288013 () Bool)

(assert (=> bm!288013 (= call!288018 (isEmpty!25866 lt!1447241))))

(declare-fun b!4055580 () Bool)

(assert (=> b!4055580 (= e!2516631 e!2516630)))

(declare-fun c!700465 () Bool)

(assert (=> b!4055580 (= c!700465 ((_ is EmptyLang!11859) (regex!6954 (rule!10038 token!484))))))

(declare-fun b!4055581 () Bool)

(declare-fun e!2516635 () Bool)

(assert (=> b!4055581 (= e!2516633 e!2516635)))

(declare-fun res!1653530 () Bool)

(assert (=> b!4055581 (=> (not res!1653530) (not e!2516635))))

(assert (=> b!4055581 (= res!1653530 (not lt!1447549))))

(declare-fun b!4055582 () Bool)

(assert (=> b!4055582 (= e!2516635 e!2516629)))

(declare-fun res!1653528 () Bool)

(assert (=> b!4055582 (=> res!1653528 e!2516629)))

(assert (=> b!4055582 (= res!1653528 call!288018)))

(declare-fun b!4055583 () Bool)

(assert (=> b!4055583 (= e!2516634 (matchR!5812 (derivativeStep!3567 (regex!6954 (rule!10038 token!484)) (head!8565 lt!1447241)) (tail!6297 lt!1447241)))))

(declare-fun b!4055584 () Bool)

(assert (=> b!4055584 (= e!2516630 (not lt!1447549))))

(declare-fun b!4055585 () Bool)

(declare-fun res!1653527 () Bool)

(assert (=> b!4055585 (=> (not res!1653527) (not e!2516632))))

(assert (=> b!4055585 (= res!1653527 (not call!288018))))

(declare-fun b!4055586 () Bool)

(declare-fun res!1653525 () Bool)

(assert (=> b!4055586 (=> (not res!1653525) (not e!2516632))))

(assert (=> b!4055586 (= res!1653525 (isEmpty!25866 (tail!6297 lt!1447241)))))

(declare-fun b!4055587 () Bool)

(assert (=> b!4055587 (= e!2516629 (not (= (head!8565 lt!1447241) (c!700337 (regex!6954 (rule!10038 token!484))))))))

(declare-fun b!4055588 () Bool)

(assert (=> b!4055588 (= e!2516634 (nullable!4162 (regex!6954 (rule!10038 token!484))))))

(assert (= (and d!1204792 c!700466) b!4055588))

(assert (= (and d!1204792 (not c!700466)) b!4055583))

(assert (= (and d!1204792 c!700464) b!4055579))

(assert (= (and d!1204792 (not c!700464)) b!4055580))

(assert (= (and b!4055580 c!700465) b!4055584))

(assert (= (and b!4055580 (not c!700465)) b!4055575))

(assert (= (and b!4055575 (not res!1653529)) b!4055576))

(assert (= (and b!4055576 res!1653524) b!4055585))

(assert (= (and b!4055585 res!1653527) b!4055586))

(assert (= (and b!4055586 res!1653525) b!4055577))

(assert (= (and b!4055576 (not res!1653523)) b!4055581))

(assert (= (and b!4055581 res!1653530) b!4055582))

(assert (= (and b!4055582 (not res!1653528)) b!4055578))

(assert (= (and b!4055578 (not res!1653526)) b!4055587))

(assert (= (or b!4055579 b!4055582 b!4055585) bm!288013))

(declare-fun m!4659005 () Bool)

(assert (=> bm!288013 m!4659005))

(assert (=> d!1204792 m!4659005))

(assert (=> d!1204792 m!4658839))

(assert (=> b!4055583 m!4658475))

(assert (=> b!4055583 m!4658475))

(declare-fun m!4659007 () Bool)

(assert (=> b!4055583 m!4659007))

(assert (=> b!4055583 m!4658479))

(assert (=> b!4055583 m!4659007))

(assert (=> b!4055583 m!4658479))

(declare-fun m!4659009 () Bool)

(assert (=> b!4055583 m!4659009))

(assert (=> b!4055587 m!4658475))

(assert (=> b!4055577 m!4658475))

(assert (=> b!4055588 m!4658841))

(assert (=> b!4055578 m!4658479))

(assert (=> b!4055578 m!4658479))

(declare-fun m!4659011 () Bool)

(assert (=> b!4055578 m!4659011))

(assert (=> b!4055586 m!4658479))

(assert (=> b!4055586 m!4658479))

(assert (=> b!4055586 m!4659011))

(assert (=> b!4054834 d!1204792))

(declare-fun b!4055592 () Bool)

(declare-fun e!2516638 () Bool)

(assert (=> b!4055592 (= e!2516638 (>= (size!32410 lt!1447230) (size!32410 lt!1447241)))))

(declare-fun b!4055589 () Bool)

(declare-fun e!2516637 () Bool)

(declare-fun e!2516636 () Bool)

(assert (=> b!4055589 (= e!2516637 e!2516636)))

(declare-fun res!1653533 () Bool)

(assert (=> b!4055589 (=> (not res!1653533) (not e!2516636))))

(assert (=> b!4055589 (= res!1653533 (not ((_ is Nil!43349) lt!1447230)))))

(declare-fun b!4055590 () Bool)

(declare-fun res!1653532 () Bool)

(assert (=> b!4055590 (=> (not res!1653532) (not e!2516636))))

(assert (=> b!4055590 (= res!1653532 (= (head!8565 lt!1447241) (head!8565 lt!1447230)))))

(declare-fun d!1204794 () Bool)

(assert (=> d!1204794 e!2516638))

(declare-fun res!1653534 () Bool)

(assert (=> d!1204794 (=> res!1653534 e!2516638)))

(declare-fun lt!1447550 () Bool)

(assert (=> d!1204794 (= res!1653534 (not lt!1447550))))

(assert (=> d!1204794 (= lt!1447550 e!2516637)))

(declare-fun res!1653531 () Bool)

(assert (=> d!1204794 (=> res!1653531 e!2516637)))

(assert (=> d!1204794 (= res!1653531 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204794 (= (isPrefix!4041 lt!1447241 lt!1447230) lt!1447550)))

(declare-fun b!4055591 () Bool)

(assert (=> b!4055591 (= e!2516636 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 lt!1447230)))))

(assert (= (and d!1204794 (not res!1653531)) b!4055589))

(assert (= (and b!4055589 res!1653533) b!4055590))

(assert (= (and b!4055590 res!1653532) b!4055591))

(assert (= (and d!1204794 (not res!1653534)) b!4055592))

(assert (=> b!4055592 m!4658081))

(assert (=> b!4055592 m!4657785))

(assert (=> b!4055590 m!4658475))

(assert (=> b!4055590 m!4659001))

(assert (=> b!4055591 m!4658479))

(assert (=> b!4055591 m!4658857))

(assert (=> b!4055591 m!4658479))

(assert (=> b!4055591 m!4658857))

(declare-fun m!4659013 () Bool)

(assert (=> b!4055591 m!4659013))

(assert (=> b!4054834 d!1204794))

(declare-fun d!1204796 () Bool)

(assert (=> d!1204796 (isPrefix!4041 lt!1447241 (++!11356 prefix!494 newSuffix!27))))

(declare-fun lt!1447551 () Unit!62690)

(assert (=> d!1204796 (= lt!1447551 (choose!24607 lt!1447241 prefix!494 newSuffix!27))))

(assert (=> d!1204796 (isPrefix!4041 lt!1447241 prefix!494)))

(assert (=> d!1204796 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447241 prefix!494 newSuffix!27) lt!1447551)))

(declare-fun bs!591769 () Bool)

(assert (= bs!591769 d!1204796))

(assert (=> bs!591769 m!4657865))

(assert (=> bs!591769 m!4657865))

(declare-fun m!4659015 () Bool)

(assert (=> bs!591769 m!4659015))

(declare-fun m!4659017 () Bool)

(assert (=> bs!591769 m!4659017))

(assert (=> bs!591769 m!4657855))

(assert (=> b!4054834 d!1204796))

(declare-fun d!1204798 () Bool)

(assert (=> d!1204798 (isPrefix!4041 lt!1447241 (++!11356 prefix!494 suffix!1299))))

(declare-fun lt!1447552 () Unit!62690)

(assert (=> d!1204798 (= lt!1447552 (choose!24607 lt!1447241 prefix!494 suffix!1299))))

(assert (=> d!1204798 (isPrefix!4041 lt!1447241 prefix!494)))

(assert (=> d!1204798 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!834 lt!1447241 prefix!494 suffix!1299) lt!1447552)))

(declare-fun bs!591770 () Bool)

(assert (= bs!591770 d!1204798))

(assert (=> bs!591770 m!4657831))

(assert (=> bs!591770 m!4657831))

(declare-fun m!4659019 () Bool)

(assert (=> bs!591770 m!4659019))

(declare-fun m!4659021 () Bool)

(assert (=> bs!591770 m!4659021))

(assert (=> bs!591770 m!4657855))

(assert (=> b!4054834 d!1204798))

(declare-fun d!1204800 () Bool)

(assert (=> d!1204800 (= (seqFromList!5171 lt!1447241) (fromListB!2355 lt!1447241))))

(declare-fun bs!591771 () Bool)

(assert (= bs!591771 d!1204800))

(declare-fun m!4659023 () Bool)

(assert (=> bs!591771 m!4659023))

(assert (=> b!4054812 d!1204800))

(declare-fun d!1204802 () Bool)

(assert (=> d!1204802 (isPrefix!4041 lt!1447241 (++!11356 lt!1447241 lt!1447258))))

(declare-fun lt!1447553 () Unit!62690)

(assert (=> d!1204802 (= lt!1447553 (choose!24595 lt!1447241 lt!1447258))))

(assert (=> d!1204802 (= (lemmaConcatTwoListThenFirstIsPrefix!2876 lt!1447241 lt!1447258) lt!1447553)))

(declare-fun bs!591772 () Bool)

(assert (= bs!591772 d!1204802))

(assert (=> bs!591772 m!4657841))

(assert (=> bs!591772 m!4657841))

(declare-fun m!4659025 () Bool)

(assert (=> bs!591772 m!4659025))

(declare-fun m!4659027 () Bool)

(assert (=> bs!591772 m!4659027))

(assert (=> b!4054812 d!1204802))

(declare-fun b!4055593 () Bool)

(declare-fun e!2516642 () Bool)

(declare-fun e!2516640 () Bool)

(assert (=> b!4055593 (= e!2516642 e!2516640)))

(declare-fun res!1653538 () Bool)

(assert (=> b!4055593 (=> (not res!1653538) (not e!2516640))))

(declare-fun lt!1447556 () Option!9368)

(assert (=> b!4055593 (= res!1653538 (matchR!5812 (regex!6954 (rule!10038 token!484)) (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447556))))))))

(declare-fun d!1204804 () Bool)

(assert (=> d!1204804 e!2516642))

(declare-fun res!1653535 () Bool)

(assert (=> d!1204804 (=> res!1653535 e!2516642)))

(assert (=> d!1204804 (= res!1653535 (isEmpty!25865 lt!1447556))))

(declare-fun e!2516639 () Option!9368)

(assert (=> d!1204804 (= lt!1447556 e!2516639)))

(declare-fun c!700467 () Bool)

(declare-fun lt!1447558 () tuple2!42412)

(assert (=> d!1204804 (= c!700467 (isEmpty!25866 (_1!24340 lt!1447558)))))

(assert (=> d!1204804 (= lt!1447558 (findLongestMatch!1311 (regex!6954 (rule!10038 token!484)) lt!1447224))))

(assert (=> d!1204804 (ruleValid!2884 thiss!21717 (rule!10038 token!484))))

(assert (=> d!1204804 (= (maxPrefixOneRule!2853 thiss!21717 (rule!10038 token!484) lt!1447224) lt!1447556)))

(declare-fun b!4055594 () Bool)

(declare-fun res!1653541 () Bool)

(assert (=> b!4055594 (=> (not res!1653541) (not e!2516640))))

(assert (=> b!4055594 (= res!1653541 (= (++!11356 (list!16152 (charsOf!4770 (_1!24339 (get!14217 lt!1447556)))) (_2!24339 (get!14217 lt!1447556))) lt!1447224))))

(declare-fun b!4055595 () Bool)

(declare-fun res!1653539 () Bool)

(assert (=> b!4055595 (=> (not res!1653539) (not e!2516640))))

(assert (=> b!4055595 (= res!1653539 (= (rule!10038 (_1!24339 (get!14217 lt!1447556))) (rule!10038 token!484)))))

(declare-fun b!4055596 () Bool)

(assert (=> b!4055596 (= e!2516639 None!9367)))

(declare-fun b!4055597 () Bool)

(assert (=> b!4055597 (= e!2516639 (Some!9367 (tuple2!42411 (Token!13047 (apply!10143 (transformation!6954 (rule!10038 token!484)) (seqFromList!5171 (_1!24340 lt!1447558))) (rule!10038 token!484) (size!32411 (seqFromList!5171 (_1!24340 lt!1447558))) (_1!24340 lt!1447558)) (_2!24340 lt!1447558))))))

(declare-fun lt!1447557 () Unit!62690)

(assert (=> b!4055597 (= lt!1447557 (longestMatchIsAcceptedByMatchOrIsEmpty!1371 (regex!6954 (rule!10038 token!484)) lt!1447224))))

(declare-fun res!1653537 () Bool)

(assert (=> b!4055597 (= res!1653537 (isEmpty!25866 (_1!24340 (findLongestMatchInner!1398 (regex!6954 (rule!10038 token!484)) Nil!43349 (size!32410 Nil!43349) lt!1447224 lt!1447224 (size!32410 lt!1447224)))))))

(declare-fun e!2516641 () Bool)

(assert (=> b!4055597 (=> res!1653537 e!2516641)))

(assert (=> b!4055597 e!2516641))

(declare-fun lt!1447554 () Unit!62690)

(assert (=> b!4055597 (= lt!1447554 lt!1447557)))

(declare-fun lt!1447555 () Unit!62690)

(assert (=> b!4055597 (= lt!1447555 (lemmaSemiInverse!1926 (transformation!6954 (rule!10038 token!484)) (seqFromList!5171 (_1!24340 lt!1447558))))))

(declare-fun b!4055598 () Bool)

(declare-fun res!1653540 () Bool)

(assert (=> b!4055598 (=> (not res!1653540) (not e!2516640))))

(assert (=> b!4055598 (= res!1653540 (= (value!218823 (_1!24339 (get!14217 lt!1447556))) (apply!10143 (transformation!6954 (rule!10038 (_1!24339 (get!14217 lt!1447556)))) (seqFromList!5171 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447556)))))))))

(declare-fun b!4055599 () Bool)

(assert (=> b!4055599 (= e!2516640 (= (size!32409 (_1!24339 (get!14217 lt!1447556))) (size!32410 (originalCharacters!7554 (_1!24339 (get!14217 lt!1447556))))))))

(declare-fun b!4055600 () Bool)

(declare-fun res!1653536 () Bool)

(assert (=> b!4055600 (=> (not res!1653536) (not e!2516640))))

(assert (=> b!4055600 (= res!1653536 (< (size!32410 (_2!24339 (get!14217 lt!1447556))) (size!32410 lt!1447224)))))

(declare-fun b!4055601 () Bool)

(assert (=> b!4055601 (= e!2516641 (matchR!5812 (regex!6954 (rule!10038 token!484)) (_1!24340 (findLongestMatchInner!1398 (regex!6954 (rule!10038 token!484)) Nil!43349 (size!32410 Nil!43349) lt!1447224 lt!1447224 (size!32410 lt!1447224)))))))

(assert (= (and d!1204804 c!700467) b!4055596))

(assert (= (and d!1204804 (not c!700467)) b!4055597))

(assert (= (and b!4055597 (not res!1653537)) b!4055601))

(assert (= (and d!1204804 (not res!1653535)) b!4055593))

(assert (= (and b!4055593 res!1653538) b!4055594))

(assert (= (and b!4055594 res!1653541) b!4055600))

(assert (= (and b!4055600 res!1653536) b!4055595))

(assert (= (and b!4055595 res!1653539) b!4055598))

(assert (= (and b!4055598 res!1653540) b!4055599))

(declare-fun m!4659029 () Bool)

(assert (=> b!4055599 m!4659029))

(declare-fun m!4659031 () Bool)

(assert (=> b!4055599 m!4659031))

(assert (=> b!4055595 m!4659029))

(assert (=> b!4055601 m!4658079))

(assert (=> b!4055601 m!4658445))

(assert (=> b!4055601 m!4658079))

(assert (=> b!4055601 m!4658445))

(declare-fun m!4659033 () Bool)

(assert (=> b!4055601 m!4659033))

(declare-fun m!4659035 () Bool)

(assert (=> b!4055601 m!4659035))

(declare-fun m!4659037 () Bool)

(assert (=> d!1204804 m!4659037))

(declare-fun m!4659039 () Bool)

(assert (=> d!1204804 m!4659039))

(declare-fun m!4659041 () Bool)

(assert (=> d!1204804 m!4659041))

(assert (=> d!1204804 m!4657771))

(assert (=> b!4055594 m!4659029))

(declare-fun m!4659043 () Bool)

(assert (=> b!4055594 m!4659043))

(assert (=> b!4055594 m!4659043))

(declare-fun m!4659045 () Bool)

(assert (=> b!4055594 m!4659045))

(assert (=> b!4055594 m!4659045))

(declare-fun m!4659047 () Bool)

(assert (=> b!4055594 m!4659047))

(assert (=> b!4055600 m!4659029))

(declare-fun m!4659049 () Bool)

(assert (=> b!4055600 m!4659049))

(assert (=> b!4055600 m!4658445))

(assert (=> b!4055597 m!4658079))

(assert (=> b!4055597 m!4658445))

(assert (=> b!4055597 m!4659033))

(declare-fun m!4659051 () Bool)

(assert (=> b!4055597 m!4659051))

(declare-fun m!4659053 () Bool)

(assert (=> b!4055597 m!4659053))

(declare-fun m!4659055 () Bool)

(assert (=> b!4055597 m!4659055))

(assert (=> b!4055597 m!4659051))

(declare-fun m!4659057 () Bool)

(assert (=> b!4055597 m!4659057))

(assert (=> b!4055597 m!4659051))

(assert (=> b!4055597 m!4659051))

(declare-fun m!4659059 () Bool)

(assert (=> b!4055597 m!4659059))

(assert (=> b!4055597 m!4658079))

(declare-fun m!4659061 () Bool)

(assert (=> b!4055597 m!4659061))

(assert (=> b!4055597 m!4658445))

(assert (=> b!4055593 m!4659029))

(assert (=> b!4055593 m!4659043))

(assert (=> b!4055593 m!4659043))

(assert (=> b!4055593 m!4659045))

(assert (=> b!4055593 m!4659045))

(declare-fun m!4659063 () Bool)

(assert (=> b!4055593 m!4659063))

(assert (=> b!4055598 m!4659029))

(declare-fun m!4659065 () Bool)

(assert (=> b!4055598 m!4659065))

(assert (=> b!4055598 m!4659065))

(declare-fun m!4659067 () Bool)

(assert (=> b!4055598 m!4659067))

(assert (=> b!4054812 d!1204804))

(declare-fun d!1204806 () Bool)

(assert (=> d!1204806 (= (apply!10143 (transformation!6954 (rule!10038 token!484)) (seqFromList!5171 lt!1447241)) (dynLambda!18411 (toValue!9510 (transformation!6954 (rule!10038 token!484))) (seqFromList!5171 lt!1447241)))))

(declare-fun b_lambda!118499 () Bool)

(assert (=> (not b_lambda!118499) (not d!1204806)))

(declare-fun t!336222 () Bool)

(declare-fun tb!243973 () Bool)

(assert (=> (and b!4054811 (= (toValue!9510 (transformation!6954 (h!48771 rules!2999))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))) t!336222) tb!243973))

(declare-fun result!295620 () Bool)

(assert (=> tb!243973 (= result!295620 (inv!21 (dynLambda!18411 (toValue!9510 (transformation!6954 (rule!10038 token!484))) (seqFromList!5171 lt!1447241))))))

(declare-fun m!4659069 () Bool)

(assert (=> tb!243973 m!4659069))

(assert (=> d!1204806 t!336222))

(declare-fun b_and!311859 () Bool)

(assert (= b_and!311823 (and (=> t!336222 result!295620) b_and!311859)))

(declare-fun t!336224 () Bool)

(declare-fun tb!243975 () Bool)

(assert (=> (and b!4054825 (= (toValue!9510 (transformation!6954 (rule!10038 token!484))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))) t!336224) tb!243975))

(declare-fun result!295622 () Bool)

(assert (= result!295622 result!295620))

(assert (=> d!1204806 t!336224))

(declare-fun b_and!311861 () Bool)

(assert (= b_and!311825 (and (=> t!336224 result!295622) b_and!311861)))

(assert (=> d!1204806 m!4657807))

(declare-fun m!4659071 () Bool)

(assert (=> d!1204806 m!4659071))

(assert (=> b!4054812 d!1204806))

(declare-fun d!1204808 () Bool)

(assert (=> d!1204808 (= lt!1447258 suffixResult!105)))

(declare-fun lt!1447559 () Unit!62690)

(assert (=> d!1204808 (= lt!1447559 (choose!24594 lt!1447241 lt!1447258 lt!1447241 suffixResult!105 lt!1447224))))

(assert (=> d!1204808 (isPrefix!4041 lt!1447241 lt!1447224)))

(assert (=> d!1204808 (= (lemmaSamePrefixThenSameSuffix!2202 lt!1447241 lt!1447258 lt!1447241 suffixResult!105 lt!1447224) lt!1447559)))

(declare-fun bs!591773 () Bool)

(assert (= bs!591773 d!1204808))

(declare-fun m!4659073 () Bool)

(assert (=> bs!591773 m!4659073))

(assert (=> bs!591773 m!4657821))

(assert (=> b!4054812 d!1204808))

(declare-fun d!1204810 () Bool)

(assert (=> d!1204810 (= (maxPrefixOneRule!2853 thiss!21717 (rule!10038 token!484) lt!1447224) (Some!9367 (tuple2!42411 (Token!13047 (apply!10143 (transformation!6954 (rule!10038 token!484)) (seqFromList!5171 lt!1447241)) (rule!10038 token!484) (size!32410 lt!1447241) lt!1447241) suffixResult!105)))))

(declare-fun lt!1447560 () Unit!62690)

(assert (=> d!1204810 (= lt!1447560 (choose!24598 thiss!21717 rules!2999 lt!1447241 lt!1447224 suffixResult!105 (rule!10038 token!484)))))

(assert (=> d!1204810 (not (isEmpty!25863 rules!2999))))

(assert (=> d!1204810 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1659 thiss!21717 rules!2999 lt!1447241 lt!1447224 suffixResult!105 (rule!10038 token!484)) lt!1447560)))

(declare-fun bs!591774 () Bool)

(assert (= bs!591774 d!1204810))

(assert (=> bs!591774 m!4657807))

(assert (=> bs!591774 m!4657807))

(assert (=> bs!591774 m!4657815))

(assert (=> bs!591774 m!4657785))

(declare-fun m!4659075 () Bool)

(assert (=> bs!591774 m!4659075))

(assert (=> bs!591774 m!4657877))

(assert (=> bs!591774 m!4657809))

(assert (=> b!4054812 d!1204810))

(declare-fun b!4055605 () Bool)

(declare-fun e!2516646 () Bool)

(assert (=> b!4055605 (= e!2516646 (>= (size!32410 lt!1447213) (size!32410 lt!1447241)))))

(declare-fun b!4055602 () Bool)

(declare-fun e!2516645 () Bool)

(declare-fun e!2516644 () Bool)

(assert (=> b!4055602 (= e!2516645 e!2516644)))

(declare-fun res!1653544 () Bool)

(assert (=> b!4055602 (=> (not res!1653544) (not e!2516644))))

(assert (=> b!4055602 (= res!1653544 (not ((_ is Nil!43349) lt!1447213)))))

(declare-fun b!4055603 () Bool)

(declare-fun res!1653543 () Bool)

(assert (=> b!4055603 (=> (not res!1653543) (not e!2516644))))

(assert (=> b!4055603 (= res!1653543 (= (head!8565 lt!1447241) (head!8565 lt!1447213)))))

(declare-fun d!1204812 () Bool)

(assert (=> d!1204812 e!2516646))

(declare-fun res!1653545 () Bool)

(assert (=> d!1204812 (=> res!1653545 e!2516646)))

(declare-fun lt!1447561 () Bool)

(assert (=> d!1204812 (= res!1653545 (not lt!1447561))))

(assert (=> d!1204812 (= lt!1447561 e!2516645)))

(declare-fun res!1653542 () Bool)

(assert (=> d!1204812 (=> res!1653542 e!2516645)))

(assert (=> d!1204812 (= res!1653542 ((_ is Nil!43349) lt!1447241))))

(assert (=> d!1204812 (= (isPrefix!4041 lt!1447241 lt!1447213) lt!1447561)))

(declare-fun b!4055604 () Bool)

(assert (=> b!4055604 (= e!2516644 (isPrefix!4041 (tail!6297 lt!1447241) (tail!6297 lt!1447213)))))

(assert (= (and d!1204812 (not res!1653542)) b!4055602))

(assert (= (and b!4055602 res!1653544) b!4055603))

(assert (= (and b!4055603 res!1653543) b!4055604))

(assert (= (and d!1204812 (not res!1653545)) b!4055605))

(declare-fun m!4659077 () Bool)

(assert (=> b!4055605 m!4659077))

(assert (=> b!4055605 m!4657785))

(assert (=> b!4055603 m!4658475))

(declare-fun m!4659079 () Bool)

(assert (=> b!4055603 m!4659079))

(assert (=> b!4055604 m!4658479))

(declare-fun m!4659081 () Bool)

(assert (=> b!4055604 m!4659081))

(assert (=> b!4055604 m!4658479))

(assert (=> b!4055604 m!4659081))

(declare-fun m!4659083 () Bool)

(assert (=> b!4055604 m!4659083))

(assert (=> b!4054812 d!1204812))

(declare-fun d!1204814 () Bool)

(assert (=> d!1204814 (= (isEmpty!25863 rules!2999) ((_ is Nil!43351) rules!2999))))

(assert (=> b!4054833 d!1204814))

(declare-fun b!4055610 () Bool)

(declare-fun e!2516649 () Bool)

(declare-fun tp!1229293 () Bool)

(assert (=> b!4055610 (= e!2516649 (and tp_is_empty!20689 tp!1229293))))

(assert (=> b!4054800 (= tp!1229241 e!2516649)))

(assert (= (and b!4054800 ((_ is Cons!43349) (originalCharacters!7554 token!484))) b!4055610))

(declare-fun b!4055621 () Bool)

(declare-fun e!2516652 () Bool)

(assert (=> b!4055621 (= e!2516652 tp_is_empty!20689)))

(declare-fun b!4055622 () Bool)

(declare-fun tp!1229304 () Bool)

(declare-fun tp!1229307 () Bool)

(assert (=> b!4055622 (= e!2516652 (and tp!1229304 tp!1229307))))

(declare-fun b!4055624 () Bool)

(declare-fun tp!1229308 () Bool)

(declare-fun tp!1229305 () Bool)

(assert (=> b!4055624 (= e!2516652 (and tp!1229308 tp!1229305))))

(declare-fun b!4055623 () Bool)

(declare-fun tp!1229306 () Bool)

(assert (=> b!4055623 (= e!2516652 tp!1229306)))

(assert (=> b!4054832 (= tp!1229234 e!2516652)))

(assert (= (and b!4054832 ((_ is ElementMatch!11859) (regex!6954 (h!48771 rules!2999)))) b!4055621))

(assert (= (and b!4054832 ((_ is Concat!19044) (regex!6954 (h!48771 rules!2999)))) b!4055622))

(assert (= (and b!4054832 ((_ is Star!11859) (regex!6954 (h!48771 rules!2999)))) b!4055623))

(assert (= (and b!4054832 ((_ is Union!11859) (regex!6954 (h!48771 rules!2999)))) b!4055624))

(declare-fun b!4055635 () Bool)

(declare-fun b_free!112869 () Bool)

(declare-fun b_next!113573 () Bool)

(assert (=> b!4055635 (= b_free!112869 (not b_next!113573))))

(declare-fun t!336226 () Bool)

(declare-fun tb!243977 () Bool)

(assert (=> (and b!4055635 (= (toValue!9510 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toValue!9510 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336226) tb!243977))

(declare-fun result!295630 () Bool)

(assert (= result!295630 result!295576))

(assert (=> d!1204534 t!336226))

(declare-fun t!336228 () Bool)

(declare-fun tb!243979 () Bool)

(assert (=> (and b!4055635 (= (toValue!9510 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toValue!9510 (transformation!6954 (rule!10038 token!484)))) t!336228) tb!243979))

(declare-fun result!295632 () Bool)

(assert (= result!295632 result!295620))

(assert (=> d!1204806 t!336228))

(declare-fun b_and!311863 () Bool)

(declare-fun tp!1229320 () Bool)

(assert (=> b!4055635 (= tp!1229320 (and (=> t!336226 result!295630) (=> t!336228 result!295632) b_and!311863))))

(declare-fun b_free!112871 () Bool)

(declare-fun b_next!113575 () Bool)

(assert (=> b!4055635 (= b_free!112871 (not b_next!113575))))

(declare-fun tb!243981 () Bool)

(declare-fun t!336230 () Bool)

(assert (=> (and b!4055635 (= (toChars!9369 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toChars!9369 (transformation!6954 (rule!10038 (_1!24339 (v!39779 lt!1447260)))))) t!336230) tb!243981))

(declare-fun result!295634 () Bool)

(assert (= result!295634 result!295582))

(assert (=> d!1204536 t!336230))

(declare-fun tb!243983 () Bool)

(declare-fun t!336232 () Bool)

(assert (=> (and b!4055635 (= (toChars!9369 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toChars!9369 (transformation!6954 (rule!10038 token!484)))) t!336232) tb!243983))

(declare-fun result!295636 () Bool)

(assert (= result!295636 result!295588))

(assert (=> b!4055137 t!336232))

(assert (=> d!1204730 t!336232))

(declare-fun tp!1229317 () Bool)

(declare-fun b_and!311865 () Bool)

(assert (=> b!4055635 (= tp!1229317 (and (=> t!336230 result!295634) (=> t!336232 result!295636) b_and!311865))))

(declare-fun e!2516664 () Bool)

(assert (=> b!4055635 (= e!2516664 (and tp!1229320 tp!1229317))))

(declare-fun b!4055634 () Bool)

(declare-fun tp!1229318 () Bool)

(declare-fun e!2516662 () Bool)

(assert (=> b!4055634 (= e!2516662 (and tp!1229318 (inv!57945 (tag!7814 (h!48771 (t!336184 rules!2999)))) (inv!57949 (transformation!6954 (h!48771 (t!336184 rules!2999)))) e!2516664))))

(declare-fun b!4055633 () Bool)

(declare-fun e!2516661 () Bool)

(declare-fun tp!1229319 () Bool)

(assert (=> b!4055633 (= e!2516661 (and e!2516662 tp!1229319))))

(assert (=> b!4054842 (= tp!1229230 e!2516661)))

(assert (= b!4055634 b!4055635))

(assert (= b!4055633 b!4055634))

(assert (= (and b!4054842 ((_ is Cons!43351) (t!336184 rules!2999))) b!4055633))

(declare-fun m!4659085 () Bool)

(assert (=> b!4055634 m!4659085))

(declare-fun m!4659087 () Bool)

(assert (=> b!4055634 m!4659087))

(declare-fun b!4055636 () Bool)

(declare-fun e!2516665 () Bool)

(declare-fun tp!1229321 () Bool)

(assert (=> b!4055636 (= e!2516665 (and tp_is_empty!20689 tp!1229321))))

(assert (=> b!4054798 (= tp!1229232 e!2516665)))

(assert (= (and b!4054798 ((_ is Cons!43349) (t!336182 suffix!1299))) b!4055636))

(declare-fun b!4055637 () Bool)

(declare-fun e!2516666 () Bool)

(declare-fun tp!1229322 () Bool)

(assert (=> b!4055637 (= e!2516666 (and tp_is_empty!20689 tp!1229322))))

(assert (=> b!4054830 (= tp!1229236 e!2516666)))

(assert (= (and b!4054830 ((_ is Cons!43349) (t!336182 newSuffix!27))) b!4055637))

(declare-fun b!4055638 () Bool)

(declare-fun e!2516667 () Bool)

(assert (=> b!4055638 (= e!2516667 tp_is_empty!20689)))

(declare-fun b!4055639 () Bool)

(declare-fun tp!1229323 () Bool)

(declare-fun tp!1229326 () Bool)

(assert (=> b!4055639 (= e!2516667 (and tp!1229323 tp!1229326))))

(declare-fun b!4055641 () Bool)

(declare-fun tp!1229327 () Bool)

(declare-fun tp!1229324 () Bool)

(assert (=> b!4055641 (= e!2516667 (and tp!1229327 tp!1229324))))

(declare-fun b!4055640 () Bool)

(declare-fun tp!1229325 () Bool)

(assert (=> b!4055640 (= e!2516667 tp!1229325)))

(assert (=> b!4054808 (= tp!1229237 e!2516667)))

(assert (= (and b!4054808 ((_ is ElementMatch!11859) (regex!6954 (rule!10038 token!484)))) b!4055638))

(assert (= (and b!4054808 ((_ is Concat!19044) (regex!6954 (rule!10038 token!484)))) b!4055639))

(assert (= (and b!4054808 ((_ is Star!11859) (regex!6954 (rule!10038 token!484)))) b!4055640))

(assert (= (and b!4054808 ((_ is Union!11859) (regex!6954 (rule!10038 token!484)))) b!4055641))

(declare-fun b!4055642 () Bool)

(declare-fun e!2516668 () Bool)

(declare-fun tp!1229328 () Bool)

(assert (=> b!4055642 (= e!2516668 (and tp_is_empty!20689 tp!1229328))))

(assert (=> b!4054824 (= tp!1229238 e!2516668)))

(assert (= (and b!4054824 ((_ is Cons!43349) (t!336182 newSuffixResult!27))) b!4055642))

(declare-fun b!4055643 () Bool)

(declare-fun e!2516669 () Bool)

(declare-fun tp!1229329 () Bool)

(assert (=> b!4055643 (= e!2516669 (and tp_is_empty!20689 tp!1229329))))

(assert (=> b!4054828 (= tp!1229239 e!2516669)))

(assert (= (and b!4054828 ((_ is Cons!43349) (t!336182 prefix!494))) b!4055643))

(declare-fun b!4055644 () Bool)

(declare-fun e!2516670 () Bool)

(declare-fun tp!1229330 () Bool)

(assert (=> b!4055644 (= e!2516670 (and tp_is_empty!20689 tp!1229330))))

(assert (=> b!4054822 (= tp!1229233 e!2516670)))

(assert (= (and b!4054822 ((_ is Cons!43349) (t!336182 suffixResult!105))) b!4055644))

(declare-fun b_lambda!118501 () Bool)

(assert (= b_lambda!118491 (or (and b!4054811 b_free!112859 (= (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toChars!9369 (transformation!6954 (rule!10038 token!484))))) (and b!4054825 b_free!112863) (and b!4055635 b_free!112871 (= (toChars!9369 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toChars!9369 (transformation!6954 (rule!10038 token!484))))) b_lambda!118501)))

(declare-fun b_lambda!118503 () Bool)

(assert (= b_lambda!118481 (or (and b!4054811 b_free!112859 (= (toChars!9369 (transformation!6954 (h!48771 rules!2999))) (toChars!9369 (transformation!6954 (rule!10038 token!484))))) (and b!4054825 b_free!112863) (and b!4055635 b_free!112871 (= (toChars!9369 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toChars!9369 (transformation!6954 (rule!10038 token!484))))) b_lambda!118503)))

(declare-fun b_lambda!118505 () Bool)

(assert (= b_lambda!118499 (or (and b!4054811 b_free!112857 (= (toValue!9510 (transformation!6954 (h!48771 rules!2999))) (toValue!9510 (transformation!6954 (rule!10038 token!484))))) (and b!4054825 b_free!112861) (and b!4055635 b_free!112869 (= (toValue!9510 (transformation!6954 (h!48771 (t!336184 rules!2999)))) (toValue!9510 (transformation!6954 (rule!10038 token!484))))) b_lambda!118505)))

(check-sat (not b_lambda!118501) (not b!4055331) (not b!4055598) (not d!1204802) (not d!1204704) (not b!4055457) (not d!1204598) (not b!4055058) (not b!4055368) (not d!1204736) (not b!4055644) (not b!4055336) (not d!1204580) (not d!1204706) (not b!4055566) (not b_next!113573) (not b!4055603) (not tb!243945) (not b!4055573) (not d!1204602) (not b!4055156) (not d!1204652) (not b!4055168) (not b!4055583) (not d!1204608) (not b!4055572) (not b!4055290) (not b!4055291) (not b!4055202) (not b!4055190) (not b!4054853) (not b!4055330) (not b!4055643) (not b!4055014) (not b!4055599) b_and!311861 (not b!4055107) (not b!4055570) (not b!4055567) (not d!1204500) (not d!1204686) (not b!4055072) b_and!311851 (not b!4055084) (not b!4055601) b_and!311863 (not b!4055138) (not b!4055287) (not d!1204568) (not d!1204732) (not d!1204796) (not b!4055592) (not d!1204554) (not b!4055188) (not b!4055334) (not d!1204658) (not b!4055302) (not b!4055406) (not d!1204438) (not b!4054864) (not b!4055288) (not b!4055179) (not d!1204584) (not b!4054852) (not b!4055200) (not b!4055116) (not b!4055164) (not d!1204656) (not b!4055011) (not b!4055637) b_and!311853 (not b!4055443) (not b!4055070) (not d!1204548) (not b!4055587) (not b!4055082) (not b!4055118) (not d!1204440) (not d!1204804) (not b!4055158) (not b!4055329) (not bm!288013) (not b!4055111) (not b!4055122) (not b!4055189) (not d!1204560) (not b!4055123) (not b!4055126) (not b!4055160) (not b!4055175) (not d!1204710) (not b!4055622) (not d!1204570) (not b!4055143) (not b!4055640) (not b!4055378) (not b!4055595) (not d!1204730) (not b!4055289) (not d!1204492) (not b!4055369) (not b!4055408) (not b!4055141) (not b!4055095) (not b_next!113561) (not d!1204712) (not d!1204800) (not b_next!113575) (not b!4055578) (not b!4055169) (not b_next!113567) (not b!4055060) (not b_lambda!118477) (not b!4055083) (not b!4055178) (not b!4055182) (not d!1204496) (not d!1204810) (not b!4055439) (not b!4055372) (not b!4055565) (not b_lambda!118479) (not b!4055165) (not b!4055610) (not b!4055371) (not b!4055556) tp_is_empty!20689 (not b!4055184) (not d!1204546) (not tb!243973) (not d!1204734) (not d!1204808) (not b!4055623) (not d!1204610) (not b!4055071) (not d!1204432) (not d!1204798) (not d!1204512) (not b!4055108) (not d!1204770) (not b!4055013) (not d!1204574) (not b!4055597) (not b!4055201) (not d!1204590) (not b!4055641) (not d!1204728) (not tb!243949) (not b!4055016) (not b!4055137) (not b!4055286) (not d!1204748) (not b!4055557) (not d!1204682) (not b!4055332) (not b!4055196) (not bm!288008) (not b!4055344) (not b!4055593) b_and!311859 (not b!4055131) (not b!4055605) (not d!1204788) (not b!4055633) (not b!4055327) (not b!4055325) (not d!1204532) (not b!4055139) (not b!4055337) (not d!1204556) (not b!4055404) (not b!4055600) (not b!4055345) (not b!4055130) (not b!4055198) (not b!4055624) (not b!4055192) (not b!4055642) (not d!1204766) (not b!4055409) (not b!4055292) (not d!1204792) (not d!1204518) (not b!4055197) (not b_lambda!118503) (not d!1204566) (not d!1204572) (not b!4054865) (not b!4055180) (not d!1204550) (not b!4055586) (not b_next!113563) (not b_next!113565) (not b!4055326) (not d!1204544) (not d!1204702) (not b!4055120) (not d!1204764) (not b!4055303) (not d!1204436) (not b!4055634) (not b!4055351) (not d!1204586) (not b!4055009) (not b!4055127) (not b!4055356) (not b!4055193) (not bm!288012) (not d!1204582) (not d!1204672) (not b!4055017) (not d!1204716) (not b!4055185) (not b!4055061) (not d!1204744) (not b!4055574) (not d!1204536) (not d!1204552) (not b!4055328) (not d!1204746) (not b!4055294) (not b!4054854) (not b!4055375) (not b!4055112) (not d!1204694) (not b!4055015) (not bm!288007) (not b!4055376) (not b!4055099) (not b!4055194) (not b!4055304) (not b!4055591) (not b!4055411) (not b!4055154) (not b!4055186) (not tb!243941) (not b!4055104) (not b!4055161) (not d!1204714) (not b!4055010) (not b!4055142) b_and!311865 (not b!4055604) (not b!4055639) (not d!1204678) (not b!4055577) (not b!4055636) (not b!4055562) (not b!4055354) (not d!1204514) (not b!4055590) (not b_lambda!118505) (not b!4055594) (not b!4055588) (not b!4055355))
(check-sat (not b_next!113573) b_and!311863 b_and!311853 (not b_next!113561) (not b_next!113575) (not b_next!113567) b_and!311859 b_and!311865 b_and!311861 b_and!311851 (not b_next!113563) (not b_next!113565))
