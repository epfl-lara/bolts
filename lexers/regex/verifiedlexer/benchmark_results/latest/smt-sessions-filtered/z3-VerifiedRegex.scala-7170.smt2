; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381488 () Bool)

(assert start!381488)

(declare-fun b!4045123 () Bool)

(declare-fun b_free!112601 () Bool)

(declare-fun b_next!113305 () Bool)

(assert (=> b!4045123 (= b_free!112601 (not b_next!113305))))

(declare-fun tp!1227537 () Bool)

(declare-fun b_and!311059 () Bool)

(assert (=> b!4045123 (= tp!1227537 b_and!311059)))

(declare-fun b_free!112603 () Bool)

(declare-fun b_next!113307 () Bool)

(assert (=> b!4045123 (= b_free!112603 (not b_next!113307))))

(declare-fun tp!1227541 () Bool)

(declare-fun b_and!311061 () Bool)

(assert (=> b!4045123 (= tp!1227541 b_and!311061)))

(declare-fun b!4045140 () Bool)

(declare-fun b_free!112605 () Bool)

(declare-fun b_next!113309 () Bool)

(assert (=> b!4045140 (= b_free!112605 (not b_next!113309))))

(declare-fun tp!1227544 () Bool)

(declare-fun b_and!311063 () Bool)

(assert (=> b!4045140 (= tp!1227544 b_and!311063)))

(declare-fun b_free!112607 () Bool)

(declare-fun b_next!113311 () Bool)

(assert (=> b!4045140 (= b_free!112607 (not b_next!113311))))

(declare-fun tp!1227538 () Bool)

(declare-fun b_and!311065 () Bool)

(assert (=> b!4045140 (= tp!1227538 b_and!311065)))

(declare-fun e!2509826 () Bool)

(declare-fun tp!1227533 () Bool)

(declare-fun b!4045117 () Bool)

(declare-fun e!2509845 () Bool)

(declare-datatypes ((C!23852 0))(
  ( (C!23853 (val!14020 Int)) )
))
(declare-datatypes ((List!43387 0))(
  ( (Nil!43263) (Cons!43263 (h!48683 C!23852) (t!335484 List!43387)) )
))
(declare-datatypes ((IArray!26283 0))(
  ( (IArray!26284 (innerList!13199 List!43387)) )
))
(declare-datatypes ((Conc!13139 0))(
  ( (Node!13139 (left!32585 Conc!13139) (right!32915 Conc!13139) (csize!26508 Int) (cheight!13350 Int)) (Leaf!20310 (xs!16445 IArray!26283) (csize!26509 Int)) (Empty!13139) )
))
(declare-datatypes ((BalanceConc!25872 0))(
  ( (BalanceConc!25873 (c!698872 Conc!13139)) )
))
(declare-datatypes ((String!49507 0))(
  ( (String!49508 (value!218056 String)) )
))
(declare-datatypes ((List!43388 0))(
  ( (Nil!43264) (Cons!43264 (h!48684 (_ BitVec 16)) (t!335485 List!43388)) )
))
(declare-datatypes ((TokenValue!7158 0))(
  ( (FloatLiteralValue!14316 (text!50551 List!43388)) (TokenValueExt!7157 (__x!26533 Int)) (Broken!35790 (value!218057 List!43388)) (Object!7281) (End!7158) (Def!7158) (Underscore!7158) (Match!7158) (Else!7158) (Error!7158) (Case!7158) (If!7158) (Extends!7158) (Abstract!7158) (Class!7158) (Val!7158) (DelimiterValue!14316 (del!7218 List!43388)) (KeywordValue!7164 (value!218058 List!43388)) (CommentValue!14316 (value!218059 List!43388)) (WhitespaceValue!14316 (value!218060 List!43388)) (IndentationValue!7158 (value!218061 List!43388)) (String!49509) (Int32!7158) (Broken!35791 (value!218062 List!43388)) (Boolean!7159) (Unit!62508) (OperatorValue!7161 (op!7218 List!43388)) (IdentifierValue!14316 (value!218063 List!43388)) (IdentifierValue!14317 (value!218064 List!43388)) (WhitespaceValue!14317 (value!218065 List!43388)) (True!14316) (False!14316) (Broken!35792 (value!218066 List!43388)) (Broken!35793 (value!218067 List!43388)) (True!14317) (RightBrace!7158) (RightBracket!7158) (Colon!7158) (Null!7158) (Comma!7158) (LeftBracket!7158) (False!14317) (LeftBrace!7158) (ImaginaryLiteralValue!7158 (text!50552 List!43388)) (StringLiteralValue!21474 (value!218068 List!43388)) (EOFValue!7158 (value!218069 List!43388)) (IdentValue!7158 (value!218070 List!43388)) (DelimiterValue!14317 (value!218071 List!43388)) (DedentValue!7158 (value!218072 List!43388)) (NewLineValue!7158 (value!218073 List!43388)) (IntegerValue!21474 (value!218074 (_ BitVec 32)) (text!50553 List!43388)) (IntegerValue!21475 (value!218075 Int) (text!50554 List!43388)) (Times!7158) (Or!7158) (Equal!7158) (Minus!7158) (Broken!35794 (value!218076 List!43388)) (And!7158) (Div!7158) (LessEqual!7158) (Mod!7158) (Concat!18991) (Not!7158) (Plus!7158) (SpaceValue!7158 (value!218077 List!43388)) (IntegerValue!21476 (value!218078 Int) (text!50555 List!43388)) (StringLiteralValue!21475 (text!50556 List!43388)) (FloatLiteralValue!14317 (text!50557 List!43388)) (BytesLiteralValue!7158 (value!218079 List!43388)) (CommentValue!14317 (value!218080 List!43388)) (StringLiteralValue!21476 (value!218081 List!43388)) (ErrorTokenValue!7158 (msg!7219 List!43388)) )
))
(declare-datatypes ((Regex!11833 0))(
  ( (ElementMatch!11833 (c!698873 C!23852)) (Concat!18992 (regOne!24178 Regex!11833) (regTwo!24178 Regex!11833)) (EmptyExpr!11833) (Star!11833 (reg!12162 Regex!11833)) (EmptyLang!11833) (Union!11833 (regOne!24179 Regex!11833) (regTwo!24179 Regex!11833)) )
))
(declare-datatypes ((TokenValueInjection!13744 0))(
  ( (TokenValueInjection!13745 (toValue!9476 Int) (toChars!9335 Int)) )
))
(declare-datatypes ((Rule!13656 0))(
  ( (Rule!13657 (regex!6928 Regex!11833) (tag!7788 String!49507) (isSeparator!6928 Bool) (transformation!6928 TokenValueInjection!13744)) )
))
(declare-datatypes ((List!43389 0))(
  ( (Nil!43265) (Cons!43265 (h!48685 Rule!13656) (t!335486 List!43389)) )
))
(declare-fun rules!2999 () List!43389)

