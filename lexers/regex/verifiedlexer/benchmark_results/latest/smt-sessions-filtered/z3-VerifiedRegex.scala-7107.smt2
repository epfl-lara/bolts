; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376772 () Bool)

(assert start!376772)

(declare-fun b!4002897 () Bool)

(declare-fun b_free!111289 () Bool)

(declare-fun b_next!111993 () Bool)

(assert (=> b!4002897 (= b_free!111289 (not b_next!111993))))

(declare-fun tp!1218276 () Bool)

(declare-fun b_and!307375 () Bool)

(assert (=> b!4002897 (= tp!1218276 b_and!307375)))

(declare-fun b_free!111291 () Bool)

(declare-fun b_next!111995 () Bool)

(assert (=> b!4002897 (= b_free!111291 (not b_next!111995))))

(declare-fun tp!1218285 () Bool)

(declare-fun b_and!307377 () Bool)

(assert (=> b!4002897 (= tp!1218285 b_and!307377)))

(declare-fun b!4002890 () Bool)

(declare-fun b_free!111293 () Bool)

(declare-fun b_next!111997 () Bool)

(assert (=> b!4002890 (= b_free!111293 (not b_next!111997))))

(declare-fun tp!1218287 () Bool)

(declare-fun b_and!307379 () Bool)

(assert (=> b!4002890 (= tp!1218287 b_and!307379)))

(declare-fun b_free!111295 () Bool)

(declare-fun b_next!111999 () Bool)

(assert (=> b!4002890 (= b_free!111295 (not b_next!111999))))

(declare-fun tp!1218284 () Bool)

(declare-fun b_and!307381 () Bool)

(assert (=> b!4002890 (= tp!1218284 b_and!307381)))

(declare-fun res!1626477 () Bool)

(declare-fun e!2482183 () Bool)

(assert (=> start!376772 (=> (not res!1626477) (not e!2482183))))

(declare-datatypes ((LexerInterface!6391 0))(
  ( (LexerInterfaceExt!6388 (__x!26281 Int)) (Lexer!6389) )
))
(declare-fun thiss!21717 () LexerInterface!6391)

(get-info :version)

(assert (=> start!376772 (= res!1626477 ((_ is Lexer!6389) thiss!21717))))

(assert (=> start!376772 e!2482183))

(declare-fun e!2482187 () Bool)

(assert (=> start!376772 e!2482187))

