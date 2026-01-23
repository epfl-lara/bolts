; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390638 () Bool)

(assert start!390638)

(declare-fun b!4120319 () Bool)

(declare-fun b_free!116459 () Bool)

(declare-fun b_next!117163 () Bool)

(assert (=> b!4120319 (= b_free!116459 (not b_next!117163))))

(declare-fun tp!1255580 () Bool)

(declare-fun b_and!318661 () Bool)

(assert (=> b!4120319 (= tp!1255580 b_and!318661)))

(declare-fun b_free!116461 () Bool)

(declare-fun b_next!117165 () Bool)

(assert (=> b!4120319 (= b_free!116461 (not b_next!117165))))

(declare-fun tp!1255572 () Bool)

(declare-fun b_and!318663 () Bool)

(assert (=> b!4120319 (= tp!1255572 b_and!318663)))

(declare-fun b!4120299 () Bool)

(declare-fun b_free!116463 () Bool)

(declare-fun b_next!117167 () Bool)

(assert (=> b!4120299 (= b_free!116463 (not b_next!117167))))

(declare-fun tp!1255574 () Bool)

(declare-fun b_and!318665 () Bool)

(assert (=> b!4120299 (= tp!1255574 b_and!318665)))

(declare-fun b_free!116465 () Bool)

(declare-fun b_next!117169 () Bool)

(assert (=> b!4120299 (= b_free!116465 (not b_next!117169))))

(declare-fun tp!1255573 () Bool)

(declare-fun b_and!318667 () Bool)

(assert (=> b!4120299 (= tp!1255573 b_and!318667)))

(declare-fun b!4120303 () Bool)

(declare-fun b_free!116467 () Bool)

(declare-fun b_next!117171 () Bool)

(assert (=> b!4120303 (= b_free!116467 (not b_next!117171))))

(declare-fun tp!1255571 () Bool)

(declare-fun b_and!318669 () Bool)

(assert (=> b!4120303 (= tp!1255571 b_and!318669)))

(declare-fun b_free!116469 () Bool)

(declare-fun b_next!117173 () Bool)

(assert (=> b!4120303 (= b_free!116469 (not b_next!117173))))

(declare-fun tp!1255581 () Bool)

(declare-fun b_and!318671 () Bool)

(assert (=> b!4120303 (= tp!1255581 b_and!318671)))

(declare-fun b!4120298 () Bool)

(declare-fun e!2556642 () Bool)

(declare-fun e!2556628 () Bool)

(assert (=> b!4120298 (= e!2556642 (not e!2556628))))

(declare-fun res!1683284 () Bool)

(assert (=> b!4120298 (=> res!1683284 e!2556628)))

(declare-datatypes ((List!44671 0))(
  ( (Nil!44547) (Cons!44547 (h!49967 (_ BitVec 16)) (t!340686 List!44671)) )
))
(declare-datatypes ((TokenValue!7504 0))(
  ( (FloatLiteralValue!15008 (text!52973 List!44671)) (TokenValueExt!7503 (__x!27225 Int)) (Broken!37520 (value!227837 List!44671)) (Object!7627) (End!7504) (Def!7504) (Underscore!7504) (Match!7504) (Else!7504) (Error!7504) (Case!7504) (If!7504) (Extends!7504) (Abstract!7504) (Class!7504) (Val!7504) (DelimiterValue!15008 (del!7564 List!44671)) (KeywordValue!7510 (value!227838 List!44671)) (CommentValue!15008 (value!227839 List!44671)) (WhitespaceValue!15008 (value!227840 List!44671)) (IndentationValue!7504 (value!227841 List!44671)) (String!51269) (Int32!7504) (Broken!37521 (value!227842 List!44671)) (Boolean!7505) (Unit!63898) (OperatorValue!7507 (op!7564 List!44671)) (IdentifierValue!15008 (value!227843 List!44671)) (IdentifierValue!15009 (value!227844 List!44671)) (WhitespaceValue!15009 (value!227845 List!44671)) (True!15008) (False!15008) (Broken!37522 (value!227846 List!44671)) (Broken!37523 (value!227847 List!44671)) (True!15009) (RightBrace!7504) (RightBracket!7504) (Colon!7504) (Null!7504) (Comma!7504) (LeftBracket!7504) (False!15009) (LeftBrace!7504) (ImaginaryLiteralValue!7504 (text!52974 List!44671)) (StringLiteralValue!22512 (value!227848 List!44671)) (EOFValue!7504 (value!227849 List!44671)) (IdentValue!7504 (value!227850 List!44671)) (DelimiterValue!15009 (value!227851 List!44671)) (DedentValue!7504 (value!227852 List!44671)) (NewLineValue!7504 (value!227853 List!44671)) (IntegerValue!22512 (value!227854 (_ BitVec 32)) (text!52975 List!44671)) (IntegerValue!22513 (value!227855 Int) (text!52976 List!44671)) (Times!7504) (Or!7504) (Equal!7504) (Minus!7504) (Broken!37524 (value!227856 List!44671)) (And!7504) (Div!7504) (LessEqual!7504) (Mod!7504) (Concat!19683) (Not!7504) (Plus!7504) (SpaceValue!7504 (value!227857 List!44671)) (IntegerValue!22514 (value!227858 Int) (text!52977 List!44671)) (StringLiteralValue!22513 (text!52978 List!44671)) (FloatLiteralValue!15009 (text!52979 List!44671)) (BytesLiteralValue!7504 (value!227859 List!44671)) (CommentValue!15009 (value!227860 List!44671)) (StringLiteralValue!22514 (value!227861 List!44671)) (ErrorTokenValue!7504 (msg!7565 List!44671)) )
))
(declare-datatypes ((C!24544 0))(
  ( (C!24545 (val!14382 Int)) )
))
(declare-datatypes ((List!44672 0))(
  ( (Nil!44548) (Cons!44548 (h!49968 C!24544) (t!340687 List!44672)) )
))
(declare-datatypes ((IArray!26975 0))(
  ( (IArray!26976 (innerList!13545 List!44672)) )
))
(declare-datatypes ((Conc!13485 0))(
  ( (Node!13485 (left!33368 Conc!13485) (right!33698 Conc!13485) (csize!27200 Int) (cheight!13696 Int)) (Leaf!20837 (xs!16791 IArray!26975) (csize!27201 Int)) (Empty!13485) )
))
(declare-datatypes ((BalanceConc!26564 0))(
  ( (BalanceConc!26565 (c!707532 Conc!13485)) )
))
(declare-datatypes ((Regex!12179 0))(
  ( (ElementMatch!12179 (c!707533 C!24544)) (Concat!19684 (regOne!24870 Regex!12179) (regTwo!24870 Regex!12179)) (EmptyExpr!12179) (Star!12179 (reg!12508 Regex!12179)) (EmptyLang!12179) (Union!12179 (regOne!24871 Regex!12179) (regTwo!24871 Regex!12179)) )
))
(declare-datatypes ((String!51270 0))(
  ( (String!51271 (value!227862 String)) )
))
(declare-datatypes ((TokenValueInjection!14436 0))(
  ( (TokenValueInjection!14437 (toValue!9926 Int) (toChars!9785 Int)) )
))
(declare-datatypes ((Rule!14348 0))(
  ( (Rule!14349 (regex!7274 Regex!12179) (tag!8134 String!51270) (isSeparator!7274 Bool) (transformation!7274 TokenValueInjection!14436)) )
))
(declare-datatypes ((List!44673 0))(
  ( (Nil!44549) (Cons!44549 (h!49969 Rule!14348) (t!340688 List!44673)) )
))
(declare-fun rules!3756 () List!44673)

(declare-fun rBis!149 () Rule!14348)

(get-info :version)

(assert (=> b!4120298 (= res!1683284 (or (not ((_ is Cons!44549) rules!3756)) (not (= (h!49969 rules!3756) rBis!149))))))

(declare-datatypes ((LexerInterface!6863 0))(
  ( (LexerInterfaceExt!6860 (__x!27226 Int)) (Lexer!6861) )
))
(declare-fun thiss!25645 () LexerInterface!6863)

(declare-fun r!4008 () Rule!14348)

(declare-datatypes ((Unit!63899 0))(
  ( (Unit!63900) )
))
(declare-fun lt!1469882 () Unit!63899)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2126 (LexerInterface!6863 Rule!14348 List!44673) Unit!63899)