(declare-fun inv!57826 (String!49507) Bool)

(declare-fun inv!57829 (TokenValueInjection!13744) Bool)

(assert (=> b!4045117 (= e!2509826 (and tp!1227533 (inv!57826 (tag!7788 (h!48685 rules!2999))) (inv!57829 (transformation!6928 (h!48685 rules!2999))) e!2509845))))

(declare-fun b!4045118 () Bool)

(declare-fun res!1647697 () Bool)

(declare-fun e!2509828 () Bool)

(assert (=> b!4045118 (=> (not res!1647697) (not e!2509828))))

(declare-datatypes ((Token!12994 0))(
  ( (Token!12995 (value!218082 TokenValue!7158) (rule!10004 Rule!13656) (size!32345 Int) (originalCharacters!7528 List!43387)) )
))
(declare-fun token!484 () Token!12994)

(declare-fun size!32346 (List!43387) Int)

(assert (=> b!4045118 (= res!1647697 (= (size!32345 token!484) (size!32346 (originalCharacters!7528 token!484))))))

(declare-fun b!4045119 () Bool)

(declare-fun e!2509844 () Bool)

(declare-fun tp_is_empty!20637 () Bool)

(declare-fun tp!1227542 () Bool)

(assert (=> b!4045119 (= e!2509844 (and tp_is_empty!20637 tp!1227542))))

(declare-fun b!4045120 () Bool)

(declare-fun e!2509838 () Bool)

(declare-fun e!2509824 () Bool)

(assert (=> b!4045120 (= e!2509838 e!2509824)))

(declare-fun res!1647689 () Bool)

(assert (=> b!4045120 (=> res!1647689 e!2509824)))

(declare-fun lt!1440301 () List!43387)

(declare-fun lt!1440263 () List!43387)

(assert (=> b!4045120 (= res!1647689 (not (= lt!1440301 lt!1440263)))))

(declare-fun lt!1440285 () List!43387)

(declare-fun lt!1440294 () List!43387)

(declare-fun ++!11330 (List!43387 List!43387) List!43387)

(assert (=> b!4045120 (= lt!1440301 (++!11330 lt!1440285 lt!1440294))))

(declare-fun getSuffix!2432 (List!43387 List!43387) List!43387)

(assert (=> b!4045120 (= lt!1440294 (getSuffix!2432 lt!1440263 lt!1440285))))

(assert (=> b!4045120 e!2509828))

(declare-fun res!1647684 () Bool)

(assert (=> b!4045120 (=> (not res!1647684) (not e!2509828))))

(declare-fun isPrefix!4015 (List!43387 List!43387) Bool)

(assert (=> b!4045120 (= res!1647684 (isPrefix!4015 lt!1440263 lt!1440263))))

(declare-datatypes ((Unit!62509 0))(
  ( (Unit!62510) )
))
(declare-fun lt!1440307 () Unit!62509)

(declare-fun lemmaIsPrefixRefl!2582 (List!43387 List!43387) Unit!62509)

(assert (=> b!4045120 (= lt!1440307 (lemmaIsPrefixRefl!2582 lt!1440263 lt!1440263))))

(declare-fun b!4045121 () Bool)

(declare-fun e!2509848 () Bool)

(declare-fun e!2509829 () Bool)

(assert (=> b!4045121 (= e!2509848 e!2509829)))

(declare-fun res!1647700 () Bool)

(assert (=> b!4045121 (=> res!1647700 e!2509829)))

(declare-fun lt!1440299 () List!43387)

(declare-fun suffix!1299 () List!43387)

(assert (=> b!4045121 (= res!1647700 (not (= lt!1440299 suffix!1299)))))

(declare-fun newSuffix!27 () List!43387)

(declare-fun lt!1440296 () List!43387)

(assert (=> b!4045121 (= lt!1440299 (++!11330 newSuffix!27 lt!1440296))))

(assert (=> b!4045121 (= lt!1440296 (getSuffix!2432 suffix!1299 newSuffix!27))))

(declare-fun b!4045122 () Bool)

(declare-fun e!2509820 () Bool)

(declare-fun e!2509839 () Bool)

(assert (=> b!4045122 (= e!2509820 e!2509839)))

(declare-fun res!1647699 () Bool)

(assert (=> b!4045122 (=> res!1647699 e!2509839)))

(declare-fun lt!1440275 () List!43387)

(declare-fun lt!1440257 () List!43387)

(assert (=> b!4045122 (= res!1647699 (not (= lt!1440275 lt!1440257)))))

(declare-fun lt!1440262 () List!43387)

(declare-fun lt!1440288 () List!43387)

(assert (=> b!4045122 (= lt!1440275 (++!11330 lt!1440262 lt!1440288))))

(assert (=> b!4045122 (= lt!1440288 (getSuffix!2432 lt!1440257 lt!1440262))))

(assert (=> b!4045123 (= e!2509845 (and tp!1227537 tp!1227541))))

