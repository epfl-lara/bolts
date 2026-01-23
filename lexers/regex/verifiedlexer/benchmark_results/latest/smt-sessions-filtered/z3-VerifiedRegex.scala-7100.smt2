; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376504 () Bool)

(assert start!376504)

(declare-fun b!4000656 () Bool)

(declare-fun b_free!111153 () Bool)

(declare-fun b_next!111857 () Bool)

(assert (=> b!4000656 (= b_free!111153 (not b_next!111857))))

(declare-fun tp!1217416 () Bool)

(declare-fun b_and!307183 () Bool)

(assert (=> b!4000656 (= tp!1217416 b_and!307183)))

(declare-fun b_free!111155 () Bool)

(declare-fun b_next!111859 () Bool)

(assert (=> b!4000656 (= b_free!111155 (not b_next!111859))))

(declare-fun tp!1217412 () Bool)

(declare-fun b_and!307185 () Bool)

(assert (=> b!4000656 (= tp!1217412 b_and!307185)))

(declare-fun b!4000643 () Bool)

(declare-fun b_free!111157 () Bool)

(declare-fun b_next!111861 () Bool)

(assert (=> b!4000643 (= b_free!111157 (not b_next!111861))))

(declare-fun tp!1217420 () Bool)

(declare-fun b_and!307187 () Bool)

(assert (=> b!4000643 (= tp!1217420 b_and!307187)))

(declare-fun b_free!111159 () Bool)

(declare-fun b_next!111863 () Bool)

(assert (=> b!4000643 (= b_free!111159 (not b_next!111863))))

(declare-fun tp!1217408 () Bool)

(declare-fun b_and!307189 () Bool)

(assert (=> b!4000643 (= tp!1217408 b_and!307189)))

(declare-fun b!4000631 () Bool)

(declare-fun e!2480599 () Bool)

(declare-fun e!2480595 () Bool)

(assert (=> b!4000631 (= e!2480599 e!2480595)))

(declare-fun res!1625421 () Bool)

(assert (=> b!4000631 (=> res!1625421 e!2480595)))

(declare-datatypes ((C!23572 0))(
  ( (C!23573 (val!13880 Int)) )
))
(declare-datatypes ((List!42916 0))(
  ( (Nil!42792) (Cons!42792 (h!48212 C!23572) (t!332195 List!42916)) )
))
(declare-fun lt!1414676 () List!42916)

(declare-fun lt!1414655 () List!42916)

(assert (=> b!4000631 (= res!1625421 (not (= lt!1414676 lt!1414655)))))

(declare-fun lt!1414647 () List!42916)

(declare-fun lt!1414669 () List!42916)

(declare-fun ++!11190 (List!42916 List!42916) List!42916)

(assert (=> b!4000631 (= lt!1414676 (++!11190 lt!1414647 lt!1414669))))

(declare-fun getSuffix!2306 (List!42916 List!42916) List!42916)

(assert (=> b!4000631 (= lt!1414669 (getSuffix!2306 lt!1414655 lt!1414647))))

(declare-fun e!2480609 () Bool)

(assert (=> b!4000631 e!2480609))

(declare-fun res!1625424 () Bool)

(assert (=> b!4000631 (=> (not res!1625424) (not e!2480609))))

(declare-fun isPrefix!3875 (List!42916 List!42916) Bool)

(assert (=> b!4000631 (= res!1625424 (isPrefix!3875 lt!1414655 lt!1414655))))

(declare-datatypes ((Unit!61781 0))(
  ( (Unit!61782) )
))
(declare-fun lt!1414670 () Unit!61781)

(declare-fun lemmaIsPrefixRefl!2467 (List!42916 List!42916) Unit!61781)

(assert (=> b!4000631 (= lt!1414670 (lemmaIsPrefixRefl!2467 lt!1414655 lt!1414655))))

(declare-fun b!4000632 () Bool)

(declare-fun res!1625433 () Bool)

(assert (=> b!4000632 (=> (not res!1625433) (not e!2480609))))