(assert (=> b!4120298 (= lt!1469882 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2126 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3082 (LexerInterface!6863 Rule!14348) Bool)

(assert (=> b!4120298 (ruleValid!3082 thiss!25645 rBis!149)))

(declare-fun lt!1469881 () Unit!63899)

(assert (=> b!4120298 (= lt!1469881 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2126 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2556640 () Bool)

(assert (=> b!4120299 (= e!2556640 (and tp!1255574 tp!1255573))))

(declare-fun b!4120300 () Bool)

(declare-fun res!1683296 () Bool)

(assert (=> b!4120300 (=> (not res!1683296) (not e!2556642))))

(assert (=> b!4120300 (= res!1683296 (ruleValid!3082 thiss!25645 r!4008))))

(declare-fun res!1683289 () Bool)

(declare-fun e!2556633 () Bool)

(assert (=> start!390638 (=> (not res!1683289) (not e!2556633))))

(assert (=> start!390638 (= res!1683289 ((_ is Lexer!6861) thiss!25645))))

(assert (=> start!390638 e!2556633))

(declare-fun e!2556631 () Bool)

(assert (=> start!390638 e!2556631))

(declare-fun e!2556637 () Bool)

(assert (=> start!390638 e!2556637))

(assert (=> start!390638 true))

(declare-fun e!2556636 () Bool)

(assert (=> start!390638 e!2556636))

(declare-fun e!2556630 () Bool)

(assert (=> start!390638 e!2556630))

(declare-fun e!2556641 () Bool)

(assert (=> start!390638 e!2556641))

(declare-fun b!4120301 () Bool)

(declare-fun res!1683283 () Bool)

(assert (=> b!4120301 (=> (not res!1683283) (not e!2556633))))

(declare-fun contains!8946 (List!44673 Rule!14348) Bool)

(assert (=> b!4120301 (= res!1683283 (contains!8946 rules!3756 rBis!149))))

(declare-fun b!4120302 () Bool)

(declare-fun tp_is_empty!21281 () Bool)

(declare-fun tp!1255575 () Bool)

(assert (=> b!4120302 (= e!2556630 (and tp_is_empty!21281 tp!1255575))))

(declare-fun e!2556627 () Bool)

(assert (=> b!4120303 (= e!2556627 (and tp!1255571 tp!1255581))))

(declare-fun b!4120304 () Bool)

(declare-fun res!1683286 () Bool)

(assert (=> b!4120304 (=> (not res!1683286) (not e!2556633))))

(assert (=> b!4120304 (= res!1683286 (contains!8946 rules!3756 r!4008))))

(declare-fun b!4120305 () Bool)

(declare-fun res!1683294 () Bool)

(assert (=> b!4120305 (=> (not res!1683294) (not e!2556633))))

(declare-fun p!2912 () List!44672)

(declare-fun input!3238 () List!44672)

(declare-fun isPrefix!4209 (List!44672 List!44672) Bool)

(assert (=> b!4120305 (= res!1683294 (isPrefix!4209 p!2912 input!3238))))

(declare-fun b!4120306 () Bool)

(declare-fun res!1683295 () Bool)

(assert (=> b!4120306 (=> (not res!1683295) (not e!2556633))))

(declare-fun isEmpty!26496 (List!44672) Bool)

(assert (=> b!4120306 (= res!1683295 (not (isEmpty!26496 p!2912)))))

(declare-fun b!4120307 () Bool)

(declare-fun e!2556639 () Bool)

(declare-fun lt!1469887 () BalanceConc!26564)

(declare-fun size!32968 (List!44672) Int)

(declare-fun list!16345 (BalanceConc!26564) List!44672)

(assert (=> b!4120307 (= e!2556639 (>= (size!32968 input!3238) (size!32968 (list!16345 lt!1469887))))))

(declare-fun b!4120308 () Bool)

(declare-fun res!1683291 () Bool)

(assert (=> b!4120308 (=> (not res!1683291) (not e!2556642))))

(declare-fun getIndex!622 (List!44673 Rule!14348) Int)

(assert (=> b!4120308 (= res!1683291 (< (getIndex!622 rules!3756 rBis!149) (getIndex!622 rules!3756 r!4008)))))

(declare-fun tp!1255578 () Bool)

(declare-fun e!2556626 () Bool)

(declare-fun b!4120309 () Bool)

(declare-fun inv!59130 (String!51270) Bool)

(declare-fun inv!59132 (TokenValueInjection!14436) Bool)

(assert (=> b!4120309 (= e!2556626 (and tp!1255578 (inv!59130 (tag!8134 (h!49969 rules!3756))) (inv!59132 (transformation!7274 (h!49969 rules!3756))) e!2556640))))

(declare-fun b!4120310 () Bool)

(assert (=> b!4120310 (= e!2556633 e!2556642)))

(declare-fun res!1683290 () Bool)

(assert (=> b!4120310 (=> (not res!1683290) (not e!2556642))))

(declare-fun lt!1469889 () Int)

(declare-fun lt!1469885 () TokenValue!7504)

(declare-datatypes ((Token!13478 0))(
  ( (Token!13479 (value!227863 TokenValue!7504) (rule!10346 Rule!14348) (size!32969 Int) (originalCharacters!7770 List!44672)) )
))
(declare-datatypes ((tuple2!43018 0))(
  ( (tuple2!43019 (_1!24643 Token!13478) (_2!24643 List!44672)) )
))
(declare-datatypes ((Option!9582 0))(
  ( (None!9581) (Some!9581 (v!40165 tuple2!43018)) )
))
(declare-fun maxPrefix!4055 (LexerInterface!6863 List!44673 List!44672) Option!9582)

(declare-fun getSuffix!2538 (List!44672 List!44672) List!44672)

(assert (=> b!4120310 (= res!1683290 (= (maxPrefix!4055 thiss!25645 rules!3756 input!3238) (Some!9581 (tuple2!43019 (Token!13479 lt!1469885 r!4008 lt!1469889 p!2912) (getSuffix!2538 input!3238 p!2912)))))))

(assert (=> b!4120310 (= lt!1469889 (size!32968 p!2912))))

(declare-fun lt!1469890 () BalanceConc!26564)

(declare-fun apply!10347 (TokenValueInjection!14436 BalanceConc!26564) TokenValue!7504)

(assert (=> b!4120310 (= lt!1469885 (apply!10347 (transformation!7274 r!4008) lt!1469890))))

(declare-fun lt!1469883 () Unit!63899)

(declare-fun lemmaSemiInverse!2132 (TokenValueInjection!14436 BalanceConc!26564) Unit!63899)

(assert (=> b!4120310 (= lt!1469883 (lemmaSemiInverse!2132 (transformation!7274 r!4008) lt!1469890))))

(declare-fun seqFromList!5391 (List!44672) BalanceConc!26564)

(assert (=> b!4120310 (= lt!1469890 (seqFromList!5391 p!2912))))

(declare-fun b!4120311 () Bool)

(declare-fun e!2556634 () Bool)

(assert (=> b!4120311 (= e!2556628 e!2556634)))

(declare-fun res!1683288 () Bool)

(assert (=> b!4120311 (=> res!1683288 e!2556634)))

(declare-fun lt!1469886 () Option!9582)

(declare-fun isEmpty!26497 (Option!9582) Bool)

(assert (=> b!4120311 (= res!1683288 (isEmpty!26497 lt!1469886))))

(declare-fun maxPrefixOneRule!3005 (LexerInterface!6863 Rule!14348 List!44672) Option!9582)

(assert (=> b!4120311 (= lt!1469886 (maxPrefixOneRule!3005 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4120311 (not (= rBis!149 r!4008))))

(declare-fun lt!1469884 () Unit!63899)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!14 (LexerInterface!6863 List!44673 Rule!14348 Rule!14348) Unit!63899)

(assert (=> b!4120311 (= lt!1469884 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!14 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6429 (List!44673) List!44673)

(assert (=> b!4120311 (contains!8946 (tail!6429 rules!3756) r!4008)))

(declare-fun lt!1469888 () Unit!63899)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!16 (List!44673 Rule!14348 Rule!14348) Unit!63899)

(assert (=> b!4120311 (= lt!1469888 (lemmaGetIndexBiggerAndHeadEqThenTailContains!16 rules!3756 rBis!149 r!4008))))

(declare-fun e!2556632 () Bool)

(declare-fun b!4120312 () Bool)

(declare-fun tp!1255576 () Bool)

(assert (=> b!4120312 (= e!2556641 (and tp!1255576 (inv!59130 (tag!8134 rBis!149)) (inv!59132 (transformation!7274 rBis!149)) e!2556632))))

(declare-fun b!4120313 () Bool)

(declare-fun tp!1255579 () Bool)

(assert (=> b!4120313 (= e!2556637 (and tp_is_empty!21281 tp!1255579))))

(declare-fun b!4120314 () Bool)

(assert (=> b!4120314 (= e!2556634 e!2556639)))

(declare-fun res!1683287 () Bool)

(assert (=> b!4120314 (=> res!1683287 e!2556639)))

(declare-fun size!32970 (BalanceConc!26564) Int)

(assert (=> b!4120314 (= res!1683287 (<= (size!32970 lt!1469887) lt!1469889))))

(declare-fun charsOf!4896 (Token!13478) BalanceConc!26564)

(declare-fun get!14529 (Option!9582) tuple2!43018)

(assert (=> b!4120314 (= lt!1469887 (charsOf!4896 (_1!24643 (get!14529 lt!1469886))))))

(declare-fun b!4120315 () Bool)

(declare-fun res!1683292 () Bool)

(assert (=> b!4120315 (=> (not res!1683292) (not e!2556642))))

(declare-fun matchR!6010 (Regex!12179 List!44672) Bool)

(assert (=> b!4120315 (= res!1683292 (matchR!6010 (regex!7274 r!4008) p!2912))))

(declare-fun b!4120316 () Bool)

(declare-fun res!1683293 () Bool)

(assert (=> b!4120316 (=> (not res!1683293) (not e!2556633))))

(declare-fun isEmpty!26498 (List!44673) Bool)

(assert (=> b!4120316 (= res!1683293 (not (isEmpty!26498 rules!3756)))))

(declare-fun tp!1255577 () Bool)

(declare-fun b!4120317 () Bool)

(assert (=> b!4120317 (= e!2556636 (and tp!1255577 (inv!59130 (tag!8134 r!4008)) (inv!59132 (transformation!7274 r!4008)) e!2556627))))

(declare-fun b!4120318 () Bool)

(declare-fun tp!1255582 () Bool)

(assert (=> b!4120318 (= e!2556631 (and e!2556626 tp!1255582))))

(assert (=> b!4120319 (= e!2556632 (and tp!1255580 tp!1255572))))

(declare-fun b!4120320 () Bool)

(declare-fun res!1683285 () Bool)

(assert (=> b!4120320 (=> (not res!1683285) (not e!2556633))))

(declare-fun rulesInvariant!6160 (LexerInterface!6863 List!44673) Bool)

(assert (=> b!4120320 (= res!1683285 (rulesInvariant!6160 thiss!25645 rules!3756))))

(assert (= (and start!390638 res!1683289) b!4120305))

(assert (= (and b!4120305 res!1683294) b!4120316))

(assert (= (and b!4120316 res!1683293) b!4120320))

(assert (= (and b!4120320 res!1683285) b!4120304))

(assert (= (and b!4120304 res!1683286) b!4120301))

(assert (= (and b!4120301 res!1683283) b!4120306))

(assert (= (and b!4120306 res!1683295) b!4120310))

(assert (= (and b!4120310 res!1683290) b!4120315))

(assert (= (and b!4120315 res!1683292) b!4120308))

(assert (= (and b!4120308 res!1683291) b!4120300))

(assert (= (and b!4120300 res!1683296) b!4120298))

(assert (= (and b!4120298 (not res!1683284)) b!4120311))

(assert (= (and b!4120311 (not res!1683288)) b!4120314))

(assert (= (and b!4120314 (not res!1683287)) b!4120307))

(assert (= b!4120309 b!4120299))

(assert (= b!4120318 b!4120309))

(assert (= (and start!390638 ((_ is Cons!44549) rules!3756)) b!4120318))

(assert (= (and start!390638 ((_ is Cons!44548) p!2912)) b!4120313))

(assert (= b!4120317 b!4120303))

(assert (= start!390638 b!4120317))

(assert (= (and start!390638 ((_ is Cons!44548) input!3238)) b!4120302))

(assert (= b!4120312 b!4120319))

(assert (= start!390638 b!4120312))

(declare-fun m!4719495 () Bool)

(assert (=> b!4120298 m!4719495))

(declare-fun m!4719497 () Bool)

(assert (=> b!4120298 m!4719497))

(declare-fun m!4719499 () Bool)

(assert (=> b!4120298 m!4719499))

(declare-fun m!4719501 () Bool)

(assert (=> b!4120304 m!4719501))

(declare-fun m!4719503 () Bool)

(assert (=> b!4120310 m!4719503))

(declare-fun m!4719505 () Bool)

(assert (=> b!4120310 m!4719505))

(declare-fun m!4719507 () Bool)

(assert (=> b!4120310 m!4719507))

(declare-fun m!4719509 () Bool)

(assert (=> b!4120310 m!4719509))

(declare-fun m!4719511 () Bool)

(assert (=> b!4120310 m!4719511))

(declare-fun m!4719513 () Bool)

(assert (=> b!4120310 m!4719513))

(declare-fun m!4719515 () Bool)

(assert (=> b!4120312 m!4719515))

(declare-fun m!4719517 () Bool)

(assert (=> b!4120312 m!4719517))

(declare-fun m!4719519 () Bool)

(assert (=> b!4120301 m!4719519))

(declare-fun m!4719521 () Bool)

(assert (=> b!4120320 m!4719521))

(declare-fun m!4719523 () Bool)

(assert (=> b!4120306 m!4719523))

(declare-fun m!4719525 () Bool)

(assert (=> b!4120307 m!4719525))

(declare-fun m!4719527 () Bool)

(assert (=> b!4120307 m!4719527))

(assert (=> b!4120307 m!4719527))

(declare-fun m!4719529 () Bool)

(assert (=> b!4120307 m!4719529))

(declare-fun m!4719531 () Bool)

(assert (=> b!4120309 m!4719531))

(declare-fun m!4719533 () Bool)

(assert (=> b!4120309 m!4719533))

(declare-fun m!4719535 () Bool)

(assert (=> b!4120317 m!4719535))

(declare-fun m!4719537 () Bool)

(assert (=> b!4120317 m!4719537))

(declare-fun m!4719539 () Bool)

(assert (=> b!4120311 m!4719539))

(declare-fun m!4719541 () Bool)

(assert (=> b!4120311 m!4719541))

(assert (=> b!4120311 m!4719539))

(declare-fun m!4719543 () Bool)

(assert (=> b!4120311 m!4719543))

(declare-fun m!4719545 () Bool)

(assert (=> b!4120311 m!4719545))

(declare-fun m!4719547 () Bool)

(assert (=> b!4120311 m!4719547))

(declare-fun m!4719549 () Bool)

(assert (=> b!4120311 m!4719549))

(declare-fun m!4719551 () Bool)

(assert (=> b!4120316 m!4719551))

(declare-fun m!4719553 () Bool)

(assert (=> b!4120315 m!4719553))

(declare-fun m!4719555 () Bool)

(assert (=> b!4120308 m!4719555))

(declare-fun m!4719557 () Bool)

(assert (=> b!4120308 m!4719557))

(declare-fun m!4719559 () Bool)

(assert (=> b!4120314 m!4719559))

(declare-fun m!4719561 () Bool)

(assert (=> b!4120314 m!4719561))

(declare-fun m!4719563 () Bool)

(assert (=> b!4120314 m!4719563))

(declare-fun m!4719565 () Bool)

(assert (=> b!4120305 m!4719565))

(declare-fun m!4719567 () Bool)

(assert (=> b!4120300 m!4719567))

(check-sat (not b_next!117167) b_and!318671 (not b!4120310) (not b!4120302) b_and!318663 (not b!4120317) (not b!4120318) tp_is_empty!21281 (not b!4120313) b_and!318667 b_and!318665 (not b_next!117171) (not b_next!117165) (not b!4120315) b_and!318661 (not b!4120304) (not b_next!117169) (not b!4120301) (not b!4120300) (not b_next!117163) (not b!4120311) (not b!4120298) (not b!4120314) (not b_next!117173) (not b!4120306) (not b!4120307) (not b!4120316) (not b!4120320) b_and!318669 (not b!4120312) (not b!4120309) (not b!4120305) (not b!4120308))
(check-sat (not b_next!117167) b_and!318671 (not b_next!117163) b_and!318663 (not b_next!117173) b_and!318667 b_and!318669 b_and!318665 (not b_next!117171) (not b_next!117165) b_and!318661 (not b_next!117169))
(get-model)

(declare-fun d!1221556 () Bool)

(declare-fun res!1683306 () Bool)

(declare-fun e!2556645 () Bool)

(assert (=> d!1221556 (=> (not res!1683306) (not e!2556645))))

(declare-fun rulesValid!2848 (LexerInterface!6863 List!44673) Bool)

(assert (=> d!1221556 (= res!1683306 (rulesValid!2848 thiss!25645 rules!3756))))

(assert (=> d!1221556 (= (rulesInvariant!6160 thiss!25645 rules!3756) e!2556645)))

(declare-fun b!4120323 () Bool)

(declare-datatypes ((List!44675 0))(
  ( (Nil!44551) (Cons!44551 (h!49971 String!51270) (t!340738 List!44675)) )
))
(declare-fun noDuplicateTag!2927 (LexerInterface!6863 List!44673 List!44675) Bool)

(assert (=> b!4120323 (= e!2556645 (noDuplicateTag!2927 thiss!25645 rules!3756 Nil!44551))))

(assert (= (and d!1221556 res!1683306) b!4120323))

(declare-fun m!4719569 () Bool)

(assert (=> d!1221556 m!4719569))

(declare-fun m!4719571 () Bool)

(assert (=> b!4120323 m!4719571))

(assert (=> b!4120320 d!1221556))

(declare-fun d!1221562 () Bool)

(assert (=> d!1221562 (= (inv!59130 (tag!8134 (h!49969 rules!3756))) (= (mod (str.len (value!227862 (tag!8134 (h!49969 rules!3756)))) 2) 0))))

(assert (=> b!4120309 d!1221562))

(declare-fun d!1221564 () Bool)

(declare-fun res!1683312 () Bool)

(declare-fun e!2556660 () Bool)

(assert (=> d!1221564 (=> (not res!1683312) (not e!2556660))))

(declare-fun semiInverseModEq!3134 (Int Int) Bool)

(assert (=> d!1221564 (= res!1683312 (semiInverseModEq!3134 (toChars!9785 (transformation!7274 (h!49969 rules!3756))) (toValue!9926 (transformation!7274 (h!49969 rules!3756)))))))

(assert (=> d!1221564 (= (inv!59132 (transformation!7274 (h!49969 rules!3756))) e!2556660)))

(declare-fun b!4120345 () Bool)

(declare-fun equivClasses!3033 (Int Int) Bool)

(assert (=> b!4120345 (= e!2556660 (equivClasses!3033 (toChars!9785 (transformation!7274 (h!49969 rules!3756))) (toValue!9926 (transformation!7274 (h!49969 rules!3756)))))))

(assert (= (and d!1221564 res!1683312) b!4120345))

(declare-fun m!4719581 () Bool)

(assert (=> d!1221564 m!4719581))

(declare-fun m!4719583 () Bool)

(assert (=> b!4120345 m!4719583))

(assert (=> b!4120309 d!1221564))

(declare-fun d!1221572 () Bool)

(assert (=> d!1221572 (ruleValid!3082 thiss!25645 r!4008)))

(declare-fun lt!1469901 () Unit!63899)

(declare-fun choose!25179 (LexerInterface!6863 Rule!14348 List!44673) Unit!63899)

(assert (=> d!1221572 (= lt!1469901 (choose!25179 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221572 (contains!8946 rules!3756 r!4008)))

(assert (=> d!1221572 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2126 thiss!25645 r!4008 rules!3756) lt!1469901)))

(declare-fun bs!594682 () Bool)

(assert (= bs!594682 d!1221572))

(assert (=> bs!594682 m!4719567))

(declare-fun m!4719597 () Bool)

(assert (=> bs!594682 m!4719597))

(assert (=> bs!594682 m!4719501))

(assert (=> b!4120298 d!1221572))

(declare-fun d!1221582 () Bool)

(declare-fun res!1683329 () Bool)

(declare-fun e!2556675 () Bool)

(assert (=> d!1221582 (=> (not res!1683329) (not e!2556675))))

(declare-fun validRegex!5472 (Regex!12179) Bool)

(assert (=> d!1221582 (= res!1683329 (validRegex!5472 (regex!7274 rBis!149)))))

(assert (=> d!1221582 (= (ruleValid!3082 thiss!25645 rBis!149) e!2556675)))

(declare-fun b!4120370 () Bool)

(declare-fun res!1683330 () Bool)

(assert (=> b!4120370 (=> (not res!1683330) (not e!2556675))))

(declare-fun nullable!4272 (Regex!12179) Bool)

(assert (=> b!4120370 (= res!1683330 (not (nullable!4272 (regex!7274 rBis!149))))))

(declare-fun b!4120371 () Bool)

(assert (=> b!4120371 (= e!2556675 (not (= (tag!8134 rBis!149) (String!51271 ""))))))

(assert (= (and d!1221582 res!1683329) b!4120370))

(assert (= (and b!4120370 res!1683330) b!4120371))

(declare-fun m!4719613 () Bool)

(assert (=> d!1221582 m!4719613))

(declare-fun m!4719615 () Bool)

(assert (=> b!4120370 m!4719615))

(assert (=> b!4120298 d!1221582))

(declare-fun d!1221598 () Bool)

(assert (=> d!1221598 (ruleValid!3082 thiss!25645 rBis!149)))

(declare-fun lt!1469906 () Unit!63899)

(assert (=> d!1221598 (= lt!1469906 (choose!25179 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221598 (contains!8946 rules!3756 rBis!149)))

(assert (=> d!1221598 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2126 thiss!25645 rBis!149 rules!3756) lt!1469906)))

(declare-fun bs!594684 () Bool)

(assert (= bs!594684 d!1221598))

(assert (=> bs!594684 m!4719497))

(declare-fun m!4719617 () Bool)

(assert (=> bs!594684 m!4719617))

(assert (=> bs!594684 m!4719519))

(assert (=> b!4120298 d!1221598))

(declare-fun d!1221600 () Bool)

(declare-fun res!1683331 () Bool)

(declare-fun e!2556676 () Bool)

(assert (=> d!1221600 (=> (not res!1683331) (not e!2556676))))

(assert (=> d!1221600 (= res!1683331 (validRegex!5472 (regex!7274 r!4008)))))

(assert (=> d!1221600 (= (ruleValid!3082 thiss!25645 r!4008) e!2556676)))

(declare-fun b!4120372 () Bool)

(declare-fun res!1683332 () Bool)

(assert (=> b!4120372 (=> (not res!1683332) (not e!2556676))))

(assert (=> b!4120372 (= res!1683332 (not (nullable!4272 (regex!7274 r!4008))))))

(declare-fun b!4120373 () Bool)

(assert (=> b!4120373 (= e!2556676 (not (= (tag!8134 r!4008) (String!51271 ""))))))

(assert (= (and d!1221600 res!1683331) b!4120372))

(assert (= (and b!4120372 res!1683332) b!4120373))

(declare-fun m!4719619 () Bool)

(assert (=> d!1221600 m!4719619))

(declare-fun m!4719621 () Bool)

(assert (=> b!4120372 m!4719621))

(assert (=> b!4120300 d!1221600))

(declare-fun d!1221602 () Bool)

(declare-fun lt!1469916 () List!44672)

(declare-fun ++!11550 (List!44672 List!44672) List!44672)

(assert (=> d!1221602 (= (++!11550 p!2912 lt!1469916) input!3238)))

(declare-fun e!2556693 () List!44672)

(assert (=> d!1221602 (= lt!1469916 e!2556693)))

(declare-fun c!707551 () Bool)

(assert (=> d!1221602 (= c!707551 ((_ is Cons!44548) p!2912))))

(assert (=> d!1221602 (>= (size!32968 input!3238) (size!32968 p!2912))))

(assert (=> d!1221602 (= (getSuffix!2538 input!3238 p!2912) lt!1469916)))

(declare-fun b!4120394 () Bool)

(declare-fun tail!6431 (List!44672) List!44672)

(assert (=> b!4120394 (= e!2556693 (getSuffix!2538 (tail!6431 input!3238) (t!340687 p!2912)))))

(declare-fun b!4120395 () Bool)

(assert (=> b!4120395 (= e!2556693 input!3238)))

(assert (= (and d!1221602 c!707551) b!4120394))

(assert (= (and d!1221602 (not c!707551)) b!4120395))

(declare-fun m!4719643 () Bool)

(assert (=> d!1221602 m!4719643))

(assert (=> d!1221602 m!4719525))

(assert (=> d!1221602 m!4719503))

(declare-fun m!4719645 () Bool)

(assert (=> b!4120394 m!4719645))

(assert (=> b!4120394 m!4719645))

(declare-fun m!4719647 () Bool)

(assert (=> b!4120394 m!4719647))

(assert (=> b!4120310 d!1221602))

(declare-fun b!4120457 () Bool)

(declare-fun e!2556727 () Bool)

(assert (=> b!4120457 (= e!2556727 true)))

(declare-fun d!1221614 () Bool)

(assert (=> d!1221614 e!2556727))

(assert (= d!1221614 b!4120457))

(declare-fun order!23429 () Int)

(declare-fun lambda!128673 () Int)

(declare-fun order!23431 () Int)

(declare-fun dynLambda!19033 (Int Int) Int)

(declare-fun dynLambda!19034 (Int Int) Int)

(assert (=> b!4120457 (< (dynLambda!19033 order!23429 (toValue!9926 (transformation!7274 r!4008))) (dynLambda!19034 order!23431 lambda!128673))))

(declare-fun order!23433 () Int)

(declare-fun dynLambda!19035 (Int Int) Int)

(assert (=> b!4120457 (< (dynLambda!19035 order!23433 (toChars!9785 (transformation!7274 r!4008))) (dynLambda!19034 order!23431 lambda!128673))))

(declare-fun dynLambda!19036 (Int TokenValue!7504) BalanceConc!26564)

(declare-fun dynLambda!19037 (Int BalanceConc!26564) TokenValue!7504)

(assert (=> d!1221614 (= (list!16345 (dynLambda!19036 (toChars!9785 (transformation!7274 r!4008)) (dynLambda!19037 (toValue!9926 (transformation!7274 r!4008)) lt!1469890))) (list!16345 lt!1469890))))

(declare-fun lt!1469951 () Unit!63899)

(declare-fun ForallOf!917 (Int BalanceConc!26564) Unit!63899)

(assert (=> d!1221614 (= lt!1469951 (ForallOf!917 lambda!128673 lt!1469890))))

(assert (=> d!1221614 (= (lemmaSemiInverse!2132 (transformation!7274 r!4008) lt!1469890) lt!1469951)))

(declare-fun b_lambda!120899 () Bool)

(assert (=> (not b_lambda!120899) (not d!1221614)))

(declare-fun tb!247257 () Bool)

(declare-fun t!340708 () Bool)

(assert (=> (and b!4120319 (= (toChars!9785 (transformation!7274 rBis!149)) (toChars!9785 (transformation!7274 r!4008))) t!340708) tb!247257))

(declare-fun b!4120462 () Bool)

(declare-fun e!2556730 () Bool)

(declare-fun tp!1255589 () Bool)

(declare-fun inv!59135 (Conc!13485) Bool)

(assert (=> b!4120462 (= e!2556730 (and (inv!59135 (c!707532 (dynLambda!19036 (toChars!9785 (transformation!7274 r!4008)) (dynLambda!19037 (toValue!9926 (transformation!7274 r!4008)) lt!1469890)))) tp!1255589))))

(declare-fun result!300386 () Bool)

(declare-fun inv!59136 (BalanceConc!26564) Bool)

(assert (=> tb!247257 (= result!300386 (and (inv!59136 (dynLambda!19036 (toChars!9785 (transformation!7274 r!4008)) (dynLambda!19037 (toValue!9926 (transformation!7274 r!4008)) lt!1469890))) e!2556730))))

(assert (= tb!247257 b!4120462))

(declare-fun m!4719723 () Bool)

(assert (=> b!4120462 m!4719723))

(declare-fun m!4719725 () Bool)

(assert (=> tb!247257 m!4719725))

(assert (=> d!1221614 t!340708))

(declare-fun b_and!318697 () Bool)

(assert (= b_and!318663 (and (=> t!340708 result!300386) b_and!318697)))

(declare-fun t!340710 () Bool)

(declare-fun tb!247259 () Bool)

(assert (=> (and b!4120299 (= (toChars!9785 (transformation!7274 (h!49969 rules!3756))) (toChars!9785 (transformation!7274 r!4008))) t!340710) tb!247259))

(declare-fun result!300390 () Bool)

(assert (= result!300390 result!300386))

(assert (=> d!1221614 t!340710))

(declare-fun b_and!318699 () Bool)

(assert (= b_and!318667 (and (=> t!340710 result!300390) b_and!318699)))

(declare-fun t!340712 () Bool)

(declare-fun tb!247261 () Bool)

(assert (=> (and b!4120303 (= (toChars!9785 (transformation!7274 r!4008)) (toChars!9785 (transformation!7274 r!4008))) t!340712) tb!247261))

(declare-fun result!300392 () Bool)

(assert (= result!300392 result!300386))

(assert (=> d!1221614 t!340712))

(declare-fun b_and!318701 () Bool)

(assert (= b_and!318671 (and (=> t!340712 result!300392) b_and!318701)))

(declare-fun b_lambda!120901 () Bool)

(assert (=> (not b_lambda!120901) (not d!1221614)))

(declare-fun tb!247263 () Bool)

(declare-fun t!340714 () Bool)

(assert (=> (and b!4120319 (= (toValue!9926 (transformation!7274 rBis!149)) (toValue!9926 (transformation!7274 r!4008))) t!340714) tb!247263))

(declare-fun result!300394 () Bool)

(declare-fun inv!21 (TokenValue!7504) Bool)

(assert (=> tb!247263 (= result!300394 (inv!21 (dynLambda!19037 (toValue!9926 (transformation!7274 r!4008)) lt!1469890)))))

(declare-fun m!4719727 () Bool)

(assert (=> tb!247263 m!4719727))

(assert (=> d!1221614 t!340714))

(declare-fun b_and!318703 () Bool)

(assert (= b_and!318661 (and (=> t!340714 result!300394) b_and!318703)))

(declare-fun t!340716 () Bool)

(declare-fun tb!247265 () Bool)

(assert (=> (and b!4120299 (= (toValue!9926 (transformation!7274 (h!49969 rules!3756))) (toValue!9926 (transformation!7274 r!4008))) t!340716) tb!247265))

(declare-fun result!300398 () Bool)

(assert (= result!300398 result!300394))

(assert (=> d!1221614 t!340716))

(declare-fun b_and!318705 () Bool)

(assert (= b_and!318665 (and (=> t!340716 result!300398) b_and!318705)))

(declare-fun t!340718 () Bool)

(declare-fun tb!247267 () Bool)

(assert (=> (and b!4120303 (= (toValue!9926 (transformation!7274 r!4008)) (toValue!9926 (transformation!7274 r!4008))) t!340718) tb!247267))

(declare-fun result!300400 () Bool)

(assert (= result!300400 result!300394))

(assert (=> d!1221614 t!340718))

(declare-fun b_and!318707 () Bool)

(assert (= b_and!318669 (and (=> t!340718 result!300400) b_and!318707)))

(declare-fun m!4719729 () Bool)

(assert (=> d!1221614 m!4719729))

(declare-fun m!4719731 () Bool)

(assert (=> d!1221614 m!4719731))

(declare-fun m!4719733 () Bool)

(assert (=> d!1221614 m!4719733))

(declare-fun m!4719735 () Bool)

(assert (=> d!1221614 m!4719735))

(assert (=> d!1221614 m!4719733))

(assert (=> d!1221614 m!4719735))

(declare-fun m!4719737 () Bool)

(assert (=> d!1221614 m!4719737))

(assert (=> b!4120310 d!1221614))

(declare-fun d!1221640 () Bool)

(assert (=> d!1221640 (= (apply!10347 (transformation!7274 r!4008) lt!1469890) (dynLambda!19037 (toValue!9926 (transformation!7274 r!4008)) lt!1469890))))

(declare-fun b_lambda!120903 () Bool)

(assert (=> (not b_lambda!120903) (not d!1221640)))

(assert (=> d!1221640 t!340714))

(declare-fun b_and!318709 () Bool)

(assert (= b_and!318703 (and (=> t!340714 result!300394) b_and!318709)))

(assert (=> d!1221640 t!340716))

(declare-fun b_and!318711 () Bool)

(assert (= b_and!318705 (and (=> t!340716 result!300398) b_and!318711)))

(assert (=> d!1221640 t!340718))

(declare-fun b_and!318713 () Bool)

(assert (= b_and!318707 (and (=> t!340718 result!300400) b_and!318713)))

(assert (=> d!1221640 m!4719733))

(assert (=> b!4120310 d!1221640))

(declare-fun b!4120511 () Bool)

(declare-fun res!1683419 () Bool)

(declare-fun e!2556754 () Bool)

(assert (=> b!4120511 (=> (not res!1683419) (not e!2556754))))

(declare-fun lt!1469984 () Option!9582)

(assert (=> b!4120511 (= res!1683419 (matchR!6010 (regex!7274 (rule!10346 (_1!24643 (get!14529 lt!1469984)))) (list!16345 (charsOf!4896 (_1!24643 (get!14529 lt!1469984))))))))

(declare-fun b!4120512 () Bool)

(declare-fun e!2556755 () Option!9582)

(declare-fun lt!1469981 () Option!9582)

(declare-fun lt!1469983 () Option!9582)

(assert (=> b!4120512 (= e!2556755 (ite (and ((_ is None!9581) lt!1469981) ((_ is None!9581) lt!1469983)) None!9581 (ite ((_ is None!9581) lt!1469983) lt!1469981 (ite ((_ is None!9581) lt!1469981) lt!1469983 (ite (>= (size!32969 (_1!24643 (v!40165 lt!1469981))) (size!32969 (_1!24643 (v!40165 lt!1469983)))) lt!1469981 lt!1469983)))))))

(declare-fun call!289948 () Option!9582)

(assert (=> b!4120512 (= lt!1469981 call!289948)))

(assert (=> b!4120512 (= lt!1469983 (maxPrefix!4055 thiss!25645 (t!340688 rules!3756) input!3238))))

(declare-fun d!1221642 () Bool)

(declare-fun e!2556753 () Bool)

(assert (=> d!1221642 e!2556753))

(declare-fun res!1683421 () Bool)

(assert (=> d!1221642 (=> res!1683421 e!2556753)))

(assert (=> d!1221642 (= res!1683421 (isEmpty!26497 lt!1469984))))

(assert (=> d!1221642 (= lt!1469984 e!2556755)))

(declare-fun c!707563 () Bool)

(assert (=> d!1221642 (= c!707563 (and ((_ is Cons!44549) rules!3756) ((_ is Nil!44549) (t!340688 rules!3756))))))

(declare-fun lt!1469982 () Unit!63899)

(declare-fun lt!1469980 () Unit!63899)

(assert (=> d!1221642 (= lt!1469982 lt!1469980)))

(assert (=> d!1221642 (isPrefix!4209 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2730 (List!44672 List!44672) Unit!63899)

(assert (=> d!1221642 (= lt!1469980 (lemmaIsPrefixRefl!2730 input!3238 input!3238))))

(declare-fun rulesValidInductive!2685 (LexerInterface!6863 List!44673) Bool)

(assert (=> d!1221642 (rulesValidInductive!2685 thiss!25645 rules!3756)))

(assert (=> d!1221642 (= (maxPrefix!4055 thiss!25645 rules!3756 input!3238) lt!1469984)))

(declare-fun b!4120513 () Bool)

(declare-fun res!1683417 () Bool)

(assert (=> b!4120513 (=> (not res!1683417) (not e!2556754))))

(assert (=> b!4120513 (= res!1683417 (= (++!11550 (list!16345 (charsOf!4896 (_1!24643 (get!14529 lt!1469984)))) (_2!24643 (get!14529 lt!1469984))) input!3238))))

(declare-fun bm!289943 () Bool)

(assert (=> bm!289943 (= call!289948 (maxPrefixOneRule!3005 thiss!25645 (h!49969 rules!3756) input!3238))))

(declare-fun b!4120514 () Bool)

(assert (=> b!4120514 (= e!2556753 e!2556754)))

(declare-fun res!1683420 () Bool)

(assert (=> b!4120514 (=> (not res!1683420) (not e!2556754))))

(declare-fun isDefined!7228 (Option!9582) Bool)

(assert (=> b!4120514 (= res!1683420 (isDefined!7228 lt!1469984))))

(declare-fun b!4120515 () Bool)

(assert (=> b!4120515 (= e!2556754 (contains!8946 rules!3756 (rule!10346 (_1!24643 (get!14529 lt!1469984)))))))

(declare-fun b!4120516 () Bool)

(declare-fun res!1683416 () Bool)

(assert (=> b!4120516 (=> (not res!1683416) (not e!2556754))))

(assert (=> b!4120516 (= res!1683416 (= (list!16345 (charsOf!4896 (_1!24643 (get!14529 lt!1469984)))) (originalCharacters!7770 (_1!24643 (get!14529 lt!1469984)))))))

(declare-fun b!4120517 () Bool)

(declare-fun res!1683415 () Bool)

(assert (=> b!4120517 (=> (not res!1683415) (not e!2556754))))

(assert (=> b!4120517 (= res!1683415 (< (size!32968 (_2!24643 (get!14529 lt!1469984))) (size!32968 input!3238)))))

(declare-fun b!4120518 () Bool)

(assert (=> b!4120518 (= e!2556755 call!289948)))

(declare-fun b!4120519 () Bool)

(declare-fun res!1683418 () Bool)

(assert (=> b!4120519 (=> (not res!1683418) (not e!2556754))))

(assert (=> b!4120519 (= res!1683418 (= (value!227863 (_1!24643 (get!14529 lt!1469984))) (apply!10347 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469984)))) (seqFromList!5391 (originalCharacters!7770 (_1!24643 (get!14529 lt!1469984)))))))))

(assert (= (and d!1221642 c!707563) b!4120518))

(assert (= (and d!1221642 (not c!707563)) b!4120512))

(assert (= (or b!4120518 b!4120512) bm!289943))

(assert (= (and d!1221642 (not res!1683421)) b!4120514))

(assert (= (and b!4120514 res!1683420) b!4120516))

(assert (= (and b!4120516 res!1683416) b!4120517))

(assert (= (and b!4120517 res!1683415) b!4120513))

(assert (= (and b!4120513 res!1683417) b!4120519))

(assert (= (and b!4120519 res!1683418) b!4120511))

(assert (= (and b!4120511 res!1683419) b!4120515))

(declare-fun m!4719787 () Bool)

(assert (=> b!4120513 m!4719787))

(declare-fun m!4719789 () Bool)

(assert (=> b!4120513 m!4719789))

(assert (=> b!4120513 m!4719789))

(declare-fun m!4719791 () Bool)

(assert (=> b!4120513 m!4719791))

(assert (=> b!4120513 m!4719791))

(declare-fun m!4719793 () Bool)

(assert (=> b!4120513 m!4719793))

(declare-fun m!4719795 () Bool)

(assert (=> b!4120512 m!4719795))

(assert (=> b!4120511 m!4719787))

(assert (=> b!4120511 m!4719789))

(assert (=> b!4120511 m!4719789))

(assert (=> b!4120511 m!4719791))

(assert (=> b!4120511 m!4719791))

(declare-fun m!4719797 () Bool)

(assert (=> b!4120511 m!4719797))

(assert (=> b!4120517 m!4719787))

(declare-fun m!4719799 () Bool)

(assert (=> b!4120517 m!4719799))

(assert (=> b!4120517 m!4719525))

(declare-fun m!4719801 () Bool)

(assert (=> b!4120514 m!4719801))

(assert (=> b!4120516 m!4719787))

(assert (=> b!4120516 m!4719789))

(assert (=> b!4120516 m!4719789))

(assert (=> b!4120516 m!4719791))

(declare-fun m!4719803 () Bool)

(assert (=> d!1221642 m!4719803))

(declare-fun m!4719805 () Bool)

(assert (=> d!1221642 m!4719805))

(declare-fun m!4719807 () Bool)

(assert (=> d!1221642 m!4719807))

(declare-fun m!4719809 () Bool)

(assert (=> d!1221642 m!4719809))

(declare-fun m!4719811 () Bool)

(assert (=> bm!289943 m!4719811))

(assert (=> b!4120519 m!4719787))

(declare-fun m!4719813 () Bool)

(assert (=> b!4120519 m!4719813))

(assert (=> b!4120519 m!4719813))

(declare-fun m!4719815 () Bool)

(assert (=> b!4120519 m!4719815))

(assert (=> b!4120515 m!4719787))

(declare-fun m!4719817 () Bool)

(assert (=> b!4120515 m!4719817))

(assert (=> b!4120310 d!1221642))

(declare-fun d!1221652 () Bool)

(declare-fun fromListB!2467 (List!44672) BalanceConc!26564)

(assert (=> d!1221652 (= (seqFromList!5391 p!2912) (fromListB!2467 p!2912))))

(declare-fun bs!594688 () Bool)

(assert (= bs!594688 d!1221652))

(declare-fun m!4719819 () Bool)

(assert (=> bs!594688 m!4719819))

(assert (=> b!4120310 d!1221652))

(declare-fun d!1221654 () Bool)

(declare-fun lt!1469989 () Int)

(assert (=> d!1221654 (>= lt!1469989 0)))

(declare-fun e!2556772 () Int)

(assert (=> d!1221654 (= lt!1469989 e!2556772)))

(declare-fun c!707572 () Bool)

(assert (=> d!1221654 (= c!707572 ((_ is Nil!44548) p!2912))))

(assert (=> d!1221654 (= (size!32968 p!2912) lt!1469989)))

(declare-fun b!4120552 () Bool)

(assert (=> b!4120552 (= e!2556772 0)))

(declare-fun b!4120553 () Bool)

(assert (=> b!4120553 (= e!2556772 (+ 1 (size!32968 (t!340687 p!2912))))))

(assert (= (and d!1221654 c!707572) b!4120552))

(assert (= (and d!1221654 (not c!707572)) b!4120553))

(declare-fun m!4719821 () Bool)

(assert (=> b!4120553 m!4719821))

(assert (=> b!4120310 d!1221654))

(declare-fun d!1221656 () Bool)

(assert (=> d!1221656 (= (inv!59130 (tag!8134 r!4008)) (= (mod (str.len (value!227862 (tag!8134 r!4008))) 2) 0))))

(assert (=> b!4120317 d!1221656))

(declare-fun d!1221658 () Bool)

(declare-fun res!1683438 () Bool)

(declare-fun e!2556773 () Bool)

(assert (=> d!1221658 (=> (not res!1683438) (not e!2556773))))

(assert (=> d!1221658 (= res!1683438 (semiInverseModEq!3134 (toChars!9785 (transformation!7274 r!4008)) (toValue!9926 (transformation!7274 r!4008))))))

(assert (=> d!1221658 (= (inv!59132 (transformation!7274 r!4008)) e!2556773)))

(declare-fun b!4120554 () Bool)

(assert (=> b!4120554 (= e!2556773 (equivClasses!3033 (toChars!9785 (transformation!7274 r!4008)) (toValue!9926 (transformation!7274 r!4008))))))

(assert (= (and d!1221658 res!1683438) b!4120554))

(declare-fun m!4719823 () Bool)

(assert (=> d!1221658 m!4719823))

(declare-fun m!4719825 () Bool)

(assert (=> b!4120554 m!4719825))

(assert (=> b!4120317 d!1221658))

(declare-fun d!1221660 () Bool)

(assert (=> d!1221660 (= (isEmpty!26496 p!2912) ((_ is Nil!44548) p!2912))))

(assert (=> b!4120306 d!1221660))

(declare-fun b!4120599 () Bool)

(declare-fun e!2556798 () Int)

(assert (=> b!4120599 (= e!2556798 0)))

(declare-fun b!4120600 () Bool)

(declare-fun e!2556797 () Int)

(assert (=> b!4120600 (= e!2556798 e!2556797)))

(declare-fun c!707581 () Bool)

(assert (=> b!4120600 (= c!707581 (and ((_ is Cons!44549) rules!3756) (not (= (h!49969 rules!3756) rBis!149))))))

(declare-fun b!4120602 () Bool)

(assert (=> b!4120602 (= e!2556797 (- 1))))

(declare-fun d!1221662 () Bool)

(declare-fun lt!1469993 () Int)

(assert (=> d!1221662 (>= lt!1469993 0)))

(assert (=> d!1221662 (= lt!1469993 e!2556798)))

(declare-fun c!707580 () Bool)

(assert (=> d!1221662 (= c!707580 (and ((_ is Cons!44549) rules!3756) (= (h!49969 rules!3756) rBis!149)))))

(assert (=> d!1221662 (contains!8946 rules!3756 rBis!149)))

(assert (=> d!1221662 (= (getIndex!622 rules!3756 rBis!149) lt!1469993)))

(declare-fun b!4120601 () Bool)

(assert (=> b!4120601 (= e!2556797 (+ 1 (getIndex!622 (t!340688 rules!3756) rBis!149)))))

(assert (= (and d!1221662 c!707580) b!4120599))

(assert (= (and d!1221662 (not c!707580)) b!4120600))

(assert (= (and b!4120600 c!707581) b!4120601))

(assert (= (and b!4120600 (not c!707581)) b!4120602))

(assert (=> d!1221662 m!4719519))

(declare-fun m!4719833 () Bool)

(assert (=> b!4120601 m!4719833))

(assert (=> b!4120308 d!1221662))

(declare-fun b!4120603 () Bool)

(declare-fun e!2556800 () Int)

(assert (=> b!4120603 (= e!2556800 0)))

(declare-fun b!4120604 () Bool)

(declare-fun e!2556799 () Int)

(assert (=> b!4120604 (= e!2556800 e!2556799)))

(declare-fun c!707583 () Bool)

(assert (=> b!4120604 (= c!707583 (and ((_ is Cons!44549) rules!3756) (not (= (h!49969 rules!3756) r!4008))))))

(declare-fun b!4120606 () Bool)

(assert (=> b!4120606 (= e!2556799 (- 1))))

(declare-fun d!1221664 () Bool)

(declare-fun lt!1469994 () Int)

(assert (=> d!1221664 (>= lt!1469994 0)))

(assert (=> d!1221664 (= lt!1469994 e!2556800)))

(declare-fun c!707582 () Bool)

(assert (=> d!1221664 (= c!707582 (and ((_ is Cons!44549) rules!3756) (= (h!49969 rules!3756) r!4008)))))

(assert (=> d!1221664 (contains!8946 rules!3756 r!4008)))

(assert (=> d!1221664 (= (getIndex!622 rules!3756 r!4008) lt!1469994)))

(declare-fun b!4120605 () Bool)

(assert (=> b!4120605 (= e!2556799 (+ 1 (getIndex!622 (t!340688 rules!3756) r!4008)))))

(assert (= (and d!1221664 c!707582) b!4120603))

(assert (= (and d!1221664 (not c!707582)) b!4120604))

(assert (= (and b!4120604 c!707583) b!4120605))

(assert (= (and b!4120604 (not c!707583)) b!4120606))

(assert (=> d!1221664 m!4719501))

(declare-fun m!4719835 () Bool)

(assert (=> b!4120605 m!4719835))

(assert (=> b!4120308 d!1221664))

(declare-fun d!1221666 () Bool)

(declare-fun lt!1469995 () Int)

(assert (=> d!1221666 (>= lt!1469995 0)))

(declare-fun e!2556805 () Int)

(assert (=> d!1221666 (= lt!1469995 e!2556805)))

(declare-fun c!707584 () Bool)

(assert (=> d!1221666 (= c!707584 ((_ is Nil!44548) input!3238))))

(assert (=> d!1221666 (= (size!32968 input!3238) lt!1469995)))

(declare-fun b!4120610 () Bool)

(assert (=> b!4120610 (= e!2556805 0)))

(declare-fun b!4120611 () Bool)

(assert (=> b!4120611 (= e!2556805 (+ 1 (size!32968 (t!340687 input!3238))))))

(assert (= (and d!1221666 c!707584) b!4120610))

(assert (= (and d!1221666 (not c!707584)) b!4120611))

(declare-fun m!4719837 () Bool)

(assert (=> b!4120611 m!4719837))

(assert (=> b!4120307 d!1221666))

(declare-fun d!1221668 () Bool)

(declare-fun lt!1469996 () Int)

(assert (=> d!1221668 (>= lt!1469996 0)))

(declare-fun e!2556806 () Int)

(assert (=> d!1221668 (= lt!1469996 e!2556806)))

(declare-fun c!707585 () Bool)

(assert (=> d!1221668 (= c!707585 ((_ is Nil!44548) (list!16345 lt!1469887)))))

(assert (=> d!1221668 (= (size!32968 (list!16345 lt!1469887)) lt!1469996)))

(declare-fun b!4120612 () Bool)

(assert (=> b!4120612 (= e!2556806 0)))

(declare-fun b!4120613 () Bool)

(assert (=> b!4120613 (= e!2556806 (+ 1 (size!32968 (t!340687 (list!16345 lt!1469887)))))))

(assert (= (and d!1221668 c!707585) b!4120612))

(assert (= (and d!1221668 (not c!707585)) b!4120613))

(declare-fun m!4719839 () Bool)

(assert (=> b!4120613 m!4719839))

(assert (=> b!4120307 d!1221668))

(declare-fun d!1221670 () Bool)

(declare-fun list!16347 (Conc!13485) List!44672)

(assert (=> d!1221670 (= (list!16345 lt!1469887) (list!16347 (c!707532 lt!1469887)))))

(declare-fun bs!594689 () Bool)

(assert (= bs!594689 d!1221670))

(declare-fun m!4719845 () Bool)

(assert (=> bs!594689 m!4719845))

(assert (=> b!4120307 d!1221670))

(declare-fun d!1221672 () Bool)

(declare-fun lt!1469999 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6868 (List!44673) (InoxSet Rule!14348))

(assert (=> d!1221672 (= lt!1469999 (select (content!6868 rules!3756) r!4008))))

(declare-fun e!2556817 () Bool)

(assert (=> d!1221672 (= lt!1469999 e!2556817)))

(declare-fun res!1683451 () Bool)

(assert (=> d!1221672 (=> (not res!1683451) (not e!2556817))))

(assert (=> d!1221672 (= res!1683451 ((_ is Cons!44549) rules!3756))))

(assert (=> d!1221672 (= (contains!8946 rules!3756 r!4008) lt!1469999)))

(declare-fun b!4120632 () Bool)

(declare-fun e!2556818 () Bool)

(assert (=> b!4120632 (= e!2556817 e!2556818)))

(declare-fun res!1683452 () Bool)

(assert (=> b!4120632 (=> res!1683452 e!2556818)))

(assert (=> b!4120632 (= res!1683452 (= (h!49969 rules!3756) r!4008))))

(declare-fun b!4120633 () Bool)

(assert (=> b!4120633 (= e!2556818 (contains!8946 (t!340688 rules!3756) r!4008))))

(assert (= (and d!1221672 res!1683451) b!4120632))

(assert (= (and b!4120632 (not res!1683452)) b!4120633))

(declare-fun m!4719847 () Bool)

(assert (=> d!1221672 m!4719847))

(declare-fun m!4719849 () Bool)

(assert (=> d!1221672 m!4719849))

(declare-fun m!4719851 () Bool)

(assert (=> b!4120633 m!4719851))

(assert (=> b!4120304 d!1221672))

(declare-fun d!1221674 () Bool)

(declare-fun lt!1470002 () Int)

(assert (=> d!1221674 (= lt!1470002 (size!32968 (list!16345 lt!1469887)))))

(declare-fun size!32972 (Conc!13485) Int)

(assert (=> d!1221674 (= lt!1470002 (size!32972 (c!707532 lt!1469887)))))

(assert (=> d!1221674 (= (size!32970 lt!1469887) lt!1470002)))

(declare-fun bs!594690 () Bool)

(assert (= bs!594690 d!1221674))

(assert (=> bs!594690 m!4719527))

(assert (=> bs!594690 m!4719527))

(assert (=> bs!594690 m!4719529))

(declare-fun m!4719853 () Bool)

(assert (=> bs!594690 m!4719853))

(assert (=> b!4120314 d!1221674))

(declare-fun d!1221676 () Bool)

(declare-fun lt!1470005 () BalanceConc!26564)

(assert (=> d!1221676 (= (list!16345 lt!1470005) (originalCharacters!7770 (_1!24643 (get!14529 lt!1469886))))))

(assert (=> d!1221676 (= lt!1470005 (dynLambda!19036 (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886))))) (value!227863 (_1!24643 (get!14529 lt!1469886)))))))