(declare-fun b!4045124 () Bool)

(declare-fun res!1647705 () Bool)

(declare-fun e!2509827 () Bool)

(assert (=> b!4045124 (=> (not res!1647705) (not e!2509827))))

(assert (=> b!4045124 (= res!1647705 (isPrefix!4015 newSuffix!27 suffix!1299))))

(declare-fun b!4045125 () Bool)

(declare-fun e!2509822 () Bool)

(assert (=> b!4045125 (= e!2509822 e!2509820)))

(declare-fun res!1647686 () Bool)

(assert (=> b!4045125 (=> res!1647686 e!2509820)))

(assert (=> b!4045125 (= res!1647686 (not (isPrefix!4015 lt!1440262 lt!1440263)))))

(declare-fun lt!1440267 () List!43387)

(assert (=> b!4045125 (isPrefix!4015 lt!1440262 lt!1440267)))

(declare-fun lt!1440261 () Unit!62509)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!808 (List!43387 List!43387 List!43387) Unit!62509)

(assert (=> b!4045125 (= lt!1440261 (lemmaPrefixStaysPrefixWhenAddingToSuffix!808 lt!1440262 lt!1440257 lt!1440296))))

(declare-fun b!4045126 () Bool)

(declare-fun e!2509840 () Bool)

(declare-fun e!2509843 () Bool)

(assert (=> b!4045126 (= e!2509840 e!2509843)))

(declare-fun res!1647685 () Bool)

(assert (=> b!4045126 (=> res!1647685 e!2509843)))

(assert (=> b!4045126 (= res!1647685 (not (isPrefix!4015 lt!1440285 lt!1440263)))))

(declare-fun prefix!494 () List!43387)

(assert (=> b!4045126 (isPrefix!4015 prefix!494 lt!1440263)))

(declare-fun lt!1440277 () Unit!62509)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2850 (List!43387 List!43387) Unit!62509)

(assert (=> b!4045126 (= lt!1440277 (lemmaConcatTwoListThenFirstIsPrefix!2850 prefix!494 suffix!1299))))

(declare-fun lt!1440264 () List!43387)

(assert (=> b!4045126 (isPrefix!4015 lt!1440285 lt!1440264)))

(declare-fun lt!1440297 () Unit!62509)

(declare-fun suffixResult!105 () List!43387)

(assert (=> b!4045126 (= lt!1440297 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440285 suffixResult!105))))

(declare-fun res!1647681 () Bool)

(assert (=> start!381488 (=> (not res!1647681) (not e!2509827))))

(declare-datatypes ((LexerInterface!6517 0))(
  ( (LexerInterfaceExt!6514 (__x!26534 Int)) (Lexer!6515) )
))
(declare-fun thiss!21717 () LexerInterface!6517)

(get-info :version)

(assert (=> start!381488 (= res!1647681 ((_ is Lexer!6515) thiss!21717))))

(assert (=> start!381488 e!2509827))

(declare-fun e!2509833 () Bool)

(assert (=> start!381488 e!2509833))

(declare-fun e!2509821 () Bool)

(declare-fun inv!57830 (Token!12994) Bool)

(assert (=> start!381488 (and (inv!57830 token!484) e!2509821)))

(declare-fun e!2509831 () Bool)

(assert (=> start!381488 e!2509831))

(assert (=> start!381488 e!2509844))

(declare-fun e!2509823 () Bool)

(assert (=> start!381488 e!2509823))

(assert (=> start!381488 true))

(declare-fun e!2509850 () Bool)

(assert (=> start!381488 e!2509850))

(declare-fun e!2509832 () Bool)

(assert (=> start!381488 e!2509832))

(declare-fun e!2509837 () Bool)

(declare-fun tp!1227534 () Bool)

(declare-fun e!2509846 () Bool)

(declare-fun b!4045127 () Bool)

(assert (=> b!4045127 (= e!2509846 (and tp!1227534 (inv!57826 (tag!7788 (rule!10004 token!484))) (inv!57829 (transformation!6928 (rule!10004 token!484))) e!2509837))))

(declare-fun b!4045128 () Bool)

(declare-fun res!1647703 () Bool)

(assert (=> b!4045128 (=> res!1647703 e!2509820)))

(declare-fun lt!1440282 () List!43387)

(assert (=> b!4045128 (= res!1647703 (not (= lt!1440282 lt!1440257)))))

(declare-fun lt!1440260 () Int)

(declare-fun b!4045129 () Bool)

(assert (=> b!4045129 (= e!2509828 (and (= (size!32345 token!484) lt!1440260) (= (originalCharacters!7528 token!484) lt!1440285)))))

(declare-fun b!4045130 () Bool)

(assert (=> b!4045130 (= e!2509839 true)))

(declare-datatypes ((tuple2!42342 0))(
  ( (tuple2!42343 (_1!24305 Token!12994) (_2!24305 List!43387)) )
))
(declare-datatypes ((Option!9342 0))(
  ( (None!9341) (Some!9341 (v!39745 tuple2!42342)) )
))
(declare-fun lt!1440304 () Option!9342)

(assert (=> b!4045130 (= (_2!24305 (v!39745 lt!1440304)) lt!1440288)))

(declare-fun lt!1440279 () Unit!62509)

(declare-fun lemmaSamePrefixThenSameSuffix!2176 (List!43387 List!43387 List!43387 List!43387 List!43387) Unit!62509)

(assert (=> b!4045130 (= lt!1440279 (lemmaSamePrefixThenSameSuffix!2176 lt!1440262 (_2!24305 (v!39745 lt!1440304)) lt!1440262 lt!1440288 lt!1440257))))

(assert (=> b!4045130 (isPrefix!4015 lt!1440262 lt!1440275)))

(declare-fun lt!1440302 () Unit!62509)

(assert (=> b!4045130 (= lt!1440302 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440262 lt!1440288))))

(declare-fun b!4045131 () Bool)

