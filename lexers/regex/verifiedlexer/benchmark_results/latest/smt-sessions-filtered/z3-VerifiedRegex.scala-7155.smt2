; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379628 () Bool)

(assert start!379628)

(declare-fun b!4029514 () Bool)

(declare-fun b_free!112249 () Bool)

(declare-fun b_next!112953 () Bool)

(assert (=> b!4029514 (= b_free!112249 (not b_next!112953))))

(declare-fun tp!1224676 () Bool)

(declare-fun b_and!309639 () Bool)

(assert (=> b!4029514 (= tp!1224676 b_and!309639)))

(declare-fun b_free!112251 () Bool)

(declare-fun b_next!112955 () Bool)

(assert (=> b!4029514 (= b_free!112251 (not b_next!112955))))

(declare-fun tp!1224686 () Bool)

(declare-fun b_and!309641 () Bool)

(assert (=> b!4029514 (= tp!1224686 b_and!309641)))

(declare-fun b!4029530 () Bool)

(declare-fun b_free!112253 () Bool)

(declare-fun b_next!112957 () Bool)

(assert (=> b!4029530 (= b_free!112253 (not b_next!112957))))

(declare-fun tp!1224680 () Bool)

(declare-fun b_and!309643 () Bool)

(assert (=> b!4029530 (= tp!1224680 b_and!309643)))

(declare-fun b_free!112255 () Bool)

(declare-fun b_next!112959 () Bool)

(assert (=> b!4029530 (= b_free!112255 (not b_next!112959))))

(declare-fun tp!1224677 () Bool)

(declare-fun b_and!309645 () Bool)

(assert (=> b!4029530 (= tp!1224677 b_and!309645)))

(declare-fun b!4029503 () Bool)

(declare-fun e!2500071 () Bool)

(declare-fun e!2500077 () Bool)

(assert (=> b!4029503 (= e!2500071 e!2500077)))

(declare-fun res!1640117 () Bool)

(assert (=> b!4029503 (=> res!1640117 e!2500077)))

