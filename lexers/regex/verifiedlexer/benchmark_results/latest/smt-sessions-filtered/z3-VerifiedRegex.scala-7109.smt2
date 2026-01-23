; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376780 () Bool)

(assert start!376780)

(declare-fun b!4003151 () Bool)

(declare-fun b_free!111321 () Bool)

(declare-fun b_next!112025 () Bool)

(assert (=> b!4003151 (= b_free!111321 (not b_next!112025))))

(declare-fun tp!1218443 () Bool)

(declare-fun b_and!307407 () Bool)

(assert (=> b!4003151 (= tp!1218443 b_and!307407)))

(declare-fun b_free!111323 () Bool)

(declare-fun b_next!112027 () Bool)

(assert (=> b!4003151 (= b_free!111323 (not b_next!112027))))

(declare-fun tp!1218444 () Bool)

(declare-fun b_and!307409 () Bool)

(assert (=> b!4003151 (= tp!1218444 b_and!307409)))

(declare-fun b!4003145 () Bool)

(declare-fun b_free!111325 () Bool)

(declare-fun b_next!112029 () Bool)

(assert (=> b!4003145 (= b_free!111325 (not b_next!112029))))

(declare-fun tp!1218438 () Bool)

(declare-fun b_and!307411 () Bool)

(assert (=> b!4003145 (= tp!1218438 b_and!307411)))

(declare-fun b_free!111327 () Bool)

(declare-fun b_next!112031 () Bool)

(assert (=> b!4003145 (= b_free!111327 (not b_next!112031))))

(declare-fun tp!1218435 () Bool)

(declare-fun b_and!307413 () Bool)

(assert (=> b!4003145 (= tp!1218435 b_and!307413)))

(declare-fun b!4003143 () Bool)

(declare-fun res!1626615 () Bool)

(declare-fun e!2482426 () Bool)

(assert (=> b!4003143 (=> (not res!1626615) (not e!2482426))))

(declare-datatypes ((C!23608 0))(
  ( (C!23609 (val!13898 Int)) )
))
(declare-datatypes ((List!42974 0))(
  ( (Nil!42850) (Cons!42850 (h!48270 C!23608) (t!332315 List!42974)) )
))
(declare-fun suffix!1299 () List!42974)

(declare-fun newSuffix!27 () List!42974)

(declare-fun size!32037 (List!42974) Int)

(assert (=> b!4003143 (= res!1626615 (>= (size!32037 suffix!1299) (size!32037 newSuffix!27)))))

(declare-fun b!4003144 () Bool)

(declare-fun res!1626613 () Bool)

(assert (=> b!4003144 (=> (not res!1626613) (not e!2482426))))

(declare-datatypes ((LexerInterface!6395 0))(
  ( (LexerInterfaceExt!6392 (__x!26289 Int)) (Lexer!6393) )
))
(declare-fun thiss!21717 () LexerInterface!6395)