(declare-fun tp!1227540 () Bool)

(assert (=> b!4045131 (= e!2509833 (and tp_is_empty!20637 tp!1227540))))

(declare-fun b!4045132 () Bool)

(declare-fun e!2509825 () Bool)

(assert (=> b!4045132 (= e!2509824 e!2509825)))

(declare-fun res!1647693 () Bool)

(assert (=> b!4045132 (=> res!1647693 e!2509825)))

(assert (=> b!4045132 (= res!1647693 (not ((_ is Some!9341) lt!1440304)))))

(declare-fun maxPrefix!3815 (LexerInterface!6517 List!43389 List!43387) Option!9342)

(assert (=> b!4045132 (= lt!1440304 (maxPrefix!3815 thiss!21717 rules!2999 lt!1440257))))

(declare-fun lt!1440255 () Token!12994)

(declare-fun lt!1440305 () tuple2!42342)

(assert (=> b!4045132 (and (= suffixResult!105 lt!1440294) (= lt!1440305 (tuple2!42343 lt!1440255 lt!1440294)))))

(declare-fun lt!1440284 () Unit!62509)

(assert (=> b!4045132 (= lt!1440284 (lemmaSamePrefixThenSameSuffix!2176 lt!1440285 suffixResult!105 lt!1440285 lt!1440294 lt!1440263))))

(assert (=> b!4045132 (isPrefix!4015 lt!1440285 lt!1440301)))

(declare-fun lt!1440276 () Unit!62509)

(assert (=> b!4045132 (= lt!1440276 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440285 lt!1440294))))

(declare-fun b!4045133 () Bool)

(declare-fun res!1647698 () Bool)

(assert (=> b!4045133 (=> (not res!1647698) (not e!2509828))))

(declare-fun lt!1440272 () TokenValue!7158)

(assert (=> b!4045133 (= res!1647698 (= (value!218082 token!484) lt!1440272))))

(declare-fun b!4045134 () Bool)

(assert (=> b!4045134 (= e!2509825 e!2509848)))

(declare-fun res!1647688 () Bool)

(assert (=> b!4045134 (=> res!1647688 e!2509848)))

(declare-fun lt!1440281 () Option!9342)

(assert (=> b!4045134 (= res!1647688 (not (= lt!1440281 (Some!9341 (v!39745 lt!1440304)))))))

(declare-fun newSuffixResult!27 () List!43387)

(assert (=> b!4045134 (isPrefix!4015 lt!1440262 (++!11330 lt!1440262 newSuffixResult!27))))

(declare-fun lt!1440271 () Unit!62509)

(assert (=> b!4045134 (= lt!1440271 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440262 newSuffixResult!27))))

(assert (=> b!4045134 (isPrefix!4015 lt!1440262 lt!1440282)))

(assert (=> b!4045134 (= lt!1440282 (++!11330 lt!1440262 (_2!24305 (v!39745 lt!1440304))))))

(declare-fun lt!1440292 () Unit!62509)

(assert (=> b!4045134 (= lt!1440292 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440262 (_2!24305 (v!39745 lt!1440304))))))

(declare-fun lt!1440291 () TokenValue!7158)

(declare-fun lt!1440259 () Int)

(assert (=> b!4045134 (= lt!1440281 (Some!9341 (tuple2!42343 (Token!12995 lt!1440291 (rule!10004 (_1!24305 (v!39745 lt!1440304))) lt!1440259 lt!1440262) (_2!24305 (v!39745 lt!1440304)))))))

(declare-fun maxPrefixOneRule!2827 (LexerInterface!6517 Rule!13656 List!43387) Option!9342)

(assert (=> b!4045134 (= lt!1440281 (maxPrefixOneRule!2827 thiss!21717 (rule!10004 (_1!24305 (v!39745 lt!1440304))) lt!1440257))))

(assert (=> b!4045134 (= lt!1440259 (size!32346 lt!1440262))))

(declare-fun apply!10117 (TokenValueInjection!13744 BalanceConc!25872) TokenValue!7158)

(declare-fun seqFromList!5145 (List!43387) BalanceConc!25872)

(assert (=> b!4045134 (= lt!1440291 (apply!10117 (transformation!6928 (rule!10004 (_1!24305 (v!39745 lt!1440304)))) (seqFromList!5145 lt!1440262)))))

(declare-fun lt!1440254 () Unit!62509)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1633 (LexerInterface!6517 List!43389 List!43387 List!43387 List!43387 Rule!13656) Unit!62509)

(assert (=> b!4045134 (= lt!1440254 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1633 thiss!21717 rules!2999 lt!1440262 lt!1440257 (_2!24305 (v!39745 lt!1440304)) (rule!10004 (_1!24305 (v!39745 lt!1440304)))))))

(declare-fun list!16114 (BalanceConc!25872) List!43387)

(declare-fun charsOf!4744 (Token!12994) BalanceConc!25872)

(assert (=> b!4045134 (= lt!1440262 (list!16114 (charsOf!4744 (_1!24305 (v!39745 lt!1440304)))))))

(declare-fun lt!1440274 () Unit!62509)

(declare-fun lemmaInv!1137 (TokenValueInjection!13744) Unit!62509)

(assert (=> b!4045134 (= lt!1440274 (lemmaInv!1137 (transformation!6928 (rule!10004 (_1!24305 (v!39745 lt!1440304))))))))

(declare-fun ruleValid!2858 (LexerInterface!6517 Rule!13656) Bool)

(assert (=> b!4045134 (ruleValid!2858 thiss!21717 (rule!10004 (_1!24305 (v!39745 lt!1440304))))))

(declare-fun lt!1440289 () Unit!62509)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1928 (LexerInterface!6517 Rule!13656 List!43389) Unit!62509)

(assert (=> b!4045134 (= lt!1440289 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1928 thiss!21717 (rule!10004 (_1!24305 (v!39745 lt!1440304))) rules!2999))))