(assert (=> d!1221676 (= (charsOf!4896 (_1!24643 (get!14529 lt!1469886))) lt!1470005)))

(declare-fun b_lambda!120911 () Bool)

(assert (=> (not b_lambda!120911) (not d!1221676)))

(declare-fun t!340726 () Bool)

(declare-fun tb!247275 () Bool)

(assert (=> (and b!4120319 (= (toChars!9785 (transformation!7274 rBis!149)) (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886)))))) t!340726) tb!247275))

(declare-fun b!4120634 () Bool)

(declare-fun e!2556819 () Bool)

(declare-fun tp!1255631 () Bool)

(assert (=> b!4120634 (= e!2556819 (and (inv!59135 (c!707532 (dynLambda!19036 (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886))))) (value!227863 (_1!24643 (get!14529 lt!1469886)))))) tp!1255631))))

(declare-fun result!300414 () Bool)

(assert (=> tb!247275 (= result!300414 (and (inv!59136 (dynLambda!19036 (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886))))) (value!227863 (_1!24643 (get!14529 lt!1469886))))) e!2556819))))

(assert (= tb!247275 b!4120634))

(declare-fun m!4719855 () Bool)

(assert (=> b!4120634 m!4719855))

(declare-fun m!4719857 () Bool)

(assert (=> tb!247275 m!4719857))