(declare-datatypes ((IArray!26003 0))(
  ( (IArray!26004 (innerList!13059 List!42916)) )
))
(declare-datatypes ((Conc!12999 0))(
  ( (Node!12999 (left!32307 Conc!12999) (right!32637 Conc!12999) (csize!26228 Int) (cheight!13210 Int)) (Leaf!20100 (xs!16305 IArray!26003) (csize!26229 Int)) (Empty!12999) )
))
(declare-datatypes ((BalanceConc!25592 0))(
  ( (BalanceConc!25593 (c!691968 Conc!12999)) )
))
(declare-datatypes ((List!42917 0))(
  ( (Nil!42793) (Cons!42793 (h!48213 (_ BitVec 16)) (t!332196 List!42917)) )
))
(declare-datatypes ((TokenValue!7018 0))(
  ( (FloatLiteralValue!14036 (text!49571 List!42917)) (TokenValueExt!7017 (__x!26253 Int)) (Broken!35090 (value!214066 List!42917)) (Object!7141) (End!7018) (Def!7018) (Underscore!7018) (Match!7018) (Else!7018) (Error!7018) (Case!7018) (If!7018) (Extends!7018) (Abstract!7018) (Class!7018) (Val!7018) (DelimiterValue!14036 (del!7078 List!42917)) (KeywordValue!7024 (value!214067 List!42917)) (CommentValue!14036 (value!214068 List!42917)) (WhitespaceValue!14036 (value!214069 List!42917)) (IndentationValue!7018 (value!214070 List!42917)) (String!48807) (Int32!7018) (Broken!35091 (value!214071 List!42917)) (Boolean!7019) (Unit!61783) (OperatorValue!7021 (op!7078 List!42917)) (IdentifierValue!14036 (value!214072 List!42917)) (IdentifierValue!14037 (value!214073 List!42917)) (WhitespaceValue!14037 (value!214074 List!42917)) (True!14036) (False!14036) (Broken!35092 (value!214075 List!42917)) (Broken!35093 (value!214076 List!42917)) (True!14037) (RightBrace!7018) (RightBracket!7018) (Colon!7018) (Null!7018) (Comma!7018) (LeftBracket!7018) (False!14037) (LeftBrace!7018) (ImaginaryLiteralValue!7018 (text!49572 List!42917)) (StringLiteralValue!21054 (value!214077 List!42917)) (EOFValue!7018 (value!214078 List!42917)) (IdentValue!7018 (value!214079 List!42917)) (DelimiterValue!14037 (value!214080 List!42917)) (DedentValue!7018 (value!214081 List!42917)) (NewLineValue!7018 (value!214082 List!42917)) (IntegerValue!21054 (value!214083 (_ BitVec 32)) (text!49573 List!42917)) (IntegerValue!21055 (value!214084 Int) (text!49574 List!42917)) (Times!7018) (Or!7018) (Equal!7018) (Minus!7018) (Broken!35094 (value!214085 List!42917)) (And!7018) (Div!7018) (LessEqual!7018) (Mod!7018) (Concat!18711) (Not!7018) (Plus!7018) (SpaceValue!7018 (value!214086 List!42917)) (IntegerValue!21056 (value!214087 Int) (text!49575 List!42917)) (StringLiteralValue!21055 (text!49576 List!42917)) (FloatLiteralValue!14037 (text!49577 List!42917)) (BytesLiteralValue!7018 (value!214088 List!42917)) (CommentValue!14037 (value!214089 List!42917)) (StringLiteralValue!21056 (value!214090 List!42917)) (ErrorTokenValue!7018 (msg!7079 List!42917)) )
))
(declare-datatypes ((Regex!11693 0))(
  ( (ElementMatch!11693 (c!691969 C!23572)) (Concat!18712 (regOne!23898 Regex!11693) (regTwo!23898 Regex!11693)) (EmptyExpr!11693) (Star!11693 (reg!12022 Regex!11693)) (EmptyLang!11693) (Union!11693 (regOne!23899 Regex!11693) (regTwo!23899 Regex!11693)) )
))
(declare-datatypes ((String!48808 0))(
  ( (String!48809 (value!214091 String)) )
))
(declare-datatypes ((TokenValueInjection!13464 0))(
  ( (TokenValueInjection!13465 (toValue!9276 Int) (toChars!9135 Int)) )
))
(declare-datatypes ((Rule!13376 0))(
  ( (Rule!13377 (regex!6788 Regex!11693) (tag!7648 String!48808) (isSeparator!6788 Bool) (transformation!6788 TokenValueInjection!13464)) )
))
(declare-datatypes ((Token!12714 0))(
  ( (Token!12715 (value!214092 TokenValue!7018) (rule!9820 Rule!13376) (size!31999 Int) (originalCharacters!7388 List!42916)) )
))
(declare-fun token!484 () Token!12714)

(declare-fun lt!1414657 () TokenValue!7018)

(assert (=> b!4000632 (= res!1625433 (= (value!214092 token!484) lt!1414657))))

(declare-fun b!4000633 () Bool)

(declare-fun res!1625425 () Bool)

(declare-fun e!2480606 () Bool)

(assert (=> b!4000633 (=> (not res!1625425) (not e!2480606))))

(declare-fun suffix!1299 () List!42916)