(declare-fun lt!1440258 () Unit!62509)

(declare-fun lemmaCharactersSize!1447 (Token!12994) Unit!62509)

(assert (=> b!4045134 (= lt!1440258 (lemmaCharactersSize!1447 token!484))))

(declare-fun lt!1440295 () Unit!62509)

(assert (=> b!4045134 (= lt!1440295 (lemmaCharactersSize!1447 (_1!24305 (v!39745 lt!1440304))))))

(declare-fun b!4045135 () Bool)

(declare-fun e!2509835 () Bool)

(declare-fun e!2509847 () Bool)

(assert (=> b!4045135 (= e!2509835 e!2509847)))

(declare-fun res!1647702 () Bool)

(assert (=> b!4045135 (=> (not res!1647702) (not e!2509847))))

(declare-fun lt!1440300 () Option!9342)

(assert (=> b!4045135 (= res!1647702 (= (maxPrefix!3815 thiss!21717 rules!2999 lt!1440263) lt!1440300))))

(assert (=> b!4045135 (= lt!1440300 (Some!9341 lt!1440305))))

(assert (=> b!4045135 (= lt!1440305 (tuple2!42343 token!484 suffixResult!105))))

(assert (=> b!4045135 (= lt!1440263 (++!11330 prefix!494 suffix!1299))))

(declare-fun b!4045136 () Bool)

(declare-fun e!2509841 () Bool)

(declare-fun e!2509819 () Bool)

(assert (=> b!4045136 (= e!2509841 e!2509819)))

(declare-fun res!1647701 () Bool)

(assert (=> b!4045136 (=> res!1647701 e!2509819)))

(declare-fun lt!1440280 () List!43387)

(declare-fun lt!1440293 () List!43387)

(assert (=> b!4045136 (= res!1647701 (or (not (= lt!1440263 lt!1440293)) (not (= lt!1440263 lt!1440280))))))

(assert (=> b!4045136 (= lt!1440293 lt!1440280)))

(declare-fun lt!1440278 () List!43387)

(assert (=> b!4045136 (= lt!1440280 (++!11330 lt!1440285 lt!1440278))))

(declare-fun lt!1440286 () List!43387)

(assert (=> b!4045136 (= lt!1440293 (++!11330 lt!1440286 suffix!1299))))

(declare-fun lt!1440306 () List!43387)

(assert (=> b!4045136 (= lt!1440278 (++!11330 lt!1440306 suffix!1299))))

(declare-fun lt!1440290 () Unit!62509)

(declare-fun lemmaConcatAssociativity!2632 (List!43387 List!43387 List!43387) Unit!62509)

(assert (=> b!4045136 (= lt!1440290 (lemmaConcatAssociativity!2632 lt!1440285 lt!1440306 suffix!1299))))

(declare-fun b!4045137 () Bool)

(declare-fun tp!1227532 () Bool)

(declare-fun inv!21 (TokenValue!7158) Bool)

(assert (=> b!4045137 (= e!2509821 (and (inv!21 (value!218082 token!484)) e!2509846 tp!1227532))))

(declare-fun b!4045138 () Bool)

(declare-fun e!2509834 () Bool)

(assert (=> b!4045138 (= e!2509819 e!2509834)))

(declare-fun res!1647695 () Bool)

(assert (=> b!4045138 (=> res!1647695 e!2509834)))

(declare-fun lt!1440265 () Option!9342)

(assert (=> b!4045138 (= res!1647695 (not (= lt!1440265 lt!1440300)))))

(assert (=> b!4045138 (= lt!1440265 (Some!9341 (tuple2!42343 lt!1440255 suffixResult!105)))))

(assert (=> b!4045138 (= lt!1440265 (maxPrefixOneRule!2827 thiss!21717 (rule!10004 token!484) lt!1440263))))

(assert (=> b!4045138 (= lt!1440255 (Token!12995 lt!1440272 (rule!10004 token!484) lt!1440260 lt!1440285))))

(assert (=> b!4045138 (= lt!1440272 (apply!10117 (transformation!6928 (rule!10004 token!484)) (seqFromList!5145 lt!1440285)))))

(declare-fun lt!1440287 () Unit!62509)

(assert (=> b!4045138 (= lt!1440287 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1633 thiss!21717 rules!2999 lt!1440285 lt!1440263 suffixResult!105 (rule!10004 token!484)))))

(assert (=> b!4045138 (= lt!1440278 suffixResult!105)))

(declare-fun lt!1440283 () Unit!62509)

(assert (=> b!4045138 (= lt!1440283 (lemmaSamePrefixThenSameSuffix!2176 lt!1440285 lt!1440278 lt!1440285 suffixResult!105 lt!1440263))))

(assert (=> b!4045138 (isPrefix!4015 lt!1440285 lt!1440280)))

(declare-fun lt!1440298 () Unit!62509)

(assert (=> b!4045138 (= lt!1440298 (lemmaConcatTwoListThenFirstIsPrefix!2850 lt!1440285 lt!1440278))))

(declare-fun b!4045139 () Bool)

(declare-fun tp!1227543 () Bool)

(assert (=> b!4045139 (= e!2509823 (and tp_is_empty!20637 tp!1227543))))

(assert (=> b!4045140 (= e!2509837 (and tp!1227544 tp!1227538))))

(declare-fun b!4045141 () Bool)

(assert (=> b!4045141 (= e!2509829 e!2509822)))

(declare-fun res!1647682 () Bool)

(assert (=> b!4045141 (=> res!1647682 e!2509822)))

(assert (=> b!4045141 (= res!1647682 (not (= lt!1440267 lt!1440263)))))

(assert (=> b!4045141 (= lt!1440267 (++!11330 prefix!494 lt!1440299))))

(assert (=> b!4045141 (= lt!1440267 (++!11330 lt!1440257 lt!1440296))))

(declare-fun lt!1440256 () Unit!62509)