(assert (=> d!1221676 t!340726))

(declare-fun b_and!318719 () Bool)

(assert (= b_and!318697 (and (=> t!340726 result!300414) b_and!318719)))

(declare-fun tb!247277 () Bool)

(declare-fun t!340728 () Bool)

(assert (=> (and b!4120299 (= (toChars!9785 (transformation!7274 (h!49969 rules!3756))) (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886)))))) t!340728) tb!247277))

(declare-fun result!300416 () Bool)

(assert (= result!300416 result!300414))

(assert (=> d!1221676 t!340728))

(declare-fun b_and!318721 () Bool)

(assert (= b_and!318699 (and (=> t!340728 result!300416) b_and!318721)))

(declare-fun t!340730 () Bool)

(declare-fun tb!247279 () Bool)

(assert (=> (and b!4120303 (= (toChars!9785 (transformation!7274 r!4008)) (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886)))))) t!340730) tb!247279))

(declare-fun result!300418 () Bool)

(assert (= result!300418 result!300414))

(assert (=> d!1221676 t!340730))

(declare-fun b_and!318723 () Bool)

(assert (= b_and!318701 (and (=> t!340730 result!300418) b_and!318723)))

(declare-fun m!4719859 () Bool)

(assert (=> d!1221676 m!4719859))