(declare-datatypes ((C!23792 0))(
  ( (C!23793 (val!13990 Int)) )
))
(declare-datatypes ((List!43281 0))(
  ( (Nil!43157) (Cons!43157 (h!48577 C!23792) (t!334122 List!43281)) )
))
(declare-datatypes ((IArray!26223 0))(
  ( (IArray!26224 (innerList!13169 List!43281)) )
))
(declare-datatypes ((Conc!13109 0))(
  ( (Node!13109 (left!32512 Conc!13109) (right!32842 Conc!13109) (csize!26448 Int) (cheight!13320 Int)) (Leaf!20265 (xs!16415 IArray!26223) (csize!26449 Int)) (Empty!13109) )
))
(declare-datatypes ((BalanceConc!25812 0))(
  ( (BalanceConc!25813 (c!696094 Conc!13109)) )
))
(declare-datatypes ((List!43282 0))(
  ( (Nil!43158) (Cons!43158 (h!48578 (_ BitVec 16)) (t!334123 List!43282)) )
))
(declare-datatypes ((TokenValue!7128 0))(
  ( (FloatLiteralValue!14256 (text!50341 List!43282)) (TokenValueExt!7127 (__x!26473 Int)) (Broken!35640 (value!217201 List!43282)) (Object!7251) (End!7128) (Def!7128) (Underscore!7128) (Match!7128) (Else!7128) (Error!7128) (Case!7128) (If!7128) (Extends!7128) (Abstract!7128) (Class!7128) (Val!7128) (DelimiterValue!14256 (del!7188 List!43282)) (KeywordValue!7134 (value!217202 List!43282)) (CommentValue!14256 (value!217203 List!43282)) (WhitespaceValue!14256 (value!217204 List!43282)) (IndentationValue!7128 (value!217205 List!43282)) (String!49357) (Int32!7128) (Broken!35641 (value!217206 List!43282)) (Boolean!7129) (Unit!62319) (OperatorValue!7131 (op!7188 List!43282)) (IdentifierValue!14256 (value!217207 List!43282)) (IdentifierValue!14257 (value!217208 List!43282)) (WhitespaceValue!14257 (value!217209 List!43282)) (True!14256) (False!14256) (Broken!35642 (value!217210 List!43282)) (Broken!35643 (value!217211 List!43282)) (True!14257) (RightBrace!7128) (RightBracket!7128) (Colon!7128) (Null!7128) (Comma!7128) (LeftBracket!7128) (False!14257) (LeftBrace!7128) (ImaginaryLiteralValue!7128 (text!50342 List!43282)) (StringLiteralValue!21384 (value!217212 List!43282)) (EOFValue!7128 (value!217213 List!43282)) (IdentValue!7128 (value!217214 List!43282)) (DelimiterValue!14257 (value!217215 List!43282)) (DedentValue!7128 (value!217216 List!43282)) (NewLineValue!7128 (value!217217 List!43282)) (IntegerValue!21384 (value!217218 (_ BitVec 32)) (text!50343 List!43282)) (IntegerValue!21385 (value!217219 Int) (text!50344 List!43282)) (Times!7128) (Or!7128) (Equal!7128) (Minus!7128) (Broken!35644 (value!217220 List!43282)) (And!7128) (Div!7128) (LessEqual!7128) (Mod!7128) (Concat!18931) (Not!7128) (Plus!7128) (SpaceValue!7128 (value!217221 List!43282)) (IntegerValue!21386 (value!217222 Int) (text!50345 List!43282)) (StringLiteralValue!21385 (text!50346 List!43282)) (FloatLiteralValue!14257 (text!50347 List!43282)) (BytesLiteralValue!7128 (value!217223 List!43282)) (CommentValue!14257 (value!217224 List!43282)) (StringLiteralValue!21386 (value!217225 List!43282)) (ErrorTokenValue!7128 (msg!7189 List!43282)) )
))
(declare-datatypes ((Regex!11803 0))(
  ( (ElementMatch!11803 (c!696095 C!23792)) (Concat!18932 (regOne!24118 Regex!11803) (regTwo!24118 Regex!11803)) (EmptyExpr!11803) (Star!11803 (reg!12132 Regex!11803)) (EmptyLang!11803) (Union!11803 (regOne!24119 Regex!11803) (regTwo!24119 Regex!11803)) )
))
(declare-datatypes ((String!49358 0))(
  ( (String!49359 (value!217226 String)) )
))
(declare-datatypes ((TokenValueInjection!13684 0))(
  ( (TokenValueInjection!13685 (toValue!9422 Int) (toChars!9281 Int)) )
))
(declare-datatypes ((Rule!13596 0))(
  ( (Rule!13597 (regex!6898 Regex!11803) (tag!7758 String!49358) (isSeparator!6898 Bool) (transformation!6898 TokenValueInjection!13684)) )
))
(declare-datatypes ((Token!12934 0))(
  ( (Token!12935 (value!217227 TokenValue!7128) (rule!9958 Rule!13596) (size!32257 Int) (originalCharacters!7498 List!43281)) )
))
(declare-datatypes ((tuple2!42250 0))(
  ( (tuple2!42251 (_1!24259 Token!12934) (_2!24259 List!43281)) )
))
(declare-datatypes ((Option!9312 0))(
  ( (None!9311) (Some!9311 (v!39699 tuple2!42250)) )
))
(declare-fun lt!1432005 () Option!9312)

(declare-fun lt!1431999 () Option!9312)

(assert (=> b!4029503 (= res!1640117 (not (= lt!1432005 lt!1431999)))))

(declare-fun token!484 () Token!12934)

(declare-fun suffixResult!105 () List!43281)

(declare-fun lt!1432009 () TokenValue!7128)

(declare-fun lt!1432007 () Int)

(declare-fun lt!1431997 () List!43281)

(assert (=> b!4029503 (= lt!1432005 (Some!9311 (tuple2!42251 (Token!12935 lt!1432009 (rule!9958 token!484) lt!1432007 lt!1431997) suffixResult!105)))))

(declare-fun lt!1432011 () List!43281)

(declare-datatypes ((LexerInterface!6487 0))(
  ( (LexerInterfaceExt!6484 (__x!26474 Int)) (Lexer!6485) )
))
(declare-fun thiss!21717 () LexerInterface!6487)