(declare-datatypes ((C!23600 0))(
  ( (C!23601 (val!13894 Int)) )
))
(declare-datatypes ((List!42962 0))(
  ( (Nil!42838) (Cons!42838 (h!48258 C!23600) (t!332303 List!42962)) )
))
(declare-datatypes ((IArray!26031 0))(
  ( (IArray!26032 (innerList!13073 List!42962)) )
))
(declare-datatypes ((Conc!13013 0))(
  ( (Node!13013 (left!32332 Conc!13013) (right!32662 Conc!13013) (csize!26256 Int) (cheight!13224 Int)) (Leaf!20121 (xs!16319 IArray!26031) (csize!26257 Int)) (Empty!13013) )
))
(declare-datatypes ((BalanceConc!25620 0))(
  ( (BalanceConc!25621 (c!692218 Conc!13013)) )
))
(declare-datatypes ((List!42963 0))(
  ( (Nil!42839) (Cons!42839 (h!48259 (_ BitVec 16)) (t!332304 List!42963)) )
))
(declare-datatypes ((TokenValue!7032 0))(
  ( (FloatLiteralValue!14064 (text!49669 List!42963)) (TokenValueExt!7031 (__x!26282 Int)) (Broken!35160 (value!214465 List!42963)) (Object!7155) (End!7032) (Def!7032) (Underscore!7032) (Match!7032) (Else!7032) (Error!7032) (Case!7032) (If!7032) (Extends!7032) (Abstract!7032) (Class!7032) (Val!7032) (DelimiterValue!14064 (del!7092 List!42963)) (KeywordValue!7038 (value!214466 List!42963)) (CommentValue!14064 (value!214467 List!42963)) (WhitespaceValue!14064 (value!214468 List!42963)) (IndentationValue!7032 (value!214469 List!42963)) (String!48877) (Int32!7032) (Broken!35161 (value!214470 List!42963)) (Boolean!7033) (Unit!61827) (OperatorValue!7035 (op!7092 List!42963)) (IdentifierValue!14064 (value!214471 List!42963)) (IdentifierValue!14065 (value!214472 List!42963)) (WhitespaceValue!14065 (value!214473 List!42963)) (True!14064) (False!14064) (Broken!35162 (value!214474 List!42963)) (Broken!35163 (value!214475 List!42963)) (True!14065) (RightBrace!7032) (RightBracket!7032) (Colon!7032) (Null!7032) (Comma!7032) (LeftBracket!7032) (False!14065) (LeftBrace!7032) (ImaginaryLiteralValue!7032 (text!49670 List!42963)) (StringLiteralValue!21096 (value!214476 List!42963)) (EOFValue!7032 (value!214477 List!42963)) (IdentValue!7032 (value!214478 List!42963)) (DelimiterValue!14065 (value!214479 List!42963)) (DedentValue!7032 (value!214480 List!42963)) (NewLineValue!7032 (value!214481 List!42963)) (IntegerValue!21096 (value!214482 (_ BitVec 32)) (text!49671 List!42963)) (IntegerValue!21097 (value!214483 Int) (text!49672 List!42963)) (Times!7032) (Or!7032) (Equal!7032) (Minus!7032) (Broken!35164 (value!214484 List!42963)) (And!7032) (Div!7032) (LessEqual!7032) (Mod!7032) (Concat!18739) (Not!7032) (Plus!7032) (SpaceValue!7032 (value!214485 List!42963)) (IntegerValue!21098 (value!214486 Int) (text!49673 List!42963)) (StringLiteralValue!21097 (text!49674 List!42963)) (FloatLiteralValue!14065 (text!49675 List!42963)) (BytesLiteralValue!7032 (value!214487 List!42963)) (CommentValue!14065 (value!214488 List!42963)) (StringLiteralValue!21098 (value!214489 List!42963)) (ErrorTokenValue!7032 (msg!7093 List!42963)) )
))
(declare-datatypes ((Regex!11707 0))(
  ( (ElementMatch!11707 (c!692219 C!23600)) (Concat!18740 (regOne!23926 Regex!11707) (regTwo!23926 Regex!11707)) (EmptyExpr!11707) (Star!11707 (reg!12036 Regex!11707)) (EmptyLang!11707) (Union!11707 (regOne!23927 Regex!11707) (regTwo!23927 Regex!11707)) )
))
(declare-datatypes ((String!48878 0))(
  ( (String!48879 (value!214490 String)) )
))
(declare-datatypes ((TokenValueInjection!13492 0))(
  ( (TokenValueInjection!13493 (toValue!9294 Int) (toChars!9153 Int)) )
))
(declare-datatypes ((Rule!13404 0))(
  ( (Rule!13405 (regex!6802 Regex!11707) (tag!7662 String!48878) (isSeparator!6802 Bool) (transformation!6802 TokenValueInjection!13492)) )
))
(declare-datatypes ((Token!12742 0))(
  ( (Token!12743 (value!214491 TokenValue!7032) (rule!9836 Rule!13404) (size!32029 Int) (originalCharacters!7402 List!42962)) )
))
(declare-fun token!484 () Token!12742)

(declare-fun e!2482186 () Bool)

(declare-fun inv!57209 (Token!12742) Bool)

(assert (=> start!376772 (and (inv!57209 token!484) e!2482186)))

(declare-fun e!2482192 () Bool)

(assert (=> start!376772 e!2482192))

(declare-fun e!2482184 () Bool)

(assert (=> start!376772 e!2482184))