(declare-fun m!4719861 () Bool)

(assert (=> d!1221676 m!4719861))

(assert (=> b!4120314 d!1221676))

(declare-fun d!1221678 () Bool)

(assert (=> d!1221678 (= (get!14529 lt!1469886) (v!40165 lt!1469886))))

(assert (=> b!4120314 d!1221678))

(declare-fun d!1221680 () Bool)

(assert (=> d!1221680 (= (isEmpty!26498 rules!3756) ((_ is Nil!44549) rules!3756))))

(assert (=> b!4120316 d!1221680))

(declare-fun b!4120644 () Bool)

(declare-fun res!1683463 () Bool)

(declare-fun e!2556828 () Bool)

(assert (=> b!4120644 (=> (not res!1683463) (not e!2556828))))

(declare-fun head!8680 (List!44672) C!24544)

(assert (=> b!4120644 (= res!1683463 (= (head!8680 p!2912) (head!8680 input!3238)))))

(declare-fun b!4120643 () Bool)

(declare-fun e!2556826 () Bool)

(assert (=> b!4120643 (= e!2556826 e!2556828)))

(declare-fun res!1683462 () Bool)

(assert (=> b!4120643 (=> (not res!1683462) (not e!2556828))))

(assert (=> b!4120643 (= res!1683462 (not ((_ is Nil!44548) input!3238)))))