(declare-fun maxPrefixOneRule!2797 (LexerInterface!6487 Rule!13596 List!43281) Option!9312)

(assert (=> b!4029503 (= lt!1432005 (maxPrefixOneRule!2797 thiss!21717 (rule!9958 token!484) lt!1432011))))

(declare-fun apply!10087 (TokenValueInjection!13684 BalanceConc!25812) TokenValue!7128)

(declare-fun seqFromList!5115 (List!43281) BalanceConc!25812)

(assert (=> b!4029503 (= lt!1432009 (apply!10087 (transformation!6898 (rule!9958 token!484)) (seqFromList!5115 lt!1431997)))))

(declare-datatypes ((Unit!62320 0))(
  ( (Unit!62321) )
))
(declare-fun lt!1432006 () Unit!62320)

(declare-datatypes ((List!43283 0))(
  ( (Nil!43159) (Cons!43159 (h!48579 Rule!13596) (t!334124 List!43283)) )
))
(declare-fun rules!2999 () List!43283)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1603 (LexerInterface!6487 List!43283 List!43281 List!43281 List!43281 Rule!13596) Unit!62320)

(assert (=> b!4029503 (= lt!1432006 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1603 thiss!21717 rules!2999 lt!1431997 lt!1432011 suffixResult!105 (rule!9958 token!484)))))

(declare-fun lt!1431998 () List!43281)

(assert (=> b!4029503 (= lt!1431998 suffixResult!105)))

(declare-fun lt!1431993 () Unit!62320)

(declare-fun lemmaSamePrefixThenSameSuffix!2146 (List!43281 List!43281 List!43281 List!43281 List!43281) Unit!62320)

(assert (=> b!4029503 (= lt!1431993 (lemmaSamePrefixThenSameSuffix!2146 lt!1431997 lt!1431998 lt!1431997 suffixResult!105 lt!1432011))))

(declare-fun lt!1432008 () List!43281)

(declare-fun isPrefix!3985 (List!43281 List!43281) Bool)

(assert (=> b!4029503 (isPrefix!3985 lt!1431997 lt!1432008)))

(declare-fun lt!1431994 () Unit!62320)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2820 (List!43281 List!43281) Unit!62320)

(assert (=> b!4029503 (= lt!1431994 (lemmaConcatTwoListThenFirstIsPrefix!2820 lt!1431997 lt!1431998))))

(declare-fun b!4029504 () Bool)

(declare-fun tp!1224684 () Bool)

(declare-fun e!2500065 () Bool)

(declare-fun e!2500062 () Bool)

(declare-fun inv!21 (TokenValue!7128) Bool)

(assert (=> b!4029504 (= e!2500065 (and (inv!21 (value!217227 token!484)) e!2500062 tp!1224684))))

(declare-fun b!4029505 () Bool)

(declare-fun e!2500060 () Bool)

(declare-fun e!2500067 () Bool)

(assert (=> b!4029505 (= e!2500060 e!2500067)))

(declare-fun res!1640129 () Bool)

(assert (=> b!4029505 (=> (not res!1640129) (not e!2500067))))

(declare-fun lt!1431988 () Int)

(assert (=> b!4029505 (= res!1640129 (>= lt!1431988 lt!1432007))))

(declare-fun size!32258 (List!43281) Int)

(assert (=> b!4029505 (= lt!1432007 (size!32258 lt!1431997))))

(declare-fun prefix!494 () List!43281)

(assert (=> b!4029505 (= lt!1431988 (size!32258 prefix!494))))

(declare-fun list!16056 (BalanceConc!25812) List!43281)

(declare-fun charsOf!4714 (Token!12934) BalanceConc!25812)

(assert (=> b!4029505 (= lt!1431997 (list!16056 (charsOf!4714 token!484)))))

(declare-fun b!4029506 () Bool)

(declare-fun e!2500080 () Bool)

(declare-fun e!2500061 () Bool)

(assert (=> b!4029506 (= e!2500080 e!2500061)))

(declare-fun res!1640123 () Bool)

(assert (=> b!4029506 (=> (not res!1640123) (not e!2500061))))

(declare-fun maxPrefix!3785 (LexerInterface!6487 List!43283 List!43281) Option!9312)