(declare-fun e!2482190 () Bool)

(assert (=> start!376772 e!2482190))

(assert (=> start!376772 true))

(declare-fun e!2482178 () Bool)

(assert (=> start!376772 e!2482178))

(declare-fun e!2482191 () Bool)

(assert (=> start!376772 e!2482191))

(declare-fun b!4002880 () Bool)

(declare-fun tp_is_empty!20385 () Bool)

(declare-fun tp!1218278 () Bool)

(assert (=> b!4002880 (= e!2482187 (and tp_is_empty!20385 tp!1218278))))

(declare-fun b!4002881 () Bool)

(declare-fun tp!1218283 () Bool)

(assert (=> b!4002881 (= e!2482192 (and tp_is_empty!20385 tp!1218283))))

(declare-fun b!4002882 () Bool)

(declare-fun res!1626478 () Bool)

(declare-fun e!2482180 () Bool)

(assert (=> b!4002882 (=> (not res!1626478) (not e!2482180))))

(declare-fun prefix!494 () List!42962)

(declare-fun lt!1415587 () List!42962)

(declare-fun newSuffix!27 () List!42962)

(declare-fun newSuffixResult!27 () List!42962)

(declare-fun ++!11204 (List!42962 List!42962) List!42962)

(assert (=> b!4002882 (= res!1626478 (= (++!11204 lt!1415587 newSuffixResult!27) (++!11204 prefix!494 newSuffix!27)))))

(declare-fun b!4002883 () Bool)

(declare-fun res!1626482 () Bool)

(assert (=> b!4002883 (=> (not res!1626482) (not e!2482183))))

(declare-fun suffix!1299 () List!42962)

(declare-fun isPrefix!3889 (List!42962 List!42962) Bool)

(assert (=> b!4002883 (= res!1626482 (isPrefix!3889 newSuffix!27 suffix!1299))))

(declare-fun b!4002884 () Bool)

(declare-fun tp!1218281 () Bool)

(assert (=> b!4002884 (= e!2482190 (and tp_is_empty!20385 tp!1218281))))

(declare-fun b!4002885 () Bool)

(assert (=> b!4002885 (= e!2482183 e!2482180)))

(declare-fun res!1626484 () Bool)

(assert (=> b!4002885 (=> (not res!1626484) (not e!2482180))))

(declare-fun size!32030 (List!42962) Int)

(assert (=> b!4002885 (= res!1626484 (>= (size!32030 prefix!494) (size!32030 lt!1415587)))))

(declare-fun list!15912 (BalanceConc!25620) List!42962)

(declare-fun charsOf!4618 (Token!12742) BalanceConc!25620)

(assert (=> b!4002885 (= lt!1415587 (list!15912 (charsOf!4618 token!484)))))

(declare-fun b!4002886 () Bool)

(declare-fun res!1626476 () Bool)

(assert (=> b!4002886 (=> (not res!1626476) (not e!2482183))))

(declare-datatypes ((List!42964 0))(
  ( (Nil!42840) (Cons!42840 (h!48260 Rule!13404) (t!332305 List!42964)) )
))
(declare-fun rules!2999 () List!42964)

(declare-fun rulesInvariant!5734 (LexerInterface!6391 List!42964) Bool)

(assert (=> b!4002886 (= res!1626476 (rulesInvariant!5734 thiss!21717 rules!2999))))

(declare-fun b!4002887 () Bool)

(declare-fun res!1626483 () Bool)

(assert (=> b!4002887 (=> (not res!1626483) (not e!2482183))))

(assert (=> b!4002887 (= res!1626483 (>= (size!32030 suffix!1299) (size!32030 newSuffix!27)))))

(declare-fun b!4002888 () Bool)

(declare-fun e!2482185 () Bool)

(declare-fun e!2482182 () Bool)

(assert (=> b!4002888 (= e!2482185 e!2482182)))

(declare-fun res!1626481 () Bool)