(declare-fun newSuffix!27 () List!42916)

(declare-fun size!32000 (List!42916) Int)

(assert (=> b!4000633 (= res!1625425 (>= (size!32000 suffix!1299) (size!32000 newSuffix!27)))))

(declare-fun b!4000634 () Bool)

(declare-fun e!2480594 () Bool)

(declare-fun e!2480592 () Bool)

(assert (=> b!4000634 (= e!2480594 e!2480592)))

(declare-fun res!1625429 () Bool)

(assert (=> b!4000634 (=> (not res!1625429) (not e!2480592))))

(declare-fun lt!1414672 () List!42916)

(declare-fun lt!1414656 () List!42916)

(assert (=> b!4000634 (= res!1625429 (= lt!1414672 lt!1414656))))

(declare-fun prefix!494 () List!42916)

(assert (=> b!4000634 (= lt!1414656 (++!11190 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42916)

(assert (=> b!4000634 (= lt!1414672 (++!11190 lt!1414647 newSuffixResult!27))))

(declare-fun b!4000635 () Bool)

(declare-fun res!1625422 () Bool)

(assert (=> b!4000635 (=> (not res!1625422) (not e!2480606))))

(declare-datatypes ((LexerInterface!6377 0))(
  ( (LexerInterfaceExt!6374 (__x!26254 Int)) (Lexer!6375) )
))
(declare-fun thiss!21717 () LexerInterface!6377)

(declare-datatypes ((List!42918 0))(
  ( (Nil!42794) (Cons!42794 (h!48214 Rule!13376) (t!332197 List!42918)) )
))
(declare-fun rules!2999 () List!42918)

(declare-fun rulesInvariant!5720 (LexerInterface!6377 List!42918) Bool)

(assert (=> b!4000635 (= res!1625422 (rulesInvariant!5720 thiss!21717 rules!2999))))

(declare-fun b!4000636 () Bool)

(declare-fun e!2480616 () Bool)

(declare-fun e!2480608 () Bool)

(declare-fun tp!1217413 () Bool)

(assert (=> b!4000636 (= e!2480616 (and e!2480608 tp!1217413))))

(declare-fun b!4000637 () Bool)

(declare-fun e!2480593 () Bool)

(declare-fun tp_is_empty!20357 () Bool)

(declare-fun tp!1217410 () Bool)

(assert (=> b!4000637 (= e!2480593 (and tp_is_empty!20357 tp!1217410))))

(declare-fun b!4000638 () Bool)

(declare-fun e!2480590 () Bool)

(assert (=> b!4000638 (= e!2480590 true)))

(declare-datatypes ((tuple2!41974 0))(
  ( (tuple2!41975 (_1!24121 Token!12714) (_2!24121 List!42916)) )
))
(declare-datatypes ((Option!9202 0))(
  ( (None!9201) (Some!9201 (v!39561 tuple2!41974)) )
))
(declare-fun isEmpty!25573 (Option!9202) Bool)

(declare-fun maxPrefixOneRule!2709 (LexerInterface!6377 Rule!13376 List!42916) Option!9202)

(assert (=> b!4000638 (isEmpty!25573 (maxPrefixOneRule!2709 thiss!21717 (rule!9820 token!484) lt!1414656))))

(declare-fun lt!1414652 () Unit!61781)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!596 (LexerInterface!6377 Rule!13376 List!42918 List!42916) Unit!61781)

(assert (=> b!4000638 (= lt!1414652 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!596 thiss!21717 (rule!9820 token!484) rules!2999 lt!1414656))))

(declare-fun res!1625418 () Bool)

(assert (=> start!376504 (=> (not res!1625418) (not e!2480606))))

(get-info :version)

(assert (=> start!376504 (= res!1625418 ((_ is Lexer!6375) thiss!21717))))

(assert (=> start!376504 e!2480606))

(declare-fun e!2480598 () Bool)

(assert (=> start!376504 e!2480598))

(declare-fun e!2480600 () Bool)

(declare-fun inv!57149 (Token!12714) Bool)

(assert (=> start!376504 (and (inv!57149 token!484) e!2480600)))

(declare-fun e!2480614 () Bool)

(assert (=> start!376504 e!2480614))

(declare-fun e!2480603 () Bool)

(assert (=> start!376504 e!2480603))

(declare-fun e!2480591 () Bool)

(assert (=> start!376504 e!2480591))

(assert (=> start!376504 true))

(assert (=> start!376504 e!2480616))

(assert (=> start!376504 e!2480593))

(declare-fun b!4000639 () Bool)

(declare-fun e!2480611 () Bool)

(declare-fun e!2480612 () Bool)

(assert (=> b!4000639 (= e!2480611 e!2480612)))

(declare-fun res!1625426 () Bool)

(assert (=> b!4000639 (=> res!1625426 e!2480612)))

(assert (=> b!4000639 (= res!1625426 (not (isPrefix!3875 lt!1414647 lt!1414655)))))

(assert (=> b!4000639 (isPrefix!3875 prefix!494 lt!1414655)))

(declare-fun lt!1414660 () Unit!61781)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2718 (List!42916 List!42916) Unit!61781)