(declare-datatypes ((IArray!26039 0))(
  ( (IArray!26040 (innerList!13077 List!42974)) )
))
(declare-datatypes ((Conc!13017 0))(
  ( (Node!13017 (left!32338 Conc!13017) (right!32668 Conc!13017) (csize!26264 Int) (cheight!13228 Int)) (Leaf!20127 (xs!16323 IArray!26039) (csize!26265 Int)) (Empty!13017) )
))
(declare-datatypes ((BalanceConc!25628 0))(
  ( (BalanceConc!25629 (c!692230 Conc!13017)) )
))
(declare-datatypes ((List!42975 0))(
  ( (Nil!42851) (Cons!42851 (h!48271 (_ BitVec 16)) (t!332316 List!42975)) )
))
(declare-datatypes ((TokenValue!7036 0))(
  ( (FloatLiteralValue!14072 (text!49697 List!42975)) (TokenValueExt!7035 (__x!26290 Int)) (Broken!35180 (value!214579 List!42975)) (Object!7159) (End!7036) (Def!7036) (Underscore!7036) (Match!7036) (Else!7036) (Error!7036) (Case!7036) (If!7036) (Extends!7036) (Abstract!7036) (Class!7036) (Val!7036) (DelimiterValue!14072 (del!7096 List!42975)) (KeywordValue!7042 (value!214580 List!42975)) (CommentValue!14072 (value!214581 List!42975)) (WhitespaceValue!14072 (value!214582 List!42975)) (IndentationValue!7036 (value!214583 List!42975)) (String!48897) (Int32!7036) (Broken!35181 (value!214584 List!42975)) (Boolean!7037) (Unit!61839) (OperatorValue!7039 (op!7096 List!42975)) (IdentifierValue!14072 (value!214585 List!42975)) (IdentifierValue!14073 (value!214586 List!42975)) (WhitespaceValue!14073 (value!214587 List!42975)) (True!14072) (False!14072) (Broken!35182 (value!214588 List!42975)) (Broken!35183 (value!214589 List!42975)) (True!14073) (RightBrace!7036) (RightBracket!7036) (Colon!7036) (Null!7036) (Comma!7036) (LeftBracket!7036) (False!14073) (LeftBrace!7036) (ImaginaryLiteralValue!7036 (text!49698 List!42975)) (StringLiteralValue!21108 (value!214590 List!42975)) (EOFValue!7036 (value!214591 List!42975)) (IdentValue!7036 (value!214592 List!42975)) (DelimiterValue!14073 (value!214593 List!42975)) (DedentValue!7036 (value!214594 List!42975)) (NewLineValue!7036 (value!214595 List!42975)) (IntegerValue!21108 (value!214596 (_ BitVec 32)) (text!49699 List!42975)) (IntegerValue!21109 (value!214597 Int) (text!49700 List!42975)) (Times!7036) (Or!7036) (Equal!7036) (Minus!7036) (Broken!35184 (value!214598 List!42975)) (And!7036) (Div!7036) (LessEqual!7036) (Mod!7036) (Concat!18747) (Not!7036) (Plus!7036) (SpaceValue!7036 (value!214599 List!42975)) (IntegerValue!21110 (value!214600 Int) (text!49701 List!42975)) (StringLiteralValue!21109 (text!49702 List!42975)) (FloatLiteralValue!14073 (text!49703 List!42975)) (BytesLiteralValue!7036 (value!214601 List!42975)) (CommentValue!14073 (value!214602 List!42975)) (StringLiteralValue!21110 (value!214603 List!42975)) (ErrorTokenValue!7036 (msg!7097 List!42975)) )
))
(declare-datatypes ((Regex!11711 0))(
  ( (ElementMatch!11711 (c!692231 C!23608)) (Concat!18748 (regOne!23934 Regex!11711) (regTwo!23934 Regex!11711)) (EmptyExpr!11711) (Star!11711 (reg!12040 Regex!11711)) (EmptyLang!11711) (Union!11711 (regOne!23935 Regex!11711) (regTwo!23935 Regex!11711)) )
))
(declare-datatypes ((String!48898 0))(
  ( (String!48899 (value!214604 String)) )
))
(declare-datatypes ((TokenValueInjection!13500 0))(
  ( (TokenValueInjection!13501 (toValue!9298 Int) (toChars!9157 Int)) )
))
(declare-datatypes ((Rule!13412 0))(
  ( (Rule!13413 (regex!6806 Regex!11711) (tag!7666 String!48898) (isSeparator!6806 Bool) (transformation!6806 TokenValueInjection!13500)) )
))
(declare-datatypes ((List!42976 0))(
  ( (Nil!42852) (Cons!42852 (h!48272 Rule!13412) (t!332317 List!42976)) )
))
(declare-fun rules!2999 () List!42976)

(declare-fun rulesInvariant!5738 (LexerInterface!6395 List!42976) Bool)

(assert (=> b!4003144 (= res!1626613 (rulesInvariant!5738 thiss!21717 rules!2999))))

(declare-fun e!2482416 () Bool)

(assert (=> b!4003145 (= e!2482416 (and tp!1218438 tp!1218435))))

(declare-fun b!4003146 () Bool)

(declare-fun res!1626617 () Bool)

(assert (=> b!4003146 (=> (not res!1626617) (not e!2482426))))

(declare-fun isPrefix!3893 (List!42974 List!42974) Bool)

(assert (=> b!4003146 (= res!1626617 (isPrefix!3893 newSuffix!27 suffix!1299))))

(declare-fun b!4003147 () Bool)