(assert (=> b!4029506 (= res!1640123 (= (maxPrefix!3785 thiss!21717 rules!2999 lt!1432011) lt!1431999))))

(assert (=> b!4029506 (= lt!1431999 (Some!9311 (tuple2!42251 token!484 suffixResult!105)))))

(declare-fun suffix!1299 () List!43281)

(declare-fun ++!11300 (List!43281 List!43281) List!43281)

(assert (=> b!4029506 (= lt!1432011 (++!11300 prefix!494 suffix!1299))))

(declare-fun b!4029508 () Bool)

(declare-fun e!2500078 () Bool)

(declare-fun e!2500074 () Bool)

(declare-fun tp!1224679 () Bool)

(assert (=> b!4029508 (= e!2500078 (and e!2500074 tp!1224679))))

(declare-fun b!4029509 () Bool)

(declare-fun e!2500081 () Bool)

(assert (=> b!4029509 (= e!2500081 (= (size!32257 token!484) lt!1432007))))

(declare-fun b!4029510 () Bool)

(declare-fun e!2500070 () Bool)

(declare-fun tp_is_empty!20577 () Bool)

(declare-fun tp!1224678 () Bool)

(assert (=> b!4029510 (= e!2500070 (and tp_is_empty!20577 tp!1224678))))

(declare-fun b!4029511 () Bool)

(declare-fun res!1640124 () Bool)

(assert (=> b!4029511 (=> (not res!1640124) (not e!2500060))))

(declare-fun rulesInvariant!5830 (LexerInterface!6487 List!43283) Bool)

(assert (=> b!4029511 (= res!1640124 (rulesInvariant!5830 thiss!21717 rules!2999))))

(declare-fun b!4029512 () Bool)

(declare-fun e!2500069 () Bool)

(assert (=> b!4029512 (= e!2500069 (= (originalCharacters!7498 token!484) lt!1431997))))

(assert (=> b!4029512 e!2500081))

(declare-fun res!1640118 () Bool)

(assert (=> b!4029512 (=> (not res!1640118) (not e!2500081))))

(assert (=> b!4029512 (= res!1640118 (isPrefix!3985 lt!1432011 lt!1432011))))

(declare-fun lt!1431987 () Unit!62320)

(declare-fun lemmaIsPrefixRefl!2552 (List!43281 List!43281) Unit!62320)

(assert (=> b!4029512 (= lt!1431987 (lemmaIsPrefixRefl!2552 lt!1432011 lt!1432011))))

(declare-fun b!4029513 () Bool)

(declare-fun e!2500063 () Bool)

(declare-fun tp!1224682 () Bool)

(assert (=> b!4029513 (= e!2500063 (and tp_is_empty!20577 tp!1224682))))

(declare-fun e!2500082 () Bool)

(assert (=> b!4029514 (= e!2500082 (and tp!1224676 tp!1224686))))

(declare-fun b!4029515 () Bool)

(declare-fun e!2500076 () Bool)

(assert (=> b!4029515 (= e!2500076 e!2500071)))

(declare-fun res!1640120 () Bool)

(assert (=> b!4029515 (=> res!1640120 e!2500071)))

(declare-fun lt!1431990 () List!43281)

(assert (=> b!4029515 (= res!1640120 (or (not (= lt!1432011 lt!1431990)) (not (= lt!1432011 lt!1432008))))))

(assert (=> b!4029515 (= lt!1431990 lt!1432008)))

(assert (=> b!4029515 (= lt!1432008 (++!11300 lt!1431997 lt!1431998))))

(declare-fun lt!1431995 () List!43281)

(assert (=> b!4029515 (= lt!1431990 (++!11300 lt!1431995 suffix!1299))))

(declare-fun lt!1432000 () List!43281)

(assert (=> b!4029515 (= lt!1431998 (++!11300 lt!1432000 suffix!1299))))

(declare-fun lt!1432002 () Unit!62320)

(declare-fun lemmaConcatAssociativity!2602 (List!43281 List!43281 List!43281) Unit!62320)

(assert (=> b!4029515 (= lt!1432002 (lemmaConcatAssociativity!2602 lt!1431997 lt!1432000 suffix!1299))))