(assert (=> b!4002888 (=> res!1626481 e!2482182)))

(declare-fun lt!1415584 () List!42962)

(assert (=> b!4002888 (= res!1626481 (not (isPrefix!3889 lt!1415587 lt!1415584)))))

(assert (=> b!4002888 (isPrefix!3889 prefix!494 lt!1415584)))

(declare-datatypes ((Unit!61828 0))(
  ( (Unit!61829) )
))
(declare-fun lt!1415589 () Unit!61828)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2730 (List!42962 List!42962) Unit!61828)

(assert (=> b!4002888 (= lt!1415589 (lemmaConcatTwoListThenFirstIsPrefix!2730 prefix!494 suffix!1299))))

(declare-fun lt!1415581 () List!42962)

(assert (=> b!4002888 (isPrefix!3889 lt!1415587 lt!1415581)))

(declare-fun lt!1415583 () Unit!61828)

(declare-fun suffixResult!105 () List!42962)

(assert (=> b!4002888 (= lt!1415583 (lemmaConcatTwoListThenFirstIsPrefix!2730 lt!1415587 suffixResult!105))))

(declare-fun e!2482177 () Bool)

(declare-fun b!4002889 () Bool)

(declare-fun e!2482189 () Bool)

(declare-fun tp!1218286 () Bool)

(declare-fun inv!57206 (String!48878) Bool)

(declare-fun inv!57210 (TokenValueInjection!13492) Bool)

(assert (=> b!4002889 (= e!2482189 (and tp!1218286 (inv!57206 (tag!7662 (h!48260 rules!2999))) (inv!57210 (transformation!6802 (h!48260 rules!2999))) e!2482177))))

(assert (=> b!4002890 (= e!2482177 (and tp!1218287 tp!1218284))))

(declare-fun e!2482181 () Bool)

(declare-fun b!4002891 () Bool)

(declare-fun tp!1218280 () Bool)

(declare-fun e!2482179 () Bool)

(assert (=> b!4002891 (= e!2482179 (and tp!1218280 (inv!57206 (tag!7662 (rule!9836 token!484))) (inv!57210 (transformation!6802 (rule!9836 token!484))) e!2482181))))

(declare-fun b!4002892 () Bool)

(declare-fun tp!1218279 () Bool)

(assert (=> b!4002892 (= e!2482191 (and tp_is_empty!20385 tp!1218279))))

(declare-fun b!4002893 () Bool)

(declare-fun tp!1218277 () Bool)

(assert (=> b!4002893 (= e!2482184 (and tp_is_empty!20385 tp!1218277))))

(declare-fun b!4002894 () Bool)

(assert (=> b!4002894 (= e!2482182 true)))

(declare-fun lt!1415586 () List!42962)

(declare-fun getSuffix!2314 (List!42962 List!42962) List!42962)

(assert (=> b!4002894 (= lt!1415586 (++!11204 lt!1415587 (getSuffix!2314 prefix!494 lt!1415587)))))

(assert (=> b!4002894 (isPrefix!3889 lt!1415587 prefix!494)))

(declare-fun lt!1415582 () Unit!61828)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!461 (List!42962 List!42962 List!42962) Unit!61828)

(assert (=> b!4002894 (= lt!1415582 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!461 prefix!494 lt!1415587 lt!1415584))))

(declare-fun b!4002895 () Bool)

(declare-fun tp!1218282 () Bool)

(assert (=> b!4002895 (= e!2482178 (and e!2482189 tp!1218282))))

(declare-fun tp!1218288 () Bool)

(declare-fun b!4002896 () Bool)

(declare-fun inv!21 (TokenValue!7032) Bool)

(assert (=> b!4002896 (= e!2482186 (and (inv!21 (value!214491 token!484)) e!2482179 tp!1218288))))

(assert (=> b!4002897 (= e!2482181 (and tp!1218276 tp!1218285))))

(declare-fun b!4002898 () Bool)