(assert (=> b!4045141 (= lt!1440256 (lemmaConcatAssociativity!2632 prefix!494 newSuffix!27 lt!1440296))))

(declare-fun b!4045142 () Bool)

(declare-fun tp!1227535 () Bool)

(assert (=> b!4045142 (= e!2509832 (and tp_is_empty!20637 tp!1227535))))

(declare-fun b!4045143 () Bool)

(declare-fun res!1647683 () Bool)

(assert (=> b!4045143 (=> (not res!1647683) (not e!2509827))))

(declare-fun rulesInvariant!5860 (LexerInterface!6517 List!43389) Bool)

(assert (=> b!4045143 (= res!1647683 (rulesInvariant!5860 thiss!21717 rules!2999))))

(declare-fun b!4045144 () Bool)

(assert (=> b!4045144 (= e!2509847 (not e!2509840))))

(declare-fun res!1647696 () Bool)

(assert (=> b!4045144 (=> res!1647696 e!2509840)))

(assert (=> b!4045144 (= res!1647696 (not (= lt!1440264 lt!1440263)))))

(assert (=> b!4045144 (= lt!1440264 (++!11330 lt!1440285 suffixResult!105))))

(declare-fun lt!1440268 () Unit!62509)

(assert (=> b!4045144 (= lt!1440268 (lemmaInv!1137 (transformation!6928 (rule!10004 token!484))))))

(assert (=> b!4045144 (ruleValid!2858 thiss!21717 (rule!10004 token!484))))

(declare-fun lt!1440303 () Unit!62509)

(assert (=> b!4045144 (= lt!1440303 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1928 thiss!21717 (rule!10004 token!484) rules!2999))))

(declare-fun b!4045145 () Bool)

(declare-fun e!2509849 () Bool)

(assert (=> b!4045145 (= e!2509849 e!2509835)))

(declare-fun res!1647690 () Bool)

(assert (=> b!4045145 (=> (not res!1647690) (not e!2509835))))

(declare-fun lt!1440253 () List!43387)

(assert (=> b!4045145 (= res!1647690 (= lt!1440253 lt!1440257))))

(assert (=> b!4045145 (= lt!1440257 (++!11330 prefix!494 newSuffix!27))))

(assert (=> b!4045145 (= lt!1440253 (++!11330 lt!1440285 newSuffixResult!27))))

(declare-fun b!4045146 () Bool)

(assert (=> b!4045146 (= e!2509827 e!2509849)))

(declare-fun res!1647694 () Bool)

(assert (=> b!4045146 (=> (not res!1647694) (not e!2509849))))

(declare-fun lt!1440266 () Int)

(assert (=> b!4045146 (= res!1647694 (>= lt!1440266 lt!1440260))))

(assert (=> b!4045146 (= lt!1440260 (size!32346 lt!1440285))))

(assert (=> b!4045146 (= lt!1440266 (size!32346 prefix!494))))

(assert (=> b!4045146 (= lt!1440285 (list!16114 (charsOf!4744 token!484)))))

(declare-fun b!4045147 () Bool)

(declare-fun tp!1227539 () Bool)

(assert (=> b!4045147 (= e!2509831 (and tp_is_empty!20637 tp!1227539))))

(declare-fun b!4045148 () Bool)

(assert (=> b!4045148 (= e!2509834 e!2509838)))

(declare-fun res!1647704 () Bool)

(assert (=> b!4045148 (=> res!1647704 e!2509838)))

(declare-fun matchR!5786 (Regex!11833 List!43387) Bool)

(assert (=> b!4045148 (= res!1647704 (not (matchR!5786 (regex!6928 (rule!10004 token!484)) lt!1440285)))))

(assert (=> b!4045148 (isPrefix!4015 lt!1440285 lt!1440257)))

(declare-fun lt!1440270 () Unit!62509)

(assert (=> b!4045148 (= lt!1440270 (lemmaPrefixStaysPrefixWhenAddingToSuffix!808 lt!1440285 prefix!494 newSuffix!27))))

(declare-fun lt!1440273 () Unit!62509)

(assert (=> b!4045148 (= lt!1440273 (lemmaPrefixStaysPrefixWhenAddingToSuffix!808 lt!1440285 prefix!494 suffix!1299))))

(declare-fun b!4045149 () Bool)

(declare-fun tp!1227536 () Bool)

(assert (=> b!4045149 (= e!2509850 (and e!2509826 tp!1227536))))

(declare-fun b!4045150 () Bool)

(declare-fun res!1647687 () Bool)

(assert (=> b!4045150 (=> (not res!1647687) (not e!2509827))))

(declare-fun isEmpty!25821 (List!43389) Bool)

(assert (=> b!4045150 (= res!1647687 (not (isEmpty!25821 rules!2999)))))

(declare-fun b!4045151 () Bool)

(assert (=> b!4045151 (= e!2509843 e!2509841)))

(declare-fun res!1647691 () Bool)

(assert (=> b!4045151 (=> res!1647691 e!2509841)))

(assert (=> b!4045151 (= res!1647691 (not (= lt!1440286 prefix!494)))))

(assert (=> b!4045151 (= lt!1440286 (++!11330 lt!1440285 lt!1440306))))

(assert (=> b!4045151 (= lt!1440306 (getSuffix!2432 prefix!494 lt!1440285))))

(assert (=> b!4045151 (isPrefix!4015 lt!1440285 prefix!494)))

(declare-fun lt!1440269 () Unit!62509)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!579 (List!43387 List!43387 List!43387) Unit!62509)

(assert (=> b!4045151 (= lt!1440269 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!579 prefix!494 lt!1440285 lt!1440263))))

(declare-fun b!4045152 () Bool)

(declare-fun res!1647692 () Bool)

(assert (=> b!4045152 (=> (not res!1647692) (not e!2509827))))

(assert (=> b!4045152 (= res!1647692 (>= (size!32346 suffix!1299) (size!32346 newSuffix!27)))))