(assert (=> b!4000639 (= lt!1414660 (lemmaConcatTwoListThenFirstIsPrefix!2718 prefix!494 suffix!1299))))

(declare-fun lt!1414658 () List!42916)

(assert (=> b!4000639 (isPrefix!3875 lt!1414647 lt!1414658)))

(declare-fun lt!1414653 () Unit!61781)

(declare-fun suffixResult!105 () List!42916)

(assert (=> b!4000639 (= lt!1414653 (lemmaConcatTwoListThenFirstIsPrefix!2718 lt!1414647 suffixResult!105))))

(declare-fun b!4000640 () Bool)

(declare-fun tp!1217409 () Bool)

(assert (=> b!4000640 (= e!2480603 (and tp_is_empty!20357 tp!1217409))))

(declare-fun b!4000641 () Bool)

(declare-fun e!2480601 () Bool)

(declare-fun e!2480604 () Bool)

(assert (=> b!4000641 (= e!2480601 e!2480604)))

(declare-fun res!1625419 () Bool)

(assert (=> b!4000641 (=> res!1625419 e!2480604)))

(declare-fun lt!1414649 () Option!9202)

(declare-fun lt!1414654 () Option!9202)

(assert (=> b!4000641 (= res!1625419 (not (= lt!1414649 lt!1414654)))))

(declare-fun lt!1414662 () Token!12714)

(assert (=> b!4000641 (= lt!1414649 (Some!9201 (tuple2!41975 lt!1414662 suffixResult!105)))))

(assert (=> b!4000641 (= lt!1414649 (maxPrefixOneRule!2709 thiss!21717 (rule!9820 token!484) lt!1414655))))

(declare-fun lt!1414646 () Int)

(assert (=> b!4000641 (= lt!1414662 (Token!12715 lt!1414657 (rule!9820 token!484) lt!1414646 lt!1414647))))

(declare-fun apply!9999 (TokenValueInjection!13464 BalanceConc!25592) TokenValue!7018)

(declare-fun seqFromList!5027 (List!42916) BalanceConc!25592)

(assert (=> b!4000641 (= lt!1414657 (apply!9999 (transformation!6788 (rule!9820 token!484)) (seqFromList!5027 lt!1414647)))))

(declare-fun lt!1414651 () Unit!61781)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1531 (LexerInterface!6377 List!42918 List!42916 List!42916 List!42916 Rule!13376) Unit!61781)

(assert (=> b!4000641 (= lt!1414651 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1531 thiss!21717 rules!2999 lt!1414647 lt!1414655 suffixResult!105 (rule!9820 token!484)))))

(declare-fun lt!1414645 () List!42916)

(assert (=> b!4000641 (= lt!1414645 suffixResult!105)))

(declare-fun lt!1414674 () Unit!61781)

(declare-fun lemmaSamePrefixThenSameSuffix!2062 (List!42916 List!42916 List!42916 List!42916 List!42916) Unit!61781)

(assert (=> b!4000641 (= lt!1414674 (lemmaSamePrefixThenSameSuffix!2062 lt!1414647 lt!1414645 lt!1414647 suffixResult!105 lt!1414655))))

(declare-fun lt!1414650 () List!42916)

(assert (=> b!4000641 (isPrefix!3875 lt!1414647 lt!1414650)))

(declare-fun lt!1414677 () Unit!61781)

(assert (=> b!4000641 (= lt!1414677 (lemmaConcatTwoListThenFirstIsPrefix!2718 lt!1414647 lt!1414645))))

(declare-fun b!4000642 () Bool)

(declare-fun tp!1217415 () Bool)

(assert (=> b!4000642 (= e!2480591 (and tp_is_empty!20357 tp!1217415))))

(declare-fun e!2480615 () Bool)

(assert (=> b!4000643 (= e!2480615 (and tp!1217420 tp!1217408))))

(declare-fun b!4000644 () Bool)

(declare-fun res!1625432 () Bool)

(assert (=> b!4000644 (=> (not res!1625432) (not e!2480606))))

(declare-fun isEmpty!25574 (List!42918) Bool)

(assert (=> b!4000644 (= res!1625432 (not (isEmpty!25574 rules!2999)))))