(declare-fun b!4029516 () Bool)

(assert (=> b!4029516 (= e!2500077 e!2500069)))

(declare-fun res!1640127 () Bool)

(assert (=> b!4029516 (=> res!1640127 e!2500069)))

(declare-fun matchR!5756 (Regex!11803 List!43281) Bool)

(assert (=> b!4029516 (= res!1640127 (not (matchR!5756 (regex!6898 (rule!9958 token!484)) lt!1431997)))))

(declare-fun lt!1431989 () List!43281)

(assert (=> b!4029516 (isPrefix!3985 lt!1431997 lt!1431989)))

(declare-fun newSuffix!27 () List!43281)

(declare-fun lt!1431996 () Unit!62320)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!778 (List!43281 List!43281 List!43281) Unit!62320)

(assert (=> b!4029516 (= lt!1431996 (lemmaPrefixStaysPrefixWhenAddingToSuffix!778 lt!1431997 prefix!494 newSuffix!27))))

(declare-fun lt!1432001 () Unit!62320)

(assert (=> b!4029516 (= lt!1432001 (lemmaPrefixStaysPrefixWhenAddingToSuffix!778 lt!1431997 prefix!494 suffix!1299))))

(declare-fun b!4029517 () Bool)

(declare-fun e!2500083 () Bool)

(assert (=> b!4029517 (= e!2500061 (not e!2500083))))

(declare-fun res!1640130 () Bool)

(assert (=> b!4029517 (=> res!1640130 e!2500083)))

(declare-fun lt!1432013 () List!43281)

(assert (=> b!4029517 (= res!1640130 (not (= lt!1432013 lt!1432011)))))

(assert (=> b!4029517 (= lt!1432013 (++!11300 lt!1431997 suffixResult!105))))

(declare-fun lt!1432004 () Unit!62320)

(declare-fun lemmaInv!1107 (TokenValueInjection!13684) Unit!62320)

(assert (=> b!4029517 (= lt!1432004 (lemmaInv!1107 (transformation!6898 (rule!9958 token!484))))))

(declare-fun ruleValid!2828 (LexerInterface!6487 Rule!13596) Bool)

(assert (=> b!4029517 (ruleValid!2828 thiss!21717 (rule!9958 token!484))))

(declare-fun lt!1432010 () Unit!62320)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1898 (LexerInterface!6487 Rule!13596 List!43283) Unit!62320)

(assert (=> b!4029517 (= lt!1432010 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1898 thiss!21717 (rule!9958 token!484) rules!2999))))

(declare-fun b!4029518 () Bool)

(declare-fun res!1640119 () Bool)

(assert (=> b!4029518 (=> (not res!1640119) (not e!2500060))))

(assert (=> b!4029518 (= res!1640119 (>= (size!32258 suffix!1299) (size!32258 newSuffix!27)))))

(declare-fun b!4029519 () Bool)

(declare-fun res!1640133 () Bool)

(assert (=> b!4029519 (=> (not res!1640133) (not e!2500060))))

(assert (=> b!4029519 (= res!1640133 (isPrefix!3985 newSuffix!27 suffix!1299))))

(declare-fun b!4029520 () Bool)

(declare-fun e!2500064 () Bool)

(declare-fun tp!1224688 () Bool)

(assert (=> b!4029520 (= e!2500064 (and tp_is_empty!20577 tp!1224688))))

(declare-fun e!2500079 () Bool)

(declare-fun b!4029521 () Bool)

(declare-fun tp!1224681 () Bool)

(declare-fun inv!57654 (String!49358) Bool)

(declare-fun inv!57657 (TokenValueInjection!13684) Bool)

(assert (=> b!4029521 (= e!2500062 (and tp!1224681 (inv!57654 (tag!7758 (rule!9958 token!484))) (inv!57657 (transformation!6898 (rule!9958 token!484))) e!2500079))))

(declare-fun b!4029522 () Bool)

(declare-fun res!1640132 () Bool)

(assert (=> b!4029522 (=> (not res!1640132) (not e!2500081))))

(assert (=> b!4029522 (= res!1640132 (= (size!32257 token!484) (size!32258 (originalCharacters!7498 token!484))))))