(assert (= (and start!381488 res!1647681) b!4045150))

(assert (= (and b!4045150 res!1647687) b!4045143))

(assert (= (and b!4045143 res!1647683) b!4045152))

(assert (= (and b!4045152 res!1647692) b!4045124))

(assert (= (and b!4045124 res!1647705) b!4045146))

(assert (= (and b!4045146 res!1647694) b!4045145))

(assert (= (and b!4045145 res!1647690) b!4045135))

(assert (= (and b!4045135 res!1647702) b!4045144))

(assert (= (and b!4045144 (not res!1647696)) b!4045126))

(assert (= (and b!4045126 (not res!1647685)) b!4045151))

(assert (= (and b!4045151 (not res!1647691)) b!4045136))

(assert (= (and b!4045136 (not res!1647701)) b!4045138))

(assert (= (and b!4045138 (not res!1647695)) b!4045148))

(assert (= (and b!4045148 (not res!1647704)) b!4045120))

(assert (= (and b!4045120 res!1647684) b!4045133))

(assert (= (and b!4045133 res!1647698) b!4045118))

(assert (= (and b!4045118 res!1647697) b!4045129))

(assert (= (and b!4045120 (not res!1647689)) b!4045132))

(assert (= (and b!4045132 (not res!1647693)) b!4045134))

(assert (= (and b!4045134 (not res!1647688)) b!4045121))

(assert (= (and b!4045121 (not res!1647700)) b!4045141))

(assert (= (and b!4045141 (not res!1647682)) b!4045125))

(assert (= (and b!4045125 (not res!1647686)) b!4045128))

(assert (= (and b!4045128 (not res!1647703)) b!4045122))

(assert (= (and b!4045122 (not res!1647699)) b!4045130))

(assert (= (and start!381488 ((_ is Cons!43263) prefix!494)) b!4045131))

(assert (= b!4045127 b!4045140))

(assert (= b!4045137 b!4045127))

(assert (= start!381488 b!4045137))

(assert (= (and start!381488 ((_ is Cons!43263) suffixResult!105)) b!4045147))

(assert (= (and start!381488 ((_ is Cons!43263) suffix!1299)) b!4045119))

(assert (= (and start!381488 ((_ is Cons!43263) newSuffix!27)) b!4045139))

(assert (= b!4045117 b!4045123))

(assert (= b!4045149 b!4045117))

(assert (= (and start!381488 ((_ is Cons!43265) rules!2999)) b!4045149))

(assert (= (and start!381488 ((_ is Cons!43263) newSuffixResult!27)) b!4045142))

(declare-fun m!4643227 () Bool)

(assert (=> b!4045117 m!4643227))

(declare-fun m!4643229 () Bool)

(assert (=> b!4045117 m!4643229))

(declare-fun m!4643231 () Bool)

(assert (=> b!4045144 m!4643231))

(declare-fun m!4643233 () Bool)

(assert (=> b!4045144 m!4643233))

(declare-fun m!4643235 () Bool)

(assert (=> b!4045144 m!4643235))

(declare-fun m!4643237 () Bool)

(assert (=> b!4045144 m!4643237))

(declare-fun m!4643239 () Bool)

(assert (=> b!4045124 m!4643239))

(declare-fun m!4643241 () Bool)

(assert (=> b!4045150 m!4643241))

(declare-fun m!4643243 () Bool)

(assert (=> b!4045141 m!4643243))

(declare-fun m!4643245 () Bool)

(assert (=> b!4045141 m!4643245))

(declare-fun m!4643247 () Bool)

(assert (=> b!4045141 m!4643247))

(declare-fun m!4643249 () Bool)

(assert (=> b!4045148 m!4643249))

(declare-fun m!4643251 () Bool)

(assert (=> b!4045148 m!4643251))

(declare-fun m!4643253 () Bool)

(assert (=> b!4045148 m!4643253))

(declare-fun m!4643255 () Bool)

(assert (=> b!4045148 m!4643255))

(declare-fun m!4643257 () Bool)

(assert (=> b!4045143 m!4643257))

(declare-fun m!4643259 () Bool)

(assert (=> start!381488 m!4643259))

(declare-fun m!4643261 () Bool)

(assert (=> b!4045146 m!4643261))

(declare-fun m!4643263 () Bool)

(assert (=> b!4045146 m!4643263))

(declare-fun m!4643265 () Bool)

(assert (=> b!4045146 m!4643265))

(assert (=> b!4045146 m!4643265))

(declare-fun m!4643267 () Bool)

(assert (=> b!4045146 m!4643267))

(declare-fun m!4643269 () Bool)

(assert (=> b!4045126 m!4643269))

(declare-fun m!4643271 () Bool)

(assert (=> b!4045126 m!4643271))

(declare-fun m!4643273 () Bool)

(assert (=> b!4045126 m!4643273))

(declare-fun m!4643275 () Bool)

(assert (=> b!4045126 m!4643275))

(declare-fun m!4643277 () Bool)

(assert (=> b!4045126 m!4643277))

(declare-fun m!4643279 () Bool)

(assert (=> b!4045132 m!4643279))

(declare-fun m!4643281 () Bool)

(assert (=> b!4045132 m!4643281))

(declare-fun m!4643283 () Bool)

(assert (=> b!4045132 m!4643283))

(declare-fun m!4643285 () Bool)

(assert (=> b!4045132 m!4643285))

(declare-fun m!4643287 () Bool)

(assert (=> b!4045136 m!4643287))

(declare-fun m!4643289 () Bool)

(assert (=> b!4045136 m!4643289))

(declare-fun m!4643291 () Bool)

(assert (=> b!4045136 m!4643291))

(declare-fun m!4643293 () Bool)

(assert (=> b!4045136 m!4643293))

(declare-fun m!4643295 () Bool)

(assert (=> b!4045125 m!4643295))

(declare-fun m!4643297 () Bool)

(assert (=> b!4045125 m!4643297))