(declare-fun res!1626485 () Bool)

(assert (=> b!4002898 (=> (not res!1626485) (not e!2482183))))

(declare-fun isEmpty!25598 (List!42964) Bool)

(assert (=> b!4002898 (= res!1626485 (not (isEmpty!25598 rules!2999)))))

(declare-fun b!4002899 () Bool)

(declare-fun e!2482188 () Bool)

(assert (=> b!4002899 (= e!2482180 e!2482188)))

(declare-fun res!1626479 () Bool)

(assert (=> b!4002899 (=> (not res!1626479) (not e!2482188))))

(declare-datatypes ((tuple2!42006 0))(
  ( (tuple2!42007 (_1!24137 Token!12742) (_2!24137 List!42962)) )
))
(declare-datatypes ((Option!9216 0))(
  ( (None!9215) (Some!9215 (v!39577 tuple2!42006)) )
))
(declare-fun maxPrefix!3689 (LexerInterface!6391 List!42964 List!42962) Option!9216)

(assert (=> b!4002899 (= res!1626479 (= (maxPrefix!3689 thiss!21717 rules!2999 lt!1415584) (Some!9215 (tuple2!42007 token!484 suffixResult!105))))))

(assert (=> b!4002899 (= lt!1415584 (++!11204 prefix!494 suffix!1299))))

(declare-fun b!4002900 () Bool)

(assert (=> b!4002900 (= e!2482188 (not e!2482185))))

(declare-fun res!1626480 () Bool)

(assert (=> b!4002900 (=> res!1626480 e!2482185)))

(assert (=> b!4002900 (= res!1626480 (not (= lt!1415581 lt!1415584)))))

(assert (=> b!4002900 (= lt!1415581 (++!11204 lt!1415587 suffixResult!105))))

(declare-fun lt!1415585 () Unit!61828)

(declare-fun lemmaInv!1017 (TokenValueInjection!13492) Unit!61828)

(assert (=> b!4002900 (= lt!1415585 (lemmaInv!1017 (transformation!6802 (rule!9836 token!484))))))

(declare-fun ruleValid!2734 (LexerInterface!6391 Rule!13404) Bool)

(assert (=> b!4002900 (ruleValid!2734 thiss!21717 (rule!9836 token!484))))

(declare-fun lt!1415588 () Unit!61828)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1808 (LexerInterface!6391 Rule!13404 List!42964) Unit!61828)

(assert (=> b!4002900 (= lt!1415588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1808 thiss!21717 (rule!9836 token!484) rules!2999))))

(assert (= (and start!376772 res!1626477) b!4002898))

(assert (= (and b!4002898 res!1626485) b!4002886))

(assert (= (and b!4002886 res!1626476) b!4002887))

(assert (= (and b!4002887 res!1626483) b!4002883))

(assert (= (and b!4002883 res!1626482) b!4002885))

(assert (= (and b!4002885 res!1626484) b!4002882))

(assert (= (and b!4002882 res!1626478) b!4002899))

(assert (= (and b!4002899 res!1626479) b!4002900))

(assert (= (and b!4002900 (not res!1626480)) b!4002888))

(assert (= (and b!4002888 (not res!1626481)) b!4002894))

(assert (= (and start!376772 ((_ is Cons!42838) prefix!494)) b!4002880))

(assert (= b!4002891 b!4002897))

(assert (= b!4002896 b!4002891))

(assert (= start!376772 b!4002896))

(assert (= (and start!376772 ((_ is Cons!42838) suffixResult!105)) b!4002881))

(assert (= (and start!376772 ((_ is Cons!42838) suffix!1299)) b!4002893))

(assert (= (and start!376772 ((_ is Cons!42838) newSuffix!27)) b!4002884))

(assert (= b!4002889 b!4002890))

(assert (= b!4002895 b!4002889))

(assert (= (and start!376772 ((_ is Cons!42840) rules!2999)) b!4002895))