(declare-fun tp!1224683 () Bool)

(declare-fun b!4029523 () Bool)

(assert (=> b!4029523 (= e!2500074 (and tp!1224683 (inv!57654 (tag!7758 (h!48579 rules!2999))) (inv!57657 (transformation!6898 (h!48579 rules!2999))) e!2500082))))

(declare-fun b!4029524 () Bool)

(declare-fun res!1640122 () Bool)

(assert (=> b!4029524 (=> (not res!1640122) (not e!2500081))))

(assert (=> b!4029524 (= res!1640122 (= (value!217227 token!484) lt!1432009))))

(declare-fun b!4029525 () Bool)

(declare-fun e!2500075 () Bool)

(assert (=> b!4029525 (= e!2500075 e!2500076)))

(declare-fun res!1640126 () Bool)

(assert (=> b!4029525 (=> res!1640126 e!2500076)))

(assert (=> b!4029525 (= res!1640126 (not (= lt!1431995 prefix!494)))))

(assert (=> b!4029525 (= lt!1431995 (++!11300 lt!1431997 lt!1432000))))

(declare-fun getSuffix!2402 (List!43281 List!43281) List!43281)

(assert (=> b!4029525 (= lt!1432000 (getSuffix!2402 prefix!494 lt!1431997))))

(assert (=> b!4029525 (isPrefix!3985 lt!1431997 prefix!494)))

(declare-fun lt!1431991 () Unit!62320)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!549 (List!43281 List!43281 List!43281) Unit!62320)

(assert (=> b!4029525 (= lt!1431991 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!549 prefix!494 lt!1431997 lt!1432011))))

(declare-fun b!4029507 () Bool)

(declare-fun res!1640125 () Bool)

(assert (=> b!4029507 (=> (not res!1640125) (not e!2500060))))

(declare-fun isEmpty!25759 (List!43283) Bool)

(assert (=> b!4029507 (= res!1640125 (not (isEmpty!25759 rules!2999)))))

(declare-fun res!1640128 () Bool)

(assert (=> start!379628 (=> (not res!1640128) (not e!2500060))))

(get-info :version)

(assert (=> start!379628 (= res!1640128 ((_ is Lexer!6485) thiss!21717))))

(assert (=> start!379628 e!2500060))

(declare-fun e!2500072 () Bool)

(assert (=> start!379628 e!2500072))

(declare-fun inv!57658 (Token!12934) Bool)

(assert (=> start!379628 (and (inv!57658 token!484) e!2500065)))

(assert (=> start!379628 e!2500070))

(assert (=> start!379628 e!2500064))

(assert (=> start!379628 e!2500063))

(assert (=> start!379628 true))

(assert (=> start!379628 e!2500078))

(declare-fun e!2500073 () Bool)

(assert (=> start!379628 e!2500073))

(declare-fun b!4029526 () Bool)

(assert (=> b!4029526 (= e!2500083 e!2500075)))

(declare-fun res!1640131 () Bool)

(assert (=> b!4029526 (=> res!1640131 e!2500075)))

(assert (=> b!4029526 (= res!1640131 (not (isPrefix!3985 lt!1431997 lt!1432011)))))

(assert (=> b!4029526 (isPrefix!3985 prefix!494 lt!1432011)))

(declare-fun lt!1432003 () Unit!62320)

(assert (=> b!4029526 (= lt!1432003 (lemmaConcatTwoListThenFirstIsPrefix!2820 prefix!494 suffix!1299))))

(assert (=> b!4029526 (isPrefix!3985 lt!1431997 lt!1432013)))

(declare-fun lt!1432012 () Unit!62320)

(assert (=> b!4029526 (= lt!1432012 (lemmaConcatTwoListThenFirstIsPrefix!2820 lt!1431997 suffixResult!105))))

(declare-fun b!4029527 () Bool)

(declare-fun tp!1224687 () Bool)

(assert (=> b!4029527 (= e!2500072 (and tp_is_empty!20577 tp!1224687))))

(declare-fun b!4029528 () Bool)

(assert (=> b!4029528 (= e!2500067 e!2500080)))

(declare-fun res!1640121 () Bool)