(declare-fun e!2482427 () Bool)

(declare-fun e!2482431 () Bool)

(assert (=> b!4003147 (= e!2482427 e!2482431)))

(declare-fun res!1626610 () Bool)

(assert (=> b!4003147 (=> res!1626610 e!2482431)))

(declare-fun lt!1415745 () List!42974)

(declare-fun lt!1415739 () List!42974)

(assert (=> b!4003147 (= res!1626610 (not (isPrefix!3893 lt!1415745 lt!1415739)))))

(declare-fun prefix!494 () List!42974)

(assert (=> b!4003147 (isPrefix!3893 prefix!494 lt!1415739)))

(declare-datatypes ((Unit!61840 0))(
  ( (Unit!61841) )
))
(declare-fun lt!1415744 () Unit!61840)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2734 (List!42974 List!42974) Unit!61840)

(assert (=> b!4003147 (= lt!1415744 (lemmaConcatTwoListThenFirstIsPrefix!2734 prefix!494 suffix!1299))))

(declare-fun lt!1415751 () List!42974)

(assert (=> b!4003147 (isPrefix!3893 lt!1415745 lt!1415751)))

(declare-fun lt!1415743 () Unit!61840)

(declare-fun suffixResult!105 () List!42974)

(assert (=> b!4003147 (= lt!1415743 (lemmaConcatTwoListThenFirstIsPrefix!2734 lt!1415745 suffixResult!105))))

(declare-fun b!4003148 () Bool)

(declare-fun e!2482428 () Bool)

(assert (=> b!4003148 (= e!2482428 (not e!2482427))))

(declare-fun res!1626607 () Bool)

(assert (=> b!4003148 (=> res!1626607 e!2482427)))

(assert (=> b!4003148 (= res!1626607 (not (= lt!1415751 lt!1415739)))))

(declare-fun ++!11208 (List!42974 List!42974) List!42974)

(assert (=> b!4003148 (= lt!1415751 (++!11208 lt!1415745 suffixResult!105))))

(declare-fun lt!1415741 () Unit!61840)

(declare-datatypes ((Token!12750 0))(
  ( (Token!12751 (value!214605 TokenValue!7036) (rule!9840 Rule!13412) (size!32038 Int) (originalCharacters!7406 List!42974)) )
))
(declare-fun token!484 () Token!12750)

(declare-fun lemmaInv!1021 (TokenValueInjection!13500) Unit!61840)

(assert (=> b!4003148 (= lt!1415741 (lemmaInv!1021 (transformation!6806 (rule!9840 token!484))))))

(declare-fun ruleValid!2738 (LexerInterface!6395 Rule!13412) Bool)

(assert (=> b!4003148 (ruleValid!2738 thiss!21717 (rule!9840 token!484))))

(declare-fun lt!1415747 () Unit!61840)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1812 (LexerInterface!6395 Rule!13412 List!42976) Unit!61840)

(assert (=> b!4003148 (= lt!1415747 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1812 thiss!21717 (rule!9840 token!484) rules!2999))))

(declare-fun b!4003149 () Bool)

(declare-fun res!1626611 () Bool)

(assert (=> b!4003149 (=> (not res!1626611) (not e!2482426))))

(declare-fun isEmpty!25602 (List!42976) Bool)

(assert (=> b!4003149 (= res!1626611 (not (isEmpty!25602 rules!2999)))))

(declare-fun b!4003150 () Bool)

(declare-fun e!2482421 () Bool)

(declare-fun tp_is_empty!20393 () Bool)

(declare-fun tp!1218432 () Bool)

(assert (=> b!4003150 (= e!2482421 (and tp_is_empty!20393 tp!1218432))))

(declare-fun res!1626612 () Bool)

(assert (=> start!376780 (=> (not res!1626612) (not e!2482426))))

(get-info :version)

(assert (=> start!376780 (= res!1626612 ((_ is Lexer!6393) thiss!21717))))

(assert (=> start!376780 e!2482426))

(declare-fun e!2482424 () Bool)

(assert (=> start!376780 e!2482424))

(declare-fun e!2482430 () Bool)

(declare-fun inv!57223 (Token!12750) Bool)

(assert (=> start!376780 (and (inv!57223 token!484) e!2482430)))