(declare-fun b!4120646 () Bool)

(declare-fun e!2556827 () Bool)

(assert (=> b!4120646 (= e!2556827 (>= (size!32968 input!3238) (size!32968 p!2912)))))

(declare-fun b!4120645 () Bool)

(assert (=> b!4120645 (= e!2556828 (isPrefix!4209 (tail!6431 p!2912) (tail!6431 input!3238)))))

(declare-fun d!1221682 () Bool)

(assert (=> d!1221682 e!2556827))

(declare-fun res!1683461 () Bool)

(assert (=> d!1221682 (=> res!1683461 e!2556827)))

(declare-fun lt!1470008 () Bool)

(assert (=> d!1221682 (= res!1683461 (not lt!1470008))))

(assert (=> d!1221682 (= lt!1470008 e!2556826)))

(declare-fun res!1683464 () Bool)

(assert (=> d!1221682 (=> res!1683464 e!2556826)))

(assert (=> d!1221682 (= res!1683464 ((_ is Nil!44548) p!2912))))

(assert (=> d!1221682 (= (isPrefix!4209 p!2912 input!3238) lt!1470008)))

(assert (= (and d!1221682 (not res!1683464)) b!4120643))

(assert (= (and b!4120643 res!1683462) b!4120644))

(assert (= (and b!4120644 res!1683463) b!4120645))

(assert (= (and d!1221682 (not res!1683461)) b!4120646))

(declare-fun m!4719863 () Bool)

(assert (=> b!4120644 m!4719863))

(declare-fun m!4719865 () Bool)

(assert (=> b!4120644 m!4719865))

(assert (=> b!4120646 m!4719525))

(assert (=> b!4120646 m!4719503))

(declare-fun m!4719867 () Bool)

(assert (=> b!4120645 m!4719867))

(assert (=> b!4120645 m!4719645))

(assert (=> b!4120645 m!4719867))

(assert (=> b!4120645 m!4719645))

(declare-fun m!4719869 () Bool)

(assert (=> b!4120645 m!4719869))

(assert (=> b!4120305 d!1221682))

(declare-fun b!4120675 () Bool)

(declare-fun e!2556844 () Bool)

(declare-fun derivativeStep!3667 (Regex!12179 C!24544) Regex!12179)

(assert (=> b!4120675 (= e!2556844 (matchR!6010 (derivativeStep!3667 (regex!7274 r!4008) (head!8680 p!2912)) (tail!6431 p!2912)))))

(declare-fun bm!289949 () Bool)

(declare-fun call!289954 () Bool)

(assert (=> bm!289949 (= call!289954 (isEmpty!26496 p!2912))))

(declare-fun b!4120676 () Bool)

(declare-fun e!2556847 () Bool)

(declare-fun e!2556849 () Bool)

(assert (=> b!4120676 (= e!2556847 e!2556849)))

(declare-fun res!1683487 () Bool)

(assert (=> b!4120676 (=> res!1683487 e!2556849)))

(assert (=> b!4120676 (= res!1683487 call!289954)))

(declare-fun b!4120677 () Bool)

(assert (=> b!4120677 (= e!2556849 (not (= (head!8680 p!2912) (c!707533 (regex!7274 r!4008)))))))

(declare-fun b!4120678 () Bool)

(declare-fun e!2556845 () Bool)

(assert (=> b!4120678 (= e!2556845 e!2556847)))

(declare-fun res!1683488 () Bool)

(assert (=> b!4120678 (=> (not res!1683488) (not e!2556847))))

(declare-fun lt!1470011 () Bool)

(assert (=> b!4120678 (= res!1683488 (not lt!1470011))))

(declare-fun b!4120679 () Bool)

(declare-fun res!1683486 () Bool)

(assert (=> b!4120679 (=> res!1683486 e!2556845)))

(declare-fun e!2556843 () Bool)

(assert (=> b!4120679 (= res!1683486 e!2556843)))

(declare-fun res!1683482 () Bool)

(assert (=> b!4120679 (=> (not res!1683482) (not e!2556843))))

(assert (=> b!4120679 (= res!1683482 lt!1470011)))

(declare-fun b!4120680 () Bool)

(declare-fun e!2556848 () Bool)

(declare-fun e!2556846 () Bool)

(assert (=> b!4120680 (= e!2556848 e!2556846)))

(declare-fun c!707592 () Bool)

(assert (=> b!4120680 (= c!707592 ((_ is EmptyLang!12179) (regex!7274 r!4008)))))

(declare-fun b!4120681 () Bool)

(assert (=> b!4120681 (= e!2556844 (nullable!4272 (regex!7274 r!4008)))))

(declare-fun b!4120682 () Bool)

(declare-fun res!1683484 () Bool)

(assert (=> b!4120682 (=> (not res!1683484) (not e!2556843))))

(assert (=> b!4120682 (= res!1683484 (not call!289954))))

(declare-fun b!4120683 () Bool)

(declare-fun res!1683481 () Bool)

(assert (=> b!4120683 (=> res!1683481 e!2556845)))

(assert (=> b!4120683 (= res!1683481 (not ((_ is ElementMatch!12179) (regex!7274 r!4008))))))

(assert (=> b!4120683 (= e!2556846 e!2556845)))

(declare-fun b!4120684 () Bool)

(declare-fun res!1683483 () Bool)

(assert (=> b!4120684 (=> (not res!1683483) (not e!2556843))))

(assert (=> b!4120684 (= res!1683483 (isEmpty!26496 (tail!6431 p!2912)))))

(declare-fun b!4120685 () Bool)

(declare-fun res!1683485 () Bool)

(assert (=> b!4120685 (=> res!1683485 e!2556849)))

(assert (=> b!4120685 (= res!1683485 (not (isEmpty!26496 (tail!6431 p!2912))))))

(declare-fun b!4120686 () Bool)

(assert (=> b!4120686 (= e!2556848 (= lt!1470011 call!289954))))

(declare-fun b!4120687 () Bool)

(assert (=> b!4120687 (= e!2556846 (not lt!1470011))))

(declare-fun d!1221684 () Bool)

(assert (=> d!1221684 e!2556848))

(declare-fun c!707594 () Bool)

(assert (=> d!1221684 (= c!707594 ((_ is EmptyExpr!12179) (regex!7274 r!4008)))))

(assert (=> d!1221684 (= lt!1470011 e!2556844)))

(declare-fun c!707593 () Bool)

(assert (=> d!1221684 (= c!707593 (isEmpty!26496 p!2912))))

(assert (=> d!1221684 (validRegex!5472 (regex!7274 r!4008))))

(assert (=> d!1221684 (= (matchR!6010 (regex!7274 r!4008) p!2912) lt!1470011)))

(declare-fun b!4120688 () Bool)

(assert (=> b!4120688 (= e!2556843 (= (head!8680 p!2912) (c!707533 (regex!7274 r!4008))))))

(assert (= (and d!1221684 c!707593) b!4120681))

(assert (= (and d!1221684 (not c!707593)) b!4120675))

(assert (= (and d!1221684 c!707594) b!4120686))

(assert (= (and d!1221684 (not c!707594)) b!4120680))

(assert (= (and b!4120680 c!707592) b!4120687))

(assert (= (and b!4120680 (not c!707592)) b!4120683))

(assert (= (and b!4120683 (not res!1683481)) b!4120679))

(assert (= (and b!4120679 res!1683482) b!4120682))

(assert (= (and b!4120682 res!1683484) b!4120684))

(assert (= (and b!4120684 res!1683483) b!4120688))

(assert (= (and b!4120679 (not res!1683486)) b!4120678))

(assert (= (and b!4120678 res!1683488) b!4120676))

(assert (= (and b!4120676 (not res!1683487)) b!4120685))

(assert (= (and b!4120685 (not res!1683485)) b!4120677))

(assert (= (or b!4120686 b!4120676 b!4120682) bm!289949))

(assert (=> b!4120681 m!4719621))

(assert (=> b!4120677 m!4719863))

(assert (=> b!4120684 m!4719867))

(assert (=> b!4120684 m!4719867))

(declare-fun m!4719871 () Bool)

(assert (=> b!4120684 m!4719871))

(assert (=> b!4120685 m!4719867))

(assert (=> b!4120685 m!4719867))

(assert (=> b!4120685 m!4719871))

(assert (=> b!4120675 m!4719863))

(assert (=> b!4120675 m!4719863))

(declare-fun m!4719873 () Bool)

(assert (=> b!4120675 m!4719873))

(assert (=> b!4120675 m!4719867))

(assert (=> b!4120675 m!4719873))

(assert (=> b!4120675 m!4719867))

(declare-fun m!4719875 () Bool)

(assert (=> b!4120675 m!4719875))

(assert (=> d!1221684 m!4719523))

(assert (=> d!1221684 m!4719619))

(assert (=> b!4120688 m!4719863))

(assert (=> bm!289949 m!4719523))

(assert (=> b!4120315 d!1221684))

(declare-fun d!1221686 () Bool)

(assert (=> d!1221686 (= (inv!59130 (tag!8134 rBis!149)) (= (mod (str.len (value!227862 (tag!8134 rBis!149))) 2) 0))))

(assert (=> b!4120312 d!1221686))

(declare-fun d!1221688 () Bool)

(declare-fun res!1683489 () Bool)

(declare-fun e!2556850 () Bool)

(assert (=> d!1221688 (=> (not res!1683489) (not e!2556850))))

(assert (=> d!1221688 (= res!1683489 (semiInverseModEq!3134 (toChars!9785 (transformation!7274 rBis!149)) (toValue!9926 (transformation!7274 rBis!149))))))

(assert (=> d!1221688 (= (inv!59132 (transformation!7274 rBis!149)) e!2556850)))

(declare-fun b!4120689 () Bool)

(assert (=> b!4120689 (= e!2556850 (equivClasses!3033 (toChars!9785 (transformation!7274 rBis!149)) (toValue!9926 (transformation!7274 rBis!149))))))

(assert (= (and d!1221688 res!1683489) b!4120689))

(declare-fun m!4719877 () Bool)

(assert (=> d!1221688 m!4719877))

(declare-fun m!4719879 () Bool)

(assert (=> b!4120689 m!4719879))

(assert (=> b!4120312 d!1221688))

(declare-fun d!1221690 () Bool)

(declare-fun lt!1470012 () Bool)

(assert (=> d!1221690 (= lt!1470012 (select (content!6868 rules!3756) rBis!149))))

(declare-fun e!2556851 () Bool)

(assert (=> d!1221690 (= lt!1470012 e!2556851)))

(declare-fun res!1683490 () Bool)

(assert (=> d!1221690 (=> (not res!1683490) (not e!2556851))))

(assert (=> d!1221690 (= res!1683490 ((_ is Cons!44549) rules!3756))))

(assert (=> d!1221690 (= (contains!8946 rules!3756 rBis!149) lt!1470012)))

(declare-fun b!4120690 () Bool)

(declare-fun e!2556852 () Bool)

(assert (=> b!4120690 (= e!2556851 e!2556852)))

(declare-fun res!1683491 () Bool)

(assert (=> b!4120690 (=> res!1683491 e!2556852)))

(assert (=> b!4120690 (= res!1683491 (= (h!49969 rules!3756) rBis!149))))

(declare-fun b!4120691 () Bool)

(assert (=> b!4120691 (= e!2556852 (contains!8946 (t!340688 rules!3756) rBis!149))))

(assert (= (and d!1221690 res!1683490) b!4120690))

(assert (= (and b!4120690 (not res!1683491)) b!4120691))

(assert (=> d!1221690 m!4719847))

(declare-fun m!4719881 () Bool)

(assert (=> d!1221690 m!4719881))

(declare-fun m!4719883 () Bool)

(assert (=> b!4120691 m!4719883))

(assert (=> b!4120301 d!1221690))

(declare-fun d!1221692 () Bool)

(declare-fun lt!1470013 () Bool)

(assert (=> d!1221692 (= lt!1470013 (select (content!6868 (tail!6429 rules!3756)) r!4008))))

