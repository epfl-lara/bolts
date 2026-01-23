; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379616 () Bool)

(assert start!379616)

(declare-fun b!4029037 () Bool)

(declare-fun b_free!112201 () Bool)

(declare-fun b_next!112905 () Bool)

(assert (=> b!4029037 (= b_free!112201 (not b_next!112905))))

(declare-fun tp!1224452 () Bool)

(declare-fun b_and!309591 () Bool)

(assert (=> b!4029037 (= tp!1224452 b_and!309591)))

(declare-fun b_free!112203 () Bool)

(declare-fun b_next!112907 () Bool)

(assert (=> b!4029037 (= b_free!112203 (not b_next!112907))))

(declare-fun tp!1224443 () Bool)

(declare-fun b_and!309593 () Bool)

(assert (=> b!4029037 (= tp!1224443 b_and!309593)))

(declare-fun b!4029036 () Bool)

(declare-fun b_free!112205 () Bool)

(declare-fun b_next!112909 () Bool)

(assert (=> b!4029036 (= b_free!112205 (not b_next!112909))))

(declare-fun tp!1224445 () Bool)

(declare-fun b_and!309595 () Bool)

(assert (=> b!4029036 (= tp!1224445 b_and!309595)))

(declare-fun b_free!112207 () Bool)

(declare-fun b_next!112911 () Bool)

(assert (=> b!4029036 (= b_free!112207 (not b_next!112911))))

(declare-fun tp!1224451 () Bool)

(declare-fun b_and!309597 () Bool)

(assert (=> b!4029036 (= tp!1224451 b_and!309597)))

(declare-fun b!4029013 () Bool)

(declare-fun res!1639835 () Bool)

(declare-fun e!2499615 () Bool)

(assert (=> b!4029013 (=> (not res!1639835) (not e!2499615))))

(declare-datatypes ((LexerInterface!6481 0))(
  ( (LexerInterfaceExt!6478 (__x!26461 Int)) (Lexer!6479) )
))
(declare-fun thiss!21717 () LexerInterface!6481)