(declare-fun e!2482420 () Bool)

(assert (=> start!376780 e!2482420))

(declare-fun e!2482422 () Bool)

(assert (=> start!376780 e!2482422))

(assert (=> start!376780 e!2482421))

(assert (=> start!376780 true))

(declare-fun e!2482432 () Bool)

(assert (=> start!376780 e!2482432))

(declare-fun e!2482434 () Bool)

(assert (=> start!376780 e!2482434))

(declare-fun e!2482418 () Bool)

(assert (=> b!4003151 (= e!2482418 (and tp!1218443 tp!1218444))))

(declare-fun b!4003152 () Bool)

(declare-fun e!2482417 () Bool)

(assert (=> b!4003152 (= e!2482417 e!2482428)))

(declare-fun res!1626608 () Bool)

(assert (=> b!4003152 (=> (not res!1626608) (not e!2482428))))

(declare-datatypes ((tuple2!42014 0))(
  ( (tuple2!42015 (_1!24141 Token!12750) (_2!24141 List!42974)) )
))
(declare-datatypes ((Option!9220 0))(
  ( (None!9219) (Some!9219 (v!39581 tuple2!42014)) )
))
(declare-fun maxPrefix!3693 (LexerInterface!6395 List!42976 List!42974) Option!9220)

(assert (=> b!4003152 (= res!1626608 (= (maxPrefix!3693 thiss!21717 rules!2999 lt!1415739) (Some!9219 (tuple2!42015 token!484 suffixResult!105))))))

(assert (=> b!4003152 (= lt!1415739 (++!11208 prefix!494 suffix!1299))))

(declare-fun b!4003153 () Bool)

(declare-fun e!2482419 () Bool)

(declare-fun tp!1218436 () Bool)

(assert (=> b!4003153 (= e!2482432 (and e!2482419 tp!1218436))))

(declare-fun b!4003154 () Bool)

(assert (=> b!4003154 (= e!2482426 e!2482417)))

(declare-fun res!1626614 () Bool)

(assert (=> b!4003154 (=> (not res!1626614) (not e!2482417))))

(assert (=> b!4003154 (= res!1626614 (>= (size!32037 prefix!494) (size!32037 lt!1415745)))))

(declare-fun list!15916 (BalanceConc!25628) List!42974)

(declare-fun charsOf!4622 (Token!12750) BalanceConc!25628)

(assert (=> b!4003154 (= lt!1415745 (list!15916 (charsOf!4622 token!484)))))

(declare-fun e!2482425 () Bool)

(declare-fun b!4003155 () Bool)

(declare-fun tp!1218440 () Bool)

(declare-fun inv!57220 (String!48898) Bool)

(declare-fun inv!57224 (TokenValueInjection!13500) Bool)

(assert (=> b!4003155 (= e!2482425 (and tp!1218440 (inv!57220 (tag!7666 (rule!9840 token!484))) (inv!57224 (transformation!6806 (rule!9840 token!484))) e!2482416))))

(declare-fun b!4003156 () Bool)

(declare-fun tp!1218433 () Bool)

(declare-fun inv!21 (TokenValue!7036) Bool)

(assert (=> b!4003156 (= e!2482430 (and (inv!21 (value!214605 token!484)) e!2482425 tp!1218433))))

(declare-fun b!4003157 () Bool)

(declare-fun tp!1218437 () Bool)

(assert (=> b!4003157 (= e!2482434 (and tp_is_empty!20393 tp!1218437))))

(declare-fun b!4003158 () Bool)

(declare-fun res!1626609 () Bool)

(assert (=> b!4003158 (=> (not res!1626609) (not e!2482417))))

(declare-fun newSuffixResult!27 () List!42974)

(assert (=> b!4003158 (= res!1626609 (= (++!11208 lt!1415745 newSuffixResult!27) (++!11208 prefix!494 newSuffix!27)))))

(declare-fun b!4003159 () Bool)

(declare-fun tp!1218441 () Bool)

(assert (=> b!4003159 (= e!2482420 (and tp_is_empty!20393 tp!1218441))))

(declare-fun b!4003160 () Bool)

(declare-fun tp!1218434 () Bool)

(assert (=> b!4003160 (= e!2482424 (and tp_is_empty!20393 tp!1218434))))