(declare-fun b!4000645 () Bool)

(declare-fun e!2480597 () Bool)

(assert (=> b!4000645 (= e!2480612 e!2480597)))

(declare-fun res!1625431 () Bool)

(assert (=> b!4000645 (=> res!1625431 e!2480597)))

(declare-fun lt!1414659 () List!42916)

(assert (=> b!4000645 (= res!1625431 (not (= lt!1414659 prefix!494)))))

(declare-fun lt!1414661 () List!42916)

(assert (=> b!4000645 (= lt!1414659 (++!11190 lt!1414647 lt!1414661))))

(assert (=> b!4000645 (= lt!1414661 (getSuffix!2306 prefix!494 lt!1414647))))

(assert (=> b!4000645 (isPrefix!3875 lt!1414647 prefix!494)))

(declare-fun lt!1414673 () Unit!61781)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!453 (List!42916 List!42916 List!42916) Unit!61781)

(assert (=> b!4000645 (= lt!1414673 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!453 prefix!494 lt!1414647 lt!1414655))))

(declare-fun b!4000646 () Bool)

(declare-fun res!1625434 () Bool)

(assert (=> b!4000646 (=> (not res!1625434) (not e!2480606))))

(assert (=> b!4000646 (= res!1625434 (isPrefix!3875 newSuffix!27 suffix!1299))))

(declare-fun tp!1217418 () Bool)

(declare-fun b!4000647 () Bool)

(declare-fun e!2480602 () Bool)

(declare-fun inv!21 (TokenValue!7018) Bool)

(assert (=> b!4000647 (= e!2480600 (and (inv!21 (value!214092 token!484)) e!2480602 tp!1217418))))

(declare-fun b!4000648 () Bool)

(assert (=> b!4000648 (= e!2480595 e!2480590)))

(declare-fun res!1625430 () Bool)

(assert (=> b!4000648 (=> res!1625430 e!2480590)))

(declare-fun maxPrefix!3675 (LexerInterface!6377 List!42918 List!42916) Option!9202)

(assert (=> b!4000648 (= res!1625430 ((_ is Some!9201) (maxPrefix!3675 thiss!21717 rules!2999 lt!1414656)))))

(declare-fun lt!1414666 () tuple2!41974)

(assert (=> b!4000648 (and (= suffixResult!105 lt!1414669) (= lt!1414666 (tuple2!41975 lt!1414662 lt!1414669)))))

(declare-fun lt!1414671 () Unit!61781)

(assert (=> b!4000648 (= lt!1414671 (lemmaSamePrefixThenSameSuffix!2062 lt!1414647 suffixResult!105 lt!1414647 lt!1414669 lt!1414655))))

(assert (=> b!4000648 (isPrefix!3875 lt!1414647 lt!1414676)))

(declare-fun lt!1414675 () Unit!61781)

(assert (=> b!4000648 (= lt!1414675 (lemmaConcatTwoListThenFirstIsPrefix!2718 lt!1414647 lt!1414669))))

(declare-fun b!4000649 () Bool)

(declare-fun e!2480610 () Bool)

(assert (=> b!4000649 (= e!2480592 e!2480610)))

(declare-fun res!1625427 () Bool)

(assert (=> b!4000649 (=> (not res!1625427) (not e!2480610))))

(assert (=> b!4000649 (= res!1625427 (= (maxPrefix!3675 thiss!21717 rules!2999 lt!1414655) lt!1414654))))

(assert (=> b!4000649 (= lt!1414654 (Some!9201 lt!1414666))))

(assert (=> b!4000649 (= lt!1414666 (tuple2!41975 token!484 suffixResult!105))))

(assert (=> b!4000649 (= lt!1414655 (++!11190 prefix!494 suffix!1299))))

(declare-fun tp!1217419 () Bool)

(declare-fun e!2480596 () Bool)

(declare-fun b!4000650 () Bool)

(declare-fun inv!57146 (String!48808) Bool)

(declare-fun inv!57150 (TokenValueInjection!13464) Bool)

(assert (=> b!4000650 (= e!2480602 (and tp!1217419 (inv!57146 (tag!7648 (rule!9820 token!484))) (inv!57150 (transformation!6788 (rule!9820 token!484))) e!2480596))))

(declare-fun b!4000651 () Bool)

(declare-fun tp!1217411 () Bool)

(assert (=> b!4000651 (= e!2480608 (and tp!1217411 (inv!57146 (tag!7648 (h!48214 rules!2999))) (inv!57150 (transformation!6788 (h!48214 rules!2999))) e!2480615))))

(declare-fun b!4000652 () Bool)