(declare-datatypes ((C!23780 0))(
  ( (C!23781 (val!13984 Int)) )
))
(declare-datatypes ((List!43263 0))(
  ( (Nil!43139) (Cons!43139 (h!48559 C!23780) (t!334104 List!43263)) )
))
(declare-datatypes ((IArray!26211 0))(
  ( (IArray!26212 (innerList!13163 List!43263)) )
))
(declare-datatypes ((Conc!13103 0))(
  ( (Node!13103 (left!32503 Conc!13103) (right!32833 Conc!13103) (csize!26436 Int) (cheight!13314 Int)) (Leaf!20256 (xs!16409 IArray!26211) (csize!26437 Int)) (Empty!13103) )
))
(declare-datatypes ((BalanceConc!25800 0))(
  ( (BalanceConc!25801 (c!696076 Conc!13103)) )
))
(declare-datatypes ((List!43264 0))(
  ( (Nil!43140) (Cons!43140 (h!48560 (_ BitVec 16)) (t!334105 List!43264)) )
))
(declare-datatypes ((TokenValue!7122 0))(
  ( (FloatLiteralValue!14244 (text!50299 List!43264)) (TokenValueExt!7121 (__x!26462 Int)) (Broken!35610 (value!217030 List!43264)) (Object!7245) (End!7122) (Def!7122) (Underscore!7122) (Match!7122) (Else!7122) (Error!7122) (Case!7122) (If!7122) (Extends!7122) (Abstract!7122) (Class!7122) (Val!7122) (DelimiterValue!14244 (del!7182 List!43264)) (KeywordValue!7128 (value!217031 List!43264)) (CommentValue!14244 (value!217032 List!43264)) (WhitespaceValue!14244 (value!217033 List!43264)) (IndentationValue!7122 (value!217034 List!43264)) (String!49327) (Int32!7122) (Broken!35611 (value!217035 List!43264)) (Boolean!7123) (Unit!62301) (OperatorValue!7125 (op!7182 List!43264)) (IdentifierValue!14244 (value!217036 List!43264)) (IdentifierValue!14245 (value!217037 List!43264)) (WhitespaceValue!14245 (value!217038 List!43264)) (True!14244) (False!14244) (Broken!35612 (value!217039 List!43264)) (Broken!35613 (value!217040 List!43264)) (True!14245) (RightBrace!7122) (RightBracket!7122) (Colon!7122) (Null!7122) (Comma!7122) (LeftBracket!7122) (False!14245) (LeftBrace!7122) (ImaginaryLiteralValue!7122 (text!50300 List!43264)) (StringLiteralValue!21366 (value!217041 List!43264)) (EOFValue!7122 (value!217042 List!43264)) (IdentValue!7122 (value!217043 List!43264)) (DelimiterValue!14245 (value!217044 List!43264)) (DedentValue!7122 (value!217045 List!43264)) (NewLineValue!7122 (value!217046 List!43264)) (IntegerValue!21366 (value!217047 (_ BitVec 32)) (text!50301 List!43264)) (IntegerValue!21367 (value!217048 Int) (text!50302 List!43264)) (Times!7122) (Or!7122) (Equal!7122) (Minus!7122) (Broken!35614 (value!217049 List!43264)) (And!7122) (Div!7122) (LessEqual!7122) (Mod!7122) (Concat!18919) (Not!7122) (Plus!7122) (SpaceValue!7122 (value!217050 List!43264)) (IntegerValue!21368 (value!217051 Int) (text!50303 List!43264)) (StringLiteralValue!21367 (text!50304 List!43264)) (FloatLiteralValue!14245 (text!50305 List!43264)) (BytesLiteralValue!7122 (value!217052 List!43264)) (CommentValue!14245 (value!217053 List!43264)) (StringLiteralValue!21368 (value!217054 List!43264)) (ErrorTokenValue!7122 (msg!7183 List!43264)) )
))
(declare-datatypes ((Regex!11797 0))(
  ( (ElementMatch!11797 (c!696077 C!23780)) (Concat!18920 (regOne!24106 Regex!11797) (regTwo!24106 Regex!11797)) (EmptyExpr!11797) (Star!11797 (reg!12126 Regex!11797)) (EmptyLang!11797) (Union!11797 (regOne!24107 Regex!11797) (regTwo!24107 Regex!11797)) )
))
(declare-datatypes ((String!49328 0))(
  ( (String!49329 (value!217055 String)) )
))
(declare-datatypes ((TokenValueInjection!13672 0))(
  ( (TokenValueInjection!13673 (toValue!9416 Int) (toChars!9275 Int)) )
))
(declare-datatypes ((Rule!13584 0))(
  ( (Rule!13585 (regex!6892 Regex!11797) (tag!7752 String!49328) (isSeparator!6892 Bool) (transformation!6892 TokenValueInjection!13672)) )
))
(declare-datatypes ((List!43265 0))(
  ( (Nil!43141) (Cons!43141 (h!48561 Rule!13584) (t!334106 List!43265)) )
))
(declare-fun rules!2999 () List!43265)

(declare-fun rulesInvariant!5824 (LexerInterface!6481 List!43265) Bool)

(assert (=> b!4029013 (= res!1639835 (rulesInvariant!5824 thiss!21717 rules!2999))))

(declare-fun b!4029014 () Bool)

(declare-fun e!2499628 () Bool)

(declare-fun e!2499614 () Bool)

(declare-fun tp!1224448 () Bool)

(assert (=> b!4029014 (= e!2499628 (and e!2499614 tp!1224448))))

(declare-fun e!2499617 () Bool)

(declare-datatypes ((Token!12922 0))(
  ( (Token!12923 (value!217056 TokenValue!7122) (rule!9952 Rule!13584) (size!32245 Int) (originalCharacters!7492 List!43263)) )
))
(declare-fun token!484 () Token!12922)

(declare-fun b!4029015 () Bool)

(declare-fun e!2499619 () Bool)

(declare-fun tp!1224447 () Bool)

(declare-fun inv!57633 (String!49328) Bool)