(declare-fun b!4003161 () Bool)

(declare-fun tp!1218442 () Bool)

(assert (=> b!4003161 (= e!2482422 (and tp_is_empty!20393 tp!1218442))))

(declare-fun b!4003162 () Bool)

(declare-fun e!2482429 () Bool)

(assert (=> b!4003162 (= e!2482431 e!2482429)))

(declare-fun res!1626616 () Bool)

(assert (=> b!4003162 (=> res!1626616 e!2482429)))

(declare-fun lt!1415748 () List!42974)

(assert (=> b!4003162 (= res!1626616 (not (= lt!1415748 prefix!494)))))

(declare-fun lt!1415738 () List!42974)

(assert (=> b!4003162 (= lt!1415748 (++!11208 lt!1415745 lt!1415738))))

(declare-fun getSuffix!2318 (List!42974 List!42974) List!42974)

(assert (=> b!4003162 (= lt!1415738 (getSuffix!2318 prefix!494 lt!1415745))))

(assert (=> b!4003162 (isPrefix!3893 lt!1415745 prefix!494)))

(declare-fun lt!1415746 () Unit!61840)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!465 (List!42974 List!42974 List!42974) Unit!61840)

(assert (=> b!4003162 (= lt!1415746 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!465 prefix!494 lt!1415745 lt!1415739))))

(declare-fun lt!1415749 () List!42974)

(declare-fun lt!1415750 () List!42974)

(declare-fun b!4003163 () Bool)

(assert (=> b!4003163 (= e!2482429 (or (not (= lt!1415739 lt!1415750)) (= lt!1415739 lt!1415749)))))

(assert (=> b!4003163 (= lt!1415750 lt!1415749)))

(declare-fun lt!1415742 () List!42974)

(assert (=> b!4003163 (= lt!1415749 (++!11208 lt!1415745 lt!1415742))))

(assert (=> b!4003163 (= lt!1415750 (++!11208 lt!1415748 suffix!1299))))

(assert (=> b!4003163 (= lt!1415742 (++!11208 lt!1415738 suffix!1299))))

(declare-fun lt!1415740 () Unit!61840)

(declare-fun lemmaConcatAssociativity!2518 (List!42974 List!42974 List!42974) Unit!61840)

(assert (=> b!4003163 (= lt!1415740 (lemmaConcatAssociativity!2518 lt!1415745 lt!1415738 suffix!1299))))

(declare-fun tp!1218439 () Bool)

(declare-fun b!4003164 () Bool)

(assert (=> b!4003164 (= e!2482419 (and tp!1218439 (inv!57220 (tag!7666 (h!48272 rules!2999))) (inv!57224 (transformation!6806 (h!48272 rules!2999))) e!2482418))))

(assert (= (and start!376780 res!1626612) b!4003149))

(assert (= (and b!4003149 res!1626611) b!4003144))

(assert (= (and b!4003144 res!1626613) b!4003143))

(assert (= (and b!4003143 res!1626615) b!4003146))

(assert (= (and b!4003146 res!1626617) b!4003154))

(assert (= (and b!4003154 res!1626614) b!4003158))

(assert (= (and b!4003158 res!1626609) b!4003152))

(assert (= (and b!4003152 res!1626608) b!4003148))

(assert (= (and b!4003148 (not res!1626607)) b!4003147))

(assert (= (and b!4003147 (not res!1626610)) b!4003162))

(assert (= (and b!4003162 (not res!1626616)) b!4003163))

(assert (= (and start!376780 ((_ is Cons!42850) prefix!494)) b!4003160))

(assert (= b!4003155 b!4003145))

(assert (= b!4003156 b!4003155))

(assert (= start!376780 b!4003156))

(assert (= (and start!376780 ((_ is Cons!42850) suffixResult!105)) b!4003159))

(assert (= (and start!376780 ((_ is Cons!42850) suffix!1299)) b!4003161))

(assert (= (and start!376780 ((_ is Cons!42850) newSuffix!27)) b!4003150))

(assert (= b!4003164 b!4003151))

(assert (= b!4003153 b!4003164))

(assert (= (and start!376780 ((_ is Cons!42852) rules!2999)) b!4003153))

(assert (= (and start!376780 ((_ is Cons!42850) newSuffixResult!27)) b!4003157))