(assert (= (and start!376772 ((_ is Cons!42838) newSuffixResult!27)) b!4002892))

(declare-fun m!4585293 () Bool)

(assert (=> b!4002885 m!4585293))

(declare-fun m!4585295 () Bool)

(assert (=> b!4002885 m!4585295))

(declare-fun m!4585297 () Bool)

(assert (=> b!4002885 m!4585297))

(assert (=> b!4002885 m!4585297))

(declare-fun m!4585299 () Bool)

(assert (=> b!4002885 m!4585299))

(declare-fun m!4585301 () Bool)

(assert (=> b!4002887 m!4585301))

(declare-fun m!4585303 () Bool)

(assert (=> b!4002887 m!4585303))

(declare-fun m!4585305 () Bool)

(assert (=> b!4002883 m!4585305))

(declare-fun m!4585307 () Bool)

(assert (=> b!4002886 m!4585307))

(declare-fun m!4585309 () Bool)

(assert (=> b!4002899 m!4585309))

(declare-fun m!4585311 () Bool)

(assert (=> b!4002899 m!4585311))

(declare-fun m!4585313 () Bool)

(assert (=> b!4002896 m!4585313))

(declare-fun m!4585315 () Bool)

(assert (=> b!4002894 m!4585315))

(assert (=> b!4002894 m!4585315))

(declare-fun m!4585317 () Bool)

(assert (=> b!4002894 m!4585317))

(declare-fun m!4585319 () Bool)

(assert (=> b!4002894 m!4585319))

(declare-fun m!4585321 () Bool)

(assert (=> b!4002894 m!4585321))

(declare-fun m!4585323 () Bool)

(assert (=> b!4002888 m!4585323))

(declare-fun m!4585325 () Bool)

(assert (=> b!4002888 m!4585325))

(declare-fun m!4585327 () Bool)

(assert (=> b!4002888 m!4585327))

(declare-fun m!4585329 () Bool)

(assert (=> b!4002888 m!4585329))

(declare-fun m!4585331 () Bool)

(assert (=> b!4002888 m!4585331))

(declare-fun m!4585333 () Bool)

(assert (=> b!4002889 m!4585333))

(declare-fun m!4585335 () Bool)

(assert (=> b!4002889 m!4585335))

(declare-fun m!4585337 () Bool)

(assert (=> start!376772 m!4585337))

(declare-fun m!4585339 () Bool)

(assert (=> b!4002898 m!4585339))

(declare-fun m!4585341 () Bool)

(assert (=> b!4002891 m!4585341))

(declare-fun m!4585343 () Bool)

(assert (=> b!4002891 m!4585343))

(declare-fun m!4585345 () Bool)

(assert (=> b!4002882 m!4585345))

(declare-fun m!4585347 () Bool)

(assert (=> b!4002882 m!4585347))

(declare-fun m!4585349 () Bool)

(assert (=> b!4002900 m!4585349))

(declare-fun m!4585351 () Bool)

(assert (=> b!4002900 m!4585351))

(declare-fun m!4585353 () Bool)

(assert (=> b!4002900 m!4585353))

(declare-fun m!4585355 () Bool)

(assert (=> b!4002900 m!4585355))

(check-sat (not b_next!111999) (not b_next!111995) (not b!4002887) (not b!4002895) (not b_next!111997) (not b!4002900) (not b!4002886) (not b!4002888) (not b!4002896) (not b!4002883) b_and!307377 (not b!4002893) (not b!4002880) b_and!307375 (not b!4002894) b_and!307379 (not start!376772) (not b!4002882) (not b!4002898) (not b_next!111993) (not b!4002892) (not b!4002899) (not b!4002889) tp_is_empty!20385 (not b!4002885) b_and!307381 (not b!4002881) (not b!4002884) (not b!4002891))
(check-sat (not b_next!111999) (not b_next!111995) b_and!307379 (not b_next!111993) (not b_next!111997) b_and!307381 b_and!307377 b_and!307375)