(declare-fun m!4643299 () Bool)

(assert (=> b!4045125 m!4643299))

(declare-fun m!4643301 () Bool)

(assert (=> b!4045127 m!4643301))

(declare-fun m!4643303 () Bool)

(assert (=> b!4045127 m!4643303))

(declare-fun m!4643305 () Bool)

(assert (=> b!4045120 m!4643305))

(declare-fun m!4643307 () Bool)

(assert (=> b!4045120 m!4643307))

(declare-fun m!4643309 () Bool)

(assert (=> b!4045120 m!4643309))

(declare-fun m!4643311 () Bool)

(assert (=> b!4045120 m!4643311))

(declare-fun m!4643313 () Bool)

(assert (=> b!4045130 m!4643313))

(declare-fun m!4643315 () Bool)

(assert (=> b!4045130 m!4643315))

(declare-fun m!4643317 () Bool)

(assert (=> b!4045130 m!4643317))

(declare-fun m!4643319 () Bool)

(assert (=> b!4045138 m!4643319))

(declare-fun m!4643321 () Bool)

(assert (=> b!4045138 m!4643321))

(declare-fun m!4643323 () Bool)

(assert (=> b!4045138 m!4643323))

(declare-fun m!4643325 () Bool)

(assert (=> b!4045138 m!4643325))

(declare-fun m!4643327 () Bool)

(assert (=> b!4045138 m!4643327))

(declare-fun m!4643329 () Bool)

(assert (=> b!4045138 m!4643329))

(declare-fun m!4643331 () Bool)

(assert (=> b!4045138 m!4643331))

(assert (=> b!4045138 m!4643323))

(declare-fun m!4643333 () Bool)

(assert (=> b!4045135 m!4643333))

(declare-fun m!4643335 () Bool)

(assert (=> b!4045135 m!4643335))

(declare-fun m!4643337 () Bool)

(assert (=> b!4045118 m!4643337))

(declare-fun m!4643339 () Bool)

(assert (=> b!4045152 m!4643339))

(declare-fun m!4643341 () Bool)

(assert (=> b!4045152 m!4643341))

(declare-fun m!4643343 () Bool)

(assert (=> b!4045121 m!4643343))

(declare-fun m!4643345 () Bool)

(assert (=> b!4045121 m!4643345))

(declare-fun m!4643347 () Bool)

(assert (=> b!4045137 m!4643347))

(declare-fun m!4643349 () Bool)

(assert (=> b!4045134 m!4643349))

(declare-fun m!4643351 () Bool)

(assert (=> b!4045134 m!4643351))

(declare-fun m!4643353 () Bool)

(assert (=> b!4045134 m!4643353))

(declare-fun m!4643355 () Bool)

(assert (=> b!4045134 m!4643355))

(declare-fun m!4643357 () Bool)

(assert (=> b!4045134 m!4643357))

(declare-fun m!4643359 () Bool)

(assert (=> b!4045134 m!4643359))

(declare-fun m!4643361 () Bool)

(assert (=> b!4045134 m!4643361))

(declare-fun m!4643363 () Bool)

(assert (=> b!4045134 m!4643363))

(declare-fun m!4643365 () Bool)

(assert (=> b!4045134 m!4643365))

(declare-fun m!4643367 () Bool)

(assert (=> b!4045134 m!4643367))

(declare-fun m!4643369 () Bool)

(assert (=> b!4045134 m!4643369))

(declare-fun m!4643371 () Bool)

(assert (=> b!4045134 m!4643371))

(assert (=> b!4045134 m!4643367))

(declare-fun m!4643373 () Bool)

(assert (=> b!4045134 m!4643373))

(declare-fun m!4643375 () Bool)

(assert (=> b!4045134 m!4643375))

(assert (=> b!4045134 m!4643359))

(declare-fun m!4643377 () Bool)

(assert (=> b!4045134 m!4643377))

(declare-fun m!4643379 () Bool)

(assert (=> b!4045134 m!4643379))

(declare-fun m!4643381 () Bool)

(assert (=> b!4045134 m!4643381))

(assert (=> b!4045134 m!4643353))

(declare-fun m!4643383 () Bool)

(assert (=> b!4045134 m!4643383))

(declare-fun m!4643385 () Bool)

(assert (=> b!4045145 m!4643385))

(declare-fun m!4643387 () Bool)

(assert (=> b!4045145 m!4643387))

(declare-fun m!4643389 () Bool)

(assert (=> b!4045122 m!4643389))

(declare-fun m!4643391 () Bool)

(assert (=> b!4045122 m!4643391))

(declare-fun m!4643393 () Bool)

(assert (=> b!4045151 m!4643393))

(declare-fun m!4643395 () Bool)

(assert (=> b!4045151 m!4643395))

(declare-fun m!4643397 () Bool)

(assert (=> b!4045151 m!4643397))

(declare-fun m!4643399 () Bool)

(assert (=> b!4045151 m!4643399))

(check-sat (not b!4045143) (not b!4045148) (not b_next!113309) (not b!4045134) (not b_next!113311) b_and!311059 (not b!4045124) (not b!4045117) (not b!4045146) (not b!4045152) b_and!311065 tp_is_empty!20637 (not b!4045120) (not b!4045142) (not b!4045137) (not b!4045150) (not b!4045149) (not b!4045118) b_and!311063 (not b!4045122) (not b!4045141) (not b!4045139) (not b!4045125) (not b!4045145) (not b!4045130) (not b!4045151) b_and!311061 (not b!4045131) (not b!4045144) (not start!381488) (not b!4045121) (not b!4045132) (not b_next!113305) (not b!4045136) (not b_next!113307) (not b!4045147) (not b!4045126) (not b!4045135) (not b!4045127) (not b!4045119) (not b!4045138))
(check-sat b_and!311063 (not b_next!113309) b_and!311061 (not b_next!113311) b_and!311059 (not b_next!113305) b_and!311065 (not b_next!113307))