(declare-fun tp!1217417 () Bool)

(assert (=> b!4000652 (= e!2480614 (and tp_is_empty!20357 tp!1217417))))

(declare-fun b!4000653 () Bool)

(assert (=> b!4000653 (= e!2480597 e!2480601)))

(declare-fun res!1625436 () Bool)

(assert (=> b!4000653 (=> res!1625436 e!2480601)))

(declare-fun lt!1414648 () List!42916)

(assert (=> b!4000653 (= res!1625436 (or (not (= lt!1414655 lt!1414648)) (not (= lt!1414655 lt!1414650))))))

(assert (=> b!4000653 (= lt!1414648 lt!1414650)))

(assert (=> b!4000653 (= lt!1414650 (++!11190 lt!1414647 lt!1414645))))

(assert (=> b!4000653 (= lt!1414648 (++!11190 lt!1414659 suffix!1299))))

(assert (=> b!4000653 (= lt!1414645 (++!11190 lt!1414661 suffix!1299))))

(declare-fun lt!1414665 () Unit!61781)

(declare-fun lemmaConcatAssociativity!2510 (List!42916 List!42916 List!42916) Unit!61781)

(assert (=> b!4000653 (= lt!1414665 (lemmaConcatAssociativity!2510 lt!1414647 lt!1414661 suffix!1299))))

(declare-fun b!4000654 () Bool)

(declare-fun res!1625435 () Bool)

(assert (=> b!4000654 (=> (not res!1625435) (not e!2480609))))

(assert (=> b!4000654 (= res!1625435 (= (size!31999 token!484) (size!32000 (originalCharacters!7388 token!484))))))

(declare-fun b!4000655 () Bool)

(assert (=> b!4000655 (= e!2480609 (and (= (size!31999 token!484) lt!1414646) (= (originalCharacters!7388 token!484) lt!1414647)))))

(assert (=> b!4000656 (= e!2480596 (and tp!1217416 tp!1217412))))

(declare-fun b!4000657 () Bool)

(assert (=> b!4000657 (= e!2480604 e!2480599)))

(declare-fun res!1625420 () Bool)

(assert (=> b!4000657 (=> res!1625420 e!2480599)))

(declare-fun matchR!5670 (Regex!11693 List!42916) Bool)

(assert (=> b!4000657 (= res!1625420 (not (matchR!5670 (regex!6788 (rule!9820 token!484)) lt!1414647)))))

(assert (=> b!4000657 (isPrefix!3875 lt!1414647 lt!1414656)))

(declare-fun lt!1414663 () Unit!61781)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!708 (List!42916 List!42916 List!42916) Unit!61781)

(assert (=> b!4000657 (= lt!1414663 (lemmaPrefixStaysPrefixWhenAddingToSuffix!708 lt!1414647 prefix!494 newSuffix!27))))

(declare-fun lt!1414664 () Unit!61781)

(assert (=> b!4000657 (= lt!1414664 (lemmaPrefixStaysPrefixWhenAddingToSuffix!708 lt!1414647 prefix!494 suffix!1299))))

(declare-fun b!4000658 () Bool)

(assert (=> b!4000658 (= e!2480610 (not e!2480611))))

(declare-fun res!1625428 () Bool)

(assert (=> b!4000658 (=> res!1625428 e!2480611)))

(assert (=> b!4000658 (= res!1625428 (not (= lt!1414658 lt!1414655)))))

(assert (=> b!4000658 (= lt!1414658 (++!11190 lt!1414647 suffixResult!105))))

(declare-fun lt!1414667 () Unit!61781)

(declare-fun lemmaInv!1003 (TokenValueInjection!13464) Unit!61781)

(assert (=> b!4000658 (= lt!1414667 (lemmaInv!1003 (transformation!6788 (rule!9820 token!484))))))

(declare-fun ruleValid!2720 (LexerInterface!6377 Rule!13376) Bool)

(assert (=> b!4000658 (ruleValid!2720 thiss!21717 (rule!9820 token!484))))

(declare-fun lt!1414668 () Unit!61781)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1794 (LexerInterface!6377 Rule!13376 List!42918) Unit!61781)

(assert (=> b!4000658 (= lt!1414668 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1794 thiss!21717 (rule!9820 token!484) rules!2999))))

(declare-fun b!4000659 () Bool)

(assert (=> b!4000659 (= e!2480606 e!2480594)))

(declare-fun res!1625423 () Bool)

(assert (=> b!4000659 (=> (not res!1625423) (not e!2480594))))

(declare-fun lt!1414644 () Int)

(assert (=> b!4000659 (= res!1625423 (>= lt!1414644 lt!1414646))))