(declare-fun e!2556853 () Bool)

(assert (=> d!1221692 (= lt!1470013 e!2556853)))

(declare-fun res!1683492 () Bool)

(assert (=> d!1221692 (=> (not res!1683492) (not e!2556853))))

(assert (=> d!1221692 (= res!1683492 ((_ is Cons!44549) (tail!6429 rules!3756)))))

(assert (=> d!1221692 (= (contains!8946 (tail!6429 rules!3756) r!4008) lt!1470013)))

(declare-fun b!4120692 () Bool)

(declare-fun e!2556854 () Bool)

(assert (=> b!4120692 (= e!2556853 e!2556854)))

(declare-fun res!1683493 () Bool)

(assert (=> b!4120692 (=> res!1683493 e!2556854)))

(assert (=> b!4120692 (= res!1683493 (= (h!49969 (tail!6429 rules!3756)) r!4008))))

(declare-fun b!4120693 () Bool)

(assert (=> b!4120693 (= e!2556854 (contains!8946 (t!340688 (tail!6429 rules!3756)) r!4008))))

(assert (= (and d!1221692 res!1683492) b!4120692))

(assert (= (and b!4120692 (not res!1683493)) b!4120693))

(assert (=> d!1221692 m!4719539))

(declare-fun m!4719885 () Bool)

(assert (=> d!1221692 m!4719885))

(declare-fun m!4719887 () Bool)

(assert (=> d!1221692 m!4719887))

(declare-fun m!4719889 () Bool)

(assert (=> b!4120693 m!4719889))

(assert (=> b!4120311 d!1221692))

(declare-fun d!1221694 () Bool)

(assert (=> d!1221694 (= (tail!6429 rules!3756) (t!340688 rules!3756))))

(assert (=> b!4120311 d!1221694))

(declare-fun d!1221696 () Bool)

(assert (=> d!1221696 (contains!8946 (tail!6429 rules!3756) r!4008)))

(declare-fun lt!1470016 () Unit!63899)

(declare-fun choose!25182 (List!44673 Rule!14348 Rule!14348) Unit!63899)

(assert (=> d!1221696 (= lt!1470016 (choose!25182 rules!3756 rBis!149 r!4008))))

(declare-fun e!2556857 () Bool)

(assert (=> d!1221696 e!2556857))

(declare-fun res!1683496 () Bool)

(assert (=> d!1221696 (=> (not res!1683496) (not e!2556857))))

(assert (=> d!1221696 (= res!1683496 (contains!8946 rules!3756 rBis!149))))

(assert (=> d!1221696 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!16 rules!3756 rBis!149 r!4008) lt!1470016)))

(declare-fun b!4120696 () Bool)

(assert (=> b!4120696 (= e!2556857 (contains!8946 rules!3756 r!4008))))

(assert (= (and d!1221696 res!1683496) b!4120696))

(assert (=> d!1221696 m!4719539))

(assert (=> d!1221696 m!4719539))

(assert (=> d!1221696 m!4719541))

(declare-fun m!4719891 () Bool)

(assert (=> d!1221696 m!4719891))

(assert (=> d!1221696 m!4719519))

(assert (=> b!4120696 m!4719501))

(assert (=> b!4120311 d!1221696))

(declare-fun d!1221698 () Bool)

(assert (=> d!1221698 (= (isEmpty!26497 lt!1469886) (not ((_ is Some!9581) lt!1469886)))))

(assert (=> b!4120311 d!1221698))

(declare-fun b!4120716 () Bool)

(declare-fun res!1683514 () Bool)

(declare-fun e!2556869 () Bool)

(assert (=> b!4120716 (=> (not res!1683514) (not e!2556869))))

(declare-fun lt!1470027 () Option!9582)

(assert (=> b!4120716 (= res!1683514 (= (value!227863 (_1!24643 (get!14529 lt!1470027))) (apply!10347 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1470027)))) (seqFromList!5391 (originalCharacters!7770 (_1!24643 (get!14529 lt!1470027)))))))))

(declare-fun b!4120717 () Bool)

(declare-fun e!2556866 () Bool)

(declare-datatypes ((tuple2!43022 0))(
  ( (tuple2!43023 (_1!24645 List!44672) (_2!24645 List!44672)) )
))
(declare-fun findLongestMatchInner!1489 (Regex!12179 List!44672 Int List!44672 List!44672 Int) tuple2!43022)

(assert (=> b!4120717 (= e!2556866 (matchR!6010 (regex!7274 rBis!149) (_1!24645 (findLongestMatchInner!1489 (regex!7274 rBis!149) Nil!44548 (size!32968 Nil!44548) input!3238 input!3238 (size!32968 input!3238)))))))

(declare-fun b!4120718 () Bool)

(declare-fun e!2556867 () Bool)

(assert (=> b!4120718 (= e!2556867 e!2556869)))

(declare-fun res!1683512 () Bool)

(assert (=> b!4120718 (=> (not res!1683512) (not e!2556869))))

(assert (=> b!4120718 (= res!1683512 (matchR!6010 (regex!7274 rBis!149) (list!16345 (charsOf!4896 (_1!24643 (get!14529 lt!1470027))))))))

(declare-fun b!4120719 () Bool)

(declare-fun e!2556868 () Option!9582)

(assert (=> b!4120719 (= e!2556868 None!9581)))

(declare-fun b!4120720 () Bool)

(declare-fun res!1683517 () Bool)

(assert (=> b!4120720 (=> (not res!1683517) (not e!2556869))))

(assert (=> b!4120720 (= res!1683517 (= (rule!10346 (_1!24643 (get!14529 lt!1470027))) rBis!149))))

(declare-fun b!4120721 () Bool)

(assert (=> b!4120721 (= e!2556869 (= (size!32969 (_1!24643 (get!14529 lt!1470027))) (size!32968 (originalCharacters!7770 (_1!24643 (get!14529 lt!1470027))))))))

(declare-fun b!4120722 () Bool)

(declare-fun res!1683511 () Bool)

(assert (=> b!4120722 (=> (not res!1683511) (not e!2556869))))

(assert (=> b!4120722 (= res!1683511 (< (size!32968 (_2!24643 (get!14529 lt!1470027))) (size!32968 input!3238)))))

(declare-fun b!4120723 () Bool)

(declare-fun lt!1470029 () tuple2!43022)

(assert (=> b!4120723 (= e!2556868 (Some!9581 (tuple2!43019 (Token!13479 (apply!10347 (transformation!7274 rBis!149) (seqFromList!5391 (_1!24645 lt!1470029))) rBis!149 (size!32970 (seqFromList!5391 (_1!24645 lt!1470029))) (_1!24645 lt!1470029)) (_2!24645 lt!1470029))))))

(declare-fun lt!1470028 () Unit!63899)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1462 (Regex!12179 List!44672) Unit!63899)

(assert (=> b!4120723 (= lt!1470028 (longestMatchIsAcceptedByMatchOrIsEmpty!1462 (regex!7274 rBis!149) input!3238))))

(declare-fun res!1683516 () Bool)

(assert (=> b!4120723 (= res!1683516 (isEmpty!26496 (_1!24645 (findLongestMatchInner!1489 (regex!7274 rBis!149) Nil!44548 (size!32968 Nil!44548) input!3238 input!3238 (size!32968 input!3238)))))))

(assert (=> b!4120723 (=> res!1683516 e!2556866)))

(assert (=> b!4120723 e!2556866))

(declare-fun lt!1470030 () Unit!63899)

(assert (=> b!4120723 (= lt!1470030 lt!1470028)))

(declare-fun lt!1470031 () Unit!63899)

(assert (=> b!4120723 (= lt!1470031 (lemmaSemiInverse!2132 (transformation!7274 rBis!149) (seqFromList!5391 (_1!24645 lt!1470029))))))

(declare-fun b!4120715 () Bool)

(declare-fun res!1683513 () Bool)

(assert (=> b!4120715 (=> (not res!1683513) (not e!2556869))))

(assert (=> b!4120715 (= res!1683513 (= (++!11550 (list!16345 (charsOf!4896 (_1!24643 (get!14529 lt!1470027)))) (_2!24643 (get!14529 lt!1470027))) input!3238))))

(declare-fun d!1221700 () Bool)

(assert (=> d!1221700 e!2556867))

(declare-fun res!1683515 () Bool)

(assert (=> d!1221700 (=> res!1683515 e!2556867)))

(assert (=> d!1221700 (= res!1683515 (isEmpty!26497 lt!1470027))))

(assert (=> d!1221700 (= lt!1470027 e!2556868)))

(declare-fun c!707597 () Bool)

(assert (=> d!1221700 (= c!707597 (isEmpty!26496 (_1!24645 lt!1470029)))))

(declare-fun findLongestMatch!1402 (Regex!12179 List!44672) tuple2!43022)

(assert (=> d!1221700 (= lt!1470029 (findLongestMatch!1402 (regex!7274 rBis!149) input!3238))))

(assert (=> d!1221700 (ruleValid!3082 thiss!25645 rBis!149)))

(assert (=> d!1221700 (= (maxPrefixOneRule!3005 thiss!25645 rBis!149 input!3238) lt!1470027)))

(assert (= (and d!1221700 c!707597) b!4120719))

(assert (= (and d!1221700 (not c!707597)) b!4120723))

(assert (= (and b!4120723 (not res!1683516)) b!4120717))

(assert (= (and d!1221700 (not res!1683515)) b!4120718))

(assert (= (and b!4120718 res!1683512) b!4120715))

(assert (= (and b!4120715 res!1683513) b!4120722))

(assert (= (and b!4120722 res!1683511) b!4120720))

(assert (= (and b!4120720 res!1683517) b!4120716))

(assert (= (and b!4120716 res!1683514) b!4120721))

(declare-fun m!4719893 () Bool)

(assert (=> b!4120722 m!4719893))

(declare-fun m!4719895 () Bool)

(assert (=> b!4120722 m!4719895))

(assert (=> b!4120722 m!4719525))

(declare-fun m!4719897 () Bool)

(assert (=> b!4120717 m!4719897))

(assert (=> b!4120717 m!4719525))

(assert (=> b!4120717 m!4719897))

(assert (=> b!4120717 m!4719525))

(declare-fun m!4719899 () Bool)

(assert (=> b!4120717 m!4719899))

(declare-fun m!4719901 () Bool)

(assert (=> b!4120717 m!4719901))

(assert (=> b!4120716 m!4719893))

(declare-fun m!4719903 () Bool)

(assert (=> b!4120716 m!4719903))

(assert (=> b!4120716 m!4719903))

(declare-fun m!4719905 () Bool)

(assert (=> b!4120716 m!4719905))

(assert (=> b!4120715 m!4719893))

(declare-fun m!4719907 () Bool)

(assert (=> b!4120715 m!4719907))

(assert (=> b!4120715 m!4719907))

(declare-fun m!4719909 () Bool)

(assert (=> b!4120715 m!4719909))

(assert (=> b!4120715 m!4719909))

(declare-fun m!4719911 () Bool)

(assert (=> b!4120715 m!4719911))

(assert (=> b!4120718 m!4719893))

(assert (=> b!4120718 m!4719907))

(assert (=> b!4120718 m!4719907))

(assert (=> b!4120718 m!4719909))

(assert (=> b!4120718 m!4719909))

(declare-fun m!4719913 () Bool)

(assert (=> b!4120718 m!4719913))

(assert (=> b!4120720 m!4719893))

(declare-fun m!4719915 () Bool)

(assert (=> d!1221700 m!4719915))

(declare-fun m!4719917 () Bool)

(assert (=> d!1221700 m!4719917))

(declare-fun m!4719919 () Bool)

(assert (=> d!1221700 m!4719919))

(assert (=> d!1221700 m!4719497))

(assert (=> b!4120721 m!4719893))

(declare-fun m!4719921 () Bool)

(assert (=> b!4120721 m!4719921))

(declare-fun m!4719923 () Bool)

(assert (=> b!4120723 m!4719923))

(assert (=> b!4120723 m!4719897))

(declare-fun m!4719925 () Bool)

(assert (=> b!4120723 m!4719925))

(declare-fun m!4719927 () Bool)

(assert (=> b!4120723 m!4719927))

(assert (=> b!4120723 m!4719897))

(assert (=> b!4120723 m!4719525))

(assert (=> b!4120723 m!4719899))

(assert (=> b!4120723 m!4719925))

(declare-fun m!4719929 () Bool)

(assert (=> b!4120723 m!4719929))

(declare-fun m!4719931 () Bool)

(assert (=> b!4120723 m!4719931))

(assert (=> b!4120723 m!4719525))

(assert (=> b!4120723 m!4719925))

(declare-fun m!4719933 () Bool)

(assert (=> b!4120723 m!4719933))

(assert (=> b!4120723 m!4719925))

(assert (=> b!4120311 d!1221700))

(declare-fun d!1221702 () Bool)

(assert (=> d!1221702 (not (= rBis!149 r!4008))))

(declare-fun lt!1470034 () Unit!63899)