(declare-fun inv!57636 (TokenValueInjection!13672) Bool)

(assert (=> b!4029015 (= e!2499617 (and tp!1224447 (inv!57633 (tag!7752 (rule!9952 token!484))) (inv!57636 (transformation!6892 (rule!9952 token!484))) e!2499619))))

(declare-fun b!4029016 () Bool)

(declare-fun e!2499630 () Bool)

(declare-fun tp_is_empty!20565 () Bool)

(declare-fun tp!1224444 () Bool)

(assert (=> b!4029016 (= e!2499630 (and tp_is_empty!20565 tp!1224444))))

(declare-fun b!4029017 () Bool)

(declare-fun e!2499616 () Bool)

(declare-fun tp!1224454 () Bool)

(assert (=> b!4029017 (= e!2499616 (and tp_is_empty!20565 tp!1224454))))

(declare-fun b!4029018 () Bool)

(declare-fun e!2499620 () Bool)

(declare-fun e!2499632 () Bool)

(assert (=> b!4029018 (= e!2499620 (not e!2499632))))

(declare-fun res!1639828 () Bool)

(assert (=> b!4029018 (=> res!1639828 e!2499632)))

(declare-fun lt!1431516 () List!43263)

(declare-fun lt!1431519 () List!43263)

(assert (=> b!4029018 (= res!1639828 (not (= lt!1431516 lt!1431519)))))

(declare-fun lt!1431514 () List!43263)

(declare-fun suffixResult!105 () List!43263)

(declare-fun ++!11294 (List!43263 List!43263) List!43263)

(assert (=> b!4029018 (= lt!1431516 (++!11294 lt!1431514 suffixResult!105))))

(declare-datatypes ((Unit!62302 0))(
  ( (Unit!62303) )
))
(declare-fun lt!1431521 () Unit!62302)

(declare-fun lemmaInv!1101 (TokenValueInjection!13672) Unit!62302)

(assert (=> b!4029018 (= lt!1431521 (lemmaInv!1101 (transformation!6892 (rule!9952 token!484))))))

(declare-fun ruleValid!2822 (LexerInterface!6481 Rule!13584) Bool)

(assert (=> b!4029018 (ruleValid!2822 thiss!21717 (rule!9952 token!484))))

(declare-fun lt!1431507 () Unit!62302)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1892 (LexerInterface!6481 Rule!13584 List!43265) Unit!62302)

(assert (=> b!4029018 (= lt!1431507 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1892 thiss!21717 (rule!9952 token!484) rules!2999))))

(declare-fun tp!1224453 () Bool)

(declare-fun e!2499618 () Bool)

(declare-fun b!4029020 () Bool)

(declare-fun inv!21 (TokenValue!7122) Bool)

(assert (=> b!4029020 (= e!2499618 (and (inv!21 (value!217056 token!484)) e!2499617 tp!1224453))))

(declare-fun b!4029021 () Bool)

(declare-fun e!2499612 () Bool)

(declare-fun size!32246 (List!43263) Int)

(assert (=> b!4029021 (= e!2499612 (= (size!32245 token!484) (size!32246 (originalCharacters!7492 token!484))))))

(declare-fun e!2499613 () Bool)

(assert (=> b!4029021 e!2499613))

(declare-fun res!1639831 () Bool)

(assert (=> b!4029021 (=> (not res!1639831) (not e!2499613))))

(declare-fun isPrefix!3979 (List!43263 List!43263) Bool)

(assert (=> b!4029021 (= res!1639831 (isPrefix!3979 lt!1431519 lt!1431519))))

(declare-fun lt!1431511 () Unit!62302)

(declare-fun lemmaIsPrefixRefl!2546 (List!43263 List!43263) Unit!62302)

(assert (=> b!4029021 (= lt!1431511 (lemmaIsPrefixRefl!2546 lt!1431519 lt!1431519))))

(declare-fun b!4029022 () Bool)

(declare-fun e!2499624 () Bool)

(declare-fun tp!1224449 () Bool)

(assert (=> b!4029022 (= e!2499624 (and tp_is_empty!20565 tp!1224449))))