(assert (=> b!4000659 (= lt!1414646 (size!32000 lt!1414647))))

(assert (=> b!4000659 (= lt!1414644 (size!32000 prefix!494))))

(declare-fun list!15892 (BalanceConc!25592) List!42916)

(declare-fun charsOf!4604 (Token!12714) BalanceConc!25592)

(assert (=> b!4000659 (= lt!1414647 (list!15892 (charsOf!4604 token!484)))))

(declare-fun b!4000660 () Bool)

(declare-fun tp!1217414 () Bool)

(assert (=> b!4000660 (= e!2480598 (and tp_is_empty!20357 tp!1217414))))

(assert (= (and start!376504 res!1625418) b!4000644))

(assert (= (and b!4000644 res!1625432) b!4000635))

(assert (= (and b!4000635 res!1625422) b!4000633))

(assert (= (and b!4000633 res!1625425) b!4000646))

(assert (= (and b!4000646 res!1625434) b!4000659))

(assert (= (and b!4000659 res!1625423) b!4000634))

(assert (= (and b!4000634 res!1625429) b!4000649))

(assert (= (and b!4000649 res!1625427) b!4000658))

(assert (= (and b!4000658 (not res!1625428)) b!4000639))

(assert (= (and b!4000639 (not res!1625426)) b!4000645))

(assert (= (and b!4000645 (not res!1625431)) b!4000653))

(assert (= (and b!4000653 (not res!1625436)) b!4000641))

(assert (= (and b!4000641 (not res!1625419)) b!4000657))

(assert (= (and b!4000657 (not res!1625420)) b!4000631))

(assert (= (and b!4000631 res!1625424) b!4000632))

(assert (= (and b!4000632 res!1625433) b!4000654))

(assert (= (and b!4000654 res!1625435) b!4000655))

(assert (= (and b!4000631 (not res!1625421)) b!4000648))

(assert (= (and b!4000648 (not res!1625430)) b!4000638))

(assert (= (and start!376504 ((_ is Cons!42792) prefix!494)) b!4000660))

(assert (= b!4000650 b!4000656))

(assert (= b!4000647 b!4000650))

(assert (= start!376504 b!4000647))

(assert (= (and start!376504 ((_ is Cons!42792) suffixResult!105)) b!4000652))

(assert (= (and start!376504 ((_ is Cons!42792) suffix!1299)) b!4000640))

(assert (= (and start!376504 ((_ is Cons!42792) newSuffix!27)) b!4000642))

(assert (= b!4000651 b!4000643))

(assert (= b!4000636 b!4000651))

(assert (= (and start!376504 ((_ is Cons!42794) rules!2999)) b!4000636))

(assert (= (and start!376504 ((_ is Cons!42792) newSuffixResult!27)) b!4000637))

(declare-fun m!4582955 () Bool)

(assert (=> b!4000638 m!4582955))

(assert (=> b!4000638 m!4582955))

(declare-fun m!4582957 () Bool)

(assert (=> b!4000638 m!4582957))

(declare-fun m!4582959 () Bool)

(assert (=> b!4000638 m!4582959))

(declare-fun m!4582961 () Bool)

(assert (=> b!4000648 m!4582961))

(declare-fun m!4582963 () Bool)

(assert (=> b!4000648 m!4582963))

(declare-fun m!4582965 () Bool)

(assert (=> b!4000648 m!4582965))

(declare-fun m!4582967 () Bool)

(assert (=> b!4000648 m!4582967))

(declare-fun m!4582969 () Bool)

(assert (=> b!4000646 m!4582969))

(declare-fun m!4582971 () Bool)

(assert (=> b!4000631 m!4582971))

(declare-fun m!4582973 () Bool)

(assert (=> b!4000631 m!4582973))

(declare-fun m!4582975 () Bool)

(assert (=> b!4000631 m!4582975))

(declare-fun m!4582977 () Bool)

(assert (=> b!4000631 m!4582977))

(declare-fun m!4582979 () Bool)

(assert (=> b!4000650 m!4582979))

(declare-fun m!4582981 () Bool)

(assert (=> b!4000650 m!4582981))

(declare-fun m!4582983 () Bool)

(assert (=> b!4000639 m!4582983))

(declare-fun m!4582985 () Bool)

(assert (=> b!4000639 m!4582985))

(declare-fun m!4582987 () Bool)

(assert (=> b!4000639 m!4582987))

(declare-fun m!4582989 () Bool)

(assert (=> b!4000639 m!4582989))

(declare-fun m!4582991 () Bool)

(assert (=> b!4000639 m!4582991))

(declare-fun m!4582993 () Bool)

(assert (=> start!376504 m!4582993))