(declare-fun choose!25183 (LexerInterface!6863 List!44673 Rule!14348 Rule!14348) Unit!63899)

(assert (=> d!1221702 (= lt!1470034 (choose!25183 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221702 (contains!8946 rules!3756 rBis!149)))

(assert (=> d!1221702 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!14 thiss!25645 rules!3756 rBis!149 r!4008) lt!1470034)))

(declare-fun bs!594691 () Bool)

(assert (= bs!594691 d!1221702))

(declare-fun m!4719935 () Bool)

(assert (=> bs!594691 m!4719935))

(assert (=> bs!594691 m!4719519))

(assert (=> b!4120311 d!1221702))

(declare-fun b!4120737 () Bool)

(declare-fun e!2556872 () Bool)

(declare-fun tp!1255643 () Bool)

(declare-fun tp!1255645 () Bool)

(assert (=> b!4120737 (= e!2556872 (and tp!1255643 tp!1255645))))

(assert (=> b!4120309 (= tp!1255578 e!2556872)))

(declare-fun b!4120735 () Bool)

(declare-fun tp!1255644 () Bool)

(declare-fun tp!1255646 () Bool)

(assert (=> b!4120735 (= e!2556872 (and tp!1255644 tp!1255646))))

(declare-fun b!4120734 () Bool)

(assert (=> b!4120734 (= e!2556872 tp_is_empty!21281)))

(declare-fun b!4120736 () Bool)

(declare-fun tp!1255642 () Bool)

(assert (=> b!4120736 (= e!2556872 tp!1255642)))

(assert (= (and b!4120309 ((_ is ElementMatch!12179) (regex!7274 (h!49969 rules!3756)))) b!4120734))

(assert (= (and b!4120309 ((_ is Concat!19684) (regex!7274 (h!49969 rules!3756)))) b!4120735))

(assert (= (and b!4120309 ((_ is Star!12179) (regex!7274 (h!49969 rules!3756)))) b!4120736))

(assert (= (and b!4120309 ((_ is Union!12179) (regex!7274 (h!49969 rules!3756)))) b!4120737))

(declare-fun b!4120741 () Bool)

(declare-fun e!2556873 () Bool)

(declare-fun tp!1255648 () Bool)

(declare-fun tp!1255650 () Bool)

(assert (=> b!4120741 (= e!2556873 (and tp!1255648 tp!1255650))))

(assert (=> b!4120312 (= tp!1255576 e!2556873)))

(declare-fun b!4120739 () Bool)

(declare-fun tp!1255649 () Bool)

(declare-fun tp!1255651 () Bool)

(assert (=> b!4120739 (= e!2556873 (and tp!1255649 tp!1255651))))

(declare-fun b!4120738 () Bool)

(assert (=> b!4120738 (= e!2556873 tp_is_empty!21281)))

(declare-fun b!4120740 () Bool)

(declare-fun tp!1255647 () Bool)

(assert (=> b!4120740 (= e!2556873 tp!1255647)))

(assert (= (and b!4120312 ((_ is ElementMatch!12179) (regex!7274 rBis!149))) b!4120738))

(assert (= (and b!4120312 ((_ is Concat!19684) (regex!7274 rBis!149))) b!4120739))

(assert (= (and b!4120312 ((_ is Star!12179) (regex!7274 rBis!149))) b!4120740))

(assert (= (and b!4120312 ((_ is Union!12179) (regex!7274 rBis!149))) b!4120741))

(declare-fun b!4120745 () Bool)

(declare-fun e!2556874 () Bool)

(declare-fun tp!1255653 () Bool)

(declare-fun tp!1255655 () Bool)

(assert (=> b!4120745 (= e!2556874 (and tp!1255653 tp!1255655))))

(assert (=> b!4120317 (= tp!1255577 e!2556874)))

(declare-fun b!4120743 () Bool)

(declare-fun tp!1255654 () Bool)

(declare-fun tp!1255656 () Bool)

(assert (=> b!4120743 (= e!2556874 (and tp!1255654 tp!1255656))))

(declare-fun b!4120742 () Bool)

(assert (=> b!4120742 (= e!2556874 tp_is_empty!21281)))

(declare-fun b!4120744 () Bool)

(declare-fun tp!1255652 () Bool)

(assert (=> b!4120744 (= e!2556874 tp!1255652)))

(assert (= (and b!4120317 ((_ is ElementMatch!12179) (regex!7274 r!4008))) b!4120742))

(assert (= (and b!4120317 ((_ is Concat!19684) (regex!7274 r!4008))) b!4120743))

(assert (= (and b!4120317 ((_ is Star!12179) (regex!7274 r!4008))) b!4120744))

(assert (= (and b!4120317 ((_ is Union!12179) (regex!7274 r!4008))) b!4120745))

(declare-fun b!4120750 () Bool)

(declare-fun e!2556877 () Bool)

(declare-fun tp!1255659 () Bool)

(assert (=> b!4120750 (= e!2556877 (and tp_is_empty!21281 tp!1255659))))

(assert (=> b!4120313 (= tp!1255579 e!2556877)))

(assert (= (and b!4120313 ((_ is Cons!44548) (t!340687 p!2912))) b!4120750))

(declare-fun b!4120751 () Bool)

(declare-fun e!2556878 () Bool)

(declare-fun tp!1255660 () Bool)

(assert (=> b!4120751 (= e!2556878 (and tp_is_empty!21281 tp!1255660))))

(assert (=> b!4120302 (= tp!1255575 e!2556878)))

(assert (= (and b!4120302 ((_ is Cons!44548) (t!340687 input!3238))) b!4120751))

(declare-fun b!4120762 () Bool)

(declare-fun b_free!116475 () Bool)

(declare-fun b_next!117179 () Bool)

(assert (=> b!4120762 (= b_free!116475 (not b_next!117179))))

(declare-fun t!340733 () Bool)

(declare-fun tb!247281 () Bool)

(assert (=> (and b!4120762 (= (toValue!9926 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toValue!9926 (transformation!7274 r!4008))) t!340733) tb!247281))

(declare-fun result!300426 () Bool)

(assert (= result!300426 result!300394))

(assert (=> d!1221614 t!340733))

(assert (=> d!1221640 t!340733))

(declare-fun b_and!318725 () Bool)

(declare-fun tp!1255671 () Bool)

(assert (=> b!4120762 (= tp!1255671 (and (=> t!340733 result!300426) b_and!318725))))

(declare-fun b_free!116477 () Bool)

(declare-fun b_next!117181 () Bool)

(assert (=> b!4120762 (= b_free!116477 (not b_next!117181))))

(declare-fun t!340735 () Bool)

(declare-fun tb!247283 () Bool)

(assert (=> (and b!4120762 (= (toChars!9785 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toChars!9785 (transformation!7274 r!4008))) t!340735) tb!247283))

(declare-fun result!300428 () Bool)

(assert (= result!300428 result!300386))

(assert (=> d!1221614 t!340735))

(declare-fun tb!247285 () Bool)

(declare-fun t!340737 () Bool)

(assert (=> (and b!4120762 (= (toChars!9785 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toChars!9785 (transformation!7274 (rule!10346 (_1!24643 (get!14529 lt!1469886)))))) t!340737) tb!247285))

(declare-fun result!300430 () Bool)

(assert (= result!300430 result!300414))

(assert (=> d!1221676 t!340737))

(declare-fun b_and!318727 () Bool)

(declare-fun tp!1255672 () Bool)

(assert (=> b!4120762 (= tp!1255672 (and (=> t!340735 result!300428) (=> t!340737 result!300430) b_and!318727))))

(declare-fun e!2556887 () Bool)

(assert (=> b!4120762 (= e!2556887 (and tp!1255671 tp!1255672))))

(declare-fun e!2556890 () Bool)

(declare-fun b!4120761 () Bool)

(declare-fun tp!1255669 () Bool)

(assert (=> b!4120761 (= e!2556890 (and tp!1255669 (inv!59130 (tag!8134 (h!49969 (t!340688 rules!3756)))) (inv!59132 (transformation!7274 (h!49969 (t!340688 rules!3756)))) e!2556887))))

(declare-fun b!4120760 () Bool)

(declare-fun e!2556889 () Bool)

(declare-fun tp!1255670 () Bool)

(assert (=> b!4120760 (= e!2556889 (and e!2556890 tp!1255670))))

(assert (=> b!4120318 (= tp!1255582 e!2556889)))

(assert (= b!4120761 b!4120762))

(assert (= b!4120760 b!4120761))

(assert (= (and b!4120318 ((_ is Cons!44549) (t!340688 rules!3756))) b!4120760))

(declare-fun m!4719937 () Bool)

(assert (=> b!4120761 m!4719937))

(declare-fun m!4719939 () Bool)

(assert (=> b!4120761 m!4719939))

(declare-fun b_lambda!120913 () Bool)

(assert (= b_lambda!120899 (or (and b!4120319 b_free!116461 (= (toChars!9785 (transformation!7274 rBis!149)) (toChars!9785 (transformation!7274 r!4008)))) (and b!4120299 b_free!116465 (= (toChars!9785 (transformation!7274 (h!49969 rules!3756))) (toChars!9785 (transformation!7274 r!4008)))) (and b!4120303 b_free!116469) (and b!4120762 b_free!116477 (= (toChars!9785 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toChars!9785 (transformation!7274 r!4008)))) b_lambda!120913)))

(declare-fun b_lambda!120915 () Bool)

(assert (= b_lambda!120903 (or (and b!4120319 b_free!116459 (= (toValue!9926 (transformation!7274 rBis!149)) (toValue!9926 (transformation!7274 r!4008)))) (and b!4120299 b_free!116463 (= (toValue!9926 (transformation!7274 (h!49969 rules!3756))) (toValue!9926 (transformation!7274 r!4008)))) (and b!4120303 b_free!116467) (and b!4120762 b_free!116475 (= (toValue!9926 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toValue!9926 (transformation!7274 r!4008)))) b_lambda!120915)))

(declare-fun b_lambda!120917 () Bool)

(assert (= b_lambda!120901 (or (and b!4120319 b_free!116459 (= (toValue!9926 (transformation!7274 rBis!149)) (toValue!9926 (transformation!7274 r!4008)))) (and b!4120299 b_free!116463 (= (toValue!9926 (transformation!7274 (h!49969 rules!3756))) (toValue!9926 (transformation!7274 r!4008)))) (and b!4120303 b_free!116467) (and b!4120762 b_free!116475 (= (toValue!9926 (transformation!7274 (h!49969 (t!340688 rules!3756)))) (toValue!9926 (transformation!7274 r!4008)))) b_lambda!120917)))

(check-sat (not b!4120760) (not d!1221688) (not d!1221692) b_and!318725 b_and!318719 (not b!4120553) (not b_next!117167) (not b!4120721) (not b!4120735) (not b!4120716) (not b!4120688) (not d!1221600) (not bm!289949) (not b!4120744) (not b!4120613) (not b!4120677) (not b_next!117179) (not b!4120323) (not b!4120675) (not b!4120684) b_and!318711 (not b_next!117181) (not b!4120743) (not b_next!117163) (not b!4120720) (not b!4120519) (not b!4120372) (not b!4120517) (not d!1221556) (not tb!247263) (not b!4120515) (not b!4120723) (not d!1221674) (not b!4120554) (not d!1221582) (not d!1221572) (not d!1221658) b_and!318723 (not b_next!117173) (not b!4120761) b_and!318713 (not b!4120644) (not b!4120516) (not b!4120751) (not d!1221676) tp_is_empty!21281 (not b!4120370) (not b!4120646) (not b!4120345) b_and!318709 (not bm!289943) (not b!4120685) (not b!4120462) (not b!4120633) (not b!4120740) (not b!4120634) (not d!1221598) (not b!4120745) (not d!1221652) (not b!4120718) (not d!1221614) (not b!4120691) (not b!4120513) (not b!4120717) b_and!318727 (not b!4120741) (not b!4120601) (not b!4120681) (not b_next!117171) (not d!1221690) (not b!4120693) (not b!4120512) (not b!4120394) (not b!4120611) (not d!1221664) (not b_next!117165) (not d!1221602) (not d!1221684) (not b!4120696) (not b!4120722) (not b_lambda!120913) (not d!1221670) (not b!4120750) (not d!1221672) (not d!1221564) (not d!1221696) (not b!4120737) (not d!1221700) (not b_lambda!120917) (not b!4120605) (not b!4120689) (not b_lambda!120911) (not tb!247257) (not d!1221642) (not d!1221702) (not d!1221662) (not b!4120736) (not b!4120739) (not b!4120511) b_and!318721 (not b!4120715) (not tb!247275) (not b!4120514) (not b_next!117169) (not b_lambda!120915) (not b!4120645))
(check-sat (not b_next!117163) b_and!318713 b_and!318709 b_and!318725 b_and!318727 (not b_next!117171) (not b_next!117165) b_and!318721 (not b_next!117169) b_and!318719 (not b_next!117167) (not b_next!117179) b_and!318711 (not b_next!117181) b_and!318723 (not b_next!117173))