(declare-fun b!4029023 () Bool)

(declare-fun e!2499622 () Bool)

(assert (=> b!4029023 (= e!2499622 e!2499612)))

(declare-fun res!1639837 () Bool)

(assert (=> b!4029023 (=> res!1639837 e!2499612)))

(declare-fun matchR!5750 (Regex!11797 List!43263) Bool)

(assert (=> b!4029023 (= res!1639837 (not (matchR!5750 (regex!6892 (rule!9952 token!484)) lt!1431514)))))

(declare-fun lt!1431504 () List!43263)

(assert (=> b!4029023 (isPrefix!3979 lt!1431514 lt!1431504)))

(declare-fun prefix!494 () List!43263)

(declare-fun newSuffix!27 () List!43263)

(declare-fun lt!1431523 () Unit!62302)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!772 (List!43263 List!43263 List!43263) Unit!62302)

(assert (=> b!4029023 (= lt!1431523 (lemmaPrefixStaysPrefixWhenAddingToSuffix!772 lt!1431514 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43263)

(declare-fun lt!1431518 () Unit!62302)

(assert (=> b!4029023 (= lt!1431518 (lemmaPrefixStaysPrefixWhenAddingToSuffix!772 lt!1431514 prefix!494 suffix!1299))))

(declare-fun b!4029024 () Bool)

(declare-fun e!2499627 () Bool)

(assert (=> b!4029024 (= e!2499627 e!2499620)))

(declare-fun res!1639839 () Bool)

(assert (=> b!4029024 (=> (not res!1639839) (not e!2499620))))

(declare-datatypes ((tuple2!42238 0))(
  ( (tuple2!42239 (_1!24253 Token!12922) (_2!24253 List!43263)) )
))
(declare-datatypes ((Option!9306 0))(
  ( (None!9305) (Some!9305 (v!39693 tuple2!42238)) )
))
(declare-fun lt!1431525 () Option!9306)

(declare-fun maxPrefix!3779 (LexerInterface!6481 List!43265 List!43263) Option!9306)

(assert (=> b!4029024 (= res!1639839 (= (maxPrefix!3779 thiss!21717 rules!2999 lt!1431519) lt!1431525))))

(assert (=> b!4029024 (= lt!1431525 (Some!9305 (tuple2!42239 token!484 suffixResult!105)))))

(assert (=> b!4029024 (= lt!1431519 (++!11294 prefix!494 suffix!1299))))

(declare-fun e!2499633 () Bool)

(declare-fun tp!1224450 () Bool)

(declare-fun b!4029025 () Bool)

(assert (=> b!4029025 (= e!2499614 (and tp!1224450 (inv!57633 (tag!7752 (h!48561 rules!2999))) (inv!57636 (transformation!6892 (h!48561 rules!2999))) e!2499633))))

(declare-fun b!4029026 () Bool)

(declare-fun e!2499610 () Bool)

(assert (=> b!4029026 (= e!2499632 e!2499610)))

(declare-fun res!1639827 () Bool)

(assert (=> b!4029026 (=> res!1639827 e!2499610)))

(assert (=> b!4029026 (= res!1639827 (not (isPrefix!3979 lt!1431514 lt!1431519)))))

(assert (=> b!4029026 (isPrefix!3979 prefix!494 lt!1431519)))

(declare-fun lt!1431505 () Unit!62302)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2814 (List!43263 List!43263) Unit!62302)

(assert (=> b!4029026 (= lt!1431505 (lemmaConcatTwoListThenFirstIsPrefix!2814 prefix!494 suffix!1299))))

(assert (=> b!4029026 (isPrefix!3979 lt!1431514 lt!1431516)))

(declare-fun lt!1431510 () Unit!62302)

(assert (=> b!4029026 (= lt!1431510 (lemmaConcatTwoListThenFirstIsPrefix!2814 lt!1431514 suffixResult!105))))

(declare-fun b!4029027 () Bool)

(declare-fun res!1639826 () Bool)

(assert (=> b!4029027 (=> (not res!1639826) (not e!2499615))))

(assert (=> b!4029027 (= res!1639826 (isPrefix!3979 newSuffix!27 suffix!1299))))

(declare-fun b!4029028 () Bool)

(declare-fun e!2499625 () Bool)

(declare-fun e!2499621 () Bool)

(assert (=> b!4029028 (= e!2499625 e!2499621)))

(declare-fun res!1639830 () Bool)

(assert (=> b!4029028 (=> res!1639830 e!2499621)))

(declare-fun lt!1431515 () List!43263)

(declare-fun lt!1431526 () List!43263)

(assert (=> b!4029028 (= res!1639830 (or (not (= lt!1431519 lt!1431526)) (not (= lt!1431519 lt!1431515))))))

(assert (=> b!4029028 (= lt!1431526 lt!1431515)))

(declare-fun lt!1431520 () List!43263)

(assert (=> b!4029028 (= lt!1431515 (++!11294 lt!1431514 lt!1431520))))

(declare-fun lt!1431503 () List!43263)

(assert (=> b!4029028 (= lt!1431526 (++!11294 lt!1431503 suffix!1299))))

(declare-fun lt!1431506 () List!43263)

(assert (=> b!4029028 (= lt!1431520 (++!11294 lt!1431506 suffix!1299))))

(declare-fun lt!1431517 () Unit!62302)

(declare-fun lemmaConcatAssociativity!2596 (List!43263 List!43263 List!43263) Unit!62302)

(assert (=> b!4029028 (= lt!1431517 (lemmaConcatAssociativity!2596 lt!1431514 lt!1431506 suffix!1299))))

(declare-fun b!4029029 () Bool)

(declare-fun res!1639838 () Bool)

(assert (=> b!4029029 (=> (not res!1639838) (not e!2499615))))

(assert (=> b!4029029 (= res!1639838 (>= (size!32246 suffix!1299) (size!32246 newSuffix!27)))))

(declare-fun b!4029019 () Bool)

(declare-fun e!2499629 () Bool)

(declare-fun tp!1224446 () Bool)

(assert (=> b!4029019 (= e!2499629 (and tp_is_empty!20565 tp!1224446))))

(declare-fun res!1639832 () Bool)

(assert (=> start!379616 (=> (not res!1639832) (not e!2499615))))

(get-info :version)

(assert (=> start!379616 (= res!1639832 ((_ is Lexer!6479) thiss!21717))))

(assert (=> start!379616 e!2499615))

(declare-fun e!2499611 () Bool)

(assert (=> start!379616 e!2499611))

(declare-fun inv!57637 (Token!12922) Bool)

(assert (=> start!379616 (and (inv!57637 token!484) e!2499618)))

(assert (=> start!379616 e!2499629))

(assert (=> start!379616 e!2499624))

(assert (=> start!379616 e!2499630))

(assert (=> start!379616 true))

(assert (=> start!379616 e!2499628))

(assert (=> start!379616 e!2499616))

(declare-fun b!4029030 () Bool)

(assert (=> b!4029030 (= e!2499621 e!2499622)))

(declare-fun res!1639834 () Bool)

(assert (=> b!4029030 (=> res!1639834 e!2499622)))

(declare-fun lt!1431501 () Option!9306)

(assert (=> b!4029030 (= res!1639834 (not (= lt!1431501 lt!1431525)))))

(declare-fun lt!1431502 () TokenValue!7122)

(declare-fun lt!1431513 () Int)

(assert (=> b!4029030 (= lt!1431501 (Some!9305 (tuple2!42239 (Token!12923 lt!1431502 (rule!9952 token!484) lt!1431513 lt!1431514) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2791 (LexerInterface!6481 Rule!13584 List!43263) Option!9306)

(assert (=> b!4029030 (= lt!1431501 (maxPrefixOneRule!2791 thiss!21717 (rule!9952 token!484) lt!1431519))))

(declare-fun apply!10081 (TokenValueInjection!13672 BalanceConc!25800) TokenValue!7122)

(declare-fun seqFromList!5109 (List!43263) BalanceConc!25800)

(assert (=> b!4029030 (= lt!1431502 (apply!10081 (transformation!6892 (rule!9952 token!484)) (seqFromList!5109 lt!1431514)))))

(declare-fun lt!1431522 () Unit!62302)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1597 (LexerInterface!6481 List!43265 List!43263 List!43263 List!43263 Rule!13584) Unit!62302)

(assert (=> b!4029030 (= lt!1431522 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1597 thiss!21717 rules!2999 lt!1431514 lt!1431519 suffixResult!105 (rule!9952 token!484)))))

(assert (=> b!4029030 (= lt!1431520 suffixResult!105)))

(declare-fun lt!1431524 () Unit!62302)

(declare-fun lemmaSamePrefixThenSameSuffix!2140 (List!43263 List!43263 List!43263 List!43263 List!43263) Unit!62302)

(assert (=> b!4029030 (= lt!1431524 (lemmaSamePrefixThenSameSuffix!2140 lt!1431514 lt!1431520 lt!1431514 suffixResult!105 lt!1431519))))

(assert (=> b!4029030 (isPrefix!3979 lt!1431514 lt!1431515)))

(declare-fun lt!1431527 () Unit!62302)

(assert (=> b!4029030 (= lt!1431527 (lemmaConcatTwoListThenFirstIsPrefix!2814 lt!1431514 lt!1431520))))

(declare-fun b!4029031 () Bool)

(assert (=> b!4029031 (= e!2499610 e!2499625)))

(declare-fun res!1639833 () Bool)

(assert (=> b!4029031 (=> res!1639833 e!2499625)))

(assert (=> b!4029031 (= res!1639833 (not (= lt!1431503 prefix!494)))))

(assert (=> b!4029031 (= lt!1431503 (++!11294 lt!1431514 lt!1431506))))

(declare-fun getSuffix!2396 (List!43263 List!43263) List!43263)

(assert (=> b!4029031 (= lt!1431506 (getSuffix!2396 prefix!494 lt!1431514))))

(assert (=> b!4029031 (isPrefix!3979 lt!1431514 prefix!494)))

(declare-fun lt!1431509 () Unit!62302)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!543 (List!43263 List!43263 List!43263) Unit!62302)

(assert (=> b!4029031 (= lt!1431509 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!543 prefix!494 lt!1431514 lt!1431519))))

(declare-fun b!4029032 () Bool)

(assert (=> b!4029032 (= e!2499613 (= (value!217056 token!484) lt!1431502))))

(declare-fun b!4029033 () Bool)

(declare-fun tp!1224442 () Bool)

(assert (=> b!4029033 (= e!2499611 (and tp_is_empty!20565 tp!1224442))))

(declare-fun b!4029034 () Bool)

(declare-fun e!2499623 () Bool)

(assert (=> b!4029034 (= e!2499615 e!2499623)))

(declare-fun res!1639836 () Bool)

(assert (=> b!4029034 (=> (not res!1639836) (not e!2499623))))

(declare-fun lt!1431512 () Int)

(assert (=> b!4029034 (= res!1639836 (>= lt!1431512 lt!1431513))))

(assert (=> b!4029034 (= lt!1431513 (size!32246 lt!1431514))))

(assert (=> b!4029034 (= lt!1431512 (size!32246 prefix!494))))

(declare-fun list!16050 (BalanceConc!25800) List!43263)

(declare-fun charsOf!4708 (Token!12922) BalanceConc!25800)

(assert (=> b!4029034 (= lt!1431514 (list!16050 (charsOf!4708 token!484)))))

(declare-fun b!4029035 () Bool)

(assert (=> b!4029035 (= e!2499623 e!2499627)))

(declare-fun res!1639825 () Bool)

(assert (=> b!4029035 (=> (not res!1639825) (not e!2499627))))

(declare-fun lt!1431508 () List!43263)

(assert (=> b!4029035 (= res!1639825 (= lt!1431508 lt!1431504))))

(assert (=> b!4029035 (= lt!1431504 (++!11294 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43263)

(assert (=> b!4029035 (= lt!1431508 (++!11294 lt!1431514 newSuffixResult!27))))

(assert (=> b!4029036 (= e!2499619 (and tp!1224445 tp!1224451))))

(assert (=> b!4029037 (= e!2499633 (and tp!1224452 tp!1224443))))

(declare-fun b!4029038 () Bool)

(declare-fun res!1639829 () Bool)

(assert (=> b!4029038 (=> (not res!1639829) (not e!2499615))))

(declare-fun isEmpty!25753 (List!43265) Bool)

(assert (=> b!4029038 (= res!1639829 (not (isEmpty!25753 rules!2999)))))

(assert (= (and start!379616 res!1639832) b!4029038))

(assert (= (and b!4029038 res!1639829) b!4029013))

(assert (= (and b!4029013 res!1639835) b!4029029))

(assert (= (and b!4029029 res!1639838) b!4029027))

(assert (= (and b!4029027 res!1639826) b!4029034))

(assert (= (and b!4029034 res!1639836) b!4029035))

(assert (= (and b!4029035 res!1639825) b!4029024))

(assert (= (and b!4029024 res!1639839) b!4029018))

(assert (= (and b!4029018 (not res!1639828)) b!4029026))

(assert (= (and b!4029026 (not res!1639827)) b!4029031))

(assert (= (and b!4029031 (not res!1639833)) b!4029028))

(assert (= (and b!4029028 (not res!1639830)) b!4029030))

(assert (= (and b!4029030 (not res!1639834)) b!4029023))

(assert (= (and b!4029023 (not res!1639837)) b!4029021))

(assert (= (and b!4029021 res!1639831) b!4029032))

(assert (= (and start!379616 ((_ is Cons!43139) prefix!494)) b!4029033))

(assert (= b!4029015 b!4029036))

(assert (= b!4029020 b!4029015))

(assert (= start!379616 b!4029020))

(assert (= (and start!379616 ((_ is Cons!43139) suffixResult!105)) b!4029019))

(assert (= (and start!379616 ((_ is Cons!43139) suffix!1299)) b!4029022))

(assert (= (and start!379616 ((_ is Cons!43139) newSuffix!27)) b!4029016))

(assert (= b!4029025 b!4029037))

(assert (= b!4029014 b!4029025))

(assert (= (and start!379616 ((_ is Cons!43141) rules!2999)) b!4029014))

(assert (= (and start!379616 ((_ is Cons!43139) newSuffixResult!27)) b!4029017))

(declare-fun m!4620785 () Bool)

(assert (=> b!4029028 m!4620785))

(declare-fun m!4620787 () Bool)

(assert (=> b!4029028 m!4620787))

(declare-fun m!4620789 () Bool)

(assert (=> b!4029028 m!4620789))

(declare-fun m!4620791 () Bool)

(assert (=> b!4029028 m!4620791))

(declare-fun m!4620793 () Bool)

(assert (=> b!4029034 m!4620793))

(declare-fun m!4620795 () Bool)

(assert (=> b!4029034 m!4620795))

(declare-fun m!4620797 () Bool)

(assert (=> b!4029034 m!4620797))

(assert (=> b!4029034 m!4620797))

(declare-fun m!4620799 () Bool)

(assert (=> b!4029034 m!4620799))

(declare-fun m!4620801 () Bool)

(assert (=> b!4029023 m!4620801))

(declare-fun m!4620803 () Bool)

(assert (=> b!4029023 m!4620803))

(declare-fun m!4620805 () Bool)

(assert (=> b!4029023 m!4620805))

(declare-fun m!4620807 () Bool)

(assert (=> b!4029023 m!4620807))

(declare-fun m!4620809 () Bool)

(assert (=> b!4029015 m!4620809))

(declare-fun m!4620811 () Bool)

(assert (=> b!4029015 m!4620811))

(declare-fun m!4620813 () Bool)

(assert (=> b!4029027 m!4620813))

(declare-fun m!4620815 () Bool)

(assert (=> start!379616 m!4620815))

(declare-fun m!4620817 () Bool)

(assert (=> b!4029021 m!4620817))

(declare-fun m!4620819 () Bool)

(assert (=> b!4029021 m!4620819))

(declare-fun m!4620821 () Bool)

(assert (=> b!4029021 m!4620821))

(declare-fun m!4620823 () Bool)

(assert (=> b!4029024 m!4620823))

(declare-fun m!4620825 () Bool)

(assert (=> b!4029024 m!4620825))

(declare-fun m!4620827 () Bool)

(assert (=> b!4029013 m!4620827))

(declare-fun m!4620829 () Bool)

(assert (=> b!4029030 m!4620829))

(declare-fun m!4620831 () Bool)

(assert (=> b!4029030 m!4620831))

(declare-fun m!4620833 () Bool)

(assert (=> b!4029030 m!4620833))

(declare-fun m!4620835 () Bool)

(assert (=> b!4029030 m!4620835))

(declare-fun m!4620837 () Bool)

(assert (=> b!4029030 m!4620837))

(declare-fun m!4620839 () Bool)

(assert (=> b!4029030 m!4620839))

(assert (=> b!4029030 m!4620837))

(declare-fun m!4620841 () Bool)

(assert (=> b!4029030 m!4620841))

(declare-fun m!4620843 () Bool)

(assert (=> b!4029025 m!4620843))

(declare-fun m!4620845 () Bool)

(assert (=> b!4029025 m!4620845))

(declare-fun m!4620847 () Bool)

(assert (=> b!4029031 m!4620847))

(declare-fun m!4620849 () Bool)

(assert (=> b!4029031 m!4620849))

(declare-fun m!4620851 () Bool)

(assert (=> b!4029031 m!4620851))

(declare-fun m!4620853 () Bool)

(assert (=> b!4029031 m!4620853))

(declare-fun m!4620855 () Bool)

(assert (=> b!4029035 m!4620855))

(declare-fun m!4620857 () Bool)

(assert (=> b!4029035 m!4620857))

(declare-fun m!4620859 () Bool)

(assert (=> b!4029018 m!4620859))

(declare-fun m!4620861 () Bool)

(assert (=> b!4029018 m!4620861))

(declare-fun m!4620863 () Bool)

(assert (=> b!4029018 m!4620863))

(declare-fun m!4620865 () Bool)

(assert (=> b!4029018 m!4620865))

(declare-fun m!4620867 () Bool)

(assert (=> b!4029020 m!4620867))

(declare-fun m!4620869 () Bool)

(assert (=> b!4029038 m!4620869))

(declare-fun m!4620871 () Bool)

(assert (=> b!4029026 m!4620871))

(declare-fun m!4620873 () Bool)

(assert (=> b!4029026 m!4620873))

(declare-fun m!4620875 () Bool)

(assert (=> b!4029026 m!4620875))

(declare-fun m!4620877 () Bool)

(assert (=> b!4029026 m!4620877))

(declare-fun m!4620879 () Bool)

(assert (=> b!4029026 m!4620879))

(declare-fun m!4620881 () Bool)

(assert (=> b!4029029 m!4620881))

(declare-fun m!4620883 () Bool)

(assert (=> b!4029029 m!4620883))

(check-sat (not b!4029024) (not b!4029020) (not b!4029027) b_and!309593 b_and!309595 (not b!4029025) (not b!4029013) (not b!4029029) b_and!309597 (not b!4029035) (not b_next!112911) (not b!4029023) (not b!4029026) (not b!4029014) (not b!4029022) (not b!4029038) (not b_next!112905) (not b!4029021) (not b!4029031) tp_is_empty!20565 (not b!4029016) (not start!379616) (not b!4029034) (not b!4029015) (not b_next!112907) (not b_next!112909) b_and!309591 (not b!4029018) (not b!4029033) (not b!4029019) (not b!4029030) (not b!4029028) (not b!4029017))
(check-sat (not b_next!112911) (not b_next!112905) b_and!309593 b_and!309595 (not b_next!112907) b_and!309597 (not b_next!112909) b_and!309591)