(declare-fun m!4582995 () Bool)

(assert (=> b!4000649 m!4582995))

(declare-fun m!4582997 () Bool)

(assert (=> b!4000649 m!4582997))

(declare-fun m!4582999 () Bool)

(assert (=> b!4000659 m!4582999))

(declare-fun m!4583001 () Bool)

(assert (=> b!4000659 m!4583001))

(declare-fun m!4583003 () Bool)

(assert (=> b!4000659 m!4583003))

(assert (=> b!4000659 m!4583003))

(declare-fun m!4583005 () Bool)

(assert (=> b!4000659 m!4583005))

(declare-fun m!4583007 () Bool)

(assert (=> b!4000634 m!4583007))

(declare-fun m!4583009 () Bool)

(assert (=> b!4000634 m!4583009))

(declare-fun m!4583011 () Bool)

(assert (=> b!4000647 m!4583011))

(declare-fun m!4583013 () Bool)

(assert (=> b!4000658 m!4583013))

(declare-fun m!4583015 () Bool)

(assert (=> b!4000658 m!4583015))

(declare-fun m!4583017 () Bool)

(assert (=> b!4000658 m!4583017))

(declare-fun m!4583019 () Bool)

(assert (=> b!4000658 m!4583019))

(declare-fun m!4583021 () Bool)

(assert (=> b!4000644 m!4583021))

(declare-fun m!4583023 () Bool)

(assert (=> b!4000641 m!4583023))

(declare-fun m!4583025 () Bool)

(assert (=> b!4000641 m!4583025))

(declare-fun m!4583027 () Bool)

(assert (=> b!4000641 m!4583027))

(declare-fun m!4583029 () Bool)

(assert (=> b!4000641 m!4583029))

(declare-fun m!4583031 () Bool)

(assert (=> b!4000641 m!4583031))

(declare-fun m!4583033 () Bool)

(assert (=> b!4000641 m!4583033))

(assert (=> b!4000641 m!4583031))

(declare-fun m!4583035 () Bool)

(assert (=> b!4000641 m!4583035))

(declare-fun m!4583037 () Bool)

(assert (=> b!4000654 m!4583037))

(declare-fun m!4583039 () Bool)

(assert (=> b!4000653 m!4583039))

(declare-fun m!4583041 () Bool)

(assert (=> b!4000653 m!4583041))

(declare-fun m!4583043 () Bool)

(assert (=> b!4000653 m!4583043))

(declare-fun m!4583045 () Bool)

(assert (=> b!4000653 m!4583045))

(declare-fun m!4583047 () Bool)

(assert (=> b!4000657 m!4583047))

(declare-fun m!4583049 () Bool)

(assert (=> b!4000657 m!4583049))

(declare-fun m!4583051 () Bool)

(assert (=> b!4000657 m!4583051))

(declare-fun m!4583053 () Bool)

(assert (=> b!4000657 m!4583053))

(declare-fun m!4583055 () Bool)

(assert (=> b!4000635 m!4583055))

(declare-fun m!4583057 () Bool)

(assert (=> b!4000645 m!4583057))

(declare-fun m!4583059 () Bool)

(assert (=> b!4000645 m!4583059))

(declare-fun m!4583061 () Bool)

(assert (=> b!4000645 m!4583061))

(declare-fun m!4583063 () Bool)

(assert (=> b!4000645 m!4583063))

(declare-fun m!4583065 () Bool)

(assert (=> b!4000651 m!4583065))

(declare-fun m!4583067 () Bool)

(assert (=> b!4000651 m!4583067))

(declare-fun m!4583069 () Bool)

(assert (=> b!4000633 m!4583069))

(declare-fun m!4583071 () Bool)

(assert (=> b!4000633 m!4583071))

(check-sat (not b!4000639) (not b!4000658) (not start!376504) (not b!4000660) (not b!4000644) (not b!4000648) (not b_next!111857) b_and!307183 (not b!4000646) (not b!4000634) (not b!4000638) (not b!4000641) (not b!4000649) (not b!4000654) (not b!4000640) tp_is_empty!20357 (not b!4000635) (not b!4000657) (not b!4000650) b_and!307187 (not b!4000651) b_and!307185 b_and!307189 (not b!4000633) (not b!4000652) (not b!4000636) (not b!4000653) (not b!4000631) (not b!4000645) (not b!4000637) (not b!4000642) (not b_next!111859) (not b_next!111863) (not b!4000647) (not b_next!111861) (not b!4000659))
(check-sat b_and!307187 (not b_next!111857) b_and!307183 (not b_next!111859) (not b_next!111863) (not b_next!111861) b_and!307185 b_and!307189)