(assert (=> b!4029528 (=> (not res!1640121) (not e!2500080))))

(declare-fun lt!1431992 () List!43281)

(assert (=> b!4029528 (= res!1640121 (= lt!1431992 lt!1431989))))

(assert (=> b!4029528 (= lt!1431989 (++!11300 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43281)

(assert (=> b!4029528 (= lt!1431992 (++!11300 lt!1431997 newSuffixResult!27))))

(declare-fun b!4029529 () Bool)

(declare-fun tp!1224685 () Bool)

(assert (=> b!4029529 (= e!2500073 (and tp_is_empty!20577 tp!1224685))))

(assert (=> b!4029530 (= e!2500079 (and tp!1224680 tp!1224677))))

(assert (= (and start!379628 res!1640128) b!4029507))

(assert (= (and b!4029507 res!1640125) b!4029511))

(assert (= (and b!4029511 res!1640124) b!4029518))

(assert (= (and b!4029518 res!1640119) b!4029519))

(assert (= (and b!4029519 res!1640133) b!4029505))

(assert (= (and b!4029505 res!1640129) b!4029528))

(assert (= (and b!4029528 res!1640121) b!4029506))

(assert (= (and b!4029506 res!1640123) b!4029517))

(assert (= (and b!4029517 (not res!1640130)) b!4029526))

(assert (= (and b!4029526 (not res!1640131)) b!4029525))

(assert (= (and b!4029525 (not res!1640126)) b!4029515))

(assert (= (and b!4029515 (not res!1640120)) b!4029503))

(assert (= (and b!4029503 (not res!1640117)) b!4029516))

(assert (= (and b!4029516 (not res!1640127)) b!4029512))

(assert (= (and b!4029512 res!1640118) b!4029524))

(assert (= (and b!4029524 res!1640122) b!4029522))

(assert (= (and b!4029522 res!1640132) b!4029509))

(assert (= (and start!379628 ((_ is Cons!43157) prefix!494)) b!4029527))

(assert (= b!4029521 b!4029530))

(assert (= b!4029504 b!4029521))

(assert (= start!379628 b!4029504))

(assert (= (and start!379628 ((_ is Cons!43157) suffixResult!105)) b!4029510))

(assert (= (and start!379628 ((_ is Cons!43157) suffix!1299)) b!4029520))

(assert (= (and start!379628 ((_ is Cons!43157) newSuffix!27)) b!4029513))

(assert (= b!4029523 b!4029514))

(assert (= b!4029508 b!4029523))

(assert (= (and start!379628 ((_ is Cons!43159) rules!2999)) b!4029508))

(assert (= (and start!379628 ((_ is Cons!43157) newSuffixResult!27)) b!4029529))

(declare-fun m!4621385 () Bool)

(assert (=> b!4029507 m!4621385))

(declare-fun m!4621387 () Bool)

(assert (=> b!4029518 m!4621387))

(declare-fun m!4621389 () Bool)

(assert (=> b!4029518 m!4621389))

(declare-fun m!4621391 () Bool)

(assert (=> b!4029505 m!4621391))

(declare-fun m!4621393 () Bool)

(assert (=> b!4029505 m!4621393))

(declare-fun m!4621395 () Bool)

(assert (=> b!4029505 m!4621395))

(assert (=> b!4029505 m!4621395))

(declare-fun m!4621397 () Bool)

(assert (=> b!4029505 m!4621397))

(declare-fun m!4621399 () Bool)

(assert (=> b!4029515 m!4621399))

(declare-fun m!4621401 () Bool)

(assert (=> b!4029515 m!4621401))

(declare-fun m!4621403 () Bool)

(assert (=> b!4029515 m!4621403))

(declare-fun m!4621405 () Bool)

(assert (=> b!4029515 m!4621405))

(declare-fun m!4621407 () Bool)

(assert (=> b!4029522 m!4621407))

(declare-fun m!4621409 () Bool)

(assert (=> b!4029503 m!4621409))

(declare-fun m!4621411 () Bool)

(assert (=> b!4029503 m!4621411))

(declare-fun m!4621413 () Bool)

(assert (=> b!4029503 m!4621413))

(declare-fun m!4621415 () Bool)

(assert (=> b!4029503 m!4621415))

(declare-fun m!4621417 () Bool)

(assert (=> b!4029503 m!4621417))

(declare-fun m!4621419 () Bool)

(assert (=> b!4029503 m!4621419))

(assert (=> b!4029503 m!4621415))

(declare-fun m!4621421 () Bool)

(assert (=> b!4029503 m!4621421))

(declare-fun m!4621423 () Bool)

(assert (=> b!4029525 m!4621423))

(declare-fun m!4621425 () Bool)

(assert (=> b!4029525 m!4621425))

(declare-fun m!4621427 () Bool)

(assert (=> b!4029525 m!4621427))

(declare-fun m!4621429 () Bool)

(assert (=> b!4029525 m!4621429))

(declare-fun m!4621431 () Bool)

(assert (=> b!4029521 m!4621431))

(declare-fun m!4621433 () Bool)

(assert (=> b!4029521 m!4621433))

(declare-fun m!4621435 () Bool)

(assert (=> b!4029504 m!4621435))

(declare-fun m!4621437 () Bool)

(assert (=> b!4029523 m!4621437))

(declare-fun m!4621439 () Bool)

(assert (=> b!4029523 m!4621439))

(declare-fun m!4621441 () Bool)

(assert (=> b!4029528 m!4621441))

(declare-fun m!4621443 () Bool)

(assert (=> b!4029528 m!4621443))

(declare-fun m!4621445 () Bool)

(assert (=> b!4029516 m!4621445))

(declare-fun m!4621447 () Bool)

(assert (=> b!4029516 m!4621447))

(declare-fun m!4621449 () Bool)

(assert (=> b!4029516 m!4621449))

(declare-fun m!4621451 () Bool)

(assert (=> b!4029516 m!4621451))

(declare-fun m!4621453 () Bool)

(assert (=> b!4029517 m!4621453))

(declare-fun m!4621455 () Bool)

(assert (=> b!4029517 m!4621455))

(declare-fun m!4621457 () Bool)

(assert (=> b!4029517 m!4621457))

(declare-fun m!4621459 () Bool)

(assert (=> b!4029517 m!4621459))

(declare-fun m!4621461 () Bool)

(assert (=> b!4029511 m!4621461))

(declare-fun m!4621463 () Bool)

(assert (=> b!4029519 m!4621463))

(declare-fun m!4621465 () Bool)

(assert (=> start!379628 m!4621465))

(declare-fun m!4621467 () Bool)

(assert (=> b!4029512 m!4621467))

(declare-fun m!4621469 () Bool)

(assert (=> b!4029512 m!4621469))

(declare-fun m!4621471 () Bool)

(assert (=> b!4029506 m!4621471))

(declare-fun m!4621473 () Bool)

(assert (=> b!4029506 m!4621473))

(declare-fun m!4621475 () Bool)

(assert (=> b!4029526 m!4621475))

(declare-fun m!4621477 () Bool)

(assert (=> b!4029526 m!4621477))

(declare-fun m!4621479 () Bool)

(assert (=> b!4029526 m!4621479))

(declare-fun m!4621481 () Bool)

(assert (=> b!4029526 m!4621481))

(declare-fun m!4621483 () Bool)

(assert (=> b!4029526 m!4621483))

(check-sat (not b!4029508) b_and!309639 (not b!4029523) (not b!4029510) (not b_next!112957) (not b!4029512) (not b!4029506) (not b!4029507) (not b!4029505) b_and!309643 (not b!4029515) (not b!4029529) (not b!4029503) (not b!4029513) (not b!4029511) (not b!4029525) (not b_next!112955) (not b!4029526) (not b_next!112959) (not b!4029520) (not b!4029504) (not start!379628) (not b!4029528) (not b!4029521) (not b!4029518) (not b_next!112953) (not b!4029522) (not b!4029516) (not b!4029517) (not b!4029519) b_and!309641 (not b!4029527) b_and!309645 tp_is_empty!20577)
(check-sat b_and!309639 (not b_next!112957) b_and!309643 (not b_next!112953) b_and!309641 b_and!309645 (not b_next!112955) (not b_next!112959))