(declare-fun m!4585573 () Bool)

(assert (=> b!4003149 m!4585573))

(declare-fun m!4585575 () Bool)

(assert (=> b!4003164 m!4585575))

(declare-fun m!4585577 () Bool)

(assert (=> b!4003164 m!4585577))

(declare-fun m!4585579 () Bool)

(assert (=> b!4003144 m!4585579))

(declare-fun m!4585581 () Bool)

(assert (=> b!4003143 m!4585581))

(declare-fun m!4585583 () Bool)

(assert (=> b!4003143 m!4585583))

(declare-fun m!4585585 () Bool)

(assert (=> b!4003146 m!4585585))

(declare-fun m!4585587 () Bool)

(assert (=> b!4003158 m!4585587))

(declare-fun m!4585589 () Bool)

(assert (=> b!4003158 m!4585589))

(declare-fun m!4585591 () Bool)

(assert (=> b!4003152 m!4585591))

(declare-fun m!4585593 () Bool)

(assert (=> b!4003152 m!4585593))

(declare-fun m!4585595 () Bool)

(assert (=> b!4003154 m!4585595))

(declare-fun m!4585597 () Bool)

(assert (=> b!4003154 m!4585597))

(declare-fun m!4585599 () Bool)

(assert (=> b!4003154 m!4585599))

(assert (=> b!4003154 m!4585599))

(declare-fun m!4585601 () Bool)

(assert (=> b!4003154 m!4585601))

(declare-fun m!4585603 () Bool)

(assert (=> b!4003148 m!4585603))

(declare-fun m!4585605 () Bool)

(assert (=> b!4003148 m!4585605))

(declare-fun m!4585607 () Bool)

(assert (=> b!4003148 m!4585607))

(declare-fun m!4585609 () Bool)

(assert (=> b!4003148 m!4585609))

(declare-fun m!4585611 () Bool)

(assert (=> start!376780 m!4585611))

(declare-fun m!4585613 () Bool)

(assert (=> b!4003162 m!4585613))

(declare-fun m!4585615 () Bool)

(assert (=> b!4003162 m!4585615))

(declare-fun m!4585617 () Bool)

(assert (=> b!4003162 m!4585617))

(declare-fun m!4585619 () Bool)

(assert (=> b!4003162 m!4585619))

(declare-fun m!4585621 () Bool)

(assert (=> b!4003147 m!4585621))

(declare-fun m!4585623 () Bool)

(assert (=> b!4003147 m!4585623))

(declare-fun m!4585625 () Bool)

(assert (=> b!4003147 m!4585625))

(declare-fun m!4585627 () Bool)

(assert (=> b!4003147 m!4585627))

(declare-fun m!4585629 () Bool)

(assert (=> b!4003147 m!4585629))

(declare-fun m!4585631 () Bool)

(assert (=> b!4003156 m!4585631))

(declare-fun m!4585633 () Bool)

(assert (=> b!4003163 m!4585633))

(declare-fun m!4585635 () Bool)

(assert (=> b!4003163 m!4585635))

(declare-fun m!4585637 () Bool)

(assert (=> b!4003163 m!4585637))

(declare-fun m!4585639 () Bool)

(assert (=> b!4003163 m!4585639))

(declare-fun m!4585641 () Bool)

(assert (=> b!4003155 m!4585641))

(declare-fun m!4585643 () Bool)

(assert (=> b!4003155 m!4585643))

(check-sat (not b_next!112029) (not b!4003150) b_and!307413 (not b!4003161) (not b!4003153) (not b!4003163) (not b!4003157) b_and!307411 (not b!4003164) (not b!4003148) (not b!4003162) (not b!4003152) (not b!4003156) (not b_next!112031) (not b!4003149) (not b!4003144) (not b_next!112025) tp_is_empty!20393 (not b!4003154) (not b!4003158) b_and!307407 (not start!376780) (not b!4003155) b_and!307409 (not b_next!112027) (not b!4003146) (not b!4003160) (not b!4003159) (not b!4003147) (not b!4003143))
(check-sat (not b_next!112029) (not b_next!112031) b_and!307413 (not b_next!112025) b_and!307407 b_and!307411 b_and!307409 (not b_next!112027))
